memory = [None] * 64*1024
_disassembly_range = [None, None]

_formatter = None
_lower_case = True
_bytes_as_ascii = True
_hex_dump = True

_inline_comment_column = 60

_disassemble_instruction = None

def disassembly_range(allow_none=False):
    assert allow_none or _disassembly_range[0] is not None
    assert allow_none or _disassembly_range[1] is not None
    return _disassembly_range

# TODO: May want to get rid of this or make it an add_to_list_of_ranges or something
def set_disassembly_range(start, end):
    assert start is not None
    assert end is not None
    global _disassembly_range
    _disassembly_range = [(start, end)]

def formatter():
    return _formatter

def set_formatter(f):
    global _formatter
    _formatter = f

def lower_case():
    return _lower_case

def set_lower_case(b):
    global _lower_case
    _lower_case = b

def bytes_as_ascii():
    return _bytes_as_ascii

def set_bytes_as_ascii(b):
    global _bytes_as_ascii
    _bytes_as_ascii = b

def hex_dump():
    return _hex_dump

def set_hex_dump(b):
    global _hex_dump
    _hex_dump = b

def inline_comment_column():
    return _inline_comment_column

def set_inline_comment_column(n):
    global _inline_comment_column
    _inline_comment_column = n

def set_disassemble_instruction(f):
    global _disassemble_instruction
    assert _disassemble_instruction is None
    _disassemble_instruction = f

def disassemble_instruction():
    assert _disassemble_instruction is not None
    return _disassemble_instruction
