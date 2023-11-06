"""
Acme assembler
"""

from __future__ import print_function
import sys

import config
import utils
import assembler
import traceback

class Acme(assembler.Assembler):
    """This class encapsulates acme-specific syntax and features."""

    def __init__(self):
        super(assembler.Assembler, self).__init__()
        self.nonstandard_used = False

    def get_name(self):
        return "acme"

    def cpus_supported(self):
        return ["6502", "65c02"]

    def hex2(self, n):
        return "$%s" % utils.plainhex2(n)

    def hex(self, n):
        # Use two digits for addresses in zero page, otherwise four digits.
        if n <= 0xff:
            return self.hex2(n)
        else:
            return "$%s" % utils.plainhex4(n)

    def hex4(self, n):
        # Normally this should output four digits of hex, but...
        # Older versions of acme don't like things like:
        #
        #     L00A4 = $00A4
        #     LDA (L00A4),Y
        #
        # Because the label's value is defined with four hex digits, acme made
        # the assumption that the address is not zero page. To avoid the issue
        # we only use four digits when necessary.
        return self.hex(n)

    def inline_label(self, name):
        # text for defining a label in the first column.
        return "%s" % name

    def explicit_label(self, name, value, offset=None, align=0):
        # Output when declaring a label with an explicit value:
        #
        #   i.e. 'label = value'
        #
        # with an optional offset added to the value, and optional column
        # alignment at the equals sign.
        return "%s= %s%s" % (utils.tab_to(name + " ", align), value, "" if offset is None else "+%d" % offset)

    def comment_prefix(self):
        return ";"

    def disassembly_start(self):
        # Preamble to be output at the start of the disassembly.
        result = []

        if self.output_filename:
            result.extend(["!to \"%s\", plain" % (self.output_filename)])

        if config.get_cmos():
            result.extend(["!cpu 65c02", ""])
        elif self.nonstandard_used:
            # TODO: Is this the right !cpu argument?
            result.extend(["!cpu 6510", ""])
        return result

    def code_start(self, start_addr, end_addr, first):
        # At the start of the code we provide the address at which to assemble.
        return ["", "%s* = %s" % (utils.make_indent(1), self.hex4(start_addr)), ""]

    def code_end(self):
        return []

    def pseudopc_start(self, dest, source, length):
        # When assembling code at a different address to where it will actually execute,
        # it is surrounded by '!pseudopc <execution-address> { <code> }'
        return ["", utils.force_case("!pseudopc %s {" % self.hex(dest))]

    def pseudopc_end(self, dest, source, length):
        return ["}", ""]

    def disassembly_end(self):
        # At the end of the assembly, we output assertions.
        result = []
        spa = sorted((str(expr), self.hex(value)) for expr, value in self.pending_assertions.items())
        old = ("", 0)
        for expr, value in spa:
            if old != (expr, value):
                result.append("%s (%s) != %s {" % (utils.force_case("!if"), expr, value))
                result.append('%s%s "Assertion failed: %s == %s"' % (utils.make_indent(1), utils.force_case("!error"), expr, value))
                result.append("}")
            old = (expr, value)
        return result

    def force_abs_instruction(self, instruction, prefix, operand, suffix):
        # Ensure the instruction uses an absolute address rather than a zero
        # page address. e.g. 'lda+2 addr'
        return utils.LazyString("%s%s+2 %s%s%s", utils.make_indent(1), instruction, prefix, operand, suffix)

    def force_zp_label_prefix(self):
        # Prefix to take the low byte of a label
        return "<"

    def byte_prefix(self):
        # For outputting bytes
        return utils.force_case("!byte ")

    def word_prefix(self):
        # For outputting words
        return utils.force_case("!word ")

    def string_prefix(self):
        # For outputting strings
        return utils.force_case("!text ")

    def string_chr(self, i):
        # When composing a literal character, this returns a character string
        # from an integer, or None if not possible
        if i == ord('\\'):
            return None
        if i == ord('"'):
            return None
        if utils.isprint(i):
            return chr(i)
        return None

    def binary_format(self, s):
        # For outputting a value as binary
        return "%" + s

    def picture_binary(self, s):
        # Converts a string of '0' and '1's into '.' and '#'s for visualising
        # data
        return s.replace("0", ".").replace("1", "#")

    def sanitise(self, s):
        return s

    def nonstandard_mnemonic(self, opcode):
        # TODO: Populate this fully
        mnemonic = {
            0x03: "SLO",
            0x07: "SLO",
            0x0b: "ANC",
            0x0f: "SLO",
            0x13: "SLO",
            0x17: "SLO",
            0x1b: "SLO",
            0x1f: "SLO",
            0x4b: "ALR",
            0x8b: "ANE",
        }.get(opcode, None)
        if mnemonic is not None:
            self.nonstandard_used = True
        return mnemonic

config.set_assembler(Acme())
