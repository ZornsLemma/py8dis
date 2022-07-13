from __future__ import print_function
import sys

import classification
import config
import disassembly # TODO!?
import movemanager
import utils

config.set_formatter(sys.modules[__name__])

output_filename = None

explicit_a = True

_pending_assertions = {}
_disassembly_start = []
_code_end_addr = 0 # TODO: bit hacky

def set_output_filename(filename):
    global output_filename
    output_filename = filename

def hex2(n):
    return "&%s" % utils.plainhex2(n)

def hex4(n):
    return "&%s" % utils.plainhex4(n)

def hex(n):
    if n <= 0xff:
        return hex2(n)
    else:
        return hex4(n)

def inline_label(name):
    return ".%s" % name

def explicit_label(name, value, offset=None):
    return "%s = %s%s" % (name, value, "" if offset is None else "+%d" % offset)

def comment_prefix():
    return ";"

def assert_expr(expr, value):
    _pending_assertions[expr] = value

def set_cmos(b):
    global _disassembly_start
    if b:
        _disassembly_start = [utils.make_indent(1) + utils.force_case("cpu 1"), ""]

def disassembly_start():
    return _disassembly_start

# TODO: end_addr may not be used by any assemblers any more
def code_start(start_addr, end_addr):
    global _code_end_addr
    _code_end_addr = end_addr
    result = ["", utils.make_indent(1) + utils.force_case("org %s" % hex4(start_addr))]
    result.append("")
    return result

def code_end():
    return []

def pseudopc_start(dest, source, length):
    result = [""]
    result.append(utils.make_indent(1) + utils.force_case("org %s" % hex(dest)))
    # TODO: We will need some labels in pseudopc_end() but by then it will be too late to
    # create them, so do it now. Is this hacky or OK?
    # TODO: The idea of including move_id here is to force the labels to be emitted "around" the pseudopc-emulation block, which is both more readable and necessary in some cases to avoid assembly problems where a label is not forward declared. It isn't working quite right yet.
    move_id = movemanager.move_id_for_binary_addr[source]
    disassembly.get_label(dest, source, move_id)
    disassembly.get_label(dest + length, source, move_id)
    disassembly.get_label(source, source, move_id)
    return result

# TODO: General comment - I've currently given up on generating "guard" for beebasm, I can probably do this later but on a "whole program" basis - note that guard sets m_aFlags[x], it is not a "guard=x" and there's only one such guard active at a time, so we need to set it at the end of distinct non-adjoining ranges (I think)
def pseudopc_end(dest, source, length):
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

def disassembly_end():
    result = []
    spa = sorted((str(expr), hex(value)) for expr, value in _pending_assertions.items())
    result.extend(utils.make_indent(1) + utils.force_case("assert ") + "%s == %s" % (expr, value) for expr, value in spa)
    result.append("")

    s = utils.force_case("save")
    if output_filename is None:
        s += " pydis_start, pydis_end"
    else:
        s += ' "%s", pydis_start, pydis_end' % output_filename
    result.append(s)
    return result

def force_abs_instruction(instruction, prefix, operand, suffix):
    return None

def byte_prefix():
    return utils.force_case("equb ")

def word_prefix():
    return utils.force_case("equw ")

def string_prefix():
    return utils.force_case("equs ")

def string_chr(c):
    if utils.isprint(c) and chr(c) not in ('"'):
        return chr(c)
    return None

def binary_format(s):
    return "%" + s

def picture_binary(s):
    return s

def sanitise(s):
    return s
