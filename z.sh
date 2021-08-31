#!/bin/bash
/bin/rm -f OUT && python anfs.py > z.asm && beebasm -o z.rom -i z.asm && diff /home/steven/src/anfs-disassembly/roms/anfs418.orig OUT
