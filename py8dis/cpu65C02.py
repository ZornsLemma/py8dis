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

        # ENHANCE: On a 65C02 undefined opcodes are guaranteed to be NOPs of varying
        # lengths. These are *not* implemented here, since most code probably won't be
        # executing them and it's probably better to reduce the chances of arbitrary
        # data being traced as code. All the same, it might be nice to allow the user to
        # opt in to disassembling these.
        self.opcodes.update({
            # new instructions
            0x04: self.OpcodeZp(                    "TSB zp",       cycles="5",  update=self.update_z),
            0x0c: self.OpcodeDataAbs(               "TSB addr",     cycles="6",  update=self.update_z),
            0x12: self.OpcodeZp(                    "ORA (zp)",     cycles="5",  update=self.update_anz),
            0x14: self.OpcodeZp(                    "TRB zp",       cycles="5",  update=self.update_z),
            0x1a: self.OpcodeImplied(               "INC A",        cycles="2",  update=self.make_increment('a')),
            0x1c: self.OpcodeDataAbs(               "TRB addr",     cycles="6",  update=self.update_z),
            0x32: self.OpcodeZp(                    "AND (zp)",     cycles="5",  update=self.update_anz),
            0x34: self.OpcodeZp(                    "BIT zp,X",     cycles="4",  update=self.update_bit),
            0x3c: self.OpcodeDataAbs(               "BIT addr,X",   cycles="4",  update=self.update_bit),
            0x3a: self.OpcodeImplied(               "DEC A",        cycles="2",  update=self.make_decrement('a')),
            0x52: self.OpcodeZp(                    "EOR (zp)",     cycles="5",  update=self.update_anz),
            0x5a: self.OpcodeImplied(               "PHY",          cycles="3",  update=self.neutral),
            0x64: self.OpcodeZp(                    "STZ zp",       cycles="3",  update=self.neutral),
            0x72: self.OpcodeZp(                    "ADC (zp)",     cycles="5e", update=self.update_adc_sbc),
            0x74: self.OpcodeZp(                    "STZ zp,X",     cycles="4",  update=self.neutral),
            0x7a: self.OpcodeImplied(               "PLY",          cycles="4",  update=self.update_ynz),
            0x7c: self.OpcodeJmpAbsX(               "JMP (addr,X)", cycles="6"),
            0x80: self.OpcodeUnconditionalBranch(   "BRA offset",   cycles="3d"),
            0x89: self.OpcodeImmediate(             "BIT #imm",     cycles="2",  update=self.update_z), # BIT immediate only affects Z
            0x92: self.OpcodeZp(                    "STA (zp)",     cycles="5",  update=self.neutral),
            0x9c: self.OpcodeDataAbs(               "STZ addr",     cycles="4",  update=self.neutral),
            0x9e: self.OpcodeDataAbs(               "STZ addr,X",   cycles="5",  update=self.neutral),
            0xb2: self.OpcodeZp(                    "LDA (zp)",     cycles="5",  update=self.update_anz),
            0xd2: self.OpcodeZp(                    "CMP (zp)",     cycles="5",  update=self.update_nzc),
            0xda: self.OpcodeImplied(               "PHX",          cycles="3",  update=self.neutral),
            0xf2: self.OpcodeZp(                    "SBC (zp)",     cycles="5e", update=self.update_adc_sbc),
            0xfa: self.OpcodeImplied(               "PLX",          cycles="4",  update=self.update_xnz),

            # 6502 instructions with changed cycle counts
            0x1e: self.OpcodeDataAbs(               "ASL addr,X",   cycles="6b", update=self.update_nzc),
            0x3e: self.OpcodeDataAbs(               "ROL addr,X",   cycles="6b", update=self.update_nzc),
            0x5e: self.OpcodeDataAbs(               "LSR addr,X",   cycles="6b", update=self.update_nzc),
            0x6c: self.OpcodeJmpInd(                "JMP (addr)",   cycles="6"),
            0x7e: self.OpcodeDataAbs(               "ROR addr,X",   cycles="6b", update=self.update_nzc),

            0x61: self.OpcodeZp(                    "ADC (zp,X)",   cycles="6e", update=self.update_adc_sbc),
            0x65: self.OpcodeZp(                    "ADC zp",       cycles="3e", update=self.update_adc_sbc),
            0x69: self.OpcodeImmediate(             "ADC #imm",     cycles="2e", update=self.update_adc_sbc),
            0x6d: self.OpcodeDataAbs(               "ADC addr",     cycles="4e", update=self.update_adc_sbc),
            0x71: self.OpcodeZp(                    "ADC (zp),Y",   cycles="5c", update=self.update_adc_sbc),
            0x75: self.OpcodeZp(                    "ADC zp,X",     cycles="4e", update=self.update_adc_sbc),
            0x79: self.OpcodeDataAbs(               "ADC addr,Y",   cycles="4c", has_zp_version=False, update=self.update_adc_sbc),
            0x7d: self.OpcodeDataAbs(               "ADC addr,X",   cycles="4c", update=self.update_adc_sbc),
            0xe1: self.OpcodeZp(                    "SBC (zp,X)",   cycles="6",  update=self.update_adc_sbc),
            0xe5: self.OpcodeZp(                    "SBC zp",       cycles="3e", update=self.update_adc_sbc),
            0xe9: self.OpcodeImmediate(             "SBC #imm",     cycles="2",  update=self.update_adc_sbc),
            0xed: self.OpcodeDataAbs(               "SBC addr",     cycles="4",  update=self.update_adc_sbc),
            0xf1: self.OpcodeZp(                    "SBC (zp),Y",   cycles="5c", update=self.update_adc_sbc),
            0xf5: self.OpcodeZp(                    "SBC zp,X",     cycles="4e", update=self.update_adc_sbc),
            0xf9: self.OpcodeDataAbs(               "SBC addr,Y",   cycles="4c", has_zp_version=False, update=self.update_adc_sbc),
            0xfd: self.OpcodeDataAbs(               "SBC addr,X",   cycles="4c", update=self.update_adc_sbc),
        })

    # TODO: This is probably wrong wrt moves; copy how OpcodeConditionalBranch works
    class OpcodeUnconditionalBranch(Cpu6502.Opcode):
        def __init__(self, instruction_template, cycles="???"):
            super(Cpu65C02.OpcodeUnconditionalBranch, self).__init__(instruction_template, cycles=cycles)

        def target(self, binary_addr):
            base = movemanager.b2r(binary_addr)
            return base + 2 + utils.signed8(memorymanager.get_u8_binary(binary_addr + 1))

        def abs_operand(self, binary_addr):
            return self.target(binary_addr)

        def update_references(self, binary_addr):
            trace.cpu.labels[self.abs_operand(binary_addr)].add_reference(binary_addr)
            #trace.references[self.target(binary_addr)].add(binary_addr)

        def disassemble(self, binary_addr):
            return [None] + trace.cpu.apply_move2(self.target(binary_addr), binary_addr)

        def as_string(self, binary_addr):
            return utils.LazyString("%s%s %s", utils.make_indent(1), utils.force_case(self.mnemonic), disassembly.get_label(self.target(binary_addr), binary_addr))


    class OpcodeJmpAbsX(Cpu6502.OpcodeAbs):
        def __init__(self, instruction_template, cycles="???"):
            super(Cpu65C02.OpcodeJmpAbsX, self).__init__(instruction_template, has_zp_version=False, cycles=cycles)

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
            return c.target(addr) == target

        return Cpu6502.is_branch_to(self, addr, target)
