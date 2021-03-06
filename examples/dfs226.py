from commands import *
from trace6502 import hook_subroutine
import acorn

load(0x8000, "dfs226.orig", "f083f49d6fe66344c650d7e74249cb96")
set_output_filename("dfs226.rom")

acorn.add_standard_labels()
acorn.is_sideways_rom()

# These two options default to True (on) and are probably helpful during the
# initial stages of a disassembly, but you might want to turn them off
# eventually, particularly the hex dump.
# config.set_bytes_as_ascii(False) # True => show "equb" data as ASCII in a comment
# config.set_hex_dump(False) # True => show code/equs data as hex in a comment

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

hook_subroutine(0x8077, "print_inline_l809f_top_bit_clear", stringhi_hook)
hook_subroutine(0xa99c, "print_inline_osasci_top_bit_clear", stringhi_hook)

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
    pc = stringhiz(addr + 4)
    if memory[pc] == 0:
        # An OS error will be generated and the subroutine won't return.
        return None
    else:
        # A partial OS error will be constructed on the stack and the subroutine
        # will transfer control to the instruction following the partial error.
        return pc

# XXX: "precheck" because it does *something* using &10DD/&9E30 first, probably
# a better name available with more understanding.
hook_subroutine(0x8023, "generate_error_precheck_disc", generate_error_hook)
hook_subroutine(0x802e, "generate_error_precheck_bad", generate_error_hook)
hook_subroutine(0x8038, "generate_error_precheck", generate_error_hook)
hook_subroutine(0x8048, "generate_error", generate_error_hook)
hook_subroutine(0x804f, "generate_error2", generate_error_hook)

stringcr(0x9546)
stringcr(0x954e)


pc = 0x861c
label(pc, "command_table")
expr_label(pc + 1, "command_table+1")
def command_table_entries(n):
    global pc
    for i in range(n):
        pc = stringhi(pc)
        pc = rts_code_ptr(pc + 1, pc)
        pc += 1 # XXX: what are we skipping here?
command_table_entries(20)
pc += 2 # XXX
command_table_entries(7)
pc += 2 # XXX
command_table_entries(2)

pc = 0xba30
label(pc, "sram_table")
expr_label(pc + 1, "sram_table+1")
for i in range(7):
    pc = stringhi(pc)
    # We could almost just call rts_code_ptr() but there's a &FFFF in the table
    # which doesn't correspond to a valid address. (We could obviously cope with
    # this in other ways, such as disassembling the first part of the table
    # separately.)
    code_at = get_u16_be(pc) + 1
    if code_at <= 0xffff:
        rts_code_ptr(pc + 1, pc)
    pc += 2

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

label(0x9066, "nmi_handler2_rom_start_minus_1")
entry(0x9067, "nmi_handler2_rom_start")
entry(0x907c) # XXX: how is this code reached?
label(0x90fb, "nmi_handler2_rom_end")

entry(0x80d3) # XXX: how is this code reached?
entry(0x8441) # XXX: how is this code reached?
entry(0x8483) # XXX: how is this code reached?
entry(0x881b) # XXX: how is this code reached?
entry(0x8870) # XXX: how is this code reached?
entry(0x8a32) # XXX: how is this code reached?
entry(0x9030) # XXX: how is this code reached?
entry(0x9785) # XXX: how is this code reached?
entry(0x97b6) # XXX: how is this code reached?
entry(0x97c9) # XXX: how is this code reached?
entry(0x988b) # XXX: how is this code reached?
entry(0x98d7) # XXX: how is this code reached?
entry(0x9906) # XXX: how is this code reached?
entry(0x9980) # XXX: how is this code reached?
entry(0x999b) # XXX: how is this code reached?
entry(0x99be) # XXX: how is this code reached?
entry(0x9c0c) # XXX: how is this code reached?
entry(0x9d72) # XXX: how is this code reached?
entry(0x9d9b) # XXX: how is this code reached?
entry(0x9e5d) # XXX: how is this code reached?
entry(0xac3b) # XXX: how is this code reached?
entry(0xacb2) # XXX: how is this code reached?
entry(0xaf38) # XXX: how is this code reached?
entry(0xaf79) # XXX: how is this code reached?
entry(0xaf7c) # XXX: how is this code reached?
entry(0xaf7f) # XXX: how is this code reached?
entry(0xaffd) # XXX: how is this code reached?
entry(0xb047) # XXX: how is this code reached?
entry(0xb736) # XXX: how is this code reached?
entry(0xbf8b) # XXX: how is this code reached?

pc = 0x85d3
label(pc, "opt4_table")
for i in range(4):
    pc = string(pc, 4)

go()
