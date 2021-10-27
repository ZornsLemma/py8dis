# TODO: Rename

import config
import disassembly
import utils

# TODO: These should be user configurable, maybe they can/should live here or maybe they should be in config
indent_spaces = 4
hex_dump_column = 70

def tab_to(s, n):
    assert n >= 0
    return "%*s" % (n, s)

def make_indent(n):
    assert n >= 0
    return (" " * indent_spaces) * n

def add_hex_dump(binary_addr, length, s):
    # TODO: config should allow this to be a no-op
    # TODO: capped_length support as in utils.add_hex_dump()? May want to be a bit cleverer here, not sure yet
    # TODO: support for showing ASCII alongside hex dump - in order for this to align nicely we need something like capped_length so we can ensure the lhs of the ASCII dump is consistent
    s = tab_to(s, hex_dump_column)
    s += config.formatter().comment_prefix() + " "
    s += formatter().hex4(binary_addr) + " "
    if len(movemanager.move_definitions) > 1:
        runtime_addr = movemanager.b2r(binary_addr)
        if runtime_addr != binary_addr:
                s += formatter().hex4(runtime_addr) + " "
        else:
                s += " "*5
    s += " ".join(formatter().plainhex2(x) for x in config.memory_binary[binary_addr:binary_addr+length])
    return s

def format_classification_line(binary_addr, length, core_str):
    assert utils.is_valid_addr(binary_addr)
    assert length >= 1
    assert isinstance(core_str, six.string_types)
    assert "\n" not in core_str
    indent = 1 # TODO: variable indent
    # TODO: inline comment
    # TODO: multiline things
    s = make_indent(indent) + core_str
    return add_hex_dump(binary_addr, length, s)

# TODO: Highly experimental sketch for byte/word emitter
# TODO: We might want Byte/Word objects to have a format function (a bit like format_hint for individual bytes) and allow the user to control it (poss via helper fns) - that way they could call this function with a None argument to get auto-column-calculation or an integer argument to specify "use n columns" or a variant of this function to get "no alignment but basic data-item-oriented-word-wrapping" output.
def format_data_block(TODO):
    indent = 1 # TODO: variable indent
    if TODO:
        # TODO: Old code used to force_hex2=True on get_constant8, I may want to do that or something *similar* here - I think the idea was to ensure nice column alignment without the different lengths of things like "3", "&f" and "&2f" breaking things. I may just be smarter about alignment and not need to do any kind of forcing. If I do need to force, I might want to force leading spaces to a fixed width (probably 3 chars) *if* using a simple "numeric" formatter.
        data = list(get_constant8(binary_addr + i) for i in range(self._length))
        data_prefix = config.formatter.byte_prefix()
    else:
        data = list(get_constant16(binary_addr + i) for i in range(0, self._length, 2))
        data_prefix = config.formatter.word_prefix()
    prefix = make_indent(indent) + word_prefix + " "
    # TODO: We should allow the user to specify a number of data item columns - that would be part of
    # the Byte/Word object and we would just use it here instead of deciding for ourselves
    # TODO: We should also support "just emit with no padding or attempt to align columns but not spilling past data_width unless a single item forces it", a pseudo "word wrapping" style
    # TODO: We might want to use a different value instead of hex_dump_column, e.g.
    # absolute_max_width (80/100/whatever) - "hex dump max width or 0 if no hex dump".
    separator = ", "
    # TODO: We subtract 1 to leave a space before the hex dump, but that's not ideal if there
    # is no hex dump; we could have used an extra column.
    data_width = hex_dump_column - 1 - len(prefix)
    #shortest_item = min(3, min(len(x) for x in data))
    longest_item = max(len(x) for x in data)
    # We add len(separator) to data_width because if we there are n items on a
    # line we only need n-1 separators, but the divisor assumes every item
    # includes a separator. TODO: Probably correct but think about it...
    data_columns = min(1, (data_width + len(separator)) // (longest_item + len(separator)))
    result = []
    for i in range(0, len(data), data_columns):
        items_on_line = min(len(data) - i, data_columns)
        core_str = data_prefix + separator.join("%-*s" % (longest_item, x) for x in data[i:i+data_columns])
        # TODO: We're double-indenting here - prefix includes indent (desirable so we can calculate chars-per-line for our data) and format_classification_line() will add it as well
        result.append(format_classification_line(binary_addr + i, items_on_line, core_str))
    assert False
    return result

def int_formatter(n, bits):
    if n < 10:
        return "%d" % n
    if bits == 8:
        return config.formatter().hex2(n)
    assert bits == 16
    return config.formatter().hex4(n)

def char_formatter(n, bits):
    c = config.formatter().string_chr(n)
    if c is not None:
        return "'%s'" % c
    return int_formatter(n, bits)

def binary_formatter(n, bits):
    s = bin(n)[2:]
    s = ("0"*bits + s)[-bits:]
    return config.formatter().binary_prefix() + s

def picture_binary_formatter(n, bits):
    return config.formatter().picture_binary(binary_formatter(n, bits))

def decimal_formatter(n, bits):
    return "%d" % n

def hexadecimal_formatter(n, bits):
    # TODO: It's possible we want to offer some additional control over leading
    # zero padding and number of hex digits emitted, but let's just go with this
    # for now.
    return config.formatter().hex(n)

def constant(binary_addr, n, bits):
    format_hint = disassembly.format_hint.get(binary_addr, int_formatter)
    return format_hint(n, bits)

def constant8(binary_addr):
    assert utils.is_valid_addr(binary_addr)
    n = config.memory_binary[binary_addr]
    return constant(binary_addr, n, 8)

def constant16(binary_addr):
    assert utils.is_valid_addr(binary_addr)
    n = util.get_u16(binary_addr)
    return constant(binary_addr, n, 16)
