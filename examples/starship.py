#########################################################################################
#
# Starship Command disassembler
#
#########################################################################################

from commands import *
import acorn

load(0x1f00, "starship.orig", "6502")

acorn.mos_labels()
acorn.hardware_bbc()


# Relocate code
move(0x0e00, 0x1f00, 0x42b1)

# Memory locations
entry(0x61b1, "entry_point")

label(0x21c8, "sound_1")
label(0x21d0, "sound_2")
label(0x21d8, "sound_3")
label(0x21e0, "sound_4")
label(0x21e8, "sound_5")
label(0x21f0, "sound_6")
label(0x21f8, "sound_7")
label(0x2200, "sound_8")
label(0x2208, "sound_9")

go()
