import classification
import collections
import config
import disassembly
import labelmanager
import mainformatter
import memorymanager
import movemanager
import re
import trace
import utils

def parse_instruction(instruction):
    instruction = instruction.strip()
    r = re.match(Cpu6502.implied_pattern, instruction)
    if r:
        mnemonic        = r.groups(1)[0]
        operand         = ""
        operand_length  = 0
        prefix          = ""
        suffix          = ""
        addr_mode       = [Cpu6502.mode_implied]
        return (mnemonic, operand, operand_length, prefix, suffix, addr_mode)

    r = re.match(Cpu6502.immediate_pattern, instruction)
    if r:
        mnemonic        = r.groups(1)[0]
        operand         = r.groups(1)[1]
        operand_length  = 1
        prefix          = "#"
        suffix          = ""
        addr_mode       = [Cpu6502.mode_immediate]
        return (mnemonic, operand, operand_length, prefix, suffix, addr_mode)

    r = re.match(Cpu6502.accumulator_pattern, instruction)
    if r:
        mnemonic        = r.groups(1)[0]
        operand         = ""
        operand_length  = 0
        if config.get_assembler().explicit_a:
            prefix = "A"
        else:
            prefix = ""
        suffix          = ""
        addr_mode       = [Cpu6502.mode_accumulator]
        return (mnemonic, operand, operand_length, prefix, suffix, addr_mode)

    r = re.match(Cpu6502.offset_pattern, instruction)
    if r:
        mnemonic        = r.groups(1)[0]
        operand         = r.groups(1)[1]
        operand_length  = 1
        prefix          = ""
        suffix          = ""
        addr_mode       = [Cpu6502.mode_offset]
        return (mnemonic, operand, operand_length, prefix, suffix, addr_mode)

    r = re.match(Cpu6502.indexed_indirect_pattern, instruction)
    if r:
        mnemonic        = r.groups(1)[0]
        operand         = r.groups(1)[1]
        prefix          = "("
        suffix          = ",X)"

        if mnemonic == "JMP":
            operand_length = 2
            addr_mode      = [Cpu6502.mode_indexed_abs]
        else:
            operand_length  = 1
            addr_mode       = [Cpu6502.mode_indexed_indirect]

        return (mnemonic, operand, operand_length, prefix, suffix, addr_mode)

    r = re.match(Cpu6502.indirect_indexed_pattern, instruction)
    if r:
        mnemonic        = r.groups(1)[0]
        operand         = r.groups(1)[1]
        operand_length  = 1
        prefix          = "("
        suffix          = "),Y"
        addr_mode       = [Cpu6502.mode_indirect_indexed]
        return (mnemonic, operand, operand_length, prefix, suffix, addr_mode)

    r = re.match(Cpu6502.abs_or_zp_indexed_x_pattern, instruction)
    if r:
        mnemonic        = r.groups(1)[0]
        operand         = r.groups(1)[1]
        operand_length  = [1, 2]
        prefix          = ""
        suffix          = ",X"
        addr_mode       = [Cpu6502.mode_zp_indexed_x, Cpu6502.mode_abs_indexed_x]
        return (mnemonic, operand, operand_length, prefix, suffix, addr_mode)

    r = re.match(Cpu6502.abs_or_zp_indexed_y_pattern, instruction)
    if r:
        mnemonic        = r.groups(1)[0]
        operand         = r.groups(1)[1]
        operand_length  = 1 # Could be two, updated later
        prefix          = ""
        suffix          = ",Y"
        addr_mode       = [Cpu6502.mode_zp_indexed_y, Cpu6502.mode_abs_indexed_y]
        return (mnemonic, operand, operand_length, prefix, suffix, addr_mode)

    r = re.match(Cpu6502.indirect_pattern, instruction)
    if r:
        mnemonic        = r.groups(1)[0]
        operand         = r.groups(1)[1]
        operand_length  = 1 # Could be two, updated later
        prefix          = "("
        suffix          = ")"
        addr_mode       = [Cpu6502.mode_indirect_zp, Cpu6502.mode_indirect_addr]
        return (mnemonic, operand, operand_length, prefix, suffix, addr_mode)

    r = re.match(Cpu6502.zp_or_addr_pattern, instruction)
    if r:
        mnemonic        = r.groups(1)[0]
        operand         = r.groups(1)[1]
        operand_length  = 1 # Could be two, updated later
        prefix          = ""
        suffix          = ""
        addr_mode       = [Cpu6502.mode_zp, Cpu6502.mode_addr]
        return (mnemonic, operand, operand_length, prefix, suffix, addr_mode)

    utils.die("Could not understand instruction: %s" % (instruction))
    return None

def parse_instruction_template(instruction):
    mnemonic, operand, operand_length, prefix, suffix, addr_mode = parse_instruction(instruction)

    if len(addr_mode) == 1:
        addr_mode = addr_mode[0]
    elif len(addr_mode) > 1:
        # Resolve zp vs addr addressing modes
        if operand == "zp":
            operand_length = 1
            addr_mode = addr_mode[0]
        elif operand == "addr":
            operand_length = 2
            addr_mode = addr_mode[1]
        else:
            utils.warn("%s, %s, %s, %s, %s, %s" % (mnemonic, operand, operand_length, prefix, suffix, addr_mode))
            utils.die("Could not understand instruction template %s" % (instruction))

    return (mnemonic, operand, operand_length, prefix, suffix, addr_mode)

class SubConst(object):
    """Data about a constant substitution.

    These are stored in substitute_constant_list"""

    def __init__(self, instruction, reg, constants_dict, define_constant):
        mnemonic, operand, operand_length, prefix, suffix, addr_modes = parse_instruction(instruction)
        self.mnemonic       = mnemonic
        self.addr_modes     = addr_modes        # There can be two possible addressing modes, a zp and addr version
        self.operand        = operand           # This is a label
        self._opcode        = None              # not set yet
        self.reg            = reg
        self.constants_dict = constants_dict
        self.define_constant = define_constant

    def get_opcode(self, opcodes):
        # If already calculated, return it
        if self._opcode != None:
            return self._opcode

        runtime_addr = self.get_operand_value()
        if len(self.addr_modes) > 1 and runtime_addr >= 0x100:
            self.addr_mode = self.addr_modes[1]
        else:
            self.addr_mode = self.addr_modes[0]

        # Get opcode from mnemonic and addr_mode
        for opcode_key in opcodes:
            if opcodes[opcode_key].mnemonic.lower() == self.mnemonic.lower():
                if opcodes[opcode_key].addr_mode == self.addr_mode:
                    self._opcode = opcode_key
                    return opcode_key

    def get_operand_value(self):
        # Look up label
        result = labelmanager.addr(self.operand)
        if result != None:
            return result

        # TODO: Optimise!
        for addr in disassembly.optional_labels:
            if disassembly.optional_labels[addr][0] == self.operand:
                return addr

        # Assume hex of some kind. Remove common prefixes.
        result = self.operand
        if result[0] in "&$":
            result = result[1:]
        return int(result, 16)

class Cpu6502(trace.Cpu):
    """Singleton class representing a 6502 CPU"""

    # Addressing modes
    mode_implied           = 0
    mode_immediate         = 1
    mode_accumulator       = 2
    mode_offset            = 3
    mode_indexed_indirect  = 4
    mode_indirect_indexed  = 5
    mode_abs_indexed_x     = 6
    mode_zp_indexed_x      = 7
    mode_abs_indexed_y     = 8
    mode_zp_indexed_y      = 9
    mode_indirect_zp       = 10
    mode_indirect_addr     = 11
    mode_addr              = 12
    mode_zp                = 13
    mode_indexed_abs       = 14     # for the 65C02: JMP (addr,X)

    # Regex patterns that help identify the addressing modes
    implied_pattern             = re.compile("([A-Z][A-Z][A-Z])$", re.IGNORECASE)
    immediate_pattern           = re.compile("([A-Z][A-Z][A-Z])[ \t]+#(.+)$", re.IGNORECASE)
    accumulator_pattern         = re.compile("([A-Z][A-Z][A-Z])[ \t]+A$", re.IGNORECASE)
    offset_pattern              = re.compile("(BPL|BMI|BVC|BVS|BCC|BCS|BNE|BEQ|BRA)[ \t]+(.+)$", re.IGNORECASE)
    indexed_indirect_pattern    = re.compile("([A-Z][A-Z][A-Z])[ \t]+\((.*),X\)$", re.IGNORECASE)
    indirect_indexed_pattern    = re.compile("([A-Z][A-Z][A-Z])[ \t]+\((.*)\),Y$", re.IGNORECASE)
    abs_or_zp_indexed_x_pattern = re.compile("([A-Z][A-Z][A-Z])[ \t]+(.+),X$", re.IGNORECASE)
    abs_or_zp_indexed_y_pattern = re.compile("([A-Z][A-Z][A-Z])[ \t]+(.+),Y$", re.IGNORECASE)
    indirect_pattern            = re.compile("([A-Z][A-Z][A-Z])[ \t]+\((.*)\)$", re.IGNORECASE)
    zp_or_addr_pattern          = re.compile("([A-Z][A-Z][A-Z])[ \t]+(.+)$", re.IGNORECASE)

    def __new__(cls):
        if not hasattr(cls, 'instance'):
            cls.instance = super(Cpu6502, cls).__new__(cls)
        return cls.instance

    def __init__(self):
        super(Cpu6502, self).__init__()

        self.code_analysis_fns.append(self.subroutine_argument_finder)
        self.code_analysis_fns.append(self.substitute_constants)
        self.code_analysis_fns.append(self.find_subroutine_calls)

        # TODO: indent_level is a bit of a hack (after all, arguably
        # byte/word directives etc should have it too) and should
        # probably be handled at a higher level by the code controlling
        # emission of text disassembly output
        self.indent_level_dict = collections.defaultdict(int)

        # Each opcode is categorised by how it affects A:
        #
        # (-) Does not touch A                  (e.g. CLC, PHP, LDX)
        # (U) Uses A, but doesn't change it     (e.g. CMP, STA, PHA)
        # (A) Adjusts A, via arithmetic/bitwise (e.g. ASL, ADC, AND)
        # (O) Overwrites A completely.          (e.g. LDA, PLA)
        #
        # ...and similarly for the X and Y registers.
        self.opcodes = {
            0x00: self.OpcodeReturn(            "BRK",        "---", cycles="7"),
            0x01: self.OpcodeZp(                "ORA (zp,X)", "AU-", cycles="6", update=self.update_nz),
            0x05: self.OpcodeZp(                "ORA zp",     "A--", cycles="3", update=self.update_nz),
            0x06: self.OpcodeZp(                "ASL zp",     "---", cycles="5", update=self.update_nzc),
            0x08: self.OpcodeImplied(           "PHP",        "---", cycles="3", update=self.neutral),
            0x09: self.OpcodeImmediate(         "ORA #imm",   "A--", cycles="2", update=self.update_nz),
            0x0a: self.OpcodeImplied(           "ASL A",      "A--", cycles="2", update=self.update_nzc),
            0x0d: self.OpcodeDataAbs(           "ORA addr",   "A--", cycles="4", update=self.update_nz),
            0x0e: self.OpcodeDataAbs(           "ASL addr",   "---", cycles="6", update=self.update_nzc),
            0x10: self.OpcodeConditionalBranch( "BPL offset", "---", cycles="2a"),
            0x11: self.OpcodeZp(                "ORA (zp),Y", "A-U", cycles="5b", update=self.update_nz),
            0x15: self.OpcodeZp(                "ORA zp,X",   "AU-", cycles="4",  update=self.update_nz),
            0x16: self.OpcodeZp(                "ASL zp,X",   "-U-", cycles="6",  update=self.update_nzc),
            0x18: self.OpcodeImplied(           "CLC",        "---", cycles="2",  update=self.make_update_flag('c', False)),
            0x19: self.OpcodeDataAbs(           "ORA addr,Y", "A-U", cycles="4f", has_zp_version=False, update=self.update_nz),
            0x1d: self.OpcodeDataAbs(           "ORA addr,X", "AU-", cycles="4f", update=self.update_nz),
            0x1e: self.OpcodeDataAbs(           "ASL addr,X", "-U-", cycles="7",  update=self.update_nzc),
            0x20: self.OpcodeJsr(               "JSR addr",   "---", cycles="6"),
            0x21: self.OpcodeZp(                "AND (zp,X)", "AU-", cycles="6",  update=self.update_nzc),
            0x24: self.OpcodeZp(                "BIT zp",     "---", cycles="3",  update=self.update_bit),
            0x25: self.OpcodeZp(                "AND zp",     "A--", cycles="3",  update=self.update_nz),
            0x26: self.OpcodeZp(                "ROL zp",     "---", cycles="5",  update=self.update_nzc),
            0x28: self.OpcodeImplied(           "PLP",        "---", cycles="4",  update=self.update_all_flags),
            0x29: self.OpcodeImmediate(         "AND #imm",   "A--", cycles="2",  update=self.update_nz),
            0x2a: self.OpcodeImplied(           "ROL A",      "A--", cycles="2",  update=self.update_nzc),
            0x2c: self.OpcodeDataAbs(           "BIT addr",   "U--", cycles="4",  update=self.update_bit),
            0x2d: self.OpcodeDataAbs(           "AND addr",   "A--", cycles="4",  update=self.update_nz),
            0x2e: self.OpcodeDataAbs(           "ROL addr",   "---", cycles="6",  update=self.update_nzc),
            0x30: self.OpcodeConditionalBranch( "BMI offset", "---", cycles="2a"),
            0x31: self.OpcodeZp(                "AND (zp),Y", "A-U", cycles="5b", update=self.update_nz),
            0x35: self.OpcodeZp(                "AND zp,X",   "AU-", cycles="4",  update=self.update_nz),
            0x36: self.OpcodeZp(                "ROL zp,X",   "-U-", cycles="6",  update=self.update_nzc),
            0x38: self.OpcodeImplied(           "SEC",        "---", cycles="2",  update=self.make_update_flag('c', True)),
            0x39: self.OpcodeDataAbs(           "AND addr,Y", "A-U", cycles="4f", has_zp_version=False, update=self.update_nz),
            0x3d: self.OpcodeDataAbs(           "AND addr,X", "AU-", cycles="4f", update=self.update_nz),
            0x3e: self.OpcodeDataAbs(           "ROL addr,X", "-U-", cycles="7",  update=self.update_nzc),
            0x40: self.OpcodeReturn(            "RTI",        "---", cycles="6"),
            0x41: self.OpcodeZp(                "EOR (zp,X)", "AU-", cycles="6",  update=self.update_nz),
            0x45: self.OpcodeZp(                "EOR zp",     "A--", cycles="3",  update=self.update_nz),
            0x46: self.OpcodeZp(                "LSR zp",     "---", cycles="5",  update=self.update_nzc),
            0x48: self.OpcodeImplied(           "PHA",        "U--", cycles="3",  update=self.neutral),
            0x49: self.OpcodeImmediate(         "EOR #imm",   "A--", cycles="2",  update=self.update_nz),
            0x4a: self.OpcodeImplied(           "LSR A",      "A--", cycles="2",  update=self.update_nzc),
            0x4c: self.OpcodeJmpAbs(            "JMP addr",   "---", cycles="3"),
            0x4d: self.OpcodeDataAbs(           "EOR addr",   "A--", cycles="4",  update=self.update_nz),
            0x4e: self.OpcodeDataAbs(           "LSR addr",   "---", cycles="6",  update=self.update_nzc),
            0x50: self.OpcodeConditionalBranch( "BVC offset", "---", cycles="2a"),
            0x51: self.OpcodeZp(                "EOR (zp),Y", "A-U", cycles="5b", update=self.update_nz),
            0x55: self.OpcodeZp(                "EOR zp,X",   "AU-", cycles="4",  update=self.update_nz),
            0x56: self.OpcodeZp(                "LSR zp,X",   "-U-", cycles="6",  update=self.update_nzc),
            0x58: self.OpcodeImplied(           "CLI",        "---", cycles="2",  update=self.make_update_flag('i', False)),
            0x59: self.OpcodeDataAbs(           "EOR addr,Y", "A-U", cycles="4f", has_zp_version=False, update=self.update_nz),
            0x5d: self.OpcodeDataAbs(           "EOR addr,X", "AU-", cycles="4f", update=self.update_nz),
            0x5e: self.OpcodeDataAbs(           "LSR addr,X", "-U-", cycles="7",  update=self.update_nzc),
            0x60: self.OpcodeReturn(            "RTS",        "---", cycles="6"),
            0x61: self.OpcodeZp(                "ADC (zp,X)", "AU-", cycles="6",  update=self.update_adc_sbc),
            0x65: self.OpcodeZp(                "ADC zp",     "A--", cycles="3",  update=self.update_adc_sbc),
            0x66: self.OpcodeZp(                "ROR zp",     "---", cycles="5",  update=self.update_nzc),
            0x68: self.OpcodeImplied(           "PLA",        "O--", cycles="4",  update=self.update_nz),
            0x69: self.OpcodeImmediate(         "ADC #imm",   "A--", cycles="2",  update=self.update_adc_sbc),
            0x6a: self.OpcodeImplied(           "ROR A",      "A--", cycles="2",  update=self.update_nzc),
            0x6c: self.OpcodeJmpInd(            "JMP (addr)", "---", cycles="5"),
            0x6d: self.OpcodeDataAbs(           "ADC addr",   "A--", cycles="4",  update=self.update_adc_sbc),
            0x6e: self.OpcodeDataAbs(           "ROR addr",   "---", cycles="6",  update=self.update_nzc),
            0x70: self.OpcodeConditionalBranch( "BVS offset", "---", cycles="2a"),
            0x71: self.OpcodeZp(                "ADC (zp),Y", "A-U", cycles="5b", update=self.update_adc_sbc),
            0x75: self.OpcodeZp(                "ADC zp,X",   "AU-", cycles="4",  update=self.update_adc_sbc),
            0x76: self.OpcodeZp(                "ROR zp,X",   "-U-", cycles="6",  update=self.update_nzc),
            0x78: self.OpcodeImplied(           "SEI",        "---", cycles="2",  update=self.make_update_flag('i', True)),
            0x79: self.OpcodeDataAbs(           "ADC addr,Y", "A-U", cycles="4f", has_zp_version=False, update=self.update_adc_sbc),
            0x7d: self.OpcodeDataAbs(           "ADC addr,X", "AU-", cycles="4f", update=self.update_adc_sbc),
            0x7e: self.OpcodeDataAbs(           "ROR addr,X", "-U-", cycles="7",  update=self.update_nzc),
            0x81: self.OpcodeZp(                "STA (zp,X)", "UU-", cycles="6",  update=self.neutral),
            0x84: self.OpcodeZp(                "STY zp",     "--U", cycles="3",  update=self.neutral),
            0x85: self.OpcodeZp(                "STA zp",     "U--", cycles="3",  update=self.neutral),
            0x86: self.OpcodeZp(                "STX zp",     "-U-", cycles="3",  update=self.neutral),
            0x88: self.OpcodeImplied(           "DEY",        "--A", cycles="2",  update=self.make_decrement('y')),
            0x8a: self.OpcodeImplied(           "TXA",        "OU-", cycles="2",  update=self.make_transfer('x', 'a')),
            0x8c: self.OpcodeDataAbs(           "STY addr",   "--U", cycles="4",  update=self.neutral),
            0x8d: self.OpcodeDataAbs(           "STA addr",   "U--", cycles="4",  update=self.neutral),
            0x8e: self.OpcodeDataAbs(           "STX addr",   "-U-", cycles="4",  update=self.neutral),
            0x90: self.OpcodeConditionalBranch( "BCC offset", "---", cycles="2a"),
            0x91: self.OpcodeZp(                "STA (zp),Y", "U-U", cycles="6",  update=self.neutral),
            0x94: self.OpcodeZp(                "STY zp,X",   "-UU", cycles="4",  update=self.neutral),
            0x95: self.OpcodeZp(                "STA zp,X",   "UU-", cycles="4",  update=self.neutral),
            0x96: self.OpcodeZp(                "STX zp,Y",   "-UU", cycles="4",  update=self.neutral),
            0x98: self.OpcodeImplied(           "TYA",        "O-U", cycles="2",  update=self.make_transfer('y', 'a')),
            0x99: self.OpcodeDataAbs(           "STA addr,Y", "U-U", cycles="5",  has_zp_version=False, update=self.neutral),
            0x9a: self.OpcodeImplied(           "TXS",        "-U-", cycles="2",  update=self.neutral), # we don't model S at all
            0x9d: self.OpcodeDataAbs(           "STA addr,X", "UU-", cycles="5",  update=self.neutral),
            0xa0: self.OpcodeImmediate(         "LDY #imm",   "--O", cycles="2",  update=self.make_load_immediate('y')),
            0xa1: self.OpcodeZp(                "LDA (zp,X)", "OU-", cycles="6",  update=self.update_nz),
            0xa2: self.OpcodeImmediate(         "LDX #imm",   "-O-", cycles="2",  update=self.make_load_immediate('x')),
            0xa4: self.OpcodeZp(                "LDY zp",     "--O", cycles="3",  update=self.update_nz),
            0xa5: self.OpcodeZp(                "LDA zp",     "O--", cycles="3",  update=self.update_nz),
            0xa6: self.OpcodeZp(                "LDX zp",     "-O-", cycles="3",  update=self.update_nz),
            0xa8: self.OpcodeImplied(           "TAY",        "U-O", cycles="2",  update=self.make_transfer('a', 'y')),
            0xa9: self.OpcodeImmediate(         "LDA #imm",   "O--", cycles="2",  update=self.make_load_immediate('a')),
            0xaa: self.OpcodeImplied(           "TAX",        "UO-", cycles="2",  update=self.make_transfer('a', 'x')),
            0xac: self.OpcodeDataAbs(           "LDY addr",   "--O", cycles="4",  update=self.update_nz),
            0xad: self.OpcodeDataAbs(           "LDA addr",   "O--", cycles="4",  update=self.update_nz),
            0xae: self.OpcodeDataAbs(           "LDX addr",   "-O-", cycles="4",  update=self.update_nz),
            0xb0: self.OpcodeConditionalBranch( "BCS offset", "---", cycles="2a"),
            0xb1: self.OpcodeZp(                "LDA (zp),Y", "O-U", cycles="5b", update=self.update_nz),
            0xb4: self.OpcodeZp(                "LDY zp,X",   "-UO", cycles="4",  update=self.update_nz),
            0xb5: self.OpcodeZp(                "LDA zp,X",   "OU-", cycles="4",  update=self.update_nz),
            0xb6: self.OpcodeZp(                "LDX zp,Y",   "-OU", cycles="4",  update=self.update_nz),
            0xb8: self.OpcodeImplied(           "CLV",        "---", cycles="2",  update=self.make_update_flag('v', False)),
            0xb9: self.OpcodeDataAbs(           "LDA addr,Y", "O-U", cycles="4f", has_zp_version=False, update=self.update_nz),
            0xba: self.OpcodeImplied(           "TSX",        "-O-", cycles="2",  update=self.update_nz),
            0xbc: self.OpcodeDataAbs(           "LDY addr,X", "-UO", cycles="4f", update=self.update_nz),
            0xbd: self.OpcodeDataAbs(           "LDA addr,X", "OU-", cycles="4f", update=self.update_nz),
            0xbe: self.OpcodeDataAbs(           "LDX addr,Y", "-OU", cycles="4f", update=self.update_nz),
            0xc0: self.OpcodeImmediate(         "CPY #imm",   "--U", cycles="2",  update=self.update_nzc),
            0xc1: self.OpcodeZp(                "CMP (zp,X)", "UU-", cycles="6",  update=self.update_nzc),
            0xc4: self.OpcodeZp(                "CPY zp",     "--U", cycles="3",  update=self.update_nzc),
            0xc5: self.OpcodeZp(                "CMP zp",     "U--", cycles="3",  update=self.update_nzc),
            0xc6: self.OpcodeZp(                "DEC zp",     "---", cycles="5",  update=self.update_nz),
            0xc8: self.OpcodeImplied(           "INY",        "--A", cycles="2",  update=self.make_increment('y')),
            0xc9: self.OpcodeImmediate(         "CMP #imm",   "U--", cycles="2",  update=self.update_nzc),
            0xca: self.OpcodeImplied(           "DEX",        "-A-", cycles="2",  update=self.make_decrement('x')),
            0xcc: self.OpcodeDataAbs(           "CPY addr",   "--U", cycles="4",  update=self.update_nzc),
            0xcd: self.OpcodeDataAbs(           "CMP addr",   "U--", cycles="4",  update=self.update_nzc),
            0xce: self.OpcodeDataAbs(           "DEC addr",   "---", cycles="6",  update=self.update_nz),
            0xd0: self.OpcodeConditionalBranch( "BNE offset", "---", cycles="2a"),
            0xd1: self.OpcodeZp(                "CMP (zp),Y", "U-U", cycles="5b", update=self.update_nzc),
            0xd5: self.OpcodeZp(                "CMP zp,X",   "UU-", cycles="4",  update=self.update_nzc),
            0xd6: self.OpcodeZp(                "DEC zp,X",   "-U-", cycles="6",  update=self.update_nz),
            0xd8: self.OpcodeImplied(           "CLD",        "---", cycles="2",  update=self.make_update_flag('d', False)),
            0xd9: self.OpcodeDataAbs(           "CMP addr,Y", "--U", cycles="4f", has_zp_version=False, update=self.update_nzc),
            0xdd: self.OpcodeDataAbs(           "CMP addr,X", "-U-", cycles="4f", update=self.update_nzc),
            0xde: self.OpcodeDataAbs(           "DEC addr,X", "-U-", cycles="7",  update=self.update_nz),
            0xe0: self.OpcodeImmediate(         "CPX #imm",   "-U-", cycles="2",  update=self.update_nzc),
            0xe1: self.OpcodeZp(                "SBC (zp,X)", "AU-", cycles="6",  update=self.update_adc_sbc),
            0xe4: self.OpcodeZp(                "CPX zp",     "-U-", cycles="3",  update=self.update_nzc),
            0xe5: self.OpcodeZp(                "SBC zp",     "A--", cycles="3",  update=self.update_adc_sbc),
            0xe6: self.OpcodeZp(                "INC zp",     "---", cycles="5",  update=self.update_nz),
            0xe8: self.OpcodeImplied(           "INX",        "-A-", cycles="2",  update=self.make_increment('x')),
            0xe9: self.OpcodeImmediate(         "SBC #imm",   "A--", cycles="2",  update=self.update_adc_sbc),
            0xea: self.OpcodeImplied(           "NOP",        "---", cycles="2",  update=self.neutral),
            0xec: self.OpcodeDataAbs(           "CPX addr",   "-U-", cycles="4",  update=self.update_nzc),
            0xed: self.OpcodeDataAbs(           "SBC addr",   "A--", cycles="4",  update=self.update_adc_sbc),
            0xee: self.OpcodeDataAbs(           "INC addr",   "---", cycles="6",  update=self.update_nz),
            0xf0: self.OpcodeConditionalBranch( "BEQ offset", "---", cycles="2a"),
            0xf1: self.OpcodeZp(                "SBC (zp),Y", "A-U", cycles="5b", update=self.update_adc_sbc),
            0xf5: self.OpcodeZp(                "SBC zp,X",   "AU-", cycles="4",  update=self.update_adc_sbc),
            0xf6: self.OpcodeZp(                "INC zp,X",   "---", cycles="6",  update=self.update_nz),
            0xf8: self.OpcodeImplied(           "SED",        "---", cycles="2",  update=self.make_update_flag('d', True)),
            0xf9: self.OpcodeDataAbs(           "SBC addr,Y", "A-U", cycles="4f", has_zp_version=False, update=self.update_adc_sbc),
            0xfd: self.OpcodeDataAbs(           "SBC addr,X", "AU-", cycles="4f", update=self.update_adc_sbc),
            0xfe: self.OpcodeDataAbs(           "INC addr,X", "-U-", cycles="7",  update=self.update_nz),
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
        with movemanager.move_id_for_binary_addr[context]:
            #if context in (0x8fda, 0x2fda):
            #    print("XAL", hex(target), movemanager.r2b(target))
            return self.apply_move(target)


    def hook_subroutine(self, runtime_addr, name, hook, warn=True):
        runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
        binary_addr, move_id = movemanager.r2b_checked(runtime_addr)
        memorymanager.check_data_loaded_at_binary_addr(binary_addr, 1, warn)
        self.add_entry(binary_addr, name, move_id)
        self.subroutine_hooks[runtime_addr] = hook

    class Opcode(object):
        def __init__(self, instruction_template, reg_change, update=None, cycles="???"):

            self.instruction_template = instruction_template

            mnemonic, operand, operand_length, prefix, suffix, addr_mode = parse_instruction_template(instruction_template)

            self.mnemonic       = mnemonic
            self.operand        = operand
            self.operand_length = operand_length
            self.addr_mode      = addr_mode
            self.prefix         = prefix
            self.suffix         = suffix

            self.reg_changes    = {
                'a': reg_change[0],
                'x': reg_change[1],
                'y': reg_change[2]
            }

            self.update         = update
            self.indent_level   = 0
            self.cycles         = cycles


        def length(self):
            return 1 + self.operand_length

        def is_code(self, addr):
            return True

        def indent(self, addr):
            trace.cpu.indent_level_dict[addr] += 1

        def regular_update(self, addr):
            """
            Update state based on reg_changes.

            Each opcode is categorised in reg_changes['a'] by how it affects A:

            (-) Does not touch A                  (e.g. CLC, PHP, LDX)
            (U) Uses A, but doesn't change it     (e.g. CMP, STA, PHA)
            (A) Adjusts A, via arithmetic/bitwise (e.g. ASL, ADC, AND)
            (O) Overwrites A completely.          (e.g. LDA, PLA)

            ...and similarly for the X and Y registers.
            """
            for reg in ('a','x','y'):
                c = self.reg_changes[reg]
                if c == 'O':
                    self.previous_load      = addr      # The address of the previous load (immediate or otherwise) instruction if no adjustments made since
                    self.previous_adjust    = addr      # The address of the previous load or adjust instruction if present
                if c == 'A':
                    self.previous_load_imm  = None      # The address of the previous load immediate instruction if no adjustments made since
                    self.previous_load      = None      # The address of the previous load (immediate or otherwise) instruction if no adjustments made since
                    self.previous_adjust    = addr      # The address of the previous load or adjust instruction if present
                if c == 'U':
                    self.previous_use       = addr      # The address of the previous use of the register if present

        def update_cpu_state(self, addr, state):
            if self.update is not None:
                self.regular_update(addr)
                self.update(addr, state)
            else:
                state.clear()

        def is_block_end(self):
            return False

        def target(self, addr):
            return None

        def cycles_description(self, binary_addr):
            # Letter suffix on self.cycles explains cycle adjustments:
            #
            # a: +1 if branch occurs to same page, +2 if branch occurs to different page
            # b: +1 if page boundary crossed (zero page, post indirect addressing)
            # f: +1 if page boundary crossed (absolute address)

            # These three are 65c02 only:
            # c: +1 cycle if in decimal mode, +1 more cycle if indexing across a page boundary
            # d: +1 if branch target is to a different page
            # e: +1 cycle if in decimal mode

            letter = self.cycles[-1]
            if letter == "a":
                # A branch instruction
                result = int(self.cycles[:-1])

                # Check the target address to see if it is in the same page
                target = self.target(binary_addr)
                same_page = (target // 256) == (binary_addr // 256)

                if same_page:
                    return str(result) + "/" + str(result+1)
                return str(result) + "/" + str(result+2)

            if letter == "b":
                # zero page post indexed addressing
                result = int(self.cycles[:-1])
                return str(result) + "/" + str(result+1)

            if letter == "f":
                # absolute address indexed by X or Y
                # we only know the exact cycle count if it on a page boundary
                # since then we know it can't cross a page boundary.
                result = int(self.cycles[:-1])

                # Check the target address to see if it is on a page boundary
                target = self.target(binary_addr)
                if (target & 255) == 0:
                    return str(result)
                return str(result) + "/" + str(result+1)

            if letter == "c":
                result = int(self.cycles[:-1])
                result = str(result) + "/" + str(result+1) + "/" + str(result+2)
            if letter == "d":
                result = int(self.cycles[:-1])

                # Check the target address to see if it is in the same page
                target = self.target(binary_addr)
                same_page = (target // 256) == (binary_addr // 256)

                if same_page:
                    return str(result)
                return str(result+1)

            if letter == "e":
                result = int(self.cycles[:-1])
                return str(result) + "/" + str(result+1)

            result = self.cycles
            return result

        def could_be_call_to_subroutine(self):
            return False

        def as_string_list(self, addr, annotations):
            lazy_string = utils.LazyString(utils.make_indent(trace.cpu.indent_level_dict.get(addr, 0)) + "%s", self.as_string(addr))
            result = [mainformatter.add_inline_comment(addr, self.length(), self.cycles_description(addr), annotations, lazy_string)]
            if self.is_block_end() and config.get_blank_line_at_block_end():
                result.append("")
            return result


    class OpcodeReturn(Opcode):
        def __init__(self, instruction_template, reg_change, cycles="???"):
            super(Cpu6502.OpcodeReturn, self).__init__(instruction_template, reg_change, cycles=cycles)

        def update_references(self, addr):
            pass

        def disassemble(self, binary_addr):
            return [None]

        def is_block_end(self):
            return True

        def as_string(self, addr):
            return "%s%s" % (utils.make_indent(1), utils.force_case(self.mnemonic))


    class OpcodeImplied(Opcode):
        def __init__(self, instruction_template, reg_change, cycles="???", update=None):
            super(Cpu6502.OpcodeImplied, self).__init__(instruction_template, reg_change, cycles=cycles, update=update)

        def update_references(self, addr):
            pass

        def disassemble(self, binary_addr):
            return [binary_addr + 1]

        def as_string(self, addr):
            mnemonic = self.mnemonic
            if config.get_assembler().explicit_a and (self.addr_mode == Cpu6502.mode_accumulator):
                mnemonic += " A"
            return "%s%s" % (utils.make_indent(1), utils.force_case(mnemonic))


    class OpcodeImmediate(Opcode):
        def __init__(self, instruction_template, reg_change, cycles="???", update=None):
            super(Cpu6502.OpcodeImmediate, self).__init__(instruction_template, reg_change, cycles=cycles, update=update)

        def update_references(self, addr):
            pass

        def disassemble(self, binary_addr):
            return [binary_addr + 2]

        def as_string(self, addr):
            s = "%s%s #%s" % (utils.make_indent(1), utils.force_case(self.mnemonic), classification.get_constant8(addr + 1))
            if (addr + 1) not in classification.expressions and disassembly.format_hint.get(addr + 1) is None:
                c = trace.cpu.memory_binary[addr + 1]
                if config.get_show_char_literals() and utils.isprint(c):
                    s += " %s '%s'" % (config.get_assembler().comment_prefix(), chr(c))
            return s


    class OpcodeZp(Opcode):
        def __init__(self, instruction_template, reg_change, cycles="???", update=None):
            super(Cpu6502.OpcodeZp, self).__init__(instruction_template, reg_change, update=update, cycles=cycles)

        def abs_operand(self, addr):
            return trace.cpu.memory_binary[addr + 1]

        def target(self, addr):
            return memorymanager.RuntimeAddr(self.abs_operand(addr))

        def update_references(self, addr):
            trace.cpu.labels[self.abs_operand(addr)].add_reference(addr)

        def disassemble(self, binary_addr):
            return [binary_addr + 2]

        def as_string(self, addr):
            return utils.LazyString("%s%s %s%s%s", utils.make_indent(1), utils.force_case(self.mnemonic), self.prefix, classification.get_address8(addr + 1), utils.force_case(self.suffix))


    class OpcodeAbs(Opcode):
        def __init__(self, instruction_template, reg_change, has_zp_version=True, cycles="???", update=None):
            super(Cpu6502.OpcodeAbs, self).__init__(instruction_template, reg_change, cycles=cycles, update=update)
            self._has_zp_version = has_zp_version

        def abs_operand(self, addr):
            return memorymanager.get_u16_binary(addr + 1)

        def target(self, addr):
            return memorymanager.RuntimeAddr(self.abs_operand(addr))

        def has_zp_version(self):
            return self._has_zp_version

        def as_string(self, addr):
            # We need to avoid misassembly of absolute instructions with zero-page
            # operands. These are relatively rare in real code, but apart from the
            # fact we should still handle them even if they're rare, they can also
            # happen when the disassembly is imperfect and data is interpreted as
            # code. If we don't cope with them, bytes get lost and the disassembly
            # can't be correctly reassembled into a binary matching the input.
            # TODO: If we could evaluate expressions, *and* (unlikely) we don't
            # fail at disassembly time when we spot the mismatch, we should force
            # absolute addressing if the expression is a zero page value and the
            # value in the input is not.
            result1 = utils.force_case(self.mnemonic)
            result2 = utils.LazyString("%s%s%s", self.prefix, classification.get_address16(addr + 1), utils.force_case(self.suffix))
            if not self.has_zp_version() or memorymanager.get_u16_binary(addr + 1) >= 0x100:
                return utils.LazyString("%s%s %s", utils.make_indent(1), result1, result2)

            # This is an absolute instruction with a zero-page operand which could
            # be misassembled. If the assembler has a way to explicitly request
            # absolute addressing, we use that.
            force_abs_instruction = config.get_assembler().force_abs_instruction(result1, self.prefix, classification.get_address16(addr + 1), utils.force_case(self.suffix))
            if force_abs_instruction is not None:
                return force_abs_instruction

            # This assembler has no way to force absolute addressing, so emit the
            # instruction as data with a comment showing what it is; the comment
            # includes an acme-style "+2" suffix to help indicate what's going on.
            operand = classification.get_address16(addr + 1)
            return utils.LazyString("%s%s%s, <(%s), >(%s) ; %s+2 %s", utils.make_indent(1), config.get_assembler().byte_prefix(), classification.get_constant8(addr), operand, operand, result1, result2)


    class OpcodeDataAbs(OpcodeAbs):
        def __init__(self, instruction_template, reg_change, has_zp_version=True, cycles="???", update=None):
            super(Cpu6502.OpcodeDataAbs, self).__init__(instruction_template, reg_change, has_zp_version, cycles=cycles, update=update)

        def update_references(self, addr):
            trace.cpu.labels[self.abs_operand(addr)].add_reference(addr)

        def disassemble(self, binary_addr):
            return [binary_addr + 3]


    class OpcodeJmpAbs(OpcodeAbs):
        def __init__(self, instruction_template, reg_change, cycles="???"):
            super(Cpu6502.OpcodeJmpAbs, self).__init__(instruction_template, reg_change, has_zp_version=False, cycles=cycles)

        # TODO: Might want to rename this function to reflect the fact it creates labels as well/instead as updating trace.references
        def update_references(self, addr):
            trace.cpu.labels[self.target(addr)].add_reference(addr)
            #trace.references[self.target(addr)].add(addr)

        def is_block_end(self):
            return True

        def could_be_call_to_subroutine(self):
            return True

        def disassemble(self, binary_addr):
            #print("PCC %s" % apply_move(self.target(binary_addr)))
            # TODO: Should the apply_move() call be inside target and/or abs_operand? Still feeling my way here...
            return [None] + trace.cpu.apply_move2(self.target(binary_addr), binary_addr)
            #return [None] + trace.cpu.apply_move(self.target(binary_addr))


    class OpcodeJmpInd(OpcodeAbs):
        def __init__(self, instruction_template, reg_change, cycles="???"):
            super(Cpu6502.OpcodeJmpInd, self).__init__(instruction_template, reg_change, has_zp_version=False, cycles=cycles)

        def update_references(self, addr):
            trace.cpu.labels[memorymanager.get_u16_binary(addr + 1)].add_reference(addr)

        def is_block_end(self):
            return True

        def disassemble(self, binary_addr):
            return [None]


    class OpcodeJsr(OpcodeAbs):
        def __init__(self, instruction_template, reg_change, cycles="???"):
            super(Cpu6502.OpcodeJsr, self).__init__(instruction_template, reg_change, has_zp_version=False, cycles=cycles)

        def update_references(self, addr):
            trace.cpu.labels[self.target(addr)].add_reference(addr)
            #trace.references[self.target(addr)].add(addr)

        def could_be_call_to_subroutine(self):
            return True

        def disassemble(self, binary_addr):
            assert isinstance(binary_addr, memorymanager.BinaryAddr)
            # A hook only gets to return the "straight line" address to continue
            # tracing from (if there is one; it can return None if it wishes). Some
            # subroutines (e.g. jsr is_yx_zero:equw target_if_true, target_if_false)
            # might have no "straight line" case and want to return some labelled
            # entry points. This is supported by having the hook simply return None
            # and call entry() itself for the labelled entry points.
            # TODO: Do we need to apply_move() here or in target() or in abs_operand() or before/after subroutine_hooks.get()?
            target_runtime_addr = self.target(binary_addr)
            def simple_subroutine_hook(target_runtime_addr, caller_runtime_addr):
                assert isinstance(target_runtime_addr, memorymanager.RuntimeAddr)
                assert isinstance(caller_runtime_addr, memorymanager.RuntimeAddr)
                # TODO: It might be possible the following assertion fails if the moves
                # in effect are sufficiently tricky, but I'll leave it for now as it
                # may catch bugs - once the code is more trusted it can be removed
                # if it's technically incorrect.
                assert movemanager.r2b_checked(caller_runtime_addr)[0] == binary_addr
                return caller_runtime_addr + 3
            subroutine_hook = trace.cpu.subroutine_hooks.get(target_runtime_addr, simple_subroutine_hook)
            caller_runtime_addr = movemanager.b2r(binary_addr)
            with movemanager.move_id_for_binary_addr[binary_addr]:
                return_runtime_addr = subroutine_hook(target_runtime_addr, caller_runtime_addr)
            if return_runtime_addr is not None:
                return_runtime_addr = memorymanager.RuntimeAddr(return_runtime_addr)
                result = trace.cpu.apply_move(return_runtime_addr)
                if len(result) == 0:
                    # The return runtime address could not be unambiguously converted into a binary
                    # address. It's highly likely the JSR is returning to the immediately following
                    # instruction, so if binary_addr+3 maps to the return runtime address, use that,
                    # otherwise give up and don't trace anything "after" the JSR.
                    simple_return_binary_addr = binary_addr + 3
                    if return_runtime_addr == movemanager.b2r(simple_return_binary_addr):
                        result = [simple_return_binary_addr]
                    else:
                        result = [None]
            else:
                result = [None]
            result += trace.cpu.apply_move(target_runtime_addr)
            return result


    class OpcodeConditionalBranch(Opcode):
        def __init__(self, instruction_template, reg_change, cycles="???"):
            super(Cpu6502.OpcodeConditionalBranch, self).__init__(instruction_template, reg_change, cycles=cycles)

        def target(self, binary_addr):
            base = movemanager.b2r(binary_addr)
            return base + 2 + utils.signed8(memorymanager.get_u8_binary(binary_addr + 1))

        def abs_operand(self, binary_addr):
            return self.target(binary_addr)

        def update_references(self, binary_addr):
            trace.cpu.labels[self.target(binary_addr)].add_reference(binary_addr)
            #trace.references[self.target(binary_addr)].add(binary_addr)

        def disassemble(self, binary_addr):
            # TODO: As elsewhere where exactly do we need to apply_move()? Perhaps we don't need it  here given it's relative, feeling my way..
            return [binary_addr + 2] + trace.cpu.apply_move2(self.target(binary_addr), binary_addr)

        def could_be_call_to_subroutine(self):
            return True

        def update_cpu_state(self, addr, state):
            # In our optimistic model (at least), a branch invalidates everything.
            # Consider "ldy #3:.label:dey:bne label" - in the optimistic model we ignore
            # labels and the only way we don't finish that sequence assuming y=2 is if
            # the branch invalidates.
            state.clear()

        def as_string(self, binary_addr):
            #print("XXX", hex(binary_addr), movemanager.move_id_for_binary_addr[binary_addr])
            return utils.LazyString("%s%s %s", utils.make_indent(1), utils.force_case(self.mnemonic), disassembly.get_label(self.target(binary_addr), binary_addr))


    class RegState(object):
        def __init__(self):
            self.clear()

        def clear(self):
            self.value              = None      # Current value, if known
            self.previous_load_imm  = None      # The address of the previous load immediate instruction if no adjustments made since
            self.previous_load      = None      # The address of the previous load (immediate or otherwise) instruction if no adjustments made since
            self.previous_adjust    = None      # The address of the previous load or adjust instruction if present
            self.previous_use       = None      # The address of the previous 'read only use of a register' instruction if present

    class CpuState(object):
        def __init__(self):
            self.clear()

        def clear(self):
            self._d = {
                # For A/X/Y, value is RegState.
                "a": Cpu6502.RegState(),
                "x": Cpu6502.RegState(),
                "y": Cpu6502.RegState(),
                # For flags, value is True/False if known.
                "n": None,
                "v": None,
                "d": None,
                "i": None,
                "z": None,
                "c": None,
            }

        def __getitem__(self, key):
            assert key in "axynvdizc"
            return self._d[key]

        def __setitem__(self, key, item):
            assert key in "axynvdizc"
            if key in "axy":
                if item is None:
                    item = Cpu6502.RegState()
                assert isinstance(item, Cpu6502.RegState)
            else:
                assert item is None or utils.is_integer_type(item)
            self._d[key] = item

        def show(self):
            s = ""
            def reg(r):
                v = self[r].value
                if v is None:
                    return "--"
                return utils.plainhex2(v)
            s += "A:%s X:%s Y:%s" % (reg('a'), reg('x'), reg('y'))

            def flag(name):
                b = self[name]
                if b is None:
                    return "-"
                return name.upper() if b else name.lower()
            s += " %s%s%s%s%s%s" % (flag('n'), flag('v'), flag('d'), flag('i'), flag('z'), flag('c'))
            return s

        def get_previous_load_imm(self, reg):
            v = self[reg].previous_load_imm
            if not v:
                return None
            return memorymanager.BinaryAddr(v + 1)

        def get_previous_load(self, reg):
            v = self[reg].previous_load
            if not v:
                return None
            return memorymanager.BinaryAddr(v)

        def get_previous_adjust(self, reg):
            v = self[reg].previous_adjust
            if not v:
                return None
            return memorymanager.BinaryAddr(v)

        def get_previous_use(self, reg):
            v = self[reg].previous_use
            if not v:
                return None
            return memorymanager.BinaryAddr(v)


    def make_update_flag(self, flag, b):
        def update_flag(addr, state):
            state[flag] = b
        return update_flag

    # TODO: make_decrement() and make_increment() are probably not that useful -
    # it's all very well knowing the value of a register, but without an address to
    # use with expr() it doesn't help that much. If they *are* useful, we should
    # probably make adc # and sbc # update the value where possible.
    #
    # Also, when they are a loop counter being decremented, we can't keep track of
    # the value each time around the loop, so the value is not not helpful.
    def make_decrement(self, reg):
        def decrement(addr, state):
            v = state[reg].value
            if v is not None:
                v -= 1
                if v == -1:
                    v = 0xff
                state[reg].value = v
                state[reg].previous_load_imm = None
                state[reg].previous_load     = None
                state[reg].previous_adjust   = addr

                state['n'] = ((v & 0x80) == 0x80)
                state['z'] = (v == 0)
        return decrement

    def make_increment(self, reg):
        def increment(addr, state):
            v = state[reg].value
            if v is not None:
                v += 1
                if v == 0x100:
                    v = 0
                state[reg].value = v
                state[reg].previous_load_imm = None
                state[reg].previous_load     = None
                state[reg].previous_adjust   = addr

                state['n'] = ((v & 0x80) == 0x80)
                state['z'] = (v == 0)
        return increment

    def make_load_immediate(self, reg):
        def load_immediate(addr, state):
            v = trace.cpu.memory_binary[addr+1]
            state[reg].value = v
            state[reg].previous_load_imm = addr
            state[reg].previous_load     = addr
            state[reg].previous_adjust   = addr

            state['n'] = ((v & 0x80) == 0x80)
            state['z'] = (v == 0)
        return load_immediate

    def make_transfer(self, src_reg, dest_reg):
        def transfer(addr, state):
            state[dest_reg].value = state[src_reg].value

            # If we have a load immediate address, keep it. This allows
            # the code (from basic4) to understand X and Y form an
            # address <const> here:
            #
            #    lda #<const>
            #    tay
            #    ldx #<const>
            #    jsr OSWORD
            #
            state[dest_reg].previous_load_imm = state[src_reg].previous_load_imm

            v = state[dest_reg].value
            if v is not None:
                state['n'] = ((v & 0x80) == 0x80)
                state['z'] = (v == 0)
        return transfer

    def neutral(self, addr, state):
        pass

    def update_nz(self, addr, state):
        state['n'] = None
        state['z'] = None

    def update_nzc(self, addr, state):
        state['n'] = None
        state['z'] = None
        state['c'] = None

    def update_bit(self, addr, state):
        state['n'] = None
        state['v'] = None
        state['z'] = None

    def update_adc_sbc(self, addr, state):
        state['n'] = None
        state['v'] = None
        state['z'] = None
        state['c'] = None

    def update_all_flags(self, addr, state):
        state['n'] = None
        state['v'] = None
        state['d'] = None
        state['i'] = None
        state['z'] = None
        state['c'] = None

    def is_subroutine_call(self, addr):
        c = disassembly.classifications[addr]
        return isinstance(c, trace.cpu.Opcode) and c.mnemonic == "JSR"

    def is_branch_to(self, addr, target):
        c = disassembly.classifications[addr]

        # TODO: hacky use of isinstance()
        if isinstance(c, self.OpcodeConditionalBranch):
            return c.target(addr) == target
        if isinstance(c, self.OpcodeJmpAbs):
            return memorymanager.get_u16_binary(addr + 1) == target
        return False

    # Note that this does *not* check for labels breaking up a
    # sequence. We're not optimising code here, we are making an
    # inference from a series of straight line instructions - the fact
    # that the sequence might *also* be entered part-way through via a
    # label doesn't invalidate that inference.
    def subroutine_argument_finder(self):
        if len(trace.subroutine_argument_finder_hooks) == 0:
            return

        addr = 0
        state = None
        while addr < 0x10000:
            c = disassembly.classifications[addr]
            if c is not None:
                if state == None:
                    state = trace.cpu.CpuState()

                if isinstance(c, trace.cpu.Opcode):
                    opcode = trace.cpu.memory_binary[addr]
                    opcode_jsr = 0x20
                    opcode_jmp = 0x4c
                    if opcode in (opcode_jsr, opcode_jmp):
                        target = memorymanager.get_u16_binary(addr + 1)
                        for hook in trace.subroutine_argument_finder_hooks:
                            if hook(memorymanager.RuntimeAddr(target),
                                state.get_previous_load_imm('a'),
                                state.get_previous_load_imm('x'),
                                state.get_previous_load_imm('y')) is not None:
                                break
                state = trace.cpu.cpu_state_optimistic[addr]
                addr += c.length()
            else:
                addr += 1

    def find_subroutine_calls(self):
        """Finds calls to subroutines, and calls its hook function.

        Subroutines will have been registered previously with calls
        to the subroutine() command.

        The hook function receives the address, CPU state, and
        subroutine data and most likely uses it to label and/or comment
        the calling code.
        """

        addr = 0
        state = None

        while addr < 0x10000:
            c = disassembly.classifications[addr]
            if c is not None:
                if state == None:
                    state = trace.cpu.CpuState()

                if isinstance(c, trace.cpu.Opcode):
                    could_be_call_to_subroutine = c.could_be_call_to_subroutine()
                    target = c.target(memorymanager.BinaryAddr(addr))

                    # check each subroutine
                    for subroutine in trace.subroutines_list:
                        found = False

                        # convert to binary address
                        binary_addr, _ = movemanager.r2b(subroutine.runtime_addr)
                        if addr == binary_addr:
                            # We are at the subroutine address itself.
                            # We might have fallen through from above
                            # and so we count this as a match.
                            found = True
                        elif could_be_call_to_subroutine and (target == subroutine.runtime_addr):
                            # If our instruction is a call to the
                            # address of the subroutine, then we have
                            # found a match.
                            found = True

                        if found:
                            subroutine.hook_function(addr, state, subroutine)

                state = trace.cpu.cpu_state_optimistic[addr]
                addr += c.length()
            else:
                addr += 1

    def substitute_constants(self):
        if len(trace.substitute_constant_list) == 0:
            return

        addr = 0
        state = None

        while addr < 0x10000:
            c = disassembly.classifications[addr]
            if c is not None:
                if state == None:
                    state = trace.cpu.CpuState()

                if isinstance(c, trace.cpu.Opcode):
                    opcode = trace.cpu.memory_binary[addr]
                    # for each const_sub
                    for const_sub in trace.substitute_constant_list:
                        # check we have the right opcode
                        if opcode == const_sub.get_opcode(self.opcodes):
                            # make sure we know the current value of the appropriate register
                            reg_value = state[const_sub.reg].value
                            if reg_value != None:
                                # check that we know where the register was set
                                where_reg_set = state.get_previous_load_imm(const_sub.reg)
                                if where_reg_set != None:
                                    # if we have an operand, make sure it matches too
                                    if not const_sub.operand or (const_sub.get_operand_value() == c.target(addr)):
                                        # check the const_sub dictionary has the current value as a key
                                        if reg_value in const_sub.constants_dict:
                                            # set the constant or expression at this address
                                            const_or_expression = const_sub.constants_dict[reg_value]
                                            classification.add_expression(where_reg_set, const_or_expression)

                                            # define the constant, if desired
                                            if const_sub.define_constant:
                                                # is this a constant?
                                                if disassembly.is_simple_name(const_or_expression):
                                                    # define the constant
                                                    disassembly.add_constant(reg_value, const_or_expression)

                state = trace.cpu.cpu_state_optimistic[addr]
                addr += c.length()
            else:
                addr += 1
