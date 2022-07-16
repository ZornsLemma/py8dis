from commands import *

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are multiple versions
# of the same program.
load(0x900, "split1.orig", "6502", "e0b4f3dc330f1703fe3eff2557f1cf34")
load(0x2000, "split2.orig", "6502", "7e0ece611bcf58bf310ae3b7d8820631")

# Start tracing instructions at 0x2000.
entry(0x2000)

label(0x900, "print_and_inc_zp")

# Use all the information provided to actually disassemble the program.
go()
