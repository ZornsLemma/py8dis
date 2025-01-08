from commands import *

# Load the program to be disassembled into the debugger's memory.
load(0x3000, "moving.orig", "6502")

# move(dest, source, len)
move(0x3002, 0x3001, 256)

# Note: COPYBLOCK <start>,<end>,<dest>

go()
