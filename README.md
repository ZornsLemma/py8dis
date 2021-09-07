# py8dis

## Table of contents
TODO

## Overview

TODO

## Command reference

Although the whole point of py8dis is that it's programmable/user-extendable, standard Python functions are provided for common disassembly tasks. If these don't do quite what you want, you can always copy them and tweak the definitions; alternatively, feature requests or submissions of new "standard" functions to add are welcome.

TODO: FORMATTING FOR "CODE"

### load

`load(addr, filename, md5sum=None)`

Load the contents of `filename` into the disassembler's memory at address `addr`. If the optional `md5sum` argument is provided, disassembly will fail if the md5sum of `filename`'s contents doesn't match; this allows you to detect if a disassembly is being used against a different version of a program by accident.

### constant

`constant(value, name)`

TODO: Will this swap order?

Define a constant `name` with value `value`; you can think of this as being passed straight through to the output as `name = value`.

Constants are never used automatically by py8dis, which is what makes them different from labels:
- If you say `label(42, "meaning_of_life")`, an `lda 42` instruction will be disassembled as `lda meaning_of_life`.
- If you say `constant(42, "meaning_of_life")`, an `lda 42` instruction will be disassembled as `lda 42` (unless there's a label with value 42). ``expr`` allows you to force the use of a constant when disassembling a specific byte of memory.

Simple rule of thumb: use `label` only for addresses, use `constant` for everything else.

TODO: DOCUMENT ALL OF THEM
