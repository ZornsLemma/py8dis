; Constants
opcode_bcs                            = 176
opcode_rti                            = 64
osbyte_close_spool_exec               = 119
osbyte_explode_chars                  = 20
osbyte_issue_service_request          = 143
osbyte_read_himem                     = 132
osbyte_read_oshwm                     = 131
osbyte_read_rom_info_table_low        = 170
osbyte_read_tube_presence             = 234
osbyte_read_write_spool_file_handle   = 199
osbyte_read_write_startup_options     = 255
osbyte_rw_exec_handle                 = 198
osbyte_scan_keyboard_from_16          = 122
osbyte_write_keys_pressed             = 120
osbyte_write_shadow_memory_use        = 114
osfile_load                           = 255
osfile_read_catalogue_info            = 5
osfile_save                           = 0
osfind_close                          = 0
osfind_open_input                     = 64
osfind_open_output                    = 128
service_absolute_workspace_claimed    = 10
service_boot                          = 3
service_check_swr_presence            = 43
service_claim_absolute_workspace      = 1
service_claim_private_workspace       = 2
service_help                          = 9
service_select_filing_system          = 18
service_tube_post_init                = 254
service_unrecognised_command          = 4
service_unrecognised_osword           = 8
tube_brkv_handler_fwd                 = 22

; Memory locations
l0000               = $00
l0001               = $01
l0002               = $02
l0003               = $03
l0012               = $12
l0013               = $13
l0014               = $14
l0015               = $15
l00a0               = $a0
l00a1               = $a1
l00a2               = $a2
l00a3               = $a3
l00a4               = $a4
l00a5               = $a5
l00a6               = $a6
l00a7               = $a7
l00a8               = $a8
l00a9               = $a9
l00aa               = $aa
l00ab               = $ab
l00ac               = $ac
l00ad               = $ad
l00ae               = $ae
l00af               = $af
l00b0               = $b0
l00b1               = $b1
l00b2               = $b2
l00b3               = $b3
l00b4               = $b4
l00b5               = $b5
l00b6               = $b6
l00b7               = $b7
l00b8               = $b8
l00b9               = $b9
l00ba               = $ba
l00bb               = $bb
l00bc               = $bc
l00bd               = $bd
l00be               = $be
l00bf               = $bf
l00c0               = $c0
l00c1               = $c1
l00c2               = $c2
l00c3               = $c3
l00c4               = $c4
l00c5               = $c5
l00c6               = $c6
l00c7               = $c7
l00c8               = $c8
l00c9               = $c9
l00ca               = $ca
l00cc               = $cc
l00cd               = $cd
l00ce               = $ce
l00cf               = $cf
l00ef               = $ef
l00f0               = $f0
l00f1               = $f1
os_text_ptr         = $f2
l00f3               = $f3
romsel_copy         = $f4
osrdsc_ptr          = $f6
l00f7               = $f7
l00fd               = $fd
l00ff               = $ff
l0100               = $0100
l0101               = $0101
l0102               = $0102
l0103               = $0103
l0104               = $0104
l0105               = $0105
l0107               = $0107
l0109               = $0109
l010b               = $010b
l010c               = $010c
l010d               = $010d
l010e               = $010e
l0128               = $0128
brkv                = $0202
bytev               = $020a
filev               = $0212
fscv                = $021e
evntv               = $0220
l028d               = $028d
l0700               = $0700
l0cff               = $0cff
l0df0               = $0df0
l0e00               = $0e00
l0e07               = $0e07
l0e08               = $0e08
l0e0e               = $0e0e
l0e0f               = $0e0f
l0e10               = $0e10
l0ef8               = $0ef8
l0f00               = $0f00
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
l0f0f               = $0f0f
l0f10               = $0f10
l1000               = $1000
l1001               = $1001
l1002               = $1002
l1003               = $1003
l1004               = $1004
l1005               = $1005
l1006               = $1006
l1007               = $1007
l100e               = $100e
l1045               = $1045
l1047               = $1047
l104d               = $104d
l104e               = $104e
l1050               = $1050
l1058               = $1058
l105f               = $105f
l1060               = $1060
l1061               = $1061
l1062               = $1062
l1063               = $1063
l1064               = $1064
l1065               = $1065
l1067               = $1067
l1069               = $1069
l1072               = $1072
l1074               = $1074
l1075               = $1075
l1076               = $1076
l1077               = $1077
l1078               = $1078
l1079               = $1079
l107a               = $107a
l107d               = $107d
l107e               = $107e
l107f               = $107f
l1081               = $1081
l1082               = $1082
l1083               = $1083
l1086               = $1086
l1087               = $1087
l1088               = $1088
l1089               = $1089
l108a               = $108a
l108b               = $108b
l108c               = $108c
l108f               = $108f
l1090               = $1090
l1091               = $1091
l1092               = $1092
l1093               = $1093
l1094               = $1094
l1095               = $1095
l1096               = $1096
l1097               = $1097
l1098               = $1098
l1099               = $1099
l109a               = $109a
l109b               = $109b
l109d               = $109d
l109e               = $109e
l109f               = $109f
l10c0               = $10c0
l10c1               = $10c1
l10c2               = $10c2
l10c3               = $10c3
l10c4               = $10c4
l10c5               = $10c5
l10c6               = $10c6
l10c7               = $10c7
l10c9               = $10c9
l10ca               = $10ca
l10cb               = $10cb
l10cc               = $10cc
l10cd               = $10cd
l10ce               = $10ce
l10cf               = $10cf
l10d0               = $10d0
l10d1               = $10d1
l10d2               = $10d2
l10d3               = $10d3
l10d6               = $10d6
l10d7               = $10d7
l10d8               = $10d8
l10d9               = $10d9
l10da               = $10da
l10db               = $10db
l10dc               = $10dc
l10dd               = $10dd
l10de               = $10de
l10e2               = $10e2
l10e3               = $10e3
l10e4               = $10e4
l1100               = $1100
l1109               = $1109
l110b               = $110b
l110c               = $110c
l110d               = $110d
l110e               = $110e
l110f               = $110f
l1110               = $1110
l1111               = $1111
l1112               = $1112
l1113               = $1113
l1114               = $1114
l1115               = $1115
l1116               = $1116
l1117               = $1117
l1119               = $1119
l111a               = $111a
l111b               = $111b
l111c               = $111c
l111d               = $111d
romsel              = $fe30
lfe80               = $fe80
lfe84               = $fe84
lfe85               = $fe85
lfe86               = $fe86
lfe87               = $fe87
tube_host_r1_status = $fee0
tube_host_r1_data   = $fee1
tube_host_r2_status = $fee2
tube_host_r2_data   = $fee3
tube_host_r3_data   = $fee5
tube_host_r4_status = $fee6
tube_host_r4_data   = $fee7
osrdsc              = $ffb9
gsinit              = $ffc2
gsread              = $ffc5
osfind              = $ffce
osgbpb              = $ffd1
osbput              = $ffd4
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

; Sideways ROM header
; $8000 referenced 1 time by $04e2
rom_header
language_entry
pydis_start
l8001 = rom_header+1
l8002 = rom_header+2
    !byte 0, 0, 0                                                     ; 8000: 00 00 00    ...
; $8001 referenced 1 time by $04e7
; $8002 referenced 1 time by $04ec

; $8003 referenced 1 time by $04f1
service_entry
l8004 = service_entry+1
    jmp service_handler                                               ; 8003: 4c c8 be    L..

; $8004 referenced 1 time by $04f4
; $8006 referenced 1 time by $04d6
rom_type
    !byte $82                                                         ; 8006: 82          .
; $8007 referenced 1 time by $04de
copyright_offset
    !byte copyright - rom_header                                      ; 8007: 11          .
binary_version
    !byte $7b                                                         ; 8008: 7b          {
title
    !text "DFS"                                                       ; 8009: 44 46 53    DFS
version
    !byte 0                                                           ; 800c: 00          .
    !text "2.26"                                                      ; 800d: 32 2e 32... 2.2
copyright
    !byte 0                                                           ; 8011: 00          .
    !text "(C)1985 Acorn", 0                                          ; 8012: 28 43 29... (C)

; $8020 referenced 1 time by $9575
sub_c8020
    jmp (fscv)                                                        ; 8020: 6c 1e 02    l..

; $8023 referenced 4 times by $8a6e, $94c6, $94d5, $9c00
generate_error_precheck_disc
    jsr generate_error_precheck                                       ; 8023: 20 38 80     8.
    !byte 0                                                           ; 8026: 00          .
    !text "Disc "                                                     ; 8027: 44 69 73... Dis

    bcc generate_error2                                               ; 802c: 90 21       .!
; $802e referenced 6 times by $8125, $889a, $89a5, $8a24, $8a3e, $8ba2
generate_error_precheck_bad
    jsr generate_error_precheck                                       ; 802e: 20 38 80     8.
    !byte 0                                                           ; 8031: 00          .
    !text "Bad "                                                      ; 8032: 42 61 64... Bad

    bcc generate_error2                                               ; 8036: 90 17       ..
; $8038 referenced 11 times by $8023, $802e, $8b18, $8bd8, $9a55, $9c70, $9c82, $9e80, $9e8c, $9f6e, $9fc8
generate_error_precheck
    lda l10dd                                                         ; 8038: ad dd 10    ...
    bne c8040                                                         ; 803b: d0 03       ..
    jsr sub_c9e30                                                     ; 803d: 20 30 9e     0.
; $8040 referenced 1 time by $803b
c8040
    lda #%########                                                    ; 8040: a9 ff       ..
    sta l1082                                                         ; 8042: 8d 82 10    ...
    sta l10dd                                                         ; 8045: 8d dd 10    ...
; Generate an OS error using inline data. Called as either:
;     jsr XXX:equb errnum, "error message", 0
; to actually generate an error now, or as:
;     jsr XXX:equb errnum, "partial error message", instruction...
; to partially construct an error (on the stack) and continue executing
; 'instruction' afterwards; its opcode must have its top bit set. Carry is
; always clear on exit.
; $8048 referenced 4 times by $822a, $9439, $947c, $a14f
generate_error
    ldx #2                                                            ; 8048: a2 02       ..
    lda #0                                                            ; 804a: a9 00       ..
    sta l0100                                                         ; 804c: 8d 00 01    ...
; $804f referenced 7 times by $802c, $8036, $94da, $94e9, $94f7, $9507, $9511
generate_error2
    sta l00b3                                                         ; 804f: 85 b3       ..
    pla                                                               ; 8051: 68          h
    sta l00ae                                                         ; 8052: 85 ae       ..
    pla                                                               ; 8054: 68          h
    sta l00af                                                         ; 8055: 85 af       ..
; XXX: Redundant lda l00b3? Is sta l00b3 above redundant too?
    lda l00b3                                                         ; 8057: a5 b3       ..
    ldy #0                                                            ; 8059: a0 00       ..
    jsr inc16_ae                                                      ; 805b: 20 dc 83     ..
    lda (l00ae),y                                                     ; 805e: b1 ae       ..
    sta l0101                                                         ; 8060: 8d 01 01    ...
    dex                                                               ; 8063: ca          .
; $8064 referenced 1 time by $806f
loop_c8064
    jsr inc16_ae                                                      ; 8064: 20 dc 83     ..
    inx                                                               ; 8067: e8          .
    lda (l00ae),y                                                     ; 8068: b1 ae       ..
    sta l0100,x                                                       ; 806a: 9d 00 01    ...
    bmi c8096                                                         ; 806d: 30 27       0'
    bne loop_c8064                                                    ; 806f: d0 f3       ..
    jsr sub_c8f75                                                     ; 8071: 20 75 8f     u.
    jmp l0100                                                         ; 8074: 4c 00 01    L..

; Print (XXX: using l809f, which seems to be quite fancy) an inline string terminated
; by a top-bit set instruction to execute after printing the string. Carry is always
; clear on exit.
; $8077 referenced 31 times by $84a5, $84b0, $84c8, $84dc, $84f1, $850d, $87ce, $9558, $a10c, $a247, $a298, $a34d, $a364, $a394, $a3a3, $a3ae, $a3bd, $a3e4, $a3ec, $a5f0, $a5fb, $a605, $a667, $a678, $a68a, $a699, $a70a, $a719, $aa5a, $aa65, $aebf
print_inline_l809f_top_bit_clear
    sta l00b3                                                         ; 8077: 85 b3       ..
    pla                                                               ; 8079: 68          h
    sta l00ae                                                         ; 807a: 85 ae       ..
    pla                                                               ; 807c: 68          h
    sta l00af                                                         ; 807d: 85 af       ..
    lda l00b3                                                         ; 807f: a5 b3       ..
    pha                                                               ; 8081: 48          H
    tya                                                               ; 8082: 98          .
    pha                                                               ; 8083: 48          H
    ldy #0                                                            ; 8084: a0 00       ..
; $8086 referenced 1 time by $8090
loop_c8086
    jsr inc16_ae                                                      ; 8086: 20 dc 83     ..
    lda (l00ae),y                                                     ; 8089: b1 ae       ..
    bmi c8093                                                         ; 808b: 30 06       0.
    jsr c809f                                                         ; 808d: 20 9f 80     ..
    jmp loop_c8086                                                    ; 8090: 4c 86 80    L..

; $8093 referenced 1 time by $808b
c8093
    pla                                                               ; 8093: 68          h
    tay                                                               ; 8094: a8          .
    pla                                                               ; 8095: 68          h
; $8096 referenced 1 time by $806d
c8096
    clc                                                               ; 8096: 18          .
    jmp (l00ae)                                                       ; 8097: 6c ae 00    l..

; $809a referenced 2 times by $84ff, $8519
sub_c809a
    jsr sub_c80c3                                                     ; 809a: 20 c3 80     ..
; $809d referenced 1 time by $8187
sub_c809d
    lda #$2e ; '.'                                                    ; 809d: a9 2e       ..
; $809f referenced 20 times by $808d, $80c6, $8184, $8191, $81a2, $849d, $84ea, $8505, $851f, $a1c3, $a3df, $a40c, $a621, $a6bd, $a6c0, $aa6d, $aa7b, $aa87, $aa8c, $aabe
c809f
    jsr sub_c83e3                                                     ; 809f: 20 e3 83     ..
    pha                                                               ; 80a2: 48          H
    lda #$ec                                                          ; 80a3: a9 ec       ..
    jsr osbyte_read                                                   ; 80a5: 20 e5 9a     ..
    txa                                                               ; 80a8: 8a          .
    pha                                                               ; 80a9: 48          H
    ora #$10                                                          ; 80aa: 09 10       ..
    jsr sub_c9ad3                                                     ; 80ac: 20 d3 9a     ..
    pla                                                               ; 80af: 68          h
    tax                                                               ; 80b0: aa          .
    pla                                                               ; 80b1: 68          h
    jsr osasci                                                        ; 80b2: 20 e3 ff     ..            ; Write character
    jmp c9ad4                                                         ; 80b5: 4c d4 9a    L..

; $80b8 referenced 1 time by $aa62
sub_c80b8
    jsr sub_c841b                                                     ; 80b8: 20 1b 84     ..
; $80bb referenced 5 times by $8368, $8373, $84ad, $a295, $a6c6
sub_c80bb
    pha                                                               ; 80bb: 48          H
    jsr sub_c81bf                                                     ; 80bc: 20 bf 81     ..
    jsr sub_c80c3                                                     ; 80bf: 20 c3 80     ..
    pla                                                               ; 80c2: 68          h
; $80c3 referenced 10 times by $809a, $80bf, $8362, $84c0, $84d9, $a25c, $a291, $a361, $a36f, $a696
sub_c80c3
    jsr sub_c80c8                                                     ; 80c3: 20 c8 80     ..
    bne c809f                                                         ; 80c6: d0 d7       ..
; $80c8 referenced 4 times by $80c3, $952e, $a9ca, $ac6a
sub_c80c8
    and #$0f                                                          ; 80c8: 29 0f       ).
    cmp #$0a                                                          ; 80ca: c9 0a       ..
    bcc c80d0                                                         ; 80cc: 90 02       ..
    adc #6                                                            ; 80ce: 69 06       i.
; $80d0 referenced 1 time by $80cc
c80d0
    adc #'0'                                                          ; 80d0: 69 30       i0
    rts                                                               ; 80d2: 60          `

; $80d3 referenced 1 time by $979d
sub_c80d3
    jsr sub_c80e3                                                     ; 80d3: 20 e3 80     ..
    dex                                                               ; 80d6: ca          .
    dex                                                               ; 80d7: ca          .
    jsr sub_c80db                                                     ; 80d8: 20 db 80     ..
; $80db referenced 1 time by $80d8
sub_c80db
    lda (l00b0),y                                                     ; 80db: b1 b0       ..
    sta l1072,x                                                       ; 80dd: 9d 72 10    .r.
    inx                                                               ; 80e0: e8          .
    iny                                                               ; 80e1: c8          .
    rts                                                               ; 80e2: 60          `

; $80e3 referenced 2 times by $80d3, $979a
sub_c80e3
    jsr sub_c80e6                                                     ; 80e3: 20 e6 80     ..
; $80e6 referenced 1 time by $80e3
sub_c80e6
    lda (l00b0),y                                                     ; 80e6: b1 b0       ..
    sta l00ba,x                                                       ; 80e8: 95 ba       ..
    inx                                                               ; 80ea: e8          .
    iny                                                               ; 80eb: c8          .
    rts                                                               ; 80ec: 60          `

; $80ed referenced 5 times by $821d, $89ec, $8bb2, $8bc7, $a46c
sub_c80ed
    jsr sub_c8b7b                                                     ; 80ed: 20 7b 8b     {.
    jmp c8103                                                         ; 80f0: 4c 03 81    L..

; $80f3 referenced 5 times by $8222, $8879, $8a77, $9a78, $9c22
sub_c80f3
    jsr sub_c8b7b                                                     ; 80f3: 20 7b 8b     {.
; $80f6 referenced 1 time by $8892
sub_c80f6
    lda l00ba                                                         ; 80f6: a5 ba       ..
    sta os_text_ptr                                                   ; 80f8: 85 f2       ..
    lda l00bb                                                         ; 80fa: a5 bb       ..
    sta l00f3                                                         ; 80fc: 85 f3       ..
    ldy #0                                                            ; 80fe: a0 00       ..
    jsr clc_jmp_gsinit                                                ; 8100: 20 4c 87     L.
; $8103 referenced 3 times by $80f0, $8113, $8123
c8103
    ldx #$20                                                          ; 8103: a2 20       .
    jsr sub_c8149                                                     ; 8105: 20 49 81     I.
    bcs c8125                                                         ; 8108: b0 1b       ..
    sta l1000                                                         ; 810a: 8d 00 10    ...
    cmp #'.'                                                          ; 810d: c9 2e       ..
    bne c8115                                                         ; 810f: d0 04       ..
; $8111 referenced 1 time by $8136
c8111
    stx l00cc                                                         ; 8111: 86 cc       ..
    beq c8103                                                         ; 8113: f0 ee       ..
; $8115 referenced 1 time by $810f
c8115
    cmp #$3a ; ':'                                                    ; 8115: c9 3a       .:
    bne c812e                                                         ; 8117: d0 15       ..
    jsr c8b8b                                                         ; 8119: 20 8b 8b     ..
    jsr sub_c8149                                                     ; 811c: 20 49 81     I.
    bcs c8125                                                         ; 811f: b0 04       ..
    cmp #$2e ; '.'                                                    ; 8121: c9 2e       ..
    beq c8103                                                         ; 8123: f0 de       ..
; $8125 referenced 5 times by $8108, $811f, $8147, $8155, $8159
c8125
    jsr generate_error_precheck_bad                                   ; 8125: 20 2e 80     ..
    !byte $cc                                                         ; 8128: cc          .
    !text "name"                                                      ; 8129: 6e 61 6d... nam
    !byte 0                                                           ; 812d: 00          .

; $812e referenced 1 time by $8117
c812e
    tax                                                               ; 812e: aa          .
    jsr sub_c8149                                                     ; 812f: 20 49 81     I.
    bcs c815d                                                         ; 8132: b0 29       .)
    cmp #$2e ; '.'                                                    ; 8134: c9 2e       ..
    beq c8111                                                         ; 8136: f0 d9       ..
    ldx #1                                                            ; 8138: a2 01       ..
; $813a referenced 1 time by $8145
loop_c813a
    sta l1000,x                                                       ; 813a: 9d 00 10    ...
    inx                                                               ; 813d: e8          .
    jsr sub_c8149                                                     ; 813e: 20 49 81     I.
    bcs c815f                                                         ; 8141: b0 1c       ..
    cpx #7                                                            ; 8143: e0 07       ..
    bne loop_c813a                                                    ; 8145: d0 f3       ..
    beq c8125                                                         ; 8147: f0 dc       ..
; $8149 referenced 11 times by $8105, $811c, $812f, $813e, $8990, $899c, $89af, $89cb, $8a19, $8b8b, $a143
sub_c8149
    jsr gsread                                                        ; 8149: 20 c5 ff     ..
    php                                                               ; 814c: 08          .
    and #$7f                                                          ; 814d: 29 7f       ).
    cmp #13                                                           ; 814f: c9 0d       ..
    beq c815b                                                         ; 8151: f0 08       ..
    cmp #$20 ; ' '                                                    ; 8153: c9 20       .
    bcc c8125                                                         ; 8155: 90 ce       ..
    cmp #$7f                                                          ; 8157: c9 7f       ..
    beq c8125                                                         ; 8159: f0 ca       ..
; $815b referenced 1 time by $8151
c815b
    plp                                                               ; 815b: 28          (
    rts                                                               ; 815c: 60          `

; $815d referenced 2 times by $8132, $8248
c815d
    ldx #1                                                            ; 815d: a2 01       ..
; $815f referenced 1 time by $8141
c815f
    lda #$20 ; ' '                                                    ; 815f: a9 20       .
; $8161 referenced 1 time by $8167
loop_c8161
    sta l1000,x                                                       ; 8161: 9d 00 10    ...
    inx                                                               ; 8164: e8          .
    cpx #$40 ; '@'                                                    ; 8165: e0 40       .@
    bne loop_c8161                                                    ; 8167: d0 f8       ..
    ldx #6                                                            ; 8169: a2 06       ..
; $816b referenced 1 time by $8171
loop_c816b
    lda l1000,x                                                       ; 816b: bd 00 10    ...
    sta l00c5,x                                                       ; 816e: 95 c5       ..
    dex                                                               ; 8170: ca          .
    bpl loop_c816b                                                    ; 8171: 10 f8       ..
    rts                                                               ; 8173: 60          `

; $8174 referenced 4 times by $833d, $85cd, $875e, $87a5
sub_c8174
    jsr sub_c83e3                                                     ; 8174: 20 e3 83     ..
    lda l0e0f,y                                                       ; 8177: b9 0f 0e    ...
    php                                                               ; 817a: 08          .
    and #$7f                                                          ; 817b: 29 7f       ).
    bne c8184                                                         ; 817d: d0 05       ..
    jsr sub_cac0c                                                     ; 817f: 20 0c ac     ..
    beq c818a                                                         ; 8182: f0 06       ..
; $8184 referenced 1 time by $817d
c8184
    jsr c809f                                                         ; 8184: 20 9f 80     ..
    jsr sub_c809d                                                     ; 8187: 20 9d 80     ..
; $818a referenced 1 time by $8182
c818a
    ldx #6                                                            ; 818a: a2 06       ..
; $818c referenced 1 time by $8196
loop_c818c
    lda l0e08,y                                                       ; 818c: b9 08 0e    ...
    and #$7f                                                          ; 818f: 29 7f       ).
    jsr c809f                                                         ; 8191: 20 9f 80     ..
    iny                                                               ; 8194: c8          .
    dex                                                               ; 8195: ca          .
    bpl loop_c818c                                                    ; 8196: 10 f4       ..
    jsr sub_cac0c                                                     ; 8198: 20 0c ac     ..
    lda #$20 ; ' '                                                    ; 819b: a9 20       .
    plp                                                               ; 819d: 28          (
    bpl c81a2                                                         ; 819e: 10 02       ..
    lda #$4c ; 'L'                                                    ; 81a0: a9 4c       .L
; $81a2 referenced 1 time by $819e
c81a2
    jsr c809f                                                         ; 81a2: 20 9f 80     ..
    ldy #1                                                            ; 81a5: a0 01       ..
; $81a7 referenced 4 times by $81ab, $84c5, $850a, $85c2
c81a7
    jsr cac0f                                                         ; 81a7: 20 0f ac     ..
    dey                                                               ; 81aa: 88          .
    bne c81a7                                                         ; 81ab: d0 fa       ..
    rts                                                               ; 81ad: 60          `

; $81ae referenced 2 times by $88a9, $8b6b
sub_c81ae
    lsr                                                               ; 81ae: 4a          J
    lsr                                                               ; 81af: 4a          J
; $81b0 referenced 8 times by $81f5, $85e6, $9cdb, $9cfd, $a2c6, $a49f, $a505, $a8e6
sub_c81b0
    lsr                                                               ; 81b0: 4a          J
    lsr                                                               ; 81b1: 4a          J
    lsr                                                               ; 81b2: 4a          J
    lsr                                                               ; 81b3: 4a          J
    and #3                                                            ; 81b4: 29 03       ).
    rts                                                               ; 81b6: 60          `

; $81b7 referenced 1 time by $8b54
sub_c81b7
    and #8                                                            ; 81b7: 29 08       ).
    beq c81bd                                                         ; 81b9: f0 02       ..
    lda #3                                                            ; 81bb: a9 03       ..
; $81bd referenced 1 time by $81b9
c81bd
    rts                                                               ; 81bd: 60          `

; $81be referenced 3 times by $9cb3, $9d0c, $9e00
sub_c81be
    lsr                                                               ; 81be: 4a          J
; $81bf referenced 8 times by $80bc, $84d5, $9527, $9644, $98fb, $a18d, $a9c3, $ac63
sub_c81bf
    lsr                                                               ; 81bf: 4a          J
; $81c0 referenced 1 time by $a90d
sub_c81c0
    lsr                                                               ; 81c0: 4a          J
    lsr                                                               ; 81c1: 4a          J
    lsr                                                               ; 81c2: 4a          J
    rts                                                               ; 81c3: 60          `

; $81c4 referenced 1 time by $9e2a
sub_c81c4
    asl                                                               ; 81c4: 0a          .
; $81c5 referenced 2 times by $8a5d, $9bae
sub_c81c5
    asl                                                               ; 81c5: 0a          .
    asl                                                               ; 81c6: 0a          .
    asl                                                               ; 81c7: 0a          .
    asl                                                               ; 81c8: 0a          .
    rts                                                               ; 81c9: 60          `

; $81ca referenced 1 time by $8867
sub_c81ca
    lda #5                                                            ; 81ca: a9 05       ..
    sta l1095                                                         ; 81cc: 8d 95 10    ...
    lda l00cd                                                         ; 81cf: a5 cd       ..
    sta l1090                                                         ; 81d1: 8d 90 10    ...
    lda #$0a                                                          ; 81d4: a9 0a       ..
    sta l00b0                                                         ; 81d6: 85 b0       ..
    lda l00bc                                                         ; 81d8: a5 bc       ..
    sta l1091                                                         ; 81da: 8d 91 10    ...
    lda l00bd                                                         ; 81dd: a5 bd       ..
    sta l1092                                                         ; 81df: 8d 92 10    ...
    lda l1074                                                         ; 81e2: ad 74 10    .t.
    sta l1093                                                         ; 81e5: 8d 93 10    ...
    lda l1075                                                         ; 81e8: ad 75 10    .u.
    sta l1094                                                         ; 81eb: 8d 94 10    ...
    lda #$ff                                                          ; 81ee: a9 ff       ..
    sta l1097                                                         ; 81f0: 8d 97 10    ...
    lda l00c2                                                         ; 81f3: a5 c2       ..
    jsr sub_c81b0                                                     ; 81f5: 20 b0 81     ..
    sta l109a                                                         ; 81f8: 8d 9a 10    ...
    lda l00c0                                                         ; 81fb: a5 c0       ..
    sta l109b                                                         ; 81fd: 8d 9b 10    ...
    lda l00c1                                                         ; 8200: a5 c1       ..
    sta l1099                                                         ; 8202: 8d 99 10    ...
    lda l00c2                                                         ; 8205: a5 c2       ..
    and #$03                                                          ; 8207: 29 03       ).
    tax                                                               ; 8209: aa          .
    lda l00c3                                                         ; 820a: a5 c3       ..
; $820c referenced 1 time by $8215
loop_c820c
    sec                                                               ; 820c: 38          8
; $820d referenced 1 time by $8212
loop_c820d
    inc l1097                                                         ; 820d: ee 97 10    ...
    sbc l00b0                                                         ; 8210: e5 b0       ..
    bcs loop_c820d                                                    ; 8212: b0 f9       ..
    dex                                                               ; 8214: ca          .
    bpl loop_c820c                                                    ; 8215: 10 f5       ..
    adc l00b0                                                         ; 8217: 65 b0       e.
    sta l1098                                                         ; 8219: 8d 98 10    ...
; $821c referenced 1 time by $8228
loop_c821c
    rts                                                               ; 821c: 60          `

; $821d referenced 4 times by $825a, $8756, $8788, $879d
sub_c821d
    jsr sub_c80ed                                                     ; 821d: 20 ed 80     ..
    bmi c8225                                                         ; 8220: 30 03       0.
; $8222 referenced 1 time by $881b
sub_c8222
    jsr sub_c80f3                                                     ; 8222: 20 f3 80     ..
; $8225 referenced 4 times by $8220, $824e, $8bb7, $a478
c8225
    jsr sub_c8284                                                     ; 8225: 20 84 82     ..
    bcs loop_c821c                                                    ; 8228: b0 f2       ..
; $822a referenced 2 times by $89fd, $ab17
c822a
    jsr generate_error                                                ; 822a: 20 48 80     H.
    !byte $d6                                                         ; 822d: d6          .
    !text "Not found"                                                 ; 822e: 4e 6f 74... Not
    !byte 0                                                           ; 8237: 00          .

sub_c8238
    jsr sub_c8b7b                                                     ; 8238: 20 7b 8b     {.
    jsr clc_jmp_gsinit                                                ; 823b: 20 4c 87     L.
    beq c8243                                                         ; 823e: f0 03       ..
    jsr c898a                                                         ; 8240: 20 8a 89     ..
; $8243 referenced 1 time by $823e
c8243
    lda #$2a ; '*'                                                    ; 8243: a9 2a       .*
    sta l1000                                                         ; 8245: 8d 00 10    ...
    jsr c815d                                                         ; 8248: 20 5d 81     ].
    jsr sub_c99ac                                                     ; 824b: 20 ac 99     ..
    jsr c8225                                                         ; 824e: 20 25 82     %.
    jmp c825d                                                         ; 8251: 4c 5d 82    L].

sub_c8254
    jsr sub_c99ac                                                     ; 8254: 20 ac 99     ..
    jsr sub_ca14a                                                     ; 8257: 20 4a a1     J.
    jsr sub_c821d                                                     ; 825a: 20 1d 82     ..
; $825d referenced 2 times by $8251, $8263
c825d
    jsr sub_c833a                                                     ; 825d: 20 3a 83     :.
    jsr sub_c8280                                                     ; 8260: 20 80 82     ..
    bcs c825d                                                         ; 8263: b0 f8       ..
    rts                                                               ; 8265: 60          `

; $8266 referenced 2 times by $887f, $8895
sub_c8266
    jsr sub_c93f9                                                     ; 8266: 20 f9 93     ..
    lda #0                                                            ; 8269: a9 00       ..
    beq c828b                                                         ; 826b: f0 1e       ..
; $826d referenced 2 times by $9bd9, $a4f2
sub_c826d
    ldx #6                                                            ; 826d: a2 06       ..
; $826f referenced 1 time by $8275
loop_c826f
    lda l00c5,x                                                       ; 826f: b5 c5       ..
    sta l1058,x                                                       ; 8271: 9d 58 10    .X.
    dex                                                               ; 8274: ca          .
    bpl loop_c826f                                                    ; 8275: 10 f8       ..
    lda #$20 ; ' '                                                    ; 8277: a9 20       .
    sta l105f                                                         ; 8279: 8d 5f 10    ._.
    lda #$58 ; 'X'                                                    ; 827c: a9 58       .X
    bne c8286                                                         ; 827e: d0 06       ..
; $8280 referenced 6 times by $8260, $877c, $87ab, $87c6, $8a10, $a4db
sub_c8280
    ldx #0                                                            ; 8280: a2 00       ..
    beq c8290                                                         ; 8282: f0 0c       ..
; $8284 referenced 7 times by $8225, $87bb, $89f8, $8a7a, $8bcf, $9a7b, $9c28
sub_c8284
    lda #0                                                            ; 8284: a9 00       ..
; $8286 referenced 1 time by $827e
c8286
    pha                                                               ; 8286: 48          H
    jsr sub_c93fd                                                     ; 8287: 20 fd 93     ..
    pla                                                               ; 828a: 68          h
; $828b referenced 1 time by $826b
c828b
    tax                                                               ; 828b: aa          .
    lda #0                                                            ; 828c: a9 00       ..
    sta l00b6                                                         ; 828e: 85 b6       ..
; $8290 referenced 3 times by $8282, $82a4, $82ad
c8290
    ldy #0                                                            ; 8290: a0 00       ..
    lda #$0e                                                          ; 8292: a9 0e       ..
    sta l00b7                                                         ; 8294: 85 b7       ..
    lda l00b6                                                         ; 8296: a5 b6       ..
    cmp l0f05                                                         ; 8298: cd 05 0f    ...
    bcs c82e6                                                         ; 829b: b0 49       .I
    adc #8                                                            ; 829d: 69 08       i.
    sta l00b6                                                         ; 829f: 85 b6       ..
    jsr sub_c82bb                                                     ; 82a1: 20 bb 82     ..
    bcc c8290                                                         ; 82a4: 90 ea       ..
    lda l00cc                                                         ; 82a6: a5 cc       ..
    ldy #7                                                            ; 82a8: a0 07       ..
    jsr sub_c82e8                                                     ; 82aa: 20 e8 82     ..
    bne c8290                                                         ; 82ad: d0 e1       ..
    ldy l00b6                                                         ; 82af: a4 b6       ..
    sec                                                               ; 82b1: 38          8
; $82b2 referenced 4 times by $87e8, $8aca, $a27c, $a848
sub_c82b2
    dey                                                               ; 82b2: 88          .
    dey                                                               ; 82b3: 88          .
    dey                                                               ; 82b4: 88          .
    dey                                                               ; 82b5: 88          .
    dey                                                               ; 82b6: 88          .
    dey                                                               ; 82b7: 88          .
    dey                                                               ; 82b8: 88          .
    dey                                                               ; 82b9: 88          .
    rts                                                               ; 82ba: 60          `

; $82bb referenced 2 times by $82a1, $82c7
sub_c82bb
    jsr sub_c83e3                                                     ; 82bb: 20 e3 83     ..
; $82be referenced 1 time by $82e4
c82be
    lda l1000,x                                                       ; 82be: bd 00 10    ...
    cmp l10ce                                                         ; 82c1: cd ce 10    ...
    bne c82d9                                                         ; 82c4: d0 13       ..
    inx                                                               ; 82c6: e8          .
; $82c7 referenced 1 time by $82cf
loop_c82c7
    jsr sub_c82bb                                                     ; 82c7: 20 bb 82     ..
    bcs c82e7                                                         ; 82ca: b0 1b       ..
    iny                                                               ; 82cc: c8          .
    cpy #7                                                            ; 82cd: c0 07       ..
    bcc loop_c82c7                                                    ; 82cf: 90 f6       ..
; $82d1 referenced 1 time by $82db
loop_c82d1
    lda l1000,x                                                       ; 82d1: bd 00 10    ...
    cmp #$20 ; ' '                                                    ; 82d4: c9 20       .
    bne c82e6                                                         ; 82d6: d0 0e       ..
    rts                                                               ; 82d8: 60          `

; $82d9 referenced 1 time by $82c4
c82d9
    cpy #7                                                            ; 82d9: c0 07       ..
    bcs loop_c82d1                                                    ; 82db: b0 f4       ..
    jsr sub_c82e8                                                     ; 82dd: 20 e8 82     ..
    bne c82e6                                                         ; 82e0: d0 04       ..
    inx                                                               ; 82e2: e8          .
    iny                                                               ; 82e3: c8          .
    bne c82be                                                         ; 82e4: d0 d8       ..
; $82e6 referenced 3 times by $829b, $82d6, $82e0
c82e6
    clc                                                               ; 82e6: 18          .
; $82e7 referenced 1 time by $82ca
c82e7
    rts                                                               ; 82e7: 60          `

; $82e8 referenced 2 times by $82aa, $82dd
sub_c82e8
    cmp l10ce                                                         ; 82e8: cd ce 10    ...
    beq c82fd                                                         ; 82eb: f0 10       ..
    cmp l10cd                                                         ; 82ed: cd cd 10    ...
    beq c82fd                                                         ; 82f0: f0 0b       ..
    jsr sub_c8327                                                     ; 82f2: 20 27 83     '.
    eor (l00b6),y                                                     ; 82f5: 51 b6       Q.
    bcs c82fb                                                         ; 82f7: b0 02       ..
    and #%01011111                                                    ; 82f9: 29 5f       )_
; $82fb referenced 1 time by $82f7
c82fb
    and #$7f                                                          ; 82fb: 29 7f       ).
; $82fd referenced 2 times by $82eb, $82f0
c82fd
    rts                                                               ; 82fd: 60          `

; $82fe referenced 6 times by $8441, $8567, $857e, $858e, $aa2b, $aa3b
sub_c82fe
    php                                                               ; 82fe: 08          .
    jsr sub_c8327                                                     ; 82ff: 20 27 83     '.
    bcs c8306                                                         ; 8302: b0 02       ..
    and #$5f ; '_'                                                    ; 8304: 29 5f       )_
; $8306 referenced 1 time by $8302
c8306
    and #$7f                                                          ; 8306: 29 7f       ).
    plp                                                               ; 8308: 28          (
    rts                                                               ; 8309: 60          `

; $830a referenced 5 times by $878e, $87e3, $8a7f, $99c4, $a4f7
sub_c830a
    jsr sub_c9a60                                                     ; 830a: 20 60 9a     `.
; $830d referenced 1 time by $831d
loop_c830d
    lda l0e10,y                                                       ; 830d: b9 10 0e    ...
    sta l0e08,y                                                       ; 8310: 99 08 0e    ...
    lda l0f10,y                                                       ; 8313: b9 10 0f    ...
    sta l0f08,y                                                       ; 8316: 99 08 0f    ...
    iny                                                               ; 8319: c8          .
    cpy l0f05                                                         ; 831a: cc 05 0f    ...
    bcc loop_c830d                                                    ; 831d: 90 ee       ..
    tya                                                               ; 831f: 98          .
    sbc #8                                                            ; 8320: e9 08       ..
    sta l0f05                                                         ; 8322: 8d 05 0f    ...
    clc                                                               ; 8325: 18          .
; $8326 referenced 1 time by $8338
loop_c8326
    rts                                                               ; 8326: 60          `

; $8327 referenced 4 times by $82f2, $82ff, $8736, $98a8
sub_c8327
    pha                                                               ; 8327: 48          H
    and #$5f ; '_'                                                    ; 8328: 29 5f       )_
    cmp #$41 ; 'A'                                                    ; 832a: c9 41       .A
    bcc c8332                                                         ; 832c: 90 04       ..
    cmp #$5b ; '['                                                    ; 832e: c9 5b       .[
    bcc c8333                                                         ; 8330: 90 01       ..
; $8332 referenced 1 time by $832c
c8332
    sec                                                               ; 8332: 38          8
; $8333 referenced 1 time by $8330
c8333
    pla                                                               ; 8333: 68          h
    rts                                                               ; 8334: 60          `

; $8335 referenced 5 times by $878b, $884f, $8a0d, $8b04, $a2ad
sub_c8335
    bit l10c6                                                         ; 8335: 2c c6 10    ,..
    bmi loop_c8326                                                    ; 8338: 30 ec       0.
; $833a referenced 3 times by $825d, $a30f, $a482
sub_c833a
    jsr sub_c83e3                                                     ; 833a: 20 e3 83     ..
    jsr sub_c8174                                                     ; 833d: 20 74 81     t.
    tya                                                               ; 8340: 98          .
    pha                                                               ; 8341: 48          H
    lda #$60 ; '`'                                                    ; 8342: a9 60       .`
    sta l00b0                                                         ; 8344: 85 b0       ..
    lda #$10                                                          ; 8346: a9 10       ..
    sta l00b1                                                         ; 8348: 85 b1       ..
    jsr sub_c8386                                                     ; 834a: 20 86 83     ..
    ldy #2                                                            ; 834d: a0 02       ..
    jsr cac0f                                                         ; 834f: 20 0f ac     ..
    jsr sub_c836e                                                     ; 8352: 20 6e 83     n.
    jsr sub_c836e                                                     ; 8355: 20 6e 83     n.
    jsr sub_c836e                                                     ; 8358: 20 6e 83     n.
    pla                                                               ; 835b: 68          h
    tay                                                               ; 835c: a8          .
    lda l0f0e,y                                                       ; 835d: b9 0e 0f    ...
    and #3                                                            ; 8360: 29 03       ).
    jsr sub_c80c3                                                     ; 8362: 20 c3 80     ..
    lda l0f0f,y                                                       ; 8365: b9 0f 0f    ...
    jsr sub_c80bb                                                     ; 8368: 20 bb 80     ..
    jmp ca3dc                                                         ; 836b: 4c dc a3    L..

; $836e referenced 3 times by $8352, $8355, $8358
sub_c836e
    ldx #3                                                            ; 836e: a2 03       ..
; $8370 referenced 1 time by $8378
loop_c8370
    lda l1062,y                                                       ; 8370: b9 62 10    .b.
    jsr sub_c80bb                                                     ; 8373: 20 bb 80     ..
    dey                                                               ; 8376: 88          .
    dex                                                               ; 8377: ca          .
    bne loop_c8370                                                    ; 8378: d0 f6       ..
    jsr sub_c87db                                                     ; 837a: 20 db 87     ..
    jmp cac0f                                                         ; 837d: 4c 0f ac    L..

; $8380 referenced 7 times by $89bd, $975e, $9bf8, $a26a, $a4d1, $a4ef, $a7fc
sub_c8380
    jsr sub_c83e3                                                     ; 8380: 20 e3 83     ..
    jmp c940c                                                         ; 8383: 4c 0c 94    L..

; $8386 referenced 5 times by $834a, $8821, $885f, $99b8, $99c1
sub_c8386
    jsr sub_c83e3                                                     ; 8386: 20 e3 83     ..
    tya                                                               ; 8389: 98          .
    pha                                                               ; 838a: 48          H
    tax                                                               ; 838b: aa          .
    ldy #$12                                                          ; 838c: a0 12       ..
    lda #0                                                            ; 838e: a9 00       ..
; $8390 referenced 1 time by $8395
loop_c8390
    dey                                                               ; 8390: 88          .
    sta (l00b0),y                                                     ; 8391: 91 b0       ..
    cpy #2                                                            ; 8393: c0 02       ..
    bne loop_c8390                                                    ; 8395: d0 f9       ..
; $8397 referenced 1 time by $839e
loop_c8397
    jsr sub_c83d1                                                     ; 8397: 20 d1 83     ..
    iny                                                               ; 839a: c8          .
    iny                                                               ; 839b: c8          .
    cpy #$0e                                                          ; 839c: c0 0e       ..
    bne loop_c8397                                                    ; 839e: d0 f7       ..
    pla                                                               ; 83a0: 68          h
    tax                                                               ; 83a1: aa          .
    lda l0e0f,x                                                       ; 83a2: bd 0f 0e    ...
    bpl c83ab                                                         ; 83a5: 10 04       ..
    lda #8                                                            ; 83a7: a9 08       ..
    sta (l00b0),y                                                     ; 83a9: 91 b0       ..
; $83ab referenced 1 time by $83a5
c83ab
    lda l0f0e,x                                                       ; 83ab: bd 0e 0f    ...
    ldy #4                                                            ; 83ae: a0 04       ..
    jsr sub_c83bf                                                     ; 83b0: 20 bf 83     ..
    ldy #$0c                                                          ; 83b3: a0 0c       ..
    lsr                                                               ; 83b5: 4a          J
    lsr                                                               ; 83b6: 4a          J
    pha                                                               ; 83b7: 48          H
    and #3                                                            ; 83b8: 29 03       ).
    sta (l00b0),y                                                     ; 83ba: 91 b0       ..
    pla                                                               ; 83bc: 68          h
    ldy #8                                                            ; 83bd: a0 08       ..
; $83bf referenced 1 time by $83b0
sub_c83bf
    lsr                                                               ; 83bf: 4a          J
    lsr                                                               ; 83c0: 4a          J
    pha                                                               ; 83c1: 48          H
    and #3                                                            ; 83c2: 29 03       ).
    cmp #3                                                            ; 83c4: c9 03       ..
    bne c83cd                                                         ; 83c6: d0 05       ..
    lda #$ff                                                          ; 83c8: a9 ff       ..
    sta (l00b0),y                                                     ; 83ca: 91 b0       ..
    iny                                                               ; 83cc: c8          .
; $83cd referenced 1 time by $83c6
c83cd
    sta (l00b0),y                                                     ; 83cd: 91 b0       ..
    pla                                                               ; 83cf: 68          h
    rts                                                               ; 83d0: 60          `

; $83d1 referenced 1 time by $8397
sub_c83d1
    jsr sub_c83d4                                                     ; 83d1: 20 d4 83     ..
; $83d4 referenced 1 time by $83d1
sub_c83d4
    lda l0f08,x                                                       ; 83d4: bd 08 0f    ...
    sta (l00b0),y                                                     ; 83d7: 91 b0       ..
    inx                                                               ; 83d9: e8          .
    iny                                                               ; 83da: c8          .
    rts                                                               ; 83db: 60          `

; $83dc referenced 4 times by $805b, $8064, $8086, $a9ab
inc16_ae
    inc l00ae                                                         ; 83dc: e6 ae       ..
    bne c83e2                                                         ; 83de: d0 02       ..
    inc l00af                                                         ; 83e0: e6 af       ..
; $83e2 referenced 1 time by $83de
c83e2
    rts                                                               ; 83e2: 60          `

; $83e3 referenced 29 times by $809f, $8174, $82bb, $833a, $8380, $8386, $8951, $8a32, $96c3, $97cd, $993b, $99f3, $9a0f, $9a32, $9a63, $9ac8, $9ad8, $9b51, $9bf2, $9c10, $9d9b, $9f7c, $9f82, $a06c, $a190, $a1b4, $a379, $a384, $ac72
sub_c83e3
    pha                                                               ; 83e3: 48          H
    txa                                                               ; 83e4: 8a          .
    pha                                                               ; 83e5: 48          H
    tya                                                               ; 83e6: 98          .
    pha                                                               ; 83e7: 48          H
    lda #$84                                                          ; 83e8: a9 84       ..
    pha                                                               ; 83ea: 48          H
    lda #5                                                            ; 83eb: a9 05       ..
    pha                                                               ; 83ed: 48          H
; $83ee referenced 1 time by $8411
sub_c83ee
    ldy #5                                                            ; 83ee: a0 05       ..
; $83f0 referenced 1 time by $83f6
loop_c83f0
    tsx                                                               ; 83f0: ba          .
    lda l0107,x                                                       ; 83f1: bd 07 01    ...
    pha                                                               ; 83f4: 48          H
    dey                                                               ; 83f5: 88          .
    bne loop_c83f0                                                    ; 83f6: d0 f8       ..
    ldy #$0a                                                          ; 83f8: a0 0a       ..
; $83fa referenced 1 time by $8402
loop_c83fa
    lda l0109,x                                                       ; 83fa: bd 09 01    ...
    sta l010b,x                                                       ; 83fd: 9d 0b 01    ...
    dex                                                               ; 8400: ca          .
    dey                                                               ; 8401: 88          .
    bne loop_c83fa                                                    ; 8402: d0 f6       ..
    pla                                                               ; 8404: 68          h
    pla                                                               ; 8405: 68          h
; $8406 referenced 1 time by $8418
loop_c8406
    pla                                                               ; 8406: 68          h
    tay                                                               ; 8407: a8          .
    pla                                                               ; 8408: 68          h
    tax                                                               ; 8409: aa          .
    pla                                                               ; 840a: 68          h
    rts                                                               ; 840b: 60          `

; $840c referenced 5 times by $841b, $9785, $9c16, $9e94, $aadd
sub_c840c
    pha                                                               ; 840c: 48          H
    txa                                                               ; 840d: 8a          .
    pha                                                               ; 840e: 48          H
    tya                                                               ; 840f: 98          .
    pha                                                               ; 8410: 48          H
    jsr sub_c83ee                                                     ; 8411: 20 ee 83     ..
    tsx                                                               ; 8414: ba          .
    sta l0103,x                                                       ; 8415: 9d 03 01    ...
    jmp loop_c8406                                                    ; 8418: 4c 06 84    L..

; $841b referenced 2 times by $80b8, $a9bf
sub_c841b
    jsr sub_c840c                                                     ; 841b: 20 0c 84     ..
    tay                                                               ; 841e: a8          .
    beq c842b                                                         ; 841f: f0 0a       ..
    clc                                                               ; 8421: 18          .
    sed                                                               ; 8422: f8          .
    lda #0                                                            ; 8423: a9 00       ..
; $8425 referenced 1 time by $8428
loop_c8425
    adc #1                                                            ; 8425: 69 01       i.
    dey                                                               ; 8427: 88          .
    bne loop_c8425                                                    ; 8428: d0 fb       ..
    cld                                                               ; 842a: d8          .
; $842b referenced 1 time by $841f
c842b
    rts                                                               ; 842b: 60          `

; $842c referenced 1 time by $abb1
sub_c842c
    and #$7f                                                          ; 842c: 29 7f       ).
    cmp #$7f                                                          ; 842e: c9 7f       ..
    beq c8436                                                         ; 8430: f0 04       ..
    cmp #$20 ; ' '                                                    ; 8432: c9 20       .
    bcs c8438                                                         ; 8434: b0 02       ..
; $8436 referenced 1 time by $8430
c8436
    lda #$2e ; '.'                                                    ; 8436: a9 2e       ..
; $8438 referenced 1 time by $8434
c8438
    rts                                                               ; 8438: 60          `

; $8439 referenced 2 times by $8444, $8463
sub_c8439
    sec                                                               ; 8439: 38          8
    sbc #$30 ; '0'                                                    ; 843a: e9 30       .0
    bcc c8454                                                         ; 843c: 90 16       ..
    cmp #$0a                                                          ; 843e: c9 0a       ..
    rts                                                               ; 8440: 60          `

    jsr sub_c82fe                                                     ; 8441: 20 fe 82     ..
    jsr sub_c8439                                                     ; 8444: 20 39 84     9.
    bcc c8453                                                         ; 8447: 90 0a       ..
    sbc #7                                                            ; 8449: e9 07       ..
    bcc c8454                                                         ; 844b: 90 07       ..
    cmp #$0a                                                          ; 844d: c9 0a       ..
    bcc c8454                                                         ; 844f: 90 03       ..
    cmp #$10                                                          ; 8451: c9 10       ..
; $8453 referenced 1 time by $8447
c8453
    rts                                                               ; 8453: 60          `

; $8454 referenced 3 times by $843c, $844b, $844f
c8454
    sec                                                               ; 8454: 38          8
    rts                                                               ; 8455: 60          `

; $8456 referenced 3 times by $87f7, $a5ce, $a9e7
sub_c8456
    jsr clc_jmp_gsinit                                                ; 8456: 20 4c 87     L.
    sec                                                               ; 8459: 38          8
    beq c8482                                                         ; 845a: f0 26       .&
    php                                                               ; 845c: 08          .
    lda #0                                                            ; 845d: a9 00       ..
    sta l00b9                                                         ; 845f: 85 b9       ..
    beq c8477                                                         ; 8461: f0 14       ..
; $8463 referenced 1 time by $847a
loop_c8463
    jsr sub_c8439                                                     ; 8463: 20 39 84     9.
    bcs c8481                                                         ; 8466: b0 19       ..
    sta l00b8                                                         ; 8468: 85 b8       ..
    lda l00b9                                                         ; 846a: a5 b9       ..
    asl                                                               ; 846c: 0a          .
    sta l00b9                                                         ; 846d: 85 b9       ..
    asl                                                               ; 846f: 0a          .
    asl                                                               ; 8470: 0a          .
    adc l00b9                                                         ; 8471: 65 b9       e.
    adc l00b8                                                         ; 8473: 65 b8       e.
    sta l00b9                                                         ; 8475: 85 b9       ..
; $8477 referenced 1 time by $8461
c8477
    jsr gsread                                                        ; 8477: 20 c5 ff     ..
    bcc loop_c8463                                                    ; 847a: 90 e7       ..
    lda l00b9                                                         ; 847c: a5 b9       ..
    plp                                                               ; 847e: 28          (
    clc                                                               ; 847f: 18          .
    rts                                                               ; 8480: 60          `

; $8481 referenced 1 time by $8466
c8481
    plp                                                               ; 8481: 28          (
; $8482 referenced 1 time by $845a
c8482
    rts                                                               ; 8482: 60          `

    jsr sub_c8745                                                     ; 8483: 20 45 87     E.
    jsr sub_c8b86                                                     ; 8486: 20 86 8b     ..
    jsr c940c                                                         ; 8489: 20 0c 94     ..
    ldy #$ff                                                          ; 848c: a0 ff       ..
    sty l00a8                                                         ; 848e: 84 a8       ..
    iny                                                               ; 8490: c8          .
    sty l00aa                                                         ; 8491: 84 aa       ..
; $8493 referenced 1 time by $84a3
loop_c8493
    lda l0e00,y                                                       ; 8493: b9 00 0e    ...
    cpy #8                                                            ; 8496: c0 08       ..
    bcc c849d                                                         ; 8498: 90 03       ..
    lda l0ef8,y                                                       ; 849a: b9 f8 0e    ...
; $849d referenced 1 time by $8498
c849d
    jsr c809f                                                         ; 849d: 20 9f 80     ..
    iny                                                               ; 84a0: c8          .
    cpy #$0c                                                          ; 84a1: c0 0c       ..
    bne loop_c8493                                                    ; 84a3: d0 ee       ..
    jsr print_inline_l809f_top_bit_clear                              ; 84a5: 20 77 80     w.
    !text " ("                                                        ; 84a8: 20 28        (

    lda l0f04                                                         ; 84aa: ad 04 0f    ...
    jsr sub_c80bb                                                     ; 84ad: 20 bb 80     ..
    jsr print_inline_l809f_top_bit_clear                              ; 84b0: 20 77 80     w.
    !text ") FM", $0d, "Drive "                                       ; 84b3: 29 20 46... ) F

    lda l00cd                                                         ; 84be: a5 cd       ..
    jsr sub_c80c3                                                     ; 84c0: 20 c3 80     ..
    ldy #$0d                                                          ; 84c3: a0 0d       ..
    jsr c81a7                                                         ; 84c5: 20 a7 81     ..
    jsr print_inline_l809f_top_bit_clear                              ; 84c8: 20 77 80     w.
    !text "Option "                                                   ; 84cb: 4f 70 74... Opt

    lda l0f06                                                         ; 84d2: ad 06 0f    ...
    jsr sub_c81bf                                                     ; 84d5: 20 bf 81     ..
    pha                                                               ; 84d8: 48          H
    jsr sub_c80c3                                                     ; 84d9: 20 c3 80     ..
    jsr print_inline_l809f_top_bit_clear                              ; 84dc: 20 77 80     w.
    !text " ("                                                        ; 84df: 20 28        (

    ldy #3                                                            ; 84e1: a0 03       ..
    pla                                                               ; 84e3: 68          h
    asl                                                               ; 84e4: 0a          .
    asl                                                               ; 84e5: 0a          .
    tax                                                               ; 84e6: aa          .
; $84e7 referenced 1 time by $84ef
loop_c84e7
    lda opt4_table,x                                                  ; 84e7: bd d3 85    ...
    jsr c809f                                                         ; 84ea: 20 9f 80     ..
    inx                                                               ; 84ed: e8          .
    dey                                                               ; 84ee: 88          .
    bpl loop_c84e7                                                    ; 84ef: 10 f6       ..
    jsr print_inline_l809f_top_bit_clear                              ; 84f1: 20 77 80     w.
    !text ")", $0d, "Dir. :"                                          ; 84f4: 29 0d 44... ).D

    lda l10ca                                                         ; 84fc: ad ca 10    ...
    jsr sub_c809a                                                     ; 84ff: 20 9a 80     ..
    lda l10c9                                                         ; 8502: ad c9 10    ...
    jsr c809f                                                         ; 8505: 20 9f 80     ..
    ldy #$0b                                                          ; 8508: a0 0b       ..
    jsr c81a7                                                         ; 850a: 20 a7 81     ..
    jsr print_inline_l809f_top_bit_clear                              ; 850d: 20 77 80     w.
    !text "Lib. :"                                                    ; 8510: 4c 69 62... Lib

    lda l10cc                                                         ; 8516: ad cc 10    ...
    jsr sub_c809a                                                     ; 8519: 20 9a 80     ..
    lda l10cb                                                         ; 851c: ad cb 10    ...
    jsr c809f                                                         ; 851f: 20 9f 80     ..
    jsr ca3dc                                                         ; 8522: 20 dc a3     ..
    ldy #0                                                            ; 8525: a0 00       ..
; $8527 referenced 1 time by $8541
loop_c8527
    cpy l0f05                                                         ; 8527: cc 05 0f    ...
    bcs c8543                                                         ; 852a: b0 17       ..
    lda l0e0f,y                                                       ; 852c: b9 0f 0e    ...
    eor l10c9                                                         ; 852f: 4d c9 10    M..
    and #$5f ; '_'                                                    ; 8532: 29 5f       )_
    bne c853e                                                         ; 8534: d0 08       ..
    lda l0e0f,y                                                       ; 8536: b9 0f 0e    ...
    and #$80                                                          ; 8539: 29 80       ).
    sta l0e0f,y                                                       ; 853b: 99 0f 0e    ...
; $853e referenced 1 time by $8534
c853e
    jsr sub_c87da                                                     ; 853e: 20 da 87     ..
    bcc loop_c8527                                                    ; 8541: 90 e4       ..
; $8543 referenced 2 times by $852a, $85d0
c8543
    ldy #0                                                            ; 8543: a0 00       ..
    jsr sub_c8555                                                     ; 8545: 20 55 85     U.
    bcc c8560                                                         ; 8548: 90 16       ..
    lda #$ff                                                          ; 854a: a9 ff       ..
    sta l1082                                                         ; 854c: 8d 82 10    ...
    jmp ca3dc                                                         ; 854f: 4c dc a3    L..

; $8552 referenced 1 time by $855d
loop_c8552
    jsr sub_c87da                                                     ; 8552: 20 da 87     ..
; $8555 referenced 2 times by $8545, $8573
sub_c8555
    cpy l0f05                                                         ; 8555: cc 05 0f    ...
    bcs c855f                                                         ; 8558: b0 05       ..
    lda l0e08,y                                                       ; 855a: b9 08 0e    ...
    bmi loop_c8552                                                    ; 855d: 30 f3       0.
; $855f referenced 1 time by $8558
c855f
    rts                                                               ; 855f: 60          `

; $8560 referenced 2 times by $8548, $8594
c8560
    sty l00ab                                                         ; 8560: 84 ab       ..
    ldx #0                                                            ; 8562: a2 00       ..
; $8564 referenced 1 time by $8571
loop_c8564
    lda l0e08,y                                                       ; 8564: b9 08 0e    ...
    jsr sub_c82fe                                                     ; 8567: 20 fe 82     ..
    sta l1060,x                                                       ; 856a: 9d 60 10    .`.
    iny                                                               ; 856d: c8          .
    inx                                                               ; 856e: e8          .
    cpx #8                                                            ; 856f: e0 08       ..
    bne loop_c8564                                                    ; 8571: d0 f1       ..
; $8573 referenced 1 time by $8599
c8573
    jsr sub_c8555                                                     ; 8573: 20 55 85     U.
    bcs c859b                                                         ; 8576: b0 23       .#
    sec                                                               ; 8578: 38          8
    ldx #6                                                            ; 8579: a2 06       ..
; $857b referenced 1 time by $8586
loop_c857b
    lda l0e0e,y                                                       ; 857b: b9 0e 0e    ...
    jsr sub_c82fe                                                     ; 857e: 20 fe 82     ..
    sbc l1060,x                                                       ; 8581: fd 60 10    .`.
    dey                                                               ; 8584: 88          .
    dex                                                               ; 8585: ca          .
    bpl loop_c857b                                                    ; 8586: 10 f3       ..
    jsr sub_c87db                                                     ; 8588: 20 db 87     ..
    lda l0e0f,y                                                       ; 858b: b9 0f 0e    ...
    jsr sub_c82fe                                                     ; 858e: 20 fe 82     ..
    sbc l1067                                                         ; 8591: ed 67 10    .g.
    bcc c8560                                                         ; 8594: 90 ca       ..
    jsr sub_c87da                                                     ; 8596: 20 da 87     ..
    bcs c8573                                                         ; 8599: b0 d8       ..
; $859b referenced 1 time by $8576
c859b
    ldy l00ab                                                         ; 859b: a4 ab       ..
    lda l0e08,y                                                       ; 859d: b9 08 0e    ...
    ora #$80                                                          ; 85a0: 09 80       ..
    sta l0e08,y                                                       ; 85a2: 99 08 0e    ...
    lda l1067                                                         ; 85a5: ad 67 10    .g.
    cmp l00aa                                                         ; 85a8: c5 aa       ..
    beq c85bc                                                         ; 85aa: f0 10       ..
    ldx l00aa                                                         ; 85ac: a6 aa       ..
    sta l00aa                                                         ; 85ae: 85 aa       ..
    bne c85bc                                                         ; 85b0: d0 0a       ..
    jsr ca3dc                                                         ; 85b2: 20 dc a3     ..
; $85b5 referenced 1 time by $85be
loop_c85b5
    jsr ca3dc                                                         ; 85b5: 20 dc a3     ..
    ldy #$ff                                                          ; 85b8: a0 ff       ..
    bne c85c5                                                         ; 85ba: d0 09       ..
; $85bc referenced 2 times by $85aa, $85b0
c85bc
    ldy l00a8                                                         ; 85bc: a4 a8       ..
    bne loop_c85b5                                                    ; 85be: d0 f5       ..
    ldy #5                                                            ; 85c0: a0 05       ..
    jsr c81a7                                                         ; 85c2: 20 a7 81     ..
; $85c5 referenced 1 time by $85ba
c85c5
    iny                                                               ; 85c5: c8          .
    sty l00a8                                                         ; 85c6: 84 a8       ..
    ldy l00ab                                                         ; 85c8: a4 ab       ..
    jsr sub_cac0c                                                     ; 85ca: 20 0c ac     ..
    jsr sub_c8174                                                     ; 85cd: 20 74 81     t.
    jmp c8543                                                         ; 85d0: 4c 43 85    LC.

; $85d3 referenced 1 time by $84e7
opt4_table
    !text "off", 0                                                    ; 85d3: 6f 66 66... off
    !text "LOAD"                                                      ; 85d7: 4c 4f 41... LOA
    !text "RUN", 0                                                    ; 85db: 52 55 4e... RUN
    !text "EXEC"                                                      ; 85df: 45 58 45... EXE

; $85e3 referenced 1 time by $8acd
sub_c85e3
    lda l0f0e,y                                                       ; 85e3: b9 0e 0f    ...
    jsr sub_c81b0                                                     ; 85e6: 20 b0 81     ..
    sta l00c2                                                         ; 85e9: 85 c2       ..
    clc                                                               ; 85eb: 18          .
    lda #$ff                                                          ; 85ec: a9 ff       ..
    adc l0f0c,y                                                       ; 85ee: 79 0c 0f    y..
    lda l0f0f,y                                                       ; 85f1: b9 0f 0f    ...
    adc l0f0d,y                                                       ; 85f4: 79 0d 0f    y..
    sta l00c3                                                         ; 85f7: 85 c3       ..
    lda l0f0e,y                                                       ; 85f9: b9 0e 0f    ...
    and #3                                                            ; 85fc: 29 03       ).
    adc l00c2                                                         ; 85fe: 65 c2       e.
    sta l00c2                                                         ; 8600: 85 c2       ..
; $8602 referenced 1 time by $8ac2
sub_c8602
    sec                                                               ; 8602: 38          8
    lda l0f07,y                                                       ; 8603: b9 07 0f    ...
    sbc l00c3                                                         ; 8606: e5 c3       ..
    pha                                                               ; 8608: 48          H
    lda l0f06,y                                                       ; 8609: b9 06 0f    ...
    and #3                                                            ; 860c: 29 03       ).
    sbc l00c2                                                         ; 860e: e5 c2       ..
    tax                                                               ; 8610: aa          .
    lda #0                                                            ; 8611: a9 00       ..
    cmp l00c0                                                         ; 8613: c5 c0       ..
    pla                                                               ; 8615: 68          h
    sbc l00c1                                                         ; 8616: e5 c1       ..
    txa                                                               ; 8618: 8a          .
    sbc l00c4                                                         ; 8619: e5 c4       ..
    rts                                                               ; 861b: 60          `

; $861c referenced 6 times by $870e, $8719, $8726, $873c, $a16f, $a187
command_table
    !text "ACCESS"                                                    ; 861c: 41 43 43... ACC
; $861d referenced 1 time by $8740
    !byte >(sub_c89e6-1)                                              ; 8622: 89          .
    !byte <(sub_c89e6-1)                                              ; 8623: e5          .
    !byte $32                                                         ; 8624: 32          2
    !text "BACKUP"                                                    ; 8625: 42 41 43... BAC
    !byte >(sub_ca417-1)                                              ; 862b: a4          .
    !byte <(sub_ca417-1)                                              ; 862c: 16          .
    !byte 4                                                           ; 862d: 04          .
    !text "CLOSE"                                                     ; 862e: 43 4c 4f... CLO
    !byte >(sub_c9b59-1)                                              ; 8633: 9b          .
    !byte <(sub_c9b59-1)                                              ; 8634: 58          X
    !byte 0                                                           ; 8635: 00          .
    !text "COMPACT"                                                   ; 8636: 43 4f 4d... COM
    !byte >(sub_ca244-1)                                              ; 863d: a2          .
    !byte <(sub_ca244-1)                                              ; 863e: 43          C
    !byte 7                                                           ; 863f: 07          .
    !text "COPY"                                                      ; 8640: 43 4f 50... COP
    !byte >(sub_ca463-1)                                              ; 8644: a4          .
    !byte <(sub_ca463-1)                                              ; 8645: 62          b
    !byte $24                                                         ; 8646: 24          $
    !text "DELETE"                                                    ; 8647: 44 45 4c... DEL
    !byte >(sub_c8782-1)                                              ; 864d: 87          .
    !byte <(sub_c8782-1)                                              ; 864e: 81          .
    !byte 1                                                           ; 864f: 01          .
    !text "DESTROY"                                                   ; 8650: 44 45 53... DES
    !byte >(sub_c8794-1)                                              ; 8657: 87          .
    !byte <(sub_c8794-1)                                              ; 8658: 93          .
    !byte 2                                                           ; 8659: 02          .
    !text "DIR"                                                       ; 865a: 44 49 52    DIR
    !byte >(sub_c893f-1)                                              ; 865d: 89          .
    !byte <(sub_c893f-1)                                              ; 865e: 3e          >
    !byte 6                                                           ; 865f: 06          .
    !text "DRIVE"                                                     ; 8660: 44 52 49... DRI
    !byte >(sub_c87ee-1)                                              ; 8665: 87          .
    !byte <(sub_c87ee-1)                                              ; 8666: ed          .
    !byte 9                                                           ; 8667: 09          .
    !text "ENABLE"                                                    ; 8668: 45 4e 41... ENA
    !byte >(sub_c8b47-1)                                              ; 866e: 8b          .
    !byte <(sub_c8b47-1)                                              ; 866f: 46          F
    !byte 0                                                           ; 8670: 00          .
    !text "EX"                                                        ; 8671: 45 58       EX
    !byte >(sub_c8238-1)                                              ; 8673: 82          .
    !byte <(sub_c8238-1)                                              ; 8674: 37          7
    !byte 6                                                           ; 8675: 06          .
    !text "FORM"                                                      ; 8676: 46 4f 52... FOR
    !byte >(sub_ca5bf-1)                                              ; 867a: a5          .
    !byte <(sub_ca5bf-1)                                              ; 867b: be          .
    !byte $ba                                                         ; 867c: ba          .
    !text "FREE"                                                      ; 867d: 46 52 45... FRE
    !byte >(sub_ca7f3-1)                                              ; 8681: a7          .
    !byte <(sub_ca7f3-1)                                              ; 8682: f2          .
    !byte 7                                                           ; 8683: 07          .
    !text "INFO"                                                      ; 8684: 49 4e 46... INF
    !byte >(sub_c8254-1)                                              ; 8688: 82          .
    !byte <(sub_c8254-1)                                              ; 8689: 53          S
    !byte 2                                                           ; 868a: 02          .
    !text "LIB"                                                       ; 868b: 4c 49 42    LIB
    !byte >(sub_c8943-1)                                              ; 868e: 89          .
    !byte <(sub_c8943-1)                                              ; 868f: 42          B
    !byte 6                                                           ; 8690: 06          .
    !text "MAP"                                                       ; 8691: 4d 41 50    MAP
    !byte >(sub_ca7f6-1)                                              ; 8694: a7          .
    !byte <(sub_ca7f6-1)                                              ; 8695: f5          .
    !byte 7                                                           ; 8696: 07          .
    !text "RENAME"                                                    ; 8697: 52 45 4e... REN
    !byte >(sub_c8bac-1)                                              ; 869d: 8b          .
    !byte <(sub_c8bac-1)                                              ; 869e: ab          .
    !byte 5                                                           ; 869f: 05          .
    !text "TITLE"                                                     ; 86a0: 54 49 54... TIT
    !byte >(sub_c89b7-1)                                              ; 86a5: 89          .
    !byte <(sub_c89b7-1)                                              ; 86a6: b6          .
    !byte 8                                                           ; 86a7: 08          .
    !text "VERIFY"                                                    ; 86a8: 56 45 52... VER
    !byte >(sub_ca5bb-1)                                              ; 86ae: a5          .
    !byte <(sub_ca5bb-1)                                              ; 86af: ba          .
    !byte $0b                                                         ; 86b0: 0b          .
    !text "WIPE"                                                      ; 86b1: 57 49 50... WIP
    !byte >(sub_c8750-1)                                              ; 86b5: 87          .
    !byte <(sub_c8750-1)                                              ; 86b6: 4f          O
    !byte   2, $88, $72                                               ; 86b7: 02 88 72    ..r
    !text "BUILD"                                                     ; 86ba: 42 55 49... BUI
    !byte >(sub_cabc5-1)                                              ; 86bf: ab          .
    !byte <(sub_cabc5-1)                                              ; 86c0: c4          .
    !byte 1                                                           ; 86c1: 01          .
    !text "DISC"                                                      ; 86c2: 44 49 53... DIS
    !byte >(c956d-1)                                                  ; 86c6: 95          .
    !byte <(c956d-1)                                                  ; 86c7: 6c          l
    !byte 0                                                           ; 86c8: 00          .
    !text "DUMP"                                                      ; 86c9: 44 55 4d... DUM
    !byte >(sub_cab46-1)                                              ; 86cd: ab          .
    !byte <(sub_cab46-1)                                              ; 86ce: 45          E
    !byte 1                                                           ; 86cf: 01          .
    !text "LIST"                                                      ; 86d0: 4c 49 53... LIS
    !byte >(sub_cab04-1)                                              ; 86d4: ab          .
    !byte <(sub_cab04-1)                                              ; 86d5: 03          .
    !byte 1                                                           ; 86d6: 01          .
    !text "ROMS"                                                      ; 86d7: 52 4f 4d... ROM
    !byte >(sub_ca9d0-1)                                              ; 86db: a9          .
    !byte <(sub_ca9d0-1)                                              ; 86dc: cf          .
    !byte $0c                                                         ; 86dd: 0c          .
    !text "TYPE"                                                      ; 86de: 54 59 50... TYP
    !byte >(sub_caafd-1)                                              ; 86e2: aa          .
    !byte <(sub_caafd-1)                                              ; 86e3: fc          .
    !byte 1                                                           ; 86e4: 01          .
    !text "DISK"                                                      ; 86e5: 44 49 53... DIS
    !byte >(c956d-1)                                                  ; 86e9: 95          .
    !byte <(c956d-1)                                                  ; 86ea: 6c          l
    !byte   0, $86, $1a                                               ; 86eb: 00 86 1a    ...
    !text "DFS"                                                       ; 86ee: 44 46 53    DFS
    !byte >(sub_ca106-1)                                              ; 86f1: a1          .
    !byte <(sub_ca106-1)                                              ; 86f2: 05          .
    !byte 0                                                           ; 86f3: 00          .
    !text "UTILS"                                                     ; 86f4: 55 54 49... UTI
    !byte >(sub_ca137-1)                                              ; 86f9: a1          .
    !byte <(sub_ca137-1)                                              ; 86fa: 36          6
    !byte   0, $a1                                                    ; 86fb: 00 a1       ..
    !text "= E"                                                       ; 86fd: 3d 20 45    = E
    !byte $87, $a2, $fd                                               ; 8700: 87 a2 fd    ...

; $8703 referenced 2 times by $96f2, $a134
c8703
    tya                                                               ; 8703: 98          .
    pha                                                               ; 8704: 48          H
; $8705 referenced 2 times by $872f, $8739
c8705
    inx                                                               ; 8705: e8          .
    inx                                                               ; 8706: e8          .
    pla                                                               ; 8707: 68          h
    pha                                                               ; 8708: 48          H
    tay                                                               ; 8709: a8          .
    jsr clc_jmp_gsinit                                                ; 870a: 20 4c 87     L.
    inx                                                               ; 870d: e8          .
    lda command_table,x                                               ; 870e: bd 1c 86    ...
    bmi c873b                                                         ; 8711: 30 28       0(
    dex                                                               ; 8713: ca          .
    dey                                                               ; 8714: 88          .
    stx l00bf                                                         ; 8715: 86 bf       ..
; $8717 referenced 1 time by $8722
loop_c8717
    inx                                                               ; 8717: e8          .
    iny                                                               ; 8718: c8          .
    lda command_table,x                                               ; 8719: bd 1c 86    ...
    bmi c8734                                                         ; 871c: 30 16       0.
    eor (os_text_ptr),y                                               ; 871e: 51 f2       Q.
    and #$5f ; '_'                                                    ; 8720: 29 5f       )_
    beq loop_c8717                                                    ; 8722: f0 f3       ..
    dex                                                               ; 8724: ca          .
; $8725 referenced 1 time by $8729
loop_c8725
    inx                                                               ; 8725: e8          .
    lda command_table,x                                               ; 8726: bd 1c 86    ...
    bpl loop_c8725                                                    ; 8729: 10 fa       ..
    lda (os_text_ptr),y                                               ; 872b: b1 f2       ..
    cmp #$2e ; '.'                                                    ; 872d: c9 2e       ..
    bne c8705                                                         ; 872f: d0 d4       ..
    iny                                                               ; 8731: c8          .
    bcs c873b                                                         ; 8732: b0 07       ..
; $8734 referenced 1 time by $871c
c8734
    lda (os_text_ptr),y                                               ; 8734: b1 f2       ..
    jsr sub_c8327                                                     ; 8736: 20 27 83     '.
    bcc c8705                                                         ; 8739: 90 ca       ..
; $873b referenced 2 times by $8711, $8732
c873b
    pla                                                               ; 873b: 68          h
    lda command_table,x                                               ; 873c: bd 1c 86    ...
    pha                                                               ; 873f: 48          H
    lda command_table+1,x                                             ; 8740: bd 1d 86    ...
    pha                                                               ; 8743: 48          H
    rts                                                               ; 8744: 60          `

; $8745 referenced 2 times by $8483, $8870
sub_c8745
    stx os_text_ptr                                                   ; 8745: 86 f2       ..
    sty l00f3                                                         ; 8747: 84 f3       ..
    ldy #0                                                            ; 8749: a0 00       ..
    rts                                                               ; 874b: 60          `

; $874c referenced 12 times by $8100, $823b, $8456, $870a, $897e, $89f1, $8b86, $a13e, $a14a, $a5e5, $a657, $a9f7
clc_jmp_gsinit
    clc                                                               ; 874c: 18          .
    jmp gsinit                                                        ; 874d: 4c c2 ff    L..

sub_c8750
    jsr sub_c99ac                                                     ; 8750: 20 ac 99     ..
    jsr sub_ca14a                                                     ; 8753: 20 4a a1     J.
    jsr sub_c821d                                                     ; 8756: 20 1d 82     ..
; $8759 referenced 1 time by $877f
c8759
    lda l0e0f,y                                                       ; 8759: b9 0f 0e    ...
    bmi c877c                                                         ; 875c: 30 1e       0.
    jsr sub_c8174                                                     ; 875e: 20 74 81     t.
    jsr sub_ca3e4                                                     ; 8761: 20 e4 a3     ..
    bne c8779                                                         ; 8764: d0 13       ..
    ldx l00b6                                                         ; 8766: a6 b6       ..
    jsr sub_c9bf2                                                     ; 8768: 20 f2 9b     ..
    stx l00b6                                                         ; 876b: 86 b6       ..
    jsr sub_c87e3                                                     ; 876d: 20 e3 87     ..
    sty l00ab                                                         ; 8770: 84 ab       ..
    jsr c93e6                                                         ; 8772: 20 e6 93     ..
    lda l00ab                                                         ; 8775: a5 ab       ..
    sta l00b6                                                         ; 8777: 85 b6       ..
; $8779 referenced 1 time by $8764
c8779
    jsr ca3dc                                                         ; 8779: 20 dc a3     ..
; $877c referenced 1 time by $875c
c877c
    jsr sub_c8280                                                     ; 877c: 20 80 82     ..
    bcs c8759                                                         ; 877f: b0 d8       ..
    rts                                                               ; 8781: 60          `

sub_c8782
    jsr c99a3                                                         ; 8782: 20 a3 99     ..
    jsr sub_ca14a                                                     ; 8785: 20 4a a1     J.
    jsr sub_c821d                                                     ; 8788: 20 1d 82     ..
    jsr sub_c8335                                                     ; 878b: 20 35 83     5.
    jsr sub_c830a                                                     ; 878e: 20 0a 83     ..
    jmp c93e6                                                         ; 8791: 4c e6 93    L..

sub_c8794
    jsr sub_ca315                                                     ; 8794: 20 15 a3     ..
    jsr sub_c99ac                                                     ; 8797: 20 ac 99     ..
    jsr sub_ca14a                                                     ; 879a: 20 4a a1     J.
    jsr sub_c821d                                                     ; 879d: 20 1d 82     ..
; $87a0 referenced 1 time by $87ae
loop_c87a0
    lda l0e0f,y                                                       ; 87a0: b9 0f 0e    ...
    bmi c87ab                                                         ; 87a3: 30 06       0.
    jsr sub_c8174                                                     ; 87a5: 20 74 81     t.
    jsr ca3dc                                                         ; 87a8: 20 dc a3     ..
; $87ab referenced 1 time by $87a3
c87ab
    jsr sub_c8280                                                     ; 87ab: 20 80 82     ..
    bcs loop_c87a0                                                    ; 87ae: b0 f0       ..
    jsr sub_ca3ec                                                     ; 87b0: 20 ec a3     ..
    beq c87b8                                                         ; 87b3: f0 03       ..
    jmp ca3dc                                                         ; 87b5: 4c dc a3    L..

; $87b8 referenced 1 time by $87b3
c87b8
    jsr sub_c9bf2                                                     ; 87b8: 20 f2 9b     ..
    jsr sub_c8284                                                     ; 87bb: 20 84 82     ..
; $87be referenced 1 time by $87c9
loop_c87be
    lda l0e0f,y                                                       ; 87be: b9 0f 0e    ...
    bmi c87c6                                                         ; 87c1: 30 03       0.
    jsr sub_c87e3                                                     ; 87c3: 20 e3 87     ..
; $87c6 referenced 1 time by $87c1
c87c6
    jsr sub_c8280                                                     ; 87c6: 20 80 82     ..
    bcs loop_c87be                                                    ; 87c9: b0 f3       ..
    jsr c93e6                                                         ; 87cb: 20 e6 93     ..
    jsr print_inline_l809f_top_bit_clear                              ; 87ce: 20 77 80     w.
    !text $0d, "Deleted", $0d                                         ; 87d1: 0d 44 65... .De

; $87da referenced 6 times by $853e, $8552, $8596, $8b0c, $8be5, $98b5
sub_c87da
    iny                                                               ; 87da: c8          .
; $87db referenced 2 times by $837a, $8588
sub_c87db
    iny                                                               ; 87db: c8          .
    iny                                                               ; 87dc: c8          .
    iny                                                               ; 87dd: c8          .
    iny                                                               ; 87de: c8          .
    iny                                                               ; 87df: c8          .
    iny                                                               ; 87e0: c8          .
    iny                                                               ; 87e1: c8          .
    rts                                                               ; 87e2: 60          `

; $87e3 referenced 2 times by $876d, $87c3
sub_c87e3
    jsr sub_c830a                                                     ; 87e3: 20 0a 83     ..
    ldy l00b6                                                         ; 87e6: a4 b6       ..
    jsr sub_c82b2                                                     ; 87e8: 20 b2 82     ..
    sty l00b6                                                         ; 87eb: 84 b6       ..
    rts                                                               ; 87ed: 60          `

sub_c87ee
    jsr sub_ca14a                                                     ; 87ee: 20 4a a1     J.
    jsr c8b8b                                                         ; 87f1: 20 8b 8b     ..
    sta l10ca                                                         ; 87f4: 8d ca 10    ...
    jsr sub_c8456                                                     ; 87f7: 20 56 84     V.
    beq c8815                                                         ; 87fa: f0 19       ..
    cmp #$28 ; '('                                                    ; 87fc: c9 28       .(
    beq c8808                                                         ; 87fe: f0 08       ..
    cmp #$50 ; 'P'                                                    ; 8800: c9 50       .P
    clc                                                               ; 8802: 18          .
    beq c8808                                                         ; 8803: f0 03       ..
    jmp ca14f                                                         ; 8805: 4c 4f a1    LO.

; $8808 referenced 2 times by $87fe, $8803
c8808
    php                                                               ; 8808: 08          .
    ldx l10ca                                                         ; 8809: ae ca 10    ...
    lda l10de,x                                                       ; 880c: bd de 10    ...
    rol                                                               ; 880f: 2a          *
    plp                                                               ; 8810: 28          (
    ror                                                               ; 8811: 6a          j
    sta l10de,x                                                       ; 8812: 9d de 10    ...
; $8815 referenced 1 time by $87fa
c8815
    rts                                                               ; 8815: 60          `

; $8816 referenced 8 times by $888f, $8985, $898d, $8b83, $8b9d, $9bef, $a475, $a4ce
c8816
    and #3                                                            ; 8816: 29 03       ).
    sta l00cd                                                         ; 8818: 85 cd       ..
    rts                                                               ; 881a: 60          `

    jsr sub_c8222                                                     ; 881b: 20 22 82     ".
    jsr sub_c9a82                                                     ; 881e: 20 82 9a     ..
    jsr sub_c8386                                                     ; 8821: 20 86 83     ..
    lda #$80                                                          ; 8824: a9 80       ..
; $8826 referenced 1 time by $88f6
sub_c8826
    sta l1096                                                         ; 8826: 8d 96 10    ...
    sty l00ba                                                         ; 8829: 84 ba       ..
    ldx #0                                                            ; 882b: a2 00       ..
    lda l00be                                                         ; 882d: a5 be       ..
    bne c8837                                                         ; 882f: d0 06       ..
    iny                                                               ; 8831: c8          .
    iny                                                               ; 8832: c8          .
    ldx #2                                                            ; 8833: a2 02       ..
    bne c883f                                                         ; 8835: d0 08       ..
; $8837 referenced 1 time by $882f
c8837
    lda l0f0e,y                                                       ; 8837: b9 0e 0f    ...
    sta l00c2                                                         ; 883a: 85 c2       ..
    jsr sub_c8b4d                                                     ; 883c: 20 4d 8b     M.
; $883f referenced 2 times by $8835, $8848
c883f
    lda l0f08,y                                                       ; 883f: b9 08 0f    ...
    sta l00bc,x                                                       ; 8842: 95 bc       ..
    iny                                                               ; 8844: c8          .
    inx                                                               ; 8845: e8          .
    cpx #8                                                            ; 8846: e0 08       ..
    bne c883f                                                         ; 8848: d0 f5       ..
    jsr sub_c8b64                                                     ; 884a: 20 64 8b     d.
    ldy l00ba                                                         ; 884d: a4 ba       ..
    jsr sub_c8335                                                     ; 884f: 20 35 83     5.
    jmp c8867                                                         ; 8852: 4c 67 88    Lg.

; $8855 referenced 2 times by $9f61, $a561
sub_c8855
    lda #$80                                                          ; 8855: a9 80       ..
    bne c8864                                                         ; 8857: d0 0b       ..
    jsr sub_c8a77                                                     ; 8859: 20 77 8a     w.
    jsr sub_c9a82                                                     ; 885c: 20 82 9a     ..
    jsr sub_c8386                                                     ; 885f: 20 86 83     ..
; $8862 referenced 2 times by $9f51, $a587
sub_c8862
    lda #$a0                                                          ; 8862: a9 a0       ..
; $8864 referenced 1 time by $8857
c8864
    sta l1096                                                         ; 8864: 8d 96 10    ...
; $8867 referenced 1 time by $8852
c8867
    jsr sub_c81ca                                                     ; 8867: 20 ca 81     ..
    jsr sub_c9445                                                     ; 886a: 20 45 94     E.
    lda #1                                                            ; 886d: a9 01       ..
    rts                                                               ; 886f: 60          `

    jsr sub_c8745                                                     ; 8870: 20 45 87     E.
    jsr sub_c8932                                                     ; 8873: 20 32 89     2.
    sty l10da                                                         ; 8876: 8c da 10    ...
    jsr sub_c80f3                                                     ; 8879: 20 f3 80     ..
    sty l10d9                                                         ; 887c: 8c d9 10    ...
    jsr sub_c8266                                                     ; 887f: 20 66 82     f.
    bcs c88a6                                                         ; 8882: b0 22       ."
    ldy l10da                                                         ; 8884: ac da 10    ...
    lda l10cb                                                         ; 8887: ad cb 10    ...
    sta l00cc                                                         ; 888a: 85 cc       ..
    lda l10cc                                                         ; 888c: ad cc 10    ...
    jsr c8816                                                         ; 888f: 20 16 88     ..
    jsr sub_c80f6                                                     ; 8892: 20 f6 80     ..
    jsr sub_c8266                                                     ; 8895: 20 66 82     f.
    bcs c88a6                                                         ; 8898: b0 0c       ..
    jsr generate_error_precheck_bad                                   ; 889a: 20 2e 80     ..
    !byte $fe                                                         ; 889d: fe          .
    !text "command"                                                   ; 889e: 63 6f 6d... com
    !byte 0                                                           ; 88a5: 00          .

; $88a6 referenced 2 times by $8882, $8898
c88a6
    lda l0f0e,y                                                       ; 88a6: b9 0e 0f    ...
    jsr sub_c81ae                                                     ; 88a9: 20 ae 81     ..
    cmp #3                                                            ; 88ac: c9 03       ..
    bne c88f4                                                         ; 88ae: d0 44       .D
    lda l0f0a,y                                                       ; 88b0: b9 0a 0f    ...
    and l0f0b,y                                                       ; 88b3: 39 0b 0f    9..
    cmp #$ff                                                          ; 88b6: c9 ff       ..
    bne c88f4                                                         ; 88b8: d0 3a       .:
    ldx #6                                                            ; 88ba: a2 06       ..
; $88bc referenced 1 time by $88c3
loop_c88bc
    lda l1000,x                                                       ; 88bc: bd 00 10    ...
    sta l1007,x                                                       ; 88bf: 9d 07 10    ...
    dex                                                               ; 88c2: ca          .
    bpl loop_c88bc                                                    ; 88c3: 10 f7       ..
    lda #$0d                                                          ; 88c5: a9 0d       ..
    sta l100e                                                         ; 88c7: 8d 0e 10    ...
    lda #$45 ; 'E'                                                    ; 88ca: a9 45       .E
    sta l1000                                                         ; 88cc: 8d 00 10    ...
    lda #$2e ; '.'                                                    ; 88cf: a9 2e       ..
    sta l1001                                                         ; 88d1: 8d 01 10    ...
    lda #$3a ; ':'                                                    ; 88d4: a9 3a       .:
    sta l1002                                                         ; 88d6: 8d 02 10    ...
    lda l00cd                                                         ; 88d9: a5 cd       ..
    ora #$30 ; '0'                                                    ; 88db: 09 30       .0
    sta l1003                                                         ; 88dd: 8d 03 10    ...
    lda #$2e ; '.'                                                    ; 88e0: a9 2e       ..
    sta l1004                                                         ; 88e2: 8d 04 10    ...
    sta l1006                                                         ; 88e5: 8d 06 10    ...
    lda l00cc                                                         ; 88e8: a5 cc       ..
    sta l1005                                                         ; 88ea: 8d 05 10    ...
    ldx #<(l1000)                                                     ; 88ed: a2 00       ..
    ldy #>(l1000)                                                     ; 88ef: a0 10       ..
    jmp oscli                                                         ; 88f1: 4c f7 ff    L..

; $88f4 referenced 2 times by $88ae, $88b8
c88f4
    lda #$81                                                          ; 88f4: a9 81       ..
    jsr sub_c8826                                                     ; 88f6: 20 26 88     &.
    clc                                                               ; 88f9: 18          .
    lda l10d9                                                         ; 88fa: ad d9 10    ...
    tay                                                               ; 88fd: a8          .
    adc os_text_ptr                                                   ; 88fe: 65 f2       e.
    sta l10d9                                                         ; 8900: 8d d9 10    ...
    lda l00f3                                                         ; 8903: a5 f3       ..
    adc #0                                                            ; 8905: 69 00       i.
    sta l10da                                                         ; 8907: 8d da 10    ...
    lda l1076                                                         ; 890a: ad 76 10    .v.
    and l1077                                                         ; 890d: 2d 77 10    -w.
    ora l10d6                                                         ; 8910: 0d d6 10    ...
    cmp #$ff                                                          ; 8913: c9 ff       ..
    beq c892d                                                         ; 8915: f0 16       ..
    lda l00be                                                         ; 8917: a5 be       ..
    sta l1074                                                         ; 8919: 8d 74 10    .t.
    lda l00bf                                                         ; 891c: a5 bf       ..
    sta l1075                                                         ; 891e: 8d 75 10    .u.
    jsr sub_c8f6b                                                     ; 8921: 20 6b 8f     k.
    ldx #$74 ; 't'                                                    ; 8924: a2 74       .t
    ldy #$10                                                          ; 8926: a0 10       ..
    lda #4                                                            ; 8928: a9 04       ..
    jmp tube_entry                                                    ; 892a: 4c 06 04    L..

; $892d referenced 1 time by $8915
c892d
    lda #1                                                            ; 892d: a9 01       ..
    jmp (l00be)                                                       ; 892f: 6c be 00    l..

; $8932 referenced 1 time by $8873
sub_c8932
    lda #$ff                                                          ; 8932: a9 ff       ..
    sta l00be                                                         ; 8934: 85 be       ..
    lda os_text_ptr                                                   ; 8936: a5 f2       ..
    sta l00ba                                                         ; 8938: 85 ba       ..
    lda l00f3                                                         ; 893a: a5 f3       ..
    sta l00bb                                                         ; 893c: 85 bb       ..
    rts                                                               ; 893e: 60          `

sub_c893f
    ldx #0                                                            ; 893f: a2 00       ..
    beq c8945                                                         ; 8941: f0 02       ..
sub_c8943
    ldx #2                                                            ; 8943: a2 02       ..
; $8945 referenced 1 time by $8941
c8945
    jsr sub_c8979                                                     ; 8945: 20 79 89     y.
    sta l10ca,x                                                       ; 8948: 9d ca 10    ...
    lda l00cc                                                         ; 894b: a5 cc       ..
    sta l10c9,x                                                       ; 894d: 9d c9 10    ...
    rts                                                               ; 8950: 60          `

; $8951 referenced 2 times by $96b4, $9729
sub_c8951
    jsr sub_c83e3                                                     ; 8951: 20 e3 83     ..
    lda l00b0                                                         ; 8954: a5 b0       ..
    pha                                                               ; 8956: 48          H
    lda l00b1                                                         ; 8957: a5 b1       ..
    pha                                                               ; 8959: 48          H
    jsr sub_c9ab8                                                     ; 895a: 20 b8 9a     ..
    ldy #0                                                            ; 895d: a0 00       ..
; $895f referenced 1 time by $8970
loop_c895f
    cpy #$c0                                                          ; 895f: c0 c0       ..
    bcc c8968                                                         ; 8961: 90 05       ..
    lda l1000,y                                                       ; 8963: b9 00 10    ...
    bcs c896b                                                         ; 8966: b0 03       ..
; $8968 referenced 1 time by $8961
c8968
    lda l1100,y                                                       ; 8968: b9 00 11    ...
; $896b referenced 1 time by $8966
c896b
    sta (l00b0),y                                                     ; 896b: 91 b0       ..
    iny                                                               ; 896d: c8          .
    cpy #$ee                                                          ; 896e: c0 ee       ..
    bne loop_c895f                                                    ; 8970: d0 ed       ..
    pla                                                               ; 8972: 68          h
    sta l00b1                                                         ; 8973: 85 b1       ..
    pla                                                               ; 8975: 68          h
    sta l00b0                                                         ; 8976: 85 b0       ..
    rts                                                               ; 8978: 60          `

; $8979 referenced 1 time by $8945
sub_c8979
    lda l10c9                                                         ; 8979: ad c9 10    ...
    sta l00cc                                                         ; 897c: 85 cc       ..
    jsr clc_jmp_gsinit                                                ; 897e: 20 4c 87     L.
    bne c898a                                                         ; 8981: d0 07       ..
    lda #0                                                            ; 8983: a9 00       ..
    jsr c8816                                                         ; 8985: 20 16 88     ..
    beq c89b4                                                         ; 8988: f0 2a       .*
; $898a referenced 2 times by $8240, $8981
c898a
    lda l10ca                                                         ; 898a: ad ca 10    ...
    jsr c8816                                                         ; 898d: 20 16 88     ..
; $8990 referenced 1 time by $89a3
loop_c8990
    jsr sub_c8149                                                     ; 8990: 20 49 81     I.
    bcs c89a5                                                         ; 8993: b0 10       ..
    cmp #$3a ; ':'                                                    ; 8995: c9 3a       .:
    bne c89ad                                                         ; 8997: d0 14       ..
    jsr c8b8b                                                         ; 8999: 20 8b 8b     ..
    jsr sub_c8149                                                     ; 899c: 20 49 81     I.
    bcs c89b4                                                         ; 899f: b0 13       ..
    cmp #$2e ; '.'                                                    ; 89a1: c9 2e       ..
    beq loop_c8990                                                    ; 89a3: f0 eb       ..
; $89a5 referenced 2 times by $8993, $89b2
c89a5
    jsr generate_error_precheck_bad                                   ; 89a5: 20 2e 80     ..
    !byte $ce                                                         ; 89a8: ce          .
    !text "dir"                                                       ; 89a9: 64 69 72    dir
    !byte 0                                                           ; 89ac: 00          .

; $89ad referenced 1 time by $8997
c89ad
    sta l00cc                                                         ; 89ad: 85 cc       ..
    jsr sub_c8149                                                     ; 89af: 20 49 81     I.
    bcc c89a5                                                         ; 89b2: 90 f1       ..
; $89b4 referenced 2 times by $8988, $899f
c89b4
    lda l00cd                                                         ; 89b4: a5 cd       ..
    rts                                                               ; 89b6: 60          `

sub_c89b7
    jsr sub_ca14a                                                     ; 89b7: 20 4a a1     J.
    jsr sub_c8b7b                                                     ; 89ba: 20 7b 8b     {.
    jsr sub_c8380                                                     ; 89bd: 20 80 83     ..
    ldx #$0b                                                          ; 89c0: a2 0b       ..
    lda #0                                                            ; 89c2: a9 00       ..
; $89c4 referenced 1 time by $89c8
loop_c89c4
    jsr sub_c89da                                                     ; 89c4: 20 da 89     ..
    dex                                                               ; 89c7: ca          .
    bpl loop_c89c4                                                    ; 89c8: 10 fa       ..
; $89ca referenced 1 time by $89d5
loop_c89ca
    inx                                                               ; 89ca: e8          .
    jsr sub_c8149                                                     ; 89cb: 20 49 81     I.
    bcs c89d7                                                         ; 89ce: b0 07       ..
    jsr sub_c89da                                                     ; 89d0: 20 da 89     ..
    cpx #$0b                                                          ; 89d3: e0 0b       ..
    bcc loop_c89ca                                                    ; 89d5: 90 f3       ..
; $89d7 referenced 3 times by $89ce, $8a15, $99ed
c89d7
    jmp c93e6                                                         ; 89d7: 4c e6 93    L..

; $89da referenced 2 times by $89c4, $89d0
sub_c89da
    cpx #8                                                            ; 89da: e0 08       ..
    bcc c89e2                                                         ; 89dc: 90 04       ..
    sta l0ef8,x                                                       ; 89de: 9d f8 0e    ...
    rts                                                               ; 89e1: 60          `

; $89e2 referenced 1 time by $89dc
c89e2
    sta l0e00,x                                                       ; 89e2: 9d 00 0e    ...
    rts                                                               ; 89e5: 60          `

sub_c89e6
    jsr sub_c99ac                                                     ; 89e6: 20 ac 99     ..
    jsr sub_ca14a                                                     ; 89e9: 20 4a a1     J.
    jsr sub_c80ed                                                     ; 89ec: 20 ed 80     ..
    ldx #0                                                            ; 89ef: a2 00       ..
    jsr clc_jmp_gsinit                                                ; 89f1: 20 4c 87     L.
    bne c8a19                                                         ; 89f4: d0 23       .#
; $89f6 referenced 1 time by $8a1c
c89f6
    stx l00aa                                                         ; 89f6: 86 aa       ..
    jsr sub_c8284                                                     ; 89f8: 20 84 82     ..
    bcs c8a00                                                         ; 89fb: b0 03       ..
    jmp c822a                                                         ; 89fd: 4c 2a 82    L*.

; $8a00 referenced 2 times by $89fb, $8a13
c8a00
    jsr sub_c9a63                                                     ; 8a00: 20 63 9a     c.
    lda l0e0f,y                                                       ; 8a03: b9 0f 0e    ...
    and #$7f                                                          ; 8a06: 29 7f       ).
    ora l00aa                                                         ; 8a08: 05 aa       ..
    sta l0e0f,y                                                       ; 8a0a: 99 0f 0e    ...
    jsr sub_c8335                                                     ; 8a0d: 20 35 83     5.
    jsr sub_c8280                                                     ; 8a10: 20 80 82     ..
    bcs c8a00                                                         ; 8a13: b0 eb       ..
    bcc c89d7                                                         ; 8a15: 90 c0       ..
; $8a17 referenced 1 time by $8a22
loop_c8a17
    ldx #$80                                                          ; 8a17: a2 80       ..
; $8a19 referenced 1 time by $89f4
c8a19
    jsr sub_c8149                                                     ; 8a19: 20 49 81     I.
    bcs c89f6                                                         ; 8a1c: b0 d8       ..
    and #$5f ; '_'                                                    ; 8a1e: 29 5f       )_
    cmp #$4c ; 'L'                                                    ; 8a20: c9 4c       .L
    beq loop_c8a17                                                    ; 8a22: f0 f3       ..
    jsr generate_error_precheck_bad                                   ; 8a24: 20 2e 80     ..
    !byte $cf                                                         ; 8a27: cf          .
    !text "attribute"                                                 ; 8a28: 61 74 74... att
    !byte 0                                                           ; 8a31: 00          .

    jsr sub_c83e3                                                     ; 8a32: 20 e3 83     ..
    txa                                                               ; 8a35: 8a          .
    cmp #4                                                            ; 8a36: c9 04       ..
    beq c8a54                                                         ; 8a38: f0 1a       ..
    cmp #2                                                            ; 8a3a: c9 02       ..
    bcc c8a49                                                         ; 8a3c: 90 0b       ..
    jsr generate_error_precheck_bad                                   ; 8a3e: 20 2e 80     ..
    !byte $cb                                                         ; 8a41: cb          .
    !text "option"                                                    ; 8a42: 6f 70 74... opt
    !byte 0                                                           ; 8a48: 00          .

; $8a49 referenced 1 time by $8a3c
c8a49
    ldx #$ff                                                          ; 8a49: a2 ff       ..
    tya                                                               ; 8a4b: 98          .
    beq c8a50                                                         ; 8a4c: f0 02       ..
    ldx #0                                                            ; 8a4e: a2 00       ..
; $8a50 referenced 1 time by $8a4c
c8a50
    stx l10c6                                                         ; 8a50: 8e c6 10    ...
    rts                                                               ; 8a53: 60          `

; $8a54 referenced 1 time by $8a38
c8a54
    tya                                                               ; 8a54: 98          .
    pha                                                               ; 8a55: 48          H
    jsr sub_c8b7b                                                     ; 8a56: 20 7b 8b     {.
    jsr c940c                                                         ; 8a59: 20 0c 94     ..
    pla                                                               ; 8a5c: 68          h
    jsr sub_c81c5                                                     ; 8a5d: 20 c5 81     ..
    eor l0f06                                                         ; 8a60: 4d 06 0f    M..
    and #$30 ; '0'                                                    ; 8a63: 29 30       )0
    eor l0f06                                                         ; 8a65: 4d 06 0f    M..
    sta l0f06                                                         ; 8a68: 8d 06 0f    ...
    jmp c93e6                                                         ; 8a6b: 4c e6 93    L..

; $8a6e referenced 2 times by $8ac8, $a414
c8a6e
    jsr generate_error_precheck_disc                                  ; 8a6e: 20 23 80     #.
    !byte $c6                                                         ; 8a71: c6          .
    !text "full"                                                      ; 8a72: 66 75 6c... ful
    !byte 0                                                           ; 8a76: 00          .

; $8a77 referenced 2 times by $8859, $9c4e
sub_c8a77
    jsr sub_c80f3                                                     ; 8a77: 20 f3 80     ..
    jsr sub_c8284                                                     ; 8a7a: 20 84 82     ..
    bcc c8a82                                                         ; 8a7d: 90 03       ..
    jsr sub_c830a                                                     ; 8a7f: 20 0a 83     ..
; $8a82 referenced 1 time by $8a7d
c8a82
    lda l00c0                                                         ; 8a82: a5 c0       ..
    pha                                                               ; 8a84: 48          H
    lda l00c1                                                         ; 8a85: a5 c1       ..
    pha                                                               ; 8a87: 48          H
    sec                                                               ; 8a88: 38          8
    lda l00c2                                                         ; 8a89: a5 c2       ..
    sbc l00c0                                                         ; 8a8b: e5 c0       ..
    sta l00c0                                                         ; 8a8d: 85 c0       ..
    lda l00c3                                                         ; 8a8f: a5 c3       ..
    sbc l00c1                                                         ; 8a91: e5 c1       ..
    sta l00c1                                                         ; 8a93: 85 c1       ..
    lda l107a                                                         ; 8a95: ad 7a 10    .z.
    sbc l1078                                                         ; 8a98: ed 78 10    .x.
    sta l00c4                                                         ; 8a9b: 85 c4       ..
    jsr sub_c8ab3                                                     ; 8a9d: 20 b3 8a     ..
    lda l1079                                                         ; 8aa0: ad 79 10    .y.
    sta l1075                                                         ; 8aa3: 8d 75 10    .u.
    lda l1078                                                         ; 8aa6: ad 78 10    .x.
    sta l1074                                                         ; 8aa9: 8d 74 10    .t.
    pla                                                               ; 8aac: 68          h
    sta l00bd                                                         ; 8aad: 85 bd       ..
    pla                                                               ; 8aaf: 68          h
    sta l00bc                                                         ; 8ab0: 85 bc       ..
    rts                                                               ; 8ab2: 60          `

; $8ab3 referenced 2 times by $8a9d, $a50a
sub_c8ab3
    lda #0                                                            ; 8ab3: a9 00       ..
    sta l00c2                                                         ; 8ab5: 85 c2       ..
    lda #2                                                            ; 8ab7: a9 02       ..
    sta l00c3                                                         ; 8ab9: 85 c3       ..
    ldy l0f05                                                         ; 8abb: ac 05 0f    ...
    cpy #$f8                                                          ; 8abe: c0 f8       ..
    bcs c8b18                                                         ; 8ac0: b0 56       .V
    jsr sub_c8602                                                     ; 8ac2: 20 02 86     ..
    jmp c8ad0                                                         ; 8ac5: 4c d0 8a    L..

; $8ac8 referenced 1 time by $8ad1
loop_c8ac8
    beq c8a6e                                                         ; 8ac8: f0 a4       ..
    jsr sub_c82b2                                                     ; 8aca: 20 b2 82     ..
    jsr sub_c85e3                                                     ; 8acd: 20 e3 85     ..
; $8ad0 referenced 1 time by $8ac5
c8ad0
    tya                                                               ; 8ad0: 98          .
    bcc loop_c8ac8                                                    ; 8ad1: 90 f5       ..
    sty l00b0                                                         ; 8ad3: 84 b0       ..
    ldy l0f05                                                         ; 8ad5: ac 05 0f    ...
; $8ad8 referenced 1 time by $8ae9
loop_c8ad8
    cpy l00b0                                                         ; 8ad8: c4 b0       ..
    beq c8aeb                                                         ; 8ada: f0 0f       ..
    lda l0e07,y                                                       ; 8adc: b9 07 0e    ...
    sta l0e0f,y                                                       ; 8adf: 99 0f 0e    ...
    lda l0f07,y                                                       ; 8ae2: b9 07 0f    ...
    sta l0f0f,y                                                       ; 8ae5: 99 0f 0f    ...
    dey                                                               ; 8ae8: 88          .
    bcs loop_c8ad8                                                    ; 8ae9: b0 ed       ..
; $8aeb referenced 1 time by $8ada
c8aeb
    ldx #0                                                            ; 8aeb: a2 00       ..
    jsr sub_c8b25                                                     ; 8aed: 20 25 8b     %.
; $8af0 referenced 1 time by $8af9
loop_c8af0
    lda l00c5,x                                                       ; 8af0: b5 c5       ..
    sta l0e08,y                                                       ; 8af2: 99 08 0e    ...
    iny                                                               ; 8af5: c8          .
    inx                                                               ; 8af6: e8          .
    cpx #8                                                            ; 8af7: e0 08       ..
    bne loop_c8af0                                                    ; 8af9: d0 f5       ..
; $8afb referenced 1 time by $8b02
loop_c8afb
    lda l00bb,x                                                       ; 8afb: b5 bb       ..
    dey                                                               ; 8afd: 88          .
    sta l0f08,y                                                       ; 8afe: 99 08 0f    ...
    dex                                                               ; 8b01: ca          .
    bne loop_c8afb                                                    ; 8b02: d0 f7       ..
    jsr sub_c8335                                                     ; 8b04: 20 35 83     5.
    tya                                                               ; 8b07: 98          .
    pha                                                               ; 8b08: 48          H
    ldy l0f05                                                         ; 8b09: ac 05 0f    ...
    jsr sub_c87da                                                     ; 8b0c: 20 da 87     ..
    sty l0f05                                                         ; 8b0f: 8c 05 0f    ...
    jsr c93e6                                                         ; 8b12: 20 e6 93     ..
    pla                                                               ; 8b15: 68          h
    tay                                                               ; 8b16: a8          .
    rts                                                               ; 8b17: 60          `

; $8b18 referenced 1 time by $8ac0
c8b18
    jsr generate_error_precheck                                       ; 8b18: 20 38 80     8.
    !byte $be                                                         ; 8b1b: be          .
    !text "Cat full"                                                  ; 8b1c: 43 61 74... Cat
    !byte 0                                                           ; 8b24: 00          .

; $8b25 referenced 1 time by $8aed
sub_c8b25
    lda l1076                                                         ; 8b25: ad 76 10    .v.
    and #3                                                            ; 8b28: 29 03       ).
    asl                                                               ; 8b2a: 0a          .
    asl                                                               ; 8b2b: 0a          .
    eor l00c4                                                         ; 8b2c: 45 c4       E.
    and #$fc                                                          ; 8b2e: 29 fc       ).
    eor l00c4                                                         ; 8b30: 45 c4       E.
    asl                                                               ; 8b32: 0a          .
    asl                                                               ; 8b33: 0a          .
    eor l1074                                                         ; 8b34: 4d 74 10    Mt.
    and #$fc                                                          ; 8b37: 29 fc       ).
    eor l1074                                                         ; 8b39: 4d 74 10    Mt.
    asl                                                               ; 8b3c: 0a          .
    asl                                                               ; 8b3d: 0a          .
    eor l00c2                                                         ; 8b3e: 45 c2       E.
    and #$fc                                                          ; 8b40: 29 fc       ).
    eor l00c2                                                         ; 8b42: 45 c2       E.
    sta l00c2                                                         ; 8b44: 85 c2       ..
    rts                                                               ; 8b46: 60          `

sub_c8b47
    lda #1                                                            ; 8b47: a9 01       ..
    sta l10c7                                                         ; 8b49: 8d c7 10    ...
    rts                                                               ; 8b4c: 60          `

; $8b4d referenced 2 times by $883c, $a4fd
sub_c8b4d
    lda #0                                                            ; 8b4d: a9 00       ..
    sta l1075                                                         ; 8b4f: 8d 75 10    .u.
    lda l00c2                                                         ; 8b52: a5 c2       ..
    jsr sub_c81b7                                                     ; 8b54: 20 b7 81     ..
    cmp #3                                                            ; 8b57: c9 03       ..
    bne c8b60                                                         ; 8b59: d0 05       ..
    lda #$ff                                                          ; 8b5b: a9 ff       ..
    sta l1075                                                         ; 8b5d: 8d 75 10    .u.
; $8b60 referenced 1 time by $8b59
c8b60
    sta l1074                                                         ; 8b60: 8d 74 10    .t.
    rts                                                               ; 8b63: 60          `

; $8b64 referenced 2 times by $884a, $a500
sub_c8b64
    lda #0                                                            ; 8b64: a9 00       ..
    sta l1077                                                         ; 8b66: 8d 77 10    .w.
    lda l00c2                                                         ; 8b69: a5 c2       ..
    jsr sub_c81ae                                                     ; 8b6b: 20 ae 81     ..
    cmp #3                                                            ; 8b6e: c9 03       ..
    bne c8b77                                                         ; 8b70: d0 05       ..
    lda #$ff                                                          ; 8b72: a9 ff       ..
    sta l1077                                                         ; 8b74: 8d 77 10    .w.
; $8b77 referenced 1 time by $8b70
c8b77
    sta l1076                                                         ; 8b77: 8d 76 10    .v.
    rts                                                               ; 8b7a: 60          `

; $8b7b referenced 8 times by $80ed, $80f3, $8238, $89ba, $8a56, $975b, $988b, $98d7
sub_c8b7b
    lda l10c9                                                         ; 8b7b: ad c9 10    ...
    sta l00cc                                                         ; 8b7e: 85 cc       ..
; $8b80 referenced 1 time by $8b89
loop_c8b80
    lda l10ca                                                         ; 8b80: ad ca 10    ...
    jmp c8816                                                         ; 8b83: 4c 16 88    L..

; $8b86 referenced 3 times by $8486, $a244, $a7f9
sub_c8b86
    jsr clc_jmp_gsinit                                                ; 8b86: 20 4c 87     L.
    beq loop_c8b80                                                    ; 8b89: f0 f5       ..
; $8b8b referenced 7 times by $8119, $87f1, $8999, $8b92, $a327, $a330, $a637
c8b8b
    jsr sub_c8149                                                     ; 8b8b: 20 49 81     I.
    bcs c8ba2                                                         ; 8b8e: b0 12       ..
    cmp #$3a ; ':'                                                    ; 8b90: c9 3a       .:
    beq c8b8b                                                         ; 8b92: f0 f7       ..
    sec                                                               ; 8b94: 38          8
    sbc #$30 ; '0'                                                    ; 8b95: e9 30       .0
    bcc c8ba2                                                         ; 8b97: 90 09       ..
    cmp #4                                                            ; 8b99: c9 04       ..
    bcs c8ba2                                                         ; 8b9b: b0 05       ..
    jsr c8816                                                         ; 8b9d: 20 16 88     ..
    clc                                                               ; 8ba0: 18          .
    rts                                                               ; 8ba1: 60          `

; $8ba2 referenced 5 times by $8b8e, $8b97, $8b9b, $8bcd, $a660
c8ba2
    jsr generate_error_precheck_bad                                   ; 8ba2: 20 2e 80     ..
    !byte $cd                                                         ; 8ba5: cd          .
    !text "drive"                                                     ; 8ba6: 64 72 69... dri
    !byte 0                                                           ; 8bab: 00          .

sub_c8bac
    jsr c99a3                                                         ; 8bac: 20 a3 99     ..
    jsr sub_ca14a                                                     ; 8baf: 20 4a a1     J.
    jsr sub_c80ed                                                     ; 8bb2: 20 ed 80     ..
    tya                                                               ; 8bb5: 98          .
    pha                                                               ; 8bb6: 48          H
    jsr c8225                                                         ; 8bb7: 20 25 82     %.
    jsr sub_c9a60                                                     ; 8bba: 20 60 9a     `.
    sty l00c4                                                         ; 8bbd: 84 c4       ..
    pla                                                               ; 8bbf: 68          h
    tay                                                               ; 8bc0: a8          .
    jsr sub_ca14a                                                     ; 8bc1: 20 4a a1     J.
    lda l00cd                                                         ; 8bc4: a5 cd       ..
    pha                                                               ; 8bc6: 48          H
    jsr sub_c80ed                                                     ; 8bc7: 20 ed 80     ..
    pla                                                               ; 8bca: 68          h
    cmp l00cd                                                         ; 8bcb: c5 cd       ..
    bne c8ba2                                                         ; 8bcd: d0 d3       ..
    jsr sub_c8284                                                     ; 8bcf: 20 84 82     ..
    bcc c8be3                                                         ; 8bd2: 90 0f       ..
    cpy l00c4                                                         ; 8bd4: c4 c4       ..
    beq c8be3                                                         ; 8bd6: f0 0b       ..
    jsr generate_error_precheck                                       ; 8bd8: 20 38 80     8.
    !byte $c4                                                         ; 8bdb: c4          .
    !text "Exists"                                                    ; 8bdc: 45 78 69... Exi
    !byte 0                                                           ; 8be2: 00          .

; $8be3 referenced 2 times by $8bd2, $8bd6
c8be3
    ldy l00c4                                                         ; 8be3: a4 c4       ..
    jsr sub_c87da                                                     ; 8be5: 20 da 87     ..
    ldx #7                                                            ; 8be8: a2 07       ..
; $8bea referenced 1 time by $8bf1
loop_c8bea
    lda l00c5,x                                                       ; 8bea: b5 c5       ..
    sta l0e07,y                                                       ; 8bec: 99 07 0e    ...
    dey                                                               ; 8bef: 88          .
    dex                                                               ; 8bf0: ca          .
    bpl loop_c8bea                                                    ; 8bf1: 10 f7       ..
    jmp c93e6                                                         ; 8bf3: 4c e6 93    L..

; $8bf6 referenced 1 time by $9466
sub_c8bf6
    clc                                                               ; 8bf6: 18          .
    bcc c8bfb                                                         ; 8bf7: 90 02       ..
; $8bf9 referenced 1 time by $9211
sub_c8bf9
    cli                                                               ; 8bf9: 58          X
    sec                                                               ; 8bfa: 38          8
; $8bfb referenced 1 time by $8bf7
c8bfb
    ror l00b2                                                         ; 8bfb: 66 b2       f.
    stx l00b0                                                         ; 8bfd: 86 b0       ..
    sty l00b1                                                         ; 8bff: 84 b1       ..
    cld                                                               ; 8c01: d8          .
    jsr sub_c8c65                                                     ; 8c02: 20 65 8c     e.
    lda l00a2                                                         ; 8c05: a5 a2       ..
    bne c8c12                                                         ; 8c07: d0 09       ..
    ldy #5                                                            ; 8c09: a0 05       ..
    lda (l00b0),y                                                     ; 8c0b: b1 b0       ..
    beq c8c12                                                         ; 8c0d: f0 03       ..
    jsr sub_c8d1a                                                     ; 8c0f: 20 1a 8d     ..
; $8c12 referenced 2 times by $8c07, $8c0d
c8c12
    ldy #5                                                            ; 8c12: a0 05       ..
    lda (l00b0),y                                                     ; 8c14: b1 b0       ..
    clc                                                               ; 8c16: 18          .
    adc #7                                                            ; 8c17: 69 07       i.
    tay                                                               ; 8c19: a8          .
    lda l00a2                                                         ; 8c1a: a5 a2       ..
    jsr sub_c8c56                                                     ; 8c1c: 20 56 8c     V.
    sta (l00b0),y                                                     ; 8c1f: 91 b0       ..
    ldx l00a7                                                         ; 8c21: a6 a7       ..
    cpx #$80                                                          ; 8c23: e0 80       ..
    bne c8c2e                                                         ; 8c25: d0 07       ..
    lda lfe84                                                         ; 8c27: ad 84 fe    ...
    and #$20 ; ' '                                                    ; 8c2a: 29 20       )
    ora (l00b0),y                                                     ; 8c2c: 11 b0       ..
; $8c2e referenced 1 time by $8c25
c8c2e
    pha                                                               ; 8c2e: 48          H
    and #$df                                                          ; 8c2f: 29 df       ).
    cmp #$18                                                          ; 8c31: c9 18       ..
    bne c8c3a                                                         ; 8c33: d0 05       ..
    lda #$ff                                                          ; 8c35: a9 ff       ..
    sta l1087                                                         ; 8c37: 8d 87 10    ...
; $8c3a referenced 1 time by $8c33
c8c3a
    lda l00cd                                                         ; 8c3a: a5 cd       ..
    and #1                                                            ; 8c3c: 29 01       ).
    tay                                                               ; 8c3e: a8          .
    lda l00ce                                                         ; 8c3f: a5 ce       ..
    sta l1088,y                                                       ; 8c41: 99 88 10    ...
    jsr c8f2a                                                         ; 8c44: 20 2a 8f     *.
    bit l00a1                                                         ; 8c47: 24 a1       $.
    bpl c8c4e                                                         ; 8c49: 10 03       ..
    jsr sub_c8f7a                                                     ; 8c4b: 20 7a 8f     z.
; $8c4e referenced 1 time by $8c49
c8c4e
    jsr sub_c8f5e                                                     ; 8c4e: 20 5e 8f     ^.
    lda lfe87                                                         ; 8c51: ad 87 fe    ...
    pla                                                               ; 8c54: 68          h
    rts                                                               ; 8c55: 60          `

; $8c56 referenced 1 time by $8c1c
sub_c8c56
    ldx #5                                                            ; 8c56: a2 05       ..
; $8c58 referenced 1 time by $8c5e
loop_c8c58
    cmp l9139,x                                                       ; 8c58: dd 39 91    .9.
    beq c8c61                                                         ; 8c5b: f0 04       ..
    dex                                                               ; 8c5d: ca          .
    bpl loop_c8c58                                                    ; 8c5e: 10 f8       ..
    rts                                                               ; 8c60: 60          `

; $8c61 referenced 1 time by $8c5b
c8c61
    lda l913f,x                                                       ; 8c61: bd 3f 91    .?.
    rts                                                               ; 8c64: 60          `

; $8c65 referenced 1 time by $8c02
sub_c8c65
    jsr sub_c8f4f                                                     ; 8c65: 20 4f 8f     O.
    jsr sub_c8f82                                                     ; 8c68: 20 82 8f     ..
    lda #0                                                            ; 8c6b: a9 00       ..
    sta l00a1                                                         ; 8c6d: 85 a1       ..
    ldy #9                                                            ; 8c6f: a0 09       ..
; $8c71 referenced 1 time by $8c79
loop_c8c71
    lda (l00b0),y                                                     ; 8c71: b1 b0       ..
    sta l00aa,y                                                       ; 8c73: 99 aa 00    ...
    iny                                                               ; 8c76: c8          .
    cpy #$0c                                                          ; 8c77: c0 0c       ..
    bne loop_c8c71                                                    ; 8c79: d0 f6       ..
    ldy #6                                                            ; 8c7b: a0 06       ..
    lda (l00b0),y                                                     ; 8c7d: b1 b0       ..
    and #$f0                                                          ; 8c7f: 29 f0       ).
    cmp #$a0                                                          ; 8c81: c9 a0       ..
    beq c8c87                                                         ; 8c83: f0 02       ..
    cmp #$f0                                                          ; 8c85: c9 f0       ..
; $8c87 referenced 1 time by $8c83
c8c87
    ror l00a1                                                         ; 8c87: 66 a1       f.
    ldy #3                                                            ; 8c89: a0 03       ..
    lda (l00b0),y                                                     ; 8c8b: b1 b0       ..
    iny                                                               ; 8c8d: c8          .
    and (l00b0),y                                                     ; 8c8e: 31 b0       1.
    cmp #$ff                                                          ; 8c90: c9 ff       ..
    clc                                                               ; 8c92: 18          .
    beq c8cb2                                                         ; 8c93: f0 1d       ..
    jsr sub_c8f3f                                                     ; 8c95: 20 3f 8f     ?.
    clc                                                               ; 8c98: 18          .
    bmi c8cb2                                                         ; 8c99: 30 17       0.
    jsr sub_c8f6b                                                     ; 8c9b: 20 6b 8f     k.
    lda l00a1                                                         ; 8c9e: a5 a1       ..
    rol                                                               ; 8ca0: 2a          *
    rol                                                               ; 8ca1: 2a          *
    and #1                                                            ; 8ca2: 29 01       ).
    eor #1                                                            ; 8ca4: 49 01       I.
    ldx l00b0                                                         ; 8ca6: a6 b0       ..
    ldy l00b1                                                         ; 8ca8: a4 b1       ..
    inx                                                               ; 8caa: e8          .
    bne c8cae                                                         ; 8cab: d0 01       ..
    iny                                                               ; 8cad: c8          .
; $8cae referenced 1 time by $8cab
c8cae
    jsr tube_entry                                                    ; 8cae: 20 06 04     ..
    sec                                                               ; 8cb1: 38          8
; $8cb2 referenced 2 times by $8c93, $8c99
c8cb2
    ror l00a1                                                         ; 8cb2: 66 a1       f.
    jsr sub_c8f94                                                     ; 8cb4: 20 94 8f     ..
    ldy #0                                                            ; 8cb7: a0 00       ..
    lda (l00b0),y                                                     ; 8cb9: b1 b0       ..
    bmi c8cc1                                                         ; 8cbb: 30 04       0.
    and #$0f                                                          ; 8cbd: 29 0f       ).
    sta l00cd                                                         ; 8cbf: 85 cd       ..
; $8cc1 referenced 1 time by $8cbb
c8cc1
    lda l00cd                                                         ; 8cc1: a5 cd       ..
    and #3                                                            ; 8cc3: 29 03       ).
    tax                                                               ; 8cc5: aa          .
    lda l10de,x                                                       ; 8cc6: bd de 10    ...
    sta l108a                                                         ; 8cc9: 8d 8a 10    ...
    lda l00cd                                                         ; 8ccc: a5 cd       ..
    ldy #$0a                                                          ; 8cce: a0 0a       ..
    and #8                                                            ; 8cd0: 29 08       ).
    beq c8cd6                                                         ; 8cd2: f0 02       ..
    ldy #$10                                                          ; 8cd4: a0 10       ..
; $8cd6 referenced 1 time by $8cd2
c8cd6
    sty l00a3                                                         ; 8cd6: 84 a3       ..
    eor l911d,x                                                       ; 8cd8: 5d 1d 91    ]..
    sta lfe80                                                         ; 8cdb: 8d 80 fe    ...
    lsr                                                               ; 8cde: 4a          J
    ldx l1088                                                         ; 8cdf: ae 88 10    ...
    bcs c8ce7                                                         ; 8ce2: b0 03       ..
    ldx l1089                                                         ; 8ce4: ae 89 10    ...
; $8ce7 referenced 1 time by $8ce2
c8ce7
    ldy #0                                                            ; 8ce7: a0 00       ..
    sty l00a2                                                         ; 8ce9: 84 a2       ..
    lda l1087                                                         ; 8ceb: ad 87 10    ...
    bit l1087                                                         ; 8cee: 2c 87 10    ,..
    bcc c8cfc                                                         ; 8cf1: 90 09       ..
    bpl c8d0d                                                         ; 8cf3: 10 18       ..
    sty l1088                                                         ; 8cf5: 8c 88 10    ...
    and #$7f                                                          ; 8cf8: 29 7f       ).
    bpl c8d03                                                         ; 8cfa: 10 07       ..
; $8cfc referenced 1 time by $8cf1
c8cfc
    bvc c8d0d                                                         ; 8cfc: 50 0f       P.
    sty l1089                                                         ; 8cfe: 8c 89 10    ...
    and #$bf                                                          ; 8d01: 29 bf       ).
; $8d03 referenced 1 time by $8cfa
c8d03
    sta l1087                                                         ; 8d03: 8d 87 10    ...
    lda #0                                                            ; 8d06: a9 00       ..
    jsr c8e12                                                         ; 8d08: 20 12 8e     ..
    ldx #0                                                            ; 8d0b: a2 00       ..
; $8d0d referenced 2 times by $8cf3, $8cfc
c8d0d
    txa                                                               ; 8d0d: 8a          .
    sta l00ce                                                         ; 8d0e: 85 ce       ..
    jsr c8f2a                                                         ; 8d10: 20 2a 8f     *.
; $8d13 referenced 2 times by $8d1d, $8d25
c8d13
    rts                                                               ; 8d13: 60          `

; $8d14 referenced 1 time by $8d29
loop_c8d14
    jmp c8eaf                                                         ; 8d14: 4c af 8e    L..

; $8d17 referenced 1 time by $8d2d
loop_c8d17
    jmp c8e12                                                         ; 8d17: 4c 12 8e    L..

; $8d1a referenced 1 time by $8c0f
sub_c8d1a
    jsr sub_c8eff                                                     ; 8d1a: 20 ff 8e     ..
    bne c8d13                                                         ; 8d1d: d0 f4       ..
    ldy #6                                                            ; 8d1f: a0 06       ..
    lda (l00b0),y                                                     ; 8d21: b1 b0       ..
    cmp #$10                                                          ; 8d23: c9 10       ..
    beq c8d13                                                         ; 8d25: f0 ec       ..
    cmp #$c0                                                          ; 8d27: c9 c0       ..
    beq loop_c8d14                                                    ; 8d29: f0 e9       ..
    cmp #$e0                                                          ; 8d2b: c9 e0       ..
    bcs loop_c8d17                                                    ; 8d2d: b0 e8       ..
    ldy #8                                                            ; 8d2f: a0 08       ..
    lda (l00b0),y                                                     ; 8d31: b1 b0       ..
    bit l00b2                                                         ; 8d33: 24 b2       $.
    bmi c8d92                                                         ; 8d35: 30 5b       0[
    ldx l00b5                                                         ; 8d37: a6 b5       ..
    beq c8d41                                                         ; 8d39: f0 06       ..
    inc l00b3                                                         ; 8d3b: e6 b3       ..
    bne c8d41                                                         ; 8d3d: d0 02       ..
    inc l00b4                                                         ; 8d3f: e6 b4       ..
; $8d41 referenced 3 times by $8d39, $8d3d, $8d8f
c8d41
    jsr nmi_handler2_rom_end                                          ; 8d41: 20 fb 90     ..
    sta l00cf                                                         ; 8d44: 85 cf       ..
    sbc l00a3                                                         ; 8d46: e5 a3       ..
    eor #$ff                                                          ; 8d48: 49 ff       I.
    clc                                                               ; 8d4a: 18          .
    adc #1                                                            ; 8d4b: 69 01       i.
    sta l00a5                                                         ; 8d4d: 85 a5       ..
    lda l00b4                                                         ; 8d4f: a5 b4       ..
    bne c8d74                                                         ; 8d51: d0 21       .!
    lda l00b3                                                         ; 8d53: a5 b3       ..
    beq c8d91                                                         ; 8d55: f0 3a       .:
    cmp l00a5                                                         ; 8d57: c5 a5       ..
    beq c8d5d                                                         ; 8d59: f0 02       ..
    bcs c8d74                                                         ; 8d5b: b0 17       ..
; $8d5d referenced 1 time by $8d59
c8d5d
    sta l00a5                                                         ; 8d5d: 85 a5       ..
    ldx l00b5                                                         ; 8d5f: a6 b5       ..
    beq c8d74                                                         ; 8d61: f0 11       ..
    stx l00a6                                                         ; 8d63: 86 a6       ..
    ror l00a1                                                         ; 8d65: 66 a1       f.
    sec                                                               ; 8d67: 38          8
    rol l00a1                                                         ; 8d68: 26 a1       &.
    cmp #1                                                            ; 8d6a: c9 01       ..
    bne c8d74                                                         ; 8d6c: d0 06       ..
    lda nmi_lda_immXXX4+1                                             ; 8d6e: ad 22 0d    .".
    sta nmi_lda_immXXX3+1                                             ; 8d71: 8d 4c 0d    .L.
; $8d74 referenced 4 times by $8d51, $8d5b, $8d61, $8d6c
c8d74
    lda l00b3                                                         ; 8d74: a5 b3       ..
    sec                                                               ; 8d76: 38          8
    sbc l00a5                                                         ; 8d77: e5 a5       ..
    sta l00b3                                                         ; 8d79: 85 b3       ..
    lda l00b4                                                         ; 8d7b: a5 b4       ..
    sbc #0                                                            ; 8d7d: e9 00       ..
    sta l00b4                                                         ; 8d7f: 85 b4       ..
    jsr c8e0e                                                         ; 8d81: 20 0e 8e     ..
    bne c8d91                                                         ; 8d84: d0 0b       ..
    lda l00b3                                                         ; 8d86: a5 b3       ..
    ora l00b4                                                         ; 8d88: 05 b4       ..
    beq c8d91                                                         ; 8d8a: f0 05       ..
    jsr c8ecc                                                         ; 8d8c: 20 cc 8e     ..
    beq c8d41                                                         ; 8d8f: f0 b0       ..
; $8d91 referenced 4 times by $8d55, $8d84, $8d8a, $8d9d
c8d91
    rts                                                               ; 8d91: 60          `

; $8d92 referenced 1 time by $8d35
c8d92
    jsr nmi_handler2_rom_end                                          ; 8d92: 20 fb 90     ..
    sta l00cf                                                         ; 8d95: 85 cf       ..
    ldy #9                                                            ; 8d97: a0 09       ..
    lda (l00b0),y                                                     ; 8d99: b1 b0       ..
    and #$1f                                                          ; 8d9b: 29 1f       ).
    beq c8d91                                                         ; 8d9d: f0 f2       ..
    sta l00a5                                                         ; 8d9f: 85 a5       ..
    bit l00a1                                                         ; 8da1: 24 a1       $.
    bvs c8e0e                                                         ; 8da3: 70 69       pi
    bit l108a                                                         ; 8da5: 2c 8a 10    ,..
    bvc c8e0e                                                         ; 8da8: 50 64       Pd
    ldx #$33 ; '3'                                                    ; 8daa: a2 33       .3
; $8dac referenced 1 time by $8db3
loop_c8dac
    lda c0d60,x                                                       ; 8dac: bd 60 0d    .`.
    sta l1000,x                                                       ; 8daf: 9d 00 10    ...
    dex                                                               ; 8db2: ca          .
    bpl loop_c8dac                                                    ; 8db3: 10 f7       ..
    jsr sub_c8dc6                                                     ; 8db5: 20 c6 8d     ..
    ldx #$33 ; '3'                                                    ; 8db8: a2 33       .3
; $8dba referenced 1 time by $8dc1
loop_c8dba
    lda l1000,x                                                       ; 8dba: bd 00 10    ...
    sta c0d60,x                                                       ; 8dbd: 9d 60 0d    .`.
    dex                                                               ; 8dc0: ca          .
    bpl loop_c8dba                                                    ; 8dc1: 10 f7       ..
    lda l00a2                                                         ; 8dc3: a5 a2       ..
    rts                                                               ; 8dc5: 60          `

; $8dc6 referenced 1 time by $8db5
sub_c8dc6
    lda #0                                                            ; 8dc6: a9 00       ..
    sta l00b4                                                         ; 8dc8: 85 b4       ..
    lda (l00b0),y                                                     ; 8dca: b1 b0       ..
    and #$e0                                                          ; 8dcc: 29 e0       ).
    bne c8dd2                                                         ; 8dce: d0 02       ..
    lda #$10                                                          ; 8dd0: a9 10       ..
; $8dd2 referenced 1 time by $8dce
c8dd2
    asl                                                               ; 8dd2: 0a          .
    rol l00b4                                                         ; 8dd3: 26 b4       &.
    asl                                                               ; 8dd5: 0a          .
    rol l00b4                                                         ; 8dd6: 26 b4       &.
    asl                                                               ; 8dd8: 0a          .
    rol l00b4                                                         ; 8dd9: 26 b4       &.
    sta l00b3                                                         ; 8ddb: 85 b3       ..
    tax                                                               ; 8ddd: aa          .
    beq c8de2                                                         ; 8dde: f0 02       ..
    inc l00b4                                                         ; 8de0: e6 b4       ..
; $8de2 referenced 1 time by $8dde
c8de2
    jsr nmi3_handler_rom_end                                          ; 8de2: 20 3e 90     >.
    lda #$14                                                          ; 8de5: a9 14       ..
    sta l00b7                                                         ; 8de7: 85 b7       ..
; $8de9 referenced 1 time by $8dfc
loop_c8de9
    lda #$e0                                                          ; 8de9: a9 e0       ..
    sta l00a2                                                         ; 8deb: 85 a2       ..
    sta lfe84                                                         ; 8ded: 8d 84 fe    ...
; $8df0 referenced 1 time by $8df2
loop_c8df0
    lda l00a2                                                         ; 8df0: a5 a2       ..
    bmi loop_c8df0                                                    ; 8df2: 30 fc       0.
    bne c8e0d                                                         ; 8df4: d0 17       ..
    lda l00a5                                                         ; 8df6: a5 a5       ..
    beq c8e03                                                         ; 8df8: f0 09       ..
    dec l00b7                                                         ; 8dfa: c6 b7       ..
    bne loop_c8de9                                                    ; 8dfc: d0 eb       ..
    lda #$10                                                          ; 8dfe: a9 10       ..
    sta l00a2                                                         ; 8e00: 85 a2       ..
    rts                                                               ; 8e02: 60          `

; $8e03 referenced 1 time by $8df8
c8e03
    lda l00b6                                                         ; 8e03: a5 b6       ..
    eor #$fb                                                          ; 8e05: 49 fb       I.
    beq c8e0d                                                         ; 8e07: f0 04       ..
    lda #$20 ; ' '                                                    ; 8e09: a9 20       .
    sta l00a2                                                         ; 8e0b: 85 a2       ..
; $8e0d referenced 2 times by $8df4, $8e07
c8e0d
    rts                                                               ; 8e0d: 60          `

; $8e0e referenced 4 times by $8d81, $8da3, $8da8, $8ec2
c8e0e
    ldy #6                                                            ; 8e0e: a0 06       ..
    lda (l00b0),y                                                     ; 8e10: b1 b0       ..
; $8e12 referenced 4 times by $8d08, $8d17, $8efc, $8f21
c8e12
    ldy #$ff                                                          ; 8e12: a0 ff       ..
; $8e14 referenced 1 time by $8e18
loop_c8e14
    iny                                                               ; 8e14: c8          .
    cmp l9121,y                                                       ; 8e15: d9 21 91    .!.
    bne loop_c8e14                                                    ; 8e18: d0 fa       ..
    pha                                                               ; 8e1a: 48          H
    lda nmi_and_table,y                                               ; 8e1b: b9 2d 91    .-.
    sta nmi_and_imm+1                                                 ; 8e1e: 8d 05 0d    ...
    ror l00a2                                                         ; 8e21: 66 a2       f.
    pla                                                               ; 8e23: 68          h
    bpl c8e72                                                         ; 8e24: 10 4c       .L
    bit l00a1                                                         ; 8e26: 24 a1       $.
    bvc c8e32                                                         ; 8e28: 50 08       P.
    ldy l00ce                                                         ; 8e2a: a4 ce       ..
    cpy #$14                                                          ; 8e2c: c0 14       ..
    bcc c8e32                                                         ; 8e2e: 90 02       ..
    ora #2                                                            ; 8e30: 09 02       ..
; $8e32 referenced 2 times by $8e28, $8e2e
c8e32
    sta l00a7                                                         ; 8e32: 85 a7       ..
    ldy #1                                                            ; 8e34: a0 01       ..
    cmp #$c0                                                          ; 8e36: c9 c0       ..
    beq c8e53                                                         ; 8e38: f0 19       ..
    ora #4                                                            ; 8e3a: 09 04       ..
    bcs c8e53                                                         ; 8e3c: b0 15       ..
    ldy l00a5                                                         ; 8e3e: a4 a5       ..
    cmp #$85                                                          ; 8e40: c9 85       ..
    beq c8e4d                                                         ; 8e42: f0 09       ..
    cmp #$87                                                          ; 8e44: c9 87       ..
    bne c8e53                                                         ; 8e46: d0 0b       ..
    lda #nmi_XXX1-(nmi_beq+2)                                         ; 8e48: a9 48       .H
    sta nmi_beq+1                                                     ; 8e4a: 8d 09 0d    ...
; $8e4d referenced 1 time by $8e42
c8e4d
    lda #$80                                                          ; 8e4d: a9 80       ..
    sta l00a7                                                         ; 8e4f: 85 a7       ..
    lda #$84                                                          ; 8e51: a9 84       ..
; $8e53 referenced 3 times by $8e38, $8e3c, $8e46
c8e53
    sty l00a5                                                         ; 8e53: 84 a5       ..
    sta lfe84                                                         ; 8e55: 8d 84 fe    ...
    cmp #$f0                                                          ; 8e58: c9 f0       ..
    bcc c8e64                                                         ; 8e5a: 90 08       ..
    jsr c8e9f                                                         ; 8e5c: 20 9f 8e     ..
    and #$5c ; '\'                                                    ; 8e5f: 29 5c       )\
    sta l00a2                                                         ; 8e61: 85 a2       ..
    rts                                                               ; 8e63: 60          `

; $8e64 referenced 4 times by $8e5a, $8e66, $8e7f, $8e83
c8e64
    lda l00a2                                                         ; 8e64: a5 a2       ..
    bmi c8e64                                                         ; 8e66: 30 fc       0.
    cmp #$20 ; ' '                                                    ; 8e68: c9 20       .
    bne c8e6f                                                         ; 8e6a: d0 03       ..
    jsr c8ea5                                                         ; 8e6c: 20 a5 8e     ..
; $8e6f referenced 1 time by $8e6a
c8e6f
    lda l00a2                                                         ; 8e6f: a5 a2       ..
    rts                                                               ; 8e71: 60          `

; $8e72 referenced 1 time by $8e24
c8e72
    ldy #1                                                            ; 8e72: a0 01       ..
    sty l00a5                                                         ; 8e74: 84 a5       ..
    ora l00a4                                                         ; 8e76: 05 a4       ..
    sta l00a7                                                         ; 8e78: 85 a7       ..
    sta lfe84                                                         ; 8e7a: 8d 84 fe    ...
    bit l00b2                                                         ; 8e7d: 24 b2       $.
    bmi c8e64                                                         ; 8e7f: 30 e3       0.
    cmp #$20 ; ' '                                                    ; 8e81: c9 20       .
    bcs c8e64                                                         ; 8e83: b0 df       ..
; $8e85 referenced 1 time by $8e8b
loop_c8e85
    lda l00a2                                                         ; 8e85: a5 a2       ..
    bpl c8e9e                                                         ; 8e87: 10 15       ..
    lda l00ff                                                         ; 8e89: a5 ff       ..
    bpl loop_c8e85                                                    ; 8e8b: 10 f8       ..
    lda #opcode_rti                                                   ; 8e8d: a9 40       .@
    sta nmi_handler_ram                                               ; 8e8f: 8d 00 0d    ...
    lda #0                                                            ; 8e92: a9 00       ..
    sta lfe80                                                         ; 8e94: 8d 80 fe    ...
    lda l00ff                                                         ; 8e97: a5 ff       ..
    sta l1082                                                         ; 8e99: 8d 82 10    ...
    sta l00a2                                                         ; 8e9c: 85 a2       ..
; $8e9e referenced 1 time by $8e87
c8e9e
    rts                                                               ; 8e9e: 60          `

; $8e9f referenced 2 times by $8e5c, $8ea3
c8e9f
    lda lfe84                                                         ; 8e9f: ad 84 fe    ...
    ror                                                               ; 8ea2: 6a          j
    bcc c8e9f                                                         ; 8ea3: 90 fa       ..
; $8ea5 referenced 2 times by $8e6c, $8ea9
c8ea5
    lda lfe84                                                         ; 8ea5: ad 84 fe    ...
    ror                                                               ; 8ea8: 6a          j
    bcs c8ea5                                                         ; 8ea9: b0 fa       ..
    lda lfe84                                                         ; 8eab: ad 84 fe    ...
    rts                                                               ; 8eae: 60          `

; $8eaf referenced 1 time by $8d14
c8eaf
    lda #nmi_XXX1-(nmi_beq+2)                                         ; 8eaf: a9 48       .H
    sta nmi_lda_immXXX3+1                                             ; 8eb1: 8d 4c 0d    .L.
    ldx nmi_beq+1                                                     ; 8eb4: ae 09 0d    ...
; $8eb7 referenced 2 times by $8eb9, $8ec9
c8eb7
    sbc #1                                                            ; 8eb7: e9 01       ..
    bne c8eb7                                                         ; 8eb9: d0 fc       ..
    stx nmi_beq+1                                                     ; 8ebb: 8e 09 0d    ...
    lda #4                                                            ; 8ebe: a9 04       ..
    sta l00a6                                                         ; 8ec0: 85 a6       ..
    jsr c8e0e                                                         ; 8ec2: 20 0e 8e     ..
    bne c8ecb                                                         ; 8ec5: d0 04       ..
    dec l00b3                                                         ; 8ec7: c6 b3       ..
    bne c8eb7                                                         ; 8ec9: d0 ec       ..
; $8ecb referenced 1 time by $8ec5
c8ecb
    rts                                                               ; 8ecb: 60          `

; $8ecc referenced 3 times by $8d8c, $8ee2, $8ee7
c8ecc
    jsr sub_c8eec                                                     ; 8ecc: 20 ec 8e     ..
    bne c8eeb                                                         ; 8ecf: d0 1a       ..
    lda l00cd                                                         ; 8ed1: a5 cd       ..
    and #1                                                            ; 8ed3: 29 01       ).
    asl                                                               ; 8ed5: 0a          .
    tay                                                               ; 8ed6: a8          .
    lda l00ce                                                         ; 8ed7: a5 ce       ..
    bit l108a                                                         ; 8ed9: 2c 8a 10    ,..
    bpl c8edf                                                         ; 8edc: 10 01       ..
    lsr                                                               ; 8ede: 4a          J
; $8edf referenced 1 time by $8edc
c8edf
    cmp l108b,y                                                       ; 8edf: d9 8b 10    ...
    beq c8ecc                                                         ; 8ee2: f0 e8       ..
    cmp l108c,y                                                       ; 8ee4: d9 8c 10    ...
    beq c8ecc                                                         ; 8ee7: f0 e3       ..
    lda #0                                                            ; 8ee9: a9 00       ..
; $8eeb referenced 2 times by $8ecf, $8ef6
c8eeb
    rts                                                               ; 8eeb: 60          `

; $8eec referenced 1 time by $8ecc
sub_c8eec
    bit l108a                                                         ; 8eec: 2c 8a 10    ,..
    bpl c8ef8                                                         ; 8eef: 10 07       ..
    lda #$40 ; '@'                                                    ; 8ef1: a9 40       .@
    jsr sub_c8efa                                                     ; 8ef3: 20 fa 8e     ..
    bne c8eeb                                                         ; 8ef6: d0 f3       ..
; $8ef8 referenced 1 time by $8eef
c8ef8
    lda #$50 ; 'P'                                                    ; 8ef8: a9 50       .P
; $8efa referenced 1 time by $8ef3
sub_c8efa
    inc l00ce                                                         ; 8efa: e6 ce       ..
    jmp c8e12                                                         ; 8efc: 4c 12 8e    L..

; $8eff referenced 1 time by $8d1a
sub_c8eff
    lda l00cd                                                         ; 8eff: a5 cd       ..
    and #1                                                            ; 8f01: 29 01       ).
    asl                                                               ; 8f03: 0a          .
    tax                                                               ; 8f04: aa          .
    ldy #7                                                            ; 8f05: a0 07       ..
    lda (l00b0),y                                                     ; 8f07: b1 b0       ..
    jsr sub_c8f33                                                     ; 8f09: 20 33 8f     3.
    bit l108a                                                         ; 8f0c: 2c 8a 10    ,..
    bpl c8f12                                                         ; 8f0f: 10 01       ..
    asl                                                               ; 8f11: 0a          .
; $8f12 referenced 1 time by $8f0f
c8f12
    sta l00ce                                                         ; 8f12: 85 ce       ..
    tay                                                               ; 8f14: a8          .
    beq c8f21                                                         ; 8f15: f0 0a       ..
; $8f17 referenced 1 time by $8f1d
loop_c8f17
    sta lfe87                                                         ; 8f17: 8d 87 fe    ...
    cmp lfe87                                                         ; 8f1a: cd 87 fe    ...
    bne loop_c8f17                                                    ; 8f1d: d0 f8       ..
    lda #$10                                                          ; 8f1f: a9 10       ..
; $8f21 referenced 1 time by $8f15
c8f21
    jsr c8e12                                                         ; 8f21: 20 12 8e     ..
    bne c8f3e                                                         ; 8f24: d0 18       ..
    ldy #7                                                            ; 8f26: a0 07       ..
    lda (l00b0),y                                                     ; 8f28: b1 b0       ..
; $8f2a referenced 3 times by $8c44, $8d10, $8f30
c8f2a
    sta lfe85                                                         ; 8f2a: 8d 85 fe    ...
    cmp lfe85                                                         ; 8f2d: cd 85 fe    ...
    bne c8f2a                                                         ; 8f30: d0 f8       ..
    rts                                                               ; 8f32: 60          `

; $8f33 referenced 1 time by $8f09
sub_c8f33
    jsr sub_c8f37                                                     ; 8f33: 20 37 8f     7.
    inx                                                               ; 8f36: e8          .
; $8f37 referenced 1 time by $8f33
sub_c8f37
    cmp l108b,x                                                       ; 8f37: dd 8b 10    ...
    bcc c8f3e                                                         ; 8f3a: 90 02       ..
    adc #0                                                            ; 8f3c: 69 00       i.
; $8f3e referenced 2 times by $8f24, $8f3a
c8f3e
    rts                                                               ; 8f3e: 60          `

; $8f3f referenced 5 times by $8c95, $8f75, $92b0, $932b, $9628
sub_c8f3f
    lda #osbyte_read_tube_presence                                    ; 8f3f: a9 ea       ..
    ldx #0                                                            ; 8f41: a2 00       ..
    ldy #$ff                                                          ; 8f43: a0 ff       ..
    jsr osbyte                                                        ; 8f45: 20 f4 ff     ..            ; Read Tube present flag
    txa                                                               ; 8f48: 8a          .              ; X=value of Tube present flag
    eor #$ff                                                          ; 8f49: 49 ff       I.
    sta l10d6                                                         ; 8f4b: 8d d6 10    ...
    rts                                                               ; 8f4e: 60          `

; $8f4f referenced 1 time by $8c65
sub_c8f4f
    lda #osbyte_issue_service_request                                 ; 8f4f: a9 8f       ..
    ldx #$0c                                                          ; 8f51: a2 0c       ..
    ldy #$ff                                                          ; 8f53: a0 ff       ..
    jsr osbyte                                                        ; 8f55: 20 f4 ff     ..            ; Issue paged ROM service call, Reason X=12 - NMI claim
    sty l00a0                                                         ; 8f58: 84 a0       ..             ; Y contains a return argument from the ROM service call
    inc l10d3                                                         ; 8f5a: ee d3 10    ...
    rts                                                               ; 8f5d: 60          `

; $8f5e referenced 1 time by $8c4e
sub_c8f5e
    ldy l00a0                                                         ; 8f5e: a4 a0       ..
    lda #osbyte_issue_service_request                                 ; 8f60: a9 8f       ..
    ldx #$0b                                                          ; 8f62: a2 0b       ..
    jsr osbyte                                                        ; 8f64: 20 f4 ff     ..            ; Issue paged ROM service call, Reason X=11 - NMI released
    dec l10d3                                                         ; 8f67: ce d3 10    ...
    rts                                                               ; 8f6a: 60          `

; $8f6b referenced 4 times by $8921, $8c9b, $933e, $9819
sub_c8f6b
    pha                                                               ; 8f6b: 48          H
; $8f6c referenced 1 time by $8f71
loop_c8f6c
    lda #$c1                                                          ; 8f6c: a9 c1       ..
    jsr tube_entry                                                    ; 8f6e: 20 06 04     ..
    bcc loop_c8f6c                                                    ; 8f71: 90 f9       ..
    pla                                                               ; 8f73: 68          h
    rts                                                               ; 8f74: 60          `

; $8f75 referenced 1 time by $8071
sub_c8f75
    jsr sub_c8f3f                                                     ; 8f75: 20 3f 8f     ?.
    bmi c8f81                                                         ; 8f78: 30 07       0.
; $8f7a referenced 3 times by $8c4b, $9364, $97e3
sub_c8f7a
    pha                                                               ; 8f7a: 48          H
    lda #$81                                                          ; 8f7b: a9 81       ..
    jsr tube_entry                                                    ; 8f7d: 20 06 04     ..
    pla                                                               ; 8f80: 68          h
; $8f81 referenced 1 time by $8f78
c8f81
    rts                                                               ; 8f81: 60          `

; $8f82 referenced 1 time by $8c68
sub_c8f82
    lda #osbyte_read_write_startup_options                            ; 8f82: a9 ff       ..
    ldx #0                                                            ; 8f84: a2 00       ..
    tay                                                               ; 8f86: a8          .
    jsr osbyte                                                        ; 8f87: 20 f4 ff     ..            ; Read start-up option byte

    ; X is the startup option byte:
    ;     bits 0 to 2     screen MODE selected following reset
    ;     bit 3           if clear reverse action of SHIFT+BREAK
    ;     bits 4 and 5    used to set disc drive timings (see below)
    ;     bit 6           not used by OS (reserved for future applications)
    ;     bit 7           if clear select NFS, if set select DFS
    ; 
    ; Disc drive timing links:
    ; |                           |                8271                 |          1770           |          1772           |
    ; |---------------------------|-------------------------------------|-------------------------|-------------------------|
    ; | b5 | b4 | link 3 | link 4 | step time | settle time | head load | step time | settle time | step time | settle time |
    ; |----|----|--------|--------|-----------|-------------|-----------|-----------|-------------|-----------|-------------|
    ; |  0 | 0  | 1      | 1      | 4         | 16          | 0         | 6         | 30          | 6         | 15          |
    ; |  0 | 1  | 1      | 0      | 6         | 16          | 0         | 12        | 30          | 12        | 15          |
    ; |  1 | 0  | 0      | 1      | 6         | 50          | 32        | 20        | 30          | 2         | 15          |
    ; |  1 | 1  | 0      | 0      | 24        | 20          | 64        | 30        | 30          | 3         | 15          |
    ; |---------------------------------------------------------------------------------------------------------------------|
    txa                                                               ; 8f8a: 8a          .              ; X=value of start-up option byte
    lsr                                                               ; 8f8b: 4a          J
    lsr                                                               ; 8f8c: 4a          J
    lsr                                                               ; 8f8d: 4a          J
    lsr                                                               ; 8f8e: 4a          J
    and #3                                                            ; 8f8f: 29 03       ).
    sta l00a4                                                         ; 8f91: 85 a4       ..
    rts                                                               ; 8f93: 60          `

; $8f94 referenced 1 time by $8cb4
sub_c8f94
    ldx #nmi_handler_rom_end-nmi_handler_rom_start-1                  ; 8f94: a2 5d       .]
; $8f96 referenced 1 time by $8f9d
loop_c8f96
    lda nmi_handler_rom_start,x                                       ; 8f96: bd d2 8f    ...
    sta nmi_handler_ram,x                                             ; 8f99: 9d 00 0d    ...
    dex                                                               ; 8f9c: ca          .
    bpl loop_c8f96                                                    ; 8f9d: 10 f7       ..
    ldx #3                                                            ; 8f9f: a2 03       ..
    bit l00a1                                                         ; 8fa1: 24 a1       $.
    bvc c8fb5                                                         ; 8fa3: 50 10       P.
    lda #nmi_XXX8-(nmi_beq+2)                                         ; 8fa5: a9 4d       .M
    sta nmi_lda_immXXX4+1                                             ; 8fa7: 8d 22 0d    .".
    ldx #nmi3_handler_rom_end-nmi3_handler_rom_start                  ; 8faa: a2 0e       ..
; $8fac referenced 1 time by $8fb3
loop_c8fac
    lda nmi3_handler_rom_start-1,x                                    ; 8fac: bd 2f 90    ./.
    sta nmi_XXX2-1,x                                                  ; 8faf: 9d 38 0d    .8.
    dex                                                               ; 8fb2: ca          .
    bne loop_c8fac                                                    ; 8fb3: d0 f7       ..
; $8fb5 referenced 1 time by $8fa3
c8fb5
    bit l00a1                                                         ; 8fb5: 24 a1       $.
    bmi c8fc7                                                         ; 8fb7: 30 0e       0.
    ldy #1                                                            ; 8fb9: a0 01       ..
    lda (l00b0),y                                                     ; 8fbb: b1 b0       ..
    sta nmi_lda_abs+1,x                                               ; 8fbd: 9d 3a 0d    .:.
    iny                                                               ; 8fc0: c8          .
    lda (l00b0),y                                                     ; 8fc1: b1 b0       ..
    sta nmi_lda_abs+2,x                                               ; 8fc3: 9d 3b 0d    .;.
    rts                                                               ; 8fc6: 60          `

; $8fc7 referenced 1 time by $8fb7
c8fc7
    lda #opcode_bcs                                                   ; 8fc7: a9 b0       ..
    sta nmi_XXX6                                                      ; 8fc9: 8d 3f 0d    .?.
    lda #nmi_XXX7-(nmi_XXX6+2)                                        ; 8fcc: a9 06       ..
    sta nmi_XXX6+1                                                    ; 8fce: 8d 40 0d    .@.
    rts                                                               ; 8fd1: 60          `

; $8fd2 referenced 1 time by $8f96
nmi_handler_rom_start
; $8fd2 referenced 1 time by $8f96

!pseudopc $0d00 {
; $8fd2 referenced 1 time by $8f96
nmi_handler_ram
    pha                                                               ; 8fd2: 48          H   :0d00[4]
    lda lfe84                                                         ; 8fd3: ad 84 fe    ... :0d01[4]
; The operand of this and is modified at runtime.
nmi_and_imm
    and #$18                                                          ; 8fd6: 29 18       ).  :0d04[4]
    cmp #3                                                            ; 8fd8: c9 03       ..  :0d06[4]
; The operand of this "beq" is modified at runtime.
nmi_beq
    beq nmi_XXX2                                                      ; 8fda: f0 2f       ./  :0d08[4]
    and #$fc                                                          ; 8fdc: 29 fc       ).  :0d0a[4]
    bne l0d12                                                         ; 8fde: d0 04       ..  :0d0c[4]
    dec l00a5                                                         ; 8fe0: c6 a5       ..  :0d0e[4]
    bne nmi_lda_zp                                                    ; 8fe2: d0 04       ..  :0d10[4]
l0d12
    sta l00a2                                                         ; 8fe4: 85 a2       ..  :0d12[4]
    pla                                                               ; 8fe6: 68          h   :0d14[4]
    rti                                                               ; 8fe7: 40          @   :0d15[4]

; The operand of this lda is modified at runtime.
nmi_lda_zp
    lda l00a5                                                         ; 8fe8: a5 a5       ..  :0d16[4]
; This instruction is patched at runtime to toggle between cmp #/bcs.
nmi_cmp_imm_or_bcs
    cmp #1                                                            ; 8fea: c9 01       ..  :0d18[4]
    bne l0d26                                                         ; 8fec: d0 0a       ..  :0d1a[4]
    lda l00a1                                                         ; 8fee: a5 a1       ..  :0d1c[4]
    ror                                                               ; 8ff0: 6a          j   :0d1e[4]
l0d1f
nmi_XXX5 = l0d1f+1
    bcc l0d26                                                         ; 8ff1: 90 05       ..  :0d1f[4]
; One patched variant of the code transfers control to nmi_XXX5, which is the
; second byte of the following bcc instruction. That is always &05, which is
; ORA #. XXX: correct?
; The operand of this lda is modified at runtime.
nmi_lda_immXXX4
    lda #nmi_XXX1-(nmi_beq+2)                                         ; 8ff3: a9 48       .H  :0d21[4]
    sta nmi_lda_immXXX3+1                                             ; 8ff5: 8d 4c 0d    .L. :0d23[4]
l0d26
    inc l00cf                                                         ; 8ff8: e6 cf       ..  :0d26[4]
    lda l00cf                                                         ; 8ffa: a5 cf       ..  :0d28[4]
l0d2a
    sta lfe86                                                         ; 8ffc: 8d 86 fe    ... :0d2a[4]
    cmp lfe86                                                         ; 8fff: cd 86 fe    ... :0d2d[4]
    bne l0d2a                                                         ; 9002: d0 f8       ..  :0d30[4]
    lda l00a7                                                         ; 9004: a5 a7       ..  :0d32[4]
    sta lfe84                                                         ; 9006: 8d 84 fe    ... :0d34[4]
    pla                                                               ; 9009: 68          h   :0d37[4]
    rti                                                               ; 900a: 40          @   :0d38[4]

nmi_XXX2
    lda lfe87                                                         ; 900b: ad 87 fe    ... :0d39[4]
; The operand of this sta is modified at runtime.
nmi_sta_abs
    sta tube_host_r3_data                                             ; 900e: 8d e5 fe    ... :0d3c[4]
; The first two bytes of the following instruction may be patched at runtime.
nmi_XXX6
    inc nmi_sta_abs+1                                                 ; 9011: ee 3d 0d    .=. :0d3f[4]
    bne nmi_XXX7                                                      ; 9014: d0 03       ..  :0d42[4]
    inc nmi_sta_abs+2                                                 ; 9016: ee 3e 0d    .>. :0d44[4]
nmi_XXX7
    dec l00a6                                                         ; 9019: c6 a6       ..  :0d47[4]
    bne l0d50                                                         ; 901b: d0 05       ..  :0d49[4]
; The operand of this lda is modified at runtime.
nmi_lda_immXXX3
    lda #nmi_XXX2-(nmi_beq+2)                                         ; 901d: a9 2f       ./  :0d4b[4]
    sta nmi_beq+1                                                     ; 901f: 8d 09 0d    ... :0d4d[4]
l0d50
    pla                                                               ; 9022: 68          h   :0d50[4]
    rti                                                               ; 9023: 40          @   :0d51[4]

nmi_XXX1
    lda lfe87                                                         ; 9024: ad 87 fe    ... :0d52[4]
    pla                                                               ; 9027: 68          h   :0d55[4]
    rti                                                               ; 9028: 40          @   :0d56[4]

nmi_XXX8
    lda #0                                                            ; 9029: a9 00       ..  :0d57[4]
    sta lfe87                                                         ; 902b: 8d 87 fe    ... :0d59[4]
    pla                                                               ; 902e: 68          h   :0d5c[4]
; $902f referenced 1 time by $8fac
    rti                                                               ; 902f: 40          @   :0d5d[4]

; The operand of this lda is modified at runtime.
}

; The operand of this lda is modified at runtime.
nmi_handler_rom_end
nmi3_handler_rom_start
; The operand of this lda is modified at runtime.

!pseudopc $0d39 {
; The operand of this lda is modified at runtime.
nmi_lda_abs
    lda tube_host_r3_data                                             ; 9030: ad e5 fe    ... :0d39[5]
    sta lfe87                                                         ; 9033: 8d 87 fe    ... :0d3c[5]
    inc nmi_lda_abs+1                                                 ; 9036: ee 3a 0d    .:. :0d3f[5]
    bne nmi_XXX7                                                      ; 9039: d0 03       ..  :0d42[5]
    inc nmi_lda_abs+2                                                 ; 903b: ee 3b 0d    .;. :0d44[5]
; $903e referenced 1 time by $8de2
}

; $903e referenced 1 time by $8de2
nmi3_handler_rom_end
; $903e referenced 1 time by $8de2
    ldx nmi_sta_abs+1                                                 ; 903e: ae 3d 0d    .=.
    lda nmi_sta_abs+2                                                 ; 9041: ad 3e 0d    .>.
    pha                                                               ; 9044: 48          H
    ldy #nmi_handler2_rom_end-nmi_handler2_rom_start                  ; 9045: a0 94       ..
; $9047 referenced 1 time by $904e
loop_c9047
    lda nmi_handler2_rom_start-1,y                                    ; 9047: b9 66 90    .f.
    sta l0cff,y                                                       ; 904a: 99 ff 0c    ...
    dey                                                               ; 904d: 88          .
    bne loop_c9047                                                    ; 904e: d0 f7       ..
    pla                                                               ; 9050: 68          h
    bit l00a1                                                         ; 9051: 24 a1       $.
    bpl c9060                                                         ; 9053: 10 0b       ..
    lda #opcode_bcs                                                   ; 9055: a9 b0       ..
    sta nmi_cmp_imm_or_bcs                                            ; 9057: 8d 18 0d    ...
    lda #nmi_XXX5-(nmi_cmp_imm_or_bcs+2)                              ; 905a: a9 06       ..
    sta nmi_cmp_imm_or_bcs+1                                          ; 905c: 8d 19 0d    ...
    rts                                                               ; 905f: 60          `

; $9060 referenced 1 time by $9053
c9060
    stx nmi_lda_zp                                                    ; 9060: 8e 16 0d    ...
    sta nmi_lda_zp+1                                                  ; 9063: 8d 17 0d    ...
; $9066 referenced 1 time by $9047
    rts                                                               ; 9066: 60          `

nmi_handler2_rom_start

!pseudopc $0d00 {
    pha                                                               ; 9067: 48          H   :0d00[6]
    lda lfe84                                                         ; 9068: ad 84 fe    ... :0d01[6]
    and #$1b                                                          ; 906b: 29 1b       ).  :0d04[6]
    cmp #3                                                            ; 906d: c9 03       ..  :0d06[6]
    bne l0d0f                                                         ; 906f: d0 05       ..  :0d08[6]
    lda lfe87                                                         ; 9071: ad 87 fe    ... :0d0a[6]
; The operand of this bcs is modified at runtime
nmi_bcs
    bcs nmi_XXX21                                                     ; 9074: b0 26       .&  :0d0d[6]
l0d0f
    and #$fc                                                          ; 9076: 29 fc       ).  :0d0f[6]
    sta l00a2                                                         ; 9078: 85 a2       ..  :0d11[6]
    pla                                                               ; 907a: 68          h   :0d13[6]
    rti                                                               ; 907b: 40          @   :0d14[6]

; The operand of this sta is modified at runtime.
nmi_XXX17
nmi_sta_abs2
    sta tube_host_r3_data                                             ; 907c: 8d e5 fe    ... :0d15[6]
    inc nmi_sta_abs2+1                                                ; 907f: ee 16 0d    ... :0d18[6]
    bne nmi_XXX18                                                     ; 9082: d0 03       ..  :0d1b[6]
    inc nmi_sta_abs2+2                                                ; 9084: ee 17 0d    ... :0d1d[6]
nmi_XXX18
    dec l00a6                                                         ; 9087: c6 a6       ..  :0d20[6]
    bne nmi_XXX23                                                     ; 9089: d0 0f       ..  :0d22[6]
    dec l00a7                                                         ; 908b: c6 a7       ..  :0d24[6]
    bne nmi_XXX23                                                     ; 908d: d0 0b       ..  :0d26[6]
    lda #nmi_XXX22-(nmi_bcs+2)                                        ; 908f: a9 77       .w  :0d28[6]
    dec l00a5                                                         ; 9091: c6 a5       ..  :0d2a[6]
    bne l0d30                                                         ; 9093: d0 02       ..  :0d2c[6]
    lda #nmi_XXX23-(nmi_bcs+2)                                        ; 9095: a9 24       .$  :0d2e[6]
l0d30
    sta nmi_bcs+1                                                     ; 9097: 8d 0e 0d    ... :0d30[6]
nmi_XXX23
    pla                                                               ; 909a: 68          h   :0d33[6]
    rti                                                               ; 909b: 40          @   :0d34[6]

nmi_XXX21
    cmp #$fe                                                          ; 909c: c9 fe       ..  :0d35[6]
    beq l0d3d                                                         ; 909e: f0 04       ..  :0d37[6]
    cmp #$ce                                                          ; 90a0: c9 ce       ..  :0d39[6]
    bne nmi_XXX23                                                     ; 90a2: d0 f6       ..  :0d3b[6]
l0d3d
    lda #nmi_XXX10-(nmi_bcs+2)                                        ; 90a4: a9 32       .2  :0d3d[6]
    bne l0d30                                                         ; 90a6: d0 ef       ..  :0d3f[6]
nmi_XXX10
    sbc lfe87                                                         ; 90a8: ed 87 fe    ... :0d41[6]
    sta l00b5                                                         ; 90ab: 85 b5       ..  :0d44[6]
    lda #nmi_XXX11-(nmi_bcs+2)                                        ; 90ad: a9 3b       .;  :0d46[6]
    bne l0d30                                                         ; 90af: d0 e6       ..  :0d48[6]
nmi_XXX11
    lda #nmi_XXX12-(nmi_bcs+2)                                        ; 90b1: a9 3f       .?  :0d4a[6]
    bne l0d30                                                         ; 90b3: d0 e2       ..  :0d4c[6]
nmi_XXX12
    sbc l00cf                                                         ; 90b5: e5 cf       ..  :0d4e[6]
    ora l00b5                                                         ; 90b7: 05 b5       ..  :0d50[6]
    sta l00b5                                                         ; 90b9: 85 b5       ..  :0d52[6]
    lda #nmi_XXX13-(nmi_bcs+2)                                        ; 90bb: a9 49       .I  :0d54[6]
    bne l0d30                                                         ; 90bd: d0 d8       ..  :0d56[6]
nmi_XXX13
    lda #nmi_XXX14-(nmi_bcs+2)                                        ; 90bf: a9 4d       .M  :0d58[6]
    bne l0d30                                                         ; 90c1: d0 d4       ..  :0d5a[6]
nmi_XXX14
    lda l00b3                                                         ; 90c3: a5 b3       ..  :0d5c[6]
    sta l00a6                                                         ; 90c5: 85 a6       ..  :0d5e[6]
; $90c7 referenced 2 times by $8dac, $8dbd
c0d60
    lda #nmi_XXX15-(nmi_bcs+2)                                        ; 90c7: a9 55       .U  :0d60[6]
    bne l0d30                                                         ; 90c9: d0 cc       ..  :0d62[6]
nmi_XXX15
    lda l00b4                                                         ; 90cb: a5 b4       ..  :0d64[6]
    sta l00a7                                                         ; 90cd: 85 a7       ..  :0d66[6]
    lda #nmi_XXX16-(nmi_bcs+2)                                        ; 90cf: a9 5d       .]  :0d68[6]
    bne l0d30                                                         ; 90d1: d0 c4       ..  :0d6a[6]
nmi_XXX16
    cmp #$fb                                                          ; 90d3: c9 fb       ..  :0d6c[6]
    beq c0d74                                                         ; 90d5: f0 04       ..  :0d6e[6]
    cmp #$f8                                                          ; 90d7: c9 f8       ..  :0d70[6]
    bne nmi_XXX23                                                     ; 90d9: d0 bf       ..  :0d72[6]
; $90db referenced 1 time by $0d6e
c0d74
    sta l00b6                                                         ; 90db: 85 b6       ..  :0d74[6]
    lda l00b5                                                         ; 90dd: a5 b5       ..  :0d76[6]
    bne c0d80                                                         ; 90df: d0 06       ..  :0d78[6]
    inc l00cf                                                         ; 90e1: e6 cf       ..  :0d7a[6]
    lda #nmi_XXX17-(nmi_bcs+2)                                        ; 90e3: a9 06       ..  :0d7c[6]
    bne l0d30                                                         ; 90e5: d0 b0       ..  :0d7e[6]
; $90e7 referenced 1 time by $0d78
c0d80
    inc l00a5                                                         ; 90e7: e6 a5       ..  :0d80[6]
    lda #nmi_XXX18-(nmi_bcs+2)                                        ; 90e9: a9 11       ..  :0d82[6]
    bne l0d30                                                         ; 90eb: d0 aa       ..  :0d84[6]
nmi_XXX22
    lda #nmi_XXX19-(nmi_bcs+2)                                        ; 90ed: a9 7b       .{  :0d86[6]
    bne l0d30                                                         ; 90ef: d0 a6       ..  :0d88[6]
nmi_XXX19
    lda #nmi_XXX20-(nmi_bcs+2)                                        ; 90f1: a9 7f       ..  :0d8a[6]
    bne l0d30                                                         ; 90f3: d0 a2       ..  :0d8c[6]
nmi_XXX20
    bne nmi_XXX23                                                     ; 90f5: d0 a3       ..  :0d8e[6]
    lda #nmi_XXX21-(nmi_bcs+2)                                        ; 90f7: a9 26       .&  :0d90[6]
    bne l0d30                                                         ; 90f9: d0 9c       ..  :0d92[6]
; $90fb referenced 3 times by $8d41, $8d92, $9101
}

; $90fb referenced 3 times by $8d41, $8d92, $9101
nmi_handler2_rom_end
; $90fb referenced 3 times by $8d41, $8d92, $9101
    sta lfe86                                                         ; 90fb: 8d 86 fe    ...
    cmp lfe86                                                         ; 90fe: cd 86 fe    ...
    bne nmi_handler2_rom_end                                          ; 9101: d0 f8       ..
    rts                                                               ; 9103: 60          `

; $9104 referenced 1 time by $966b
set_c_iff_have_fdc
    ldx #0                                                            ; 9104: a2 00       ..
    lda #$5a ; 'Z'                                                    ; 9106: a9 5a       .Z
; $9108 referenced 1 time by $9111
loop_c9108
    sta lfe85                                                         ; 9108: 8d 85 fe    ...
    cmp lfe85                                                         ; 910b: cd 85 fe    ...
    beq c9115                                                         ; 910e: f0 05       ..
    dex                                                               ; 9110: ca          .
    bne loop_c9108                                                    ; 9111: d0 f5       ..
; $9113 referenced 1 time by $911a
loop_c9113
    clc                                                               ; 9113: 18          .
    rts                                                               ; 9114: 60          `

; $9115 referenced 1 time by $910e
c9115
    lda lfe80                                                         ; 9115: ad 80 fe    ...
    and #3                                                            ; 9118: 29 03       ).
    beq loop_c9113                                                    ; 911a: f0 f7       ..
    rts                                                               ; 911c: 60          `

; $911d referenced 1 time by $8cd8
l911d
    !text ")*-."                                                      ; 911d: 29 2a 2d... )*-
; $9121 referenced 1 time by $8e15
l9121
    !byte   0, $10, $40, $50, $80, $81, $83, $a0, $a1, $c0, $e0, $f0  ; 9121: 00 10 40... ..@
; $912d referenced 1 time by $8e1b
nmi_and_table
    !byte $18, $18, $18, $18, $3f, $1f, $1f, $5f, $5f, $17, $1b, $5f  ; 912d: 18 18 18... ...
; $9139 referenced 1 time by $8c58
l9139
    !byte   8, $10, $18, $20, $40,   0                                ; 9139: 08 10 18... ...
; $913f referenced 1 time by $8c61
l913f
    !byte $0e, $18, $0c, $20, $12,   0                                ; 913f: 0e 18 0c... ...
; $9145 referenced 1 time by $92e3
l9145
    !byte $6d                                                         ; 9145: 6d          m
; $9146 referenced 1 time by $92e8
l9146
    !byte $91, $49, $91                                               ; 9146: 91 49 91    .I.
    !byte $3c, $0c,   3                                               ; 9149: 3c 0c 03    <..
    !byte   1,   1,   1                                               ; 914c: 01 01 01    ...
    !byte   1,   1,   1                                               ; 914f: 01 01 01    ...
    !byte $16, $0c,   3                                               ; 9152: 16 0c 03    ...
    !byte   1, $ff,   1                                               ; 9155: 01 ff 01    ...
    !byte   1, $18,   4                                               ; 9158: 01 18 04    ...
    !byte $4e,   0, $f5                                               ; 915b: 4e 00 f5    N..
    !byte $fe,   0,   0                                               ; 915e: fe 00 00    ...
    !byte   0,   0, $f7                                               ; 9161: 00 00 f7    ...
    !byte $4e,   0                                                    ; 9164: 4e 00       N.
    !byte $f5, $fb, $5a, $5a, $f7, $4e, $4e, $10,   6,   0,   1,   1  ; 9166: f5 fb 5a... ..Z
    !byte   1,   1,   1,   1, $0b,   6,   0,   1, $ff,   1,   1, $13  ; 9172: 01 01 01... ...
    !byte   3, $ff,   0,   0, $fe,   0,   0,   0,   0, $f7, $ff,   0  ; 917e: 03 ff 00... ...
    !byte   0, $fb, $e5, $e5, $f7, $ff, $ff                           ; 918a: 00 fb e5... ...
; $9191 referenced 1 time by $91df
l9191
    !byte $0a, $0b, $0e, $0f, $12, $13, $16, $17, $1b, $1e, $1f       ; 9191: 0a 0b 0e... ...
    !text "#) 0"                                                      ; 919c: 23 29 20... #)
; $91a0 referenced 1 time by $9201
l91a0
    !byte $a0, $a0, $a1, $a1, $80, $80, $81, $81, $c0, $83, $83, $f0  ; 91a0: a0 a0 a1... ...
    !byte $10, $e0, $f0                                               ; 91ac: 10 e0 f0    ...

; $91af referenced 3 times by $9758, $a6dc, $a700
c91af
    lda #$ff                                                          ; 91af: a9 ff       ..
    sta l1082                                                         ; 91b1: 8d 82 10    ...
    stx l00c7                                                         ; 91b4: 86 c7       ..
    sty l00c8                                                         ; 91b6: 84 c8       ..
    ldy #$0c                                                          ; 91b8: a0 0c       ..
; $91ba referenced 1 time by $91c0
loop_c91ba
    lda (l00c7),y                                                     ; 91ba: b1 c7       ..
    sta l00ba,y                                                       ; 91bc: 99 ba 00    ...
    dey                                                               ; 91bf: 88          .
    bpl loop_c91ba                                                    ; 91c0: 10 f8       ..
    ldx #$0c                                                          ; 91c2: a2 0c       ..
    lda l00bf                                                         ; 91c4: a5 bf       ..
    cmp #$0a                                                          ; 91c6: c9 0a       ..
    bne c91cc                                                         ; 91c8: d0 02       ..
    ldx #$0e                                                          ; 91ca: a2 0e       ..
; $91cc referenced 1 time by $91c8
c91cc
    lda l00c0                                                         ; 91cc: a5 c0       ..
    and #$3f ; '?'                                                    ; 91ce: 29 3f       )?
    cmp #$3a ; ':'                                                    ; 91d0: c9 3a       .:
    beq c921f                                                         ; 91d2: f0 4b       .K
    cmp #$3d ; '='                                                    ; 91d4: c9 3d       .=
    beq c923f                                                         ; 91d6: f0 67       .g
    cmp #$35 ; '5'                                                    ; 91d8: c9 35       .5
    bne c91df                                                         ; 91da: d0 03       ..
    jmp c925a                                                         ; 91dc: 4c 5a 92    LZ.

; $91df referenced 2 times by $91da, $91e5
c91df
    cmp l9191,x                                                       ; 91df: dd 91 91    ...
    beq c91eb                                                         ; 91e2: f0 07       ..
    dex                                                               ; 91e4: ca          .
    bpl c91df                                                         ; 91e5: 10 f8       ..
; $91e7 referenced 1 time by $91ff
loop_c91e7
    lda #$fe                                                          ; 91e7: a9 fe       ..
    bmi c9214                                                         ; 91e9: 30 29       0)
; $91eb referenced 1 time by $91e2
c91eb
    cmp #$23 ; '#'                                                    ; 91eb: c9 23       .#
    beq c91f3                                                         ; 91ed: f0 04       ..
    cpx #4                                                            ; 91ef: e0 04       ..
    bcs c9201                                                         ; 91f1: b0 0e       ..
; $91f3 referenced 1 time by $91ed
c91f3
    lda l00ba                                                         ; 91f3: a5 ba       ..
    bpl c91f9                                                         ; 91f5: 10 02       ..
    lda l00cd                                                         ; 91f7: a5 cd       ..
; $91f9 referenced 1 time by $91f5
c91f9
    and #3                                                            ; 91f9: 29 03       ).
    tay                                                               ; 91fb: a8          .
    lda l10de,y                                                       ; 91fc: b9 de 10    ...
    bmi loop_c91e7                                                    ; 91ff: 30 e6       0.
; $9201 referenced 1 time by $91f1
c9201
    ldy l91a0,x                                                       ; 9201: bc a0 91    ...
    sty l00c0                                                         ; 9204: 84 c0       ..
    cpy #$f0                                                          ; 9206: c0 f0       ..
    bne c920d                                                         ; 9208: d0 03       ..
    jsr sub_c929d                                                     ; 920a: 20 9d 92     ..
; $920d referenced 1 time by $9208
c920d
    ldx #$ba                                                          ; 920d: a2 ba       ..
    ldy #0                                                            ; 920f: a0 00       ..
    jsr sub_c8bf9                                                     ; 9211: 20 f9 8b     ..
; $9214 referenced 3 times by $91e9, $9257, $9276
c9214
    pha                                                               ; 9214: 48          H
    lda l00bf                                                         ; 9215: a5 bf       ..
    clc                                                               ; 9217: 18          .
    adc #7                                                            ; 9218: 69 07       i.
    tay                                                               ; 921a: a8          .
    pla                                                               ; 921b: 68          h
    sta (l00c7),y                                                     ; 921c: 91 c7       ..
    rts                                                               ; 921e: 60          `

; $921f referenced 1 time by $91d2
c921f
    jsr sub_c928a                                                     ; 921f: 20 8a 92     ..
    bcs c922b                                                         ; 9222: b0 07       ..
    lda l00c2                                                         ; 9224: a5 c2       ..
    sta l108b,x                                                       ; 9226: 9d 8b 10    ...
    bcc c923b                                                         ; 9229: 90 10       ..
; $922b referenced 1 time by $9222
c922b
    jsr sub_c9279                                                     ; 922b: 20 79 92     y.
    bcc c9257                                                         ; 922e: 90 27       .'
    lda l00c2                                                         ; 9230: a5 c2       ..
    ldy l10de,x                                                       ; 9232: bc de 10    ...
    bpl c9238                                                         ; 9235: 10 01       ..
    asl                                                               ; 9237: 0a          .
; $9238 referenced 1 time by $9235
c9238
    sta l1088,x                                                       ; 9238: 9d 88 10    ...
; $923b referenced 1 time by $9229
c923b
    lda #0                                                            ; 923b: a9 00       ..
    beq c9257                                                         ; 923d: f0 18       ..
; $923f referenced 1 time by $91d6
c923f
    jsr sub_c928a                                                     ; 923f: 20 8a 92     ..
    bcs c9249                                                         ; 9242: b0 05       ..
    lda l108b,x                                                       ; 9244: bd 8b 10    ...
    bcc c9257                                                         ; 9247: 90 0e       ..
; $9249 referenced 1 time by $9242
c9249
    jsr sub_c9279                                                     ; 9249: 20 79 92     y.
    bcc c9257                                                         ; 924c: 90 09       ..
    lda l1088,x                                                       ; 924e: bd 88 10    ...
    ldy l10de,x                                                       ; 9251: bc de 10    ...
    bpl c9257                                                         ; 9254: 10 01       ..
    lsr                                                               ; 9256: 4a          J
; $9257 referenced 5 times by $922e, $923d, $9247, $924c, $9254
c9257
    jmp c9214                                                         ; 9257: 4c 14 92    L..

; $925a referenced 1 time by $91dc
c925a
    lda #$ff                                                          ; 925a: a9 ff       ..
    ldx #0                                                            ; 925c: a2 00       ..
    ldy l00c1                                                         ; 925e: a4 c1       ..
    cpy #$10                                                          ; 9260: c0 10       ..
    beq c926a                                                         ; 9262: f0 06       ..
    cpy #$18                                                          ; 9264: c0 18       ..
    bne c9276                                                         ; 9266: d0 0e       ..
    inx                                                               ; 9268: e8          .
    inx                                                               ; 9269: e8          .
; $926a referenced 1 time by $9262
c926a
    lda l00c2                                                         ; 926a: a5 c2       ..
    sta l108b,x                                                       ; 926c: 9d 8b 10    ...
    lda l00c3                                                         ; 926f: a5 c3       ..
    sta l108c,x                                                       ; 9271: 9d 8c 10    ...
    lda #0                                                            ; 9274: a9 00       ..
; $9276 referenced 1 time by $9266
c9276
    jmp c9214                                                         ; 9276: 4c 14 92    L..

; $9279 referenced 2 times by $922b, $9249
sub_c9279
    ldx #0                                                            ; 9279: a2 00       ..
    lda l00c1                                                         ; 927b: a5 c1       ..
    cmp #$12                                                          ; 927d: c9 12       ..
    beq c9289                                                         ; 927f: f0 08       ..
    inx                                                               ; 9281: e8          .
    cmp #$1a                                                          ; 9282: c9 1a       ..
    beq c9289                                                         ; 9284: f0 03       ..
    lda #$fe                                                          ; 9286: a9 fe       ..
    clc                                                               ; 9288: 18          .
; $9289 referenced 2 times by $927f, $9284
c9289
    rts                                                               ; 9289: 60          `

; $928a referenced 2 times by $921f, $923f
sub_c928a
    lda l00c1                                                         ; 928a: a5 c1       ..
    and #$f6                                                          ; 928c: 29 f6       ).
    cmp #$10                                                          ; 928e: c9 10       ..
    sec                                                               ; 9290: 38          8
    bne c929c                                                         ; 9291: d0 09       ..
    lda l00c1                                                         ; 9293: a5 c1       ..
    lsr                                                               ; 9295: 4a          J
    lsr                                                               ; 9296: 4a          J
    ora l00c1                                                         ; 9297: 05 c1       ..
    and #3                                                            ; 9299: 29 03       ).
    tax                                                               ; 929b: aa          .
; $929c referenced 1 time by $9291
c929c
    rts                                                               ; 929c: 60          `

; $929d referenced 1 time by $920a
sub_c929d
    jsr sub_c9a8d                                                     ; 929d: 20 8d 9a     ..
    lda l00bb                                                         ; 92a0: a5 bb       ..
    sta l00b0                                                         ; 92a2: 85 b0       ..
    sta l00b4                                                         ; 92a4: 85 b4       ..
    clc                                                               ; 92a6: 18          .
    adc #$80                                                          ; 92a7: 69 80       i.
    sta l00b2                                                         ; 92a9: 85 b2       ..
    lda l00bc                                                         ; 92ab: a5 bc       ..
    sta l00b1                                                         ; 92ad: 85 b1       ..
    php                                                               ; 92af: 08          .
    jsr sub_c8f3f                                                     ; 92b0: 20 3f 8f     ?.
    bmi c92bd                                                         ; 92b3: 30 08       0.
    lda l00bd                                                         ; 92b5: a5 bd       ..
    ora l00be                                                         ; 92b7: 05 be       ..
    cmp #$ff                                                          ; 92b9: c9 ff       ..
    bne c92c4                                                         ; 92bb: d0 07       ..
; $92bd referenced 1 time by $92b3
c92bd
    lda l00b1                                                         ; 92bd: a5 b1       ..
    cmp l10cf                                                         ; 92bf: cd cf 10    ...
    bcs c92c7                                                         ; 92c2: b0 03       ..
; $92c4 referenced 1 time by $92bb
c92c4
    lda l10cf                                                         ; 92c4: ad cf 10    ...
; $92c7 referenced 1 time by $92c2
c92c7
    plp                                                               ; 92c7: 28          (
    sta l00b5                                                         ; 92c8: 85 b5       ..
    adc #0                                                            ; 92ca: 69 00       i.
    sta l00b3                                                         ; 92cc: 85 b3       ..
    inc l00b5                                                         ; 92ce: e6 b5       ..
    lda l00ba                                                         ; 92d0: a5 ba       ..
    bpl c92d6                                                         ; 92d2: 10 02       ..
    lda #0                                                            ; 92d4: a9 00       ..
; $92d6 referenced 1 time by $92d2
c92d6
    rol                                                               ; 92d6: 2a          *
    rol                                                               ; 92d7: 2a          *
    rol                                                               ; 92d8: 2a          *
    sta l108a                                                         ; 92d9: 8d 8a 10    ...
    ldx #2                                                            ; 92dc: a2 02       ..
    rol                                                               ; 92de: 2a          *
    bmi c92e3                                                         ; 92df: 30 02       0.
    ldx #0                                                            ; 92e1: a2 00       ..
; $92e3 referenced 1 time by $92df
c92e3
    lda l9145,x                                                       ; 92e3: bd 45 91    .E.
    sta l00b6                                                         ; 92e6: 85 b6       ..
    lda l9146,x                                                       ; 92e8: bd 46 91    .F.
    sta l00b7                                                         ; 92eb: 85 b7       ..
    ldy #$23 ; '#'                                                    ; 92ed: a0 23       .#
; $92ef referenced 1 time by $92f4
loop_c92ef
    lda (l00b6),y                                                     ; 92ef: b1 b6       ..
    sta (l00b2),y                                                     ; 92f1: 91 b2       ..
    dey                                                               ; 92f3: 88          .
    bpl loop_c92ef                                                    ; 92f4: 10 f9       ..
    iny                                                               ; 92f6: c8          .
    sty l00b6                                                         ; 92f7: 84 b6       ..
    lda l00c3                                                         ; 92f9: a5 c3       ..
    pha                                                               ; 92fb: 48          H
    and #$e0                                                          ; 92fc: 29 e0       ).
    bne c9302                                                         ; 92fe: d0 02       ..
    lda #$10                                                          ; 9300: a9 10       ..
; $9302 referenced 1 time by $92fe
c9302
    asl                                                               ; 9302: 0a          .
    rol l00b6                                                         ; 9303: 26 b6       &.
    asl                                                               ; 9305: 0a          .
    rol l00b6                                                         ; 9306: 26 b6       &.
    asl                                                               ; 9308: 0a          .
    rol l00b6                                                         ; 9309: 26 b6       &.
    ldy #$0d                                                          ; 930b: a0 0d       ..
    sta (l00b2),y                                                     ; 930d: 91 b2       ..
    lda l00b6                                                         ; 930f: a5 b6       ..
    iny                                                               ; 9311: c8          .
    sta (l00b2),y                                                     ; 9312: 91 b2       ..
    pla                                                               ; 9314: 68          h
    and #$1f                                                          ; 9315: 29 1f       ).
    sta l00b9                                                         ; 9317: 85 b9       ..
    lda l00c2                                                         ; 9319: a5 c2       ..
    ldy #$10                                                          ; 931b: a0 10       ..
    sta (l00b2),y                                                     ; 931d: 91 b2       ..
    lda l00c5                                                         ; 931f: a5 c5       ..
    ldy #0                                                            ; 9321: a0 00       ..
    sta (l00b2),y                                                     ; 9323: 91 b2       ..
    tya                                                               ; 9325: 98          .
    sta l00b8                                                         ; 9326: 85 b8       ..
    jsr sub_c93d3                                                     ; 9328: 20 d3 93     ..
    jsr sub_c8f3f                                                     ; 932b: 20 3f 8f     ?.
    bmi c9367                                                         ; 932e: 30 37       07
    lda l00bd                                                         ; 9330: a5 bd       ..
    and l00be                                                         ; 9332: 25 be       %.
    cmp #$ff                                                          ; 9334: c9 ff       ..
    beq c9367                                                         ; 9336: f0 2f       ./
    lda #$ff                                                          ; 9338: a9 ff       ..
    sta l00bd                                                         ; 933a: 85 bd       ..
    sta l00be                                                         ; 933c: 85 be       ..
    jsr sub_c8f6b                                                     ; 933e: 20 6b 8f     k.
    ldx #$bb                                                          ; 9341: a2 bb       ..
    ldy #0                                                            ; 9343: a0 00       ..
    tya                                                               ; 9345: 98          .
    jsr tube_entry                                                    ; 9346: 20 06 04     ..
    ldx l00b5                                                         ; 9349: a6 b5       ..
    dex                                                               ; 934b: ca          .
    stx l00b1                                                         ; 934c: 86 b1       ..
    lda l00b9                                                         ; 934e: a5 b9       ..
    asl                                                               ; 9350: 0a          .
    asl                                                               ; 9351: 0a          .
    tax                                                               ; 9352: aa          .
    ldy #0                                                            ; 9353: a0 00       ..
; $9355 referenced 1 time by $9362
loop_c9355
    lda #7                                                            ; 9355: a9 07       ..
; $9357 referenced 1 time by $9359
loop_c9357
    sbc #1                                                            ; 9357: e9 01       ..
    bne loop_c9357                                                    ; 9359: d0 fc       ..
    lda tube_host_r3_data                                             ; 935b: ad e5 fe    ...
    sta (l00b0),y                                                     ; 935e: 91 b0       ..
    iny                                                               ; 9360: c8          .
    dex                                                               ; 9361: ca          .
    bpl loop_c9355                                                    ; 9362: 10 f1       ..
    jsr sub_c8f7a                                                     ; 9364: 20 7a 8f     z.
; $9367 referenced 2 times by $932e, $9336
c9367
    lda l00b5                                                         ; 9367: a5 b5       ..
    sta l00bc                                                         ; 9369: 85 bc       ..
; $936b referenced 1 time by $939c
c936b
    ldy #$16                                                          ; 936b: a0 16       ..
    ldx #0                                                            ; 936d: a2 00       ..
; $936f referenced 1 time by $937c
loop_c936f
    lda (l00b0,x)                                                     ; 936f: a1 b0       ..
    sta (l00b2),y                                                     ; 9371: 91 b2       ..
    inc l00b0                                                         ; 9373: e6 b0       ..
    bne c9379                                                         ; 9375: d0 02       ..
    inc l00b1                                                         ; 9377: e6 b1       ..
; $9379 referenced 1 time by $9375
c9379
    iny                                                               ; 9379: c8          .
    cpy #$1a                                                          ; 937a: c0 1a       ..
    bne loop_c936f                                                    ; 937c: d0 f1       ..
    lda #1                                                            ; 937e: a9 01       ..
    sta l00b6                                                         ; 9380: 85 b6       ..
; $9382 referenced 1 time by $9396
loop_c9382
    lda l00b6                                                         ; 9382: a5 b6       ..
    cmp #$0e                                                          ; 9384: c9 0e       ..
    bne c938d                                                         ; 9386: d0 05       ..
    jsr sub_c93b4                                                     ; 9388: 20 b4 93     ..
    beq c9390                                                         ; 938b: f0 03       ..
; $938d referenced 1 time by $9386
c938d
    jsr sub_c93d3                                                     ; 938d: 20 d3 93     ..
; $9390 referenced 1 time by $938b
c9390
    inc l00b6                                                         ; 9390: e6 b6       ..
    lda l00b6                                                         ; 9392: a5 b6       ..
    cmp #$11                                                          ; 9394: c9 11       ..
    bne loop_c9382                                                    ; 9396: d0 ea       ..
    inc l00b8                                                         ; 9398: e6 b8       ..
    dec l00b9                                                         ; 939a: c6 b9       ..
    bne c936b                                                         ; 939c: d0 cd       ..
    tay                                                               ; 939e: a8          .
    lda #$0e                                                          ; 939f: a9 0e       ..
    bit l108a                                                         ; 93a1: 2c 8a 10    ,..
    bvc c93a8                                                         ; 93a4: 50 02       P.
    lda #$1a                                                          ; 93a6: a9 1a       ..
; $93a8 referenced 1 time by $93a4
c93a8
    clc                                                               ; 93a8: 18          .
    adc l00bc                                                         ; 93a9: 65 bc       e.
    sbc l00b5                                                         ; 93ab: e5 b5       ..
    bcs c93b1                                                         ; 93ad: b0 02       ..
    lda #1                                                            ; 93af: a9 01       ..
; $93b1 referenced 1 time by $93ad
c93b1
    sta (l00b2),y                                                     ; 93b1: 91 b2       ..
    tya                                                               ; 93b3: 98          .
; $93b4 referenced 1 time by $9388
sub_c93b4
    jsr sub_c93c5                                                     ; 93b4: 20 c5 93     ..
    beq c93c4                                                         ; 93b7: f0 0b       ..
    stx l00b7                                                         ; 93b9: 86 b7       ..
    ldx #0                                                            ; 93bb: a2 00       ..
; $93bd referenced 1 time by $93c2
loop_c93bd
    jsr sub_c93d8                                                     ; 93bd: 20 d8 93     ..
    dec l00b7                                                         ; 93c0: c6 b7       ..
    bne loop_c93bd                                                    ; 93c2: d0 f9       ..
; $93c4 referenced 1 time by $93b7
c93c4
    rts                                                               ; 93c4: 60          `

; $93c5 referenced 2 times by $93b4, $93d3
sub_c93c5
    tay                                                               ; 93c5: a8          .
    lda (l00b2),y                                                     ; 93c6: b1 b2       ..
    tax                                                               ; 93c8: aa          .
    tya                                                               ; 93c9: 98          .
    clc                                                               ; 93ca: 18          .
    adc #$12                                                          ; 93cb: 69 12       i.
    tay                                                               ; 93cd: a8          .
    lda (l00b2),y                                                     ; 93ce: b1 b2       ..
    cpx #0                                                            ; 93d0: e0 00       ..
    rts                                                               ; 93d2: 60          `

; $93d3 referenced 2 times by $9328, $938d
sub_c93d3
    jsr sub_c93c5                                                     ; 93d3: 20 c5 93     ..
    beq c93e5                                                         ; 93d6: f0 0d       ..
; $93d8 referenced 1 time by $93bd
sub_c93d8
    ldy #0                                                            ; 93d8: a0 00       ..
; $93da referenced 1 time by $93e3
loop_c93da
    sta (l00b4),y                                                     ; 93da: 91 b4       ..
    inc l00b4                                                         ; 93dc: e6 b4       ..
    bne c93e2                                                         ; 93de: d0 02       ..
    inc l00b5                                                         ; 93e0: e6 b5       ..
; $93e2 referenced 1 time by $93de
c93e2
    dex                                                               ; 93e2: ca          .
    bne loop_c93da                                                    ; 93e3: d0 f5       ..
; $93e5 referenced 1 time by $93d6
c93e5
    rts                                                               ; 93e5: 60          `

; $93e6 referenced 10 times by $8772, $8791, $87cb, $89d7, $8a6b, $8b12, $8bf3, $9bbc, $9fff, $a30a
c93e6
    lda l0f04                                                         ; 93e6: ad 04 0f    ...
    clc                                                               ; 93e9: 18          .
    sed                                                               ; 93ea: f8          .
    adc #1                                                            ; 93eb: 69 01       i.
    sta l0f04                                                         ; 93ed: 8d 04 0f    ...
    cld                                                               ; 93f0: d8          .
; $93f1 referenced 1 time by $a737
sub_c93f1
    ldy #$a0                                                          ; 93f1: a0 a0       ..
    bne c940e                                                         ; 93f3: d0 19       ..
; $93f5 referenced 2 times by $9636, $a7ce
sub_c93f5
    ldy #$81                                                          ; 93f5: a0 81       ..
    bne c940e                                                         ; 93f7: d0 15       ..
; $93f9 referenced 1 time by $8266
sub_c93f9
    ldy #$81                                                          ; 93f9: a0 81       ..
    bne c93ff                                                         ; 93fb: d0 02       ..
; $93fd referenced 3 times by $8287, $988e, $98da
sub_c93fd
    ldy #$80                                                          ; 93fd: a0 80       ..
; $93ff referenced 1 time by $93fb
c93ff
    bit lfe84                                                         ; 93ff: 2c 84 fe    ,..
    bpl c940e                                                         ; 9402: 10 0a       ..
    lda l1082                                                         ; 9404: ad 82 10    ...
    cmp l00cd                                                         ; 9407: c5 cd       ..
    bne c940e                                                         ; 9409: d0 03       ..
    rts                                                               ; 940b: 60          `

; $940c referenced 6 times by $8383, $8489, $8a59, $a431, $a448, $a460
c940c
    ldy #$80                                                          ; 940c: a0 80       ..
; $940e referenced 4 times by $93f3, $93f7, $9402, $9409
c940e
    jsr sub_c9536                                                     ; 940e: 20 36 95     6.
    sty l1096                                                         ; 9411: 8c 96 10    ...
    lda l00cd                                                         ; 9414: a5 cd       ..
    sta l1090                                                         ; 9416: 8d 90 10    ...
    lda #2                                                            ; 9419: a9 02       ..
    sta l1099                                                         ; 941b: 8d 99 10    ...
    lda #$0e                                                          ; 941e: a9 0e       ..
    sta l1092                                                         ; 9420: 8d 92 10    ...
    dec l1093                                                         ; 9423: ce 93 10    ...
    dec l1094                                                         ; 9426: ce 94 10    ...
    jsr sub_c9445                                                     ; 9429: 20 45 94     E.
    lda l00cd                                                         ; 942c: a5 cd       ..
    sta l1082                                                         ; 942e: 8d 82 10    ...
    rts                                                               ; 9431: 60          `

; $9432 referenced 2 times by $944d, $a6f9
sub_c9432
    bit l00ff                                                         ; 9432: 24 ff       $.
    bpl c9444                                                         ; 9434: 10 0e       ..
; $9436 referenced 4 times by $946c, $a411, $a65d, $abc2
c9436
    jsr sub_c9ad8                                                     ; 9436: 20 d8 9a     ..
    jsr generate_error                                                ; 9439: 20 48 80     H.
    !byte $11                                                         ; 943c: 11          .
    !text "Escape"                                                    ; 943d: 45 73 63... Esc
    !byte 0                                                           ; 9443: 00          .

; $9444 referenced 3 times by $9434, $946a, $947a
c9444
    rts                                                               ; 9444: 60          `

; $9445 referenced 2 times by $886a, $9429
sub_c9445
    jsr sub_c9516                                                     ; 9445: 20 16 95     ..
    lda #6                                                            ; 9448: a9 06       ..
    sta l109e                                                         ; 944a: 8d 9e 10    ...
    jsr sub_c9432                                                     ; 944d: 20 32 94     2.
; $9450 referenced 1 time by $94bf
c9450
    lda l1097                                                         ; 9450: ad 97 10    ...
    ldx l1090                                                         ; 9453: ae 90 10    ...
    ldy l10de,x                                                       ; 9456: bc de 10    ...
    bpl c945c                                                         ; 9459: 10 01       ..
    asl                                                               ; 945b: 0a          .
; $945c referenced 1 time by $9459
c945c
    ldy #$18                                                          ; 945c: a0 18       ..
    cmp #$50 ; 'P'                                                    ; 945e: c9 50       .P
    bcs c94c1                                                         ; 9460: b0 5f       ._
    ldx #$90                                                          ; 9462: a2 90       ..
    ldy #$10                                                          ; 9464: a0 10       ..
    jsr sub_c8bf6                                                     ; 9466: 20 f6 8b     ..
    tay                                                               ; 9469: a8          .
    beq c9444                                                         ; 946a: f0 d8       ..
    bmi c9436                                                         ; 946c: 30 c8       0.
    cmp #$12                                                          ; 946e: c9 12       ..
    beq c94c6                                                         ; 9470: f0 54       .T
    cmp #$20 ; ' '                                                    ; 9472: c9 20       .
    bne c948d                                                         ; 9474: d0 17       ..
    lda l1096                                                         ; 9476: ad 96 10    ...
    ror                                                               ; 9479: 6a          j
    bcs c9444                                                         ; 947a: b0 c8       ..
    jsr generate_error                                                ; 947c: 20 48 80     H.
    !byte $bc                                                         ; 947f: bc          .
    !text "Execute only"                                              ; 9480: 45 78 65... Exe
    !byte 0                                                           ; 948c: 00          .

; $948d referenced 1 time by $9474
c948d
    cmp #$18                                                          ; 948d: c9 18       ..
    bne c94bc                                                         ; 948f: d0 2b       .+
    lda l108a                                                         ; 9491: ad 8a 10    ...
    cmp #4                                                            ; 9494: c9 04       ..
    bne c94a9                                                         ; 9496: d0 11       ..
    ldx l1096                                                         ; 9498: ae 96 10    ...
    cpx #$81                                                          ; 949b: e0 81       ..
    bne c94a9                                                         ; 949d: d0 0a       ..
    lda #$ff                                                          ; 949f: a9 ff       ..
    eor l108b                                                         ; 94a1: 4d 8b 10    M..
    sta l108b                                                         ; 94a4: 8d 8b 10    ...
    bcs c94bc                                                         ; 94a7: b0 13       ..
; $94a9 referenced 2 times by $9496, $949d
c94a9
    ldx l00ce                                                         ; 94a9: a6 ce       ..
    beq c94bc                                                         ; 94ab: f0 0f       ..
    rol                                                               ; 94ad: 2a          *
    and #$80                                                          ; 94ae: 29 80       ).
    ldx l1090                                                         ; 94b0: ae 90 10    ...
    eor l10de,x                                                       ; 94b3: 5d de 10    ]..
    sta l10de,x                                                       ; 94b6: 9d de 10    ...
    jsr sub_c9516                                                     ; 94b9: 20 16 95     ..
; $94bc referenced 3 times by $948f, $94a7, $94ab
c94bc
    dec l109e                                                         ; 94bc: ce 9e 10    ...
    bne c9450                                                         ; 94bf: d0 8f       ..
; $94c1 referenced 1 time by $9460
c94c1
    tya                                                               ; 94c1: 98          .
; $94c2 referenced 1 time by $a70f
c94c2
    cmp #$12                                                          ; 94c2: c9 12       ..
    bne c94d4                                                         ; 94c4: d0 0e       ..
; $94c6 referenced 2 times by $9470, $9523
c94c6
    jsr generate_error_precheck_disc                                  ; 94c6: 20 23 80     #.
    !byte $c9                                                         ; 94c9: c9          .
    !text "read only"                                                 ; 94ca: 72 65 61... rea
    !byte 0                                                           ; 94d3: 00          .

; $94d4 referenced 1 time by $94c4
c94d4
    pha                                                               ; 94d4: 48          H
    jsr generate_error_precheck_disc                                  ; 94d5: 20 23 80     #.
    !byte 0                                                           ; 94d8: 00          .

    nop                                                               ; 94d9: ea          .
    jsr generate_error2                                               ; 94da: 20 4f 80     O.
    !byte $c7                                                         ; 94dd: c7          .
    !text "fault "                                                    ; 94de: 66 61 75... fau

    nop                                                               ; 94e4: ea          .
    pla                                                               ; 94e5: 68          h
    jsr sub_c9526                                                     ; 94e6: 20 26 95     &.
    jsr generate_error2                                               ; 94e9: 20 4f 80     O.
    !byte 0                                                           ; 94ec: 00          .
    !text " at :"                                                     ; 94ed: 20 61 74...  at

    lda l00cd                                                         ; 94f2: a5 cd       ..
    jsr sub_c952e                                                     ; 94f4: 20 2e 95     ..
    jsr generate_error2                                               ; 94f7: 20 4f 80     O.
    !byte 0                                                           ; 94fa: 00          .
    !text " "                                                         ; 94fb: 20

    lda l00ce                                                         ; 94fc: a5 ce       ..
    bit l108a                                                         ; 94fe: 2c 8a 10    ,..
    bpl c9504                                                         ; 9501: 10 01       ..
    lsr                                                               ; 9503: 4a          J
; $9504 referenced 1 time by $9501
c9504
    jsr sub_c9526                                                     ; 9504: 20 26 95     &.
    jsr generate_error2                                               ; 9507: 20 4f 80     O.
    !byte 0                                                           ; 950a: 00          .
    !text "/"                                                         ; 950b: 2f          /

    lda l00cf                                                         ; 950c: a5 cf       ..
    jsr sub_c9526                                                     ; 950e: 20 26 95     &.
    jsr generate_error2                                               ; 9511: 20 4f 80     O.
    !byte $c7,   0                                                    ; 9514: c7 00       ..

; $9516 referenced 2 times by $9445, $94b9
sub_c9516
    lda l1096                                                         ; 9516: ad 96 10    ...
    cmp #$a0                                                          ; 9519: c9 a0       ..
    bcc c9535                                                         ; 951b: 90 18       ..
    ldx l1090                                                         ; 951d: ae 90 10    ...
    lda l10de,x                                                       ; 9520: bd de 10    ...
    bmi c94c6                                                         ; 9523: 30 a1       0.
    rts                                                               ; 9525: 60          `

; $9526 referenced 3 times by $94e6, $9504, $950e
sub_c9526
    pha                                                               ; 9526: 48          H
    jsr sub_c81bf                                                     ; 9527: 20 bf 81     ..
    jsr sub_c952e                                                     ; 952a: 20 2e 95     ..
    pla                                                               ; 952d: 68          h
; $952e referenced 2 times by $94f4, $952a
sub_c952e
    jsr sub_c80c8                                                     ; 952e: 20 c8 80     ..
    sta l0100,x                                                       ; 9531: 9d 00 01    ...
    inx                                                               ; 9534: e8          .
; $9535 referenced 1 time by $951b
c9535
    rts                                                               ; 9535: 60          `

; $9536 referenced 1 time by $940e
sub_c9536
    ldx #$0d                                                          ; 9536: a2 0d       ..
    lda #0                                                            ; 9538: a9 00       ..
; $953a referenced 1 time by $953e
loop_c953a
    sta l108f,x                                                       ; 953a: 9d 8f 10    ...
    dex                                                               ; 953d: ca          .
    bne loop_c953a                                                    ; 953e: d0 fa       ..
    lda #5                                                            ; 9540: a9 05       ..
    sta l1095                                                         ; 9542: 8d 95 10    ...
    rts                                                               ; 9545: 60          `

    !text "L.!BOOT", $0d                                              ; 9546: 4c 2e 21... L.!
    !text "E.!BOOT", $0d                                              ; 954e: 45 2e 21... E.!

; $9556 referenced 1 time by $96e9
c9556
    lda l00b3                                                         ; 9556: a5 b3       ..
    jsr print_inline_l809f_top_bit_clear                              ; 9558: 20 77 80     w.
    !text "Acorn 1770 DFS", $0d, $0d                                  ; 955b: 41 63 6f... Aco

    bcc c956f                                                         ; 956b: 90 02       ..
; $956d referenced 1 time by $96fd
c956d
    lda #$ff                                                          ; 956d: a9 ff       ..
; $956f referenced 1 time by $956b
c956f
    jsr zero_stacked_XXX                                              ; 956f: 20 8e 9d     ..
    pha                                                               ; 9572: 48          H
    lda #6                                                            ; 9573: a9 06       ..
    jsr sub_c8020                                                     ; 9575: 20 20 80      .
    lda lfe87                                                         ; 9578: ad 87 fe    ...
    ldx #$0d                                                          ; 957b: a2 0d       ..
; $957d referenced 1 time by $9584
loop_c957d
    lda l9aec,x                                                       ; 957d: bd ec 9a    ...
    sta filev,x                                                       ; 9580: 9d 12 02    ...
    dex                                                               ; 9583: ca          .
    bpl loop_c957d                                                    ; 9584: 10 f7       ..
    lda #$a8                                                          ; 9586: a9 a8       ..
    jsr osbyte_read                                                   ; 9588: 20 e5 9a     ..
    sty l00b1                                                         ; 958b: 84 b1       ..
    stx l00b0                                                         ; 958d: 86 b0       ..
    ldx #7                                                            ; 958f: a2 07       ..
    ldy #$1b                                                          ; 9591: a0 1b       ..
; $9593 referenced 1 time by $95a5
loop_c9593
    lda c9adf,y                                                       ; 9593: b9 df 9a    ...
    sta (l00b0),y                                                     ; 9596: 91 b0       ..
    iny                                                               ; 9598: c8          .
    lda c9adf,y                                                       ; 9599: b9 df 9a    ...
    sta (l00b0),y                                                     ; 959c: 91 b0       ..
    iny                                                               ; 959e: c8          .
    lda romsel_copy                                                   ; 959f: a5 f4       ..
    sta (l00b0),y                                                     ; 95a1: 91 b0       ..
    iny                                                               ; 95a3: c8          .
    dex                                                               ; 95a4: ca          .
    bne loop_c9593                                                    ; 95a5: d0 ec       ..
    sty l1082                                                         ; 95a7: 8c 82 10    ...
    sty l1083                                                         ; 95aa: 8c 83 10    ...
    stx l00cd                                                         ; 95ad: 86 cd       ..
    lda #$ff                                                          ; 95af: a9 ff       ..
    sta l1087                                                         ; 95b1: 8d 87 10    ...
    ldy #3                                                            ; 95b4: a0 03       ..
; $95b6 referenced 1 time by $95ba
loop_c95b6
    sta l108b,y                                                       ; 95b6: 99 8b 10    ...
    dey                                                               ; 95b9: 88          .
    bpl loop_c95b6                                                    ; 95ba: 10 fa       ..
    ldx #$0f                                                          ; 95bc: a2 0f       ..
    jsr c9adf                                                         ; 95be: 20 df 9a     ..
    jsr sub_c9ab8                                                     ; 95c1: 20 b8 9a     ..
    ldy #$d3                                                          ; 95c4: a0 d3       ..
    lda (l00b0),y                                                     ; 95c6: b1 b0       ..
    bpl c95fd                                                         ; 95c8: 10 33       .3
    pla                                                               ; 95ca: 68          h
    pha                                                               ; 95cb: 48          H
    beq c95fd                                                         ; 95cc: f0 2f       ./
    ldy #$d4                                                          ; 95ce: a0 d4       ..
    lda (l00b0),y                                                     ; 95d0: b1 b0       ..
    bmi c9628                                                         ; 95d2: 30 54       0T
    jsr sub_c9aa3                                                     ; 95d4: 20 a3 9a     ..
    ldy #0                                                            ; 95d7: a0 00       ..
; $95d9 referenced 1 time by $95e8
loop_c95d9
    lda (l00b0),y                                                     ; 95d9: b1 b0       ..
    cpy #$c0                                                          ; 95db: c0 c0       ..
    bcc c95e4                                                         ; 95dd: 90 05       ..
    sta l1000,y                                                       ; 95df: 99 00 10    ...
    bcs c95e7                                                         ; 95e2: b0 03       ..
; $95e4 referenced 1 time by $95dd
c95e4
    sta l1100,y                                                       ; 95e4: 99 00 11    ...
; $95e7 referenced 1 time by $95e2
c95e7
    dey                                                               ; 95e7: 88          .
    bne loop_c95d9                                                    ; 95e8: d0 ef       ..
    lda #$a0                                                          ; 95ea: a9 a0       ..
; $95ec referenced 1 time by $95f9
loop_c95ec
    tay                                                               ; 95ec: a8          .
    pha                                                               ; 95ed: 48          H
    lda #$3f ; '?'                                                    ; 95ee: a9 3f       .?
    jsr sub_c9f16                                                     ; 95f0: 20 16 9f     ..
    pla                                                               ; 95f3: 68          h
    sta l111d,y                                                       ; 95f4: 99 1d 11    ...
    sbc #$1f                                                          ; 95f7: e9 1f       ..
    bne loop_c95ec                                                    ; 95f9: d0 f1       ..
    beq c9628                                                         ; 95fb: f0 2b       .+
; $95fd referenced 2 times by $95c8, $95cc
c95fd
    jsr sub_c9aa3                                                     ; 95fd: 20 a3 9a     ..
    lda #$24 ; '$'                                                    ; 9600: a9 24       .$
    sta l10c9                                                         ; 9602: 8d c9 10    ...
    sta l10cb                                                         ; 9605: 8d cb 10    ...
    ldy #0                                                            ; 9608: a0 00       ..
    sty l10ca                                                         ; 960a: 8c ca 10    ...
    sty l10cc                                                         ; 960d: 8c cc 10    ...
    ldy #0                                                            ; 9610: a0 00       ..
    sty l10c0                                                         ; 9612: 8c c0 10    ...
    ldx #3                                                            ; 9615: a2 03       ..
    tya                                                               ; 9617: 98          .
; $9618 referenced 1 time by $961c
loop_c9618
    sta l10de,x                                                       ; 9618: 9d de 10    ...
    dex                                                               ; 961b: ca          .
    bne loop_c9618                                                    ; 961c: d0 fa       ..
    dey                                                               ; 961e: 88          .
    sty l10c7                                                         ; 961f: 8c c7 10    ...
    sty l10c6                                                         ; 9622: 8c c6 10    ...
    sty l10dd                                                         ; 9625: 8c dd 10    ...
; $9628 referenced 2 times by $95d2, $95fb
c9628
    jsr sub_c8f3f                                                     ; 9628: 20 3f 8f     ?.
    pla                                                               ; 962b: 68          h
    bne c9649                                                         ; 962c: d0 1b       ..
    lda #4                                                            ; 962e: a9 04       ..
    ora l10de                                                         ; 9630: 0d de 10    ...
    sta l10de                                                         ; 9633: 8d de 10    ...
    jsr sub_c93f5                                                     ; 9636: 20 f5 93     ..
    lda #$fb                                                          ; 9639: a9 fb       ..
    and l10de                                                         ; 963b: 2d de 10    -..
    sta l10de                                                         ; 963e: 8d de 10    ...
    lda l0f06                                                         ; 9641: ad 06 0f    ...
    jsr sub_c81bf                                                     ; 9644: 20 bf 81     ..
    bne c964a                                                         ; 9647: d0 01       ..
; $9649 referenced 1 time by $962c
c9649
    rts                                                               ; 9649: 60          `

; $964a referenced 1 time by $9647
c964a
    ldy #$95                                                          ; 964a: a0 95       ..
    ldx #$46 ; 'F'                                                    ; 964c: a2 46       .F
    cmp #2                                                            ; 964e: c9 02       ..
    bcc c965a                                                         ; 9650: 90 08       ..
    beq c9658                                                         ; 9652: f0 04       ..
    ldx #$4e ; 'N'                                                    ; 9654: a2 4e       .N
    bne c965a                                                         ; 9656: d0 02       ..
; $9658 referenced 1 time by $9652
c9658
    ldx #$50 ; 'P'                                                    ; 9658: a2 50       .P
; $965a referenced 2 times by $9650, $9656
c965a
    jmp oscli                                                         ; 965a: 4c f7 ff    L..

; $965d referenced 1 time by $b1b1
sub_c965d
    jsr service_handler_help_and_tube                                 ; 965d: 20 a9 ae     ..
    pha                                                               ; 9660: 48          H
    lda l0df0,x                                                       ; 9661: bd f0 0d    ...
    bmi pla_rts                                                       ; 9664: 30 5b       0[
    pla                                                               ; 9666: 68          h
    cmp #service_claim_absolute_workspace                             ; 9667: c9 01       ..
    bne c9683                                                         ; 9669: d0 18       ..
    jsr set_c_iff_have_fdc                                            ; 966b: 20 04 91     ..
    ldx romsel_copy                                                   ; 966e: a6 f4       ..
    bcs c967a                                                         ; 9670: b0 08       ..
    lda #$80                                                          ; 9672: a9 80       ..
    sta l0df0,x                                                       ; 9674: 9d f0 0d    ...
    lda #1                                                            ; 9677: a9 01       ..
    rts                                                               ; 9679: 60          `

; $967a referenced 1 time by $9670
c967a
    lda #service_claim_absolute_workspace                             ; 967a: a9 01       ..
    cpy #$17                                                          ; 967c: c0 17       ..
    bcs c9682                                                         ; 967e: b0 02       ..
    ldy #$17                                                          ; 9680: a0 17       ..
; $9682 referenced 1 time by $967e
c9682
    rts                                                               ; 9682: 60          `

; $9683 referenced 1 time by $9669
c9683
    cmp #service_claim_private_workspace                              ; 9683: c9 02       ..
    bne c96c3                                                         ; 9685: d0 3c       .<
    pha                                                               ; 9687: 48          H
    tya                                                               ; 9688: 98          .
    pha                                                               ; 9689: 48          H
    sta l00b1                                                         ; 968a: 85 b1       ..
    ldy l0df0,x                                                       ; 968c: bc f0 0d    ...
    sta l0df0,x                                                       ; 968f: 9d f0 0d    ...
    lda #0                                                            ; 9692: a9 00       ..
    sta l00b0                                                         ; 9694: 85 b0       ..
    cpy l00b1                                                         ; 9696: c4 b1       ..
    beq c969e                                                         ; 9698: f0 04       ..
    ldy #$d3                                                          ; 969a: a0 d3       ..
    sta (l00b0),y                                                     ; 969c: 91 b0       ..
; $969e referenced 1 time by $9698
c969e
    lda #$fd                                                          ; 969e: a9 fd       ..
    jsr osbyte_read                                                   ; 96a0: 20 e5 9a     ..
    dex                                                               ; 96a3: ca          .
    txa                                                               ; 96a4: 8a          .
    ldy #$d3                                                          ; 96a5: a0 d3       ..
    and (l00b0),y                                                     ; 96a7: 31 b0       1.
    sta (l00b0),y                                                     ; 96a9: 91 b0       ..
    php                                                               ; 96ab: 08          .
    iny                                                               ; 96ac: c8          .
    plp                                                               ; 96ad: 28          (
    bpl c96b7                                                         ; 96ae: 10 07       ..
    lda (l00b0),y                                                     ; 96b0: b1 b0       ..
    bpl c96b7                                                         ; 96b2: 10 03       ..
    jsr sub_c8951                                                     ; 96b4: 20 51 89     Q.
; $96b7 referenced 2 times by $96ae, $96b2
c96b7
    lda #0                                                            ; 96b7: a9 00       ..
    sta (l00b0),y                                                     ; 96b9: 91 b0       ..
    ldx romsel_copy                                                   ; 96bb: a6 f4       ..
    pla                                                               ; 96bd: 68          h
    tay                                                               ; 96be: a8          .
    iny                                                               ; 96bf: c8          .
    iny                                                               ; 96c0: c8          .
; $96c1 referenced 1 time by $9664
pla_rts
    pla                                                               ; 96c1: 68          h
; $96c2 referenced 1 time by $96df
loop_c96c2
    rts                                                               ; 96c2: 60          `

; $96c3 referenced 1 time by $9685
c96c3
    jsr sub_c83e3                                                     ; 96c3: 20 e3 83     ..
    cmp #service_boot                                                 ; 96c6: c9 03       ..
    bne c96ec                                                         ; 96c8: d0 22       ."
    sty l00b3                                                         ; 96ca: 84 b3       ..
    lda #0                                                            ; 96cc: a9 00       ..
    sta l10de                                                         ; 96ce: 8d de 10    ...
    lda #osbyte_scan_keyboard_from_16                                 ; 96d1: a9 7a       .z
    jsr osbyte                                                        ; 96d3: 20 f4 ff     ..            ; Keyboard scan starting from key 16
    txa                                                               ; 96d6: 8a          .              ; X is key number if key is pressed, or $ff otherwise
    bmi c96e9                                                         ; 96d7: 30 10       0.
    cmp #$32 ; '2'                                                    ; 96d9: c9 32       .2
    beq c96e4                                                         ; 96db: f0 07       ..
    cmp #$61 ; 'a'                                                    ; 96dd: c9 61       .a
    bne loop_c96c2                                                    ; 96df: d0 e1       ..
    jsr sub_cac72                                                     ; 96e1: 20 72 ac     r.
; $96e4 referenced 1 time by $96db
c96e4
    lda #osbyte_write_keys_pressed                                    ; 96e4: a9 78       .x
    jsr osbyte                                                        ; 96e6: 20 f4 ff     ..            ; Write current keys pressed (X and Y)
; $96e9 referenced 1 time by $96d7
c96e9
    jmp c9556                                                         ; 96e9: 4c 56 95    LV.

; $96ec referenced 1 time by $96c8
c96ec
    cmp #service_unrecognised_command                                 ; 96ec: c9 04       ..
    bne c96f5                                                         ; 96ee: d0 05       ..
    ldx #$9b                                                          ; 96f0: a2 9b       ..
; $96f2 referenced 1 time by $970a
loop_c96f2
    jmp c8703                                                         ; 96f2: 4c 03 87    L..

; $96f5 referenced 1 time by $96ee
c96f5
    cmp #service_select_filing_system                                 ; 96f5: c9 12       ..
    bne c9700                                                         ; 96f7: d0 07       ..
    cpy #4                                                            ; 96f9: c0 04       ..
    bne c973c                                                         ; 96fb: d0 3f       .?
    jmp c956d                                                         ; 96fd: 4c 6d 95    Lm.

; $9700 referenced 1 time by $96f7
c9700
    cmp #service_help                                                 ; 9700: c9 09       ..
    bne c9714                                                         ; 9702: d0 10       ..
    lda (os_text_ptr),y                                               ; 9704: b1 f2       ..
    ldx #$cf                                                          ; 9706: a2 cf       ..
    cmp #$0d                                                          ; 9708: c9 0d       ..
    bne loop_c96f2                                                    ; 970a: d0 e6       ..
    tya                                                               ; 970c: 98          .
    inx                                                               ; 970d: e8          .
    inx                                                               ; 970e: e8          .
    ldy #2                                                            ; 970f: a0 02       ..
    jmp ca10b                                                         ; 9711: 4c 0b a1    L..

; $9714 referenced 1 time by $9702
c9714
    jsr zero_stacked_XXX                                              ; 9714: 20 8e 9d     ..
    cmp #service_absolute_workspace_claimed                           ; 9717: c9 0a       ..
    bne c973d                                                         ; 9719: d0 22       ."
    jsr sub_c9ab8                                                     ; 971b: 20 b8 9a     ..
    ldy #$d4                                                          ; 971e: a0 d4       ..
    lda (l00b0),y                                                     ; 9720: b1 b0       ..
    bpl c9736                                                         ; 9722: 10 12       ..
    ldy #0                                                            ; 9724: a0 00       ..
    jsr sub_c9d75                                                     ; 9726: 20 75 9d     u.
    jsr sub_c8951                                                     ; 9729: 20 51 89     Q.
    jsr sub_c9ab8                                                     ; 972c: 20 b8 9a     ..
    ldy #$d4                                                          ; 972f: a0 d4       ..
    lda #0                                                            ; 9731: a9 00       ..
    sta (l00b0),y                                                     ; 9733: 91 b0       ..
    rts                                                               ; 9735: 60          `

; $9736 referenced 1 time by $9722
c9736
    lda #$0a                                                          ; 9736: a9 0a       ..
; $9738 referenced 3 times by $973f, $9743, $9747
c9738
    tsx                                                               ; 9738: ba          .
    sta l0105,x                                                       ; 9739: 9d 05 01    ...
; $973c referenced 1 time by $96fb
c973c
    rts                                                               ; 973c: 60          `

; $973d referenced 1 time by $9719
c973d
    cmp #service_unrecognised_osword                                  ; 973d: c9 08       ..
    bne c9738                                                         ; 973f: d0 f7       ..
    ldy l00ef                                                         ; 9741: a4 ef       ..
    bmi c9738                                                         ; 9743: 30 f3       0.
    cpy #$7d ; '}'                                                    ; 9745: c0 7d       .}
    bcc c9738                                                         ; 9747: 90 ef       ..
    ldx l00f0                                                         ; 9749: a6 f0       ..
    stx l00c7                                                         ; 974b: 86 c7       ..
    ldx l00f1                                                         ; 974d: a6 f1       ..
    stx l00c8                                                         ; 974f: 86 c8       ..
    iny                                                               ; 9751: c8          .
    bpl c975b                                                         ; 9752: 10 07       ..
    ldx l00c7                                                         ; 9754: a6 c7       ..
    ldy l00c8                                                         ; 9756: a4 c8       ..
    jmp c91af                                                         ; 9758: 4c af 91    L..

; $975b referenced 1 time by $9752
c975b
    jsr sub_c8b7b                                                     ; 975b: 20 7b 8b     {.
    jsr sub_c8380                                                     ; 975e: 20 80 83     ..
    iny                                                               ; 9761: c8          .
    bmi c976c                                                         ; 9762: 30 08       0.
    ldy #0                                                            ; 9764: a0 00       ..
    lda l0f04                                                         ; 9766: ad 04 0f    ...
    sta (l00c7),y                                                     ; 9769: 91 c7       ..
    rts                                                               ; 976b: 60          `

; $976c referenced 1 time by $9762
c976c
    lda #0                                                            ; 976c: a9 00       ..
    tay                                                               ; 976e: a8          .
    sta (l00c7),y                                                     ; 976f: 91 c7       ..
    iny                                                               ; 9771: c8          .
    lda l0f07                                                         ; 9772: ad 07 0f    ...
    sta (l00c7),y                                                     ; 9775: 91 c7       ..
    iny                                                               ; 9777: c8          .
    lda l0f06                                                         ; 9778: ad 06 0f    ...
    and #3                                                            ; 977b: 29 03       ).
    sta (l00c7),y                                                     ; 977d: 91 c7       ..
    iny                                                               ; 977f: c8          .
    lda #0                                                            ; 9780: a9 00       ..
    sta (l00c7),y                                                     ; 9782: 91 c7       ..
    rts                                                               ; 9784: 60          `

sub_c9785
    jsr sub_c840c                                                     ; 9785: 20 0c 84     ..
    pha                                                               ; 9788: 48          H
    jsr c99a3                                                         ; 9789: 20 a3 99     ..
    stx l00b0                                                         ; 978c: 86 b0       ..
    stx l10db                                                         ; 978e: 8e db 10    ...
    sty l00b1                                                         ; 9791: 84 b1       ..
    sty l10dc                                                         ; 9793: 8c dc 10    ...
    ldx #0                                                            ; 9796: a2 00       ..
    ldy #0                                                            ; 9798: a0 00       ..
    jsr sub_c80e3                                                     ; 979a: 20 e3 80     ..
; $979d referenced 1 time by $97a2
loop_c979d
    jsr sub_c80d3                                                     ; 979d: 20 d3 80     ..
    cpy #$12                                                          ; 97a0: c0 12       ..
    bne loop_c979d                                                    ; 97a2: d0 f9       ..
    pla                                                               ; 97a4: 68          h
    tax                                                               ; 97a5: aa          .
    inx                                                               ; 97a6: e8          .
    cpx #8                                                            ; 97a7: e0 08       ..
    bcs c97b3                                                         ; 97a9: b0 08       ..
    lda l9b29,x                                                       ; 97ab: bd 29 9b    .).
    pha                                                               ; 97ae: 48          H
    lda l9b21,x                                                       ; 97af: bd 21 9b    .!.
    pha                                                               ; 97b2: 48          H
; $97b3 referenced 2 times by $97a9, $97b8
c97b3
    lda #0                                                            ; 97b3: a9 00       ..
    rts                                                               ; 97b5: 60          `

sub_c97b6
    cmp #9                                                            ; 97b6: c9 09       ..
    bcs c97b3                                                         ; 97b8: b0 f9       ..
    stx l00b5                                                         ; 97ba: 86 b5       ..
    tax                                                               ; 97bc: aa          .
    lda l9b18,x                                                       ; 97bd: bd 18 9b    ...
    pha                                                               ; 97c0: 48          H
    lda l9b0f,x                                                       ; 97c1: bd 0f 9b    ...
    pha                                                               ; 97c4: 48          H
    txa                                                               ; 97c5: 8a          .
    ldx l00b5                                                         ; 97c6: a6 b5       ..
; $97c8 referenced 1 time by $97cb
loop_c97c8
    rts                                                               ; 97c8: 60          `

sub_c97c9
    cmp #9                                                            ; 97c9: c9 09       ..
    bcs loop_c97c8                                                    ; 97cb: b0 fb       ..
    jsr sub_c83e3                                                     ; 97cd: 20 e3 83     ..
    jsr zero_stacked_XXX                                              ; 97d0: 20 8e 9d     ..
    stx l107d                                                         ; 97d3: 8e 7d 10    .}.
    sty l107e                                                         ; 97d6: 8c 7e 10    .~.
    tay                                                               ; 97d9: a8          .
    jsr sub_c97e8                                                     ; 97da: 20 e8 97     ..
    php                                                               ; 97dd: 08          .
    bit l1081                                                         ; 97de: 2c 81 10    ,..
    bpl c97e6                                                         ; 97e1: 10 03       ..
    jsr sub_c8f7a                                                     ; 97e3: 20 7a 8f     z.
; $97e6 referenced 1 time by $97e1
c97e6
    plp                                                               ; 97e6: 28          (
    rts                                                               ; 97e7: 60          `

; $97e8 referenced 1 time by $97da
sub_c97e8
    lda l9b31,y                                                       ; 97e8: b9 31 9b    .1.
    sta l10d7                                                         ; 97eb: 8d d7 10    ...
    lda l9b3a,y                                                       ; 97ee: b9 3a 9b    .:.
    sta l10d8                                                         ; 97f1: 8d d8 10    ...
    lda l9b43,y                                                       ; 97f4: b9 43 9b    .C.
    lsr                                                               ; 97f7: 4a          J
    php                                                               ; 97f8: 08          .
    lsr                                                               ; 97f9: 4a          J
    php                                                               ; 97fa: 08          .
    sta l107f                                                         ; 97fb: 8d 7f 10    ...
    jsr sub_c995a                                                     ; 97fe: 20 5a 99     Z.
    ldy #$0c                                                          ; 9801: a0 0c       ..
; $9803 referenced 1 time by $9809
loop_c9803
    lda (l00b4),y                                                     ; 9803: b1 b4       ..
    sta l1060,y                                                       ; 9805: 99 60 10    .`.
    dey                                                               ; 9808: 88          .
    bpl loop_c9803                                                    ; 9809: 10 f8       ..
    lda l1063                                                         ; 980b: ad 63 10    .c.
    and l1064                                                         ; 980e: 2d 64 10    -d.
    ora l10d6                                                         ; 9811: 0d d6 10    ...
    clc                                                               ; 9814: 18          .
    adc #1                                                            ; 9815: 69 01       i.
    beq c981f                                                         ; 9817: f0 06       ..
    jsr sub_c8f6b                                                     ; 9819: 20 6b 8f     k.
    clc                                                               ; 981c: 18          .
    lda #$ff                                                          ; 981d: a9 ff       ..
; $981f referenced 1 time by $9817
c981f
    sta l1081                                                         ; 981f: 8d 81 10    ...
    lda l107f                                                         ; 9822: ad 7f 10    ...
    bcs c982e                                                         ; 9825: b0 07       ..
    ldx #$61 ; 'a'                                                    ; 9827: a2 61       .a
    ldy #$10                                                          ; 9829: a0 10       ..
    jsr tube_entry                                                    ; 982b: 20 06 04     ..
; $982e referenced 1 time by $9825
c982e
    plp                                                               ; 982e: 28          (
    bcs c9835                                                         ; 982f: b0 04       ..
    plp                                                               ; 9831: 28          (
; $9832 referenced 1 time by $9861
sub_c9832
    jmp (l10d7)                                                       ; 9832: 6c d7 10    l..

; $9835 referenced 1 time by $982f
c9835
    ldx #3                                                            ; 9835: a2 03       ..
; $9837 referenced 1 time by $983d
loop_c9837
    lda l1069,x                                                       ; 9837: bd 69 10    .i.
    sta l00b6,x                                                       ; 983a: 95 b6       ..
    dex                                                               ; 983c: ca          .
    bpl loop_c9837                                                    ; 983d: 10 f8       ..
    ldx #$b6                                                          ; 983f: a2 b6       ..
    ldy l1060                                                         ; 9841: ac 60 10    .`.
    lda #0                                                            ; 9844: a9 00       ..
    plp                                                               ; 9846: 28          (
    bcs c984c                                                         ; 9847: b0 03       ..
    jsr ca06c                                                         ; 9849: 20 6c a0     l.
; $984c referenced 1 time by $9847
c984c
    jsr c9dd5                                                         ; 984c: 20 d5 9d     ..
    ldx #3                                                            ; 984f: a2 03       ..
; $9851 referenced 1 time by $9857
loop_c9851
    lda l00b6,x                                                       ; 9851: b5 b6       ..
    sta l1069,x                                                       ; 9853: 9d 69 10    .i.
    dex                                                               ; 9856: ca          .
    bpl loop_c9851                                                    ; 9857: 10 f8       ..
; $9859 referenced 1 time by $989b
c9859
    jsr invert_l1065                                                  ; 9859: 20 4c 99     L.
    bmi c986b                                                         ; 985c: 30 0d       0.
; $985e referenced 1 time by $9870
loop_c985e
    ldy l1060                                                         ; 985e: ac 60 10    .`.
    jsr sub_c9832                                                     ; 9861: 20 32 98     2.
    bcs c9873                                                         ; 9864: b0 0d       ..
    ldx #9                                                            ; 9866: a2 09       ..
    jsr sub_c9940                                                     ; 9868: 20 40 99     @.
; $986b referenced 1 time by $985c
c986b
    ldx #5                                                            ; 986b: a2 05       ..
    jsr sub_c9940                                                     ; 986d: 20 40 99     @.
    bne loop_c985e                                                    ; 9870: d0 ec       ..
    clc                                                               ; 9872: 18          .
; $9873 referenced 1 time by $9864
c9873
    php                                                               ; 9873: 08          .
    jsr invert_l1065                                                  ; 9874: 20 4c 99     L.
    ldx #5                                                            ; 9877: a2 05       ..
    jsr sub_c9940                                                     ; 9879: 20 40 99     @.
    ldy #$0c                                                          ; 987c: a0 0c       ..
    jsr sub_c995a                                                     ; 987e: 20 5a 99     Z.
; $9881 referenced 1 time by $9887
loop_c9881
    lda l1060,y                                                       ; 9881: b9 60 10    .`.
    sta (l00b4),y                                                     ; 9884: 91 b4       ..
    dey                                                               ; 9886: 88          .
    bpl loop_c9881                                                    ; 9887: 10 f8       ..
    plp                                                               ; 9889: 28          (
    rts                                                               ; 988a: 60          `

    jsr sub_c8b7b                                                     ; 988b: 20 7b 8b     {.
    jsr sub_c93fd                                                     ; 988e: 20 fd 93     ..
    lda #$9d                                                          ; 9891: a9 9d       ..
    sta l10d7                                                         ; 9893: 8d d7 10    ...
    lda #$98                                                          ; 9896: a9 98       ..
    sta l10d8                                                         ; 9898: 8d d8 10    ...
    bne c9859                                                         ; 989b: d0 bc       ..
    ldy l1069                                                         ; 989d: ac 69 10    .i.
; $98a0 referenced 1 time by $98b8
loop_c98a0
    cpy l0f05                                                         ; 98a0: cc 05 0f    ...
    bcs c98cd                                                         ; 98a3: b0 28       .(
    lda l0e0f,y                                                       ; 98a5: b9 0f 0e    ...
    jsr sub_c8327                                                     ; 98a8: 20 27 83     '.
    eor l00cc                                                         ; 98ab: 45 cc       E.
    bcs c98b1                                                         ; 98ad: b0 02       ..
    and #$df                                                          ; 98af: 29 df       ).
; $98b1 referenced 1 time by $98ad
c98b1
    and #$7f                                                          ; 98b1: 29 7f       ).
    beq c98ba                                                         ; 98b3: f0 05       ..
    jsr sub_c87da                                                     ; 98b5: 20 da 87     ..
    bne loop_c98a0                                                    ; 98b8: d0 e6       ..
; $98ba referenced 1 time by $98b3
c98ba
    lda #7                                                            ; 98ba: a9 07       ..
    jsr c996e                                                         ; 98bc: 20 6e 99     n.
    sta l00b0                                                         ; 98bf: 85 b0       ..
; $98c1 referenced 1 time by $98ca
loop_c98c1
    lda l0e08,y                                                       ; 98c1: b9 08 0e    ...
    jsr c996e                                                         ; 98c4: 20 6e 99     n.
    iny                                                               ; 98c7: c8          .
    dec l00b0                                                         ; 98c8: c6 b0       ..
    bne loop_c98c1                                                    ; 98ca: d0 f5       ..
    clc                                                               ; 98cc: 18          .
; $98cd referenced 1 time by $98a3
c98cd
    sty l1069                                                         ; 98cd: 8c 69 10    .i.
    lda l0f04                                                         ; 98d0: ad 04 0f    ...
    sta l1060                                                         ; 98d3: 8d 60 10    .`.
    rts                                                               ; 98d6: 60          `

    jsr sub_c8b7b                                                     ; 98d7: 20 7b 8b     {.
    jsr sub_c93fd                                                     ; 98da: 20 fd 93     ..
    lda #$0c                                                          ; 98dd: a9 0c       ..
    jsr c996e                                                         ; 98df: 20 6e 99     n.
    ldy #0                                                            ; 98e2: a0 00       ..
; $98e4 referenced 1 time by $98f6
loop_c98e4
    cpy #8                                                            ; 98e4: c0 08       ..
    bcs c98ed                                                         ; 98e6: b0 05       ..
    lda l0e00,y                                                       ; 98e8: b9 00 0e    ...
    bcc c98f0                                                         ; 98eb: 90 03       ..
; $98ed referenced 1 time by $98e6
c98ed
    lda l0ef8,y                                                       ; 98ed: b9 f8 0e    ...
; $98f0 referenced 1 time by $98eb
c98f0
    jsr c996e                                                         ; 98f0: 20 6e 99     n.
    iny                                                               ; 98f3: c8          .
    cpy #$0c                                                          ; 98f4: c0 0c       ..
    bne loop_c98e4                                                    ; 98f6: d0 ec       ..
    lda l0f06                                                         ; 98f8: ad 06 0f    ...
    jsr sub_c81bf                                                     ; 98fb: 20 bf 81     ..
    jsr c996e                                                         ; 98fe: 20 6e 99     n.
    lda l00cd                                                         ; 9901: a5 cd       ..
    jmp c996e                                                         ; 9903: 4c 6e 99    Ln.

    jsr sub_c9965                                                     ; 9906: 20 65 99     e.
    lda l10ca                                                         ; 9909: ad ca 10    ...
    ora #$30 ; '0'                                                    ; 990c: 09 30       .0
    jsr c996e                                                         ; 990e: 20 6e 99     n.
    jsr sub_c9965                                                     ; 9911: 20 65 99     e.
    lda l10c9                                                         ; 9914: ad c9 10    ...
    bne c996e                                                         ; 9917: d0 55       .U
    jsr sub_c9965                                                     ; 9919: 20 65 99     e.
    lda l10cc                                                         ; 991c: ad cc 10    ...
    ora #$30 ; '0'                                                    ; 991f: 09 30       .0
    jsr c996e                                                         ; 9921: 20 6e 99     n.
    jsr sub_c9965                                                     ; 9924: 20 65 99     e.
    lda l10cb                                                         ; 9927: ad cb 10    ...
    bne c996e                                                         ; 992a: d0 42       .B
; $992c referenced 2 times by $9978, $9993
sub_c992c
    pha                                                               ; 992c: 48          H
    lda l1061                                                         ; 992d: ad 61 10    .a.
    sta l00b8                                                         ; 9930: 85 b8       ..
    lda l1062                                                         ; 9932: ad 62 10    .b.
    sta l00b9                                                         ; 9935: 85 b9       ..
    ldx #0                                                            ; 9937: a2 00       ..
    pla                                                               ; 9939: 68          h
    rts                                                               ; 993a: 60          `

; $993b referenced 4 times by $9976, $997d, $9990, $9998
c993b
    jsr sub_c83e3                                                     ; 993b: 20 e3 83     ..
    ldx #1                                                            ; 993e: a2 01       ..
; $9940 referenced 3 times by $9868, $986d, $9879
sub_c9940
    ldy #4                                                            ; 9940: a0 04       ..
; $9942 referenced 1 time by $9949
loop_c9942
    inc l1060,x                                                       ; 9942: fe 60 10    .`.
    bne c994b                                                         ; 9945: d0 04       ..
    inx                                                               ; 9947: e8          .
    dey                                                               ; 9948: 88          .
    bne loop_c9942                                                    ; 9949: d0 f7       ..
; $994b referenced 1 time by $9945
c994b
    rts                                                               ; 994b: 60          `

; Invert the 32-bit value at l1065
; $994c referenced 2 times by $9859, $9874
invert_l1065
    ldx #3                                                            ; 994c: a2 03       ..
; $994e referenced 1 time by $9957
loop_c994e
    lda #$ff                                                          ; 994e: a9 ff       ..
    eor l1065,x                                                       ; 9950: 5d 65 10    ]e.
    sta l1065,x                                                       ; 9953: 9d 65 10    .e.
    dex                                                               ; 9956: ca          .
    bpl loop_c994e                                                    ; 9957: 10 f5       ..
    rts                                                               ; 9959: 60          `

; $995a referenced 2 times by $97fe, $987e
sub_c995a
    lda l107d                                                         ; 995a: ad 7d 10    .}.
    sta l00b4                                                         ; 995d: 85 b4       ..
    lda l107e                                                         ; 995f: ad 7e 10    .~.
    sta l00b5                                                         ; 9962: 85 b5       ..
; $9964 referenced 1 time by $996c
loop_c9964
    rts                                                               ; 9964: 60          `

; $9965 referenced 4 times by $9906, $9911, $9919, $9924
sub_c9965
    lda #1                                                            ; 9965: a9 01       ..
    bne c996e                                                         ; 9967: d0 05       ..
    jsr sub_c9e94                                                     ; 9969: 20 94 9e     ..
    bcs loop_c9964                                                    ; 996c: b0 f6       ..
; $996e referenced 11 times by $98bc, $98c4, $98df, $98f0, $98fe, $9903, $990e, $9917, $9921, $992a, $9967
c996e
    bit l1081                                                         ; 996e: 2c 81 10    ,..
    bpl c9978                                                         ; 9971: 10 05       ..
    sta tube_host_r3_data                                             ; 9973: 8d e5 fe    ...
    bmi c993b                                                         ; 9976: 30 c3       0.
; $9978 referenced 1 time by $9971
c9978
    jsr sub_c992c                                                     ; 9978: 20 2c 99     ,.
    sta (l00b8,x)                                                     ; 997b: 81 b8       ..
    jmp c993b                                                         ; 997d: 4c 3b 99    L;.

    jsr sub_c9988                                                     ; 9980: 20 88 99     ..
    jsr sub_c9f82                                                     ; 9983: 20 82 9f     ..
    clc                                                               ; 9986: 18          .
    rts                                                               ; 9987: 60          `

; $9988 referenced 1 time by $9980
sub_c9988
    bit l1081                                                         ; 9988: 2c 81 10    ,..
    bpl c9993                                                         ; 998b: 10 06       ..
    lda tube_host_r3_data                                             ; 998d: ad e5 fe    ...
    jmp c993b                                                         ; 9990: 4c 3b 99    L;.

; $9993 referenced 1 time by $998b
c9993
    jsr sub_c992c                                                     ; 9993: 20 2c 99     ,.
    lda (l00b8,x)                                                     ; 9996: a1 b8       ..
    jmp c993b                                                         ; 9998: 4c 3b 99    L;.

    bit l10c7                                                         ; 999b: 2c c7 10    ,..
    bmi c99a3                                                         ; 999e: 30 03       0.
    dec l10c7                                                         ; 99a0: ce c7 10    ...
; $99a3 referenced 5 times by $8782, $8bac, $9789, $999e, $9c25
c99a3
    lda #$ff                                                          ; 99a3: a9 ff       ..
    sta l10ce                                                         ; 99a5: 8d ce 10    ...
; $99a8 referenced 1 time by $99b3
loop_c99a8
    sta l10cd                                                         ; 99a8: 8d cd 10    ...
    rts                                                               ; 99ab: 60          `

; $99ac referenced 6 times by $824b, $8254, $8750, $8797, $89e6, $a463
sub_c99ac
    lda #$2a ; '*'                                                    ; 99ac: a9 2a       .*
    sta l10ce                                                         ; 99ae: 8d ce 10    ...
    lda #$23 ; '#'                                                    ; 99b1: a9 23       .#
    bne loop_c99a8                                                    ; 99b3: d0 f3       ..
    jsr sub_c9a6e                                                     ; 99b5: 20 6e 9a     n.
    jsr sub_c8386                                                     ; 99b8: 20 86 83     ..
    lda #1                                                            ; 99bb: a9 01       ..
    rts                                                               ; 99bd: 60          `

    jsr sub_c9a4b                                                     ; 99be: 20 4b 9a     K.
    jsr sub_c8386                                                     ; 99c1: 20 86 83     ..
    jsr sub_c830a                                                     ; 99c4: 20 0a 83     ..
    bcc c99ed                                                         ; 99c7: 90 24       .$
    jsr sub_c9a6e                                                     ; 99c9: 20 6e 9a     n.
    jsr sub_c99f3                                                     ; 99cc: 20 f3 99     ..
    jsr sub_c9a0f                                                     ; 99cf: 20 0f 9a     ..
    bvc c99ea                                                         ; 99d2: 50 16       P.
    jsr sub_c9a6e                                                     ; 99d4: 20 6e 9a     n.
    jsr sub_c9a0f                                                     ; 99d7: 20 0f 9a     ..
    bvc c99ed                                                         ; 99da: 50 11       P.
    jsr sub_c9a6e                                                     ; 99dc: 20 6e 9a     n.
    jsr sub_c99f3                                                     ; 99df: 20 f3 99     ..
    bvc c99ed                                                         ; 99e2: 50 09       P.
    jsr sub_c9a6e                                                     ; 99e4: 20 6e 9a     n.
    jsr sub_c9a63                                                     ; 99e7: 20 63 9a     c.
; $99ea referenced 1 time by $99d2
c99ea
    jsr sub_c9a32                                                     ; 99ea: 20 32 9a     2.
; $99ed referenced 3 times by $99c7, $99da, $99e2
c99ed
    jsr c89d7                                                         ; 99ed: 20 d7 89     ..
    lda #1                                                            ; 99f0: a9 01       ..
    rts                                                               ; 99f2: 60          `

; $99f3 referenced 2 times by $99cc, $99df
sub_c99f3
    jsr sub_c83e3                                                     ; 99f3: 20 e3 83     ..
    ldy #2                                                            ; 99f6: a0 02       ..
    lda (l00b0),y                                                     ; 99f8: b1 b0       ..
    sta l0f08,x                                                       ; 99fa: 9d 08 0f    ...
    iny                                                               ; 99fd: c8          .
    lda (l00b0),y                                                     ; 99fe: b1 b0       ..
    sta l0f09,x                                                       ; 9a00: 9d 09 0f    ...
    iny                                                               ; 9a03: c8          .
    lda (l00b0),y                                                     ; 9a04: b1 b0       ..
    asl                                                               ; 9a06: 0a          .
    asl                                                               ; 9a07: 0a          .
    eor l0f0e,x                                                       ; 9a08: 5d 0e 0f    ]..
    and #$0c                                                          ; 9a0b: 29 0c       ).
    bpl c9a2a                                                         ; 9a0d: 10 1b       ..
; $9a0f referenced 2 times by $99cf, $99d7
sub_c9a0f
    jsr sub_c83e3                                                     ; 9a0f: 20 e3 83     ..
    ldy #6                                                            ; 9a12: a0 06       ..
    lda (l00b0),y                                                     ; 9a14: b1 b0       ..
    sta l0f0a,x                                                       ; 9a16: 9d 0a 0f    ...
    iny                                                               ; 9a19: c8          .
    lda (l00b0),y                                                     ; 9a1a: b1 b0       ..
    sta l0f0b,x                                                       ; 9a1c: 9d 0b 0f    ...
    iny                                                               ; 9a1f: c8          .
    lda (l00b0),y                                                     ; 9a20: b1 b0       ..
    ror                                                               ; 9a22: 6a          j
    ror                                                               ; 9a23: 6a          j
    ror                                                               ; 9a24: 6a          j
    eor l0f0e,x                                                       ; 9a25: 5d 0e 0f    ]..
    and #$c0                                                          ; 9a28: 29 c0       ).
; $9a2a referenced 1 time by $9a0d
c9a2a
    eor l0f0e,x                                                       ; 9a2a: 5d 0e 0f    ]..
    sta l0f0e,x                                                       ; 9a2d: 9d 0e 0f    ...
    clv                                                               ; 9a30: b8          .
    rts                                                               ; 9a31: 60          `

; $9a32 referenced 1 time by $99ea
sub_c9a32
    jsr sub_c83e3                                                     ; 9a32: 20 e3 83     ..
    ldy #$0e                                                          ; 9a35: a0 0e       ..
    lda (l00b0),y                                                     ; 9a37: b1 b0       ..
    and #$0a                                                          ; 9a39: 29 0a       ).
    beq c9a3f                                                         ; 9a3b: f0 02       ..
    lda #$80                                                          ; 9a3d: a9 80       ..
; $9a3f referenced 1 time by $9a3b
c9a3f
    eor l0e0f,x                                                       ; 9a3f: 5d 0f 0e    ]..
    and #$80                                                          ; 9a42: 29 80       ).
    eor l0e0f,x                                                       ; 9a44: 5d 0f 0e    ]..
    sta l0e0f,x                                                       ; 9a47: 9d 0f 0e    ...
    rts                                                               ; 9a4a: 60          `

; $9a4b referenced 1 time by $99be
sub_c9a4b
    jsr sub_c9a78                                                     ; 9a4b: 20 78 9a     x.
    bcc c9a73                                                         ; 9a4e: 90 23       .#
; $9a50 referenced 2 times by $9a60, $9c55
sub_c9a50
    lda l0e0f,y                                                       ; 9a50: b9 0f 0e    ...
    bpl c9a77                                                         ; 9a53: 10 22       ."
; $9a55 referenced 1 time by $9f6b
generate_error_precheck_locked
    jsr generate_error_precheck                                       ; 9a55: 20 38 80     8.
    !byte $c3                                                         ; 9a58: c3          .
    !text "Locked"                                                    ; 9a59: 4c 6f 63... Loc
    !byte 0                                                           ; 9a5f: 00          .

; $9a60 referenced 2 times by $830a, $8bba
sub_c9a60
    jsr sub_c9a50                                                     ; 9a60: 20 50 9a     P.
; $9a63 referenced 2 times by $8a00, $99e7
sub_c9a63
    jsr sub_c83e3                                                     ; 9a63: 20 e3 83     ..
    jsr sub_c9d1e                                                     ; 9a66: 20 1e 9d     ..
    bcc c9a8c                                                         ; 9a69: 90 21       .!
    jmp generate_error_precheck_open                                  ; 9a6b: 4c 82 9c    L..

; $9a6e referenced 5 times by $99b5, $99c9, $99d4, $99dc, $99e4
sub_c9a6e
    jsr sub_c9a78                                                     ; 9a6e: 20 78 9a     x.
    bcs c9a8c                                                         ; 9a71: b0 19       ..
; $9a73 referenced 1 time by $9a4e
c9a73
    pla                                                               ; 9a73: 68          h
    pla                                                               ; 9a74: 68          h
    lda #0                                                            ; 9a75: a9 00       ..
; $9a77 referenced 1 time by $9a53
c9a77
    rts                                                               ; 9a77: 60          `

; $9a78 referenced 2 times by $9a4b, $9a6e
sub_c9a78
    jsr sub_c80f3                                                     ; 9a78: 20 f3 80     ..
    jsr sub_c8284                                                     ; 9a7b: 20 84 82     ..
    bcc c9a8c                                                         ; 9a7e: 90 0c       ..
    tya                                                               ; 9a80: 98          .
    tax                                                               ; 9a81: aa          .
; $9a82 referenced 2 times by $881e, $885c
sub_c9a82
    lda l10db                                                         ; 9a82: ad db 10    ...
    sta l00b0                                                         ; 9a85: 85 b0       ..
    lda l10dc                                                         ; 9a87: ad dc 10    ...
    sta l00b1                                                         ; 9a8a: 85 b1       ..
; $9a8c referenced 3 times by $9a69, $9a71, $9a7e
c9a8c
    rts                                                               ; 9a8c: 60          `

; $9a8d referenced 4 times by $929d, $a267, $a34a, $a64f
sub_c9a8d
    lda #osbyte_read_oshwm                                            ; 9a8d: a9 83       ..
    jsr osbyte                                                        ; 9a8f: 20 f4 ff     ..            ; Read top of operating system RAM address (OSHWM)
    sty l10cf                                                         ; 9a92: 8c cf 10    ...            ; X and Y contain the address of OSHWM (low, high)
    lda #osbyte_read_himem                                            ; 9a95: a9 84       ..
    jsr osbyte                                                        ; 9a97: 20 f4 ff     ..            ; Read top of user memory (HIMEM)
    tya                                                               ; 9a9a: 98          .              ; X and Y contain the address of HIMEM (low, high)
    sec                                                               ; 9a9b: 38          8
    sbc l10cf                                                         ; 9a9c: ed cf 10    ...
    sta l10d0                                                         ; 9a9f: 8d d0 10    ...
    rts                                                               ; 9aa2: 60          `

; $9aa3 referenced 2 times by $95d4, $95fd
sub_c9aa3
    ldx #$0a                                                          ; 9aa3: a2 0a       ..
    jsr c9adf                                                         ; 9aa5: 20 df 9a     ..
    jsr sub_c9ab8                                                     ; 9aa8: 20 b8 9a     ..
    ldy #$d3                                                          ; 9aab: a0 d3       ..
    lda #$ff                                                          ; 9aad: a9 ff       ..
    sta (l00b0),y                                                     ; 9aaf: 91 b0       ..
    sta l10d3                                                         ; 9ab1: 8d d3 10    ...
    iny                                                               ; 9ab4: c8          .
    sta (l00b0),y                                                     ; 9ab5: 91 b0       ..
    rts                                                               ; 9ab7: 60          `

; $9ab8 referenced 5 times by $895a, $95c1, $971b, $972c, $9aa8
sub_c9ab8
    pha                                                               ; 9ab8: 48          H
    ldx romsel_copy                                                   ; 9ab9: a6 f4       ..
    lda #0                                                            ; 9abb: a9 00       ..
    sta l00b0                                                         ; 9abd: 85 b0       ..
    lda l0df0,x                                                       ; 9abf: bd f0 0d    ...
    and #$3f ; '?'                                                    ; 9ac2: 29 3f       )?
    sta l00b1                                                         ; 9ac4: 85 b1       ..
    pla                                                               ; 9ac6: 68          h
    rts                                                               ; 9ac7: 60          `

; $9ac8 referenced 2 times by $a3d4, $a3fb
sub_c9ac8
    jsr sub_c83e3                                                     ; 9ac8: 20 e3 83     ..
    lda #$0f                                                          ; 9acb: a9 0f       ..
    ldx #1                                                            ; 9acd: a2 01       ..
    ldy #0                                                            ; 9acf: a0 00       ..
    beq c9ae9                                                         ; 9ad1: f0 16       ..
; $9ad3 referenced 1 time by $80ac
sub_c9ad3
    tax                                                               ; 9ad3: aa          .
; $9ad4 referenced 1 time by $80b5
c9ad4
    lda #3                                                            ; 9ad4: a9 03       ..
    bne c9ae9                                                         ; 9ad6: d0 11       ..
; $9ad8 referenced 2 times by $9436, $abbc
sub_c9ad8
    jsr sub_c83e3                                                     ; 9ad8: 20 e3 83     ..
    lda #$7e ; '~'                                                    ; 9adb: a9 7e       .~
    bne c9ae9                                                         ; 9add: d0 0a       ..
; $9adf referenced 4 times by $9593, $9599, $95be, $9aa5
c9adf
    lda #$8f                                                          ; 9adf: a9 8f       ..
    bne c9ae9                                                         ; 9ae1: d0 06       ..
    lda #osbyte_read_write_startup_options                            ; 9ae3: a9 ff       ..
; $9ae5 referenced 8 times by $80a5, $9588, $96a0, $9e32, $9e43, $aae2, $ac7c, $aeb7
osbyte_read
    ldx #0                                                            ; 9ae5: a2 00       ..
    ldy #$ff                                                          ; 9ae7: a0 ff       ..
; $9ae9 referenced 4 times by $9ad1, $9ad6, $9add, $9ae1
c9ae9
    jmp osbyte                                                        ; 9ae9: 4c f4 ff    L..            ; Read start-up option byte

; $9aec referenced 1 time by $957d
l9aec
    !byte $1b, $ff, $1e, $ff, $21, $ff, $24, $ff, $27, $ff, $2a, $ff  ; 9aec: 1b ff 1e... ...
    !byte $2d, $ff                                                    ; 9af8: 2d ff       -.
    !word sub_c9785                                                   ; 9afa: 85 97       ..
    !byte 0                                                           ; 9afc: 00          .
    !word sub_c9d9b                                                   ; 9afd: 9b 9d       ..
    !byte 0                                                           ; 9aff: 00          .
    !word sub_c9e94                                                   ; 9b00: 94 9e       ..
    !byte 0                                                           ; 9b02: 00          .
    !word sub_c9f82                                                   ; 9b03: 82 9f       ..
    !byte 0                                                           ; 9b05: 00          .
    !word sub_c97c9                                                   ; 9b06: c9 97       ..
    !byte 0                                                           ; 9b08: 00          .
    !word sub_c9c0c                                                   ; 9b09: 0c 9c       ..
    !byte 0                                                           ; 9b0b: 00          .
    !word sub_c97b6                                                   ; 9b0c: b6 97       ..
    !byte 0                                                           ; 9b0e: 00          .
; $9b0f referenced 1 time by $97c1
l9b0f
    !text "1", $5c, "o"                                               ; 9b0f: 31 5c 6f    1\o
    !byte $fd, $6f, $82, $50, $4b, $9a                                ; 9b12: fd 6f 82... .o.
; $9b18 referenced 1 time by $97bd
l9b18
    !byte $8a, $9e, $88, $86, $88, $84, $9b, $9b, $99                 ; 9b18: 8a 9e 88... ...
; $9b21 referenced 1 time by $97af
l9b21
    !byte $1a, $58, $c8, $db, $d3, $e3, $b4, $bd                      ; 9b21: 1a 58 c8... .X.
; $9b29 referenced 1 time by $97ab
l9b29
    !byte $88, $88, $99, $99, $99, $99, $99, $99                      ; 9b29: 88 88 99... ...
; $9b31 referenced 1 time by $97e8
l9b31
    !byte $1b, $80, $80, $69, $69, $d7,   6, $19, $8b                 ; 9b31: 1b 80 80... ...
; $9b3a referenced 1 time by $97ee
l9b3a
    !byte $86, $99, $99, $99, $99, $98, $99, $99, $98                 ; 9b3a: 86 99 99... ...
; $9b43 referenced 1 time by $97f4
l9b43
    !byte   4,   2,   3,   6,   7,   4,   4,   4,   4, $a2, $11, $a0  ; 9b43: 04 02 03... ...
    !byte $15                                                         ; 9b4f: 15          .

; $9b50 referenced 1 time by $9b66
loop_c9b50
    rts                                                               ; 9b50: 60          `

; $9b51 referenced 1 time by $9b5e
sub_c9b51
    jsr sub_c83e3                                                     ; 9b51: 20 e3 83     ..
    lda #osbyte_close_spool_exec                                      ; 9b54: a9 77       .w
    jmp osbyte                                                        ; 9b56: 4c f4 ff    L..            ; Close any *SPOOL and *EXEC files

sub_c9b59
    lda #$20 ; ' '                                                    ; 9b59: a9 20       .
    sta l1086                                                         ; 9b5b: 8d 86 10    ...
; $9b5e referenced 1 time by $9b74
loop_c9b5e
    jsr sub_c9b51                                                     ; 9b5e: 20 51 9b     Q.
; $9b61 referenced 1 time by $9d81
sub_c9b61
    lda #0                                                            ; 9b61: a9 00       ..
; $9b63 referenced 1 time by $9b6c
loop_c9b63
    clc                                                               ; 9b63: 18          .
    adc #$20 ; ' '                                                    ; 9b64: 69 20       i
    beq loop_c9b50                                                    ; 9b66: f0 e8       ..
    tay                                                               ; 9b68: a8          .
    jsr sub_c9b79                                                     ; 9b69: 20 79 9b     y.
    bne loop_c9b63                                                    ; 9b6c: d0 f5       ..
; $9b6e referenced 2 times by $9c13, $9d86
c9b6e
    lda #$20 ; ' '                                                    ; 9b6e: a9 20       .
    sta l1086                                                         ; 9b70: 8d 86 10    ...
    tya                                                               ; 9b73: 98          .
    beq loop_c9b5e                                                    ; 9b74: f0 e8       ..
    jsr sub_c9e75                                                     ; 9b76: 20 75 9e     u.
; $9b79 referenced 2 times by $9b69, $a264
sub_c9b79
    pha                                                               ; 9b79: 48          H
    jsr sub_c9df4                                                     ; 9b7a: 20 f4 9d     ..
    bcs c9bc5                                                         ; 9b7d: b0 46       .F
    lda l111b,y                                                       ; 9b7f: b9 1b 11    ...
    eor #$ff                                                          ; 9b82: 49 ff       I.
    and l10c0                                                         ; 9b84: 2d c0 10    -..
    sta l10c0                                                         ; 9b87: 8d c0 10    ...
    lda l1117,y                                                       ; 9b8a: b9 17 11    ...
    and #$60 ; '`'                                                    ; 9b8d: 29 60       )`
    beq c9bc5                                                         ; 9b8f: f0 34       .4
    jsr sub_c9bca                                                     ; 9b91: 20 ca 9b     ..
    lda l1117,y                                                       ; 9b94: b9 17 11    ...
    and l1086                                                         ; 9b97: 2d 86 10    -..
    beq c9bc2                                                         ; 9b9a: f0 26       .&
    ldx l10c3                                                         ; 9b9c: ae c3 10    ...
    lda l1114,y                                                       ; 9b9f: b9 14 11    ...
    sta l0f0c,x                                                       ; 9ba2: 9d 0c 0f    ...
    lda l1115,y                                                       ; 9ba5: b9 15 11    ...
    sta l0f0d,x                                                       ; 9ba8: 9d 0d 0f    ...
    lda l1116,y                                                       ; 9bab: b9 16 11    ...
    jsr sub_c81c5                                                     ; 9bae: 20 c5 81     ..
    eor l0f0e,x                                                       ; 9bb1: 5d 0e 0f    ]..
    and #$30 ; '0'                                                    ; 9bb4: 29 30       )0
    eor l0f0e,x                                                       ; 9bb6: 5d 0e 0f    ]..
    sta l0f0e,x                                                       ; 9bb9: 9d 0e 0f    ...
    jsr c93e6                                                         ; 9bbc: 20 e6 93     ..
    ldy l10c2                                                         ; 9bbf: ac c2 10    ...
; $9bc2 referenced 1 time by $9b9a
c9bc2
    jsr sub_c9f1e                                                     ; 9bc2: 20 1e 9f     ..
; $9bc5 referenced 2 times by $9b7d, $9b8f
c9bc5
    ldx l10c5                                                         ; 9bc5: ae c5 10    ...
    pla                                                               ; 9bc8: 68          h
    rts                                                               ; 9bc9: 60          `

; $9bca referenced 1 time by $9b91
sub_c9bca
    jsr sub_c9be5                                                     ; 9bca: 20 e5 9b     ..
; $9bcd referenced 1 time by $9f9f
sub_c9bcd
    ldx #6                                                            ; 9bcd: a2 06       ..
; $9bcf referenced 1 time by $9bd7
loop_c9bcf
    lda l110c,y                                                       ; 9bcf: b9 0c 11    ...
    sta l00c5,x                                                       ; 9bd2: 95 c5       ..
    dey                                                               ; 9bd4: 88          .
    dey                                                               ; 9bd5: 88          .
    dex                                                               ; 9bd6: ca          .
    bpl loop_c9bcf                                                    ; 9bd7: 10 f6       ..
    jsr sub_c826d                                                     ; 9bd9: 20 6d 82     m.
    bcc generate_error_precheck_disc_changed                          ; 9bdc: 90 22       ."
    sty l10c3                                                         ; 9bde: 8c c3 10    ...
    ldy l10c2                                                         ; 9be1: ac c2 10    ...
; $9be4 referenced 1 time by $9bfe
loop_c9be4
    rts                                                               ; 9be4: 60          `

; $9be5 referenced 3 times by $9bca, $9eb8, $9f93
sub_c9be5
    lda l110e,y                                                       ; 9be5: b9 0e 11    ...
    and #$7f                                                          ; 9be8: 29 7f       ).
    sta l00cc                                                         ; 9bea: 85 cc       ..
    lda l1117,y                                                       ; 9bec: b9 17 11    ...
    jmp c8816                                                         ; 9bef: 4c 16 88    L..

; $9bf2 referenced 2 times by $8768, $87b8
sub_c9bf2
    jsr sub_c83e3                                                     ; 9bf2: 20 e3 83     ..
    lda l0f04                                                         ; 9bf5: ad 04 0f    ...
    jsr sub_c8380                                                     ; 9bf8: 20 80 83     ..
    cmp l0f04                                                         ; 9bfb: cd 04 0f    ...
    beq loop_c9be4                                                    ; 9bfe: f0 e4       ..
; $9c00 referenced 1 time by $9bdc
generate_error_precheck_disc_changed
    jsr generate_error_precheck_disc                                  ; 9c00: 20 23 80     #.
    !byte $c8                                                         ; 9c03: c8          .
    !text "changed"                                                   ; 9c04: 63 68 61... cha
    !byte 0                                                           ; 9c0b: 00          .

sub_c9c0c
    and #$c0                                                          ; 9c0c: 29 c0       ).
    bne c9c16                                                         ; 9c0e: d0 06       ..
    jsr sub_c83e3                                                     ; 9c10: 20 e3 83     ..
    jmp c9b6e                                                         ; 9c13: 4c 6e 9b    Ln.

; $9c16 referenced 1 time by $9c0e
c9c16
    jsr sub_c840c                                                     ; 9c16: 20 0c 84     ..
    stx l00ba                                                         ; 9c19: 86 ba       ..
    sty l00bb                                                         ; 9c1b: 84 bb       ..
    sta l00b4                                                         ; 9c1d: 85 b4       ..
    bit l00b4                                                         ; 9c1f: 24 b4       $.
    php                                                               ; 9c21: 08          .
    jsr sub_c80f3                                                     ; 9c22: 20 f3 80     ..
    jsr c99a3                                                         ; 9c25: 20 a3 99     ..
    jsr sub_c8284                                                     ; 9c28: 20 84 82     ..
    bcs c9c51                                                         ; 9c2b: b0 24       .$
    plp                                                               ; 9c2d: 28          (
    bvc c9c33                                                         ; 9c2e: 50 03       P.
    lda #0                                                            ; 9c30: a9 00       ..
    rts                                                               ; 9c32: 60          `

; $9c33 referenced 1 time by $9c2e
c9c33
    php                                                               ; 9c33: 08          .
    lda #0                                                            ; 9c34: a9 00       ..
    ldx #7                                                            ; 9c36: a2 07       ..
; $9c38 referenced 1 time by $9c3e
loop_c9c38
    sta l00bc,x                                                       ; 9c38: 95 bc       ..
    sta l1074,x                                                       ; 9c3a: 9d 74 10    .t.
    dex                                                               ; 9c3d: ca          .
    bpl loop_c9c38                                                    ; 9c3e: 10 f8       ..
    dec l00be                                                         ; 9c40: c6 be       ..
    dec l00bf                                                         ; 9c42: c6 bf       ..
    dec l1076                                                         ; 9c44: ce 76 10    .v.
    dec l1077                                                         ; 9c47: ce 77 10    .w.
    lda #$40 ; '@'                                                    ; 9c4a: a9 40       .@
    sta l00c3                                                         ; 9c4c: 85 c3       ..
    jsr sub_c8a77                                                     ; 9c4e: 20 77 8a     w.
; $9c51 referenced 1 time by $9c2b
c9c51
    plp                                                               ; 9c51: 28          (
    php                                                               ; 9c52: 08          .
    bvs c9c58                                                         ; 9c53: 70 03       p.
    jsr sub_c9a50                                                     ; 9c55: 20 50 9a     P.
; $9c58 referenced 1 time by $9c53
c9c58
    jsr sub_c9d1e                                                     ; 9c58: 20 1e 9d     ..
    bcc c9c6b                                                         ; 9c5b: 90 0e       ..
; $9c5d referenced 1 time by $9c69
loop_c9c5d
    lda l110c,y                                                       ; 9c5d: b9 0c 11    ...
    bpl generate_error_precheck_open                                  ; 9c60: 10 20       .
    plp                                                               ; 9c62: 28          (
    php                                                               ; 9c63: 08          .
    bmi generate_error_precheck_open                                  ; 9c64: 30 1c       0.
    jsr sub_c9d19                                                     ; 9c66: 20 19 9d     ..
    bcs loop_c9c5d                                                    ; 9c69: b0 f2       ..
; $9c6b referenced 1 time by $9c5b
c9c6b
    ldy l10c2                                                         ; 9c6b: ac c2 10    ...
    bne c9c8b                                                         ; 9c6e: d0 1b       ..
    jsr generate_error_precheck                                       ; 9c70: 20 38 80     8.
    !byte $c0                                                         ; 9c73: c0          .
    !text "Too many open"                                             ; 9c74: 54 6f 6f... Too
    !byte 0                                                           ; 9c81: 00          .

; $9c82 referenced 3 times by $9a6b, $9c60, $9c64
generate_error_precheck_open
    jsr generate_error_precheck                                       ; 9c82: 20 38 80     8.
    !byte $c2                                                         ; 9c85: c2          .
    !text "Open"                                                      ; 9c86: 4f 70 65... Ope
    !byte 0                                                           ; 9c8a: 00          .

; $9c8b referenced 1 time by $9c6e
c9c8b
    lda #8                                                            ; 9c8b: a9 08       ..
    sta l10c4                                                         ; 9c8d: 8d c4 10    ...
; $9c90 referenced 1 time by $9ca2
loop_c9c90
    lda l0e08,x                                                       ; 9c90: bd 08 0e    ...
    sta l1100,y                                                       ; 9c93: 99 00 11    ...
    iny                                                               ; 9c96: c8          .
    lda l0f08,x                                                       ; 9c97: bd 08 0f    ...
    sta l1100,y                                                       ; 9c9a: 99 00 11    ...
    iny                                                               ; 9c9d: c8          .
    inx                                                               ; 9c9e: e8          .
    dec l10c4                                                         ; 9c9f: ce c4 10    ...
    bne loop_c9c90                                                    ; 9ca2: d0 ec       ..
    ldx #$10                                                          ; 9ca4: a2 10       ..
    lda #0                                                            ; 9ca6: a9 00       ..
; $9ca8 referenced 1 time by $9cad
loop_c9ca8
    sta l1100,y                                                       ; 9ca8: 99 00 11    ...
    iny                                                               ; 9cab: c8          .
    dex                                                               ; 9cac: ca          .
    bne loop_c9ca8                                                    ; 9cad: d0 f9       ..
    lda l10c2                                                         ; 9caf: ad c2 10    ...
    tay                                                               ; 9cb2: a8          .
    jsr sub_c81be                                                     ; 9cb3: 20 be 81     ..
    adc #$11                                                          ; 9cb6: 69 11       i.
    sta l1113,y                                                       ; 9cb8: 99 13 11    ...
    lda l10c1                                                         ; 9cbb: ad c1 10    ...
    sta l111b,y                                                       ; 9cbe: 99 1b 11    ...
    ora l10c0                                                         ; 9cc1: 0d c0 10    ...
    sta l10c0                                                         ; 9cc4: 8d c0 10    ...
    lda l1109,y                                                       ; 9cc7: b9 09 11    ...
    adc #$ff                                                          ; 9cca: 69 ff       i.
    lda l110b,y                                                       ; 9ccc: b9 0b 11    ...
    adc #0                                                            ; 9ccf: 69 00       i.
    sta l1119,y                                                       ; 9cd1: 99 19 11    ...
    lda l110d,y                                                       ; 9cd4: b9 0d 11    ...
    ora #$0f                                                          ; 9cd7: 09 0f       ..
    adc #0                                                            ; 9cd9: 69 00       i.
    jsr sub_c81b0                                                     ; 9cdb: 20 b0 81     ..
    sta l111a,y                                                       ; 9cde: 99 1a 11    ...
    plp                                                               ; 9ce1: 28          (
    bvc c9d12                                                         ; 9ce2: 50 2e       P.
    bmi c9cee                                                         ; 9ce4: 30 08       0.
    lda #$80                                                          ; 9ce6: a9 80       ..
    ora l110c,y                                                       ; 9ce8: 19 0c 11    ...
    sta l110c,y                                                       ; 9ceb: 99 0c 11    ...
; $9cee referenced 1 time by $9ce4
c9cee
    lda l1109,y                                                       ; 9cee: b9 09 11    ...
    sta l1114,y                                                       ; 9cf1: 99 14 11    ...
    lda l110b,y                                                       ; 9cf4: b9 0b 11    ...
    sta l1115,y                                                       ; 9cf7: 99 15 11    ...
    lda l110d,y                                                       ; 9cfa: b9 0d 11    ...
    jsr sub_c81b0                                                     ; 9cfd: 20 b0 81     ..
    sta l1116,y                                                       ; 9d00: 99 16 11    ...
; $9d03 referenced 1 time by $9d17
loop_c9d03
    lda l00cd                                                         ; 9d03: a5 cd       ..
    ora l1117,y                                                       ; 9d05: 19 17 11    ...
    sta l1117,y                                                       ; 9d08: 99 17 11    ...
    tya                                                               ; 9d0b: 98          .
    jsr sub_c81be                                                     ; 9d0c: 20 be 81     ..
    ora #$10                                                          ; 9d0f: 09 10       ..
    rts                                                               ; 9d11: 60          `

; $9d12 referenced 1 time by $9ce2
c9d12
    lda #$20 ; ' '                                                    ; 9d12: a9 20       .
    sta l1117,y                                                       ; 9d14: 99 17 11    ...
    bne loop_c9d03                                                    ; 9d17: d0 ea       ..
; $9d19 referenced 1 time by $9c66
sub_c9d19
    txa                                                               ; 9d19: 8a          .
    pha                                                               ; 9d1a: 48          H
    jmp c9d5d                                                         ; 9d1b: 4c 5d 9d    L].

; $9d1e referenced 2 times by $9a66, $9c58
sub_c9d1e
    lda #0                                                            ; 9d1e: a9 00       ..
    sta l10c2                                                         ; 9d20: 8d c2 10    ...
    lda #8                                                            ; 9d23: a9 08       ..
    sta l00b5                                                         ; 9d25: 85 b5       ..
    tya                                                               ; 9d27: 98          .
    tax                                                               ; 9d28: aa          .
    ldy #$a0                                                          ; 9d29: a0 a0       ..
; $9d2b referenced 1 time by $9d6f
c9d2b
    sty l00b3                                                         ; 9d2b: 84 b3       ..
    txa                                                               ; 9d2d: 8a          .
    pha                                                               ; 9d2e: 48          H
    lda #8                                                            ; 9d2f: a9 08       ..
    sta l00b2                                                         ; 9d31: 85 b2       ..
    lda l00b5                                                         ; 9d33: a5 b5       ..
    bit l10c0                                                         ; 9d35: 2c c0 10    ,..
    beq c9d57                                                         ; 9d38: f0 1d       ..
    lda l1117,y                                                       ; 9d3a: b9 17 11    ...
    eor l00cd                                                         ; 9d3d: 45 cd       E.
    and #3                                                            ; 9d3f: 29 03       ).
    bne c9d5d                                                         ; 9d41: d0 1a       ..
; $9d43 referenced 1 time by $9d52
loop_c9d43
    lda l0e08,x                                                       ; 9d43: bd 08 0e    ...
    eor l1100,y                                                       ; 9d46: 59 00 11    Y..
    and #$7f                                                          ; 9d49: 29 7f       ).
    bne c9d5d                                                         ; 9d4b: d0 10       ..
    inx                                                               ; 9d4d: e8          .
    iny                                                               ; 9d4e: c8          .
    iny                                                               ; 9d4f: c8          .
    dec l00b2                                                         ; 9d50: c6 b2       ..
    bne loop_c9d43                                                    ; 9d52: d0 ef       ..
    sec                                                               ; 9d54: 38          8
    bcs c9d67                                                         ; 9d55: b0 10       ..
; $9d57 referenced 1 time by $9d38
c9d57
    sty l10c2                                                         ; 9d57: 8c c2 10    ...
    sta l10c1                                                         ; 9d5a: 8d c1 10    ...
; $9d5d referenced 3 times by $9d1b, $9d41, $9d4b
c9d5d
    sec                                                               ; 9d5d: 38          8
    lda l00b3                                                         ; 9d5e: a5 b3       ..
    sbc #$20 ; ' '                                                    ; 9d60: e9 20       .
    sta l00b3                                                         ; 9d62: 85 b3       ..
    asl l00b5                                                         ; 9d64: 06 b5       ..
    clc                                                               ; 9d66: 18          .
; $9d67 referenced 1 time by $9d55
c9d67
    pla                                                               ; 9d67: 68          h
    tax                                                               ; 9d68: aa          .
    ldy l00b3                                                         ; 9d69: a4 b3       ..
    lda l00b5                                                         ; 9d6b: a5 b5       ..
    bcs c9d71                                                         ; 9d6d: b0 02       ..
    bne c9d2b                                                         ; 9d6f: d0 ba       ..
; $9d71 referenced 1 time by $9d6d
c9d71
    rts                                                               ; 9d71: 60          `

; $9d72 referenced 1 time by $9da0
c9d72
    jsr zero_stacked_XXX                                              ; 9d72: 20 8e 9d     ..
; $9d75 referenced 1 time by $9726
sub_c9d75
    lda l10c0                                                         ; 9d75: ad c0 10    ...
    pha                                                               ; 9d78: 48          H
    lda #0                                                            ; 9d79: a9 00       ..
    sta l1086                                                         ; 9d7b: 8d 86 10    ...
    tya                                                               ; 9d7e: 98          .
    bne c9d86                                                         ; 9d7f: d0 05       ..
    jsr sub_c9b61                                                     ; 9d81: 20 61 9b     a.
    beq c9d89                                                         ; 9d84: f0 03       ..
; $9d86 referenced 1 time by $9d7f
c9d86
    jsr c9b6e                                                         ; 9d86: 20 6e 9b     n.
; $9d89 referenced 1 time by $9d84
c9d89
    pla                                                               ; 9d89: 68          h
    sta l10c0                                                         ; 9d8a: 8d c0 10    ...
    rts                                                               ; 9d8d: 60          `

; $9d8e referenced 6 times by $956f, $9714, $97d0, $9d72, $9daa, $9db8
zero_stacked_XXX
    pha                                                               ; 9d8e: 48          H
    txa                                                               ; 9d8f: 8a          .
    pha                                                               ; 9d90: 48          H
    lda #0                                                            ; 9d91: a9 00       ..
    tsx                                                               ; 9d93: ba          .
    sta l0109,x                                                       ; 9d94: 9d 09 01    ...
    pla                                                               ; 9d97: 68          h
    tax                                                               ; 9d98: aa          .
    pla                                                               ; 9d99: 68          h
    rts                                                               ; 9d9a: 60          `

sub_c9d9b
    jsr sub_c83e3                                                     ; 9d9b: 20 e3 83     ..
    cmp #$ff                                                          ; 9d9e: c9 ff       ..
    beq c9d72                                                         ; 9da0: f0 d0       ..
    cpy #0                                                            ; 9da2: c0 00       ..
    beq c9db4                                                         ; 9da4: f0 0e       ..
    cmp #3                                                            ; 9da6: c9 03       ..
    bcs c9dcd                                                         ; 9da8: b0 23       .#
    jsr zero_stacked_XXX                                              ; 9daa: 20 8e 9d     ..
    cmp #1                                                            ; 9dad: c9 01       ..
    bne c9dd5                                                         ; 9daf: d0 24       .$
    jmp ca06c                                                         ; 9db1: 4c 6c a0    Ll.

; $9db4 referenced 1 time by $9da4
c9db4
    cmp #2                                                            ; 9db4: c9 02       ..
    bcs c9dcd                                                         ; 9db6: b0 15       ..
    jsr zero_stacked_XXX                                              ; 9db8: 20 8e 9d     ..
    beq c9dce                                                         ; 9dbb: f0 11       ..
    lda #$ff                                                          ; 9dbd: a9 ff       ..
    sta l0002,x                                                       ; 9dbf: 95 02       ..
    sta l0003,x                                                       ; 9dc1: 95 03       ..
    lda l10d9                                                         ; 9dc3: ad d9 10    ...
    sta l0000,x                                                       ; 9dc6: 95 00       ..
    lda l10da                                                         ; 9dc8: ad da 10    ...
    sta l0001,x                                                       ; 9dcb: 95 01       ..
; $9dcd referenced 2 times by $9da8, $9db6
c9dcd
    rts                                                               ; 9dcd: 60          `

; $9dce referenced 1 time by $9dbb
c9dce
    lda #4                                                            ; 9dce: a9 04       ..
    tsx                                                               ; 9dd0: ba          .
    sta l0105,x                                                       ; 9dd1: 9d 05 01    ...
    rts                                                               ; 9dd4: 60          `

; $9dd5 referenced 2 times by $984c, $9daf
c9dd5
    jsr sub_c9e75                                                     ; 9dd5: 20 75 9e     u.
    sty l10c2                                                         ; 9dd8: 8c c2 10    ...
    asl                                                               ; 9ddb: 0a          .
    adc l10c2                                                         ; 9ddc: 6d c2 10    m..
    tay                                                               ; 9ddf: a8          .
    lda l1110,y                                                       ; 9de0: b9 10 11    ...
    sta l0000,x                                                       ; 9de3: 95 00       ..
    lda l1111,y                                                       ; 9de5: b9 11 11    ...
    sta l0001,x                                                       ; 9de8: 95 01       ..
    lda l1112,y                                                       ; 9dea: b9 12 11    ...
    sta l0002,x                                                       ; 9ded: 95 02       ..
    lda #0                                                            ; 9def: a9 00       ..
    sta l0003,x                                                       ; 9df1: 95 03       ..
    rts                                                               ; 9df3: 60          `

; $9df4 referenced 2 times by $9b7a, $9e78
sub_c9df4
    pha                                                               ; 9df4: 48          H
    stx l10c5                                                         ; 9df5: 8e c5 10    ...
    tya                                                               ; 9df8: 98          .
    and #$e0                                                          ; 9df9: 29 e0       ).
    sta l10c2                                                         ; 9dfb: 8d c2 10    ...
    beq c9e13                                                         ; 9dfe: f0 13       ..
    jsr sub_c81be                                                     ; 9e00: 20 be 81     ..
    tay                                                               ; 9e03: a8          .
    lda #0                                                            ; 9e04: a9 00       ..
    sec                                                               ; 9e06: 38          8
; $9e07 referenced 1 time by $9e09
loop_c9e07
    ror                                                               ; 9e07: 6a          j
    dey                                                               ; 9e08: 88          .
    bne loop_c9e07                                                    ; 9e09: d0 fc       ..
    ldy l10c2                                                         ; 9e0b: ac c2 10    ...
    bit l10c0                                                         ; 9e0e: 2c c0 10    ,..
    bne c9e16                                                         ; 9e11: d0 03       ..
; $9e13 referenced 1 time by $9dfe
c9e13
    pla                                                               ; 9e13: 68          h
    sec                                                               ; 9e14: 38          8
    rts                                                               ; 9e15: 60          `

; $9e16 referenced 1 time by $9e11
c9e16
    pla                                                               ; 9e16: 68          h
    clc                                                               ; 9e17: 18          .
    rts                                                               ; 9e18: 60          `

    !byte $48, $8a, $4c, $20, $9e                                     ; 9e19: 48 8a 4c... H.L

; $9e1e referenced 2 times by $9e56, $9e75
sub_c9e1e
    pha                                                               ; 9e1e: 48          H
    tya                                                               ; 9e1f: 98          .
    cmp #$10                                                          ; 9e20: c9 10       ..
    bcc c9e28                                                         ; 9e22: 90 04       ..
    cmp #$18                                                          ; 9e24: c9 18       ..
    bcc c9e2a                                                         ; 9e26: 90 02       ..
; $9e28 referenced 1 time by $9e22
c9e28
    lda #8                                                            ; 9e28: a9 08       ..
; $9e2a referenced 1 time by $9e26
c9e2a
    jsr sub_c81c4                                                     ; 9e2a: 20 c4 81     ..
    tay                                                               ; 9e2d: a8          .
    pla                                                               ; 9e2e: 68          h
    rts                                                               ; 9e2f: 60          `

; $9e30 referenced 3 times by $803d, $9e7d, $9fc5
sub_c9e30
    lda #osbyte_rw_exec_handle                                        ; 9e30: a9 c6       ..
    jsr osbyte_read                                                   ; 9e32: 20 e5 9a     ..
    txa                                                               ; 9e35: 8a          .
    beq c9e41                                                         ; 9e36: f0 09       ..
    jsr sub_c9e54                                                     ; 9e38: 20 54 9e     T.
    bne c9e41                                                         ; 9e3b: d0 04       ..
    lda #osbyte_rw_exec_handle                                        ; 9e3d: a9 c6       ..
    bne osbyte_write_0                                                ; 9e3f: d0 0c       ..
; $9e41 referenced 2 times by $9e36, $9e3b
c9e41
    lda #osbyte_read_write_spool_file_handle                          ; 9e41: a9 c7       ..
    jsr osbyte_read                                                   ; 9e43: 20 e5 9a     ..
    jsr sub_c9e54                                                     ; 9e46: 20 54 9e     T.
    bne c9e5c                                                         ; 9e49: d0 11       ..
    lda #osbyte_read_write_spool_file_handle                          ; 9e4b: a9 c7       ..
; $9e4d referenced 1 time by $9e3f
osbyte_write_0
    ldx #0                                                            ; 9e4d: a2 00       ..             ; X=File handle
    ldy #0                                                            ; 9e4f: a0 00       ..
    jmp osbyte                                                        ; 9e51: 4c f4 ff    L..            ; Write *SPOOL file handle, value X=0

; $9e54 referenced 2 times by $9e38, $9e46
sub_c9e54
    txa                                                               ; 9e54: 8a          .
    tay                                                               ; 9e55: a8          .
    jsr sub_c9e1e                                                     ; 9e56: 20 1e 9e     ..
    cpy l10c2                                                         ; 9e59: cc c2 10    ...
; $9e5c referenced 1 time by $9e49
c9e5c
    rts                                                               ; 9e5c: 60          `

    pha                                                               ; 9e5d: 48          H
    tya                                                               ; 9e5e: 98          .
    pha                                                               ; 9e5f: 48          H
    txa                                                               ; 9e60: 8a          .
    tay                                                               ; 9e61: a8          .
    jsr sub_c9e75                                                     ; 9e62: 20 75 9e     u.
    tya                                                               ; 9e65: 98          .
    jsr sub_ca0de                                                     ; 9e66: 20 de a0     ..
    bne c9e6f                                                         ; 9e69: d0 04       ..
    ldx #$ff                                                          ; 9e6b: a2 ff       ..
    bne c9e71                                                         ; 9e6d: d0 02       ..
; $9e6f referenced 1 time by $9e69
c9e6f
    ldx #0                                                            ; 9e6f: a2 00       ..
; $9e71 referenced 1 time by $9e6d
c9e71
    pla                                                               ; 9e71: 68          h
    tay                                                               ; 9e72: a8          .
    pla                                                               ; 9e73: 68          h
; $9e74 referenced 1 time by $9e7b
loop_c9e74
    rts                                                               ; 9e74: 60          `

; $9e75 referenced 6 times by $9b76, $9dd5, $9e62, $9e97, $9f85, $a06f
sub_c9e75
    jsr sub_c9e1e                                                     ; 9e75: 20 1e 9e     ..
    jsr sub_c9df4                                                     ; 9e78: 20 f4 9d     ..
    bcc loop_c9e74                                                    ; 9e7b: 90 f7       ..
    jsr sub_c9e30                                                     ; 9e7d: 20 30 9e     0.
    jsr generate_error_precheck                                       ; 9e80: 20 38 80     8.
    !byte $de                                                         ; 9e83: de          .
    !text "Channel"                                                   ; 9e84: 43 68 61... Cha
    !byte 0                                                           ; 9e8b: 00          .

; $9e8c referenced 1 time by $9ea5
loop_c9e8c
    jsr generate_error_precheck                                       ; 9e8c: 20 38 80     8.
    !byte $df                                                         ; 9e8f: df          .
    !text "EOF"                                                       ; 9e90: 45 4f 46    EOF
    !byte 0                                                           ; 9e93: 00          .

; $9e94 referenced 1 time by $9969
sub_c9e94
    jsr sub_c840c                                                     ; 9e94: 20 0c 84     ..
    jsr sub_c9e75                                                     ; 9e97: 20 75 9e     u.
    tya                                                               ; 9e9a: 98          .
    jsr sub_ca0de                                                     ; 9e9b: 20 de a0     ..
    bne c9eb3                                                         ; 9e9e: d0 13       ..
    lda l1117,y                                                       ; 9ea0: b9 17 11    ...
    and #$10                                                          ; 9ea3: 29 10       ).
    bne loop_c9e8c                                                    ; 9ea5: d0 e5       ..
    lda #$10                                                          ; 9ea7: a9 10       ..
    jsr sub_c9f0f                                                     ; 9ea9: 20 0f 9f     ..
    ldx l10c5                                                         ; 9eac: ae c5 10    ...
    lda #$fe                                                          ; 9eaf: a9 fe       ..
    sec                                                               ; 9eb1: 38          8
    rts                                                               ; 9eb2: 60          `

; $9eb3 referenced 1 time by $9e9e
c9eb3
    lda l1117,y                                                       ; 9eb3: b9 17 11    ...
    bmi c9ec2                                                         ; 9eb6: 30 0a       0.
    jsr sub_c9be5                                                     ; 9eb8: 20 e5 9b     ..
    jsr sub_c9f1e                                                     ; 9ebb: 20 1e 9f     ..
    sec                                                               ; 9ebe: 38          8
    jsr sub_c9f26                                                     ; 9ebf: 20 26 9f     &.
; $9ec2 referenced 1 time by $9eb6
c9ec2
    lda l1110,y                                                       ; 9ec2: b9 10 11    ...
    sta l00ba                                                         ; 9ec5: 85 ba       ..
    lda l1113,y                                                       ; 9ec7: b9 13 11    ...
    sta l00bb                                                         ; 9eca: 85 bb       ..
    ldy #0                                                            ; 9ecc: a0 00       ..
    lda (l00ba),y                                                     ; 9ece: b1 ba       ..
    pha                                                               ; 9ed0: 48          H
    ldy l10c2                                                         ; 9ed1: ac c2 10    ...
    ldx l00ba                                                         ; 9ed4: a6 ba       ..
    inx                                                               ; 9ed6: e8          .
    txa                                                               ; 9ed7: 8a          .
    sta l1110,y                                                       ; 9ed8: 99 10 11    ...
    bne c9ef1                                                         ; 9edb: d0 14       ..
    clc                                                               ; 9edd: 18          .
    lda l1111,y                                                       ; 9ede: b9 11 11    ...
    adc #1                                                            ; 9ee1: 69 01       i.
    sta l1111,y                                                       ; 9ee3: 99 11 11    ...
    lda l1112,y                                                       ; 9ee6: b9 12 11    ...
    adc #0                                                            ; 9ee9: 69 00       i.
    sta l1112,y                                                       ; 9eeb: 99 12 11    ...
    jsr sub_c9f14                                                     ; 9eee: 20 14 9f     ..
; $9ef1 referenced 1 time by $9edb
c9ef1
    clc                                                               ; 9ef1: 18          .
    pla                                                               ; 9ef2: 68          h
    rts                                                               ; 9ef3: 60          `

; $9ef4 referenced 2 times by $9f5e, $a018
sub_c9ef4
    clc                                                               ; 9ef4: 18          .
    lda l110f,y                                                       ; 9ef5: b9 0f 11    ...
    adc l1111,y                                                       ; 9ef8: 79 11 11    y..
    sta l00c3                                                         ; 9efb: 85 c3       ..
    sta l111c,y                                                       ; 9efd: 99 1c 11    ...
    lda l110d,y                                                       ; 9f00: b9 0d 11    ...
    and #3                                                            ; 9f03: 29 03       ).
    adc l1112,y                                                       ; 9f05: 79 12 11    y..
    sta l00c2                                                         ; 9f08: 85 c2       ..
    sta l111d,y                                                       ; 9f0a: 99 1d 11    ...
; $9f0d referenced 1 time by $a0db
c9f0d
    lda #$80                                                          ; 9f0d: a9 80       ..
; $9f0f referenced 3 times by $9ea9, $a035, $a05c
sub_c9f0f
    ora l1117,y                                                       ; 9f0f: 19 17 11    ...
    bne c9f19                                                         ; 9f12: d0 05       ..
; $9f14 referenced 2 times by $9eee, $a041
sub_c9f14
    lda #$7f                                                          ; 9f14: a9 7f       ..
; $9f16 referenced 3 times by $95f0, $9f59, $a0ba
sub_c9f16
    and l1117,y                                                       ; 9f16: 39 17 11    9..
; $9f19 referenced 1 time by $9f12
c9f19
    sta l1117,y                                                       ; 9f19: 99 17 11    ...
    clc                                                               ; 9f1c: 18          .
    rts                                                               ; 9f1d: 60          `

; $9f1e referenced 3 times by $9bc2, $9ebb, $a00a
sub_c9f1e
    lda l1117,y                                                       ; 9f1e: b9 17 11    ...
    and #$40 ; '@'                                                    ; 9f21: 29 40       )@
    beq c9f6a                                                         ; 9f23: f0 45       .E
    clc                                                               ; 9f25: 18          .
; $9f26 referenced 2 times by $9ebf, $a01e
sub_c9f26
    php                                                               ; 9f26: 08          .
    inc l10dd                                                         ; 9f27: ee dd 10    ...
    ldy l10c2                                                         ; 9f2a: ac c2 10    ...
    lda l1113,y                                                       ; 9f2d: b9 13 11    ...
    sta l00bd                                                         ; 9f30: 85 bd       ..
    lda #$ff                                                          ; 9f32: a9 ff       ..
    sta l1074                                                         ; 9f34: 8d 74 10    .t.
    sta l1075                                                         ; 9f37: 8d 75 10    .u.
    lda #0                                                            ; 9f3a: a9 00       ..
    sta l00bc                                                         ; 9f3c: 85 bc       ..
    sta l00c0                                                         ; 9f3e: 85 c0       ..
    lda #1                                                            ; 9f40: a9 01       ..
    sta l00c1                                                         ; 9f42: 85 c1       ..
    plp                                                               ; 9f44: 28          (
    bcs c9f5e                                                         ; 9f45: b0 17       ..
    lda l111c,y                                                       ; 9f47: b9 1c 11    ...
    sta l00c3                                                         ; 9f4a: 85 c3       ..
    lda l111d,y                                                       ; 9f4c: b9 1d 11    ...
    sta l00c2                                                         ; 9f4f: 85 c2       ..
    jsr sub_c8862                                                     ; 9f51: 20 62 88     b.
    ldy l10c2                                                         ; 9f54: ac c2 10    ...
    lda #$bf                                                          ; 9f57: a9 bf       ..
    jsr sub_c9f16                                                     ; 9f59: 20 16 9f     ..
    bcc c9f64                                                         ; 9f5c: 90 06       ..
; $9f5e referenced 1 time by $9f45
c9f5e
    jsr sub_c9ef4                                                     ; 9f5e: 20 f4 9e     ..
    jsr sub_c8855                                                     ; 9f61: 20 55 88     U.
; $9f64 referenced 1 time by $9f5c
c9f64
    dec l10dd                                                         ; 9f64: ce dd 10    ...
    ldy l10c2                                                         ; 9f67: ac c2 10    ...
; $9f6a referenced 1 time by $9f23
c9f6a
    rts                                                               ; 9f6a: 60          `

; $9f6b referenced 1 time by $9f91
c9f6b
    jmp generate_error_precheck_locked                                ; 9f6b: 4c 55 9a    LU.

; $9f6e referenced 1 time by $9f8c
loop_c9f6e
    jsr generate_error_precheck                                       ; 9f6e: 20 38 80     8.
    !byte $c1                                                         ; 9f71: c1          .
    !text "Read only"                                                 ; 9f72: 52 65 61... Rea
    !byte 0                                                           ; 9f7b: 00          .

; $9f7c referenced 1 time by $a09a
sub_c9f7c
    jsr sub_c83e3                                                     ; 9f7c: 20 e3 83     ..
    jmp c9f88                                                         ; 9f7f: 4c 88 9f    L..

; $9f82 referenced 1 time by $9983
sub_c9f82
    jsr sub_c83e3                                                     ; 9f82: 20 e3 83     ..
    jsr sub_c9e75                                                     ; 9f85: 20 75 9e     u.
; $9f88 referenced 1 time by $9f7f
c9f88
    pha                                                               ; 9f88: 48          H
    lda l110c,y                                                       ; 9f89: b9 0c 11    ...
    bmi loop_c9f6e                                                    ; 9f8c: 30 e0       0.
    lda l110e,y                                                       ; 9f8e: b9 0e 11    ...
    bmi c9f6b                                                         ; 9f91: 30 d8       0.
    jsr sub_c9be5                                                     ; 9f93: 20 e5 9b     ..
    tya                                                               ; 9f96: 98          .
    clc                                                               ; 9f97: 18          .
    adc #4                                                            ; 9f98: 69 04       i.
    jsr sub_ca0de                                                     ; 9f9a: 20 de a0     ..
    bne ca005                                                         ; 9f9d: d0 66       .f
    jsr sub_c9bcd                                                     ; 9f9f: 20 cd 9b     ..
    ldx l10c3                                                         ; 9fa2: ae c3 10    ...
    sec                                                               ; 9fa5: 38          8
    lda l0f07,x                                                       ; 9fa6: bd 07 0f    ...
    sbc l0f0f,x                                                       ; 9fa9: fd 0f 0f    ...
    pha                                                               ; 9fac: 48          H
    lda l0f06,x                                                       ; 9fad: bd 06 0f    ...
    sbc l0f0e,x                                                       ; 9fb0: fd 0e 0f    ...
    and #3                                                            ; 9fb3: 29 03       ).
    cmp l111a,y                                                       ; 9fb5: d9 1a 11    ...
    bne c9fd9                                                         ; 9fb8: d0 1f       ..
    pla                                                               ; 9fba: 68          h
    cmp l1119,y                                                       ; 9fbb: d9 19 11    ...
    bne c9ff4                                                         ; 9fbe: d0 34       .4
    sty l00b4                                                         ; 9fc0: 84 b4       ..
    sty l10c2                                                         ; 9fc2: 8c c2 10    ...
    jsr sub_c9e30                                                     ; 9fc5: 20 30 9e     0.
    jsr generate_error_precheck                                       ; 9fc8: 20 38 80     8.
    !byte $bf                                                         ; 9fcb: bf          .
    !text "Can't extend"                                              ; 9fcc: 43 61 6e... Can
    !byte 0                                                           ; 9fd8: 00          .

; $9fd9 referenced 1 time by $9fb8
c9fd9
    lda l111a,y                                                       ; 9fd9: b9 1a 11    ...
    clc                                                               ; 9fdc: 18          .
    adc #1                                                            ; 9fdd: 69 01       i.
    sta l111a,y                                                       ; 9fdf: 99 1a 11    ...
    asl                                                               ; 9fe2: 0a          .
    asl                                                               ; 9fe3: 0a          .
    asl                                                               ; 9fe4: 0a          .
    asl                                                               ; 9fe5: 0a          .
    eor l0f0e,x                                                       ; 9fe6: 5d 0e 0f    ]..
    and #$30 ; '0'                                                    ; 9fe9: 29 30       )0
    eor l0f0e,x                                                       ; 9feb: 5d 0e 0f    ]..
    sta l0f0e,x                                                       ; 9fee: 9d 0e 0f    ...
    pla                                                               ; 9ff1: 68          h
    lda #0                                                            ; 9ff2: a9 00       ..
; $9ff4 referenced 1 time by $9fbe
c9ff4
    sta l0f0d,x                                                       ; 9ff4: 9d 0d 0f    ...
    sta l1119,y                                                       ; 9ff7: 99 19 11    ...
    lda #0                                                            ; 9ffa: a9 00       ..
    sta l0f0c,x                                                       ; 9ffc: 9d 0c 0f    ...
    jsr c93e6                                                         ; 9fff: 20 e6 93     ..
    ldy l10c2                                                         ; a002: ac c2 10    ...
; $a005 referenced 1 time by $9f9d
ca005
    lda l1117,y                                                       ; a005: b9 17 11    ...
    bmi ca021                                                         ; a008: 30 17       0.
    jsr sub_c9f1e                                                     ; a00a: 20 1e 9f     ..
    lda l1114,y                                                       ; a00d: b9 14 11    ...
    bne ca01d                                                         ; a010: d0 0b       ..
    tya                                                               ; a012: 98          .
    jsr sub_ca0de                                                     ; a013: 20 de a0     ..
    bne ca01d                                                         ; a016: d0 05       ..
    jsr sub_c9ef4                                                     ; a018: 20 f4 9e     ..
    bne ca021                                                         ; a01b: d0 04       ..
; $a01d referenced 2 times by $a010, $a016
ca01d
    sec                                                               ; a01d: 38          8
    jsr sub_c9f26                                                     ; a01e: 20 26 9f     &.
; $a021 referenced 2 times by $a008, $a01b
ca021
    lda l1110,y                                                       ; a021: b9 10 11    ...
    sta l00ba                                                         ; a024: 85 ba       ..
    lda l1113,y                                                       ; a026: b9 13 11    ...
    sta l00bb                                                         ; a029: 85 bb       ..
    pla                                                               ; a02b: 68          h
    ldy #0                                                            ; a02c: a0 00       ..
    sta (l00ba),y                                                     ; a02e: 91 ba       ..
    ldy l10c2                                                         ; a030: ac c2 10    ...
    lda #$40 ; '@'                                                    ; a033: a9 40       .@
    jsr sub_c9f0f                                                     ; a035: 20 0f 9f     ..
    inc l00ba                                                         ; a038: e6 ba       ..
    lda l00ba                                                         ; a03a: a5 ba       ..
    sta l1110,y                                                       ; a03c: 99 10 11    ...
    bne ca054                                                         ; a03f: d0 13       ..
    jsr sub_c9f14                                                     ; a041: 20 14 9f     ..
    lda l1111,y                                                       ; a044: b9 11 11    ...
    adc #1                                                            ; a047: 69 01       i.
    sta l1111,y                                                       ; a049: 99 11 11    ...
    lda l1112,y                                                       ; a04c: b9 12 11    ...
    adc #0                                                            ; a04f: 69 00       i.
    sta l1112,y                                                       ; a051: 99 12 11    ...
; $a054 referenced 1 time by $a03f
ca054
    tya                                                               ; a054: 98          .
    jsr sub_ca0de                                                     ; a055: 20 de a0     ..
    bcc ca06b                                                         ; a058: 90 11       ..
    lda #$20 ; ' '                                                    ; a05a: a9 20       .
    jsr sub_c9f0f                                                     ; a05c: 20 0f 9f     ..
    ldx #2                                                            ; a05f: a2 02       ..
; $a061 referenced 1 time by $a069
loop_ca061
    lda l1110,y                                                       ; a061: b9 10 11    ...
    sta l1114,y                                                       ; a064: 99 14 11    ...
    iny                                                               ; a067: c8          .
    dex                                                               ; a068: ca          .
    bpl loop_ca061                                                    ; a069: 10 f6       ..
; $a06b referenced 3 times by $a058, $a0d1, $a0d9
ca06b
    rts                                                               ; a06b: 60          `

; $a06c referenced 2 times by $9849, $9db1
ca06c
    jsr sub_c83e3                                                     ; a06c: 20 e3 83     ..
    jsr sub_c9e75                                                     ; a06f: 20 75 9e     u.
    ldy l10c2                                                         ; a072: ac c2 10    ...
; $a075 referenced 1 time by $a0a6
ca075
    jsr sub_ca0f6                                                     ; a075: 20 f6 a0     ..
    bcs ca0a9                                                         ; a078: b0 2f       ./
    lda l1114,y                                                       ; a07a: b9 14 11    ...
    sta l1110,y                                                       ; a07d: 99 10 11    ...
    lda l1115,y                                                       ; a080: b9 15 11    ...
    sta l1111,y                                                       ; a083: 99 11 11    ...
    lda l1116,y                                                       ; a086: b9 16 11    ...
    sta l1112,y                                                       ; a089: 99 12 11    ...
    jsr sub_ca0b8                                                     ; a08c: 20 b8 a0     ..
    lda l00b6                                                         ; a08f: a5 b6       ..
    pha                                                               ; a091: 48          H
    lda l00b7                                                         ; a092: a5 b7       ..
    pha                                                               ; a094: 48          H
    lda l00b8                                                         ; a095: a5 b8       ..
    pha                                                               ; a097: 48          H
    lda #0                                                            ; a098: a9 00       ..
    jsr sub_c9f7c                                                     ; a09a: 20 7c 9f     |.
    pla                                                               ; a09d: 68          h
    sta l00b8                                                         ; a09e: 85 b8       ..
    pla                                                               ; a0a0: 68          h
    sta l00b7                                                         ; a0a1: 85 b7       ..
    pla                                                               ; a0a3: 68          h
    sta l00b6                                                         ; a0a4: 85 b6       ..
    jmp ca075                                                         ; a0a6: 4c 75 a0    Lu.

; $a0a9 referenced 1 time by $a078
ca0a9
    lda l0000,x                                                       ; a0a9: b5 00       ..
    sta l1110,y                                                       ; a0ab: 99 10 11    ...
    lda l0001,x                                                       ; a0ae: b5 01       ..
    sta l1111,y                                                       ; a0b0: 99 11 11    ...
    lda l0002,x                                                       ; a0b3: b5 02       ..
    sta l1112,y                                                       ; a0b5: 99 12 11    ...
; $a0b8 referenced 1 time by $a08c
sub_ca0b8
    lda #$6f ; 'o'                                                    ; a0b8: a9 6f       .o
    jsr sub_c9f16                                                     ; a0ba: 20 16 9f     ..
    lda l110f,y                                                       ; a0bd: b9 0f 11    ...
    adc l1111,y                                                       ; a0c0: 79 11 11    y..
    sta l10c4                                                         ; a0c3: 8d c4 10    ...
    lda l110d,y                                                       ; a0c6: b9 0d 11    ...
    and #3                                                            ; a0c9: 29 03       ).
    adc l1112,y                                                       ; a0cb: 79 12 11    y..
    cmp l111d,y                                                       ; a0ce: d9 1d 11    ...
    bne ca06b                                                         ; a0d1: d0 98       ..
    lda l10c4                                                         ; a0d3: ad c4 10    ...
    cmp l111c,y                                                       ; a0d6: d9 1c 11    ...
    bne ca06b                                                         ; a0d9: d0 90       ..
    jmp c9f0d                                                         ; a0db: 4c 0d 9f    L..

; $a0de referenced 5 times by $9e66, $9e9b, $9f9a, $a013, $a055
sub_ca0de
    tax                                                               ; a0de: aa          .
    lda l1112,y                                                       ; a0df: b9 12 11    ...
    cmp l1116,x                                                       ; a0e2: dd 16 11    ...
    bne ca0f5                                                         ; a0e5: d0 0e       ..
    lda l1111,y                                                       ; a0e7: b9 11 11    ...
    cmp l1115,x                                                       ; a0ea: dd 15 11    ...
    bne ca0f5                                                         ; a0ed: d0 06       ..
    lda l1110,y                                                       ; a0ef: b9 10 11    ...
    cmp l1114,x                                                       ; a0f2: dd 14 11    ...
; $a0f5 referenced 2 times by $a0e5, $a0ed
ca0f5
    rts                                                               ; a0f5: 60          `

; $a0f6 referenced 1 time by $a075
sub_ca0f6
    lda l1114,y                                                       ; a0f6: b9 14 11    ...
    cmp l0000,x                                                       ; a0f9: d5 00       ..
    lda l1115,y                                                       ; a0fb: b9 15 11    ...
    sbc l0001,x                                                       ; a0fe: f5 01       ..
    lda l1116,y                                                       ; a100: b9 16 11    ...
    sbc l0002,x                                                       ; a103: f5 02       ..
    rts                                                               ; a105: 60          `

sub_ca106
    tya                                                               ; a106: 98          .
    ldx #$ff                                                          ; a107: a2 ff       ..
    ldy #$14                                                          ; a109: a0 14       ..
; $a10b referenced 2 times by $9711, $a13c
ca10b
    pha                                                               ; a10b: 48          H
    jsr print_inline_l809f_top_bit_clear                              ; a10c: 20 77 80     w.
    !text $0d, "DFS 2.26", $0d                                        ; a10f: 0d 44 46... .DF

    stx l00bf                                                         ; a119: 86 bf       ..
    sty l00b7                                                         ; a11b: 84 b7       ..
; $a11d referenced 1 time by $a12e
loop_ca11d
    lda #0                                                            ; a11d: a9 00       ..
    sta l00b9                                                         ; a11f: 85 b9       ..
    ldy #2                                                            ; a121: a0 02       ..
    jsr sub_ca1c6                                                     ; a123: 20 c6 a1     ..
    jsr sub_ca168                                                     ; a126: 20 68 a1     h.
    jsr ca3dc                                                         ; a129: 20 dc a3     ..
    dec l00b7                                                         ; a12c: c6 b7       ..
    bne loop_ca11d                                                    ; a12e: d0 ed       ..
    pla                                                               ; a130: 68          h
    tay                                                               ; a131: a8          .
; $a132 referenced 1 time by $a148
loop_ca132
    ldx #$cf                                                          ; a132: a2 cf       ..
    jmp c8703                                                         ; a134: 4c 03 87    L..

sub_ca137
    tya                                                               ; a137: 98          .
    ldx #$9d                                                          ; a138: a2 9d       ..
    ldy #6                                                            ; a13a: a0 06       ..
    bne ca10b                                                         ; a13c: d0 cd       ..
    jsr clc_jmp_gsinit                                                ; a13e: 20 4c 87     L.
    beq ca1c0                                                         ; a141: f0 7d       .}
; $a143 referenced 1 time by $a146
loop_ca143
    jsr sub_c8149                                                     ; a143: 20 49 81     I.
    bcc loop_ca143                                                    ; a146: 90 fb       ..
    bcs loop_ca132                                                    ; a148: b0 e8       ..
; $a14a referenced 13 times by $8257, $8753, $8785, $879a, $87ee, $89b7, $89e9, $8baf, $8bc1, $a324, $a32d, $a469, $a5cb
sub_ca14a
    jsr clc_jmp_gsinit                                                ; a14a: 20 4c 87     L.
    bne ca1c0                                                         ; a14d: d0 71       .q
; $a14f referenced 3 times by $8805, $a5e2, $ac25
ca14f
    jsr generate_error                                                ; a14f: 20 48 80     H.
    !byte $dc                                                         ; a152: dc          .
    !text "Syntax: "                                                  ; a153: 53 79 6e... Syn

    stx l00b9                                                         ; a15b: 86 b9       ..
    jsr sub_ca168                                                     ; a15d: 20 68 a1     h.
    lda #0                                                            ; a160: a9 00       ..
    jsr sub_ca1b4                                                     ; a162: 20 b4 a1     ..
    jmp l0100                                                         ; a165: 4c 00 01    L..

; $a168 referenced 2 times by $a126, $a15d
sub_ca168
    ldx l00bf                                                         ; a168: a6 bf       ..
    lda #9                                                            ; a16a: a9 09       ..
    sta l00b8                                                         ; a16c: 85 b8       ..
; $a16e referenced 1 time by $a177
loop_ca16e
    inx                                                               ; a16e: e8          .
    lda command_table,x                                               ; a16f: bd 1c 86    ...
    bmi ca17a                                                         ; a172: 30 06       0.
    jsr sub_ca1b4                                                     ; a174: 20 b4 a1     ..
    jmp loop_ca16e                                                    ; a177: 4c 6e a1    Ln.

; $a17a referenced 1 time by $a172
ca17a
    ldy l00b8                                                         ; a17a: a4 b8       ..
    cpy #$0c                                                          ; a17c: c0 0c       ..
    beq ca183                                                         ; a17e: f0 03       ..
    jsr sub_ca1c6                                                     ; a180: 20 c6 a1     ..
; $a183 referenced 1 time by $a17e
ca183
    inx                                                               ; a183: e8          .
    inx                                                               ; a184: e8          .
    stx l00bf                                                         ; a185: 86 bf       ..
    lda command_table,x                                               ; a187: bd 1c 86    ...
    jsr sub_ca190                                                     ; a18a: 20 90 a1     ..
    jsr sub_c81bf                                                     ; a18d: 20 bf 81     ..
; $a190 referenced 1 time by $a18a
sub_ca190
    jsr sub_c83e3                                                     ; a190: 20 e3 83     ..
    and #$0f                                                          ; a193: 29 0f       ).
    beq ca1c0                                                         ; a195: f0 29       .)
    tay                                                               ; a197: a8          .
    lda #$20 ; ' '                                                    ; a198: a9 20       .
    jsr sub_ca1b4                                                     ; a19a: 20 b4 a1     ..
    ldx #$ff                                                          ; a19d: a2 ff       ..
; $a19f referenced 2 times by $a1a3, $a1a6
ca19f
    inx                                                               ; a19f: e8          .
    lda la1d3,x                                                       ; a1a0: bd d3 a1    ...
    bpl ca19f                                                         ; a1a3: 10 fa       ..
    dey                                                               ; a1a5: 88          .
    bne ca19f                                                         ; a1a6: d0 f7       ..
    and #$7f                                                          ; a1a8: 29 7f       ).
; $a1aa referenced 1 time by $a1b1
loop_ca1aa
    jsr sub_ca1b4                                                     ; a1aa: 20 b4 a1     ..
    inx                                                               ; a1ad: e8          .
    lda la1d3,x                                                       ; a1ae: bd d3 a1    ...
    bpl loop_ca1aa                                                    ; a1b1: 10 f7       ..
    rts                                                               ; a1b3: 60          `

; $a1b4 referenced 5 times by $a162, $a174, $a19a, $a1aa, $a1cc
sub_ca1b4
    jsr sub_c83e3                                                     ; a1b4: 20 e3 83     ..
    ldx l00b9                                                         ; a1b7: a6 b9       ..
    beq ca1c1                                                         ; a1b9: f0 06       ..
    inc l00b9                                                         ; a1bb: e6 b9       ..
    sta l0100,x                                                       ; a1bd: 9d 00 01    ...
; $a1c0 referenced 3 times by $a141, $a14d, $a195
ca1c0
    rts                                                               ; a1c0: 60          `

; $a1c1 referenced 1 time by $a1b9
ca1c1
    dec l00b8                                                         ; a1c1: c6 b8       ..
    jmp c809f                                                         ; a1c3: 4c 9f 80    L..

; $a1c6 referenced 2 times by $a123, $a180
sub_ca1c6
    lda l00b9                                                         ; a1c6: a5 b9       ..
    bne ca1d2                                                         ; a1c8: d0 08       ..
    lda #$20 ; ' '                                                    ; a1ca: a9 20       .
; $a1cc referenced 1 time by $a1d0
loop_ca1cc
    jsr sub_ca1b4                                                     ; a1cc: 20 b4 a1     ..
    dey                                                               ; a1cf: 88          .
    bne loop_ca1cc                                                    ; a1d0: d0 fa       ..
; $a1d2 referenced 1 time by $a1c8
ca1d2
    rts                                                               ; a1d2: 60          `

; $a1d3 referenced 2 times by $a1a0, $a1ae
la1d3
    !byte $bc                                                         ; a1d3: bc          .
    !text "fsp>"                                                      ; a1d4: 66 73 70... fsp
    !byte $bc                                                         ; a1d8: bc          .
    !text "afsp>"                                                     ; a1d9: 61 66 73... afs
    !byte $a8, $4c, $29, $bc                                          ; a1de: a8 4c 29... .L)
    !text "source> <dest.>"                                           ; a1e2: 73 6f 75... sou
    !byte $bc                                                         ; a1f1: bc          .
    !text "old fsp> <new fsp>"                                        ; a1f2: 6f 6c 64... old
    !byte $a8                                                         ; a204: a8          .
    !text "<dir>)"                                                    ; a205: 3c 64 69... <di
    !byte $a8                                                         ; a20b: a8          .
    !text "<drive>)"                                                  ; a20c: 3c 64 72... <dr
    !byte $bc                                                         ; a214: bc          .
    !text "title>"                                                    ; a215: 74 69 74... tit
    !byte $bc                                                         ; a21b: bc          .
    !text "drive> (40)(80)"                                           ; a21c: 64 72 69... dri
    !byte $b4                                                         ; a22b: b4          .
    !text "0/80"                                                      ; a22c: 30 2f 38... 0/8
    !byte $a8                                                         ; a230: a8          .
    !text "<drive>)..."                                               ; a231: 3c 64 72... <dr
    !byte $a8                                                         ; a23c: a8          .
    !text "<rom>)"                                                    ; a23d: 3c 72 6f... <ro
    !byte $ff                                                         ; a243: ff          .

sub_ca244
    jsr sub_c8b86                                                     ; a244: 20 86 8b     ..
    jsr print_inline_l809f_top_bit_clear                              ; a247: 20 77 80     w.
    !text "Compacting :"                                              ; a24a: 43 6f 6d... Com

    sta l10d1                                                         ; a256: 8d d1 10    ...
    sta l10d2                                                         ; a259: 8d d2 10    ...
    jsr sub_c80c3                                                     ; a25c: 20 c3 80     ..
    jsr ca3dc                                                         ; a25f: 20 dc a3     ..
    ldy #0                                                            ; a262: a0 00       ..
    jsr sub_c9b79                                                     ; a264: 20 79 9b     y.
    jsr sub_c9a8d                                                     ; a267: 20 8d 9a     ..
    jsr sub_c8380                                                     ; a26a: 20 80 83     ..
    ldy l0f05                                                         ; a26d: ac 05 0f    ...
    sty l00ca                                                         ; a270: 84 ca       ..
    lda #2                                                            ; a272: a9 02       ..
    sta l00c8                                                         ; a274: 85 c8       ..
    lda #0                                                            ; a276: a9 00       ..
    sta l00c9                                                         ; a278: 85 c9       ..
; $a27a referenced 1 time by $a312
ca27a
    ldy l00ca                                                         ; a27a: a4 ca       ..
    jsr sub_c82b2                                                     ; a27c: 20 b2 82     ..
    cpy #$f8                                                          ; a27f: c0 f8       ..
    bne ca2ab                                                         ; a281: d0 28       .(
    lda l0f07                                                         ; a283: ad 07 0f    ...
    sec                                                               ; a286: 38          8
    sbc l00c8                                                         ; a287: e5 c8       ..
    pha                                                               ; a289: 48          H
    lda l0f06                                                         ; a28a: ad 06 0f    ...
    and #3                                                            ; a28d: 29 03       ).
    sbc l00c9                                                         ; a28f: e5 c9       ..
    jsr sub_c80c3                                                     ; a291: 20 c3 80     ..
    pla                                                               ; a294: 68          h
    jsr sub_c80bb                                                     ; a295: 20 bb 80     ..
    jsr print_inline_l809f_top_bit_clear                              ; a298: 20 77 80     w.
    !text " free sectors", $0d                                        ; a29b: 20 66 72...  fr

    nop                                                               ; a2a9: ea          .
    rts                                                               ; a2aa: 60          `

; $a2ab referenced 1 time by $a281
ca2ab
    sty l00ca                                                         ; a2ab: 84 ca       ..
    jsr sub_c8335                                                     ; a2ad: 20 35 83     5.
    ldy l00ca                                                         ; a2b0: a4 ca       ..
    lda l0f0c,y                                                       ; a2b2: b9 0c 0f    ...
    cmp #1                                                            ; a2b5: c9 01       ..
    lda #0                                                            ; a2b7: a9 00       ..
    sta l00bc                                                         ; a2b9: 85 bc       ..
    sta l00c0                                                         ; a2bb: 85 c0       ..
    adc l0f0d,y                                                       ; a2bd: 79 0d 0f    y..
    sta l00c4                                                         ; a2c0: 85 c4       ..
    lda l0f0e,y                                                       ; a2c2: b9 0e 0f    ...
    php                                                               ; a2c5: 08          .
    jsr sub_c81b0                                                     ; a2c6: 20 b0 81     ..
    plp                                                               ; a2c9: 28          (
    adc #0                                                            ; a2ca: 69 00       i.
    sta l00c5                                                         ; a2cc: 85 c5       ..
    lda l0f0f,y                                                       ; a2ce: b9 0f 0f    ...
    sta l00c6                                                         ; a2d1: 85 c6       ..
    lda l0f0e,y                                                       ; a2d3: b9 0e 0f    ...
    and #3                                                            ; a2d6: 29 03       ).
    sta l00c7                                                         ; a2d8: 85 c7       ..
    cmp l00c9                                                         ; a2da: c5 c9       ..
    bne ca2f2                                                         ; a2dc: d0 14       ..
    lda l00c6                                                         ; a2de: a5 c6       ..
    cmp l00c8                                                         ; a2e0: c5 c8       ..
    bne ca2f2                                                         ; a2e2: d0 0e       ..
    clc                                                               ; a2e4: 18          .
    adc l00c4                                                         ; a2e5: 65 c4       e.
    sta l00c8                                                         ; a2e7: 85 c8       ..
    lda l00c9                                                         ; a2e9: a5 c9       ..
    adc l00c5                                                         ; a2eb: 65 c5       e.
    sta l00c9                                                         ; a2ed: 85 c9       ..
    jmp ca30d                                                         ; a2ef: 4c 0d a3    L..

; $a2f2 referenced 2 times by $a2dc, $a2e2
ca2f2
    lda l00c8                                                         ; a2f2: a5 c8       ..
    sta l0f0f,y                                                       ; a2f4: 99 0f 0f    ...
    lda l0f0e,y                                                       ; a2f7: b9 0e 0f    ...
    and #$fc                                                          ; a2fa: 29 fc       ).
    ora l00c9                                                         ; a2fc: 05 c9       ..
    sta l0f0e,y                                                       ; a2fe: 99 0e 0f    ...
    lda #0                                                            ; a301: a9 00       ..
    sta l00a8                                                         ; a303: 85 a8       ..
    sta l00a9                                                         ; a305: 85 a9       ..
    jsr sub_ca530                                                     ; a307: 20 30 a5     0.
    jsr c93e6                                                         ; a30a: 20 e6 93     ..
; $a30d referenced 1 time by $a2ef
ca30d
    ldy l00ca                                                         ; a30d: a4 ca       ..
    jsr sub_c833a                                                     ; a30f: 20 3a 83     :.
    jmp ca27a                                                         ; a312: 4c 7a a2    Lz.

; $a315 referenced 3 times by $8794, $a41a, $a64c
sub_ca315
    bit l10c7                                                         ; a315: 2c c7 10    ,..
    bpl ca378                                                         ; a318: 10 5e       .^
    jsr sub_ca3ec                                                     ; a31a: 20 ec a3     ..
    beq ca321                                                         ; a31d: f0 02       ..
    pla                                                               ; a31f: 68          h
    pla                                                               ; a320: 68          h
; $a321 referenced 1 time by $a31d
ca321
    jmp ca3dc                                                         ; a321: 4c dc a3    L..

; $a324 referenced 2 times by $a417, $a466
sub_ca324
    jsr sub_ca14a                                                     ; a324: 20 4a a1     J.
    jsr c8b8b                                                         ; a327: 20 8b 8b     ..
    sta l10d1                                                         ; a32a: 8d d1 10    ...
    jsr sub_ca14a                                                     ; a32d: 20 4a a1     J.
    jsr c8b8b                                                         ; a330: 20 8b 8b     ..
    sta l10d2                                                         ; a333: 8d d2 10    ...
    tya                                                               ; a336: 98          .
    pha                                                               ; a337: 48          H
    lda #0                                                            ; a338: a9 00       ..
    sta l00a9                                                         ; a33a: 85 a9       ..
    lda l10d2                                                         ; a33c: ad d2 10    ...
    cmp l10d1                                                         ; a33f: cd d1 10    ...
    bne ca34a                                                         ; a342: d0 06       ..
    lda #$ff                                                          ; a344: a9 ff       ..
    sta l00a9                                                         ; a346: 85 a9       ..
    sta l00aa                                                         ; a348: 85 aa       ..
; $a34a referenced 1 time by $a342
ca34a
    jsr sub_c9a8d                                                     ; a34a: 20 8d 9a     ..
    jsr print_inline_l809f_top_bit_clear                              ; a34d: 20 77 80     w.
    !text "Copying from :"                                            ; a350: 43 6f 70... Cop

    lda l10d1                                                         ; a35e: ad d1 10    ...
    jsr sub_c80c3                                                     ; a361: 20 c3 80     ..
    jsr print_inline_l809f_top_bit_clear                              ; a364: 20 77 80     w.
    !text " to :"                                                     ; a367: 20 74 6f...  to

    lda l10d2                                                         ; a36c: ad d2 10    ...
    jsr sub_c80c3                                                     ; a36f: 20 c3 80     ..
    jsr ca3dc                                                         ; a372: 20 dc a3     ..
    pla                                                               ; a375: 68          h
    tay                                                               ; a376: a8          .
    clc                                                               ; a377: 18          .
; $a378 referenced 1 time by $a318
ca378
    rts                                                               ; a378: 60          `

; $a379 referenced 4 times by $a429, $a46f, $a4c8, $a55b
sub_ca379
    jsr sub_c83e3                                                     ; a379: 20 e3 83     ..
    bit l00a9                                                         ; a37c: 24 a9       $.
    bpl ca38b                                                         ; a37e: 10 0b       ..
    lda #0                                                            ; a380: a9 00       ..
    beq ca38e                                                         ; a382: f0 0a       ..
; $a384 referenced 3 times by $a440, $a4e4, $a581
sub_ca384
    jsr sub_c83e3                                                     ; a384: 20 e3 83     ..
    bit l00a9                                                         ; a387: 24 a9       $.
    bmi ca38c                                                         ; a389: 30 01       0.
; $a38b referenced 2 times by $a37e, $a390
ca38b
    rts                                                               ; a38b: 60          `

; $a38c referenced 1 time by $a389
ca38c
    lda #$80                                                          ; a38c: a9 80       ..
; $a38e referenced 1 time by $a382
ca38e
    cmp l00aa                                                         ; a38e: c5 aa       ..
    beq ca38b                                                         ; a390: f0 f9       ..
    sta l00aa                                                         ; a392: 85 aa       ..
    jsr print_inline_l809f_top_bit_clear                              ; a394: 20 77 80     w.
    !text "Insert "                                                   ; a397: 49 6e 73... Ins

    nop                                                               ; a39e: ea          .
    bit l00aa                                                         ; a39f: 24 aa       $.
    bmi ca3ae                                                         ; a3a1: 30 0b       0.
    jsr print_inline_l809f_top_bit_clear                              ; a3a3: 20 77 80     w.
    !text "source"                                                    ; a3a6: 73 6f 75... sou

    bcc ca3bd                                                         ; a3ac: 90 0f       ..
; $a3ae referenced 1 time by $a3a1
ca3ae
    jsr print_inline_l809f_top_bit_clear                              ; a3ae: 20 77 80     w.
    !text "destination"                                               ; a3b1: 64 65 73... des

    nop                                                               ; a3bc: ea          .
; $a3bd referenced 1 time by $a3ac
ca3bd
    jsr print_inline_l809f_top_bit_clear                              ; a3bd: 20 77 80     w.
    !text " disc and hit a key"                                       ; a3c0: 20 64 69...  di

    nop                                                               ; a3d3: ea          .
    jsr sub_c9ac8                                                     ; a3d4: 20 c8 9a     ..
    jsr osrdch                                                        ; a3d7: 20 e0 ff     ..            ; Read a character from the current input stream
    bcs ca411                                                         ; a3da: b0 35       .5
; $a3dc referenced 16 times by $836b, $8522, $854f, $85b2, $85b5, $8779, $87a8, $87b5, $a129, $a25f, $a321, $a372, $a62f, $a6b0, $a73a, $aa95
ca3dc
    pha                                                               ; a3dc: 48          H              ; A=character read
    lda #$0d                                                          ; a3dd: a9 0d       ..
    jsr c809f                                                         ; a3df: 20 9f 80     ..
    pla                                                               ; a3e2: 68          h
    rts                                                               ; a3e3: 60          `

; $a3e4 referenced 1 time by $8761
sub_ca3e4
    jsr print_inline_l809f_top_bit_clear                              ; a3e4: 20 77 80     w.
    !text " : "                                                       ; a3e7: 20 3a 20     :

    bcc ca3fb                                                         ; a3ea: 90 0f       ..
; $a3ec referenced 2 times by $87b0, $a31a
sub_ca3ec
    jsr print_inline_l809f_top_bit_clear                              ; a3ec: 20 77 80     w.
    !text "Go (Y/N) ? "                                               ; a3ef: 47 6f 20... Go

    nop                                                               ; a3fa: ea          .
; $a3fb referenced 1 time by $a3ea
ca3fb
    jsr sub_c9ac8                                                     ; a3fb: 20 c8 9a     ..
    jsr osrdch                                                        ; a3fe: 20 e0 ff     ..            ; Read a character from the current input stream
    bcs ca411                                                         ; a401: b0 0e       ..
    and #$5f ; '_'                                                    ; a403: 29 5f       )_
    cmp #$59 ; 'Y'                                                    ; a405: c9 59       .Y
    php                                                               ; a407: 08          .
    beq ca40c                                                         ; a408: f0 02       ..
    lda #$4e ; 'N'                                                    ; a40a: a9 4e       .N
; $a40c referenced 1 time by $a408
ca40c
    jsr c809f                                                         ; a40c: 20 9f 80     ..
    plp                                                               ; a40f: 28          (
    rts                                                               ; a410: 60          `

; $a411 referenced 2 times by $a3da, $a401
ca411
    jmp c9436                                                         ; a411: 4c 36 94    L6.

; $a414 referenced 2 times by $a452, $a45b
ca414
    jmp c8a6e                                                         ; a414: 4c 6e 8a    Ln.

sub_ca417
    jsr sub_ca324                                                     ; a417: 20 24 a3     $.
    jsr sub_ca315                                                     ; a41a: 20 15 a3     ..
    lda #0                                                            ; a41d: a9 00       ..
    sta l00c7                                                         ; a41f: 85 c7       ..
    sta l00c9                                                         ; a421: 85 c9       ..
    sta l00c8                                                         ; a423: 85 c8       ..
    sta l00c6                                                         ; a425: 85 c6       ..
    sta l00a8                                                         ; a427: 85 a8       ..
    jsr sub_ca379                                                     ; a429: 20 79 a3     y.
    lda l10d1                                                         ; a42c: ad d1 10    ...
    sta l00cd                                                         ; a42f: 85 cd       ..
    jsr c940c                                                         ; a431: 20 0c 94     ..
    lda l0f07                                                         ; a434: ad 07 0f    ...
    sta l00c4                                                         ; a437: 85 c4       ..
    lda l0f06                                                         ; a439: ad 06 0f    ...
    and #3                                                            ; a43c: 29 03       ).
    sta l00c5                                                         ; a43e: 85 c5       ..
    jsr sub_ca384                                                     ; a440: 20 84 a3     ..
    lda l10d2                                                         ; a443: ad d2 10    ...
    sta l00cd                                                         ; a446: 85 cd       ..
    jsr c940c                                                         ; a448: 20 0c 94     ..
    lda l0f06                                                         ; a44b: ad 06 0f    ...
    and #3                                                            ; a44e: 29 03       ).
    cmp l00c5                                                         ; a450: c5 c5       ..
    bcc ca414                                                         ; a452: 90 c0       ..
    bne ca45d                                                         ; a454: d0 07       ..
    lda l0f07                                                         ; a456: ad 07 0f    ...
    cmp l00c4                                                         ; a459: c5 c4       ..
    bcc ca414                                                         ; a45b: 90 b7       ..
; $a45d referenced 1 time by $a454
ca45d
    jsr sub_ca530                                                     ; a45d: 20 30 a5     0.
    jmp c940c                                                         ; a460: 4c 0c 94    L..

sub_ca463
    jsr sub_c99ac                                                     ; a463: 20 ac 99     ..
    jsr sub_ca324                                                     ; a466: 20 24 a3     $.
    jsr sub_ca14a                                                     ; a469: 20 4a a1     J.
    jsr sub_c80ed                                                     ; a46c: 20 ed 80     ..
    jsr sub_ca379                                                     ; a46f: 20 79 a3     y.
    lda l10d1                                                         ; a472: ad d1 10    ...
    jsr c8816                                                         ; a475: 20 16 88     ..
    jsr c8225                                                         ; a478: 20 25 82     %.
; $a47b referenced 1 time by $a4de
ca47b
    lda l00cc                                                         ; a47b: a5 cc       ..
    pha                                                               ; a47d: 48          H
    lda l00b6                                                         ; a47e: a5 b6       ..
    sta l00ab                                                         ; a480: 85 ab       ..
    jsr sub_c833a                                                     ; a482: 20 3a 83     :.
    ldx #0                                                            ; a485: a2 00       ..
; $a487 referenced 1 time by $a49b
loop_ca487
    lda l0e08,y                                                       ; a487: b9 08 0e    ...
    sta l00c5,x                                                       ; a48a: 95 c5       ..
    sta l1050,x                                                       ; a48c: 9d 50 10    .P.
    lda l0f08,y                                                       ; a48f: b9 08 0f    ...
    sta l00bb,x                                                       ; a492: 95 bb       ..
    sta l1047,x                                                       ; a494: 9d 47 10    .G.
    inx                                                               ; a497: e8          .
    iny                                                               ; a498: c8          .
    cpx #8                                                            ; a499: e0 08       ..
    bne loop_ca487                                                    ; a49b: d0 ea       ..
    lda l00c1                                                         ; a49d: a5 c1       ..
    jsr sub_c81b0                                                     ; a49f: 20 b0 81     ..
    sta l00c3                                                         ; a4a2: 85 c3       ..
    lda l00bf                                                         ; a4a4: a5 bf       ..
    clc                                                               ; a4a6: 18          .
    adc #$ff                                                          ; a4a7: 69 ff       i.
    lda l00c0                                                         ; a4a9: a5 c0       ..
    adc #0                                                            ; a4ab: 69 00       i.
    sta l00c4                                                         ; a4ad: 85 c4       ..
    lda l00c3                                                         ; a4af: a5 c3       ..
    adc #0                                                            ; a4b1: 69 00       i.
    sta l00c5                                                         ; a4b3: 85 c5       ..
    lda l104e                                                         ; a4b5: ad 4e 10    .N.
    sta l00c6                                                         ; a4b8: 85 c6       ..
    lda l104d                                                         ; a4ba: ad 4d 10    .M.
    and #3                                                            ; a4bd: 29 03       ).
    sta l00c7                                                         ; a4bf: 85 c7       ..
    lda #$ff                                                          ; a4c1: a9 ff       ..
    sta l00a8                                                         ; a4c3: 85 a8       ..
    jsr sub_ca530                                                     ; a4c5: 20 30 a5     0.
    jsr sub_ca379                                                     ; a4c8: 20 79 a3     y.
    lda l10d1                                                         ; a4cb: ad d1 10    ...
    jsr c8816                                                         ; a4ce: 20 16 88     ..
    jsr sub_c8380                                                     ; a4d1: 20 80 83     ..
    lda l00ab                                                         ; a4d4: a5 ab       ..
    sta l00b6                                                         ; a4d6: 85 b6       ..
    pla                                                               ; a4d8: 68          h
    sta l00cc                                                         ; a4d9: 85 cc       ..
    jsr sub_c8280                                                     ; a4db: 20 80 82     ..
    bcs ca47b                                                         ; a4de: b0 9b       ..
    rts                                                               ; a4e0: 60          `

; $a4e1 referenced 1 time by $a56d
sub_ca4e1
    jsr sub_ca51f                                                     ; a4e1: 20 1f a5     ..
    jsr sub_ca384                                                     ; a4e4: 20 84 a3     ..
    lda l10d2                                                         ; a4e7: ad d2 10    ...
    sta l00cd                                                         ; a4ea: 85 cd       ..
    lda l00cc                                                         ; a4ec: a5 cc       ..
    pha                                                               ; a4ee: 48          H
    jsr sub_c8380                                                     ; a4ef: 20 80 83     ..
    jsr sub_c826d                                                     ; a4f2: 20 6d 82     m.
    bcc ca4fa                                                         ; a4f5: 90 03       ..
    jsr sub_c830a                                                     ; a4f7: 20 0a 83     ..
; $a4fa referenced 1 time by $a4f5
ca4fa
    pla                                                               ; a4fa: 68          h
    sta l00cc                                                         ; a4fb: 85 cc       ..
    jsr sub_c8b4d                                                     ; a4fd: 20 4d 8b     M.
    jsr sub_c8b64                                                     ; a500: 20 64 8b     d.
    lda l00c2                                                         ; a503: a5 c2       ..
    jsr sub_c81b0                                                     ; a505: 20 b0 81     ..
    sta l00c4                                                         ; a508: 85 c4       ..
    jsr sub_c8ab3                                                     ; a50a: 20 b3 8a     ..
    lda l00c2                                                         ; a50d: a5 c2       ..
    and #3                                                            ; a50f: 29 03       ).
    pha                                                               ; a511: 48          H
    lda l00c3                                                         ; a512: a5 c3       ..
    pha                                                               ; a514: 48          H
    jsr sub_ca51f                                                     ; a515: 20 1f a5     ..
    pla                                                               ; a518: 68          h
    sta l00c8                                                         ; a519: 85 c8       ..
    pla                                                               ; a51b: 68          h
    sta l00c9                                                         ; a51c: 85 c9       ..
    rts                                                               ; a51e: 60          `

; $a51f referenced 2 times by $a4e1, $a515
sub_ca51f
    ldx #$11                                                          ; a51f: a2 11       ..
; $a521 referenced 1 time by $a52d
loop_ca521
    lda l1045,x                                                       ; a521: bd 45 10    .E.
    ldy l00ba,x                                                       ; a524: b4 ba       ..
    sta l00ba,x                                                       ; a526: 95 ba       ..
    tya                                                               ; a528: 98          .
    sta l1045,x                                                       ; a529: 9d 45 10    .E.
    dex                                                               ; a52c: ca          .
    bpl loop_ca521                                                    ; a52d: 10 f2       ..
    rts                                                               ; a52f: 60          `

; $a530 referenced 3 times by $a307, $a45d, $a4c5
sub_ca530
    lda #0                                                            ; a530: a9 00       ..
    sta l00bc                                                         ; a532: 85 bc       ..
    sta l00c0                                                         ; a534: 85 c0       ..
    beq ca5ab                                                         ; a536: f0 73       .s
; $a538 referenced 1 time by $a5af
ca538
    lda l00c4                                                         ; a538: a5 c4       ..
    tay                                                               ; a53a: a8          .
    cmp l10d0                                                         ; a53b: cd d0 10    ...
    lda l00c5                                                         ; a53e: a5 c5       ..
    sbc #0                                                            ; a540: e9 00       ..
    bcc ca547                                                         ; a542: 90 03       ..
    ldy l10d0                                                         ; a544: ac d0 10    ...
; $a547 referenced 1 time by $a542
ca547
    sty l00c1                                                         ; a547: 84 c1       ..
    lda l00c6                                                         ; a549: a5 c6       ..
    sta l00c3                                                         ; a54b: 85 c3       ..
    lda l00c7                                                         ; a54d: a5 c7       ..
    sta l00c2                                                         ; a54f: 85 c2       ..
    lda l10cf                                                         ; a551: ad cf 10    ...
    sta l00bd                                                         ; a554: 85 bd       ..
    lda l10d1                                                         ; a556: ad d1 10    ...
    sta l00cd                                                         ; a559: 85 cd       ..
    jsr sub_ca379                                                     ; a55b: 20 79 a3     y.
    jsr sub_ca5b2                                                     ; a55e: 20 b2 a5     ..
    jsr sub_c8855                                                     ; a561: 20 55 88     U.
    lda l10d2                                                         ; a564: ad d2 10    ...
    sta l00cd                                                         ; a567: 85 cd       ..
    bit l00a8                                                         ; a569: 24 a8       $.
    bpl ca574                                                         ; a56b: 10 07       ..
    jsr sub_ca4e1                                                     ; a56d: 20 e1 a4     ..
    lda #0                                                            ; a570: a9 00       ..
    sta l00a8                                                         ; a572: 85 a8       ..
; $a574 referenced 1 time by $a56b
ca574
    lda l00c8                                                         ; a574: a5 c8       ..
    sta l00c3                                                         ; a576: 85 c3       ..
    lda l00c9                                                         ; a578: a5 c9       ..
    sta l00c2                                                         ; a57a: 85 c2       ..
    lda l10cf                                                         ; a57c: ad cf 10    ...
    sta l00bd                                                         ; a57f: 85 bd       ..
    jsr sub_ca384                                                     ; a581: 20 84 a3     ..
    jsr sub_ca5b2                                                     ; a584: 20 b2 a5     ..
    jsr sub_c8862                                                     ; a587: 20 62 88     b.
    lda l00c1                                                         ; a58a: a5 c1       ..
    clc                                                               ; a58c: 18          .
    adc l00c8                                                         ; a58d: 65 c8       e.
    sta l00c8                                                         ; a58f: 85 c8       ..
    bcc ca595                                                         ; a591: 90 02       ..
    inc l00c9                                                         ; a593: e6 c9       ..
; $a595 referenced 1 time by $a591
ca595
    lda l00c1                                                         ; a595: a5 c1       ..
    clc                                                               ; a597: 18          .
    adc l00c6                                                         ; a598: 65 c6       e.
    sta l00c6                                                         ; a59a: 85 c6       ..
    bcc ca5a0                                                         ; a59c: 90 02       ..
    inc l00c7                                                         ; a59e: e6 c7       ..
; $a5a0 referenced 1 time by $a59c
ca5a0
    sec                                                               ; a5a0: 38          8
    lda l00c4                                                         ; a5a1: a5 c4       ..
    sbc l00c1                                                         ; a5a3: e5 c1       ..
    sta l00c4                                                         ; a5a5: 85 c4       ..
    bcs ca5ab                                                         ; a5a7: b0 02       ..
    dec l00c5                                                         ; a5a9: c6 c5       ..
; $a5ab referenced 2 times by $a536, $a5a7
ca5ab
    lda l00c4                                                         ; a5ab: a5 c4       ..
    ora l00c5                                                         ; a5ad: 05 c5       ..
    bne ca538                                                         ; a5af: d0 87       ..
    rts                                                               ; a5b1: 60          `

; $a5b2 referenced 2 times by $a55e, $a584
sub_ca5b2
    lda #$ff                                                          ; a5b2: a9 ff       ..
    sta l1074                                                         ; a5b4: 8d 74 10    .t.
    sta l1075                                                         ; a5b7: 8d 75 10    .u.
    rts                                                               ; a5ba: 60          `

sub_ca5bb
    lda #0                                                            ; a5bb: a9 00       ..
    beq ca5c4                                                         ; a5bd: f0 05       ..
sub_ca5bf
    lda #$ff                                                          ; a5bf: a9 ff       ..
    sta l1082                                                         ; a5c1: 8d 82 10    ...
; $a5c4 referenced 1 time by $a5bd
ca5c4
    sta l00c9                                                         ; a5c4: 85 c9       ..
    sta l1090                                                         ; a5c6: 8d 90 10    ...
    bpl ca5e5                                                         ; a5c9: 10 1a       ..
    jsr sub_ca14a                                                     ; a5cb: 20 4a a1     J.
    jsr sub_c8456                                                     ; a5ce: 20 56 84     V.
    sta l109f                                                         ; a5d1: 8d 9f 10    ...
    bcs ca5e2                                                         ; a5d4: b0 0c       ..
    cmp #$23 ; '#'                                                    ; a5d6: c9 23       .#
    beq ca5e5                                                         ; a5d8: f0 0b       ..
    cmp #$28 ; '('                                                    ; a5da: c9 28       .(
    beq ca5e5                                                         ; a5dc: f0 07       ..
    cmp #$50 ; 'P'                                                    ; a5de: c9 50       .P
    beq ca5e5                                                         ; a5e0: f0 03       ..
; $a5e2 referenced 1 time by $a5d4
ca5e2
    jmp ca14f                                                         ; a5e2: 4c 4f a1    LO.

; $a5e5 referenced 4 times by $a5c9, $a5d8, $a5dc, $a5e0
ca5e5
    jsr clc_jmp_gsinit                                                ; a5e5: 20 4c 87     L.
    sty l00ca                                                         ; a5e8: 84 ca       ..
    bne ca637                                                         ; a5ea: d0 4b       .K
    bit l00c9                                                         ; a5ec: 24 c9       $.
    bmi ca5fb                                                         ; a5ee: 30 0b       0.
    jsr print_inline_l809f_top_bit_clear                              ; a5f0: 20 77 80     w.
    !text "Verify"                                                    ; a5f3: 56 65 72... Ver

    bcc ca605                                                         ; a5f9: 90 0a       ..
; $a5fb referenced 1 time by $a5ee
ca5fb
    jsr print_inline_l809f_top_bit_clear                              ; a5fb: 20 77 80     w.
    !text "Format"                                                    ; a5fe: 46 6f 72... For

    nop                                                               ; a604: ea          .
; $a605 referenced 1 time by $a5f9
ca605
    jsr print_inline_l809f_top_bit_clear                              ; a605: 20 77 80     w.
    !text " which drive ? "                                           ; a608: 20 77 68...  wh

    nop                                                               ; a617: ea          .
    jsr osrdch                                                        ; a618: 20 e0 ff     ..            ; Read a character from the current input stream
    bcs ca65d                                                         ; a61b: b0 40       .@
    cmp #$20 ; ' '                                                    ; a61d: c9 20       .              ; A=character read
    bcc ca660                                                         ; a61f: 90 3f       .?
    jsr c809f                                                         ; a621: 20 9f 80     ..
    sec                                                               ; a624: 38          8
    sbc #$30 ; '0'                                                    ; a625: e9 30       .0
    bcc ca660                                                         ; a627: 90 37       .7
    cmp #4                                                            ; a629: c9 04       ..
    bcs ca660                                                         ; a62b: b0 33       .3
    sta l00cd                                                         ; a62d: 85 cd       ..
    jsr ca3dc                                                         ; a62f: 20 dc a3     ..
    ldy l00ca                                                         ; a632: a4 ca       ..
    jmp ca63a                                                         ; a634: 4c 3a a6    L:.

; $a637 referenced 2 times by $a5ea, $a65a
ca637
    jsr c8b8b                                                         ; a637: 20 8b 8b     ..
; $a63a referenced 1 time by $a634
ca63a
    sty l00ca                                                         ; a63a: 84 ca       ..
    bit l00c9                                                         ; a63c: 24 c9       $.
    bpl ca647                                                         ; a63e: 10 07       ..
    ldx l00cd                                                         ; a640: a6 cd       ..
    lda #0                                                            ; a642: a9 00       ..
    sta l10de,x                                                       ; a644: 9d de 10    ...
; $a647 referenced 1 time by $a63e
ca647
    bit l1090                                                         ; a647: 2c 90 10    ,..
    bpl ca652                                                         ; a64a: 10 06       ..
    jsr sub_ca315                                                     ; a64c: 20 15 a3     ..
    jsr sub_c9a8d                                                     ; a64f: 20 8d 9a     ..
; $a652 referenced 1 time by $a64a
ca652
    jsr sub_ca663                                                     ; a652: 20 63 a6     c.
    ldy l00ca                                                         ; a655: a4 ca       ..
    jsr clc_jmp_gsinit                                                ; a657: 20 4c 87     L.
    bne ca637                                                         ; a65a: d0 db       ..
    rts                                                               ; a65c: 60          `

; $a65d referenced 1 time by $a61b
ca65d
    jmp c9436                                                         ; a65d: 4c 36 94    L6.

; $a660 referenced 3 times by $a61f, $a627, $a62b
ca660
    jmp c8ba2                                                         ; a660: 4c a2 8b    L..

; $a663 referenced 1 time by $a652
sub_ca663
    bit l00c9                                                         ; a663: 24 c9       $.
    bmi ca675                                                         ; a665: 30 0e       0.
    jsr print_inline_l809f_top_bit_clear                              ; a667: 20 77 80     w.
    !text "Verifying"                                                 ; a66a: 56 65 72... Ver

    bcc ca68a                                                         ; a673: 90 15       ..
; $a675 referenced 1 time by $a665
ca675
    jsr sub_ca76c                                                     ; a675: 20 6c a7     l.
    jsr print_inline_l809f_top_bit_clear                              ; a678: 20 77 80     w.
    !text "Formatting"                                                ; a67b: 46 6f 72... For

    ldx l00cd                                                         ; a685: a6 cd       ..
    stx l1090                                                         ; a687: 8e 90 10    ...
; $a68a referenced 1 time by $a673
ca68a
    jsr print_inline_l809f_top_bit_clear                              ; a68a: 20 77 80     w.
    !text " drive "                                                   ; a68d: 20 64 72...  dr

    lda l00cd                                                         ; a694: a5 cd       ..
    jsr sub_c80c3                                                     ; a696: 20 c3 80     ..
    jsr print_inline_l809f_top_bit_clear                              ; a699: 20 77 80     w.
    !text " track   "                                                 ; a69c: 20 74 72...  tr

    nop                                                               ; a6a5: ea          .
    bit l00c9                                                         ; a6a6: 24 c9       $.
    bmi ca6b6                                                         ; a6a8: 30 0c       0.
    jsr sub_ca7ce                                                     ; a6aa: 20 ce a7     ..
    txa                                                               ; a6ad: 8a          .
    bne ca6b3                                                         ; a6ae: d0 03       ..
    jmp ca3dc                                                         ; a6b0: 4c dc a3    L..

; $a6b3 referenced 1 time by $a6ae
ca6b3
    sta l109f                                                         ; a6b3: 8d 9f 10    ...
; $a6b6 referenced 1 time by $a6a8
ca6b6
    lda #0                                                            ; a6b6: a9 00       ..
    sta l1097                                                         ; a6b8: 8d 97 10    ...
; $a6bb referenced 1 time by $a731
ca6bb
    lda #8                                                            ; a6bb: a9 08       ..
    jsr c809f                                                         ; a6bd: 20 9f 80     ..
    jsr c809f                                                         ; a6c0: 20 9f 80     ..
    lda l1097                                                         ; a6c3: ad 97 10    ...
    jsr sub_c80bb                                                     ; a6c6: 20 bb 80     ..
    lda #6                                                            ; a6c9: a9 06       ..
    sta l109d                                                         ; a6cb: 8d 9d 10    ...
; $a6ce referenced 1 time by $a708
ca6ce
    jsr sub_ca73d                                                     ; a6ce: 20 3d a7     =.
    bit l00c9                                                         ; a6d1: 24 c9       $.
    bpl ca6e2                                                         ; a6d3: 10 0d       ..
    jsr sub_ca788                                                     ; a6d5: 20 88 a7     ..
    ldx #$90                                                          ; a6d8: a2 90       ..
    ldy #$10                                                          ; a6da: a0 10       ..
    jsr c91af                                                         ; a6dc: 20 af 91     ..
    tax                                                               ; a6df: aa          .
    bne ca70a                                                         ; a6e0: d0 28       .(
; $a6e2 referenced 1 time by $a6d3
ca6e2
    lda #0                                                            ; a6e2: a9 00       ..
    sta l1098                                                         ; a6e4: 8d 98 10    ...
    lda l1099                                                         ; a6e7: ad 99 10    ...
    and #$1f                                                          ; a6ea: 29 1f       ).
    sta l1099                                                         ; a6ec: 8d 99 10    ...
    lda #3                                                            ; a6ef: a9 03       ..
    sta l1095                                                         ; a6f1: 8d 95 10    ...
    lda #$5f ; '_'                                                    ; a6f4: a9 5f       ._
    sta l1096                                                         ; a6f6: 8d 96 10    ...
    jsr sub_c9432                                                     ; a6f9: 20 32 94     2.
    ldx #$90                                                          ; a6fc: a2 90       ..
    ldy #$10                                                          ; a6fe: a0 10       ..
    jsr c91af                                                         ; a700: 20 af 91     ..
    beq ca712                                                         ; a703: f0 0d       ..
    dec l109d                                                         ; a705: ce 9d 10    ...
    bne ca6ce                                                         ; a708: d0 c4       ..
; $a70a referenced 1 time by $a6e0
ca70a
    jsr print_inline_l809f_top_bit_clear                              ; a70a: 20 77 80     w.
    !text "?"                                                         ; a70d: 3f          ?

    nop                                                               ; a70e: ea          .
    jmp c94c2                                                         ; a70f: 4c c2 94    L..

; $a712 referenced 1 time by $a703
ca712
    lda l109d                                                         ; a712: ad 9d 10    ...
    cmp #6                                                            ; a715: c9 06       ..
    beq ca721                                                         ; a717: f0 08       ..
    jsr print_inline_l809f_top_bit_clear                              ; a719: 20 77 80     w.
    !text "?   "                                                      ; a71c: 3f 20 20... ?

    nop                                                               ; a720: ea          .
; $a721 referenced 1 time by $a717
ca721
    bit l00c9                                                         ; a721: 24 c9       $.
    bpl ca728                                                         ; a723: 10 03       ..
    jsr sub_ca779                                                     ; a725: 20 79 a7     y.
; $a728 referenced 1 time by $a723
ca728
    inc l1097                                                         ; a728: ee 97 10    ...
    lda l1097                                                         ; a72b: ad 97 10    ...
    cmp l109f                                                         ; a72e: cd 9f 10    ...
    bne ca6bb                                                         ; a731: d0 88       ..
    bit l00c9                                                         ; a733: 24 c9       $.
    bpl ca73a                                                         ; a735: 10 03       ..
    jsr sub_c93f1                                                     ; a737: 20 f1 93     ..
; $a73a referenced 1 time by $a735
ca73a
    jmp ca3dc                                                         ; a73a: 4c dc a3    L..

; $a73d referenced 1 time by $a6ce
sub_ca73d
    ldx #0                                                            ; a73d: a2 00       ..
    stx l1091                                                         ; a73f: 8e 91 10    ...
    stx l109a                                                         ; a742: 8e 9a 10    ...
    dex                                                               ; a745: ca          .
    stx l1093                                                         ; a746: 8e 93 10    ...
    stx l1094                                                         ; a749: 8e 94 10    ...
    lda l10cf                                                         ; a74c: ad cf 10    ...
    sta l1092                                                         ; a74f: 8d 92 10    ...
    lda #5                                                            ; a752: a9 05       ..
    sta l1095                                                         ; a754: 8d 95 10    ...
    lda #$63 ; 'c'                                                    ; a757: a9 63       .c
    sta l1096                                                         ; a759: 8d 96 10    ...
    lda #$2a ; '*'                                                    ; a75c: a9 2a       .*
    sta l1099                                                         ; a75e: 8d 99 10    ...
    ldx #$10                                                          ; a761: a2 10       ..
    ldy #$13                                                          ; a763: a0 13       ..
    stx l109b                                                         ; a765: 8e 9b 10    ...
    sty l1098                                                         ; a768: 8c 98 10    ...
    rts                                                               ; a76b: 60          `

; $a76c referenced 1 time by $a675
sub_ca76c
    lda #0                                                            ; a76c: a9 00       ..
    tay                                                               ; a76e: a8          .
; $a76f referenced 1 time by $a776
loop_ca76f
    sta l0e00,y                                                       ; a76f: 99 00 0e    ...
    sta l0f00,y                                                       ; a772: 99 00 0f    ...
    iny                                                               ; a775: c8          .
    bne loop_ca76f                                                    ; a776: d0 f7       ..
    rts                                                               ; a778: 60          `

; $a779 referenced 1 time by $a725
sub_ca779
    lda #$0a                                                          ; a779: a9 0a       ..
    clc                                                               ; a77b: 18          .
    adc l0f07                                                         ; a77c: 6d 07 0f    m..
    sta l0f07                                                         ; a77f: 8d 07 0f    ...
    bcc ca787                                                         ; a782: 90 03       ..
    inc l0f06                                                         ; a784: ee 06 0f    ...
; $a787 referenced 1 time by $a782
ca787
    rts                                                               ; a787: 60          `

; $a788 referenced 1 time by $a6d5
sub_ca788
    lda #0                                                            ; a788: a9 00       ..
    sta l00b0                                                         ; a78a: 85 b0       ..
    lda l10cf                                                         ; a78c: ad cf 10    ...
    sta l00b1                                                         ; a78f: 85 b1       ..
    lda #$0a                                                          ; a791: a9 0a       ..
    sta l00b2                                                         ; a793: 85 b2       ..
    lda l1097                                                         ; a795: ad 97 10    ...
    beq ca7a4                                                         ; a798: f0 0a       ..
    ldy #2                                                            ; a79a: a0 02       ..
    lda (l00b0),y                                                     ; a79c: b1 b0       ..
    clc                                                               ; a79e: 18          .
    adc #7                                                            ; a79f: 69 07       i.
    jsr sub_ca7c5                                                     ; a7a1: 20 c5 a7     ..
; $a7a4 referenced 1 time by $a798
ca7a4
    tax                                                               ; a7a4: aa          .
    ldy #0                                                            ; a7a5: a0 00       ..
; $a7a7 referenced 1 time by $a7c1
loop_ca7a7
    lda l1097                                                         ; a7a7: ad 97 10    ...
    sta (l00b0),y                                                     ; a7aa: 91 b0       ..
    iny                                                               ; a7ac: c8          .
    lda #0                                                            ; a7ad: a9 00       ..
    sta (l00b0),y                                                     ; a7af: 91 b0       ..
    iny                                                               ; a7b1: c8          .
    txa                                                               ; a7b2: 8a          .
    sta (l00b0),y                                                     ; a7b3: 91 b0       ..
    iny                                                               ; a7b5: c8          .
    lda #1                                                            ; a7b6: a9 01       ..
    sta (l00b0),y                                                     ; a7b8: 91 b0       ..
    iny                                                               ; a7ba: c8          .
    inx                                                               ; a7bb: e8          .
    jsr sub_ca7c4                                                     ; a7bc: 20 c4 a7     ..
    dec l00b2                                                         ; a7bf: c6 b2       ..
    bne loop_ca7a7                                                    ; a7c1: d0 e4       ..
    rts                                                               ; a7c3: 60          `

; $a7c4 referenced 1 time by $a7bc
sub_ca7c4
    txa                                                               ; a7c4: 8a          .
; $a7c5 referenced 1 time by $a7a1
sub_ca7c5
    sec                                                               ; a7c5: 38          8
; $a7c6 referenced 1 time by $a7c8
loop_ca7c6
    sbc #$0a                                                          ; a7c6: e9 0a       ..
    bcs loop_ca7c6                                                    ; a7c8: b0 fc       ..
    adc #$0a                                                          ; a7ca: 69 0a       i.
    tax                                                               ; a7cc: aa          .
    rts                                                               ; a7cd: 60          `

; $a7ce referenced 1 time by $a6aa
sub_ca7ce
    jsr sub_c93f5                                                     ; a7ce: 20 f5 93     ..
    lda l0f06                                                         ; a7d1: ad 06 0f    ...
    and #3                                                            ; a7d4: 29 03       ).
    tax                                                               ; a7d6: aa          .
    lda l0f07                                                         ; a7d7: ad 07 0f    ...
    ldy #$0a                                                          ; a7da: a0 0a       ..
    sty l00b0                                                         ; a7dc: 84 b0       ..
    ldy #$ff                                                          ; a7de: a0 ff       ..
; $a7e0 referenced 1 time by $a7e7
loop_ca7e0
    sec                                                               ; a7e0: 38          8
; $a7e1 referenced 1 time by $a7e4
loop_ca7e1
    iny                                                               ; a7e1: c8          .
    sbc l00b0                                                         ; a7e2: e5 b0       ..
    bcs loop_ca7e1                                                    ; a7e4: b0 fb       ..
    dex                                                               ; a7e6: ca          .
    bpl loop_ca7e0                                                    ; a7e7: 10 f7       ..
    adc l00b0                                                         ; a7e9: 65 b0       e.
    pha                                                               ; a7eb: 48          H
    tya                                                               ; a7ec: 98          .
    tax                                                               ; a7ed: aa          .
    pla                                                               ; a7ee: 68          h
    beq ca7f2                                                         ; a7ef: f0 01       ..
    inx                                                               ; a7f1: e8          .
; $a7f2 referenced 1 time by $a7ef
ca7f2
    rts                                                               ; a7f2: 60          `

sub_ca7f3
    sec                                                               ; a7f3: 38          8
    bcs ca7f7                                                         ; a7f4: b0 01       ..
sub_ca7f6
    clc                                                               ; a7f6: 18          .
; $a7f7 referenced 1 time by $a7f4
ca7f7
    ror l00c6                                                         ; a7f7: 66 c6       f.
    jsr sub_c8b86                                                     ; a7f9: 20 86 8b     ..
    jsr sub_c8380                                                     ; a7fc: 20 80 83     ..
    bit l00c6                                                         ; a7ff: 24 c6       $.
    bmi ca818                                                         ; a801: 30 15       0.
    jsr print_inline_osasci_top_bit_clear                             ; a803: 20 9c a9     ..
    !text "Address :  Length", $0d                                    ; a806: 41 64 64... Add

; $a818 referenced 1 time by $a801
ca818
    lda l0f06                                                         ; a818: ad 06 0f    ...
    and #3                                                            ; a81b: 29 03       ).
    sta l00c5                                                         ; a81d: 85 c5       ..
    sta l00c2                                                         ; a81f: 85 c2       ..
    lda l0f07                                                         ; a821: ad 07 0f    ...
    sta l00c4                                                         ; a824: 85 c4       ..
    sec                                                               ; a826: 38          8
    sbc #2                                                            ; a827: e9 02       ..
    sta l00c1                                                         ; a829: 85 c1       ..
    bcs ca82f                                                         ; a82b: b0 02       ..
    dec l00c2                                                         ; a82d: c6 c2       ..
; $a82f referenced 1 time by $a82b
ca82f
    lda #2                                                            ; a82f: a9 02       ..
    sta l00bb                                                         ; a831: 85 bb       ..
    lda #0                                                            ; a833: a9 00       ..
    sta l00bc                                                         ; a835: 85 bc       ..
    sta l00bf                                                         ; a837: 85 bf       ..
    sta l00c0                                                         ; a839: 85 c0       ..
    lda l0f05                                                         ; a83b: ad 05 0f    ...
    and #$f8                                                          ; a83e: 29 f8       ).
    tay                                                               ; a840: a8          .
    beq ca86b                                                         ; a841: f0 28       .(
    bne ca856                                                         ; a843: d0 11       ..
; $a845 referenced 2 times by $a869, $a889
ca845
    jsr sub_ca8e2                                                     ; a845: 20 e2 a8     ..
    jsr sub_c82b2                                                     ; a848: 20 b2 82     ..
    lda l00c4                                                         ; a84b: a5 c4       ..
    sec                                                               ; a84d: 38          8
    sbc l00bb                                                         ; a84e: e5 bb       ..
    lda l00c5                                                         ; a850: a5 c5       ..
    sbc l00bc                                                         ; a852: e5 bc       ..
    bcc ca86b                                                         ; a854: 90 15       ..
; $a856 referenced 1 time by $a843
ca856
    lda l0f07,y                                                       ; a856: b9 07 0f    ...
    sec                                                               ; a859: 38          8
    sbc l00bb                                                         ; a85a: e5 bb       ..
    sta l00c1                                                         ; a85c: 85 c1       ..
    php                                                               ; a85e: 08          .
    lda l0f06,y                                                       ; a85f: b9 06 0f    ...
    and #3                                                            ; a862: 29 03       ).
    plp                                                               ; a864: 28          (
    sbc l00bc                                                         ; a865: e5 bc       ..
    sta l00c2                                                         ; a867: 85 c2       ..
    bcc ca845                                                         ; a869: 90 da       ..
; $a86b referenced 2 times by $a841, $a854
ca86b
    sty l00bd                                                         ; a86b: 84 bd       ..
    bit l00c6                                                         ; a86d: 24 c6       $.
    bmi ca87a                                                         ; a86f: 30 09       0.
    lda l00c1                                                         ; a871: a5 c1       ..
    ora l00c2                                                         ; a873: 05 c2       ..
    beq ca87a                                                         ; a875: f0 03       ..
    jsr sub_ca8be                                                     ; a877: 20 be a8     ..
; $a87a referenced 2 times by $a86f, $a875
ca87a
    lda l00c1                                                         ; a87a: a5 c1       ..
    clc                                                               ; a87c: 18          .
    adc l00bf                                                         ; a87d: 65 bf       e.
    sta l00bf                                                         ; a87f: 85 bf       ..
    lda l00c2                                                         ; a881: a5 c2       ..
    adc l00c0                                                         ; a883: 65 c0       e.
    sta l00c0                                                         ; a885: 85 c0       ..
    ldy l00bd                                                         ; a887: a4 bd       ..
    bne ca845                                                         ; a889: d0 ba       ..
    bit l00c6                                                         ; a88b: 24 c6       $.
    bpl ca8bd                                                         ; a88d: 10 2e       ..
    tay                                                               ; a88f: a8          .
    ldx l00bf                                                         ; a890: a6 bf       ..
    lda #$f8                                                          ; a892: a9 f8       ..
    sec                                                               ; a894: 38          8
    sbc l0f05                                                         ; a895: ed 05 0f    ...
    jsr sub_ca90d                                                     ; a898: 20 0d a9     ..
    jsr print_inline_osasci_top_bit_clear                             ; a89b: 20 9c a9     ..
    !text "Free", $0d                                                 ; a89e: 46 72 65... Fre

    lda l00c4                                                         ; a8a3: a5 c4       ..
    sec                                                               ; a8a5: 38          8
    sbc l00bf                                                         ; a8a6: e5 bf       ..
    tax                                                               ; a8a8: aa          .
    lda l00c5                                                         ; a8a9: a5 c5       ..
    sbc l00c0                                                         ; a8ab: e5 c0       ..
    tay                                                               ; a8ad: a8          .
    lda l0f05                                                         ; a8ae: ad 05 0f    ...
    jsr sub_ca90d                                                     ; a8b1: 20 0d a9     ..
    jsr print_inline_osasci_top_bit_clear                             ; a8b4: 20 9c a9     ..
    !text "Used", $0d                                                 ; a8b7: 55 73 65... Use

    nop                                                               ; a8bc: ea          .
; $a8bd referenced 1 time by $a88d
ca8bd
    rts                                                               ; a8bd: 60          `

; $a8be referenced 1 time by $a877
sub_ca8be
    lda l00bc                                                         ; a8be: a5 bc       ..
    jsr sub_ca9ca                                                     ; a8c0: 20 ca a9     ..
    lda l00bb                                                         ; a8c3: a5 bb       ..
    jsr sub_ca9c2                                                     ; a8c5: 20 c2 a9     ..
    jsr print_inline_osasci_top_bit_clear                             ; a8c8: 20 9c a9     ..
    !text "     :  "                                                  ; a8cb: 20 20 20...

    lda l00c2                                                         ; a8d3: a5 c2       ..
    jsr sub_ca9ca                                                     ; a8d5: 20 ca a9     ..
    lda l00c1                                                         ; a8d8: a5 c1       ..
    jsr sub_ca9c2                                                     ; a8da: 20 c2 a9     ..
    lda #$0d                                                          ; a8dd: a9 0d       ..
    jsr osasci                                                        ; a8df: 20 e3 ff     ..            ; Write character 13
; $a8e2 referenced 1 time by $a845
sub_ca8e2
    lda l0f06,y                                                       ; a8e2: b9 06 0f    ...
    pha                                                               ; a8e5: 48          H
    jsr sub_c81b0                                                     ; a8e6: 20 b0 81     ..
    sta l00bc                                                         ; a8e9: 85 bc       ..
    pla                                                               ; a8eb: 68          h
    and #3                                                            ; a8ec: 29 03       ).
    clc                                                               ; a8ee: 18          .
    adc l00bc                                                         ; a8ef: 65 bc       e.
    sta l00bc                                                         ; a8f1: 85 bc       ..
    lda l0f04,y                                                       ; a8f3: b9 04 0f    ...
    beq ca8fa                                                         ; a8f6: f0 02       ..
    lda #1                                                            ; a8f8: a9 01       ..
; $a8fa referenced 1 time by $a8f6
ca8fa
    clc                                                               ; a8fa: 18          .
    adc l0f05,y                                                       ; a8fb: 79 05 0f    y..
    bcc ca902                                                         ; a8fe: 90 02       ..
    inc l00bc                                                         ; a900: e6 bc       ..
; $a902 referenced 1 time by $a8fe
ca902
    clc                                                               ; a902: 18          .
    adc l0f07,y                                                       ; a903: 79 07 0f    y..
    sta l00bb                                                         ; a906: 85 bb       ..
    bcc ca90c                                                         ; a908: 90 02       ..
    inc l00bc                                                         ; a90a: e6 bc       ..
; $a90c referenced 1 time by $a908
ca90c
    rts                                                               ; a90c: 60          `

; $a90d referenced 2 times by $a898, $a8b1
sub_ca90d
    jsr sub_c81c0                                                     ; a90d: 20 c0 81     ..
    jsr sub_ca9bf                                                     ; a910: 20 bf a9     ..
    jsr print_inline_osasci_top_bit_clear                             ; a913: 20 9c a9     ..
    !text " Files "                                                   ; a916: 20 46 69...  Fi

    stx l00bc                                                         ; a91d: 86 bc       ..
    sty l00bd                                                         ; a91f: 84 bd       ..
    tya                                                               ; a921: 98          .
    jsr sub_ca9ca                                                     ; a922: 20 ca a9     ..
    txa                                                               ; a925: 8a          .
    jsr sub_ca9c2                                                     ; a926: 20 c2 a9     ..
    jsr print_inline_osasci_top_bit_clear                             ; a929: 20 9c a9     ..
    !text " Sectors "                                                 ; a92c: 20 53 65...  Se

    lda #0                                                            ; a935: a9 00       ..
    sta l00bb                                                         ; a937: 85 bb       ..
    sta l00be                                                         ; a939: 85 be       ..
    ldx #$1f                                                          ; a93b: a2 1f       ..
    stx l00c1                                                         ; a93d: 86 c1       ..
    ldx #9                                                            ; a93f: a2 09       ..
; $a941 referenced 1 time by $a945
loop_ca941
    sta l1000,x                                                       ; a941: 9d 00 10    ...
    dex                                                               ; a944: ca          .
    bpl loop_ca941                                                    ; a945: 10 fa       ..
; $a947 referenced 1 time by $a966
loop_ca947
    asl l00bb                                                         ; a947: 06 bb       ..
    rol l00bc                                                         ; a949: 26 bc       &.
    rol l00bd                                                         ; a94b: 26 bd       &.
    rol l00be                                                         ; a94d: 26 be       &.
    ldx #0                                                            ; a94f: a2 00       ..
    ldy #9                                                            ; a951: a0 09       ..
; $a953 referenced 1 time by $a962
loop_ca953
    lda l1000,x                                                       ; a953: bd 00 10    ...
    rol                                                               ; a956: 2a          *
    cmp #$0a                                                          ; a957: c9 0a       ..
    bcc ca95d                                                         ; a959: 90 02       ..
    sbc #$0a                                                          ; a95b: e9 0a       ..
; $a95d referenced 1 time by $a959
ca95d
    sta l1000,x                                                       ; a95d: 9d 00 10    ...
    inx                                                               ; a960: e8          .
    dey                                                               ; a961: 88          .
    bpl loop_ca953                                                    ; a962: 10 ef       ..
    dec l00c1                                                         ; a964: c6 c1       ..
    bpl loop_ca947                                                    ; a966: 10 df       ..
    ldy #$20 ; ' '                                                    ; a968: a0 20       .
    ldx #5                                                            ; a96a: a2 05       ..
; $a96c referenced 1 time by $a98e
ca96c
    bne ca970                                                         ; a96c: d0 02       ..
    ldy #$2c ; ','                                                    ; a96e: a0 2c       .,
; $a970 referenced 1 time by $a96c
ca970
    lda l1000,x                                                       ; a970: bd 00 10    ...
    bne ca97d                                                         ; a973: d0 08       ..
    cpy #$2c ; ','                                                    ; a975: c0 2c       .,
    beq ca97d                                                         ; a977: f0 04       ..
    lda #$20 ; ' '                                                    ; a979: a9 20       .
    bne ca982                                                         ; a97b: d0 05       ..
; $a97d referenced 2 times by $a973, $a977
ca97d
    ldy #$2c ; ','                                                    ; a97d: a0 2c       .,
    clc                                                               ; a97f: 18          .
    adc #'0'                                                          ; a980: 69 30       i0
; $a982 referenced 1 time by $a97b
ca982
    jsr osasci                                                        ; a982: 20 e3 ff     ..            ; Write character
    cpx #3                                                            ; a985: e0 03       ..
    bne ca98d                                                         ; a987: d0 04       ..
    tya                                                               ; a989: 98          .
    jsr osasci                                                        ; a98a: 20 e3 ff     ..            ; Write character
; $a98d referenced 1 time by $a987
ca98d
    dex                                                               ; a98d: ca          .
    bpl ca96c                                                         ; a98e: 10 dc       ..
    jsr print_inline_osasci_top_bit_clear                             ; a990: 20 9c a9     ..
    !text " Bytes "                                                   ; a993: 20 42 79...  By

    nop                                                               ; a99a: ea          .
    rts                                                               ; a99b: 60          `

; $a99c referenced 7 times by $a803, $a89b, $a8b4, $a8c8, $a913, $a929, $a990
print_inline_osasci_top_bit_clear
    sta l00b3                                                         ; a99c: 85 b3       ..
    pla                                                               ; a99e: 68          h
    sta l00ae                                                         ; a99f: 85 ae       ..
    pla                                                               ; a9a1: 68          h
    sta l00af                                                         ; a9a2: 85 af       ..
    lda l00b3                                                         ; a9a4: a5 b3       ..
    pha                                                               ; a9a6: 48          H
    tya                                                               ; a9a7: 98          .
    pha                                                               ; a9a8: 48          H
    ldy #0                                                            ; a9a9: a0 00       ..
; $a9ab referenced 1 time by $a9b5
loop_ca9ab
    jsr inc16_ae                                                      ; a9ab: 20 dc 83     ..
    lda (l00ae),y                                                     ; a9ae: b1 ae       ..
    bmi ca9b8                                                         ; a9b0: 30 06       0.
    jsr osasci                                                        ; a9b2: 20 e3 ff     ..            ; Write character
    jmp loop_ca9ab                                                    ; a9b5: 4c ab a9    L..

; $a9b8 referenced 1 time by $a9b0
ca9b8
    pla                                                               ; a9b8: 68          h
    tay                                                               ; a9b9: a8          .
    pla                                                               ; a9ba: 68          h
    clc                                                               ; a9bb: 18          .
    jmp (l00ae)                                                       ; a9bc: 6c ae 00    l..

; $a9bf referenced 1 time by $a910
sub_ca9bf
    jsr sub_c841b                                                     ; a9bf: 20 1b 84     ..
; $a9c2 referenced 3 times by $a8c5, $a8da, $a926
sub_ca9c2
    pha                                                               ; a9c2: 48          H
    jsr sub_c81bf                                                     ; a9c3: 20 bf 81     ..
    jsr sub_ca9ca                                                     ; a9c6: 20 ca a9     ..
    pla                                                               ; a9c9: 68          h
; $a9ca referenced 4 times by $a8c0, $a8d5, $a922, $a9c6
sub_ca9ca
    jsr sub_c80c8                                                     ; a9ca: 20 c8 80     ..
    jmp osasci                                                        ; a9cd: 4c e3 ff    L..            ; Write character

sub_ca9d0
    lda #0                                                            ; a9d0: a9 00       ..
    sta l00a8                                                         ; a9d2: 85 a8       ..
    jsr sub_caaea                                                     ; a9d4: 20 ea aa     ..
    lda #$0f                                                          ; a9d7: a9 0f       ..
    sta l00aa                                                         ; a9d9: 85 aa       ..
    jsr sub_caadd                                                     ; a9db: 20 dd aa     ..
    sec                                                               ; a9de: 38          8
    jsr gsinit                                                        ; a9df: 20 c2 ff     ..
    sty l00ab                                                         ; a9e2: 84 ab       ..
    clc                                                               ; a9e4: 18          .
    beq ca9ff                                                         ; a9e5: f0 18       ..
; $a9e7 referenced 1 time by $a9fc
loop_ca9e7
    jsr sub_c8456                                                     ; a9e7: 20 56 84     V.
    bcs ca9ff                                                         ; a9ea: b0 13       ..
    sty l00ab                                                         ; a9ec: 84 ab       ..
    and #$0f                                                          ; a9ee: 29 0f       ).
    sta l00aa                                                         ; a9f0: 85 aa       ..
    jsr sub_caa53                                                     ; a9f2: 20 53 aa     S.
    ldy l00ab                                                         ; a9f5: a4 ab       ..
    jsr clc_jmp_gsinit                                                ; a9f7: 20 4c 87     L.
    sty l00ab                                                         ; a9fa: 84 ab       ..
    bne loop_ca9e7                                                    ; a9fc: d0 e9       ..
    rts                                                               ; a9fe: 60          `

; $a9ff referenced 2 times by $a9e5, $a9ea
ca9ff
    ror l00a8                                                         ; a9ff: 66 a8       f.
; $aa01 referenced 1 time by $aa0f
loop_caa01
    bit l00a8                                                         ; aa01: 24 a8       $.
    bpl caa0a                                                         ; aa03: 10 05       ..
    jsr sub_caa12                                                     ; aa05: 20 12 aa     ..
    bcc caa0d                                                         ; aa08: 90 03       ..
; $aa0a referenced 1 time by $aa03
caa0a
    jsr sub_caa53                                                     ; aa0a: 20 53 aa     S.
; $aa0d referenced 1 time by $aa08
caa0d
    dec l00aa                                                         ; aa0d: c6 aa       ..
    bpl loop_caa01                                                    ; aa0f: 10 f0       ..
    rts                                                               ; aa11: 60          `

; $aa12 referenced 1 time by $aa05
sub_caa12
    lda #9                                                            ; aa12: a9 09       ..
    sta osrdsc_ptr                                                    ; aa14: 85 f6       ..
    lda #$80                                                          ; aa16: a9 80       ..
    sta l00f7                                                         ; aa18: 85 f7       ..
    ldy l00ab                                                         ; aa1a: a4 ab       ..
; $aa1c referenced 2 times by $aa39, $aa40
caa1c
    lda (os_text_ptr),y                                               ; aa1c: b1 f2       ..
    cmp #$0d                                                          ; aa1e: c9 0d       ..
    beq caa44                                                         ; aa20: f0 22       ."
    cmp #$22 ; '"'                                                    ; aa22: c9 22       ."
    beq caa44                                                         ; aa24: f0 1e       ..
    iny                                                               ; aa26: c8          .
    cmp #$2a ; '*'                                                    ; aa27: c9 2a       .*
    beq caa51                                                         ; aa29: f0 26       .&
    jsr sub_c82fe                                                     ; aa2b: 20 fe 82     ..
    sta l00ae                                                         ; aa2e: 85 ae       ..
    jsr sub_caacf                                                     ; aa30: 20 cf aa     ..
    beq caa42                                                         ; aa33: f0 0d       ..
    ldx l00ae                                                         ; aa35: a6 ae       ..
    cpx #$23 ; '#'                                                    ; aa37: e0 23       .#
    beq caa1c                                                         ; aa39: f0 e1       ..
    jsr sub_c82fe                                                     ; aa3b: 20 fe 82     ..
    cmp l00ae                                                         ; aa3e: c5 ae       ..
    beq caa1c                                                         ; aa40: f0 da       ..
; $aa42 referenced 3 times by $aa33, $aa4f, $aa57
caa42
    clc                                                               ; aa42: 18          .
    rts                                                               ; aa43: 60          `

; $aa44 referenced 3 times by $aa20, $aa24, $aa4b
caa44
    jsr sub_caacf                                                     ; aa44: 20 cf aa     ..
    beq caa51                                                         ; aa47: f0 08       ..
    cmp #$20 ; ' '                                                    ; aa49: c9 20       .
    beq caa44                                                         ; aa4b: f0 f7       ..
    cmp #$0d                                                          ; aa4d: c9 0d       ..
    bne caa42                                                         ; aa4f: d0 f1       ..
; $aa51 referenced 2 times by $aa29, $aa47
caa51
    sec                                                               ; aa51: 38          8
    rts                                                               ; aa52: 60          `

; $aa53 referenced 2 times by $a9f2, $aa0a
sub_caa53
    ldy l00aa                                                         ; aa53: a4 aa       ..
    lda (l00b4),y                                                     ; aa55: b1 b4       ..
    beq caa42                                                         ; aa57: f0 e9       ..
    pha                                                               ; aa59: 48          H
    jsr print_inline_l809f_top_bit_clear                              ; aa5a: 20 77 80     w.
    !text "Rom "                                                      ; aa5d: 52 6f 6d... Rom

    tya                                                               ; aa61: 98          .
    jsr sub_c80b8                                                     ; aa62: 20 b8 80     ..
    jsr print_inline_l809f_top_bit_clear                              ; aa65: 20 77 80     w.
    !text " : "                                                       ; aa68: 20 3a 20     :

    lda #$28 ; '('                                                    ; aa6b: a9 28       .(
    jsr c809f                                                         ; aa6d: 20 9f 80     ..
    pla                                                               ; aa70: 68          h
    pha                                                               ; aa71: 48          H
    bmi caa78                                                         ; aa72: 30 04       0.
    ldy #$20 ; ' '                                                    ; aa74: a0 20       .
    bne caa7a                                                         ; aa76: d0 02       ..
; $aa78 referenced 1 time by $aa72
caa78
    ldy #$53 ; 'S'                                                    ; aa78: a0 53       .S
; $aa7a referenced 1 time by $aa76
caa7a
    tya                                                               ; aa7a: 98          .
    jsr c809f                                                         ; aa7b: 20 9f 80     ..
    pla                                                               ; aa7e: 68          h
    ldy #$20 ; ' '                                                    ; aa7f: a0 20       .
    asl                                                               ; aa81: 0a          .
    bpl caa86                                                         ; aa82: 10 02       ..
    ldy #$4c ; 'L'                                                    ; aa84: a0 4c       .L
; $aa86 referenced 1 time by $aa82
caa86
    tya                                                               ; aa86: 98          .
    jsr c809f                                                         ; aa87: 20 9f 80     ..
    lda #$29 ; ')'                                                    ; aa8a: a9 29       .)
    jsr c809f                                                         ; aa8c: 20 9f 80     ..
    jsr cac0f                                                         ; aa8f: 20 0f ac     ..
    jsr sub_caa9a                                                     ; aa92: 20 9a aa     ..
    jsr ca3dc                                                         ; aa95: 20 dc a3     ..
    sec                                                               ; aa98: 38          8
    rts                                                               ; aa99: 60          `

; $aa9a referenced 1 time by $aa92
sub_caa9a
    lda #7                                                            ; aa9a: a9 07       ..
    sta osrdsc_ptr                                                    ; aa9c: 85 f6       ..
    lda #$80                                                          ; aa9e: a9 80       ..
    sta l00f7                                                         ; aaa0: 85 f7       ..
    jsr sub_caacf                                                     ; aaa2: 20 cf aa     ..
    sta l00ae                                                         ; aaa5: 85 ae       ..
    inc osrdsc_ptr                                                    ; aaa7: e6 f6       ..
    ldy #$1e                                                          ; aaa9: a0 1e       ..
    jsr sub_caac2                                                     ; aaab: 20 c2 aa     ..
    bcs caab7                                                         ; aaae: b0 07       ..
    jsr cac0f                                                         ; aab0: 20 0f ac     ..
    dey                                                               ; aab3: 88          .
    jsr sub_caac2                                                     ; aab4: 20 c2 aa     ..
; $aab7 referenced 1 time by $aaae
caab7
    rts                                                               ; aab7: 60          `

; $aab8 referenced 1 time by $aacb
loop_caab8
    cmp #$20 ; ' '                                                    ; aab8: c9 20       .
    bcs caabe                                                         ; aaba: b0 02       ..
    lda #$20 ; ' '                                                    ; aabc: a9 20       .
; $aabe referenced 1 time by $aaba
caabe
    jsr c809f                                                         ; aabe: 20 9f 80     ..
    dey                                                               ; aac1: 88          .
; $aac2 referenced 2 times by $aaab, $aab4
sub_caac2
    lda osrdsc_ptr                                                    ; aac2: a5 f6       ..
    cmp l00ae                                                         ; aac4: c5 ae       ..
    bcs caace                                                         ; aac6: b0 06       ..
    jsr sub_caacf                                                     ; aac8: 20 cf aa     ..
    bne loop_caab8                                                    ; aacb: d0 eb       ..
    clc                                                               ; aacd: 18          .
; $aace referenced 1 time by $aac6
caace
    rts                                                               ; aace: 60          `

; $aacf referenced 4 times by $aa30, $aa44, $aaa2, $aac8
sub_caacf
    tya                                                               ; aacf: 98          .
    pha                                                               ; aad0: 48          H
    ldy l00aa                                                         ; aad1: a4 aa       ..             ; Y=ROM number
    jsr osrdsc                                                        ; aad3: 20 b9 ff     ..            ; Read byte from ROM Y or screen
    inc osrdsc_ptr                                                    ; aad6: e6 f6       ..
    tax                                                               ; aad8: aa          .              ; A=byte read
    pla                                                               ; aad9: 68          h
    tay                                                               ; aada: a8          .
    txa                                                               ; aadb: 8a          .
    rts                                                               ; aadc: 60          `

; $aadd referenced 1 time by $a9db
sub_caadd
    jsr sub_c840c                                                     ; aadd: 20 0c 84     ..
    lda #$aa                                                          ; aae0: a9 aa       ..
    jsr osbyte_read                                                   ; aae2: 20 e5 9a     ..
    stx l00b4                                                         ; aae5: 86 b4       ..
    sty l00b5                                                         ; aae7: 84 b5       ..
    rts                                                               ; aae9: 60          `

; $aaea referenced 1 time by $a9d4
sub_caaea
    tsx                                                               ; aaea: ba          .
    lda #0                                                            ; aaeb: a9 00       ..
    sta l0107,x                                                       ; aaed: 9d 07 01    ...
    rts                                                               ; aaf0: 60          `

; $aaf1 referenced 2 times by $ab51, $abd5
sub_caaf1
    ldx romsel_copy                                                   ; aaf1: a6 f4       ..
    lda l0df0,x                                                       ; aaf3: bd f0 0d    ...
    and #$3f ; '?'                                                    ; aaf6: 29 3f       )?
    sta l00ad                                                         ; aaf8: 85 ad       ..
    inc l00ad                                                         ; aafa: e6 ad       ..
    rts                                                               ; aafc: 60          `

sub_caafd
    jsr sub_cac18                                                     ; aafd: 20 18 ac     ..
    lda #0                                                            ; ab00: a9 00       ..
    beq cab09                                                         ; ab02: f0 05       ..
sub_cab04
    jsr sub_cac18                                                     ; ab04: 20 18 ac     ..
    lda #$ff                                                          ; ab07: a9 ff       ..
; $ab09 referenced 1 time by $ab02
cab09
    sta l00ab                                                         ; ab09: 85 ab       ..
    lda #osfind_open_input                                            ; ab0b: a9 40       .@
    jsr osfind                                                        ; ab0d: 20 ce ff     ..            ; Open file for input (A=64)
    tay                                                               ; ab10: a8          .              ; A=file handle (or zero on failure)
    lda #$0d                                                          ; ab11: a9 0d       ..
    cpy #0                                                            ; ab13: c0 00       ..
    bne cab35                                                         ; ab15: d0 1e       ..
; $ab17 referenced 1 time by $ab4f
cab17
    jmp c822a                                                         ; ab17: 4c 2a 82    L*.

; $ab1a referenced 2 times by $ab21, $ab3a
cab1a
    jsr osbget                                                        ; ab1a: 20 d7 ff     ..            ; Read a single byte from an open file Y
    bcs cab3d                                                         ; ab1d: b0 1e       ..
    cmp #$0a                                                          ; ab1f: c9 0a       ..
    beq cab1a                                                         ; ab21: f0 f7       ..
    plp                                                               ; ab23: 28          (
    bne cab2e                                                         ; ab24: d0 08       ..
    pha                                                               ; ab26: 48          H
    jsr sub_cac4e                                                     ; ab27: 20 4e ac     N.
    jsr cac0f                                                         ; ab2a: 20 0f ac     ..
    pla                                                               ; ab2d: 68          h
; $ab2e referenced 1 time by $ab24
cab2e
    jsr osasci                                                        ; ab2e: 20 e3 ff     ..            ; Write character
    bit l00ff                                                         ; ab31: 24 ff       $.
    bmi cab54                                                         ; ab33: 30 1f       0.
; $ab35 referenced 1 time by $ab15
cab35
    and l00ab                                                         ; ab35: 25 ab       %.
    cmp #$0d                                                          ; ab37: c9 0d       ..
    php                                                               ; ab39: 08          .
    jmp cab1a                                                         ; ab3a: 4c 1a ab    L..

; $ab3d referenced 1 time by $ab1d
cab3d
    plp                                                               ; ab3d: 28          (
    jsr osnewl                                                        ; ab3e: 20 e7 ff     ..            ; Write newline (characters 10 and 13)
; $ab41 referenced 2 times by $aba5, $abbf
cab41
    lda #osfind_close                                                 ; ab41: a9 00       ..
    jmp osfind                                                        ; ab43: 4c ce ff    L..            ; Close one or all files

sub_cab46
    jsr sub_cac18                                                     ; ab46: 20 18 ac     ..
    lda #osfind_open_input                                            ; ab49: a9 40       .@
    jsr osfind                                                        ; ab4b: 20 ce ff     ..            ; Open file for input (A=64)
    tay                                                               ; ab4e: a8          .              ; A=file handle (or zero on failure)
    beq cab17                                                         ; ab4f: f0 c6       ..
    jsr sub_caaf1                                                     ; ab51: 20 f1 aa     ..
; $ab54 referenced 2 times by $ab33, $aba7
cab54
    bit l00ff                                                         ; ab54: 24 ff       $.
    bmi cabbc                                                         ; ab56: 30 64       0d
    lda l00a9                                                         ; ab58: a5 a9       ..
    jsr sub_cac62                                                     ; ab5a: 20 62 ac     b.
    lda l00a8                                                         ; ab5d: a5 a8       ..
    jsr sub_cac62                                                     ; ab5f: 20 62 ac     b.
    jsr cac0f                                                         ; ab62: 20 0f ac     ..
    lda #8                                                            ; ab65: a9 08       ..
    sta l00ac                                                         ; ab67: 85 ac       ..
    ldx #0                                                            ; ab69: a2 00       ..
; $ab6b referenced 1 time by $ab7a
loop_cab6b
    jsr osbget                                                        ; ab6b: 20 d7 ff     ..            ; Read a single byte from an open file Y
    bcs cab7d                                                         ; ab6e: b0 0d       ..
    sta (l00ac,x)                                                     ; ab70: 81 ac       ..
    jsr sub_cac62                                                     ; ab72: 20 62 ac     b.
    jsr cac0f                                                         ; ab75: 20 0f ac     ..
    dec l00ac                                                         ; ab78: c6 ac       ..
    bne loop_cab6b                                                    ; ab7a: d0 ef       ..
    clc                                                               ; ab7c: 18          .
; $ab7d referenced 1 time by $ab6e
cab7d
    php                                                               ; ab7d: 08          .
    bcc cab93                                                         ; ab7e: 90 13       ..
; $ab80 referenced 1 time by $ab91
loop_cab80
    lda #$2a ; '*'                                                    ; ab80: a9 2a       .*
    jsr osasci                                                        ; ab82: 20 e3 ff     ..            ; Write character 42
    jsr osasci                                                        ; ab85: 20 e3 ff     ..            ; Write character
    jsr cac0f                                                         ; ab88: 20 0f ac     ..
    lda #0                                                            ; ab8b: a9 00       ..
    sta (l00ac,x)                                                     ; ab8d: 81 ac       ..
    dec l00ac                                                         ; ab8f: c6 ac       ..
    bne loop_cab80                                                    ; ab91: d0 ed       ..
; $ab93 referenced 1 time by $ab7e
cab93
    jsr sub_caba9                                                     ; ab93: 20 a9 ab     ..
    jsr osnewl                                                        ; ab96: 20 e7 ff     ..            ; Write newline (characters 10 and 13)
    lda #8                                                            ; ab99: a9 08       ..
    clc                                                               ; ab9b: 18          .
    adc l00a8                                                         ; ab9c: 65 a8       e.
    sta l00a8                                                         ; ab9e: 85 a8       ..
    bcc caba4                                                         ; aba0: 90 02       ..
    inc l00a9                                                         ; aba2: e6 a9       ..
; $aba4 referenced 1 time by $aba0
caba4
    plp                                                               ; aba4: 28          (
    bcs cab41                                                         ; aba5: b0 9a       ..
    bcc cab54                                                         ; aba7: 90 ab       ..
; $aba9 referenced 1 time by $ab93
sub_caba9
    lda #8                                                            ; aba9: a9 08       ..
    sta l00ac                                                         ; abab: 85 ac       ..
; $abad referenced 1 time by $abb9
loop_cabad
    ldx #0                                                            ; abad: a2 00       ..
    lda (l00ac,x)                                                     ; abaf: a1 ac       ..
    jsr sub_c842c                                                     ; abb1: 20 2c 84     ,.
    jsr osasci                                                        ; abb4: 20 e3 ff     ..            ; Write character
    dec l00ac                                                         ; abb7: c6 ac       ..
    bne loop_cabad                                                    ; abb9: d0 f2       ..
    rts                                                               ; abbb: 60          `

; $abbc referenced 2 times by $ab56, $ac02
cabbc
    jsr sub_c9ad8                                                     ; abbc: 20 d8 9a     ..
    jsr cab41                                                         ; abbf: 20 41 ab     A.
    jmp c9436                                                         ; abc2: 4c 36 94    L6.

sub_cabc5
    jsr sub_cac18                                                     ; abc5: 20 18 ac     ..
    lda #osfind_open_output                                           ; abc8: a9 80       ..
    jsr osfind                                                        ; abca: 20 ce ff     ..            ; Open file for output (A=128)
    sta l00ab                                                         ; abcd: 85 ab       ..             ; A=file handle (or zero on failure)
; $abcf referenced 1 time by $ac09
cabcf
    jsr sub_cac4e                                                     ; abcf: 20 4e ac     N.
    jsr cac0f                                                         ; abd2: 20 0f ac     ..
    jsr sub_caaf1                                                     ; abd5: 20 f1 aa     ..
    ldx #$ac                                                          ; abd8: a2 ac       ..
    ldy #$ff                                                          ; abda: a0 ff       ..
    sty l00ae                                                         ; abdc: 84 ae       ..
    sty l00b0                                                         ; abde: 84 b0       ..
    iny                                                               ; abe0: c8          .
    sty l00ac                                                         ; abe1: 84 ac       ..
    lda #$20 ; ' '                                                    ; abe3: a9 20       .
    sta l00af                                                         ; abe5: 85 af       ..
    tya                                                               ; abe7: 98          .
    jsr osword                                                        ; abe8: 20 f1 ff     ..
    php                                                               ; abeb: 08          .
    sty l00aa                                                         ; abec: 84 aa       ..
    ldy l00ab                                                         ; abee: a4 ab       ..
    ldx #0                                                            ; abf0: a2 00       ..
    beq cabfb                                                         ; abf2: f0 07       ..
; $abf4 referenced 1 time by $abff
loop_cabf4
    lda (l00ac,x)                                                     ; abf4: a1 ac       ..
    jsr osbput                                                        ; abf6: 20 d4 ff     ..            ; Write a single byte A to an open file Y
    inc l00ac                                                         ; abf9: e6 ac       ..
; $abfb referenced 1 time by $abf2
cabfb
    lda l00ac                                                         ; abfb: a5 ac       ..
    cmp l00aa                                                         ; abfd: c5 aa       ..
    bne loop_cabf4                                                    ; abff: d0 f3       ..
    plp                                                               ; ac01: 28          (
    bcs cabbc                                                         ; ac02: b0 b8       ..
    lda #$0d                                                          ; ac04: a9 0d       ..
    jsr osbput                                                        ; ac06: 20 d4 ff     ..            ; Write a single byte A=13 to an open file Y
    jmp cabcf                                                         ; ac09: 4c cf ab    L..

; $ac0c referenced 3 times by $817f, $8198, $85ca
sub_cac0c
    jsr cac0f                                                         ; ac0c: 20 0f ac     ..
; $ac0f referenced 11 times by $81a7, $834f, $837d, $aa8f, $aab0, $ab2a, $ab62, $ab75, $ab88, $abd2, $ac0c
cac0f
    pha                                                               ; ac0f: 48          H
    lda #$20 ; ' '                                                    ; ac10: a9 20       .
    jsr osasci                                                        ; ac12: 20 e3 ff     ..            ; Write character 32
    pla                                                               ; ac15: 68          h
    clc                                                               ; ac16: 18          .
    rts                                                               ; ac17: 60          `

; $ac18 referenced 4 times by $aafd, $ab04, $ab46, $abc5
sub_cac18
    tsx                                                               ; ac18: ba          .
    lda #0                                                            ; ac19: a9 00       ..
    sta l0107,x                                                       ; ac1b: 9d 07 01    ...
    jsr sub_cac47                                                     ; ac1e: 20 47 ac     G.
    cmp #$0d                                                          ; ac21: c9 0d       ..
    bne cac28                                                         ; ac23: d0 03       ..
    jmp ca14f                                                         ; ac25: 4c 4f a1    LO.

; $ac28 referenced 1 time by $ac23
cac28
    lda #0                                                            ; ac28: a9 00       ..
    sta l00a8                                                         ; ac2a: 85 a8       ..
    sta l00a9                                                         ; ac2c: 85 a9       ..
    pha                                                               ; ac2e: 48          H
    tya                                                               ; ac2f: 98          .
    clc                                                               ; ac30: 18          .
    adc os_text_ptr                                                   ; ac31: 65 f2       e.
    tax                                                               ; ac33: aa          .
    lda l00f3                                                         ; ac34: a5 f3       ..
    adc #0                                                            ; ac36: 69 00       i.
    tay                                                               ; ac38: a8          .
    pla                                                               ; ac39: 68          h
    rts                                                               ; ac3a: 60          `

    tya                                                               ; ac3b: 98          .
    clc                                                               ; ac3c: 18          .
    adc os_text_ptr                                                   ; ac3d: 65 f2       e.
    sta os_text_ptr                                                   ; ac3f: 85 f2       ..
    bcc cac45                                                         ; ac41: 90 02       ..
    inc os_text_ptr                                                   ; ac43: e6 f2       ..
; $ac45 referenced 1 time by $ac41
cac45
    rts                                                               ; ac45: 60          `

; $ac46 referenced 1 time by $ac4b
loop_cac46
    iny                                                               ; ac46: c8          .
; $ac47 referenced 1 time by $ac1e
sub_cac47
    lda (os_text_ptr),y                                               ; ac47: b1 f2       ..
    cmp #$20 ; ' '                                                    ; ac49: c9 20       .
    beq loop_cac46                                                    ; ac4b: f0 f9       ..
    rts                                                               ; ac4d: 60          `

; $ac4e referenced 2 times by $ab27, $abcf
sub_cac4e
    sed                                                               ; ac4e: f8          .
    clc                                                               ; ac4f: 18          .
    lda l00a8                                                         ; ac50: a5 a8       ..
    adc #1                                                            ; ac52: 69 01       i.
    sta l00a8                                                         ; ac54: 85 a8       ..
    lda l00a9                                                         ; ac56: a5 a9       ..
    adc #0                                                            ; ac58: 69 00       i.
    sta l00a9                                                         ; ac5a: 85 a9       ..
    cld                                                               ; ac5c: d8          .
    jsr sub_cac62                                                     ; ac5d: 20 62 ac     b.
    lda l00a8                                                         ; ac60: a5 a8       ..
; $ac62 referenced 4 times by $ab5a, $ab5f, $ab72, $ac5d
sub_cac62
    pha                                                               ; ac62: 48          H
    jsr sub_c81bf                                                     ; ac63: 20 bf 81     ..
    jsr sub_cac6a                                                     ; ac66: 20 6a ac     j.
    pla                                                               ; ac69: 68          h
; $ac6a referenced 1 time by $ac66
sub_cac6a
    jsr sub_c80c8                                                     ; ac6a: 20 c8 80     ..
    jsr osasci                                                        ; ac6d: 20 e3 ff     ..            ; Write character
    sec                                                               ; ac70: 38          8
    rts                                                               ; ac71: 60          `

; $ac72 referenced 1 time by $96e1
sub_cac72
    jsr sub_c83e3                                                     ; ac72: 20 e3 83     ..
    lda #$40 ; '@'                                                    ; ac75: a9 40       .@
    sta l10de                                                         ; ac77: 8d de 10    ...
    lda #$a8                                                          ; ac7a: a9 a8       ..
    jsr osbyte_read                                                   ; ac7c: 20 e5 9a     ..
    stx l00b0                                                         ; ac7f: 86 b0       ..
    sty l00b1                                                         ; ac81: 84 b1       ..
    ldy #$0f                                                          ; ac83: a0 0f       ..
    lda #$4c ; 'L'                                                    ; ac85: a9 4c       .L
    sta l10e2                                                         ; ac87: 8d e2 10    ...
    lda bytev                                                         ; ac8a: ad 0a 02    ...
    sta l10e3                                                         ; ac8d: 8d e3 10    ...
    lda bytev+1                                                       ; ac90: ad 0b 02    ...
    sta l10e4                                                         ; ac93: 8d e4 10    ...
    php                                                               ; ac96: 08          .
    sei                                                               ; ac97: 78          x
    lda #$0f                                                          ; ac98: a9 0f       ..
    sta bytev                                                         ; ac9a: 8d 0a 02    ...
    lda #$ff                                                          ; ac9d: a9 ff       ..
    sta bytev+1                                                       ; ac9f: 8d 0b 02    ...
    lda #$b2                                                          ; aca2: a9 b2       ..
    sta (l00b0),y                                                     ; aca4: 91 b0       ..
    iny                                                               ; aca6: c8          .
    lda #$ac                                                          ; aca7: a9 ac       ..
    sta (l00b0),y                                                     ; aca9: 91 b0       ..
    iny                                                               ; acab: c8          .
    lda romsel_copy                                                   ; acac: a5 f4       ..
    sta (l00b0),y                                                     ; acae: 91 b0       ..
    plp                                                               ; acb0: 28          (
    rts                                                               ; acb1: 60          `

    cmp #0                                                            ; acb2: c9 00       ..
    beq cacc7                                                         ; acb4: f0 11       ..
    cmp #$81                                                          ; acb6: c9 81       ..
    bne cacc4                                                         ; acb8: d0 0a       ..
    cpy #$ff                                                          ; acba: c0 ff       ..
    bne cacc4                                                         ; acbc: d0 06       ..
    cpx #0                                                            ; acbe: e0 00       ..
    bne cacc4                                                         ; acc0: d0 02       ..
    dex                                                               ; acc2: ca          .
    rts                                                               ; acc3: 60          `

; $acc4 referenced 3 times by $acb8, $acbc, $acc0
cacc4
    jmp l10e2                                                         ; acc4: 4c e2 10    L..

; $acc7 referenced 1 time by $acb4
cacc7
    php                                                               ; acc7: 08          .
    sei                                                               ; acc8: 78          x
    lda l10e3                                                         ; acc9: ad e3 10    ...
    sta bytev                                                         ; accc: 8d 0a 02    ...
    lda l10e4                                                         ; accf: ad e4 10    ...
    sta bytev+1                                                       ; acd2: 8d 0b 02    ...
    lda #0                                                            ; acd5: a9 00       ..
    ldx #1                                                            ; acd7: a2 01       ..
    plp                                                               ; acd9: 28          (
    rts                                                               ; acda: 60          `

; $acdb referenced 3 times by $50, $af19, $af1c
tube_host_code2
; $acdb referenced 3 times by $50, $af19, $af1c

!pseudopc $0500 {
; $acdb referenced 3 times by $50, $af19, $af1c
l0500
    !word          sub_c0537,          sub_c0596,          sub_c05f2  ; acdb: 37 05 96... 7.. :0500[2]
    !word          sub_c0607,          sub_c0627, tube_host_osword_0  ; ace1: 07 06 27... ..' :0506[2]
    !word          sub_c055e,          sub_c052d,          sub_c0520  ; ace7: 5e 05 2d... ^.- :050c[2]
    !word          sub_c0542,          sub_c05a9,          sub_c05d1  ; aced: 42 05 a9... B.. :0512[2]
; Table of flags used by tube_entry_small_a to set up registers 1/4 for the
; selected operation.
; $acf3 referenced 1 time by $0453
tube_entry_flags
    !byte $86, $88, $96, $98, $18, $18, $82, $18                      ; acf3: 86 88 96... ... :0518[2]

sub_c0520
    jsr read_tube_r2_data                                             ; acfb: 20 c5 06     .. :0520[2]
    tay                                                               ; acfe: a8          .   :0523[2]
    jsr read_tube_r2_data                                             ; acff: 20 c5 06     .. :0524[2]
    jsr osbput                                                        ; ad02: 20 d4 ff     .. :0527[2]   ; Write a single byte A to an open file Y
    jmp c059c                                                         ; ad05: 4c 9c 05    L.. :052a[2]

sub_c052d
    jsr read_tube_r2_data                                             ; ad08: 20 c5 06     .. :052d[2]
    tay                                                               ; ad0b: a8          .   :0530[2]   ; Y=file handle
    jsr osbget                                                        ; ad0c: 20 d7 ff     .. :0531[2]   ; Read a single byte from an open file Y
    jmp c053a                                                         ; ad0f: 4c 3a 05    L:. :0534[2]

sub_c0537
    jsr osrdch                                                        ; ad12: 20 e0 ff     .. :0537[2]   ; Read a character from the current input stream
; $ad15 referenced 2 times by $0534, $05ef
c053a
    ror                                                               ; ad15: 6a          j   :053a[2]
    jsr write_tube_r2_data                                            ; ad16: 20 95 06     .. :053b[2]
    rol                                                               ; ad19: 2a          *   :053e[2]
    jmp c059e                                                         ; ad1a: 4c 9e 05    L.. :053f[2]

sub_c0542
    jsr read_tube_r2_data                                             ; ad1d: 20 c5 06     .. :0542[2]
    beq c0552                                                         ; ad20: f0 0b       ..  :0545[2]
    pha                                                               ; ad22: 48          H   :0547[2]
    jsr sub_c0582                                                     ; ad23: 20 82 05     .. :0548[2]
    pla                                                               ; ad26: 68          h   :054b[2]
    jsr osfind                                                        ; ad27: 20 ce ff     .. :054c[2]   ; Open or close file(s)
    jmp c059e                                                         ; ad2a: 4c 9e 05    L.. :054f[2]

; $ad2d referenced 1 time by $0545
c0552
    jsr read_tube_r2_data                                             ; ad2d: 20 c5 06     .. :0552[2]
    tay                                                               ; ad30: a8          .   :0555[2]
    lda #osfind_close                                                 ; ad31: a9 00       ..  :0556[2]
    jsr osfind                                                        ; ad33: 20 ce ff     .. :0558[2]   ; Close one or all files
    jmp c059c                                                         ; ad36: 4c 9c 05    L.. :055b[2]

sub_c055e
    jsr read_tube_r2_data                                             ; ad39: 20 c5 06     .. :055e[2]
    tay                                                               ; ad3c: a8          .   :0561[2]
    ldx #4                                                            ; ad3d: a2 04       ..  :0562[2]
; $ad3f referenced 1 time by $056a
loop_c0564
    jsr read_tube_r2_data                                             ; ad3f: 20 c5 06     .. :0564[2]
    sta l00ff,x                                                       ; ad42: 95 ff       ..  :0567[2]
    dex                                                               ; ad44: ca          .   :0569[2]
    bne loop_c0564                                                    ; ad45: d0 f8       ..  :056a[2]
    jsr read_tube_r2_data                                             ; ad47: 20 c5 06     .. :056c[2]
    jsr osargs                                                        ; ad4a: 20 da ff     .. :056f[2]   ; Read or write a file's attributes
    jsr write_tube_r2_data                                            ; ad4d: 20 95 06     .. :0572[2]
    ldx #3                                                            ; ad50: a2 03       ..  :0575[2]
; $ad52 referenced 1 time by $057d
loop_c0577
    lda l0000,x                                                       ; ad52: b5 00       ..  :0577[2]
    jsr write_tube_r2_data                                            ; ad54: 20 95 06     .. :0579[2]
    dex                                                               ; ad57: ca          .   :057c[2]
    bpl loop_c0577                                                    ; ad58: 10 f8       ..  :057d[2]
    jmp c0036                                                         ; ad5a: 4c 36 00    L6. :057f[2]

; $ad5d referenced 3 times by $0548, $0596, $05b3
sub_c0582
    ldx #0                                                            ; ad5d: a2 00       ..  :0582[2]
    ldy #0                                                            ; ad5f: a0 00       ..  :0584[2]
; $ad61 referenced 1 time by $0591
loop_c0586
    jsr read_tube_r2_data                                             ; ad61: 20 c5 06     .. :0586[2]
    sta l0700,y                                                       ; ad64: 99 00 07    ... :0589[2]
    iny                                                               ; ad67: c8          .   :058c[2]
    beq c0593                                                         ; ad68: f0 04       ..  :058d[2]
    cmp #$0d                                                          ; ad6a: c9 0d       ..  :058f[2]
    bne loop_c0586                                                    ; ad6c: d0 f3       ..  :0591[2]
; $ad6e referenced 1 time by $058d
c0593
    ldy #7                                                            ; ad6e: a0 07       ..  :0593[2]
    rts                                                               ; ad70: 60          `   :0595[2]

sub_c0596
    jsr sub_c0582                                                     ; ad71: 20 82 05     .. :0596[2]
    jsr oscli                                                         ; ad74: 20 f7 ff     .. :0599[2]
; $ad77 referenced 3 times by $0489, $052a, $055b
c059c
    lda #$7f                                                          ; ad77: a9 7f       ..  :059c[2]
; $ad79 referenced 4 times by $053f, $054f, $05a1, $067d
c059e
    bit tube_host_r2_status                                           ; ad79: 2c e2 fe    ,.. :059e[2]
    bvc c059e                                                         ; ad7c: 50 fb       P.  :05a1[2]
    sta tube_host_r2_data                                             ; ad7e: 8d e3 fe    ... :05a3[2]
; $ad81 referenced 1 time by $05cf
c05a6
    jmp c0036                                                         ; ad81: 4c 36 00    L6. :05a6[2]

sub_c05a9
    ldx #$10                                                          ; ad84: a2 10       ..  :05a9[2]
; $ad86 referenced 1 time by $05b1
loop_c05ab
    jsr read_tube_r2_data                                             ; ad86: 20 c5 06     .. :05ab[2]
    sta l0001,x                                                       ; ad89: 95 01       ..  :05ae[2]
    dex                                                               ; ad8b: ca          .   :05b0[2]
    bne loop_c05ab                                                    ; ad8c: d0 f8       ..  :05b1[2]
    jsr sub_c0582                                                     ; ad8e: 20 82 05     .. :05b3[2]
    stx l0000                                                         ; ad91: 86 00       ..  :05b6[2]
    sty l0001                                                         ; ad93: 84 01       ..  :05b8[2]
    ldy #0                                                            ; ad95: a0 00       ..  :05ba[2]
    jsr read_tube_r2_data                                             ; ad97: 20 c5 06     .. :05bc[2]
    jsr osfile                                                        ; ad9a: 20 dd ff     .. :05bf[2]
    jsr write_tube_r2_data                                            ; ad9d: 20 95 06     .. :05c2[2]
    ldx #$10                                                          ; ada0: a2 10       ..  :05c5[2]
; $ada2 referenced 1 time by $05cd
loop_c05c7
    lda l0001,x                                                       ; ada2: b5 01       ..  :05c7[2]
    jsr write_tube_r2_data                                            ; ada4: 20 95 06     .. :05c9[2]
    dex                                                               ; ada7: ca          .   :05cc[2]
    bne loop_c05c7                                                    ; ada8: d0 f8       ..  :05cd[2]
    beq c05a6                                                         ; adaa: f0 d5       ..  :05cf[2]
sub_c05d1
    ldx #$0d                                                          ; adac: a2 0d       ..  :05d1[2]
; $adae referenced 1 time by $05d9
loop_c05d3
    jsr read_tube_r2_data                                             ; adae: 20 c5 06     .. :05d3[2]
    sta l00ff,x                                                       ; adb1: 95 ff       ..  :05d6[2]
    dex                                                               ; adb3: ca          .   :05d8[2]
    bne loop_c05d3                                                    ; adb4: d0 f8       ..  :05d9[2]
    jsr read_tube_r2_data                                             ; adb6: 20 c5 06     .. :05db[2]
    ldy #0                                                            ; adb9: a0 00       ..  :05de[2]
    jsr osgbpb                                                        ; adbb: 20 d1 ff     .. :05e0[2]   ; Read or write multiple bytes to an open file
    pha                                                               ; adbe: 48          H   :05e3[2]
    ldx #$0c                                                          ; adbf: a2 0c       ..  :05e4[2]
; $adc1 referenced 1 time by $05ec
loop_c05e6
    lda l0000,x                                                       ; adc1: b5 00       ..  :05e6[2]
    jsr write_tube_r2_data                                            ; adc3: 20 95 06     .. :05e8[2]
    dex                                                               ; adc6: ca          .   :05eb[2]
    bpl loop_c05e6                                                    ; adc7: 10 f8       ..  :05ec[2]
    pla                                                               ; adc9: 68          h   :05ee[2]
    jmp c053a                                                         ; adca: 4c 3a 05    L:. :05ef[2]

sub_c05f2
    jsr read_tube_r2_data                                             ; adcd: 20 c5 06     .. :05f2[2]
    tax                                                               ; add0: aa          .   :05f5[2]
    jsr read_tube_r2_data                                             ; add1: 20 c5 06     .. :05f6[2]
    jsr osbyte                                                        ; add4: 20 f4 ff     .. :05f9[2]
; $add7 referenced 2 times by $05ff, $0625
c05fc
    bit tube_host_r2_status                                           ; add7: 2c e2 fe    ,.. :05fc[2]
sub_c05ff
l0600 = sub_c05ff+1
    bvc c05fc                                                         ; adda: 50 fb       P.  :05ff[2]
; $addb referenced 2 times by $af1f, $af22
    stx tube_host_r2_data                                             ; addc: 8e e3 fe    ... :0601[2]
; $addf referenced 1 time by $0617
loop_c0604
    jmp c0036                                                         ; addf: 4c 36 00    L6. :0604[2]

sub_c0607
    jsr read_tube_r2_data                                             ; ade2: 20 c5 06     .. :0607[2]
    tax                                                               ; ade5: aa          .   :060a[2]
    jsr read_tube_r2_data                                             ; ade6: 20 c5 06     .. :060b[2]
    tay                                                               ; ade9: a8          .   :060e[2]
    jsr read_tube_r2_data                                             ; adea: 20 c5 06     .. :060f[2]
    jsr osbyte                                                        ; aded: 20 f4 ff     .. :0612[2]
    eor #$9d                                                          ; adf0: 49 9d       I.  :0615[2]
    beq loop_c0604                                                    ; adf2: f0 eb       ..  :0617[2]
    ror                                                               ; adf4: 6a          j   :0619[2]
    jsr write_tube_r2_data                                            ; adf5: 20 95 06     .. :061a[2]
; $adf8 referenced 1 time by $0620
loop_c061d
    bit tube_host_r2_status                                           ; adf8: 2c e2 fe    ,.. :061d[2]
    bvc loop_c061d                                                    ; adfb: 50 fb       P.  :0620[2]
    sty tube_host_r2_data                                             ; adfd: 8c e3 fe    ... :0622[2]
    bvs c05fc                                                         ; ae00: 70 d5       p.  :0625[2]
sub_c0627
    jsr read_tube_r2_data                                             ; ae02: 20 c5 06     .. :0627[2]
    tay                                                               ; ae05: a8          .   :062a[2]
; $ae06 referenced 1 time by $062e
loop_c062b
    bit tube_host_r2_status                                           ; ae06: 2c e2 fe    ,.. :062b[2]
    bpl loop_c062b                                                    ; ae09: 10 fb       ..  :062e[2]
    ldx tube_host_r2_data                                             ; ae0b: ae e3 fe    ... :0630[2]
    dex                                                               ; ae0e: ca          .   :0633[2]
    bmi c0645                                                         ; ae0f: 30 0f       0.  :0634[2]
; $ae11 referenced 2 times by $0639, $0642
c0636
    bit tube_host_r2_status                                           ; ae11: 2c e2 fe    ,.. :0636[2]
    bpl c0636                                                         ; ae14: 10 fb       ..  :0639[2]
    lda tube_host_r2_data                                             ; ae16: ad e3 fe    ... :063b[2]
    sta l0128,x                                                       ; ae19: 9d 28 01    .(. :063e[2]
    dex                                                               ; ae1c: ca          .   :0641[2]
    bpl c0636                                                         ; ae1d: 10 f2       ..  :0642[2]
    tya                                                               ; ae1f: 98          .   :0644[2]
; $ae20 referenced 1 time by $0634
c0645
    ldx #<(l0128)                                                     ; ae20: a2 28       .(  :0645[2]
    ldy #>(l0128)                                                     ; ae22: a0 01       ..  :0647[2]
    jsr osword                                                        ; ae24: 20 f1 ff     .. :0649[2]
; $ae27 referenced 1 time by $064f
loop_c064c
    bit tube_host_r2_status                                           ; ae27: 2c e2 fe    ,.. :064c[2]
    bpl loop_c064c                                                    ; ae2a: 10 fb       ..  :064f[2]
    ldx tube_host_r2_data                                             ; ae2c: ae e3 fe    ... :0651[2]
    dex                                                               ; ae2f: ca          .   :0654[2]
    bmi c0665                                                         ; ae30: 30 0e       0.  :0655[2]
; $ae32 referenced 1 time by $0663
loop_c0657
    ldy l0128,x                                                       ; ae32: bc 28 01    .(. :0657[2]
; $ae35 referenced 1 time by $065d
loop_c065a
    bit tube_host_r2_status                                           ; ae35: 2c e2 fe    ,.. :065a[2]
    bvc loop_c065a                                                    ; ae38: 50 fb       P.  :065d[2]
    sty tube_host_r2_data                                             ; ae3a: 8c e3 fe    ... :065f[2]
    dex                                                               ; ae3d: ca          .   :0662[2]
    bpl loop_c0657                                                    ; ae3e: 10 f2       ..  :0663[2]
; $ae40 referenced 1 time by $0655
c0665
    jmp c0036                                                         ; ae40: 4c 36 00    L6. :0665[2]

tube_host_osword_0
    ldx #4                                                            ; ae43: a2 04       ..  :0668[2]
; $ae45 referenced 1 time by $0670
tube_host_osword_0_loop
    jsr read_tube_r2_data                                             ; ae45: 20 c5 06     .. :066a[2]
    sta l0000,x                                                       ; ae48: 95 00       ..  :066d[2]
    dex                                                               ; ae4a: ca          .   :066f[2]
    bpl tube_host_osword_0_loop                                       ; ae4b: 10 f8       ..  :0670[2]
    inx                                                               ; ae4d: e8          .   :0672[2]
    ldy #0                                                            ; ae4e: a0 00       ..  :0673[2]
    txa                                                               ; ae50: 8a          .   :0675[2]
    jsr osword                                                        ; ae51: 20 f1 ff     .. :0676[2]
    bcc tube_host_osword_0_no_escape                                  ; ae54: 90 05       ..  :0679[2]
    lda #$ff                                                          ; ae56: a9 ff       ..  :067b[2]
    jmp c059e                                                         ; ae58: 4c 9e 05    L.. :067d[2]

; $ae5b referenced 1 time by $0679
tube_host_osword_0_no_escape
    ldx #0                                                            ; ae5b: a2 00       ..  :0680[2]
    lda #$7f                                                          ; ae5d: a9 7f       ..  :0682[2]
    jsr write_tube_r2_data                                            ; ae5f: 20 95 06     .. :0684[2]
; $ae62 referenced 1 time by $0690
tube_host_osword_0_no_escape_loop
    lda l0700,x                                                       ; ae62: bd 00 07    ... :0687[2]
    jsr write_tube_r2_data                                            ; ae65: 20 95 06     .. :068a[2]
    inx                                                               ; ae68: e8          .   :068d[2]
    cmp #$0d                                                          ; ae69: c9 0d       ..  :068e[2]
    bne tube_host_osword_0_no_escape_loop                             ; ae6b: d0 f5       ..  :0690[2]
    jmp c0036                                                         ; ae6d: 4c 36 00    L6. :0692[2]

; Wait for register 2 to have space and write A to it.
; $ae70 referenced 14 times by $0474, $053b, $0572, $0579, $05c2, $05c9, $05e8, $061a, $0684, $068a, $0698, $20, $26, $2c
write_tube_r2_data
    bit tube_host_r2_status                                           ; ae70: 2c e2 fe    ,.. :0695[2]
    bvc write_tube_r2_data                                            ; ae73: 50 fb       P.  :0698[2]
    sta tube_host_r2_data                                             ; ae75: 8d e3 fe    ... :069a[2]
    rts                                                               ; ae78: 60          `   :069d[2]

; Wait for register 4 to have space and write A to it.
; $ae79 referenced 8 times by $0418, $041d, $043b, $0443, $0448, $0463, $06a1, $18
write_tube_r4_data
    bit tube_host_r4_status                                           ; ae79: 2c e6 fe    ,.. :069e[2]
    bvc write_tube_r4_data                                            ; ae7c: 50 fb       P.  :06a1[2]
    sta tube_host_r4_data                                             ; ae7e: 8d e7 fe    ... :06a3[2]
    rts                                                               ; ae81: 60          `   :06a6[2]

; $ae82 referenced 1 time by $0403
c06a7
    lda l00ff                                                         ; ae82: a5 ff       ..  :06a7[2]
    sec                                                               ; ae84: 38          8   :06a9[2]
    ror                                                               ; ae85: 6a          j   :06aa[2]
    bmi write_tube_r1_data                                            ; ae86: 30 0f       0.  :06ab[2]
tube_evntv_handler
    pha                                                               ; ae88: 48          H   :06ad[2]
    lda #0                                                            ; ae89: a9 00       ..  :06ae[2]
    jsr write_tube_r1_data                                            ; ae8b: 20 bc 06     .. :06b0[2]
    tya                                                               ; ae8e: 98          .   :06b3[2]
    jsr write_tube_r1_data                                            ; ae8f: 20 bc 06     .. :06b4[2]
    txa                                                               ; ae92: 8a          .   :06b7[2]
    jsr write_tube_r1_data                                            ; ae93: 20 bc 06     .. :06b8[2]
    pla                                                               ; ae96: 68          h   :06bb[2]
; Wait for register 1 to have space and write A to it.
; $ae97 referenced 5 times by $06ab, $06b0, $06b4, $06b8, $06bf
write_tube_r1_data
    bit tube_host_r1_status                                           ; ae97: 2c e0 fe    ,.. :06bc[2]
    bvc write_tube_r1_data                                            ; ae9a: 50 fb       P.  :06bf[2]
    sta tube_host_r1_data                                             ; ae9c: 8d e1 fe    ... :06c1[2]
    rts                                                               ; ae9f: 60          `   :06c4[2]

; Wait for register 2 to have data and read A from it.
; $aea0 referenced 21 times by $0520, $0524, $052d, $0542, $0552, $055e, $0564, $056c, $0586, $05ab, $05bc, $05d3, $05db, $05f2, $05f6, $0607, $060b, $060f, $0627, $066a, $06c8
read_tube_r2_data
    bit tube_host_r2_status                                           ; aea0: 2c e2 fe    ,.. :06c5[2]
    bpl read_tube_r2_data                                             ; aea3: 10 fb       ..  :06c8[2]
    lda tube_host_r2_data                                             ; aea5: ad e3 fe    ... :06ca[2]
    rts                                                               ; aea8: 60          `   :06cd[2]

; $aea9 referenced 1 time by $965d
}

; $aea9 referenced 1 time by $965d
service_handler_help_and_tube
; $aea9 referenced 1 time by $965d
    cmp #service_help                                                 ; aea9: c9 09       ..
    bne caed7                                                         ; aeab: d0 2a       .*
    tya                                                               ; aead: 98          .
    pha                                                               ; aeae: 48          H
    lda (os_text_ptr),y                                               ; aeaf: b1 f2       ..
    cmp #$0d                                                          ; aeb1: c9 0d       ..
    bne caed3                                                         ; aeb3: d0 1e       ..
    lda #$e9                                                          ; aeb5: a9 e9       ..
    jsr osbyte_read                                                   ; aeb7: 20 e5 9a     ..
    ldx romsel_copy                                                   ; aeba: a6 f4       ..
    tya                                                               ; aebc: 98          .
    beq caed3                                                         ; aebd: f0 14       ..
    jsr print_inline_l809f_top_bit_clear                              ; aebf: 20 77 80     w.
    !text $0d, "TUBE HOST 2.30", $0d                                  ; aec2: 0d 54 55... .TU

    nop                                                               ; aed2: ea          .
; $aed3 referenced 2 times by $aeb3, $aebd
caed3
    pla                                                               ; aed3: 68          h
    tay                                                               ; aed4: a8          .
    lda #9                                                            ; aed5: a9 09       ..
; $aed7 referenced 1 time by $aeab
caed7
    cmp #service_tube_post_init                                       ; aed7: c9 fe       ..
    bcc just_rts                                                      ; aed9: 90 5c       .\
    bne service_handler_tube_main_init                                ; aedb: d0 1b       ..
    cpy #0                                                            ; aedd: c0 00       ..
    beq just_rts                                                      ; aedf: f0 56       .V
    ldx #6                                                            ; aee1: a2 06       ..
    lda #osbyte_explode_chars                                         ; aee3: a9 14       ..
    jsr osbyte                                                        ; aee5: 20 f4 ff     ..            ; Explode character definition RAM (six extra pages), can redefine all characters 32-255 (X=6)
; $aee8 referenced 2 times by $aeeb, $aef5
tube_banner_loop
    bit tube_host_r1_status                                           ; aee8: 2c e0 fe    ,..
    bpl tube_banner_loop                                              ; aeeb: 10 fb       ..
    lda tube_host_r1_data                                             ; aeed: ad e1 fe    ...
    beq lda_0_rts                                                     ; aef0: f0 43       .C
    jsr oswrch                                                        ; aef2: 20 ee ff     ..            ; Write character
    jmp tube_banner_loop                                              ; aef5: 4c e8 ae    L..

; $aef8 referenced 1 time by $aedb
service_handler_tube_main_init
    lda #<tube_evntv_handler                                          ; aef8: a9 ad       ..
    sta evntv                                                         ; aefa: 8d 20 02    . .
    lda #>tube_evntv_handler                                          ; aefd: a9 06       ..
    sta evntv+1                                                       ; aeff: 8d 21 02    .!.
    lda #<tube_brkv_handler                                           ; af02: a9 16       ..
    sta brkv                                                          ; af04: 8d 02 02    ...
    lda #>tube_brkv_handler                                           ; af07: a9 00       ..
    sta brkv+1                                                        ; af09: 8d 03 02    ...
    lda #$8e                                                          ; af0c: a9 8e       ..
    sta tube_host_r1_status                                           ; af0e: 8d e0 fe    ...
    ldy #0                                                            ; af11: a0 00       ..
; $af13 referenced 1 time by $af26
loop_caf13
    lda tube_host_code1,y                                             ; af13: b9 79 af    .y.
    sta c0400,y                                                       ; af16: 99 00 04    ...
    lda tube_host_code2,y                                             ; af19: b9 db ac    ...
    sta l0500,y                                                       ; af1c: 99 00 05    ...
    lda tube_host_code2+256,y                                         ; af1f: b9 db ad    ...
    sta l0600,y                                                       ; af22: 99 00 06    ...
    dey                                                               ; af25: 88          .
    bne loop_caf13                                                    ; af26: d0 eb       ..
    jsr sub_c0421                                                     ; af28: 20 21 04     !.
    ldx #$41 ; 'A'                                                    ; af2b: a2 41       .A
; $af2d referenced 1 time by $af33
loop_caf2d
    lda tube_host_code3,x                                             ; af2d: bd 38 af    .8.
    sta tube_brkv_handler_fwd,x                                       ; af30: 95 16       ..
    dex                                                               ; af32: ca          .
    bpl loop_caf2d                                                    ; af33: 10 f8       ..
; $af35 referenced 1 time by $aef0
lda_0_rts
    lda #0                                                            ; af35: a9 00       ..
; $af37 referenced 2 times by $aed9, $aedf
just_rts
    rts                                                               ; af37: 60          `

; $af38 referenced 2 times by $af2d, $af30
tube_host_code3
; $af38 referenced 2 times by $af2d, $af30

!pseudopc $16 {
; $af38 referenced 2 times by $af2d, $af30
tube_brkv_handler
    lda #$ff                                                          ; af38: a9 ff       ..  :0016[3]
    jsr write_tube_r4_data                                            ; af3a: 20 9e 06     .. :0018[3]
    lda tube_host_r2_data                                             ; af3d: ad e3 fe    ... :001b[3]
    lda #0                                                            ; af40: a9 00       ..  :001e[3]
    jsr write_tube_r2_data                                            ; af42: 20 95 06     .. :0020[3]
    tay                                                               ; af45: a8          .   :0023[3]
    lda (l00fd),y                                                     ; af46: b1 fd       ..  :0024[3]
    jsr write_tube_r2_data                                            ; af48: 20 95 06     .. :0026[3]
; $af4b referenced 1 time by $30
loop_c0029
    iny                                                               ; af4b: c8          .   :0029[3]
    lda (l00fd),y                                                     ; af4c: b1 fd       ..  :002a[3]
    jsr write_tube_r2_data                                            ; af4e: 20 95 06     .. :002c[3]
    tax                                                               ; af51: aa          .   :002f[3]
    bne loop_c0029                                                    ; af52: d0 f7       ..  :0030[3]
; $af54 referenced 1 time by $0477
c0032
    ldx #$ff                                                          ; af54: a2 ff       ..  :0032[3]
    txs                                                               ; af56: 9a          .   :0034[3]
    cli                                                               ; af57: 58          X   :0035[3]
; $af58 referenced 6 times by $057f, $05a6, $0604, $0665, $0692, $44
c0036
    bit tube_host_r1_status                                           ; af58: 2c e0 fe    ,.. :0036[3]
    bpl c0041                                                         ; af5b: 10 06       ..  :0039[3]
; $af5d referenced 1 time by $49
loop_c003b
    lda tube_host_r1_data                                             ; af5d: ad e1 fe    ... :003b[3]
    jsr oswrch                                                        ; af60: 20 ee ff     .. :003e[3]   ; Write character
; $af63 referenced 1 time by $39
c0041
    bit tube_host_r2_status                                           ; af63: 2c e2 fe    ,.. :0041[3]
    bpl c0036                                                         ; af66: 10 f0       ..  :0044[3]
    bit tube_host_r1_status                                           ; af68: 2c e0 fe    ,.. :0046[3]
    bmi loop_c003b                                                    ; af6b: 30 f0       0.  :0049[3]
    ldx tube_host_r2_data                                             ; af6d: ae e3 fe    ... :004b[3]
; Patch the following JMP so we effectively do JMP (&500,X)

; Extra comment after a blank line
; manually-created comment
    stx <jump_address_low                                             ; af70: 86 51       .Q  :004e[3]
sub_c0050
jump_address_low = sub_c0050+1
    jmp (l0500)                                                       ; af72: 6c 00 05    l.. :0050[3]

; $af73 referenced 1 time by $4e
; $af75 referenced 2 times by $04da, $04ea
l0053
    !byte 0                                                           ; af75: 00          .   :0053[3]
; $af76 referenced 3 times by $04b2, $04d0, $04ef
l0054
    !byte $80                                                         ; af76: 80          .   :0054[3]
; $af77 referenced 2 times by $04b6, $04f9
l0055
    !byte 0                                                           ; af77: 00          .   :0055[3]
; $af78 referenced 2 times by $04ba, $04f7
l0056
    !byte 0                                                           ; af78: 00          .   :0056[3]
; $af79 referenced 2 times by $af13, $af16
}

; $af79 referenced 2 times by $af13, $af16
tube_host_code1
; $af79 referenced 2 times by $af13, $af16

!pseudopc $0400 {
; $af79 referenced 2 times by $af13, $af16
c0400
    jmp c0484                                                         ; af79: 4c 84 04    L.. :0400[1]

    jmp c06a7                                                         ; af7c: 4c a7 06    L.. :0403[1]

; $af7f referenced 14 times by $0493, $04cb, $892a, $8cae, $8f6e, $8f7d, $9346, $982b, $bd64, $bd91, $be09, $be2c, $be7d, $be85
tube_entry
    cmp #$80                                                          ; af7f: c9 80       ..  :0406[1]
    bcc tube_entry_small_a                                            ; af81: 90 2b       .+  :0408[1]
    cmp #$c0                                                          ; af83: c9 c0       ..  :040a[1]
    bcs tube_entry_claim_tube                                         ; af85: b0 1a       ..  :040c[1]
; This is a call to release the tube.
    ora #$40 ; '@'                                                    ; af87: 09 40       .@  :040e[1]
    cmp l0015                                                         ; af89: c5 15       ..  :0410[1]
    bne c0434                                                         ; af8b: d0 20       .   :0412[1]
; $af8d referenced 1 time by $0471
sub_c0414
    php                                                               ; af8d: 08          .   :0414[1]
    sei                                                               ; af8e: 78          x   :0415[1]
    lda #5                                                            ; af8f: a9 05       ..  :0416[1]
    jsr write_tube_r4_data                                            ; af91: 20 9e 06     .. :0418[1]
    lda l0015                                                         ; af94: a5 15       ..  :041b[1]
    jsr write_tube_r4_data                                            ; af96: 20 9e 06     .. :041d[1]
    plp                                                               ; af99: 28          (   :0420[1]
; $af9a referenced 1 time by $af28
sub_c0421
    lda #$80                                                          ; af9a: a9 80       ..  :0421[1]
    sta l0015                                                         ; af9c: 85 15       ..  :0423[1]
    sta l0014                                                         ; af9e: 85 14       ..  :0425[1]
    rts                                                               ; afa0: 60          `   :0427[1]

; $afa1 referenced 1 time by $040c
tube_entry_claim_tube
    asl l0014                                                         ; afa1: 06 14       ..  :0428[1]
    bcs c0432                                                         ; afa3: b0 06       ..  :042a[1]
    cmp l0015                                                         ; afa5: c5 15       ..  :042c[1]
    beq c0434                                                         ; afa7: f0 04       ..  :042e[1]
    clc                                                               ; afa9: 18          .   :0430[1]
    rts                                                               ; afaa: 60          `   :0431[1]

; $afab referenced 1 time by $042a
c0432
    sta l0015                                                         ; afab: 85 15       ..  :0432[1]
; $afad referenced 2 times by $0412, $042e
c0434
    rts                                                               ; afad: 60          `   :0434[1]

; $afae referenced 1 time by $0408
tube_entry_small_a
    php                                                               ; afae: 08          .   :0435[1]
    sei                                                               ; afaf: 78          x   :0436[1]
    sty l0013                                                         ; afb0: 84 13       ..  :0437[1]
    stx l0012                                                         ; afb2: 86 12       ..  :0439[1]
    jsr write_tube_r4_data                                            ; afb4: 20 9e 06     .. :043b[1]
    tax                                                               ; afb7: aa          .   :043e[1]
    ldy #3                                                            ; afb8: a0 03       ..  :043f[1]
    lda l0015                                                         ; afba: a5 15       ..  :0441[1]
    jsr write_tube_r4_data                                            ; afbc: 20 9e 06     .. :0443[1]
; $afbf referenced 1 time by $044c
loop_c0446
    lda (l0012),y                                                     ; afbf: b1 12       ..  :0446[1]
    jsr write_tube_r4_data                                            ; afc1: 20 9e 06     .. :0448[1]
    dey                                                               ; afc4: 88          .   :044b[1]
    bpl loop_c0446                                                    ; afc5: 10 f8       ..  :044c[1]
    ldy #$18                                                          ; afc7: a0 18       ..  :044e[1]
    sty tube_host_r1_status                                           ; afc9: 8c e0 fe    ... :0450[1]
    lda tube_entry_flags,x                                            ; afcc: bd 18 05    ... :0453[1]
    sta tube_host_r1_status                                           ; afcf: 8d e0 fe    ... :0456[1]
    lsr                                                               ; afd2: 4a          J   :0459[1]
    lsr                                                               ; afd3: 4a          J   :045a[1]
    bcc c0463                                                         ; afd4: 90 06       ..  :045b[1]
    bit tube_host_r3_data                                             ; afd6: 2c e5 fe    ,.. :045d[1]
    bit tube_host_r3_data                                             ; afd9: 2c e5 fe    ,.. :0460[1]
; $afdc referenced 1 time by $045b
c0463
    jsr write_tube_r4_data                                            ; afdc: 20 9e 06     .. :0463[1]
; $afdf referenced 1 time by $0469
loop_c0466
    bit tube_host_r4_status                                           ; afdf: 2c e6 fe    ,.. :0466[1]
    bvc loop_c0466                                                    ; afe2: 50 fb       P.  :0469[1]
    bcs c047a                                                         ; afe4: b0 0d       ..  :046b[1]
    cpx #4                                                            ; afe6: e0 04       ..  :046d[1]
    bne c0482                                                         ; afe8: d0 11       ..  :046f[1]
; $afea referenced 1 time by $048f
loop_c0471
    jsr sub_c0414                                                     ; afea: 20 14 04     .. :0471[1]
    jsr write_tube_r2_data                                            ; afed: 20 95 06     .. :0474[1]
    jmp c0032                                                         ; aff0: 4c 32 00    L2. :0477[1]

; $aff3 referenced 1 time by $046b
c047a
    lsr                                                               ; aff3: 4a          J   :047a[1]
    bcc c0482                                                         ; aff4: 90 05       ..  :047b[1]
    ldy #$88                                                          ; aff6: a0 88       ..  :047d[1]
    sty tube_host_r1_status                                           ; aff8: 8c e0 fe    ... :047f[1]
; $affb referenced 2 times by $046f, $047b
c0482
    plp                                                               ; affb: 28          (   :0482[1]
    rts                                                               ; affc: 60          `   :0483[1]

; $affd referenced 1 time by $0400
c0484
    cli                                                               ; affd: 58          X   :0484[1]
    bcs c0491                                                         ; affe: b0 0a       ..  :0485[1]
    bne c048c                                                         ; b000: d0 03       ..  :0487[1]
    jmp c059c                                                         ; b002: 4c 9c 05    L.. :0489[1]

; $b005 referenced 1 time by $0487
c048c
    ldx l028d                                                         ; b005: ae 8d 02    ... :048c[1]
    beq loop_c0471                                                    ; b008: f0 e0       ..  :048f[1]
; $b00a referenced 2 times by $0485, $0496
c0491
    lda #$ff                                                          ; b00a: a9 ff       ..  :0491[1]
    jsr tube_entry                                                    ; b00c: 20 06 04     .. :0493[1]
    bcc c0491                                                         ; b00f: 90 f9       ..  :0496[1]
    jsr sub_c04ce                                                     ; b011: 20 ce 04     .. :0498[1]
; $b014 referenced 1 time by $04c0
c049b
    php                                                               ; b014: 08          .   :049b[1]
    sei                                                               ; b015: 78          x   :049c[1]
    lda #7                                                            ; b016: a9 07       ..  :049d[1]
    jsr sub_c04c7                                                     ; b018: 20 c7 04     .. :049f[1]
    ldy #0                                                            ; b01b: a0 00       ..  :04a2[1]
    sty l0000                                                         ; b01d: 84 00       ..  :04a4[1]
; $b01f referenced 1 time by $04af
loop_c04a6
    lda (l0000),y                                                     ; b01f: b1 00       ..  :04a6[1]
    sta tube_host_r3_data                                             ; b021: 8d e5 fe    ... :04a8[1]
    nop                                                               ; b024: ea          .   :04ab[1]
    nop                                                               ; b025: ea          .   :04ac[1]
    nop                                                               ; b026: ea          .   :04ad[1]
    iny                                                               ; b027: c8          .   :04ae[1]
    bne loop_c04a6                                                    ; b028: d0 f5       ..  :04af[1]
    plp                                                               ; b02a: 28          (   :04b1[1]
    inc l0054                                                         ; b02b: e6 54       .T  :04b2[1]
    bne c04bc                                                         ; b02d: d0 06       ..  :04b4[1]
    inc l0055                                                         ; b02f: e6 55       .U  :04b6[1]
    bne c04bc                                                         ; b031: d0 02       ..  :04b8[1]
    inc l0056                                                         ; b033: e6 56       .V  :04ba[1]
; $b035 referenced 2 times by $04b4, $04b8
c04bc
    inc l0001                                                         ; b035: e6 01       ..  :04bc[1]
    bit l0001                                                         ; b037: 24 01       $.  :04be[1]
    bvc c049b                                                         ; b039: 50 d9       P.  :04c0[1]
    jsr sub_c04ce                                                     ; b03b: 20 ce 04     .. :04c2[1]
    lda #4                                                            ; b03e: a9 04       ..  :04c5[1]
; $b040 referenced 1 time by $049f
sub_c04c7
    ldy #0                                                            ; b040: a0 00       ..  :04c7[1]
    ldx #$53 ; 'S'                                                    ; b042: a2 53       .S  :04c9[1]
    jmp tube_entry                                                    ; b044: 4c 06 04    L.. :04cb[1]

; $b047 referenced 2 times by $0498, $04c2
sub_c04ce
    lda #$80                                                          ; b047: a9 80       ..  :04ce[1]
    sta l0054                                                         ; b049: 85 54       .T  :04d0[1]
    sta l0001                                                         ; b04b: 85 01       ..  :04d2[1]
    lda #$20 ; ' '                                                    ; b04d: a9 20       .   :04d4[1]
    and rom_type                                                      ; b04f: 2d 06 80    -.. :04d6[1]
    tay                                                               ; b052: a8          .   :04d9[1]
    sty l0053                                                         ; b053: 84 53       .S  :04da[1]
    beq c04f7                                                         ; b055: f0 19       ..  :04dc[1]
    ldx copyright_offset                                              ; b057: ae 07 80    ... :04de[1]
; $b05a referenced 1 time by $04e5
loop_c04e1
    inx                                                               ; b05a: e8          .   :04e1[1]
    lda rom_header,x                                                  ; b05b: bd 00 80    ... :04e2[1]
    bne loop_c04e1                                                    ; b05e: d0 fa       ..  :04e5[1]
    lda l8001,x                                                       ; b060: bd 01 80    ... :04e7[1]
    sta l0053                                                         ; b063: 85 53       .S  :04ea[1]
    lda l8002,x                                                       ; b065: bd 02 80    ... :04ec[1]
    sta l0054                                                         ; b068: 85 54       .T  :04ef[1]
    ldy service_entry,x                                               ; b06a: bc 03 80    ... :04f1[1]
    lda l8004,x                                                       ; b06d: bd 04 80    ... :04f4[1]
; $b070 referenced 1 time by $04dc
c04f7
    sta l0056                                                         ; b070: 85 56       .V  :04f7[1]
    sty l0055                                                         ; b072: 84 55       .U  :04f9[1]
    rts                                                               ; b074: 60          `   :04fb[1]

; $b075 referenced 1 time by $b2b4
}

; $b075 referenced 1 time by $b2b4
lb075
; $b075 referenced 1 time by $b2b4
    !byte $0a                                                         ; b075: 0a          .
    !text "SRAM 1.05"                                                 ; b076: 53 52 41... SRA
    !byte $0d, $0a                                                    ; b07f: 0d 0a       ..
    !text "  SRDATA  <id.>"                                           ; b081: 20 20 53...   S
    !byte $0d, $0a                                                    ; b090: 0d 0a       ..
    !text "  SRLOAD  <filename> <sram address> (<id.>) (Q)"           ; b092: 20 20 53...   S
    !byte $0d, $0a                                                    ; b0c1: 0d 0a       ..
    !text "  SRREAD  <dest. start> <dest. end> <sram start> (<id.>"   ; b0c3: 20 20 53...   S
    !text ")"                                                         ; b0fa: 29          )
    !byte $0d, $0a                                                    ; b0fb: 0d 0a       ..
    !text "  SRROM   <id.>"                                           ; b0fd: 20 20 53...   S
    !byte $0d, $0a                                                    ; b10c: 0d 0a       ..
    !text "  SRSAVE  <filename> <sram start> <sram end> (<id.>) (Q"   ; b10e: 20 20 53...   S
    !text ")"                                                         ; b145: 29          )
    !byte $0d, $0a                                                    ; b146: 0d 0a       ..
    !text "  SRWRITE <source start> <source end> <sram s"             ; b148: 20 20 53...   S
; $b175 referenced 1 time by $b2bd
lb175
    !text "tart> (<id.>)"                                             ; b175: 74 61 72... tar
    !byte $0d, $0a                                                    ; b182: 0d 0a       ..
    !text "End addresses may be replaced by +<length>"                ; b184: 45 6e 64... End
    !byte $0d, $0a,   0                                               ; b1ae: 0d 0a 00    ...

; $b1b1 referenced 1 time by $bedd
general_service_handler
    jsr sub_c965d                                                     ; b1b1: 20 5d 96     ].
    pha                                                               ; b1b4: 48          H
    tax                                                               ; b1b5: aa          .
    lda l00b8                                                         ; b1b6: a5 b8       ..
    pha                                                               ; b1b8: 48          H
    lda l00b9                                                         ; b1b9: a5 b9       ..
    pha                                                               ; b1bb: 48          H
    tya                                                               ; b1bc: 98          .
    pha                                                               ; b1bd: 48          H
    txa                                                               ; b1be: 8a          .
    ldx romsel_copy                                                   ; b1bf: a6 f4       ..
    jsr cb82b                                                         ; b1c1: 20 2b b8     +.
    bit l00b9                                                         ; b1c4: 24 b9       $.
    bmi cb203                                                         ; b1c6: 30 3b       0;
    cmp #8                                                            ; b1c8: c9 08       ..
    bne cb1fc                                                         ; b1ca: d0 30       .0
    lda l00ef                                                         ; b1cc: a5 ef       ..
    cmp #$43 ; 'C'                                                    ; b1ce: c9 43       .C
    bne cb1dd                                                         ; b1d0: d0 0b       ..
    jsr sub_cb2c8                                                     ; b1d2: 20 c8 b2     ..
; $b1d5 referenced 3 times by $b1f9, $b231, $b25d
cb1d5
    tsx                                                               ; b1d5: ba          .
    lda #0                                                            ; b1d6: a9 00       ..
    sta l0104,x                                                       ; b1d8: 9d 04 01    ...
    beq cb203                                                         ; b1db: f0 26       .&
; $b1dd referenced 1 time by $b1d0
cb1dd
    cmp #$42 ; 'B'                                                    ; b1dd: c9 42       .B
    bne cb203                                                         ; b1df: d0 22       ."
    ldy #9                                                            ; b1e1: a0 09       ..
; $b1e3 referenced 1 time by $b1eb
loop_cb1e3
    lda (l00f0),y                                                     ; b1e3: b1 f0       ..
    sta l00b4,y                                                       ; b1e5: 99 b4 00    ...
    dey                                                               ; b1e8: 88          .
    cpy #8                                                            ; b1e9: c0 08       ..
    bcs loop_cb1e3                                                    ; b1eb: b0 f6       ..
; $b1ed referenced 1 time by $b1f3
loop_cb1ed
    lda (l00f0),y                                                     ; b1ed: b1 f0       ..
    sta l00b0,y                                                       ; b1ef: 99 b0 00    ...
    dey                                                               ; b1f2: 88          .
    bpl loop_cb1ed                                                    ; b1f3: 10 f8       ..
    cli                                                               ; b1f5: 58          X
    jsr cbcb9                                                         ; b1f6: 20 b9 bc     ..
    jmp cb1d5                                                         ; b1f9: 4c d5 b1    L..

; $b1fc referenced 1 time by $b1ca
cb1fc
    cmp #2                                                            ; b1fc: c9 02       ..
    bne cb20f                                                         ; b1fe: d0 0f       ..
    jsr sub_cb882                                                     ; b200: 20 82 b8     ..
; $b203 referenced 10 times by $b1c6, $b1db, $b1df, $b219, $b21e, $b228, $b22c, $b262, $b26a, $b280
cb203
    pla                                                               ; b203: 68          h
    tay                                                               ; b204: a8          .
    pla                                                               ; b205: 68          h
    sta l00b9                                                         ; b206: 85 b9       ..
    pla                                                               ; b208: 68          h
    sta l00b8                                                         ; b209: 85 b8       ..
    pla                                                               ; b20b: 68          h
    ldx romsel_copy                                                   ; b20c: a6 f4       ..
    rts                                                               ; b20e: 60          `

; $b20f referenced 1 time by $b1fe
cb20f
    cmp #6                                                            ; b20f: c9 06       ..
    bne cb221                                                         ; b211: d0 0e       ..
    ldy #$ff                                                          ; b213: a0 ff       ..
    lda (l00b8),y                                                     ; b215: b1 b8       ..
    cmp #$4e ; 'N'                                                    ; b217: c9 4e       .N
    bne cb203                                                         ; b219: d0 e8       ..
    jsr sub_cb5f2                                                     ; b21b: 20 f2 b5     ..
    jmp cb203                                                         ; b21e: 4c 03 b2    L..

; $b221 referenced 1 time by $b211
cb221
    cmp #4                                                            ; b221: c9 04       ..
    bne cb23d                                                         ; b223: d0 18       ..
    jsr sub_cb9f5                                                     ; b225: 20 f5 b9     ..
    bcs cb203                                                         ; b228: b0 d9       ..
    cpx #4                                                            ; b22a: e0 04       ..
    beq cb203                                                         ; b22c: f0 d5       ..
    jsr sub_cb234                                                     ; b22e: 20 34 b2     4.
    jmp cb1d5                                                         ; b231: 4c d5 b1    L..

; $b234 referenced 1 time by $b22e
sub_cb234
    lda sram_table,x                                                  ; b234: bd 30 ba    .0.
    pha                                                               ; b237: 48          H
    lda sram_table+1,x                                                ; b238: bd 31 ba    .1.
    pha                                                               ; b23b: 48          H
    rts                                                               ; b23c: 60          `

; $b23d referenced 1 time by $b223
cb23d
    cmp #7                                                            ; b23d: c9 07       ..
    bne cb268                                                         ; b23f: d0 27       .'
    lda l00ef                                                         ; b241: a5 ef       ..
    cmp #$44 ; 'D'                                                    ; b243: c9 44       .D
    bne cb260                                                         ; b245: d0 19       ..
    ldy #$ee                                                          ; b247: a0 ee       ..
; $b249 referenced 1 time by $b266
loop_cb249
    lda (l00b8),y                                                     ; b249: b1 b8       ..
    and #$3f ; '?'                                                    ; b24b: 29 3f       )?
    sta l00b0                                                         ; b24d: 85 b0       ..
    ldy #$fe                                                          ; b24f: a0 fe       ..
    lda (l00b8),y                                                     ; b251: b1 b8       ..
    and #8                                                            ; b253: 29 08       ).
    asl                                                               ; b255: 0a          .
    asl                                                               ; b256: 0a          .
    asl                                                               ; b257: 0a          .
    asl                                                               ; b258: 0a          .
    ora l00b0                                                         ; b259: 05 b0       ..
    sta l00f0                                                         ; b25b: 85 f0       ..
    jmp cb1d5                                                         ; b25d: 4c d5 b1    L..

; $b260 referenced 1 time by $b245
cb260
    cmp #$45 ; 'E'                                                    ; b260: c9 45       .E
    bne cb203                                                         ; b262: d0 9f       ..
    ldy #$fd                                                          ; b264: a0 fd       ..
    bne loop_cb249                                                    ; b266: d0 e1       ..
; $b268 referenced 1 time by $b23f
cb268
    cmp #9                                                            ; b268: c9 09       ..
    bne cb203                                                         ; b26a: d0 97       ..
    lda #$0d                                                          ; b26c: a9 0d       ..
    jsr sub_cbac4                                                     ; b26e: 20 c4 ba     ..
    bcs cb297                                                         ; b271: b0 24       .$
    ldx #0                                                            ; b273: a2 00       ..
; $b275 referenced 1 time by $b27e
loop_cb275
    lda lb283,x                                                       ; b275: bd 83 b2    ...
    jsr oswrch                                                        ; b278: 20 ee ff     ..            ; Write character
    inx                                                               ; b27b: e8          .
    cpx #$14                                                          ; b27c: e0 14       ..
    bne loop_cb275                                                    ; b27e: d0 f5       ..
; $b280 referenced 2 times by $b2a6, $b2c0
cb280
    jmp cb203                                                         ; b280: 4c 03 b2    L..

; $b283 referenced 1 time by $b275
lb283
    !byte $0a                                                         ; b283: 0a          .
    !text "SRAM 1.05"                                                 ; b284: 53 52 41... SRA
    !byte $0d, $0a                                                    ; b28d: 0d 0a       ..
    !text "  SRAM"                                                    ; b28f: 20 20 53...   S
    !byte $0d, $0a                                                    ; b295: 0d 0a       ..

; $b297 referenced 2 times by $b271, $b2b0
cb297
    jsr sub_cb9f5                                                     ; b297: 20 f5 b9     ..
    cpx #4                                                            ; b29a: e0 04       ..
    beq cb2b2                                                         ; b29c: f0 14       ..
    lda #0                                                            ; b29e: a9 00       ..
; $b2a0 referenced 2 times by $b2aa, $b2ae
cb2a0
    tax                                                               ; b2a0: aa          .
    iny                                                               ; b2a1: c8          .
    lda (os_text_ptr),y                                               ; b2a2: b1 f2       ..
    cmp #$0d                                                          ; b2a4: c9 0d       ..
    beq cb280                                                         ; b2a6: f0 d8       ..
    cmp #$20 ; ' '                                                    ; b2a8: c9 20       .
    beq cb2a0                                                         ; b2aa: f0 f4       ..
    cpx #$20 ; ' '                                                    ; b2ac: e0 20       .
    bne cb2a0                                                         ; b2ae: d0 f0       ..
    beq cb297                                                         ; b2b0: f0 e5       ..
; $b2b2 referenced 1 time by $b29c
cb2b2
    ldy #0                                                            ; b2b2: a0 00       ..
; $b2b4 referenced 1 time by $b2bb
loop_cb2b4
    lda lb075,y                                                       ; b2b4: b9 75 b0    .u.
    jsr oswrch                                                        ; b2b7: 20 ee ff     ..            ; Write character
    iny                                                               ; b2ba: c8          .
    bne loop_cb2b4                                                    ; b2bb: d0 f7       ..
; $b2bd referenced 1 time by $b2c6
loop_cb2bd
    lda lb175,y                                                       ; b2bd: b9 75 b1    .u.
    beq cb280                                                         ; b2c0: f0 be       ..
    jsr oswrch                                                        ; b2c2: 20 ee ff     ..            ; Write character
    iny                                                               ; b2c5: c8          .
    bne loop_cb2bd                                                    ; b2c6: d0 f5       ..
; $b2c8 referenced 1 time by $b1d2
sub_cb2c8
    jsr cb82b                                                         ; b2c8: 20 2b b8     +.
    lda #$ee                                                          ; b2cb: a9 ee       ..
    sta l00b8                                                         ; b2cd: 85 b8       ..
    ldy #$0b                                                          ; b2cf: a0 0b       ..
; $b2d1 referenced 1 time by $b2e4
loop_cb2d1
    lda (l00f0),y                                                     ; b2d1: b1 f0       ..
    cpy #0                                                            ; b2d3: c0 00       ..
    bne cb2e1                                                         ; b2d5: d0 0a       ..
    and #$c0                                                          ; b2d7: 29 c0       ).
    sta l00bc                                                         ; b2d9: 85 bc       ..
    lda (l00b8),y                                                     ; b2db: b1 b8       ..
    and #$3f ; '?'                                                    ; b2dd: 29 3f       )?
    ora l00bc                                                         ; b2df: 05 bc       ..
; $b2e1 referenced 1 time by $b2d5
cb2e1
    sta (l00b8),y                                                     ; b2e1: 91 b8       ..
    dey                                                               ; b2e3: 88          .
    bpl loop_cb2d1                                                    ; b2e4: 10 eb       ..
    cli                                                               ; b2e6: 58          X
; $b2e7 referenced 1 time by $bbcd
cb2e7
    jsr cb82b                                                         ; b2e7: 20 2b b8     +.
    ldy #$f2                                                          ; b2ea: a0 f2       ..
    lda (l00b8),y                                                     ; b2ec: b1 b8       ..
    tax                                                               ; b2ee: aa          .
    iny                                                               ; b2ef: c8          .
    lda (l00b8),y                                                     ; b2f0: b1 b8       ..
    jsr sub_cb85d                                                     ; b2f2: 20 5d b8     ].
    bvs cb305                                                         ; b2f5: 70 0e       p.
    ldy #$f1                                                          ; b2f7: a0 f1       ..
    lda (l00b8),y                                                     ; b2f9: b1 b8       ..
    tay                                                               ; b2fb: a8          .
    cpy #$14                                                          ; b2fc: c0 14       ..
    bcc cb314                                                         ; b2fe: 90 14       ..
; $b300 referenced 2 times by $b324, $bcd3
cb300
    ldx #0                                                            ; b300: a2 00       ..
    jmp cb8fb                                                         ; b302: 4c fb b8    L..

; $b305 referenced 1 time by $b2f5
cb305
    jsr sub_cb6b1                                                     ; b305: 20 b1 b6     ..
    sty l00ba                                                         ; b308: 84 ba       ..
    ldy #$f3                                                          ; b30a: a0 f3       ..
    sta (l00b8),y                                                     ; b30c: 91 b8       ..
    txa                                                               ; b30e: 8a          .
    dey                                                               ; b30f: 88          .
    sta (l00b8),y                                                     ; b310: 91 b8       ..
    ldy l00ba                                                         ; b312: a4 ba       ..
; $b314 referenced 1 time by $b2fe
cb314
    jsr sub_cb6fe                                                     ; b314: 20 fe b6     ..
    tax                                                               ; b317: aa          .
    tya                                                               ; b318: 98          .
    ldy #$f1                                                          ; b319: a0 f1       ..
    sta (l00b8),y                                                     ; b31b: 91 b8       ..
    txa                                                               ; b31d: 8a          .
    ldy #$ee                                                          ; b31e: a0 ee       ..
    eor (l00b8),y                                                     ; b320: 51 b8       Q.
    and #$40 ; '@'                                                    ; b322: 29 40       )@
    bne cb300                                                         ; b324: d0 da       ..
    tay                                                               ; b326: a8          .
    ldx #$ba                                                          ; b327: a2 ba       ..
    jsr osargs                                                        ; b329: 20 da ff     ..            ; Read or write a file's attributes
    jsr cb82b                                                         ; b32c: 20 2b b8     +.
    tax                                                               ; b32f: aa          .
    bne cb337                                                         ; b330: d0 05       ..
    ldx #2                                                            ; b332: a2 02       ..
    jmp cb8fb                                                         ; b334: 4c fb b8    L..

; $b337 referenced 1 time by $b330
cb337
    pha                                                               ; b337: 48          H
    jsr sub_cbe9d                                                     ; b338: 20 9d be     ..
    pla                                                               ; b33b: 68          h
    cmp #4                                                            ; b33c: c9 04       ..
    bcs cb3ba                                                         ; b33e: b0 7a       .z
    jsr sub_cb85d                                                     ; b340: 20 5d b8     ].
    bpl cb375                                                         ; b343: 10 30       .0
    jsr sub_cb5ce                                                     ; b345: 20 ce b5     ..
    jsr sub_cb607                                                     ; b348: 20 07 b6     ..
    bne cb371                                                         ; b34b: d0 24       .$
    beq cb352                                                         ; b34d: f0 03       ..
; $b34f referenced 1 time by $b36f
cb34f
    jsr sub_cb65f                                                     ; b34f: 20 5f b6     _.
; $b352 referenced 1 time by $b34d
cb352
    ldy #$fa                                                          ; b352: a0 fa       ..
    lda (l00b8),y                                                     ; b354: b1 b8       ..
    tay                                                               ; b356: a8          .              ; Y=file handle
    jsr osbget                                                        ; b357: 20 d7 ff     ..            ; Read a single byte from an open file Y
    jsr cb82b                                                         ; b35a: 20 2b b8     +.
    ldy #$f2                                                          ; b35d: a0 f2       ..
    jsr sub_cb83f                                                     ; b35f: 20 3f b8     ?.
    tax                                                               ; b362: aa          .
    ldy #$f1                                                          ; b363: a0 f1       ..
    lda (l00b8),y                                                     ; b365: b1 b8       ..
    tay                                                               ; b367: a8          .
    txa                                                               ; b368: 8a          .
    jsr sub_cb745                                                     ; b369: 20 45 b7     E.
    jsr sub_cb607                                                     ; b36c: 20 07 b6     ..
    beq cb34f                                                         ; b36f: f0 de       ..
; $b371 referenced 3 times by $b34b, $b37b, $b3b8
cb371
    jsr sub_cb5f2                                                     ; b371: 20 f2 b5     ..
    rts                                                               ; b374: 60          `

; $b375 referenced 1 time by $b343
cb375
    jsr sub_cb5ee                                                     ; b375: 20 ee b5     ..
    jsr sub_cb616                                                     ; b378: 20 16 b6     ..
    beq cb371                                                         ; b37b: f0 f4       ..
    bne cb382                                                         ; b37d: d0 03       ..
; $b37f referenced 1 time by $b3b6
cb37f
    jsr sub_cb65f                                                     ; b37f: 20 5f b6     _.
; $b382 referenced 1 time by $b37d
cb382
    ldy #$f4                                                          ; b382: a0 f4       ..
    lda (l00b8),y                                                     ; b384: b1 b8       ..
    sec                                                               ; b386: 38          8
    sbc #1                                                            ; b387: e9 01       ..
    sta (l00b8),y                                                     ; b389: 91 b8       ..
    cmp #$ff                                                          ; b38b: c9 ff       ..
    bne cb397                                                         ; b38d: d0 08       ..
    iny                                                               ; b38f: c8          .
    lda (l00b8),y                                                     ; b390: b1 b8       ..
    sec                                                               ; b392: 38          8
    sbc #1                                                            ; b393: e9 01       ..
    sta (l00b8),y                                                     ; b395: 91 b8       ..
; $b397 referenced 1 time by $b38d
cb397
    ldx #$f6                                                          ; b397: a2 f6       ..
    ldy #$f2                                                          ; b399: a0 f2       ..
    jsr sub_cb841                                                     ; b39b: 20 41 b8     A.
    ldy #$f1                                                          ; b39e: a0 f1       ..
    lda (l00b8),y                                                     ; b3a0: b1 b8       ..
    tay                                                               ; b3a2: a8          .              ; Y=ROM number
    jsr osrdsc                                                        ; b3a3: 20 b9 ff     ..            ; Read byte from ROM Y or screen
    tax                                                               ; b3a6: aa          .              ; A=byte read
    ldy #$fa                                                          ; b3a7: a0 fa       ..
    lda (l00b8),y                                                     ; b3a9: b1 b8       ..
    tay                                                               ; b3ab: a8          .              ; Y=file handle
    txa                                                               ; b3ac: 8a          .
    jsr osbput                                                        ; b3ad: 20 d4 ff     ..            ; Write a single byte A to an open file Y
    jsr cb82b                                                         ; b3b0: 20 2b b8     +.
    jsr sub_cb616                                                     ; b3b3: 20 16 b6     ..
    bne cb37f                                                         ; b3b6: d0 c7       ..
    beq cb371                                                         ; b3b8: f0 b7       ..
; $b3ba referenced 1 time by $b33e
cb3ba
    ldy #$f9                                                          ; b3ba: a0 f9       ..
    lda (l00b8),y                                                     ; b3bc: b1 b8       ..
    bmi cb3de                                                         ; b3be: 30 1e       0.
    dey                                                               ; b3c0: 88          .
    ora (l00b8),y                                                     ; b3c1: 11 b8       ..
    bne cb406                                                         ; b3c3: d0 41       .A
    lda #0                                                            ; b3c5: a9 00       ..
    sta (l00b8),y                                                     ; b3c7: 91 b8       ..
    lda #1                                                            ; b3c9: a9 01       ..
    iny                                                               ; b3cb: c8          .
    sta (l00b8),y                                                     ; b3cc: 91 b8       ..
    ldy #$f6                                                          ; b3ce: a0 f6       ..
    lda #0                                                            ; b3d0: a9 00       ..
    sta (l00b8),y                                                     ; b3d2: 91 b8       ..
    ldx l00b9                                                         ; b3d4: a6 b9       ..
    inx                                                               ; b3d6: e8          .
    txa                                                               ; b3d7: 8a          .
    iny                                                               ; b3d8: c8          .
    sta (l00b8),y                                                     ; b3d9: 91 b8       ..
    jmp cb406                                                         ; b3db: 4c 06 b4    L..

; $b3de referenced 1 time by $b3be
cb3de
    lda #osbyte_read_himem                                            ; b3de: a9 84       ..
    jsr osbyte                                                        ; b3e0: 20 f4 ff     ..            ; Read top of user memory (HIMEM)
    tya                                                               ; b3e3: 98          .              ; X and Y contain the address of HIMEM (low, high)
    pha                                                               ; b3e4: 48          H
    txa                                                               ; b3e5: 8a          .
    pha                                                               ; b3e6: 48          H
    lda #osbyte_read_oshwm                                            ; b3e7: a9 83       ..
    jsr osbyte                                                        ; b3e9: 20 f4 ff     ..            ; Read top of operating system RAM address (OSHWM)
    jsr cb82b                                                         ; b3ec: 20 2b b8     +.
    stx l00ba                                                         ; b3ef: 86 ba       ..
    sty l00bb                                                         ; b3f1: 84 bb       ..
    ldy #$f6                                                          ; b3f3: a0 f6       ..
    jsr sub_cb84e                                                     ; b3f5: 20 4e b8     N.
    pla                                                               ; b3f8: 68          h
    sec                                                               ; b3f9: 38          8
    sbc l00ba                                                         ; b3fa: e5 ba       ..
    ldy #$f8                                                          ; b3fc: a0 f8       ..
    sta (l00b8),y                                                     ; b3fe: 91 b8       ..
    pla                                                               ; b400: 68          h
    sbc l00bb                                                         ; b401: e5 bb       ..
    iny                                                               ; b403: c8          .
    sta (l00b8),y                                                     ; b404: 91 b8       ..
; $b406 referenced 2 times by $b3c3, $b3db
cb406
    jsr sub_cb85d                                                     ; b406: 20 5d b8     ].
    bmi cb40e                                                         ; b409: 30 03       0.
    jmp cb4d8                                                         ; b40b: 4c d8 b4    L..

; $b40e referenced 1 time by $b409
cb40e
    jsr sub_cb5ce                                                     ; b40e: 20 ce b5     ..
    tsx                                                               ; b411: ba          .
    txa                                                               ; b412: 8a          .
    sec                                                               ; b413: 38          8
    sbc #$10                                                          ; b414: e9 10       ..
    tax                                                               ; b416: aa          .
    txs                                                               ; b417: 9a          .
    ldy #$f0                                                          ; b418: a0 f0       ..
    lda (l00b8),y                                                     ; b41a: b1 b8       ..
    pha                                                               ; b41c: 48          H
    dey                                                               ; b41d: 88          .
    lda (l00b8),y                                                     ; b41e: b1 b8       ..
    pha                                                               ; b420: 48          H
    dex                                                               ; b421: ca          .
    ldy #1                                                            ; b422: a0 01       ..
    lda #osfile_read_catalogue_info                                   ; b424: a9 05       ..
    jsr osfile                                                        ; b426: 20 dd ff     ..            ; Read catalogue information (A=5)
    jsr cb82b                                                         ; b429: 20 2b b8     +.
    tsx                                                               ; b42c: ba          .
    lda l010b,x                                                       ; b42d: bd 0b 01    ...
    ldy #$f4                                                          ; b430: a0 f4       ..
    sta (l00b8),y                                                     ; b432: 91 b8       ..
    sta l00ba                                                         ; b434: 85 ba       ..
    lda l010c,x                                                       ; b436: bd 0c 01    ...
    iny                                                               ; b439: c8          .
    sta (l00b8),y                                                     ; b43a: 91 b8       ..
    sta l00bb                                                         ; b43c: 85 bb       ..
    lda l010d,x                                                       ; b43e: bd 0d 01    ...
    ora l010e,x                                                       ; b441: 1d 0e 01    ...
    beq cb44b                                                         ; b444: f0 05       ..
; $b446 referenced 4 times by $b68c, $b6c7, $b715, $bc10
cb446
    ldx #1                                                            ; b446: a2 01       ..
    jmp cb8fb                                                         ; b448: 4c fb b8    L..

; $b44b referenced 1 time by $b444
cb44b
    ldx #$12                                                          ; b44b: a2 12       ..
; $b44d referenced 1 time by $b44f
loop_cb44d
    pla                                                               ; b44d: 68          h
    dex                                                               ; b44e: ca          .
    bne loop_cb44d                                                    ; b44f: d0 fc       ..
    bit lb57f                                                         ; b451: 2c 7f b5    ,..
    lda l00ba                                                         ; b454: a5 ba       ..
    ora l00bb                                                         ; b456: 05 bb       ..
    bne cb45e                                                         ; b458: d0 04       ..
; $b45a referenced 1 time by $b4d2
cb45a
    jsr sub_cb5f2                                                     ; b45a: 20 f2 b5     ..
    rts                                                               ; b45d: 60          `

; $b45e referenced 2 times by $b458, $b4d5
cb45e
    ldx #$bc                                                          ; b45e: a2 bc       ..
    ldy #$f8                                                          ; b460: a0 f8       ..
    jsr sub_cb841                                                     ; b462: 20 41 b8     A.
    ldy #$ba                                                          ; b465: a0 ba       ..
    jsr sub_cb58b                                                     ; b467: 20 8b b5     ..
    bcs cb470                                                         ; b46a: b0 04       ..
    jsr sub_cb580                                                     ; b46c: 20 80 b5     ..
    clv                                                               ; b46f: b8          .
; $b470 referenced 1 time by $b46a
cb470
    ldy #$fb                                                          ; b470: a0 fb       ..
    jsr sub_cb84e                                                     ; b472: 20 4e b8     N.
    bvc cb4af                                                         ; b475: 50 38       P8
    jsr sub_cb5f2                                                     ; b477: 20 f2 b5     ..
    tsx                                                               ; b47a: ba          .
    txa                                                               ; b47b: 8a          .
    sec                                                               ; b47c: 38          8
    sbc #$0b                                                          ; b47d: e9 0b       ..
    tax                                                               ; b47f: aa          .
    txs                                                               ; b480: 9a          .
    lda #0                                                            ; b481: a9 00       ..
    pha                                                               ; b483: 48          H
    lda #$ff                                                          ; b484: a9 ff       ..
    pha                                                               ; b486: 48          H
    pha                                                               ; b487: 48          H
    ldy #$f7                                                          ; b488: a0 f7       ..
    lda (l00b8),y                                                     ; b48a: b1 b8       ..
    pha                                                               ; b48c: 48          H
    dey                                                               ; b48d: 88          .
    lda (l00b8),y                                                     ; b48e: b1 b8       ..
    pha                                                               ; b490: 48          H
    ldy #$f0                                                          ; b491: a0 f0       ..
    lda (l00b8),y                                                     ; b493: b1 b8       ..
    pha                                                               ; b495: 48          H
    dey                                                               ; b496: 88          .
    lda (l00b8),y                                                     ; b497: b1 b8       ..
    pha                                                               ; b499: 48          H
    tsx                                                               ; b49a: ba          .
    inx                                                               ; b49b: e8          .
    ldy #1                                                            ; b49c: a0 01       ..
    lda #osfile_load                                                  ; b49e: a9 ff       ..
    jsr osfile                                                        ; b4a0: 20 dd ff     ..            ; Load named file (if XY+6 contains 0, use specified address) (A=255)
    jsr cb82b                                                         ; b4a3: 20 2b b8     +.
    ldx #$12                                                          ; b4a6: a2 12       ..
; $b4a8 referenced 1 time by $b4aa
loop_cb4a8
    pla                                                               ; b4a8: 68          h
    dex                                                               ; b4a9: ca          .
    bne loop_cb4a8                                                    ; b4aa: d0 fc       ..
    jmp cb4b4                                                         ; b4ac: 4c b4 b4    L..

; $b4af referenced 1 time by $b475
cb4af
    lda #4                                                            ; b4af: a9 04       ..
    jsr sub_cb598                                                     ; b4b1: 20 98 b5     ..
; $b4b4 referenced 1 time by $b4ac
cb4b4
    ldx #$b1                                                          ; b4b4: a2 b1       ..
    ldy #$f6                                                          ; b4b6: a0 f6       ..
    jsr sub_cb841                                                     ; b4b8: 20 41 b8     A.
    ldx #$b3                                                          ; b4bb: a2 b3       ..
    ldy #$f2                                                          ; b4bd: a0 f2       ..
    jsr sub_cb841                                                     ; b4bf: 20 41 b8     A.
    ldx #$be                                                          ; b4c2: a2 be       ..
    ldy #$fb                                                          ; b4c4: a0 fb       ..
    jsr sub_cb841                                                     ; b4c6: 20 41 b8     A.
    sec                                                               ; b4c9: 38          8
    jsr cb795                                                         ; b4ca: 20 95 b7     ..
    ldx #$b3                                                          ; b4cd: a2 b3       ..
    jsr sub_cb61e                                                     ; b4cf: 20 1e b6     ..
    beq cb45a                                                         ; b4d2: f0 86       ..
    clv                                                               ; b4d4: b8          .
    jmp cb45e                                                         ; b4d5: 4c 5e b4    L^.

; $b4d8 referenced 1 time by $b40b
cb4d8
    jsr sub_cb5ee                                                     ; b4d8: 20 ee b5     ..
    bit lb57f                                                         ; b4db: 2c 7f b5    ,..
    php                                                               ; b4de: 08          .
; $b4df referenced 1 time by $b531
cb4df
    ldy #$f4                                                          ; b4df: a0 f4       ..
    jsr sub_cb83f                                                     ; b4e1: 20 3f b8     ?.
    jsr sub_cb616                                                     ; b4e4: 20 16 b6     ..
    bne cb4ee                                                         ; b4e7: d0 05       ..
; $b4e9 referenced 1 time by $b57c
cb4e9
    plp                                                               ; b4e9: 28          (
    jsr sub_cb5f2                                                     ; b4ea: 20 f2 b5     ..
    rts                                                               ; b4ed: 60          `

; $b4ee referenced 1 time by $b4e7
cb4ee
    ldx #$bc                                                          ; b4ee: a2 bc       ..
    ldy #$f8                                                          ; b4f0: a0 f8       ..
    jsr sub_cb841                                                     ; b4f2: 20 41 b8     A.
    ldy #$ba                                                          ; b4f5: a0 ba       ..
    jsr sub_cb58b                                                     ; b4f7: 20 8b b5     ..
    bcs cb502                                                         ; b4fa: b0 06       ..
    jsr sub_cb580                                                     ; b4fc: 20 80 b5     ..
    plp                                                               ; b4ff: 28          (
    clv                                                               ; b500: b8          .
    php                                                               ; b501: 08          .
; $b502 referenced 1 time by $b4fa
cb502
    ldy #$fb                                                          ; b502: a0 fb       ..
    jsr sub_cb84e                                                     ; b504: 20 4e b8     N.
    ldx #$b1                                                          ; b507: a2 b1       ..
    ldy #$f2                                                          ; b509: a0 f2       ..
    jsr sub_cb841                                                     ; b50b: 20 41 b8     A.
    ldx #$b3                                                          ; b50e: a2 b3       ..
    ldy #$f6                                                          ; b510: a0 f6       ..
    jsr sub_cb841                                                     ; b512: 20 41 b8     A.
    ldx #$be                                                          ; b515: a2 be       ..
    ldy #$fb                                                          ; b517: a0 fb       ..
    jsr sub_cb841                                                     ; b519: 20 41 b8     A.
    clc                                                               ; b51c: 18          .
    jsr cb795                                                         ; b51d: 20 95 b7     ..
    ldx #$b1                                                          ; b520: a2 b1       ..
    jsr sub_cb61e                                                     ; b522: 20 1e b6     ..
    plp                                                               ; b525: 28          (
    php                                                               ; b526: 08          .
    bvs cb534                                                         ; b527: 70 0b       p.
    lda #2                                                            ; b529: a9 02       ..
    jsr sub_cb598                                                     ; b52b: 20 98 b5     ..
    plp                                                               ; b52e: 28          (
    clv                                                               ; b52f: b8          .
    php                                                               ; b530: 08          .
    jmp cb4df                                                         ; b531: 4c df b4    L..

; $b534 referenced 1 time by $b527
cb534
    jsr sub_cb5f2                                                     ; b534: 20 f2 b5     ..
    lda #$ff                                                          ; b537: a9 ff       ..
    pha                                                               ; b539: 48          H
    pha                                                               ; b53a: 48          H
    ldy #$f6                                                          ; b53b: a0 f6       ..
    jsr sub_cb83f                                                     ; b53d: 20 3f b8     ?.
    ldy #$fb                                                          ; b540: a0 fb       ..
    lda l00ba                                                         ; b542: a5 ba       ..
    clc                                                               ; b544: 18          .
    adc (l00b8),y                                                     ; b545: 71 b8       q.
    tax                                                               ; b547: aa          .
    lda l00bb                                                         ; b548: a5 bb       ..
    iny                                                               ; b54a: c8          .
    adc (l00b8),y                                                     ; b54b: 71 b8       q.
    pha                                                               ; b54d: 48          H
    txa                                                               ; b54e: 8a          .
    pha                                                               ; b54f: 48          H
    lda #$ff                                                          ; b550: a9 ff       ..
    pha                                                               ; b552: 48          H
    pha                                                               ; b553: 48          H
    lda l00bb                                                         ; b554: a5 bb       ..
    pha                                                               ; b556: 48          H
    lda l00ba                                                         ; b557: a5 ba       ..
    pha                                                               ; b559: 48          H
    lda #$ff                                                          ; b55a: a9 ff       ..
    ldx #8                                                            ; b55c: a2 08       ..
; $b55e referenced 1 time by $b560
loop_cb55e
    pha                                                               ; b55e: 48          H
    dex                                                               ; b55f: ca          .
    bne loop_cb55e                                                    ; b560: d0 fc       ..
    ldy #$f0                                                          ; b562: a0 f0       ..
    lda (l00b8),y                                                     ; b564: b1 b8       ..
    pha                                                               ; b566: 48          H
    dey                                                               ; b567: 88          .
    tsx                                                               ; b568: ba          .
    lda (l00b8),y                                                     ; b569: b1 b8       ..
    pha                                                               ; b56b: 48          H
    ldy #1                                                            ; b56c: a0 01       ..
    lda #osfile_save                                                  ; b56e: a9 00       ..
    jsr osfile                                                        ; b570: 20 dd ff     ..            ; Save a block of memory (returning file length and attributes) (A=0)
    jsr cb82b                                                         ; b573: 20 2b b8     +.
    ldx #$12                                                          ; b576: a2 12       ..
; $b578 referenced 1 time by $b57a
loop_cb578
    pla                                                               ; b578: 68          h
    dex                                                               ; b579: ca          .
    bne loop_cb578                                                    ; b57a: d0 fc       ..
    jmp cb4e9                                                         ; b57c: 4c e9 b4    L..

; $b57f referenced 4 times by $b451, $b4db, $bae7, $bbda
lb57f
    !byte $40                                                         ; b57f: 40          @

; $b580 referenced 7 times by $b46c, $b4fc, $bcfd, $bd08, $bd12, $bdaa, $bde4
sub_cb580
    lda l0000,x                                                       ; b580: b5 00       ..
    sta l0000,y                                                       ; b582: 99 00 00    ...
    lda l0001,x                                                       ; b585: b5 01       ..
    sta l0001,y                                                       ; b587: 99 01 00    ...
    rts                                                               ; b58a: 60          `

; $b58b referenced 3 times by $b467, $b4f7, $b800
sub_cb58b
    lda l0001,x                                                       ; b58b: b5 01       ..
    cmp l0001,y                                                       ; b58d: d9 01 00    ...
    bne cb597                                                         ; b590: d0 05       ..
    lda l0000,x                                                       ; b592: b5 00       ..
    cmp l0000,y                                                       ; b594: d9 00 00    ...
; $b597 referenced 1 time by $b590
cb597
    rts                                                               ; b597: 60          `

; $b598 referenced 2 times by $b4b1, $b52b
sub_cb598
    pha                                                               ; b598: 48          H
    pha                                                               ; b599: 48          H
    pha                                                               ; b59a: 48          H
    pha                                                               ; b59b: 48          H
    lda #0                                                            ; b59c: a9 00       ..
    pha                                                               ; b59e: 48          H
    pha                                                               ; b59f: 48          H
    ldy #$fc                                                          ; b5a0: a0 fc       ..
    lda (l00b8),y                                                     ; b5a2: b1 b8       ..
    pha                                                               ; b5a4: 48          H
    dey                                                               ; b5a5: 88          .
    lda (l00b8),y                                                     ; b5a6: b1 b8       ..
    pha                                                               ; b5a8: 48          H
    lda #$ff                                                          ; b5a9: a9 ff       ..
    pha                                                               ; b5ab: 48          H
    pha                                                               ; b5ac: 48          H
    ldy #$f7                                                          ; b5ad: a0 f7       ..
    lda (l00b8),y                                                     ; b5af: b1 b8       ..
    pha                                                               ; b5b1: 48          H
    dey                                                               ; b5b2: 88          .
    lda (l00b8),y                                                     ; b5b3: b1 b8       ..
    pha                                                               ; b5b5: 48          H
    tsx                                                               ; b5b6: ba          .
    ldy #$fa                                                          ; b5b7: a0 fa       ..
    lda (l00b8),y                                                     ; b5b9: b1 b8       ..
    pha                                                               ; b5bb: 48          H
    lda l0109,x                                                       ; b5bc: bd 09 01    ...
    ldy #1                                                            ; b5bf: a0 01       ..
    jsr osgbpb                                                        ; b5c1: 20 d1 ff     ..            ; Read or write multiple bytes to an open file
    ldx #$0d                                                          ; b5c4: a2 0d       ..
; $b5c6 referenced 1 time by $b5c8
loop_cb5c6
    pla                                                               ; b5c6: 68          h
    dex                                                               ; b5c7: ca          .
    bne loop_cb5c6                                                    ; b5c8: d0 fc       ..
    jsr cb82b                                                         ; b5ca: 20 2b b8     +.
    rts                                                               ; b5cd: 60          `

; $b5ce referenced 2 times by $b345, $b40e
sub_cb5ce
    lda #$40 ; '@'                                                    ; b5ce: a9 40       .@
; $b5d0 referenced 1 time by $b5f0
cb5d0
    pha                                                               ; b5d0: 48          H
    ldy #$ef                                                          ; b5d1: a0 ef       ..
    lda (l00b8),y                                                     ; b5d3: b1 b8       ..
    tax                                                               ; b5d5: aa          .
    iny                                                               ; b5d6: c8          .
    lda (l00b8),y                                                     ; b5d7: b1 b8       ..
    tay                                                               ; b5d9: a8          .
    pla                                                               ; b5da: 68          h
    jsr osfind                                                        ; b5db: 20 ce ff     ..            ; Open or close file(s)
    tax                                                               ; b5de: aa          .
    bne cb5e6                                                         ; b5df: d0 05       ..
    ldx #4                                                            ; b5e1: a2 04       ..
    jmp cb8fb                                                         ; b5e3: 4c fb b8    L..

; $b5e6 referenced 1 time by $b5df
cb5e6
    ldy #$fa                                                          ; b5e6: a0 fa       ..
    jsr cb82b                                                         ; b5e8: 20 2b b8     +.
    sta (l00b8),y                                                     ; b5eb: 91 b8       ..
; $b5ed referenced 1 time by $b5f6
loop_cb5ed
    rts                                                               ; b5ed: 60          `

; $b5ee referenced 2 times by $b375, $b4d8
sub_cb5ee
    lda #$80                                                          ; b5ee: a9 80       ..
    bne cb5d0                                                         ; b5f0: d0 de       ..
; $b5f2 referenced 6 times by $b21b, $b371, $b45a, $b477, $b4ea, $b534
sub_cb5f2
    ldy #$fa                                                          ; b5f2: a0 fa       ..
    lda (l00b8),y                                                     ; b5f4: b1 b8       ..
    beq loop_cb5ed                                                    ; b5f6: f0 f5       ..
    pha                                                               ; b5f8: 48          H
    lda #0                                                            ; b5f9: a9 00       ..
    sta (l00b8),y                                                     ; b5fb: 91 b8       ..
    pla                                                               ; b5fd: 68          h
    tay                                                               ; b5fe: a8          .
    lda #osfind_close                                                 ; b5ff: a9 00       ..
    jsr osfind                                                        ; b601: 20 ce ff     ..            ; Close one or all files
    jmp cb82b                                                         ; b604: 4c 2b b8    L+.

; $b607 referenced 2 times by $b348, $b36c
sub_cb607
    ldy #$fa                                                          ; b607: a0 fa       ..
    lda (l00b8),y                                                     ; b609: b1 b8       ..
    tax                                                               ; b60b: aa          .
    lda #1                                                            ; b60c: a9 01       ..
    jsr sub_cb86f                                                     ; b60e: 20 6f b8     o.
    jsr cb82b                                                         ; b611: 20 2b b8     +.
    txa                                                               ; b614: 8a          .
    rts                                                               ; b615: 60          `

; $b616 referenced 4 times by $b378, $b3b3, $b4e4, $be5d
sub_cb616
    ldy #$f4                                                          ; b616: a0 f4       ..
    lda (l00b8),y                                                     ; b618: b1 b8       ..
    iny                                                               ; b61a: c8          .
    ora (l00b8),y                                                     ; b61b: 11 b8       ..
    rts                                                               ; b61d: 60          `

; $b61e referenced 2 times by $b4cf, $b522
sub_cb61e
    stx l00bc                                                         ; b61e: 86 bc       ..
    ldy #$fb                                                          ; b620: a0 fb       ..
    jsr sub_cb83f                                                     ; b622: 20 3f b8     ?.
    ldy #$f4                                                          ; b625: a0 f4       ..
    lda (l00b8),y                                                     ; b627: b1 b8       ..
    sec                                                               ; b629: 38          8
    sbc l00ba                                                         ; b62a: e5 ba       ..
    sta (l00b8),y                                                     ; b62c: 91 b8       ..
    sta l00ba                                                         ; b62e: 85 ba       ..
    iny                                                               ; b630: c8          .
    lda (l00b8),y                                                     ; b631: b1 b8       ..
    sbc l00bb                                                         ; b633: e5 bb       ..
    sta (l00b8),y                                                     ; b635: 91 b8       ..
    sta l00bb                                                         ; b637: 85 bb       ..
    ora l00ba                                                         ; b639: 05 ba       ..
    beq cb65e                                                         ; b63b: f0 21       .!
    ldx l00bc                                                         ; b63d: a6 bc       ..
    jsr sub_cb85d                                                     ; b63f: 20 5d b8     ].
    bvc cb655                                                         ; b642: 50 11       P.
    lda l0001,x                                                       ; b644: b5 01       ..
    cmp #$c0                                                          ; b646: c9 c0       ..
    bcc cb655                                                         ; b648: 90 0b       ..
    lda #$10                                                          ; b64a: a9 10       ..
    sta l0000,x                                                       ; b64c: 95 00       ..
    lda #$80                                                          ; b64e: a9 80       ..
    sta l0001,x                                                       ; b650: 95 01       ..
    jsr sub_cb68f                                                     ; b652: 20 8f b6     ..
; $b655 referenced 2 times by $b642, $b648
cb655
    ldx l00bc                                                         ; b655: a6 bc       ..
    ldy #$f2                                                          ; b657: a0 f2       ..
    jsr sub_cb850                                                     ; b659: 20 50 b8     P.
    lda #$ff                                                          ; b65c: a9 ff       ..
; $b65e referenced 1 time by $b63b
cb65e
    rts                                                               ; b65e: 60          `

; $b65f referenced 2 times by $b34f, $b37f
sub_cb65f
    ldx #$bd                                                          ; b65f: a2 bd       ..
    ldy #$f2                                                          ; b661: a0 f2       ..
    jsr sub_cb841                                                     ; b663: 20 41 b8     A.
    inc l00bd                                                         ; b666: e6 bd       ..
    bne cb684                                                         ; b668: d0 1a       ..
    inc l00be                                                         ; b66a: e6 be       ..
    beq cb68c                                                         ; b66c: f0 1e       ..
    jsr sub_cb85d                                                     ; b66e: 20 5d b8     ].
    bvc cb684                                                         ; b671: 50 11       P.
    lda l00be                                                         ; b673: a5 be       ..
    cmp #$c0                                                          ; b675: c9 c0       ..
    bne cb684                                                         ; b677: d0 0b       ..
    jsr sub_cb68f                                                     ; b679: 20 8f b6     ..
    lda #$10                                                          ; b67c: a9 10       ..
    sta l00bd                                                         ; b67e: 85 bd       ..
    lda #$80                                                          ; b680: a9 80       ..
    sta l00be                                                         ; b682: 85 be       ..
; $b684 referenced 3 times by $b668, $b671, $b677
cb684
    ldx #$bd                                                          ; b684: a2 bd       ..
    ldy #$f2                                                          ; b686: a0 f2       ..
    jsr sub_cb850                                                     ; b688: 20 50 b8     P.
    rts                                                               ; b68b: 60          `

; $b68c referenced 4 times by $b66c, $b698, $b69c, $b6ae
cb68c
    jmp cb446                                                         ; b68c: 4c 46 b4    LF.

; $b68f referenced 4 times by $b652, $b679, $b81f, $be77
sub_cb68f
    ldy #$f1                                                          ; b68f: a0 f1       ..
    lda (l00b8),y                                                     ; b691: b1 b8       ..
    clc                                                               ; b693: 18          .
    adc #1                                                            ; b694: 69 01       i.
    cmp #$10                                                          ; b696: c9 10       ..
    bcs cb68c                                                         ; b698: b0 f2       ..
    cmp #2                                                            ; b69a: c9 02       ..
    beq cb68c                                                         ; b69c: f0 ee       ..
    cmp #$0e                                                          ; b69e: c9 0e       ..
    bne cb6a6                                                         ; b6a0: d0 04       ..
    ldy #$fe                                                          ; b6a2: a0 fe       ..
    and (l00b8),y                                                     ; b6a4: 31 b8       1.
; $b6a6 referenced 1 time by $b6a0
cb6a6
    ldy #$f1                                                          ; b6a6: a0 f1       ..
    sta (l00b8),y                                                     ; b6a8: 91 b8       ..
    tay                                                               ; b6aa: a8          .
    jsr sub_cb6fe                                                     ; b6ab: 20 fe b6     ..
    beq cb68c                                                         ; b6ae: f0 dc       ..
    rts                                                               ; b6b0: 60          `

; $b6b1 referenced 2 times by $b305, $bcda
sub_cb6b1
    ldy #$10                                                          ; b6b1: a0 10       ..
; $b6b3 referenced 1 time by $b6c5
loop_cb6b3
    cmp cb6ca,y                                                       ; b6b3: d9 ca b6    ...
    bcc cb6ca                                                         ; b6b6: 90 12       ..
    bne cb6c2                                                         ; b6b8: d0 08       ..
    pha                                                               ; b6ba: 48          H
    txa                                                               ; b6bb: 8a          .
    cmp lb6c6,y                                                       ; b6bc: d9 c6 b6    ...
    pla                                                               ; b6bf: 68          h
    bcc cb6ca                                                         ; b6c0: 90 08       ..
; $b6c2 referenced 1 time by $b6b8
cb6c2
    iny                                                               ; b6c2: c8          .
    cpy #$14                                                          ; b6c3: c0 14       ..
sub_cb6c5
lb6c6 = sub_cb6c5+1
    bcc loop_cb6b3                                                    ; b6c5: 90 ec       ..
; $b6c6 referenced 1 time by $b6bc
    jmp cb446                                                         ; b6c7: 4c 46 b4    LF.

; $b6ca referenced 3 times by $b6b3, $b6b6, $b6c0
cb6ca
    pha                                                               ; b6ca: 48          H
    txa                                                               ; b6cb: 8a          .
    clc                                                               ; b6cc: 18          .
sub_cb6cd
lb6ce = sub_cb6cd+1
    adc lb6ce,y                                                       ; b6cd: 79 ce b6    y..
; $b6ce referenced 1 time by $b6cd
    tax                                                               ; b6d0: aa          .
    pla                                                               ; b6d1: 68          h
; $b6d2 referenced 1 time by $b6d2
cb6d2
    adc cb6d2,y                                                       ; b6d2: 79 d2 b6    y..
    rts                                                               ; b6d5: 60          `

    !byte $f0, $e0, $d0, $c0, $3f, $7f, $bf, $ff, $10                 ; b6d6: f0 e0 d0... ...
    !text " 0@"                                                       ; b6df: 20 30 40     0@
    !byte $80, $40,   0, $c0                                          ; b6e2: 80 40 00... .@.

; $b6e6 referenced 1 time by $b6fe
sub_cb6e6
    cpy #$10                                                          ; b6e6: c0 10       ..
    bcs cb6eb                                                         ; b6e8: b0 01       ..
    rts                                                               ; b6ea: 60          `

; $b6eb referenced 1 time by $b6e8
cb6eb
    tya                                                               ; b6eb: 98          .
    sec                                                               ; b6ec: 38          8
    sbc #4                                                            ; b6ed: e9 04       ..
    tay                                                               ; b6ef: a8          .
    cpy #$0e                                                          ; b6f0: c0 0e       ..
    bcs cb6f5                                                         ; b6f2: b0 01       ..
    rts                                                               ; b6f4: 60          `

; $b6f5 referenced 1 time by $b6f2
cb6f5
    tya                                                               ; b6f5: 98          .
    and #1                                                            ; b6f6: 29 01       ).
    ldy #$fe                                                          ; b6f8: a0 fe       ..
    ora (l00b8),y                                                     ; b6fa: 11 b8       ..
    tay                                                               ; b6fc: a8          .
    rts                                                               ; b6fd: 60          `

; $b6fe referenced 5 times by $b314, $b6ab, $bc44, $bc8e, $bce1
sub_cb6fe
    jsr sub_cb6e6                                                     ; b6fe: 20 e6 b6     ..
    tya                                                               ; b701: 98          .
    tax                                                               ; b702: aa          .
    lda lb726,y                                                       ; b703: b9 26 b7    .&.
    pha                                                               ; b706: 48          H
    ldy #$ee                                                          ; b707: a0 ee       ..
    and (l00b8),y                                                     ; b709: 31 b8       1.
    bne cb718                                                         ; b70b: d0 0b       ..
    lda (l00b8),y                                                     ; b70d: b1 b8       ..
    and #$c0                                                          ; b70f: 29 c0       ).
    cmp #$80                                                          ; b711: c9 80       ..
    beq cb718                                                         ; b713: f0 03       ..
    jmp cb446                                                         ; b715: 4c 46 b4    LF.

; $b718 referenced 2 times by $b70b, $b713
cb718
    pla                                                               ; b718: 68          h
    ldy #$fd                                                          ; b719: a0 fd       ..
    and (l00b8),y                                                     ; b71b: 31 b8       1.
    pha                                                               ; b71d: 48          H
    txa                                                               ; b71e: 8a          .
    tay                                                               ; b71f: a8          .
    pla                                                               ; b720: 68          h
    beq cb725                                                         ; b721: f0 02       ..
    lda #$ff                                                          ; b723: a9 ff       ..
; $b725 referenced 1 time by $b721
cb725
    rts                                                               ; b725: 60          `

; $b726 referenced 6 times by $b703, $b898, $b8c8, $b8db, $bc56, $bca1
lb726
    !byte   4,   8,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; b726: 04 08 00... ...
    !byte   1,   2, $10, $20                                          ; b732: 01 02 10... ...

; $b736 referenced 1 time by $b75a
cb736
    sty romsel_copy                                                   ; b736: 84 f4       ..
    sty romsel                                                        ; b738: 8c 30 fe    .0.
    ldy #0                                                            ; b73b: a0 00       ..
    sta (l00ba),y                                                     ; b73d: 91 ba       ..
    stx romsel_copy                                                   ; b73f: 86 f4       ..
    stx romsel                                                        ; b741: 8e 30 fe    .0.
    rts                                                               ; b744: 60          `

; $b745 referenced 5 times by $b369, $b8b7, $b8d1, $bc78, $bc9e
sub_cb745
    sta l00bf                                                         ; b745: 85 bf       ..
    txa                                                               ; b747: 8a          .
    pha                                                               ; b748: 48          H
    tya                                                               ; b749: 98          .
    pha                                                               ; b74a: 48          H
    ldx romsel_copy                                                   ; b74b: a6 f4       ..
    lda l0df0,x                                                       ; b74d: bd f0 0d    ...
    sta l00b1                                                         ; b750: 85 b1       ..
    inc l00b1                                                         ; b752: e6 b1       ..
    lda #0                                                            ; b754: a9 00       ..
    sta l00b0                                                         ; b756: 85 b0       ..
    ldy #$0e                                                          ; b758: a0 0e       ..
; $b75a referenced 1 time by $b760
loop_cb75a
    lda cb736,y                                                       ; b75a: b9 36 b7    .6.
    sta (l00b0),y                                                     ; b75d: 91 b0       ..
    dey                                                               ; b75f: 88          .
    bpl loop_cb75a                                                    ; b760: 10 f8       ..
    pla                                                               ; b762: 68          h
    pha                                                               ; b763: 48          H
    tay                                                               ; b764: a8          .
    lda l00bf                                                         ; b765: a5 bf       ..
    jsr sub_cb771                                                     ; b767: 20 71 b7     q.
    pla                                                               ; b76a: 68          h
    tay                                                               ; b76b: a8          .
    pla                                                               ; b76c: 68          h
    tax                                                               ; b76d: aa          .
    lda l00bf                                                         ; b76e: a5 bf       ..
    rts                                                               ; b770: 60          `

; $b771 referenced 1 time by $b767
sub_cb771
    jmp (l00b0)                                                       ; b771: 6c b0 00    l..

; $b774 referenced 1 time by $b7be
lb774
    !byte $85, $f4, $8d, $30, $fe, $b1, $b1, $91, $b3, $c8, $d0,   5  ; b774: 85 f4 8d... ...
    !byte $e6, $b2, $e6, $b4, $ca, $c4, $b5, $d0, $f0, $8a, $d0, $ed  ; b780: e6 b2 e6... ...
    !byte $68, $85, $f4, $8d, $30, $fe, $4c, $d5, $b7                 ; b78c: 68 85 f4... h..

; $b795 referenced 5 times by $b4ca, $b51d, $bd0b, $bdb0, $bded
cb795
    ldy #$f1                                                          ; b795: a0 f1       ..
    lda (l00b8),y                                                     ; b797: b1 b8       ..
    sta l00b0                                                         ; b799: 85 b0       ..
    ldx l00be                                                         ; b79b: a6 be       ..
    ldy l00bf                                                         ; b79d: a4 bf       ..
    lda #0                                                            ; b79f: a9 00       ..
    rol                                                               ; b7a1: 2a          *
    asl                                                               ; b7a2: 0a          .
    sta l00b7                                                         ; b7a3: 85 b7       ..
    inc l00b7                                                         ; b7a5: e6 b7       ..
    jsr sub_cb85d                                                     ; b7a7: 20 5d b8     ].
    bvs cb7ed                                                         ; b7aa: 70 41       pA
    bvc cb7b2                                                         ; b7ac: 50 04       P.
; $b7ae referenced 1 time by $b803
cb7ae
    ldx l00be                                                         ; b7ae: a6 be       ..
    ldy l00bf                                                         ; b7b0: a4 bf       ..
; $b7b2 referenced 1 time by $b7ac
cb7b2
    stx l00b5                                                         ; b7b2: 86 b5       ..
    sty l00b6                                                         ; b7b4: 84 b6       ..
; $b7b6 referenced 1 time by $b812
sub_cb7b6
    lda l00b5                                                         ; b7b6: a5 b5       ..
    ora l00b6                                                         ; b7b8: 05 b6       ..
    beq cb7ec                                                         ; b7ba: f0 30       .0
    ldx #$20 ; ' '                                                    ; b7bc: a2 20       .
; $b7be referenced 1 time by $b7c3
loop_cb7be
    lda lb774,x                                                       ; b7be: bd 74 b7    .t.
    pha                                                               ; b7c1: 48          H
    dex                                                               ; b7c2: ca          .
    bpl loop_cb7be                                                    ; b7c3: 10 f9       ..
    tsx                                                               ; b7c5: ba          .
    lda romsel_copy                                                   ; b7c6: a5 f4       ..
    pha                                                               ; b7c8: 48          H
    lda #1                                                            ; b7c9: a9 01       ..
    pha                                                               ; b7cb: 48          H
    txa                                                               ; b7cc: 8a          .
    pha                                                               ; b7cd: 48          H
    lda l00b0                                                         ; b7ce: a5 b0       ..
    ldx l00b6                                                         ; b7d0: a6 b6       ..
    ldy #0                                                            ; b7d2: a0 00       ..
    rts                                                               ; b7d4: 60          `

    ldx #$21 ; '!'                                                    ; b7d5: a2 21       .!
; $b7d7 referenced 1 time by $b7d9
loop_cb7d7
    pla                                                               ; b7d7: 68          h
    dex                                                               ; b7d8: ca          .
    bne loop_cb7d7                                                    ; b7d9: d0 fc       ..
    ldx #2                                                            ; b7db: a2 02       ..
; $b7dd referenced 1 time by $b7ea
loop_cb7dd
    lda l00b1,x                                                       ; b7dd: b5 b1       ..
    clc                                                               ; b7df: 18          .
    adc l00b5                                                         ; b7e0: 65 b5       e.
    sta l00b1,x                                                       ; b7e2: 95 b1       ..
    bcc cb7e8                                                         ; b7e4: 90 02       ..
    inc l00b2,x                                                       ; b7e6: f6 b2       ..
; $b7e8 referenced 1 time by $b7e4
cb7e8
    dex                                                               ; b7e8: ca          .
    dex                                                               ; b7e9: ca          .
    bpl loop_cb7dd                                                    ; b7ea: 10 f1       ..
; $b7ec referenced 1 time by $b7ba
cb7ec
    rts                                                               ; b7ec: 60          `

; $b7ed referenced 2 times by $b7aa, $b828
cb7ed
    lda #0                                                            ; b7ed: a9 00       ..
    sec                                                               ; b7ef: 38          8
    ldx l00b7                                                         ; b7f0: a6 b7       ..
    sbc l00b0,x                                                       ; b7f2: f5 b0       ..
    sta l00b5                                                         ; b7f4: 85 b5       ..
    lda #$c0                                                          ; b7f6: a9 c0       ..
    sbc l00b1,x                                                       ; b7f8: f5 b1       ..
    sta l00b6                                                         ; b7fa: 85 b6       ..
    ldx #$b5                                                          ; b7fc: a2 b5       ..
    ldy #$be                                                          ; b7fe: a0 be       ..
    jsr sub_cb58b                                                     ; b800: 20 8b b5     ..
    bcs cb7ae                                                         ; b803: b0 a9       ..
    lda l00be                                                         ; b805: a5 be       ..
    sec                                                               ; b807: 38          8
    sbc l00b5                                                         ; b808: e5 b5       ..
    sta l00be                                                         ; b80a: 85 be       ..
    lda l00bf                                                         ; b80c: a5 bf       ..
    sbc l00b6                                                         ; b80e: e5 b6       ..
    sta l00bf                                                         ; b810: 85 bf       ..
    jsr sub_cb7b6                                                     ; b812: 20 b6 b7     ..
    lda #$10                                                          ; b815: a9 10       ..
    ldx l00b7                                                         ; b817: a6 b7       ..
    sta l00b0,x                                                       ; b819: 95 b0       ..
    lda #$80                                                          ; b81b: a9 80       ..
    sta l00b1,x                                                       ; b81d: 95 b1       ..
    jsr sub_cb68f                                                     ; b81f: 20 8f b6     ..
    ldy #$f1                                                          ; b822: a0 f1       ..
    lda (l00b8),y                                                     ; b824: b1 b8       ..
    sta l00b0                                                         ; b826: 85 b0       ..
    jmp cb7ed                                                         ; b828: 4c ed b7    L..

; $b82b referenced 16 times by $b1c1, $b2c8, $b2e7, $b32c, $b35a, $b3b0, $b3ec, $b429, $b4a3, $b573, $b5ca, $b5e8, $b604, $b611, $b86b, $beb5
cb82b
    php                                                               ; b82b: 08          .
    pha                                                               ; b82c: 48          H
    txa                                                               ; b82d: 8a          .
    pha                                                               ; b82e: 48          H
    lda #0                                                            ; b82f: a9 00       ..
    sta l00b8                                                         ; b831: 85 b8       ..
    ldx romsel_copy                                                   ; b833: a6 f4       ..
    lda l0df0,x                                                       ; b835: bd f0 0d    ...
    sta l00b9                                                         ; b838: 85 b9       ..
    pla                                                               ; b83a: 68          h
    tax                                                               ; b83b: aa          .
    pla                                                               ; b83c: 68          h
    plp                                                               ; b83d: 28          (
    rts                                                               ; b83e: 60          `

; $b83f referenced 4 times by $b35f, $b4e1, $b53d, $b622
sub_cb83f
    ldx #$ba                                                          ; b83f: a2 ba       ..
; $b841 referenced 12 times by $b39b, $b462, $b4b8, $b4bf, $b4c6, $b4f2, $b50b, $b512, $b519, $b663, $bd4a, $bdc4
sub_cb841
    pha                                                               ; b841: 48          H
    lda (l00b8),y                                                     ; b842: b1 b8       ..
    sta l0000,x                                                       ; b844: 95 00       ..
    iny                                                               ; b846: c8          .
    lda (l00b8),y                                                     ; b847: b1 b8       ..
    sta l0001,x                                                       ; b849: 95 01       ..
    dey                                                               ; b84b: 88          .
    pla                                                               ; b84c: 68          h
    rts                                                               ; b84d: 60          `

; $b84e referenced 3 times by $b3f5, $b472, $b504
sub_cb84e
    ldx #$ba                                                          ; b84e: a2 ba       ..
; $b850 referenced 5 times by $b659, $b688, $bb5c, $bb8d, $bd36
sub_cb850
    pha                                                               ; b850: 48          H
    lda l0000,x                                                       ; b851: b5 00       ..
    sta (l00b8),y                                                     ; b853: 91 b8       ..
    iny                                                               ; b855: c8          .
    lda l0001,x                                                       ; b856: b5 01       ..
    sta (l00b8),y                                                     ; b858: 91 b8       ..
    dey                                                               ; b85a: 88          .
    pla                                                               ; b85b: 68          h
    rts                                                               ; b85c: 60          `

; $b85d referenced 8 times by $b2f2, $b340, $b406, $b63f, $b66e, $b7a7, $be64, $be9d
sub_cb85d
    pha                                                               ; b85d: 48          H
    tya                                                               ; b85e: 98          .
    pha                                                               ; b85f: 48          H
    ldy #$ee                                                          ; b860: a0 ee       ..
    lda (l00b8),y                                                     ; b862: b1 b8       ..
    sta l00b8                                                         ; b864: 85 b8       ..
    pla                                                               ; b866: 68          h
    tay                                                               ; b867: a8          .
    pla                                                               ; b868: 68          h
    bit l00b8                                                         ; b869: 24 b8       $.
    jsr cb82b                                                         ; b86b: 20 2b b8     +.
    rts                                                               ; b86e: 60          `

; $b86f referenced 1 time by $b60e
sub_cb86f
    jmp (fscv)                                                        ; b86f: 6c 1e 02    l..

; $b872 referenced 2 times by $b9c7, $bc70
lb872
    !byte $60,   0,   0, $60,   0,   0,   2, $0c, $ff                 ; b872: 60 00 00... `..
    !text "RAM"                                                       ; b87b: 52 41 4d    RAM
; $b87e referenced 1 time by $b9a3
lb87e
    !byte 0                                                           ; b87e: 00          .
    !text "(C)"                                                       ; b87f: 28 43 29    (C)

; $b882 referenced 1 time by $b200
sub_cb882
    lda #0                                                            ; b882: a9 00       ..
    ldy #$fd                                                          ; b884: a0 fd       ..
    sta (l00b8),y                                                     ; b886: 91 b8       ..
    ldy #$ee                                                          ; b888: a0 ee       ..
    sta (l00b8),y                                                     ; b88a: 91 b8       ..
    ldy #$fa                                                          ; b88c: a0 fa       ..
    sta (l00b8),y                                                     ; b88e: 91 b8       ..
    ldy #$ff                                                          ; b890: a0 ff       ..
    lda #$4e ; 'N'                                                    ; b892: a9 4e       .N
    sta (l00b8),y                                                     ; b894: 91 b8       ..
    ldy #$0f                                                          ; b896: a0 0f       ..
; $b898 referenced 1 time by $b8e7
cb898
    lda lb726,y                                                       ; b898: b9 26 b7    .&.
    beq cb8e6                                                         ; b89b: f0 49       .I
    tya                                                               ; b89d: 98          .
    pha                                                               ; b89e: 48          H
    lda #8                                                            ; b89f: a9 08       ..
    sta osrdsc_ptr                                                    ; b8a1: 85 f6       ..
    sta l00ba                                                         ; b8a3: 85 ba       ..
    lda #$80                                                          ; b8a5: a9 80       ..
    sta l00f7                                                         ; b8a7: 85 f7       ..
    sta l00bb                                                         ; b8a9: 85 bb       ..
    jsr osrdsc                                                        ; b8ab: 20 b9 ff     ..            ; Read byte from ROM Y or screen
    sta l00bd                                                         ; b8ae: 85 bd       ..             ; A=byte read
    pla                                                               ; b8b0: 68          h
    pha                                                               ; b8b1: 48          H
    tay                                                               ; b8b2: a8          .
    lda l00bd                                                         ; b8b3: a5 bd       ..
    eor #$ff                                                          ; b8b5: 49 ff       I.
    jsr sub_cb745                                                     ; b8b7: 20 45 b7     E.
    jsr osrdsc                                                        ; b8ba: 20 b9 ff     ..            ; Read byte from ROM Y or screen
    cmp l00bd                                                         ; b8bd: c5 bd       ..             ; A=byte read
    beq cb8e4                                                         ; b8bf: f0 23       .#
    pla                                                               ; b8c1: 68          h
    pha                                                               ; b8c2: 48          H
    tax                                                               ; b8c3: aa          .
    ldy #$ee                                                          ; b8c4: a0 ee       ..
    lda (l00b8),y                                                     ; b8c6: b1 b8       ..
    ora lb726,x                                                       ; b8c8: 1d 26 b7    .&.
    sta (l00b8),y                                                     ; b8cb: 91 b8       ..
    txa                                                               ; b8cd: 8a          .
    tay                                                               ; b8ce: a8          .
    lda l00bd                                                         ; b8cf: a5 bd       ..
    jsr sub_cb745                                                     ; b8d1: 20 45 b7     E.
    jsr sub_cb986                                                     ; b8d4: 20 86 b9     ..
    cmp #2                                                            ; b8d7: c9 02       ..
    bne cb8e4                                                         ; b8d9: d0 09       ..
    lda lb726,y                                                       ; b8db: b9 26 b7    .&.
    ldy #$fd                                                          ; b8de: a0 fd       ..
    ora (l00b8),y                                                     ; b8e0: 11 b8       ..
    sta (l00b8),y                                                     ; b8e2: 91 b8       ..
; $b8e4 referenced 2 times by $b8bf, $b8d9
cb8e4
    pla                                                               ; b8e4: 68          h
    tay                                                               ; b8e5: a8          .
; $b8e6 referenced 1 time by $b89b
cb8e6
    dey                                                               ; b8e6: 88          .
    bpl cb898                                                         ; b8e7: 10 af       ..
    ldy #$ee                                                          ; b8e9: a0 ee       ..
    lda (l00b8),y                                                     ; b8eb: b1 b8       ..
    ldx #0                                                            ; b8ed: a2 00       ..
    and #$0c                                                          ; b8ef: 29 0c       ).
    bne cb8f5                                                         ; b8f1: d0 02       ..
    ldx #$0e                                                          ; b8f3: a2 0e       ..
; $b8f5 referenced 1 time by $b8f1
cb8f5
    txa                                                               ; b8f5: 8a          .
    ldy #$fe                                                          ; b8f6: a0 fe       ..
    sta (l00b8),y                                                     ; b8f8: 91 b8       ..
    rts                                                               ; b8fa: 60          `

; $b8fb referenced 6 times by $b302, $b334, $b448, $b5e3, $bafa, $bc51
cb8fb
    lda #0                                                            ; b8fb: a9 00       ..
    sta l0100                                                         ; b8fd: 8d 00 01    ...
    lda lb980,x                                                       ; b900: bd 80 b9    ...
    sta l0101                                                         ; b903: 8d 01 01    ...
    lda lb97a,x                                                       ; b906: bd 7a b9    .z.
    sta l00bf                                                         ; b909: 85 bf       ..
    ldy lb979,x                                                       ; b90b: bc 79 b9    .y.
    ldx #0                                                            ; b90e: a2 00       ..
; $b910 referenced 1 time by $b91a
loop_cb910
    lda lb924,y                                                       ; b910: b9 24 b9    .$.
    sta l0102,x                                                       ; b913: 9d 02 01    ...
    inx                                                               ; b916: e8          .
    iny                                                               ; b917: c8          .
    cpy l00bf                                                         ; b918: c4 bf       ..
    bcc loop_cb910                                                    ; b91a: 90 f4       ..
    lda #0                                                            ; b91c: a9 00       ..
    sta l0102,x                                                       ; b91e: 9d 02 01    ...
    jmp l0100                                                         ; b921: 4c 00 01    L..

; $b924 referenced 1 time by $b910
lb924
    !text "Illegal parameterIllegal addressNo filing systemBad com"   ; b924: 49 6c 6c... Ill
    !text "mandFile not foundRAM occupied"                            ; b95b: 6d 61 6e... man
; $b979 referenced 1 time by $b90b
lb979
    !byte 0                                                           ; b979: 00          .
; $b97a referenced 1 time by $b906
lb97a
    !byte $11                                                         ; b97a: 11          .
    !text " 0;IU"                                                     ; b97b: 20 30 3b...  0;
; $b980 referenced 1 time by $b900
lb980
    !byte $80, $81, $82, $fe, $d6, $83                                ; b980: 80 81 82... ...

; $b986 referenced 3 times by $b8d4, $bc49, $bcb2
sub_cb986
    txa                                                               ; b986: 8a          .
    pha                                                               ; b987: 48          H
    tya                                                               ; b988: 98          .
    pha                                                               ; b989: 48          H
    ldx #7                                                            ; b98a: a2 07       ..
    stx osrdsc_ptr                                                    ; b98c: 86 f6       ..
    lda #$80                                                          ; b98e: a9 80       ..
    sta l00f7                                                         ; b990: 85 f7       ..
    jsr osrdsc                                                        ; b992: 20 b9 ff     ..            ; Read byte from ROM Y or screen
    sta osrdsc_ptr                                                    ; b995: 85 f6       ..             ; A=byte read
    ldx #0                                                            ; b997: a2 00       ..
; $b999 referenced 1 time by $b9b1
loop_cb999
    stx l00bf                                                         ; b999: 86 bf       ..
    pla                                                               ; b99b: 68          h
    pha                                                               ; b99c: 48          H
    tay                                                               ; b99d: a8          .              ; Y=ROM number
    jsr osrdsc                                                        ; b99e: 20 b9 ff     ..            ; Read byte from ROM Y or screen
    ldx l00bf                                                         ; b9a1: a6 bf       ..
    cmp lb87e,x                                                       ; b9a3: dd 7e b8    .~.
    bne cb9ee                                                         ; b9a6: d0 46       .F
    inc osrdsc_ptr                                                    ; b9a8: e6 f6       ..
    bne cb9ae                                                         ; b9aa: d0 02       ..
    inc l00f7                                                         ; b9ac: e6 f7       ..
; $b9ae referenced 1 time by $b9aa
cb9ae
    inx                                                               ; b9ae: e8          .
    cpx #4                                                            ; b9af: e0 04       ..
    bcc loop_cb999                                                    ; b9b1: 90 e6       ..
    lda #2                                                            ; b9b3: a9 02       ..
    sta l00bf                                                         ; b9b5: 85 bf       ..
    ldx #$0f                                                          ; b9b7: a2 0f       ..
    lda #$80                                                          ; b9b9: a9 80       ..
    sta l00f7                                                         ; b9bb: 85 f7       ..
; $b9bd referenced 1 time by $b9cf
loop_cb9bd
    stx osrdsc_ptr                                                    ; b9bd: 86 f6       ..
    pla                                                               ; b9bf: 68          h
    pha                                                               ; b9c0: 48          H
    tay                                                               ; b9c1: a8          .              ; Y=ROM number
    jsr osrdsc                                                        ; b9c2: 20 b9 ff     ..            ; Read byte from ROM Y or screen
    ldx osrdsc_ptr                                                    ; b9c5: a6 f6       ..
    cmp lb872,x                                                       ; b9c7: dd 72 b8    .r.
    bne cb9d9                                                         ; b9ca: d0 0d       ..
; $b9cc referenced 1 time by $b9e5
loop_cb9cc
    dex                                                               ; b9cc: ca          .
    cpx #6                                                            ; b9cd: e0 06       ..
    bcs loop_cb9bd                                                    ; b9cf: b0 ec       ..
; $b9d1 referenced 1 time by $b9ec
loop_cb9d1
    clc                                                               ; b9d1: 18          .
; $b9d2 referenced 1 time by $b9f3
cb9d2
    pla                                                               ; b9d2: 68          h
    tay                                                               ; b9d3: a8          .
    pla                                                               ; b9d4: 68          h
    tax                                                               ; b9d5: aa          .
    lda l00bf                                                         ; b9d6: a5 bf       ..
    rts                                                               ; b9d8: 60          `

; $b9d9 referenced 1 time by $b9ca
cb9d9
    cpx #$0a                                                          ; b9d9: e0 0a       ..
    bne cb9e8                                                         ; b9db: d0 0b       ..
    cmp #$4f ; 'O'                                                    ; b9dd: c9 4f       .O
    bne cb9e8                                                         ; b9df: d0 07       ..
    lda #1                                                            ; b9e1: a9 01       ..
    sta l00bf                                                         ; b9e3: 85 bf       ..
    jmp loop_cb9cc                                                    ; b9e5: 4c cc b9    L..

; $b9e8 referenced 2 times by $b9db, $b9df
cb9e8
    lda #0                                                            ; b9e8: a9 00       ..
    sta l00bf                                                         ; b9ea: 85 bf       ..
    beq loop_cb9d1                                                    ; b9ec: f0 e3       ..
; $b9ee referenced 1 time by $b9a6
cb9ee
    lda #$ff                                                          ; b9ee: a9 ff       ..
    sta l00bf                                                         ; b9f0: 85 bf       ..
    sec                                                               ; b9f2: 38          8
    bcs cb9d2                                                         ; b9f3: b0 dd       ..
; $b9f5 referenced 2 times by $b225, $b297
sub_cb9f5
    ldx #0                                                            ; b9f5: a2 00       ..
; $b9f7 referenced 1 time by $ba25
cb9f7
    tya                                                               ; b9f7: 98          .
    pha                                                               ; b9f8: 48          H
; $b9f9 referenced 1 time by $ba0e
loop_cb9f9
    lda (os_text_ptr),y                                               ; b9f9: b1 f2       ..
    bmi cba10                                                         ; b9fb: 30 13       0.
    cmp #$2e ; '.'                                                    ; b9fd: c9 2e       ..
    beq cba19                                                         ; b9ff: f0 18       ..
    cmp #$41 ; 'A'                                                    ; ba01: c9 41       .A
    bcc cba10                                                         ; ba03: 90 0b       ..
    eor sram_table,x                                                  ; ba05: 5d 30 ba    ]0.
    and #$df                                                          ; ba08: 29 df       ).
    bne cba15                                                         ; ba0a: d0 09       ..
    iny                                                               ; ba0c: c8          .
    inx                                                               ; ba0d: e8          .
    bne loop_cb9f9                                                    ; ba0e: d0 e9       ..
; $ba10 referenced 2 times by $b9fb, $ba03
cba10
    lda sram_table,x                                                  ; ba10: bd 30 ba    .0.
    bmi cba28                                                         ; ba13: 30 13       0.
; $ba15 referenced 1 time by $ba0a
cba15
    clc                                                               ; ba15: 18          .
    pla                                                               ; ba16: 68          h
    tay                                                               ; ba17: a8          .
    dey                                                               ; ba18: 88          .
; $ba19 referenced 1 time by $b9ff
cba19
    iny                                                               ; ba19: c8          .
; $ba1a referenced 1 time by $ba20
loop_cba1a
    inx                                                               ; ba1a: e8          .
    lda cba2f,x                                                       ; ba1b: bd 2f ba    ./.
    beq cba2e                                                         ; ba1e: f0 0e       ..
    bpl loop_cba1a                                                    ; ba20: 10 f8       ..
    bcs cba27                                                         ; ba22: b0 03       ..
    inx                                                               ; ba24: e8          .
    bcc cb9f7                                                         ; ba25: 90 d0       ..
; $ba27 referenced 1 time by $ba22
cba27
    dex                                                               ; ba27: ca          .
; $ba28 referenced 1 time by $ba13
cba28
    pla                                                               ; ba28: 68          h
    jsr sub_cbab9                                                     ; ba29: 20 b9 ba     ..
    clc                                                               ; ba2c: 18          .
    rts                                                               ; ba2d: 60          `

; $ba2e referenced 1 time by $ba1e
cba2e
    sec                                                               ; ba2e: 38          8
; $ba2f referenced 1 time by $ba1b
cba2f
    rts                                                               ; ba2f: 60          `

; $ba30 referenced 3 times by $b234, $ba05, $ba10
sram_table
    !text "SRAM"                                                      ; ba30: 53 52 41... SRA
; $ba31 referenced 1 time by $b238
    !byte $ff, $ff                                                    ; ba34: ff ff       ..
    !text "SRLOAD"                                                    ; ba36: 53 52 4c... SRL
    !byte >(sub_cbb46-1)                                              ; ba3c: bb          .
    !byte <(sub_cbb46-1)                                              ; ba3d: 45          E
    !text "SRSAVE"                                                    ; ba3e: 53 52 53... SRS
    !byte >(sub_cbb4a-1)                                              ; ba44: bb          .
    !byte <(sub_cbb4a-1)                                              ; ba45: 49          I
    !text "SRWRITE"                                                   ; ba46: 53 52 57... SRW
    !byte >(sub_cbbd3-1)                                              ; ba4d: bb          .
    !byte <(sub_cbbd3-1)                                              ; ba4e: d2          .
    !text "SRREAD"                                                    ; ba4f: 53 52 52... SRR
    !byte >(sub_cbbd7-1)                                              ; ba55: bb          .
    !byte <(sub_cbbd7-1)                                              ; ba56: d6          .
    !text "SRDATA"                                                    ; ba57: 53 52 44... SRD
    !byte >(sub_cbc37-1)                                              ; ba5d: bc          .
    !byte <(sub_cbc37-1)                                              ; ba5e: 36          6
    !text "SRROM"                                                     ; ba5f: 53 52 52... SRR
    !byte >(sub_cbc81-1)                                              ; ba64: bc          .
    !byte <(sub_cbc81-1)                                              ; ba65: 80          .
    !byte 0                                                           ; ba66: 00          .

; $ba67 referenced 5 times by $bb51, $bb6c, $bbdd, $bbf3, $bc1c
sub_cba67
    txa                                                               ; ba67: 8a          .
    pha                                                               ; ba68: 48          H
    jsr sub_cbab9                                                     ; ba69: 20 b9 ba     ..
    lda #0                                                            ; ba6c: a9 00       ..
    sta l00bc                                                         ; ba6e: 85 bc       ..
    sta l00bd                                                         ; ba70: 85 bd       ..
    sta l00be                                                         ; ba72: 85 be       ..
    sta l00bf                                                         ; ba74: 85 bf       ..
    sec                                                               ; ba76: 38          8
    php                                                               ; ba77: 08          .
; $ba78 referenced 1 time by $baae
cba78
    lda (os_text_ptr),y                                               ; ba78: b1 f2       ..
    cmp #$30 ; '0'                                                    ; ba7a: c9 30       .0
    bcc cbab4                                                         ; ba7c: 90 36       .6
    cmp #$3a ; ':'                                                    ; ba7e: c9 3a       .:
    bcc cba8c                                                         ; ba80: 90 0a       ..
    cmp #$47 ; 'G'                                                    ; ba82: c9 47       .G
    bcs cbab4                                                         ; ba84: b0 2e       ..
    cmp #$41 ; 'A'                                                    ; ba86: c9 41       .A
    bcc cbab4                                                         ; ba88: 90 2a       .*
    sbc #7                                                            ; ba8a: e9 07       ..
; $ba8c referenced 1 time by $ba80
cba8c
    sec                                                               ; ba8c: 38          8
    sbc #$30 ; '0'                                                    ; ba8d: e9 30       .0
    plp                                                               ; ba8f: 28          (
    php                                                               ; ba90: 08          .
    pha                                                               ; ba91: 48          H
    ldx #4                                                            ; ba92: a2 04       ..
; $ba94 referenced 1 time by $baa1
loop_cba94
    asl l00bc                                                         ; ba94: 06 bc       ..
    rol l00bd                                                         ; ba96: 26 bd       &.
    bvc cba9e                                                         ; ba98: 50 04       P.
    rol l00be                                                         ; ba9a: 26 be       &.
    rol l00bf                                                         ; ba9c: 26 bf       &.
; $ba9e referenced 1 time by $ba98
cba9e
    bcs cbab0                                                         ; ba9e: b0 10       ..
    dex                                                               ; baa0: ca          .
    bne loop_cba94                                                    ; baa1: d0 f1       ..
    pla                                                               ; baa3: 68          h
    ora l00bc                                                         ; baa4: 05 bc       ..
    sta l00bc                                                         ; baa6: 85 bc       ..
    plp                                                               ; baa8: 28          (
    clc                                                               ; baa9: 18          .
    php                                                               ; baaa: 08          .
    iny                                                               ; baab: c8          .
    beq cbab1                                                         ; baac: f0 03       ..
    bcc cba78                                                         ; baae: 90 c8       ..
; $bab0 referenced 1 time by $ba9e
cbab0
    pla                                                               ; bab0: 68          h
; $bab1 referenced 1 time by $baac
cbab1
    plp                                                               ; bab1: 28          (
    sec                                                               ; bab2: 38          8
    php                                                               ; bab3: 08          .
; $bab4 referenced 3 times by $ba7c, $ba84, $ba88
cbab4
    plp                                                               ; bab4: 28          (
    pla                                                               ; bab5: 68          h
    tax                                                               ; bab6: aa          .
    rts                                                               ; bab7: 60          `

; $bab8 referenced 1 time by $babd
loop_cbab8
    iny                                                               ; bab8: c8          .
; $bab9 referenced 7 times by $ba29, $ba69, $bac5, $bad2, $bb02, $bb2b, $bbb0
sub_cbab9
    lda (os_text_ptr),y                                               ; bab9: b1 f2       ..
    cmp #$20 ; ' '                                                    ; babb: c9 20       .
    beq loop_cbab8                                                    ; babd: f0 f9       ..
    cmp #$0d                                                          ; babf: c9 0d       ..
    rts                                                               ; bac1: 60          `

; $bac2 referenced 4 times by $bbbe, $bc2c, $bc3d, $bc87
sub_cbac2
    lda #$0d                                                          ; bac2: a9 0d       ..
; $bac4 referenced 3 times by $b26e, $bb67, $bbed
sub_cbac4
    pha                                                               ; bac4: 48          H
    jsr sub_cbab9                                                     ; bac5: 20 b9 ba     ..
    pla                                                               ; bac8: 68          h
    cmp (os_text_ptr),y                                               ; bac9: d1 f2       ..
    bne cbad0                                                         ; bacb: d0 03       ..
    clc                                                               ; bacd: 18          .
    iny                                                               ; bace: c8          .
    rts                                                               ; bacf: 60          `

; $bad0 referenced 1 time by $bacb
cbad0
    sec                                                               ; bad0: 38          8
    rts                                                               ; bad1: 60          `

; $bad2 referenced 1 time by $bb4d
sub_cbad2
    jsr sub_cbab9                                                     ; bad2: 20 b9 ba     ..
    tya                                                               ; bad5: 98          .
    pha                                                               ; bad6: 48          H
    clc                                                               ; bad7: 18          .
    adc os_text_ptr                                                   ; bad8: 65 f2       e.
    ldy #$ef                                                          ; bada: a0 ef       ..
    sta (l00b8),y                                                     ; badc: 91 b8       ..
    lda l00f3                                                         ; bade: a5 f3       ..
    adc #0                                                            ; bae0: 69 00       i.
    iny                                                               ; bae2: c8          .
    sta (l00b8),y                                                     ; bae3: 91 b8       ..
    pla                                                               ; bae5: 68          h
    tay                                                               ; bae6: a8          .
    bit lb57f                                                         ; bae7: 2c 7f b5    ,..
; $baea referenced 1 time by $baf6
loop_cbaea
    lda (os_text_ptr),y                                               ; baea: b1 f2       ..
    cmp #$20 ; ' '                                                    ; baec: c9 20       .
    beq cbafd                                                         ; baee: f0 0d       ..
    cmp #$0d                                                          ; baf0: c9 0d       ..
    beq cbafd                                                         ; baf2: f0 09       ..
    clv                                                               ; baf4: b8          .
    iny                                                               ; baf5: c8          .
    bne loop_cbaea                                                    ; baf6: d0 f2       ..
; $baf8 referenced 2 times by $bafd, $bbd0
cbaf8
    ldx #3                                                            ; baf8: a2 03       ..
    jmp cb8fb                                                         ; bafa: 4c fb b8    L..

; $bafd referenced 2 times by $baee, $baf2
cbafd
    bvs cbaf8                                                         ; bafd: 70 f9       p.
    rts                                                               ; baff: 60          `

; $bb00 referenced 4 times by $bb92, $bc21, $bc37, $bc81
sub_cbb00
    stx l00bf                                                         ; bb00: 86 bf       ..
    jsr sub_cbab9                                                     ; bb02: 20 b9 ba     ..
    ldx #3                                                            ; bb05: a2 03       ..
; $bb07 referenced 1 time by $bb34
cbb07
    cmp lbb3e,x                                                       ; bb07: dd 3e bb    .>.
    bcs cbb36                                                         ; bb0a: b0 2a       .*
    cmp lbb3a,x                                                       ; bb0c: dd 3a bb    .:.
    bcc cbb33                                                         ; bb0f: 90 22       ."
    sbc lbb42,x                                                       ; bb11: fd 42 bb    .B.
    iny                                                               ; bb14: c8          .
    cmp #1                                                            ; bb15: c9 01       ..
    bne cbb2a                                                         ; bb17: d0 11       ..
    lda (os_text_ptr),y                                               ; bb19: b1 f2       ..
    cmp #$36 ; '6'                                                    ; bb1b: c9 36       .6
    bcs cbb28                                                         ; bb1d: b0 09       ..
    cmp #$30 ; '0'                                                    ; bb1f: c9 30       .0
    bcc cbb28                                                         ; bb21: 90 05       ..
    sbc #$26 ; '&'                                                    ; bb23: e9 26       .&
    iny                                                               ; bb25: c8          .
    bne cbb2a                                                         ; bb26: d0 02       ..
; $bb28 referenced 2 times by $bb1d, $bb21
cbb28
    lda #1                                                            ; bb28: a9 01       ..
; $bb2a referenced 2 times by $bb17, $bb26
cbb2a
    pha                                                               ; bb2a: 48          H
    jsr sub_cbab9                                                     ; bb2b: 20 b9 ba     ..
    pla                                                               ; bb2e: 68          h
    ldx l00bf                                                         ; bb2f: a6 bf       ..
    clc                                                               ; bb31: 18          .
    rts                                                               ; bb32: 60          `

; $bb33 referenced 1 time by $bb0f
cbb33
    dex                                                               ; bb33: ca          .
    bpl cbb07                                                         ; bb34: 10 d1       ..
; $bb36 referenced 1 time by $bb0a
cbb36
    ldx l00bf                                                         ; bb36: a6 bf       ..
    sec                                                               ; bb38: 38          8
    rts                                                               ; bb39: 60          `

; $bb3a referenced 1 time by $bb0c
lbb3a
    !text "0AWw"                                                      ; bb3a: 30 41 57... 0AW
; $bb3e referenced 1 time by $bb07
lbb3e
    !text ":G[{"                                                      ; bb3e: 3a 47 5b... :G[
; $bb42 referenced 1 time by $bb11
lbb42
    !text "07Gg"                                                      ; bb42: 30 37 47... 07G

sub_cbb46
    lda #$c0                                                          ; bb46: a9 c0       ..
    bne cbb4c                                                         ; bb48: d0 02       ..
sub_cbb4a
    lda #$40 ; '@'                                                    ; bb4a: a9 40       .@
; $bb4c referenced 1 time by $bb48
cbb4c
    pha                                                               ; bb4c: 48          H
    jsr sub_cbad2                                                     ; bb4d: 20 d2 ba     ..
    clv                                                               ; bb50: b8          .
    jsr sub_cba67                                                     ; bb51: 20 67 ba     g.
    bcs cbb6f                                                         ; bb54: b0 19       ..
    sty l00ba                                                         ; bb56: 84 ba       ..
    ldx #$bc                                                          ; bb58: a2 bc       ..
    ldy #$f2                                                          ; bb5a: a0 f2       ..
    jsr sub_cb850                                                     ; bb5c: 20 50 b8     P.
    ldy l00ba                                                         ; bb5f: a4 ba       ..
    pla                                                               ; bb61: 68          h
    pha                                                               ; bb62: 48          H
    bmi cbb90                                                         ; bb63: 30 2b       0+
    lda #$2b ; '+'                                                    ; bb65: a9 2b       .+
    jsr sub_cbac4                                                     ; bb67: 20 c4 ba     ..
    php                                                               ; bb6a: 08          .
    clv                                                               ; bb6b: b8          .
    jsr sub_cba67                                                     ; bb6c: 20 67 ba     g.
; $bb6f referenced 1 time by $bb54
cbb6f
    bcs cbbd0                                                         ; bb6f: b0 5f       ._
    sty l00ba                                                         ; bb71: 84 ba       ..
    plp                                                               ; bb73: 28          (
    bcc cbb89                                                         ; bb74: 90 13       ..
    ldy #$f2                                                          ; bb76: a0 f2       ..
    sec                                                               ; bb78: 38          8
    lda l00bc                                                         ; bb79: a5 bc       ..
    sec                                                               ; bb7b: 38          8
    sbc (l00b8),y                                                     ; bb7c: f1 b8       ..
    sta l00bc                                                         ; bb7e: 85 bc       ..
    iny                                                               ; bb80: c8          .
    lda l00bd                                                         ; bb81: a5 bd       ..
    sbc (l00b8),y                                                     ; bb83: f1 b8       ..
    bcc cbbd0                                                         ; bb85: 90 49       .I
    sta l00bd                                                         ; bb87: 85 bd       ..
; $bb89 referenced 1 time by $bb74
cbb89
    ldx #$bc                                                          ; bb89: a2 bc       ..
    ldy #$f4                                                          ; bb8b: a0 f4       ..
    jsr sub_cb850                                                     ; bb8d: 20 50 b8     P.
; $bb90 referenced 1 time by $bb63
cbb90
    ldy l00ba                                                         ; bb90: a4 ba       ..
    jsr sub_cbb00                                                     ; bb92: 20 00 bb     ..
    sty l00ba                                                         ; bb95: 84 ba       ..
    bcs cbba1                                                         ; bb97: b0 08       ..
    ldy #$f1                                                          ; bb99: a0 f1       ..
    sta (l00b8),y                                                     ; bb9b: 91 b8       ..
    pla                                                               ; bb9d: 68          h
    and #$80                                                          ; bb9e: 29 80       ).
    pha                                                               ; bba0: 48          H
; $bba1 referenced 1 time by $bb97
cbba1
    pla                                                               ; bba1: 68          h
    sta l00bb                                                         ; bba2: 85 bb       ..
    ldy #$ee                                                          ; bba4: a0 ee       ..
    lda (l00b8),y                                                     ; bba6: b1 b8       ..
    and #$3f ; '?'                                                    ; bba8: 29 3f       )?
    ora l00bb                                                         ; bbaa: 05 bb       ..
    sta (l00b8),y                                                     ; bbac: 91 b8       ..
    ldy l00ba                                                         ; bbae: a4 ba       ..
    jsr sub_cbab9                                                     ; bbb0: 20 b9 ba     ..
    and #$df                                                          ; bbb3: 29 df       ).
    ldx #0                                                            ; bbb5: a2 00       ..
    cmp #$51 ; 'Q'                                                    ; bbb7: c9 51       .Q
    bne cbbbe                                                         ; bbb9: d0 03       ..
    iny                                                               ; bbbb: c8          .
    ldx #$ff                                                          ; bbbc: a2 ff       ..
; $bbbe referenced 1 time by $bbb9
cbbbe
    jsr sub_cbac2                                                     ; bbbe: 20 c2 ba     ..
    bcs cbbd0                                                         ; bbc1: b0 0d       ..
    ldy #$f8                                                          ; bbc3: a0 f8       ..
    lda #0                                                            ; bbc5: a9 00       ..
    sta (l00b8),y                                                     ; bbc7: 91 b8       ..
    iny                                                               ; bbc9: c8          .
    txa                                                               ; bbca: 8a          .
    sta (l00b8),y                                                     ; bbcb: 91 b8       ..
    jmp cb2e7                                                         ; bbcd: 4c e7 b2    L..

; $bbd0 referenced 9 times by $bb6f, $bb85, $bbc1, $bbe0, $bbf6, $bc1f, $bc2f, $bc3a, $bc40
cbbd0
    jmp cbaf8                                                         ; bbd0: 4c f8 ba    L..

sub_cbbd3
    lda #$c0                                                          ; bbd3: a9 c0       ..
    bne cbbd9                                                         ; bbd5: d0 02       ..
sub_cbbd7
    lda #$40 ; '@'                                                    ; bbd7: a9 40       .@
; $bbd9 referenced 1 time by $bbd5
cbbd9
    pha                                                               ; bbd9: 48          H
    bit lb57f                                                         ; bbda: 2c 7f b5    ,..
    jsr sub_cba67                                                     ; bbdd: 20 67 ba     g.
    bcs cbbd0                                                         ; bbe0: b0 ee       ..
    ldx #3                                                            ; bbe2: a2 03       ..
; $bbe4 referenced 1 time by $bbe9
loop_cbbe4
    lda l00bc,x                                                       ; bbe4: b5 bc       ..
    sta l00b1,x                                                       ; bbe6: 95 b1       ..
    dex                                                               ; bbe8: ca          .
    bpl loop_cbbe4                                                    ; bbe9: 10 f9       ..
    lda #$2b ; '+'                                                    ; bbeb: a9 2b       .+
    jsr sub_cbac4                                                     ; bbed: 20 c4 ba     ..
    bcs cbbf3                                                         ; bbf0: b0 01       ..
    clv                                                               ; bbf2: b8          .
; $bbf3 referenced 1 time by $bbf0
cbbf3
    jsr sub_cba67                                                     ; bbf3: 20 67 ba     g.
    bcs cbbd0                                                         ; bbf6: b0 d8       ..
    bvc cbc13                                                         ; bbf8: 50 19       P.
    sec                                                               ; bbfa: 38          8
    ldx #0                                                            ; bbfb: a2 00       ..
    sec                                                               ; bbfd: 38          8
; $bbfe referenced 1 time by $bc08
loop_cbbfe
    lda l00bc,x                                                       ; bbfe: b5 bc       ..
    sbc l00b1,x                                                       ; bc00: f5 b1       ..
    sta l00bc,x                                                       ; bc02: 95 bc       ..
    inx                                                               ; bc04: e8          .
    txa                                                               ; bc05: 8a          .
    and #4                                                            ; bc06: 29 04       ).
    beq loop_cbbfe                                                    ; bc08: f0 f4       ..
    lda l00be                                                         ; bc0a: a5 be       ..
    ora l00bf                                                         ; bc0c: 05 bf       ..
    beq cbc13                                                         ; bc0e: f0 03       ..
    jmp cb446                                                         ; bc10: 4c 46 b4    LF.

; $bc13 referenced 2 times by $bbf8, $bc0e
cbc13
    lda l00bc                                                         ; bc13: a5 bc       ..
    sta l00b5                                                         ; bc15: 85 b5       ..
    lda l00bd                                                         ; bc17: a5 bd       ..
    sta l00b6                                                         ; bc19: 85 b6       ..
    clv                                                               ; bc1b: b8          .
    jsr sub_cba67                                                     ; bc1c: 20 67 ba     g.
    bcs cbbd0                                                         ; bc1f: b0 af       ..
    jsr sub_cbb00                                                     ; bc21: 20 00 bb     ..
    bcs cbc2c                                                         ; bc24: b0 06       ..
    sta l00b7                                                         ; bc26: 85 b7       ..
    pla                                                               ; bc28: 68          h
    and #$bf                                                          ; bc29: 29 bf       ).
    pha                                                               ; bc2b: 48          H
; $bc2c referenced 1 time by $bc24
cbc2c
    jsr sub_cbac2                                                     ; bc2c: 20 c2 ba     ..
    bcs cbbd0                                                         ; bc2f: b0 9f       ..
    pla                                                               ; bc31: 68          h
    sta l00b0                                                         ; bc32: 85 b0       ..
    jmp cbcb9                                                         ; bc34: 4c b9 bc    L..

sub_cbc37
    jsr sub_cbb00                                                     ; bc37: 20 00 bb     ..
; $bc3a referenced 2 times by $bc84, $bc8a
cbc3a
    bcs cbbd0                                                         ; bc3a: b0 94       ..
    pha                                                               ; bc3c: 48          H
    jsr sub_cbac2                                                     ; bc3d: 20 c2 ba     ..
    bcs cbbd0                                                         ; bc40: b0 8e       ..
    pla                                                               ; bc42: 68          h
    tay                                                               ; bc43: a8          .
    jsr sub_cb6fe                                                     ; bc44: 20 fe b6     ..
    bne cbc64                                                         ; bc47: d0 1b       ..
    jsr sub_cb986                                                     ; bc49: 20 86 b9     ..
    tax                                                               ; bc4c: aa          .
    bne cbc54                                                         ; bc4d: d0 05       ..
    ldx #5                                                            ; bc4f: a2 05       ..
    jmp cb8fb                                                         ; bc51: 4c fb b8    L..

; $bc54 referenced 1 time by $bc4d
cbc54
    sty l00bf                                                         ; bc54: 84 bf       ..
    lda lb726,y                                                       ; bc56: b9 26 b7    .&.
    ldy #$fd                                                          ; bc59: a0 fd       ..
    ora (l00b8),y                                                     ; bc5b: 11 b8       ..
    sta (l00b8),y                                                     ; bc5d: 91 b8       ..
    ldy l00bf                                                         ; bc5f: a4 bf       ..
    jsr sub_cbc68                                                     ; bc61: 20 68 bc     h.
; $bc64 referenced 1 time by $bc47
cbc64
    jsr sub_cbec2                                                     ; bc64: 20 c2 be     ..
    rts                                                               ; bc67: 60          `

; $bc68 referenced 2 times by $bc61, $bc95
sub_cbc68
    ldx #$0f                                                          ; bc68: a2 0f       ..
    stx l00ba                                                         ; bc6a: 86 ba       ..
    lda #$80                                                          ; bc6c: a9 80       ..
    sta l00bb                                                         ; bc6e: 85 bb       ..
; $bc70 referenced 1 time by $bc7e
loop_cbc70
    lda lb872,x                                                       ; bc70: bd 72 b8    .r.
    cpx #1                                                            ; bc73: e0 01       ..
    bne cbc78                                                         ; bc75: d0 01       ..
    tya                                                               ; bc77: 98          .
; $bc78 referenced 1 time by $bc75
cbc78
    jsr sub_cb745                                                     ; bc78: 20 45 b7     E.
    dex                                                               ; bc7b: ca          .
    stx l00ba                                                         ; bc7c: 86 ba       ..
    bpl loop_cbc70                                                    ; bc7e: 10 f0       ..
    rts                                                               ; bc80: 60          `

sub_cbc81
    jsr sub_cbb00                                                     ; bc81: 20 00 bb     ..
    bcs cbc3a                                                         ; bc84: b0 b4       ..
    pha                                                               ; bc86: 48          H
    jsr sub_cbac2                                                     ; bc87: 20 c2 ba     ..
    bcs cbc3a                                                         ; bc8a: b0 ae       ..
    pla                                                               ; bc8c: 68          h
    tay                                                               ; bc8d: a8          .
    jsr sub_cb6fe                                                     ; bc8e: 20 fe b6     ..
    beq cbcb2                                                         ; bc91: f0 1f       ..
; $bc93 referenced 1 time by $bcb6
cbc93
    sty l00bc                                                         ; bc93: 84 bc       ..
    jsr sub_cbc68                                                     ; bc95: 20 68 bc     h.
    lda #$0a                                                          ; bc98: a9 0a       ..
    sta l00ba                                                         ; bc9a: 85 ba       ..
    lda #$4f ; 'O'                                                    ; bc9c: a9 4f       .O
    jsr sub_cb745                                                     ; bc9e: 20 45 b7     E.
    lda lb726,y                                                       ; bca1: b9 26 b7    .&.
    eor #$ff                                                          ; bca4: 49 ff       I.
    ldy #$fd                                                          ; bca6: a0 fd       ..
    and (l00b8),y                                                     ; bca8: 31 b8       1.
    sta (l00b8),y                                                     ; bcaa: 91 b8       ..
    ldy l00bc                                                         ; bcac: a4 bc       ..
    jsr sub_cbec2                                                     ; bcae: 20 c2 be     ..
    rts                                                               ; bcb1: 60          `

; $bcb2 referenced 1 time by $bc91
cbcb2
    jsr sub_cb986                                                     ; bcb2: 20 86 b9     ..
    tax                                                               ; bcb5: aa          .
    bne cbc93                                                         ; bcb6: d0 db       ..
    rts                                                               ; bcb8: 60          `

; $bcb9 referenced 2 times by $b1f6, $bc34
cbcb9
    lda l00b0                                                         ; bcb9: a5 b0       ..
    and #$c0                                                          ; bcbb: 29 c0       ).
    sta l00be                                                         ; bcbd: 85 be       ..
    ldy #$ee                                                          ; bcbf: a0 ee       ..
    lda (l00b8),y                                                     ; bcc1: b1 b8       ..
    and #$3f ; '?'                                                    ; bcc3: 29 3f       )?
    ora l00be                                                         ; bcc5: 05 be       ..
    sta (l00b8),y                                                     ; bcc7: 91 b8       ..
    bit l00b0                                                         ; bcc9: 24 b0       $.
    bvs cbcd6                                                         ; bccb: 70 09       p.
    ldy l00b7                                                         ; bccd: a4 b7       ..
    cpy #$14                                                          ; bccf: c0 14       ..
    bcc cbce1                                                         ; bcd1: 90 0e       ..
; $bcd3 referenced 1 time by $bcef
loop_cbcd3
    jmp cb300                                                         ; bcd3: 4c 00 b3    L..

; $bcd6 referenced 1 time by $bccb
cbcd6
    ldx l00bc                                                         ; bcd6: a6 bc       ..
    lda l00bd                                                         ; bcd8: a5 bd       ..
    jsr sub_cb6b1                                                     ; bcda: 20 b1 b6     ..
    stx l00bc                                                         ; bcdd: 86 bc       ..
    sta l00bd                                                         ; bcdf: 85 bd       ..
; $bce1 referenced 1 time by $bcd1
cbce1
    jsr sub_cb6fe                                                     ; bce1: 20 fe b6     ..
    pha                                                               ; bce4: 48          H
    tya                                                               ; bce5: 98          .
    ldy #$f1                                                          ; bce6: a0 f1       ..
    sta (l00b8),y                                                     ; bce8: 91 b8       ..
    pla                                                               ; bcea: 68          h
    eor l00b0                                                         ; bceb: 45 b0       E.
    and #$40 ; '@'                                                    ; bced: 29 40       )@
    bne loop_cbcd3                                                    ; bcef: d0 e2       ..
    jsr sub_cbe9d                                                     ; bcf1: 20 9d be     ..
    jsr sub_cbe91                                                     ; bcf4: 20 91 be     ..
    bcs cbd1b                                                         ; bcf7: b0 22       ."
; $bcf9 referenced 1 time by $bd21
cbcf9
    ldx #$b5                                                          ; bcf9: a2 b5       ..
    ldy #$be                                                          ; bcfb: a0 be       ..
    jsr sub_cb580                                                     ; bcfd: 20 80 b5     ..
    rol l00b0                                                         ; bd00: 26 b0       &.
    bcc cbd0e                                                         ; bd02: 90 0a       ..
    ldx #$bc                                                          ; bd04: a2 bc       ..
    ldy #$b3                                                          ; bd06: a0 b3       ..
; $bd08 referenced 1 time by $bd19
loop_cbd08
    jsr sub_cb580                                                     ; bd08: 20 80 b5     ..
    jmp cb795                                                         ; bd0b: 4c 95 b7    L..

; $bd0e referenced 1 time by $bd02
cbd0e
    ldx #$b1                                                          ; bd0e: a2 b1       ..
    ldy #$b3                                                          ; bd10: a0 b3       ..
    jsr sub_cb580                                                     ; bd12: 20 80 b5     ..
    ldx #$bc                                                          ; bd15: a2 bc       ..
    ldy #$b1                                                          ; bd17: a0 b1       ..
    bne loop_cbd08                                                    ; bd19: d0 ed       ..
; $bd1b referenced 1 time by $bcf7
cbd1b
    lda l00b3                                                         ; bd1b: a5 b3       ..
    and l00b4                                                         ; bd1d: 25 b4       %.
    cmp #$ff                                                          ; bd1f: c9 ff       ..
    beq cbcf9                                                         ; bd21: f0 d6       ..
    lda l00bc                                                         ; bd23: a5 bc       ..
    pha                                                               ; bd25: 48          H
    lda l00bd                                                         ; bd26: a5 bd       ..
    pha                                                               ; bd28: 48          H
    ldx #3                                                            ; bd29: a2 03       ..
; $bd2b referenced 1 time by $bd30
loop_cbd2b
    lda l00b1,x                                                       ; bd2b: b5 b1       ..
    sta l00ba,x                                                       ; bd2d: 95 ba       ..
    dex                                                               ; bd2f: ca          .
    bpl loop_cbd2b                                                    ; bd30: 10 f9       ..
    ldx #$b5                                                          ; bd32: a2 b5       ..
    ldy #$f4                                                          ; bd34: a0 f4       ..
    jsr sub_cb850                                                     ; bd36: 20 50 b8     P.
    bit l00b0                                                         ; bd39: 24 b0       $.
    bmi cbd40                                                         ; bd3b: 30 03       0.
    jmp cbdba                                                         ; bd3d: 4c ba bd    L..

; $bd40 referenced 1 time by $bd3b
cbd40
    pla                                                               ; bd40: 68          h
    sta l00b4                                                         ; bd41: 85 b4       ..
    pla                                                               ; bd43: 68          h
    sta l00b3                                                         ; bd44: 85 b3       ..
; $bd46 referenced 1 time by $bdb6
cbd46
    ldx #$be                                                          ; bd46: a2 be       ..
    ldy #$f4                                                          ; bd48: a0 f4       ..
    jsr sub_cb841                                                     ; bd4a: 20 41 b8     A.
    lda l00bf                                                         ; bd4d: a5 bf       ..
    bne cbd7e                                                         ; bd4f: d0 2d       .-
    ldx l00be                                                         ; bd51: a6 be       ..
    beq cbdb9                                                         ; bd53: f0 64       .d
    lda #0                                                            ; bd55: a9 00       ..
    sta (l00b8),y                                                     ; bd57: 91 b8       ..
    inc l00b9                                                         ; bd59: e6 b9       ..
    jsr cbe7b                                                         ; bd5b: 20 7b be     {.
    lda #0                                                            ; bd5e: a9 00       ..
    ldx #$ba                                                          ; bd60: a2 ba       ..
    ldy #0                                                            ; bd62: a0 00       ..
    jsr tube_entry                                                    ; bd64: 20 06 04     ..
    ldy #7                                                            ; bd67: a0 07       ..
    jsr cbe89                                                         ; bd69: 20 89 be     ..
; $bd6c referenced 1 time by $bd7a
loop_cbd6c
    lda tube_host_r3_data                                             ; bd6c: ad e5 fe    ...
    sta (l00b8),y                                                     ; bd6f: 91 b8       ..
    ldx #3                                                            ; bd71: a2 03       ..
    jsr cbe8d                                                         ; bd73: 20 8d be     ..
    nop                                                               ; bd76: ea          .
    iny                                                               ; bd77: c8          .
    cpy l00be                                                         ; bd78: c4 be       ..
    bne loop_cbd6c                                                    ; bd7a: d0 f0       ..
    beq cbda3                                                         ; bd7c: f0 25       .%
; $bd7e referenced 1 time by $bd4f
cbd7e
    lda #0                                                            ; bd7e: a9 00       ..
    sta l00be                                                         ; bd80: 85 be       ..
    lda #1                                                            ; bd82: a9 01       ..
    sta l00bf                                                         ; bd84: 85 bf       ..
    inc l00b9                                                         ; bd86: e6 b9       ..
    jsr cbe7b                                                         ; bd88: 20 7b be     {.
    lda #6                                                            ; bd8b: a9 06       ..
    ldx #$ba                                                          ; bd8d: a2 ba       ..
    ldy #0                                                            ; bd8f: a0 00       ..
    jsr tube_entry                                                    ; bd91: 20 06 04     ..
    ldy #5                                                            ; bd94: a0 05       ..
    jsr cbe89                                                         ; bd96: 20 89 be     ..
; $bd99 referenced 1 time by $bda1
loop_cbd99
    lda tube_host_r3_data                                             ; bd99: ad e5 fe    ...
    sta (l00b8),y                                                     ; bd9c: 91 b8       ..
    lda (l00b8),y                                                     ; bd9e: b1 b8       ..
    iny                                                               ; bda0: c8          .
    bne loop_cbd99                                                    ; bda1: d0 f6       ..
; $bda3 referenced 1 time by $bd7c
cbda3
    jsr sub_cbe83                                                     ; bda3: 20 83 be     ..
    ldx #$b8                                                          ; bda6: a2 b8       ..
    ldy #$b1                                                          ; bda8: a0 b1       ..
    jsr sub_cb580                                                     ; bdaa: 20 80 b5     ..
    dec l00b9                                                         ; bdad: c6 b9       ..
    sec                                                               ; bdaf: 38          8
    jsr cb795                                                         ; bdb0: 20 95 b7     ..
    jsr cbe47                                                         ; bdb3: 20 47 be     G.
    jmp cbd46                                                         ; bdb6: 4c 46 bd    LF.

; $bdb9 referenced 2 times by $bd53, $bdcd
cbdb9
    rts                                                               ; bdb9: 60          `

; $bdba referenced 1 time by $bd3d
cbdba
    pla                                                               ; bdba: 68          h
    sta l00b2                                                         ; bdbb: 85 b2       ..
    pla                                                               ; bdbd: 68          h
    sta l00b1                                                         ; bdbe: 85 b1       ..
; $bdc0 referenced 1 time by $be44
cbdc0
    ldx #$be                                                          ; bdc0: a2 be       ..
    ldy #$f4                                                          ; bdc2: a0 f4       ..
    jsr sub_cb841                                                     ; bdc4: 20 41 b8     A.
    lda l00bf                                                         ; bdc7: a5 bf       ..
    bne cbdd3                                                         ; bdc9: d0 08       ..
    ldx l00be                                                         ; bdcb: a6 be       ..
    beq cbdb9                                                         ; bdcd: f0 ea       ..
    lda #1                                                            ; bdcf: a9 01       ..
    bne cbddd                                                         ; bdd1: d0 0a       ..
; $bdd3 referenced 1 time by $bdc9
cbdd3
    lda #0                                                            ; bdd3: a9 00       ..
    sta l00be                                                         ; bdd5: 85 be       ..
    lda #1                                                            ; bdd7: a9 01       ..
    sta l00bf                                                         ; bdd9: 85 bf       ..
    lda #7                                                            ; bddb: a9 07       ..
; $bddd referenced 1 time by $bdd1
cbddd
    pha                                                               ; bddd: 48          H
    inc l00b9                                                         ; bdde: e6 b9       ..
    ldx #$b8                                                          ; bde0: a2 b8       ..
    ldy #$b3                                                          ; bde2: a0 b3       ..
    jsr sub_cb580                                                     ; bde4: 20 80 b5     ..
    lda l00be                                                         ; bde7: a5 be       ..
    pha                                                               ; bde9: 48          H
    dec l00b9                                                         ; bdea: c6 b9       ..
    clc                                                               ; bdec: 18          .
    jsr cb795                                                         ; bded: 20 95 b7     ..
    pla                                                               ; bdf0: 68          h
    sta l00be                                                         ; bdf1: 85 be       ..
    pla                                                               ; bdf3: 68          h
    cmp #1                                                            ; bdf4: c9 01       ..
    bne cbe21                                                         ; bdf6: d0 29       .)
    lda #0                                                            ; bdf8: a9 00       ..
    ldy #$f4                                                          ; bdfa: a0 f4       ..
    sta (l00b8),y                                                     ; bdfc: 91 b8       ..
    inc l00b9                                                         ; bdfe: e6 b9       ..
    jsr cbe7b                                                         ; be00: 20 7b be     {.
    lda #1                                                            ; be03: a9 01       ..
    ldx #$ba                                                          ; be05: a2 ba       ..
    ldy #0                                                            ; be07: a0 00       ..
    jsr tube_entry                                                    ; be09: 20 06 04     ..
    ldy #0                                                            ; be0c: a0 00       ..
; $be0e referenced 1 time by $be1d
loop_cbe0e
    lda (l00b8),y                                                     ; be0e: b1 b8       ..
    sta tube_host_r3_data                                             ; be10: 8d e5 fe    ...
    ldx #3                                                            ; be13: a2 03       ..
    jsr cbe8d                                                         ; be15: 20 8d be     ..
    iny                                                               ; be18: c8          .
    cpy l00be                                                         ; be19: c4 be       ..
    cpy l00be                                                         ; be1b: c4 be       ..
    bne loop_cbe0e                                                    ; be1d: d0 ef       ..
    beq cbe3c                                                         ; be1f: f0 1b       ..
; $be21 referenced 1 time by $bdf6
cbe21
    inc l00b9                                                         ; be21: e6 b9       ..
    jsr cbe7b                                                         ; be23: 20 7b be     {.
    lda #7                                                            ; be26: a9 07       ..
    ldx #$ba                                                          ; be28: a2 ba       ..
    ldy #0                                                            ; be2a: a0 00       ..
    jsr tube_entry                                                    ; be2c: 20 06 04     ..
    ldy #0                                                            ; be2f: a0 00       ..
; $be31 referenced 1 time by $be3a
loop_cbe31
    lda (l00b8),y                                                     ; be31: b1 b8       ..
    sta tube_host_r3_data                                             ; be33: 8d e5 fe    ...
    nop                                                               ; be36: ea          .
    nop                                                               ; be37: ea          .
    nop                                                               ; be38: ea          .
    iny                                                               ; be39: c8          .
    bne loop_cbe31                                                    ; be3a: d0 f5       ..
; $be3c referenced 1 time by $be1f
cbe3c
    jsr sub_cbe83                                                     ; be3c: 20 83 be     ..
    dec l00b9                                                         ; be3f: c6 b9       ..
    jsr cbe47                                                         ; be41: 20 47 be     G.
    jmp cbdc0                                                         ; be44: 4c c0 bd    L..

; $be47 referenced 3 times by $bdb3, $be41, $be50
cbe47
    ldx #1                                                            ; be47: a2 01       ..
    inc l00ba,x                                                       ; be49: f6 ba       ..
    bne cbe52                                                         ; be4b: d0 05       ..
    inx                                                               ; be4d: e8          .
    cpx #4                                                            ; be4e: e0 04       ..
    bcc cbe47                                                         ; be50: 90 f5       ..
; $be52 referenced 1 time by $be4b
cbe52
    ldy #$f5                                                          ; be52: a0 f5       ..
    lda (l00b8),y                                                     ; be54: b1 b8       ..
    sec                                                               ; be56: 38          8
    sbc #1                                                            ; be57: e9 01       ..
    bcc cbe7a                                                         ; be59: 90 1f       ..
    sta (l00b8),y                                                     ; be5b: 91 b8       ..
    jsr sub_cb616                                                     ; be5d: 20 16 b6     ..
    beq cbe7a                                                         ; be60: f0 18       ..
    ldx l00b7                                                         ; be62: a6 b7       ..
    jsr sub_cb85d                                                     ; be64: 20 5d b8     ].
    bvc cbe7a                                                         ; be67: 50 11       P.
    lda l00b1,x                                                       ; be69: b5 b1       ..
    cmp #$c0                                                          ; be6b: c9 c0       ..
    bcc cbe7a                                                         ; be6d: 90 0b       ..
    lda #$10                                                          ; be6f: a9 10       ..
    sta l00b0,x                                                       ; be71: 95 b0       ..
    lda #$80                                                          ; be73: a9 80       ..
    sta l00b1,x                                                       ; be75: 95 b1       ..
    jsr sub_cb68f                                                     ; be77: 20 8f b6     ..
; $be7a referenced 4 times by $be59, $be60, $be67, $be6d
cbe7a
    rts                                                               ; be7a: 60          `

; $be7b referenced 5 times by $bd5b, $bd88, $be00, $be23, $be80
cbe7b
    lda #$c8                                                          ; be7b: a9 c8       ..
    jsr tube_entry                                                    ; be7d: 20 06 04     ..
    bcc cbe7b                                                         ; be80: 90 f9       ..
    rts                                                               ; be82: 60          `

; $be83 referenced 2 times by $bda3, $be3c
sub_cbe83
    lda #$88                                                          ; be83: a9 88       ..
    jsr tube_entry                                                    ; be85: 20 06 04     ..
    rts                                                               ; be88: 60          `

; $be89 referenced 3 times by $bd69, $bd96, $be8a
cbe89
    dey                                                               ; be89: 88          .
    bne cbe89                                                         ; be8a: d0 fd       ..
    rts                                                               ; be8c: 60          `

; $be8d referenced 3 times by $bd73, $be15, $be8e
cbe8d
    dex                                                               ; be8d: ca          .
    bne cbe8d                                                         ; be8e: d0 fd       ..
    rts                                                               ; be90: 60          `

; $be91 referenced 1 time by $bcf4
sub_cbe91
    lda #osbyte_read_tube_presence                                    ; be91: a9 ea       ..
    ldx #0                                                            ; be93: a2 00       ..
    ldy #$ff                                                          ; be95: a0 ff       ..
    jsr osbyte                                                        ; be97: 20 f4 ff     ..            ; Read Tube present flag
    cpx #$ff                                                          ; be9a: e0 ff       ..             ; X=value of Tube present flag
    rts                                                               ; be9c: 60          `

; $be9d referenced 2 times by $b338, $bcf1
sub_cbe9d
    jsr sub_cb85d                                                     ; be9d: 20 5d b8     ].
    bpl cbec1                                                         ; bea0: 10 1f       ..
    bvs cbec1                                                         ; bea2: 70 1d       p.
    lda #0                                                            ; bea4: a9 00       ..
    pha                                                               ; bea6: 48          H
    ldy #$f1                                                          ; bea7: a0 f1       ..
    lda (l00b8),y                                                     ; bea9: b1 b8       ..
; $beab referenced 1 time by $bec6
loop_cbeab
    pha                                                               ; beab: 48          H
    lda #osbyte_read_rom_info_table_low                               ; beac: a9 aa       ..
    ldx #0                                                            ; beae: a2 00       ..
    ldy #$ff                                                          ; beb0: a0 ff       ..
    jsr osbyte                                                        ; beb2: 20 f4 ff     ..            ; Read address of ROM info table
    jsr cb82b                                                         ; beb5: 20 2b b8     +.
    stx l00ba                                                         ; beb8: 86 ba       ..
    sty l00bb                                                         ; beba: 84 bb       ..
    pla                                                               ; bebc: 68          h
    tay                                                               ; bebd: a8          .
    pla                                                               ; bebe: 68          h
    sta (l00ba),y                                                     ; bebf: 91 ba       ..
; $bec1 referenced 2 times by $bea0, $bea2
cbec1
    rts                                                               ; bec1: 60          `

; $bec2 referenced 2 times by $bc64, $bcae
sub_cbec2
    lda #2                                                            ; bec2: a9 02       ..
    pha                                                               ; bec4: 48          H
    tya                                                               ; bec5: 98          .
    bpl loop_cbeab                                                    ; bec6: 10 e3       ..
; $bec8 referenced 1 time by $8003
service_handler
    cmp #service_claim_absolute_workspace                             ; bec8: c9 01       ..
    bne cbee0                                                         ; beca: d0 14       ..
    pha                                                               ; becc: 48          H
    tya                                                               ; becd: 98          .
    pha                                                               ; bece: 48          H
    lda #osbyte_issue_service_request                                 ; becf: a9 8f       ..
    ldx #service_check_swr_presence                                   ; bed1: a2 2b       .+
    ldy romsel_copy                                                   ; bed3: a4 f4       ..
    jsr osbyte                                                        ; bed5: 20 f4 ff     ..            ; Issue paged ROM service call, Reason X=43 - Report memory size
    pla                                                               ; bed8: 68          h
    tay                                                               ; bed9: a8          .
    ldx romsel_copy                                                   ; beda: a6 f4       ..
    pla                                                               ; bedc: 68          h
; $bedd referenced 2 times by $bee2, $beec
general_service_handler_indirect
    jmp general_service_handler                                       ; bedd: 4c b1 b1    L..

; $bee0 referenced 1 time by $beca
cbee0
    cmp #service_check_swr_presence                                   ; bee0: c9 2b       .+
    bne general_service_handler_indirect                              ; bee2: d0 f9       ..
    cpy romsel_copy                                                   ; bee4: c4 f4       ..
    beq cbeee                                                         ; bee6: f0 06       ..
; $bee8 referenced 4 times by $bef8, $beff, $bf08, $bf4c
cbee8
    ldx romsel_copy                                                   ; bee8: a6 f4       ..
    lda #0                                                            ; beea: a9 00       ..
    beq general_service_handler_indirect                              ; beec: f0 ef       ..
; $beee referenced 1 time by $bee6
cbeee
    lda #osbyte_write_shadow_memory_use                               ; beee: a9 72       .r
    ldx #0                                                            ; bef0: a2 00       ..
    jsr osbyte                                                        ; bef2: 20 f4 ff     ..            ; B+ and Master only: Select shadow memory always used (X=0)
    jsr osbyte                                                        ; bef5: 20 f4 ff     ..
    bvs cbee8                                                         ; bef8: 70 ee       p.
    lda #$ea                                                          ; befa: a9 ea       ..
    jsr sub_cbf82                                                     ; befc: 20 82 bf     ..
    bne cbee8                                                         ; beff: d0 e7       ..
    lda #$d7                                                          ; bf01: a9 d7       ..
    ldy #$7f                                                          ; bf03: a0 7f       ..
    jsr sub_cbf84                                                     ; bf05: 20 84 bf     ..
    bpl cbee8                                                         ; bf08: 10 de       ..
    jsr osnewl                                                        ; bf0a: 20 e7 ff     ..            ; Write newline (characters 10 and 13)
    ldx #0                                                            ; bf0d: a2 00       ..
    jsr sub_cbf7c                                                     ; bf0f: 20 7c bf     |.
    lda #$fd                                                          ; bf12: a9 fd       ..
    jsr sub_cbf82                                                     ; bf14: 20 82 bf     ..
    beq cbf46                                                         ; bf17: f0 2d       .-
    tsx                                                               ; bf19: ba          .
    ldy #$30 ; '0'                                                    ; bf1a: a0 30       .0
; $bf1c referenced 1 time by $bf21
loop_cbf1c
    lda cbf8a,y                                                       ; bf1c: b9 8a bf    ...
    pha                                                               ; bf1f: 48          H
    dey                                                               ; bf20: 88          .
    bne loop_cbf1c                                                    ; bf21: d0 f9       ..
    txa                                                               ; bf23: 8a          .
    tay                                                               ; bf24: a8          .
    lda #1                                                            ; bf25: a9 01       ..
    pha                                                               ; bf27: 48          H
    tsx                                                               ; bf28: ba          .
    inx                                                               ; bf29: e8          .
    txa                                                               ; bf2a: 8a          .
    pha                                                               ; bf2b: 48          H
    ldx #$0f                                                          ; bf2c: a2 0f       ..
    lda #0                                                            ; bf2e: a9 00       ..
    sta l00b0                                                         ; bf30: 85 b0       ..
    rts                                                               ; bf32: 60          `

; $bf33 referenced 1 time by $bfb8
cbf33
    tya                                                               ; bf33: 98          .
    tax                                                               ; bf34: aa          .
    txs                                                               ; bf35: 9a          .
    lda l00b0                                                         ; bf36: a5 b0       ..
    asl                                                               ; bf38: 0a          .
    asl                                                               ; bf39: 0a          .
    clc                                                               ; bf3a: 18          .
    adc #$0d                                                          ; bf3b: 69 0d       i.
    tax                                                               ; bf3d: aa          .
    jsr sub_cbf7c                                                     ; bf3e: 20 7c bf     |.
    ldx #$0a                                                          ; bf41: a2 0a       ..
    jsr sub_cbf7c                                                     ; bf43: 20 7c bf     |.
; $bf46 referenced 1 time by $bf17
cbf46
    jsr osnewl                                                        ; bf46: 20 e7 ff     ..            ; Write newline (characters 10 and 13)
    jsr osnewl                                                        ; bf49: 20 e7 ff     ..            ; Write newline (characters 10 and 13)
    jmp cbee8                                                         ; bf4c: 4c e8 be    L..

; $bf4f referenced 1 time by $bf7c
lbf4f
    !text "Acorn OS "                                                 ; bf4f: 41 63 6f... Aco
    !byte   0, $4b,   7,   0, $36, $34,   0,   0, $38, $30,   0,   0  ; bf58: 00 4b 07... .K.
    !byte $39, $36,   0,   0                                          ; bf64: 39 36 00... 96.
    !text "112"                                                       ; bf68: 31 31 32    112
    !byte 0                                                           ; bf6b: 00          .
    !text "128"                                                       ; bf6c: 31 32 38    128
    !byte 0                                                           ; bf6f: 00          .
    !text "144"                                                       ; bf70: 31 34 34    144
    !byte 0                                                           ; bf73: 00          .
    !text "160"                                                       ; bf74: 31 36 30    160
    !byte 0                                                           ; bf77: 00          .

; $bf78 referenced 1 time by $bf7f
loop_cbf78
    jsr oswrch                                                        ; bf78: 20 ee ff     ..            ; Write character
    inx                                                               ; bf7b: e8          .
; $bf7c referenced 3 times by $bf0f, $bf3e, $bf43
sub_cbf7c
    lda lbf4f,x                                                       ; bf7c: bd 4f bf    .O.
    bne loop_cbf78                                                    ; bf7f: d0 f7       ..
    rts                                                               ; bf81: 60          `

; $bf82 referenced 2 times by $befc, $bf14
sub_cbf82
    ldy #$ff                                                          ; bf82: a0 ff       ..
; $bf84 referenced 1 time by $bf05
sub_cbf84
    ldx #0                                                            ; bf84: a2 00       ..
    jsr osbyte                                                        ; bf86: 20 f4 ff     ..
    txa                                                               ; bf89: 8a          .
; $bf8a referenced 1 time by $bf1c
cbf8a
    rts                                                               ; bf8a: 60          `

    lda romsel_copy                                                   ; bf8b: a5 f4       ..
    pha                                                               ; bf8d: 48          H
; $bf8e referenced 2 times by $bfac, $bfb0
cbf8e
    stx romsel_copy                                                   ; bf8e: 86 f4       ..
    stx romsel                                                        ; bf90: 8e 30 fe    .0.
    lda lbfff                                                         ; bf93: ad ff bf    ...
    pha                                                               ; bf96: 48          H
    eor #$a5                                                          ; bf97: 49 a5       I.
    sta lbfff                                                         ; bf99: 8d ff bf    ...
    cmp lbfff                                                         ; bf9c: cd ff bf    ...
    bne cbfa3                                                         ; bf9f: d0 02       ..
    inc l00b0                                                         ; bfa1: e6 b0       ..
; $bfa3 referenced 1 time by $bf9f
cbfa3
    pla                                                               ; bfa3: 68          h
    sta lbfff                                                         ; bfa4: 8d ff bf    ...
    dex                                                               ; bfa7: ca          .
    bmi cbfb2                                                         ; bfa8: 30 08       0.
    cpx #$0b                                                          ; bfaa: e0 0b       ..
    bne cbf8e                                                         ; bfac: d0 e0       ..
    ldx #1                                                            ; bfae: a2 01       ..
    bne cbf8e                                                         ; bfb0: d0 dc       ..
; $bfb2 referenced 1 time by $bfa8
cbfb2
    pla                                                               ; bfb2: 68          h
    sta romsel_copy                                                   ; bfb3: 85 f4       ..
    sta romsel                                                        ; bfb5: 8d 30 fe    .0.
    jmp cbf33                                                         ; bfb8: 4c 33 bf    L3.

    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; bfbb: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; bfc7: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; bfd3: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; bfdf: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; bfeb: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; bff7: ff ff ff... ...
; $bfff referenced 4 times by $bf93, $bf99, $bf9c, $bfa4
lbfff
    !byte $ff                                                         ; bfff: ff          .
pydis_end

; Label references by decreasing frequency:
;     l00b8:                                125
;     l00b0:                                105
;     l00ba:                                 44
;     l00bf:                                 42
;     l00bc:                                 41
;     l00b6:                                 35
;     l00be:                                 31
;     l00cd:                                 31
;     print_inline_l809f_top_bit_clear:      31
;     l00c2:                                 30
;     l00b1:                                 29
;     sub_c83e3:                             29
;     l00b9:                                 28
;     l00bb:                                 28
;     l00b5:                                 26
;     l00bd:                                 26
;     l00b4:                                 25
;     l00b3:                                 23
;     l00c1:                                 23
;     os_text_ptr:                           23
;     osbyte:                                22
;     romsel_copy:                           21
;     l0f0e:                                 21
;     caea0:                                 21
;     l00c4:                                 20
;     c809f:                                 20
;     l00b2:                                 19
;     l10c2:                                 19
;     l0001:                                 18
;     l00a8:                                 18
;     l00aa:                                 18
;     l00c5:                                 18
;     l00c9:                                 18
;     l10de:                                 18
;     l0000:                                 17
;     l00b7:                                 17
;     l0e0f:                                 17
;     l0f06:                                 17
;     l1000:                                 17
;     l00a2:                                 16
;     l00ab:                                 16
;     l00ae:                                 16
;     ca3dc:                                 16
;     cb82b:                                 16
;     l00c0:                                 15
;     l00c3:                                 15
;     l00c7:                                 15
;     l0f05:                                 15
;     l00cc:                                 14
;     l1117:                                 14
;     cae70:                                 14
;     caf7f:                                 14
;     l00a1:                                 13
;     l00a5:                                 13
;     l00c8:                                 13
;     l0f07:                                 13
;     sub_ca14a:                             13
;     tube_host_r3_data:                     13
;     l00ac:                                 12
;     clc_jmp_gsinit:                        12
;     sub_cb841:                             12
;     osasci:                                12
;     l00c6:                                 11
;     osrdsc_ptr:                            11
;     l0e08:                                 11
;     generate_error_precheck:               11
;     sub_c8149:                             11
;     c996e:                                 11
;     cac0f:                                 11
;     lfe84:                                 11
;     tube_host_r2_data:                     11
;     l00a9:                                 10
;     l1111:                                 10
;     l1112:                                 10
;     sub_c80c3:                             10
;     c93e6:                                 10
;     cb203:                                 10
;     lfe87:                                 10
;     tube_host_r2_status:                   10
;     l00ca:                                  9
;     l1074:                                  9
;     l108a:                                  9
;     l1097:                                  9
;     l10c0:                                  9
;     l1110:                                  9
;     cbbd0:                                  9
;     l00ce:                                  8
;     l00ff:                                  8
;     l0100:                                  8
;     l0df0:                                  8
;     l0f04:                                  8
;     l1060:                                  8
;     l1082:                                  8
;     l108b:                                  8
;     l1090:                                  8
;     l1096:                                  8
;     l10ca:                                  8
;     l10cf:                                  8
;     l10d1:                                  8
;     sub_c81b0:                              8
;     sub_c81bf:                              8
;     c8816:                                  8
;     sub_c8b7b:                              8
;     osbyte_read:                            8
;     cae79:                                  8
;     sub_cb85d:                              8
;     tube_host_r1_status:                    8
;     osfind:                                 8
;     l00a7:                                  7
;     l00cf:                                  7
;     l0f08:                                  7
;     l1075:                                  7
;     l10c9:                                  7
;     l10d2:                                  7
;     l1114:                                  7
;     generate_error2:                        7
;     sub_c8284:                              7
;     sub_c8380:                              7
;     c8b8b:                                  7
;     print_inline_osasci_top_bit_clear:      7
;     sub_cb580:                              7
;     sub_cbab9:                              7
;     osrdsc:                                 7
;     l0015:                                  6
;     l00f3:                                  6
;     l00f7:                                  6
;     l0f0f:                                  6
;     l1100:                                  6
;     generate_error_precheck_bad:            6
;     sub_c8280:                              6
;     sub_c82fe:                              6
;     command_table:                          6
;     sub_c87da:                              6
;     c940c:                                  6
;     sub_c99ac:                              6
;     zero_stacked_XXX:                       6
;     sub_c9e75:                              6
;     caf58:                                  6
;     sub_cb5f2:                              6
;     lb726:                                  6
;     cb8fb:                                  6
;     oswrch:                                 6
;     l00a6:                                  5
;     l00af:                                  5
;     l00f0:                                  5
;     l1087:                                  5
;     l1088:                                  5
;     l1099:                                  5
;     l10c7:                                  5
;     l10dd:                                  5
;     l110c:                                  5
;     l1115:                                  5
;     l1116:                                  5
;     sub_c80bb:                              5
;     sub_c80ed:                              5
;     sub_c80f3:                              5
;     c8125:                                  5
;     sub_c830a:                              5
;     sub_c8335:                              5
;     sub_c8386:                              5
;     sub_c840c:                              5
;     c8ba2:                                  5
;     sub_c8f3f:                              5
;     c9257:                                  5
;     c99a3:                                  5
;     sub_c9a6e:                              5
;     sub_c9ab8:                              5
;     sub_ca0de:                              5
;     sub_ca1b4:                              5
;     cae97:                                  5
;     sub_cb6fe:                              5
;     sub_cb745:                              5
;     cb795:                                  5
;     sub_cb850:                              5
;     sub_cba67:                              5
;     cbe7b:                                  5
;     osnewl:                                 5
;     l0002:                                  4
;     l0e00:                                  4
;     l0f0c:                                  4
;     l0f0d:                                  4
;     l1069:                                  4
;     l1076:                                  4
;     l1077:                                  4
;     l1081:                                  4
;     l1086:                                  4
;     l1095:                                  4
;     l10c4:                                  4
;     l10cb:                                  4
;     l10cc:                                  4
;     l10ce:                                  4
;     l10d9:                                  4
;     l10da:                                  4
;     l110d:                                  4
;     l1113:                                  4
;     l111a:                                  4
;     l111d:                                  4
;     generate_error_precheck_disc:           4
;     generate_error:                         4
;     sub_c80c8:                              4
;     sub_c8174:                              4
;     c81a7:                                  4
;     sub_c821d:                              4
;     c8225:                                  4
;     sub_c82b2:                              4
;     sub_c8327:                              4
;     inc16_ae:                               4
;     c8d74:                                  4
;     c8d91:                                  4
;     c8e0e:                                  4
;     c8e12:                                  4
;     c8e64:                                  4
;     sub_c8f6b:                              4
;     c940e:                                  4
;     c9436:                                  4
;     c993b:                                  4
;     sub_c9965:                              4
;     sub_c9a8d:                              4
;     c9adf:                                  4
;     c9ae9:                                  4
;     sub_ca379:                              4
;     ca5e5:                                  4
;     sub_ca9ca:                              4
;     sub_caacf:                              4
;     sub_cac18:                              4
;     sub_cac62:                              4
;     cad79:                                  4
;     cb446:                                  4
;     lb57f:                                  4
;     sub_cb616:                              4
;     cb68c:                                  4
;     sub_cb68f:                              4
;     sub_cb83f:                              4
;     sub_cbac2:                              4
;     sub_cbb00:                              4
;     cbe7a:                                  4
;     cbee8:                                  4
;     lbfff:                                  4
;     romsel:                                 4
;     lfe85:                                  4
;     lfe86:                                  4
;     osbput:                                 4
;     osbget:                                 4
;     osfile:                                 4
;     osrdch:                                 4
;     l00ef:                                  3
;     l0107:                                  3
;     l0109:                                  3
;     bytev:                                  3
;     bytev+1:                                3
;     l0ef8:                                  3
;     l1092:                                  3
;     l1093:                                  3
;     l1094:                                  3
;     l1098:                                  3
;     l109d:                                  3
;     l109f:                                  3
;     l10c3:                                  3
;     l10c5:                                  3
;     l10c6:                                  3
;     l10d0:                                  3
;     l10d3:                                  3
;     l10d6:                                  3
;     l10d7:                                  3
;     l1119:                                  3
;     l111c:                                  3
;     c8103:                                  3
;     sub_c81be:                              3
;     c8290:                                  3
;     c82e6:                                  3
;     sub_c833a:                              3
;     sub_c836e:                              3
;     c8454:                                  3
;     sub_c8456:                              3
;     c89d7:                                  3
;     sub_c8b86:                              3
;     c8d41:                                  3
;     c8e53:                                  3
;     c8ecc:                                  3
;     c8f2a:                                  3
;     sub_c8f7a:                              3
;     nmi_handler2_rom_end:                   3
;     c91af:                                  3
;     c9214:                                  3
;     sub_c93fd:                              3
;     c9444:                                  3
;     c94bc:                                  3
;     sub_c9526:                              3
;     c9738:                                  3
;     sub_c9940:                              3
;     c99ed:                                  3
;     c9a8c:                                  3
;     sub_c9be5:                              3
;     generate_error_precheck_open:           3
;     c9d5d:                                  3
;     sub_c9e30:                              3
;     sub_c9f0f:                              3
;     sub_c9f16:                              3
;     sub_c9f1e:                              3
;     ca06b:                                  3
;     ca14f:                                  3
;     ca1c0:                                  3
;     sub_ca315:                              3
;     sub_ca384:                              3
;     sub_ca530:                              3
;     ca660:                                  3
;     sub_ca9c2:                              3
;     caa42:                                  3
;     caa44:                                  3
;     sub_cac0c:                              3
;     cacc4:                                  3
;     tube_host_code2:                        3
;     sub_cad5d:                              3
;     cad77:                                  3
;     laf76:                                  3
;     cb1d5:                                  3
;     cb371:                                  3
;     sub_cb58b:                              3
;     cb684:                                  3
;     cb6ca:                                  3
;     sub_cb84e:                              3
;     sub_cb986:                              3
;     sram_table:                             3
;     cbab4:                                  3
;     sub_cbac4:                              3
;     cbe47:                                  3
;     cbe89:                                  3
;     cbe8d:                                  3
;     sub_cbf7c:                              3
;     lfe80:                                  3
;     tube_host_r1_data:                      3
;     osword:                                 3
;     oscli:                                  3
;     l0003:                                  2
;     l0012:                                  2
;     l0014:                                  2
;     l00a0:                                  2
;     l00a3:                                  2
;     l00a4:                                  2
;     l00ad:                                  2
;     l00fd:                                  2
;     l0101:                                  2
;     l0102:                                  2
;     l0105:                                  2
;     l010b:                                  2
;     l0128:                                  2
;     fscv:                                   2
;     l0700:                                  2
;     l0e07:                                  2
;     l0f0a:                                  2
;     l0f0b:                                  2
;     l1045:                                  2
;     l1062:                                  2
;     l1065:                                  2
;     l1067:                                  2
;     l1078:                                  2
;     l107d:                                  2
;     l107e:                                  2
;     l107f:                                  2
;     l1089:                                  2
;     l108c:                                  2
;     l1091:                                  2
;     l109a:                                  2
;     l109b:                                  2
;     l109e:                                  2
;     l10c1:                                  2
;     l10cd:                                  2
;     l10d8:                                  2
;     l10db:                                  2
;     l10dc:                                  2
;     l10e2:                                  2
;     l10e3:                                  2
;     l10e4:                                  2
;     l1109:                                  2
;     l110b:                                  2
;     l110e:                                  2
;     l110f:                                  2
;     l111b:                                  2
;     sub_c809a:                              2
;     sub_c80e3:                              2
;     c815d:                                  2
;     sub_c81ae:                              2
;     sub_c81c5:                              2
;     c822a:                                  2
;     c825d:                                  2
;     sub_c8266:                              2
;     sub_c826d:                              2
;     sub_c82bb:                              2
;     sub_c82e8:                              2
;     c82fd:                                  2
;     sub_c841b:                              2
;     sub_c8439:                              2
;     c8543:                                  2
;     sub_c8555:                              2
;     c8560:                                  2
;     c85bc:                                  2
;     c8703:                                  2
;     c8705:                                  2
;     c873b:                                  2
;     sub_c8745:                              2
;     sub_c87db:                              2
;     sub_c87e3:                              2
;     c8808:                                  2
;     c883f:                                  2
;     sub_c8855:                              2
;     sub_c8862:                              2
;     c88a6:                                  2
;     c88f4:                                  2
;     sub_c8951:                              2
;     c898a:                                  2
;     c89a5:                                  2
;     c89b4:                                  2
;     sub_c89da:                              2
;     c8a00:                                  2
;     c8a6e:                                  2
;     sub_c8a77:                              2
;     sub_c8ab3:                              2
;     sub_c8b4d:                              2
;     sub_c8b64:                              2
;     c8be3:                                  2
;     c8c12:                                  2
;     c8cb2:                                  2
;     c8d0d:                                  2
;     c8d13:                                  2
;     c8e0d:                                  2
;     c8e32:                                  2
;     c8e9f:                                  2
;     c8ea5:                                  2
;     c8eb7:                                  2
;     c8eeb:                                  2
;     c8f3e:                                  2
;     c90c7:                                  2
;     c91df:                                  2
;     sub_c9279:                              2
;     c9289:                                  2
;     sub_c928a:                              2
;     c9367:                                  2
;     sub_c93c5:                              2
;     sub_c93d3:                              2
;     sub_c93f5:                              2
;     sub_c9432:                              2
;     sub_c9445:                              2
;     c94a9:                                  2
;     c94c6:                                  2
;     sub_c9516:                              2
;     sub_c952e:                              2
;     c95fd:                                  2
;     c9628:                                  2
;     c965a:                                  2
;     c96b7:                                  2
;     c97b3:                                  2
;     sub_c992c:                              2
;     invert_l1065:                           2
;     sub_c995a:                              2
;     sub_c99f3:                              2
;     sub_c9a0f:                              2
;     sub_c9a50:                              2
;     sub_c9a60:                              2
;     sub_c9a63:                              2
;     sub_c9a78:                              2
;     sub_c9a82:                              2
;     sub_c9aa3:                              2
;     sub_c9ac8:                              2
;     sub_c9ad8:                              2
;     c9b6e:                                  2
;     sub_c9b79:                              2
;     c9bc5:                                  2
;     sub_c9bf2:                              2
;     sub_c9d1e:                              2
;     c9dcd:                                  2
;     c9dd5:                                  2
;     sub_c9df4:                              2
;     sub_c9e1e:                              2
;     c9e41:                                  2
;     sub_c9e54:                              2
;     sub_c9ef4:                              2
;     sub_c9f14:                              2
;     sub_c9f26:                              2
;     ca01d:                                  2
;     ca021:                                  2
;     ca06c:                                  2
;     ca0f5:                                  2
;     ca10b:                                  2
;     sub_ca168:                              2
;     ca19f:                                  2
;     sub_ca1c6:                              2
;     la1d3:                                  2
;     ca2f2:                                  2
;     sub_ca324:                              2
;     ca38b:                                  2
;     sub_ca3ec:                              2
;     ca411:                                  2
;     ca414:                                  2
;     sub_ca51f:                              2
;     ca5ab:                                  2
;     sub_ca5b2:                              2
;     ca637:                                  2
;     ca845:                                  2
;     ca86b:                                  2
;     ca87a:                                  2
;     sub_ca90d:                              2
;     ca97d:                                  2
;     ca9ff:                                  2
;     caa1c:                                  2
;     caa51:                                  2
;     sub_caa53:                              2
;     sub_caac2:                              2
;     sub_caaf1:                              2
;     cab1a:                                  2
;     cab41:                                  2
;     cab54:                                  2
;     cabbc:                                  2
;     sub_cac4e:                              2
;     cad15:                                  2
;     cadd7:                                  2
;     tube_host_code2+256:                    2
;     cae11:                                  2
;     caed3:                                  2
;     tube_banner_loop:                       2
;     just_rts:                               2
;     tube_host_code3:                        2
;     laf75:                                  2
;     laf77:                                  2
;     laf78:                                  2
;     tube_host_code1:                        2
;     cafad:                                  2
;     caffb:                                  2
;     cb00a:                                  2
;     cb035:                                  2
;     sub_cb047:                              2
;     cb280:                                  2
;     cb297:                                  2
;     cb2a0:                                  2
;     cb300:                                  2
;     cb406:                                  2
;     cb45e:                                  2
;     sub_cb598:                              2
;     sub_cb5ce:                              2
;     sub_cb5ee:                              2
;     sub_cb607:                              2
;     sub_cb61e:                              2
;     cb655:                                  2
;     sub_cb65f:                              2
;     sub_cb6b1:                              2
;     cb718:                                  2
;     cb7ed:                                  2
;     lb872:                                  2
;     cb8e4:                                  2
;     cb9e8:                                  2
;     sub_cb9f5:                              2
;     cba10:                                  2
;     cbaf8:                                  2
;     cbafd:                                  2
;     cbb28:                                  2
;     cbb2a:                                  2
;     cbc13:                                  2
;     cbc3a:                                  2
;     sub_cbc68:                              2
;     cbcb9:                                  2
;     cbdb9:                                  2
;     sub_cbe83:                              2
;     sub_cbe9d:                              2
;     cbec1:                                  2
;     sub_cbec2:                              2
;     general_service_handler_indirect:       2
;     sub_cbf82:                              2
;     cbf8e:                                  2
;     tube_host_r4_status:                    2
;     gsinit:                                 2
;     gsread:                                 2
;     osgbpb:                                 2
;     osargs:                                 2
;     l0013:                                  1
;     l00f1:                                  1
;     l0103:                                  1
;     l0104:                                  1
;     l010c:                                  1
;     l010d:                                  1
;     l010e:                                  1
;     brkv:                                   1
;     brkv+1:                                 1
;     filev:                                  1
;     evntv:                                  1
;     evntv+1:                                1
;     l028d:                                  1
;     l0cff:                                  1
;     l0e0e:                                  1
;     l0e10:                                  1
;     l0f00:                                  1
;     l0f09:                                  1
;     l0f10:                                  1
;     l1001:                                  1
;     l1002:                                  1
;     l1003:                                  1
;     l1004:                                  1
;     l1005:                                  1
;     l1006:                                  1
;     l1007:                                  1
;     l100e:                                  1
;     l1047:                                  1
;     l104d:                                  1
;     l104e:                                  1
;     l1050:                                  1
;     l1058:                                  1
;     l105f:                                  1
;     l1061:                                  1
;     l1063:                                  1
;     l1064:                                  1
;     l1072:                                  1
;     l1079:                                  1
;     l107a:                                  1
;     l1083:                                  1
;     l108f:                                  1
;     rom_header:                             1
;     l8001:                                  1
;     l8002:                                  1
;     service_entry:                          1
;     l8004:                                  1
;     rom_type:                               1
;     copyright_offset:                       1
;     sub_c8020:                              1
;     c8040:                                  1
;     loop_c8064:                             1
;     loop_c8086:                             1
;     c8093:                                  1
;     c8096:                                  1
;     sub_c809d:                              1
;     sub_c80b8:                              1
;     c80d0:                                  1
;     sub_c80d3:                              1
;     sub_c80db:                              1
;     sub_c80e6:                              1
;     sub_c80f6:                              1
;     c8111:                                  1
;     c8115:                                  1
;     c812e:                                  1
;     loop_c813a:                             1
;     c815b:                                  1
;     c815f:                                  1
;     loop_c8161:                             1
;     loop_c816b:                             1
;     c8184:                                  1
;     c818a:                                  1
;     loop_c818c:                             1
;     c81a2:                                  1
;     sub_c81b7:                              1
;     c81bd:                                  1
;     sub_c81c0:                              1
;     sub_c81c4:                              1
;     sub_c81ca:                              1
;     loop_c820c:                             1
;     loop_c820d:                             1
;     loop_c821c:                             1
;     sub_c8222:                              1
;     c8243:                                  1
;     loop_c826f:                             1
;     c8286:                                  1
;     c828b:                                  1
;     c82be:                                  1
;     loop_c82c7:                             1
;     loop_c82d1:                             1
;     c82d9:                                  1
;     c82e7:                                  1
;     c82fb:                                  1
;     c8306:                                  1
;     loop_c830d:                             1
;     loop_c8326:                             1
;     c8332:                                  1
;     c8333:                                  1
;     loop_c8370:                             1
;     loop_c8390:                             1
;     loop_c8397:                             1
;     c83ab:                                  1
;     sub_c83bf:                              1
;     c83cd:                                  1
;     sub_c83d1:                              1
;     sub_c83d4:                              1
;     c83e2:                                  1
;     sub_c83ee:                              1
;     loop_c83f0:                             1
;     loop_c83fa:                             1
;     loop_c8406:                             1
;     loop_c8425:                             1
;     c842b:                                  1
;     sub_c842c:                              1
;     c8436:                                  1
;     c8438:                                  1
;     c8453:                                  1
;     loop_c8463:                             1
;     c8477:                                  1
;     c8481:                                  1
;     c8482:                                  1
;     loop_c8493:                             1
;     c849d:                                  1
;     loop_c84e7:                             1
;     loop_c8527:                             1
;     c853e:                                  1
;     loop_c8552:                             1
;     c855f:                                  1
;     loop_c8564:                             1
;     c8573:                                  1
;     loop_c857b:                             1
;     c859b:                                  1
;     loop_c85b5:                             1
;     c85c5:                                  1
;     opt4_table:                             1
;     sub_c85e3:                              1
;     sub_c8602:                              1
;     command_table+1:                        1
;     loop_c8717:                             1
;     loop_c8725:                             1
;     c8734:                                  1
;     c8759:                                  1
;     c8779:                                  1
;     c877c:                                  1
;     loop_c87a0:                             1
;     c87ab:                                  1
;     c87b8:                                  1
;     loop_c87be:                             1
;     c87c6:                                  1
;     c8815:                                  1
;     sub_c8826:                              1
;     c8837:                                  1
;     c8864:                                  1
;     c8867:                                  1
;     loop_c88bc:                             1
;     c892d:                                  1
;     sub_c8932:                              1
;     c8945:                                  1
;     loop_c895f:                             1
;     c8968:                                  1
;     c896b:                                  1
;     sub_c8979:                              1
;     loop_c8990:                             1
;     c89ad:                                  1
;     loop_c89c4:                             1
;     loop_c89ca:                             1
;     c89e2:                                  1
;     c89f6:                                  1
;     loop_c8a17:                             1
;     c8a19:                                  1
;     c8a49:                                  1
;     c8a50:                                  1
;     c8a54:                                  1
;     c8a82:                                  1
;     loop_c8ac8:                             1
;     c8ad0:                                  1
;     loop_c8ad8:                             1
;     c8aeb:                                  1
;     loop_c8af0:                             1
;     loop_c8afb:                             1
;     c8b18:                                  1
;     sub_c8b25:                              1
;     c8b60:                                  1
;     c8b77:                                  1
;     loop_c8b80:                             1
;     loop_c8bea:                             1
;     sub_c8bf6:                              1
;     sub_c8bf9:                              1
;     c8bfb:                                  1
;     c8c2e:                                  1
;     c8c3a:                                  1
;     c8c4e:                                  1
;     sub_c8c56:                              1
;     loop_c8c58:                             1
;     c8c61:                                  1
;     sub_c8c65:                              1
;     loop_c8c71:                             1
;     c8c87:                                  1
;     c8cae:                                  1
;     c8cc1:                                  1
;     c8cd6:                                  1
;     c8ce7:                                  1
;     c8cfc:                                  1
;     c8d03:                                  1
;     loop_c8d14:                             1
;     loop_c8d17:                             1
;     sub_c8d1a:                              1
;     c8d5d:                                  1
;     c8d92:                                  1
;     loop_c8dac:                             1
;     loop_c8dba:                             1
;     sub_c8dc6:                              1
;     c8dd2:                                  1
;     c8de2:                                  1
;     loop_c8de9:                             1
;     loop_c8df0:                             1
;     c8e03:                                  1
;     loop_c8e14:                             1
;     c8e4d:                                  1
;     c8e6f:                                  1
;     c8e72:                                  1
;     loop_c8e85:                             1
;     c8e9e:                                  1
;     c8eaf:                                  1
;     c8ecb:                                  1
;     c8edf:                                  1
;     sub_c8eec:                              1
;     c8ef8:                                  1
;     sub_c8efa:                              1
;     sub_c8eff:                              1
;     c8f12:                                  1
;     loop_c8f17:                             1
;     c8f21:                                  1
;     sub_c8f33:                              1
;     sub_c8f37:                              1
;     sub_c8f4f:                              1
;     sub_c8f5e:                              1
;     loop_c8f6c:                             1
;     sub_c8f75:                              1
;     c8f81:                                  1
;     sub_c8f82:                              1
;     sub_c8f94:                              1
;     loop_c8f96:                             1
;     loop_c8fac:                             1
;     c8fb5:                                  1
;     c8fc7:                                  1
;     nmi_handler_rom_start:                  1
;     nmi3_handler_rom_start-1:               1
;     nmi3_handler_rom_end:                   1
;     loop_c9047:                             1
;     c9060:                                  1
;     nmi_handler2_rom_start-1:               1
;     c90db:                                  1
;     c90e7:                                  1
;     set_c_iff_have_fdc:                     1
;     loop_c9108:                             1
;     loop_c9113:                             1
;     c9115:                                  1
;     l911d:                                  1
;     l9121:                                  1
;     nmi_and_table:                          1
;     l9139:                                  1
;     l913f:                                  1
;     l9145:                                  1
;     l9146:                                  1
;     l9191:                                  1
;     l91a0:                                  1
;     loop_c91ba:                             1
;     c91cc:                                  1
;     loop_c91e7:                             1
;     c91eb:                                  1
;     c91f3:                                  1
;     c91f9:                                  1
;     c9201:                                  1
;     c920d:                                  1
;     c921f:                                  1
;     c922b:                                  1
;     c9238:                                  1
;     c923b:                                  1
;     c923f:                                  1
;     c9249:                                  1
;     c925a:                                  1
;     c926a:                                  1
;     c9276:                                  1
;     c929c:                                  1
;     sub_c929d:                              1
;     c92bd:                                  1
;     c92c4:                                  1
;     c92c7:                                  1
;     c92d6:                                  1
;     c92e3:                                  1
;     loop_c92ef:                             1
;     c9302:                                  1
;     loop_c9355:                             1
;     loop_c9357:                             1
;     c936b:                                  1
;     loop_c936f:                             1
;     c9379:                                  1
;     loop_c9382:                             1
;     c938d:                                  1
;     c9390:                                  1
;     c93a8:                                  1
;     c93b1:                                  1
;     sub_c93b4:                              1
;     loop_c93bd:                             1
;     c93c4:                                  1
;     sub_c93d8:                              1
;     loop_c93da:                             1
;     c93e2:                                  1
;     c93e5:                                  1
;     sub_c93f1:                              1
;     sub_c93f9:                              1
;     c93ff:                                  1
;     c9450:                                  1
;     c945c:                                  1
;     c948d:                                  1
;     c94c1:                                  1
;     c94c2:                                  1
;     c94d4:                                  1
;     c9504:                                  1
;     c9535:                                  1
;     sub_c9536:                              1
;     loop_c953a:                             1
;     c9556:                                  1
;     c956d:                                  1
;     c956f:                                  1
;     loop_c957d:                             1
;     loop_c9593:                             1
;     loop_c95b6:                             1
;     loop_c95d9:                             1
;     c95e4:                                  1
;     c95e7:                                  1
;     loop_c95ec:                             1
;     loop_c9618:                             1
;     c9649:                                  1
;     c964a:                                  1
;     c9658:                                  1
;     sub_c965d:                              1
;     c967a:                                  1
;     c9682:                                  1
;     c9683:                                  1
;     c969e:                                  1
;     pla_rts:                                1
;     loop_c96c2:                             1
;     c96c3:                                  1
;     c96e4:                                  1
;     c96e9:                                  1
;     c96ec:                                  1
;     loop_c96f2:                             1
;     c96f5:                                  1
;     c9700:                                  1
;     c9714:                                  1
;     c9736:                                  1
;     c973c:                                  1
;     c973d:                                  1
;     c975b:                                  1
;     c976c:                                  1
;     loop_c979d:                             1
;     loop_c97c8:                             1
;     c97e6:                                  1
;     sub_c97e8:                              1
;     loop_c9803:                             1
;     c981f:                                  1
;     c982e:                                  1
;     sub_c9832:                              1
;     c9835:                                  1
;     loop_c9837:                             1
;     c984c:                                  1
;     loop_c9851:                             1
;     c9859:                                  1
;     loop_c985e:                             1
;     c986b:                                  1
;     c9873:                                  1
;     loop_c9881:                             1
;     loop_c98a0:                             1
;     c98b1:                                  1
;     c98ba:                                  1
;     loop_c98c1:                             1
;     c98cd:                                  1
;     loop_c98e4:                             1
;     c98ed:                                  1
;     c98f0:                                  1
;     loop_c9942:                             1
;     c994b:                                  1
;     loop_c994e:                             1
;     loop_c9964:                             1
;     c9978:                                  1
;     sub_c9988:                              1
;     c9993:                                  1
;     loop_c99a8:                             1
;     c99ea:                                  1
;     c9a2a:                                  1
;     sub_c9a32:                              1
;     c9a3f:                                  1
;     sub_c9a4b:                              1
;     generate_error_precheck_locked:         1
;     c9a73:                                  1
;     c9a77:                                  1
;     sub_c9ad3:                              1
;     c9ad4:                                  1
;     l9aec:                                  1
;     l9b0f:                                  1
;     l9b18:                                  1
;     l9b21:                                  1
;     l9b29:                                  1
;     l9b31:                                  1
;     l9b3a:                                  1
;     l9b43:                                  1
;     loop_c9b50:                             1
;     sub_c9b51:                              1
;     loop_c9b5e:                             1
;     sub_c9b61:                              1
;     loop_c9b63:                             1
;     c9bc2:                                  1
;     sub_c9bca:                              1
;     sub_c9bcd:                              1
;     loop_c9bcf:                             1
;     loop_c9be4:                             1
;     generate_error_precheck_disc_changed:   1
;     c9c16:                                  1
;     c9c33:                                  1
;     loop_c9c38:                             1
;     c9c51:                                  1
;     c9c58:                                  1
;     loop_c9c5d:                             1
;     c9c6b:                                  1
;     c9c8b:                                  1
;     loop_c9c90:                             1
;     loop_c9ca8:                             1
;     c9cee:                                  1
;     loop_c9d03:                             1
;     c9d12:                                  1
;     sub_c9d19:                              1
;     c9d2b:                                  1
;     loop_c9d43:                             1
;     c9d57:                                  1
;     c9d67:                                  1
;     c9d71:                                  1
;     c9d72:                                  1
;     sub_c9d75:                              1
;     c9d86:                                  1
;     c9d89:                                  1
;     c9db4:                                  1
;     c9dce:                                  1
;     loop_c9e07:                             1
;     c9e13:                                  1
;     c9e16:                                  1
;     c9e28:                                  1
;     c9e2a:                                  1
;     osbyte_write_0:                         1
;     c9e5c:                                  1
;     c9e6f:                                  1
;     c9e71:                                  1
;     loop_c9e74:                             1
;     loop_c9e8c:                             1
;     sub_c9e94:                              1
;     c9eb3:                                  1
;     c9ec2:                                  1
;     c9ef1:                                  1
;     c9f0d:                                  1
;     c9f19:                                  1
;     c9f5e:                                  1
;     c9f64:                                  1
;     c9f6a:                                  1
;     c9f6b:                                  1
;     loop_c9f6e:                             1
;     sub_c9f7c:                              1
;     sub_c9f82:                              1
;     c9f88:                                  1
;     c9fd9:                                  1
;     c9ff4:                                  1
;     ca005:                                  1
;     ca054:                                  1
;     loop_ca061:                             1
;     ca075:                                  1
;     ca0a9:                                  1
;     sub_ca0b8:                              1
;     sub_ca0f6:                              1
;     loop_ca11d:                             1
;     loop_ca132:                             1
;     loop_ca143:                             1
;     loop_ca16e:                             1
;     ca17a:                                  1
;     ca183:                                  1
;     sub_ca190:                              1
;     loop_ca1aa:                             1
;     ca1c1:                                  1
;     loop_ca1cc:                             1
;     ca1d2:                                  1
;     ca27a:                                  1
;     ca2ab:                                  1
;     ca30d:                                  1
;     ca321:                                  1
;     ca34a:                                  1
;     ca378:                                  1
;     ca38c:                                  1
;     ca38e:                                  1
;     ca3ae:                                  1
;     ca3bd:                                  1
;     sub_ca3e4:                              1
;     ca3fb:                                  1
;     ca40c:                                  1
;     ca45d:                                  1
;     ca47b:                                  1
;     loop_ca487:                             1
;     sub_ca4e1:                              1
;     ca4fa:                                  1
;     loop_ca521:                             1
;     ca538:                                  1
;     ca547:                                  1
;     ca574:                                  1
;     ca595:                                  1
;     ca5a0:                                  1
;     ca5c4:                                  1
;     ca5e2:                                  1
;     ca5fb:                                  1
;     ca605:                                  1
;     ca63a:                                  1
;     ca647:                                  1
;     ca652:                                  1
;     ca65d:                                  1
;     sub_ca663:                              1
;     ca675:                                  1
;     ca68a:                                  1
;     ca6b3:                                  1
;     ca6b6:                                  1
;     ca6bb:                                  1
;     ca6ce:                                  1
;     ca6e2:                                  1
;     ca70a:                                  1
;     ca712:                                  1
;     ca721:                                  1
;     ca728:                                  1
;     ca73a:                                  1
;     sub_ca73d:                              1
;     sub_ca76c:                              1
;     loop_ca76f:                             1
;     sub_ca779:                              1
;     ca787:                                  1
;     sub_ca788:                              1
;     ca7a4:                                  1
;     loop_ca7a7:                             1
;     sub_ca7c4:                              1
;     sub_ca7c5:                              1
;     loop_ca7c6:                             1
;     sub_ca7ce:                              1
;     loop_ca7e0:                             1
;     loop_ca7e1:                             1
;     ca7f2:                                  1
;     ca7f7:                                  1
;     ca818:                                  1
;     ca82f:                                  1
;     ca856:                                  1
;     ca8bd:                                  1
;     sub_ca8be:                              1
;     sub_ca8e2:                              1
;     ca8fa:                                  1
;     ca902:                                  1
;     ca90c:                                  1
;     loop_ca941:                             1
;     loop_ca947:                             1
;     loop_ca953:                             1
;     ca95d:                                  1
;     ca96c:                                  1
;     ca970:                                  1
;     ca982:                                  1
;     ca98d:                                  1
;     loop_ca9ab:                             1
;     ca9b8:                                  1
;     sub_ca9bf:                              1
;     loop_ca9e7:                             1
;     loop_caa01:                             1
;     caa0a:                                  1
;     caa0d:                                  1
;     sub_caa12:                              1
;     caa78:                                  1
;     caa7a:                                  1
;     caa86:                                  1
;     sub_caa9a:                              1
;     caab7:                                  1
;     loop_caab8:                             1
;     caabe:                                  1
;     caace:                                  1
;     sub_caadd:                              1
;     sub_caaea:                              1
;     cab09:                                  1
;     cab17:                                  1
;     cab2e:                                  1
;     cab35:                                  1
;     cab3d:                                  1
;     loop_cab6b:                             1
;     cab7d:                                  1
;     loop_cab80:                             1
;     cab93:                                  1
;     caba4:                                  1
;     sub_caba9:                              1
;     loop_cabad:                             1
;     cabcf:                                  1
;     loop_cabf4:                             1
;     cabfb:                                  1
;     cac28:                                  1
;     cac45:                                  1
;     loop_cac46:                             1
;     sub_cac47:                              1
;     sub_cac6a:                              1
;     sub_cac72:                              1
;     cacc7:                                  1
;     lacf3:                                  1
;     cad2d:                                  1
;     cad3f:                                  1
;     cad52:                                  1
;     cad61:                                  1
;     cad6e:                                  1
;     cad81:                                  1
;     cad86:                                  1
;     cada2:                                  1
;     cadae:                                  1
;     cadc1:                                  1
;     caddf:                                  1
;     cadf8:                                  1
;     cae06:                                  1
;     cae20:                                  1
;     cae27:                                  1
;     cae32:                                  1
;     cae35:                                  1
;     cae40:                                  1
;     cae45:                                  1
;     cae5b:                                  1
;     cae62:                                  1
;     cae82:                                  1
;     service_handler_help_and_tube:          1
;     caed7:                                  1
;     service_handler_tube_main_init:         1
;     loop_caf13:                             1
;     loop_caf2d:                             1
;     lda_0_rts:                              1
;     caf4b:                                  1
;     caf54:                                  1
;     caf5d:                                  1
;     caf63:                                  1
;     laf73:                                  1
;     sub_caf8d:                              1
;     sub_caf9a:                              1
;     cafa1:                                  1
;     cafab:                                  1
;     cafae:                                  1
;     cafbf:                                  1
;     cafdc:                                  1
;     cafdf:                                  1
;     cafea:                                  1
;     caff3:                                  1
;     caffd:                                  1
;     cb005:                                  1
;     cb014:                                  1
;     cb01f:                                  1
;     sub_cb040:                              1
;     cb05a:                                  1
;     cb070:                                  1
;     lb075:                                  1
;     lb175:                                  1
;     general_service_handler:                1
;     cb1dd:                                  1
;     loop_cb1e3:                             1
;     loop_cb1ed:                             1
;     cb1fc:                                  1
;     cb20f:                                  1
;     cb221:                                  1
;     sub_cb234:                              1
;     cb23d:                                  1
;     loop_cb249:                             1
;     cb260:                                  1
;     cb268:                                  1
;     loop_cb275:                             1
;     lb283:                                  1
;     cb2b2:                                  1
;     loop_cb2b4:                             1
;     loop_cb2bd:                             1
;     sub_cb2c8:                              1
;     loop_cb2d1:                             1
;     cb2e1:                                  1
;     cb2e7:                                  1
;     cb305:                                  1
;     cb314:                                  1
;     cb337:                                  1
;     cb34f:                                  1
;     cb352:                                  1
;     cb375:                                  1
;     cb37f:                                  1
;     cb382:                                  1
;     cb397:                                  1
;     cb3ba:                                  1
;     cb3de:                                  1
;     cb40e:                                  1
;     cb44b:                                  1
;     loop_cb44d:                             1
;     cb45a:                                  1
;     cb470:                                  1
;     loop_cb4a8:                             1
;     cb4af:                                  1
;     cb4b4:                                  1
;     cb4d8:                                  1
;     cb4df:                                  1
;     cb4e9:                                  1
;     cb4ee:                                  1
;     cb502:                                  1
;     cb534:                                  1
;     loop_cb55e:                             1
;     loop_cb578:                             1
;     cb597:                                  1
;     loop_cb5c6:                             1
;     cb5d0:                                  1
;     cb5e6:                                  1
;     loop_cb5ed:                             1
;     cb65e:                                  1
;     cb6a6:                                  1
;     loop_cb6b3:                             1
;     cb6c2:                                  1
;     lb6c6:                                  1
;     lb6ce:                                  1
;     cb6d2:                                  1
;     sub_cb6e6:                              1
;     cb6eb:                                  1
;     cb6f5:                                  1
;     cb725:                                  1
;     cb736:                                  1
;     loop_cb75a:                             1
;     sub_cb771:                              1
;     lb774:                                  1
;     cb7ae:                                  1
;     cb7b2:                                  1
;     sub_cb7b6:                              1
;     loop_cb7be:                             1
;     loop_cb7d7:                             1
;     loop_cb7dd:                             1
;     cb7e8:                                  1
;     cb7ec:                                  1
;     sub_cb86f:                              1
;     lb87e:                                  1
;     sub_cb882:                              1
;     cb898:                                  1
;     cb8e6:                                  1
;     cb8f5:                                  1
;     loop_cb910:                             1
;     lb924:                                  1
;     lb979:                                  1
;     lb97a:                                  1
;     lb980:                                  1
;     loop_cb999:                             1
;     cb9ae:                                  1
;     loop_cb9bd:                             1
;     loop_cb9cc:                             1
;     loop_cb9d1:                             1
;     cb9d2:                                  1
;     cb9d9:                                  1
;     cb9ee:                                  1
;     cb9f7:                                  1
;     loop_cb9f9:                             1
;     cba15:                                  1
;     cba19:                                  1
;     loop_cba1a:                             1
;     cba27:                                  1
;     cba28:                                  1
;     cba2e:                                  1
;     cba2f:                                  1
;     sram_table+1:                           1
;     cba78:                                  1
;     cba8c:                                  1
;     loop_cba94:                             1
;     cba9e:                                  1
;     cbab0:                                  1
;     cbab1:                                  1
;     loop_cbab8:                             1
;     cbad0:                                  1
;     sub_cbad2:                              1
;     loop_cbaea:                             1
;     cbb07:                                  1
;     cbb33:                                  1
;     cbb36:                                  1
;     lbb3a:                                  1
;     lbb3e:                                  1
;     lbb42:                                  1
;     cbb4c:                                  1
;     cbb6f:                                  1
;     cbb89:                                  1
;     cbb90:                                  1
;     cbba1:                                  1
;     cbbbe:                                  1
;     cbbd9:                                  1
;     loop_cbbe4:                             1
;     cbbf3:                                  1
;     loop_cbbfe:                             1
;     cbc2c:                                  1
;     cbc54:                                  1
;     cbc64:                                  1
;     loop_cbc70:                             1
;     cbc78:                                  1
;     cbc93:                                  1
;     cbcb2:                                  1
;     loop_cbcd3:                             1
;     cbcd6:                                  1
;     cbce1:                                  1
;     cbcf9:                                  1
;     loop_cbd08:                             1
;     cbd0e:                                  1
;     cbd1b:                                  1
;     loop_cbd2b:                             1
;     cbd40:                                  1
;     cbd46:                                  1
;     loop_cbd6c:                             1
;     cbd7e:                                  1
;     loop_cbd99:                             1
;     cbda3:                                  1
;     cbdba:                                  1
;     cbdc0:                                  1
;     cbdd3:                                  1
;     cbddd:                                  1
;     loop_cbe0e:                             1
;     cbe21:                                  1
;     loop_cbe31:                             1
;     cbe3c:                                  1
;     cbe52:                                  1
;     sub_cbe91:                              1
;     loop_cbeab:                             1
;     service_handler:                        1
;     cbee0:                                  1
;     cbeee:                                  1
;     loop_cbf1c:                             1
;     cbf33:                                  1
;     cbf46:                                  1
;     lbf4f:                                  1
;     loop_cbf78:                             1
;     sub_cbf84:                              1
;     cbf8a:                                  1
;     cbfa3:                                  1
;     cbfb2:                                  1
;     tube_host_r4_data:                      1

; Automatically generated labels:
;     c0032
;     c0036
;     c0041
;     c0400
;     c0432
;     c0434
;     c0463
;     c047a
;     c0482
;     c0484
;     c048c
;     c0491
;     c049b
;     c04bc
;     c04f7
;     c053a
;     c0552
;     c0593
;     c059c
;     c059e
;     c05a6
;     c05fc
;     c0636
;     c0645
;     c0665
;     c06a7
;     c0d60
;     c0d74
;     c0d80
;     c8040
;     c8093
;     c8096
;     c809f
;     c80d0
;     c8103
;     c8111
;     c8115
;     c8125
;     c812e
;     c815b
;     c815d
;     c815f
;     c8184
;     c818a
;     c81a2
;     c81a7
;     c81bd
;     c8225
;     c822a
;     c8243
;     c825d
;     c8286
;     c828b
;     c8290
;     c82be
;     c82d9
;     c82e6
;     c82e7
;     c82fb
;     c82fd
;     c8306
;     c8332
;     c8333
;     c83ab
;     c83cd
;     c83e2
;     c842b
;     c8436
;     c8438
;     c8453
;     c8454
;     c8477
;     c8481
;     c8482
;     c849d
;     c853e
;     c8543
;     c855f
;     c8560
;     c8573
;     c859b
;     c85bc
;     c85c5
;     c8703
;     c8705
;     c8734
;     c873b
;     c8759
;     c8779
;     c877c
;     c87ab
;     c87b8
;     c87c6
;     c8808
;     c8815
;     c8816
;     c8837
;     c883f
;     c8864
;     c8867
;     c88a6
;     c88f4
;     c892d
;     c8945
;     c8968
;     c896b
;     c898a
;     c89a5
;     c89ad
;     c89b4
;     c89d7
;     c89e2
;     c89f6
;     c8a00
;     c8a19
;     c8a49
;     c8a50
;     c8a54
;     c8a6e
;     c8a82
;     c8ad0
;     c8aeb
;     c8b18
;     c8b60
;     c8b77
;     c8b8b
;     c8ba2
;     c8be3
;     c8bfb
;     c8c12
;     c8c2e
;     c8c3a
;     c8c4e
;     c8c61
;     c8c87
;     c8cae
;     c8cb2
;     c8cc1
;     c8cd6
;     c8ce7
;     c8cfc
;     c8d03
;     c8d0d
;     c8d13
;     c8d41
;     c8d5d
;     c8d74
;     c8d91
;     c8d92
;     c8dd2
;     c8de2
;     c8e03
;     c8e0d
;     c8e0e
;     c8e12
;     c8e32
;     c8e4d
;     c8e53
;     c8e64
;     c8e6f
;     c8e72
;     c8e9e
;     c8e9f
;     c8ea5
;     c8eaf
;     c8eb7
;     c8ecb
;     c8ecc
;     c8edf
;     c8eeb
;     c8ef8
;     c8f12
;     c8f21
;     c8f2a
;     c8f3e
;     c8f81
;     c8fb5
;     c8fc7
;     c9060
;     c90c7
;     c90db
;     c90e7
;     c9115
;     c91af
;     c91cc
;     c91df
;     c91eb
;     c91f3
;     c91f9
;     c9201
;     c920d
;     c9214
;     c921f
;     c922b
;     c9238
;     c923b
;     c923f
;     c9249
;     c9257
;     c925a
;     c926a
;     c9276
;     c9289
;     c929c
;     c92bd
;     c92c4
;     c92c7
;     c92d6
;     c92e3
;     c9302
;     c9367
;     c936b
;     c9379
;     c938d
;     c9390
;     c93a8
;     c93b1
;     c93c4
;     c93e2
;     c93e5
;     c93e6
;     c93ff
;     c940c
;     c940e
;     c9436
;     c9444
;     c9450
;     c945c
;     c948d
;     c94a9
;     c94bc
;     c94c1
;     c94c2
;     c94c6
;     c94d4
;     c9504
;     c9535
;     c9556
;     c956d
;     c956f
;     c95e4
;     c95e7
;     c95fd
;     c9628
;     c9649
;     c964a
;     c9658
;     c965a
;     c967a
;     c9682
;     c9683
;     c969e
;     c96b7
;     c96c3
;     c96e4
;     c96e9
;     c96ec
;     c96f5
;     c9700
;     c9714
;     c9736
;     c9738
;     c973c
;     c973d
;     c975b
;     c976c
;     c97b3
;     c97e6
;     c981f
;     c982e
;     c9835
;     c984c
;     c9859
;     c986b
;     c9873
;     c98b1
;     c98ba
;     c98cd
;     c98ed
;     c98f0
;     c993b
;     c994b
;     c996e
;     c9978
;     c9993
;     c99a3
;     c99ea
;     c99ed
;     c9a2a
;     c9a3f
;     c9a73
;     c9a77
;     c9a8c
;     c9ad4
;     c9adf
;     c9ae9
;     c9b6e
;     c9bc2
;     c9bc5
;     c9c16
;     c9c33
;     c9c51
;     c9c58
;     c9c6b
;     c9c8b
;     c9cee
;     c9d12
;     c9d2b
;     c9d57
;     c9d5d
;     c9d67
;     c9d71
;     c9d72
;     c9d86
;     c9d89
;     c9db4
;     c9dcd
;     c9dce
;     c9dd5
;     c9e13
;     c9e16
;     c9e28
;     c9e2a
;     c9e41
;     c9e5c
;     c9e6f
;     c9e71
;     c9eb3
;     c9ec2
;     c9ef1
;     c9f0d
;     c9f19
;     c9f5e
;     c9f64
;     c9f6a
;     c9f6b
;     c9f88
;     c9fd9
;     c9ff4
;     ca005
;     ca01d
;     ca021
;     ca054
;     ca06b
;     ca06c
;     ca075
;     ca0a9
;     ca0f5
;     ca10b
;     ca14f
;     ca17a
;     ca183
;     ca19f
;     ca1c0
;     ca1c1
;     ca1d2
;     ca27a
;     ca2ab
;     ca2f2
;     ca30d
;     ca321
;     ca34a
;     ca378
;     ca38b
;     ca38c
;     ca38e
;     ca3ae
;     ca3bd
;     ca3dc
;     ca3fb
;     ca40c
;     ca411
;     ca414
;     ca45d
;     ca47b
;     ca4fa
;     ca538
;     ca547
;     ca574
;     ca595
;     ca5a0
;     ca5ab
;     ca5c4
;     ca5e2
;     ca5e5
;     ca5fb
;     ca605
;     ca637
;     ca63a
;     ca647
;     ca652
;     ca65d
;     ca660
;     ca675
;     ca68a
;     ca6b3
;     ca6b6
;     ca6bb
;     ca6ce
;     ca6e2
;     ca70a
;     ca712
;     ca721
;     ca728
;     ca73a
;     ca787
;     ca7a4
;     ca7f2
;     ca7f7
;     ca818
;     ca82f
;     ca845
;     ca856
;     ca86b
;     ca87a
;     ca8bd
;     ca8fa
;     ca902
;     ca90c
;     ca95d
;     ca96c
;     ca970
;     ca97d
;     ca982
;     ca98d
;     ca9b8
;     ca9ff
;     caa0a
;     caa0d
;     caa1c
;     caa42
;     caa44
;     caa51
;     caa78
;     caa7a
;     caa86
;     caab7
;     caabe
;     caace
;     cab09
;     cab17
;     cab1a
;     cab2e
;     cab35
;     cab3d
;     cab41
;     cab54
;     cab7d
;     cab93
;     caba4
;     cabbc
;     cabcf
;     cabfb
;     cac0f
;     cac28
;     cac45
;     cacc4
;     cacc7
;     cad15
;     cad2d
;     cad3f
;     cad52
;     cad61
;     cad6e
;     cad77
;     cad79
;     cad81
;     cad86
;     cada2
;     cadae
;     cadc1
;     cadd7
;     caddf
;     cadf8
;     cae06
;     cae11
;     cae20
;     cae27
;     cae32
;     cae35
;     cae40
;     cae45
;     cae5b
;     cae62
;     cae70
;     cae79
;     cae82
;     cae97
;     caea0
;     caed3
;     caed7
;     caf4b
;     caf54
;     caf58
;     caf5d
;     caf63
;     caf7f
;     cafa1
;     cafab
;     cafad
;     cafae
;     cafbf
;     cafdc
;     cafdf
;     cafea
;     caff3
;     caffb
;     caffd
;     cb005
;     cb00a
;     cb014
;     cb01f
;     cb035
;     cb05a
;     cb070
;     cb1d5
;     cb1dd
;     cb1fc
;     cb203
;     cb20f
;     cb221
;     cb23d
;     cb260
;     cb268
;     cb280
;     cb297
;     cb2a0
;     cb2b2
;     cb2e1
;     cb2e7
;     cb300
;     cb305
;     cb314
;     cb337
;     cb34f
;     cb352
;     cb371
;     cb375
;     cb37f
;     cb382
;     cb397
;     cb3ba
;     cb3de
;     cb406
;     cb40e
;     cb446
;     cb44b
;     cb45a
;     cb45e
;     cb470
;     cb4af
;     cb4b4
;     cb4d8
;     cb4df
;     cb4e9
;     cb4ee
;     cb502
;     cb534
;     cb597
;     cb5d0
;     cb5e6
;     cb655
;     cb65e
;     cb684
;     cb68c
;     cb6a6
;     cb6c2
;     cb6ca
;     cb6d2
;     cb6eb
;     cb6f5
;     cb718
;     cb725
;     cb736
;     cb795
;     cb7ae
;     cb7b2
;     cb7e8
;     cb7ec
;     cb7ed
;     cb82b
;     cb898
;     cb8e4
;     cb8e6
;     cb8f5
;     cb8fb
;     cb9ae
;     cb9d2
;     cb9d9
;     cb9e8
;     cb9ee
;     cb9f7
;     cba10
;     cba15
;     cba19
;     cba27
;     cba28
;     cba2e
;     cba2f
;     cba78
;     cba8c
;     cba9e
;     cbab0
;     cbab1
;     cbab4
;     cbad0
;     cbaf8
;     cbafd
;     cbb07
;     cbb28
;     cbb2a
;     cbb33
;     cbb36
;     cbb4c
;     cbb6f
;     cbb89
;     cbb90
;     cbba1
;     cbbbe
;     cbbd0
;     cbbd9
;     cbbf3
;     cbc13
;     cbc2c
;     cbc3a
;     cbc54
;     cbc64
;     cbc78
;     cbc93
;     cbcb2
;     cbcb9
;     cbcd6
;     cbce1
;     cbcf9
;     cbd0e
;     cbd1b
;     cbd40
;     cbd46
;     cbd7e
;     cbda3
;     cbdb9
;     cbdba
;     cbdc0
;     cbdd3
;     cbddd
;     cbe21
;     cbe3c
;     cbe47
;     cbe52
;     cbe7a
;     cbe7b
;     cbe89
;     cbe8d
;     cbec1
;     cbee0
;     cbee8
;     cbeee
;     cbf33
;     cbf46
;     cbf8a
;     cbf8e
;     cbfa3
;     cbfb2
;     l0000
;     l0001
;     l0002
;     l0003
;     l0012
;     l0013
;     l0014
;     l0015
;     l0053
;     l0054
;     l0055
;     l0056
;     l00a0
;     l00a1
;     l00a2
;     l00a3
;     l00a4
;     l00a5
;     l00a6
;     l00a7
;     l00a8
;     l00a9
;     l00aa
;     l00ab
;     l00ac
;     l00ad
;     l00ae
;     l00af
;     l00b0
;     l00b1
;     l00b2
;     l00b3
;     l00b4
;     l00b5
;     l00b6
;     l00b7
;     l00b8
;     l00b9
;     l00ba
;     l00bb
;     l00bc
;     l00bd
;     l00be
;     l00bf
;     l00c0
;     l00c1
;     l00c2
;     l00c3
;     l00c4
;     l00c5
;     l00c6
;     l00c7
;     l00c8
;     l00c9
;     l00ca
;     l00cc
;     l00cd
;     l00ce
;     l00cf
;     l00ef
;     l00f0
;     l00f1
;     l00f3
;     l00f7
;     l00fd
;     l00ff
;     l0100
;     l0101
;     l0102
;     l0103
;     l0104
;     l0105
;     l0107
;     l0109
;     l010b
;     l010c
;     l010d
;     l010e
;     l0128
;     l028d
;     l0500
;     l0600
;     l0700
;     l0cff
;     l0d0f
;     l0d12
;     l0d1f
;     l0d26
;     l0d2a
;     l0d30
;     l0d3d
;     l0d50
;     l0df0
;     l0e00
;     l0e07
;     l0e08
;     l0e0e
;     l0e0f
;     l0e10
;     l0ef8
;     l0f00
;     l0f04
;     l0f05
;     l0f06
;     l0f07
;     l0f08
;     l0f09
;     l0f0a
;     l0f0b
;     l0f0c
;     l0f0d
;     l0f0e
;     l0f0f
;     l0f10
;     l1000
;     l1001
;     l1002
;     l1003
;     l1004
;     l1005
;     l1006
;     l1007
;     l100e
;     l1045
;     l1047
;     l104d
;     l104e
;     l1050
;     l1058
;     l105f
;     l1060
;     l1061
;     l1062
;     l1063
;     l1064
;     l1065
;     l1067
;     l1069
;     l1072
;     l1074
;     l1075
;     l1076
;     l1077
;     l1078
;     l1079
;     l107a
;     l107d
;     l107e
;     l107f
;     l1081
;     l1082
;     l1083
;     l1086
;     l1087
;     l1088
;     l1089
;     l108a
;     l108b
;     l108c
;     l108f
;     l1090
;     l1091
;     l1092
;     l1093
;     l1094
;     l1095
;     l1096
;     l1097
;     l1098
;     l1099
;     l109a
;     l109b
;     l109d
;     l109e
;     l109f
;     l10c0
;     l10c1
;     l10c2
;     l10c3
;     l10c4
;     l10c5
;     l10c6
;     l10c7
;     l10c9
;     l10ca
;     l10cb
;     l10cc
;     l10cd
;     l10ce
;     l10cf
;     l10d0
;     l10d1
;     l10d2
;     l10d3
;     l10d6
;     l10d7
;     l10d8
;     l10d9
;     l10da
;     l10db
;     l10dc
;     l10dd
;     l10de
;     l10e2
;     l10e3
;     l10e4
;     l1100
;     l1109
;     l110b
;     l110c
;     l110d
;     l110e
;     l110f
;     l1110
;     l1111
;     l1112
;     l1113
;     l1114
;     l1115
;     l1116
;     l1117
;     l1119
;     l111a
;     l111b
;     l111c
;     l111d
;     l8001
;     l8002
;     l8004
;     l911d
;     l9121
;     l9139
;     l913f
;     l9145
;     l9146
;     l9191
;     l91a0
;     l9aec
;     l9b0f
;     l9b18
;     l9b21
;     l9b29
;     l9b31
;     l9b3a
;     l9b43
;     la1d3
;     lacf3
;     laf73
;     laf75
;     laf76
;     laf77
;     laf78
;     lb075
;     lb175
;     lb283
;     lb57f
;     lb6c6
;     lb6ce
;     lb726
;     lb774
;     lb872
;     lb87e
;     lb924
;     lb979
;     lb97a
;     lb980
;     lbb3a
;     lbb3e
;     lbb42
;     lbf4f
;     lbfff
;     lfe80
;     lfe84
;     lfe85
;     lfe86
;     lfe87
;     loop_c0029
;     loop_c003b
;     loop_c0446
;     loop_c0466
;     loop_c0471
;     loop_c04a6
;     loop_c04e1
;     loop_c0564
;     loop_c0577
;     loop_c0586
;     loop_c05ab
;     loop_c05c7
;     loop_c05d3
;     loop_c05e6
;     loop_c0604
;     loop_c061d
;     loop_c062b
;     loop_c064c
;     loop_c0657
;     loop_c065a
;     loop_c8064
;     loop_c8086
;     loop_c813a
;     loop_c8161
;     loop_c816b
;     loop_c818c
;     loop_c820c
;     loop_c820d
;     loop_c821c
;     loop_c826f
;     loop_c82c7
;     loop_c82d1
;     loop_c830d
;     loop_c8326
;     loop_c8370
;     loop_c8390
;     loop_c8397
;     loop_c83f0
;     loop_c83fa
;     loop_c8406
;     loop_c8425
;     loop_c8463
;     loop_c8493
;     loop_c84e7
;     loop_c8527
;     loop_c8552
;     loop_c8564
;     loop_c857b
;     loop_c85b5
;     loop_c8717
;     loop_c8725
;     loop_c87a0
;     loop_c87be
;     loop_c88bc
;     loop_c895f
;     loop_c8990
;     loop_c89c4
;     loop_c89ca
;     loop_c8a17
;     loop_c8ac8
;     loop_c8ad8
;     loop_c8af0
;     loop_c8afb
;     loop_c8b80
;     loop_c8bea
;     loop_c8c58
;     loop_c8c71
;     loop_c8d14
;     loop_c8d17
;     loop_c8dac
;     loop_c8dba
;     loop_c8de9
;     loop_c8df0
;     loop_c8e14
;     loop_c8e85
;     loop_c8f17
;     loop_c8f6c
;     loop_c8f96
;     loop_c8fac
;     loop_c9047
;     loop_c9108
;     loop_c9113
;     loop_c91ba
;     loop_c91e7
;     loop_c92ef
;     loop_c9355
;     loop_c9357
;     loop_c936f
;     loop_c9382
;     loop_c93bd
;     loop_c93da
;     loop_c953a
;     loop_c957d
;     loop_c9593
;     loop_c95b6
;     loop_c95d9
;     loop_c95ec
;     loop_c9618
;     loop_c96c2
;     loop_c96f2
;     loop_c979d
;     loop_c97c8
;     loop_c9803
;     loop_c9837
;     loop_c9851
;     loop_c985e
;     loop_c9881
;     loop_c98a0
;     loop_c98c1
;     loop_c98e4
;     loop_c9942
;     loop_c994e
;     loop_c9964
;     loop_c99a8
;     loop_c9b50
;     loop_c9b5e
;     loop_c9b63
;     loop_c9bcf
;     loop_c9be4
;     loop_c9c38
;     loop_c9c5d
;     loop_c9c90
;     loop_c9ca8
;     loop_c9d03
;     loop_c9d43
;     loop_c9e07
;     loop_c9e74
;     loop_c9e8c
;     loop_c9f6e
;     loop_ca061
;     loop_ca11d
;     loop_ca132
;     loop_ca143
;     loop_ca16e
;     loop_ca1aa
;     loop_ca1cc
;     loop_ca487
;     loop_ca521
;     loop_ca76f
;     loop_ca7a7
;     loop_ca7c6
;     loop_ca7e0
;     loop_ca7e1
;     loop_ca941
;     loop_ca947
;     loop_ca953
;     loop_ca9ab
;     loop_ca9e7
;     loop_caa01
;     loop_caab8
;     loop_cab6b
;     loop_cab80
;     loop_cabad
;     loop_cabf4
;     loop_cac46
;     loop_caf13
;     loop_caf2d
;     loop_cb1e3
;     loop_cb1ed
;     loop_cb249
;     loop_cb275
;     loop_cb2b4
;     loop_cb2bd
;     loop_cb2d1
;     loop_cb44d
;     loop_cb4a8
;     loop_cb55e
;     loop_cb578
;     loop_cb5c6
;     loop_cb5ed
;     loop_cb6b3
;     loop_cb75a
;     loop_cb7be
;     loop_cb7d7
;     loop_cb7dd
;     loop_cb910
;     loop_cb999
;     loop_cb9bd
;     loop_cb9cc
;     loop_cb9d1
;     loop_cb9f9
;     loop_cba1a
;     loop_cba94
;     loop_cbab8
;     loop_cbaea
;     loop_cbbe4
;     loop_cbbfe
;     loop_cbc70
;     loop_cbcd3
;     loop_cbd08
;     loop_cbd2b
;     loop_cbd6c
;     loop_cbd99
;     loop_cbe0e
;     loop_cbe31
;     loop_cbeab
;     loop_cbf1c
;     loop_cbf78
;     sub_c0050
;     sub_c0414
;     sub_c0421
;     sub_c04c7
;     sub_c04ce
;     sub_c0520
;     sub_c052d
;     sub_c0537
;     sub_c0542
;     sub_c055e
;     sub_c0582
;     sub_c0596
;     sub_c05a9
;     sub_c05d1
;     sub_c05f2
;     sub_c05ff
;     sub_c0607
;     sub_c0627
;     sub_c8020
;     sub_c809a
;     sub_c809d
;     sub_c80b8
;     sub_c80bb
;     sub_c80c3
;     sub_c80c8
;     sub_c80d3
;     sub_c80db
;     sub_c80e3
;     sub_c80e6
;     sub_c80ed
;     sub_c80f3
;     sub_c80f6
;     sub_c8149
;     sub_c8174
;     sub_c81ae
;     sub_c81b0
;     sub_c81b7
;     sub_c81be
;     sub_c81bf
;     sub_c81c0
;     sub_c81c4
;     sub_c81c5
;     sub_c81ca
;     sub_c821d
;     sub_c8222
;     sub_c8238
;     sub_c8254
;     sub_c8266
;     sub_c826d
;     sub_c8280
;     sub_c8284
;     sub_c82b2
;     sub_c82bb
;     sub_c82e8
;     sub_c82fe
;     sub_c830a
;     sub_c8327
;     sub_c8335
;     sub_c833a
;     sub_c836e
;     sub_c8380
;     sub_c8386
;     sub_c83bf
;     sub_c83d1
;     sub_c83d4
;     sub_c83e3
;     sub_c83ee
;     sub_c840c
;     sub_c841b
;     sub_c842c
;     sub_c8439
;     sub_c8456
;     sub_c8555
;     sub_c85e3
;     sub_c8602
;     sub_c8745
;     sub_c8750
;     sub_c8782
;     sub_c8794
;     sub_c87da
;     sub_c87db
;     sub_c87e3
;     sub_c87ee
;     sub_c8826
;     sub_c8855
;     sub_c8862
;     sub_c8932
;     sub_c893f
;     sub_c8943
;     sub_c8951
;     sub_c8979
;     sub_c89b7
;     sub_c89da
;     sub_c89e6
;     sub_c8a77
;     sub_c8ab3
;     sub_c8b25
;     sub_c8b47
;     sub_c8b4d
;     sub_c8b64
;     sub_c8b7b
;     sub_c8b86
;     sub_c8bac
;     sub_c8bf6
;     sub_c8bf9
;     sub_c8c56
;     sub_c8c65
;     sub_c8d1a
;     sub_c8dc6
;     sub_c8eec
;     sub_c8efa
;     sub_c8eff
;     sub_c8f33
;     sub_c8f37
;     sub_c8f3f
;     sub_c8f4f
;     sub_c8f5e
;     sub_c8f6b
;     sub_c8f75
;     sub_c8f7a
;     sub_c8f82
;     sub_c8f94
;     sub_c9279
;     sub_c928a
;     sub_c929d
;     sub_c93b4
;     sub_c93c5
;     sub_c93d3
;     sub_c93d8
;     sub_c93f1
;     sub_c93f5
;     sub_c93f9
;     sub_c93fd
;     sub_c9432
;     sub_c9445
;     sub_c9516
;     sub_c9526
;     sub_c952e
;     sub_c9536
;     sub_c965d
;     sub_c9785
;     sub_c97b6
;     sub_c97c9
;     sub_c97e8
;     sub_c9832
;     sub_c992c
;     sub_c9940
;     sub_c995a
;     sub_c9965
;     sub_c9988
;     sub_c99ac
;     sub_c99f3
;     sub_c9a0f
;     sub_c9a32
;     sub_c9a4b
;     sub_c9a50
;     sub_c9a60
;     sub_c9a63
;     sub_c9a6e
;     sub_c9a78
;     sub_c9a82
;     sub_c9a8d
;     sub_c9aa3
;     sub_c9ab8
;     sub_c9ac8
;     sub_c9ad3
;     sub_c9ad8
;     sub_c9b51
;     sub_c9b59
;     sub_c9b61
;     sub_c9b79
;     sub_c9bca
;     sub_c9bcd
;     sub_c9be5
;     sub_c9bf2
;     sub_c9c0c
;     sub_c9d19
;     sub_c9d1e
;     sub_c9d75
;     sub_c9d9b
;     sub_c9df4
;     sub_c9e1e
;     sub_c9e30
;     sub_c9e54
;     sub_c9e75
;     sub_c9e94
;     sub_c9ef4
;     sub_c9f0f
;     sub_c9f14
;     sub_c9f16
;     sub_c9f1e
;     sub_c9f26
;     sub_c9f7c
;     sub_c9f82
;     sub_ca0b8
;     sub_ca0de
;     sub_ca0f6
;     sub_ca106
;     sub_ca137
;     sub_ca14a
;     sub_ca168
;     sub_ca190
;     sub_ca1b4
;     sub_ca1c6
;     sub_ca244
;     sub_ca315
;     sub_ca324
;     sub_ca379
;     sub_ca384
;     sub_ca3e4
;     sub_ca3ec
;     sub_ca417
;     sub_ca463
;     sub_ca4e1
;     sub_ca51f
;     sub_ca530
;     sub_ca5b2
;     sub_ca5bb
;     sub_ca5bf
;     sub_ca663
;     sub_ca73d
;     sub_ca76c
;     sub_ca779
;     sub_ca788
;     sub_ca7c4
;     sub_ca7c5
;     sub_ca7ce
;     sub_ca7f3
;     sub_ca7f6
;     sub_ca8be
;     sub_ca8e2
;     sub_ca90d
;     sub_ca9bf
;     sub_ca9c2
;     sub_ca9ca
;     sub_ca9d0
;     sub_caa12
;     sub_caa53
;     sub_caa9a
;     sub_caac2
;     sub_caacf
;     sub_caadd
;     sub_caaea
;     sub_caaf1
;     sub_caafd
;     sub_cab04
;     sub_cab46
;     sub_caba9
;     sub_cabc5
;     sub_cac0c
;     sub_cac18
;     sub_cac47
;     sub_cac4e
;     sub_cac62
;     sub_cac6a
;     sub_cac72
;     sub_cad5d
;     sub_caf8d
;     sub_caf9a
;     sub_cb040
;     sub_cb047
;     sub_cb234
;     sub_cb2c8
;     sub_cb580
;     sub_cb58b
;     sub_cb598
;     sub_cb5ce
;     sub_cb5ee
;     sub_cb5f2
;     sub_cb607
;     sub_cb616
;     sub_cb61e
;     sub_cb65f
;     sub_cb68f
;     sub_cb6b1
;     sub_cb6c5
;     sub_cb6cd
;     sub_cb6e6
;     sub_cb6fe
;     sub_cb745
;     sub_cb771
;     sub_cb7b6
;     sub_cb83f
;     sub_cb841
;     sub_cb84e
;     sub_cb850
;     sub_cb85d
;     sub_cb86f
;     sub_cb882
;     sub_cb986
;     sub_cb9f5
;     sub_cba67
;     sub_cbab9
;     sub_cbac2
;     sub_cbac4
;     sub_cbad2
;     sub_cbb00
;     sub_cbb46
;     sub_cbb4a
;     sub_cbbd3
;     sub_cbbd7
;     sub_cbc37
;     sub_cbc68
;     sub_cbc81
;     sub_cbe83
;     sub_cbe91
;     sub_cbe9d
;     sub_cbec2
;     sub_cbf7c
;     sub_cbf82
;     sub_cbf84
!if (<(c956d-1)) != $6c {
    !error "Assertion failed: <(c956d-1) == $6c"
}
!if (<(l0128)) != $28 {
    !error "Assertion failed: <(l0128) == $28"
}
!if (<(l1000)) != $00 {
    !error "Assertion failed: <(l1000) == $00"
}
!if (<(sub_c8238-1)) != $37 {
    !error "Assertion failed: <(sub_c8238-1) == $37"
}
!if (<(sub_c8254-1)) != $53 {
    !error "Assertion failed: <(sub_c8254-1) == $53"
}
!if (<(sub_c8750-1)) != $4f {
    !error "Assertion failed: <(sub_c8750-1) == $4f"
}
!if (<(sub_c8782-1)) != $81 {
    !error "Assertion failed: <(sub_c8782-1) == $81"
}
!if (<(sub_c8794-1)) != $93 {
    !error "Assertion failed: <(sub_c8794-1) == $93"
}
!if (<(sub_c87ee-1)) != $ed {
    !error "Assertion failed: <(sub_c87ee-1) == $ed"
}
!if (<(sub_c893f-1)) != $3e {
    !error "Assertion failed: <(sub_c893f-1) == $3e"
}
!if (<(sub_c8943-1)) != $42 {
    !error "Assertion failed: <(sub_c8943-1) == $42"
}
!if (<(sub_c89b7-1)) != $b6 {
    !error "Assertion failed: <(sub_c89b7-1) == $b6"
}
!if (<(sub_c89e6-1)) != $e5 {
    !error "Assertion failed: <(sub_c89e6-1) == $e5"
}
!if (<(sub_c8b47-1)) != $46 {
    !error "Assertion failed: <(sub_c8b47-1) == $46"
}
!if (<(sub_c8bac-1)) != $ab {
    !error "Assertion failed: <(sub_c8bac-1) == $ab"
}
!if (<(sub_c9b59-1)) != $58 {
    !error "Assertion failed: <(sub_c9b59-1) == $58"
}
!if (<(sub_ca106-1)) != $05 {
    !error "Assertion failed: <(sub_ca106-1) == $05"
}
!if (<(sub_ca137-1)) != $36 {
    !error "Assertion failed: <(sub_ca137-1) == $36"
}
!if (<(sub_ca244-1)) != $43 {
    !error "Assertion failed: <(sub_ca244-1) == $43"
}
!if (<(sub_ca417-1)) != $16 {
    !error "Assertion failed: <(sub_ca417-1) == $16"
}
!if (<(sub_ca463-1)) != $62 {
    !error "Assertion failed: <(sub_ca463-1) == $62"
}
!if (<(sub_ca5bb-1)) != $ba {
    !error "Assertion failed: <(sub_ca5bb-1) == $ba"
}
!if (<(sub_ca5bf-1)) != $be {
    !error "Assertion failed: <(sub_ca5bf-1) == $be"
}
!if (<(sub_ca7f3-1)) != $f2 {
    !error "Assertion failed: <(sub_ca7f3-1) == $f2"
}
!if (<(sub_ca7f6-1)) != $f5 {
    !error "Assertion failed: <(sub_ca7f6-1) == $f5"
}
!if (<(sub_ca9d0-1)) != $cf {
    !error "Assertion failed: <(sub_ca9d0-1) == $cf"
}
!if (<(sub_caafd-1)) != $fc {
    !error "Assertion failed: <(sub_caafd-1) == $fc"
}
!if (<(sub_cab04-1)) != $03 {
    !error "Assertion failed: <(sub_cab04-1) == $03"
}
!if (<(sub_cab46-1)) != $45 {
    !error "Assertion failed: <(sub_cab46-1) == $45"
}
!if (<(sub_cabc5-1)) != $c4 {
    !error "Assertion failed: <(sub_cabc5-1) == $c4"
}
!if (<(sub_cbb46-1)) != $45 {
    !error "Assertion failed: <(sub_cbb46-1) == $45"
}
!if (<(sub_cbb4a-1)) != $49 {
    !error "Assertion failed: <(sub_cbb4a-1) == $49"
}
!if (<(sub_cbbd3-1)) != $d2 {
    !error "Assertion failed: <(sub_cbbd3-1) == $d2"
}
!if (<(sub_cbbd7-1)) != $d6 {
    !error "Assertion failed: <(sub_cbbd7-1) == $d6"
}
!if (<(sub_cbc37-1)) != $36 {
    !error "Assertion failed: <(sub_cbc37-1) == $36"
}
!if (<(sub_cbc81-1)) != $80 {
    !error "Assertion failed: <(sub_cbc81-1) == $80"
}
!if (<jump_address_low) != $51 {
    !error "Assertion failed: <jump_address_low == $51"
}
!if (<tube_brkv_handler) != $16 {
    !error "Assertion failed: <tube_brkv_handler == $16"
}
!if (<tube_evntv_handler) != $ad {
    !error "Assertion failed: <tube_evntv_handler == $ad"
}
!if (>(c956d-1)) != $95 {
    !error "Assertion failed: >(c956d-1) == $95"
}
!if (>(l0128)) != $01 {
    !error "Assertion failed: >(l0128) == $01"
}
!if (>(l1000)) != $10 {
    !error "Assertion failed: >(l1000) == $10"
}
!if (>(sub_c8238-1)) != $82 {
    !error "Assertion failed: >(sub_c8238-1) == $82"
}
!if (>(sub_c8254-1)) != $82 {
    !error "Assertion failed: >(sub_c8254-1) == $82"
}
!if (>(sub_c8750-1)) != $87 {
    !error "Assertion failed: >(sub_c8750-1) == $87"
}
!if (>(sub_c8782-1)) != $87 {
    !error "Assertion failed: >(sub_c8782-1) == $87"
}
!if (>(sub_c8794-1)) != $87 {
    !error "Assertion failed: >(sub_c8794-1) == $87"
}
!if (>(sub_c87ee-1)) != $87 {
    !error "Assertion failed: >(sub_c87ee-1) == $87"
}
!if (>(sub_c893f-1)) != $89 {
    !error "Assertion failed: >(sub_c893f-1) == $89"
}
!if (>(sub_c8943-1)) != $89 {
    !error "Assertion failed: >(sub_c8943-1) == $89"
}
!if (>(sub_c89b7-1)) != $89 {
    !error "Assertion failed: >(sub_c89b7-1) == $89"
}
!if (>(sub_c89e6-1)) != $89 {
    !error "Assertion failed: >(sub_c89e6-1) == $89"
}
!if (>(sub_c8b47-1)) != $8b {
    !error "Assertion failed: >(sub_c8b47-1) == $8b"
}
!if (>(sub_c8bac-1)) != $8b {
    !error "Assertion failed: >(sub_c8bac-1) == $8b"
}
!if (>(sub_c9b59-1)) != $9b {
    !error "Assertion failed: >(sub_c9b59-1) == $9b"
}
!if (>(sub_ca106-1)) != $a1 {
    !error "Assertion failed: >(sub_ca106-1) == $a1"
}
!if (>(sub_ca137-1)) != $a1 {
    !error "Assertion failed: >(sub_ca137-1) == $a1"
}
!if (>(sub_ca244-1)) != $a2 {
    !error "Assertion failed: >(sub_ca244-1) == $a2"
}
!if (>(sub_ca417-1)) != $a4 {
    !error "Assertion failed: >(sub_ca417-1) == $a4"
}
!if (>(sub_ca463-1)) != $a4 {
    !error "Assertion failed: >(sub_ca463-1) == $a4"
}
!if (>(sub_ca5bb-1)) != $a5 {
    !error "Assertion failed: >(sub_ca5bb-1) == $a5"
}
!if (>(sub_ca5bf-1)) != $a5 {
    !error "Assertion failed: >(sub_ca5bf-1) == $a5"
}
!if (>(sub_ca7f3-1)) != $a7 {
    !error "Assertion failed: >(sub_ca7f3-1) == $a7"
}
!if (>(sub_ca7f6-1)) != $a7 {
    !error "Assertion failed: >(sub_ca7f6-1) == $a7"
}
!if (>(sub_ca9d0-1)) != $a9 {
    !error "Assertion failed: >(sub_ca9d0-1) == $a9"
}
!if (>(sub_caafd-1)) != $aa {
    !error "Assertion failed: >(sub_caafd-1) == $aa"
}
!if (>(sub_cab04-1)) != $ab {
    !error "Assertion failed: >(sub_cab04-1) == $ab"
}
!if (>(sub_cab46-1)) != $ab {
    !error "Assertion failed: >(sub_cab46-1) == $ab"
}
!if (>(sub_cabc5-1)) != $ab {
    !error "Assertion failed: >(sub_cabc5-1) == $ab"
}
!if (>(sub_cbb46-1)) != $bb {
    !error "Assertion failed: >(sub_cbb46-1) == $bb"
}
!if (>(sub_cbb4a-1)) != $bb {
    !error "Assertion failed: >(sub_cbb4a-1) == $bb"
}
!if (>(sub_cbbd3-1)) != $bb {
    !error "Assertion failed: >(sub_cbbd3-1) == $bb"
}
!if (>(sub_cbbd7-1)) != $bb {
    !error "Assertion failed: >(sub_cbbd7-1) == $bb"
}
!if (>(sub_cbc37-1)) != $bc {
    !error "Assertion failed: >(sub_cbc37-1) == $bc"
}
!if (>(sub_cbc81-1)) != $bc {
    !error "Assertion failed: >(sub_cbc81-1) == $bc"
}
!if (>tube_brkv_handler) != $00 {
    !error "Assertion failed: >tube_brkv_handler == $00"
}
!if (>tube_evntv_handler) != $06 {
    !error "Assertion failed: >tube_evntv_handler == $06"
}
!if (copyright - rom_header) != $11 {
    !error "Assertion failed: copyright - rom_header == $11"
}
!if (nmi3_handler_rom_end-nmi3_handler_rom_start) != $0e {
    !error "Assertion failed: nmi3_handler_rom_end-nmi3_handler_rom_start == $0e"
}
!if (nmi_XXX1-(nmi_beq+2)) != $48 {
    !error "Assertion failed: nmi_XXX1-(nmi_beq+2) == $48"
}
!if (nmi_XXX10-(nmi_bcs+2)) != $32 {
    !error "Assertion failed: nmi_XXX10-(nmi_bcs+2) == $32"
}
!if (nmi_XXX11-(nmi_bcs+2)) != $3b {
    !error "Assertion failed: nmi_XXX11-(nmi_bcs+2) == $3b"
}
!if (nmi_XXX12-(nmi_bcs+2)) != $3f {
    !error "Assertion failed: nmi_XXX12-(nmi_bcs+2) == $3f"
}
!if (nmi_XXX13-(nmi_bcs+2)) != $49 {
    !error "Assertion failed: nmi_XXX13-(nmi_bcs+2) == $49"
}
!if (nmi_XXX14-(nmi_bcs+2)) != $4d {
    !error "Assertion failed: nmi_XXX14-(nmi_bcs+2) == $4d"
}
!if (nmi_XXX15-(nmi_bcs+2)) != $55 {
    !error "Assertion failed: nmi_XXX15-(nmi_bcs+2) == $55"
}
!if (nmi_XXX16-(nmi_bcs+2)) != $5d {
    !error "Assertion failed: nmi_XXX16-(nmi_bcs+2) == $5d"
}
!if (nmi_XXX17-(nmi_bcs+2)) != $06 {
    !error "Assertion failed: nmi_XXX17-(nmi_bcs+2) == $06"
}
!if (nmi_XXX18-(nmi_bcs+2)) != $11 {
    !error "Assertion failed: nmi_XXX18-(nmi_bcs+2) == $11"
}
!if (nmi_XXX19-(nmi_bcs+2)) != $7b {
    !error "Assertion failed: nmi_XXX19-(nmi_bcs+2) == $7b"
}
!if (nmi_XXX2-(nmi_beq+2)) != $2f {
    !error "Assertion failed: nmi_XXX2-(nmi_beq+2) == $2f"
}
!if (nmi_XXX2-1) != $0d38 {
    !error "Assertion failed: nmi_XXX2-1 == $0d38"
}
!if (nmi_XXX20-(nmi_bcs+2)) != $7f {
    !error "Assertion failed: nmi_XXX20-(nmi_bcs+2) == $7f"
}
!if (nmi_XXX21-(nmi_bcs+2)) != $26 {
    !error "Assertion failed: nmi_XXX21-(nmi_bcs+2) == $26"
}
!if (nmi_XXX22-(nmi_bcs+2)) != $77 {
    !error "Assertion failed: nmi_XXX22-(nmi_bcs+2) == $77"
}
!if (nmi_XXX23-(nmi_bcs+2)) != $24 {
    !error "Assertion failed: nmi_XXX23-(nmi_bcs+2) == $24"
}
!if (nmi_XXX5-(nmi_cmp_imm_or_bcs+2)) != $06 {
    !error "Assertion failed: nmi_XXX5-(nmi_cmp_imm_or_bcs+2) == $06"
}
!if (nmi_XXX7-(nmi_XXX6+2)) != $06 {
    !error "Assertion failed: nmi_XXX7-(nmi_XXX6+2) == $06"
}
!if (nmi_XXX8-(nmi_beq+2)) != $4d {
    !error "Assertion failed: nmi_XXX8-(nmi_beq+2) == $4d"
}
!if (nmi_handler2_rom_end-nmi_handler2_rom_start) != $94 {
    !error "Assertion failed: nmi_handler2_rom_end-nmi_handler2_rom_start == $94"
}
!if (nmi_handler_rom_end-nmi_handler_rom_start-1) != $5d {
    !error "Assertion failed: nmi_handler_rom_end-nmi_handler_rom_start-1 == $5d"
}
!if (opcode_bcs) != $b0 {
    !error "Assertion failed: opcode_bcs == $b0"
}
!if (opcode_rti) != $40 {
    !error "Assertion failed: opcode_rti == $40"
}
!if (osbyte_close_spool_exec) != $77 {
    !error "Assertion failed: osbyte_close_spool_exec == $77"
}
!if (osbyte_explode_chars) != $14 {
    !error "Assertion failed: osbyte_explode_chars == $14"
}
!if (osbyte_issue_service_request) != $8f {
    !error "Assertion failed: osbyte_issue_service_request == $8f"
}
!if (osbyte_read_himem) != $84 {
    !error "Assertion failed: osbyte_read_himem == $84"
}
!if (osbyte_read_oshwm) != $83 {
    !error "Assertion failed: osbyte_read_oshwm == $83"
}
!if (osbyte_read_rom_info_table_low) != $aa {
    !error "Assertion failed: osbyte_read_rom_info_table_low == $aa"
}
!if (osbyte_read_tube_presence) != $ea {
    !error "Assertion failed: osbyte_read_tube_presence == $ea"
}
!if (osbyte_read_write_spool_file_handle) != $c7 {
    !error "Assertion failed: osbyte_read_write_spool_file_handle == $c7"
}
!if (osbyte_read_write_startup_options) != $ff {
    !error "Assertion failed: osbyte_read_write_startup_options == $ff"
}
!if (osbyte_rw_exec_handle) != $c6 {
    !error "Assertion failed: osbyte_rw_exec_handle == $c6"
}
!if (osbyte_scan_keyboard_from_16) != $7a {
    !error "Assertion failed: osbyte_scan_keyboard_from_16 == $7a"
}
!if (osbyte_write_keys_pressed) != $78 {
    !error "Assertion failed: osbyte_write_keys_pressed == $78"
}
!if (osbyte_write_shadow_memory_use) != $72 {
    !error "Assertion failed: osbyte_write_shadow_memory_use == $72"
}
!if (osfile_load) != $ff {
    !error "Assertion failed: osfile_load == $ff"
}
!if (osfile_read_catalogue_info) != $05 {
    !error "Assertion failed: osfile_read_catalogue_info == $05"
}
!if (osfile_save) != $00 {
    !error "Assertion failed: osfile_save == $00"
}
!if (osfind_close) != $00 {
    !error "Assertion failed: osfind_close == $00"
}
!if (osfind_open_input) != $40 {
    !error "Assertion failed: osfind_open_input == $40"
}
!if (osfind_open_output) != $80 {
    !error "Assertion failed: osfind_open_output == $80"
}
!if (service_absolute_workspace_claimed) != $0a {
    !error "Assertion failed: service_absolute_workspace_claimed == $0a"
}
!if (service_boot) != $03 {
    !error "Assertion failed: service_boot == $03"
}
!if (service_check_swr_presence) != $2b {
    !error "Assertion failed: service_check_swr_presence == $2b"
}
!if (service_claim_absolute_workspace) != $01 {
    !error "Assertion failed: service_claim_absolute_workspace == $01"
}
!if (service_claim_private_workspace) != $02 {
    !error "Assertion failed: service_claim_private_workspace == $02"
}
!if (service_help) != $09 {
    !error "Assertion failed: service_help == $09"
}
!if (service_select_filing_system) != $12 {
    !error "Assertion failed: service_select_filing_system == $12"
}
!if (service_tube_post_init) != $fe {
    !error "Assertion failed: service_tube_post_init == $fe"
}
!if (service_unrecognised_command) != $04 {
    !error "Assertion failed: service_unrecognised_command == $04"
}
!if (service_unrecognised_osword) != $08 {
    !error "Assertion failed: service_unrecognised_osword == $08"
}
!if (sub_c0520) != $0520 {
    !error "Assertion failed: sub_c0520 == $0520"
}
!if (sub_c052d) != $052d {
    !error "Assertion failed: sub_c052d == $052d"
}
!if (sub_c0537) != $0537 {
    !error "Assertion failed: sub_c0537 == $0537"
}
!if (sub_c0542) != $0542 {
    !error "Assertion failed: sub_c0542 == $0542"
}
!if (sub_c055e) != $055e {
    !error "Assertion failed: sub_c055e == $055e"
}
!if (sub_c0596) != $0596 {
    !error "Assertion failed: sub_c0596 == $0596"
}
!if (sub_c05a9) != $05a9 {
    !error "Assertion failed: sub_c05a9 == $05a9"
}
!if (sub_c05d1) != $05d1 {
    !error "Assertion failed: sub_c05d1 == $05d1"
}
!if (sub_c05f2) != $05f2 {
    !error "Assertion failed: sub_c05f2 == $05f2"
}
!if (sub_c0607) != $0607 {
    !error "Assertion failed: sub_c0607 == $0607"
}
!if (sub_c0627) != $0627 {
    !error "Assertion failed: sub_c0627 == $0627"
}
!if (sub_c9785) != $9785 {
    !error "Assertion failed: sub_c9785 == $9785"
}
!if (sub_c97b6) != $97b6 {
    !error "Assertion failed: sub_c97b6 == $97b6"
}
!if (sub_c97c9) != $97c9 {
    !error "Assertion failed: sub_c97c9 == $97c9"
}
!if (sub_c9c0c) != $9c0c {
    !error "Assertion failed: sub_c9c0c == $9c0c"
}
!if (sub_c9d9b) != $9d9b {
    !error "Assertion failed: sub_c9d9b == $9d9b"
}
!if (sub_c9e94) != $9e94 {
    !error "Assertion failed: sub_c9e94 == $9e94"
}
!if (sub_c9f82) != $9f82 {
    !error "Assertion failed: sub_c9f82 == $9f82"
}
!if (tube_brkv_handler_fwd) != $16 {
    !error "Assertion failed: tube_brkv_handler_fwd == $16"
}
!if (tube_host_osword_0) != $0668 {
    !error "Assertion failed: tube_host_osword_0 == $0668"
}
