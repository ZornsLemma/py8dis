from __future__ import print_function
import sys

import classification
import config
import utils

config.set_formatter(sys.modules[__name__])

explicit_a = False

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

def explicit_label(name, value, offset=None):
    return "%s = %s%s" % (name, value, "" if offset is None else "+%d" % offset)

def comment_prefix():
    return ";"

def code_start(start_addr, end_addr):
    return "    * = %s" % hex4(start_addr)

def code_end():
    return ""

def abs_suffix():
    return "+2"

def byte_prefix():
    return utils.force_case("    !byte ")

def word_prefix():
    return utils.force_case("    !word ")

def string_prefix():
    return utils.force_case("    !text ")

def string_chr(c):
    if c == ord('\\'):
        return '\\\\'
    return chr(c)
