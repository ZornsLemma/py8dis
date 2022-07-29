from commands import *

import acorn
acorn.bbc()

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are multiple versions
# of the same program.
load(0x1100, "acorn_os_calls.orig", "6502")

label(0x70, "mem")

# Start tracing instructions.
entry(0x1100)

# Use all the information provided to actually disassemble the program.
go()
