from commands import *

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are
# multiple versions of the same program.
load(0x1100, "undef6502.orig", "6502") # TODO: add md5sum

# Start tracing instructions at 0x1100.
entry(0x1100)

# Recognise some undefined/illegal opcodes.
recognise_opcode(0x80)
recognise_opcode([0x03, 0x07, 0x0f, 0x1b, 0x1f, 0x8b])

# The illegal opcode $82 at $1104 won't be recognised and will stop tracing; force
# a restart after it.
entry(0x1106)

# Recognise the undefined/illegal opcode $82 at $1108 only.
entry(0x1108, force=True)

# Use all the information provided to actually disassemble the program.
go()
