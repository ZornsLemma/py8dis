from commands import *
import acorn
import trace65c02

load(0x8000, "basic4.orig", "e11eed95d1caba8aa9772e9001590585")
set_output_filename("basic4.rom")

acorn.label_os_entry_points() # TODO: label_os_api()?
acorn.is_sideways_rom() # TODO: rename?

for i in range(2): # TODO RANGE
    addr = 0x8826 + i*2
    # TODO: standard command fn for next two lines together?
    word(addr)
    expr(addr, entry(get_u16(addr)))


trace65c02.trace()
go() # TODO: rename if we keep trace() outside
