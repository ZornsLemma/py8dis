; Memory locations

    * = $3000

pydis_start
    !byte 0, 1                                                        ; 3000: 00 01       ..

!pseudopc $3001 {
    !byte   2,   3,   4,   5,   6,   7,   8,   9, $0a, $0b, $0c, $0d  ; 3002: 02 03 04... ... :3001[1]
    !byte $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19  ; 300e: 0e 0f 10... ... :300d[1]
    !byte $1a, $1b, $1c, $1d, $1e, $1f                                ; 301a: 1a 1b 1c... ... :3019[1]
    !text " !", '"', "#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMN"   ; 3020: 20 21 22...  !" :301f[1]
    !text "OPQRSTUVWXYZ[", $5c, "]^_`abcdefghijklmnopqrstuvwxyz{|}"   ; 304f: 4f 50 51... OPQ :304e[1]
    !text "~"                                                         ; 307e: 7e          ~   :307d[1]
    !byte $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a  ; 307f: 7f 80 81... ... :307e[1]
    !byte $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96  ; 308b: 8b 8c 8d... ... :308a[1]
    !byte $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2  ; 3097: 97 98 99... ... :3096[1]
    !byte $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae  ; 30a3: a3 a4 a5... ... :30a2[1]
    !byte $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba  ; 30af: af b0 b1... ... :30ae[1]
    !byte $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6  ; 30bb: bb bc bd... ... :30ba[1]
    !byte $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2  ; 30c7: c7 c8 c9... ... :30c6[1]
    !byte $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de  ; 30d3: d3 d4 d5... ... :30d2[1]
    !byte $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea  ; 30df: df e0 e1... ... :30de[1]
    !byte $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6  ; 30eb: eb ec ed... ... :30ea[1]
    !byte $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff,   0            ; 30f7: f7 f8 f9... ... :30f6[1]
}

pydis_end
