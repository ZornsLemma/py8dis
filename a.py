from __future__ import print_function

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
        return "%s #&%02X" % (self.mnemonic, get_u8(addr + 1))

def add_default_label(addr):
    if addr not in labels:
        labels[addr] = "L%04X" % addr

def get_label(addr):
    assert addr in labels
    return labels[addr]

class OpcodeZp(object):
    def __init__(self, mnemonic):
        self.mnemonic = mnemonic
        self.operand_length = 1

    def disassemble(self, addr):
        add_default_label(get_u8(addr + 1))
        return [addr + 2]

    def as_string(self, addr):
        return "%s %s" % (self.mnemonic, get_label(get_u8(addr + 1)))

class OpcodeAbs(object):
    def __init__(self, mnemonic, suffix = None):
        self.mnemonic = mnemonic
        if suffix is None:
            self.suffix = ""
        else:
            self.suffix = suffix
        self.operand_length = 2

    def as_string(self, addr):
        return "%s %s%s" % (self.mnemonic, get_label(get_abs(addr + 1)), self.suffix)

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
    0x20: OpcodeJsr(),
    0x28: OpcodeImplied("PLP"),
    0x48: OpcodeImplied("PHA"),
    0x4c: OpcodeJmpAbs(),
    0x68: OpcodeImplied("PLA"),
    0x8a: OpcodeImplied("TXA"),
    0x98: OpcodeImplied("TYA"),
    0x9d: OpcodeDataAbs("STA", ",X"),
    0xa2: OpcodeImmediate("LDX"),
    0xa6: OpcodeZp("LDX"),
    0xa9: OpcodeImmediate("LDA"),
    0xad: OpcodeDataAbs("LDA"),
    0xc9: OpcodeImmediate("CMP"),
    0xe0: OpcodeImmediate("CPX"),
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

with open("/home/steven/src/anfs-disassembly/roms/anfs418.orig", "rb") as f:
    memory[0x8000:] = bytearray(f.read())
assert all(x is None or (0 <= x <= 255) for x in memory)
start_addr = 0x8000
end_addr = 0xc000

labels[0x8003] = "service_entry"
entry_points = [0x8003]

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

# TODO: A label splitting pass for where labels appear in middle of data/string/instruction
addr = start_addr
while addr < end_addr:
    print(hex(addr), what[addr])
    for i in range(1, what[addr][1]):
        # TODO: This isn't handling instructions with labels in the middle
        if (addr + i) in labels:
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
    # TODO: String as opposed to raw data
    what_type = what[addr][0]
    if what_type == WHAT_DATA:
        data_len = what[addr][1]
        while data_len > 0:
            s = "    EQUB "
            sep = ""
            for i in range(8):
                if data_len > 0:
                    s += sep + "&%02X" % memory[addr]
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
