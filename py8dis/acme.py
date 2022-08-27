from __future__ import print_function
import sys

import classification
import config
import utils
import assembler

class Acme(assembler.Assembler):
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
        if n <= 0xff:
            return self.hex2(n)
        else:
            return "$%s" % utils.plainhex4(n)

    def hex4(self, n):
        # At least one version of acme doesn't like things like:
        #     L00A4 = $00A4
        #     LDA (L00A4),Y
        # because the label's value is defined with a four digit value, so we avoid
        # this unless it's necessary.
        return self.hex(n)

    def inline_label(self, name):
        return "%s" % name

    def explicit_label(self, name, value, offset=None, align=0):
        return "%s= %s%s" % (utils.tab_to(name + " ", align), value, "" if offset is None else "+%d" % offset)

    def comment_prefix(self):
        return ";"

    def assert_expr(self, expr, value):
        self.pending_assertions[expr] = value

    def disassembly_start(self):
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
        return ["", "%s* = %s" % (utils.make_indent(1), self.hex4(start_addr)), ""]

    def code_end(self):
        return []

    def pseudopc_start(self, dest, source, length):
        return ["", utils.force_case("!pseudopc %s {" % self.hex(dest))]

    def pseudopc_end(self, dest, source, length):
        return ["}", ""]

    def disassembly_end(self):
        result = []
        spa = sorted((str(expr), self.hex(value)) for expr, value in self.pending_assertions.items())
        old = ("", 0)
        for expr, value in spa:
            if (expr != old[0]) or (value != old[1]):
                result.append("%s (%s) != %s {" % (utils.force_case("!if"), expr, value))
                result.append('%s%s "Assertion failed: %s == %s"' % (utils.make_indent(1), utils.force_case("!error"), expr, value))
                result.append("}")
            old = (expr, value)
        return result

    def force_abs_instruction(self, instruction, prefix, operand, suffix):
        return utils.LazyString("%s%s+2 %s%s%s", utils.make_indent(1), instruction, prefix, operand, suffix)

    def force_zp_label_prefix(self):
        return "<"

    def byte_prefix(self):
        return utils.force_case("!byte ")

    def word_prefix(self):
        return utils.force_case("!word ")

    def string_prefix(self):
        return utils.force_case("!text ")

    def string_chr(self, i):
        if i == ord('\\'):
            return None
        if i == ord('"'):
            return None
        if utils.isprint(i):
            return chr(i)
        return None

    def binary_format(self, s):
        return "%" + s

    def picture_binary(self, s):
        return s.replace("0", ".").replace("1", "#")

    def sanitise(self, s):
        return s

    def nonstandard_mnemonic(self, opcode):
        # TODO: Populate this fully
        mnemonic = {
            0x03: "SLO",
            0x07: "SLO",
            0x0f: "SLO",
            0x17: "SLO",
            0x1b: "SLO",
            0x1f: "SLO",
            0x8b: "ANE",
        }.get(opcode, None)
        if mnemonic is not None:
            self.nonstandard_used = True
        return mnemonic

config.set_assembler(Acme())
