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

### label

`label(addr, name)`

Define a label `name` for address `addr`. Labels will be used automatically when disassembling instructions which reference address `addr`; see `constant` for more details on this. If an instruction references an address which doesn't have a label defined with `label`, a default label (of the form "lxxxx") will be automatically defined.

Labels defined with `label` are always included in the disassembly even if they're never referenced; see `optional_label` if you don't want this behaviour.

### optional_label

`optional_label(addr, name)`

This is like `label`, but the disassembly will omit the label if it isn't referenced. This is intended for use in re-usable library functions like `acorn.TODOWHATEVEROSAPIFNISCALLED`; if an OS entry point or special memory address is used in the code it's good to have it referred to by a recognisable name, but it's not good to bloat the disassembly with labels for perhaps hundreds of special addresses that aren't used.

TODO: DOCUMENT ALL OF THEM
