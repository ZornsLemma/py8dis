; Memory locations

    org &3000

.pydis_start
    equb 0, 1                                                         ; 3000: 00 01       ..

; Move 1: &3002 to &3001 for length 255
    ; 1. We want to move to a lower memory address to assemble the next block of code
    ; at it's runtime address. First we temporarily copy the existing code/data that
    ; overlaps out of the way while we do so.
    ; (Note the parameter order: 'copyblock <start>,<end>,<dest>')
    copyblock &3001, &3002, &fffe

    ; 2. Clear the existing code area so that we are allowed to assemble there again.
    clear &3001, &3002

    ; 3. Assemble the new block at it's runtime address.
    org &3001
    equb   2,   3,   4,   5,   6,   7,   8,   9, &0a, &0b, &0c, &0d   ; 3002: 02 03 04... ... :3001[1]
    equb &0e, &0f, &10, &11, &12, &13, &14, &15, &16, &17, &18, &19   ; 300e: 0e 0f 10... ... :300d[1]
    equb &1a, &1b, &1c, &1d, &1e, &1f                                 ; 301a: 1a 1b 1c... ... :3019[1]
    equs " !", '"', "#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNO"   ; 3020: 20 21 22...  !" :301f[1]
    equs "PQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~"            ; 3050: 50 51 52... PQR :304f[1]
    equb &7f, &80, &81, &82, &83, &84, &85, &86, &87, &88, &89, &8a   ; 307f: 7f 80 81... ... :307e[1]
    equb &8b, &8c, &8d, &8e, &8f, &90, &91, &92, &93, &94, &95, &96   ; 308b: 8b 8c 8d... ... :308a[1]
    equb &97, &98, &99, &9a, &9b, &9c, &9d, &9e, &9f, &a0, &a1, &a2   ; 3097: 97 98 99... ... :3096[1]
    equb &a3, &a4, &a5, &a6, &a7, &a8, &a9, &aa, &ab, &ac, &ad, &ae   ; 30a3: a3 a4 a5... ... :30a2[1]
    equb &af, &b0, &b1, &b2, &b3, &b4, &b5, &b6, &b7, &b8, &b9, &ba   ; 30af: af b0 b1... ... :30ae[1]
    equb &bb, &bc, &bd, &be, &bf, &c0, &c1, &c2, &c3, &c4, &c5, &c6   ; 30bb: bb bc bd... ... :30ba[1]
    equb &c7, &c8, &c9, &ca, &cb, &cc, &cd, &ce, &cf, &d0, &d1, &d2   ; 30c7: c7 c8 c9... ... :30c6[1]
    equb &d3, &d4, &d5, &d6, &d7, &d8, &d9, &da, &db, &dc, &dd, &de   ; 30d3: d3 d4 d5... ... :30d2[1]
    equb &df, &e0, &e1, &e2, &e3, &e4, &e5, &e6, &e7, &e8, &e9, &ea   ; 30df: df e0 e1... ... :30de[1]
    equb &eb, &ec, &ed, &ee, &ef, &f0, &f1, &f2, &f3, &f4, &f5, &f6   ; 30eb: eb ec ed... ... :30ea[1]
    equb &f7, &f8, &f9, &fa, &fb, &fc, &fd, &fe, &ff,   0             ; 30f7: f7 f8 f9... ... :30f6[1]

    ; 4. Copy the newly assembled block of code back to it's proper place in the binary
    ; file.
    ; (Note the parameter order: 'copyblock <start>,<end>,<dest>')
    copyblock &3001, *, &3002

    ; Clear the area of memory we just temporarily used to assemble the new block,
    ; allowing us to assemble there again if needed
    clear &3001, &3002

    ; 5. Copy the previous existing code back to it's proper place in the binary file.
    ; (Note the parameter order: 'copyblock <start>,<end>,<dest>')
    copyblock &fffe, &ffff, &3001

    ; 6. Clear the temporary code area so we can assemble there in the future if
    ; needed.
    clear &fffe, &ffff

    ; 7. Set the program counter to the next position in the binary file.
    org &3002 + (* - &3001)

.pydis_end


save pydis_start, pydis_end

; Stats:
;     Total size (Code + Data) = 257 bytes
;     Code                     = 0 bytes (0%)
;     Data                     = 257 bytes (100%)
;
;     Number of instructions   = 0
;     Number of data bytes     = 162 bytes
;     Number of data words     = 0 bytes
;     Number of string bytes   = 95 bytes
;     Number of strings        = 1

