from commands import *
import acorn
import utils # TODO!? Don't like needing to do this

load(0x8000, "dfs226.orig", "f083f49d6fe66344c650d7e74249cb96")
set_output_filename("dfs226.rom")

acorn.label_os_entry_points() # TODO: label_os_api()?
acorn.is_sideways_rom() # TODO: rename?

constant(0x01, "service_claim_absolute_workspace")
constant(0x09, "service_help")
constant(0x2b, "service_check_swr_presence")
constant(0xfe, "service_tube_post_init")

constant(0x8f, "osbyte_issue_service_call")
constant(0xc6, "osbyte_rw_exec_handle")
constant(0xc7, "osbyte_rw_spool_handle")

expr(0xaeaa, "service_help")
expr(0xaed8, "service_tube_post_init")
expr(0xbed0, "osbyte_issue_service_call")
expr(0xbed2, "service_check_swr_presence")
expr(0xbee1, "service_check_swr_presence")
expr(0x9e31, "osbyte_rw_exec_handle")
expr(0x9e3e, "osbyte_rw_exec_handle")
expr(0x9e40, "osbyte_rw_exec_handle")
expr(0x9e42, "osbyte_rw_spool_handle")
expr(0x9e4c, "osbyte_rw_spool_handle")

label(0xaf37, "just_rts")
label(0xaef8, "service_handler_tube_main_init")
label(0xb1b1, "general_service_handler")
label(0xbedd, "general_service_handler_indirect")
label(0xaea9, "service_handler_help_and_tube")
label(0x83dc, "inc16_ae")
label(0x9ae5, "osbyte_read")
label(0x9e4d, "osbyte_write_0")
label(0x96c1, "pla_rts")
expr(0x9668, "service_claim_absolute_workspace")
expr(0xbec9, "service_claim_absolute_workspace")

comment(0x8057, "XXX: Redundant lda l00b3? Is sta l00b3 above redundant too?")

comment(0x8077,
"""Print (XXX: using l809f, which seems to be quite fancy) an inline string
terminated by a top-bit set instruction to execute after printing the string.
Carry is always clear on exit.""")

def print_inline_top_bit_clear_hook(target, addr): # TODO: Is there a standard fn for this? should there be?
    return stringhi(addr + 3)

hook_subroutine(0x8077, "print_inline_top_bit_clear", print_inline_top_bit_clear_hook)

comment(0x8048,
"""Generate an OS error using inline data. Called as either:
    jsr XXX:equb errnum, "error message", 0
to actually generate an error now, or as:
    jsr XXX:equb errnum, "partial error message", instruction...
to partially construct an error (on the stack) and continue executing
'instruction' afterwards; its opcode must have its top bit set. Carry is
always clear on exit.""")

def generate_error_hook(target, addr):
    # addr + 3 is the error number
    addr += 4
    init_addr = addr
    while memory[addr] != 0 and (memory[addr] & 0x80) == 0:
        addr += 1
    if memory[addr] == 0:
        # An OS error will be generated and the subroutine won't return.
        string(init_addr, (addr + 1) - init_addr)
        return None
    else:
        # A partial OS error will be constructed on the stack and the subroutine
        # will transfer control to the instruction following the partial error.
        if addr > init_addr:
            string(init_addr, addr - init_addr)
        return addr

# XXX: "precheck" because it does *something* using &10DD/&9E30 first, probably
# a better name available with more understanding.
hook_subroutine(0x8023, "generate_error_precheck_disc", generate_error_hook)
hook_subroutine(0x802e, "generate_error_precheck_bad", generate_error_hook)
hook_subroutine(0x8038, "generate_error_precheck", generate_error_hook)
hook_subroutine(0x8048, "generate_error", generate_error_hook)


stringcr(0x9546)
stringcr(0x954e)

go()
