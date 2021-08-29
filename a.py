from __future__ import print_function

def disassemble_instruction(addr):
    assert what[addr] is None
    return []

memory = [None] * 64*1024
labels = [None] * 64*1024
what = [None] * 64*1024

with open("/home/steven/src/anfs-disassembly/roms/anfs418.orig", "rb") as f:
    memory[0x8000:] = f.read()

entry_points = [0x8003]

while len(entry_points) > 0:
    entry_point = entry_points.pop(0)
    if what[entry_point] is None:
        entry_points.extend(disassemble_instruction(entry_point))
