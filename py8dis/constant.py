from typing import Optional
from align import Align
from format import Format

import utils

class Constant:
    """A class representing a constant with its value, name, comment and alignment.

        value: The value of the constant
        name: The name identifier of the constant
        comment: Optional comment describing the constant
        align: The alignment of the comment (defaults to INLINE)
    """
    def __init__(self, value, name, comment = None, align = Align.INLINE, format = Format.DEFAULT):
        self.value = value
        self.name = name
        self.comment = comment
        if comment:
            assert(align != None)
        self.align = align
        self.format = format

    def __str__(self):
        return "{0}={1} ; {2} [{3}, {4}]".format(self.name, self.value, self.comment, self.align, self.format)

    def __repr__(self):
        return self.__str__()
