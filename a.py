from __future__ import print_function
import collections
import sys # TODO: TEMP?
from memory import * # TODO?
import b as disassembly

# TODO: Completely ignoring wrapping at top and bottom of memory for now...

inline_comment_column = 60 # TODO: use this for EQUB inline comments

def load(filename, addr):
    # TODO: Don't allow multiple load()s (given we have a single global start/end addr)
    with open(filename, "rb") as f:
        data = bytearray(f.read())
        if addr + len(data) > 0xffff:
            assert False # TODO: proper error
        memory[addr:] = data
    disassembly_range[0] = addr
    disassembly_range[1] = addr + len(data)

def add_hex_dump(s, addr, length):
    assert length > 0
    # TODO: This should be controlled via a bool flag
    s = "%-*s" % (inline_comment_column, s)
    s += "; %04X: " % addr
    capped_length = min(length, 3)
    s += " ".join("%02X" % x for x in memory[addr:addr+capped_length])
    if capped_length < length:
        s += " ..."
    return s

def signed8(i):
    assert 0 <= i <= 255
    if i >= 0x80:
        return i - 256
    else:
        return i

def get_u8(i):
    assert memory[i] is not None
    return memory[i]

def get_abs(i):
    assert memory[i] is not None and memory[i+1] is not None
    return memory[i] + (memory[i+1] << 8)

# https://stackoverflow.com/questions/312443/how-do-you-split-a-list-into-evenly-sized-chunks
def chunks(lst, n):
    """Yield successive n-sized chunks from lst."""
    for i in range(0, len(lst), n):
        yield lst[i:i + n]

class Data(object):
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
        # TODO: ASCII output should be optional
        data = list(get_constant8(addr + i) for i in range(self._length))
        def asciify(n):
            if n in expressions:
                return "."
            c = memory[n]
            if 32 <= c <= 126:
                return chr(c)
            return "."
        ascii = list(asciify(addr + i) for i in range(self._length))
        longest_item = max(len(x) for x in data)
        available_width = inline_comment_column - 10
        items_per_line = min(max(1, available_width // (longest_item + 2)), 8)
        item_min_width = min(longest_item, available_width // items_per_line)
        #print("QQ", longest_item, items_per_line, item_min_width)
        #print("QQ2", ascii)
        directives = []
        comments = []
        for chunk in chunks(data, items_per_line):
            s = ""
            sep = ""
            for item in chunk:
                s += sep + "%-*s" % (item_min_width, item)
                sep = ", "
            directives.append("    EQUB %s" % s)
        i = 0
        for chunk in chunks(ascii, items_per_line):
            comments.append(("; %04X: " % (addr+i)) + "".join(chunk))
            i += len(chunk)
        comment_indent = inline_comment_column
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
        available_width = inline_comment_column - 10
        items_per_line = min(max(1, available_width // (longest_item + 2)), 8)
        item_min_width = min(longest_item, available_width // items_per_line)
        i = 0
        for chunk in chunks(data, items_per_line):
            s = ""
            sep = ""
            for item in chunk:
                s += sep + "%-*s" % (item_min_width, item)
                sep = ", "
            print(add_hex_dump("    EQUW %s" % s, addr + i, len(chunk) * 2))
            i += len(chunk)

class String(object):
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
        prefix = "    EQUS "
        s = prefix
        state = 0
        s_i = 0
        for i in range(self._length):
            c = memory[addr + i]
            if 32 <= c <= 126 and c != ord('"'):
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
            if len(s) > (inline_comment_column - 3):
                if state == 1:
                    s += '"'
                print(add_hex_dump(s, addr + s_i, i - s_i))
                s = prefix
                s_i = i + 1
                state = 0
        if s != prefix:
            if state == 1:
                s += '"'
            print(add_hex_dump(s, addr + s_i, self._length - s_i))



def get_expression(addr, expected_value):
    expression = expressions[addr]
    # TODO: We should evaluate "expression" and check it evaluates to expected_value
    return expression

def get_constant8(addr):
    if addr not in expressions:
        return "&%02X" % memory[addr]
    return get_expression(addr, memory[addr])

def get_address8(addr):
    operand = memory[addr]
    if addr not in expressions:
        return disassembly.get_label(operand)
    return get_expression(addr, operand)

def get_address16(addr):
    operand = get_abs(addr)
    # TODO: Not entirely sure if it's a good idea to handle 16-bit expressions like this. Should we at a minimum assert a Word is used to classify this address?
    if addr not in expressions:
        return disassembly.get_label(operand)
    return get_expression(addr, operand)


#def conditional_branch(addr, operand):
#    return [addr + 2, addr + 2 + signed8(operand)]


def reverse_range(length):
    return range(length - 1, -1, -1)

def inline_nul_string_hook(target, addr):
    addr += 3
    initial_addr = addr
    while True:
        if memory[addr] == 0:
            break
        addr += 1
    disassembly.add_classification(initial_addr, String((addr + 1) - initial_addr))
    return addr + 1

def string_terminated(addr, terminator):
    initial_addr = addr
    while True:
        if memory[addr] == terminator:
            break
        addr += 1
    disassembly.add_classification(initial_addr, String((addr + 1) - initial_addr))
    return addr + 1

def string_cr(addr):
    return string_terminated(addr, 13)

def string_nul(addr):
    return string_terminated(addr, 0)

def string_n(addr, n):
    disassembly.add_classification(addr, String(n))

def string_hi(addr):
    initial_addr = addr
    while True:
        if memory[addr] & 0x80 != 0:
            if False: # TODO: Works but not that helpful so save it for a case where it is
                c = memory[addr] & 0x7f
                if 32 <= c <= 126 and c != 34:
                    expressions[addr] = "&80+'%s'" % chr(c)
            break
        addr += 1
    disassembly.add_classification(initial_addr, String((addr + 1) - initial_addr))
    return addr + 1

# TODO: RENAME DWORD TO WORD...
def rts_address(addr):
    routine(get_abs(addr) + 1)
    expressions[addr] = "%s-1" % disassembly.get_label(get_abs(addr) + 1)
    disassembly.add_classification(addr, Word(2))
    return addr + 2

# TODO: Use this in more places
# TODO: Take optional non-default label
# TODO: Rename code_label or something?
def routine(addr, label=None): # TODO: rename?
    entry_points.append(addr)
    if label is None:
        disassembly.ensure_addr_labelled(addr)
    else:
        disassembly.add_label(addr, label)


def split_jump_table_entry(low_addr, high_addr, offset):
    entry_point = (memory[high_addr] << 8) + memory[low_addr] + offset
    entry_points.append(entry_point)
    disassembly.ensure_addr_labelled(entry_point)
    offset_string = "" if offset ==0 else ("-%d" % offset)
    expressions[high_addr] = "hi(%s%s)" % (disassembly.get_label(entry_point), offset_string)
    expressions[low_addr]  = "lo(%s%s)" % (disassembly.get_label(entry_point), offset_string)

jsr_hooks = {}


def emit2(): # TODO POOR NAME
    start_addr = disassembly_range[0]
    end_addr = disassembly_range[1]
    assert start_addr is not None
    assert end_addr is not None

    # TODO: Not sure if this "clean up" logic belongs here or not...
    addr = start_addr
    while addr < end_addr:
        if not disassembly.is_classified(addr, 1):
            disassembly.add_classification(addr, Data(1))
        addr += disassembly.get_classification(addr).length()

    # TODO: Not sure if this "clean up" logic belongs here or not...
    disassembly.merge_classifications(start_addr, end_addr)
    disassembly.split_classifications(start_addr, end_addr)

    disassembly.emit(start_addr, end_addr)


# TODO/thoughts:
# - maybe make what[x] a tuple something like (instruction, 3) or (string, 22) or (data, 19), i.e. a "type to emit" and the number of bytes it occupies. A cleaning up pass immediately before emitting could concatenate single data bytes and split strings/data with labels in the middle of them.
# - some sort of support for saying "immediate operand at addr xxxx has symbolic value '<L5332'" (we must *verify* this is correct, not just roll with it)
# - a standard helper function to diassemble a ROM header

# TODO: Option to output lower case mnemonics, perhaps also default labels including lower case hex

# TODO: Ability to add comments just before labels? perhaps attach comments to labels is better way of putting it. Or maybe to attach comments to arbitrary addresses????

# TODO: Goals:
# - "programmable" - the disassembly is controlled by a custom python program which imports the core disassembler utils and any other custom utils it like - it can contain arbitrary python code
# - "annotatable" - postpone as long as possible the temptation to start hand-editing the output, because as soon as you do that it gets difficult to get further assistance from disassembler if you (e.g.) discover a chunk of data which you want to annotate as a jump table
# - "anchored" - no matter how mangled or useless the disassembly is, it should always re-build the input correctly and no bytes should be lost


# TODO: At the moment, strings (and probably other things) are not chopped up by labels; they probably should be

# TODO: At the moment the table around LA3F2 has "half expression" values, gut feeling is this is just due to lack of "word" support but it needs fixing one way or another
