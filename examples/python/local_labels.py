from commands import *
import config
import acorn

config.set_label_references(False)



# Load the program to be disassembled into the debugger's memory.
# The md5sum is optional but helps avoid confusion if there are
# multiple versions of the same program.
load(0x2000, "orig/local_labels.orig", "6502", "ac64dbf0050be82f97f01b22262406a8")
acorn.bbc()

# Start tracing instructions at 0x2000.
entry(0x2000)
subroutine(0x2000, "test_for_local_labels",
    "Local Labels Test",
    "This is just a jumble of code to test: the local labels feature, CRTC register substitution, and subroutine headers. It outputs some characters then reuses a variable to count some bits. It doesn't really make sense as a program in its own right. It also shows the subroutine header.",
    on_entry={'a': "File handle", 'y': "0 to write, otherwise read"},
    on_exit={'x': "Holds the number of bits set."} )
comment(0x2004, "output some characters")
label(0x2006, "print_loop")
char(0x2007)
blank(0x2015)
comment(0x2015, "count bits in a byte")
label(0x2019, "bit_counting_loop")
label(0x201e, "skip_add_to_bit_count")
label(0x2026, "crtc_substitution_test")

# TEST LOCAL LABELS:

label(0x70, "char_to_print")
local_label(0x70, "bit_value", 0x2017, 0x2022)


# Use all the information provided to actually disassemble the program.
go()
