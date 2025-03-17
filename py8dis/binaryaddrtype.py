from enum import Enum, auto

class BinaryAddrType(Enum):
    """Enum representing the different binary address types when making a label."""
    BINARY_ADDR_IS_AT_LABEL_USAGE = auto()        # The binary address is the location of a use of the label e.g. the address of an operand to an 'LDA addr' instruction
    BINARY_ADDR_IS_AT_LABEL_DEFINITION = auto()   # The binary address corresponds to the runtime address where the label would be defined.
