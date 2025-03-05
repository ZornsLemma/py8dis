from commands import *

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are
# multiple versions of the same program.
load(0x2000, "orig/char_literals.orig", "6502")

# Start tracing instructions at 0x2000.
entry(0x2000)

for i in range(0,256):
    char(0x2001 + 2*i)

# Use all the information provided to actually disassemble the program.
go()
