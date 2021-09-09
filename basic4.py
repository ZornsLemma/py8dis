from commands import *
import acorn
import trace65c02

load(0x8000, "basic4.orig", "e11eed95d1caba8aa9772e9001590585")
set_output_filename("basic4.rom")

acorn.label_os_entry_points() # TODO: label_os_api()?
acorn.is_sideways_rom() # TODO: rename?

wordentry(0x8826, 121) # XXX: table size is a guess

# XXX: l907d has a jsr which is followed by a BRA opcode, but it isn't
# disassembled because the BRA operand is already being disassembled as
# a tsb. This may well be a deliberate coding trick rather than a glitch
# in the disassembly.

# ENHANCE: Add a brk() hook to trace6502? This would allow us to disassemble
# OS errors without letting autostring() do it - it's not a big deal, but it
# can interpret error codes as ASCII.

go() # TODO: rename if we keep trace() outside
