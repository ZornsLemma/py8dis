from trace6502 import *

import config
config.formatter().set_cmos(True)

# TODO: This is probably wrong wrt moves; copy how OpcodeConditionalBranch works
class OpcodeUnconditionalBranch(Opcode):
    def __init__(self, mnemonic):
        super(OpcodeUnconditionalBranch, self).__init__(mnemonic, 1)

    def _target(self, addr):
        base = movemanager.b2r(addr)
        return base + 2 + signed8(get_u8(addr + 1))

    def abs_operand(self, addr):
        return self._target(addr)

    def update_references(self, addr):
        labels[self.abs_operand(addr)].add_reference(addr)
        #trace.references[self._target(addr)].add(addr)

    def disassemble(self, addr):
        return [None] + apply_move2(self._target(addr), addr)

    def as_string(self, addr):
        return utils.LazyString("    %s %s", utils.force_case(self.mnemonic), disassembly.get_label(self._target(addr), addr))


class OpcodeJmpAbsX(OpcodeAbs):
    def __init__(self):
        super(OpcodeJmpAbsX, self).__init__("JMP", ",X)")

    def abs_operand(self, addr):
        return utils.get_u16(addr + 1)

    def has_zp_version(self):
        return False

    def update_references(self, addr):
        labels[self.abs_operand(addr)].add_reference(addr)

    def disassemble(self, addr):
        return [None]


def update_z(addr, state):
    state['z'] = None


# ENHANCE: On a 65C02 undefined opcodes are guaranteed to be NOPs of varying
# lengths. These are *not* implemented here, since most code probably won't be
# executing them and it's probably better to reduce the chances of arbitrary
# data being traced as code. All the same, it might be nice to allow the user to
# opt in to disassembling these.
opcodes.update({
    0x04: OpcodeZp("TSB", update=update_z),
    0x0c: OpcodeDataAbs("TSB", update=update_z),
    0x12: OpcodeZp("ORA", ")", update=update_anz),
    0x14: OpcodeZp("TRB", update=update_z),
    0x1a: OpcodeImplied("INC A", update=make_increment('a')),
    0x1c: OpcodeDataAbs("TRB", update=update_z),
    0x32: OpcodeZp("AND", ")", update=update_anz),
    0x34: OpcodeZp("BIT", ",X", update=update_bit),
    0x3c: OpcodeDataAbs("BIT", ",X", update=update_bit),
    0x3a: OpcodeImplied("DEC A", update=make_decrement('a')),
    0x52: OpcodeZp("EOR", ")", update=update_anz),
    0x5a: OpcodeImplied("PHY", update=neutral),
    0x64: OpcodeZp("STZ", update=neutral),
    0x72: OpcodeZp("ADC", ")", update=update_adc_sbc),
    0x74: OpcodeZp("STZ", ",X", update=neutral),
    0x7a: OpcodeImplied("PLY", update=update_ynz),
    0x7c: OpcodeJmpAbsX(),
    0x80: OpcodeUnconditionalBranch("BRA"),
    0x89: OpcodeImmediate("BIT", update=update_z), # BIT immediate only affects Z
    0x92: OpcodeZp("STA", ")", update=neutral),
    0x9c: OpcodeDataAbs("STZ", update=neutral),
    0x9e: OpcodeDataAbs("STZ", ",X", update=neutral),
    0xb2: OpcodeZp("LDA", ")", update=update_anz),
    0xd2: OpcodeZp("CMP", ")", update=update_nzc),
    0xda: OpcodeImplied("PHX", update=neutral),
    0xf2: OpcodeZp("SBC", ")", update=update_adc_sbc),
    0xfa: OpcodeImplied("PLX", update=update_xnz),
})
