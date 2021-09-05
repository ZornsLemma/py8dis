from commands import *
import acorn
import utils # TODO!? Don't like needing to do this

load(0x8000, "dfs226.orig", "f083f49d6fe66344c650d7e74249cb96")
set_output_filename("dfs226.rom")

acorn.label_os_entry_points() # TODO: label_os_api()?
acorn.is_sideways_rom() # TODO: rename?

constant(0x01, "service_claim_absolute_workspace")
constant(0x02, "service_claim_private_workspace")
constant(0x03, "service_boot")
constant(0x04, "service_unrecognised_command")
constant(0x08, "service_unrecognised_osword")
constant(0x09, "service_help")
constant(0x0a, "service_absolute_workspace_claimed")
constant(0x12, "service_select_filing_system")
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
expr(0x967b, "service_claim_absolute_workspace")
expr(0x9684, "service_claim_private_workspace")
expr(0x96c7, "service_boot")
expr(0x96ed, "service_unrecognised_command")
expr(0x96f6, "service_select_filing_system")
expr(0x9701, "service_help")
expr(0x9718, "service_absolute_workspace_claimed")
expr(0x973e, "service_unrecognised_osword")
label(0x874c, "clc_jmp_gsinit")
label(0x9104, "set_c_iff_have_fdc") # XXX: guessing, it is touching FDC memory-mapped I/O

comment(0x8057, "XXX: Redundant lda l00b3? Is sta l00b3 above redundant too?")

comment(0x8077,
"""Print (XXX: using l809f, which seems to be quite fancy) an inline string
terminated by a top-bit set instruction to execute after printing the string.
Carry is always clear on exit.""")

def print_inline_top_bit_clear_hook(target, addr): # TODO: Is there a standard fn for this? should there be?
    return stringhi(addr + 3)

hook_subroutine(0x8077, "print_inline_l809f_top_bit_clear", print_inline_top_bit_clear_hook)
hook_subroutine(0xa99c, "print_inline_osasci_top_bit_clear", print_inline_top_bit_clear_hook)

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
hook_subroutine(0x804f, "generate_error2", generate_error_hook)

stringcr(0x9546)
stringcr(0x954e)


def get_abs_be(addr): # TODO: Should be standard routine, poss under different name
    return (memory[addr] << 8) | memory[addr + 1]

pc = 0x861c
label(pc, "command_table")
label(pc + 1, "command_table_plus_1") # TODO: "expr label" would be mildly useful here
def SFTODO(n):
    global pc
    for i in range(n):
        pc = stringhi(pc)
        handler = get_abs_be(pc) + 1
        entry(handler)
        # TODO: Should following be standard fn? Should we have a word_be() fn?
        expr(pc, ">(" + get_label(handler) + "-1)")
        expr(pc + 1, "<(" + get_label(handler) + "-1)")
        pc += 2
        pc += 1 # XXX: what are we skipping here?
SFTODO(20)
pc += 2 # XXX
SFTODO(7)
pc += 2 # XXX
SFTODO(2)

# TODO: lba30 is an rts jump table
pc = 0xba30
label(pc, "sram_table")
label(pc + 1, "sram_table_plus_1") # TODO: expr label?
def SFTODO2(n):
    global pc
    for i in range(n):
        pc = stringhi(pc)
        handler = get_abs_be(pc) + 1
        if handler <= 0xffff:
            entry(handler)
            # TODO: Should following be standard fn? Should we have a word_be() fn?
            expr(pc, ">(" + get_label(handler) + "-1)")
            expr(pc + 1, "<(" + get_label(handler) + "-1)")
        pc += 2
SFTODO2(7)

# SFTODO: The "hex dump" for equbs in command_table shows the addresses of the routines as thpough these are strings (equs) rather than data (equb) - why?
# XXX: Some sort of string table at lba30

entry(0x8fd2, "nmi_handler_rom_start")
label(0x8fd2 + 0x5d + 1, "nmi_handler_rom_end")
comment(0x8ff5, 'This sta modifies the RAM copy of the operand of "lda #&2f" at 901e.')
comment(0x901f, 'This sta modifies the RAM copy of the operand of "beq l900b" at 8fdb.')
comment(0x9011, 'These incs modify the RAM copy of the operand of "sta lfee5" at 900f.')
comment(0x901e, 'The operand of this "lda #" is modified at runtime.')
comment(0x8fda, 'The operand of this "beq" is modified at runtime.')
comment(0x900e, 'The operand of this "sta" is modified at runtime.')
entry(0x9024) # XXX: how is this code reached? beq modification?
entry(0x9029) # XXX: how is this code reached? beq modification?

entry(0x80d3) # XXX: how is this code reached?
entry(0x8441) # XXX: how is this code reached?
entry(0x8483) # XXX: how is this code reached?

go()
