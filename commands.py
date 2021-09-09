import argparse

# These functions/objects are directly exposed to the user.
from classification import string, stringterm, stringcr, stringz, stringhi, stringhiz
from disassembly import get_label
from trace import add_entry
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
    if config.disassembly_range(allow_none=True)[0] is not None:
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
    config.set_disassembly_range(addr, addr + len(data))

# These wrappers rename the verb-included longer names for some functions to
# give shorter, easier-to-type beebdis-style names for "user" code; we use the
# longer names in core disassembler code.

# ENHANCE: This is "backwards" - in assembler input you'd write "name = value",
# not "value = name". Should I change it? But it does feel consistent-ish with
# things like label() taking the "value" as the first argument and it feels
# right that they use that order.
def constant(value, name):
    disassembly.add_constant(value, name)

# ENHANCE: Should (can?) we arrange that if there is already an auto-generated
# label at this address, the user one takes precedence? This may not be the case
# as standard if the user uses code_ptr() and then label()s the taret address
# afterwards. They can always do it the other way round so this isn't a huge
# deal I suppose.
def label(addr, name):
    disassembly.add_label(addr, name)

def expr_label(addr, s):
    disassembly.add_label(addr, s, expr=True)

def optional_label(addr, name, base_addr=None):
    disassembly.add_optional_label(addr, name, base_addr)

def comment(addr, text):
    disassembly.add_comment(addr, text)

def expr(addr, s):
    classification.add_expression(addr, s)

def byte(addr, n=1):
    disassembly.add_classification(addr, classification.Byte(n, False))

def word(addr, n=1):
    disassembly.add_classification(addr, classification.Word(n * 2, False))

def entry(addr, label=None):
    return add_entry(addr, label)

def wordentry(addr, n=1):
    word(addr, n)
    for i in range(n):
        expr(addr, entry(get_u16(addr)))
        addr += 2
    return addr

def stringhi_hook(target, addr):
    return stringhi(addr + 3)

def stringcr_hook(target, addr):
    return stringcr(addr + 3)

def stringz_hook(target, addr):
    return stringz(addr + 3)

# TODO: Does this have some overlap with wordentry()? Should it use wordentry???
def code_ptr(addr, addr_high=None, offset=0):
    if addr_high is None:
        addr_high = addr + 1
    assert memory[addr] is not None
    assert memory[addr_high] is not None
    code_at = ((memory[addr_high] << 8) | memory[addr]) + offset
    # Label and trace the code at code_at
    label = entry(code_at) # ENHANCE: allow optional user-specified label?
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

def go(post_trace_steps=None, autostring_min_length=3):
    trace.trace()
    # autostring() really needs to be invoked after trace() has done its classification,
    # so we wrap it up in here by default rather than expecting the user to call it.
    if post_trace_steps is None:
        def post_trace_steps():
            classification.autostring(autostring_min_length)
    post_trace_steps()
    classification.finalise()
    start_addr, end_addr = config.disassembly_range()
    disassembly.emit(start_addr, end_addr)

parser = argparse.ArgumentParser()
parser.add_argument("-b", "--beebasm", action="store_true", help="generate beebasm-style output (default)")
parser.add_argument("-a", "--acme", action="store_true", help="generate acme-style output")
parser.add_argument("-l", "--lower", action="store_true", help="generate lower-case output (default)")
parser.add_argument("-u", "--upper", action="store_true", help="generate upper-case output (default)")
args = parser.parse_args()

if args.beebasm and args.acme:
    utils.die("--beebasm and --acme arguments are incompatible")
if args.lower and args.upper:
    utils.die("--lower and --upper arguments are incompatible")

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

# TODO: Move stuff into subdirectories in repo
