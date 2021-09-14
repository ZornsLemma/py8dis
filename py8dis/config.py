memory = [None] * 64*1024
_disassembly_range = []

_formatter = None
_lower_case = True
_bytes_as_ascii = True
_hex_dump = True
_label_references = True

_inline_comment_column = 60

_disassemble_instruction = None

# TODO: We need some sort of sanity check to avoid using these if load() never updates them...
pydis_start = 0x10000
pydis_end = -1

# TODO: Now it's a simple list we may not want these fns for disassembly_range access
def disassembly_range(allow_none=False):
    return _disassembly_range

# TODO: May want to get rid of this or make it an add_to_list_of_ranges or something
def add_disassembly_range(start, end):
    assert start is not None
    assert end is not None
    # TODO: Checks on disassembly range?
    global _disassembly_range
    _disassembly_range.append((start, end))
    global pydis_start, pydis_end
    pydis_start = min(pydis_start, start)
    pydis_end = max(pydis_end, end)


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

def label_references():
    return _label_references

def set_label_references(b):
    global _label_references
    _label_references = b

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
