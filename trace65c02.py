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


class OpcodeJmpAbsX(OpcodeAbs):
    def __init__(self):
        super(OpcodeJmpAbsX, self).__init__("JMP", ",X)")

    def has_zp_version(self):
        return False

    def disassemble(self, addr):
        disassembly.ensure_addr_labelled(utils.get_u16(addr + 1))
        return [None]


# ENHANCE: On a 65C02 undefined opcodes are guaranteed to be NOPs of varying
# lengths. These are *not* implemented here, since most code probably won't be
# executing them and it's probably better to reduce the chances of arbitrary
# data being traced as code. All the same, it might be nice to allow the user to
# opt in to disassembling these.
opcodes.update({
    0x04: OpcodeZp("TSB"),
    # TODO: 0x0c
    # TODO: 0x12
    0x14: OpcodeZp("TRB"),
    0x1a: OpcodeImplied("INC A"),
    # TODO: 0x1c
    # TODO: 0x32
    # TODO: 0x34
    # TODO: 0x3c
    0x3a: OpcodeImplied("DEC A"),
    # TODO: 0x52
    0x5a: OpcodeImplied("PHY"),
    0x64: OpcodeZp("STZ"),
    0x72: OpcodeZp("ADC", ")"),
    0x74: OpcodeZp("STZ", ",X"),
    0x7a: OpcodeImplied("PLY"),
    0x7c: OpcodeJmpAbsX(),
    0x80: OpcodeUnconditionalBranch("BRA"),
    0x89: OpcodeImmediate("BIT"),
    0x92: OpcodeZp("STA", ")"),
    0x9c: OpcodeDataAbs("STZ"),
    0x9e: OpcodeDataAbs("STZ", ",X"),
    0xb2: OpcodeZp("LDA", ")"),
    0xd2: OpcodeZp("CMP", ")"),
    0xda: OpcodeImplied("PHX"),
    # TODO: 0xf2
    0xfa: OpcodeImplied("PLX"),
})
