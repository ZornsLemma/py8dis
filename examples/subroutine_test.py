from commands import *
import acorn
import config

config.set_label_references(False)

load(0x2000, "orig/subroutine_test.orig", "6502")
acorn.bbc()

subroutine(0x2000, "start")
subroutine(0x2010,
    "print_message",
    "Print welcome message",
    "Displays the welcome message at the start of the code. Only used once.",
    on_exit={'x': "Length of the message just printed",
             'y': "(preserved)"})
label(0x2012, "print_loop")
label(0x201e, "welcome_message")

subroutine(0x2029, "print_decimal_number", None, "Print a byte as a decimal number 000-255", on_entry={'a': "number to print"})
label(0x202b, "loop_next_decimal_digit")
char(0x202c)
label(0x202d, "loop_finding_digit")
comment(0x2036, "ALWAYS branch", inline=True)
label(0x2038, "found_digit")
label(0x2042, "decimal_digits")
decimal(0x2043,2)
subroutine(0x2045,
    "print_hex_number",
    "Print a byte as hexadecimal",
    "Prints a two digit hex number 00-FF.",
    on_entry={'a': "number to print"},
    on_exit={'a': "(corrupted)", 'x': "(preserved)", 'y': "(preserved)"})
label(0x2050, "print_hex_digit")
char(0x2054)

label(0x70, "test_byte")

go()
