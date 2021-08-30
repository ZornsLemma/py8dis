from __future__ import print_function
import collections

# TODO: Completely ignoring wrapping at top and bottom of memory for now...

def signed8(i):
    assert 0 <= i <= 255
    if i >= 0x80:
        return i - 256
    else:
        return i

def get_u8(i):
    assert memory[i] is not None
    return memory[i]

def get_abs(i):
    assert memory[i] is not None and memory[i+1] is not None
    return memory[i] + (memory[i+1] << 8)

class OpcodeImplied(object):
    def __init__(self, mnemonic):
        self.mnemonic = mnemonic
        self.operand_length = 0

    def disassemble(self, addr):
        return [addr + 1]

    def as_string(self, addr):
        return self.mnemonic

class OpcodeImmediate(object):
    def __init__(self, mnemonic):
        self.mnemonic = mnemonic
        self.operand_length = 1

    def disassemble(self, addr):
        return [addr + 2]

    def as_string(self, addr):
        return "%s #%s" % (self.mnemonic, get_constant8(addr + 1))

def add_default_label(addr):
    if addr not in labels:
        labels[addr] = "L%04X" % addr

def get_label(addr):
    if addr in labels:
        return labels[addr]
    print("OO2", hex(addr))
    assert addr in derived_labels
    return derived_labels[addr]

def get_expression(addr, expected_value):
    expression = expressions[addr]
    # TODO: We should evaluate "expression" and check it evaluates to expected_value
    return expression

def get_constant8(addr):
    if addr not in expressions:
        return "&%02X" % memory[addr]
    return get_expression(addr, memory[addr])

def get_address8(addr):
    operand = memory[addr]
    if addr not in expressions:
        return get_label(operand)
    return get_expression(addr, operand)

def get_address16(addr):
    operand = get_abs(addr)
    if addr not in expressions:
        return get_label(operand)
    return get_expression(addr, operand)

class OpcodeZp(object):
    def __init__(self, mnemonic, suffix = None):
        self.mnemonic = mnemonic
        self.suffix = suffix if suffix is not None else ""
        self.prefix = "(" if ")" in self.suffix else ""
        self.operand_length = 1

    def disassemble(self, addr):
        add_default_label(get_u8(addr + 1))
        return [addr + 2]

    def as_string(self, addr):
        return "%s %s%s%s" % (self.mnemonic, self.prefix, get_address8(addr + 1), self.suffix)

class OpcodeAbs(object):
    def __init__(self, mnemonic, suffix = None):
        self.mnemonic = mnemonic
        self.suffix = suffix if suffix is not None else ""
        self.prefix = "(" if self.suffix.startswith(")") else ""
        self.operand_length = 2

    def as_string(self, addr):
        return "%s %s%s%s" % (self.mnemonic, self.prefix, get_address16(addr + 1), self.suffix)

class OpcodeDataAbs(OpcodeAbs):
    def __init__(self, mnemonic, suffix = None):
        super(OpcodeDataAbs, self).__init__(mnemonic, suffix)

    def disassemble(self, addr):
        # TODO: Should we *always* do this in disassemble() instead of special-casing non-consecutive instructions? ie call add_default_label in control flow affecting instructions
        add_default_label(get_abs(addr + 1))
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
        add_default_label(get_abs(addr + 1))
        return [None]

class OpcodeJsr(OpcodeAbs):
    def __init__(self):
        super(OpcodeJsr, self).__init__("JSR")

    def disassemble(self, addr):
        target = get_abs(addr + 1)
        return_addr = jsr_hooks.get(target, lambda target, addr: addr + 3)(target, addr)
        return [return_addr, get_abs(addr + 1)]

class OpcodeReturn(object):
    def __init__(self, mnemonic):
        self.mnemonic = mnemonic
        self.operand_length = 0

    def disassemble(self, addr):
        return [None]

    def as_string(self, addr):
        return self.mnemonic

class OpcodeConditionalBranch(object):
    def __init__(self, mnemonic):
        self.mnemonic = mnemonic
        self.operand_length = 1

    def _target(self, addr):
        return addr + 2 + signed8(get_u8(addr + 1))

    def disassemble(self, addr):
        return [addr + 2, self._target(addr)]

    def as_string(self, addr):
        return "%s %s" % (self.mnemonic, get_label(self._target(addr)))

#def conditional_branch(addr, operand):
#    return [addr + 2, addr + 2 + signed8(operand)]

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

def reverse_range(length):
    return range(length - 1, -1, -1)

def disassemble_instruction(addr):
    assert what[addr] is None
    opcode_value = memory[addr]
    print(hex(opcode_value))
    if opcode_value not in opcodes:
        return [None]
    opcode = opcodes[opcode_value]
    for i in range(opcode.operand_length):
        if what[addr + 1 + i] is not None:
            # TODO: Warn?
            return [None]
        # TODO: check for memory[addr + 1 + i] being None?
    # Up to this point we hadn't decided addr contains an instruction; we now
    # have.
    what[addr] = (WHAT_OPCODE, 1 + opcode.operand_length)
    for i in reverse_range(opcode.operand_length):
        what[addr + 1 + i] = (WHAT_OPERAND, 1) # length a bit irrelevant
    return opcode.disassemble(addr)

def inline_nul_string_hook(target, addr):
    addr += 3
    while True:
        what[addr] = (WHAT_STRING, 1)
        if memory[addr] == 0:
            break
        addr += 1
    return addr + 1

def string_terminated(addr, terminator):
    initial_addr = addr
    while True:
        what[addr] = (WHAT_STRING, 1)
        if memory[addr] == terminator:
            break
        addr += 1
    return addr + 1

def string_cr(addr):
    return string_terminated(addr, 13)

def string_nul(addr):
    return string_terminated(addr, 0)

def string_n(addr, n):
    for i in range(n):
        what[addr + i] = (WHAT_STRING, 1)

def string_hi(addr):
    while True:
        what[addr] = (WHAT_STRING, 1)
        if memory[addr] & 0x80 != 0:
            if False: # TODO: Works but not that helpful so save it for a case where it is
                c = memory[addr] & 0x7f
                if 32 <= c <= 126 and c != 34:
                    expressions[addr] = "&80+'%s'" % chr(c)
            break
        addr += 1
    return addr + 1

# TODO: RENAME DWORD TO WORD...
def rts_address(addr):
    labelled_entry_point(get_abs(addr) + 1)
    expressions[addr] = "%s-1" % labels[get_abs(addr) + 1]
    what[addr] = (WHAT_DWORD, 2)
    what[addr + 1] = (WHAT_DWORD, 1) # TODO!?
    return addr + 2

def is_sideways_rom():
    def check_entry(addr, entry_type):
        jmp_abs_opcode = 0x4c
        labels[addr] = entry_type + "_entry"
        if memory[addr] == jmp_abs_opcode:
            entry_points.append(addr)
            labels[get_abs(addr + 1)] = entry_type + "_handler"
        else:
            what[addr    ] = (WHAT_DATA, 1)
            what[addr + 1] = (WHAT_DATA, 1)
            what[addr + 2] = (WHAT_DATA, 1)
    check_entry(0x8000, "language")
    check_entry(0x8003, "service")
    labels[0x8006] = "rom_type"
    labels[0x8007] = "copyright_offset"
    copyright_offset = memory[0x8007]
    expressions[0x8007] = "copyright - language_entry"
    labels[0x8008] = "binary_version"
    labels[0x8009] = "title"
    nul_at_title_end = string_nul(0x8009) - 1
    if nul_at_title_end < (0x8000 + copyright_offset):
        labels[nul_at_title_end] = "version"
        string_nul(nul_at_title_end + 1)
    labels[0x8000 + copyright_offset] = "copyright"
    string_nul(0x8000 + copyright_offset + 1)
    # TODO: We could recognise tube transfer/relocation data in header

# TODO: Use this in more places
# TODO: Take optional non-default label
# TODO: Rename code_label or something?
def labelled_entry_point(addr):
    entry_points.append(addr)
    add_default_label(addr)

# TODO: What's best way to do this "enum"?
WHAT_DATA = 0
WHAT_STRING = 1
WHAT_OPCODE = 2
WHAT_OPERAND = 3
WHAT_DWORD = 4

memory = [None] * 64*1024
labels = {}
what = [None] * 64*1024
expressions = {}
jsr_hooks = {}
entry_points = []

with open("/home/steven/src/anfs-disassembly/roms/anfs418.orig", "rb") as f:
    memory[0x8000:] = bytearray(f.read())
assert all(x is None or (0 <= x <= 255) for x in memory)
start_addr = 0x8000
end_addr = 0xc000

is_sideways_rom()

labels[0x9611] = "sta_e09_if_d6c_b7_set"
labels[0x96b4] = "error_template_minus_1"
what[0x96b5] = (WHAT_STRING, 1) # TODO: REPETITIVE, NEED HELPER FN
what[0x96b6] = (WHAT_STRING, 1)
what[0x96b7] = (WHAT_STRING, 1)
labels[0xffb9] = "osrdrm"
labels[0xfff4] = "osbyte"
labels[0xffe3] = "osasci"
labels[0xffe7] = "osnewl"
labels[0xffee] = "oswrch"

# TODO: Something analogous to beebdis's "pc" to avoid counting bytes would probably be helpful - or will I just make more of an effort to return "pc" and let user code handle it itself?
pc = 0xa3f0
for i in range(10):
    pc = string_hi(pc)
    pc = rts_address(pc)
pc += 1
for i in range(17):
    pc = string_hi(pc)
    pc = rts_address(pc)
pc += 1
pc = rts_address(pc) # TODO: ?
for i in range(2):
    pc = string_hi(pc)
    pc = rts_address(pc)
pc += 1
for i in range(6):
    pc = string_hi(pc)
    pc += 2

string_cr(0xa17c) # preceding BNE is always taken
what[0xaefb] = (WHAT_DATA, 1)
#string_n(0xaefb, 4)

labels[(0x421-0x400)+0xbf04] = 'copied_to_421'
entry_points.append((0x421-0x400)+0xbf04)

labelled_entry_point(0x89a7)
labelled_entry_point(0x89b5)

labelled_entry_point(0xbf04)
labelled_entry_point(0xbf07)
labelled_entry_point(0xbf0a)
labelled_entry_point(0xbf2c)
labelled_entry_point(0xbf88)
labelled_entry_point(0xbfd2)

# This subroutine prints non-top-bit-set characters following it, then continues
# execution at the first top-bit-set byte following it.
labels[0x9145] = "print_inline_top_bit_clear"
def print_inline_top_bit_clear_hook(target, addr):
    addr += 3
    while memory[addr] & 0x80 == 0:
        what[addr] = (WHAT_STRING, 1)
        addr += 1
    return addr
jsr_hooks[0x9145] = print_inline_top_bit_clear_hook

# This subroutine generates an error using the following NUL-terminated string.
# TODO: I think it may actually return in some cases - need to study its code more
# TODO: The fact there are two entry points also suggests something slightly cleverer going on
labels[0x96b8] = "generate_error_inline"
labels[0x96d4] = "generate_error_inline2"
labels[0x96d1] = "generate_error_inline3"
def generate_error_inline_hook(target, addr):
    inline_nul_string_hook(target, addr) # discard return address
    return None
jsr_hooks[0x96b8] = generate_error_inline_hook
jsr_hooks[0x96d4] = generate_error_inline_hook
jsr_hooks[0x96d1] = generate_error_inline_hook


def split_jump_table_entry(low_addr, high_addr):
    # +1 as the jump table entry is pushed onto stack and entered via RTS.
    entry_point = (memory[high_addr] << 8) + memory[low_addr] + 1
    entry_points.append(entry_point)
    add_default_label(entry_point)
    expressions[high_addr] = "hi(%s-1)" % labels[entry_point]
    expressions[low_addr]  = "lo(%s-1)" % labels[entry_point]
    # TODO: "ENCODE" THE JUMP TABLE ENTRY AS CALCULATED FROM LABEL

for i in range(36):
    split_jump_table_entry(0x89ca + 1 + i, 0x89ef + 1 + i)
print("XXX", expressions)

while len(entry_points) > 0:
    entry_point = entry_points.pop(0)
    if what[entry_point] is None and start_addr <= entry_point < end_addr:
        print(hex(entry_point))
        new_entry_points = disassemble_instruction(entry_point)
        assert len(new_entry_points) >= 1
        implied_entry_point = new_entry_points.pop(0)
        if implied_entry_point is not None:
            entry_points.append(implied_entry_point)
        for new_entry_point in new_entry_points:
            add_default_label(new_entry_point)
            entry_points.append(new_entry_point)

# Convert anything not explicitly disassembled into data.
for addr in range(len(what)):
    if what[addr] is None:
        what[addr] = (WHAT_DATA, 1)

# Merge adjacent items of data.
addr = start_addr
while addr < end_addr:
    if what[addr][0] in (WHAT_DATA, WHAT_STRING):
        new_addr = addr + what[addr][1]
        #print("X", hex(addr), hex(new_addr), what[new_addr])
        while new_addr < end_addr and what[new_addr][0] == what[addr][0]:
            new_addr += what[new_addr][1]
            #print("Y", hex(addr), hex(new_addr), what[new_addr])
        what[addr] = (what[addr][0], new_addr - addr)
        for i in range(addr + 1, new_addr):
            what[i] = None
        addr = new_addr
    else:
        addr = addr + 1

# Replace any labels which fall mid-instruction with derived labels
# TODO: Smallish detail but it might be nice to derive labels using a label *after* the instruction they overlap - in practice they are quite likely to refer to tables following the instruction and this avoids forcing a label in before it
derived_labels = {}
derived_labels2 = collections.defaultdict(list) # TODO: NAMING
addr = start_addr
while addr < end_addr:
    if what[addr][0] == WHAT_OPCODE:
        for i in range(1, what[addr][1]):
            if (addr + i) in labels:
                add_default_label(addr)
                derived_labels[addr + i] = labels[addr + i]
                derived_labels2[addr].append((labels[addr + i], "%s+%d" % (labels[addr], i)))
                del labels[addr + i]
    addr += what[addr][1]
print("XXX", derived_labels)

# TODO: A label splitting pass for where labels appear in middle of data/string/instruction
addr = start_addr
while addr < end_addr:
    print(hex(addr), what[addr])
    for i in range(1, what[addr][1]):
        # TODO: This isn't handling instructions with labels in the middle - which is fine now we deal with them above
        if (addr + i) in labels:
            print("XXX2", i)
            assert what[addr][0] != WHAT_OPCODE
            what[addr + i] = (what[addr][0], what[addr][1] - i)
            what[addr] = (what[addr][0], i)
            break
    addr += what[addr][1]

# TODO: Emit "constant labels" which aren't addresses in the start_addr/end_addr range

addr = start_addr
while addr < end_addr:
    if addr in labels:
        print(".%s" % labels[addr])
    if addr in derived_labels2:
        for name, definition in derived_labels2[addr]:
            print("%s = %s" % (name, definition))
    # TODO: String as opposed to raw data
    what_type = what[addr][0]
    if what_type == WHAT_DATA:
        data_len = what[addr][1]
        while data_len > 0:
            s = "    EQUB "
            sep = ""
            for i in range(8):
                if data_len > 0:
                    s += sep + get_constant8(addr)
                    sep = ","
                    addr += 1
                    data_len -= 1
            print(s)
    elif what_type == WHAT_DWORD:
        assert what[addr][1] == 2
        print("    EQUW %s" % get_address16(addr))
        addr += what[addr][1]
    elif what_type == WHAT_STRING:
        # TODO: This should wrap long strings across multiple lines
        data_len = what[addr][1]
        s = "    EQUS "
        state = 0
        while data_len > 0:
            # TODO: Assumes ASCII (not e.g. PETSCII)
            if 32 <= memory[addr] <= 126 and memory[addr] != ord('"'):
                if state == 0:
                    s += '"'
                elif state == 1:
                    pass
                elif state == 2:
                    s += ', "'
                state = 1
                s += chr(memory[addr])
            else:
                if state == 0:
                    pass
                elif state == 1:
                    s += '", '
                elif state == 2:
                    s += ","
                state = 2
                s += get_constant8(addr)
            addr += 1
            data_len -= 1
        if state == 1:
            s += '"'
        print(s)
    elif what_type == WHAT_OPCODE:
        opcode = opcodes[memory[addr]]
        print("    %s" % opcode.as_string(addr))
        addr += 1 + opcode.operand_length
    else:
        assert False
    # TODO: Handle labels occuring "inside" an instruction


# TODO/thoughts:
# - maybe make what[x] a tuple something like (instruction, 3) or (string, 22) or (data, 19), i.e. a "type to emit" and the number of bytes it occupies. A cleaning up pass immediately before emitting could concatenate single data bytes and split strings/data with labels in the middle of them.
# - some sort of support for saying "immediate operand at addr xxxx has symbolic value '<L5332'" (we must *verify* this is correct, not just roll with it)
# - a standard helper function to diassemble a ROM header

# TODO: Option to output lower case mnemonics, perhaps also default labels including lower case hex

# TODO: Ability to add comments just before labels? perhaps attach comments to labels is better way of putting it. Or maybe to attach comments to arbitrary addresses????

# TODO: Goals:
# - "programmable" - the disassembly is controlled by a custom python program which imports the core disassembler utils and any other custom utils it like - it can contain arbitrary python code
# - "annotatable" - postpone as long as possible the temptation to start hand-editing the output, because as soon as you do that it gets difficult to get further assistance from disassembler if you (e.g.) discover a chunk of data which you want to annotate as a jump table
# - "anchored" - no matter how mangled or useless the disassembly is, it should always re-build the input correctly and no bytes should be lost
