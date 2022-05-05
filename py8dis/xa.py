from __future__ import print_function
import sys

import classification
import config
import disassembly # TODO?
import movemanager
import utils

config.set_formatter(sys.modules[__name__])

explicit_a = False

_pending_assertions = {}

def set_output_filename(filename):
    # Irrelevant for xa, accepted for compatibility with beebasm.
    pass

def hex2(n):
    return "$%s" % utils.plainhex2(n)

def hex4(n):
    return "$%s" % utils.plainhex4(n)

def hex(n):
    if n <= 0xff:
        return hex2(n)
    else:
        return hex4(n)

def inline_label(name):
    return "%s" % name

def explicit_label(name, value, offset=None):
    return "%s = %s%s" % (name, value, "" if offset is None else "+%d" % offset)

# xa supports ";" as a comment prefix, but by default colons terminate ";"
# comments, so we use "//".
def comment_prefix():
    return "//"

def assert_expr(expr, value):
    _pending_assertions[expr] = value

def set_cmos(b):
    pass

def disassembly_start():
    return []

def code_start(start_addr, end_addr):
    return ["%s* = %s" % (utils.make_indent(1), hex4(start_addr)), ""]

def code_end():
    return []

# TODO: pseudopc_index is a bit of a hack. This problem is that xa (not unreasonably, probably) won't accept forward references in the "* = ..." line emitted by pseudopc_end(). We need to ensure there are labels defined at the start and end of the pseudopc block so they can be used in pseudopc_end without needing any forward references. This hack seems to work in practice, but note that *if* there's already a label in one of these places the labels we add here are redundant and may not be referenced. I don't know if we can (easily/at all) detect when this happens; perhaps we can/should add a "weak" label definition which is only emitted if it's used, though that might be more complex than necessary. I *think* the fact we are using the move ID with the labels here and in pseudopc_end() means we won't end up having get_label() decide to return us a label name for the right address which is defined elsewhere (and potentially after) in the file. If push came to shove we could just forcibly use the pseudopc_start_xxx labels in pseudopc_end() instead of going via get_label(); that might in fact be the cleanest solution all round, although it wouldn't be unreasonable for a user to want to be able to control the label names. Perhaps moves could be given an optional name which is used when generating these labels instead of auto-generating them using a numeric sequence, though that might be a bit assembler-specific. - OK, gfoot's repton2 disassembly shows the problem where get_label() picks an "unacceptable" label for pseudopc_end(), so although this may indicate a sub-optimal choice of label in general, I will just hard-code the use of these labels. OK, that *still* doesn't work...
pseudopc_index=0
def pseudopc_start(dest, source, length):
    move_id = movemanager.move_id_for_binary_addr[source]
    global pseudopc_index
    #disassembly.add_label(dest, "pseudopc_start_%d" % pseudopc_index, move_id)
    #disassembly.add_label(dest + length, "pseudopc_end_%d" % pseudopc_index, move_id)
    pseudopc_index += 1
    return ["* = %s" % hex(dest)]

def pseudopc_end(dest, source, length):
    move_id = movemanager.move_id_for_binary_addr[source]
    # TODO: Hard-coding a literal address here is very unsatisfactory but (as noted in TODO just above pseudopc_start()) I am struggling to make anything else work.
    return [utils.LazyString("* = %s", hex(source + length))]

def disassembly_end():
    result = []
    return result # TODO!
    spa = sorted((str(expr), hex(value)) for expr, value in _pending_assertions.items())
    for expr, value in spa:
        result.append("%s %s <> %s" % (utils.force_case("#if"), expr, value))
        result.append("    #echo TODO") # result.append(utils.make_indent(1) + '%s Assertion failed: %s == %s' % (utils.force_case("#echo"), expr, value))
        result.append(utils.force_case("#endif"))
    return result

def force_abs_instruction(instruction, prefix, operand, suffix):
    # It's tempting to put brackets around "operand" in case it contains an
    # expression, but the "!" prefix operator doesn't seem to like this and
    # probably doesn't need it.
    return utils.LazyString("%s%s %s!%s%s", utils.make_indent(1), instruction, prefix, operand, suffix)

def byte_prefix():
    return utils.force_case(".byt ")

def word_prefix():
    return utils.force_case(".word ")

def string_prefix():
    return utils.force_case(".asc ")

def string_chr(c):
    if chr(c) in '^"':
        return "^" + chr(c)
    # xa has a bug which can affect strings containing '/', so we force them to
    # be encoded specially. See
    # https://stardot.org.uk/forums/viewtopic.php?p=351954#p351954 for more.
    if chr(c) == '/':
        return None
    if utils.isprint(c):
        return chr(c)
    return None

def binary_prefix():
    return "%"

def picture_binary(s):
    return s

def sanitise(s):
    # xa uses "\" as a line continuation character, so if a line (e.g. an ASCII
    # dump of some byte data) happens to end with that, add a space to stop it
    # being misinterpreted.
    if len(s) > 0 and s[-1] == "\\":
        return s + " "
    return s
