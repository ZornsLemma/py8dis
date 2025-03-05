from commands import *
import acorn

load(0x8000, "orig/basic4.orig", "65c02", "e11eed95d1caba8aa9772e9001590585")
#set_output_filename("basic4.rom")

acorn.master()
acorn.is_sideways_rom()

wordentry(0x8826, 117) # XXX: table size is a guess

# This is pointless as used, but notice that a label maker can
# introduce a label independently of the standard label() command.
def our_label_maker(addr, context, suggestion):
    if addr == 0x80b6:
        return "copy_to_stack_loop"
    return suggestion
set_label_maker_hook(our_label_maker)

# ENHANCE: Add a brk() hook? This would allow us to disassemble OS
# errors without letting autostring() do it - it's not a big deal, but
# it can interpret error codes as ASCII.

go()
