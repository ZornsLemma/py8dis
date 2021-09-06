# TODO: Rename this file? Perhaps core.py??? or py8dis.py?

import argparse

# These functions/objects are directly exposed to the user.
from classification import string, stringterm, stringcr, stringz, stringhi, stringhiz, autostring # TODO: get rid of stuff in this list which isn't directly user-exposed
from disassembly import get_label # TODO: not too sure about exposing this
from trace import add_entry, jsr_hooks
from utils import get_u16, get_u16_be

# These modules are used to implement things in this file and aren't so directly
# exposed to the user. The user can still access them using the qualified names
# if they wish, since a control file will usually do import * from this module.
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

# TODO: Should (can?) we arrange that if there is already an auto-generated label at this address, the user one takes precedence? This may not be the case as standard if the user uses code_ptr() and then label()s the taret address afterwards. They can always do it the other way round so this isn't a huge deal I suppose.
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
    return add_entry(addr, label)

def stringhi_hook(target, addr):
    return stringhi(addr + 3)

def stringcr_hook(target, addr):
    return stringcr(addr + 3)

def stringz_hook(target, addr):
    return stringz(addr + 3)

def hook_subroutine(addr, name, hook): # TODO: rename - hook should probably not be quite so prominent in name
    entry(addr, name)
    jsr_hooks[addr] = hook # TODO: call a function in trace.py to do this?

def code_ptr(addr, addr_high=None, offset=0):
    if addr_high is None:
        addr_high = addr + 1
    assert memory[addr] is not None
    assert memory[addr_high] is not None
    code_at = ((memory[addr_high] << 8) | memory[addr]) + offset
    # Label and trace the code at code_at
    label = entry(code_at) # TODO: allow optional user-specified label?
    # Reference that label at addr/addr_high.
    offset_string = "" if offset == 0 else ("%+d" % -offset)
    if addr_high == addr + 1:
        # The general code in the "else" branch would work for this case as
        # well, but since the assembler has support for emitting a little-endian
        # 16-bit word it's nice to use it when we can.
        word(addr)
        expr(addr, "%s%s" % (label, offset_string))
    else:
        byte(addr)
        expr(addr, "<(%s%s)" % (label, offset_string))
        byte(addr_high)
        expr(addr_high, ">(%s%s)" % (label, offset_string))
    if abs(addr_high - addr) == 1:
        return max(addr, addr_high) + 1
    return None

def rts_code_ptr(addr, addr_high=None):
    return code_ptr(addr, addr_high, offset=1)

def go(final_steps=None, autostring_min_length=3):
    trace.trace()
    # autostring() really needs to be invoked after trace() has done its classification,
    # so we wrap it up in here by default rather than expecting the user to call it.
    if final_steps is None:
        def final_steps():
            autostring(autostring_min_length)
    final_steps()
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
