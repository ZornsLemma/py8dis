// Constants
osbyte_check_eof                       = 127
osbyte_enter_language                  = 142
osbyte_inkey                           = 129
osbyte_read_adc_or_get_buffer_status   = 128
osbyte_read_high_order_address         = 130
osbyte_read_himem                      = 132
osbyte_read_himem_for_mode             = 133
osbyte_read_text_cursor_pos            = 134
osbyte_read_tube_presence              = 234
osbyte_read_write_basic_rom_bank       = 187
osfile_load                            = 255
osfile_save                            = 0
osword_read_clock                      = 1
osword_read_cmos_clock                 = 14
osword_read_io_memory                  = 5
osword_read_pixel                      = 9

// Memory locations
l0000       = $0000
l0001       = $0001
l0002       = $0002
l0003       = $0003
l0004       = $0004
l0005       = $0005
l0006       = $0006
l0007       = $0007
l0008       = $0008
l0009       = $0009
l000a       = $000a
l000b       = $000b
l000c       = $000c
l000d       = $000d
l000e       = $000e
l000f       = $000f
l0010       = $0010
l0011       = $0011
l0012       = $0012
l0013       = $0013
l0014       = $0014
l0015       = $0015
l0016       = $0016
l0017       = $0017
l0018       = $0018
l0019       = $0019
l001a       = $001a
l001b       = $001b
l001c       = $001c
l001d       = $001d
l001e       = $001e
l001f       = $001f
l0020       = $0020
l0021       = $0021
l0022       = $0022
l0023       = $0023
l0024       = $0024
l0025       = $0025
l0026       = $0026
l0027       = $0027
l0028       = $0028
l0029       = $0029
l002a       = $002a
l002b       = $002b
l002c       = $002c
l002d       = $002d
l002e       = $002e
l002f       = $002f
l0030       = $0030
l0031       = $0031
l0032       = $0032
l0033       = $0033
l0034       = $0034
l0035       = $0035
l0036       = $0036
l0037       = $0037
l0038       = $0038
l0039       = $0039
l003a       = $003a
l003b       = $003b
l003c       = $003c
l003d       = $003d
l003e       = $003e
l003f       = $003f
l0040       = $0040
l0041       = $0041
l0042       = $0042
l0043       = $0043
l0044       = $0044
l0045       = $0045
l0046       = $0046
l0047       = $0047
l0048       = $0048
l0049       = $0049
l004a       = $004a
l004b       = $004b
l004c       = $004c
l004d       = $004d
l004e       = $004e
l0061       = $0061
l0064       = $0064
l0066       = $0066
l00c1       = $00c1
l00e1       = $00e1
l00e6       = $00e6
os_text_ptr = $00f2
romsel_copy = $00f4
l00fd       = $00fd
l00fe       = $00fe
l00ff       = $00ff
l0100       = $0100
l0106       = $0106
l01ff       = $01ff
brkv        = $0202
wrchv       = $020e
l0400       = $0400
l0401       = $0401
l0402       = $0402
l0403       = $0403
l0404       = $0404
l040c       = $040c
l043c       = $043c
l043d       = $043d
l0440       = $0440
l0441       = $0441
l0460       = $0460
l0464       = $0464
l0469       = $0469
l046c       = $046c
l047f       = $047f
l04ff       = $04ff
l0500       = $0500
l0513       = $0513
l0514       = $0514
l0519       = $0519
l051a       = $051a
l051b       = $051b
l051c       = $051c
l051d       = $051d
l051e       = $051e
l051f       = $051f
l0521       = $0521
l0522       = $0522
l0523       = $0523
l0524       = $0524
l0526       = $0526
l0527       = $0527
l0528       = $0528
l0529       = $0529
l052a       = $052a
l05cb       = $05cb
l05cc       = $05cc
l05e5       = $05e5
l05e6       = $05e6
l05ff       = $05ff
l0600       = $0600
l0700       = $0700
l07ef       = $07ef
l0bb1       = $0bb1
l0e4e       = $0e4e
l4e4e       = $4e4e
l5252       = $5252
l6142       = $6142
l7461       = $7461
l7f0e       = $7f0e
l7f13       = $7f13
le09c       = $e09c
osfind      = $ffce
osbput      = $ffd4
osbget      = $ffd7
osargs      = $ffda
osfile      = $ffdd
osrdch      = $ffe0
osasci      = $ffe3
osnewl      = $ffe7
oswrch      = $ffee
osword      = $fff1
osbyte      = $fff4
oscli       = $fff7

    * = $8000

// Sideways ROM header
rom_header
language_entry
pydis_start
    jmp language_handler                                              // 8000: 4c e7 80    L..

service_entry
    jmp service_handler                                               // 8003: 4c 2c 80    L,.

rom_type
    .byt $e2                                                          // 8006: e2          .
copyright_offset
    .byt copyright - rom_header                                       // 8007: 13          .
binary_version
    .byt 7                                                            // 8008: 07          .
title
    .asc "BASIC"                                                      // 8009: 42 41 53... BAS
version
    .byt 0                                                            // 800e: 00          .
    .asc "4r32"                                                       // 800f: 34 72 33... 4r3
copyright
    .byt 0                                                            // 8013: 00          .
    .asc "(C)1988 Acorn", $0a, $0d, 0                                 // 8014: 28 43 29... (C)
    .byt   0, $b8, $28, $80,   0, $c0, $82,   0                       // 8024: 00 b8 28... ..(

// $802c referenced 1 time by $8003
service_handler
    pha                                                               // 802c: 48          H
    tax                                                               // 802d: aa          .
    tya                                                               // 802e: 98          .
    pha                                                               // 802f: 48          H
    cpx #9                                                            // 8030: e0 09       ..
    beq c804c                                                         // 8032: f0 18       ..
    cpx #4                                                            // 8034: e0 04       ..
    beq c8070                                                         // 8036: f0 38       .8
    cpx #2                                                            // 8038: e0 02       ..
    beq c8040                                                         // 803a: f0 04       ..
    cpx #$27 // '''                                                   // 803c: e0 27       .'
    bne c806a                                                         // 803e: d0 2a       .*
// $8040 referenced 1 time by $803a
c8040
    lda #osbyte_read_write_basic_rom_bank                             // 8040: a9 bb       ..
    ldx romsel_copy                                                   // 8042: a6 f4       ..
    ldy #0                                                            // 8044: a0 00       ..
    jsr osbyte                                                        // 8046: 20 f4 ff     ..            // Write BASIC ROM number
    jmp c806a                                                         // 8049: 4c 6a 80    Lj.

// $804c referenced 1 time by $8032
c804c
    lda (os_text_ptr),y                                               // 804c: b1 f2       ..
    cmp #$0d                                                          // 804e: c9 0d       ..
    bne c806a                                                         // 8050: d0 18       ..
    jsr osnewl                                                        // 8052: 20 e7 ff     ..            // Write newline (character 10)
    ldx #$f6                                                          // 8055: a2 f6       ..
// $8057 referenced 1 time by $8062
loop_c8057
    lda l7f13,x                                                       // 8057: bd 13 7f    ...
    bne c805e                                                         // 805a: d0 02       ..
    lda #$20 // ' '                                                   // 805c: a9 20       .
// $805e referenced 1 time by $805a
c805e
    jsr osasci                                                        // 805e: 20 e3 ff     ..            // Write character 32
    inx                                                               // 8061: e8          .
    bne loop_c8057                                                    // 8062: d0 f3       ..
    jsr osnewl                                                        // 8064: 20 e7 ff     ..            // Write newline (character 10)
// $8067 referenced 2 times by $809c, $80a6
c8067
    jsr sub_c80d8                                                     // 8067: 20 d8 80     ..
// $806a referenced 3 times by $803e, $8049, $8050
c806a
    pla                                                               // 806a: 68          h
    tay                                                               // 806b: a8          .
    ldx romsel_copy                                                   // 806c: a6 f4       ..
    pla                                                               // 806e: 68          h
    rts                                                               // 806f: 60          `

// $8070 referenced 1 time by $8036
c8070
    lda (os_text_ptr),y                                               // 8070: b1 f2       ..
    and #$df                                                          // 8072: 29 df       ).
    cmp #$48 // 'H'                                                   // 8074: c9 48       .H
    bne c808f                                                         // 8076: d0 17       ..
    iny                                                               // 8078: c8          .
    lda #$40 // '@'                                                   // 8079: a9 40       .@
    tsb romsel_copy                                                   // 807b: 04 f4       ..
    lda (os_text_ptr),y                                               // 807d: b1 f2       ..
    iny                                                               // 807f: c8          .
    cmp #$2e // '.'                                                   // 8080: c9 2e       ..
    beq c80a8                                                         // 8082: f0 24       .$
    and #$df                                                          // 8084: 29 df       ).
    cmp #$49 // 'I'                                                   // 8086: c9 49       .I
    beq c808f                                                         // 8088: f0 05       ..
    jsr sub_c80d8                                                     // 808a: 20 d8 80     ..
    dey                                                               // 808d: 88          .
    dey                                                               // 808e: 88          .
// $808f referenced 2 times by $8076, $8088
c808f
    ldx #$fb                                                          // 808f: a2 fb       ..
// $8091 referenced 1 time by $80a0
loop_c8091
    lda (os_text_ptr),y                                               // 8091: b1 f2       ..
    cmp #$2e // '.'                                                   // 8093: c9 2e       ..
    beq c80a8                                                         // 8095: f0 11       ..
    and #$df                                                          // 8097: 29 df       ).
    cmp l7f0e,x                                                       // 8099: dd 0e 7f    ...
    bne c8067                                                         // 809c: d0 c9       ..
    iny                                                               // 809e: c8          .
    inx                                                               // 809f: e8          .
    bne loop_c8091                                                    // 80a0: d0 ef       ..
    lda (os_text_ptr),y                                               // 80a2: b1 f2       ..
    cmp #$21 // '!'                                                   // 80a4: c9 21       .!
    bcs c8067                                                         // 80a6: b0 bf       ..
// $80a8 referenced 2 times by $8082, $8095
c80a8
    bit romsel_copy                                                   // 80a8: 24 f4       $.
    bvc c80cc                                                         // 80aa: 50 20       P
    jsr sub_cbf66                                                     // 80ac: 20 66 bf     f.
    bne c80cc                                                         // 80af: d0 1b       ..
    jsr sub_c80d8                                                     // 80b1: 20 d8 80     ..
    ldx #$0a                                                          // 80b4: a2 0a       ..
// $80b6 referenced 1 time by $80bd
copy_to_stack_loop
    lda l80c2,x                                                       // 80b6: bd c2 80    ...
    sta l0100,x                                                       // 80b9: 9d 00 01    ...
    dex                                                               // 80bc: ca          .
    bpl copy_to_stack_loop                                            // 80bd: 10 f7       ..
    jmp l0100                                                         // 80bf: 4c 00 01    L..

// $80c2 referenced 1 time by $80b6
l80c2
    .byt 0, 0                                                         // 80c2: 00 00       ..
    .asc "No TUBE"                                                    // 80c4: 4e 6f 20... No
    .byt 0                                                            // 80cb: 00          .

// $80cc referenced 2 times by $80aa, $80af
c80cc
    lda romsel_copy                                                   // 80cc: a5 f4       ..
    eor #$40 // '@'                                                   // 80ce: 49 40       I@
    tax                                                               // 80d0: aa          .              // X=ROM number
    lda #osbyte_enter_language                                        // 80d1: a9 8e       ..
    ldy #0                                                            // 80d3: a0 00       ..
    jmp osbyte                                                        // 80d5: 4c f4 ff    L..            // Enter language ROM X

// $80d8 referenced 3 times by $8067, $808a, $80b1
sub_c80d8
    lda #$40 // '@'                                                   // 80d8: a9 40       .@
    trb romsel_copy                                                   // 80da: 14 f4       ..
    rts                                                               // 80dc: 60          `

// $80dd referenced 1 time by $a0fd
l80dd
    .byt   0,   0,   0,   3, $27                                      // 80dd: 00 00 00... ...
// $80e2 referenced 1 time by $a0f7
l80e2
    .byt   1, $0a, $64, $e8, $10                                      // 80e2: 01 0a 64... ..d

// $80e7 referenced 1 time by $8000
language_handler
    and l0011                                                         // 80e7: 25 11       %.
    ora l000d                                                         // 80e9: 05 0d       ..
    ora l000e                                                         // 80eb: 05 0e       ..
    ora l000f                                                         // 80ed: 05 0f       ..
    ora l0010                                                         // 80ef: 05 10       ..
    bne c80ff                                                         // 80f1: d0 0c       ..
    lda #$41 // 'A'                                                   // 80f3: a9 41       .A
    sta l000d                                                         // 80f5: 85 0d       ..
    eor #$13                                                          // 80f7: 49 13       I.
    sta l000e                                                         // 80f9: 85 0e       ..
    eor #5                                                            // 80fb: 49 05       I.
    sta l000f                                                         // 80fd: 85 0f       ..
// $80ff referenced 1 time by $80f1
c80ff
    lda #osbyte_read_himem                                            // 80ff: a9 84       ..
    jsr osbyte                                                        // 8101: 20 f4 ff     ..            // Read top of user memory (HIMEM)
    stx l0006                                                         // 8104: 86 06       ..             // X and Y contain the address of HIMEM (low, high)
    sty l0007                                                         // 8106: 84 07       ..
    dec                                                               // 8108: 3a          :
    jsr osbyte                                                        // 8109: 20 f4 ff     ..
    sty l0018                                                         // 810c: 84 18       ..
    ldx #$13                                                          // 810e: a2 13       ..
    stx l00fd                                                         // 8110: 86 fd       ..
    ldx #$80                                                          // 8112: a2 80       ..
    stx l00fe                                                         // 8114: 86 fe       ..
    stz l001f                                                         // 8116: 64 1f       d.
    stz l0402                                                         // 8118: 9c 02 04    ...
    stz l0403                                                         // 811b: 9c 03 04    ...
    ldx #$ff                                                          // 811e: a2 ff       ..
    stx l0023                                                         // 8120: 86 23       .#
    ldx #$0a                                                          // 8122: a2 0a       ..
    stx l0400                                                         // 8124: 8e 00 04    ...
    dex                                                               // 8127: ca          .
    stx l0401                                                         // 8128: 8e 01 04    ...
    lda #$b2                                                          // 812b: a9 b2       ..
    sta brkv                                                          // 812d: 8d 02 02    ...
    lda #$b2                                                          // 8130: a9 b2       ..
    sta brkv+1                                                        // 8132: 8d 03 02    ...
    cli                                                               // 8135: 58          X
    jmp c8ff2                                                         // 8136: 4c f2 8f    L..

// $8139 referenced 1 time by $b09e
sub_c8139
    sty l0039                                                         // 8139: 84 39       .9
    ldy #1                                                            // 813b: a0 01       ..
    lda (l0037),y                                                     // 813d: b1 37       .7
    ldy #$f6                                                          // 813f: a0 f6       ..
    cmp #$f2                                                          // 8141: c9 f2       ..
    beq c8151                                                         // 8143: f0 0c       ..
    ldy #$f8                                                          // 8145: a0 f8       ..
    bra c8151                                                         // 8147: 80 08       ..
// $8149 referenced 4 times by $9638, $9a5c, $9aaf, $9acb
sub_c8149
    sty l0039                                                         // 8149: 84 39       .9
    ldy #1                                                            // 814b: a0 01       ..
    lda (l0037),y                                                     // 814d: b1 37       .7
    asl                                                               // 814f: 0a          .
    tay                                                               // 8150: a8          .
// $8151 referenced 2 times by $8143, $8147
c8151
    lda l0401,y                                                       // 8151: b9 01 04    ...
    beq c8190                                                         // 8154: f0 3a       .:
    sta l002b                                                         // 8156: 85 2b       .+
    lda l0400,y                                                       // 8158: b9 00 04    ...
    bra c8168                                                         // 815b: 80 0b       ..
// $815d referenced 4 times by $8172, $8178, $817c, $8185
c815d
    ldy #1                                                            // 815d: a0 01       ..
    lda (l002a),y                                                     // 815f: b1 2a       .*
    beq c8190                                                         // 8161: f0 2d       .-
    tay                                                               // 8163: a8          .
    lda (l002a)                                                       // 8164: b2 2a       .*
    sty l002b                                                         // 8166: 84 2b       .+
// $8168 referenced 1 time by $815b
c8168
    sta l002a                                                         // 8168: 85 2a       .*
    ldy #2                                                            // 816a: a0 02       ..
    lda (l002a),y                                                     // 816c: b1 2a       .*
    bne c817a                                                         // 816e: d0 0a       ..
    cpy l0039                                                         // 8170: c4 39       .9
    bne c815d                                                         // 8172: d0 e9       ..
    bra c8187                                                         // 8174: 80 11       ..
// $8176 referenced 1 time by $8181
loop_c8176
    lda (l002a),y                                                     // 8176: b1 2a       .*
    beq c815d                                                         // 8178: f0 e3       ..
// $817a referenced 1 time by $816e
c817a
    cmp (l0037),y                                                     // 817a: d1 37       .7
    bne c815d                                                         // 817c: d0 df       ..
    iny                                                               // 817e: c8          .
    cpy l0039                                                         // 817f: c4 39       .9
    bne loop_c8176                                                    // 8181: d0 f3       ..
    lda (l002a),y                                                     // 8183: b1 2a       .*
    bne c815d                                                         // 8185: d0 d6       ..
// $8187 referenced 1 time by $8174
c8187
    tya                                                               // 8187: 98          .
    adc l002a                                                         // 8188: 65 2a       e*
    sta l002a                                                         // 818a: 85 2a       .*
    bcc c8190                                                         // 818c: 90 02       ..
    inc l002b                                                         // 818e: e6 2b       .+
// $8190 referenced 3 times by $8154, $8161, $818c
c8190
    rts                                                               // 8190: 60          `

// $8191 referenced 3 times by $b435, $b866, $bac8
sub_c8191
    stz l003d                                                         // 8191: 64 3d       d=
    lda l0018                                                         // 8193: a5 18       ..
    sta l003e                                                         // 8195: 85 3e       .>
// $8197 referenced 2 times by $81a7, $81ab
c8197
    ldy #1                                                            // 8197: a0 01       ..
    lda (l003d),y                                                     // 8199: b1 3d       .=
    cmp l002b                                                         // 819b: c5 2b       .+
    bcs c81ad                                                         // 819d: b0 0e       ..
// $819f referenced 1 time by $81b4
loop_c819f
    ldy #3                                                            // 819f: a0 03       ..
    lda (l003d),y                                                     // 81a1: b1 3d       .=
    adc l003d                                                         // 81a3: 65 3d       e=
    sta l003d                                                         // 81a5: 85 3d       .=
    bcc c8197                                                         // 81a7: 90 ee       ..
    inc l003e                                                         // 81a9: e6 3e       .>
    bra c8197                                                         // 81ab: 80 ea       ..
// $81ad referenced 1 time by $819d
c81ad
    bne c81b9                                                         // 81ad: d0 0a       ..
    iny                                                               // 81af: c8          .
    lda (l003d),y                                                     // 81b0: b1 3d       .=
    cmp l002a                                                         // 81b2: c5 2a       .*
    bcc loop_c819f                                                    // 81b4: 90 e9       ..
    bne c81b9                                                         // 81b6: d0 01       ..
    rts                                                               // 81b8: 60          `

// $81b9 referenced 2 times by $81ad, $81b6
c81b9
    ldy #2                                                            // 81b9: a0 02       ..
    clc                                                               // 81bb: 18          .
    rts                                                               // 81bc: 60          `

// $81bd referenced 2 times by $a04a, $a05f
sub_c81bd
    jsr sub_c9783                                                     // 81bd: 20 83 97     ..
    lda l002d                                                         // 81c0: a5 2d       .-
    pha                                                               // 81c2: 48          H
    bpl c81c8                                                         // 81c3: 10 03       ..
    jsr cad20                                                         // 81c5: 20 20 ad      .
// $81c8 referenced 1 time by $81c3
c81c8
    jsr sub_ca069                                                     // 81c8: 20 69 a0     i.
    stx l0027                                                         // 81cb: 86 27       .'
    jsr sub_c9783                                                     // 81cd: 20 83 97     ..
    pla                                                               // 81d0: 68          h
    sta l0038                                                         // 81d1: 85 38       .8
    eor l002d                                                         // 81d3: 45 2d       E-
    sta l0037                                                         // 81d5: 85 37       .7
    jsr sub_cad07                                                     // 81d7: 20 07 ad     ..
    ldx #$39 // '9'                                                   // 81da: a2 39       .9
    jsr sub_cbd48                                                     // 81dc: 20 48 bd     H.
    ldx #3                                                            // 81df: a2 03       ..
// $81e1 referenced 1 time by $81e8
loop_c81e1
    stz l003d,x                                                       // 81e1: 74 3d       t=
    lda l002a,x                                                       // 81e3: b5 2a       .*
    bne c81fd                                                         // 81e5: d0 16       ..
    dex                                                               // 81e7: ca          .
    bpl loop_c81e1                                                    // 81e8: 10 f7       ..
// $81ea referenced 1 time by $a62c
c81ea
    brk                                                               // 81ea: 00          .

    .byt $12                                                          // 81eb: 12          .
    .asc "Division by zero"                                           // 81ec: 44 69 76... Div
    .byt 0                                                            // 81fc: 00          .

// $81fd referenced 1 time by $81e5
c81fd
    rol                                                               // 81fd: 2a          *
    txa                                                               // 81fe: 8a          .
    tay                                                               // 81ff: a8          .
    adc #0                                                            // 8200: 69 00       i.
    sta l0042                                                         // 8202: 85 42       .B
    ldx #3                                                            // 8204: a2 03       ..
// $8206 referenced 1 time by $820d
loop_c8206
    lda l0039,x                                                       // 8206: b5 39       .9
    stz l003d,x                                                       // 8208: 74 3d       t=
    bne c8230                                                         // 820a: d0 24       .$
    dex                                                               // 820c: ca          .
    bpl loop_c8206                                                    // 820d: 10 f7       ..
// $820f referenced 4 times by $8211, $8225, $822a, $822e
c820f
    rts                                                               // 820f: 60          `

// $8210 referenced 1 time by $823d
c8210
    tya                                                               // 8210: 98          .
    beq c820f                                                         // 8211: f0 fc       ..
    lda l003d,y                                                       // 8213: b9 3d 00    .=.
    sta l003d                                                         // 8216: 85 3d       .=
    lda l003e,y                                                       // 8218: b9 3e 00    .>.
    sta l003e                                                         // 821b: 85 3e       .>
    lda l003f,y                                                       // 821d: b9 3f 00    .?.
    sta l003f                                                         // 8220: 85 3f       .?
    stz l0040                                                         // 8222: 64 40       d@
    dey                                                               // 8224: 88          .
    beq c820f                                                         // 8225: f0 e8       ..
    stz l003f                                                         // 8227: 64 3f       d?
    dey                                                               // 8229: 88          .
    beq c820f                                                         // 822a: f0 e3       ..
    stz l003e                                                         // 822c: 64 3e       d>
    bra c820f                                                         // 822e: 80 df       ..
// $8230 referenced 1 time by $820a
c8230
    cmp l002a,y                                                       // 8230: d9 2a 00    .*.
    bcs c823f                                                         // 8233: b0 0a       ..
// $8235 referenced 1 time by $8240
loop_c8235
    lda l0039,x                                                       // 8235: b5 39       .9
    sta l003d,y                                                       // 8237: 99 3d 00    .=.
    stz l0039,x                                                       // 823a: 74 39       t9
    dex                                                               // 823c: ca          .
    bmi c8210                                                         // 823d: 30 d1       0.
// $823f referenced 1 time by $8233
c823f
    dey                                                               // 823f: 88          .
    bpl loop_c8235                                                    // 8240: 10 f3       ..
// $8242 referenced 1 time by $8284
c8242
    ldy #8                                                            // 8242: a0 08       ..
    stx l0041                                                         // 8244: 86 41       .A
// $8246 referenced 1 time by $827f
c8246
    rol l0039,x                                                       // 8246: 36 39       69
    rol l003d                                                         // 8248: 26 3d       &=
    rol l003e                                                         // 824a: 26 3e       &>
    rol l003f                                                         // 824c: 26 3f       &?
    rol l0040                                                         // 824e: 26 40       &@
    ldx l0042                                                         // 8250: a6 42       .B
// $8252 referenced 1 time by $8259
loop_c8252
    lda l003d,x                                                       // 8252: b5 3d       .=
    cmp l002a,x                                                       // 8254: d5 2a       .*
    bne c825b                                                         // 8256: d0 03       ..
    dex                                                               // 8258: ca          .
    bpl loop_c8252                                                    // 8259: 10 f7       ..
// $825b referenced 1 time by $8256
c825b
    bcc c827c                                                         // 825b: 90 1f       ..
    lda l003d                                                         // 825d: a5 3d       .=
    sbc l002a                                                         // 825f: e5 2a       .*
    sta l003d                                                         // 8261: 85 3d       .=
    ldx l0042                                                         // 8263: a6 42       .B
    beq c827c                                                         // 8265: f0 15       ..
    lda l003e                                                         // 8267: a5 3e       .>
    sbc l002b                                                         // 8269: e5 2b       .+
    sta l003e                                                         // 826b: 85 3e       .>
    dex                                                               // 826d: ca          .
    beq c827c                                                         // 826e: f0 0c       ..
    lda l003f                                                         // 8270: a5 3f       .?
    sbc l002c                                                         // 8272: e5 2c       .,
    sta l003f                                                         // 8274: 85 3f       .?
    lda l0040                                                         // 8276: a5 40       .@
    sbc l002d                                                         // 8278: e5 2d       .-
    sta l0040                                                         // 827a: 85 40       .@
// $827c referenced 3 times by $825b, $8265, $826e
c827c
    ldx l0041                                                         // 827c: a6 41       .A
    dey                                                               // 827e: 88          .
    bne c8246                                                         // 827f: d0 c5       ..
    rol l0039,x                                                       // 8281: 36 39       69
    dex                                                               // 8283: ca          .
    bpl c8242                                                         // 8284: 10 bc       ..
    rts                                                               // 8286: 60          `

// $8287 referenced 2 times by $9f66, $9f9d
sub_c8287
    jsr sub_cbd26                                                     // 8287: 20 26 bd     &.
// $828a referenced 2 times by $9d4e, $aab3
sub_c828a
    jsr sub_ca3ed                                                     // 828a: 20 ed a3     ..
// $828d referenced 8 times by $97a6, $9f9a, $9fa7, $a09c, $a1ac, $a37e, $a99d, $b39b
c828d
    stz l0035                                                         // 828d: 64 35       d5
    lda l002d                                                         // 828f: a5 2d       .-
    sta l002e                                                         // 8291: 85 2e       ..
    bpl c829a                                                         // 8293: 10 05       ..
    jsr cad20                                                         // 8295: 20 20 ad      .
    lda l002d                                                         // 8298: a5 2d       .-
// $829a referenced 1 time by $8293
c829a
    bne c82c8                                                         // 829a: d0 2c       .,
    stz l0034                                                         // 829c: 64 34       d4
    ldy l002a                                                         // 829e: a4 2a       .*
    lda l002c                                                         // 82a0: a5 2c       .,
    bne c82be                                                         // 82a2: d0 1a       ..
    stz l0033                                                         // 82a4: 64 33       d3
    lda l002b                                                         // 82a6: a5 2b       .+
    beq c82d8                                                         // 82a8: f0 2e       ..
    sty l0032                                                         // 82aa: 84 32       .2
    ldy #$90                                                          // 82ac: a0 90       ..
// $82ae referenced 2 times by $82c6, $82d6
c82ae
    ora #0                                                            // 82ae: 09 00       ..
    bmi c82fb                                                         // 82b0: 30 49       0I
// $82b2 referenced 1 time by $82ba
loop_c82b2
    dey                                                               // 82b2: 88          .
    asl l0034                                                         // 82b3: 06 34       .4
    rol l0033                                                         // 82b5: 26 33       &3
    rol l0032                                                         // 82b7: 26 32       &2
    rol                                                               // 82b9: 2a          *
    bpl loop_c82b2                                                    // 82ba: 10 f6       ..
    bra c82fb                                                         // 82bc: 80 3d       .=
// $82be referenced 1 time by $82a2
c82be
    sty l0033                                                         // 82be: 84 33       .3
    ldy l002b                                                         // 82c0: a4 2b       .+
    sty l0032                                                         // 82c2: 84 32       .2
    ldy #$98                                                          // 82c4: a0 98       ..
    bra c82ae                                                         // 82c6: 80 e6       ..
// $82c8 referenced 1 time by $829a
c82c8
    ldy l002c                                                         // 82c8: a4 2c       .,
    sty l0032                                                         // 82ca: 84 32       .2
    ldy l002b                                                         // 82cc: a4 2b       .+
    sty l0033                                                         // 82ce: 84 33       .3
    ldy l002a                                                         // 82d0: a4 2a       .*
    sty l0034                                                         // 82d2: 84 34       .4
    ldy #$a0                                                          // 82d4: a0 a0       ..
    bra c82ae                                                         // 82d6: 80 d6       ..
// $82d8 referenced 1 time by $82a8
c82d8
    stz l0032                                                         // 82d8: 64 32       d2
    tya                                                               // 82da: 98          .
    bne c82f4                                                         // 82db: d0 17       ..
// $82dd referenced 3 times by $82ed, $8310, $a2d9
c82dd
    stz l0031                                                         // 82dd: 64 31       d1
    stz l002e                                                         // 82df: 64 2e       d.
    stz l0030                                                         // 82e1: 64 30       d0
    stz l002f                                                         // 82e3: 64 2f       d/
    rts                                                               // 82e5: 60          `

// $82e6 referenced 1 time by $a7f7
sub_c82e6
    sta l002e                                                         // 82e6: 85 2e       ..
    jsr sub_ca731                                                     // 82e8: 20 31 a7     1.
    lda l002e                                                         // 82eb: a5 2e       ..
    beq c82dd                                                         // 82ed: f0 ee       ..
    bpl c82f4                                                         // 82ef: 10 03       ..
    eor #$ff                                                          // 82f1: 49 ff       I.
    inc                                                               // 82f3: 1a          .
// $82f4 referenced 2 times by $82db, $82ef
c82f4
    ldy #$89                                                          // 82f4: a0 89       ..
    lsr                                                               // 82f6: 4a          J
// $82f7 referenced 1 time by $82f9
loop_c82f7
    dey                                                               // 82f7: 88          .
    rol                                                               // 82f8: 2a          *
    bpl loop_c82f7                                                    // 82f9: 10 fc       ..
// $82fb referenced 2 times by $82b0, $82bc
c82fb
    sty l0030                                                         // 82fb: 84 30       .0
    stz l002f                                                         // 82fd: 64 2f       d/
    sta l0031                                                         // 82ff: 85 31       .1
    rts                                                               // 8301: 60          `

    .byt $a5, $31                                                     // 8302: a5 31       .1

// $8304 referenced 3 times by $84f1, $8510, $a390
c8304
    bmi c8346                                                         // 8304: 30 40       0@
// $8306 referenced 2 times by $a6c6, $a7a9
c8306
    bne c832f                                                         // 8306: d0 27       .'
    ora l0032                                                         // 8308: 05 32       .2
    ora l0033                                                         // 830a: 05 33       .3
    ora l0034                                                         // 830c: 05 34       .4
    ora l0035                                                         // 830e: 05 35       .5
    beq c82dd                                                         // 8310: f0 cb       ..
    ldy l0030                                                         // 8312: a4 30       .0
// $8314 referenced 1 time by $832b
loop_c8314
    lda l0032                                                         // 8314: a5 32       .2
    pha                                                               // 8316: 48          H
    lda l0033                                                         // 8317: a5 33       .3
    sta l0032                                                         // 8319: 85 32       .2
    lda l0034                                                         // 831b: a5 34       .4
    sta l0033                                                         // 831d: 85 33       .3
    lda l0035                                                         // 831f: a5 35       .5
    sta l0034                                                         // 8321: 85 34       .4
    stz l0035                                                         // 8323: 64 35       d5
    tya                                                               // 8325: 98          .
    sec                                                               // 8326: 38          8
    sbc #8                                                            // 8327: e9 08       ..
    tay                                                               // 8329: a8          .
    pla                                                               // 832a: 68          h
    beq loop_c8314                                                    // 832b: f0 e7       ..
    bra c833b                                                         // 832d: 80 0c       ..
// $832f referenced 1 time by $8306
c832f
    ldy l0030                                                         // 832f: a4 30       .0
// $8331 referenced 1 time by $833b
loop_c8331
    dey                                                               // 8331: 88          .
    asl l0035                                                         // 8332: 06 35       .5
    rol l0034                                                         // 8334: 26 34       &4
    rol l0033                                                         // 8336: 26 33       &3
    rol l0032                                                         // 8338: 26 32       &2
    rol                                                               // 833a: 2a          *
// $833b referenced 1 time by $832d
c833b
    bpl loop_c8331                                                    // 833b: 10 f4       ..
    cpy l0030                                                         // 833d: c4 30       .0
    sty l0030                                                         // 833f: 84 30       .0
    bcc c8345                                                         // 8341: 90 02       ..
    dec l002f                                                         // 8343: c6 2f       ./
// $8345 referenced 1 time by $8341
c8345
    tay                                                               // 8345: a8          .
// $8346 referenced 1 time by $8304
c8346
    sta l0031                                                         // 8346: 85 31       .1
    rts                                                               // 8348: 60          `

// $8349 referenced 1 time by $abed
sub_c8349
    stz l003d                                                         // 8349: 64 3d       d=
sub_c834b
    ldy l0031                                                         // 834b: a4 31       .1
    bra c8353                                                         // 834d: 80 04       ..
// $834f referenced 1 time by $9788
sub_c834f
    ldy l0031                                                         // 834f: a4 31       .1
    sty l003d                                                         // 8351: 84 3d       .=
// $8353 referenced 1 time by $834d
c8353
    lda l0030                                                         // 8353: a5 30       .0
    cmp #$81                                                          // 8355: c9 81       ..
    bcs c835e                                                         // 8357: b0 05       ..
    sty l003d                                                         // 8359: 84 3d       .=
    jmp ca72b                                                         // 835b: 4c 2b a7    L+.

// $835e referenced 1 time by $8357
c835e
    cmp #$a0                                                          // 835e: c9 a0       ..
    bcc c8372                                                         // 8360: 90 10       ..
// $8362 referenced 1 time by $83d0
c8362
    jmp ca6f2                                                         // 8362: 4c f2 a6    L..

// $8365 referenced 1 time by $8374
loop_c8365
    lsr l0031                                                         // 8365: 46 31       F1
    ror l0032                                                         // 8367: 66 32       f2
    ror l0033                                                         // 8369: 66 33       f3
    ror l0034                                                         // 836b: 66 34       f4
    bcc c8371                                                         // 836d: 90 02       ..
    sta l003d                                                         // 836f: 85 3d       .=
// $8371 referenced 1 time by $836d
c8371
    inc                                                               // 8371: 1a          .
// $8372 referenced 1 time by $8360
c8372
    bit #7                                                            // 8372: 89 07       ..
    bne loop_c8365                                                    // 8374: d0 ef       ..
    and #$18                                                          // 8376: 29 18       ).
    beq c83a6                                                         // 8378: f0 2c       .,
    lsr                                                               // 837a: 4a          J
    lsr                                                               // 837b: 4a          J
    lsr                                                               // 837c: 4a          J
    tay                                                               // 837d: a8          .
    phx                                                               // 837e: da          .
    eor #3                                                            // 837f: 49 03       I.
    tax                                                               // 8381: aa          .
    lda l003d                                                         // 8382: a5 3d       .=
    bne c8392                                                         // 8384: d0 0c       ..
    stz l0035                                                         // 8386: 64 35       d5
    lda l0034                                                         // 8388: a5 34       .4
    ora l0031,y                                                       // 838a: 19 31 00    .1.
    ora l0032,y                                                       // 838d: 19 32 00    .2.
    sta l003d                                                         // 8390: 85 3d       .=
// $8392 referenced 1 time by $8384
c8392
    lda l0033                                                         // 8392: a5 33       .3
    sta l0034                                                         // 8394: 85 34       .4
    lda l0032                                                         // 8396: a5 32       .2
    sta l0033,x                                                       // 8398: 95 33       .3
    lda l0031                                                         // 839a: a5 31       .1
    sta l0032,x                                                       // 839c: 95 32       .2
// $839e referenced 1 time by $83a1
loop_c839e
    stz l0031,x                                                       // 839e: 74 31       t1
    dex                                                               // 83a0: ca          .
    bpl loop_c839e                                                    // 83a1: 10 fb       ..
    plx                                                               // 83a3: fa          .
    stz l0035                                                         // 83a4: 64 35       d5
// $83a6 referenced 1 time by $8378
c83a6
    lda l002e                                                         // 83a6: a5 2e       ..
    bpl c83c1                                                         // 83a8: 10 17       ..
// $83aa referenced 1 time by $abfa
sub_c83aa
    sec                                                               // 83aa: 38          8
    ldy #0                                                            // 83ab: a0 00       ..
    tya                                                               // 83ad: 98          .
    sbc l0034                                                         // 83ae: e5 34       .4
    sta l0034                                                         // 83b0: 85 34       .4
    tya                                                               // 83b2: 98          .
    sbc l0033                                                         // 83b3: e5 33       .3
    sta l0033                                                         // 83b5: 85 33       .3
    tya                                                               // 83b7: 98          .
    sbc l0032                                                         // 83b8: e5 32       .2
    sta l0032                                                         // 83ba: 85 32       .2
    tya                                                               // 83bc: 98          .
    sbc l0031                                                         // 83bd: e5 31       .1
    sta l0031                                                         // 83bf: 85 31       .1
// $83c1 referenced 1 time by $83a8
c83c1
    rts                                                               // 83c1: 60          `

// $83c2 referenced 1 time by $abf7
sub_c83c2
    inc l0034                                                         // 83c2: e6 34       .4
    bne c83d2                                                         // 83c4: d0 0c       ..
    inc l0033                                                         // 83c6: e6 33       .3
    bne c83d2                                                         // 83c8: d0 08       ..
    inc l0032                                                         // 83ca: e6 32       .2
    bne c83d2                                                         // 83cc: d0 04       ..
    inc l0031                                                         // 83ce: e6 31       .1
    beq c8362                                                         // 83d0: f0 90       ..
// $83d2 referenced 3 times by $83c4, $83c8, $83cc
c83d2
    rts                                                               // 83d2: 60          `

// $83d3 referenced 2 times by $aa7a, $aad3
sub_c83d3
    ldy #2                                                            // 83d3: a0 02       ..
// $83d5 referenced 1 time by $8407
c83d5
    ror l0011                                                         // 83d5: 66 11       f.
    ror l0010                                                         // 83d7: 66 10       f.
    lda l000f                                                         // 83d9: a5 0f       ..
    sta l0011                                                         // 83db: 85 11       ..
    ror                                                               // 83dd: 6a          j
    pha                                                               // 83de: 48          H
    lda l000e                                                         // 83df: a5 0e       ..
    ldx l000d                                                         // 83e1: a6 0d       ..
    lsr l000f                                                         // 83e3: 46 0f       F.
    ror                                                               // 83e5: 6a          j
    ror l000d                                                         // 83e6: 66 0d       f.
    lsr l000f                                                         // 83e8: 46 0f       F.
    ror                                                               // 83ea: 6a          j
    ror l000d                                                         // 83eb: 66 0d       f.
    lsr l000f                                                         // 83ed: 46 0f       F.
    ror                                                               // 83ef: 6a          j
    ror l000d                                                         // 83f0: 66 0d       f.
    lsr l000f                                                         // 83f2: 46 0f       F.
    ror                                                               // 83f4: 6a          j
    ror l000d                                                         // 83f5: 66 0d       f.
    eor l0010                                                         // 83f7: 45 10       E.
    stx l000f                                                         // 83f9: 86 0f       ..
    ldx l000e                                                         // 83fb: a6 0e       ..
    stx l0010                                                         // 83fd: 86 10       ..
    sta l000e                                                         // 83ff: 85 0e       ..
    pla                                                               // 8401: 68          h
    eor l000d                                                         // 8402: 45 0d       E.
    sta l000d                                                         // 8404: 85 0d       ..
    dey                                                               // 8406: 88          .
    bne c83d5                                                         // 8407: d0 cc       ..
    rts                                                               // 8409: 60          `

// $840a referenced 2 times by $842b, $846f
c840a
    lda l003b                                                         // 840a: a5 3b       .;
    sta l002e                                                         // 840c: 85 2e       ..
    stz l002f                                                         // 840e: 64 2f       d/
    lda l003c                                                         // 8410: a5 3c       .<
    sta l0030                                                         // 8412: 85 30       .0
    lda l003d                                                         // 8414: a5 3d       .=
    sta l0031                                                         // 8416: 85 31       .1
    lda l003e                                                         // 8418: a5 3e       .>
    sta l0032                                                         // 841a: 85 32       .2
    lda l003f                                                         // 841c: a5 3f       .?
    sta l0033                                                         // 841e: 85 33       .3
    lda l0040                                                         // 8420: a5 40       .@
    sta l0034                                                         // 8422: 85 34       .4
    lda l0041                                                         // 8424: a5 41       .A
    sta l0035                                                         // 8426: 85 35       .5
// $8428 referenced 1 time by $8438
loop_c8428
    rts                                                               // 8428: 60          `

// $8429 referenced 2 times by $a204, $a70f
sub_c8429
    lda l0031                                                         // 8429: a5 31       .1
    beq c840a                                                         // 842b: f0 dd       ..
    sec                                                               // 842d: 38          8
    lda l0030                                                         // 842e: a5 30       .0
    sbc l003c                                                         // 8430: e5 3c       .<
    beq c84a3                                                         // 8432: f0 6f       .o
    bcc c846a                                                         // 8434: 90 34       .4
    cmp #$25 // '%'                                                   // 8436: c9 25       .%
    bcs loop_c8428                                                    // 8438: b0 ee       ..
    tay                                                               // 843a: a8          .
    and #$38 // '8'                                                   // 843b: 29 38       )8
    beq c8456                                                         // 843d: f0 17       ..
    sec                                                               // 843f: 38          8
// $8440 referenced 1 time by $8454
loop_c8440
    ldx l0040                                                         // 8440: a6 40       .@
    stx l0041                                                         // 8442: 86 41       .A
    ldx l003f                                                         // 8444: a6 3f       .?
    stx l0040                                                         // 8446: 86 40       .@
    ldx l003e                                                         // 8448: a6 3e       .>
    stx l003f                                                         // 844a: 86 3f       .?
    ldx l003d                                                         // 844c: a6 3d       .=
    stx l003e                                                         // 844e: 86 3e       .>
    stz l003d                                                         // 8450: 64 3d       d=
    sbc #8                                                            // 8452: e9 08       ..
    bne loop_c8440                                                    // 8454: d0 ea       ..
// $8456 referenced 1 time by $843d
c8456
    tya                                                               // 8456: 98          .
    and #7                                                            // 8457: 29 07       ).
    beq c84a3                                                         // 8459: f0 48       .H
// $845b referenced 1 time by $8466
loop_c845b
    lsr l003d                                                         // 845b: 46 3d       F=
    ror l003e                                                         // 845d: 66 3e       f>
    ror l003f                                                         // 845f: 66 3f       f?
    ror l0040                                                         // 8461: 66 40       f@
    ror l0041                                                         // 8463: 66 41       fA
    dec                                                               // 8465: 3a          :
    bne loop_c845b                                                    // 8466: d0 f3       ..
    bra c84a3                                                         // 8468: 80 39       .9
// $846a referenced 1 time by $8434
c846a
    eor #$ff                                                          // 846a: 49 ff       I.
    inc                                                               // 846c: 1a          .
    cmp #$25 // '%'                                                   // 846d: c9 25       .%
    bcs c840a                                                         // 846f: b0 99       ..
    ldy l003c                                                         // 8471: a4 3c       .<
    sty l0030                                                         // 8473: 84 30       .0
    tay                                                               // 8475: a8          .
    and #$38 // '8'                                                   // 8476: 29 38       )8
    beq c8491                                                         // 8478: f0 17       ..
    sec                                                               // 847a: 38          8
// $847b referenced 1 time by $848f
loop_c847b
    ldx l0034                                                         // 847b: a6 34       .4
    stx l0035                                                         // 847d: 86 35       .5
    ldx l0033                                                         // 847f: a6 33       .3
    stx l0034                                                         // 8481: 86 34       .4
    ldx l0032                                                         // 8483: a6 32       .2
    stx l0033                                                         // 8485: 86 33       .3
    ldx l0031                                                         // 8487: a6 31       .1
    stx l0032                                                         // 8489: 86 32       .2
    stz l0031                                                         // 848b: 64 31       d1
    sbc #8                                                            // 848d: e9 08       ..
    bne loop_c847b                                                    // 848f: d0 ea       ..
// $8491 referenced 1 time by $8478
c8491
    tya                                                               // 8491: 98          .
    and #7                                                            // 8492: 29 07       ).
    beq c84a3                                                         // 8494: f0 0d       ..
// $8496 referenced 1 time by $84a1
loop_c8496
    lsr l0031                                                         // 8496: 46 31       F1
    ror l0032                                                         // 8498: 66 32       f2
    ror l0033                                                         // 849a: 66 33       f3
    ror l0034                                                         // 849c: 66 34       f4
    ror l0035                                                         // 849e: 66 35       f5
    dec                                                               // 84a0: 3a          :
    bne loop_c8496                                                    // 84a1: d0 f3       ..
// $84a3 referenced 4 times by $8432, $8459, $8468, $8494
c84a3
    lda l002e                                                         // 84a3: a5 2e       ..
    eor l003b                                                         // 84a5: 45 3b       E;
    bmi c84ad                                                         // 84a7: 30 04       0.
    clc                                                               // 84a9: 18          .
    jmp ca489                                                         // 84aa: 4c 89 a4    L..

// $84ad referenced 1 time by $84a7
c84ad
    lda l0031                                                         // 84ad: a5 31       .1
    cmp l003d                                                         // 84af: c5 3d       .=
    bne c84ce                                                         // 84b1: d0 1b       ..
    lda l0032                                                         // 84b3: a5 32       .2
    cmp l003e                                                         // 84b5: c5 3e       .>
    bne c84ce                                                         // 84b7: d0 15       ..
    lda l0033                                                         // 84b9: a5 33       .3
    cmp l003f                                                         // 84bb: c5 3f       .?
    bne c84ce                                                         // 84bd: d0 0f       ..
    lda l0034                                                         // 84bf: a5 34       .4
    cmp l0040                                                         // 84c1: c5 40       .@
    bne c84ce                                                         // 84c3: d0 09       ..
    lda l0035                                                         // 84c5: a5 35       .5
    cmp l0041                                                         // 84c7: c5 41       .A
    bne c84ce                                                         // 84c9: d0 03       ..
    jmp ca72b                                                         // 84cb: 4c 2b a7    L+.

// $84ce referenced 5 times by $84b1, $84b7, $84bd, $84c3, $84c9
c84ce
    bcs c84f4                                                         // 84ce: b0 24       .$
    lda l003b                                                         // 84d0: a5 3b       .;
    sta l002e                                                         // 84d2: 85 2e       ..
    sec                                                               // 84d4: 38          8
    lda l0041                                                         // 84d5: a5 41       .A
    sbc l0035                                                         // 84d7: e5 35       .5
    sta l0035                                                         // 84d9: 85 35       .5
    lda l0040                                                         // 84db: a5 40       .@
    sbc l0034                                                         // 84dd: e5 34       .4
    sta l0034                                                         // 84df: 85 34       .4
    lda l003f                                                         // 84e1: a5 3f       .?
    sbc l0033                                                         // 84e3: e5 33       .3
    sta l0033                                                         // 84e5: 85 33       .3
    lda l003e                                                         // 84e7: a5 3e       .>
    sbc l0032                                                         // 84e9: e5 32       .2
    sta l0032                                                         // 84eb: 85 32       .2
    lda l003d                                                         // 84ed: a5 3d       .=
    sbc l0031                                                         // 84ef: e5 31       .1
    jmp c8304                                                         // 84f1: 4c 04 83    L..

// $84f4 referenced 1 time by $84ce
c84f4
    lda l0035                                                         // 84f4: a5 35       .5
    sbc l0041                                                         // 84f6: e5 41       .A
    sta l0035                                                         // 84f8: 85 35       .5
    lda l0034                                                         // 84fa: a5 34       .4
    sbc l0040                                                         // 84fc: e5 40       .@
    sta l0034                                                         // 84fe: 85 34       .4
    lda l0033                                                         // 8500: a5 33       .3
    sbc l003f                                                         // 8502: e5 3f       .?
    sta l0033                                                         // 8504: 85 33       .3
    lda l0032                                                         // 8506: a5 32       .2
    sbc l003e                                                         // 8508: e5 3e       .>
    sta l0032                                                         // 850a: 85 32       .2
    lda l0031                                                         // 850c: a5 31       .1
    sbc l003d                                                         // 850e: e5 3d       .=
    jmp c8304                                                         // 8510: 4c 04 83    L..

    .asc "AND"                                                        // 8513: 41 4e 44    AND
    .byt $80,   0                                                     // 8516: 80 00       ..
    .asc "ABS"                                                        // 8518: 41 42 53    ABS
    .byt $94,   0                                                     // 851b: 94 00       ..
    .asc "ACS"                                                        // 851d: 41 43 53    ACS
    .byt $95,   0                                                     // 8520: 95 00       ..
    .asc "ADVAL"                                                      // 8522: 41 44 56... ADV
    .byt $96,   0                                                     // 8527: 96 00       ..
    .asc "ASC"                                                        // 8529: 41 53 43    ASC
    .byt $97,   0                                                     // 852c: 97 00       ..
    .asc "ASN"                                                        // 852e: 41 53 4e    ASN
    .byt $98,   0                                                     // 8531: 98 00       ..
    .asc "ATN"                                                        // 8533: 41 54 4e    ATN
    .byt $99,   0                                                     // 8536: 99 00       ..
    .asc "AUTO"                                                       // 8538: 41 55 54... AUT
    .byt $c6, $10                                                     // 853c: c6 10       ..
    .asc "BGET"                                                       // 853e: 42 47 45... BGE
    .byt $9a,   1                                                     // 8542: 9a 01       ..
    .asc "BPUT"                                                       // 8544: 42 50 55... BPU
    .byt $d5,   3                                                     // 8548: d5 03       ..
    .asc "COLOUR"                                                     // 854a: 43 4f 4c... COL
    .byt $fb,   2                                                     // 8550: fb 02       ..
    .asc "CALL"                                                       // 8552: 43 41 4c... CAL
    .byt $d6,   2                                                     // 8556: d6 02       ..
    .asc "CHAIN"                                                      // 8558: 43 48 41... CHA
    .byt $d7,   2                                                     // 855d: d7 02       ..
    .asc "CHR$"                                                       // 855f: 43 48 52... CHR
    .byt $bd,   0                                                     // 8563: bd 00       ..
    .asc "CLEAR"                                                      // 8565: 43 4c 45... CLE
    .byt $d8,   1                                                     // 856a: d8 01       ..
    .asc "CLOSE"                                                      // 856c: 43 4c 4f... CLO
    .byt $d9,   3                                                     // 8571: d9 03       ..
    .asc "CLG"                                                        // 8573: 43 4c 47    CLG
    .byt $da,   1                                                     // 8576: da 01       ..
    .asc "CLS"                                                        // 8578: 43 4c 53    CLS
    .byt $db,   1                                                     // 857b: db 01       ..
    .asc "COS"                                                        // 857d: 43 4f 53    COS
    .byt $9b,   0                                                     // 8580: 9b 00       ..
    .asc "COUNT"                                                      // 8582: 43 4f 55... COU
    .byt $9c,   1                                                     // 8587: 9c 01       ..
    .asc "COLOR"                                                      // 8589: 43 4f 4c... COL
    .byt $fb,   2                                                     // 858e: fb 02       ..
    .asc "DATA"                                                       // 8590: 44 41 54... DAT
    .byt $dc                                                          // 8594: dc          .
    .asc " DEG"                                                       // 8595: 20 44 45...  DE
    .byt $9d,   0                                                     // 8599: 9d 00       ..
    .asc "DEF"                                                        // 859b: 44 45 46    DEF
    .byt $dd,   0                                                     // 859e: dd 00       ..
    .asc "DELETE"                                                     // 85a0: 44 45 4c... DEL
    .byt $c7, $10                                                     // 85a6: c7 10       ..
    .asc "DIV"                                                        // 85a8: 44 49 56    DIV
    .byt $81,   0                                                     // 85ab: 81 00       ..
    .asc "DIM"                                                        // 85ad: 44 49 4d    DIM
    .byt $de,   2                                                     // 85b0: de 02       ..
    .asc "DRAW"                                                       // 85b2: 44 52 41... DRA
    .byt $df,   2                                                     // 85b6: df 02       ..
    .asc "ENDPROC"                                                    // 85b8: 45 4e 44... END
    .byt $e1,   1                                                     // 85bf: e1 01       ..
    .asc "END"                                                        // 85c1: 45 4e 44    END
    .byt $e0,   1                                                     // 85c4: e0 01       ..
    .asc "ENVELOPE"                                                   // 85c6: 45 4e 56... ENV
    .byt $e2,   2                                                     // 85ce: e2 02       ..
    .asc "ELSE"                                                       // 85d0: 45 4c 53... ELS
    .byt $8b, $14                                                     // 85d4: 8b 14       ..
    .asc "EVAL"                                                       // 85d6: 45 56 41... EVA
    .byt $a0,   0                                                     // 85da: a0 00       ..
    .asc "ERL"                                                        // 85dc: 45 52 4c    ERL
    .byt $9e,   1                                                     // 85df: 9e 01       ..
    .asc "ERROR"                                                      // 85e1: 45 52 52... ERR
    .byt $85,   4                                                     // 85e6: 85 04       ..
    .asc "EOF"                                                        // 85e8: 45 4f 46    EOF
    .byt $c5,   1                                                     // 85eb: c5 01       ..
    .asc "EOR"                                                        // 85ed: 45 4f 52    EOR
    .byt $82,   0                                                     // 85f0: 82 00       ..
    .asc "ERR"                                                        // 85f2: 45 52 52    ERR
    .byt $9f,   1                                                     // 85f5: 9f 01       ..
    .asc "EXP"                                                        // 85f7: 45 58 50    EXP
    .byt $a1,   0                                                     // 85fa: a1 00       ..
    .asc "EXT"                                                        // 85fc: 45 58 54    EXT
    .byt $a2,   1                                                     // 85ff: a2 01       ..
    .asc "EDIT"                                                       // 8601: 45 44 49... EDI
    .byt $ce, $10                                                     // 8605: ce 10       ..
    .asc "FOR"                                                        // 8607: 46 4f 52    FOR
    .byt $e3,   2                                                     // 860a: e3 02       ..
    .asc "FALSE"                                                      // 860c: 46 41 4c... FAL
    .byt $a3,   1, $46, $4e, $a4,   8                                 // 8611: a3 01 46... ..F
    .asc "GOTO"                                                       // 8617: 47 4f 54... GOT
    .byt $e5, $12                                                     // 861b: e5 12       ..
    .asc "GET$"                                                       // 861d: 47 45 54... GET
    .byt $be,   0                                                     // 8621: be 00       ..
    .asc "GET"                                                        // 8623: 47 45 54    GET
    .byt $a5,   0                                                     // 8626: a5 00       ..
    .asc "GOSUB"                                                      // 8628: 47 4f 53... GOS
    .byt $e4, $12                                                     // 862d: e4 12       ..
    .asc "GCOL"                                                       // 862f: 47 43 4f... GCO
    .byt $e6,   2                                                     // 8633: e6 02       ..
    .asc "HIMEM"                                                      // 8635: 48 49 4d... HIM
    .byt $93                                                          // 863a: 93          .
    .asc "CINPUT"                                                     // 863b: 43 49 4e... CIN
    .byt $e8,   2, $49, $46, $e7,   2                                 // 8641: e8 02 49... ..I
    .asc "INKEY$"                                                     // 8647: 49 4e 4b... INK
    .byt $bf,   0                                                     // 864d: bf 00       ..
    .asc "INKEY"                                                      // 864f: 49 4e 4b... INK
    .byt $a6,   0                                                     // 8654: a6 00       ..
    .asc "INT"                                                        // 8656: 49 4e 54    INT
    .byt $a8,   0                                                     // 8659: a8 00       ..
    .asc "INSTR("                                                     // 865b: 49 4e 53... INS
    .byt $a7,   0                                                     // 8661: a7 00       ..
    .asc "LIST"                                                       // 8663: 4c 49 53... LIS
    .byt $c9, $10                                                     // 8667: c9 10       ..
    .asc "LINE"                                                       // 8669: 4c 49 4e... LIN
    .byt $86,   0                                                     // 866d: 86 00       ..
    .asc "LOAD"                                                       // 866f: 4c 4f 41... LOA
    .byt $c8,   2                                                     // 8673: c8 02       ..
    .asc "LOMEM"                                                      // 8675: 4c 4f 4d... LOM
    .byt $92                                                          // 867a: 92          .
    .asc "CLOCAL"                                                     // 867b: 43 4c 4f... CLO
    .byt $ea,   2                                                     // 8681: ea 02       ..
    .asc "LEFT$("                                                     // 8683: 4c 45 46... LEF
    .byt $c0,   0                                                     // 8689: c0 00       ..
    .asc "LEN"                                                        // 868b: 4c 45 4e    LEN
    .byt $a9,   0                                                     // 868e: a9 00       ..
    .asc "LET"                                                        // 8690: 4c 45 54    LET
    .byt $e9,   4                                                     // 8693: e9 04       ..
    .asc "LOG"                                                        // 8695: 4c 4f 47    LOG
    .byt $ab,   0, $4c, $4e, $aa,   0                                 // 8698: ab 00 4c... ..L
    .asc "MID$("                                                      // 869e: 4d 49 44... MID
    .byt $c1,   0                                                     // 86a3: c1 00       ..
    .asc "MODE"                                                       // 86a5: 4d 4f 44... MOD
    .byt $eb,   2                                                     // 86a9: eb 02       ..
    .asc "MOD"                                                        // 86ab: 4d 4f 44    MOD
    .byt $83,   0                                                     // 86ae: 83 00       ..
    .asc "MOVE"                                                       // 86b0: 4d 4f 56... MOV
    .byt $ec,   2                                                     // 86b4: ec 02       ..
    .asc "NEXT"                                                       // 86b6: 4e 45 58... NEX
    .byt $ed,   2                                                     // 86ba: ed 02       ..
    .asc "NEW"                                                        // 86bc: 4e 45 57    NEW
    .byt $ca,   1                                                     // 86bf: ca 01       ..
    .asc "NOT"                                                        // 86c1: 4e 4f 54    NOT
    .byt $ac,   0                                                     // 86c4: ac 00       ..
    .asc "OLD"                                                        // 86c6: 4f 4c 44    OLD
    .byt $cb,   1, $4f, $4e, $ee,   2                                 // 86c9: cb 01 4f... ..O
    .asc "OFF"                                                        // 86cf: 4f 46 46    OFF
    .byt $87,   0, $4f, $52, $84,   0                                 // 86d2: 87 00 4f... ..O
    .asc "OPENIN"                                                     // 86d8: 4f 50 45... OPE
    .byt $8e,   0                                                     // 86de: 8e 00       ..
    .asc "OPENOUT"                                                    // 86e0: 4f 50 45... OPE
    .byt $ae,   0                                                     // 86e7: ae 00       ..
    .asc "OPENUP"                                                     // 86e9: 4f 50 45... OPE
    .byt $ad,   0                                                     // 86ef: ad 00       ..
    .asc "OSCLI"                                                      // 86f1: 4f 53 43... OSC
    .byt $ff,   2                                                     // 86f6: ff 02       ..
    .asc "PRINT"                                                      // 86f8: 50 52 49... PRI
    .byt $f1,   2                                                     // 86fd: f1 02       ..
    .asc "PAGE"                                                       // 86ff: 50 41 47... PAG
    .byt $90                                                          // 8703: 90          .
    .asc "CPTR"                                                       // 8704: 43 50 54... CPT
    .byt $8f                                                          // 8708: 8f          .
    .asc "CPI"                                                        // 8709: 43 50 49    CPI
    .byt $af,   1                                                     // 870c: af 01       ..
    .asc "PLOT"                                                       // 870e: 50 4c 4f... PLO
    .byt $f0,   2                                                     // 8712: f0 02       ..
    .asc "POINT("                                                     // 8714: 50 4f 49... POI
    .byt $b0,   0                                                     // 871a: b0 00       ..
    .asc "PROC"                                                       // 871c: 50 52 4f... PRO
    .byt $f2, $0a                                                     // 8720: f2 0a       ..
    .asc "POS"                                                        // 8722: 50 4f 53    POS
    .byt $b1,   1                                                     // 8725: b1 01       ..
    .asc "RETURN"                                                     // 8727: 52 45 54... RET
    .byt $f8,   1                                                     // 872d: f8 01       ..
    .asc "REPEAT"                                                     // 872f: 52 45 50... REP
    .byt $f5,   0                                                     // 8735: f5 00       ..
    .asc "REPORT"                                                     // 8737: 52 45 50... REP
    .byt $f6,   1                                                     // 873d: f6 01       ..
    .asc "READ"                                                       // 873f: 52 45 41... REA
    .byt $f3,   2                                                     // 8743: f3 02       ..
    .asc "REM"                                                        // 8745: 52 45 4d    REM
    .byt $f4                                                          // 8748: f4          .
    .asc " RUN"                                                       // 8749: 20 52 55...  RU
    .byt $f9,   1                                                     // 874d: f9 01       ..
    .asc "RAD"                                                        // 874f: 52 41 44    RAD
    .byt $b2,   0                                                     // 8752: b2 00       ..
    .asc "RESTORE"                                                    // 8754: 52 45 53... RES
    .byt $f7, $12                                                     // 875b: f7 12       ..
    .asc "RIGHT$("                                                    // 875d: 52 49 47... RIG
    .byt $c2,   0                                                     // 8764: c2 00       ..
    .asc "RND"                                                        // 8766: 52 4e 44    RND
    .byt $b3,   1                                                     // 8769: b3 01       ..
    .asc "RENUMBER"                                                   // 876b: 52 45 4e... REN
    .byt $cc, $10                                                     // 8773: cc 10       ..
    .asc "STEP"                                                       // 8775: 53 54 45... STE
    .byt $88,   0                                                     // 8779: 88 00       ..
    .asc "SAVE"                                                       // 877b: 53 41 56... SAV
    .byt $cd,   2                                                     // 877f: cd 02       ..
    .asc "SGN"                                                        // 8781: 53 47 4e    SGN
    .byt $b4,   0                                                     // 8784: b4 00       ..
    .asc "SIN"                                                        // 8786: 53 49 4e    SIN
    .byt $b5,   0                                                     // 8789: b5 00       ..
    .asc "SQR"                                                        // 878b: 53 51 52    SQR
    .byt $b6,   0                                                     // 878e: b6 00       ..
    .asc "SPC"                                                        // 8790: 53 50 43    SPC
    .byt $89,   0                                                     // 8793: 89 00       ..
    .asc "STR$"                                                       // 8795: 53 54 52... STR
    .byt $c3,   0                                                     // 8799: c3 00       ..
    .asc "STRING$("                                                   // 879b: 53 54 52... STR
    .byt $c4,   0                                                     // 87a3: c4 00       ..
    .asc "SOUND"                                                      // 87a5: 53 4f 55... SOU
    .byt $d4,   2                                                     // 87aa: d4 02       ..
    .asc "STOP"                                                       // 87ac: 53 54 4f... STO
    .byt $fa,   1                                                     // 87b0: fa 01       ..
    .asc "TAN"                                                        // 87b2: 54 41 4e    TAN
    .byt $b7,   0                                                     // 87b5: b7 00       ..
    .asc "THEN"                                                       // 87b7: 54 48 45... THE
    .byt $8c, $14, $54, $4f, $b8,   0                                 // 87bb: 8c 14 54... ..T
    .asc "TAB("                                                       // 87c1: 54 41 42... TAB
    .byt $8a,   0                                                     // 87c5: 8a 00       ..
    .asc "TRACE"                                                      // 87c7: 54 52 41... TRA
    .byt $fc, $12                                                     // 87cc: fc 12       ..
    .asc "TIME"                                                       // 87ce: 54 49 4d... TIM
    .byt $91                                                          // 87d2: 91          .
    .asc "CTRUE"                                                      // 87d3: 43 54 52... CTR
    .byt $b9,   1                                                     // 87d8: b9 01       ..
    .asc "UNTIL"                                                      // 87da: 55 4e 54... UNT
    .byt $fd,   2                                                     // 87df: fd 02       ..
    .asc "USR"                                                        // 87e1: 55 53 52    USR
    .byt $ba,   0                                                     // 87e4: ba 00       ..
    .asc "VDU"                                                        // 87e6: 56 44 55    VDU
    .byt $ef,   2                                                     // 87e9: ef 02       ..
    .asc "VAL"                                                        // 87eb: 56 41 4c    VAL
    .byt $bb,   0                                                     // 87ee: bb 00       ..
    .asc "VPOS"                                                       // 87f0: 56 50 4f... VPO
    .byt $bc,   1                                                     // 87f4: bc 01       ..
    .asc "WIDTH"                                                      // 87f6: 57 49 44... WID
    .byt $fe,   2                                                     // 87fb: fe 02       ..
    .asc "PAGE"                                                       // 87fd: 50 41 47... PAG
    .byt $d0,   0                                                     // 8801: d0 00       ..
    .asc "PTR"                                                        // 8803: 50 54 52    PTR
    .byt $cf,   0, $54, $49                                           // 8806: cf 00 54... ..T
// $880a referenced 1 time by $90e0
l880a
    .byt $4d, $45, $d1,   0                                           // 880a: 4d 45 d1... ME.
    .asc "LOMEM"                                                      // 880e: 4c 4f 4d... LOM
    .byt $d2,   0                                                     // 8813: d2 00       ..
    .asc "HIMEM"                                                      // 8815: 48 49 4d... HIM
    .byt $d3,   0                                                     // 881a: d3 00       ..
    .asc "Missing "                                                   // 881c: 4d 69 73... Mis
    .byt $8d,   0                                                     // 8824: 8d 00       ..
l8826
l8909 = l8826+227
    .word sub_cab37, sub_cab21, sub_cae50, sub_cae8c, sub_cae71       // 8826: 37 ab 21... 7.!
    .word sub_cae77, sub_cad00, sub_ca6fc, sub_cae34, sub_cac03       // 8830: 77 ae 00... w..
    .word sub_ca901, sub_ca919, sub_cab2f, sub_ca954, sub_cae6d       // 883a: 01 a9 19... ...
    .word sub_ca9ca, sub_cae7d, sub_cae83, sub_cab5c, sub_caa17       // 8844: ca a9 7d... ..}
    .word sub_cab1d,     cac38, sub_cb055, sub_cae87, sub_cac12       // 884e: 1d ab 38... ..8
    .word sub_cac7f, sub_cabe1, sub_cae59, sub_ca7ac, sub_ca9bc       // 8858: 7f ac e1... ...
    .word sub_caaeb, sub_cab3f, sub_cab3b, sub_cab54, sub_cac5d       // 8862: eb aa 3f... ..?
    .word sub_caafb, sub_ca9b5, sub_caacb, sub_cac46, sub_ca94f       // 886c: fb aa b5... ...
    .word sub_ca808, sub_ca96b, sub_cae41,     cac2b, sub_cab01       // 8876: 08 a8 6b... ..k
    .word sub_caba0, sub_cab14, sub_cb269, sub_caeb1, sub_caefb       // 8880: a0 ab 14... ...
    .word sub_caebb, sub_caf0a, sub_caebc, sub_caf61, sub_caf8b       // 888a: bb ae 0a... ...
    .word sub_cac1f, sub_c954c, sub_c93da, sub_c8fe5, sub_cb412       // 8894: 1f ac 4c... ..L
    .word sub_c9042, sub_c8fc5, sub_c9447, sub_cbe95, sub_cb3c8       // 889e: 42 90 c5... B..
    .word sub_cbed7, sub_c96f9, sub_c973e, sub_c96e5, sub_c96d4       // 88a8: d7 be f9... ...
    .word sub_cb302, sub_cbefd, sub_c9381, sub_c8fc0, sub_c9703       // 88b2: 02 b3 fd... ...
    .word sub_cbeee, sub_c98af, sub_c98b6,     c9073,     c9073       // 88bc: ee be af... ...
    .word     c95f9, sub_c9875, sub_c8fea, sub_c9c5e, sub_cb326       // 88c6: f9 95 75... ..u
    .word sub_cb649, sub_cb709, sub_cb74d, sub_c9810, sub_c9ccc       // 88d0: 49 b6 09... I..
    .word sub_cb8e6, sub_c910d,     c97d2, sub_c982e, sub_c9871       // 88da: e6 b8 0d... ...
    .word     cb522, sub_cb78b,     c98dc, sub_c9880, sub_c9250       // 88e4: 22 b5 8b... "..
    .word sub_c97a9,     cb9ad,     c9073, sub_cba88, sub_c98c3       // 88ee: a9 97 ad... ...
    .word sub_cb97d, sub_cb737, sub_c8fd7, sub_c9149, sub_c9824       // 88f8: 7d b9 37... }.7
    .word sub_c970b, sub_cba47, sub_cb351, sub_cbec7, sub_c834b       // 8902: 0b 97 47... ..G
    .word sub_c8984, sub_cb896                                        // 890c: 84 89 96... ...
// $8909 referenced 1 time by $8ae3
    .byt $b9, $d8, $d9, $f0,   1, $10, $81, $90, $89, $93, $a3, $a4   // 8910: b9 d8 d9... ...
    .byt $a9                                                          // 891c: a9          .
    .asc "89x"                                                        // 891d: 38 39 78    89x
    .byt   1, $13, $21, $a1, $c1, $19, $18, $99, $98, $63, $73, $b1   // 8920: 01 13 21... ..!
    .byt $a9, $c5, $0c, $c3, $d3, $41, $c4, $f2, $41, $83, $b0, $81   // 892c: a9 c5 0c... ...
    .asc "Clr"                                                        // 8938: 43 6c 72    Clr
    .byt $ec, $f2, $a3, $c3, $92, $9a, $18, $19                       // 893b: ec f2 a3... ...
    .asc "bB4"                                                        // 8943: 62 42 34    bB4
    .byt $b0, $72, $98, $99, $81, $98, $99, $14                       // 8946: b0 72 98... .r.
// $894e referenced 1 time by $8ae8
l894e
    .byt $35, $0a, $0d, $0d, $0d, $0d, $10, $10                       // 894e: 35 0a 0d... 5..
    .asc "%%9AAAAJJLLLPPRSSS"                                         // 8956: 25 25 39... %%9
    .byt $10                                                          // 8968: 10          .
    .asc "%AAAA"                                                      // 8969: 25 41 41... %AA
    .byt   8,   8,   8,   9,   9, $0a, $0a, $0a, $0a,   5, $15, $3e   // 896e: 08 08 08... ...
    .byt   4, $0d, $30, $4c,   6                                      // 897a: 04 0d 30... ..0
    .asc "2II"                                                        // 897f: 32 49 49    2II
    .byt $10, $25                                                     // 8982: 10 25       .%

sub_c8984
    ora l0e4e                                                         // 8984: 0d 4e 0e    .N.
    asl l5252                                                         // 8987: 0e 52 52    .RR
    ora #$29 // ')'                                                   // 898a: 09 29       .)
    rol                                                               // 898c: 2a          *
    bmi c89bf                                                         // 898d: 30 30       00
    lsr l4e4e                                                         // 898f: 4e 4e 4e    NNN
sub_c8992
l8993 = sub_c8992+1
    rol !l0016,x                                                      // 8992: 3e 16 00    >..
// $8993 referenced 1 time by $8b10
    clc                                                               // 8995: 18          .
    cld                                                               // 8996: d8          .
    cli                                                               // 8997: 58          X
    clv                                                               // 8998: b8          .
    dex                                                               // 8999: ca          .
    dey                                                               // 899a: 88          .
    inx                                                               // 899b: e8          .
    iny                                                               // 899c: c8          .
    nop                                                               // 899d: ea          .
    pha                                                               // 899e: 48          H
    php                                                               // 899f: 08          .
    pla                                                               // 89a0: 68          h
    plp                                                               // 89a1: 28          (
    rti                                                               // 89a2: 40          @

    .byt $60, $38, $f8, $78, $aa, $a8, $ba, $8a, $9a, $98, $3a, $1a   // 89a3: 60 38 f8... `8.
    .byt $5a, $da, $7a, $fa, $90, $b0, $f0, $30, $d0, $10, $50, $70   // 89af: 5a da 7a... Z.z
    .byt $80, $21, $41,   1                                           // 89bb: 80 21 41... .!A

// $89bf referenced 1 time by $898d
c89bf
    adc (l00c1,x)                                                     // 89bf: 61 c1       a.
    lda (l00e1,x)                                                     // 89c1: a1 e1       ..
    asl l0046                                                         // 89c3: 06 46       .F
    rol l0066                                                         // 89c5: 26 66       &f
    dec l00e6                                                         // 89c7: c6 e6       ..
    stz le09c                                                         // 89c9: 9c 9c e0    ...
    cpy #0                                                            // 89cc: c0 00       ..
    bpl c89f4                                                         // 89ce: 10 24       .$
    jmp ca220                                                         // 89d0: 4c 20 a2    L .

    .byt $a0, $81, $86, $84                                           // 89d3: a0 81 86... ...

// $89d7 referenced 1 time by $89e2
loop_c89d7
    dec                                                               // 89d7: 3a          :
    sta l0028                                                         // 89d8: 85 28       .(
    jmp c90d0                                                         // 89da: 4c d0 90    L..

// $89dd referenced 2 times by $8a8e, $90aa
c89dd
    jsr c8f9d                                                         // 89dd: 20 9d 8f     ..
    eor #$5d // ']'                                                   // 89e0: 49 5d       I]
    beq loop_c89d7                                                    // 89e2: f0 f3       ..
    jsr c9c80                                                         // 89e4: 20 80 9c     ..
    dec l000a                                                         // 89e7: c6 0a       ..
    jsr sub_c8aa8                                                     // 89e9: 20 a8 8a     ..
    dec l000a                                                         // 89ec: c6 0a       ..
    lda l0028                                                         // 89ee: a5 28       .(
    lsr                                                               // 89f0: 4a          J
    bcc c8a6b                                                         // 89f1: 90 78       .x
// overlapping: lda l001e                                             // 89f3: a5 1e       ..
    .byt $a5                                                          // 89f3: a5          .

// $89f4 referenced 1 time by $89ce
c89f4
    asl l0469,x                                                       // 89f4: 1e 69 04    .i.
// overlapping: adc #4                                                // 89f5: 69 04       i.
    sta l003f                                                         // 89f7: 85 3f       .?
    lda l0038                                                         // 89f9: a5 38       .8
    jsr sub_cbdac                                                     // 89fb: 20 ac bd     ..
    lda l0037                                                         // 89fe: a5 37       .7
    jsr sub_cbdcf                                                     // 8a00: 20 cf bd     ..
    ldx #$fc                                                          // 8a03: a2 fc       ..
    ldy l0039                                                         // 8a05: a4 39       .9
    bpl c8a0b                                                         // 8a07: 10 02       ..
    ldy l0036                                                         // 8a09: a4 36       .6
// $8a0b referenced 1 time by $8a07
c8a0b
    sty l0038                                                         // 8a0b: 84 38       .8
    beq c8a28                                                         // 8a0d: f0 19       ..
    ldy #0                                                            // 8a0f: a0 00       ..
// $8a11 referenced 1 time by $8a26
loop_c8a11
    inx                                                               // 8a11: e8          .
    bne c8a1e                                                         // 8a12: d0 0a       ..
    jsr sub_cbac2                                                     // 8a14: 20 c2 ba     ..
    ldx l003f                                                         // 8a17: a6 3f       .?
    jsr cbdff                                                         // 8a19: 20 ff bd     ..
    ldx #$fd                                                          // 8a1c: a2 fd       ..
// $8a1e referenced 1 time by $8a12
c8a1e
    lda (l003a),y                                                     // 8a1e: b1 3a       .:
    jsr sub_cbdcf                                                     // 8a20: 20 cf bd     ..
    iny                                                               // 8a23: c8          .
    dec l0038                                                         // 8a24: c6 38       .8
    bne loop_c8a11                                                    // 8a26: d0 e9       ..
// $8a28 referenced 1 time by $8a0d
c8a28
    txa                                                               // 8a28: 8a          .
    tay                                                               // 8a29: a8          .
// $8a2a referenced 1 time by $8a32
loop_c8a2a
    iny                                                               // 8a2a: c8          .
    beq c8a34                                                         // 8a2b: f0 07       ..
    ldx #3                                                            // 8a2d: a2 03       ..
    jsr cbdff                                                         // 8a2f: 20 ff bd     ..
    bra loop_c8a2a                                                    // 8a32: 80 f6       ..
// $8a34 referenced 1 time by $8a2b
c8a34
    ldx #$0a                                                          // 8a34: a2 0a       ..
    lda (l000b)                                                       // 8a36: b2 0b       ..
    cmp #$2e // '.'                                                   // 8a38: c9 2e       ..
    bne c8a4b                                                         // 8a3a: d0 0f       ..
// $8a3c referenced 1 time by $8a49
loop_c8a3c
    jsr sub_cbd77                                                     // 8a3c: 20 77 bd     w.
    dex                                                               // 8a3f: ca          .
    bne c8a44                                                         // 8a40: d0 02       ..
    ldx #1                                                            // 8a42: a2 01       ..
// $8a44 referenced 1 time by $8a40
c8a44
    iny                                                               // 8a44: c8          .
    lda (l000b),y                                                     // 8a45: b1 0b       ..
    cpy l004e                                                         // 8a47: c4 4e       .N
    bne loop_c8a3c                                                    // 8a49: d0 f1       ..
// $8a4b referenced 1 time by $8a3a
c8a4b
    jsr cbdff                                                         // 8a4b: 20 ff bd     ..
    dey                                                               // 8a4e: 88          .
// $8a4f referenced 1 time by $8a52
loop_c8a4f
    iny                                                               // 8a4f: c8          .
    cmp (l000b),y                                                     // 8a50: d1 0b       ..
    beq loop_c8a4f                                                    // 8a52: f0 fb       ..
// $8a54 referenced 1 time by $8a62
loop_c8a54
    lda (l000b),y                                                     // 8a54: b1 0b       ..
    cmp #$3a // ':'                                                   // 8a56: c9 3a       .:
    beq c8a64                                                         // 8a58: f0 0a       ..
    cmp #$0d                                                          // 8a5a: c9 0d       ..
    beq c8a68                                                         // 8a5c: f0 0a       ..
// $8a5e referenced 1 time by $8a66
loop_c8a5e
    jsr sub_cbd77                                                     // 8a5e: 20 77 bd     w.
    iny                                                               // 8a61: c8          .
    bra loop_c8a54                                                    // 8a62: 80 f0       ..
// $8a64 referenced 1 time by $8a58
c8a64
    cpy l000a                                                         // 8a64: c4 0a       ..
    bcc loop_c8a5e                                                    // 8a66: 90 f6       ..
// $8a68 referenced 1 time by $8a5c
c8a68
    jsr sub_cbac2                                                     // 8a68: 20 c2 ba     ..
// $8a6b referenced 1 time by $89f1
c8a6b
    ldy l000a                                                         // 8a6b: a4 0a       ..
    dey                                                               // 8a6d: 88          .
// $8a6e referenced 1 time by $8a77
loop_c8a6e
    iny                                                               // 8a6e: c8          .
    lda (l000b),y                                                     // 8a6f: b1 0b       ..
    cmp #$3a // ':'                                                   // 8a71: c9 3a       .:
    beq c8a79                                                         // 8a73: f0 04       ..
    cmp #$0d                                                          // 8a75: c9 0d       ..
    bne loop_c8a6e                                                    // 8a77: d0 f5       ..
// $8a79 referenced 1 time by $8a73
c8a79
    jsr c9c6c                                                         // 8a79: 20 6c 9c     l.
    lda (l000b)                                                       // 8a7c: b2 0b       ..
    cmp #$3a // ':'                                                   // 8a7e: c9 3a       .:
    beq c8a8e                                                         // 8a80: f0 0c       ..
    lda l000c                                                         // 8a82: a5 0c       ..
    cmp #7                                                            // 8a84: c9 07       ..
    bne c8a8b                                                         // 8a86: d0 03       ..
    jmp c904b                                                         // 8a88: 4c 4b 90    LK.

// $8a8b referenced 1 time by $8a86
c8a8b
    jsr sub_c9ca2                                                     // 8a8b: 20 a2 9c     ..
// $8a8e referenced 1 time by $8a80
c8a8e
    jmp c89dd                                                         // 8a8e: 4c dd 89    L..

// $8a91 referenced 1 time by $8abd
c8a91
    jsr sub_c997d                                                     // 8a91: 20 7d 99     }.
    beq c8af2                                                         // 8a94: f0 5c       .\ 
    bcs c8af2                                                         // 8a96: b0 5a       .Z
    jsr sub_cbc83                                                     // 8a98: 20 83 bc     ..
    jsr sub_cadc6                                                     // 8a9b: 20 c6 ad     ..
    sta l0027                                                         // 8a9e: 85 27       .'
    jsr sub_cb365                                                     // 8aa0: 20 65 b3     e.
    jsr c9338                                                         // 8aa3: 20 38 93     8.
    sty l004e                                                         // 8aa6: 84 4e       .N
// $8aa8 referenced 1 time by $89e9
sub_c8aa8
    jsr c8f9d                                                         // 8aa8: 20 9d 8f     ..
    ldy #0                                                            // 8aab: a0 00       ..
    stz l003d                                                         // 8aad: 64 3d       d=
    cmp #$3a // ':'                                                   // 8aaf: c9 3a       .:
    beq c8b1b                                                         // 8ab1: f0 68       .h
    cmp #$0d                                                          // 8ab3: c9 0d       ..
    beq c8b1b                                                         // 8ab5: f0 64       .d
    cmp #$5c // '\'                                                   // 8ab7: c9 5c       .\ 
    beq c8b1b                                                         // 8ab9: f0 60       .`
    cmp #$2e // '.'                                                   // 8abb: c9 2e       ..
    beq c8a91                                                         // 8abd: f0 d2       ..
    dec l000a                                                         // 8abf: c6 0a       ..
    ldx #3                                                            // 8ac1: a2 03       ..
// $8ac3 referenced 1 time by $8add
loop_c8ac3
    ldy l000a                                                         // 8ac3: a4 0a       ..
    inc l000a                                                         // 8ac5: e6 0a       ..
    lda (l000b),y                                                     // 8ac7: b1 0b       ..
    bmi c8af5                                                         // 8ac9: 30 2a       0*
    cmp #$20 // ' '                                                   // 8acb: c9 20       .
    beq c8adf                                                         // 8acd: f0 10       ..
    ldy #5                                                            // 8acf: a0 05       ..
    asl                                                               // 8ad1: 0a          .
    asl                                                               // 8ad2: 0a          .
    asl                                                               // 8ad3: 0a          .
// $8ad4 referenced 1 time by $8ada
loop_c8ad4
    asl                                                               // 8ad4: 0a          .
    rol l003d                                                         // 8ad5: 26 3d       &=
    rol l003e                                                         // 8ad7: 26 3e       &>
    dey                                                               // 8ad9: 88          .
    bne loop_c8ad4                                                    // 8ada: d0 f8       ..
    dex                                                               // 8adc: ca          .
    bne loop_c8ac3                                                    // 8add: d0 e4       ..
// $8adf referenced 1 time by $8acd
c8adf
    ldx #$45 // 'E'                                                   // 8adf: a2 45       .E
    lda l003d                                                         // 8ae1: a5 3d       .=
// $8ae3 referenced 1 time by $8af0
loop_c8ae3
    cmp l8909,x                                                       // 8ae3: dd 09 89    ...
    bne c8aef                                                         // 8ae6: d0 07       ..
    ldy l894e,x                                                       // 8ae8: bc 4e 89    .N.
    cpy l003e                                                         // 8aeb: c4 3e       .>
    beq c8b10                                                         // 8aed: f0 21       .!
// $8aef referenced 1 time by $8ae6
c8aef
    dex                                                               // 8aef: ca          .
    bne loop_c8ae3                                                    // 8af0: d0 f1       ..
// $8af2 referenced 4 times by $8a94, $8a96, $8b03, $8b0e
c8af2
    jmp c9c2d                                                         // 8af2: 4c 2d 9c    L-.

// $8af5 referenced 1 time by $8ac9
c8af5
    ldx #$29 // ')'                                                   // 8af5: a2 29       .)
    cmp #$80                                                          // 8af7: c9 80       ..
    beq c8b10                                                         // 8af9: f0 15       ..
    inx                                                               // 8afb: e8          .
    cmp #$82                                                          // 8afc: c9 82       ..
    beq c8b10                                                         // 8afe: f0 10       ..
    inx                                                               // 8b00: e8          .
    cmp #$84                                                          // 8b01: c9 84       ..
    bne c8af2                                                         // 8b03: d0 ed       ..
    inc l000a                                                         // 8b05: e6 0a       ..
    iny                                                               // 8b07: c8          .
    lda (l000b),y                                                     // 8b08: b1 0b       ..
    and #$df                                                          // 8b0a: 29 df       ).
    cmp #$41 // 'A'                                                   // 8b0c: c9 41       .A
    bne c8af2                                                         // 8b0e: d0 e2       ..
// $8b10 referenced 3 times by $8aed, $8af9, $8afe
c8b10
    lda l8993,x                                                       // 8b10: bd 93 89    ...
    sta l0029                                                         // 8b13: 85 29       .)
    ldy #1                                                            // 8b15: a0 01       ..
    cpx #$20 // ' '                                                   // 8b17: e0 20       .
    bcs c8b63                                                         // 8b19: b0 48       .H
// $8b1b referenced 6 times by $8ab1, $8ab5, $8ab9, $8ba0, $8cbd, $8d6e
c8b1b
    lda l0440                                                         // 8b1b: ad 40 04    .@.
    sta l0037                                                         // 8b1e: 85 37       .7
    sty l0039                                                         // 8b20: 84 39       .9
    ldx l0028                                                         // 8b22: a6 28       .(
    cpx #4                                                            // 8b24: e0 04       ..
    ldx l0441                                                         // 8b26: ae 41 04    .A.
    stx l0038                                                         // 8b29: 86 38       .8
    bcc c8b33                                                         // 8b2b: 90 06       ..
    lda l043c                                                         // 8b2d: ad 3c 04    .<.
    ldx l043d                                                         // 8b30: ae 3d 04    .=.
// $8b33 referenced 1 time by $8b2b
c8b33
    sta l003a                                                         // 8b33: 85 3a       .:
    stx l003b                                                         // 8b35: 86 3b       .;
    tya                                                               // 8b37: 98          .
    beq c8b62                                                         // 8b38: f0 28       .(
    bpl c8b40                                                         // 8b3a: 10 04       ..
    ldy l0036                                                         // 8b3c: a4 36       .6
    beq c8b62                                                         // 8b3e: f0 22       ."
// $8b40 referenced 2 times by $8b3a, $8b60
c8b40
    dey                                                               // 8b40: 88          .
    lda l0029,y                                                       // 8b41: b9 29 00    .).
    bit l0039                                                         // 8b44: 24 39       $9
    bpl c8b4b                                                         // 8b46: 10 03       ..
    lda l0600,y                                                       // 8b48: b9 00 06    ...
// $8b4b referenced 1 time by $8b46
c8b4b
    sta (l003a),y                                                     // 8b4b: 91 3a       .:
    inc l0440                                                         // 8b4d: ee 40 04    .@.
    bne c8b55                                                         // 8b50: d0 03       ..
    inc l0441                                                         // 8b52: ee 41 04    .A.
// $8b55 referenced 1 time by $8b50
c8b55
    bcc c8b5f                                                         // 8b55: 90 08       ..
    inc l043c                                                         // 8b57: ee 3c 04    .<.
    bne c8b5f                                                         // 8b5a: d0 03       ..
    inc l043d                                                         // 8b5c: ee 3d 04    .=.
// $8b5f referenced 2 times by $8b55, $8b5a
c8b5f
    tya                                                               // 8b5f: 98          .
    bne c8b40                                                         // 8b60: d0 de       ..
// $8b62 referenced 2 times by $8b38, $8b3e
c8b62
    rts                                                               // 8b62: 60          `

// $8b63 referenced 1 time by $8b19
c8b63
    cpx #$29 // ')'                                                   // 8b63: e0 29       .)
    bcs c8ba3                                                         // 8b65: b0 3c       .<
    jsr sub_c9332                                                     // 8b67: 20 32 93     2.
    clc                                                               // 8b6a: 18          .
    lda l002a                                                         // 8b6b: a5 2a       .*
    sbc l0440                                                         // 8b6d: ed 40 04    .@.
    tay                                                               // 8b70: a8          .
    lda l002b                                                         // 8b71: a5 2b       .+
    sbc l0441                                                         // 8b73: ed 41 04    .A.
    cpy #1                                                            // 8b76: c0 01       ..
    dey                                                               // 8b78: 88          .
    sbc #0                                                            // 8b79: e9 00       ..
    beq c8b98                                                         // 8b7b: f0 1b       ..
    inc                                                               // 8b7d: 1a          .
    bne c8b83                                                         // 8b7e: d0 03       ..
    tya                                                               // 8b80: 98          .
    bmi c8b9c                                                         // 8b81: 30 19       0.
// $8b83 referenced 2 times by $8b7e, $8b99
c8b83
    lda l0028                                                         // 8b83: a5 28       .(
    and #2                                                            // 8b85: 29 02       ).
    beq c8b9b                                                         // 8b87: f0 12       ..
    brk                                                               // 8b89: 00          .

    .byt 1                                                            // 8b8a: 01          .
    .asc "Out of range"                                               // 8b8b: 4f 75 74... Out
    .byt 0                                                            // 8b97: 00          .

// $8b98 referenced 1 time by $8b7b
c8b98
    tya                                                               // 8b98: 98          .
    bmi c8b83                                                         // 8b99: 30 e8       0.
// $8b9b referenced 1 time by $8b87
c8b9b
    tay                                                               // 8b9b: a8          .
// $8b9c referenced 1 time by $8b81
c8b9c
    sty l002a                                                         // 8b9c: 84 2a       .*
// $8b9e referenced 1 time by $8bb4
loop_c8b9e
    ldy #2                                                            // 8b9e: a0 02       ..
    jmp c8b1b                                                         // 8ba0: 4c 1b 8b    L..

// $8ba3 referenced 1 time by $8b65
c8ba3
    cpx #$30 // '0'                                                   // 8ba3: e0 30       .0
    bcs c8bbd                                                         // 8ba5: b0 16       ..
    jsr sub_c8d9c                                                     // 8ba7: 20 9c 8d     ..
    bne c8bc4                                                         // 8baa: d0 18       ..
    jsr sub_c8d89                                                     // 8bac: 20 89 8d     ..
// $8baf referenced 1 time by $8ca4
c8baf
    jsr sub_c9332                                                     // 8baf: 20 32 93     2.
// $8bb2 referenced 3 times by $8bdc, $8be5, $8bf7
c8bb2
    lda l002b                                                         // 8bb2: a5 2b       .+
// $8bb4 referenced 1 time by $8c22
c8bb4
    beq loop_c8b9e                                                    // 8bb4: f0 e8       ..
// $8bb6 referenced 1 time by $8d31
c8bb6
    brk                                                               // 8bb6: 00          .

    .byt 2                                                            // 8bb7: 02          .
    .asc "Byte"                                                       // 8bb8: 42 79 74... Byt
    .byt 0                                                            // 8bbc: 00          .

// $8bbd referenced 1 time by $8ba5
c8bbd
    cpx #$41 // 'A'                                                   // 8bbd: e0 41       .A
    bne c8c24                                                         // 8bbf: d0 63       .c
    jsr c8f9d                                                         // 8bc1: 20 9d 8f     ..
// $8bc4 referenced 1 time by $8baa
c8bc4
    cmp #$28 // '('                                                   // 8bc4: c9 28       .(
    bne c8c01                                                         // 8bc6: d0 39       .9
    jsr sub_c9332                                                     // 8bc8: 20 32 93     2.
    jsr c8f9d                                                         // 8bcb: 20 9d 8f     ..
    cmp #$29 // ')'                                                   // 8bce: c9 29       .)
    bne c8be9                                                         // 8bd0: d0 17       ..
    jsr sub_c8d86                                                     // 8bd2: 20 86 8d     ..
    jsr sub_c8da2                                                     // 8bd5: 20 a2 8d     ..
    beq c8bde                                                         // 8bd8: f0 04       ..
    inc l0029                                                         // 8bda: e6 29       .)
    bra c8bb2                                                         // 8bdc: 80 d4       ..
// $8bde referenced 1 time by $8bd8
c8bde
    jsr c8f9d                                                         // 8bde: 20 9d 8f     ..
    and #$df                                                          // 8be1: 29 df       ).
    cmp #$59 // 'Y'                                                   // 8be3: c9 59       .Y
    beq c8bb2                                                         // 8be5: f0 cb       ..
    bra c8bf9                                                         // 8be7: 80 10       ..
// $8be9 referenced 1 time by $8bd0
c8be9
    cmp #$2c // ','                                                   // 8be9: c9 2c       .,
    bne c8bf9                                                         // 8beb: d0 0c       ..
    jsr sub_c8d94                                                     // 8bed: 20 94 8d     ..
    bne c8bf9                                                         // 8bf0: d0 07       ..
    jsr c8f9d                                                         // 8bf2: 20 9d 8f     ..
    cmp #$29 // ')'                                                   // 8bf5: c9 29       .)
    beq c8bb2                                                         // 8bf7: f0 b9       ..
// $8bf9 referenced 6 times by $8be7, $8beb, $8bf0, $8c13, $8c41, $8ce3
c8bf9
    brk                                                               // 8bf9: 00          .

    .byt 3                                                            // 8bfa: 03          .
    .asc "Index"                                                      // 8bfb: 49 6e 64... Ind
    .byt 0                                                            // 8c00: 00          .

// $8c01 referenced 1 time by $8bc6
c8c01
    jsr sub_c9330                                                     // 8c01: 20 30 93     0.
    jsr sub_c8da2                                                     // 8c04: 20 a2 8d     ..
    bne c8c1b                                                         // 8c07: d0 12       ..
    jsr sub_c8d86                                                     // 8c09: 20 86 8d     ..
    jsr sub_c8d94                                                     // 8c0c: 20 94 8d     ..
    beq c8c1b                                                         // 8c0f: f0 0a       ..
    cmp #$59 // 'Y'                                                   // 8c11: c9 59       .Y
    bne c8bf9                                                         // 8c13: d0 e4       ..
// $8c15 referenced 1 time by $8c20
loop_c8c15
    jsr sub_c8d89                                                     // 8c15: 20 89 8d     ..
    jmp c8cbb                                                         // 8c18: 4c bb 8c    L..

// $8c1b referenced 3 times by $8c07, $8c0f, $8c99
c8c1b
    jsr sub_c8d8c                                                     // 8c1b: 20 8c 8d     ..
// $8c1e referenced 3 times by $8c37, $8c3f, $8d34
c8c1e
    lda l002b                                                         // 8c1e: a5 2b       .+
    bne loop_c8c15                                                    // 8c20: d0 f3       ..
    bra c8bb4                                                         // 8c22: 80 90       ..
// $8c24 referenced 1 time by $8bbf
c8c24
    cpx #$36 // '6'                                                   // 8c24: e0 36       .6
    bcs c8c5e                                                         // 8c26: b0 36       .6
    jsr c8f9d                                                         // 8c28: 20 9d 8f     ..
    and #$df                                                          // 8c2b: 29 df       ).
    cmp #$41 // 'A'                                                   // 8c2d: c9 41       .A
    beq c8c43                                                         // 8c2f: f0 12       ..
// $8c31 referenced 2 times by $8c49, $8c9e
c8c31
    jsr sub_c9330                                                     // 8c31: 20 30 93     0.
    jsr sub_c8da2                                                     // 8c34: 20 a2 8d     ..
    bne c8c1e                                                         // 8c37: d0 e5       ..
    jsr sub_c8d86                                                     // 8c39: 20 86 8d     ..
    jsr sub_c8d94                                                     // 8c3c: 20 94 8d     ..
    beq c8c1e                                                         // 8c3f: f0 dd       ..
// $8c41 referenced 1 time by $8c7d
c8c41
    bra c8bf9                                                         // 8c41: 80 b6       ..
// $8c43 referenced 1 time by $8c2f
c8c43
    iny                                                               // 8c43: c8          .
    lda (l000b),y                                                     // 8c44: b1 0b       ..
    jsr sub_c8e41                                                     // 8c46: 20 41 8e     A.
    bcs c8c31                                                         // 8c49: b0 e6       ..
    ldy #$16                                                          // 8c4b: a0 16       ..
    cpx #$34 // '4'                                                   // 8c4d: e0 34       .4
    bcc c8c57                                                         // 8c4f: 90 06       ..
    bne c8c55                                                         // 8c51: d0 02       ..
    ldy #$36 // '6'                                                   // 8c53: a0 36       .6
// $8c55 referenced 1 time by $8c51
c8c55
    sty l0029                                                         // 8c55: 84 29       .)
// $8c57 referenced 1 time by $8c4f
c8c57
    jsr sub_c8d8c                                                     // 8c57: 20 8c 8d     ..
    ldy #1                                                            // 8c5a: a0 01       ..
    bra c8cbd                                                         // 8c5c: 80 5f       ._
// $8c5e referenced 1 time by $8c26
c8c5e
    cpx #$38 // '8'                                                   // 8c5e: e0 38       .8
    bcs c8c87                                                         // 8c60: b0 25       .%
    jsr sub_c9332                                                     // 8c62: 20 32 93     2.
    ldy #3                                                            // 8c65: a0 03       ..
    ldx #1                                                            // 8c67: a2 01       ..
    lda l002b                                                         // 8c69: a5 2b       .+
    bne c8c74                                                         // 8c6b: d0 07       ..
    ldx #$0f                                                          // 8c6d: a2 0f       ..
    lda #$64 // 'd'                                                   // 8c6f: a9 64       .d
    sta l0029                                                         // 8c71: 85 29       .)
    dey                                                               // 8c73: 88          .
// $8c74 referenced 1 time by $8c6b
c8c74
    phy                                                               // 8c74: 5a          Z
    jsr sub_c8da2                                                     // 8c75: 20 a2 8d     ..
    bne c8c84                                                         // 8c78: d0 0a       ..
    jsr sub_c8d94                                                     // 8c7a: 20 94 8d     ..
    bne c8c41                                                         // 8c7d: d0 c2       ..
    txa                                                               // 8c7f: 8a          .
    adc l0029                                                         // 8c80: 65 29       e)
    sta l0029                                                         // 8c82: 85 29       .)
// $8c84 referenced 1 time by $8c78
c8c84
    ply                                                               // 8c84: 7a          z
    bra c8cbd                                                         // 8c85: 80 36       .6
// $8c87 referenced 1 time by $8c60
c8c87
    cpx #$3c // '<'                                                   // 8c87: e0 3c       .<
    bcs c8ca7                                                         // 8c89: b0 1c       ..
    cpx #$3a // ':'                                                   // 8c8b: e0 3a       .:
    bcs c8c96                                                         // 8c8d: b0 07       ..
    jsr sub_c8d9c                                                     // 8c8f: 20 9c 8d     ..
    beq c8ca4                                                         // 8c92: f0 10       ..
    dec l000a                                                         // 8c94: c6 0a       ..
// $8c96 referenced 1 time by $8c8d
c8c96
    jsr sub_c9332                                                     // 8c96: 20 32 93     2.
// $8c99 referenced 2 times by $8d06, $8d14
c8c99
    bra c8c1b                                                         // 8c99: 80 80       ..
// $8c9b referenced 1 time by $8ca7
loop_c8c9b
    jsr sub_c8d9c                                                     // 8c9b: 20 9c 8d     ..
    bne c8c31                                                         // 8c9e: d0 91       ..
    ldy #$89                                                          // 8ca0: a0 89       ..
    sty l0029                                                         // 8ca2: 84 29       .)
// $8ca4 referenced 2 times by $8c92, $8cfb
c8ca4
    jmp c8baf                                                         // 8ca4: 4c af 8b    L..

// $8ca7 referenced 1 time by $8c89
c8ca7
    beq loop_c8c9b                                                    // 8ca7: f0 f2       ..
    cpx #$3e // '>'                                                   // 8ca9: e0 3e       .>
    beq c8cb8                                                         // 8cab: f0 0b       ..
    bcs c8ce6                                                         // 8cad: b0 37       .7
    jsr c8f9d                                                         // 8caf: 20 9d 8f     ..
    cmp #$28 // '('                                                   // 8cb2: c9 28       .(
    beq c8cc0                                                         // 8cb4: f0 0a       ..
    dec l000a                                                         // 8cb6: c6 0a       ..
// $8cb8 referenced 1 time by $8cab
c8cb8
    jsr sub_c9332                                                     // 8cb8: 20 32 93     2.
// $8cbb referenced 3 times by $8c18, $8cce, $8ce1
c8cbb
    ldy #3                                                            // 8cbb: a0 03       ..
// $8cbd referenced 2 times by $8c5c, $8c85
c8cbd
    jmp c8b1b                                                         // 8cbd: 4c 1b 8b    L..

// $8cc0 referenced 1 time by $8cb4
c8cc0
    jsr sub_c8d86                                                     // 8cc0: 20 86 8d     ..
    jsr sub_c8d86                                                     // 8cc3: 20 86 8d     ..
    jsr sub_c9332                                                     // 8cc6: 20 32 93     2.
    jsr c8f9d                                                         // 8cc9: 20 9d 8f     ..
    cmp #$29 // ')'                                                   // 8ccc: c9 29       .)
    beq c8cbb                                                         // 8cce: f0 eb       ..
    cmp #$2c // ','                                                   // 8cd0: c9 2c       .,
    bne c8ce3                                                         // 8cd2: d0 0f       ..
    jsr sub_c8d86                                                     // 8cd4: 20 86 8d     ..
    jsr sub_c8d94                                                     // 8cd7: 20 94 8d     ..
    bne c8ce3                                                         // 8cda: d0 07       ..
    jsr c8f9d                                                         // 8cdc: 20 9d 8f     ..
    cmp #$29 // ')'                                                   // 8cdf: c9 29       .)
    beq c8cbb                                                         // 8ce1: f0 d8       ..
// $8ce3 referenced 4 times by $8cd2, $8cda, $8d0f, $8d28
c8ce3
    jmp c8bf9                                                         // 8ce3: 4c f9 8b    L..

// $8ce6 referenced 1 time by $8cad
c8ce6
    cpx #$44 // 'D'                                                   // 8ce6: e0 44       .D
    bcs c8d37                                                         // 8ce8: b0 4d       .M
    lda l003d                                                         // 8cea: a5 3d       .=
    eor #1                                                            // 8cec: 49 01       I.
    and #$1f                                                          // 8cee: 29 1f       ).
    pha                                                               // 8cf0: 48          H
    cpx #$41 // 'A'                                                   // 8cf1: e0 41       .A
    bcs c8d16                                                         // 8cf3: b0 21       .!
    jsr sub_c8d9c                                                     // 8cf5: 20 9c 8d     ..
    bne c8cfd                                                         // 8cf8: d0 03       ..
    pla                                                               // 8cfa: 68          h
    bra c8ca4                                                         // 8cfb: 80 a7       ..
// $8cfd referenced 1 time by $8cf8
c8cfd
    jsr sub_c9330                                                     // 8cfd: 20 30 93     0.
    pla                                                               // 8d00: 68          h
    sta l0037                                                         // 8d01: 85 37       .7
    jsr sub_c8da2                                                     // 8d03: 20 a2 8d     ..
    bne c8c99                                                         // 8d06: d0 91       ..
    jsr c8f9d                                                         // 8d08: 20 9d 8f     ..
    and #$1f                                                          // 8d0b: 29 1f       ).
    cmp l0037                                                         // 8d0d: c5 37       .7
    bne c8ce3                                                         // 8d0f: d0 d2       ..
    jsr sub_c8d86                                                     // 8d11: 20 86 8d     ..
    bra c8c99                                                         // 8d14: 80 83       ..
// $8d16 referenced 1 time by $8cf3
c8d16
    jsr sub_c9332                                                     // 8d16: 20 32 93     2.
    pla                                                               // 8d19: 68          h
    sta l0037                                                         // 8d1a: 85 37       .7
    jsr sub_c8da2                                                     // 8d1c: 20 a2 8d     ..
    bne c8d34                                                         // 8d1f: d0 13       ..
    jsr c8f9d                                                         // 8d21: 20 9d 8f     ..
    and #$1f                                                          // 8d24: 29 1f       ).
    cmp l0037                                                         // 8d26: c5 37       .7
    bne c8ce3                                                         // 8d28: d0 b9       ..
    jsr sub_c8d86                                                     // 8d2a: 20 86 8d     ..
    lda l002b                                                         // 8d2d: a5 2b       .+
    beq c8d34                                                         // 8d2f: f0 03       ..
    jmp c8bb6                                                         // 8d31: 4c b6 8b    L..

// $8d34 referenced 2 times by $8d1f, $8d2f
c8d34
    jmp c8c1e                                                         // 8d34: 4c 1e 8c    L..

// $8d37 referenced 1 time by $8ce8
c8d37
    bne c8d44                                                         // 8d37: d0 0b       ..
    jsr sub_c9332                                                     // 8d39: 20 32 93     2.
    lda l002a                                                         // 8d3c: a5 2a       .*
    sta l0028                                                         // 8d3e: 85 28       .(
    ldy #0                                                            // 8d40: a0 00       ..
    bra c8d6e                                                         // 8d42: 80 2a       .*
// $8d44 referenced 1 time by $8d37
c8d44
    ldx #1                                                            // 8d44: a2 01       ..
    ldy l000a                                                         // 8d46: a4 0a       ..
    inc l000a                                                         // 8d48: e6 0a       ..
    lda (l000b),y                                                     // 8d4a: b1 0b       ..
    and #$df                                                          // 8d4c: 29 df       ).
    cmp #$42 // 'B'                                                   // 8d4e: c9 42       .B
    beq c8d64                                                         // 8d50: f0 12       ..
    inx                                                               // 8d52: e8          .
    cmp #$57 // 'W'                                                   // 8d53: c9 57       .W
    beq c8d64                                                         // 8d55: f0 0d       ..
    ldx #4                                                            // 8d57: a2 04       ..
    cmp #$44 // 'D'                                                   // 8d59: c9 44       .D
    beq c8d64                                                         // 8d5b: f0 07       ..
    cmp #$53 // 'S'                                                   // 8d5d: c9 53       .S
    beq c8d74                                                         // 8d5f: f0 13       ..
    jmp c9c2d                                                         // 8d61: 4c 2d 9c    L-.

// $8d64 referenced 3 times by $8d50, $8d55, $8d5b
c8d64
    phx                                                               // 8d64: da          .
    jsr sub_c9332                                                     // 8d65: 20 32 93     2.
    ldx #$29 // ')'                                                   // 8d68: a2 29       .)
    jsr sub_cbe06                                                     // 8d6a: 20 06 be     ..
    ply                                                               // 8d6d: 7a          z
// $8d6e referenced 2 times by $8d42, $8d84
c8d6e
    jmp c8b1b                                                         // 8d6e: 4c 1b 8b    L..

// $8d71 referenced 1 time by $8d7a
loop_c8d71
    jmp c9155                                                         // 8d71: 4c 55 91    LU.

// $8d74 referenced 1 time by $8d5f
c8d74
    lda l0028                                                         // 8d74: a5 28       .(
    pha                                                               // 8d76: 48          H
    jsr sub_c9df3                                                     // 8d77: 20 f3 9d     ..
    bne loop_c8d71                                                    // 8d7a: d0 f5       ..
    pla                                                               // 8d7c: 68          h
    sta l0028                                                         // 8d7d: 85 28       .(
    jsr c9338                                                         // 8d7f: 20 38 93     8.
    ldy #$ff                                                          // 8d82: a0 ff       ..
    bra c8d6e                                                         // 8d84: 80 e8       ..
// $8d86 referenced 8 times by $8bd2, $8c09, $8c39, $8cc0, $8cc3, $8cd4, $8d11, $8d2a
sub_c8d86
    jsr sub_c8d89                                                     // 8d86: 20 89 8d     ..
// $8d89 referenced 3 times by $8bac, $8c15, $8d86
sub_c8d89
    jsr sub_c8d8c                                                     // 8d89: 20 8c 8d     ..
// $8d8c referenced 3 times by $8c1b, $8c57, $8d89
sub_c8d8c
    lda l0029                                                         // 8d8c: a5 29       .)
    clc                                                               // 8d8e: 18          .
    adc #4                                                            // 8d8f: 69 04       i.
    sta l0029                                                         // 8d91: 85 29       .)
    rts                                                               // 8d93: 60          `

// $8d94 referenced 5 times by $8bed, $8c0c, $8c3c, $8c7a, $8cd7
sub_c8d94
    jsr c8f9d                                                         // 8d94: 20 9d 8f     ..
    and #$df                                                          // 8d97: 29 df       ).
    cmp #$58 // 'X'                                                   // 8d99: c9 58       .X
    rts                                                               // 8d9b: 60          `

// $8d9c referenced 6 times by $8ba7, $8c8f, $8c9b, $8cf5, $9250, $b8e6
sub_c8d9c
    jsr c8f9d                                                         // 8d9c: 20 9d 8f     ..
    cmp #$23 // '#'                                                   // 8d9f: c9 23       .#
    rts                                                               // 8da1: 60          `

// $8da2 referenced 18 times by $8bd5, $8c04, $8c34, $8c75, $8d03, $8d1c, $93e2, $9420, $95be, $9670, $97f6, $98f3, $b133, $b3e5, $b3f4, $b5e9, $b87f, $b9a5
sub_c8da2
    jsr c8f9d                                                         // 8da2: 20 9d 8f     ..
    cmp #$2c // ','                                                   // 8da5: c9 2c       .,
    rts                                                               // 8da7: 60          `

// $8da8 referenced 2 times by $8e02, $8f5e
sub_c8da8
    sta (l0037)                                                       // 8da8: 92 37       .7
    clc                                                               // 8daa: 18          .
    tya                                                               // 8dab: 98          .
    adc l0037                                                         // 8dac: 65 37       e7
    sta l0039                                                         // 8dae: 85 39       .9
    ldy #0                                                            // 8db0: a0 00       ..
    tya                                                               // 8db2: 98          .
    adc l0038                                                         // 8db3: 65 38       e8
    sta l003a                                                         // 8db5: 85 3a       .:
// $8db7 referenced 1 time by $8dbe
loop_c8db7
    iny                                                               // 8db7: c8          .
    lda (l0039),y                                                     // 8db8: b1 39       .9
    sta (l0037),y                                                     // 8dba: 91 37       .7
    cmp #$0d                                                          // 8dbc: c9 0d       ..
    bne loop_c8db7                                                    // 8dbe: d0 f7       ..
    rts                                                               // 8dc0: 60          `

// $8dc1 referenced 1 time by $8ecb
sub_c8dc1
    and #$0f                                                          // 8dc1: 29 0f       ).
    sta l003d                                                         // 8dc3: 85 3d       .=
    ldx #0                                                            // 8dc5: a2 00       ..
    ldy #0                                                            // 8dc7: a0 00       ..
// $8dc9 referenced 2 times by $8df6, $8df9
c8dc9
    iny                                                               // 8dc9: c8          .
    lda (l0037),y                                                     // 8dca: b1 37       .7
    jsr c8e51                                                         // 8dcc: 20 51 8e     Q.
    bcc c8dff                                                         // 8dcf: 90 2e       ..
    and #$0f                                                          // 8dd1: 29 0f       ).
    pha                                                               // 8dd3: 48          H
    stx l003e                                                         // 8dd4: 86 3e       .>
    lda l003d                                                         // 8dd6: a5 3d       .=
    asl                                                               // 8dd8: 0a          .
    rol l003e                                                         // 8dd9: 26 3e       &>
    bmi c8dfc                                                         // 8ddb: 30 1f       0.
    asl                                                               // 8ddd: 0a          .
    rol l003e                                                         // 8dde: 26 3e       &>
    bmi c8dfc                                                         // 8de0: 30 1a       0.
    adc l003d                                                         // 8de2: 65 3d       e=
    sta l003d                                                         // 8de4: 85 3d       .=
    txa                                                               // 8de6: 8a          .
    adc l003e                                                         // 8de7: 65 3e       e>
    asl l003d                                                         // 8de9: 06 3d       .=
    rol                                                               // 8deb: 2a          *
    bmi c8dfc                                                         // 8dec: 30 0e       0.
    bcs c8dfc                                                         // 8dee: b0 0c       ..
    tax                                                               // 8df0: aa          .
    pla                                                               // 8df1: 68          h
    adc l003d                                                         // 8df2: 65 3d       e=
    sta l003d                                                         // 8df4: 85 3d       .=
    bcc c8dc9                                                         // 8df6: 90 d1       ..
    inx                                                               // 8df8: e8          .
    bpl c8dc9                                                         // 8df9: 10 ce       ..
    pha                                                               // 8dfb: 48          H
// $8dfc referenced 4 times by $8ddb, $8de0, $8dec, $8dee
c8dfc
    pla                                                               // 8dfc: 68          h
    sec                                                               // 8dfd: 38          8
    rts                                                               // 8dfe: 60          `

// $8dff referenced 1 time by $8dcf
c8dff
    dey                                                               // 8dff: 88          .
    lda #$8d                                                          // 8e00: a9 8d       ..
    jsr sub_c8da8                                                     // 8e02: 20 a8 8d     ..
    lda l0037                                                         // 8e05: a5 37       .7
    sta l0039                                                         // 8e07: 85 39       .9
    lda l0038                                                         // 8e09: a5 38       .8
    sta l003a                                                         // 8e0b: 85 3a       .:
    jsr sub_c8e5f                                                     // 8e0d: 20 5f 8e     _.
    jsr sub_c8e5f                                                     // 8e10: 20 5f 8e     _.
    jsr sub_c8e5f                                                     // 8e13: 20 5f 8e     _.
// $8e16 referenced 1 time by $8e1b
loop_c8e16
    lda (l0039),y                                                     // 8e16: b1 39       .9
    sta (l0037),y                                                     // 8e18: 91 37       .7
    dey                                                               // 8e1a: 88          .
    bne loop_c8e16                                                    // 8e1b: d0 f9       ..
    ldy #3                                                            // 8e1d: a0 03       ..
// $8e1f referenced 1 time by $9506
sub_c8e1f
    txa                                                               // 8e1f: 8a          .
    ora #$40 // '@'                                                   // 8e20: 09 40       .@
    sta (l0039),y                                                     // 8e22: 91 39       .9
    dey                                                               // 8e24: 88          .
    lda l003d                                                         // 8e25: a5 3d       .=
    and #$3f // '?'                                                   // 8e27: 29 3f       )?
    ora #$40 // '@'                                                   // 8e29: 09 40       .@
    sta (l0039),y                                                     // 8e2b: 91 39       .9
    dey                                                               // 8e2d: 88          .
    lda #$3f // '?'                                                   // 8e2e: a9 3f       .?
    trb l003d                                                         // 8e30: 14 3d       .=
    txa                                                               // 8e32: 8a          .
    and #$c0                                                          // 8e33: 29 c0       ).
    lsr                                                               // 8e35: 4a          J
    lsr                                                               // 8e36: 4a          J
    ora l003d                                                         // 8e37: 05 3d       .=
    lsr                                                               // 8e39: 4a          J
    lsr                                                               // 8e3a: 4a          J
    eor #$54 // 'T'                                                   // 8e3b: 49 54       IT
    sta (l0039),y                                                     // 8e3d: 91 39       .9
// $8e3f referenced 3 times by $8e43, $8e4b, $8e53
c8e3f
    clc                                                               // 8e3f: 18          .
    rts                                                               // 8e40: 60          `

// $8e41 referenced 6 times by $8c46, $8ee2, $8ee9, $8f4d, $8f7c, $b027
sub_c8e41
    cmp #$7b // '{'                                                   // 8e41: c9 7b       .{
    bcs c8e3f                                                         // 8e43: b0 fa       ..
    cmp #$5f // '_'                                                   // 8e45: c9 5f       ._
    bcs c8e57                                                         // 8e47: b0 0e       ..
    cmp #$5b // '['                                                   // 8e49: c9 5b       .[
    bcs c8e3f                                                         // 8e4b: b0 f2       ..
    cmp #$41 // 'A'                                                   // 8e4d: c9 41       .A
    bcs c8e57                                                         // 8e4f: b0 06       ..
// $8e51 referenced 4 times by $8dcc, $8e5a, $8e80, $8ec2
c8e51
    cmp #$3a // ':'                                                   // 8e51: c9 3a       .:
    bcs c8e3f                                                         // 8e53: b0 ea       ..
    cmp #$30 // '0'                                                   // 8e55: c9 30       .0
// $8e57 referenced 2 times by $8e47, $8e4f
c8e57
    rts                                                               // 8e57: 60          `

// $8e58 referenced 1 time by $8ed2
sub_c8e58
    cmp #$2e // '.'                                                   // 8e58: c9 2e       ..
    bne c8e51                                                         // 8e5a: d0 f5       ..
    rts                                                               // 8e5c: 60          `

    .byt $b2, $37                                                     // 8e5d: b2 37       .7

// $8e5f referenced 9 times by $8e0d, $8e10, $8e13, $8e66, $8e6c, $8ea1, $8ed7, $8eee, $8f81
sub_c8e5f
    inc l0037                                                         // 8e5f: e6 37       .7
    bne c8e9c                                                         // 8e61: d0 39       .9
    inc l0038                                                         // 8e63: e6 38       .8
    rts                                                               // 8e65: 60          `

// $8e66 referenced 3 times by $8e7d, $8e91, $bf1a
sub_c8e66
    jsr sub_c8e5f                                                     // 8e66: 20 5f 8e     _.
    lda (l0037)                                                       // 8e69: b2 37       .7
    rts                                                               // 8e6b: 60          `

// $8e6c referenced 6 times by $8e77, $8e96, $8eac, $8ebc, $8ece, $8f8f
c8e6c
    jsr sub_c8e5f                                                     // 8e6c: 20 5f 8e     _.
// $8e6f referenced 3 times by $8e87, $8ea8, $bb30
c8e6f
    lda (l0037)                                                       // 8e6f: b2 37       .7
    cmp #$0d                                                          // 8e71: c9 0d       ..
    beq c8e9c                                                         // 8e73: f0 27       .'
    cmp #$20 // ' '                                                   // 8e75: c9 20       .
    beq c8e6c                                                         // 8e77: f0 f3       ..
    cmp #$26 // '&'                                                   // 8e79: c9 26       .&
    bne c8e8d                                                         // 8e7b: d0 10       ..
// $8e7d referenced 2 times by $8e83, $8e8b
c8e7d
    jsr sub_c8e66                                                     // 8e7d: 20 66 8e     f.
    jsr c8e51                                                         // 8e80: 20 51 8e     Q.
    bcs c8e7d                                                         // 8e83: b0 f8       ..
    cmp #$41 // 'A'                                                   // 8e85: c9 41       .A
    bcc c8e6f                                                         // 8e87: 90 e6       ..
    cmp #$47 // 'G'                                                   // 8e89: c9 47       .G
    bcc c8e7d                                                         // 8e8b: 90 f0       ..
// $8e8d referenced 1 time by $8e7b
c8e8d
    cmp #$22 // '"'                                                   // 8e8d: c9 22       ."
    bne c8e9d                                                         // 8e8f: d0 0c       ..
// $8e91 referenced 1 time by $8e9a
loop_c8e91
    jsr sub_c8e66                                                     // 8e91: 20 66 8e     f.
    cmp #$22 // '"'                                                   // 8e94: c9 22       ."
    beq c8e6c                                                         // 8e96: f0 d4       ..
    cmp #$0d                                                          // 8e98: c9 0d       ..
    bne loop_c8e91                                                    // 8e9a: d0 f5       ..
// $8e9c referenced 3 times by $8e61, $8e73, $8eb4
c8e9c
    rts                                                               // 8e9c: 60          `

// $8e9d referenced 1 time by $8e8f
c8e9d
    cmp #$3a // ':'                                                   // 8e9d: c9 3a       .:
    bne c8eaa                                                         // 8e9f: d0 09       ..
    jsr sub_c8e5f                                                     // 8ea1: 20 5f 8e     _.
// $8ea4 referenced 1 time by $9561
sub_c8ea4
    stz l003b                                                         // 8ea4: 64 3b       d;
// $8ea6 referenced 1 time by $8ee0
c8ea6
    stz l003c                                                         // 8ea6: 64 3c       d<
    bra c8e6f                                                         // 8ea8: 80 c5       ..
// $8eaa referenced 1 time by $8e9f
c8eaa
    cmp #$2c // ','                                                   // 8eaa: c9 2c       .,
    beq c8e6c                                                         // 8eac: f0 be       ..
    cmp #$2a // '*'                                                   // 8eae: c9 2a       .*
    bne c8ebe                                                         // 8eb0: d0 0c       ..
    lda l003b                                                         // 8eb2: a5 3b       .;
    beq c8e9c                                                         // 8eb4: f0 e6       ..
// $8eb6 referenced 2 times by $8ee5, $8ef5
c8eb6
    ldx #$ff                                                          // 8eb6: a2 ff       ..
    stx l003b                                                         // 8eb8: 86 3b       .;
    stz l003c                                                         // 8eba: 64 3c       d<
    bra c8e6c                                                         // 8ebc: 80 ae       ..
// $8ebe referenced 1 time by $8eb0
c8ebe
    cmp #$2e // '.'                                                   // 8ebe: c9 2e       ..
    beq c8ed0                                                         // 8ec0: f0 0e       ..
    jsr c8e51                                                         // 8ec2: 20 51 8e     Q.
    bcc c8ef3                                                         // 8ec5: 90 2c       .,
    ldx l003c                                                         // 8ec7: a6 3c       .<
    beq c8ed0                                                         // 8ec9: f0 05       ..
    jsr sub_c8dc1                                                     // 8ecb: 20 c1 8d     ..
    bcc c8e6c                                                         // 8ece: 90 9c       ..
// $8ed0 referenced 3 times by $8ec0, $8ec9, $8eda
c8ed0
    lda (l0037)                                                       // 8ed0: b2 37       .7
    jsr sub_c8e58                                                     // 8ed2: 20 58 8e     X.
    bcc c8edc                                                         // 8ed5: 90 05       ..
    jsr sub_c8e5f                                                     // 8ed7: 20 5f 8e     _.
    bra c8ed0                                                         // 8eda: 80 f4       ..
// $8edc referenced 3 times by $8ed5, $8eec, $ab86
c8edc
    ldx #$ff                                                          // 8edc: a2 ff       ..
    stx l003b                                                         // 8ede: 86 3b       .;
    bra c8ea6                                                         // 8ee0: 80 c4       ..
// $8ee2 referenced 1 time by $8ef9
loop_c8ee2
    jsr sub_c8e41                                                     // 8ee2: 20 41 8e     A.
    bcc c8eb6                                                         // 8ee5: 90 cf       ..
// $8ee7 referenced 4 times by $8ef1, $8f07, $8f23, $8f50
c8ee7
    lda (l0037)                                                       // 8ee7: b2 37       .7
    jsr sub_c8e41                                                     // 8ee9: 20 41 8e     A.
    bcc c8edc                                                         // 8eec: 90 ee       ..
    jsr sub_c8e5f                                                     // 8eee: 20 5f 8e     _.
    bra c8ee7                                                         // 8ef1: 80 f4       ..
// $8ef3 referenced 1 time by $8ec5
c8ef3
    cmp #$41 // 'A'                                                   // 8ef3: c9 41       .A
    bcc c8eb6                                                         // 8ef5: 90 bf       ..
    cmp #$58 // 'X'                                                   // 8ef7: c9 58       .X
    bcs loop_c8ee2                                                    // 8ef9: b0 e7       ..
    ldx #$13                                                          // 8efb: a2 13       ..
    stx l0039                                                         // 8efd: 86 39       .9
    ldx #$85                                                          // 8eff: a2 85       ..
    stx l003a                                                         // 8f01: 86 3a       .:
// $8f03 referenced 1 time by $8f3f
c8f03
    ldy #0                                                            // 8f03: a0 00       ..
    cmp (l0039)                                                       // 8f05: d2 39       .9
    bcc c8ee7                                                         // 8f07: 90 de       ..
    bne c8f1a                                                         // 8f09: d0 0f       ..
// $8f0b referenced 1 time by $8f12
loop_c8f0b
    iny                                                               // 8f0b: c8          .
    lda (l0039),y                                                     // 8f0c: b1 39       .9
    bmi c8f41                                                         // 8f0e: 30 31       01
    cmp (l0037),y                                                     // 8f10: d1 37       .7
    beq loop_c8f0b                                                    // 8f12: f0 f7       ..
    lda (l0037),y                                                     // 8f14: b1 37       .7
    cmp #$2e // '.'                                                   // 8f16: c9 2e       ..
    beq c8f25                                                         // 8f18: f0 0b       ..
// $8f1a referenced 2 times by $8f09, $8f1d
c8f1a
    iny                                                               // 8f1a: c8          .
    lda (l0039),y                                                     // 8f1b: b1 39       .9
    bpl c8f1a                                                         // 8f1d: 10 fb       ..
    cmp #$fe                                                          // 8f1f: c9 fe       ..
    bne c8f32                                                         // 8f21: d0 0f       ..
    bcs c8ee7                                                         // 8f23: b0 c2       ..
// $8f25 referenced 1 time by $8f18
c8f25
    iny                                                               // 8f25: c8          .
// $8f26 referenced 2 times by $8f2c, $8f30
c8f26
    lda (l0039),y                                                     // 8f26: b1 39       .9
    bmi c8f41                                                         // 8f28: 30 17       0.
    inc l0039                                                         // 8f2a: e6 39       .9
    bne c8f26                                                         // 8f2c: d0 f8       ..
    inc l003a                                                         // 8f2e: e6 3a       .:
    bra c8f26                                                         // 8f30: 80 f4       ..
// $8f32 referenced 1 time by $8f21
c8f32
    sec                                                               // 8f32: 38          8
    iny                                                               // 8f33: c8          .
    tya                                                               // 8f34: 98          .
    adc l0039                                                         // 8f35: 65 39       e9
    sta l0039                                                         // 8f37: 85 39       .9
    bcc c8f3d                                                         // 8f39: 90 02       ..
    inc l003a                                                         // 8f3b: e6 3a       .:
// $8f3d referenced 1 time by $8f39
c8f3d
    lda (l0037)                                                       // 8f3d: b2 37       .7
    bra c8f03                                                         // 8f3f: 80 c2       ..
// $8f41 referenced 2 times by $8f0e, $8f28
c8f41
    tax                                                               // 8f41: aa          .
    iny                                                               // 8f42: c8          .
    lda (l0039),y                                                     // 8f43: b1 39       .9
    sta l003d                                                         // 8f45: 85 3d       .=
    dey                                                               // 8f47: 88          .
    lsr                                                               // 8f48: 4a          J
    bcc c8f52                                                         // 8f49: 90 07       ..
    lda (l0037),y                                                     // 8f4b: b1 37       .7
    jsr sub_c8e41                                                     // 8f4d: 20 41 8e     A.
    bcs c8ee7                                                         // 8f50: b0 95       ..
// $8f52 referenced 1 time by $8f49
c8f52
    txa                                                               // 8f52: 8a          .
    bit l003d                                                         // 8f53: 24 3d       $=
    bvc c8f5d                                                         // 8f55: 50 06       P.
    ldx l003b                                                         // 8f57: a6 3b       .;
    bne c8f5d                                                         // 8f59: d0 02       ..
    adc #$40 // '@'                                                   // 8f5b: 69 40       i@
// $8f5d referenced 2 times by $8f55, $8f59
c8f5d
    dey                                                               // 8f5d: 88          .
    jsr sub_c8da8                                                     // 8f5e: 20 a8 8d     ..
    ldx #$ff                                                          // 8f61: a2 ff       ..
    lda l003d                                                         // 8f63: a5 3d       .=
    lsr                                                               // 8f65: 4a          J
    lsr                                                               // 8f66: 4a          J
    bcc c8f6d                                                         // 8f67: 90 04       ..
    stx l003b                                                         // 8f69: 86 3b       .;
    stz l003c                                                         // 8f6b: 64 3c       d<
// $8f6d referenced 1 time by $8f67
c8f6d
    lsr                                                               // 8f6d: 4a          J
    bcc c8f74                                                         // 8f6e: 90 04       ..
    stz l003b                                                         // 8f70: 64 3b       d;
    stz l003c                                                         // 8f72: 64 3c       d<
// $8f74 referenced 1 time by $8f6e
c8f74
    lsr                                                               // 8f74: 4a          J
    bcc c8f87                                                         // 8f75: 90 10       ..
    pha                                                               // 8f77: 48          H
    ldy #1                                                            // 8f78: a0 01       ..
// $8f7a referenced 1 time by $8f84
loop_c8f7a
    lda (l0037),y                                                     // 8f7a: b1 37       .7
    jsr sub_c8e41                                                     // 8f7c: 20 41 8e     A.
    bcc c8f86                                                         // 8f7f: 90 05       ..
    jsr sub_c8e5f                                                     // 8f81: 20 5f 8e     _.
    bra loop_c8f7a                                                    // 8f84: 80 f4       ..
// $8f86 referenced 1 time by $8f7f
c8f86
    pla                                                               // 8f86: 68          h
// $8f87 referenced 1 time by $8f75
c8f87
    lsr                                                               // 8f87: 4a          J
    bcc c8f8c                                                         // 8f88: 90 02       ..
    stx l003c                                                         // 8f8a: 86 3c       .<
// $8f8c referenced 1 time by $8f88
c8f8c
    lsr                                                               // 8f8c: 4a          J
    bcs c8f9c                                                         // 8f8d: b0 0d       ..
    jmp c8e6c                                                         // 8f8f: 4c 6c 8e    Ll.

// $8f92 referenced 16 times by $8f9a, $8fa8, $8fb4, $9c4a, $abbb, $abc6, $abd0, $ad3a, $ad8e, $af61, $b13f, $b659, $b69b, $b6e8, $b835, $ba7a
c8f92
    ldy l001b                                                         // 8f92: a4 1b       ..
    inc l001b                                                         // 8f94: e6 1b       ..
    lda (l0019),y                                                     // 8f96: b1 19       ..
    cmp #$20 // ' '                                                   // 8f98: c9 20       .
    beq c8f92                                                         // 8f9a: f0 f6       ..
// $8f9c referenced 1 time by $8f8d
c8f9c
    rts                                                               // 8f9c: 60          `

// $8f9d referenced 29 times by $89dd, $8aa8, $8bc1, $8bcb, $8bde, $8bf2, $8c28, $8caf, $8cc9, $8cdc, $8d08, $8d21, $8d94, $8d9c, $8da2, $8fa5, $90e3, $9276, $928f, $935c, $95f9, $98dc, $b000, $b0b5, $b403, $b40a, $b771, $b78b, $b983
c8f9d
    ldy l000a                                                         // 8f9d: a4 0a       ..
    inc l000a                                                         // 8f9f: e6 0a       ..
    lda (l000b),y                                                     // 8fa1: b1 0b       ..
    cmp #$20 // ' '                                                   // 8fa3: c9 20       .
    beq c8f9d                                                         // 8fa5: f0 f6       ..
// $8fa7 referenced 1 time by $8fb9
loop_c8fa7
    rts                                                               // 8fa7: 60          `

// $8fa8 referenced 7 times by $9208, $9307, $9390, $b156, $b95a, $b9e9, $b9f6
sub_c8fa8
    jsr c8f92                                                         // 8fa8: 20 92 8f     ..
    cmp #$2c // ','                                                   // 8fab: c9 2c       .,
    rts                                                               // 8fad: 60          `

// $8fae referenced 2 times by $ac5d, $af8b
sub_c8fae
    jsr sub_c9774                                                     // 8fae: 20 74 97     t.
    jsr cbc66                                                         // 8fb1: 20 66 bc     f.
// $8fb4 referenced 1 time by $9771
sub_c8fb4
    jsr c8f92                                                         // 8fb4: 20 92 8f     ..
    cmp #$2c // ','                                                   // 8fb7: c9 2c       .,
    beq loop_c8fa7                                                    // 8fb9: f0 ec       ..
// $8fbb referenced 3 times by $92ed, $aca0, $af07
c8fbb
    brk                                                               // 8fbb: 00          .

    .byt   5, $8d, $2c,   0                                           // 8fbc: 05 8d 2c... ..,

sub_c8fc0
    jsr sub_cbe17                                                     // 8fc0: 20 17 be     ..
    bra c8fda                                                         // 8fc3: 80 15       ..
sub_c8fc5
    jsr c9c6a                                                         // 8fc5: 20 6a 9c     j.
    lda l0018                                                         // 8fc8: a5 18       ..
    sta l0038                                                         // 8fca: 85 38       .8
    stz l0037                                                         // 8fcc: 64 37       d7
    lda #0                                                            // 8fce: a9 00       ..
    sta (l0037),y                                                     // 8fd0: 91 37       .7
    jsr sub_cbe25                                                     // 8fd2: 20 25 be     %.
    bra c9048                                                         // 8fd5: 80 71       .q
sub_c8fd7
    jsr c9c6a                                                         // 8fd7: 20 6a 9c     j.
// $8fda referenced 1 time by $8fc3
c8fda
    jsr sub_cbbdc                                                     // 8fda: 20 dc bb     ..
    lda l0018                                                         // 8fdd: a5 18       ..
    sta l000c                                                         // 8fdf: 85 0c       ..
    stz l000b                                                         // 8fe1: 64 0b       d.
    bra c905c                                                         // 8fe3: 80 77       .w
sub_c8fe5
    jsr sub_cbe17                                                     // 8fe5: 20 17 be     ..
    bra c9048                                                         // 8fe8: 80 5e       .^
sub_c8fea
    jsr c9c6a                                                         // 8fea: 20 6a 9c     j.
    jsr sub_cbe25                                                     // 8fed: 20 25 be     %.
    bra c904b                                                         // 8ff0: 80 59       .Y
// $8ff2 referenced 1 time by $8136
c8ff2
    lda #$f2                                                          // 8ff2: a9 f2       ..
    jsr cae60                                                         // 8ff4: 20 60 ae     `.
    jsr sub_cbf22                                                     // 8ff7: 20 22 bf     ".
    tax                                                               // 8ffa: aa          .
    jsr sub_cbf22                                                     // 8ffb: 20 22 bf     ".
    sta l002b                                                         // 8ffe: 85 2b       .+
    stx l002a                                                         // 9000: 86 2a       .*
    ldx #$14                                                          // 9002: a2 14       ..
// $9004 referenced 1 time by $9010
loop_c9004
    dex                                                               // 9004: ca          .
    beq c9045                                                         // 9005: f0 3e       .>
    jsr sub_cbf22                                                     // 9007: 20 22 bf     ".
    cmp #$0d                                                          // 900a: c9 0d       ..
    beq c9045                                                         // 900c: f0 37       .7
    cmp #$40 // '@'                                                   // 900e: c9 40       .@
    bne loop_c9004                                                    // 9010: d0 f2       ..
    jsr sub_cbf22                                                     // 9012: 20 22 bf     ".
    cmp #$0d                                                          // 9015: c9 0d       ..
    bne c9045                                                         // 9017: d0 2c       .,
    jsr sub_cbf3e                                                     // 9019: 20 3e bf     >.
// $901c referenced 1 time by $9040
c901c
    ldy #0                                                            // 901c: a0 00       ..
    stz l000b                                                         // 901e: 64 0b       d.
    lda #7                                                            // 9020: a9 07       ..
    sta l000c                                                         // 9022: 85 0c       ..
// $9024 referenced 1 time by $9035
loop_c9024
    lda (l0000)                                                       // 9024: b2 00       ..
    beq c9048                                                         // 9026: f0 20       .
    sta (l000b),y                                                     // 9028: 91 0b       ..
    iny                                                               // 902a: c8          .
    beq c9045                                                         // 902b: f0 18       ..
    inc l0000                                                         // 902d: e6 00       ..
    bne c9033                                                         // 902f: d0 02       ..
    inc l0001                                                         // 9031: e6 01       ..
// $9033 referenced 1 time by $902f
c9033
    cmp #$0d                                                          // 9033: c9 0d       ..
    bne loop_c9024                                                    // 9035: d0 ed       ..
    lda l0001                                                         // 9037: a5 01       ..
    cmp l0007                                                         // 9039: c5 07       ..
    bcs c9048                                                         // 903b: b0 0b       ..
    jsr sub_cbb1b                                                     // 903d: 20 1b bb     ..
    bra c901c                                                         // 9040: 80 da       ..
sub_c9042
    jsr c9c6a                                                         // 9042: 20 6a 9c     j.
// $9045 referenced 4 times by $9005, $900c, $9017, $902b
c9045
    jsr sub_cbf3e                                                     // 9045: 20 3e bf     >.
// $9048 referenced 7 times by $8fd5, $8fe8, $9026, $903b, $9065, $940d, $9579
c9048
    jsr sub_cbbdc                                                     // 9048: 20 dc bb     ..
// $904b referenced 6 times by $8a88, $8ff0, $908a, $9090, $9cc6, $b425
c904b
    ldy #7                                                            // 904b: a0 07       ..
    sty l000c                                                         // 904d: 84 0c       ..
    stz l000b                                                         // 904f: 64 0b       d.
    jsr sub_cb2e0                                                     // 9051: 20 e0 b2     ..
    lda #$3e // '>'                                                   // 9054: a9 3e       .>
    jsr oswrch                                                        // 9056: 20 ee ff     ..            // Write character 62
    jsr sub_cbaa4                                                     // 9059: 20 a4 ba     ..
// $905c referenced 1 time by $8fe3
c905c
    ldx #$ff                                                          // 905c: a2 ff       ..
    txs                                                               // 905e: 9a          .
    jsr sub_cb2e0                                                     // 905f: 20 e0 b2     ..
    jsr sub_cbb1b                                                     // 9062: 20 1b bb     ..
    bcs c9048                                                         // 9065: b0 e1       ..
    bra c90e3                                                         // 9067: 80 7a       .z
// $9069 referenced 1 time by $90b7
c9069
    jsr c9c80                                                         // 9069: 20 80 9c     ..
    ldx l000b                                                         // 906c: a6 0b       ..
    ldy l000c                                                         // 906e: a4 0c       ..
    jsr oscli                                                         // 9070: 20 f7 ff     ..
// $9073 referenced 2 times by $9084, $b788
c9073
    lda #$0d                                                          // 9073: a9 0d       ..
    ldy l000a                                                         // 9075: a4 0a       ..
    dey                                                               // 9077: 88          .
// $9078 referenced 1 time by $907b
loop_c9078
    iny                                                               // 9078: c8          .
    cmp (l000b),y                                                     // 9079: d1 0b       ..
    bne loop_c9078                                                    // 907b: d0 fb       ..
// $907d referenced 1 time by $9d0c
c907d
    jsr c9c80                                                         // 907d: 20 80 9c     ..
    bra c9086                                                         // 9080: 80 04       ..
// $9082 referenced 1 time by $90ce
c9082
    cmp #$0d                                                          // 9082: c9 0d       ..
    bne c9073                                                         // 9084: d0 ed       ..
// $9086 referenced 1 time by $9080
c9086
    lda l000c                                                         // 9086: a5 0c       ..
    cmp #7                                                            // 9088: c9 07       ..
    beq c904b                                                         // 908a: f0 bf       ..
    ldy #1                                                            // 908c: a0 01       ..
    lda (l000b),y                                                     // 908e: b1 0b       ..
    bmi c904b                                                         // 9090: 30 b9       0.
    ldx l0020                                                         // 9092: a6 20       .
    beq c90a0                                                         // 9094: f0 0a       ..
    sta l002b                                                         // 9096: 85 2b       .+
    iny                                                               // 9098: c8          .
    lda (l000b),y                                                     // 9099: b1 0b       ..
    sta l002a                                                         // 909b: 85 2a       .*
    jsr sub_c9d0f                                                     // 909d: 20 0f 9d     ..
// $90a0 referenced 1 time by $9094
c90a0
    ldy #4                                                            // 90a0: a0 04       ..
    sty l000a                                                         // 90a2: 84 0a       ..
    bra c90d2                                                         // 90a4: 80 2c       .,
// $90a6 referenced 1 time by $90bb
loop_c90a6
    lda #3                                                            // 90a6: a9 03       ..
    sta l0028                                                         // 90a8: 85 28       .(
    jmp c89dd                                                         // 90aa: 4c dd 89    L..

// $90ad referenced 1 time by $90bf
loop_c90ad
    jmp cbed3                                                         // 90ad: 4c d3 be    L..

// $90b0 referenced 1 time by $90f7
c90b0
    ldy l000a                                                         // 90b0: a4 0a       ..
    dey                                                               // 90b2: 88          .
    lda (l000b),y                                                     // 90b3: b1 0b       ..
    cmp #$2a // '*'                                                   // 90b5: c9 2a       .*
    beq c9069                                                         // 90b7: f0 b0       ..
    cmp #$5b // '['                                                   // 90b9: c9 5b       .[
    beq loop_c90a6                                                    // 90bb: f0 e9       ..
    cmp #$a2                                                          // 90bd: c9 a2       ..
    beq loop_c90ad                                                    // 90bf: f0 ec       ..
    cmp #$3d // '='                                                   // 90c1: c9 3d       .=
    beq c9123                                                         // 90c3: f0 5e       .^
// $90c5 referenced 6 times by $9288, $95c3, $97fb, $990c, $b626, $b9aa
c90c5
    dec l000a                                                         // 90c5: c6 0a       ..
// $90c7 referenced 4 times by $924d, $97fe, $b844, $b874
c90c7
    jsr c9c6a                                                         // 90c7: 20 6a 9c     j.
// $90ca referenced 11 times by $9121, $9144, $93c1, $9700, $97bd, $98c0, $b35c, $b74a, $b9a2, $ba60, $beeb
c90ca
    lda (l000b)                                                       // 90ca: b2 0b       ..
    cmp #$3a // ':'                                                   // 90cc: c9 3a       .:
    bne c9082                                                         // 90ce: d0 b2       ..
// $90d0 referenced 8 times by $89da, $90d8, $9ce8, $b0c7, $b5dc, $b6ce, $b766, $ba9d
c90d0
    ldy l000a                                                         // 90d0: a4 0a       ..
// $90d2 referenced 1 time by $90a4
c90d2
    inc l000a                                                         // 90d2: e6 0a       ..
    lda (l000b),y                                                     // 90d4: b1 0b       ..
    cmp #$20 // ' '                                                   // 90d6: c9 20       .
    beq c90d0                                                         // 90d8: f0 f6       ..
    cmp #$cf                                                          // 90da: c9 cf       ..
    bcc c90ea                                                         // 90dc: 90 0c       ..
// $90de referenced 2 times by $90e8, $ad99
c90de
    asl                                                               // 90de: 0a          .
    tax                                                               // 90df: aa          .
    jmp (l880a,x)                                                     // 90e0: 7c 0a 88    |..

// $90e3 referenced 1 time by $9067
c90e3
    jsr c8f9d                                                         // 90e3: 20 9d 8f     ..
    cmp #$c6                                                          // 90e6: c9 c6       ..
    bcs c90de                                                         // 90e8: b0 f4       ..
// $90ea referenced 1 time by $90dc
c90ea
    ldx l000b                                                         // 90ea: a6 0b       ..
    stx l0019                                                         // 90ec: 86 19       ..
    ldx l000c                                                         // 90ee: a6 0c       ..
    stx l001a                                                         // 90f0: 86 1a       ..
    jsr sub_c99d6                                                     // 90f2: 20 d6 99     ..
    bne c9112                                                         // 90f5: d0 1b       ..
    bcs c90b0                                                         // 90f7: b0 b7       ..
    stx l001b                                                         // 90f9: 86 1b       ..
    jsr sub_c9c4a                                                     // 90fb: 20 4a 9c     J.
    jsr sub_c9923                                                     // 90fe: 20 23 99     #.
    ldx #5                                                            // 9101: a2 05       ..
    cpx l002c                                                         // 9103: e4 2c       .,
    bne c9108                                                         // 9105: d0 01       ..
    inx                                                               // 9107: e8          .
// $9108 referenced 1 time by $9105
c9108
    jsr sub_c9952                                                     // 9108: 20 52 99     R.
    dec l000a                                                         // 910b: c6 0a       ..
sub_c910d
    jsr sub_c997d                                                     // 910d: 20 7d 99     }.
    beq c9146                                                         // 9110: f0 34       .4
// $9112 referenced 1 time by $90f5
c9112
    bcc c9135                                                         // 9112: 90 21       .!
    jsr cbc66                                                         // 9114: 20 66 bc     f.
    jsr c9c16                                                         // 9117: 20 16 9c     ..
    lda l0027                                                         // 911a: a5 27       .'
    bne c9155                                                         // 911c: d0 37       .7
    jsr sub_c916e                                                     // 911e: 20 6e 91     n.
    bra c90ca                                                         // 9121: 80 a7       ..
// $9123 referenced 1 time by $90c3
c9123
    tsx                                                               // 9123: ba          .
    cpx #$fc                                                          // 9124: e0 fc       ..
    bcs c914f                                                         // 9126: b0 27       .'
    lda l01ff                                                         // 9128: ad ff 01    ...
    cmp #$a4                                                          // 912b: c9 a4       ..
    bne c914f                                                         // 912d: d0 20       .
    jsr sub_c9df3                                                     // 912f: 20 f3 9d     ..
    jmp c9c55                                                         // 9132: 4c 55 9c    LU.

// $9135 referenced 1 time by $9112
c9135
    lda l002a                                                         // 9135: a5 2a       .*
    pha                                                               // 9137: 48          H
    lda l002b                                                         // 9138: a5 2b       .+
    pha                                                               // 913a: 48          H
    lda l002c                                                         // 913b: a5 2c       .,
    pha                                                               // 913d: 48          H
    jsr c9c16                                                         // 913e: 20 16 9c     ..
    jsr sub_cb365                                                     // 9141: 20 65 b3     e.
    bra c90ca                                                         // 9144: 80 84       ..
// $9146 referenced 1 time by $9110
c9146
    jmp c9c2d                                                         // 9146: 4c 2d 9c    L-.

sub_c9149
    jsr c9c6a                                                         // 9149: 20 6a 9c     j.
    brk                                                               // 914c: 00          .

    .byt   0, $fa                                                     // 914d: 00 fa       ..

// $914f referenced 2 times by $9126, $912d
c914f
    brk                                                               // 914f: 00          .

    .byt 7                                                            // 9150: 07          .
    .asc "No "                                                        // 9151: 4e 6f 20    No
    .byt $a4                                                          // 9154: a4          .

// $9155 referenced 14 times by $8d71, $911c, $979c, $9cc9, $9d7c, $9f4c, $ab9d, $ac1c, $acfd, $ae56, $af88, $b35f, $b86c, $be73
c9155
    brk                                                               // 9155: 00          .

    .byt 6                                                            // 9156: 06          .
    .asc "Type mismatch"                                              // 9157: 54 79 70... Typ

// $9164 referenced 3 times by $91bb, $9974, $bd74
c9164
    brk                                                               // 9164: 00          .

    .byt 0                                                            // 9165: 00          .
    .asc "No room"                                                    // 9166: 4e 6f 20... No
    .byt 0                                                            // 916d: 00          .

// $916e referenced 3 times by $911e, $b8b5, $b9ca
sub_c916e
    jsr sub_cbd26                                                     // 916e: 20 26 bd     &.
// $9171 referenced 2 times by $b1b2, $b978
sub_c9171
    lda l002c                                                         // 9171: a5 2c       .,
    cmp #$80                                                          // 9173: c9 80       ..
    beq c91ef                                                         // 9175: f0 78       .x
    ldy #2                                                            // 9177: a0 02       ..
    lda (l002a),y                                                     // 9179: b1 2a       .*
    cmp l0036                                                         // 917b: c5 36       .6
    bcs c91d1                                                         // 917d: b0 52       .R
    lda l0002                                                         // 917f: a5 02       ..
    sta l002c                                                         // 9181: 85 2c       .,
    lda l0003                                                         // 9183: a5 03       ..
    sta l002d                                                         // 9185: 85 2d       .-
    lda l0036                                                         // 9187: a5 36       .6
    cmp #8                                                            // 9189: c9 08       ..
    bcc c9193                                                         // 918b: 90 06       ..
    adc #7                                                            // 918d: 69 07       i.
    bcc c9193                                                         // 918f: 90 02       ..
    lda #$ff                                                          // 9191: a9 ff       ..
// $9193 referenced 2 times by $918b, $918f
c9193
    clc                                                               // 9193: 18          .
    pha                                                               // 9194: 48          H
    tax                                                               // 9195: aa          .
    lda (l002a),y                                                     // 9196: b1 2a       .*
    adc (l002a)                                                       // 9198: 72 2a       r*
    eor l0002                                                         // 919a: 45 02       E.
    bne c91ad                                                         // 919c: d0 0f       ..
    dey                                                               // 919e: 88          .
    adc (l002a),y                                                     // 919f: 71 2a       q*
    eor l0003                                                         // 91a1: 45 03       E.
    bne c91ad                                                         // 91a3: d0 08       ..
    sta l002d                                                         // 91a5: 85 2d       .-
    txa                                                               // 91a7: 8a          .
    iny                                                               // 91a8: c8          .
    sec                                                               // 91a9: 38          8
    sbc (l002a),y                                                     // 91aa: f1 2a       .*
    tax                                                               // 91ac: aa          .
// $91ad referenced 2 times by $919c, $91a3
c91ad
    txa                                                               // 91ad: 8a          .
    clc                                                               // 91ae: 18          .
    adc l0002                                                         // 91af: 65 02       e.
    tay                                                               // 91b1: a8          .
    lda l0003                                                         // 91b2: a5 03       ..
    adc #0                                                            // 91b4: 69 00       i.
    tax                                                               // 91b6: aa          .
    cpy l0004                                                         // 91b7: c4 04       ..
    sbc l0005                                                         // 91b9: e5 05       ..
    bcs c9164                                                         // 91bb: b0 a7       ..
    sty l0002                                                         // 91bd: 84 02       ..
    stx l0003                                                         // 91bf: 86 03       ..
    pla                                                               // 91c1: 68          h
    ldy #2                                                            // 91c2: a0 02       ..
    sta (l002a),y                                                     // 91c4: 91 2a       .*
    dey                                                               // 91c6: 88          .
    lda l002d                                                         // 91c7: a5 2d       .-
    beq c91d1                                                         // 91c9: f0 06       ..
    sta (l002a),y                                                     // 91cb: 91 2a       .*
    lda l002c                                                         // 91cd: a5 2c       .,
    sta (l002a)                                                       // 91cf: 92 2a       .*
// $91d1 referenced 2 times by $917d, $91c9
c91d1
    ldy #3                                                            // 91d1: a0 03       ..
    lda l0036                                                         // 91d3: a5 36       .6
    sta (l002a),y                                                     // 91d5: 91 2a       .*
    beq c91ee                                                         // 91d7: f0 15       ..
    ldy #1                                                            // 91d9: a0 01       ..
    lda (l002a),y                                                     // 91db: b1 2a       .*
    sta l002d                                                         // 91dd: 85 2d       .-
    lda (l002a)                                                       // 91df: b2 2a       .*
    sta l002c                                                         // 91e1: 85 2c       .,
    dey                                                               // 91e3: 88          .
// $91e4 referenced 1 time by $91ec
loop_c91e4
    lda l0600,y                                                       // 91e4: b9 00 06    ...
    sta (l002c),y                                                     // 91e7: 91 2c       .,
    iny                                                               // 91e9: c8          .
    cpy l0036                                                         // 91ea: c4 36       .6
    bne loop_c91e4                                                    // 91ec: d0 f6       ..
// $91ee referenced 1 time by $91d7
c91ee
    rts                                                               // 91ee: 60          `

// $91ef referenced 1 time by $9175
c91ef
    jsr sub_cbe6b                                                     // 91ef: 20 6b be     k.
    cpy #0                                                            // 91f2: c0 00       ..
    beq c9201                                                         // 91f4: f0 0b       ..
// $91f6 referenced 1 time by $91fc
loop_c91f6
    lda l0600,y                                                       // 91f6: b9 00 06    ...
    sta (l002a),y                                                     // 91f9: 91 2a       .*
    dey                                                               // 91fb: 88          .
    bne loop_c91f6                                                    // 91fc: d0 f8       ..
    lda l0600                                                         // 91fe: ad 00 06    ...
// $9201 referenced 1 time by $91f4
c9201
    sta (l002a)                                                       // 9201: 92 2a       .*
    rts                                                               // 9203: 60          `

// $9204 referenced 1 time by $9253
c9204
    jsr sub_cba6c                                                     // 9204: 20 6c ba     l.
// $9207 referenced 4 times by $9228, $9235, $923d, $9248
c9207
    phy                                                               // 9207: 5a          Z
    jsr sub_c8fa8                                                     // 9208: 20 a8 8f     ..
    bne c924a                                                         // 920b: d0 3d       .=
    jsr sub_c9dff                                                     // 920d: 20 ff 9d     ..
    jsr sub_ca545                                                     // 9210: 20 45 a5     E.
    ply                                                               // 9213: 7a          z              // Y=file handle
    lda l0027                                                         // 9214: a5 27       .'
    jsr osbput                                                        // 9216: 20 d4 ff     ..            // Write a single byte A to an open file Y
    tax                                                               // 9219: aa          .
    beq c9237                                                         // 921a: f0 1b       ..
    bmi c922a                                                         // 921c: 30 0c       0.
    ldx #3                                                            // 921e: a2 03       ..
// $9220 referenced 1 time by $9226
loop_c9220
    lda l002a,x                                                       // 9220: b5 2a       .*
    jsr osbput                                                        // 9222: 20 d4 ff     ..            // Write a single byte A to an open file Y
    dex                                                               // 9225: ca          .
    bpl loop_c9220                                                    // 9226: 10 f8       ..
    bra c9207                                                         // 9228: 80 dd       ..
// $922a referenced 1 time by $921c
c922a
    ldx #4                                                            // 922a: a2 04       ..
// $922c referenced 1 time by $9233
loop_c922c
    lda l046c,x                                                       // 922c: bd 6c 04    .l.
    jsr osbput                                                        // 922f: 20 d4 ff     ..            // Write a single byte A to an open file Y
    dex                                                               // 9232: ca          .
    bpl loop_c922c                                                    // 9233: 10 f7       ..
    bra c9207                                                         // 9235: 80 d0       ..
// $9237 referenced 1 time by $921a
c9237
    lda l0036                                                         // 9237: a5 36       .6
    jsr osbput                                                        // 9239: 20 d4 ff     ..            // Write a single byte A to an open file Y
    tax                                                               // 923c: aa          .
    beq c9207                                                         // 923d: f0 c8       ..
// $923f referenced 1 time by $9246
loop_c923f
    lda l05ff,x                                                       // 923f: bd ff 05    ...
    jsr osbput                                                        // 9242: 20 d4 ff     ..            // Write a single byte A to an open file Y
    dex                                                               // 9245: ca          .
    bne loop_c923f                                                    // 9246: d0 f7       ..
    bra c9207                                                         // 9248: 80 bd       ..
// $924a referenced 1 time by $920b
c924a
    pla                                                               // 924a: 68          h
    sty l000a                                                         // 924b: 84 0a       ..
    jmp c90c7                                                         // 924d: 4c c7 90    L..

sub_c9250
    jsr sub_c8d9c                                                     // 9250: 20 9c 8d     ..
    beq c9204                                                         // 9253: f0 af       ..
    dec l000a                                                         // 9255: c6 0a       ..
    bra c926e                                                         // 9257: 80 15       ..
// $9259 referenced 1 time by $92a4
c9259
    lda l0400                                                         // 9259: ad 00 04    ...
    beq c926e                                                         // 925c: f0 10       ..
    lda l001e                                                         // 925e: a5 1e       ..
// $9260 referenced 1 time by $9265
loop_c9260
    beq c926e                                                         // 9260: f0 0c       ..
    sbc l0400                                                         // 9262: ed 00 04    ...
    bcs loop_c9260                                                    // 9265: b0 f9       ..
    tay                                                               // 9267: a8          .
// $9268 referenced 1 time by $926c
loop_c9268
    jsr cbdd2                                                         // 9268: 20 d2 bd     ..
    iny                                                               // 926b: c8          .
    bne loop_c9268                                                    // 926c: d0 fa       ..
// $926e referenced 3 times by $9257, $925c, $9260
c926e
    clc                                                               // 926e: 18          .
    lda l0400                                                         // 926f: ad 00 04    ...
    sta l0014                                                         // 9272: 85 14       ..
// $9274 referenced 1 time by $92a0
c9274
    ror l0015                                                         // 9274: 66 15       f.
// $9276 referenced 3 times by $92ad, $92dc, $92eb
c9276
    jsr c8f9d                                                         // 9276: 20 9d 8f     ..
    cmp #$3a // ':'                                                   // 9279: c9 3a       .:
    beq c9285                                                         // 927b: f0 08       ..
    cmp #$0d                                                          // 927d: c9 0d       ..
    beq c9285                                                         // 927f: f0 04       ..
    cmp #$8b                                                          // 9281: c9 8b       ..
    bne c929e                                                         // 9283: d0 19       ..
// $9285 referenced 2 times by $927b, $927f
c9285
    jsr sub_cbac2                                                     // 9285: 20 c2 ba     ..
// $9288 referenced 3 times by $9294, $9298, $929c
c9288
    jmp c90c5                                                         // 9288: 4c c5 90    L..

// $928b referenced 1 time by $92a8
loop_c928b
    stz l0014                                                         // 928b: 64 14       d.
    stz l0015                                                         // 928d: 64 15       d.
    jsr c8f9d                                                         // 928f: 20 9d 8f     ..
    cmp #$3a // ':'                                                   // 9292: c9 3a       .:
    beq c9288                                                         // 9294: f0 f2       ..
    cmp #$0d                                                          // 9296: c9 0d       ..
    beq c9288                                                         // 9298: f0 ee       ..
    cmp #$8b                                                          // 929a: c9 8b       ..
    beq c9288                                                         // 929c: f0 ea       ..
// $929e referenced 1 time by $9283
c929e
    cmp #$7e // '~'                                                   // 929e: c9 7e       .~
    beq c9274                                                         // 92a0: f0 d2       ..
    cmp #$2c // ','                                                   // 92a2: c9 2c       .,
    beq c9259                                                         // 92a4: f0 b3       ..
    cmp #$3b // ';'                                                   // 92a6: c9 3b       .;
    beq loop_c928b                                                    // 92a8: f0 e1       ..
    jsr sub_c933d                                                     // 92aa: 20 3d 93     =.
    bcc c9276                                                         // 92ad: 90 c7       ..
    lda l0014                                                         // 92af: a5 14       ..
    pha                                                               // 92b1: 48          H
    lda l0015                                                         // 92b2: a5 15       ..
    pha                                                               // 92b4: 48          H
    dec l001b                                                         // 92b5: c6 1b       ..
    jsr sub_c9dff                                                     // 92b7: 20 ff 9d     ..
    pla                                                               // 92ba: 68          h
    sta l0015                                                         // 92bb: 85 15       ..
    pla                                                               // 92bd: 68          h
    sta l0014                                                         // 92be: 85 14       ..
    lda l001b                                                         // 92c0: a5 1b       ..
    sta l000a                                                         // 92c2: 85 0a       ..
    tya                                                               // 92c4: 98          .
    beq c92da                                                         // 92c5: f0 13       ..
    jsr sub_ca181                                                     // 92c7: 20 81 a1     ..
    lda l0014                                                         // 92ca: a5 14       ..
    sec                                                               // 92cc: 38          8
    sbc l0036                                                         // 92cd: e5 36       .6
    bcc c92da                                                         // 92cf: 90 09       ..
    beq c92da                                                         // 92d1: f0 07       ..
    tay                                                               // 92d3: a8          .
// $92d4 referenced 1 time by $92d8
loop_c92d4
    jsr cbdd2                                                         // 92d4: 20 d2 bd     ..
    dey                                                               // 92d7: 88          .
    bne loop_c92d4                                                    // 92d8: d0 fa       ..
// $92da referenced 3 times by $92c5, $92cf, $92d1
c92da
    lda l0036                                                         // 92da: a5 36       .6
    beq c9276                                                         // 92dc: f0 98       ..
    ldy #0                                                            // 92de: a0 00       ..
// $92e0 referenced 1 time by $92e9
loop_c92e0
    lda l0600,y                                                       // 92e0: b9 00 06    ...
    jsr sub_cbdd8                                                     // 92e3: 20 d8 bd     ..
    iny                                                               // 92e6: c8          .
    cpy l0036                                                         // 92e7: c4 36       .6
    bne loop_c92e0                                                    // 92e9: d0 f5       ..
    bra c9276                                                         // 92eb: 80 89       ..
// $92ed referenced 1 time by $930e
c92ed
    jmp c8fbb                                                         // 92ed: 4c bb 8f    L..

// $92f0 referenced 1 time by $930a
loop_c92f0
    lda l002a                                                         // 92f0: a5 2a       .*
    pha                                                               // 92f2: 48          H
    jsr sub_c976c                                                     // 92f3: 20 6c 97     l.
    lda #$1f                                                          // 92f6: a9 1f       ..
    jsr oswrch                                                        // 92f8: 20 ee ff     ..            // Write character 31
    pla                                                               // 92fb: 68          h
    jsr oswrch                                                        // 92fc: 20 ee ff     ..            // Write character
    jsr sub_c990f                                                     // 92ff: 20 0f 99     ..
    bra c932d                                                         // 9302: 80 29       .)
// $9304 referenced 1 time by $934f
c9304
    jsr sub_c9774                                                     // 9304: 20 74 97     t.
    jsr sub_c8fa8                                                     // 9307: 20 a8 8f     ..
    beq loop_c92f0                                                    // 930a: f0 e4       ..
    cmp #$29 // ')'                                                   // 930c: c9 29       .)
    bne c92ed                                                         // 930e: d0 dd       ..
    lda l002a                                                         // 9310: a5 2a       .*
    sbc l001e                                                         // 9312: e5 1e       ..
    beq c932d                                                         // 9314: f0 17       ..
    tax                                                               // 9316: aa          .
    bcs c9325                                                         // 9317: b0 0c       ..
    jsr sub_cbac2                                                     // 9319: 20 c2 ba     ..
    bra c9321                                                         // 931c: 80 03       ..
// $931e referenced 1 time by $9353
c931e
    jsr sub_c9779                                                     // 931e: 20 79 97     y.
// $9321 referenced 1 time by $931c
c9321
    ldx l002a                                                         // 9321: a6 2a       .*
    beq c932d                                                         // 9323: f0 08       ..
// $9325 referenced 1 time by $9317
c9325
    jsr cbdff                                                         // 9325: 20 ff bd     ..
    bra c932d                                                         // 9328: 80 03       ..
// $932a referenced 1 time by $934b
c932a
    jsr sub_cbac2                                                     // 932a: 20 c2 ba     ..
// $932d referenced 5 times by $9302, $9314, $9323, $9328, $937a
c932d
    clc                                                               // 932d: 18          .
    bra c9338                                                         // 932e: 80 08       ..
// $9330 referenced 3 times by $8c01, $8c31, $8cfd
sub_c9330
    dec l000a                                                         // 9330: c6 0a       ..
// $9332 referenced 23 times by $8b67, $8baf, $8bc8, $8c62, $8c96, $8cb8, $8cc6, $8d16, $8d39, $8d65, $9651, $9718, $9810, $9824, $982e, $9880, $98ed, $b302, $b326, $b351, $b41b, $b794, $b85f
sub_c9332
    jsr sub_c9df3                                                     // 9332: 20 f3 9d     ..
    jsr c9784                                                         // 9335: 20 84 97     ..
// $9338 referenced 8 times by $8aa3, $8d7f, $932e, $95bb, $b87c, $b88c, $b92a, $b9dc
c9338
    ldy l001b                                                         // 9338: a4 1b       ..
    sty l000a                                                         // 933a: 84 0a       ..
    rts                                                               // 933c: 60          `

// $933d referenced 2 times by $92aa, $935f
sub_c933d
    ldx l000b                                                         // 933d: a6 0b       ..
    stx l0019                                                         // 933f: 86 19       ..
    ldx l000c                                                         // 9341: a6 0c       ..
    stx l001a                                                         // 9343: 86 1a       ..
    ldx l000a                                                         // 9345: a6 0a       ..
    stx l001b                                                         // 9347: 86 1b       ..
    cmp #$27 // '''                                                   // 9349: c9 27       .'
    beq c932a                                                         // 934b: f0 dd       ..
    cmp #$8a                                                          // 934d: c9 8a       ..
    beq c9304                                                         // 934f: f0 b3       ..
    cmp #$89                                                          // 9351: c9 89       ..
    beq c931e                                                         // 9353: f0 c9       ..
// $9355 referenced 1 time by $9366
loop_c9355
    sec                                                               // 9355: 38          8
// $9356 referenced 1 time by $9362
loop_c9356
    rts                                                               // 9356: 60          `

// $9357 referenced 2 times by $936d, $ad75
c9357
    brk                                                               // 9357: 00          .

    .byt   9, $8d, $22,   0                                           // 9358: 09 8d 22... .."

// $935c referenced 2 times by $b8fa, $b8ff
sub_c935c
    jsr c8f9d                                                         // 935c: 20 9d 8f     ..
    jsr sub_c933d                                                     // 935f: 20 3d 93     =.
    bcc loop_c9356                                                    // 9362: 90 f2       ..
    cmp #$22 // '"'                                                   // 9364: c9 22       ."
    bne loop_c9355                                                    // 9366: d0 ed       ..
// $9368 referenced 1 time by $937f
loop_c9368
    iny                                                               // 9368: c8          .
    lda (l0019),y                                                     // 9369: b1 19       ..
    cmp #$0d                                                          // 936b: c9 0d       ..
    beq c9357                                                         // 936d: f0 e8       ..
    cmp #$22 // '"'                                                   // 936f: c9 22       ."
    bne c937c                                                         // 9371: d0 09       ..
    iny                                                               // 9373: c8          .
    sty l001b                                                         // 9374: 84 1b       ..
    lda (l0019),y                                                     // 9376: b1 19       ..
    cmp #$22 // '"'                                                   // 9378: c9 22       ."
    bne c932d                                                         // 937a: d0 b1       ..
// $937c referenced 1 time by $9371
c937c
    jsr sub_cbdd8                                                     // 937c: 20 d8 bd     ..
    bra loop_c9368                                                    // 937f: 80 e7       ..
sub_c9381
    jsr sub_c9df3                                                     // 9381: 20 f3 9d     ..
    jsr sub_c9781                                                     // 9384: 20 81 97     ..
    jsr cbc66                                                         // 9387: 20 66 bc     f.
    stz l0600                                                         // 938a: 9c 00 06    ...
    ldy #0                                                            // 938d: a0 00       ..
// $938f referenced 1 time by $93b2
c938f
    phy                                                               // 938f: 5a          Z
    jsr sub_c8fa8                                                     // 9390: 20 a8 8f     ..
    bne c93b4                                                         // 9393: d0 1f       ..
    ldy l001b                                                         // 9395: a4 1b       ..
    jsr sub_c99d0                                                     // 9397: 20 d0 99     ..
    beq c93c4                                                         // 939a: f0 28       .(
    ply                                                               // 939c: 7a          z
    iny                                                               // 939d: c8          .
    lda l002a                                                         // 939e: a5 2a       .*
    sta l0600,y                                                       // 93a0: 99 00 06    ...
    iny                                                               // 93a3: c8          .
    lda l002b                                                         // 93a4: a5 2b       .+
    sta l0600,y                                                       // 93a6: 99 00 06    ...
    iny                                                               // 93a9: c8          .
    lda l002c                                                         // 93aa: a5 2c       .,
    sta l0600,y                                                       // 93ac: 99 00 06    ...
    inc l0600                                                         // 93af: ee 00 06    ...
    bra c938f                                                         // 93b2: 80 db       ..
// $93b4 referenced 1 time by $9393
c93b4
    ply                                                               // 93b4: 7a          z
    dec l001b                                                         // 93b5: c6 1b       ..
    jsr sub_c9c5a                                                     // 93b7: 20 5a 9c     Z.
    jsr sub_cbd26                                                     // 93ba: 20 26 bd     &.
    jsr sub_c93c7                                                     // 93bd: 20 c7 93     ..
    cld                                                               // 93c0: d8          .
    jmp c90ca                                                         // 93c1: 4c ca 90    L..

// $93c4 referenced 1 time by $939a
c93c4
    jmp cadce                                                         // 93c4: 4c ce ad    L..

// $93c7 referenced 2 times by $93bd, $ab04
sub_c93c7
    lda l040c                                                         // 93c7: ad 0c 04    ...
    lsr                                                               // 93ca: 4a          J
    lda l0404                                                         // 93cb: ad 04 04    ...
    ldx l0460                                                         // 93ce: ae 60 04    .`.
    ldy l0464                                                         // 93d1: ac 64 04    .d.
    jmp (l002a)                                                       // 93d4: 6c 2a 00    l*.

// $93d7 referenced 3 times by $93dd, $93e5, $93ea
c93d7
    jmp c9c2d                                                         // 93d7: 4c 2d 9c    L-.

sub_c93da
    jsr sub_c9be2                                                     // 93da: 20 e2 9b     ..
    bcc c93d7                                                         // 93dd: 90 f8       ..
    jsr cbc66                                                         // 93df: 20 66 bc     f.
    jsr sub_c8da2                                                     // 93e2: 20 a2 8d     ..
    bne c93d7                                                         // 93e5: d0 f0       ..
    jsr sub_c9be2                                                     // 93e7: 20 e2 9b     ..
    bcc c93d7                                                         // 93ea: 90 eb       ..
    jsr c9c6a                                                         // 93ec: 20 6a 9c     j.
    lda l002a                                                         // 93ef: a5 2a       .*
    sta l0039                                                         // 93f1: 85 39       .9
    lda l002b                                                         // 93f3: a5 2b       .+
    sta l003a                                                         // 93f5: 85 3a       .:
    jsr sub_cbd26                                                     // 93f7: 20 26 bd     &.
// $93fa referenced 1 time by $940b
loop_c93fa
    jsr sub_cbac8                                                     // 93fa: 20 c8 ba     ..
    jsr sub_c9c8e                                                     // 93fd: 20 8e 9c     ..
    jsr sub_cbf2f                                                     // 9400: 20 2f bf     /.
    lda l0039                                                         // 9403: a5 39       .9
    cmp l002a                                                         // 9405: c5 2a       .*
    lda l003a                                                         // 9407: a5 3a       .:
    sbc l002b                                                         // 9409: e5 2b       .+
    bcs loop_c93fa                                                    // 940b: b0 ed       ..
    jmp c9048                                                         // 940d: 4c 48 90    LH.

// $9410 referenced 2 times by $9447, $954c
sub_c9410
    lda #$0a                                                          // 9410: a9 0a       ..
    jsr cae60                                                         // 9412: 20 60 ae     `.
    jsr sub_c9be2                                                     // 9415: 20 e2 9b     ..
    jsr cbc66                                                         // 9418: 20 66 bc     f.
    lda #$0a                                                          // 941b: a9 0a       ..
    jsr cae60                                                         // 941d: 20 60 ae     `.
    jsr sub_c8da2                                                     // 9420: 20 a2 8d     ..
    bne c9433                                                         // 9423: d0 0e       ..
    jsr sub_c9be2                                                     // 9425: 20 e2 9b     ..
    lda l002b                                                         // 9428: a5 2b       .+
    bne c947f                                                         // 942a: d0 53       .S
    lda l002a                                                         // 942c: a5 2a       .*
    beq c947f                                                         // 942e: f0 4f       .O
    jmp c9c6a                                                         // 9430: 4c 6a 9c    Lj.

// $9433 referenced 1 time by $9423
c9433
    jmp c9c74                                                         // 9433: 4c 74 9c    Lt.

// $9436 referenced 2 times by $9452, $94e1
sub_c9436
    lda l0012                                                         // 9436: a5 12       ..
    sta l003b                                                         // 9438: 85 3b       .;
    lda l0013                                                         // 943a: a5 13       ..
    sta l003c                                                         // 943c: 85 3c       .<
// $943e referenced 1 time by $9487
sub_c943e
    lda l0018                                                         // 943e: a5 18       ..
    sta l0038                                                         // 9440: 85 38       .8
    ldy #1                                                            // 9442: a0 01       ..
    sty l0037                                                         // 9444: 84 37       .7
    rts                                                               // 9446: 60          `

sub_c9447
    jsr sub_c9410                                                     // 9447: 20 10 94     ..
    ldx #$39 // '9'                                                   // 944a: a2 39       .9
    jsr sub_cbd48                                                     // 944c: 20 48 bd     H.
    jsr sub_cbe25                                                     // 944f: 20 25 be     %.
    jsr sub_c9436                                                     // 9452: 20 36 94     6.
// $9455 referenced 1 time by $9474
loop_c9455
    lda (l0037)                                                       // 9455: b2 37       .7
    bmi c9487                                                         // 9457: 30 2e       0.
    sta (l003b)                                                       // 9459: 92 3b       .;
    lda (l0037),y                                                     // 945b: b1 37       .7
    sta (l003b),y                                                     // 945d: 91 3b       .;
    sec                                                               // 945f: 38          8
    tya                                                               // 9460: 98          .
    adc l003b                                                         // 9461: 65 3b       e;
    sta l003b                                                         // 9463: 85 3b       .;
    bcc c9469                                                         // 9465: 90 02       ..
    inc l003c                                                         // 9467: e6 3c       .<
// $9469 referenced 1 time by $9465
c9469
    cmp l0006                                                         // 9469: c5 06       ..
    lda l003c                                                         // 946b: a5 3c       .<
    sbc l0007                                                         // 946d: e5 07       ..
    bcs c9476                                                         // 946f: b0 05       ..
    jsr sub_c953d                                                     // 9471: 20 3d 95     =.
    bra loop_c9455                                                    // 9474: 80 df       ..
// $9476 referenced 1 time by $946f
c9476
    brk                                                               // 9476: 00          .

    .byt   0, $cc                                                     // 9477: 00 cc       ..
    .asc " space"                                                     // 9479: 20 73 70...  sp

// $947f referenced 2 times by $942a, $942e
c947f
    brk                                                               // 947f: 00          .

    .byt 0                                                            // 9480: 00          .
    .asc "Silly"                                                      // 9481: 53 69 6c... Sil
    .byt 0                                                            // 9486: 00          .

// $9487 referenced 1 time by $9457
c9487
    jsr sub_c943e                                                     // 9487: 20 3e 94     >.
// $948a referenced 1 time by $94a8
loop_c948a
    lda (l0037)                                                       // 948a: b2 37       .7
    bmi c94aa                                                         // 948c: 30 1c       0.
    lda l003a                                                         // 948e: a5 3a       .:
    sta (l0037)                                                       // 9490: 92 37       .7
    lda l0039                                                         // 9492: a5 39       .9
    sta (l0037),y                                                     // 9494: 91 37       .7
    clc                                                               // 9496: 18          .
    lda l0039                                                         // 9497: a5 39       .9
    adc l002a                                                         // 9499: 65 2a       e*
    sta l0039                                                         // 949b: 85 39       .9
    lda #0                                                            // 949d: a9 00       ..
    adc l003a                                                         // 949f: 65 3a       e:
    and #$7f                                                          // 94a1: 29 7f       ).
    sta l003a                                                         // 94a3: 85 3a       .:
    jsr sub_c953d                                                     // 94a5: 20 3d 95     =.
    bra loop_c948a                                                    // 94a8: 80 e0       ..
// $94aa referenced 1 time by $948c
c94aa
    lda l0018                                                         // 94aa: a5 18       ..
    sta l000c                                                         // 94ac: 85 0c       ..
    stz l000b                                                         // 94ae: 64 0b       d.
// $94b0 referenced 1 time by $94dc
c94b0
    ldy #1                                                            // 94b0: a0 01       ..
    lda (l000b),y                                                     // 94b2: b1 0b       ..
    bmi c951d                                                         // 94b4: 30 67       0g
    ldy #4                                                            // 94b6: a0 04       ..
    stz l002c                                                         // 94b8: 64 2c       d,
// $94ba referenced 2 times by $94d3, $950b
c94ba
    lda (l000b),y                                                     // 94ba: b1 0b       ..
    ldx l002c                                                         // 94bc: a6 2c       .,
    bne c94c8                                                         // 94be: d0 08       ..
    cmp #$8d                                                          // 94c0: c9 8d       ..
    beq c94de                                                         // 94c2: f0 1a       ..
    cmp #$f4                                                          // 94c4: c9 f4       ..
    beq c94d5                                                         // 94c6: f0 0d       ..
// $94c8 referenced 1 time by $94be
c94c8
    iny                                                               // 94c8: c8          .
    cmp #$22 // '"'                                                   // 94c9: c9 22       ."
    bne c94d1                                                         // 94cb: d0 04       ..
    eor l002c                                                         // 94cd: 45 2c       E,
    sta l002c                                                         // 94cf: 85 2c       .,
// $94d1 referenced 1 time by $94cb
c94d1
    cmp #$0d                                                          // 94d1: c9 0d       ..
    bne c94ba                                                         // 94d3: d0 e5       ..
// $94d5 referenced 1 time by $94c6
c94d5
    ldy #3                                                            // 94d5: a0 03       ..
    lda (l000b),y                                                     // 94d7: b1 0b       ..
    jsr sub_c9cb8                                                     // 94d9: 20 b8 9c     ..
    bra c94b0                                                         // 94dc: 80 d2       ..
// $94de referenced 1 time by $94c2
c94de
    jsr sub_c9bee                                                     // 94de: 20 ee 9b     ..
    jsr sub_c9436                                                     // 94e1: 20 36 94     6.
// $94e4 referenced 2 times by $9517, $951b
c94e4
    lda (l0037)                                                       // 94e4: b2 37       .7
    bmi c951f                                                         // 94e6: 30 37       07
    lda (l003b)                                                       // 94e8: b2 3b       .;
    cmp l002b                                                         // 94ea: c5 2b       .+
    bne c950d                                                         // 94ec: d0 1f       ..
    lda (l003b),y                                                     // 94ee: b1 3b       .;
    cmp l002a                                                         // 94f0: c5 2a       .*
    bne c950d                                                         // 94f2: d0 19       ..
    lda (l0037),y                                                     // 94f4: b1 37       .7
    sta l003d                                                         // 94f6: 85 3d       .=
    lda (l0037)                                                       // 94f8: b2 37       .7
    tax                                                               // 94fa: aa          .
    ldy l000a                                                         // 94fb: a4 0a       ..
    dey                                                               // 94fd: 88          .
    lda l000b                                                         // 94fe: a5 0b       ..
    sta l0039                                                         // 9500: 85 39       .9
    lda l000c                                                         // 9502: a5 0c       ..
    sta l003a                                                         // 9504: 85 3a       .:
    jsr sub_c8e1f                                                     // 9506: 20 1f 8e     ..
// $9509 referenced 1 time by $953b
c9509
    ldy l000a                                                         // 9509: a4 0a       ..
    bra c94ba                                                         // 950b: 80 ad       ..
// $950d referenced 2 times by $94ec, $94f2
c950d
    clc                                                               // 950d: 18          .
    jsr sub_c953d                                                     // 950e: 20 3d 95     =.
    lda l003b                                                         // 9511: a5 3b       .;
    adc #2                                                            // 9513: 69 02       i.
    sta l003b                                                         // 9515: 85 3b       .;
    bcc c94e4                                                         // 9517: 90 cb       ..
    inc l003c                                                         // 9519: e6 3c       .<
    bra c94e4                                                         // 951b: 80 c7       ..
// $951d referenced 1 time by $94b4
c951d
    bra c9579                                                         // 951d: 80 5a       .Z
// $951f referenced 1 time by $94e6
c951f
    jsr sub_cbf0f                                                     // 951f: 20 0f bf     ..
    lsr l0061                                                         // 9522: 46 61       Fa
    adc #$6c // 'l'                                                   // 9524: 69 6c       il
    adc l0064                                                         // 9526: 65 64       ed
    jsr l7461                                                         // 9528: 20 61 74     at
    jsr l0bb1                                                         // 952b: 20 b1 0b     ..
    sta l002b                                                         // 952e: 85 2b       .+
    iny                                                               // 9530: c8          .
    lda (l000b),y                                                     // 9531: b1 0b       ..
    sta l002a                                                         // 9533: 85 2a       .*
    jsr sub_ca0e8                                                     // 9535: 20 e8 a0     ..
    jsr sub_cbac2                                                     // 9538: 20 c2 ba     ..
    bra c9509                                                         // 953b: 80 cc       ..
// $953d referenced 3 times by $9471, $94a5, $950e
sub_c953d
    iny                                                               // 953d: c8          .
    lda (l0037),y                                                     // 953e: b1 37       .7
    ldy #1                                                            // 9540: a0 01       ..
    adc l0037                                                         // 9542: 65 37       e7
    sta l0037                                                         // 9544: 85 37       .7
    bcc c954b                                                         // 9546: 90 03       ..
    inc l0038                                                         // 9548: e6 38       .8
    clc                                                               // 954a: 18          .
// $954b referenced 1 time by $9546
c954b
    rts                                                               // 954b: 60          `

sub_c954c
    jsr sub_c9410                                                     // 954c: 20 10 94     ..
    lda l002a                                                         // 954f: a5 2a       .*
    pha                                                               // 9551: 48          H
    jsr sub_cbd26                                                     // 9552: 20 26 bd     &.
// $9555 referenced 2 times by $9573, $9577
c9555
    jsr cbc66                                                         // 9555: 20 66 bc     f.
    jsr sub_ca0ec                                                     // 9558: 20 ec a0     ..
    jsr sub_cbaa4                                                     // 955b: 20 a4 ba     ..
    jsr sub_cbd26                                                     // 955e: 20 26 bd     &.
    jsr sub_c8ea4                                                     // 9561: 20 a4 8e     ..
    ldy #0                                                            // 9564: a0 00       ..
    jsr sub_cbb38                                                     // 9566: 20 38 bb     8.
    jsr sub_cbbdc                                                     // 9569: 20 dc bb     ..
    pla                                                               // 956c: 68          h
    pha                                                               // 956d: 48          H
    clc                                                               // 956e: 18          .
    adc l002a                                                         // 956f: 65 2a       e*
    sta l002a                                                         // 9571: 85 2a       .*
    bcc c9555                                                         // 9573: 90 e0       ..
    inc l002b                                                         // 9575: e6 2b       .+
    bpl c9555                                                         // 9577: 10 dc       ..
// $9579 referenced 1 time by $951d
c9579
    jmp c9048                                                         // 9579: 4c 48 90    LH.

// $957c referenced 1 time by $95a6
c957c
    jmp c96ca                                                         // 957c: 4c ca 96    L..

// $957f referenced 1 time by $9632
c957f
    dec l000a                                                         // 957f: c6 0a       ..
    jsr sub_c997d                                                     // 9581: 20 7d 99     }.
    beq c95f1                                                         // 9584: f0 6b       .k
    bcs c95f1                                                         // 9586: b0 69       .i
    jsr sub_cbc83                                                     // 9588: 20 83 bc     ..
    jsr sub_c9774                                                     // 958b: 20 74 97     t.
    jsr sub_cbf2f                                                     // 958e: 20 2f bf     /.
    lda l002d                                                         // 9591: a5 2d       .-
    ora l002c                                                         // 9593: 05 2c       .,
    bne c95f1                                                         // 9595: d0 5a       .Z
    clc                                                               // 9597: 18          .
    lda l002a                                                         // 9598: a5 2a       .*
    adc l0002                                                         // 959a: 65 02       e.
    tay                                                               // 959c: a8          .
    lda l002b                                                         // 959d: a5 2b       .+
    adc l0003                                                         // 959f: 65 03       e.
    tax                                                               // 95a1: aa          .
    cpy l0004                                                         // 95a2: c4 04       ..
    sbc l0005                                                         // 95a4: e5 05       ..
    bcs c957c                                                         // 95a6: b0 d4       ..
    lda l0002                                                         // 95a8: a5 02       ..
    sta l002a                                                         // 95aa: 85 2a       .*
    lda l0003                                                         // 95ac: a5 03       ..
    sta l002b                                                         // 95ae: 85 2b       .+
    sty l0002                                                         // 95b0: 84 02       ..
    stx l0003                                                         // 95b2: 86 03       ..
    lda #$40 // '@'                                                   // 95b4: a9 40       .@
    sta l0027                                                         // 95b6: 85 27       .'
    jsr sub_cb365                                                     // 95b8: 20 65 b3     e.
    jsr c9338                                                         // 95bb: 20 38 93     8.
// $95be referenced 1 time by $96c7
c95be
    jsr sub_c8da2                                                     // 95be: 20 a2 8d     ..
    beq c95f9                                                         // 95c1: f0 36       .6
    jmp c90c5                                                         // 95c3: 4c c5 90    L..

// $95c6 referenced 1 time by $966d
sub_c95c6
    ldx #$3f // '?'                                                   // 95c6: a2 3f       .?
    jsr sub_cbd48                                                     // 95c8: 20 48 bd     H.
// $95cb referenced 2 times by $9680, $9b1b
sub_c95cb
    ldx #0                                                            // 95cb: a2 00       ..
    ldy #0                                                            // 95cd: a0 00       ..
// $95cf referenced 1 time by $95ea
loop_c95cf
    lsr l0040                                                         // 95cf: 46 40       F@
    ror l003f                                                         // 95d1: 66 3f       f?
    bcc c95e0                                                         // 95d3: 90 0b       ..
    clc                                                               // 95d5: 18          .
    tya                                                               // 95d6: 98          .
    adc l002a                                                         // 95d7: 65 2a       e*
    tay                                                               // 95d9: a8          .
    txa                                                               // 95da: 8a          .
    adc l002b                                                         // 95db: 65 2b       e+
    tax                                                               // 95dd: aa          .
    bcs c95f1                                                         // 95de: b0 11       ..
// $95e0 referenced 1 time by $95d3
c95e0
    asl l002a                                                         // 95e0: 06 2a       .*
    rol l002b                                                         // 95e2: 26 2b       &+
    bcs c95f1                                                         // 95e4: b0 0b       ..
    lda l003f                                                         // 95e6: a5 3f       .?
    ora l0040                                                         // 95e8: 05 40       .@
    bne loop_c95cf                                                    // 95ea: d0 e3       ..
    sty l002a                                                         // 95ec: 84 2a       .*
    stx l002b                                                         // 95ee: 86 2b       .+
    rts                                                               // 95f0: 60          `

// $95f1 referenced 8 times by $9584, $9586, $9595, $95de, $95e4, $961a, $963b, $965c
c95f1
    brk                                                               // 95f1: 00          .

    .byt $0a                                                          // 95f2: 0a          .
    .asc "Bad "                                                       // 95f3: 42 61 64... Bad
    .byt $de,   0                                                     // 95f7: de 00       ..

// $95f9 referenced 1 time by $95c1
c95f9
    jsr c8f9d                                                         // 95f9: 20 9d 8f     ..
    tya                                                               // 95fc: 98          .
    clc                                                               // 95fd: 18          .
    adc l000b                                                         // 95fe: 65 0b       e.
    ldx l000c                                                         // 9600: a6 0c       ..
    bcc c9606                                                         // 9602: 90 02       ..
    inx                                                               // 9604: e8          .
    clc                                                               // 9605: 18          .
// $9606 referenced 1 time by $9602
c9606
    sbc #0                                                            // 9606: e9 00       ..
    sta l0037                                                         // 9608: 85 37       .7
    txa                                                               // 960a: 8a          .
    sbc #0                                                            // 960b: e9 00       ..
    sta l0038                                                         // 960d: 85 38       .8
    ldx #5                                                            // 960f: a2 05       ..
    stx l003f                                                         // 9611: 86 3f       .?
    ldx l000a                                                         // 9613: a6 0a       ..
    jsr sub_c9bba                                                     // 9615: 20 ba 9b     ..
    cpy #1                                                            // 9618: c0 01       ..
    beq c95f1                                                         // 961a: f0 d5       ..
    cmp #$28 // '('                                                   // 961c: c9 28       .(
    beq c9635                                                         // 961e: f0 15       ..
    cmp #$24 // '$'                                                   // 9620: c9 24       .$
    beq c9628                                                         // 9622: f0 04       ..
    cmp #$25 // '%'                                                   // 9624: c9 25       .%
    bne c9632                                                         // 9626: d0 0a       ..
// $9628 referenced 1 time by $9622
c9628
    dec l003f                                                         // 9628: c6 3f       .?
    iny                                                               // 962a: c8          .
    inx                                                               // 962b: e8          .
    lda (l0037),y                                                     // 962c: b1 37       .7
    cmp #$28 // '('                                                   // 962e: c9 28       .(
    beq c9635                                                         // 9630: f0 03       ..
// $9632 referenced 1 time by $9626
c9632
    jmp c957f                                                         // 9632: 4c 7f 95    L..

// $9635 referenced 2 times by $961e, $9630
c9635
    iny                                                               // 9635: c8          .
    stx l000a                                                         // 9636: 86 0a       ..
    jsr sub_c8149                                                     // 9638: 20 49 81     I.
// $963b referenced 1 time by $9677
c963b
    bne c95f1                                                         // 963b: d0 b4       ..
    jsr sub_c9923                                                     // 963d: 20 23 99     #.
    ldx #1                                                            // 9640: a2 01       ..
    jsr sub_c9952                                                     // 9642: 20 52 99     R.
    lda l003f                                                         // 9645: a5 3f       .?
    pha                                                               // 9647: 48          H
    lda #1                                                            // 9648: a9 01       ..
    pha                                                               // 964a: 48          H
    jsr cae60                                                         // 964b: 20 60 ae     `.
// $964e referenced 1 time by $9673
c964e
    jsr cbc66                                                         // 964e: 20 66 bc     f.
    jsr sub_c9332                                                     // 9651: 20 32 93     2.
    lda l002b                                                         // 9654: a5 2b       .+
    and #$c0                                                          // 9656: 29 c0       ).
    ora l002c                                                         // 9658: 05 2c       .,
    ora l002d                                                         // 965a: 05 2d       .-
    bne c95f1                                                         // 965c: d0 93       ..
    jsr sub_cbf2f                                                     // 965e: 20 2f bf     /.
    ply                                                               // 9661: 7a          z
    lda l002a                                                         // 9662: a5 2a       .*
    sta (l0002),y                                                     // 9664: 91 02       ..
    iny                                                               // 9666: c8          .
    lda l002b                                                         // 9667: a5 2b       .+
    sta (l0002),y                                                     // 9669: 91 02       ..
    iny                                                               // 966b: c8          .
    phy                                                               // 966c: 5a          Z
    jsr sub_c95c6                                                     // 966d: 20 c6 95     ..
    jsr sub_c8da2                                                     // 9670: 20 a2 8d     ..
    beq c964e                                                         // 9673: f0 d9       ..
    cmp #$29 // ')'                                                   // 9675: c9 29       .)
    bne c963b                                                         // 9677: d0 c2       ..
    plx                                                               // 9679: fa          .
    pla                                                               // 967a: 68          h
    phx                                                               // 967b: da          .
    sta l003f                                                         // 967c: 85 3f       .?
    stz l0040                                                         // 967e: 64 40       d@
    jsr sub_c95cb                                                     // 9680: 20 cb 95     ..
    pla                                                               // 9683: 68          h
    pha                                                               // 9684: 48          H
    adc l002a                                                         // 9685: 65 2a       e*
    sta l002a                                                         // 9687: 85 2a       .*
    bcc c968d                                                         // 9689: 90 02       ..
    inc l002b                                                         // 968b: e6 2b       .+
// $968d referenced 1 time by $9689
c968d
    lda l0003                                                         // 968d: a5 03       ..
    sta l0038                                                         // 968f: 85 38       .8
    lda l0002                                                         // 9691: a5 02       ..
    sta l0037                                                         // 9693: 85 37       .7
    clc                                                               // 9695: 18          .
    adc l002a                                                         // 9696: 65 2a       e*
    tay                                                               // 9698: a8          .
    lda l002b                                                         // 9699: a5 2b       .+
    adc l0003                                                         // 969b: 65 03       e.
    bcs c96ca                                                         // 969d: b0 2b       .+
    tax                                                               // 969f: aa          .
    cpy l0004                                                         // 96a0: c4 04       ..
    sbc l0005                                                         // 96a2: e5 05       ..
    bcs c96ca                                                         // 96a4: b0 24       .$
    sty l0002                                                         // 96a6: 84 02       ..
    stx l0003                                                         // 96a8: 86 03       ..
    pla                                                               // 96aa: 68          h
    sta (l0037)                                                       // 96ab: 92 37       .7
    adc l0037                                                         // 96ad: 65 37       e7
    tay                                                               // 96af: a8          .
    lda #0                                                            // 96b0: a9 00       ..
    stz l0037                                                         // 96b2: 64 37       d7
    bcc c96b8                                                         // 96b4: 90 02       ..
    inc l0038                                                         // 96b6: e6 38       .8
// $96b8 referenced 3 times by $96b4, $96c1, $96c5
c96b8
    sta (l0037),y                                                     // 96b8: 91 37       .7
    iny                                                               // 96ba: c8          .
    bne c96bf                                                         // 96bb: d0 02       ..
    inc l0038                                                         // 96bd: e6 38       .8
// $96bf referenced 1 time by $96bb
c96bf
    cpy l0002                                                         // 96bf: c4 02       ..
    bne c96b8                                                         // 96c1: d0 f5       ..
    cpx l0038                                                         // 96c3: e4 38       .8
    bne c96b8                                                         // 96c5: d0 f1       ..
    jmp c95be                                                         // 96c7: 4c be 95    L..

// $96ca referenced 3 times by $957c, $969d, $96a4
c96ca
    brk                                                               // 96ca: 00          .

    .byt $0b, $de                                                     // 96cb: 0b de       ..
    .asc " space"                                                     // 96cd: 20 73 70...  sp
    .byt 0                                                            // 96d3: 00          .

sub_c96d4
    jsr sub_c977e                                                     // 96d4: 20 7e 97     ~.
    lda l002a                                                         // 96d7: a5 2a       .*
    sta l0006                                                         // 96d9: 85 06       ..
    sta l0004                                                         // 96db: 85 04       ..
    lda l002b                                                         // 96dd: a5 2b       .+
    sta l0007                                                         // 96df: 85 07       ..
    sta l0005                                                         // 96e1: 85 05       ..
    bra c9700                                                         // 96e3: 80 1b       ..
sub_c96e5
    jsr sub_c977e                                                     // 96e5: 20 7e 97     ~.
    lda l002a                                                         // 96e8: a5 2a       .*
    sta l0000                                                         // 96ea: 85 00       ..
    sta l0002                                                         // 96ec: 85 02       ..
    lda l002b                                                         // 96ee: a5 2b       .+
    sta l0001                                                         // 96f0: 85 01       ..
    sta l0003                                                         // 96f2: 85 03       ..
    jsr sub_cbbeb                                                     // 96f4: 20 eb bb     ..
    bra c9700                                                         // 96f7: 80 07       ..
sub_c96f9
    jsr sub_c977e                                                     // 96f9: 20 7e 97     ~.
    lda l002b                                                         // 96fc: a5 2b       .+
    sta l0018                                                         // 96fe: 85 18       ..
// $9700 referenced 4 times by $96e3, $96f7, $9709, $972a
c9700
    jmp c90ca                                                         // 9700: 4c ca 90    L..

sub_c9703
    jsr c9c6a                                                         // 9703: 20 6a 9c     j.
    jsr sub_cbbdc                                                     // 9706: 20 dc bb     ..
    bra c9700                                                         // 9709: 80 f5       ..
sub_c970b
    jsr sub_c9be2                                                     // 970b: 20 e2 9b     ..
    bcs c971b                                                         // 970e: b0 0b       ..
    cmp #$ee                                                          // 9710: c9 ee       ..
    beq c972c                                                         // 9712: f0 18       ..
    cmp #$87                                                          // 9714: c9 87       ..
    beq c9735                                                         // 9716: f0 1d       ..
    jsr sub_c9332                                                     // 9718: 20 32 93     2.
// $971b referenced 1 time by $970e
c971b
    jsr c9c6a                                                         // 971b: 20 6a 9c     j.
    lda l002a                                                         // 971e: a5 2a       .*
    sta l0021                                                         // 9720: 85 21       .!
    lda l002b                                                         // 9722: a5 2b       .+
// $9724 referenced 1 time by $9733
loop_c9724
    sta l0022                                                         // 9724: 85 22       ."
    lda #$ff                                                          // 9726: a9 ff       ..
// $9728 referenced 1 time by $973c
loop_c9728
    sta l0020                                                         // 9728: 85 20       .
    bra c9700                                                         // 972a: 80 d4       ..
// $972c referenced 1 time by $9712
c972c
    inc l000a                                                         // 972c: e6 0a       ..
    jsr c9c6a                                                         // 972e: 20 6a 9c     j.
    lda #$ff                                                          // 9731: a9 ff       ..
    bne loop_c9724                                                    // 9733: d0 ef       ..
// $9735 referenced 1 time by $9716
c9735
    inc l000a                                                         // 9735: e6 0a       ..
    jsr c9c6a                                                         // 9737: 20 6a 9c     j.
    lda #0                                                            // 973a: a9 00       ..
    bra loop_c9728                                                    // 973c: 80 ea       ..
sub_c973e
    iny                                                               // 973e: c8          .
    lda (l000b),y                                                     // 973f: b1 0b       ..
    cmp #$24 // '$'                                                   // 9741: c9 24       .$
    beq c9753                                                         // 9743: f0 0e       ..
    jsr sub_c977e                                                     // 9745: 20 7e 97     ~.
    stz l002e                                                         // 9748: 64 2e       d.
    ldx #$2a // '*'                                                   // 974a: a2 2a       .*
    ldy #0                                                            // 974c: a0 00       ..
    lda #2                                                            // 974e: a9 02       ..
// $9750 referenced 1 time by $9767
loop_c9750
    jmp cb34c                                                         // 9750: 4c 4c b3    LL.

// $9753 referenced 1 time by $9743
c9753
    inc l000a                                                         // 9753: e6 0a       ..
    jsr sub_c9c0a                                                     // 9755: 20 0a 9c     ..
    lda l0027                                                         // 9758: a5 27       .'
    bne c979c                                                         // 975a: d0 40       .@
    lda #$0f                                                          // 975c: a9 0f       ..
    ldy l0036                                                         // 975e: a4 36       .6
    sty l05ff                                                         // 9760: 8c ff 05    ...
    ldx #$ff                                                          // 9763: a2 ff       ..
    ldy #5                                                            // 9765: a0 05       ..
    bra loop_c9750                                                    // 9767: 80 e7       ..
// $9769 referenced 2 times by $aca3, $aec8
sub_c9769
    jsr cbc91                                                         // 9769: 20 91 bc     ..
// $976c referenced 6 times by $92f3, $9b2a, $9b4c, $aa9c, $ac60, $af2c
sub_c976c
    jsr cadee                                                         // 976c: 20 ee ad     ..
    bra c9784                                                         // 976f: 80 13       ..
// $9771 referenced 6 times by $9816, $9886, $988c, $b30e, $b32f, $bf01
sub_c9771
    jsr sub_c8fb4                                                     // 9771: 20 b4 8f     ..
// $9774 referenced 7 times by $8fae, $9304, $958b, $9ae9, $af18, $b67d, $b6a2
sub_c9774
    jsr sub_c9dff                                                     // 9774: 20 ff 9d     ..
    bra c9784                                                         // 9777: 80 0b       ..
// $9779 referenced 10 times by $931e, $99a5, $99ad, $9a8b, $aa6e, $aaeb, $ab01, $ae34, $b269, $ba81
sub_c9779
    jsr cad78                                                         // 9779: 20 78 ad     x.
    bra c9784                                                         // 977c: 80 06       ..
// $977e referenced 4 times by $96d4, $96e5, $96f9, $9745
sub_c977e
    jsr sub_c9c0a                                                     // 977e: 20 0a 9c     ..
// $9781 referenced 4 times by $9384, $987b, $ba4d, $bee1
sub_c9781
    lda l0027                                                         // 9781: a5 27       .'
// $9783 referenced 7 times by $81bd, $81cd, $9e13, $9e2d, $9e3f, $9e4d, $9e56
sub_c9783
    tay                                                               // 9783: a8          .
// $9784 referenced 5 times by $9335, $976f, $9777, $977c, $9a82
c9784
    beq c979c                                                         // 9784: f0 16       ..
    bpl c979b                                                         // 9786: 10 13       ..
// $9788 referenced 5 times by $9cd3, $a134, $a998, $aab9, $b37d
sub_c9788
    jsr sub_c834f                                                     // 9788: 20 4f 83     O.
// $978b referenced 1 time by $abfd
sub_c978b
    lda l0031                                                         // 978b: a5 31       .1
    sta l002d                                                         // 978d: 85 2d       .-
    lda l0032                                                         // 978f: a5 32       .2
    sta l002c                                                         // 9791: 85 2c       .,
    lda l0033                                                         // 9793: a5 33       .3
    sta l002b                                                         // 9795: 85 2b       .+
    lda l0034                                                         // 9797: a5 34       .4
    sta l002a                                                         // 9799: 85 2a       .*
// $979b referenced 2 times by $9786, $97a4
c979b
    rts                                                               // 979b: 60          `

// $979c referenced 3 times by $975a, $9784, $97a2
c979c
    jmp c9155                                                         // 979c: 4c 55 91    LU.

// $979f referenced 8 times by $a7ac, $a808, $a901, $a919, $a9b5, $a9ca, $a9d1, $aa17
sub_c979f
    jsr cad78                                                         // 979f: 20 78 ad     x.
// $97a2 referenced 5 times by $9d30, $b6d4, $b6f2, $bc21, $bc37
sub_c97a2
    beq c979c                                                         // 97a2: f0 f8       ..
    bmi c979b                                                         // 97a4: 30 f5       0.
    jmp c828d                                                         // 97a6: 4c 8d 82    L..

sub_c97a9
    lda l000b                                                         // 97a9: a5 0b       ..
    sta l0019                                                         // 97ab: 85 19       ..
    lda l000c                                                         // 97ad: a5 0c       ..
    sta l001a                                                         // 97af: 85 1a       ..
    lda l000a                                                         // 97b1: a5 0a       ..
    sta l001b                                                         // 97b3: 85 1b       ..
    lda #$f2                                                          // 97b5: a9 f2       ..
    jsr sub_cb057                                                     // 97b7: 20 57 b0     W.
    jsr sub_c9c5a                                                     // 97ba: 20 5a 9c     Z.
    jmp c90ca                                                         // 97bd: 4c ca 90    L..

// $97c0 referenced 1 time by $97c8
loop_c97c0
    lda #$0d                                                          // 97c0: a9 0d       ..
    sta (l002a)                                                       // 97c2: 92 2a       .*
    bra c97ee                                                         // 97c4: 80 28       .(
// $97c6 referenced 1 time by $97e1
loop_c97c6
    cpy #$80                                                          // 97c6: c0 80       ..
    beq loop_c97c0                                                    // 97c8: f0 f6       ..
    ldy #3                                                            // 97ca: a0 03       ..
    lda #0                                                            // 97cc: a9 00       ..
    sta (l002a),y                                                     // 97ce: 91 2a       .*
    beq c97ee                                                         // 97d0: f0 1c       ..
// $97d2 referenced 1 time by $97f9
c97d2
    tsx                                                               // 97d2: ba          .
    cpx #$fc                                                          // 97d3: e0 fc       ..
    bcs c9801                                                         // 97d5: b0 2a       .*
    jsr sub_c997d                                                     // 97d7: 20 7d 99     }.
    beq c97fe                                                         // 97da: f0 22       ."
    jsr sub_cb1bf                                                     // 97dc: 20 bf b1     ..
    ldy l002c                                                         // 97df: a4 2c       .,
    bmi loop_c97c6                                                    // 97e1: 30 e3       0.
    jsr sub_cbc83                                                     // 97e3: 20 83 bc     ..
    jsr cac38                                                         // 97e6: 20 38 ac     8.
    sta l0027                                                         // 97e9: 85 27       .'
    jsr sub_cb365                                                     // 97eb: 20 65 b3     e.
// $97ee referenced 2 times by $97c4, $97d0
c97ee
    tsx                                                               // 97ee: ba          .
    inc l0106,x                                                       // 97ef: fe 06 01    ...
    ldy l001b                                                         // 97f2: a4 1b       ..
    sty l000a                                                         // 97f4: 84 0a       ..
    jsr sub_c8da2                                                     // 97f6: 20 a2 8d     ..
    beq c97d2                                                         // 97f9: f0 d7       ..
    jmp c90c5                                                         // 97fb: 4c c5 90    L..

// $97fe referenced 1 time by $97da
c97fe
    jmp c90c7                                                         // 97fe: 4c c7 90    L..

// $9801 referenced 1 time by $97d5
c9801
    brk                                                               // 9801: 00          .

    .byt $0c                                                          // 9802: 0c          .
    .asc "Not "                                                       // 9803: 4e 6f 74... Not
    .byt $ea                                                          // 9807: ea          .

// $9808 referenced 4 times by $9841, $9847, $9855, $985c
c9808
    brk                                                               // 9808: 00          .

    .byt $19                                                          // 9809: 19          .
    .asc "Bad "                                                       // 980a: 42 61 64... Bad
    .byt $eb,   0                                                     // 980e: eb 00       ..

sub_c9810
    jsr sub_c9332                                                     // 9810: 20 32 93     2.
    lda l002a                                                         // 9813: a5 2a       .*
    pha                                                               // 9815: 48          H
    jsr sub_c9771                                                     // 9816: 20 71 97     q.
    jsr sub_c9c5a                                                     // 9819: 20 5a 9c     Z.
    lda #$12                                                          // 981c: a9 12       ..
    jsr oswrch                                                        // 981e: 20 ee ff     ..            // Write character 18
    pla                                                               // 9821: 68          h
    bra c986a                                                         // 9822: 80 46       .F
sub_c9824
    jsr sub_c9332                                                     // 9824: 20 32 93     2.
    jsr c9c6a                                                         // 9827: 20 6a 9c     j.
    lda #$11                                                          // 982a: a9 11       ..
    bra c986a                                                         // 982c: 80 3c       .<
sub_c982e
    jsr sub_c9332                                                     // 982e: 20 32 93     2.
    jsr c9c6a                                                         // 9831: 20 6a 9c     j.
    jsr sub_cbe8b                                                     // 9834: 20 8b be     ..
    inx                                                               // 9837: e8          .
    bne c9866                                                         // 9838: d0 2c       .,
    iny                                                               // 983a: c8          .
    bne c9866                                                         // 983b: d0 29       .)
    lda l0004                                                         // 983d: a5 04       ..
    cmp l0006                                                         // 983f: c5 06       ..
    bne c9808                                                         // 9841: d0 c5       ..
    lda l0005                                                         // 9843: a5 05       ..
    cmp l0007                                                         // 9845: c5 07       ..
    bne c9808                                                         // 9847: d0 bf       ..
    ldx l002a                                                         // 9849: a6 2a       .*             // X=MODE number
    lda #osbyte_read_himem_for_mode                                   // 984b: a9 85       ..
    jsr osbyte                                                        // 984d: 20 f4 ff     ..            // Read top of user memory for a given screen mode X
    cpx l0002                                                         // 9850: e4 02       ..             // X and Y contain the address (low, high)
    tya                                                               // 9852: 98          .
    sbc l0003                                                         // 9853: e5 03       ..
    bcc c9808                                                         // 9855: 90 b1       ..
    cpx l0012                                                         // 9857: e4 12       ..
    tya                                                               // 9859: 98          .
    sbc l0013                                                         // 985a: e5 13       ..
    bcc c9808                                                         // 985c: 90 aa       ..
    stx l0006                                                         // 985e: 86 06       ..
    stx l0004                                                         // 9860: 86 04       ..
    sty l0007                                                         // 9862: 84 07       ..
    sty l0005                                                         // 9864: 84 05       ..
// $9866 referenced 2 times by $9838, $983b
c9866
    stz l001e                                                         // 9866: 64 1e       d.
    lda #$16                                                          // 9868: a9 16       ..
// $986a referenced 2 times by $9822, $982c
c986a
    jsr oswrch                                                        // 986a: 20 ee ff     ..            // Write character 22
    lda l002a                                                         // 986d: a5 2a       .*
    bra c98bd                                                         // 986f: 80 4c       .L
sub_c9871
    lda #4                                                            // 9871: a9 04       ..
    bra c9877                                                         // 9873: 80 02       ..
sub_c9875
    lda #5                                                            // 9875: a9 05       ..
// $9877 referenced 1 time by $9873
c9877
    pha                                                               // 9877: 48          H
    jsr sub_c9df3                                                     // 9878: 20 f3 9d     ..
    jsr sub_c9781                                                     // 987b: 20 81 97     ..
    bra c9889                                                         // 987e: 80 09       ..
sub_c9880
    jsr sub_c9332                                                     // 9880: 20 32 93     2.
    lda l002a                                                         // 9883: a5 2a       .*
    pha                                                               // 9885: 48          H
    jsr sub_c9771                                                     // 9886: 20 71 97     q.
// $9889 referenced 1 time by $987e
c9889
    jsr cbc66                                                         // 9889: 20 66 bc     f.
    jsr sub_c9771                                                     // 988c: 20 71 97     q.
    jsr sub_c9c5a                                                     // 988f: 20 5a 9c     Z.
    lda #$19                                                          // 9892: a9 19       ..
    jsr oswrch                                                        // 9894: 20 ee ff     ..            // Write character 25
    pla                                                               // 9897: 68          h
    jsr oswrch                                                        // 9898: 20 ee ff     ..            // Write character
    jsr sub_cbd46                                                     // 989b: 20 46 bd     F.
    lda l0037                                                         // 989e: a5 37       .7
    jsr oswrch                                                        // 98a0: 20 ee ff     ..            // Write character
    lda l0038                                                         // 98a3: a5 38       .8
    jsr oswrch                                                        // 98a5: 20 ee ff     ..            // Write character
    jsr sub_c990f                                                     // 98a8: 20 0f 99     ..
    lda l002b                                                         // 98ab: a5 2b       .+
    bra c98bd                                                         // 98ad: 80 0e       ..
sub_c98af
    jsr c9c6a                                                         // 98af: 20 6a 9c     j.
    lda #$10                                                          // 98b2: a9 10       ..
    bra c98bd                                                         // 98b4: 80 07       ..
sub_c98b6
    jsr c9c6a                                                         // 98b6: 20 6a 9c     j.
    stz l001e                                                         // 98b9: 64 1e       d.
    lda #$0c                                                          // 98bb: a9 0c       ..
// $98bd referenced 3 times by $986f, $98ad, $98b4
c98bd
    jsr oswrch                                                        // 98bd: 20 ee ff     ..            // Write character 12
// $98c0 referenced 2 times by $98cd, $98d5
c98c0
    jmp c90ca                                                         // 98c0: 4c ca 90    L..

sub_c98c3
    jsr c9c6a                                                         // 98c3: 20 6a 9c     j.
    jsr sub_cbac2                                                     // 98c6: 20 c2 ba     ..
    ldy #1                                                            // 98c9: a0 01       ..
// $98cb referenced 1 time by $98d3
loop_c98cb
    lda (l00fd),y                                                     // 98cb: b1 fd       ..
    beq c98c0                                                         // 98cd: f0 f1       ..
    jsr sub_cbd77                                                     // 98cf: 20 77 bd     w.
    iny                                                               // 98d2: c8          .
    bne loop_c98cb                                                    // 98d3: d0 f6       ..
    bra c98c0                                                         // 98d5: 80 e9       ..
// $98d7 referenced 1 time by $98fa
c98d7
    lda l002b                                                         // 98d7: a5 2b       .+
    jsr oswrch                                                        // 98d9: 20 ee ff     ..            // Write character
// $98dc referenced 2 times by $98f6, $990a
c98dc
    jsr c8f9d                                                         // 98dc: 20 9d 8f     ..
// $98df referenced 1 time by $98fe
loop_c98df
    cmp #$3a // ':'                                                   // 98df: c9 3a       .:
    beq c990c                                                         // 98e1: f0 29       .)
    cmp #$0d                                                          // 98e3: c9 0d       ..
    beq c990c                                                         // 98e5: f0 25       .%
    cmp #$8b                                                          // 98e7: c9 8b       ..
    beq c990c                                                         // 98e9: f0 21       .!
    dec l000a                                                         // 98eb: c6 0a       ..
    jsr sub_c9332                                                     // 98ed: 20 32 93     2.
    jsr sub_c990f                                                     // 98f0: 20 0f 99     ..
    jsr sub_c8da2                                                     // 98f3: 20 a2 8d     ..
    beq c98dc                                                         // 98f6: f0 e4       ..
    cmp #$3b // ';'                                                   // 98f8: c9 3b       .;
    beq c98d7                                                         // 98fa: f0 db       ..
    cmp #$7c // '|'                                                   // 98fc: c9 7c       .|
    bne loop_c98df                                                    // 98fe: d0 df       ..
    lda #0                                                            // 9900: a9 00       ..
    ldy #9                                                            // 9902: a0 09       ..
// $9904 referenced 1 time by $9908
loop_c9904
    jsr oswrch                                                        // 9904: 20 ee ff     ..            // Write character 0
    dey                                                               // 9907: 88          .
    bne loop_c9904                                                    // 9908: d0 fa       ..
    bra c98dc                                                         // 990a: 80 d0       ..
// $990c referenced 3 times by $98e1, $98e5, $98e9
c990c
    jmp c90c5                                                         // 990c: 4c c5 90    L..

// $990f referenced 3 times by $92ff, $98a8, $98f0
sub_c990f
    lda l002a                                                         // 990f: a5 2a       .*
    jmp (wrchv)                                                       // 9911: 6c 0e 02    l..

// $9914 referenced 1 time by $b031
sub_c9914
    ldy #1                                                            // 9914: a0 01       ..
    lda (l0037),y                                                     // 9916: b1 37       .7
    tax                                                               // 9918: aa          .
    lda #$f6                                                          // 9919: a9 f6       ..
    cpx #$f2                                                          // 991b: e0 f2       ..
    beq c9928                                                         // 991d: f0 09       ..
    lda #$f8                                                          // 991f: a9 f8       ..
    bra c9928                                                         // 9921: 80 05       ..
// $9923 referenced 3 times by $90fe, $963d, $9984
sub_c9923
    ldy #1                                                            // 9923: a0 01       ..
    lda (l0037),y                                                     // 9925: b1 37       .7
    asl                                                               // 9927: 0a          .
// $9928 referenced 2 times by $991d, $9921
c9928
    ldx #4                                                            // 9928: a2 04       ..
// $992a referenced 1 time by $9935
loop_c992a
    sta l003a                                                         // 992a: 85 3a       .:
    stx l003b                                                         // 992c: 86 3b       .;
    lda (l003a),y                                                     // 992e: b1 3a       .:
    beq c9937                                                         // 9930: f0 05       ..
    tax                                                               // 9932: aa          .
    lda (l003a)                                                       // 9933: b2 3a       .:
    bra loop_c992a                                                    // 9935: 80 f3       ..
// $9937 referenced 1 time by $9930
c9937
    lda l0003                                                         // 9937: a5 03       ..
    sta (l003a),y                                                     // 9939: 91 3a       .:
    lda l0002                                                         // 993b: a5 02       ..
    sta (l003a)                                                       // 993d: 92 3a       .:
    lda #0                                                            // 993f: a9 00       ..
    sta (l0002),y                                                     // 9941: 91 02       ..
    iny                                                               // 9943: c8          .
    cpy l0039                                                         // 9944: c4 39       .9
    beq c9979                                                         // 9946: f0 31       .1
// $9948 referenced 1 time by $994f
loop_c9948
    lda (l0037),y                                                     // 9948: b1 37       .7
    sta (l0002),y                                                     // 994a: 91 02       ..
    iny                                                               // 994c: c8          .
    cpy l0039                                                         // 994d: c4 39       .9
    bne loop_c9948                                                    // 994f: d0 f7       ..
    rts                                                               // 9951: 60          `

// $9952 referenced 4 times by $9108, $9642, $997a, $b036
sub_c9952
    lda #0                                                            // 9952: a9 00       ..
// $9954 referenced 1 time by $9958
loop_c9954
    sta (l0002),y                                                     // 9954: 91 02       ..
    iny                                                               // 9956: c8          .
    dex                                                               // 9957: ca          .
    bne loop_c9954                                                    // 9958: d0 fa       ..
// $995a referenced 1 time by $b044
sub_c995a
    clc                                                               // 995a: 18          .
    tya                                                               // 995b: 98          .
    adc l0002                                                         // 995c: 65 02       e.
    bcc c9962                                                         // 995e: 90 02       ..
    inc l0003                                                         // 9960: e6 03       ..
// $9962 referenced 1 time by $995e
c9962
    ldy l0003                                                         // 9962: a4 03       ..
    cpy l0005                                                         // 9964: c4 05       ..
    bcc c9977                                                         // 9966: 90 0f       ..
    bne c996e                                                         // 9968: d0 04       ..
    cmp l0004                                                         // 996a: c5 04       ..
    bcc c9977                                                         // 996c: 90 09       ..
// $996e referenced 1 time by $9968
c996e
    lda #0                                                            // 996e: a9 00       ..
    ldy #1                                                            // 9970: a0 01       ..
    sta (l003a),y                                                     // 9972: 91 3a       .:
    jmp c9164                                                         // 9974: 4c 64 91    Ld.

// $9977 referenced 2 times by $9966, $996c
c9977
    sta l0002                                                         // 9977: 85 02       ..
// $9979 referenced 1 time by $9946
c9979
    rts                                                               // 9979: 60          `

// $997a referenced 2 times by $998b, $998e
c997a
    jsr sub_c9952                                                     // 997a: 20 52 99     R.
// $997d referenced 9 times by $8a91, $910d, $9581, $97d7, $b112, $b649, $b887, $b91f, $b9ad
sub_c997d
    jsr sub_c99c4                                                     // 997d: 20 c4 99     ..
    bne c999f                                                         // 9980: d0 1d       ..
    bcs c999f                                                         // 9982: b0 1b       ..
    jsr sub_c9923                                                     // 9984: 20 23 99     #.
    ldx #5                                                            // 9987: a2 05       ..
    cpx l002c                                                         // 9989: e4 2c       .,
    bne c997a                                                         // 998b: d0 ed       ..
    inx                                                               // 998d: e8          .
    bra c997a                                                         // 998e: 80 ea       ..
// $9990 referenced 1 time by $99da
c9990
    cmp #$21 // '!'                                                   // 9990: c9 21       .!
    beq c99a0                                                         // 9992: f0 0c       ..
    cmp #$24 // '$'                                                   // 9994: c9 24       .$
    beq c99ab                                                         // 9996: f0 13       ..
    eor #$3f // '?'                                                   // 9998: 49 3f       I?
    beq c99a2                                                         // 999a: f0 06       ..
    lda #0                                                            // 999c: a9 00       ..
    sec                                                               // 999e: 38          8
// $999f referenced 2 times by $9980, $9982
c999f
    rts                                                               // 999f: 60          `

// $99a0 referenced 1 time by $9992
c99a0
    lda #4                                                            // 99a0: a9 04       ..
// $99a2 referenced 1 time by $999a
c99a2
    pha                                                               // 99a2: 48          H
    inc l001b                                                         // 99a3: e6 1b       ..
    jsr sub_c9779                                                     // 99a5: 20 79 97     y.
    jmp c9a99                                                         // 99a8: 4c 99 9a    L..

// $99ab referenced 1 time by $9996
c99ab
    inc l001b                                                         // 99ab: e6 1b       ..
    jsr sub_c9779                                                     // 99ad: 20 79 97     y.
    lda l002b                                                         // 99b0: a5 2b       .+
    beq c99ba                                                         // 99b2: f0 06       ..
    lda #$80                                                          // 99b4: a9 80       ..
    sta l002c                                                         // 99b6: 85 2c       .,
    sec                                                               // 99b8: 38          8
    rts                                                               // 99b9: 60          `

// $99ba referenced 1 time by $99b2
c99ba
    brk                                                               // 99ba: 00          .

    .byt 8                                                            // 99bb: 08          .
    .asc "$ range"                                                    // 99bc: 24 20 72... $ r
    .byt 0                                                            // 99c3: 00          .

// $99c4 referenced 2 times by $997d, $b522
sub_c99c4
    lda l000b                                                         // 99c4: a5 0b       ..
    sta l0019                                                         // 99c6: 85 19       ..
    lda l000c                                                         // 99c8: a5 0c       ..
    sta l001a                                                         // 99ca: 85 1a       ..
    ldy l000a                                                         // 99cc: a4 0a       ..
    dey                                                               // 99ce: 88          .
// $99cf referenced 1 time by $99d4
loop_c99cf
    iny                                                               // 99cf: c8          .
// $99d0 referenced 1 time by $9397
sub_c99d0
    lda (l0019),y                                                     // 99d0: b1 19       ..
    cmp #$20 // ' '                                                   // 99d2: c9 20       .
    beq loop_c99cf                                                    // 99d4: f0 f9       ..
// $99d6 referenced 1 time by $90f2
sub_c99d6
    sty l001b                                                         // 99d6: 84 1b       ..
// $99d8 referenced 1 time by $adae
sub_c99d8
    cmp #$40 // '@'                                                   // 99d8: c9 40       .@
    bcc c9990                                                         // 99da: 90 b4       ..
    cmp #$5b // '['                                                   // 99dc: c9 5b       .[
    bcs c99fa                                                         // 99de: b0 1a       ..
    asl                                                               // 99e0: 0a          .
    asl                                                               // 99e1: 0a          .
    sta l002a                                                         // 99e2: 85 2a       .*
    iny                                                               // 99e4: c8          .
    lda (l0019),y                                                     // 99e5: b1 19       ..
    cmp #$25 // '%'                                                   // 99e7: c9 25       .%
    bne c99fa                                                         // 99e9: d0 0f       ..
    lda #4                                                            // 99eb: a9 04       ..
    sta l002b                                                         // 99ed: 85 2b       .+
    ldx #4                                                            // 99ef: a2 04       ..
    stx l002c                                                         // 99f1: 86 2c       .,
    iny                                                               // 99f3: c8          .
    lda (l0019),y                                                     // 99f4: b1 19       ..
    cmp #$28 // '('                                                   // 99f6: c9 28       .(
    bne c9a67                                                         // 99f8: d0 6d       .m
// $99fa referenced 2 times by $99de, $99e9
c99fa
    ldx #5                                                            // 99fa: a2 05       ..
    stx l002c                                                         // 99fc: 86 2c       .,
    clc                                                               // 99fe: 18          .
    ldy l001a                                                         // 99ff: a4 1a       ..
    lda l001b                                                         // 9a01: a5 1b       ..
    tax                                                               // 9a03: aa          .
    bne c9a0e                                                         // 9a04: d0 08       ..
    dec                                                               // 9a06: 3a          :
    adc l0019                                                         // 9a07: 65 19       e.
    bcs c9a14                                                         // 9a09: b0 09       ..
    dey                                                               // 9a0b: 88          .
    bra c9a14                                                         // 9a0c: 80 06       ..
// $9a0e referenced 1 time by $9a04
c9a0e
    dec                                                               // 9a0e: 3a          :
    adc l0019                                                         // 9a0f: 65 19       e.
    bcc c9a14                                                         // 9a11: 90 01       ..
    iny                                                               // 9a13: c8          .
// $9a14 referenced 3 times by $9a09, $9a0c, $9a11
c9a14
    sta l0037                                                         // 9a14: 85 37       .7
    sty l0038                                                         // 9a16: 84 38       .8
    ldy #1                                                            // 9a18: a0 01       ..
    lda (l0037),y                                                     // 9a1a: b1 37       .7
    cmp #$41 // 'A'                                                   // 9a1c: c9 41       .A
    bcs c9a3a                                                         // 9a1e: b0 1a       ..
    cmp #$30 // '0'                                                   // 9a20: c9 30       .0
    bcc c9a46                                                         // 9a22: 90 22       ."
    cmp #$3a // ':'                                                   // 9a24: c9 3a       .:
    bcs c9a46                                                         // 9a26: b0 1e       ..
// $9a28 referenced 3 times by $9a36, $9a3c, $9a44
c9a28
    inx                                                               // 9a28: e8          .
    iny                                                               // 9a29: c8          .
    lda (l0037),y                                                     // 9a2a: b1 37       .7
    cmp #$41 // 'A'                                                   // 9a2c: c9 41       .A
    bcs c9a3a                                                         // 9a2e: b0 0a       ..
    cmp #$30 // '0'                                                   // 9a30: c9 30       .0
    bcc c9a46                                                         // 9a32: 90 12       ..
    cmp #$3a // ':'                                                   // 9a34: c9 3a       .:
    bcc c9a28                                                         // 9a36: 90 f0       ..
    bra c9a46                                                         // 9a38: 80 0c       ..
// $9a3a referenced 2 times by $9a1e, $9a2e
c9a3a
    cmp #$5b // '['                                                   // 9a3a: c9 5b       .[
    bcc c9a28                                                         // 9a3c: 90 ea       ..
    cmp #$5f // '_'                                                   // 9a3e: c9 5f       ._
    bcc c9a46                                                         // 9a40: 90 04       ..
    cmp #$7b // '{'                                                   // 9a42: c9 7b       .{
    bcc c9a28                                                         // 9a44: 90 e2       ..
// $9a46 referenced 5 times by $9a22, $9a26, $9a32, $9a38, $9a40
c9a46
    cpy #1                                                            // 9a46: c0 01       ..
    beq c9a76                                                         // 9a48: f0 2c       .,
    cmp #$24 // '$'                                                   // 9a4a: c9 24       .$
    beq c9aa5                                                         // 9a4c: f0 57       .W
    cmp #$25 // '%'                                                   // 9a4e: c9 25       .%
    bne c9a58                                                         // 9a50: d0 06       ..
    dec l002c                                                         // 9a52: c6 2c       .,
    inx                                                               // 9a54: e8          .
    iny                                                               // 9a55: c8          .
    lda (l0037),y                                                     // 9a56: b1 37       .7
// $9a58 referenced 1 time by $9a50
c9a58
    cmp #$28 // '('                                                   // 9a58: c9 28       .(
    beq c9aa0                                                         // 9a5a: f0 44       .D
    jsr sub_c8149                                                     // 9a5c: 20 49 81     I.
    beq c9a75                                                         // 9a5f: f0 14       ..
    stx l001b                                                         // 9a61: 86 1b       ..
// $9a63 referenced 1 time by $9aa3
c9a63
    ldy l001b                                                         // 9a63: a4 1b       ..
    lda (l0019),y                                                     // 9a65: b1 19       ..
// $9a67 referenced 1 time by $99f8
c9a67
    cmp #$21 // '!'                                                   // 9a67: c9 21       .!
    beq c9a79                                                         // 9a69: f0 0e       ..
    eor #$3f // '?'                                                   // 9a6b: 49 3f       I?
    beq c9a7b                                                         // 9a6d: f0 0c       ..
    clc                                                               // 9a6f: 18          .
    sty l001b                                                         // 9a70: 84 1b       ..
    lda #$ff                                                          // 9a72: a9 ff       ..
    rts                                                               // 9a74: 60          `

// $9a75 referenced 2 times by $9a5f, $9ab2
c9a75
    clc                                                               // 9a75: 18          .
// $9a76 referenced 1 time by $9a48
c9a76
    lda #0                                                            // 9a76: a9 00       ..
    rts                                                               // 9a78: 60          `

// $9a79 referenced 1 time by $9a69
c9a79
    lda #4                                                            // 9a79: a9 04       ..
// $9a7b referenced 1 time by $9a6d
c9a7b
    pha                                                               // 9a7b: 48          H
    iny                                                               // 9a7c: c8          .
    sty l001b                                                         // 9a7d: 84 1b       ..
    jsr cb1de                                                         // 9a7f: 20 de b1     ..
    jsr c9784                                                         // 9a82: 20 84 97     ..
    lda l002b                                                         // 9a85: a5 2b       .+
    pha                                                               // 9a87: 48          H
    lda l002a                                                         // 9a88: a5 2a       .*
    pha                                                               // 9a8a: 48          H
    jsr sub_c9779                                                     // 9a8b: 20 79 97     y.
    clc                                                               // 9a8e: 18          .
    pla                                                               // 9a8f: 68          h
    adc l002a                                                         // 9a90: 65 2a       e*
    sta l002a                                                         // 9a92: 85 2a       .*
    pla                                                               // 9a94: 68          h
    adc l002b                                                         // 9a95: 65 2b       e+
    sta l002b                                                         // 9a97: 85 2b       .+
// $9a99 referenced 1 time by $99a8
c9a99
    pla                                                               // 9a99: 68          h
    sta l002c                                                         // 9a9a: 85 2c       .,
    clc                                                               // 9a9c: 18          .
    lda #$ff                                                          // 9a9d: a9 ff       ..
    rts                                                               // 9a9f: 60          `

// $9aa0 referenced 1 time by $9a5a
c9aa0
    jsr sub_c9ac9                                                     // 9aa0: 20 c9 9a     ..
    bra c9a63                                                         // 9aa3: 80 be       ..
// $9aa5 referenced 1 time by $9a4c
c9aa5
    dec l002c                                                         // 9aa5: c6 2c       .,
    inx                                                               // 9aa7: e8          .
    iny                                                               // 9aa8: c8          .
    lda (l0037),y                                                     // 9aa9: b1 37       .7
    cmp #$28 // '('                                                   // 9aab: c9 28       .(
    beq c9abc                                                         // 9aad: f0 0d       ..
    jsr sub_c8149                                                     // 9aaf: 20 49 81     I.
    beq c9a75                                                         // 9ab2: f0 c1       ..
    stx l001b                                                         // 9ab4: 86 1b       ..
// $9ab6 referenced 1 time by $9abf
loop_c9ab6
    lda #$81                                                          // 9ab6: a9 81       ..
    sta l002c                                                         // 9ab8: 85 2c       .,
    sec                                                               // 9aba: 38          8
    rts                                                               // 9abb: 60          `

// $9abc referenced 1 time by $9aad
c9abc
    jsr sub_c9ac9                                                     // 9abc: 20 c9 9a     ..
    bra loop_c9ab6                                                    // 9abf: 80 f5       ..
// $9ac1 referenced 2 times by $9ace, $9af0
c9ac1
    brk                                                               // 9ac1: 00          .

    .byt $0e                                                          // 9ac2: 0e          .
    .asc "Array"                                                      // 9ac3: 41 72 72... Arr
    .byt 0                                                            // 9ac8: 00          .

// $9ac9 referenced 2 times by $9aa0, $9abc
sub_c9ac9
    inx                                                               // 9ac9: e8          .
    iny                                                               // 9aca: c8          .
    jsr sub_c8149                                                     // 9acb: 20 49 81     I.
    beq c9ac1                                                         // 9ace: f0 f1       ..
    stx l001b                                                         // 9ad0: 86 1b       ..
    lda l002c                                                         // 9ad2: a5 2c       .,
    pha                                                               // 9ad4: 48          H
    lda l002a                                                         // 9ad5: a5 2a       .*
    pha                                                               // 9ad7: 48          H
    lda l002b                                                         // 9ad8: a5 2b       .+
    pha                                                               // 9ada: 48          H
    lda (l002a)                                                       // 9adb: b2 2a       .*
    cmp #4                                                            // 9add: c9 04       ..
    bcc c9b4c                                                         // 9adf: 90 6b       .k
    jsr cac38                                                         // 9ae1: 20 38 ac     8.
    inc l002d                                                         // 9ae4: e6 2d       .-
// $9ae6 referenced 1 time by $9b25
c9ae6
    jsr cbc66                                                         // 9ae6: 20 66 bc     f.
    jsr sub_c9774                                                     // 9ae9: 20 74 97     t.
    inc l001b                                                         // 9aec: e6 1b       ..
    cpx #$2c // ','                                                   // 9aee: e0 2c       .,
    bne c9ac1                                                         // 9af0: d0 cf       ..
    ldx #$39 // '9'                                                   // 9af2: a2 39       .9
    jsr sub_cbd48                                                     // 9af4: 20 48 bd     H.
    pla                                                               // 9af7: 68          h
    sta l0038                                                         // 9af8: 85 38       .8
    ply                                                               // 9afa: 7a          z
    sty l0037                                                         // 9afb: 84 37       .7
    phy                                                               // 9afd: 5a          Z
    pha                                                               // 9afe: 48          H
    ldy l003c                                                         // 9aff: a4 3c       .<
    jsr sub_c9b97                                                     // 9b01: 20 97 9b     ..
    sty l002d                                                         // 9b04: 84 2d       .-
    lda (l0037),y                                                     // 9b06: b1 37       .7
    sta l003f                                                         // 9b08: 85 3f       .?
    iny                                                               // 9b0a: c8          .
    lda (l0037),y                                                     // 9b0b: b1 37       .7
    sta l0040                                                         // 9b0d: 85 40       .@
    lda l002a                                                         // 9b0f: a5 2a       .*
    adc l0039                                                         // 9b11: 65 39       e9
    sta l002a                                                         // 9b13: 85 2a       .*
    lda l002b                                                         // 9b15: a5 2b       .+
    adc l003a                                                         // 9b17: 65 3a       e:
    sta l002b                                                         // 9b19: 85 2b       .+
    jsr sub_c95cb                                                     // 9b1b: 20 cb 95     ..
    sec                                                               // 9b1e: 38          8
    lda (l0037)                                                       // 9b1f: b2 37       .7
    sbc l002d                                                         // 9b21: e5 2d       .-
    cmp #3                                                            // 9b23: c9 03       ..
    bcs c9ae6                                                         // 9b25: b0 bf       ..
    jsr cbc66                                                         // 9b27: 20 66 bc     f.
    jsr sub_c976c                                                     // 9b2a: 20 6c 97     l.
    pla                                                               // 9b2d: 68          h
    sta l0038                                                         // 9b2e: 85 38       .8
    pla                                                               // 9b30: 68          h
    sta l0037                                                         // 9b31: 85 37       .7
    ldx #$39 // '9'                                                   // 9b33: a2 39       .9
    jsr sub_cbd48                                                     // 9b35: 20 48 bd     H.
    ldy l003c                                                         // 9b38: a4 3c       .<
    jsr sub_c9b97                                                     // 9b3a: 20 97 9b     ..
    clc                                                               // 9b3d: 18          .
    lda l0039                                                         // 9b3e: a5 39       .9
    adc l002a                                                         // 9b40: 65 2a       e*
    sta l002a                                                         // 9b42: 85 2a       .*
    lda l003a                                                         // 9b44: a5 3a       .:
    adc l002b                                                         // 9b46: 65 2b       e+
    sta l002b                                                         // 9b48: 85 2b       .+
    bcc c9b5a                                                         // 9b4a: 90 0e       ..
// $9b4c referenced 1 time by $9adf
c9b4c
    jsr sub_c976c                                                     // 9b4c: 20 6c 97     l.
    pla                                                               // 9b4f: 68          h
    sta l0038                                                         // 9b50: 85 38       .8
    pla                                                               // 9b52: 68          h
    sta l0037                                                         // 9b53: 85 37       .7
    ldy #1                                                            // 9b55: a0 01       ..
    jsr sub_c9b97                                                     // 9b57: 20 97 9b     ..
// $9b5a referenced 1 time by $9b4a
c9b5a
    pla                                                               // 9b5a: 68          h
    sta l002c                                                         // 9b5b: 85 2c       .,
    cmp #5                                                            // 9b5d: c9 05       ..
    bne c9b78                                                         // 9b5f: d0 17       ..
    ldx l002b                                                         // 9b61: a6 2b       .+
    lda l002a                                                         // 9b63: a5 2a       .*
    asl l002a                                                         // 9b65: 06 2a       .*
    rol l002b                                                         // 9b67: 26 2b       &+
    asl l002a                                                         // 9b69: 06 2a       .*
    rol l002b                                                         // 9b6b: 26 2b       &+
    adc l002a                                                         // 9b6d: 65 2a       e*
    sta l002a                                                         // 9b6f: 85 2a       .*
    txa                                                               // 9b71: 8a          .
    adc l002b                                                         // 9b72: 65 2b       e+
    sta l002b                                                         // 9b74: 85 2b       .+
    bra c9b80                                                         // 9b76: 80 08       ..
// $9b78 referenced 1 time by $9b5f
c9b78
    asl l002a                                                         // 9b78: 06 2a       .*
    rol l002b                                                         // 9b7a: 26 2b       &+
    asl l002a                                                         // 9b7c: 06 2a       .*
    rol l002b                                                         // 9b7e: 26 2b       &+
// $9b80 referenced 1 time by $9b76
c9b80
    tya                                                               // 9b80: 98          .
    adc l002a                                                         // 9b81: 65 2a       e*
    sta l002a                                                         // 9b83: 85 2a       .*
    bcc c9b8a                                                         // 9b85: 90 03       ..
    inc l002b                                                         // 9b87: e6 2b       .+
    clc                                                               // 9b89: 18          .
// $9b8a referenced 1 time by $9b85
c9b8a
    lda l0037                                                         // 9b8a: a5 37       .7
    adc l002a                                                         // 9b8c: 65 2a       e*
    sta l002a                                                         // 9b8e: 85 2a       .*
    lda l0038                                                         // 9b90: a5 38       .8
    adc l002b                                                         // 9b92: 65 2b       e+
    sta l002b                                                         // 9b94: 85 2b       .+
    rts                                                               // 9b96: 60          `

// $9b97 referenced 3 times by $9b01, $9b3a, $9b57
sub_c9b97
    lda l002b                                                         // 9b97: a5 2b       .+
    and #$c0                                                          // 9b99: 29 c0       ).
    ora l002c                                                         // 9b9b: 05 2c       .,
    ora l002d                                                         // 9b9d: 05 2d       .-
    bne c9bae                                                         // 9b9f: d0 0d       ..
    lda l002a                                                         // 9ba1: a5 2a       .*
    cmp (l0037),y                                                     // 9ba3: d1 37       .7
    iny                                                               // 9ba5: c8          .
    lda l002b                                                         // 9ba6: a5 2b       .+
    sbc (l0037),y                                                     // 9ba8: f1 37       .7
    bcs c9bae                                                         // 9baa: b0 02       ..
    iny                                                               // 9bac: c8          .
    rts                                                               // 9bad: 60          `

// $9bae referenced 2 times by $9b9f, $9baa
c9bae
    brk                                                               // 9bae: 00          .

    .byt $0f                                                          // 9baf: 0f          .
    .asc "Subscript"                                                  // 9bb0: 53 75 62... Sub
    .byt 0                                                            // 9bb9: 00          .

// $9bba referenced 1 time by $9615
sub_c9bba
    ldy #1                                                            // 9bba: a0 01       ..
// $9bbc referenced 2 times by $9bd0, $b095
c9bbc
    lda (l0037),y                                                     // 9bbc: b1 37       .7
    cmp #$30 // '0'                                                   // 9bbe: c9 30       .0
    bcc c9bda                                                         // 9bc0: 90 18       ..
    cmp #$40 // '@'                                                   // 9bc2: c9 40       .@
    bcs c9bd2                                                         // 9bc4: b0 0c       ..
    cmp #$3a // ':'                                                   // 9bc6: c9 3a       .:
    bcs c9bda                                                         // 9bc8: b0 10       ..
    cpy #1                                                            // 9bca: c0 01       ..
    beq c9bda                                                         // 9bcc: f0 0c       ..
// $9bce referenced 2 times by $9bd8, $9bdd
c9bce
    inx                                                               // 9bce: e8          .
    iny                                                               // 9bcf: c8          .
    bne c9bbc                                                         // 9bd0: d0 ea       ..
// $9bd2 referenced 1 time by $9bc4
c9bd2
    cmp #$5f // '_'                                                   // 9bd2: c9 5f       ._
    bcs c9bdb                                                         // 9bd4: b0 05       ..
    cmp #$5b // '['                                                   // 9bd6: c9 5b       .[
    bcc c9bce                                                         // 9bd8: 90 f4       ..
// $9bda referenced 3 times by $9bc0, $9bc8, $9bcc
c9bda
    rts                                                               // 9bda: 60          `

// $9bdb referenced 1 time by $9bd4
c9bdb
    cmp #$7b // '{'                                                   // 9bdb: c9 7b       .{
    bcc c9bce                                                         // 9bdd: 90 ef       ..
    rts                                                               // 9bdf: 60          `

// $9be0 referenced 1 time by $9be8
loop_c9be0
    inc l000a                                                         // 9be0: e6 0a       ..
// $9be2 referenced 10 times by $93da, $93e7, $9415, $9425, $970b, $9ced, $b3d6, $b3fb, $b85a, $bb33
sub_c9be2
    ldy l000a                                                         // 9be2: a4 0a       ..
    lda (l000b),y                                                     // 9be4: b1 0b       ..
    cmp #$20 // ' '                                                   // 9be6: c9 20       .
    beq loop_c9be0                                                    // 9be8: f0 f6       ..
    cmp #$8d                                                          // 9bea: c9 8d       ..
    bne c9c08                                                         // 9bec: d0 1a       ..
// $9bee referenced 2 times by $94de, $b500
sub_c9bee
    iny                                                               // 9bee: c8          .
    lda (l000b),y                                                     // 9bef: b1 0b       ..
    asl                                                               // 9bf1: 0a          .
    asl                                                               // 9bf2: 0a          .
    tax                                                               // 9bf3: aa          .
    and #$c0                                                          // 9bf4: 29 c0       ).
    iny                                                               // 9bf6: c8          .
    eor (l000b),y                                                     // 9bf7: 51 0b       Q.
    sta l002a                                                         // 9bf9: 85 2a       .*
    txa                                                               // 9bfb: 8a          .
    asl                                                               // 9bfc: 0a          .
    asl                                                               // 9bfd: 0a          .
    iny                                                               // 9bfe: c8          .
    eor (l000b),y                                                     // 9bff: 51 0b       Q.
    sta l002b                                                         // 9c01: 85 2b       .+
    iny                                                               // 9c03: c8          .
    sty l000a                                                         // 9c04: 84 0a       ..
    sec                                                               // 9c06: 38          8
    rts                                                               // 9c07: 60          `

// $9c08 referenced 1 time by $9bec
c9c08
    clc                                                               // 9c08: 18          .
    rts                                                               // 9c09: 60          `

// $9c0a referenced 2 times by $9755, $977e
sub_c9c0a
    lda l000b                                                         // 9c0a: a5 0b       ..
    sta l0019                                                         // 9c0c: 85 19       ..
    lda l000c                                                         // 9c0e: a5 0c       ..
    sta l001a                                                         // 9c10: 85 1a       ..
    lda l000a                                                         // 9c12: a5 0a       ..
    sta l001b                                                         // 9c14: 85 1b       ..
// $9c16 referenced 4 times by $9117, $913e, $9c1e, $bede
c9c16
    ldy l001b                                                         // 9c16: a4 1b       ..
    inc l001b                                                         // 9c18: e6 1b       ..
    lda (l0019),y                                                     // 9c1a: b1 19       ..
    cmp #$20 // ' '                                                   // 9c1c: c9 20       .
    beq c9c16                                                         // 9c1e: f0 f6       ..
    cmp #$3d // '='                                                   // 9c20: c9 3d       .=
    beq c9c52                                                         // 9c22: f0 2e       ..
// $9c24 referenced 1 time by $9c4f
c9c24
    brk                                                               // 9c24: 00          .

    .byt 4                                                            // 9c25: 04          .
    .asc "Mistake"                                                    // 9c26: 4d 69 73... Mis

// $9c2d referenced 7 times by $8af2, $8d61, $9146, $93d7, $9c7e, $b52d, $b86f
c9c2d
    brk                                                               // 9c2d: 00          .

    .byt $10                                                          // 9c2e: 10          .
    .asc "Syntax error"                                               // 9c2f: 53 79 6e... Syn

// $9c3b referenced 2 times by $9c61, $9c68
c9c3b
    brk                                                               // 9c3b: 00          .

    .byt $0d                                                          // 9c3c: 0d          .
    .asc "No "                                                        // 9c3d: 4e 6f 20    No
    .byt $f2                                                          // 9c40: f2          .

// $9c41 referenced 2 times by $9c90, $babf
c9c41
    brk                                                               // 9c41: 00          .

    .byt $11                                                          // 9c42: 11          .
    .asc "Escape"                                                     // 9c43: 45 73 63... Esc
    .byt 0                                                            // 9c49: 00          .

// $9c4a referenced 2 times by $90fb, $b653
sub_c9c4a
    jsr c8f92                                                         // 9c4a: 20 92 8f     ..
    cmp #$3d // '='                                                   // 9c4d: c9 3d       .=
    bne c9c24                                                         // 9c4f: d0 d3       ..
    rts                                                               // 9c51: 60          `

// $9c52 referenced 1 time by $9c22
c9c52
    jsr sub_c9dff                                                     // 9c52: 20 ff 9d     ..
// $9c55 referenced 3 times by $9132, $ba4a, $be7e
c9c55
    txa                                                               // 9c55: 8a          .
    ldy l001b                                                         // 9c56: a4 1b       ..
    bra c9c74                                                         // 9c58: 80 1a       ..
// $9c5a referenced 9 times by $93b7, $97ba, $9819, $988f, $b315, $b336, $b354, $bef1, $bf04
sub_c9c5a
    ldy l001b                                                         // 9c5a: a4 1b       ..
    bra c9c6c                                                         // 9c5c: 80 0e       ..
sub_c9c5e
    tsx                                                               // 9c5e: ba          .
    cpx #$fc                                                          // 9c5f: e0 fc       ..
    bcs c9c3b                                                         // 9c61: b0 d8       ..
    lda l01ff                                                         // 9c63: ad ff 01    ...
    cmp #$f2                                                          // 9c66: c9 f2       ..
    bne c9c3b                                                         // 9c68: d0 d1       ..
// $9c6a referenced 24 times by $8fc5, $8fd7, $8fea, $9042, $90c7, $9149, $93ec, $9430, $9703, $971b, $972e, $9737, $9827, $9831, $98af, $98b6, $98c3, $9c93, $b41e, $b70c, $b737, $b750, $b769, $b997
c9c6a
    ldy l000a                                                         // 9c6a: a4 0a       ..
// $9c6c referenced 2 times by $8a79, $9c5c
c9c6c
    dey                                                               // 9c6c: 88          .
// $9c6d referenced 1 time by $9c72
loop_c9c6d
    iny                                                               // 9c6d: c8          .
    lda (l000b),y                                                     // 9c6e: b1 0b       ..
    cmp #$20 // ' '                                                   // 9c70: c9 20       .
    beq loop_c9c6d                                                    // 9c72: f0 f9       ..
// $9c74 referenced 3 times by $9433, $9c58, $b428
c9c74
    cmp #$3a // ':'                                                   // 9c74: c9 3a       .:
    beq c9c80                                                         // 9c76: f0 08       ..
    cmp #$0d                                                          // 9c78: c9 0d       ..
    beq c9c80                                                         // 9c7a: f0 04       ..
    cmp #$8b                                                          // 9c7c: c9 8b       ..
    bne c9c2d                                                         // 9c7e: d0 ad       ..
// $9c80 referenced 10 times by $89e4, $9069, $907d, $9c76, $9c7a, $b02e, $b40d, $b451, $b77b, $ba8e
c9c80
    clc                                                               // 9c80: 18          .
    tya                                                               // 9c81: 98          .
    adc l000b                                                         // 9c82: 65 0b       e.
    sta l000b                                                         // 9c84: 85 0b       ..
    bcc c9c8a                                                         // 9c86: 90 02       ..
    inc l000c                                                         // 9c88: e6 0c       ..
// $9c8a referenced 4 times by $9c86, $9cf5, $b5d9, $b7f4
c9c8a
    ldy #1                                                            // 9c8a: a0 01       ..
    sty l000a                                                         // 9c8c: 84 0a       ..
// $9c8e referenced 1 time by $93fd
sub_c9c8e
    bit l00ff                                                         // 9c8e: 24 ff       $.
    bmi c9c41                                                         // 9c90: 30 af       0.
// $9c92 referenced 1 time by $9c9a
loop_c9c92
    rts                                                               // 9c92: 60          `

// $9c93 referenced 1 time by $b6bf
sub_c9c93
    jsr c9c6a                                                         // 9c93: 20 6a 9c     j.
    lda (l000b)                                                       // 9c96: b2 0b       ..
    cmp #$3a // ':'                                                   // 9c98: c9 3a       .:
    beq loop_c9c92                                                    // 9c9a: f0 f6       ..
    lda l000c                                                         // 9c9c: a5 0c       ..
    cmp #7                                                            // 9c9e: c9 07       ..
    beq c9cc6                                                         // 9ca0: f0 24       .$
// $9ca2 referenced 1 time by $8a8b
sub_c9ca2
    ldy #1                                                            // 9ca2: a0 01       ..
    lda (l000b),y                                                     // 9ca4: b1 0b       ..
    bmi c9cc6                                                         // 9ca6: 30 1e       0.
    ldx l0020                                                         // 9ca8: a6 20       .
    beq c9cb6                                                         // 9caa: f0 0a       ..
    sta l002b                                                         // 9cac: 85 2b       .+
    iny                                                               // 9cae: c8          .
    lda (l000b),y                                                     // 9caf: b1 0b       ..
    sta l002a                                                         // 9cb1: 85 2a       .*
    jsr sub_c9d0f                                                     // 9cb3: 20 0f 9d     ..
// $9cb6 referenced 1 time by $9caa
c9cb6
    lda #3                                                            // 9cb6: a9 03       ..
// $9cb8 referenced 1 time by $94d9
sub_c9cb8
    clc                                                               // 9cb8: 18          .
    adc l000b                                                         // 9cb9: 65 0b       e.
    sta l000b                                                         // 9cbb: 85 0b       ..
    bcc c9cc1                                                         // 9cbd: 90 02       ..
    inc l000c                                                         // 9cbf: e6 0c       ..
// $9cc1 referenced 1 time by $9cbd
c9cc1
    ldy #1                                                            // 9cc1: a0 01       ..
    sty l000a                                                         // 9cc3: 84 0a       ..
// $9cc5 referenced 1 time by $9d17
c9cc5
    rts                                                               // 9cc5: 60          `

// $9cc6 referenced 2 times by $9ca0, $9ca6
c9cc6
    jmp c904b                                                         // 9cc6: 4c 4b 90    LK.

// $9cc9 referenced 1 time by $9ccf
loop_c9cc9
    jmp c9155                                                         // 9cc9: 4c 55 91    LU.

sub_c9ccc
    jsr sub_c9df3                                                     // 9ccc: 20 f3 9d     ..
    beq loop_c9cc9                                                    // 9ccf: f0 f8       ..
    bpl c9cd6                                                         // 9cd1: 10 03       ..
    jsr sub_c9788                                                     // 9cd3: 20 88 97     ..
// $9cd6 referenced 1 time by $9cd1
c9cd6
    ldy l001b                                                         // 9cd6: a4 1b       ..
    sty l000a                                                         // 9cd8: 84 0a       ..
    lda l002a                                                         // 9cda: a5 2a       .*
    ora l002b                                                         // 9cdc: 05 2b       .+
    ora l002c                                                         // 9cde: 05 2c       .,
    ora l002d                                                         // 9ce0: 05 2d       .-
    beq c9cfb                                                         // 9ce2: f0 17       ..
    cpx #$8c                                                          // 9ce4: e0 8c       ..
    beq c9ceb                                                         // 9ce6: f0 03       ..
// $9ce8 referenced 1 time by $9cf0
loop_c9ce8
    jmp c90d0                                                         // 9ce8: 4c d0 90    L..

// $9ceb referenced 1 time by $9ce6
c9ceb
    inc l000a                                                         // 9ceb: e6 0a       ..
// $9ced referenced 2 times by $9d0a, $b849
c9ced
    jsr sub_c9be2                                                     // 9ced: 20 e2 9b     ..
    bcc loop_c9ce8                                                    // 9cf0: 90 f6       ..
    jsr cb866                                                         // 9cf2: 20 66 b8     f.
    jsr c9c8a                                                         // 9cf5: 20 8a 9c     ..
    jmp cb753                                                         // 9cf8: 4c 53 b7    LS.

// $9cfb referenced 1 time by $9ce2
c9cfb
    ldy l000a                                                         // 9cfb: a4 0a       ..
// $9cfd referenced 1 time by $9d06
loop_c9cfd
    lda (l000b),y                                                     // 9cfd: b1 0b       ..
    cmp #$0d                                                          // 9cff: c9 0d       ..
    beq c9d0c                                                         // 9d01: f0 09       ..
    iny                                                               // 9d03: c8          .
    cmp #$8b                                                          // 9d04: c9 8b       ..
    bne loop_c9cfd                                                    // 9d06: d0 f5       ..
    sty l000a                                                         // 9d08: 84 0a       ..
    beq c9ced                                                         // 9d0a: f0 e1       ..
// $9d0c referenced 1 time by $9d01
c9d0c
    jmp c907d                                                         // 9d0c: 4c 7d 90    L}.

// $9d0f referenced 3 times by $909d, $9cb3, $b757
sub_c9d0f
    lda l002a                                                         // 9d0f: a5 2a       .*
    cmp l0021                                                         // 9d11: c5 21       .!
    lda l002b                                                         // 9d13: a5 2b       .+
    sbc l0022                                                         // 9d15: e5 22       ."
    bcs c9cc5                                                         // 9d17: b0 ac       ..
    lda #$5b // '['                                                   // 9d19: a9 5b       .[
    jsr sub_cbdd8                                                     // 9d1b: 20 d8 bd     ..
    jsr sub_ca0e8                                                     // 9d1e: 20 e8 a0     ..
    lda #$5d // ']'                                                   // 9d21: a9 5d       .]
    jsr sub_cbdd8                                                     // 9d23: 20 d8 bd     ..
    jmp cbdd2                                                         // 9d26: 4c d2 bd    L..

// $9d29 referenced 1 time by $9d84
c9d29
    jsr cbc3a                                                         // 9d29: 20 3a bc     :.
    jsr sub_c9f07                                                     // 9d2c: 20 07 9f     ..
    tay                                                               // 9d2f: a8          .
    jsr sub_c97a2                                                     // 9d30: 20 a2 97     ..
    jsr sub_cbc24                                                     // 9d33: 20 24 bc     $.
// $9d36 referenced 1 time by $b614
sub_c9d36
    jsr sub_ca514                                                     // 9d36: 20 14 a5     ..
    lda l002e                                                         // 9d39: a5 2e       ..
    eor l003b                                                         // 9d3b: 45 3b       E;
    bpl c9d57                                                         // 9d3d: 10 18       ..
    asl l002e                                                         // 9d3f: 06 2e       ..
    bra c9d79                                                         // 9d41: 80 36       .6
// $9d43 referenced 1 time by $9db8
c9d43
    sty l002d                                                         // 9d43: 84 2d       .-
    pla                                                               // 9d45: 68          h
    sta l002c                                                         // 9d46: 85 2c       .,
    pla                                                               // 9d48: 68          h
    sta l002b                                                         // 9d49: 85 2b       .+
    pla                                                               // 9d4b: 68          h
    sta l002a                                                         // 9d4c: 85 2a       .*
    jsr sub_c828a                                                     // 9d4e: 20 8a 82     ..
    lda l003b                                                         // 9d51: a5 3b       .;
    eor #$80                                                          // 9d53: 49 80       I.
    sta l003b                                                         // 9d55: 85 3b       .;
// $9d57 referenced 1 time by $9d3d
c9d57
    lda l003c                                                         // 9d57: a5 3c       .<
    cmp l0030                                                         // 9d59: c5 30       .0
    bne c9d75                                                         // 9d5b: d0 18       ..
    lda l003d                                                         // 9d5d: a5 3d       .=
    cmp l0031                                                         // 9d5f: c5 31       .1
    bne c9d75                                                         // 9d61: d0 12       ..
    lda l003e                                                         // 9d63: a5 3e       .>
    cmp l0032                                                         // 9d65: c5 32       .2
    bne c9d75                                                         // 9d67: d0 0c       ..
    lda l003f                                                         // 9d69: a5 3f       .?
    cmp l0033                                                         // 9d6b: c5 33       .3
    bne c9d75                                                         // 9d6d: d0 06       ..
    lda l0040                                                         // 9d6f: a5 40       .@
    sbc l0034                                                         // 9d71: e5 34       .4
    beq c9d7b                                                         // 9d73: f0 06       ..
// $9d75 referenced 4 times by $9d5b, $9d61, $9d67, $9d6d
c9d75
    ror                                                               // 9d75: 6a          j
    eor l003b                                                         // 9d76: 45 3b       E;
    rol                                                               // 9d78: 2a          *
// $9d79 referenced 1 time by $9d41
c9d79
    lda #$ff                                                          // 9d79: a9 ff       ..
// $9d7b referenced 1 time by $9d73
c9d7b
    rts                                                               // 9d7b: 60          `

// $9d7c referenced 2 times by $9d98, $9dcb
c9d7c
    jmp c9155                                                         // 9d7c: 4c 55 91    LU.

// $9d7f referenced 3 times by $9ea6, $9ead, $9ec2
sub_c9d7f
    inc l001b                                                         // 9d7f: e6 1b       ..
// $9d81 referenced 2 times by $9e9d, $9ebb
sub_c9d81
    txa                                                               // 9d81: 8a          .
// $9d82 referenced 1 time by $9e80
sub_c9d82
    beq c9dc4                                                         // 9d82: f0 40       .@
    bmi c9d29                                                         // 9d84: 30 a3       0.
    lda l002a                                                         // 9d86: a5 2a       .*
    pha                                                               // 9d88: 48          H
    lda l002b                                                         // 9d89: a5 2b       .+
    pha                                                               // 9d8b: 48          H
    lda l002c                                                         // 9d8c: a5 2c       .,
    pha                                                               // 9d8e: 48          H
    lda l002d                                                         // 9d8f: a5 2d       .-
    pha                                                               // 9d91: 48          H
    jsr sub_c9f07                                                     // 9d92: 20 07 9f     ..
    tay                                                               // 9d95: a8          .
    bmi c9db4                                                         // 9d96: 30 1c       0.
    beq c9d7c                                                         // 9d98: f0 e2       ..
    pla                                                               // 9d9a: 68          h
    tay                                                               // 9d9b: a8          .
    eor l002d                                                         // 9d9c: 45 2d       E-
    bmi c9dba                                                         // 9d9e: 30 1a       0.
    cpy l002d                                                         // 9da0: c4 2d       .-
    bne c9dbe                                                         // 9da2: d0 1a       ..
    pla                                                               // 9da4: 68          h
    cmp l002c                                                         // 9da5: c5 2c       .,
    bne c9dbf                                                         // 9da7: d0 16       ..
    pla                                                               // 9da9: 68          h
    cmp l002b                                                         // 9daa: c5 2b       .+
    bne c9dc0                                                         // 9dac: d0 12       ..
    pla                                                               // 9dae: 68          h
    sbc l002a                                                         // 9daf: e5 2a       .*
    bne c9dc1                                                         // 9db1: d0 0e       ..
    rts                                                               // 9db3: 60          `

// $9db4 referenced 1 time by $9d96
c9db4
    pla                                                               // 9db4: 68          h
    tay                                                               // 9db5: a8          .
    eor l002e                                                         // 9db6: 45 2e       E.
    bpl c9d43                                                         // 9db8: 10 89       ..
// $9dba referenced 1 time by $9d9e
c9dba
    tya                                                               // 9dba: 98          .
    eor #$ff                                                          // 9dbb: 49 ff       I.
    asl                                                               // 9dbd: 0a          .
// $9dbe referenced 1 time by $9da2
c9dbe
    pla                                                               // 9dbe: 68          h
// $9dbf referenced 1 time by $9da7
c9dbf
    pla                                                               // 9dbf: 68          h
// $9dc0 referenced 1 time by $9dac
c9dc0
    pla                                                               // 9dc0: 68          h
// $9dc1 referenced 2 times by $9db1, $9dee
c9dc1
    lda #$ff                                                          // 9dc1: a9 ff       ..
    rts                                                               // 9dc3: 60          `

// $9dc4 referenced 1 time by $9d82
c9dc4
    jsr cbc91                                                         // 9dc4: 20 91 bc     ..
    jsr sub_c9f07                                                     // 9dc7: 20 07 9f     ..
    tay                                                               // 9dca: a8          .
    bne c9d7c                                                         // 9dcb: d0 af       ..
    lda (l0004)                                                       // 9dcd: b2 04       ..
    cmp l0036                                                         // 9dcf: c5 36       .6
    bcc c9dd5                                                         // 9dd1: 90 02       ..
    lda l0036                                                         // 9dd3: a5 36       .6
// $9dd5 referenced 1 time by $9dd1
c9dd5
    sta l0037                                                         // 9dd5: 85 37       .7
// $9dd7 referenced 1 time by $9de1
loop_c9dd7
    cpy l0037                                                         // 9dd7: c4 37       .7
    beq c9de5                                                         // 9dd9: f0 0a       ..
    iny                                                               // 9ddb: c8          .
    lda (l0004),y                                                     // 9ddc: b1 04       ..
    cmp l05ff,y                                                       // 9dde: d9 ff 05    ...
    beq loop_c9dd7                                                    // 9de1: f0 f4       ..
    bra c9de9                                                         // 9de3: 80 04       ..
// $9de5 referenced 1 time by $9dd9
c9de5
    lda (l0004)                                                       // 9de5: b2 04       ..
    cmp l0036                                                         // 9de7: c5 36       .6
// $9de9 referenced 1 time by $9de3
c9de9
    php                                                               // 9de9: 08          .
    jsr cbd21                                                         // 9dea: 20 21 bd     !.
    plp                                                               // 9ded: 28          (
    bne c9dc1                                                         // 9dee: d0 d1       ..
    lda #0                                                            // 9df0: a9 00       ..
    rts                                                               // 9df2: 60          `

// $9df3 referenced 8 times by $8d77, $912f, $9332, $9381, $9878, $9ccc, $ba47, $be76
sub_c9df3
    lda l000b                                                         // 9df3: a5 0b       ..
    sta l0019                                                         // 9df5: 85 19       ..
    lda l000c                                                         // 9df7: a5 0c       ..
    sta l001a                                                         // 9df9: 85 1a       ..
    lda l000a                                                         // 9dfb: a5 0a       ..
    sta l001b                                                         // 9dfd: 85 1b       ..
// $9dff referenced 14 times by $920d, $92b7, $9774, $9c52, $ab8b, $ac7f, $ac8d, $adee, $aebd, $af0a, $b146, $b362, $b6d1, $b6ef
sub_c9dff
    jsr sub_c9e45                                                     // 9dff: 20 45 9e     E.
// $9e02 referenced 1 time by $9e28
c9e02
    cpx #$84                                                          // 9e02: e0 84       ..
    beq c9e10                                                         // 9e04: f0 0a       ..
    cpx #$82                                                          // 9e06: e0 82       ..
    beq c9e2a                                                         // 9e08: f0 20       .
    dec l001b                                                         // 9e0a: c6 1b       ..
    tay                                                               // 9e0c: a8          .
    sta l0027                                                         // 9e0d: 85 27       .'
    rts                                                               // 9e0f: 60          `

// $9e10 referenced 1 time by $9e04
c9e10
    jsr sub_c9e3f                                                     // 9e10: 20 3f 9e     ?.
    jsr sub_c9783                                                     // 9e13: 20 83 97     ..
    ldy #3                                                            // 9e16: a0 03       ..
// $9e18 referenced 1 time by $9e21
loop_c9e18
    lda (l0004),y                                                     // 9e18: b1 04       ..
    ora l002a,y                                                       // 9e1a: 19 2a 00    .*.
    sta l002a,y                                                       // 9e1d: 99 2a 00    .*.
    dey                                                               // 9e20: 88          .
    bpl loop_c9e18                                                    // 9e21: 10 f5       ..
// $9e23 referenced 1 time by $9e3d
loop_c9e23
    jsr cbd3a                                                         // 9e23: 20 3a bd     :.
    lda #$40 // '@'                                                   // 9e26: a9 40       .@
    bra c9e02                                                         // 9e28: 80 d8       ..
// $9e2a referenced 1 time by $9e08
c9e2a
    jsr sub_c9e3f                                                     // 9e2a: 20 3f 9e     ?.
    jsr sub_c9783                                                     // 9e2d: 20 83 97     ..
    ldy #3                                                            // 9e30: a0 03       ..
// $9e32 referenced 1 time by $9e3b
loop_c9e32
    lda (l0004),y                                                     // 9e32: b1 04       ..
    eor l002a,y                                                       // 9e34: 59 2a 00    Y*.
    sta l002a,y                                                       // 9e37: 99 2a 00    .*.
    dey                                                               // 9e3a: 88          .
    bpl loop_c9e32                                                    // 9e3b: 10 f5       ..
    bra loop_c9e23                                                    // 9e3d: 80 e4       ..
// $9e3f referenced 2 times by $9e10, $9e2a
sub_c9e3f
    jsr sub_c9783                                                     // 9e3f: 20 83 97     ..
    jsr cbc66                                                         // 9e42: 20 66 bc     f.
// $9e45 referenced 1 time by $9dff
sub_c9e45
    jsr sub_c9e6d                                                     // 9e45: 20 6d 9e     m.
// $9e48 referenced 1 time by $9e6b
c9e48
    cpx #$80                                                          // 9e48: e0 80       ..
    beq c9e4d                                                         // 9e4a: f0 01       ..
    rts                                                               // 9e4c: 60          `

// $9e4d referenced 1 time by $9e4a
c9e4d
    jsr sub_c9783                                                     // 9e4d: 20 83 97     ..
    jsr cbc66                                                         // 9e50: 20 66 bc     f.
    jsr sub_c9e6d                                                     // 9e53: 20 6d 9e     m.
    jsr sub_c9783                                                     // 9e56: 20 83 97     ..
    ldy #3                                                            // 9e59: a0 03       ..
// $9e5b referenced 1 time by $9e64
loop_c9e5b
    lda (l0004),y                                                     // 9e5b: b1 04       ..
    and l002a,y                                                       // 9e5d: 39 2a 00    9*.
    sta l002a,y                                                       // 9e60: 99 2a 00    .*.
    dey                                                               // 9e63: 88          .
    bpl loop_c9e5b                                                    // 9e64: 10 f5       ..
    jsr cbd3a                                                         // 9e66: 20 3a bd     :.
    lda #$40 // '@'                                                   // 9e69: a9 40       .@
    bra c9e48                                                         // 9e6b: 80 db       ..
// $9e6d referenced 2 times by $9e45, $9e53
sub_c9e6d
    jsr sub_c9f07                                                     // 9e6d: 20 07 9f     ..
    cpx #$3f // '?'                                                   // 9e70: e0 3f       .?
    bcs c9e78                                                         // 9e72: b0 04       ..
    cpx #$3c // '<'                                                   // 9e74: e0 3c       .<
    bcs c9e79                                                         // 9e76: b0 01       ..
// $9e78 referenced 1 time by $9e72
c9e78
    rts                                                               // 9e78: 60          `

// $9e79 referenced 1 time by $9e76
c9e79
    beq c9e90                                                         // 9e79: f0 15       ..
    cpx #$3e // '>'                                                   // 9e7b: e0 3e       .>
    beq c9eb2                                                         // 9e7d: f0 33       .3
    tax                                                               // 9e7f: aa          .
    jsr sub_c9d82                                                     // 9e80: 20 82 9d     ..
// $9e83 referenced 5 times by $9ea4, $9eab, $9ec0, $9ec5, $9ec7
c9e83
    eor #$ff                                                          // 9e83: 49 ff       I.
// $9e85 referenced 6 times by $9ea0, $9ea2, $9ea9, $9eb0, $9ebe, $9ec9
c9e85
    sta l002a                                                         // 9e85: 85 2a       .*
    sta l002b                                                         // 9e87: 85 2b       .+
    sta l002c                                                         // 9e89: 85 2c       .,
    sta l002d                                                         // 9e8b: 85 2d       .-
    lda #$40 // '@'                                                   // 9e8d: a9 40       .@
    rts                                                               // 9e8f: 60          `

// $9e90 referenced 1 time by $9e79
c9e90
    tax                                                               // 9e90: aa          .
    ldy l001b                                                         // 9e91: a4 1b       ..
    lda (l0019),y                                                     // 9e93: b1 19       ..
    cmp #$3d // '='                                                   // 9e95: c9 3d       .=
    beq c9ea6                                                         // 9e97: f0 0d       ..
    cmp #$3e // '>'                                                   // 9e99: c9 3e       .>
    beq c9ead                                                         // 9e9b: f0 10       ..
    jsr sub_c9d81                                                     // 9e9d: 20 81 9d     ..
    bcc c9e85                                                         // 9ea0: 90 e3       ..
    beq c9e85                                                         // 9ea2: f0 e1       ..
    bra c9e83                                                         // 9ea4: 80 dd       ..
// $9ea6 referenced 1 time by $9e97
c9ea6
    jsr sub_c9d7f                                                     // 9ea6: 20 7f 9d     ..
    bcc c9e85                                                         // 9ea9: 90 da       ..
    bra c9e83                                                         // 9eab: 80 d6       ..
// $9ead referenced 1 time by $9e9b
c9ead
    jsr sub_c9d7f                                                     // 9ead: 20 7f 9d     ..
    bra c9e85                                                         // 9eb0: 80 d3       ..
// $9eb2 referenced 1 time by $9e7d
c9eb2
    tax                                                               // 9eb2: aa          .
    ldy l001b                                                         // 9eb3: a4 1b       ..
    lda (l0019),y                                                     // 9eb5: b1 19       ..
    cmp #$3d // '='                                                   // 9eb7: c9 3d       .=
    beq c9ec2                                                         // 9eb9: f0 07       ..
    jsr sub_c9d81                                                     // 9ebb: 20 81 9d     ..
    bcs c9e85                                                         // 9ebe: b0 c5       ..
    bra c9e83                                                         // 9ec0: 80 c1       ..
// $9ec2 referenced 1 time by $9eb9
c9ec2
    jsr sub_c9d7f                                                     // 9ec2: 20 7f 9d     ..
    bcc c9e83                                                         // 9ec5: 90 bc       ..
    beq c9e83                                                         // 9ec7: f0 ba       ..
    bra c9e85                                                         // 9ec9: 80 ba       ..
// $9ecb referenced 2 times by $9eec, $afbe
c9ecb
    brk                                                               // 9ecb: 00          .

    .byt $13                                                          // 9ecc: 13          .
    .asc "String too long"                                            // 9ecd: 53 74 72... Str
    .byt 0                                                            // 9edc: 00          .

// $9edd referenced 1 time by $9f16
c9edd
    jsr cbc91                                                         // 9edd: 20 91 bc     ..
    jsr sub_ca06c                                                     // 9ee0: 20 6c a0     l.
    tay                                                               // 9ee3: a8          .
    bne c9f4c                                                         // 9ee4: d0 66       .f
    clc                                                               // 9ee6: 18          .
    phx                                                               // 9ee7: da          .
    lda (l0004)                                                       // 9ee8: b2 04       ..
    adc l0036                                                         // 9eea: 65 36       e6
    bcs c9ecb                                                         // 9eec: b0 dd       ..
    tax                                                               // 9eee: aa          .
    pha                                                               // 9eef: 48          H
    ldy l0036                                                         // 9ef0: a4 36       .6
// $9ef2 referenced 1 time by $9efa
loop_c9ef2
    lda l05ff,y                                                       // 9ef2: b9 ff 05    ...
    sta l05ff,x                                                       // 9ef5: 9d ff 05    ...
    dex                                                               // 9ef8: ca          .
    dey                                                               // 9ef9: 88          .
    bne loop_c9ef2                                                    // 9efa: d0 f6       ..
    jsr sub_cbd12                                                     // 9efc: 20 12 bd     ..
    pla                                                               // 9eff: 68          h
    sta l0036                                                         // 9f00: 85 36       .6
    plx                                                               // 9f02: fa          .
    lda #0                                                            // 9f03: a9 00       ..
    bra c9f0a                                                         // 9f05: 80 03       ..
// $9f07 referenced 4 times by $9d2c, $9d92, $9dc7, $9e6d
sub_c9f07
    jsr sub_ca026                                                     // 9f07: 20 26 a0     &.
// $9f0a referenced 4 times by $9f05, $9f46, $9f4a, $9f57
c9f0a
    cpx #$2b // '+'                                                   // 9f0a: e0 2b       .+
    beq c9f13                                                         // 9f0c: f0 05       ..
    cpx #$2d // '-'                                                   // 9f0e: e0 2d       .-
    beq c9f70                                                         // 9f10: f0 5e       .^
    rts                                                               // 9f12: 60          `

// $9f13 referenced 1 time by $9f0c
c9f13
    tay                                                               // 9f13: a8          .
    bmi c9f4f                                                         // 9f14: 30 39       09
    beq c9edd                                                         // 9f16: f0 c5       ..
    jsr sub_ca023                                                     // 9f18: 20 23 a0     #.
    tay                                                               // 9f1b: a8          .
    bmi c9f64                                                         // 9f1c: 30 46       0F
    beq c9f4c                                                         // 9f1e: f0 2c       .,
    clc                                                               // 9f20: 18          .
    lda (l0004)                                                       // 9f21: b2 04       ..
    adc l002a                                                         // 9f23: 65 2a       e*
    sta l002a                                                         // 9f25: 85 2a       .*
    ldy #1                                                            // 9f27: a0 01       ..
    lda (l0004),y                                                     // 9f29: b1 04       ..
    adc l002b                                                         // 9f2b: 65 2b       e+
    sta l002b                                                         // 9f2d: 85 2b       .+
    iny                                                               // 9f2f: c8          .
    lda (l0004),y                                                     // 9f30: b1 04       ..
    adc l002c                                                         // 9f32: 65 2c       e,
    sta l002c                                                         // 9f34: 85 2c       .,
    iny                                                               // 9f36: c8          .
    lda (l0004),y                                                     // 9f37: b1 04       ..
    adc l002d                                                         // 9f39: 65 2d       e-
// $9f3b referenced 1 time by $9f98
c9f3b
    sta l002d                                                         // 9f3b: 85 2d       .-
    clc                                                               // 9f3d: 18          .
    lda l0004                                                         // 9f3e: a5 04       ..
    adc #4                                                            // 9f40: 69 04       i.
    sta l0004                                                         // 9f42: 85 04       ..
    lda #$40 // '@'                                                   // 9f44: a9 40       .@
    bcc c9f0a                                                         // 9f46: 90 c2       ..
    inc l0005                                                         // 9f48: e6 05       ..
    bra c9f0a                                                         // 9f4a: 80 be       ..
// $9f4c referenced 5 times by $9ee4, $9f1e, $9f73, $9f7b, $9fbb
c9f4c
    jmp c9155                                                         // 9f4c: 4c 55 91    LU.

// $9f4f referenced 1 time by $9f14
c9f4f
    jsr sub_cbc18                                                     // 9f4f: 20 18 bc     ..
    jsr ca70a                                                         // 9f52: 20 0a a7     ..
// $9f55 referenced 2 times by $9f5f, $9f6e
c9f55
    ldx l0027                                                         // 9f55: a6 27       .'
    bra c9f0a                                                         // 9f57: 80 b1       ..
// $9f59 referenced 1 time by $9f71
loop_c9f59
    jsr sub_cbc18                                                     // 9f59: 20 18 bc     ..
    jsr ca704                                                         // 9f5c: 20 04 a7     ..
    bra c9f55                                                         // 9f5f: 80 f4       ..
// $9f61 referenced 1 time by $9f79
loop_c9f61
    jsr cad10                                                         // 9f61: 20 10 ad     ..
// $9f64 referenced 1 time by $9f1c
c9f64
    stx l0027                                                         // 9f64: 86 27       .'
    jsr sub_c8287                                                     // 9f66: 20 87 82     ..
    lda l003d                                                         // 9f69: a5 3d       .=
    jsr sub_ca70d                                                     // 9f6b: 20 0d a7     ..
    bra c9f55                                                         // 9f6e: 80 e5       ..
// $9f70 referenced 1 time by $9f10
c9f70
    tay                                                               // 9f70: a8          .
    bmi loop_c9f59                                                    // 9f71: 30 e6       0.
    beq c9f4c                                                         // 9f73: f0 d7       ..
    jsr sub_ca023                                                     // 9f75: 20 23 a0     #.
    tay                                                               // 9f78: a8          .
    bmi loop_c9f61                                                    // 9f79: 30 e6       0.
    beq c9f4c                                                         // 9f7b: f0 cf       ..
    sec                                                               // 9f7d: 38          8
    lda (l0004)                                                       // 9f7e: b2 04       ..
    sbc l002a                                                         // 9f80: e5 2a       .*
    sta l002a                                                         // 9f82: 85 2a       .*
    ldy #1                                                            // 9f84: a0 01       ..
    lda (l0004),y                                                     // 9f86: b1 04       ..
    sbc l002b                                                         // 9f88: e5 2b       .+
    sta l002b                                                         // 9f8a: 85 2b       .+
    iny                                                               // 9f8c: c8          .
    lda (l0004),y                                                     // 9f8d: b1 04       ..
    sbc l002c                                                         // 9f8f: e5 2c       .,
    sta l002c                                                         // 9f91: 85 2c       .,
    iny                                                               // 9f93: c8          .
    lda (l0004),y                                                     // 9f94: b1 04       ..
    sbc l002d                                                         // 9f96: e5 2d       .-
    bra c9f3b                                                         // 9f98: 80 a1       ..
// $9f9a referenced 2 times by $9fdb, $9fdf
c9f9a
    jsr c828d                                                         // 9f9a: 20 8d 82     ..
// $9f9d referenced 1 time by $9fce
c9f9d
    jsr sub_c8287                                                     // 9f9d: 20 87 82     ..
    and l003d                                                         // 9fa0: 25 3d       %=
    jsr sub_ca6eb                                                     // 9fa2: 20 eb a6     ..
    bra c9fb6                                                         // 9fa5: 80 0f       ..
// $9fa7 referenced 2 times by $9fc4, $9fc8
c9fa7
    jsr c828d                                                         // 9fa7: 20 8d 82     ..
// $9faa referenced 1 time by $9fb9
loop_c9faa
    jsr cbc3a                                                         // 9faa: 20 3a bc     :.
    jsr sub_ca06c                                                     // 9fad: 20 6c a0     l.
    jsr sub_cbc20                                                     // 9fb0: 20 20 bc      .
    jsr ca6e4                                                         // 9fb3: 20 e4 a6     ..
// $9fb6 referenced 1 time by $9fa5
c9fb6
    bra ca029                                                         // 9fb6: 80 71       .q
// $9fb8 referenced 1 time by $a02b
c9fb8
    tay                                                               // 9fb8: a8          .
    bmi loop_c9faa                                                    // 9fb9: 30 ef       0.
// $9fbb referenced 1 time by $9fd0
loop_c9fbb
    beq c9f4c                                                         // 9fbb: f0 8f       ..
    lda l002b                                                         // 9fbd: a5 2b       .+
    asl                                                               // 9fbf: 0a          .
    lda l002c                                                         // 9fc0: a5 2c       .,
    adc #0                                                            // 9fc2: 69 00       i.
    bne c9fa7                                                         // 9fc4: d0 e1       ..
    adc l002d                                                         // 9fc6: 65 2d       e-
    bne c9fa7                                                         // 9fc8: d0 dd       ..
    jsr sub_ca069                                                     // 9fca: 20 69 a0     i.
    tay                                                               // 9fcd: a8          .
    bmi c9f9d                                                         // 9fce: 30 cd       0.
    beq loop_c9fbb                                                    // 9fd0: f0 e9       ..
    lda l002b                                                         // 9fd2: a5 2b       .+
    sta l0038                                                         // 9fd4: 85 38       .8
    asl                                                               // 9fd6: 0a          .
    lda l002c                                                         // 9fd7: a5 2c       .,
    adc #0                                                            // 9fd9: 69 00       i.
    bne c9f9a                                                         // 9fdb: d0 bd       ..
    adc l002d                                                         // 9fdd: 65 2d       e-
    bne c9f9a                                                         // 9fdf: d0 b9       ..
    bcc c9fe6                                                         // 9fe1: 90 03       ..
    jsr cad20                                                         // 9fe3: 20 20 ad      .
// $9fe6 referenced 1 time by $9fe1
c9fe6
    stx l0027                                                         // 9fe6: 86 27       .'
    ldx #$3d // '='                                                   // 9fe8: a2 3d       .=
    jsr sub_cbe06                                                     // 9fea: 20 06 be     ..
    jsr sub_cbd26                                                     // 9fed: 20 26 bd     &.
    ldy #0                                                            // 9ff0: a0 00       ..
    ldx #0                                                            // 9ff2: a2 00       ..
// $9ff4 referenced 1 time by $a01b
c9ff4
    lsr l003e                                                         // 9ff4: 46 3e       F>
    ror l003d                                                         // 9ff6: 66 3d       f=
    bcc ca00f                                                         // 9ff8: 90 15       ..
    clc                                                               // 9ffa: 18          .
    tya                                                               // 9ffb: 98          .
    adc l002a                                                         // 9ffc: 65 2a       e*
    tay                                                               // 9ffe: a8          .
    txa                                                               // 9fff: 8a          .
    adc l002b                                                         // a000: 65 2b       e+
    tax                                                               // a002: aa          .
    lda l003f                                                         // a003: a5 3f       .?
    adc l002c                                                         // a005: 65 2c       e,
    sta l003f                                                         // a007: 85 3f       .?
    lda l0040                                                         // a009: a5 40       .@
    adc l002d                                                         // a00b: 65 2d       e-
    sta l0040                                                         // a00d: 85 40       .@
// $a00f referenced 1 time by $9ff8
ca00f
    asl l002a                                                         // a00f: 06 2a       .*
    rol l002b                                                         // a011: 26 2b       &+
    rol l002c                                                         // a013: 26 2c       &,
    rol l002d                                                         // a015: 26 2d       &-
    lda l003d                                                         // a017: a5 3d       .=
    ora l003e                                                         // a019: 05 3e       .>
    bne c9ff4                                                         // a01b: d0 d7       ..
    sty l003d                                                         // a01d: 84 3d       .=
    stx l003e                                                         // a01f: 86 3e       .>
    bra ca04d                                                         // a021: 80 2a       .*
// $a023 referenced 2 times by $9f18, $9f75
sub_ca023
    jsr cbc66                                                         // a023: 20 66 bc     f.
// $a026 referenced 2 times by $9f07, $bc1b
sub_ca026
    jsr sub_ca06c                                                     // a026: 20 6c a0     l.
// $a029 referenced 2 times by $9fb6, $a05d
ca029
    cpx #$2a // '*'                                                   // a029: e0 2a       .*
    beq c9fb8                                                         // a02b: f0 8b       ..
    cpx #$2f // '/'                                                   // a02d: e0 2f       ./
    bcc ca03b                                                         // a02f: 90 0a       ..
    beq ca03c                                                         // a031: f0 09       ..
    cpx #$83                                                          // a033: e0 83       ..
    beq ca04a                                                         // a035: f0 13       ..
    cpx #$81                                                          // a037: e0 81       ..
    beq ca05f                                                         // a039: f0 24       .$
// $a03b referenced 1 time by $a02f
ca03b
    rts                                                               // a03b: 60          `

// $a03c referenced 1 time by $a031
ca03c
    jsr sub_cbc36                                                     // a03c: 20 36 bc     6.
    jsr sub_ca06c                                                     // a03f: 20 6c a0     l.
    jsr sub_cbc1e                                                     // a042: 20 1e bc     ..
    jsr ca634                                                         // a045: 20 34 a6     4.
    bra ca05b                                                         // a048: 80 11       ..
// $a04a referenced 1 time by $a035
ca04a
    jsr sub_c81bd                                                     // a04a: 20 bd 81     ..
// $a04d referenced 1 time by $a021
ca04d
    lda l0038                                                         // a04d: a5 38       .8
    php                                                               // a04f: 08          .
    ldx #$3d // '='                                                   // a050: a2 3d       .=
// $a052 referenced 1 time by $a067
loop_ca052
    jsr sub_caad8                                                     // a052: 20 d8 aa     ..
    plp                                                               // a055: 28          (
    bpl ca05b                                                         // a056: 10 03       ..
    jsr cad20                                                         // a058: 20 20 ad      .
// $a05b referenced 2 times by $a048, $a056
ca05b
    ldx l0027                                                         // a05b: a6 27       .'
    bra ca029                                                         // a05d: 80 ca       ..
// $a05f referenced 1 time by $a039
ca05f
    jsr sub_c81bd                                                     // a05f: 20 bd 81     ..
    bit l0037                                                         // a062: 24 37       $7
    php                                                               // a064: 08          .
    ldx #$39 // '9'                                                   // a065: a2 39       .9
    bra loop_ca052                                                    // a067: 80 e9       ..
// $a069 referenced 2 times by $81c8, $9fca
sub_ca069
    jsr cbc66                                                         // a069: 20 66 bc     f.
// $a06c referenced 4 times by $9ee0, $9fad, $a026, $a03f
sub_ca06c
    jsr cad78                                                         // a06c: 20 78 ad     x.
// $a06f referenced 2 times by $a0cf, $a0e6
ca06f
    pha                                                               // a06f: 48          H
// $a070 referenced 1 time by $a078
loop_ca070
    ldy l001b                                                         // a070: a4 1b       ..
    inc l001b                                                         // a072: e6 1b       ..
    lda (l0019),y                                                     // a074: b1 19       ..
    cmp #$20 // ' '                                                   // a076: c9 20       .
    beq loop_ca070                                                    // a078: f0 f6       ..
    tax                                                               // a07a: aa          .
    pla                                                               // a07b: 68          h
    cpx #$5e // '^'                                                   // a07c: e0 5e       .^
    beq ca081                                                         // a07e: f0 01       ..
    rts                                                               // a080: 60          `

// $a081 referenced 2 times by $a07e, $a089
ca081
    jsr sub_cbc36                                                     // a081: 20 36 bc     6.
    jsr cad78                                                         // a084: 20 78 ad     x.
    bmi ca09f                                                         // a087: 30 16       0.
    beq ca081                                                         // a089: f0 f6       ..
    lda l002a                                                         // a08b: a5 2a       .*
    asl                                                               // a08d: 0a          .
    lda #0                                                            // a08e: a9 00       ..
    adc l002b                                                         // a090: 65 2b       e+
    bne ca09c                                                         // a092: d0 08       ..
    adc l002c                                                         // a094: 65 2c       e,
    bne ca09c                                                         // a096: d0 04       ..
    adc l002d                                                         // a098: 65 2d       e-
    beq ca0c7                                                         // a09a: f0 2b       .+
// $a09c referenced 2 times by $a092, $a096
ca09c
    jsr c828d                                                         // a09c: 20 8d 82     ..
// $a09f referenced 1 time by $a087
ca09f
    lda l0030                                                         // a09f: a5 30       .0
    beq ca0c5                                                         // a0a1: f0 22       ."
    cmp #$87                                                          // a0a3: c9 87       ..
    bcs ca0d1                                                         // a0a5: b0 2a       .*
    cmp #$81                                                          // a0a7: c9 81       ..
    bcc ca0d1                                                         // a0a9: 90 26       .&
    ora #$78 // 'x'                                                   // a0ab: 09 78       .x
    tay                                                               // a0ad: a8          .
    lda l0032                                                         // a0ae: a5 32       .2
    ora l0033                                                         // a0b0: 05 33       .3
    ora l0034                                                         // a0b2: 05 34       .4
    bne ca0d1                                                         // a0b4: d0 1b       ..
    lda l0031                                                         // a0b6: a5 31       .1
// $a0b8 referenced 1 time by $a0bc
loop_ca0b8
    lsr                                                               // a0b8: 4a          J
    bcs ca0d1                                                         // a0b9: b0 16       ..
    iny                                                               // a0bb: c8          .
    bmi loop_ca0b8                                                    // a0bc: 30 fa       0.
    ldy l002e                                                         // a0be: a4 2e       ..
    bpl ca0c5                                                         // a0c0: 10 03       ..
    eor #$ff                                                          // a0c2: 49 ff       I.
    inc                                                               // a0c4: 1a          .
// $a0c5 referenced 2 times by $a0a1, $a0c0
ca0c5
    sta l002a                                                         // a0c5: 85 2a       .*
// $a0c7 referenced 1 time by $a09a
ca0c7
    jsr sub_ca56d                                                     // a0c7: 20 6d a5     m.
    lda l002a                                                         // a0ca: a5 2a       .*
    jsr sub_ca5f9                                                     // a0cc: 20 f9 a5     ..
    bra ca06f                                                         // a0cf: 80 9e       ..
// $a0d1 referenced 4 times by $a0a5, $a0a9, $a0b4, $a0b9
ca0d1
    lda #$71 // 'q'                                                   // a0d1: a9 71       .q
    jsr ca547                                                         // a0d3: 20 47 a5     G.
    jsr sub_ca56d                                                     // a0d6: 20 6d a5     m.
    jsr sub_ca7af                                                     // a0d9: 20 af a7     ..
    lda #$71 // 'q'                                                   // a0dc: a9 71       .q
    ldy #4                                                            // a0de: a0 04       ..
    jsr sub_ca9c3                                                     // a0e0: 20 c3 a9     ..
    jsr sub_caa1a                                                     // a0e3: 20 1a aa     ..
    bra ca06f                                                         // a0e6: 80 87       ..
// $a0e8 referenced 3 times by $9535, $9d1e, $b505
sub_ca0e8
    lda #0                                                            // a0e8: a9 00       ..
    bra ca0ee                                                         // a0ea: 80 02       ..
// $a0ec referenced 2 times by $9558, $b4c6
sub_ca0ec
    lda #5                                                            // a0ec: a9 05       ..
// $a0ee referenced 1 time by $a0ea
ca0ee
    sta l0014                                                         // a0ee: 85 14       ..
    ldx #4                                                            // a0f0: a2 04       ..
// $a0f2 referenced 1 time by $a10b
loop_ca0f2
    stz l003f,x                                                       // a0f2: 74 3f       t?
    sec                                                               // a0f4: 38          8
// $a0f5 referenced 1 time by $a108
loop_ca0f5
    lda l002a                                                         // a0f5: a5 2a       .*
    sbc l80e2,x                                                       // a0f7: fd e2 80    ...
    tay                                                               // a0fa: a8          .
    lda l002b                                                         // a0fb: a5 2b       .+
    sbc l80dd,x                                                       // a0fd: fd dd 80    ...
    bcc ca10a                                                         // a100: 90 08       ..
    sta l002b                                                         // a102: 85 2b       .+
    sty l002a                                                         // a104: 84 2a       .*
    inc l003f,x                                                       // a106: f6 3f       .?
    bra loop_ca0f5                                                    // a108: 80 eb       ..
// $a10a referenced 1 time by $a100
ca10a
    dex                                                               // a10a: ca          .
    bpl loop_ca0f2                                                    // a10b: 10 e5       ..
    ldx #5                                                            // a10d: a2 05       ..
// $a10f referenced 1 time by $a114
loop_ca10f
    dex                                                               // a10f: ca          .
    beq ca116                                                         // a110: f0 04       ..
    lda l003f,x                                                       // a112: b5 3f       .?
    beq loop_ca10f                                                    // a114: f0 f9       ..
// $a116 referenced 1 time by $a110
ca116
    stx l0037                                                         // a116: 86 37       .7
    lda l0014                                                         // a118: a5 14       ..
    beq ca126                                                         // a11a: f0 0a       ..
    sbc l0037                                                         // a11c: e5 37       .7
    beq ca126                                                         // a11e: f0 06       ..
    tax                                                               // a120: aa          .
    jsr cbdff                                                         // a121: 20 ff bd     ..
    ldx l0037                                                         // a124: a6 37       .7
// $a126 referenced 3 times by $a11a, $a11e, $a12e
ca126
    lda l003f,x                                                       // a126: b5 3f       .?
    ora #$30 // '0'                                                   // a128: 09 30       .0
    jsr cbdd4                                                         // a12a: 20 d4 bd     ..
    dex                                                               // a12d: ca          .
    bpl ca126                                                         // a12e: 10 f6       ..
    rts                                                               // a130: 60          `

// $a131 referenced 1 time by $a1a7
ca131
    tya                                                               // a131: 98          .
    bpl ca137                                                         // a132: 10 03       ..
    jsr sub_c9788                                                     // a134: 20 88 97     ..
// $a137 referenced 1 time by $a132
ca137
    ldx #0                                                            // a137: a2 00       ..
    ldy #0                                                            // a139: a0 00       ..
// $a13b referenced 1 time by $a14f
loop_ca13b
    lda l002a,y                                                       // a13b: b9 2a 00    .*.
    pha                                                               // a13e: 48          H
    and #$0f                                                          // a13f: 29 0f       ).
    sta l003f,x                                                       // a141: 95 3f       .?
    pla                                                               // a143: 68          h
    lsr                                                               // a144: 4a          J
    lsr                                                               // a145: 4a          J
    lsr                                                               // a146: 4a          J
    lsr                                                               // a147: 4a          J
    inx                                                               // a148: e8          .
    sta l003f,x                                                       // a149: 95 3f       .?
    inx                                                               // a14b: e8          .
    iny                                                               // a14c: c8          .
    cpy #4                                                            // a14d: c0 04       ..
    bne loop_ca13b                                                    // a14f: d0 ea       ..
// $a151 referenced 1 time by $a156
loop_ca151
    dex                                                               // a151: ca          .
    beq ca158                                                         // a152: f0 04       ..
    lda l003f,x                                                       // a154: b5 3f       .?
    beq loop_ca151                                                    // a156: f0 f9       ..
// $a158 referenced 2 times by $a152, $a166
ca158
    lda l003f,x                                                       // a158: b5 3f       .?
    cmp #$0a                                                          // a15a: c9 0a       ..
    bcc ca160                                                         // a15c: 90 02       ..
    adc #6                                                            // a15e: 69 06       i.
// $a160 referenced 1 time by $a15c
ca160
    adc #$30 // '0'                                                   // a160: 69 30       i0
    jsr ca2cc                                                         // a162: 20 cc a2     ..
    dex                                                               // a165: ca          .
    bpl ca158                                                         // a166: 10 f0       ..
    rts                                                               // a168: 60          `

// $a169 referenced 1 time by $a1b1
ca169
    lda l002e                                                         // a169: a5 2e       ..
    bpl ca174                                                         // a16b: 10 07       ..
    lda #$2d // '-'                                                   // a16d: a9 2d       .-
    stz l002e                                                         // a16f: 64 2e       d.
    jsr ca2cc                                                         // a171: 20 cc a2     ..
// $a174 referenced 3 times by $a16b, $a17f, $a1d2
ca174
    lda l0030                                                         // a174: a5 30       .0
    cmp #$81                                                          // a176: c9 81       ..
    bcs ca1c1                                                         // a178: b0 47       .G
    jsr sub_ca46b                                                     // a17a: 20 6b a4     k.
    dec l0048                                                         // a17d: c6 48       .H
    bra ca174                                                         // a17f: 80 f3       ..
// $a181 referenced 2 times by $92c7, $af83
sub_ca181
    ldx l0402                                                         // a181: ae 02 04    ...
    cpx #3                                                            // a184: e0 03       ..
    bcc ca18a                                                         // a186: 90 02       ..
    ldx #0                                                            // a188: a2 00       ..
// $a18a referenced 1 time by $a186
ca18a
    stx l0037                                                         // a18a: 86 37       .7
    lda l0401                                                         // a18c: ad 01 04    ...
    beq ca197                                                         // a18f: f0 06       ..
    cmp #$0a                                                          // a191: c9 0a       ..
    bcs ca19b                                                         // a193: b0 06       ..
    bra ca19d                                                         // a195: 80 06       ..
// $a197 referenced 1 time by $a18f
ca197
    cpx #2                                                            // a197: e0 02       ..
    beq ca19d                                                         // a199: f0 02       ..
// $a19b referenced 2 times by $a193, $af7e
ca19b
    lda #$0a                                                          // a19b: a9 0a       ..
// $a19d referenced 2 times by $a195, $a199
ca19d
    sta l0038                                                         // a19d: 85 38       .8
    sta l004d                                                         // a19f: 85 4d       .M
    stz l0036                                                         // a1a1: 64 36       d6
    stz l0048                                                         // a1a3: 64 48       dH
    bit l0015                                                         // a1a5: 24 15       $.
    bmi ca131                                                         // a1a7: 30 88       0.
    tya                                                               // a1a9: 98          .
    bmi ca1af                                                         // a1aa: 30 03       0.
    jsr c828d                                                         // a1ac: 20 8d 82     ..
// $a1af referenced 1 time by $a1aa
ca1af
    lda l0031                                                         // a1af: a5 31       .1
    bne ca169                                                         // a1b1: d0 b6       ..
    lda l0037                                                         // a1b3: a5 37       .7
    bne ca21c                                                         // a1b5: d0 65       .e
    lda #$30 // '0'                                                   // a1b7: a9 30       .0
    jmp ca2cc                                                         // a1b9: 4c cc a2    L..

// $a1bc referenced 1 time by $a216
ca1bc
    jsr ca622                                                         // a1bc: 20 22 a6     ".
    bra ca1d0                                                         // a1bf: 80 0f       ..
// $a1c1 referenced 1 time by $a178
ca1c1
    cmp #$84                                                          // a1c1: c9 84       ..
    bcc ca1d4                                                         // a1c3: 90 0f       ..
    bne ca1cd                                                         // a1c5: d0 06       ..
    lda l0031                                                         // a1c7: a5 31       .1
    cmp #$a0                                                          // a1c9: c9 a0       ..
    bcc ca1d4                                                         // a1cb: 90 07       ..
// $a1cd referenced 1 time by $a1c5
ca1cd
    jsr sub_ca4ba                                                     // a1cd: 20 ba a4     ..
// $a1d0 referenced 1 time by $a1bf
ca1d0
    inc l0048                                                         // a1d0: e6 48       .H
    bra ca174                                                         // a1d2: 80 a0       ..
// $a1d4 referenced 2 times by $a1c3, $a1cb
ca1d4
    jsr sub_ca3ed                                                     // a1d4: 20 ed a3     ..
    lda l004d                                                         // a1d7: a5 4d       .M
    sta l0038                                                         // a1d9: 85 38       .8
    ldx l0037                                                         // a1db: a6 37       .7
    cpx #2                                                            // a1dd: e0 02       ..
    bne ca1ef                                                         // a1df: d0 0e       ..
    adc l0048                                                         // a1e1: 65 48       eH
    bmi ca220                                                         // a1e3: 30 3b       0;
    cmp #$0b                                                          // a1e5: c9 0b       ..
    bcc ca1ed                                                         // a1e7: 90 04       ..
    lda #$0a                                                          // a1e9: a9 0a       ..
    stz l0037                                                         // a1eb: 64 37       d7
// $a1ed referenced 1 time by $a1e7
ca1ed
    sta l0038                                                         // a1ed: 85 38       .8
// $a1ef referenced 1 time by $a1df
ca1ef
    lda l0038                                                         // a1ef: a5 38       .8
    eor #$ff                                                          // a1f1: 49 ff       I.
    lsr                                                               // a1f3: 4a          J
    php                                                               // a1f4: 08          .
    asl                                                               // a1f5: 0a          .
    asl                                                               // a1f6: 0a          .
    adc #$bc                                                          // a1f7: 69 bc       i.
    jsr sub_ca572                                                     // a1f9: 20 72 a5     r.
    dec l0030                                                         // a1fc: c6 30       .0
    plp                                                               // a1fe: 28          (
    bcc ca204                                                         // a1ff: 90 03       ..
    jsr sub_ca46b                                                     // a201: 20 6b a4     k.
// $a204 referenced 1 time by $a1ff
ca204
    jsr sub_c8429                                                     // a204: 20 29 84     ).
// $a207 referenced 1 time by $a210
loop_ca207
    lda l0030                                                         // a207: a5 30       .0
    cmp #$84                                                          // a209: c9 84       ..
    bcs ca212                                                         // a20b: b0 05       ..
    jsr ca4a9                                                         // a20d: 20 a9 a4     ..
    bne loop_ca207                                                    // a210: d0 f5       ..
// $a212 referenced 1 time by $a20b
ca212
    lda l0031                                                         // a212: a5 31       .1
    cmp #$a0                                                          // a214: c9 a0       ..
    bcs ca1bc                                                         // a216: b0 a4       ..
    lda l0038                                                         // a218: a5 38       .8
    bne ca22a                                                         // a21a: d0 0e       ..
// $a21c referenced 1 time by $a1b5
ca21c
    cmp #1                                                            // a21c: c9 01       ..
    beq ca261                                                         // a21e: f0 41       .A
// $a220 referenced 2 times by $89d0, $a1e3
ca220
    jsr ca72b                                                         // a220: 20 2b a7     +.
    stz l0048                                                         // a223: 64 48       dH
    lda l004d                                                         // a225: a5 4d       .M
    inc                                                               // a227: 1a          .
    sta l0038                                                         // a228: 85 38       .8
// $a22a referenced 1 time by $a21a
ca22a
    lda #1                                                            // a22a: a9 01       ..
    cmp l0037                                                         // a22c: c5 37       .7
    beq ca261                                                         // a22e: f0 31       .1
    ldy l0048                                                         // a230: a4 48       .H
    bmi ca23e                                                         // a232: 30 0a       0.
    cpy l0038                                                         // a234: c4 38       .8
    bcs ca261                                                         // a236: b0 29       .)
    stz l0048                                                         // a238: 64 48       dH
    iny                                                               // a23a: c8          .
    tya                                                               // a23b: 98          .
    bne ca261                                                         // a23c: d0 23       .#
// $a23e referenced 1 time by $a232
ca23e
    lda l0037                                                         // a23e: a5 37       .7
    cmp #2                                                            // a240: c9 02       ..
    beq ca24a                                                         // a242: f0 06       ..
    lda #1                                                            // a244: a9 01       ..
    cpy #$ff                                                          // a246: c0 ff       ..
    bne ca261                                                         // a248: d0 17       ..
// $a24a referenced 1 time by $a242
ca24a
    lda #$30 // '0'                                                   // a24a: a9 30       .0
    jsr ca2cc                                                         // a24c: 20 cc a2     ..
    lda #$2e // '.'                                                   // a24f: a9 2e       ..
    jsr ca2cc                                                         // a251: 20 cc a2     ..
    lda #$30 // '0'                                                   // a254: a9 30       .0
// $a256 referenced 1 time by $a25d
loop_ca256
    inc l0048                                                         // a256: e6 48       .H
    beq ca25f                                                         // a258: f0 05       ..
    jsr ca2cc                                                         // a25a: 20 cc a2     ..
    bra loop_ca256                                                    // a25d: 80 f7       ..
// $a25f referenced 1 time by $a258
ca25f
    lda #$80                                                          // a25f: a9 80       ..
// $a261 referenced 5 times by $a21e, $a22e, $a236, $a23c, $a248
ca261
    sta l004d                                                         // a261: 85 4d       .M
// $a263 referenced 1 time by $a271
loop_ca263
    jsr sub_ca40a                                                     // a263: 20 0a a4     ..
    dec l004d                                                         // a266: c6 4d       .M
    bne ca26f                                                         // a268: d0 05       ..
    lda #$2e // '.'                                                   // a26a: a9 2e       ..
    jsr ca2cc                                                         // a26c: 20 cc a2     ..
// $a26f referenced 1 time by $a268
ca26f
    dec l0038                                                         // a26f: c6 38       .8
    bne loop_ca263                                                    // a271: d0 f0       ..
    ldy l0037                                                         // a273: a4 37       .7
    dey                                                               // a275: 88          .
    beq ca290                                                         // a276: f0 18       ..
    dey                                                               // a278: 88          .
    beq ca28c                                                         // a279: f0 11       ..
    ldy l0036                                                         // a27b: a4 36       .6
// $a27d referenced 1 time by $a283
loop_ca27d
    dey                                                               // a27d: 88          .
    lda l0600,y                                                       // a27e: b9 00 06    ...
    cmp #$30 // '0'                                                   // a281: c9 30       .0
    beq loop_ca27d                                                    // a283: f0 f8       ..
    cmp #$2e // '.'                                                   // a285: c9 2e       ..
    beq ca28a                                                         // a287: f0 01       ..
    iny                                                               // a289: c8          .
// $a28a referenced 1 time by $a287
ca28a
    sty l0036                                                         // a28a: 84 36       .6
// $a28c referenced 1 time by $a279
ca28c
    lda l0048                                                         // a28c: a5 48       .H
    beq ca2b7                                                         // a28e: f0 27       .'
// $a290 referenced 1 time by $a276
ca290
    lda #$45 // 'E'                                                   // a290: a9 45       .E
    jsr ca2cc                                                         // a292: 20 cc a2     ..
    lda l0048                                                         // a295: a5 48       .H
    bpl ca2a3                                                         // a297: 10 0a       ..
    lda #$2d // '-'                                                   // a299: a9 2d       .-
    jsr ca2cc                                                         // a29b: 20 cc a2     ..
    sec                                                               // a29e: 38          8
    lda #0                                                            // a29f: a9 00       ..
    sbc l0048                                                         // a2a1: e5 48       .H
// $a2a3 referenced 1 time by $a297
ca2a3
    jsr sub_ca2b8                                                     // a2a3: 20 b8 a2     ..
    lda l0037                                                         // a2a6: a5 37       .7
    beq ca2b7                                                         // a2a8: f0 0d       ..
    lda #$20 // ' '                                                   // a2aa: a9 20       .
    ldy l0048                                                         // a2ac: a4 48       .H
    bmi ca2b3                                                         // a2ae: 30 03       0.
    jsr ca2cc                                                         // a2b0: 20 cc a2     ..
// $a2b3 referenced 1 time by $a2ae
ca2b3
    cpx #0                                                            // a2b3: e0 00       ..
    beq ca2cc                                                         // a2b5: f0 15       ..
// $a2b7 referenced 2 times by $a28e, $a2a8
ca2b7
    rts                                                               // a2b7: 60          `

// $a2b8 referenced 1 time by $a2a3
sub_ca2b8
    ldx #$ff                                                          // a2b8: a2 ff       ..
    sec                                                               // a2ba: 38          8
// $a2bb referenced 1 time by $a2be
loop_ca2bb
    inx                                                               // a2bb: e8          .
    sbc #$0a                                                          // a2bc: e9 0a       ..
    bcs loop_ca2bb                                                    // a2be: b0 fb       ..
    adc #$0a                                                          // a2c0: 69 0a       i.
    pha                                                               // a2c2: 48          H
    txa                                                               // a2c3: 8a          .
    beq ca2c9                                                         // a2c4: f0 03       ..
    jsr sub_ca2ca                                                     // a2c6: 20 ca a2     ..
// $a2c9 referenced 1 time by $a2c4
ca2c9
    pla                                                               // a2c9: 68          h
// $a2ca referenced 2 times by $a2c6, $a410
sub_ca2ca
    ora #$30 // '0'                                                   // a2ca: 09 30       .0
// $a2cc referenced 11 times by $a162, $a171, $a1b9, $a24c, $a251, $a25a, $a26c, $a292, $a29b, $a2b0, $a2b5
ca2cc
    phx                                                               // a2cc: da          .
    ldx l0036                                                         // a2cd: a6 36       .6
    sta l0600,x                                                       // a2cf: 9d 00 06    ...
    plx                                                               // a2d2: fa          .
    inc l0036                                                         // a2d3: e6 36       .6
    rts                                                               // a2d5: 60          `

// $a2d6 referenced 2 times by $a2f5, $a2f9
ca2d6
    clc                                                               // a2d6: 18          .
    lda #$ff                                                          // a2d7: a9 ff       ..
    jmp c82dd                                                         // a2d9: 4c dd 82    L..

    .byt $60                                                          // a2dc: 60          `

// $a2dd referenced 3 times by $abcb, $abd5, $adb6
sub_ca2dd
    stz l0031                                                         // a2dd: 64 31       d1
    stz l0032                                                         // a2df: 64 32       d2
    stz l0033                                                         // a2e1: 64 33       d3
    stz l0034                                                         // a2e3: 64 34       d4
    stz l0035                                                         // a2e5: 64 35       d5
    stz l0047                                                         // a2e7: 64 47       dG
    stz l0048                                                         // a2e9: 64 48       dH
    ldx #$ff                                                          // a2eb: a2 ff       ..
    stx l0049                                                         // a2ed: 86 49       .I
    cmp #$2e // '.'                                                   // a2ef: c9 2e       ..
    beq ca348                                                         // a2f1: f0 55       .U
    cmp #$3a // ':'                                                   // a2f3: c9 3a       .:
    bcs ca2d6                                                         // a2f5: b0 df       ..
    sbc #$2f // '/'                                                   // a2f7: e9 2f       ./
    bmi ca2d6                                                         // a2f9: 30 db       0.
// $a2fb referenced 4 times by $a31f, $a323, $a337, $a33c
ca2fb
    sta l0035                                                         // a2fb: 85 35       .5
// $a2fd referenced 1 time by $a340
ca2fd
    lda l0047                                                         // a2fd: a5 47       .G
    beq ca303                                                         // a2ff: f0 02       ..
    dec l0048                                                         // a301: c6 48       .H
// $a303 referenced 2 times by $a2ff, $a34a
ca303
    iny                                                               // a303: c8          .
    lda (l0019),y                                                     // a304: b1 19       ..
    cmp #$3a // ':'                                                   // a306: c9 3a       .:
    bcs ca34c                                                         // a308: b0 42       .B
    sbc #$2f // '/'                                                   // a30a: e9 2f       ./
    bcc ca342                                                         // a30c: 90 34       .4
    sta l0042                                                         // a30e: 85 42       .B
    ldx l0049                                                         // a310: a6 49       .I
    bpl ca325                                                         // a312: 10 11       ..
    lda l0035                                                         // a314: a5 35       .5
    asl                                                               // a316: 0a          .
    asl                                                               // a317: 0a          .
    adc l0035                                                         // a318: 65 35       e5
    asl                                                               // a31a: 0a          .
    adc l0042                                                         // a31b: 65 42       eB
    cmp #$19                                                          // a31d: c9 19       ..
    bcc ca2fb                                                         // a31f: 90 da       ..
    stz l0049                                                         // a321: 64 49       dI
    bra ca2fb                                                         // a323: 80 d6       ..
// $a325 referenced 1 time by $a312
ca325
    cpx #2                                                            // a325: e0 02       ..
    bcs ca33e                                                         // a327: b0 15       ..
    jsr sub_ca419                                                     // a329: 20 19 a4     ..
    cmp #$19                                                          // a32c: c9 19       ..
    bcc ca333                                                         // a32e: 90 03       ..
    inc l0049                                                         // a330: e6 49       .I
    clc                                                               // a332: 18          .
// $a333 referenced 1 time by $a32e
ca333
    lda l0042                                                         // a333: a5 42       .B
    adc l0035                                                         // a335: 65 35       e5
    bcc ca2fb                                                         // a337: 90 c2       ..
    jsr sub_ca503                                                     // a339: 20 03 a5     ..
    bra ca2fb                                                         // a33c: 80 bd       ..
// $a33e referenced 1 time by $a327
ca33e
    inc l0048                                                         // a33e: e6 48       .H
    bra ca2fd                                                         // a340: 80 bb       ..
// $a342 referenced 1 time by $a30c
ca342
    eor #$fe                                                          // a342: 49 fe       I.
    ora l0047                                                         // a344: 05 47       .G
    bne ca357                                                         // a346: d0 0f       ..
// $a348 referenced 1 time by $a2f1
ca348
    inc l0047                                                         // a348: e6 47       .G
    bra ca303                                                         // a34a: 80 b7       ..
// $a34c referenced 1 time by $a308
ca34c
    cmp #$45 // 'E'                                                   // a34c: c9 45       .E
    bne ca357                                                         // a34e: d0 07       ..
    jsr sub_ca3b5                                                     // a350: 20 b5 a3     ..
    adc l0048                                                         // a353: 65 48       eH
    sta l0048                                                         // a355: 85 48       .H
// $a357 referenced 2 times by $a346, $a34e
ca357
    sty l001b                                                         // a357: 84 1b       ..
    ldy l0031                                                         // a359: a4 31       .1
    bne ca385                                                         // a35b: d0 28       .(
    lda l0032                                                         // a35d: a5 32       .2
    bmi ca385                                                         // a35f: 30 24       0$
    sta l002d                                                         // a361: 85 2d       .-
    beq ca36b                                                         // a363: f0 06       ..
    lda l0048                                                         // a365: a5 48       .H
    ora l0047                                                         // a367: 05 47       .G
    bne ca385                                                         // a369: d0 1a       ..
// $a36b referenced 1 time by $a363
ca36b
    lda l0035                                                         // a36b: a5 35       .5
    sta l002a                                                         // a36d: 85 2a       .*
    lda l0034                                                         // a36f: a5 34       .4
    sta l002b                                                         // a371: 85 2b       .+
    lda l0033                                                         // a373: a5 33       .3
    sta l002c                                                         // a375: 85 2c       .,
    lda l0048                                                         // a377: a5 48       .H
    bne ca37e                                                         // a379: d0 03       ..
    inc                                                               // a37b: 1a          .
    sec                                                               // a37c: 38          8
    rts                                                               // a37d: 60          `

// $a37e referenced 1 time by $a379
ca37e
    jsr c828d                                                         // a37e: 20 8d 82     ..
    bne ca393                                                         // a381: d0 10       ..
    bra ca3aa                                                         // a383: 80 25       .%
// $a385 referenced 3 times by $a35b, $a35f, $a369
ca385
    lda #$a8                                                          // a385: a9 a8       ..
    sta l0030                                                         // a387: 85 30       .0
    stz l002e                                                         // a389: 64 2e       d.
    stz l002f                                                         // a38b: 64 2f       d/
    tya                                                               // a38d: 98          .
    sta l0031                                                         // a38e: 85 31       .1
    jsr c8304                                                         // a390: 20 04 83     ..
// $a393 referenced 1 time by $a381
ca393
    ldy l0048                                                         // a393: a4 48       .H
    bmi ca3a1                                                         // a395: 30 0a       0.
    beq ca3a7                                                         // a397: f0 0e       ..
// $a399 referenced 1 time by $a39d
loop_ca399
    jsr sub_ca46b                                                     // a399: 20 6b a4     k.
    dey                                                               // a39c: 88          .
    bne loop_ca399                                                    // a39d: d0 fa       ..
    bra ca3a7                                                         // a39f: 80 06       ..
// $a3a1 referenced 2 times by $a395, $a3a5
ca3a1
    jsr sub_ca4ba                                                     // a3a1: 20 ba a4     ..
    iny                                                               // a3a4: c8          .
    bne ca3a1                                                         // a3a5: d0 fa       ..
// $a3a7 referenced 2 times by $a397, $a39f
ca3a7
    jsr ca712                                                         // a3a7: 20 12 a7     ..
// $a3aa referenced 1 time by $a383
ca3aa
    sec                                                               // a3aa: 38          8
    lda #$ff                                                          // a3ab: a9 ff       ..
    rts                                                               // a3ad: 60          `

// $a3ae referenced 1 time by $a3ba
loop_ca3ae
    jsr sub_ca3c0                                                     // a3ae: 20 c0 a3     ..
    eor #$ff                                                          // a3b1: 49 ff       I.
    sec                                                               // a3b3: 38          8
    rts                                                               // a3b4: 60          `

// $a3b5 referenced 1 time by $a350
sub_ca3b5
    iny                                                               // a3b5: c8          .
    lda (l0019),y                                                     // a3b6: b1 19       ..
    cmp #$2d // '-'                                                   // a3b8: c9 2d       .-
    beq loop_ca3ae                                                    // a3ba: f0 f2       ..
    cmp #$2b // '+'                                                   // a3bc: c9 2b       .+
    bne ca3c3                                                         // a3be: d0 03       ..
// $a3c0 referenced 1 time by $a3ae
sub_ca3c0
    iny                                                               // a3c0: c8          .
    lda (l0019),y                                                     // a3c1: b1 19       ..
// $a3c3 referenced 1 time by $a3be
ca3c3
    cmp #$3a // ':'                                                   // a3c3: c9 3a       .:
    bcs ca3e9                                                         // a3c5: b0 22       ."
    sbc #$2f // '/'                                                   // a3c7: e9 2f       ./
    bcc ca3e9                                                         // a3c9: 90 1e       ..
    sta l0049                                                         // a3cb: 85 49       .I
    iny                                                               // a3cd: c8          .
    lda (l0019),y                                                     // a3ce: b1 19       ..
    cmp #$3a // ':'                                                   // a3d0: c9 3a       .:
    bcs ca3e5                                                         // a3d2: b0 11       ..
    sbc #$2f // '/'                                                   // a3d4: e9 2f       ./
    bcc ca3e5                                                         // a3d6: 90 0d       ..
    iny                                                               // a3d8: c8          .
    sta l0042                                                         // a3d9: 85 42       .B
    lda l0049                                                         // a3db: a5 49       .I
    asl                                                               // a3dd: 0a          .
    asl                                                               // a3de: 0a          .
    adc l0049                                                         // a3df: 65 49       eI
    asl                                                               // a3e1: 0a          .
    adc l0042                                                         // a3e2: 65 42       eB
    rts                                                               // a3e4: 60          `

// $a3e5 referenced 2 times by $a3d2, $a3d6
ca3e5
    lda l0049                                                         // a3e5: a5 49       .I
    clc                                                               // a3e7: 18          .
    rts                                                               // a3e8: 60          `

// $a3e9 referenced 2 times by $a3c5, $a3c9
ca3e9
    lda #0                                                            // a3e9: a9 00       ..
    clc                                                               // a3eb: 18          .
    rts                                                               // a3ec: 60          `

// $a3ed referenced 3 times by $828a, $a1d4, $a6ce
sub_ca3ed
    lda l002e                                                         // a3ed: a5 2e       ..
    sta l003b                                                         // a3ef: 85 3b       .;
    lda l0030                                                         // a3f1: a5 30       .0
    sta l003c                                                         // a3f3: 85 3c       .<
    lda l0031                                                         // a3f5: a5 31       .1
    sta l003d                                                         // a3f7: 85 3d       .=
    lda l0032                                                         // a3f9: a5 32       .2
    sta l003e                                                         // a3fb: 85 3e       .>
    lda l0033                                                         // a3fd: a5 33       .3
    sta l003f                                                         // a3ff: 85 3f       .?
    lda l0034                                                         // a401: a5 34       .4
    sta l0040                                                         // a403: 85 40       .@
    lda l0035                                                         // a405: a5 35       .5
    sta l0041                                                         // a407: 85 41       .A
    rts                                                               // a409: 60          `

// $a40a referenced 1 time by $a263
sub_ca40a
    lda l0031                                                         // a40a: a5 31       .1
    lsr                                                               // a40c: 4a          J
    lsr                                                               // a40d: 4a          J
    lsr                                                               // a40e: 4a          J
    lsr                                                               // a40f: 4a          J
    jsr sub_ca2ca                                                     // a410: 20 ca a2     ..
    lda #$f0                                                          // a413: a9 f0       ..
    trb l0031                                                         // a415: 14 31       .1
    ldx #1                                                            // a417: a2 01       ..
// $a419 referenced 1 time by $a329
sub_ca419
    asl l0035                                                         // a419: 06 35       .5
    rol l0034                                                         // a41b: 26 34       &4
    rol l0033                                                         // a41d: 26 33       &3
    txa                                                               // a41f: 8a          .
    beq ca42c                                                         // a420: f0 0a       ..
    rol l0032                                                         // a422: 26 32       &2
    rol l0031                                                         // a424: 26 31       &1
// $a426 referenced 4 times by $a474, $a478, $a4c6, $a4ca
ca426
    lda l0031                                                         // a426: a5 31       .1
    pha                                                               // a428: 48          H
    lda l0032                                                         // a429: a5 32       .2
    pha                                                               // a42b: 48          H
// $a42c referenced 1 time by $a420
ca42c
    lda l0033                                                         // a42c: a5 33       .3
    pha                                                               // a42e: 48          H
    lda l0034                                                         // a42f: a5 34       .4
    pha                                                               // a431: 48          H
    lda l0035                                                         // a432: a5 35       .5
    cpx #0                                                            // a434: e0 00       ..
    bmi ca47a                                                         // a436: 30 42       0B
    bne ca446                                                         // a438: d0 0c       ..
    asl                                                               // a43a: 0a          .
    rol l0034                                                         // a43b: 26 34       &4
    rol l0033                                                         // a43d: 26 33       &3
    asl                                                               // a43f: 0a          .
    rol l0034                                                         // a440: 26 34       &4
    rol l0033                                                         // a442: 26 33       &3
    bra ca452                                                         // a444: 80 0c       ..
// $a446 referenced 2 times by $a438, $a450
ca446
    asl                                                               // a446: 0a          .
    rol l0034                                                         // a447: 26 34       &4
    rol l0033                                                         // a449: 26 33       &3
    rol l0032                                                         // a44b: 26 32       &2
    rol l0031                                                         // a44d: 26 31       &1
    dex                                                               // a44f: ca          .
    bpl ca446                                                         // a450: 10 f4       ..
// $a452 referenced 2 times by $a444, $a487
ca452
    adc l0035                                                         // a452: 65 35       e5
    sta l0035                                                         // a454: 85 35       .5
    pla                                                               // a456: 68          h
    adc l0034                                                         // a457: 65 34       e4
    sta l0034                                                         // a459: 85 34       .4
    pla                                                               // a45b: 68          h
    adc l0033                                                         // a45c: 65 33       e3
    sta l0033                                                         // a45e: 85 33       .3
    inx                                                               // a460: e8          .
    bne ca4b9                                                         // a461: d0 56       .V
    pla                                                               // a463: 68          h
    adc l0032                                                         // a464: 65 32       e2
    sta l0032                                                         // a466: 85 32       .2
    pla                                                               // a468: 68          h
    bra ca4a3                                                         // a469: 80 38       .8
// $a46b referenced 3 times by $a17a, $a201, $a399
sub_ca46b
    clc                                                               // a46b: 18          .
    lda l0030                                                         // a46c: a5 30       .0
    adc #3                                                            // a46e: 69 03       i.
    ldx #$fe                                                          // a470: a2 fe       ..
    sta l0030                                                         // a472: 85 30       .0
    bcc ca426                                                         // a474: 90 b0       ..
    inc l002f                                                         // a476: e6 2f       ./
    bra ca426                                                         // a478: 80 ac       ..
// $a47a referenced 2 times by $a436, $a484
ca47a
    lsr l0031                                                         // a47a: 46 31       F1
    ror l0032                                                         // a47c: 66 32       f2
    ror l0033                                                         // a47e: 66 33       f3
    ror l0034                                                         // a480: 66 34       f4
    ror                                                               // a482: 6a          j
    inx                                                               // a483: e8          .
    bne ca47a                                                         // a484: d0 f4       ..
    dex                                                               // a486: ca          .
    bra ca452                                                         // a487: 80 c9       ..
// $a489 referenced 1 time by $84aa
ca489
    lda l0035                                                         // a489: a5 35       .5
    adc l0041                                                         // a48b: 65 41       eA
    sta l0035                                                         // a48d: 85 35       .5
    lda l0034                                                         // a48f: a5 34       .4
    adc l0040                                                         // a491: 65 40       e@
    sta l0034                                                         // a493: 85 34       .4
    lda l0033                                                         // a495: a5 33       .3
    adc l003f                                                         // a497: 65 3f       e?
    sta l0033                                                         // a499: 85 33       .3
    lda l0032                                                         // a49b: a5 32       .2
    adc l003e                                                         // a49d: 65 3e       e>
    sta l0032                                                         // a49f: 85 32       .2
    lda l003d                                                         // a4a1: a5 3d       .=
// $a4a3 referenced 1 time by $a469
ca4a3
    adc l0031                                                         // a4a3: 65 31       e1
    sta l0031                                                         // a4a5: 85 31       .1
    bcc ca4b9                                                         // a4a7: 90 10       ..
// $a4a9 referenced 3 times by $a20d, $a4f2, $a511
ca4a9
    ror l0031                                                         // a4a9: 66 31       f1
    ror l0032                                                         // a4ab: 66 32       f2
    ror l0033                                                         // a4ad: 66 33       f3
    ror l0034                                                         // a4af: 66 34       f4
    ror l0035                                                         // a4b1: 66 35       f5
    inc l0030                                                         // a4b3: e6 30       .0
    bne ca4b9                                                         // a4b5: d0 02       ..
    inc l002f                                                         // a4b7: e6 2f       ./
// $a4b9 referenced 3 times by $a461, $a4a7, $a4b5
ca4b9
    rts                                                               // a4b9: 60          `

// $a4ba referenced 2 times by $a1cd, $a3a1
sub_ca4ba
    clc                                                               // a4ba: 18          .
    lda #$fc                                                          // a4bb: a9 fc       ..
    tax                                                               // a4bd: aa          .
    adc l0030                                                         // a4be: 65 30       e0
    bcs ca4c4                                                         // a4c0: b0 02       ..
    dec l002f                                                         // a4c2: c6 2f       ./
// $a4c4 referenced 1 time by $a4c0
ca4c4
    sta l0030                                                         // a4c4: 85 30       .0
    jsr ca426                                                         // a4c6: 20 26 a4     &.
    dex                                                               // a4c9: ca          .
    jsr ca426                                                         // a4ca: 20 26 a4     &.
    inx                                                               // a4cd: e8          .
// $a4ce referenced 1 time by $a4f6
ca4ce
    lda l0034,x                                                       // a4ce: b5 34       .4
    rol                                                               // a4d0: 2a          *
    lda l0033,x                                                       // a4d1: b5 33       .3
    adc l0035                                                         // a4d3: 65 35       e5
    sta l0035                                                         // a4d5: 85 35       .5
    lda l0032,x                                                       // a4d7: b5 32       .2
    adc l0034                                                         // a4d9: 65 34       e4
    sta l0034                                                         // a4db: 85 34       .4
    lda l0031,x                                                       // a4dd: b5 31       .1
    adc l0033                                                         // a4df: 65 33       e3
    sta l0033                                                         // a4e1: 85 33       .3
    txa                                                               // a4e3: 8a          .
    beq ca4e8                                                         // a4e4: f0 02       ..
    lda l0031                                                         // a4e6: a5 31       .1
// $a4e8 referenced 1 time by $a4e4
ca4e8
    adc l0032                                                         // a4e8: 65 32       e2
    sta l0032                                                         // a4ea: 85 32       .2
    bcc ca4f5                                                         // a4ec: 90 07       ..
    inc l0031                                                         // a4ee: e6 31       .1
    bne ca4f5                                                         // a4f0: d0 03       ..
    jsr ca4a9                                                         // a4f2: 20 a9 a4     ..
// $a4f5 referenced 2 times by $a4ec, $a4f0
ca4f5
    dex                                                               // a4f5: ca          .
    bpl ca4ce                                                         // a4f6: 10 d6       ..
    lda l0032                                                         // a4f8: a5 32       .2
    rol                                                               // a4fa: 2a          *
    lda l0031                                                         // a4fb: a5 31       .1
    adc l0035                                                         // a4fd: 65 35       e5
    sta l0035                                                         // a4ff: 85 35       .5
    bcc ca513                                                         // a501: 90 10       ..
// $a503 referenced 1 time by $a339
sub_ca503
    inc l0034                                                         // a503: e6 34       .4
    bne ca513                                                         // a505: d0 0c       ..
// $a507 referenced 1 time by $a722
sub_ca507
    inc l0033                                                         // a507: e6 33       .3
    bne ca513                                                         // a509: d0 08       ..
// $a50b referenced 1 time by $a6df
sub_ca50b
    inc l0032                                                         // a50b: e6 32       .2
    bne ca513                                                         // a50d: d0 04       ..
    inc l0031                                                         // a50f: e6 31       .1
    beq ca4a9                                                         // a511: f0 96       ..
// $a513 referenced 4 times by $a501, $a505, $a509, $a50d
ca513
    rts                                                               // a513: 60          `

// $a514 referenced 5 times by $9d36, $a638, $a6e8, $a70a, $a9a3
sub_ca514
    stz l0041                                                         // a514: 64 41       dA
    ldy #4                                                            // a516: a0 04       ..
    lda (l004a),y                                                     // a518: b1 4a       .J
    sta l0040                                                         // a51a: 85 40       .@
    dey                                                               // a51c: 88          .
    lda (l004a),y                                                     // a51d: b1 4a       .J
    sta l003f                                                         // a51f: 85 3f       .?
    dey                                                               // a521: 88          .
    lda (l004a),y                                                     // a522: b1 4a       .J
    sta l003e                                                         // a524: 85 3e       .>
    dey                                                               // a526: 88          .
    lda (l004a),y                                                     // a527: b1 4a       .J
    sta l003b                                                         // a529: 85 3b       .;
    tay                                                               // a52b: a8          .
    lda (l004a)                                                       // a52c: b2 4a       .J
    sta l003c                                                         // a52e: 85 3c       .<
    bne ca53b                                                         // a530: d0 09       ..
    tya                                                               // a532: 98          .
    ora l003e                                                         // a533: 05 3e       .>
    ora l003f                                                         // a535: 05 3f       .?
    ora l0040                                                         // a537: 05 40       .@
    beq ca53e                                                         // a539: f0 03       ..
// $a53b referenced 1 time by $a530
ca53b
    tya                                                               // a53b: 98          .
    ora #$80                                                          // a53c: 09 80       ..
// $a53e referenced 1 time by $a539
ca53e
    sta l003d                                                         // a53e: 85 3d       .=
    rts                                                               // a540: 60          `

// $a541 referenced 1 time by $a8db
sub_ca541
    lda #$76 // 'v'                                                   // a541: a9 76       .v
    bra ca547                                                         // a543: 80 02       ..
// $a545 referenced 8 times by $9210, $a5c4, $a5ec, $a6cb, $a7ef, $a97b, $a9e9, $a9f2
sub_ca545
    lda #$6c // 'l'                                                   // a545: a9 6c       .l
// $a547 referenced 2 times by $a0d3, $a543
ca547
    sta l004a                                                         // a547: 85 4a       .J
    lda #4                                                            // a549: a9 04       ..
    sta l004b                                                         // a54b: 85 4b       .K
// $a54d referenced 2 times by $b6e2, $b704
sub_ca54d
    lda l0030                                                         // a54d: a5 30       .0
    sta (l004a)                                                       // a54f: 92 4a       .J
    ldy #1                                                            // a551: a0 01       ..
    lda l002e                                                         // a553: a5 2e       ..
    eor l0031                                                         // a555: 45 31       E1
    and #$80                                                          // a557: 29 80       ).
    eor l0031                                                         // a559: 45 31       E1
    sta (l004a),y                                                     // a55b: 91 4a       .J
    lda l0032                                                         // a55d: a5 32       .2
    iny                                                               // a55f: c8          .
    sta (l004a),y                                                     // a560: 91 4a       .J
    lda l0033                                                         // a562: a5 33       .3
    iny                                                               // a564: c8          .
    sta (l004a),y                                                     // a565: 91 4a       .J
    lda l0034                                                         // a567: a5 34       .4
    iny                                                               // a569: c8          .
    sta (l004a),y                                                     // a56a: 91 4a       .J
    rts                                                               // a56c: 60          `

// $a56d referenced 2 times by $a0c7, $a0d6
sub_ca56d
    jsr sub_cbc24                                                     // a56d: 20 24 bc     $.
    bra ca57e                                                         // a570: 80 0c       ..
// $a572 referenced 1 time by $a1f9
sub_ca572
    ldy #$bf                                                          // a572: a0 bf       ..
    bra ca57a                                                         // a574: 80 04       ..
// $a576 referenced 1 time by $b8d7
sub_ca576
    lda #$6c // 'l'                                                   // a576: a9 6c       .l
    ldy #4                                                            // a578: a0 04       ..
// $a57a referenced 1 time by $a574
ca57a
    sta l004a                                                         // a57a: 85 4a       .J
    sty l004b                                                         // a57c: 84 4b       .K
// $a57e referenced 2 times by $a570, $b19e
ca57e
    stz l0035                                                         // a57e: 64 35       d5
    stz l002f                                                         // a580: 64 2f       d/
    ldy #4                                                            // a582: a0 04       ..
    lda (l004a),y                                                     // a584: b1 4a       .J
    sta l0034                                                         // a586: 85 34       .4
    dey                                                               // a588: 88          .
    lda (l004a),y                                                     // a589: b1 4a       .J
    sta l0033                                                         // a58b: 85 33       .3
    dey                                                               // a58d: 88          .
    lda (l004a),y                                                     // a58e: b1 4a       .J
    sta l0032                                                         // a590: 85 32       .2
    dey                                                               // a592: 88          .
    lda (l004a),y                                                     // a593: b1 4a       .J
    sta l002e                                                         // a595: 85 2e       ..
    tay                                                               // a597: a8          .
    lda (l004a)                                                       // a598: b2 4a       .J
    sta l0030                                                         // a59a: 85 30       .0
    bne ca5a7                                                         // a59c: d0 09       ..
    tya                                                               // a59e: 98          .
    ora l0032                                                         // a59f: 05 32       .2
    ora l0033                                                         // a5a1: 05 33       .3
    ora l0034                                                         // a5a3: 05 34       .4
    beq ca5aa                                                         // a5a5: f0 03       ..
// $a5a7 referenced 1 time by $a59c
ca5a7
    tya                                                               // a5a7: 98          .
    ora #$80                                                          // a5a8: 09 80       ..
// $a5aa referenced 1 time by $a5a5
ca5aa
    sta l0031                                                         // a5aa: 85 31       .1
    rts                                                               // a5ac: 60          `

// $a5ad referenced 3 times by $a8e0, $a8ee, $a9a0
sub_ca5ad
    clc                                                               // a5ad: 18          .
    lda l004c                                                         // a5ae: a5 4c       .L
    adc #5                                                            // a5b0: 69 05       i.
// $a5b2 referenced 1 time by $aa50
sub_ca5b2
    sta l004c                                                         // a5b2: 85 4c       .L
// $a5b4 referenced 3 times by $a631, $a701, $a7fc
sub_ca5b4
    ldy #$bf                                                          // a5b4: a0 bf       ..
// $a5b6 referenced 1 time by $a5bf
loop_ca5b6
    sta l004a                                                         // a5b6: 85 4a       .J
    sty l004b                                                         // a5b8: 84 4b       .K
// $a5ba referenced 1 time by $a5e8
ca5ba
    rts                                                               // a5ba: 60          `

// $a5bb referenced 2 times by $a8f8, $a9af
sub_ca5bb
    lda #$6c // 'l'                                                   // a5bb: a9 6c       .l
// $a5bd referenced 1 time by $a8e8
sub_ca5bd
    ldy #4                                                            // a5bd: a0 04       ..
    bra loop_ca5b6                                                    // a5bf: 80 f5       ..
// $a5c1 referenced 1 time by $aa41
sub_ca5c1
    jsr cad10                                                         // a5c1: 20 10 ad     ..
// $a5c4 referenced 1 time by $a95d
sub_ca5c4
    jsr sub_ca545                                                     // a5c4: 20 45 a5     E.
    jsr sub_ca5f4                                                     // a5c7: 20 f4 a5     ..
    inc l0030                                                         // a5ca: e6 30       .0
// $a5cc referenced 2 times by $a5e3, $a90a
sub_ca5cc
    jsr cad10                                                         // a5cc: 20 10 ad     ..
// $a5cf referenced 2 times by $a5f4, $aa39
sub_ca5cf
    stz l003b                                                         // a5cf: 64 3b       d;
// $a5d1 referenced 1 time by $a993
sub_ca5d1
    ldy #$80                                                          // a5d1: a0 80       ..
    sty l003d                                                         // a5d3: 84 3d       .=
    iny                                                               // a5d5: c8          .
    sty l003c                                                         // a5d6: 84 3c       .<
    stz l003e                                                         // a5d8: 64 3e       d>
    stz l003f                                                         // a5da: 64 3f       d?
    stz l0040                                                         // a5dc: 64 40       d@
    stz l0041                                                         // a5de: 64 41       dA
    jmp ca70f                                                         // a5e0: 4c 0f a7    L..

// $a5e3 referenced 2 times by $a7de, $a929
sub_ca5e3
    jsr sub_ca5cc                                                     // a5e3: 20 cc a5     ..
    ldx l0031                                                         // a5e6: a6 31       .1
    beq ca5ba                                                         // a5e8: f0 d0       ..
    dec l0030                                                         // a5ea: c6 30       .0
    jsr sub_ca545                                                     // a5ec: 20 45 a5     E.
    txa                                                               // a5ef: 8a          .
    eor l002e                                                         // a5f0: 45 2e       E.
// $a5f2 referenced 1 time by $a96e
sub_ca5f2
    sta l002e                                                         // a5f2: 85 2e       ..
// $a5f4 referenced 2 times by $a5c7, $a962
sub_ca5f4
    jsr sub_ca5cf                                                     // a5f4: 20 cf a5     ..
    bra ca634                                                         // a5f7: 80 3b       .;
// $a5f9 referenced 1 time by $a0cc
sub_ca5f9
    ldx #0                                                            // a5f9: a2 00       ..
    tay                                                               // a5fb: a8          .
    beq ca622                                                         // a5fc: f0 24       .$
    bpl ca608                                                         // a5fe: 10 08       ..
    dec                                                               // a600: 3a          :
    eor #$ff                                                          // a601: 49 ff       I.
    pha                                                               // a603: 48          H
    jsr sub_ca62f                                                     // a604: 20 2f a6     /.
// $a607 referenced 1 time by $a615
loop_ca607
    pla                                                               // a607: 68          h
// $a608 referenced 1 time by $a5fe
ca608
    lsr                                                               // a608: 4a          J
    beq ca61d                                                         // a609: f0 12       ..
    pha                                                               // a60b: 48          H
    bcc ca612                                                         // a60c: 90 04       ..
    inx                                                               // a60e: e8          .
    jsr cbc3a                                                         // a60f: 20 3a bc     :.
// $a612 referenced 1 time by $a60c
ca612
    jsr ca6ce                                                         // a612: 20 ce a6     ..
    bra loop_ca607                                                    // a615: 80 f0       ..
// $a617 referenced 1 time by $a61e
loop_ca617
    jsr sub_cbc24                                                     // a617: 20 24 bc     $.
    jsr ca6e4                                                         // a61a: 20 e4 a6     ..
// $a61d referenced 1 time by $a609
ca61d
    dex                                                               // a61d: ca          .
    bpl loop_ca617                                                    // a61e: 10 f7       ..
    txa                                                               // a620: 8a          .
    rts                                                               // a621: 60          `

// $a622 referenced 3 times by $a1bc, $a5fc, $b6e5
ca622
    lda #$80                                                          // a622: a9 80       ..
    sta l0031                                                         // a624: 85 31       .1
    inc                                                               // a626: 1a          .
    sta l0030                                                         // a627: 85 30       .0
    jmp ca72f                                                         // a629: 4c 2f a7    L/.

// $a62c referenced 1 time by $a636
loop_ca62c
    jmp c81ea                                                         // a62c: 4c ea 81    L..

// $a62f referenced 3 times by $a604, $a92f, $a975
sub_ca62f
    lda #$b9                                                          // a62f: a9 b9       ..
// $a631 referenced 1 time by $a8d8
sub_ca631
    jsr sub_ca5b4                                                     // a631: 20 b4 a5     ..
// $a634 referenced 5 times by $a045, $a5f7, $a8e3, $a8fb, $a914
ca634
    lda l0031                                                         // a634: a5 31       .1
    beq loop_ca62c                                                    // a636: f0 f4       ..
    jsr sub_ca514                                                     // a638: 20 14 a5     ..
    bne ca640                                                         // a63b: d0 03       ..
    jmp ca72b                                                         // a63d: 4c 2b a7    L+.

// $a640 referenced 1 time by $a63b
ca640
    lda l003b                                                         // a640: a5 3b       .;
    eor l002e                                                         // a642: 45 2e       E.
    sta l002e                                                         // a644: 85 2e       ..
    sec                                                               // a646: 38          8
    lda l003c                                                         // a647: a5 3c       .<
    adc #$81                                                          // a649: 69 81       i.
    rol l002f                                                         // a64b: 26 2f       &/
    sbc l0030                                                         // a64d: e5 30       .0
    bcs ca653                                                         // a64f: b0 02       ..
    dec l002f                                                         // a651: c6 2f       ./
// $a653 referenced 1 time by $a64f
ca653
    sta l0030                                                         // a653: 85 30       .0
    lda l003d                                                         // a655: a5 3d       .=
    clc                                                               // a657: 18          .
    ldy #4                                                            // a658: a0 04       ..
    sty l003c                                                         // a65a: 84 3c       .<
// $a65c referenced 1 time by $a69e
ca65c
    ldx #8                                                            // a65c: a2 08       ..
// $a65e referenced 1 time by $a697
ca65e
    bcs ca676                                                         // a65e: b0 16       ..
    cmp l0031                                                         // a660: c5 31       .1
    bne ca674                                                         // a662: d0 10       ..
    ldy l003e                                                         // a664: a4 3e       .>
    cpy l0032                                                         // a666: c4 32       .2
    bne ca674                                                         // a668: d0 0a       ..
    ldy l003f                                                         // a66a: a4 3f       .?
    cpy l0033                                                         // a66c: c4 33       .3
    bne ca674                                                         // a66e: d0 04       ..
    ldy l0040                                                         // a670: a4 40       .@
    cpy l0034                                                         // a672: c4 34       .4
// $a674 referenced 3 times by $a662, $a668, $a66e
ca674
    bcc ca68d                                                         // a674: 90 17       ..
// $a676 referenced 1 time by $a65e
ca676
    tay                                                               // a676: a8          .
    lda l0040                                                         // a677: a5 40       .@
    sbc l0034                                                         // a679: e5 34       .4
    sta l0040                                                         // a67b: 85 40       .@
    lda l003f                                                         // a67d: a5 3f       .?
    sbc l0033                                                         // a67f: e5 33       .3
    sta l003f                                                         // a681: 85 3f       .?
    lda l003e                                                         // a683: a5 3e       .>
    sbc l0032                                                         // a685: e5 32       .2
    sta l003e                                                         // a687: 85 3e       .>
    tya                                                               // a689: 98          .
    sbc l0031                                                         // a68a: e5 31       .1
    sec                                                               // a68c: 38          8
// $a68d referenced 1 time by $a674
ca68d
    rol l003b                                                         // a68d: 26 3b       &;
    asl l0040                                                         // a68f: 06 40       .@
    rol l003f                                                         // a691: 26 3f       &?
    rol l003e                                                         // a693: 26 3e       &>
    rol                                                               // a695: 2a          *
    dex                                                               // a696: ca          .
    bne ca65e                                                         // a697: d0 c5       ..
    ldx l003b                                                         // a699: a6 3b       .;
    phx                                                               // a69b: da          .
    dec l003c                                                         // a69c: c6 3c       .<
    bne ca65c                                                         // a69e: d0 bc       ..
    plx                                                               // a6a0: fa          .
    ror                                                               // a6a1: 6a          j
// $a6a2 referenced 1 time by $a8b0
ca6a2
    lsr l0031                                                         // a6a2: 46 31       F1
    stx l0034                                                         // a6a4: 86 34       .4
    ldx #3                                                            // a6a6: a2 03       ..
// $a6a8 referenced 1 time by $a6b1
loop_ca6a8
    cmp l0031                                                         // a6a8: c5 31       .1
    bcc ca6ae                                                         // a6aa: 90 02       ..
    sbc l0031                                                         // a6ac: e5 31       .1
// $a6ae referenced 1 time by $a6aa
ca6ae
    php                                                               // a6ae: 08          .
    asl                                                               // a6af: 0a          .
    dex                                                               // a6b0: ca          .
    bne loop_ca6a8                                                    // a6b1: d0 f5       ..
    plp                                                               // a6b3: 28          (
    ror                                                               // a6b4: 6a          j
    plp                                                               // a6b5: 28          (
    ror                                                               // a6b6: 6a          j
    plp                                                               // a6b7: 28          (
    ror                                                               // a6b8: 6a          j
    sta l0035                                                         // a6b9: 85 35       .5
    pla                                                               // a6bb: 68          h
    sta l0033                                                         // a6bc: 85 33       .3
    pla                                                               // a6be: 68          h
    sta l0032                                                         // a6bf: 85 32       .2
    pla                                                               // a6c1: 68          h
    sta l0031                                                         // a6c2: 85 31       .1
// $a6c4 referenced 1 time by $aa97
ca6c4
    bmi ca712                                                         // a6c4: 30 4c       0L
    jsr c8306                                                         // a6c6: 20 06 83     ..
    bra ca712                                                         // a6c9: 80 47       .G
// $a6cb referenced 2 times by $a8bc, $a907
sub_ca6cb
    jsr sub_ca545                                                     // a6cb: 20 45 a5     E.
// $a6ce referenced 2 times by $a612, $a9ef
ca6ce
    jsr sub_ca3ed                                                     // a6ce: 20 ed a3     ..
    lda l0030                                                         // a6d1: a5 30       .0
    beq ca72b                                                         // a6d3: f0 56       .V
    stz l0034                                                         // a6d5: 64 34       d4
    asl l0040                                                         // a6d7: 06 40       .@
    bcc ca6ed                                                         // a6d9: 90 12       ..
    inc l0033                                                         // a6db: e6 33       .3
    bne ca6ed                                                         // a6dd: d0 0e       ..
    jsr sub_ca50b                                                     // a6df: 20 0b a5     ..
    bra ca6ed                                                         // a6e2: 80 09       ..
// $a6e4 referenced 3 times by $9fb3, $a61a, $a9c7
ca6e4
    lda l0031                                                         // a6e4: a5 31       .1
    beq ca73b                                                         // a6e6: f0 53       .S
    jsr sub_ca514                                                     // a6e8: 20 14 a5     ..
// $a6eb referenced 1 time by $9fa2
sub_ca6eb
    beq ca72b                                                         // a6eb: f0 3e       .>
// $a6ed referenced 3 times by $a6d9, $a6dd, $a6e2
ca6ed
    jsr sub_ca73e                                                     // a6ed: 20 3e a7     >.
    bra ca712                                                         // a6f0: 80 20       .
// $a6f2 referenced 2 times by $8362, $a729
ca6f2
    brk                                                               // a6f2: 00          .

    .byt $14                                                          // a6f3: 14          .
    .asc "Too big"                                                    // a6f4: 54 6f 6f... Too
    .byt 0                                                            // a6fb: 00          .

sub_ca6fc
    jsr sub_ca901                                                     // a6fc: 20 01 a9     ..
// $a6ff referenced 3 times by $a940, $a948, $ab56
sub_ca6ff
    lda #$90                                                          // a6ff: a9 90       ..
    jsr sub_ca5b4                                                     // a701: 20 b4 a5     ..
// $a704 referenced 2 times by $9f5c, $a9b2
ca704
    lda l0031                                                         // a704: a5 31       .1
    eor l002e                                                         // a706: 45 2e       E.
    sta l002e                                                         // a708: 85 2e       ..
// $a70a referenced 5 times by $9f52, $a8eb, $a8f1, $a8fe, $b5fe
ca70a
    jsr sub_ca514                                                     // a70a: 20 14 a5     ..
// $a70d referenced 1 time by $9f6b
sub_ca70d
    beq ca73b                                                         // a70d: f0 2c       .,
// $a70f referenced 1 time by $a5e0
ca70f
    jsr sub_c8429                                                     // a70f: 20 29 84     ).
// $a712 referenced 5 times by $a3a7, $a6c4, $a6c9, $a6f0, $a802
ca712
    lda l0035                                                         // a712: a5 35       .5
    bpl ca725                                                         // a714: 10 0f       ..
    asl                                                               // a716: 0a          .
    bne ca71e                                                         // a717: d0 05       ..
    rol                                                               // a719: 2a          *
    and l0034                                                         // a71a: 25 34       %4
    bne ca725                                                         // a71c: d0 07       ..
// $a71e referenced 1 time by $a717
ca71e
    inc l0034                                                         // a71e: e6 34       .4
    bne ca725                                                         // a720: d0 03       ..
    jsr sub_ca507                                                     // a722: 20 07 a5     ..
// $a725 referenced 3 times by $a714, $a71c, $a720
ca725
    lda l002f                                                         // a725: a5 2f       ./
    beq ca739                                                         // a727: f0 10       ..
    bpl ca6f2                                                         // a729: 10 c7       ..
// $a72b referenced 7 times by $835b, $84cb, $a220, $a63d, $a6d3, $a6eb, $a9f5
ca72b
    stz l0030                                                         // a72b: 64 30       d0
    stz l0031                                                         // a72d: 64 31       d1
// $a72f referenced 1 time by $a629
ca72f
    stz l002e                                                         // a72f: 64 2e       d.
// $a731 referenced 1 time by $82e8
sub_ca731
    stz l002f                                                         // a731: 64 2f       d/
    stz l0032                                                         // a733: 64 32       d2
    stz l0033                                                         // a735: 64 33       d3
    stz l0034                                                         // a737: 64 34       d4
// $a739 referenced 1 time by $a727
ca739
    stz l0035                                                         // a739: 64 35       d5
// $a73b referenced 2 times by $a6e6, $a70d
ca73b
    lda #$ff                                                          // a73b: a9 ff       ..
// $a73d referenced 1 time by $a7a7
ca73d
    rts                                                               // a73d: 60          `

// $a73e referenced 3 times by $a6ed, $a9ac, $aab6
sub_ca73e
    clc                                                               // a73e: 18          .
    lda l0030                                                         // a73f: a5 30       .0
    adc l003c                                                         // a741: 65 3c       e<
    rol l002f                                                         // a743: 26 2f       &/
    sbc #$7f                                                          // a745: e9 7f       ..
    sta l0030                                                         // a747: 85 30       .0
    bcs ca74d                                                         // a749: b0 02       ..
    dec l002f                                                         // a74b: c6 2f       ./
// $a74d referenced 1 time by $a749
ca74d
    lda l002e                                                         // a74d: a5 2e       ..
    eor l003b                                                         // a74f: 45 3b       E;
    sta l002e                                                         // a751: 85 2e       ..
    phx                                                               // a753: da          .
    ldx #$f8                                                          // a754: a2 f8       ..
    ldy #4                                                            // a756: a0 04       ..
// $a758 referenced 1 time by $a761
loop_ca758
    lda l0039,x                                                       // a758: b5 39       .9
    stz l0039,x                                                       // a75a: 74 39       t9
    sta l0041,y                                                       // a75c: 99 41 00    .A.
    inx                                                               // a75f: e8          .
    dey                                                               // a760: 88          .
    bne loop_ca758                                                    // a761: d0 f5       ..
    stz l003c                                                         // a763: 64 3c       d<
    stz l003b                                                         // a765: 64 3b       d;
    stz l003a                                                         // a767: 64 3a       d:
    bra ca79b                                                         // a769: 80 30       .0
// $a76b referenced 1 time by $a79d
ca76b
    phx                                                               // a76b: da          .
    lsr l003d                                                         // a76c: 46 3d       F=
    ror l003e                                                         // a76e: 66 3e       f>
    ror l003f                                                         // a770: 66 3f       f?
    ror l0040                                                         // a772: 66 40       f@
    ror l0041                                                         // a774: 66 41       fA
// $a776 referenced 1 time by $a798
ca776
    asl l0046,x                                                       // a776: 16 46       .F
    bcc ca797                                                         // a778: 90 1d       ..
    clc                                                               // a77a: 18          .
    tya                                                               // a77b: 98          .
    adc l0042,x                                                       // a77c: 75 42       uB
    tay                                                               // a77e: a8          .
    lda l0034                                                         // a77f: a5 34       .4
    adc l0041,x                                                       // a781: 75 41       uA
    sta l0034                                                         // a783: 85 34       .4
    lda l0033                                                         // a785: a5 33       .3
    adc l0040,x                                                       // a787: 75 40       u@
    sta l0033                                                         // a789: 85 33       .3
    lda l0032                                                         // a78b: a5 32       .2
    adc l003f,x                                                       // a78d: 75 3f       u?
    sta l0032                                                         // a78f: 85 32       .2
    lda l0031                                                         // a791: a5 31       .1
    adc l003e,x                                                       // a793: 75 3e       u>
    sta l0031                                                         // a795: 85 31       .1
// $a797 referenced 1 time by $a778
ca797
    inx                                                               // a797: e8          .
    bmi ca776                                                         // a798: 30 dc       0.
    plx                                                               // a79a: fa          .
// $a79b referenced 2 times by $a769, $a7a0
ca79b
    lda l0046,x                                                       // a79b: b5 46       .F
    bne ca76b                                                         // a79d: d0 cc       ..
    inx                                                               // a79f: e8          .
    bmi ca79b                                                         // a7a0: 30 f9       0.
    plx                                                               // a7a2: fa          .
    sty l0035                                                         // a7a3: 84 35       .5
    lda l0031                                                         // a7a5: a5 31       .1
    bmi ca73d                                                         // a7a7: 30 94       0.
    jmp c8306                                                         // a7a9: 4c 06 83    L..

// $a7ac referenced 1 time by $a9bc
sub_ca7ac
    jsr sub_c979f                                                     // a7ac: 20 9f 97     ..
// $a7af referenced 1 time by $a0d9
sub_ca7af
    lda l0031                                                         // a7af: a5 31       .1
    eor l002e                                                         // a7b1: 45 2e       E.
    bmi ca7cd                                                         // a7b3: 30 18       0.
    brk                                                               // a7b5: 00          .

    .byt $16                                                          // a7b6: 16          .
    .asc "Log range"                                                  // a7b7: 4c 6f 67... Log

// $a7c0 referenced 1 time by $a811
ca7c0
    brk                                                               // a7c0: 00          .

    .byt $15                                                          // a7c1: 15          .
    .asc "-ve roo"                                                    // a7c2: 2d 76 65... -ve
// $a7c9 referenced 1 time by $a985
la7c9
    .byt $74,   0, $86, $8e                                           // a7c9: 74 00 86... t..

// $a7cd referenced 1 time by $a7b3
ca7cd
    ldy #$80                                                          // a7cd: a0 80       ..
    ldx l0030                                                         // a7cf: a6 30       .0
    beq ca7db                                                         // a7d1: f0 08       ..
    lda l0031                                                         // a7d3: a5 31       .1
    cmp #$b5                                                          // a7d5: c9 b5       ..
    bcs ca7db                                                         // a7d7: b0 02       ..
    dex                                                               // a7d9: ca          .
    iny                                                               // a7da: c8          .
// $a7db referenced 2 times by $a7d1, $a7d7
ca7db
    phx                                                               // a7db: da          .
    sty l0030                                                         // a7dc: 84 30       .0
    jsr sub_ca5e3                                                     // a7de: 20 e3 a5     ..
    lda l0030                                                         // a7e1: a5 30       .0
    beq ca7ef                                                         // a7e3: f0 0a       ..
    cmp #$6e // 'n'                                                   // a7e5: c9 6e       .n
    bcc ca7ed                                                         // a7e7: 90 04       ..
    clc                                                               // a7e9: 18          .
    jsr sub_ca8b9                                                     // a7ea: 20 b9 a8     ..
// $a7ed referenced 1 time by $a7e7
ca7ed
    inc l0030                                                         // a7ed: e6 30       .0
// $a7ef referenced 1 time by $a7e3
ca7ef
    jsr sub_ca545                                                     // a7ef: 20 45 a5     E.
    pla                                                               // a7f2: 68          h
    eor #$80                                                          // a7f3: 49 80       I.
    beq ca805                                                         // a7f5: f0 0e       ..
    jsr sub_c82e6                                                     // a7f7: 20 e6 82     ..
    lda #$9f                                                          // a7fa: a9 9f       ..
    jsr sub_ca5b4                                                     // a7fc: 20 b4 a5     ..
    jsr sub_ca9a3                                                     // a7ff: 20 a3 a9     ..
    jsr ca712                                                         // a802: 20 12 a7     ..
// $a805 referenced 2 times by $a7f5, $a80d
ca805
    jmp cad10                                                         // a805: 4c 10 ad    L..

sub_ca808
    jsr sub_c979f                                                     // a808: 20 9f 97     ..
// $a80b referenced 1 time by $a911
sub_ca80b
    lda l0031                                                         // a80b: a5 31       .1
    beq ca805                                                         // a80d: f0 f6       ..
    lda l002e                                                         // a80f: a5 2e       ..
    bmi ca7c0                                                         // a811: 30 ad       0.
    lda l0030                                                         // a813: a5 30       .0
    lsr                                                               // a815: 4a          J
    php                                                               // a816: 08          .
    adc #$41 // 'A'                                                   // a817: 69 41       iA
    sta l0030                                                         // a819: 85 30       .0
    lda l0031                                                         // a81b: a5 31       .1
    plp                                                               // a81d: 28          (
    bcc ca829                                                         // a81e: 90 09       ..
    lsr                                                               // a820: 4a          J
    ror l0032                                                         // a821: 66 32       f2
    ror l0033                                                         // a823: 66 33       f3
    ror l0034                                                         // a825: 66 34       f4
    ror l0035                                                         // a827: 66 35       f5
// $a829 referenced 1 time by $a81e
ca829
    stz l003e                                                         // a829: 64 3e       d>
    stz l003f                                                         // a82b: 64 3f       d?
    ldx #$68 // 'h'                                                   // a82d: a2 68       .h
    sec                                                               // a82f: 38          8
    sbc #$90                                                          // a830: e9 90       ..
    bcs ca838                                                         // a832: b0 04       ..
    adc #$50 // 'P'                                                   // a834: 69 50       iP
    ldx #$48 // 'H'                                                   // a836: a2 48       .H
// $a838 referenced 1 time by $a832
ca838
    sta l0031                                                         // a838: 85 31       .1
    txa                                                               // a83a: 8a          .
    ldx #$fc                                                          // a83b: a2 fc       ..
    ldy #$0c                                                          // a83d: a0 0c       ..
// $a83f referenced 1 time by $a89e
ca83f
    sta l0041,x                                                       // a83f: 95 41       .A
// $a841 referenced 1 time by $a87d
ca841
    asl l0033                                                         // a841: 06 33       .3
    rol l0032                                                         // a843: 26 32       &2
    rol l0031                                                         // a845: 26 31       &1
    lda l0031                                                         // a847: a5 31       .1
    cmp l003d                                                         // a849: c5 3d       .=
    bne ca857                                                         // a84b: d0 0a       ..
    lda l0032                                                         // a84d: a5 32       .2
    cmp l003e                                                         // a84f: c5 3e       .>
    bne ca857                                                         // a851: d0 04       ..
    lda l0033                                                         // a853: a5 33       .3
    cmp l003f                                                         // a855: c5 3f       .?
// $a857 referenced 2 times by $a84b, $a851
ca857
    bcc ca875                                                         // a857: 90 1c       ..
    lda l0033                                                         // a859: a5 33       .3
    sbc l003f                                                         // a85b: e5 3f       .?
    sta l0033                                                         // a85d: 85 33       .3
    lda l0032                                                         // a85f: a5 32       .2
    sbc l003e                                                         // a861: e5 3e       .>
    sta l0032                                                         // a863: 85 32       .2
    lda l0031                                                         // a865: a5 31       .1
    sbc l003d                                                         // a867: e5 3d       .=
    sta l0031                                                         // a869: 85 31       .1
    tya                                                               // a86b: 98          .
    clc                                                               // a86c: 18          .
    adc l0041,x                                                       // a86d: 75 41       uA
    bcc ca878                                                         // a86f: 90 07       ..
    inc l0040,x                                                       // a871: f6 40       .@
    bra ca878                                                         // a873: 80 03       ..
// $a875 referenced 1 time by $a857
ca875
    tya                                                               // a875: 98          .
    eor l0041,x                                                       // a876: 55 41       UA
// $a878 referenced 2 times by $a86f, $a873
ca878
    sta l0041,x                                                       // a878: 95 41       .A
    tya                                                               // a87a: 98          .
    lsr                                                               // a87b: 4a          J
    tay                                                               // a87c: a8          .
    bne ca841                                                         // a87d: d0 c2       ..
    ldy l0040,x                                                       // a87f: b4 40       .@
    phy                                                               // a881: 5a          Z
    cpx #$fd                                                          // a882: e0 fd       ..
    bne ca88a                                                         // a884: d0 04       ..
    lda l0034                                                         // a886: a5 34       .4
    sta l0033                                                         // a888: 85 33       .3
// $a88a referenced 1 time by $a884
ca88a
    bcs ca899                                                         // a88a: b0 0d       ..
    ply                                                               // a88c: 7a          z
    ldy #4                                                            // a88d: a0 04       ..
// $a88f referenced 1 time by $a895
loop_ca88f
    asl l0035                                                         // a88f: 06 35       .5
    rol l0034                                                         // a891: 26 34       &4
    rol                                                               // a893: 2a          *
    dey                                                               // a894: 88          .
    bne loop_ca88f                                                    // a895: d0 f8       ..
    tsb l0033                                                         // a897: 04 33       .3
// $a899 referenced 1 time by $a88a
ca899
    lda #$80                                                          // a899: a9 80       ..
    ldy #$c0                                                          // a89b: a0 c0       ..
    inx                                                               // a89d: e8          .
    bne ca83f                                                         // a89e: d0 9f       ..
    ldx l003d                                                         // a8a0: a6 3d       .=
    lda l0031                                                         // a8a2: a5 31       .1
    stx l0031                                                         // a8a4: 86 31       .1
    ldx l0040                                                         // a8a6: a6 40       .@
    asl                                                               // a8a8: 0a          .
    cmp l0031                                                         // a8a9: c5 31       .1
    bcc ca8b0                                                         // a8ab: 90 03       ..
    sbc l0031                                                         // a8ad: e5 31       .1
    inx                                                               // a8af: e8          .
// $a8b0 referenced 1 time by $a8ab
ca8b0
    jmp ca6a2                                                         // a8b0: 4c a2 a6    L..

// $a8b3 referenced 2 times by $a9e6, $aa3e
sub_ca8b3
    ldx #$ca                                                          // a8b3: a2 ca       ..
    dec l0030                                                         // a8b5: c6 30       .0
    bra ca8bb                                                         // a8b7: 80 02       ..
// $a8b9 referenced 2 times by $a7ea, $a938
sub_ca8b9
    ldx #$e7                                                          // a8b9: a2 e7       ..
// $a8bb referenced 1 time by $a8b7
ca8bb
    php                                                               // a8bb: 08          .
    jsr sub_ca6cb                                                     // a8bc: 20 cb a6     ..
    plp                                                               // a8bf: 28          (
    ror l002e                                                         // a8c0: 66 2e       f.
    txa                                                               // a8c2: 8a          .
    jsr sub_caa55                                                     // a8c3: 20 55 aa     U.
    dec                                                               // a8c6: 3a          :
    dec                                                               // a8c7: 3a          :
    sta l0047                                                         // a8c8: 85 47       .G
    txa                                                               // a8ca: 8a          .
    iny                                                               // a8cb: c8          .
    clc                                                               // a8cc: 18          .
// $a8cd referenced 1 time by $a8d0
loop_ca8cd
    adc #$0a                                                          // a8cd: 69 0a       i.
    dey                                                               // a8cf: 88          .
    bpl loop_ca8cd                                                    // a8d0: 10 fb       ..
    adc #$f1                                                          // a8d2: 69 f1       i.
    sta l004c                                                         // a8d4: 85 4c       .L
    lda #$be                                                          // a8d6: a9 be       ..
    jsr sub_ca631                                                     // a8d8: 20 31 a6     1.
    jsr sub_ca541                                                     // a8db: 20 41 a5     A.
    bra ca8ee                                                         // a8de: 80 0e       ..
// $a8e0 referenced 1 time by $a8f6
loop_ca8e0
    jsr sub_ca5ad                                                     // a8e0: 20 ad a5     ..
    jsr ca634                                                         // a8e3: 20 34 a6     4.
    lda #$76 // 'v'                                                   // a8e6: a9 76       .v
    jsr sub_ca5bd                                                     // a8e8: 20 bd a5     ..
    jsr ca70a                                                         // a8eb: 20 0a a7     ..
// $a8ee referenced 1 time by $a8de
ca8ee
    jsr sub_ca5ad                                                     // a8ee: 20 ad a5     ..
    jsr ca70a                                                         // a8f1: 20 0a a7     ..
    inc l0047                                                         // a8f4: e6 47       .G
    bmi loop_ca8e0                                                    // a8f6: 30 e8       0.
    jsr sub_ca5bb                                                     // a8f8: 20 bb a5     ..
    jsr ca634                                                         // a8fb: 20 34 a6     4.
    jmp ca70a                                                         // a8fe: 4c 0a a7    L..

// $a901 referenced 1 time by $a6fc
sub_ca901
    jsr sub_c979f                                                     // a901: 20 9f 97     ..
    lda l002e                                                         // a904: a5 2e       ..
    pha                                                               // a906: 48          H
    jsr sub_ca6cb                                                     // a907: 20 cb a6     ..
    jsr sub_ca5cc                                                     // a90a: 20 cc a5     ..
    lda l0031                                                         // a90d: a5 31       .1
    beq ca948                                                         // a90f: f0 37       .7
    jsr sub_ca80b                                                     // a911: 20 0b a8     ..
    jsr ca634                                                         // a914: 20 34 a6     4.
    bra ca91f                                                         // a917: 80 06       ..
sub_ca919
    jsr sub_c979f                                                     // a919: 20 9f 97     ..
    lda l002e                                                         // a91c: a5 2e       ..
    pha                                                               // a91e: 48          H
// $a91f referenced 1 time by $a917
ca91f
    stz l002e                                                         // a91f: 64 2e       d.
    lda #$c7                                                          // a921: a9 c7       ..
    jsr sub_caa55                                                     // a923: 20 55 aa     U.
    php                                                               // a926: 08          .
    bne ca92d                                                         // a927: d0 04       ..
    jsr sub_ca5e3                                                     // a929: 20 e3 a5     ..
    sec                                                               // a92c: 38          8
// $a92d referenced 1 time by $a927
ca92d
    bcs ca932                                                         // a92d: b0 03       ..
    jsr sub_ca62f                                                     // a92f: 20 2f a6     /.
// $a932 referenced 1 time by $a92d
ca932
    lda l0030                                                         // a932: a5 30       .0
    cmp #$6d // 'm'                                                   // a934: c9 6d       .m
    bcc ca93b                                                         // a936: 90 03       ..
    jsr sub_ca8b9                                                     // a938: 20 b9 a8     ..
// $a93b referenced 1 time by $a936
ca93b
    plp                                                               // a93b: 28          (
    bne ca946                                                         // a93c: d0 08       ..
    inc l0030                                                         // a93e: e6 30       .0
    jsr sub_ca6ff                                                     // a940: 20 ff a6     ..
    dec l0030                                                         // a943: c6 30       .0
    sec                                                               // a945: 38          8
// $a946 referenced 1 time by $a93c
ca946
    bcs ca94b                                                         // a946: b0 03       ..
// $a948 referenced 1 time by $a90f
ca948
    jsr sub_ca6ff                                                     // a948: 20 ff a6     ..
// $a94b referenced 1 time by $a946
ca94b
    pla                                                               // a94b: 68          h
    jmp cad14                                                         // a94c: 4c 14 ad    L..

sub_ca94f
    jsr sub_ca9d1                                                     // a94f: 20 d1 a9     ..
    bra ca959                                                         // a952: 80 05       ..
sub_ca954
    jsr sub_ca9d1                                                     // a954: 20 d1 a9     ..
    inc l0049                                                         // a957: e6 49       .I
// $a959 referenced 1 time by $a952
ca959
    lsr l0049                                                         // a959: 46 49       FI
    bcc ca962                                                         // a95b: 90 05       ..
    jsr sub_ca5c4                                                     // a95d: 20 c4 a5     ..
    bra ca965                                                         // a960: 80 03       ..
// $a962 referenced 1 time by $a95b
ca962
    jsr sub_ca5f4                                                     // a962: 20 f4 a5     ..
// $a965 referenced 1 time by $a960
ca965
    lsr l0049                                                         // a965: 46 49       FI
    bcs ca978                                                         // a967: b0 0f       ..
// $a969 referenced 1 time by $a973
loop_ca969
    tay                                                               // a969: a8          .
    rts                                                               // a96a: 60          `

sub_ca96b
    jsr sub_ca9d1                                                     // a96b: 20 d1 a9     ..
    jsr sub_ca5f2                                                     // a96e: 20 f2 a5     ..
    lsr l0049                                                         // a971: 46 49       FI
    bcc loop_ca969                                                    // a973: 90 f4       ..
    jsr sub_ca62f                                                     // a975: 20 2f a6     /.
// $a978 referenced 1 time by $a967
ca978
    jmp cad10                                                         // a978: 4c 10 ad    L..

// $a97b referenced 2 times by $a9dd, $aa30
sub_ca97b
    jsr sub_ca545                                                     // a97b: 20 45 a5     E.
    lda l0030                                                         // a97e: a5 30       .0
    ldx #0                                                            // a980: a2 00       ..
// $a982 referenced 1 time by $a988
loop_ca982
    dey                                                               // a982: 88          .
    stx l0031,y                                                       // a983: 96 31       .1
    cmp la7c9,y                                                       // a985: d9 c9 a7    ...
    bcc loop_ca982                                                    // a988: 90 f8       ..
    lda l004c                                                         // a98a: a5 4c       .L
    jsr ca9c1                                                         // a98c: 20 c1 a9     ..
    lda l002e                                                         // a98f: a5 2e       ..
    sta l003b                                                         // a991: 85 3b       .;
    jsr sub_ca5d1                                                     // a993: 20 d1 a5     ..
    dec l0030                                                         // a996: c6 30       .0
    jsr sub_c9788                                                     // a998: 20 88 97     ..
    sta l0049                                                         // a99b: 85 49       .I
    jsr c828d                                                         // a99d: 20 8d 82     ..
    jsr sub_ca5ad                                                     // a9a0: 20 ad a5     ..
// $a9a3 referenced 1 time by $a7ff
sub_ca9a3
    jsr sub_ca514                                                     // a9a3: 20 14 a5     ..
    ldy #5                                                            // a9a6: a0 05       ..
    lda (l004a),y                                                     // a9a8: b1 4a       .J
    sta l0041                                                         // a9aa: 85 41       .A
    jsr sub_ca73e                                                     // a9ac: 20 3e a7     >.
    jsr sub_ca5bb                                                     // a9af: 20 bb a5     ..
    jmp ca704                                                         // a9b2: 4c 04 a7    L..

sub_ca9b5
    jsr sub_c979f                                                     // a9b5: 20 9f 97     ..
    lda #$ca                                                          // a9b8: a9 ca       ..
    bra ca9c1                                                         // a9ba: 80 05       ..
sub_ca9bc
    jsr sub_ca7ac                                                     // a9bc: 20 ac a7     ..
    lda #$82                                                          // a9bf: a9 82       ..
// $a9c1 referenced 3 times by $a98c, $a9ba, $a9cf
ca9c1
    ldy #$bf                                                          // a9c1: a0 bf       ..
// $a9c3 referenced 1 time by $a0e0
sub_ca9c3
    sty l004b                                                         // a9c3: 84 4b       .K
    sta l004a                                                         // a9c5: 85 4a       .J
    jmp ca6e4                                                         // a9c7: 4c e4 a6    L..

sub_ca9ca
    jsr sub_c979f                                                     // a9ca: 20 9f 97     ..
    lda #$cf                                                          // a9cd: a9 cf       ..
    bra ca9c1                                                         // a9cf: 80 f0       ..
// $a9d1 referenced 3 times by $a94f, $a954, $a96b
sub_ca9d1
    jsr sub_c979f                                                     // a9d1: 20 9f 97     ..
    lda #$8b                                                          // a9d4: a9 8b       ..
    jsr sub_caa50                                                     // a9d6: 20 50 aa     P.
    bcc caa07                                                         // a9d9: 90 2c       .,
    bne ca9e0                                                         // a9db: d0 03       ..
    jsr sub_ca97b                                                     // a9dd: 20 7b a9     {.
// $a9e0 referenced 1 time by $a9db
ca9e0
    lda #$6e // 'n'                                                   // a9e0: a9 6e       .n
    cmp l0030                                                         // a9e2: c5 30       .0
    bcs ca9f2                                                         // a9e4: b0 0c       ..
    jsr sub_ca8b3                                                     // a9e6: 20 b3 a8     ..
    jsr sub_ca545                                                     // a9e9: 20 45 a5     E.
    inc l046c                                                         // a9ec: ee 6c 04    .l.
// $a9ef referenced 1 time by $aa4d
ca9ef
    jmp ca6ce                                                         // a9ef: 4c ce a6    L..

// $a9f2 referenced 1 time by $a9e4
ca9f2
    jsr sub_ca545                                                     // a9f2: 20 45 a5     E.
// $a9f5 referenced 1 time by $a9fa
loop_ca9f5
    jmp ca72b                                                         // a9f5: 4c 2b a7    L+.

// $a9f8 referenced 1 time by $aa1f
ca9f8
    lda l002e                                                         // a9f8: a5 2e       ..
    bmi loop_ca9f5                                                    // a9fa: 30 f9       0.
    brk                                                               // a9fc: 00          .

    .byt $18                                                          // a9fd: 18          .
    .asc "Exp range"                                                  // a9fe: 45 78 70... Exp

// $aa07 referenced 1 time by $a9d9
caa07
    brk                                                               // aa07: 00          .

    .byt $17                                                          // aa08: 17          .
    .asc "Accuracy lost"                                              // aa09: 41 63 63... Acc
    .byt 0                                                            // aa16: 00          .

sub_caa17
    jsr sub_c979f                                                     // aa17: 20 9f 97     ..
// $aa1a referenced 1 time by $a0e3
sub_caa1a
    lda #$9a                                                          // aa1a: a9 9a       ..
    jsr sub_caa50                                                     // aa1c: 20 50 aa     P.
    bcc ca9f8                                                         // aa1f: 90 d7       ..
    bne caa2c                                                         // aa21: d0 09       ..
    lda l0030                                                         // aa23: a5 30       .0
    inc                                                               // aa25: 1a          .
    and #8                                                            // aa26: 29 08       ).
    beq caa2c                                                         // aa28: f0 02       ..
    dec l0030                                                         // aa2a: c6 30       .0
// $aa2c referenced 2 times by $aa21, $aa28
caa2c
    dec                                                               // aa2c: 3a          :
    pha                                                               // aa2d: 48          H
    beq caa33                                                         // aa2e: f0 03       ..
    jsr sub_ca97b                                                     // aa30: 20 7b a9     {.
// $aa33 referenced 1 time by $aa2e
caa33
    lda l0030                                                         // aa33: a5 30       .0
    cmp #$6a // 'j'                                                   // aa35: c9 6a       .j
    bcs caa3e                                                         // aa37: b0 05       ..
    jsr sub_ca5cf                                                     // aa39: 20 cf a5     ..
    bra caa44                                                         // aa3c: 80 06       ..
// $aa3e referenced 1 time by $aa37
caa3e
    jsr sub_ca8b3                                                     // aa3e: 20 b3 a8     ..
    jsr sub_ca5c1                                                     // aa41: 20 c1 a5     ..
// $aa44 referenced 1 time by $aa3c
caa44
    clc                                                               // aa44: 18          .
    lda l0030                                                         // aa45: a5 30       .0
    adc l0049                                                         // aa47: 65 49       eI
    sta l0030                                                         // aa49: 85 30       .0
    pla                                                               // aa4b: 68          h
    dec                                                               // aa4c: 3a          :
    bpl ca9ef                                                         // aa4d: 10 a0       ..
    rts                                                               // aa4f: 60          `

// $aa50 referenced 2 times by $a9d6, $aa1c
sub_caa50
    jsr sub_ca5b2                                                     // aa50: 20 b2 a5     ..
    stz l0049                                                         // aa53: 64 49       dI
// $aa55 referenced 2 times by $a8c3, $a923
sub_caa55
    phx                                                               // aa55: da          .
    tax                                                               // aa56: aa          .
    ldy #1                                                            // aa57: a0 01       ..
// $aa59 referenced 1 time by $aa69
loop_caa59
    dex                                                               // aa59: ca          .
    lda cbf00,x                                                       // aa5a: bd 00 bf    ...
    cmp l0030                                                         // aa5d: c5 30       .0
    bne caa66                                                         // aa5f: d0 05       ..
    lda lbefe,x                                                       // aa61: bd fe be    ...
    cmp l0031                                                         // aa64: c5 31       .1
// $aa66 referenced 1 time by $aa5f
caa66
    bcs caa6b                                                         // aa66: b0 03       ..
    dey                                                               // aa68: 88          .
    bpl loop_caa59                                                    // aa69: 10 ee       ..
// $aa6b referenced 1 time by $aa66
caa6b
    plx                                                               // aa6b: fa          .
    tya                                                               // aa6c: 98          .
    rts                                                               // aa6d: 60          `

// $aa6e referenced 2 times by $ac12, $aefb
sub_caa6e
    jsr sub_c9779                                                     // aa6e: 20 79 97     y.
    lda #osbyte_inkey                                                 // aa71: a9 81       ..
    ldx l002a                                                         // aa73: a6 2a       .*
    ldy l002b                                                         // aa75: a4 2b       .+
    jmp osbyte                                                        // aa77: 4c f4 ff    L..            // Read key within time limit, or read a specific key, or read machine type

// $aa7a referenced 2 times by $aaae, $aab0
caa7a
    jsr sub_c83d3                                                     // aa7a: 20 d3 83     ..
// $aa7d referenced 1 time by $aaab
caa7d
    stz l002e                                                         // aa7d: 64 2e       d.
    stz l002f                                                         // aa7f: 64 2f       d/
    stz l0035                                                         // aa81: 64 35       d5
    lda #$80                                                          // aa83: a9 80       ..
    sta l0030                                                         // aa85: 85 30       .0
    eor l000d                                                         // aa87: 45 0d       E.
    sta l0034                                                         // aa89: 85 34       .4
    eor l000e                                                         // aa8b: 45 0e       E.
    sta l0033                                                         // aa8d: 85 33       .3
    eor l000f                                                         // aa8f: 45 0f       E.
    sta l0032                                                         // aa91: 85 32       .2
    eor l0010                                                         // aa93: 45 10       E.
    sta l0031                                                         // aa95: 85 31       .1
    jmp ca6c4                                                         // aa97: 4c c4 a6    L..

// $aa9a referenced 1 time by $aad1
caa9a
    inc l001b                                                         // aa9a: e6 1b       ..
    jsr sub_c976c                                                     // aa9c: 20 6c 97     l.
    lda l002d                                                         // aa9f: a5 2d       .-
    bmi caac1                                                         // aaa1: 30 1e       0.
    ora l002c                                                         // aaa3: 05 2c       .,
    ora l002b                                                         // aaa5: 05 2b       .+
    bne caab0                                                         // aaa7: d0 07       ..
    lda l002a                                                         // aaa9: a5 2a       .*
    beq caa7d                                                         // aaab: f0 d0       ..
    dec                                                               // aaad: 3a          :
    beq caa7a                                                         // aaae: f0 ca       ..
// $aab0 referenced 1 time by $aaa7
caab0
    jsr caa7a                                                         // aab0: 20 7a aa     z.
    jsr sub_c828a                                                     // aab3: 20 8a 82     ..
    jsr sub_ca73e                                                     // aab6: 20 3e a7     >.
    jsr sub_c9788                                                     // aab9: 20 88 97     ..
    jsr sub_cbf2f                                                     // aabc: 20 2f bf     /.
    bra caae8                                                         // aabf: 80 27       .'
// $aac1 referenced 1 time by $aaa1
caac1
    ldx #$0d                                                          // aac1: a2 0d       ..
    jsr sub_cbe06                                                     // aac3: 20 06 be     ..
    lda #$40 // '@'                                                   // aac6: a9 40       .@
    sta l0011                                                         // aac8: 85 11       ..
    rts                                                               // aaca: 60          `

sub_caacb
    ldy l001b                                                         // aacb: a4 1b       ..
    lda (l0019),y                                                     // aacd: b1 19       ..
    cmp #$28 // '('                                                   // aacf: c9 28       .(
    beq caa9a                                                         // aad1: f0 c7       ..
    jsr sub_c83d3                                                     // aad3: 20 d3 83     ..
    ldx #$0d                                                          // aad6: a2 0d       ..
// $aad8 referenced 2 times by $a052, $b1d8
sub_caad8
    lda l0000,x                                                       // aad8: b5 00       ..
    sta l002a                                                         // aada: 85 2a       .*
    lda l0001,x                                                       // aadc: b5 01       ..
    sta l002b                                                         // aade: 85 2b       .+
    lda l0002,x                                                       // aae0: b5 02       ..
    sta l002c                                                         // aae2: 85 2c       .,
    lda l0003,x                                                       // aae4: b5 03       ..
    sta l002d                                                         // aae6: 85 2d       .-
// $aae8 referenced 4 times by $aabf, $aaf9, $ab12, $ab2d
caae8
    lda #$40 // '@'                                                   // aae8: a9 40       .@
    rts                                                               // aaea: 60          `

sub_caaeb
    jsr sub_c9779                                                     // aaeb: 20 79 97     y.
    ldx #3                                                            // aaee: a2 03       ..
// $aaf0 referenced 1 time by $aaf7
loop_caaf0
    lda l002a,x                                                       // aaf0: b5 2a       .*
    eor #$ff                                                          // aaf2: 49 ff       I.
    sta l002a,x                                                       // aaf4: 95 2a       .*
    dex                                                               // aaf6: ca          .
    bpl loop_caaf0                                                    // aaf7: 10 f7       ..
    bra caae8                                                         // aaf9: 80 ed       ..
sub_caafb
    jsr sub_cab14                                                     // aafb: 20 14 ab     ..
    stx l002a                                                         // aafe: 86 2a       .*
    rts                                                               // ab00: 60          `

sub_cab01
    jsr sub_c9779                                                     // ab01: 20 79 97     y.
    jsr sub_c93c7                                                     // ab04: 20 c7 93     ..
    sta l002a                                                         // ab07: 85 2a       .*
    stx l002b                                                         // ab09: 86 2b       .+
    sty l002c                                                         // ab0b: 84 2c       .,
    php                                                               // ab0d: 08          .
    pla                                                               // ab0e: 68          h
    sta l002d                                                         // ab0f: 85 2d       .-
    cld                                                               // ab11: d8          .
    bra caae8                                                         // ab12: 80 d4       ..
// $ab14 referenced 1 time by $aafb
sub_cab14
    lda #osbyte_read_text_cursor_pos                                  // ab14: a9 86       ..
    jsr osbyte                                                        // ab16: 20 f4 ff     ..            // Read input cursor position (Sets X=POS and Y=VPOS)
    tya                                                               // ab19: 98          .              // Y is the vertical text position ('VPOS')
// $ab1a referenced 2 times by $ab35, $ab52
cab1a
    jmp cae60                                                         // ab1a: 4c 60 ae    L`.

sub_cab1d
    lda #2                                                            // ab1d: a9 02       ..
    bra cab23                                                         // ab1f: 80 02       ..
sub_cab21
    lda #0                                                            // ab21: a9 00       ..
// $ab23 referenced 1 time by $ab1f
cab23
    pha                                                               // ab23: 48          H
    jsr sub_cba7a                                                     // ab24: 20 7a ba     z.
    ldx #$2a // '*'                                                   // ab27: a2 2a       .*
    pla                                                               // ab29: 68          h
    jsr osargs                                                        // ab2a: 20 da ff     ..            // Read or write a file's attributes
    bra caae8                                                         // ab2d: 80 b9       ..
sub_cab2f
    jsr sub_cba7a                                                     // ab2f: 20 7a ba     z.
    jsr osbget                                                        // ab32: 20 d7 ff     ..            // Read a single byte from an open file Y
    bra cab1a                                                         // ab35: 80 e3       ..
sub_cab37
    lda #$40 // '@'                                                   // ab37: a9 40       .@
    bra cab41                                                         // ab39: 80 06       ..
sub_cab3b
    lda #$80                                                          // ab3b: a9 80       ..
    bra cab41                                                         // ab3d: 80 02       ..
sub_cab3f
    lda #$c0                                                          // ab3f: a9 c0       ..
// $ab41 referenced 2 times by $ab39, $ab3d
cab41
    pha                                                               // ab41: 48          H
    jsr cad78                                                         // ab42: 20 78 ad     x.
    bne cab9d                                                         // ab45: d0 56       .V
    jsr sub_cbe6b                                                     // ab47: 20 6b be     k.
    ldx #0                                                            // ab4a: a2 00       ..
    ldy #6                                                            // ab4c: a0 06       ..
    pla                                                               // ab4e: 68          h
    jsr osfind                                                        // ab4f: 20 ce ff     ..            // Open or close file(s)
    bra cab1a                                                         // ab52: 80 c6       ..
sub_cab54
    stz l0031                                                         // ab54: 64 31       d1
    jsr sub_ca6ff                                                     // ab56: 20 ff a6     ..
    inc l0030                                                         // ab59: e6 30       .0
    rts                                                               // ab5b: 60          `

sub_cab5c
    jsr cad78                                                         // ab5c: 20 78 ad     x.
    bne cab9d                                                         // ab5f: d0 3c       .<
    inc l0036                                                         // ab61: e6 36       .6
    ldy l0036                                                         // ab63: a4 36       .6
    lda #$0d                                                          // ab65: a9 0d       ..
    sta l05ff,y                                                       // ab67: 99 ff 05    ...
    jsr cbc91                                                         // ab6a: 20 91 bc     ..
    lda l0019                                                         // ab6d: a5 19       ..
    pha                                                               // ab6f: 48          H
    lda l001a                                                         // ab70: a5 1a       ..
    pha                                                               // ab72: 48          H
    lda l001b                                                         // ab73: a5 1b       ..
    pha                                                               // ab75: 48          H
    ldy l0004                                                         // ab76: a4 04       ..
    ldx l0005                                                         // ab78: a6 05       ..
    iny                                                               // ab7a: c8          .
    sty l0019                                                         // ab7b: 84 19       ..
    sty l0037                                                         // ab7d: 84 37       .7
    bne cab82                                                         // ab7f: d0 01       ..
    inx                                                               // ab81: e8          .
// $ab82 referenced 1 time by $ab7f
cab82
    stx l001a                                                         // ab82: 86 1a       ..
    stx l0038                                                         // ab84: 86 38       .8
    jsr c8edc                                                         // ab86: 20 dc 8e     ..
    stz l001b                                                         // ab89: 64 1b       d.
    jsr sub_c9dff                                                     // ab8b: 20 ff 9d     ..
    jsr cbd21                                                         // ab8e: 20 21 bd     !.
// $ab91 referenced 1 time by $abdf
cab91
    pla                                                               // ab91: 68          h
    sta l001b                                                         // ab92: 85 1b       ..
    pla                                                               // ab94: 68          h
    sta l001a                                                         // ab95: 85 1a       ..
    pla                                                               // ab97: 68          h
    sta l0019                                                         // ab98: 85 19       ..
    lda l0027                                                         // ab9a: a5 27       .'
    rts                                                               // ab9c: 60          `

// $ab9d referenced 3 times by $ab45, $ab5f, $aba3
cab9d
    jmp c9155                                                         // ab9d: 4c 55 91    LU.

sub_caba0
    jsr cad78                                                         // aba0: 20 78 ad     x.
    bne cab9d                                                         // aba3: d0 f8       ..
// $aba5 referenced 1 time by $b96e
sub_caba5
    ldx l0036                                                         // aba5: a6 36       .6
    stz l0600,x                                                       // aba7: 9e 00 06    ...
    lda l0019                                                         // abaa: a5 19       ..
    pha                                                               // abac: 48          H
    lda l001a                                                         // abad: a5 1a       ..
    pha                                                               // abaf: 48          H
    lda l001b                                                         // abb0: a5 1b       ..
    pha                                                               // abb2: 48          H
    stz l001b                                                         // abb3: 64 1b       d.
    stz l0019                                                         // abb5: 64 19       d.
    lda #6                                                            // abb7: a9 06       ..
    sta l001a                                                         // abb9: 85 1a       ..
    jsr c8f92                                                         // abbb: 20 92 8f     ..
    cmp #$2d // '-'                                                   // abbe: c9 2d       .-
    beq cabd0                                                         // abc0: f0 0e       ..
    cmp #$2b // '+'                                                   // abc2: c9 2b       .+
    bne cabc9                                                         // abc4: d0 03       ..
    jsr c8f92                                                         // abc6: 20 92 8f     ..
// $abc9 referenced 1 time by $abc4
cabc9
    dec l001b                                                         // abc9: c6 1b       ..
    jsr sub_ca2dd                                                     // abcb: 20 dd a2     ..
    bra cabdd                                                         // abce: 80 0d       ..
// $abd0 referenced 1 time by $abc0
cabd0
    jsr c8f92                                                         // abd0: 20 92 8f     ..
    dec l001b                                                         // abd3: c6 1b       ..
    jsr sub_ca2dd                                                     // abd5: 20 dd a2     ..
    bcc cabdd                                                         // abd8: 90 03       ..
    jsr sub_cad1c                                                     // abda: 20 1c ad     ..
// $abdd referenced 2 times by $abce, $abd8
cabdd
    sta l0027                                                         // abdd: 85 27       .'
    bra cab91                                                         // abdf: 80 b0       ..
sub_cabe1
    jsr cad78                                                         // abe1: 20 78 ad     x.
    beq cac1c                                                         // abe4: f0 36       .6
    bpl cac02                                                         // abe6: 10 1a       ..
    lda l002e                                                         // abe8: a5 2e       ..
    php                                                               // abea: 08          .
    stz l002e                                                         // abeb: 64 2e       d.
    jsr sub_c8349                                                     // abed: 20 49 83     I.
    plp                                                               // abf0: 28          (
    bpl cabfd                                                         // abf1: 10 0a       ..
    lda l003d                                                         // abf3: a5 3d       .=
    beq cabfa                                                         // abf5: f0 03       ..
    jsr sub_c83c2                                                     // abf7: 20 c2 83     ..
// $abfa referenced 1 time by $abf5
cabfa
    jsr sub_c83aa                                                     // abfa: 20 aa 83     ..
// $abfd referenced 1 time by $abf1
cabfd
    jsr sub_c978b                                                     // abfd: 20 8b 97     ..
    lda #$40 // '@'                                                   // ac00: a9 40       .@
// $ac02 referenced 1 time by $abe6
cac02
    rts                                                               // ac02: 60          `

sub_cac03
    jsr cad78                                                         // ac03: 20 78 ad     x.
    bne cac1c                                                         // ac06: d0 14       ..
    lda l0036                                                         // ac08: a5 36       .6
    beq cac2b                                                         // ac0a: f0 1f       ..
    lda l0600                                                         // ac0c: ad 00 06    ...
// $ac0f referenced 1 time by $ac5b
cac0f
    jmp cae60                                                         // ac0f: 4c 60 ae    L`.

sub_cac12
    jsr sub_caa6e                                                     // ac12: 20 6e aa     n.
    tya                                                               // ac15: 98          .
    bne cac2b                                                         // ac16: d0 13       ..
    txa                                                               // ac18: 8a          .
    jmp cae62                                                         // ac19: 4c 62 ae    Lb.

// $ac1c referenced 5 times by $abe4, $ac06, $ac4b, $ac82, $ac90
cac1c
    jmp c9155                                                         // ac1c: 4c 55 91    LU.

sub_cac1f
    jsr sub_cba7a                                                     // ac1f: 20 7a ba     z.
    tax                                                               // ac22: aa          .              // X=File handle
    lda #osbyte_check_eof                                             // ac23: a9 7f       ..
    jsr osbyte                                                        // ac25: 20 f4 ff     ..            // Check for EOF in file handle X
    txa                                                               // ac28: 8a          .              // X is non-zero if reached end of file, zero otherwise
    beq cac2d                                                         // ac29: f0 02       ..
// $ac2b referenced 6 times by $ac0a, $ac16, $ac44, $ac4f, $ac7b, $b3dd
cac2b
    ldx #$ff                                                          // ac2b: a2 ff       ..
// $ac2d referenced 2 times by $ac29, $ac3a
cac2d
    stx l002a                                                         // ac2d: 86 2a       .*
    stx l002b                                                         // ac2f: 86 2b       .+
    stx l002c                                                         // ac31: 86 2c       .,
    stx l002d                                                         // ac33: 86 2d       .-
// $ac35 referenced 1 time by $ac57
cac35
    lda #$40 // '@'                                                   // ac35: a9 40       .@
    rts                                                               // ac37: 60          `

// $ac38 referenced 5 times by $97e6, $9ae1, $ac3e, $adf9, $b3d3
cac38
    ldx #0                                                            // ac38: a2 00       ..
    bra cac2d                                                         // ac3a: 80 f1       ..
// $ac3c referenced 1 time by $ac49
loop_cac3c
    lda l0031                                                         // ac3c: a5 31       .1
    beq cac38                                                         // ac3e: f0 f8       ..
    lda l002e                                                         // ac40: a5 2e       ..
    bpl cac59                                                         // ac42: 10 15       ..
    bra cac2b                                                         // ac44: 80 e5       ..
sub_cac46
    jsr cad78                                                         // ac46: 20 78 ad     x.
    bmi loop_cac3c                                                    // ac49: 30 f1       0.
    beq cac1c                                                         // ac4b: f0 cf       ..
    lda l002d                                                         // ac4d: a5 2d       .-
    bmi cac2b                                                         // ac4f: 30 da       0.
    ora l002c                                                         // ac51: 05 2c       .,
    ora l002b                                                         // ac53: 05 2b       .+
    ora l002a                                                         // ac55: 05 2a       .*
    beq cac35                                                         // ac57: f0 dc       ..
// $ac59 referenced 1 time by $ac42
cac59
    lda #1                                                            // ac59: a9 01       ..
// $ac5b referenced 1 time by $ac7d
cac5b
    bra cac0f                                                         // ac5b: 80 b2       ..
sub_cac5d
    jsr sub_c8fae                                                     // ac5d: 20 ae 8f     ..
    jsr sub_c976c                                                     // ac60: 20 6c 97     l.
    lda l002a                                                         // ac63: a5 2a       .*
    pha                                                               // ac65: 48          H
    ldx l002b                                                         // ac66: a6 2b       .+
    jsr sub_cbd26                                                     // ac68: 20 26 bd     &.
    stx l002d                                                         // ac6b: 86 2d       .-
    pla                                                               // ac6d: 68          h
    sta l002c                                                         // ac6e: 85 2c       .,
    ldy #>(l002a)                                                     // ac70: a0 00       ..
    ldx #<(l002a)                                                     // ac72: a2 2a       .*
    lda #osword_read_pixel                                            // ac74: a9 09       ..
    jsr osword                                                        // ac76: 20 f1 ff     ..            // Read pixel value
    lda l002e                                                         // ac79: a5 2e       ..
    bmi cac2b                                                         // ac7b: 30 ae       0.
    bra cac5b                                                         // ac7d: 80 dc       ..
sub_cac7f
    jsr sub_c9dff                                                     // ac7f: 20 ff 9d     ..
    bne cac1c                                                         // ac82: d0 98       ..
    cpx #$2c // ','                                                   // ac84: e0 2c       .,
    bne caca0                                                         // ac86: d0 18       ..
    inc l001b                                                         // ac88: e6 1b       ..
    jsr cbc91                                                         // ac8a: 20 91 bc     ..
    jsr sub_c9dff                                                     // ac8d: 20 ff 9d     ..
    bne cac1c                                                         // ac90: d0 8a       ..
    lda #1                                                            // ac92: a9 01       ..
    sta l002a                                                         // ac94: 85 2a       .*
    inc l001b                                                         // ac96: e6 1b       ..
    cpx #$29 // ')'                                                   // ac98: e0 29       .)
    beq caca9                                                         // ac9a: f0 0d       ..
    cpx #$2c // ','                                                   // ac9c: e0 2c       .,
    beq caca3                                                         // ac9e: f0 03       ..
// $aca0 referenced 1 time by $ac86
caca0
    jmp c8fbb                                                         // aca0: 4c bb 8f    L..

// $aca3 referenced 1 time by $ac9e
caca3
    jsr sub_c9769                                                     // aca3: 20 69 97     i.
    jsr sub_cbd12                                                     // aca6: 20 12 bd     ..
// $aca9 referenced 1 time by $ac9a
caca9
    ldx l002a                                                         // aca9: a6 2a       .*
    bne cacaf                                                         // acab: d0 02       ..
    ldx #1                                                            // acad: a2 01       ..
// $acaf referenced 1 time by $acab
cacaf
    stx l002a                                                         // acaf: 86 2a       .*
    txa                                                               // acb1: 8a          .
    dex                                                               // acb2: ca          .
    stx l002d                                                         // acb3: 86 2d       .-
    clc                                                               // acb5: 18          .
    adc l0004                                                         // acb6: 65 04       e.
    sta l0037                                                         // acb8: 85 37       .7
    lda #0                                                            // acba: a9 00       ..
    adc l0005                                                         // acbc: 65 05       e.
    sta l0038                                                         // acbe: 85 38       .8
    lda (l0004)                                                       // acc0: b2 04       ..
    sec                                                               // acc2: 38          8
    sbc l002d                                                         // acc3: e5 2d       .-
    bcc cace8                                                         // acc5: 90 21       .!
    sbc l0036                                                         // acc7: e5 36       .6
    bcc cace8                                                         // acc9: 90 1d       ..
    adc #0                                                            // accb: 69 00       i.
    sta l002b                                                         // accd: 85 2b       .+
    jsr cbd21                                                         // accf: 20 21 bd     !.
// $acd2 referenced 2 times by $acf7, $acfb
cacd2
    ldy #0                                                            // acd2: a0 00       ..
    ldx l0036                                                         // acd4: a6 36       .6
    beq cace3                                                         // acd6: f0 0b       ..
// $acd8 referenced 1 time by $ace1
loop_cacd8
    lda (l0037),y                                                     // acd8: b1 37       .7
    cmp l0600,y                                                       // acda: d9 00 06    ...
    bne cacef                                                         // acdd: d0 10       ..
    iny                                                               // acdf: c8          .
    dex                                                               // ace0: ca          .
    bne loop_cacd8                                                    // ace1: d0 f5       ..
// $ace3 referenced 1 time by $acd6
cace3
    lda l002a                                                         // ace3: a5 2a       .*
// $ace5 referenced 1 time by $aced
loop_cace5
    jmp cae60                                                         // ace5: 4c 60 ae    L`.

// $ace8 referenced 2 times by $acc5, $acc9
cace8
    jsr cbd21                                                         // ace8: 20 21 bd     !.
// $aceb referenced 1 time by $acf3
loop_caceb
    lda #0                                                            // aceb: a9 00       ..
    bra loop_cace5                                                    // aced: 80 f6       ..
// $acef referenced 1 time by $acdd
cacef
    inc l002a                                                         // acef: e6 2a       .*
    dec l002b                                                         // acf1: c6 2b       .+
    beq loop_caceb                                                    // acf3: f0 f6       ..
    inc l0037                                                         // acf5: e6 37       .7
    bne cacd2                                                         // acf7: d0 d9       ..
    inc l0038                                                         // acf9: e6 38       .8
    bra cacd2                                                         // acfb: 80 d5       ..
// $acfd referenced 2 times by $ad05, $ad1c
cacfd
    jmp c9155                                                         // acfd: 4c 55 91    LU.

sub_cad00
    jsr cad78                                                         // ad00: 20 78 ad     x.
    bmi cad0d                                                         // ad03: 30 08       0.
    beq cacfd                                                         // ad05: f0 f6       ..
// $ad07 referenced 1 time by $81d7
sub_cad07
    bit l002d                                                         // ad07: 24 2d       $-
    bmi cad20                                                         // ad09: 30 15       0.
    bra cad37                                                         // ad0b: 80 2a       .*
// $ad0d referenced 1 time by $ad03
cad0d
    stz l002e                                                         // ad0d: 64 2e       d.
    rts                                                               // ad0f: 60          `

// $ad10 referenced 6 times by $9f61, $a5c1, $a5cc, $a805, $a978, $ad1e
cad10
    lda l0031                                                         // ad10: a5 31       .1
    eor l002e                                                         // ad12: 45 2e       E.
// $ad14 referenced 1 time by $a94c
cad14
    sta l002e                                                         // ad14: 85 2e       ..
    lda #$ff                                                          // ad16: a9 ff       ..
    rts                                                               // ad18: 60          `

// $ad19 referenced 1 time by $ad84
cad19
    jsr sub_cad8e                                                     // ad19: 20 8e ad     ..
// $ad1c referenced 1 time by $abda
sub_cad1c
    beq cacfd                                                         // ad1c: f0 df       ..
    bmi cad10                                                         // ad1e: 30 f0       0.
// $ad20 referenced 5 times by $81c5, $8295, $9fe3, $a058, $ad09
cad20
    sec                                                               // ad20: 38          8
    lda #0                                                            // ad21: a9 00       ..
    tay                                                               // ad23: a8          .
    sbc l002a                                                         // ad24: e5 2a       .*
    sta l002a                                                         // ad26: 85 2a       .*
    tya                                                               // ad28: 98          .
    sbc l002b                                                         // ad29: e5 2b       .+
    sta l002b                                                         // ad2b: 85 2b       .+
    tya                                                               // ad2d: 98          .
    sbc l002c                                                         // ad2e: e5 2c       .,
    sta l002c                                                         // ad30: 85 2c       .,
    tya                                                               // ad32: 98          .
    sbc l002d                                                         // ad33: e5 2d       .-
    sta l002d                                                         // ad35: 85 2d       .-
// $ad37 referenced 1 time by $ad0b
cad37
    lda #$40 // '@'                                                   // ad37: a9 40       .@
    rts                                                               // ad39: 60          `

// $ad3a referenced 2 times by $b957, $b9c5
sub_cad3a
    jsr c8f92                                                         // ad3a: 20 92 8f     ..
    cmp #$22 // '"'                                                   // ad3d: c9 22       ."
    beq cad5b                                                         // ad3f: f0 1a       ..
    ldx #0                                                            // ad41: a2 00       ..
// $ad43 referenced 1 time by $ad50
loop_cad43
    lda (l0019),y                                                     // ad43: b1 19       ..
    sta l0600,x                                                       // ad45: 9d 00 06    ...
    iny                                                               // ad48: c8          .
    inx                                                               // ad49: e8          .
    cmp #$0d                                                          // ad4a: c9 0d       ..
    beq cad52                                                         // ad4c: f0 04       ..
    cmp #$2c // ','                                                   // ad4e: c9 2c       .,
    bne loop_cad43                                                    // ad50: d0 f1       ..
// $ad52 referenced 1 time by $ad4c
cad52
    dey                                                               // ad52: 88          .
// $ad53 referenced 1 time by $ad73
cad53
    dex                                                               // ad53: ca          .
    stx l0036                                                         // ad54: 86 36       .6
    sty l001b                                                         // ad56: 84 1b       ..
    lda #0                                                            // ad58: a9 00       ..
    rts                                                               // ad5a: 60          `

// $ad5b referenced 2 times by $ad3f, $ad88
cad5b
    ldx #0                                                            // ad5b: a2 00       ..
// $ad5d referenced 1 time by $ad71
loop_cad5d
    iny                                                               // ad5d: c8          .
// $ad5e referenced 1 time by $ad6b
loop_cad5e
    lda (l0019),y                                                     // ad5e: b1 19       ..
    cmp #$0d                                                          // ad60: c9 0d       ..
    beq cad75                                                         // ad62: f0 11       ..
    sta l0600,x                                                       // ad64: 9d 00 06    ...
    iny                                                               // ad67: c8          .
    inx                                                               // ad68: e8          .
    cmp #$22 // '"'                                                   // ad69: c9 22       ."
    bne loop_cad5e                                                    // ad6b: d0 f1       ..
    lda (l0019),y                                                     // ad6d: b1 19       ..
    cmp #$22 // '"'                                                   // ad6f: c9 22       ."
    beq loop_cad5d                                                    // ad71: f0 ea       ..
    bne cad53                                                         // ad73: d0 de       ..
// $ad75 referenced 1 time by $ad62
cad75
    jmp c9357                                                         // ad75: 4c 57 93    LW.

// $ad78 referenced 14 times by $9779, $979f, $a06c, $a084, $ab42, $ab5c, $aba0, $abe1, $ac03, $ac46, $ad00, $ad80, $ae59, $af6e
cad78
    ldy l001b                                                         // ad78: a4 1b       ..
    inc l001b                                                         // ad7a: e6 1b       ..
    lda (l0019),y                                                     // ad7c: b1 19       ..
    cmp #$20 // ' '                                                   // ad7e: c9 20       .
    beq cad78                                                         // ad80: f0 f6       ..
    cmp #$2d // '-'                                                   // ad82: c9 2d       .-
    beq cad19                                                         // ad84: f0 93       ..
    cmp #$22 // '"'                                                   // ad86: c9 22       ."
    beq cad5b                                                         // ad88: f0 d1       ..
    cmp #$2b // '+'                                                   // ad8a: c9 2b       .+
    bne cad91                                                         // ad8c: d0 03       ..
// $ad8e referenced 1 time by $ad19
sub_cad8e
    jsr c8f92                                                         // ad8e: 20 92 8f     ..
// $ad91 referenced 1 time by $ad8c
cad91
    cmp #$8e                                                          // ad91: c9 8e       ..
    bcc cad9c                                                         // ad93: 90 07       ..
    cmp #$c6                                                          // ad95: c9 c6       ..
    bcs cadce                                                         // ad97: b0 35       .5
    jmp c90de                                                         // ad99: 4c de 90    L..

// $ad9c referenced 1 time by $ad93
cad9c
    cmp #$3f // '?'                                                   // ad9c: c9 3f       .?
    bcs cadac                                                         // ad9e: b0 0c       ..
    cmp #$2e // '.'                                                   // ada0: c9 2e       ..
    bcs cadb6                                                         // ada2: b0 12       ..
    cmp #$26 // '&'                                                   // ada4: c9 26       .&
    beq cadf9                                                         // ada6: f0 51       .Q
    cmp #$28 // '('                                                   // ada8: c9 28       .(
    beq cadee                                                         // adaa: f0 42       .B
// $adac referenced 1 time by $ad9e
cadac
    dec l001b                                                         // adac: c6 1b       ..
    jsr sub_c99d8                                                     // adae: 20 d8 99     ..
    beq cadbc                                                         // adb1: f0 09       ..
    jmp cb1de                                                         // adb3: 4c de b1    L..

// $adb6 referenced 1 time by $ada2
cadb6
    jsr sub_ca2dd                                                     // adb6: 20 dd a2     ..
    bcc cadce                                                         // adb9: 90 13       ..
    rts                                                               // adbb: 60          `

// $adbc referenced 1 time by $adb1
cadbc
    lda l0028                                                         // adbc: a5 28       .(
    and #2                                                            // adbe: 29 02       ).
    bne cadce                                                         // adc0: d0 0c       ..
    bcs cadce                                                         // adc2: b0 0a       ..
    stx l001b                                                         // adc4: 86 1b       ..
// $adc6 referenced 1 time by $8a9b
sub_cadc6
    lda l0440                                                         // adc6: ad 40 04    .@.
    ldy l0441                                                         // adc9: ac 41 04    .A.
    bra cae3f                                                         // adcc: 80 71       .q
// $adce referenced 6 times by $93c4, $ad97, $adb9, $adc0, $adc2, $ae46
cadce
    brk                                                               // adce: 00          .

    .byt $1a                                                          // adcf: 1a          .
    .asc "No such variable"                                           // add0: 4e 6f 20... No

// $ade0 referenced 1 time by $adf5
loop_cade0
    brk                                                               // ade0: 00          .

    .byt $1b, $8d, $29                                                // ade1: 1b 8d 29    ..)

// $ade4 referenced 1 time by $ae18
cade4
    brk                                                               // ade4: 00          .

    .byt $1c                                                          // ade5: 1c          .
    .asc "Bad Hex"                                                    // ade6: 42 61 64... Bad
    .byt 0                                                            // aded: 00          .

// $adee referenced 3 times by $976c, $adaa, $af8e
cadee
    jsr sub_c9dff                                                     // adee: 20 ff 9d     ..
    inc l001b                                                         // adf1: e6 1b       ..
    cpx #$29 // ')'                                                   // adf3: e0 29       .)
    bne loop_cade0                                                    // adf5: d0 e9       ..
    tay                                                               // adf7: a8          .
    rts                                                               // adf8: 60          `

// $adf9 referenced 1 time by $ada6
cadf9
    jsr cac38                                                         // adf9: 20 38 ac     8.
    bra cae00                                                         // adfc: 80 02       ..
// $adfe referenced 1 time by $ae11
loop_cadfe
    inx                                                               // adfe: e8          .
    pha                                                               // adff: 48          H
// $ae00 referenced 1 time by $adfc
cae00
    iny                                                               // ae00: c8          .
    lda (l0019),y                                                     // ae01: b1 19       ..
    cmp #$41 // 'A'                                                   // ae03: c9 41       .A
    bcc cae0d                                                         // ae05: 90 06       ..
    sbc #$37 // '7'                                                   // ae07: e9 37       .7
    cmp #$10                                                          // ae09: c9 10       ..
    bra cae11                                                         // ae0b: 80 04       ..
// $ae0d referenced 1 time by $ae05
cae0d
    sbc #$2f // '/'                                                   // ae0d: e9 2f       ./
    cmp #$0a                                                          // ae0f: c9 0a       ..
// $ae11 referenced 1 time by $ae0b
cae11
    bcc loop_cadfe                                                    // ae11: 90 eb       ..
    sty l001b                                                         // ae13: 84 1b       ..
    dex                                                               // ae15: ca          .
    cpx #8                                                            // ae16: e0 08       ..
    bcs cade4                                                         // ae18: b0 ca       ..
    txa                                                               // ae1a: 8a          .
    tay                                                               // ae1b: a8          .
    ldx #0                                                            // ae1c: a2 00       ..
// $ae1e referenced 1 time by $ae2f
loop_cae1e
    pla                                                               // ae1e: 68          h
    sta l002a,x                                                       // ae1f: 95 2a       .*
    dey                                                               // ae21: 88          .
    bmi cae31                                                         // ae22: 30 0d       0.
    inx                                                               // ae24: e8          .
    pla                                                               // ae25: 68          h
    asl                                                               // ae26: 0a          .
    asl                                                               // ae27: 0a          .
    asl                                                               // ae28: 0a          .
    asl                                                               // ae29: 0a          .
    ora l0029,x                                                       // ae2a: 15 29       .)
    sta l0029,x                                                       // ae2c: 95 29       .)
    dey                                                               // ae2e: 88          .
    bpl loop_cae1e                                                    // ae2f: 10 ed       ..
// $ae31 referenced 1 time by $ae22
cae31
    lda #$40 // '@'                                                   // ae31: a9 40       .@
    rts                                                               // ae33: 60          `

sub_cae34
    jsr sub_c9779                                                     // ae34: 20 79 97     y.
    ldx l002a                                                         // ae37: a6 2a       .*
    lda #osbyte_read_adc_or_get_buffer_status                         // ae39: a9 80       ..
    jsr osbyte                                                        // ae3b: 20 f4 ff     ..            // Read buffer status or ADC channel
    txa                                                               // ae3e: 8a          .
// $ae3f referenced 1 time by $adcc
cae3f
    bra cae62                                                         // ae3f: 80 21       .!
sub_cae41
    iny                                                               // ae41: c8          .
    lda (l0019),y                                                     // ae42: b1 19       ..
    cmp #$50 // 'P'                                                   // ae44: c9 50       .P
    bne cadce                                                         // ae46: d0 86       ..
    inc l001b                                                         // ae48: e6 1b       ..
    lda l0012                                                         // ae4a: a5 12       ..
    ldy l0013                                                         // ae4c: a4 13       ..
    bra cae62                                                         // ae4e: 80 12       ..
sub_cae50
    ldy l0018                                                         // ae50: a4 18       ..
    lda #0                                                            // ae52: a9 00       ..
    bra cae62                                                         // ae54: 80 0c       ..
// $ae56 referenced 2 times by $ae5c, $aec0
cae56
    jmp c9155                                                         // ae56: 4c 55 91    LU.

sub_cae59
    jsr cad78                                                         // ae59: 20 78 ad     x.
    bne cae56                                                         // ae5c: d0 f8       ..
    lda l0036                                                         // ae5e: a5 36       .6
// $ae60 referenced 11 times by $8ff4, $9412, $941d, $964b, $ab1a, $ac0f, $ace5, $ae6f, $ae85, $ae8a, $b698
cae60
    ldy #0                                                            // ae60: a0 00       ..
// $ae62 referenced 8 times by $ac19, $ae3f, $ae4e, $ae54, $ae75, $ae7b, $ae81, $b202
cae62
    sta l002a                                                         // ae62: 85 2a       .*
    sty l002b                                                         // ae64: 84 2b       .+
    stz l002c                                                         // ae66: 64 2c       d,
    stz l002d                                                         // ae68: 64 2d       d-
    lda #$40 // '@'                                                   // ae6a: a9 40       .@
    rts                                                               // ae6c: 60          `

sub_cae6d
    lda l001e                                                         // ae6d: a5 1e       ..
    bra cae60                                                         // ae6f: 80 ef       ..
sub_cae71
    lda l0000                                                         // ae71: a5 00       ..
    ldy l0001                                                         // ae73: a4 01       ..
    bra cae62                                                         // ae75: 80 eb       ..
sub_cae77
    lda l0006                                                         // ae77: a5 06       ..
    ldy l0007                                                         // ae79: a4 07       ..
    bra cae62                                                         // ae7b: 80 e5       ..
sub_cae7d
    ldy l0009                                                         // ae7d: a4 09       ..
    lda l0008                                                         // ae7f: a5 08       ..
    bra cae62                                                         // ae81: 80 df       ..
sub_cae83
    lda (l00fd)                                                       // ae83: b2 fd       ..
    bra cae60                                                         // ae85: 80 d9       ..
sub_cae87
    jsr osrdch                                                        // ae87: 20 e0 ff     ..            // Read a character from the current input stream
    bra cae60                                                         // ae8a: 80 d4       ..
sub_cae8c
    iny                                                               // ae8c: c8          .
    lda (l0019),y                                                     // ae8d: b1 19       ..
    cmp #$24 // '$'                                                   // ae8f: c9 24       .$
    beq cae9f                                                         // ae91: f0 0c       ..
    ldx #<(l002a)                                                     // ae93: a2 2a       .*
    ldy #>(l002a)                                                     // ae95: a0 00       ..
    lda #osword_read_clock                                            // ae97: a9 01       ..
    jsr osword                                                        // ae99: 20 f1 ff     ..            // Read system clock
    lda #$40 // '@'                                                   // ae9c: a9 40       .@
    rts                                                               // ae9e: 60          `

// $ae9f referenced 1 time by $ae91
cae9f
    inc l001b                                                         // ae9f: e6 1b       ..
    lda #osword_read_cmos_clock                                       // aea1: a9 0e       ..
    ldx #<(l0600)                                                     // aea3: a2 00       ..
    ldy #>(l0600)                                                     // aea5: a0 06       ..
    stz l0600                                                         // aea7: 9c 00 06    ...
    jsr osword                                                        // aeaa: 20 f1 ff     ..            // Read CMOS clock
    lda #$18                                                          // aead: a9 18       ..
    bra caed7                                                         // aeaf: 80 26       .&
sub_caeb1
    jsr osrdch                                                        // aeb1: 20 e0 ff     ..            // Read a character from the current input stream
// $aeb4 referenced 2 times by $af01, $b26e
caeb4
    sta l0600                                                         // aeb4: 8d 00 06    ...            // A=character read
    lda #1                                                            // aeb7: a9 01       ..
    bra caed7                                                         // aeb9: 80 1c       ..
sub_caebb
    clc                                                               // aebb: 18          .
sub_caebc
    php                                                               // aebc: 08          .
    jsr sub_c9dff                                                     // aebd: 20 ff 9d     ..
    bne cae56                                                         // aec0: d0 94       ..
    cpx #$2c // ','                                                   // aec2: e0 2c       .,
    bne caf07                                                         // aec4: d0 41       .A
    inc l001b                                                         // aec6: e6 1b       ..
    jsr sub_c9769                                                     // aec8: 20 69 97     i.
    jsr sub_cbd12                                                     // aecb: 20 12 bd     ..
    plp                                                               // aece: 28          (
    bcs caedc                                                         // aecf: b0 0b       ..
    lda l002a                                                         // aed1: a5 2a       .*
    cmp l0036                                                         // aed3: c5 36       .6
    bcs caed9                                                         // aed5: b0 02       ..
// $aed7 referenced 3 times by $aeaf, $aeb9, $af05
caed7
    sta l0036                                                         // aed7: 85 36       .6
// $aed9 referenced 3 times by $aed5, $aee0, $aef9
caed9
    lda #0                                                            // aed9: a9 00       ..
// $aedb referenced 2 times by $aee2, $aee9
caedb
    rts                                                               // aedb: 60          `

// $aedc referenced 1 time by $aecf
caedc
    lda l0036                                                         // aedc: a5 36       .6
    sbc l002a                                                         // aede: e5 2a       .*
    bcc caed9                                                         // aee0: 90 f7       ..
    beq caedb                                                         // aee2: f0 f7       ..
    tax                                                               // aee4: aa          .
    lda l002a                                                         // aee5: a5 2a       .*
    sta l0036                                                         // aee7: 85 36       .6
    beq caedb                                                         // aee9: f0 f0       ..
    ldy #0                                                            // aeeb: a0 00       ..
// $aeed referenced 1 time by $aef7
loop_caeed
    lda l0600,x                                                       // aeed: bd 00 06    ...
    sta l0600,y                                                       // aef0: 99 00 06    ...
    inx                                                               // aef3: e8          .
    iny                                                               // aef4: c8          .
    dec l002a                                                         // aef5: c6 2a       .*
    bne loop_caeed                                                    // aef7: d0 f4       ..
    bra caed9                                                         // aef9: 80 de       ..
sub_caefb
    jsr sub_caa6e                                                     // aefb: 20 6e aa     n.
    txa                                                               // aefe: 8a          .
    cpy #0                                                            // aeff: c0 00       ..
    beq caeb4                                                         // af01: f0 b1       ..
// $af03 referenced 2 times by $af39, $af4f
caf03
    lda #0                                                            // af03: a9 00       ..
    bra caed7                                                         // af05: 80 d0       ..
// $af07 referenced 3 times by $aec4, $af11, $af2a
caf07
    jmp c8fbb                                                         // af07: 4c bb 8f    L..

sub_caf0a
    jsr sub_c9dff                                                     // af0a: 20 ff 9d     ..
    bne caf88                                                         // af0d: d0 79       .y
    cpx #$2c // ','                                                   // af0f: e0 2c       .,
    bne caf07                                                         // af11: d0 f4       ..
    jsr cbc91                                                         // af13: 20 91 bc     ..
    inc l001b                                                         // af16: e6 1b       ..
    jsr sub_c9774                                                     // af18: 20 74 97     t.
    lda l002a                                                         // af1b: a5 2a       .*
    pha                                                               // af1d: 48          H
    lda #$ff                                                          // af1e: a9 ff       ..
    sta l002a                                                         // af20: 85 2a       .*
    inc l001b                                                         // af22: e6 1b       ..
    cpx #$29 // ')'                                                   // af24: e0 29       .)
    beq caf2f                                                         // af26: f0 07       ..
    cpx #$2c // ','                                                   // af28: e0 2c       .,
    bne caf07                                                         // af2a: d0 db       ..
    jsr sub_c976c                                                     // af2c: 20 6c 97     l.
// $af2f referenced 1 time by $af26
caf2f
    jsr sub_cbd12                                                     // af2f: 20 12 bd     ..
    pla                                                               // af32: 68          h
    tay                                                               // af33: a8          .
    clc                                                               // af34: 18          .
    beq caf3d                                                         // af35: f0 06       ..
    sbc l0036                                                         // af37: e5 36       .6
    bcs caf03                                                         // af39: b0 c8       ..
    dey                                                               // af3b: 88          .
    tya                                                               // af3c: 98          .
// $af3d referenced 1 time by $af35
caf3d
    sta l002c                                                         // af3d: 85 2c       .,
    tax                                                               // af3f: aa          .
    ldy #0                                                            // af40: a0 00       ..
    lda l0036                                                         // af42: a5 36       .6
    sec                                                               // af44: 38          8
    sbc l002c                                                         // af45: e5 2c       .,
    cmp l002a                                                         // af47: c5 2a       .*
    bcs caf4d                                                         // af49: b0 02       ..
    sta l002a                                                         // af4b: 85 2a       .*
// $af4d referenced 1 time by $af49
caf4d
    lda l002a                                                         // af4d: a5 2a       .*
    beq caf03                                                         // af4f: f0 b2       ..
// $af51 referenced 1 time by $af5b
loop_caf51
    lda l0600,x                                                       // af51: bd 00 06    ...
    sta l0600,y                                                       // af54: 99 00 06    ...
    iny                                                               // af57: c8          .
    inx                                                               // af58: e8          .
    cpy l002a                                                         // af59: c4 2a       .*
    bne loop_caf51                                                    // af5b: d0 f4       ..
    sty l0036                                                         // af5d: 84 36       .6
    bra cafb8                                                         // af5f: 80 57       .W
sub_caf61
    jsr c8f92                                                         // af61: 20 92 8f     ..
    ldy #$ff                                                          // af64: a0 ff       ..
    cmp #$7e // '~'                                                   // af66: c9 7e       .~
    beq caf6d                                                         // af68: f0 03       ..
    iny                                                               // af6a: c8          .
    dec l001b                                                         // af6b: c6 1b       ..
// $af6d referenced 1 time by $af68
caf6d
    phy                                                               // af6d: 5a          Z
    jsr cad78                                                         // af6e: 20 78 ad     x.
    beq caf88                                                         // af71: f0 15       ..
    tay                                                               // af73: a8          .
    pla                                                               // af74: 68          h
    sta l0015                                                         // af75: 85 15       ..
    lda l0403                                                         // af77: ad 03 04    ...
    bne caf83                                                         // af7a: d0 07       ..
    sta l0037                                                         // af7c: 85 37       .7
    jsr ca19b                                                         // af7e: 20 9b a1     ..
    bra cafb8                                                         // af81: 80 35       .5
// $af83 referenced 1 time by $af7a
caf83
    jsr sub_ca181                                                     // af83: 20 81 a1     ..
    bra cafb8                                                         // af86: 80 30       .0
// $af88 referenced 3 times by $af0d, $af71, $af91
caf88
    jmp c9155                                                         // af88: 4c 55 91    LU.

sub_caf8b
    jsr sub_c8fae                                                     // af8b: 20 ae 8f     ..
    jsr cadee                                                         // af8e: 20 ee ad     ..
    bne caf88                                                         // af91: d0 f5       ..
    jsr sub_cbd26                                                     // af93: 20 26 bd     &.
    ldy l0036                                                         // af96: a4 36       .6
    beq cafb8                                                         // af98: f0 1e       ..
    lda l002a                                                         // af9a: a5 2a       .*
    beq cafbb                                                         // af9c: f0 1d       ..
    dec l002a                                                         // af9e: c6 2a       .*
    beq cafb8                                                         // afa0: f0 16       ..
// $afa2 referenced 1 time by $afb4
loop_cafa2
    ldx #0                                                            // afa2: a2 00       ..
// $afa4 referenced 1 time by $afb0
loop_cafa4
    lda l0600,x                                                       // afa4: bd 00 06    ...
    sta l0600,y                                                       // afa7: 99 00 06    ...
    inx                                                               // afaa: e8          .
    iny                                                               // afab: c8          .
    beq cafbe                                                         // afac: f0 10       ..
    cpx l0036                                                         // afae: e4 36       .6
    bcc loop_cafa4                                                    // afb0: 90 f2       ..
    dec l002a                                                         // afb2: c6 2a       .*
    bne loop_cafa2                                                    // afb4: d0 ec       ..
    sty l0036                                                         // afb6: 84 36       .6
// $afb8 referenced 5 times by $af5f, $af81, $af86, $af98, $afa0
cafb8
    lda #0                                                            // afb8: a9 00       ..
    rts                                                               // afba: 60          `

// $afbb referenced 1 time by $af9c
cafbb
    sta l0036                                                         // afbb: 85 36       .6
    rts                                                               // afbd: 60          `

// $afbe referenced 1 time by $afac
cafbe
    jmp c9ecb                                                         // afbe: 4c cb 9e    L..

// $afc1 referenced 1 time by $afdf
loop_cafc1
    pla                                                               // afc1: 68          h
    sta l000c                                                         // afc2: 85 0c       ..
    pla                                                               // afc4: 68          h
    sta l000b                                                         // afc5: 85 0b       ..
    brk                                                               // afc7: 00          .

    .byt $1d                                                          // afc8: 1d          .
    .asc "No such "                                                   // afc9: 4e 6f 20... No
    .byt $a4, $2f, $f2,   0                                           // afd1: a4 2f f2... ./.

// $afd5 referenced 1 time by $b0a3
cafd5
    lda l0018                                                         // afd5: a5 18       ..
    sta l000c                                                         // afd7: 85 0c       ..
    stz l000b                                                         // afd9: 64 0b       d.
// $afdb referenced 2 times by $aff7, $affb
cafdb
    ldy #1                                                            // afdb: a0 01       ..
    lda (l000b),y                                                     // afdd: b1 0b       ..
    bmi loop_cafc1                                                    // afdf: 30 e0       0.
    ldy #3                                                            // afe1: a0 03       ..
// $afe3 referenced 1 time by $afe8
loop_cafe3
    iny                                                               // afe3: c8          .
    lda (l000b),y                                                     // afe4: b1 0b       ..
    cmp #$20 // ' '                                                   // afe6: c9 20       .
    beq loop_cafe3                                                    // afe8: f0 f9       ..
    cmp #$dd                                                          // afea: c9 dd       ..
    beq caffd                                                         // afec: f0 0f       ..
// $afee referenced 2 times by $b01e, $b02a
cafee
    ldy #3                                                            // afee: a0 03       ..
    lda (l000b),y                                                     // aff0: b1 0b       ..
    clc                                                               // aff2: 18          .
    adc l000b                                                         // aff3: 65 0b       e.
    sta l000b                                                         // aff5: 85 0b       ..
    bcc cafdb                                                         // aff7: 90 e2       ..
    inc l000c                                                         // aff9: e6 0c       ..
    bra cafdb                                                         // affb: 80 de       ..
// $affd referenced 1 time by $afec
caffd
    iny                                                               // affd: c8          .
    sty l000a                                                         // affe: 84 0a       ..
    jsr c8f9d                                                         // b000: 20 9d 8f     ..
    tya                                                               // b003: 98          .
    tax                                                               // b004: aa          .
    clc                                                               // b005: 18          .
    adc l000b                                                         // b006: 65 0b       e.
    ldy l000c                                                         // b008: a4 0c       ..
    bcc cb00e                                                         // b00a: 90 02       ..
    iny                                                               // b00c: c8          .
    clc                                                               // b00d: 18          .
// $b00e referenced 1 time by $b00a
cb00e
    sbc #0                                                            // b00e: e9 00       ..
    sta l003c                                                         // b010: 85 3c       .<
    tya                                                               // b012: 98          .
    sbc #0                                                            // b013: e9 00       ..
    sta l003d                                                         // b015: 85 3d       .=
    ldy #1                                                            // b017: a0 01       ..
// $b019 referenced 1 time by $b023
loop_cb019
    inx                                                               // b019: e8          .
    lda (l003c),y                                                     // b01a: b1 3c       .<
    cmp (l0037),y                                                     // b01c: d1 37       .7
    bne cafee                                                         // b01e: d0 ce       ..
    iny                                                               // b020: c8          .
    cpy l0039                                                         // b021: c4 39       .9
    bne loop_cb019                                                    // b023: d0 f4       ..
    lda (l003c),y                                                     // b025: b1 3c       .<
    jsr sub_c8e41                                                     // b027: 20 41 8e     A.
    bcs cafee                                                         // b02a: b0 c2       ..
    txa                                                               // b02c: 8a          .
    tay                                                               // b02d: a8          .
    jsr c9c80                                                         // b02e: 20 80 9c     ..
    jsr sub_c9914                                                     // b031: 20 14 99     ..
    ldx #1                                                            // b034: a2 01       ..
    jsr sub_c9952                                                     // b036: 20 52 99     R.
    lda l000b                                                         // b039: a5 0b       ..
    sta (l0002)                                                       // b03b: 92 02       ..
    ldy #1                                                            // b03d: a0 01       ..
    lda l000c                                                         // b03f: a5 0c       ..
    sta (l0002),y                                                     // b041: 91 02       ..
    iny                                                               // b043: c8          .
    jsr sub_c995a                                                     // b044: 20 5a 99     Z.
    jmp cb0b0                                                         // b047: 4c b0 b0    L..

// $b04a referenced 1 time by $b09a
cb04a
    brk                                                               // b04a: 00          .

    .byt $1e                                                          // b04b: 1e          .
    .asc "Bad call"                                                   // b04c: 42 61 64... Bad
    .byt 0                                                            // b054: 00          .

sub_cb055
    lda #$a4                                                          // b055: a9 a4       ..
// $b057 referenced 2 times by $97b7, $b83c
sub_cb057
    sta l0027                                                         // b057: 85 27       .'
    tsx                                                               // b059: ba          .
    txa                                                               // b05a: 8a          .
    clc                                                               // b05b: 18          .
    adc l0004                                                         // b05c: 65 04       e.
    jsr sub_cbd5e                                                     // b05e: 20 5e bd     ^.
    txa                                                               // b061: 8a          .
    sta (l0004)                                                       // b062: 92 04       ..
    ldy #0                                                            // b064: a0 00       ..
// $b066 referenced 1 time by $b06f
loop_cb066
    inx                                                               // b066: e8          .
    iny                                                               // b067: c8          .
    lda l0100,x                                                       // b068: bd 00 01    ...
    sta (l0004),y                                                     // b06b: 91 04       ..
    cpx #$ff                                                          // b06d: e0 ff       ..
    bne loop_cb066                                                    // b06f: d0 f5       ..
    txs                                                               // b071: 9a          .
    lda l0027                                                         // b072: a5 27       .'
    pha                                                               // b074: 48          H
    lda l000a                                                         // b075: a5 0a       ..
    pha                                                               // b077: 48          H
    lda l000b                                                         // b078: a5 0b       ..
    pha                                                               // b07a: 48          H
    lda l000c                                                         // b07b: a5 0c       ..
    pha                                                               // b07d: 48          H
    lda l001b                                                         // b07e: a5 1b       ..
    tax                                                               // b080: aa          .
    clc                                                               // b081: 18          .
    adc l0019                                                         // b082: 65 19       e.
    ldy l001a                                                         // b084: a4 1a       ..
    bcc cb08a                                                         // b086: 90 02       ..
    iny                                                               // b088: c8          .
    clc                                                               // b089: 18          .
// $b08a referenced 1 time by $b086
cb08a
    sbc #1                                                            // b08a: e9 01       ..
    sta l0037                                                         // b08c: 85 37       .7
    tya                                                               // b08e: 98          .
    sbc #0                                                            // b08f: e9 00       ..
    sta l0038                                                         // b091: 85 38       .8
    ldy #2                                                            // b093: a0 02       ..
    jsr c9bbc                                                         // b095: 20 bc 9b     ..
    cpy #2                                                            // b098: c0 02       ..
    beq cb04a                                                         // b09a: f0 ae       ..
    stx l001b                                                         // b09c: 86 1b       ..
    jsr sub_c8139                                                     // b09e: 20 39 81     9.
    bne cb0a6                                                         // b0a1: d0 03       ..
    jmp cafd5                                                         // b0a3: 4c d5 af    L..

// $b0a6 referenced 1 time by $b0a1
cb0a6
    lda (l002a)                                                       // b0a6: b2 2a       .*
    sta l000b                                                         // b0a8: 85 0b       ..
    ldy #1                                                            // b0aa: a0 01       ..
    lda (l002a),y                                                     // b0ac: b1 2a       .*
    sta l000c                                                         // b0ae: 85 0c       ..
// $b0b0 referenced 1 time by $b047
cb0b0
    lda #0                                                            // b0b0: a9 00       ..
    pha                                                               // b0b2: 48          H
    stz l000a                                                         // b0b3: 64 0a       d.
    jsr c8f9d                                                         // b0b5: 20 9d 8f     ..
    cmp #$28 // '('                                                   // b0b8: c9 28       .(
    beq cb109                                                         // b0ba: f0 4d       .M
    dec l000a                                                         // b0bc: c6 0a       ..
// $b0be referenced 1 time by $b1bc
cb0be
    lda l001b                                                         // b0be: a5 1b       ..
    pha                                                               // b0c0: 48          H
    lda l0019                                                         // b0c1: a5 19       ..
    pha                                                               // b0c3: 48          H
    lda l001a                                                         // b0c4: a5 1a       ..
    pha                                                               // b0c6: 48          H
    jsr c90d0                                                         // b0c7: 20 d0 90     ..
    pla                                                               // b0ca: 68          h
    sta l001a                                                         // b0cb: 85 1a       ..
    pla                                                               // b0cd: 68          h
    sta l0019                                                         // b0ce: 85 19       ..
    pla                                                               // b0d0: 68          h
    sta l001b                                                         // b0d1: 85 1b       ..
    pla                                                               // b0d3: 68          h
    beq cb0e2                                                         // b0d4: f0 0c       ..
    sta l003f                                                         // b0d6: 85 3f       .?
// $b0d8 referenced 1 time by $b0e0
loop_cb0d8
    jsr sub_cbd46                                                     // b0d8: 20 46 bd     F.
    jsr sub_cbcaa                                                     // b0db: 20 aa bc     ..
    dec l003f                                                         // b0de: c6 3f       .?
    bne loop_cb0d8                                                    // b0e0: d0 f6       ..
// $b0e2 referenced 1 time by $b0d4
cb0e2
    pla                                                               // b0e2: 68          h
    sta l000c                                                         // b0e3: 85 0c       ..
    pla                                                               // b0e5: 68          h
    sta l000b                                                         // b0e6: 85 0b       ..
    pla                                                               // b0e8: 68          h
    sta l000a                                                         // b0e9: 85 0a       ..
    pla                                                               // b0eb: 68          h
    lda (l0004)                                                       // b0ec: b2 04       ..
    tax                                                               // b0ee: aa          .
    txs                                                               // b0ef: 9a          .
    ldy #0                                                            // b0f0: a0 00       ..
// $b0f2 referenced 1 time by $b0fb
loop_cb0f2
    iny                                                               // b0f2: c8          .
    inx                                                               // b0f3: e8          .
    lda (l0004),y                                                     // b0f4: b1 04       ..
    sta l0100,x                                                       // b0f6: 9d 00 01    ...
    cpx #$ff                                                          // b0f9: e0 ff       ..
    bne loop_cb0f2                                                    // b0fb: d0 f5       ..
    tya                                                               // b0fd: 98          .
    adc l0004                                                         // b0fe: 65 04       e.
    sta l0004                                                         // b100: 85 04       ..
    bcc cb106                                                         // b102: 90 02       ..
    inc l0005                                                         // b104: e6 05       ..
// $b106 referenced 1 time by $b102
cb106
    lda l0027                                                         // b106: a5 27       .'
    rts                                                               // b108: 60          `

// $b109 referenced 2 times by $b0ba, $b136
cb109
    lda l001b                                                         // b109: a5 1b       ..
    pha                                                               // b10b: 48          H
    lda l0019                                                         // b10c: a5 19       ..
    pha                                                               // b10e: 48          H
    lda l001a                                                         // b10f: a5 1a       ..
    pha                                                               // b111: 48          H
    jsr sub_c997d                                                     // b112: 20 7d 99     }.
    beq cb169                                                         // b115: f0 52       .R
    lda l001b                                                         // b117: a5 1b       ..
    sta l000a                                                         // b119: 85 0a       ..
    pla                                                               // b11b: 68          h
    sta l001a                                                         // b11c: 85 1a       ..
    pla                                                               // b11e: 68          h
    sta l0019                                                         // b11f: 85 19       ..
    pla                                                               // b121: 68          h
    sta l001b                                                         // b122: 85 1b       ..
    plx                                                               // b124: fa          .
    lda l002c                                                         // b125: a5 2c       .,
    pha                                                               // b127: 48          H
    lda l002b                                                         // b128: a5 2b       .+
    pha                                                               // b12a: 48          H
    lda l002a                                                         // b12b: a5 2a       .*
    pha                                                               // b12d: 48          H
    inx                                                               // b12e: e8          .
    phx                                                               // b12f: da          .
    jsr sub_cb1bf                                                     // b130: 20 bf b1     ..
    jsr sub_c8da2                                                     // b133: 20 a2 8d     ..
    beq cb109                                                         // b136: f0 d1       ..
    cmp #$29 // ')'                                                   // b138: c9 29       .)
    bne cb169                                                         // b13a: d0 2d       .-
    lda #0                                                            // b13c: a9 00       ..
    pha                                                               // b13e: 48          H
    jsr c8f92                                                         // b13f: 20 92 8f     ..
    cmp #$28 // '('                                                   // b142: c9 28       .(
    bne cb169                                                         // b144: d0 23       .#
// $b146 referenced 1 time by $b159
loop_cb146
    jsr sub_c9dff                                                     // b146: 20 ff 9d     ..
    jsr sub_cbc62                                                     // b149: 20 62 bc     b.
    lda l0027                                                         // b14c: a5 27       .'
    sta l002d                                                         // b14e: 85 2d       .-
    jsr cbc66                                                         // b150: 20 66 bc     f.
    plx                                                               // b153: fa          .
    inx                                                               // b154: e8          .
    phx                                                               // b155: da          .
    jsr sub_c8fa8                                                     // b156: 20 a8 8f     ..
    beq loop_cb146                                                    // b159: f0 eb       ..
    cmp #$29 // ')'                                                   // b15b: c9 29       .)
    bne cb169                                                         // b15d: d0 0a       ..
    pla                                                               // b15f: 68          h
    pla                                                               // b160: 68          h
    sta l004c                                                         // b161: 85 4c       .L
    sta l004d                                                         // b163: 85 4d       .M
    cpx l004c                                                         // b165: e4 4c       .L
    beq cb17e                                                         // b167: f0 15       ..
// $b169 referenced 6 times by $b115, $b13a, $b144, $b15d, $b18e, $b1ad
cb169
    ldx #$fb                                                          // b169: a2 fb       ..
    txs                                                               // b16b: 9a          .
    pla                                                               // b16c: 68          h
    sta l000c                                                         // b16d: 85 0c       ..
    pla                                                               // b16f: 68          h
    sta l000b                                                         // b170: 85 0b       ..
    brk                                                               // b172: 00          .

    .byt $1f                                                          // b173: 1f          .
    .asc "Arguments"                                                  // b174: 41 72 67... Arg
    .byt 0                                                            // b17d: 00          .

// $b17e referenced 2 times by $b167, $b1b7
cb17e
    jsr sub_cbd26                                                     // b17e: 20 26 bd     &.
    pla                                                               // b181: 68          h
    sta l002a                                                         // b182: 85 2a       .*
    pla                                                               // b184: 68          h
    sta l002b                                                         // b185: 85 2b       .+
    pla                                                               // b187: 68          h
    sta l002c                                                         // b188: 85 2c       .,
    bmi cb1ab                                                         // b18a: 30 1f       0.
    lda l002d                                                         // b18c: a5 2d       .-
    beq cb169                                                         // b18e: f0 d9       ..
    sta l0027                                                         // b190: 85 27       .'
    ldx #$37 // '7'                                                   // b192: a2 37       .7
    jsr sub_cbe06                                                     // b194: 20 06 be     ..
    lda l0027                                                         // b197: a5 27       .'
    bpl cb1a3                                                         // b199: 10 08       ..
    jsr sub_cbc24                                                     // b19b: 20 24 bc     $.
    jsr ca57e                                                         // b19e: 20 7e a5     ~.
    bra cb1a6                                                         // b1a1: 80 03       ..
// $b1a3 referenced 1 time by $b199
cb1a3
    jsr sub_cbd26                                                     // b1a3: 20 26 bd     &.
// $b1a6 referenced 1 time by $b1a1
cb1a6
    jsr sub_cb372                                                     // b1a6: 20 72 b3     r.
    bra cb1b5                                                         // b1a9: 80 0a       ..
// $b1ab referenced 1 time by $b18a
cb1ab
    lda l002d                                                         // b1ab: a5 2d       .-
    bne cb169                                                         // b1ad: d0 ba       ..
    jsr sub_cbd12                                                     // b1af: 20 12 bd     ..
    jsr sub_c9171                                                     // b1b2: 20 71 91     q.
// $b1b5 referenced 1 time by $b1a9
cb1b5
    dec l004c                                                         // b1b5: c6 4c       .L
    bne cb17e                                                         // b1b7: d0 c5       ..
    lda l004d                                                         // b1b9: a5 4d       .M
    pha                                                               // b1bb: 48          H
    jmp cb0be                                                         // b1bc: 4c be b0    L..

// $b1bf referenced 2 times by $97dc, $b130
sub_cb1bf
    ldy l002c                                                         // b1bf: a4 2c       .,
    cpy #5                                                            // b1c1: c0 05       ..
    bcs cb1ca                                                         // b1c3: b0 05       ..
    ldx #$37 // '7'                                                   // b1c5: a2 37       .7
    jsr sub_cbe06                                                     // b1c7: 20 06 be     ..
// $b1ca referenced 1 time by $b1c3
cb1ca
    jsr cb1de                                                         // b1ca: 20 de b1     ..
    php                                                               // b1cd: 08          .
    jsr sub_cbc62                                                     // b1ce: 20 62 bc     b.
    plp                                                               // b1d1: 28          (
    beq cb1db                                                         // b1d2: f0 07       ..
    bmi cb1db                                                         // b1d4: 30 05       0.
    ldx #$37 // '7'                                                   // b1d6: a2 37       .7
    jsr sub_caad8                                                     // b1d8: 20 d8 aa     ..
// $b1db referenced 2 times by $b1d2, $b1d4
cb1db
    jmp cbc66                                                         // b1db: 4c 66 bc    Lf.

// $b1de referenced 3 times by $9a7f, $adb3, $b1ca
cb1de
    ldy l002c                                                         // b1de: a4 2c       .,
    bmi cb235                                                         // b1e0: 30 53       0S
    beq cb200                                                         // b1e2: f0 1c       ..
    cpy #5                                                            // b1e4: c0 05       ..
    beq cb205                                                         // b1e6: f0 1d       ..
    ldy #3                                                            // b1e8: a0 03       ..
    lda (l002a),y                                                     // b1ea: b1 2a       .*
    sta l002d                                                         // b1ec: 85 2d       .-
    dey                                                               // b1ee: 88          .
    lda (l002a),y                                                     // b1ef: b1 2a       .*
    sta l002c                                                         // b1f1: 85 2c       .,
    dey                                                               // b1f3: 88          .
    lda (l002a),y                                                     // b1f4: b1 2a       .*
    tax                                                               // b1f6: aa          .
    lda (l002a)                                                       // b1f7: b2 2a       .*
    sta l002a                                                         // b1f9: 85 2a       .*
    stx l002b                                                         // b1fb: 86 2b       .+
    lda #$40 // '@'                                                   // b1fd: a9 40       .@
    rts                                                               // b1ff: 60          `

// $b200 referenced 1 time by $b1e2
cb200
    lda (l002a),y                                                     // b200: b1 2a       .*
    jmp cae62                                                         // b202: 4c 62 ae    Lb.

// $b205 referenced 2 times by $b1e6, $b5f1
cb205
    stz l0035                                                         // b205: 64 35       d5
    stz l002f                                                         // b207: 64 2f       d/
    dey                                                               // b209: 88          .
    lda (l002a),y                                                     // b20a: b1 2a       .*
    sta l0034                                                         // b20c: 85 34       .4
    dey                                                               // b20e: 88          .
    lda (l002a),y                                                     // b20f: b1 2a       .*
    sta l0033                                                         // b211: 85 33       .3
    dey                                                               // b213: 88          .
    lda (l002a),y                                                     // b214: b1 2a       .*
    sta l0032                                                         // b216: 85 32       .2
    dey                                                               // b218: 88          .
    lda (l002a),y                                                     // b219: b1 2a       .*
    sta l002e                                                         // b21b: 85 2e       ..
    tay                                                               // b21d: a8          .
    lda (l002a)                                                       // b21e: b2 2a       .*
    sta l0030                                                         // b220: 85 30       .0
    bne cb22d                                                         // b222: d0 09       ..
    tya                                                               // b224: 98          .
    ora l0032                                                         // b225: 05 32       .2
    ora l0033                                                         // b227: 05 33       .3
    ora l0034                                                         // b229: 05 34       .4
    beq cb230                                                         // b22b: f0 03       ..
// $b22d referenced 1 time by $b222
cb22d
    tya                                                               // b22d: 98          .
    ora #$80                                                          // b22e: 09 80       ..
// $b230 referenced 1 time by $b22b
cb230
    sta l0031                                                         // b230: 85 31       .1
    lda #$ff                                                          // b232: a9 ff       ..
    rts                                                               // b234: 60          `

// $b235 referenced 1 time by $b1e0
cb235
    cpy #$80                                                          // b235: c0 80       ..
    beq cb257                                                         // b237: f0 1e       ..
    ldy #3                                                            // b239: a0 03       ..
    lda (l002a),y                                                     // b23b: b1 2a       .*
    sta l0036                                                         // b23d: 85 36       .6
    beq cb256                                                         // b23f: f0 15       ..
    ldy #1                                                            // b241: a0 01       ..
    lda (l002a),y                                                     // b243: b1 2a       .*
    sta l0038                                                         // b245: 85 38       .8
    lda (l002a)                                                       // b247: b2 2a       .*
    sta l0037                                                         // b249: 85 37       .7
    ldy l0036                                                         // b24b: a4 36       .6
// $b24d referenced 1 time by $b254
loop_cb24d
    dey                                                               // b24d: 88          .
    lda (l0037),y                                                     // b24e: b1 37       .7
    sta l0600,y                                                       // b250: 99 00 06    ...
    tya                                                               // b253: 98          .
    bne loop_cb24d                                                    // b254: d0 f7       ..
// $b256 referenced 1 time by $b23f
cb256
    rts                                                               // b256: 60          `

// $b257 referenced 1 time by $b237
cb257
    ldy #0                                                            // b257: a0 00       ..
// $b259 referenced 1 time by $b263
loop_cb259
    lda (l002a),y                                                     // b259: b1 2a       .*
    sta l0600,y                                                       // b25b: 99 00 06    ...
    eor #$0d                                                          // b25e: 49 0d       I.
    beq cb266                                                         // b260: f0 04       ..
    iny                                                               // b262: c8          .
    bne loop_cb259                                                    // b263: d0 f4       ..
    tya                                                               // b265: 98          .
// $b266 referenced 1 time by $b260
cb266
    sty l0036                                                         // b266: 84 36       .6
    rts                                                               // b268: 60          `

sub_cb269
    jsr sub_c9779                                                     // b269: 20 79 97     y.
    lda l002a                                                         // b26c: a5 2a       .*
    jmp caeb4                                                         // b26e: 4c b4 ae    L..

    .byt $a4, $0a, $f0,   1, $88, $20, $80, $9c, $64,   8, $64,   9   // b271: a4 0a f0... ...
    .byt $a6, $18, $86                                                // b27d: a6 18 86    ...
    .asc "8d7"                                                        // b280: 38 64 37    8d7
    .byt $a4, $0c, $c0,   7, $f0, $28, $a6, $0b, $20, $5d, $8e, $c9   // b283: a4 0c c0... ...
    .byt $0d, $d0, $18, $e4, $37, $98, $e5, $38, $90, $18, $20, $5d   // b28f: 0d d0 18... ...
    .byt $8e,   9,   0, $30, $11, $85,   9, $20, $5d, $8e, $85,   8   // b29b: 8e 09 00... ...
    .byt $20, $5d, $8e, $e4, $37, $98, $e5, $38, $b0, $da, $60, $a2   // b2a7: 20 5d 8e...  ].
    .byt $ff, $86, $28, $9a, $e8, $a0,   0, $a9, $da, $20, $f4, $ff   // b2b3: ff 86 28... ..(
    .byt $a9, $7e, $20, $f4, $ff, $20, $71, $b2, $64, $20, $b2, $fd   // b2bf: a9 7e 20... .~
    .byt $d0,   3, $20, $e0, $b2, $a5, $16, $85, $0b, $a5, $17, $85   // b2cb: d0 03 20... ..
    .byt $0c, $64, $0a, $20, $ff, $bb, $4c, $d0, $90                  // b2d7: 0c 64 0a... .d.

// $b2e0 referenced 3 times by $9051, $905f, $b76c
sub_cb2e0
    lda #$e9                                                          // b2e0: a9 e9       ..
    sta l0016                                                         // b2e2: 85 16       ..
    lda #$b2                                                          // b2e4: a9 b2       ..
    sta l0017                                                         // b2e6: 85 17       ..
    rts                                                               // b2e8: 60          `

    .byt $f6, $3a, $e7, $9e, $f1                                      // b2e9: f6 3a e7... .:.
    .asc "", 34, " at line ", 34, ";"                                 // b2ee: 22 20 61... " a
    .byt $9e, $3a, $e0, $8b, $f1, $3a, $e0, $0d                       // b2fa: 9e 3a e0... .:.

sub_cb302
    jsr sub_c9332                                                     // b302: 20 32 93     2.
    ldx #3                                                            // b305: a2 03       ..
// $b307 referenced 1 time by $b313
loop_cb307
    lda l002a                                                         // b307: a5 2a       .*
    pha                                                               // b309: 48          H
    lda l002b                                                         // b30a: a5 2b       .+
    pha                                                               // b30c: 48          H
    phx                                                               // b30d: da          .
    jsr sub_c9771                                                     // b30e: 20 71 97     q.
    plx                                                               // b311: fa          .
    dex                                                               // b312: ca          .
    bne loop_cb307                                                    // b313: d0 f2       ..
    jsr sub_c9c5a                                                     // b315: 20 5a 9c     Z.
    lda l002a                                                         // b318: a5 2a       .*
    sta l003d                                                         // b31a: 85 3d       .=
    lda l002b                                                         // b31c: a5 2b       .+
    sta l003e                                                         // b31e: 85 3e       .>
    ldy #7                                                            // b320: a0 07       ..
    ldx #5                                                            // b322: a2 05       ..
    bra cb341                                                         // b324: 80 1b       ..
sub_cb326
    jsr sub_c9332                                                     // b326: 20 32 93     2.
    ldx #$0d                                                          // b329: a2 0d       ..
// $b32b referenced 1 time by $b334
loop_cb32b
    lda l002a                                                         // b32b: a5 2a       .*
    pha                                                               // b32d: 48          H
    phx                                                               // b32e: da          .
    jsr sub_c9771                                                     // b32f: 20 71 97     q.
    plx                                                               // b332: fa          .
    dex                                                               // b333: ca          .
    bne loop_cb32b                                                    // b334: d0 f5       ..
    jsr sub_c9c5a                                                     // b336: 20 5a 9c     Z.
    lda l002a                                                         // b339: a5 2a       .*
    sta l0044                                                         // b33b: 85 44       .D
    ldx #$0c                                                          // b33d: a2 0c       ..
    ldy #8                                                            // b33f: a0 08       ..
// $b341 referenced 2 times by $b324, $b345
cb341
    pla                                                               // b341: 68          h
    sta l0037,x                                                       // b342: 95 37       .7
    dex                                                               // b344: ca          .
    bpl cb341                                                         // b345: 10 fa       ..
    tya                                                               // b347: 98          .
    ldx #<(l0037)                                                     // b348: a2 37       .7
    ldy #>(l0037)                                                     // b34a: a0 00       ..
// $b34c referenced 1 time by $9750
cb34c
    jsr osword                                                        // b34c: 20 f1 ff     ..
    bra cb35c                                                         // b34f: 80 0b       ..
sub_cb351
    jsr sub_c9332                                                     // b351: 20 32 93     2.
    jsr sub_c9c5a                                                     // b354: 20 5a 9c     Z.
    ldy l002a                                                         // b357: a4 2a       .*
    dey                                                               // b359: 88          .
    sty l0023                                                         // b35a: 84 23       .#
// $b35c referenced 1 time by $b34f
cb35c
    jmp c90ca                                                         // b35c: 4c ca 90    L..

// $b35f referenced 1 time by $b377
loop_cb35f
    jmp c9155                                                         // b35f: 4c 55 91    LU.

// $b362 referenced 2 times by $b656, $b9ba
sub_cb362
    jsr sub_c9dff                                                     // b362: 20 ff 9d     ..
// $b365 referenced 5 times by $8aa0, $9141, $95b8, $97eb, $b971
sub_cb365
    ply                                                               // b365: 7a          z
    plx                                                               // b366: fa          .
    pla                                                               // b367: 68          h
    sta l0039                                                         // b368: 85 39       .9
    pla                                                               // b36a: 68          h
    sta l0038                                                         // b36b: 85 38       .8
    pla                                                               // b36d: 68          h
    sta l0037                                                         // b36e: 85 37       .7
    phx                                                               // b370: da          .
    phy                                                               // b371: 5a          Z
// $b372 referenced 2 times by $b1a6, $b8dd
sub_cb372
    lda l0039                                                         // b372: a5 39       .9
    lsr                                                               // b374: 4a          J
    lda l0027                                                         // b375: a5 27       .'
    beq loop_cb35f                                                    // b377: f0 e6       ..
    bcs cb399                                                         // b379: b0 1e       ..
    bpl cb380                                                         // b37b: 10 03       ..
    jsr sub_c9788                                                     // b37d: 20 88 97     ..
// $b380 referenced 1 time by $b37b
cb380
    lda l002a                                                         // b380: a5 2a       .*
    sta (l0037)                                                       // b382: 92 37       .7
    lda l0039                                                         // b384: a5 39       .9
    beq cb398                                                         // b386: f0 10       ..
    lda l002b                                                         // b388: a5 2b       .+
    ldy #1                                                            // b38a: a0 01       ..
    sta (l0037),y                                                     // b38c: 91 37       .7
    lda l002c                                                         // b38e: a5 2c       .,
    iny                                                               // b390: c8          .
    sta (l0037),y                                                     // b391: 91 37       .7
    lda l002d                                                         // b393: a5 2d       .-
    iny                                                               // b395: c8          .
    sta (l0037),y                                                     // b396: 91 37       .7
// $b398 referenced 1 time by $b386
cb398
    rts                                                               // b398: 60          `

// $b399 referenced 1 time by $b379
cb399
    bmi cb39e                                                         // b399: 30 03       0.
    jsr c828d                                                         // b39b: 20 8d 82     ..
// $b39e referenced 2 times by $b399, $b609
cb39e
    lda l0030                                                         // b39e: a5 30       .0
    sta (l0037)                                                       // b3a0: 92 37       .7
    ldy #1                                                            // b3a2: a0 01       ..
    lda l002e                                                         // b3a4: a5 2e       ..
    eor l0031                                                         // b3a6: 45 31       E1
    and #$80                                                          // b3a8: 29 80       ).
    eor l0031                                                         // b3aa: 45 31       E1
    sta (l0037),y                                                     // b3ac: 91 37       .7
    iny                                                               // b3ae: c8          .
    lda l0032                                                         // b3af: a5 32       .2
    sta (l0037),y                                                     // b3b1: 91 37       .7
    iny                                                               // b3b3: c8          .
    lda l0033                                                         // b3b4: a5 33       .3
    sta (l0037),y                                                     // b3b6: 91 37       .7
    iny                                                               // b3b8: c8          .
    lda l0034                                                         // b3b9: a5 34       .4
    sta (l0037),y                                                     // b3bb: 91 37       .7
    rts                                                               // b3bd: 60          `

// $b3be referenced 1 time by $bf56
lb3be
    .asc "EDIT 12,2"                                                  // b3be: 45 44 49... EDI
    .byt $0d                                                          // b3c7: 0d          .

sub_cb3c8
    jsr sub_cbbdc                                                     // b3c8: 20 dc bb     ..
    lda #$80                                                          // b3cb: a9 80       ..
    sta l001f                                                         // b3cd: 85 1f       ..
// $b3cf referenced 1 time by $b417
cb3cf
    stz l003b                                                         // b3cf: 64 3b       d;
    stz l003c                                                         // b3d1: 64 3c       d<
    jsr cac38                                                         // b3d3: 20 38 ac     8.
    jsr sub_c9be2                                                     // b3d6: 20 e2 9b     ..
    php                                                               // b3d9: 08          .
    jsr cbc66                                                         // b3da: 20 66 bc     f.
    jsr cac2b                                                         // b3dd: 20 2b ac     +.
    lsr l002b                                                         // b3e0: 46 2b       F+
    plp                                                               // b3e2: 28          (
    bcc cb3f4                                                         // b3e3: 90 0f       ..
    jsr sub_c8da2                                                     // b3e5: 20 a2 8d     ..
    beq cb3fb                                                         // b3e8: f0 11       ..
    jsr sub_cbd26                                                     // b3ea: 20 26 bd     &.
    jsr cbc66                                                         // b3ed: 20 66 bc     f.
    dec l000a                                                         // b3f0: c6 0a       ..
    bra cb3fe                                                         // b3f2: 80 0a       ..
// $b3f4 referenced 1 time by $b3e3
cb3f4
    jsr sub_c8da2                                                     // b3f4: 20 a2 8d     ..
    beq cb3fb                                                         // b3f7: f0 02       ..
    dec l000a                                                         // b3f9: c6 0a       ..
// $b3fb referenced 2 times by $b3e8, $b3f7
cb3fb
    jsr sub_c9be2                                                     // b3fb: 20 e2 9b     ..
// $b3fe referenced 1 time by $b3f2
cb3fe
    ldx #$31 // '1'                                                   // b3fe: a2 31       .1
    jsr sub_cbe06                                                     // b400: 20 06 be     ..
    jsr c8f9d                                                         // b403: 20 9d 8f     ..
    cmp #$e7                                                          // b406: c9 e7       ..
    bne cb428                                                         // b408: d0 1e       ..
    jsr c8f9d                                                         // b40a: 20 9d 8f     ..
    jsr c9c80                                                         // b40d: 20 80 9c     ..
    bra cb42b                                                         // b410: 80 19       ..
sub_cb412
    iny                                                               // b412: c8          .
    lda (l000b),y                                                     // b413: b1 0b       ..
    cmp #$4f // 'O'                                                   // b415: c9 4f       .O
    bne cb3cf                                                         // b417: d0 b6       ..
    inc l000a                                                         // b419: e6 0a       ..
    jsr sub_c9332                                                     // b41b: 20 32 93     2.
    jsr c9c6a                                                         // b41e: 20 6a 9c     j.
    lda l002a                                                         // b421: a5 2a       .*
    sta l001f                                                         // b423: 85 1f       ..
// $b425 referenced 1 time by $b46a
cb425
    jmp c904b                                                         // b425: 4c 4b 90    LK.

// $b428 referenced 1 time by $b408
cb428
    jsr c9c74                                                         // b428: 20 74 9c     t.
// $b42b referenced 1 time by $b410
cb42b
    lda l000b                                                         // b42b: a5 0b       ..
    sta l0019                                                         // b42d: 85 19       ..
    jsr sub_cbe25                                                     // b42f: 20 25 be     %.
    jsr sub_cbd26                                                     // b432: 20 26 bd     &.
    jsr sub_c8191                                                     // b435: 20 91 81     ..
    lda l003d                                                         // b438: a5 3d       .=
    sta l000b                                                         // b43a: 85 0b       ..
    lda l003e                                                         // b43c: a5 3e       .>
    sta l000c                                                         // b43e: 85 0c       ..
    bcs cb45d                                                         // b440: b0 1b       ..
    dey                                                               // b442: 88          .
    bra cb454                                                         // b443: 80 0f       ..
// $b445 referenced 1 time by $b4b8
cb445
    jsr cbdd4                                                         // b445: 20 d4 bd     ..
    bit l001f                                                         // b448: 24 1f       $.
    bmi cb451                                                         // b44a: 30 05       0.
    lda #$0a                                                          // b44c: a9 0a       ..
    jsr oswrch                                                        // b44e: 20 ee ff     ..            // Write character 10
// $b451 referenced 2 times by $b44a, $b4c4
cb451
    jsr c9c80                                                         // b451: 20 80 9c     ..
// $b454 referenced 1 time by $b443
cb454
    lda (l000b),y                                                     // b454: b1 0b       ..
    sta l002b                                                         // b456: 85 2b       .+
    iny                                                               // b458: c8          .
    lda (l000b),y                                                     // b459: b1 0b       ..
    sta l002a                                                         // b45b: 85 2a       .*
// $b45d referenced 1 time by $b440
cb45d
    lda l002a                                                         // b45d: a5 2a       .*
    clc                                                               // b45f: 18          .
    sbc l0031                                                         // b460: e5 31       .1
    lda l002b                                                         // b462: a5 2b       .+
    sbc l0032                                                         // b464: e5 32       .2
    bcc cb46f                                                         // b466: 90 07       ..
    bit l001f                                                         // b468: 24 1f       $.
    bpl cb425                                                         // b46a: 10 b9       ..
    jmp cbf54                                                         // b46c: 4c 54 bf    LT.

// $b46f referenced 1 time by $b466
cb46f
    stz l004c                                                         // b46f: 64 4c       dL
    stz l004d                                                         // b471: 64 4d       dM
    ldy #4                                                            // b473: a0 04       ..
    sty l000a                                                         // b475: 84 0a       ..
    sty l001b                                                         // b477: 84 1b       ..
    bit l003b                                                         // b479: 24 3b       $;
    bpl cb47f                                                         // b47b: 10 02       ..
    stz l003b                                                         // b47d: 64 3b       d;
// $b47f referenced 1 time by $b47b
cb47f
    bit l003c                                                         // b47f: 24 3c       $<
    bpl cb485                                                         // b481: 10 02       ..
    stz l003c                                                         // b483: 64 3c       d<
// $b485 referenced 2 times by $b481, $b4c0
cb485
    lda (l000b),y                                                     // b485: b1 0b       ..
    cmp #$0d                                                          // b487: c9 0d       ..
    beq cb4c2                                                         // b489: f0 37       .7
    cmp #$f4                                                          // b48b: c9 f4       ..
    beq cb495                                                         // b48d: f0 06       ..
    cmp #$22 // '"'                                                   // b48f: c9 22       ."
    bne cb497                                                         // b491: d0 04       ..
    eor l004c                                                         // b493: 45 4c       EL
// $b495 referenced 1 time by $b48d
cb495
    sta l004c                                                         // b495: 85 4c       .L
// $b497 referenced 1 time by $b491
cb497
    ldx l004c                                                         // b497: a6 4c       .L
    bne cb4a7                                                         // b499: d0 0c       ..
    cmp #$ed                                                          // b49b: c9 ed       ..
    bne cb4a1                                                         // b49d: d0 02       ..
    dec l003b                                                         // b49f: c6 3b       .;
// $b4a1 referenced 1 time by $b49d
cb4a1
    cmp #$fd                                                          // b4a1: c9 fd       ..
    bne cb4a7                                                         // b4a3: d0 02       ..
    dec l003c                                                         // b4a5: c6 3c       .<
// $b4a7 referenced 2 times by $b499, $b4a3
cb4a7
    ldx l0019                                                         // b4a7: a6 19       ..
// $b4a9 referenced 1 time by $b4b6
loop_cb4a9
    lda l0700,x                                                       // b4a9: bd 00 07    ...
    cmp #$0d                                                          // b4ac: c9 0d       ..
    beq cb4ba                                                         // b4ae: f0 0a       ..
    cmp (l000b),y                                                     // b4b0: d1 0b       ..
    bne cb4bc                                                         // b4b2: d0 08       ..
    iny                                                               // b4b4: c8          .
    inx                                                               // b4b5: e8          .
    bra loop_cb4a9                                                    // b4b6: 80 f1       ..
// $b4b8 referenced 1 time by $b4e6
cb4b8
    bra cb445                                                         // b4b8: 80 8b       ..
// $b4ba referenced 1 time by $b4ae
cb4ba
    sta l004d                                                         // b4ba: 85 4d       .M
// $b4bc referenced 1 time by $b4b2
cb4bc
    inc l001b                                                         // b4bc: e6 1b       ..
    ldy l001b                                                         // b4be: a4 1b       ..
    bra cb485                                                         // b4c0: 80 c3       ..
// $b4c2 referenced 1 time by $b489
cb4c2
    lda l004d                                                         // b4c2: a5 4d       .M
    beq cb451                                                         // b4c4: f0 8b       ..
    jsr sub_ca0ec                                                     // b4c6: 20 ec a0     ..
    lda #1                                                            // b4c9: a9 01       ..
    inx                                                               // b4cb: e8          .
    sec                                                               // b4cc: 38          8
    jsr sub_cbdf4                                                     // b4cd: 20 f4 bd     ..
    ldx l003b                                                         // b4d0: a6 3b       .;
    lda #2                                                            // b4d2: a9 02       ..
    jsr sub_cbdf3                                                     // b4d4: 20 f3 bd     ..
    ldx l003c                                                         // b4d7: a6 3c       .<
    lda #4                                                            // b4d9: a9 04       ..
    jsr sub_cbdf3                                                     // b4db: 20 f3 bd     ..
    stz l004c                                                         // b4de: 64 4c       dL
// $b4e0 referenced 1 time by $b508
cb4e0
    ldy l000a                                                         // b4e0: a4 0a       ..
// $b4e2 referenced 2 times by $b4f6, $b520
cb4e2
    lda (l000b),y                                                     // b4e2: b1 0b       ..
    cmp #$0d                                                          // b4e4: c9 0d       ..
    beq cb4b8                                                         // b4e6: f0 d0       ..
    cmp #$22 // '"'                                                   // b4e8: c9 22       ."
    bne cb4f8                                                         // b4ea: d0 0c       ..
    eor l004c                                                         // b4ec: 45 4c       EL
    sta l004c                                                         // b4ee: 85 4c       .L
    lda #$22 // '"'                                                   // b4f0: a9 22       ."
// $b4f2 referenced 1 time by $b4fa
loop_cb4f2
    jsr cbdd4                                                         // b4f2: 20 d4 bd     ..
    iny                                                               // b4f5: c8          .
    bra cb4e2                                                         // b4f6: 80 ea       ..
// $b4f8 referenced 1 time by $b4ea
cb4f8
    ldx l004c                                                         // b4f8: a6 4c       .L
    bne loop_cb4f2                                                    // b4fa: d0 f6       ..
    cmp #$8d                                                          // b4fc: c9 8d       ..
    bne cb50a                                                         // b4fe: d0 0a       ..
    jsr sub_c9bee                                                     // b500: 20 ee 9b     ..
    sty l000a                                                         // b503: 84 0a       ..
    jsr sub_ca0e8                                                     // b505: 20 e8 a0     ..
    bra cb4e0                                                         // b508: 80 d6       ..
// $b50a referenced 1 time by $b4fe
cb50a
    cmp #$e3                                                          // b50a: c9 e3       ..
    bne cb510                                                         // b50c: d0 02       ..
    inc l003b                                                         // b50e: e6 3b       .;
// $b510 referenced 1 time by $b50c
cb510
    cmp #$f5                                                          // b510: c9 f5       ..
    bne cb516                                                         // b512: d0 02       ..
    inc l003c                                                         // b514: e6 3c       .<
// $b516 referenced 1 time by $b512
cb516
    cmp #$f4                                                          // b516: c9 f4       ..
    bne cb51c                                                         // b518: d0 02       ..
    sta l004c                                                         // b51a: 85 4c       .L
// $b51c referenced 1 time by $b518
cb51c
    jsr sub_cbd77                                                     // b51c: 20 77 bd     w.
    iny                                                               // b51f: c8          .
    bra cb4e2                                                         // b520: 80 c0       ..
// $b522 referenced 1 time by $b5ee
cb522
    jsr sub_c99c4                                                     // b522: 20 c4 99     ..
    bne cb530                                                         // b525: d0 09       ..
    ldx l0026                                                         // b527: a6 26       .&
    beq cb563                                                         // b529: f0 38       .8
    bcs cb56a                                                         // b52b: b0 3d       .=
// $b52d referenced 1 time by $b530
loop_cb52d
    jmp c9c2d                                                         // b52d: 4c 2d 9c    L-.

// $b530 referenced 1 time by $b525
cb530
    bcs loop_cb52d                                                    // b530: b0 fb       ..
    ldx l0026                                                         // b532: a6 26       .&
    beq cb563                                                         // b534: f0 2d       .-
// $b536 referenced 1 time by $b552
loop_cb536
    lda l002a                                                         // b536: a5 2a       .*
    cmp l0519,x                                                       // b538: dd 19 05    ...
    bne cb54b                                                         // b53b: d0 0e       ..
    lda l002b                                                         // b53d: a5 2b       .+
    cmp l051a,x                                                       // b53f: dd 1a 05    ...
    bne cb54b                                                         // b542: d0 07       ..
    lda l002c                                                         // b544: a5 2c       .,
    cmp l051b,x                                                       // b546: dd 1b 05    ...
    beq cb56a                                                         // b549: f0 1f       ..
// $b54b referenced 2 times by $b53b, $b542
cb54b
    txa                                                               // b54b: 8a          .
    sec                                                               // b54c: 38          8
    sbc #$0f                                                          // b54d: e9 0f       ..
    tax                                                               // b54f: aa          .
    stx l0026                                                         // b550: 86 26       .&
    bne loop_cb536                                                    // b552: d0 e2       ..
    brk                                                               // b554: 00          .

    .asc "!Can't match "                                              // b555: 21 43 61... !Ca
    .byt $e3                                                          // b562: e3          .

// $b563 referenced 2 times by $b529, $b534
cb563
    brk                                                               // b563: 00          .

    .asc " No "                                                       // b564: 20 4e 6f...  No
    .byt $e3,   0                                                     // b568: e3 00       ..

// $b56a referenced 2 times by $b52b, $b549
cb56a
    lda l0519,x                                                       // b56a: bd 19 05    ...
    sta l002a                                                         // b56d: 85 2a       .*
    lda l051a,x                                                       // b56f: bd 1a 05    ...
    sta l002b                                                         // b572: 85 2b       .+
    ldy l051b,x                                                       // b574: bc 1b 05    ...
    cpy #5                                                            // b577: c0 05       ..
    beq cb5f1                                                         // b579: f0 76       .v
    lda (l002a)                                                       // b57b: b2 2a       .*
    adc l051c,x                                                       // b57d: 7d 1c 05    }..
    sta (l002a)                                                       // b580: 92 2a       .*
    sta l0037                                                         // b582: 85 37       .7
    ldy #1                                                            // b584: a0 01       ..
    lda (l002a),y                                                     // b586: b1 2a       .*
    adc l051d,x                                                       // b588: 7d 1d 05    }..
    sta (l002a),y                                                     // b58b: 91 2a       .*
    sta l0038                                                         // b58d: 85 38       .8
    iny                                                               // b58f: c8          .
    lda (l002a),y                                                     // b590: b1 2a       .*
    adc l051e,x                                                       // b592: 7d 1e 05    }..
    sta (l002a),y                                                     // b595: 91 2a       .*
    sta l0039                                                         // b597: 85 39       .9
    iny                                                               // b599: c8          .
    lda (l002a),y                                                     // b59a: b1 2a       .*
    adc l051f,x                                                       // b59c: 7d 1f 05    }..
    sta (l002a),y                                                     // b59f: 91 2a       .*
    tay                                                               // b5a1: a8          .
    lda l0037                                                         // b5a2: a5 37       .7
    sec                                                               // b5a4: 38          8
    sbc l0521,x                                                       // b5a5: fd 21 05    .!.
    sta l0037                                                         // b5a8: 85 37       .7
    lda l0038                                                         // b5aa: a5 38       .8
    sbc l0522,x                                                       // b5ac: fd 22 05    .".
    tsb l0037                                                         // b5af: 04 37       .7
    lda l0039                                                         // b5b1: a5 39       .9
    sbc l0523,x                                                       // b5b3: fd 23 05    .#.
    tsb l0037                                                         // b5b6: 04 37       .7
    tya                                                               // b5b8: 98          .
    sbc l0524,x                                                       // b5b9: fd 24 05    .$.
    ora l0037                                                         // b5bc: 05 37       .7
    beq cb5cf                                                         // b5be: f0 0f       ..
    tya                                                               // b5c0: 98          .
    eor l051f,x                                                       // b5c1: 5d 1f 05    ]..
    eor l0524,x                                                       // b5c4: 5d 24 05    ]$.
    bpl cb5cd                                                         // b5c7: 10 04       ..
    bcs cb5cf                                                         // b5c9: b0 04       ..
    bra cb5df                                                         // b5cb: 80 12       ..
// $b5cd referenced 1 time by $b5c7
cb5cd
    bcs cb5df                                                         // b5cd: b0 10       ..
// $b5cf referenced 5 times by $b5be, $b5c9, $b617, $b61e, $b622
cb5cf
    ldy l0526,x                                                       // b5cf: bc 26 05    .&.
    lda l0527,x                                                       // b5d2: bd 27 05    .'.
    sty l000b                                                         // b5d5: 84 0b       ..
    sta l000c                                                         // b5d7: 85 0c       ..
    jsr c9c8a                                                         // b5d9: 20 8a 9c     ..
    jmp c90d0                                                         // b5dc: 4c d0 90    L..

// $b5df referenced 4 times by $b5cb, $b5cd, $b620, $b624
cb5df
    txa                                                               // b5df: 8a          .
    sec                                                               // b5e0: 38          8
    sbc #$0f                                                          // b5e1: e9 0f       ..
    sta l0026                                                         // b5e3: 85 26       .&
    ldy l001b                                                         // b5e5: a4 1b       ..
    sty l000a                                                         // b5e7: 84 0a       ..
    jsr sub_c8da2                                                     // b5e9: 20 a2 8d     ..
    bne cb626                                                         // b5ec: d0 38       .8
    jmp cb522                                                         // b5ee: 4c 22 b5    L".

// $b5f1 referenced 1 time by $b579
cb5f1
    jsr cb205                                                         // b5f1: 20 05 b2     ..
    txa                                                               // b5f4: 8a          .
    clc                                                               // b5f5: 18          .
    adc #$1c                                                          // b5f6: 69 1c       i.
    sta l004a                                                         // b5f8: 85 4a       .J
    lda #5                                                            // b5fa: a9 05       ..
    sta l004b                                                         // b5fc: 85 4b       .K
    jsr ca70a                                                         // b5fe: 20 0a a7     ..
    lda l002a                                                         // b601: a5 2a       .*
    sta l0037                                                         // b603: 85 37       .7
    lda l002b                                                         // b605: a5 2b       .+
    sta l0038                                                         // b607: 85 38       .8
    jsr cb39e                                                         // b609: 20 9e b3     ..
    ldx l0026                                                         // b60c: a6 26       .&
    txa                                                               // b60e: 8a          .
    clc                                                               // b60f: 18          .
    adc #$21 // '!'                                                   // b610: 69 21       i!
    sta l004a                                                         // b612: 85 4a       .J
    jsr sub_c9d36                                                     // b614: 20 36 9d     6.
    beq cb5cf                                                         // b617: f0 b6       ..
    lda l051d,x                                                       // b619: bd 1d 05    ...
    bmi cb622                                                         // b61c: 30 04       0.
    bcs cb5cf                                                         // b61e: b0 af       ..
    bra cb5df                                                         // b620: 80 bd       ..
// $b622 referenced 1 time by $b61c
cb622
    bcc cb5cf                                                         // b622: 90 ab       ..
    bra cb5df                                                         // b624: 80 b9       ..
// $b626 referenced 1 time by $b5ec
cb626
    jmp c90c5                                                         // b626: 4c c5 90    L..

// $b629 referenced 2 times by $b64c, $b64e
cb629
    brk                                                               // b629: 00          .

    .byt $22, $e3                                                     // b62a: 22 e3       ".
    .asc " variable"                                                  // b62c: 20 76 61...  va

// $b635 referenced 1 time by $b664
cb635
    brk                                                               // b635: 00          .

    .asc "#Too many "                                                 // b636: 23 54 6f... #To
    .byt $e3, $73                                                     // b640: e3 73       .s

// $b642 referenced 1 time by $b65e
loop_cb642
    brk                                                               // b642: 00          .

    .asc "$No "                                                       // b643: 24 4e 6f... $No
    .byt $b8,   0                                                     // b647: b8 00       ..

sub_cb649
    jsr sub_c997d                                                     // b649: 20 7d 99     }.
    beq cb629                                                         // b64c: f0 db       ..
    bcs cb629                                                         // b64e: b0 d9       ..
    jsr sub_cbc83                                                     // b650: 20 83 bc     ..
    jsr sub_c9c4a                                                     // b653: 20 4a 9c     J.
    jsr sub_cb362                                                     // b656: 20 62 b3     b.
    jsr c8f92                                                         // b659: 20 92 8f     ..
    cmp #$b8                                                          // b65c: c9 b8       ..
    bne loop_cb642                                                    // b65e: d0 e2       ..
    ldy l0026                                                         // b660: a4 26       .&
    cpy #$96                                                          // b662: c0 96       ..
    bcs cb635                                                         // b664: b0 cf       ..
    tya                                                               // b666: 98          .
    adc #$0f                                                          // b667: 69 0f       i.
    sta l0026                                                         // b669: 85 26       .&
    lda l0037                                                         // b66b: a5 37       .7
    sta l0528,y                                                       // b66d: 99 28 05    .(.
    lda l0038                                                         // b670: a5 38       .8
    sta l0529,y                                                       // b672: 99 29 05    .).
    lda l0039                                                         // b675: a5 39       .9
    sta l052a,y                                                       // b677: 99 2a 05    .*.
    lsr                                                               // b67a: 4a          J
    bcs cb6d1                                                         // b67b: b0 54       .T
    jsr sub_c9774                                                     // b67d: 20 74 97     t.
    ldy l0026                                                         // b680: a4 26       .&
    lda l002a                                                         // b682: a5 2a       .*
    sta l0521,y                                                       // b684: 99 21 05    .!.
    lda l002b                                                         // b687: a5 2b       .+
    sta l0522,y                                                       // b689: 99 22 05    .".
    lda l002c                                                         // b68c: a5 2c       .,
    sta l0523,y                                                       // b68e: 99 23 05    .#.
    lda l002d                                                         // b691: a5 2d       .-
    sta l0524,y                                                       // b693: 99 24 05    .$.
    lda #1                                                            // b696: a9 01       ..
    jsr cae60                                                         // b698: 20 60 ae     `.
    jsr c8f92                                                         // b69b: 20 92 8f     ..
    cmp #$88                                                          // b69e: c9 88       ..
    bne cb6a7                                                         // b6a0: d0 05       ..
    jsr sub_c9774                                                     // b6a2: 20 74 97     t.
    ldy l001b                                                         // b6a5: a4 1b       ..
// $b6a7 referenced 1 time by $b6a0
cb6a7
    sty l000a                                                         // b6a7: 84 0a       ..
    ldy l0026                                                         // b6a9: a4 26       .&
    lda l002a                                                         // b6ab: a5 2a       .*
    sta l051c,y                                                       // b6ad: 99 1c 05    ...
    lda l002b                                                         // b6b0: a5 2b       .+
    sta l051d,y                                                       // b6b2: 99 1d 05    ...
    lda l002c                                                         // b6b5: a5 2c       .,
    sta l051e,y                                                       // b6b7: 99 1e 05    ...
    lda l002d                                                         // b6ba: a5 2d       .-
    sta l051f,y                                                       // b6bc: 99 1f 05    ...
// $b6bf referenced 1 time by $b707
cb6bf
    jsr sub_c9c93                                                     // b6bf: 20 93 9c     ..
    ldy l0026                                                         // b6c2: a4 26       .&
    lda l000b                                                         // b6c4: a5 0b       ..
    sta l0526,y                                                       // b6c6: 99 26 05    .&.
    lda l000c                                                         // b6c9: a5 0c       ..
    sta l0527,y                                                       // b6cb: 99 27 05    .'.
    jmp c90d0                                                         // b6ce: 4c d0 90    L..

// $b6d1 referenced 1 time by $b67b
cb6d1
    jsr sub_c9dff                                                     // b6d1: 20 ff 9d     ..
    jsr sub_c97a2                                                     // b6d4: 20 a2 97     ..
    lda l0026                                                         // b6d7: a5 26       .&
    clc                                                               // b6d9: 18          .
    adc #$21 // '!'                                                   // b6da: 69 21       i!
    sta l004a                                                         // b6dc: 85 4a       .J
    lda #5                                                            // b6de: a9 05       ..
    sta l004b                                                         // b6e0: 85 4b       .K
    jsr sub_ca54d                                                     // b6e2: 20 4d a5     M.
    jsr ca622                                                         // b6e5: 20 22 a6     ".
    jsr c8f92                                                         // b6e8: 20 92 8f     ..
    cmp #$88                                                          // b6eb: c9 88       ..
    bne cb6f7                                                         // b6ed: d0 08       ..
    jsr sub_c9dff                                                     // b6ef: 20 ff 9d     ..
    jsr sub_c97a2                                                     // b6f2: 20 a2 97     ..
    ldy l001b                                                         // b6f5: a4 1b       ..
// $b6f7 referenced 1 time by $b6ed
cb6f7
    sty l000a                                                         // b6f7: 84 0a       ..
    lda l0026                                                         // b6f9: a5 26       .&
    clc                                                               // b6fb: 18          .
    adc #$1c                                                          // b6fc: 69 1c       i.
    sta l004a                                                         // b6fe: 85 4a       .J
    lda #5                                                            // b700: a9 05       ..
    sta l004b                                                         // b702: 85 4b       .K
    jsr sub_ca54d                                                     // b704: 20 4d a5     M.
    bra cb6bf                                                         // b707: 80 b6       ..
sub_cb709
    jsr sub_cb85a                                                     // b709: 20 5a b8     Z.
// $b70c referenced 1 time by $b802
cb70c
    jsr c9c6a                                                         // b70c: 20 6a 9c     j.
    ldy l0025                                                         // b70f: a4 25       .%
    cpy #$1a                                                          // b711: c0 1a       ..
    bcs cb723                                                         // b713: b0 0e       ..
    lda l000b                                                         // b715: a5 0b       ..
    sta l05cc,y                                                       // b717: 99 cc 05    ...
    lda l000c                                                         // b71a: a5 0c       ..
    sta l05e6,y                                                       // b71c: 99 e6 05    ...
    inc l0025                                                         // b71f: e6 25       .%
    bra cb753                                                         // b721: 80 30       .0
// $b723 referenced 1 time by $b713
cb723
    brk                                                               // b723: 00          .

    .asc "%Too many "                                                 // b724: 25 54 6f... %To
    .byt $e4, $73                                                     // b72e: e4 73       .s

// $b730 referenced 1 time by $b73c
loop_cb730
    brk                                                               // b730: 00          .

    .asc "&No "                                                       // b731: 26 4e 6f... &No
    .byt $e4,   0                                                     // b735: e4 00       ..

sub_cb737
    jsr c9c6a                                                         // b737: 20 6a 9c     j.
    ldx l0025                                                         // b73a: a6 25       .%
    beq loop_cb730                                                    // b73c: f0 f2       ..
    dec l0025                                                         // b73e: c6 25       .%
    ldy l05cb,x                                                       // b740: bc cb 05    ...
    lda l05e5,x                                                       // b743: bd e5 05    ...
    sty l000b                                                         // b746: 84 0b       ..
    sta l000c                                                         // b748: 85 0c       ..
// $b74a referenced 1 time by $b76f
cb74a
    jmp c90ca                                                         // b74a: 4c ca 90    L..

sub_cb74d
    jsr sub_cb85a                                                     // b74d: 20 5a b8     Z.
    jsr c9c6a                                                         // b750: 20 6a 9c     j.
// $b753 referenced 3 times by $9cf8, $b721, $b7f7
cb753
    lda l0020                                                         // b753: a5 20       .
    beq cb75a                                                         // b755: f0 03       ..
    jsr sub_c9d0f                                                     // b757: 20 0f 9d     ..
// $b75a referenced 1 time by $b755
cb75a
    ldy #4                                                            // b75a: a0 04       ..
    sty l000a                                                         // b75c: 84 0a       ..
    ldy l003d                                                         // b75e: a4 3d       .=
    lda l003e                                                         // b760: a5 3e       .>
// $b762 referenced 1 time by $ba69
cb762
    sty l000b                                                         // b762: 84 0b       ..
    sta l000c                                                         // b764: 85 0c       ..
    jmp c90d0                                                         // b766: 4c d0 90    L..

// $b769 referenced 1 time by $b776
loop_cb769
    jsr c9c6a                                                         // b769: 20 6a 9c     j.
    jsr sub_cb2e0                                                     // b76c: 20 e0 b2     ..
    bra cb74a                                                         // b76f: 80 d9       ..
// $b771 referenced 1 time by $b790
loop_cb771
    jsr c8f9d                                                         // b771: 20 9d 8f     ..
    cmp #$87                                                          // b774: c9 87       ..
    beq loop_cb769                                                    // b776: f0 f1       ..
    ldy l000a                                                         // b778: a4 0a       ..
    dey                                                               // b77a: 88          .
    jsr c9c80                                                         // b77b: 20 80 9c     ..
    stz l000a                                                         // b77e: 64 0a       d.
    lda l000b                                                         // b780: a5 0b       ..
    sta l0016                                                         // b782: 85 16       ..
    lda l000c                                                         // b784: a5 0c       ..
    sta l0017                                                         // b786: 85 17       ..
    jmp c9073                                                         // b788: 4c 73 90    Ls.

sub_cb78b
    jsr c8f9d                                                         // b78b: 20 9d 8f     ..
    cmp #$85                                                          // b78e: c9 85       ..
    beq loop_cb771                                                    // b790: f0 df       ..
    dec l000a                                                         // b792: c6 0a       ..
    jsr sub_c9332                                                     // b794: 20 32 93     2.
    cpx #$f2                                                          // b797: e0 f2       ..
    beq cb7a4                                                         // b799: f0 09       ..
    iny                                                               // b79b: c8          .
    cpx #$e5                                                          // b79c: e0 e5       ..
    beq cb7a4                                                         // b79e: f0 04       ..
    cpx #$e4                                                          // b7a0: e0 e4       ..
    bne cb81a                                                         // b7a2: d0 76       .v
// $b7a4 referenced 2 times by $b799, $b79e
cb7a4
    phx                                                               // b7a4: da          .
    lda l002b                                                         // b7a5: a5 2b       .+
    ora l002c                                                         // b7a7: 05 2c       .,
    ora l002d                                                         // b7a9: 05 2d       .-
    bne cb805                                                         // b7ab: d0 58       .X
    dec l002a                                                         // b7ad: c6 2a       .*
    beq cb7e6                                                         // b7af: f0 35       .5
    bmi cb805                                                         // b7b1: 30 52       0R
// $b7b3 referenced 4 times by $b7cc, $b7dc, $b7e0, $b7e4
cb7b3
    lda (l000b),y                                                     // b7b3: b1 0b       ..
    cmp #$0d                                                          // b7b5: c9 0d       ..
    beq cb805                                                         // b7b7: f0 4c       .L
    cmp #$3a // ':'                                                   // b7b9: c9 3a       .:
    beq cb805                                                         // b7bb: f0 48       .H
    cmp #$8b                                                          // b7bd: c9 8b       ..
    beq cb805                                                         // b7bf: f0 44       .D
    iny                                                               // b7c1: c8          .
    cmp #$22 // '"'                                                   // b7c2: c9 22       ."
    bne cb7ca                                                         // b7c4: d0 04       ..
    eor l002b                                                         // b7c6: 45 2b       E+
    sta l002b                                                         // b7c8: 85 2b       .+
// $b7ca referenced 1 time by $b7c4
cb7ca
    ldx l002b                                                         // b7ca: a6 2b       .+
    bne cb7b3                                                         // b7cc: d0 e5       ..
    cmp #$29 // ')'                                                   // b7ce: c9 29       .)
    bne cb7d4                                                         // b7d0: d0 02       ..
    dec l002c                                                         // b7d2: c6 2c       .,
// $b7d4 referenced 1 time by $b7d0
cb7d4
    cmp #$28 // '('                                                   // b7d4: c9 28       .(
    bne cb7da                                                         // b7d6: d0 02       ..
    inc l002c                                                         // b7d8: e6 2c       .,
// $b7da referenced 1 time by $b7d6
cb7da
    cmp #$2c // ','                                                   // b7da: c9 2c       .,
    bne cb7b3                                                         // b7dc: d0 d5       ..
    ldx l002c                                                         // b7de: a6 2c       .,
    bne cb7b3                                                         // b7e0: d0 d1       ..
    dec l002a                                                         // b7e2: c6 2a       .*
    bne cb7b3                                                         // b7e4: d0 cd       ..
// $b7e6 referenced 1 time by $b7af
cb7e6
    pla                                                               // b7e6: 68          h
    cmp #$f2                                                          // b7e7: c9 f2       ..
    beq cb833                                                         // b7e9: f0 48       .H
    sty l000a                                                         // b7eb: 84 0a       ..
    cmp #$e4                                                          // b7ed: c9 e4       ..
    beq cb7fa                                                         // b7ef: f0 09       ..
    jsr sub_cb85a                                                     // b7f1: 20 5a b8     Z.
    jsr c9c8a                                                         // b7f4: 20 8a 9c     ..
    jmp cb753                                                         // b7f7: 4c 53 b7    LS.

// $b7fa referenced 1 time by $b7ef
cb7fa
    jsr sub_cb85a                                                     // b7fa: 20 5a b8     Z.
    ldy l000a                                                         // b7fd: a4 0a       ..
    jsr sub_cb84d                                                     // b7ff: 20 4d b8     M.
    jmp cb70c                                                         // b802: 4c 0c b7    L..

// $b805 referenced 5 times by $b7ab, $b7b1, $b7b7, $b7bb, $b7bf
cb805
    pla                                                               // b805: 68          h
// $b806 referenced 1 time by $b80f
loop_cb806
    lda (l000b),y                                                     // b806: b1 0b       ..
    iny                                                               // b808: c8          .
    cmp #$8b                                                          // b809: c9 8b       ..
    beq cb847                                                         // b80b: f0 3a       .:
    cmp #$0d                                                          // b80d: c9 0d       ..
    bne loop_cb806                                                    // b80f: d0 f5       ..
    brk                                                               // b811: 00          .

    .byt $28, $ee                                                     // b812: 28 ee       (.
    .asc " range"                                                     // b814: 20 72 61...  ra

// $b81a referenced 2 times by $b7a2, $b83a
cb81a
    brk                                                               // b81a: 00          .

    .byt $27, $ee                                                     // b81b: 27 ee       '.
    .asc " syntax"                                                    // b81d: 20 73 79...  sy

// $b824 referenced 1 time by $b869
cb824
    brk                                                               // b824: 00          .

    .asc ")No such line"                                              // b825: 29 4e 6f... )No
    .byt 0                                                            // b832: 00          .

// $b833 referenced 1 time by $b7e9
cb833
    sty l001b                                                         // b833: 84 1b       ..
    jsr c8f92                                                         // b835: 20 92 8f     ..
    cmp #$f2                                                          // b838: c9 f2       ..
    bne cb81a                                                         // b83a: d0 de       ..
    jsr sub_cb057                                                     // b83c: 20 57 b0     W.
    ldy l001b                                                         // b83f: a4 1b       ..
    jsr sub_cb84d                                                     // b841: 20 4d b8     M.
    jmp c90c7                                                         // b844: 4c c7 90    L..

// $b847 referenced 1 time by $b80b
cb847
    sty l000a                                                         // b847: 84 0a       ..
    jmp c9ced                                                         // b849: 4c ed 9c    L..

// $b84c referenced 1 time by $b855
loop_cb84c
    iny                                                               // b84c: c8          .
// $b84d referenced 2 times by $b7ff, $b841
sub_cb84d
    lda (l000b),y                                                     // b84d: b1 0b       ..
    cmp #$0d                                                          // b84f: c9 0d       ..
    beq cb857                                                         // b851: f0 04       ..
    cmp #$3a // ':'                                                   // b853: c9 3a       .:
    bne loop_cb84c                                                    // b855: d0 f5       ..
// $b857 referenced 1 time by $b851
cb857
    sty l000a                                                         // b857: 84 0a       ..
    rts                                                               // b859: 60          `

// $b85a referenced 5 times by $b709, $b74d, $b7f1, $b7fa, $b994
sub_cb85a
    jsr sub_c9be2                                                     // b85a: 20 e2 9b     ..
    bcs cb866                                                         // b85d: b0 07       ..
    jsr sub_c9332                                                     // b85f: 20 32 93     2.
    lda #$80                                                          // b862: a9 80       ..
    trb l002b                                                         // b864: 14 2b       .+
// $b866 referenced 2 times by $9cf2, $b85d
cb866
    jsr sub_c8191                                                     // b866: 20 91 81     ..
    bcc cb824                                                         // b869: 90 b9       ..
    rts                                                               // b86b: 60          `

// $b86c referenced 2 times by $b8a2, $b8bc
cb86c
    jmp c9155                                                         // b86c: 4c 55 91    LU.

// $b86f referenced 1 time by $b88a
loop_cb86f
    jmp c9c2d                                                         // b86f: 4c 2d 9c    L-.

// $b872 referenced 1 time by $b882
loop_cb872
    sty l000a                                                         // b872: 84 0a       ..
// $b874 referenced 1 time by $b8e4
cb874
    jmp c90c7                                                         // b874: 4c c7 90    L..

// $b877 referenced 1 time by $b8e9
cb877
    jsr sub_cba6c                                                     // b877: 20 6c ba     l.
    sty l004c                                                         // b87a: 84 4c       .L
    jsr c9338                                                         // b87c: 20 38 93     8.
// $b87f referenced 2 times by $b8b8, $b8e0
cb87f
    jsr sub_c8da2                                                     // b87f: 20 a2 8d     ..
    bne loop_cb872                                                    // b882: d0 ee       ..
    lda l004c                                                         // b884: a5 4c       .L
    pha                                                               // b886: 48          H
    jsr sub_c997d                                                     // b887: 20 7d 99     }.
    beq loop_cb86f                                                    // b88a: f0 e3       ..
    jsr c9338                                                         // b88c: 20 38 93     8.
    pla                                                               // b88f: 68          h
    sta l004c                                                         // b890: 85 4c       .L
    php                                                               // b892: 08          .
    jsr cbc66                                                         // b893: 20 66 bc     f.
sub_cb896
    ldy l004c                                                         // b896: a4 4c       .L             // Y=file handle
    jsr osbget                                                        // b898: 20 d7 ff     ..            // Read a single byte from an open file Y
    sta l0027                                                         // b89b: 85 27       .'
    plp                                                               // b89d: 28          (
    bcc cb8ba                                                         // b89e: 90 1a       ..
    lda l0027                                                         // b8a0: a5 27       .'
    bne cb86c                                                         // b8a2: d0 c8       ..
    jsr osbget                                                        // b8a4: 20 d7 ff     ..            // Read a single byte from an open file Y
    sta l0036                                                         // b8a7: 85 36       .6
    tax                                                               // b8a9: aa          .
    beq cb8b5                                                         // b8aa: f0 09       ..
// $b8ac referenced 1 time by $b8b3
loop_cb8ac
    jsr osbget                                                        // b8ac: 20 d7 ff     ..            // Read a single byte from an open file Y
    sta l05ff,x                                                       // b8af: 9d ff 05    ...
    dex                                                               // b8b2: ca          .
    bne loop_cb8ac                                                    // b8b3: d0 f7       ..
// $b8b5 referenced 1 time by $b8aa
cb8b5
    jsr sub_c916e                                                     // b8b5: 20 6e 91     n.
    bra cb87f                                                         // b8b8: 80 c5       ..
// $b8ba referenced 1 time by $b89e
cb8ba
    lda l0027                                                         // b8ba: a5 27       .'
    beq cb86c                                                         // b8bc: f0 ae       ..
    bmi cb8cc                                                         // b8be: 30 0c       0.
    ldx #3                                                            // b8c0: a2 03       ..
// $b8c2 referenced 1 time by $b8c8
loop_cb8c2
    jsr osbget                                                        // b8c2: 20 d7 ff     ..            // Read a single byte from an open file Y
    sta l002a,x                                                       // b8c5: 95 2a       .*
    dex                                                               // b8c7: ca          .
    bpl loop_cb8c2                                                    // b8c8: 10 f8       ..
    bra cb8da                                                         // b8ca: 80 0e       ..
// $b8cc referenced 1 time by $b8be
cb8cc
    ldx #4                                                            // b8cc: a2 04       ..
// $b8ce referenced 1 time by $b8d5
loop_cb8ce
    jsr osbget                                                        // b8ce: 20 d7 ff     ..            // Read a single byte from an open file Y
    sta l046c,x                                                       // b8d1: 9d 6c 04    .l.
    dex                                                               // b8d4: ca          .
    bpl loop_cb8ce                                                    // b8d5: 10 f7       ..
    jsr sub_ca576                                                     // b8d7: 20 76 a5     v.
// $b8da referenced 1 time by $b8ca
cb8da
    jsr sub_cbd46                                                     // b8da: 20 46 bd     F.
    jsr sub_cb372                                                     // b8dd: 20 72 b3     r.
    bra cb87f                                                         // b8e0: 80 9d       ..
// $b8e2 referenced 1 time by $b922
cb8e2
    pla                                                               // b8e2: 68          h
    pla                                                               // b8e3: 68          h
    bra cb874                                                         // b8e4: 80 8e       ..
sub_cb8e6
    jsr sub_c8d9c                                                     // b8e6: 20 9c 8d     ..
    beq cb877                                                         // b8e9: f0 8c       ..
    cmp #$86                                                          // b8eb: c9 86       ..
    beq cb8f2                                                         // b8ed: f0 03       ..
    dec l000a                                                         // b8ef: c6 0a       ..
    clc                                                               // b8f1: 18          .
// $b8f2 referenced 1 time by $b8ed
cb8f2
    ror l004c                                                         // b8f2: 66 4c       fL
    lsr l004c                                                         // b8f4: 46 4c       FL
    lda #$ff                                                          // b8f6: a9 ff       ..
    sta l004d                                                         // b8f8: 85 4d       .M
// $b8fa referenced 3 times by $b911, $b915, $b974
cb8fa
    jsr sub_c935c                                                     // b8fa: 20 5c 93     \.
    bcs cb909                                                         // b8fd: b0 0a       ..
// $b8ff referenced 1 time by $b902
loop_cb8ff
    jsr sub_c935c                                                     // b8ff: 20 5c 93     \.
    bcc loop_cb8ff                                                    // b902: 90 fb       ..
    ldx #$ff                                                          // b904: a2 ff       ..
    stx l004d                                                         // b906: 86 4d       .M
    clc                                                               // b908: 18          .
// $b909 referenced 1 time by $b8fd
cb909
    php                                                               // b909: 08          .
    asl l004c                                                         // b90a: 06 4c       .L
    plp                                                               // b90c: 28          (
    ror l004c                                                         // b90d: 66 4c       fL
    cmp #$2c // ','                                                   // b90f: c9 2c       .,
    beq cb8fa                                                         // b911: f0 e7       ..
    cmp #$3b // ';'                                                   // b913: c9 3b       .;
    beq cb8fa                                                         // b915: f0 e3       ..
    dec l000a                                                         // b917: c6 0a       ..
    lda l004c                                                         // b919: a5 4c       .L
    pha                                                               // b91b: 48          H
    lda l004d                                                         // b91c: a5 4d       .M
    pha                                                               // b91e: 48          H
    jsr sub_c997d                                                     // b91f: 20 7d 99     }.
    beq cb8e2                                                         // b922: f0 be       ..
    pla                                                               // b924: 68          h
    sta l004d                                                         // b925: 85 4d       .M
    pla                                                               // b927: 68          h
    sta l004c                                                         // b928: 85 4c       .L
    jsr c9338                                                         // b92a: 20 38 93     8.
    php                                                               // b92d: 08          .
    bit l004c                                                         // b92e: 24 4c       $L
    bvs cb938                                                         // b930: 70 06       p.
    lda l004d                                                         // b932: a5 4d       .M
    cmp #$ff                                                          // b934: c9 ff       ..
    bne cb94f                                                         // b936: d0 17       ..
// $b938 referenced 1 time by $b930
cb938
    bit l004c                                                         // b938: 24 4c       $L
    bpl cb941                                                         // b93a: 10 05       ..
    lda #$3f // '?'                                                   // b93c: a9 3f       .?
    jsr oswrch                                                        // b93e: 20 ee ff     ..            // Write character 63
// $b941 referenced 1 time by $b93a
cb941
    jsr sub_cbaa0                                                     // b941: 20 a0 ba     ..
    sty l0036                                                         // b944: 84 36       .6
    asl l004c                                                         // b946: 06 4c       .L
    clc                                                               // b948: 18          .
    ror l004c                                                         // b949: 66 4c       fL
    bit l004c                                                         // b94b: 24 4c       $L
    bvs cb968                                                         // b94d: 70 19       p.
// $b94f referenced 1 time by $b936
cb94f
    sta l001b                                                         // b94f: 85 1b       ..
    stz l0019                                                         // b951: 64 19       d.
    lda #6                                                            // b953: a9 06       ..
    sta l001a                                                         // b955: 85 1a       ..
    jsr sub_cad3a                                                     // b957: 20 3a ad     :.
// $b95a referenced 1 time by $b961
loop_cb95a
    jsr sub_c8fa8                                                     // b95a: 20 a8 8f     ..
    beq cb965                                                         // b95d: f0 06       ..
    cmp #$0d                                                          // b95f: c9 0d       ..
    bne loop_cb95a                                                    // b961: d0 f7       ..
    ldy #$fe                                                          // b963: a0 fe       ..
// $b965 referenced 1 time by $b95d
cb965
    iny                                                               // b965: c8          .
    sty l004d                                                         // b966: 84 4d       .M
// $b968 referenced 1 time by $b94d
cb968
    plp                                                               // b968: 28          (
    bcs cb976                                                         // b969: b0 0b       ..
    jsr sub_cbc83                                                     // b96b: 20 83 bc     ..
    jsr sub_caba5                                                     // b96e: 20 a5 ab     ..
    jsr sub_cb365                                                     // b971: 20 65 b3     e.
// $b974 referenced 1 time by $b97b
loop_cb974
    bra cb8fa                                                         // b974: 80 84       ..
// $b976 referenced 1 time by $b969
cb976
    stz l0027                                                         // b976: 64 27       d'
    jsr sub_c9171                                                     // b978: 20 71 91     q.
    bra loop_cb974                                                    // b97b: 80 f7       ..
sub_cb97d
    stz l003d                                                         // b97d: 64 3d       d=
    ldy l0018                                                         // b97f: a4 18       ..
    sty l003e                                                         // b981: 84 3e       .>
    jsr c8f9d                                                         // b983: 20 9d 8f     ..
    dec l000a                                                         // b986: c6 0a       ..
    cmp #$3a // ':'                                                   // b988: c9 3a       .:
    beq cb997                                                         // b98a: f0 0b       ..
    cmp #$0d                                                          // b98c: c9 0d       ..
    beq cb997                                                         // b98e: f0 07       ..
    cmp #$8b                                                          // b990: c9 8b       ..
    beq cb997                                                         // b992: f0 03       ..
    jsr sub_cb85a                                                     // b994: 20 5a b8     Z.
// $b997 referenced 3 times by $b98a, $b98e, $b992
cb997
    jsr c9c6a                                                         // b997: 20 6a 9c     j.
    lda l003d                                                         // b99a: a5 3d       .=
    sta l001c                                                         // b99c: 85 1c       ..
    lda l003e                                                         // b99e: a5 3e       .>
    sta l001d                                                         // b9a0: 85 1d       ..
    jmp c90ca                                                         // b9a2: 4c ca 90    L..

// $b9a5 referenced 2 times by $b9b0, $b9da
cb9a5
    jsr sub_c8da2                                                     // b9a5: 20 a2 8d     ..
    beq cb9ad                                                         // b9a8: f0 03       ..
    jmp c90c5                                                         // b9aa: 4c c5 90    L..

// $b9ad referenced 1 time by $b9a8
cb9ad
    jsr sub_c997d                                                     // b9ad: 20 7d 99     }.
    beq cb9a5                                                         // b9b0: f0 f3       ..
    bcs cb9bf                                                         // b9b2: b0 0b       ..
    jsr sub_cb9dc                                                     // b9b4: 20 dc b9     ..
    jsr sub_cbc83                                                     // b9b7: 20 83 bc     ..
    jsr sub_cb362                                                     // b9ba: 20 62 b3     b.
    bra cb9cd                                                         // b9bd: 80 0e       ..
// $b9bf referenced 1 time by $b9b2
cb9bf
    jsr sub_cb9dc                                                     // b9bf: 20 dc b9     ..
    jsr cbc66                                                         // b9c2: 20 66 bc     f.
    jsr sub_cad3a                                                     // b9c5: 20 3a ad     :.
    sta l0027                                                         // b9c8: 85 27       .'
    jsr sub_c916e                                                     // b9ca: 20 6e 91     n.
// $b9cd referenced 1 time by $b9bd
cb9cd
    clc                                                               // b9cd: 18          .
    lda l001b                                                         // b9ce: a5 1b       ..
    adc l0019                                                         // b9d0: 65 19       e.
    sta l001c                                                         // b9d2: 85 1c       ..
    lda l001a                                                         // b9d4: a5 1a       ..
    adc #0                                                            // b9d6: 69 00       i.
    sta l001d                                                         // b9d8: 85 1d       ..
    bra cb9a5                                                         // b9da: 80 c9       ..
// $b9dc referenced 2 times by $b9b4, $b9bf
sub_cb9dc
    jsr c9338                                                         // b9dc: 20 38 93     8.
    lda l001c                                                         // b9df: a5 1c       ..
    sta l0019                                                         // b9e1: 85 19       ..
    lda l001d                                                         // b9e3: a5 1d       ..
    sta l001a                                                         // b9e5: 85 1a       ..
    stz l001b                                                         // b9e7: 64 1b       d.
    jsr sub_c8fa8                                                     // b9e9: 20 a8 8f     ..
    beq cba46                                                         // b9ec: f0 58       .X
    cmp #$dc                                                          // b9ee: c9 dc       ..
    beq cba46                                                         // b9f0: f0 54       .T
    cmp #$0d                                                          // b9f2: c9 0d       ..
    beq cb9ff                                                         // b9f4: f0 09       ..
// $b9f6 referenced 1 time by $b9fd
loop_cb9f6
    jsr sub_c8fa8                                                     // b9f6: 20 a8 8f     ..
    beq cba46                                                         // b9f9: f0 4b       .K
    cmp #$0d                                                          // b9fb: c9 0d       ..
    bne loop_cb9f6                                                    // b9fd: d0 f7       ..
// $b9ff referenced 3 times by $b9f4, $ba1b, $ba1f
cb9ff
    ldy l001b                                                         // b9ff: a4 1b       ..
    lda (l0019),y                                                     // ba01: b1 19       ..
    bmi cba21                                                         // ba03: 30 1c       0.
    iny                                                               // ba05: c8          .
    iny                                                               // ba06: c8          .
    lda (l0019),y                                                     // ba07: b1 19       ..
    tax                                                               // ba09: aa          .
// $ba0a referenced 1 time by $ba0f
loop_cba0a
    iny                                                               // ba0a: c8          .
    lda (l0019),y                                                     // ba0b: b1 19       ..
    cmp #$20 // ' '                                                   // ba0d: c9 20       .
    beq loop_cba0a                                                    // ba0f: f0 f9       ..
    cmp #$dc                                                          // ba11: c9 dc       ..
    beq cba43                                                         // ba13: f0 2e       ..
    txa                                                               // ba15: 8a          .
    clc                                                               // ba16: 18          .
    adc l0019                                                         // ba17: 65 19       e.
    sta l0019                                                         // ba19: 85 19       ..
    bcc cb9ff                                                         // ba1b: 90 e2       ..
    inc l001a                                                         // ba1d: e6 1a       ..
    bra cb9ff                                                         // ba1f: 80 de       ..
// $ba21 referenced 1 time by $ba03
cba21
    brk                                                               // ba21: 00          .

    .asc "*Out of "                                                   // ba22: 2a 4f 75... *Ou
    .byt $dc                                                          // ba2a: dc          .

// $ba2b referenced 1 time by $ba52
cba2b
    brk                                                               // ba2b: 00          .

    .asc "+No "                                                       // ba2c: 2b 4e 6f... +No
    .byt $f5                                                          // ba30: f5          .

// $ba31 referenced 1 time by $ba7f
cba31
    brk                                                               // ba31: 00          .

    .byt $2d, $8d, $23                                                // ba32: 2d 8d 23    -.#

// $ba35 referenced 1 time by $ba8c
cba35
    brk                                                               // ba35: 00          .

    .asc ",Too many "                                                 // ba36: 2c 54 6f... ,To
    .byt $f5, $73,   0                                                // ba40: f5 73 00    .s.

// $ba43 referenced 1 time by $ba13
cba43
    iny                                                               // ba43: c8          .
    sty l001b                                                         // ba44: 84 1b       ..
// $ba46 referenced 3 times by $b9ec, $b9f0, $b9f9
cba46
    rts                                                               // ba46: 60          `

sub_cba47
    jsr sub_c9df3                                                     // ba47: 20 f3 9d     ..
    jsr c9c55                                                         // ba4a: 20 55 9c     U.
    jsr sub_c9781                                                     // ba4d: 20 81 97     ..
    ldx l0024                                                         // ba50: a6 24       .$
    beq cba2b                                                         // ba52: f0 d7       ..
    lda l002a                                                         // ba54: a5 2a       .*
    ora l002b                                                         // ba56: 05 2b       .+
    ora l002c                                                         // ba58: 05 2c       .,
    ora l002d                                                         // ba5a: 05 2d       .-
    beq cba63                                                         // ba5c: f0 05       ..
    dec l0024                                                         // ba5e: c6 24       .$
    jmp c90ca                                                         // ba60: 4c ca 90    L..

// $ba63 referenced 1 time by $ba5c
cba63
    ldy l04ff,x                                                       // ba63: bc ff 04    ...
    lda l0513,x                                                       // ba66: bd 13 05    ...
    jmp cb762                                                         // ba69: 4c 62 b7    Lb.

// $ba6c referenced 2 times by $9204, $b877
sub_cba6c
    dec l000a                                                         // ba6c: c6 0a       ..
// $ba6e referenced 3 times by $beda, $beee, $befd
sub_cba6e
    lda l000a                                                         // ba6e: a5 0a       ..
    sta l001b                                                         // ba70: 85 1b       ..
    lda l000b                                                         // ba72: a5 0b       ..
    sta l0019                                                         // ba74: 85 19       ..
    lda l000c                                                         // ba76: a5 0c       ..
    sta l001a                                                         // ba78: 85 1a       ..
// $ba7a referenced 3 times by $ab24, $ab2f, $ac1f
sub_cba7a
    jsr c8f92                                                         // ba7a: 20 92 8f     ..
    cmp #$23 // '#'                                                   // ba7d: c9 23       .#
    bne cba31                                                         // ba7f: d0 b0       ..
    jsr sub_c9779                                                     // ba81: 20 79 97     y.
    ldy l002a                                                         // ba84: a4 2a       .*
    tya                                                               // ba86: 98          .
    rts                                                               // ba87: 60          `

sub_cba88
    ldx l0024                                                         // ba88: a6 24       .$
    cpx #$14                                                          // ba8a: e0 14       ..
    bcs cba35                                                         // ba8c: b0 a7       ..
    jsr c9c80                                                         // ba8e: 20 80 9c     ..
    lda l000b                                                         // ba91: a5 0b       ..
    sta l0500,x                                                       // ba93: 9d 00 05    ...
    lda l000c                                                         // ba96: a5 0c       ..
    sta l0514,x                                                       // ba98: 9d 14 05    ...
    inc l0024                                                         // ba9b: e6 24       .$
    jmp c90d0                                                         // ba9d: 4c d0 90    L..

// $baa0 referenced 1 time by $b941
sub_cbaa0
    lda #6                                                            // baa0: a9 06       ..
    bra cbaa6                                                         // baa2: 80 02       ..
// $baa4 referenced 2 times by $9059, $955b
sub_cbaa4
    lda #7                                                            // baa4: a9 07       ..
// $baa6 referenced 1 time by $baa2
cbaa6
    stz l0037                                                         // baa6: 64 37       d7
    sta l0038                                                         // baa8: 85 38       .8
    lda #$ee                                                          // baaa: a9 ee       ..
    sta l0039                                                         // baac: 85 39       .9
    lda #$20 // ' '                                                   // baae: a9 20       .
    sta l003a                                                         // bab0: 85 3a       .:
    ldy #$ff                                                          // bab2: a0 ff       ..
    sty l003b                                                         // bab4: 84 3b       .;
    iny                                                               // bab6: c8          .
    ldx #$37 // '7'                                                   // bab7: a2 37       .7
    tya                                                               // bab9: 98          .
    jsr osword                                                        // baba: 20 f1 ff     ..
    bcc cbac5                                                         // babd: 90 06       ..
    jmp c9c41                                                         // babf: 4c 41 9c    LA.

// $bac2 referenced 8 times by $8a14, $8a68, $9285, $9319, $932a, $9538, $98c6, $bdc6
sub_cbac2
    jsr osnewl                                                        // bac2: 20 e7 ff     ..            // Write newline (character 10)
// $bac5 referenced 2 times by $babd, $bddf
cbac5
    stz l001e                                                         // bac5: 64 1e       d.
    rts                                                               // bac7: 60          `

// $bac8 referenced 2 times by $93fa, $bb47
sub_cbac8
    jsr sub_c8191                                                     // bac8: 20 91 81     ..
    bcc cbb1a                                                         // bacb: 90 4d       .M
    lda l003d                                                         // bacd: a5 3d       .=
    sta l0037                                                         // bacf: 85 37       .7
    sta l0012                                                         // bad1: 85 12       ..
    lda l003e                                                         // bad3: a5 3e       .>
    sta l0038                                                         // bad5: 85 38       .8
    sta l0013                                                         // bad7: 85 13       ..
    ldy #3                                                            // bad9: a0 03       ..
    lda (l0037),y                                                     // badb: b1 37       .7
    clc                                                               // badd: 18          .
    adc l0037                                                         // bade: 65 37       e7
    sta l0037                                                         // bae0: 85 37       .7
    bcc cbae6                                                         // bae2: 90 02       ..
    inc l0038                                                         // bae4: e6 38       .8
// $bae6 referenced 1 time by $bae2
cbae6
    ldy #0                                                            // bae6: a0 00       ..
// $bae8 referenced 2 times by $bb04, $bb0a
cbae8
    lda (l0037),y                                                     // bae8: b1 37       .7
    sta (l0012),y                                                     // baea: 91 12       ..
    cmp #$0d                                                          // baec: c9 0d       ..
    bne cbb03                                                         // baee: d0 13       ..
    iny                                                               // baf0: c8          .
    bne cbaf7                                                         // baf1: d0 04       ..
    inc l0038                                                         // baf3: e6 38       .8
    inc l0013                                                         // baf5: e6 13       ..
// $baf7 referenced 1 time by $baf1
cbaf7
    lda (l0037),y                                                     // baf7: b1 37       .7
    sta (l0012),y                                                     // baf9: 91 12       ..
    bmi cbb0c                                                         // bafb: 30 0f       0.
    jsr sub_cbb0f                                                     // bafd: 20 0f bb     ..
    jsr sub_cbb0f                                                     // bb00: 20 0f bb     ..
// $bb03 referenced 1 time by $baee
cbb03
    iny                                                               // bb03: c8          .
    bne cbae8                                                         // bb04: d0 e2       ..
    inc l0038                                                         // bb06: e6 38       .8
    inc l0013                                                         // bb08: e6 13       ..
    bra cbae8                                                         // bb0a: 80 dc       ..
// $bb0c referenced 1 time by $bafb
cbb0c
    jmp cbe45                                                         // bb0c: 4c 45 be    LE.

// $bb0f referenced 2 times by $bafd, $bb00
sub_cbb0f
    iny                                                               // bb0f: c8          .
    bne cbb16                                                         // bb10: d0 04       ..
    inc l0013                                                         // bb12: e6 13       ..
    inc l0038                                                         // bb14: e6 38       .8
// $bb16 referenced 1 time by $bb10
cbb16
    lda (l0037),y                                                     // bb16: b1 37       .7
    sta (l0012),y                                                     // bb18: 91 12       ..
// $bb1a referenced 3 times by $bacb, $bb36, $bb54
cbb1a
    rts                                                               // bb1a: 60          `

// $bb1b referenced 2 times by $903d, $9062
sub_cbb1b
    ldx #$ff                                                          // bb1b: a2 ff       ..
    stx l0028                                                         // bb1d: 86 28       .(
    stx l003c                                                         // bb1f: 86 3c       .<
    jsr sub_cbbff                                                     // bb21: 20 ff bb     ..
    lda l000b                                                         // bb24: a5 0b       ..
    sta l0037                                                         // bb26: 85 37       .7
    lda l000c                                                         // bb28: a5 0c       ..
    sta l0038                                                         // bb2a: 85 38       .8
    stz l003b                                                         // bb2c: 64 3b       d;
    stz l000a                                                         // bb2e: 64 0a       d.
    jsr c8e6f                                                         // bb30: 20 6f 8e     o.
    jsr sub_c9be2                                                     // bb33: 20 e2 9b     ..
    bcc cbb1a                                                         // bb36: 90 e2       ..
// $bb38 referenced 1 time by $9566
sub_cbb38
    lda l001f                                                         // bb38: a5 1f       ..
    beq cbb45                                                         // bb3a: f0 09       ..
// $bb3c referenced 1 time by $bb42
loop_cbb3c
    lda l0700,y                                                       // bb3c: b9 00 07    ...
    iny                                                               // bb3f: c8          .
    cmp #$20 // ' '                                                   // bb40: c9 20       .
    beq loop_cbb3c                                                    // bb42: f0 f8       ..
    dey                                                               // bb44: 88          .
// $bb45 referenced 1 time by $bb3a
cbb45
    sty l003b                                                         // bb45: 84 3b       .;
    jsr sub_cbac8                                                     // bb47: 20 c8 ba     ..
    ldy #7                                                            // bb4a: a0 07       ..
    sty l003c                                                         // bb4c: 84 3c       .<
    ldy #0                                                            // bb4e: a0 00       ..
    lda #$0d                                                          // bb50: a9 0d       ..
    cmp (l003b)                                                       // bb52: d2 3b       .;
    beq cbb1a                                                         // bb54: f0 c4       ..
// $bb56 referenced 1 time by $bb59
loop_cbb56
    iny                                                               // bb56: c8          .
    cmp (l003b),y                                                     // bb57: d1 3b       .;
    bne loop_cbb56                                                    // bb59: d0 fb       ..
    lda #$20 // ' '                                                   // bb5b: a9 20       .
// $bb5d referenced 1 time by $bb62
loop_cbb5d
    dey                                                               // bb5d: 88          .
    beq cbb64                                                         // bb5e: f0 04       ..
    cmp (l003b),y                                                     // bb60: d1 3b       .;
    beq loop_cbb5d                                                    // bb62: f0 f9       ..
// $bb64 referenced 1 time by $bb5e
cbb64
    iny                                                               // bb64: c8          .
    lda #$0d                                                          // bb65: a9 0d       ..
    sta (l003b),y                                                     // bb67: 91 3b       .;
    iny                                                               // bb69: c8          .
    iny                                                               // bb6a: c8          .
    iny                                                               // bb6b: c8          .
    iny                                                               // bb6c: c8          .
    sty l003f                                                         // bb6d: 84 3f       .?
    lda l0012                                                         // bb6f: a5 12       ..
    sta l0039                                                         // bb71: 85 39       .9
    lda l0013                                                         // bb73: a5 13       ..
    sta l003a                                                         // bb75: 85 3a       .:
    jsr sub_cbe44                                                     // bb77: 20 44 be     D.
    sta l0037                                                         // bb7a: 85 37       .7
    lda l0013                                                         // bb7c: a5 13       ..
    sta l0038                                                         // bb7e: 85 38       .8
    dey                                                               // bb80: 88          .
    lda l0006                                                         // bb81: a5 06       ..
    cmp l0012                                                         // bb83: c5 12       ..
    lda l0007                                                         // bb85: a5 07       ..
    sbc l0013                                                         // bb87: e5 13       ..
    bcs cbb9b                                                         // bb89: b0 10       ..
    jsr sub_cbe25                                                     // bb8b: 20 25 be     %.
    jsr sub_cbbdc                                                     // bb8e: 20 dc bb     ..
    brk                                                               // bb91: 00          .

    .byt   0, $86                                                     // bb92: 00 86       ..
    .asc " space"                                                     // bb94: 20 73 70...  sp
    .byt 0                                                            // bb9a: 00          .

// $bb9b referenced 2 times by $bb89, $bbb4
cbb9b
    lda (l0039),y                                                     // bb9b: b1 39       .9
    sta (l0037),y                                                     // bb9d: 91 37       .7
    tya                                                               // bb9f: 98          .
    bne cbba6                                                         // bba0: d0 04       ..
    dec l003a                                                         // bba2: c6 3a       .:
    dec l0038                                                         // bba4: c6 38       .8
// $bba6 referenced 1 time by $bba0
cbba6
    dey                                                               // bba6: 88          .
    tya                                                               // bba7: 98          .
    adc l0039                                                         // bba8: 65 39       e9
    ldx l003a                                                         // bbaa: a6 3a       .:
    bcc cbbaf                                                         // bbac: 90 01       ..
    inx                                                               // bbae: e8          .
// $bbaf referenced 1 time by $bbac
cbbaf
    cmp l003d                                                         // bbaf: c5 3d       .=
    txa                                                               // bbb1: 8a          .
    sbc l003e                                                         // bbb2: e5 3e       .>
    bcs cbb9b                                                         // bbb4: b0 e5       ..
    ldy #1                                                            // bbb6: a0 01       ..
    lda l002b                                                         // bbb8: a5 2b       .+
    sta (l003d),y                                                     // bbba: 91 3d       .=
    iny                                                               // bbbc: c8          .
    lda l002a                                                         // bbbd: a5 2a       .*
    sta (l003d),y                                                     // bbbf: 91 3d       .=
    iny                                                               // bbc1: c8          .
    lda l003f                                                         // bbc2: a5 3f       .?
    sta (l003d),y                                                     // bbc4: 91 3d       .=
    sec                                                               // bbc6: 38          8
    tya                                                               // bbc7: 98          .
    adc l003d                                                         // bbc8: 65 3d       e=
    sta l003d                                                         // bbca: 85 3d       .=
    bcc cbbd0                                                         // bbcc: 90 02       ..
    inc l003e                                                         // bbce: e6 3e       .>
// $bbd0 referenced 1 time by $bbcc
cbbd0
    ldy #$ff                                                          // bbd0: a0 ff       ..
// $bbd2 referenced 1 time by $bbd9
loop_cbbd2
    iny                                                               // bbd2: c8          .
    lda (l003b),y                                                     // bbd3: b1 3b       .;
    sta (l003d),y                                                     // bbd5: 91 3d       .=
    cmp #$0d                                                          // bbd7: c9 0d       ..
    bne loop_cbbd2                                                    // bbd9: d0 f7       ..
    rts                                                               // bbdb: 60          `

// $bbdc referenced 7 times by $8fda, $9048, $9569, $9706, $b3c8, $bb8e, $bd71
sub_cbbdc
    lda l0012                                                         // bbdc: a5 12       ..
    sta l0000                                                         // bbde: 85 00       ..
    sta l0002                                                         // bbe0: 85 02       ..
    lda l0013                                                         // bbe2: a5 13       ..
    sta l0001                                                         // bbe4: 85 01       ..
    sta l0003                                                         // bbe6: 85 03       ..
    jsr sub_cbbff                                                     // bbe8: 20 ff bb     ..
// $bbeb referenced 1 time by $96f4
sub_cbbeb
    ldx #$10                                                          // bbeb: a2 10       ..
// $bbed referenced 1 time by $bbf4
loop_cbbed
    lda lbf71,x                                                       // bbed: bd 71 bf    .q.
    sta l07ef,x                                                       // bbf0: 9d ef 07    ...
    dex                                                               // bbf3: ca          .
    bne loop_cbbed                                                    // bbf4: d0 f7       ..
    ldx #$80                                                          // bbf6: a2 80       ..
// $bbf8 referenced 1 time by $bbfc
loop_cbbf8
    stz l047f,x                                                       // bbf8: 9e 7f 04    ...
    dex                                                               // bbfb: ca          .
    bne loop_cbbf8                                                    // bbfc: d0 fa       ..
    rts                                                               // bbfe: 60          `

// $bbff referenced 2 times by $bb21, $bbe8
sub_cbbff
    lda l0018                                                         // bbff: a5 18       ..
    sta l001d                                                         // bc01: 85 1d       ..
    lda l0006                                                         // bc03: a5 06       ..
    sta l0004                                                         // bc05: 85 04       ..
    lda l0007                                                         // bc07: a5 07       ..
    sta l0005                                                         // bc09: 85 05       ..
    lda #$80                                                          // bc0b: a9 80       ..
    trb l001f                                                         // bc0d: 14 1f       ..
    stz l0024                                                         // bc0f: 64 24       d$
    stz l0026                                                         // bc11: 64 26       d&
    stz l0025                                                         // bc13: 64 25       d%
    stz l001c                                                         // bc15: 64 1c       d.
    rts                                                               // bc17: 60          `

// $bc18 referenced 2 times by $9f4f, $9f59
sub_cbc18
    jsr cbc3a                                                         // bc18: 20 3a bc     :.
    jsr sub_ca026                                                     // bc1b: 20 26 a0     &.
// $bc1e referenced 1 time by $a042
sub_cbc1e
    stx l0027                                                         // bc1e: 86 27       .'
// $bc20 referenced 1 time by $9fb0
sub_cbc20
    tay                                                               // bc20: a8          .
    jsr sub_c97a2                                                     // bc21: 20 a2 97     ..
// $bc24 referenced 4 times by $9d33, $a56d, $a617, $b19b
sub_cbc24
    lda l0004                                                         // bc24: a5 04       ..
    clc                                                               // bc26: 18          .
    sta l004a                                                         // bc27: 85 4a       .J
    adc #5                                                            // bc29: 69 05       i.
    sta l0004                                                         // bc2b: 85 04       ..
    lda l0005                                                         // bc2d: a5 05       ..
    sta l004b                                                         // bc2f: 85 4b       .K
    adc #0                                                            // bc31: 69 00       i.
    sta l0005                                                         // bc33: 85 05       ..
    rts                                                               // bc35: 60          `

// $bc36 referenced 2 times by $a03c, $a081
sub_cbc36
    tay                                                               // bc36: a8          .
    jsr sub_c97a2                                                     // bc37: 20 a2 97     ..
// $bc3a referenced 5 times by $9d29, $9faa, $a60f, $bc18, $bc64
cbc3a
    lda l0004                                                         // bc3a: a5 04       ..
    sec                                                               // bc3c: 38          8
    sbc #5                                                            // bc3d: e9 05       ..
    jsr sub_cbd5e                                                     // bc3f: 20 5e bd     ^.
    lda l0030                                                         // bc42: a5 30       .0
    sta (l0004)                                                       // bc44: 92 04       ..
    ldy #1                                                            // bc46: a0 01       ..
    lda l002e                                                         // bc48: a5 2e       ..
    eor l0031                                                         // bc4a: 45 31       E1
    and #$80                                                          // bc4c: 29 80       ).
    eor l0031                                                         // bc4e: 45 31       E1
    sta (l0004),y                                                     // bc50: 91 04       ..
    iny                                                               // bc52: c8          .
    lda l0032                                                         // bc53: a5 32       .2
    sta (l0004),y                                                     // bc55: 91 04       ..
    iny                                                               // bc57: c8          .
    lda l0033                                                         // bc58: a5 33       .3
    sta (l0004),y                                                     // bc5a: 91 04       ..
    iny                                                               // bc5c: c8          .
    lda l0034                                                         // bc5d: a5 34       .4
    sta (l0004),y                                                     // bc5f: 91 04       ..
    rts                                                               // bc61: 60          `

// $bc62 referenced 2 times by $b149, $b1ce
sub_cbc62
    beq cbc91                                                         // bc62: f0 2d       .-
    bmi cbc3a                                                         // bc64: 30 d4       0.
// $bc66 referenced 20 times by $8fb1, $9114, $9387, $93df, $9418, $9555, $964e, $9889, $9ae6, $9b27, $9e42, $9e50, $a023, $a069, $b150, $b1db, $b3da, $b3ed, $b893, $b9c2
cbc66
    lda l0004                                                         // bc66: a5 04       ..
    sec                                                               // bc68: 38          8
    sbc #4                                                            // bc69: e9 04       ..
    jsr sub_cbd5e                                                     // bc6b: 20 5e bd     ^.
    ldy #3                                                            // bc6e: a0 03       ..
    lda l002d                                                         // bc70: a5 2d       .-
    sta (l0004),y                                                     // bc72: 91 04       ..
    dey                                                               // bc74: 88          .
    lda l002c                                                         // bc75: a5 2c       .,
    sta (l0004),y                                                     // bc77: 91 04       ..
    dey                                                               // bc79: 88          .
    lda l002b                                                         // bc7a: a5 2b       .+
    sta (l0004),y                                                     // bc7c: 91 04       ..
    lda l002a                                                         // bc7e: a5 2a       .*
    sta (l0004)                                                       // bc80: 92 04       ..
    rts                                                               // bc82: 60          `

// $bc83 referenced 6 times by $8a98, $9588, $97e3, $b650, $b96b, $b9b7
sub_cbc83
    ply                                                               // bc83: 7a          z
    plx                                                               // bc84: fa          .
    lda l002a                                                         // bc85: a5 2a       .*
    pha                                                               // bc87: 48          H
    lda l002b                                                         // bc88: a5 2b       .+
    pha                                                               // bc8a: 48          H
    lda l002c                                                         // bc8b: a5 2c       .,
    pha                                                               // bc8d: 48          H
    phx                                                               // bc8e: da          .
    phy                                                               // bc8f: 5a          Z
    rts                                                               // bc90: 60          `

// $bc91 referenced 7 times by $9769, $9dc4, $9edd, $ab6a, $ac8a, $af13, $bc62
cbc91
    clc                                                               // bc91: 18          .
    lda l0004                                                         // bc92: a5 04       ..
    sbc l0036                                                         // bc94: e5 36       .6
    jsr sub_cbd5e                                                     // bc96: 20 5e bd     ^.
    ldy l0036                                                         // bc99: a4 36       .6
    beq cbca5                                                         // bc9b: f0 08       ..
// $bc9d referenced 1 time by $bca3
loop_cbc9d
    lda l05ff,y                                                       // bc9d: b9 ff 05    ...
    sta (l0004),y                                                     // bca0: 91 04       ..
    dey                                                               // bca2: 88          .
    bne loop_cbc9d                                                    // bca3: d0 f8       ..
// $bca5 referenced 1 time by $bc9b
cbca5
    lda l0036                                                         // bca5: a5 36       .6
    sta (l0004)                                                       // bca7: 92 04       ..
    rts                                                               // bca9: 60          `

// $bcaa referenced 1 time by $b0db
sub_cbcaa
    lda l0039                                                         // bcaa: a5 39       .9
    cmp #$80                                                          // bcac: c9 80       ..
    beq cbcd5                                                         // bcae: f0 25       .%
    bcc cbcea                                                         // bcb0: 90 38       .8
    lda (l0004)                                                       // bcb2: b2 04       ..
    tax                                                               // bcb4: aa          .
    beq cbccd                                                         // bcb5: f0 16       ..
    lda (l0037)                                                       // bcb7: b2 37       .7
    sbc #1                                                            // bcb9: e9 01       ..
    sta l0039                                                         // bcbb: 85 39       .9
    ldy #1                                                            // bcbd: a0 01       ..
    lda (l0037),y                                                     // bcbf: b1 37       .7
    sbc #0                                                            // bcc1: e9 00       ..
    sta l003a                                                         // bcc3: 85 3a       .:
// $bcc5 referenced 1 time by $bccb
loop_cbcc5
    lda (l0004),y                                                     // bcc5: b1 04       ..
    sta (l0039),y                                                     // bcc7: 91 39       .9
    iny                                                               // bcc9: c8          .
    dex                                                               // bcca: ca          .
    bne loop_cbcc5                                                    // bccb: d0 f8       ..
// $bccd referenced 1 time by $bcb5
cbccd
    lda (l0004)                                                       // bccd: b2 04       ..
    ldy #3                                                            // bccf: a0 03       ..
// $bcd1 referenced 1 time by $bce8
loop_cbcd1
    sta (l0037),y                                                     // bcd1: 91 37       .7
    bra cbd21                                                         // bcd3: 80 4c       .L
// $bcd5 referenced 1 time by $bcae
cbcd5
    lda (l0004)                                                       // bcd5: b2 04       ..
    ldy #0                                                            // bcd7: a0 00       ..
    tax                                                               // bcd9: aa          .
    beq cbce6                                                         // bcda: f0 0a       ..
// $bcdc referenced 1 time by $bce4
loop_cbcdc
    iny                                                               // bcdc: c8          .
    lda (l0004),y                                                     // bcdd: b1 04       ..
    dey                                                               // bcdf: 88          .
    sta (l0037),y                                                     // bce0: 91 37       .7
    iny                                                               // bce2: c8          .
    dex                                                               // bce3: ca          .
    bne loop_cbcdc                                                    // bce4: d0 f6       ..
// $bce6 referenced 1 time by $bcda
cbce6
    lda #$0d                                                          // bce6: a9 0d       ..
    bne loop_cbcd1                                                    // bce8: d0 e7       ..
// $bcea referenced 1 time by $bcb0
cbcea
    lda (l0004)                                                       // bcea: b2 04       ..
    sta (l0037)                                                       // bcec: 92 37       .7
    ldy #4                                                            // bcee: a0 04       ..
    lda l0039                                                         // bcf0: a5 39       .9
    beq cbd0e                                                         // bcf2: f0 1a       ..
    ldy #1                                                            // bcf4: a0 01       ..
    lda (l0004),y                                                     // bcf6: b1 04       ..
    sta (l0037),y                                                     // bcf8: 91 37       .7
    iny                                                               // bcfa: c8          .
    lda (l0004),y                                                     // bcfb: b1 04       ..
    sta (l0037),y                                                     // bcfd: 91 37       .7
    iny                                                               // bcff: c8          .
    lda (l0004),y                                                     // bd00: b1 04       ..
    sta (l0037),y                                                     // bd02: 91 37       .7
    iny                                                               // bd04: c8          .
    cpy l0039                                                         // bd05: c4 39       .9
    bcs cbd0e                                                         // bd07: b0 05       ..
    lda (l0004),y                                                     // bd09: b1 04       ..
    sta (l0037),y                                                     // bd0b: 91 37       .7
    iny                                                               // bd0d: c8          .
// $bd0e referenced 2 times by $bcf2, $bd07
cbd0e
    tya                                                               // bd0e: 98          .
    clc                                                               // bd0f: 18          .
    bra cbd3d                                                         // bd10: 80 2b       .+
// $bd12 referenced 5 times by $9efc, $aca6, $aecb, $af2f, $b1af
sub_cbd12
    lda (l0004)                                                       // bd12: b2 04       ..
    sta l0036                                                         // bd14: 85 36       .6
    beq cbd23                                                         // bd16: f0 0b       ..
    tay                                                               // bd18: a8          .
// $bd19 referenced 1 time by $bd1f
loop_cbd19
    lda (l0004),y                                                     // bd19: b1 04       ..
    sta l05ff,y                                                       // bd1b: 99 ff 05    ...
    dey                                                               // bd1e: 88          .
    bne loop_cbd19                                                    // bd1f: d0 f8       ..
// $bd21 referenced 5 times by $9dea, $ab8e, $accf, $ace8, $bcd3
cbd21
    lda (l0004)                                                       // bd21: b2 04       ..
// $bd23 referenced 1 time by $bd16
cbd23
    sec                                                               // bd23: 38          8
    bra cbd3d                                                         // bd24: 80 17       ..
// $bd26 referenced 13 times by $8287, $916e, $93ba, $93f7, $9552, $955e, $9fed, $ac68, $af93, $b17e, $b1a3, $b3ea, $b432
sub_cbd26
    ldy #3                                                            // bd26: a0 03       ..
    lda (l0004),y                                                     // bd28: b1 04       ..
    sta l002d                                                         // bd2a: 85 2d       .-
    dey                                                               // bd2c: 88          .
    lda (l0004),y                                                     // bd2d: b1 04       ..
    sta l002c                                                         // bd2f: 85 2c       .,
    dey                                                               // bd31: 88          .
    lda (l0004),y                                                     // bd32: b1 04       ..
    sta l002b                                                         // bd34: 85 2b       .+
    lda (l0004)                                                       // bd36: b2 04       ..
    sta l002a                                                         // bd38: 85 2a       .*
// $bd3a referenced 3 times by $9e23, $9e66, $bd5c
cbd3a
    clc                                                               // bd3a: 18          .
    lda #4                                                            // bd3b: a9 04       ..
// $bd3d referenced 2 times by $bd10, $bd24
cbd3d
    adc l0004                                                         // bd3d: 65 04       e.
    sta l0004                                                         // bd3f: 85 04       ..
    bcc cbd45                                                         // bd41: 90 02       ..
    inc l0005                                                         // bd43: e6 05       ..
// $bd45 referenced 1 time by $bd41
cbd45
    rts                                                               // bd45: 60          `

// $bd46 referenced 3 times by $989b, $b0d8, $b8da
sub_cbd46
    ldx #$37 // '7'                                                   // bd46: a2 37       .7
// $bd48 referenced 5 times by $81dc, $944c, $95c8, $9af4, $9b35
sub_cbd48
    ldy #3                                                            // bd48: a0 03       ..
    lda (l0004),y                                                     // bd4a: b1 04       ..
    sta l0003,x                                                       // bd4c: 95 03       ..
    dey                                                               // bd4e: 88          .
    lda (l0004),y                                                     // bd4f: b1 04       ..
    sta l0002,x                                                       // bd51: 95 02       ..
    dey                                                               // bd53: 88          .
    lda (l0004),y                                                     // bd54: b1 04       ..
    sta l0001,x                                                       // bd56: 95 01       ..
    lda (l0004)                                                       // bd58: b2 04       ..
    sta l0000,x                                                       // bd5a: 95 00       ..
    bra cbd3a                                                         // bd5c: 80 dc       ..
// $bd5e referenced 4 times by $b05e, $bc3f, $bc6b, $bc96
sub_cbd5e
    sta l0004                                                         // bd5e: 85 04       ..
    bcs cbd64                                                         // bd60: b0 02       ..
    dec l0005                                                         // bd62: c6 05       ..
// $bd64 referenced 1 time by $bd60
cbd64
    ldy l0005                                                         // bd64: a4 05       ..
    cpy l0003                                                         // bd66: c4 03       ..
    bcc cbd74                                                         // bd68: 90 0a       ..
    bne cbd70                                                         // bd6a: d0 04       ..
    cmp l0002                                                         // bd6c: c5 02       ..
    bcc cbd74                                                         // bd6e: 90 04       ..
// $bd70 referenced 1 time by $bd6a
cbd70
    rts                                                               // bd70: 60          `

// $bd71 referenced 1 time by $bdef
cbd71
    jsr sub_cbbdc                                                     // bd71: 20 dc bb     ..
// $bd74 referenced 2 times by $bd68, $bd6e
cbd74
    jmp c9164                                                         // bd74: 4c 64 91    Ld.

// $bd77 referenced 4 times by $8a3c, $8a5e, $98cf, $b51c
sub_cbd77
    sta l0037                                                         // bd77: 85 37       .7
    cmp #$80                                                          // bd79: c9 80       ..
    bcc cbdd4                                                         // bd7b: 90 57       .W
    lda #$13                                                          // bd7d: a9 13       ..
    sta l0038                                                         // bd7f: 85 38       .8
    lda #$85                                                          // bd81: a9 85       ..
    sta l0039                                                         // bd83: 85 39       .9
    phy                                                               // bd85: 5a          Z
// $bd86 referenced 2 times by $bd98, $bd9c
cbd86
    ldy #0                                                            // bd86: a0 00       ..
// $bd88 referenced 1 time by $bd8b
loop_cbd88
    iny                                                               // bd88: c8          .
    lda (l0038),y                                                     // bd89: b1 38       .8
    bpl loop_cbd88                                                    // bd8b: 10 fb       ..
    cmp l0037                                                         // bd8d: c5 37       .7
    beq cbd9e                                                         // bd8f: f0 0d       ..
    iny                                                               // bd91: c8          .
    tya                                                               // bd92: 98          .
    sec                                                               // bd93: 38          8
    adc l0038                                                         // bd94: 65 38       e8
    sta l0038                                                         // bd96: 85 38       .8
    bcc cbd86                                                         // bd98: 90 ec       ..
    inc l0039                                                         // bd9a: e6 39       .9
    bra cbd86                                                         // bd9c: 80 e8       ..
// $bd9e referenced 1 time by $bd8f
cbd9e
    ldy #0                                                            // bd9e: a0 00       ..
// $bda0 referenced 1 time by $bda8
loop_cbda0
    lda (l0038),y                                                     // bda0: b1 38       .8
    bmi cbdaa                                                         // bda2: 30 06       0.
    jsr cbdd4                                                         // bda4: 20 d4 bd     ..
    iny                                                               // bda7: c8          .
    bne loop_cbda0                                                    // bda8: d0 f6       ..
// $bdaa referenced 1 time by $bda2
cbdaa
    ply                                                               // bdaa: 7a          z
    rts                                                               // bdab: 60          `

// $bdac referenced 2 times by $89fb, $bdcf
sub_cbdac
    pha                                                               // bdac: 48          H
    lsr                                                               // bdad: 4a          J
    lsr                                                               // bdae: 4a          J
    lsr                                                               // bdaf: 4a          J
    lsr                                                               // bdb0: 4a          J
    jsr sub_cbdb7                                                     // bdb1: 20 b7 bd     ..
    pla                                                               // bdb4: 68          h
    and #$0f                                                          // bdb5: 29 0f       ).
// $bdb7 referenced 1 time by $bdb1
sub_cbdb7
    cmp #$0a                                                          // bdb7: c9 0a       ..
    bcc cbdbd                                                         // bdb9: 90 02       ..
    adc #6                                                            // bdbb: 69 06       i.
// $bdbd referenced 1 time by $bdb9
cbdbd
    adc #$30 // '0'                                                   // bdbd: 69 30       i0
// $bdbf referenced 1 time by $bdda
loop_cbdbf
    pha                                                               // bdbf: 48          H
    lda l0023                                                         // bdc0: a5 23       .#
    cmp l001e                                                         // bdc2: c5 1e       ..
    bcs cbdc9                                                         // bdc4: b0 03       ..
    jsr sub_cbac2                                                     // bdc6: 20 c2 ba     ..
// $bdc9 referenced 1 time by $bdc4
cbdc9
    pla                                                               // bdc9: 68          h
    inc l001e                                                         // bdca: e6 1e       ..
    jmp (wrchv)                                                       // bdcc: 6c 0e 02    l..

// $bdcf referenced 2 times by $8a00, $8a20
sub_cbdcf
    jsr sub_cbdac                                                     // bdcf: 20 ac bd     ..
// $bdd2 referenced 4 times by $9268, $92d4, $9d26, $bdff
cbdd2
    lda #$20 // ' '                                                   // bdd2: a9 20       .
// $bdd4 referenced 5 times by $a12a, $b445, $b4f2, $bd7b, $bda4
cbdd4
    bit l001f                                                         // bdd4: 24 1f       $.
    bmi cbde2                                                         // bdd6: 30 0a       0.
// $bdd8 referenced 4 times by $92e3, $937c, $9d1b, $9d23
sub_cbdd8
    cmp #$0d                                                          // bdd8: c9 0d       ..
    bne loop_cbdbf                                                    // bdda: d0 e3       ..
    jsr oswrch                                                        // bddc: 20 ee ff     ..            // Write character
    jmp cbac5                                                         // bddf: 4c c5 ba    L..

// $bde2 referenced 1 time by $bdd6
cbde2
    sta (l0002)                                                       // bde2: 92 02       ..
    inc l0002                                                         // bde4: e6 02       ..
    bne cbe05                                                         // bde6: d0 1d       ..
    inc l0003                                                         // bde8: e6 03       ..
    pha                                                               // bdea: 48          H
    lda l0003                                                         // bdeb: a5 03       ..
    eor l0007                                                         // bded: 45 07       E.
    beq cbd71                                                         // bdef: f0 80       ..
    pla                                                               // bdf1: 68          h
    rts                                                               // bdf2: 60          `

// $bdf3 referenced 2 times by $b4d4, $b4db
sub_cbdf3
    clc                                                               // bdf3: 18          .
// $bdf4 referenced 1 time by $b4cd
sub_cbdf4
    and l001f                                                         // bdf4: 25 1f       %.
    beq cbe05                                                         // bdf6: f0 0d       ..
    txa                                                               // bdf8: 8a          .
    bmi cbe05                                                         // bdf9: 30 0a       0.
    rol                                                               // bdfb: 2a          *
    tax                                                               // bdfc: aa          .
    beq cbe05                                                         // bdfd: f0 06       ..
// $bdff referenced 6 times by $8a19, $8a2f, $8a4b, $9325, $a121, $be03
cbdff
    jsr cbdd2                                                         // bdff: 20 d2 bd     ..
    dex                                                               // be02: ca          .
    bne cbdff                                                         // be03: d0 fa       ..
// $be05 referenced 4 times by $bde6, $bdf6, $bdf9, $bdfd
cbe05
    rts                                                               // be05: 60          `

// $be06 referenced 6 times by $8d6a, $9fea, $aac3, $b194, $b1c7, $b400
sub_cbe06
    lda l002a                                                         // be06: a5 2a       .*
    sta l0000,x                                                       // be08: 95 00       ..
    lda l002b                                                         // be0a: a5 2b       .+
    sta l0001,x                                                       // be0c: 95 01       ..
    lda l002c                                                         // be0e: a5 2c       .,
    sta l0002,x                                                       // be10: 95 02       ..
    lda l002d                                                         // be12: a5 2d       .-
    sta l0003,x                                                       // be14: 95 03       ..
    rts                                                               // be16: 60          `

// $be17 referenced 2 times by $8fc0, $8fe5
sub_cbe17
    jsr sub_cbe81                                                     // be17: 20 81 be     ..
    stz l003d                                                         // be1a: 64 3d       d=
    ldy #>(l0037)                                                     // be1c: a0 00       ..
    lda #osfile_load                                                  // be1e: a9 ff       ..
    ldx #<(l0037)                                                     // be20: a2 37       .7
    jsr osfile                                                        // be22: 20 dd ff     ..            // Load named file (if XY+6 contains 0, use specified address) (A=255)
// $be25 referenced 6 times by $8fd2, $8fed, $944f, $b42f, $bb8b, $be95
sub_cbe25
    lda l0018                                                         // be25: a5 18       ..
    sta l0013                                                         // be27: 85 13       ..
    stz l0012                                                         // be29: 64 12       d.
    ldy #1                                                            // be2b: a0 01       ..
// $be2d referenced 1 time by $be41
loop_cbe2d
    lda (l0012)                                                       // be2d: b2 12       ..
    cmp #$0d                                                          // be2f: c9 0d       ..
    bne cbe51                                                         // be31: d0 1e       ..
    lda (l0012),y                                                     // be33: b1 12       ..
    bmi cbe43                                                         // be35: 30 0c       0.
    ldy #3                                                            // be37: a0 03       ..
    lda (l0012),y                                                     // be39: b1 12       ..
    beq cbe51                                                         // be3b: f0 14       ..
    clc                                                               // be3d: 18          .
    jsr sub_cbe46                                                     // be3e: 20 46 be     F.
    bra loop_cbe2d                                                    // be41: 80 ea       ..
// $be43 referenced 1 time by $be35
cbe43
    iny                                                               // be43: c8          .
// $be44 referenced 1 time by $bb77
sub_cbe44
    clc                                                               // be44: 18          .
// $be45 referenced 1 time by $bb0c
cbe45
    tya                                                               // be45: 98          .
// $be46 referenced 1 time by $be3e
sub_cbe46
    adc l0012                                                         // be46: 65 12       e.
    sta l0012                                                         // be48: 85 12       ..
    bcc cbe4e                                                         // be4a: 90 02       ..
    inc l0013                                                         // be4c: e6 13       ..
// $be4e referenced 1 time by $be4a
cbe4e
    ldy #1                                                            // be4e: a0 01       ..
    rts                                                               // be50: 60          `

// $be51 referenced 2 times by $be31, $be3b
cbe51
    jsr sub_cbf0f                                                     // be51: 20 0f bf     ..
    ora l6142                                                         // be54: 0d 42 61    .Ba
    stz l0020                                                         // be57: 64 20       d
    bvs lbecd                                                         // be59: 70 72       pr
    .asc "ogram"                                                      // be5b: 6f 67 72... ogr
    .byt $0d, $ea, $4c, $4b, $90                                      // be60: 0d ea 4c... ..L

// $be65 referenced 1 time by $be7b
sub_cbe65
    stz l0037                                                         // be65: 64 37       d7
    lda #6                                                            // be67: a9 06       ..
    sta l0038                                                         // be69: 85 38       .8
// $be6b referenced 2 times by $91ef, $ab47
sub_cbe6b
    ldy l0036                                                         // be6b: a4 36       .6
    lda #$0d                                                          // be6d: a9 0d       ..
    sta l0600,y                                                       // be6f: 99 00 06    ...
    rts                                                               // be72: 60          `

// $be73 referenced 1 time by $be79
loop_cbe73
    jmp c9155                                                         // be73: 4c 55 91    LU.

// $be76 referenced 2 times by $be81, $bec7
sub_cbe76
    jsr sub_c9df3                                                     // be76: 20 f3 9d     ..
    bne loop_cbe73                                                    // be79: d0 f8       ..
    jsr sub_cbe65                                                     // be7b: 20 65 be     e.
    jmp c9c55                                                         // be7e: 4c 55 9c    LU.

// $be81 referenced 2 times by $be17, $be98
sub_cbe81
    jsr sub_cbe76                                                     // be81: 20 76 be     v.
    dey                                                               // be84: 88          .
    sty l0039                                                         // be85: 84 39       .9
    lda l0018                                                         // be87: a5 18       ..
    sta l003a                                                         // be89: 85 3a       .:
// $be8b referenced 1 time by $9834
sub_cbe8b
    lda #osbyte_read_high_order_address                               // be8b: a9 82       ..
    jsr osbyte                                                        // be8d: 20 f4 ff     ..            // Read the filing system 'machine high order address'
    stx l003b                                                         // be90: 86 3b       .;             // X and Y contain the machine high order address (low, high)
    sty l003c                                                         // be92: 84 3c       .<
    rts                                                               // be94: 60          `

sub_cbe95
    jsr sub_cbe25                                                     // be95: 20 25 be     %.
    jsr sub_cbe81                                                     // be98: 20 81 be     ..
    stx l003f                                                         // be9b: 86 3f       .?
    sty l0040                                                         // be9d: 84 40       .@
    stx l0043                                                         // be9f: 86 43       .C
    sty l0044                                                         // bea1: 84 44       .D
    stx l0047                                                         // bea3: 86 47       .G
    sty l0048                                                         // bea5: 84 48       .H
    stz l0041                                                         // bea7: 64 41       dA
    ldx l0012                                                         // bea9: a6 12       ..
    stx l0045                                                         // beab: 86 45       .E
    ldx l0013                                                         // bead: a6 13       ..
    stx l0046                                                         // beaf: 86 46       .F
    ldx #$e7                                                          // beb1: a2 e7       ..
    stx l003d                                                         // beb3: 86 3d       .=
    ldx #$80                                                          // beb5: a2 80       ..
    stx l003e                                                         // beb7: 86 3e       .>
    ldx l0018                                                         // beb9: a6 18       ..
    stx l0042                                                         // bebb: 86 42       .B
    lda #osfile_save                                                  // bebd: a9 00       ..
    tay                                                               // bebf: a8          .
    ldx #<(l0037)                                                     // bec0: a2 37       .7
    jsr osfile                                                        // bec2: 20 dd ff     ..            // Save a block of memory (returning file length and attributes) (A=0)
    bra cbeeb                                                         // bec5: 80 24       .$
sub_cbec7
    jsr sub_cbe76                                                     // bec7: 20 76 be     v.
    ldx #<(l0600)                                                     // beca: a2 00       ..
sub_cbecc
lbecd = sub_cbecc+1
    ldy #>(l0600)                                                     // becc: a0 06       ..
// overlapping: asl l0020                                             // becd: 06 20       .
// $becd referenced 1 time by $be59
    jsr oscli                                                         // bece: 20 f7 ff     ..
    bra cbeeb                                                         // bed1: 80 18       ..
// $bed3 referenced 1 time by $90ad
cbed3
    lda #3                                                            // bed3: a9 03       ..
    bra cbed9                                                         // bed5: 80 02       ..
sub_cbed7
    lda #1                                                            // bed7: a9 01       ..
// $bed9 referenced 1 time by $bed5
cbed9
    pha                                                               // bed9: 48          H
    jsr sub_cba6e                                                     // beda: 20 6e ba     n.
    phy                                                               // bedd: 5a          Z
    jsr c9c16                                                         // bede: 20 16 9c     ..
    jsr sub_c9781                                                     // bee1: 20 81 97     ..
    ply                                                               // bee4: 7a          z
    ldx #$2a // '*'                                                   // bee5: a2 2a       .*
    pla                                                               // bee7: 68          h
    jsr osargs                                                        // bee8: 20 da ff     ..            // Read or write a file's attributes
// $beeb referenced 4 times by $bec5, $bed1, $befb, $bf0d
cbeeb
    jmp c90ca                                                         // beeb: 4c ca 90    L..

sub_cbeee
    jsr sub_cba6e                                                     // beee: 20 6e ba     n.
    jsr sub_c9c5a                                                     // bef1: 20 5a 9c     Z.
    ldy l002a                                                         // bef4: a4 2a       .*
    lda #0                                                            // bef6: a9 00       ..
    jsr osfind                                                        // bef8: 20 ce ff     ..            // Close one or all files
    bra cbeeb                                                         // befb: 80 ee       ..
sub_cbefd
lbefe = sub_cbefd+1
    jsr sub_cba6e                                                     // befd: 20 6e ba     n.
// $befe referenced 1 time by $aa61
// $bf00 referenced 1 time by $aa5a
cbf00
    pha                                                               // bf00: 48          H
    jsr sub_c9771                                                     // bf01: 20 71 97     q.
    jsr sub_c9c5a                                                     // bf04: 20 5a 9c     Z.
    ply                                                               // bf07: 7a          z              // Y=file handle
    lda l002a                                                         // bf08: a5 2a       .*
    jsr osbput                                                        // bf0a: 20 d4 ff     ..            // Write a single byte A to an open file Y
    bra cbeeb                                                         // bf0d: 80 dc       ..
// $bf0f referenced 2 times by $951f, $be51
sub_cbf0f
    pla                                                               // bf0f: 68          h
    sta l0037                                                         // bf10: 85 37       .7
    pla                                                               // bf12: 68          h
    sta l0038                                                         // bf13: 85 38       .8
    bra cbf1a                                                         // bf15: 80 03       ..
// $bf17 referenced 1 time by $bf1d
loop_cbf17
    jsr osasci                                                        // bf17: 20 e3 ff     ..            // Write character
// $bf1a referenced 1 time by $bf15
cbf1a
    jsr sub_c8e66                                                     // bf1a: 20 66 8e     f.
    bpl loop_cbf17                                                    // bf1d: 10 f8       ..
    jmp (l0037)                                                       // bf1f: 6c 37 00    l7.

// $bf22 referenced 4 times by $8ff7, $8ffb, $9007, $9012
sub_cbf22
    lda #osword_read_io_memory                                        // bf22: a9 05       ..
    phx                                                               // bf24: da          .
    ldx #<(l002a)                                                     // bf25: a2 2a       .*
    ldy #>(l002a)                                                     // bf27: a0 00       ..
    jsr osword                                                        // bf29: 20 f1 ff     ..            // Read byte of I/O processor memory
    plx                                                               // bf2c: fa          .
    lda l002e                                                         // bf2d: a5 2e       ..
// $bf2f referenced 4 times by $9400, $958e, $965e, $aabc
sub_cbf2f
    inc l002a                                                         // bf2f: e6 2a       .*
    bne cbf3d                                                         // bf31: d0 0a       ..
    inc l002b                                                         // bf33: e6 2b       .+
    bne cbf3d                                                         // bf35: d0 06       ..
    inc l002c                                                         // bf37: e6 2c       .,
    bne cbf3d                                                         // bf39: d0 02       ..
    inc l002d                                                         // bf3b: e6 2d       .-
// $bf3d referenced 3 times by $bf31, $bf35, $bf39
cbf3d
    rts                                                               // bf3d: 60          `

// $bf3e referenced 2 times by $9019, $9045
sub_cbf3e
    lda #$0d                                                          // bf3e: a9 0d       ..
    ldy l0018                                                         // bf40: a4 18       ..
    sty l0013                                                         // bf42: 84 13       ..
    stz l0012                                                         // bf44: 64 12       d.
    stz l0020                                                         // bf46: 64 20       d
    sta (l0012)                                                       // bf48: 92 12       ..
    lda #$ff                                                          // bf4a: a9 ff       ..
    ldy #1                                                            // bf4c: a0 01       ..
    sta (l0012),y                                                     // bf4e: 91 12       ..
    iny                                                               // bf50: c8          .
    sty l0012                                                         // bf51: 84 12       ..
    rts                                                               // bf53: 60          `

// $bf54 referenced 1 time by $b46c
cbf54
    ldy #9                                                            // bf54: a0 09       ..
// $bf56 referenced 1 time by $bf5d
loop_cbf56
    lda lb3be,y                                                       // bf56: b9 be b3    ...
    sta l0600,y                                                       // bf59: 99 00 06    ...
    dey                                                               // bf5c: 88          .
    bpl loop_cbf56                                                    // bf5d: 10 f7       ..
    ldx #<(l0600)                                                     // bf5f: a2 00       ..
    ldy #>(l0600)                                                     // bf61: a0 06       ..
    jmp oscli                                                         // bf63: 4c f7 ff    L..

// $bf66 referenced 1 time by $80ac
sub_cbf66
    lda #osbyte_read_tube_presence                                    // bf66: a9 ea       ..
    ldx #0                                                            // bf68: a2 00       ..
    ldy #$ff                                                          // bf6a: a0 ff       ..
    jsr osbyte                                                        // bf6c: 20 f4 ff     ..            // Read Tube present flag
    txa                                                               // bf6f: 8a          .              // X=value of Tube present flag
    rts                                                               // bf70: 60          `

// $bf71 referenced 1 time by $bbed
lbf71
    .byt $52, $0b, $a8, $34, $a6, $e4, $a6, $0a, $a7, $10, $ad, $7e   // bf71: 52 0b a8... R..
    .byt $a5, $4d, $a5, $4a, $2e, $7f, $5e, $5b, $d8, $aa,   0, $ca   // bf7d: a5 4d a5... .M.
    .byt $98, $80, $81, $22, $f9, $83, $6e, $81, $49, $0f, $da, $a2   // bf89: 98 80 81... ...
    .byt $21, $b3, $b2, $87, $80, $82, $38, $aa, $3b, $29, $80, $31   // bf95: 21 b3 b2... !..
    .byt $72, $17, $f7, $d1, $5f, $5b, $e6, $ff, $66, $2b, $cc, $77   // bfa1: 72 17 f7... r..
    .byt $6d,   6, $37, $bd, $73, $51, $b7, $17, $7a, $23, $d7, $0a   // bfad: 6d 06 37... m.7
    .byt $81,   0,   0,   0,   0, $82, $40,   0,   0,   0, $9a, $d4   // bfb9: 81 00 00... ...
    .byt $82, $7f, $b9, $ff, $78, $7b, $0e, $fa, $35, $12, $86, $65   // bfc5: 82 7f b9... ...
    .byt $2e, $e0, $d3, $7e, $88, $88, $88, $89, $7b, $8c             // bfd1: 2e e0 d3... ...
    .asc "o-Y"                                                        // bfdb: 6f 2d 59    o-Y
    .byt $81, $99, $99, $99, $9a, $f3, $9e, $7b, $77, $81, $c0,   0   // bfde: 81 99 99... ...
    .byt   0,   0, $80, $93, $e6, $90,   0, $81, $c4                  // bfea: 00 00 80... ...
    .asc "DDD"                                                        // bff3: 44 44 44    DDD
    .byt $80, $9d, $fd, $13,   4, $81, $e6                            // bff6: 80 9d fd... ...
    .asc "fff"                                                        // bffd: 66 66 66    fff
pydis_end

// Label references by decreasing frequency:
//     l002a:              206
//     l0037:              133
//     l002b:              119
//     l0031:               88
//     l000b:               82
//     l001b:               82
//     l000a:               81
//     l003d:               78
//     l0004:               75
//     l002c:               75
//     l0033:               66
//     l0032:               65
//     l0034:               63
//     l0039:               59
//     l0038:               58
//     l0030:               57
//     l002d:               56
//     l0019:               52
//     l003f:               52
//     l0036:               51
//     l003b:               49
//     l002e:               48
//     l003e:               48
//     l0035:               42
//     l000c:               37
//     l003c:               36
//     l0040:               34
//     l004c:               31
//     l0002:               29
//     l003a:               29
//     l0600:               29
//     c8f9d:               29
//     l0027:               28
//     l004a:               25
//     c9c6a:               24
//     sub_c9332:           23
//     l0003:               22
//     l001a:               22
//     l0012:               21
//     l0041:               21
//     l0048:               21
//     cbc66:               20
//     sub_c8da2:           18
//     l0005:               17
//     l002f:               17
//     l004d:               16
//     c8f92:               16
//     l0013:               15
//     l0018:               15
//     l0049:               15
//     oswrch:              15
//     c9155:               14
//     sub_c9dff:           14
//     cad78:               14
//     l0026:               13
//     sub_cbd26:           13
//     l0029:               12
//     c90ca:               11
//     ca2cc:               11
//     cae60:               11
//     osbyte:              11
//     l0007:               10
//     l000d:               10
//     l0028:               10
//     l0042:               10
//     sub_c9779:           10
//     sub_c9be2:           10
//     c9c80:               10
//     l000f:                9
//     l001f:                9
//     l05ff:                9
//     sub_c8e5f:            9
//     sub_c997d:            9
//     sub_c9c5a:            9
//     l0000:                8
//     l0001:                8
//     l0006:                8
//     l001e:                8
//     l0047:                8
//     l004b:                8
//     c828d:                8
//     sub_c8d86:            8
//     c90d0:                8
//     c9338:                8
//     c95f1:                8
//     sub_c979f:            8
//     sub_c9df3:            8
//     sub_ca545:            8
//     cae62:                8
//     sub_cbac2:            8
//     l0014:                7
//     sub_c8fa8:            7
//     c9048:                7
//     sub_c9774:            7
//     sub_c9783:            7
//     c9c2d:                7
//     ca72b:                7
//     sub_cbbdc:            7
//     cbc91:                7
//     l000e:                6
//     l0015:                6
//     l0020:                6
//     romsel_copy:          6
//     c8b1b:                6
//     c8bf9:                6
//     sub_c8d9c:            6
//     sub_c8e41:            6
//     c8e6c:                6
//     c904b:                6
//     c90c5:                6
//     sub_c976c:            6
//     sub_c9771:            6
//     c9e85:                6
//     cac2b:                6
//     cad10:                6
//     cadce:                6
//     cb169:                6
//     sub_cbc83:            6
//     cbdff:                6
//     sub_cbe06:            6
//     sub_cbe25:            6
//     osbput:               6
//     osbget:               6
//     osword:               6
//     l0010:                5
//     l0024:                5
//     l0025:                5
//     os_text_ptr:          5
//     l0400:                5
//     c84ce:                5
//     sub_c8d94:            5
//     c932d:                5
//     c9784:                5
//     sub_c9788:            5
//     sub_c97a2:            5
//     c9a46:                5
//     c9e83:                5
//     c9f4c:                5
//     ca261:                5
//     sub_ca514:            5
//     ca634:                5
//     ca70a:                5
//     ca712:                5
//     cac1c:                5
//     cac38:                5
//     cad20:                5
//     cafb8:                5
//     sub_cb365:            5
//     cb5cf:                5
//     cb805:                5
//     sub_cb85a:            5
//     cbc3a:                5
//     sub_cbd12:            5
//     cbd21:                5
//     sub_cbd48:            5
//     cbdd4:                5
//     l0011:                4
//     l001c:                4
//     l001d:                4
//     l0046:                4
//     l0100:                4
//     l0440:                4
//     l0441:                4
//     sub_c8149:            4
//     c815d:                4
//     c820f:                4
//     c84a3:                4
//     c8af2:                4
//     c8ce3:                4
//     c8dfc:                4
//     c8e51:                4
//     c8ee7:                4
//     c9045:                4
//     c90c7:                4
//     c9207:                4
//     c9700:                4
//     sub_c977e:            4
//     sub_c9781:            4
//     c9808:                4
//     sub_c9952:            4
//     c9c16:                4
//     c9c8a:                4
//     c9d75:                4
//     sub_c9f07:            4
//     c9f0a:                4
//     sub_ca06c:            4
//     ca0d1:                4
//     ca2fb:                4
//     ca426:                4
//     ca513:                4
//     caae8:                4
//     cb5df:                4
//     cb7b3:                4
//     sub_cbc24:            4
//     sub_cbd5e:            4
//     sub_cbd77:            4
//     cbdd2:                4
//     sub_cbdd8:            4
//     cbe05:                4
//     cbeeb:                4
//     sub_cbf22:            4
//     sub_cbf2f:            4
//     l0016:                3
//     l0023:                3
//     l00fd:                3
//     l0401:                3
//     l046c:                3
//     l051d:                3
//     l051f:                3
//     l0524:                3
//     c806a:                3
//     sub_c80d8:            3
//     c8190:                3
//     sub_c8191:            3
//     c827c:                3
//     c82dd:                3
//     c8304:                3
//     c83d2:                3
//     c8b10:                3
//     c8bb2:                3
//     c8c1b:                3
//     c8c1e:                3
//     c8cbb:                3
//     c8d64:                3
//     sub_c8d89:            3
//     sub_c8d8c:            3
//     c8e3f:                3
//     sub_c8e66:            3
//     c8e6f:                3
//     c8e9c:                3
//     c8ed0:                3
//     c8edc:                3
//     c8fbb:                3
//     c9164:                3
//     sub_c916e:            3
//     c926e:                3
//     c9276:                3
//     c9288:                3
//     c92da:                3
//     sub_c9330:            3
//     c93d7:                3
//     sub_c953d:            3
//     c96b8:                3
//     c96ca:                3
//     c979c:                3
//     c98bd:                3
//     c990c:                3
//     sub_c990f:            3
//     sub_c9923:            3
//     c9a14:                3
//     c9a28:                3
//     sub_c9b97:            3
//     c9bda:                3
//     c9c55:                3
//     c9c74:                3
//     sub_c9d0f:            3
//     sub_c9d7f:            3
//     sub_ca0e8:            3
//     ca126:                3
//     ca174:                3
//     sub_ca2dd:            3
//     ca385:                3
//     sub_ca3ed:            3
//     sub_ca46b:            3
//     ca4a9:                3
//     ca4b9:                3
//     sub_ca5ad:            3
//     sub_ca5b4:            3
//     ca622:                3
//     sub_ca62f:            3
//     ca674:                3
//     ca6e4:                3
//     ca6ed:                3
//     sub_ca6ff:            3
//     ca725:                3
//     sub_ca73e:            3
//     ca9c1:                3
//     sub_ca9d1:            3
//     cab9d:                3
//     cadee:                3
//     caed7:                3
//     caed9:                3
//     caf07:                3
//     caf88:                3
//     cb1de:                3
//     sub_cb2e0:            3
//     cb753:                3
//     cb8fa:                3
//     cb997:                3
//     cb9ff:                3
//     cba46:                3
//     sub_cba6e:            3
//     sub_cba7a:            3
//     cbb1a:                3
//     cbd3a:                3
//     sub_cbd46:            3
//     cbf3d:                3
//     osnewl:               3
//     oscli:                3
//     l0017:                2
//     l0021:                2
//     l0022:                2
//     l0044:                2
//     l004e:                2
//     l01ff:                2
//     wrchv:                2
//     l0402:                2
//     l0403:                2
//     l043c:                2
//     l043d:                2
//     l0519:                2
//     l051a:                2
//     l051b:                2
//     l051c:                2
//     l051e:                2
//     l0521:                2
//     l0522:                2
//     l0523:                2
//     l0526:                2
//     l0527:                2
//     l0700:                2
//     c8067:                2
//     c808f:                2
//     c80a8:                2
//     c80cc:                2
//     c8151:                2
//     c8197:                2
//     c81b9:                2
//     sub_c81bd:            2
//     sub_c8287:            2
//     sub_c828a:            2
//     c82ae:                2
//     c82f4:                2
//     c82fb:                2
//     c8306:                2
//     sub_c83d3:            2
//     c840a:                2
//     sub_c8429:            2
//     c89dd:                2
//     c8b40:                2
//     c8b5f:                2
//     c8b62:                2
//     c8b83:                2
//     c8c31:                2
//     c8c99:                2
//     c8ca4:                2
//     c8cbd:                2
//     c8d34:                2
//     c8d6e:                2
//     sub_c8da8:            2
//     c8dc9:                2
//     c8e57:                2
//     c8e7d:                2
//     c8eb6:                2
//     c8f1a:                2
//     c8f26:                2
//     c8f41:                2
//     c8f5d:                2
//     sub_c8fae:            2
//     c9073:                2
//     c90de:                2
//     c914f:                2
//     sub_c9171:            2
//     c9193:                2
//     c91ad:                2
//     c91d1:                2
//     c9285:                2
//     sub_c933d:            2
//     c9357:                2
//     sub_c935c:            2
//     sub_c93c7:            2
//     sub_c9410:            2
//     sub_c9436:            2
//     c947f:                2
//     c94ba:                2
//     c94e4:                2
//     c950d:                2
//     c9555:                2
//     sub_c95cb:            2
//     c9635:                2
//     sub_c9769:            2
//     c979b:                2
//     c97ee:                2
//     c9866:                2
//     c986a:                2
//     c98c0:                2
//     c98dc:                2
//     c9928:                2
//     c9977:                2
//     c997a:                2
//     c999f:                2
//     sub_c99c4:            2
//     c99fa:                2
//     c9a3a:                2
//     c9a75:                2
//     c9ac1:                2
//     sub_c9ac9:            2
//     c9bae:                2
//     c9bbc:                2
//     c9bce:                2
//     sub_c9bee:            2
//     sub_c9c0a:            2
//     c9c3b:                2
//     c9c41:                2
//     sub_c9c4a:            2
//     c9c6c:                2
//     c9cc6:                2
//     c9ced:                2
//     c9d7c:                2
//     sub_c9d81:            2
//     c9dc1:                2
//     sub_c9e3f:            2
//     sub_c9e6d:            2
//     c9ecb:                2
//     c9f55:                2
//     c9f9a:                2
//     c9fa7:                2
//     sub_ca023:            2
//     sub_ca026:            2
//     ca029:                2
//     ca05b:                2
//     sub_ca069:            2
//     ca06f:                2
//     ca081:                2
//     ca09c:                2
//     ca0c5:                2
//     sub_ca0ec:            2
//     ca158:                2
//     sub_ca181:            2
//     ca19b:                2
//     ca19d:                2
//     ca1d4:                2
//     ca220:                2
//     ca2b7:                2
//     sub_ca2ca:            2
//     ca2d6:                2
//     ca303:                2
//     ca357:                2
//     ca3a1:                2
//     ca3a7:                2
//     ca3e5:                2
//     ca3e9:                2
//     ca446:                2
//     ca452:                2
//     ca47a:                2
//     sub_ca4ba:            2
//     ca4f5:                2
//     ca547:                2
//     sub_ca54d:            2
//     sub_ca56d:            2
//     ca57e:                2
//     sub_ca5bb:            2
//     sub_ca5cc:            2
//     sub_ca5cf:            2
//     sub_ca5e3:            2
//     sub_ca5f4:            2
//     sub_ca6cb:            2
//     ca6ce:                2
//     ca6f2:                2
//     ca704:                2
//     ca73b:                2
//     ca79b:                2
//     ca7db:                2
//     ca805:                2
//     ca857:                2
//     ca878:                2
//     sub_ca8b3:            2
//     sub_ca8b9:            2
//     sub_ca97b:            2
//     caa2c:                2
//     sub_caa50:            2
//     sub_caa55:            2
//     sub_caa6e:            2
//     caa7a:                2
//     sub_caad8:            2
//     cab1a:                2
//     cab41:                2
//     cabdd:                2
//     cac2d:                2
//     cacd2:                2
//     cace8:                2
//     cacfd:                2
//     sub_cad3a:            2
//     cad5b:                2
//     cae56:                2
//     caeb4:                2
//     caedb:                2
//     caf03:                2
//     cafdb:                2
//     cafee:                2
//     sub_cb057:            2
//     cb109:                2
//     cb17e:                2
//     sub_cb1bf:            2
//     cb1db:                2
//     cb205:                2
//     cb341:                2
//     sub_cb362:            2
//     sub_cb372:            2
//     cb39e:                2
//     cb3fb:                2
//     cb451:                2
//     cb485:                2
//     cb4a7:                2
//     cb4e2:                2
//     cb54b:                2
//     cb563:                2
//     cb56a:                2
//     cb629:                2
//     cb7a4:                2
//     cb81a:                2
//     sub_cb84d:            2
//     cb866:                2
//     cb86c:                2
//     cb87f:                2
//     cb9a5:                2
//     sub_cb9dc:            2
//     sub_cba6c:            2
//     sub_cbaa4:            2
//     cbac5:                2
//     sub_cbac8:            2
//     cbae8:                2
//     sub_cbb0f:            2
//     sub_cbb1b:            2
//     cbb9b:                2
//     sub_cbbff:            2
//     sub_cbc18:            2
//     sub_cbc36:            2
//     sub_cbc62:            2
//     cbd0e:                2
//     cbd3d:                2
//     cbd74:                2
//     cbd86:                2
//     sub_cbdac:            2
//     sub_cbdcf:            2
//     sub_cbdf3:            2
//     sub_cbe17:            2
//     cbe51:                2
//     sub_cbe6b:            2
//     sub_cbe76:            2
//     sub_cbe81:            2
//     sub_cbf0f:            2
//     sub_cbf3e:            2
//     osfind:               2
//     osargs:               2
//     osfile:               2
//     osrdch:               2
//     osasci:               2
//     l0008:                1
//     l0009:                1
//     l0043:                1
//     l0045:                1
//     l0061:                1
//     l0064:                1
//     l0066:                1
//     l00c1:                1
//     l00e1:                1
//     l00e6:                1
//     l00fe:                1
//     l00ff:                1
//     l0106:                1
//     brkv:                 1
//     brkv+1:               1
//     l0404:                1
//     l040c:                1
//     l0460:                1
//     l0464:                1
//     l0469:                1
//     l047f:                1
//     l04ff:                1
//     l0500:                1
//     l0513:                1
//     l0514:                1
//     l0528:                1
//     l0529:                1
//     l052a:                1
//     l05cb:                1
//     l05cc:                1
//     l05e5:                1
//     l05e6:                1
//     l07ef:                1
//     l0bb1:                1
//     l0e4e:                1
//     l4e4e:                1
//     l5252:                1
//     l6142:                1
//     l7461:                1
//     l7f0e:                1
//     l7f13:                1
//     service_handler:      1
//     c8040:                1
//     c804c:                1
//     loop_c8057:           1
//     c805e:                1
//     c8070:                1
//     loop_c8091:           1
//     copy_to_stack_loop:   1
//     l80c2:                1
//     l80dd:                1
//     l80e2:                1
//     language_handler:     1
//     c80ff:                1
//     sub_c8139:            1
//     c8168:                1
//     loop_c8176:           1
//     c817a:                1
//     c8187:                1
//     loop_c819f:           1
//     c81ad:                1
//     c81c8:                1
//     loop_c81e1:           1
//     c81ea:                1
//     c81fd:                1
//     loop_c8206:           1
//     c8210:                1
//     c8230:                1
//     loop_c8235:           1
//     c823f:                1
//     c8242:                1
//     c8246:                1
//     loop_c8252:           1
//     c825b:                1
//     c829a:                1
//     loop_c82b2:           1
//     c82be:                1
//     c82c8:                1
//     c82d8:                1
//     sub_c82e6:            1
//     loop_c82f7:           1
//     loop_c8314:           1
//     c832f:                1
//     loop_c8331:           1
//     c833b:                1
//     c8345:                1
//     c8346:                1
//     sub_c8349:            1
//     sub_c834f:            1
//     c8353:                1
//     c835e:                1
//     c8362:                1
//     loop_c8365:           1
//     c8371:                1
//     c8372:                1
//     c8392:                1
//     loop_c839e:           1
//     c83a6:                1
//     sub_c83aa:            1
//     c83c1:                1
//     sub_c83c2:            1
//     c83d5:                1
//     loop_c8428:           1
//     loop_c8440:           1
//     c8456:                1
//     loop_c845b:           1
//     c846a:                1
//     loop_c847b:           1
//     c8491:                1
//     loop_c8496:           1
//     c84ad:                1
//     c84f4:                1
//     l880a:                1
//     l8909:                1
//     l894e:                1
//     l8993:                1
//     c89bf:                1
//     loop_c89d7:           1
//     c89f4:                1
//     c8a0b:                1
//     loop_c8a11:           1
//     c8a1e:                1
//     c8a28:                1
//     loop_c8a2a:           1
//     c8a34:                1
//     loop_c8a3c:           1
//     c8a44:                1
//     c8a4b:                1
//     loop_c8a4f:           1
//     loop_c8a54:           1
//     loop_c8a5e:           1
//     c8a64:                1
//     c8a68:                1
//     c8a6b:                1
//     loop_c8a6e:           1
//     c8a79:                1
//     c8a8b:                1
//     c8a8e:                1
//     c8a91:                1
//     sub_c8aa8:            1
//     loop_c8ac3:           1
//     loop_c8ad4:           1
//     c8adf:                1
//     loop_c8ae3:           1
//     c8aef:                1
//     c8af5:                1
//     c8b33:                1
//     c8b4b:                1
//     c8b55:                1
//     c8b63:                1
//     c8b98:                1
//     c8b9b:                1
//     c8b9c:                1
//     loop_c8b9e:           1
//     c8ba3:                1
//     c8baf:                1
//     c8bb4:                1
//     c8bb6:                1
//     c8bbd:                1
//     c8bc4:                1
//     c8bde:                1
//     c8be9:                1
//     c8c01:                1
//     loop_c8c15:           1
//     c8c24:                1
//     c8c41:                1
//     c8c43:                1
//     c8c55:                1
//     c8c57:                1
//     c8c5e:                1
//     c8c74:                1
//     c8c84:                1
//     c8c87:                1
//     c8c96:                1
//     loop_c8c9b:           1
//     c8ca7:                1
//     c8cb8:                1
//     c8cc0:                1
//     c8ce6:                1
//     c8cfd:                1
//     c8d16:                1
//     c8d37:                1
//     c8d44:                1
//     loop_c8d71:           1
//     c8d74:                1
//     loop_c8db7:           1
//     sub_c8dc1:            1
//     c8dff:                1
//     loop_c8e16:           1
//     sub_c8e1f:            1
//     sub_c8e58:            1
//     c8e8d:                1
//     loop_c8e91:           1
//     c8e9d:                1
//     sub_c8ea4:            1
//     c8ea6:                1
//     c8eaa:                1
//     c8ebe:                1
//     loop_c8ee2:           1
//     c8ef3:                1
//     c8f03:                1
//     loop_c8f0b:           1
//     c8f25:                1
//     c8f32:                1
//     c8f3d:                1
//     c8f52:                1
//     c8f6d:                1
//     c8f74:                1
//     loop_c8f7a:           1
//     c8f86:                1
//     c8f87:                1
//     c8f8c:                1
//     c8f9c:                1
//     loop_c8fa7:           1
//     sub_c8fb4:            1
//     c8fda:                1
//     c8ff2:                1
//     loop_c9004:           1
//     c901c:                1
//     loop_c9024:           1
//     c9033:                1
//     c905c:                1
//     c9069:                1
//     loop_c9078:           1
//     c907d:                1
//     c9082:                1
//     c9086:                1
//     c90a0:                1
//     loop_c90a6:           1
//     loop_c90ad:           1
//     c90b0:                1
//     c90d2:                1
//     c90e3:                1
//     c90ea:                1
//     c9108:                1
//     c9112:                1
//     c9123:                1
//     c9135:                1
//     c9146:                1
//     loop_c91e4:           1
//     c91ee:                1
//     c91ef:                1
//     loop_c91f6:           1
//     c9201:                1
//     c9204:                1
//     loop_c9220:           1
//     c922a:                1
//     loop_c922c:           1
//     c9237:                1
//     loop_c923f:           1
//     c924a:                1
//     c9259:                1
//     loop_c9260:           1
//     loop_c9268:           1
//     c9274:                1
//     loop_c928b:           1
//     c929e:                1
//     loop_c92d4:           1
//     loop_c92e0:           1
//     c92ed:                1
//     loop_c92f0:           1
//     c9304:                1
//     c931e:                1
//     c9321:                1
//     c9325:                1
//     c932a:                1
//     loop_c9355:           1
//     loop_c9356:           1
//     loop_c9368:           1
//     c937c:                1
//     c938f:                1
//     c93b4:                1
//     c93c4:                1
//     loop_c93fa:           1
//     c9433:                1
//     sub_c943e:            1
//     loop_c9455:           1
//     c9469:                1
//     c9476:                1
//     c9487:                1
//     loop_c948a:           1
//     c94aa:                1
//     c94b0:                1
//     c94c8:                1
//     c94d1:                1
//     c94d5:                1
//     c94de:                1
//     c9509:                1
//     c951d:                1
//     c951f:                1
//     c954b:                1
//     c9579:                1
//     c957c:                1
//     c957f:                1
//     c95be:                1
//     sub_c95c6:            1
//     loop_c95cf:           1
//     c95e0:                1
//     c95f9:                1
//     c9606:                1
//     c9628:                1
//     c9632:                1
//     c963b:                1
//     c964e:                1
//     c968d:                1
//     c96bf:                1
//     c971b:                1
//     loop_c9724:           1
//     loop_c9728:           1
//     c972c:                1
//     c9735:                1
//     loop_c9750:           1
//     c9753:                1
//     sub_c978b:            1
//     loop_c97c0:           1
//     loop_c97c6:           1
//     c97d2:                1
//     c97fe:                1
//     c9801:                1
//     c9877:                1
//     c9889:                1
//     loop_c98cb:           1
//     c98d7:                1
//     loop_c98df:           1
//     loop_c9904:           1
//     sub_c9914:            1
//     loop_c992a:           1
//     c9937:                1
//     loop_c9948:           1
//     loop_c9954:           1
//     sub_c995a:            1
//     c9962:                1
//     c996e:                1
//     c9979:                1
//     c9990:                1
//     c99a0:                1
//     c99a2:                1
//     c99ab:                1
//     c99ba:                1
//     loop_c99cf:           1
//     sub_c99d0:            1
//     sub_c99d6:            1
//     sub_c99d8:            1
//     c9a0e:                1
//     c9a58:                1
//     c9a63:                1
//     c9a67:                1
//     c9a76:                1
//     c9a79:                1
//     c9a7b:                1
//     c9a99:                1
//     c9aa0:                1
//     c9aa5:                1
//     loop_c9ab6:           1
//     c9abc:                1
//     c9ae6:                1
//     c9b4c:                1
//     c9b5a:                1
//     c9b78:                1
//     c9b80:                1
//     c9b8a:                1
//     sub_c9bba:            1
//     c9bd2:                1
//     c9bdb:                1
//     loop_c9be0:           1
//     c9c08:                1
//     c9c24:                1
//     c9c52:                1
//     loop_c9c6d:           1
//     sub_c9c8e:            1
//     loop_c9c92:           1
//     sub_c9c93:            1
//     sub_c9ca2:            1
//     c9cb6:                1
//     sub_c9cb8:            1
//     c9cc1:                1
//     c9cc5:                1
//     loop_c9cc9:           1
//     c9cd6:                1
//     loop_c9ce8:           1
//     c9ceb:                1
//     c9cfb:                1
//     loop_c9cfd:           1
//     c9d0c:                1
//     c9d29:                1
//     sub_c9d36:            1
//     c9d43:                1
//     c9d57:                1
//     c9d79:                1
//     c9d7b:                1
//     sub_c9d82:            1
//     c9db4:                1
//     c9dba:                1
//     c9dbe:                1
//     c9dbf:                1
//     c9dc0:                1
//     c9dc4:                1
//     c9dd5:                1
//     loop_c9dd7:           1
//     c9de5:                1
//     c9de9:                1
//     c9e02:                1
//     c9e10:                1
//     loop_c9e18:           1
//     loop_c9e23:           1
//     c9e2a:                1
//     loop_c9e32:           1
//     sub_c9e45:            1
//     c9e48:                1
//     c9e4d:                1
//     loop_c9e5b:           1
//     c9e78:                1
//     c9e79:                1
//     c9e90:                1
//     c9ea6:                1
//     c9ead:                1
//     c9eb2:                1
//     c9ec2:                1
//     c9edd:                1
//     loop_c9ef2:           1
//     c9f13:                1
//     c9f3b:                1
//     c9f4f:                1
//     loop_c9f59:           1
//     loop_c9f61:           1
//     c9f64:                1
//     c9f70:                1
//     c9f9d:                1
//     loop_c9faa:           1
//     c9fb6:                1
//     c9fb8:                1
//     loop_c9fbb:           1
//     c9fe6:                1
//     c9ff4:                1
//     ca00f:                1
//     ca03b:                1
//     ca03c:                1
//     ca04a:                1
//     ca04d:                1
//     loop_ca052:           1
//     ca05f:                1
//     loop_ca070:           1
//     ca09f:                1
//     loop_ca0b8:           1
//     ca0c7:                1
//     ca0ee:                1
//     loop_ca0f2:           1
//     loop_ca0f5:           1
//     ca10a:                1
//     loop_ca10f:           1
//     ca116:                1
//     ca131:                1
//     ca137:                1
//     loop_ca13b:           1
//     loop_ca151:           1
//     ca160:                1
//     ca169:                1
//     ca18a:                1
//     ca197:                1
//     ca1af:                1
//     ca1bc:                1
//     ca1c1:                1
//     ca1cd:                1
//     ca1d0:                1
//     ca1ed:                1
//     ca1ef:                1
//     ca204:                1
//     loop_ca207:           1
//     ca212:                1
//     ca21c:                1
//     ca22a:                1
//     ca23e:                1
//     ca24a:                1
//     loop_ca256:           1
//     ca25f:                1
//     loop_ca263:           1
//     ca26f:                1
//     loop_ca27d:           1
//     ca28a:                1
//     ca28c:                1
//     ca290:                1
//     ca2a3:                1
//     ca2b3:                1
//     sub_ca2b8:            1
//     loop_ca2bb:           1
//     ca2c9:                1
//     ca2fd:                1
//     ca325:                1
//     ca333:                1
//     ca33e:                1
//     ca342:                1
//     ca348:                1
//     ca34c:                1
//     ca36b:                1
//     ca37e:                1
//     ca393:                1
//     loop_ca399:           1
//     ca3aa:                1
//     loop_ca3ae:           1
//     sub_ca3b5:            1
//     sub_ca3c0:            1
//     ca3c3:                1
//     sub_ca40a:            1
//     sub_ca419:            1
//     ca42c:                1
//     ca489:                1
//     ca4a3:                1
//     ca4c4:                1
//     ca4ce:                1
//     ca4e8:                1
//     sub_ca503:            1
//     sub_ca507:            1
//     sub_ca50b:            1
//     ca53b:                1
//     ca53e:                1
//     sub_ca541:            1
//     sub_ca572:            1
//     sub_ca576:            1
//     ca57a:                1
//     ca5a7:                1
//     ca5aa:                1
//     sub_ca5b2:            1
//     loop_ca5b6:           1
//     ca5ba:                1
//     sub_ca5bd:            1
//     sub_ca5c1:            1
//     sub_ca5c4:            1
//     sub_ca5d1:            1
//     sub_ca5f2:            1
//     sub_ca5f9:            1
//     loop_ca607:           1
//     ca608:                1
//     ca612:                1
//     loop_ca617:           1
//     ca61d:                1
//     loop_ca62c:           1
//     sub_ca631:            1
//     ca640:                1
//     ca653:                1
//     ca65c:                1
//     ca65e:                1
//     ca676:                1
//     ca68d:                1
//     ca6a2:                1
//     loop_ca6a8:           1
//     ca6ae:                1
//     ca6c4:                1
//     sub_ca6eb:            1
//     sub_ca70d:            1
//     ca70f:                1
//     ca71e:                1
//     ca72f:                1
//     sub_ca731:            1
//     ca739:                1
//     ca73d:                1
//     ca74d:                1
//     loop_ca758:           1
//     ca76b:                1
//     ca776:                1
//     ca797:                1
//     sub_ca7ac:            1
//     sub_ca7af:            1
//     ca7c0:                1
//     la7c9:                1
//     ca7cd:                1
//     ca7ed:                1
//     ca7ef:                1
//     sub_ca80b:            1
//     ca829:                1
//     ca838:                1
//     ca83f:                1
//     ca841:                1
//     ca875:                1
//     ca88a:                1
//     loop_ca88f:           1
//     ca899:                1
//     ca8b0:                1
//     ca8bb:                1
//     loop_ca8cd:           1
//     loop_ca8e0:           1
//     ca8ee:                1
//     sub_ca901:            1
//     ca91f:                1
//     ca92d:                1
//     ca932:                1
//     ca93b:                1
//     ca946:                1
//     ca948:                1
//     ca94b:                1
//     ca959:                1
//     ca962:                1
//     ca965:                1
//     loop_ca969:           1
//     ca978:                1
//     loop_ca982:           1
//     sub_ca9a3:            1
//     sub_ca9c3:            1
//     ca9e0:                1
//     ca9ef:                1
//     ca9f2:                1
//     loop_ca9f5:           1
//     ca9f8:                1
//     caa07:                1
//     sub_caa1a:            1
//     caa33:                1
//     caa3e:                1
//     caa44:                1
//     loop_caa59:           1
//     caa66:                1
//     caa6b:                1
//     caa7d:                1
//     caa9a:                1
//     caab0:                1
//     caac1:                1
//     loop_caaf0:           1
//     sub_cab14:            1
//     cab23:                1
//     cab82:                1
//     cab91:                1
//     sub_caba5:            1
//     cabc9:                1
//     cabd0:                1
//     cabfa:                1
//     cabfd:                1
//     cac02:                1
//     cac0f:                1
//     cac35:                1
//     loop_cac3c:           1
//     cac59:                1
//     cac5b:                1
//     caca0:                1
//     caca3:                1
//     caca9:                1
//     cacaf:                1
//     loop_cacd8:           1
//     cace3:                1
//     loop_cace5:           1
//     loop_caceb:           1
//     cacef:                1
//     sub_cad07:            1
//     cad0d:                1
//     cad14:                1
//     cad19:                1
//     sub_cad1c:            1
//     cad37:                1
//     loop_cad43:           1
//     cad52:                1
//     cad53:                1
//     loop_cad5d:           1
//     loop_cad5e:           1
//     cad75:                1
//     sub_cad8e:            1
//     cad91:                1
//     cad9c:                1
//     cadac:                1
//     cadb6:                1
//     cadbc:                1
//     sub_cadc6:            1
//     loop_cade0:           1
//     cade4:                1
//     cadf9:                1
//     loop_cadfe:           1
//     cae00:                1
//     cae0d:                1
//     cae11:                1
//     loop_cae1e:           1
//     cae31:                1
//     cae3f:                1
//     cae9f:                1
//     caedc:                1
//     loop_caeed:           1
//     caf2f:                1
//     caf3d:                1
//     caf4d:                1
//     loop_caf51:           1
//     caf6d:                1
//     caf83:                1
//     loop_cafa2:           1
//     loop_cafa4:           1
//     cafbb:                1
//     cafbe:                1
//     loop_cafc1:           1
//     cafd5:                1
//     loop_cafe3:           1
//     caffd:                1
//     cb00e:                1
//     loop_cb019:           1
//     cb04a:                1
//     loop_cb066:           1
//     cb08a:                1
//     cb0a6:                1
//     cb0b0:                1
//     cb0be:                1
//     loop_cb0d8:           1
//     cb0e2:                1
//     loop_cb0f2:           1
//     cb106:                1
//     loop_cb146:           1
//     cb1a3:                1
//     cb1a6:                1
//     cb1ab:                1
//     cb1b5:                1
//     cb1ca:                1
//     cb200:                1
//     cb22d:                1
//     cb230:                1
//     cb235:                1
//     loop_cb24d:           1
//     cb256:                1
//     cb257:                1
//     loop_cb259:           1
//     cb266:                1
//     loop_cb307:           1
//     loop_cb32b:           1
//     cb34c:                1
//     cb35c:                1
//     loop_cb35f:           1
//     cb380:                1
//     cb398:                1
//     cb399:                1
//     lb3be:                1
//     cb3cf:                1
//     cb3f4:                1
//     cb3fe:                1
//     cb425:                1
//     cb428:                1
//     cb42b:                1
//     cb445:                1
//     cb454:                1
//     cb45d:                1
//     cb46f:                1
//     cb47f:                1
//     cb495:                1
//     cb497:                1
//     cb4a1:                1
//     loop_cb4a9:           1
//     cb4b8:                1
//     cb4ba:                1
//     cb4bc:                1
//     cb4c2:                1
//     cb4e0:                1
//     loop_cb4f2:           1
//     cb4f8:                1
//     cb50a:                1
//     cb510:                1
//     cb516:                1
//     cb51c:                1
//     cb522:                1
//     loop_cb52d:           1
//     cb530:                1
//     loop_cb536:           1
//     cb5cd:                1
//     cb5f1:                1
//     cb622:                1
//     cb626:                1
//     cb635:                1
//     loop_cb642:           1
//     cb6a7:                1
//     cb6bf:                1
//     cb6d1:                1
//     cb6f7:                1
//     cb70c:                1
//     cb723:                1
//     loop_cb730:           1
//     cb74a:                1
//     cb75a:                1
//     cb762:                1
//     loop_cb769:           1
//     loop_cb771:           1
//     cb7ca:                1
//     cb7d4:                1
//     cb7da:                1
//     cb7e6:                1
//     cb7fa:                1
//     loop_cb806:           1
//     cb824:                1
//     cb833:                1
//     cb847:                1
//     loop_cb84c:           1
//     cb857:                1
//     loop_cb86f:           1
//     loop_cb872:           1
//     cb874:                1
//     cb877:                1
//     loop_cb8ac:           1
//     cb8b5:                1
//     cb8ba:                1
//     loop_cb8c2:           1
//     cb8cc:                1
//     loop_cb8ce:           1
//     cb8da:                1
//     cb8e2:                1
//     cb8f2:                1
//     loop_cb8ff:           1
//     cb909:                1
//     cb938:                1
//     cb941:                1
//     cb94f:                1
//     loop_cb95a:           1
//     cb965:                1
//     cb968:                1
//     loop_cb974:           1
//     cb976:                1
//     cb9ad:                1
//     cb9bf:                1
//     cb9cd:                1
//     loop_cb9f6:           1
//     loop_cba0a:           1
//     cba21:                1
//     cba2b:                1
//     cba31:                1
//     cba35:                1
//     cba43:                1
//     cba63:                1
//     sub_cbaa0:            1
//     cbaa6:                1
//     cbae6:                1
//     cbaf7:                1
//     cbb03:                1
//     cbb0c:                1
//     cbb16:                1
//     sub_cbb38:            1
//     loop_cbb3c:           1
//     cbb45:                1
//     loop_cbb56:           1
//     loop_cbb5d:           1
//     cbb64:                1
//     cbba6:                1
//     cbbaf:                1
//     cbbd0:                1
//     loop_cbbd2:           1
//     sub_cbbeb:            1
//     loop_cbbed:           1
//     loop_cbbf8:           1
//     sub_cbc1e:            1
//     sub_cbc20:            1
//     loop_cbc9d:           1
//     cbca5:                1
//     sub_cbcaa:            1
//     loop_cbcc5:           1
//     cbccd:                1
//     loop_cbcd1:           1
//     cbcd5:                1
//     loop_cbcdc:           1
//     cbce6:                1
//     cbcea:                1
//     loop_cbd19:           1
//     cbd23:                1
//     cbd45:                1
//     cbd64:                1
//     cbd70:                1
//     cbd71:                1
//     loop_cbd88:           1
//     cbd9e:                1
//     loop_cbda0:           1
//     cbdaa:                1
//     sub_cbdb7:            1
//     cbdbd:                1
//     loop_cbdbf:           1
//     cbdc9:                1
//     cbde2:                1
//     sub_cbdf4:            1
//     loop_cbe2d:           1
//     cbe43:                1
//     sub_cbe44:            1
//     cbe45:                1
//     sub_cbe46:            1
//     cbe4e:                1
//     sub_cbe65:            1
//     loop_cbe73:           1
//     sub_cbe8b:            1
//     lbecd:                1
//     cbed3:                1
//     cbed9:                1
//     lbefe:                1
//     cbf00:                1
//     loop_cbf17:           1
//     cbf1a:                1
//     cbf54:                1
//     loop_cbf56:           1
//     sub_cbf66:            1
//     lbf71:                1
//     le09c:                1

// Automatically generated labels:
//     c8040
//     c804c
//     c805e
//     c8067
//     c806a
//     c8070
//     c808f
//     c80a8
//     c80cc
//     c80ff
//     c8151
//     c815d
//     c8168
//     c817a
//     c8187
//     c8190
//     c8197
//     c81ad
//     c81b9
//     c81c8
//     c81ea
//     c81fd
//     c820f
//     c8210
//     c8230
//     c823f
//     c8242
//     c8246
//     c825b
//     c827c
//     c828d
//     c829a
//     c82ae
//     c82be
//     c82c8
//     c82d8
//     c82dd
//     c82f4
//     c82fb
//     c8304
//     c8306
//     c832f
//     c833b
//     c8345
//     c8346
//     c8353
//     c835e
//     c8362
//     c8371
//     c8372
//     c8392
//     c83a6
//     c83c1
//     c83d2
//     c83d5
//     c840a
//     c8456
//     c846a
//     c8491
//     c84a3
//     c84ad
//     c84ce
//     c84f4
//     c89bf
//     c89dd
//     c89f4
//     c8a0b
//     c8a1e
//     c8a28
//     c8a34
//     c8a44
//     c8a4b
//     c8a64
//     c8a68
//     c8a6b
//     c8a79
//     c8a8b
//     c8a8e
//     c8a91
//     c8adf
//     c8aef
//     c8af2
//     c8af5
//     c8b10
//     c8b1b
//     c8b33
//     c8b40
//     c8b4b
//     c8b55
//     c8b5f
//     c8b62
//     c8b63
//     c8b83
//     c8b98
//     c8b9b
//     c8b9c
//     c8ba3
//     c8baf
//     c8bb2
//     c8bb4
//     c8bb6
//     c8bbd
//     c8bc4
//     c8bde
//     c8be9
//     c8bf9
//     c8c01
//     c8c1b
//     c8c1e
//     c8c24
//     c8c31
//     c8c41
//     c8c43
//     c8c55
//     c8c57
//     c8c5e
//     c8c74
//     c8c84
//     c8c87
//     c8c96
//     c8c99
//     c8ca4
//     c8ca7
//     c8cb8
//     c8cbb
//     c8cbd
//     c8cc0
//     c8ce3
//     c8ce6
//     c8cfd
//     c8d16
//     c8d34
//     c8d37
//     c8d44
//     c8d64
//     c8d6e
//     c8d74
//     c8dc9
//     c8dfc
//     c8dff
//     c8e3f
//     c8e51
//     c8e57
//     c8e6c
//     c8e6f
//     c8e7d
//     c8e8d
//     c8e9c
//     c8e9d
//     c8ea6
//     c8eaa
//     c8eb6
//     c8ebe
//     c8ed0
//     c8edc
//     c8ee7
//     c8ef3
//     c8f03
//     c8f1a
//     c8f25
//     c8f26
//     c8f32
//     c8f3d
//     c8f41
//     c8f52
//     c8f5d
//     c8f6d
//     c8f74
//     c8f86
//     c8f87
//     c8f8c
//     c8f92
//     c8f9c
//     c8f9d
//     c8fbb
//     c8fda
//     c8ff2
//     c901c
//     c9033
//     c9045
//     c9048
//     c904b
//     c905c
//     c9069
//     c9073
//     c907d
//     c9082
//     c9086
//     c90a0
//     c90b0
//     c90c5
//     c90c7
//     c90ca
//     c90d0
//     c90d2
//     c90de
//     c90e3
//     c90ea
//     c9108
//     c9112
//     c9123
//     c9135
//     c9146
//     c914f
//     c9155
//     c9164
//     c9193
//     c91ad
//     c91d1
//     c91ee
//     c91ef
//     c9201
//     c9204
//     c9207
//     c922a
//     c9237
//     c924a
//     c9259
//     c926e
//     c9274
//     c9276
//     c9285
//     c9288
//     c929e
//     c92da
//     c92ed
//     c9304
//     c931e
//     c9321
//     c9325
//     c932a
//     c932d
//     c9338
//     c9357
//     c937c
//     c938f
//     c93b4
//     c93c4
//     c93d7
//     c9433
//     c9469
//     c9476
//     c947f
//     c9487
//     c94aa
//     c94b0
//     c94ba
//     c94c8
//     c94d1
//     c94d5
//     c94de
//     c94e4
//     c9509
//     c950d
//     c951d
//     c951f
//     c954b
//     c9555
//     c9579
//     c957c
//     c957f
//     c95be
//     c95e0
//     c95f1
//     c95f9
//     c9606
//     c9628
//     c9632
//     c9635
//     c963b
//     c964e
//     c968d
//     c96b8
//     c96bf
//     c96ca
//     c9700
//     c971b
//     c972c
//     c9735
//     c9753
//     c9784
//     c979b
//     c979c
//     c97d2
//     c97ee
//     c97fe
//     c9801
//     c9808
//     c9866
//     c986a
//     c9877
//     c9889
//     c98bd
//     c98c0
//     c98d7
//     c98dc
//     c990c
//     c9928
//     c9937
//     c9962
//     c996e
//     c9977
//     c9979
//     c997a
//     c9990
//     c999f
//     c99a0
//     c99a2
//     c99ab
//     c99ba
//     c99fa
//     c9a0e
//     c9a14
//     c9a28
//     c9a3a
//     c9a46
//     c9a58
//     c9a63
//     c9a67
//     c9a75
//     c9a76
//     c9a79
//     c9a7b
//     c9a99
//     c9aa0
//     c9aa5
//     c9abc
//     c9ac1
//     c9ae6
//     c9b4c
//     c9b5a
//     c9b78
//     c9b80
//     c9b8a
//     c9bae
//     c9bbc
//     c9bce
//     c9bd2
//     c9bda
//     c9bdb
//     c9c08
//     c9c16
//     c9c24
//     c9c2d
//     c9c3b
//     c9c41
//     c9c52
//     c9c55
//     c9c6a
//     c9c6c
//     c9c74
//     c9c80
//     c9c8a
//     c9cb6
//     c9cc1
//     c9cc5
//     c9cc6
//     c9cd6
//     c9ceb
//     c9ced
//     c9cfb
//     c9d0c
//     c9d29
//     c9d43
//     c9d57
//     c9d75
//     c9d79
//     c9d7b
//     c9d7c
//     c9db4
//     c9dba
//     c9dbe
//     c9dbf
//     c9dc0
//     c9dc1
//     c9dc4
//     c9dd5
//     c9de5
//     c9de9
//     c9e02
//     c9e10
//     c9e2a
//     c9e48
//     c9e4d
//     c9e78
//     c9e79
//     c9e83
//     c9e85
//     c9e90
//     c9ea6
//     c9ead
//     c9eb2
//     c9ec2
//     c9ecb
//     c9edd
//     c9f0a
//     c9f13
//     c9f3b
//     c9f4c
//     c9f4f
//     c9f55
//     c9f64
//     c9f70
//     c9f9a
//     c9f9d
//     c9fa7
//     c9fb6
//     c9fb8
//     c9fe6
//     c9ff4
//     ca00f
//     ca029
//     ca03b
//     ca03c
//     ca04a
//     ca04d
//     ca05b
//     ca05f
//     ca06f
//     ca081
//     ca09c
//     ca09f
//     ca0c5
//     ca0c7
//     ca0d1
//     ca0ee
//     ca10a
//     ca116
//     ca126
//     ca131
//     ca137
//     ca158
//     ca160
//     ca169
//     ca174
//     ca18a
//     ca197
//     ca19b
//     ca19d
//     ca1af
//     ca1bc
//     ca1c1
//     ca1cd
//     ca1d0
//     ca1d4
//     ca1ed
//     ca1ef
//     ca204
//     ca212
//     ca21c
//     ca220
//     ca22a
//     ca23e
//     ca24a
//     ca25f
//     ca261
//     ca26f
//     ca28a
//     ca28c
//     ca290
//     ca2a3
//     ca2b3
//     ca2b7
//     ca2c9
//     ca2cc
//     ca2d6
//     ca2fb
//     ca2fd
//     ca303
//     ca325
//     ca333
//     ca33e
//     ca342
//     ca348
//     ca34c
//     ca357
//     ca36b
//     ca37e
//     ca385
//     ca393
//     ca3a1
//     ca3a7
//     ca3aa
//     ca3c3
//     ca3e5
//     ca3e9
//     ca426
//     ca42c
//     ca446
//     ca452
//     ca47a
//     ca489
//     ca4a3
//     ca4a9
//     ca4b9
//     ca4c4
//     ca4ce
//     ca4e8
//     ca4f5
//     ca513
//     ca53b
//     ca53e
//     ca547
//     ca57a
//     ca57e
//     ca5a7
//     ca5aa
//     ca5ba
//     ca608
//     ca612
//     ca61d
//     ca622
//     ca634
//     ca640
//     ca653
//     ca65c
//     ca65e
//     ca674
//     ca676
//     ca68d
//     ca6a2
//     ca6ae
//     ca6c4
//     ca6ce
//     ca6e4
//     ca6ed
//     ca6f2
//     ca704
//     ca70a
//     ca70f
//     ca712
//     ca71e
//     ca725
//     ca72b
//     ca72f
//     ca739
//     ca73b
//     ca73d
//     ca74d
//     ca76b
//     ca776
//     ca797
//     ca79b
//     ca7c0
//     ca7cd
//     ca7db
//     ca7ed
//     ca7ef
//     ca805
//     ca829
//     ca838
//     ca83f
//     ca841
//     ca857
//     ca875
//     ca878
//     ca88a
//     ca899
//     ca8b0
//     ca8bb
//     ca8ee
//     ca91f
//     ca92d
//     ca932
//     ca93b
//     ca946
//     ca948
//     ca94b
//     ca959
//     ca962
//     ca965
//     ca978
//     ca9c1
//     ca9e0
//     ca9ef
//     ca9f2
//     ca9f8
//     caa07
//     caa2c
//     caa33
//     caa3e
//     caa44
//     caa66
//     caa6b
//     caa7a
//     caa7d
//     caa9a
//     caab0
//     caac1
//     caae8
//     cab1a
//     cab23
//     cab41
//     cab82
//     cab91
//     cab9d
//     cabc9
//     cabd0
//     cabdd
//     cabfa
//     cabfd
//     cac02
//     cac0f
//     cac1c
//     cac2b
//     cac2d
//     cac35
//     cac38
//     cac59
//     cac5b
//     caca0
//     caca3
//     caca9
//     cacaf
//     cacd2
//     cace3
//     cace8
//     cacef
//     cacfd
//     cad0d
//     cad10
//     cad14
//     cad19
//     cad20
//     cad37
//     cad52
//     cad53
//     cad5b
//     cad75
//     cad78
//     cad91
//     cad9c
//     cadac
//     cadb6
//     cadbc
//     cadce
//     cade4
//     cadee
//     cadf9
//     cae00
//     cae0d
//     cae11
//     cae31
//     cae3f
//     cae56
//     cae60
//     cae62
//     cae9f
//     caeb4
//     caed7
//     caed9
//     caedb
//     caedc
//     caf03
//     caf07
//     caf2f
//     caf3d
//     caf4d
//     caf6d
//     caf83
//     caf88
//     cafb8
//     cafbb
//     cafbe
//     cafd5
//     cafdb
//     cafee
//     caffd
//     cb00e
//     cb04a
//     cb08a
//     cb0a6
//     cb0b0
//     cb0be
//     cb0e2
//     cb106
//     cb109
//     cb169
//     cb17e
//     cb1a3
//     cb1a6
//     cb1ab
//     cb1b5
//     cb1ca
//     cb1db
//     cb1de
//     cb200
//     cb205
//     cb22d
//     cb230
//     cb235
//     cb256
//     cb257
//     cb266
//     cb341
//     cb34c
//     cb35c
//     cb380
//     cb398
//     cb399
//     cb39e
//     cb3cf
//     cb3f4
//     cb3fb
//     cb3fe
//     cb425
//     cb428
//     cb42b
//     cb445
//     cb451
//     cb454
//     cb45d
//     cb46f
//     cb47f
//     cb485
//     cb495
//     cb497
//     cb4a1
//     cb4a7
//     cb4b8
//     cb4ba
//     cb4bc
//     cb4c2
//     cb4e0
//     cb4e2
//     cb4f8
//     cb50a
//     cb510
//     cb516
//     cb51c
//     cb522
//     cb530
//     cb54b
//     cb563
//     cb56a
//     cb5cd
//     cb5cf
//     cb5df
//     cb5f1
//     cb622
//     cb626
//     cb629
//     cb635
//     cb6a7
//     cb6bf
//     cb6d1
//     cb6f7
//     cb70c
//     cb723
//     cb74a
//     cb753
//     cb75a
//     cb762
//     cb7a4
//     cb7b3
//     cb7ca
//     cb7d4
//     cb7da
//     cb7e6
//     cb7fa
//     cb805
//     cb81a
//     cb824
//     cb833
//     cb847
//     cb857
//     cb866
//     cb86c
//     cb874
//     cb877
//     cb87f
//     cb8b5
//     cb8ba
//     cb8cc
//     cb8da
//     cb8e2
//     cb8f2
//     cb8fa
//     cb909
//     cb938
//     cb941
//     cb94f
//     cb965
//     cb968
//     cb976
//     cb997
//     cb9a5
//     cb9ad
//     cb9bf
//     cb9cd
//     cb9ff
//     cba21
//     cba2b
//     cba31
//     cba35
//     cba43
//     cba46
//     cba63
//     cbaa6
//     cbac5
//     cbae6
//     cbae8
//     cbaf7
//     cbb03
//     cbb0c
//     cbb16
//     cbb1a
//     cbb45
//     cbb64
//     cbb9b
//     cbba6
//     cbbaf
//     cbbd0
//     cbc3a
//     cbc66
//     cbc91
//     cbca5
//     cbccd
//     cbcd5
//     cbce6
//     cbcea
//     cbd0e
//     cbd21
//     cbd23
//     cbd3a
//     cbd3d
//     cbd45
//     cbd64
//     cbd70
//     cbd71
//     cbd74
//     cbd86
//     cbd9e
//     cbdaa
//     cbdbd
//     cbdc9
//     cbdd2
//     cbdd4
//     cbde2
//     cbdff
//     cbe05
//     cbe43
//     cbe45
//     cbe4e
//     cbe51
//     cbed3
//     cbed9
//     cbeeb
//     cbf00
//     cbf1a
//     cbf3d
//     cbf54
//     l0000
//     l0001
//     l0002
//     l0003
//     l0004
//     l0005
//     l0006
//     l0007
//     l0008
//     l0009
//     l000a
//     l000b
//     l000c
//     l000d
//     l000e
//     l000f
//     l0010
//     l0011
//     l0012
//     l0013
//     l0014
//     l0015
//     l0016
//     l0017
//     l0018
//     l0019
//     l001a
//     l001b
//     l001c
//     l001d
//     l001e
//     l001f
//     l0020
//     l0021
//     l0022
//     l0023
//     l0024
//     l0025
//     l0026
//     l0027
//     l0028
//     l0029
//     l002a
//     l002b
//     l002c
//     l002d
//     l002e
//     l002f
//     l0030
//     l0031
//     l0032
//     l0033
//     l0034
//     l0035
//     l0036
//     l0037
//     l0038
//     l0039
//     l003a
//     l003b
//     l003c
//     l003d
//     l003e
//     l003f
//     l0040
//     l0041
//     l0042
//     l0043
//     l0044
//     l0045
//     l0046
//     l0047
//     l0048
//     l0049
//     l004a
//     l004b
//     l004c
//     l004d
//     l004e
//     l0061
//     l0064
//     l0066
//     l00c1
//     l00e1
//     l00e6
//     l00fd
//     l00fe
//     l00ff
//     l0100
//     l0106
//     l01ff
//     l0400
//     l0401
//     l0402
//     l0403
//     l0404
//     l040c
//     l043c
//     l043d
//     l0440
//     l0441
//     l0460
//     l0464
//     l0469
//     l046c
//     l047f
//     l04ff
//     l0500
//     l0513
//     l0514
//     l0519
//     l051a
//     l051b
//     l051c
//     l051d
//     l051e
//     l051f
//     l0521
//     l0522
//     l0523
//     l0524
//     l0526
//     l0527
//     l0528
//     l0529
//     l052a
//     l05cb
//     l05cc
//     l05e5
//     l05e6
//     l05ff
//     l0600
//     l0700
//     l07ef
//     l0bb1
//     l0e4e
//     l4e4e
//     l5252
//     l6142
//     l7461
//     l7f0e
//     l7f13
//     l80c2
//     l80dd
//     l80e2
//     l880a
//     l8826
//     l8909
//     l894e
//     l8993
//     la7c9
//     lb3be
//     lbecd
//     lbefe
//     lbf71
//     le09c
//     loop_c8057
//     loop_c8091
//     loop_c8176
//     loop_c819f
//     loop_c81e1
//     loop_c8206
//     loop_c8235
//     loop_c8252
//     loop_c82b2
//     loop_c82f7
//     loop_c8314
//     loop_c8331
//     loop_c8365
//     loop_c839e
//     loop_c8428
//     loop_c8440
//     loop_c845b
//     loop_c847b
//     loop_c8496
//     loop_c89d7
//     loop_c8a11
//     loop_c8a2a
//     loop_c8a3c
//     loop_c8a4f
//     loop_c8a54
//     loop_c8a5e
//     loop_c8a6e
//     loop_c8ac3
//     loop_c8ad4
//     loop_c8ae3
//     loop_c8b9e
//     loop_c8c15
//     loop_c8c9b
//     loop_c8d71
//     loop_c8db7
//     loop_c8e16
//     loop_c8e91
//     loop_c8ee2
//     loop_c8f0b
//     loop_c8f7a
//     loop_c8fa7
//     loop_c9004
//     loop_c9024
//     loop_c9078
//     loop_c90a6
//     loop_c90ad
//     loop_c91e4
//     loop_c91f6
//     loop_c9220
//     loop_c922c
//     loop_c923f
//     loop_c9260
//     loop_c9268
//     loop_c928b
//     loop_c92d4
//     loop_c92e0
//     loop_c92f0
//     loop_c9355
//     loop_c9356
//     loop_c9368
//     loop_c93fa
//     loop_c9455
//     loop_c948a
//     loop_c95cf
//     loop_c9724
//     loop_c9728
//     loop_c9750
//     loop_c97c0
//     loop_c97c6
//     loop_c98cb
//     loop_c98df
//     loop_c9904
//     loop_c992a
//     loop_c9948
//     loop_c9954
//     loop_c99cf
//     loop_c9ab6
//     loop_c9be0
//     loop_c9c6d
//     loop_c9c92
//     loop_c9cc9
//     loop_c9ce8
//     loop_c9cfd
//     loop_c9dd7
//     loop_c9e18
//     loop_c9e23
//     loop_c9e32
//     loop_c9e5b
//     loop_c9ef2
//     loop_c9f59
//     loop_c9f61
//     loop_c9faa
//     loop_c9fbb
//     loop_ca052
//     loop_ca070
//     loop_ca0b8
//     loop_ca0f2
//     loop_ca0f5
//     loop_ca10f
//     loop_ca13b
//     loop_ca151
//     loop_ca207
//     loop_ca256
//     loop_ca263
//     loop_ca27d
//     loop_ca2bb
//     loop_ca399
//     loop_ca3ae
//     loop_ca5b6
//     loop_ca607
//     loop_ca617
//     loop_ca62c
//     loop_ca6a8
//     loop_ca758
//     loop_ca88f
//     loop_ca8cd
//     loop_ca8e0
//     loop_ca969
//     loop_ca982
//     loop_ca9f5
//     loop_caa59
//     loop_caaf0
//     loop_cac3c
//     loop_cacd8
//     loop_cace5
//     loop_caceb
//     loop_cad43
//     loop_cad5d
//     loop_cad5e
//     loop_cade0
//     loop_cadfe
//     loop_cae1e
//     loop_caeed
//     loop_caf51
//     loop_cafa2
//     loop_cafa4
//     loop_cafc1
//     loop_cafe3
//     loop_cb019
//     loop_cb066
//     loop_cb0d8
//     loop_cb0f2
//     loop_cb146
//     loop_cb24d
//     loop_cb259
//     loop_cb307
//     loop_cb32b
//     loop_cb35f
//     loop_cb4a9
//     loop_cb4f2
//     loop_cb52d
//     loop_cb536
//     loop_cb642
//     loop_cb730
//     loop_cb769
//     loop_cb771
//     loop_cb806
//     loop_cb84c
//     loop_cb86f
//     loop_cb872
//     loop_cb8ac
//     loop_cb8c2
//     loop_cb8ce
//     loop_cb8ff
//     loop_cb95a
//     loop_cb974
//     loop_cb9f6
//     loop_cba0a
//     loop_cbb3c
//     loop_cbb56
//     loop_cbb5d
//     loop_cbbd2
//     loop_cbbed
//     loop_cbbf8
//     loop_cbc9d
//     loop_cbcc5
//     loop_cbcd1
//     loop_cbcdc
//     loop_cbd19
//     loop_cbd88
//     loop_cbda0
//     loop_cbdbf
//     loop_cbe2d
//     loop_cbe73
//     loop_cbf17
//     loop_cbf56
//     sub_c80d8
//     sub_c8139
//     sub_c8149
//     sub_c8191
//     sub_c81bd
//     sub_c8287
//     sub_c828a
//     sub_c82e6
//     sub_c8349
//     sub_c834b
//     sub_c834f
//     sub_c83aa
//     sub_c83c2
//     sub_c83d3
//     sub_c8429
//     sub_c8984
//     sub_c8992
//     sub_c8aa8
//     sub_c8d86
//     sub_c8d89
//     sub_c8d8c
//     sub_c8d94
//     sub_c8d9c
//     sub_c8da2
//     sub_c8da8
//     sub_c8dc1
//     sub_c8e1f
//     sub_c8e41
//     sub_c8e58
//     sub_c8e5f
//     sub_c8e66
//     sub_c8ea4
//     sub_c8fa8
//     sub_c8fae
//     sub_c8fb4
//     sub_c8fc0
//     sub_c8fc5
//     sub_c8fd7
//     sub_c8fe5
//     sub_c8fea
//     sub_c9042
//     sub_c910d
//     sub_c9149
//     sub_c916e
//     sub_c9171
//     sub_c9250
//     sub_c9330
//     sub_c9332
//     sub_c933d
//     sub_c935c
//     sub_c9381
//     sub_c93c7
//     sub_c93da
//     sub_c9410
//     sub_c9436
//     sub_c943e
//     sub_c9447
//     sub_c953d
//     sub_c954c
//     sub_c95c6
//     sub_c95cb
//     sub_c96d4
//     sub_c96e5
//     sub_c96f9
//     sub_c9703
//     sub_c970b
//     sub_c973e
//     sub_c9769
//     sub_c976c
//     sub_c9771
//     sub_c9774
//     sub_c9779
//     sub_c977e
//     sub_c9781
//     sub_c9783
//     sub_c9788
//     sub_c978b
//     sub_c979f
//     sub_c97a2
//     sub_c97a9
//     sub_c9810
//     sub_c9824
//     sub_c982e
//     sub_c9871
//     sub_c9875
//     sub_c9880
//     sub_c98af
//     sub_c98b6
//     sub_c98c3
//     sub_c990f
//     sub_c9914
//     sub_c9923
//     sub_c9952
//     sub_c995a
//     sub_c997d
//     sub_c99c4
//     sub_c99d0
//     sub_c99d6
//     sub_c99d8
//     sub_c9ac9
//     sub_c9b97
//     sub_c9bba
//     sub_c9be2
//     sub_c9bee
//     sub_c9c0a
//     sub_c9c4a
//     sub_c9c5a
//     sub_c9c5e
//     sub_c9c8e
//     sub_c9c93
//     sub_c9ca2
//     sub_c9cb8
//     sub_c9ccc
//     sub_c9d0f
//     sub_c9d36
//     sub_c9d7f
//     sub_c9d81
//     sub_c9d82
//     sub_c9df3
//     sub_c9dff
//     sub_c9e3f
//     sub_c9e45
//     sub_c9e6d
//     sub_c9f07
//     sub_ca023
//     sub_ca026
//     sub_ca069
//     sub_ca06c
//     sub_ca0e8
//     sub_ca0ec
//     sub_ca181
//     sub_ca2b8
//     sub_ca2ca
//     sub_ca2dd
//     sub_ca3b5
//     sub_ca3c0
//     sub_ca3ed
//     sub_ca40a
//     sub_ca419
//     sub_ca46b
//     sub_ca4ba
//     sub_ca503
//     sub_ca507
//     sub_ca50b
//     sub_ca514
//     sub_ca541
//     sub_ca545
//     sub_ca54d
//     sub_ca56d
//     sub_ca572
//     sub_ca576
//     sub_ca5ad
//     sub_ca5b2
//     sub_ca5b4
//     sub_ca5bb
//     sub_ca5bd
//     sub_ca5c1
//     sub_ca5c4
//     sub_ca5cc
//     sub_ca5cf
//     sub_ca5d1
//     sub_ca5e3
//     sub_ca5f2
//     sub_ca5f4
//     sub_ca5f9
//     sub_ca62f
//     sub_ca631
//     sub_ca6cb
//     sub_ca6eb
//     sub_ca6fc
//     sub_ca6ff
//     sub_ca70d
//     sub_ca731
//     sub_ca73e
//     sub_ca7ac
//     sub_ca7af
//     sub_ca808
//     sub_ca80b
//     sub_ca8b3
//     sub_ca8b9
//     sub_ca901
//     sub_ca919
//     sub_ca94f
//     sub_ca954
//     sub_ca96b
//     sub_ca97b
//     sub_ca9a3
//     sub_ca9b5
//     sub_ca9bc
//     sub_ca9c3
//     sub_ca9ca
//     sub_ca9d1
//     sub_caa17
//     sub_caa1a
//     sub_caa50
//     sub_caa55
//     sub_caa6e
//     sub_caacb
//     sub_caad8
//     sub_caaeb
//     sub_caafb
//     sub_cab01
//     sub_cab14
//     sub_cab1d
//     sub_cab21
//     sub_cab2f
//     sub_cab37
//     sub_cab3b
//     sub_cab3f
//     sub_cab54
//     sub_cab5c
//     sub_caba0
//     sub_caba5
//     sub_cabe1
//     sub_cac03
//     sub_cac12
//     sub_cac1f
//     sub_cac46
//     sub_cac5d
//     sub_cac7f
//     sub_cad00
//     sub_cad07
//     sub_cad1c
//     sub_cad3a
//     sub_cad8e
//     sub_cadc6
//     sub_cae34
//     sub_cae41
//     sub_cae50
//     sub_cae59
//     sub_cae6d
//     sub_cae71
//     sub_cae77
//     sub_cae7d
//     sub_cae83
//     sub_cae87
//     sub_cae8c
//     sub_caeb1
//     sub_caebb
//     sub_caebc
//     sub_caefb
//     sub_caf0a
//     sub_caf61
//     sub_caf8b
//     sub_cb055
//     sub_cb057
//     sub_cb1bf
//     sub_cb269
//     sub_cb2e0
//     sub_cb302
//     sub_cb326
//     sub_cb351
//     sub_cb362
//     sub_cb365
//     sub_cb372
//     sub_cb3c8
//     sub_cb412
//     sub_cb649
//     sub_cb709
//     sub_cb737
//     sub_cb74d
//     sub_cb78b
//     sub_cb84d
//     sub_cb85a
//     sub_cb896
//     sub_cb8e6
//     sub_cb97d
//     sub_cb9dc
//     sub_cba47
//     sub_cba6c
//     sub_cba6e
//     sub_cba7a
//     sub_cba88
//     sub_cbaa0
//     sub_cbaa4
//     sub_cbac2
//     sub_cbac8
//     sub_cbb0f
//     sub_cbb1b
//     sub_cbb38
//     sub_cbbdc
//     sub_cbbeb
//     sub_cbbff
//     sub_cbc18
//     sub_cbc1e
//     sub_cbc20
//     sub_cbc24
//     sub_cbc36
//     sub_cbc62
//     sub_cbc83
//     sub_cbcaa
//     sub_cbd12
//     sub_cbd26
//     sub_cbd46
//     sub_cbd48
//     sub_cbd5e
//     sub_cbd77
//     sub_cbdac
//     sub_cbdb7
//     sub_cbdcf
//     sub_cbdd8
//     sub_cbdf3
//     sub_cbdf4
//     sub_cbe06
//     sub_cbe17
//     sub_cbe25
//     sub_cbe44
//     sub_cbe46
//     sub_cbe65
//     sub_cbe6b
//     sub_cbe76
//     sub_cbe81
//     sub_cbe8b
//     sub_cbe95
//     sub_cbec7
//     sub_cbecc
//     sub_cbed7
//     sub_cbeee
//     sub_cbefd
//     sub_cbf0f
//     sub_cbf22
//     sub_cbf2f
//     sub_cbf3e
//     sub_cbf66
