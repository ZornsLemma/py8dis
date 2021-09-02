from __future__ import print_function
import sys

import a as SFTODOA
import memory

memory.formatter[0] = sys.modules[__name__]

output_filename = None

def set_output_filename(filename):
    global output_filename
    output_filename = filename

def hex2(n):
    return "&%s" % SFTODOA.plainhex2(n)

def hex4(n):
    return "&%s" % SFTODOA.plainhex4(n)

def inline_label(name):
    return ".%s" % name

def explicit_label(name, value, offset=None):
    return "%s = %s%s" % (name, value, "" if offset is None else "+%d" % offset)

# TODO: Get rid of this now we have comment_prefix()
def comment(text):
    return "\n".join("; %s" % line for line in text.split("\n"))

def comment_prefix():
    return ";"

def code_start(start_addr, end_addr):
    return (SFTODOA.force_case(
        "    org %s\n" % hex4(start_addr) +
        "    guard %s\n" % hex4(end_addr)) +
        ".pydis_start\n")

def code_end():
    s = (
        "\n" +
        ".pydis_end\n" +
        "\n")
    s += force_case("save")
    if output_filename is None:
        s += " pydis_start, pydis_end"
    else:
        s += ' "%s", pydis_start, pydis_end' % output_filename
    return s

def byte_prefix():
    return SFTODOA.force_case("    equb ")

def word_prefix():
    return SFTODOA.force_case("    equw ")

def string_prefix():
    return SFTODOA.force_case("    equs ")
