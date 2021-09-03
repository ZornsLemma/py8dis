from __future__ import print_function
import collections

import config
import disassembly
import utils

jsr_hooks = {} # TODO: shouldn't this really go into trace.py???
expressions = {}
memory = config.memory
formatter = config.formatter

# TODO: Completely ignoring wrapping at top and bottom of memory for now...


class Byte(object):
    def __init__(self, length):
        assert length > 0
        self._length = length

    def is_variable_length(self):
        return True

    def length(self):
        return self._length

    def set_length(self, length):
        assert length > 0
        self._length = length

    def emit(self, addr):
        byte_prefix = formatter[0].byte_prefix()
        # TODO: ASCII output should be optional
        data = list(get_constant8(addr + i) for i in range(self._length))
        def asciify(n):
            if n in expressions:
                return "."
            c = memory[n]
            if utils.isprint(c):
                return chr(c)
            return "."
        ascii = list(asciify(addr + i) for i in range(self._length))
        longest_item = max(len(x) for x in data)
        available_width = config.inline_comment_column[0] - len(byte_prefix)
        items_per_line = min(max(1, available_width // (longest_item + 2)), 8)
        item_min_width = min(longest_item, available_width // items_per_line)
        #print("QQ", longest_item, items_per_line, item_min_width)
        #print("QQ2", ascii)
        directives = []
        comments = []
        for chunk in utils.chunks(data, items_per_line):
            s = ""
            sep = ""
            for item in chunk:
                s += sep + "%-*s" % (item_min_width, item)
                sep = ", "
            directives.append("%s%s" % (byte_prefix, s))
        i = 0
        for chunk in utils.chunks(ascii, items_per_line):
            comments.append(("%s %s: " % (formatter[0].comment_prefix(), utils.plainhex4(addr+i))) + "".join(chunk))
            i += len(chunk)
        comment_indent = config.inline_comment_column[0]
        for directive, comment in zip(directives, comments):
            print("%-*s%s" % (comment_indent, directive, comment))


class Word(object):
    def __init__(self, length):
        self.set_length(length)

    def is_variable_length(self):
        return True

    def length(self):
        return self._length

    def set_length(self, length):
        assert length > 0
        assert length % 2 == 0
        self._length = length

    def emit(self, addr):
        # TODO: COPY AND PASTE OF DATA'S EMIT()
        data = list(get_address16(addr + i) for i in range(0, self._length, 2))
        longest_item = max(len(x) for x in data)
        available_width = config.inline_comment_column[0] - 10
        items_per_line = min(max(1, available_width // (longest_item + 2)), 8)
        item_min_width = min(longest_item, available_width // items_per_line)
        i = 0
        for chunk in utils.chunks(data, items_per_line):
            s = ""
            sep = ""
            for item in chunk:
                s += sep + "%-*s" % (item_min_width, item)
                sep = ", "
            print(utils.add_hex_dump("%s%s" % (formatter[0].word_prefix(), s), addr + i, len(chunk) * 2))
            i += len(chunk)


class String(object):
    def __init__(self, length, is_variable_length=True):
        assert length > 0
        self._length = length
        self._is_variable_length = is_variable_length

    def is_variable_length(self):
        return self._is_variable_length

    def length(self):
        return self._length

    def set_length(self, length):
        assert length > 0
        self._length = length

    def emit(self, addr):
        prefix = formatter[0].string_prefix()
        s = prefix
        state = 0
        s_i = 0
        for i in range(self._length):
            c = memory[addr + i]
            if utils.isprint(c) and c != ord('"'):
                if state == 0:
                    s += '"'
                elif state == 2:
                    s += ', "'
                state = 1
                s += chr(c)
            else:
                if state == 1:
                    s += '", '
                elif state == 2:
                    s += ", "
                state = 2
                if c == ord('"'):
                    s += "'\"'"
                else:
                    # TODO: Maybe don't allow for expressions here?
                    s += get_constant8(addr + i)
            if len(s) > (config.inline_comment_column[0] - 5):
                if state == 1:
                    s += '"'
                print(utils.add_hex_dump(s, addr + s_i, i - s_i))
                s = prefix
                s_i = i + 1
                state = 0
        if s != prefix:
            if state == 1:
                s += '"'
            print(utils.add_hex_dump(s, addr + s_i, self._length - s_i))


def add_expression(addr, s):
    expressions[addr] = s

def get_expression(addr, expected_value):
    expression = expressions[addr]
    # TODO: We should evaluate "expression" and check it evaluates to expected_value
    return expression

# TODO: Rename following three functions to make their expression-possibility more obvious

def get_constant8(addr):
    if addr not in expressions:
        return formatter[0].hex2(memory[addr])
    return get_expression(addr, memory[addr])

def get_address8(addr):
    operand = memory[addr]
    if addr not in expressions:
        return disassembly.get_label(operand)
    return get_expression(addr, operand)

def get_address16(addr):
    operand = utils.get_abs(addr)
    # TODO: Not entirely sure if it's a good idea to handle 16-bit expressions like this. Should we at a minimum assert a Word is used to classify this address?
    if addr not in expressions:
        return disassembly.get_label(operand)
    return get_expression(addr, operand)

# TODO: Rename terminator_is_data to terminator_part_of_string?
def stringterm(addr, terminator, terminator_is_data=False):
    initial_addr = addr
    while True:
        if memory[addr] == terminator:
            break
        addr += 1
    string_length = (addr + 1) - initial_addr
    if terminator_is_data:
        string_length -= 1
    if string_length > 0:
        disassembly.add_classification(initial_addr, String(string_length, False))
    return addr + 1

def stringcr(addr, terminator_is_data=False):
    return stringterm(addr, 13, terminator_is_data)

def stringz(addr, terminator_is_data=False):
    return stringterm(addr, 0, terminator_is_data)

def string(addr, n=None):
    if n is None:
        n = 0
        while utils.isprint(memory[addr + n]):
            n += 1
    disassembly.add_classification(addr, String(n))

# TODO: I should perhaps provide two variants on this, one which considers the top bit set byte as not part of the string and one which consider it part of it. this would also make the "decompose top bit set chars in equs" stuff (currently if-ed out) useful.
def stringhi(addr):
    initial_addr = addr
    while True:
        if memory[addr] & 0x80 != 0:
            if False: # TODO: Works but not that helpful so save it for a case where it is
                c = memory[addr] & 0x7f
                if utils.isprint(c) and c != ord('"'):
                    expressions[addr] = "&80+'%s'" % chr(c) # TODO: use formatter not &
            break
        addr += 1
    disassembly.add_classification(initial_addr, String(addr - initial_addr))
    return addr

# TODO: rename? do we even need this if its implementation is so simple? (probably)
def inline_nul_string_hook(target, addr):
    return stringz(addr + 3)

# TODO: rename?
def rts_address(addr):
    entry(utils.get_abs(addr) + 1)
    expressions[addr] = "%s-1" % disassembly.get_label(utils.get_abs(addr) + 1)
    disassembly.add_classification(addr, Word(2))
    return addr + 2

# TODO: Use this in more places
def entry(addr, label=None):
    config.entry_points.append(addr)
    if label is None:
        disassembly.ensure_addr_labelled(addr)
    else:
        disassembly.add_label(addr, label)

# TODO: RENAME?
def split_jump_table_entry(low_addr, high_addr, offset):
    entry_point = (memory[high_addr] << 8) + memory[low_addr] + offset
    entry(entry_point)
    offset_string = "" if offset == 0 else ("-%d" % offset)
    expressions[high_addr] = ">(%s%s)" % (disassembly.get_label(entry_point), offset_string)
    expressions[low_addr]  = "<(%s%s)" % (disassembly.get_label(entry_point), offset_string)

# TODO: Maybe move this into commands.py, perhaps inlining it as part of go()? Or perhaps it should be all in disassembly.emit???
def emit2(): # TODO POOR NAME
    start_addr = config.disassembly_range[0]
    end_addr = config.disassembly_range[1]
    assert start_addr is not None
    assert end_addr is not None

    # TODO: Not sure if this "clean up" logic belongs here or not...
    addr = start_addr
    while addr < end_addr:
        if not disassembly.is_classified(addr, 1):
            disassembly.add_classification(addr, Byte(1))
        addr += disassembly.get_classification(addr).length()

    # TODO: Not sure if this "clean up" logic belongs here or not...
    disassembly.merge_classifications(start_addr, end_addr)
    disassembly.split_classifications(start_addr, end_addr)

    disassembly.emit(start_addr, end_addr)

# TODO: Goals:
# - "programmable" - the disassembly is controlled by a custom python program which imports the core disassembler utils and any other custom utils it like - it can contain arbitrary python code
# - "annotatable" - postpone as long as possible the temptation to start hand-editing the output, because as soon as you do that it gets difficult to get further assistance from disassembler if you (e.g.) discover a chunk of data which you want to annotate as a jump table
# - "anchored" - no matter how mangled or useless the disassembly is, it should always re-build the input correctly and no bytes should be lost

