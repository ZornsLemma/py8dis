# ENHANCE: This is just a skeleton to help confirm the basic idea of separate
# tracefoo.py modules more-or-less works. It isn't capable of disassembling real
# 8080 code and it doesn't try to be smart about understanding the structure of
# 8080 opcodes.

import config
import classification
import config
import disassembly
import utils

class Cpu8080(Cpu):
    """Singleton class representing an 8080 CPU"""

    def __new__(cls):
        if not hasattr(cls, 'instance'):
            cls.instance = super(Cpu6502, cls).__new__(cls)

            #TODO: trace.code_analysis_fns.append(subroutine_argument_finder)

        return cls.instance

    def __init__(self):
        super(Cpu8080, self).__init__(self)

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

        def as_string_list(self, addr, annotations):
            return [newformatter.add_inline_comment(addr, self.length(), annotations, self.as_string(addr))]


    class OpcodeImplied(Opcode):
        def __init__(self, mnemonic):
            super(OpcodeImplied, self).__init__(mnemonic, 0)
            self.mnemonic = mnemonic
            self.operand_length = 0

        def disassemble(self, binary_addr):
            return [binary_addr + 1]

        def as_string(self, addr):
            mnemonic = self.mnemonic
            if (not config.get_formatter().explicit_a) and mnemonic.endswith(" A"):
                mnemonic = mnemonic[:-2]
            return "%s%s" % (utils.make_indent(1), utils.force_case(mnemonic))


    class OpcodeConditionalBranch(Opcode):
        def __init__(self, mnemonic):
            super(OpcodeConditionalBranch, self).__init__(mnemonic, 2)

        def _target(self, binary_addr):
            return utils.get_u16_binary(binary_addr + 1)

        def disassemble(self, binary_addr):
            return [binary_addr + 3, self._target(binary_addr)]

        def as_string(self, binary_addr):
            return "%s%s %s" % (utils.make_indent(1), utils.force_case(self.mnemonic), disassembly.get_label(self._target(binary_addr), binary_addr))


trace.cpu = Cpu8080()
