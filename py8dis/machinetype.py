from enum import Enum, auto

class MachineType(Enum):
    """Enum representing different BBC Micro machine types."""
    MACHINE_BBC = auto()
    MACHINE_BPLUS = auto()
    MACHINE_MASTER = auto()
    MACHINE_6502SP = auto()
    MACHINE_ELECTRON = auto()
