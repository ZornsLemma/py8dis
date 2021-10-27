# TODO: Rename

import config
import disassembly
import utils

# TODO: These should be user configurable, maybe they can/should live here or maybe they should be in config
indent_spaces = 4
hex_dump_column = 70

def tab_to(s, n):
    assert n >= 0
    return "%*s" % (n, s)

def make_indent(n):
    assert n >= 0
    return (" " * indent_spaces) * n

def add_hex_dump(binary_addr, length, s):
    # TODO: config should allow this to be a no-op
    # TODO: capped_length support as in utils.add_hex_dump()? May want to be a bit cleverer here, not sure yet
    s = tab_to(s, hex_dump_column)
    s += config.formatter().comment_prefix() + " "
    s += formatter().hex4(binary_addr) + " "
    if len(movemanager.move_definitions) > 1:
        runtime_addr = movemanager.b2r(binary_addr)
        if runtime_addr != binary_addr:
                s += formatter().hex4(runtime_addr) + " "
        else:
                s += " "*5
    s += " ".join(formatter().plainhex2(x) for x in config.memory_binary[binary_addr:binary_addr+length])
    return s

def format_classification_line(binary_addr, length, core_str):
    assert utils.is_valid_addr(binary_addr)
    assert length >= 1
    assert isinstance(core_str, six.string_types)
    assert "\n" not in core_str
    indent = 1 # TODO: variable indent
    # TODO: inline comment
    # TODO: multiline things
    s = make_indent(indent) + core_str
    return add_hex_dump(binary_addr, length, s)

def int_formatter(n, bits):
    if n < 10:
        return "%d" % n
    if bits == 8:
        return config.formatter().hex2(n)
    assert bits == 16
    return config.formatter().hex4(n)

def char_formatter(n, bits):
    c = config.formatter().string_chr(n)
    if c is not None:
        return "'%s'" % c
    return int_formatter(n, bits)

def binary_formatter(n, bits):
    s = bin(n)[2:]
    s = ("0"*bits + s)[-bits:]
    return config.formatter().binary_prefix() + s

def constant(binary_addr, n, bits):
    format_hint = disassembly.format_hint.get(binary_addr, int_formatter)
    return format_hint(n, bits)

def constant8(binary_addr):
    assert utils.is_valid_addr(binary_addr)
    n = config.memory_binary[binary_addr]
    return constant(binary_addr, n, 8)

def constant16(binary_addr):
    assert utils.is_valid_addr(binary_addr)
    n = util.get_u16(binary_addr)
    return constant(binary_addr, n, 16)
