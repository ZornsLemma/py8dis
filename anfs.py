from commands import * # TODO?
import acorn

# TODO: Move the following into other files or rename stuff to implement this directly - this is just to experiment
def string_n(addr, n):
    add_classification(addr, String(n))

def label(addr, name):
    add_label(addr, name)

def comment(addr, text):
    add_comment(addr, text)

def expr(addr, s):
    expressions[addr] = s

def data(addr, n): # TODO: Default n=1?
    add_classification(addr, Data(n))

# TODO: End of "to move" black

load("anfs418.orig", 0x8000)

acorn.label_os_entry_points() # TODO: label_os_api()?
acorn.is_sideways_rom() # TODO: rename?

label(0x01, "service_claim_absolute_workspace")
label(0x0f, "service_vectors_changed")
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
string_n(0x96b5, 3)

string_cr(0x8d0f)
string_nul(0x8d38)

# TODO: Something analogous to beebdis's "pc" to avoid counting bytes would probably be helpful - or will I just make more of an effort to return "pc" and let user code handle it itself?
pc = 0xa3f0
for i in range(10):
    pc = string_hi(pc)
    pc = rts_address(pc)
pc += 1
for i in range(17):
    pc = string_hi(pc)
    pc = rts_address(pc)
pc += 1
pc = rts_address(pc) # TODO: ?
for i in range(2):
    pc = string_hi(pc)
    pc = rts_address(pc)
pc += 1
for i in range(6):
    pc = string_hi(pc)
    pc += 2

# At L864D there is some code to patch what is probably a target address using L8869,Y and L8861,Y, although I don't know what values Y can have, so I'm guessing. This code also does an RTS transfer to "RTS address" &86xx using a table at L8600 with the same values of Y. The fact L8869 and L8861 are 8 bytes apart suggest there are 8 values here, and this seems to fill in a group of otherwise dead data/code when combined with the L8600 connection.
min_y = 0x81
for i in range(8):
    if True:
        split_jump_table_entry(0x8869 + min_y + i, 0x8861 + min_y + i, 0)
        rts_low_addr = 0x8600 + min_y + i
        target_addr = (0x8600 + memory[rts_low_addr]) + 1
        labelled_entry_point(target_addr)
        #print("XK", hex(target_addr))
        expr(rts_low_addr, "lo(%s)-1" % get_label(target_addr))

string_cr(0xa17c) # preceding BNE is always taken
data(0xaefb, 1)
#string_n(0xaefb, 4)

label((0x421-0x400)+0xbf04, "copied_to_421")
entry_points.append((0x421-0x400)+0xbf04)

labelled_entry_point(0x89a7) # TODO: rename routine()?
labelled_entry_point(0x89b5)

labelled_entry_point(0xbf04)
labelled_entry_point(0xbf07)
labelled_entry_point(0xbf0a)
labelled_entry_point(0xbf2c)
labelled_entry_point(0xbf88)
labelled_entry_point(0xbfd2)

# This subroutine prints non-top-bit-set characters following it, then continues
# execution at the first top-bit-set byte following it.
label(0x9145, "print_inline_top_bit_clear")
def print_inline_top_bit_clear_hook(target, addr):
    addr += 3
    initial_addr = addr
    while memory[addr] & 0x80 == 0:
        addr += 1
    add_classification(initial_addr, String(addr - initial_addr))
    return addr
jsr_hooks[0x9145] = print_inline_top_bit_clear_hook

# This subroutine generates an error using the following NUL-terminated string.
# TODO: I think it may actually return in some cases - need to study its code more
# TODO: The fact there are two entry points also suggests something slightly cleverer going on
label(0x96b8, "generate_error_inline")
label(0x96d4, "generate_error_inline2")
label(0x96d1, "generate_error_inline3")
def generate_error_inline_hook(target, addr):
    inline_nul_string_hook(target, addr) # discard return address
    return None
jsr_hooks[0x96b8] = generate_error_inline_hook
jsr_hooks[0x96d4] = generate_error_inline_hook
jsr_hooks[0x96d1] = generate_error_inline_hook

for i in range(36):
    split_jump_table_entry(0x89ca + 1 + i, 0x89ef + 1 + i, 1)

go()
