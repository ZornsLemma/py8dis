from __future__ import print_function
import sys

import classification
import config
import utils

config.formatter[0] = sys.modules[__name__]

output_filename = None

explicit_a = True

def set_output_filename(filename):
    global output_filename
    output_filename = filename

def hex2(n):
    return "&%s" % utils.plainhex2(n)

def hex4(n):
    return "&%s" % utils.plainhex4(n)

def inline_label(name):
    return ".%s" % name

def explicit_label(name, value, offset=None):
    return "%s = %s%s" % (name, value, "" if offset is None else "+%d" % offset)

def comment_prefix():
    return ";"

def code_start(start_addr, end_addr):
    return (utils.force_case(
        "    org %s\n" % hex4(start_addr) +
        "    guard %s\n" % hex4(end_addr)) +
        ".pydis_start\n")

def code_end():
    s = (
        "\n" +
        ".pydis_end\n" +
        "\n")
    s += utils.force_case("save")
    if output_filename is None:
        s += " pydis_start, pydis_end"
    else:
        s += ' "%s", pydis_start, pydis_end' % output_filename
    return s

def abs_suffix():
    return ""

def byte_prefix():
    return utils.force_case("    equb ")

def word_prefix():
    return utils.force_case("    equw ")

def string_prefix():
    return utils.force_case("    equs ")

def string_chr(c):
    return chr(c)
