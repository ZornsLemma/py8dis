from commands import *
import acorn
import trace65c02

load(0x8000, "basic4.orig", "e11eed95d1caba8aa9772e9001590585")
#set_output_filename("basic4.rom")

acorn.add_standard_labels()
acorn.is_sideways_rom()

wordentry(0x8826, 121) # XXX: table size is a guess

# This is pointless as used, but notice that a label hook can introduce a
# label indepdently of the standard label() command.
def our_label_hook(addr, context, suggestion):
    if addr == 0x80b6:
        return "copy_to_stack_loop"
    return suggestion
set_label_hook(our_label_hook)

# XXX: l907d has a jsr which is followed by a BRA opcode, but it isn't
# disassembled because the BRA operand is already being disassembled as
# a tsb. This may well be a deliberate coding trick rather than a glitch
# in the disassembly.

# ENHANCE: Add a brk() hook to trace6502? This would allow us to disassemble
# OS errors without letting autostring() do it - it's not a big deal, but it
# can interpret error codes as ASCII.

go()
