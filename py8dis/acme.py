from __future__ import print_function
import sys

import classification
import config
import utils

config.set_formatter(sys.modules[__name__])

explicit_a = False

_pending_assertions = {}

def set_output_filename(filename):
    # Irrelevant for acme, accepted for compatibility with beebasm.
    pass

def hex2(n):
    return "$%s" % utils.plainhex2(n)

def hex(n):
    if n <= 0xff:
        return hex2(n)
    else:
        return "$%s" % utils.plainhex4(n)

def hex4(n):
    # At least one version of acme doesn't like things like:
    #     L00A4 = $00A4
    #     LDA (L00A4),Y
    # because the label's value is defined with a four digit value, so we avoid
    # this unless it's necessary.
    return hex(n)

def inline_label(name):
    return "%s" % name

def explicit_label(name, value, offset=None, align=0):
    return "%s= %s%s" % (utils.tab_to(name + " ", align), value, "" if offset is None else "+%d" % offset)

def comment_prefix():
    return ";"

def assert_expr(expr, value):
    _pending_assertions[expr] = value

def disassembly_start():
    if config.get_cmos():
        return ["!cpu 65c02", ""]
    return []

def code_start(start_addr, end_addr, first):
    return ["", "%s* = %s" % (utils.make_indent(1), hex4(start_addr)), ""]

def code_end():
    return []

def pseudopc_start(dest, source, length):
    return ["", utils.force_case("!pseudopc %s {" % hex(dest))]

def pseudopc_end(dest, source, length):
    return ["}", ""]

def disassembly_end():
    result = []
    spa = sorted((str(expr), hex(value)) for expr, value in _pending_assertions.items())
    for expr, value in spa:
        result.append("%s (%s) != %s {" % (utils.force_case("!if"), expr, value))
        result.append('%s%s "Assertion failed: %s == %s"' % (utils.make_indent(1), utils.force_case("!error"), expr, value))
        result.append("}")
    return result

def force_abs_instruction(instruction, prefix, operand, suffix):
    return utils.LazyString("%s%s+2 %s%s%s", utils.make_indent(1), instruction, prefix, operand, suffix)

def force_zp_label_prefix():
    return "<"

def byte_prefix():
    return utils.force_case("!byte ")

def word_prefix():
    return utils.force_case("!word ")

def string_prefix():
    return utils.force_case("!text ")

def string_chr(i):
    if i == ord('\\'):
        return '\\\\'
    if i == ord('"'):
        return '\\"'
    if utils.isprint(i):
        return chr(i)
    return None

def binary_format(s):
    return "%" + s

def picture_binary(s):
    return s.replace("0", ".").replace("1", "#")

def sanitise(s):
    return s
