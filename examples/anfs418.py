from commands import *
from trace6502 import hook_subroutine
import acorn

# config.set_bytes_as_ascii(False)

load(0x8000, "anfs418.orig", "0926bcb6f47458f8c4aed5364ff1122d")
#set_output_filename("anfs418.rom")

acorn.bbc()
acorn.is_sideways_rom()

move(0x400, 0xbf04, 0xbf95-0xbf04) # XXX: length is a guess

constant(0x01, "service_claim_absolute_workspace")
constant(0x0f, "service_vectors_changed")
expr(0x8a17, "service_vectors_changed")
expr(0x8a42, "service_claim_absolute_workspace")
expr(0x8ed9, "service_claim_absolute_workspace")
comment(0x8a1a, "Extra processing for vectors changed service call")
comment(0x8a45, "Extra processing for absolute workspace claim service call")
label(0x8a3c, "service_handler_common1")
label(0xbe62, "service_handler_tube_service_calls")
expr(0x8a63, "service_vectors_changed")
label(0x8a5a, "service_handler_common2")
label(0x8aa7, "service_handler_not_vectors_changed")
comment(0x8aae,
"""Call dispatch table entry X+1 for service calls 1<=X<&D.
Call dispatch table entry &D+1 for service call &12.
Don't handle any other service call.
(+1 because jump_table_dispatch_x_plus_y adds 1 if Y=0.)""")

# XXX: Jump table entry 0 is probably irrelevant.
# Jump table entries 1-&D inclusive are for service call handlers.
# There are probably some more given the use of Y by jump_table_dispatch_x_plus_y
comment(0x8e49, "Note that if Y=0, this will add 1 instead of 0.")
label(0x8e49, "jump_table_dispatch_x_plus_y")
label(0x89ef, "jump_table_high")
label(0x89ca, "jump_table_low")
label(0x8e58, "just_rts")
label(0x8ea5, "service_handler_claim_absolute_workspace")
label(0x8eb8, "service_handler_claim_private_workspace")

label(0x8eac, "clamp_absolute_workspace_and_save")

label(0x9611, "sta_e09_if_d6c_b7_set")
label(0x96b4, "error_template_minus_1")

pc = 0xa3f0
def stringhi_rts_code_ptr_block(n):
    global pc
    for i in range(n):
        pc = stringhi(pc)
        pc += 1 # XXX: What's this byte mean?
        pc = rts_code_ptr(pc)
stringhi_rts_code_ptr_block(10)
pc += 1 # XXX: ?
stringhi_rts_code_ptr_block(17)
pc += 1 # XXX: ?
pc = rts_code_ptr(pc) # XXX: ?
stringhi_rts_code_ptr_block(2)
pc += 1
for i in range(6):
    pc = stringhi(pc)
    pc += 3

# XXX: At &864D there's some code to patch an address (probably a JMP/JSR
# operand) at &D3E/D3F using a pair of tables at &8869 (low byte) and &8861
# (high byte). abs,Y addressing is used and I don't currently know what range of
# values Y can have. The fact &8869 and &8861 are eight bytes apart suggests
# there are 8 possible values of Y. There's a table of RTS-compatible low bytes
# accessed via &8600,Y as well and looking at the data in the disassembly seems
# to suggest 8 possible values again and allows us to infer the first acceptable
# Y value is &81.
min_y = 0x81
for i in range(8):
    # There's a split table of code pointers for use via LDA:PHA:LDA:PHA:RTS at
    # &8869+x (low byte) and &8861+x (high byte).
    code_ptr(0x8869 + min_y + i, 0x8861 + min_y + i)
    # There's also a low byte only table of code pointers at &8600+x; the high
    # byte of &86 is hard-coded at &8679. We manually do half of what code_ptr()
    # does; this could obviously be moved into commands.py as a standard
    # function but I am not sure it's useful enough.
    addr = 0x8600 + min_y + i
    code_at = (0x8600 + memory[addr]) + 1
    entry(code_at)
    expr(addr, utils.LazyString("<((%s)-1)", get_label(code_at, addr)))

nonentry(0xa17c) # preceding BNE is always taken
nonentry(0xaefb) # preceding BNE is always taken

#entry((0x421-0x400)+0xbf04, "copied_to_421")

entry(0x89a7)
entry(0x89b5)

#entry(0xbf04)
#entry(0xbf07)
#entry(0xbf0a)
#entry(0xbf2c)
#entry(0xbf88)
#entry(0xbf90)
entry(0xbfd2)
entry(0xbf95)

# This subroutine prints non-top-bit-set characters following it, then continues
# execution at the first top-bit-set byte following it.
hook_subroutine(0x9145, "print_inline_top_bit_clear", stringhi_hook)

# This subroutine generates an error using the following NUL-terminated string.
# XXX: The fact there are two entry points suggests something slightly clever going on
def stringz_no_return_hook(target, addr):
    stringz_hook(target, addr) # discard return address
    return None
hook_subroutine(0x96b8, "generate_error_inline", stringz_no_return_hook)
hook_subroutine(0x96d4, "generate_error_inline2", stringz_no_return_hook)
hook_subroutine(0x96d1, "generate_error_inline3", stringz_no_return_hook)

for i in range(36):
    rts_code_ptr(0x89ca + 1 + i, 0x89ef + 1 + i)

def stringz_block(pc, n):
    for i in range(n):
        pc = stringz(pc)

go()
