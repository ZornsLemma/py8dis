from commands import *
import acorn

config.set_label_references(False)
config.set_hex_dump(True)
config.set_show_autogenerated_labels(False)
config.set_show_cpu_state(False)
config.set_show_char_literals(False)
config.set_show_all_labels(False)

# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are
# multiple versions of the same program.
load(0x2000, "orig/align_test.orig", "6502", "ba85fca1feae301af81806d3102b0851")

# Add labels specific to the Master
acorn.master()

# Start tracing instructions at 0x2000.
entry(0x2000)

constant(0x0d, "newline", format=Format.HEX)

blank(0x2002)
comment(0x2002, "*** BEFORE LABEL ***", align=Align.BEFORE_LABEL)
label(0x2002, "print_loop")
comment(0x2002, "*** AFTER LABEL ***",  align=Align.AFTER_LABEL)
comment(0x2002, "*** BEFORE LINE ***",  align=Align.BEFORE_LINE, indent=1)
comment(0x2002, "*** INLINE ***",       align=Align.INLINE)
comment(0x2002, "*** AFTER LINE ***",   align=Align.AFTER_LINE, indent=1)
label(0x200e, "hello_world_string")
expr(0x201b, "newline")

# Use all the information provided to actually disassemble the program.
go()
