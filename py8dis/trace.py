import collections
import copy
import config
import disassembly
import labelmanager
import movemanager
import utils
import newformatter

cpu = None

class Cpu(object):
    """Abstract base class representing a CPU"""

    def __init__(self):
        self.memory_binary = config.memory_binary
        self.labels = labelmanager.labels

        self.subroutine_argument_finder_hooks = []
        self.opcodes = {}
        self.entry_points = []
        self.traced_entry_points = set()
        self.code_analysis_fns = []
        self.trace_done = False

        # TODO: Experimental, "optimistic" because it's based on straight line code "this is *a* possible execution". We may want to add a "pessimistic" variant which does its best to *guess* at the "common to all possible executions" behaviour
        self.cpu_state_optimistic = [None] * 64*1024


    def disassemble_instruction(self, binary_addr):
        assert isinstance(binary_addr, utils.BinaryAddr)
        opcode_value = self.memory_binary[binary_addr]
        if opcode_value not in self.opcodes:
            return [None]
        opcode = self.opcodes[opcode_value]
        # If we hit something that's already classified, we can't/don't re-classify
        # it but that doesn't mean we can't continue to trace until something breaks
        # the control flow.
        if disassembly.is_classified(binary_addr, 1 + opcode.operand_length):
            # TODO: The machinations required to format the comment here are a bit annoying.
            s = opcode.as_string(binary_addr)
            def late_formatter():
                return newformatter.add_inline_comment(binary_addr, opcode.length(), None, config.get_formatter().comment_prefix() + " overlapping: " + str(s)[4:])
            disassembly.add_raw_annotation(binary_addr, utils.LazyString("%s", late_formatter))
        else:
            disassembly.add_classification(binary_addr, opcode)
            opcode.update_references(binary_addr)
        return opcode.disassemble(binary_addr)

    # TODO: experimental - but the point is the user will be referring to dest addrs not source addrs
    def add_entry(self, binary_addr, name, move_id):
        self.entry_points.append(binary_addr)
        # TODO: Should it be possible for the user to add an entry point without also triggering creation of a label?
        disassembly.add_label(movemanager.b2r(binary_addr), name, move_id)

    def analyse_code(self):
        binary_addr = 0
        state = self.CpuState()
        while binary_addr < 0x10000:
            c = disassembly.classifications[binary_addr]
            if c is not None:
                if c.is_code(binary_addr):
                    c.update_cpu_state(binary_addr, state)
                else:
                    state = self.CpuState()
                self.cpu_state_optimistic[binary_addr] = copy.deepcopy(state)
                binary_addr += c.length()
            else:
                binary_addr += 1

        for f in self.code_analysis_fns:
            f()

    def trace(self):
        while len(self.entry_points) > 0:
            entry_point = self.entry_points.pop(0)
            if entry_point not in self.traced_entry_points:
                self.traced_entry_points.add(entry_point)
                #print("AXP", hex(entry_point))
                new_entry_points = self.disassemble_instruction(entry_point)
                # The first element of new_entry_points is the implicit next
                # instruction (if there is one; it might be None) which is handled
                # slightly differently, as it *isn't* automatically assigned a
                # label.
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

        self.analyse_code()
        # We only need to defer label name generating using LazyString so that
        # label names aren't assigned based on incomplete tracing. (For example,
        # part way through tracing we may not have identified any code at address
        # X and that might affect the label name used for address X.)
        self.trace_done = True


    # TODO: This is a temp hack - I had redundant (?) reference infrastructure so I'm getting rid of the trace.references, but as a temporary measure I'm going to generate this reference from the other
    def generate_references(self):
        global references
        references = collections.defaultdict(set)
        for runtime_addr, label in self.labels.items():
            runtime_addr = utils.RuntimeAddr(runtime_addr) # TODO: OK? Should keys in this dict be RuntimeAddrs to start with?
            binary_addr, _ = movemanager.r2b(runtime_addr)
            if binary_addr is not None:
                for reference in label.references: # TODO: rename reference->binary_reference_address?
                    references[binary_addr].add(reference)

    def add_references_comments(self):
        global references
        if len(references) == 0:
            return
        for addr, addr_refs in references.items():
            count = utils.plural(len(addr_refs), "time")
            address_list = ", ".join(sorted(config.get_formatter().hex4(movemanager.b2r(addr_ref)) for addr_ref in addr_refs))
            comment = "%s referenced %s by %s" % (config.get_formatter().hex4(addr), count, address_list)

            # TODO: Where the comment has to be emitted slightly out of place due to a classification, this becomes a bit confusing - we should probably be smarter, peek the classifications and generate a variant comment in that case at the "can actually be emitted" address - and/or maybe we shouldn't be generating reference comments for non-simple labels? (probably not the only way the first problem can occur though) - or maybe we should be forcibly breaking classifications for these? or maybe we should be attaching the comment inline to the relevant label (but that might be confusing if there are multiple labels for the same address) - for the moment I am always including 'addr' in the comment which helps a bit but isn't ideal
            disassembly.add_comment(addr, comment, False)

    def add_reference_histogram(self):
        global references
        if len(references) == 0:
            return []
        result = [""]
        frequency_table = [(addr, len(addr_refs)) for addr, addr_refs in references.items()]
        frequency_table = sorted(frequency_table, key=lambda x: (x[1], -x[0]), reverse=True)
        longest_label = max(len(disassembly.get_label(addr, addr)) for addr in references)
        comment = config.get_formatter().comment_prefix()
        result.append("%s Label references by decreasing frequency:" % comment)
        for addr, count in frequency_table:
            result.append("%s     %-*s %3d" % (comment, longest_label+1, disassembly.get_label(addr, addr) + ":", count))
        return result



# TODO: I am thinking maybe most/all uses of disassembly_range should be replaced by just iterating over whole of memory and emitting stuff for non-None addresses. move() would probably set some parallel "ignore me" flags on bytes which have been populated via move() on acme disassemblies where a Relocation() object will emit the disassembly from those bytes. (disassembly_range is something of an artefact of the early code where it was a convenient way to decide what to process, but it's not necessarily relevant any more.)

# TODO: move2.py -a should probably "heuristically" say to iself "hmm, jmp l090d doesn't even resolve to an instruction in my move ID, and look there is *another* label at the same addresss which does resolve to an instruction, let's use that rather than generating a jmp into the middle of an instruction". Hmm, on second thoughts maybe this is overly clever and special case (this code is decidedly odd, since it's a hacked up test case, not real code). Sleep on it.

# TODO: do commmands entry() and no_entry() need to do an lookup of move()s? The user will probably be addressing routines at their relocated destination addresses, but the tracing process works with source addresses. (We might want some facility for a user to specify source addresses to these functions or variants, as this provides ultimate disambiguation in terms of forcing/preventing tracing of particular bits of code.)
