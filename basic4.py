from commands import *
import acorn

load(0x8000, "basic4.orig", "e11eed95d1caba8aa9772e9001590585")
set_output_filename("basic4.rom")

acorn.label_os_entry_points() # TODO: label_os_api()?
acorn.is_sideways_rom() # TODO: rename?

go()
