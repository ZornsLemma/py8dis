from __future__ import print_function
import collections

import config
import disassembly
import labelmanager
import movemanager
import newformatter
import trace
import utils

expressions = {}
memory_binary = config.memory_binary
formatter = config.formatter

# ENHANCE: At the moment there's no support for wrapping round at the top of
# memory and we might just crash (probably with an out-of-bounds error) if
# disassembling right up to the top of memory.

class Byte(object):
    def __init__(self, length, is_mergeable=True, cols=None):
        assert length > 0
        assert cols is None or cols > 0
        self._length = length
        self._is_mergeable = is_mergeable
        self._cols = cols

    def is_mergeable(self):
        return self._is_mergeable

    def length(self):
        return self._length

    def set_length(self, length):
        assert length > 0
        self._length = length

    def is_code(self, addr):
        return False

    def as_string_list(self, binary_addr, annotations):
        return newformatter.format_data_block(binary_addr, self._length, self._cols, 1, annotations)


class Word(object):
    def __init__(self, length, is_mergeable=True, cols=None):
        assert cols is None or cols > 0
        self.set_length(length)
        self._is_mergeable = is_mergeable
        self._cols = cols

    def is_mergeable(self):
        return self._is_mergeable

    def length(self):
        return self._length

    def set_length(self, length):
        assert length > 0
        assert length % 2 == 0
        self._length = length

    def is_code(self, addr):
        return False

    def as_string_list(self, binary_addr, annotations):
        return newformatter.format_data_block(binary_addr, self._length, self._cols, 2, annotations)


class String(object):
    def __init__(self, length, is_mergeable=True):
        assert length > 0
        self._length = length
        self._is_mergeable = is_mergeable

    def is_mergeable(self):
        return self._is_mergeable

    def length(self):
        return self._length

    def set_length(self, length):
        assert length > 0
        self._length = length

    def is_code(self, addr):
        return False

    def as_string_list(self, addr, annotations):
        result = []
        prefix = utils.make_indent(1) + formatter().string_prefix()
        s = prefix
        state = 0
        s_i = 0
        for i in range(self._length):
            c = memory_binary[addr + i]
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
                    s += get_constant8(addr + i)
            if len(s) > (config.inline_comment_column() - 5):
                if state == 1:
                    s += '"'
                result.append(newformatter.add_inline_comment(addr + s_i, i - s_i, annotations, s))
                s = prefix
                s_i = i + 1
                state = 0
        if s != prefix:
            if state == 1:
                s += '"'
            result.append(newformatter.add_inline_comment(addr + s_i, self._length - s_i, annotations, s))
        return result


def add_expression(addr, s):
    assert not isinstance(s, labelmanager.Label) # TODO!?
    # TODO: Warn/assert if addr already in expressions? Allow overriding this via an optional bool argument?
    if addr not in expressions:
        expressions[addr] = s

def get_expression(addr, expected_value):
    expression = expressions[addr]

    # ENHANCE: It would be good to at least try to evaluate "expression" and generate
    # an error if it doesn't match expected_value. In reality most expressions will
    # be fairly simple combinations of labels and basic integer arithmetic, mixed with
    # the < and > operators to get the low and high bytes of a 16-bit word.
    utils.check_expr(expression, expected_value)
    return expression

def get_constant8(addr):
    if addr in expressions:
        return get_expression(addr, memory_binary[addr])
    return newformatter.constant8(addr)

def get_constant16(addr):
    if addr in expressions:
        return get_expression(addr, utils.get_u16(addr))
    return newformatter.constant16(addr)

def get_address8(addr):
    operand = memory_binary[addr]
    if addr not in expressions:
        return disassembly.get_label(operand, addr)
    return get_expression(addr, operand)

def get_address16(addr):
    operand = utils.get_u16(addr)
    if addr not in expressions:
        return disassembly.get_label(operand, addr)
    # TODO: Hacky to use trace6502-specific class in next line
    import trace6502
    assert isinstance(disassembly.get_classification(addr), Word) or (isinstance(disassembly.get_classification(addr - 1), trace6502.Opcode) and disassembly.get_classification(addr - 1).length() == 3)
    return get_expression(addr, operand)

# TODO: I've made this work with runtime_addr without paying any attention to the needs of hook fns etc
def stringterm(runtime_addr, terminator, exclude_terminator=False):
    runtime_addr = utils.RuntimeAddr(runtime_addr)
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    initial_addr = binary_addr
    while memory_binary[binary_addr] != terminator:
        binary_addr += 1
    string_length = (binary_addr + 1) - initial_addr
    if exclude_terminator:
        string_length -= 1
    if string_length > 0:
        disassembly.add_classification(initial_addr, String(string_length, False))
    return movemanager.b2r(binary_addr + 1)

def stringcr(runtime_addr, exclude_terminator=False):
    runtime_addr = utils.RuntimeAddr(runtime_addr)
    return stringterm(runtime_addr, 13, exclude_terminator)

def stringz(runtime_addr, exclude_terminator=False):
    runtime_addr = utils.RuntimeAddr(runtime_addr)
    return stringterm(runtime_addr, 0, exclude_terminator)

# TODO: I've made this work with runtime_addr without paying any attention to the needs of hook fns etc
def string(runtime_addr, n=None):
    runtime_addr = utils.RuntimeAddr(runtime_addr)
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    if n is None:
        assert not disassembly.is_classified(binary_addr)
        n = 0
        while not disassembly.is_classified(binary_addr + n) and utils.isprint(memory_binary[binary_addr + n]):
            n += 1
    if n > 0:
        disassembly.add_classification(binary_addr, String(n, False))
    return movemanager.b2r(binary_addr + n)

def stringhi(runtime_addr, include_terminator_fn=None):
    runtime_addr = utils.RuntimeAddr(runtime_addr)
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
        disassembly.add_classification(initial_addr, String(binary_addr - initial_addr, False))
    return movemanager.b2r(binary_addr)

# Behaviour with include_terminator_fn=None should be beebdis-compatible.
def stringhiz(runtime_addr, include_terminator_fn=None):
    runtime_addr = utils.RuntimeAddr(runtime_addr)
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
        disassembly.add_classification(initial_addr, String(binary_addr - initial_addr, False))
    return movemanager.b2r(binary_addr)

def stringn(runtime_addr):
    runtime_addr = utils.RuntimeAddr(runtime_addr)
    binary_addr, _ = movemanager.r2b_checked(runtime_addr)
    disassembly.add_classification(binary_addr, Byte(1, False))
    length = memory_binary[binary_addr]
    add_expression(binary_addr, utils.LazyString("%s - %s", disassembly.get_label(runtime_addr + 1 + length, binary_addr), disassembly.get_label(runtime_addr + 1, binary_addr)))
    return string(runtime_addr + 1, length)

def autostring(min_length=3):
    assert min_length >= 2
    addr = utils.BinaryAddr(0)
    while addr < len(memory_binary):
        i = 0
        while (addr + i) < len(memory_binary) and memory_binary[addr + i] is not None and not disassembly.is_classified(addr + i, 1) and utils.isprint(memory_binary[addr + i]):
            i += 1
            if movemanager.b2r(addr + i) in labelmanager.labels:
                break
        if i >= min_length:
            # TODO: I suspect the next two line fragment should be wrapped up if I keep it, probably repeated a bit (probably something like "with movemanager.b2r(binary_addr) as runtime_addr:...", although I probably can't reuse the b2r function, but maybe think about it)
            runtime_addr = movemanager.b2r(addr)
            with movemanager.moved(movemanager.move_id_for_binary_addr[addr]):
                string(runtime_addr, i)
        addr += max(1, i)

def classify_leftovers():
    # TODO: Might be able to factor out common code with autostring()
    addr = utils.BinaryAddr(0)
    while addr < len(memory_binary):
        i = 0
        while (addr + i) < len(memory_binary) and memory_binary[addr + i] is not None and not disassembly.is_classified(addr + i, 1):
            i += 1
            if movemanager.b2r(addr + i) in labelmanager.labels:
                break
        if i > 0:
            disassembly.add_classification(addr, Byte(i, False))
        addr += max(1, i)
