# ENHANCE: This is just a skeleton to help confirm the basic idea of separate
# tracefoo.py modules more-or-less works. It isn't capable of disassembling real
# 8080 code and it doesn't try to be smart about understanding the structure of
# 8080 opcodes.

import collections

import config
import classification
import config
import disassembly
import movemanager
import newformatter
import trace
import utils

class Cpu8080(trace.Cpu):
    """Singleton class representing an 8080 CPU"""

    def __new__(cls):
        if not hasattr(cls, 'instance'):
            cls.instance = super(Cpu8080, cls).__new__(cls)

            #TODO: trace.code_analysis_fns.append(subroutine_argument_finder)

        return cls.instance

    def __init__(self):
        super(Cpu8080, self).__init__()

        # TODO: indent_level is a bit of a hack (after all, arguably byte/word directives etc should have it too) and should probably be handled at a higher level by the code controlling emission of text disassembly output
        self.indent_level_dict = collections.defaultdict(int)

        self.opcodes = {
            0x0b: self.OpcodeImplied("DCX B"),
            0x13: self.OpcodeImplied("INX D"),
            0x23: self.OpcodeImplied("INX H"),
            0x1a: self.OpcodeImplied("LDAX D"),
            0x77: self.OpcodeImplied("MOV M,A"),
            0x78: self.OpcodeImplied("MOV A, B"),
            0x78: self.OpcodeImplied("MOV A,B"),
            0xb1: self.OpcodeImplied("ORA C"),
            0xc2: self.OpcodeConditionalBranch("JNZ"),
            0xc8: self.OpcodeImplied("RZ"),
            0xc9: self.OpcodeImplied("RET"),
        }


    # TODO: Perhaps rename this function to make its behaviour more obvious, once I understand it myself...
    # TODO: This returns a list so it can return an empty list when it wants to say "give up" and this "just works" when appending the result to other lists
    def apply_move(self, runtime_addr):
        # TODO: This is a re-implementation using movemanager, may want to get rid of apply_move() fn later
        binary_addr, _ = movemanager.r2b(runtime_addr)
        if binary_addr is None:
            return []
        return [binary_addr]

    # TODO: Perhaps rename this function to make its behaviour more obvious, once I understand it myself...
    def apply_move2(self, target, context):
        # TODO: Rewritten in terms of movemanager - change this eventually? I think the rewrite does the same thing, but it may not, or it may do but not be right anyway...
        with movemanager.moved(movemanager.move_id_for_binary_addr[context]):
            #if context in (0x8fda, 0x2fda):
            #    print("XAL", hex(target), movemanager.r2b(target))
            return self.apply_move(target)


    class Opcode(object):
        def __init__(self, mnemonic, operand_length, suffix = None):
            self.mnemonic = mnemonic
            self.suffix = suffix if suffix is not None else ""
            self.prefix = "(" if ")" in self.suffix else ""
            self.operand_length = operand_length

        def is_mergeable(self):
            return False

        def length(self):
            return 1 + self.operand_length

        def is_code(self, addr):
            return True

        def update_cpu_state(self, addr, state):
            pass

        def as_string_list(self, addr, annotations):
            result = [newformatter.add_inline_comment(addr, self.length(), annotations, utils.LazyString(utils.make_indent(trace.cpu.indent_level_dict.get(addr, 0)) + "%s", self.as_string(addr)))]
            return result


    class OpcodeImplied(Opcode):
        def __init__(self, mnemonic):
            super(Cpu8080.OpcodeImplied, self).__init__(mnemonic, 0)
            self.mnemonic = mnemonic
            self.operand_length = 0

        def update_references(self, addr):
            pass

        def disassemble(self, binary_addr):
            return [binary_addr + 1]

        def as_string(self, addr):
            mnemonic = self.mnemonic
            if (not config.get_formatter().explicit_a) and mnemonic.endswith(" A"):
                mnemonic = mnemonic[:-2]
            return "%s%s" % (utils.make_indent(1), utils.force_case(mnemonic))


    class OpcodeConditionalBranch(Opcode):
        def __init__(self, mnemonic):
            super(Cpu8080.OpcodeConditionalBranch, self).__init__(mnemonic, 2)

        def _target(self, binary_addr):
            return utils.RuntimeAddr(utils.get_u16_binary(binary_addr + 1))

        def abs_operand(self, binary_addr):
            return self._target(binary_addr)

        def update_references(self, binary_addr):
            trace.cpu.labels[self._target(binary_addr)].add_reference(binary_addr)
            #trace.references[self._target(binary_addr)].add(binary_addr)

        def disassemble(self, binary_addr):
            # TODO: As elsewhere where exactly do we need to apply_move()? Perhaps we don't need it  here given it's relative, feeling my way..
            return [binary_addr + 3] + trace.cpu.apply_move2(self._target(binary_addr), binary_addr)

        def as_string(self, binary_addr):
            #print("XXX", hex(binary_addr), movemanager.move_id_for_binary_addr[binary_addr])
            return utils.LazyString("%s%s %s", utils.make_indent(1), utils.force_case(self.mnemonic), disassembly.get_label(self._target(binary_addr), binary_addr))


    class CpuState(object):
        def __init__(self):
            pass


    def is_subroutine_call(self, addr):
        return False

    def is_branch_to(self, addr, target):
        c = disassembly.classifications[addr]

        # TODO: hacky use of isinstance()
        if isinstance(c, self.OpcodeConditionalBranch):
            return c._target(addr) == target
        return False


trace.cpu = Cpu8080()
