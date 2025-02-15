"""
Main Formatter

Formats the component parts of a line of disassembly to output.
"""

import classification
import config
import disassembly
import movemanager
import textwrap
import trace
import utils
import memorymanager
from memorymanager import BinaryAddr, RuntimeAddr

def add_hex_dump(binary_addr, length, cycles_description, s):
    """Creates the majority of the inline comment for a line of output.

    This creates a string containing the hex dump and character
    equivalents, CPU state, and move commentary. This string has a
    fixed width.
    """

    assert isinstance(binary_addr, BinaryAddr)
    if not config.get_hex_dump():
        return s

    s += config.get_assembler().comment_prefix() + " "

    # Add hex characters as a fixed width string
    data = memorymanager.memory_binary[binary_addr:binary_addr + min(length, config.get_hex_dump_max_bytes())]
    dump_hex = " ".join(utils.plainhex2(x) for x in data)
    if length > config.get_hex_dump_max_bytes():
        dump_hex += "... "
    dump_hex = utils.tab_to(dump_hex, 3 * config.get_hex_dump_max_bytes() + 3)

    # Add ASCII characters as a fixed width string
    if config.get_hex_dump_show_ascii():
        dump_chars = utils.tab_to("".join(chr(x) if utils.isprint(x) else "." for x in data), config.get_hex_dump_max_bytes())
    else:
        dump_chars = ""

    # Add cycle counts
    if config.get_show_cycles() and cycles_description and len(cycles_description) > 0:
        cycles_description = utils.tab_to(" " + cycles_description + " cycles", 14)
    else:
        cycles_description = ""

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
    s += utils.plainhex4(binary_addr) + ": " + dump_hex + dump_chars + cycles_description + dump_cpu_state + dump_move
    return s

def add_inline_comment(binary_loc, length, cycles_description, annotations, s):
    """Creates the entire inline comment for the line as a string.

    Creates a string including the hex dump and character equivalents,
    CPU state, move commentary, and any inline annotations.
    """
    assert isinstance(binary_loc, movemanager.BinaryLocation)

    binary_loc = movemanager.make_binloc(binary_loc)
    first_binary_loc = binary_loc

    assert isinstance(binary_loc.binary_addr, BinaryAddr)
    # Add spaces up to the comment column
    s = utils.tab_to(s, config.get_inline_comment_column())

    # Add any hex dump (fixed width)
    s = add_hex_dump(binary_loc.binary_addr, length, cycles_description, s)

    # Add any inline annotations
    if annotations:
        for i in range(0, length):
            for annotation in utils.sorted_annotations(annotations[binary_loc]):
                if annotation.inline:
                    s += annotation.as_string(binary_loc.binary_addr)
            binary_loc = movemanager.BinaryLocation(binary_loc.binary_addr + 1, binary_loc.move_id)
    return s.rstrip()

def format_data_block_line(binary_loc, text, start_index, end_index, element_size, annotations, data_prefix):
    result = data_prefix + text

    # TODO: Add *all* comments/annotations to line, not just those for the one address
    current_binary_loc = movemanager.BinaryLocation(binary_loc.binary_addr + start_index*element_size, binary_loc.move_id)
    result = add_inline_comment(current_binary_loc, (end_index - start_index)*element_size, "", annotations, result)
    return result

def format_data_block(binary_loc, length, cols, element_size, annotations):
    """Format a block of data.

    Formats an array of bytes or words, returning one string for each
    line of output.
    """

    assert isinstance(binary_loc.binary_addr, BinaryAddr)
    assert memorymanager.is_valid_binary_addr(binary_loc.binary_addr)
    assert length >= 1
    assert element_size in (1, 2)
    assert length % element_size == 0

    # Read the data as a list of bytes or words
    if element_size == 1:
        data = list(classification.get_constant8(binary_loc.binary_addr + i) for i in range(length))
        data_prefix = config.get_assembler().byte_prefix()
    else:
        data = list(classification.get_constant16(binary_loc.binary_addr + i) for i in range(0, length, 2))
        data_prefix = config.get_assembler().word_prefix()

    prefix = utils.make_indent(1) + data_prefix         # (e.g. prefix="    !byte" for example)
    data_width = config.get_inline_comment_column() - len(prefix) - 1

    result = utils.format_strings_in_a_table(data, data_width, cols, lambda text, start_index, end_index:
        format_data_block_line(binary_loc, text, start_index, end_index, element_size, annotations, prefix))
    return result


    #separator = ", "
    #
    ## Calculate the number of data items we can fit on a line
    #longest_item = max(len(x) for x in data)
    #if cols is not None:
    #    num_data_items_on_line = cols
    #else:
    #    # TODO: We should also support "just emit with no padding or
    #    # attempt to align columns but not spilling past data_width
    #    # unless a single item forces it", a pseudo "word wrapping"
    #    # style
    #
    #    # TODO: We might want to use a different value instead of
    #    # config.get_inline_comment_column(), e.g. absolute_max_width
    #    # (80/100/whatever) - "hex dump max width or 0 if no hex dump".
    #
    #    data_width = config.get_inline_comment_column() - len(prefix)
    #    if config.get_hex_dump():
    #        data_width -= 1 # leave a space before the hex dump comment prefix
    #    # We add len(separator) to data_width because if there are n
    #    # items on a line we only need n-1 separators, but the divisor
    #    # assumes every item includes a separator.
    #    num_data_items_on_line = max(1, (data_width + len(separator)) // (longest_item + len(separator)))
    #
    ## Add each line to the result
    #result = []
    #for i in range(0, len(data), num_data_items_on_line):
    #    items_on_line = min(len(data) - i, num_data_items_on_line)
    #    core_str = prefix + separator.join("%*s" % (longest_item, x) for x in data[i:i+num_data_items_on_line])
    #    current_binary_loc = movemanager.BinaryLocation(binary_loc.binary_addr + i * element_size, binary_loc.move_id)
    #    core_str = add_inline_comment(current_binary_loc, items_on_line * element_size, "", annotations, core_str)
    #    result.append(core_str)
    #return result

def uint_formatter(n, bits, pad=False):
    """Format an 8 or 16 bit number as hex or single digit decimal.

    For readability we format values 0-9 as decimal, but use hex
    otherwise. Includes optional left padding to align columns of data
    in blocks.
    """

    assert bits in (8, 16)
    assert 0 <= n < (1<<bits)
    if n < 10:
        s = "%d" % n
        if pad:
            # TODO: This padding assumes hex2() and hex4() use a single-character hex prefix.
            s = ("     " + s)[-3 if bits == 8 else -5:]
        return s
    if bits == 8:
        return config.get_assembler().hex2(n)
    return config.get_assembler().hex4(n)

def char_formatter(n, bits):
    """Format a quoted character.

    Returns a quoted character if possible otherwise just a hex or
    decimal integer.
    """

    c = config.get_assembler().string_chr(n)
    if c is not None:
        return "'%s'" % c
    return uint_formatter(n, bits)

def binary_formatter(n, bits):
    """Format a binary string

    Pads to the number of bits given.
    """

    s = bin(n)[2:]
    s = ("0"*bits + s)[-bits:]
    return config.get_assembler().binary_format(s)

def picture_binary_formatter(n, bits):
    """Format 'picture' binary data.

    'Picture' binary uses alternative characters for expressing binary
    digits. This is most commonly used for displaying 1-bit per pixel
    sprites.
    """

    return config.get_assembler().picture_binary(binary_formatter(n, bits))

def decimal_formatter(n, bits):
    """Format a regular decimal number"""

    return "%d" % n

def hexadecimal_formatter(n, bits):
    """Format an 8 or 16 bit hex number"""

    # TODO: It's possible we want to offer some additional control over leading
    # zero padding and number of hex digits emitted, but let's just go with this
    # for now.
    return config.get_assembler().hex(n)

def constant(binary_addr, n, bits):
    """Format a constant value, using whatever formatter is hinted"""

    format_hint = disassembly.format_hint.get(binary_addr, uint_formatter)
    return format_hint(n, bits)

def constant8(binary_addr):
    """Format a constant value, using whatever formatter is hinted"""

    assert memorymanager.is_valid_binary_addr(binary_addr)
    n = memorymanager.memory_binary[binary_addr]
    return constant(binary_addr, n, 8)

def constant16(binary_addr):
    """Format a constant value, using whatever formatter is hinted"""

    assert memorymanager.is_valid_binary_addr(binary_addr)
    n = memorymanager.get_u16_binary(binary_addr)
    return constant(binary_addr, n, 16)

def format_comment(text, indent):
    """Format a standalone (i.e. not inline) multiline comment.

    Text is word wrapped.
    """

    prefix = config.get_indent_string() * indent + config.get_assembler().comment_prefix() + " "
    text_width = config.get_word_wrap_comment_column() - len(prefix)
    result = ""
    for paragraph in text.split("\n"):
        result += "\n".join([prefix + line for line in textwrap.fill(paragraph, text_width).split("\n")]) + "\n"
    return result[:-1]

def explicit_label_with_inline_comment(name, value, offset=None, align_value_column=0, inline_comment=None, align_comment_column=0):
    """Format an explicit 'label=value' line, including an optional inline comment"""

    result = config.get_assembler().explicit_label(name, value, offset=offset, align_column=align_value_column)
    if inline_comment:
        # Add spaces up to the alignment column
        result = utils.tab_to(result, align_comment_column)

        # Add inline comment itself
        result += config.get_assembler().comment_prefix() + " " + inline_comment
    return result
