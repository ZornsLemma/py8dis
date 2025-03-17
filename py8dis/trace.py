"""
Trace

Follows ('traces') instructions from known entry points in order to discover
which bytes of the binary are actually code and which are data. This class
just holds information about the tracing process, including the 'cpu' object
which actually does the work, see cpu.py and derived classes.
"""

import collections
import subroutine
import memorymanager

cpu                              = None     # an object of class Cpu
subroutine_argument_finder_hooks = []       # Python routines ('hooks') for naming constant arguments to subroutines
substitute_constant_list         = []       # List of SubConst() objects (see cpu6502) for naming constants
subroutines_list                 = []       # List of Subroutine() objects
no_auto_comment_set              = set()    # runtime addresses not to be auto-commented
references                       = None     # dictionary of references keyed by binary location

def add_subroutine(runtime_addr, name, title, description, entry, exit, hook_function, move_id):
    subroutines_list.append(subroutine.Subroutine(runtime_addr, name, title, description, entry, exit, hook_function, move_id))
