"""
XA assembler
"""

from __future__ import print_function
import sys

import config
import disassembly
import movemanager
import utils
import assembler

class Xa(assembler.Assembler):
    """This class encapsulates xa-specific syntax and features."""

    def __init__(self):
        super(assembler.Assembler, self).__init__()
        self.pseudopc_index=0

    def get_name(self):
        return "xa"

    def cpus_supported(self):
        return ["6502", "65c02"]

    def hex2(self, n):
        return "$%s" % utils.plainhex2(n)

    def hex4(self, n):
        return "$%s" % utils.plainhex4(n)

    def hex(self, n):
        if n <= 0xff:
            return self.hex2(n)
        else:
            return self.hex4(n)

    def inline_label(self, name):
        return "%s" % name

    def explicit_label(self, name, value, offset=None, align=0):
        # Output when declaring a label with an explicit value:
        #
        #   i.e. 'label = value'
        #
        # with an optional offset added to the value, and optional column
        # alignment at the equals sign.
        return "%s= %s%s" % (utils.tab_to(name + " ", align), value, "" if offset is None else "+%d" % offset)

    # xa supports ";" as a comment prefix, but by default colons terminate ";"
    # comments, so we use "//".
    def comment_prefix(self):
        return "//"

    def disassembly_start(self):
        # Preamble to be output at the start of the disassembly.
        return []

    def code_start(self, start_addr, end_addr, first):
        # At the start of the code we provide the address at which to assemble.
        global _code_index

        # The first code block is just a "* = $xxxx" style line
        if first:
            _code_index = 1
            return ["", "%s* = %s" % (utils.make_indent(1), self.hex4(start_addr)), ""]

        end_label = "end_of_part_" + str(_code_index)
        _code_index += 1

        # Subsequent blocks need weird code to pad with a '.dsb' command

        # Example from docs at http://www.floodgap.com/retrotech/xa/xa.1.html :
        #
        #     * = $1000
        #
        #     ; this is your code at $1000
        # part1       rts
        #     ; this label marks the end of code
        # endofpart1
        #
        #     ; DON'T PUT A NEW .word HERE!
        #     * = $2000
        #     .dsb (*-endofpart1), 0
        #     ; yes, set it again
        #     * = $2000
        #
        #     ; this is your code at $2000
        # part2       rts

        # So we mimic this example here:
        return [end_label,
            "%s* = %s" % (utils.make_indent(1), self.hex4(start_addr)),
            ".dsb (*-%s), 0" % (end_label),
            "%s* = %s" % (utils.make_indent(1), self.hex4(start_addr)),
            ""]

    def code_end(self):
        return []

    # TODO: pseudopc_index is a bit of a hack. This problem is that xa
    # (not unreasonably, probably) won't accept forward references in
    # the "* = ..." line emitted by pseudopc_end(). We need to ensure
    # there are labels defined at the start and end of the pseudopc
    # block so they can be used in pseudopc_end without needing any
    # forward references. This hack seems to work in practice, but note
    # that *if* there's already a label in one of these places the
    # labels we add here are redundant and may not be referenced. I
    # don't know if we can (easily/at all) detect when this happens;
    # perhaps we can/should add a "weak" label definition which is only
    # emitted if it's used, though that might be more complex than
    # necessary. I *think* the fact we are using the move ID with the
    # labels here and in pseudopc_end() means we won't end up having
    # get_label() decide to return us a label name for the right
    # address which is defined elsewhere (and potentially after) in
    # the file. If push came to shove we could just forcibly use the
    # pseudopc_start_xxx labels in pseudopc_end() instead of going via
    # get_label(); that might in fact be the cleanest solution all
    # round, although it wouldn't be unreasonable for a user to want to
    # be able to control the label names. Perhaps moves could be given
    # an optional name which is used when generating these labels
    # instead of auto-generating them using a numeric sequence, though
    # that might be a bit assembler-specific. - OK, gfoot's repton2
    # disassembly shows the problem where get_label() picks an
    # "unacceptable" label for pseudopc_end(), so although this may
    # indicate a sub-optimal choice of label in general, I will just
    # hard-code the use of these labels. OK, that *still* doesn't work...
    def pseudopc_start(self, dest, source, length, move_id):
        # Used when assembling code at a different address to where it will actually execute.

        #disassembly.add_label(dest, "pseudopc_start_%d" % self.pseudopc_index, move_id)
        #disassembly.add_label(dest + length, "pseudopc_end_%d" % self.pseudopc_index, move_id)
        self.pseudopc_index += 1
        return ["* = %s" % self.hex(dest)]

    def pseudopc_end(self, dest, source, length, move_id):
        # TODO: Hard-coding a literal address here is very
        # unsatisfactory but (as noted in TODO just above
        # pseudopc_start()) I am struggling to make anything else work.
        return [utils.LazyString("* = %s", self.hex(source + length))]

    def disassembly_end(self):
        result = []

        # At the end of the assembly, we output assertions.
        if False: # TODO! config.get_include_assertions():
            spa = sorted((str(expr), self.hex(value)) for expr, value in self.pending_assertions.items())
            for expr, value in spa:
                result.append("%s %s <> %s" % (utils.force_case("#if"), expr, value))
                result.append("    #echo TODO") # result.append(utils.make_indent(1) + '%s Assertion failed: %s == %s' % (utils.force_case("#echo"), expr, value))
                result.append(utils.force_case("#endif"))

        return result

    def force_abs_instruction(self, instruction, prefix, operand, suffix):
        # Ensure the instruction uses an absolute address rather than a zero
        # page address. e.g. 'lda !addr,x'

        # It's tempting to put brackets around "operand" in case it contains an
        # expression, but the "!" prefix operator doesn't seem to like this and
        # probably doesn't need it.
        return utils.LazyString("%s%s %s!%s%s", utils.make_indent(1), instruction, prefix, operand, suffix)

    def force_zp_label_prefix(self):
        # Prefix to take the low byte of a label
        return "`"

    def byte_prefix(self):
        # For outputting bytes
        return utils.force_case(".byt ")

    def word_prefix(self):
        # For outputting words
        return utils.force_case(".word ")

    def string_prefix(self):
        # For outputting strings
        return utils.force_case(".asc ")

    def string_chr(self, c):
        # When composing a literal character, this returns a character string
        # from an integer, or None if not possible

        # Different versions of xa have different policies about which characters
        # can be freely expressed in a string. We work around this by encoding any
        # problematic characters as numbers.

        # Workaround for a bug in xa that means an escaped double quote in a
        # string doesn't play well with a // comment, causing a syntax error
        if chr(c) == '"':
            return "\", 34, \""
        if chr(c) == '^':
            return "\", 94, \""
        if chr(c) == '\\':
            return "\", 92, \""
        # xa has a bug which can affect strings containing '/', so we force them
        # to be encoded specially. See
        # https://stardot.org.uk/forums/viewtopic.php?p=351954#p351954 for more.
        if chr(c) == '/':
            return None
        if utils.isprint(c):
            return chr(c)
        return None

    def binary_format(self, s):
        # For outputting a value as binary
        return "%" + s

    def picture_binary(self, s):
        # Converts a string of '0' and '1's into '.' and '#'s for visualising
        # data. Sadly xa does not support this.
        return s

    def sanitise(self, s):
        # xa uses "\" as a line continuation character, so if a line (e.g. an
        # ASCII dump of some byte data) happens to end with that, add a space to
        # stop it being misinterpreted.
        if len(s) > 0 and s[-1] == "\\":
            return s + " "
        return s

config.set_assembler(Xa())
