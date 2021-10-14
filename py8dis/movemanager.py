# TODO: Experimental

# A "move" copies a block of bytes from some part of the "binary" (i.e. the
# program being disassembled) to a different "runtime" address.
#
# A runtime address can be the target of more than one move - this handles, for
# example, a ROM which copies different fragments of code into a single part of
# RAM at different times.
#
# However, a binary address can only be the source of a single move. I think
# this is a fairly natural restriction, because we're trying to generate
# assembler input which will recreate the binary, and we can only have a single
# classification (an instruction or data-emitting directive of some kind) for
# each byte in the binary.

import collections
import contextlib

import utils

active_move_ids = [0]

# TODO: Note that move_definitions has to be interpreted "as a whole", since later moves can "steal" binary addresses from earlier moves. I don't think this is a problem - and the whole point is to allow the user to do things like move a big chunk of code which gets relocated at runtime as a whole and then override that for a fairly small chunks witin that big chunk that the copied elsewhere.
move_definitions = [(0, 0, 0x10000)]

move_id_for_binary_addr = [0] * 0x10000

def add_move(dest, source, length):
    assert utils.is_valid_addr(dest)
    assert utils.is_valid_addr(source)
    assert utils.is_valid_addr(dest + length)
    assert utils.is_valid_addr(source + length)
    move_definitions.append((dest, source, length))
    move_id = len(move_definitions) - 1
    for i in range(length):
        move_id_for_binary_addr[source + i] = move_id
    return move_id

def is_valid_move_id(move_id):
    return 0 <= move_id < len(move_definitions)

# TODO: Name for this function is perhaps not ideal
@contextlib.contextmanager
def moved(move_id):
    assert is_valid_move_id(move_id)
    # TODO: Should we insist move_id is not already in active_move_ids? Probably
    # unnecessarily picky.
    active_move_ids.append(move_id)
    try:
        yield
    finally:
        assert active_move_ids[-1] == move_id
        active_move_ids.pop()

# Return the runtime address corresponding to a binary address; because a binary
# address can only be the source of a single move, there is always a single
# result of this mapping.
def b2r(binary_addr):
    assert utils.is_valid_addr(binary_addr)
    move_id = move_id_for_binary_addr[binary_addr]
    move_dest, move_source, move_length = move_definitions[move_id]
    assert move_source <= binary_addr <= (move_source + move_length)
    return move_dest + (binary_addr - move_source)

# Return the binary address corresponding to a runtime address; because a
# runtime address can be the target of multiple moves, this can only be resolved
# in the context of active_move_ids.
# TODO: It might be useful to provide a variant of this function which returns
# a list of *all* possible binary addresses corresponding to runtime_addr; I am not sure
# yet.
def r2b(runtime_addr):
    assert utils.is_valid_addr(runtime_addr)
    # TODO: Deriving this dynamically every time is super inefficient, but I'm still thinking
    # my way through this.
    move_ids_for_runtime_addr = collections.defaultdict(list) # TODO: set not list??
    for binary_addr, move_id in enumerate(move_id_for_binary_addr):
        move_ids_for_runtime_addr[b2r(binary_addr)].append(move_id)
    relevant_move_ids = move_ids_for_runtime_addr[runtime_addr]
    assert len(relevant_move_ids) > 0
    for move_id in active_move_ids[::-1]:
        if move_id in relevant_move_ids:
            move_dest, move_source, move_length = move_definitions[move_id]
            assert move_dest <= runtime_addr <= (move_dest + move_length)
            return move_source + (runtime_addr - move_dest)
    assert False # TODO: currently not clear to me if this is possible...


if __name__ == "__main__":
    id1 = add_move(0x70, 0x1900, 10)
    id2 = add_move(0x70, 0x2000, 8)

    assert move_id_for_binary_addr[0x70] == 0
    assert move_id_for_binary_addr[0x1900] == id1
    assert move_id_for_binary_addr[0x2000] == id2
    assert move_id_for_binary_addr[0x2000 + 8] == 0

    assert b2r(0x70) == 0x70
    assert b2r(0x1900) == 0x70
    assert b2r(0x2000) == 0x70
    assert b2r(0x2000 + 8) == 0x2000 + 8

    print("QQQ", hex(r2b(0x70))) # TODO: what *should* happen here? it is *probably* correct - ie we should assert this - that this returns 0x70, since every runtime address has the corresponding binary address moved onto it by move ID 0 if nothing else is actively overriding that - but I would like to think about it a bit more before "committing" to this

    assert active_move_ids == [0]
    with moved(id2):
        assert active_move_ids == [0, id2]
        assert r2b(0x70) == 0x2000
        assert r2b(0x2008) == 0x2008
        with moved(id1):
            assert active_move_ids == [0, id2, id1]
            assert r2b(0x70) == 0x1900
            assert r2b(0x2008) == 0x2008
        assert active_move_ids == [0, id2]
        assert r2b(0x70) == 0x2000
        assert r2b(0x2008) == 0x2008
    assert active_move_ids == [0]
