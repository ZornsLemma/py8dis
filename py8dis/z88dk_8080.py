from __future__ import print_function
import sys

import classification
import config
import utils

config.set_formatter(sys.modules[__name__])

_pending_assertions = {}

def set_output_filename(filename):
    # Irrelevant for z88dk, accepted for compatibility with beebasm.
    pass

def hex2(n):
    return "$%s" % utils.plainhex2(n)

def hex(n):
    if n <= 0xff:
        return hex2(n)
    else:
        return "$%s" % utils.plainhex4(n)

def hex4(n):
    return hex(n)

def inline_label(name):
    return "%s:" % name

def explicit_label(name, value, offset=None):
    return "%s EQU %s%s" % (name, value, "" if offset is None else "+%d" % offset)

def comment_prefix():
    return ";"

def assert_expr(expr, value):
    _pending_assertions[expr] = value

def set_cmos(b):
    pass

def disassembly_start():
    return []

def code_start(start_addr, end_addr):
    return ["", "%sORG %s" % (utils.make_indent(1), hex4(start_addr)), ""]

def code_end():
    return []

def pseudopc_start(dest, source, length):
    return ["", utils.force_case("; TODO: !pseudopc %s {" % hex(dest))]

def pseudopc_end(dest, source, length):
    return ["; TODO: }", ""]

def disassembly_end():
    result = []
    spa = sorted((str(expr), hex(value)) for expr, value in _pending_assertions.items())
    for expr, value in spa:
        result.append("; ASSERT ((%s) == %s)" % (expr, value))
    return result

def force_abs_instruction(instruction, prefix, operand, suffix):
    return utils.LazyString("%s%s %s%s%s", utils.make_indent(1), instruction, prefix, operand, suffix)

def byte_prefix():
    return utils.force_case("DB ")

def word_prefix():
    return utils.force_case("DW ")

def string_prefix():
    return utils.force_case("DB ")

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
    return "%\"" + s.replace("0", "-").replace("1", "#").replace("%", "") + "\""

def sanitise(s):
    return s
