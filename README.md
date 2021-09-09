# py8dis

## Table of contents
TODO

## Overview

TODO

## Command reference

Although the whole point of py8dis is that it's programmable/user-extendable, standard Python functions are provided for common disassembly tasks. If these don't do quite what you want, you can always copy them and tweak the definitions; alternatively, feature requests or submissions of new "standard" functions to add are welcome.

TODO: PUT THESE IN ALPHABETICAL ORDER?

TODO: DESCRIBE A CONVENTION FOR INDICATING RETURN VALUE IF ANY - I SUSPECT I WILL WRITE "-> FOO" IF THERE IS AN INTERESTING RETURN VALUE AND OMIT THIS IF THERE ISN'T

`load(addr, filename, md5sum=None)`

Load the contents of `filename` into the disassembler's memory at address `addr`. If the optional `md5sum` argument is provided, disassembly will fail if the md5sum of `filename`'s contents doesn't match; this allows you to detect if a disassembly is being used against a different version of a program by accident.

`constant(value, name)`

TODO: Will this swap order?

Define a constant `name` with value `value`; you can think of this as being passed straight through to the output as `name = value`.

Constants are never used automatically by py8dis, which is what makes them different from labels:
- If you say `label(42, "meaning_of_life")`, an `lda 42` instruction will be disassembled as `lda meaning_of_life`.
- If you say `constant(42, "meaning_of_life")`, an `lda 42` instruction will be disassembled as `lda 42` (unless there's a label with value 42). ``expr`` allows you to force the use of a constant when disassembling a specific byte of memory.

Simple rule of thumb: use `label` only for addresses, use `constant` for everything else.

`label(addr, name)`

Define a label `name` for address `addr`. Labels will be used automatically when disassembling instructions which reference address `addr`; see `constant` for more details on this. If an instruction references an address which doesn't have a label defined with `label`, a default label (of the form "lxxxx") will be automatically defined.

Labels defined with `label` are always included in the disassembly even if they're never referenced; see `optional_label` if you don't want this behaviour.

`optional_label(addr, name)`

This is like `label`, but the disassembly will omit the label if it isn't referenced. This is intended for use in re-usable library functions like `acorn.TODOWHATEVEROSAPIFNISCALLED`; if an OS entry point or special memory address is used in the code it's good to have it referred to by a recognisable name, but it's not good to bloat the disassembly with labels for perhaps hundreds of special addresses that aren't used.

`expr(addr, s)`

When disassembling the byte at `addr`, use the string `s` instead of the literal value of that byte. Note that `addr` is the address of the byte itself, not the address of the instruction whose operand it is. (`addr` might not even be part of an instruction; it might be data of some kind.)

**py8dis makes no attempt to verify that `s` actually does evaluate to the literal value of the byte at `addr`.** This might change in the future, but for now, careless use of expr() can cause py8dis to generate output which will not correctly re-assemble into its input.

`expr_label(addr, s)`

TODO

`comment(addr, text)`

Include `text` as a comment at address `addr` in the disassembly.

`byte(addr, n=1)`

Mark `n` bytes at address `addr` as byte data.

`word(addr, n=1)`

Mark 2*`n` bytes at address `addr` as (16-bit little-endian) word data.

`entry(addr, label=None)`

Include `addr` in the list of addresses to start tracing instructions at. If specified, `label` will be attached to `addr`; this is just a convenience to save needing to call `label()` explicitly.

`wordentry(addr, n=1)`

Interpret the 2*`n` bytes at address `addr` as (16-bit little endian) words which are the addresses of subroutines.

TODO

`stringhi_hook(target, addr)`
`stringcr_hook(target, addr)`
`stringz_hook(target, addr)`

Wrappers around `stringhi`, `stringcr` and `stringz` respectively for use with `hook_subroutine()`.

`code_ptr(addr, addr_high=None, offset=0)`

TODO

`rts_code_ptr(addr, addr_high=None)`

Like `code_ptr`, but with `offset` set to 1. This is intended for use with jump table entries which are pushed onto the stack and control transferred using `RTS`, which jumps to an address one greater than the address on the stack.

TODO: DOCUMENT ALL OF THEM
