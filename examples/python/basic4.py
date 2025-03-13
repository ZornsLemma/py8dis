from commands import *
import acorn

load(0x8000, "orig/basic4.orig", "65c02", "e11eed95d1caba8aa9772e9001590585")
#set_output_filename("basic4.rom")

acorn.master()
acorn.is_sideways_rom()

wordentry(0x8826, 117) # XXX: table size is a guess

# Label maker can change the label name referenced at a given address
# (But in this case could to use a local_label() instead)
def our_label_maker(d):
    if d.binary_addr == 0x80bd:
        d.name="copy_to_stack_loop"

set_label_maker_hook(our_label_maker)

# ENHANCE: Add a brk() hook? This would allow us to disassemble OS
# errors without letting autostring() do it - it's not a big deal, but
# it can interpret error codes as ASCII.

go()
