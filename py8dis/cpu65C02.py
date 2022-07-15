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
            0x04: self.OpcodeZp("TSB", update=self.update_z),
            0x0c: self.OpcodeDataAbs("TSB", update=self.update_z),
            0x12: self.OpcodeZp("ORA", ")", update=self.update_anz),
            0x14: self.OpcodeZp("TRB", update=self.update_z),
            0x1a: self.OpcodeImplied("INC A", update=self.make_increment('a')),
            0x1c: self.OpcodeDataAbs("TRB", update=self.update_z),
            0x32: self.OpcodeZp("AND", ")", update=self.update_anz),
            0x34: self.OpcodeZp("BIT", ",X", update=self.update_bit),
            0x3c: self.OpcodeDataAbs("BIT", ",X", update=self.update_bit),
            0x3a: self.OpcodeImplied("DEC A", update=self.make_decrement('a')),
            0x52: self.OpcodeZp("EOR", ")", update=self.update_anz),
            0x5a: self.OpcodeImplied("PHY", update=self.neutral),
            0x64: self.OpcodeZp("STZ", update=self.neutral),
            0x72: self.OpcodeZp("ADC", ")", update=self.update_adc_sbc),
            0x74: self.OpcodeZp("STZ", ",X", update=self.neutral),
            0x7a: self.OpcodeImplied("PLY", update=self.update_ynz),
            0x7c: self.OpcodeJmpAbsX(),
            0x80: self.OpcodeUnconditionalBranch("BRA"),
            0x89: self.OpcodeImmediate("BIT", update=self.update_z), # BIT immediate only affects Z
            0x92: self.OpcodeZp("STA", ")", update=self.neutral),
            0x9c: self.OpcodeDataAbs("STZ", update=self.neutral),
            0x9e: self.OpcodeDataAbs("STZ", ",X", update=self.neutral),
            0xb2: self.OpcodeZp("LDA", ")", update=self.update_anz),
            0xd2: self.OpcodeZp("CMP", ")", update=self.update_nzc),
            0xda: self.OpcodeImplied("PHX", update=self.neutral),
            0xf2: self.OpcodeZp("SBC", ")", update=self.update_adc_sbc),
            0xfa: self.OpcodeImplied("PLX", update=self.update_xnz),
        })

    # TODO: This is probably wrong wrt moves; copy how OpcodeConditionalBranch works
    class OpcodeUnconditionalBranch(Cpu6502.Opcode):
        def __init__(self, mnemonic):
            super(Cpu65C02.OpcodeUnconditionalBranch, self).__init__(mnemonic, 1)

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
        def __init__(self):
            super(Cpu65C02.OpcodeJmpAbsX, self).__init__("JMP", ",X)")

        def abs_operand(self, binary_addr):
            return memorymanager.get_u16_binary(binary_addr + 1)

        def has_zp_version(self):
            return False

        def update_references(self, binary_addr):
            trace.cpu.labels[self.abs_operand(binary_addr)].add_reference(binary_addr)

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
