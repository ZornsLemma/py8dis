#!/bin/bash

# Simplistic disassemble-and-reassemble script. This isn't completely generic; it assumes
# that given an input file foo.py, it can safely create files foo.asm, foo.dat and foo.lst
# and that foo.dat should match existing file foo.orig.

set -e

if [ "$#" -lt "1" ]; then
    echo "Syntax: $(basename $0) CONTROLFILE [OPTION]..." > /dev/stderr
    exit 1
fi

OUTBASE="$(basename $1 .py)"
python "$@" > "$OUTBASE.asm" && beebasm -o "$OUTBASE.dat" -i "$OUTBASE.asm" > "$OUTBASE.lst" && diff "$OUTBASE.orig" "$OUTBASE.dat"
