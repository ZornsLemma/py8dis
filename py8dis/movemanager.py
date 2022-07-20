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

# active_move_ids is a list of MoveId objects. It is managed by the
# MoveId class itself.
base_move_id    = 0     # Integer value for the first move id.
active_move_ids = []

# move_definitions is a list of moves, each of the form (dest, source, len)
# It starts as a single move encompassing the entire memory map. Later
# moves "steal" binary addresses from earlier moves.
move_definitions = [(memorymanager.RuntimeAddr(0), memorymanager.BinaryAddr(0), 0x10000)]

def is_valid_move_id(move_id):
    """Sanity check that the move_id is within the expected range"""

    return move_id == base_move_id or 0 <= move_id < len(move_definitions)

class MoveId(int):
    """Class for a move id, that via scope manages a list of active
    move ids."""

    def __new__(cls, value, *args, **kwargs):
        assert is_valid_move_id(value)
        return super(MoveId, cls).__new__(cls, value)

    def __enter__(self):
        active_move_ids.append(self)
        return self

    def __exit__(self, exc_type, exc_value, exc_traceback):
        assert active_move_ids[-1] == self
        active_move_ids.pop()

# Create array of 65536 instances of one initial MoveId object
move_id_for_binary_addr = [MoveId(base_move_id)] * 0x10000

def add_move(dest, source, length):
    """Register the existence of a 'move' at runtime that relocates memory
    from `source` to `dest` for `length` bytes.

    The move is recorded, and a move_id is allocated and returned to
    identify the move.
    """

    assert isinstance(dest, memorymanager.RuntimeAddr)
    assert isinstance(source, memorymanager.BinaryAddr)
    assert memorymanager.is_valid_runtime_addr(dest)
    assert memorymanager.is_valid_binary_addr(source)
    assert memorymanager.is_valid_runtime_addr(dest + length)
    assert memorymanager.is_valid_binary_addr(source + length)
    assert dest != source # not fundamentally necessary, but seems sensible
    assert length > 0

    # Create a new move
    move_definitions.append((dest, source, length))

    # Create a new move id
    move_id = MoveId(len(move_definitions) - 1)

    # Mark all source memory locations with the move id
    for i in range(length):
        move_id_for_binary_addr[source + i] = move_id
    return move_id

def is_valid_runtime_addr_for_move_id(runtime_addr, move_id):
    """Check the given runtime address and move_id is valid."""

    assert isinstance(runtime_addr, memorymanager.RuntimeAddr)
    assert memorymanager.is_valid_runtime_addr(runtime_addr)
    assert is_valid_move_id(move_id)

    md = move_definitions[move_id]
    # We *include* the end address here; this accounts for the fact that a label can be
    # defined after the last classification in a move.
    return md[0] <= runtime_addr <= (md[0] + md[2])

def b2r(binary_addr):
    """
    Convert a binary address to a runtime address.

    Return the runtime address corresponding to a binary address;
    because a binary address can only be the source of a single move,
    there is always a single result of this mapping.
    """

    assert isinstance(binary_addr, memorymanager.BinaryAddr)
    assert memorymanager.is_valid_binary_addr(binary_addr)

    # Gather information about the move
    move_id = move_id_for_binary_addr[binary_addr]
    move_dest, move_source, move_length = move_definitions[move_id]

    assert move_source <= binary_addr < (move_source + move_length)
    return memorymanager.RuntimeAddr(move_dest + (binary_addr - move_source))



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
    assert isinstance(runtime_addr, memorymanager.RuntimeAddr)
    assert memorymanager.is_valid_runtime_addr(runtime_addr)

    # TODO: We might want to assert we are pre-tracing, since this function is probably not meaningful once we start tracing and there is no code manipulating active_move_ids. That's not quite true - we do use this in at least one place - but there is some truth in it.

    if cache_move_definitions_len is None or len(move_definitions) != cache_move_definitions_len:
        cache = collections.defaultdict(set)
        for binary_addr, move_id in enumerate(move_id_for_binary_addr):
            binary_addr = memorymanager.BinaryAddr(binary_addr)
            if move_id != base_move_id: # TODO: special case feels a bit awkward
                cache[b2r(binary_addr)].add(move_id)
        cache_move_definitions_len = len(move_definitions)
    return cache[runtime_addr]

def r2b(runtime_addr):
    """
    Return (binary address, move ID) corresponding to a runtime address.

    Because a runtime address can be the target of multiple moves,
    there may be no single correct answer - active_move_ids is used
    to help disambiguate, but if that fails (None, None) will be
    returned.
    """

    # TODO: It might be useful to provide a variant of this function which
    # returns a list of *all* possible binary addresses corresponding to
    # runtime_addr; I am not sure yet.
    assert isinstance(runtime_addr, memorymanager.RuntimeAddr)

    # Get a list of move_ids for the runtime address
    relevant_move_ids = move_ids_for_runtime_addr(runtime_addr)

    # Early out if we have no relevant move ids
    if len(relevant_move_ids) == 0:
        return memorymanager.BinaryAddr(int(runtime_addr)), base_move_id

    selected_move_id = None
    if len(relevant_move_ids) == 1:
        # Only one relevant move id, use that
        selected_move_id = min(relevant_move_ids)
    else:
        # Check for a relevant move id that is active
        for move_id in active_move_ids[::-1]:
            if move_id in relevant_move_ids:
                selected_move_id = move_id
                break

    # If no relevant move is active, give up.
    if selected_move_id is None:
        return (None, None)

    # Return the binary address for the runtime address and the selected move id.
    move_dest, move_source, move_length = move_definitions[selected_move_id]
    assert move_dest <= runtime_addr < (move_dest + move_length)
    return (memorymanager.BinaryAddr(move_source + (runtime_addr - move_dest)), selected_move_id)

# TODO: Maybe use this in more places
def r2b_checked(runtime_addr):
    """As r2b() but with checks for an unambiguous result."""

    assert isinstance(runtime_addr, memorymanager.RuntimeAddr)

    binary_addr, move_id = r2b(runtime_addr)
    if binary_addr is None:
        # TODO: *Really* need a backtrace to make this useful
        assert False # TODO: A hack to get a backtrace
        utils.die("Ambiguous runtime address %s" % config.get_assembler().hex(runtime_addr))

    assert move_id is not None
    return binary_addr, move_id

# Unit testing for moves
if __name__ == "__main__":
    id1 = add_move(0x70, 0x1900, 10)
    id2 = add_move(0x70, 0x2000, 8)
    id3 = add_move(0x900, 0x2100, 256)

    assert move_id_for_binary_addr[0x70] == base_move_id
    assert move_id_for_binary_addr[0x1900] == id1
    assert move_id_for_binary_addr[0x2000] == id2
    assert move_id_for_binary_addr[0x2000 + 8] == base_move_id

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
        assert r2b(0x2008) == (0x2008, base_move_id)
        with moved(id1):
            assert active_move_ids == [id2, id1]
            assert r2b(0x70) == (0x1900, id1)
            assert r2b(0x900) == (0x2100, id3)
            assert r2b(0x2008) == (0x2008, base_move_id)
        assert active_move_ids == [id2]
        assert r2b(0x70) == (0x2000, id2)
        assert r2b(0x900) == (0x2100, id3)
        assert r2b(0x2008) == (0x2008, base_move_id)
    assert active_move_ids == []
    assert r2b(0x70) == (None, None)
    assert r2b(0x900) == (0x2100, id3)
