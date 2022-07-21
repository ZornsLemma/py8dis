from __future__ import print_function
import collections
import sys

import config

def die(s):
    """Print an error message and halt execution."""
    print(s, file=sys.stderr)
    sys.exit(1)

def warn(s):
    """Print a warning message but don't halt execution."""
    print("warning: %s" % (s), file=sys.stderr)


def force_case(s):
    """Change string to upper or lower case as configured."""

    return s.lower() if config.get_lower_case() else s.upper()

def plainhex2(i):
    """Return a two character (one byte) hex string in the appropriate case."""

    return ("%02x" if config.get_lower_case() else "%02X") % i

def plainhex4(i):
    """Return a four character (two byte) hex string in the appropriate case."""

    return ("%04x" if config.get_lower_case() else "%04X") % i

def tab_to(s, n):
    """Right padding to column n for a string s."""

    assert n >= 0
    return "%-*s" % (n, s)

def make_indent(n):
    """Make an indent string."""

    assert n >= 0
    return (config.get_indent_string()) * n

def signed8(i):
    """Convert an integer to a signed byte sized value."""

    assert 0 <= i <= 255
    if i >= 0x80:
        return i - 256
    else:
        return i

# https://stackoverflow.com/questions/312443/how-do-you-split-a-list-into-evenly-sized-chunks
def chunks(lst, n):
    """Yield successive n-sized chunks from lst."""

    for i in range(0, len(lst), n):
        yield lst[i:i + n]

def isprint(c):
    """Is the character a printable ASCII character?"""

    return 32 <= c <= 126

def check_expr(expr, value):
    """Add an assert to the output based on an expression."""

    # ENHANCE: It would be good to at least try to evaluate "expression" and generate
    # an error if it doesn't match expected_value. In reality most expressions will
    # be fairly simple combinations of labels and basic integer arithmetic, mixed with
    # the < and > operators to get the low and high bytes of a 16-bit word.

    # ENHANCE: It would be good if this could (probably optionally) evaluate
    # 'expr' itself in the content of the current set of labels and constants.
    # However, the "assert at assembly time" approach should be absolutely
    # reliable (it's just not as early a detection as we'd like) so should
    # probably be retained even if expression evaluation is supported directly
    # in py8dis.
    config.get_assembler().assert_expr(expr, value)

def count_with_units(n, unit_name_singular, unit_name_plural):
    """Describes a count of a given unit e.g. "3 apples".

    Returns a string with the amount given and the unit name either
    in singular or plural form.
    """

    return "%d %s" % (n, unit_name_singular if n == 1 else unit_name_plural)

# TODO: Not a problem but just a note so I can come back to it and check my thinking later and maybe put some comments in elsewhere: we only "need" LazyString to defer labelling decisions until we've decided if an address is code or data, since otherwise we have all the information we need straight away. This means that we *don't* need to use LazyString anywhere "outside" the tracing code.
class LazyString(object):
    """Defers string formatting until needed"""

    def __init__(self, fmt, *args):
        self._fmt = fmt
        self._args = args

    def __str__(self):
        return self._fmt % tuple(x() if callable(x) else x for x in self._args)

    def __add__(self, other):
        if isinstance(other, LazyString):
            return LazyString(self._fmt + other._fmt, *(self._args + other._args))
        return LazyString(self._fmt + "%s", *(list(self._args) + [other]))

    def __len__(self):
        return len(str(self))

# https://stackoverflow.com/questions/2912231/is-there-a-clever-way-to-pass-the-key-to-defaultdicts-default-factory
class keydefaultdict(collections.defaultdict):
    def __missing__(self, key):
        if self.default_factory is None:
            raise KeyError( key )
        else:
            ret = self[key] = self.default_factory(key)
            return ret

def sorted_annotations(annotations):
    return sorted(annotations, key=lambda x: x.priority)
