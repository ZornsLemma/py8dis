from __future__ import print_function
import sys

import memory

memory.formatter[0] = sys.modules[__name__]

output_filename = None

def set_output_filename(filename):
    global output_filename
    output_filename = filename

def ourhex4(n):
    # TODO: Need to make upper or lower case user configurable
    return "&%04x" % n

def emit_inline_label(name):
    print(".%s" % name)

def emit_explicit_label(name, value):
    print("%s = %s" % (name, value))

def emit_comment(text):
    print("    %s" % text)

def emit_code_start(start_addr, end_addr):
    print("    org %s" % ourhex4(start_addr))
    print("    guard %s" % ourhex4(end_addr))
    print(".pydis_start")
    print()

def emit_code_end():
    print()
    print(".pydis_end")
    print()
    if output_filename is None:
        print("save pydis_start, pydis_end")
    else:
        print('save "%s", pydis_start, pydis_end' % output_filename)
