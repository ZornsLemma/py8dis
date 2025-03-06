"""
Utility functions
"""

from __future__ import print_function
import collections
import re
import sys
import traceback

import config

def die(s):
    """Print an error message and halt execution."""

    # Print callstack
    print(traceback.format_exc(), file=sys.stderr)

    # Print error message
    print(s, file=sys.stderr)
    sys.exit(1)

def warn(s):
    """Print a warning message but don't halt execution."""
    print("warning: %s" % (s), file=sys.stderr)

def debug(s):
    """Print a debug message but don't halt execution."""
    print("debug: %s" % (s), file=sys.stderr)

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

def count_with_units(n, unit_name_singular, unit_name_plural):
    """Describes a count of a given unit e.g. "3 apples".

    Returns a string with the amount given and the unit name either
    in singular or plural form.
    """
    if is_string_type(n) and (n == "1"):
        n = 1
    if is_integer_type(n):
        return "%d %s" % (n, unit_name_singular if n == 1 else unit_name_plural)
    else:
        return "%s %s" % (n, unit_name_plural)

# Create string types and integer types depending on python version
if sys.version_info[0] == 2:
    _integer_types = (long, int)
    _string_types  = (basestring,)
else:
    _integer_types = (int,)
    _string_types  = (str,)

def is_string_type(item):
    return isinstance(item, _string_types)

def is_integer_type(item):
    return isinstance(item, _integer_types)

# See https://stackoverflow.com/a/11150413
def natural_sort(l):
    convert = lambda text: int(text) if text.isdigit() else text.lower()
    alphanum_key = lambda key: [convert(c) for c in re.split('([0-9]+)', key)]
    return sorted(l, key=alphanum_key)

# Note: We only "need" LazyString to defer labelling decisions until
# we've decided if an address is code or data, since otherwise we
# have all the information we need straight away. This means that we
# *don't* need to use LazyString anywhere "outside" the tracing code.
class LazyString(object):
    """Defers string formatting until needed"""

    def __init__(self, fmt, *args):
        self._fmt = fmt
        self._args = args
        self.resolved = None

    def __str__(self):
        if self.resolved == None:
            self.resolved = self._fmt % tuple(x() if callable(x) else x for x in self._args)
        return self.resolved

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
    return sorted(annotations, key=lambda x: (x.align, x.priority))

def round_up(n: int, multiple: int = 4) -> int:
    """
    Rounds up an integer to the next multiple of the specified number.

    Args:
        n (int): The input integer to round up
        multiple (int): The multiple to round up to (default: 4)

    Returns:
        int: The next multiple of the specified number greater than or equal to the input

    Examples:
        >>> round_up_to_multiple(5)  # default multiple of 4
        8
        >>> round_up_to_multiple(5, multiple=3)
        6
        >>> round_up_to_multiple(7, multiple=5)
        10
        >>> round_up_to_multiple(10, multiple=2)
        10
    """
    return ((n + (multiple - 1)) // multiple) * multiple

def format_strings_in_a_table(strings, max_width, items_per_line_already_known, formatter_for_line, right_align=True):
    """
    Format a list of strings into lines with equal number of items per line.
    Entries are comma separated. Entries are aligned vertically by padding
    with spaces.

    Just before each line is added to the result, a formatter is called:
        formatter_for_line(line, start_index, end_index)
    to get the final text for the line.

    Args:
        strings (list): List of strings to format
        max_width (int): Maximum width of each line

    Returns:
        list: List of formatted lines
    """
    if not strings:
        return []

    def get_column_widths(strings, items_per_line):
        """Calculate the maximum width for each column."""
        widths = [0] * items_per_line
        for i in range(0, len(strings), items_per_line):
            line = strings[i:i + items_per_line]
            for j, item in enumerate(line):
                widths[j] = max(widths[j], len(item))
        return widths

    # loop through the possible values for items_per_line
    if items_per_line_already_known:
        # Loop once only at the specified number of items
        items_per_line_range = range(items_per_line_already_known, items_per_line_already_known-1, -1)
    else:
        # Loop through all possible items per line
        items_per_line_range = range(len(strings), 0, -1)

    # Try different numbers of items per line
    for items_per_line in items_per_line_range:
        line_count = len(strings) // items_per_line

        # Check if this arrangement fits within max_width
        # Calculate column widths for this arrangement
        column_widths = get_column_widths(strings, items_per_line)

        # Calculate total line width including commas and spaces
        total_width = sum(column_widths) + (items_per_line - 1) * 2  # 2 chars for ", "

        # If it now fits, or it's the last possible value for items_per_line, then accept it.
        if (total_width <= max_width) or (items_per_line == (items_per_line_range.stop+1)):
            result = []
            for i in range(0, len(strings), items_per_line):
                line = strings[i:i + items_per_line]
                # Format each item to its column width
                formatted_items = []
                for item, width in zip(line, column_widths):
                    if right_align:
                        formatted_items.append(f"{str(item):>{width}}")
                    else:
                        formatted_items.append(f"{str(item):<{width}}")
                result.append(formatter_for_line(", ".join(formatted_items), i, min(i+items_per_line, len(strings))))
            return result

    # If no arrangement works, format one item per line. Should never happen.
    return formatter_for_line(strings[0], 0, 1)
