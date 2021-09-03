# TODO: Rename this file? Perhaps core.py???

import argparse

from classification import string, stringterm, stringcr, stringz, stringhi, rts_address, split_jump_table_entry, inline_nul_string_hook # TODO: get rid of stuff in this list which isn't directly user-exposed
from disassembly import get_label # TODO: not too sure about exposing this
from trace import add_entry, jsr_hooks

import classification
import config
import disassembly
import trace
import utils

memory = config.memory

def load(addr, filename, md5sum=None):
    if config.disassembly_range[0] is not None:
        utils.die("load() can only be used once")
    with open(filename, "rb") as f:
        data = bytearray(f.read())
        if addr + len(data) > 0xffff:
            utils.die("load() would overflow memory")
        memory[addr:] = data
    if md5sum is not None:
        import hashlib
        hash = hashlib.md5()
        hash.update(data)
        if md5sum != hash.hexdigest():
            utils.die("load() md5sum doesn't match")
    config.disassembly_range[0] = addr
    config.disassembly_range[1] = addr + len(data)

# These wrappers rename the verb-included longer names for some functions to
# give shorter, easier-to-type beebdis-style names for "user" code; we use the
# longer names in core disassembler code.

# TODO: Swap arguments round to match usual "foo = 4" syntax? But everything else takes address first...
def constant(value, name):
    disassembly.add_constant(value, name)

def label(addr, name):
    disassembly.add_label(addr, name)

def optional_label(addr, name):
    disassembly.add_optional_label(addr, name)

def comment(addr, text):
    disassembly.add_comment(addr, text)

def expr(addr, s):
    classification.add_expression(addr, s)

def byte(addr, n=1):
    disassembly.add_classification(addr, classification.Byte(n))

def word(addr, n=1):
    # TODO: I don't think this is actually tested yet...
    disassembly.add_classification(addr, classification.Word(n * 2))

def entry(addr, label=None):
    add_entry(addr, label)

def hook_subroutine(addr, name, hook): # TODO: rename - hook should probably not be quite so prominent in name
    entry(addr, name)
    jsr_hooks[addr] = hook # TODO: call a function in trace.py to do this?

def go():
    trace.trace()
    classification.emit2()


parser = argparse.ArgumentParser()
parser.add_argument("-b", "--beebasm", action="store_true", help="generate beebasm-style output (default)")
parser.add_argument("-a", "--acme", action="store_true", help="generate acme-style output")
parser.add_argument("-l", "--lower", action="store_true", help="generate lower-case output (default)")
parser.add_argument("-u", "--upper", action="store_true", help="generate upper-case output (default)")
args = parser.parse_args()

if args.beebasm and args.acme:
    assert False # TODO: Proper error
if args.lower and args.upper:
    assert False # TODO: Proper error

if args.acme:
    import acme
    set_output_filename = acme.set_output_filename
else:
    import beebasm
    set_output_filename = beebasm.set_output_filename

if args.upper:
    config.set_lower_case(False)
else:
    config.set_lower_case(True)
