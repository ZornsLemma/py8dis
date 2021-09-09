from trace6502 import *

class OpcodeUnconditionalBranch(Opcode):
    def __init__(self, mnemonic):
        super(OpcodeUnconditionalBranch, self).__init__(mnemonic, 1)

    def _target(self, addr):
        return addr + 2 + signed8(get_u8(addr + 1))

    def disassemble(self, addr):
        return [None, self._target(addr)]

    def as_string(self, addr):
        return "    %s %s" % (utils.force_case(self.mnemonic), disassembly.get_label(self._target(addr)))


# TODO: MAKE SURE THIS IS COMPLETE
opcodes.update({
    0x04: OpcodeZp("TSB"),
    0x14: OpcodeZp("TRB"),
    0x1a: OpcodeImplied("INC A"),
    0x3a: OpcodeImplied("DEC A"),
    0x5a: OpcodeImplied("PHY"),
    0x64: OpcodeZp("STZ"),
    0x7a: OpcodeImplied("PLY"),
    0x80: OpcodeUnconditionalBranch("BRA"),
    0x92: OpcodeZp("STA", ")"),
    0x9c: OpcodeDataAbs("STZ"),
    0xb2: OpcodeZp("LDA", ")"),
    0xd2: OpcodeZp("CMP", ")"),
    0xda: OpcodeImplied("PHX"),
})
