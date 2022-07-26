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

        # On a 65C02 undefined opcodes are guaranteed to be NOPs of
        # varying lengths. These are *not* implemented here, since most
        # code probably won't be executing them and it's probably
        # better to reduce the chances of arbitrary data being traced
        # as code.
        # ENHANCE: All the same, it might be nice to allow the user to
        # opt in to disassembling these.
        #
        # On the 6502 undocumented opcodes are sometimes used. Perhaps
        # allow them too: e.g. Zalaga uses undocumented opcodes.

        # Each opcode is categorised by how it affects A:
        #
        # (-) Does not touch A                  (e.g. CLC, PHP, LDX)
        # (U) Uses A, but doesn't change it     (e.g. CMP, STA, PHA)
        # (A) Adjusts A, via arithmetic/bitwise (e.g. ASL, ADC, AND)
        # (O) Overwrites A completely.          (e.g. LDA, PLA)
        #
        # and similarly for the X and Y registers.
        self.opcodes.update({
            # new instructions
            0x04: self.OpcodeZp(                    "TSB zp",       "U--", cycles="5",  update=self.update_z),
            0x0c: self.OpcodeDataAbs(               "TSB addr",     "U--", cycles="6",  update=self.update_z),
            0x12: self.OpcodeZp(                    "ORA (zp)",     "A--", cycles="5",  update=self.update_nz),
            0x14: self.OpcodeZp(                    "TRB zp",       "U--", cycles="5",  update=self.update_z),
            0x1a: self.OpcodeImplied(               "INC A",        "A--", cycles="2",  update=self.make_increment('a')),
            0x1c: self.OpcodeDataAbs(               "TRB addr",     "U--", cycles="6",  update=self.update_z),
            0x32: self.OpcodeZp(                    "AND (zp)",     "A--", cycles="5",  update=self.update_nz),
            0x34: self.OpcodeZp(                    "BIT zp,X",     "UU-", cycles="4",  update=self.update_bit),
            0x3c: self.OpcodeDataAbs(               "BIT addr,X",   "UU-", cycles="4",  update=self.update_bit),
            0x3a: self.OpcodeImplied(               "DEC A",        "A--", cycles="2",  update=self.make_decrement('a')),
            0x52: self.OpcodeZp(                    "EOR (zp)",     "A--", cycles="5",  update=self.update_nz),
            0x5a: self.OpcodeImplied(               "PHY",          "--U", cycles="3",  update=self.neutral),
            0x64: self.OpcodeZp(                    "STZ zp",       "---", cycles="3",  update=self.neutral),
            0x72: self.OpcodeZp(                    "ADC (zp)",     "A--", cycles="5e", update=self.update_adc_sbc),
            0x74: self.OpcodeZp(                    "STZ zp,X",     "-U-", cycles="4",  update=self.neutral),
            0x7a: self.OpcodeImplied(               "PLY",          "--O", cycles="4",  update=self.update_nz),
            0x7c: self.OpcodeJmpAbsX(               "JMP (addr,X)", "---", cycles="6"),
            0x80: self.OpcodeUnconditionalBranch(   "BRA offset",   "---", cycles="3d"),
            0x89: self.OpcodeImmediate(             "BIT #imm",     "U--", cycles="2",  update=self.update_z), # BIT immediate only affects Z
            0x92: self.OpcodeZp(                    "STA (zp)",     "U--", cycles="5",  update=self.neutral),
            0x9c: self.OpcodeDataAbs(               "STZ addr",     "---", cycles="4",  update=self.neutral),
            0x9e: self.OpcodeDataAbs(               "STZ addr,X",   "-U-", cycles="5",  update=self.neutral),
            0xb2: self.OpcodeZp(                    "LDA (zp)",     "O--", cycles="5",  update=self.update_nz),
            0xd2: self.OpcodeZp(                    "CMP (zp)",     "U--", cycles="5",  update=self.update_nzc),
            0xda: self.OpcodeImplied(               "PHX",          "-U-", cycles="3",  update=self.neutral),
            0xf2: self.OpcodeZp(                    "SBC (zp)",     "A--", cycles="5e", update=self.update_adc_sbc),
            0xfa: self.OpcodeImplied(               "PLX",          "-O-", cycles="4",  update=self.update_nz),

            # 6502 instructions with changed cycle counts
            0x1e: self.OpcodeDataAbs(               "ASL addr,X",   "-U-", cycles="6b", update=self.update_nzc),
            0x3e: self.OpcodeDataAbs(               "ROL addr,X",   "-U-", cycles="6b", update=self.update_nzc),
            0x5e: self.OpcodeDataAbs(               "LSR addr,X",   "-U-", cycles="6b", update=self.update_nzc),
            0x6c: self.OpcodeJmpInd(                "JMP (addr)",   "---", cycles="6"),
            0x7e: self.OpcodeDataAbs(               "ROR addr,X",   "-U-", cycles="6b", update=self.update_nzc),

            0x61: self.OpcodeZp(                    "ADC (zp,X)",   "AU-", cycles="6e", update=self.update_adc_sbc),
            0x65: self.OpcodeZp(                    "ADC zp",       "A--", cycles="3e", update=self.update_adc_sbc),
            0x69: self.OpcodeImmediate(             "ADC #imm",     "A--", cycles="2e", update=self.update_adc_sbc),
            0x6d: self.OpcodeDataAbs(               "ADC addr",     "A--", cycles="4e", update=self.update_adc_sbc),
            0x71: self.OpcodeZp(                    "ADC (zp),Y",   "A-U", cycles="5c", update=self.update_adc_sbc),
            0x75: self.OpcodeZp(                    "ADC zp,X",     "AU-", cycles="4e", update=self.update_adc_sbc),
            0x79: self.OpcodeDataAbs(               "ADC addr,Y",   "A-U", cycles="4c", has_zp_version=False, update=self.update_adc_sbc),
            0x7d: self.OpcodeDataAbs(               "ADC addr,X",   "AU-", cycles="4c", update=self.update_adc_sbc),
            0xe1: self.OpcodeZp(                    "SBC (zp,X)",   "AU-", cycles="6",  update=self.update_adc_sbc),
            0xe5: self.OpcodeZp(                    "SBC zp",       "A--", cycles="3e", update=self.update_adc_sbc),
            0xe9: self.OpcodeImmediate(             "SBC #imm",     "A--", cycles="2",  update=self.update_adc_sbc),
            0xed: self.OpcodeDataAbs(               "SBC addr",     "A--", cycles="4",  update=self.update_adc_sbc),
            0xf1: self.OpcodeZp(                    "SBC (zp),Y",   "A-U", cycles="5c", update=self.update_adc_sbc),
            0xf5: self.OpcodeZp(                    "SBC zp,X",     "AU-", cycles="4e", update=self.update_adc_sbc),
            0xf9: self.OpcodeDataAbs(               "SBC addr,Y",   "A-U", cycles="4c", has_zp_version=False, update=self.update_adc_sbc),
            0xfd: self.OpcodeDataAbs(               "SBC addr,X",   "AU-", cycles="4c", update=self.update_adc_sbc),
        })

    # TODO: This is probably wrong wrt moves; copy how OpcodeConditionalBranch works
    class OpcodeUnconditionalBranch(Cpu6502.Opcode):
        def __init__(self, instruction_template, reg_change, cycles="???"):
            super(Cpu65C02.OpcodeUnconditionalBranch, self).__init__(instruction_template, reg_change, cycles=cycles)

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
        def __init__(self, instruction_template, reg_change, cycles="???"):
            super(Cpu65C02.OpcodeJmpAbsX, self).__init__(instruction_template, reg_change, has_zp_version=False, cycles=cycles)

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
