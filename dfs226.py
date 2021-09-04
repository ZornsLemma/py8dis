from commands import *
import acorn
import utils # TODO!? Don't like needing to do this

load(0x8000, "dfs226.orig", "f083f49d6fe66344c650d7e74249cb96")
set_output_filename("dfs226.rom")

acorn.label_os_entry_points() # TODO: label_os_api()?
acorn.is_sideways_rom() # TODO: rename?

constant(0x2b, "service_check_swr_presence")

constant(0x8f, "osbyte_issue_service_call")
constant(0xc6, "osbyte_rw_exec_handle")
constant(0xc7, "osbyte_rw_spool_handle")

expr(0xbed0, "osbyte_issue_service_call")
expr(0xbed2, "service_check_swr_presence")
expr(0x9e31, "osbyte_rw_exec_handle")
expr(0x9e3e, "osbyte_rw_exec_handle")
expr(0x9e40, "osbyte_rw_exec_handle")
expr(0x9e42, "osbyte_rw_spool_handle")
expr(0x9e4c, "osbyte_rw_spool_handle")

label(0x83dc, "inc16_ae")
label(0x9ae5, "osbyte_read")
label(0x9e4d, "osbyte_write_0")

comment(0x8057, "XXX: Redundant lda l00b3? Is sta l00b3 above redundant too?")

comment(0x8048,
"""Generate an OS error using inline data. Called as either:
    jsr XXX:equb errnum, "error message", 0
to actually generate an error now, or as:
    jsr XXX:equb errnum, "partial error message", addr
to partially construct an error (on the stack) and transfer control to
'addr' to finish constructing the error; the low byte of addr must have
its top bit set.""")

def generate_error_hook(target, addr):
    # addr + 3 is the error number
    addr = addr + 4
    init_addr = addr
    while memory[addr] != 0 and (memory[addr] & 0x80) == 0:
        addr += 1
    if memory[addr] == 0:
        # An OS error will be generated and the subroutine won't return.
        string(init_addr, (addr + 1) - init_addr)
        return None
    else:
        # A partial OS error will be constructed on the stack and the subroutine
        # will transfer control to the following address to finish it.
        string(init_addr, addr - init_addr)
        word(addr)
        continue_at = utils.get_abs(addr)
        # SFTODO: We return None because we don't have an "implicit" control transfer
        # to just after the jsr which entered the subroutine, so we prefer to explicit
        # label it via entry(). Is this OK/reasonable?
        entry(continue_at)
        return None

# XXX: "precheck" because it does *something* using &10DD/&9E30 first, probably
# a better name available with more understanding.
hook_subroutine(0x8038, "generate_error_precheck", generate_error_hook)
hook_subroutine(0x8048, "generate_error", generate_error_hook)

go()
