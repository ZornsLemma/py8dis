from __future__ import print_function
import sys

import assembler
import classification
import config
import disassembly
import memorymanager
import movemanager
import utils

class Beebasm(assembler.Assembler):
    def __init__(self):
        super(assembler.Assembler, self).__init__()

        self.explicit_a = True
        self.output_filename = None

    def get_name(self):
        return "beebasm"

    def cpus_supported(self):
        return ["6502", "65c02"]

    def hex2(self, n):
        return "&%s" % utils.plainhex2(n)

    def hex4(self, n):
        return "&%s" % utils.plainhex4(n)

    def hex(self, n):
        if n <= 0xff:
            return self.hex2(n)
        else:
            return self.hex4(n)

    def inline_label(self, name):
        return ".%s" % name

    def explicit_label(self, name, value, offset=None, align=0):
        return "%s= %s%s" % (utils.tab_to(name + " ", align), value, "" if offset is None else "+%d" % offset)

    def comment_prefix(self):
        return ";"

    def assert_expr(self, expr, value):
        self.pending_assertions[expr] = value

    def disassembly_start(self):
        if config.get_cmos():
            return [utils.make_indent(1) + utils.force_case("cpu 1"), ""]
        return []

    def code_start(self, start_addr, end_addr, first):
        result = ["", utils.make_indent(1) + utils.force_case("org %s" % self.hex4(start_addr))]
        result.append("")
        return result

    def code_end(self):
        return []

    def pseudopc_start(self, dest, source, length):
        result = [""]
        result.append(utils.make_indent(1) + utils.force_case("org %s" % self.hex(dest)))
        # TODO: We will need some labels in pseudopc_end() but by then
        # it will be too late to create them, so do it now. Is this
        # hacky or OK?
        #
        # TODO: The idea of including move_id here is to force the
        # labels to be emitted "around" the pseudopc-emulation block,
        # which is both more readable and necessary in some cases to
        # avoid assembly problems where a label is not forward
        # declared. It isn't working quite right yet.
        move_id = movemanager.move_id_for_binary_addr[source]
        disassembly.get_label(dest, source, move_id)
        disassembly.get_label(dest + length, source, move_id)
        disassembly.get_label(source, source, move_id)
        return result

    # TODO: General comment - I've currently given up on generating
    # "guard" for beebasm, I can probably do this later but on a "whole
    # program" basis - note that guard sets m_aFlags[x], it is not a
    # "guard=x" and there's only one such guard active at a time, so we
    # need to set it at the end of distinct non-adjoining ranges (I
    # think)
    def pseudopc_end(self, dest, source, length):
        assert isinstance(dest, memorymanager.RuntimeAddr)
        assert isinstance(source, memorymanager.BinaryAddr)

        result = []
        # TODO: Use LazyString?
        move_id = movemanager.move_id_for_binary_addr[source]
        result.append("%s%s %s + (%s - %s)" % (utils.make_indent(1), utils.force_case("org"), disassembly.get_label(source, source, move_id), disassembly.get_label(dest + length, source, move_id), disassembly.get_label(dest, source, move_id)))
        result.append("%s%s %s, %s, %s" % (utils.make_indent(1), utils.force_case("copyblock"), disassembly.get_label(dest, source, move_id), disassembly.get_label(dest + length, source, move_id), disassembly.get_label(source, source, move_id)))
        result.append("%s%s %s, %s" % (utils.make_indent(1), utils.force_case("clear"), disassembly.get_label(dest, source, move_id), disassembly.get_label(dest + length, source, move_id)))
        result.append("")
        return result

    def disassembly_end(self):
        result = []
        spa = sorted((str(expr), self.hex(value)) for expr, value in self.pending_assertions.items())

        old = ("", 0)
        for expr, value in spa:
            if (expr != old[0]) or (value != old[1]):
                result.append(utils.make_indent(1) + utils.force_case("assert ") + "%s == %s" % (expr, value))
            old = (expr, value)
        result.append("")

        s = utils.force_case("save")
        if self.output_filename is None:
            s += " pydis_start, pydis_end"
        else:
            s += ' "%s", pydis_start, pydis_end' % self.output_filename
        result.append(s)
        return result

    def force_abs_instruction(self, instruction, prefix, operand, suffix):
        return None

    def force_zp_label_prefix(self):
        return ""

    def byte_prefix(self):
        return utils.force_case("equb ")

    def word_prefix(self):
        return utils.force_case("equw ")

    def string_prefix(self):
        return utils.force_case("equs ")

    def string_chr(self, c):
        if utils.isprint(c) and chr(c) not in ('"'):
            return chr(c)
        return None

    def binary_format(self, s):
        return "%" + s

    def picture_binary(self, s):
        return s

    def sanitise(self, s):
        return s

config.set_assembler(Beebasm())
