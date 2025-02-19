from enum import auto, Enum
from functools import total_ordering

@total_ordering
class Align(Enum):
    BEFORE_LABEL = auto()
    AFTER_LABEL = auto()
    BEFORE_LINE = auto()
    INLINE = auto()
    AFTER_LINE = auto()

    def __lt__(self, other):
        if self.__class__ is other.__class__:
            return self.value < other.value
        return NotImplemented
