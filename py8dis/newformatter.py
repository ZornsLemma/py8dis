# TODO: Rename

import classification
import config
import disassembly
import movemanager
import textwrap
import trace
import utils

def add_hex_dump(binary_addr, length, s):
    assert isinstance(binary_addr, utils.BinaryAddr)
    if not config.get_hex_dump():
        return s
    s += config.get_formatter().comment_prefix() + " "

    # Add hex characters as a fixed width string
    data = config.memory_binary[binary_addr:binary_addr + min(length, config.get_hex_dump_max_bytes())]
    dump_hex = " ".join(utils.plainhex2(x) for x in data)
    if length > config.get_hex_dump_max_bytes():
        dump_hex += "... "
    dump_hex = utils.tab_to(dump_hex, 3 * config.get_hex_dump_max_bytes() + 3)

    # Add ASCII characters as a fixed width string
    dump_chars = utils.tab_to("".join(chr(x) if utils.isprint(x) else "." for x in data), config.get_hex_dump_max_bytes())

    # Add CPU state as a fixed width string
    dump_cpu_state = ""
    if config.get_show_cpu_state():
        state = trace.cpu.cpu_state_optimistic[binary_addr]
        if state:
            dump_cpu_state = " " + state.show()
        dump_cpu_state = utils.tab_to(dump_cpu_state, 22)

    # Add move commentary, as a fixed width string
    runtime_addr = movemanager.b2r(binary_addr)
    dump_move = ""
    if runtime_addr != binary_addr:
        dump_move = " :%s[%d]" % (utils.plainhex4(runtime_addr), movemanager.move_id_for_binary_addr[binary_addr])
    dump_move = utils.tab_to(dump_move, 12)

    # Join them all together: address, hex bytes, characters, cpu state, move details
    s += utils.plainhex4(binary_addr) + ": " + dump_hex + dump_chars + dump_cpu_state + dump_move
    return s

# Adds a hex dump and inline comment for the line
def add_inline_comment(binary_addr, length, annotations, s):
    # Add spaces up to the comment column
    s = utils.tab_to(s, config.get_inline_comment_column())

    # Add any hex dump (fixed width)
    s = add_hex_dump(binary_addr, length, s)

    # Add any inline comments
    if annotations:
        for i in range(0, length):
            for annotation in utils.sorted_annotations(annotations[binary_addr + i]):
                if annotation.inline:
                    s += annotation.as_string(binary_addr)
    return s.rstrip()

# TODO: We might want Byte/Word objects to have a format function (a bit like format_hint for individual bytes) and allow the user to control it (poss via helper fns) - that way they could call this function with a None argument to get auto-column-calculation or an integer argument to specify "use n columns" or a variant of this function to get "no alignment but basic data-item-oriented-word-wrapping" output.
# TODO: It's not unreasonable to have inline comments on items in data blocks; we might only emit them if the data block is single-column formatter - I guess we'd have to, actually, since there's no way to end an inline comment short of a newline. So we probably want to default to single-column if there's any inline comments in the range, and if the user has forced a multi-column structure we should probably warn about hidden inline comments
def format_data_block(binary_addr, length, cols, element_size, annotations):
    assert isinstance(binary_addr, utils.BinaryAddr)
    assert utils.is_valid_addr(binary_addr)
    assert length >= 1
    assert element_size in (1, 2)
    assert length % element_size == 0

    if element_size == 1:
        data = list(classification.get_constant8(binary_addr + i) for i in range(length))
        data_prefix = config.get_formatter().byte_prefix()
    else:
        data = list(classification.get_constant16(binary_addr + i) for i in range(0, length, 2))
        data_prefix = config.get_formatter().word_prefix()

    indent = disassembly.indent_hint[binary_addr] + 1
    prefix = utils.make_indent(indent) + data_prefix
    separator = ", "
    longest_item = max(len(x) for x in data)
    if cols is not None:
        num_data_items_on_line = cols
    else:
        # TODO: We should also support "just emit with no padding or attempt to align columns but not spilling past data_width unless a single item forces it", a pseudo "word wrapping" style
        # TODO: We might want to use a different value instead of config.get_inline_comment_column(), e.g.
        # absolute_max_width (80/100/whatever) - "hex dump max width or 0 if no hex dump".
        data_width = config.get_inline_comment_column() - len(prefix)
        if config.get_hex_dump():
            data_width -= 1 # leave a space before the hex dump comment prefix
        # We add len(separator) to data_width because if there are n items on a
        # line we only need n-1 separators, but the divisor assumes every item
        # includes a separator.
        num_data_items_on_line = max(1, (data_width + len(separator)) // (longest_item + len(separator)))
    result = []
    for i in range(0, len(data), num_data_items_on_line):
        items_on_line = min(len(data) - i, num_data_items_on_line)
        core_str = prefix + separator.join("%*s" % (longest_item, x) for x in data[i:i+num_data_items_on_line])
        core_str = add_inline_comment(binary_addr + i * element_size, items_on_line * element_size, annotations, core_str)
        result.append(core_str)
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
        return config.get_formatter().hex2(n)
    return config.get_formatter().hex4(n)

def char_formatter(n, bits):
    c = config.get_formatter().string_chr(n)
    if c is not None:
        return "'%s'" % c
    return uint_formatter(n, bits)

def binary_formatter(n, bits):
    s = bin(n)[2:]
    s = ("0"*bits + s)[-bits:]
    return config.get_formatter().binary_prefix() + s

def picture_binary_formatter(n, bits):
    return config.get_formatter().picture_binary(binary_formatter(n, bits))

def decimal_formatter(n, bits):
    return "%d" % n

def hexadecimal_formatter(n, bits):
    # TODO: It's possible we want to offer some additional control over leading
    # zero padding and number of hex digits emitted, but let's just go with this
    # for now.
    return config.get_formatter().hex(n)

def constant(binary_addr, n, bits):
    format_hint = disassembly.format_hint.get(binary_addr, uint_formatter)
    return format_hint(n, bits)

def constant8(binary_addr):
    assert utils.is_valid_addr(binary_addr)
    n = config.memory_binary[binary_addr]
    return constant(binary_addr, n, 8)

def constant16(binary_addr):
    assert utils.is_valid_addr(binary_addr)
    n = utils.get_u16_binary(binary_addr)
    return constant(binary_addr, n, 16)

def format_comment(text):
    prefix = config.get_formatter().comment_prefix() + " "
    text_width = config.get_inline_comment_column() - len(prefix)
    return textwrap.fill(text, text_width)
