"""
Exposes useful commands to the user:

load()                  Loads a binary file to analyse.
move()                  Indicates that a block of memory is copied at runtime.
label()                 Define a label name for a runtime address.
optional_label()        Define a label name for a runtime address, if used.
local_label()           Define a label name for a runtime address within a memory range.
addr()                  Returns the runtime address of the given label name.
get_label()             Get the label for a specified address.
set_label_maker_hook()  Sets a user defined 'hook' function that can make label names.

constant()              Define a name for a constant value.

comment()               Add a comment. Word wraps.
formatted_comment()     Add a comment, as is.

byte()                  Categorise 8 bit bytes at the given address as byte data.
word()                  Categorise 16 bit words at the given address as word data.
stringterm()            Terminates at a specified value.
stringcr()              Terminates at ASCII code 13.
stringz()               Terminates at ASCII code 0.
string()                Terminates at a non-printable character, or the given length.
stringhi()              Terminates at a top-bit-set character, final character optional.
stringhiz()             As stringhi, but also terminates at zero.
stringn()               The first byte holds the length, followed by the string.

entry()                 Specifies that there is code at the given address.
wordentry()             Marks a sequence of data words as being addresses of code.
code_ptr()              Marks two bytes of data as being a subroutine's address.
rts_code_ptr()          Marks two bytes of data as being an RTS-able subroutine address.
nonentry()              Marks an address as 'not to be traced as code'.
hook_subroutine()       For functions that don't return normally, control the tracing.

expr()                  Define an expression equivalent to an 8 bit data byte.
expr_label()            Define an expression equivalent to a 16 bit runtime address.

annotate()              Add a raw string directly to the assembly code output.
blank()                 Add a blank line directly to the assembly code output.

get_u8_binary()         Read a single byte of data from the specified address.
get_u16_binary()        Read a 16 bit value (little endian) from the specified address.
get_u16_be_binary()     Read a 16 bit value (big endian) from the specified address.

char()                  Specifies quoted character (e.g. 'a') formatting.
binary()                Specifies binary (e.g. %010110111) formatting.
picture_binary()        Specifies picture binary (e.g. %#.####.#) formatting.
decimal()               Specifies decimal formatting.
hexadecimal()           Specifies hex formatting.
uint()                  Specifies uint formatting.
padded_uint()           Specifies padded uint formatting.
set_formatter()         Specifies a function used to format data.

go()                    Classifies code and data and emits assembly.
"""

import argparse
import memorymanager

# These functions/objects are directly exposed to the user.
# TODO: I think we need to do something re runtime-vs-binary addresses
# here - at the moment these functions work with binary addresses but
# if they are directly user exposed they need to use runtime addresses
from classification import string, stringterm, stringcr, stringz, stringhi, stringhiz, stringn
from disassembly import get_label
from memorymanager import get_u8_binary, get_u16_binary, get_u16_be_binary

# These modules are used to implement things in this file and aren't so directly
# exposed to the user. The user can still access them using the qualified names
# if they wish, since a control file will usually do import * from this module.
import classification
import config
import disassembly
import labelmanager
import movemanager
import mainformatter
import trace
import utils

from cpu65C02 import *
from cpu6502 import *
from cpu8080 import *

cpu_names = { "6502"  : lambda : Cpu6502(),
              "65c02" : lambda : Cpu65C02(),
              "8080"  : lambda : Cpu8080(),
            }

memory_binary = memorymanager.memory_binary
memory = memorymanager.memory

def load(binary_addr, filename, cpu_name, md5sum=None):
    """Loads a binary file to analyse at the given address.

    Load a binary file and optionally verify the checksum of the data."""

    # Check we have a valid CPU for the chosen assembler and select the
    # trace.cpu accordingly
    if cpu_name is None:
        utils.die("No CPU type selected in call to load().")

    if isinstance(cpu_name, trace.Cpu):
        # Set the CPU
        trace.cpu = cpu_name
    else:
        cpu_name = cpu_name.lower()

        # Get the list of supported CPUs for the assembler in lower case
        assembler_cpus_supported = [x.lower() for x in config.get_assembler().cpus_supported()]

        # Check the assembler can handle the CPU chosen
        if not cpu_name in assembler_cpus_supported:
            utils.die("Cpu '%s' is not supported by the chosen assembler. See call to load()" % (cpu_name))

        # Set the CPU
        if cpu_name in cpu_names.keys():
            trace.cpu = cpu_names[cpu_name]()
        else:
            utils.die("Unknown CPU or missing CPU parameter '%s' specified for load()." % (cpu_name))

    memorymanager.load(filename, binary_addr, md5sum)

def move(dest, src, length):
    """Indicates that a block of memory is copied at runtime.

    Often a block of code or data is moved (relocated) after loading
    but before being used at runtime. For example, BBC Micro games that
    load at $1900 may relocate bits or even all of themselves down to
    $e00 before being used.

    This function specifies such a move, indicating that the runtime
    address is different from the loaded address for a block of memory.
    This allows labels within the block to be properly defined by their
    runtime addresses.

    move()s should be called before accessing the relocated block.
    As a simple rule put any move() commands first, directly after
    load().
    """

    dest = memorymanager.RuntimeAddr(dest)
    src = memorymanager.BinaryAddr(src)
    # You can't move from a region that hasn't been populated with data. TODO: Move this check into add_move()?
    assert all(memory_binary[i] is not None for i in range(src, src+length))
    return movemanager.add_move(dest, src, length)

def constant(value, name):
    """Give a name to a constant value for use in the assembly.

    These names can then be used in subsequent calls to expr().
    """

    disassembly.add_constant(value, name)

def label(runtime_addr, name, move_id=None):
    """Define a label name for a runtime address."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr) # TODO: OK?
    if move_id is None: # TODO: not super happy with this
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
    """Define an expression for a runtime address.

    Defines a string expression to be output when the given
    runtime address is referenced.

    An expression is a string containing labels and/or other
    arithmetic calculations that the assembler can interpret. When
    the given address is referenced by code, the string expression
    is output instead.

    e.g. the command expr_label(0x1234, "my_table+1") would change
    all instances of 'lda $1234' to 'lda my_table+1'.

    Assembler assertions output at the end of the assembly code ensure
    that the expressions evaluate to the expected constants."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    # TODO: If this continues to just forward to label() perhaps make that behavuour
    # official and just provide both names for backwards compatibility/documenting the
    # difference for users who want to??
    return label(runtime_addr, s)

def optional_label(runtime_addr, name, base_runtime_addr=None):
    """Set a label at a runtime address, but only output if used.

    When two consecutive bytes share a label (e.g. `userv` and `userv+1`) then `base_runtime_addr` points to the first byte."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    if base_runtime_addr is not None:
        base_runtime_addr = memorymanager.RuntimeAddr(base_runtime_addr)
    disassembly.add_optional_label(runtime_addr, name, base_runtime_addr)

def local_label(runtime_addr, name, start_addr, end_addr, move_id=None):
    disassembly.add_local_label(runtime_addr, name, start_addr, end_addr, move_id)

def substitute_constants(instruction, reg, constants_dict, define_all_constants=None):
    """When loading a register with an immediate value somewhere before the given instruction, fill in a constant or expression from a dictionary

    `define_add_constants` has three possible values:
        None    - define no constants (the default)
        False   - define only the constants used
        True    - define all constants
    """

    if define_all_constants == True:
        for entry in constants_dict:
            if disassembly.is_simple_name(constants_dict[entry]):
                constant(entry, constants_dict[entry])

    trace.substitute_constant_list.append(SubConst(instruction, reg, constants_dict, define_all_constants != None))

def comment(runtime_addr, text, inline=False):
    """Add a comment.

    Define a comment string to appear in the assembly code at the
    given address in the output. The comment can be inlined (added
    to the end of the line), or standalone (a separate line of output).
    The comment is automatically word wrapped.
    """

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    if not inline:
        text = mainformatter.format_comment(text)
    formatted_comment(runtime_addr, text, inline)

def formatted_comment(runtime_addr, text, inline=False):
    """Add a comment without word wrapping."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    assert memorymanager.is_data_loaded_at_binary_addr(binary_addr)
    disassembly.add_comment(binary_addr, text, inline)

def annotate(runtime_addr, s, priority=None):
    """Add a raw string directly to the assembly code output at the
    given address."""

    # TODO: Maybe this should accept a string or a sequence; if given a sequence we'd join the components with newlines.
    disassembly.add_raw_annotation(runtime_addr, s, priority)

def blank(runtime_addr, priority=None):
    annotate(runtime_addr, "", priority)

def expr(runtime_addr, s):
    """Define a string expression for an address.

    A string expression is output at the given runtime address
    instead of a regular numerical value.

    An expression is a string containing labels, constants and/or other
    arithmetic calculations that the assembler can interpret. When the
    given address reached, the regular output is replaced by the string
    expression.

    e.g. 'lda #$30' might be replaced by 'lda #>screen_address'

    Alternatively, a dictionary can be supplied with integer keys and
    string values. The byte found at the address is used as the key,
    and is replaced with the expression string value.
    """

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    assert memorymanager.is_data_loaded_at_binary_addr(binary_addr)

    if isinstance(s, dict):
        # Dictionary supplied.
        # Look up value in binary, and use that as key in dictionary
        val = get_u8_binary(binary_addr)
        classification.add_expression(binary_addr, s[val])
    else:
        classification.add_expression(binary_addr, s)

def byte(runtime_addr, n=1, cols=None):
    """Categorise a number of bytes at the given address as byte data."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    if not memorymanager.check_data_loaded_at_binary_addr(binary_addr, n, True):
        return
    disassembly.add_classification(binary_addr, classification.Byte(n, cols=cols))

# TODO: byte()/word() should probably optionally (via an optional arg or a variant function) allow the user to specify a format hint for the range without having to make a separate call to the relevant formatter function with the same arguments. Just maybe an optional argument "format_command=None" where we do "if format_command is not None: format_command(runtime_addr, n)" would work, then you could do "word(0x432, 4, picture_binary)" (if we squeezed formatter in before warn=True argument; this is all getting a smidge messy, especially if the user is forced to specify 1 for the n argument) - anyway, think about it...
def word(runtime_addr, n=1, cols=None):
    """Categorise a number of 16 bit words at the given address as word data."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    if not memorymanager.check_data_loaded_at_binary_addr(binary_addr, n * 2, True):
        return
    disassembly.add_classification(binary_addr, classification.Word(n * 2, cols=cols))

def entry(runtime_addr, label=None, warn=True):
    """
    Specifies that there is code at the given runtime address.

    When go() is called, code is automatically traced from each entry
    point through all possible branches and subroutines. This is
    categorised as code, and therefore output as instructions.
    """

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_addr, move_id = movemanager.r2b_checked(runtime_addr)
    # TODO: Should probably warn rather than assert in other fns too
    memorymanager.check_data_loaded_at_binary_addr(binary_addr, 1, warn)

    trace.cpu.add_entry(binary_addr, label, move_id)
    if utils.is_string_type(label):
        return label
    return disassembly.get_label(runtime_addr, binary_addr, move_id)

# TODO: Should byte()/word()/string() implicitly call nonentry()? Does the fact these add a classification implicitly stop tracing, or does the "overlapping" support I kludged in mean that isn't true? Not checked just now...
# TODO: Should I then get rid of this as an explicit command? (Possibly not. For example, using byte(addr) to get the behaviour of nonentry() would also prevent auto-detection of a string starting at addr. So I think nonentry() is useful as an explicit user command.)
def nonentry(runtime_addr):
    """
    Marks an address as 'not to be traced as code'.

    See entry() for details of tracing. When the tracing of code
    reaches the given address then tracing stops. For example,
    when a conditional branch is in practice always taken at runtime,
    any following code is never executed. Use of this command is
    rare.
    """

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    assert memorymanager.is_data_loaded_at_binary_addr(binary_addr)

    trace.cpu.traced_entry_points.add(binary_addr)

def wordentry(runtime_addr, n=1):
    """
    Marks a sequence of data words as being addresses of code.

    For a table of words where each entry is the address of some code,
    this both categorises the data as words, and substitutes label names
    as appropriate.
    """

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    word(runtime_addr, n)
    for i in range(n):
        binary_addr, _ = movemanager.r2b_checked(runtime_addr)
        assert memorymanager.is_data_loaded_at_binary_addr(binary_addr, 2)
        expr(runtime_addr, entry(get_u16_binary(binary_addr)))
        runtime_addr += 2
    return runtime_addr

# TODO: This is a user command, it should possibly take an optional move_id or respect the "current move ID"
def hook_subroutine(runtime_addr, name, hook, warn=True):
    """
    Add a hook function for a subroutine at the given address.

    When executed, an unusual subroutine may not return right after it
    was called. For the purpose of tracing the code, we need to know
    where code will continue to be executed. The hook_subroutine()
    function can be used to specify a 'hook' routine that determines
    where execution continues after the subroutine finishes.

    There is a common use case: A subroutine that 'prints the following
    string' has a call to a subroutine followed by a string definition.
    Execution only continues *after* the string definition.

    The following '*_hook' functions are designed to be used as the
    'hook' parameter, to determine the end of the string.
    """

    trace.cpu.hook_subroutine(runtime_addr, name, hook, warn)

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
    """
    Marks two bytes of data as being the address of a subroutine.

    The low and high bytes do not need to be stored adjacently since
    their addresses can be specified separately. This is used to handle
    jump tables where the low and high bytes are stored in separate
    tables. An optional offset can be applied to the subroutine
    address.

    Assumes the assembler understands expressions like '<(my_label+1)'.

    Code tracing, see entry(), is applied to the subroutine.
    """

    if runtime_addr_high is None:
        runtime_addr_high = runtime_addr + 1
    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    runtime_addr_high = memorymanager.RuntimeAddr(runtime_addr_high)
    binary_addr, _ = movemanager.r2b(runtime_addr)
    binary_addr_high, _ = movemanager.r2b(runtime_addr_high)
    assert memorymanager.is_data_loaded_at_binary_addr(binary_addr)
    assert memorymanager.is_data_loaded_at_binary_addr(binary_addr_high)
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
    """
    Marks two bytes of data as being the address of a subroutine.

    This is the same as code_ptr() with offset=1. Designed for use when
    pushing an address onto the stack before transferring control by
    executing 'rts'.
    """
    return code_ptr(runtime_addr, runtime_addr_high, offset=1)

def set_label_maker_hook(hook):
    """
    Sets a user defined 'hook' function that can make label names.

    Given an address, the user supplied function should return
    a unique label name or just return the suggested name.

    Sometimes having a routine to make label names can be useful. For
    example, labels at addresses that just 'rts' to early out of a
    subroutine can be labelled uniformly as 'return1', 'return2' etc.
    """

    disassembly.set_user_label_maker_hook(hook)

def addr(label_name):
    """Returns the runtime address of the given label name"""

    if not utils.is_string_type(label_name):
        return None

    return labelmanager.addr(label_name)

def set_formatter(runtime_addr, n, formatter):
    """
    Specifies a function used to format data in a block.

    The 'formatter' is a function that given a value to format, returns
    a string.

    This function is used by the following formatting functions.
    """

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    assert n > 0
    for i in range(n):
        binary_addr, _ = movemanager.r2b_checked(runtime_addr + i)
        disassembly.format_hint[binary_addr] = formatter

def uint(runtime_addr, n=1):
    """Specifies uint formatting for data in the given block"""

    # This is nearly the default behaviour, but by specifying a formatter explicitly the
    # automatic addition of a comment showing the corresponding ASCII character for
    # immediate constants will be disabled for this address.
    set_formatter(runtime_addr, n, mainformatter.uint_formatter)

def padded_uint(runtime_addr, n=1):
    """Specifies padded uint formatting for data in the given block"""

    set_formatter(runtime_addr, n, lambda n, bits: mainformatter.uint_formatter(n, bits, pad=True))

def char(runtime_addr, n=1):
    """Specifies quoted character formatting for data in the given block"""

    set_formatter(runtime_addr, n, mainformatter.char_formatter)

def binary(runtime_addr, n=1):
    """Specifies binary formatting for data in the given block"""

    set_formatter(runtime_addr, n, mainformatter.binary_formatter)

def picture_binary(runtime_addr, n=1):
    """Specifies picture binary formatting for data in the given block"""

    set_formatter(runtime_addr, n, mainformatter.picture_binary_formatter)

def decimal(runtime_addr, n=1):
    """Specifies decimal formatting for data in the given block"""

    set_formatter(runtime_addr, n, mainformatter.decimal_formatter)

# "hex" is a Python built-in function so we can't use that.
def hexadecimal(runtime_addr, n=1):
    """Specifies hex formatting for data in the given block"""

    set_formatter(runtime_addr, n, mainformatter.hexadecimal_formatter)

def is_assembler(s):
    if config.get_assembler().get_name().lower() == s.lower():
        return True
    return False

def go(post_trace_steps=None, autostring_min_length=3):
    """
    Classifies code and data, calculates labels and emits assembly.
    """

    # Once we start tracing, we're taking a "static" view of the code and we
    # don't want any leftover user hints about how to convert runtime addresses
    # to binary addresses confusing things.
    assert len(movemanager.active_move_ids) == 0

    # Find entire binary range
    pydis_start, pydis_end = memorymanager.get_entire_load_range()

    # Create start and end labels
    label(int(pydis_start), "pydis_start", move_id=movemanager.base_move_id)
    label(int(pydis_end), "pydis_end", move_id=movemanager.base_move_id)

    # Trace where code lives
    trace.cpu.trace()
    trace.cpu.generate_references()

    # Fix up label names
    disassembly.fix_label_names()
    if config.get_label_references():
        trace.cpu.add_references_comments()

    # Scan the binary for strings (or allow a user function to do it)
    # autostring() really needs to be invoked after trace() has done
    # its classification, so we wrap it up in here by default rather
    # than expecting the user to call it.
    if post_trace_steps is None:
        def post_trace_steps():
            classification.autostring(autostring_min_length)
    post_trace_steps()

    # Mark everything remaining as bytes
    classification.classify_leftovers()

    # Output assembly code
    disassembly.emit()

# Command line parsing
parser = argparse.ArgumentParser()
parser.add_argument("-b", "--beebasm", action="store_true", help="generate beebasm-style output (default)")
parser.add_argument("-a", "--acme", action="store_true", help="generate acme-style output")
parser.add_argument("-x", "--xa", action="store_true", help="generate xa-style output")
parser.add_argument("-8", "--z88dk-8080", action="store_true", help="generate z88dk style output for the 8080 processor")
parser.add_argument("-l", "--lower", action="store_true", help="generate lower-case output (default)")
parser.add_argument("-u", "--upper", action="store_true", help="generate upper-case output")
args = parser.parse_args()

assembler_count = sum(1 for x in (args.beebasm, args.acme, args.xa, args.z88dk_8080) if x)
if assembler_count > 1:
    utils.die("--beebasm, --acme, --xa and --z88dk-8080 arguments are incompatible")
if args.lower and args.upper:
    utils.die("--lower and --upper arguments are incompatible")

if args.acme:
    import acme
elif args.xa:
    import xa
elif args.z88dk_8080:
    import z88dk_8080
else:
    import beebasm

set_output_filename = config.get_assembler().set_output_filename

if args.upper:
    config.set_lower_case(False)
else:
    config.set_lower_case(True)

# TODO: General point - when the code is finally tidied up, it might be
# helpful (perhaps using wrapper functions to avoid repeating things
# everywhere and perhaps to show an actual error message, even if we
# also output a backtrace, rather than raw python assertion failures)
# to do thinks like assert memory[addr] is not None rather than letting
# subsequent code fail confusingly when it tries to use that None.
