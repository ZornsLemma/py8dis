from typing import Optional
from align import Align

import utils

class Constant:
    """A class representing a constant with its value, name, comment and alignment.

        value: The value of the constant
        name: The name identifier of the constant
        comment: Optional comment describing the constant
        align: The alignment of the comment (defaults to INLINE)
    """
    def __init__(self, value, name, comment = None, align = Align.INLINE):
        self.value = value
        self.name = name
        self.comment = comment
        if comment:
            assert(align != None)
        self.align = align

    def __str__(self):
        return "{0}={1} ; {2} [{3}]".format(self.name, self.value, self.comment, self.align)

    def __repr__(self):
        return self.__str__()
