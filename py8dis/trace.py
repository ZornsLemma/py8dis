import collections
import copy
import config
import disassembly
import labelmanager
import mainformatter
import memorymanager
import movemanager
import utils

cpu = None
subroutine_argument_finder_hooks = []
substitute_constant_list = []
subroutines_list = []

class Subroutine(object):
    """Data concerning a subroutine."""

    def __init__(self, runtime_addr, label_name, title, description, entry, exit, hook_function, move_id):
        self.runtime_addr   = memorymanager.RuntimeAddr(runtime_addr)
        self.move_id        = move_id
        self.label_name     = label_name
        self.title          = title
        self.description    = description
        if entry:
            self.entry = entry
        else:
            self.entry = {}
        if exit:
            self.exit = exit
        else:
            self.exit = {}


        self.hook_function  = hook_function

def add_subroutine(runtime_addr, name, title, description, entry, exit, hook_function, move_id):
    subroutines_list.append(Subroutine(runtime_addr, name, title, description, entry, exit, hook_function, move_id))

class Cpu(object):
    """Abstract base class representing a CPU"""

    def __init__(self):
        self.memory_binary = memorymanager.memory_binary
        self.labels = labelmanager.labels

        self.subroutine_hooks = {}
        self.opcodes = {}
        self.entry_points = []
        self.traced_entry_points = set()
        self.code_analysis_fns = []
        self.trace_done = False

        # TODO: Experimental, "optimistic" because it's based on
        # straight line code "this is *a* possible execution". We may
        # want to add a "pessimistic" variant which does its best to
        # *guess* at the "common to all possible executions" behaviour
        self.cpu_state_optimistic = [None] * 64*1024


    def disassemble_instruction(self, binary_addr):
        """
        Disassemble an instruction at the binary address.

        Identifies the opcode and calls into the opcode object to do
        the actual disassembly.
        """

        assert isinstance(binary_addr, memorymanager.BinaryAddr)
        opcode_value = self.memory_binary[binary_addr]
        if opcode_value not in self.opcodes:
            return [None]
        opcode = self.opcodes[opcode_value]

        # If we hit something that's already classified, we can't/don't
        # re-classify it but that doesn't mean we can't continue to
        # trace until something breaks the control flow.
        if disassembly.is_classified(binary_addr, 1 + opcode.operand_length):
            # TODO: The machinations required to format the comment
            # here are a bit annoying.
            s = opcode.as_string(binary_addr)

            def late_formatter():
                return mainformatter.add_inline_comment(binary_addr, opcode.length(), "", None, config.get_assembler().comment_prefix() + " overlapping: " + str(s)[4:])

            disassembly.add_raw_annotation(binary_addr, utils.LazyString("%s", late_formatter))
        else:
            disassembly.add_classification(binary_addr, opcode)
            opcode.update_references(binary_addr)

        return opcode.disassemble(binary_addr)

    def add_entry(self, binary_addr, name, move_id):
        """Add code entry point"""

        self.entry_points.append(binary_addr)
        disassembly.add_label(movemanager.b2r(binary_addr), name, move_id)

    def analyse_code(self):
        """Calculates CPU state for all memory then runs code analysis."""

        # Calculate the CPU state
        binary_addr = 0
        state = self.CpuState()
        while binary_addr < 0x10000:
            c = disassembly.classifications[binary_addr]
            if c is not None:
                if c.is_code(binary_addr):
                    c.update_cpu_state(binary_addr, state)
                    self.cpu_state_optimistic[binary_addr] = copy.deepcopy(state)
                else:
                    state = self.CpuState()
                binary_addr += c.length()
            else:
                binary_addr += 1

        # Call each of the code analysis functions
        for f in self.code_analysis_fns:
            f()

    def trace(self):
        """Trace all the code from the entry points."""

        # Work through each entry point
        while len(self.entry_points) > 0:
            entry_point = self.entry_points.pop(0)
            if entry_point not in self.traced_entry_points:
                self.traced_entry_points.add(entry_point)
                #print("AXP", hex(entry_point))
                new_entry_points = self.disassemble_instruction(entry_point)

                # The first element of new_entry_points is the implicit
                # next instruction (if there is one; it might be None)
                # which is handled slightly differently, as it *isn't*
                # automatically assigned a label.
                assert len(new_entry_points) >= 1
                implied_entry_point = new_entry_points.pop(0)
                if implied_entry_point is not None:
                    #assert implied_entry_point != 0x9030
                    self.entry_points.append(implied_entry_point)
                for new_entry_point in new_entry_points:
                    #print("AQB %04x %04x" % (entry_point, new_entry_point))
                    #assert new_entry_point != 0x9030
                    self.add_entry(new_entry_point, name=None, move_id=movemanager.move_id_for_binary_addr[new_entry_point])

        # Debugging
        if False:
            for addr, label in sorted(self.labels.items(), key=lambda x: x[0]):
                print("XXX %04x %s" % (label.addr, " ".join("%04x" % x for x in label.references)))

        # Calculate the CPU states and analyse the code
        self.analyse_code()

        # We defer label name generating using LazyString so that label
        # names aren't assigned based on incomplete tracing. For
        # example, part way through tracing we may not have identified
        # any code at address X and that might affect the label name
        # used for address X.
        self.trace_done = True


    def generate_references(self):
        """Generate references from the label data.

        References are indexed by binary_address."""

        global references
        references = collections.defaultdict(set)
        for runtime_addr, label in self.labels.items():
            runtime_addr = memorymanager.RuntimeAddr(runtime_addr) # TODO: OK? Should keys in this dict be RuntimeAddrs to start with?
            binary_addr, _ = movemanager.r2b(runtime_addr)
            if binary_addr is not None:
                for reference in label.references: # TODO: rename reference->binary_reference_address?
                    references[binary_addr].add(reference)

    def add_references_comments(self):
        """Add comments showing the references"""

        global references
        if len(references) == 0:
            return
        for addr, addr_refs in references.items():
            count = utils.count_with_units(len(addr_refs), "time", "times")
            address_list = ", ".join(sorted(config.get_assembler().hex4(movemanager.b2r(addr_ref)) for addr_ref in addr_refs))
            comment = "%s referenced %s by %s" % (config.get_assembler().hex4(addr), count, address_list)

            # TODO: Where the comment has to be emitted slightly out of
            # place due to a classification, this becomes a bit
            # confusing - we should probably be smarter, peek the
            # classifications and generate a variant comment in that
            # case at the "can actually be emitted" address - and/or
            # maybe we shouldn't be generating reference comments for
            # non-simple labels? (probably not the only way the first
            # problem can occur though) - or maybe we should be
            # forcibly breaking classifications for these? or maybe we
            # should be attaching the comment inline to the relevant
            # label (but that might be confusing if there are multiple
            # labels for the same address) - for the moment I am always
            # including 'addr' in the comment which helps a bit but
            # isn't ideal
            disassembly.add_comment(addr, comment, False)

    def add_reference_histogram(self):
        """Output a histogram of label references."""

        global references
        if len(references) == 0:
            return []
        result = [""]
        frequency_table = [(addr, len(addr_refs)) for addr, addr_refs in references.items()]
        frequency_table = sorted(frequency_table, key=lambda x: (x[1], -x[0]), reverse=True)
        longest_label = max(len(disassembly.get_label(addr, addr)) for addr in references)
        comment = config.get_assembler().comment_prefix()
        result.append("%s Label references by decreasing frequency:" % comment)
        for addr, count in frequency_table:
            result.append("%s     %-*s %3d" % (comment, longest_label+1, disassembly.get_label(addr, addr) + ":", count))
        return result

# TODO: do commmands entry() and no_entry() need to do a lookup of
# move()s? The user will probably be addressing routines at their
# relocated destination addresses, but the tracing process works
# with source addresses. We might want some facility for a user to
# specify source addresses to these functions or variants, as this
# provides ultimate disambiguation in terms of forcing/preventing
# tracing of particular bits of code.
