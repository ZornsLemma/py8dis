from __future__ import print_function
import sys

import a as SFTODOA
import memory

memory.formatter[0] = sys.modules[__name__]

explicit_a = False

def hex2(n):
    return "$%s" % SFTODOA.plainhex2(n)

def hex4(n):
    # At least one version of acme doesn't like things like:
    #     L00A4 = $00A4
    #     LDA (L00A4),Y
    # because the label's value is defined with a four digit value, so we avoid
    # this unless it's necessary.
    if n <= 0xff:
        return hex2(n)
    else:
        return "$%s" % SFTODOA.plainhex4(n)

def inline_label(name):
    return "%s" % name

def explicit_label(name, value, offset=None):
    return "%s = %s%s" % (name, value, "" if offset is None else "+%d" % offset)

def comment_prefix():
    return ";"

def code_start(start_addr, end_addr):
    return "    * = %s" % hex4(start_addr)

def code_end():
    return ""

def byte_prefix():
    return SFTODOA.force_case("    !byte ")

def word_prefix():
    return SFTODOA.force_case("    !word ")

def string_prefix():
    return SFTODOA.force_case("    !text ")
