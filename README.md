# py8dis

## Table of contents
- [Overview](#overview)
- [Installation](#installation)
- [Command/function reference](#commandfunction-reference)
- [Getting help](#getting-help)
- [Credits and thanks](#credits-and-thanks)

## Overview

py8dis is a programmable static tracing disassembler written in Python. It can currently disassemble 6502, 65C02 and 8080 code, but could be extended without too much difficulty to other 8-bit CPUs in the future.

## Installation

There's no real installation process as such, but you'll probably want to set PYTHONPATH to the directory containing the py8dis code. On Unix-like systems, something like this:

`export PYTHONPATH=/home/you/src/py8dis/py8dis`

will probably do the trick. On Windows (warning: I haven't tried this) you probably want something like:

`set PYTHONPATH=C:\Users\User\src\py8dis\py8dis`

If you see errors like:

`ImportError: No module named ...`

when you try to run a disassembly, PYTHONPATH probably needs adjusting. You can work around this if you just do everything in one directory, i.e. put the Python code you write to control a disassembly in the same directory as the py8dis code (commands.py, trace.py, etc).

## Demonstration / test

There is a trivial "Hello, world!" program in the `examples` subdirectory which will allow you to check py8dis is working. It also serves as a starting point you can copy when creating your own disassemblies.

If your PYTHONPATH is correct, you should be able to do:
``` sh
cd examples
python helloworld.py

```

and a disassembly of helloworld.orig will be produced:

```
lffe3 = &ffe3

    org &2000

.pydis_start
    ldx #0                                                            ; 2000: a2 00       ..
; &2002 referenced 1 time by &200b
.loop_c2002
    lda l200e,x                                                       ; 2002: bd 0e 20    ..
    jsr lffe3                                                         ; 2005: 20 e3 ff     ..
    inx                                                               ; 2008: e8          .
    cpx #&0e                                                          ; 2009: e0 0e       ..
    bne loop_c2002                                                    ; 200b: d0 f5       ..
    rts                                                               ; 200d: 60          `

; &200e referenced 1 time by &2002
.l200e
    equs "Hello, world!"                                              ; 200e: 48 65 6c... Hel
    equb &0d                                                          ; 201b: 0d          .
.pydis_end

; Label references by decreasing frequency:
;     loop_c2002:   1
;     l200e:        1
;     lffe3:        1

; Automatically generated labels:
;     l200e
;     lffe3
;     loop_c2002

save pydis_start, pydis_end
```

This output is suitable for feeding into the beebasm assembler. You can switch to produce output suitable for other assemblers:

| assembler                                                 | CPUs supported | command line                    |
| --------------------------------------------------------  | -------------- | ------------------------------- |
| [acme](https://sourceforge.net/projects/acme-crossass/)   | 6502 / 65C02   | --acme                          |
| [beebasm](https://github.com/stardot/beebasm)             | 6502 / 65C02   | --beebasm (this is the default) |
| [xa](https://www.floodgap.com/retrotech/xa/)              | 6502 / 65C02   | --xa                            |
| [z88dk-z80asm](https://z88dk.org)                         | 8080           | --z88dk-8080                    |

### Edit me

The output of the hello world example can be improved. Load helloworld.py and add:

    import acorn
    acorn.bbc()

This defines BBC Micro OS specific constants, which resolves &ffe3 into a proper label name. Add:

    label(0x2002, "print_message_loop")
    label(0x200e, "message")

to give proper names for the remaining labels.

## Configuration reference

To change the configuration, add `import config` and call the following as needed:

| Functions                                | Default | Notes                                                            |
| ---------------------------------------- | :-----: | ---------------------------------------------------------------- |
| `config.set_lower_case(b)`               | True    | Set output to be upper or lower case.                            |
| `config.set_hex_dump(b)`                 | True    | Show or hide hex dump output.                                    |
| `config.set_label_references(b)`         | True    | Show or hide output of label references.                         |
| `config.set_inline_comment_column(n)`    | 70      | Specify the character column where inline comments start.        |
| `config.set_indent_string(s)`            | " "*4   | Set the string (usually spaces) for one indent level.            |
| `config.set_indent_loops(b)`             | False   | Set whether looping code is indented or not.                     |
| `config.set_blank_line_at_block_end(b)`  | True    | Add a blank line at the end of a block of data.                  |
| `config.set_loop_limit(i)`               | 32      | Set the maximum number of bytes that counts as a loop.           |
| `config.set_show_cpu_state(b)`           | False   | Show or hide the output for the CPU state.                       |
| `config.set_show_autogenerated_labels(b)`| True    | Show or hide a list of the autogenerated labels.                 |
| `config.set_show_char_literals(b)`       | True    | Show or hide character literals comments.                        |
| `config.set_show_all_labels(b)`          | False   | Show or hide a list of all labels used (for debugging py8dis).   |
| `config.set_hex_dump_max_bytes(i)`       | 3       | Set the number of hex bytes output on a single line.             |
| `config.set_show_cycles(b)`              | False   | Show the number of cycles taken by each instruction.             |

## Command reference

Although the whole point of py8dis is that it's programmable/user-extendable, standard Python functions are provided for common disassembly tasks. If these don't do quite what you want, you can always copy them and tweak the definitions; alternatively, feature requests or submissions of new "standard" functions to add are welcome.

### Initialisation

:pencil:`load(addr, filename, md5sum=None)`

Load the contents of `filename` into the disassembler's memory at address `addr`. If the optional `md5sum` argument is provided, disassembly will fail if the md5sum of `filename`'s contents doesn't match; this allows you to detect if a disassembly is being used against a different version of a program by accident.

### Labels

:pencil:`label(addr, name)`

Provide a label `name` for memory address `addr`. The `name` is used automatically when disassembling an instruction which references the address. If no label name is available when disassembling, one will be automatically created (of the form `l1900`).

Labels defined with `label()` are always included in the disassembly even if they're never referenced; see `optional_label` if you don't want this behaviour.

:pencil:`optional_label(addr, name)`

This is like `label`, but the disassembly will omit the label if it isn't referenced. This is intended for use in re-usable library functions like `acorn.add_standard_labels`. If an OS entry point or special memory address is used in the code it's good to have it referred to by a recognisable name, but it's not good to bloat the disassembly with labels for perhaps hundreds of special addresses that aren't used.

:pencil:`get_label(addr)`

Returns the label associated with address `addr`; it is an error to call this function if there is no such label.

:pencil:`addr(label_name)`

Returns the runtime address of the given `label_name`.

:pencil:`set_label_maker_hook(hook)`

Sets a user supplied 'hook' function for making label names. Given an address, the hook function chooses to either return a unique label name or just return the suggested name.

Why is this useful? Example 1: Labels at addresses that just 'rts' to early out of a subroutine can be labelled uniformly as `return1`, `return2` etc. Example 2: When the same memory locations are reused for different purposes, we can use alternative label names for different areas of the binary.

### Constants

:pencil:`constant(value, name)`

Define a constant `name` with value `value`; think of this as being passed straight through to the output as `name = value`.

To illustrate the difference between labels and constants:
- If you say `label(42, "meaning_of_life")`, an `lda 42` instruction will be disassembled as `lda meaning_of_life`.
- If you say `constant(42, "meaning_of_life")`, an `lda 42` instruction will be disassembled as `lda 42`. Use ``expr()`` (see below) to use a constant. Example: You could use `expr()` to change `lda #42` into `lda #meaning_of_life`.

Simple rule of thumb: use `label` only for addresses, use `constant()` for everything else.

:pencil:`substitute_constants(instruction, reg, constants_dict, define_all_constants=None)`

The idea of this command is to replace load immediate numbers with constants. 

For example: `substitute_constants("sta sprite_number", 'a', sprite_dict)`

Would search for any `sta sprite_number` and convert e.g.:

    lda #$15
    sta sprite_number

into:

    lda #SpriteId_Peanut
    sta sprite_number

When `instruction` is encountered, look for a load immediate instruction for register `reg` somewhere beforehand, and use the `constants_dict` dictionary to substitute a constant or expression (see below for an explanation of expressions) in place of the immediate value.

`define_add_constants` has three possible values:

    None    - define no constants (the default)
    False   - define only the constants used
    True    - define all constants

### Expressions

An expression is a string containing labels, constants and/or other arithmetic that the assembler can interpret. When the given address is reached the string expression is output instead of a regular literal value.

py8dis doesn't directly check the expression provided evaluates to the expected value found in the binary file. However, the assembly code output contains assertions that will fail if the values do not match. i.e. Careless use of `expr()` can cause py8dis to generate output which will not correctly re-assemble into its input.

:pencil:`expr(addr, s)`

When disassembling the byte at `addr`, use the string `s` instead of the literal value of that byte. Note that `addr` is the address of the byte itself, not the address of the instruction whose operand it is. `addr` might not even be part of an instruction; it might be data of some kind.

Example: `lda #$30` could be replaced with `lda #>screen_address`.

Alternatively, if s is a dictionary, then use it to substitute a constant or expression in place of the byte at `addr`.

:pencil:`expr_label(addr, s)`

Associate expression `s` with address `addr`. Any reference to `addr` in an instruction operand when disassembling will be replaced with `s`.

Example: `lda $1ee4,x` could be replaced with `lda current_level_data+1,x`

### Marking data

#### Bytes and Words

:pencil:`byte(addr, n=1, cols=None)`

Mark `n` bytes at address `addr` as byte data. If `cols` is not None, then format the output in a fixed number of columns.

:pencil:`word(addr, n=1, cols=None)`

Mark 2*`n` bytes at address `addr` as (16-bit little-endian) word data. If `cols` is not None, then format the output in a fixed number of columns.

#### Strings
Strings have different ways of terminating, so we have many functions available to help define the extent of a string. Each function marks all the bytes as a string and returns the next available address after the string.

| Function                                                       | Description                                                                        |
| :------------------------------------------------------------- | :--------------------------------------------------------------------------------- |
| :pencil:`string(addr,n=None)`                                  | The string terminates at a non-printable ASCII character, or the given length `n`. |
| :pencil:`stringterm(addr,terminator,exclude_terminator=False)` | The string terminates with a `terminator` value, and can either include or exclude the terminator from the string. |
| :pencil:`stringcr(addr,exclude_terminator=False)`              | The string terminates with ASCII code 13. |
| :pencil:`stringz(addr,exclude_terminator=False)`               | The string terminates with ASCII code zero. |
| :pencil:`stringhi(addr,include_terminator_fn=None)`            | The string terminates with a top-bit-set character, optionally including the bottom 7 bits of the terminator as the final character. A user supplied function can determine whether the terminator is included or not, based on the final character. |
| :pencil:`stringhiz(addr,include_terminator_fn=None)`           | As stringhi(), but also terminates at ASCII code zero. |
| :pencil:`stringn(addr)`                                        | The first byte holds the length of the string, followed by the string itself. |

### Marking code (and data that points to code)

:pencil:`entry(addr, label=None)`

Specifies that there is code at the given address `addr`. When `go()` is called, code is automatically traced starting from each entry point walking through all possible branches and subroutines. The bytes are marked as code, and therefore get output as instructions. If specified, `label` will be attached to `addr`; this is just a convenience to save needing to call `label()` explicitly.

:pencil:`wordentry(addr, n=1)`

Marks a sequence of `n` words as being (16-bit little endian) addresses of subroutines. This categorises the data as being words and also adds the addresses as entry points for tracing code.

:pencil:`code_ptr(addr, addr_high=None, offset=0)`

Marks two bytes of data as being the address of a subroutine. The low and high bytes do not need to be stored adjacently since their addresses can be specified separately as `addr` and `addr_high`. If `addr_high` is None, then `addr_high` is assumed to be the byte after `addr`. This function can be used to handle jump tables where the low and high bytes are stored in separate tables.

An optional offset can be applied to the data to get the subroutine address. The subroutine address is added as an entry point for code tracing.

Note that `code_ptr(addr)` and `wordentry(addr)` are equivalent.

:pencil:`rts_code_ptr(addr, addr_high=None)`

Syntactic sugar for `code_ptr(..., offset=1)`. This is intended for use with jump table entries which are used by pushing them onto the stack and executing `RTS`.

### Modifying the tracing process

See `entry()` to find out more about tracing.

:pencil:`nonentry(addr)`

Marks an address `addr` as 'not to be traced as code'. If the tracing of code reaches the given address then tracing stops. For example, when a conditional branch is in practice always taken at runtime, any following code is never executed. This command is only required occasionally.

:pencil:`hook_subroutine(subroutine_addr, name, hook)`

Tells the instruction tracing code that a call to a subroutine (using e.g. `jsr subroutine_addr`) will not necessarily return control to the instruction immediately following the `jsr`. The common use case is a subroutine that 'prints the following string', which consists of a call to a subroutine followed by a string definition. Execution only continues *after* the string definition.

When a `jsr subroutine_addr` instruction is disassembled, `hook(subroutine_addr, address of jsr instruction)` is called and the return value is used as the next instruction address to trace. The hook can return `None` to indicate tracing shouldn't continue, or it can call `entry` to indicate additional addresses to trace.

`name` is used to label `subroutine_addr`, exactly as if `entry(subroutine_addr, name)` were called.

:pencil:`stringhi_hook(target, addr)`

:pencil:`stringhiz_hook(target, addr)`

:pencil:`stringcr_hook(target, addr)`

:pencil:`stringz_hook(target, addr)`

:pencil:`stringn_hook(target, addr)`

Wrappers around `stringhi()`, `stringhiz()` etc for use with `hook_subroutine()`. These are designed for the 'print the following string' case described above.

### Number Formats

By default numerical values are formatted as decimals for single digits or hex otherwise (known as 'uint' formatting). The following functions override this format for data in the specified block.

| Function                                  | Description                                                                                |
| :---------------------------------------- | :----------------------------------------------------------------------------------------- |
| :pencil:`char(addr,n=1)`                  | Specifies quoted character (e.g. 'a') formatting for data in the given block               |
| :pencil:`binary(addr,n=1)`                | Specifies binary (e.g. %010110111) formatting for data in the given block                  |
| :pencil:`picture_binary(addr,n=1)`        | Specifies picture binary (e.g. %#.####.#) formatting for data in the given block           |
| :pencil:`decimal(addr,n=1)`               | Specifies decimal formatting for data in the given block                                   |
| :pencil:`hexadecimal(addr,n=1)`           | Specifies hex formatting for data in the given block                                       |
| :pencil:`uint(addr,n=1)`                  | Specifies uint formatting for data in the given block                                      |
| :pencil:`padded_uint(addr,n=1)`           | Specifies padded uint formatting for data in the given block                               |
| :pencil:`set_formatter(addr,n,formatter)` | The `formatter` function converts a data value into a string. Used by the above functions. |

### Comments and blank lines

:pencil:`comment(addr, text, inline=False)`

Insert `text` as a comment at address `addr` in the disassembly on it's own separate line. If `inline` is true, then add it to the end of the current line instead. The comment is automatically word wrapped.

:pencil:`formatted_comment(addr, text, inline=False)`

As `comment` but the text is assumed to be pre-formatted and is not word wrapped.

:pencil:`blank(addr, priority=None)`

Add a new blank line to the output at the given address. The `priority` helps order multiple items at the same address.

:pencil:`annotate(addr, s, priority=None)`

Add `s` as a raw string to the output at the given address. `s` will need to be understood by the assembler. The `priority` helps order multiple items at the same address. Rarely useful in practice since it's something of a last resort to output what you want and is likely assembler specific. Used by `blank()`.

### Memory access

:pencil:`get_u8_binary(addr)`

Returns the unsigned 8-bit byte at address `addr`.

:pencil:`get_u16_binary(addr)`

Returns the unsigned little-endian 16-bit word at address `addr`.

:pencil:`get_u16_be_binary(addr)`

Returns the unsigned big-endian 16-bit word at address `addr`.

### Relocating memory
:pencil:`move(dest, src, length)`

Indicates that a block of memory is copied at runtime.

Often a block of memory is moved (relocated) after loading the binary file but before being used at runtime. For example, BBC Micro games that load at &1900 often relocate bits of code or data, or maybe the whole file down to &e00 before use.

This function specifies such a move, indicating that the runtime address is different from the address at load time for a block of memory. This allows labels within the block to be properly defined by their runtime addresses.

Any `move()` calls must be done before accessing the relocated block.

As a simple rule, put any `move()` commands just after `load()`.


### Output the results

:pencil:`go()`

Classifies the binary into code and data, calculates all label names and emits the final assembly.


## Getting help

If you have problems or suggestions for improvement, you can raise an issue or submit a pull request in github. Alternatively you may like to post in the [py8dis thread](https://stardot.org.uk/forums/viewtopic.php?f=55&t=23335) on the [stardot](https://stardot.org.uk) forums.

## Credits and thanks

* py8dis is heavily influenced by Phill Harvey-Smith's [BeebDis](https://github.com/prime6809/BeebDis); I've tried to model py8dis commands on BeebDis where possible.
