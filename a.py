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
        self.prefix = "(" if self.suffix.startswith(")") else ""
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
        self.operand_length = 2

    def as_string(self, addr):
        return "%s %s%s" % (self.mnemonic, get_address16(addr + 1), self.suffix)

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

class OpcodeJsr(OpcodeAbs):
    def __init__(self):
        super(OpcodeJsr, self).__init__("JSR")

    def disassemble(self, addr):
        return [addr + 3, get_abs(addr + 1)]

class OpcodeRts(object):
    def __init__(self):
        self.operand_length = 0

    def disassemble(self, addr):
        return [None]

    def as_string(self, addr):
        return "RTS"

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
    0x08: OpcodeImplied("PHP"),
    0x09: OpcodeImmediate("ORA"),
    0x0a: OpcodeImplied("ASL A"),
    0x10: OpcodeConditionalBranch("BPL"),
    0x18: OpcodeImplied("CLC"),
    0x20: OpcodeJsr(),
    0x28: OpcodeImplied("PLP"),
    0x29: OpcodeImmediate("AND"),
    0x2c: OpcodeDataAbs("BIT"),
    0x30: OpcodeConditionalBranch("BMI"),
    0x38: OpcodeImplied("SEC"),
    0x3e: OpcodeDataAbs("ROL", ",X"),
    0x48: OpcodeImplied("PHA"),
    0x49: OpcodeImmediate("EOR"),
    0x4c: OpcodeJmpAbs(),
    0x60: OpcodeRts(),
    0x68: OpcodeImplied("PLA"),
    0x6d: OpcodeDataAbs("ADC"),
    0x6e: OpcodeDataAbs("ROR"),
    0x71: OpcodeZp("ADC", "),Y"),
    0x79: OpcodeDataAbs("ADC", ",Y"),
    0x7e: OpcodeDataAbs("ROR", ",X"),
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
    0xb9: OpcodeDataAbs("LDA", ",Y"),
    0xbd: OpcodeDataAbs("LDA", ",X"),
    0xc0: OpcodeImmediate("CPY"),
    0xc6: OpcodeZp("DEC"),
    0xc8: OpcodeImplied("INY"),
    0xc9: OpcodeImmediate("CMP"),
    0xca: OpcodeImplied("DEX"),
    0xd1: OpcodeZp("CMP", "),Y"),
    0xe0: OpcodeImmediate("CPX"),
    0xe6: OpcodeZp("INC"),

    0xe8: OpcodeImplied("INX"),
    0xd0: OpcodeConditionalBranch("BNE"),
    0xf0: OpcodeConditionalBranch("BEQ"),
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

# TODO: What's best way to do this "enum"?
WHAT_DATA = 0
WHAT_OPCODE = 1
WHAT_OPERAND = 2

memory = [None] * 64*1024
labels = {}
what = [None] * 64*1024
expressions = {}

with open("/home/steven/src/anfs-disassembly/roms/anfs418.orig", "rb") as f:
    memory[0x8000:] = bytearray(f.read())
assert all(x is None or (0 <= x <= 255) for x in memory)
start_addr = 0x8000
end_addr = 0xc000

labels[0x8003] = "service_entry"
labels[0x8a15] = "service_handler"
labels[0xffb9] = "osrdrm"
labels[0xfff4] = "osbyte"
entry_points = [0x8003]

def split_jump_table_entry(low_addr, high_addr):
    # +1 as the jump table entry is pushed onto stack and entered via RTS.
    entry_point = (memory[high_addr] << 8) + memory[low_addr] + 1
    entry_points.append(entry_point)
    add_default_label(entry_point)
    expressions[high_addr] = "hi(%s-1)" % labels[entry_point]
    expressions[low_addr]  = "lo(%s-1)" % labels[entry_point]
    # TODO: "ENCODE" THE JUMP TABLE ENTRY AS CALCULATED FROM LABEL

for i in range(4): # TODO: MUCH HIGHER
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
    if what[addr][0] == WHAT_DATA:
        new_addr = addr + what[addr][1]
        #print("X", hex(addr), hex(new_addr), what[new_addr])
        while new_addr < end_addr and what[new_addr][0] == WHAT_DATA:
            new_addr += what[new_addr][1]
            #print("Y", hex(addr), hex(new_addr), what[new_addr])
        what[addr] = (WHAT_DATA, new_addr - addr)
        for i in range(addr + 1, new_addr):
            what[i] = None
        addr = new_addr
    else:
        addr = addr + 1

# Replace any labels which fall mid-instruction with derived labels
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
