from commands import *

# Load the program to be disassembled into the debugger's memory.
load(0x3000, "moving1.orig", "6502")

# move(dest, source, len)
move(0x3001, 0x3002, 255)

# Note: COPYBLOCK <start>,<end>,<dest>

go()
