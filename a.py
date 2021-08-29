from __future__ import print_function

memory = [0] * 64*1024

with open("/home/steven/src/anfs-disassembly/roms/anfs418.orig", "rb") as f:
    memory[0x8000:] = f.read()

print(memory[0x8003])
print(memory[0x8004])
