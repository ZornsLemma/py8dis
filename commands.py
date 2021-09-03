# TODO: Rename this file? Perhaps core.py???
# TODO: Not too sure about exposing get_label
from disassembly import add_label, add_comment, add_classification, get_label
from a import String, Data # TODO: maybe don't expose these directly?
from a import load, string_cr, string_nul, string_hi, rts_address, split_jump_table_entry, routine, jsr_hooks, inline_nul_string_hook
from memory import * # TODO: maybe don't expose these to user directly

import trace
import a

def go():
    trace.trace()
    a.emit2()
