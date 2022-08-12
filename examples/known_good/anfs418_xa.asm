// Constants
inkey_key_ctrl                                  = 254
osbyte_acknowledge_escape                       = 126
osbyte_close_spool_exec                         = 119
osbyte_explode_chars                            = 20
osbyte_flush_buffer_class                       = 15
osbyte_insert_input_buffer                      = 153
osbyte_issue_service_request                    = 143
osbyte_read_os_version                          = 0
osbyte_read_write_econet_keyboard_disable       = 201
osbyte_read_write_econet_os_call_interception   = 206
osbyte_scan_keyboard                            = 121
osbyte_scan_keyboard_from_16                    = 122
osbyte_vsync                                    = 19
osbyte_write_keys_pressed                       = 120
osfile_read_catalogue_info                      = 5
osfind_close                                    = 0
osfind_open_input                               = 64
osword_read_palette                             = 11
service_claim_absolute_workspace                = 1
service_vectors_changed                         = 15

// Memory locations
l0000               = $0000
l0001               = $0001
l0012               = $0012
l0013               = $0013
l0014               = $0014
l0015               = $0015
l0016               = $0016
l0032               = $0032
l0053               = $0053
l0054               = $0054
l0055               = $0055
l0056               = $0056
l0063               = $0063
l0078               = $0078
l0098               = $0098
l0099               = $0099
l009a               = $009a
l009b               = $009b
l009c               = $009c
l009d               = $009d
l009e               = $009e
l009f               = $009f
l00a0               = $00a0
l00a1               = $00a1
l00a2               = $00a2
l00a3               = $00a3
l00a4               = $00a4
l00a5               = $00a5
l00a6               = $00a6
l00a7               = $00a7
l00a8               = $00a8
l00a9               = $00a9
l00aa               = $00aa
l00ab               = $00ab
l00ac               = $00ac
l00ad               = $00ad
l00ae               = $00ae
l00af               = $00af
l00b0               = $00b0
l00b1               = $00b1
l00b2               = $00b2
l00b3               = $00b3
l00b4               = $00b4
l00b5               = $00b5
l00b6               = $00b6
l00b7               = $00b7
l00b8               = $00b8
l00b9               = $00b9
l00ba               = $00ba
l00bb               = $00bb
l00bc               = $00bc
l00bd               = $00bd
l00be               = $00be
l00bf               = $00bf
l00c0               = $00c0
l00c1               = $00c1
l00c2               = $00c2
l00c4               = $00c4
l00c7               = $00c7
l00c8               = $00c8
l00cc               = $00cc
l00cd               = $00cd
l00d0               = $00d0
l00ed               = $00ed
l00ef               = $00ef
l00f0               = $00f0
os_text_ptr         = $00f2
l00f3               = $00f3
romsel_copy         = $00f4
osrdsc_ptr          = $00f6
l00f7               = $00f7
l00fd               = $00fd
l00ff               = $00ff
l0100               = $0100
l0101               = $0101
l0102               = $0102
l0103               = $0103
l0104               = $0104
brkv                = $0202
filev               = $0212
fscv                = $021e
evntv               = $0220
netv                = $0224
l026a               = $026a
l028d               = $028d
l02a0               = $02a0
l0350               = $0350
l0351               = $0351
l0355               = $0355
l04c7               = $04c7
l04ce               = $04ce
l0500               = $0500
l0518               = $0518
l0600               = $0600
l0601               = $0601
l0695               = $0695
l069e               = $069e
l0a00               = $0a00
l0a81               = $0a81
l0cff               = $0cff
l0d07               = $0d07
l0d0c               = $0d0c
l0d0d               = $0d0d
l0d0e               = $0d0e
l0d11               = $0d11
l0d1a               = $0d1a
l0d1e               = $0d1e
l0d20               = $0d20
l0d21               = $0d21
l0d22               = $0d22
l0d23               = $0d23
l0d24               = $0d24
l0d25               = $0d25
l0d26               = $0d26
l0d3e               = $0d3e
l0d3f               = $0d3f
l0d40               = $0d40
l0d41               = $0d41
l0d60               = $0d60
l0d61               = $0d61
l0d62               = $0d62
l0d63               = $0d63
l0d64               = $0d64
l0d65               = $0d65
l0d68               = $0d68
l0d69               = $0d69
l0d6a               = $0d6a
l0d6b               = $0d6b
l0d6c               = $0d6c
l0d6d               = $0d6d
l0d6e               = $0d6e
l0d6f               = $0d6f
l0d71               = $0d71
l0df0               = $0df0
l0dfe               = $0dfe
l0e00               = $0e00
l0e01               = $0e01
l0e02               = $0e02
l0e03               = $0e03
l0e04               = $0e04
l0e05               = $0e05
l0e06               = $0e06
l0e07               = $0e07
l0e08               = $0e08
l0e09               = $0e09
l0e0a               = $0e0a
l0e0b               = $0e0b
l0e14               = $0e14
l0e2f               = $0e2f
l0e30               = $0e30
l0e31               = $0e31
l0e32               = $0e32
l0e38               = $0e38
l0e81               = $0e81
l0ef7               = $0ef7
l0f00               = $0f00
l0f01               = $0f01
l0f02               = $0f02
l0f03               = $0f03
l0f04               = $0f04
l0f05               = $0f05
l0f06               = $0f06
l0f07               = $0f07
l0f08               = $0f08
l0f09               = $0f09
l0f0a               = $0f0a
l0f0b               = $0f0b
l0f0c               = $0f0c
l0f0d               = $0f0d
l0f0e               = $0f0e
l0f10               = $0f10
l0f11               = $0f11
l0f12               = $0f12
l0f13               = $0f13
l0f14               = $0f14
l0f2f               = $0f2f
l0f30               = $0f30
l0fc8               = $0fc8
l0fdc               = $0fdc
l0fdd               = $0fdd
l0fde               = $0fde
l0fdf               = $0fdf
l0fe0               = $0fe0
l0ff0               = $0ff0
l0fff               = $0fff
l1000               = $1000
l1010               = $1010
l1020               = $1020
l1030               = $1030
l1040               = $1040
l1050               = $1050
l1060               = $1060
l1070               = $1070
l1071               = $1071
l1072               = $1072
l1073               = $1073
l1074               = $1074
l1078               = $1078
l1088               = $1088
l1098               = $1098
l10a8               = $10a8
l10b8               = $10b8
l10c8               = $10c8
l10c9               = $10c9
l10ca               = $10ca
l10cb               = $10cb
l10cc               = $10cc
l10cd               = $10cd
l10ce               = $10ce
l10cf               = $10cf
l10d0               = $10d0
l10d1               = $10d1
l10d4               = $10d4
l10d5               = $10d5
l10d6               = $10d6
l10d7               = $10d7
l10d8               = $10d8
l10d9               = $10d9
l10f3               = $10f3
lfe18               = $fe18
video_ula_control   = $fe20
romsel              = $fe30
system_via_sr       = $fe4a
system_via_acr      = $fe4b
system_via_ifr      = $fe4d
system_via_ier      = $fe4e
lfe87               = $fe87
lfea0               = $fea0
lfea1               = $fea1
lfea2               = $fea2
lfea3               = $fea3
tube_host_r1_status = $fee0
tube_host_r1_data   = $fee1
tube_host_r3_data   = $fee5
tube_host_r4_status = $fee6
lffb0               = $ffb0
osrdsc              = $ffb9
lffbd               = $ffbd
gsinit              = $ffc2
gsread              = $ffc5
osfind              = $ffce
osbget              = $ffd7
osargs              = $ffda
osfile              = $ffdd
osrdch              = $ffe0
osasci              = $ffe3
osnewl              = $ffe7
oswrch              = $ffee
osword              = $fff1
osbyte              = $fff4
oscli               = $fff7

    * = $8000

// Sideways ROM header
// $8000 referenced 1 time by $bfe6
rom_header
language_entry
pydis_start
l8001 = rom_header+1
l8002 = rom_header+2
    .byt   0, $42, $43                                                // 8000: 00 42 43    .BC
// $8001 referenced 1 time by $bfeb
// $8002 referenced 1 time by $bff0

// $8003 referenced 1 time by $bff5
service_entry
l8004 = service_entry+1
    jmp service_handler                                               // 8003: 4c 15 8a    L..

// $8004 referenced 1 time by $bff8
// $8006 referenced 1 time by $bfda
rom_type
    .byt $82                                                          // 8006: 82          .
// $8007 referenced 1 time by $bfe2
copyright_offset
    .byt copyright - rom_header                                       // 8007: 19          .
binary_version
    .byt 4                                                            // 8008: 04          .
title
    .asc "Acorn ANFS 4.18"                                            // 8009: 41 63 6f... Aco
version
    .byt 0                                                            // 8018: 00          .
copyright
    .byt 0                                                            // 8019: 00          .
    .asc "(C)1985 Acorn", 0                                           // 801a: 28 43 29... (C)

sub_c8028
    lda #4                                                            // 8028: a9 04       ..
    bit system_via_ifr                                                // 802a: 2c 4d fe    ,M.
    bne c8032                                                         // 802d: d0 03       ..
    lda #5                                                            // 802f: a9 05       ..
    rts                                                               // 8031: 60          `

// $8032 referenced 1 time by $802d
c8032
    txa                                                               // 8032: 8a          .
    pha                                                               // 8033: 48          H
    tya                                                               // 8034: 98          .
    pha                                                               // 8035: 48          H
    lda system_via_acr                                                // 8036: ad 4b fe    .K.
    and #$e3                                                          // 8039: 29 e3       ).
    ora l0d64                                                         // 803b: 0d 64 0d    .d.
    sta system_via_acr                                                // 803e: 8d 4b fe    .K.
    lda system_via_sr                                                 // 8041: ad 4a fe    .J.
    lda #4                                                            // 8044: a9 04       ..
    sta system_via_ifr                                                // 8046: 8d 4d fe    .M.
    sta system_via_ier                                                // 8049: 8d 4e fe    .N.
    ldy l0d65                                                         // 804c: ac 65 0d    .e.
    tya                                                               // 804f: 98          .
    bmi c805d                                                         // 8050: 30 0b       0.
    lda #$fe                                                          // 8052: a9 fe       ..
    jsr sub_c805a                                                     // 8054: 20 5a 80     Z.
    jmp c8585                                                         // 8057: 4c 85 85    L..

// $805a referenced 1 time by $8054
sub_c805a
    jmp (evntv)                                                       // 805a: 6c 20 02    l .

// $805d referenced 1 time by $8050
c805d
    cpy #$86                                                          // 805d: c0 86       ..
    bcs c806c                                                         // 805f: b0 0b       ..
    lda l0d68                                                         // 8061: ad 68 0d    .h.
    sta l0d69                                                         // 8064: 8d 69 0d    .i.
    ora #$1c                                                          // 8067: 09 1c       ..
    sta l0d68                                                         // 8069: 8d 68 0d    .h.
// $806c referenced 1 time by $805f
c806c
    lda #$85                                                          // 806c: a9 85       ..
    pha                                                               // 806e: 48          H
    lda l84bb,y                                                       // 806f: b9 bb 84    ...
    pha                                                               // 8072: 48          H
    rts                                                               // 8073: 60          `

// $8074 referenced 1 time by $8f5d
sub_c8074
    bit lfe18                                                         // 8074: 2c 18 fe    ,..
    jsr sub_c8969                                                     // 8077: 20 69 89     i.
    lda #$ea                                                          // 807a: a9 ea       ..
    ldx #0                                                            // 807c: a2 00       ..
    stx l0d62                                                         // 807e: 8e 62 0d    .b.
    jsr sub_c8e83                                                     // 8081: 20 83 8e     ..
    stx l0d63                                                         // 8084: 8e 63 0d    .c.
    lda #$8f                                                          // 8087: a9 8f       ..
    ldx #$0c                                                          // 8089: a2 0c       ..
    jsr sub_c8e85                                                     // 808b: 20 85 8e     ..
    ldy #5                                                            // 808e: a0 05       ..
sub_c8090
    cpy #5                                                            // 8090: c0 05       ..
    bne c80bd                                                         // 8092: d0 29       .)
    ldy #$20 // ' '                                                   // 8094: a0 20       .
// $8096 referenced 1 time by $809d
loop_c8096
    lda l89a6,y                                                       // 8096: b9 a6 89    ...
    sta l0cff,y                                                       // 8099: 99 ff 0c    ...
    dey                                                               // 809c: 88          .
    bne loop_c8096                                                    // 809d: d0 f7       ..
    lda romsel_copy                                                   // 809f: a5 f4       ..
    sta l0d07                                                         // 80a1: 8d 07 0d    ...
    sty l0d23                                                         // 80a4: 8c 23 0d    .#.
    sty l0099                                                         // 80a7: 84 99       ..
    sty l0d65                                                         // 80a9: 8c 65 0d    .e.
    ldy lfe18                                                         // 80ac: ac 18 fe    ...
    sty l0d22                                                         // 80af: 8c 22 0d    .".
    lda #$80                                                          // 80b2: a9 80       ..
    sta l0d60                                                         // 80b4: 8d 60 0d    .`.
    sta l0d62                                                         // 80b7: 8d 62 0d    .b.
    bit video_ula_control                                             // 80ba: 2c 20 fe    , .
// $80bd referenced 1 time by $8092
c80bd
    rts                                                               // 80bd: 60          `

// $80be referenced 1 time by $89b2
c80be
    lda #1                                                            // 80be: a9 01       ..
    bit lfea1                                                         // 80c0: 2c a1 fe    ,..
    beq c80fd                                                         // 80c3: f0 38       .8
    lda lfea2                                                         // 80c5: ad a2 fe    ...
    cmp lfe18                                                         // 80c8: cd 18 fe    ...
    beq c80d6                                                         // 80cb: f0 09       ..
    cmp #$ff                                                          // 80cd: c9 ff       ..
    bne c80e9                                                         // 80cf: d0 18       ..
    lda #$40 // '@'                                                   // 80d1: a9 40       .@
    sta l0d3e                                                         // 80d3: 8d 3e 0d    .>.
// $80d6 referenced 1 time by $80cb
c80d6
    lda #$db                                                          // 80d6: a9 db       ..
    jmp l0d11                                                         // 80d8: 4c 11 0d    L..

    .byt $2c, $a1, $fe, $10, $1d, $ad, $a2, $fe, $f0, $0c, $49, $ff   // 80db: 2c a1 fe... ,..
    .byt $f0, $0b                                                     // 80e7: f0 0b       ..

// $80e9 referenced 1 time by $80cf
c80e9
    lda #$a2                                                          // 80e9: a9 a2       ..
    sta lfea0                                                         // 80eb: 8d a0 fe    ...
    jmp c83fb                                                         // 80ee: 4c fb 83    L..

    .byt $8d, $3e, $0d, $85, $a2, $a9, $0d, $a0, $81, $4c, $0e, $0d   // 80f1: 8d 3e 0d... .>.

// $80fd referenced 1 time by $80c3
c80fd
    lda lfea1                                                         // 80fd: ad a1 fe    ...
    and #$81                                                          // 8100: 29 81       ).
    beq c810a                                                         // 8102: f0 06       ..
    jsr sub_c8969                                                     // 8104: 20 69 89     i.
    jmp c83fb                                                         // 8107: 4c fb 83    L..

// $810a referenced 1 time by $8102
c810a
    jmp c83f8                                                         // 810a: 4c f8 83    L..

    .byt $a4, $a2, $ad, $a1, $fe, $10, $e9, $ad, $a2, $fe, $99, $2e   // 810d: a4 a2 ad... ...
    .byt $0d, $c8, $ad, $a1, $fe, $30,   2, $d0, $15, $ad, $a2, $fe   // 8119: 0d c8 ad... ...
    .byt $99, $2e, $0d, $c8, $c0, $0c, $f0, $0a, $84, $a2, $ad, $a1   // 8125: 99 2e 0d... ...
    .byt $fe, $d0, $de, $4c, $14, $0d, $a9,   0, $8d, $a0, $fe, $a9   // 8131: fe d0 de... ...
    .byt $84, $8d, $a1, $fe, $a9,   2, $2c, $a1, $fe, $f0, $b5, $10   // 813d: 84 8d a1... ...
    .byt $b3, $ad, $a2, $fe, $99, $2e, $0d, $a9, $44, $8d, $a0, $fe   // 8149: b3 ad a2... ...
    .byt $38, $66, $99, $ad, $31, $0d, $d0,   3, $4c, $55, $84, $2c   // 8155: 38 66 99... 8f.
    .byt $3e, $0d, $50,   5, $a9,   7, $8d, $a1, $fe, $2c, $61, $0d   // 8161: 3e 0d 50... >.P
    .byt $10, $40, $a9, $c0, $a0,   0, $85, $a6, $84, $a7, $a0,   0   // 816d: 10 40 a9... .@.
    .byt $b1, $a6, $f0, $2f, $c9, $7f, $d0, $1e, $c8, $b1, $a6, $f0   // 8179: b1 a6 f0... ...
    .byt   5, $cd, $31, $0d, $d0, $14, $c8, $b1, $a6, $f0, $2a, $cd   // 8185: 05 cd 31... ..1
    .byt $2e, $0d, $d0, $0a, $c8, $b1, $a6, $f0, $20, $cd, $2f, $0d   // 8191: 2e 0d d0... ...
    .byt $f0, $1b, $a5, $a7, $f0, $0c, $a5, $a6, $18, $69, $0c, $85   // 819d: f0 1b a5... ...
    .byt $a6, $90, $cb, $4c, $36, $82, $2c, $61, $0d, $50, $f8, $a9   // 81a9: a6 90 cb... ...
    .byt   0, $a4, $9f, $d0, $b9, $a9,   3, $8d, $40, $0d, $20, $f2   // 81b5: 00 a4 9f... ...
    .byt $88, $90                                                     // 81c1: 88 90       ..
    .asc "r,>"                                                        // 81c3: 72 2c 3e    r,>
    .byt $0d, $50,   3, $4c, $10, $84, $a9, $44, $8d, $a0, $fe, $a9   // 81c6: 0d 50 03... .P.
    .byt $a7, $8d, $a1, $fe, $a9, $dd, $a0, $81, $4c,   8, $83, $a9   // 81d2: a7 8d a1... ...
    .byt $82, $8d, $a0, $fe, $a9, $e7, $4c, $11, $0d, $a9,   1, $2c   // 81de: 82 8d a0... ...
    .byt $a1, $fe, $f0, $48, $ad, $a2, $fe, $cd, $18, $fe, $d0, $40   // 81ea: a1 fe f0... ...
    .byt $a9, $fb, $4c, $11, $0d, $2c, $a1, $fe, $10, $36, $ad, $a2   // 81f6: a9 fb 4c... ..L
    .byt $fe, $d0, $31, $a9, $11, $a0, $82, $2c, $a0, $fe, $30,   3   // 8202: fe d0 31... ..1
    .byt $4c, $0e, $0d, $2c, $a1, $fe, $10, $20, $ad, $a2, $fe, $ad   // 820e: 4c 0e 0d... L..
    .byt $a2, $fe, $a9,   2, $2c, $3e, $0d, $d0, $0c, $a9, $44, $a0   // 821a: a2 fe a9... ...
    .byt $82, $2c, $a0, $fe, $30, $18, $4c, $0e, $0d, $a9, $a1, $a0   // 8226: 82 2c a0... .,.
    .byt $82, $4c, $0e, $0d, $ad, $3e, $0d, $10,   3, $4c, $d4, $88   // 8232: 82 4c 0e... .L.
    .byt $20, $69, $89, $4c, $f5, $83, $a4, $a2, $ad, $a1, $fe, $10   // 823e: 20 69 89...  i.
    .byt $2d, $ad, $a2, $fe, $91, $a4, $c8, $d0,   6, $e6, $a5, $c6   // 824a: 2d ad a2... -..
    .byt $a3, $f0, $dd, $ad, $a1, $fe, $30,   2, $d0, $18, $ad, $a2   // 8256: a3 f0 dd... ...
    .byt $fe, $91, $a4, $c8, $84, $a2, $d0,   6, $e6, $a5, $c6, $a3   // 8262: fe 91 a4... ...
    .byt $f0,   8, $ad, $a1, $fe, $d0, $d4, $4c, $14, $0d, $a9, $84   // 826e: f0 08 ad... ...
    .byt $8d, $a1, $fe, $a9,   0, $8d, $a0, $fe, $84, $a2, $a9,   2   // 827a: 8d a1 fe... ...
    .byt $2c, $a1, $fe, $f0, $ab, $10, $11, $a5, $a3, $f0, $a5, $ad   // 8286: 2c a1 fe... ,..
    .byt $a2, $fe, $a4, $a2, $91, $a4, $e6, $a2, $d0,   2, $e6, $a5   // 8292: a2 fe a4... ...
    .byt $4c, $ef, $82, $ad, $a1, $fe, $10, $1e, $ad, $a2, $fe, $20   // 829e: 4c ef 82... L..
    .byt $2f, $85, $f0, $e1, $8d, $e5, $fe, $ad, $a2, $fe, $8d, $e5   // 82aa: 2f 85 f0... /..
    .byt $fe, $20, $2f, $85, $f0,   8, $ad, $a1, $fe, $d0, $e3, $4c   // 82b6: fe 20 2f... . /
    .byt $14, $0d, $a9,   0, $8d, $a0, $fe, $a9, $84, $8d, $a1, $fe   // 82c2: 14 0d a9... ...
    .byt $a9,   2, $2c, $a1, $fe, $f0, $ba, $10, $18, $a5, $a2,   5   // 82ce: a9 02 2c... ..,
    .byt $a3,   5, $a4,   5, $a5, $f0, $ae, $ad, $a2, $fe, $8d, $42   // 82da: a3 05 a4... ...
    .byt $0d, $a9, $20, $0d, $3e, $0d, $8d, $3e, $0d, $ad, $3e, $0d   // 82e6: 0d a9 20... ..
    .byt $10,   6, $20, $4f, $83, $4c, $d0, $88, $a9, $44, $8d, $a0   // 82f2: 10 06 20... ..
    .byt $fe, $a9, $a7, $8d, $a1, $fe, $a9, $96, $a0, $83, $8d, $43   // 82fe: fe a9 a7... ...
    .byt $0d, $8c, $44, $0d, $ad, $2e, $0d, $2c, $a0, $fe, $50, $36   // 830a: 0d 8c 44... ..D
    .byt $8d, $a2, $fe, $ad, $2f, $0d, $8d, $a2, $fe, $a9, $26, $a0   // 8316: 8d a2 fe... ...
    .byt $83, $4c, $0e, $0d, $ad, $18, $fe, $2c, $a0, $fe, $50, $1e   // 8322: 83 4c 0e... .L.
    .byt $8d, $a2, $fe, $a9,   0, $8d, $a2, $fe, $ad, $3e, $0d, $30   // 832e: 8d a2 fe... ...
    .byt $0e, $a9, $3f, $8d, $a1, $fe, $ad, $43, $0d, $ac, $44, $0d   // 833a: 0e a9 3f... ..?
    .byt $4c, $0e, $0d, $4c, $d1, $87, $4c, $36, $82, $a9,   2, $2c   // 8346: 4c 0e 0d... L..
    .byt $3e, $0d, $f0, $3f, $18,   8, $a0,   8, $b1, $a6, $28, $79   // 8352: 3e 0d f0... >..
    .byt $9a,   0, $91, $a6, $c8,   8, $c0, $0c, $90, $f2, $28, $a9   // 835e: 9a 00 91... ...
    .asc " ,>"                                                        // 836a: 20 2c 3e     ,>
    .byt $0d, $f0, $23, $8a, $48, $a9,   8, $18, $65, $a6, $aa, $a4   // 836d: 0d f0 23... ..#
    .byt $a7, $a9,   1, $20,   6,   4, $ad, $42, $0d, $8d, $e5, $fe   // 8379: a7 a9 01... ...
    .byt $38, $a0,   8, $a9,   0, $71, $a6, $91, $a6, $c8, $b0, $f7   // 8385: 38 a0 08... 8..
    .byt $68, $aa, $a9, $ff, $60, $ad, $31, $0d, $d0, $0a, $ac, $30   // 8391: 68 aa a9... h..
    .byt $0d, $c0, $82, $f0,   3, $4c, $f6, $84, $20, $4f, $83, $d0   // 839d: 0d c0 82... ...
    .byt $12, $a5, $a2, $18, $65, $a4, $90,   2, $e6, $a5, $a0,   8   // 83a9: 12 a5 a2... ...
    .byt $91, $a6, $c8, $a5, $a5, $91, $a6, $ad, $31, $0d, $f0, $34   // 83b5: 91 a6 c8... ...
    .byt $ad, $2f, $0d, $a0,   3, $91, $a6, $88, $ad, $2e, $0d, $91   // 83c1: ad 2f 0d... ./.
    .byt $a6, $88, $ad, $31, $0d, $91, $a6, $88, $ad, $30, $0d,   9   // 83cd: a6 88 ad... ...
    .byt $80, $91, $a6, $ad, $6c, $0d, $6a, $90, $13, $a5, $a6, $c8   // 83d9: 80 91 a6... ...
    .byt $e9, $0c, $b0, $fb, $88, $c0,   3, $90,   7, $20,   2, $84   // 83e5: e9 0c b0... ...
    .byt $98, $4c, $0f, $85, $20,   2, $84                            // 83f1: 98 4c 0f... .L.

// $83f8 referenced 1 time by $810a
c83f8
    jsr c8978                                                         // 83f8: 20 78 89     x.
// $83fb referenced 2 times by $80ee, $8107
c83fb
    lda #$be                                                          // 83fb: a9 be       ..
    ldy #$80                                                          // 83fd: a0 80       ..
    jmp l0d0e                                                         // 83ff: 4c 0e 0d    L..

    .byt $a9,   2, $2d, $63, $0d, $2c, $3e, $0d, $f0,   3, $20, $49   // 8402: a9 02 2d... ..-
    .byt $84, $60, $8a, $48, $a2,   4, $a9,   2, $2c, $3e, $0d, $d0   // 840e: 84 60 8a... .`.
    .byt $1c, $a4, $a2, $bd, $2e, $0d, $91, $a4, $c8, $d0,   6, $e6   // 841a: 1c a4 a2... ...
    .byt $a5, $c6, $a3, $f0, $52, $e8, $84, $a2, $e0, $0c, $d0, $eb   // 8426: a5 c6 a3... ...
    .byt $68, $aa, $4c, $a5, $83, $bd, $2e, $0d, $8d, $e5, $fe, $20   // 8432: 68 aa 4c... h.L
    .byt $2f, $85, $f0, $3d, $e8, $e0, $0c, $d0, $f0, $f0, $e9        // 843e: 2f 85 f0... /..

// $8449 referenced 1 time by $893e
sub_c8449
    bit l0099                                                         // 8449: 24 99       $.
    bmi c8452                                                         // 844b: 30 05       0.
    lda #$82                                                          // 844d: a9 82       ..
    jsr c0406                                                         // 844f: 20 06 04     ..
// $8452 referenced 1 time by $844b
c8452
    lsr l0099                                                         // 8452: 46 99       F.
    rts                                                               // 8454: 60          `

    .byt $ac, $30, $0d, $c0, $81, $90, $29, $c0, $89, $b0, $25, $c0   // 8455: ac 30 0d... .0.
    .byt $87, $b0, $0e, $98, $38, $e9, $81, $a8, $ad, $68, $0d, $6a   // 8461: 87 b0 0e... ...
    .byt $88, $10, $fc, $b0, $86, $ac, $30, $0d, $a9, $84, $48, $b9   // 846d: 88 10 fc... ...
    .byt   7, $84, $48, $60, $e6, $a2, $e0, $0b, $f0, $af, $68, $aa   // 8479: 07 84 48... ..H
    .byt $4c, $36, $82, $ca, $ad, $8f, $8f, $8f, $e4, $e4, $b8, $a9   // 8485: 4c 36 82... L6.
    .byt   0, $85, $a4, $a9, $82, $85, $a2, $a9,   1, $85, $a3, $a5   // 8491: 00 85 a4... ...
    .byt $9d, $85, $a5, $a0,   1, $b9, $32, $0d, $99, $66, $0d, $88   // 849d: 9d 85 a5... ...
    .byt $10, $f7, $4c, $cc, $81, $a9, $2e, $85, $a6, $a9, $0d, $85   // 84a9: 10 f7 4c... ..L
    .byt $a7, $4c, $ba, $81, $a9,   1                                 // 84b5: a7 4c ba... .L.
// $84bb referenced 1 time by $806f
l84bb
    .byt $85, $a3, $a9, $fc, $85, $a2, $a9, $cb, $85, $a4, $a9, $88   // 84bb: 85 a3 a9... ...
    .byt $85, $a5, $d0, $12, $a9, $2e, $85, $a6, $a9, $0d, $85, $a7   // 84c7: 85 a5 d0... ...
    .byt $a9,   2, $8d, $40, $0d, $20, $f2, $88, $90, $4f, $ad, $3e   // 84d3: a9 02 8d... ...
    .byt $0d,   9, $80, $8d, $3e, $0d, $a9, $44, $8d, $a0, $fe, $a9   // 84df: 0d 09 80... ...
    .byt $a7, $8d, $a1, $fe, $a9, $0c, $a0, $85, $4c,   8, $83, $a5   // 84eb: a7 8d a1... ...
    .byt $a2, $18, $69, $80, $a0, $7f, $91, $9c, $a0, $80, $ad, $2e   // 84f7: a2 18 69... ..i
    .byt $0d, $91, $9c, $c8, $ad, $2f, $0d, $91, $9c, $ad, $30, $0d   // 8503: 0d 91 9c... ...
    .byt $8d, $65, $0d, $a9, $84, $8d, $4e, $fe, $ad, $4b, $fe, $29   // 850f: 8d 65 0d... .e.
    .byt $1c, $8d, $64, $0d, $ad, $4b, $fe, $29, $e3,   9,   8, $8d   // 851b: 1c 8d 64... ..d
    .byt $4b, $fe, $2c, $4a, $fe, $4c, $f8, $83, $e6, $a2, $d0, $0a   // 8527: 4b fe 2c... K.,
    .byt $e6, $a3, $d0,   6, $e6, $a4, $d0,   2, $e6, $a5             // 8533: e6 a3 d0... ...
    .asc "`BKYe|"                                                     // 853d: 60 42 4b... `BK
    .byt $a9, $85, $48, $a9, $84                                      // 8543: a9 85 48... ..H
    .asc "Hlf"                                                        // 8548: 48 6c 66    Hlf
    .byt $0d, $ae, $66, $0d, $ad, $67, $0d, $a0,   8, $20, $bf, $ff   // 854b: 0d ae 66... ..f
    .byt $4c, $85, $85, $ae, $66, $0d, $ac, $67, $0d, $20, $43, $8e   // 8557: 4c 85 85... L..
    .byt $4c, $85, $85, $a9,   4, $2c, $61, $0d, $d0, $18, $0d, $61   // 8563: 4c 85 85... L..
    .byt $0d, $8d, $61, $0d, $a9,   4                                 // 856f: 0d 8d 61... ..a
    .asc "X,a"                                                        // 8575: 58 2c 61    X,a
    .byt $0d, $d0, $fb, $f0,   8, $ad, $61, $0d, $29, $fb, $8d, $61   // 8578: 0d d0 fb... ...
    .byt $0d                                                          // 8584: 0d          .

// $8585 referenced 1 time by $8057
c8585
    pla                                                               // 8585: 68          h
    tay                                                               // 8586: a8          .
    pla                                                               // 8587: 68          h
    tax                                                               // 8588: aa          .
    lda #0                                                            // 8589: a9 00       ..
    rts                                                               // 858b: 60          `

// $858c referenced 2 times by $98d6, $a89a
sub_c858c
    txa                                                               // 858c: 8a          .
    pha                                                               // 858d: 48          H
    ldy #2                                                            // 858e: a0 02       ..
    lda (l00a0),y                                                     // 8590: b1 a0       ..
    sta l0d20                                                         // 8592: 8d 20 0d    . .
    iny                                                               // 8595: c8          .
    lda (l00a0),y                                                     // 8596: b1 a0       ..
    sta l0d21                                                         // 8598: 8d 21 0d    .!.
    ldy #0                                                            // 859b: a0 00       ..
    lda (l00a0),y                                                     // 859d: b1 a0       ..
    bmi c85a4                                                         // 859f: 30 03       0.
    jmp c862f                                                         // 85a1: 4c 2f 86    L/.

// $85a4 referenced 1 time by $859f
c85a4
    sta l0d24                                                         // 85a4: 8d 24 0d    .$.
    tax                                                               // 85a7: aa          .
    iny                                                               // 85a8: c8          .
    lda (l00a0),y                                                     // 85a9: b1 a0       ..
    sta l0d25                                                         // 85ab: 8d 25 0d    .%.
    bne c85e3                                                         // 85ae: d0 33       .3
    cpx #$83                                                          // 85b0: e0 83       ..
    bcs c85cf                                                         // 85b2: b0 1b       ..
    sec                                                               // 85b4: 38          8
    php                                                               // 85b5: 08          .
    ldy #8                                                            // 85b6: a0 08       ..
// $85b8 referenced 1 time by $85cc
loop_c85b8
    lda (l00a0),y                                                     // 85b8: b1 a0       ..
    dey                                                               // 85ba: 88          .
    dey                                                               // 85bb: 88          .
    dey                                                               // 85bc: 88          .
    dey                                                               // 85bd: 88          .
    plp                                                               // 85be: 28          (
    sbc (l00a0),y                                                     // 85bf: f1 a0       ..
    sta l0d26,y                                                       // 85c1: 99 26 0d    .&.
    iny                                                               // 85c4: c8          .
    iny                                                               // 85c5: c8          .
    iny                                                               // 85c6: c8          .
    iny                                                               // 85c7: c8          .
    iny                                                               // 85c8: c8          .
    php                                                               // 85c9: 08          .
    cpy #$0c                                                          // 85ca: c0 0c       ..
    bcc loop_c85b8                                                    // 85cc: 90 ea       ..
    plp                                                               // 85ce: 28          (
// $85cf referenced 1 time by $85b2
c85cf
    cpx #$81                                                          // 85cf: e0 81       ..
    bcc c862f                                                         // 85d1: 90 5c       .\ 
    cpx #$89                                                          // 85d3: e0 89       ..
    bcs c862f                                                         // 85d5: b0 58       .X
    ldy #$0c                                                          // 85d7: a0 0c       ..
// $85d9 referenced 1 time by $85e1
loop_c85d9
    lda (l00a0),y                                                     // 85d9: b1 a0       ..
    sta l0d1a,y                                                       // 85db: 99 1a 0d    ...
    iny                                                               // 85de: c8          .
    cpy #$10                                                          // 85df: c0 10       ..
    bcc loop_c85d9                                                    // 85e1: 90 f6       ..
// $85e3 referenced 1 time by $85ae
c85e3
    lda #$20 // ' '                                                   // 85e3: a9 20       .
    bit lfea1                                                         // 85e5: 2c a1 fe    ,..
    bne c863f                                                         // 85e8: d0 55       .U
    lda #$fd                                                          // 85ea: a9 fd       ..
    pha                                                               // 85ec: 48          H
    lda #6                                                            // 85ed: a9 06       ..
    sta l0d3f                                                         // 85ef: 8d 3f 0d    .?.
    lda #0                                                            // 85f2: a9 00       ..
    sta l0d41                                                         // 85f4: 8d 41 0d    .A.
    pha                                                               // 85f7: 48          H
    pha                                                               // 85f8: 48          H
    ldy #$e7                                                          // 85f9: a0 e7       ..
// $85fb referenced 3 times by $8621, $8626, $862b
c85fb
    lda #4                                                            // 85fb: a9 04       ..
    php                                                               // 85fd: 08          .
    sei                                                               // 85fe: 78          x
sub_c85ff
l8600 = sub_c85ff+1
    bit lfe18                                                         // 85ff: 2c 18 fe    ,..
// $8600 referenced 1 time by $867c
    bit lfe18                                                         // 8602: 2c 18 fe    ,..
    bit lfea1                                                         // 8605: 2c a1 fe    ,..
    beq c8619                                                         // 8608: f0 0f       ..
    lda lfea0                                                         // 860a: ad a0 fe    ...
    lda #$67 // 'g'                                                   // 860d: a9 67       .g
    sta lfea1                                                         // 860f: 8d a1 fe    ...
    lda #$10                                                          // 8612: a9 10       ..
    bit lfea0                                                         // 8614: 2c a0 fe    ,..
    bne c864d                                                         // 8617: d0 34       .4
// $8619 referenced 1 time by $8608
c8619
    bit video_ula_control                                             // 8619: 2c 20 fe    , .
    plp                                                               // 861c: 28          (
    tsx                                                               // 861d: ba          .
    inc l0101,x                                                       // 861e: fe 01 01    ...
    bne c85fb                                                         // 8621: d0 d8       ..
    inc l0102,x                                                       // 8623: fe 02 01    ...
    bne c85fb                                                         // 8626: d0 d3       ..
    inc l0103,x                                                       // 8628: fe 03 01    ...
    bne c85fb                                                         // 862b: d0 ce       ..
    beq c8633                                                         // 862d: f0 04       ..
// $862f referenced 3 times by $85a1, $85d1, $85d5
c862f
    lda #$44 // 'D'                                                   // 862f: a9 44       .D
    bne c8641                                                         // 8631: d0 0e       ..
// $8633 referenced 1 time by $862d
c8633
    lda #7                                                            // 8633: a9 07       ..
    sta lfea1                                                         // 8635: 8d a1 fe    ...
    pla                                                               // 8638: 68          h
    pla                                                               // 8639: 68          h
    pla                                                               // 863a: 68          h
    lda #$40 // '@'                                                   // 863b: a9 40       .@
    bne c8641                                                         // 863d: d0 02       ..
// $863f referenced 1 time by $85e8
c863f
    lda #$43 // 'C'                                                   // 863f: a9 43       .C
// $8641 referenced 2 times by $8631, $863d
c8641
    ldy #0                                                            // 8641: a0 00       ..
    sta (l00a0),y                                                     // 8643: 91 a0       ..
    lda #$80                                                          // 8645: a9 80       ..
    sta l0d60                                                         // 8647: 8d 60 0d    .`.
    pla                                                               // 864a: 68          h
    tax                                                               // 864b: aa          .
    rts                                                               // 864c: 60          `

// $864d referenced 1 time by $8617
c864d
    sty lfea1                                                         // 864d: 8c a1 fe    ...
    ldx #$44 // 'D'                                                   // 8650: a2 44       .D
    stx lfea0                                                         // 8652: 8e a0 fe    ...
    ldx #$ea                                                          // 8655: a2 ea       ..
    ldy #$86                                                          // 8657: a0 86       ..
    stx l0d0c                                                         // 8659: 8e 0c 0d    ...
    sty l0d0d                                                         // 865c: 8c 0d 0d    ...
    sec                                                               // 865f: 38          8
    ror l0099                                                         // 8660: 66 99       f.
    bit video_ula_control                                             // 8662: 2c 20 fe    , .
    lda l0d25                                                         // 8665: ad 25 0d    .%.
    bne c86ac                                                         // 8668: d0 42       .B
    ldy l0d24                                                         // 866a: ac 24 0d    .$.
    lda l8869,y                                                       // 866d: b9 69 88    .i.
    sta l0d3e                                                         // 8670: 8d 3e 0d    .>.
    lda l8861,y                                                       // 8673: b9 61 88    .a.
    sta l0d3f                                                         // 8676: 8d 3f 0d    .?.
    lda #$86                                                          // 8679: a9 86       ..
    pha                                                               // 867b: 48          H
    lda l8600,y                                                       // 867c: b9 00 86    ...
    pha                                                               // 867f: 48          H
    rts                                                               // 8680: 60          `

    .byt <((sub_c868d)-1), <((sub_c8691)-1), <((sub_c86d3)-1)         // 8681: 8c 90 d2    ...
    .byt <((sub_c86d3)-1), <((sub_c86d3)-1),     <((c86e3)-1)         // 8684: d2 d2 e2    ...
    .byt     <((c86e3)-1), <((sub_c8689)-1)                           // 8687: e2 88       ..

sub_c8689
    lda #3                                                            // 8689: a9 03       ..
    bne c86d5                                                         // 868b: d0 48       .H
sub_c868d
    lda #3                                                            // 868d: a9 03       ..
    bne c8693                                                         // 868f: d0 02       ..
sub_c8691
    lda #2                                                            // 8691: a9 02       ..
// $8693 referenced 1 time by $868f
c8693
    sta l0d40                                                         // 8693: 8d 40 0d    .@.
    clc                                                               // 8696: 18          .
    php                                                               // 8697: 08          .
    ldy #$0c                                                          // 8698: a0 0c       ..
// $869a referenced 1 time by $86a7
loop_c869a
    lda l0d1e,y                                                       // 869a: b9 1e 0d    ...
    plp                                                               // 869d: 28          (
    adc (l00a0),y                                                     // 869e: 71 a0       q.
    sta l0d1e,y                                                       // 86a0: 99 1e 0d    ...
    iny                                                               // 86a3: c8          .
    php                                                               // 86a4: 08          .
    cpy #$10                                                          // 86a5: c0 10       ..
    bcc loop_c869a                                                    // 86a7: 90 f1       ..
    plp                                                               // 86a9: 28          (
    bne c86d8                                                         // 86aa: d0 2c       .,
// $86ac referenced 1 time by $8668
c86ac
    lda l0d20                                                         // 86ac: ad 20 0d    . .
    and l0d21                                                         // 86af: 2d 21 0d    -!.
    cmp #$ff                                                          // 86b2: c9 ff       ..
    bne c86ce                                                         // 86b4: d0 18       ..
    lda #$0e                                                          // 86b6: a9 0e       ..
    sta l0d3f                                                         // 86b8: 8d 3f 0d    .?.
    lda #$40 // '@'                                                   // 86bb: a9 40       .@
    sta l0d3e                                                         // 86bd: 8d 3e 0d    .>.
    ldy #4                                                            // 86c0: a0 04       ..
// $86c2 referenced 1 time by $86ca
loop_c86c2
    lda (l00a0),y                                                     // 86c2: b1 a0       ..
    sta l0d22,y                                                       // 86c4: 99 22 0d    .".
    iny                                                               // 86c7: c8          .
    cpy #$0c                                                          // 86c8: c0 0c       ..
    bcc loop_c86c2                                                    // 86ca: 90 f6       ..
    bcs c86e3                                                         // 86cc: b0 15       ..
// $86ce referenced 1 time by $86b4
c86ce
    lda #0                                                            // 86ce: a9 00       ..
    sta l0d3e                                                         // 86d0: 8d 3e 0d    .>.
sub_c86d3
    lda #2                                                            // 86d3: a9 02       ..
// $86d5 referenced 1 time by $868b
c86d5
    sta l0d40                                                         // 86d5: 8d 40 0d    .@.
// $86d8 referenced 1 time by $86aa
c86d8
    lda l00a0                                                         // 86d8: a5 a0       ..
    sta l00a6                                                         // 86da: 85 a6       ..
    lda l00a1                                                         // 86dc: a5 a1       ..
    sta l00a7                                                         // 86de: 85 a7       ..
    jsr sub_c88f2                                                     // 86e0: 20 f2 88     ..
// $86e3 referenced 1 time by $86cc
c86e3
    plp                                                               // 86e3: 28          (
    pla                                                               // 86e4: 68          h
    pla                                                               // 86e5: 68          h
    pla                                                               // 86e6: 68          h
    pla                                                               // 86e7: 68          h
    tax                                                               // 86e8: aa          .
    rts                                                               // 86e9: 60          `

    .byt $ac, $41, $0d, $2c, $a0, $fe, $50, $22, $b9, $20, $0d, $8d   // 86ea: ac 41 0d... .A.
    .byt $a2, $fe, $c8, $b9, $20, $0d, $c8, $8c, $41, $0d, $8d, $a2   // 86f6: a2 fe c8... ...
    .byt $fe, $cc, $3f, $0d, $b0, $1e, $2c, $a0, $fe, $30, $e3, $4c   // 8702: fe cc 3f... ..?
    .byt $14, $0d, $a9, $42, $d0,   7, $a9, $67, $8d, $a1, $fe, $a9   // 870e: 14 0d a9... ...
    .byt $41, $ac, $18, $fe, $48, $68, $c8, $d0, $fb, $4c, $d6, $88   // 871a: 41 ac 18... A..
    .byt $a9, $3f, $8d, $a1, $fe, $a9, $32, $a0, $87, $4c, $0e, $0d   // 8726: a9 3f 8d... .?.
    .byt $a9, $82, $8d, $a0, $fe, $2c, $3e, $0d, $50,   3, $4c, $d0   // 8732: a9 82 8d... ...
    .byt $88, $a9,   1, $2c, $3e, $0d, $f0,   3, $4c, $78, $88, $a9   // 873e: 88 a9 01... ...
    .byt $4e, $4c, $11, $0d, $a9,   1, $2c, $a1, $fe, $f0, $bb, $ad   // 874a: 4e 4c 11... NL.
    .byt $a2, $fe, $cd, $18, $fe, $d0, $19, $a9, $62, $4c, $11, $0d   // 8756: a2 fe cd... ...
    .byt $2c, $a1, $fe, $10, $0f, $ad, $a2, $fe, $d0, $0a, $a9, $79   // 8762: 2c a1 fe... ,..
    .byt $2c, $a0, $fe, $30,   6, $4c, $11, $0d, $4c, $d4, $88, $2c   // 876e: 2c a0 fe... ,..
    .byt $a1, $fe, $10, $f8, $ad, $a2, $fe, $cd, $20, $0d, $d0, $f0   // 877a: a1 fe 10... ...
    .byt $ad, $a2, $fe, $cd, $21, $0d, $d0, $e8, $a9,   2, $2c, $a1   // 8786: ad a2 fe... ...
    .byt $fe, $f0, $e1, $a9, $a7, $8d, $a1, $fe, $a9, $44, $8d, $a0   // 8792: fe f0 e1... ...
    .byt $fe, $a9, $78, $a0, $88, $8d, $43, $0d, $8c, $44, $0d, $ad   // 879e: fe a9 78... ..x
    .byt $20, $0d, $2c, $a0, $fe, $50, $16, $8d, $a2, $fe, $ad, $21   // 87aa: 20 0d 2c...  .,
    .byt $0d, $8d, $a2, $fe, $a9, $c1, $a0, $87, $4c, $0e, $0d, $ad   // 87b6: 0d 8d a2... ...
    .byt $18, $fe, $2c, $a0, $fe, $50, $2c, $8d, $a2, $fe, $a9,   0   // 87c2: 18 fe 2c... ..,
    .byt $8d, $a2, $fe, $a9,   2, $2c, $3e, $0d, $d0,   7, $a9, $ee   // 87ce: 8d a2 fe... ...
    .byt $a0, $87, $4c, $0e, $0d, $a9, $37, $a0, $88, $4c, $0e, $0d   // 87da: a0 87 4c... ..L
    .byt $a4, $a3, $f0, $33, $a4, $a2, $f0,   4, $a4, $a2, $f0, $f4   // 87e6: a4 a3 f0... ...
    .byt $2c, $a0, $fe, $50, $43, $b1, $a4, $8d, $a2, $fe, $c8, $d0   // 87f2: 2c a0 fe... ,..
    .byt   6, $c6, $a3, $f0, $1a, $e6, $a5, $b1, $a4, $8d, $a2, $fe   // 87fe: 06 c6 a3... ...
    .byt $c8, $84, $a2, $d0,   6, $c6, $a3, $f0, $0a, $e6, $a5, $2c   // 880a: c8 84 a2... ...
    .byt $a0, $fe, $30, $db, $4c, $14, $0d, $a9, $3f, $8d, $a1, $fe   // 8816: a0 fe 30... ..0
    .byt $ad, $3e, $0d, $10,   7, $a9, $f5, $a0, $83, $4c, $0e, $0d   // 8822: ad 3e 0d... .>.
    .byt $ad, $43, $0d, $ac, $44, $0d, $4c, $0e, $0d, $2c, $a0, $fe   // 882e: ad 43 0d... .C.
    .byt $50, $34, $ad, $e5, $fe, $8d, $a2, $fe, $e6, $a2, $d0, $0c   // 883a: 50 34 ad... P4.
    .byt $e6, $a3, $d0,   8, $e6, $a4, $d0,   4, $e6, $a5, $f0, $cb   // 8846: e6 a3 d0... ...
    .byt $ad, $e5, $fe, $8d, $a2, $fe, $e6, $a2, $d0, $0c, $e6, $a3   // 8852: ad e5 fe... ...
    .byt $d0,   8, $e6                                                // 885e: d0 08 e6    ...
// $8861 referenced 1 time by $8673
l8861
    .byt $a4, $d0,   4, $e6, $a5, $f0, $b5, $2c                       // 8861: a4 d0 04... ...
// $8869 referenced 1 time by $866d
l8869
    .byt $a0, $fe, $30, $cd, $4c, $14, $0d, $ad, $3e, $0d, $10, $5f   // 8869: a0 fe 30... ..0
    .byt $4c, $f5, $83, $a9, $82, $8d, $a0, $fe, $a9, $84, $a0, $88   // 8875: 4c f5 83... L..
    .byt $4c, $0e, $0d, $a9,   1, $2c, $a1, $fe, $f0, $49, $ad, $a2   // 8881: 4c 0e 0d... L..
    .byt $fe, $cd, $18, $fe, $d0, $41, $a9, $98, $4c, $11, $0d, $2c   // 888d: fe cd 18... ...
    .byt $a1, $fe, $10, $37, $ad, $a2, $fe, $d0, $32, $a9, $ac, $2c   // 8899: a1 fe 10... ...
    .byt $a0, $fe, $30,   3, $4c, $11, $0d, $2c, $a1, $fe, $10, $23   // 88a5: a0 fe 30... ..0
    .byt $ad, $a2, $fe, $cd, $20, $0d, $d0, $1b, $ad, $a2, $fe, $cd   // 88b1: ad a2 fe... ...
    .byt $21, $0d, $d0, $13, $ad, $3e, $0d, $10,   3, $4c, $1c, $82   // 88bd: 21 0d d0... !..
    .byt $a9,   2, $2c, $a1, $fe, $f0,   4, $a9,   0, $f0,   2, $a9   // 88c9: a9 02 2c... ..,
    .byt $41, $a0,   0, $91, $a0, $a9, $80, $8d, $60, $0d, $4c, $f5   // 88d5: 41 a0 00... A..
    .byt $83                                                          // 88e1: 83          .
    .byt >(l0e81)                                                     // 88e2: 0e          .
    .byt >(l0e00)                                                     // 88e3: 0e          .
    .byt >(l0a00)                                                     // 88e4: 0a          .
    .byt >(l0a00)                                                     // 88e5: 0a          .
    .byt >(l0a00)                                                     // 88e6: 0a          .
    .byt >(l0601)                                                     // 88e7: 06          .
    .byt >(l0601)                                                     // 88e8: 06          .
    .byt >(l0a81)                                                     // 88e9: 0a          .
    .byt <(l0e81)                                                     // 88ea: 81          .
    .byt <(l0e00)                                                     // 88eb: 00          .
    .byt <(l0a00)                                                     // 88ec: 00          .
    .byt <(l0a00)                                                     // 88ed: 00          .
    .byt <(l0a00)                                                     // 88ee: 00          .
    .byt <(l0601)                                                     // 88ef: 01          .
    .byt <(l0601)                                                     // 88f0: 01          .
    .byt <(l0a81)                                                     // 88f1: 81          .

// $88f2 referenced 1 time by $86e0
sub_c88f2
    ldy #7                                                            // 88f2: a0 07       ..
    lda (l00a6),y                                                     // 88f4: b1 a6       ..
    cmp #$ff                                                          // 88f6: c9 ff       ..
    bne c8901                                                         // 88f8: d0 07       ..
    dey                                                               // 88fa: 88          .
    lda (l00a6),y                                                     // 88fb: b1 a6       ..
    cmp #$fe                                                          // 88fd: c9 fe       ..
    bcs c8945                                                         // 88ff: b0 44       .D
// $8901 referenced 1 time by $88f8
c8901
    lda l0d63                                                         // 8901: ad 63 0d    .c.
    beq c8945                                                         // 8904: f0 3f       .?
    lda l0d3e                                                         // 8906: ad 3e 0d    .>.
    ora #2                                                            // 8909: 09 02       ..
    sta l0d3e                                                         // 890b: 8d 3e 0d    .>.
    sec                                                               // 890e: 38          8
    php                                                               // 890f: 08          .
    ldy #4                                                            // 8910: a0 04       ..
// $8912 referenced 1 time by $8924
loop_c8912
    lda (l00a6),y                                                     // 8912: b1 a6       ..
    iny                                                               // 8914: c8          .
    iny                                                               // 8915: c8          .
    iny                                                               // 8916: c8          .
    iny                                                               // 8917: c8          .
    plp                                                               // 8918: 28          (
    sbc (l00a6),y                                                     // 8919: f1 a6       ..
    sta l009a,y                                                       // 891b: 99 9a 00    ...
    dey                                                               // 891e: 88          .
    dey                                                               // 891f: 88          .
    dey                                                               // 8920: 88          .
    php                                                               // 8921: 08          .
    cpy #8                                                            // 8922: c0 08       ..
    bcc loop_c8912                                                    // 8924: 90 ec       ..
    plp                                                               // 8926: 28          (
    txa                                                               // 8927: 8a          .
    pha                                                               // 8928: 48          H
    lda #4                                                            // 8929: a9 04       ..
    clc                                                               // 892b: 18          .
    adc l00a6                                                         // 892c: 65 a6       e.
    tax                                                               // 892e: aa          .
    ldy l00a7                                                         // 892f: a4 a7       ..
    lda #$c2                                                          // 8931: a9 c2       ..
    jsr c0406                                                         // 8933: 20 06 04     ..
    bcc c8942                                                         // 8936: 90 0a       ..
    lda l0d40                                                         // 8938: ad 40 0d    .@.
    jsr c0406                                                         // 893b: 20 06 04     ..
    jsr sub_c8449                                                     // 893e: 20 49 84     I.
    sec                                                               // 8941: 38          8
// $8942 referenced 1 time by $8936
c8942
    pla                                                               // 8942: 68          h
    tax                                                               // 8943: aa          .
    rts                                                               // 8944: 60          `

// $8945 referenced 2 times by $88ff, $8904
c8945
    ldy #4                                                            // 8945: a0 04       ..
    lda (l00a6),y                                                     // 8947: b1 a6       ..
    ldy #8                                                            // 8949: a0 08       ..
    sec                                                               // 894b: 38          8
    sbc (l00a6),y                                                     // 894c: f1 a6       ..
    sta l00a2                                                         // 894e: 85 a2       ..
    ldy #5                                                            // 8950: a0 05       ..
    lda (l00a6),y                                                     // 8952: b1 a6       ..
    sbc #0                                                            // 8954: e9 00       ..
    sta l00a5                                                         // 8956: 85 a5       ..
    ldy #8                                                            // 8958: a0 08       ..
    lda (l00a6),y                                                     // 895a: b1 a6       ..
    sta l00a4                                                         // 895c: 85 a4       ..
    ldy #9                                                            // 895e: a0 09       ..
    lda (l00a6),y                                                     // 8960: b1 a6       ..
    sec                                                               // 8962: 38          8
    sbc l00a5                                                         // 8963: e5 a5       ..
    sta l00a3                                                         // 8965: 85 a3       ..
    sec                                                               // 8967: 38          8
    rts                                                               // 8968: 60          `

// $8969 referenced 2 times by $8077, $8104
sub_c8969
    lda #$c1                                                          // 8969: a9 c1       ..
    sta lfea0                                                         // 896b: 8d a0 fe    ...
    lda #$1e                                                          // 896e: a9 1e       ..
    sta lfea3                                                         // 8970: 8d a3 fe    ...
    lda #0                                                            // 8973: a9 00       ..
    sta lfea1                                                         // 8975: 8d a1 fe    ...
// $8978 referenced 2 times by $83f8, $89a4
c8978
    lda #$82                                                          // 8978: a9 82       ..
    sta lfea0                                                         // 897a: 8d a0 fe    ...
    lda #$67 // 'g'                                                   // 897d: a9 67       .g
    sta lfea1                                                         // 897f: 8d a1 fe    ...
    rts                                                               // 8982: 60          `

sub_c8983
    bit l0d62                                                         // 8983: 2c 62 0d    ,b.
    bpl c89a4                                                         // 8986: 10 1c       ..
// $8988 referenced 2 times by $898d, $8994
c8988
    lda l0d0c                                                         // 8988: ad 0c 0d    ...
    cmp #$be                                                          // 898b: c9 be       ..
    bne c8988                                                         // 898d: d0 f9       ..
    lda l0d0d                                                         // 898f: ad 0d 0d    ...
    eor #$80                                                          // 8992: 49 80       I.
    bne c8988                                                         // 8994: d0 f2       ..
    bit lfe18                                                         // 8996: 2c 18 fe    ,..
    bit lfe18                                                         // 8999: 2c 18 fe    ,..
    sta l0d60                                                         // 899c: 8d 60 0d    .`.
    sta l0d62                                                         // 899f: 8d 62 0d    .b.
    ldy #5                                                            // 89a2: a0 05       ..
// $89a4 referenced 1 time by $8986
c89a4
l89a6 = c89a4+2
    jmp c8978                                                         // 89a4: 4c 78 89    Lx.

// $89a6 referenced 1 time by $8096
    bit lfe18                                                         // 89a7: 2c 18 fe    ,..
    pha                                                               // 89aa: 48          H
    tya                                                               // 89ab: 98          .
    pha                                                               // 89ac: 48          H
    lda #0                                                            // 89ad: a9 00       ..
    sta romsel                                                        // 89af: 8d 30 fe    .0.
    jmp c80be                                                         // 89b2: 4c be 80    L..

    sty l0d0d                                                         // 89b5: 8c 0d 0d    ...
    sta l0d0c                                                         // 89b8: 8d 0c 0d    ...
    lda romsel_copy                                                   // 89bb: a5 f4       ..
    sta romsel                                                        // 89bd: 8d 30 fe    .0.
    pla                                                               // 89c0: 68          h
    tay                                                               // 89c1: a8          .
    pla                                                               // 89c2: 68          h
    bit video_ula_control                                             // 89c3: 2c 20 fe    , .
    rti                                                               // 89c6: 40          @

    .byt   1,   0, $18                                                // 89c7: 01 00 18    ...
// $89ca referenced 1 time by $8e52
jump_table_low
    .byt 4                                                            // 89ca: 04          .
    .byt <(just_rts-1)                                                // 89cb: 57          W
    .byt <(service_handler_claim_absolute_workspace-1)                // 89cc: a4          .
    .byt <(service_handler_claim_private_workspace-1)                 // 89cd: b7          .
    .byt <(sub_c8cca-1)                                               // 89ce: c9          .
    .byt <(sub_c8c4e-1)                                               // 89cf: 4d          M
    .byt <(sub_c8028-1)                                               // 89d0: 27          '
    .byt <(just_rts-1)                                                // 89d1: 57          W
    .byt <(sub_c8e92-1)                                               // 89d2: 91          .
    .byt <(sub_ca4ee-1)                                               // 89d3: ed          .
    .byt <(sub_c8c5d-1)                                               // 89d4: 5c          \ 
    .byt <(just_rts-1)                                                // 89d5: 57          W
    .byt <(sub_c8090-1)                                               // 89d6: 8f          .
    .byt <(sub_c8983-1)                                               // 89d7: 82          .
    .byt <(sub_c8b0d-1)                                               // 89d8: 0c          .
    .byt <(sub_c95ce-1)                                               // 89d9: cd          .
    .byt <(sub_c9580-1)                                               // 89da: 7f          .
    .byt <(sub_cac98-1)                                               // 89db: 97          .
    .byt <(sub_c95ae-1)                                               // 89dc: ad          .
    .byt <(sub_c95be-1)                                               // 89dd: bd          .
    .byt <(sub_c9dc8-1)                                               // 89de: c7          .
    .byt <(sub_c9dee-1)                                               // 89df: ed          .
    .byt <(ca1c1-1)                                                   // 89e0: c0          .
    .byt <(ca114-1)                                                   // 89e1: 13          .
    .byt <(ca1c1-1)                                                   // 89e2: c0          .
    .byt <(sub_cad80-1)                                               // 89e3: 7f          .
    .byt <(sub_c8f99-1)                                               // 89e4: 98          .
    .byt <(sub_c92b0-1)                                               // 89e5: af          .
    .byt <(sub_caf3e-1)                                               // 89e6: 3d          =
    .byt <(sub_ca391-1)                                               // 89e7: 90          .
    .byt <(sub_ca39b-1)                                               // 89e8: 9a          .
    .byt <(ca2f4-1)                                                   // 89e9: f3          .
    .byt <(ca1c1-1)                                                   // 89ea: c0          .
    .byt <(sub_ca2fa-1)                                               // 89eb: f9          .
    .byt <(sub_ca0e4-1)                                               // 89ec: e3          .
    .byt <(sub_ca0ea-1)                                               // 89ed: e9          .
    .byt <(sub_ca0fa-1)                                               // 89ee: f9          .
// $89ef referenced 1 time by $8e4e
jump_table_high
    .byt $d3                                                          // 89ef: d3          .
    .byt >(just_rts-1)                                                // 89f0: 8e          .
    .byt >(service_handler_claim_absolute_workspace-1)                // 89f1: 8e          .
    .byt >(service_handler_claim_private_workspace-1)                 // 89f2: 8e          .
    .byt >(sub_c8cca-1)                                               // 89f3: 8c          .
    .byt >(sub_c8c4e-1)                                               // 89f4: 8c          .
    .byt >(sub_c8028-1)                                               // 89f5: 80          .
    .byt >(just_rts-1)                                                // 89f6: 8e          .
    .byt >(sub_c8e92-1)                                               // 89f7: 8e          .
    .byt >(sub_ca4ee-1)                                               // 89f8: a4          .
    .byt >(sub_c8c5d-1)                                               // 89f9: 8c          .
    .byt >(just_rts-1)                                                // 89fa: 8e          .
    .byt >(sub_c8090-1)                                               // 89fb: 80          .
    .byt >(sub_c8983-1)                                               // 89fc: 89          .
    .byt >(sub_c8b0d-1)                                               // 89fd: 8b          .
    .byt >(sub_c95ce-1)                                               // 89fe: 95          .
    .byt >(sub_c9580-1)                                               // 89ff: 95          .
    .byt >(sub_cac98-1)                                               // 8a00: ac          .
    .byt >(sub_c95ae-1)                                               // 8a01: 95          .
    .byt >(sub_c95be-1)                                               // 8a02: 95          .
    .byt >(sub_c9dc8-1)                                               // 8a03: 9d          .
    .byt >(sub_c9dee-1)                                               // 8a04: 9d          .
    .byt >(ca1c1-1)                                                   // 8a05: a1          .
    .byt >(ca114-1)                                                   // 8a06: a1          .
    .byt >(ca1c1-1)                                                   // 8a07: a1          .
    .byt >(sub_cad80-1)                                               // 8a08: ad          .
    .byt >(sub_c8f99-1)                                               // 8a09: 8f          .
    .byt >(sub_c92b0-1)                                               // 8a0a: 92          .
    .byt >(sub_caf3e-1)                                               // 8a0b: af          .
    .byt >(sub_ca391-1)                                               // 8a0c: a3          .
    .byt >(sub_ca39b-1)                                               // 8a0d: a3          .
    .byt >(ca2f4-1)                                                   // 8a0e: a2          .
    .byt >(ca1c1-1)                                                   // 8a0f: a1          .
    .byt >(sub_ca2fa-1)                                               // 8a10: a2          .
    .byt >(sub_ca0e4-1)                                               // 8a11: a0          .
    .byt >(sub_ca0ea-1)                                               // 8a12: a0          .
    .byt >(sub_ca0fa-1)                                               // 8a13: a0          .
    .byt $8a                                                          // 8a14: 8a          .

// $8a15 referenced 1 time by $8003
service_handler
    pha                                                               // 8a15: 48          H
    cmp #service_vectors_changed                                      // 8a16: c9 0f       ..
    bne service_handler_common1                                       // 8a18: d0 22       ."
// Extra processing for vectors changed service call
    tya                                                               // 8a1a: 98          .
    pha                                                               // 8a1b: 48          H
    lda #osbyte_read_os_version                                       // 8a1c: a9 00       ..
    ldx #1                                                            // 8a1e: a2 01       ..

    jsr osbyte                                                        // 8a20: 20 f4 ff     ..            // Read OS version number into X
    // X is the OS version number:
    //     X=0, OS 1.00 (Early BBC B or Electron OS 1.00)
    //     X=1, OS 1.20 or American OS
    //     X=2, OS 2.00 (BBC B+)
    //     X=3, OS 3.2/3.5 (Master 128)
    //     X=4, OS 4.0 (Master Econet Terminal)
    //     X=5, OS 5.0 (Master Compact)
    cpx #1                                                            // 8a23: e0 01       ..
    beq c8a38                                                         // 8a25: f0 11       ..
    cpx #2                                                            // 8a27: e0 02       ..
    beq c8a38                                                         // 8a29: f0 0d       ..
    txa                                                               // 8a2b: 8a          .
    php                                                               // 8a2c: 08          .
    ldx romsel_copy                                                   // 8a2d: a6 f4       ..
    plp                                                               // 8a2f: 28          (
    beq c8a33                                                         // 8a30: f0 01       ..
    inx                                                               // 8a32: e8          .
// $8a33 referenced 1 time by $8a30
c8a33
    lda #0                                                            // 8a33: a9 00       ..
    sta l02a0,x                                                       // 8a35: 9d a0 02    ...
// $8a38 referenced 2 times by $8a25, $8a29
c8a38
    ldx romsel_copy                                                   // 8a38: a6 f4       ..
    pla                                                               // 8a3a: 68          h
    tay                                                               // 8a3b: a8          .
// $8a3c referenced 1 time by $8a18
service_handler_common1
    pla                                                               // 8a3c: 68          h
    jsr service_handler_tube_service_calls                            // 8a3d: 20 62 be     b.
    pha                                                               // 8a40: 48          H
    cmp #service_claim_absolute_workspace                             // 8a41: c9 01       ..
    bne service_handler_common2                                       // 8a43: d0 15       ..
// Extra processing for absolute workspace claim service call
    lda lfea0                                                         // 8a45: ad a0 fe    ...
    and #$ed                                                          // 8a48: 29 ed       ).
    bne c8a53                                                         // 8a4a: d0 07       ..
    lda lfea1                                                         // 8a4c: ad a1 fe    ...
    and #$db                                                          // 8a4f: 29 db       ).
    beq service_handler_common2                                       // 8a51: f0 07       ..
// $8a53 referenced 1 time by $8a4a
c8a53
    rol l0df0,x                                                       // 8a53: 3e f0 0d    >..
    sec                                                               // 8a56: 38          8
    ror l0df0,x                                                       // 8a57: 7e f0 0d    ~..
// $8a5a referenced 2 times by $8a43, $8a51
service_handler_common2
    lda l0df0,x                                                       // 8a5a: bd f0 0d    ...
    asl                                                               // 8a5d: 0a          .
    pla                                                               // 8a5e: 68          h
    bcc c8a62                                                         // 8a5f: 90 01       ..
    rts                                                               // 8a61: 60          `

// $8a62 referenced 1 time by $8a5f
c8a62
    cmp #service_vectors_changed                                      // 8a62: c9 0f       ..
    bne service_handler_not_vectors_changed                           // 8a64: d0 41       .A
    ldx l0d6a                                                         // 8a66: ae 6a 0d    .j.
    bne c8a6f                                                         // 8a69: d0 04       ..
    inx                                                               // 8a6b: e8          .
    stx l028d                                                         // 8a6c: 8e 8d 02    ...
// $8a6f referenced 1 time by $8a69
c8a6f
    sta l00ac                                                         // 8a6f: 85 ac       ..
// $8a71 referenced 1 time by $8a9a
c8a71
    lda #$80                                                          // 8a71: a9 80       ..
    sta l00f7                                                         // 8a73: 85 f7       ..
    lda #$0c                                                          // 8a75: a9 0c       ..
    sta osrdsc_ptr                                                    // 8a77: 85 f6       ..
    jsr sub_c8aa0                                                     // 8a79: 20 a0 8a     ..
    cmp #$4e // 'N'                                                   // 8a7c: c9 4e       .N
    bne c8a98                                                         // 8a7e: d0 18       ..
    jsr sub_c8aa0                                                     // 8a80: 20 a0 8a     ..
    cmp #$45 // 'E'                                                   // 8a83: c9 45       .E
    bne c8a98                                                         // 8a85: d0 11       ..
    jsr sub_c8aa0                                                     // 8a87: 20 a0 8a     ..
    cmp #$54 // 'T'                                                   // 8a8a: c9 54       .T
    bne c8a98                                                         // 8a8c: d0 0a       ..
    ldx l00ac                                                         // 8a8e: a6 ac       ..
    lda l0df0,x                                                       // 8a90: bd f0 0d    ...
    ora #$80                                                          // 8a93: 09 80       ..
    sta l0df0,x                                                       // 8a95: 9d f0 0d    ...
// $8a98 referenced 3 times by $8a7e, $8a85, $8a8c
c8a98
    dec l00ac                                                         // 8a98: c6 ac       ..
    bpl c8a71                                                         // 8a9a: 10 d5       ..
    lda #$0f                                                          // 8a9c: a9 0f       ..
    bne c8ad1                                                         // 8a9e: d0 31       .1
// $8aa0 referenced 3 times by $8a79, $8a80, $8a87
sub_c8aa0
    inc osrdsc_ptr                                                    // 8aa0: e6 f6       ..
    ldy l00ac                                                         // 8aa2: a4 ac       ..             // Y=ROM number
    jmp osrdsc                                                        // 8aa4: 4c b9 ff    L..            // Read byte from ROM Y or screen

// $8aa7 referenced 1 time by $8a64
service_handler_not_vectors_changed
    tax                                                               // 8aa7: aa          .
    lda l00a9                                                         // 8aa8: a5 a9       ..
    pha                                                               // 8aaa: 48          H
    txa                                                               // 8aab: 8a          .
    sta l00a9                                                         // 8aac: 85 a9       ..
// Call dispatch table entry X+1 for service calls 1<=X<&D.
// Call dispatch table entry &D+1 for service call &12.
// Don't handle any other service call.
// (+1 because jump_table_dispatch_x_plus_y adds 1 if Y=0.)
    cmp #$0d                                                          // 8aae: c9 0d       ..
    bcc c8aba                                                         // 8ab0: 90 08       ..
    sbc #5                                                            // 8ab2: e9 05       ..
    cmp #$0d                                                          // 8ab4: c9 0d       ..
    beq c8aba                                                         // 8ab6: f0 02       ..
    lda #0                                                            // 8ab8: a9 00       ..
// $8aba referenced 2 times by $8ab0, $8ab6
c8aba
    tax                                                               // 8aba: aa          .
    beq c8acb                                                         // 8abb: f0 0e       ..
    lda l00a8                                                         // 8abd: a5 a8       ..
    pha                                                               // 8abf: 48          H
    sty l00a8                                                         // 8ac0: 84 a8       ..
    tya                                                               // 8ac2: 98          .
    ldy #0                                                            // 8ac3: a0 00       ..
    jsr jump_table_dispatch_x_plus_y                                  // 8ac5: 20 49 8e     I.
    pla                                                               // 8ac8: 68          h
    sta l00a8                                                         // 8ac9: 85 a8       ..
// $8acb referenced 1 time by $8abb
c8acb
    ldx l00a9                                                         // 8acb: a6 a9       ..
    pla                                                               // 8acd: 68          h
    sta l00a9                                                         // 8ace: 85 a9       ..
    txa                                                               // 8ad0: 8a          .
// $8ad1 referenced 1 time by $8a9e
c8ad1
    ldx romsel_copy                                                   // 8ad1: a6 f4       ..
    rts                                                               // 8ad3: 60          `

sub_c8ad4
    ldy #0                                                            // 8ad4: a0 00       ..
    lda (l009c),y                                                     // 8ad6: b1 9c       ..
    beq c8afb                                                         // 8ad8: f0 21       .!
    lda #0                                                            // 8ada: a9 00       ..
    tax                                                               // 8adc: aa          .
    sta (l009c),y                                                     // 8add: 91 9c       ..
    tay                                                               // 8adf: a8          .
    lda #osbyte_read_write_econet_keyboard_disable                    // 8ae0: a9 c9       ..
    jsr osbyte                                                        // 8ae2: 20 f4 ff     ..            // Enable keyboard (for Econet)
    lda #$0a                                                          // 8ae5: a9 0a       ..
    jsr sub_ca9be                                                     // 8ae7: 20 be a9     ..
// $8aea referenced 1 time by $959f
sub_c8aea
    stx l009e                                                         // 8aea: 86 9e       ..
    lda #osbyte_read_write_econet_os_call_interception                // 8aec: a9 ce       ..
// $8aee referenced 1 time by $8af9
loop_c8aee
    ldx l009e                                                         // 8aee: a6 9e       ..
    ldy #$7f                                                          // 8af0: a0 7f       ..
    jsr osbyte                                                        // 8af2: 20 f4 ff     ..            // Read/Write OSBYTE and OSWORD call interception status
    adc #1                                                            // 8af5: 69 01       i.
    cmp #$d0                                                          // 8af7: c9 d0       ..
    beq loop_c8aee                                                    // 8af9: f0 f3       ..
// $8afb referenced 1 time by $8ad8
c8afb
    lda #0                                                            // 8afb: a9 00       ..
    sta l00a9                                                         // 8afd: 85 a9       ..
    sta l009e                                                         // 8aff: 85 9e       ..
    rts                                                               // 8b01: 60          `

// $8b02 referenced 3 times by $8c52, $8c7d, $a2bf
sub_c8b02
    pha                                                               // 8b02: 48          H
    lda os_text_ptr                                                   // 8b03: a5 f2       ..
    sta l00be                                                         // 8b05: 85 be       ..
    lda l00f3                                                         // 8b07: a5 f3       ..
    sta l00bf                                                         // 8b09: 85 bf       ..
    pla                                                               // 8b0b: 68          h
// $8b0c referenced 2 times by $8b0f, $8b18
c8b0c
    rts                                                               // 8b0c: 60          `

sub_c8b0d
    cpy #5                                                            // 8b0d: c0 05       ..
    bne c8b0c                                                         // 8b0f: d0 fb       ..
    lda #0                                                            // 8b11: a9 00       ..
    sta l00a9                                                         // 8b13: 85 a9       ..
    bit l0d6c                                                         // 8b15: 2c 6c 0d    ,l.
    bmi c8b0c                                                         // 8b18: 30 f2       0.
// $8b1a referenced 1 time by $8ce0
sub_c8b1a
    jsr sub_c8cb9                                                     // 8b1a: 20 b9 8c     ..
    sta l00b1                                                         // 8b1d: 85 b1       ..
    lda #0                                                            // 8b1f: a9 00       ..
    sta l00b0                                                         // 8b21: 85 b0       ..
    clc                                                               // 8b23: 18          .
    ldy #$76 // 'v'                                                   // 8b24: a0 76       .v
// $8b26 referenced 1 time by $8b29
loop_c8b26
    adc (l00b0),y                                                     // 8b26: 71 b0       q.
    dey                                                               // 8b28: 88          .
    bpl loop_c8b26                                                    // 8b29: 10 fb       ..
    ldy #$77 // 'w'                                                   // 8b2b: a0 77       .w
    eor (l00b0),y                                                     // 8b2d: 51 b0       Q.
    beq c8b34                                                         // 8b2f: f0 03       ..
    jmp c8fe4                                                         // 8b31: 4c e4 8f    L..

// $8b34 referenced 1 time by $8b2f
c8b34
    jsr sub_c8cfc                                                     // 8b34: 20 fc 8c     ..
    ldy #9                                                            // 8b37: a0 09       ..
// $8b39 referenced 1 time by $8b41
loop_c8b39
    lda (l009c),y                                                     // 8b39: b1 9c       ..
    sta l0dfe,y                                                       // 8b3b: 99 fe 0d    ...
    dey                                                               // 8b3e: 88          .
    cpy #1                                                            // 8b3f: c0 01       ..
    bne loop_c8b39                                                    // 8b41: d0 f6       ..
    rol l0d6c                                                         // 8b43: 2e 6c 0d    .l.
    clc                                                               // 8b46: 18          .
    ror l0d6c                                                         // 8b47: 6e 6c 0d    nl.
    ldy #$0d                                                          // 8b4a: a0 0d       ..
// $8b4c referenced 1 time by $8b53
loop_c8b4c
    lda l8e61,y                                                       // 8b4c: b9 61 8e    .a.
    sta filev,y                                                       // 8b4f: 99 12 02    ...
    dey                                                               // 8b52: 88          .
    bpl loop_c8b4c                                                    // 8b53: 10 f7       ..
    jsr sub_c8f5d                                                     // 8b55: 20 5d 8f     ].
    ldy #$1b                                                          // 8b58: a0 1b       ..
    ldx #7                                                            // 8b5a: a2 07       ..
    jsr c8f70                                                         // 8b5c: 20 70 8f     p.
    lda #0                                                            // 8b5f: a9 00       ..
    sta l0e07                                                         // 8b61: 8d 07 0e    ...
    sta l10c9                                                         // 8b64: 8d c9 10    ...
    sta l1071                                                         // 8b67: 8d 71 10    .q.
    sta l00a9                                                         // 8b6a: 85 a9       ..
    jsr sub_cb98f                                                     // 8b6c: 20 8f b9     ..
    sta l0e08                                                         // 8b6f: 8d 08 0e    ...
    jsr sub_c8cc0                                                     // 8b72: 20 c0 8c     ..
    jsr sub_cb449                                                     // 8b75: 20 49 b4     I.
    ldy #$77 // 'w'                                                   // 8b78: a0 77       .w
// $8b7a referenced 1 time by $8b80
loop_c8b7a
    lda (l00cc),y                                                     // 8b7a: b1 cc       ..
    sta l1000,y                                                       // 8b7c: 99 00 10    ...
    dey                                                               // 8b7f: 88          .
    bpl loop_c8b7a                                                    // 8b80: 10 f8       ..
    lda #$80                                                          // 8b82: a9 80       ..
    ora l0d6c                                                         // 8b84: 0d 6c 0d    .l.
    sta l0d6c                                                         // 8b87: 8d 6c 0d    .l.
    jmp c8d08                                                         // 8b8a: 4c 08 8d    L..

// $8b8d referenced 1 time by $8c7a
c8b8d
    ldx #$4a // 'J'                                                   // 8b8d: a2 4a       .J
    jsr c8b98                                                         // 8b8f: 20 98 8b     ..
sub_c8b92
    ldx #0                                                            // 8b92: a2 00       ..
    beq c8b98                                                         // 8b94: f0 02       ..
sub_c8b96
    ldx #$4a // 'J'                                                   // 8b96: a2 4a       .J
// $8b98 referenced 2 times by $8b8f, $8b94
c8b98
    bvc c8ba8                                                         // 8b98: 50 0e       P.
    txa                                                               // 8b9a: 8a          .
    pha                                                               // 8b9b: 48          H
    tya                                                               // 8b9c: 98          .
    pha                                                               // 8b9d: 48          H
    jsr sub_c8c9f                                                     // 8b9e: 20 9f 8c     ..
    pla                                                               // 8ba1: 68          h
    tay                                                               // 8ba2: a8          .
    pla                                                               // 8ba3: 68          h
    tax                                                               // 8ba4: aa          .
    clv                                                               // 8ba5: b8          .
    bvc c8bab                                                         // 8ba6: 50 03       P.
// $8ba8 referenced 1 time by $8b98
c8ba8
    jsr osnewl                                                        // 8ba8: 20 e7 ff     ..            // Write newline (characters 10 and 13)
// $8bab referenced 2 times by $8ba6, $8c6d
c8bab
    tya                                                               // 8bab: 98          .
    pha                                                               // 8bac: 48          H
    php                                                               // 8bad: 08          .
// $8bae referenced 1 time by $8c2c
c8bae
    lda la3f0,x                                                       // 8bae: bd f0 a3    ...
    bpl c8bb6                                                         // 8bb1: 10 03       ..
    jmp c8c2f                                                         // 8bb3: 4c 2f 8c    L/.

// $8bb6 referenced 1 time by $8bb1
c8bb6
    jsr print_inline_top_bit_clear                                    // 8bb6: 20 45 91     E.
    .asc "  "                                                         // 8bb9: 20 20

    ldy #9                                                            // 8bbb: a0 09       ..
    lda la3f0,x                                                       // 8bbd: bd f0 a3    ...
// $8bc0 referenced 1 time by $8bc8
loop_c8bc0
    jsr osasci                                                        // 8bc0: 20 e3 ff     ..            // Write character
    inx                                                               // 8bc3: e8          .
    dey                                                               // 8bc4: 88          .
    lda la3f0,x                                                       // 8bc5: bd f0 a3    ...
    bpl loop_c8bc0                                                    // 8bc8: 10 f6       ..
// $8bca referenced 1 time by $8bd0
loop_c8bca
    lda #$20 // ' '                                                   // 8bca: a9 20       .
    jsr osasci                                                        // 8bcc: 20 e3 ff     ..            // Write character 32
    dey                                                               // 8bcf: 88          .
    bpl loop_c8bca                                                    // 8bd0: 10 f8       ..
    lda la3f0,x                                                       // 8bd2: bd f0 a3    ...
    and #$1f                                                          // 8bd5: 29 1f       ).
    cmp #$0e                                                          // 8bd7: c9 0e       ..
    beq c8bf6                                                         // 8bd9: f0 1b       ..
    tay                                                               // 8bdb: a8          .
    lda l9122,y                                                       // 8bdc: b9 22 91    .".
    tay                                                               // 8bdf: a8          .
// $8be0 referenced 2 times by $8bed, $8bf3
c8be0
    iny                                                               // 8be0: c8          .
    lda l9022,y                                                       // 8be1: b9 22 90    .".
    beq c8c26                                                         // 8be4: f0 40       .@
    cmp #$0d                                                          // 8be6: c9 0d       ..
    bne c8bf0                                                         // 8be8: d0 06       ..
    jsr sub_c8c33                                                     // 8bea: 20 33 8c     3.
    jmp c8be0                                                         // 8bed: 4c e0 8b    L..

// $8bf0 referenced 1 time by $8be8
c8bf0
    jsr osasci                                                        // 8bf0: 20 e3 ff     ..            // Write character
    jmp c8be0                                                         // 8bf3: 4c e0 8b    L..

// $8bf6 referenced 1 time by $8bd9
c8bf6
    txa                                                               // 8bf6: 8a          .
    pha                                                               // 8bf7: 48          H
    jsr print_inline_top_bit_clear                                    // 8bf8: 20 45 91     E.
    .asc "("                                                          // 8bfb: 28          (

    ldy #0                                                            // 8bfc: a0 00       ..
    ldx #$d3                                                          // 8bfe: a2 d3       ..
// $8c00 referenced 1 time by $8c22
c8c00
    lda la3f0,x                                                       // 8c00: bd f0 a3    ...
    bmi c8c24                                                         // 8c03: 30 1f       0.
    dex                                                               // 8c05: ca          .
// $8c06 referenced 1 time by $8c0f
loop_c8c06
    inx                                                               // 8c06: e8          .
    lda la3f0,x                                                       // 8c07: bd f0 a3    ...
    bmi c8c12                                                         // 8c0a: 30 06       0.
    jsr osasci                                                        // 8c0c: 20 e3 ff     ..            // Write character
    jmp loop_c8c06                                                    // 8c0f: 4c 06 8c    L..

// $8c12 referenced 1 time by $8c0a
c8c12
    and #$7f                                                          // 8c12: 29 7f       ).
    jsr osasci                                                        // 8c14: 20 e3 ff     ..            // Write character
    iny                                                               // 8c17: c8          .
    cpy #4                                                            // 8c18: c0 04       ..
    bne c8c1f                                                         // 8c1a: d0 03       ..
    jsr sub_c8c33                                                     // 8c1c: 20 33 8c     3.
// $8c1f referenced 1 time by $8c1a
c8c1f
    inx                                                               // 8c1f: e8          .
    inx                                                               // 8c20: e8          .
    inx                                                               // 8c21: e8          .
    bne c8c00                                                         // 8c22: d0 dc       ..
// $8c24 referenced 1 time by $8c03
c8c24
    pla                                                               // 8c24: 68          h
    tax                                                               // 8c25: aa          .
// $8c26 referenced 1 time by $8be4
c8c26
    jsr osnewl                                                        // 8c26: 20 e7 ff     ..            // Write newline (characters 10 and 13)
    inx                                                               // 8c29: e8          .
    inx                                                               // 8c2a: e8          .
    inx                                                               // 8c2b: e8          .
    jmp c8bae                                                         // 8c2c: 4c ae 8b    L..

// $8c2f referenced 1 time by $8bb3
c8c2f
    plp                                                               // 8c2f: 28          (
    pla                                                               // 8c30: 68          h
    tay                                                               // 8c31: a8          .
    rts                                                               // 8c32: 60          `

// $8c33 referenced 2 times by $8bea, $8c1c
sub_c8c33
    lda l0355                                                         // 8c33: ad 55 03    .U.
    beq c8c4d                                                         // 8c36: f0 15       ..
    cmp #3                                                            // 8c38: c9 03       ..
    beq c8c4d                                                         // 8c3a: f0 11       ..
    tya                                                               // 8c3c: 98          .
    pha                                                               // 8c3d: 48          H
    jsr osnewl                                                        // 8c3e: 20 e7 ff     ..            // Write newline (characters 10 and 13)
    ldy #$0b                                                          // 8c41: a0 0b       ..
    lda #$20 // ' '                                                   // 8c43: a9 20       .
// $8c45 referenced 1 time by $8c49
loop_c8c45
    jsr osasci                                                        // 8c45: 20 e3 ff     ..            // Write character 32
    dey                                                               // 8c48: 88          .
    bpl loop_c8c45                                                    // 8c49: 10 fa       ..
    pla                                                               // 8c4b: 68          h
    tay                                                               // 8c4c: a8          .
// $8c4d referenced 2 times by $8c36, $8c3a
c8c4d
    rts                                                               // 8c4d: 60          `

sub_c8c4e
    ldx #0                                                            // 8c4e: a2 00       ..
    ldy l00a8                                                         // 8c50: a4 a8       ..
    jsr sub_c8b02                                                     // 8c52: 20 02 8b     ..
    jsr sub_ca140                                                     // 8c55: 20 40 a1     @.
    bcs c8c70                                                         // 8c58: b0 16       ..
    jmp ca125                                                         // 8c5a: 4c 25 a1    L%.

sub_c8c5d
    jsr sub_c8d17                                                     // 8c5d: 20 17 8d     ..
    ldy l00a8                                                         // 8c60: a4 a8       ..
    lda (os_text_ptr),y                                               // 8c62: b1 f2       ..
    cmp #$0d                                                          // 8c64: c9 0d       ..
    bne c8c73                                                         // 8c66: d0 0b       ..
    jsr sub_c8c9f                                                     // 8c68: 20 9f 8c     ..
    ldx #$c4                                                          // 8c6b: a2 c4       ..
    jsr c8bab                                                         // 8c6d: 20 ab 8b     ..
// $8c70 referenced 3 times by $8c58, $8c9d, $8cd8
c8c70
    ldy l00a8                                                         // 8c70: a4 a8       ..
    rts                                                               // 8c72: 60          `

// $8c73 referenced 1 time by $8c66
c8c73
    bit l9491                                                         // 8c73: 2c 91 94    ,..
    cmp #$2e // '.'                                                   // 8c76: c9 2e       ..
    bne c8c7d                                                         // 8c78: d0 03       ..
    jmp c8b8d                                                         // 8c7a: 4c 8d 8b    L..

// $8c7d referenced 1 time by $8c78
c8c7d
    jsr sub_c8b02                                                     // 8c7d: 20 02 8b     ..
// $8c80 referenced 1 time by $8c9b
loop_c8c80
    php                                                               // 8c80: 08          .
    ldx #$c4                                                          // 8c81: a2 c4       ..
    jsr sub_ca140                                                     // 8c83: 20 40 a1     @.
    bcs c8c98                                                         // 8c86: b0 10       ..
    plp                                                               // 8c88: 28          (
    lda #$8c                                                          // 8c89: a9 8c       ..
    pha                                                               // 8c8b: 48          H
    lda #$7f                                                          // 8c8c: a9 7f       ..
    pha                                                               // 8c8e: 48          H
    lda la3f2,x                                                       // 8c8f: bd f2 a3    ...
    pha                                                               // 8c92: 48          H
    lda la3f1,x                                                       // 8c93: bd f1 a3    ...
    pha                                                               // 8c96: 48          H
    rts                                                               // 8c97: 60          `

// $8c98 referenced 1 time by $8c86
c8c98
    plp                                                               // 8c98: 28          (
    cmp #$0d                                                          // 8c99: c9 0d       ..
    bne loop_c8c80                                                    // 8c9b: d0 e3       ..
    beq c8c70                                                         // 8c9d: f0 d1       ..
// $8c9f referenced 2 times by $8b9e, $8c68
sub_c8c9f
    jsr print_inline_top_bit_clear                                    // 8c9f: 20 45 91     E.
    .asc $0d, "Advanced NFS 4.18", $0d                                // 8ca2: 0d 41 64... .Ad

    nop                                                               // 8cb5: ea          .
    jmp c8ff1                                                         // 8cb6: 4c f1 8f    L..

// $8cb9 referenced 4 times by $8b1a, $8cc0, $8f87, $afe2
sub_c8cb9
    ldy romsel_copy                                                   // 8cb9: a4 f4       ..
    lda l0df0,y                                                       // 8cbb: b9 f0 0d    ...
    tay                                                               // 8cbe: a8          .
    rts                                                               // 8cbf: 60          `

// $8cc0 referenced 2 times by $8b72, $8ee7
sub_c8cc0
    jsr sub_c8cb9                                                     // 8cc0: 20 b9 8c     ..
    sty l00cd                                                         // 8cc3: 84 cd       ..
    lda #0                                                            // 8cc5: a9 00       ..
    sta l00cc                                                         // 8cc7: 85 cc       ..
// $8cc9 referenced 1 time by $8ceb
c8cc9
    rts                                                               // 8cc9: 60          `

sub_c8cca
    lda #osbyte_scan_keyboard_from_16                                 // 8cca: a9 7a       .z
    jsr osbyte                                                        // 8ccc: 20 f4 ff     ..            // Keyboard scan starting from key 16
    txa                                                               // 8ccf: 8a          .              // X is key number if key is pressed, or $ff otherwise
    bmi c8ce0                                                         // 8cd0: 30 0e       0.
    cmp #$19                                                          // 8cd2: c9 19       ..
    beq c8cda                                                         // 8cd4: f0 04       ..
    eor #$55 // 'U'                                                   // 8cd6: 49 55       IU
    bne c8c70                                                         // 8cd8: d0 96       ..
// $8cda referenced 1 time by $8cd4
c8cda
    tay                                                               // 8cda: a8          .              // Y=key
    lda #osbyte_write_keys_pressed                                    // 8cdb: a9 78       .x
    jsr osbyte                                                        // 8cdd: 20 f4 ff     ..            // Write current keys pressed (X and Y)
// $8ce0 referenced 1 time by $8cd0
c8ce0
    jsr sub_c8b1a                                                     // 8ce0: 20 1a 8b     ..
    jsr c8ff1                                                         // 8ce3: 20 f1 8f     ..
    jsr osnewl                                                        // 8ce6: 20 e7 ff     ..            // Write newline (characters 10 and 13)
    ldx l00a8                                                         // 8ce9: a6 a8       ..
    bne c8cc9                                                         // 8ceb: d0 dc       ..
    lda l1071                                                         // 8ced: ad 71 10    .q.
    ora #4                                                            // 8cf0: 09 04       ..
    sta l1071                                                         // 8cf2: 8d 71 10    .q.
    ldx #$0f                                                          // 8cf5: a2 0f       ..
    ldy #$8d                                                          // 8cf7: a0 8d       ..
    jmp ca114                                                         // 8cf9: 4c 14 a1    L..

// $8cfc referenced 1 time by $8b34
sub_c8cfc
    lda #6                                                            // 8cfc: a9 06       ..
    jsr sub_c8d05                                                     // 8cfe: 20 05 8d     ..
    ldx #$0a                                                          // 8d01: a2 0a       ..
    bne c8d0a                                                         // 8d03: d0 05       ..
// $8d05 referenced 1 time by $8cfe
sub_c8d05
    jmp (fscv)                                                        // 8d05: 6c 1e 02    l..

// $8d08 referenced 1 time by $8b8a
c8d08
    ldx #$0f                                                          // 8d08: a2 0f       ..
// $8d0a referenced 1 time by $8d03
c8d0a
    lda #osbyte_issue_service_request                                 // 8d0a: a9 8f       ..
    jmp osbyte                                                        // 8d0c: 4c f4 ff    L..            // Issue paged ROM service call, Reason X=15 - Vectors claimed

    .asc "i .boot"                                                    // 8d0f: 69 20 2e... i .
    .byt $0d                                                          // 8d16: 0d          .

// $8d17 referenced 1 time by $8c5d
sub_c8d17
    ldy l00a8                                                         // 8d17: a4 a8       ..
    ldx #5                                                            // 8d19: a2 05       ..
// $8d1b referenced 1 time by $8d24
loop_c8d1b
    lda (os_text_ptr),y                                               // 8d1b: b1 f2       ..
    cmp l8d38,x                                                       // 8d1d: dd 38 8d    .8.
    bne c8d26                                                         // 8d20: d0 04       ..
    iny                                                               // 8d22: c8          .
    inx                                                               // 8d23: e8          .
    bne loop_c8d1b                                                    // 8d24: d0 f5       ..
// $8d26 referenced 1 time by $8d20
c8d26
    cpx #$0d                                                          // 8d26: e0 0d       ..
    bne c8d37                                                         // 8d28: d0 0d       ..
    ldx #0                                                            // 8d2a: a2 00       ..
// $8d2c referenced 1 time by $8d35
loop_c8d2c
    lda l8d38,x                                                       // 8d2c: bd 38 8d    .8.
    beq c8d37                                                         // 8d2f: f0 06       ..
    jsr osasci                                                        // 8d31: 20 e3 ff     ..            // Write character
    inx                                                               // 8d34: e8          .
    bne loop_c8d2c                                                    // 8d35: d0 f5       ..
// $8d37 referenced 2 times by $8d28, $8d2f
c8d37
    rts                                                               // 8d37: 60          `

// $8d38 referenced 2 times by $8d1d, $8d2c
l8d38
    .byt $0d                                                          // 8d38: 0d          .
    .asc "The authors of ANFS are;"                                   // 8d39: 54 68 65... The
    .byt $0d                                                          // 8d51: 0d          .
    .asc "B Cockburn"                                                 // 8d52: 42 20 43... B C
    .byt $0d                                                          // 8d5c: 0d          .
    .asc "J Du"                                                       // 8d5d: 4a 20 44... J D
// $8d61 referenced 1 time by $b01b
l8d61
    .byt $6e, $6e, $0d                                                // 8d61: 6e 6e 0d    nn.
    .asc "B Robertson"                                                // 8d64: 42 20 52... B R
    .byt $0d                                                          // 8d6f: 0d          .
    .asc "J Wills"                                                    // 8d70: 4a 20 57... J W
    .byt $0d,   0                                                     // 8d77: 0d 00       ..

sub_c8d79
    tya                                                               // 8d79: 98          .
    pha                                                               // 8d7a: 48          H
    lda #osbyte_close_spool_exec                                      // 8d7b: a9 77       .w
    sta l0e07                                                         // 8d7d: 8d 07 0e    ...
    jsr osbyte                                                        // 8d80: 20 f4 ff     ..            // Close any *SPOOL and *EXEC files
    ldy #0                                                            // 8d83: a0 00       ..
    sty l00b4                                                         // 8d85: 84 b4       ..
    jsr sub_cb799                                                     // 8d87: 20 99 b7     ..
    lda #0                                                            // 8d8a: a9 00       ..
    sta l0e07                                                         // 8d8c: 8d 07 0e    ...
    pla                                                               // 8d8f: 68          h
    tay                                                               // 8d90: a8          .
    lda (l00bb),y                                                     // 8d91: b1 bb       ..
    jsr sub_c9258                                                     // 8d93: 20 58 92     X.
    bcc c8dbc                                                         // 8d96: 90 24       .$
    jsr sub_c916e                                                     // 8d98: 20 6e 91     n.
    bcs c8da7                                                         // 8d9b: b0 0a       ..
    sta l0e01                                                         // 8d9d: 8d 01 0e    ...
    jsr sub_c8e09                                                     // 8da0: 20 09 8e     ..
    iny                                                               // 8da3: c8          .
    jsr sub_c916e                                                     // 8da4: 20 6e 91     n.
// $8da7 referenced 1 time by $8d9b
c8da7
    beq c8dbc                                                         // 8da7: f0 13       ..
    sta l0e00                                                         // 8da9: 8d 00 0e    ...
    ldx #$ff                                                          // 8dac: a2 ff       ..
// $8dae referenced 1 time by $8db5
loop_c8dae
    inx                                                               // 8dae: e8          .
    lda la477,x                                                       // 8daf: bd 77 a4    .w.
    sta l0f05,x                                                       // 8db2: 9d 05 0f    ...
    bpl loop_c8dae                                                    // 8db5: 10 f7       ..
    jsr sub_caf06                                                     // 8db7: 20 06 af     ..
    beq c8dbf                                                         // 8dba: f0 03       ..
// $8dbc referenced 2 times by $8d96, $8da7
c8dbc
    jsr sub_caf02                                                     // 8dbc: 20 02 af     ..
// $8dbf referenced 1 time by $8dba
c8dbf
    ldy #$ff                                                          // 8dbf: a0 ff       ..
// $8dc1 referenced 1 time by $8dcb
loop_c8dc1
    iny                                                               // 8dc1: c8          .
    lda l0f05,y                                                       // 8dc2: b9 05 0f    ...
    cmp #$0d                                                          // 8dc5: c9 0d       ..
    beq c8dfa                                                         // 8dc7: f0 31       .1
    cmp #$3a // ':'                                                   // 8dc9: c9 3a       .:
    bne loop_c8dc1                                                    // 8dcb: d0 f4       ..
    jsr oswrch                                                        // 8dcd: 20 ee ff     ..            // Write character
    sty l00b4                                                         // 8dd0: 84 b4       ..
// $8dd2 referenced 4 times by $8de2, $8de6, $8de9, $8df5
c8dd2
    lda #$ff                                                          // 8dd2: a9 ff       ..
    sta l0098                                                         // 8dd4: 85 98       ..
    jsr sub_c9570                                                     // 8dd6: 20 70 95     p.
    jsr osrdch                                                        // 8dd9: 20 e0 ff     ..            // Read a character from the current input stream
    cmp #$15                                                          // 8ddc: c9 15       ..             // A=character read
    bne c8deb                                                         // 8dde: d0 0b       ..
    ldy l00b4                                                         // 8de0: a4 b4       ..
    bne c8dd2                                                         // 8de2: d0 ee       ..
// $8de4 referenced 1 time by $8ded
loop_c8de4
    cpy l00b4                                                         // 8de4: c4 b4       ..
    beq c8dd2                                                         // 8de6: f0 ea       ..
    dey                                                               // 8de8: 88          .
    bne c8dd2                                                         // 8de9: d0 e7       ..
// $8deb referenced 1 time by $8dde
c8deb
    cmp #$7f                                                          // 8deb: c9 7f       ..
    beq loop_c8de4                                                    // 8ded: f0 f5       ..
    sta l0f05,y                                                       // 8def: 99 05 0f    ...
    iny                                                               // 8df2: c8          .
    cmp #$0d                                                          // 8df3: c9 0d       ..
    bne c8dd2                                                         // 8df5: d0 db       ..
    jsr osnewl                                                        // 8df7: 20 e7 ff     ..            // Write newline (characters 10 and 13)
// $8dfa referenced 1 time by $8dc7
c8dfa
    tya                                                               // 8dfa: 98          .
    pha                                                               // 8dfb: 48          H
    jsr sub_c9473                                                     // 8dfc: 20 73 94     s.
    jsr sub_c9894                                                     // 8dff: 20 94 98     ..
    pla                                                               // 8e02: 68          h
    tax                                                               // 8e03: aa          .
    inx                                                               // 8e04: e8          .
    ldy #0                                                            // 8e05: a0 00       ..
    beq c8e24                                                         // 8e07: f0 1b       ..
// $8e09 referenced 1 time by $8da0
sub_c8e09
    jsr sub_ca865                                                     // 8e09: 20 65 a8     e.
    eor l0e01                                                         // 8e0c: 4d 01 0e    M..
    bne c8e14                                                         // 8e0f: d0 03       ..
    sta l0e01                                                         // 8e11: 8d 01 0e    ...
// $8e14 referenced 1 time by $8e0f
c8e14
    rts                                                               // 8e14: 60          `

// $8e15 referenced 1 time by $9462
c8e15
    ldy #0                                                            // 8e15: a0 00       ..
    lda (l00be),y                                                     // 8e17: b1 be       ..
    cmp #$26 // '&'                                                   // 8e19: c9 26       .&
    bne c8e20                                                         // 8e1b: d0 03       ..
    jmp ca1c1                                                         // 8e1d: 4c c1 a1    L..

// $8e20 referenced 1 time by $8e1b
c8e20
    jsr sub_caf02                                                     // 8e20: 20 02 af     ..
    tay                                                               // 8e23: a8          .
// $8e24 referenced 2 times by $8e07, $9324
c8e24
    jsr c94ad                                                         // 8e24: 20 ad 94     ..
    ldx l0f03                                                         // 8e27: ae 03 0f    ...
    beq just_rts                                                      // 8e2a: f0 2c       .,
    lda l0f05                                                         // 8e2c: ad 05 0f    ...
    ldy #$17                                                          // 8e2f: a0 17       ..
    bne jump_table_dispatch_x_plus_y                                  // 8e31: d0 16       ..
    jsr sub_c9295                                                     // 8e33: 20 95 92     ..
    cmp #8                                                            // 8e36: c9 08       ..
    bcs just_rts                                                      // 8e38: b0 1e       ..
    tax                                                               // 8e3a: aa          .
    jsr sub_caf32                                                     // 8e3b: 20 32 af     2.
    tya                                                               // 8e3e: 98          .
    ldy #$13                                                          // 8e3f: a0 13       ..
    bne jump_table_dispatch_x_plus_y                                  // 8e41: d0 06       ..
    cpx #5                                                            // 8e43: e0 05       ..
    bcs just_rts                                                      // 8e45: b0 11       ..
    ldy #$0e                                                          // 8e47: a0 0e       ..
// Note that if Y=0, this will add 1 instead of 0.
// $8e49 referenced 5 times by $8ac5, $8e31, $8e41, $8e4b, $8ea2
jump_table_dispatch_x_plus_y
    inx                                                               // 8e49: e8          .
    dey                                                               // 8e4a: 88          .
    bpl jump_table_dispatch_x_plus_y                                  // 8e4b: 10 fc       ..
    tay                                                               // 8e4d: a8          .
    lda jump_table_high,x                                             // 8e4e: bd ef 89    ...
    pha                                                               // 8e51: 48          H
sub_c8e52
l8e54 = sub_c8e52+2
    lda jump_table_low,x                                              // 8e52: bd ca 89    ...
// $8e54 referenced 2 times by $8f70, $8f76
    pha                                                               // 8e55: 48          H
    ldx l00bb                                                         // 8e56: a6 bb       ..
// $8e58 referenced 3 times by $8e2a, $8e38, $8e45
just_rts
    rts                                                               // 8e58: 60          `

    .asc "PRINT "                                                     // 8e59: 50 52 49... PRI
    .byt 1, 0                                                         // 8e5f: 01 00       ..
// $8e61 referenced 1 time by $8b4c
l8e61
    .byt $1b, $ff, $1e, $ff, $21, $ff, $24, $ff, $27, $ff, $2a, $ff   // 8e61: 1b ff 1e... ...
    .byt $2d, $ff, $35, $99, $4a, $be, $9b, $44, $ce, $b7, $57, $4d   // 8e6d: 2d ff 35... -.5
    .byt $b8, $42, $2f, $9e, $41, $4e, $9d, $52, $33, $8e             // 8e79: b8 42 2f... .B/

// $8e83 referenced 3 times by $8081, $8f62, $970e
sub_c8e83
    ldx #0                                                            // 8e83: a2 00       ..
// $8e85 referenced 1 time by $808b
sub_c8e85
    ldy #$ff                                                          // 8e85: a0 ff       ..
// $8e87 referenced 1 time by $8e90
loop_c8e87
    jmp osbyte                                                        // 8e87: 4c f4 ff    L..

    .byt $7a, $a9                                                     // 8e8a: 7a a9       z.

// $8e8c referenced 1 time by $9722
sub_c8e8c
    ldx #0                                                            // 8e8c: a2 00       ..
    ldy #0                                                            // 8e8e: a0 00       ..
    beq loop_c8e87                                                    // 8e90: f0 f5       ..
sub_c8e92
    lda l00ef                                                         // 8e92: a5 ef       ..
    sbc #$31 // '1'                                                   // 8e94: e9 31       .1
    cmp #4                                                            // 8e96: c9 04       ..
    bcs c8eab                                                         // 8e98: b0 11       ..
    tax                                                               // 8e9a: aa          .
    lda #0                                                            // 8e9b: a9 00       ..
    sta l00a9                                                         // 8e9d: 85 a9       ..
    tya                                                               // 8e9f: 98          .
    ldy #$21 // '!'                                                   // 8ea0: a0 21       .!
    jmp jump_table_dispatch_x_plus_y                                  // 8ea2: 4c 49 8e    LI.

service_handler_claim_absolute_workspace
    cpy #$16                                                          // 8ea5: c0 16       ..
    bcs c8eab                                                         // 8ea7: b0 02       ..
    ldy #$16                                                          // 8ea9: a0 16       ..
// $8eab referenced 2 times by $8e98, $8ea7
c8eab
    rts                                                               // 8eab: 60          `

// $8eac referenced 1 time by $8edf
clamp_absolute_workspace_and_save
    tya                                                               // 8eac: 98          .
    cmp #$21 // '!'                                                   // 8ead: c9 21       .!
    bcc c8eb3                                                         // 8eaf: 90 02       ..
    lda #$21 // '!'                                                   // 8eb1: a9 21       .!
// $8eb3 referenced 1 time by $8eaf
c8eb3
    ldy #$0b                                                          // 8eb3: a0 0b       ..
    sta (l009c),y                                                     // 8eb5: 91 9c       ..
    rts                                                               // 8eb7: 60          `

service_handler_claim_private_workspace
    sty l009d                                                         // 8eb8: 84 9d       ..
    iny                                                               // 8eba: c8          .
    sty l009f                                                         // 8ebb: 84 9f       ..
    iny                                                               // 8ebd: c8          .
    tya                                                               // 8ebe: 98          .
    ldy romsel_copy                                                   // 8ebf: a4 f4       ..
    sta l0df0,y                                                       // 8ec1: 99 f0 0d    ...
    ldy lfe87                                                         // 8ec4: ac 87 fe    ...
    lda #0                                                            // 8ec7: a9 00       ..
    sta l009c                                                         // 8ec9: 85 9c       ..
    sta l009e                                                         // 8ecb: 85 9e       ..
    sta l00a8                                                         // 8ecd: 85 a8       ..
    sta l0d60                                                         // 8ecf: 8d 60 0d    .`.
    ldy #0                                                            // 8ed2: a0 00       ..
    sta (l009c),y                                                     // 8ed4: 91 9c       ..
    lda #osbyte_issue_service_request                                 // 8ed6: a9 8f       ..
    ldx #service_claim_absolute_workspace                             // 8ed8: a2 01       ..
    ldy #$0e                                                          // 8eda: a0 0e       ..
    jsr osbyte                                                        // 8edc: 20 f4 ff     ..            // Issue paged ROM service call, Reason X=1 - Absolute public workspace claim
    jsr clamp_absolute_workspace_and_save                             // 8edf: 20 ac 8e     ..
    lda l028d                                                         // 8ee2: ad 8d 02    ...
    beq c8f40                                                         // 8ee5: f0 59       .Y
    jsr sub_c8cc0                                                     // 8ee7: 20 c0 8c     ..
    sta l0d6c                                                         // 8eea: 8d 6c 0d    .l.
    tay                                                               // 8eed: a8          .
// $8eee referenced 1 time by $8ef3
loop_c8eee
    sta (l00cc),y                                                     // 8eee: 91 cc       ..
    sta (l009e),y                                                     // 8ef0: 91 9e       ..
    iny                                                               // 8ef2: c8          .
    bne loop_c8eee                                                    // 8ef3: d0 f9       ..
    ldy #8                                                            // 8ef5: a0 08       ..
    sta (l009c),y                                                     // 8ef7: 91 9c       ..
    jsr sub_cb017                                                     // 8ef9: 20 17 b0     ..
    ldy #2                                                            // 8efc: a0 02       ..
    lda #$fe                                                          // 8efe: a9 fe       ..
    sta l0e00                                                         // 8f00: 8d 00 0e    ...
    sta (l009c),y                                                     // 8f03: 91 9c       ..
    lda #0                                                            // 8f05: a9 00       ..
    sta l0e01                                                         // 8f07: 8d 01 0e    ...
    iny                                                               // 8f0a: c8          .
    sta (l009c),y                                                     // 8f0b: 91 9c       ..
    ldy #3                                                            // 8f0d: a0 03       ..
    sta (l009e),y                                                     // 8f0f: 91 9e       ..
    dey                                                               // 8f11: 88          .
    lda #$eb                                                          // 8f12: a9 eb       ..
    sta (l009e),y                                                     // 8f14: 91 9e       ..
    ldx #3                                                            // 8f16: a2 03       ..
// $8f18 referenced 1 time by $8f1f
loop_c8f18
    lda l8f48,x                                                       // 8f18: bd 48 8f    .H.
    sta l0d6c,x                                                       // 8f1b: 9d 6c 0d    .l.
    dex                                                               // 8f1e: ca          .
    bne loop_c8f18                                                    // 8f1f: d0 f7       ..
    stx l0d68                                                         // 8f21: 8e 68 0d    .h.
    stx l0e05                                                         // 8f24: 8e 05 0e    ...
    jsr caae2                                                         // 8f27: 20 e2 aa     ..
    dex                                                               // 8f2a: ca          .
    stx l0d71                                                         // 8f2b: 8e 71 0d    .q.
// $8f2e referenced 1 time by $8f3b
loop_c8f2e
    lda l00a8                                                         // 8f2e: a5 a8       ..
    jsr sub_ca0ce                                                     // 8f30: 20 ce a0     ..
    bcs c8f3d                                                         // 8f33: b0 08       ..
    lda #$3f // '?'                                                   // 8f35: a9 3f       .?
    sta (l009e),y                                                     // 8f37: 91 9e       ..
    inc l00a8                                                         // 8f39: e6 a8       ..
    bne loop_c8f2e                                                    // 8f3b: d0 f1       ..
// $8f3d referenced 1 time by $8f33
c8f3d
    jsr c8f8c                                                         // 8f3d: 20 8c 8f     ..
// $8f40 referenced 1 time by $8ee5
c8f40
    ldy lfe18                                                         // 8f40: ac 18 fe    ...
    tya                                                               // 8f43: 98          .
    bne c8f4c                                                         // 8f44: d0 06       ..
// $8f46 referenced 1 time by $8f4d
loop_c8f46
l8f48 = loop_c8f46+2
    jmp c9215                                                         // 8f46: 4c 15 92    L..

// $8f48 referenced 1 time by $8f18
    .byt $ff, $28, $0a                                                // 8f49: ff 28 0a    .(.

// $8f4c referenced 1 time by $8f44
c8f4c
    iny                                                               // 8f4c: c8          .
    beq loop_c8f46                                                    // 8f4d: f0 f7       ..
    ldy #1                                                            // 8f4f: a0 01       ..
    sta (l009c),y                                                     // 8f51: 91 9c       ..
    ldx #$40 // '@'                                                   // 8f53: a2 40       .@
    stx l0d61                                                         // 8f55: 8e 61 0d    .a.
    lda #3                                                            // 8f58: a9 03       ..
    jsr sub_cab1b                                                     // 8f5a: 20 1b ab     ..
// $8f5d referenced 1 time by $8b55
sub_c8f5d
    jsr sub_c8074                                                     // 8f5d: 20 74 80     t.
    lda #$a8                                                          // 8f60: a9 a8       ..
    jsr sub_c8e83                                                     // 8f62: 20 83 8e     ..
    stx l00b8                                                         // 8f65: 86 b8       ..
    sty l00b9                                                         // 8f67: 84 b9       ..
    ldy #$36 // '6'                                                   // 8f69: a0 36       .6
    sty netv                                                          // 8f6b: 8c 24 02    .$.
    ldx #1                                                            // 8f6e: a2 01       ..
// $8f70 referenced 2 times by $8b5c, $8f82
c8f70
    lda l8e54,y                                                       // 8f70: b9 54 8e    .T.
    sta (l00b8),y                                                     // 8f73: 91 b8       ..
    iny                                                               // 8f75: c8          .
    lda l8e54,y                                                       // 8f76: b9 54 8e    .T.
    sta (l00b8),y                                                     // 8f79: 91 b8       ..
    iny                                                               // 8f7b: c8          .
    lda romsel_copy                                                   // 8f7c: a5 f4       ..
    sta (l00b8),y                                                     // 8f7e: 91 b8       ..
    iny                                                               // 8f80: c8          .
    dex                                                               // 8f81: ca          .
    bne c8f70                                                         // 8f82: d0 ec       ..
    jsr sub_c8f99                                                     // 8f84: 20 99 8f     ..
    jsr sub_c8cb9                                                     // 8f87: 20 b9 8c     ..
    iny                                                               // 8f8a: c8          .
    rts                                                               // 8f8b: 60          `

// $8f8c referenced 3 times by $8f3d, $8fa8, $a38e
c8f8c
    ldy #9                                                            // 8f8c: a0 09       ..
// $8f8e referenced 1 time by $8f96
loop_c8f8e
    lda l0dfe,y                                                       // 8f8e: b9 fe 0d    ...
    sta (l009c),y                                                     // 8f91: 91 9c       ..
    dey                                                               // 8f93: 88          .
    cpy #1                                                            // 8f94: c0 01       ..
    bne loop_c8f8e                                                    // 8f96: d0 f6       ..
    rts                                                               // 8f98: 60          `

// $8f99 referenced 1 time by $8f84
sub_c8f99
    bit l0d6c                                                         // 8f99: 2c 6c 0d    ,l.
    bpl c8fca                                                         // 8f9c: 10 2c       .,
    ldy #0                                                            // 8f9e: a0 00       ..
    jsr sub_cb799                                                     // 8fa0: 20 99 b7     ..
    lda #osbyte_close_spool_exec                                      // 8fa3: a9 77       .w
    jsr osbyte                                                        // 8fa5: 20 f4 ff     ..            // Close any *SPOOL and *EXEC files
    jsr c8f8c                                                         // 8fa8: 20 8c 8f     ..
    ldy #$76 // 'v'                                                   // 8fab: a0 76       .v
    lda #0                                                            // 8fad: a9 00       ..
    clc                                                               // 8faf: 18          .
// $8fb0 referenced 1 time by $8fb4
loop_c8fb0
    adc l1000,y                                                       // 8fb0: 79 00 10    y..
    dey                                                               // 8fb3: 88          .
    bpl loop_c8fb0                                                    // 8fb4: 10 fa       ..
    ldy #$77 // 'w'                                                   // 8fb6: a0 77       .w
    bpl c8fbd                                                         // 8fb8: 10 03       ..
// $8fba referenced 1 time by $8fc0
loop_c8fba
    lda l1000,y                                                       // 8fba: b9 00 10    ...
// $8fbd referenced 1 time by $8fb8
c8fbd
    sta (l00cc),y                                                     // 8fbd: 91 cc       ..
    dey                                                               // 8fbf: 88          .
    bpl loop_c8fba                                                    // 8fc0: 10 f8       ..
    lda l0d6c                                                         // 8fc2: ad 6c 0d    .l.
    and #$7f                                                          // 8fc5: 29 7f       ).
    sta l0d6c                                                         // 8fc7: 8d 6c 0d    .l.
// $8fca referenced 1 time by $8f9c
c8fca
    rts                                                               // 8fca: 60          `

// $8fcb referenced 2 times by $9dee, $b5fb
sub_c8fcb
    php                                                               // 8fcb: 08          .
    pha                                                               // 8fcc: 48          H
    tya                                                               // 8fcd: 98          .
    pha                                                               // 8fce: 48          H
    ldy #$76 // 'v'                                                   // 8fcf: a0 76       .v
    lda #0                                                            // 8fd1: a9 00       ..
    clc                                                               // 8fd3: 18          .
// $8fd4 referenced 1 time by $8fd7
loop_c8fd4
    adc (l00cc),y                                                     // 8fd4: 71 cc       q.
    dey                                                               // 8fd6: 88          .
    bpl loop_c8fd4                                                    // 8fd7: 10 fb       ..
    ldy #$77 // 'w'                                                   // 8fd9: a0 77       .w
    cmp (l00cc),y                                                     // 8fdb: d1 cc       ..
    bne c8fe4                                                         // 8fdd: d0 05       ..
    pla                                                               // 8fdf: 68          h
    tay                                                               // 8fe0: a8          .
    pla                                                               // 8fe1: 68          h
    plp                                                               // 8fe2: 28          (
    rts                                                               // 8fe3: 60          `

// $8fe4 referenced 2 times by $8b31, $8fdd
c8fe4
    lda #$aa                                                          // 8fe4: a9 aa       ..
    jsr generate_error_inline                                         // 8fe6: 20 b8 96     ..
    .asc "net sum", 0                                                 // 8fe9: 6e 65 74... net

// $8ff1 referenced 2 times by $8cb6, $8ce3
c8ff1
    jsr print_inline_top_bit_clear                                    // 8ff1: 20 45 91     E.
    .asc "Econet Station "                                            // 8ff4: 45 63 6f... Eco

    ldy #1                                                            // 9003: a0 01       ..
    lda (l009c),y                                                     // 9005: b1 9c       ..
    jsr sub_caf85                                                     // 9007: 20 85 af     ..
    lda #$20 // ' '                                                   // 900a: a9 20       .
    bit lfea1                                                         // 900c: 2c a1 fe    ,..
    beq c901e                                                         // 900f: f0 0d       ..
    jsr print_inline_top_bit_clear                                    // 9011: 20 45 91     E.
    .asc " No Clock"                                                  // 9014: 20 4e 6f...  No

    nop                                                               // 901d: ea          .
// $901e referenced 1 time by $900f
c901e
    jsr osnewl                                                        // 901e: 20 e7 ff     ..            // Write newline (characters 10 and 13)
    rts                                                               // 9021: 60          `

// $9022 referenced 1 time by $8be1
l9022
    .asc "(<dir>)"                                                    // 9022: 28 3c 64... (<d
    .byt 0                                                            // 9029: 00          .
    .asc "(<stn. id.>) <user id.> "                                   // 902a: 28 3c 73... (<s
    .byt $0d                                                          // 9042: 0d          .
    .asc "((:<CR>)<password>)"                                        // 9043: 28 28 3a... ((:
    .byt 0                                                            // 9056: 00          .
    .asc "<object>"                                                   // 9057: 3c 6f 62... <ob
    .byt 0                                                            // 905f: 00          .
    .asc "<filename> (<offset> "                                      // 9060: 3c 66 69... <fi
    .byt $0d                                                          // 9075: 0d          .
    .asc "(<address>))"                                               // 9076: 28 3c 61... (<a
    .byt 0                                                            // 9082: 00          .
    .asc "<dir>"                                                      // 9083: 3c 64 69... <di
    .byt 0                                                            // 9088: 00          .
    .asc "<dir> (<number>)"                                           // 9089: 3c 64 69... <di
    .byt 0                                                            // 9099: 00          .
    .asc "(:<CR>) <password> "                                        // 909a: 28 3a 3c... (:<
    .byt $0d                                                          // 90ad: 0d          .
    .asc "<new password>"                                             // 90ae: 3c 6e 65... <ne
    .byt 0                                                            // 90bc: 00          .
    .asc "(<stn. id.>|<ps type>)"                                     // 90bd: 28 3c 73... (<s
    .byt 0                                                            // 90d3: 00          .
    .asc "<object> (L)(W)(R)(", $2f, "(W)(R))"                        // 90d4: 3c 6f 62... <ob
    .byt 0                                                            // 90ef: 00          .
    .asc "<filename> <new filename>"                                  // 90f0: 3c 66 69... <fi
    .byt 0                                                            // 9109: 00          .
    .asc "(<stn. id.>)"                                               // 910a: 28 3c 73... (<s
    .byt 0                                                            // 9116: 00          .
    .asc "<filename>"                                                 // 9117: 3c 66 69... <fi
    .byt 0                                                            // 9121: 00          .
// $9122 referenced 1 time by $8bdc
l9122
    .byt   6, $ff,   7                                                // 9122: 06 ff 07    ...
    .asc "4=`fw"                                                      // 9125: 34 3d 60... 4=`
    .byt $9a, $b1, $cd, $e7, $f4                                      // 912a: 9a b1 cd... ...

// $912f referenced 4 times by $9a66, $ae11, $ba6a, $bb04
sub_c912f
    pha                                                               // 912f: 48          H
    lsr                                                               // 9130: 4a          J
    lsr                                                               // 9131: 4a          J
    lsr                                                               // 9132: 4a          J
    lsr                                                               // 9133: 4a          J
    jsr sub_c9138                                                     // 9134: 20 38 91     8.
    pla                                                               // 9137: 68          h
// $9138 referenced 1 time by $9134
sub_c9138
    and #$0f                                                          // 9138: 29 0f       ).
    cmp #$0a                                                          // 913a: c9 0a       ..
    bcc c9140                                                         // 913c: 90 02       ..
    adc #6                                                            // 913e: 69 06       i.
// $9140 referenced 1 time by $913c
c9140
    adc #$30 // '0'                                                   // 9140: 69 30       i0
    jmp osasci                                                        // 9142: 4c e3 ff    L..            // Write character

// $9145 referenced 35 times by $8bb6, $8bf8, $8c9f, $8ff1, $9011, $953a, $adc0, $adca, $add8, $ade3, $adff, $ae14, $ae27, $ae36, $af53, $b0a2, $b0ae, $b0c5, $b0cf, $b0da, $b1aa, $b24c, $b261, $b284, $b291, $b2a0, $b2b0, $b2bf, $b3c4, $b3e4, $b431, $ba86, $ba9f, $baac, $bae0
print_inline_top_bit_clear
    pla                                                               // 9145: 68          h
    sta l00b8                                                         // 9146: 85 b8       ..
    pla                                                               // 9148: 68          h
    sta l00b9                                                         // 9149: 85 b9       ..
    ldy #0                                                            // 914b: a0 00       ..
// $914d referenced 1 time by $9168
loop_c914d
    inc l00b8                                                         // 914d: e6 b8       ..
    bne c9153                                                         // 914f: d0 02       ..
    inc l00b9                                                         // 9151: e6 b9       ..
// $9153 referenced 1 time by $914f
c9153
    lda (l00b8),y                                                     // 9153: b1 b8       ..
    bmi c916b                                                         // 9155: 30 14       0.
    lda l00b8                                                         // 9157: a5 b8       ..
    pha                                                               // 9159: 48          H
    lda l00b9                                                         // 915a: a5 b9       ..
    pha                                                               // 915c: 48          H
    lda (l00b8),y                                                     // 915d: b1 b8       ..
    jsr osasci                                                        // 915f: 20 e3 ff     ..            // Write character
    pla                                                               // 9162: 68          h
    sta l00b9                                                         // 9163: 85 b9       ..
    pla                                                               // 9165: 68          h
    sta l00b8                                                         // 9166: 85 b8       ..
    jmp loop_c914d                                                    // 9168: 4c 4d 91    LM.

// $916b referenced 1 time by $9155
c916b
    jmp (l00b8)                                                       // 916b: 6c b8 00    l..

// $916e referenced 5 times by $8d98, $8da4, $a0ad, $a0c2, $ad24
sub_c916e
    lda #0                                                            // 916e: a9 00       ..
    sta l00b2                                                         // 9170: 85 b2       ..
    lda (l00be),y                                                     // 9172: b1 be       ..
    cmp #$26 // '&'                                                   // 9174: c9 26       .&
    bne c91ae                                                         // 9176: d0 36       .6
    iny                                                               // 9178: c8          .
    lda (l00be),y                                                     // 9179: b1 be       ..
    bcs c9188                                                         // 917b: b0 0b       ..
// $917d referenced 1 time by $91ac
c917d
    iny                                                               // 917d: c8          .
    lda (l00be),y                                                     // 917e: b1 be       ..
    cmp #$2e // '.'                                                   // 9180: c9 2e       ..
    beq c91fb                                                         // 9182: f0 77       .w
    cmp #$21 // '!'                                                   // 9184: c9 21       .!
    bcc c91da                                                         // 9186: 90 52       .R
// $9188 referenced 1 time by $917b
c9188
    cmp #$30 // '0'                                                   // 9188: c9 30       .0
    bcc c9198                                                         // 918a: 90 0c       ..
    cmp #$3a // ':'                                                   // 918c: c9 3a       .:
    bcc c919a                                                         // 918e: 90 0a       ..
    and #$5f // '_'                                                   // 9190: 29 5f       )_
    adc #$b8                                                          // 9192: 69 b8       i.
    bcs c9208                                                         // 9194: b0 72       .r
    cmp #$fa                                                          // 9196: c9 fa       ..
// $9198 referenced 1 time by $918a
c9198
    bcc c9208                                                         // 9198: 90 6e       .n
// $919a referenced 1 time by $918e
c919a
    and #$0f                                                          // 919a: 29 0f       ).
    sta l00b3                                                         // 919c: 85 b3       ..
    lda l00b2                                                         // 919e: a5 b2       ..
    cmp #$10                                                          // 91a0: c9 10       ..
    bcs c9211                                                         // 91a2: b0 6d       .m
    asl                                                               // 91a4: 0a          .
    asl                                                               // 91a5: 0a          .
    asl                                                               // 91a6: 0a          .
    asl                                                               // 91a7: 0a          .
    adc l00b3                                                         // 91a8: 65 b3       e.
    sta l00b2                                                         // 91aa: 85 b2       ..
    bcc c917d                                                         // 91ac: 90 cf       ..
// $91ae referenced 2 times by $9176, $91d8
c91ae
    lda (l00be),y                                                     // 91ae: b1 be       ..
    cmp #$2e // '.'                                                   // 91b0: c9 2e       ..
    beq c91fb                                                         // 91b2: f0 47       .G
    cmp #$21 // '!'                                                   // 91b4: c9 21       .!
    bcc c91da                                                         // 91b6: 90 22       ."
    jsr sub_c9260                                                     // 91b8: 20 60 92     `.
    bcc c9229                                                         // 91bb: 90 6c       .l
    and #$0f                                                          // 91bd: 29 0f       ).
    sta l00b3                                                         // 91bf: 85 b3       ..
    asl l00b2                                                         // 91c1: 06 b2       ..
    bcs c9211                                                         // 91c3: b0 4c       .L
    lda l00b2                                                         // 91c5: a5 b2       ..
    asl                                                               // 91c7: 0a          .
    bcs c9211                                                         // 91c8: b0 47       .G
    asl                                                               // 91ca: 0a          .
    bcs c9211                                                         // 91cb: b0 44       .D
    adc l00b2                                                         // 91cd: 65 b2       e.
    bcs c9211                                                         // 91cf: b0 40       .@
    adc l00b3                                                         // 91d1: 65 b3       e.
    bcs c9211                                                         // 91d3: b0 3c       .<
    sta l00b2                                                         // 91d5: 85 b2       ..
    iny                                                               // 91d7: c8          .
    bne c91ae                                                         // 91d8: d0 d4       ..
// $91da referenced 2 times by $9186, $91b6
c91da
    lda l00b4                                                         // 91da: a5 b4       ..
    bpl c91e3                                                         // 91dc: 10 05       ..
    lda l00b2                                                         // 91de: a5 b2       ..
    beq c9235                                                         // 91e0: f0 53       .S
    rts                                                               // 91e2: 60          `

// $91e3 referenced 1 time by $91dc
c91e3
    lda l00b2                                                         // 91e3: a5 b2       ..
    cmp #$ff                                                          // 91e5: c9 ff       ..
    beq c9215                                                         // 91e7: f0 2c       .,
    lda l00b2                                                         // 91e9: a5 b2       ..
    bne c91f9                                                         // 91eb: d0 0c       ..
    lda l00b4                                                         // 91ed: a5 b4       ..
    beq c9215                                                         // 91ef: f0 24       .$
    dey                                                               // 91f1: 88          .
    lda (l00be),y                                                     // 91f2: b1 be       ..
    iny                                                               // 91f4: c8          .
    eor #$2e // '.'                                                   // 91f5: 49 2e       I.
    bne c9215                                                         // 91f7: d0 1c       ..
// $91f9 referenced 1 time by $91eb
c91f9
    sec                                                               // 91f9: 38          8
    rts                                                               // 91fa: 60          `

// $91fb referenced 2 times by $9182, $91b2
c91fb
    lda l00b4                                                         // 91fb: a5 b4       ..
    bne c9229                                                         // 91fd: d0 2a       .*
    inc l00b4                                                         // 91ff: e6 b4       ..
    lda l00b2                                                         // 9201: a5 b2       ..
    cmp #$ff                                                          // 9203: c9 ff       ..
    beq c9244                                                         // 9205: f0 3d       .=
    rts                                                               // 9207: 60          `

// $9208 referenced 3 times by $9194, $9198, $bb6b
c9208
    lda #$f1                                                          // 9208: a9 f1       ..
    jsr generate_error_inline                                         // 920a: 20 b8 96     ..
    .asc "hex", 0                                                     // 920d: 68 65 78... hex

// $9211 referenced 6 times by $91a2, $91c3, $91c8, $91cb, $91cf, $91d3
c9211
    bit l00b4                                                         // 9211: 24 b4       $.
    bmi c9235                                                         // 9213: 30 20       0
// $9215 referenced 4 times by $8f46, $91e7, $91ef, $91f7
c9215
    lda #$d0                                                          // 9215: a9 d0       ..
    jsr generate_error_inline                                         // 9217: 20 b8 96     ..
    .asc "station number", 0                                          // 921a: 73 74 61... sta

// $9229 referenced 2 times by $91bb, $91fd
c9229
    lda #$f0                                                          // 9229: a9 f0       ..
    jsr generate_error_inline                                         // 922b: 20 b8 96     ..
    .asc "number", 0                                                  // 922e: 6e 75 6d... num

// $9235 referenced 2 times by $91e0, $9213
c9235
    lda #$94                                                          // 9235: a9 94       ..
    jsr generate_error_inline                                         // 9237: 20 b8 96     ..
    .asc "parameter", 0                                               // 923a: 70 61 72... par

// $9244 referenced 1 time by $9205
c9244
    lda #$d1                                                          // 9244: a9 d1       ..
    jsr generate_error_inline                                         // 9246: 20 b8 96     ..
    .asc "network number", 0                                          // 9249: 6e 65 74... net

// $9258 referenced 3 times by $8d93, $b005, $b1dc
sub_c9258
    cmp #$26 // '&'                                                   // 9258: c9 26       .&
    beq c9266                                                         // 925a: f0 0a       ..
    cmp #$2e // '.'                                                   // 925c: c9 2e       ..
    beq c9266                                                         // 925e: f0 06       ..
// $9260 referenced 1 time by $91b8
sub_c9260
    cmp #$3a // ':'                                                   // 9260: c9 3a       .:
    bcs c9267                                                         // 9262: b0 03       ..
    cmp #$30 // '0'                                                   // 9264: c9 30       .0
// $9266 referenced 2 times by $925a, $925e
c9266
    rts                                                               // 9266: 60          `

// $9267 referenced 1 time by $9262
c9267
    clc                                                               // 9267: 18          .
    rts                                                               // 9268: 60          `

// $9269 referenced 2 times by $9b20, $9b4c
sub_c9269
    ldy #$0e                                                          // 9269: a0 0e       ..
    lda (l00bb),y                                                     // 926b: b1 bb       ..
    and #$3f // '?'                                                   // 926d: 29 3f       )?
    ldx #4                                                            // 926f: a2 04       ..
    bne c9277                                                         // 9271: d0 04       ..
// $9273 referenced 2 times by $9a2a, $9b69
sub_c9273
    and #$1f                                                          // 9273: 29 1f       ).
    ldx #$ff                                                          // 9275: a2 ff       ..
// $9277 referenced 1 time by $9271
c9277
    sta l00b8                                                         // 9277: 85 b8       ..
    lda #0                                                            // 9279: a9 00       ..
// $927b referenced 1 time by $9283
loop_c927b
    inx                                                               // 927b: e8          .
    lsr l00b8                                                         // 927c: 46 b8       F.
    bcc c9283                                                         // 927e: 90 03       ..
    ora l9286,x                                                       // 9280: 1d 86 92    ...
// $9283 referenced 1 time by $927e
c9283
    bne loop_c927b                                                    // 9283: d0 f6       ..
    rts                                                               // 9285: 60          `

// $9286 referenced 1 time by $9280
l9286
    .byt $50, $20,   5,   2, $88,   4,   8, $80, $10,   1,   2        // 9286: 50 20 05... P .

// $9291 referenced 1 time by $a114
sub_c9291
    stx os_text_ptr                                                   // 9291: 86 f2       ..
    sty l00f3                                                         // 9293: 84 f3       ..
// $9295 referenced 2 times by $8e33, $ad80
sub_c9295
    sta l00bd                                                         // 9295: 85 bd       ..
    stx l00be                                                         // 9297: 86 be       ..
    sty l00bf                                                         // 9299: 84 bf       ..
// $929b referenced 1 time by $b984
sub_c929b
    stx l00bb                                                         // 929b: 86 bb       ..
    sty l00bc                                                         // 929d: 84 bc       ..
// $929f referenced 1 time by $9885
c929f
    php                                                               // 929f: 08          .
    lsr l0098                                                         // 92a0: 46 98       F.
    plp                                                               // 92a2: 28          (
    rts                                                               // 92a3: 60          `

// $92a4 referenced 2 times by $9998, $9a9b
sub_c92a4
    ldx #4                                                            // 92a4: a2 04       ..
// $92a6 referenced 1 time by $92ad
loop_c92a6
    lda l00af,x                                                       // 92a6: b5 af       ..
    eor l00b3,x                                                       // 92a8: 55 b3       U.
    bne c92af                                                         // 92aa: d0 03       ..
    dex                                                               // 92ac: ca          .
    bne loop_c92a6                                                    // 92ad: d0 f7       ..
// $92af referenced 1 time by $92aa
c92af
    rts                                                               // 92af: 60          `

sub_c92b0
    ldx #$20 // ' '                                                   // 92b0: a2 20       .
    ldy #$2f // '/'                                                   // 92b2: a0 2f       ./
    rts                                                               // 92b4: 60          `

    .byt   8, $48, $8a, $48, $ba, $bd,   2,   1, $20, $6b, $b4, $30   // 92b5: 08 48 8a... .H.
    .byt $1f, $a9, $40, $1d, $60, $10, $9d, $60, $10, $d0, $15,   8   // 92c1: 1f a9 40... ..@
    .byt $48, $8a, $48, $ba, $bd,   2,   1, $20, $6b, $b4, $30,   8   // 92cd: 48 8a 48... H.H
    .byt $a9, $bf, $3d, $60, $10, $9d, $60, $10, $68, $aa             // 92d9: a9 bf 3d... ..=
    .asc "h(`"                                                        // 92e3: 68 28 60    h(`

sub_c92e6
    jsr sub_c9327                                                     // 92e6: 20 27 93     '.
    txa                                                               // 92e9: 8a          .
    pha                                                               // 92ea: 48          H
    jsr sub_c9349                                                     // 92eb: 20 49 93     I.
    jsr sub_cae97                                                     // 92ee: 20 97 ae     ..
    pla                                                               // 92f1: 68          h
    tax                                                               // 92f2: aa          .
    jsr sub_c9309                                                     // 92f3: 20 09 93     ..
    cmp #$0d                                                          // 92f6: c9 0d       ..
    bne c9311                                                         // 92f8: d0 17       ..
// $92fa referenced 3 times by $930e, $9409, $aedf
c92fa
    lda #$cc                                                          // 92fa: a9 cc       ..
    jsr generate_error_inline                                         // 92fc: 20 b8 96     ..
    .asc "file name", 0                                               // 92ff: 66 69 6c... fil

// $9309 referenced 2 times by $92f3, $9311
sub_c9309
    lda l0e30                                                         // 9309: ad 30 0e    .0.
    cmp #$26 // '&'                                                   // 930c: c9 26       .&
    beq c92fa                                                         // 930e: f0 ea       ..
    rts                                                               // 9310: 60          `

// $9311 referenced 3 times by $92f8, $931f, $93da
c9311
    jsr sub_c9309                                                     // 9311: 20 09 93     ..
    sta l0f05,x                                                       // 9314: 9d 05 0f    ...
    inx                                                               // 9317: e8          .
    cmp #$0d                                                          // 9318: c9 0d       ..
    beq c9322                                                         // 931a: f0 06       ..
    jsr caeb7                                                         // 931c: 20 b7 ae     ..
    jmp c9311                                                         // 931f: 4c 11 93    L..

// $9322 referenced 2 times by $931a, $9402
c9322
    ldy #0                                                            // 9322: a0 00       ..
    jmp c8e24                                                         // 9324: 4c 24 8e    L$.

// $9327 referenced 2 times by $92e6, $938b
sub_c9327
    tya                                                               // 9327: 98          .
    pha                                                               // 9328: 48          H
// $9329 referenced 1 time by $932d
loop_c9329
    dex                                                               // 9329: ca          .
    lda la3f0,x                                                       // 932a: bd f0 a3    ...
    bpl loop_c9329                                                    // 932d: 10 fa       ..
    inx                                                               // 932f: e8          .
    ldy #0                                                            // 9330: a0 00       ..
// $9332 referenced 1 time by $933c
loop_c9332
    lda la3f0,x                                                       // 9332: bd f0 a3    ...
    bmi c933e                                                         // 9335: 30 07       0.
    sta l0f05,y                                                       // 9337: 99 05 0f    ...
    inx                                                               // 933a: e8          .
    iny                                                               // 933b: c8          .
    bne loop_c9332                                                    // 933c: d0 f4       ..
// $933e referenced 1 time by $9335
c933e
    lda #$20 // ' '                                                   // 933e: a9 20       .
    sta l0f05,y                                                       // 9340: 99 05 0f    ...
    iny                                                               // 9343: c8          .
    tya                                                               // 9344: 98          .
    tax                                                               // 9345: aa          .
    pla                                                               // 9346: 68          h
    tay                                                               // 9347: a8          .
// $9348 referenced 1 time by $937d
c9348
    rts                                                               // 9348: 60          `

// $9349 referenced 2 times by $92eb, $9393
sub_c9349
    lda #0                                                            // 9349: a9 00       ..
    tax                                                               // 934b: aa          .
    sta l10d8                                                         // 934c: 8d d8 10    ...
// $934f referenced 1 time by $9356
loop_c934f
    lda (l00be),y                                                     // 934f: b1 be       ..
    cmp #$20 // ' '                                                   // 9351: c9 20       .
    bne c9358                                                         // 9353: d0 03       ..
    iny                                                               // 9355: c8          .
    bne loop_c934f                                                    // 9356: d0 f7       ..
// $9358 referenced 1 time by $9353
c9358
    cmp #$22 // '"'                                                   // 9358: c9 22       ."
    bne c9363                                                         // 935a: d0 07       ..
    iny                                                               // 935c: c8          .
    eor l10d8                                                         // 935d: 4d d8 10    M..
    sta l10d8                                                         // 9360: 8d d8 10    ...
// $9363 referenced 2 times by $935a, $9378
c9363
    lda (l00be),y                                                     // 9363: b1 be       ..
    cmp #$22 // '"'                                                   // 9365: c9 22       ."
    bne c9371                                                         // 9367: d0 08       ..
    eor l10d8                                                         // 9369: 4d d8 10    M..
    sta l10d8                                                         // 936c: 8d d8 10    ...
    lda #$20 // ' '                                                   // 936f: a9 20       .
// $9371 referenced 1 time by $9367
c9371
    sta l0e30,x                                                       // 9371: 9d 30 0e    .0.
    iny                                                               // 9374: c8          .
    inx                                                               // 9375: e8          .
    cmp #$0d                                                          // 9376: c9 0d       ..
    bne c9363                                                         // 9378: d0 e9       ..
    lda l10d8                                                         // 937a: ad d8 10    ...
    beq c9348                                                         // 937d: f0 c9       ..
    lda l00fd                                                         // 937f: a5 fd       ..
    jsr generate_error_inline                                         // 9381: 20 b8 96     ..
    .asc "string", 0                                                  // 9384: 73 74 72... str

sub_c938b
    jsr sub_c9327                                                     // 938b: 20 27 93     '.
    txa                                                               // 938e: 8a          .
    pha                                                               // 938f: 48          H
    jsr sub_caf32                                                     // 9390: 20 32 af     2.
    jsr sub_c9349                                                     // 9393: 20 49 93     I.
    jsr sub_cae97                                                     // 9396: 20 97 ae     ..
    pla                                                               // 9399: 68          h
    tax                                                               // 939a: aa          .
// $939b referenced 1 time by $93b9
loop_c939b
    lda l0e30                                                         // 939b: ad 30 0e    .0.
    cmp #$0d                                                          // 939e: c9 0d       ..
    bne c93ae                                                         // 93a0: d0 0c       ..
// $93a2 referenced 1 time by $93d8
c93a2
    lda #$b0                                                          // 93a2: a9 b0       ..
    jsr generate_error_inline                                         // 93a4: 20 b8 96     ..
    .asc "rename", 0                                                  // 93a7: 72 65 6e... ren

// $93ae referenced 1 time by $93a0
c93ae
    sta l0f05,x                                                       // 93ae: 9d 05 0f    ...
    inx                                                               // 93b1: e8          .
    cmp #$20 // ' '                                                   // 93b2: c9 20       .
    beq c93bc                                                         // 93b4: f0 06       ..
    jsr caeb7                                                         // 93b6: 20 b7 ae     ..
    jmp loop_c939b                                                    // 93b9: 4c 9b 93    L..

// $93bc referenced 2 times by $93b4, $93c4
c93bc
    jsr caeb7                                                         // 93bc: 20 b7 ae     ..
    lda l0e30                                                         // 93bf: ad 30 0e    .0.
    cmp #$20 // ' '                                                   // 93c2: c9 20       .
    beq c93bc                                                         // 93c4: f0 f6       ..
    lda l1071                                                         // 93c6: ad 71 10    .q.
    pha                                                               // 93c9: 48          H
    jsr sub_caf32                                                     // 93ca: 20 32 af     2.
    txa                                                               // 93cd: 8a          .
    pha                                                               // 93ce: 48          H
    jsr sub_cae97                                                     // 93cf: 20 97 ae     ..
    pla                                                               // 93d2: 68          h
    tax                                                               // 93d3: aa          .
    pla                                                               // 93d4: 68          h
    cmp l1071                                                         // 93d5: cd 71 10    .q.
    bne c93a2                                                         // 93d8: d0 c8       ..
    jmp c9311                                                         // 93da: 4c 11 93    L..

sub_c93dd
    lda (l00be),y                                                     // 93dd: b1 be       ..
    cmp #$26 // '&'                                                   // 93df: c9 26       .&
    bne c9462                                                         // 93e1: d0 7f       ..
    iny                                                               // 93e3: c8          .
    lda (l00be),y                                                     // 93e4: b1 be       ..
    cmp #$0d                                                          // 93e6: c9 0d       ..
    beq c93ee                                                         // 93e8: f0 04       ..
    cmp #$20 // ' '                                                   // 93ea: c9 20       .
    bne c9405                                                         // 93ec: d0 17       ..
// $93ee referenced 1 time by $93e8
c93ee
    ldy #$ff                                                          // 93ee: a0 ff       ..
// $93f0 referenced 1 time by $93f8
loop_c93f0
    iny                                                               // 93f0: c8          .
    lda (l00be),y                                                     // 93f1: b1 be       ..
    sta l0f05,y                                                       // 93f3: 99 05 0f    ...
    cmp #$26 // '&'                                                   // 93f6: c9 26       .&
    bne loop_c93f0                                                    // 93f8: d0 f6       ..
    lda #$0d                                                          // 93fa: a9 0d       ..
    sta l0f05,y                                                       // 93fc: 99 05 0f    ...
    iny                                                               // 93ff: c8          .
    tya                                                               // 9400: 98          .
    tax                                                               // 9401: aa          .
    jmp c9322                                                         // 9402: 4c 22 93    L".

// $9405 referenced 1 time by $93ec
c9405
    cmp #$2e // '.'                                                   // 9405: c9 2e       ..
    beq c940c                                                         // 9407: f0 03       ..
    jmp c92fa                                                         // 9409: 4c fa 92    L..

// $940c referenced 1 time by $9407
c940c
    iny                                                               // 940c: c8          .
    sty l00b0                                                         // 940d: 84 b0       ..
    lda #4                                                            // 940f: a9 04       ..
    sta l0f05                                                         // 9411: 8d 05 0f    ...
    lda l1071                                                         // 9414: ad 71 10    .q.
    ora #$40 // '@'                                                   // 9417: 09 40       .@
    sta l1071                                                         // 9419: 8d 71 10    .q.
    ldx #1                                                            // 941c: a2 01       ..
    jsr sub_caf06                                                     // 941e: 20 06 af     ..
    ldy #$12                                                          // 9421: a0 12       ..
    jsr c94ad                                                         // 9423: 20 ad 94     ..
    lda l0f05                                                         // 9426: ad 05 0f    ...
    cmp #2                                                            // 9429: c9 02       ..
    beq c943c                                                         // 942b: f0 0f       ..
    lda #$d6                                                          // 942d: a9 d6       ..
    jsr generate_error_inline3                                        // 942f: 20 d1 96     ..
    .asc "Not found", 0                                               // 9432: 4e 6f 74... Not

// $943c referenced 1 time by $942b
c943c
    lda l0e03                                                         // 943c: ad 03 0e    ...
    sta l0f05                                                         // 943f: 8d 05 0f    ...
    ldx #1                                                            // 9442: a2 01       ..
    ldy #7                                                            // 9444: a0 07       ..
    jsr c94ad                                                         // 9446: 20 ad 94     ..
    ldx #1                                                            // 9449: a2 01       ..
    stx l0f05                                                         // 944b: 8e 05 0f    ...
    stx l0f06                                                         // 944e: 8e 06 0f    ...
    inx                                                               // 9451: e8          .
    ldy l00b0                                                         // 9452: a4 b0       ..
    jsr sub_caf06                                                     // 9454: 20 06 af     ..
    ldy #6                                                            // 9457: a0 06       ..
    jsr c94ad                                                         // 9459: 20 ad 94     ..
    ldy l0f05                                                         // 945c: ac 05 0f    ...
    jmp ca2f4                                                         // 945f: 4c f4 a2    L..

// $9462 referenced 1 time by $93e1
c9462
    jmp c8e15                                                         // 9462: 4c 15 8e    L..

// $9465 referenced 1 time by $94f1
sub_c9465
    lda #$90                                                          // 9465: a9 90       ..
// $9467 referenced 1 time by $9ae0
sub_c9467
    jsr sub_c9473                                                     // 9467: 20 73 94     s.
    sta l00c1                                                         // 946a: 85 c1       ..
    lda #3                                                            // 946c: a9 03       ..
    sta l00c4                                                         // 946e: 85 c4       ..
    dec l00c0                                                         // 9470: c6 c0       ..
    rts                                                               // 9472: 60          `

// $9473 referenced 4 times by $8dfc, $9467, $94e0, $b93a
sub_c9473
    pha                                                               // 9473: 48          H
    ldy #$0b                                                          // 9474: a0 0b       ..
// $9476 referenced 1 time by $9487
loop_c9476
    lda l948b,y                                                       // 9476: b9 8b 94    ...
    sta l00c0,y                                                       // 9479: 99 c0 00    ...
    cpy #2                                                            // 947c: c0 02       ..
    bpl c9486                                                         // 947e: 10 06       ..
    lda l0e00,y                                                       // 9480: b9 00 0e    ...
    sta l00c2,y                                                       // 9483: 99 c2 00    ...
// $9486 referenced 1 time by $947e
c9486
    dey                                                               // 9486: 88          .
    bpl loop_c9476                                                    // 9487: 10 ed       ..
    pla                                                               // 9489: 68          h
    rts                                                               // 948a: 60          `

// $948b referenced 1 time by $9476
l948b
    .byt $80, $99,   0,   0,   0, $0f                                 // 948b: 80 99 00... ...
// $9491 referenced 19 times by $8c73, $964e, $977d, $9b41, $a09e, $a19d, $a316, $a341, $a378, $af7f, $af85, $b025, $b1a5, $b205, $b246, $b2ce, $b55a, $b598, $b99d
l9491
    .byt $ff, $ff, $ff, $0f, $ff, $ff                                 // 9491: ff ff ff... ...

// $9497 referenced 1 time by $9f14
sub_c9497
    pha                                                               // 9497: 48          H
    sec                                                               // 9498: 38          8
    bcs c94b5                                                         // 9499: b0 1a       ..
// $949b referenced 2 times by $9958, $9a0c
sub_c949b
    clv                                                               // 949b: b8          .
    bvc c94b4                                                         // 949c: 50 16       P.
sub_c949e
    ldy #0                                                            // 949e: a0 00       ..
    jsr sub_cb799                                                     // 94a0: 20 99 b7     ..
    lda #osbyte_close_spool_exec                                      // 94a3: a9 77       .w
    jsr osbyte                                                        // 94a5: 20 f4 ff     ..            // Close any *SPOOL and *EXEC files
    jsr sub_cb559                                                     // 94a8: 20 59 b5     Y.
    ldy #$17                                                          // 94ab: a0 17       ..
// $94ad referenced 15 times by $8e24, $9423, $9446, $9459, $9b5d, $9de4, $a1d6, $a1fe, $ad41, $adb8, $adf6, $ae65, $b381, $b418, $b917
c94ad
    clv                                                               // 94ad: b8          .
// $94ae referenced 2 times by $9b44, $af82
c94ae
    lda l0e02                                                         // 94ae: ad 02 0e    ...
    sta l0f02                                                         // 94b1: 8d 02 0f    ...
// $94b4 referenced 1 time by $949c
c94b4
    clc                                                               // 94b4: 18          .
// $94b5 referenced 1 time by $9499
c94b5
    php                                                               // 94b5: 08          .
    sty l0f01                                                         // 94b6: 8c 01 0f    ...
    ldy #1                                                            // 94b9: a0 01       ..
// $94bb referenced 1 time by $94c2
loop_c94bb
    lda l0e03,y                                                       // 94bb: b9 03 0e    ...
    sta l0f03,y                                                       // 94be: 99 03 0f    ...
    dey                                                               // 94c1: 88          .
    bpl loop_c94bb                                                    // 94c2: 10 f7       ..
    bit l1071                                                         // 94c4: 2c 71 10    ,q.
    bvs c94d3                                                         // 94c7: 70 0a       p.
    bpl c94d9                                                         // 94c9: 10 0e       ..
    lda l0e04                                                         // 94cb: ad 04 0e    ...
    sta l0f03                                                         // 94ce: 8d 03 0f    ...
    bvc c94d9                                                         // 94d1: 50 06       P.
// $94d3 referenced 1 time by $94c7
c94d3
    lda l0e02                                                         // 94d3: ad 02 0e    ...
    sta l0f03                                                         // 94d6: 8d 03 0f    ...
// $94d9 referenced 2 times by $94c9, $94d1
c94d9
    plp                                                               // 94d9: 28          (
    php                                                               // 94da: 08          .
    lda #$90                                                          // 94db: a9 90       ..
    sta l0f00                                                         // 94dd: 8d 00 0f    ...
    jsr sub_c9473                                                     // 94e0: 20 73 94     s.
    txa                                                               // 94e3: 8a          .
    adc #5                                                            // 94e4: 69 05       i.
    sta l00c8                                                         // 94e6: 85 c8       ..
    plp                                                               // 94e8: 28          (
    bcs c9505                                                         // 94e9: b0 1a       ..
    php                                                               // 94eb: 08          .
    jsr sub_c9837                                                     // 94ec: 20 37 98     7.
    plp                                                               // 94ef: 28          (
// $94f0 referenced 2 times by $9a1f, $9f68
sub_c94f0
    php                                                               // 94f0: 08          .
    jsr sub_c9465                                                     // 94f1: 20 65 94     e.
    jsr sub_c95dd                                                     // 94f4: 20 dd 95     ..
    plp                                                               // 94f7: 28          (
// $94f8 referenced 1 time by $950c
loop_c94f8
    iny                                                               // 94f8: c8          .
    lda (l00c4),y                                                     // 94f9: b1 c4       ..
    tax                                                               // 94fb: aa          .
    beq c9504                                                         // 94fc: f0 06       ..
    bvc c9502                                                         // 94fe: 50 02       P.
    adc #$2a // '*'                                                   // 9500: 69 2a       i*
// $9502 referenced 1 time by $94fe
c9502
    bne c950e                                                         // 9502: d0 0a       ..
// $9504 referenced 2 times by $94fc, $9574
c9504
    rts                                                               // 9504: 60          `

// $9505 referenced 1 time by $94e9
c9505
    pla                                                               // 9505: 68          h
    ldx #$c0                                                          // 9506: a2 c0       ..
    iny                                                               // 9508: c8          .
    jsr sub_cac24                                                     // 9509: 20 24 ac     $.
    bcc loop_c94f8                                                    // 950c: 90 ea       ..
// $950e referenced 1 time by $9502
c950e
    stx l0e09                                                         // 950e: 8e 09 0e    ...
    lda l0e07                                                         // 9511: ad 07 0e    ...
    php                                                               // 9514: 08          .
    bne c951b                                                         // 9515: d0 04       ..
    cpx #$bf                                                          // 9517: e0 bf       ..
    bne c9551                                                         // 9519: d0 36       .6
// $951b referenced 1 time by $9515
c951b
    lda #$40 // '@'                                                   // 951b: a9 40       .@
    pha                                                               // 951d: 48          H
    ldx #$f0                                                          // 951e: a2 f0       ..
// $9520 referenced 1 time by $952e
loop_c9520
    pla                                                               // 9520: 68          h
    ora l0fc8,x                                                       // 9521: 1d c8 0f    ...
    pha                                                               // 9524: 48          H
    lda l0fc8,x                                                       // 9525: bd c8 0f    ...
    and #$c0                                                          // 9528: 29 c0       ).
    sta l0fc8,x                                                       // 952a: 9d c8 0f    ...
    inx                                                               // 952d: e8          .
    bmi loop_c9520                                                    // 952e: 30 f0       0.
    stx l0e07                                                         // 9530: 8e 07 0e    ...
    jsr sub_cb559                                                     // 9533: 20 59 b5     Y.
    pla                                                               // 9536: 68          h
    ror                                                               // 9537: 6a          j
    bcc c9547                                                         // 9538: 90 0d       ..
    jsr print_inline_top_bit_clear                                    // 953a: 20 45 91     E.
    .asc "Data Lost", $0d                                             // 953d: 44 61 74... Dat

// $9547 referenced 1 time by $9538
c9547
    ldx l0e09                                                         // 9547: ae 09 0e    ...
    plp                                                               // 954a: 28          (
    beq c9551                                                         // 954b: f0 04       ..
    pla                                                               // 954d: 68          h
    pla                                                               // 954e: 68          h
    pla                                                               // 954f: 68          h
    rts                                                               // 9550: 60          `

// $9551 referenced 2 times by $9519, $954b
c9551
    ldy #1                                                            // 9551: a0 01       ..
    cpx #$a8                                                          // 9553: e0 a8       ..
    bcs c955b                                                         // 9555: b0 04       ..
    lda #$a8                                                          // 9557: a9 a8       ..
    sta (l00c4),y                                                     // 9559: 91 c4       ..
// $955b referenced 1 time by $9555
c955b
    ldy #$ff                                                          // 955b: a0 ff       ..
// $955d referenced 1 time by $9565
loop_c955d
    iny                                                               // 955d: c8          .
    lda (l00c4),y                                                     // 955e: b1 c4       ..
    sta l0100,y                                                       // 9560: 99 00 01    ...
    eor #$0d                                                          // 9563: 49 0d       I.
    bne loop_c955d                                                    // 9565: d0 f6       ..
    sta l0100,y                                                       // 9567: 99 00 01    ...
    dey                                                               // 956a: 88          .
    tya                                                               // 956b: 98          .
    tax                                                               // 956c: aa          .
    jmp c96f0                                                         // 956d: 4c f0 96    L..

// $9570 referenced 2 times by $8dd6, $985b
sub_c9570
    lda l00ff                                                         // 9570: a5 ff       ..
    and l0098                                                         // 9572: 25 98       %.
    bpl c9504                                                         // 9574: 10 8e       ..
// $9576 referenced 1 time by $b445
c9576
    lda #osbyte_acknowledge_escape                                    // 9576: a9 7e       .~
    jsr osbyte                                                        // 9578: 20 f4 ff     ..            // Clear escape condition and perform escape effects
    lda #6                                                            // 957b: a9 06       ..
    jmp c964e                                                         // 957d: 4c 4e 96    LN.

sub_c9580
    ldy #0                                                            // 9580: a0 00       ..
    lda (l009c),y                                                     // 9582: b1 9c       ..
    beq c9589                                                         // 9584: f0 03       ..
// $9586 referenced 1 time by $95cc
c9586
    jmp cacdd                                                         // 9586: 4c dd ac    L..

// $9589 referenced 2 times by $9584, $95c2
c9589
    ora #9                                                            // 9589: 09 09       ..
    sta (l009c),y                                                     // 958b: 91 9c       ..
    ldx #$80                                                          // 958d: a2 80       ..
    ldy #$80                                                          // 958f: a0 80       ..
    lda (l009c),y                                                     // 9591: b1 9c       ..
    pha                                                               // 9593: 48          H
    iny                                                               // 9594: c8          .
    lda (l009c),y                                                     // 9595: b1 9c       ..
    ldy #$0f                                                          // 9597: a0 0f       ..
    sta (l009e),y                                                     // 9599: 91 9e       ..
    dey                                                               // 959b: 88          .
    pla                                                               // 959c: 68          h
    sta (l009e),y                                                     // 959d: 91 9e       ..
    jsr sub_c8aea                                                     // 959f: 20 ea 8a     ..
    jsr sub_caa85                                                     // 95a2: 20 85 aa     ..
    ldx #1                                                            // 95a5: a2 01       ..
    ldy #0                                                            // 95a7: a0 00       ..
    lda #osbyte_read_write_econet_keyboard_disable                    // 95a9: a9 c9       ..
    jsr osbyte                                                        // 95ab: 20 f4 ff     ..            // Disable keyboard (for Econet)
sub_c95ae
    jsr cacdd                                                         // 95ae: 20 dd ac     ..
    lda #0                                                            // 95b1: a9 00       ..
    jsr generate_error_inline3                                        // 95b3: 20 d1 96     ..
    .asc "Remoted", 0                                                 // 95b6: 52 65 6d... Rem

sub_c95be
    ldy #0                                                            // 95be: a0 00       ..
    lda (l009c),y                                                     // 95c0: b1 9c       ..
    beq c9589                                                         // 95c2: f0 c5       ..
    ldy #$80                                                          // 95c4: a0 80       ..
    lda (l009c),y                                                     // 95c6: b1 9c       ..
    ldy #$0e                                                          // 95c8: a0 0e       ..
    cmp (l009e),y                                                     // 95ca: d1 9e       ..
    bne c9586                                                         // 95cc: d0 b8       ..
sub_c95ce
    ldy #$82                                                          // 95ce: a0 82       ..
    lda (l009c),y                                                     // 95d0: b1 9c       ..
    tay                                                               // 95d2: a8          .
    ldx #0                                                            // 95d3: a2 00       ..
    jsr cacdd                                                         // 95d5: 20 dd ac     ..
    lda #osbyte_insert_input_buffer                                   // 95d8: a9 99       ..
    jmp osbyte                                                        // 95da: 4c f4 ff    L..            // Insert character Y into input buffer X

// $95dd referenced 5 times by $94f4, $99b2, $9aea, $abd1, $ac73
sub_c95dd
    lda l0d6e                                                         // 95dd: ad 6e 0d    .n.
    pha                                                               // 95e0: 48          H
    lda l0d61                                                         // 95e1: ad 61 0d    .a.
    pha                                                               // 95e4: 48          H
    lda l009b                                                         // 95e5: a5 9b       ..
    bne c95ee                                                         // 95e7: d0 05       ..
    ora #$80                                                          // 95e9: 09 80       ..
    sta l0d61                                                         // 95eb: 8d 61 0d    .a.
// $95ee referenced 1 time by $95e7
c95ee
    lda #0                                                            // 95ee: a9 00       ..
    pha                                                               // 95f0: 48          H
    pha                                                               // 95f1: 48          H
    tay                                                               // 95f2: a8          .
    tsx                                                               // 95f3: ba          .
// $95f4 referenced 3 times by $95fb, $9600, $9605
c95f4
    lda (l009a),y                                                     // 95f4: b1 9a       ..
    bmi c9607                                                         // 95f6: 30 0f       0.
    dec l0101,x                                                       // 95f8: de 01 01    ...
    bne c95f4                                                         // 95fb: d0 f7       ..
    dec l0102,x                                                       // 95fd: de 02 01    ...
    bne c95f4                                                         // 9600: d0 f2       ..
    dec l0104,x                                                       // 9602: de 04 01    ...
    bne c95f4                                                         // 9605: d0 ed       ..
// $9607 referenced 1 time by $95f6
c9607
    pla                                                               // 9607: 68          h
    pla                                                               // 9608: 68          h
    pla                                                               // 9609: 68          h
    sta l0d61                                                         // 960a: 8d 61 0d    .a.
    pla                                                               // 960d: 68          h
    beq c961a                                                         // 960e: f0 0a       ..
    rts                                                               // 9610: 60          `

// $9611 referenced 6 times by $9627, $9660, $967c, $96a6, $96b8, $96d1
sta_e09_if_d6c_b7_set
    bit l0d6c                                                         // 9611: 2c 6c 0d    ,l.
    bpl c9619                                                         // 9614: 10 03       ..
    sta l0e09                                                         // 9616: 8d 09 0e    ...
// $9619 referenced 1 time by $9614
c9619
    rts                                                               // 9619: 60          `

// $961a referenced 1 time by $960e
c961a
    ldx #8                                                            // 961a: a2 08       ..
    ldy l97ad,x                                                       // 961c: bc ad 97    ...
    ldx #0                                                            // 961f: a2 00       ..
    stx l0100                                                         // 9621: 8e 00 01    ...
    lda l97b9,y                                                       // 9624: b9 b9 97    ...
    jsr sta_e09_if_d6c_b7_set                                         // 9627: 20 11 96     ..
// $962a referenced 1 time by $9634
loop_c962a
    lda l97b9,y                                                       // 962a: b9 b9 97    ...
    sta l0101,x                                                       // 962d: 9d 01 01    ...
    beq c9636                                                         // 9630: f0 04       ..
    inx                                                               // 9632: e8          .
    iny                                                               // 9633: c8          .
    bne loop_c962a                                                    // 9634: d0 f4       ..
// $9636 referenced 1 time by $9630
c9636
    jsr sub_c974d                                                     // 9636: 20 4d 97     M.
    lda #0                                                            // 9639: a9 00       ..
    sta l0101,x                                                       // 963b: 9d 01 01    ...
    jmp c96f0                                                         // 963e: 4c f0 96    L..

// $9641 referenced 1 time by $98c6
c9641
    lda (l009a,x)                                                     // 9641: a1 9a       ..
    cmp #$41 // 'A'                                                   // 9643: c9 41       .A
    bne c9649                                                         // 9645: d0 02       ..
    lda #$42 // 'B'                                                   // 9647: a9 42       .B
// $9649 referenced 1 time by $9645
c9649
    clv                                                               // 9649: b8          .
    bvc c9651                                                         // 964a: 50 05       P.
// $964c referenced 1 time by $987f
c964c
    lda (l009a,x)                                                     // 964c: a1 9a       ..
// $964e referenced 2 times by $957d, $9ddc
c964e
    bit l9491                                                         // 964e: 2c 91 94    ,..
// $9651 referenced 1 time by $964a
c9651
    and #7                                                            // 9651: 29 07       ).
    pha                                                               // 9653: 48          H
    cmp #2                                                            // 9654: c9 02       ..
    bne c969a                                                         // 9656: d0 42       .B
    php                                                               // 9658: 08          .
    tax                                                               // 9659: aa          .
    ldy l97ad,x                                                       // 965a: bc ad 97    ...
    lda l97b9,y                                                       // 965d: b9 b9 97    ...
    jsr sta_e09_if_d6c_b7_set                                         // 9660: 20 11 96     ..
    ldx #0                                                            // 9663: a2 00       ..
    stx l0100                                                         // 9665: 8e 00 01    ...
// $9668 referenced 1 time by $9672
loop_c9668
    lda l97b9,y                                                       // 9668: b9 b9 97    ...
    sta l0101,x                                                       // 966b: 9d 01 01    ...
    beq c9674                                                         // 966e: f0 04       ..
    iny                                                               // 9670: c8          .
    inx                                                               // 9671: e8          .
    bne loop_c9668                                                    // 9672: d0 f4       ..
// $9674 referenced 1 time by $966e
c9674
    jsr sub_c974d                                                     // 9674: 20 4d 97     M.
    plp                                                               // 9677: 28          (
    bvs c9686                                                         // 9678: 70 0c       p.
    lda #$a4                                                          // 967a: a9 a4       ..
    jsr sta_e09_if_d6c_b7_set                                         // 967c: 20 11 96     ..
    sta l0101                                                         // 967f: 8d 01 01    ...
    ldy #$0b                                                          // 9682: a0 0b       ..
    bne c9688                                                         // 9684: d0 02       ..
// $9686 referenced 1 time by $9678
c9686
    ldy #9                                                            // 9686: a0 09       ..
// $9688 referenced 1 time by $9684
c9688
    lda l97ad,y                                                       // 9688: b9 ad 97    ...
    tay                                                               // 968b: a8          .
// $968c referenced 1 time by $9696
loop_c968c
    lda l97b9,y                                                       // 968c: b9 b9 97    ...
    sta l0101,x                                                       // 968f: 9d 01 01    ...
    beq c9698                                                         // 9692: f0 04       ..
    iny                                                               // 9694: c8          .
    inx                                                               // 9695: e8          .
    bne loop_c968c                                                    // 9696: d0 f4       ..
// $9698 referenced 1 time by $9692
c9698
    beq c96af                                                         // 9698: f0 15       ..
// $969a referenced 1 time by $9656
c969a
    tax                                                               // 969a: aa          .
    ldy l97ad,x                                                       // 969b: bc ad 97    ...
    ldx #0                                                            // 969e: a2 00       ..
    stx l0100                                                         // 96a0: 8e 00 01    ...
    lda l97b9,y                                                       // 96a3: b9 b9 97    ...
    jsr sta_e09_if_d6c_b7_set                                         // 96a6: 20 11 96     ..
// $96a9 referenced 1 time by $96b3
loop_c96a9
    lda l97b9,y                                                       // 96a9: b9 b9 97    ...
    sta l0101,x                                                       // 96ac: 9d 01 01    ...
// $96af referenced 1 time by $9698
c96af
    beq c96f0                                                         // 96af: f0 3f       .?
    iny                                                               // 96b1: c8          .
    inx                                                               // 96b2: e8          .
sub_c96b3
error_template_minus_1 = sub_c96b3+1
    bne loop_c96a9                                                    // 96b3: d0 f4       ..
// $96b4 referenced 1 time by $96c5
    .asc "Bad"                                                        // 96b5: 42 61 64    Bad

// $96b8 referenced 11 times by $8fe6, $920a, $9217, $922b, $9237, $9246, $92fc, $9381, $93a4, $a25f, $bc14
generate_error_inline
    jsr sta_e09_if_d6c_b7_set                                         // 96b8: 20 11 96     ..
    tay                                                               // 96bb: a8          .
    pla                                                               // 96bc: 68          h
    sta l00b0                                                         // 96bd: 85 b0       ..
    pla                                                               // 96bf: 68          h
    sta l00b1                                                         // 96c0: 85 b1       ..
    ldx #0                                                            // 96c2: a2 00       ..
// $96c4 referenced 1 time by $96cd
loop_c96c4
    inx                                                               // 96c4: e8          .
    lda error_template_minus_1,x                                      // 96c5: bd b4 96    ...
    sta l0101,x                                                       // 96c8: 9d 01 01    ...
    cmp #$20 // ' '                                                   // 96cb: c9 20       .
    bne loop_c96c4                                                    // 96cd: d0 f5       ..
    beq c96dd                                                         // 96cf: f0 0c       ..
// $96d1 referenced 7 times by $942f, $95b3, $a276, $ac00, $ac12, $b485, $b547
generate_error_inline3
    jsr sta_e09_if_d6c_b7_set                                         // 96d1: 20 11 96     ..
// $96d4 referenced 4 times by $a129, $ba11, $bba7, $bc5d
generate_error_inline2
    tay                                                               // 96d4: a8          .
    pla                                                               // 96d5: 68          h
    sta l00b0                                                         // 96d6: 85 b0       ..
    pla                                                               // 96d8: 68          h
    sta l00b1                                                         // 96d9: 85 b1       ..
    ldx #0                                                            // 96db: a2 00       ..
// $96dd referenced 1 time by $96cf
c96dd
    sty l0101                                                         // 96dd: 8c 01 01    ...
    tya                                                               // 96e0: 98          .
    pha                                                               // 96e1: 48          H
    ldy #0                                                            // 96e2: a0 00       ..
    sty l0100                                                         // 96e4: 8c 00 01    ...
// $96e7 referenced 1 time by $96ee
loop_c96e7
    inx                                                               // 96e7: e8          .
    iny                                                               // 96e8: c8          .
    lda (l00b0),y                                                     // 96e9: b1 b0       ..
    sta l0101,x                                                       // 96eb: 9d 01 01    ...
    bne loop_c96e7                                                    // 96ee: d0 f7       ..
// $96f0 referenced 4 times by $956d, $963e, $96af, $b971
c96f0
    jsr sub_cb98a                                                     // 96f0: 20 8a b9     ..
    bne c96fd                                                         // 96f3: d0 08       ..
    pla                                                               // 96f5: 68          h
    cmp #$de                                                          // 96f6: c9 de       ..
    beq c9740                                                         // 96f8: f0 46       .F
// $96fa referenced 1 time by $974b
c96fa
    jmp l0100                                                         // 96fa: 4c 00 01    L..

// $96fd referenced 1 time by $96f3
c96fd
    sta l0e08                                                         // 96fd: 8d 08 0e    ...
    pha                                                               // 9700: 48          H
    txa                                                               // 9701: 8a          .
    pha                                                               // 9702: 48          H
    jsr sub_cb98a                                                     // 9703: 20 8a b9     ..
    sta l00b0                                                         // 9706: 85 b0       ..
    lda #0                                                            // 9708: a9 00       ..
    sta (l009c),y                                                     // 970a: 91 9c       ..
    lda #$c6                                                          // 970c: a9 c6       ..
    jsr sub_c8e83                                                     // 970e: 20 83 8e     ..
    cpy l00b0                                                         // 9711: c4 b0       ..
    beq c971e                                                         // 9713: f0 09       ..
    cpx l00b0                                                         // 9715: e4 b0       ..
    bne c972c                                                         // 9717: d0 13       ..
    pha                                                               // 9719: 48          H
    lda #$c6                                                          // 971a: a9 c6       ..
    bne c9722                                                         // 971c: d0 04       ..
// $971e referenced 1 time by $9713
c971e
    tya                                                               // 971e: 98          .
    pha                                                               // 971f: 48          H
    lda #$c7                                                          // 9720: a9 c7       ..
// $9722 referenced 1 time by $971c
c9722
    jsr sub_c8e8c                                                     // 9722: 20 8c 8e     ..
    pla                                                               // 9725: 68          h
    tay                                                               // 9726: a8          .
    lda #osfind_close                                                 // 9727: a9 00       ..
    jsr osfind                                                        // 9729: 20 ce ff     ..            // Close one or all files
// $972c referenced 1 time by $9717
c972c
    pla                                                               // 972c: 68          h
    tax                                                               // 972d: aa          .
    ldy #$0a                                                          // 972e: a0 0a       ..
    lda l97ad,y                                                       // 9730: b9 ad 97    ...
    tay                                                               // 9733: a8          .
// $9734 referenced 1 time by $973e
loop_c9734
    lda l97b9,y                                                       // 9734: b9 b9 97    ...
    sta l0101,x                                                       // 9737: 9d 01 01    ...
    beq c9740                                                         // 973a: f0 04       ..
    inx                                                               // 973c: e8          .
    iny                                                               // 973d: c8          .
    bne loop_c9734                                                    // 973e: d0 f4       ..
// $9740 referenced 2 times by $96f8, $973a
c9740
    stx l00b2                                                         // 9740: 86 b2       ..
    pla                                                               // 9742: 68          h
    jsr sub_c9771                                                     // 9743: 20 71 97     q.
    lda #0                                                            // 9746: a9 00       ..
    sta l0102,x                                                       // 9748: 9d 02 01    ...
    beq c96fa                                                         // 974b: f0 ad       ..
// $974d referenced 2 times by $9636, $9674
sub_c974d
    lda #$20 // ' '                                                   // 974d: a9 20       .
    sta l0101,x                                                       // 974f: 9d 01 01    ...
    inx                                                               // 9752: e8          .
    stx l00b2                                                         // 9753: 86 b2       ..
    ldy #3                                                            // 9755: a0 03       ..
    lda (l009a),y                                                     // 9757: b1 9a       ..
    beq c9767                                                         // 9759: f0 0c       ..
    jsr sub_c977c                                                     // 975b: 20 7c 97     |.
    ldx l00b2                                                         // 975e: a6 b2       ..
    lda #$2e // '.'                                                   // 9760: a9 2e       ..
    sta l0101,x                                                       // 9762: 9d 01 01    ...
    inc l00b2                                                         // 9765: e6 b2       ..
// $9767 referenced 1 time by $9759
c9767
    ldy #2                                                            // 9767: a0 02       ..
    lda (l009a),y                                                     // 9769: b1 9a       ..
    jsr sub_c977c                                                     // 976b: 20 7c 97     |.
    ldx l00b2                                                         // 976e: a6 b2       ..
    rts                                                               // 9770: 60          `

// $9771 referenced 2 times by $9743, $b4da
sub_c9771
    tay                                                               // 9771: a8          .
    lda #$20 // ' '                                                   // 9772: a9 20       .
    ldx l00b2                                                         // 9774: a6 b2       ..
    sta l0101,x                                                       // 9776: 9d 01 01    ...
    inc l00b2                                                         // 9779: e6 b2       ..
    tya                                                               // 977b: 98          .
// $977c referenced 2 times by $975b, $976b
sub_c977c
    tay                                                               // 977c: a8          .
    bit l9491                                                         // 977d: 2c 91 94    ,..
    lda #$64 // 'd'                                                   // 9780: a9 64       .d
    jsr sub_c978d                                                     // 9782: 20 8d 97     ..
    lda #$0a                                                          // 9785: a9 0a       ..
    jsr sub_c978d                                                     // 9787: 20 8d 97     ..
    lda #1                                                            // 978a: a9 01       ..
    clv                                                               // 978c: b8          .
// $978d referenced 2 times by $9782, $9787
sub_c978d
    sta l00b3                                                         // 978d: 85 b3       ..
    tya                                                               // 978f: 98          .
    ldx #$2f // '/'                                                   // 9790: a2 2f       ./
    php                                                               // 9792: 08          .
    sec                                                               // 9793: 38          8
// $9794 referenced 1 time by $9797
loop_c9794
    inx                                                               // 9794: e8          .
    sbc l00b3                                                         // 9795: e5 b3       ..
    bcs loop_c9794                                                    // 9797: b0 fb       ..
    adc l00b3                                                         // 9799: 65 b3       e.
    plp                                                               // 979b: 28          (
    tay                                                               // 979c: a8          .
    txa                                                               // 979d: 8a          .
    cmp #$30 // '0'                                                   // 979e: c9 30       .0
    bne c97a4                                                         // 97a0: d0 02       ..
    bvs c97ac                                                         // 97a2: 70 08       p.
// $97a4 referenced 1 time by $97a0
c97a4
    clv                                                               // 97a4: b8          .
    ldx l00b2                                                         // 97a5: a6 b2       ..
    sta l0101,x                                                       // 97a7: 9d 01 01    ...
    inc l00b2                                                         // 97aa: e6 b2       ..
// $97ac referenced 1 time by $97a2
c97ac
    rts                                                               // 97ac: 60          `

// $97ad referenced 5 times by $961c, $965a, $9688, $969b, $9730
l97ad
    .byt   0, $0d, $18                                                // 97ad: 00 0d 18    ...
    .asc "!+++3?Veq"                                                  // 97b0: 21 2b 2b... !++
// $97b9 referenced 8 times by $9624, $962a, $965d, $9668, $968c, $96a3, $96a9, $9734
l97b9
    .byt $a0                                                          // 97b9: a0          .
    .asc "Line jammed"                                                // 97ba: 4c 69 6e... Lin
    .byt   0, $a1                                                     // 97c5: 00 a1       ..
    .asc "Net error"                                                  // 97c7: 4e 65 74... Net
    .byt   0, $a2                                                     // 97d0: 00 a2       ..
    .asc "Station"                                                    // 97d2: 53 74 61... Sta
    .byt   0, $a3                                                     // 97d9: 00 a3       ..
    .asc "No clock"                                                   // 97db: 4e 6f 20... No
    .byt   0, $11                                                     // 97e3: 00 11       ..
    .asc "Escape"                                                     // 97e5: 45 73 63... Esc
    .byt   0, $cb                                                     // 97eb: 00 cb       ..
    .asc "Bad option"                                                 // 97ed: 42 61 64... Bad
    .byt   0, $a5                                                     // 97f7: 00 a5       ..
    .asc "No reply from station"                                      // 97f9: 4e 6f 20... No
    .byt 0                                                            // 980e: 00          .
    .asc " not listening"                                             // 980f: 20 6e 6f...  no
    .byt 0                                                            // 981d: 00          .
    .asc " on channel"                                                // 981e: 20 6f 6e...  on
    .byt 0                                                            // 9829: 00          .
    .asc " not present"                                               // 982a: 20 6e 6f...  no
    .byt 0                                                            // 9836: 00          .

// $9837 referenced 2 times by $94ec, $9adb
sub_c9837
    ldx #$c0                                                          // 9837: a2 c0       ..
    stx l009a                                                         // 9839: 86 9a       ..
    ldx #0                                                            // 983b: a2 00       ..
    stx l009b                                                         // 983d: 86 9b       ..
// $983f referenced 5 times by $a9d4, $abc6, $ac51, $b05b, $b23a
sub_c983f
    lda l0d6d                                                         // 983f: ad 6d 0d    .m.
    bne c9846                                                         // 9842: d0 02       ..
    lda #$ff                                                          // 9844: a9 ff       ..
// $9846 referenced 1 time by $9842
c9846
    ldy #$60 // '`'                                                   // 9846: a0 60       .`
    pha                                                               // 9848: 48          H
    tya                                                               // 9849: 98          .
    pha                                                               // 984a: 48          H
    ldx #0                                                            // 984b: a2 00       ..
    lda (l009a,x)                                                     // 984d: a1 9a       ..
// $984f referenced 1 time by $9871
c984f
    sta (l009a,x)                                                     // 984f: 81 9a       ..
    pha                                                               // 9851: 48          H
    jsr c98c9                                                         // 9852: 20 c9 98     ..
    asl                                                               // 9855: 0a          .
    bpl c9882                                                         // 9856: 10 2a       .*
    asl                                                               // 9858: 0a          .
    beq c987e                                                         // 9859: f0 23       .#
    jsr sub_c9570                                                     // 985b: 20 70 95     p.
    pla                                                               // 985e: 68          h
    tax                                                               // 985f: aa          .
    pla                                                               // 9860: 68          h
    tay                                                               // 9861: a8          .
    pla                                                               // 9862: 68          h
    beq c9873                                                         // 9863: f0 0e       ..
// $9865 referenced 1 time by $987c
loop_c9865
    sbc #1                                                            // 9865: e9 01       ..
    pha                                                               // 9867: 48          H
    tya                                                               // 9868: 98          .
    pha                                                               // 9869: 48          H
    txa                                                               // 986a: 8a          .
// $986b referenced 2 times by $986c, $986f
c986b
    dex                                                               // 986b: ca          .
    bne c986b                                                         // 986c: d0 fd       ..
    dey                                                               // 986e: 88          .
    bne c986b                                                         // 986f: d0 fa       ..
    beq c984f                                                         // 9871: f0 dc       ..
// $9873 referenced 1 time by $9863
c9873
    cmp l0d6d                                                         // 9873: cd 6d 0d    .m.
    bne c987e                                                         // 9876: d0 06       ..
    lda #$80                                                          // 9878: a9 80       ..
    sta l0098                                                         // 987a: 85 98       ..
    bne loop_c9865                                                    // 987c: d0 e7       ..
// $987e referenced 2 times by $9859, $9876
c987e
    tax                                                               // 987e: aa          .
    jmp c964c                                                         // 987f: 4c 4c 96    LL.

// $9882 referenced 1 time by $9856
c9882
    pla                                                               // 9882: 68          h
    pla                                                               // 9883: 68          h
    pla                                                               // 9884: 68          h
    jmp c929f                                                         // 9885: 4c 9f 92    L..

// $9888 referenced 2 times by $989e, $98f8
l9888
    .byt $88,   0, $fd, $fd, $3a, $0d, $ff, $ff, $3e, $0d, $ff, $ff   // 9888: 88 00 fd... ...

// $9894 referenced 1 time by $8dff
sub_c9894
    ldy #$c0                                                          // 9894: a0 c0       ..
    sty l009a                                                         // 9896: 84 9a       ..
    ldy #0                                                            // 9898: a0 00       ..
    sty l009b                                                         // 989a: 84 9b       ..
// $989c referenced 1 time by $abc3
sub_c989c
    ldy #$0b                                                          // 989c: a0 0b       ..
// $989e referenced 1 time by $98ac
loop_c989e
    ldx l9888,y                                                       // 989e: be 88 98    ...
    cpx #$fd                                                          // 98a1: e0 fd       ..
    beq c98ab                                                         // 98a3: f0 06       ..
    lda (l009a),y                                                     // 98a5: b1 9a       ..
    pha                                                               // 98a7: 48          H
    txa                                                               // 98a8: 8a          .
    sta (l009a),y                                                     // 98a9: 91 9a       ..
// $98ab referenced 1 time by $98a3
c98ab
    dey                                                               // 98ab: 88          .
    bpl loop_c989e                                                    // 98ac: 10 f0       ..
    lda l0d6f                                                         // 98ae: ad 6f 0d    .o.
    pha                                                               // 98b1: 48          H
    tya                                                               // 98b2: 98          .
    pha                                                               // 98b3: 48          H
    ldx #0                                                            // 98b4: a2 00       ..
    lda (l009a,x)                                                     // 98b6: a1 9a       ..
// $98b8 referenced 1 time by $98f1
c98b8
    sta (l009a,x)                                                     // 98b8: 81 9a       ..
    pha                                                               // 98ba: 48          H
    jsr c98c9                                                         // 98bb: 20 c9 98     ..
    asl                                                               // 98be: 0a          .
    bpl c98f3                                                         // 98bf: 10 32       .2
    asl                                                               // 98c1: 0a          .
    bne c98de                                                         // 98c2: d0 1a       ..
// $98c4 referenced 1 time by $98e3
loop_c98c4
    ldx #0                                                            // 98c4: a2 00       ..
    jmp c9641                                                         // 98c6: 4c 41 96    LA.

// $98c9 referenced 3 times by $9852, $98bb, $98cc
c98c9
    asl l0d60                                                         // 98c9: 0e 60 0d    .`.
    bcc c98c9                                                         // 98cc: 90 fb       ..
    lda l009a                                                         // 98ce: a5 9a       ..
    sta l00a0                                                         // 98d0: 85 a0       ..
    lda l009b                                                         // 98d2: a5 9b       ..
    sta l00a1                                                         // 98d4: 85 a1       ..
    jsr sub_c858c                                                     // 98d6: 20 8c 85     ..
// $98d9 referenced 1 time by $98db
loop_c98d9
    lda (l009a,x)                                                     // 98d9: a1 9a       ..
    bmi loop_c98d9                                                    // 98db: 30 fc       0.
    rts                                                               // 98dd: 60          `

// $98de referenced 1 time by $98c2
c98de
    pla                                                               // 98de: 68          h
    tax                                                               // 98df: aa          .
    pla                                                               // 98e0: 68          h
    tay                                                               // 98e1: a8          .
    pla                                                               // 98e2: 68          h
    beq loop_c98c4                                                    // 98e3: f0 df       ..
    sbc #1                                                            // 98e5: e9 01       ..
    pha                                                               // 98e7: 48          H
    tya                                                               // 98e8: 98          .
    pha                                                               // 98e9: 48          H
    txa                                                               // 98ea: 8a          .
// $98eb referenced 2 times by $98ec, $98ef
c98eb
    dex                                                               // 98eb: ca          .
    bne c98eb                                                         // 98ec: d0 fd       ..
    dey                                                               // 98ee: 88          .
    bne c98eb                                                         // 98ef: d0 fa       ..
    beq c98b8                                                         // 98f1: f0 c5       ..
// $98f3 referenced 1 time by $98bf
c98f3
    pla                                                               // 98f3: 68          h
    pla                                                               // 98f4: 68          h
    pla                                                               // 98f5: 68          h
    ldy #0                                                            // 98f6: a0 00       ..
// $98f8 referenced 1 time by $9905
loop_c98f8
    ldx l9888,y                                                       // 98f8: be 88 98    ...
    cpx #$fd                                                          // 98fb: e0 fd       ..
    beq c9902                                                         // 98fd: f0 03       ..
    pla                                                               // 98ff: 68          h
    sta (l009a),y                                                     // 9900: 91 9a       ..
// $9902 referenced 1 time by $98fd
c9902
    iny                                                               // 9902: c8          .
    cpy #$0c                                                          // 9903: c0 0c       ..
    bne loop_c98f8                                                    // 9905: d0 f1       ..
    rts                                                               // 9907: 60          `

    .byt $a0,   1, $b1, $bb, $99, $f2,   0, $88, $10, $f8, $c8        // 9908: a0 01 b1... ...

// $9913 referenced 1 time by $ae94
sub_c9913
    ldx #$ff                                                          // 9913: a2 ff       ..
    clc                                                               // 9915: 18          .
    jsr gsinit                                                        // 9916: 20 c2 ff     ..
    beq c9926                                                         // 9919: f0 0b       ..
// $991b referenced 1 time by $9924
loop_c991b
    jsr gsread                                                        // 991b: 20 c5 ff     ..
    bcs c9926                                                         // 991e: b0 06       ..
    inx                                                               // 9920: e8          .
    sta l0e30,x                                                       // 9921: 9d 30 0e    .0.
    bcc loop_c991b                                                    // 9924: 90 f5       ..
// $9926 referenced 2 times by $9919, $991e
c9926
    inx                                                               // 9926: e8          .
    lda #$0d                                                          // 9927: a9 0d       ..
    sta l0e30,x                                                       // 9929: 9d 30 0e    .0.
    lda #$30 // '0'                                                   // 992c: a9 30       .0
    sta l00be                                                         // 992e: 85 be       ..
    lda #$0e                                                          // 9930: a9 0e       ..
    sta l00bf                                                         // 9932: 85 bf       ..
    rts                                                               // 9934: 60          `

    .byt $20, $95, $92, $20,   8, $99, $20, $32, $af, $20, $97, $ae   // 9935: 20 95 92...  ..
    .byt $a5, $bd, $10, $7e, $c9, $ff, $f0,   3, $4c, $c7, $9c, $20   // 9941: a5 bd 10... ...
    .byt   2, $af, $a0,   2                                           // 994d: 02 af a0... ...

// $9951 referenced 1 time by $a2d1
sub_c9951
    lda #$92                                                          // 9951: a9 92       ..
    sta l0098                                                         // 9953: 85 98       ..
    sta l0f02                                                         // 9955: 8d 02 0f    ...
    jsr sub_c949b                                                     // 9958: 20 9b 94     ..
    ldy #6                                                            // 995b: a0 06       ..
    lda (l00bb),y                                                     // 995d: b1 bb       ..
    bne c9969                                                         // 995f: d0 08       ..
    jsr sub_c9a72                                                     // 9961: 20 72 9a     r.
    jsr sub_c9a84                                                     // 9964: 20 84 9a     ..
    bcc c996f                                                         // 9967: 90 06       ..
// $9969 referenced 1 time by $995f
c9969
    jsr sub_c9a84                                                     // 9969: 20 84 9a     ..
    jsr sub_c9a72                                                     // 996c: 20 72 9a     r.
// $996f referenced 1 time by $9967
c996f
    ldy #4                                                            // 996f: a0 04       ..
// $9971 referenced 1 time by $997c
loop_c9971
    lda l00b0,x                                                       // 9971: b5 b0       ..
    sta l00c8,x                                                       // 9973: 95 c8       ..
    adc l0f0d,x                                                       // 9975: 7d 0d 0f    }..
    sta l00b4,x                                                       // 9978: 95 b4       ..
    inx                                                               // 997a: e8          .
    dey                                                               // 997b: 88          .
    bne loop_c9971                                                    // 997c: d0 f3       ..
    sec                                                               // 997e: 38          8
    sbc l0f10                                                         // 997f: ed 10 0f    ...
    sta l00b7                                                         // 9982: 85 b7       ..
    jsr sub_c9b95                                                     // 9984: 20 95 9b     ..
    jsr sub_c9998                                                     // 9987: 20 98 99     ..
    ldx #2                                                            // 998a: a2 02       ..
// $998c referenced 1 time by $9993
loop_c998c
    lda l0f10,x                                                       // 998c: bd 10 0f    ...
    sta l0f05,x                                                       // 998f: 9d 05 0f    ...
    dex                                                               // 9992: ca          .
    bpl loop_c998c                                                    // 9993: 10 f7       ..
    jmp c9a1f                                                         // 9995: 4c 1f 9a    L..

// $9998 referenced 2 times by $9987, $9f52
sub_c9998
    jsr sub_c92a4                                                     // 9998: 20 a4 92     ..
    beq c99c2                                                         // 999b: f0 25       .%
    lda #$92                                                          // 999d: a9 92       ..
    sta l00c1                                                         // 999f: 85 c1       ..
// $99a1 referenced 1 time by $99bd
loop_c99a1
    ldx #3                                                            // 99a1: a2 03       ..
// $99a3 referenced 1 time by $99ac
loop_c99a3
    lda l00c8,x                                                       // 99a3: b5 c8       ..
    sta l00c4,x                                                       // 99a5: 95 c4       ..
    lda l00b4,x                                                       // 99a7: b5 b4       ..
    sta l00c8,x                                                       // 99a9: 95 c8       ..
    dex                                                               // 99ab: ca          .
    bpl loop_c99a3                                                    // 99ac: 10 f5       ..
    lda #$7f                                                          // 99ae: a9 7f       ..
    sta l00c0                                                         // 99b0: 85 c0       ..
    jsr sub_c95dd                                                     // 99b2: 20 dd 95     ..
    ldy #3                                                            // 99b5: a0 03       ..
// $99b7 referenced 1 time by $99c0
loop_c99b7
    lda l00c8,y                                                       // 99b7: b9 c8 00    ...
    eor l00b4,y                                                       // 99ba: 59 b4 00    Y..
    bne loop_c99a1                                                    // 99bd: d0 e2       ..
    dey                                                               // 99bf: 88          .
    bpl loop_c99b7                                                    // 99c0: 10 f5       ..
// $99c2 referenced 1 time by $999b
c99c2
    rts                                                               // 99c2: 60          `

    .byt $f0,   3, $4c, $ef, $9a                                      // 99c3: f0 03 4c... ..L

// $99c8 referenced 1 time by $9af8
c99c8
    ldx #4                                                            // 99c8: a2 04       ..
    ldy #$0e                                                          // 99ca: a0 0e       ..
    sec                                                               // 99cc: 38          8
// $99cd referenced 1 time by $99e7
loop_c99cd
    lda (l00bb),y                                                     // 99cd: b1 bb       ..
    sta l00a6,y                                                       // 99cf: 99 a6 00    ...
    jsr sub_c9a91                                                     // 99d2: 20 91 9a     ..
    sbc (l00bb),y                                                     // 99d5: f1 bb       ..
    sta l0f03,y                                                       // 99d7: 99 03 0f    ...
    pha                                                               // 99da: 48          H
    lda (l00bb),y                                                     // 99db: b1 bb       ..
    sta l00a6,y                                                       // 99dd: 99 a6 00    ...
    pla                                                               // 99e0: 68          h
    sta (l00bb),y                                                     // 99e1: 91 bb       ..
    jsr sub_c9a7e                                                     // 99e3: 20 7e 9a     ~.
    dex                                                               // 99e6: ca          .
    bne loop_c99cd                                                    // 99e7: d0 e4       ..
    ldy #9                                                            // 99e9: a0 09       ..
// $99eb referenced 1 time by $99f1
loop_c99eb
    lda (l00bb),y                                                     // 99eb: b1 bb       ..
    sta l0f03,y                                                       // 99ed: 99 03 0f    ...
    dey                                                               // 99f0: 88          .
    bne loop_c99eb                                                    // 99f1: d0 f8       ..
    lda #$91                                                          // 99f3: a9 91       ..
    sta l0098                                                         // 99f5: 85 98       ..
    sta l0f02                                                         // 99f7: 8d 02 0f    ...
    sta l00b8                                                         // 99fa: 85 b8       ..
    ldx #$0b                                                          // 99fc: a2 0b       ..
    jsr sub_caf04                                                     // 99fe: 20 04 af     ..
    ldy #1                                                            // 9a01: a0 01       ..
    lda l00bd                                                         // 9a03: a5 bd       ..
    cmp #7                                                            // 9a05: c9 07       ..
    php                                                               // 9a07: 08          .
    bne c9a0c                                                         // 9a08: d0 02       ..
    ldy #$1d                                                          // 9a0a: a0 1d       ..
// $9a0c referenced 1 time by $9a08
c9a0c
    jsr sub_c949b                                                     // 9a0c: 20 9b 94     ..
    jsr sub_c9b95                                                     // 9a0f: 20 95 9b     ..
    plp                                                               // 9a12: 28          (
    bne c9a19                                                         // 9a13: d0 04       ..
    ldx #0                                                            // 9a15: a2 00       ..
    beq c9a22                                                         // 9a17: f0 09       ..
// $9a19 referenced 1 time by $9a13
c9a19
    lda l0f05                                                         // 9a19: ad 05 0f    ...
    jsr sub_c9a9a                                                     // 9a1c: 20 9a 9a     ..
// $9a1f referenced 1 time by $9995
c9a1f
    jsr sub_c94f0                                                     // 9a1f: 20 f0 94     ..
// $9a22 referenced 1 time by $9a17
c9a22
    stx l0f08                                                         // 9a22: 8e 08 0f    ...
    ldy #$0e                                                          // 9a25: a0 0e       ..
    lda l0f05                                                         // 9a27: ad 05 0f    ...
    jsr sub_c9273                                                     // 9a2a: 20 73 92     s.
    beq c9a32                                                         // 9a2d: f0 03       ..
// $9a2f referenced 1 time by $9a37
loop_c9a2f
    lda l0ef7,y                                                       // 9a2f: b9 f7 0e    ...
// $9a32 referenced 1 time by $9a2d
c9a32
    sta (l00bb),y                                                     // 9a32: 91 bb       ..
    iny                                                               // 9a34: c8          .
    cpy #$12                                                          // 9a35: c0 12       ..
    bne loop_c9a2f                                                    // 9a37: d0 f6       ..
    ldy l0e06                                                         // 9a39: ac 06 0e    ...
    beq c9a83                                                         // 9a3c: f0 45       .E
    ldy #$f4                                                          // 9a3e: a0 f4       ..
// $9a40 referenced 1 time by $9a47
loop_c9a40
    lda l0fff,y                                                       // 9a40: b9 ff 0f    ...
    jsr osasci                                                        // 9a43: 20 e3 ff     ..            // Write character
    iny                                                               // 9a46: c8          .
    bne loop_c9a40                                                    // 9a47: d0 f7       ..
    ldy #5                                                            // 9a49: a0 05       ..
    jsr sub_c9a62                                                     // 9a4b: 20 62 9a     b.
    jsr sub_c9a57                                                     // 9a4e: 20 57 9a     W.
    jsr osnewl                                                        // 9a51: 20 e7 ff     ..            // Write newline (characters 10 and 13)
    jmp c9cc7                                                         // 9a54: 4c c7 9c    L..

// $9a57 referenced 1 time by $9a4e
sub_c9a57
    ldy #9                                                            // 9a57: a0 09       ..
    jsr sub_c9a62                                                     // 9a59: 20 62 9a     b.
    ldy #$0c                                                          // 9a5c: a0 0c       ..
    ldx #3                                                            // 9a5e: a2 03       ..
    bne c9a64                                                         // 9a60: d0 02       ..
// $9a62 referenced 2 times by $9a4b, $9a59
sub_c9a62
    ldx #4                                                            // 9a62: a2 04       ..
// $9a64 referenced 2 times by $9a60, $9a6b
c9a64
    lda (l00bb),y                                                     // 9a64: b1 bb       ..
    jsr sub_c912f                                                     // 9a66: 20 2f 91     /.
    dey                                                               // 9a69: 88          .
    dex                                                               // 9a6a: ca          .
    bne c9a64                                                         // 9a6b: d0 f7       ..
    lda #$20 // ' '                                                   // 9a6d: a9 20       .
    jmp osasci                                                        // 9a6f: 4c e3 ff    L..            // Write character 32

// $9a72 referenced 2 times by $9961, $996c
sub_c9a72
    ldy #5                                                            // 9a72: a0 05       ..
// $9a74 referenced 1 time by $9a7c
loop_c9a74
    lda (l00bb),y                                                     // 9a74: b1 bb       ..
    sta l00ae,y                                                       // 9a76: 99 ae 00    ...
    dey                                                               // 9a79: 88          .
    cpy #2                                                            // 9a7a: c0 02       ..
    bcs loop_c9a74                                                    // 9a7c: b0 f6       ..
// $9a7e referenced 1 time by $99e3
sub_c9a7e
    iny                                                               // 9a7e: c8          .
// $9a7f referenced 2 times by $9f2f, $b074
sub_c9a7f
    iny                                                               // 9a7f: c8          .
    iny                                                               // 9a80: c8          .
    iny                                                               // 9a81: c8          .
    iny                                                               // 9a82: c8          .
// $9a83 referenced 1 time by $9a3c
c9a83
    rts                                                               // 9a83: 60          `

// $9a84 referenced 2 times by $9964, $9969
sub_c9a84
    ldy #$0d                                                          // 9a84: a0 0d       ..
    txa                                                               // 9a86: 8a          .
// $9a87 referenced 1 time by $9a8f
loop_c9a87
    sta (l00bb),y                                                     // 9a87: 91 bb       ..
    lda l0f02,y                                                       // 9a89: b9 02 0f    ...
    dey                                                               // 9a8c: 88          .
    cpy #2                                                            // 9a8d: c0 02       ..
    bcs loop_c9a87                                                    // 9a8f: b0 f6       ..
// $9a91 referenced 1 time by $99d2
sub_c9a91
    dey                                                               // 9a91: 88          .
// $9a92 referenced 2 times by $9b0e, $9f37
sub_c9a92
    dey                                                               // 9a92: 88          .
    dey                                                               // 9a93: 88          .
    dey                                                               // 9a94: 88          .
    rts                                                               // 9a95: 60          `

// $9a96 referenced 2 times by $9a9e, $9ae4
c9a96
    pla                                                               // 9a96: 68          h
    ldy l00bc                                                         // 9a97: a4 bc       ..
    rts                                                               // 9a99: 60          `

// $9a9a referenced 2 times by $9a1c, $9f4d
sub_c9a9a
    pha                                                               // 9a9a: 48          H
    jsr sub_c92a4                                                     // 9a9b: 20 a4 92     ..
    beq c9a96                                                         // 9a9e: f0 f6       ..
// $9aa0 referenced 1 time by $9aed
c9aa0
    ldx #0                                                            // 9aa0: a2 00       ..
    ldy #4                                                            // 9aa2: a0 04       ..
    stx l0f08                                                         // 9aa4: 8e 08 0f    ...
    stx l0f09                                                         // 9aa7: 8e 09 0f    ...
    clc                                                               // 9aaa: 18          .
// $9aab referenced 1 time by $9ab8
loop_c9aab
    lda l00b0,x                                                       // 9aab: b5 b0       ..
    sta l00c4,x                                                       // 9aad: 95 c4       ..
    adc l0f06,x                                                       // 9aaf: 7d 06 0f    }..
    sta l00c8,x                                                       // 9ab2: 95 c8       ..
    sta l00b0,x                                                       // 9ab4: 95 b0       ..
    inx                                                               // 9ab6: e8          .
    dey                                                               // 9ab7: 88          .
    bne loop_c9aab                                                    // 9ab8: d0 f1       ..
    bcs c9ac9                                                         // 9aba: b0 0d       ..
    sec                                                               // 9abc: 38          8
// $9abd referenced 1 time by $9ac5
loop_c9abd
    lda l00b0,y                                                       // 9abd: b9 b0 00    ...
    sbc l00b4,y                                                       // 9ac0: f9 b4 00    ...
    iny                                                               // 9ac3: c8          .
    dex                                                               // 9ac4: ca          .
    bne loop_c9abd                                                    // 9ac5: d0 f6       ..
    bcc c9ad2                                                         // 9ac7: 90 09       ..
// $9ac9 referenced 1 time by $9aba
c9ac9
    ldx #3                                                            // 9ac9: a2 03       ..
// $9acb referenced 1 time by $9ad0
loop_c9acb
    lda l00b4,x                                                       // 9acb: b5 b4       ..
    sta l00c8,x                                                       // 9acd: 95 c8       ..
    dex                                                               // 9acf: ca          .
    bpl loop_c9acb                                                    // 9ad0: 10 f9       ..
// $9ad2 referenced 1 time by $9ac7
c9ad2
    pla                                                               // 9ad2: 68          h
    pha                                                               // 9ad3: 48          H
    php                                                               // 9ad4: 08          .
    sta l00c1                                                         // 9ad5: 85 c1       ..
    lda #$80                                                          // 9ad7: a9 80       ..
    sta l00c0                                                         // 9ad9: 85 c0       ..
    jsr sub_c9837                                                     // 9adb: 20 37 98     7.
    lda l00b8                                                         // 9ade: a5 b8       ..
    jsr sub_c9467                                                     // 9ae0: 20 67 94     g.
    plp                                                               // 9ae3: 28          (
    bcs c9a96                                                         // 9ae4: b0 b0       ..
    lda #$91                                                          // 9ae6: a9 91       ..
    sta l00c1                                                         // 9ae8: 85 c1       ..
    jsr sub_c95dd                                                     // 9aea: 20 dd 95     ..
    bne c9aa0                                                         // 9aed: d0 b1       ..
    sta l0f05                                                         // 9aef: 8d 05 0f    ...
    cmp #7                                                            // 9af2: c9 07       ..
    bcc c9afb                                                         // 9af4: 90 05       ..
    bne c9b47                                                         // 9af6: d0 4f       .O
    jmp c99c8                                                         // 9af8: 4c c8 99    L..

// $9afb referenced 1 time by $9af4
c9afb
    cmp #6                                                            // 9afb: c9 06       ..
    beq c9b3c                                                         // 9afd: f0 3d       .=
    cmp #5                                                            // 9aff: c9 05       ..
    beq c9b56                                                         // 9b01: f0 53       .S
    cmp #4                                                            // 9b03: c9 04       ..
    beq c9b4c                                                         // 9b05: f0 45       .E
    cmp #1                                                            // 9b07: c9 01       ..
    beq c9b20                                                         // 9b09: f0 15       ..
    asl                                                               // 9b0b: 0a          .
    asl                                                               // 9b0c: 0a          .
    tay                                                               // 9b0d: a8          .
    jsr sub_c9a92                                                     // 9b0e: 20 92 9a     ..
    ldx #3                                                            // 9b11: a2 03       ..
// $9b13 referenced 1 time by $9b1a
loop_c9b13
    lda (l00bb),y                                                     // 9b13: b1 bb       ..
    sta l0f06,x                                                       // 9b15: 9d 06 0f    ...
    dey                                                               // 9b18: 88          .
    dex                                                               // 9b19: ca          .
    bpl loop_c9b13                                                    // 9b1a: 10 f7       ..
    ldx #5                                                            // 9b1c: a2 05       ..
    bne c9b35                                                         // 9b1e: d0 15       ..
// $9b20 referenced 1 time by $9b09
c9b20
    jsr sub_c9269                                                     // 9b20: 20 69 92     i.
    sta l0f0e                                                         // 9b23: 8d 0e 0f    ...
    ldy #9                                                            // 9b26: a0 09       ..
    ldx #8                                                            // 9b28: a2 08       ..
// $9b2a referenced 1 time by $9b31
loop_c9b2a
    lda (l00bb),y                                                     // 9b2a: b1 bb       ..
    sta l0f05,x                                                       // 9b2c: 9d 05 0f    ...
    dey                                                               // 9b2f: 88          .
    dex                                                               // 9b30: ca          .
    bne loop_c9b2a                                                    // 9b31: d0 f7       ..
    ldx #$0a                                                          // 9b33: a2 0a       ..
// $9b35 referenced 2 times by $9b1e, $9b54
c9b35
    jsr sub_caf04                                                     // 9b35: 20 04 af     ..
    ldy #$13                                                          // 9b38: a0 13       ..
    bne c9b41                                                         // 9b3a: d0 05       ..
// $9b3c referenced 1 time by $9afd
c9b3c
    jsr sub_caf02                                                     // 9b3c: 20 02 af     ..
    ldy #$14                                                          // 9b3f: a0 14       ..
// $9b41 referenced 1 time by $9b3a
c9b41
    bit l9491                                                         // 9b41: 2c 91 94    ,..
    jsr c94ae                                                         // 9b44: 20 ae 94     ..
// $9b47 referenced 1 time by $9af6
c9b47
    bcs c9b92                                                         // 9b47: b0 49       .I
    jmp c9cc7                                                         // 9b49: 4c c7 9c    L..

// $9b4c referenced 1 time by $9b05
c9b4c
    jsr sub_c9269                                                     // 9b4c: 20 69 92     i.
    sta l0f06                                                         // 9b4f: 8d 06 0f    ...
    ldx #2                                                            // 9b52: a2 02       ..
    bne c9b35                                                         // 9b54: d0 df       ..
// $9b56 referenced 1 time by $9b01
c9b56
    ldx #1                                                            // 9b56: a2 01       ..
    jsr sub_caf04                                                     // 9b58: 20 04 af     ..
    ldy #$12                                                          // 9b5b: a0 12       ..
    jsr c94ad                                                         // 9b5d: 20 ad 94     ..
    lda l0f11                                                         // 9b60: ad 11 0f    ...
    stx l0f11                                                         // 9b63: 8e 11 0f    ...
    stx l0f14                                                         // 9b66: 8e 14 0f    ...
    jsr sub_c9273                                                     // 9b69: 20 73 92     s.
    ldx l0f05                                                         // 9b6c: ae 05 0f    ...
    beq c9b91                                                         // 9b6f: f0 20       .
    ldy #$0e                                                          // 9b71: a0 0e       ..
    sta (l00bb),y                                                     // 9b73: 91 bb       ..
    dey                                                               // 9b75: 88          .
    ldx #$0c                                                          // 9b76: a2 0c       ..
// $9b78 referenced 1 time by $9b7f
loop_c9b78
    lda l0f05,x                                                       // 9b78: bd 05 0f    ...
    sta (l00bb),y                                                     // 9b7b: 91 bb       ..
    dey                                                               // 9b7d: 88          .
    dex                                                               // 9b7e: ca          .
    bne loop_c9b78                                                    // 9b7f: d0 f7       ..
    inx                                                               // 9b81: e8          .
    inx                                                               // 9b82: e8          .
    ldy #$11                                                          // 9b83: a0 11       ..
// $9b85 referenced 1 time by $9b8c
loop_c9b85
    lda l0f12,x                                                       // 9b85: bd 12 0f    ...
    sta (l00bb),y                                                     // 9b88: 91 bb       ..
    dey                                                               // 9b8a: 88          .
    dex                                                               // 9b8b: ca          .
    bpl loop_c9b85                                                    // 9b8c: 10 f7       ..
    ldx l0f05                                                         // 9b8e: ae 05 0f    ...
// $9b91 referenced 1 time by $9b6f
c9b91
    txa                                                               // 9b91: 8a          .
// $9b92 referenced 1 time by $9b47
c9b92
    jmp c9cc9                                                         // 9b92: 4c c9 9c    L..

// $9b95 referenced 2 times by $9984, $9a0f
sub_c9b95
    ldy #0                                                            // 9b95: a0 00       ..
    ldx l0f03                                                         // 9b97: ae 03 0f    ...
    bne c9bb5                                                         // 9b9a: d0 19       ..
// $9b9c referenced 1 time by $9ba6
loop_c9b9c
    lda (l00be),y                                                     // 9b9c: b1 be       ..
    cmp #$21 // '!'                                                   // 9b9e: c9 21       .!
    bcc c9ba8                                                         // 9ba0: 90 06       ..
    sta l10f3,y                                                       // 9ba2: 99 f3 10    ...
    iny                                                               // 9ba5: c8          .
    bne loop_c9b9c                                                    // 9ba6: d0 f4       ..
// $9ba8 referenced 2 times by $9ba0, $9bb0
c9ba8
    lda #$20 // ' '                                                   // 9ba8: a9 20       .
    sta l10f3,y                                                       // 9baa: 99 f3 10    ...
    iny                                                               // 9bad: c8          .
    cpy #$0c                                                          // 9bae: c0 0c       ..
    bcc c9ba8                                                         // 9bb0: 90 f6       ..
    rts                                                               // 9bb2: 60          `

// $9bb3 referenced 1 time by $9bbb
loop_c9bb3
    inx                                                               // 9bb3: e8          .
    iny                                                               // 9bb4: c8          .
// $9bb5 referenced 1 time by $9b9a
c9bb5
    lda l0f05,x                                                       // 9bb5: bd 05 0f    ...
    sta l10f3,y                                                       // 9bb8: 99 f3 10    ...
    bpl loop_c9bb3                                                    // 9bbb: 10 f6       ..
    rts                                                               // 9bbd: 60          `

    .byt $20, $cb, $8f, $85, $bd, $20, $9b, $92,   9,   0, $10, $2e   // 9bbe: 20 cb 8f...  ..
    .byt $0a, $f0,   3, $4c, $c4, $9c, $98, $c9, $20, $b0,   3, $4c   // 9bca: 0a f0 03... ...
    .byt $82, $b4, $c9, $30, $b0, $f9, $20, $99, $b7, $98, $48, $aa   // 9bd6: 82 b4 c9... ...
    .byt $a0,   0, $84, $bd, $84, $bc, $bd, $10, $10, $91, $bb, $20   // 9be2: a0 00 84... ...
    .byt $86, $bc, $c8, $c0,   4, $d0, $f3, $68, $85, $bc, $c9,   5   // 9bee: 86 bc c8... ...
    .byt $b0, $4f, $c0,   0, $d0,   3, $4c, $d5, $9c, $48, $8a, $48   // 9bfa: b0 4f c0... .O.
    .byt $98, $48, $20, $f2, $b4, $68, $20, $8f, $b9, $bd, $30, $10   // 9c06: 98 48 20... .H
    .byt $8d,   5, $0f, $68, $aa, $68, $4a, $f0, $4f,   8, $48, $a6   // 9c12: 8d 05 0f... ...
    .byt $bb, $a4, $bc, $20, $99, $b7, $b9, $10, $10, $8d,   5, $0f   // 9c1e: bb a4 bc... ...
    .byt $68, $8d,   6, $0f, $28, $98, $48, $90, $1b, $a0,   3, $b5   // 9c2a: 68 8d 06... h..
    .byt   3, $99,   7, $0f, $ca, $88, $10, $f7, $a0, $0d, $a2,   5   // 9c36: 03 99 07... ...
    .byt $20, $ad, $94, $86, $bd, $68, $20, $b5, $92, $4c, $c7, $9c   // 9c42: 20 ad 94...  ..
    .byt $a0, $0c, $a2,   2, $20, $ad, $94, $85, $bd, $a6, $bb, $a0   // 9c4e: a0 0c a2... ...
    .byt   2, $95,   3, $b9,   5, $0f, $95,   2, $ca, $88, $10, $f7   // 9c5a: 02 95 03... ...
    .byt $68, $4c, $c7, $9c, $b0, $20, $a5, $bc, $20, $6b, $b4, $a4   // 9c66: 68 4c c7... hL.
    .byt $bb, $bd,   0, $10, $99,   0,   0, $bd, $10, $10, $99,   1   // 9c72: bb bd 00... ...
    .byt   0, $bd, $20, $10, $99,   2,   0, $a9,   0, $99,   3,   0   // 9c7e: 00 bd 20... ..
    .byt $f0, $3b, $8d,   6, $0f, $8a, $48, $a0,   3, $b5,   3, $99   // 9c8a: f0 3b 8d... .;.
    .byt   7, $0f, $ca, $88, $10, $f7, $a0, $0d, $a2,   5, $20, $ad   // 9c96: 07 0f ca... ...
    .byt $94, $86, $bd, $68, $a8, $a5, $bc, $20, $cc, $92, $20, $6b   // 9ca2: 94 86 bd... ...
    .byt $b4, $b9,   0,   0, $9d,   0, $10, $b9,   1,   0, $9d, $10   // 9cae: b4 b9 00... ...
    .byt $10, $b9,   2,   0, $9d, $20, $10, $4c, $c7, $9c, $20, $99   // 9cba: 10 b9 02... ...
    .byt $b7                                                          // 9cc6: b7          .

// $9cc7 referenced 6 times by $9a54, $9b49, $9dbb, $a2f7, $a2fd, $a3b1
c9cc7
    lda l00bd                                                         // 9cc7: a5 bd       ..
// $9cc9 referenced 2 times by $9b92, $a206
c9cc9
    pha                                                               // 9cc9: 48          H
    lda #0                                                            // 9cca: a9 00       ..
    jsr sub_cb98f                                                     // 9ccc: 20 8f b9     ..
    pla                                                               // 9ccf: 68          h
    ldx l00bb                                                         // 9cd0: a6 bb       ..
    ldy l00bc                                                         // 9cd2: a4 bc       ..
    rts                                                               // 9cd4: 60          `

    .byt $c9,   2, $b0, $13, $a8, $d0,   4, $a9,   5, $d0, $e9, $b9   // 9cd5: c9 02 b0... ...
    .byt $0a, $0e, $91, $bb, $88, $10, $f8, $94,   2, $94,   3, $f0   // 9ce1: 0a 0e 91... ...
    .byt   2, $a9,   0, $4a, $10, $d6, $29, $3f, $d0, $f7, $8a, $20   // 9ced: 02 a9 00... ...
    .byt $3d, $b5, $49, $80, $0a, $8d,   5, $0f, $2a, $8d,   6, $0f   // 9cf9: 3d b5 49... =.I
    .byt $20, $92, $ae, $a2,   2, $20,   4, $af, $a0,   6, $2c, $91   // 9d05: 20 92 ae...  ..
    .byt $94, $38, $66, $98, $20, $ae, $94, $b0, $6d, $a9, $ff, $20   // 9d11: 94 38 66... .8f
    .byt $8f, $b9, $ad,   5, $0f, $48, $a9,   4, $8d,   5, $0f, $a2   // 9d1d: 8f b9 ad... ...
    .byt   1, $bd,   6, $0f, $9d,   5, $0f, $e8, $c9, $0d, $d0, $f5   // 9d29: 01 bd 06... ...
    .byt $a0, $12, $20, $ad, $94, $a5, $bd, $29, $bf, $0d,   5, $0f   // 9d35: a0 12 20... ..
    .byt   9,   1, $a8, $29,   2, $f0                                 // 9d41: 09 01 a8... ...
    .asc "#h "                                                        // 9d47: 23 68 20    #h
    .byt   9, $b5, $d0, $33, $20, $cb, $8f, $20, $95, $92, $aa, $20   // 9d4a: 09 b5 d0... ...
    .byt $32, $af, $8a, $f0, $2f, $20, $b5, $af, $ac, $70, $10, $f0   // 9d56: 32 af 8a... 2..
    .byt $90, $98, $a2,   0, $8e, $70, $10, $f0, $1c, $ad,   6, $0f   // 9d62: 90 98 a2... ...
    .byt $6a, $b0, $0c, $6a, $90,   9, $2c,   7, $0f, $10,   4, $98   // 9d6e: 6a b0 0c... j..
    .byt   9, $20, $a8, $68, $20,   9, $b5, $aa, $98, $9d, $40, $10   // 9d7a: 09 20 a8... . .
    .byt $8a, $4c, $c9, $9c, $20, $99, $b7, $98, $d0, $13, $a5, $bb   // 9d86: 8a 4c c9... .L.
    .byt $48, $a9, $77, $20, $f4, $ff, $68, $85, $bb, $a9,   0, $85   // 9d92: 48 a9 77... H.w
    .byt $bd, $85, $bc, $f0,   6, $20, $7a, $b4, $bd, $30, $10, $8d   // 9d9e: bd 85 bc... ...
    .byt   5, $0f, $a2,   1, $a0,   7, $20, $ad, $94, $a4, $bc, $d0   // 9daa: 05 0f a2... ...
    .byt   7, $b8, $20, $5d, $b5                                      // 9db6: 07 b8 20... ..

// $9dbb referenced 2 times by $9dd8, $9dec
c9dbb
    jmp c9cc7                                                         // 9dbb: 4c c7 9c    L..

    .byt $a9,   0, $99, $10, $10, $99, $40, $10, $f0, $f3             // 9dbe: a9 00 99... ...

sub_c9dc8
    beq c9dd5                                                         // 9dc8: f0 0b       ..
    cpx #4                                                            // 9dca: e0 04       ..
    bne c9dd2                                                         // 9dcc: d0 04       ..
    cpy #4                                                            // 9dce: c0 04       ..
    bcc c9ddf                                                         // 9dd0: 90 0d       ..
// $9dd2 referenced 1 time by $9dcc
c9dd2
    dex                                                               // 9dd2: ca          .
    bne c9dda                                                         // 9dd3: d0 05       ..
// $9dd5 referenced 1 time by $9dc8
c9dd5
    sty l0e06                                                         // 9dd5: 8c 06 0e    ...
    bcc c9dbb                                                         // 9dd8: 90 e1       ..
// $9dda referenced 1 time by $9dd3
c9dda
    lda #7                                                            // 9dda: a9 07       ..
    jmp c964e                                                         // 9ddc: 4c 4e 96    LN.

// $9ddf referenced 1 time by $9dd0
c9ddf
    sty l0f05                                                         // 9ddf: 8c 05 0f    ...
    ldy #$16                                                          // 9de2: a0 16       ..
    jsr c94ad                                                         // 9de4: 20 ad 94     ..
    ldy l00bc                                                         // 9de7: a4 bc       ..
    sty l0e05                                                         // 9de9: 8c 05 0e    ...
    bpl c9dbb                                                         // 9dec: 10 cd       ..
sub_c9dee
    jsr sub_c8fcb                                                     // 9dee: 20 cb 8f     ..
    pha                                                               // 9df1: 48          H
    lda l00bc                                                         // 9df2: a5 bc       ..
    pha                                                               // 9df4: 48          H
    stx l10c9                                                         // 9df5: 8e c9 10    ...
    jsr sub_cb730                                                     // 9df8: 20 30 b7     0.
    beq c9e09                                                         // 9dfb: f0 0c       ..
    lda l1000,y                                                       // 9dfd: b9 00 10    ...
    cmp l1098,x                                                       // 9e00: dd 98 10    ...
    bcc c9e09                                                         // 9e03: 90 04       ..
    ldx #$ff                                                          // 9e05: a2 ff       ..
    bmi c9e0b                                                         // 9e07: 30 02       0.
// $9e09 referenced 2 times by $9dfb, $9e03
c9e09
    ldx #0                                                            // 9e09: a2 00       ..
// $9e0b referenced 1 time by $9e07
c9e0b
    pla                                                               // 9e0b: 68          h
    tay                                                               // 9e0c: a8          .
    pla                                                               // 9e0d: 68          h
    rts                                                               // 9e0e: 60          `

// $9e0f referenced 1 time by $9f5a
sub_c9e0f
    ldy #9                                                            // 9e0f: a0 09       ..
    jsr sub_c9e16                                                     // 9e11: 20 16 9e     ..
    ldy #1                                                            // 9e14: a0 01       ..
// $9e16 referenced 1 time by $9e11
sub_c9e16
    clc                                                               // 9e16: 18          .
// $9e17 referenced 1 time by $9f60
sub_c9e17
    ldx #$fc                                                          // 9e17: a2 fc       ..
// $9e19 referenced 1 time by $9e2c
loop_c9e19
    lda (l00bb),y                                                     // 9e19: b1 bb       ..
    bit l00b2                                                         // 9e1b: 24 b2       $.
    bmi c9e25                                                         // 9e1d: 30 06       0.
    adc l0e0a,x                                                       // 9e1f: 7d 0a 0e    }..
    jmp c9e28                                                         // 9e22: 4c 28 9e    L(.

// $9e25 referenced 1 time by $9e1d
c9e25
    sbc l0e0a,x                                                       // 9e25: fd 0a 0e    ...
// $9e28 referenced 1 time by $9e22
c9e28
    sta (l00bb),y                                                     // 9e28: 91 bb       ..
    iny                                                               // 9e2a: c8          .
    inx                                                               // 9e2b: e8          .
    bne loop_c9e19                                                    // 9e2c: d0 eb       ..
    rts                                                               // 9e2e: 60          `

    .byt $20, $cb, $8f, $20, $95, $92                                 // 9e2f: 20 cb 8f...  ..
    .asc "H 2"                                                        // 9e35: 48 20 32    H 2
    .byt $af, $68, $aa, $f0,   5, $ca, $e0,   8, $90,   3, $4c, $c7   // 9e38: af 68 aa... .h.
    .byt $9c, $8a, $a0,   0, $48, $c9,   4, $90,   3, $4c, $82, $9f   // 9e44: 9c 8a a0... ...
    .byt $b1, $bb, $48, $20, $f2, $b4, $68, $a8, $20, $99, $b7, $bd   // 9e50: b1 bb 48... ..H
    .byt $30, $10, $8d,   5, $0f, $a9,   0, $8d,   6, $0f, $bd,   0   // 9e5c: 30 10 8d... 0..
    .byt $10, $8d,   7, $0f, $bd, $10, $10, $8d,   8, $0f, $bd, $20   // 9e68: 10 8d 07... ...
    .byt $10, $8d,   9, $0f, $a0, $0d, $a2,   5, $20, $ad, $94, $68   // 9e74: 10 8d 09... ...
    .byt $20, $dd, $9e,   8, $a0,   0, $b1, $bb, $b0,   5, $20, $cc   // 9e80: 20 dd 9e...  ..
    .byt $92, $10,   3, $20, $b5, $92, $8c,   6, $0f, $20, $d6, $9e   // 9e8c: 92 10 03... ...
    .byt $8d,   5, $0f, $a0, $0c, $a2,   2, $20, $ad, $94, $20, $d2   // 9e98: 8d 05 0f... ...
    .byt $9e, $a0,   9, $ad,   5, $0f, $9d,   0, $10, $91, $bb, $c8   // 9ea4: 9e a0 09... ...
    .byt $ad,   6, $0f, $9d, $10, $10, $91, $bb, $c8, $ad,   7, $0f   // 9eb0: ad 06 0f... ...
    .byt $9d, $20, $10, $91, $bb, $a9,   0, $c8, $91, $bb, $28, $90   // 9ebc: 9d 20 10... . .
    .byt   4, $a5, $bd, $c9,   3, $a9,   0, $4c, $c9, $9c             // 9ec8: 04 a5 bd... ...

// $9ed2 referenced 1 time by $9ede
sub_c9ed2
    ldy #0                                                            // 9ed2: a0 00       ..
    lda (l00bb),y                                                     // 9ed4: b1 bb       ..
    jsr sub_cb4ad                                                     // 9ed6: 20 ad b4     ..
    lda l1030,x                                                       // 9ed9: bd 30 10    .0.
    rts                                                               // 9edc: 60          `

// $9edd referenced 1 time by $b987
c9edd
    pha                                                               // 9edd: 48          H
    jsr sub_c9ed2                                                     // 9ede: 20 d2 9e     ..
    sta l0f05                                                         // 9ee1: 8d 05 0f    ...
    ldy #$0b                                                          // 9ee4: a0 0b       ..
    ldx #6                                                            // 9ee6: a2 06       ..
// $9ee8 referenced 1 time by $9ef4
loop_c9ee8
    lda (l00bb),y                                                     // 9ee8: b1 bb       ..
    sta l0f06,x                                                       // 9eea: 9d 06 0f    ...
    dey                                                               // 9eed: 88          .
    cpy #8                                                            // 9eee: c0 08       ..
    bne c9ef3                                                         // 9ef0: d0 01       ..
    dey                                                               // 9ef2: 88          .
// $9ef3 referenced 1 time by $9ef0
c9ef3
    dex                                                               // 9ef3: ca          .
    bne loop_c9ee8                                                    // 9ef4: d0 f2       ..
    pla                                                               // 9ef6: 68          h
    lsr                                                               // 9ef7: 4a          J
    pha                                                               // 9ef8: 48          H
    bcc c9efc                                                         // 9ef9: 90 01       ..
    inx                                                               // 9efb: e8          .
// $9efc referenced 1 time by $9ef9
c9efc
    stx l0f06                                                         // 9efc: 8e 06 0f    ...
    ldy #$0b                                                          // 9eff: a0 0b       ..
    ldx #$91                                                          // 9f01: a2 91       ..
    pla                                                               // 9f03: 68          h
    pha                                                               // 9f04: 48          H
    beq c9f0a                                                         // 9f05: f0 03       ..
    ldx #$92                                                          // 9f07: a2 92       ..
    dey                                                               // 9f09: 88          .
// $9f0a referenced 1 time by $9f05
c9f0a
    stx l0f02                                                         // 9f0a: 8e 02 0f    ...
    stx l00b8                                                         // 9f0d: 86 b8       ..
    ldx #8                                                            // 9f0f: a2 08       ..
    lda l0f05                                                         // 9f11: ad 05 0f    ...
    jsr sub_c9497                                                     // 9f14: 20 97 94     ..
    ldx #0                                                            // 9f17: a2 00       ..
    lda (l00bb,x)                                                     // 9f19: a1 bb       ..
    tax                                                               // 9f1b: aa          .
    lda l1040,x                                                       // 9f1c: bd 40 10    .@.
    eor #1                                                            // 9f1f: 49 01       I.
    sta l1040,x                                                       // 9f21: 9d 40 10    .@.
    clc                                                               // 9f24: 18          .
    ldx #4                                                            // 9f25: a2 04       ..
// $9f27 referenced 1 time by $9f3b
loop_c9f27
    lda (l00bb),y                                                     // 9f27: b1 bb       ..
    sta l00af,y                                                       // 9f29: 99 af 00    ...
    sta l00c7,y                                                       // 9f2c: 99 c7 00    ...
    jsr sub_c9a7f                                                     // 9f2f: 20 7f 9a     ..
    adc (l00bb),y                                                     // 9f32: 71 bb       q.
    sta l00af,y                                                       // 9f34: 99 af 00    ...
    jsr sub_c9a92                                                     // 9f37: 20 92 9a     ..
    dex                                                               // 9f3a: ca          .
    bne loop_c9f27                                                    // 9f3b: d0 ea       ..
    inx                                                               // 9f3d: e8          .
// $9f3e referenced 1 time by $9f45
loop_c9f3e
    lda l0f03,x                                                       // 9f3e: bd 03 0f    ...
    sta l0f06,x                                                       // 9f41: 9d 06 0f    ...
    dex                                                               // 9f44: ca          .
    bpl loop_c9f3e                                                    // 9f45: 10 f7       ..
    pla                                                               // 9f47: 68          h
    bne c9f52                                                         // 9f48: d0 08       ..
    lda l0f02                                                         // 9f4a: ad 02 0f    ...
    jsr sub_c9a9a                                                     // 9f4d: 20 9a 9a     ..
    bcs c9f55                                                         // 9f50: b0 03       ..
// $9f52 referenced 1 time by $9f48
c9f52
    jsr sub_c9998                                                     // 9f52: 20 98 99     ..
// $9f55 referenced 1 time by $9f50
c9f55
    jsr sub_c9f67                                                     // 9f55: 20 67 9f     g.
    stx l00b2                                                         // 9f58: 86 b2       ..
    jsr sub_c9e0f                                                     // 9f5a: 20 0f 9e     ..
    dec l00b2                                                         // 9f5d: c6 b2       ..
    sec                                                               // 9f5f: 38          8
    jsr sub_c9e17                                                     // 9f60: 20 17 9e     ..
    asl l0f05                                                         // 9f63: 0e 05 0f    ...
    rts                                                               // 9f66: 60          `

// $9f67 referenced 1 time by $9f55
sub_c9f67
    php                                                               // 9f67: 08          .
    jsr sub_c94f0                                                     // 9f68: 20 f0 94     ..
    plp                                                               // 9f6b: 28          (
    rts                                                               // 9f6c: 60          `

    .byt $a0, $15, $20, $ad, $94, $ad,   5, $0e, $8d, $16, $0f, $86   // 9f6d: a0 15 20... ..
    .byt $b0, $86, $b1, $a9, $12, $85, $b2, $d0, $4e, $a0,   4, $ad   // 9f79: b0 86 b1... ...
    .byt $63, $0d, $f0,   7, $d1, $bb, $d0,   3, $88, $f1, $bb, $85   // 9f85: 63 0d f0... c..
    .byt $a9, $b1, $bb, $99, $bd,   0, $88, $d0, $f8, $68, $29,   3   // 9f91: a9 b1 bb... ...
    .byt $f0, $ce, $4a, $f0,   2, $b0, $6b, $a8, $b9,   3, $0e, $8d   // 9f9d: f0 ce 4a... ..J
    .byt   3, $0f, $ad,   4, $0e, $8d,   4, $0f, $ad,   2, $0e, $8d   // 9fa9: 03 0f ad... ...
    .byt   2, $0f, $a2, $12, $8e,   1, $0f, $a9, $0d, $8d,   6, $0f   // 9fb5: 02 0f a2... ...
    .byt $85, $b2, $4a, $8d,   5, $0f, $18, $20, $da, $94, $86, $b1   // 9fc1: 85 b2 4a... ..J
    .byt $e8, $86, $b0, $a5, $a9, $d0, $11, $a6, $b0, $a4, $b1, $bd   // 9fcd: e8 86 b0... ...
    .byt   5, $0f, $91, $be, $e8, $c8, $c6, $b2, $d0, $f5, $f0        // 9fd9: 05 0f 91... ...
    .asc "' s"                                                        // 9fe4: 27 20 73    ' s
    .byt $a0, $a9,   1, $a6, $bb, $a4, $bc, $e8, $d0,   1, $c8, $20   // 9fe7: a0 a9 01... ...
    .byt   6,   4, $a6, $b0, $bd,   5, $0f, $8d, $e5, $fe, $e8, $a0   // 9ff3: 06 04 a6... ...
    .byt   6, $88, $d0, $fd, $c6, $b2, $d0, $f0, $a9, $83, $20,   6   // 9fff: 06 88 d0... ...
    .byt   4, $4c, $ee, $9c, $a0,   9, $b1, $bb, $8d,   6, $0f, $a0   // a00b: 04 4c ee... .L.
    .byt   5, $b1, $bb, $8d,   7, $0f, $a2, $0d, $8e,   8, $0f, $a0   // a017: 05 b1 bb... ...
    .byt   2, $84, $b0, $8c,   5, $0f, $c8, $20, $ad, $94, $86, $b1   // a023: 02 84 b0... ...
    .byt $ad,   6, $0f, $81, $bb, $ad,   5, $0f, $a0,   9, $71, $bb   // a02f: ad 06 0f... ...
    .byt $91, $bb, $a5, $c8, $e9,   7, $8d,   6, $0f, $85, $b2, $f0   // a03b: 91 bb a5... ...
    .byt   3, $20, $d0, $9f, $a2,   2, $9d,   7, $0f, $ca, $10, $fa   // a047: 03 20 d0... . .
    .byt $20, $14, $9e, $38, $c6, $b2, $ad,   5, $0f, $8d,   6, $0f   // a053: 20 14 9e...  ..
    .byt $20, $17, $9e, $a2,   3, $a0,   5, $38, $b1, $bb, $d0,   5   // a05f: 20 17 9e...  ..
    .byt $c8, $ca, $10, $f8, $18, $4c, $0c, $a0                       // a06b: c8 ca 10... ...

// $a073 referenced 2 times by $a078, $a2e3
ca073
    lda #$c3                                                          // a073: a9 c3       ..
    jsr c0406                                                         // a075: 20 06 04     ..
    bcc ca073                                                         // a078: 90 f9       ..
    rts                                                               // a07a: 60          `

sub_ca07b
    lda l0e00                                                         // a07b: ad 00 0e    ...
    sta l00b5                                                         // a07e: 85 b5       ..
    lda l0e01                                                         // a080: ad 01 0e    ...
    sta l00b6                                                         // a083: 85 b6       ..
    lda (l00be),y                                                     // a085: b1 be       ..
    cmp #$0d                                                          // a087: c9 0d       ..
    beq ca09b                                                         // a089: f0 10       ..
    jsr sub_ca0a7                                                     // a08b: 20 a7 a0     ..
    lda #1                                                            // a08e: a9 01       ..
    sta l00b4                                                         // a090: 85 b4       ..
    lda #$13                                                          // a092: a9 13       ..
    ldx #<(l00b4)                                                     // a094: a2 b4       ..
    ldy #>(l00b4)                                                     // a096: a0 00       ..
    jmp osword                                                        // a098: 4c f1 ff    L..            // Read/Write NFS information (see https://beebwiki.mdfs.net/OSWORDs)

// $a09b referenced 1 time by $a089
ca09b
    jsr sub_cb0c5                                                     // a09b: 20 c5 b0     ..
// $a09e referenced 1 time by $b0b6
sub_ca09e
    bit l9491                                                         // a09e: 2c 91 94    ,..
    jsr sub_cb198                                                     // a0a1: 20 98 b1     ..
    jmp osnewl                                                        // a0a4: 4c e7 ff    L..            // Write newline (characters 10 and 13)

// $a0a7 referenced 3 times by $a08b, $b011, $b1e8
sub_ca0a7
    txa                                                               // a0a7: 8a          .
    pha                                                               // a0a8: 48          H
    lda #0                                                            // a0a9: a9 00       ..
    sta l00b4                                                         // a0ab: 85 b4       ..
    jsr sub_c916e                                                     // a0ad: 20 6e 91     n.
    bcs ca0c5                                                         // a0b0: b0 13       ..
    tya                                                               // a0b2: 98          .
    pha                                                               // a0b3: 48          H
    jsr sub_ca865                                                     // a0b4: 20 65 a8     e.
    eor l00b2                                                         // a0b7: 45 b2       E.
    beq ca0bd                                                         // a0b9: f0 02       ..
    lda l00b2                                                         // a0bb: a5 b2       ..
// $a0bd referenced 1 time by $a0b9
ca0bd
    sta l00b6                                                         // a0bd: 85 b6       ..
    pla                                                               // a0bf: 68          h
    tay                                                               // a0c0: a8          .
    iny                                                               // a0c1: c8          .
    jsr sub_c916e                                                     // a0c2: 20 6e 91     n.
// $a0c5 referenced 1 time by $a0b0
ca0c5
    beq ca0c9                                                         // a0c5: f0 02       ..
    sta l00b5                                                         // a0c7: 85 b5       ..
// $a0c9 referenced 1 time by $a0c5
ca0c9
    pla                                                               // a0c9: 68          h
    tax                                                               // a0ca: aa          .
    rts                                                               // a0cb: 60          `

// $a0cc referenced 2 times by $a0ea, $a0fa
sub_ca0cc
    lda l00f0                                                         // a0cc: a5 f0       ..
// $a0ce referenced 2 times by $8f30, $b108
sub_ca0ce
    asl                                                               // a0ce: 0a          .
    asl                                                               // a0cf: 0a          .
    pha                                                               // a0d0: 48          H
    asl                                                               // a0d1: 0a          .
    tsx                                                               // a0d2: ba          .
    php                                                               // a0d3: 08          .
    adc l0101,x                                                       // a0d4: 7d 01 01    }..
    ror                                                               // a0d7: 6a          j
    plp                                                               // a0d8: 28          (
    asl                                                               // a0d9: 0a          .
    tay                                                               // a0da: a8          .
    pla                                                               // a0db: 68          h
    cmp #$48 // 'H'                                                   // a0dc: c9 48       .H
    bcc ca0e3                                                         // a0de: 90 03       ..
    ldy #0                                                            // a0e0: a0 00       ..
    tya                                                               // a0e2: 98          .
// $a0e3 referenced 1 time by $a0de
ca0e3
    rts                                                               // a0e3: 60          `

sub_ca0e4
    ldy #$6f // 'o'                                                   // a0e4: a0 6f       .o
    lda (l009c),y                                                     // a0e6: b1 9c       ..
    bcc ca0f7                                                         // a0e8: 90 0d       ..
sub_ca0ea
    jsr sub_ca0cc                                                     // a0ea: 20 cc a0     ..
    bcs ca0f5                                                         // a0ed: b0 06       ..
    lda (l009e),y                                                     // a0ef: b1 9e       ..
    cmp #$3f // '?'                                                   // a0f1: c9 3f       .?
    bne ca0f7                                                         // a0f3: d0 02       ..
// $a0f5 referenced 1 time by $a0ed
ca0f5
    lda #0                                                            // a0f5: a9 00       ..
// $a0f7 referenced 2 times by $a0e8, $a0f3
ca0f7
    sta l00f0                                                         // a0f7: 85 f0       ..
    rts                                                               // a0f9: 60          `

sub_ca0fa
    jsr sub_ca0cc                                                     // a0fa: 20 cc a0     ..
    bcc ca109                                                         // a0fd: 90 0a       ..
    ror l0d6c                                                         // a0ff: 6e 6c 0d    nl.
    lda l00f0                                                         // a102: a5 f0       ..
    rol                                                               // a104: 2a          *
    rol l0d6c                                                         // a105: 2e 6c 0d    .l.
    rts                                                               // a108: 60          `

// $a109 referenced 1 time by $a0fd
ca109
    ror l0d61                                                         // a109: 6e 61 0d    na.
    lda #$3f // '?'                                                   // a10c: a9 3f       .?
    sta (l009e),y                                                     // a10e: 91 9e       ..
    rol l0d61                                                         // a110: 2e 61 0d    .a.
    rts                                                               // a113: 60          `

// $a114 referenced 1 time by $8cf9
ca114
    jsr sub_c9291                                                     // a114: 20 91 92     ..
    ldy #$ff                                                          // a117: a0 ff       ..
    sty l00ba                                                         // a119: 84 ba       ..
    sty l0098                                                         // a11b: 84 98       ..
    iny                                                               // a11d: c8          .
    ldx #$4a // 'J'                                                   // a11e: a2 4a       .J
    jsr sub_ca140                                                     // a120: 20 40 a1     @.
    bcs ca133                                                         // a123: b0 0e       ..
// $a125 referenced 1 time by $8c5a
ca125
    bvc ca133                                                         // a125: 50 0c       P.
// $a127 referenced 1 time by $af6f
ca127
    lda #$dc                                                          // a127: a9 dc       ..
    jsr generate_error_inline2                                        // a129: 20 d4 96     ..
    .asc "Syntax", 0                                                  // a12c: 53 79 6e... Syn

// $a133 referenced 2 times by $a123, $a125
ca133
    lda #0                                                            // a133: a9 00       ..
    sta l00a9                                                         // a135: 85 a9       ..
    lda la3f2,x                                                       // a137: bd f2 a3    ...
    pha                                                               // a13a: 48          H
    lda la3f1,x                                                       // a13b: bd f1 a3    ...
    pha                                                               // a13e: 48          H
    rts                                                               // a13f: 60          `

// $a140 referenced 5 times by $8c55, $8c83, $a120, $b320, $b34d
sub_ca140
    tya                                                               // a140: 98          .
    pha                                                               // a141: 48          H
// $a142 referenced 1 time by $a168
ca142
    pla                                                               // a142: 68          h
    pha                                                               // a143: 48          H
    tay                                                               // a144: a8          .
    lda la3f0,x                                                       // a145: bd f0 a3    ...
    bmi ca1a9                                                         // a148: 30 5f       0_
// $a14a referenced 1 time by $a157
loop_ca14a
    lda la3f0,x                                                       // a14a: bd f0 a3    ...
    bmi ca16a                                                         // a14d: 30 1b       0.
    eor (l00be),y                                                     // a14f: 51 be       Q.
    and #$df                                                          // a151: 29 df       ).
    bne ca159                                                         // a153: d0 04       ..
    iny                                                               // a155: c8          .
    inx                                                               // a156: e8          .
    bne loop_ca14a                                                    // a157: d0 f1       ..
// $a159 referenced 2 times by $a153, $a15d
ca159
    inx                                                               // a159: e8          .
    lda la3f0,x                                                       // a15a: bd f0 a3    ...
    bpl ca159                                                         // a15d: 10 fa       ..
    lda (l00be),y                                                     // a15f: b1 be       ..
    cmp #$2e // '.'                                                   // a161: c9 2e       ..
    beq ca18d                                                         // a163: f0 28       .(
// $a165 referenced 1 time by $a17a
loop_ca165
    inx                                                               // a165: e8          .
    inx                                                               // a166: e8          .
    inx                                                               // a167: e8          .
    bne ca142                                                         // a168: d0 d8       ..
// $a16a referenced 1 time by $a14d
ca16a
    tya                                                               // a16a: 98          .
    pha                                                               // a16b: 48          H
    lda (l00be),y                                                     // a16c: b1 be       ..
    ldy #9                                                            // a16e: a0 09       ..
// $a170 referenced 1 time by $a176
loop_ca170
    cmp la17c,y                                                       // a170: d9 7c a1    .|.
    beq ca185                                                         // a173: f0 10       ..
    dey                                                               // a175: 88          .
    bpl loop_ca170                                                    // a176: 10 f8       ..
    pla                                                               // a178: 68          h
    tay                                                               // a179: a8          .
    bne loop_ca165                                                    // a17a: d0 e9       ..
// $a17c referenced 1 time by $a170
la17c
    .asc " ", 34, "#$&*:@"                                            // a17c: 20 22 23...  "#
    .byt $0d                                                          // a184: 0d          .

// $a185 referenced 1 time by $a173
ca185
    pla                                                               // a185: 68          h
    tay                                                               // a186: a8          .
// $a187 referenced 1 time by $a18e
loop_ca187
    lda (l00be),y                                                     // a187: b1 be       ..
    cmp #$20 // ' '                                                   // a189: c9 20       .
    bne ca191                                                         // a18b: d0 04       ..
// $a18d referenced 1 time by $a163
ca18d
    iny                                                               // a18d: c8          .
    jmp loop_ca187                                                    // a18e: 4c 87 a1    L..

// $a191 referenced 1 time by $a18b
ca191
    lda la3f0,x                                                       // a191: bd f0 a3    ...
    asl                                                               // a194: 0a          .
    bpl ca1a2                                                         // a195: 10 0b       ..
    lda (l00be),y                                                     // a197: b1 be       ..
    cmp #$0d                                                          // a199: c9 0d       ..
    bne ca1a2                                                         // a19b: d0 05       ..
    bit l9491                                                         // a19d: 2c 91 94    ,..
    bvs ca1a3                                                         // a1a0: 70 01       p.
// $a1a2 referenced 2 times by $a195, $a19b
ca1a2
    clv                                                               // a1a2: b8          .
// $a1a3 referenced 1 time by $a1a0
ca1a3
    clc                                                               // a1a3: 18          .
// $a1a4 referenced 1 time by $a1bf
loop_ca1a4
    pla                                                               // a1a4: 68          h
    lda (l00be),y                                                     // a1a5: b1 be       ..
    rts                                                               // a1a7: 60          `

// $a1a8 referenced 1 time by $a1b5
loop_ca1a8
    iny                                                               // a1a8: c8          .
// $a1a9 referenced 1 time by $a148
ca1a9
    lda (l00be),y                                                     // a1a9: b1 be       ..
    cmp #$0d                                                          // a1ab: c9 0d       ..
    beq ca1be                                                         // a1ad: f0 0f       ..
    cmp #$2e // '.'                                                   // a1af: c9 2e       ..
    beq ca1b7                                                         // a1b1: f0 04       ..
    cmp #$20 // ' '                                                   // a1b3: c9 20       .
    bne loop_ca1a8                                                    // a1b5: d0 f1       ..
// $a1b7 referenced 2 times by $a1b1, $a1bc
ca1b7
    iny                                                               // a1b7: c8          .
    lda (l00be),y                                                     // a1b8: b1 be       ..
    cmp #$20 // ' '                                                   // a1ba: c9 20       .
    beq ca1b7                                                         // a1bc: f0 f9       ..
// $a1be referenced 1 time by $a1ad
ca1be
    sec                                                               // a1be: 38          8
    bcs loop_ca1a4                                                    // a1bf: b0 e3       ..
// $a1c1 referenced 1 time by $8e1d
ca1c1
    jsr sub_cafb5                                                     // a1c1: 20 b5 af     ..
    jsr sub_caf32                                                     // a1c4: 20 32 af     2.
    jsr sub_cae92                                                     // a1c7: 20 92 ae     ..
// $a1ca referenced 1 time by $a241
ca1ca
    ldx #1                                                            // a1ca: a2 01       ..
    jsr sub_caf04                                                     // a1cc: 20 04 af     ..
    lda #2                                                            // a1cf: a9 02       ..
    sta l0f05                                                         // a1d1: 8d 05 0f    ...
    ldy #$12                                                          // a1d4: a0 12       ..
    jsr c94ad                                                         // a1d6: 20 ad 94     ..
    lda l0f05                                                         // a1d9: ad 05 0f    ...
    cmp #1                                                            // a1dc: c9 01       ..
    bne ca209                                                         // a1de: d0 29       .)
    ldx #3                                                            // a1e0: a2 03       ..
// $a1e2 referenced 1 time by $a1eb
loop_ca1e2
    inc l0f0a,x                                                       // a1e2: fe 0a 0f    ...
    beq ca1ea                                                         // a1e5: f0 03       ..
    jmp ca26a                                                         // a1e7: 4c 6a a2    Lj.

// $a1ea referenced 1 time by $a1e5
ca1ea
    dex                                                               // a1ea: ca          .
    bpl loop_ca1e2                                                    // a1eb: 10 f5       ..
    jsr sub_cb53d                                                     // a1ed: 20 3d b5     =.
    ldx #1                                                            // a1f0: a2 01       ..
    stx l0f05                                                         // a1f2: 8e 05 0f    ...
    stx l0f06                                                         // a1f5: 8e 06 0f    ...
    inx                                                               // a1f8: e8          .
    jsr sub_caf04                                                     // a1f9: 20 04 af     ..
    ldy #6                                                            // a1fc: a0 06       ..
    jsr c94ad                                                         // a1fe: 20 ad 94     ..
    bcs ca206                                                         // a201: b0 03       ..
    jmp ca27d                                                         // a203: 4c 7d a2    L}.

// $a206 referenced 1 time by $a201
ca206
    jmp c9cc9                                                         // a206: 4c c9 9c    L..

// $a209 referenced 1 time by $a1de
ca209
    lda l0e30                                                         // a209: ad 30 0e    .0.
    cmp #$24 // '$'                                                   // a20c: c9 24       .$
    beq ca25d                                                         // a20e: f0 4d       .M
    lda l1071                                                         // a210: ad 71 10    .q.
    bmi ca25a                                                         // a213: 30 45       0E
    rol                                                               // a215: 2a          *
    rol                                                               // a216: 2a          *
    bmi ca243                                                         // a217: 30 2a       0*
    bcs ca25d                                                         // a219: b0 42       .B
    ldx #$ff                                                          // a21b: a2 ff       ..
// $a21d referenced 1 time by $a223
loop_ca21d
    inx                                                               // a21d: e8          .
    lda l0e30,x                                                       // a21e: bd 30 0e    .0.
    cmp #$0d                                                          // a221: c9 0d       ..
    bne loop_ca21d                                                    // a223: d0 f8       ..
// $a225 referenced 1 time by $a22c
loop_ca225
    lda l0e30,x                                                       // a225: bd 30 0e    .0.
    sta l0e38,x                                                       // a228: 9d 38 0e    .8.
    dex                                                               // a22b: ca          .
    bpl loop_ca225                                                    // a22c: 10 f7       ..
    ldx #7                                                            // a22e: a2 07       ..
// $a230 referenced 1 time by $a237
loop_ca230
    lda la291,x                                                       // a230: bd 91 a2    ...
    sta l0e30,x                                                       // a233: 9d 30 0e    .0.
    dex                                                               // a236: ca          .
    bpl loop_ca230                                                    // a237: 10 f7       ..
    lda l1071                                                         // a239: ad 71 10    .q.
    ora #$60 // '`'                                                   // a23c: 09 60       .`
    sta l1071                                                         // a23e: 8d 71 10    .q.
// $a241 referenced 1 time by $a258
loop_ca241
    bne ca1ca                                                         // a241: d0 87       ..
// $a243 referenced 1 time by $a217
ca243
    ldx #$ff                                                          // a243: a2 ff       ..
// $a245 referenced 1 time by $a24e
loop_ca245
    inx                                                               // a245: e8          .
    lda l0e38,x                                                       // a246: bd 38 0e    .8.
    sta l0e30,x                                                       // a249: 9d 30 0e    .0.
    eor #$0d                                                          // a24c: 49 0d       I.
    bne loop_ca245                                                    // a24e: d0 f5       ..
    jsr sub_caf32                                                     // a250: 20 32 af     2.
    ora #$80                                                          // a253: 09 80       ..
    sta l1071                                                         // a255: 8d 71 10    .q.
    bne loop_ca241                                                    // a258: d0 e7       ..
// $a25a referenced 1 time by $a213
ca25a
    jsr sub_caf32                                                     // a25a: 20 32 af     2.
// $a25d referenced 3 times by $a20e, $a219, $b332
ca25d
    lda #$fe                                                          // a25d: a9 fe       ..
    jsr generate_error_inline                                         // a25f: 20 b8 96     ..
    .asc "command", 0                                                 // a262: 63 6f 6d... com

// $a26a referenced 1 time by $a1e7
ca26a
    ldx #3                                                            // a26a: a2 03       ..
// $a26c referenced 1 time by $a272
loop_ca26c
    inc l0f06,x                                                       // a26c: fe 06 0f    ...
    bne ca299                                                         // a26f: d0 28       .(
    dex                                                               // a271: ca          .
    bne loop_ca26c                                                    // a272: d0 f8       ..
    lda #$93                                                          // a274: a9 93       ..
    jsr generate_error_inline3                                        // a276: 20 d1 96     ..
    .asc "No!", 0                                                     // a279: 4e 6f 21... No!

// $a27d referenced 1 time by $a203
ca27d
    lda l0f05                                                         // a27d: ad 05 0f    ...
    jsr sub_cb509                                                     // a280: 20 09 b5     ..
    tay                                                               // a283: a8          .
    lda #0                                                            // a284: a9 00       ..
    sta l1060,x                                                       // a286: 9d 60 10    .`.
    sty l1070                                                         // a289: 8c 70 10    .p.
    ldy #3                                                            // a28c: a0 03       ..
    jmp ca3e8                                                         // a28e: 4c e8 a3    L..

// $a291 referenced 1 time by $a230
la291
    .asc "Library."                                                   // a291: 4c 69 62... Lib

// $a299 referenced 1 time by $a26f
ca299
    jsr sub_caf02                                                     // a299: 20 02 af     ..
    ldy #0                                                            // a29c: a0 00       ..
    clc                                                               // a29e: 18          .
    jsr gsinit                                                        // a29f: 20 c2 ff     ..
// $a2a2 referenced 1 time by $a2a5
loop_ca2a2
    jsr gsread                                                        // a2a2: 20 c5 ff     ..
    bcc loop_ca2a2                                                    // a2a5: 90 fb       ..
    dey                                                               // a2a7: 88          .
// $a2a8 referenced 1 time by $a2ad
loop_ca2a8
    iny                                                               // a2a8: c8          .
    lda (os_text_ptr),y                                               // a2a9: b1 f2       ..
    cmp #$20 // ' '                                                   // a2ab: c9 20       .
    beq loop_ca2a8                                                    // a2ad: f0 f9       ..
    eor #$0d                                                          // a2af: 49 0d       I.
    clc                                                               // a2b1: 18          .
    tya                                                               // a2b2: 98          .
    adc os_text_ptr                                                   // a2b3: 65 f2       e.
    sta l0e0a                                                         // a2b5: 8d 0a 0e    ...
    lda l00f3                                                         // a2b8: a5 f3       ..
    adc #0                                                            // a2ba: 69 00       i.
    sta l0e0b                                                         // a2bc: 8d 0b 0e    ...
    jsr sub_c8b02                                                     // a2bf: 20 02 8b     ..
    ldx #$0e                                                          // a2c2: a2 0e       ..
    stx l00bc                                                         // a2c4: 86 bc       ..
    lda #$0e                                                          // a2c6: a9 0e       ..
    sta l00bb                                                         // a2c8: 85 bb       ..
    sta l0e14                                                         // a2ca: 8d 14 0e    ...
    ldx #$4a // 'J'                                                   // a2cd: a2 4a       .J
    ldy #5                                                            // a2cf: a0 05       ..
    jsr sub_c9951                                                     // a2d1: 20 51 99     Q.
    lda l0d63                                                         // a2d4: ad 63 0d    .c.
    beq ca2ef                                                         // a2d7: f0 16       ..
    and l0f0b                                                         // a2d9: 2d 0b 0f    -..
    and l0f0c                                                         // a2dc: 2d 0c 0f    -..
    cmp #$ff                                                          // a2df: c9 ff       ..
    beq ca2ef                                                         // a2e1: f0 0c       ..
    jsr ca073                                                         // a2e3: 20 73 a0     s.
    ldx #9                                                            // a2e6: a2 09       ..
    ldy #$0f                                                          // a2e8: a0 0f       ..
    lda #4                                                            // a2ea: a9 04       ..
    jmp c0406                                                         // a2ec: 4c 06 04    L..

// $a2ef referenced 2 times by $a2d7, $a2e1
ca2ef
    lda #1                                                            // a2ef: a9 01       ..
    jmp (l0f09)                                                       // a2f1: 6c 09 0f    l..

// $a2f4 referenced 1 time by $945f
ca2f4
    jsr sub_ca32b                                                     // a2f4: 20 2b a3     +.
    jmp c9cc7                                                         // a2f7: 4c c7 9c    L..

sub_ca2fa
    jsr sub_ca362                                                     // a2fa: 20 62 a3     b.
    jmp c9cc7                                                         // a2fd: 4c c7 9c    L..

// $a300 referenced 1 time by $a39f
sub_ca300
    ldx #$10                                                          // a300: a2 10       ..
    clv                                                               // a302: b8          .
// $a303 referenced 2 times by $a309, $a310
ca303
    dex                                                               // a303: ca          .
    bmi ca319                                                         // a304: 30 13       0.
    jsr sub_cb586                                                     // a306: 20 86 b5     ..
    bne ca303                                                         // a309: d0 f8       ..
    lda l1060,x                                                       // a30b: bd 60 10    .`.
    and #4                                                            // a30e: 29 04       ).
    beq ca303                                                         // a310: f0 f1       ..
    tya                                                               // a312: 98          .
    sta l1030,x                                                       // a313: 9d 30 10    .0.
    bit l9491                                                         // a316: 2c 91 94    ,..
// $a319 referenced 1 time by $a304
ca319
    sty l0e02                                                         // a319: 8c 02 0e    ...
    bvs ca327                                                         // a31c: 70 09       p.
    tya                                                               // a31e: 98          .
    jsr sub_cb509                                                     // a31f: 20 09 b5     ..
    sta l1072                                                         // a322: 8d 72 10    .r.
    beq ca38e                                                         // a325: f0 67       .g
// $a327 referenced 1 time by $a31c
ca327
    lda #$26 // '&'                                                   // a327: a9 26       .&
    bne ca38b                                                         // a329: d0 60       .`
// $a32b referenced 3 times by $a2f4, $a35d, $a3a5
sub_ca32b
    ldx #$10                                                          // a32b: a2 10       ..
    clv                                                               // a32d: b8          .
// $a32e referenced 2 times by $a334, $a33b
ca32e
    dex                                                               // a32e: ca          .
    bmi ca344                                                         // a32f: 30 13       0.
    jsr sub_cb586                                                     // a331: 20 86 b5     ..
    bne ca32e                                                         // a334: d0 f8       ..
    lda l1060,x                                                       // a336: bd 60 10    .`.
    and #8                                                            // a339: 29 08       ).
    beq ca32e                                                         // a33b: f0 f1       ..
    tya                                                               // a33d: 98          .
    sta l1030,x                                                       // a33e: 9d 30 10    .0.
    bit l9491                                                         // a341: 2c 91 94    ,..
// $a344 referenced 1 time by $a32f
ca344
    sty l0e03                                                         // a344: 8c 03 0e    ...
    bvs ca352                                                         // a347: 70 09       p.
    tya                                                               // a349: 98          .
    jsr sub_cb509                                                     // a34a: 20 09 b5     ..
    sta l1073                                                         // a34d: 8d 73 10    .s.
    beq ca38e                                                         // a350: f0 3c       .<
// $a352 referenced 1 time by $a347
ca352
    lda #$2a // '*'                                                   // a352: a9 2a       .*
    bne ca38b                                                         // a354: d0 35       .5
sub_ca356
    lda l0e03                                                         // a356: ad 03 0e    ...
    pha                                                               // a359: 48          H
    ldy l0e04                                                         // a35a: ac 04 0e    ...
    jsr sub_ca32b                                                     // a35d: 20 2b a3     +.
    pla                                                               // a360: 68          h
    tay                                                               // a361: a8          .
// $a362 referenced 2 times by $a2fa, $a3ab
sub_ca362
    ldx #$10                                                          // a362: a2 10       ..
    clv                                                               // a364: b8          .
// $a365 referenced 2 times by $a36b, $a372
ca365
    dex                                                               // a365: ca          .
    bmi ca37b                                                         // a366: 30 13       0.
    jsr sub_cb586                                                     // a368: 20 86 b5     ..
    bne ca365                                                         // a36b: d0 f8       ..
    lda l1060,x                                                       // a36d: bd 60 10    .`.
    and #$10                                                          // a370: 29 10       ).
    beq ca365                                                         // a372: f0 f1       ..
    tya                                                               // a374: 98          .
    sta l1030,x                                                       // a375: 9d 30 10    .0.
    bit l9491                                                         // a378: 2c 91 94    ,..
// $a37b referenced 1 time by $a366
ca37b
    sty l0e04                                                         // a37b: 8c 04 0e    ...
    bvs ca389                                                         // a37e: 70 09       p.
    tya                                                               // a380: 98          .
    jsr sub_cb509                                                     // a381: 20 09 b5     ..
    sta l1074                                                         // a384: 8d 74 10    .t.
    beq ca38e                                                         // a387: f0 05       ..
// $a389 referenced 1 time by $a37e
ca389
    lda #$32 // '2'                                                   // a389: a9 32       .2
// $a38b referenced 2 times by $a329, $a354
ca38b
    sta l1060,x                                                       // a38b: 9d 60 10    .`.
// $a38e referenced 3 times by $a325, $a350, $a387
ca38e
    jmp c8f8c                                                         // a38e: 4c 8c 8f    L..

sub_ca391
    jsr sub_cb559                                                     // a391: 20 59 b5     Y.
    sec                                                               // a394: 38          8
    lda l0f08                                                         // a395: ad 08 0f    ...
    sta l0e05                                                         // a398: 8d 05 0e    ...
sub_ca39b
    php                                                               // a39b: 08          .
    ldy l0f05                                                         // a39c: ac 05 0f    ...
    jsr sub_ca300                                                     // a39f: 20 00 a3     ..
    ldy l0f06                                                         // a3a2: ac 06 0f    ...
    jsr sub_ca32b                                                     // a3a5: 20 2b a3     +.
    ldy l0f07                                                         // a3a8: ac 07 0f    ...
    jsr sub_ca362                                                     // a3ab: 20 62 a3     b.
    plp                                                               // a3ae: 28          (
    bcs ca3b4                                                         // a3af: b0 03       ..
    jmp c9cc7                                                         // a3b1: 4c c7 9c    L..

// $a3b4 referenced 1 time by $a3af
ca3b4
    lda l1071                                                         // a3b4: ad 71 10    .q.
    tax                                                               // a3b7: aa          .
    and #4                                                            // a3b8: 29 04       ).
    php                                                               // a3ba: 08          .
    txa                                                               // a3bb: 8a          .
    and #$fb                                                          // a3bc: 29 fb       ).
    sta l1071                                                         // a3be: 8d 71 10    .q.
    plp                                                               // a3c1: 28          (
    bne ca3e3                                                         // a3c2: d0 1f       ..
    lda #osbyte_scan_keyboard                                         // a3c4: a9 79       .y
    ldx #(255 - inkey_key_ctrl) ^ 128                                 // a3c6: a2 81       ..             // X=internal key number EOR 128
    jsr osbyte                                                        // a3c8: 20 f4 ff     ..            // Test for 'CTRL' key pressed (X=129)
    txa                                                               // a3cb: 8a          .              // X has top bit set if 'CTRL' pressed
    bpl ca3e3                                                         // a3cc: 10 15       ..
// $a3ce referenced 1 time by $a3e6
loop_ca3ce
    rts                                                               // a3ce: 60          `

    .asc "L.!BOOT"                                                    // a3cf: 4c 2e 21... L.!
    .byt $0d                                                          // a3d6: 0d          .
    .asc "E.!BOOT"                                                    // a3d7: 45 2e 21... E.!
    .byt $0d                                                          // a3de: 0d          .
// $a3df referenced 1 time by $a3e8
la3df
    .byt $de, $cf, $d1, $d7                                           // a3df: de cf d1... ...

// $a3e3 referenced 2 times by $a3c2, $a3cc
ca3e3
    ldy l0e05                                                         // a3e3: ac 05 0e    ...
    beq loop_ca3ce                                                    // a3e6: f0 e6       ..
// $a3e8 referenced 1 time by $a28e
ca3e8
    ldx la3df,y                                                       // a3e8: be df a3    ...
    ldy #$a3                                                          // a3eb: a0 a3       ..
    jmp oscli                                                         // a3ed: 4c f7 ff    L..

// $a3f0 referenced 12 times by $8bae, $8bbd, $8bc5, $8bd2, $8c00, $8c07, $932a, $9332, $a145, $a14a, $a15a, $a191
la3f0
la3f1 = la3f0+1
la3f2 = la3f0+2
    .asc "Close"                                                      // a3f0: 43 6c 6f... Clo
// $a3f1 referenced 3 times by $8c93, $a13b, $b326
// $a3f2 referenced 3 times by $8c8f, $a137, $b353
    .byt $80                                                          // a3f5: 80          .
    .word sub_cb994-1                                                 // a3f6: 93 b9       ..
    .asc "Dump"                                                       // a3f8: 44 75 6d... Dum
    .byt $c4                                                          // a3fc: c4          .
    .word sub_cba1b-1                                                 // a3fd: 1a ba       ..
    .asc "Net"                                                        // a3ff: 4e 65 74    Net
    .byt $80                                                          // a402: 80          .
    .word sub_c8b1a-1                                                 // a403: 19 8b       ..
    .asc "Pollps"                                                     // a405: 50 6f 6c... Pol
    .byt $88                                                          // a40b: 88          .
    .word sub_cb1c3-1                                                 // a40c: c2 b1       ..
    .asc "Print"                                                      // a40e: 50 72 69... Pri
    .byt $cc                                                          // a413: cc          .
    .word sub_cb99d-1                                                 // a414: 9c b9       ..
    .asc "Prot"                                                       // a416: 50 72 6f... Pro
    .byt $8e                                                          // a41a: 8e          .
    .word sub_cb30c-1                                                 // a41b: 0b b3       ..
    .asc "PS"                                                         // a41d: 50 53       PS
    .byt $88                                                          // a41f: 88          .
    .word sub_cafee-1                                                 // a420: ed af       ..
    .asc "Roff"                                                       // a422: 52 6f 66... Rof
    .byt $80                                                          // a426: 80          .
    .word sub_c8ad4-1                                                 // a427: d3 8a       ..
    .asc "Type"                                                       // a429: 54 79 70... Typ
    .byt $cc                                                          // a42d: cc          .
    .word sub_cb99a-1                                                 // a42e: 99 b9       ..
    .asc "Unprot"                                                     // a430: 55 6e 70... Unp
    .byt $8e                                                          // a436: 8e          .
    .word sub_cb33d-1                                                 // a437: 3c b3       <.
    .byt $80                                                          // a439: 80          .
    .asc "Access"                                                     // a43a: 41 63 63... Acc
    .byt $c9                                                          // a440: c9          .
    .word sub_c92e6-1                                                 // a441: e5 92       ..
    .asc "Bye"                                                        // a443: 42 79 65    Bye
    .byt $80                                                          // a446: 80          .
    .word sub_c949e-1                                                 // a447: 9d 94       ..
    .asc "Cdir"                                                       // a449: 43 64 69... Cdi
    .byt $c6                                                          // a44d: c6          .
    .word sub_cad10-1                                                 // a44e: 0f ad       ..
    .asc "Delete"                                                     // a450: 44 65 6c... Del
    .byt $c3                                                          // a456: c3          .
    .word sub_c92e6-1                                                 // a457: e5 92       ..
    .asc "Dir"                                                        // a459: 44 69 72    Dir
    .byt $81                                                          // a45c: 81          .
    .word sub_c93dd-1                                                 // a45d: dc 93       ..
    .asc "Ex"                                                         // a45f: 45 78       Ex
    .byt $81                                                          // a461: 81          .
    .word sub_cad6b-1                                                 // a462: 6a ad       j.
    .asc "Flip"                                                       // a464: 46 6c 69... Fli
    .byt $80                                                          // a468: 80          .
    .word sub_ca356-1                                                 // a469: 55 a3       U.
    .asc "FS"                                                         // a46b: 46 53       FS
    .byt $8b                                                          // a46d: 8b          .
    .word sub_ca07b-1                                                 // a46e: 7a a0       z.
    .asc "Info"                                                       // a470: 49 6e 66... Inf
    .byt $c3                                                          // a474: c3          .
    .word sub_c92e6-1                                                 // a475: e5 92       ..
// $a477 referenced 1 time by $8daf
la477
    .asc "I am"                                                       // a477: 49 20 61... I a
    .byt $c2                                                          // a47b: c2          .
    .word sub_c8d79-1                                                 // a47c: 78 8d       x.
    .asc "Lcat"                                                       // a47e: 4c 63 61... Lca
    .byt $81                                                          // a482: 81          .
    .word sub_cad5f-1                                                 // a483: 5e ad       ^.
    .asc "Lex"                                                        // a485: 4c 65 78    Lex
    .byt $81                                                          // a488: 81          .
    .word sub_cad65-1                                                 // a489: 64 ad       d.
    .asc "Lib"                                                        // a48b: 4c 69 62    Lib
    .byt $c5                                                          // a48e: c5          .
    .word sub_c92e6-1                                                 // a48f: e5 92       ..
    .asc "Pass"                                                       // a491: 50 61 73... Pas
    .byt $c7                                                          // a495: c7          .
    .word c8dbc-1                                                     // a496: bb 8d       ..
    .asc "Remove"                                                     // a498: 52 65 6d... Rem
    .byt $c3                                                          // a49e: c3          .
    .word sub_caf66-1                                                 // a49f: 65 af       e.
    .asc "Rename"                                                     // a4a1: 52 65 6e... Ren
    .byt $ca                                                          // a4a7: ca          .
    .word sub_c938b-1                                                 // a4a8: 8a 93       ..
    .asc "Wipe"                                                       // a4aa: 57 69 70... Wip
    .byt $81                                                          // a4ae: 81          .
    .word sub_cb359-1                                                 // a4af: 58 b3       X.
    .byt $80                                                          // a4b1: 80          .
    .word c8e15-1                                                     // a4b2: 14 8e       ..
    .asc "Net"                                                        // a4b4: 4e 65 74    Net
    .byt $80                                                          // a4b7: 80          .
    .word sub_c8b96-1                                                 // a4b8: 95 8b       ..
    .asc "Utils"                                                      // a4ba: 55 74 69... Uti
    .byt $80                                                          // a4bf: 80          .
    .word sub_c8b92-1                                                 // a4c0: 91 8b       ..
    .byt $80                                                          // a4c2: 80          .
    .asc "Halt"                                                       // a4c3: 48 61 6c... Hal
    .byt $fc, $20, $df                                                // a4c7: fc 20 df    . .
    .asc "JSR"                                                        // a4ca: 4a 53 52    JSR
    .byt $fc,   4, $fb                                                // a4cd: fc 04 fb    ...
    .asc "Peek"                                                       // a4d0: 50 65 65... Pee
    .byt $fc,   1, $fe                                                // a4d4: fc 01 fe    ...
    .asc "Poke"                                                       // a4d7: 50 6f 6b... Pok
    .byt $fc,   2, $fd                                                // a4db: fc 02 fd    ...
    .asc "Proc"                                                       // a4de: 50 72 6f... Pro
    .byt $fc,   8, $f7                                                // a4e2: fc 08 f7    ...
    .asc "Utils"                                                      // a4e5: 55 74 69... Uti
    .byt $a9, $10, $ef, $80                                           // a4ea: a9 10 ef... ...

sub_ca4ee
    clc                                                               // a4ee: 18          .
    lda l00ef                                                         // a4ef: a5 ef       ..
    sbc #$0d                                                          // a4f1: e9 0d       ..
    bmi ca522                                                         // a4f3: 30 2d       0-
    cmp #7                                                            // a4f5: c9 07       ..
    bcs ca522                                                         // a4f7: b0 29       .)
    tax                                                               // a4f9: aa          .
    ldy #6                                                            // a4fa: a0 06       ..
// $a4fc referenced 1 time by $a507
loop_ca4fc
    lda l00a9,y                                                       // a4fc: b9 a9 00    ...
    pha                                                               // a4ff: 48          H
    lda l00ed,y                                                       // a500: b9 ed 00    ...
    sta l00a9,y                                                       // a503: 99 a9 00    ...
    dey                                                               // a506: 88          .
    bne loop_ca4fc                                                    // a507: d0 f3       ..
    jsr sub_ca516                                                     // a509: 20 16 a5     ..
    ldy #$fa                                                          // a50c: a0 fa       ..
// $a50e referenced 1 time by $a513
loop_ca50e
    pla                                                               // a50e: 68          h
    sta lffb0,y                                                       // a50f: 99 b0 ff    ...
    iny                                                               // a512: c8          .
    bne loop_ca50e                                                    // a513: d0 f9       ..
    rts                                                               // a515: 60          `

// $a516 referenced 1 time by $a509
sub_ca516
    lda la52a,x                                                       // a516: bd 2a a5    .*.
    pha                                                               // a519: 48          H
    lda la523,x                                                       // a51a: bd 23 a5    .#.
    pha                                                               // a51d: 48          H
    lda (l00ac),y                                                     // a51e: b1 ac       ..
    sty l00a9                                                         // a520: 84 a9       ..
// $a522 referenced 2 times by $a4f3, $a4f7
ca522
    rts                                                               // a522: 60          `

// $a523 referenced 1 time by $a51a
la523
    .byt $30, $21, $a3, $c0, $18, $2d, $c4                            // a523: 30 21 a3... 0!.
// $a52a referenced 1 time by $a516
la52a
    .byt $a5, $a5, $a5, $a5, $a6, $a6, $a8, $2c, $6c, $0d, $10,   8   // a52a: a5 a5 a5... ...
    .byt $c9,   4, $f0,   5, $a9,   8, $85, $a9, $60, $a2,   0, $a0   // a536: c9 04 f0... ...
    .byt $10, $20, $ad, $94, $ad,   9, $0f, $20, $95, $a5, $8d, $0b   // a542: 10 20 ad... . .
    .byt $0f, $ad,   8, $0f, $20, $95, $a5, $8d, $0a, $0f, $ad,   7   // a54e: 0f ad 08... ...
    .byt $0f, $20, $95, $a5, $8d,   9, $0f, $a9,   0, $8d,   8, $0f   // a55a: 0f 20 95... . .
    .byt $ad,   6, $0f, $48, $ad,   5, $0f, $20, $95, $a5, $8d,   7   // a566: ad 06 0f... ...
    .byt $0f                                                          // a572: 0f          .
    .asc "hH)"                                                        // a573: 68 48 29    hH)
    .byt $0f, $20, $95, $a5, $8d,   6, $0f                            // a576: 0f 20 95... . .
    .asc "hJJJJiQ "                                                   // a57d: 68 4a 4a... hJJ
    .byt $95, $a5, $8d,   5, $0f, $a0,   6, $b9,   5, $0f, $91, $ac   // a585: 95 a5 8d... ...
    .byt $88, $10, $f8, $60,   8, $aa, $f0,   9, $f8, $a9,   0, $18   // a591: 88 10 f8... ...
    .byt $69,   1, $ca, $d0, $fa, $28, $60, $0e, $60, $0d, $98, $b0   // a59d: 69 01 ca... i..
    .byt   3, $91, $ac, $60, $a5, $9d, $85, $ab, $85, $a1, $a9, $6f   // a5a9: 03 91 ac... ...
    .byt $85, $aa, $85, $a0, $a2, $0f, $20, $f8, $a6, $4c, $8c, $85   // a5b5: 85 aa 85... ...
    .byt $a6, $9f, $86, $ab, $84, $aa, $6e, $61, $0d, $a8, $85, $ae   // a5c1: a6 9f 86... ...
    .byt $d0, $1b, $a9,   3, $20, $ce, $a0, $b0                       // a5cd: d0 1b a9... ...
    .asc "=JJ"                                                        // a5d5: 3d 4a 4a    =JJ
    .byt $aa, $b1, $aa, $f0, $36, $c9, $3f, $f0,   4, $e8, $8a, $d0   // a5d8: aa b1 aa... ...
    .byt $ec, $8a, $a2,   0, $81, $ac, $20, $ce, $a0, $b0, $24, $88   // a5e4: ec 8a a2... ...
    .byt $84, $aa, $a9, $c0, $a0,   1, $a2, $0b, $c4, $ae, $71, $aa   // a5f0: 84 aa a9... ...
    .byt $f0,   3, $30, $0e, $18, $20, $f8, $a6, $b0, $0f, $a9, $3f   // a5fc: f0 03 30... ..0
    .byt $a0,   1, $91, $aa, $d0,   7, $69,   1, $d0, $ee, $88, $91   // a608: a0 01 91... ...
    .byt $ac, $2e, $61, $0d, $60, $a5, $9d, $85, $ab, $a0, $7f, $b1   // a614: ac 2e 61... ..a
    .byt $9c, $c8, $84, $aa, $aa, $ca, $a0,   0, $20, $f8, $a6, $4c   // a620: 9c c8 84... ...
    .byt $dd, $ac, $aa, $c9, $13, $b0,   8, $bd, $4e, $a6, $48, $bd   // a62c: dd ac aa... ...
    .byt $3c, $a6                                                     // a638: 3c a6       <.
    .asc "H`_r"                                                       // a63a: 48 60 5f... H`_
    .byt   6, $12                                                     // a63e: 06 12       ..
    .asc "'-3C"                                                       // a640: 27 2d 33... '-3
    .byt $e3, $ec, $fa,   1, $e7, $ea,   6, $0e, $19, $24, $a6, $a6   // a644: e3 ec fa... ...
    .byt $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a7, $a8, $a6, $a6   // a650: a7 a7 a7... ...
    .byt $a8, $a8, $a8, $a8, $2c, $6c, $0d, $30,   3, $4c, $49, $a7   // a65c: a8 a8 a8... ...
    .byt $a0,   2, $b9, $ff, $0d, $91, $f0, $88, $d0, $f8             // a668: a0 02 b9... ...
    .asc "`,l"                                                        // a672: 60 2c 6c    `,l
    .byt $0d, $10, $ed, $a0,   0, $20, $99, $b7, $a0,   2, $b1, $f0   // a675: 0d 10 ed... ...
    .byt $99, $ff, $0d, $88, $d0, $f8, $20,   9, $8e, $a2, $0f, $bd   // a681: 99 ff 0d... ...
    .byt $60, $10, $a8, $29,   2, $f0, $50, $98, $29, $df, $9d, $60   // a68d: 60 10 a8... `..
    .byt $10, $a8, $20, $86, $b5, $d0, $44, $18, $98, $29,   4, $f0   // a699: 10 a8 20... ..
    .byt $10, $98,   9, $20, $a8, $bd, $30, $10, $8d,   2, $0e, $8a   // a6a5: 10 98 09... ...
    .byt $69, $20, $8d, $72, $10, $98, $29,   8, $f0, $10, $98,   9   // a6b1: 69 20 8d... i .
    .byt $20, $a8, $bd, $30, $10, $8d,   3, $0e, $8a, $69, $20, $8d   // a6bd: 20 a8 bd...  ..
    .byt $73, $10, $98, $29, $10, $f0, $10, $98,   9, $20, $a8, $bd   // a6c9: 73 10 98... s..
    .byt $30, $10, $8d,   4, $0e, $8a, $69, $20, $8d, $74, $10, $98   // a6d5: 30 10 8d... 0..
    .byt $9d, $60, $10, $ca, $10, $a5, $60, $18, $90,   1, $38, $a9   // a6e1: 9d 60 10... .`.
    .byt $17, $85, $aa, $a5, $9d, $85, $ab, $a0,   1, $a2,   5, $90   // a6ed: 17 85 aa... ...
    .byt   4, $b1, $ac, $91, $aa, $b1, $aa, $91, $ac, $c8, $ca, $10   // a6f9: 04 b1 ac... ...
    .byt $f2, $60, $a5, $9f, $85, $ab, $c8, $98, $85, $aa, $aa, $18   // a705: f2 60 a5... .`.
    .byt $90, $e5, $c8, $b1, $ac, $c8, $91, $9e, $b1, $ac, $c8, $91   // a711: 90 e5 c8... ...
    .byt $9e, $20, $65, $a8, $51, $9e, $d0,   2, $91, $9e, $60, $ad   // a71d: 9e 20 65... . e
    .byt $68, $0d, $4c, $fe, $a7, $c8, $b1, $ac, $4c, $36, $b3, $2c   // a729: 68 0d 4c... h.L
    .byt $6c, $0d, $10, $10, $a0,   3, $b9, $71, $10, $91, $ac, $88   // a735: 6c 0d 10... l..
    .byt $d0, $f8                                                     // a741: d0 f8       ..
    .asc "`,l"                                                        // a743: 60 2c 6c    `,l
    .byt $0d, $30,   6, $a9,   0, $a8, $91, $ac, $60, $a0,   1, $b1   // a746: 0d 30 06... .0.
    .byt $ac, $c9, $20, $90, $0a, $c9, $30, $b0,   6, $aa, $bd, $10   // a752: ac c9 20... ..
    .byt $10, $d0,   7, $a9,   0, $aa, $81, $ac, $f0, $26, $bd, $40   // a75e: 10 d0 07... ...
    .byt $10, $29,   2, $f0, $f2, $8a, $99, $71, $10, $bd, $10, $10   // a76a: 10 29 02... .).
    .byt $99,   1, $0e, $c0,   1, $d0, $18, $98, $48, $a0,   4, $20   // a776: 99 01 0e... ...
    .byt $bf, $a7, $68, $a8, $bd, $40, $10,   9, $24, $9d, $40, $10   // a782: bf a7 68... ..h
    .byt $c8, $c0,   4, $d0, $be, $88, $60, $c0,   2, $d0, $13, $98   // a78e: c8 c0 04... ...
    .byt $48, $a0,   8, $20, $bf, $a7, $68, $a8, $bd, $40, $10,   9   // a79a: 48 a0 08... H..
    .byt $28, $9d, $40, $10, $d0, $e2, $98, $48, $a0, $10, $20, $bf   // a7a6: 28 9d 40... (.@
    .byt $a7, $68, $a8, $bd, $40, $10,   9, $30, $9d, $40, $10, $d0   // a7b2: a7 68 a8... .h.
    .byt $cf, $8a, $48, $a2, $0f, $bd, $60, $10, $2a, $2a, $10, $14   // a7be: cf 8a 48... ..H
    .byt $98, $3d, $60, $10, $f0,   5, $98,   9, $20, $d0,   1, $98   // a7ca: 98 3d 60... .=`
    .byt $49, $ff, $3d, $60, $10, $9d, $60, $10, $ca, $10, $e2, $68   // a7d6: 49 ff 3d... I.=
    .byt $aa, $60, $a0,   1, $b1, $9c, $a0,   0, $4c, $fe, $a7, $a0   // a7e2: aa 60 a0... .`.
    .byt $7f, $b1, $9c, $a0,   1, $91, $ac, $c8, $a9, $80, $91, $ac   // a7ee: 7f b1 9c... ...
    .byt $60, $ad,   9, $0e, $c8, $91, $ac, $60, $ad,   8, $0e, $10   // a7fa: 60 ad 09... `..
    .byt $f7, $a9, $6f, $38, $ed, $6b, $0d, $b0, $ef, $c8, $b9, $6c   // a806: f7 a9 6f... ..o
    .byt $0d, $91, $ac, $c0,   3, $d0, $f6, $60, $c8, $b1, $ac, $99   // a812: 0d 91 ac... ...
    .byt $6c, $0d, $c0,   3, $d0, $f6                                 // a81e: 6c 0d c0... l..
    .asc "` e"                                                        // a824: 60 20 65    ` e
    .byt $a8, $a0,   0, $ad, $71, $0d, $c9, $ff, $d0,   6, $98, $91   // a827: a8 a0 00... ...
    .byt $ac, $c8, $d0, $13, $c8, $91, $ac, $c8, $c8, $b1, $ac, $f0   // a833: ac c8 d0... ...
    .byt   7, $4d                                                     // a83f: 07 4d       .M
// $a841 referenced 1 time by $a875
la841
    .byt $71, $0d, $d0,   7, $f0,   3, $ad,   1, $0e, $91, $ac, $60   // a841: 71 0d d0... q..
// $a84d referenced 1 time by $a87a
la84d
    .byt $82, $9c, $ff, $ff                                           // a84d: 82 9c ff... ...
    .asc "BRIDGE"                                                     // a851: 42 52 49... BRI
    .byt $9c,   0, $7f, $9c,   0,   0, $71, $0d, $ff, $ff, $73, $0d   // a857: 9c 00 7f... ...
    .byt $ff, $ff                                                     // a863: ff ff       ..

// $a865 referenced 2 times by $8e09, $a0b4
sub_ca865
    lda l0d71                                                         // a865: ad 71 0d    .q.
    cmp #$ff                                                          // a868: c9 ff       ..
    bne ca8c4                                                         // a86a: d0 58       .X
    tya                                                               // a86c: 98          .
    pha                                                               // a86d: 48          H
    ldy #$18                                                          // a86e: a0 18       ..
    ldx #$0b                                                          // a870: a2 0b       ..
    ror l0d61                                                         // a872: 6e 61 0d    na.
// $a875 referenced 1 time by $a881
loop_ca875
    lda la841,y                                                       // a875: b9 41 a8    .A.
    sta (l009e),y                                                     // a878: 91 9e       ..
    lda la84d,x                                                       // a87a: bd 4d a8    .M.
    sta l00c0,x                                                       // a87d: 95 c0       ..
    iny                                                               // a87f: c8          .
    dex                                                               // a880: ca          .
    bpl loop_ca875                                                    // a881: 10 f2       ..
    stx l0d71                                                         // a883: 8e 71 0d    .q.
    rol l0d61                                                         // a886: 2e 61 0d    .a.
// $a889 referenced 2 times by $a88c, $a8b3
ca889
    asl l0d60                                                         // a889: 0e 60 0d    .`.
    bcc ca889                                                         // a88c: 90 fb       ..
    lda #$82                                                          // a88e: a9 82       ..
    sta l00c0                                                         // a890: 85 c0       ..
    lda #$c0                                                          // a892: a9 c0       ..
    sta l00a0                                                         // a894: 85 a0       ..
    lda #0                                                            // a896: a9 00       ..
    sta l00a1                                                         // a898: 85 a1       ..
    jsr sub_c858c                                                     // a89a: 20 8c 85     ..
// $a89d referenced 1 time by $a89f
loop_ca89d
    bit l00c0                                                         // a89d: 24 c0       $.
    bmi loop_ca89d                                                    // a89f: 30 fc       0.
    txa                                                               // a8a1: 8a          .
    pha                                                               // a8a2: 48          H
    lda #osbyte_vsync                                                 // a8a3: a9 13       ..
    jsr osbyte                                                        // a8a5: 20 f4 ff     ..            // Wait for vertical sync
    pla                                                               // a8a8: 68          h
    tax                                                               // a8a9: aa          .
    ldy #$18                                                          // a8aa: a0 18       ..
    lda (l009e),y                                                     // a8ac: b1 9e       ..
    bmi ca8b5                                                         // a8ae: 30 05       0.
    jsr sub_cbc86                                                     // a8b0: 20 86 bc     ..
    bpl ca889                                                         // a8b3: 10 d4       ..
// $a8b5 referenced 1 time by $a8ae
ca8b5
    lda #$3f // '?'                                                   // a8b5: a9 3f       .?
    sta (l009e),y                                                     // a8b7: 91 9e       ..
    pla                                                               // a8b9: 68          h
    tay                                                               // a8ba: a8          .
    lda l0d71                                                         // a8bb: ad 71 0d    .q.
    tax                                                               // a8be: aa          .
    eor #$ff                                                          // a8bf: 49 ff       I.
    beq ca8c4                                                         // a8c1: f0 01       ..
    txa                                                               // a8c3: 8a          .
// $a8c4 referenced 2 times by $a86a, $a8c1
ca8c4
    rts                                                               // a8c4: 60          `

    .byt $c9,   1, $b0                                                // a8c5: c9 01 b0    ...
    .asc "l,l"                                                        // a8c8: 6c 2c 6c    l,l
    .byt $0d, $10, $f6, $a0                                           // a8cb: 0d 10 f6... ...
    .asc "# 2"                                                        // a8cf: 23 20 32    # 2
    .byt $af, $b9, $73, $94, $d0,   3, $b9, $e6, $0d, $91, $9e, $88   // a8d2: af b9 73... ..s
    .byt $c0, $17, $d0, $f1, $c8, $84, $9a, $a0, $1c, $a5, $ac, $69   // a8de: c0 17 d0... ...
    .byt   1, $20, $2b, $a9, $a0,   1, $b1, $ac, $a0, $20, $65, $ac   // a8ea: 01 20 2b... . +
    .byt $20, $2b, $a9, $a0,   2, $a9, $90, $85, $98, $91, $ac, $c8   // a8f6: 20 2b a9...  +.
    .byt $c8, $b9, $fe, $0d, $91, $ac, $c8, $c0,   7, $d0, $f6, $a5   // a902: c8 b9 fe... ...
    .byt $9f, $85, $9b, $20, $76, $a9, $a0, $20, $a9, $ff, $91, $9e   // a90e: 9f 85 9b... ...
    .byt $c8, $91, $9e, $a0, $19, $a9, $90, $91, $9e, $88, $a9, $7f   // a91a: c8 91 9e... ...
    .byt $91, $9e, $4c, $dd, $95, $91, $9e, $c8, $a5, $ad, $69,   0   // a926: 91 9e 4c... ..L
    .byt $91, $9e, $60,   8, $a0,   1, $b1, $ac, $aa, $c8, $b1, $ac   // a932: 91 9e 60... ..`
    .byt $c8, $84, $aa, $a0, $72, $91, $9c, $88, $8a, $91, $9c, $28   // a93e: c8 84 aa... ...
    .byt $d0, $1f, $a4, $aa, $e6, $aa, $b1, $ac, $f0, $16, $a0, $7d   // a94a: d0 1f a4... ...
    .byt $91, $9c                                                     // a956: 91 9c       ..
    .asc "H |"                                                        // a958: 48 20 7c    H |
    .byt $aa, $38, $66, $98, $20, $76, $a9, $ca, $d0, $fd, $68, $49   // a95b: aa 38 66... .8f
    .byt $0d, $d0, $e2                                                // a967: 0d d0 e2    ...
    .asc "` |"                                                        // a96a: 60 20 7c    ` |
    .byt $aa, $a0, $7b, $b1, $9c, $69,   3, $91, $9c                  // a96d: aa a0 7b... ..{
    .asc "XL?"                                                        // a976: 58 4c 3f    XL?
    .byt $98,   8, $48, $8a, $48, $98, $48, $ba, $bd,   3,   1, $c9   // a979: 98 08 48... ..H
    .byt   9, $b0,   4, $aa, $20, $93, $a9, $68, $a8, $68, $aa        // a985: 09 b0 04... ...
    .asc "h(`"                                                        // a990: 68 28 60    h(`
    .byt $bd, $a7, $a9, $48, $bd, $9e, $a9, $48, $a5, $ef, $60, $57   // a993: bd a7 a9... ...
    .byt $ec, $ec, $ec, $af, $d7, $57, $e1, $50, $8e, $aa, $aa, $aa   // a99f: ec ec ec... ...
    .byt $a9, $aa, $8e, $a9, $aa, $ba, $7e,   6,   1, $1e,   6,   1   // a9ab: a9 aa 8e... ...
    .byt $98, $a0, $da, $91, $9e, $a9,   0                            // a9b7: 98 a0 da... ...

// $a9be referenced 1 time by $8ae7
sub_ca9be
    ldy #$d9                                                          // a9be: a0 d9       ..
    sta (l009e),y                                                     // a9c0: 91 9e       ..
    lda #$80                                                          // a9c2: a9 80       ..
    ldy #$0c                                                          // a9c4: a0 0c       ..
    sta (l009e),y                                                     // a9c6: 91 9e       ..
    lda l009a                                                         // a9c8: a5 9a       ..
    pha                                                               // a9ca: 48          H
    lda l009b                                                         // a9cb: a5 9b       ..
    pha                                                               // a9cd: 48          H
    sty l009a                                                         // a9ce: 84 9a       ..
    ldx l009f                                                         // a9d0: a6 9f       ..
    stx l009b                                                         // a9d2: 86 9b       ..
    jsr sub_c983f                                                     // a9d4: 20 3f 98     ?.
    lda #$3f // '?'                                                   // a9d7: a9 3f       .?
    sta (l009a,x)                                                     // a9d9: 81 9a       ..
    pla                                                               // a9db: 68          h
    sta l009b                                                         // a9dc: 85 9b       ..
    pla                                                               // a9de: 68          h
    sta l009a                                                         // a9df: 85 9a       ..
    rts                                                               // a9e1: 60          `

    .byt $a4, $f1, $c9, $81, $f0, $13, $a0,   1, $a2, $0a, $20, $36   // a9e2: a4 f1 c9... ...
    .byt $aa, $f0, $0a, $88, $88, $a2, $11, $20, $36, $aa, $f0,   1   // a9ee: aa f0 0a... ...
    .byt $c8, $a2,   2, $98, $f0, $35,   8, $10,   1, $e8, $a0, $dc   // a9fa: c8 a2 02... ...
    .byt $b9, $15,   0, $91, $9e, $88, $c0, $da, $10, $f6, $8a, $20   // aa06: b9 15 00... ...
    .byt $be, $a9, $28, $10, $1e, $a9, $7f, $a0, $0c, $91, $9e, $b1   // aa12: be a9 28... ..(
    .byt $9e, $10, $fc, $ba, $a0, $dd, $b1, $9e,   9, $44, $d0,   4   // aa1e: 9e 10 fc... ...
    .byt $88, $ca, $b1, $9e, $9d,   6,   1, $c0, $da, $d0, $f5, $60   // aa2a: 88 ca b1... ...
    .byt $dd, $3f, $aa, $f0,   3, $ca, $10, $f8, $60,   4,   9, $0a   // aa36: dd 3f aa... .?.
    .byt $14, $15, $9a, $9b, $e1, $e2, $e3, $e4, $0b, $0c, $0f, $79   // aa42: 14 15 9a... ...
    .byt $7a, $86, $87, $a0, $0e, $c9,   7, $f0,   4, $c9,   8, $d0   // aa4e: 7a 86 87... z..
    .byt $e3, $a2, $db, $86, $9e, $b1, $f0, $91, $9e, $88, $10, $f9   // aa5a: e3 a2 db... ...
    .byt $c8, $c6, $9e, $a5, $ef, $91, $9e, $84, $9e, $a0, $14, $a9   // aa66: c8 c6 9e... ...
    .byt $e9, $91, $9e, $a9,   1, $20, $be, $a9, $86, $9e, $a2, $0d   // aa72: e9 91 9e... ...
    .byt $a0, $7c, $2c, $91, $94, $70,   5                            // aa7e: a0 7c 2c... .|,

// $aa85 referenced 1 time by $95a2
sub_caa85
    ldy #$17                                                          // aa85: a0 17       ..
    ldx #$1a                                                          // aa87: a2 1a       ..
// $aa89 referenced 1 time by $ab4a
sub_caa89
    clv                                                               // aa89: b8          .
// $aa8a referenced 1 time by $aaab
caa8a
    lda laab1,x                                                       // aa8a: bd b1 aa    ...
    cmp #$fe                                                          // aa8d: c9 fe       ..
    beq caaad                                                         // aa8f: f0 1c       ..
    cmp #$fd                                                          // aa91: c9 fd       ..
    beq caaa9                                                         // aa93: f0 14       ..
    cmp #$fc                                                          // aa95: c9 fc       ..
    bne caaa1                                                         // aa97: d0 08       ..
    lda l009d                                                         // aa99: a5 9d       ..
    bvs caa9f                                                         // aa9b: 70 02       p.
    lda l009f                                                         // aa9d: a5 9f       ..
// $aa9f referenced 1 time by $aa9b
caa9f
    sta l009b                                                         // aa9f: 85 9b       ..
// $aaa1 referenced 1 time by $aa97
caaa1
    bvs caaa7                                                         // aaa1: 70 04       p.
    sta (l009e),y                                                     // aaa3: 91 9e       ..
    bvc caaa9                                                         // aaa5: 50 02       P.
// $aaa7 referenced 1 time by $aaa1
caaa7
    sta (l009c),y                                                     // aaa7: 91 9c       ..
// $aaa9 referenced 2 times by $aa93, $aaa5
caaa9
    dey                                                               // aaa9: 88          .
    dex                                                               // aaaa: ca          .
    bpl caa8a                                                         // aaab: 10 dd       ..
// $aaad referenced 1 time by $aa8f
caaad
    iny                                                               // aaad: c8          .
    sty l009a                                                         // aaae: 84 9a       ..
    rts                                                               // aab0: 60          `

// $aab1 referenced 1 time by $aa8a
laab1
    .byt $85,   0, $fd, $fd, $7d, $fc, $ff, $ff, $7e, $fc, $ff, $ff   // aab1: 85 00 fd... ...
    .byt   0,   0, $fe, $80, $93, $fd, $fd, $d9, $fc, $ff, $ff, $de   // aabd: 00 00 fe... ...
    .byt $fc, $ff, $ff, $fe, $d1, $fd, $fd, $21, $fd, $ff, $ff, $fd   // aac9: fc ff ff... ...
    .byt $fd, $ff, $ff, $ca, $e4, $f0, $d0, $0f, $a5, $d0, $6a, $b0   // aad5: fd ff ff... ...
    .byt $0a                                                          // aae1: 0a          .

// $aae2 referenced 2 times by $8f27, $ab33
caae2
    lda #$21 // '!'                                                   // aae2: a9 21       .!
    sta l0d6b                                                         // aae4: 8d 6b 0d    .k.
    lda #$41 // 'A'                                                   // aae7: a9 41       .A
    sta l0d6a                                                         // aae9: 8d 6a 0d    .j.
    rts                                                               // aaec: 60          `

    .byt $c0,   4, $d0, $fb, $8a, $ca, $d0, $26, $ba, $1d,   6,   1   // aaed: c0 04 d0... ...
    .byt $9d,   6,   1, $a9, $91, $a2,   3, $20, $f4, $ff, $b0, $e7   // aaf9: 9d 06 01... ...
    .byt $98, $20, $12, $ab, $c0, $6e, $90, $ef, $20, $36, $ab, $90   // ab05: 98 20 12... . .
    .byt $ea                                                          // ab11: ea          .

// $ab12 referenced 2 times by $ab2d, $abe4
sub_cab12
    ldy l0d6b                                                         // ab12: ac 6b 0d    .k.
    sta (l009c),y                                                     // ab15: 91 9c       ..
    inc l0d6b                                                         // ab17: ee 6b 0d    .k.
    rts                                                               // ab1a: 60          `

// $ab1b referenced 1 time by $8f5a
sub_cab1b
    ror                                                               // ab1b: 6a          j
    bcc cab75                                                         // ab1c: 90 57       .W
    lda l0d6a                                                         // ab1e: ad 6a 0d    .j.
    pha                                                               // ab21: 48          H
    ror                                                               // ab22: 6a          j
    pla                                                               // ab23: 68          h
    bcs cab33                                                         // ab24: b0 0d       ..
    ora #3                                                            // ab26: 09 03       ..
    sta l0d6a                                                         // ab28: 8d 6a 0d    .j.
    lda #3                                                            // ab2b: a9 03       ..
    jsr sub_cab12                                                     // ab2d: 20 12 ab     ..
    jsr cab36                                                         // ab30: 20 36 ab     6.
// $ab33 referenced 1 time by $ab24
cab33
    jmp caae2                                                         // ab33: 4c e2 aa    L..

// $ab36 referenced 3 times by $ab30, $ab79, $abe7
cab36
    ldy #8                                                            // ab36: a0 08       ..
    lda l0d6b                                                         // ab38: ad 6b 0d    .k.
    sta (l009e),y                                                     // ab3b: 91 9e       ..
    lda l009d                                                         // ab3d: a5 9d       ..
    iny                                                               // ab3f: c8          .
    sta (l009e),y                                                     // ab40: 91 9e       ..
    ldy #5                                                            // ab42: a0 05       ..
    sta (l009e),y                                                     // ab44: 91 9e       ..
    ldy #$0b                                                          // ab46: a0 0b       ..
    ldx #$26 // '&'                                                   // ab48: a2 26       .&
    jsr sub_caa89                                                     // ab4a: 20 89 aa     ..
    dey                                                               // ab4d: 88          .
    lda l0d6a                                                         // ab4e: ad 6a 0d    .j.
    pha                                                               // ab51: 48          H
    rol                                                               // ab52: 2a          *
    pla                                                               // ab53: 68          h
    eor #$80                                                          // ab54: 49 80       I.
    sta l0d6a                                                         // ab56: 8d 6a 0d    .j.
    rol                                                               // ab59: 2a          *
    sta (l009e),y                                                     // ab5a: 91 9e       ..
    lda l00d0                                                         // ab5c: a5 d0       ..
    pha                                                               // ab5e: 48          H
    and #$fe                                                          // ab5f: 29 fe       ).
    sta l00d0                                                         // ab61: 85 d0       ..
    ldy #$21 // '!'                                                   // ab63: a0 21       .!
    sty l0d6b                                                         // ab65: 8c 6b 0d    .k.
    lda #0                                                            // ab68: a9 00       ..
    tax                                                               // ab6a: aa          .
    ldy l009f                                                         // ab6b: a4 9f       ..
    cli                                                               // ab6d: 58          X
    jsr sub_cac24                                                     // ab6e: 20 24 ac     $.
    pla                                                               // ab71: 68          h
    sta l00d0                                                         // ab72: 85 d0       ..
    rts                                                               // ab74: 60          `

// $ab75 referenced 1 time by $ab1c
cab75
    lda l0d6a                                                         // ab75: ad 6a 0d    .j.
    ror                                                               // ab78: 6a          j
    bcc cab36                                                         // ab79: 90 bb       ..
    lda l00d0                                                         // ab7b: a5 d0       ..
    pha                                                               // ab7d: 48          H
    and #$fe                                                          // ab7e: 29 fe       ).
    sta l00d0                                                         // ab80: 85 d0       ..
    lda #$14                                                          // ab82: a9 14       ..
// $ab84 referenced 1 time by $abf8
cab84
    pha                                                               // ab84: 48          H
    ldx #$0b                                                          // ab85: a2 0b       ..
    ldy #$2c // ','                                                   // ab87: a0 2c       .,
// $ab89 referenced 1 time by $ab90
loop_cab89
    lda lac80,x                                                       // ab89: bd 80 ac    ...
    sta (l009c),y                                                     // ab8c: 91 9c       ..
    dey                                                               // ab8e: 88          .
    dex                                                               // ab8f: ca          .
    bpl loop_cab89                                                    // ab90: 10 f7       ..
    stx l0098                                                         // ab92: 86 98       ..
    ldy #2                                                            // ab94: a0 02       ..
    lda (l009e),y                                                     // ab96: b1 9e       ..
    pha                                                               // ab98: 48          H
    iny                                                               // ab99: c8          .
    lda (l009e),y                                                     // ab9a: b1 9e       ..
    ldy #$24 // '$'                                                   // ab9c: a0 24       .$
    sta (l009c),y                                                     // ab9e: 91 9c       ..
    dey                                                               // aba0: 88          .
    pla                                                               // aba1: 68          h
    sta (l009c),y                                                     // aba2: 91 9c       ..
    ldx #$0b                                                          // aba4: a2 0b       ..
    ldy #$0b                                                          // aba6: a0 0b       ..
// $aba8 referenced 1 time by $abb9
loop_caba8
    lda lac8c,x                                                       // aba8: bd 8c ac    ...
    cmp #$fd                                                          // abab: c9 fd       ..
    beq cabb7                                                         // abad: f0 08       ..
    cmp #$fc                                                          // abaf: c9 fc       ..
    bne cabb5                                                         // abb1: d0 02       ..
    lda l009d                                                         // abb3: a5 9d       ..
// $abb5 referenced 1 time by $abb1
cabb5
    sta (l009e),y                                                     // abb5: 91 9e       ..
// $abb7 referenced 1 time by $abad
cabb7
    dey                                                               // abb7: 88          .
    dex                                                               // abb8: ca          .
    bpl loop_caba8                                                    // abb9: 10 ed       ..
    lda #$21 // '!'                                                   // abbb: a9 21       .!
    sta l009a                                                         // abbd: 85 9a       ..
    lda l009d                                                         // abbf: a5 9d       ..
    sta l009b                                                         // abc1: 85 9b       ..
    jsr sub_c989c                                                     // abc3: 20 9c 98     ..
    jsr sub_c983f                                                     // abc6: 20 3f 98     ?.
    lda #0                                                            // abc9: a9 00       ..
    sta l009a                                                         // abcb: 85 9a       ..
    lda l009f                                                         // abcd: a5 9f       ..
    sta l009b                                                         // abcf: 85 9b       ..
    jsr sub_c95dd                                                     // abd1: 20 dd 95     ..
    ldy #$2d // '-'                                                   // abd4: a0 2d       .-
    lda (l009c),y                                                     // abd6: b1 9c       ..
    beq cabde                                                         // abd8: f0 04       ..
    cmp #3                                                            // abda: c9 03       ..
    bne cabf3                                                         // abdc: d0 15       ..
// $abde referenced 1 time by $abd8
cabde
    pla                                                               // abde: 68          h
    pla                                                               // abdf: 68          h
    sta l00d0                                                         // abe0: 85 d0       ..
    lda #0                                                            // abe2: a9 00       ..
    jsr sub_cab12                                                     // abe4: 20 12 ab     ..
    jsr cab36                                                         // abe7: 20 36 ab     6.
    lda l0d6a                                                         // abea: ad 6a 0d    .j.
    and #$f0                                                          // abed: 29 f0       ).
    sta l0d6a                                                         // abef: 8d 6a 0d    .j.
    rts                                                               // abf2: 60          `

// $abf3 referenced 1 time by $abdc
cabf3
    tax                                                               // abf3: aa          .
    pla                                                               // abf4: 68          h
    sec                                                               // abf5: 38          8
    sbc #1                                                            // abf6: e9 01       ..
    bne cab84                                                         // abf8: d0 8a       ..
    cpx #1                                                            // abfa: e0 01       ..
    bne cac10                                                         // abfc: d0 12       ..
// $abfe referenced 1 time by $aff5
cabfe
    lda #$a6                                                          // abfe: a9 a6       ..
    jsr generate_error_inline3                                        // ac00: 20 d1 96     ..
    .asc "Printer busy", 0                                            // ac03: 50 72 69... Pri

// $ac10 referenced 1 time by $abfc
cac10
    lda #$a7                                                          // ac10: a9 a7       ..
    jsr generate_error_inline3                                        // ac12: 20 d1 96     ..
    .asc "Printer jammed", 0                                          // ac15: 50 72 69... Pri

// $ac24 referenced 3 times by $9509, $ab6e, $b951
sub_cac24
    stx l009a                                                         // ac24: 86 9a       ..
    sty l009b                                                         // ac26: 84 9b       ..
    pha                                                               // ac28: 48          H
    ora #0                                                            // ac29: 09 00       ..
    beq cac4a                                                         // ac2b: f0 1d       ..
    ldx #$ff                                                          // ac2d: a2 ff       ..
    tay                                                               // ac2f: a8          .
// $ac30 referenced 2 times by $ac39, $ac43
cac30
    tya                                                               // ac30: 98          .
    inx                                                               // ac31: e8          .
    cmp l1030,x                                                       // ac32: dd 30 10    .0.
    beq cac3f                                                         // ac35: f0 08       ..
    cpx #$0f                                                          // ac37: e0 0f       ..
    bne cac30                                                         // ac39: d0 f5       ..
    lda #0                                                            // ac3b: a9 00       ..
    beq cac4a                                                         // ac3d: f0 0b       ..
// $ac3f referenced 1 time by $ac35
cac3f
    tay                                                               // ac3f: a8          .
    jsr sub_cb586                                                     // ac40: 20 86 b5     ..
    bne cac30                                                         // ac43: d0 eb       ..
    lda l1060,x                                                       // ac45: bd 60 10    .`.
    and #1                                                            // ac48: 29 01       ).
// $ac4a referenced 2 times by $ac2b, $ac3d
cac4a
    ldy #0                                                            // ac4a: a0 00       ..
    ora (l009a),y                                                     // ac4c: 11 9a       ..
    pha                                                               // ac4e: 48          H
    sta (l009a),y                                                     // ac4f: 91 9a       ..
    jsr sub_c983f                                                     // ac51: 20 3f 98     ?.
    lda #$ff                                                          // ac54: a9 ff       ..
    ldy #8                                                            // ac56: a0 08       ..
    sta (l009a),y                                                     // ac58: 91 9a       ..
    iny                                                               // ac5a: c8          .
    sta (l009a),y                                                     // ac5b: 91 9a       ..
    pla                                                               // ac5d: 68          h
    tax                                                               // ac5e: aa          .
    ldy #$d1                                                          // ac5f: a0 d1       ..
    pla                                                               // ac61: 68          h
    pha                                                               // ac62: 48          H
    beq cac67                                                         // ac63: f0 02       ..
    ldy #$90                                                          // ac65: a0 90       ..
// $ac67 referenced 1 time by $ac63
cac67
    tya                                                               // ac67: 98          .
    ldy #1                                                            // ac68: a0 01       ..
    sta (l009a),y                                                     // ac6a: 91 9a       ..
    txa                                                               // ac6c: 8a          .
    dey                                                               // ac6d: 88          .
    pha                                                               // ac6e: 48          H
// $ac6f referenced 1 time by $ac7b
loop_cac6f
    lda #$7f                                                          // ac6f: a9 7f       ..
    sta (l009a),y                                                     // ac71: 91 9a       ..
    jsr sub_c95dd                                                     // ac73: 20 dd 95     ..
    pla                                                               // ac76: 68          h
    pha                                                               // ac77: 48          H
    eor (l009a),y                                                     // ac78: 51 9a       Q.
    ror                                                               // ac7a: 6a          j
    bcs loop_cac6f                                                    // ac7b: b0 f2       ..
    pla                                                               // ac7d: 68          h
    pla                                                               // ac7e: 68          h
    rts                                                               // ac7f: 60          `

// $ac80 referenced 1 time by $ab89
lac80
    .byt $80, $9f,   0,   0, $59, $8e, $ff, $ff, $61, $8e, $ff, $ff   // ac80: 80 9f 00... ...
// $ac8c referenced 1 time by $aba8
lac8c
    .byt $7f, $9e, $fd, $fd, $2d, $fc, $ff, $ff, $30, $fc, $ff, $ff   // ac8c: 7f 9e fd... ...

sub_cac98
    lda l00aa                                                         // ac98: a5 aa       ..
    pha                                                               // ac9a: 48          H
    lda #$e9                                                          // ac9b: a9 e9       ..
    sta l009e                                                         // ac9d: 85 9e       ..
    ldy #0                                                            // ac9f: a0 00       ..
    sty l00aa                                                         // aca1: 84 aa       ..
    lda l0350                                                         // aca3: ad 50 03    .P.
    sta (l009e),y                                                     // aca6: 91 9e       ..
    inc l009e                                                         // aca8: e6 9e       ..
    lda l0351                                                         // acaa: ad 51 03    .Q.
    pha                                                               // acad: 48          H
    tya                                                               // acae: 98          .
// $acaf referenced 1 time by $acce
loop_cacaf
    sta (l009e),y                                                     // acaf: 91 9e       ..
    ldx l009e                                                         // acb1: a6 9e       ..
    ldy l009f                                                         // acb3: a4 9f       ..
    lda #osword_read_palette                                          // acb5: a9 0b       ..
    jsr osword                                                        // acb7: 20 f1 ff     ..            // Read palette
    pla                                                               // acba: 68          h
    ldy #0                                                            // acbb: a0 00       ..
    sta (l009e),y                                                     // acbd: 91 9e       ..
    iny                                                               // acbf: c8          .
    lda (l009e),y                                                     // acc0: b1 9e       ..
    pha                                                               // acc2: 48          H
    ldx l009e                                                         // acc3: a6 9e       ..
    inc l009e                                                         // acc5: e6 9e       ..
    inc l00aa                                                         // acc7: e6 aa       ..
    dey                                                               // acc9: 88          .
    lda l00aa                                                         // acca: a5 aa       ..
    cpx #$f9                                                          // accc: e0 f9       ..
    bne loop_cacaf                                                    // acce: d0 df       ..
    pla                                                               // acd0: 68          h
    sty l00aa                                                         // acd1: 84 aa       ..
    inc l009e                                                         // acd3: e6 9e       ..
    jsr sub_cace4                                                     // acd5: 20 e4 ac     ..
    inc l009e                                                         // acd8: e6 9e       ..
    pla                                                               // acda: 68          h
    sta l00aa                                                         // acdb: 85 aa       ..
// $acdd referenced 3 times by $9586, $95ae, $95d5
cacdd
    lda l0d69                                                         // acdd: ad 69 0d    .i.
    sta l0d68                                                         // ace0: 8d 68 0d    .h.
    rts                                                               // ace3: 60          `

// $ace4 referenced 1 time by $acd5
sub_cace4
    lda l0355                                                         // ace4: ad 55 03    .U.
    sta (l009e),y                                                     // ace7: 91 9e       ..
    ldx l0355                                                         // ace9: ae 55 03    .U.
    jsr sub_cacf9                                                     // acec: 20 f9 ac     ..
    inc l009e                                                         // acef: e6 9e       ..
    tya                                                               // acf1: 98          .
    sta (l009e,x)                                                     // acf2: 81 9e       ..
    jsr sub_cacf7                                                     // acf4: 20 f7 ac     ..
// $acf7 referenced 1 time by $acf4
sub_cacf7
    ldx #0                                                            // acf7: a2 00       ..
// $acf9 referenced 1 time by $acec
sub_cacf9
    ldy l00aa                                                         // acf9: a4 aa       ..
    inc l00aa                                                         // acfb: e6 aa       ..
    inc l009e                                                         // acfd: e6 9e       ..
    lda lad0d,y                                                       // acff: b9 0d ad    ...
    ldy #$ff                                                          // ad02: a0 ff       ..
    jsr osbyte                                                        // ad04: 20 f4 ff     ..
    txa                                                               // ad07: 8a          .
    ldx #0                                                            // ad08: a2 00       ..
    sta (l009e,x)                                                     // ad0a: 81 9e       ..
    rts                                                               // ad0c: 60          `

// $ad0d referenced 1 time by $acff
lad0d
    .byt $84, $c2, $c3                                                // ad0d: 84 c2 c3    ...

sub_cad10
    tya                                                               // ad10: 98          .
    pha                                                               // ad11: 48          H
    jsr sub_caf32                                                     // ad12: 20 32 af     2.
    jsr sub_cafc1                                                     // ad15: 20 c1 af     ..
    cmp #$0d                                                          // ad18: c9 0d       ..
    bne cad20                                                         // ad1a: d0 04       ..
    ldx #2                                                            // ad1c: a2 02       ..
    bne cad2f                                                         // ad1e: d0 0f       ..
// $ad20 referenced 1 time by $ad1a
cad20
    lda #$ff                                                          // ad20: a9 ff       ..
    sta l00b4                                                         // ad22: 85 b4       ..
    jsr sub_c916e                                                     // ad24: 20 6e 91     n.
    ldx #$1b                                                          // ad27: a2 1b       ..
// $ad29 referenced 1 time by $ad2d
loop_cad29
    dex                                                               // ad29: ca          .
    cmp lad43,x                                                       // ad2a: dd 43 ad    .C.
    bcc loop_cad29                                                    // ad2d: 90 fa       ..
// $ad2f referenced 1 time by $ad1e
cad2f
    stx l0f05                                                         // ad2f: 8e 05 0f    ...
    pla                                                               // ad32: 68          h
    tay                                                               // ad33: a8          .
    jsr sub_cafb5                                                     // ad34: 20 b5 af     ..
    jsr sub_cae94                                                     // ad37: 20 94 ae     ..
    ldx #1                                                            // ad3a: a2 01       ..
    jsr sub_caf04                                                     // ad3c: 20 04 af     ..
    ldy #$1b                                                          // ad3f: a0 1b       ..
sub_cad41
lad43 = sub_cad41+2
    jmp c94ad                                                         // ad41: 4c ad 94    L..

// $ad43 referenced 1 time by $ad2a
    .byt   0, $0a, $14, $1d                                           // ad44: 00 0a 14... ...
    .asc "'1;EOXblv"                                                  // ad48: 27 31 3b... '1;
    .byt $80, $8a, $94, $9d, $a7, $b1, $bb, $c5, $cf, $d8, $e2, $ec   // ad51: 80 8a 94... ...
    .byt $f6, $ff                                                     // ad5d: f6 ff       ..

sub_cad5f
    ror l1071                                                         // ad5f: 6e 71 10    nq.
    sec                                                               // ad62: 38          8
    bcs cad89                                                         // ad63: b0 24       .$
sub_cad65
    ror l1071                                                         // ad65: 6e 71 10    nq.
    sec                                                               // ad68: 38          8
    bcs cad6f                                                         // ad69: b0 04       ..
sub_cad6b
    ror l1071                                                         // ad6b: 6e 71 10    nq.
    clc                                                               // ad6e: 18          .
// $ad6f referenced 1 time by $ad69
cad6f
    rol l1071                                                         // ad6f: 2e 71 10    .q.
    lda #$ff                                                          // ad72: a9 ff       ..
    sta l00ba                                                         // ad74: 85 ba       ..
    lda #1                                                            // ad76: a9 01       ..
    sta l00b7                                                         // ad78: 85 b7       ..
    lda #3                                                            // ad7a: a9 03       ..
    sta l00b5                                                         // ad7c: 85 b5       ..
    bne cad96                                                         // ad7e: d0 16       ..
sub_cad80
    jsr sub_c9295                                                     // ad80: 20 95 92     ..
    ldy #0                                                            // ad83: a0 00       ..
    ror l1071                                                         // ad85: 6e 71 10    nq.
    clc                                                               // ad88: 18          .
// $ad89 referenced 1 time by $ad63
cad89
    rol l1071                                                         // ad89: 2e 71 10    .q.
    lda #3                                                            // ad8c: a9 03       ..
    sta l00ba                                                         // ad8e: 85 ba       ..
    sta l00b7                                                         // ad90: 85 b7       ..
    lda #$0b                                                          // ad92: a9 0b       ..
    sta l00b5                                                         // ad94: 85 b5       ..
// $ad96 referenced 1 time by $ad7e
cad96
    jsr sub_cafb5                                                     // ad96: 20 b5 af     ..
    lda #$ff                                                          // ad99: a9 ff       ..
    sta l0098                                                         // ad9b: 85 98       ..
    lda #6                                                            // ad9d: a9 06       ..
    sta l0f05                                                         // ad9f: 8d 05 0f    ...
    jsr sub_cae94                                                     // ada2: 20 94 ae     ..
    ldx #1                                                            // ada5: a2 01       ..
    jsr sub_caf04                                                     // ada7: 20 04 af     ..
    lda l1071                                                         // adaa: ad 71 10    .q.
    lsr                                                               // adad: 4a          J
    bcc cadb2                                                         // adae: 90 02       ..
    ora #$40 // '@'                                                   // adb0: 09 40       .@
// $adb2 referenced 1 time by $adae
cadb2
    rol                                                               // adb2: 2a          *
    sta l1071                                                         // adb3: 8d 71 10    .q.
    ldy #$12                                                          // adb6: a0 12       ..
    jsr c94ad                                                         // adb8: 20 ad 94     ..
    ldx #3                                                            // adbb: a2 03       ..
    jsr sub_cae82                                                     // adbd: 20 82 ae     ..
    jsr print_inline_top_bit_clear                                    // adc0: 20 45 91     E.
    .asc "("                                                          // adc3: 28          (

    lda l0f13                                                         // adc4: ad 13 0f    ...
    jsr caf88                                                         // adc7: 20 88 af     ..
    jsr print_inline_top_bit_clear                                    // adca: 20 45 91     E.
    .asc ")     "                                                     // adcd: 29 20 20... )

    ldy l0f12                                                         // add3: ac 12 0f    ...
    bne cade3                                                         // add6: d0 0b       ..
    jsr print_inline_top_bit_clear                                    // add8: 20 45 91     E.
    .asc "Owner", $0d                                                 // addb: 4f 77 6e... Own

    bne caded                                                         // ade1: d0 0a       ..
// $ade3 referenced 1 time by $add6
cade3
    jsr print_inline_top_bit_clear                                    // ade3: 20 45 91     E.
    .asc "Public", $0d                                                // ade6: 50 75 62... Pub

// $aded referenced 1 time by $ade1
caded
    lda l1071                                                         // aded: ad 71 10    .q.
    pha                                                               // adf0: 48          H
    jsr sub_caf32                                                     // adf1: 20 32 af     2.
    ldy #$15                                                          // adf4: a0 15       ..
    jsr c94ad                                                         // adf6: 20 ad 94     ..
    inx                                                               // adf9: e8          .
    ldy #$10                                                          // adfa: a0 10       ..
    jsr cae84                                                         // adfc: 20 84 ae     ..
    jsr print_inline_top_bit_clear                                    // adff: 20 45 91     E.
    .asc "    Option "                                                // ae02: 20 20 20...

    lda l0e05                                                         // ae0d: ad 05 0e    ...
    tax                                                               // ae10: aa          .
    jsr sub_c912f                                                     // ae11: 20 2f 91     /.
    jsr print_inline_top_bit_clear                                    // ae14: 20 45 91     E.
    .asc " ("                                                         // ae17: 20 28        (

    ldy laefb,x                                                       // ae19: bc fb ae    ...
// $ae1c referenced 1 time by $ae25
loop_cae1c
    lda laeff,y                                                       // ae1c: b9 ff ae    ...
    bmi cae27                                                         // ae1f: 30 06       0.
    jsr osasci                                                        // ae21: 20 e3 ff     ..            // Write character
    iny                                                               // ae24: c8          .
    bne loop_cae1c                                                    // ae25: d0 f5       ..
// $ae27 referenced 1 time by $ae1f
cae27
    jsr print_inline_top_bit_clear                                    // ae27: 20 45 91     E.
    .asc ")", $0d, "Dir. "                                            // ae2a: 29 0d 44... ).D

    ldx #$11                                                          // ae31: a2 11       ..
    jsr sub_cae82                                                     // ae33: 20 82 ae     ..
    jsr print_inline_top_bit_clear                                    // ae36: 20 45 91     E.
    .asc "     Lib. "                                                 // ae39: 20 20 20...

    ldx #$1b                                                          // ae43: a2 1b       ..
    jsr sub_cae82                                                     // ae45: 20 82 ae     ..
    jsr osnewl                                                        // ae48: 20 e7 ff     ..            // Write newline (characters 10 and 13)
    pla                                                               // ae4b: 68          h
    sta l1071                                                         // ae4c: 8d 71 10    .q.
// $ae4f referenced 1 time by $ae80
cae4f
    sty l0f06                                                         // ae4f: 8c 06 0f    ...
    sty l00b4                                                         // ae52: 84 b4       ..
    ldx l00b5                                                         // ae54: a6 b5       ..
    stx l0f07                                                         // ae56: 8e 07 0f    ...
    ldx l00b7                                                         // ae59: a6 b7       ..
    stx l0f05                                                         // ae5b: 8e 05 0f    ...
    ldx #3                                                            // ae5e: a2 03       ..
    jsr sub_caf04                                                     // ae60: 20 04 af     ..
    ldy #3                                                            // ae63: a0 03       ..
    jsr c94ad                                                         // ae65: 20 ad 94     ..
    inx                                                               // ae68: e8          .
    lda l0f05                                                         // ae69: ad 05 0f    ...
    beq cae8f                                                         // ae6c: f0 21       .!
    pha                                                               // ae6e: 48          H
// $ae6f referenced 1 time by $ae73
loop_cae6f
    iny                                                               // ae6f: c8          .
    lda l0f05,y                                                       // ae70: b9 05 0f    ...
    bpl loop_cae6f                                                    // ae73: 10 fa       ..
    sta l0f04,y                                                       // ae75: 99 04 0f    ...
    jsr sub_caf47                                                     // ae78: 20 47 af     G.
    pla                                                               // ae7b: 68          h
    clc                                                               // ae7c: 18          .
    adc l00b4                                                         // ae7d: 65 b4       e.
    tay                                                               // ae7f: a8          .
    bne cae4f                                                         // ae80: d0 cd       ..
// $ae82 referenced 3 times by $adbd, $ae33, $ae45
sub_cae82
    ldy #$0a                                                          // ae82: a0 0a       ..
// $ae84 referenced 2 times by $adfc, $ae8c
cae84
    lda l0f05,x                                                       // ae84: bd 05 0f    ...
    jsr osasci                                                        // ae87: 20 e3 ff     ..            // Write character
    inx                                                               // ae8a: e8          .
    dey                                                               // ae8b: 88          .
    bne cae84                                                         // ae8c: d0 f6       ..
    rts                                                               // ae8e: 60          `

// $ae8f referenced 1 time by $ae6c
cae8f
    jmp osnewl                                                        // ae8f: 4c e7 ff    L..            // Write newline (characters 10 and 13)

// $ae92 referenced 1 time by $a1c7
sub_cae92
    ldy #0                                                            // ae92: a0 00       ..
// $ae94 referenced 4 times by $ad37, $ada2, $af77, $b363
sub_cae94
    jsr sub_c9913                                                     // ae94: 20 13 99     ..
// $ae97 referenced 3 times by $92ee, $9396, $93cf
sub_cae97
    lda l0e30                                                         // ae97: ad 30 0e    .0.
    eor #$26 // '&'                                                   // ae9a: 49 26       I&
    bne caee2                                                         // ae9c: d0 44       .D
    lda l1071                                                         // ae9e: ad 71 10    .q.
    ora #$40 // '@'                                                   // aea1: 09 40       .@
    sta l1071                                                         // aea3: 8d 71 10    .q.
    jsr caeb7                                                         // aea6: 20 b7 ae     ..
    lda l0e30                                                         // aea9: ad 30 0e    .0.
    eor #$2e // '.'                                                   // aeac: 49 2e       I.
    bne caedb                                                         // aeae: d0 2b       .+
    lda l0e31                                                         // aeb0: ad 31 0e    .1.
    eor #$0d                                                          // aeb3: 49 0d       I.
    beq caedf                                                         // aeb5: f0 28       .(
// $aeb7 referenced 5 times by $931c, $93b6, $93bc, $aea6, $aef9
caeb7
    txa                                                               // aeb7: 8a          .
    pha                                                               // aeb8: 48          H
    ldx #$ff                                                          // aeb9: a2 ff       ..
// $aebb referenced 1 time by $aec4
loop_caebb
    inx                                                               // aebb: e8          .
    lda l0e31,x                                                       // aebc: bd 31 0e    .1.
    sta l0e30,x                                                       // aebf: 9d 30 0e    .0.
    eor #$0d                                                          // aec2: 49 0d       I.
    bne loop_caebb                                                    // aec4: d0 f5       ..
    txa                                                               // aec6: 8a          .
    beq caed8                                                         // aec7: f0 0f       ..
// $aec9 referenced 1 time by $aed6
loop_caec9
    lda l0e2f,x                                                       // aec9: bd 2f 0e    ./.
    eor #$20 // ' '                                                   // aecc: 49 20       I
    bne caed8                                                         // aece: d0 08       ..
    lda #$0d                                                          // aed0: a9 0d       ..
    sta l0e2f,x                                                       // aed2: 9d 2f 0e    ./.
    dex                                                               // aed5: ca          .
    bne loop_caec9                                                    // aed6: d0 f1       ..
// $aed8 referenced 2 times by $aec7, $aece
caed8
    pla                                                               // aed8: 68          h
    tax                                                               // aed9: aa          .
// $aeda referenced 3 times by $aedd, $aee4, $aeef
caeda
    rts                                                               // aeda: 60          `

// $aedb referenced 1 time by $aeae
caedb
    eor #$23 // '#'                                                   // aedb: 49 23       I#
    beq caeda                                                         // aedd: f0 fb       ..
// $aedf referenced 2 times by $aeb5, $af12
caedf
    jmp c92fa                                                         // aedf: 4c fa 92    L..

// $aee2 referenced 1 time by $ae9c
caee2
    eor #$1c                                                          // aee2: 49 1c       I.
    bne caeda                                                         // aee4: d0 f4       ..
    lda l0e32                                                         // aee6: ad 32 0e    .2.
    eor #$2e // '.'                                                   // aee9: 49 2e       I.
    beq caef1                                                         // aeeb: f0 04       ..
    eor #$23 // '#'                                                   // aeed: 49 23       I#
    bne caeda                                                         // aeef: d0 e9       ..
// $aef1 referenced 1 time by $aeeb
caef1
    lda l1071                                                         // aef1: ad 71 10    .q.
    ora #$40 // '@'                                                   // aef4: 09 40       .@
    sta l1071                                                         // aef6: 8d 71 10    .q.
    bne caeb7                                                         // aef9: d0 bc       ..
// $aefb referenced 1 time by $ae19
laefb
    .byt 0                                                            // aefb: 00          .
    .asc $2f, "<c"                                                    // aefc: 2f 3c 63    /<c
// $aeff referenced 1 time by $ae1c
laeff
    .asc "Off"                                                        // aeff: 4f 66 66    Off

// $af02 referenced 5 times by $8dbc, $8e20, $9b3c, $a299, $af7a
sub_caf02
    ldx #0                                                            // af02: a2 00       ..
// $af04 referenced 9 times by $99fe, $9b35, $9b58, $a1cc, $a1f9, $ad3c, $ada7, $ae60, $b378
sub_caf04
    ldy #0                                                            // af04: a0 00       ..
// $af06 referenced 3 times by $8db7, $941e, $9454
sub_caf06
    sec                                                               // af06: 38          8
// $af07 referenced 1 time by $af1a
loop_caf07
    lda (l00be),y                                                     // af07: b1 be       ..
    sta l0f05,x                                                       // af09: 9d 05 0f    ...
    bcc caf16                                                         // af0c: 90 08       ..
    cmp #$21 // '!'                                                   // af0e: c9 21       .!
    eor #$26 // '&'                                                   // af10: 49 26       I&
    beq caedf                                                         // af12: f0 cb       ..
    eor #$26 // '&'                                                   // af14: 49 26       I&
// $af16 referenced 1 time by $af0c
caf16
    inx                                                               // af16: e8          .
    iny                                                               // af17: c8          .
    eor #$0d                                                          // af18: 49 0d       I.
    bne loop_caf07                                                    // af1a: d0 eb       ..
// $af1c referenced 1 time by $af29
loop_caf1c
    lda l0f03,x                                                       // af1c: bd 03 0f    ...
    eor #$20 // ' '                                                   // af1f: 49 20       I
    bne caf2b                                                         // af21: d0 08       ..
    dex                                                               // af23: ca          .
    lda #$0d                                                          // af24: a9 0d       ..
    sta l0f04,x                                                       // af26: 9d 04 0f    ...
    bne loop_caf1c                                                    // af29: d0 f1       ..
// $af2b referenced 1 time by $af21
caf2b
    lda #0                                                            // af2b: a9 00       ..
// $af2d referenced 1 time by $af43
loop_caf2d
    rts                                                               // af2d: 60          `

    .asc "Load"                                                       // af2e: 4c 6f 61... Loa

// $af32 referenced 9 times by $8e3b, $9390, $93ca, $a1c4, $a250, $a25a, $ad12, $adf1, $b359
sub_caf32
    lda l1071                                                         // af32: ad 71 10    .q.
    and #$1f                                                          // af35: 29 1f       ).
    sta l1071                                                         // af37: 8d 71 10    .q.
    rts                                                               // af3a: 60          `

    .asc "Run"                                                        // af3b: 52 75 6e    Run

sub_caf3e
    ldx #0                                                            // af3e: a2 00       ..
// $af40 referenced 1 time by $af60
caf40
    lda l0f05,x                                                       // af40: bd 05 0f    ...
    bmi loop_caf2d                                                    // af43: 30 e8       0.
    bne caf5c                                                         // af45: d0 15       ..
// $af47 referenced 1 time by $ae78
sub_caf47
    ldy l00ba                                                         // af47: a4 ba       ..
    bmi caf5a                                                         // af49: 30 0f       0.
    iny                                                               // af4b: c8          .
    tya                                                               // af4c: 98          .
    and #3                                                            // af4d: 29 03       ).
    sta l00ba                                                         // af4f: 85 ba       ..
    beq caf5a                                                         // af51: f0 07       ..
    jsr print_inline_top_bit_clear                                    // af53: 20 45 91     E.
    .asc "  "                                                         // af56: 20 20

    bne caf5f                                                         // af58: d0 05       ..
// $af5a referenced 2 times by $af49, $af51
caf5a
    lda #$0d                                                          // af5a: a9 0d       ..
// $af5c referenced 1 time by $af45
caf5c
    jsr osasci                                                        // af5c: 20 e3 ff     ..            // Write character 13
// $af5f referenced 1 time by $af58
caf5f
    inx                                                               // af5f: e8          .
    bne caf40                                                         // af60: d0 de       ..
    eor l0078                                                         // af62: 45 78       Ex
    adc l0063                                                         // af64: 65 63       ec
sub_caf66
    tya                                                               // af66: 98          .
    pha                                                               // af67: 48          H
    jsr sub_cafc1                                                     // af68: 20 c1 af     ..
    cmp #$0d                                                          // af6b: c9 0d       ..
    beq caf72                                                         // af6d: f0 03       ..
    jmp ca127                                                         // af6f: 4c 27 a1    L'.

// $af72 referenced 1 time by $af6d
caf72
    pla                                                               // af72: 68          h
    tay                                                               // af73: a8          .
    jsr sub_cafb5                                                     // af74: 20 b5 af     ..
    jsr sub_cae94                                                     // af77: 20 94 ae     ..
    jsr sub_caf02                                                     // af7a: 20 02 af     ..
    ldy #$14                                                          // af7d: a0 14       ..
    bit l9491                                                         // af7f: 2c 91 94    ,..
    jmp c94ae                                                         // af82: 4c ae 94    L..

// $af85 referenced 1 time by $9007
sub_caf85
    bit l9491                                                         // af85: 2c 91 94    ,..
// $af88 referenced 3 times by $adc7, $b19d, $b1b4
caf88
    tay                                                               // af88: a8          .
    lda #$64 // 'd'                                                   // af89: a9 64       .d
    jsr sub_caf96                                                     // af8b: 20 96 af     ..
    lda #$0a                                                          // af8e: a9 0a       ..
    jsr sub_caf96                                                     // af90: 20 96 af     ..
    clv                                                               // af93: b8          .
    lda #1                                                            // af94: a9 01       ..
// $af96 referenced 2 times by $af8b, $af90
sub_caf96
    sta l00b8                                                         // af96: 85 b8       ..
    tya                                                               // af98: 98          .
    ldx #$2f // '/'                                                   // af99: a2 2f       ./
    sec                                                               // af9b: 38          8
    php                                                               // af9c: 08          .
// $af9d referenced 1 time by $afa0
loop_caf9d
    inx                                                               // af9d: e8          .
    sbc l00b8                                                         // af9e: e5 b8       ..
    bcs loop_caf9d                                                    // afa0: b0 fb       ..
    adc l00b8                                                         // afa2: 65 b8       e.
    tay                                                               // afa4: a8          .
    txa                                                               // afa5: 8a          .
    plp                                                               // afa6: 28          (
    bvc cafad                                                         // afa7: 50 04       P.
    cmp #$30 // '0'                                                   // afa9: c9 30       .0
    beq cafb4                                                         // afab: f0 07       ..
// $afad referenced 1 time by $afa7
cafad
    ldx l00b8                                                         // afad: a6 b8       ..
    jsr osasci                                                        // afaf: 20 e3 ff     ..            // Write character
    stx l00b8                                                         // afb2: 86 b8       ..
// $afb4 referenced 1 time by $afab
cafb4
    rts                                                               // afb4: 60          `

// $afb5 referenced 7 times by $a1c1, $ad34, $ad96, $af74, $b038, $b216, $b360
sub_cafb5
    pha                                                               // afb5: 48          H
    lda l00be                                                         // afb6: a5 be       ..
    sta os_text_ptr                                                   // afb8: 85 f2       ..
    lda l00bf                                                         // afba: a5 bf       ..
    sta l00f3                                                         // afbc: 85 f3       ..
    pla                                                               // afbe: 68          h
    rts                                                               // afbf: 60          `

// $afc0 referenced 1 time by $afcb
loop_cafc0
    iny                                                               // afc0: c8          .
// $afc1 referenced 2 times by $ad15, $af68
sub_cafc1
    lda (l00be),y                                                     // afc1: b1 be       ..
    cmp #$20 // ' '                                                   // afc3: c9 20       .
    beq cafcd                                                         // afc5: f0 06       ..
    cmp #$0d                                                          // afc7: c9 0d       ..
    beq cafd4                                                         // afc9: f0 09       ..
    bne loop_cafc0                                                    // afcb: d0 f3       ..
// $afcd referenced 2 times by $afc5, $afd2
cafcd
    iny                                                               // afcd: c8          .
    lda (l00be),y                                                     // afce: b1 be       ..
    cmp #$20 // ' '                                                   // afd0: c9 20       .
    beq cafcd                                                         // afd2: f0 f9       ..
// $afd4 referenced 1 time by $afc9
cafd4
    rts                                                               // afd4: 60          `

// $afd5 referenced 2 times by $affb, $b1d2
sub_cafd5
    pha                                                               // afd5: 48          H
    lda l00be                                                         // afd6: a5 be       ..
    sta l00bb                                                         // afd8: 85 bb       ..
    lda l00bf                                                         // afda: a5 bf       ..
    sta l00bc                                                         // afdc: 85 bc       ..
    pla                                                               // afde: 68          h
    rts                                                               // afdf: 60          `

// $afe0 referenced 2 times by $aff8, $b1c5
sub_cafe0
    tya                                                               // afe0: 98          .
    pha                                                               // afe1: 48          H
    jsr sub_c8cb9                                                     // afe2: 20 b9 8c     ..
    sta l00af                                                         // afe5: 85 af       ..
    pla                                                               // afe7: 68          h
    tay                                                               // afe8: a8          .
    lda #0                                                            // afe9: a9 00       ..
    sta l00ae                                                         // afeb: 85 ae       ..
    rts                                                               // afed: 60          `

sub_cafee
    lda #1                                                            // afee: a9 01       ..
    bit l0d6a                                                         // aff0: 2c 6a 0d    ,j.
    bne caff8                                                         // aff3: d0 03       ..
    jmp cabfe                                                         // aff5: 4c fe ab    L..

// $aff8 referenced 1 time by $aff3
caff8
    jsr sub_cafe0                                                     // aff8: 20 e0 af     ..
    jsr sub_cafd5                                                     // affb: 20 d5 af     ..
    lda (l00bb),y                                                     // affe: b1 bb       ..
    cmp #$0d                                                          // b000: c9 0d       ..
    beq cb025                                                         // b002: f0 21       .!
    clv                                                               // b004: b8          .
    jsr sub_c9258                                                     // b005: 20 58 92     X.
    bcc cb028                                                         // b008: 90 1e       ..
    tya                                                               // b00a: 98          .
    pha                                                               // b00b: 48          H
    jsr sub_cb0ea                                                     // b00c: 20 ea b0     ..
    pla                                                               // b00f: 68          h
    tay                                                               // b010: a8          .
    jsr sub_ca0a7                                                     // b011: 20 a7 a0     ..
    jmp cb0b9                                                         // b014: 4c b9 b0    L..

// $b017 referenced 1 time by $8ef9
sub_cb017
    ldy #$18                                                          // b017: a0 18       ..
// $b019 referenced 1 time by $b1f8
sub_cb019
    ldx #$f8                                                          // b019: a2 f8       ..
// $b01b referenced 1 time by $b022
loop_cb01b
    lda l8d61,x                                                       // b01b: bd 61 8d    .a.
    sta (l009c),y                                                     // b01e: 91 9c       ..
    iny                                                               // b020: c8          .
    inx                                                               // b021: e8          .
    bne loop_cb01b                                                    // b022: d0 f7       ..
    rts                                                               // b024: 60          `

// $b025 referenced 1 time by $b002
cb025
    bit l9491                                                         // b025: 2c 91 94    ,..
// $b028 referenced 1 time by $b008
cb028
    sty l00ac                                                         // b028: 84 ac       ..
    bvs cb058                                                         // b02a: 70 2c       p,
    ldx #6                                                            // b02c: a2 06       ..
    ldy #$18                                                          // b02e: a0 18       ..
    lda #$20 // ' '                                                   // b030: a9 20       .
// $b032 referenced 1 time by $b036
loop_cb032
    sta (l009c),y                                                     // b032: 91 9c       ..
    iny                                                               // b034: c8          .
    dex                                                               // b035: ca          .
    bne loop_cb032                                                    // b036: d0 fa       ..
    jsr sub_cafb5                                                     // b038: 20 b5 af     ..
    ldy l00ac                                                         // b03b: a4 ac       ..
    jsr gsinit                                                        // b03d: 20 c2 ff     ..
    beq cb058                                                         // b040: f0 16       ..
    ldx #6                                                            // b042: a2 06       ..
    sty l00ac                                                         // b044: 84 ac       ..
    ldy #$18                                                          // b046: a0 18       ..
    sty l00ad                                                         // b048: 84 ad       ..
// $b04a referenced 1 time by $b056
loop_cb04a
    ldy l00ac                                                         // b04a: a4 ac       ..
    jsr gsread                                                        // b04c: 20 c5 ff     ..
    sty l00ac                                                         // b04f: 84 ac       ..
    bcs cb058                                                         // b051: b0 05       ..
    jsr sub_cb2f7                                                     // b053: 20 f7 b2     ..
    bne loop_cb04a                                                    // b056: d0 f2       ..
// $b058 referenced 3 times by $b02a, $b040, $b051
cb058
    jsr sub_cb16d                                                     // b058: 20 6d b1     m.
    jsr sub_c983f                                                     // b05b: 20 3f 98     ?.
    jsr sub_cb0f6                                                     // b05e: 20 f6 b0     ..
    jsr sub_cb0ea                                                     // b061: 20 ea b0     ..
    lda #0                                                            // b064: a9 00       ..
    tax                                                               // b066: aa          .
    ldy #$20 // ' '                                                   // b067: a0 20       .
    sta (l009c),y                                                     // b069: 91 9c       ..
// $b06b referenced 1 time by $b097
cb06b
    pla                                                               // b06b: 68          h
    beq cb099                                                         // b06c: f0 2b       .+
    pha                                                               // b06e: 48          H
    tay                                                               // b06f: a8          .
    lda (l009e),y                                                     // b070: b1 9e       ..
    bpl cb091                                                         // b072: 10 1d       ..
    jsr sub_c9a7f                                                     // b074: 20 7f 9a     ..
    lda (l009e),y                                                     // b077: b1 9e       ..
    sta l00ae                                                         // b079: 85 ae       ..
    lda (l00ae,x)                                                     // b07b: a1 ae       ..
    beq cb083                                                         // b07d: f0 04       ..
    cmp #3                                                            // b07f: c9 03       ..
    bne cb091                                                         // b081: d0 0e       ..
// $b083 referenced 1 time by $b07d
cb083
    dey                                                               // b083: 88          .
    lda (l009e),y                                                     // b084: b1 9e       ..
    sta l00b6                                                         // b086: 85 b6       ..
    dey                                                               // b088: 88          .
    lda (l009e),y                                                     // b089: b1 9e       ..
    sta l00b5                                                         // b08b: 85 b5       ..
    ldy #$20 // ' '                                                   // b08d: a0 20       .
    sta (l009c),y                                                     // b08f: 91 9c       ..
// $b091 referenced 2 times by $b072, $b081
cb091
    pla                                                               // b091: 68          h
    tay                                                               // b092: a8          .
    lda #$3f // '?'                                                   // b093: a9 3f       .?
    sta (l009e),y                                                     // b095: 91 9e       ..
    bne cb06b                                                         // b097: d0 d2       ..
// $b099 referenced 1 time by $b06c
cb099
    jsr sub_cb0cf                                                     // b099: 20 cf b0     ..
    ldy #$20 // ' '                                                   // b09c: a0 20       .
    lda (l009c),y                                                     // b09e: b1 9c       ..
    bne cb0ae                                                         // b0a0: d0 0c       ..
    jsr print_inline_top_bit_clear                                    // b0a2: 20 45 91     E.
    .asc "still "                                                     // b0a5: 73 74 69... sti

    clv                                                               // b0ab: b8          .
    bvc cb0b6                                                         // b0ac: 50 08       P.
// $b0ae referenced 1 time by $b0a0
cb0ae
    jsr print_inline_top_bit_clear                                    // b0ae: 20 45 91     E.
    .asc "now "                                                       // b0b1: 6e 6f 77... now

    nop                                                               // b0b5: ea          .
// $b0b6 referenced 1 time by $b0ac
cb0b6
    jsr sub_ca09e                                                     // b0b6: 20 9e a0     ..
// $b0b9 referenced 1 time by $b014
cb0b9
    ldy #2                                                            // b0b9: a0 02       ..
    lda l00b5                                                         // b0bb: a5 b5       ..
    sta (l009e),y                                                     // b0bd: 91 9e       ..
    iny                                                               // b0bf: c8          .
    lda l00b6                                                         // b0c0: a5 b6       ..
    sta (l009e),y                                                     // b0c2: 91 9e       ..
    rts                                                               // b0c4: 60          `

// $b0c5 referenced 1 time by $a09b
sub_cb0c5
    jsr print_inline_top_bit_clear                                    // b0c5: 20 45 91     E.
    .asc "File"                                                       // b0c8: 46 69 6c... Fil

    clv                                                               // b0cc: b8          .
    bvc cb0da                                                         // b0cd: 50 0b       P.
// $b0cf referenced 2 times by $b099, $b240
sub_cb0cf
    jsr print_inline_top_bit_clear                                    // b0cf: 20 45 91     E.
    .asc "Printer"                                                    // b0d2: 50 72 69... Pri

    nop                                                               // b0d9: ea          .
// $b0da referenced 1 time by $b0cd
cb0da
    jsr print_inline_top_bit_clear                                    // b0da: 20 45 91     E.
    .asc " server is "                                                // b0dd: 20 73 65...  se

    nop                                                               // b0e8: ea          .
    rts                                                               // b0e9: 60          `

// $b0ea referenced 4 times by $b00c, $b061, $b1e3, $b243
sub_cb0ea
    ldy #2                                                            // b0ea: a0 02       ..
    lda (l009e),y                                                     // b0ec: b1 9e       ..
    sta l00b5                                                         // b0ee: 85 b5       ..
    iny                                                               // b0f0: c8          .
    lda (l009e),y                                                     // b0f1: b1 9e       ..
    sta l00b6                                                         // b0f3: 85 b6       ..
    rts                                                               // b0f5: 60          `

// $b0f6 referenced 2 times by $b05e, $b23d
sub_cb0f6
    pla                                                               // b0f6: 68          h
    sta l00aa                                                         // b0f7: 85 aa       ..
    pla                                                               // b0f9: 68          h
    sta l00ab                                                         // b0fa: 85 ab       ..
    lda #0                                                            // b0fc: a9 00       ..
    pha                                                               // b0fe: 48          H
    lda #$84                                                          // b0ff: a9 84       ..
    sta l00ac                                                         // b101: 85 ac       ..
    lsr l0d61                                                         // b103: 4e 61 0d    Na.
    lda #3                                                            // b106: a9 03       ..
// $b108 referenced 1 time by $b11a
loop_cb108
    jsr sub_ca0ce                                                     // b108: 20 ce a0     ..
    bcs cb144                                                         // b10b: b0 37       .7
    lsr                                                               // b10d: 4a          J
    lsr                                                               // b10e: 4a          J
    tax                                                               // b10f: aa          .
    lda (l009e),y                                                     // b110: b1 9e       ..
    beq cb144                                                         // b112: f0 30       .0
    cmp #$3f // '?'                                                   // b114: c9 3f       .?
    beq cb11c                                                         // b116: f0 04       ..
// $b118 referenced 1 time by $b141
cb118
    inx                                                               // b118: e8          .
    txa                                                               // b119: 8a          .
    bne loop_cb108                                                    // b11a: d0 ec       ..
// $b11c referenced 1 time by $b116
cb11c
    tya                                                               // b11c: 98          .
    pha                                                               // b11d: 48          H
    lda #$7f                                                          // b11e: a9 7f       ..
    sta (l009e),y                                                     // b120: 91 9e       ..
    iny                                                               // b122: c8          .
    lda #$9e                                                          // b123: a9 9e       ..
    sta (l009e),y                                                     // b125: 91 9e       ..
    lda #0                                                            // b127: a9 00       ..
    jsr sub_cb165                                                     // b129: 20 65 b1     e.
    lda l00ac                                                         // b12c: a5 ac       ..
    sta (l009e),y                                                     // b12e: 91 9e       ..
    clc                                                               // b130: 18          .
    php                                                               // b131: 08          .
    adc #3                                                            // b132: 69 03       i.
    plp                                                               // b134: 28          (
    sta l00ac                                                         // b135: 85 ac       ..
    jsr sub_cb15e                                                     // b137: 20 5e b1     ^.
    lda l00ac                                                         // b13a: a5 ac       ..
    sta (l009e),y                                                     // b13c: 91 9e       ..
sub_cb13e
lb13f = sub_cb13e+1
    jsr sub_cb15e                                                     // b13e: 20 5e b1     ^.
// $b13f referenced 1 time by $b2e2
    jmp cb118                                                         // b141: 4c 18 b1    L..

// $b144 referenced 2 times by $b10b, $b112
cb144
    asl l0d61                                                         // b144: 0e 61 0d    .a.
    lda l00ab                                                         // b147: a5 ab       ..
    pha                                                               // b149: 48          H
    lda l00aa                                                         // b14a: a5 aa       ..
    pha                                                               // b14c: 48          H
    lda #$0a                                                          // b14d: a9 0a       ..
    tay                                                               // b14f: a8          .
    tax                                                               // b150: aa          .
    sta l00b4                                                         // b151: 85 b4       ..
// $b153 referenced 3 times by $b154, $b157, $b15b
cb153
    dey                                                               // b153: 88          .
    bne cb153                                                         // b154: d0 fd       ..
    dex                                                               // b156: ca          .
    bne cb153                                                         // b157: d0 fa       ..
    dec l00b4                                                         // b159: c6 b4       ..
    bne cb153                                                         // b15b: d0 f6       ..
    rts                                                               // b15d: 60          `

// $b15e referenced 2 times by $b137, $b13e
sub_cb15e
    iny                                                               // b15e: c8          .
    lda l00af                                                         // b15f: a5 af       ..
    sta (l009e),y                                                     // b161: 91 9e       ..
    lda #$ff                                                          // b163: a9 ff       ..
// $b165 referenced 1 time by $b129
sub_cb165
    iny                                                               // b165: c8          .
    sta (l009e),y                                                     // b166: 91 9e       ..
    iny                                                               // b168: c8          .
    sta (l009e),y                                                     // b169: 91 9e       ..
    iny                                                               // b16b: c8          .
    rts                                                               // b16c: 60          `

// $b16d referenced 2 times by $b058, $b1ca
sub_cb16d
    ldy #$18                                                          // b16d: a0 18       ..
// $b16f referenced 1 time by $b175
loop_cb16f
    lda (l009c),y                                                     // b16f: b1 9c       ..
    pha                                                               // b171: 48          H
    iny                                                               // b172: c8          .
    cpy #$20 // ' '                                                   // b173: c0 20       .
    bne loop_cb16f                                                    // b175: d0 f8       ..
    ldy #$17                                                          // b177: a0 17       ..
// $b179 referenced 1 time by $b17f
loop_cb179
    pla                                                               // b179: 68          h
    sta (l009c),y                                                     // b17a: 91 9c       ..
    dey                                                               // b17c: 88          .
    cpy #$0f                                                          // b17d: c0 0f       ..
    bne loop_cb179                                                    // b17f: d0 f8       ..
    lda l009d                                                         // b181: a5 9d       ..
    sta l009b                                                         // b183: 85 9b       ..
    lda #$0c                                                          // b185: a9 0c       ..
    sta l009a                                                         // b187: 85 9a       ..
    ldy #3                                                            // b189: a0 03       ..
// $b18b referenced 1 time by $b191
loop_cb18b
    lda lb194,y                                                       // b18b: b9 94 b1    ...
    sta (l009a),y                                                     // b18e: 91 9a       ..
    dey                                                               // b190: 88          .
    bpl loop_cb18b                                                    // b191: 10 f8       ..
    rts                                                               // b193: 60          `

// $b194 referenced 1 time by $b18b
lb194
    .byt $80, $9f, $ff, $ff                                           // b194: 80 9f ff... ...

// $b198 referenced 4 times by $a0a1, $b249, $b281, $b2d1
sub_cb198
    php                                                               // b198: 08          .
    lda l00b6                                                         // b199: a5 b6       ..
    beq cb1a8                                                         // b19b: f0 0b       ..
    jsr caf88                                                         // b19d: 20 88 af     ..
    lda #$2e // '.'                                                   // b1a0: a9 2e       ..
    jsr osasci                                                        // b1a2: 20 e3 ff     ..            // Write character 46
    bit l9491                                                         // b1a5: 2c 91 94    ,..
// $b1a8 referenced 1 time by $b19b
cb1a8
    bvs cb1b1                                                         // b1a8: 70 07       p.
    jsr print_inline_top_bit_clear                                    // b1aa: 20 45 91     E.
    .asc "    "                                                       // b1ad: 20 20 20...

// $b1b1 referenced 1 time by $b1a8
cb1b1
    lda l00b5                                                         // b1b1: a5 b5       ..
    plp                                                               // b1b3: 28          (
    jmp caf88                                                         // b1b4: 4c 88 af    L..

    .byt $80, $9f,   0,   0, $10,   0, $ff, $ff, $18,   0, $ff, $ff   // b1b7: 80 9f 00... ...

sub_cb1c3
    sty l00ac                                                         // b1c3: 84 ac       ..
    jsr sub_cafe0                                                     // b1c5: 20 e0 af     ..
    sta l00b4                                                         // b1c8: 85 b4       ..
    jsr sub_cb16d                                                     // b1ca: 20 6d b1     m.
    jsr sub_cb2e0                                                     // b1cd: 20 e0 b2     ..
    ldy l00ac                                                         // b1d0: a4 ac       ..
    jsr sub_cafd5                                                     // b1d2: 20 d5 af     ..
    lda (l00bb),y                                                     // b1d5: b1 bb       ..
    cmp #$0d                                                          // b1d7: c9 0d       ..
    beq cb205                                                         // b1d9: f0 2a       .*
    clv                                                               // b1db: b8          .
    jsr sub_c9258                                                     // b1dc: 20 58 92     X.
    bcc cb208                                                         // b1df: 90 27       .'
    tya                                                               // b1e1: 98          .
    pha                                                               // b1e2: 48          H
    jsr sub_cb0ea                                                     // b1e3: 20 ea b0     ..
    pla                                                               // b1e6: 68          h
    tay                                                               // b1e7: a8          .
    jsr sub_ca0a7                                                     // b1e8: 20 a7 a0     ..
    ldy #$7a // 'z'                                                   // b1eb: a0 7a       .z
    lda l00b5                                                         // b1ed: a5 b5       ..
    sta (l00ae),y                                                     // b1ef: 91 ae       ..
    iny                                                               // b1f1: c8          .
    lda l00b6                                                         // b1f2: a5 b6       ..
    sta (l00ae),y                                                     // b1f4: 91 ae       ..
    ldy #$10                                                          // b1f6: a0 10       ..
    jsr sub_cb019                                                     // b1f8: 20 19 b0     ..
    lda l00af                                                         // b1fb: a5 af       ..
    sta l009b                                                         // b1fd: 85 9b       ..
    lda #$78 // 'x'                                                   // b1ff: a9 78       .x
    sta l009a                                                         // b201: 85 9a       ..
    bne cb236                                                         // b203: d0 31       .1
// $b205 referenced 1 time by $b1d9
cb205
    bit l9491                                                         // b205: 2c 91 94    ,..
// $b208 referenced 1 time by $b1df
cb208
    bvs cb236                                                         // b208: 70 2c       p,
    ldx #6                                                            // b20a: a2 06       ..
    ldy #$10                                                          // b20c: a0 10       ..
    lda #$20 // ' '                                                   // b20e: a9 20       .
// $b210 referenced 1 time by $b214
loop_cb210
    sta (l009c),y                                                     // b210: 91 9c       ..
    iny                                                               // b212: c8          .
    dex                                                               // b213: ca          .
    bne loop_cb210                                                    // b214: d0 fa       ..
    jsr sub_cafb5                                                     // b216: 20 b5 af     ..
    ldy l00ac                                                         // b219: a4 ac       ..
    jsr gsinit                                                        // b21b: 20 c2 ff     ..
    beq cb236                                                         // b21e: f0 16       ..
    ldx #6                                                            // b220: a2 06       ..
    sty l00ac                                                         // b222: 84 ac       ..
    ldy #$10                                                          // b224: a0 10       ..
    sty l00ad                                                         // b226: 84 ad       ..
// $b228 referenced 1 time by $b234
loop_cb228
    ldy l00ac                                                         // b228: a4 ac       ..
    jsr gsread                                                        // b22a: 20 c5 ff     ..
    sty l00ac                                                         // b22d: 84 ac       ..
    bcs cb236                                                         // b22f: b0 05       ..
    jsr sub_cb2f7                                                     // b231: 20 f7 b2     ..
    bne loop_cb228                                                    // b234: d0 f2       ..
// $b236 referenced 4 times by $b203, $b208, $b21e, $b22f
cb236
    lda #$80                                                          // b236: a9 80       ..
    sta l0098                                                         // b238: 85 98       ..
    jsr sub_c983f                                                     // b23a: 20 3f 98     ?.
    jsr sub_cb0f6                                                     // b23d: 20 f6 b0     ..
    jsr sub_cb0cf                                                     // b240: 20 cf b0     ..
    jsr sub_cb0ea                                                     // b243: 20 ea b0     ..
    bit l9491                                                         // b246: 2c 91 94    ,..
    jsr sub_cb198                                                     // b249: 20 98 b1     ..
    jsr print_inline_top_bit_clear                                    // b24c: 20 45 91     E.
    .asc " ", 34, ""                                                  // b24f: 20 22        "

    ldy #$18                                                          // b251: a0 18       ..
// $b253 referenced 1 time by $b25f
loop_cb253
    lda (l009c),y                                                     // b253: b1 9c       ..
    cmp #$20 // ' '                                                   // b255: c9 20       .
    beq cb261                                                         // b257: f0 08       ..
    jsr osasci                                                        // b259: 20 e3 ff     ..            // Write character
    iny                                                               // b25c: c8          .
    cpy #$1e                                                          // b25d: c0 1e       ..
    bne loop_cb253                                                    // b25f: d0 f2       ..
// $b261 referenced 1 time by $b257
cb261
    jsr print_inline_top_bit_clear                                    // b261: 20 45 91     E.
    .asc "", 34, "", $0d                                              // b264: 22 0d       ".

    nop                                                               // b266: ea          .
// $b267 referenced 1 time by $b2dd
cb267
    pla                                                               // b267: 68          h
    beq cb2df                                                         // b268: f0 75       .u
    pha                                                               // b26a: 48          H
    tay                                                               // b26b: a8          .
    lda (l009e),y                                                     // b26c: b1 9e       ..
    bpl cb2d7                                                         // b26e: 10 67       .g
    iny                                                               // b270: c8          .
    iny                                                               // b271: c8          .
    lda (l009e),y                                                     // b272: b1 9e       ..
    sta l00b5                                                         // b274: 85 b5       ..
    iny                                                               // b276: c8          .
    lda (l009e),y                                                     // b277: b1 9e       ..
    sta l00b6                                                         // b279: 85 b6       ..
    iny                                                               // b27b: c8          .
    lda (l009e),y                                                     // b27c: b1 9e       ..
    sta l00ae                                                         // b27e: 85 ae       ..
    clv                                                               // b280: b8          .
    jsr sub_cb198                                                     // b281: 20 98 b1     ..
    jsr print_inline_top_bit_clear                                    // b284: 20 45 91     E.
    .asc " is "                                                       // b287: 20 69 73...  is

    ldx #0                                                            // b28b: a2 00       ..
    lda (l00ae,x)                                                     // b28d: a1 ae       ..
    bne cb29c                                                         // b28f: d0 0b       ..
    jsr print_inline_top_bit_clear                                    // b291: 20 45 91     E.
    .asc "ready"                                                      // b294: 72 65 61... rea

    clv                                                               // b299: b8          .
    bvc cb2d4                                                         // b29a: 50 38       P8
// $b29c referenced 1 time by $b28f
cb29c
    cmp #2                                                            // b29c: c9 02       ..
    bne cb2ac                                                         // b29e: d0 0c       ..
// $b2a0 referenced 1 time by $b2ae
loop_cb2a0
    jsr print_inline_top_bit_clear                                    // b2a0: 20 45 91     E.
    .asc "jammed"                                                     // b2a3: 6a 61 6d... jam

    clv                                                               // b2a9: b8          .
    bvc cb2d4                                                         // b2aa: 50 28       P(
// $b2ac referenced 1 time by $b29e
cb2ac
    cmp #1                                                            // b2ac: c9 01       ..
    bne loop_cb2a0                                                    // b2ae: d0 f0       ..
    jsr print_inline_top_bit_clear                                    // b2b0: 20 45 91     E.
    .asc "busy"                                                       // b2b3: 62 75 73... bus

    inc l00ae                                                         // b2b7: e6 ae       ..
    lda (l00ae,x)                                                     // b2b9: a1 ae       ..
    sta l00b5                                                         // b2bb: 85 b5       ..
    beq cb2d4                                                         // b2bd: f0 15       ..
    jsr print_inline_top_bit_clear                                    // b2bf: 20 45 91     E.
    .asc " with "                                                     // b2c2: 20 77 69...  wi

    inc l00ae                                                         // b2c8: e6 ae       ..
    lda (l00ae,x)                                                     // b2ca: a1 ae       ..
    sta l00b6                                                         // b2cc: 85 b6       ..
    bit l9491                                                         // b2ce: 2c 91 94    ,..
    jsr sub_cb198                                                     // b2d1: 20 98 b1     ..
// $b2d4 referenced 3 times by $b29a, $b2aa, $b2bd
cb2d4
    jsr osnewl                                                        // b2d4: 20 e7 ff     ..            // Write newline (characters 10 and 13)
// $b2d7 referenced 1 time by $b26e
cb2d7
    pla                                                               // b2d7: 68          h
    tay                                                               // b2d8: a8          .
    lda #$3f // '?'                                                   // b2d9: a9 3f       .?
    sta (l009e),y                                                     // b2db: 91 9e       ..
    bne cb267                                                         // b2dd: d0 88       ..
// $b2df referenced 1 time by $b268
cb2df
    rts                                                               // b2df: 60          `

// $b2e0 referenced 1 time by $b1cd
sub_cb2e0
    ldy #$78 // 'x'                                                   // b2e0: a0 78       .x
// $b2e2 referenced 1 time by $b2f4
loop_cb2e2
    lda lb13f,y                                                       // b2e2: b9 3f b1    .?.
    cpy #$7d // '}'                                                   // b2e5: c0 7d       .}
    beq cb2ed                                                         // b2e7: f0 04       ..
    cpy #$81                                                          // b2e9: c0 81       ..
    bne cb2ef                                                         // b2eb: d0 02       ..
// $b2ed referenced 1 time by $b2e7
cb2ed
    lda l009d                                                         // b2ed: a5 9d       ..
// $b2ef referenced 1 time by $b2eb
cb2ef
    sta (l00ae),y                                                     // b2ef: 91 ae       ..
    iny                                                               // b2f1: c8          .
    cpy #$84                                                          // b2f2: c0 84       ..
    bne loop_cb2e2                                                    // b2f4: d0 ec       ..
    rts                                                               // b2f6: 60          `

// $b2f7 referenced 2 times by $b053, $b231
sub_cb2f7
    ldy l00ad                                                         // b2f7: a4 ad       ..
    and #$7f                                                          // b2f9: 29 7f       ).
    cmp #$61 // 'a'                                                   // b2fb: c9 61       .a
    bcc cb305                                                         // b2fd: 90 06       ..
    cmp #$7b // '{'                                                   // b2ff: c9 7b       .{
    bcs cb305                                                         // b301: b0 02       ..
    and #$5f // '_'                                                   // b303: 29 5f       )_
// $b305 referenced 2 times by $b2fd, $b301
cb305
    sta (l009c),y                                                     // b305: 91 9c       ..
    iny                                                               // b307: c8          .
    sty l00ad                                                         // b308: 84 ad       ..
    dex                                                               // b30a: ca          .
    rts                                                               // b30b: 60          `

sub_cb30c
    lda (l00be),y                                                     // b30c: b1 be       ..
    eor #$0d                                                          // b30e: 49 0d       I.
    bne cb316                                                         // b310: d0 04       ..
    lda #$ff                                                          // b312: a9 ff       ..
    bne cb336                                                         // b314: d0 20       .
// $b316 referenced 1 time by $b310
cb316
    lda l0d68                                                         // b316: ad 68 0d    .h.
    pha                                                               // b319: 48          H
// $b31a referenced 1 time by $b32a
loop_cb31a
    ldx #$d3                                                          // b31a: a2 d3       ..
    lda (l00be),y                                                     // b31c: b1 be       ..
    sta l00a8                                                         // b31e: 85 a8       ..
    jsr sub_ca140                                                     // b320: 20 40 a1     @.
    bcs cb32c                                                         // b323: b0 07       ..
    pla                                                               // b325: 68          h
    ora la3f1,x                                                       // b326: 1d f1 a3    ...
    pha                                                               // b329: 48          H
    bne loop_cb31a                                                    // b32a: d0 ee       ..
// $b32c referenced 2 times by $b323, $b350
cb32c
    lda l00a8                                                         // b32c: a5 a8       ..
    eor #$0d                                                          // b32e: 49 0d       I.
    beq cb335                                                         // b330: f0 03       ..
    jmp ca25d                                                         // b332: 4c 5d a2    L].

// $b335 referenced 1 time by $b330
cb335
    pla                                                               // b335: 68          h
// $b336 referenced 2 times by $b314, $b341
cb336
    sta l0d68                                                         // b336: 8d 68 0d    .h.
    sta l0d69                                                         // b339: 8d 69 0d    .i.
    rts                                                               // b33c: 60          `

sub_cb33d
    lda (l00be),y                                                     // b33d: b1 be       ..
    eor #$0d                                                          // b33f: 49 0d       I.
    beq cb336                                                         // b341: f0 f3       ..
    lda l0d68                                                         // b343: ad 68 0d    .h.
    pha                                                               // b346: 48          H
// $b347 referenced 1 time by $b357
loop_cb347
    ldx #$d3                                                          // b347: a2 d3       ..
    lda (l00be),y                                                     // b349: b1 be       ..
    sta l00a8                                                         // b34b: 85 a8       ..
    jsr sub_ca140                                                     // b34d: 20 40 a1     @.
    bcs cb32c                                                         // b350: b0 da       ..
    pla                                                               // b352: 68          h
    and la3f2,x                                                       // b353: 3d f2 a3    =..
    pha                                                               // b356: 48          H
    bcc loop_cb347                                                    // b357: 90 ee       ..
sub_cb359
    jsr sub_caf32                                                     // b359: 20 32 af     2.
    lda #0                                                            // b35c: a9 00       ..
    sta l00b5                                                         // b35e: 85 b5       ..
    jsr sub_cafb5                                                     // b360: 20 b5 af     ..
    jsr sub_cae94                                                     // b363: 20 94 ae     ..
    inx                                                               // b366: e8          .
    stx l00b6                                                         // b367: 86 b6       ..
// $b369 referenced 1 time by $b3a5
cb369
    lda #1                                                            // b369: a9 01       ..
    sta l0f05                                                         // b36b: 8d 05 0f    ...
    sta l0f07                                                         // b36e: 8d 07 0f    ...
    ldx l00b5                                                         // b371: a6 b5       ..
    stx l0f06                                                         // b373: 8e 06 0f    ...
    ldx #3                                                            // b376: a2 03       ..
    jsr sub_caf04                                                     // b378: 20 04 af     ..
    ldy #3                                                            // b37b: a0 03       ..
    lda #$80                                                          // b37d: a9 80       ..
    sta l0098                                                         // b37f: 85 98       ..
    jsr c94ad                                                         // b381: 20 ad 94     ..
    lda l0f05                                                         // b384: ad 05 0f    ...
    bne cb39c                                                         // b387: d0 13       ..
    lda #osbyte_flush_buffer_class                                    // b389: a9 0f       ..
    ldx #1                                                            // b38b: a2 01       ..
    jsr osbyte                                                        // b38d: 20 f4 ff     ..            // Flush input buffers (X non-zero)
    lda #osbyte_scan_keyboard_from_16                                 // b390: a9 7a       .z
    jsr osbyte                                                        // b392: 20 f4 ff     ..            // Keyboard scan starting from key 16
    ldy #0                                                            // b395: a0 00       ..             // Y=key
    lda #osbyte_write_keys_pressed                                    // b397: a9 78       .x
    jmp osbyte                                                        // b399: 4c f4 ff    L..            // Write current keys pressed (X and Y)

// $b39c referenced 1 time by $b387
cb39c
    lda l0f2f                                                         // b39c: ad 2f 0f    ./.
// $b39f referenced 1 time by $b3af
loop_cb39f
    cmp #$4c // 'L'                                                   // b39f: c9 4c       .L
    bne cb3a8                                                         // b3a1: d0 05       ..
// $b3a3 referenced 1 time by $b420
cb3a3
    inc l00b5                                                         // b3a3: e6 b5       ..
    jmp cb369                                                         // b3a5: 4c 69 b3    Li.

// $b3a8 referenced 1 time by $b3a1
cb3a8
    cmp #$44 // 'D'                                                   // b3a8: c9 44       .D
    bne cb3b1                                                         // b3aa: d0 05       ..
    lda l0f30                                                         // b3ac: ad 30 0f    .0.
    bne loop_cb39f                                                    // b3af: d0 ee       ..
// $b3b1 referenced 1 time by $b3aa
cb3b1
    ldx #1                                                            // b3b1: a2 01       ..
    ldy l00b6                                                         // b3b3: a4 b6       ..
// $b3b5 referenced 1 time by $b3c2
loop_cb3b5
    lda l0f06,x                                                       // b3b5: bd 06 0f    ...
    jsr osasci                                                        // b3b8: 20 e3 ff     ..            // Write character
    sta l0e30,y                                                       // b3bb: 99 30 0e    .0.
    iny                                                               // b3be: c8          .
    inx                                                               // b3bf: e8          .
    cpx #$0c                                                          // b3c0: e0 0c       ..
    bne loop_cb3b5                                                    // b3c2: d0 f1       ..
    jsr print_inline_top_bit_clear                                    // b3c4: 20 45 91     E.
    .asc "(?", $2f                                                    // b3c7: 28 3f 2f    (?/

    nop                                                               // b3ca: ea          .
    jsr sub_cb431                                                     // b3cb: 20 31 b4     1.
    cmp #$3f // '?'                                                   // b3ce: c9 3f       .?
    bne cb3ed                                                         // b3d0: d0 1b       ..
    lda #$0d                                                          // b3d2: a9 0d       ..
    jsr oswrch                                                        // b3d4: 20 ee ff     ..            // Write character 13
    ldx #2                                                            // b3d7: a2 02       ..
// $b3d9 referenced 1 time by $b3e2
loop_cb3d9
    lda l0f05,x                                                       // b3d9: bd 05 0f    ...
    jsr osasci                                                        // b3dc: 20 e3 ff     ..            // Write character
    inx                                                               // b3df: e8          .
    cpx #$3e // '>'                                                   // b3e0: e0 3e       .>
    bne loop_cb3d9                                                    // b3e2: d0 f5       ..
    jsr print_inline_top_bit_clear                                    // b3e4: 20 45 91     E.
    .asc " ("                                                         // b3e7: 20 28        (

    nop                                                               // b3e9: ea          .
    jsr sub_cb431                                                     // b3ea: 20 31 b4     1.
// $b3ed referenced 1 time by $b3d0
cb3ed
    and #$df                                                          // b3ed: 29 df       ).
    cmp #$59 // 'Y'                                                   // b3ef: c9 59       .Y
    bne cb41d                                                         // b3f1: d0 2a       .*
    jsr osasci                                                        // b3f3: 20 e3 ff     ..            // Write character
    ldx #0                                                            // b3f6: a2 00       ..
    lda l0e30,x                                                       // b3f8: bd 30 0e    .0.
    cmp #$0d                                                          // b3fb: c9 0d       ..
    beq cb423                                                         // b3fd: f0 24       .$
// $b3ff referenced 1 time by $b414
loop_cb3ff
    lda l0e30,x                                                       // b3ff: bd 30 0e    .0.
    cmp #$0d                                                          // b402: c9 0d       ..
    bne cb408                                                         // b404: d0 02       ..
    lda #$2e // '.'                                                   // b406: a9 2e       ..
// $b408 referenced 1 time by $b404
cb408
    cmp #$20 // ' '                                                   // b408: c9 20       .
    bne cb40e                                                         // b40a: d0 02       ..
// $b40c referenced 1 time by $b42f
cb40c
    lda #$0d                                                          // b40c: a9 0d       ..
// $b40e referenced 1 time by $b40a
cb40e
    sta l0f05,x                                                       // b40e: 9d 05 0f    ...
    inx                                                               // b411: e8          .
    cmp #$0d                                                          // b412: c9 0d       ..
    bne loop_cb3ff                                                    // b414: d0 e9       ..
    ldy #$14                                                          // b416: a0 14       ..
    jsr c94ad                                                         // b418: 20 ad 94     ..
    dec l00b5                                                         // b41b: c6 b5       ..
// $b41d referenced 1 time by $b3f1
cb41d
    jsr osnewl                                                        // b41d: 20 e7 ff     ..            // Write newline (characters 10 and 13)
    jmp cb3a3                                                         // b420: 4c a3 b3    L..

// $b423 referenced 1 time by $b3fd
cb423
    dex                                                               // b423: ca          .
// $b424 referenced 1 time by $b42d
loop_cb424
    inx                                                               // b424: e8          .
    lda l0e31,x                                                       // b425: bd 31 0e    .1.
    sta l0f05,x                                                       // b428: 9d 05 0f    ...
    cmp #$20 // ' '                                                   // b42b: c9 20       .
    bne loop_cb424                                                    // b42d: d0 f5       ..
    beq cb40c                                                         // b42f: f0 db       ..
// $b431 referenced 2 times by $b3cb, $b3ea
sub_cb431
    jsr print_inline_top_bit_clear                                    // b431: 20 45 91     E.
    .asc "Y", $2f, "N) "                                              // b434: 59 2f 4e... Y/N

    lda #osbyte_flush_buffer_class                                    // b439: a9 0f       ..
    ldx #1                                                            // b43b: a2 01       ..
    jsr osbyte                                                        // b43d: 20 f4 ff     ..            // Flush input buffers (X non-zero)
    jsr osrdch                                                        // b440: 20 e0 ff     ..            // Read a character from the current input stream
    bcc cb448                                                         // b443: 90 03       ..
    jmp c9576                                                         // b445: 4c 76 95    Lv.

// $b448 referenced 1 time by $b443
cb448
    rts                                                               // b448: 60          `

// $b449 referenced 1 time by $8b75
sub_cb449
    lda #0                                                            // b449: a9 00       ..
    tay                                                               // b44b: a8          .
// $b44c referenced 1 time by $b450
loop_cb44c
    sta l1000,y                                                       // b44c: 99 00 10    ...
    iny                                                               // b44f: c8          .
    bne loop_cb44c                                                    // b450: d0 fa       ..
    ldy #$0b                                                          // b452: a0 0b       ..
    lda (l009c),y                                                     // b454: b1 9c       ..
    sec                                                               // b456: 38          8
    sbc #$5a // 'Z'                                                   // b457: e9 5a       .Z
    tay                                                               // b459: a8          .
    lda #$40 // '@'                                                   // b45a: a9 40       .@
// $b45c referenced 1 time by $b462
loop_cb45c
    sta l1000,y                                                       // b45c: 99 00 10    ...
    dey                                                               // b45f: 88          .
    cpy #$b8                                                          // b460: c0 b8       ..
    bpl loop_cb45c                                                    // b462: 10 f8       ..
    iny                                                               // b464: c8          .
    lda #$c0                                                          // b465: a9 c0       ..
    sta l1000,y                                                       // b467: 99 00 10    ...
    rts                                                               // b46a: 60          `

// $b46b referenced 1 time by $b73d
sub_cb46b
    php                                                               // b46b: 08          .
    sec                                                               // b46c: 38          8
    sbc #$20 // ' '                                                   // b46d: e9 20       .
    bmi cb475                                                         // b46f: 30 04       0.
    cmp #$10                                                          // b471: c9 10       ..
    bcc cb477                                                         // b473: 90 02       ..
// $b475 referenced 1 time by $b46f
cb475
    lda #$ff                                                          // b475: a9 ff       ..
// $b477 referenced 1 time by $b473
cb477
    plp                                                               // b477: 28          (
    tax                                                               // b478: aa          .
    rts                                                               // b479: 60          `

    .byt $c9, $20, $90,   4, $c9, $30, $90, $2b, $48                  // b47a: c9 20 90... . .

// $b483 referenced 1 time by $b4b5
cb483
    lda #$de                                                          // b483: a9 de       ..
sub_cb485
lb487 = sub_cb485+2
    jsr generate_error_inline3                                        // b485: 20 d1 96     ..
// $b487 referenced 2 times by $b4cd, $b4e1
    .asc "Net channel", 0                                             // b488: 4e 65 74... Net
    .asc " not on this file server"                                   // b494: 20 6e 6f...  no
    .byt 0                                                            // b4ac: 00          .

// $b4ad referenced 1 time by $9ed6
sub_cb4ad
    pha                                                               // b4ad: 48          H
    sec                                                               // b4ae: 38          8
    sbc #$20 // ' '                                                   // b4af: e9 20       .
    tax                                                               // b4b1: aa          .
    lda l1030,x                                                       // b4b2: bd 30 10    .0.
    beq cb483                                                         // b4b5: f0 cc       ..
    jsr sub_cb586                                                     // b4b7: 20 86 b5     ..
    bne cb4c1                                                         // b4ba: d0 05       ..
    pla                                                               // b4bc: 68          h
    lda l1060,x                                                       // b4bd: bd 60 10    .`.
    rts                                                               // b4c0: 60          `

// $b4c1 referenced 1 time by $b4ba
cb4c1
    lda #$de                                                          // b4c1: a9 de       ..
    sta l0101                                                         // b4c3: 8d 01 01    ...
    lda #0                                                            // b4c6: a9 00       ..
    sta l0100                                                         // b4c8: 8d 00 01    ...
    tax                                                               // b4cb: aa          .
// $b4cc referenced 1 time by $b4d3
loop_cb4cc
    inx                                                               // b4cc: e8          .
    lda lb487,x                                                       // b4cd: bd 87 b4    ...
    sta l0101,x                                                       // b4d0: 9d 01 01    ...
    bne loop_cb4cc                                                    // b4d3: d0 f7       ..
    stx l00b2                                                         // b4d5: 86 b2       ..
    stx l00b4                                                         // b4d7: 86 b4       ..
    pla                                                               // b4d9: 68          h
    jsr sub_c9771                                                     // b4da: 20 71 97     q.
    ldy l00b4                                                         // b4dd: a4 b4       ..
// $b4df referenced 1 time by $b4e7
loop_cb4df
    iny                                                               // b4df: c8          .
    inx                                                               // b4e0: e8          .
    lda lb487,y                                                       // b4e1: b9 87 b4    ...
    sta l0101,x                                                       // b4e4: 9d 01 01    ...
    bne loop_cb4df                                                    // b4e7: d0 f6       ..
    jmp l0100                                                         // b4e9: 4c 00 01    L..

    .byt $ad, $c9, $10, $20, $8f, $b9, $20, $7a, $b4, $29,   2, $f0   // b4ec: ad c9 10... ...
    .byt $0f, $a9, $a8, $20, $d1, $96                                 // b4f8: 0f a9 a8... ...
    .asc "Is a dir."                                                  // b4fe: 49 73 20... Is
    .byt   0, $60                                                     // b507: 00 60       .`

// $b509 referenced 5 times by $a280, $a31f, $a34a, $a381, $b540
sub_cb509
    pha                                                               // b509: 48          H
    ldx #$20 // ' '                                                   // b50a: a2 20       .
// $b50c referenced 1 time by $b514
loop_cb50c
    lda l1010,x                                                       // b50c: bd 10 10    ...
    beq cb51a                                                         // b50f: f0 09       ..
    inx                                                               // b511: e8          .
    cpx #$30 // '0'                                                   // b512: e0 30       .0
    bne loop_cb50c                                                    // b514: d0 f6       ..
    pla                                                               // b516: 68          h
    lda #0                                                            // b517: a9 00       ..
    rts                                                               // b519: 60          `

// $b51a referenced 1 time by $b50f
cb51a
    pla                                                               // b51a: 68          h
    sta l1010,x                                                       // b51b: 9d 10 10    ...
    lda #0                                                            // b51e: a9 00       ..
    sta l0fe0,x                                                       // b520: 9d e0 0f    ...
    sta l0ff0,x                                                       // b523: 9d f0 0f    ...
    sta l1000,x                                                       // b526: 9d 00 10    ...
    lda l0e00                                                         // b529: ad 00 0e    ...
    sta l1020,x                                                       // b52c: 9d 20 10    . .
    lda l0e01                                                         // b52f: ad 01 0e    ...
    sta l1030,x                                                       // b532: 9d 30 10    .0.
    txa                                                               // b535: 8a          .
    pha                                                               // b536: 48          H
    sec                                                               // b537: 38          8
    sbc #$20 // ' '                                                   // b538: e9 20       .
    tax                                                               // b53a: aa          .
    pla                                                               // b53b: 68          h
    rts                                                               // b53c: 60          `

// $b53d referenced 1 time by $a1ed
sub_cb53d
    pha                                                               // b53d: 48          H
    lda #0                                                            // b53e: a9 00       ..
    jsr sub_cb509                                                     // b540: 20 09 b5     ..
    bne cb557                                                         // b543: d0 12       ..
    lda #$c0                                                          // b545: a9 c0       ..
    jsr generate_error_inline3                                        // b547: 20 d1 96     ..
    .asc "No more FCBs", 0                                            // b54a: 4e 6f 20... No

// $b557 referenced 1 time by $b543
cb557
    pla                                                               // b557: 68          h
    rts                                                               // b558: 60          `

// $b559 referenced 3 times by $94a8, $9533, $a391
sub_cb559
    clc                                                               // b559: 18          .
    bit l9491                                                         // b55a: 2c 91 94    ,..
    ldx #$10                                                          // b55d: a2 10       ..
// $b55f referenced 4 times by $b56b, $b575, $b57a, $b584
cb55f
    dex                                                               // b55f: ca          .
    bpl cb563                                                         // b560: 10 01       ..
    rts                                                               // b562: 60          `

// $b563 referenced 1 time by $b560
cb563
    lda l1060,x                                                       // b563: bd 60 10    .`.
    tay                                                               // b566: a8          .
    and #2                                                            // b567: 29 02       ).
    beq cb577                                                         // b569: f0 0c       ..
    bvc cb55f                                                         // b56b: 50 f2       P.
    bcc cb577                                                         // b56d: 90 08       ..
    tya                                                               // b56f: 98          .
    and #$df                                                          // b570: 29 df       ).
    sta l1060,x                                                       // b572: 9d 60 10    .`.
    bvs cb55f                                                         // b575: 70 e8       p.
// $b577 referenced 2 times by $b569, $b56d
cb577
    jsr sub_cb586                                                     // b577: 20 86 b5     ..
    bne cb55f                                                         // b57a: d0 e3       ..
    lda #0                                                            // b57c: a9 00       ..
    sta l1060,x                                                       // b57e: 9d 60 10    .`.
    sta l1030,x                                                       // b581: 9d 30 10    .0.
    beq cb55f                                                         // b584: f0 d9       ..
// $b586 referenced 6 times by $a306, $a331, $a368, $ac40, $b4b7, $b577
sub_cb586
    lda l1040,x                                                       // b586: bd 40 10    .@.
    eor l0e00                                                         // b589: 4d 00 0e    M..
    bne cb594                                                         // b58c: d0 06       ..
    lda l1050,x                                                       // b58e: bd 50 10    .P.
    eor l0e01                                                         // b591: 4d 01 0e    M..
// $b594 referenced 1 time by $b58c
cb594
    rts                                                               // b594: 60          `

// $b595 referenced 2 times by $b694, $b782
sub_cb595
    ldx l10c8                                                         // b595: ae c8 10    ...
    bit l9491                                                         // b598: 2c 91 94    ,..
// $b59b referenced 4 times by $b5aa, $b5b0, $b5cd, $b5d4
cb59b
    inx                                                               // b59b: e8          .
    cpx #$10                                                          // b59c: e0 10       ..
    bne cb5a2                                                         // b59e: d0 02       ..
    ldx #0                                                            // b5a0: a2 00       ..
// $b5a2 referenced 1 time by $b59e
cb5a2
    cpx l10c8                                                         // b5a2: ec c8 10    ...
    bne cb5ac                                                         // b5a5: d0 05       ..
    bvc cb5b7                                                         // b5a7: 50 0e       P.
    clv                                                               // b5a9: b8          .
    bvc cb59b                                                         // b5aa: 50 ef       P.
// $b5ac referenced 1 time by $b5a5
cb5ac
    lda l10b8,x                                                       // b5ac: bd b8 10    ...
    rol                                                               // b5af: 2a          *
    bpl cb59b                                                         // b5b0: 10 e9       ..
    and #4                                                            // b5b2: 29 04       ).
    bne cb5cd                                                         // b5b4: d0 17       ..
// $b5b6 referenced 1 time by $b5d6
cb5b6
    dex                                                               // b5b6: ca          .
// $b5b7 referenced 2 times by $b5a7, $b5c2
cb5b7
    inx                                                               // b5b7: e8          .
    cpx #$10                                                          // b5b8: e0 10       ..
    bne cb5be                                                         // b5ba: d0 02       ..
    ldx #0                                                            // b5bc: a2 00       ..
// $b5be referenced 1 time by $b5ba
cb5be
    lda l10b8,x                                                       // b5be: bd b8 10    ...
    rol                                                               // b5c1: 2a          *
    bpl cb5b7                                                         // b5c2: 10 f3       ..
    sec                                                               // b5c4: 38          8
    ror                                                               // b5c5: 6a          j
    sta l10b8,x                                                       // b5c6: 9d b8 10    ...
    ldx l10c8                                                         // b5c9: ae c8 10    ...
    rts                                                               // b5cc: 60          `

// $b5cd referenced 1 time by $b5b4
cb5cd
    bvs cb59b                                                         // b5cd: 70 cc       p.
    lda l10b8,x                                                       // b5cf: bd b8 10    ...
    and #$20 // ' '                                                   // b5d2: 29 20       )
    bne cb59b                                                         // b5d4: d0 c5       ..
    beq cb5b6                                                         // b5d6: f0 de       ..
// $b5d8 referenced 2 times by $b61b, $b6c6
sub_cb5d8
    ldy #1                                                            // b5d8: a0 01       ..
    sty l10d0                                                         // b5da: 8c d0 10    ...
    dey                                                               // b5dd: 88          .
    sty l10cb                                                         // b5de: 8c cb 10    ...
    sty l10cf                                                         // b5e1: 8c cf 10    ...
    sty l10d6                                                         // b5e4: 8c d6 10    ...
    tya                                                               // b5e7: 98          .
    ldx #2                                                            // b5e8: a2 02       ..
// $b5ea referenced 1 time by $b5ee
loop_cb5ea
    sta l10d1,x                                                       // b5ea: 9d d1 10    ...
    dex                                                               // b5ed: ca          .
    bpl loop_cb5ea                                                    // b5ee: 10 fa       ..
    stx l10cd                                                         // b5f0: 8e cd 10    ...
    stx l10ce                                                         // b5f3: 8e ce 10    ...
    ldx #$ca                                                          // b5f6: a2 ca       ..
    ldy #$10                                                          // b5f8: a0 10       ..
    rts                                                               // b5fa: 60          `

// $b5fb referenced 2 times by $b68b, $b7b7
sub_cb5fb
    jsr sub_c8fcb                                                     // b5fb: 20 cb 8f     ..
    stx l10c8                                                         // b5fe: 8e c8 10    ...
    lda l10b8,x                                                       // b601: bd b8 10    ...
    ror                                                               // b604: 6a          j
    bcc cb661                                                         // b605: 90 5a       .Z
    lda l10d4                                                         // b607: ad d4 10    ...
    pha                                                               // b60a: 48          H
    lda l10d5                                                         // b60b: ad d5 10    ...
    pha                                                               // b60e: 48          H
    lda l1078,x                                                       // b60f: bd 78 10    .x.
    sta l10d4                                                         // b612: 8d d4 10    ...
    lda l1088,x                                                       // b615: bd 88 10    ...
    sta l10d5                                                         // b618: 8d d5 10    ...
    jsr sub_cb5d8                                                     // b61b: 20 d8 b5     ..
    dec l10cf                                                         // b61e: ce cf 10    ...
    dec l10d0                                                         // b621: ce d0 10    ...
    ldx l10c8                                                         // b624: ae c8 10    ...
    txa                                                               // b627: 8a          .
    clc                                                               // b628: 18          .
    adc #$11                                                          // b629: 69 11       i.
    sta l10cc                                                         // b62b: 8d cc 10    ...
    lda l10b8,x                                                       // b62e: bd b8 10    ...
    and #$20 // ' '                                                   // b631: 29 20       )
    beq cb63b                                                         // b633: f0 06       ..
    lda l1098,x                                                       // b635: bd 98 10    ...
    sta l10cf                                                         // b638: 8d cf 10    ...
// $b63b referenced 1 time by $b633
cb63b
    lda l10a8,x                                                       // b63b: bd a8 10    ...
    sta l10ca                                                         // b63e: 8d ca 10    ...
    tax                                                               // b641: aa          .
    jsr sub_cb98a                                                     // b642: 20 8a b9     ..
    pha                                                               // b645: 48          H
    txa                                                               // b646: 8a          .
    sta (l009c),y                                                     // b647: 91 9c       ..
    ldx #$ca                                                          // b649: a2 ca       ..
    ldy #$10                                                          // b64b: a0 10       ..
    lda #0                                                            // b64d: a9 00       ..
    jsr sub_cb984                                                     // b64f: 20 84 b9     ..
    ldx l10c8                                                         // b652: ae c8 10    ...
    pla                                                               // b655: 68          h
    jsr sub_cb98f                                                     // b656: 20 8f b9     ..
    pla                                                               // b659: 68          h
    sta l10d5                                                         // b65a: 8d d5 10    ...
    pla                                                               // b65d: 68          h
    sta l10d4                                                         // b65e: 8d d4 10    ...
// $b661 referenced 1 time by $b605
cb661
    lda #$dc                                                          // b661: a9 dc       ..
    and l10b8,x                                                       // b663: 3d b8 10    =..
    sta l10b8,x                                                       // b666: 9d b8 10    ...
    rts                                                               // b669: 60          `

// $b66a referenced 2 times by $b72d, $b8ef
sub_cb66a
    ldx #$0c                                                          // b66a: a2 0c       ..
// $b66c referenced 1 time by $b676
loop_cb66c
    lda l0f00,x                                                       // b66c: bd 00 0f    ...
    sta l10d9,x                                                       // b66f: 9d d9 10    ...
    lda l00b0,x                                                       // b672: b5 b0       ..
    pha                                                               // b674: 48          H
    dex                                                               // b675: ca          .
    bpl loop_cb66c                                                    // b676: 10 f4       ..
    cpy #0                                                            // b678: c0 00       ..
    bne cb67f                                                         // b67a: d0 03       ..
    jmp cb718                                                         // b67c: 4c 18 b7    L..

// $b67f referenced 1 time by $b67a
cb67f
    php                                                               // b67f: 08          .
    ldx #$ff                                                          // b680: a2 ff       ..
// $b682 referenced 2 times by $b686, $b689
cb682
    inx                                                               // b682: e8          .
    lda l10b8,x                                                       // b683: bd b8 10    ...
    bpl cb682                                                         // b686: 10 fa       ..
    asl                                                               // b688: 0a          .
    bpl cb682                                                         // b689: 10 f7       ..
    jsr sub_cb5fb                                                     // b68b: 20 fb b5     ..
    lda #$40 // '@'                                                   // b68e: a9 40       .@
    sta l10b8,x                                                       // b690: 9d b8 10    ...
    php                                                               // b693: 08          .
    jsr sub_cb595                                                     // b694: 20 95 b5     ..
    plp                                                               // b697: 28          (
    lda l10c9                                                         // b698: ad c9 10    ...
    sta l10ca                                                         // b69b: 8d ca 10    ...
    pha                                                               // b69e: 48          H
    sec                                                               // b69f: 38          8
    sbc #$20 // ' '                                                   // b6a0: e9 20       .
    tay                                                               // b6a2: a8          .
    lda l1030,y                                                       // b6a3: b9 30 10    .0.
    sta l0f05                                                         // b6a6: 8d 05 0f    ...
    pla                                                               // b6a9: 68          h
    sta l10a8,x                                                       // b6aa: 9d a8 10    ...
    lda l10d4                                                         // b6ad: ad d4 10    ...
    sta l1078,x                                                       // b6b0: 9d 78 10    .x.
    lda l10d5                                                         // b6b3: ad d5 10    ...
    sta l1088,x                                                       // b6b6: 9d 88 10    ...
    txa                                                               // b6b9: 8a          .
    clc                                                               // b6ba: 18          .
    adc #$11                                                          // b6bb: 69 11       i.
    sta l10cc                                                         // b6bd: 8d cc 10    ...
    plp                                                               // b6c0: 28          (
    bvc cb6c6                                                         // b6c1: 50 03       P.
    jsr sub_cb8da                                                     // b6c3: 20 da b8     ..
// $b6c6 referenced 1 time by $b6c1
cb6c6
    jsr sub_cb5d8                                                     // b6c6: 20 d8 b5     ..
    jsr sub_cb98a                                                     // b6c9: 20 8a b9     ..
    pha                                                               // b6cc: 48          H
    lda l10ca                                                         // b6cd: ad ca 10    ...
    sta (l009c),y                                                     // b6d0: 91 9c       ..
    ldy #$10                                                          // b6d2: a0 10       ..
    lda #2                                                            // b6d4: a9 02       ..
    jsr sub_cb984                                                     // b6d6: 20 84 b9     ..
    pla                                                               // b6d9: 68          h
    jsr sub_cb98f                                                     // b6da: 20 8f b9     ..
    ldx l10c8                                                         // b6dd: ae c8 10    ...
    lda l10d0                                                         // b6e0: ad d0 10    ...
    bne cb6ea                                                         // b6e3: d0 05       ..
    lda l10cf                                                         // b6e5: ad cf 10    ...
    beq cb70e                                                         // b6e8: f0 24       .$
// $b6ea referenced 1 time by $b6e3
cb6ea
    lda l10cf                                                         // b6ea: ad cf 10    ...
    eor #$ff                                                          // b6ed: 49 ff       I.
    clc                                                               // b6ef: 18          .
    adc #1                                                            // b6f0: 69 01       i.
    sta l1098,x                                                       // b6f2: 9d 98 10    ...
    lda #$20 // ' '                                                   // b6f5: a9 20       .
    ora l10b8,x                                                       // b6f7: 1d b8 10    ...
    sta l10b8,x                                                       // b6fa: 9d b8 10    ...
    lda l10cc                                                         // b6fd: ad cc 10    ...
    sta l00b3                                                         // b700: 85 b3       ..
    lda #0                                                            // b702: a9 00       ..
    sta l00b2                                                         // b704: 85 b2       ..
    ldy l1098,x                                                       // b706: bc 98 10    ...
// $b709 referenced 1 time by $b70c
loop_cb709
    sta (l00b2),y                                                     // b709: 91 b2       ..
    iny                                                               // b70b: c8          .
    bne loop_cb709                                                    // b70c: d0 fb       ..
// $b70e referenced 1 time by $b6e8
cb70e
    lda #2                                                            // b70e: a9 02       ..
    ora l10b8,x                                                       // b710: 1d b8 10    ...
    sta l10b8,x                                                       // b713: 9d b8 10    ...
    ldy #0                                                            // b716: a0 00       ..
// $b718 referenced 2 times by $b67c, $b71f
cb718
    pla                                                               // b718: 68          h
    sta l00b0,y                                                       // b719: 99 b0 00    ...
    iny                                                               // b71c: c8          .
    cpy #$0d                                                          // b71d: c0 0d       ..
    bne cb718                                                         // b71f: d0 f7       ..
// $b721 referenced 1 time by $b922
sub_cb721
    ldy #$0c                                                          // b721: a0 0c       ..
// $b723 referenced 1 time by $b72a
loop_cb723
    lda l10d9,y                                                       // b723: b9 d9 10    ...
    sta l0f00,y                                                       // b726: 99 00 0f    ...
    dey                                                               // b729: 88          .
    bpl loop_cb723                                                    // b72a: 10 f7       ..
    rts                                                               // b72c: 60          `

// $b72d referenced 1 time by $b74c
loop_cb72d
    jsr sub_cb66a                                                     // b72d: 20 6a b6     j.
// $b730 referenced 1 time by $9df8
sub_cb730
    ldx #$ff                                                          // b730: a2 ff       ..
// $b732 referenced 2 times by $b76e, $b776
cb732
    ldy l10c9                                                         // b732: ac c9 10    ...
// $b735 referenced 2 times by $b754, $b75a
cb735
    inx                                                               // b735: e8          .
    cpx #$10                                                          // b736: e0 10       ..
    bne cb74f                                                         // b738: d0 15       ..
    lda l10c9                                                         // b73a: ad c9 10    ...
    jsr sub_cb46b                                                     // b73d: 20 6b b4     k.
    lda l1020,x                                                       // b740: bd 20 10    . .
    sta l10d5                                                         // b743: 8d d5 10    ...
    lda l1010,x                                                       // b746: bd 10 10    ...
    sta l10d4                                                         // b749: 8d d4 10    ...
    jmp loop_cb72d                                                    // b74c: 4c 2d b7    L-.

// $b74f referenced 1 time by $b738
cb74f
    lda l10b8,x                                                       // b74f: bd b8 10    ...
    and #2                                                            // b752: 29 02       ).
    beq cb735                                                         // b754: f0 df       ..
    tya                                                               // b756: 98          .
    cmp l10a8,x                                                       // b757: dd a8 10    ...
    bne cb735                                                         // b75a: d0 d9       ..
    stx l10c8                                                         // b75c: 8e c8 10    ...
    php                                                               // b75f: 08          .
    sec                                                               // b760: 38          8
    sbc #$20 // ' '                                                   // b761: e9 20       .
    plp                                                               // b763: 28          (
    tay                                                               // b764: a8          .
    ldx l10c8                                                         // b765: ae c8 10    ...
    lda l1010,y                                                       // b768: b9 10 10    ...
    cmp l1078,x                                                       // b76b: dd 78 10    .x.
    bne cb732                                                         // b76e: d0 c2       ..
    lda l1020,y                                                       // b770: b9 20 10    . .
    cmp l1088,x                                                       // b773: dd 88 10    ...
    bne cb732                                                         // b776: d0 ba       ..
    lda l10b8,x                                                       // b778: bd b8 10    ...
    bpl cb788                                                         // b77b: 10 0b       ..
    and #$7f                                                          // b77d: 29 7f       ).
    sta l10b8,x                                                       // b77f: 9d b8 10    ...
    jsr sub_cb595                                                     // b782: 20 95 b5     ..
    lda l10b8,x                                                       // b785: bd b8 10    ...
// $b788 referenced 1 time by $b77b
cb788
    and #$20 // ' '                                                   // b788: 29 20       )
    rts                                                               // b78a: 60          `

    .byt $fe,   0, $10, $d0,   8, $fe, $10, $10, $d0,   3, $fe, $20   // b78b: fe 00 10... ...
    .byt $10, $60                                                     // b797: 10 60       .`

// $b799 referenced 3 times by $8d87, $8fa0, $94a0
sub_cb799
    txa                                                               // b799: 8a          .
    pha                                                               // b79a: 48          H
    tya                                                               // b79b: 98          .
    pha                                                               // b79c: 48          H
    ldx #$f7                                                          // b79d: a2 f7       ..
// $b79f referenced 1 time by $b7a4
loop_cb79f
    lda lffbd,x                                                       // b79f: bd bd ff    ...
    pha                                                               // b7a2: 48          H
    inx                                                               // b7a3: e8          .
    bmi loop_cb79f                                                    // b7a4: 30 f9       0.
    ldx #$0f                                                          // b7a6: a2 0f       ..
    stx l10c8                                                         // b7a8: 8e c8 10    ...
// $b7ab referenced 1 time by $b7bf
loop_cb7ab
    ldx l10c8                                                         // b7ab: ae c8 10    ...
    tya                                                               // b7ae: 98          .
    beq cb7b6                                                         // b7af: f0 05       ..
    cmp l10a8,x                                                       // b7b1: dd a8 10    ...
    bne cb7bc                                                         // b7b4: d0 06       ..
// $b7b6 referenced 1 time by $b7af
cb7b6
    pha                                                               // b7b6: 48          H
    jsr sub_cb5fb                                                     // b7b7: 20 fb b5     ..
    pla                                                               // b7ba: 68          h
    tay                                                               // b7bb: a8          .
// $b7bc referenced 1 time by $b7b4
cb7bc
    dec l10c8                                                         // b7bc: ce c8 10    ...
    bpl loop_cb7ab                                                    // b7bf: 10 ea       ..
    ldx #8                                                            // b7c1: a2 08       ..
// $b7c3 referenced 1 time by $b7c7
loop_cb7c3
    pla                                                               // b7c3: 68          h
    sta l00b4,x                                                       // b7c4: 95 b4       ..
    dex                                                               // b7c6: ca          .
    bpl loop_cb7c3                                                    // b7c7: 10 fa       ..
    pla                                                               // b7c9: 68          h
    tay                                                               // b7ca: a8          .
    pla                                                               // b7cb: 68          h
    tax                                                               // b7cc: aa          .
    rts                                                               // b7cd: 60          `

    .byt $8c, $c9, $10, $8a, $48, $20, $ec, $b4, $bd, $60, $10, $29   // b7ce: 8c c9 10... ...
    .byt $20, $f0, $10, $a9, $d4, $20, $d1, $96                       // b7da: 20 f0 10...  ..
    .asc "Write only"                                                 // b7e2: 57 72 69... Wri
    .byt   0, $b8, $20, $30, $b7, $f0, $35, $b9,   0, $10, $dd, $98   // b7ec: 00 b8 20... ..
    .byt $10, $90, $2d, $b9, $60, $10, $aa, $29, $40, $d0, $14, $8a   // b7f8: 10 90 2d... ..-
    .byt   9, $40, $99, $60, $10, $a9,   0, $20, $8f, $b9, $68, $aa   // b804: 09 40 99... .@.
    .byt $a9, $fe, $ac, $c9, $10, $38, $60, $a9, $df, $20, $d1, $96   // b810: a9 fe ac... ...
    .asc "End of file"                                                // b81c: 45 6e 64... End
    .byt   0, $b9,   0, $10, $48, $98, $aa, $a9,   0, $20, $8f, $b9   // b827: 00 b9 00... ...
    .byt $20, $8b, $b7, $68, $a8, $ad, $c8, $10, $18, $69, $11, $85   // b833: 20 8b b7...  ..
    .byt $b3, $a9,   0, $85, $b2, $68, $aa, $b1, $b2, $ac, $c9, $10   // b83f: b3 a9 00... ...
    .byt $18, $60, $8c, $c9, $10, $48, $a8, $8a, $48, $98, $48, $8d   // b84b: 18 60 8c... .`.
    .byt $d7, $10, $20, $ec, $b4, $bd, $60, $10, $30, $19, $a9, $c1   // b857: d7 10 20... ..
    .byt $20, $d1, $96                                                // b863: 20 d1 96     ..
    .asc "Not open for update"                                        // b866: 4e 6f 74... Not
    .byt   0, $29, $20, $f0, $0a, $bc, $30, $10                       // b879: 00 29 20... .)
    .asc "h +"                                                        // b881: 68 20 2b    h +
    .byt $b9, $4c, $cb, $b8, $2c, $91, $94, $20, $30, $b7, $b9,   0   // b884: b9 4c cb... .L.
    .byt $10, $c9, $ff, $d0,   3, $20, $e4, $b8, $dd, $98, $10, $90   // b890: 10 c9 ff... ...
    .byt $0f, $69,   0, $9d, $98, $10, $d0,   8, $a9, $df, $3d, $b8   // b89c: 0f 69 00... .i.
    .byt $10, $9d, $b8, $10, $a9,   1, $1d, $b8, $10, $9d, $b8, $10   // b8a8: 10 9d b8... ...
    .byt $b9,   0, $10, $48, $98, $aa, $68, $a8, $ad, $c8, $10, $18   // b8b4: b9 00 10... ...
    .byt $69, $11, $85, $b3, $a9,   0, $85, $b2, $68, $91, $b2, $20   // b8c0: 69 11 85... i..
    .byt $8b, $b7, $a9,   0, $20, $8f, $b9, $68, $aa, $68, $ac, $c9   // b8cc: 8b b7 a9... ...
    .byt $10, $60                                                     // b8d8: 10 60       .`

// $b8da referenced 1 time by $b6c3
sub_cb8da
    pha                                                               // b8da: 48          H
    txa                                                               // b8db: 8a          .
    pha                                                               // b8dc: 48          H
    tya                                                               // b8dd: 98          .
    pha                                                               // b8de: 48          H
    lda l1030,y                                                       // b8df: b9 30 10    .0.
    bne cb8f3                                                         // b8e2: d0 0f       ..
    pha                                                               // b8e4: 48          H
    txa                                                               // b8e5: 8a          .
    pha                                                               // b8e6: 48          H
    tya                                                               // b8e7: 98          .
    pha                                                               // b8e8: 48          H
    lda l1030,y                                                       // b8e9: b9 30 10    .0.
    pha                                                               // b8ec: 48          H
    ldy #0                                                            // b8ed: a0 00       ..
    jsr sub_cb66a                                                     // b8ef: 20 6a b6     j.
    pla                                                               // b8f2: 68          h
// $b8f3 referenced 1 time by $b8e2
cb8f3
    sta l0f05                                                         // b8f3: 8d 05 0f    ...
    tax                                                               // b8f6: aa          .
    pla                                                               // b8f7: 68          h
    tay                                                               // b8f8: a8          .
    pha                                                               // b8f9: 48          H
    txa                                                               // b8fa: 8a          .
    pha                                                               // b8fb: 48          H
    ldx #0                                                            // b8fc: a2 00       ..
    stx l0f06                                                         // b8fe: 8e 06 0f    ...
    lda l1000,y                                                       // b901: b9 00 10    ...
    sta l0f07                                                         // b904: 8d 07 0f    ...
    lda l1010,y                                                       // b907: b9 10 10    ...
    sta l0f08                                                         // b90a: 8d 08 0f    ...
    lda l1020,y                                                       // b90d: b9 20 10    . .
    sta l0f09                                                         // b910: 8d 09 0f    ...
    ldy #$0d                                                          // b913: a0 0d       ..
    ldx #5                                                            // b915: a2 05       ..
    jsr c94ad                                                         // b917: 20 ad 94     ..
    pla                                                               // b91a: 68          h
    tay                                                               // b91b: a8          .
    lda l10d7                                                         // b91c: ad d7 10    ...
    jsr sub_cb92b                                                     // b91f: 20 2b b9     +.
    jsr sub_cb721                                                     // b922: 20 21 b7     !.
    pla                                                               // b925: 68          h
    tay                                                               // b926: a8          .
    pla                                                               // b927: 68          h
    tax                                                               // b928: aa          .
    pla                                                               // b929: 68          h
    rts                                                               // b92a: 60          `

// $b92b referenced 1 time by $b91f
sub_cb92b
    sty l0fde                                                         // b92b: 8c de 0f    ...
    sta l0fdf                                                         // b92e: 8d df 0f    ...
    tya                                                               // b931: 98          .
    pha                                                               // b932: 48          H
    txa                                                               // b933: 8a          .
    pha                                                               // b934: 48          H
    lda #$90                                                          // b935: a9 90       ..
    sta l0fdc                                                         // b937: 8d dc 0f    ...
    jsr sub_c9473                                                     // b93a: 20 73 94     s.
    lda #$dc                                                          // b93d: a9 dc       ..
    sta l00c4                                                         // b93f: 85 c4       ..
    lda #$e0                                                          // b941: a9 e0       ..
    sta l00c8                                                         // b943: 85 c8       ..
    lda #9                                                            // b945: a9 09       ..
    sta l0fdd                                                         // b947: 8d dd 0f    ...
    ldx #$c0                                                          // b94a: a2 c0       ..
    ldy #0                                                            // b94c: a0 00       ..
    lda l0fde                                                         // b94e: ad de 0f    ...
    jsr sub_cac24                                                     // b951: 20 24 ac     $.
    lda l0fdd                                                         // b954: ad dd 0f    ...
    beq cb974                                                         // b957: f0 1b       ..
    sta l0e09                                                         // b959: 8d 09 0e    ...
    ldx #0                                                            // b95c: a2 00       ..
// $b95e referenced 1 time by $b969
loop_cb95e
    lda l0fdc,x                                                       // b95e: bd dc 0f    ...
    sta l0100,x                                                       // b961: 9d 00 01    ...
    cmp #$0d                                                          // b964: c9 0d       ..
    beq cb96b                                                         // b966: f0 03       ..
    inx                                                               // b968: e8          .
    bne loop_cb95e                                                    // b969: d0 f3       ..
// $b96b referenced 1 time by $b966
cb96b
    lda #0                                                            // b96b: a9 00       ..
    sta l0100,x                                                       // b96d: 9d 00 01    ...
    dex                                                               // b970: ca          .
    jmp c96f0                                                         // b971: 4c f0 96    L..

// $b974 referenced 1 time by $b957
cb974
    ldx l10c9                                                         // b974: ae c9 10    ...
    lda l1040,x                                                       // b977: bd 40 10    .@.
    eor #1                                                            // b97a: 49 01       I.
    sta l1040,x                                                       // b97c: 9d 40 10    .@.
    pla                                                               // b97f: 68          h
    tax                                                               // b980: aa          .
    pla                                                               // b981: 68          h
    tay                                                               // b982: a8          .
    rts                                                               // b983: 60          `

// $b984 referenced 2 times by $b64f, $b6d6
sub_cb984
    jsr sub_c929b                                                     // b984: 20 9b 92     ..
    jmp c9edd                                                         // b987: 4c dd 9e    L..

// $b98a referenced 4 times by $96f0, $9703, $b642, $b6c9
sub_cb98a
    ldy #$0a                                                          // b98a: a0 0a       ..
    lda (l009c),y                                                     // b98c: b1 9c       ..
    rts                                                               // b98e: 60          `

// $b98f referenced 4 times by $8b6c, $9ccc, $b656, $b6da
sub_cb98f
    ldy #$0a                                                          // b98f: a0 0a       ..
    sta (l009c),y                                                     // b991: 91 9c       ..
    rts                                                               // b993: 60          `

sub_cb994
    lda #osfind_close                                                 // b994: a9 00       ..
    tay                                                               // b996: a8          .
    jmp osfind                                                        // b997: 4c ce ff    L..            // Close all files (Y=0)

sub_cb99a
    clv                                                               // b99a: b8          .
    bvc cb9a0                                                         // b99b: 50 03       P.
sub_cb99d
    bit l9491                                                         // b99d: 2c 91 94    ,..
// $b9a0 referenced 1 time by $b99b
cb9a0
    jsr sub_cbc44                                                     // b9a0: 20 44 bc     D.
    ldy l00a8                                                         // b9a3: a4 a8       ..             // Y=file handle
    lda #0                                                            // b9a5: a9 00       ..
    sta l00ad                                                         // b9a7: 85 ad       ..
    php                                                               // b9a9: 08          .
// $b9aa referenced 3 times by $b9ca, $b9ea, $b9fd
cb9aa
    jsr osbget                                                        // b9aa: 20 d7 ff     ..            // Read a single byte from an open file Y
    bcc cb9b6                                                         // b9ad: 90 07       ..
    plp                                                               // b9af: 28          (
    jsr cbc3d                                                         // b9b0: 20 3d bc     =.
    jmp osnewl                                                        // b9b3: 4c e7 ff    L..            // Write newline (characters 10 and 13)

// $b9b6 referenced 1 time by $b9ad
cb9b6
    jsr sub_cb9ff                                                     // b9b6: 20 ff b9     ..
    plp                                                               // b9b9: 28          (
    php                                                               // b9ba: 08          .
    bvs cb9c5                                                         // b9bb: 70 08       p.
    cmp #$0d                                                          // b9bd: c9 0d       ..
    beq cb9cd                                                         // b9bf: f0 0c       ..
    cmp #$0a                                                          // b9c1: c9 0a       ..
    beq cb9cd                                                         // b9c3: f0 08       ..
// $b9c5 referenced 1 time by $b9bb
cb9c5
    sta l00ad                                                         // b9c5: 85 ad       ..
// $b9c7 referenced 1 time by $b9d8
loop_cb9c7
    jsr oswrch                                                        // b9c7: 20 ee ff     ..            // Write character
    jmp cb9aa                                                         // b9ca: 4c aa b9    L..

// $b9cd referenced 2 times by $b9bf, $b9c3
cb9cd
    pha                                                               // b9cd: 48          H
    ldx l026a                                                         // b9ce: ae 6a 02    .j.
    beq cb9da                                                         // b9d1: f0 07       ..
    lda #0                                                            // b9d3: a9 00       ..
    sta l00ad                                                         // b9d5: 85 ad       ..
    pla                                                               // b9d7: 68          h
    bne loop_cb9c7                                                    // b9d8: d0 ed       ..
// $b9da referenced 1 time by $b9d1
cb9da
    lda l00ad                                                         // b9da: a5 ad       ..
    cmp #$0d                                                          // b9dc: c9 0d       ..
    beq cb9ed                                                         // b9de: f0 0d       ..
    cmp #$0a                                                          // b9e0: c9 0a       ..
    beq cb9f4                                                         // b9e2: f0 10       ..
    pla                                                               // b9e4: 68          h
    sta l00ad                                                         // b9e5: 85 ad       ..
// $b9e7 referenced 2 times by $b9f2, $b9f7
cb9e7
    jsr osnewl                                                        // b9e7: 20 e7 ff     ..            // Write newline (characters 10 and 13)
    jmp cb9aa                                                         // b9ea: 4c aa b9    L..

// $b9ed referenced 1 time by $b9de
cb9ed
    pla                                                               // b9ed: 68          h
    cmp #$0a                                                          // b9ee: c9 0a       ..
    beq cb9f9                                                         // b9f0: f0 07       ..
    bne cb9e7                                                         // b9f2: d0 f3       ..
// $b9f4 referenced 1 time by $b9e2
cb9f4
    pla                                                               // b9f4: 68          h
    cmp #$0d                                                          // b9f5: c9 0d       ..
    bne cb9e7                                                         // b9f7: d0 ee       ..
// $b9f9 referenced 1 time by $b9f0
cb9f9
    lda #0                                                            // b9f9: a9 00       ..
    sta l00ad                                                         // b9fb: 85 ad       ..
    beq cb9aa                                                         // b9fd: f0 ab       ..
// $b9ff referenced 2 times by $b9b6, $ba33
sub_cb9ff
    bit l00ff                                                         // b9ff: 24 ff       $.
    bmi cba04                                                         // ba01: 30 01       0.
    rts                                                               // ba03: 60          `

// $ba04 referenced 1 time by $ba01
cba04
    jsr cbc3d                                                         // ba04: 20 3d bc     =.
    jsr osnewl                                                        // ba07: 20 e7 ff     ..            // Write newline (characters 10 and 13)
    lda #osbyte_acknowledge_escape                                    // ba0a: a9 7e       .~
    jsr osbyte                                                        // ba0c: 20 f4 ff     ..            // Clear escape condition and perform escape effects
    lda #$11                                                          // ba0f: a9 11       ..
    jsr generate_error_inline2                                        // ba11: 20 d4 96     ..
    .asc "Escape", 0                                                  // ba14: 45 73 63... Esc

sub_cba1b
    jsr sub_cbc44                                                     // ba1b: 20 44 bc     D.
    ldx #$14                                                          // ba1e: a2 14       ..
    lda #0                                                            // ba20: a9 00       ..
// $ba22 referenced 1 time by $ba24
loop_cba22
    pha                                                               // ba22: 48          H
    dex                                                               // ba23: ca          .
    bpl loop_cba22                                                    // ba24: 10 fc       ..
    tsx                                                               // ba26: ba          .
    jsr sub_cbb77                                                     // ba27: 20 77 bb     w.
    lda (l00ae),y                                                     // ba2a: b1 ae       ..
    and #$f0                                                          // ba2c: 29 f0       ).
    beq cba33                                                         // ba2e: f0 03       ..
    jsr sub_cbadd                                                     // ba30: 20 dd ba     ..
// $ba33 referenced 2 times by $ba2e, $bad5
cba33
    jsr sub_cb9ff                                                     // ba33: 20 ff b9     ..
    lda #$ff                                                          // ba36: a9 ff       ..
    sta l00aa                                                         // ba38: 85 aa       ..
// $ba3a referenced 1 time by $ba49
loop_cba3a
    ldy l00a8                                                         // ba3a: a4 a8       ..             // Y=file handle
    jsr osbget                                                        // ba3c: 20 d7 ff     ..            // Read a single byte from an open file Y
    bcs cba4c                                                         // ba3f: b0 0b       ..
    inc l00aa                                                         // ba41: e6 aa       ..
    ldy l00aa                                                         // ba43: a4 aa       ..
    sta (l00ae),y                                                     // ba45: 91 ae       ..
    cpy #$0f                                                          // ba47: c0 0f       ..
    bne loop_cba3a                                                    // ba49: d0 ef       ..
    clc                                                               // ba4b: 18          .
// $ba4c referenced 1 time by $ba3f
cba4c
    php                                                               // ba4c: 08          .
    lda l00aa                                                         // ba4d: a5 aa       ..
    bpl cba5a                                                         // ba4f: 10 09       ..
    ldx #$15                                                          // ba51: a2 15       ..
// $ba53 referenced 2 times by $ba55, $bada
cba53
    pla                                                               // ba53: 68          h
    dex                                                               // ba54: ca          .
    bpl cba53                                                         // ba55: 10 fc       ..
    jmp cbc3d                                                         // ba57: 4c 3d bc    L=.

// $ba5a referenced 1 time by $ba4f
cba5a
    ldy #$10                                                          // ba5a: a0 10       ..
    lda (l00ae),y                                                     // ba5c: b1 ae       ..
    and #$f0                                                          // ba5e: 29 f0       ).
    bne cba65                                                         // ba60: d0 03       ..
    jsr sub_cbadd                                                     // ba62: 20 dd ba     ..
// $ba65 referenced 1 time by $ba60
cba65
    ldy #$13                                                          // ba65: a0 13       ..
// $ba67 referenced 1 time by $ba71
loop_cba67
    lda (l00ae),y                                                     // ba67: b1 ae       ..
    pha                                                               // ba69: 48          H
    jsr sub_c912f                                                     // ba6a: 20 2f 91     /.
    pla                                                               // ba6d: 68          h
    dey                                                               // ba6e: 88          .
    cpy #$0f                                                          // ba6f: c0 0f       ..
    bne loop_cba67                                                    // ba71: d0 f4       ..
    iny                                                               // ba73: c8          .
    clc                                                               // ba74: 18          .
    adc #$10                                                          // ba75: 69 10       i.
    php                                                               // ba77: 08          .
// $ba78 referenced 1 time by $ba83
loop_cba78
    plp                                                               // ba78: 28          (
    sta (l00ae),y                                                     // ba79: 91 ae       ..
    iny                                                               // ba7b: c8          .
    lda (l00ae),y                                                     // ba7c: b1 ae       ..
    adc #0                                                            // ba7e: 69 00       i.
    php                                                               // ba80: 08          .
    cpy #$14                                                          // ba81: c0 14       ..
    bne loop_cba78                                                    // ba83: d0 f3       ..
    plp                                                               // ba85: 28          (
    jsr print_inline_top_bit_clear                                    // ba86: 20 45 91     E.
    .asc " : "                                                        // ba89: 20 3a 20     :

    ldy #0                                                            // ba8c: a0 00       ..
    ldx l00aa                                                         // ba8e: a6 aa       ..
// $ba90 referenced 1 time by $ba9b
loop_cba90
    lda (l00ae),y                                                     // ba90: b1 ae       ..
    jsr sub_cbb03                                                     // ba92: 20 03 bb     ..
// $ba95 referenced 1 time by $baa8
loop_cba95
    iny                                                               // ba95: c8          .
    cpy #$10                                                          // ba96: c0 10       ..
    beq cbaab                                                         // ba98: f0 11       ..
    dex                                                               // ba9a: ca          .
    bpl loop_cba90                                                    // ba9b: 10 f3       ..
    tya                                                               // ba9d: 98          .
    pha                                                               // ba9e: 48          H
    jsr print_inline_top_bit_clear                                    // ba9f: 20 45 91     E.
    .asc "   "                                                        // baa2: 20 20 20

    nop                                                               // baa5: ea          .
    pla                                                               // baa6: 68          h
    tay                                                               // baa7: a8          .
    jmp loop_cba95                                                    // baa8: 4c 95 ba    L..

// $baab referenced 1 time by $ba98
cbaab
    dex                                                               // baab: ca          .
    jsr print_inline_top_bit_clear                                    // baac: 20 45 91     E.
    .asc ": "                                                         // baaf: 3a 20       :

    ldy #0                                                            // bab1: a0 00       ..
    jsr sub_cbc86                                                     // bab3: 20 86 bc     ..
// $bab6 referenced 1 time by $bacd
loop_cbab6
    lda (l00ae),y                                                     // bab6: b1 ae       ..
    and #$7f                                                          // bab8: 29 7f       ).
    cmp #$20 // ' '                                                   // baba: c9 20       .
    bcs cbac0                                                         // babc: b0 02       ..
// $babe referenced 1 time by $bac2
loop_cbabe
    lda #$2e // '.'                                                   // babe: a9 2e       ..
// $bac0 referenced 1 time by $babc
cbac0
    cmp #$7f                                                          // bac0: c9 7f       ..
    beq loop_cbabe                                                    // bac2: f0 fa       ..
    jsr osasci                                                        // bac4: 20 e3 ff     ..            // Write character
    iny                                                               // bac7: c8          .
    cpy #$10                                                          // bac8: c0 10       ..
    beq cbacf                                                         // baca: f0 03       ..
    dex                                                               // bacc: ca          .
    bpl loop_cbab6                                                    // bacd: 10 e7       ..
// $bacf referenced 1 time by $baca
cbacf
    jsr osnewl                                                        // bacf: 20 e7 ff     ..            // Write newline (characters 10 and 13)
    plp                                                               // bad2: 28          (
    bcs cbad8                                                         // bad3: b0 03       ..
    jmp cba33                                                         // bad5: 4c 33 ba    L3.

// $bad8 referenced 1 time by $bad3
cbad8
    ldx #$14                                                          // bad8: a2 14       ..
    jmp cba53                                                         // bada: 4c 53 ba    LS.

// $badd referenced 2 times by $ba30, $ba62
sub_cbadd
    lda (l00ae),y                                                     // badd: b1 ae       ..
    pha                                                               // badf: 48          H
    jsr print_inline_top_bit_clear                                    // bae0: 20 45 91     E.
    .asc $0d, "Address  : "                                           // bae3: 0d 41 64... .Ad

    ldx #$0f                                                          // baef: a2 0f       ..
    pla                                                               // baf1: 68          h
// $baf2 referenced 1 time by $bafb
loop_cbaf2
    jsr sub_cbb03                                                     // baf2: 20 03 bb     ..
    sec                                                               // baf5: 38          8
    adc #0                                                            // baf6: 69 00       i.
    and #$0f                                                          // baf8: 29 0f       ).
    dex                                                               // bafa: ca          .
    bpl loop_cbaf2                                                    // bafb: 10 f5       ..
    jsr osnewl                                                        // bafd: 20 e7 ff     ..            // Write newline (characters 10 and 13)
    jmp osnewl                                                        // bb00: 4c e7 ff    L..            // Write newline (characters 10 and 13)

// $bb03 referenced 2 times by $ba92, $baf2
sub_cbb03
    pha                                                               // bb03: 48          H
    jsr sub_c912f                                                     // bb04: 20 2f 91     /.
    lda #$20 // ' '                                                   // bb07: a9 20       .
    jsr osasci                                                        // bb09: 20 e3 ff     ..            // Write character 32
    pla                                                               // bb0c: 68          h
    rts                                                               // bb0d: 60          `

// $bb0e referenced 2 times by $bb7e, $bc0a
sub_cbb0e
    tya                                                               // bb0e: 98          .
    tax                                                               // bb0f: aa          .
    lda #0                                                            // bb10: a9 00       ..
    tay                                                               // bb12: a8          .
// $bb13 referenced 1 time by $bb18
loop_cbb13
    sta (l00ae),y                                                     // bb13: 91 ae       ..
    iny                                                               // bb15: c8          .
    cpy #4                                                            // bb16: c0 04       ..
    bne loop_cbb13                                                    // bb18: d0 f9       ..
// $bb1a referenced 1 time by $bb61
cbb1a
    txa                                                               // bb1a: 8a          .
    inx                                                               // bb1b: e8          .
    tay                                                               // bb1c: a8          .
    lda (os_text_ptr),y                                               // bb1d: b1 f2       ..
    cmp #$0d                                                          // bb1f: c9 0d       ..
    beq cbb6f                                                         // bb21: f0 4c       .L
    cmp #$20 // ' '                                                   // bb23: c9 20       .
    beq cbb6f                                                         // bb25: f0 48       .H
    cmp #$30 // '0'                                                   // bb27: c9 30       .0
    bcc cbb68                                                         // bb29: 90 3d       .=
    cmp #$3a // ':'                                                   // bb2b: c9 3a       .:
    bcc cbb39                                                         // bb2d: 90 0a       ..
    and #$5f // '_'                                                   // bb2f: 29 5f       )_
    adc #$b8                                                          // bb31: 69 b8       i.
    bcs cbb68                                                         // bb33: b0 33       .3
    cmp #$fa                                                          // bb35: c9 fa       ..
    bcc cbb68                                                         // bb37: 90 2f       ./
// $bb39 referenced 1 time by $bb2d
cbb39
    and #$0f                                                          // bb39: 29 0f       ).
    pha                                                               // bb3b: 48          H
    txa                                                               // bb3c: 8a          .
    pha                                                               // bb3d: 48          H
    ldx #4                                                            // bb3e: a2 04       ..
// $bb40 referenced 1 time by $bb56
loop_cbb40
    ldy #0                                                            // bb40: a0 00       ..
    tya                                                               // bb42: 98          .
// $bb43 referenced 1 time by $bb4f
loop_cbb43
    pha                                                               // bb43: 48          H
    plp                                                               // bb44: 28          (
    lda (l00ae),y                                                     // bb45: b1 ae       ..
    rol                                                               // bb47: 2a          *
    sta (l00ae),y                                                     // bb48: 91 ae       ..
    php                                                               // bb4a: 08          .
    pla                                                               // bb4b: 68          h
    iny                                                               // bb4c: c8          .
    cpy #4                                                            // bb4d: c0 04       ..
    bne loop_cbb43                                                    // bb4f: d0 f2       ..
    pha                                                               // bb51: 48          H
    plp                                                               // bb52: 28          (
    bcs cbb64                                                         // bb53: b0 0f       ..
    dex                                                               // bb55: ca          .
    bne loop_cbb40                                                    // bb56: d0 e8       ..
    pla                                                               // bb58: 68          h
    tax                                                               // bb59: aa          .
    pla                                                               // bb5a: 68          h
    ldy #0                                                            // bb5b: a0 00       ..
    ora (l00ae),y                                                     // bb5d: 11 ae       ..
    sta (l00ae),y                                                     // bb5f: 91 ae       ..
    jmp cbb1a                                                         // bb61: 4c 1a bb    L..

// $bb64 referenced 1 time by $bb53
cbb64
    pla                                                               // bb64: 68          h
    pla                                                               // bb65: 68          h
    sec                                                               // bb66: 38          8
    rts                                                               // bb67: 60          `

// $bb68 referenced 3 times by $bb29, $bb33, $bb37
cbb68
    jsr cbc3d                                                         // bb68: 20 3d bc     =.
    jmp c9208                                                         // bb6b: 4c 08 92    L..

// $bb6e referenced 1 time by $bb73
loop_cbb6e
    iny                                                               // bb6e: c8          .
// $bb6f referenced 2 times by $bb21, $bb25
cbb6f
    lda (os_text_ptr),y                                               // bb6f: b1 f2       ..
    cmp #$20 // ' '                                                   // bb71: c9 20       .
    beq loop_cbb6e                                                    // bb73: f0 f9       ..
    clc                                                               // bb75: 18          .
    rts                                                               // bb76: 60          `

// $bb77 referenced 1 time by $ba27
sub_cbb77
    inx                                                               // bb77: e8          .
    stx l00ae                                                         // bb78: 86 ae       ..
    ldx #1                                                            // bb7a: a2 01       ..
    stx l00af                                                         // bb7c: 86 af       ..
    jsr sub_cbb0e                                                     // bb7e: 20 0e bb     ..
    bcs cbba2                                                         // bb81: b0 1f       ..
    tya                                                               // bb83: 98          .
    pha                                                               // bb84: 48          H
    ldy l00a8                                                         // bb85: a4 a8       ..             // Y=file handle
    ldx #$aa                                                          // bb87: a2 aa       ..             // X=zero page address for result
    lda #2                                                            // bb89: a9 02       ..
    jsr osargs                                                        // bb8b: 20 da ff     ..            // Get length of file into zero page address X (A=2)
    ldy #3                                                            // bb8e: a0 03       ..
// $bb90 referenced 1 time by $bb98
loop_cbb90
    lda l00aa,y                                                       // bb90: b9 aa 00    ...
    cmp (l00ae),y                                                     // bb93: d1 ae       ..
    bne cbb9c                                                         // bb95: d0 05       ..
    dey                                                               // bb97: 88          .
    bpl loop_cbb90                                                    // bb98: 10 f6       ..
    bmi cbbbc                                                         // bb9a: 30 20       0
// $bb9c referenced 1 time by $bb95
cbb9c
    bcc cbba2                                                         // bb9c: 90 04       ..
    ldy #$ff                                                          // bb9e: a0 ff       ..
    bne cbbbc                                                         // bba0: d0 1a       ..
// $bba2 referenced 2 times by $bb81, $bb9c
cbba2
    jsr cbc3d                                                         // bba2: 20 3d bc     =.
    lda #$b7                                                          // bba5: a9 b7       ..
    jsr generate_error_inline2                                        // bba7: 20 d4 96     ..
    .asc "Outside file", 0                                            // bbaa: 4f 75 74... Out

// $bbb7 referenced 1 time by $bbbf
loop_cbbb7
    lda (l00ae),y                                                     // bbb7: b1 ae       ..
    sta l00aa,y                                                       // bbb9: 99 aa 00    ...
// $bbbc referenced 2 times by $bb9a, $bba0
cbbbc
    iny                                                               // bbbc: c8          .
    cpy #4                                                            // bbbd: c0 04       ..
    bne loop_cbbb7                                                    // bbbf: d0 f6       ..
    ldx #$aa                                                          // bbc1: a2 aa       ..             // X=zero page address to write from
    ldy l00a8                                                         // bbc3: a4 a8       ..             // Y=file handle
    lda #1                                                            // bbc5: a9 01       ..
    jsr osargs                                                        // bbc7: 20 da ff     ..            // Write sequential file pointer from zero page address X (A=1)
    pla                                                               // bbca: 68          h
    tay                                                               // bbcb: a8          .
    lda (os_text_ptr),y                                               // bbcc: b1 f2       ..
    cmp #$0d                                                          // bbce: c9 0d       ..
    bne cbc0a                                                         // bbd0: d0 38       .8
    ldy #1                                                            // bbd2: a0 01       ..
// $bbd4 referenced 1 time by $bbda
loop_cbbd4
    lda os_text_ptr,y                                                 // bbd4: b9 f2 00    ...
    sta (l00ae),y                                                     // bbd7: 91 ae       ..
    dey                                                               // bbd9: 88          .
    bpl loop_cbbd4                                                    // bbda: 10 f8       ..
    lda #osfile_read_catalogue_info                                   // bbdc: a9 05       ..
    ldx l00ae                                                         // bbde: a6 ae       ..
    ldy l00af                                                         // bbe0: a4 af       ..
    jsr osfile                                                        // bbe2: 20 dd ff     ..            // Read catalogue information (A=5)
    ldy #2                                                            // bbe5: a0 02       ..
// $bbe7 referenced 1 time by $bbf2
loop_cbbe7
    lda (l00ae),y                                                     // bbe7: b1 ae       ..
    dey                                                               // bbe9: 88          .
    dey                                                               // bbea: 88          .
    sta (l00ae),y                                                     // bbeb: 91 ae       ..
    iny                                                               // bbed: c8          .
    iny                                                               // bbee: c8          .
    iny                                                               // bbef: c8          .
    cpy #6                                                            // bbf0: c0 06       ..
    bne loop_cbbe7                                                    // bbf2: d0 f3       ..
    dey                                                               // bbf4: 88          .
    dey                                                               // bbf5: 88          .
// $bbf6 referenced 1 time by $bbfd
loop_cbbf6
    lda (l00ae),y                                                     // bbf6: b1 ae       ..
    cmp #$ff                                                          // bbf8: c9 ff       ..
    bne cbc1f                                                         // bbfa: d0 23       .#
    dey                                                               // bbfc: 88          .
    bne loop_cbbf6                                                    // bbfd: d0 f7       ..
    ldy #3                                                            // bbff: a0 03       ..
    lda #0                                                            // bc01: a9 00       ..
// $bc03 referenced 1 time by $bc06
loop_cbc03
    sta (l00ae),y                                                     // bc03: 91 ae       ..
    dey                                                               // bc05: 88          .
    bpl loop_cbc03                                                    // bc06: 10 fb       ..
    bmi cbc1f                                                         // bc08: 30 15       0.
// $bc0a referenced 1 time by $bbd0
cbc0a
    jsr sub_cbb0e                                                     // bc0a: 20 0e bb     ..
    bcc cbc1f                                                         // bc0d: 90 10       ..
    jsr cbc3d                                                         // bc0f: 20 3d bc     =.
    lda #$fc                                                          // bc12: a9 fc       ..
    jsr generate_error_inline                                         // bc14: 20 b8 96     ..
    .asc "address", 0                                                 // bc17: 61 64 64... add

// $bc1f referenced 3 times by $bbfa, $bc08, $bc0d
cbc1f
    ldy #0                                                            // bc1f: a0 00       ..
    ldx #4                                                            // bc21: a2 04       ..
    clc                                                               // bc23: 18          .
// $bc24 referenced 1 time by $bc2e
loop_cbc24
    lda (l00ae),y                                                     // bc24: b1 ae       ..
    adc l00aa,y                                                       // bc26: 79 aa 00    y..
    sta l00aa,y                                                       // bc29: 99 aa 00    ...
    iny                                                               // bc2c: c8          .
    dex                                                               // bc2d: ca          .
    bne loop_cbc24                                                    // bc2e: d0 f4       ..
    ldy #$14                                                          // bc30: a0 14       ..
    ldx #3                                                            // bc32: a2 03       ..
// $bc34 referenced 1 time by $bc3a
loop_cbc34
    dey                                                               // bc34: 88          .
    lda l00aa,x                                                       // bc35: b5 aa       ..
    sta (l00ae),y                                                     // bc37: 91 ae       ..
    dex                                                               // bc39: ca          .
    bpl loop_cbc34                                                    // bc3a: 10 f8       ..
    rts                                                               // bc3c: 60          `

// $bc3d referenced 6 times by $b9b0, $ba04, $ba57, $bb68, $bba2, $bc0f
cbc3d
    ldy l00a8                                                         // bc3d: a4 a8       ..
    lda #osfind_close                                                 // bc3f: a9 00       ..
    jmp osfind                                                        // bc41: 4c ce ff    L..            // Close one or all files

// $bc44 referenced 2 times by $b9a0, $ba1b
sub_cbc44
    php                                                               // bc44: 08          .
    tya                                                               // bc45: 98          .
    clc                                                               // bc46: 18          .
    adc os_text_ptr                                                   // bc47: 65 f2       e.
    pha                                                               // bc49: 48          H
    tax                                                               // bc4a: aa          .
    lda #0                                                            // bc4b: a9 00       ..
    adc l00f3                                                         // bc4d: 65 f3       e.
    pha                                                               // bc4f: 48          H
    tay                                                               // bc50: a8          .
    lda #osfind_open_input                                            // bc51: a9 40       .@
    jsr osfind                                                        // bc53: 20 ce ff     ..            // Open file for input (A=64)
    tay                                                               // bc56: a8          .              // A=file handle (or zero on failure)
    sta l00a8                                                         // bc57: 85 a8       ..
    bne cbc6a                                                         // bc59: d0 0f       ..
    lda #$d6                                                          // bc5b: a9 d6       ..
    jsr generate_error_inline2                                        // bc5d: 20 d4 96     ..
    .asc "Not found", 0                                               // bc60: 4e 6f 74... Not

// $bc6a referenced 1 time by $bc59
cbc6a
    pla                                                               // bc6a: 68          h
    sta l00f3                                                         // bc6b: 85 f3       ..
    pla                                                               // bc6d: 68          h
    sta os_text_ptr                                                   // bc6e: 85 f2       ..
    ldy #0                                                            // bc70: a0 00       ..
// $bc72 referenced 1 time by $bc7b
loop_cbc72
    iny                                                               // bc72: c8          .
    lda (os_text_ptr),y                                               // bc73: b1 f2       ..
    cmp #$0d                                                          // bc75: c9 0d       ..
    beq cbc84                                                         // bc77: f0 0b       ..
    cmp #$20 // ' '                                                   // bc79: c9 20       .
    bne loop_cbc72                                                    // bc7b: d0 f5       ..
// $bc7d referenced 1 time by $bc82
loop_cbc7d
    iny                                                               // bc7d: c8          .
    lda (os_text_ptr),y                                               // bc7e: b1 f2       ..
    cmp #$20 // ' '                                                   // bc80: c9 20       .
    beq loop_cbc7d                                                    // bc82: f0 f9       ..
// $bc84 referenced 1 time by $bc77
cbc84
    plp                                                               // bc84: 28          (
    rts                                                               // bc85: 60          `

// $bc86 referenced 2 times by $a8b0, $bab3
sub_cbc86
    jsr sub_cbc89                                                     // bc86: 20 89 bc     ..
// $bc89 referenced 1 time by $bc86
sub_cbc89
    jsr sub_cbc8c                                                     // bc89: 20 8c bc     ..
// $bc8c referenced 1 time by $bc89
sub_cbc8c
    inx                                                               // bc8c: e8          .
    inx                                                               // bc8d: e8          .
    inx                                                               // bc8e: e8          .
    inx                                                               // bc8f: e8          .
    rts                                                               // bc90: 60          `

    .byt $ff, $ff, $ff                                                // bc91: ff ff ff    ...
// $bc94 referenced 1 time by $bea4
lbc94
    .byt $37,   5, $96,   5, $f2,   5,   7,   6, $27,   6, $68,   6   // bc94: 37 05 96... 7..
    .byt $5e,   5, $2d,   5, $20,   5, $42,   5, $a9,   5, $d1,   5   // bca0: 5e 05 2d... ^.-
    .byt $86, $88, $96, $98, $18, $18, $82, $18, $20, $c5,   6, $a8   // bcac: 86 88 96... ...
    .byt $20, $c5,   6, $20, $d4, $ff, $4c, $9c,   5, $20, $c5,   6   // bcb8: 20 c5 06...  ..
    .byt $a8, $20, $d7, $ff, $4c, $3a,   5, $20, $e0, $ff, $6a, $20   // bcc4: a8 20 d7... . .
    .byt $95,   6, $2a, $4c, $9e,   5, $20, $c5,   6, $f0, $0b, $48   // bcd0: 95 06 2a... ..*
    .byt $20, $82,   5, $68, $20, $ce, $ff, $4c, $9e,   5, $20, $c5   // bcdc: 20 82 05...  ..
    .byt   6, $a8, $a9,   0, $20, $ce, $ff, $4c, $9c,   5, $20, $c5   // bce8: 06 a8 a9... ...
    .byt   6, $a8, $a2,   4, $20, $c5,   6, $95, $ff, $ca, $d0, $f8   // bcf4: 06 a8 a2... ...
    .byt $20, $c5,   6, $20, $da, $ff, $20, $95,   6, $a2,   3, $b5   // bd00: 20 c5 06...  ..
    .byt   0, $20, $95,   6, $ca, $10, $f8, $4c, $36,   0, $a2,   0   // bd0c: 00 20 95... . .
    .byt $a0,   0, $20, $c5,   6, $99,   0,   7, $c8, $f0,   4, $c9   // bd18: a0 00 20... ..
    .byt $0d, $d0, $f3, $a0,   7, $60, $20, $82,   5, $20, $f7, $ff   // bd24: 0d d0 f3... ...
    .byt $a9, $7f, $2c, $e2, $fe, $50, $fb, $8d, $e3, $fe, $4c, $36   // bd30: a9 7f 2c... ..,
    .byt   0, $a2, $10, $20, $c5,   6, $95,   1, $ca, $d0, $f8, $20   // bd3c: 00 a2 10... ...
    .byt $82,   5, $86,   0, $84,   1, $a0,   0, $20, $c5,   6, $20   // bd48: 82 05 86... ...
    .byt $dd, $ff, $20, $95,   6, $a2, $10, $b5,   1, $20, $95,   6   // bd54: dd ff 20... ..
    .byt $ca, $d0, $f8, $f0, $d5, $a2, $0d, $20, $c5,   6, $95, $ff   // bd60: ca d0 f8... ...
    .byt $ca, $d0, $f8, $20, $c5,   6, $a0,   0, $20, $d1, $ff, $48   // bd6c: ca d0 f8... ...
    .byt $a2, $0c, $b5,   0, $20, $95,   6, $ca, $10, $f8             // bd78: a2 0c b5... ...
    .asc "hL:"                                                        // bd82: 68 4c 3a    hL:
    .byt   5, $20, $c5,   6, $aa, $20, $c5,   6, $20, $f4, $ff, $2c   // bd85: 05 20 c5... . .
    .byt $e2, $fe, $50                                                // bd91: e2 fe 50    ..P
// $bd94 referenced 1 time by $beaa
lbd94
    .byt $fb, $8e, $e3, $fe, $4c, $36,   0, $20, $c5,   6, $aa, $20   // bd94: fb 8e e3... ...
    .byt $c5,   6, $a8, $20, $c5,   6, $20, $f4, $ff, $49, $9d, $f0   // bda0: c5 06 a8... ...
    .byt $eb, $6a, $20, $95,   6, $2c, $e2, $fe, $50, $fb, $8c, $e3   // bdac: eb 6a 20... .j
    .byt $fe, $70, $d5, $20, $c5,   6, $a8, $2c, $e2, $fe, $10, $fb   // bdb8: fe 70 d5... .p.
    .byt $ae, $e3, $fe, $ca, $30, $0f, $2c, $e2, $fe, $10, $fb, $ad   // bdc4: ae e3 fe... ...
    .byt $e3, $fe, $9d, $28,   1, $ca, $10, $f2, $98, $a2, $28, $a0   // bdd0: e3 fe 9d... ...
    .byt   1, $20, $f1, $ff, $2c, $e2, $fe, $10, $fb, $ae, $e3, $fe   // bddc: 01 20 f1... . .
    .byt $ca, $30, $0e, $bc, $28,   1, $2c, $e2, $fe, $50, $fb, $8c   // bde8: ca 30 0e... .0.
    .byt $e3, $fe, $ca, $10, $f2, $4c, $36,   0, $a2,   4, $20, $c5   // bdf4: e3 fe ca... ...
    .byt   6, $95,   0, $ca, $10, $f8, $e8, $a0,   0, $8a, $20, $f1   // be00: 06 95 00... ...
    .byt $ff, $90,   5, $a9, $ff, $4c, $9e,   5, $a2,   0, $a9, $7f   // be0c: ff 90 05... ...
    .byt $20, $95,   6, $bd,   0,   7, $20, $95,   6, $e8, $c9, $0d   // be18: 20 95 06...  ..
    .byt $d0, $f5, $4c, $36,   0, $2c, $e2, $fe, $50, $fb, $8d, $e3   // be24: d0 f5 4c... ..L
    .byt $fe, $60, $2c, $e6, $fe, $50, $fb, $8d, $e7, $fe, $60, $a5   // be30: fe 60 2c... .`,
    .byt $ff                                                          // be3c: ff          .
    .asc "8j0"                                                        // be3d: 38 6a 30    8j0
    .byt $0f, $48, $a9,   0, $20, $bc,   6, $98, $20, $bc,   6, $8a   // be40: 0f 48 a9... .H.
    .byt $20, $bc,   6, $68, $2c, $e0, $fe, $50, $fb, $8d, $e1, $fe   // be4c: 20 bc 06...  ..
    .byt $60, $2c, $e2, $fe, $10, $fb, $ad, $e3, $fe, $60             // be58: 60 2c e2... `,.

// $be62 referenced 1 time by $8a3d
service_handler_tube_service_calls
    cmp #$fe                                                          // be62: c9 fe       ..
    bcc cbec2                                                         // be64: 90 5c       .\ 
    bne cbe83                                                         // be66: d0 1b       ..
    cpy #0                                                            // be68: c0 00       ..
    beq cbec2                                                         // be6a: f0 56       .V
    ldx #6                                                            // be6c: a2 06       ..
    lda #osbyte_explode_chars                                         // be6e: a9 14       ..
    jsr osbyte                                                        // be70: 20 f4 ff     ..            // Explode character definition RAM (six extra pages), can redefine all characters 32-255 (X=6)
// $be73 referenced 2 times by $be76, $be80
cbe73
    bit tube_host_r1_status                                           // be73: 2c e0 fe    ,..
    bpl cbe73                                                         // be76: 10 fb       ..
    lda tube_host_r1_data                                             // be78: ad e1 fe    ...
    beq cbec0                                                         // be7b: f0 43       .C
    jsr oswrch                                                        // be7d: 20 ee ff     ..            // Write character
    jmp cbe73                                                         // be80: 4c 73 be    Ls.

// $be83 referenced 1 time by $be66
cbe83
    lda #$ad                                                          // be83: a9 ad       ..
    sta evntv                                                         // be85: 8d 20 02    . .
    lda #6                                                            // be88: a9 06       ..
    sta evntv+1                                                       // be8a: 8d 21 02    .!.
    lda #$16                                                          // be8d: a9 16       ..
    sta brkv                                                          // be8f: 8d 02 02    ...
    lda #0                                                            // be92: a9 00       ..
    sta brkv+1                                                        // be94: 8d 03 02    ...
    lda #$8e                                                          // be97: a9 8e       ..
    sta tube_host_r1_status                                           // be99: 8d e0 fe    ...
    ldy #0                                                            // be9c: a0 00       ..
// $be9e referenced 1 time by $beb1
loop_cbe9e
    lda lbf04,y                                                       // be9e: b9 04 bf    ...
    sta l0400,y                                                       // bea1: 99 00 04    ...
    lda lbc94,y                                                       // bea4: b9 94 bc    ...
    sta l0500,y                                                       // bea7: 99 00 05    ...
    lda lbd94,y                                                       // beaa: b9 94 bd    ...
    sta l0600,y                                                       // bead: 99 00 06    ...
    dey                                                               // beb0: 88          .
    bne loop_cbe9e                                                    // beb1: d0 eb       ..
    jsr sub_c0421                                                     // beb3: 20 21 04     !.
    ldx #$41 // 'A'                                                   // beb6: a2 41       .A
// $beb8 referenced 1 time by $bebe
loop_cbeb8
    lda lbec3,x                                                       // beb8: bd c3 be    ...
    sta l0016,x                                                       // bebb: 95 16       ..
    dex                                                               // bebd: ca          .
    bpl loop_cbeb8                                                    // bebe: 10 f8       ..
// $bec0 referenced 1 time by $be7b
cbec0
    lda #0                                                            // bec0: a9 00       ..
// $bec2 referenced 2 times by $be64, $be6a
cbec2
    rts                                                               // bec2: 60          `

// $bec3 referenced 1 time by $beb8
lbec3
    .byt $a9, $ff, $20, $9e,   6, $ad, $e3, $fe, $a9,   0, $20, $95   // bec3: a9 ff 20... ..
    .byt   6, $a8, $b1, $fd, $20, $95,   6, $c8, $b1, $fd, $20, $95   // becf: 06 a8 b1... ...
    .byt   6, $aa, $d0, $f7, $a2, $ff, $9a, $58, $2c, $e0, $fe, $10   // bedb: 06 aa d0... ...
    .byt   6, $ad, $e1, $fe, $20, $ee, $ff, $2c, $e2, $fe, $10, $f0   // bee7: 06 ad e1... ...
    .byt $2c, $e0, $fe, $30, $f0, $ae, $e3, $fe, $86, $51, $6c,   0   // bef3: 2c e0 fe... ,..
    .byt   5,   0, $80,   0,   0                                      // beff: 05 00 80... ...
// $bf04 referenced 2 times by $be9e, $bea1
lbf04
// $bf04 referenced 2 times by $be9e, $bea1
* = $0400
// $bf04 referenced 2 times by $be9e, $bea1
l0400
    .byt $4c, $84,   4, $4c, $a7,   6                                 // bf04: 4c 84 04... L.. :0400[1]

// $bf0a referenced 7 times by $844f, $8933, $893b, $a075, $a2ec, $bf97, $bfcf
c0406
    cmp #$80                                                          // bf0a: c9 80       ..  :0406[1]
    bcc c0435                                                         // bf0c: 90 2b       .+  :0408[1]
    cmp #$c0                                                          // bf0e: c9 c0       ..  :040a[1]
    bcs c0428                                                         // bf10: b0 1a       ..  :040c[1]
    ora #$40 // '@'                                                   // bf12: 09 40       .@  :040e[1]
    cmp l0015                                                         // bf14: c5 15       ..  :0410[1]
    bne c0434                                                         // bf16: d0 20       .   :0412[1]
// $bf18 referenced 1 time by $0471
sub_c0414
    php                                                               // bf18: 08          .   :0414[1]
    sei                                                               // bf19: 78          x   :0415[1]
    lda #5                                                            // bf1a: a9 05       ..  :0416[1]
    jsr l069e                                                         // bf1c: 20 9e 06     .. :0418[1]
    lda l0015                                                         // bf1f: a5 15       ..  :041b[1]
    jsr l069e                                                         // bf21: 20 9e 06     .. :041d[1]
    plp                                                               // bf24: 28          (   :0420[1]
// $bf25 referenced 1 time by $beb3
sub_c0421
    lda #$80                                                          // bf25: a9 80       ..  :0421[1]
    sta l0015                                                         // bf27: 85 15       ..  :0423[1]
    sta l0014                                                         // bf29: 85 14       ..  :0425[1]
    rts                                                               // bf2b: 60          `   :0427[1]

// $bf2c referenced 1 time by $040c
c0428
    asl l0014                                                         // bf2c: 06 14       ..  :0428[1]
    bcs c0432                                                         // bf2e: b0 06       ..  :042a[1]
    cmp l0015                                                         // bf30: c5 15       ..  :042c[1]
    beq c0434                                                         // bf32: f0 04       ..  :042e[1]
    clc                                                               // bf34: 18          .   :0430[1]
    rts                                                               // bf35: 60          `   :0431[1]

// $bf36 referenced 1 time by $042a
c0432
    sta l0015                                                         // bf36: 85 15       ..  :0432[1]
// $bf38 referenced 2 times by $0412, $042e
c0434
    rts                                                               // bf38: 60          `   :0434[1]

// $bf39 referenced 1 time by $0408
c0435
    php                                                               // bf39: 08          .   :0435[1]
    sei                                                               // bf3a: 78          x   :0436[1]
    sty l0013                                                         // bf3b: 84 13       ..  :0437[1]
    stx l0012                                                         // bf3d: 86 12       ..  :0439[1]
    jsr l069e                                                         // bf3f: 20 9e 06     .. :043b[1]
    tax                                                               // bf42: aa          .   :043e[1]
    ldy #3                                                            // bf43: a0 03       ..  :043f[1]
    lda l0015                                                         // bf45: a5 15       ..  :0441[1]
    jsr l069e                                                         // bf47: 20 9e 06     .. :0443[1]
// $bf4a referenced 1 time by $044c
loop_c0446
    lda (l0012),y                                                     // bf4a: b1 12       ..  :0446[1]
    jsr l069e                                                         // bf4c: 20 9e 06     .. :0448[1]
    dey                                                               // bf4f: 88          .   :044b[1]
    bpl loop_c0446                                                    // bf50: 10 f8       ..  :044c[1]
    ldy #$18                                                          // bf52: a0 18       ..  :044e[1]
    sty tube_host_r1_status                                           // bf54: 8c e0 fe    ... :0450[1]
    lda l0518,x                                                       // bf57: bd 18 05    ... :0453[1]
    sta tube_host_r1_status                                           // bf5a: 8d e0 fe    ... :0456[1]
    lsr                                                               // bf5d: 4a          J   :0459[1]
    lsr                                                               // bf5e: 4a          J   :045a[1]
    bcc c0463                                                         // bf5f: 90 06       ..  :045b[1]
    bit tube_host_r3_data                                             // bf61: 2c e5 fe    ,.. :045d[1]
    bit tube_host_r3_data                                             // bf64: 2c e5 fe    ,.. :0460[1]
// $bf67 referenced 1 time by $045b
c0463
    jsr l069e                                                         // bf67: 20 9e 06     .. :0463[1]
// $bf6a referenced 1 time by $0469
loop_c0466
    bit tube_host_r4_status                                           // bf6a: 2c e6 fe    ,.. :0466[1]
    bvc loop_c0466                                                    // bf6d: 50 fb       P.  :0469[1]
    bcs c047a                                                         // bf6f: b0 0d       ..  :046b[1]
    cpx #4                                                            // bf71: e0 04       ..  :046d[1]
    bne c0482                                                         // bf73: d0 11       ..  :046f[1]
    jsr sub_c0414                                                     // bf75: 20 14 04     .. :0471[1]
    jsr l0695                                                         // bf78: 20 95 06     .. :0474[1]
    jmp l0032                                                         // bf7b: 4c 32 00    L2. :0477[1]

// $bf7e referenced 1 time by $046b
c047a
    lsr                                                               // bf7e: 4a          J   :047a[1]
    bcc c0482                                                         // bf7f: 90 05       ..  :047b[1]
    ldy #$88                                                          // bf81: a0 88       ..  :047d[1]
    sty tube_host_r1_status                                           // bf83: 8c e0 fe    ... :047f[1]
// $bf86 referenced 2 times by $046f, $047b
c0482
    plp                                                               // bf86: 28          (   :0482[1]
    rts                                                               // bf87: 60          `   :0483[1]

    .byt $58, $b0, $0a, $d0,   3, $4c, $9c,   5, $ae, $8d,   2, $f0   // bf88: 58 b0 0a... X.. :0484[1]
    .byt $e0                                                          // bf94: e0          .   :0490[1]
// $bf95 referenced 1 time by $bf9a
* = $bf95
// $bf95 referenced 1 time by $bf9a
loop_cbf95
// $bf95 referenced 1 time by $bf9a
    lda #$ff                                                          // bf95: a9 ff       ..
    jsr c0406                                                         // bf97: 20 06 04     ..
    bcc loop_cbf95                                                    // bf9a: 90 f9       ..
    jsr l04ce                                                         // bf9c: 20 ce 04     ..
// $bf9f referenced 1 time by $bfc4
cbf9f
    php                                                               // bf9f: 08          .
    sei                                                               // bfa0: 78          x
    lda #7                                                            // bfa1: a9 07       ..
    jsr l04c7                                                         // bfa3: 20 c7 04     ..
    ldy #0                                                            // bfa6: a0 00       ..
    sty l0000                                                         // bfa8: 84 00       ..
// $bfaa referenced 1 time by $bfb3
loop_cbfaa
    lda (l0000),y                                                     // bfaa: b1 00       ..
    sta tube_host_r3_data                                             // bfac: 8d e5 fe    ...
    nop                                                               // bfaf: ea          .
    nop                                                               // bfb0: ea          .
    nop                                                               // bfb1: ea          .
    iny                                                               // bfb2: c8          .
    bne loop_cbfaa                                                    // bfb3: d0 f5       ..
    plp                                                               // bfb5: 28          (
    inc l0054                                                         // bfb6: e6 54       .T
    bne cbfc0                                                         // bfb8: d0 06       ..
    inc l0055                                                         // bfba: e6 55       .U
    bne cbfc0                                                         // bfbc: d0 02       ..
    inc l0056                                                         // bfbe: e6 56       .V
// $bfc0 referenced 2 times by $bfb8, $bfbc
cbfc0
    inc l0001                                                         // bfc0: e6 01       ..
    bit l0001                                                         // bfc2: 24 01       $.
    bvc cbf9f                                                         // bfc4: 50 d9       P.
    jsr l04ce                                                         // bfc6: 20 ce 04     ..
    lda #4                                                            // bfc9: a9 04       ..
    ldy #0                                                            // bfcb: a0 00       ..
    ldx #$53 // 'S'                                                   // bfcd: a2 53       .S
    jmp c0406                                                         // bfcf: 4c 06 04    L..

    lda #$80                                                          // bfd2: a9 80       ..
    sta l0054                                                         // bfd4: 85 54       .T
    sta l0001                                                         // bfd6: 85 01       ..
    lda #$20 // ' '                                                   // bfd8: a9 20       .
    and rom_type                                                      // bfda: 2d 06 80    -..
    tay                                                               // bfdd: a8          .
    sty l0053                                                         // bfde: 84 53       .S
    beq cbffb                                                         // bfe0: f0 19       ..
    ldx copyright_offset                                              // bfe2: ae 07 80    ...
// $bfe5 referenced 1 time by $bfe9
loop_cbfe5
    inx                                                               // bfe5: e8          .
    lda rom_header,x                                                  // bfe6: bd 00 80    ...
    bne loop_cbfe5                                                    // bfe9: d0 fa       ..
    lda l8001,x                                                       // bfeb: bd 01 80    ...
    sta l0053                                                         // bfee: 85 53       .S
    lda l8002,x                                                       // bff0: bd 02 80    ...
    sta l0054                                                         // bff3: 85 54       .T
    ldy service_entry,x                                               // bff5: bc 03 80    ...
    lda l8004,x                                                       // bff8: bd 04 80    ...
// $bffb referenced 1 time by $bfe0
cbffb
    sta l0056                                                         // bffb: 85 56       .V
    sty l0055                                                         // bffd: 84 55       .U
    rts                                                               // bfff: 60          `

pydis_end

// Label references by decreasing frequency:
//     l009e:                                64
//     l0f05:                                48
//     l009c:                                42
//     l00ae:                                38
//     l009a:                                35
//     print_inline_top_bit_clear:           35
//     l00be:                                33
//     l00bb:                                31
//     l1071:                                30
//     l00b2:                                28
//     l00b4:                                25
//     osbyte:                               23
//     osasci:                               22
//     l00b8:                                21
//     l00a8:                                20
//     l00aa:                                20
//     l00ac:                                20
//     l0101:                                20
//     l9491:                                19
//     l10b8:                                18
//     osnewl:                               18
//     l00b0:                                17
//     l0e30:                                17
//     l00b5:                                16
//     os_text_ptr:                          15
//     c94ad:                                15
//     l0f06:                                14
//     l009b:                                13
//     l00a0:                                13
//     l00a6:                                13
//     l0d6c:                                13
//     l00a9:                                12
//     l10c8:                                12
//     la3f0:                                12
//     l0098:                                11
//     l00b6:                                11
//     l0100:                                11
//     l1030:                                11
//     generate_error_inline:                11
//     lfea1:                                11
//     l00ad:                                10
//     l0d61:                                10
//     l0d6a:                                10
//     l1060:                                10
//     l00b3:                                 9
//     l0f03:                                 9
//     l1000:                                 9
//     sub_caf04:                             9
//     sub_caf32:                             9
//     lfe18:                                 9
//     l00af:                                 8
//     l00c8:                                 8
//     romsel_copy:                           8
//     l97b9:                                 8
//     l009d:                                 7
//     l00bc:                                 7
//     l00c0:                                 7
//     l00c4:                                 7
//     l0d68:                                 7
//     l0df0:                                 7
//     l0e01:                                 7
//     generate_error_inline3:                7
//     sub_cafb5:                             7
//     cbf0a:                                 7
//     lfea0:                                 7
//     l0015:                                 6
//     l009f:                                 6
//     l00cc:                                 6
//     l00d0:                                 6
//     l00f3:                                 6
//     l069e:                                 6
//     l0d3e:                                 6
//     l0d60:                                 6
//     l0e00:                                 6
//     l0f02:                                 6
//     l10c9:                                 6
//     l10d8:                                 6
//     c9211:                                 6
//     sta_e09_if_d6c_b7_set:                 6
//     c9cc7:                                 6
//     sub_cb586:                             6
//     cbc3d:                                 6
//     l00b9:                                 5
//     l00ba:                                 5
//     l00bf:                                 5
//     l0d6b:                                 5
//     l0e05:                                 5
//     l0e07:                                 5
//     l1010:                                 5
//     l1040:                                 5
//     l10cf:                                 5
//     l10d4:                                 5
//     l10d5:                                 5
//     jump_table_dispatch_x_plus_y:          5
//     sub_c916e:                             5
//     sub_c95dd:                             5
//     l97ad:                                 5
//     sub_c983f:                             5
//     sub_ca140:                             5
//     caeb7:                                 5
//     sub_caf02:                             5
//     sub_cb509:                             5
//     tube_host_r1_status:                   5
//     l0099:                                 4
//     l00b7:                                 4
//     l00c1:                                 4
//     l0d62:                                 4
//     l0d71:                                 4
//     l0e03:                                 4
//     l0e09:                                 4
//     l0f07:                                 4
//     l0f08:                                 4
//     l1020:                                 4
//     l1098:                                 4
//     l10a8:                                 4
//     sub_c8cb9:                             4
//     c8dd2:                                 4
//     sub_c912f:                             4
//     c9215:                                 4
//     sub_c9473:                             4
//     generate_error_inline2:                4
//     c96f0:                                 4
//     sub_cae94:                             4
//     sub_cb0ea:                             4
//     sub_cb198:                             4
//     cb236:                                 4
//     cb55f:                                 4
//     cb59b:                                 4
//     sub_cb98a:                             4
//     sub_cb98f:                             4
//     video_ula_control:                     4
//     gsinit:                                4
//     gsread:                                4
//     osfind:                                4
//     oswrch:                                4
//     l0001:                                 3
//     l0054:                                 3
//     l00a1:                                 3
//     l00b1:                                 3
//     l00bd:                                 3
//     l00f0:                                 3
//     l0102:                                 3
//     l0355:                                 3
//     l0d0c:                                 3
//     l0d0d:                                 3
//     l0d3f:                                 3
//     l0d40:                                 3
//     l0d63:                                 3
//     l0d69:                                 3
//     l0e02:                                 3
//     l0e04:                                 3
//     l0e0a:                                 3
//     l0e31:                                 3
//     l0f00:                                 3
//     l0f09:                                 3
//     l0fc8:                                 3
//     l1078:                                 3
//     l1088:                                 3
//     l10ca:                                 3
//     l10cc:                                 3
//     l10d0:                                 3
//     l10f3:                                 3
//     c85fb:                                 3
//     c862f:                                 3
//     c8a98:                                 3
//     sub_c8aa0:                             3
//     sub_c8b02:                             3
//     c8c70:                                 3
//     just_rts:                              3
//     sub_c8e83:                             3
//     c8f8c:                                 3
//     c9208:                                 3
//     sub_c9258:                             3
//     c92fa:                                 3
//     c9311:                                 3
//     c95f4:                                 3
//     c98c9:                                 3
//     sub_ca0a7:                             3
//     ca25d:                                 3
//     sub_ca32b:                             3
//     ca38e:                                 3
//     la3f1:                                 3
//     la3f2:                                 3
//     cab36:                                 3
//     sub_cac24:                             3
//     cacdd:                                 3
//     sub_cae82:                             3
//     sub_cae97:                             3
//     caeda:                                 3
//     sub_caf06:                             3
//     caf88:                                 3
//     cb058:                                 3
//     cb153:                                 3
//     cb2d4:                                 3
//     sub_cb559:                             3
//     sub_cb799:                             3
//     cb9aa:                                 3
//     cbb68:                                 3
//     cbc1f:                                 3
//     tube_host_r3_data:                     3
//     l0000:                                 2
//     l0012:                                 2
//     l0014:                                 2
//     l0053:                                 2
//     l0055:                                 2
//     l0056:                                 2
//     l00a5:                                 2
//     l00a7:                                 2
//     l00ab:                                 2
//     l00ef:                                 2
//     osrdsc_ptr:                            2
//     l00ff:                                 2
//     evntv:                                 2
//     l028d:                                 2
//     l04ce:                                 2
//     l0d1e:                                 2
//     l0d20:                                 2
//     l0d21:                                 2
//     l0d22:                                 2
//     l0d24:                                 2
//     l0d25:                                 2
//     l0d65:                                 2
//     l0d6d:                                 2
//     l0dfe:                                 2
//     l0e06:                                 2
//     l0e08:                                 2
//     l0e2f:                                 2
//     l0e38:                                 2
//     l0f04:                                 2
//     l0f10:                                 2
//     l0f11:                                 2
//     l0f12:                                 2
//     l0fdc:                                 2
//     l0fdd:                                 2
//     l0fde:                                 2
//     l10d9:                                 2
//     c83fb:                                 2
//     sub_c858c:                             2
//     c8641:                                 2
//     c8945:                                 2
//     sub_c8969:                             2
//     c8978:                                 2
//     c8988:                                 2
//     c8a38:                                 2
//     service_handler_common2:               2
//     c8aba:                                 2
//     c8b0c:                                 2
//     c8b98:                                 2
//     c8bab:                                 2
//     c8be0:                                 2
//     sub_c8c33:                             2
//     c8c4d:                                 2
//     sub_c8c9f:                             2
//     sub_c8cc0:                             2
//     c8d37:                                 2
//     l8d38:                                 2
//     c8dbc:                                 2
//     c8e24:                                 2
//     l8e54:                                 2
//     c8eab:                                 2
//     c8f70:                                 2
//     sub_c8fcb:                             2
//     c8fe4:                                 2
//     c8ff1:                                 2
//     c91ae:                                 2
//     c91da:                                 2
//     c91fb:                                 2
//     c9229:                                 2
//     c9235:                                 2
//     c9266:                                 2
//     sub_c9269:                             2
//     sub_c9273:                             2
//     sub_c9295:                             2
//     sub_c92a4:                             2
//     sub_c9309:                             2
//     c9322:                                 2
//     sub_c9327:                             2
//     sub_c9349:                             2
//     c9363:                                 2
//     c93bc:                                 2
//     sub_c949b:                             2
//     c94ae:                                 2
//     c94d9:                                 2
//     sub_c94f0:                             2
//     c9504:                                 2
//     c9551:                                 2
//     sub_c9570:                             2
//     c9589:                                 2
//     c964e:                                 2
//     c9740:                                 2
//     sub_c974d:                             2
//     sub_c9771:                             2
//     sub_c977c:                             2
//     sub_c978d:                             2
//     sub_c9837:                             2
//     c986b:                                 2
//     c987e:                                 2
//     l9888:                                 2
//     c98eb:                                 2
//     c9926:                                 2
//     sub_c9998:                             2
//     sub_c9a62:                             2
//     c9a64:                                 2
//     sub_c9a72:                             2
//     sub_c9a7f:                             2
//     sub_c9a84:                             2
//     sub_c9a92:                             2
//     c9a96:                                 2
//     sub_c9a9a:                             2
//     c9b35:                                 2
//     sub_c9b95:                             2
//     c9ba8:                                 2
//     c9cc9:                                 2
//     c9dbb:                                 2
//     c9e09:                                 2
//     ca073:                                 2
//     sub_ca0cc:                             2
//     sub_ca0ce:                             2
//     ca0f7:                                 2
//     ca133:                                 2
//     ca159:                                 2
//     ca1a2:                                 2
//     ca1b7:                                 2
//     ca2ef:                                 2
//     ca303:                                 2
//     ca32e:                                 2
//     sub_ca362:                             2
//     ca365:                                 2
//     ca38b:                                 2
//     ca3e3:                                 2
//     ca522:                                 2
//     sub_ca865:                             2
//     ca889:                                 2
//     ca8c4:                                 2
//     caaa9:                                 2
//     caae2:                                 2
//     sub_cab12:                             2
//     cac30:                                 2
//     cac4a:                                 2
//     cae84:                                 2
//     caed8:                                 2
//     caedf:                                 2
//     caf5a:                                 2
//     sub_caf96:                             2
//     sub_cafc1:                             2
//     cafcd:                                 2
//     sub_cafd5:                             2
//     sub_cafe0:                             2
//     cb091:                                 2
//     sub_cb0cf:                             2
//     sub_cb0f6:                             2
//     cb144:                                 2
//     sub_cb15e:                             2
//     sub_cb16d:                             2
//     sub_cb2f7:                             2
//     cb305:                                 2
//     cb32c:                                 2
//     cb336:                                 2
//     sub_cb431:                             2
//     lb487:                                 2
//     cb577:                                 2
//     sub_cb595:                             2
//     cb5b7:                                 2
//     sub_cb5d8:                             2
//     sub_cb5fb:                             2
//     sub_cb66a:                             2
//     cb682:                                 2
//     cb718:                                 2
//     cb732:                                 2
//     cb735:                                 2
//     sub_cb984:                             2
//     cb9cd:                                 2
//     cb9e7:                                 2
//     sub_cb9ff:                             2
//     cba33:                                 2
//     cba53:                                 2
//     sub_cbadd:                             2
//     sub_cbb03:                             2
//     sub_cbb0e:                             2
//     cbb6f:                                 2
//     cbba2:                                 2
//     cbbbc:                                 2
//     sub_cbc44:                             2
//     sub_cbc86:                             2
//     cbe73:                                 2
//     cbec2:                                 2
//     lbf04:                                 2
//     cbf38:                                 2
//     cbf86:                                 2
//     cbfc0:                                 2
//     romsel:                                2
//     system_via_acr:                        2
//     system_via_ifr:                        2
//     osbget:                                2
//     osargs:                                2
//     osrdch:                                2
//     osword:                                2
//     l0013:                                 1
//     l0016:                                 1
//     l0032:                                 1
//     l0063:                                 1
//     l0078:                                 1
//     l00a2:                                 1
//     l00a3:                                 1
//     l00a4:                                 1
//     l00c2:                                 1
//     l00c7:                                 1
//     l00cd:                                 1
//     l00ed:                                 1
//     l00f7:                                 1
//     l00fd:                                 1
//     l0103:                                 1
//     l0104:                                 1
//     brkv:                                  1
//     brkv+1:                                1
//     filev:                                 1
//     fscv:                                  1
//     evntv+1:                               1
//     netv:                                  1
//     l026a:                                 1
//     l02a0:                                 1
//     l0350:                                 1
//     l0351:                                 1
//     l04c7:                                 1
//     l0500:                                 1
//     l0518:                                 1
//     l0600:                                 1
//     l0695:                                 1
//     l0cff:                                 1
//     l0d07:                                 1
//     l0d0e:                                 1
//     l0d11:                                 1
//     l0d1a:                                 1
//     l0d23:                                 1
//     l0d26:                                 1
//     l0d41:                                 1
//     l0d64:                                 1
//     l0d6e:                                 1
//     l0d6f:                                 1
//     l0e0b:                                 1
//     l0e14:                                 1
//     l0e32:                                 1
//     l0ef7:                                 1
//     l0f01:                                 1
//     l0f0a:                                 1
//     l0f0b:                                 1
//     l0f0c:                                 1
//     l0f0d:                                 1
//     l0f0e:                                 1
//     l0f13:                                 1
//     l0f14:                                 1
//     l0f2f:                                 1
//     l0f30:                                 1
//     l0fdf:                                 1
//     l0fe0:                                 1
//     l0ff0:                                 1
//     l0fff:                                 1
//     l1050:                                 1
//     l1070:                                 1
//     l1072:                                 1
//     l1073:                                 1
//     l1074:                                 1
//     l10cb:                                 1
//     l10cd:                                 1
//     l10ce:                                 1
//     l10d1:                                 1
//     l10d6:                                 1
//     l10d7:                                 1
//     rom_header:                            1
//     l8001:                                 1
//     l8002:                                 1
//     service_entry:                         1
//     l8004:                                 1
//     rom_type:                              1
//     copyright_offset:                      1
//     c8032:                                 1
//     sub_c805a:                             1
//     c805d:                                 1
//     c806c:                                 1
//     sub_c8074:                             1
//     loop_c8096:                            1
//     c80bd:                                 1
//     c80be:                                 1
//     c80d6:                                 1
//     c80e9:                                 1
//     c80fd:                                 1
//     c810a:                                 1
//     c83f8:                                 1
//     sub_c8449:                             1
//     c8452:                                 1
//     l84bb:                                 1
//     c8585:                                 1
//     c85a4:                                 1
//     loop_c85b8:                            1
//     c85cf:                                 1
//     loop_c85d9:                            1
//     c85e3:                                 1
//     l8600:                                 1
//     c8619:                                 1
//     c8633:                                 1
//     c863f:                                 1
//     c864d:                                 1
//     c8693:                                 1
//     loop_c869a:                            1
//     c86ac:                                 1
//     loop_c86c2:                            1
//     c86ce:                                 1
//     c86d5:                                 1
//     c86d8:                                 1
//     c86e3:                                 1
//     l8861:                                 1
//     l8869:                                 1
//     sub_c88f2:                             1
//     c8901:                                 1
//     loop_c8912:                            1
//     c8942:                                 1
//     c89a4:                                 1
//     l89a6:                                 1
//     jump_table_low:                        1
//     jump_table_high:                       1
//     service_handler:                       1
//     c8a33:                                 1
//     service_handler_common1:               1
//     c8a53:                                 1
//     c8a62:                                 1
//     c8a6f:                                 1
//     c8a71:                                 1
//     service_handler_not_vectors_changed:   1
//     c8acb:                                 1
//     c8ad1:                                 1
//     sub_c8aea:                             1
//     loop_c8aee:                            1
//     c8afb:                                 1
//     sub_c8b1a:                             1
//     loop_c8b26:                            1
//     c8b34:                                 1
//     loop_c8b39:                            1
//     loop_c8b4c:                            1
//     loop_c8b7a:                            1
//     c8b8d:                                 1
//     c8ba8:                                 1
//     c8bae:                                 1
//     c8bb6:                                 1
//     loop_c8bc0:                            1
//     loop_c8bca:                            1
//     c8bf0:                                 1
//     c8bf6:                                 1
//     c8c00:                                 1
//     loop_c8c06:                            1
//     c8c12:                                 1
//     c8c1f:                                 1
//     c8c24:                                 1
//     c8c26:                                 1
//     c8c2f:                                 1
//     loop_c8c45:                            1
//     c8c73:                                 1
//     c8c7d:                                 1
//     loop_c8c80:                            1
//     c8c98:                                 1
//     c8cc9:                                 1
//     c8cda:                                 1
//     c8ce0:                                 1
//     sub_c8cfc:                             1
//     sub_c8d05:                             1
//     c8d08:                                 1
//     c8d0a:                                 1
//     sub_c8d17:                             1
//     loop_c8d1b:                            1
//     c8d26:                                 1
//     loop_c8d2c:                            1
//     l8d61:                                 1
//     c8da7:                                 1
//     loop_c8dae:                            1
//     c8dbf:                                 1
//     loop_c8dc1:                            1
//     loop_c8de4:                            1
//     c8deb:                                 1
//     c8dfa:                                 1
//     sub_c8e09:                             1
//     c8e14:                                 1
//     c8e15:                                 1
//     c8e20:                                 1
//     l8e61:                                 1
//     sub_c8e85:                             1
//     loop_c8e87:                            1
//     sub_c8e8c:                             1
//     clamp_absolute_workspace_and_save:     1
//     c8eb3:                                 1
//     loop_c8eee:                            1
//     loop_c8f18:                            1
//     loop_c8f2e:                            1
//     c8f3d:                                 1
//     c8f40:                                 1
//     loop_c8f46:                            1
//     l8f48:                                 1
//     c8f4c:                                 1
//     sub_c8f5d:                             1
//     loop_c8f8e:                            1
//     sub_c8f99:                             1
//     loop_c8fb0:                            1
//     loop_c8fba:                            1
//     c8fbd:                                 1
//     c8fca:                                 1
//     loop_c8fd4:                            1
//     c901e:                                 1
//     l9022:                                 1
//     l9122:                                 1
//     sub_c9138:                             1
//     c9140:                                 1
//     loop_c914d:                            1
//     c9153:                                 1
//     c916b:                                 1
//     c917d:                                 1
//     c9188:                                 1
//     c9198:                                 1
//     c919a:                                 1
//     c91e3:                                 1
//     c91f9:                                 1
//     c9244:                                 1
//     sub_c9260:                             1
//     c9267:                                 1
//     c9277:                                 1
//     loop_c927b:                            1
//     c9283:                                 1
//     l9286:                                 1
//     sub_c9291:                             1
//     sub_c929b:                             1
//     c929f:                                 1
//     loop_c92a6:                            1
//     c92af:                                 1
//     loop_c9329:                            1
//     loop_c9332:                            1
//     c933e:                                 1
//     c9348:                                 1
//     loop_c934f:                            1
//     c9358:                                 1
//     c9371:                                 1
//     loop_c939b:                            1
//     c93a2:                                 1
//     c93ae:                                 1
//     c93ee:                                 1
//     loop_c93f0:                            1
//     c9405:                                 1
//     c940c:                                 1
//     c943c:                                 1
//     c9462:                                 1
//     sub_c9465:                             1
//     sub_c9467:                             1
//     loop_c9476:                            1
//     c9486:                                 1
//     l948b:                                 1
//     sub_c9497:                             1
//     c94b4:                                 1
//     c94b5:                                 1
//     loop_c94bb:                            1
//     c94d3:                                 1
//     loop_c94f8:                            1
//     c9502:                                 1
//     c9505:                                 1
//     c950e:                                 1
//     c951b:                                 1
//     loop_c9520:                            1
//     c9547:                                 1
//     c955b:                                 1
//     loop_c955d:                            1
//     c9576:                                 1
//     c9586:                                 1
//     c95ee:                                 1
//     c9607:                                 1
//     c9619:                                 1
//     c961a:                                 1
//     loop_c962a:                            1
//     c9636:                                 1
//     c9641:                                 1
//     c9649:                                 1
//     c964c:                                 1
//     c9651:                                 1
//     loop_c9668:                            1
//     c9674:                                 1
//     c9686:                                 1
//     c9688:                                 1
//     loop_c968c:                            1
//     c9698:                                 1
//     c969a:                                 1
//     loop_c96a9:                            1
//     c96af:                                 1
//     error_template_minus_1:                1
//     loop_c96c4:                            1
//     c96dd:                                 1
//     loop_c96e7:                            1
//     c96fa:                                 1
//     c96fd:                                 1
//     c971e:                                 1
//     c9722:                                 1
//     c972c:                                 1
//     loop_c9734:                            1
//     c9767:                                 1
//     loop_c9794:                            1
//     c97a4:                                 1
//     c97ac:                                 1
//     c9846:                                 1
//     c984f:                                 1
//     loop_c9865:                            1
//     c9873:                                 1
//     c9882:                                 1
//     sub_c9894:                             1
//     sub_c989c:                             1
//     loop_c989e:                            1
//     c98ab:                                 1
//     c98b8:                                 1
//     loop_c98c4:                            1
//     loop_c98d9:                            1
//     c98de:                                 1
//     c98f3:                                 1
//     loop_c98f8:                            1
//     c9902:                                 1
//     sub_c9913:                             1
//     loop_c991b:                            1
//     sub_c9951:                             1
//     c9969:                                 1
//     c996f:                                 1
//     loop_c9971:                            1
//     loop_c998c:                            1
//     loop_c99a1:                            1
//     loop_c99a3:                            1
//     loop_c99b7:                            1
//     c99c2:                                 1
//     c99c8:                                 1
//     loop_c99cd:                            1
//     loop_c99eb:                            1
//     c9a0c:                                 1
//     c9a19:                                 1
//     c9a1f:                                 1
//     c9a22:                                 1
//     loop_c9a2f:                            1
//     c9a32:                                 1
//     loop_c9a40:                            1
//     sub_c9a57:                             1
//     loop_c9a74:                            1
//     sub_c9a7e:                             1
//     c9a83:                                 1
//     loop_c9a87:                            1
//     sub_c9a91:                             1
//     c9aa0:                                 1
//     loop_c9aab:                            1
//     loop_c9abd:                            1
//     c9ac9:                                 1
//     loop_c9acb:                            1
//     c9ad2:                                 1
//     c9afb:                                 1
//     loop_c9b13:                            1
//     c9b20:                                 1
//     loop_c9b2a:                            1
//     c9b3c:                                 1
//     c9b41:                                 1
//     c9b47:                                 1
//     c9b4c:                                 1
//     c9b56:                                 1
//     loop_c9b78:                            1
//     loop_c9b85:                            1
//     c9b91:                                 1
//     c9b92:                                 1
//     loop_c9b9c:                            1
//     loop_c9bb3:                            1
//     c9bb5:                                 1
//     c9dd2:                                 1
//     c9dd5:                                 1
//     c9dda:                                 1
//     c9ddf:                                 1
//     c9e0b:                                 1
//     sub_c9e0f:                             1
//     sub_c9e16:                             1
//     sub_c9e17:                             1
//     loop_c9e19:                            1
//     c9e25:                                 1
//     c9e28:                                 1
//     sub_c9ed2:                             1
//     c9edd:                                 1
//     loop_c9ee8:                            1
//     c9ef3:                                 1
//     c9efc:                                 1
//     c9f0a:                                 1
//     loop_c9f27:                            1
//     loop_c9f3e:                            1
//     c9f52:                                 1
//     c9f55:                                 1
//     sub_c9f67:                             1
//     ca09b:                                 1
//     sub_ca09e:                             1
//     ca0bd:                                 1
//     ca0c5:                                 1
//     ca0c9:                                 1
//     ca0e3:                                 1
//     ca0f5:                                 1
//     ca109:                                 1
//     ca114:                                 1
//     ca125:                                 1
//     ca127:                                 1
//     ca142:                                 1
//     loop_ca14a:                            1
//     loop_ca165:                            1
//     ca16a:                                 1
//     loop_ca170:                            1
//     la17c:                                 1
//     ca185:                                 1
//     loop_ca187:                            1
//     ca18d:                                 1
//     ca191:                                 1
//     ca1a3:                                 1
//     loop_ca1a4:                            1
//     loop_ca1a8:                            1
//     ca1a9:                                 1
//     ca1be:                                 1
//     ca1c1:                                 1
//     ca1ca:                                 1
//     loop_ca1e2:                            1
//     ca1ea:                                 1
//     ca206:                                 1
//     ca209:                                 1
//     loop_ca21d:                            1
//     loop_ca225:                            1
//     loop_ca230:                            1
//     loop_ca241:                            1
//     ca243:                                 1
//     loop_ca245:                            1
//     ca25a:                                 1
//     ca26a:                                 1
//     loop_ca26c:                            1
//     ca27d:                                 1
//     la291:                                 1
//     ca299:                                 1
//     loop_ca2a2:                            1
//     loop_ca2a8:                            1
//     ca2f4:                                 1
//     sub_ca300:                             1
//     ca319:                                 1
//     ca327:                                 1
//     ca344:                                 1
//     ca352:                                 1
//     ca37b:                                 1
//     ca389:                                 1
//     ca3b4:                                 1
//     loop_ca3ce:                            1
//     la3df:                                 1
//     ca3e8:                                 1
//     la477:                                 1
//     loop_ca4fc:                            1
//     loop_ca50e:                            1
//     sub_ca516:                             1
//     la523:                                 1
//     la52a:                                 1
//     la841:                                 1
//     la84d:                                 1
//     loop_ca875:                            1
//     loop_ca89d:                            1
//     ca8b5:                                 1
//     sub_ca9be:                             1
//     sub_caa85:                             1
//     sub_caa89:                             1
//     caa8a:                                 1
//     caa9f:                                 1
//     caaa1:                                 1
//     caaa7:                                 1
//     caaad:                                 1
//     laab1:                                 1
//     sub_cab1b:                             1
//     cab33:                                 1
//     cab75:                                 1
//     cab84:                                 1
//     loop_cab89:                            1
//     loop_caba8:                            1
//     cabb5:                                 1
//     cabb7:                                 1
//     cabde:                                 1
//     cabf3:                                 1
//     cabfe:                                 1
//     cac10:                                 1
//     cac3f:                                 1
//     cac67:                                 1
//     loop_cac6f:                            1
//     lac80:                                 1
//     lac8c:                                 1
//     loop_cacaf:                            1
//     sub_cace4:                             1
//     sub_cacf7:                             1
//     sub_cacf9:                             1
//     lad0d:                                 1
//     cad20:                                 1
//     loop_cad29:                            1
//     cad2f:                                 1
//     lad43:                                 1
//     cad6f:                                 1
//     cad89:                                 1
//     cad96:                                 1
//     cadb2:                                 1
//     cade3:                                 1
//     caded:                                 1
//     loop_cae1c:                            1
//     cae27:                                 1
//     cae4f:                                 1
//     loop_cae6f:                            1
//     cae8f:                                 1
//     sub_cae92:                             1
//     loop_caebb:                            1
//     loop_caec9:                            1
//     caedb:                                 1
//     caee2:                                 1
//     caef1:                                 1
//     laefb:                                 1
//     laeff:                                 1
//     loop_caf07:                            1
//     caf16:                                 1
//     loop_caf1c:                            1
//     caf2b:                                 1
//     loop_caf2d:                            1
//     caf40:                                 1
//     sub_caf47:                             1
//     caf5c:                                 1
//     caf5f:                                 1
//     caf72:                                 1
//     sub_caf85:                             1
//     loop_caf9d:                            1
//     cafad:                                 1
//     cafb4:                                 1
//     loop_cafc0:                            1
//     cafd4:                                 1
//     caff8:                                 1
//     sub_cb017:                             1
//     sub_cb019:                             1
//     loop_cb01b:                            1
//     cb025:                                 1
//     cb028:                                 1
//     loop_cb032:                            1
//     loop_cb04a:                            1
//     cb06b:                                 1
//     cb083:                                 1
//     cb099:                                 1
//     cb0ae:                                 1
//     cb0b6:                                 1
//     cb0b9:                                 1
//     sub_cb0c5:                             1
//     cb0da:                                 1
//     loop_cb108:                            1
//     cb118:                                 1
//     cb11c:                                 1
//     lb13f:                                 1
//     sub_cb165:                             1
//     loop_cb16f:                            1
//     loop_cb179:                            1
//     loop_cb18b:                            1
//     lb194:                                 1
//     cb1a8:                                 1
//     cb1b1:                                 1
//     cb205:                                 1
//     cb208:                                 1
//     loop_cb210:                            1
//     loop_cb228:                            1
//     loop_cb253:                            1
//     cb261:                                 1
//     cb267:                                 1
//     cb29c:                                 1
//     loop_cb2a0:                            1
//     cb2ac:                                 1
//     cb2d7:                                 1
//     cb2df:                                 1
//     sub_cb2e0:                             1
//     loop_cb2e2:                            1
//     cb2ed:                                 1
//     cb2ef:                                 1
//     cb316:                                 1
//     loop_cb31a:                            1
//     cb335:                                 1
//     loop_cb347:                            1
//     cb369:                                 1
//     cb39c:                                 1
//     loop_cb39f:                            1
//     cb3a3:                                 1
//     cb3a8:                                 1
//     cb3b1:                                 1
//     loop_cb3b5:                            1
//     loop_cb3d9:                            1
//     cb3ed:                                 1
//     loop_cb3ff:                            1
//     cb408:                                 1
//     cb40c:                                 1
//     cb40e:                                 1
//     cb41d:                                 1
//     cb423:                                 1
//     loop_cb424:                            1
//     cb448:                                 1
//     sub_cb449:                             1
//     loop_cb44c:                            1
//     loop_cb45c:                            1
//     sub_cb46b:                             1
//     cb475:                                 1
//     cb477:                                 1
//     cb483:                                 1
//     sub_cb4ad:                             1
//     cb4c1:                                 1
//     loop_cb4cc:                            1
//     loop_cb4df:                            1
//     loop_cb50c:                            1
//     cb51a:                                 1
//     sub_cb53d:                             1
//     cb557:                                 1
//     cb563:                                 1
//     cb594:                                 1
//     cb5a2:                                 1
//     cb5ac:                                 1
//     cb5b6:                                 1
//     cb5be:                                 1
//     cb5cd:                                 1
//     loop_cb5ea:                            1
//     cb63b:                                 1
//     cb661:                                 1
//     loop_cb66c:                            1
//     cb67f:                                 1
//     cb6c6:                                 1
//     cb6ea:                                 1
//     loop_cb709:                            1
//     cb70e:                                 1
//     sub_cb721:                             1
//     loop_cb723:                            1
//     loop_cb72d:                            1
//     sub_cb730:                             1
//     cb74f:                                 1
//     cb788:                                 1
//     loop_cb79f:                            1
//     loop_cb7ab:                            1
//     cb7b6:                                 1
//     cb7bc:                                 1
//     loop_cb7c3:                            1
//     sub_cb8da:                             1
//     cb8f3:                                 1
//     sub_cb92b:                             1
//     loop_cb95e:                            1
//     cb96b:                                 1
//     cb974:                                 1
//     cb9a0:                                 1
//     cb9b6:                                 1
//     cb9c5:                                 1
//     loop_cb9c7:                            1
//     cb9da:                                 1
//     cb9ed:                                 1
//     cb9f4:                                 1
//     cb9f9:                                 1
//     cba04:                                 1
//     loop_cba22:                            1
//     loop_cba3a:                            1
//     cba4c:                                 1
//     cba5a:                                 1
//     cba65:                                 1
//     loop_cba67:                            1
//     loop_cba78:                            1
//     loop_cba90:                            1
//     loop_cba95:                            1
//     cbaab:                                 1
//     loop_cbab6:                            1
//     loop_cbabe:                            1
//     cbac0:                                 1
//     cbacf:                                 1
//     cbad8:                                 1
//     loop_cbaf2:                            1
//     loop_cbb13:                            1
//     cbb1a:                                 1
//     cbb39:                                 1
//     loop_cbb40:                            1
//     loop_cbb43:                            1
//     cbb64:                                 1
//     loop_cbb6e:                            1
//     sub_cbb77:                             1
//     loop_cbb90:                            1
//     cbb9c:                                 1
//     loop_cbbb7:                            1
//     loop_cbbd4:                            1
//     loop_cbbe7:                            1
//     loop_cbbf6:                            1
//     loop_cbc03:                            1
//     cbc0a:                                 1
//     loop_cbc24:                            1
//     loop_cbc34:                            1
//     cbc6a:                                 1
//     loop_cbc72:                            1
//     loop_cbc7d:                            1
//     cbc84:                                 1
//     sub_cbc89:                             1
//     sub_cbc8c:                             1
//     lbc94:                                 1
//     lbd94:                                 1
//     service_handler_tube_service_calls:    1
//     cbe83:                                 1
//     loop_cbe9e:                            1
//     loop_cbeb8:                            1
//     cbec0:                                 1
//     lbec3:                                 1
//     sub_cbf18:                             1
//     sub_cbf25:                             1
//     cbf2c:                                 1
//     cbf36:                                 1
//     cbf39:                                 1
//     cbf4a:                                 1
//     cbf67:                                 1
//     cbf6a:                                 1
//     cbf7e:                                 1
//     loop_cbf95:                            1
//     cbf9f:                                 1
//     loop_cbfaa:                            1
//     loop_cbfe5:                            1
//     cbffb:                                 1
//     system_via_sr:                         1
//     system_via_ier:                        1
//     lfe87:                                 1
//     lfea2:                                 1
//     lfea3:                                 1
//     tube_host_r1_data:                     1
//     tube_host_r4_status:                   1
//     lffb0:                                 1
//     osrdsc:                                1
//     lffbd:                                 1
//     osfile:                                1
//     oscli:                                 1

// Automatically generated labels:
//     c0406
//     c0428
//     c0432
//     c0434
//     c0435
//     c0463
//     c047a
//     c0482
//     c8032
//     c805d
//     c806c
//     c80bd
//     c80be
//     c80d6
//     c80e9
//     c80fd
//     c810a
//     c83f8
//     c83fb
//     c8452
//     c8585
//     c85a4
//     c85cf
//     c85e3
//     c85fb
//     c8619
//     c862f
//     c8633
//     c863f
//     c8641
//     c864d
//     c8693
//     c86ac
//     c86ce
//     c86d5
//     c86d8
//     c86e3
//     c8901
//     c8942
//     c8945
//     c8978
//     c8988
//     c89a4
//     c8a33
//     c8a38
//     c8a53
//     c8a62
//     c8a6f
//     c8a71
//     c8a98
//     c8aba
//     c8acb
//     c8ad1
//     c8afb
//     c8b0c
//     c8b34
//     c8b8d
//     c8b98
//     c8ba8
//     c8bab
//     c8bae
//     c8bb6
//     c8be0
//     c8bf0
//     c8bf6
//     c8c00
//     c8c12
//     c8c1f
//     c8c24
//     c8c26
//     c8c2f
//     c8c4d
//     c8c70
//     c8c73
//     c8c7d
//     c8c98
//     c8cc9
//     c8cda
//     c8ce0
//     c8d08
//     c8d0a
//     c8d26
//     c8d37
//     c8da7
//     c8dbc
//     c8dbf
//     c8dd2
//     c8deb
//     c8dfa
//     c8e14
//     c8e15
//     c8e20
//     c8e24
//     c8eab
//     c8eb3
//     c8f3d
//     c8f40
//     c8f4c
//     c8f70
//     c8f8c
//     c8fbd
//     c8fca
//     c8fe4
//     c8ff1
//     c901e
//     c9140
//     c9153
//     c916b
//     c917d
//     c9188
//     c9198
//     c919a
//     c91ae
//     c91da
//     c91e3
//     c91f9
//     c91fb
//     c9208
//     c9211
//     c9215
//     c9229
//     c9235
//     c9244
//     c9266
//     c9267
//     c9277
//     c9283
//     c929f
//     c92af
//     c92fa
//     c9311
//     c9322
//     c933e
//     c9348
//     c9358
//     c9363
//     c9371
//     c93a2
//     c93ae
//     c93bc
//     c93ee
//     c9405
//     c940c
//     c943c
//     c9462
//     c9486
//     c94ad
//     c94ae
//     c94b4
//     c94b5
//     c94d3
//     c94d9
//     c9502
//     c9504
//     c9505
//     c950e
//     c951b
//     c9547
//     c9551
//     c955b
//     c9576
//     c9586
//     c9589
//     c95ee
//     c95f4
//     c9607
//     c9619
//     c961a
//     c9636
//     c9641
//     c9649
//     c964c
//     c964e
//     c9651
//     c9674
//     c9686
//     c9688
//     c9698
//     c969a
//     c96af
//     c96dd
//     c96f0
//     c96fa
//     c96fd
//     c971e
//     c9722
//     c972c
//     c9740
//     c9767
//     c97a4
//     c97ac
//     c9846
//     c984f
//     c986b
//     c9873
//     c987e
//     c9882
//     c98ab
//     c98b8
//     c98c9
//     c98de
//     c98eb
//     c98f3
//     c9902
//     c9926
//     c9969
//     c996f
//     c99c2
//     c99c8
//     c9a0c
//     c9a19
//     c9a1f
//     c9a22
//     c9a32
//     c9a64
//     c9a83
//     c9a96
//     c9aa0
//     c9ac9
//     c9ad2
//     c9afb
//     c9b20
//     c9b35
//     c9b3c
//     c9b41
//     c9b47
//     c9b4c
//     c9b56
//     c9b91
//     c9b92
//     c9ba8
//     c9bb5
//     c9cc7
//     c9cc9
//     c9dbb
//     c9dd2
//     c9dd5
//     c9dda
//     c9ddf
//     c9e09
//     c9e0b
//     c9e25
//     c9e28
//     c9edd
//     c9ef3
//     c9efc
//     c9f0a
//     c9f52
//     c9f55
//     ca073
//     ca09b
//     ca0bd
//     ca0c5
//     ca0c9
//     ca0e3
//     ca0f5
//     ca0f7
//     ca109
//     ca114
//     ca125
//     ca127
//     ca133
//     ca142
//     ca159
//     ca16a
//     ca185
//     ca18d
//     ca191
//     ca1a2
//     ca1a3
//     ca1a9
//     ca1b7
//     ca1be
//     ca1c1
//     ca1ca
//     ca1ea
//     ca206
//     ca209
//     ca243
//     ca25a
//     ca25d
//     ca26a
//     ca27d
//     ca299
//     ca2ef
//     ca2f4
//     ca303
//     ca319
//     ca327
//     ca32e
//     ca344
//     ca352
//     ca365
//     ca37b
//     ca389
//     ca38b
//     ca38e
//     ca3b4
//     ca3e3
//     ca3e8
//     ca522
//     ca889
//     ca8b5
//     ca8c4
//     caa8a
//     caa9f
//     caaa1
//     caaa7
//     caaa9
//     caaad
//     caae2
//     cab33
//     cab36
//     cab75
//     cab84
//     cabb5
//     cabb7
//     cabde
//     cabf3
//     cabfe
//     cac10
//     cac30
//     cac3f
//     cac4a
//     cac67
//     cacdd
//     cad20
//     cad2f
//     cad6f
//     cad89
//     cad96
//     cadb2
//     cade3
//     caded
//     cae27
//     cae4f
//     cae84
//     cae8f
//     caeb7
//     caed8
//     caeda
//     caedb
//     caedf
//     caee2
//     caef1
//     caf16
//     caf2b
//     caf40
//     caf5a
//     caf5c
//     caf5f
//     caf72
//     caf88
//     cafad
//     cafb4
//     cafcd
//     cafd4
//     caff8
//     cb025
//     cb028
//     cb058
//     cb06b
//     cb083
//     cb091
//     cb099
//     cb0ae
//     cb0b6
//     cb0b9
//     cb0da
//     cb118
//     cb11c
//     cb144
//     cb153
//     cb1a8
//     cb1b1
//     cb205
//     cb208
//     cb236
//     cb261
//     cb267
//     cb29c
//     cb2ac
//     cb2d4
//     cb2d7
//     cb2df
//     cb2ed
//     cb2ef
//     cb305
//     cb316
//     cb32c
//     cb335
//     cb336
//     cb369
//     cb39c
//     cb3a3
//     cb3a8
//     cb3b1
//     cb3ed
//     cb408
//     cb40c
//     cb40e
//     cb41d
//     cb423
//     cb448
//     cb475
//     cb477
//     cb483
//     cb4c1
//     cb51a
//     cb557
//     cb55f
//     cb563
//     cb577
//     cb594
//     cb59b
//     cb5a2
//     cb5ac
//     cb5b6
//     cb5b7
//     cb5be
//     cb5cd
//     cb63b
//     cb661
//     cb67f
//     cb682
//     cb6c6
//     cb6ea
//     cb70e
//     cb718
//     cb732
//     cb735
//     cb74f
//     cb788
//     cb7b6
//     cb7bc
//     cb8f3
//     cb96b
//     cb974
//     cb9a0
//     cb9aa
//     cb9b6
//     cb9c5
//     cb9cd
//     cb9da
//     cb9e7
//     cb9ed
//     cb9f4
//     cb9f9
//     cba04
//     cba33
//     cba4c
//     cba53
//     cba5a
//     cba65
//     cbaab
//     cbac0
//     cbacf
//     cbad8
//     cbb1a
//     cbb39
//     cbb64
//     cbb68
//     cbb6f
//     cbb9c
//     cbba2
//     cbbbc
//     cbc0a
//     cbc1f
//     cbc3d
//     cbc6a
//     cbc84
//     cbe73
//     cbe83
//     cbec0
//     cbec2
//     cbf0a
//     cbf2c
//     cbf36
//     cbf38
//     cbf39
//     cbf4a
//     cbf67
//     cbf6a
//     cbf7e
//     cbf86
//     cbf9f
//     cbfc0
//     cbffb
//     l0000
//     l0001
//     l0012
//     l0013
//     l0014
//     l0015
//     l0016
//     l0032
//     l0053
//     l0054
//     l0055
//     l0056
//     l0063
//     l0078
//     l0098
//     l0099
//     l009a
//     l009b
//     l009c
//     l009d
//     l009e
//     l009f
//     l00a0
//     l00a1
//     l00a2
//     l00a3
//     l00a4
//     l00a5
//     l00a6
//     l00a7
//     l00a8
//     l00a9
//     l00aa
//     l00ab
//     l00ac
//     l00ad
//     l00ae
//     l00af
//     l00b0
//     l00b1
//     l00b2
//     l00b3
//     l00b4
//     l00b5
//     l00b6
//     l00b7
//     l00b8
//     l00b9
//     l00ba
//     l00bb
//     l00bc
//     l00bd
//     l00be
//     l00bf
//     l00c0
//     l00c1
//     l00c2
//     l00c4
//     l00c7
//     l00c8
//     l00cc
//     l00cd
//     l00d0
//     l00ed
//     l00ef
//     l00f0
//     l00f3
//     l00f7
//     l00fd
//     l00ff
//     l0100
//     l0101
//     l0102
//     l0103
//     l0104
//     l026a
//     l028d
//     l02a0
//     l0350
//     l0351
//     l0355
//     l0400
//     l04c7
//     l04ce
//     l0500
//     l0518
//     l0600
//     l0601
//     l0695
//     l069e
//     l0a00
//     l0a81
//     l0cff
//     l0d07
//     l0d0c
//     l0d0d
//     l0d0e
//     l0d11
//     l0d1a
//     l0d1e
//     l0d20
//     l0d21
//     l0d22
//     l0d23
//     l0d24
//     l0d25
//     l0d26
//     l0d3e
//     l0d3f
//     l0d40
//     l0d41
//     l0d60
//     l0d61
//     l0d62
//     l0d63
//     l0d64
//     l0d65
//     l0d68
//     l0d69
//     l0d6a
//     l0d6b
//     l0d6c
//     l0d6d
//     l0d6e
//     l0d6f
//     l0d71
//     l0df0
//     l0dfe
//     l0e00
//     l0e01
//     l0e02
//     l0e03
//     l0e04
//     l0e05
//     l0e06
//     l0e07
//     l0e08
//     l0e09
//     l0e0a
//     l0e0b
//     l0e14
//     l0e2f
//     l0e30
//     l0e31
//     l0e32
//     l0e38
//     l0e81
//     l0ef7
//     l0f00
//     l0f01
//     l0f02
//     l0f03
//     l0f04
//     l0f05
//     l0f06
//     l0f07
//     l0f08
//     l0f09
//     l0f0a
//     l0f0b
//     l0f0c
//     l0f0d
//     l0f0e
//     l0f10
//     l0f11
//     l0f12
//     l0f13
//     l0f14
//     l0f2f
//     l0f30
//     l0fc8
//     l0fdc
//     l0fdd
//     l0fde
//     l0fdf
//     l0fe0
//     l0ff0
//     l0fff
//     l1000
//     l1010
//     l1020
//     l1030
//     l1040
//     l1050
//     l1060
//     l1070
//     l1071
//     l1072
//     l1073
//     l1074
//     l1078
//     l1088
//     l1098
//     l10a8
//     l10b8
//     l10c8
//     l10c9
//     l10ca
//     l10cb
//     l10cc
//     l10cd
//     l10ce
//     l10cf
//     l10d0
//     l10d1
//     l10d4
//     l10d5
//     l10d6
//     l10d7
//     l10d8
//     l10d9
//     l10f3
//     l8001
//     l8002
//     l8004
//     l84bb
//     l8600
//     l8861
//     l8869
//     l89a6
//     l8d38
//     l8d61
//     l8e54
//     l8e61
//     l8f48
//     l9022
//     l9122
//     l9286
//     l948b
//     l9491
//     l97ad
//     l97b9
//     l9888
//     la17c
//     la291
//     la3df
//     la3f0
//     la3f1
//     la3f2
//     la477
//     la523
//     la52a
//     la841
//     la84d
//     laab1
//     lac80
//     lac8c
//     lad0d
//     lad43
//     laefb
//     laeff
//     lb13f
//     lb194
//     lb487
//     lbc94
//     lbd94
//     lbec3
//     lbf04
//     lfe18
//     lfe87
//     lfea0
//     lfea1
//     lfea2
//     lfea3
//     lffb0
//     lffbd
//     loop_c0446
//     loop_c0466
//     loop_c8096
//     loop_c85b8
//     loop_c85d9
//     loop_c869a
//     loop_c86c2
//     loop_c8912
//     loop_c8aee
//     loop_c8b26
//     loop_c8b39
//     loop_c8b4c
//     loop_c8b7a
//     loop_c8bc0
//     loop_c8bca
//     loop_c8c06
//     loop_c8c45
//     loop_c8c80
//     loop_c8d1b
//     loop_c8d2c
//     loop_c8dae
//     loop_c8dc1
//     loop_c8de4
//     loop_c8e87
//     loop_c8eee
//     loop_c8f18
//     loop_c8f2e
//     loop_c8f46
//     loop_c8f8e
//     loop_c8fb0
//     loop_c8fba
//     loop_c8fd4
//     loop_c914d
//     loop_c927b
//     loop_c92a6
//     loop_c9329
//     loop_c9332
//     loop_c934f
//     loop_c939b
//     loop_c93f0
//     loop_c9476
//     loop_c94bb
//     loop_c94f8
//     loop_c9520
//     loop_c955d
//     loop_c962a
//     loop_c9668
//     loop_c968c
//     loop_c96a9
//     loop_c96c4
//     loop_c96e7
//     loop_c9734
//     loop_c9794
//     loop_c9865
//     loop_c989e
//     loop_c98c4
//     loop_c98d9
//     loop_c98f8
//     loop_c991b
//     loop_c9971
//     loop_c998c
//     loop_c99a1
//     loop_c99a3
//     loop_c99b7
//     loop_c99cd
//     loop_c99eb
//     loop_c9a2f
//     loop_c9a40
//     loop_c9a74
//     loop_c9a87
//     loop_c9aab
//     loop_c9abd
//     loop_c9acb
//     loop_c9b13
//     loop_c9b2a
//     loop_c9b78
//     loop_c9b85
//     loop_c9b9c
//     loop_c9bb3
//     loop_c9e19
//     loop_c9ee8
//     loop_c9f27
//     loop_c9f3e
//     loop_ca14a
//     loop_ca165
//     loop_ca170
//     loop_ca187
//     loop_ca1a4
//     loop_ca1a8
//     loop_ca1e2
//     loop_ca21d
//     loop_ca225
//     loop_ca230
//     loop_ca241
//     loop_ca245
//     loop_ca26c
//     loop_ca2a2
//     loop_ca2a8
//     loop_ca3ce
//     loop_ca4fc
//     loop_ca50e
//     loop_ca875
//     loop_ca89d
//     loop_cab89
//     loop_caba8
//     loop_cac6f
//     loop_cacaf
//     loop_cad29
//     loop_cae1c
//     loop_cae6f
//     loop_caebb
//     loop_caec9
//     loop_caf07
//     loop_caf1c
//     loop_caf2d
//     loop_caf9d
//     loop_cafc0
//     loop_cb01b
//     loop_cb032
//     loop_cb04a
//     loop_cb108
//     loop_cb16f
//     loop_cb179
//     loop_cb18b
//     loop_cb210
//     loop_cb228
//     loop_cb253
//     loop_cb2a0
//     loop_cb2e2
//     loop_cb31a
//     loop_cb347
//     loop_cb39f
//     loop_cb3b5
//     loop_cb3d9
//     loop_cb3ff
//     loop_cb424
//     loop_cb44c
//     loop_cb45c
//     loop_cb4cc
//     loop_cb4df
//     loop_cb50c
//     loop_cb5ea
//     loop_cb66c
//     loop_cb709
//     loop_cb723
//     loop_cb72d
//     loop_cb79f
//     loop_cb7ab
//     loop_cb7c3
//     loop_cb95e
//     loop_cb9c7
//     loop_cba22
//     loop_cba3a
//     loop_cba67
//     loop_cba78
//     loop_cba90
//     loop_cba95
//     loop_cbab6
//     loop_cbabe
//     loop_cbaf2
//     loop_cbb13
//     loop_cbb40
//     loop_cbb43
//     loop_cbb6e
//     loop_cbb90
//     loop_cbbb7
//     loop_cbbd4
//     loop_cbbe7
//     loop_cbbf6
//     loop_cbc03
//     loop_cbc24
//     loop_cbc34
//     loop_cbc72
//     loop_cbc7d
//     loop_cbe9e
//     loop_cbeb8
//     loop_cbf95
//     loop_cbfaa
//     loop_cbfe5
//     sub_c0414
//     sub_c0421
//     sub_c8028
//     sub_c805a
//     sub_c8074
//     sub_c8090
//     sub_c8449
//     sub_c858c
//     sub_c85ff
//     sub_c8689
//     sub_c868d
//     sub_c8691
//     sub_c86d3
//     sub_c88f2
//     sub_c8969
//     sub_c8983
//     sub_c8aa0
//     sub_c8ad4
//     sub_c8aea
//     sub_c8b02
//     sub_c8b0d
//     sub_c8b1a
//     sub_c8b92
//     sub_c8b96
//     sub_c8c33
//     sub_c8c4e
//     sub_c8c5d
//     sub_c8c9f
//     sub_c8cb9
//     sub_c8cc0
//     sub_c8cca
//     sub_c8cfc
//     sub_c8d05
//     sub_c8d17
//     sub_c8d79
//     sub_c8e09
//     sub_c8e52
//     sub_c8e83
//     sub_c8e85
//     sub_c8e8c
//     sub_c8e92
//     sub_c8f5d
//     sub_c8f99
//     sub_c8fcb
//     sub_c912f
//     sub_c9138
//     sub_c916e
//     sub_c9258
//     sub_c9260
//     sub_c9269
//     sub_c9273
//     sub_c9291
//     sub_c9295
//     sub_c929b
//     sub_c92a4
//     sub_c92b0
//     sub_c92e6
//     sub_c9309
//     sub_c9327
//     sub_c9349
//     sub_c938b
//     sub_c93dd
//     sub_c9465
//     sub_c9467
//     sub_c9473
//     sub_c9497
//     sub_c949b
//     sub_c949e
//     sub_c94f0
//     sub_c9570
//     sub_c9580
//     sub_c95ae
//     sub_c95be
//     sub_c95ce
//     sub_c95dd
//     sub_c96b3
//     sub_c974d
//     sub_c9771
//     sub_c977c
//     sub_c978d
//     sub_c9837
//     sub_c983f
//     sub_c9894
//     sub_c989c
//     sub_c9913
//     sub_c9951
//     sub_c9998
//     sub_c9a57
//     sub_c9a62
//     sub_c9a72
//     sub_c9a7e
//     sub_c9a7f
//     sub_c9a84
//     sub_c9a91
//     sub_c9a92
//     sub_c9a9a
//     sub_c9b95
//     sub_c9dc8
//     sub_c9dee
//     sub_c9e0f
//     sub_c9e16
//     sub_c9e17
//     sub_c9ed2
//     sub_c9f67
//     sub_ca07b
//     sub_ca09e
//     sub_ca0a7
//     sub_ca0cc
//     sub_ca0ce
//     sub_ca0e4
//     sub_ca0ea
//     sub_ca0fa
//     sub_ca140
//     sub_ca2fa
//     sub_ca300
//     sub_ca32b
//     sub_ca356
//     sub_ca362
//     sub_ca391
//     sub_ca39b
//     sub_ca4ee
//     sub_ca516
//     sub_ca865
//     sub_ca9be
//     sub_caa85
//     sub_caa89
//     sub_cab12
//     sub_cab1b
//     sub_cac24
//     sub_cac98
//     sub_cace4
//     sub_cacf7
//     sub_cacf9
//     sub_cad10
//     sub_cad41
//     sub_cad5f
//     sub_cad65
//     sub_cad6b
//     sub_cad80
//     sub_cae82
//     sub_cae92
//     sub_cae94
//     sub_cae97
//     sub_caf02
//     sub_caf04
//     sub_caf06
//     sub_caf32
//     sub_caf3e
//     sub_caf47
//     sub_caf66
//     sub_caf85
//     sub_caf96
//     sub_cafb5
//     sub_cafc1
//     sub_cafd5
//     sub_cafe0
//     sub_cafee
//     sub_cb017
//     sub_cb019
//     sub_cb0c5
//     sub_cb0cf
//     sub_cb0ea
//     sub_cb0f6
//     sub_cb13e
//     sub_cb15e
//     sub_cb165
//     sub_cb16d
//     sub_cb198
//     sub_cb1c3
//     sub_cb2e0
//     sub_cb2f7
//     sub_cb30c
//     sub_cb33d
//     sub_cb359
//     sub_cb431
//     sub_cb449
//     sub_cb46b
//     sub_cb485
//     sub_cb4ad
//     sub_cb509
//     sub_cb53d
//     sub_cb559
//     sub_cb586
//     sub_cb595
//     sub_cb5d8
//     sub_cb5fb
//     sub_cb66a
//     sub_cb721
//     sub_cb730
//     sub_cb799
//     sub_cb8da
//     sub_cb92b
//     sub_cb984
//     sub_cb98a
//     sub_cb98f
//     sub_cb994
//     sub_cb99a
//     sub_cb99d
//     sub_cb9ff
//     sub_cba1b
//     sub_cbadd
//     sub_cbb03
//     sub_cbb0e
//     sub_cbb77
//     sub_cbc44
//     sub_cbc86
//     sub_cbc89
//     sub_cbc8c
//     sub_cbf18
//     sub_cbf25
