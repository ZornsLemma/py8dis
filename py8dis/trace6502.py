from cpu6502 import *

trace.cpu = Cpu6502()

# TODO: This is a user command, it should possibly take an optional move_id or respect the "current move ID"
def hook_subroutine(runtime_addr, name, hook, warn=True):
    trace.cpu.hook_subroutine(runtime_addr, name, hook, warn)

