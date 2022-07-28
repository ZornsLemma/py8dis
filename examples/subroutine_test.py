from commands import *
import acorn
import config

acorn.bbc()

config.set_label_references(False)

load(0x2000, "subroutine_test.orig", "6502", "c7eb4093b2e75b26e5023107db152f27")

subroutine(0x2000, "start")
subroutine(0x200e, "print_message", "Print welcome message", "Displays the welcome message at the start of the code. Only used once.")
label(0x2010, "print_loop")
label(0x201c, "welcome_message")

subroutine(0x2026, "print_decimal_number", None, "Print a byte as a decimal number 000-255", on_entry={'a': "number to print"})
label(0x2028, "loop_next_decimal_digit")
char(0x2029)
label(0x202a, "loop_finding_digit")
comment(0x2033, "ALWAYS branch", inline=True)
label(0x2035, "found_digit")
label(0x203f, "decimal_digits")
decimal(0x2040,2)
subroutine(0x2042,
    "print_hex_number",
    "Print a byte as hexadecimal",
    "Prints a two digit hex number 00-FF.",
    on_entry={'a': "number to print"},
    on_exit={'a': "corrupted", 'x': "preserved", 'y': "preserved"})
label(0x204d, "print_hex_digit")
char(0x2051)

label(0x70, "test_byte")

go()
