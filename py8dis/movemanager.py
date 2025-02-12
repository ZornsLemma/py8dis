"""
Move manager.

A "move" copies a block of bytes from some part of the "binary" (i.e.
the program being disassembled) to a different "runtime" address.

A runtime address can be the target of more than one move - this
handles, for example, a ROM which copies different fragments of code
into a single part of RAM at different times.

However, a binary address can only be the source of a single move. I
think this is a fairly natural restriction, because we're trying to
generate assembler input which will recreate the binary, and we can
only have a single classification (an instruction or data-emitting
directive of some kind) for each byte in the binary. (We don't
enforce this single source rule; instead we allow add_move() to
"steal" sources from previously defined moves.)
"""

import collections
import contextlib

import config
import utils
import memorymanager
from movedefinition import MoveDefinition
from memorymanager import BinaryLocation, RuntimeLocation, RuntimeAddr, BinaryAddr

# active_move_ids is a list of MoveId objects. It is managed by the
# MoveId class itself.
BASE_MOVE_ID    = 0     # Integer value for the first move id.
active_move_ids = []

# move_definitions is a list of moves, each of the form (dest, source, len)
# It starts as a single move encompassing the entire memory map. Later
# moves "steal" binary addresses from earlier moves.
move_definitions = [MoveDefinition(RuntimeAddr(0), BinaryAddr(0), 0x10000)]

def is_valid_move_id(move_id):
    """Sanity check that the move_id is within the expected range"""

    return move_id == BASE_MOVE_ID or 0 <= move_id < len(move_definitions)

class MoveId(int):
    """Class for a move id, that via scope manages a list of active
    move ids."""

    def __new__(cls, value, *args, **kwargs):
        assert is_valid_move_id(value)
        return super(MoveId, cls).__new__(cls, value)

    # We define the '__enter__' and '__exit__' methods for the 'with' command
    def __enter__(self):
        active_move_ids.append(self)
        return self

    def __exit__(self, exc_type, exc_value, exc_traceback):
        assert active_move_ids[-1] == self
        active_move_ids.pop()

# Create array of 65536 instances of one initial MoveId object
move_id_for_binary_addr = [MoveId(BASE_MOVE_ID)] * 0x10000

def add_move(dest_runtime_addr, src_binary_addr, length):
    """Register the existence of a 'move' at runtime that relocates memory
    from `src_binary_addr` to `dest_runtime_addr` for `length` bytes.

    The move is recorded, and a move_id is allocated and returned to
    identify the move.
    """

    assert isinstance(dest_runtime_addr, RuntimeAddr)
    assert isinstance(src_binary_addr, BinaryAddr)
    assert memorymanager.is_valid_runtime_addr(dest_runtime_addr)
    assert memorymanager.is_valid_binary_addr(src_binary_addr)
    assert memorymanager.is_valid_runtime_addr(dest_runtime_addr + length)
    assert memorymanager.is_valid_binary_addr(src_binary_addr + length)
    assert dest_runtime_addr != src_binary_addr # not fundamentally necessary, but seems sensible
    assert length > 0

    # Create a new move
    move_definitions.append(MoveDefinition(dest_runtime_addr, src_binary_addr, length))

    # Create a new move id
    move_id = MoveId(len(move_definitions) - 1)

    # Mark all source memory locations with the move id
    for i in range(length):
        move_id_for_binary_addr[src_binary_addr + i] = move_id

    #utils.debug("Move {0} added. Dest = {1}, Src = {2}, Len = {3}".format(move_id, hex(dest_runtime_addr), hex(source), length))
    return move_id

def is_valid_runtime_addr_for_move_id(runtime_addr, move_id):
    """Check the given runtime address and move_id is valid."""

    assert isinstance(runtime_addr, RuntimeAddr)
    assert memorymanager.is_valid_runtime_addr(runtime_addr)
    assert is_valid_move_id(move_id)

    # Find the move definition
    md = move_definitions[move_id]

    # We *include* the end address here; this accounts for the fact that a label can be
    # defined after the last classification in a move.
    return md.is_in_move_dest(runtime_addr, include_end_address=True)

def b2r(binary_addr):
    """
    Convert a binary address to a runtime address.

    Return the runtime address corresponding to a binary address;
    because a binary address can only be the source of a single move,
    there is always a single result of this mapping.
    """

    assert isinstance(binary_addr, BinaryAddr)
    assert memorymanager.is_valid_binary_addr(binary_addr)

    # Gather information about the move
    move_id = move_id_for_binary_addr[binary_addr]
    md = move_definitions[move_id]
    return md.convert_binary_to_runtime_addr(binary_addr)

# `cache` holds a list of move_ids for each runtime address.
cache = None

# `cache_move_definitions_len` is used to check if any more move()s have been made and need to be cached.
cache_move_definitions_len = None

def move_ids_for_runtime_addr(runtime_addr):
    """
    Return the list of move_ids for a given runtime_address.

    Used by r2b(). These results are stored in a cache for speed.
    """

    global cache_move_definitions_len, cache
    assert isinstance(runtime_addr, RuntimeAddr)

    assert memorymanager.is_valid_runtime_addr(runtime_addr, True) # 0x10000 is valid for labels

    if cache_move_definitions_len is None or len(move_definitions) != cache_move_definitions_len:
        cache = collections.defaultdict(set)
        for binary_addr, move_id in enumerate(move_id_for_binary_addr):
            if move_id != BASE_MOVE_ID: # TODO: special case feels a bit awkward
                cache[b2r(BinaryAddr(binary_addr))].add(move_id)
        cache_move_definitions_len = len(move_definitions)
    return cache[runtime_addr]

def make_binloc(binary_loc):
    if utils.is_integer_type(binary_loc):
        last_move_id = active_move_ids[-1] if active_move_ids else BASE_MOVE_ID
        return BinaryLocation(BinaryAddr(binary_loc), last_move_id)
    assert isinstance(binary_loc, BinaryLocation)
    return binary_loc

def make_runloc(runtime_loc):
    if utils.is_integer_type(runtime_loc):
        last_move_id = active_move_ids[-1] if active_move_ids else BASE_MOVE_ID
        return RuntimeLocation(RuntimeAddr(binary_loc), last_move_id)
    assert isinstance(runtime_loc, RuntimeLocation)
    return runtime_loc

def r2b(runtime_addr, specific_move_id=None, debug=False):
    """
    Return (binary address, move ID) corresponding to a runtime address.
    If a specific_move_id is specified, use that move_id.

    Otherwise, because a runtime address can be the target of multiple
    moves, there may be no single correct answer - active_move_ids is
    used to help disambiguate, but if that fails (None, None) will be
    returned.
    """

    assert isinstance(runtime_addr, RuntimeAddr)

    if specific_move_id is None:
        # Get a list of move_ids for the runtime address
        relevant_move_ids = move_ids_for_runtime_addr(runtime_addr)
        if debug:
            utils.debug("relevant_move_ids: {0}".format(relevant_move_ids))
            utils.debug("active_move_ids: {0}".format(active_move_ids))

        # Early out if we have no relevant move ids
        if len(relevant_move_ids) == 0:
            return BinaryAddr(int(runtime_addr)), BASE_MOVE_ID

        specific_move_id = None
        if len(relevant_move_ids) == 1:
            # Only one relevant move id, use that
            specific_move_id = min(relevant_move_ids)
        else:
            # Check for a relevant move id that is most recently active
            for move_id in active_move_ids[::-1]:
                if move_id in relevant_move_ids:
                    specific_move_id = move_id
                    break

        # If no relevant move is active, give up.
        if specific_move_id is None:
            return (None, None)

    # Return the binary address for the runtime address and the selected move id.
    md = move_definitions[specific_move_id]
    if md.is_in_move_dest(runtime_addr, include_end_address=True):
        return (md.convert_runtime_to_binary_addr(runtime_addr), specific_move_id)
    return (None, None)

# TODO: Maybe use this in more places
def r2b_checked(runtime_addr):
    """As r2b() but with checks for an unambiguous result."""

    runtime_addr = RuntimeAddr(runtime_addr)
    assert isinstance(runtime_addr, RuntimeAddr)

    binary_addr, move_id = r2b(runtime_addr)

    if binary_addr is None:
        utils.die("Ambiguous runtime address %s" % config.get_assembler().hex(runtime_addr))

    assert move_id is not None
    return BinaryLocation(binary_addr, move_id)

# Unit testing for moves
if __name__ == "__main__":
    id1 = add_move(0x70, 0x1900, 10)
    id2 = add_move(0x70, 0x2000, 8)
    id3 = add_move(0x900, 0x2100, 256)

    assert move_id_for_binary_addr[0x70] == BASE_MOVE_ID
    assert move_id_for_binary_addr[0x1900] == id1
    assert move_id_for_binary_addr[0x2000] == id2
    assert move_id_for_binary_addr[0x2000 + 8] == BASE_MOVE_ID

    assert b2r(0x70) == 0x70
    assert b2r(0x1900) == 0x70
    assert b2r(0x2000) == 0x70
    assert b2r(0x2000 + 8) == 0x2000 + 8
    assert b2r(0x2100) == 0x900

    assert active_move_ids == []
    assert r2b(0x70) == (None, None)
    assert r2b(0x900) == (0x2100, id3)
    with moved(id2):
        assert active_move_ids == [id2]
        assert r2b(0x70) == (0x2000, id2)
        assert r2b(0x900) == (0x2100, id3)
        assert r2b(0x2008) == (0x2008, BASE_MOVE_ID)
        with moved(id1):
            assert active_move_ids == [id2, id1]
            assert r2b(0x70) == (0x1900, id1)
            assert r2b(0x900) == (0x2100, id3)
            assert r2b(0x2008) == (0x2008, BASE_MOVE_ID)
        assert active_move_ids == [id2]
        assert r2b(0x70) == (0x2000, id2)
        assert r2b(0x900) == (0x2100, id3)
        assert r2b(0x2008) == (0x2008, BASE_MOVE_ID)
    assert active_move_ids == []
    assert r2b(0x70) == (None, None)
    assert r2b(0x900) == (0x2100, id3)
