"""
Classifies every byte of a binary file.

Bytes that are loaded from a binary file are classified by type. Data
is marked with a Byte, Word or String object, and code is marked with
an Opcode* object, as defined by the configured CPU.

Each classification object has a length, so the object is stored in the
first address of the classification, and the remainder are set to the
'INSIDE_A_CLASSIFICATION' constant so it's known to be classified.

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
import mainformatter
import memorymanager
import movemanager
import pprint
import stats
import trace
import traceback
import utils
from memorymanager import BinaryAddr, RuntimeAddr
from format import Format
from binaryaddrtype import BinaryAddrType

expressions   = {}
memory_binary = memorymanager.memory_binary
assembler     = config.get_assembler

# `INSIDE_A_CLASSIFICATION` is an arbitrary constant value.
#
# We assign this value to the second and subsequent bytes of a multi-byte
# classification (e.g. the operands of an instruction). Its actual value doesn't
# matter, as long as it's not None so we know these bytes have been classified.
INSIDE_A_CLASSIFICATION = 0

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

    def is_code(self, binary_addr):
        return False

    def as_string_list(self, binary_loc, annotations):
        return mainformatter.format_data_block(binary_loc, self._length, self._cols, 1, annotations)


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

    def is_code(self, binary_addr):
        return False

    def as_string_list(self, binary_loc, annotations):
        return mainformatter.format_data_block(binary_loc, self._length, self._cols, 2, annotations)


class String(object):
    """Object used to mark part of the binary data as a string."""

    def __init__(self, length):
        assert length > 0
        self._length = length
        self._caller = utils.find_external_callstack()

    def length(self):
        return self._length

    def set_length(self, length):
        assert length > 0
        self._length = length

    def is_code(self, binary_addr):
        return False

    def as_string_list(self, binary_loc, annotations):
        result = []
        prefix = utils.make_indent(1) + assembler().string_prefix()
        s = prefix
        state = 0       # 0=not started first string yet, 1=within string, 2=finished string
        s_i = 0

        if binary_loc.binary_addr in expressions:
            s = get_expression(binary_loc.binary_addr, memory_binary[binary_loc.binary_addr])
            result.append(mainformatter.add_inline_comment_including_hexdump(binary_loc, self._length, "", annotations, prefix + s))
            return result

        for i in range(self._length):
            c = memorymanager.get_u8_binary(binary_loc.binary_addr + i)
            c_in_string = assembler().string_chr(c)
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
                    s += get_constant8(binary_loc.binary_addr + i)
            if len(s) > (config.get_inline_comment_column() - 5):
                if state == 1:
                    s += '"'
                temp_binary_loc = movemanager.BinaryLocation(binary_loc.binary_addr + s_i, binary_loc.move_id)
                result.append(mainformatter.add_inline_comment_including_hexdump(temp_binary_loc, i - s_i, "", annotations, s))
                s = prefix
                s_i = i + 1
                state = 0

        if s != prefix:
            if state == 1:
                s += '"'
            temp_binary_loc = movemanager.BinaryLocation(binary_loc.binary_addr + s_i, binary_loc.move_id)
            result.append(mainformatter.add_inline_comment_including_hexdump(temp_binary_loc, self._length - s_i, "", annotations, s))
        return result

    def __str__(self):
        #formatted_string = pprint.pformat(self._caller, indent=0)
        formatted_string = ""
        for i in self._caller:
            formatted_string = str(i) + "\n" + formatted_string
        return "String, of length {0}, during call from:\n{1}".format(self._length, formatted_string)

    def __repr__(self) -> str:
        return self.__str__()

def add_expression(binary_addr, s):
    """Add an expression for the given binary address."""

    assert not isinstance(s, labelmanager.Label) # TODO!?
    # TODO: Warn/assert if binary_addr already in expressions? Allow overriding this via an optional bool argument?
    if binary_addr not in expressions:
        expressions[binary_addr] = s

def check_expr(expr, value):
    """Add an assert to the output based on an expression."""

    # ENHANCE: It would be good to at least try to evaluate "expression" and generate
    # an error if it doesn't match expected_value. In reality most expressions will
    # be fairly simple combinations of labels and basic integer arithmetic, mixed with
    # the < and > operators to get the low and high bytes of a 16-bit word.

    # ENHANCE: It would be good if this could (probably optionally) evaluate
    # 'expr' itself in the content of the current set of labels and constants.
    # However, the "assert at assembly time" approach should be absolutely
    # reliable (it's just not as early a detection as we'd like) so should
    # probably be retained even if expression evaluation is supported directly
    # in py8dis.

    # Don't clutter the output with pedantic 'constant = value' assertions
    for constant in disassembly.constants:
        if expr == constant.name:
            if constant.format == Format.CHAR:
                return
            elif constant.format == Format.STRING:
                return
            elif (constant.value != value):
                utils.die("Constant '{0}' found to be {1} but expected to be {2}".format(expr, constant.value, value))
            return

    config.get_assembler().assert_expr(expr, value)

def get_expression(binary_addr, expected_value):
    """Get the previously supplied expression for the given address."""

    expression = expressions[binary_addr]
    classification = disassembly.get_classification(binary_addr)
    if isinstance(classification, String):
        length = classification.length()
        string_at_binary = ""
        for i in range(length):
            string_at_binary += chr(memory_binary[binary_addr])
            binary_addr += 1
        expected_value = string_at_binary
    check_expr(expression, expected_value)
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
        return disassembly.get_label(operand, binary_addr, binary_addr_type=BinaryAddrType.BINARY_ADDR_IS_AT_LABEL_USAGE)
    return get_expression(binary_addr, operand)

def get_address16(binary_addr):
    """Get a string representing the 16 bit address at binary_addr.

    This could return a label name, an expression or failing that just
    a constant hex address. Used by CPU Opcodes to format output, e.g.
    for converting 'JSR $1234' into 'JSR my_label'.
    """

    operand = memorymanager.get_u16_binary(binary_addr)
    if binary_addr not in expressions:
        return disassembly.get_label(operand, binary_addr, binary_addr_type=BinaryAddrType.BINARY_ADDR_IS_AT_LABEL_USAGE)

    assert isinstance(disassembly.get_classification(binary_addr), Word) or (isinstance(disassembly.get_classification(binary_addr - 1), trace.cpu.Opcode) and disassembly.get_classification(binary_addr - 1).length() == 3), "Address: %s" % hex(binary_addr)
    return get_expression(binary_addr, operand)

# TODO: I've made this work with runtime_addr without paying any attention to the needs of hook fns etc
def stringterm_binary(binary_addr, terminator, exclude_terminator=False):
    """Classifies part of the binary as a string followed by a given
    terminator byte.

    Returns the next available memory address after the string."""

    initial_addr = binary_addr
    while memory_binary[binary_addr] != terminator:
        binary_addr += 1
    string_length = (binary_addr + 1) - initial_addr
    if exclude_terminator:
        string_length -= 1
    if string_length > 0:
        disassembly.add_classification(initial_addr, String(string_length))
    return movemanager.b2r(binary_addr + 1)

def string_binary(binary_addr, n=None):
    if n is None:
        assert not disassembly.is_classified(binary_addr), "Address " + hex(binary_addr) + " already classified"
        n = 0
        while not disassembly.is_classified(binary_addr + n) and utils.isprint(memory_binary[binary_addr + n]):
            n += 1
        assert(not disassembly.is_classified(binary_addr, n))
    if n > 0:
        disassembly.add_classification(binary_addr, String(n))
    return movemanager.b2r(binary_addr + n)

def stringhi_binary(binary_addr, include_terminator_fn=None):
    """Classifies a part of the binary as a string up to the next bit 7 set character.

    The string may or may not include the terminator character without
    the top bit.

    Returns the next available memory address after the string."""

    assert not disassembly.is_classified(binary_addr, 1)
    initial_addr = binary_addr
    while True:
        if disassembly.is_classified(binary_addr, 1):
            break
        if memory_binary[binary_addr] & 0x80 != 0:
            if include_terminator_fn is not None and include_terminator_fn(memory_binary[binary_addr]):
                c = memory_binary[binary_addr] & 0x7f
                if utils.isprint(c) and c != ord('"') and c != ord('\''):
                    add_expression(binary_addr, "%s+'%s'" % (assembler().hex2(0x80), chr(c)))
                else:
                    add_expression(binary_addr, "%s+%s" % (assembler().hex2(0x80), assembler().hex2(c)))
                binary_addr += 1
            break
        binary_addr += 1
    if binary_addr > initial_addr:
        disassembly.add_classification(initial_addr, String(binary_addr - initial_addr))
    return movemanager.b2r(binary_addr)

# Behaviour with include_terminator_fn=None should be beebdis-compatible.
def stringhiz_binary(binary_addr, include_terminator_fn=None):
    """Classifies a part of the binary as a string up to the next bit 7 set character or zero character."""

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

def stringn_binary(binary_addr):
    """Classifies a part of the binary as a string with the first byte
    giving the length.

    Returns the next available memory address after the string."""

    disassembly.add_classification(binary_addr, Byte(1))
    length = memory_binary[binary_addr]
    label_start = disassembly.get_label(runtime_addr + 1, binary_addr, binary_addr_type=BinaryAddrType.BINARY_ADDR_IS_AT_LABEL_DEFINITION)
    label_end   = disassembly.get_label(runtime_addr + 1 + length, binary_addr, binary_addr_type=BinaryAddrType.BINARY_ADDR_IS_AT_LABEL_DEFINITION)
    add_expression(binary_addr, utils.LazyString("%s - %s", label_end, label_start))
    return string(runtime_addr + 1, length)

def autostring(min_length=3):
    """Attempt to automatically find and classify strings through the entire binary."""

    assert min_length >= 2
    binary_addr = BinaryAddr(0)
    while binary_addr < len(memory_binary):
        i = 0
        while (binary_addr + i) < len(memory_binary) and memory_binary[binary_addr + i] is not None and not disassembly.is_classified(binary_addr + i, 1) and utils.isprint(memory_binary[binary_addr + i]):
            i += 1
            runtime_addr = movemanager.b2r(binary_addr + i)

            # We end the classification here if there is a label (that is not an expression)
            if runtime_addr in labelmanager.labels:
                if not labelmanager.labels[runtime_addr].is_only_an_expression():
                    break

        # if a string is found with at least the minimum length, classify it as a string
        if i >= min_length:
            runtime_addr = movemanager.b2r(binary_addr)
            assert(not disassembly.is_classified(binary_addr, i))
            string_binary(binary_addr, i)
        binary_addr += max(1, i)

def classify_leftovers():
    """Classify everything not already classified, as bytes."""

    binary_addr = BinaryAddr(0)
    while binary_addr < len(memory_binary):
        i = 0
        while (binary_addr + i) < len(memory_binary) and memory_binary[binary_addr + i] is not None and not disassembly.is_classified(binary_addr + i, 1):
            i += 1
            if (binary_addr + i) >= len(memory_binary) or movemanager.b2r(binary_addr + i) in labelmanager.labels:
                break
        if i > 0:
            disassembly.add_classification(binary_addr, Byte(i))
        binary_addr += max(1, i)

def get_stats():
    result = stats.Stats()
    binary_addr = BinaryAddr(0)
    oldc = None
    while binary_addr < len(memory_binary):
        if disassembly.is_classified(binary_addr, 1):
            result.num_total_bytes += 1
            c = disassembly.get_classification(binary_addr)
            if isinstance(c, Byte):
                result.num_data_bytes += 1
            elif isinstance(c, Word):
                result.num_data_words += 1
            elif isinstance(c, String):
                result.num_strings += 1
                result.num_string_bytes += 1
            elif isinstance(c, trace.cpu.Opcode):
                result.num_instructions += 1
                result.num_code_bytes += 1
            elif c == INSIDE_A_CLASSIFICATION:
                if isinstance(oldc, Byte):
                    result.num_data_bytes += 1
                elif isinstance(oldc, Word):
                    result.num_data_words += 1
                elif isinstance(oldc, String):
                    result.num_string_bytes += 1
                elif isinstance(oldc, trace.cpu.Opcode):
                    result.num_code_bytes += 1

            if c != INSIDE_A_CLASSIFICATION:
                oldc = c

        binary_addr += 1
    return result
