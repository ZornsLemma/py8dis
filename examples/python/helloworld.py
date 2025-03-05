from commands import *

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are
# multiple versions of the same program.
load(0x2000, "orig/helloworld.orig", "6502", "ba85fca1feae301af81806d3102b0851")

# Start tracing instructions at 0x2000.
entry(0x2000)

# Add extra stuff here as the disassembly progresses...

# Use all the information provided to actually disassemble the program.
go()
