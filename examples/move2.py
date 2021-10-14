from commands import *
from trace6502 import *

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are multiple versions
# of the same program.
load(0x2000, "move2.orig") # TODO: add md5sum

# Start tracing instructions at 0x2000.
entry(0x2000)

low_a_move_id = move(0x900, 0x2010, 0x2022-0x2010)
with moved(low_a_move_id):
    label(0x900, "low_a")
    nonentry(0x90d) # TODO: should this use nonentry() with dest address resolved via implicit move_id?
low_b_move_id = move(0x901, 0x2029, 0x2039-0x2029)
with moved(low_b_move_id): # TODO: should move() return a moved() object????
    label(0x901, "low_b")
    entry(0x90d, "low_b_baz")

# Use all the information provided to actually disassemble the program.
go()
