from commands import *

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are multiple versions
# of the same program.
load(0x2000, "move.orig", "6502", "68a54150e8617ae1193e5a3e882998fc")

# Start tracing instructions at 0x2000.
entry(0x2000)

move(0x900, 0x201e, 0x202d-0x201e)
label(0x900, "print_and_inc_zp")

#set_current_move_id(None)

# Use all the information provided to actually disassemble the program.
go()
