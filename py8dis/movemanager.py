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

import contextlib

active_move_ids = []

move_definitions = [(0, 0, 0x10000)]

def add_move(dest, source, length):
    # TODO: This probably needs validation and to do all sorts of stuff
    move_definitions.append((dest, source, length))
    return len(move_definitions) - 1

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

if __name__ == "__main__":
    id1 = add_move(0x70, 0x1900, 10)
    id2 = add_move(0x70, 0x2000, 8)
    assert active_move_ids == []
    with moved(id2):
        assert active_move_ids == [id2]
        with moved(id1):
            assert active_move_ids == [id2, id1]
        assert active_move_ids == [id2]
    assert active_move_ids == []
