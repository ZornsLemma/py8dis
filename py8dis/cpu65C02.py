from cpu6502 import *

class Cpu65C02(Cpu6502):
    """Singleton class representing a 65C02 CPU"""

    def __new__(cls):
        if not hasattr(cls, 'instance'):
            cls.instance = super(Cpu65C02, cls).__new__(cls)

            config.set_cmos(True)
        return cls.instance

    def __init__(self):
        super(Cpu65C02, self).__init__()

        self.code_analysis_fns.append(self.subroutine_argument_finder) # TODO!?

        # ENHANCE: On a 65C02 undefined opcodes are guaranteed to be NOPs of varying
        # lengths. These are *not* implemented here, since most code probably won't be
        # executing them and it's probably better to reduce the chances of arbitrary
        # data being traced as code. All the same, it might be nice to allow the user to
        # opt in to disassembling these.
        self.opcodes.update({
            0x04: self.OpcodeZp("TSB",            cycles="5", update=self.update_z),
            0x0c: self.OpcodeDataAbs("TSB",       cycles="6", update=self.update_z),
            0x12: self.OpcodeZp("ORA", ")",       cycles="5", update=self.update_anz),
            0x14: self.OpcodeZp("TRB",            cycles="5", update=self.update_z),
            0x1a: self.OpcodeImplied("INC A",     cycles="2", update=self.make_increment('a')),
            0x1c: self.OpcodeDataAbs("TRB",       cycles="6", update=self.update_z),
            0x32: self.OpcodeZp("AND", ")",       cycles="5", update=self.update_anz),
            0x34: self.OpcodeZp("BIT", ",X",      cycles="4", update=self.update_bit),
            0x3c: self.OpcodeDataAbs("BIT", ",X", cycles="4", update=self.update_bit),
            0x3a: self.OpcodeImplied("DEC A",     cycles="2", update=self.make_decrement('a')),
            0x52: self.OpcodeZp("EOR", ")",       cycles="5", update=self.update_anz),
            0x5a: self.OpcodeImplied("PHY",       cycles="3", update=self.neutral),
            0x64: self.OpcodeZp("STZ",            cycles="3", update=self.neutral),
            0x72: self.OpcodeZp("ADC", ")",       cycles="5e", update=self.update_adc_sbc),
            0x74: self.OpcodeZp("STZ", ",X",      cycles="4", update=self.neutral),
            0x7a: self.OpcodeImplied("PLY",       cycles="4", update=self.update_ynz),
            0x7c: self.OpcodeJmpAbsX(             cycles="6"),
            0x80: self.OpcodeUnconditionalBranch("BRA", cycles="3d"),
            0x89: self.OpcodeImmediate("BIT",     cycles="2", update=self.update_z), # BIT immediate only affects Z
            0x92: self.OpcodeZp("STA", ")",       cycles="5", update=self.neutral),
            0x9c: self.OpcodeDataAbs("STZ",       cycles="4", update=self.neutral),
            0x9e: self.OpcodeDataAbs("STZ", ",X", cycles="5", update=self.neutral),
            0xb2: self.OpcodeZp("LDA", ")",       cycles="5", update=self.update_anz),
            0xd2: self.OpcodeZp("CMP", ")",       cycles="5", update=self.update_nzc),
            0xda: self.OpcodeImplied("PHX",       cycles="3", update=self.neutral),
            0xf2: self.OpcodeZp("SBC", ")",       cycles="5e", update=self.update_adc_sbc),
            0xfa: self.OpcodeImplied("PLX",       cycles="4", update=self.update_xnz),

            # 6502 instructions with changed cycle counts
            0x1e: self.OpcodeDataAbs("ASL", ",X", cycles="6b", update=self.update_nzc),
            0x3e: self.OpcodeDataAbs("ROL", ",X", cycles="6b", update=self.update_nzc),
            0x5e: self.OpcodeDataAbs("LSR", ",X", cycles="6b", update=self.update_nzc),
            0x6c: self.OpcodeJmpInd(              cycles="6"),
            0x7e: self.OpcodeDataAbs("ROR", ",X", cycles="6b", update=self.update_nzc),

            0x61: self.OpcodeZp("ADC", ",X)",     cycles="6e", update=self.update_adc_sbc),
            0x65: self.OpcodeZp("ADC",            cycles="3e", update=self.update_adc_sbc),
            0x69: self.OpcodeImmediate("ADC",     cycles="2e", update=self.update_adc_sbc),
            0x6d: self.OpcodeDataAbs("ADC",       cycles="4e", update=self.update_adc_sbc),
            0x71: self.OpcodeZp("ADC", "),Y",     cycles="5c", update=self.update_adc_sbc),
            0x75: self.OpcodeZp("ADC", ",X",      cycles="4e", update=self.update_adc_sbc),
            0x79: self.OpcodeDataAbs("ADC", ",Y", cycles="4c", has_zp_version=False, update=self.update_adc_sbc),
            0x7d: self.OpcodeDataAbs("ADC", ",X", cycles="4c", update=self.update_adc_sbc),
            0xe1: self.OpcodeZp("SBC", ",X)",     cycles="6", update=self.update_adc_sbc),
            0xe5: self.OpcodeZp("SBC",            cycles="3e", update=self.update_adc_sbc),
            0xe9: self.OpcodeImmediate("SBC",     cycles="2", update=self.update_adc_sbc),
            0xed: self.OpcodeDataAbs("SBC",       cycles="4", update=self.update_adc_sbc),
            0xf1: self.OpcodeZp("SBC", "),Y",     cycles="5c", update=self.update_adc_sbc),
            0xf5: self.OpcodeZp("SBC", ",X",      cycles="4e", update=self.update_adc_sbc),
            0xf9: self.OpcodeDataAbs("SBC", ",Y", cycles="4c", has_zp_version=False, update=self.update_adc_sbc),
            0xfd: self.OpcodeDataAbs("SBC", ",X", cycles="4c", update=self.update_adc_sbc),
        })

    # TODO: This is probably wrong wrt moves; copy how OpcodeConditionalBranch works
    class OpcodeUnconditionalBranch(Cpu6502.Opcode):
        def __init__(self, mnemonic, cycles="???"):
            super(Cpu65C02.OpcodeUnconditionalBranch, self).__init__(mnemonic, 1, cycles=cycles)

        def _target(self, binary_addr):
            base = movemanager.b2r(binary_addr)
            return base + 2 + utils.signed8(memorymanager.get_u8_binary(binary_addr + 1))

        def abs_operand(self, binary_addr):
            return self._target(binary_addr)

        def update_references(self, binary_addr):
            trace.cpu.labels[self.abs_operand(binary_addr)].add_reference(binary_addr)
            #trace.references[self._target(binary_addr)].add(binary_addr)

        def disassemble(self, binary_addr):
            return [None] + trace.cpu.apply_move2(self._target(binary_addr), binary_addr)

        def as_string(self, binary_addr):
            return utils.LazyString("%s%s %s", utils.make_indent(1), utils.force_case(self.mnemonic), disassembly.get_label(self._target(binary_addr), binary_addr))


    class OpcodeJmpAbsX(Cpu6502.OpcodeAbs):
        def __init__(self, cycles="???"):
            super(Cpu65C02.OpcodeJmpAbsX, self).__init__("JMP", ",X)", cycles=cycles)

        def abs_operand(self, binary_addr):
            return memorymanager.get_u16_binary(binary_addr + 1)

        def has_zp_version(self):
            return False

        def update_references(self, binary_addr):
            trace.cpu.labels[self.abs_operand(binary_addr)].add_reference(binary_addr)

        def is_block_end(self):
            return True

        def disassemble(self, binary_addr):
            return [None]

    def update_z(self, addr, state):
        state['z'] = None

    def is_branch_to(self, addr, target):
        c = disassembly.classifications[addr]
        # TODO: hacky use of isinstance()
        if isinstance(c, Cpu65C02.OpcodeUnconditionalBranch):
            return c._target(addr) == target

        return Cpu6502.is_branch_to(self, addr, target)
