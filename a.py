from __future__ import print_function
import collections
import sys # TODO: TEMP?
from memory import * # TODO?
import b as disassembly

# TODO: Completely ignoring wrapping at top and bottom of memory for now...

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
        items_per_line = min(max(1, 50 // (longest_item + 2)), 8)
        item_min_width = min(longest_item, 70 // items_per_line)
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
        for chunk in chunks(ascii, items_per_line):
            comments.append(" ; " + "".join(chunk))
        max_directive_len = max(len(x) for x in directives)
        comment_indent = max(60, max_directive_len)
        for directive, comment in zip(directives, comments):
            print("%-*s%s" % (comment_indent, directive, comment))

class String(Data): # SFTODO: TEMP HACK RE-USING DATA
    pass

class Word(Data): # SFTODO: TEMP HACK RE-USING DATA
    pass



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
    labelled_entry_point(get_abs(addr) + 1)
    expressions[addr] = "%s-1" % disassembly.get_label(get_abs(addr) + 1)
    disassembly.add_classification(addr, Word(2))
    return addr + 2

# TODO: Use this in more places
# TODO: Take optional non-default label
# TODO: Rename code_label or something?
def labelled_entry_point(addr):
    entry_points.append(addr)
    disassembly.ensure_addr_labelled(addr)


def split_jump_table_entry(low_addr, high_addr, offset):
    entry_point = (memory[high_addr] << 8) + memory[low_addr] + offset
    entry_points.append(entry_point)
    disassembly.ensure_addr_labelled(entry_point)
    # TODO: Don't show offset if it's 0
    expressions[high_addr] = "hi(%s-%d)" % (disassembly.get_label(entry_point), offset)
    expressions[low_addr]  = "lo(%s-%d)" % (disassembly.get_label(entry_point), offset)

jsr_hooks = {}

if False: # TODO!
    # Convert anything not explicitly disassembled into data.
    for addr in range(len(what)):
        if what[addr] is None:
            what[addr] = (WHAT_DATA, 1)

    # Merge adjacent items of data.
    addr = start_addr
    while addr < end_addr:
        if what[addr][0] in (WHAT_DATA, WHAT_STRING):
            new_addr = addr + what[addr][1]
            #print("X", hex(addr), hex(new_addr), what[new_addr])
            while new_addr < end_addr and what[new_addr][0] == what[addr][0]:
                new_addr += what[new_addr][1]
                #print("Y", hex(addr), hex(new_addr), what[new_addr])
            what[addr] = (what[addr][0], new_addr - addr)
            for i in range(addr + 1, new_addr):
                what[i] = None
            addr = new_addr
        else:
            addr = addr + 1


def emit2(start_addr, end_addr): # TODO POOR NAME
    # TODO: Emit "constant labels" which aren't addresses in the start_addr/end_addr range

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

if False: # TODO!
    addr = start_addr
    while addr < end_addr:
        if addr in labels:
            print(".%s" % labels[addr])
        if addr in derived_labels2:
            for name, definition in derived_labels2[addr]:
                print("%s = %s" % (name, definition))
        # TODO: String as opposed to raw data
        what_type = what[addr][0]
        if what_type == WHAT_DATA:
            data_len = what[addr][1]
            while data_len > 0:
                s = "    EQUB "
                sep = ""
                for i in range(8):
                    if data_len > 0:
                        s += sep + get_constant8(addr)
                        sep = ", "
                        addr += 1
                        data_len -= 1
                print(s)
        elif what_type == WHAT_DWORD:
            assert what[addr][1] == 2
            print("    EQUW %s" % get_address16(addr))
            addr += what[addr][1]
        elif what_type == WHAT_STRING:
            # TODO: This should wrap long strings across multiple lines
            data_len = what[addr][1]
            s = "    EQUS "
            state = 0
            while data_len > 0:
                # TODO: Assumes ASCII (not e.g. PETSCII)
                if 32 <= memory[addr] <= 126 and memory[addr] != ord('"'):
                    if state == 0:
                        s += '"'
                    elif state == 1:
                        pass
                    elif state == 2:
                        s += ', "'
                    state = 1
                    s += chr(memory[addr])
                else:
                    if state == 0:
                        pass
                    elif state == 1:
                        s += '", '
                    elif state == 2:
                        s += ", "
                    state = 2
                    s += get_constant8(addr)
                addr += 1
                data_len -= 1
            if state == 1:
                s += '"'
            print(s)
        elif what_type == WHAT_OPCODE:
            opcode = opcodes[memory[addr]]
            print("    %s" % opcode.as_string(addr))
            addr += 1 + opcode.operand_length
        else:
            assert False
        # TODO: Handle labels occuring "inside" an instruction


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
