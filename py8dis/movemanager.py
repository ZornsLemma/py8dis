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
# each byte in the binary. (We don't enforce this single source rule; instead
# we allow add_move() to "steal" sources from previously defined moves.)

import collections
import contextlib

import config
import utils

# TODO: Rename?
base_move_id = 0

active_move_ids = []

# TODO: Note that move_definitions has to be interpreted "as a whole", since later moves can "steal" binary addresses from earlier moves. I don't think this is a problem - and the whole point is to allow the user to do things like move a big chunk of code which gets relocated at runtime as a whole and then override that for a fairly small chunks witin that big chunk that the copied elsewhere.
move_definitions = [(0, 0, 0x10000)]

move_id_for_binary_addr = [base_move_id] * 0x10000

def add_move(dest, source, length):
    assert utils.is_valid_addr(dest)
    assert utils.is_valid_addr(source)
    assert utils.is_valid_addr(dest + length)
    assert utils.is_valid_addr(source + length)
    assert dest != source # not fundamentally necessary, but seems sensible
    assert length > 0
    move_definitions.append((dest, source, length))
    move_id = len(move_definitions) - 1
    for i in range(length):
        move_id_for_binary_addr[source + i] = move_id
    return move_id

def is_valid_move_id(move_id):
    # TODO: No need for base_move_id to be an exception with current value of 0...
    return move_id == base_move_id or 0 <= move_id < len(move_definitions)

def is_valid_runtime_addr_for_move_id(runtime_addr, move_id):
    assert utils.is_valid_addr(runtime_addr)
    assert is_valid_move_id(move_id)
    md = move_definitions[move_id]
    # We *include* the end address here; this accounts for the fact that a label can be
    # defined after the last classification in a move.
    return md[0] <= runtime_addr <= (md[0] + md[2])

# TODO: Name for this function is perhaps not ideal
# TODO: This should almost certainly be handled via Move() object returned by move() fn
# which would allow us to write "with move(blah)" instead of "id = move(blah); with moved(id)"
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
    assert move_source <= binary_addr < (move_source + move_length)
    return move_dest + (binary_addr - move_source)

cache_move_definitions_len = None
cache = None
def move_ids_for_runtime_addr(runtime_addr):
    # TODO: We might want to assert we are pre-tracing, since this function is probably not meaningful once we start tracing and there is no code manipulating active_move_ids. That's not quite true - we do use this in at least one place - but there is some truth in it.
    assert utils.is_valid_addr(runtime_addr)
    global cache_move_definitions_len, cache
    if cache_move_definitions_len is None or len(move_definitions) != cache_move_definitions_len:
        cache = collections.defaultdict(set)
        for binary_addr, move_id in enumerate(move_id_for_binary_addr):
            if move_id != base_move_id: # TODO: special case feels a bit awkward
                cache[b2r(binary_addr)].add(move_id)
        cache_move_definitions_len = len(move_definitions)
    return cache[runtime_addr]

# Return (binary address, move ID) corresponding to a runtime address; because a
# runtime address can be the target of multiple moves, there may be no
# single correct answer - active_move_ids is used to help disambiguate, but
# if that fails (None, None) will be returned.
# TODO: It might be useful to provide a variant of this function which returns
# a list of *all* possible binary addresses corresponding to runtime_addr; I am not sure
# yet.
def r2b(runtime_addr):
    relevant_move_ids = move_ids_for_runtime_addr(runtime_addr)
    if len(relevant_move_ids) == 0:
        return runtime_addr, base_move_id
    selected_move_id = None
    if len(relevant_move_ids) == 1:
        selected_move_id = min(relevant_move_ids)
    else:
        for move_id in active_move_ids[::-1]:
            if move_id in relevant_move_ids:
                selected_move_id = move_id
                break
    if selected_move_id is None:
        return (None, None)
    move_dest, move_source, move_length = move_definitions[selected_move_id]
    assert move_dest <= runtime_addr < (move_dest + move_length)
    return (move_source + (runtime_addr - move_dest), selected_move_id)

# TODO: Maybe use this in more places
def r2b_checked(runtime_addr):
    binary_addr, move_id = r2b(runtime_addr)
    if binary_addr is None:
        # TODO: *Really* need a backtrace to make this useful
        assert False # TODO TEMP
        utils.die("Ambiguous runtime address %s" % config.formatter().hex(runtime_addr))
    assert move_id is not None
    return binary_addr, move_id

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

# TODO: Worth thinking about - although it is probably reasonable to insist on each binary address only mapping to one runtime address for classifications (what if we classify the same pair of bytes in the input binary in two different ways, e.g. LDA #1 vs "!byte $a9, $01" or whatever), *for labels* (and other annotation-y things) where there can be "multiple answers", it may be easy, useful and sane to allow a single binary address to map to multiple runtime addresses. I should probably review all calls to b2r() or something like that with this thought in mind.
