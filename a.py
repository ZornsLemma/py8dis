from __future__ import print_function

class Opcode(object):
    def __init__(self, mnemonic, operand_length, control_targets):
        self.mnemonic = mnemonic
        self.operand_length = operand_length
        self.control_targets = control_targets

# TODO: May want to allow 6502 or 65C02 opcode set to be selectable
opcodes = {
    0x4c: Opcode("JMP", 2, lambda addr, operand: [operand]),
}

def reverse_range(length):
    return range(length - 1, -1, -1)

def disassemble_instruction(addr):
    assert what[addr] is None
    opcode_value = memory[addr]
    if opcode_value not in opcodes:
        return []
    opcode = opcodes[opcode_value]
    for i in range(opcode.operand_length):
        if what[addr + 1 + i] is not None:
            # TODO: Warn?
            return []
        # TODO: check for memory[addr + 1 + i] being None?
    what[addr] = WHAT_OPCODE
    operand = 0
    for i in reverse_range(opcode.operand_length):
        what[addr + 1 + i] = WHAT_OPERAND
        operand = (operand << 8) | memory[addr + 1 + i]
    return opcode.control_targets(addr, operand)

# TODO: What's best way to do this "enum"?
WHAT_OPCODE = 1
WHAT_OPERAND = 2

memory = [None] * 64*1024
labels = [None] * 64*1024
what = [None] * 64*1024

with open("/home/steven/src/anfs-disassembly/roms/anfs418.orig", "rb") as f:
    memory[0x8000:] = bytearray(f.read())
assert all(x is None or (0 <= x <= 255) for x in memory)

entry_points = [0x8003]

while len(entry_points) > 0:
    entry_point = entry_points.pop(0)
    if what[entry_point] is None:
        print(hex(entry_point))
        entry_points.extend(disassemble_instruction(entry_point))
