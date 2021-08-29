from __future__ import print_function

class Opcode(object):
    def __init__(self, mnemonic, length):
        self.mnemonic = mnemonic
        self.length = length

# TODO: May want to allow 6502 or 65C02 opcode set to be selectable
opcodes = {
    0x4c: Opcode("JMP", 3),
}

def disassemble_instruction(addr):
    assert what[addr] is None
    opcode_value = memory[addr]
    if opcode_value not in opcodes:
        return []
    opcode = opcodes[opcode_value]
    for i in range(opcode.length):
        if what[addr + i] is not None:
            # TODO: Warn?
            return []
    for i in range(opcode.length):
        if i == 0:
            what[addr] = WHAT_OPCODE
        else:
            what[addr + i] = WHAT_OPERAND
    return []

# TODO: What's best way to do this "enum"?
WHAT_OPCODE = 1
WHAT_OPERAND = 2

memory = [None] * 64*1024
labels = [None] * 64*1024
what = [None] * 64*1024

with open("/home/steven/src/anfs-disassembly/roms/anfs418.orig", "rb") as f:
    memory[0x8000:] = bytearray(f.read())

entry_points = [0x8003]

while len(entry_points) > 0:
    entry_point = entry_points.pop(0)
    if what[entry_point] is None:
        entry_points.extend(disassemble_instruction(entry_point))
