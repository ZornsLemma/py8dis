import argparse
import six # TODO?

# These functions/objects are directly exposed to the user.
# TODO: I think we need to do something re runtime-vs-binary addresses here - at the moment these functions work with binary addresses but if they are directly user expsoed they need to use runtime addresses
from classification import string, stringterm, stringcr, stringz, stringhi, stringhiz, stringn
from disassembly import get_label
from movemanager import moved
from utils import get_u16, get_u16_be

# These modules are used to implement things in this file and aren't so directly
# exposed to the user. The user can still access them using the qualified names
# if they wish, since a control file will usually do import * from this module.
import classification
import config
import disassembly
import labelmanager
import movemanager
import newformatter
import trace
import utils

memory_binary = config.memory_binary
memory = config.memory

# TODO!?
config.load_ranges = []

def load(addr, filename, md5sum=None):
    # TODO: We need to check load() doesn't overlap anything which already exists, and this is probably also where we'd merge adjacent ranges
    with open(filename, "rb") as f:
        data = bytearray(f.read())
        if addr + len(data) > 0x10000:
            utils.die("load() would overflow memory")
        memory_binary[addr:addr+len(data)] = data
    if md5sum is not None:
        import hashlib
        hash = hashlib.md5()
        hash.update(data)
        if md5sum != hash.hexdigest():
            utils.die("load() md5sum doesn't match")
    config.load_ranges.append((addr, addr + len(data)))

# TODO: When documenting all the recent changes, should note that move()
# needs to be done to update the disassembler's memory before you try to
# access things in the relocated region.
def move(dest, src, length):
    # You can't move from a region that hasn't been populated with data. TODO: Move this check into add_move()?
    assert all(memory_binary[i] is not None for i in range(src, src+length))
    return movemanager.add_move(dest, src, length)

# These wrappers rename the verb-included longer names for some functions to
# give shorter, easier-to-type beebdis-style names for "user" code; we use the
# longer names in core disassembler code. TODO: Slightly outdated comment, they are now also doing some address space translation

# ENHANCE: This is "backwards" - in assembler input you'd write "name = value",
# not "value = name". Should I change it? But it does feel consistent-ish with
# things like label() taking the "value" as the first argument and it feels
# right that they use that order.
def constant(value, name):
    disassembly.add_constant(value, name)

# ENHANCE: Should (can?) we arrange that if there is already an auto-generated
# label at this address, the user one takes precedence? This may not be the case
# as standard if the user uses code_ptr() and then label()s the target address
# afterwards. They can always do it the other way round so this isn't a huge
# deal I suppose. TODO: Is this still a problem?
def label(runtime_addr, name):
    # We don't care about the equivalent binary address, but the process of looking
    # it up gives us a move ID to associate with this label.
    _, move_id = movemanager.r2b(runtime_addr)
    #if name == "nmi_handler_rom_start":
    #    print("XAP", move_id)
    #if name == "nmi_handler_rom_start":
    #    print("PXX", move_id)
    #    print("PXY", movemanager.move_ids_for_runtime_addr(runtime_addr))
    #    print("PXZ", movemanager.active_move_ids)
    disassembly.add_label(runtime_addr, name, move_id)

# TODO: Should probably take an optional move_id?
# TODO: This isn't working - see "command_table+1" in dfs226.py for example
def expr_label(runtime_addr, s):
    # TODO: If this continues to just forward to label() perhaps make that behavuour
    # official and just provide both names for backwards compatibility/documenting the
    # difference for users who want to??
    return label(runtime_addr, s)

def optional_label(addr, name, base_addr=None):
    disassembly.add_optional_label(addr, name, base_addr)

def comment(runtime_addr, text):
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    assert utils.data_loaded_at_binary_addr(binary_addr)
    disassembly.add_comment(binary_addr, text)

def expr(runtime_addr, s):
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    assert utils.data_loaded_at_binary_addr(binary_addr)
    classification.add_expression(binary_addr, s)

def byte(runtime_addr, n=1, warn=True):
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    if not utils.data_loaded_at_binary_addr(binary_addr, n):
        if warn:
            utils.check_data_loaded_at_binary_addr(binary_addr, n) # TODO: bit redundant re-checking
        return
    disassembly.add_classification(binary_addr, classification.Byte(n, False))

# TODO: byte()/word() should probably optionally (via an optional arg or a variant function) allow the user to specify a format hint for the range without having to make a separate call to the relevant formatter function with the same arguments. Just maybe an optional argument "format_command=None" where we do "if format_command is not None: format_command(runtime_addr, n)" would work, then you could do "word(0x432, 4, picture_binary)" (if we squeezed formatter in before warn=True argument; this is all getting a smidge messy, especially if the user is forced to specify 1 for the n argument) - anyway, think about it...
def word(runtime_addr, n=1, warn=True):
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    if not utils.data_loaded_at_binary_addr(binary_addr, n * 2):
        if warn:
            utils.check_data_loaded_at_binary_addr(binary_addr, n * 2) # TODO: bit redundant re-checking
        return
    disassembly.add_classification(binary_addr, classification.Word(n * 2, False))

def entry(runtime_addr, label=None, warn=True):
    binary_addr, move_id = movemanager.r2b_checked(runtime_addr)
    # TODO: Should probably warn rather than assert in other fns too
    if warn:
        utils.check_data_loaded_at_binary_addr(binary_addr)
    trace.add_entry(binary_addr, label, move_id)
    if isinstance(label, six.string_types):
        return label
    return disassembly.get_label(runtime_addr, binary_addr, move_id)

# TODO: Should byte()/word()/string() implicitly call nonentry()? Does the fact these add a classification implicitly stop tracing, or does the "overlapping" support I kludged in mean that isn't true? Not checked just now...
# TODO: Should I then get rid of this as an explicit command? (Possibly not. For example, using byte(addr) to get the behaviour of nonentry() would also prevent auto-detection of a string starting at addr. So I think nonentry() is useful as an explicit user command.)
def nonentry(runtime_addr):
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    assert utils.data_loaded_at_binary_addr(binary_addr)
    # TODO: Call a function on trace module?
    # TODO: This prob needs to do some kind of inverse move
    trace.traced_entry_points.add(binary_addr)

def wordentry(runtime_addr, n=1):
    word(runtime_addr, n)
    for i in range(n):
        binary_addr, _ = movemanager.r2b_checked(runtime_addr)
        assert utils.data_loaded_at_binary_addr(binary_addr, 2)
        expr(runtime_addr, entry(get_u16(binary_addr)))
        runtime_addr += 2
    return runtime_addr

# TODO: We might have a bit of a problem here - these hooks are used during tracing (when we're in "static" mode, so to speak) but they call stringhi() etc which are user function "intended" for use during the "dynamic" phase and which will probably be expecting runtime addresses. Does this suggest we want to "allow movemanager.r2b but make it the identity operation" during tracing??
def stringhi_hook(target, addr):
    return stringhi(addr + 3)

def stringhiz_hook(target, addr):
    return stringhiz(addr + 3)

def stringcr_hook(target, addr):
    return stringcr(addr + 3)

def stringz_hook(target, addr):
    return stringz(addr + 3)

def stringn_hook(target, addr):
    return stringn(addr + 3)

def code_ptr(runtime_addr, runtime_addr_high=None, offset=0):
    if runtime_addr_high is None:
        runtime_addr_high = runtime_addr + 1
    binary_addr, _ = movemanager.r2b(runtime_addr)
    binary_addr_high, _ = movemanager.r2b(runtime_addr_high)
    assert utils.data_loaded_at_binary_addr(binary_addr)
    assert utils.data_loaded_at_binary_addr(binary_addr_high)
    code_at_runtime_addr = ((memory_binary[binary_addr_high] << 8) | memory_binary[binary_addr]) + offset
    # Label and trace the code at code_at
    label = entry(code_at_runtime_addr, warn=False) # ENHANCE: allow optional user-specified label?
    # Reference that label at addr/addr_high.
    offset_string = "" if offset == 0 else ("%+d" % -offset)
    if binary_addr_high == binary_addr + 1:
        # The general code in the "else" branch would work for this case as
        # well, but since the assembler has support for emitting a little-endian
        # 16-bit word it's nice to use it when we can.
        assert runtime_addr_high == runtime_addr + 1
        # TODO: Use word()/expr() variants which take a binary addr directly?
        word(runtime_addr)
        expr(runtime_addr, utils.LazyString("%s%s", label, offset_string))
    else:
        # TODO: Use byte()/expr() variants which take a binary addr directly?
        byte(runtime_addr)
        expr(runtime_addr, utils.LazyString("<(%s%s)", label, offset_string))
        byte(runtime_addr_high)
        expr(runtime_addr_high, utils.LazyString(">(%s%s)", label, offset_string))
    if abs(runtime_addr_high - runtime_addr) == 1:
        return max(runtime_addr, runtime_addr_high) + 1
    return None

def rts_code_ptr(runtime_addr, runtime_addr_high=None):
    return code_ptr(runtime_addr, runtime_addr_high, offset=1)

def set_label_maker_hook(hook):
    disassembly.set_user_label_maker_hook(hook)

# TODO: Highly experimental
def add_sequence_hook(hook):
    disassembly.sequence_hooks.append(hook)

# TODO: Rename?
def addr(label_name):
    assert isinstance(label_name, six.string_types) # TODO: OK?!
    # TODO: Ultra-inefficient implementation
    for addr, label in sorted(labelmanager.labels.items()):
        for name_list in label.explicit_names.values():
            for name in name_list:
                if label_name == name.name:
                    return addr
    assert False # TODO: !? return None?

def set_formatter(runtime_addr, n, formatter):
    assert n > 0
    for i in range(n):
        binary_addr, _ = movemanager.r2b_checked(runtime_addr + i)
        disassembly.format_hint[binary_addr] = formatter

def num(runtime_addr, n=1):
    # This is nearly the default behaviour, but by specifying a formatter explicitly the
    # automatic addition of a comment showing the corresponding ASCII character for
    # immediate constants will be disabled for this address.
    set_formatter(runtime_addr, n, newformatter.int_formatter)

def char(runtime_addr, n=1):
    set_formatter(runtime_addr, n, newformatter.char_formatter)

def binary(runtime_addr, n=1):
    set_formatter(runtime_addr, n, newformatter.binary_formatter)

def picture_binary(runtime_addr, n=1):
    set_formatter(runtime_addr, n, newformatter.picture_binary_formatter)

def decimal(runtime_addr, n=1):
    set_formatter(runtime_addr, n, newformatter.decimal_formatter)

# "hex" is a Python built-in function so we can't use that.
def hexadecimal(runtime_addr, n=1):
    set_formatter(runtime_addr, n, newformatter.hexadecimal_formatter)

def go(post_trace_steps=None, autostring_min_length=3):
    # Once we start tracing, we're taking a "static" view of the code and we
    # don't want any leftover user hints about how to convert runtime addresses
    # to binary addresses confusing things.
    assert len(movemanager.active_move_ids) == 0
    pydis_start = min(start_addr for start_addr, end_addr in config.load_ranges)
    pydis_end = max(end_addr for start_addr, end_addr in config.load_ranges)
    label(pydis_start, "pydis_start")
    label(pydis_end, "pydis_end")

    trace.trace()
    trace.generate_references()
    disassembly.fix_label_names()
    if config.label_references():
        trace.add_references_comments()
    # autostring() really needs to be invoked after trace() has done its classification,
    # so we wrap it up in here by default rather than expecting the user to call it.
    if post_trace_steps is None:
        def post_trace_steps():
            classification.autostring(autostring_min_length)
    post_trace_steps()
    classification.classify_leftovers()
    disassembly.emit()


parser = argparse.ArgumentParser()
parser.add_argument("-b", "--beebasm", action="store_true", help="generate beebasm-style output (default)")
parser.add_argument("-a", "--acme", action="store_true", help="generate acme-style output")
parser.add_argument("-x", "--xa", action="store_true", help="generate xa-style output")
parser.add_argument("-l", "--lower", action="store_true", help="generate lower-case output (default)")
parser.add_argument("-u", "--upper", action="store_true", help="generate upper-case output (default)")
args = parser.parse_args()

assembler_count = sum(1 for x in (args.beebasm, args.acme, args.xa) if x)
if assembler_count > 1:
    utils.die("--beebasm, --acme and --xa arguments are incompatible")
if args.lower and args.upper:
    utils.die("--lower and --upper arguments are incompatible")

if args.acme:
    import acme
    set_output_filename = acme.set_output_filename
elif args.xa:
    import xa
    set_output_filename = xa.set_output_filename
else:
    import beebasm
    set_output_filename = beebasm.set_output_filename

if args.upper:
    config.set_lower_case(False)
else:
    config.set_lower_case(True)

# TODO: General point - when the code is finally tidied up, it might be helpful (perhaps using
# wrapper functions to avoid repeating things everywhere and perhaps to show an actual error message, even if we also output a backtrace, rather than raw python assertion failures) to do thinks like assert memory[addr] is not None rather than letting subsequent code fail confusingly when it tries to use that None.
