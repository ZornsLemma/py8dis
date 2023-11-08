"""
z88dk assembler (for 8080)
"""

from __future__ import print_function
import sys

import config
import utils
import assembler

class Z88DK(assembler.Assembler):
    """This class encapsulates z88dk-specific syntax and features."""

    def __init__(self):
        super(assembler.Assembler, self).__init__()

    def get_name(self):
        return "z88dk"

    def cpus_supported(self):
        return ["8080"]

    def hex2(self, n):
        return "$%s" % utils.plainhex2(n)

    def hex(self, n):
        if n <= 0xff:
            return self.hex2(n)
        else:
            return "$%s" % utils.plainhex4(n)

    def hex4(self, n):
        return self.hex(n)

    def inline_label(self, name):
        return "%s:" % name

    def explicit_label(self, name, value, offset=None, align=0):
        return "%sEQU %s%s" % (utils.tab_to(name + " ", align), value, "" if offset is None else "+%d" % offset)

    def comment_prefix(self):
        return ";"

    def disassembly_start(self):
        # Preamble to be output at the start of the disassembly.
        return []

    def code_start(self, start_addr, end_addr, first):
        # At the start of the code we provide the address at which to assemble.
        return ["", "%sORG %s" % (utils.make_indent(1), self.hex4(start_addr)), ""]

    def code_end(self):
        return []

    def pseudopc_start(self, dest, source, length):
        # Used when assembling code at a different address to where it will
        # actually execute. Sadly, z88dk does not support this.
        return ["", utils.force_case("; TODO: !pseudopc %s {" % self.hex(dest))]

    def pseudopc_end(self, dest, source, length):
        # Sadly, z88dk does not support this
        return ["; TODO: }", ""]

    def disassembly_end(self):
        result = []

        # At the end of the assembly, we output assertions.
        if config.get_include_assertions():
            spa = sorted((str(expr), self.hex(value)) for expr, value in self.pending_assertions.items())
            for expr, value in spa:
                result.append("; ASSERT ((%s) == %s)" % (expr, value))

        return result

    def force_abs_instruction(self, instruction, prefix, operand, suffix):
        # Ensure the instruction uses an absolute address rather than a zero
        # page address. e.g. 'lda !addr,x'
        return utils.LazyString("%s%s %s%s%s", utils.make_indent(1), instruction, prefix, operand, suffix)

    def force_zp_label_prefix(self):
        # Prefix to take the low byte of a label
        return ""

    def byte_prefix(self):
        # For outputting bytes
        return utils.force_case("DB ")

    def word_prefix(self):
        # For outputting words
        return utils.force_case("DW ")

    def string_prefix(self):
        # For outputting strings
        return utils.force_case("DB ")

    def string_chr(self, i):
        # When composing a literal character, this returns a character string
        # from an integer, or None if not possible
        if i == ord('\\'):
            return '\\\\'
        if i == ord('"'):
            return '\\"'
        if utils.isprint(i):
            return chr(i)
        return None

    def binary_format(self, s):
        # For outputting a value as binary
        return "%" + s

    def picture_binary(self, s):
        # Converts a string of '0' and '1's into '-' and '#'s for visualising
        # data
        return "%\"" + s.replace("0", "-").replace("1", "#").replace("%", "") + "\""

    def sanitise(self, s):
        return s

config.set_assembler(Z88DK())
