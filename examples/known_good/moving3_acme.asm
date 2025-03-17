; Memory locations

    * = $3000

pydis_start
    !byte 0                                                           ; 3000: 00          .

; Move 1: $3001 to $2f01 for length 256
!pseudopc $2f01 {
    !byte   1,   2,   3,   4,   5,   6,   7,   8,   9, $0a, $0b, $0c  ; 3001: 01 02 03... ... :2f01[1]
    !byte $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18  ; 300d: 0d 0e 0f... ... :2f0d[1]
    !byte $19, $1a, $1b, $1c, $1d, $1e, $1f                           ; 3019: 19 1a 1b... ... :2f19[1]
    !text " !", '"', "#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMN"   ; 3020: 20 21 22...  !" :2f20[1]
    !text "OPQRSTUVWXYZ[", $5c, "]^_`abcdefghijklmnopqrstuvwxyz{|}"   ; 304f: 4f 50 51... OPQ :2f4f[1]
    !text "~"                                                         ; 307e: 7e          ~   :2f7e[1]
    !byte $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a  ; 307f: 7f 80 81... ... :2f7f[1]
    !byte $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96  ; 308b: 8b 8c 8d... ... :2f8b[1]
    !byte $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2  ; 3097: 97 98 99... ... :2f97[1]
    !byte $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae  ; 30a3: a3 a4 a5... ... :2fa3[1]
    !byte $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba  ; 30af: af b0 b1... ... :2faf[1]
    !byte $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6  ; 30bb: bb bc bd... ... :2fbb[1]
    !byte $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2  ; 30c7: c7 c8 c9... ... :2fc7[1]
    !byte $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de  ; 30d3: d3 d4 d5... ... :2fd3[1]
    !byte $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea  ; 30df: df e0 e1... ... :2fdf[1]
    !byte $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6  ; 30eb: eb ec ed... ... :2feb[1]
    !byte $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff                 ; 30f7: f7 f8 f9... ... :2ff7[1]
    !byte 0                                                           ; 3100: 00          .   :3000[1]
}

pydis_end


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

