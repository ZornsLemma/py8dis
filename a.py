from __future__ import print_function

# TODO: Completely ignoring wrapping at top and bottom of memory for now...

def signed8(i):
    assert 0 <= i <= 255
    if i >= 0x80:
        return i - 256
    else:
        return i

class Opcode(object):
    def __init__(self, mnemonic, operand_length, control_targets = None):
        self.mnemonic = mnemonic
        self.operand_length = operand_length
        if control_targets is None:
            self.control_targets = lambda addr, operand: [addr + 1]
        else:
            self.control_targets = control_targets

def immediate(addr, operand):
    return [addr + 2]

def conditional_branch(addr, operand):
    return [addr + 2, addr + 2 + signed8(operand)]

# TODO: May want to allow 6502 or 65C02 opcode set to be selectable
# TODO: Fill in gaps!
# TODO: Some redundancy between operand length and the target parsing fn?! I should maybe have eg ConditionalBranchOpcode() class and ImpliedOpcode() classes to simplify this table
# TODO: We need a hook for calling user fns when we disassemble a JSR, to handle things like inline prints
opcodes = {
    0x20: Opcode("JSR", 2, lambda addr, operand: [addr + 3, operand]),
    0x48: Opcode("PHA", 0),
    0x4c: Opcode("JMP", 2, lambda addr, operand: [None, operand]),
    0x68: Opcode("PLA", 0),
    0xc9: Opcode("CMP", 1, immediate),
    0xd0: Opcode("BNE", 1, conditional_branch),
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
    operand = 0
    for i in reverse_range(opcode.operand_length):
        what[addr + 1 + i] = (WHAT_OPERAND, 1) # length a bit irrelevant
        operand = (operand << 8) | memory[addr + 1 + i]
    return opcode.control_targets(addr, operand)

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
    if what[entry_point] is None:
        print(hex(entry_point))
        new_entry_points = disassemble_instruction(entry_point)
        assert len(new_entry_points) >= 1
        implied_entry_point = new_entry_points.pop(0)
        if implied_entry_point is not None:
            entry_points.append(implied_entry_point)
        for new_entry_point in new_entry_points:
            if new_entry_point not in labels:
                labels[new_entry_point] = "L%04X" % new_entry_point
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
        print("    %s TODO!" % opcode.mnemonic)
        addr += 1 + opcode.operand_length
    else:
        assert False
    # TODO: Handle labels occuring "inside" an instruction


# TODO/thoughts:
# - maybe make what[x] a tuple something like (instruction, 3) or (string, 22) or (data, 19), i.e. a "type to emit" and the number of bytes it occupies. A cleaning up pass immediately before emitting could concatenate single data bytes and split strings/data with labels in the middle of them.
# - some sort of support for saying "immediate operand at addr xxxx has symbolic value '<L5332'" (we must *verify* this is correct, not just roll with it)
# - a standard helper function to diassemble a ROM header
