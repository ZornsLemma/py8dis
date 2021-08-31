from a import * # TODO?


class Opcode(object):
    def __init__(self, mnemonic, operand_length, suffix = None):
        self.mnemonic = mnemonic
        self.suffix = suffix if suffix is not None else ""
        self.prefix = "(" if ")" in self.suffix else ""
        self.operand_length = operand_length

    def is_variable_length(self):
        return False

    def length(self):
        return 1 + self.operand_length


class OpcodeImplied(Opcode):
    def __init__(self, mnemonic):
        super(OpcodeImplied, self).__init__(mnemonic, 0)
        self.mnemonic = mnemonic
        self.operand_length = 0

    def disassemble(self, addr):
        return [addr + 1]

    def emit(self, addr):
        print("    %s" % self.mnemonic)


class OpcodeImmediate(Opcode):
    def __init__(self, mnemonic):
        super(OpcodeImmediate, self).__init__(mnemonic, 1)

    def disassemble(self, addr):
        return [addr + 2]

    def emit(self, addr):
        print("    %s #%s" % (self.mnemonic, get_constant8(addr + 1)))


class OpcodeZp(Opcode):
    def __init__(self, mnemonic, suffix = None):
        super(OpcodeZp, self).__init__(mnemonic, 1, suffix)

    def disassemble(self, addr):
        disassembly.ensure_addr_labelled(get_u8(addr + 1))
        return [addr + 2]

    def emit(self, addr):
        print("    %s %s%s%s" % (self.mnemonic, self.prefix, get_address8(addr + 1), self.suffix))


class OpcodeAbs(Opcode):
    def __init__(self, mnemonic, suffix = None):
        super(OpcodeAbs, self).__init__(mnemonic, 2, suffix)

    def emit(self, addr):
        print("    %s %s%s%s" % (self.mnemonic, self.prefix, get_address16(addr + 1), self.suffix))


class OpcodeDataAbs(OpcodeAbs):
    def __init__(self, mnemonic, suffix = None):
        super(OpcodeDataAbs, self).__init__(mnemonic, suffix)

    def disassemble(self, addr):
        # TODO: Should we *always* do this in disassemble() instead of special-casing non-consecutive instructions? ie call add_default_label in control flow affecting instructions
        disassembly.ensure_addr_labelled(get_abs(addr + 1))
        return [addr + 3]


class OpcodeJmpAbs(OpcodeAbs):
    def __init__(self):
        super(OpcodeJmpAbs, self).__init__("JMP")

    def disassemble(self, addr):
        return [None, get_abs(addr + 1)]


class OpcodeJmpInd(OpcodeAbs):
    def __init__(self):
        super(OpcodeJmpInd, self).__init__("JMP", ")")

    def disassemble(self, addr):
        disassembly.ensure_addr_labelled(get_abs(addr + 1))
        return [None]


class OpcodeJsr(OpcodeAbs):
    def __init__(self):
        super(OpcodeJsr, self).__init__("JSR")

    def disassemble(self, addr):
        target = get_abs(addr + 1)
        return_addr = jsr_hooks.get(target, lambda target, addr: addr + 3)(target, addr)
        return [return_addr, get_abs(addr + 1)]


class OpcodeReturn(Opcode):
    def __init__(self, mnemonic):
        super(OpcodeReturn, self).__init__(mnemonic, 0)

    def disassemble(self, addr):
        return [None]

    def emit(self, addr):
        print("    %s" % self.mnemonic)


class OpcodeConditionalBranch(Opcode):
    def __init__(self, mnemonic):
        super(OpcodeConditionalBranch, self).__init__(mnemonic, 1)

    def _target(self, addr):
        return addr + 2 + signed8(get_u8(addr + 1))

    def disassemble(self, addr):
        return [addr + 2, self._target(addr)]

    def emit(self, addr):
        print("    %s %s" % (self.mnemonic, disassembly.get_label(self._target(addr))))


# TODO: May want to allow 6502 or 65C02 opcode set to be selectable
# TODO: Fill in gaps!
# TODO: Some redundancy between operand length and the target parsing fn?! I should maybe have eg ConditionalBranchOpcode() class and ImpliedOpcode() classes to simplify this table
# TODO: We need a hook for calling user fns when we disassemble a JSR, to handle things like inline prints
opcodes = {
    0x06: OpcodeZp("ASL"),
    0x08: OpcodeImplied("PHP"),
    0x09: OpcodeImmediate("ORA"),
    0x0a: OpcodeImplied("ASL A"),
    0x0d: OpcodeDataAbs("ORA"),
    0x0e: OpcodeDataAbs("ASL"),
    0x10: OpcodeConditionalBranch("BPL"),
    0x11: OpcodeZp("ORA", "),Y"),
    0x18: OpcodeImplied("CLC"),
    0x1d: OpcodeDataAbs("ORA", ",X"),
    0x20: OpcodeJsr(),
    0x24: OpcodeZp("BIT"),
    0x25: OpcodeZp("AND"),
    0x28: OpcodeImplied("PLP"),
    0x29: OpcodeImmediate("AND"),
    0x2a: OpcodeImplied("ROL A"),
    0x2c: OpcodeDataAbs("BIT"),
    0x2d: OpcodeDataAbs("AND"),
    0x2e: OpcodeDataAbs("ROL"),
    0x30: OpcodeConditionalBranch("BMI"),
    0x38: OpcodeImplied("SEC"),
    0x3d: OpcodeDataAbs("AND", ",X"),
    0x3e: OpcodeDataAbs("ROL", ",X"),
    0x40: OpcodeReturn("RTI"),
    0x45: OpcodeZp("EOR"),
    0x46: OpcodeZp("LSR"),
    0x48: OpcodeImplied("PHA"),
    0x49: OpcodeImmediate("EOR"),
    0x4a: OpcodeImplied("LSR A"),
    0x4c: OpcodeJmpAbs(),
    0x4d: OpcodeDataAbs("EOR"),
    0x50: OpcodeConditionalBranch("BVC"),
    0x51: OpcodeZp("EOR", "),Y"),
    0x55: OpcodeZp("EOR", ",X"),
    0x58: OpcodeImplied("CLI"),
    0x59: OpcodeDataAbs("EOR", ",Y"),
    0x60: OpcodeReturn("RTS"),
    0x65: OpcodeZp("ADC"),
    0x66: OpcodeZp("ROR"),
    0x68: OpcodeImplied("PLA"),
    0x69: OpcodeImmediate("ADC"),
    0x6a: OpcodeImplied("ROR A"),
    0x6c: OpcodeJmpInd(),
    0x6d: OpcodeDataAbs("ADC"),
    0x6e: OpcodeDataAbs("ROR"),
    0x70: OpcodeConditionalBranch("BVS"),
    0x71: OpcodeZp("ADC", "),Y"),
    0x78: OpcodeImplied("SEI"),
    0x79: OpcodeDataAbs("ADC", ",Y"),
    0x7d: OpcodeDataAbs("ADC", ",X"),
    0x7e: OpcodeDataAbs("ROR", ",X"),
    0x81: OpcodeZp("STA", ",X)"),
    0x84: OpcodeZp("STY"),
    0x85: OpcodeZp("STA"),
    0x86: OpcodeZp("STX"),
    0x88: OpcodeImplied("DEY"),
    0x8a: OpcodeImplied("TXA"),
    0x8c: OpcodeDataAbs("STY"),
    0x8d: OpcodeDataAbs("STA"),
    0x8e: OpcodeDataAbs("STX"),
    0x90: OpcodeConditionalBranch("BCC"),
    0x91: OpcodeZp("STA", "),Y"),
    0x95: OpcodeZp("STA", ",X"),
    0x98: OpcodeImplied("TYA"),
    0x99: OpcodeDataAbs("STA", ",Y"),
    0x9d: OpcodeDataAbs("STA", ",X"),
    0xa0: OpcodeImmediate("LDY"),
    0xa1: OpcodeZp("LDA", ",X)"),
    0xa2: OpcodeImmediate("LDX"),
    0xa4: OpcodeZp("LDY"),
    0xa5: OpcodeZp("LDA"),
    0xa6: OpcodeZp("LDX"),
    0xa9: OpcodeImmediate("LDA"),
    0xa8: OpcodeImplied("TAY"),
    0xaa: OpcodeImplied("TAX"),
    0xac: OpcodeDataAbs("LDY"),
    0xad: OpcodeDataAbs("LDA"),
    0xae: OpcodeDataAbs("LDX"),
    0xb0: OpcodeConditionalBranch("BCS"),
    0xb1: OpcodeZp("LDA", "),Y"),
    0xb5: OpcodeZp("LDA", ",X"),
    0xb8: OpcodeImplied("CLV"),
    0xb9: OpcodeDataAbs("LDA", ",Y"),
    0xba: OpcodeImplied("TSX"),
    0xbc: OpcodeDataAbs("LDY", ",X"),
    0xbd: OpcodeDataAbs("LDA", ",X"),
    0xbe: OpcodeDataAbs("LDX", ",Y"),
    0xc0: OpcodeImmediate("CPY"),
    0xc4: OpcodeZp("CPY"),
    0xc5: OpcodeZp("CMP"),
    0xc6: OpcodeZp("DEC"),
    0xc8: OpcodeImplied("INY"),
    0xc9: OpcodeImmediate("CMP"),
    0xca: OpcodeImplied("DEX"),
    0xcd: OpcodeDataAbs("CMP"),
    0xce: OpcodeDataAbs("DEC"),
    0xd1: OpcodeZp("CMP", "),Y"),
    0xd9: OpcodeDataAbs("CMP", ",Y"),
    0xdd: OpcodeDataAbs("CMP", ",X"),
    0xde: OpcodeDataAbs("DEC", ",X"),
    0xe0: OpcodeImmediate("CPX"),
    0xe4: OpcodeZp("CPX"),
    0xe5: OpcodeZp("SBC"),
    0xe6: OpcodeZp("INC"),
    0xe8: OpcodeImplied("INX"),
    0xe9: OpcodeImmediate("SBC"),
    0xea: OpcodeImplied("NOP"),
    0xec: OpcodeDataAbs("CPX"),
    0xed: OpcodeDataAbs("SBC"),
    0xee: OpcodeDataAbs("INC"),
    0xd0: OpcodeConditionalBranch("BNE"),
    0xf0: OpcodeConditionalBranch("BEQ"),
    0xf1: OpcodeZp("SBC", "),Y"),
    0xf9: OpcodeDataAbs("SBC", ",Y"),
    0xfe: OpcodeDataAbs("INC", ",X"),
}


def disassemble_instruction(addr):
    assert not disassembly.is_classified(addr, 1)
    opcode_value = memory[addr]
    print(hex(opcode_value))
    if opcode_value not in opcodes:
        return [None]
    opcode = opcodes[opcode_value]
    if disassembly.is_classified(addr, 1 + opcode.operand_length):
        # TODO: Warn?
        return [None]
    # Up to this point we hadn't decided addr contains an instruction; we now
    # have.
    # TODO: The "disassemble" function on opcodes is really more of a "possible targets" function - rename?
    disassembly.add_classification(addr, opcode)
    return opcode.disassemble(addr)

# TODO: Make start_addr/end_addr globals like entry_points? Trouble is that they have to be inited by the user, although to be fair our load() function (not yet implemented) could set them
def trace(start_addr, end_addr):
    while len(entry_points) > 0:
        entry_point = entry_points.pop(0)
        if not disassembly.is_classified(entry_point, 1) and start_addr <= entry_point < end_addr:
            print(hex(entry_point))
            new_entry_points = disassemble_instruction(entry_point)
            assert len(new_entry_points) >= 1
            implied_entry_point = new_entry_points.pop(0)
            if implied_entry_point is not None:
                entry_points.append(implied_entry_point)
            for new_entry_point in new_entry_points:
                disassembly.ensure_addr_labelled(new_entry_point)
                entry_points.append(new_entry_point)
