from commands import *
import acorn

load(0x8000, "dfs226.orig", "f083f49d6fe66344c650d7e74249cb96")
set_output_filename("dfs226.rom")

acorn.label_os_entry_points() # TODO: label_os_api()?
acorn.is_sideways_rom() # TODO: rename?

constant(0xc6, "osbyte_rw_exec_handle")
expr(0x9e31, "osbyte_rw_exec_handle")

label(0x83dc, "inc16_ae")
label(0x9ae5, "osbyte_x0_yff")

go()
