# TODO: Rename this file? Perhaps core.py???
# TODO: Not too sure about exposing get_label
from disassembly import add_label, add_comment, add_classification, get_label
from classification import String, Data # TODO: maybe don't expose these directly?
from classification import string_cr, string_nul, string_hi, rts_address, split_jump_table_entry, routine, jsr_hooks, inline_nul_string_hook
from memory import * # TODO: maybe don't expose these to user directly

import trace
import classification

def load(filename, addr):
    # TODO: Don't allow multiple load()s (given we have a single global start/end addr)
    with open(filename, "rb") as f:
        data = bytearray(f.read())
        if addr + len(data) > 0xffff:
            assert False # TODO: proper error
        memory[addr:] = data
    disassembly_range[0] = addr
    disassembly_range[1] = addr + len(data)

def go():
    trace.trace()
    classification.emit2()
