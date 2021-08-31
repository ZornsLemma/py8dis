#!/bin/bash
/bin/rm -f OUT && python anfs.py > z.asm && beebasm -v -o z.rom -i z.asm > z.lst && diff /home/steven/src/anfs-disassembly/roms/anfs418.orig OUT
