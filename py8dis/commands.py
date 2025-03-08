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

comment()               Add a comment, with word_wrapping by default.
formatted_comment()     Add a comment, with no word wrapping.

subroutine()            Define a subroutine.

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

# These functions are directly exposed to the user.
from classification import string, stringterm, stringcr, stringz, stringhi, stringhiz, stringn
from disassembly import get_label
from memorymanager import get_u8_binary, get_u16_binary, get_u16_be_binary, get_u16_be_runtime
from align import Align
from format import Format
from binaryaddrtype import BinaryAddrType

# These modules are used to implement things in this file and aren't so directly
# exposed to the user. The user can still access them using the qualified names
# if they wish, since a control file will usually do import * from this module.
import classification
import config
import disassembly
import labelmanager
import movemanager
import mainformatter
import align
import trace
import utils

import cpu
import cpu65C02
import cpu6502
import cpu8080

cpu_names = { "6502"  : lambda : cpu6502.Cpu6502(),
              "65c02" : lambda : cpu65C02.Cpu65C02(),
              "8080"  : lambda : cpu8080.Cpu8080(),
            }

memory_binary = memorymanager.memory_binary
memory        = memorymanager.memory

def load(binary_load_addr, filename, cpu_name, md5sum=None):
    """Loads a binary file to analyse at the given address.

    Load a binary file and optionally verify the checksum of the data."""

    # Check we have a valid CPU for the chosen assembler and select the
    # trace.cpu accordingly
    if cpu_name is None:
        utils.die("No CPU type selected in call to load().")

    if isinstance(cpu_name, cpu.Cpu):
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

    # Load the file
    memorymanager.load(filename, binary_load_addr, md5sum)

    # Clear the no-automatic comments, for lack of a better place to clear them
    trace.no_auto_comment_set = set()

def move(dest_runtime_addr, src_binary_addr, length):
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

    dest_runtime_addr = memorymanager.RuntimeAddr(dest_runtime_addr)
    src_binary_addr = memorymanager.BinaryAddr(src_binary_addr)

    # You can't move from a region that hasn't been populated with data.
    assert all(memory_binary[i] is not None for i in range(src_binary_addr, src_binary_addr+length))
    return movemanager.add_move(dest_runtime_addr, src_binary_addr, length)

def constant(value, name, comment=None, *, align=Align.INLINE, format=Format.DEFAULT):
    """Give a name to a constant value for use in the assembly.

    These names can then be used in subsequent calls to expr().
    """
    assert((comment == None) or (isinstance(comment, str)))

    disassembly.add_constant(value, name, comment, align, format)

def label(runtime_addr, name, move_id=None):
    """Define a label name for a runtime address."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    assert isinstance(name, str)
    assert (move_id == None) or isinstance(move_id, int)
    if move_id is None:
        # Look up the associated binary address, just to get the best move_id
        _, move_id = movemanager.r2b(runtime_addr)

    disassembly.add_label(runtime_addr, name, move_id, is_autogenerated=False)

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

    return label(runtime_addr, s)

def optional_label(runtime_addr, name, base_runtime_addr=None, *, definable_inline=True):
    """Set a label at a runtime address, but only output if used.

    When two consecutive bytes share a label (e.g. `userv` and `userv+1`) then `base_runtime_addr` points to the first byte."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    if base_runtime_addr is not None:
        base_runtime_addr = memorymanager.RuntimeAddr(base_runtime_addr)
    disassembly.add_optional_label(runtime_addr, name, base_addr=base_runtime_addr, definable_inline=definable_inline)

def local_label(runtime_addr, name, start_addr, end_addr, move_id=None):
    disassembly.add_local_label(runtime_addr, name, start_addr, end_addr, move_id)

def substitute_constants(instruction, reg, constants_dict, define_all_constants=None):
    """When loading a register with an immediate value somewhere
    before the given instruction, fill in a constant or expression
    from the given dictionary.

    `define_all_constants` has three possible values:
        None    - define no constants (the default)
        False   - define only the constants used
        True    - define all constants
    """

    if define_all_constants == True:
        for entry in constants_dict:
            if disassembly.is_simple_name(constants_dict[entry]):
                constant(entry, constants_dict[entry])

    trace.substitute_constant_list.append(cpu6502.SubConst(instruction, reg, constants_dict, define_all_constants != None))

def subroutine(runtime_addr, name=None, title=None, description=None, on_entry=None, on_exit=None, hook=False, move_id=None, is_entry_point=True):
    """
    Define a subroutine.

    All parameters except the address are optional. These are used to
    create a header comment above the definition of the subroutine.

    They are also used to decorate calling code with explanatory text.
    This is done by the default hook function. If this is not wanted
    specify hook=None.
    """
    if name is not None and len(name)>0:
        if is_entry_point:
            entry(runtime_addr, name)
        else:
            optional_label(runtime_addr, name, move_id, definable_inline=True)

    # Use default hook function
    if hook == False and trace.cpu.default_subroutine_hook:
        hook = trace.cpu.default_subroutine_hook

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_loc = movemanager.r2b_checked(runtime_addr)

    # if the subroutine in within the binary, output a header comment for it.
    if memorymanager.is_data_loaded_at_binary_addr(binary_loc.binary_addr):
        # Format a comment for the subroutine header
        if config.get_subroutine_header() is not None:
            auto_comment(runtime_addr, config.get_subroutine_header(), word_wrap=False)
        com = "";
        middle = ""
        if title is not None and len(title)>0:
            middle += title + "\n";
        if description is not None and len(description)>0:
            middle += "\n" + description + "\n"
        if on_entry is not None and len(on_entry)>0:
            middle += "\nOn Entry:\n"
            for reg in on_entry:
                middle += config.get_indent_string() + reg.upper() + ": " + on_entry[reg] + "\n"
        if on_exit is not None and len(on_exit)>0:
            middle += "\nOn Exit:\n"
            for reg in on_exit:
                middle += config.get_indent_string() + reg.upper() + ": " + on_exit[reg] + "\n"
        if middle.startswith("\n"):
            middle = middle[1:]
        if middle.endswith("\n"):
            middle = middle[:-1]
        if len(middle)>0:
            auto_comment(runtime_addr, middle)
            if config.get_subroutine_footer() is not None:
                auto_comment(runtime_addr, config.get_subroutine_footer(), word_wrap=False)
    trace.add_subroutine(runtime_addr, name, title, description, on_entry, on_exit, hook, move_id)

def _convert_inline_to_align_internal(inline, align):
    # If no 'align' value is specified, convert the old True/False 'inline' values into the modern 'Align' type
    if align == None:
        if inline:
            align = Align.INLINE
        else:
            align = Align.BEFORE_LABEL

    assert isinstance(align, Align)
    return align

def comment(runtime_addr, text, inline=False, indent=0, word_wrap=True, *, align=None):
    """Add a comment.

    Define a comment string to appear in the assembly code at the
    given address in the output. The comment can be inlined (added
    to the end of the line), or standalone (a separate line of output).
    The comment is word wrapped by default.
    """
    assert isinstance(inline, bool)
    assert isinstance(indent, int)
    assert isinstance(word_wrap, bool)
    assert (align == None) or isinstance(align, Align)

    # Convert the old True/False values into the modern 'Align' type as needed
    align = _convert_inline_to_align_internal(inline, align)

    disassembly.comment(runtime_addr, text, word_wrap=word_wrap, indent=indent, align=align, auto_generated=False)

def formatted_comment(runtime_addr, text, inline=False, align=None, indent=0):
    """Add a comment without word wrapping."""

    # Convert the old True/False values into the modern 'Align' type as needed
    align = _convert_inline_to_align_internal(inline, align)

    disassembly.comment(runtime_addr, text, word_wrap=False, indent=indent, align=align)

def no_automatic_comment(runtime_addr):
    trace.no_auto_comment_set.add(runtime_addr)

def auto_comment(runtime_addr, text, inline=False, align=None, indent=0, show_blank=False, word_wrap=True):
    """For internal use only. Generates a comment if not inhibited."""

    if runtime_addr == None:
        return

    # Convert the old True/False values into the modern 'Align' type as needed
    align = _convert_inline_to_align_internal(inline, align)

    if not (runtime_addr in trace.no_auto_comment_set):
        # Make sure we are within the binary
        runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
        binary_addr, _ = movemanager.r2b(runtime_addr)
        if binary_addr:
            if memorymanager.is_data_loaded_at_binary_addr(binary_addr):
                if show_blank:
                    blank(runtime_addr)
                disassembly.comment(runtime_addr, text, word_wrap=word_wrap, indent=indent, align=align, auto_generated=True)

def annotate(runtime_addr, s, *, align=Align.BEFORE_LABEL, priority=None):
    """Add a raw string directly to the assembly code output at the
    given address."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_loc = movemanager.r2b_checked(runtime_addr)
    disassembly.add_raw_annotation(binary_loc, s, align=align, priority=priority)

def blank(runtime_addr, *, align=Align.BEFORE_LABEL, priority=None):
    annotate(runtime_addr, "", align=align, priority=priority)

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
    binary_loc = movemanager.r2b_checked(runtime_addr)
    assert memorymanager.is_data_loaded_at_binary_addr(binary_loc.binary_addr)

    if isinstance(s, dict):
        # Dictionary supplied.
        # Look up value in binary, and use that as key in dictionary
        val = get_u8_binary(binary_loc.binary_addr)
        classification.add_expression(binary_loc.binary_addr, s[val])
    else:
        classification.add_expression(binary_loc.binary_addr, s)

def auto_expr(runtime_addr, s):
    """For internal use only. Generates an expression if not inhibited."""

    if runtime_addr == None:
        return

    if not (runtime_addr in trace.no_auto_comment_set):
        # Make sure we are within the binary
        runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
        binary_addr, _ = movemanager.r2b(runtime_addr)
        if binary_addr:
            if memorymanager.is_data_loaded_at_binary_addr(binary_addr):
                expr(runtime_addr, s)

def byte(runtime_addr, n=1, cols=None):
    """Categorise a number of bytes at the given address as byte data."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_loc = movemanager.r2b_checked(runtime_addr)
    if not memorymanager.check_data_loaded_at_binary_addr(binary_loc.binary_addr, n, True):
        return
    disassembly.add_classification(binary_loc.binary_addr, classification.Byte(n, cols=cols))

# TODO: byte()/word() should probably optionally (via an optional arg or a variant function)
# allow the user to specify a format hint for the range without having to make a separate call
# to the relevant formatter function with the same arguments. Just maybe an optional argument
# "format_command=None" where we do "if format_command is not None: format_command(runtime_addr, n)"
# would work, then you could do "word(0x432, 4, picture_binary)" (if we squeezed formatter in before
# warn=True argument; this is all getting a smidge messy, especially if the user is forced to specify
# 1 for the n argument) - anyway, think about it...
def word(runtime_addr, n=1, cols=None):
    """Categorise a number of 16 bit words at the given address as word data."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_loc = movemanager.r2b_checked(runtime_addr)
    if not memorymanager.check_data_loaded_at_binary_addr(binary_loc.binary_addr, n * 2, True):
        return
    disassembly.add_classification(binary_loc.binary_addr, classification.Word(n * 2, cols=cols))

def entry(runtime_addr, label=None, warn=True):
    """
    Specifies that there is code at the given runtime address.

    When go() is called, code is automatically traced from each entry
    point through all possible branches and subroutines. This is
    categorised as code, and therefore output as instructions.
    """

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_loc = movemanager.r2b_checked(runtime_addr)

    memorymanager.check_data_loaded_at_binary_addr(binary_loc.binary_addr, 1, warn)

    trace.cpu.add_entry(binary_loc.binary_addr, runtime_addr, binary_loc.move_id, label)

    result = disassembly.get_label(runtime_addr, binary_loc.binary_addr, move_id=binary_loc.move_id, binary_addr_type=BinaryAddrType.BINARY_ADDR_IS_AT_LABEL_DEFINITION)

    return result

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
    binary_loc = movemanager.r2b_checked(runtime_addr)
    assert memorymanager.is_data_loaded_at_binary_addr(binary_loc.binary_addr)

    trace.cpu.traced_entry_points.add(binary_loc.binary_addr)

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
        binary_loc = movemanager.r2b_checked(runtime_addr)
        assert memorymanager.is_data_loaded_at_binary_addr(binary_loc.binary_addr, 2)
        entry_runtime_addr = get_u16_binary(binary_loc.binary_addr)
        entry_label = entry(entry_runtime_addr)
        expr(runtime_addr, entry_label)

        runtime_addr += 2

    return runtime_addr

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

def code_ptr(runtime_addr, runtime_addr_high=None, offset=0, label_name=None):
    """
    Marks two bytes of data as being the address of a subroutine.

    The low and high bytes do not need to be stored adjacently since
    their addresses can be specified separately. This is used to handle
    jump tables where the low and high bytes are stored in separate
    tables. An optional offset can be applied to the subroutine
    address.

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
    label = entry(code_at_runtime_addr, label=label_name, warn=False)
    # Reference that label at addr/addr_high.
    offset_string = "" if offset == 0 else ("%+d" % -offset)
    if binary_addr_high == binary_addr + 1:
        # The general code in the "else" branch would work for this case as
        # well, but since the assembler has support for emitting a little-endian
        # 16-bit word it's nice to use it when we can.
        assert runtime_addr_high == runtime_addr + 1
        word(runtime_addr)
        expr(runtime_addr, utils.LazyString("%s%s", label, offset_string))
    else:
        byte(runtime_addr)
        expr(runtime_addr, make_lo(utils.LazyString("%s%s", label, offset_string)))
        byte(runtime_addr_high)
        expr(runtime_addr_high, make_hi(utils.LazyString("%s%s", label, offset_string)))
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
        binary_loc = movemanager.r2b_checked(runtime_addr + i)
        disassembly.format_hint[binary_loc.binary_addr] = formatter

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

#
# Assembler specific expression strings can be built using these functions:
#

def is_simple_name(s):
    return disassembly.is_simple_name(s)

def bracket(expr):
    """Add brackets to an expression if it's not a simple label name or number"""

    if isinstance(expr, utils.LazyString):
        return utils.LazyString("(%s)", expr)
    elif utils.is_integer_type(expr) or expr.isdigit() or is_simple_name(expr):
        return str(expr)
    return "(" + expr + ")"

# Get assembler specific operator name from a generic operator name
def assembler_op_name(s):
    """Translate an operator name into one that is assembler specific"""

    trans = config.get_assembler().translate_binary_operator_names()
    if s in trans:
        result = trans[s]
        if result == None:
            utils.error("Assembler can't handle operator " + s)
        return result
    return s

# Unary operators
def make_op1(op, expr):
    """Make a unary operator expression for the assembler"""

    if (op == None) or (expr == None):
        return None

    trans = config.get_assembler().translate_unary_operator_names()
    if op in trans:
        op = trans[op]
        if result == None:
            utils.error("Assembler can't handle operator " + op)

    if isinstance(expr, utils.LazyString):
        return utils.LazyString("%s%s", op, bracket(expr))
    return op + bracket(expr)

# Binary operators
def make_op2(expr1, op, expr2):
    """Make a binary operator expression for the assembler"""
    if (expr1 == None) or (op == None) or (expr2 == None):
        return None
    op_name = assembler_op_name(op)
    if op_name == None:
        return None

    if isinstance(expr1, utils.LazyString) or isinstance(expr2, utils.LazyString):
        return utils.LazyString("%s %s %s", bracket(expr1), op_name, bracket(expr2))
    return bracket(expr1) + " " + op_name + " " + bracket(expr2)

# Convenience functions
def make_lo(expr):
    return make_op1('<', expr)

def make_hi(expr):
    return make_op1('>', expr)

def make_or(expr1, expr2):
    return make_op2(expr1, 'OR', expr2)

def make_and(expr1, expr2):
    return make_op2(expr1, 'AND', expr2)

def make_eor(expr1, expr2):
    return make_op2(expr1, 'EOR', expr2)

def make_xor(expr1, expr2):
    return make_op2(expr1, 'EOR', expr2)

def make_add(expr1, expr2):
    return make_op2(expr1, '+', expr2)

def make_subtract(expr1, expr2):
    return make_op2(expr1, '-', expr2)

def make_multiply(expr1, expr2):
    return make_op2(expr1, '*', expr2)

def make_divide(expr1, expr2):
    return make_op2(expr1, 'DIV', expr2)

def make_modulo(expr1, expr2):
    return make_op2(expr1, 'MOD', expr2)


def go(print_output=True, post_trace_steps=None, autostring_min_length=3):
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
    disassembly.add_label(memorymanager.RuntimeAddr(int(pydis_start)), "pydis_start", is_autogenerated=True, move_id=movemanager.BASE_MOVE_ID, priority=1)
    disassembly.add_label(memorymanager.RuntimeAddr(int(pydis_end)), "pydis_end", is_autogenerated=True, move_id=movemanager.BASE_MOVE_ID)

    # Trace where code lives
    trace.cpu.trace()

    # Generate all the references
    trace.cpu.generate_references()

    # Fix up the final label names (evaluating LazyStrings into actual strings)
    disassembly.fix_label_names()

    # Output all the references
    if config.get_label_references():
        trace.cpu.add_references_comments()

    # Scan the binary for strings (or allow a user function to do it)
    # We do this after tracing so we have the classifications.
    if post_trace_steps is None:
        def post_trace_steps():
            classification.autostring(autostring_min_length)
    post_trace_steps()

    # Mark everything remaining as bytes
    classification.classify_leftovers()

    # Get the final assembly as a string
    result = disassembly.emit()

    # Output assembly code if wanted
    global args

    # Write to a file if specified
    if args.output:
        with open(args.output, 'w') as file:
            file.write(result)
    elif print_output:
        print(result)

    # Return assembly code as a string
    return result

# Command line parsing
parser = argparse.ArgumentParser()
parser.add_argument("-b", "--beebasm", action="store_true", help="generate beebasm-style output (default)")
parser.add_argument("-a", "--acme", action="store_true", help="generate acme-style output")
parser.add_argument("-x", "--xa", action="store_true", help="generate xa-style output")
parser.add_argument("-8", "--z88dk-8080", action="store_true", help="generate z88dk style output for the 8080 processor")
parser.add_argument("-l", "--lower", action="store_true", help="generate lower-case output (default)")
parser.add_argument("-u", "--upper", action="store_true", help="generate upper-case output")
parser.add_argument("-o", "--output", help="output asm file")
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
