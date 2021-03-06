import config
import classification
import config
import disassembly
import trace
import utils

memory = config.memory
jsr_hooks = {}

def add_jsr_hook(addr, hook):
    assert addr not in jsr_hooks
    jsr_hooks[addr] = hook

def hook_subroutine(addr, name, hook):
    trace.add_entry(addr, name)
    add_jsr_hook(addr, hook)

def signed8(i):
    assert 0 <= i <= 255
    if i >= 0x80:
        return i - 256
    else:
        return i

def get_u8(i):
    assert memory[i] is not None
    return memory[i]


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

    def emit(self, addr):
        print(utils.add_hex_dump(self.as_string(addr), addr, self.length()))


class OpcodeImplied(Opcode):
    def __init__(self, mnemonic):
        super(OpcodeImplied, self).__init__(mnemonic, 0)
        self.mnemonic = mnemonic
        self.operand_length = 0

    def disassemble(self, addr):
        return [addr + 1]

    def as_string(self, addr):
        mnemonic = self.mnemonic
        if (not config.formatter().explicit_a) and mnemonic.endswith(" A"):
            mnemonic = mnemonic[:-2]
        return "    %s" % utils.force_case(mnemonic)


class OpcodeImmediate(Opcode):
    def __init__(self, mnemonic):
        super(OpcodeImmediate, self).__init__(mnemonic, 1)

    def disassemble(self, addr):
        return [addr + 2]

    def as_string(self, addr):
        s = "    %s #%s" % (utils.force_case(self.mnemonic), classification.get_constant8(addr + 1))
        c = memory[addr + 1]
        if utils.isprint(c):
            s += " %s '%s'" % (config.formatter().comment_prefix(), chr(c))
        return s


class OpcodeZp(Opcode):
    def __init__(self, mnemonic, suffix = None):
        super(OpcodeZp, self).__init__(mnemonic, 1, suffix)

    def disassemble(self, addr):
        disassembly.ensure_addr_labelled(get_u8(addr + 1))
        return [addr + 2]

    def as_string(self, addr):
        return "    %s %s%s%s" % (utils.force_case(self.mnemonic), self.prefix, classification.get_address8(addr + 1), utils.force_case(self.suffix))


class OpcodeAbs(Opcode):
    def __init__(self, mnemonic, suffix = None, has_zp_version = True):
        super(OpcodeAbs, self).__init__(mnemonic, 2, suffix)
        self._has_zp_version = has_zp_version

    def has_zp_version(self):
        return self._has_zp_version

    def as_string(self, addr):
        # We need to avoid misassembly of absolute instructions with zero-page
        # operands. These are relatively rare in real code, but apart from the
        # fact we should still handle them even if they're rare, they can also
        # happen when the disassembly is imperfect and data is interpreted as
        # code. If we don't cope with them, bytes get lost and the disassembly
        # can't be correctly reassembled into a binary matching the input.
        result1 = utils.force_case(self.mnemonic)
        result2 = "%s%s%s" % (self.prefix, classification.get_address16(addr + 1), utils.force_case(self.suffix))
        if not self.has_zp_version() or utils.get_u16(addr + 1) >= 0x100:
            return "    %s %s" % (result1, result2)

        # This is an absolute instruction with a zero-page operand which could
        # be misassembled. If the assembler has a way to explicitly request
        # absolute addressing, we use that.
        abs_suffix = config.formatter().abs_suffix()
        if abs_suffix != "":
            return "    %s%s %s" % (result1, abs_suffix, result2)

        # This assembler has no way to force absolute addressing, so emit the
        # instruction as data with a comment showing what it is; the comment
        # includes an acme-style "+2" suffix to help indicate what's going on.
        operand = classification.get_address16(addr + 1)
        data = [classification.get_constant8(addr), "<(%s)" % operand, ">(%s)" % operand]
        return "%s%s ; %s+2 %s" % (config.formatter().byte_prefix(), ", ".join(data), result1, result2)


class OpcodeDataAbs(OpcodeAbs):
    def __init__(self, mnemonic, suffix = None, has_zp_version = True):
        super(OpcodeDataAbs, self).__init__(mnemonic, suffix, has_zp_version)

    def disassemble(self, addr):
        disassembly.ensure_addr_labelled(utils.get_u16(addr + 1))
        return [addr + 3]


class OpcodeJmpAbs(OpcodeAbs):
    def __init__(self):
        super(OpcodeJmpAbs, self).__init__("JMP", has_zp_version=False)

    def disassemble(self, addr):
        return [None, utils.get_u16(addr + 1)]


class OpcodeJmpInd(OpcodeAbs):
    def __init__(self):
        super(OpcodeJmpInd, self).__init__("JMP", ")", has_zp_version=False)

    def disassemble(self, addr):
        disassembly.ensure_addr_labelled(utils.get_u16(addr + 1))
        return [None]


class OpcodeJsr(OpcodeAbs):
    def __init__(self):
        super(OpcodeJsr, self).__init__("JSR", has_zp_version=False)

    def disassemble(self, addr):
        target = utils.get_u16(addr + 1)
        # A hook only gets to return the "straight line" address to continue
        # tracing from (if there is one; it can return None if it wishes). Some
        # subroutines (e.g. jsr is_yx_zero:equw target_if_true, target_if_false)
        # might have no "straight line" case and want to return some labelled
        # entry points. This is supported by having the hook simply return None
        # and call entry() itself for the labelled entry points.
        return_addr = jsr_hooks.get(target, lambda target, addr: addr + 3)(target, addr)
        return [return_addr, utils.get_u16(addr + 1)]


class OpcodeReturn(Opcode):
    def __init__(self, mnemonic):
        super(OpcodeReturn, self).__init__(mnemonic, 0)

    def disassemble(self, addr):
        return [None]

    def as_string(self, addr):
        return "    %s" % utils.force_case(self.mnemonic)


class OpcodeConditionalBranch(Opcode):
    def __init__(self, mnemonic):
        super(OpcodeConditionalBranch, self).__init__(mnemonic, 1)

    def _target(self, addr):
        return addr + 2 + signed8(get_u8(addr + 1))

    def disassemble(self, addr):
        return [addr + 2, self._target(addr)]

    def as_string(self, addr):
        return "    %s %s" % (utils.force_case(self.mnemonic), disassembly.get_label(self._target(addr)))


# ENHANCE: Some of these opcodes might benefit from has_zp_version=False; I
# haven't done an exhaustive search to determine if there are any others not yet
# marked.
opcodes = {
    0x00: OpcodeReturn("BRK"),
    0x01: OpcodeZp("ORA", ",X)"),
    0x05: OpcodeZp("ORA"),
    0x06: OpcodeZp("ASL"),
    0x08: OpcodeImplied("PHP"),
    0x09: OpcodeImmediate("ORA"),
    0x0a: OpcodeImplied("ASL A"),
    0x0d: OpcodeDataAbs("ORA"),
    0x0e: OpcodeDataAbs("ASL"),
    0x10: OpcodeConditionalBranch("BPL"),
    0x11: OpcodeZp("ORA", "),Y"),
    0x15: OpcodeZp("ORA", ",X"),
    0x16: OpcodeZp("ASL", ",X"),
    0x18: OpcodeImplied("CLC"),
    0x19: OpcodeDataAbs("ORA", ",Y", has_zp_version=False),
    0x1d: OpcodeDataAbs("ORA", ",X"),
    0x1e: OpcodeDataAbs("ASL", ",X"),
    0x20: OpcodeJsr(),
    0x21: OpcodeZp("AND", ",X)"),
    0x24: OpcodeZp("BIT"),
    0x25: OpcodeZp("AND"),
    0x26: OpcodeZp("ROL"),
    0x28: OpcodeImplied("PLP"),
    0x29: OpcodeImmediate("AND"),
    0x2a: OpcodeImplied("ROL A"),
    0x2c: OpcodeDataAbs("BIT"),
    0x2d: OpcodeDataAbs("AND"),
    0x2e: OpcodeDataAbs("ROL"),
    0x30: OpcodeConditionalBranch("BMI"),
    0x31: OpcodeZp("AND", "),Y"),
    0x35: OpcodeZp("AND", ",X"),
    0x36: OpcodeZp("ROL", ",X"),
    0x38: OpcodeImplied("SEC"),
    0x39: OpcodeDataAbs("AND", ",Y", has_zp_version=False),
    0x3d: OpcodeDataAbs("AND", ",X"),
    0x3e: OpcodeDataAbs("ROL", ",X"),
    0x40: OpcodeReturn("RTI"),
    0x41: OpcodeZp("EOR", ",X)"),
    0x45: OpcodeZp("EOR"),
    0x46: OpcodeZp("LSR"),
    0x48: OpcodeImplied("PHA"),
    0x49: OpcodeImmediate("EOR"),
    0x4a: OpcodeImplied("LSR A"),
    0x4c: OpcodeJmpAbs(),
    0x4d: OpcodeDataAbs("EOR"),
    0x4e: OpcodeDataAbs("LSR"),
    0x50: OpcodeConditionalBranch("BVC"),
    0x51: OpcodeZp("EOR", "),Y"),
    0x55: OpcodeZp("EOR", ",X"),
    0x56: OpcodeZp("LSR", ",X"),
    0x58: OpcodeImplied("CLI"),
    0x59: OpcodeDataAbs("EOR", ",Y", has_zp_version=False),
    0x5d: OpcodeDataAbs("EOR", ",X"),
    0x5e: OpcodeDataAbs("LSR", ",X"),
    0x60: OpcodeReturn("RTS"),
    0x61: OpcodeZp("ADC", ",X)"),
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
    0x75: OpcodeZp("ADC", ",X"),
    0x76: OpcodeZp("ROR", ",X"),
    0x78: OpcodeImplied("SEI"),
    0x79: OpcodeDataAbs("ADC", ",Y", has_zp_version=False),
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
    0x94: OpcodeZp("STY", ",X"),
    0x95: OpcodeZp("STA", ",X"),
    0x96: OpcodeZp("STX", ",Y"),
    0x98: OpcodeImplied("TYA"),
    0x99: OpcodeDataAbs("STA", ",Y", has_zp_version=False),
    0x9a: OpcodeImplied("TXS"),
    0x9d: OpcodeDataAbs("STA", ",X"),
    0xa0: OpcodeImmediate("LDY"),
    0xa1: OpcodeZp("LDA", ",X)"),
    0xa2: OpcodeImmediate("LDX"),
    0xa4: OpcodeZp("LDY"),
    0xa5: OpcodeZp("LDA"),
    0xa6: OpcodeZp("LDX"),
    0xa8: OpcodeImplied("TAY"),
    0xa9: OpcodeImmediate("LDA"),
    0xaa: OpcodeImplied("TAX"),
    0xac: OpcodeDataAbs("LDY"),
    0xad: OpcodeDataAbs("LDA"),
    0xae: OpcodeDataAbs("LDX"),
    0xb0: OpcodeConditionalBranch("BCS"),
    0xb1: OpcodeZp("LDA", "),Y"),
    0xb4: OpcodeZp("LDY", ",X"),
    0xb5: OpcodeZp("LDA", ",X"),
    0xb8: OpcodeImplied("CLV"),
    0xb9: OpcodeDataAbs("LDA", ",Y", has_zp_version=False),
    0xba: OpcodeImplied("TSX"),
    0xbc: OpcodeDataAbs("LDY", ",X"),
    0xbd: OpcodeDataAbs("LDA", ",X"),
    0xbe: OpcodeDataAbs("LDX", ",Y"),
    0xc0: OpcodeImmediate("CPY"),
    0xc1: OpcodeZp("CMP", ",X)"),
    0xc4: OpcodeZp("CPY"),
    0xc5: OpcodeZp("CMP"),
    0xc6: OpcodeZp("DEC"),
    0xc8: OpcodeImplied("INY"),
    0xc9: OpcodeImmediate("CMP"),
    0xca: OpcodeImplied("DEX"),
    0xcc: OpcodeDataAbs("CPY"),
    0xcd: OpcodeDataAbs("CMP"),
    0xce: OpcodeDataAbs("DEC"),
    0xd0: OpcodeConditionalBranch("BNE"),
    0xd1: OpcodeZp("CMP", "),Y"),
    0xd5: OpcodeZp("CMP", ",X"),
    0xd6: OpcodeZp("DEC", ",X"),
    0xd8: OpcodeImplied("CLD"),
    0xd9: OpcodeDataAbs("CMP", ",Y", has_zp_version=False),
    0xdd: OpcodeDataAbs("CMP", ",X"),
    0xde: OpcodeDataAbs("DEC", ",X"),
    0xe0: OpcodeImmediate("CPX"),
    0xe1: OpcodeZp("SBC", ",X)"),
    0xe4: OpcodeZp("CPX"),
    0xe5: OpcodeZp("SBC"),
    0xe6: OpcodeZp("INC"),
    0xe8: OpcodeImplied("INX"),
    0xe9: OpcodeImmediate("SBC"),
    0xea: OpcodeImplied("NOP"),
    0xec: OpcodeDataAbs("CPX"),
    0xed: OpcodeDataAbs("SBC"),
    0xee: OpcodeDataAbs("INC"),
    0xf0: OpcodeConditionalBranch("BEQ"),
    0xf1: OpcodeZp("SBC", "),Y"),
    0xf5: OpcodeZp("SBC", ",X"),
    0xf6: OpcodeZp("INC", ",X"),
    0xf8: OpcodeImplied("SED"),
    0xf9: OpcodeDataAbs("SBC", ",Y", has_zp_version=False),
    0xfd: OpcodeDataAbs("SBC", ",X"),
    0xfe: OpcodeDataAbs("INC", ",X"),
}


def disassemble_instruction(addr):
    assert not disassembly.is_classified(addr, 1)
    opcode_value = memory[addr]
    #print(hex(opcode_value))
    if opcode_value not in opcodes:
        return [None]
    opcode = opcodes[opcode_value]
    if disassembly.is_classified(addr, 1 + opcode.operand_length):
        return [None]
    # Up to this point we hadn't decided addr contains an instruction; we now
    # have.
    disassembly.add_classification(addr, opcode)
    return opcode.disassemble(addr)

config.set_disassemble_instruction(disassemble_instruction)
