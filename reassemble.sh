#!/bin/bash

# Simplistic disassemble-and-reassemble script. This isn't completely generic; it assumes
# that given an input file foo.py, it can safely create files foo.asm, foo.dat and foo.lst
# and that foo.dat should match existing file foo.orig.

set -e

if [ "$#" -lt "1" ]; then
    echo "Syntax: $(basename $0) CONTROLFILE [OPTION]..." > /dev/stderr
    exit 1
fi

# This uses acme rather than beebasm simply because it's easier to know what
# the output of the assembly is called with acme. With beebasm it can be changed
# by a set_output_filename() command and this isn't overridden by specifying a
# -o option.
OUTBASE="$(basename $1 .py)"
python "$@" --acme > "$OUTBASE.asm" && acme -r "$OUTBASE.lst" -o "$OUTBASE.dat" "$OUTBASE.asm" && diff "$OUTBASE.orig" "$OUTBASE.dat"
