memory = [None] * 64*1024
# TODO: move_offset is probably misnamed
#TODOmove_offset = [None] * 64*1024
#TODOmove_ranges = [] # TODO; experimental

_formatter = None
_lower_case = True
_bytes_as_ascii = True
_hex_dump = True
_label_references = True

_inline_comment_column = 60

_disassemble_instruction = None

indent_loops = False # TODO: Wrap in function? Default to False?
loop_limit = 32 # TODO: Wrap in function? Move into trace6502?
blank_line_at_block_end = True # TODO: Wrap in function?
show_cpu_state = True # TODO: Wrap in function? Default to False?
show_autogenerated_labels = True # TODO: Wrap in function?
show_char_literals = True # TODO: Wrap in function?

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
