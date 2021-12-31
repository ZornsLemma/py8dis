from commands import *
from trace6502 import *

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are multiple versions
# of the same program.
load(0x2000, "move3.orig") # TODO: add md5sum

# Start tracing instructions at 0x2000.
entry(0x2000)

label(0x900, "low")
expr(0x2026, "low_a")
expr(0x2029, "low")
expr(0x2032, "low_b")
expr(0x2035, "low")

low_a_move_id = move(0x900, 0x2016, 0x2023-0x2016)
low_b_move_id = move(0x900, 0x203b, 0x2048-0x203b)
# TODO: Can I avoid the need for the two separate label(0x905, ...) calls? At the moment I think 
# we never auto-generate more than one label name for a particular address, but arguably we could/should
# infer (since the instruction referencing 0x905 is part of the same move, if nothing else) here that
# it would be useful to do so.
with low_a_move_id:
    entry(0x900, "low_a")
    label(0x905, "low_a_loop")
    label(0x909, "low_a_jmp")
with low_b_move_id:
    entry(0x900, "low_b")
    label(0x905, "low_b_loop")
    label(0x909, "low_b_jmp")

# Use all the information provided to actually disassemble the program.
go()
