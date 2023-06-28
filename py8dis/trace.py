"""
Trace

Follows ('traces') instructions from known entry points in order to discover
which bytes of the binary are actually code and which are data.
"""

import collections
import copy
import config
import disassembly
import labelmanager
import mainformatter
import memorymanager
import movemanager
import utils

cpu                              = None     # an object of class Cpu
subroutine_argument_finder_hooks = []       # Python routines ('hooks') for naming constant arguments to subroutines
substitute_constant_list         = []       # List of SubConst() objects (see cpu6502) for naming constants
subroutines_list                 = []       # List of Subroutine() objects
no_auto_comment_set              = set()    # runtime addresses not to be auto-commented

class Subroutine(object):
    """Data describing a subroutine."""

    def __init__(self, runtime_addr, label_name, title, description, on_entry, on_exit, hook_function, move_id):
        self.runtime_addr   = memorymanager.RuntimeAddr(runtime_addr)
        self.move_id        = move_id
        self.label_name     = label_name
        self.title          = title
        self.description    = description
        self.on_entry       = on_entry if on_entry else {}
        self.on_exit        = on_exit if on_exit else {}
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

        # After we have traced to classify where the code is, we record what we
        # know about the CPU state after each instruction. This is used to
        # analyse the code. e.g. We look to see if we set a register with an
        # immediate mode constant before a subroutine call so that we can give
        # that constant a proper symbol name.

        # TODO: This is called "optimistic" because it's based on straight line
        # code "this is *a* possible execution path". We may want to add a
        # "pessimistic" variant which does its best to *guess* at the "common to
        # all possible executions" behaviour.
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
            # Classify the address as code
            disassembly.add_classification(binary_addr, opcode)
            opcode.update_references(binary_addr)

        # Call the opcode routine to actually disassemble the instruction
        return opcode.disassemble(binary_addr)

    def add_entry(self, binary_addr, name, move_id):
        """Add code entry point"""

        self.entry_points.append(binary_addr)
        disassembly.add_label(movemanager.b2r(binary_addr), name, move_id)

    def analyse_code(self):
        """Calculates what we know about the CPU state for each instruction
        then runs code analysis. e.g. We look to see if we set a register with
        an immediate mode constant before a subroutine call so that we can give
        that constant a proper symbol name."""

        # Calculate the CPU state at each instruction
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

        # As each instruction is processed, the next possible instructions
        # are added to the 'entry_points' list. The first of these will be
        # the following instruction (if there is one; it might be None).

        # Work through each entry point
        while len(self.entry_points) > 0:
            entry_point = self.entry_points.pop(0)
            if entry_point not in self.traced_entry_points:
                self.traced_entry_points.add(entry_point)
                new_entry_points = self.disassemble_instruction(entry_point)

                # The first element of new_entry_points is the implicit
                # next instruction (if there is one; it might be None)
                # which is handled slightly differently, as it *isn't*
                # automatically assigned a label (but still gets added
                # to the 'entry_points' list).
                assert len(new_entry_points) >= 1
                implied_entry_point = new_entry_points.pop(0)
                if implied_entry_point is not None:
                    self.entry_points.append(implied_entry_point)

                for new_entry_point in new_entry_points:
                    self.add_entry(new_entry_point, name=None, move_id=movemanager.move_id_for_binary_addr[new_entry_point])

        # Debugging
        if False:
            for addr, label in sorted(self.labels.items(), key=lambda x: x[0]):
                print("XXX %04x %s" % (label.addr, " ".join("%04x" % x[0] for x in label.references)))

        # Calculate the CPU states and analyse the code
        self.analyse_code()

        # We defer final label name generating (using LazyString) until tracing
        # is complete, since e.g. part way through tracing we may not have
        # identified any code at address X and that can affect the label name
        # used for address X.
        self.trace_done = True


    def generate_references(self):
        """Generate references from the label data.

        A label holds the binary_address of each location that references the label."""

        global references
        references = collections.defaultdict(list)
        for runtime_addr, label in self.labels.items():
            runtime_addr = memorymanager.RuntimeAddr(runtime_addr) # TODO: OK? Should keys in this dict be RuntimeAddrs to start with?
            binary_addr, _ = movemanager.r2b(runtime_addr)

            if binary_addr is not None:
                for ref_binary_addr in label.references:
                    references[binary_addr].append(ref_binary_addr)

    def add_references_comments(self):
        """Add comments showing the references"""

        global references
        for binary_addr, binary_addr_refs in references.items():
            count = utils.count_with_units(len(binary_addr_refs), "time", "times")
            address_list = ", ".join(sorted(config.get_assembler().hex4(movemanager.b2r(ref_binary_addr)) for ref_binary_addr in binary_addr_refs))
            comment = "%s referenced %s by %s" % (config.get_assembler().hex4(binary_addr), count, address_list)

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
            disassembly.comment_binary(binary_addr, comment, inline=False, word_wrap=False)

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
