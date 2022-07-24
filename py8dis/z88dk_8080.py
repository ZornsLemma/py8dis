from __future__ import print_function
import sys

import classification
import config
import utils
import assembler

class Z88DK(assembler.Assembler):
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

    def assert_expr(self, expr, value):
        self.pending_assertions[expr] = value

    def disassembly_start(self):
        return []

    def code_start(self, start_addr, end_addr, first):
        return ["", "%sORG %s" % (utils.make_indent(1), self.hex4(start_addr)), ""]

    def code_end(self):
        return []

    def pseudopc_start(self, dest, source, length):
        return ["", utils.force_case("; TODO: !pseudopc %s {" % self.hex(dest))]

    def pseudopc_end(self, dest, source, length):
        return ["; TODO: }", ""]

    def disassembly_end(self):
        result = []
        spa = sorted((str(expr), self.hex(value)) for expr, value in self.pending_assertions.items())
        for expr, value in spa:
            result.append("; ASSERT ((%s) == %s)" % (expr, value))
        return result

    def force_abs_instruction(self, instruction, prefix, operand, suffix):
        return utils.LazyString("%s%s %s%s%s", utils.make_indent(1), instruction, prefix, operand, suffix)

    def force_zp_label_prefix(self):
        return ""

    def byte_prefix(self):
        return utils.force_case("DB ")

    def word_prefix(self):
        return utils.force_case("DW ")

    def string_prefix(self):
        return utils.force_case("DB ")

    def string_chr(self, i):
        if i == ord('\\'):
            return '\\\\'
        if i == ord('"'):
            return '\\"'
        if utils.isprint(i):
            return chr(i)
        return None

    def binary_format(self, s):
        return "%" + s

    def picture_binary(self, s):
        return "%\"" + s.replace("0", "-").replace("1", "#").replace("%", "") + "\""

    def sanitise(self, s):
        return s

config.set_assembler(Z88DK())
