# TODO: Rename

import classification
import config
import disassembly
import movemanager
import utils

# TODO: These should be user configurable, maybe they can/should live here or maybe they should be in config
indent_spaces = 4
# TODO: rename hex_dump_column code_width or something like that?
hex_dump_column = 70 # TODO: increase this? to 80?
hex_dump_max_bytes = 3 # TODO: not sure this is a great default

def tab_to(s, n):
    assert n >= 0
    return "%-*s" % (n, s)

def make_indent(n):
    assert n >= 0
    return (" " * indent_spaces) * n

def add_hex_dump(binary_addr, length, s):
    if not config._hex_dump:
        return s
    s = tab_to(s, hex_dump_column)
    s += config.formatter().comment_prefix() + " "
    s += utils.plainhex4(binary_addr) + ": "
    data = config.memory_binary[binary_addr:binary_addr+min(length, hex_dump_max_bytes)]
    s += " ".join(utils.plainhex2(x) for x in data)
    if length < hex_dump_max_bytes:
        s += "   " * (hex_dump_max_bytes - length)
    if length > hex_dump_max_bytes:
        s += "... "
    else:
        s += " "*4
    s += "".join(chr(x) if utils.isprint(x) else "." for x in data)
    if length < hex_dump_max_bytes:
        s += " " * (hex_dump_max_bytes - length)
    runtime_addr = movemanager.b2r(binary_addr)
    if runtime_addr != binary_addr:
        s += " :%s[%d]" % (utils.plainhex4(runtime_addr), movemanager.move_id_for_binary_addr[binary_addr])
    return s.rstrip()

# TODO: Get rid of this? I think it's maybe not that useful.
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
# TODO: It's not unreasonable to have inline comments on items in data blocks; we might only emit them if the data block is single-column formatter - I guess we'd have to, actually, since there's no way to end an inline comment short of a newline. So we probably want to default to single-column if there's any inline comments in the range, and if the user has forced a multi-column structure we should probably warn about hidden inline comments
def format_data_block(binary_addr, length, element_size):
    assert utils.is_valid_addr(binary_addr)
    assert length >= 1
    assert element_size in (1, 2)
    assert length % element_size == 0
    indent = disassembly.indent_hint[binary_addr] + 1
    if element_size == 1:
        # TODO: Old code used to force_hex2=True on get_constant8, I may want to do that or something *similar* here - I think the idea was to ensure nice column alignment without the different lengths of things like "3", "&f" and "&2f" breaking things. I may just be smarter about alignment and not need to do any kind of forcing. If I do need to force, I might want to force leading spaces to a fixed width (probably 3 chars) *if* using a simple "numeric" formatter.
        data = list(classification.get_constant8(binary_addr + i) for i in range(length))
        data_prefix = config.formatter().byte_prefix()
    else:
        data = list(classification.get_constant16(binary_addr + i) for i in range(0, length, 2))
        data_prefix = config.formatter().word_prefix()
    # TODO: Need for strip() is silly but will save tweaking all three assembler files just now.
    prefix = make_indent(indent) + data_prefix.strip() + " "
    # TODO: We should allow the user to specify a number of data item columns - that would be part of
    # the Byte/Word object and we would just use it here instead of deciding for ourselves
    # TODO: We should also support "just emit with no padding or attempt to align columns but not spilling past data_width unless a single item forces it", a pseudo "word wrapping" style
    # TODO: We might want to use a different value instead of hex_dump_column, e.g.
    # absolute_max_width (80/100/whatever) - "hex dump max width or 0 if no hex dump".
    separator = ", "
    data_width = hex_dump_column - len(prefix)
    if config._hex_dump:
        data_width -= 1 # leave a space before the hex dump comment prefix
    #shortest_item = min(3, min(len(x) for x in data))
    longest_item = max(len(x) for x in data)
    # We add len(separator) to data_width because if we there are n items on a
    # line we only need n-1 separators, but the divisor assumes every item
    # includes a separator. TODO: Probably correct but think about it...
    data_columns = max(1, (data_width + len(separator)) // (longest_item + len(separator)))
    result = []
    for i in range(0, len(data), data_columns):
        items_on_line = min(len(data) - i, data_columns)
        # TODO: If the items are *numbers* rather than constant names, we might want to right-align them. This "conflicts" with the idea of maybe using fixed three-char hex constants (for bytes; 5 for words, of course) for neatness. We probably need to allow all options and let the user control this, but the default should be sensible. Maybe if the user wants fixed max-length hex constants they should be specifying that via format_hint on the individual items of data.
        core_str = prefix + separator.join("%-*s" % (longest_item, x) for x in data[i:i+data_columns])
        result.append(add_hex_dump(binary_addr + i, items_on_line, core_str))
    return result

def uint_formatter(n, bits, pad=False):
    assert bits in (8, 16)
    assert 0 <= n < (1<<bits)
    if n < 10:
        s = "%d" % n
        if pad:
            # TODO: This padding assumes hex2() and hex4() use a single-character hex prefix.
            s = ("     " + s)[-3 if bits == 8 else -5:]
        return s
    if bits == 8:
        return config.formatter().hex2(n)
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
    format_hint = disassembly.format_hint.get(binary_addr, uint_formatter)
    return format_hint(n, bits)

def constant8(binary_addr):
    assert utils.is_valid_addr(binary_addr)
    n = config.memory_binary[binary_addr]
    return constant(binary_addr, n, 8)

def constant16(binary_addr):
    assert utils.is_valid_addr(binary_addr)
    n = util.get_u16(binary_addr)
    return constant(binary_addr, n, 16)
