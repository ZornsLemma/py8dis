# TODO: RENAME THIS FILE? MAYBE SPLIT OFF THE MORE DISASSEMBLERY NOT-REALLY-CONFIG THINGS?

memory = [None] * 64*1024
disassembly_range = [None, None]

_formatter = None
_lower_case = True
_bytes_as_ascii = True
_hex_dump = True

_inline_comment_column = 60

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
