from commands import *
import acorn

# config.set_bytes_as_ascii(False)

load(0x8000, "anfs418.orig", "0926bcb6f47458f8c4aed5364ff1122d")
set_output_filename("anfs418.rom") # TODO: remove "set_" from name?

acorn.label_os_entry_points() # TODO: label_os_api()?
acorn.is_sideways_rom() # TODO: rename?

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

# TODO: Jump table entry 0 is probably irrelevant.
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
string(0x96b5, 3)

stringcr(0x8d0f)
stringz(0x8d38)

# TODO: Something analogous to beebdis's "pc" to avoid counting bytes would probably be helpful - or will I just make more of an effort to return "pc" and let user code handle it itself?
pc = 0xa3f0
def stringhi_rts_address_block(n):
    global pc
    for i in range(n):
        pc = stringhi(pc)
        pc += 1
        pc = rts_address(pc)
stringhi_rts_address_block(10)
pc += 1
stringhi_rts_address_block(17)
pc += 1
pc = rts_address(pc) # TODO: ?
stringhi_rts_address_block(2)
pc += 1
for i in range(6):
    pc = stringhi(pc)
    pc += 3

# At L864D there is some code to patch what is probably a target address using L8869,Y and L8861,Y, although I don't know what values Y can have, so I'm guessing. This code also does an RTS transfer to "RTS address" &86xx using a table at L8600 with the same values of Y. The fact L8869 and L8861 are 8 bytes apart suggest there are 8 values here, and this seems to fill in a group of otherwise dead data/code when combined with the L8600 connection.
min_y = 0x81
for i in range(8):
    if True:
        split_jump_table_entry(0x8869 + min_y + i, 0x8861 + min_y + i, 0)
        rts_low_addr = 0x8600 + min_y + i
        target_addr = (0x8600 + memory[rts_low_addr]) + 1
        entry(target_addr)
        #print("XK", hex(target_addr))
        expr(rts_low_addr, "(<%s)-1" % get_label(target_addr))

stringcr(0xa17c) # preceding BNE is always taken
byte(0xaefb) # preceding BNE is always taken

entry((0x421-0x400)+0xbf04, "copied_to_421")

entry(0x89a7)
entry(0x89b5)

entry(0xbf04)
entry(0xbf07)
entry(0xbf0a)
entry(0xbf2c)
entry(0xbf88)
entry(0xbfd2)

# This subroutine prints non-top-bit-set characters following it, then continues
# execution at the first top-bit-set byte following it.
# TODO: Probably rename and move this into "standard library" - maybe not, as this is quite unusual (the top bit set character is *not* stripped-and-printed, we return to it)
def print_inline_top_bit_clear_hook(target, addr):
    return stringhi(addr + 3)
hook_subroutine(0x9145, "print_inline_top_bit_clear", print_inline_top_bit_clear_hook)

# TODO: temp beebdis notes:
# - "string" looks ahead but does *not* include the terminator in the string
# - "stringterm" *does* include the terminator in the string
# - "stringz" is like stringterm AFAICS except terminator is always 0
# - "stringhi" does not seem to include terminator (even when the terminator is ascii-with-top-bit set)
# - "stringhiz" does not include the terminator in the string

# This subroutine generates an error using the following NUL-terminated string.
# TODO: I think it may actually return in some cases - need to study its code more
# TODO: The fact there are two entry points also suggests something slightly cleverer going on
def generate_error_inline_hook(target, addr):
    inline_nul_string_hook(target, addr) # discard return address
    return None
hook_subroutine(0x96b8, "generate_error_inline", generate_error_inline_hook)
hook_subroutine(0x96d4, "generate_error_inline2", generate_error_inline_hook)
hook_subroutine(0x96d1, "generate_error_inline3", generate_error_inline_hook)

for i in range(36):
    split_jump_table_entry(0x89ca + 1 + i, 0x89ef + 1 + i, 1)

def stringz_block(pc, n):
    for i in range(n):
        pc = stringz(pc)

stringz_block(0x9022, 12)
stringz_block(0x97b9, 10)

go()

# TODO: Should user-marked data be non-mergeable (non-variable-length) like strings?