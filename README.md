# py8dis

## Table of contents
- [Overview](#overview)
- [installation](#installation)
- [Command/function reference](#commandfunction-reference)

## Overview

py8dis is a programmable static tracing 6502 disassembler written in Python; the name was chosen out of a) a lack of imagination b) a vague aspiration that it might be extended without too much difficulty to other 8-bit CPUs in the future.

## Installation

There's no real installation process as such, but you'll probably want to set PYTHONPATH to the directory containing the py8dis code. On Unix-like systems, something like this:

`export PYTHONPATH=/home/you/src/py8dis/py8dis`

will probably do the trick. On Windows (warning: I haven't tried this) you probably want something like:

`set PYTHONPATH=C:\Users\User\src\py8dis\py8dis`

If you see errors like:

`ImportError: No module named ...`

when you try to run a disassembly, PYTHONPATH probably needs adjusting. You can work around this if you just do everything in one directory, i.e. put the Python code you write to control a disassembly in the same directory as the py8dis code (commands.py, trace.py, etc).

## Demonstration/test

There is a trivial "Hello, world!" program in the `examples` subdirectory which will allow you to check py8dis is working. It also serves as a starting point you can copy when creating your own disassemblies.

If your PYTHONPATH is correct, you should be able to do:
``` sh
cd examples
python helloworld.py --acme

``` 

and a disassembly of helloworld.dat will be produced:

```
lffe3 = $ffe3

    * = $2000
l2000
    ldx #$00                                                ; 2000: a2 00
l2002
    lda l200e,x                                             ; 2002: bd 0e 20
    jsr lffe3                                               ; 2005: 20 e3 ff
    inx                                                     ; 2008: e8
    cpx #$0e                                                ; 2009: e0 0e
    bne l2002                                               ; 200b: d0 f5
    rts                                                     ; 200d: 60
l200e
    !text "Hello, world!"                                   ; 200e: 48 65 6c ...
    !byte $0d                                               ; 201b: .

```

This output is suitable for feeding into the acme assembler; you can also produce [beebasm](https://github.com/stardot/beebasm)-style output by specifying "--beebasm" (or just omitting "--acme", as beebasm output is the default).

## Command/function reference

Although the whole point of py8dis is that it's programmable/user-extendable, standard Python functions are provided for common disassembly tasks. If these don't do quite what you want, you can always copy them and tweak the definitions; alternatively, feature requests or submissions of new "standard" functions to add are welcome.

### Initialisation

`load(addr, filename, md5sum=None)`

Load the contents of `filename` into the disassembler's memory at address `addr`. If the optional `md5sum` argument is provided, disassembly will fail if the md5sum of `filename`'s contents doesn't match; this allows you to detect if a disassembly is being used against a different version of a program by accident.

### Labels and constants

`label(addr, name)`

Define a label `name` for address `addr`. Labels will be used automatically when disassembling instructions which reference address `addr`; see `constant` for more details on this. If an instruction references an address which doesn't have a label defined with `label`, a default label (of the form "lxxxx") will be automatically defined.

Labels defined with `label` are always included in the disassembly even if they're never referenced; see `optional_label` if you don't want this behaviour.

`optional_label(addr, name)`

This is like `label`, but the disassembly will omit the label if it isn't referenced. This is intended for use in re-usable library functions like `acorn.add_standard_labels`; if an OS entry point or special memory address is used in the code it's good to have it referred to by a recognisable name, but it's not good to bloat the disassembly with labels for perhaps hundreds of special addresses that aren't used.

`constant(value, name)`

Define a constant `name` with value `value`; you can think of this as being passed straight through to the output as `name = value`.

Constants are never used automatically by py8dis, which is what makes them different from labels:
- If you say `label(42, "meaning_of_life")`, an `lda 42` instruction will be disassembled as `lda meaning_of_life`.
- If you say `constant(42, "meaning_of_life")`, an `lda 42` instruction will be disassembled as `lda 42` (unless there's a label with value 42). ``expr`` allows you to force the use of a constant when disassembling a specific byte of memory.

Simple rule of thumb: use `label` only for addresses, use `constant` for everything else.

`expr(addr, s)`

When disassembling the byte at `addr`, use the string `s` instead of the literal value of that byte. Note that `addr` is the address of the byte itself, not the address of the instruction whose operand it is. (`addr` might not even be part of an instruction; it might be data of some kind.)

**py8dis makes no attempt to verify that `s` actually does evaluate to the literal value of the byte at `addr`.** This might change in the future, but for now, careless use of `expr` can cause py8dis to generate output which will not correctly re-assemble into its input.

`expr_label(addr, s)`

Associate expression `s` with address `addr`; any reference to `addr` as an instruction operand when disassembling will be replaced with `s`. **py8dis does not currently verify that `s` evaluates to `addr`**; see `expr` for more on the possible consequences.

`get_label(addr)`

Returns the label associated with address `addr`; it is an error to call this function if there is no such label.

### Marking data

`byte(addr, n=1)`

Mark `n` bytes at address `addr` as byte data.

`word(addr, n=1)`

Mark 2*`n` bytes at address `addr` as (16-bit little-endian) word data.

`string(addr, n=None)`

If `n` is `None`, mark all the consecutive printable ASCII characters (32-126) at `addr` as a string. If `n` is not `None`, mark the `n` bytes at `addr` as a string. Returns the address of the first byte not marked as a string.

`stringterm(addr, terminator, exclude_terminator=False)`

Search forward from `addr` until `terminator` is found and mark those bytes as a string; `exclude_terminator` controls whether `terminator` is considered part of the string or not. Returns the address of the first byte after the terminator.

`stringcr(addr, exclude_terminator=False)`

`stringz(addr, exclude_terminator=False)`

Syntactic sugar for calling `stringterm` with `terminator` set to 13 (ASCII carriage return) or 0, respectively.

`stringhi(addr)`

Search forward from `addr` until a top-bit-set byte is found and mark the bytes from `addr` up to but not including the top-bit-set byte as a string. Returns the address of the top-bit-set byte.

`stringhiz(addr)`

Search forward from `addr` until a top-bit-set byte or a 0 byte is found and mark the byte from `addr` up to but not including that terminator as a string. Returns the address of the terminator.

### Marking code, and data pointing to code

`entry(addr, label=None)`

Include `addr` in the list of addresses to start tracing instructions at. If specified, `label` will be attached to `addr`; this is just a convenience to save needing to call `label` explicitly.

`wordentry(addr, n=1)`

Interpret the 2*`n` bytes at address `addr` as (16-bit little endian) words which are the addresses of subroutines.

`code_ptr(addr, addr_high=None, offset=0)`

Mark the 16-bit value whose low byte is at `addr` and whose high byte is at `addr_high` (or `addr`+1 if `addr_high` is None) as an address of a subroutine minus `offset`. This is a more general form of `wordentry` which doesn't assume the data in memory is stored as a 16-bit little-endian word and is the exact address of the subroutine, so it can be used to handle things like jump tables split into separate high and low byte tables. `code_ptr(addr)` and `wordentry(addr)` are equivalent.

`rts_code_ptr(addr, addr_high=None)`

Syntactic sugar for `code_ptr(..., offset=1)`. This is intended for use with jump table entries which are used by pushing them onto the stack and executing `RTS`.

### Modifying the tracing process

`trace6502.hook_subroutine(subroutine_addr, name, hook)`

Tell the instruction tracing code that `JSR subroutine_addr` will not necessarily return control to the instruction immediately following the `JSR`. When a `JSR subroutine_addr` instruction is disassembled, `hook(subroutine_addr, address of JSR instruction being disassembled)` will be called and the return value will be used as the implicit next instruction. The hook may return `None` to indicate there is no implicit return address, and it may call `entry` to indicate other return addresses.

`name` is used to label `subroutine_addr`, exactly as if `entry(subroutine_addr, name)` were called.

`stringhi_hook(target, addr)`

`stringcr_hook(target, addr)`

`stringz_hook(target, addr)`

Wrappers around `stringhi`, `stringcr` and `stringz` respectively for use with `hook_subroutine`; these can be used for the common situation where a subroutine is used to print an inline string immediately following the `JSR`.

### Miscellaneous

`comment(addr, text)`

Include `text` as a comment at address `addr` in the disassembly.

`get_u16(addr)`

Returns the unsigned little-endian 16-bit word at address `addr`.

`get_u16_be(addr)`

Returns the unsigned big-endian 16-bit word at address `addr`.
