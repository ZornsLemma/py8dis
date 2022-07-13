"""
Classifies the data bytes of a binary file.

Bytes that are loaded from a binary file are classified by type. Data
is marked with a Byte, Word or String object, and code is marked with
an Opcode* object, as defined by the configured CPU.

Users can mark data as Byte, Word or String. They use functions
byte() and word() for the first two types. For strings there are a
number of functions to help determine the full extent of the string:

stringterm()  the string terminates at a specified termination value
stringcr()    the string terminates at ASCII code 13
stringz()     the string terminates at ASCII code 0
string()      the string terminates at a non-printable character, or
              the given length
stringhi()    the string terminates at a top-bit-set character,
              optionally including the bottom 7 bits of the terminator
              as the final character
stringhiz()   as stringhi, but also terminates at zero
stringn()     the first byte holds the length, followed by the string

This module also manages 'Expressions'. Expressions are user defined
output strings associated with an address. They are typically used for
applying some calculation or arithmetic to the immediate operands of
instructions, or to data.

e.g. An expression 'initial_lives + 1' could be used to output an
instruction 'LDA #initial_lives + 1'. The address supplied for the
expression must be of the operand, not the opcode.
"""

from __future__ import print_function
import collections

import config
import disassembly
import labelmanager
import movemanager
import mainformatter
import trace
import utils
import memorymanager

expressions   = {}
memory_binary = memorymanager.memory_binary
formatter     = config.get_formatter

# ENHANCE: At the moment there's no support for wrapping round at the top of
# memory and we might just crash (probably with an out-of-bounds error) if
# disassembling right up to the top of memory.

class Byte(object):
    """Object used to mark part of the binary data as bytes."""

    def __init__(self, length, cols=None):
        assert length > 0
        assert cols is None or cols > 0
        self._length = length
        self._cols = cols

    def length(self):
        return self._length

    def set_length(self, length):
        assert length > 0
        self._length = length

    def is_code(self, addr):
        return False

    def as_string_list(self, binary_addr, annotations):
        return mainformatter.format_data_block(binary_addr, self._length, self._cols, 1, annotations)


class Word(object):
    """Object used to mark part of the binary data as words (16 bit)."""

    def __init__(self, length, cols=None):
        assert cols is None or cols > 0
        self.set_length(length)
        self._cols = cols

    def length(self):
        return self._length

    def set_length(self, length):
        assert length > 0
        assert length % 2 == 0
        self._length = length

    def is_code(self, addr):
        return False

    def as_string_list(self, binary_addr, annotations):
        return mainformatter.format_data_block(binary_addr, self._length, self._cols, 2, annotations)


class String(object):
    """Object used to mark part of the binary data as a string."""

    def __init__(self, length):
        assert length > 0
        self._length = length

    def length(self):
        return self._length

    def set_length(self, length):
        assert length > 0
        self._length = length

    def is_code(self, addr):
        return False

    def as_string_list(self, binary_addr, annotations):
        result = []
        prefix = utils.make_indent(1) + formatter().string_prefix()
        s = prefix
        state = 0
        s_i = 0
        for i in range(self._length):
            c = memory_binary[binary_addr + i]
            c_in_string = formatter().string_chr(c)
            if c_in_string is not None:
                if state == 0:
                    s += '"'
                elif state == 2:
                    s += ', "'
                state = 1
                s += c_in_string
            else:
                if state == 1:
                    s += '", '
                elif state == 2:
                    s += ", "
                state = 2
                if c == ord('"'):
                    s += "'\"'"
                else:
                    s += get_constant8(binary_addr + i)
            if len(s) > (config.get_inline_comment_column() - 5):
                if state == 1:
                    s += '"'
                result.append(mainformatter.add_inline_comment(binary_addr + s_i, i - s_i, annotations, s))
                s = prefix
                s_i = i + 1
                state = 0
        if s != prefix:
            if state == 1:
                s += '"'
            result.append(mainformatter.add_inline_comment(binary_addr + s_i, self._length - s_i, annotations, s))
        return result


def add_expression(binary_addr, s):
    """Add an expression for the given binary address."""

    assert not isinstance(s, labelmanager.Label) # TODO!?
    # TODO: Warn/assert if addr already in expressions? Allow overriding this via an optional bool argument?
    if binary_addr not in expressions:
        expressions[binary_addr] = s

def get_expression(binary_addr, expected_value):
    """Get the previously supplied expression for the given address."""

    expression = expressions[binary_addr]
    utils.check_expr(expression, expected_value)
    return expression

def get_constant8(binary_addr):
    """Get a string representing the 8 bit constant at binary_addr.

    This could return the name of a constant, an expression or failing
    that just a constant hex value. Used by CPU Opcodes to format
    output, e.g. for converting 'LDA #3' into 'LDA #num_lives'
    """

    if binary_addr in expressions:
        return get_expression(binary_addr, memory_binary[binary_addr])
    return mainformatter.constant8(binary_addr)

def get_constant16(binary_addr):
    """Get a string representing the 16 bit constant at binary_addr.

    This could return the name of a constant, an expression or failing
    that just a constant hex value. Used by CPU Opcodes to format
    output, e.g. for converting 'LXI BC,$1234' into
    'LXI BC,my_special_constant'.
    """

    if binary_addr in expressions:
        return get_expression(binary_addr, memorymanager.get_u16_binary(binary_addr))
    return mainformatter.constant16(binary_addr)

def get_address8(binary_addr):
    """Get a string representing the 8 bit address at binary_addr.

    This could return a label name, an expression or failing that just
    a constant hex address. Used by CPU Opcodes to format output,
    e.g. for converting 'LDA $12' into 'LDA num_lives'.
    """

    operand = memory_binary[binary_addr]
    if binary_addr not in expressions:
        return disassembly.get_label(operand, binary_addr)
    return get_expression(binary_addr, operand)

def get_address16(binary_addr):
    """Get a string representing the 16 bit address at binary_addr.

    This could return a label name, an expression or failing that just
    a constant hex address. Used by CPU Opcodes to format output, e.g.
    for converting 'JSR $1234' into 'JSR my_label'.
    """

    operand = memorymanager.get_u16_binary(binary_addr)
    if binary_addr not in expressions:
        return disassembly.get_label(operand, binary_addr)

    assert isinstance(disassembly.get_classification(binary_addr), Word) or (isinstance(disassembly.get_classification(binary_addr - 1), trace.cpu.Opcode) and disassembly.get_classification(binary_addr - 1).length() == 3)
    return get_expression(binary_addr, operand)

# TODO: I've made this work with runtime_addr without paying any attention to the needs of hook fns etc
def stringterm(runtime_addr, terminator, exclude_terminator=False):
    """Classifies part of the binary as a string followed by a given
    terminator byte.

    Returns the next available memory address after the string."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    initial_addr = binary_addr
    while memory_binary[binary_addr] != terminator:
        binary_addr += 1
    string_length = (binary_addr + 1) - initial_addr
    if exclude_terminator:
        string_length -= 1
    if string_length > 0:
        disassembly.add_classification(initial_addr, String(string_length))
    return movemanager.b2r(binary_addr + 1)

def stringcr(runtime_addr, exclude_terminator=False):
    """Classifies part of the binary as a string followed by ASCII 13.

    Returns the next available memory address after the string."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    return stringterm(runtime_addr, 13, exclude_terminator)

def stringz(runtime_addr, exclude_terminator=False):
    """Classifies part of the binary as a string followed by ASCII 0.

    Returns the next available memory address after the string."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    return stringterm(runtime_addr, 0, exclude_terminator)

# TODO: I've made this work with runtime_addr without paying any attention to the needs of hook fns etc
def string(runtime_addr, n=None):
    """Classifies a part of the binary as a string of given length or
    up to the next non-printable character.

    Returns the next available memory address after the string."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    if n is None:
        assert not disassembly.is_classified(binary_addr)
        n = 0
        while not disassembly.is_classified(binary_addr + n) and utils.isprint(memory_binary[binary_addr + n]):
            n += 1
    if n > 0:
        disassembly.add_classification(binary_addr, String(n))
    return movemanager.b2r(binary_addr + n)

def stringhi(runtime_addr, include_terminator_fn=None):
    """Classifies a part of the binary as a string up to the next bit 7 set character.

    The string may or may not include the terminator character without
    the top bit.

    Returns the next available memory address after the string."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    assert not disassembly.is_classified(binary_addr, 1)
    initial_addr = binary_addr
    while True:
        if disassembly.is_classified(binary_addr, 1):
            break
        if memory_binary[binary_addr] & 0x80 != 0:
            if include_terminator_fn is not None and include_terminator_fn(memory_binary[binary_addr]):
                c = memory_binary[binary_addr] & 0x7f
                if utils.isprint(c) and c != ord('"') and c != ord('\''):
                    add_expression(binary_addr, "%s+'%s'" % (formatter().hex2(0x80), chr(c)))
                else:
                    add_expression(binary_addr, "%s+%s" % (formatter().hex2(0x80), formatter().hex2(c)))
                binary_addr += 1
            break
        binary_addr += 1
    if binary_addr > initial_addr:
        disassembly.add_classification(initial_addr, String(binary_addr - initial_addr))
    return movemanager.b2r(binary_addr)

# Behaviour with include_terminator_fn=None should be beebdis-compatible.
def stringhiz(runtime_addr, include_terminator_fn=None):
    """Classifies a part of the binary as a string up to the next bit 7 set character or zero character."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    assert not disassembly.is_classified(binary_addr, 1)
    initial_addr = binary_addr
    while True:
        if disassembly.is_classified(binary_addr, 1):
            break
        if memory_binary[binary_addr] == 0 or (memory_binary[binary_addr] & 0x80) != 0:
            if include_terminator_fn is not None and include_terminator_fn(memory_binary[binary_addr]):
                binary_addr += 1
            break
        binary_addr += 1
    if binary_addr > initial_addr:
        disassembly.add_classification(initial_addr, String(binary_addr - initial_addr))
    return movemanager.b2r(binary_addr)

def stringn(runtime_addr):
    """Classifies a part of the binary as a string with the first byte
    giving the length.

    Returns the next available memory address after the string."""

    runtime_addr = memorymanager.RuntimeAddr(runtime_addr)
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    disassembly.add_classification(binary_addr, Byte(1))
    length = memory_binary[binary_addr]
    add_expression(binary_addr, utils.LazyString("%s - %s", disassembly.get_label(runtime_addr + 1 + length, binary_addr), disassembly.get_label(runtime_addr + 1, binary_addr)))
    return string(runtime_addr + 1, length)

def autostring(min_length=3):
    """Attempt to automatically find and classify strings through the entire binary."""

    assert min_length >= 2
    addr = memorymanager.BinaryAddr(0)
    while addr < len(memory_binary):
        i = 0
        while (addr + i) < len(memory_binary) and memory_binary[addr + i] is not None and not disassembly.is_classified(addr + i, 1) and utils.isprint(memory_binary[addr + i]):
            i += 1
            if movemanager.b2r(addr + i) in labelmanager.labels:
                break
        if i >= min_length:
            # TODO: I suspect the next two line fragment should be wrapped up if I keep it, probably repeated a bit (probably something like "with movemanager.b2r(binary_addr) as runtime_addr:...", although I probably can't reuse the b2r function, but maybe think about it)
            runtime_addr = movemanager.b2r(addr)
            with movemanager.move_id_for_binary_addr[addr]:
                string(runtime_addr, i)
        addr += max(1, i)

def classify_leftovers():
    """Classify everything not already classified, as bytes."""

    addr = memorymanager.BinaryAddr(0)
    while addr < len(memory_binary):
        i = 0
        while (addr + i) < len(memory_binary) and memory_binary[addr + i] is not None and not disassembly.is_classified(addr + i, 1):
            i += 1
            if movemanager.b2r(addr + i) in labelmanager.labels:
                break
        if i > 0:
            disassembly.add_classification(addr, Byte(i))
        addr += max(1, i)
