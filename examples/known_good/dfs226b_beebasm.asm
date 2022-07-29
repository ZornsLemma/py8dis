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
osfile_load                           = 255
osfile_read_catalogue_info            = 5
osfile_save                           = 0
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
l0000                   = &0000
l0001                   = &0001
l0002                   = &0002
l0003                   = &0003
l0012                   = &0012
l0013                   = &0013
l0014                   = &0014
l0015                   = &0015
l0057                   = &0057
l00a0                   = &00a0
l00a1                   = &00a1
l00a2                   = &00a2
l00a3                   = &00a3
l00a4                   = &00a4
l00a5                   = &00a5
l00a6                   = &00a6
l00a7                   = &00a7
l00a8                   = &00a8
l00a9                   = &00a9
l00aa                   = &00aa
l00ab                   = &00ab
l00ac                   = &00ac
l00ad                   = &00ad
l00ae                   = &00ae
l00af                   = &00af
l00b0                   = &00b0
l00b1                   = &00b1
l00b2                   = &00b2
l00b3                   = &00b3
l00b4                   = &00b4
l00b5                   = &00b5
l00b6                   = &00b6
l00b7                   = &00b7
l00b8                   = &00b8
l00b9                   = &00b9
l00ba                   = &00ba
l00bb                   = &00bb
l00bc                   = &00bc
l00bd                   = &00bd
l00be                   = &00be
l00bf                   = &00bf
l00c0                   = &00c0
l00c1                   = &00c1
l00c2                   = &00c2
l00c3                   = &00c3
l00c4                   = &00c4
l00c5                   = &00c5
l00c6                   = &00c6
l00c7                   = &00c7
l00c8                   = &00c8
l00c9                   = &00c9
l00ca                   = &00ca
l00cc                   = &00cc
l00cd                   = &00cd
l00ce                   = &00ce
l00cf                   = &00cf
l00ef                   = &00ef
l00f0                   = &00f0
l00f1                   = &00f1
os_text_ptr             = &00f2
l00f3                   = &00f3
romsel_copy             = &00f4
osrdsc_ptr              = &00f6
l00f7                   = &00f7
l00fd                   = &00fd
l00ff                   = &00ff
l0100                   = &0100
l0101                   = &0101
l0102                   = &0102
l0103                   = &0103
l0104                   = &0104
l0105                   = &0105
l0107                   = &0107
l0109                   = &0109
l010b                   = &010b
l010c                   = &010c
l010d                   = &010d
l010e                   = &010e
l0128                   = &0128
brkv                    = &0202
bytev                   = &020a
filev                   = &0212
fscv                    = &021e
evntv                   = &0220
l028d                   = &028d
l04fc                   = &04fc
l06ce                   = &06ce
l0700                   = &0700
l0cff                   = &0cff
l0d00                   = &0d00
l0d47                   = &0d47
sub_c0d5e               = &0d5e
l0d94                   = &0d94
l0df0                   = &0df0
l0e00                   = &0e00
l0e07                   = &0e07
l0e08                   = &0e08
l0e0e                   = &0e0e
l0e0f                   = &0e0f
l0e10                   = &0e10
l0ef8                   = &0ef8
l0f00                   = &0f00
l0f04                   = &0f04
l0f05                   = &0f05
l0f06                   = &0f06
l0f07                   = &0f07
l0f08                   = &0f08
l0f09                   = &0f09
l0f0a                   = &0f0a
l0f0b                   = &0f0b
l0f0c                   = &0f0c
l0f0d                   = &0f0d
l0f0e                   = &0f0e
l0f0f                   = &0f0f
l0f10                   = &0f10
l1000                   = &1000
l1001                   = &1001
l1002                   = &1002
l1003                   = &1003
l1004                   = &1004
l1005                   = &1005
l1006                   = &1006
l1007                   = &1007
l100e                   = &100e
l1045                   = &1045
l1047                   = &1047
l104d                   = &104d
l104e                   = &104e
l1050                   = &1050
l1058                   = &1058
l105f                   = &105f
l1060                   = &1060
l1061                   = &1061
l1062                   = &1062
l1063                   = &1063
l1064                   = &1064
l1065                   = &1065
l1067                   = &1067
l1069                   = &1069
l1072                   = &1072
l1074                   = &1074
l1075                   = &1075
l1076                   = &1076
l1077                   = &1077
l1078                   = &1078
l1079                   = &1079
l107a                   = &107a
l107d                   = &107d
l107e                   = &107e
l107f                   = &107f
l1081                   = &1081
l1082                   = &1082
l1083                   = &1083
l1086                   = &1086
l1087                   = &1087
l1088                   = &1088
l1089                   = &1089
l108a                   = &108a
l108b                   = &108b
l108c                   = &108c
l108f                   = &108f
l1090                   = &1090
l1091                   = &1091
l1092                   = &1092
l1093                   = &1093
l1094                   = &1094
l1095                   = &1095
l1096                   = &1096
l1097                   = &1097
l1098                   = &1098
l1099                   = &1099
l109a                   = &109a
l109b                   = &109b
l109d                   = &109d
l109e                   = &109e
l109f                   = &109f
l10c0                   = &10c0
l10c1                   = &10c1
l10c2                   = &10c2
l10c3                   = &10c3
l10c4                   = &10c4
l10c5                   = &10c5
l10c6                   = &10c6
l10c7                   = &10c7
l10c9                   = &10c9
l10ca                   = &10ca
l10cb                   = &10cb
l10cc                   = &10cc
l10cd                   = &10cd
l10ce                   = &10ce
l10cf                   = &10cf
l10d0                   = &10d0
l10d1                   = &10d1
l10d2                   = &10d2
l10d3                   = &10d3
l10d6                   = &10d6
l10d7                   = &10d7
l10d8                   = &10d8
l10d9                   = &10d9
l10da                   = &10da
l10db                   = &10db
l10dc                   = &10dc
l10dd                   = &10dd
l10de                   = &10de
l10e2                   = &10e2
l10e3                   = &10e3
l10e4                   = &10e4
l1100                   = &1100
l1109                   = &1109
l110b                   = &110b
l110c                   = &110c
l110d                   = &110d
l110e                   = &110e
l110f                   = &110f
l1110                   = &1110
l1111                   = &1111
l1112                   = &1112
l1113                   = &1113
l1114                   = &1114
l1115                   = &1115
l1116                   = &1116
l1117                   = &1117
l1119                   = &1119
l111a                   = &111a
l111b                   = &111b
l111c                   = &111c
l111d                   = &111d
sub_c2fd2               = &2fd2
sub_c3030               = &3030
sub_c303e               = &303e
sub_c3067               = &3067
c30fb                   = &30fb
l4cdb                   = &4cdb
sub_c4ea9               = &4ea9
c4f38                   = &4f38
c4f79                   = &4f79
l5075                   = &5075
nmi3_handler_rom_start  = &9030
nmi_handler_rom_end     = &9030
tube_host_code1         = &af79
lc000                   = &c000
romsel                  = &fe30
lfe80                   = &fe80
lfe84                   = &fe84
lfe85                   = &fe85
lfe86                   = &fe86
lfe87                   = &fe87
tube_host_r1_status     = &fee0
tube_host_r1_data       = &fee1
tube_host_r2_status     = &fee2
tube_host_r2_data       = &fee3
tube_host_r3_data       = &fee5
tube_host_r4_status     = &fee6
tube_host_r4_data       = &fee7
osrdsc                  = &ffb9
gsinit                  = &ffc2
gsread                  = &ffc5
osfind                  = &ffce
osgbpb                  = &ffd1
osbput                  = &ffd4
osbget                  = &ffd7
osargs                  = &ffda
osfile                  = &ffdd
osrdch                  = &ffe0
osasci                  = &ffe3
osnewl                  = &ffe7
oswrch                  = &ffee
osword                  = &fff1
osbyte                  = &fff4
oscli                   = &fff7

    org &2000

; Sideways ROM header
; &2000 referenced 1 time by &04e2
.pydis_start

    org &8000
; Sideways ROM header
; &2000 referenced 1 time by &04e2
.rom_header
.language_entry
l8001 = rom_header+1
l8002 = rom_header+2
    equb 0, 0, 0                                                      ; 2000: 00 00 00    ... :8000[1]
; &2001 referenced 1 time by &04e7
; &2002 referenced 1 time by &04ec

; &2003 referenced 1 time by &04f1
.service_entry
l8004 = service_entry+1
    jmp service_handler                                               ; 2003: 4c c8 be    L.. :8003[1]

; &2004 referenced 1 time by &04f4
; &2006 referenced 1 time by &04d6
.rom_type
    equb &82                                                          ; 2006: 82          .   :8006[1]
; &2007 referenced 1 time by &04de
.copyright_offset
    equb copyright - rom_header                                       ; 2007: 11          .   :8007[1]
.binary_version
    equb &7b                                                          ; 2008: 7b          {   :8008[1]
.title
    equs "DFS"                                                        ; 2009: 44 46 53    DFS :8009[1]
.version
    equb 0                                                            ; 200c: 00          .   :800c[1]
    equs "2.26"                                                       ; 200d: 32 2e 32... 2.2 :800d[1]
.copyright
    equb 0                                                            ; 2011: 00          .   :8011[1]
    equs "(C)1985 Acorn", 0                                           ; 2012: 28 43 29... (C) :8012[1]

; &2020 referenced 1 time by &9575
.sub_c8020
    jmp (fscv)                                                        ; 2020: 6c 1e 02    l.. :8020[1]

; &2023 referenced 4 times by &8a6e, &94c6, &94d5, &9c00
.generate_error_precheck_disc
    jsr generate_error_precheck                                       ; 2023: 20 38 80     8. :8023[1]
    equb 0                                                            ; 2026: 00          .   :8026[1]
    equs "Disc "                                                      ; 2027: 44 69 73... Dis :8027[1]

    bcc generate_error2                                               ; 202c: 90 21       .!  :802c[1]
; &202e referenced 6 times by &8125, &889a, &89a5, &8a24, &8a3e, &8ba2
.generate_error_precheck_bad
    jsr generate_error_precheck                                       ; 202e: 20 38 80     8. :802e[1]
    equb 0                                                            ; 2031: 00          .   :8031[1]
    equs "Bad "                                                       ; 2032: 42 61 64... Bad :8032[1]

    bcc generate_error2                                               ; 2036: 90 17       ..  :8036[1]
; &2038 referenced 11 times by &8023, &802e, &8b18, &8bd8, &9a55, &9c70, &9c82, &9e80, &9e8c, &9f6e, &9fc8
.generate_error_precheck
    lda l10dd                                                         ; 2038: ad dd 10    ... :8038[1]
    bne c8040                                                         ; 203b: d0 03       ..  :803b[1]
    jsr sub_c9e30                                                     ; 203d: 20 30 9e     0. :803d[1]
; &2040 referenced 1 time by &803b
.c8040
    lda #&ff                                                          ; 2040: a9 ff       ..  :8040[1]
    sta l1082                                                         ; 2042: 8d 82 10    ... :8042[1]
    sta l10dd                                                         ; 2045: 8d dd 10    ... :8045[1]
; Generate an OS error using inline data. Called as either:
;         jsr XXX:equb errnum, "error message", 0
;     to actually generate an error now, or as:
;         jsr XXX:equb errnum, "partial error message", instruction...
;     to partially construct an error (on the stack) and continue executing
;     'instruction' afterwards; its opcode must have its top bit set. Carry is
;     always clear on exit.
; &2048 referenced 4 times by &822a, &9439, &947c, &a14f
.generate_error
    ldx #2                                                            ; 2048: a2 02       ..  :8048[1]
    lda #0                                                            ; 204a: a9 00       ..  :804a[1]
    sta l0100                                                         ; 204c: 8d 00 01    ... :804c[1]
; &204f referenced 7 times by &802c, &8036, &94da, &94e9, &94f7, &9507, &9511
.generate_error2
    sta l00b3                                                         ; 204f: 85 b3       ..  :804f[1]
    pla                                                               ; 2051: 68          h   :8051[1]
    sta l00ae                                                         ; 2052: 85 ae       ..  :8052[1]
    pla                                                               ; 2054: 68          h   :8054[1]
    sta l00af                                                         ; 2055: 85 af       ..  :8055[1]
; XXX: Redundant lda l00b3? Is sta l00b3 above redundant too?
    lda l00b3                                                         ; 2057: a5 b3       ..  :8057[1]
    ldy #0                                                            ; 2059: a0 00       ..  :8059[1]
    jsr inc16_ae                                                      ; 205b: 20 dc 83     .. :805b[1]
    lda (l00ae),y                                                     ; 205e: b1 ae       ..  :805e[1]
    sta l0101                                                         ; 2060: 8d 01 01    ... :8060[1]
    dex                                                               ; 2063: ca          .   :8063[1]
; &2064 referenced 1 time by &806f
.loop_c8064
    jsr inc16_ae                                                      ; 2064: 20 dc 83     .. :8064[1]
    inx                                                               ; 2067: e8          .   :8067[1]
    lda (l00ae),y                                                     ; 2068: b1 ae       ..  :8068[1]
    sta l0100,x                                                       ; 206a: 9d 00 01    ... :806a[1]
    bmi c8096                                                         ; 206d: 30 27       0'  :806d[1]
    bne loop_c8064                                                    ; 206f: d0 f3       ..  :806f[1]
    jsr sub_c8f75                                                     ; 2071: 20 75 8f     u. :8071[1]
    jmp l0100                                                         ; 2074: 4c 00 01    L.. :8074[1]

; Print (XXX: using l809f, which seems to be quite fancy) an inline string
;     terminated by a top-bit set instruction to execute after printing the string.
;     Carry is always clear on exit.
; &2077 referenced 31 times by &84a5, &84b0, &84c8, &84dc, &84f1, &850d, &87ce, &9558, &a10c, &a247, &a298, &a34d, &a364, &a394, &a3a3, &a3ae, &a3bd, &a3e4, &a3ec, &a5f0, &a5fb, &a605, &a667, &a678, &a68a, &a699, &a70a, &a719, &aa5a, &aa65, &aebf
.print_inline_l809f_top_bit_clear
    sta l00b3                                                         ; 2077: 85 b3       ..  :8077[1]
    pla                                                               ; 2079: 68          h   :8079[1]
    sta l00ae                                                         ; 207a: 85 ae       ..  :807a[1]
    pla                                                               ; 207c: 68          h   :807c[1]
    sta l00af                                                         ; 207d: 85 af       ..  :807d[1]
    lda l00b3                                                         ; 207f: a5 b3       ..  :807f[1]
    pha                                                               ; 2081: 48          H   :8081[1]
    tya                                                               ; 2082: 98          .   :8082[1]
    pha                                                               ; 2083: 48          H   :8083[1]
    ldy #0                                                            ; 2084: a0 00       ..  :8084[1]
; &2086 referenced 1 time by &8090
.loop_c8086
    jsr inc16_ae                                                      ; 2086: 20 dc 83     .. :8086[1]
    lda (l00ae),y                                                     ; 2089: b1 ae       ..  :8089[1]
    bmi c8093                                                         ; 208b: 30 06       0.  :808b[1]
    jsr c809f                                                         ; 208d: 20 9f 80     .. :808d[1]
    jmp loop_c8086                                                    ; 2090: 4c 86 80    L.. :8090[1]

; &2093 referenced 1 time by &808b
.c8093
    pla                                                               ; 2093: 68          h   :8093[1]
    tay                                                               ; 2094: a8          .   :8094[1]
    pla                                                               ; 2095: 68          h   :8095[1]
; &2096 referenced 1 time by &806d
.c8096
    clc                                                               ; 2096: 18          .   :8096[1]
    jmp (l00ae)                                                       ; 2097: 6c ae 00    l.. :8097[1]

; &209a referenced 2 times by &84ff, &8519
.sub_c809a
    jsr sub_c80c3                                                     ; 209a: 20 c3 80     .. :809a[1]
; &209d referenced 1 time by &8187
.sub_c809d
    lda #&2e ; '.'                                                    ; 209d: a9 2e       ..  :809d[1]
; &209f referenced 20 times by &808d, &80c6, &8184, &8191, &81a2, &849d, &84ea, &8505, &851f, &a1c3, &a3df, &a40c, &a621, &a6bd, &a6c0, &aa6d, &aa7b, &aa87, &aa8c, &aabe
.c809f
    jsr sub_c83e3                                                     ; 209f: 20 e3 83     .. :809f[1]
    pha                                                               ; 20a2: 48          H   :80a2[1]
    lda #&ec                                                          ; 20a3: a9 ec       ..  :80a3[1]
    jsr osbyte_read                                                   ; 20a5: 20 e5 9a     .. :80a5[1]
    txa                                                               ; 20a8: 8a          .   :80a8[1]
    pha                                                               ; 20a9: 48          H   :80a9[1]
    ora #&10                                                          ; 20aa: 09 10       ..  :80aa[1]
    jsr sub_c9ad3                                                     ; 20ac: 20 d3 9a     .. :80ac[1]
    pla                                                               ; 20af: 68          h   :80af[1]
    tax                                                               ; 20b0: aa          .   :80b0[1]
    pla                                                               ; 20b1: 68          h   :80b1[1]
    jsr osasci                                                        ; 20b2: 20 e3 ff     .. :80b2[1]
    jmp c9ad4                                                         ; 20b5: 4c d4 9a    L.. :80b5[1]

; &20b8 referenced 1 time by &aa62
.sub_c80b8
    jsr sub_c841b                                                     ; 20b8: 20 1b 84     .. :80b8[1]
; &20bb referenced 5 times by &8368, &8373, &84ad, &a295, &a6c6
.sub_c80bb
    pha                                                               ; 20bb: 48          H   :80bb[1]
    jsr sub_c81bf                                                     ; 20bc: 20 bf 81     .. :80bc[1]
    jsr sub_c80c3                                                     ; 20bf: 20 c3 80     .. :80bf[1]
    pla                                                               ; 20c2: 68          h   :80c2[1]
; &20c3 referenced 10 times by &809a, &80bf, &8362, &84c0, &84d9, &a25c, &a291, &a361, &a36f, &a696
.sub_c80c3
    jsr sub_c80c8                                                     ; 20c3: 20 c8 80     .. :80c3[1]
    bne c809f                                                         ; 20c6: d0 d7       ..  :80c6[1]
; &20c8 referenced 4 times by &80c3, &952e, &a9ca, &ac6a
.sub_c80c8
    and #&0f                                                          ; 20c8: 29 0f       ).  :80c8[1]
    cmp #&0a                                                          ; 20ca: c9 0a       ..  :80ca[1]
    bcc c80d0                                                         ; 20cc: 90 02       ..  :80cc[1]
    adc #6                                                            ; 20ce: 69 06       i.  :80ce[1]
; &20d0 referenced 1 time by &80cc
.c80d0
    adc #&30 ; '0'                                                    ; 20d0: 69 30       i0  :80d0[1]
    rts                                                               ; 20d2: 60          `   :80d2[1]

; &20d3 referenced 1 time by &979d
.sub_c80d3
    jsr sub_c80e3                                                     ; 20d3: 20 e3 80     .. :80d3[1]
    dex                                                               ; 20d6: ca          .   :80d6[1]
    dex                                                               ; 20d7: ca          .   :80d7[1]
    jsr sub_c80db                                                     ; 20d8: 20 db 80     .. :80d8[1]
; &20db referenced 1 time by &80d8
.sub_c80db
    lda (l00b0),y                                                     ; 20db: b1 b0       ..  :80db[1]
    sta l1072,x                                                       ; 20dd: 9d 72 10    .r. :80dd[1]
    inx                                                               ; 20e0: e8          .   :80e0[1]
    iny                                                               ; 20e1: c8          .   :80e1[1]
    rts                                                               ; 20e2: 60          `   :80e2[1]

; &20e3 referenced 2 times by &80d3, &979a
.sub_c80e3
    jsr sub_c80e6                                                     ; 20e3: 20 e6 80     .. :80e3[1]
; &20e6 referenced 1 time by &80e3
.sub_c80e6
    lda (l00b0),y                                                     ; 20e6: b1 b0       ..  :80e6[1]
    sta l00ba,x                                                       ; 20e8: 95 ba       ..  :80e8[1]
    inx                                                               ; 20ea: e8          .   :80ea[1]
    iny                                                               ; 20eb: c8          .   :80eb[1]
    rts                                                               ; 20ec: 60          `   :80ec[1]

; &20ed referenced 5 times by &821d, &89ec, &8bb2, &8bc7, &a46c
.sub_c80ed
    jsr sub_c8b7b                                                     ; 20ed: 20 7b 8b     {. :80ed[1]
    jmp c8103                                                         ; 20f0: 4c 03 81    L.. :80f0[1]

; &20f3 referenced 5 times by &8222, &8879, &8a77, &9a78, &9c22
.sub_c80f3
    jsr sub_c8b7b                                                     ; 20f3: 20 7b 8b     {. :80f3[1]
; &20f6 referenced 1 time by &8892
.sub_c80f6
    lda l00ba                                                         ; 20f6: a5 ba       ..  :80f6[1]
    sta os_text_ptr                                                   ; 20f8: 85 f2       ..  :80f8[1]
    lda l00bb                                                         ; 20fa: a5 bb       ..  :80fa[1]
    sta l00f3                                                         ; 20fc: 85 f3       ..  :80fc[1]
    ldy #0                                                            ; 20fe: a0 00       ..  :80fe[1]
    jsr clc_jmp_gsinit                                                ; 2100: 20 4c 87     L. :8100[1]
; &2103 referenced 3 times by &80f0, &8113, &8123
.c8103
    ldx #&20 ; ' '                                                    ; 2103: a2 20       .   :8103[1]
    jsr sub_c8149                                                     ; 2105: 20 49 81     I. :8105[1]
    bcs c8125                                                         ; 2108: b0 1b       ..  :8108[1]
    sta l1000                                                         ; 210a: 8d 00 10    ... :810a[1]
    cmp #&2e ; '.'                                                    ; 210d: c9 2e       ..  :810d[1]
    bne c8115                                                         ; 210f: d0 04       ..  :810f[1]
; &2111 referenced 1 time by &8136
.c8111
    stx l00cc                                                         ; 2111: 86 cc       ..  :8111[1]
    beq c8103                                                         ; 2113: f0 ee       ..  :8113[1]
; &2115 referenced 1 time by &810f
.c8115
    cmp #&3a ; ':'                                                    ; 2115: c9 3a       .:  :8115[1]
    bne c812e                                                         ; 2117: d0 15       ..  :8117[1]
    jsr c8b8b                                                         ; 2119: 20 8b 8b     .. :8119[1]
    jsr sub_c8149                                                     ; 211c: 20 49 81     I. :811c[1]
    bcs c8125                                                         ; 211f: b0 04       ..  :811f[1]
    cmp #&2e ; '.'                                                    ; 2121: c9 2e       ..  :8121[1]
    beq c8103                                                         ; 2123: f0 de       ..  :8123[1]
; &2125 referenced 5 times by &8108, &811f, &8147, &8155, &8159
.c8125
    jsr generate_error_precheck_bad                                   ; 2125: 20 2e 80     .. :8125[1]
    equb &cc                                                          ; 2128: cc          .   :8128[1]
    equs "name"                                                       ; 2129: 6e 61 6d... nam :8129[1]
    equb 0                                                            ; 212d: 00          .   :812d[1]

; &212e referenced 1 time by &8117
.c812e
    tax                                                               ; 212e: aa          .   :812e[1]
    jsr sub_c8149                                                     ; 212f: 20 49 81     I. :812f[1]
    bcs c815d                                                         ; 2132: b0 29       .)  :8132[1]
    cmp #&2e ; '.'                                                    ; 2134: c9 2e       ..  :8134[1]
    beq c8111                                                         ; 2136: f0 d9       ..  :8136[1]
    ldx #1                                                            ; 2138: a2 01       ..  :8138[1]
; &213a referenced 1 time by &8145
.loop_c813a
    sta l1000,x                                                       ; 213a: 9d 00 10    ... :813a[1]
    inx                                                               ; 213d: e8          .   :813d[1]
    jsr sub_c8149                                                     ; 213e: 20 49 81     I. :813e[1]
    bcs c815f                                                         ; 2141: b0 1c       ..  :8141[1]
    cpx #7                                                            ; 2143: e0 07       ..  :8143[1]
    bne loop_c813a                                                    ; 2145: d0 f3       ..  :8145[1]
    beq c8125                                                         ; 2147: f0 dc       ..  :8147[1]
; &2149 referenced 11 times by &8105, &811c, &812f, &813e, &8990, &899c, &89af, &89cb, &8a19, &8b8b, &a143
.sub_c8149
    jsr gsread                                                        ; 2149: 20 c5 ff     .. :8149[1]
    php                                                               ; 214c: 08          .   :814c[1]
    and #&7f                                                          ; 214d: 29 7f       ).  :814d[1]
    cmp #&0d                                                          ; 214f: c9 0d       ..  :814f[1]
    beq c815b                                                         ; 2151: f0 08       ..  :8151[1]
    cmp #&20 ; ' '                                                    ; 2153: c9 20       .   :8153[1]
    bcc c8125                                                         ; 2155: 90 ce       ..  :8155[1]
    cmp #&7f                                                          ; 2157: c9 7f       ..  :8157[1]
    beq c8125                                                         ; 2159: f0 ca       ..  :8159[1]
; &215b referenced 1 time by &8151
.c815b
    plp                                                               ; 215b: 28          (   :815b[1]
    rts                                                               ; 215c: 60          `   :815c[1]

; &215d referenced 2 times by &8132, &8248
.c815d
    ldx #1                                                            ; 215d: a2 01       ..  :815d[1]
; &215f referenced 1 time by &8141
.c815f
    lda #&20 ; ' '                                                    ; 215f: a9 20       .   :815f[1]
; &2161 referenced 1 time by &8167
.loop_c8161
    sta l1000,x                                                       ; 2161: 9d 00 10    ... :8161[1]
    inx                                                               ; 2164: e8          .   :8164[1]
    cpx #&40 ; '@'                                                    ; 2165: e0 40       .@  :8165[1]
    bne loop_c8161                                                    ; 2167: d0 f8       ..  :8167[1]
    ldx #6                                                            ; 2169: a2 06       ..  :8169[1]
; &216b referenced 1 time by &8171
.loop_c816b
    lda l1000,x                                                       ; 216b: bd 00 10    ... :816b[1]
    sta l00c5,x                                                       ; 216e: 95 c5       ..  :816e[1]
    dex                                                               ; 2170: ca          .   :8170[1]
    bpl loop_c816b                                                    ; 2171: 10 f8       ..  :8171[1]
    rts                                                               ; 2173: 60          `   :8173[1]

; &2174 referenced 4 times by &833d, &85cd, &875e, &87a5
.sub_c8174
    jsr sub_c83e3                                                     ; 2174: 20 e3 83     .. :8174[1]
    lda l0e0f,y                                                       ; 2177: b9 0f 0e    ... :8177[1]
    php                                                               ; 217a: 08          .   :817a[1]
    and #&7f                                                          ; 217b: 29 7f       ).  :817b[1]
    bne c8184                                                         ; 217d: d0 05       ..  :817d[1]
    jsr sub_cac0c                                                     ; 217f: 20 0c ac     .. :817f[1]
    beq c818a                                                         ; 2182: f0 06       ..  :8182[1]
; &2184 referenced 1 time by &817d
.c8184
    jsr c809f                                                         ; 2184: 20 9f 80     .. :8184[1]
    jsr sub_c809d                                                     ; 2187: 20 9d 80     .. :8187[1]
; &218a referenced 1 time by &8182
.c818a
    ldx #6                                                            ; 218a: a2 06       ..  :818a[1]
; &218c referenced 1 time by &8196
.loop_c818c
    lda l0e08,y                                                       ; 218c: b9 08 0e    ... :818c[1]
    and #&7f                                                          ; 218f: 29 7f       ).  :818f[1]
    jsr c809f                                                         ; 2191: 20 9f 80     .. :8191[1]
    iny                                                               ; 2194: c8          .   :8194[1]
    dex                                                               ; 2195: ca          .   :8195[1]
    bpl loop_c818c                                                    ; 2196: 10 f4       ..  :8196[1]
    jsr sub_cac0c                                                     ; 2198: 20 0c ac     .. :8198[1]
    lda #&20 ; ' '                                                    ; 219b: a9 20       .   :819b[1]
    plp                                                               ; 219d: 28          (   :819d[1]
    bpl c81a2                                                         ; 219e: 10 02       ..  :819e[1]
    lda #&4c ; 'L'                                                    ; 21a0: a9 4c       .L  :81a0[1]
; &21a2 referenced 1 time by &819e
.c81a2
    jsr c809f                                                         ; 21a2: 20 9f 80     .. :81a2[1]
    ldy #1                                                            ; 21a5: a0 01       ..  :81a5[1]
; &21a7 referenced 4 times by &81ab, &84c5, &850a, &85c2
.c81a7
    jsr cac0f                                                         ; 21a7: 20 0f ac     .. :81a7[1]
    dey                                                               ; 21aa: 88          .   :81aa[1]
    bne c81a7                                                         ; 21ab: d0 fa       ..  :81ab[1]
    rts                                                               ; 21ad: 60          `   :81ad[1]

; &21ae referenced 2 times by &88a9, &8b6b
.sub_c81ae
    lsr a                                                             ; 21ae: 4a          J   :81ae[1]
    lsr a                                                             ; 21af: 4a          J   :81af[1]
; &21b0 referenced 8 times by &81f5, &85e6, &9cdb, &9cfd, &a2c6, &a49f, &a505, &a8e6
.sub_c81b0
    lsr a                                                             ; 21b0: 4a          J   :81b0[1]
    lsr a                                                             ; 21b1: 4a          J   :81b1[1]
    lsr a                                                             ; 21b2: 4a          J   :81b2[1]
    lsr a                                                             ; 21b3: 4a          J   :81b3[1]
    and #3                                                            ; 21b4: 29 03       ).  :81b4[1]
    rts                                                               ; 21b6: 60          `   :81b6[1]

; &21b7 referenced 1 time by &8b54
.sub_c81b7
    and #8                                                            ; 21b7: 29 08       ).  :81b7[1]
    beq c81bd                                                         ; 21b9: f0 02       ..  :81b9[1]
    lda #3                                                            ; 21bb: a9 03       ..  :81bb[1]
; &21bd referenced 1 time by &81b9
.c81bd
    rts                                                               ; 21bd: 60          `   :81bd[1]

; &21be referenced 3 times by &9cb3, &9d0c, &9e00
.sub_c81be
    lsr a                                                             ; 21be: 4a          J   :81be[1]
; &21bf referenced 8 times by &80bc, &84d5, &9527, &9644, &98fb, &a18d, &a9c3, &ac63
.sub_c81bf
    lsr a                                                             ; 21bf: 4a          J   :81bf[1]
; &21c0 referenced 1 time by &a90d
.sub_c81c0
    lsr a                                                             ; 21c0: 4a          J   :81c0[1]
    lsr a                                                             ; 21c1: 4a          J   :81c1[1]
    lsr a                                                             ; 21c2: 4a          J   :81c2[1]
    rts                                                               ; 21c3: 60          `   :81c3[1]

; &21c4 referenced 1 time by &9e2a
.sub_c81c4
    asl a                                                             ; 21c4: 0a          .   :81c4[1]
; &21c5 referenced 2 times by &8a5d, &9bae
.sub_c81c5
    asl a                                                             ; 21c5: 0a          .   :81c5[1]
    asl a                                                             ; 21c6: 0a          .   :81c6[1]
    asl a                                                             ; 21c7: 0a          .   :81c7[1]
    asl a                                                             ; 21c8: 0a          .   :81c8[1]
    rts                                                               ; 21c9: 60          `   :81c9[1]

; &21ca referenced 1 time by &8867
.sub_c81ca
    lda #5                                                            ; 21ca: a9 05       ..  :81ca[1]
    sta l1095                                                         ; 21cc: 8d 95 10    ... :81cc[1]
    lda l00cd                                                         ; 21cf: a5 cd       ..  :81cf[1]
    sta l1090                                                         ; 21d1: 8d 90 10    ... :81d1[1]
    lda #&0a                                                          ; 21d4: a9 0a       ..  :81d4[1]
    sta l00b0                                                         ; 21d6: 85 b0       ..  :81d6[1]
    lda l00bc                                                         ; 21d8: a5 bc       ..  :81d8[1]
    sta l1091                                                         ; 21da: 8d 91 10    ... :81da[1]
    lda l00bd                                                         ; 21dd: a5 bd       ..  :81dd[1]
    sta l1092                                                         ; 21df: 8d 92 10    ... :81df[1]
    lda l1074                                                         ; 21e2: ad 74 10    .t. :81e2[1]
    sta l1093                                                         ; 21e5: 8d 93 10    ... :81e5[1]
    lda l1075                                                         ; 21e8: ad 75 10    .u. :81e8[1]
    sta l1094                                                         ; 21eb: 8d 94 10    ... :81eb[1]
    lda #&ff                                                          ; 21ee: a9 ff       ..  :81ee[1]
    sta l1097                                                         ; 21f0: 8d 97 10    ... :81f0[1]
    lda l00c2                                                         ; 21f3: a5 c2       ..  :81f3[1]
    jsr sub_c81b0                                                     ; 21f5: 20 b0 81     .. :81f5[1]
    sta l109a                                                         ; 21f8: 8d 9a 10    ... :81f8[1]
    lda l00c0                                                         ; 21fb: a5 c0       ..  :81fb[1]
    sta l109b                                                         ; 21fd: 8d 9b 10    ... :81fd[1]
    lda l00c1                                                         ; 2200: a5 c1       ..  :8200[1]
    sta l1099                                                         ; 2202: 8d 99 10    ... :8202[1]
    lda l00c2                                                         ; 2205: a5 c2       ..  :8205[1]
    and #3                                                            ; 2207: 29 03       ).  :8207[1]
    tax                                                               ; 2209: aa          .   :8209[1]
    lda l00c3                                                         ; 220a: a5 c3       ..  :820a[1]
; &220c referenced 1 time by &8215
.loop_c820c
    sec                                                               ; 220c: 38          8   :820c[1]
; &220d referenced 1 time by &8212
.loop_c820d
    inc l1097                                                         ; 220d: ee 97 10    ... :820d[1]
    sbc l00b0                                                         ; 2210: e5 b0       ..  :8210[1]
    bcs loop_c820d                                                    ; 2212: b0 f9       ..  :8212[1]
    dex                                                               ; 2214: ca          .   :8214[1]
    bpl loop_c820c                                                    ; 2215: 10 f5       ..  :8215[1]
    adc l00b0                                                         ; 2217: 65 b0       e.  :8217[1]
    sta l1098                                                         ; 2219: 8d 98 10    ... :8219[1]
; &221c referenced 1 time by &8228
.loop_c821c
    rts                                                               ; 221c: 60          `   :821c[1]

; &221d referenced 4 times by &825a, &8756, &8788, &879d
.sub_c821d
    jsr sub_c80ed                                                     ; 221d: 20 ed 80     .. :821d[1]
    bmi c8225                                                         ; 2220: 30 03       0.  :8220[1]
; &2222 referenced 1 time by &881b
.sub_c8222
    jsr sub_c80f3                                                     ; 2222: 20 f3 80     .. :8222[1]
; &2225 referenced 4 times by &8220, &824e, &8bb7, &a478
.c8225
    jsr sub_c8284                                                     ; 2225: 20 84 82     .. :8225[1]
    bcs loop_c821c                                                    ; 2228: b0 f2       ..  :8228[1]
; &222a referenced 2 times by &89fd, &ab17
.c822a
    jsr generate_error                                                ; 222a: 20 48 80     H. :822a[1]
    equb &d6                                                          ; 222d: d6          .   :822d[1]
    equs "Not found"                                                  ; 222e: 4e 6f 74... Not :822e[1]
    equb 0                                                            ; 2237: 00          .   :8237[1]

.sub_c8238
    jsr sub_c8b7b                                                     ; 2238: 20 7b 8b     {. :8238[1]
    jsr clc_jmp_gsinit                                                ; 223b: 20 4c 87     L. :823b[1]
    beq c8243                                                         ; 223e: f0 03       ..  :823e[1]
    jsr c898a                                                         ; 2240: 20 8a 89     .. :8240[1]
; &2243 referenced 1 time by &823e
.c8243
    lda #&2a ; '*'                                                    ; 2243: a9 2a       .*  :8243[1]
    sta l1000                                                         ; 2245: 8d 00 10    ... :8245[1]
    jsr c815d                                                         ; 2248: 20 5d 81     ]. :8248[1]
    jsr sub_c99ac                                                     ; 224b: 20 ac 99     .. :824b[1]
    jsr c8225                                                         ; 224e: 20 25 82     %. :824e[1]
    jmp c825d                                                         ; 2251: 4c 5d 82    L]. :8251[1]

.sub_c8254
    jsr sub_c99ac                                                     ; 2254: 20 ac 99     .. :8254[1]
    jsr sub_ca14a                                                     ; 2257: 20 4a a1     J. :8257[1]
    jsr sub_c821d                                                     ; 225a: 20 1d 82     .. :825a[1]
; &225d referenced 2 times by &8251, &8263
.c825d
    jsr sub_c833a                                                     ; 225d: 20 3a 83     :. :825d[1]
    jsr sub_c8280                                                     ; 2260: 20 80 82     .. :8260[1]
    bcs c825d                                                         ; 2263: b0 f8       ..  :8263[1]
    rts                                                               ; 2265: 60          `   :8265[1]

; &2266 referenced 2 times by &887f, &8895
.sub_c8266
    jsr sub_c93f9                                                     ; 2266: 20 f9 93     .. :8266[1]
    lda #0                                                            ; 2269: a9 00       ..  :8269[1]
    beq c828b                                                         ; 226b: f0 1e       ..  :826b[1]
; &226d referenced 2 times by &9bd9, &a4f2
.sub_c826d
    ldx #6                                                            ; 226d: a2 06       ..  :826d[1]
; &226f referenced 1 time by &8275
.loop_c826f
    lda l00c5,x                                                       ; 226f: b5 c5       ..  :826f[1]
    sta l1058,x                                                       ; 2271: 9d 58 10    .X. :8271[1]
    dex                                                               ; 2274: ca          .   :8274[1]
    bpl loop_c826f                                                    ; 2275: 10 f8       ..  :8275[1]
    lda #&20 ; ' '                                                    ; 2277: a9 20       .   :8277[1]
    sta l105f                                                         ; 2279: 8d 5f 10    ._. :8279[1]
    lda #&58 ; 'X'                                                    ; 227c: a9 58       .X  :827c[1]
    bne c8286                                                         ; 227e: d0 06       ..  :827e[1]
; &2280 referenced 6 times by &8260, &877c, &87ab, &87c6, &8a10, &a4db
.sub_c8280
    ldx #0                                                            ; 2280: a2 00       ..  :8280[1]
    beq c8290                                                         ; 2282: f0 0c       ..  :8282[1]
; &2284 referenced 7 times by &8225, &87bb, &89f8, &8a7a, &8bcf, &9a7b, &9c28
.sub_c8284
    lda #0                                                            ; 2284: a9 00       ..  :8284[1]
; &2286 referenced 1 time by &827e
.c8286
    pha                                                               ; 2286: 48          H   :8286[1]
    jsr sub_c93fd                                                     ; 2287: 20 fd 93     .. :8287[1]
    pla                                                               ; 228a: 68          h   :828a[1]
; &228b referenced 1 time by &826b
.c828b
    tax                                                               ; 228b: aa          .   :828b[1]
    lda #0                                                            ; 228c: a9 00       ..  :828c[1]
    sta l00b6                                                         ; 228e: 85 b6       ..  :828e[1]
; &2290 referenced 3 times by &8282, &82a4, &82ad
.c8290
    ldy #0                                                            ; 2290: a0 00       ..  :8290[1]
    lda #&0e                                                          ; 2292: a9 0e       ..  :8292[1]
    sta l00b7                                                         ; 2294: 85 b7       ..  :8294[1]
    lda l00b6                                                         ; 2296: a5 b6       ..  :8296[1]
    cmp l0f05                                                         ; 2298: cd 05 0f    ... :8298[1]
    bcs c82e6                                                         ; 229b: b0 49       .I  :829b[1]
    adc #8                                                            ; 229d: 69 08       i.  :829d[1]
    sta l00b6                                                         ; 229f: 85 b6       ..  :829f[1]
    jsr sub_c82bb                                                     ; 22a1: 20 bb 82     .. :82a1[1]
    bcc c8290                                                         ; 22a4: 90 ea       ..  :82a4[1]
    lda l00cc                                                         ; 22a6: a5 cc       ..  :82a6[1]
    ldy #7                                                            ; 22a8: a0 07       ..  :82a8[1]
    jsr sub_c82e8                                                     ; 22aa: 20 e8 82     .. :82aa[1]
    bne c8290                                                         ; 22ad: d0 e1       ..  :82ad[1]
    ldy l00b6                                                         ; 22af: a4 b6       ..  :82af[1]
    sec                                                               ; 22b1: 38          8   :82b1[1]
; &22b2 referenced 4 times by &87e8, &8aca, &a27c, &a848
.sub_c82b2
    dey                                                               ; 22b2: 88          .   :82b2[1]
    dey                                                               ; 22b3: 88          .   :82b3[1]
    dey                                                               ; 22b4: 88          .   :82b4[1]
    dey                                                               ; 22b5: 88          .   :82b5[1]
    dey                                                               ; 22b6: 88          .   :82b6[1]
    dey                                                               ; 22b7: 88          .   :82b7[1]
    dey                                                               ; 22b8: 88          .   :82b8[1]
    dey                                                               ; 22b9: 88          .   :82b9[1]
    rts                                                               ; 22ba: 60          `   :82ba[1]

; &22bb referenced 2 times by &82a1, &82c7
.sub_c82bb
    jsr sub_c83e3                                                     ; 22bb: 20 e3 83     .. :82bb[1]
; &22be referenced 1 time by &82e4
.c82be
    lda l1000,x                                                       ; 22be: bd 00 10    ... :82be[1]
    cmp l10ce                                                         ; 22c1: cd ce 10    ... :82c1[1]
    bne c82d9                                                         ; 22c4: d0 13       ..  :82c4[1]
    inx                                                               ; 22c6: e8          .   :82c6[1]
; &22c7 referenced 1 time by &82cf
.loop_c82c7
    jsr sub_c82bb                                                     ; 22c7: 20 bb 82     .. :82c7[1]
    bcs c82e7                                                         ; 22ca: b0 1b       ..  :82ca[1]
    iny                                                               ; 22cc: c8          .   :82cc[1]
    cpy #7                                                            ; 22cd: c0 07       ..  :82cd[1]
    bcc loop_c82c7                                                    ; 22cf: 90 f6       ..  :82cf[1]
; &22d1 referenced 1 time by &82db
.loop_c82d1
    lda l1000,x                                                       ; 22d1: bd 00 10    ... :82d1[1]
    cmp #&20 ; ' '                                                    ; 22d4: c9 20       .   :82d4[1]
    bne c82e6                                                         ; 22d6: d0 0e       ..  :82d6[1]
    rts                                                               ; 22d8: 60          `   :82d8[1]

; &22d9 referenced 1 time by &82c4
.c82d9
    cpy #7                                                            ; 22d9: c0 07       ..  :82d9[1]
    bcs loop_c82d1                                                    ; 22db: b0 f4       ..  :82db[1]
    jsr sub_c82e8                                                     ; 22dd: 20 e8 82     .. :82dd[1]
    bne c82e6                                                         ; 22e0: d0 04       ..  :82e0[1]
    inx                                                               ; 22e2: e8          .   :82e2[1]
    iny                                                               ; 22e3: c8          .   :82e3[1]
    bne c82be                                                         ; 22e4: d0 d8       ..  :82e4[1]
; &22e6 referenced 3 times by &829b, &82d6, &82e0
.c82e6
    clc                                                               ; 22e6: 18          .   :82e6[1]
; &22e7 referenced 1 time by &82ca
.c82e7
    rts                                                               ; 22e7: 60          `   :82e7[1]

; &22e8 referenced 2 times by &82aa, &82dd
.sub_c82e8
    cmp l10ce                                                         ; 22e8: cd ce 10    ... :82e8[1]
    beq c82fd                                                         ; 22eb: f0 10       ..  :82eb[1]
    cmp l10cd                                                         ; 22ed: cd cd 10    ... :82ed[1]
    beq c82fd                                                         ; 22f0: f0 0b       ..  :82f0[1]
    jsr sub_c8327                                                     ; 22f2: 20 27 83     '. :82f2[1]
    eor (l00b6),y                                                     ; 22f5: 51 b6       Q.  :82f5[1]
    bcs c82fb                                                         ; 22f7: b0 02       ..  :82f7[1]
    and #&5f ; '_'                                                    ; 22f9: 29 5f       )_  :82f9[1]
; &22fb referenced 1 time by &82f7
.c82fb
    and #&7f                                                          ; 22fb: 29 7f       ).  :82fb[1]
; &22fd referenced 2 times by &82eb, &82f0
.c82fd
    rts                                                               ; 22fd: 60          `   :82fd[1]

; &22fe referenced 6 times by &8441, &8567, &857e, &858e, &aa2b, &aa3b
.sub_c82fe
    php                                                               ; 22fe: 08          .   :82fe[1]
    jsr sub_c8327                                                     ; 22ff: 20 27 83     '. :82ff[1]
    bcs c8306                                                         ; 2302: b0 02       ..  :8302[1]
    and #&5f ; '_'                                                    ; 2304: 29 5f       )_  :8304[1]
; &2306 referenced 1 time by &8302
.c8306
    and #&7f                                                          ; 2306: 29 7f       ).  :8306[1]
    plp                                                               ; 2308: 28          (   :8308[1]
    rts                                                               ; 2309: 60          `   :8309[1]

; &230a referenced 5 times by &878e, &87e3, &8a7f, &99c4, &a4f7
.sub_c830a
    jsr sub_c9a60                                                     ; 230a: 20 60 9a     `. :830a[1]
; &230d referenced 1 time by &831d
.loop_c830d
    lda l0e10,y                                                       ; 230d: b9 10 0e    ... :830d[1]
    sta l0e08,y                                                       ; 2310: 99 08 0e    ... :8310[1]
    lda l0f10,y                                                       ; 2313: b9 10 0f    ... :8313[1]
    sta l0f08,y                                                       ; 2316: 99 08 0f    ... :8316[1]
    iny                                                               ; 2319: c8          .   :8319[1]
    cpy l0f05                                                         ; 231a: cc 05 0f    ... :831a[1]
    bcc loop_c830d                                                    ; 231d: 90 ee       ..  :831d[1]
    tya                                                               ; 231f: 98          .   :831f[1]
    sbc #8                                                            ; 2320: e9 08       ..  :8320[1]
    sta l0f05                                                         ; 2322: 8d 05 0f    ... :8322[1]
    clc                                                               ; 2325: 18          .   :8325[1]
; &2326 referenced 1 time by &8338
.loop_c8326
    rts                                                               ; 2326: 60          `   :8326[1]

; &2327 referenced 4 times by &82f2, &82ff, &8736, &98a8
.sub_c8327
    pha                                                               ; 2327: 48          H   :8327[1]
    and #&5f ; '_'                                                    ; 2328: 29 5f       )_  :8328[1]
    cmp #&41 ; 'A'                                                    ; 232a: c9 41       .A  :832a[1]
    bcc c8332                                                         ; 232c: 90 04       ..  :832c[1]
    cmp #&5b ; '['                                                    ; 232e: c9 5b       .[  :832e[1]
    bcc c8333                                                         ; 2330: 90 01       ..  :8330[1]
; &2332 referenced 1 time by &832c
.c8332
    sec                                                               ; 2332: 38          8   :8332[1]
; &2333 referenced 1 time by &8330
.c8333
    pla                                                               ; 2333: 68          h   :8333[1]
    rts                                                               ; 2334: 60          `   :8334[1]

; &2335 referenced 5 times by &878b, &884f, &8a0d, &8b04, &a2ad
.sub_c8335
    bit l10c6                                                         ; 2335: 2c c6 10    ,.. :8335[1]
    bmi loop_c8326                                                    ; 2338: 30 ec       0.  :8338[1]
; &233a referenced 3 times by &825d, &a30f, &a482
.sub_c833a
    jsr sub_c83e3                                                     ; 233a: 20 e3 83     .. :833a[1]
    jsr sub_c8174                                                     ; 233d: 20 74 81     t. :833d[1]
    tya                                                               ; 2340: 98          .   :8340[1]
    pha                                                               ; 2341: 48          H   :8341[1]
    lda #&60 ; '`'                                                    ; 2342: a9 60       .`  :8342[1]
    sta l00b0                                                         ; 2344: 85 b0       ..  :8344[1]
    lda #&10                                                          ; 2346: a9 10       ..  :8346[1]
    sta l00b1                                                         ; 2348: 85 b1       ..  :8348[1]
    jsr sub_c8386                                                     ; 234a: 20 86 83     .. :834a[1]
    ldy #2                                                            ; 234d: a0 02       ..  :834d[1]
    jsr cac0f                                                         ; 234f: 20 0f ac     .. :834f[1]
    jsr sub_c836e                                                     ; 2352: 20 6e 83     n. :8352[1]
    jsr sub_c836e                                                     ; 2355: 20 6e 83     n. :8355[1]
    jsr sub_c836e                                                     ; 2358: 20 6e 83     n. :8358[1]
    pla                                                               ; 235b: 68          h   :835b[1]
    tay                                                               ; 235c: a8          .   :835c[1]
    lda l0f0e,y                                                       ; 235d: b9 0e 0f    ... :835d[1]
    and #3                                                            ; 2360: 29 03       ).  :8360[1]
    jsr sub_c80c3                                                     ; 2362: 20 c3 80     .. :8362[1]
    lda l0f0f,y                                                       ; 2365: b9 0f 0f    ... :8365[1]
    jsr sub_c80bb                                                     ; 2368: 20 bb 80     .. :8368[1]
    jmp ca3dc                                                         ; 236b: 4c dc a3    L.. :836b[1]

; &236e referenced 3 times by &8352, &8355, &8358
.sub_c836e
    ldx #3                                                            ; 236e: a2 03       ..  :836e[1]
; &2370 referenced 1 time by &8378
.loop_c8370
    lda l1062,y                                                       ; 2370: b9 62 10    .b. :8370[1]
    jsr sub_c80bb                                                     ; 2373: 20 bb 80     .. :8373[1]
    dey                                                               ; 2376: 88          .   :8376[1]
    dex                                                               ; 2377: ca          .   :8377[1]
    bne loop_c8370                                                    ; 2378: d0 f6       ..  :8378[1]
    jsr sub_c87db                                                     ; 237a: 20 db 87     .. :837a[1]
    jmp cac0f                                                         ; 237d: 4c 0f ac    L.. :837d[1]

; &2380 referenced 7 times by &89bd, &975e, &9bf8, &a26a, &a4d1, &a4ef, &a7fc
.sub_c8380
    jsr sub_c83e3                                                     ; 2380: 20 e3 83     .. :8380[1]
    jmp c940c                                                         ; 2383: 4c 0c 94    L.. :8383[1]

; &2386 referenced 5 times by &834a, &8821, &885f, &99b8, &99c1
.sub_c8386
    jsr sub_c83e3                                                     ; 2386: 20 e3 83     .. :8386[1]
    tya                                                               ; 2389: 98          .   :8389[1]
    pha                                                               ; 238a: 48          H   :838a[1]
    tax                                                               ; 238b: aa          .   :838b[1]
    ldy #&12                                                          ; 238c: a0 12       ..  :838c[1]
    lda #0                                                            ; 238e: a9 00       ..  :838e[1]
; &2390 referenced 1 time by &8395
.loop_c8390
    dey                                                               ; 2390: 88          .   :8390[1]
    sta (l00b0),y                                                     ; 2391: 91 b0       ..  :8391[1]
    cpy #2                                                            ; 2393: c0 02       ..  :8393[1]
    bne loop_c8390                                                    ; 2395: d0 f9       ..  :8395[1]
; &2397 referenced 1 time by &839e
.loop_c8397
    jsr sub_c83d1                                                     ; 2397: 20 d1 83     .. :8397[1]
    iny                                                               ; 239a: c8          .   :839a[1]
    iny                                                               ; 239b: c8          .   :839b[1]
    cpy #&0e                                                          ; 239c: c0 0e       ..  :839c[1]
    bne loop_c8397                                                    ; 239e: d0 f7       ..  :839e[1]
    pla                                                               ; 23a0: 68          h   :83a0[1]
    tax                                                               ; 23a1: aa          .   :83a1[1]
    lda l0e0f,x                                                       ; 23a2: bd 0f 0e    ... :83a2[1]
    bpl c83ab                                                         ; 23a5: 10 04       ..  :83a5[1]
    lda #8                                                            ; 23a7: a9 08       ..  :83a7[1]
    sta (l00b0),y                                                     ; 23a9: 91 b0       ..  :83a9[1]
; &23ab referenced 1 time by &83a5
.c83ab
    lda l0f0e,x                                                       ; 23ab: bd 0e 0f    ... :83ab[1]
    ldy #4                                                            ; 23ae: a0 04       ..  :83ae[1]
    jsr sub_c83bf                                                     ; 23b0: 20 bf 83     .. :83b0[1]
    ldy #&0c                                                          ; 23b3: a0 0c       ..  :83b3[1]
    lsr a                                                             ; 23b5: 4a          J   :83b5[1]
    lsr a                                                             ; 23b6: 4a          J   :83b6[1]
    pha                                                               ; 23b7: 48          H   :83b7[1]
    and #3                                                            ; 23b8: 29 03       ).  :83b8[1]
    sta (l00b0),y                                                     ; 23ba: 91 b0       ..  :83ba[1]
    pla                                                               ; 23bc: 68          h   :83bc[1]
    ldy #8                                                            ; 23bd: a0 08       ..  :83bd[1]
; &23bf referenced 1 time by &83b0
.sub_c83bf
    lsr a                                                             ; 23bf: 4a          J   :83bf[1]
    lsr a                                                             ; 23c0: 4a          J   :83c0[1]
    pha                                                               ; 23c1: 48          H   :83c1[1]
    and #3                                                            ; 23c2: 29 03       ).  :83c2[1]
    cmp #3                                                            ; 23c4: c9 03       ..  :83c4[1]
    bne c83cd                                                         ; 23c6: d0 05       ..  :83c6[1]
    lda #&ff                                                          ; 23c8: a9 ff       ..  :83c8[1]
    sta (l00b0),y                                                     ; 23ca: 91 b0       ..  :83ca[1]
    iny                                                               ; 23cc: c8          .   :83cc[1]
; &23cd referenced 1 time by &83c6
.c83cd
    sta (l00b0),y                                                     ; 23cd: 91 b0       ..  :83cd[1]
    pla                                                               ; 23cf: 68          h   :83cf[1]
    rts                                                               ; 23d0: 60          `   :83d0[1]

; &23d1 referenced 1 time by &8397
.sub_c83d1
    jsr sub_c83d4                                                     ; 23d1: 20 d4 83     .. :83d1[1]
; &23d4 referenced 1 time by &83d1
.sub_c83d4
    lda l0f08,x                                                       ; 23d4: bd 08 0f    ... :83d4[1]
    sta (l00b0),y                                                     ; 23d7: 91 b0       ..  :83d7[1]
    inx                                                               ; 23d9: e8          .   :83d9[1]
    iny                                                               ; 23da: c8          .   :83da[1]
    rts                                                               ; 23db: 60          `   :83db[1]

; &23dc referenced 4 times by &805b, &8064, &8086, &a9ab
.inc16_ae
    inc l00ae                                                         ; 23dc: e6 ae       ..  :83dc[1]
    bne c83e2                                                         ; 23de: d0 02       ..  :83de[1]
    inc l00af                                                         ; 23e0: e6 af       ..  :83e0[1]
; &23e2 referenced 1 time by &83de
.c83e2
    rts                                                               ; 23e2: 60          `   :83e2[1]

; &23e3 referenced 29 times by &809f, &8174, &82bb, &833a, &8380, &8386, &8951, &8a32, &96c3, &97cd, &993b, &99f3, &9a0f, &9a32, &9a63, &9ac8, &9ad8, &9b51, &9bf2, &9c10, &9d9b, &9f7c, &9f82, &a06c, &a190, &a1b4, &a379, &a384, &ac72
.sub_c83e3
    pha                                                               ; 23e3: 48          H   :83e3[1]
    txa                                                               ; 23e4: 8a          .   :83e4[1]
    pha                                                               ; 23e5: 48          H   :83e5[1]
    tya                                                               ; 23e6: 98          .   :83e6[1]
    pha                                                               ; 23e7: 48          H   :83e7[1]
    lda #&84                                                          ; 23e8: a9 84       ..  :83e8[1]
    pha                                                               ; 23ea: 48          H   :83ea[1]
    lda #5                                                            ; 23eb: a9 05       ..  :83eb[1]
    pha                                                               ; 23ed: 48          H   :83ed[1]
; &23ee referenced 1 time by &8411
.sub_c83ee
    ldy #5                                                            ; 23ee: a0 05       ..  :83ee[1]
; &23f0 referenced 1 time by &83f6
.loop_c83f0
    tsx                                                               ; 23f0: ba          .   :83f0[1]
    lda l0107,x                                                       ; 23f1: bd 07 01    ... :83f1[1]
    pha                                                               ; 23f4: 48          H   :83f4[1]
    dey                                                               ; 23f5: 88          .   :83f5[1]
    bne loop_c83f0                                                    ; 23f6: d0 f8       ..  :83f6[1]
    ldy #&0a                                                          ; 23f8: a0 0a       ..  :83f8[1]
; &23fa referenced 1 time by &8402
.loop_c83fa
    lda l0109,x                                                       ; 23fa: bd 09 01    ... :83fa[1]
    sta l010b,x                                                       ; 23fd: 9d 0b 01    ... :83fd[1]
    dex                                                               ; 2400: ca          .   :8400[1]
    dey                                                               ; 2401: 88          .   :8401[1]
    bne loop_c83fa                                                    ; 2402: d0 f6       ..  :8402[1]
    pla                                                               ; 2404: 68          h   :8404[1]
    pla                                                               ; 2405: 68          h   :8405[1]
; &2406 referenced 1 time by &8418
.loop_c8406
    pla                                                               ; 2406: 68          h   :8406[1]
    tay                                                               ; 2407: a8          .   :8407[1]
    pla                                                               ; 2408: 68          h   :8408[1]
    tax                                                               ; 2409: aa          .   :8409[1]
    pla                                                               ; 240a: 68          h   :840a[1]
    rts                                                               ; 240b: 60          `   :840b[1]

; &240c referenced 5 times by &841b, &9785, &9c16, &9e94, &aadd
.sub_c840c
    pha                                                               ; 240c: 48          H   :840c[1]
    txa                                                               ; 240d: 8a          .   :840d[1]
    pha                                                               ; 240e: 48          H   :840e[1]
    tya                                                               ; 240f: 98          .   :840f[1]
    pha                                                               ; 2410: 48          H   :8410[1]
    jsr sub_c83ee                                                     ; 2411: 20 ee 83     .. :8411[1]
    tsx                                                               ; 2414: ba          .   :8414[1]
    sta l0103,x                                                       ; 2415: 9d 03 01    ... :8415[1]
    jmp loop_c8406                                                    ; 2418: 4c 06 84    L.. :8418[1]

; &241b referenced 2 times by &80b8, &a9bf
.sub_c841b
    jsr sub_c840c                                                     ; 241b: 20 0c 84     .. :841b[1]
    tay                                                               ; 241e: a8          .   :841e[1]
    beq c842b                                                         ; 241f: f0 0a       ..  :841f[1]
    clc                                                               ; 2421: 18          .   :8421[1]
    sed                                                               ; 2422: f8          .   :8422[1]
    lda #0                                                            ; 2423: a9 00       ..  :8423[1]
; &2425 referenced 1 time by &8428
.loop_c8425
    adc #1                                                            ; 2425: 69 01       i.  :8425[1]
    dey                                                               ; 2427: 88          .   :8427[1]
    bne loop_c8425                                                    ; 2428: d0 fb       ..  :8428[1]
    cld                                                               ; 242a: d8          .   :842a[1]
; &242b referenced 1 time by &841f
.c842b
    rts                                                               ; 242b: 60          `   :842b[1]

; &242c referenced 1 time by &abb1
.sub_c842c
    and #&7f                                                          ; 242c: 29 7f       ).  :842c[1]
    cmp #&7f                                                          ; 242e: c9 7f       ..  :842e[1]
    beq c8436                                                         ; 2430: f0 04       ..  :8430[1]
    cmp #&20 ; ' '                                                    ; 2432: c9 20       .   :8432[1]
    bcs c8438                                                         ; 2434: b0 02       ..  :8434[1]
; &2436 referenced 1 time by &8430
.c8436
    lda #&2e ; '.'                                                    ; 2436: a9 2e       ..  :8436[1]
; &2438 referenced 1 time by &8434
.c8438
    rts                                                               ; 2438: 60          `   :8438[1]

; &2439 referenced 2 times by &8444, &8463
.sub_c8439
    sec                                                               ; 2439: 38          8   :8439[1]
    sbc #&30 ; '0'                                                    ; 243a: e9 30       .0  :843a[1]
    bcc c8454                                                         ; 243c: 90 16       ..  :843c[1]
    cmp #&0a                                                          ; 243e: c9 0a       ..  :843e[1]
    rts                                                               ; 2440: 60          `   :8440[1]

    jsr sub_c82fe                                                     ; 2441: 20 fe 82     .. :8441[1]
    jsr sub_c8439                                                     ; 2444: 20 39 84     9. :8444[1]
    bcc c8453                                                         ; 2447: 90 0a       ..  :8447[1]
    sbc #7                                                            ; 2449: e9 07       ..  :8449[1]
    bcc c8454                                                         ; 244b: 90 07       ..  :844b[1]
    cmp #&0a                                                          ; 244d: c9 0a       ..  :844d[1]
    bcc c8454                                                         ; 244f: 90 03       ..  :844f[1]
    cmp #&10                                                          ; 2451: c9 10       ..  :8451[1]
; &2453 referenced 1 time by &8447
.c8453
    rts                                                               ; 2453: 60          `   :8453[1]

; &2454 referenced 3 times by &843c, &844b, &844f
.c8454
    sec                                                               ; 2454: 38          8   :8454[1]
    rts                                                               ; 2455: 60          `   :8455[1]

; &2456 referenced 3 times by &87f7, &a5ce, &a9e7
.sub_c8456
    jsr clc_jmp_gsinit                                                ; 2456: 20 4c 87     L. :8456[1]
    sec                                                               ; 2459: 38          8   :8459[1]
    beq c8482                                                         ; 245a: f0 26       .&  :845a[1]
    php                                                               ; 245c: 08          .   :845c[1]
    lda #0                                                            ; 245d: a9 00       ..  :845d[1]
    sta l00b9                                                         ; 245f: 85 b9       ..  :845f[1]
    beq c8477                                                         ; 2461: f0 14       ..  :8461[1]
; &2463 referenced 1 time by &847a
.loop_c8463
    jsr sub_c8439                                                     ; 2463: 20 39 84     9. :8463[1]
    bcs c8481                                                         ; 2466: b0 19       ..  :8466[1]
    sta l00b8                                                         ; 2468: 85 b8       ..  :8468[1]
    lda l00b9                                                         ; 246a: a5 b9       ..  :846a[1]
    asl a                                                             ; 246c: 0a          .   :846c[1]
    sta l00b9                                                         ; 246d: 85 b9       ..  :846d[1]
    asl a                                                             ; 246f: 0a          .   :846f[1]
    asl a                                                             ; 2470: 0a          .   :8470[1]
    adc l00b9                                                         ; 2471: 65 b9       e.  :8471[1]
    adc l00b8                                                         ; 2473: 65 b8       e.  :8473[1]
    sta l00b9                                                         ; 2475: 85 b9       ..  :8475[1]
; &2477 referenced 1 time by &8461
.c8477
    jsr gsread                                                        ; 2477: 20 c5 ff     .. :8477[1]
    bcc loop_c8463                                                    ; 247a: 90 e7       ..  :847a[1]
    lda l00b9                                                         ; 247c: a5 b9       ..  :847c[1]
    plp                                                               ; 247e: 28          (   :847e[1]
    clc                                                               ; 247f: 18          .   :847f[1]
    rts                                                               ; 2480: 60          `   :8480[1]

; &2481 referenced 1 time by &8466
.c8481
    plp                                                               ; 2481: 28          (   :8481[1]
; &2482 referenced 1 time by &845a
.c8482
    rts                                                               ; 2482: 60          `   :8482[1]

    jsr sub_c8745                                                     ; 2483: 20 45 87     E. :8483[1]
    jsr sub_c8b86                                                     ; 2486: 20 86 8b     .. :8486[1]
    jsr c940c                                                         ; 2489: 20 0c 94     .. :8489[1]
    ldy #&ff                                                          ; 248c: a0 ff       ..  :848c[1]
    sty l00a8                                                         ; 248e: 84 a8       ..  :848e[1]
    iny                                                               ; 2490: c8          .   :8490[1]
    sty l00aa                                                         ; 2491: 84 aa       ..  :8491[1]
; &2493 referenced 1 time by &84a3
.loop_c8493
    lda l0e00,y                                                       ; 2493: b9 00 0e    ... :8493[1]
    cpy #8                                                            ; 2496: c0 08       ..  :8496[1]
    bcc c849d                                                         ; 2498: 90 03       ..  :8498[1]
    lda l0ef8,y                                                       ; 249a: b9 f8 0e    ... :849a[1]
; &249d referenced 1 time by &8498
.c849d
    jsr c809f                                                         ; 249d: 20 9f 80     .. :849d[1]
    iny                                                               ; 24a0: c8          .   :84a0[1]
    cpy #&0c                                                          ; 24a1: c0 0c       ..  :84a1[1]
    bne loop_c8493                                                    ; 24a3: d0 ee       ..  :84a3[1]
    jsr print_inline_l809f_top_bit_clear                              ; 24a5: 20 77 80     w. :84a5[1]
    equs " ("                                                         ; 24a8: 20 28        (  :84a8[1]

    lda l0f04                                                         ; 24aa: ad 04 0f    ... :84aa[1]
    jsr sub_c80bb                                                     ; 24ad: 20 bb 80     .. :84ad[1]
    jsr print_inline_l809f_top_bit_clear                              ; 24b0: 20 77 80     w. :84b0[1]
    equs ") FM", &0d, "Drive "                                        ; 24b3: 29 20 46... ) F :84b3[1]

    lda l00cd                                                         ; 24be: a5 cd       ..  :84be[1]
    jsr sub_c80c3                                                     ; 24c0: 20 c3 80     .. :84c0[1]
    ldy #&0d                                                          ; 24c3: a0 0d       ..  :84c3[1]
    jsr c81a7                                                         ; 24c5: 20 a7 81     .. :84c5[1]
    jsr print_inline_l809f_top_bit_clear                              ; 24c8: 20 77 80     w. :84c8[1]
    equs "Option "                                                    ; 24cb: 4f 70 74... Opt :84cb[1]

    lda l0f06                                                         ; 24d2: ad 06 0f    ... :84d2[1]
    jsr sub_c81bf                                                     ; 24d5: 20 bf 81     .. :84d5[1]
    pha                                                               ; 24d8: 48          H   :84d8[1]
    jsr sub_c80c3                                                     ; 24d9: 20 c3 80     .. :84d9[1]
    jsr print_inline_l809f_top_bit_clear                              ; 24dc: 20 77 80     w. :84dc[1]
    equs " ("                                                         ; 24df: 20 28        (  :84df[1]

    ldy #3                                                            ; 24e1: a0 03       ..  :84e1[1]
    pla                                                               ; 24e3: 68          h   :84e3[1]
    asl a                                                             ; 24e4: 0a          .   :84e4[1]
    asl a                                                             ; 24e5: 0a          .   :84e5[1]
    tax                                                               ; 24e6: aa          .   :84e6[1]
; &24e7 referenced 1 time by &84ef
.loop_c84e7
    lda opt4_table,x                                                  ; 24e7: bd d3 85    ... :84e7[1]
    jsr c809f                                                         ; 24ea: 20 9f 80     .. :84ea[1]
    inx                                                               ; 24ed: e8          .   :84ed[1]
    dey                                                               ; 24ee: 88          .   :84ee[1]
    bpl loop_c84e7                                                    ; 24ef: 10 f6       ..  :84ef[1]
    jsr print_inline_l809f_top_bit_clear                              ; 24f1: 20 77 80     w. :84f1[1]
    equs ")", &0d, "Dir. :"                                           ; 24f4: 29 0d 44... ).D :84f4[1]

    lda l10ca                                                         ; 24fc: ad ca 10    ... :84fc[1]
    jsr sub_c809a                                                     ; 24ff: 20 9a 80     .. :84ff[1]
    lda l10c9                                                         ; 2502: ad c9 10    ... :8502[1]
    jsr c809f                                                         ; 2505: 20 9f 80     .. :8505[1]
    ldy #&0b                                                          ; 2508: a0 0b       ..  :8508[1]
    jsr c81a7                                                         ; 250a: 20 a7 81     .. :850a[1]
    jsr print_inline_l809f_top_bit_clear                              ; 250d: 20 77 80     w. :850d[1]
    equs "Lib. :"                                                     ; 2510: 4c 69 62... Lib :8510[1]

    lda l10cc                                                         ; 2516: ad cc 10    ... :8516[1]
    jsr sub_c809a                                                     ; 2519: 20 9a 80     .. :8519[1]
    lda l10cb                                                         ; 251c: ad cb 10    ... :851c[1]
    jsr c809f                                                         ; 251f: 20 9f 80     .. :851f[1]
    jsr ca3dc                                                         ; 2522: 20 dc a3     .. :8522[1]
    ldy #0                                                            ; 2525: a0 00       ..  :8525[1]
; &2527 referenced 1 time by &8541
.loop_c8527
    cpy l0f05                                                         ; 2527: cc 05 0f    ... :8527[1]
    bcs c8543                                                         ; 252a: b0 17       ..  :852a[1]
    lda l0e0f,y                                                       ; 252c: b9 0f 0e    ... :852c[1]
    eor l10c9                                                         ; 252f: 4d c9 10    M.. :852f[1]
    and #&5f ; '_'                                                    ; 2532: 29 5f       )_  :8532[1]
    bne c853e                                                         ; 2534: d0 08       ..  :8534[1]
    lda l0e0f,y                                                       ; 2536: b9 0f 0e    ... :8536[1]
    and #&80                                                          ; 2539: 29 80       ).  :8539[1]
    sta l0e0f,y                                                       ; 253b: 99 0f 0e    ... :853b[1]
; &253e referenced 1 time by &8534
.c853e
    jsr sub_c87da                                                     ; 253e: 20 da 87     .. :853e[1]
    bcc loop_c8527                                                    ; 2541: 90 e4       ..  :8541[1]
; &2543 referenced 2 times by &852a, &85d0
.c8543
    ldy #0                                                            ; 2543: a0 00       ..  :8543[1]
    jsr sub_c8555                                                     ; 2545: 20 55 85     U. :8545[1]
    bcc c8560                                                         ; 2548: 90 16       ..  :8548[1]
    lda #&ff                                                          ; 254a: a9 ff       ..  :854a[1]
    sta l1082                                                         ; 254c: 8d 82 10    ... :854c[1]
    jmp ca3dc                                                         ; 254f: 4c dc a3    L.. :854f[1]

; &2552 referenced 1 time by &855d
.loop_c8552
    jsr sub_c87da                                                     ; 2552: 20 da 87     .. :8552[1]
; &2555 referenced 2 times by &8545, &8573
.sub_c8555
    cpy l0f05                                                         ; 2555: cc 05 0f    ... :8555[1]
    bcs c855f                                                         ; 2558: b0 05       ..  :8558[1]
    lda l0e08,y                                                       ; 255a: b9 08 0e    ... :855a[1]
    bmi loop_c8552                                                    ; 255d: 30 f3       0.  :855d[1]
; &255f referenced 1 time by &8558
.c855f
    rts                                                               ; 255f: 60          `   :855f[1]

; &2560 referenced 2 times by &8548, &8594
.c8560
    sty l00ab                                                         ; 2560: 84 ab       ..  :8560[1]
    ldx #0                                                            ; 2562: a2 00       ..  :8562[1]
; &2564 referenced 1 time by &8571
.loop_c8564
    lda l0e08,y                                                       ; 2564: b9 08 0e    ... :8564[1]
    jsr sub_c82fe                                                     ; 2567: 20 fe 82     .. :8567[1]
    sta l1060,x                                                       ; 256a: 9d 60 10    .`. :856a[1]
    iny                                                               ; 256d: c8          .   :856d[1]
    inx                                                               ; 256e: e8          .   :856e[1]
    cpx #8                                                            ; 256f: e0 08       ..  :856f[1]
    bne loop_c8564                                                    ; 2571: d0 f1       ..  :8571[1]
; &2573 referenced 1 time by &8599
.c8573
    jsr sub_c8555                                                     ; 2573: 20 55 85     U. :8573[1]
    bcs c859b                                                         ; 2576: b0 23       .#  :8576[1]
    sec                                                               ; 2578: 38          8   :8578[1]
    ldx #6                                                            ; 2579: a2 06       ..  :8579[1]
; &257b referenced 1 time by &8586
.loop_c857b
    lda l0e0e,y                                                       ; 257b: b9 0e 0e    ... :857b[1]
    jsr sub_c82fe                                                     ; 257e: 20 fe 82     .. :857e[1]
    sbc l1060,x                                                       ; 2581: fd 60 10    .`. :8581[1]
    dey                                                               ; 2584: 88          .   :8584[1]
    dex                                                               ; 2585: ca          .   :8585[1]
    bpl loop_c857b                                                    ; 2586: 10 f3       ..  :8586[1]
    jsr sub_c87db                                                     ; 2588: 20 db 87     .. :8588[1]
    lda l0e0f,y                                                       ; 258b: b9 0f 0e    ... :858b[1]
    jsr sub_c82fe                                                     ; 258e: 20 fe 82     .. :858e[1]
    sbc l1067                                                         ; 2591: ed 67 10    .g. :8591[1]
    bcc c8560                                                         ; 2594: 90 ca       ..  :8594[1]
    jsr sub_c87da                                                     ; 2596: 20 da 87     .. :8596[1]
    bcs c8573                                                         ; 2599: b0 d8       ..  :8599[1]
; &259b referenced 1 time by &8576
.c859b
    ldy l00ab                                                         ; 259b: a4 ab       ..  :859b[1]
    lda l0e08,y                                                       ; 259d: b9 08 0e    ... :859d[1]
    ora #&80                                                          ; 25a0: 09 80       ..  :85a0[1]
    sta l0e08,y                                                       ; 25a2: 99 08 0e    ... :85a2[1]
    lda l1067                                                         ; 25a5: ad 67 10    .g. :85a5[1]
    cmp l00aa                                                         ; 25a8: c5 aa       ..  :85a8[1]
    beq c85bc                                                         ; 25aa: f0 10       ..  :85aa[1]
    ldx l00aa                                                         ; 25ac: a6 aa       ..  :85ac[1]
    sta l00aa                                                         ; 25ae: 85 aa       ..  :85ae[1]
    bne c85bc                                                         ; 25b0: d0 0a       ..  :85b0[1]
    jsr ca3dc                                                         ; 25b2: 20 dc a3     .. :85b2[1]
; &25b5 referenced 1 time by &85be
.loop_c85b5
    jsr ca3dc                                                         ; 25b5: 20 dc a3     .. :85b5[1]
    ldy #&ff                                                          ; 25b8: a0 ff       ..  :85b8[1]
    bne c85c5                                                         ; 25ba: d0 09       ..  :85ba[1]
; &25bc referenced 2 times by &85aa, &85b0
.c85bc
    ldy l00a8                                                         ; 25bc: a4 a8       ..  :85bc[1]
    bne loop_c85b5                                                    ; 25be: d0 f5       ..  :85be[1]
    ldy #5                                                            ; 25c0: a0 05       ..  :85c0[1]
    jsr c81a7                                                         ; 25c2: 20 a7 81     .. :85c2[1]
; &25c5 referenced 1 time by &85ba
.c85c5
    iny                                                               ; 25c5: c8          .   :85c5[1]
    sty l00a8                                                         ; 25c6: 84 a8       ..  :85c6[1]
    ldy l00ab                                                         ; 25c8: a4 ab       ..  :85c8[1]
    jsr sub_cac0c                                                     ; 25ca: 20 0c ac     .. :85ca[1]
    jsr sub_c8174                                                     ; 25cd: 20 74 81     t. :85cd[1]
    jmp c8543                                                         ; 25d0: 4c 43 85    LC. :85d0[1]

; &25d3 referenced 1 time by &84e7
.opt4_table
    equs "off", 0                                                     ; 25d3: 6f 66 66... off :85d3[1]
    equs "LOAD"                                                       ; 25d7: 4c 4f 41... LOA :85d7[1]
    equs "RUN", 0                                                     ; 25db: 52 55 4e... RUN :85db[1]
    equs "EXEC"                                                       ; 25df: 45 58 45... EXE :85df[1]

; &25e3 referenced 1 time by &8acd
.sub_c85e3
    lda l0f0e,y                                                       ; 25e3: b9 0e 0f    ... :85e3[1]
    jsr sub_c81b0                                                     ; 25e6: 20 b0 81     .. :85e6[1]
    sta l00c2                                                         ; 25e9: 85 c2       ..  :85e9[1]
    clc                                                               ; 25eb: 18          .   :85eb[1]
    lda #&ff                                                          ; 25ec: a9 ff       ..  :85ec[1]
    adc l0f0c,y                                                       ; 25ee: 79 0c 0f    y.. :85ee[1]
    lda l0f0f,y                                                       ; 25f1: b9 0f 0f    ... :85f1[1]
    adc l0f0d,y                                                       ; 25f4: 79 0d 0f    y.. :85f4[1]
    sta l00c3                                                         ; 25f7: 85 c3       ..  :85f7[1]
    lda l0f0e,y                                                       ; 25f9: b9 0e 0f    ... :85f9[1]
    and #3                                                            ; 25fc: 29 03       ).  :85fc[1]
    adc l00c2                                                         ; 25fe: 65 c2       e.  :85fe[1]
    sta l00c2                                                         ; 2600: 85 c2       ..  :8600[1]
; &2602 referenced 1 time by &8ac2
.sub_c8602
    sec                                                               ; 2602: 38          8   :8602[1]
    lda l0f07,y                                                       ; 2603: b9 07 0f    ... :8603[1]
    sbc l00c3                                                         ; 2606: e5 c3       ..  :8606[1]
    pha                                                               ; 2608: 48          H   :8608[1]
    lda l0f06,y                                                       ; 2609: b9 06 0f    ... :8609[1]
    and #3                                                            ; 260c: 29 03       ).  :860c[1]
    sbc l00c2                                                         ; 260e: e5 c2       ..  :860e[1]
    tax                                                               ; 2610: aa          .   :8610[1]
    lda #0                                                            ; 2611: a9 00       ..  :8611[1]
    cmp l00c0                                                         ; 2613: c5 c0       ..  :8613[1]
    pla                                                               ; 2615: 68          h   :8615[1]
    sbc l00c1                                                         ; 2616: e5 c1       ..  :8616[1]
    txa                                                               ; 2618: 8a          .   :8618[1]
    sbc l00c4                                                         ; 2619: e5 c4       ..  :8619[1]
    rts                                                               ; 261b: 60          `   :861b[1]

; &261c referenced 6 times by &870e, &8719, &8726, &873c, &a16f, &a187
.command_table
    equs "ACCESS"                                                     ; 261c: 41 43 43... ACC :861c[1]
; &261d referenced 1 time by &8740
    equb >(sub_c89e6-1)                                               ; 2622: 89          .   :8622[1]
    equb <(sub_c89e6-1)                                               ; 2623: e5          .   :8623[1]
    equb &32                                                          ; 2624: 32          2   :8624[1]
    equs "BACKUP"                                                     ; 2625: 42 41 43... BAC :8625[1]
    equb >(sub_ca417-1)                                               ; 262b: a4          .   :862b[1]
    equb <(sub_ca417-1)                                               ; 262c: 16          .   :862c[1]
    equb 4                                                            ; 262d: 04          .   :862d[1]
    equs "CLOSE"                                                      ; 262e: 43 4c 4f... CLO :862e[1]
    equb >(sub_c9b59-1)                                               ; 2633: 9b          .   :8633[1]
    equb <(sub_c9b59-1)                                               ; 2634: 58          X   :8634[1]
    equb 0                                                            ; 2635: 00          .   :8635[1]
    equs "COMPACT"                                                    ; 2636: 43 4f 4d... COM :8636[1]
    equb >(sub_ca244-1)                                               ; 263d: a2          .   :863d[1]
    equb <(sub_ca244-1)                                               ; 263e: 43          C   :863e[1]
    equb 7                                                            ; 263f: 07          .   :863f[1]
    equs "COPY"                                                       ; 2640: 43 4f 50... COP :8640[1]
    equb >(sub_ca463-1)                                               ; 2644: a4          .   :8644[1]
    equb <(sub_ca463-1)                                               ; 2645: 62          b   :8645[1]
    equb &24                                                          ; 2646: 24          $   :8646[1]
    equs "DELETE"                                                     ; 2647: 44 45 4c... DEL :8647[1]
    equb >(sub_c8782-1)                                               ; 264d: 87          .   :864d[1]
    equb <(sub_c8782-1)                                               ; 264e: 81          .   :864e[1]
    equb 1                                                            ; 264f: 01          .   :864f[1]
    equs "DESTROY"                                                    ; 2650: 44 45 53... DES :8650[1]
    equb >(sub_c8794-1)                                               ; 2657: 87          .   :8657[1]
    equb <(sub_c8794-1)                                               ; 2658: 93          .   :8658[1]
    equb 2                                                            ; 2659: 02          .   :8659[1]
    equs "DIR"                                                        ; 265a: 44 49 52    DIR :865a[1]
    equb >(sub_c893f-1)                                               ; 265d: 89          .   :865d[1]
    equb <(sub_c893f-1)                                               ; 265e: 3e          >   :865e[1]
    equb 6                                                            ; 265f: 06          .   :865f[1]
    equs "DRIVE"                                                      ; 2660: 44 52 49... DRI :8660[1]
    equb >(sub_c87ee-1)                                               ; 2665: 87          .   :8665[1]
    equb <(sub_c87ee-1)                                               ; 2666: ed          .   :8666[1]
    equb 9                                                            ; 2667: 09          .   :8667[1]
    equs "ENABLE"                                                     ; 2668: 45 4e 41... ENA :8668[1]
    equb >(sub_c8b47-1)                                               ; 266e: 8b          .   :866e[1]
    equb <(sub_c8b47-1)                                               ; 266f: 46          F   :866f[1]
    equb 0                                                            ; 2670: 00          .   :8670[1]
    equs "EX"                                                         ; 2671: 45 58       EX  :8671[1]
    equb >(sub_c8238-1)                                               ; 2673: 82          .   :8673[1]
    equb <(sub_c8238-1)                                               ; 2674: 37          7   :8674[1]
    equb 6                                                            ; 2675: 06          .   :8675[1]
    equs "FORM"                                                       ; 2676: 46 4f 52... FOR :8676[1]
    equb >(sub_ca5bf-1)                                               ; 267a: a5          .   :867a[1]
    equb <(sub_ca5bf-1)                                               ; 267b: be          .   :867b[1]
    equb &ba                                                          ; 267c: ba          .   :867c[1]
    equs "FREE"                                                       ; 267d: 46 52 45... FRE :867d[1]
    equb >(sub_ca7f3-1)                                               ; 2681: a7          .   :8681[1]
    equb <(sub_ca7f3-1)                                               ; 2682: f2          .   :8682[1]
    equb 7                                                            ; 2683: 07          .   :8683[1]
    equs "INFO"                                                       ; 2684: 49 4e 46... INF :8684[1]
    equb >(sub_c8254-1)                                               ; 2688: 82          .   :8688[1]
    equb <(sub_c8254-1)                                               ; 2689: 53          S   :8689[1]
    equb 2                                                            ; 268a: 02          .   :868a[1]
    equs "LIB"                                                        ; 268b: 4c 49 42    LIB :868b[1]
    equb >(sub_c8943-1)                                               ; 268e: 89          .   :868e[1]
    equb <(sub_c8943-1)                                               ; 268f: 42          B   :868f[1]
    equb 6                                                            ; 2690: 06          .   :8690[1]
    equs "MAP"                                                        ; 2691: 4d 41 50    MAP :8691[1]
    equb >(sub_ca7f6-1)                                               ; 2694: a7          .   :8694[1]
    equb <(sub_ca7f6-1)                                               ; 2695: f5          .   :8695[1]
    equb 7                                                            ; 2696: 07          .   :8696[1]
    equs "RENAME"                                                     ; 2697: 52 45 4e... REN :8697[1]
    equb >(sub_c8bac-1)                                               ; 269d: 8b          .   :869d[1]
    equb <(sub_c8bac-1)                                               ; 269e: ab          .   :869e[1]
    equb 5                                                            ; 269f: 05          .   :869f[1]
    equs "TITLE"                                                      ; 26a0: 54 49 54... TIT :86a0[1]
    equb >(sub_c89b7-1)                                               ; 26a5: 89          .   :86a5[1]
    equb <(sub_c89b7-1)                                               ; 26a6: b6          .   :86a6[1]
    equb 8                                                            ; 26a7: 08          .   :86a7[1]
    equs "VERIFY"                                                     ; 26a8: 56 45 52... VER :86a8[1]
    equb >(sub_ca5bb-1)                                               ; 26ae: a5          .   :86ae[1]
    equb <(sub_ca5bb-1)                                               ; 26af: ba          .   :86af[1]
    equb &0b                                                          ; 26b0: 0b          .   :86b0[1]
    equs "WIPE"                                                       ; 26b1: 57 49 50... WIP :86b1[1]
    equb >(sub_c8750-1)                                               ; 26b5: 87          .   :86b5[1]
    equb <(sub_c8750-1)                                               ; 26b6: 4f          O   :86b6[1]
    equb   2, &88, &72                                                ; 26b7: 02 88 72    ..r :86b7[1]
    equs "BUILD"                                                      ; 26ba: 42 55 49... BUI :86ba[1]
    equb >(sub_cabc5-1)                                               ; 26bf: ab          .   :86bf[1]
    equb <(sub_cabc5-1)                                               ; 26c0: c4          .   :86c0[1]
    equb 1                                                            ; 26c1: 01          .   :86c1[1]
    equs "DISC"                                                       ; 26c2: 44 49 53... DIS :86c2[1]
    equb >(c956d-1)                                                   ; 26c6: 95          .   :86c6[1]
    equb <(c956d-1)                                                   ; 26c7: 6c          l   :86c7[1]
    equb 0                                                            ; 26c8: 00          .   :86c8[1]
    equs "DUMP"                                                       ; 26c9: 44 55 4d... DUM :86c9[1]
    equb >(sub_cab46-1)                                               ; 26cd: ab          .   :86cd[1]
    equb <(sub_cab46-1)                                               ; 26ce: 45          E   :86ce[1]
    equb 1                                                            ; 26cf: 01          .   :86cf[1]
    equs "LIST"                                                       ; 26d0: 4c 49 53... LIS :86d0[1]
    equb >(sub_cab04-1)                                               ; 26d4: ab          .   :86d4[1]
    equb <(sub_cab04-1)                                               ; 26d5: 03          .   :86d5[1]
    equb 1                                                            ; 26d6: 01          .   :86d6[1]
    equs "ROMS"                                                       ; 26d7: 52 4f 4d... ROM :86d7[1]
    equb >(sub_ca9d0-1)                                               ; 26db: a9          .   :86db[1]
    equb <(sub_ca9d0-1)                                               ; 26dc: cf          .   :86dc[1]
    equb &0c                                                          ; 26dd: 0c          .   :86dd[1]
    equs "TYPE"                                                       ; 26de: 54 59 50... TYP :86de[1]
    equb >(sub_caafd-1)                                               ; 26e2: aa          .   :86e2[1]
    equb <(sub_caafd-1)                                               ; 26e3: fc          .   :86e3[1]
    equb 1                                                            ; 26e4: 01          .   :86e4[1]
    equs "DISK"                                                       ; 26e5: 44 49 53... DIS :86e5[1]
    equb >(c956d-1)                                                   ; 26e9: 95          .   :86e9[1]
    equb <(c956d-1)                                                   ; 26ea: 6c          l   :86ea[1]
    equb   0, &86, &1a                                                ; 26eb: 00 86 1a    ... :86eb[1]
    equs "DFS"                                                        ; 26ee: 44 46 53    DFS :86ee[1]
    equb >(sub_ca106-1)                                               ; 26f1: a1          .   :86f1[1]
    equb <(sub_ca106-1)                                               ; 26f2: 05          .   :86f2[1]
    equb 0                                                            ; 26f3: 00          .   :86f3[1]
    equs "UTILS"                                                      ; 26f4: 55 54 49... UTI :86f4[1]
    equb >(sub_ca137-1)                                               ; 26f9: a1          .   :86f9[1]
    equb <(sub_ca137-1)                                               ; 26fa: 36          6   :86fa[1]
    equb   0, &a1                                                     ; 26fb: 00 a1       ..  :86fb[1]
    equs "= E"                                                        ; 26fd: 3d 20 45    = E :86fd[1]
    equb &87, &a2, &fd                                                ; 2700: 87 a2 fd    ... :8700[1]

; &2703 referenced 2 times by &96f2, &a134
.c8703
    tya                                                               ; 2703: 98          .   :8703[1]
    pha                                                               ; 2704: 48          H   :8704[1]
; &2705 referenced 2 times by &872f, &8739
.c8705
    inx                                                               ; 2705: e8          .   :8705[1]
    inx                                                               ; 2706: e8          .   :8706[1]
    pla                                                               ; 2707: 68          h   :8707[1]
    pha                                                               ; 2708: 48          H   :8708[1]
    tay                                                               ; 2709: a8          .   :8709[1]
    jsr clc_jmp_gsinit                                                ; 270a: 20 4c 87     L. :870a[1]
    inx                                                               ; 270d: e8          .   :870d[1]
    lda command_table,x                                               ; 270e: bd 1c 86    ... :870e[1]
    bmi c873b                                                         ; 2711: 30 28       0(  :8711[1]
    dex                                                               ; 2713: ca          .   :8713[1]
    dey                                                               ; 2714: 88          .   :8714[1]
    stx l00bf                                                         ; 2715: 86 bf       ..  :8715[1]
; &2717 referenced 1 time by &8722
.loop_c8717
    inx                                                               ; 2717: e8          .   :8717[1]
    iny                                                               ; 2718: c8          .   :8718[1]
    lda command_table,x                                               ; 2719: bd 1c 86    ... :8719[1]
    bmi c8734                                                         ; 271c: 30 16       0.  :871c[1]
    eor (os_text_ptr),y                                               ; 271e: 51 f2       Q.  :871e[1]
    and #&5f ; '_'                                                    ; 2720: 29 5f       )_  :8720[1]
    beq loop_c8717                                                    ; 2722: f0 f3       ..  :8722[1]
    dex                                                               ; 2724: ca          .   :8724[1]
; &2725 referenced 1 time by &8729
.loop_c8725
    inx                                                               ; 2725: e8          .   :8725[1]
    lda command_table,x                                               ; 2726: bd 1c 86    ... :8726[1]
    bpl loop_c8725                                                    ; 2729: 10 fa       ..  :8729[1]
    lda (os_text_ptr),y                                               ; 272b: b1 f2       ..  :872b[1]
    cmp #&2e ; '.'                                                    ; 272d: c9 2e       ..  :872d[1]
    bne c8705                                                         ; 272f: d0 d4       ..  :872f[1]
    iny                                                               ; 2731: c8          .   :8731[1]
    bcs c873b                                                         ; 2732: b0 07       ..  :8732[1]
; &2734 referenced 1 time by &871c
.c8734
    lda (os_text_ptr),y                                               ; 2734: b1 f2       ..  :8734[1]
    jsr sub_c8327                                                     ; 2736: 20 27 83     '. :8736[1]
    bcc c8705                                                         ; 2739: 90 ca       ..  :8739[1]
; &273b referenced 2 times by &8711, &8732
.c873b
    pla                                                               ; 273b: 68          h   :873b[1]
    lda command_table,x                                               ; 273c: bd 1c 86    ... :873c[1]
    pha                                                               ; 273f: 48          H   :873f[1]
    lda command_table+1,x                                             ; 2740: bd 1d 86    ... :8740[1]
    pha                                                               ; 2743: 48          H   :8743[1]
    rts                                                               ; 2744: 60          `   :8744[1]

; &2745 referenced 2 times by &8483, &8870
.sub_c8745
    stx os_text_ptr                                                   ; 2745: 86 f2       ..  :8745[1]
    sty l00f3                                                         ; 2747: 84 f3       ..  :8747[1]
    ldy #0                                                            ; 2749: a0 00       ..  :8749[1]
    rts                                                               ; 274b: 60          `   :874b[1]

; &274c referenced 12 times by &8100, &823b, &8456, &870a, &897e, &89f1, &8b86, &a13e, &a14a, &a5e5, &a657, &a9f7
.clc_jmp_gsinit
    clc                                                               ; 274c: 18          .   :874c[1]
    jmp gsinit                                                        ; 274d: 4c c2 ff    L.. :874d[1]

.sub_c8750
    jsr sub_c99ac                                                     ; 2750: 20 ac 99     .. :8750[1]
    jsr sub_ca14a                                                     ; 2753: 20 4a a1     J. :8753[1]
    jsr sub_c821d                                                     ; 2756: 20 1d 82     .. :8756[1]
; &2759 referenced 1 time by &877f
.c8759
    lda l0e0f,y                                                       ; 2759: b9 0f 0e    ... :8759[1]
    bmi c877c                                                         ; 275c: 30 1e       0.  :875c[1]
    jsr sub_c8174                                                     ; 275e: 20 74 81     t. :875e[1]
    jsr sub_ca3e4                                                     ; 2761: 20 e4 a3     .. :8761[1]
    bne c8779                                                         ; 2764: d0 13       ..  :8764[1]
    ldx l00b6                                                         ; 2766: a6 b6       ..  :8766[1]
    jsr sub_c9bf2                                                     ; 2768: 20 f2 9b     .. :8768[1]
    stx l00b6                                                         ; 276b: 86 b6       ..  :876b[1]
    jsr sub_c87e3                                                     ; 276d: 20 e3 87     .. :876d[1]
    sty l00ab                                                         ; 2770: 84 ab       ..  :8770[1]
    jsr c93e6                                                         ; 2772: 20 e6 93     .. :8772[1]
    lda l00ab                                                         ; 2775: a5 ab       ..  :8775[1]
    sta l00b6                                                         ; 2777: 85 b6       ..  :8777[1]
; &2779 referenced 1 time by &8764
.c8779
    jsr ca3dc                                                         ; 2779: 20 dc a3     .. :8779[1]
; &277c referenced 1 time by &875c
.c877c
    jsr sub_c8280                                                     ; 277c: 20 80 82     .. :877c[1]
    bcs c8759                                                         ; 277f: b0 d8       ..  :877f[1]
    rts                                                               ; 2781: 60          `   :8781[1]

.sub_c8782
    jsr c99a3                                                         ; 2782: 20 a3 99     .. :8782[1]
    jsr sub_ca14a                                                     ; 2785: 20 4a a1     J. :8785[1]
    jsr sub_c821d                                                     ; 2788: 20 1d 82     .. :8788[1]
    jsr sub_c8335                                                     ; 278b: 20 35 83     5. :878b[1]
    jsr sub_c830a                                                     ; 278e: 20 0a 83     .. :878e[1]
    jmp c93e6                                                         ; 2791: 4c e6 93    L.. :8791[1]

.sub_c8794
    jsr sub_ca315                                                     ; 2794: 20 15 a3     .. :8794[1]
    jsr sub_c99ac                                                     ; 2797: 20 ac 99     .. :8797[1]
    jsr sub_ca14a                                                     ; 279a: 20 4a a1     J. :879a[1]
    jsr sub_c821d                                                     ; 279d: 20 1d 82     .. :879d[1]
; &27a0 referenced 1 time by &87ae
.loop_c87a0
    lda l0e0f,y                                                       ; 27a0: b9 0f 0e    ... :87a0[1]
    bmi c87ab                                                         ; 27a3: 30 06       0.  :87a3[1]
    jsr sub_c8174                                                     ; 27a5: 20 74 81     t. :87a5[1]
    jsr ca3dc                                                         ; 27a8: 20 dc a3     .. :87a8[1]
; &27ab referenced 1 time by &87a3
.c87ab
    jsr sub_c8280                                                     ; 27ab: 20 80 82     .. :87ab[1]
    bcs loop_c87a0                                                    ; 27ae: b0 f0       ..  :87ae[1]
    jsr sub_ca3ec                                                     ; 27b0: 20 ec a3     .. :87b0[1]
    beq c87b8                                                         ; 27b3: f0 03       ..  :87b3[1]
    jmp ca3dc                                                         ; 27b5: 4c dc a3    L.. :87b5[1]

; &27b8 referenced 1 time by &87b3
.c87b8
    jsr sub_c9bf2                                                     ; 27b8: 20 f2 9b     .. :87b8[1]
    jsr sub_c8284                                                     ; 27bb: 20 84 82     .. :87bb[1]
; &27be referenced 1 time by &87c9
.loop_c87be
    lda l0e0f,y                                                       ; 27be: b9 0f 0e    ... :87be[1]
    bmi c87c6                                                         ; 27c1: 30 03       0.  :87c1[1]
    jsr sub_c87e3                                                     ; 27c3: 20 e3 87     .. :87c3[1]
; &27c6 referenced 1 time by &87c1
.c87c6
    jsr sub_c8280                                                     ; 27c6: 20 80 82     .. :87c6[1]
    bcs loop_c87be                                                    ; 27c9: b0 f3       ..  :87c9[1]
    jsr c93e6                                                         ; 27cb: 20 e6 93     .. :87cb[1]
    jsr print_inline_l809f_top_bit_clear                              ; 27ce: 20 77 80     w. :87ce[1]
    equs &0d, "Deleted", &0d                                          ; 27d1: 0d 44 65... .De :87d1[1]

; &27da referenced 6 times by &853e, &8552, &8596, &8b0c, &8be5, &98b5
.sub_c87da
    iny                                                               ; 27da: c8          .   :87da[1]
; &27db referenced 2 times by &837a, &8588
.sub_c87db
    iny                                                               ; 27db: c8          .   :87db[1]
    iny                                                               ; 27dc: c8          .   :87dc[1]
    iny                                                               ; 27dd: c8          .   :87dd[1]
    iny                                                               ; 27de: c8          .   :87de[1]
    iny                                                               ; 27df: c8          .   :87df[1]
    iny                                                               ; 27e0: c8          .   :87e0[1]
    iny                                                               ; 27e1: c8          .   :87e1[1]
    rts                                                               ; 27e2: 60          `   :87e2[1]

; &27e3 referenced 2 times by &876d, &87c3
.sub_c87e3
    jsr sub_c830a                                                     ; 27e3: 20 0a 83     .. :87e3[1]
    ldy l00b6                                                         ; 27e6: a4 b6       ..  :87e6[1]
    jsr sub_c82b2                                                     ; 27e8: 20 b2 82     .. :87e8[1]
    sty l00b6                                                         ; 27eb: 84 b6       ..  :87eb[1]
    rts                                                               ; 27ed: 60          `   :87ed[1]

.sub_c87ee
    jsr sub_ca14a                                                     ; 27ee: 20 4a a1     J. :87ee[1]
    jsr c8b8b                                                         ; 27f1: 20 8b 8b     .. :87f1[1]
    sta l10ca                                                         ; 27f4: 8d ca 10    ... :87f4[1]
    jsr sub_c8456                                                     ; 27f7: 20 56 84     V. :87f7[1]
    beq c8815                                                         ; 27fa: f0 19       ..  :87fa[1]
    cmp #&28 ; '('                                                    ; 27fc: c9 28       .(  :87fc[1]
    beq c8808                                                         ; 27fe: f0 08       ..  :87fe[1]
    cmp #&50 ; 'P'                                                    ; 2800: c9 50       .P  :8800[1]
    clc                                                               ; 2802: 18          .   :8802[1]
    beq c8808                                                         ; 2803: f0 03       ..  :8803[1]
    jmp ca14f                                                         ; 2805: 4c 4f a1    LO. :8805[1]

; &2808 referenced 2 times by &87fe, &8803
.c8808
    php                                                               ; 2808: 08          .   :8808[1]
    ldx l10ca                                                         ; 2809: ae ca 10    ... :8809[1]
    lda l10de,x                                                       ; 280c: bd de 10    ... :880c[1]
    rol a                                                             ; 280f: 2a          *   :880f[1]
    plp                                                               ; 2810: 28          (   :8810[1]
    ror a                                                             ; 2811: 6a          j   :8811[1]
    sta l10de,x                                                       ; 2812: 9d de 10    ... :8812[1]
; &2815 referenced 1 time by &87fa
.c8815
    rts                                                               ; 2815: 60          `   :8815[1]

; &2816 referenced 8 times by &888f, &8985, &898d, &8b83, &8b9d, &9bef, &a475, &a4ce
.c8816
    and #3                                                            ; 2816: 29 03       ).  :8816[1]
    sta l00cd                                                         ; 2818: 85 cd       ..  :8818[1]
    rts                                                               ; 281a: 60          `   :881a[1]

    jsr sub_c8222                                                     ; 281b: 20 22 82     ". :881b[1]
    jsr sub_c9a82                                                     ; 281e: 20 82 9a     .. :881e[1]
    jsr sub_c8386                                                     ; 2821: 20 86 83     .. :8821[1]
    lda #&80                                                          ; 2824: a9 80       ..  :8824[1]
; &2826 referenced 1 time by &88f6
.sub_c8826
    sta l1096                                                         ; 2826: 8d 96 10    ... :8826[1]
    sty l00ba                                                         ; 2829: 84 ba       ..  :8829[1]
    ldx #0                                                            ; 282b: a2 00       ..  :882b[1]
    lda l00be                                                         ; 282d: a5 be       ..  :882d[1]
    bne c8837                                                         ; 282f: d0 06       ..  :882f[1]
    iny                                                               ; 2831: c8          .   :8831[1]
    iny                                                               ; 2832: c8          .   :8832[1]
    ldx #2                                                            ; 2833: a2 02       ..  :8833[1]
    bne c883f                                                         ; 2835: d0 08       ..  :8835[1]
; &2837 referenced 1 time by &882f
.c8837
    lda l0f0e,y                                                       ; 2837: b9 0e 0f    ... :8837[1]
    sta l00c2                                                         ; 283a: 85 c2       ..  :883a[1]
    jsr sub_c8b4d                                                     ; 283c: 20 4d 8b     M. :883c[1]
; &283f referenced 2 times by &8835, &8848
.c883f
    lda l0f08,y                                                       ; 283f: b9 08 0f    ... :883f[1]
    sta l00bc,x                                                       ; 2842: 95 bc       ..  :8842[1]
    iny                                                               ; 2844: c8          .   :8844[1]
    inx                                                               ; 2845: e8          .   :8845[1]
    cpx #8                                                            ; 2846: e0 08       ..  :8846[1]
    bne c883f                                                         ; 2848: d0 f5       ..  :8848[1]
    jsr sub_c8b64                                                     ; 284a: 20 64 8b     d. :884a[1]
    ldy l00ba                                                         ; 284d: a4 ba       ..  :884d[1]
    jsr sub_c8335                                                     ; 284f: 20 35 83     5. :884f[1]
    jmp c8867                                                         ; 2852: 4c 67 88    Lg. :8852[1]

; &2855 referenced 2 times by &9f61, &a561
.sub_c8855
    lda #&80                                                          ; 2855: a9 80       ..  :8855[1]
    bne c8864                                                         ; 2857: d0 0b       ..  :8857[1]
    jsr sub_c8a77                                                     ; 2859: 20 77 8a     w. :8859[1]
    jsr sub_c9a82                                                     ; 285c: 20 82 9a     .. :885c[1]
    jsr sub_c8386                                                     ; 285f: 20 86 83     .. :885f[1]
; &2862 referenced 2 times by &9f51, &a587
.sub_c8862
    lda #&a0                                                          ; 2862: a9 a0       ..  :8862[1]
; &2864 referenced 1 time by &8857
.c8864
    sta l1096                                                         ; 2864: 8d 96 10    ... :8864[1]
; &2867 referenced 1 time by &8852
.c8867
    jsr sub_c81ca                                                     ; 2867: 20 ca 81     .. :8867[1]
    jsr sub_c9445                                                     ; 286a: 20 45 94     E. :886a[1]
    lda #1                                                            ; 286d: a9 01       ..  :886d[1]
    rts                                                               ; 286f: 60          `   :886f[1]

    jsr sub_c8745                                                     ; 2870: 20 45 87     E. :8870[1]
    jsr sub_c8932                                                     ; 2873: 20 32 89     2. :8873[1]
    sty l10da                                                         ; 2876: 8c da 10    ... :8876[1]
    jsr sub_c80f3                                                     ; 2879: 20 f3 80     .. :8879[1]
    sty l10d9                                                         ; 287c: 8c d9 10    ... :887c[1]
    jsr sub_c8266                                                     ; 287f: 20 66 82     f. :887f[1]
    bcs c88a6                                                         ; 2882: b0 22       ."  :8882[1]
    ldy l10da                                                         ; 2884: ac da 10    ... :8884[1]
    lda l10cb                                                         ; 2887: ad cb 10    ... :8887[1]
    sta l00cc                                                         ; 288a: 85 cc       ..  :888a[1]
    lda l10cc                                                         ; 288c: ad cc 10    ... :888c[1]
    jsr c8816                                                         ; 288f: 20 16 88     .. :888f[1]
    jsr sub_c80f6                                                     ; 2892: 20 f6 80     .. :8892[1]
    jsr sub_c8266                                                     ; 2895: 20 66 82     f. :8895[1]
    bcs c88a6                                                         ; 2898: b0 0c       ..  :8898[1]
    jsr generate_error_precheck_bad                                   ; 289a: 20 2e 80     .. :889a[1]
    equb &fe                                                          ; 289d: fe          .   :889d[1]
    equs "command"                                                    ; 289e: 63 6f 6d... com :889e[1]
    equb 0                                                            ; 28a5: 00          .   :88a5[1]

; &28a6 referenced 2 times by &8882, &8898
.c88a6
    lda l0f0e,y                                                       ; 28a6: b9 0e 0f    ... :88a6[1]
    jsr sub_c81ae                                                     ; 28a9: 20 ae 81     .. :88a9[1]
    cmp #3                                                            ; 28ac: c9 03       ..  :88ac[1]
    bne c88f4                                                         ; 28ae: d0 44       .D  :88ae[1]
    lda l0f0a,y                                                       ; 28b0: b9 0a 0f    ... :88b0[1]
    and l0f0b,y                                                       ; 28b3: 39 0b 0f    9.. :88b3[1]
    cmp #&ff                                                          ; 28b6: c9 ff       ..  :88b6[1]
    bne c88f4                                                         ; 28b8: d0 3a       .:  :88b8[1]
    ldx #6                                                            ; 28ba: a2 06       ..  :88ba[1]
; &28bc referenced 1 time by &88c3
.loop_c88bc
    lda l1000,x                                                       ; 28bc: bd 00 10    ... :88bc[1]
    sta l1007,x                                                       ; 28bf: 9d 07 10    ... :88bf[1]
    dex                                                               ; 28c2: ca          .   :88c2[1]
    bpl loop_c88bc                                                    ; 28c3: 10 f7       ..  :88c3[1]
    lda #&0d                                                          ; 28c5: a9 0d       ..  :88c5[1]
    sta l100e                                                         ; 28c7: 8d 0e 10    ... :88c7[1]
    lda #&45 ; 'E'                                                    ; 28ca: a9 45       .E  :88ca[1]
    sta l1000                                                         ; 28cc: 8d 00 10    ... :88cc[1]
    lda #&2e ; '.'                                                    ; 28cf: a9 2e       ..  :88cf[1]
    sta l1001                                                         ; 28d1: 8d 01 10    ... :88d1[1]
    lda #&3a ; ':'                                                    ; 28d4: a9 3a       .:  :88d4[1]
    sta l1002                                                         ; 28d6: 8d 02 10    ... :88d6[1]
    lda l00cd                                                         ; 28d9: a5 cd       ..  :88d9[1]
    ora #&30 ; '0'                                                    ; 28db: 09 30       .0  :88db[1]
    sta l1003                                                         ; 28dd: 8d 03 10    ... :88dd[1]
    lda #&2e ; '.'                                                    ; 28e0: a9 2e       ..  :88e0[1]
    sta l1004                                                         ; 28e2: 8d 04 10    ... :88e2[1]
    sta l1006                                                         ; 28e5: 8d 06 10    ... :88e5[1]
    lda l00cc                                                         ; 28e8: a5 cc       ..  :88e8[1]
    sta l1005                                                         ; 28ea: 8d 05 10    ... :88ea[1]
    ldx #<(l1000)                                                     ; 28ed: a2 00       ..  :88ed[1]
    ldy #>(l1000)                                                     ; 28ef: a0 10       ..  :88ef[1]
    jmp oscli                                                         ; 28f1: 4c f7 ff    L.. :88f1[1]

; &28f4 referenced 2 times by &88ae, &88b8
.c88f4
    lda #&81                                                          ; 28f4: a9 81       ..  :88f4[1]
    jsr sub_c8826                                                     ; 28f6: 20 26 88     &. :88f6[1]
    clc                                                               ; 28f9: 18          .   :88f9[1]
    lda l10d9                                                         ; 28fa: ad d9 10    ... :88fa[1]
    tay                                                               ; 28fd: a8          .   :88fd[1]
    adc os_text_ptr                                                   ; 28fe: 65 f2       e.  :88fe[1]
    sta l10d9                                                         ; 2900: 8d d9 10    ... :8900[1]
    lda l00f3                                                         ; 2903: a5 f3       ..  :8903[1]
    adc #0                                                            ; 2905: 69 00       i.  :8905[1]
    sta l10da                                                         ; 2907: 8d da 10    ... :8907[1]
    lda l1076                                                         ; 290a: ad 76 10    .v. :890a[1]
    and l1077                                                         ; 290d: 2d 77 10    -w. :890d[1]
    ora l10d6                                                         ; 2910: 0d d6 10    ... :8910[1]
    cmp #&ff                                                          ; 2913: c9 ff       ..  :8913[1]
    beq c892d                                                         ; 2915: f0 16       ..  :8915[1]
    lda l00be                                                         ; 2917: a5 be       ..  :8917[1]
    sta l1074                                                         ; 2919: 8d 74 10    .t. :8919[1]
    lda l00bf                                                         ; 291c: a5 bf       ..  :891c[1]
    sta l1075                                                         ; 291e: 8d 75 10    .u. :891e[1]
    jsr sub_c8f6b                                                     ; 2921: 20 6b 8f     k. :8921[1]
    ldx #&74 ; 't'                                                    ; 2924: a2 74       .t  :8924[1]
    ldy #&10                                                          ; 2926: a0 10       ..  :8926[1]
    lda #4                                                            ; 2928: a9 04       ..  :8928[1]
    jmp tube_entry                                                    ; 292a: 4c 06 04    L.. :892a[1]

; &292d referenced 1 time by &8915
.c892d
    lda #1                                                            ; 292d: a9 01       ..  :892d[1]
    jmp (l00be)                                                       ; 292f: 6c be 00    l.. :892f[1]

; &2932 referenced 1 time by &8873
.sub_c8932
    lda #&ff                                                          ; 2932: a9 ff       ..  :8932[1]
    sta l00be                                                         ; 2934: 85 be       ..  :8934[1]
    lda os_text_ptr                                                   ; 2936: a5 f2       ..  :8936[1]
    sta l00ba                                                         ; 2938: 85 ba       ..  :8938[1]
    lda l00f3                                                         ; 293a: a5 f3       ..  :893a[1]
    sta l00bb                                                         ; 293c: 85 bb       ..  :893c[1]
    rts                                                               ; 293e: 60          `   :893e[1]

.sub_c893f
    ldx #0                                                            ; 293f: a2 00       ..  :893f[1]
    beq c8945                                                         ; 2941: f0 02       ..  :8941[1]
.sub_c8943
    ldx #2                                                            ; 2943: a2 02       ..  :8943[1]
; &2945 referenced 1 time by &8941
.c8945
    jsr sub_c8979                                                     ; 2945: 20 79 89     y. :8945[1]
    sta l10ca,x                                                       ; 2948: 9d ca 10    ... :8948[1]
    lda l00cc                                                         ; 294b: a5 cc       ..  :894b[1]
    sta l10c9,x                                                       ; 294d: 9d c9 10    ... :894d[1]
    rts                                                               ; 2950: 60          `   :8950[1]

; &2951 referenced 2 times by &96b4, &9729
.sub_c8951
    jsr sub_c83e3                                                     ; 2951: 20 e3 83     .. :8951[1]
    lda l00b0                                                         ; 2954: a5 b0       ..  :8954[1]
    pha                                                               ; 2956: 48          H   :8956[1]
    lda l00b1                                                         ; 2957: a5 b1       ..  :8957[1]
    pha                                                               ; 2959: 48          H   :8959[1]
    jsr sub_c9ab8                                                     ; 295a: 20 b8 9a     .. :895a[1]
    ldy #0                                                            ; 295d: a0 00       ..  :895d[1]
; &295f referenced 1 time by &8970
.loop_c895f
    cpy #&c0                                                          ; 295f: c0 c0       ..  :895f[1]
    bcc c8968                                                         ; 2961: 90 05       ..  :8961[1]
    lda l1000,y                                                       ; 2963: b9 00 10    ... :8963[1]
    bcs c896b                                                         ; 2966: b0 03       ..  :8966[1]
; &2968 referenced 1 time by &8961
.c8968
    lda l1100,y                                                       ; 2968: b9 00 11    ... :8968[1]
; &296b referenced 1 time by &8966
.c896b
    sta (l00b0),y                                                     ; 296b: 91 b0       ..  :896b[1]
    iny                                                               ; 296d: c8          .   :896d[1]
    cpy #&ee                                                          ; 296e: c0 ee       ..  :896e[1]
    bne loop_c895f                                                    ; 2970: d0 ed       ..  :8970[1]
    pla                                                               ; 2972: 68          h   :8972[1]
    sta l00b1                                                         ; 2973: 85 b1       ..  :8973[1]
    pla                                                               ; 2975: 68          h   :8975[1]
    sta l00b0                                                         ; 2976: 85 b0       ..  :8976[1]
    rts                                                               ; 2978: 60          `   :8978[1]

; &2979 referenced 1 time by &8945
.sub_c8979
    lda l10c9                                                         ; 2979: ad c9 10    ... :8979[1]
    sta l00cc                                                         ; 297c: 85 cc       ..  :897c[1]
    jsr clc_jmp_gsinit                                                ; 297e: 20 4c 87     L. :897e[1]
    bne c898a                                                         ; 2981: d0 07       ..  :8981[1]
    lda #0                                                            ; 2983: a9 00       ..  :8983[1]
    jsr c8816                                                         ; 2985: 20 16 88     .. :8985[1]
    beq c89b4                                                         ; 2988: f0 2a       .*  :8988[1]
; &298a referenced 2 times by &8240, &8981
.c898a
    lda l10ca                                                         ; 298a: ad ca 10    ... :898a[1]
    jsr c8816                                                         ; 298d: 20 16 88     .. :898d[1]
; &2990 referenced 1 time by &89a3
.loop_c8990
    jsr sub_c8149                                                     ; 2990: 20 49 81     I. :8990[1]
    bcs c89a5                                                         ; 2993: b0 10       ..  :8993[1]
    cmp #&3a ; ':'                                                    ; 2995: c9 3a       .:  :8995[1]
    bne c89ad                                                         ; 2997: d0 14       ..  :8997[1]
    jsr c8b8b                                                         ; 2999: 20 8b 8b     .. :8999[1]
    jsr sub_c8149                                                     ; 299c: 20 49 81     I. :899c[1]
    bcs c89b4                                                         ; 299f: b0 13       ..  :899f[1]
    cmp #&2e ; '.'                                                    ; 29a1: c9 2e       ..  :89a1[1]
    beq loop_c8990                                                    ; 29a3: f0 eb       ..  :89a3[1]
; &29a5 referenced 2 times by &8993, &89b2
.c89a5
    jsr generate_error_precheck_bad                                   ; 29a5: 20 2e 80     .. :89a5[1]
    equb &ce                                                          ; 29a8: ce          .   :89a8[1]
    equs "dir"                                                        ; 29a9: 64 69 72    dir :89a9[1]
    equb 0                                                            ; 29ac: 00          .   :89ac[1]

; &29ad referenced 1 time by &8997
.c89ad
    sta l00cc                                                         ; 29ad: 85 cc       ..  :89ad[1]
    jsr sub_c8149                                                     ; 29af: 20 49 81     I. :89af[1]
    bcc c89a5                                                         ; 29b2: 90 f1       ..  :89b2[1]
; &29b4 referenced 2 times by &8988, &899f
.c89b4
    lda l00cd                                                         ; 29b4: a5 cd       ..  :89b4[1]
    rts                                                               ; 29b6: 60          `   :89b6[1]

.sub_c89b7
    jsr sub_ca14a                                                     ; 29b7: 20 4a a1     J. :89b7[1]
    jsr sub_c8b7b                                                     ; 29ba: 20 7b 8b     {. :89ba[1]
    jsr sub_c8380                                                     ; 29bd: 20 80 83     .. :89bd[1]
    ldx #&0b                                                          ; 29c0: a2 0b       ..  :89c0[1]
    lda #0                                                            ; 29c2: a9 00       ..  :89c2[1]
; &29c4 referenced 1 time by &89c8
.loop_c89c4
    jsr sub_c89da                                                     ; 29c4: 20 da 89     .. :89c4[1]
    dex                                                               ; 29c7: ca          .   :89c7[1]
    bpl loop_c89c4                                                    ; 29c8: 10 fa       ..  :89c8[1]
; &29ca referenced 1 time by &89d5
.loop_c89ca
    inx                                                               ; 29ca: e8          .   :89ca[1]
    jsr sub_c8149                                                     ; 29cb: 20 49 81     I. :89cb[1]
    bcs c89d7                                                         ; 29ce: b0 07       ..  :89ce[1]
    jsr sub_c89da                                                     ; 29d0: 20 da 89     .. :89d0[1]
    cpx #&0b                                                          ; 29d3: e0 0b       ..  :89d3[1]
    bcc loop_c89ca                                                    ; 29d5: 90 f3       ..  :89d5[1]
; &29d7 referenced 3 times by &89ce, &8a15, &99ed
.c89d7
    jmp c93e6                                                         ; 29d7: 4c e6 93    L.. :89d7[1]

; &29da referenced 2 times by &89c4, &89d0
.sub_c89da
    cpx #8                                                            ; 29da: e0 08       ..  :89da[1]
    bcc c89e2                                                         ; 29dc: 90 04       ..  :89dc[1]
    sta l0ef8,x                                                       ; 29de: 9d f8 0e    ... :89de[1]
    rts                                                               ; 29e1: 60          `   :89e1[1]

; &29e2 referenced 1 time by &89dc
.c89e2
    sta l0e00,x                                                       ; 29e2: 9d 00 0e    ... :89e2[1]
    rts                                                               ; 29e5: 60          `   :89e5[1]

.sub_c89e6
    jsr sub_c99ac                                                     ; 29e6: 20 ac 99     .. :89e6[1]
    jsr sub_ca14a                                                     ; 29e9: 20 4a a1     J. :89e9[1]
    jsr sub_c80ed                                                     ; 29ec: 20 ed 80     .. :89ec[1]
    ldx #0                                                            ; 29ef: a2 00       ..  :89ef[1]
    jsr clc_jmp_gsinit                                                ; 29f1: 20 4c 87     L. :89f1[1]
    bne c8a19                                                         ; 29f4: d0 23       .#  :89f4[1]
; &29f6 referenced 1 time by &8a1c
.c89f6
    stx l00aa                                                         ; 29f6: 86 aa       ..  :89f6[1]
    jsr sub_c8284                                                     ; 29f8: 20 84 82     .. :89f8[1]
    bcs c8a00                                                         ; 29fb: b0 03       ..  :89fb[1]
    jmp c822a                                                         ; 29fd: 4c 2a 82    L*. :89fd[1]

; &2a00 referenced 2 times by &89fb, &8a13
.c8a00
    jsr sub_c9a63                                                     ; 2a00: 20 63 9a     c. :8a00[1]
    lda l0e0f,y                                                       ; 2a03: b9 0f 0e    ... :8a03[1]
    and #&7f                                                          ; 2a06: 29 7f       ).  :8a06[1]
    ora l00aa                                                         ; 2a08: 05 aa       ..  :8a08[1]
    sta l0e0f,y                                                       ; 2a0a: 99 0f 0e    ... :8a0a[1]
    jsr sub_c8335                                                     ; 2a0d: 20 35 83     5. :8a0d[1]
    jsr sub_c8280                                                     ; 2a10: 20 80 82     .. :8a10[1]
    bcs c8a00                                                         ; 2a13: b0 eb       ..  :8a13[1]
    bcc c89d7                                                         ; 2a15: 90 c0       ..  :8a15[1]
; &2a17 referenced 1 time by &8a22
.loop_c8a17
    ldx #&80                                                          ; 2a17: a2 80       ..  :8a17[1]
; &2a19 referenced 1 time by &89f4
.c8a19
    jsr sub_c8149                                                     ; 2a19: 20 49 81     I. :8a19[1]
    bcs c89f6                                                         ; 2a1c: b0 d8       ..  :8a1c[1]
    and #&5f ; '_'                                                    ; 2a1e: 29 5f       )_  :8a1e[1]
    cmp #&4c ; 'L'                                                    ; 2a20: c9 4c       .L  :8a20[1]
    beq loop_c8a17                                                    ; 2a22: f0 f3       ..  :8a22[1]
    jsr generate_error_precheck_bad                                   ; 2a24: 20 2e 80     .. :8a24[1]
    equb &cf                                                          ; 2a27: cf          .   :8a27[1]
    equs "attribute"                                                  ; 2a28: 61 74 74... att :8a28[1]
    equb 0                                                            ; 2a31: 00          .   :8a31[1]

    jsr sub_c83e3                                                     ; 2a32: 20 e3 83     .. :8a32[1]
    txa                                                               ; 2a35: 8a          .   :8a35[1]
    cmp #4                                                            ; 2a36: c9 04       ..  :8a36[1]
    beq c8a54                                                         ; 2a38: f0 1a       ..  :8a38[1]
    cmp #2                                                            ; 2a3a: c9 02       ..  :8a3a[1]
    bcc c8a49                                                         ; 2a3c: 90 0b       ..  :8a3c[1]
    jsr generate_error_precheck_bad                                   ; 2a3e: 20 2e 80     .. :8a3e[1]
    equb &cb                                                          ; 2a41: cb          .   :8a41[1]
    equs "option"                                                     ; 2a42: 6f 70 74... opt :8a42[1]
    equb 0                                                            ; 2a48: 00          .   :8a48[1]

; &2a49 referenced 1 time by &8a3c
.c8a49
    ldx #&ff                                                          ; 2a49: a2 ff       ..  :8a49[1]
    tya                                                               ; 2a4b: 98          .   :8a4b[1]
    beq c8a50                                                         ; 2a4c: f0 02       ..  :8a4c[1]
    ldx #0                                                            ; 2a4e: a2 00       ..  :8a4e[1]
; &2a50 referenced 1 time by &8a4c
.c8a50
    stx l10c6                                                         ; 2a50: 8e c6 10    ... :8a50[1]
    rts                                                               ; 2a53: 60          `   :8a53[1]

; &2a54 referenced 1 time by &8a38
.c8a54
    tya                                                               ; 2a54: 98          .   :8a54[1]
    pha                                                               ; 2a55: 48          H   :8a55[1]
    jsr sub_c8b7b                                                     ; 2a56: 20 7b 8b     {. :8a56[1]
    jsr c940c                                                         ; 2a59: 20 0c 94     .. :8a59[1]
    pla                                                               ; 2a5c: 68          h   :8a5c[1]
    jsr sub_c81c5                                                     ; 2a5d: 20 c5 81     .. :8a5d[1]
    eor l0f06                                                         ; 2a60: 4d 06 0f    M.. :8a60[1]
    and #&30 ; '0'                                                    ; 2a63: 29 30       )0  :8a63[1]
    eor l0f06                                                         ; 2a65: 4d 06 0f    M.. :8a65[1]
    sta l0f06                                                         ; 2a68: 8d 06 0f    ... :8a68[1]
    jmp c93e6                                                         ; 2a6b: 4c e6 93    L.. :8a6b[1]

; &2a6e referenced 2 times by &8ac8, &a414
.c8a6e
    jsr generate_error_precheck_disc                                  ; 2a6e: 20 23 80     #. :8a6e[1]
    equb &c6                                                          ; 2a71: c6          .   :8a71[1]
    equs "full"                                                       ; 2a72: 66 75 6c... ful :8a72[1]
    equb 0                                                            ; 2a76: 00          .   :8a76[1]

; &2a77 referenced 2 times by &8859, &9c4e
.sub_c8a77
    jsr sub_c80f3                                                     ; 2a77: 20 f3 80     .. :8a77[1]
    jsr sub_c8284                                                     ; 2a7a: 20 84 82     .. :8a7a[1]
    bcc c8a82                                                         ; 2a7d: 90 03       ..  :8a7d[1]
    jsr sub_c830a                                                     ; 2a7f: 20 0a 83     .. :8a7f[1]
; &2a82 referenced 1 time by &8a7d
.c8a82
    lda l00c0                                                         ; 2a82: a5 c0       ..  :8a82[1]
    pha                                                               ; 2a84: 48          H   :8a84[1]
    lda l00c1                                                         ; 2a85: a5 c1       ..  :8a85[1]
    pha                                                               ; 2a87: 48          H   :8a87[1]
    sec                                                               ; 2a88: 38          8   :8a88[1]
    lda l00c2                                                         ; 2a89: a5 c2       ..  :8a89[1]
    sbc l00c0                                                         ; 2a8b: e5 c0       ..  :8a8b[1]
    sta l00c0                                                         ; 2a8d: 85 c0       ..  :8a8d[1]
    lda l00c3                                                         ; 2a8f: a5 c3       ..  :8a8f[1]
    sbc l00c1                                                         ; 2a91: e5 c1       ..  :8a91[1]
    sta l00c1                                                         ; 2a93: 85 c1       ..  :8a93[1]
    lda l107a                                                         ; 2a95: ad 7a 10    .z. :8a95[1]
    sbc l1078                                                         ; 2a98: ed 78 10    .x. :8a98[1]
    sta l00c4                                                         ; 2a9b: 85 c4       ..  :8a9b[1]
    jsr sub_c8ab3                                                     ; 2a9d: 20 b3 8a     .. :8a9d[1]
    lda l1079                                                         ; 2aa0: ad 79 10    .y. :8aa0[1]
    sta l1075                                                         ; 2aa3: 8d 75 10    .u. :8aa3[1]
    lda l1078                                                         ; 2aa6: ad 78 10    .x. :8aa6[1]
    sta l1074                                                         ; 2aa9: 8d 74 10    .t. :8aa9[1]
    pla                                                               ; 2aac: 68          h   :8aac[1]
    sta l00bd                                                         ; 2aad: 85 bd       ..  :8aad[1]
    pla                                                               ; 2aaf: 68          h   :8aaf[1]
    sta l00bc                                                         ; 2ab0: 85 bc       ..  :8ab0[1]
    rts                                                               ; 2ab2: 60          `   :8ab2[1]

; &2ab3 referenced 2 times by &8a9d, &a50a
.sub_c8ab3
    lda #0                                                            ; 2ab3: a9 00       ..  :8ab3[1]
    sta l00c2                                                         ; 2ab5: 85 c2       ..  :8ab5[1]
    lda #2                                                            ; 2ab7: a9 02       ..  :8ab7[1]
    sta l00c3                                                         ; 2ab9: 85 c3       ..  :8ab9[1]
    ldy l0f05                                                         ; 2abb: ac 05 0f    ... :8abb[1]
    cpy #&f8                                                          ; 2abe: c0 f8       ..  :8abe[1]
    bcs c8b18                                                         ; 2ac0: b0 56       .V  :8ac0[1]
    jsr sub_c8602                                                     ; 2ac2: 20 02 86     .. :8ac2[1]
    jmp c8ad0                                                         ; 2ac5: 4c d0 8a    L.. :8ac5[1]

; &2ac8 referenced 1 time by &8ad1
.loop_c8ac8
    beq c8a6e                                                         ; 2ac8: f0 a4       ..  :8ac8[1]
    jsr sub_c82b2                                                     ; 2aca: 20 b2 82     .. :8aca[1]
    jsr sub_c85e3                                                     ; 2acd: 20 e3 85     .. :8acd[1]
; &2ad0 referenced 1 time by &8ac5
.c8ad0
    tya                                                               ; 2ad0: 98          .   :8ad0[1]
    bcc loop_c8ac8                                                    ; 2ad1: 90 f5       ..  :8ad1[1]
    sty l00b0                                                         ; 2ad3: 84 b0       ..  :8ad3[1]
    ldy l0f05                                                         ; 2ad5: ac 05 0f    ... :8ad5[1]
; &2ad8 referenced 1 time by &8ae9
.loop_c8ad8
    cpy l00b0                                                         ; 2ad8: c4 b0       ..  :8ad8[1]
    beq c8aeb                                                         ; 2ada: f0 0f       ..  :8ada[1]
    lda l0e07,y                                                       ; 2adc: b9 07 0e    ... :8adc[1]
    sta l0e0f,y                                                       ; 2adf: 99 0f 0e    ... :8adf[1]
    lda l0f07,y                                                       ; 2ae2: b9 07 0f    ... :8ae2[1]
    sta l0f0f,y                                                       ; 2ae5: 99 0f 0f    ... :8ae5[1]
    dey                                                               ; 2ae8: 88          .   :8ae8[1]
    bcs loop_c8ad8                                                    ; 2ae9: b0 ed       ..  :8ae9[1]
; &2aeb referenced 1 time by &8ada
.c8aeb
    ldx #0                                                            ; 2aeb: a2 00       ..  :8aeb[1]
    jsr sub_c8b25                                                     ; 2aed: 20 25 8b     %. :8aed[1]
; &2af0 referenced 1 time by &8af9
.loop_c8af0
    lda l00c5,x                                                       ; 2af0: b5 c5       ..  :8af0[1]
    sta l0e08,y                                                       ; 2af2: 99 08 0e    ... :8af2[1]
    iny                                                               ; 2af5: c8          .   :8af5[1]
    inx                                                               ; 2af6: e8          .   :8af6[1]
    cpx #8                                                            ; 2af7: e0 08       ..  :8af7[1]
    bne loop_c8af0                                                    ; 2af9: d0 f5       ..  :8af9[1]
; &2afb referenced 1 time by &8b02
.loop_c8afb
    lda l00bb,x                                                       ; 2afb: b5 bb       ..  :8afb[1]
    dey                                                               ; 2afd: 88          .   :8afd[1]
    sta l0f08,y                                                       ; 2afe: 99 08 0f    ... :8afe[1]
    dex                                                               ; 2b01: ca          .   :8b01[1]
    bne loop_c8afb                                                    ; 2b02: d0 f7       ..  :8b02[1]
    jsr sub_c8335                                                     ; 2b04: 20 35 83     5. :8b04[1]
    tya                                                               ; 2b07: 98          .   :8b07[1]
    pha                                                               ; 2b08: 48          H   :8b08[1]
    ldy l0f05                                                         ; 2b09: ac 05 0f    ... :8b09[1]
    jsr sub_c87da                                                     ; 2b0c: 20 da 87     .. :8b0c[1]
    sty l0f05                                                         ; 2b0f: 8c 05 0f    ... :8b0f[1]
    jsr c93e6                                                         ; 2b12: 20 e6 93     .. :8b12[1]
    pla                                                               ; 2b15: 68          h   :8b15[1]
    tay                                                               ; 2b16: a8          .   :8b16[1]
    rts                                                               ; 2b17: 60          `   :8b17[1]

; &2b18 referenced 1 time by &8ac0
.c8b18
    jsr generate_error_precheck                                       ; 2b18: 20 38 80     8. :8b18[1]
    equb &be                                                          ; 2b1b: be          .   :8b1b[1]
    equs "Cat full"                                                   ; 2b1c: 43 61 74... Cat :8b1c[1]
    equb 0                                                            ; 2b24: 00          .   :8b24[1]

; &2b25 referenced 1 time by &8aed
.sub_c8b25
    lda l1076                                                         ; 2b25: ad 76 10    .v. :8b25[1]
    and #3                                                            ; 2b28: 29 03       ).  :8b28[1]
    asl a                                                             ; 2b2a: 0a          .   :8b2a[1]
    asl a                                                             ; 2b2b: 0a          .   :8b2b[1]
    eor l00c4                                                         ; 2b2c: 45 c4       E.  :8b2c[1]
    and #&fc                                                          ; 2b2e: 29 fc       ).  :8b2e[1]
    eor l00c4                                                         ; 2b30: 45 c4       E.  :8b30[1]
    asl a                                                             ; 2b32: 0a          .   :8b32[1]
    asl a                                                             ; 2b33: 0a          .   :8b33[1]
    eor l1074                                                         ; 2b34: 4d 74 10    Mt. :8b34[1]
    and #&fc                                                          ; 2b37: 29 fc       ).  :8b37[1]
    eor l1074                                                         ; 2b39: 4d 74 10    Mt. :8b39[1]
    asl a                                                             ; 2b3c: 0a          .   :8b3c[1]
    asl a                                                             ; 2b3d: 0a          .   :8b3d[1]
    eor l00c2                                                         ; 2b3e: 45 c2       E.  :8b3e[1]
    and #&fc                                                          ; 2b40: 29 fc       ).  :8b40[1]
    eor l00c2                                                         ; 2b42: 45 c2       E.  :8b42[1]
    sta l00c2                                                         ; 2b44: 85 c2       ..  :8b44[1]
    rts                                                               ; 2b46: 60          `   :8b46[1]

.sub_c8b47
    lda #1                                                            ; 2b47: a9 01       ..  :8b47[1]
    sta l10c7                                                         ; 2b49: 8d c7 10    ... :8b49[1]
    rts                                                               ; 2b4c: 60          `   :8b4c[1]

; &2b4d referenced 2 times by &883c, &a4fd
.sub_c8b4d
    lda #0                                                            ; 2b4d: a9 00       ..  :8b4d[1]
    sta l1075                                                         ; 2b4f: 8d 75 10    .u. :8b4f[1]
    lda l00c2                                                         ; 2b52: a5 c2       ..  :8b52[1]
    jsr sub_c81b7                                                     ; 2b54: 20 b7 81     .. :8b54[1]
    cmp #3                                                            ; 2b57: c9 03       ..  :8b57[1]
    bne c8b60                                                         ; 2b59: d0 05       ..  :8b59[1]
    lda #&ff                                                          ; 2b5b: a9 ff       ..  :8b5b[1]
    sta l1075                                                         ; 2b5d: 8d 75 10    .u. :8b5d[1]
; &2b60 referenced 1 time by &8b59
.c8b60
    sta l1074                                                         ; 2b60: 8d 74 10    .t. :8b60[1]
    rts                                                               ; 2b63: 60          `   :8b63[1]

; &2b64 referenced 2 times by &884a, &a500
.sub_c8b64
    lda #0                                                            ; 2b64: a9 00       ..  :8b64[1]
    sta l1077                                                         ; 2b66: 8d 77 10    .w. :8b66[1]
    lda l00c2                                                         ; 2b69: a5 c2       ..  :8b69[1]
    jsr sub_c81ae                                                     ; 2b6b: 20 ae 81     .. :8b6b[1]
    cmp #3                                                            ; 2b6e: c9 03       ..  :8b6e[1]
    bne c8b77                                                         ; 2b70: d0 05       ..  :8b70[1]
    lda #&ff                                                          ; 2b72: a9 ff       ..  :8b72[1]
    sta l1077                                                         ; 2b74: 8d 77 10    .w. :8b74[1]
; &2b77 referenced 1 time by &8b70
.c8b77
    sta l1076                                                         ; 2b77: 8d 76 10    .v. :8b77[1]
    rts                                                               ; 2b7a: 60          `   :8b7a[1]

; &2b7b referenced 8 times by &80ed, &80f3, &8238, &89ba, &8a56, &975b, &988b, &98d7
.sub_c8b7b
    lda l10c9                                                         ; 2b7b: ad c9 10    ... :8b7b[1]
    sta l00cc                                                         ; 2b7e: 85 cc       ..  :8b7e[1]
; &2b80 referenced 1 time by &8b89
.loop_c8b80
    lda l10ca                                                         ; 2b80: ad ca 10    ... :8b80[1]
    jmp c8816                                                         ; 2b83: 4c 16 88    L.. :8b83[1]

; &2b86 referenced 3 times by &8486, &a244, &a7f9
.sub_c8b86
    jsr clc_jmp_gsinit                                                ; 2b86: 20 4c 87     L. :8b86[1]
    beq loop_c8b80                                                    ; 2b89: f0 f5       ..  :8b89[1]
; &2b8b referenced 7 times by &8119, &87f1, &8999, &8b92, &a327, &a330, &a637
.c8b8b
    jsr sub_c8149                                                     ; 2b8b: 20 49 81     I. :8b8b[1]
    bcs c8ba2                                                         ; 2b8e: b0 12       ..  :8b8e[1]
    cmp #&3a ; ':'                                                    ; 2b90: c9 3a       .:  :8b90[1]
    beq c8b8b                                                         ; 2b92: f0 f7       ..  :8b92[1]
    sec                                                               ; 2b94: 38          8   :8b94[1]
    sbc #&30 ; '0'                                                    ; 2b95: e9 30       .0  :8b95[1]
    bcc c8ba2                                                         ; 2b97: 90 09       ..  :8b97[1]
    cmp #4                                                            ; 2b99: c9 04       ..  :8b99[1]
    bcs c8ba2                                                         ; 2b9b: b0 05       ..  :8b9b[1]
    jsr c8816                                                         ; 2b9d: 20 16 88     .. :8b9d[1]
    clc                                                               ; 2ba0: 18          .   :8ba0[1]
    rts                                                               ; 2ba1: 60          `   :8ba1[1]

; &2ba2 referenced 5 times by &8b8e, &8b97, &8b9b, &8bcd, &a660
.c8ba2
    jsr generate_error_precheck_bad                                   ; 2ba2: 20 2e 80     .. :8ba2[1]
    equb &cd                                                          ; 2ba5: cd          .   :8ba5[1]
    equs "drive"                                                      ; 2ba6: 64 72 69... dri :8ba6[1]
    equb 0                                                            ; 2bab: 00          .   :8bab[1]

.sub_c8bac
    jsr c99a3                                                         ; 2bac: 20 a3 99     .. :8bac[1]
    jsr sub_ca14a                                                     ; 2baf: 20 4a a1     J. :8baf[1]
    jsr sub_c80ed                                                     ; 2bb2: 20 ed 80     .. :8bb2[1]
    tya                                                               ; 2bb5: 98          .   :8bb5[1]
    pha                                                               ; 2bb6: 48          H   :8bb6[1]
    jsr c8225                                                         ; 2bb7: 20 25 82     %. :8bb7[1]
    jsr sub_c9a60                                                     ; 2bba: 20 60 9a     `. :8bba[1]
    sty l00c4                                                         ; 2bbd: 84 c4       ..  :8bbd[1]
    pla                                                               ; 2bbf: 68          h   :8bbf[1]
    tay                                                               ; 2bc0: a8          .   :8bc0[1]
    jsr sub_ca14a                                                     ; 2bc1: 20 4a a1     J. :8bc1[1]
    lda l00cd                                                         ; 2bc4: a5 cd       ..  :8bc4[1]
    pha                                                               ; 2bc6: 48          H   :8bc6[1]
    jsr sub_c80ed                                                     ; 2bc7: 20 ed 80     .. :8bc7[1]
    pla                                                               ; 2bca: 68          h   :8bca[1]
    cmp l00cd                                                         ; 2bcb: c5 cd       ..  :8bcb[1]
    bne c8ba2                                                         ; 2bcd: d0 d3       ..  :8bcd[1]
    jsr sub_c8284                                                     ; 2bcf: 20 84 82     .. :8bcf[1]
    bcc c8be3                                                         ; 2bd2: 90 0f       ..  :8bd2[1]
    cpy l00c4                                                         ; 2bd4: c4 c4       ..  :8bd4[1]
    beq c8be3                                                         ; 2bd6: f0 0b       ..  :8bd6[1]
    jsr generate_error_precheck                                       ; 2bd8: 20 38 80     8. :8bd8[1]
    equb &c4                                                          ; 2bdb: c4          .   :8bdb[1]
    equs "Exists"                                                     ; 2bdc: 45 78 69... Exi :8bdc[1]
    equb 0                                                            ; 2be2: 00          .   :8be2[1]

; &2be3 referenced 2 times by &8bd2, &8bd6
.c8be3
    ldy l00c4                                                         ; 2be3: a4 c4       ..  :8be3[1]
    jsr sub_c87da                                                     ; 2be5: 20 da 87     .. :8be5[1]
    ldx #7                                                            ; 2be8: a2 07       ..  :8be8[1]
; &2bea referenced 1 time by &8bf1
.loop_c8bea
    lda l00c5,x                                                       ; 2bea: b5 c5       ..  :8bea[1]
    sta l0e07,y                                                       ; 2bec: 99 07 0e    ... :8bec[1]
    dey                                                               ; 2bef: 88          .   :8bef[1]
    dex                                                               ; 2bf0: ca          .   :8bf0[1]
    bpl loop_c8bea                                                    ; 2bf1: 10 f7       ..  :8bf1[1]
    jmp c93e6                                                         ; 2bf3: 4c e6 93    L.. :8bf3[1]

; &2bf6 referenced 1 time by &9466
.sub_c8bf6
    clc                                                               ; 2bf6: 18          .   :8bf6[1]
    bcc c8bfb                                                         ; 2bf7: 90 02       ..  :8bf7[1]
; &2bf9 referenced 1 time by &9211
.sub_c8bf9
    cli                                                               ; 2bf9: 58          X   :8bf9[1]
    sec                                                               ; 2bfa: 38          8   :8bfa[1]
; &2bfb referenced 1 time by &8bf7
.c8bfb
    ror l00b2                                                         ; 2bfb: 66 b2       f.  :8bfb[1]
    stx l00b0                                                         ; 2bfd: 86 b0       ..  :8bfd[1]
    sty l00b1                                                         ; 2bff: 84 b1       ..  :8bff[1]
    cld                                                               ; 2c01: d8          .   :8c01[1]
    jsr sub_c8c65                                                     ; 2c02: 20 65 8c     e. :8c02[1]
    lda l00a2                                                         ; 2c05: a5 a2       ..  :8c05[1]
    bne c8c12                                                         ; 2c07: d0 09       ..  :8c07[1]
    ldy #5                                                            ; 2c09: a0 05       ..  :8c09[1]
    lda (l00b0),y                                                     ; 2c0b: b1 b0       ..  :8c0b[1]
    beq c8c12                                                         ; 2c0d: f0 03       ..  :8c0d[1]
    jsr sub_c8d1a                                                     ; 2c0f: 20 1a 8d     .. :8c0f[1]
; &2c12 referenced 2 times by &8c07, &8c0d
.c8c12
    ldy #5                                                            ; 2c12: a0 05       ..  :8c12[1]
    lda (l00b0),y                                                     ; 2c14: b1 b0       ..  :8c14[1]
    clc                                                               ; 2c16: 18          .   :8c16[1]
    adc #7                                                            ; 2c17: 69 07       i.  :8c17[1]
    tay                                                               ; 2c19: a8          .   :8c19[1]
    lda l00a2                                                         ; 2c1a: a5 a2       ..  :8c1a[1]
    jsr sub_c8c56                                                     ; 2c1c: 20 56 8c     V. :8c1c[1]
    sta (l00b0),y                                                     ; 2c1f: 91 b0       ..  :8c1f[1]
    ldx l00a7                                                         ; 2c21: a6 a7       ..  :8c21[1]
    cpx #&80                                                          ; 2c23: e0 80       ..  :8c23[1]
    bne c8c2e                                                         ; 2c25: d0 07       ..  :8c25[1]
    lda lfe84                                                         ; 2c27: ad 84 fe    ... :8c27[1]
    and #&20 ; ' '                                                    ; 2c2a: 29 20       )   :8c2a[1]
    ora (l00b0),y                                                     ; 2c2c: 11 b0       ..  :8c2c[1]
; &2c2e referenced 1 time by &8c25
.c8c2e
    pha                                                               ; 2c2e: 48          H   :8c2e[1]
    and #&df                                                          ; 2c2f: 29 df       ).  :8c2f[1]
    cmp #&18                                                          ; 2c31: c9 18       ..  :8c31[1]
    bne c8c3a                                                         ; 2c33: d0 05       ..  :8c33[1]
    lda #&ff                                                          ; 2c35: a9 ff       ..  :8c35[1]
    sta l1087                                                         ; 2c37: 8d 87 10    ... :8c37[1]
; &2c3a referenced 1 time by &8c33
.c8c3a
    lda l00cd                                                         ; 2c3a: a5 cd       ..  :8c3a[1]
    and #1                                                            ; 2c3c: 29 01       ).  :8c3c[1]
    tay                                                               ; 2c3e: a8          .   :8c3e[1]
    lda l00ce                                                         ; 2c3f: a5 ce       ..  :8c3f[1]
    sta l1088,y                                                       ; 2c41: 99 88 10    ... :8c41[1]
    jsr c8f2a                                                         ; 2c44: 20 2a 8f     *. :8c44[1]
    bit l00a1                                                         ; 2c47: 24 a1       $.  :8c47[1]
    bpl c8c4e                                                         ; 2c49: 10 03       ..  :8c49[1]
    jsr sub_c8f7a                                                     ; 2c4b: 20 7a 8f     z. :8c4b[1]
; &2c4e referenced 1 time by &8c49
.c8c4e
    jsr sub_c8f5e                                                     ; 2c4e: 20 5e 8f     ^. :8c4e[1]
    lda lfe87                                                         ; 2c51: ad 87 fe    ... :8c51[1]
    pla                                                               ; 2c54: 68          h   :8c54[1]
    rts                                                               ; 2c55: 60          `   :8c55[1]

; &2c56 referenced 1 time by &8c1c
.sub_c8c56
    ldx #5                                                            ; 2c56: a2 05       ..  :8c56[1]
; &2c58 referenced 1 time by &8c5e
.loop_c8c58
    cmp l9139,x                                                       ; 2c58: dd 39 91    .9. :8c58[1]
    beq c8c61                                                         ; 2c5b: f0 04       ..  :8c5b[1]
    dex                                                               ; 2c5d: ca          .   :8c5d[1]
    bpl loop_c8c58                                                    ; 2c5e: 10 f8       ..  :8c5e[1]
    rts                                                               ; 2c60: 60          `   :8c60[1]

; &2c61 referenced 1 time by &8c5b
.c8c61
    lda l913f,x                                                       ; 2c61: bd 3f 91    .?. :8c61[1]
    rts                                                               ; 2c64: 60          `   :8c64[1]

; &2c65 referenced 1 time by &8c02
.sub_c8c65
    jsr sub_c8f4f                                                     ; 2c65: 20 4f 8f     O. :8c65[1]
    jsr sub_c8f82                                                     ; 2c68: 20 82 8f     .. :8c68[1]
    lda #0                                                            ; 2c6b: a9 00       ..  :8c6b[1]
    sta l00a1                                                         ; 2c6d: 85 a1       ..  :8c6d[1]
    ldy #9                                                            ; 2c6f: a0 09       ..  :8c6f[1]
; &2c71 referenced 1 time by &8c79
.loop_c8c71
    lda (l00b0),y                                                     ; 2c71: b1 b0       ..  :8c71[1]
    sta l00aa,y                                                       ; 2c73: 99 aa 00    ... :8c73[1]
    iny                                                               ; 2c76: c8          .   :8c76[1]
    cpy #&0c                                                          ; 2c77: c0 0c       ..  :8c77[1]
    bne loop_c8c71                                                    ; 2c79: d0 f6       ..  :8c79[1]
    ldy #6                                                            ; 2c7b: a0 06       ..  :8c7b[1]
    lda (l00b0),y                                                     ; 2c7d: b1 b0       ..  :8c7d[1]
    and #&f0                                                          ; 2c7f: 29 f0       ).  :8c7f[1]
    cmp #&a0                                                          ; 2c81: c9 a0       ..  :8c81[1]
    beq c8c87                                                         ; 2c83: f0 02       ..  :8c83[1]
    cmp #&f0                                                          ; 2c85: c9 f0       ..  :8c85[1]
; &2c87 referenced 1 time by &8c83
.c8c87
    ror l00a1                                                         ; 2c87: 66 a1       f.  :8c87[1]
    ldy #3                                                            ; 2c89: a0 03       ..  :8c89[1]
    lda (l00b0),y                                                     ; 2c8b: b1 b0       ..  :8c8b[1]
    iny                                                               ; 2c8d: c8          .   :8c8d[1]
    and (l00b0),y                                                     ; 2c8e: 31 b0       1.  :8c8e[1]
    cmp #&ff                                                          ; 2c90: c9 ff       ..  :8c90[1]
    clc                                                               ; 2c92: 18          .   :8c92[1]
    beq c8cb2                                                         ; 2c93: f0 1d       ..  :8c93[1]
    jsr sub_c8f3f                                                     ; 2c95: 20 3f 8f     ?. :8c95[1]
    clc                                                               ; 2c98: 18          .   :8c98[1]
    bmi c8cb2                                                         ; 2c99: 30 17       0.  :8c99[1]
    jsr sub_c8f6b                                                     ; 2c9b: 20 6b 8f     k. :8c9b[1]
    lda l00a1                                                         ; 2c9e: a5 a1       ..  :8c9e[1]
    rol a                                                             ; 2ca0: 2a          *   :8ca0[1]
    rol a                                                             ; 2ca1: 2a          *   :8ca1[1]
    and #1                                                            ; 2ca2: 29 01       ).  :8ca2[1]
    eor #1                                                            ; 2ca4: 49 01       I.  :8ca4[1]
    ldx l00b0                                                         ; 2ca6: a6 b0       ..  :8ca6[1]
    ldy l00b1                                                         ; 2ca8: a4 b1       ..  :8ca8[1]
    inx                                                               ; 2caa: e8          .   :8caa[1]
    bne c8cae                                                         ; 2cab: d0 01       ..  :8cab[1]
    iny                                                               ; 2cad: c8          .   :8cad[1]
; &2cae referenced 1 time by &8cab
.c8cae
    jsr tube_entry                                                    ; 2cae: 20 06 04     .. :8cae[1]
    sec                                                               ; 2cb1: 38          8   :8cb1[1]
; &2cb2 referenced 2 times by &8c93, &8c99
.c8cb2
    ror l00a1                                                         ; 2cb2: 66 a1       f.  :8cb2[1]
    jsr sub_c8f94                                                     ; 2cb4: 20 94 8f     .. :8cb4[1]
    ldy #0                                                            ; 2cb7: a0 00       ..  :8cb7[1]
    lda (l00b0),y                                                     ; 2cb9: b1 b0       ..  :8cb9[1]
    bmi c8cc1                                                         ; 2cbb: 30 04       0.  :8cbb[1]
    and #&0f                                                          ; 2cbd: 29 0f       ).  :8cbd[1]
    sta l00cd                                                         ; 2cbf: 85 cd       ..  :8cbf[1]
; &2cc1 referenced 1 time by &8cbb
.c8cc1
    lda l00cd                                                         ; 2cc1: a5 cd       ..  :8cc1[1]
    and #3                                                            ; 2cc3: 29 03       ).  :8cc3[1]
    tax                                                               ; 2cc5: aa          .   :8cc5[1]
    lda l10de,x                                                       ; 2cc6: bd de 10    ... :8cc6[1]
    sta l108a                                                         ; 2cc9: 8d 8a 10    ... :8cc9[1]
    lda l00cd                                                         ; 2ccc: a5 cd       ..  :8ccc[1]
    ldy #&0a                                                          ; 2cce: a0 0a       ..  :8cce[1]
    and #8                                                            ; 2cd0: 29 08       ).  :8cd0[1]
    beq c8cd6                                                         ; 2cd2: f0 02       ..  :8cd2[1]
    ldy #&10                                                          ; 2cd4: a0 10       ..  :8cd4[1]
; &2cd6 referenced 1 time by &8cd2
.c8cd6
    sty l00a3                                                         ; 2cd6: 84 a3       ..  :8cd6[1]
    eor l911d,x                                                       ; 2cd8: 5d 1d 91    ].. :8cd8[1]
    sta lfe80                                                         ; 2cdb: 8d 80 fe    ... :8cdb[1]
    lsr a                                                             ; 2cde: 4a          J   :8cde[1]
    ldx l1088                                                         ; 2cdf: ae 88 10    ... :8cdf[1]
    bcs c8ce7                                                         ; 2ce2: b0 03       ..  :8ce2[1]
    ldx l1089                                                         ; 2ce4: ae 89 10    ... :8ce4[1]
; &2ce7 referenced 1 time by &8ce2
.c8ce7
    ldy #0                                                            ; 2ce7: a0 00       ..  :8ce7[1]
    sty l00a2                                                         ; 2ce9: 84 a2       ..  :8ce9[1]
    lda l1087                                                         ; 2ceb: ad 87 10    ... :8ceb[1]
    bit l1087                                                         ; 2cee: 2c 87 10    ,.. :8cee[1]
    bcc c8cfc                                                         ; 2cf1: 90 09       ..  :8cf1[1]
    bpl c8d0d                                                         ; 2cf3: 10 18       ..  :8cf3[1]
    sty l1088                                                         ; 2cf5: 8c 88 10    ... :8cf5[1]
    and #&7f                                                          ; 2cf8: 29 7f       ).  :8cf8[1]
    bpl c8d03                                                         ; 2cfa: 10 07       ..  :8cfa[1]
; &2cfc referenced 1 time by &8cf1
.c8cfc
    bvc c8d0d                                                         ; 2cfc: 50 0f       P.  :8cfc[1]
    sty l1089                                                         ; 2cfe: 8c 89 10    ... :8cfe[1]
    and #&bf                                                          ; 2d01: 29 bf       ).  :8d01[1]
; &2d03 referenced 1 time by &8cfa
.c8d03
    sta l1087                                                         ; 2d03: 8d 87 10    ... :8d03[1]
    lda #0                                                            ; 2d06: a9 00       ..  :8d06[1]
    jsr c8e12                                                         ; 2d08: 20 12 8e     .. :8d08[1]
    ldx #0                                                            ; 2d0b: a2 00       ..  :8d0b[1]
; &2d0d referenced 2 times by &8cf3, &8cfc
.c8d0d
    txa                                                               ; 2d0d: 8a          .   :8d0d[1]
    sta l00ce                                                         ; 2d0e: 85 ce       ..  :8d0e[1]
    jsr c8f2a                                                         ; 2d10: 20 2a 8f     *. :8d10[1]
; &2d13 referenced 2 times by &8d1d, &8d25
.c8d13
    rts                                                               ; 2d13: 60          `   :8d13[1]

; &2d14 referenced 1 time by &8d29
.loop_c8d14
    jmp c8eaf                                                         ; 2d14: 4c af 8e    L.. :8d14[1]

; &2d17 referenced 1 time by &8d2d
.loop_c8d17
    jmp c8e12                                                         ; 2d17: 4c 12 8e    L.. :8d17[1]

; &2d1a referenced 1 time by &8c0f
.sub_c8d1a
    jsr sub_c8eff                                                     ; 2d1a: 20 ff 8e     .. :8d1a[1]
    bne c8d13                                                         ; 2d1d: d0 f4       ..  :8d1d[1]
    ldy #6                                                            ; 2d1f: a0 06       ..  :8d1f[1]
    lda (l00b0),y                                                     ; 2d21: b1 b0       ..  :8d21[1]
    cmp #&10                                                          ; 2d23: c9 10       ..  :8d23[1]
    beq c8d13                                                         ; 2d25: f0 ec       ..  :8d25[1]
    cmp #&c0                                                          ; 2d27: c9 c0       ..  :8d27[1]
    beq loop_c8d14                                                    ; 2d29: f0 e9       ..  :8d29[1]
    cmp #&e0                                                          ; 2d2b: c9 e0       ..  :8d2b[1]
    bcs loop_c8d17                                                    ; 2d2d: b0 e8       ..  :8d2d[1]
    ldy #8                                                            ; 2d2f: a0 08       ..  :8d2f[1]
    lda (l00b0),y                                                     ; 2d31: b1 b0       ..  :8d31[1]
    bit l00b2                                                         ; 2d33: 24 b2       $.  :8d33[1]
    bmi c8d92                                                         ; 2d35: 30 5b       0[  :8d35[1]
    ldx l00b5                                                         ; 2d37: a6 b5       ..  :8d37[1]
    beq c8d41                                                         ; 2d39: f0 06       ..  :8d39[1]
    inc l00b3                                                         ; 2d3b: e6 b3       ..  :8d3b[1]
    bne c8d41                                                         ; 2d3d: d0 02       ..  :8d3d[1]
    inc l00b4                                                         ; 2d3f: e6 b4       ..  :8d3f[1]
; &2d41 referenced 3 times by &8d39, &8d3d, &8d8f
.c8d41
    jsr nmi_handler2_rom_end                                          ; 2d41: 20 fb 90     .. :8d41[1]
    sta l00cf                                                         ; 2d44: 85 cf       ..  :8d44[1]
    sbc l00a3                                                         ; 2d46: e5 a3       ..  :8d46[1]
    eor #&ff                                                          ; 2d48: 49 ff       I.  :8d48[1]
    clc                                                               ; 2d4a: 18          .   :8d4a[1]
    adc #1                                                            ; 2d4b: 69 01       i.  :8d4b[1]
    sta l00a5                                                         ; 2d4d: 85 a5       ..  :8d4d[1]
    lda l00b4                                                         ; 2d4f: a5 b4       ..  :8d4f[1]
    bne c8d74                                                         ; 2d51: d0 21       .!  :8d51[1]
    lda l00b3                                                         ; 2d53: a5 b3       ..  :8d53[1]
    beq c8d91                                                         ; 2d55: f0 3a       .:  :8d55[1]
    cmp l00a5                                                         ; 2d57: c5 a5       ..  :8d57[1]
    beq c8d5d                                                         ; 2d59: f0 02       ..  :8d59[1]
    bcs c8d74                                                         ; 2d5b: b0 17       ..  :8d5b[1]
; &2d5d referenced 1 time by &8d59
.c8d5d
    sta l00a5                                                         ; 2d5d: 85 a5       ..  :8d5d[1]
    ldx l00b5                                                         ; 2d5f: a6 b5       ..  :8d5f[1]
    beq c8d74                                                         ; 2d61: f0 11       ..  :8d61[1]
    stx l00a6                                                         ; 2d63: 86 a6       ..  :8d63[1]
    ror l00a1                                                         ; 2d65: 66 a1       f.  :8d65[1]
    sec                                                               ; 2d67: 38          8   :8d67[1]
    rol l00a1                                                         ; 2d68: 26 a1       &.  :8d68[1]
    cmp #1                                                            ; 2d6a: c9 01       ..  :8d6a[1]
    bne c8d74                                                         ; 2d6c: d0 06       ..  :8d6c[1]
    lda nmi_lda_immXXX4+1                                             ; 2d6e: ad 22 0d    .". :8d6e[1]
    sta nmi_lda_immXXX3+1                                             ; 2d71: 8d 4c 0d    .L. :8d71[1]
; &2d74 referenced 4 times by &8d51, &8d5b, &8d61, &8d6c
.c8d74
    lda l00b3                                                         ; 2d74: a5 b3       ..  :8d74[1]
    sec                                                               ; 2d76: 38          8   :8d76[1]
    sbc l00a5                                                         ; 2d77: e5 a5       ..  :8d77[1]
    sta l00b3                                                         ; 2d79: 85 b3       ..  :8d79[1]
    lda l00b4                                                         ; 2d7b: a5 b4       ..  :8d7b[1]
    sbc #0                                                            ; 2d7d: e9 00       ..  :8d7d[1]
    sta l00b4                                                         ; 2d7f: 85 b4       ..  :8d7f[1]
    jsr c8e0e                                                         ; 2d81: 20 0e 8e     .. :8d81[1]
    bne c8d91                                                         ; 2d84: d0 0b       ..  :8d84[1]
    lda l00b3                                                         ; 2d86: a5 b3       ..  :8d86[1]
    ora l00b4                                                         ; 2d88: 05 b4       ..  :8d88[1]
    beq c8d91                                                         ; 2d8a: f0 05       ..  :8d8a[1]
    jsr c8ecc                                                         ; 2d8c: 20 cc 8e     .. :8d8c[1]
    beq c8d41                                                         ; 2d8f: f0 b0       ..  :8d8f[1]
; &2d91 referenced 4 times by &8d55, &8d84, &8d8a, &8d9d
.c8d91
    rts                                                               ; 2d91: 60          `   :8d91[1]

; &2d92 referenced 1 time by &8d35
.c8d92
    jsr nmi_handler2_rom_end                                          ; 2d92: 20 fb 90     .. :8d92[1]
    sta l00cf                                                         ; 2d95: 85 cf       ..  :8d95[1]
    ldy #9                                                            ; 2d97: a0 09       ..  :8d97[1]
    lda (l00b0),y                                                     ; 2d99: b1 b0       ..  :8d99[1]
    and #&1f                                                          ; 2d9b: 29 1f       ).  :8d9b[1]
    beq c8d91                                                         ; 2d9d: f0 f2       ..  :8d9d[1]
    sta l00a5                                                         ; 2d9f: 85 a5       ..  :8d9f[1]
    bit l00a1                                                         ; 2da1: 24 a1       $.  :8da1[1]
    bvs c8e0e                                                         ; 2da3: 70 69       pi  :8da3[1]
    bit l108a                                                         ; 2da5: 2c 8a 10    ,.. :8da5[1]
    bvc c8e0e                                                         ; 2da8: 50 64       Pd  :8da8[1]
    ldx #&33 ; '3'                                                    ; 2daa: a2 33       .3  :8daa[1]
; &2dac referenced 1 time by &8db3
.loop_c8dac
    lda c0d60,x                                                       ; 2dac: bd 60 0d    .`. :8dac[1]
    sta l1000,x                                                       ; 2daf: 9d 00 10    ... :8daf[1]
    dex                                                               ; 2db2: ca          .   :8db2[1]
    bpl loop_c8dac                                                    ; 2db3: 10 f7       ..  :8db3[1]
    jsr sub_c8dc6                                                     ; 2db5: 20 c6 8d     .. :8db5[1]
    ldx #&33 ; '3'                                                    ; 2db8: a2 33       .3  :8db8[1]
; &2dba referenced 1 time by &8dc1
.loop_c8dba
    lda l1000,x                                                       ; 2dba: bd 00 10    ... :8dba[1]
    sta c0d60,x                                                       ; 2dbd: 9d 60 0d    .`. :8dbd[1]
    dex                                                               ; 2dc0: ca          .   :8dc0[1]
    bpl loop_c8dba                                                    ; 2dc1: 10 f7       ..  :8dc1[1]
    lda l00a2                                                         ; 2dc3: a5 a2       ..  :8dc3[1]
    rts                                                               ; 2dc5: 60          `   :8dc5[1]

; &2dc6 referenced 1 time by &8db5
.sub_c8dc6
    lda #0                                                            ; 2dc6: a9 00       ..  :8dc6[1]
    sta l00b4                                                         ; 2dc8: 85 b4       ..  :8dc8[1]
    lda (l00b0),y                                                     ; 2dca: b1 b0       ..  :8dca[1]
    and #&e0                                                          ; 2dcc: 29 e0       ).  :8dcc[1]
    bne c8dd2                                                         ; 2dce: d0 02       ..  :8dce[1]
    lda #&10                                                          ; 2dd0: a9 10       ..  :8dd0[1]
; &2dd2 referenced 1 time by &8dce
.c8dd2
    asl a                                                             ; 2dd2: 0a          .   :8dd2[1]
    rol l00b4                                                         ; 2dd3: 26 b4       &.  :8dd3[1]
    asl a                                                             ; 2dd5: 0a          .   :8dd5[1]
    rol l00b4                                                         ; 2dd6: 26 b4       &.  :8dd6[1]
    asl a                                                             ; 2dd8: 0a          .   :8dd8[1]
    rol l00b4                                                         ; 2dd9: 26 b4       &.  :8dd9[1]
    sta l00b3                                                         ; 2ddb: 85 b3       ..  :8ddb[1]
    tax                                                               ; 2ddd: aa          .   :8ddd[1]
    beq c8de2                                                         ; 2dde: f0 02       ..  :8dde[1]
    inc l00b4                                                         ; 2de0: e6 b4       ..  :8de0[1]
; &2de2 referenced 1 time by &8dde
.c8de2
    jsr nmi3_handler_rom_end                                          ; 2de2: 20 3e 90     >. :8de2[1]
    lda #&14                                                          ; 2de5: a9 14       ..  :8de5[1]
    sta l00b7                                                         ; 2de7: 85 b7       ..  :8de7[1]
; &2de9 referenced 1 time by &8dfc
.loop_c8de9
    lda #&e0                                                          ; 2de9: a9 e0       ..  :8de9[1]
    sta l00a2                                                         ; 2deb: 85 a2       ..  :8deb[1]
    sta lfe84                                                         ; 2ded: 8d 84 fe    ... :8ded[1]
; &2df0 referenced 1 time by &8df2
.loop_c8df0
    lda l00a2                                                         ; 2df0: a5 a2       ..  :8df0[1]
    bmi loop_c8df0                                                    ; 2df2: 30 fc       0.  :8df2[1]
    bne c8e0d                                                         ; 2df4: d0 17       ..  :8df4[1]
    lda l00a5                                                         ; 2df6: a5 a5       ..  :8df6[1]
    beq c8e03                                                         ; 2df8: f0 09       ..  :8df8[1]
    dec l00b7                                                         ; 2dfa: c6 b7       ..  :8dfa[1]
    bne loop_c8de9                                                    ; 2dfc: d0 eb       ..  :8dfc[1]
    lda #&10                                                          ; 2dfe: a9 10       ..  :8dfe[1]
    sta l00a2                                                         ; 2e00: 85 a2       ..  :8e00[1]
    rts                                                               ; 2e02: 60          `   :8e02[1]

; &2e03 referenced 1 time by &8df8
.c8e03
    lda l00b6                                                         ; 2e03: a5 b6       ..  :8e03[1]
    eor #&fb                                                          ; 2e05: 49 fb       I.  :8e05[1]
    beq c8e0d                                                         ; 2e07: f0 04       ..  :8e07[1]
    lda #&20 ; ' '                                                    ; 2e09: a9 20       .   :8e09[1]
    sta l00a2                                                         ; 2e0b: 85 a2       ..  :8e0b[1]
; &2e0d referenced 2 times by &8df4, &8e07
.c8e0d
    rts                                                               ; 2e0d: 60          `   :8e0d[1]

; &2e0e referenced 4 times by &8d81, &8da3, &8da8, &8ec2
.c8e0e
    ldy #6                                                            ; 2e0e: a0 06       ..  :8e0e[1]
    lda (l00b0),y                                                     ; 2e10: b1 b0       ..  :8e10[1]
; &2e12 referenced 4 times by &8d08, &8d17, &8efc, &8f21
.c8e12
    ldy #&ff                                                          ; 2e12: a0 ff       ..  :8e12[1]
; &2e14 referenced 1 time by &8e18
.loop_c8e14
    iny                                                               ; 2e14: c8          .   :8e14[1]
    cmp l9121,y                                                       ; 2e15: d9 21 91    .!. :8e15[1]
    bne loop_c8e14                                                    ; 2e18: d0 fa       ..  :8e18[1]
    pha                                                               ; 2e1a: 48          H   :8e1a[1]
    lda nmi_and_table,y                                               ; 2e1b: b9 2d 91    .-. :8e1b[1]
    sta nmi_and_imm+1                                                 ; 2e1e: 8d 05 0d    ... :8e1e[1]
    ror l00a2                                                         ; 2e21: 66 a2       f.  :8e21[1]
    pla                                                               ; 2e23: 68          h   :8e23[1]
    bpl c8e72                                                         ; 2e24: 10 4c       .L  :8e24[1]
    bit l00a1                                                         ; 2e26: 24 a1       $.  :8e26[1]
    bvc c8e32                                                         ; 2e28: 50 08       P.  :8e28[1]
    ldy l00ce                                                         ; 2e2a: a4 ce       ..  :8e2a[1]
    cpy #&14                                                          ; 2e2c: c0 14       ..  :8e2c[1]
    bcc c8e32                                                         ; 2e2e: 90 02       ..  :8e2e[1]
    ora #2                                                            ; 2e30: 09 02       ..  :8e30[1]
; &2e32 referenced 2 times by &8e28, &8e2e
.c8e32
    sta l00a7                                                         ; 2e32: 85 a7       ..  :8e32[1]
    ldy #1                                                            ; 2e34: a0 01       ..  :8e34[1]
    cmp #&c0                                                          ; 2e36: c9 c0       ..  :8e36[1]
    beq c8e53                                                         ; 2e38: f0 19       ..  :8e38[1]
    ora #4                                                            ; 2e3a: 09 04       ..  :8e3a[1]
    bcs c8e53                                                         ; 2e3c: b0 15       ..  :8e3c[1]
    ldy l00a5                                                         ; 2e3e: a4 a5       ..  :8e3e[1]
    cmp #&85                                                          ; 2e40: c9 85       ..  :8e40[1]
    beq c8e4d                                                         ; 2e42: f0 09       ..  :8e42[1]
    cmp #&87                                                          ; 2e44: c9 87       ..  :8e44[1]
    bne c8e53                                                         ; 2e46: d0 0b       ..  :8e46[1]
    lda #nmi_XXX1-(nmi_beq+2)                                         ; 2e48: a9 48       .H  :8e48[1]
    sta nmi_beq+1                                                     ; 2e4a: 8d 09 0d    ... :8e4a[1]
; &2e4d referenced 1 time by &8e42
.c8e4d
    lda #&80                                                          ; 2e4d: a9 80       ..  :8e4d[1]
    sta l00a7                                                         ; 2e4f: 85 a7       ..  :8e4f[1]
    lda #&84                                                          ; 2e51: a9 84       ..  :8e51[1]
; &2e53 referenced 3 times by &8e38, &8e3c, &8e46
.c8e53
    sty l00a5                                                         ; 2e53: 84 a5       ..  :8e53[1]
    sta lfe84                                                         ; 2e55: 8d 84 fe    ... :8e55[1]
    cmp #&f0                                                          ; 2e58: c9 f0       ..  :8e58[1]
    bcc c8e64                                                         ; 2e5a: 90 08       ..  :8e5a[1]
    jsr c8e9f                                                         ; 2e5c: 20 9f 8e     .. :8e5c[1]
    and #&5c ; '\'                                                    ; 2e5f: 29 5c       )\  :8e5f[1]
    sta l00a2                                                         ; 2e61: 85 a2       ..  :8e61[1]
    rts                                                               ; 2e63: 60          `   :8e63[1]

; &2e64 referenced 4 times by &8e5a, &8e66, &8e7f, &8e83
.c8e64
    lda l00a2                                                         ; 2e64: a5 a2       ..  :8e64[1]
    bmi c8e64                                                         ; 2e66: 30 fc       0.  :8e66[1]
    cmp #&20 ; ' '                                                    ; 2e68: c9 20       .   :8e68[1]
    bne c8e6f                                                         ; 2e6a: d0 03       ..  :8e6a[1]
    jsr c8ea5                                                         ; 2e6c: 20 a5 8e     .. :8e6c[1]
; &2e6f referenced 1 time by &8e6a
.c8e6f
    lda l00a2                                                         ; 2e6f: a5 a2       ..  :8e6f[1]
    rts                                                               ; 2e71: 60          `   :8e71[1]

; &2e72 referenced 1 time by &8e24
.c8e72
    ldy #1                                                            ; 2e72: a0 01       ..  :8e72[1]
    sty l00a5                                                         ; 2e74: 84 a5       ..  :8e74[1]
    ora l00a4                                                         ; 2e76: 05 a4       ..  :8e76[1]
    sta l00a7                                                         ; 2e78: 85 a7       ..  :8e78[1]
    sta lfe84                                                         ; 2e7a: 8d 84 fe    ... :8e7a[1]
    bit l00b2                                                         ; 2e7d: 24 b2       $.  :8e7d[1]
    bmi c8e64                                                         ; 2e7f: 30 e3       0.  :8e7f[1]
    cmp #&20 ; ' '                                                    ; 2e81: c9 20       .   :8e81[1]
    bcs c8e64                                                         ; 2e83: b0 df       ..  :8e83[1]
; &2e85 referenced 1 time by &8e8b
.loop_c8e85
    lda l00a2                                                         ; 2e85: a5 a2       ..  :8e85[1]
    bpl c8e9e                                                         ; 2e87: 10 15       ..  :8e87[1]
    lda l00ff                                                         ; 2e89: a5 ff       ..  :8e89[1]
    bpl loop_c8e85                                                    ; 2e8b: 10 f8       ..  :8e8b[1]
    lda #opcode_rti                                                   ; 2e8d: a9 40       .@  :8e8d[1]
    sta nmi_handler_ram                                               ; 2e8f: 8d 00 0d    ... :8e8f[1]
    lda #0                                                            ; 2e92: a9 00       ..  :8e92[1]
    sta lfe80                                                         ; 2e94: 8d 80 fe    ... :8e94[1]
    lda l00ff                                                         ; 2e97: a5 ff       ..  :8e97[1]
    sta l1082                                                         ; 2e99: 8d 82 10    ... :8e99[1]
    sta l00a2                                                         ; 2e9c: 85 a2       ..  :8e9c[1]
; &2e9e referenced 1 time by &8e87
.c8e9e
    rts                                                               ; 2e9e: 60          `   :8e9e[1]

; &2e9f referenced 2 times by &8e5c, &8ea3
.c8e9f
    lda lfe84                                                         ; 2e9f: ad 84 fe    ... :8e9f[1]
    ror a                                                             ; 2ea2: 6a          j   :8ea2[1]
    bcc c8e9f                                                         ; 2ea3: 90 fa       ..  :8ea3[1]
; &2ea5 referenced 2 times by &8e6c, &8ea9
.c8ea5
    lda lfe84                                                         ; 2ea5: ad 84 fe    ... :8ea5[1]
    ror a                                                             ; 2ea8: 6a          j   :8ea8[1]
    bcs c8ea5                                                         ; 2ea9: b0 fa       ..  :8ea9[1]
    lda lfe84                                                         ; 2eab: ad 84 fe    ... :8eab[1]
    rts                                                               ; 2eae: 60          `   :8eae[1]

; &2eaf referenced 1 time by &8d14
.c8eaf
    lda #nmi_XXX1-(nmi_beq+2)                                         ; 2eaf: a9 48       .H  :8eaf[1]
    sta nmi_lda_immXXX3+1                                             ; 2eb1: 8d 4c 0d    .L. :8eb1[1]
    ldx nmi_beq+1                                                     ; 2eb4: ae 09 0d    ... :8eb4[1]
; &2eb7 referenced 2 times by &8eb9, &8ec9
.c8eb7
    sbc #1                                                            ; 2eb7: e9 01       ..  :8eb7[1]
    bne c8eb7                                                         ; 2eb9: d0 fc       ..  :8eb9[1]
    stx nmi_beq+1                                                     ; 2ebb: 8e 09 0d    ... :8ebb[1]
    lda #4                                                            ; 2ebe: a9 04       ..  :8ebe[1]
    sta l00a6                                                         ; 2ec0: 85 a6       ..  :8ec0[1]
    jsr c8e0e                                                         ; 2ec2: 20 0e 8e     .. :8ec2[1]
    bne c8ecb                                                         ; 2ec5: d0 04       ..  :8ec5[1]
    dec l00b3                                                         ; 2ec7: c6 b3       ..  :8ec7[1]
    bne c8eb7                                                         ; 2ec9: d0 ec       ..  :8ec9[1]
; &2ecb referenced 1 time by &8ec5
.c8ecb
    rts                                                               ; 2ecb: 60          `   :8ecb[1]

; &2ecc referenced 3 times by &8d8c, &8ee2, &8ee7
.c8ecc
    jsr sub_c8eec                                                     ; 2ecc: 20 ec 8e     .. :8ecc[1]
    bne c8eeb                                                         ; 2ecf: d0 1a       ..  :8ecf[1]
    lda l00cd                                                         ; 2ed1: a5 cd       ..  :8ed1[1]
    and #1                                                            ; 2ed3: 29 01       ).  :8ed3[1]
    asl a                                                             ; 2ed5: 0a          .   :8ed5[1]
    tay                                                               ; 2ed6: a8          .   :8ed6[1]
    lda l00ce                                                         ; 2ed7: a5 ce       ..  :8ed7[1]
    bit l108a                                                         ; 2ed9: 2c 8a 10    ,.. :8ed9[1]
    bpl c8edf                                                         ; 2edc: 10 01       ..  :8edc[1]
    lsr a                                                             ; 2ede: 4a          J   :8ede[1]
; &2edf referenced 1 time by &8edc
.c8edf
    cmp l108b,y                                                       ; 2edf: d9 8b 10    ... :8edf[1]
    beq c8ecc                                                         ; 2ee2: f0 e8       ..  :8ee2[1]
    cmp l108c,y                                                       ; 2ee4: d9 8c 10    ... :8ee4[1]
    beq c8ecc                                                         ; 2ee7: f0 e3       ..  :8ee7[1]
    lda #0                                                            ; 2ee9: a9 00       ..  :8ee9[1]
; &2eeb referenced 2 times by &8ecf, &8ef6
.c8eeb
    rts                                                               ; 2eeb: 60          `   :8eeb[1]

; &2eec referenced 1 time by &8ecc
.sub_c8eec
    bit l108a                                                         ; 2eec: 2c 8a 10    ,.. :8eec[1]
    bpl c8ef8                                                         ; 2eef: 10 07       ..  :8eef[1]
    lda #&40 ; '@'                                                    ; 2ef1: a9 40       .@  :8ef1[1]
    jsr sub_c8efa                                                     ; 2ef3: 20 fa 8e     .. :8ef3[1]
    bne c8eeb                                                         ; 2ef6: d0 f3       ..  :8ef6[1]
; &2ef8 referenced 1 time by &8eef
.c8ef8
    lda #&50 ; 'P'                                                    ; 2ef8: a9 50       .P  :8ef8[1]
; &2efa referenced 1 time by &8ef3
.sub_c8efa
    inc l00ce                                                         ; 2efa: e6 ce       ..  :8efa[1]
    jmp c8e12                                                         ; 2efc: 4c 12 8e    L.. :8efc[1]

; &2eff referenced 1 time by &8d1a
.sub_c8eff
    lda l00cd                                                         ; 2eff: a5 cd       ..  :8eff[1]
    and #1                                                            ; 2f01: 29 01       ).  :8f01[1]
    asl a                                                             ; 2f03: 0a          .   :8f03[1]
    tax                                                               ; 2f04: aa          .   :8f04[1]
    ldy #7                                                            ; 2f05: a0 07       ..  :8f05[1]
    lda (l00b0),y                                                     ; 2f07: b1 b0       ..  :8f07[1]
    jsr sub_c8f33                                                     ; 2f09: 20 33 8f     3. :8f09[1]
    bit l108a                                                         ; 2f0c: 2c 8a 10    ,.. :8f0c[1]
    bpl c8f12                                                         ; 2f0f: 10 01       ..  :8f0f[1]
    asl a                                                             ; 2f11: 0a          .   :8f11[1]
; &2f12 referenced 1 time by &8f0f
.c8f12
    sta l00ce                                                         ; 2f12: 85 ce       ..  :8f12[1]
    tay                                                               ; 2f14: a8          .   :8f14[1]
    beq c8f21                                                         ; 2f15: f0 0a       ..  :8f15[1]
; &2f17 referenced 1 time by &8f1d
.loop_c8f17
    sta lfe87                                                         ; 2f17: 8d 87 fe    ... :8f17[1]
    cmp lfe87                                                         ; 2f1a: cd 87 fe    ... :8f1a[1]
    bne loop_c8f17                                                    ; 2f1d: d0 f8       ..  :8f1d[1]
    lda #&10                                                          ; 2f1f: a9 10       ..  :8f1f[1]
; &2f21 referenced 1 time by &8f15
.c8f21
    jsr c8e12                                                         ; 2f21: 20 12 8e     .. :8f21[1]
    bne c8f3e                                                         ; 2f24: d0 18       ..  :8f24[1]
    ldy #7                                                            ; 2f26: a0 07       ..  :8f26[1]
    lda (l00b0),y                                                     ; 2f28: b1 b0       ..  :8f28[1]
; &2f2a referenced 3 times by &8c44, &8d10, &8f30
.c8f2a
    sta lfe85                                                         ; 2f2a: 8d 85 fe    ... :8f2a[1]
    cmp lfe85                                                         ; 2f2d: cd 85 fe    ... :8f2d[1]
    bne c8f2a                                                         ; 2f30: d0 f8       ..  :8f30[1]
    rts                                                               ; 2f32: 60          `   :8f32[1]

; &2f33 referenced 1 time by &8f09
.sub_c8f33
    jsr sub_c8f37                                                     ; 2f33: 20 37 8f     7. :8f33[1]
    inx                                                               ; 2f36: e8          .   :8f36[1]
; &2f37 referenced 1 time by &8f33
.sub_c8f37
    cmp l108b,x                                                       ; 2f37: dd 8b 10    ... :8f37[1]
    bcc c8f3e                                                         ; 2f3a: 90 02       ..  :8f3a[1]
    adc #0                                                            ; 2f3c: 69 00       i.  :8f3c[1]
; &2f3e referenced 2 times by &8f24, &8f3a
.c8f3e
    rts                                                               ; 2f3e: 60          `   :8f3e[1]

; &2f3f referenced 5 times by &8c95, &8f75, &92b0, &932b, &9628
.sub_c8f3f
    lda #osbyte_read_tube_presence                                    ; 2f3f: a9 ea       ..  :8f3f[1]
    ldx #0                                                            ; 2f41: a2 00       ..  :8f41[1]
    ldy #&ff                                                          ; 2f43: a0 ff       ..  :8f43[1]
    jsr osbyte                                                        ; 2f45: 20 f4 ff     .. :8f45[1]   ; Read Tube present flag
    txa                                                               ; 2f48: 8a          .   :8f48[1]
    eor #&ff                                                          ; 2f49: 49 ff       I.  :8f49[1]
    sta l10d6                                                         ; 2f4b: 8d d6 10    ... :8f4b[1]
    rts                                                               ; 2f4e: 60          `   :8f4e[1]

; &2f4f referenced 1 time by &8c65
.sub_c8f4f
    lda #osbyte_issue_service_request                                 ; 2f4f: a9 8f       ..  :8f4f[1]
    ldx #&0c                                                          ; 2f51: a2 0c       ..  :8f51[1]
    ldy #&ff                                                          ; 2f53: a0 ff       ..  :8f53[1]
    jsr osbyte                                                        ; 2f55: 20 f4 ff     .. :8f55[1]   ; Issue paged ROM service call, Reason 12 - NMI claim
    sty l00a0                                                         ; 2f58: 84 a0       ..  :8f58[1]
    inc l10d3                                                         ; 2f5a: ee d3 10    ... :8f5a[1]
    rts                                                               ; 2f5d: 60          `   :8f5d[1]

; &2f5e referenced 1 time by &8c4e
.sub_c8f5e
    ldy l00a0                                                         ; 2f5e: a4 a0       ..  :8f5e[1]
    lda #osbyte_issue_service_request                                 ; 2f60: a9 8f       ..  :8f60[1]
    ldx #&0b                                                          ; 2f62: a2 0b       ..  :8f62[1]
    jsr osbyte                                                        ; 2f64: 20 f4 ff     .. :8f64[1]   ; Issue paged ROM service call, Reason 11 - NMI released
    dec l10d3                                                         ; 2f67: ce d3 10    ... :8f67[1]
    rts                                                               ; 2f6a: 60          `   :8f6a[1]

; &2f6b referenced 4 times by &8921, &8c9b, &933e, &9819
.sub_c8f6b
    pha                                                               ; 2f6b: 48          H   :8f6b[1]
; &2f6c referenced 1 time by &8f71
.loop_c8f6c
    lda #&c1                                                          ; 2f6c: a9 c1       ..  :8f6c[1]
    jsr tube_entry                                                    ; 2f6e: 20 06 04     .. :8f6e[1]
    bcc loop_c8f6c                                                    ; 2f71: 90 f9       ..  :8f71[1]
    pla                                                               ; 2f73: 68          h   :8f73[1]
    rts                                                               ; 2f74: 60          `   :8f74[1]

; &2f75 referenced 1 time by &8071
.sub_c8f75
    jsr sub_c8f3f                                                     ; 2f75: 20 3f 8f     ?. :8f75[1]
    bmi c8f81                                                         ; 2f78: 30 07       0.  :8f78[1]
; &2f7a referenced 3 times by &8c4b, &9364, &97e3
.sub_c8f7a
    pha                                                               ; 2f7a: 48          H   :8f7a[1]
    lda #&81                                                          ; 2f7b: a9 81       ..  :8f7b[1]
    jsr tube_entry                                                    ; 2f7d: 20 06 04     .. :8f7d[1]
    pla                                                               ; 2f80: 68          h   :8f80[1]
; &2f81 referenced 1 time by &8f78
.c8f81
    rts                                                               ; 2f81: 60          `   :8f81[1]

; &2f82 referenced 1 time by &8c68
.sub_c8f82
    lda #osbyte_read_write_startup_options                            ; 2f82: a9 ff       ..  :8f82[1]
    ldx #0                                                            ; 2f84: a2 00       ..  :8f84[1]
    tay                                                               ; 2f86: a8          .   :8f86[1]
    jsr osbyte                                                        ; 2f87: 20 f4 ff     .. :8f87[1]   ; Read start-up option byte
    txa                                                               ; 2f8a: 8a          .   :8f8a[1]
    lsr a                                                             ; 2f8b: 4a          J   :8f8b[1]
    lsr a                                                             ; 2f8c: 4a          J   :8f8c[1]
    lsr a                                                             ; 2f8d: 4a          J   :8f8d[1]
    lsr a                                                             ; 2f8e: 4a          J   :8f8e[1]
    and #3                                                            ; 2f8f: 29 03       ).  :8f8f[1]
    sta l00a4                                                         ; 2f91: 85 a4       ..  :8f91[1]
    rts                                                               ; 2f93: 60          `   :8f93[1]

; &2f94 referenced 1 time by &8cb4
.sub_c8f94
    ldx #nmi_handler_rom_end-nmi_handler_rom_start-1                  ; 2f94: a2 5d       .]  :8f94[1]
; &2f96 referenced 1 time by &8f9d
.loop_c8f96
    lda nmi_handler_rom_start,x                                       ; 2f96: bd d2 8f    ... :8f96[1]
    sta nmi_handler_ram,x                                             ; 2f99: 9d 00 0d    ... :8f99[1]
    dex                                                               ; 2f9c: ca          .   :8f9c[1]
    bpl loop_c8f96                                                    ; 2f9d: 10 f7       ..  :8f9d[1]
    ldx #3                                                            ; 2f9f: a2 03       ..  :8f9f[1]
    bit l00a1                                                         ; 2fa1: 24 a1       $.  :8fa1[1]
    bvc c8fb5                                                         ; 2fa3: 50 10       P.  :8fa3[1]
    lda #nmi_XXX8-(nmi_beq+2)                                         ; 2fa5: a9 4d       .M  :8fa5[1]
    sta nmi_lda_immXXX4+1                                             ; 2fa7: 8d 22 0d    .". :8fa7[1]
    ldx #nmi3_handler_rom_end-nmi3_handler_rom_start                  ; 2faa: a2 0e       ..  :8faa[1]
; &2fac referenced 1 time by &8fb3
.loop_c8fac
    lda nmi3_handler_rom_start-1,x                                    ; 2fac: bd 2f 90    ./. :8fac[1]
    sta nmi_XXX2-1,x                                                  ; 2faf: 9d 38 0d    .8. :8faf[1]
    dex                                                               ; 2fb2: ca          .   :8fb2[1]
    bne loop_c8fac                                                    ; 2fb3: d0 f7       ..  :8fb3[1]
; &2fb5 referenced 1 time by &8fa3
.c8fb5
    bit l00a1                                                         ; 2fb5: 24 a1       $.  :8fb5[1]
    bmi c8fc7                                                         ; 2fb7: 30 0e       0.  :8fb7[1]
    ldy #1                                                            ; 2fb9: a0 01       ..  :8fb9[1]
    lda (l00b0),y                                                     ; 2fbb: b1 b0       ..  :8fbb[1]
    sta nmi_lda_abs+1,x                                               ; 2fbd: 9d 3a 0d    .:. :8fbd[1]
    iny                                                               ; 2fc0: c8          .   :8fc0[1]
    lda (l00b0),y                                                     ; 2fc1: b1 b0       ..  :8fc1[1]
    sta nmi_lda_abs+2,x                                               ; 2fc3: 9d 3b 0d    .;. :8fc3[1]
    rts                                                               ; 2fc6: 60          `   :8fc6[1]

; &2fc7 referenced 1 time by &8fb7
.c8fc7
    lda #opcode_bcs                                                   ; 2fc7: a9 b0       ..  :8fc7[1]
    sta nmi_XXX6                                                      ; 2fc9: 8d 3f 0d    .?. :8fc9[1]
    lda #nmi_XXX7-(nmi_XXX6+2)                                        ; 2fcc: a9 06       ..  :8fcc[1]
    sta nmi_XXX6+1                                                    ; 2fce: 8d 40 0d    .@. :8fce[1]
    rts                                                               ; 2fd1: 60          `   :8fd1[1]

.nmi_handler_rom_start
    org pydis_start + (nmi_handler_rom_start - rom_header)
    copyblock rom_header, nmi_handler_rom_start, pydis_start
    clear rom_header, nmi_handler_rom_start


    org &0d00
.nmi_handler_ram
    pha                                                               ; 2fd2: 48          H   :0d00[5]
    lda lfe84                                                         ; 2fd3: ad 84 fe    ... :0d01[5]
; The operand of this and is modified at runtime.
.nmi_and_imm
    and #&18                                                          ; 2fd6: 29 18       ).  :0d04[5]
    cmp #3                                                            ; 2fd8: c9 03       ..  :0d06[5]
; The operand of this "beq" is modified at runtime.
.nmi_beq
    beq nmi_XXX2                                                      ; 2fda: f0 2f       ./  :0d08[5]
    and #&fc                                                          ; 2fdc: 29 fc       ).  :0d0a[5]
    bne l0d12                                                         ; 2fde: d0 04       ..  :0d0c[5]
    dec l00a5                                                         ; 2fe0: c6 a5       ..  :0d0e[5]
    bne nmi_lda_zp                                                    ; 2fe2: d0 04       ..  :0d10[5]
.l0d12
    sta l00a2                                                         ; 2fe4: 85 a2       ..  :0d12[5]
    pla                                                               ; 2fe6: 68          h   :0d14[5]
    rti                                                               ; 2fe7: 40          @   :0d15[5]

; The operand of this lda is modified at runtime.
.nmi_lda_zp
    lda l00a5                                                         ; 2fe8: a5 a5       ..  :0d16[5]
; This instruction is patched at runtime to toggle between cmp #/bcs.
.nmi_cmp_imm_or_bcs
    cmp #1                                                            ; 2fea: c9 01       ..  :0d18[5]
    bne l0d26                                                         ; 2fec: d0 0a       ..  :0d1a[5]
    lda l00a1                                                         ; 2fee: a5 a1       ..  :0d1c[5]
    ror a                                                             ; 2ff0: 6a          j   :0d1e[5]
.l0d1f
nmi_XXX5 = l0d1f+1
    bcc l0d26                                                         ; 2ff1: 90 05       ..  :0d1f[5]
; One patched variant of the code transfers control to nmi_XXX5, which is the
;     second byte of the following bcc instruction. That is always &05, which is
;     ORA #. XXX: correct?
; The operand of this lda is modified at runtime.
.nmi_lda_immXXX4
    lda #nmi_XXX1-(nmi_beq+2)                                         ; 2ff3: a9 48       .H  :0d21[5]
    sta nmi_lda_immXXX3+1                                             ; 2ff5: 8d 4c 0d    .L. :0d23[5]
.l0d26
    inc l00cf                                                         ; 2ff8: e6 cf       ..  :0d26[5]
    lda l00cf                                                         ; 2ffa: a5 cf       ..  :0d28[5]
.l0d2a
    sta lfe86                                                         ; 2ffc: 8d 86 fe    ... :0d2a[5]
    cmp lfe86                                                         ; 2fff: cd 86 fe    ... :0d2d[5]
    bne l0d2a                                                         ; 3002: d0 f8       ..  :0d30[5]
    lda l00a7                                                         ; 3004: a5 a7       ..  :0d32[5]
    sta lfe84                                                         ; 3006: 8d 84 fe    ... :0d34[5]
    pla                                                               ; 3009: 68          h   :0d37[5]
    rti                                                               ; 300a: 40          @   :0d38[5]

.nmi_XXX2
    lda lfe87                                                         ; 300b: ad 87 fe    ... :0d39[5]
; The operand of this sta is modified at runtime.
.nmi_sta_abs
    sta tube_host_r3_data                                             ; 300e: 8d e5 fe    ... :0d3c[5]
; The first two bytes of the following instruction may be patched at runtime.
.nmi_XXX6
    inc nmi_sta_abs+1                                                 ; 3011: ee 3d 0d    .=. :0d3f[5]
    bne nmi_XXX7                                                      ; 3014: d0 03       ..  :0d42[5]
    inc nmi_sta_abs+2                                                 ; 3016: ee 3e 0d    .>. :0d44[5]
.nmi_XXX7
    dec l00a6                                                         ; 3019: c6 a6       ..  :0d47[5]
    bne l0d50                                                         ; 301b: d0 05       ..  :0d49[5]
; The operand of this lda is modified at runtime.
.nmi_lda_immXXX3
    lda #nmi_XXX2-(nmi_beq+2)                                         ; 301d: a9 2f       ./  :0d4b[5]
    sta nmi_beq+1                                                     ; 301f: 8d 09 0d    ... :0d4d[5]
.l0d50
    pla                                                               ; 3022: 68          h   :0d50[5]
    rti                                                               ; 3023: 40          @   :0d51[5]

.nmi_XXX1
    lda lfe87                                                         ; 3024: ad 87 fe    ... :0d52[5]
    pla                                                               ; 3027: 68          h   :0d55[5]
    rti                                                               ; 3028: 40          @   :0d56[5]

.nmi_XXX8
    lda #0                                                            ; 3029: a9 00       ..  :0d57[5]
    sta lfe87                                                         ; 302b: 8d 87 fe    ... :0d59[5]
    pla                                                               ; 302e: 68          h   :0d5c[5]
    rti                                                               ; 302f: 40          @   :0d5d[5]

; The operand of this lda is modified at runtime.
    org sub_c2fd2 + (sub_c0d5e - nmi_handler_ram)
    copyblock nmi_handler_ram, sub_c0d5e, sub_c2fd2
    clear nmi_handler_ram, sub_c0d5e

; The operand of this lda is modified at runtime.
; The operand of this lda is modified at runtime.

    org &0d39
; The operand of this lda is modified at runtime.
.nmi_lda_abs
    lda tube_host_r3_data                                             ; 3030: ad e5 fe    ... :0d39[6]
    sta lfe87                                                         ; 3033: 8d 87 fe    ... :0d3c[6]
    inc nmi_lda_abs+1                                                 ; 3036: ee 3a 0d    .:. :0d3f[6]
    bne nmi_XXX7                                                      ; 3039: d0 03       ..  :0d42[6]
    inc nmi_lda_abs+2                                                 ; 303b: ee 3b 0d    .;. :0d44[6]
; &303e referenced 1 time by &8de2
    org sub_c3030 + (l0d47 - nmi_lda_abs)
    copyblock nmi_lda_abs, l0d47, sub_c3030
    clear nmi_lda_abs, l0d47

; &303e referenced 1 time by &8de2
; &303e referenced 1 time by &8de2

    org &903e
; &303e referenced 1 time by &8de2
.nmi3_handler_rom_end
    ldx nmi_sta_abs+1                                                 ; 303e: ae 3d 0d    .=. :903e[1]
    lda nmi_sta_abs+2                                                 ; 3041: ad 3e 0d    .>. :9041[1]
    pha                                                               ; 3044: 48          H   :9044[1]
    ldy #nmi_handler2_rom_end-nmi_handler2_rom_start                  ; 3045: a0 94       ..  :9045[1]
; &3047 referenced 1 time by &904e
.loop_c9047
    lda nmi_handler2_rom_start-1,y                                    ; 3047: b9 66 90    .f. :9047[1]
    sta l0cff,y                                                       ; 304a: 99 ff 0c    ... :904a[1]
    dey                                                               ; 304d: 88          .   :904d[1]
    bne loop_c9047                                                    ; 304e: d0 f7       ..  :904e[1]
    pla                                                               ; 3050: 68          h   :9050[1]
    bit l00a1                                                         ; 3051: 24 a1       $.  :9051[1]
    bpl c9060                                                         ; 3053: 10 0b       ..  :9053[1]
    lda #opcode_bcs                                                   ; 3055: a9 b0       ..  :9055[1]
    sta nmi_cmp_imm_or_bcs                                            ; 3057: 8d 18 0d    ... :9057[1]
    lda #nmi_XXX5-(nmi_cmp_imm_or_bcs+2)                              ; 305a: a9 06       ..  :905a[1]
    sta nmi_cmp_imm_or_bcs+1                                          ; 305c: 8d 19 0d    ... :905c[1]
    rts                                                               ; 305f: 60          `   :905f[1]

; &3060 referenced 1 time by &9053
.c9060
    stx nmi_lda_zp                                                    ; 3060: 8e 16 0d    ... :9060[1]
    sta nmi_lda_zp+1                                                  ; 3063: 8d 17 0d    ... :9063[1]
; &3066 referenced 1 time by &9047
    rts                                                               ; 3066: 60          `   :9066[1]

.nmi_handler2_rom_start
    org sub_c303e + (nmi_handler2_rom_start - nmi3_handler_rom_end)
    copyblock nmi3_handler_rom_end, nmi_handler2_rom_start, sub_c303e
    clear nmi3_handler_rom_end, nmi_handler2_rom_start


    org &0d00
    pha                                                               ; 3067: 48          H   :0d00[7]
    lda lfe84                                                         ; 3068: ad 84 fe    ... :0d01[7]
    and #&1b                                                          ; 306b: 29 1b       ).  :0d04[7]
    cmp #3                                                            ; 306d: c9 03       ..  :0d06[7]
    bne l0d0f                                                         ; 306f: d0 05       ..  :0d08[7]
    lda lfe87                                                         ; 3071: ad 87 fe    ... :0d0a[7]
; The operand of this bcs is modified at runtime
.nmi_bcs
    bcs nmi_XXX21                                                     ; 3074: b0 26       .&  :0d0d[7]
.l0d0f
    and #&fc                                                          ; 3076: 29 fc       ).  :0d0f[7]
    sta l00a2                                                         ; 3078: 85 a2       ..  :0d11[7]
    pla                                                               ; 307a: 68          h   :0d13[7]
    rti                                                               ; 307b: 40          @   :0d14[7]

; The operand of this sta is modified at runtime.
.nmi_XXX17
.nmi_sta_abs2
    sta tube_host_r3_data                                             ; 307c: 8d e5 fe    ... :0d15[7]
    inc nmi_sta_abs2+1                                                ; 307f: ee 16 0d    ... :0d18[7]
    bne nmi_XXX18                                                     ; 3082: d0 03       ..  :0d1b[7]
    inc nmi_sta_abs2+2                                                ; 3084: ee 17 0d    ... :0d1d[7]
.nmi_XXX18
    dec l00a6                                                         ; 3087: c6 a6       ..  :0d20[7]
    bne nmi_XXX23                                                     ; 3089: d0 0f       ..  :0d22[7]
    dec l00a7                                                         ; 308b: c6 a7       ..  :0d24[7]
    bne nmi_XXX23                                                     ; 308d: d0 0b       ..  :0d26[7]
    lda #nmi_XXX22-(nmi_bcs+2)                                        ; 308f: a9 77       .w  :0d28[7]
    dec l00a5                                                         ; 3091: c6 a5       ..  :0d2a[7]
    bne l0d30                                                         ; 3093: d0 02       ..  :0d2c[7]
    lda #nmi_XXX23-(nmi_bcs+2)                                        ; 3095: a9 24       .$  :0d2e[7]
.l0d30
    sta nmi_bcs+1                                                     ; 3097: 8d 0e 0d    ... :0d30[7]
.nmi_XXX23
    pla                                                               ; 309a: 68          h   :0d33[7]
    rti                                                               ; 309b: 40          @   :0d34[7]

.nmi_XXX21
    cmp #&fe                                                          ; 309c: c9 fe       ..  :0d35[7]
    beq l0d3d                                                         ; 309e: f0 04       ..  :0d37[7]
    cmp #&ce                                                          ; 30a0: c9 ce       ..  :0d39[7]
    bne nmi_XXX23                                                     ; 30a2: d0 f6       ..  :0d3b[7]
.l0d3d
    lda #nmi_XXX10-(nmi_bcs+2)                                        ; 30a4: a9 32       .2  :0d3d[7]
    bne l0d30                                                         ; 30a6: d0 ef       ..  :0d3f[7]
.nmi_XXX10
    sbc lfe87                                                         ; 30a8: ed 87 fe    ... :0d41[7]
    sta l00b5                                                         ; 30ab: 85 b5       ..  :0d44[7]
    lda #nmi_XXX11-(nmi_bcs+2)                                        ; 30ad: a9 3b       .;  :0d46[7]
    bne l0d30                                                         ; 30af: d0 e6       ..  :0d48[7]
.nmi_XXX11
    lda #nmi_XXX12-(nmi_bcs+2)                                        ; 30b1: a9 3f       .?  :0d4a[7]
    bne l0d30                                                         ; 30b3: d0 e2       ..  :0d4c[7]
.nmi_XXX12
    sbc l00cf                                                         ; 30b5: e5 cf       ..  :0d4e[7]
    ora l00b5                                                         ; 30b7: 05 b5       ..  :0d50[7]
    sta l00b5                                                         ; 30b9: 85 b5       ..  :0d52[7]
    lda #nmi_XXX13-(nmi_bcs+2)                                        ; 30bb: a9 49       .I  :0d54[7]
    bne l0d30                                                         ; 30bd: d0 d8       ..  :0d56[7]
.nmi_XXX13
    lda #nmi_XXX14-(nmi_bcs+2)                                        ; 30bf: a9 4d       .M  :0d58[7]
    bne l0d30                                                         ; 30c1: d0 d4       ..  :0d5a[7]
.nmi_XXX14
    lda l00b3                                                         ; 30c3: a5 b3       ..  :0d5c[7]
    sta l00a6                                                         ; 30c5: 85 a6       ..  :0d5e[7]
; &30c7 referenced 2 times by &8dac, &8dbd
.c0d60
    lda #nmi_XXX15-(nmi_bcs+2)                                        ; 30c7: a9 55       .U  :0d60[7]
    bne l0d30                                                         ; 30c9: d0 cc       ..  :0d62[7]
.nmi_XXX15
    lda l00b4                                                         ; 30cb: a5 b4       ..  :0d64[7]
    sta l00a7                                                         ; 30cd: 85 a7       ..  :0d66[7]
    lda #nmi_XXX16-(nmi_bcs+2)                                        ; 30cf: a9 5d       .]  :0d68[7]
    bne l0d30                                                         ; 30d1: d0 c4       ..  :0d6a[7]
.nmi_XXX16
    cmp #&fb                                                          ; 30d3: c9 fb       ..  :0d6c[7]
    beq c0d74                                                         ; 30d5: f0 04       ..  :0d6e[7]
    cmp #&f8                                                          ; 30d7: c9 f8       ..  :0d70[7]
    bne nmi_XXX23                                                     ; 30d9: d0 bf       ..  :0d72[7]
; &30db referenced 1 time by &0d6e
.c0d74
    sta l00b6                                                         ; 30db: 85 b6       ..  :0d74[7]
    lda l00b5                                                         ; 30dd: a5 b5       ..  :0d76[7]
    bne c0d80                                                         ; 30df: d0 06       ..  :0d78[7]
    inc l00cf                                                         ; 30e1: e6 cf       ..  :0d7a[7]
    lda #nmi_XXX17-(nmi_bcs+2)                                        ; 30e3: a9 06       ..  :0d7c[7]
    bne l0d30                                                         ; 30e5: d0 b0       ..  :0d7e[7]
; &30e7 referenced 1 time by &0d78
.c0d80
    inc l00a5                                                         ; 30e7: e6 a5       ..  :0d80[7]
    lda #nmi_XXX18-(nmi_bcs+2)                                        ; 30e9: a9 11       ..  :0d82[7]
    bne l0d30                                                         ; 30eb: d0 aa       ..  :0d84[7]
.nmi_XXX22
    lda #nmi_XXX19-(nmi_bcs+2)                                        ; 30ed: a9 7b       .{  :0d86[7]
    bne l0d30                                                         ; 30ef: d0 a6       ..  :0d88[7]
.nmi_XXX19
    lda #nmi_XXX20-(nmi_bcs+2)                                        ; 30f1: a9 7f       ..  :0d8a[7]
    bne l0d30                                                         ; 30f3: d0 a2       ..  :0d8c[7]
.nmi_XXX20
    bne nmi_XXX23                                                     ; 30f5: d0 a3       ..  :0d8e[7]
    lda #nmi_XXX21-(nmi_bcs+2)                                        ; 30f7: a9 26       .&  :0d90[7]
    bne l0d30                                                         ; 30f9: d0 9c       ..  :0d92[7]
; &30fb referenced 3 times by &8d41, &8d92, &9101
    org sub_c3067 + (l0d94 - l0d00)
    copyblock l0d00, l0d94, sub_c3067
    clear l0d00, l0d94

; &30fb referenced 3 times by &8d41, &8d92, &9101
; &30fb referenced 3 times by &8d41, &8d92, &9101

    org &90fb
; &30fb referenced 3 times by &8d41, &8d92, &9101
.nmi_handler2_rom_end
    sta lfe86                                                         ; 30fb: 8d 86 fe    ... :90fb[1]
    cmp lfe86                                                         ; 30fe: cd 86 fe    ... :90fe[1]
    bne nmi_handler2_rom_end                                          ; 3101: d0 f8       ..  :9101[1]
    rts                                                               ; 3103: 60          `   :9103[1]

; &3104 referenced 1 time by &966b
.set_c_iff_have_fdc
    ldx #0                                                            ; 3104: a2 00       ..  :9104[1]
    lda #&5a ; 'Z'                                                    ; 3106: a9 5a       .Z  :9106[1]
; &3108 referenced 1 time by &9111
.loop_c9108
    sta lfe85                                                         ; 3108: 8d 85 fe    ... :9108[1]
    cmp lfe85                                                         ; 310b: cd 85 fe    ... :910b[1]
    beq c9115                                                         ; 310e: f0 05       ..  :910e[1]
    dex                                                               ; 3110: ca          .   :9110[1]
    bne loop_c9108                                                    ; 3111: d0 f5       ..  :9111[1]
; &3113 referenced 1 time by &911a
.loop_c9113
    clc                                                               ; 3113: 18          .   :9113[1]
    rts                                                               ; 3114: 60          `   :9114[1]

; &3115 referenced 1 time by &910e
.c9115
    lda lfe80                                                         ; 3115: ad 80 fe    ... :9115[1]
    and #3                                                            ; 3118: 29 03       ).  :9118[1]
    beq loop_c9113                                                    ; 311a: f0 f7       ..  :911a[1]
    rts                                                               ; 311c: 60          `   :911c[1]

; &311d referenced 1 time by &8cd8
.l911d
    equs ")*-."                                                       ; 311d: 29 2a 2d... )*- :911d[1]
; &3121 referenced 1 time by &8e15
.l9121
    equb   0, &10, &40, &50, &80, &81, &83, &a0, &a1, &c0, &e0, &f0   ; 3121: 00 10 40... ..@ :9121[1]
; &312d referenced 1 time by &8e1b
.nmi_and_table
    equb &18, &18, &18, &18, &3f, &1f, &1f, &5f, &5f, &17, &1b, &5f   ; 312d: 18 18 18... ... :912d[1]
; &3139 referenced 1 time by &8c58
.l9139
    equb   8, &10, &18, &20, &40,   0                                 ; 3139: 08 10 18... ... :9139[1]
; &313f referenced 1 time by &8c61
.l913f
    equb &0e, &18, &0c, &20, &12,   0                                 ; 313f: 0e 18 0c... ... :913f[1]
; &3145 referenced 1 time by &92e3
.l9145
    equb &6d                                                          ; 3145: 6d          m   :9145[1]
; &3146 referenced 1 time by &92e8
.l9146
    equb &91, &49, &91, &3c, &0c,   3,   1,   1,   1,   1,   1,   1   ; 3146: 91 49 91... .I. :9146[1]
    equb &16, &0c,   3,   1, &ff,   1,   1, &18,   4, &4e,   0, &f5   ; 3152: 16 0c 03... ... :9152[1]
    equb &fe,   0,   0,   0,   0, &f7, &4e,   0, &f5, &fb, &5a, &5a   ; 315e: fe 00 00... ... :915e[1]
    equb &f7, &4e, &4e, &10,   6,   0,   1,   1,   1,   1,   1,   1   ; 316a: f7 4e 4e... .NN :916a[1]
    equb &0b,   6,   0,   1, &ff,   1,   1, &13,   3, &ff,   0,   0   ; 3176: 0b 06 00... ... :9176[1]
    equb &fe,   0,   0,   0,   0, &f7, &ff,   0,   0, &fb, &e5, &e5   ; 3182: fe 00 00... ... :9182[1]
    equb &f7, &ff, &ff                                                ; 318e: f7 ff ff    ... :918e[1]
; &3191 referenced 1 time by &91df
.l9191
    equb &0a, &0b, &0e, &0f, &12, &13, &16, &17, &1b, &1e, &1f        ; 3191: 0a 0b 0e... ... :9191[1]
    equs "#) 0"                                                       ; 319c: 23 29 20... #)  :919c[1]
; &31a0 referenced 1 time by &9201
.l91a0
    equb &a0, &a0, &a1, &a1, &80, &80, &81, &81, &c0, &83, &83, &f0   ; 31a0: a0 a0 a1... ... :91a0[1]
    equb &10, &e0, &f0                                                ; 31ac: 10 e0 f0    ... :91ac[1]

; &31af referenced 3 times by &9758, &a6dc, &a700
.c91af
    lda #&ff                                                          ; 31af: a9 ff       ..  :91af[1]
    sta l1082                                                         ; 31b1: 8d 82 10    ... :91b1[1]
    stx l00c7                                                         ; 31b4: 86 c7       ..  :91b4[1]
    sty l00c8                                                         ; 31b6: 84 c8       ..  :91b6[1]
    ldy #&0c                                                          ; 31b8: a0 0c       ..  :91b8[1]
; &31ba referenced 1 time by &91c0
.loop_c91ba
    lda (l00c7),y                                                     ; 31ba: b1 c7       ..  :91ba[1]
    sta l00ba,y                                                       ; 31bc: 99 ba 00    ... :91bc[1]
    dey                                                               ; 31bf: 88          .   :91bf[1]
    bpl loop_c91ba                                                    ; 31c0: 10 f8       ..  :91c0[1]
    ldx #&0c                                                          ; 31c2: a2 0c       ..  :91c2[1]
    lda l00bf                                                         ; 31c4: a5 bf       ..  :91c4[1]
    cmp #&0a                                                          ; 31c6: c9 0a       ..  :91c6[1]
    bne c91cc                                                         ; 31c8: d0 02       ..  :91c8[1]
    ldx #&0e                                                          ; 31ca: a2 0e       ..  :91ca[1]
; &31cc referenced 1 time by &91c8
.c91cc
    lda l00c0                                                         ; 31cc: a5 c0       ..  :91cc[1]
    and #&3f ; '?'                                                    ; 31ce: 29 3f       )?  :91ce[1]
    cmp #&3a ; ':'                                                    ; 31d0: c9 3a       .:  :91d0[1]
    beq c921f                                                         ; 31d2: f0 4b       .K  :91d2[1]
    cmp #&3d ; '='                                                    ; 31d4: c9 3d       .=  :91d4[1]
    beq c923f                                                         ; 31d6: f0 67       .g  :91d6[1]
    cmp #&35 ; '5'                                                    ; 31d8: c9 35       .5  :91d8[1]
    bne c91df                                                         ; 31da: d0 03       ..  :91da[1]
    jmp c925a                                                         ; 31dc: 4c 5a 92    LZ. :91dc[1]

; &31df referenced 2 times by &91da, &91e5
.c91df
    cmp l9191,x                                                       ; 31df: dd 91 91    ... :91df[1]
    beq c91eb                                                         ; 31e2: f0 07       ..  :91e2[1]
    dex                                                               ; 31e4: ca          .   :91e4[1]
    bpl c91df                                                         ; 31e5: 10 f8       ..  :91e5[1]
; &31e7 referenced 1 time by &91ff
.loop_c91e7
    lda #&fe                                                          ; 31e7: a9 fe       ..  :91e7[1]
    bmi c9214                                                         ; 31e9: 30 29       0)  :91e9[1]
; &31eb referenced 1 time by &91e2
.c91eb
    cmp #&23 ; '#'                                                    ; 31eb: c9 23       .#  :91eb[1]
    beq c91f3                                                         ; 31ed: f0 04       ..  :91ed[1]
    cpx #4                                                            ; 31ef: e0 04       ..  :91ef[1]
    bcs c9201                                                         ; 31f1: b0 0e       ..  :91f1[1]
; &31f3 referenced 1 time by &91ed
.c91f3
    lda l00ba                                                         ; 31f3: a5 ba       ..  :91f3[1]
    bpl c91f9                                                         ; 31f5: 10 02       ..  :91f5[1]
    lda l00cd                                                         ; 31f7: a5 cd       ..  :91f7[1]
; &31f9 referenced 1 time by &91f5
.c91f9
    and #3                                                            ; 31f9: 29 03       ).  :91f9[1]
    tay                                                               ; 31fb: a8          .   :91fb[1]
    lda l10de,y                                                       ; 31fc: b9 de 10    ... :91fc[1]
    bmi loop_c91e7                                                    ; 31ff: 30 e6       0.  :91ff[1]
; &3201 referenced 1 time by &91f1
.c9201
    ldy l91a0,x                                                       ; 3201: bc a0 91    ... :9201[1]
    sty l00c0                                                         ; 3204: 84 c0       ..  :9204[1]
    cpy #&f0                                                          ; 3206: c0 f0       ..  :9206[1]
    bne c920d                                                         ; 3208: d0 03       ..  :9208[1]
    jsr sub_c929d                                                     ; 320a: 20 9d 92     .. :920a[1]
; &320d referenced 1 time by &9208
.c920d
    ldx #&ba                                                          ; 320d: a2 ba       ..  :920d[1]
    ldy #0                                                            ; 320f: a0 00       ..  :920f[1]
    jsr sub_c8bf9                                                     ; 3211: 20 f9 8b     .. :9211[1]
; &3214 referenced 3 times by &91e9, &9257, &9276
.c9214
    pha                                                               ; 3214: 48          H   :9214[1]
    lda l00bf                                                         ; 3215: a5 bf       ..  :9215[1]
    clc                                                               ; 3217: 18          .   :9217[1]
    adc #7                                                            ; 3218: 69 07       i.  :9218[1]
    tay                                                               ; 321a: a8          .   :921a[1]
    pla                                                               ; 321b: 68          h   :921b[1]
    sta (l00c7),y                                                     ; 321c: 91 c7       ..  :921c[1]
    rts                                                               ; 321e: 60          `   :921e[1]

; &321f referenced 1 time by &91d2
.c921f
    jsr sub_c928a                                                     ; 321f: 20 8a 92     .. :921f[1]
    bcs c922b                                                         ; 3222: b0 07       ..  :9222[1]
    lda l00c2                                                         ; 3224: a5 c2       ..  :9224[1]
    sta l108b,x                                                       ; 3226: 9d 8b 10    ... :9226[1]
    bcc c923b                                                         ; 3229: 90 10       ..  :9229[1]
; &322b referenced 1 time by &9222
.c922b
    jsr sub_c9279                                                     ; 322b: 20 79 92     y. :922b[1]
    bcc c9257                                                         ; 322e: 90 27       .'  :922e[1]
    lda l00c2                                                         ; 3230: a5 c2       ..  :9230[1]
    ldy l10de,x                                                       ; 3232: bc de 10    ... :9232[1]
    bpl c9238                                                         ; 3235: 10 01       ..  :9235[1]
    asl a                                                             ; 3237: 0a          .   :9237[1]
; &3238 referenced 1 time by &9235
.c9238
    sta l1088,x                                                       ; 3238: 9d 88 10    ... :9238[1]
; &323b referenced 1 time by &9229
.c923b
    lda #0                                                            ; 323b: a9 00       ..  :923b[1]
    beq c9257                                                         ; 323d: f0 18       ..  :923d[1]
; &323f referenced 1 time by &91d6
.c923f
    jsr sub_c928a                                                     ; 323f: 20 8a 92     .. :923f[1]
    bcs c9249                                                         ; 3242: b0 05       ..  :9242[1]
    lda l108b,x                                                       ; 3244: bd 8b 10    ... :9244[1]
    bcc c9257                                                         ; 3247: 90 0e       ..  :9247[1]
; &3249 referenced 1 time by &9242
.c9249
    jsr sub_c9279                                                     ; 3249: 20 79 92     y. :9249[1]
    bcc c9257                                                         ; 324c: 90 09       ..  :924c[1]
    lda l1088,x                                                       ; 324e: bd 88 10    ... :924e[1]
    ldy l10de,x                                                       ; 3251: bc de 10    ... :9251[1]
    bpl c9257                                                         ; 3254: 10 01       ..  :9254[1]
    lsr a                                                             ; 3256: 4a          J   :9256[1]
; &3257 referenced 5 times by &922e, &923d, &9247, &924c, &9254
.c9257
    jmp c9214                                                         ; 3257: 4c 14 92    L.. :9257[1]

; &325a referenced 1 time by &91dc
.c925a
    lda #&ff                                                          ; 325a: a9 ff       ..  :925a[1]
    ldx #0                                                            ; 325c: a2 00       ..  :925c[1]
    ldy l00c1                                                         ; 325e: a4 c1       ..  :925e[1]
    cpy #&10                                                          ; 3260: c0 10       ..  :9260[1]
    beq c926a                                                         ; 3262: f0 06       ..  :9262[1]
    cpy #&18                                                          ; 3264: c0 18       ..  :9264[1]
    bne c9276                                                         ; 3266: d0 0e       ..  :9266[1]
    inx                                                               ; 3268: e8          .   :9268[1]
    inx                                                               ; 3269: e8          .   :9269[1]
; &326a referenced 1 time by &9262
.c926a
    lda l00c2                                                         ; 326a: a5 c2       ..  :926a[1]
    sta l108b,x                                                       ; 326c: 9d 8b 10    ... :926c[1]
    lda l00c3                                                         ; 326f: a5 c3       ..  :926f[1]
    sta l108c,x                                                       ; 3271: 9d 8c 10    ... :9271[1]
    lda #0                                                            ; 3274: a9 00       ..  :9274[1]
; &3276 referenced 1 time by &9266
.c9276
    jmp c9214                                                         ; 3276: 4c 14 92    L.. :9276[1]

; &3279 referenced 2 times by &922b, &9249
.sub_c9279
    ldx #0                                                            ; 3279: a2 00       ..  :9279[1]
    lda l00c1                                                         ; 327b: a5 c1       ..  :927b[1]
    cmp #&12                                                          ; 327d: c9 12       ..  :927d[1]
    beq c9289                                                         ; 327f: f0 08       ..  :927f[1]
    inx                                                               ; 3281: e8          .   :9281[1]
    cmp #&1a                                                          ; 3282: c9 1a       ..  :9282[1]
    beq c9289                                                         ; 3284: f0 03       ..  :9284[1]
    lda #&fe                                                          ; 3286: a9 fe       ..  :9286[1]
    clc                                                               ; 3288: 18          .   :9288[1]
; &3289 referenced 2 times by &927f, &9284
.c9289
    rts                                                               ; 3289: 60          `   :9289[1]

; &328a referenced 2 times by &921f, &923f
.sub_c928a
    lda l00c1                                                         ; 328a: a5 c1       ..  :928a[1]
    and #&f6                                                          ; 328c: 29 f6       ).  :928c[1]
    cmp #&10                                                          ; 328e: c9 10       ..  :928e[1]
    sec                                                               ; 3290: 38          8   :9290[1]
    bne c929c                                                         ; 3291: d0 09       ..  :9291[1]
    lda l00c1                                                         ; 3293: a5 c1       ..  :9293[1]
    lsr a                                                             ; 3295: 4a          J   :9295[1]
    lsr a                                                             ; 3296: 4a          J   :9296[1]
    ora l00c1                                                         ; 3297: 05 c1       ..  :9297[1]
    and #3                                                            ; 3299: 29 03       ).  :9299[1]
    tax                                                               ; 329b: aa          .   :929b[1]
; &329c referenced 1 time by &9291
.c929c
    rts                                                               ; 329c: 60          `   :929c[1]

; &329d referenced 1 time by &920a
.sub_c929d
    jsr sub_c9a8d                                                     ; 329d: 20 8d 9a     .. :929d[1]
    lda l00bb                                                         ; 32a0: a5 bb       ..  :92a0[1]
    sta l00b0                                                         ; 32a2: 85 b0       ..  :92a2[1]
    sta l00b4                                                         ; 32a4: 85 b4       ..  :92a4[1]
    clc                                                               ; 32a6: 18          .   :92a6[1]
    adc #&80                                                          ; 32a7: 69 80       i.  :92a7[1]
    sta l00b2                                                         ; 32a9: 85 b2       ..  :92a9[1]
    lda l00bc                                                         ; 32ab: a5 bc       ..  :92ab[1]
    sta l00b1                                                         ; 32ad: 85 b1       ..  :92ad[1]
    php                                                               ; 32af: 08          .   :92af[1]
    jsr sub_c8f3f                                                     ; 32b0: 20 3f 8f     ?. :92b0[1]
    bmi c92bd                                                         ; 32b3: 30 08       0.  :92b3[1]
    lda l00bd                                                         ; 32b5: a5 bd       ..  :92b5[1]
    ora l00be                                                         ; 32b7: 05 be       ..  :92b7[1]
    cmp #&ff                                                          ; 32b9: c9 ff       ..  :92b9[1]
    bne c92c4                                                         ; 32bb: d0 07       ..  :92bb[1]
; &32bd referenced 1 time by &92b3
.c92bd
    lda l00b1                                                         ; 32bd: a5 b1       ..  :92bd[1]
    cmp l10cf                                                         ; 32bf: cd cf 10    ... :92bf[1]
    bcs c92c7                                                         ; 32c2: b0 03       ..  :92c2[1]
; &32c4 referenced 1 time by &92bb
.c92c4
    lda l10cf                                                         ; 32c4: ad cf 10    ... :92c4[1]
; &32c7 referenced 1 time by &92c2
.c92c7
    plp                                                               ; 32c7: 28          (   :92c7[1]
    sta l00b5                                                         ; 32c8: 85 b5       ..  :92c8[1]
    adc #0                                                            ; 32ca: 69 00       i.  :92ca[1]
    sta l00b3                                                         ; 32cc: 85 b3       ..  :92cc[1]
    inc l00b5                                                         ; 32ce: e6 b5       ..  :92ce[1]
    lda l00ba                                                         ; 32d0: a5 ba       ..  :92d0[1]
    bpl c92d6                                                         ; 32d2: 10 02       ..  :92d2[1]
    lda #0                                                            ; 32d4: a9 00       ..  :92d4[1]
; &32d6 referenced 1 time by &92d2
.c92d6
    rol a                                                             ; 32d6: 2a          *   :92d6[1]
    rol a                                                             ; 32d7: 2a          *   :92d7[1]
    rol a                                                             ; 32d8: 2a          *   :92d8[1]
    sta l108a                                                         ; 32d9: 8d 8a 10    ... :92d9[1]
    ldx #2                                                            ; 32dc: a2 02       ..  :92dc[1]
    rol a                                                             ; 32de: 2a          *   :92de[1]
    bmi c92e3                                                         ; 32df: 30 02       0.  :92df[1]
    ldx #0                                                            ; 32e1: a2 00       ..  :92e1[1]
; &32e3 referenced 1 time by &92df
.c92e3
    lda l9145,x                                                       ; 32e3: bd 45 91    .E. :92e3[1]
    sta l00b6                                                         ; 32e6: 85 b6       ..  :92e6[1]
    lda l9146,x                                                       ; 32e8: bd 46 91    .F. :92e8[1]
    sta l00b7                                                         ; 32eb: 85 b7       ..  :92eb[1]
    ldy #&23 ; '#'                                                    ; 32ed: a0 23       .#  :92ed[1]
; &32ef referenced 1 time by &92f4
.loop_c92ef
    lda (l00b6),y                                                     ; 32ef: b1 b6       ..  :92ef[1]
    sta (l00b2),y                                                     ; 32f1: 91 b2       ..  :92f1[1]
    dey                                                               ; 32f3: 88          .   :92f3[1]
    bpl loop_c92ef                                                    ; 32f4: 10 f9       ..  :92f4[1]
    iny                                                               ; 32f6: c8          .   :92f6[1]
    sty l00b6                                                         ; 32f7: 84 b6       ..  :92f7[1]
    lda l00c3                                                         ; 32f9: a5 c3       ..  :92f9[1]
    pha                                                               ; 32fb: 48          H   :92fb[1]
    and #&e0                                                          ; 32fc: 29 e0       ).  :92fc[1]
    bne c9302                                                         ; 32fe: d0 02       ..  :92fe[1]
    lda #&10                                                          ; 3300: a9 10       ..  :9300[1]
; &3302 referenced 1 time by &92fe
.c9302
    asl a                                                             ; 3302: 0a          .   :9302[1]
    rol l00b6                                                         ; 3303: 26 b6       &.  :9303[1]
    asl a                                                             ; 3305: 0a          .   :9305[1]
    rol l00b6                                                         ; 3306: 26 b6       &.  :9306[1]
    asl a                                                             ; 3308: 0a          .   :9308[1]
    rol l00b6                                                         ; 3309: 26 b6       &.  :9309[1]
    ldy #&0d                                                          ; 330b: a0 0d       ..  :930b[1]
    sta (l00b2),y                                                     ; 330d: 91 b2       ..  :930d[1]
    lda l00b6                                                         ; 330f: a5 b6       ..  :930f[1]
    iny                                                               ; 3311: c8          .   :9311[1]
    sta (l00b2),y                                                     ; 3312: 91 b2       ..  :9312[1]
    pla                                                               ; 3314: 68          h   :9314[1]
    and #&1f                                                          ; 3315: 29 1f       ).  :9315[1]
    sta l00b9                                                         ; 3317: 85 b9       ..  :9317[1]
    lda l00c2                                                         ; 3319: a5 c2       ..  :9319[1]
    ldy #&10                                                          ; 331b: a0 10       ..  :931b[1]
    sta (l00b2),y                                                     ; 331d: 91 b2       ..  :931d[1]
    lda l00c5                                                         ; 331f: a5 c5       ..  :931f[1]
    ldy #0                                                            ; 3321: a0 00       ..  :9321[1]
    sta (l00b2),y                                                     ; 3323: 91 b2       ..  :9323[1]
    tya                                                               ; 3325: 98          .   :9325[1]
    sta l00b8                                                         ; 3326: 85 b8       ..  :9326[1]
    jsr sub_c93d3                                                     ; 3328: 20 d3 93     .. :9328[1]
    jsr sub_c8f3f                                                     ; 332b: 20 3f 8f     ?. :932b[1]
    bmi c9367                                                         ; 332e: 30 37       07  :932e[1]
    lda l00bd                                                         ; 3330: a5 bd       ..  :9330[1]
    and l00be                                                         ; 3332: 25 be       %.  :9332[1]
    cmp #&ff                                                          ; 3334: c9 ff       ..  :9334[1]
    beq c9367                                                         ; 3336: f0 2f       ./  :9336[1]
    lda #&ff                                                          ; 3338: a9 ff       ..  :9338[1]
    sta l00bd                                                         ; 333a: 85 bd       ..  :933a[1]
    sta l00be                                                         ; 333c: 85 be       ..  :933c[1]
    jsr sub_c8f6b                                                     ; 333e: 20 6b 8f     k. :933e[1]
    ldx #&bb                                                          ; 3341: a2 bb       ..  :9341[1]
    ldy #0                                                            ; 3343: a0 00       ..  :9343[1]
    tya                                                               ; 3345: 98          .   :9345[1]
    jsr tube_entry                                                    ; 3346: 20 06 04     .. :9346[1]
    ldx l00b5                                                         ; 3349: a6 b5       ..  :9349[1]
    dex                                                               ; 334b: ca          .   :934b[1]
    stx l00b1                                                         ; 334c: 86 b1       ..  :934c[1]
    lda l00b9                                                         ; 334e: a5 b9       ..  :934e[1]
    asl a                                                             ; 3350: 0a          .   :9350[1]
    asl a                                                             ; 3351: 0a          .   :9351[1]
    tax                                                               ; 3352: aa          .   :9352[1]
    ldy #0                                                            ; 3353: a0 00       ..  :9353[1]
; &3355 referenced 1 time by &9362
.loop_c9355
    lda #7                                                            ; 3355: a9 07       ..  :9355[1]
; &3357 referenced 1 time by &9359
.loop_c9357
    sbc #1                                                            ; 3357: e9 01       ..  :9357[1]
    bne loop_c9357                                                    ; 3359: d0 fc       ..  :9359[1]
    lda tube_host_r3_data                                             ; 335b: ad e5 fe    ... :935b[1]
    sta (l00b0),y                                                     ; 335e: 91 b0       ..  :935e[1]
    iny                                                               ; 3360: c8          .   :9360[1]
    dex                                                               ; 3361: ca          .   :9361[1]
    bpl loop_c9355                                                    ; 3362: 10 f1       ..  :9362[1]
    jsr sub_c8f7a                                                     ; 3364: 20 7a 8f     z. :9364[1]
; &3367 referenced 2 times by &932e, &9336
.c9367
    lda l00b5                                                         ; 3367: a5 b5       ..  :9367[1]
    sta l00bc                                                         ; 3369: 85 bc       ..  :9369[1]
; &336b referenced 1 time by &939c
.c936b
    ldy #&16                                                          ; 336b: a0 16       ..  :936b[1]
    ldx #0                                                            ; 336d: a2 00       ..  :936d[1]
; &336f referenced 1 time by &937c
.loop_c936f
    lda (l00b0,x)                                                     ; 336f: a1 b0       ..  :936f[1]
    sta (l00b2),y                                                     ; 3371: 91 b2       ..  :9371[1]
    inc l00b0                                                         ; 3373: e6 b0       ..  :9373[1]
    bne c9379                                                         ; 3375: d0 02       ..  :9375[1]
    inc l00b1                                                         ; 3377: e6 b1       ..  :9377[1]
; &3379 referenced 1 time by &9375
.c9379
    iny                                                               ; 3379: c8          .   :9379[1]
    cpy #&1a                                                          ; 337a: c0 1a       ..  :937a[1]
    bne loop_c936f                                                    ; 337c: d0 f1       ..  :937c[1]
    lda #1                                                            ; 337e: a9 01       ..  :937e[1]
    sta l00b6                                                         ; 3380: 85 b6       ..  :9380[1]
; &3382 referenced 1 time by &9396
.loop_c9382
    lda l00b6                                                         ; 3382: a5 b6       ..  :9382[1]
    cmp #&0e                                                          ; 3384: c9 0e       ..  :9384[1]
    bne c938d                                                         ; 3386: d0 05       ..  :9386[1]
    jsr sub_c93b4                                                     ; 3388: 20 b4 93     .. :9388[1]
    beq c9390                                                         ; 338b: f0 03       ..  :938b[1]
; &338d referenced 1 time by &9386
.c938d
    jsr sub_c93d3                                                     ; 338d: 20 d3 93     .. :938d[1]
; &3390 referenced 1 time by &938b
.c9390
    inc l00b6                                                         ; 3390: e6 b6       ..  :9390[1]
    lda l00b6                                                         ; 3392: a5 b6       ..  :9392[1]
    cmp #&11                                                          ; 3394: c9 11       ..  :9394[1]
    bne loop_c9382                                                    ; 3396: d0 ea       ..  :9396[1]
    inc l00b8                                                         ; 3398: e6 b8       ..  :9398[1]
    dec l00b9                                                         ; 339a: c6 b9       ..  :939a[1]
    bne c936b                                                         ; 339c: d0 cd       ..  :939c[1]
    tay                                                               ; 339e: a8          .   :939e[1]
    lda #&0e                                                          ; 339f: a9 0e       ..  :939f[1]
    bit l108a                                                         ; 33a1: 2c 8a 10    ,.. :93a1[1]
    bvc c93a8                                                         ; 33a4: 50 02       P.  :93a4[1]
    lda #&1a                                                          ; 33a6: a9 1a       ..  :93a6[1]
; &33a8 referenced 1 time by &93a4
.c93a8
    clc                                                               ; 33a8: 18          .   :93a8[1]
    adc l00bc                                                         ; 33a9: 65 bc       e.  :93a9[1]
    sbc l00b5                                                         ; 33ab: e5 b5       ..  :93ab[1]
    bcs c93b1                                                         ; 33ad: b0 02       ..  :93ad[1]
    lda #1                                                            ; 33af: a9 01       ..  :93af[1]
; &33b1 referenced 1 time by &93ad
.c93b1
    sta (l00b2),y                                                     ; 33b1: 91 b2       ..  :93b1[1]
    tya                                                               ; 33b3: 98          .   :93b3[1]
; &33b4 referenced 1 time by &9388
.sub_c93b4
    jsr sub_c93c5                                                     ; 33b4: 20 c5 93     .. :93b4[1]
    beq c93c4                                                         ; 33b7: f0 0b       ..  :93b7[1]
    stx l00b7                                                         ; 33b9: 86 b7       ..  :93b9[1]
    ldx #0                                                            ; 33bb: a2 00       ..  :93bb[1]
; &33bd referenced 1 time by &93c2
.loop_c93bd
    jsr sub_c93d8                                                     ; 33bd: 20 d8 93     .. :93bd[1]
    dec l00b7                                                         ; 33c0: c6 b7       ..  :93c0[1]
    bne loop_c93bd                                                    ; 33c2: d0 f9       ..  :93c2[1]
; &33c4 referenced 1 time by &93b7
.c93c4
    rts                                                               ; 33c4: 60          `   :93c4[1]

; &33c5 referenced 2 times by &93b4, &93d3
.sub_c93c5
    tay                                                               ; 33c5: a8          .   :93c5[1]
    lda (l00b2),y                                                     ; 33c6: b1 b2       ..  :93c6[1]
    tax                                                               ; 33c8: aa          .   :93c8[1]
    tya                                                               ; 33c9: 98          .   :93c9[1]
    clc                                                               ; 33ca: 18          .   :93ca[1]
    adc #&12                                                          ; 33cb: 69 12       i.  :93cb[1]
    tay                                                               ; 33cd: a8          .   :93cd[1]
    lda (l00b2),y                                                     ; 33ce: b1 b2       ..  :93ce[1]
    cpx #0                                                            ; 33d0: e0 00       ..  :93d0[1]
    rts                                                               ; 33d2: 60          `   :93d2[1]

; &33d3 referenced 2 times by &9328, &938d
.sub_c93d3
    jsr sub_c93c5                                                     ; 33d3: 20 c5 93     .. :93d3[1]
    beq c93e5                                                         ; 33d6: f0 0d       ..  :93d6[1]
; &33d8 referenced 1 time by &93bd
.sub_c93d8
    ldy #0                                                            ; 33d8: a0 00       ..  :93d8[1]
; &33da referenced 1 time by &93e3
.loop_c93da
    sta (l00b4),y                                                     ; 33da: 91 b4       ..  :93da[1]
    inc l00b4                                                         ; 33dc: e6 b4       ..  :93dc[1]
    bne c93e2                                                         ; 33de: d0 02       ..  :93de[1]
    inc l00b5                                                         ; 33e0: e6 b5       ..  :93e0[1]
; &33e2 referenced 1 time by &93de
.c93e2
    dex                                                               ; 33e2: ca          .   :93e2[1]
    bne loop_c93da                                                    ; 33e3: d0 f5       ..  :93e3[1]
; &33e5 referenced 1 time by &93d6
.c93e5
    rts                                                               ; 33e5: 60          `   :93e5[1]

; &33e6 referenced 10 times by &8772, &8791, &87cb, &89d7, &8a6b, &8b12, &8bf3, &9bbc, &9fff, &a30a
.c93e6
    lda l0f04                                                         ; 33e6: ad 04 0f    ... :93e6[1]
    clc                                                               ; 33e9: 18          .   :93e9[1]
    sed                                                               ; 33ea: f8          .   :93ea[1]
    adc #1                                                            ; 33eb: 69 01       i.  :93eb[1]
    sta l0f04                                                         ; 33ed: 8d 04 0f    ... :93ed[1]
    cld                                                               ; 33f0: d8          .   :93f0[1]
; &33f1 referenced 1 time by &a737
.sub_c93f1
    ldy #&a0                                                          ; 33f1: a0 a0       ..  :93f1[1]
    bne c940e                                                         ; 33f3: d0 19       ..  :93f3[1]
; &33f5 referenced 2 times by &9636, &a7ce
.sub_c93f5
    ldy #&81                                                          ; 33f5: a0 81       ..  :93f5[1]
    bne c940e                                                         ; 33f7: d0 15       ..  :93f7[1]
; &33f9 referenced 1 time by &8266
.sub_c93f9
    ldy #&81                                                          ; 33f9: a0 81       ..  :93f9[1]
    bne c93ff                                                         ; 33fb: d0 02       ..  :93fb[1]
; &33fd referenced 3 times by &8287, &988e, &98da
.sub_c93fd
    ldy #&80                                                          ; 33fd: a0 80       ..  :93fd[1]
; &33ff referenced 1 time by &93fb
.c93ff
    bit lfe84                                                         ; 33ff: 2c 84 fe    ,.. :93ff[1]
    bpl c940e                                                         ; 3402: 10 0a       ..  :9402[1]
    lda l1082                                                         ; 3404: ad 82 10    ... :9404[1]
    cmp l00cd                                                         ; 3407: c5 cd       ..  :9407[1]
    bne c940e                                                         ; 3409: d0 03       ..  :9409[1]
    rts                                                               ; 340b: 60          `   :940b[1]

; &340c referenced 6 times by &8383, &8489, &8a59, &a431, &a448, &a460
.c940c
    ldy #&80                                                          ; 340c: a0 80       ..  :940c[1]
; &340e referenced 4 times by &93f3, &93f7, &9402, &9409
.c940e
    jsr sub_c9536                                                     ; 340e: 20 36 95     6. :940e[1]
    sty l1096                                                         ; 3411: 8c 96 10    ... :9411[1]
    lda l00cd                                                         ; 3414: a5 cd       ..  :9414[1]
    sta l1090                                                         ; 3416: 8d 90 10    ... :9416[1]
    lda #2                                                            ; 3419: a9 02       ..  :9419[1]
    sta l1099                                                         ; 341b: 8d 99 10    ... :941b[1]
    lda #&0e                                                          ; 341e: a9 0e       ..  :941e[1]
    sta l1092                                                         ; 3420: 8d 92 10    ... :9420[1]
    dec l1093                                                         ; 3423: ce 93 10    ... :9423[1]
    dec l1094                                                         ; 3426: ce 94 10    ... :9426[1]
    jsr sub_c9445                                                     ; 3429: 20 45 94     E. :9429[1]
    lda l00cd                                                         ; 342c: a5 cd       ..  :942c[1]
    sta l1082                                                         ; 342e: 8d 82 10    ... :942e[1]
    rts                                                               ; 3431: 60          `   :9431[1]

; &3432 referenced 2 times by &944d, &a6f9
.sub_c9432
    bit l00ff                                                         ; 3432: 24 ff       $.  :9432[1]
    bpl c9444                                                         ; 3434: 10 0e       ..  :9434[1]
; &3436 referenced 4 times by &946c, &a411, &a65d, &abc2
.c9436
    jsr sub_c9ad8                                                     ; 3436: 20 d8 9a     .. :9436[1]
    jsr generate_error                                                ; 3439: 20 48 80     H. :9439[1]
    equb &11                                                          ; 343c: 11          .   :943c[1]
    equs "Escape"                                                     ; 343d: 45 73 63... Esc :943d[1]
    equb 0                                                            ; 3443: 00          .   :9443[1]

; &3444 referenced 3 times by &9434, &946a, &947a
.c9444
    rts                                                               ; 3444: 60          `   :9444[1]

; &3445 referenced 2 times by &886a, &9429
.sub_c9445
    jsr sub_c9516                                                     ; 3445: 20 16 95     .. :9445[1]
    lda #6                                                            ; 3448: a9 06       ..  :9448[1]
    sta l109e                                                         ; 344a: 8d 9e 10    ... :944a[1]
    jsr sub_c9432                                                     ; 344d: 20 32 94     2. :944d[1]
; &3450 referenced 1 time by &94bf
.c9450
    lda l1097                                                         ; 3450: ad 97 10    ... :9450[1]
    ldx l1090                                                         ; 3453: ae 90 10    ... :9453[1]
    ldy l10de,x                                                       ; 3456: bc de 10    ... :9456[1]
    bpl c945c                                                         ; 3459: 10 01       ..  :9459[1]
    asl a                                                             ; 345b: 0a          .   :945b[1]
; &345c referenced 1 time by &9459
.c945c
    ldy #&18                                                          ; 345c: a0 18       ..  :945c[1]
    cmp #&50 ; 'P'                                                    ; 345e: c9 50       .P  :945e[1]
    bcs c94c1                                                         ; 3460: b0 5f       ._  :9460[1]
    ldx #&90                                                          ; 3462: a2 90       ..  :9462[1]
    ldy #&10                                                          ; 3464: a0 10       ..  :9464[1]
    jsr sub_c8bf6                                                     ; 3466: 20 f6 8b     .. :9466[1]
    tay                                                               ; 3469: a8          .   :9469[1]
    beq c9444                                                         ; 346a: f0 d8       ..  :946a[1]
    bmi c9436                                                         ; 346c: 30 c8       0.  :946c[1]
    cmp #&12                                                          ; 346e: c9 12       ..  :946e[1]
    beq c94c6                                                         ; 3470: f0 54       .T  :9470[1]
    cmp #&20 ; ' '                                                    ; 3472: c9 20       .   :9472[1]
    bne c948d                                                         ; 3474: d0 17       ..  :9474[1]
    lda l1096                                                         ; 3476: ad 96 10    ... :9476[1]
    ror a                                                             ; 3479: 6a          j   :9479[1]
    bcs c9444                                                         ; 347a: b0 c8       ..  :947a[1]
    jsr generate_error                                                ; 347c: 20 48 80     H. :947c[1]
    equb &bc                                                          ; 347f: bc          .   :947f[1]
    equs "Execute only"                                               ; 3480: 45 78 65... Exe :9480[1]
    equb 0                                                            ; 348c: 00          .   :948c[1]

; &348d referenced 1 time by &9474
.c948d
    cmp #&18                                                          ; 348d: c9 18       ..  :948d[1]
    bne c94bc                                                         ; 348f: d0 2b       .+  :948f[1]
    lda l108a                                                         ; 3491: ad 8a 10    ... :9491[1]
    cmp #4                                                            ; 3494: c9 04       ..  :9494[1]
    bne c94a9                                                         ; 3496: d0 11       ..  :9496[1]
    ldx l1096                                                         ; 3498: ae 96 10    ... :9498[1]
    cpx #&81                                                          ; 349b: e0 81       ..  :949b[1]
    bne c94a9                                                         ; 349d: d0 0a       ..  :949d[1]
    lda #&ff                                                          ; 349f: a9 ff       ..  :949f[1]
    eor l108b                                                         ; 34a1: 4d 8b 10    M.. :94a1[1]
    sta l108b                                                         ; 34a4: 8d 8b 10    ... :94a4[1]
    bcs c94bc                                                         ; 34a7: b0 13       ..  :94a7[1]
; &34a9 referenced 2 times by &9496, &949d
.c94a9
    ldx l00ce                                                         ; 34a9: a6 ce       ..  :94a9[1]
    beq c94bc                                                         ; 34ab: f0 0f       ..  :94ab[1]
    rol a                                                             ; 34ad: 2a          *   :94ad[1]
    and #&80                                                          ; 34ae: 29 80       ).  :94ae[1]
    ldx l1090                                                         ; 34b0: ae 90 10    ... :94b0[1]
    eor l10de,x                                                       ; 34b3: 5d de 10    ].. :94b3[1]
    sta l10de,x                                                       ; 34b6: 9d de 10    ... :94b6[1]
    jsr sub_c9516                                                     ; 34b9: 20 16 95     .. :94b9[1]
; &34bc referenced 3 times by &948f, &94a7, &94ab
.c94bc
    dec l109e                                                         ; 34bc: ce 9e 10    ... :94bc[1]
    bne c9450                                                         ; 34bf: d0 8f       ..  :94bf[1]
; &34c1 referenced 1 time by &9460
.c94c1
    tya                                                               ; 34c1: 98          .   :94c1[1]
; &34c2 referenced 1 time by &a70f
.c94c2
    cmp #&12                                                          ; 34c2: c9 12       ..  :94c2[1]
    bne c94d4                                                         ; 34c4: d0 0e       ..  :94c4[1]
; &34c6 referenced 2 times by &9470, &9523
.c94c6
    jsr generate_error_precheck_disc                                  ; 34c6: 20 23 80     #. :94c6[1]
    equb &c9                                                          ; 34c9: c9          .   :94c9[1]
    equs "read only"                                                  ; 34ca: 72 65 61... rea :94ca[1]
    equb 0                                                            ; 34d3: 00          .   :94d3[1]

; &34d4 referenced 1 time by &94c4
.c94d4
    pha                                                               ; 34d4: 48          H   :94d4[1]
    jsr generate_error_precheck_disc                                  ; 34d5: 20 23 80     #. :94d5[1]
    equb 0                                                            ; 34d8: 00          .   :94d8[1]

    nop                                                               ; 34d9: ea          .   :94d9[1]
    jsr generate_error2                                               ; 34da: 20 4f 80     O. :94da[1]
    equb &c7                                                          ; 34dd: c7          .   :94dd[1]
    equs "fault "                                                     ; 34de: 66 61 75... fau :94de[1]

    nop                                                               ; 34e4: ea          .   :94e4[1]
    pla                                                               ; 34e5: 68          h   :94e5[1]
    jsr sub_c9526                                                     ; 34e6: 20 26 95     &. :94e6[1]
    jsr generate_error2                                               ; 34e9: 20 4f 80     O. :94e9[1]
    equb 0                                                            ; 34ec: 00          .   :94ec[1]
    equs " at :"                                                      ; 34ed: 20 61 74...  at :94ed[1]

    lda l00cd                                                         ; 34f2: a5 cd       ..  :94f2[1]
    jsr sub_c952e                                                     ; 34f4: 20 2e 95     .. :94f4[1]
    jsr generate_error2                                               ; 34f7: 20 4f 80     O. :94f7[1]
    equb 0                                                            ; 34fa: 00          .   :94fa[1]
    equs " "                                                          ; 34fb: 20              :94fb[1]

    lda l00ce                                                         ; 34fc: a5 ce       ..  :94fc[1]
    bit l108a                                                         ; 34fe: 2c 8a 10    ,.. :94fe[1]
    bpl c9504                                                         ; 3501: 10 01       ..  :9501[1]
    lsr a                                                             ; 3503: 4a          J   :9503[1]
; &3504 referenced 1 time by &9501
.c9504
    jsr sub_c9526                                                     ; 3504: 20 26 95     &. :9504[1]
    jsr generate_error2                                               ; 3507: 20 4f 80     O. :9507[1]
    equb 0                                                            ; 350a: 00          .   :950a[1]
    equs "/"                                                          ; 350b: 2f          /   :950b[1]

    lda l00cf                                                         ; 350c: a5 cf       ..  :950c[1]
    jsr sub_c9526                                                     ; 350e: 20 26 95     &. :950e[1]
    jsr generate_error2                                               ; 3511: 20 4f 80     O. :9511[1]
    equb &c7,   0                                                     ; 3514: c7 00       ..  :9514[1]

; &3516 referenced 2 times by &9445, &94b9
.sub_c9516
    lda l1096                                                         ; 3516: ad 96 10    ... :9516[1]
    cmp #&a0                                                          ; 3519: c9 a0       ..  :9519[1]
    bcc c9535                                                         ; 351b: 90 18       ..  :951b[1]
    ldx l1090                                                         ; 351d: ae 90 10    ... :951d[1]
    lda l10de,x                                                       ; 3520: bd de 10    ... :9520[1]
    bmi c94c6                                                         ; 3523: 30 a1       0.  :9523[1]
    rts                                                               ; 3525: 60          `   :9525[1]

; &3526 referenced 3 times by &94e6, &9504, &950e
.sub_c9526
    pha                                                               ; 3526: 48          H   :9526[1]
    jsr sub_c81bf                                                     ; 3527: 20 bf 81     .. :9527[1]
    jsr sub_c952e                                                     ; 352a: 20 2e 95     .. :952a[1]
    pla                                                               ; 352d: 68          h   :952d[1]
; &352e referenced 2 times by &94f4, &952a
.sub_c952e
    jsr sub_c80c8                                                     ; 352e: 20 c8 80     .. :952e[1]
    sta l0100,x                                                       ; 3531: 9d 00 01    ... :9531[1]
    inx                                                               ; 3534: e8          .   :9534[1]
; &3535 referenced 1 time by &951b
.c9535
    rts                                                               ; 3535: 60          `   :9535[1]

; &3536 referenced 1 time by &940e
.sub_c9536
    ldx #&0d                                                          ; 3536: a2 0d       ..  :9536[1]
    lda #0                                                            ; 3538: a9 00       ..  :9538[1]
; &353a referenced 1 time by &953e
.loop_c953a
    sta l108f,x                                                       ; 353a: 9d 8f 10    ... :953a[1]
    dex                                                               ; 353d: ca          .   :953d[1]
    bne loop_c953a                                                    ; 353e: d0 fa       ..  :953e[1]
    lda #5                                                            ; 3540: a9 05       ..  :9540[1]
    sta l1095                                                         ; 3542: 8d 95 10    ... :9542[1]
    rts                                                               ; 3545: 60          `   :9545[1]

    equs "L.!BOOT", &0d                                               ; 3546: 4c 2e 21... L.! :9546[1]
    equs "E.!BOOT", &0d                                               ; 354e: 45 2e 21... E.! :954e[1]

; &3556 referenced 1 time by &96e9
.c9556
    lda l00b3                                                         ; 3556: a5 b3       ..  :9556[1]
    jsr print_inline_l809f_top_bit_clear                              ; 3558: 20 77 80     w. :9558[1]
    equs "Acorn 1770 DFS", &0d, &0d                                   ; 355b: 41 63 6f... Aco :955b[1]

    bcc c956f                                                         ; 356b: 90 02       ..  :956b[1]
; &356d referenced 1 time by &96fd
.c956d
    lda #&ff                                                          ; 356d: a9 ff       ..  :956d[1]
; &356f referenced 1 time by &956b
.c956f
    jsr zero_stacked_XXX                                              ; 356f: 20 8e 9d     .. :956f[1]
    pha                                                               ; 3572: 48          H   :9572[1]
    lda #6                                                            ; 3573: a9 06       ..  :9573[1]
    jsr sub_c8020                                                     ; 3575: 20 20 80      . :9575[1]
    lda lfe87                                                         ; 3578: ad 87 fe    ... :9578[1]
    ldx #&0d                                                          ; 357b: a2 0d       ..  :957b[1]
; &357d referenced 1 time by &9584
.loop_c957d
    lda l9aec,x                                                       ; 357d: bd ec 9a    ... :957d[1]
    sta filev,x                                                       ; 3580: 9d 12 02    ... :9580[1]
    dex                                                               ; 3583: ca          .   :9583[1]
    bpl loop_c957d                                                    ; 3584: 10 f7       ..  :9584[1]
    lda #&a8                                                          ; 3586: a9 a8       ..  :9586[1]
    jsr osbyte_read                                                   ; 3588: 20 e5 9a     .. :9588[1]
    sty l00b1                                                         ; 358b: 84 b1       ..  :958b[1]
    stx l00b0                                                         ; 358d: 86 b0       ..  :958d[1]
    ldx #7                                                            ; 358f: a2 07       ..  :958f[1]
    ldy #&1b                                                          ; 3591: a0 1b       ..  :9591[1]
; &3593 referenced 1 time by &95a5
.loop_c9593
    lda c9adf,y                                                       ; 3593: b9 df 9a    ... :9593[1]
    sta (l00b0),y                                                     ; 3596: 91 b0       ..  :9596[1]
    iny                                                               ; 3598: c8          .   :9598[1]
    lda c9adf,y                                                       ; 3599: b9 df 9a    ... :9599[1]
    sta (l00b0),y                                                     ; 359c: 91 b0       ..  :959c[1]
    iny                                                               ; 359e: c8          .   :959e[1]
    lda romsel_copy                                                   ; 359f: a5 f4       ..  :959f[1]
    sta (l00b0),y                                                     ; 35a1: 91 b0       ..  :95a1[1]
    iny                                                               ; 35a3: c8          .   :95a3[1]
    dex                                                               ; 35a4: ca          .   :95a4[1]
    bne loop_c9593                                                    ; 35a5: d0 ec       ..  :95a5[1]
    sty l1082                                                         ; 35a7: 8c 82 10    ... :95a7[1]
    sty l1083                                                         ; 35aa: 8c 83 10    ... :95aa[1]
    stx l00cd                                                         ; 35ad: 86 cd       ..  :95ad[1]
    lda #&ff                                                          ; 35af: a9 ff       ..  :95af[1]
    sta l1087                                                         ; 35b1: 8d 87 10    ... :95b1[1]
    ldy #3                                                            ; 35b4: a0 03       ..  :95b4[1]
; &35b6 referenced 1 time by &95ba
.loop_c95b6
    sta l108b,y                                                       ; 35b6: 99 8b 10    ... :95b6[1]
    dey                                                               ; 35b9: 88          .   :95b9[1]
    bpl loop_c95b6                                                    ; 35ba: 10 fa       ..  :95ba[1]
    ldx #&0f                                                          ; 35bc: a2 0f       ..  :95bc[1]
    jsr c9adf                                                         ; 35be: 20 df 9a     .. :95be[1]
    jsr sub_c9ab8                                                     ; 35c1: 20 b8 9a     .. :95c1[1]
    ldy #&d3                                                          ; 35c4: a0 d3       ..  :95c4[1]
    lda (l00b0),y                                                     ; 35c6: b1 b0       ..  :95c6[1]
    bpl c95fd                                                         ; 35c8: 10 33       .3  :95c8[1]
    pla                                                               ; 35ca: 68          h   :95ca[1]
    pha                                                               ; 35cb: 48          H   :95cb[1]
    beq c95fd                                                         ; 35cc: f0 2f       ./  :95cc[1]
    ldy #&d4                                                          ; 35ce: a0 d4       ..  :95ce[1]
    lda (l00b0),y                                                     ; 35d0: b1 b0       ..  :95d0[1]
    bmi c9628                                                         ; 35d2: 30 54       0T  :95d2[1]
    jsr sub_c9aa3                                                     ; 35d4: 20 a3 9a     .. :95d4[1]
    ldy #0                                                            ; 35d7: a0 00       ..  :95d7[1]
; &35d9 referenced 1 time by &95e8
.loop_c95d9
    lda (l00b0),y                                                     ; 35d9: b1 b0       ..  :95d9[1]
    cpy #&c0                                                          ; 35db: c0 c0       ..  :95db[1]
    bcc c95e4                                                         ; 35dd: 90 05       ..  :95dd[1]
    sta l1000,y                                                       ; 35df: 99 00 10    ... :95df[1]
    bcs c95e7                                                         ; 35e2: b0 03       ..  :95e2[1]
; &35e4 referenced 1 time by &95dd
.c95e4
    sta l1100,y                                                       ; 35e4: 99 00 11    ... :95e4[1]
; &35e7 referenced 1 time by &95e2
.c95e7
    dey                                                               ; 35e7: 88          .   :95e7[1]
    bne loop_c95d9                                                    ; 35e8: d0 ef       ..  :95e8[1]
    lda #&a0                                                          ; 35ea: a9 a0       ..  :95ea[1]
; &35ec referenced 1 time by &95f9
.loop_c95ec
    tay                                                               ; 35ec: a8          .   :95ec[1]
    pha                                                               ; 35ed: 48          H   :95ed[1]
    lda #&3f ; '?'                                                    ; 35ee: a9 3f       .?  :95ee[1]
    jsr sub_c9f16                                                     ; 35f0: 20 16 9f     .. :95f0[1]
    pla                                                               ; 35f3: 68          h   :95f3[1]
    sta l111d,y                                                       ; 35f4: 99 1d 11    ... :95f4[1]
    sbc #&1f                                                          ; 35f7: e9 1f       ..  :95f7[1]
    bne loop_c95ec                                                    ; 35f9: d0 f1       ..  :95f9[1]
    beq c9628                                                         ; 35fb: f0 2b       .+  :95fb[1]
; &35fd referenced 2 times by &95c8, &95cc
.c95fd
    jsr sub_c9aa3                                                     ; 35fd: 20 a3 9a     .. :95fd[1]
    lda #&24 ; '$'                                                    ; 3600: a9 24       .$  :9600[1]
    sta l10c9                                                         ; 3602: 8d c9 10    ... :9602[1]
    sta l10cb                                                         ; 3605: 8d cb 10    ... :9605[1]
    ldy #0                                                            ; 3608: a0 00       ..  :9608[1]
    sty l10ca                                                         ; 360a: 8c ca 10    ... :960a[1]
    sty l10cc                                                         ; 360d: 8c cc 10    ... :960d[1]
    ldy #0                                                            ; 3610: a0 00       ..  :9610[1]
    sty l10c0                                                         ; 3612: 8c c0 10    ... :9612[1]
    ldx #3                                                            ; 3615: a2 03       ..  :9615[1]
    tya                                                               ; 3617: 98          .   :9617[1]
; &3618 referenced 1 time by &961c
.loop_c9618
    sta l10de,x                                                       ; 3618: 9d de 10    ... :9618[1]
    dex                                                               ; 361b: ca          .   :961b[1]
    bne loop_c9618                                                    ; 361c: d0 fa       ..  :961c[1]
    dey                                                               ; 361e: 88          .   :961e[1]
    sty l10c7                                                         ; 361f: 8c c7 10    ... :961f[1]
    sty l10c6                                                         ; 3622: 8c c6 10    ... :9622[1]
    sty l10dd                                                         ; 3625: 8c dd 10    ... :9625[1]
; &3628 referenced 2 times by &95d2, &95fb
.c9628
    jsr sub_c8f3f                                                     ; 3628: 20 3f 8f     ?. :9628[1]
    pla                                                               ; 362b: 68          h   :962b[1]
    bne c9649                                                         ; 362c: d0 1b       ..  :962c[1]
    lda #4                                                            ; 362e: a9 04       ..  :962e[1]
    ora l10de                                                         ; 3630: 0d de 10    ... :9630[1]
    sta l10de                                                         ; 3633: 8d de 10    ... :9633[1]
    jsr sub_c93f5                                                     ; 3636: 20 f5 93     .. :9636[1]
    lda #&fb                                                          ; 3639: a9 fb       ..  :9639[1]
    and l10de                                                         ; 363b: 2d de 10    -.. :963b[1]
    sta l10de                                                         ; 363e: 8d de 10    ... :963e[1]
    lda l0f06                                                         ; 3641: ad 06 0f    ... :9641[1]
    jsr sub_c81bf                                                     ; 3644: 20 bf 81     .. :9644[1]
    bne c964a                                                         ; 3647: d0 01       ..  :9647[1]
; &3649 referenced 1 time by &962c
.c9649
    rts                                                               ; 3649: 60          `   :9649[1]

; &364a referenced 1 time by &9647
.c964a
    ldy #&95                                                          ; 364a: a0 95       ..  :964a[1]
    ldx #&46 ; 'F'                                                    ; 364c: a2 46       .F  :964c[1]
    cmp #2                                                            ; 364e: c9 02       ..  :964e[1]
    bcc c965a                                                         ; 3650: 90 08       ..  :9650[1]
    beq c9658                                                         ; 3652: f0 04       ..  :9652[1]
    ldx #&4e ; 'N'                                                    ; 3654: a2 4e       .N  :9654[1]
    bne c965a                                                         ; 3656: d0 02       ..  :9656[1]
; &3658 referenced 1 time by &9652
.c9658
    ldx #&50 ; 'P'                                                    ; 3658: a2 50       .P  :9658[1]
; &365a referenced 2 times by &9650, &9656
.c965a
    jmp oscli                                                         ; 365a: 4c f7 ff    L.. :965a[1]

; &365d referenced 1 time by &b1b1
.sub_c965d
    jsr service_handler_help_and_tube                                 ; 365d: 20 a9 ae     .. :965d[1]
    pha                                                               ; 3660: 48          H   :9660[1]
    lda l0df0,x                                                       ; 3661: bd f0 0d    ... :9661[1]
    bmi pla_rts                                                       ; 3664: 30 5b       0[  :9664[1]
    pla                                                               ; 3666: 68          h   :9666[1]
    cmp #service_claim_absolute_workspace                             ; 3667: c9 01       ..  :9667[1]
    bne c9683                                                         ; 3669: d0 18       ..  :9669[1]
    jsr set_c_iff_have_fdc                                            ; 366b: 20 04 91     .. :966b[1]
    ldx romsel_copy                                                   ; 366e: a6 f4       ..  :966e[1]
    bcs c967a                                                         ; 3670: b0 08       ..  :9670[1]
    lda #&80                                                          ; 3672: a9 80       ..  :9672[1]
    sta l0df0,x                                                       ; 3674: 9d f0 0d    ... :9674[1]
    lda #1                                                            ; 3677: a9 01       ..  :9677[1]
    rts                                                               ; 3679: 60          `   :9679[1]

; &367a referenced 1 time by &9670
.c967a
    lda #service_claim_absolute_workspace                             ; 367a: a9 01       ..  :967a[1]
    cpy #&17                                                          ; 367c: c0 17       ..  :967c[1]
    bcs c9682                                                         ; 367e: b0 02       ..  :967e[1]
    ldy #&17                                                          ; 3680: a0 17       ..  :9680[1]
; &3682 referenced 1 time by &967e
.c9682
    rts                                                               ; 3682: 60          `   :9682[1]

; &3683 referenced 1 time by &9669
.c9683
    cmp #service_claim_private_workspace                              ; 3683: c9 02       ..  :9683[1]
    bne c96c3                                                         ; 3685: d0 3c       .<  :9685[1]
    pha                                                               ; 3687: 48          H   :9687[1]
    tya                                                               ; 3688: 98          .   :9688[1]
    pha                                                               ; 3689: 48          H   :9689[1]
    sta l00b1                                                         ; 368a: 85 b1       ..  :968a[1]
    ldy l0df0,x                                                       ; 368c: bc f0 0d    ... :968c[1]
    sta l0df0,x                                                       ; 368f: 9d f0 0d    ... :968f[1]
    lda #0                                                            ; 3692: a9 00       ..  :9692[1]
    sta l00b0                                                         ; 3694: 85 b0       ..  :9694[1]
    cpy l00b1                                                         ; 3696: c4 b1       ..  :9696[1]
    beq c969e                                                         ; 3698: f0 04       ..  :9698[1]
    ldy #&d3                                                          ; 369a: a0 d3       ..  :969a[1]
    sta (l00b0),y                                                     ; 369c: 91 b0       ..  :969c[1]
; &369e referenced 1 time by &9698
.c969e
    lda #&fd                                                          ; 369e: a9 fd       ..  :969e[1]
    jsr osbyte_read                                                   ; 36a0: 20 e5 9a     .. :96a0[1]
    dex                                                               ; 36a3: ca          .   :96a3[1]
    txa                                                               ; 36a4: 8a          .   :96a4[1]
    ldy #&d3                                                          ; 36a5: a0 d3       ..  :96a5[1]
    and (l00b0),y                                                     ; 36a7: 31 b0       1.  :96a7[1]
    sta (l00b0),y                                                     ; 36a9: 91 b0       ..  :96a9[1]
    php                                                               ; 36ab: 08          .   :96ab[1]
    iny                                                               ; 36ac: c8          .   :96ac[1]
    plp                                                               ; 36ad: 28          (   :96ad[1]
    bpl c96b7                                                         ; 36ae: 10 07       ..  :96ae[1]
    lda (l00b0),y                                                     ; 36b0: b1 b0       ..  :96b0[1]
    bpl c96b7                                                         ; 36b2: 10 03       ..  :96b2[1]
    jsr sub_c8951                                                     ; 36b4: 20 51 89     Q. :96b4[1]
; &36b7 referenced 2 times by &96ae, &96b2
.c96b7
    lda #0                                                            ; 36b7: a9 00       ..  :96b7[1]
    sta (l00b0),y                                                     ; 36b9: 91 b0       ..  :96b9[1]
    ldx romsel_copy                                                   ; 36bb: a6 f4       ..  :96bb[1]
    pla                                                               ; 36bd: 68          h   :96bd[1]
    tay                                                               ; 36be: a8          .   :96be[1]
    iny                                                               ; 36bf: c8          .   :96bf[1]
    iny                                                               ; 36c0: c8          .   :96c0[1]
; &36c1 referenced 1 time by &9664
.pla_rts
    pla                                                               ; 36c1: 68          h   :96c1[1]
; &36c2 referenced 1 time by &96df
.loop_c96c2
    rts                                                               ; 36c2: 60          `   :96c2[1]

; &36c3 referenced 1 time by &9685
.c96c3
    jsr sub_c83e3                                                     ; 36c3: 20 e3 83     .. :96c3[1]
    cmp #service_boot                                                 ; 36c6: c9 03       ..  :96c6[1]
    bne c96ec                                                         ; 36c8: d0 22       ."  :96c8[1]
    sty l00b3                                                         ; 36ca: 84 b3       ..  :96ca[1]
    lda #0                                                            ; 36cc: a9 00       ..  :96cc[1]
    sta l10de                                                         ; 36ce: 8d de 10    ... :96ce[1]
    lda #osbyte_scan_keyboard_from_16                                 ; 36d1: a9 7a       .z  :96d1[1]
    jsr osbyte                                                        ; 36d3: 20 f4 ff     .. :96d3[1]   ; Keyboard scan from key 16
    txa                                                               ; 36d6: 8a          .   :96d6[1]
    bmi c96e9                                                         ; 36d7: 30 10       0.  :96d7[1]
    cmp #&32 ; '2'                                                    ; 36d9: c9 32       .2  :96d9[1]
    beq c96e4                                                         ; 36db: f0 07       ..  :96db[1]
    cmp #&61 ; 'a'                                                    ; 36dd: c9 61       .a  :96dd[1]
    bne loop_c96c2                                                    ; 36df: d0 e1       ..  :96df[1]
    jsr sub_cac72                                                     ; 36e1: 20 72 ac     r. :96e1[1]
; &36e4 referenced 1 time by &96db
.c96e4
    lda #osbyte_write_keys_pressed                                    ; 36e4: a9 78       .x  :96e4[1]
    jsr osbyte                                                        ; 36e6: 20 f4 ff     .. :96e6[1]   ; Write current keys pressed
; &36e9 referenced 1 time by &96d7
.c96e9
    jmp c9556                                                         ; 36e9: 4c 56 95    LV. :96e9[1]

; &36ec referenced 1 time by &96c8
.c96ec
    cmp #service_unrecognised_command                                 ; 36ec: c9 04       ..  :96ec[1]
    bne c96f5                                                         ; 36ee: d0 05       ..  :96ee[1]
    ldx #&9b                                                          ; 36f0: a2 9b       ..  :96f0[1]
; &36f2 referenced 1 time by &970a
.loop_c96f2
    jmp c8703                                                         ; 36f2: 4c 03 87    L.. :96f2[1]

; &36f5 referenced 1 time by &96ee
.c96f5
    cmp #service_select_filing_system                                 ; 36f5: c9 12       ..  :96f5[1]
    bne c9700                                                         ; 36f7: d0 07       ..  :96f7[1]
    cpy #4                                                            ; 36f9: c0 04       ..  :96f9[1]
    bne c973c                                                         ; 36fb: d0 3f       .?  :96fb[1]
    jmp c956d                                                         ; 36fd: 4c 6d 95    Lm. :96fd[1]

; &3700 referenced 1 time by &96f7
.c9700
    cmp #service_help                                                 ; 3700: c9 09       ..  :9700[1]
    bne c9714                                                         ; 3702: d0 10       ..  :9702[1]
    lda (os_text_ptr),y                                               ; 3704: b1 f2       ..  :9704[1]
    ldx #&cf                                                          ; 3706: a2 cf       ..  :9706[1]
    cmp #&0d                                                          ; 3708: c9 0d       ..  :9708[1]
    bne loop_c96f2                                                    ; 370a: d0 e6       ..  :970a[1]
    tya                                                               ; 370c: 98          .   :970c[1]
    inx                                                               ; 370d: e8          .   :970d[1]
    inx                                                               ; 370e: e8          .   :970e[1]
    ldy #2                                                            ; 370f: a0 02       ..  :970f[1]
    jmp ca10b                                                         ; 3711: 4c 0b a1    L.. :9711[1]

; &3714 referenced 1 time by &9702
.c9714
    jsr zero_stacked_XXX                                              ; 3714: 20 8e 9d     .. :9714[1]
    cmp #service_absolute_workspace_claimed                           ; 3717: c9 0a       ..  :9717[1]
    bne c973d                                                         ; 3719: d0 22       ."  :9719[1]
    jsr sub_c9ab8                                                     ; 371b: 20 b8 9a     .. :971b[1]
    ldy #&d4                                                          ; 371e: a0 d4       ..  :971e[1]
    lda (l00b0),y                                                     ; 3720: b1 b0       ..  :9720[1]
    bpl c9736                                                         ; 3722: 10 12       ..  :9722[1]
    ldy #0                                                            ; 3724: a0 00       ..  :9724[1]
    jsr sub_c9d75                                                     ; 3726: 20 75 9d     u. :9726[1]
    jsr sub_c8951                                                     ; 3729: 20 51 89     Q. :9729[1]
    jsr sub_c9ab8                                                     ; 372c: 20 b8 9a     .. :972c[1]
    ldy #&d4                                                          ; 372f: a0 d4       ..  :972f[1]
    lda #0                                                            ; 3731: a9 00       ..  :9731[1]
    sta (l00b0),y                                                     ; 3733: 91 b0       ..  :9733[1]
    rts                                                               ; 3735: 60          `   :9735[1]

; &3736 referenced 1 time by &9722
.c9736
    lda #&0a                                                          ; 3736: a9 0a       ..  :9736[1]
; &3738 referenced 3 times by &973f, &9743, &9747
.c9738
    tsx                                                               ; 3738: ba          .   :9738[1]
    sta l0105,x                                                       ; 3739: 9d 05 01    ... :9739[1]
; &373c referenced 1 time by &96fb
.c973c
    rts                                                               ; 373c: 60          `   :973c[1]

; &373d referenced 1 time by &9719
.c973d
    cmp #service_unrecognised_osword                                  ; 373d: c9 08       ..  :973d[1]
    bne c9738                                                         ; 373f: d0 f7       ..  :973f[1]
    ldy l00ef                                                         ; 3741: a4 ef       ..  :9741[1]
    bmi c9738                                                         ; 3743: 30 f3       0.  :9743[1]
    cpy #&7d ; '}'                                                    ; 3745: c0 7d       .}  :9745[1]
    bcc c9738                                                         ; 3747: 90 ef       ..  :9747[1]
    ldx l00f0                                                         ; 3749: a6 f0       ..  :9749[1]
    stx l00c7                                                         ; 374b: 86 c7       ..  :974b[1]
    ldx l00f1                                                         ; 374d: a6 f1       ..  :974d[1]
    stx l00c8                                                         ; 374f: 86 c8       ..  :974f[1]
    iny                                                               ; 3751: c8          .   :9751[1]
    bpl c975b                                                         ; 3752: 10 07       ..  :9752[1]
    ldx l00c7                                                         ; 3754: a6 c7       ..  :9754[1]
    ldy l00c8                                                         ; 3756: a4 c8       ..  :9756[1]
    jmp c91af                                                         ; 3758: 4c af 91    L.. :9758[1]

; &375b referenced 1 time by &9752
.c975b
    jsr sub_c8b7b                                                     ; 375b: 20 7b 8b     {. :975b[1]
    jsr sub_c8380                                                     ; 375e: 20 80 83     .. :975e[1]
    iny                                                               ; 3761: c8          .   :9761[1]
    bmi c976c                                                         ; 3762: 30 08       0.  :9762[1]
    ldy #0                                                            ; 3764: a0 00       ..  :9764[1]
    lda l0f04                                                         ; 3766: ad 04 0f    ... :9766[1]
    sta (l00c7),y                                                     ; 3769: 91 c7       ..  :9769[1]
    rts                                                               ; 376b: 60          `   :976b[1]

; &376c referenced 1 time by &9762
.c976c
    lda #0                                                            ; 376c: a9 00       ..  :976c[1]
    tay                                                               ; 376e: a8          .   :976e[1]
    sta (l00c7),y                                                     ; 376f: 91 c7       ..  :976f[1]
    iny                                                               ; 3771: c8          .   :9771[1]
    lda l0f07                                                         ; 3772: ad 07 0f    ... :9772[1]
    sta (l00c7),y                                                     ; 3775: 91 c7       ..  :9775[1]
    iny                                                               ; 3777: c8          .   :9777[1]
    lda l0f06                                                         ; 3778: ad 06 0f    ... :9778[1]
    and #3                                                            ; 377b: 29 03       ).  :977b[1]
    sta (l00c7),y                                                     ; 377d: 91 c7       ..  :977d[1]
    iny                                                               ; 377f: c8          .   :977f[1]
    lda #0                                                            ; 3780: a9 00       ..  :9780[1]
    sta (l00c7),y                                                     ; 3782: 91 c7       ..  :9782[1]
    rts                                                               ; 3784: 60          `   :9784[1]

.sub_c9785
    jsr sub_c840c                                                     ; 3785: 20 0c 84     .. :9785[1]
    pha                                                               ; 3788: 48          H   :9788[1]
    jsr c99a3                                                         ; 3789: 20 a3 99     .. :9789[1]
    stx l00b0                                                         ; 378c: 86 b0       ..  :978c[1]
    stx l10db                                                         ; 378e: 8e db 10    ... :978e[1]
    sty l00b1                                                         ; 3791: 84 b1       ..  :9791[1]
    sty l10dc                                                         ; 3793: 8c dc 10    ... :9793[1]
    ldx #0                                                            ; 3796: a2 00       ..  :9796[1]
    ldy #0                                                            ; 3798: a0 00       ..  :9798[1]
    jsr sub_c80e3                                                     ; 379a: 20 e3 80     .. :979a[1]
; &379d referenced 1 time by &97a2
.loop_c979d
    jsr sub_c80d3                                                     ; 379d: 20 d3 80     .. :979d[1]
    cpy #&12                                                          ; 37a0: c0 12       ..  :97a0[1]
    bne loop_c979d                                                    ; 37a2: d0 f9       ..  :97a2[1]
    pla                                                               ; 37a4: 68          h   :97a4[1]
    tax                                                               ; 37a5: aa          .   :97a5[1]
    inx                                                               ; 37a6: e8          .   :97a6[1]
    cpx #8                                                            ; 37a7: e0 08       ..  :97a7[1]
    bcs c97b3                                                         ; 37a9: b0 08       ..  :97a9[1]
    lda l9b29,x                                                       ; 37ab: bd 29 9b    .). :97ab[1]
    pha                                                               ; 37ae: 48          H   :97ae[1]
    lda l9b21,x                                                       ; 37af: bd 21 9b    .!. :97af[1]
    pha                                                               ; 37b2: 48          H   :97b2[1]
; &37b3 referenced 2 times by &97a9, &97b8
.c97b3
    lda #0                                                            ; 37b3: a9 00       ..  :97b3[1]
    rts                                                               ; 37b5: 60          `   :97b5[1]

.sub_c97b6
    cmp #9                                                            ; 37b6: c9 09       ..  :97b6[1]
    bcs c97b3                                                         ; 37b8: b0 f9       ..  :97b8[1]
    stx l00b5                                                         ; 37ba: 86 b5       ..  :97ba[1]
    tax                                                               ; 37bc: aa          .   :97bc[1]
    lda l9b18,x                                                       ; 37bd: bd 18 9b    ... :97bd[1]
    pha                                                               ; 37c0: 48          H   :97c0[1]
    lda l9b0f,x                                                       ; 37c1: bd 0f 9b    ... :97c1[1]
    pha                                                               ; 37c4: 48          H   :97c4[1]
    txa                                                               ; 37c5: 8a          .   :97c5[1]
    ldx l00b5                                                         ; 37c6: a6 b5       ..  :97c6[1]
; &37c8 referenced 1 time by &97cb
.loop_c97c8
    rts                                                               ; 37c8: 60          `   :97c8[1]

.sub_c97c9
    cmp #9                                                            ; 37c9: c9 09       ..  :97c9[1]
    bcs loop_c97c8                                                    ; 37cb: b0 fb       ..  :97cb[1]
    jsr sub_c83e3                                                     ; 37cd: 20 e3 83     .. :97cd[1]
    jsr zero_stacked_XXX                                              ; 37d0: 20 8e 9d     .. :97d0[1]
    stx l107d                                                         ; 37d3: 8e 7d 10    .}. :97d3[1]
    sty l107e                                                         ; 37d6: 8c 7e 10    .~. :97d6[1]
    tay                                                               ; 37d9: a8          .   :97d9[1]
    jsr sub_c97e8                                                     ; 37da: 20 e8 97     .. :97da[1]
    php                                                               ; 37dd: 08          .   :97dd[1]
    bit l1081                                                         ; 37de: 2c 81 10    ,.. :97de[1]
    bpl c97e6                                                         ; 37e1: 10 03       ..  :97e1[1]
    jsr sub_c8f7a                                                     ; 37e3: 20 7a 8f     z. :97e3[1]
; &37e6 referenced 1 time by &97e1
.c97e6
    plp                                                               ; 37e6: 28          (   :97e6[1]
    rts                                                               ; 37e7: 60          `   :97e7[1]

; &37e8 referenced 1 time by &97da
.sub_c97e8
    lda l9b31,y                                                       ; 37e8: b9 31 9b    .1. :97e8[1]
    sta l10d7                                                         ; 37eb: 8d d7 10    ... :97eb[1]
    lda l9b3a,y                                                       ; 37ee: b9 3a 9b    .:. :97ee[1]
    sta l10d8                                                         ; 37f1: 8d d8 10    ... :97f1[1]
    lda l9b43,y                                                       ; 37f4: b9 43 9b    .C. :97f4[1]
    lsr a                                                             ; 37f7: 4a          J   :97f7[1]
    php                                                               ; 37f8: 08          .   :97f8[1]
    lsr a                                                             ; 37f9: 4a          J   :97f9[1]
    php                                                               ; 37fa: 08          .   :97fa[1]
    sta l107f                                                         ; 37fb: 8d 7f 10    ... :97fb[1]
    jsr sub_c995a                                                     ; 37fe: 20 5a 99     Z. :97fe[1]
    ldy #&0c                                                          ; 3801: a0 0c       ..  :9801[1]
; &3803 referenced 1 time by &9809
.loop_c9803
    lda (l00b4),y                                                     ; 3803: b1 b4       ..  :9803[1]
    sta l1060,y                                                       ; 3805: 99 60 10    .`. :9805[1]
    dey                                                               ; 3808: 88          .   :9808[1]
    bpl loop_c9803                                                    ; 3809: 10 f8       ..  :9809[1]
    lda l1063                                                         ; 380b: ad 63 10    .c. :980b[1]
    and l1064                                                         ; 380e: 2d 64 10    -d. :980e[1]
    ora l10d6                                                         ; 3811: 0d d6 10    ... :9811[1]
    clc                                                               ; 3814: 18          .   :9814[1]
    adc #1                                                            ; 3815: 69 01       i.  :9815[1]
    beq c981f                                                         ; 3817: f0 06       ..  :9817[1]
    jsr sub_c8f6b                                                     ; 3819: 20 6b 8f     k. :9819[1]
    clc                                                               ; 381c: 18          .   :981c[1]
    lda #&ff                                                          ; 381d: a9 ff       ..  :981d[1]
; &381f referenced 1 time by &9817
.c981f
    sta l1081                                                         ; 381f: 8d 81 10    ... :981f[1]
    lda l107f                                                         ; 3822: ad 7f 10    ... :9822[1]
    bcs c982e                                                         ; 3825: b0 07       ..  :9825[1]
    ldx #&61 ; 'a'                                                    ; 3827: a2 61       .a  :9827[1]
    ldy #&10                                                          ; 3829: a0 10       ..  :9829[1]
    jsr tube_entry                                                    ; 382b: 20 06 04     .. :982b[1]
; &382e referenced 1 time by &9825
.c982e
    plp                                                               ; 382e: 28          (   :982e[1]
    bcs c9835                                                         ; 382f: b0 04       ..  :982f[1]
    plp                                                               ; 3831: 28          (   :9831[1]
; &3832 referenced 1 time by &9861
.sub_c9832
    jmp (l10d7)                                                       ; 3832: 6c d7 10    l.. :9832[1]

; &3835 referenced 1 time by &982f
.c9835
    ldx #3                                                            ; 3835: a2 03       ..  :9835[1]
; &3837 referenced 1 time by &983d
.loop_c9837
    lda l1069,x                                                       ; 3837: bd 69 10    .i. :9837[1]
    sta l00b6,x                                                       ; 383a: 95 b6       ..  :983a[1]
    dex                                                               ; 383c: ca          .   :983c[1]
    bpl loop_c9837                                                    ; 383d: 10 f8       ..  :983d[1]
    ldx #&b6                                                          ; 383f: a2 b6       ..  :983f[1]
    ldy l1060                                                         ; 3841: ac 60 10    .`. :9841[1]
    lda #0                                                            ; 3844: a9 00       ..  :9844[1]
    plp                                                               ; 3846: 28          (   :9846[1]
    bcs c984c                                                         ; 3847: b0 03       ..  :9847[1]
    jsr ca06c                                                         ; 3849: 20 6c a0     l. :9849[1]
; &384c referenced 1 time by &9847
.c984c
    jsr c9dd5                                                         ; 384c: 20 d5 9d     .. :984c[1]
    ldx #3                                                            ; 384f: a2 03       ..  :984f[1]
; &3851 referenced 1 time by &9857
.loop_c9851
    lda l00b6,x                                                       ; 3851: b5 b6       ..  :9851[1]
    sta l1069,x                                                       ; 3853: 9d 69 10    .i. :9853[1]
    dex                                                               ; 3856: ca          .   :9856[1]
    bpl loop_c9851                                                    ; 3857: 10 f8       ..  :9857[1]
; &3859 referenced 1 time by &989b
.c9859
    jsr invert_l1065                                                  ; 3859: 20 4c 99     L. :9859[1]
    bmi c986b                                                         ; 385c: 30 0d       0.  :985c[1]
; &385e referenced 1 time by &9870
.loop_c985e
    ldy l1060                                                         ; 385e: ac 60 10    .`. :985e[1]
    jsr sub_c9832                                                     ; 3861: 20 32 98     2. :9861[1]
    bcs c9873                                                         ; 3864: b0 0d       ..  :9864[1]
    ldx #9                                                            ; 3866: a2 09       ..  :9866[1]
    jsr sub_c9940                                                     ; 3868: 20 40 99     @. :9868[1]
; &386b referenced 1 time by &985c
.c986b
    ldx #5                                                            ; 386b: a2 05       ..  :986b[1]
    jsr sub_c9940                                                     ; 386d: 20 40 99     @. :986d[1]
    bne loop_c985e                                                    ; 3870: d0 ec       ..  :9870[1]
    clc                                                               ; 3872: 18          .   :9872[1]
; &3873 referenced 1 time by &9864
.c9873
    php                                                               ; 3873: 08          .   :9873[1]
    jsr invert_l1065                                                  ; 3874: 20 4c 99     L. :9874[1]
    ldx #5                                                            ; 3877: a2 05       ..  :9877[1]
    jsr sub_c9940                                                     ; 3879: 20 40 99     @. :9879[1]
    ldy #&0c                                                          ; 387c: a0 0c       ..  :987c[1]
    jsr sub_c995a                                                     ; 387e: 20 5a 99     Z. :987e[1]
; &3881 referenced 1 time by &9887
.loop_c9881
    lda l1060,y                                                       ; 3881: b9 60 10    .`. :9881[1]
    sta (l00b4),y                                                     ; 3884: 91 b4       ..  :9884[1]
    dey                                                               ; 3886: 88          .   :9886[1]
    bpl loop_c9881                                                    ; 3887: 10 f8       ..  :9887[1]
    plp                                                               ; 3889: 28          (   :9889[1]
    rts                                                               ; 388a: 60          `   :988a[1]

    jsr sub_c8b7b                                                     ; 388b: 20 7b 8b     {. :988b[1]
    jsr sub_c93fd                                                     ; 388e: 20 fd 93     .. :988e[1]
    lda #&9d                                                          ; 3891: a9 9d       ..  :9891[1]
    sta l10d7                                                         ; 3893: 8d d7 10    ... :9893[1]
    lda #&98                                                          ; 3896: a9 98       ..  :9896[1]
    sta l10d8                                                         ; 3898: 8d d8 10    ... :9898[1]
    bne c9859                                                         ; 389b: d0 bc       ..  :989b[1]
    ldy l1069                                                         ; 389d: ac 69 10    .i. :989d[1]
; &38a0 referenced 1 time by &98b8
.loop_c98a0
    cpy l0f05                                                         ; 38a0: cc 05 0f    ... :98a0[1]
    bcs c98cd                                                         ; 38a3: b0 28       .(  :98a3[1]
    lda l0e0f,y                                                       ; 38a5: b9 0f 0e    ... :98a5[1]
    jsr sub_c8327                                                     ; 38a8: 20 27 83     '. :98a8[1]
    eor l00cc                                                         ; 38ab: 45 cc       E.  :98ab[1]
    bcs c98b1                                                         ; 38ad: b0 02       ..  :98ad[1]
    and #&df                                                          ; 38af: 29 df       ).  :98af[1]
; &38b1 referenced 1 time by &98ad
.c98b1
    and #&7f                                                          ; 38b1: 29 7f       ).  :98b1[1]
    beq c98ba                                                         ; 38b3: f0 05       ..  :98b3[1]
    jsr sub_c87da                                                     ; 38b5: 20 da 87     .. :98b5[1]
    bne loop_c98a0                                                    ; 38b8: d0 e6       ..  :98b8[1]
; &38ba referenced 1 time by &98b3
.c98ba
    lda #7                                                            ; 38ba: a9 07       ..  :98ba[1]
    jsr c996e                                                         ; 38bc: 20 6e 99     n. :98bc[1]
    sta l00b0                                                         ; 38bf: 85 b0       ..  :98bf[1]
; &38c1 referenced 1 time by &98ca
.loop_c98c1
    lda l0e08,y                                                       ; 38c1: b9 08 0e    ... :98c1[1]
    jsr c996e                                                         ; 38c4: 20 6e 99     n. :98c4[1]
    iny                                                               ; 38c7: c8          .   :98c7[1]
    dec l00b0                                                         ; 38c8: c6 b0       ..  :98c8[1]
    bne loop_c98c1                                                    ; 38ca: d0 f5       ..  :98ca[1]
    clc                                                               ; 38cc: 18          .   :98cc[1]
; &38cd referenced 1 time by &98a3
.c98cd
    sty l1069                                                         ; 38cd: 8c 69 10    .i. :98cd[1]
    lda l0f04                                                         ; 38d0: ad 04 0f    ... :98d0[1]
    sta l1060                                                         ; 38d3: 8d 60 10    .`. :98d3[1]
    rts                                                               ; 38d6: 60          `   :98d6[1]

    jsr sub_c8b7b                                                     ; 38d7: 20 7b 8b     {. :98d7[1]
    jsr sub_c93fd                                                     ; 38da: 20 fd 93     .. :98da[1]
    lda #&0c                                                          ; 38dd: a9 0c       ..  :98dd[1]
    jsr c996e                                                         ; 38df: 20 6e 99     n. :98df[1]
    ldy #0                                                            ; 38e2: a0 00       ..  :98e2[1]
; &38e4 referenced 1 time by &98f6
.loop_c98e4
    cpy #8                                                            ; 38e4: c0 08       ..  :98e4[1]
    bcs c98ed                                                         ; 38e6: b0 05       ..  :98e6[1]
    lda l0e00,y                                                       ; 38e8: b9 00 0e    ... :98e8[1]
    bcc c98f0                                                         ; 38eb: 90 03       ..  :98eb[1]
; &38ed referenced 1 time by &98e6
.c98ed
    lda l0ef8,y                                                       ; 38ed: b9 f8 0e    ... :98ed[1]
; &38f0 referenced 1 time by &98eb
.c98f0
    jsr c996e                                                         ; 38f0: 20 6e 99     n. :98f0[1]
    iny                                                               ; 38f3: c8          .   :98f3[1]
    cpy #&0c                                                          ; 38f4: c0 0c       ..  :98f4[1]
    bne loop_c98e4                                                    ; 38f6: d0 ec       ..  :98f6[1]
    lda l0f06                                                         ; 38f8: ad 06 0f    ... :98f8[1]
    jsr sub_c81bf                                                     ; 38fb: 20 bf 81     .. :98fb[1]
    jsr c996e                                                         ; 38fe: 20 6e 99     n. :98fe[1]
    lda l00cd                                                         ; 3901: a5 cd       ..  :9901[1]
    jmp c996e                                                         ; 3903: 4c 6e 99    Ln. :9903[1]

    jsr sub_c9965                                                     ; 3906: 20 65 99     e. :9906[1]
    lda l10ca                                                         ; 3909: ad ca 10    ... :9909[1]
    ora #&30 ; '0'                                                    ; 390c: 09 30       .0  :990c[1]
    jsr c996e                                                         ; 390e: 20 6e 99     n. :990e[1]
    jsr sub_c9965                                                     ; 3911: 20 65 99     e. :9911[1]
    lda l10c9                                                         ; 3914: ad c9 10    ... :9914[1]
    bne c996e                                                         ; 3917: d0 55       .U  :9917[1]
    jsr sub_c9965                                                     ; 3919: 20 65 99     e. :9919[1]
    lda l10cc                                                         ; 391c: ad cc 10    ... :991c[1]
    ora #&30 ; '0'                                                    ; 391f: 09 30       .0  :991f[1]
    jsr c996e                                                         ; 3921: 20 6e 99     n. :9921[1]
    jsr sub_c9965                                                     ; 3924: 20 65 99     e. :9924[1]
    lda l10cb                                                         ; 3927: ad cb 10    ... :9927[1]
    bne c996e                                                         ; 392a: d0 42       .B  :992a[1]
; &392c referenced 2 times by &9978, &9993
.sub_c992c
    pha                                                               ; 392c: 48          H   :992c[1]
    lda l1061                                                         ; 392d: ad 61 10    .a. :992d[1]
    sta l00b8                                                         ; 3930: 85 b8       ..  :9930[1]
    lda l1062                                                         ; 3932: ad 62 10    .b. :9932[1]
    sta l00b9                                                         ; 3935: 85 b9       ..  :9935[1]
    ldx #0                                                            ; 3937: a2 00       ..  :9937[1]
    pla                                                               ; 3939: 68          h   :9939[1]
    rts                                                               ; 393a: 60          `   :993a[1]

; &393b referenced 4 times by &9976, &997d, &9990, &9998
.c993b
    jsr sub_c83e3                                                     ; 393b: 20 e3 83     .. :993b[1]
    ldx #1                                                            ; 393e: a2 01       ..  :993e[1]
; &3940 referenced 3 times by &9868, &986d, &9879
.sub_c9940
    ldy #4                                                            ; 3940: a0 04       ..  :9940[1]
; &3942 referenced 1 time by &9949
.loop_c9942
    inc l1060,x                                                       ; 3942: fe 60 10    .`. :9942[1]
    bne c994b                                                         ; 3945: d0 04       ..  :9945[1]
    inx                                                               ; 3947: e8          .   :9947[1]
    dey                                                               ; 3948: 88          .   :9948[1]
    bne loop_c9942                                                    ; 3949: d0 f7       ..  :9949[1]
; &394b referenced 1 time by &9945
.c994b
    rts                                                               ; 394b: 60          `   :994b[1]

; Invert the 32-bit value at l1065
; &394c referenced 2 times by &9859, &9874
.invert_l1065
    ldx #3                                                            ; 394c: a2 03       ..  :994c[1]
; &394e referenced 1 time by &9957
.loop_c994e
    lda #&ff                                                          ; 394e: a9 ff       ..  :994e[1]
    eor l1065,x                                                       ; 3950: 5d 65 10    ]e. :9950[1]
    sta l1065,x                                                       ; 3953: 9d 65 10    .e. :9953[1]
    dex                                                               ; 3956: ca          .   :9956[1]
    bpl loop_c994e                                                    ; 3957: 10 f5       ..  :9957[1]
    rts                                                               ; 3959: 60          `   :9959[1]

; &395a referenced 2 times by &97fe, &987e
.sub_c995a
    lda l107d                                                         ; 395a: ad 7d 10    .}. :995a[1]
    sta l00b4                                                         ; 395d: 85 b4       ..  :995d[1]
    lda l107e                                                         ; 395f: ad 7e 10    .~. :995f[1]
    sta l00b5                                                         ; 3962: 85 b5       ..  :9962[1]
; &3964 referenced 1 time by &996c
.loop_c9964
    rts                                                               ; 3964: 60          `   :9964[1]

; &3965 referenced 4 times by &9906, &9911, &9919, &9924
.sub_c9965
    lda #1                                                            ; 3965: a9 01       ..  :9965[1]
    bne c996e                                                         ; 3967: d0 05       ..  :9967[1]
    jsr sub_c9e94                                                     ; 3969: 20 94 9e     .. :9969[1]
    bcs loop_c9964                                                    ; 396c: b0 f6       ..  :996c[1]
; &396e referenced 11 times by &98bc, &98c4, &98df, &98f0, &98fe, &9903, &990e, &9917, &9921, &992a, &9967
.c996e
    bit l1081                                                         ; 396e: 2c 81 10    ,.. :996e[1]
    bpl c9978                                                         ; 3971: 10 05       ..  :9971[1]
    sta tube_host_r3_data                                             ; 3973: 8d e5 fe    ... :9973[1]
    bmi c993b                                                         ; 3976: 30 c3       0.  :9976[1]
; &3978 referenced 1 time by &9971
.c9978
    jsr sub_c992c                                                     ; 3978: 20 2c 99     ,. :9978[1]
    sta (l00b8,x)                                                     ; 397b: 81 b8       ..  :997b[1]
    jmp c993b                                                         ; 397d: 4c 3b 99    L;. :997d[1]

    jsr sub_c9988                                                     ; 3980: 20 88 99     .. :9980[1]
    jsr sub_c9f82                                                     ; 3983: 20 82 9f     .. :9983[1]
    clc                                                               ; 3986: 18          .   :9986[1]
    rts                                                               ; 3987: 60          `   :9987[1]

; &3988 referenced 1 time by &9980
.sub_c9988
    bit l1081                                                         ; 3988: 2c 81 10    ,.. :9988[1]
    bpl c9993                                                         ; 398b: 10 06       ..  :998b[1]
    lda tube_host_r3_data                                             ; 398d: ad e5 fe    ... :998d[1]
    jmp c993b                                                         ; 3990: 4c 3b 99    L;. :9990[1]

; &3993 referenced 1 time by &998b
.c9993
    jsr sub_c992c                                                     ; 3993: 20 2c 99     ,. :9993[1]
    lda (l00b8,x)                                                     ; 3996: a1 b8       ..  :9996[1]
    jmp c993b                                                         ; 3998: 4c 3b 99    L;. :9998[1]

    bit l10c7                                                         ; 399b: 2c c7 10    ,.. :999b[1]
    bmi c99a3                                                         ; 399e: 30 03       0.  :999e[1]
    dec l10c7                                                         ; 39a0: ce c7 10    ... :99a0[1]
; &39a3 referenced 5 times by &8782, &8bac, &9789, &999e, &9c25
.c99a3
    lda #&ff                                                          ; 39a3: a9 ff       ..  :99a3[1]
    sta l10ce                                                         ; 39a5: 8d ce 10    ... :99a5[1]
; &39a8 referenced 1 time by &99b3
.loop_c99a8
    sta l10cd                                                         ; 39a8: 8d cd 10    ... :99a8[1]
    rts                                                               ; 39ab: 60          `   :99ab[1]

; &39ac referenced 6 times by &824b, &8254, &8750, &8797, &89e6, &a463
.sub_c99ac
    lda #&2a ; '*'                                                    ; 39ac: a9 2a       .*  :99ac[1]
    sta l10ce                                                         ; 39ae: 8d ce 10    ... :99ae[1]
    lda #&23 ; '#'                                                    ; 39b1: a9 23       .#  :99b1[1]
    bne loop_c99a8                                                    ; 39b3: d0 f3       ..  :99b3[1]
    jsr sub_c9a6e                                                     ; 39b5: 20 6e 9a     n. :99b5[1]
    jsr sub_c8386                                                     ; 39b8: 20 86 83     .. :99b8[1]
    lda #1                                                            ; 39bb: a9 01       ..  :99bb[1]
    rts                                                               ; 39bd: 60          `   :99bd[1]

    jsr sub_c9a4b                                                     ; 39be: 20 4b 9a     K. :99be[1]
    jsr sub_c8386                                                     ; 39c1: 20 86 83     .. :99c1[1]
    jsr sub_c830a                                                     ; 39c4: 20 0a 83     .. :99c4[1]
    bcc c99ed                                                         ; 39c7: 90 24       .$  :99c7[1]
    jsr sub_c9a6e                                                     ; 39c9: 20 6e 9a     n. :99c9[1]
    jsr sub_c99f3                                                     ; 39cc: 20 f3 99     .. :99cc[1]
    jsr sub_c9a0f                                                     ; 39cf: 20 0f 9a     .. :99cf[1]
    bvc c99ea                                                         ; 39d2: 50 16       P.  :99d2[1]
    jsr sub_c9a6e                                                     ; 39d4: 20 6e 9a     n. :99d4[1]
    jsr sub_c9a0f                                                     ; 39d7: 20 0f 9a     .. :99d7[1]
    bvc c99ed                                                         ; 39da: 50 11       P.  :99da[1]
    jsr sub_c9a6e                                                     ; 39dc: 20 6e 9a     n. :99dc[1]
    jsr sub_c99f3                                                     ; 39df: 20 f3 99     .. :99df[1]
    bvc c99ed                                                         ; 39e2: 50 09       P.  :99e2[1]
    jsr sub_c9a6e                                                     ; 39e4: 20 6e 9a     n. :99e4[1]
    jsr sub_c9a63                                                     ; 39e7: 20 63 9a     c. :99e7[1]
; &39ea referenced 1 time by &99d2
.c99ea
    jsr sub_c9a32                                                     ; 39ea: 20 32 9a     2. :99ea[1]
; &39ed referenced 3 times by &99c7, &99da, &99e2
.c99ed
    jsr c89d7                                                         ; 39ed: 20 d7 89     .. :99ed[1]
    lda #1                                                            ; 39f0: a9 01       ..  :99f0[1]
    rts                                                               ; 39f2: 60          `   :99f2[1]

; &39f3 referenced 2 times by &99cc, &99df
.sub_c99f3
    jsr sub_c83e3                                                     ; 39f3: 20 e3 83     .. :99f3[1]
    ldy #2                                                            ; 39f6: a0 02       ..  :99f6[1]
    lda (l00b0),y                                                     ; 39f8: b1 b0       ..  :99f8[1]
    sta l0f08,x                                                       ; 39fa: 9d 08 0f    ... :99fa[1]
    iny                                                               ; 39fd: c8          .   :99fd[1]
    lda (l00b0),y                                                     ; 39fe: b1 b0       ..  :99fe[1]
    sta l0f09,x                                                       ; 3a00: 9d 09 0f    ... :9a00[1]
    iny                                                               ; 3a03: c8          .   :9a03[1]
    lda (l00b0),y                                                     ; 3a04: b1 b0       ..  :9a04[1]
    asl a                                                             ; 3a06: 0a          .   :9a06[1]
    asl a                                                             ; 3a07: 0a          .   :9a07[1]
    eor l0f0e,x                                                       ; 3a08: 5d 0e 0f    ].. :9a08[1]
    and #&0c                                                          ; 3a0b: 29 0c       ).  :9a0b[1]
    bpl c9a2a                                                         ; 3a0d: 10 1b       ..  :9a0d[1]
; &3a0f referenced 2 times by &99cf, &99d7
.sub_c9a0f
    jsr sub_c83e3                                                     ; 3a0f: 20 e3 83     .. :9a0f[1]
    ldy #6                                                            ; 3a12: a0 06       ..  :9a12[1]
    lda (l00b0),y                                                     ; 3a14: b1 b0       ..  :9a14[1]
    sta l0f0a,x                                                       ; 3a16: 9d 0a 0f    ... :9a16[1]
    iny                                                               ; 3a19: c8          .   :9a19[1]
    lda (l00b0),y                                                     ; 3a1a: b1 b0       ..  :9a1a[1]
    sta l0f0b,x                                                       ; 3a1c: 9d 0b 0f    ... :9a1c[1]
    iny                                                               ; 3a1f: c8          .   :9a1f[1]
    lda (l00b0),y                                                     ; 3a20: b1 b0       ..  :9a20[1]
    ror a                                                             ; 3a22: 6a          j   :9a22[1]
    ror a                                                             ; 3a23: 6a          j   :9a23[1]
    ror a                                                             ; 3a24: 6a          j   :9a24[1]
    eor l0f0e,x                                                       ; 3a25: 5d 0e 0f    ].. :9a25[1]
    and #&c0                                                          ; 3a28: 29 c0       ).  :9a28[1]
; &3a2a referenced 1 time by &9a0d
.c9a2a
    eor l0f0e,x                                                       ; 3a2a: 5d 0e 0f    ].. :9a2a[1]
    sta l0f0e,x                                                       ; 3a2d: 9d 0e 0f    ... :9a2d[1]
    clv                                                               ; 3a30: b8          .   :9a30[1]
    rts                                                               ; 3a31: 60          `   :9a31[1]

; &3a32 referenced 1 time by &99ea
.sub_c9a32
    jsr sub_c83e3                                                     ; 3a32: 20 e3 83     .. :9a32[1]
    ldy #&0e                                                          ; 3a35: a0 0e       ..  :9a35[1]
    lda (l00b0),y                                                     ; 3a37: b1 b0       ..  :9a37[1]
    and #&0a                                                          ; 3a39: 29 0a       ).  :9a39[1]
    beq c9a3f                                                         ; 3a3b: f0 02       ..  :9a3b[1]
    lda #&80                                                          ; 3a3d: a9 80       ..  :9a3d[1]
; &3a3f referenced 1 time by &9a3b
.c9a3f
    eor l0e0f,x                                                       ; 3a3f: 5d 0f 0e    ].. :9a3f[1]
    and #&80                                                          ; 3a42: 29 80       ).  :9a42[1]
    eor l0e0f,x                                                       ; 3a44: 5d 0f 0e    ].. :9a44[1]
    sta l0e0f,x                                                       ; 3a47: 9d 0f 0e    ... :9a47[1]
    rts                                                               ; 3a4a: 60          `   :9a4a[1]

; &3a4b referenced 1 time by &99be
.sub_c9a4b
    jsr sub_c9a78                                                     ; 3a4b: 20 78 9a     x. :9a4b[1]
    bcc c9a73                                                         ; 3a4e: 90 23       .#  :9a4e[1]
; &3a50 referenced 2 times by &9a60, &9c55
.sub_c9a50
    lda l0e0f,y                                                       ; 3a50: b9 0f 0e    ... :9a50[1]
    bpl c9a77                                                         ; 3a53: 10 22       ."  :9a53[1]
; &3a55 referenced 1 time by &9f6b
.generate_error_precheck_locked
    jsr generate_error_precheck                                       ; 3a55: 20 38 80     8. :9a55[1]
    equb &c3                                                          ; 3a58: c3          .   :9a58[1]
    equs "Locked"                                                     ; 3a59: 4c 6f 63... Loc :9a59[1]
    equb 0                                                            ; 3a5f: 00          .   :9a5f[1]

; &3a60 referenced 2 times by &830a, &8bba
.sub_c9a60
    jsr sub_c9a50                                                     ; 3a60: 20 50 9a     P. :9a60[1]
; &3a63 referenced 2 times by &8a00, &99e7
.sub_c9a63
    jsr sub_c83e3                                                     ; 3a63: 20 e3 83     .. :9a63[1]
    jsr sub_c9d1e                                                     ; 3a66: 20 1e 9d     .. :9a66[1]
    bcc c9a8c                                                         ; 3a69: 90 21       .!  :9a69[1]
    jmp generate_error_precheck_open                                  ; 3a6b: 4c 82 9c    L.. :9a6b[1]

; &3a6e referenced 5 times by &99b5, &99c9, &99d4, &99dc, &99e4
.sub_c9a6e
    jsr sub_c9a78                                                     ; 3a6e: 20 78 9a     x. :9a6e[1]
    bcs c9a8c                                                         ; 3a71: b0 19       ..  :9a71[1]
; &3a73 referenced 1 time by &9a4e
.c9a73
    pla                                                               ; 3a73: 68          h   :9a73[1]
    pla                                                               ; 3a74: 68          h   :9a74[1]
    lda #0                                                            ; 3a75: a9 00       ..  :9a75[1]
; &3a77 referenced 1 time by &9a53
.c9a77
    rts                                                               ; 3a77: 60          `   :9a77[1]

; &3a78 referenced 2 times by &9a4b, &9a6e
.sub_c9a78
    jsr sub_c80f3                                                     ; 3a78: 20 f3 80     .. :9a78[1]
    jsr sub_c8284                                                     ; 3a7b: 20 84 82     .. :9a7b[1]
    bcc c9a8c                                                         ; 3a7e: 90 0c       ..  :9a7e[1]
    tya                                                               ; 3a80: 98          .   :9a80[1]
    tax                                                               ; 3a81: aa          .   :9a81[1]
; &3a82 referenced 2 times by &881e, &885c
.sub_c9a82
    lda l10db                                                         ; 3a82: ad db 10    ... :9a82[1]
    sta l00b0                                                         ; 3a85: 85 b0       ..  :9a85[1]
    lda l10dc                                                         ; 3a87: ad dc 10    ... :9a87[1]
    sta l00b1                                                         ; 3a8a: 85 b1       ..  :9a8a[1]
; &3a8c referenced 3 times by &9a69, &9a71, &9a7e
.c9a8c
    rts                                                               ; 3a8c: 60          `   :9a8c[1]

; &3a8d referenced 4 times by &929d, &a267, &a34a, &a64f
.sub_c9a8d
    lda #osbyte_read_oshwm                                            ; 3a8d: a9 83       ..  :9a8d[1]
    jsr osbyte                                                        ; 3a8f: 20 f4 ff     .. :9a8f[1]   ; Read top of operating system RAM address (OSHWM)
    sty l10cf                                                         ; 3a92: 8c cf 10    ... :9a92[1]
    lda #osbyte_read_himem                                            ; 3a95: a9 84       ..  :9a95[1]
    jsr osbyte                                                        ; 3a97: 20 f4 ff     .. :9a97[1]   ; Read top of user memory (HIMEM)
    tya                                                               ; 3a9a: 98          .   :9a9a[1]
    sec                                                               ; 3a9b: 38          8   :9a9b[1]
    sbc l10cf                                                         ; 3a9c: ed cf 10    ... :9a9c[1]
    sta l10d0                                                         ; 3a9f: 8d d0 10    ... :9a9f[1]
    rts                                                               ; 3aa2: 60          `   :9aa2[1]

; &3aa3 referenced 2 times by &95d4, &95fd
.sub_c9aa3
    ldx #&0a                                                          ; 3aa3: a2 0a       ..  :9aa3[1]
    jsr c9adf                                                         ; 3aa5: 20 df 9a     .. :9aa5[1]
    jsr sub_c9ab8                                                     ; 3aa8: 20 b8 9a     .. :9aa8[1]
    ldy #&d3                                                          ; 3aab: a0 d3       ..  :9aab[1]
    lda #&ff                                                          ; 3aad: a9 ff       ..  :9aad[1]
    sta (l00b0),y                                                     ; 3aaf: 91 b0       ..  :9aaf[1]
    sta l10d3                                                         ; 3ab1: 8d d3 10    ... :9ab1[1]
    iny                                                               ; 3ab4: c8          .   :9ab4[1]
    sta (l00b0),y                                                     ; 3ab5: 91 b0       ..  :9ab5[1]
    rts                                                               ; 3ab7: 60          `   :9ab7[1]

; &3ab8 referenced 5 times by &895a, &95c1, &971b, &972c, &9aa8
.sub_c9ab8
    pha                                                               ; 3ab8: 48          H   :9ab8[1]
    ldx romsel_copy                                                   ; 3ab9: a6 f4       ..  :9ab9[1]
    lda #0                                                            ; 3abb: a9 00       ..  :9abb[1]
    sta l00b0                                                         ; 3abd: 85 b0       ..  :9abd[1]
    lda l0df0,x                                                       ; 3abf: bd f0 0d    ... :9abf[1]
    and #&3f ; '?'                                                    ; 3ac2: 29 3f       )?  :9ac2[1]
    sta l00b1                                                         ; 3ac4: 85 b1       ..  :9ac4[1]
    pla                                                               ; 3ac6: 68          h   :9ac6[1]
    rts                                                               ; 3ac7: 60          `   :9ac7[1]

; &3ac8 referenced 2 times by &a3d4, &a3fb
.sub_c9ac8
    jsr sub_c83e3                                                     ; 3ac8: 20 e3 83     .. :9ac8[1]
    lda #&0f                                                          ; 3acb: a9 0f       ..  :9acb[1]
    ldx #1                                                            ; 3acd: a2 01       ..  :9acd[1]
    ldy #0                                                            ; 3acf: a0 00       ..  :9acf[1]
    beq c9ae9                                                         ; 3ad1: f0 16       ..  :9ad1[1]
; &3ad3 referenced 1 time by &80ac
.sub_c9ad3
    tax                                                               ; 3ad3: aa          .   :9ad3[1]
; &3ad4 referenced 1 time by &80b5
.c9ad4
    lda #3                                                            ; 3ad4: a9 03       ..  :9ad4[1]
    bne c9ae9                                                         ; 3ad6: d0 11       ..  :9ad6[1]
; &3ad8 referenced 2 times by &9436, &abbc
.sub_c9ad8
    jsr sub_c83e3                                                     ; 3ad8: 20 e3 83     .. :9ad8[1]
    lda #&7e ; '~'                                                    ; 3adb: a9 7e       .~  :9adb[1]
    bne c9ae9                                                         ; 3add: d0 0a       ..  :9add[1]
; &3adf referenced 4 times by &9593, &9599, &95be, &9aa5
.c9adf
    lda #&8f                                                          ; 3adf: a9 8f       ..  :9adf[1]
    bne c9ae9                                                         ; 3ae1: d0 06       ..  :9ae1[1]
    lda #osbyte_read_write_startup_options                            ; 3ae3: a9 ff       ..  :9ae3[1]
; &3ae5 referenced 8 times by &80a5, &9588, &96a0, &9e32, &9e43, &aae2, &ac7c, &aeb7
.osbyte_read
    ldx #0                                                            ; 3ae5: a2 00       ..  :9ae5[1]
    ldy #&ff                                                          ; 3ae7: a0 ff       ..  :9ae7[1]
; &3ae9 referenced 4 times by &9ad1, &9ad6, &9add, &9ae1
.c9ae9
    jmp osbyte                                                        ; 3ae9: 4c f4 ff    L.. :9ae9[1]   ; Read start-up option byte

; &3aec referenced 1 time by &957d
.l9aec
    equb &1b, &ff, &1e, &ff, &21, &ff, &24, &ff, &27, &ff, &2a, &ff   ; 3aec: 1b ff 1e... ... :9aec[1]
    equb &2d, &ff                                                     ; 3af8: 2d ff       -.  :9af8[1]
    equw sub_c9785                                                    ; 3afa: 85 97       ..  :9afa[1]
    equb 0                                                            ; 3afc: 00          .   :9afc[1]
    equw sub_c9d9b                                                    ; 3afd: 9b 9d       ..  :9afd[1]
    equb 0                                                            ; 3aff: 00          .   :9aff[1]
    equw sub_c9e94                                                    ; 3b00: 94 9e       ..  :9b00[1]
    equb 0                                                            ; 3b02: 00          .   :9b02[1]
    equw sub_c9f82                                                    ; 3b03: 82 9f       ..  :9b03[1]
    equb 0                                                            ; 3b05: 00          .   :9b05[1]
    equw sub_c97c9                                                    ; 3b06: c9 97       ..  :9b06[1]
    equb 0                                                            ; 3b08: 00          .   :9b08[1]
    equw sub_c9c0c                                                    ; 3b09: 0c 9c       ..  :9b09[1]
    equb 0                                                            ; 3b0b: 00          .   :9b0b[1]
    equw sub_c97b6                                                    ; 3b0c: b6 97       ..  :9b0c[1]
    equb 0                                                            ; 3b0e: 00          .   :9b0e[1]
; &3b0f referenced 1 time by &97c1
.l9b0f
    equs "1\o"                                                        ; 3b0f: 31 5c 6f    1\o :9b0f[1]
    equb &fd, &6f, &82, &50, &4b, &9a                                 ; 3b12: fd 6f 82... .o. :9b12[1]
; &3b18 referenced 1 time by &97bd
.l9b18
    equb &8a, &9e, &88, &86, &88, &84, &9b, &9b, &99                  ; 3b18: 8a 9e 88... ... :9b18[1]
; &3b21 referenced 1 time by &97af
.l9b21
    equb &1a, &58, &c8, &db, &d3, &e3, &b4, &bd                       ; 3b21: 1a 58 c8... .X. :9b21[1]
; &3b29 referenced 1 time by &97ab
.l9b29
    equb &88, &88, &99, &99, &99, &99, &99, &99                       ; 3b29: 88 88 99... ... :9b29[1]
; &3b31 referenced 1 time by &97e8
.l9b31
    equb &1b, &80, &80, &69, &69, &d7,   6, &19, &8b                  ; 3b31: 1b 80 80... ... :9b31[1]
; &3b3a referenced 1 time by &97ee
.l9b3a
    equb &86, &99, &99, &99, &99, &98, &99, &99, &98                  ; 3b3a: 86 99 99... ... :9b3a[1]
; &3b43 referenced 1 time by &97f4
.l9b43
    equb   4,   2,   3,   6,   7,   4,   4,   4,   4, &a2, &11, &a0   ; 3b43: 04 02 03... ... :9b43[1]
    equb &15                                                          ; 3b4f: 15          .   :9b4f[1]

; &3b50 referenced 1 time by &9b66
.loop_c9b50
    rts                                                               ; 3b50: 60          `   :9b50[1]

; &3b51 referenced 1 time by &9b5e
.sub_c9b51
    jsr sub_c83e3                                                     ; 3b51: 20 e3 83     .. :9b51[1]
    lda #osbyte_close_spool_exec                                      ; 3b54: a9 77       .w  :9b54[1]
    jmp osbyte                                                        ; 3b56: 4c f4 ff    L.. :9b56[1]   ; Close any *SPOOL / *EXEC files

.sub_c9b59
    lda #&20 ; ' '                                                    ; 3b59: a9 20       .   :9b59[1]
    sta l1086                                                         ; 3b5b: 8d 86 10    ... :9b5b[1]
; &3b5e referenced 1 time by &9b74
.loop_c9b5e
    jsr sub_c9b51                                                     ; 3b5e: 20 51 9b     Q. :9b5e[1]
; &3b61 referenced 1 time by &9d81
.sub_c9b61
    lda #0                                                            ; 3b61: a9 00       ..  :9b61[1]
; &3b63 referenced 1 time by &9b6c
.loop_c9b63
    clc                                                               ; 3b63: 18          .   :9b63[1]
    adc #&20 ; ' '                                                    ; 3b64: 69 20       i   :9b64[1]
    beq loop_c9b50                                                    ; 3b66: f0 e8       ..  :9b66[1]
    tay                                                               ; 3b68: a8          .   :9b68[1]
    jsr sub_c9b79                                                     ; 3b69: 20 79 9b     y. :9b69[1]
    bne loop_c9b63                                                    ; 3b6c: d0 f5       ..  :9b6c[1]
; &3b6e referenced 2 times by &9c13, &9d86
.c9b6e
    lda #&20 ; ' '                                                    ; 3b6e: a9 20       .   :9b6e[1]
    sta l1086                                                         ; 3b70: 8d 86 10    ... :9b70[1]
    tya                                                               ; 3b73: 98          .   :9b73[1]
    beq loop_c9b5e                                                    ; 3b74: f0 e8       ..  :9b74[1]
    jsr sub_c9e75                                                     ; 3b76: 20 75 9e     u. :9b76[1]
; &3b79 referenced 2 times by &9b69, &a264
.sub_c9b79
    pha                                                               ; 3b79: 48          H   :9b79[1]
    jsr sub_c9df4                                                     ; 3b7a: 20 f4 9d     .. :9b7a[1]
    bcs c9bc5                                                         ; 3b7d: b0 46       .F  :9b7d[1]
    lda l111b,y                                                       ; 3b7f: b9 1b 11    ... :9b7f[1]
    eor #&ff                                                          ; 3b82: 49 ff       I.  :9b82[1]
    and l10c0                                                         ; 3b84: 2d c0 10    -.. :9b84[1]
    sta l10c0                                                         ; 3b87: 8d c0 10    ... :9b87[1]
    lda l1117,y                                                       ; 3b8a: b9 17 11    ... :9b8a[1]
    and #&60 ; '`'                                                    ; 3b8d: 29 60       )`  :9b8d[1]
    beq c9bc5                                                         ; 3b8f: f0 34       .4  :9b8f[1]
    jsr sub_c9bca                                                     ; 3b91: 20 ca 9b     .. :9b91[1]
    lda l1117,y                                                       ; 3b94: b9 17 11    ... :9b94[1]
    and l1086                                                         ; 3b97: 2d 86 10    -.. :9b97[1]
    beq c9bc2                                                         ; 3b9a: f0 26       .&  :9b9a[1]
    ldx l10c3                                                         ; 3b9c: ae c3 10    ... :9b9c[1]
    lda l1114,y                                                       ; 3b9f: b9 14 11    ... :9b9f[1]
    sta l0f0c,x                                                       ; 3ba2: 9d 0c 0f    ... :9ba2[1]
    lda l1115,y                                                       ; 3ba5: b9 15 11    ... :9ba5[1]
    sta l0f0d,x                                                       ; 3ba8: 9d 0d 0f    ... :9ba8[1]
    lda l1116,y                                                       ; 3bab: b9 16 11    ... :9bab[1]
    jsr sub_c81c5                                                     ; 3bae: 20 c5 81     .. :9bae[1]
    eor l0f0e,x                                                       ; 3bb1: 5d 0e 0f    ].. :9bb1[1]
    and #&30 ; '0'                                                    ; 3bb4: 29 30       )0  :9bb4[1]
    eor l0f0e,x                                                       ; 3bb6: 5d 0e 0f    ].. :9bb6[1]
    sta l0f0e,x                                                       ; 3bb9: 9d 0e 0f    ... :9bb9[1]
    jsr c93e6                                                         ; 3bbc: 20 e6 93     .. :9bbc[1]
    ldy l10c2                                                         ; 3bbf: ac c2 10    ... :9bbf[1]
; &3bc2 referenced 1 time by &9b9a
.c9bc2
    jsr sub_c9f1e                                                     ; 3bc2: 20 1e 9f     .. :9bc2[1]
; &3bc5 referenced 2 times by &9b7d, &9b8f
.c9bc5
    ldx l10c5                                                         ; 3bc5: ae c5 10    ... :9bc5[1]
    pla                                                               ; 3bc8: 68          h   :9bc8[1]
    rts                                                               ; 3bc9: 60          `   :9bc9[1]

; &3bca referenced 1 time by &9b91
.sub_c9bca
    jsr sub_c9be5                                                     ; 3bca: 20 e5 9b     .. :9bca[1]
; &3bcd referenced 1 time by &9f9f
.sub_c9bcd
    ldx #6                                                            ; 3bcd: a2 06       ..  :9bcd[1]
; &3bcf referenced 1 time by &9bd7
.loop_c9bcf
    lda l110c,y                                                       ; 3bcf: b9 0c 11    ... :9bcf[1]
    sta l00c5,x                                                       ; 3bd2: 95 c5       ..  :9bd2[1]
    dey                                                               ; 3bd4: 88          .   :9bd4[1]
    dey                                                               ; 3bd5: 88          .   :9bd5[1]
    dex                                                               ; 3bd6: ca          .   :9bd6[1]
    bpl loop_c9bcf                                                    ; 3bd7: 10 f6       ..  :9bd7[1]
    jsr sub_c826d                                                     ; 3bd9: 20 6d 82     m. :9bd9[1]
    bcc generate_error_precheck_disc_changed                          ; 3bdc: 90 22       ."  :9bdc[1]
    sty l10c3                                                         ; 3bde: 8c c3 10    ... :9bde[1]
    ldy l10c2                                                         ; 3be1: ac c2 10    ... :9be1[1]
; &3be4 referenced 1 time by &9bfe
.loop_c9be4
    rts                                                               ; 3be4: 60          `   :9be4[1]

; &3be5 referenced 3 times by &9bca, &9eb8, &9f93
.sub_c9be5
    lda l110e,y                                                       ; 3be5: b9 0e 11    ... :9be5[1]
    and #&7f                                                          ; 3be8: 29 7f       ).  :9be8[1]
    sta l00cc                                                         ; 3bea: 85 cc       ..  :9bea[1]
    lda l1117,y                                                       ; 3bec: b9 17 11    ... :9bec[1]
    jmp c8816                                                         ; 3bef: 4c 16 88    L.. :9bef[1]

; &3bf2 referenced 2 times by &8768, &87b8
.sub_c9bf2
    jsr sub_c83e3                                                     ; 3bf2: 20 e3 83     .. :9bf2[1]
    lda l0f04                                                         ; 3bf5: ad 04 0f    ... :9bf5[1]
    jsr sub_c8380                                                     ; 3bf8: 20 80 83     .. :9bf8[1]
    cmp l0f04                                                         ; 3bfb: cd 04 0f    ... :9bfb[1]
    beq loop_c9be4                                                    ; 3bfe: f0 e4       ..  :9bfe[1]
; &3c00 referenced 1 time by &9bdc
.generate_error_precheck_disc_changed
    jsr generate_error_precheck_disc                                  ; 3c00: 20 23 80     #. :9c00[1]
    equb &c8                                                          ; 3c03: c8          .   :9c03[1]
    equs "changed"                                                    ; 3c04: 63 68 61... cha :9c04[1]
    equb 0                                                            ; 3c0b: 00          .   :9c0b[1]

.sub_c9c0c
    and #&c0                                                          ; 3c0c: 29 c0       ).  :9c0c[1]
    bne c9c16                                                         ; 3c0e: d0 06       ..  :9c0e[1]
    jsr sub_c83e3                                                     ; 3c10: 20 e3 83     .. :9c10[1]
    jmp c9b6e                                                         ; 3c13: 4c 6e 9b    Ln. :9c13[1]

; &3c16 referenced 1 time by &9c0e
.c9c16
    jsr sub_c840c                                                     ; 3c16: 20 0c 84     .. :9c16[1]
    stx l00ba                                                         ; 3c19: 86 ba       ..  :9c19[1]
    sty l00bb                                                         ; 3c1b: 84 bb       ..  :9c1b[1]
    sta l00b4                                                         ; 3c1d: 85 b4       ..  :9c1d[1]
    bit l00b4                                                         ; 3c1f: 24 b4       $.  :9c1f[1]
    php                                                               ; 3c21: 08          .   :9c21[1]
    jsr sub_c80f3                                                     ; 3c22: 20 f3 80     .. :9c22[1]
    jsr c99a3                                                         ; 3c25: 20 a3 99     .. :9c25[1]
    jsr sub_c8284                                                     ; 3c28: 20 84 82     .. :9c28[1]
    bcs c9c51                                                         ; 3c2b: b0 24       .$  :9c2b[1]
    plp                                                               ; 3c2d: 28          (   :9c2d[1]
    bvc c9c33                                                         ; 3c2e: 50 03       P.  :9c2e[1]
    lda #0                                                            ; 3c30: a9 00       ..  :9c30[1]
    rts                                                               ; 3c32: 60          `   :9c32[1]

; &3c33 referenced 1 time by &9c2e
.c9c33
    php                                                               ; 3c33: 08          .   :9c33[1]
    lda #0                                                            ; 3c34: a9 00       ..  :9c34[1]
    ldx #7                                                            ; 3c36: a2 07       ..  :9c36[1]
; &3c38 referenced 1 time by &9c3e
.loop_c9c38
    sta l00bc,x                                                       ; 3c38: 95 bc       ..  :9c38[1]
    sta l1074,x                                                       ; 3c3a: 9d 74 10    .t. :9c3a[1]
    dex                                                               ; 3c3d: ca          .   :9c3d[1]
    bpl loop_c9c38                                                    ; 3c3e: 10 f8       ..  :9c3e[1]
    dec l00be                                                         ; 3c40: c6 be       ..  :9c40[1]
    dec l00bf                                                         ; 3c42: c6 bf       ..  :9c42[1]
    dec l1076                                                         ; 3c44: ce 76 10    .v. :9c44[1]
    dec l1077                                                         ; 3c47: ce 77 10    .w. :9c47[1]
    lda #&40 ; '@'                                                    ; 3c4a: a9 40       .@  :9c4a[1]
    sta l00c3                                                         ; 3c4c: 85 c3       ..  :9c4c[1]
    jsr sub_c8a77                                                     ; 3c4e: 20 77 8a     w. :9c4e[1]
; &3c51 referenced 1 time by &9c2b
.c9c51
    plp                                                               ; 3c51: 28          (   :9c51[1]
    php                                                               ; 3c52: 08          .   :9c52[1]
    bvs c9c58                                                         ; 3c53: 70 03       p.  :9c53[1]
    jsr sub_c9a50                                                     ; 3c55: 20 50 9a     P. :9c55[1]
; &3c58 referenced 1 time by &9c53
.c9c58
    jsr sub_c9d1e                                                     ; 3c58: 20 1e 9d     .. :9c58[1]
    bcc c9c6b                                                         ; 3c5b: 90 0e       ..  :9c5b[1]
; &3c5d referenced 1 time by &9c69
.loop_c9c5d
    lda l110c,y                                                       ; 3c5d: b9 0c 11    ... :9c5d[1]
    bpl generate_error_precheck_open                                  ; 3c60: 10 20       .   :9c60[1]
    plp                                                               ; 3c62: 28          (   :9c62[1]
    php                                                               ; 3c63: 08          .   :9c63[1]
    bmi generate_error_precheck_open                                  ; 3c64: 30 1c       0.  :9c64[1]
    jsr sub_c9d19                                                     ; 3c66: 20 19 9d     .. :9c66[1]
    bcs loop_c9c5d                                                    ; 3c69: b0 f2       ..  :9c69[1]
; &3c6b referenced 1 time by &9c5b
.c9c6b
    ldy l10c2                                                         ; 3c6b: ac c2 10    ... :9c6b[1]
    bne c9c8b                                                         ; 3c6e: d0 1b       ..  :9c6e[1]
    jsr generate_error_precheck                                       ; 3c70: 20 38 80     8. :9c70[1]
    equb &c0                                                          ; 3c73: c0          .   :9c73[1]
    equs "Too many open"                                              ; 3c74: 54 6f 6f... Too :9c74[1]
    equb 0                                                            ; 3c81: 00          .   :9c81[1]

; &3c82 referenced 3 times by &9a6b, &9c60, &9c64
.generate_error_precheck_open
    jsr generate_error_precheck                                       ; 3c82: 20 38 80     8. :9c82[1]
    equb &c2                                                          ; 3c85: c2          .   :9c85[1]
    equs "Open"                                                       ; 3c86: 4f 70 65... Ope :9c86[1]
    equb 0                                                            ; 3c8a: 00          .   :9c8a[1]

; &3c8b referenced 1 time by &9c6e
.c9c8b
    lda #8                                                            ; 3c8b: a9 08       ..  :9c8b[1]
    sta l10c4                                                         ; 3c8d: 8d c4 10    ... :9c8d[1]
; &3c90 referenced 1 time by &9ca2
.loop_c9c90
    lda l0e08,x                                                       ; 3c90: bd 08 0e    ... :9c90[1]
    sta l1100,y                                                       ; 3c93: 99 00 11    ... :9c93[1]
    iny                                                               ; 3c96: c8          .   :9c96[1]
    lda l0f08,x                                                       ; 3c97: bd 08 0f    ... :9c97[1]
    sta l1100,y                                                       ; 3c9a: 99 00 11    ... :9c9a[1]
    iny                                                               ; 3c9d: c8          .   :9c9d[1]
    inx                                                               ; 3c9e: e8          .   :9c9e[1]
    dec l10c4                                                         ; 3c9f: ce c4 10    ... :9c9f[1]
    bne loop_c9c90                                                    ; 3ca2: d0 ec       ..  :9ca2[1]
    ldx #&10                                                          ; 3ca4: a2 10       ..  :9ca4[1]
    lda #0                                                            ; 3ca6: a9 00       ..  :9ca6[1]
; &3ca8 referenced 1 time by &9cad
.loop_c9ca8
    sta l1100,y                                                       ; 3ca8: 99 00 11    ... :9ca8[1]
    iny                                                               ; 3cab: c8          .   :9cab[1]
    dex                                                               ; 3cac: ca          .   :9cac[1]
    bne loop_c9ca8                                                    ; 3cad: d0 f9       ..  :9cad[1]
    lda l10c2                                                         ; 3caf: ad c2 10    ... :9caf[1]
    tay                                                               ; 3cb2: a8          .   :9cb2[1]
    jsr sub_c81be                                                     ; 3cb3: 20 be 81     .. :9cb3[1]
    adc #&11                                                          ; 3cb6: 69 11       i.  :9cb6[1]
    sta l1113,y                                                       ; 3cb8: 99 13 11    ... :9cb8[1]
    lda l10c1                                                         ; 3cbb: ad c1 10    ... :9cbb[1]
    sta l111b,y                                                       ; 3cbe: 99 1b 11    ... :9cbe[1]
    ora l10c0                                                         ; 3cc1: 0d c0 10    ... :9cc1[1]
    sta l10c0                                                         ; 3cc4: 8d c0 10    ... :9cc4[1]
    lda l1109,y                                                       ; 3cc7: b9 09 11    ... :9cc7[1]
    adc #&ff                                                          ; 3cca: 69 ff       i.  :9cca[1]
    lda l110b,y                                                       ; 3ccc: b9 0b 11    ... :9ccc[1]
    adc #0                                                            ; 3ccf: 69 00       i.  :9ccf[1]
    sta l1119,y                                                       ; 3cd1: 99 19 11    ... :9cd1[1]
    lda l110d,y                                                       ; 3cd4: b9 0d 11    ... :9cd4[1]
    ora #&0f                                                          ; 3cd7: 09 0f       ..  :9cd7[1]
    adc #0                                                            ; 3cd9: 69 00       i.  :9cd9[1]
    jsr sub_c81b0                                                     ; 3cdb: 20 b0 81     .. :9cdb[1]
    sta l111a,y                                                       ; 3cde: 99 1a 11    ... :9cde[1]
    plp                                                               ; 3ce1: 28          (   :9ce1[1]
    bvc c9d12                                                         ; 3ce2: 50 2e       P.  :9ce2[1]
    bmi c9cee                                                         ; 3ce4: 30 08       0.  :9ce4[1]
    lda #&80                                                          ; 3ce6: a9 80       ..  :9ce6[1]
    ora l110c,y                                                       ; 3ce8: 19 0c 11    ... :9ce8[1]
    sta l110c,y                                                       ; 3ceb: 99 0c 11    ... :9ceb[1]
; &3cee referenced 1 time by &9ce4
.c9cee
    lda l1109,y                                                       ; 3cee: b9 09 11    ... :9cee[1]
    sta l1114,y                                                       ; 3cf1: 99 14 11    ... :9cf1[1]
    lda l110b,y                                                       ; 3cf4: b9 0b 11    ... :9cf4[1]
    sta l1115,y                                                       ; 3cf7: 99 15 11    ... :9cf7[1]
    lda l110d,y                                                       ; 3cfa: b9 0d 11    ... :9cfa[1]
    jsr sub_c81b0                                                     ; 3cfd: 20 b0 81     .. :9cfd[1]
    sta l1116,y                                                       ; 3d00: 99 16 11    ... :9d00[1]
; &3d03 referenced 1 time by &9d17
.loop_c9d03
    lda l00cd                                                         ; 3d03: a5 cd       ..  :9d03[1]
    ora l1117,y                                                       ; 3d05: 19 17 11    ... :9d05[1]
    sta l1117,y                                                       ; 3d08: 99 17 11    ... :9d08[1]
    tya                                                               ; 3d0b: 98          .   :9d0b[1]
    jsr sub_c81be                                                     ; 3d0c: 20 be 81     .. :9d0c[1]
    ora #&10                                                          ; 3d0f: 09 10       ..  :9d0f[1]
    rts                                                               ; 3d11: 60          `   :9d11[1]

; &3d12 referenced 1 time by &9ce2
.c9d12
    lda #&20 ; ' '                                                    ; 3d12: a9 20       .   :9d12[1]
    sta l1117,y                                                       ; 3d14: 99 17 11    ... :9d14[1]
    bne loop_c9d03                                                    ; 3d17: d0 ea       ..  :9d17[1]
; &3d19 referenced 1 time by &9c66
.sub_c9d19
    txa                                                               ; 3d19: 8a          .   :9d19[1]
    pha                                                               ; 3d1a: 48          H   :9d1a[1]
    jmp c9d5d                                                         ; 3d1b: 4c 5d 9d    L]. :9d1b[1]

; &3d1e referenced 2 times by &9a66, &9c58
.sub_c9d1e
    lda #0                                                            ; 3d1e: a9 00       ..  :9d1e[1]
    sta l10c2                                                         ; 3d20: 8d c2 10    ... :9d20[1]
    lda #8                                                            ; 3d23: a9 08       ..  :9d23[1]
    sta l00b5                                                         ; 3d25: 85 b5       ..  :9d25[1]
    tya                                                               ; 3d27: 98          .   :9d27[1]
    tax                                                               ; 3d28: aa          .   :9d28[1]
    ldy #&a0                                                          ; 3d29: a0 a0       ..  :9d29[1]
; &3d2b referenced 1 time by &9d6f
.c9d2b
    sty l00b3                                                         ; 3d2b: 84 b3       ..  :9d2b[1]
    txa                                                               ; 3d2d: 8a          .   :9d2d[1]
    pha                                                               ; 3d2e: 48          H   :9d2e[1]
    lda #8                                                            ; 3d2f: a9 08       ..  :9d2f[1]
    sta l00b2                                                         ; 3d31: 85 b2       ..  :9d31[1]
    lda l00b5                                                         ; 3d33: a5 b5       ..  :9d33[1]
    bit l10c0                                                         ; 3d35: 2c c0 10    ,.. :9d35[1]
    beq c9d57                                                         ; 3d38: f0 1d       ..  :9d38[1]
    lda l1117,y                                                       ; 3d3a: b9 17 11    ... :9d3a[1]
    eor l00cd                                                         ; 3d3d: 45 cd       E.  :9d3d[1]
    and #3                                                            ; 3d3f: 29 03       ).  :9d3f[1]
    bne c9d5d                                                         ; 3d41: d0 1a       ..  :9d41[1]
; &3d43 referenced 1 time by &9d52
.loop_c9d43
    lda l0e08,x                                                       ; 3d43: bd 08 0e    ... :9d43[1]
    eor l1100,y                                                       ; 3d46: 59 00 11    Y.. :9d46[1]
    and #&7f                                                          ; 3d49: 29 7f       ).  :9d49[1]
    bne c9d5d                                                         ; 3d4b: d0 10       ..  :9d4b[1]
    inx                                                               ; 3d4d: e8          .   :9d4d[1]
    iny                                                               ; 3d4e: c8          .   :9d4e[1]
    iny                                                               ; 3d4f: c8          .   :9d4f[1]
    dec l00b2                                                         ; 3d50: c6 b2       ..  :9d50[1]
    bne loop_c9d43                                                    ; 3d52: d0 ef       ..  :9d52[1]
    sec                                                               ; 3d54: 38          8   :9d54[1]
    bcs c9d67                                                         ; 3d55: b0 10       ..  :9d55[1]
; &3d57 referenced 1 time by &9d38
.c9d57
    sty l10c2                                                         ; 3d57: 8c c2 10    ... :9d57[1]
    sta l10c1                                                         ; 3d5a: 8d c1 10    ... :9d5a[1]
; &3d5d referenced 3 times by &9d1b, &9d41, &9d4b
.c9d5d
    sec                                                               ; 3d5d: 38          8   :9d5d[1]
    lda l00b3                                                         ; 3d5e: a5 b3       ..  :9d5e[1]
    sbc #&20 ; ' '                                                    ; 3d60: e9 20       .   :9d60[1]
    sta l00b3                                                         ; 3d62: 85 b3       ..  :9d62[1]
    asl l00b5                                                         ; 3d64: 06 b5       ..  :9d64[1]
    clc                                                               ; 3d66: 18          .   :9d66[1]
; &3d67 referenced 1 time by &9d55
.c9d67
    pla                                                               ; 3d67: 68          h   :9d67[1]
    tax                                                               ; 3d68: aa          .   :9d68[1]
    ldy l00b3                                                         ; 3d69: a4 b3       ..  :9d69[1]
    lda l00b5                                                         ; 3d6b: a5 b5       ..  :9d6b[1]
    bcs c9d71                                                         ; 3d6d: b0 02       ..  :9d6d[1]
    bne c9d2b                                                         ; 3d6f: d0 ba       ..  :9d6f[1]
; &3d71 referenced 1 time by &9d6d
.c9d71
    rts                                                               ; 3d71: 60          `   :9d71[1]

; &3d72 referenced 1 time by &9da0
.c9d72
    jsr zero_stacked_XXX                                              ; 3d72: 20 8e 9d     .. :9d72[1]
; &3d75 referenced 1 time by &9726
.sub_c9d75
    lda l10c0                                                         ; 3d75: ad c0 10    ... :9d75[1]
    pha                                                               ; 3d78: 48          H   :9d78[1]
    lda #0                                                            ; 3d79: a9 00       ..  :9d79[1]
    sta l1086                                                         ; 3d7b: 8d 86 10    ... :9d7b[1]
    tya                                                               ; 3d7e: 98          .   :9d7e[1]
    bne c9d86                                                         ; 3d7f: d0 05       ..  :9d7f[1]
    jsr sub_c9b61                                                     ; 3d81: 20 61 9b     a. :9d81[1]
    beq c9d89                                                         ; 3d84: f0 03       ..  :9d84[1]
; &3d86 referenced 1 time by &9d7f
.c9d86
    jsr c9b6e                                                         ; 3d86: 20 6e 9b     n. :9d86[1]
; &3d89 referenced 1 time by &9d84
.c9d89
    pla                                                               ; 3d89: 68          h   :9d89[1]
    sta l10c0                                                         ; 3d8a: 8d c0 10    ... :9d8a[1]
    rts                                                               ; 3d8d: 60          `   :9d8d[1]

; &3d8e referenced 6 times by &956f, &9714, &97d0, &9d72, &9daa, &9db8
.zero_stacked_XXX
    pha                                                               ; 3d8e: 48          H   :9d8e[1]
    txa                                                               ; 3d8f: 8a          .   :9d8f[1]
    pha                                                               ; 3d90: 48          H   :9d90[1]
    lda #0                                                            ; 3d91: a9 00       ..  :9d91[1]
    tsx                                                               ; 3d93: ba          .   :9d93[1]
    sta l0109,x                                                       ; 3d94: 9d 09 01    ... :9d94[1]
    pla                                                               ; 3d97: 68          h   :9d97[1]
    tax                                                               ; 3d98: aa          .   :9d98[1]
    pla                                                               ; 3d99: 68          h   :9d99[1]
    rts                                                               ; 3d9a: 60          `   :9d9a[1]

.sub_c9d9b
    jsr sub_c83e3                                                     ; 3d9b: 20 e3 83     .. :9d9b[1]
    cmp #&ff                                                          ; 3d9e: c9 ff       ..  :9d9e[1]
    beq c9d72                                                         ; 3da0: f0 d0       ..  :9da0[1]
    cpy #0                                                            ; 3da2: c0 00       ..  :9da2[1]
    beq c9db4                                                         ; 3da4: f0 0e       ..  :9da4[1]
    cmp #3                                                            ; 3da6: c9 03       ..  :9da6[1]
    bcs c9dcd                                                         ; 3da8: b0 23       .#  :9da8[1]
    jsr zero_stacked_XXX                                              ; 3daa: 20 8e 9d     .. :9daa[1]
    cmp #1                                                            ; 3dad: c9 01       ..  :9dad[1]
    bne c9dd5                                                         ; 3daf: d0 24       .$  :9daf[1]
    jmp ca06c                                                         ; 3db1: 4c 6c a0    Ll. :9db1[1]

; &3db4 referenced 1 time by &9da4
.c9db4
    cmp #2                                                            ; 3db4: c9 02       ..  :9db4[1]
    bcs c9dcd                                                         ; 3db6: b0 15       ..  :9db6[1]
    jsr zero_stacked_XXX                                              ; 3db8: 20 8e 9d     .. :9db8[1]
    beq c9dce                                                         ; 3dbb: f0 11       ..  :9dbb[1]
    lda #&ff                                                          ; 3dbd: a9 ff       ..  :9dbd[1]
    sta l0002,x                                                       ; 3dbf: 95 02       ..  :9dbf[1]
    sta l0003,x                                                       ; 3dc1: 95 03       ..  :9dc1[1]
    lda l10d9                                                         ; 3dc3: ad d9 10    ... :9dc3[1]
    sta l0000,x                                                       ; 3dc6: 95 00       ..  :9dc6[1]
    lda l10da                                                         ; 3dc8: ad da 10    ... :9dc8[1]
    sta l0001,x                                                       ; 3dcb: 95 01       ..  :9dcb[1]
; &3dcd referenced 2 times by &9da8, &9db6
.c9dcd
    rts                                                               ; 3dcd: 60          `   :9dcd[1]

; &3dce referenced 1 time by &9dbb
.c9dce
    lda #4                                                            ; 3dce: a9 04       ..  :9dce[1]
    tsx                                                               ; 3dd0: ba          .   :9dd0[1]
    sta l0105,x                                                       ; 3dd1: 9d 05 01    ... :9dd1[1]
    rts                                                               ; 3dd4: 60          `   :9dd4[1]

; &3dd5 referenced 2 times by &984c, &9daf
.c9dd5
    jsr sub_c9e75                                                     ; 3dd5: 20 75 9e     u. :9dd5[1]
    sty l10c2                                                         ; 3dd8: 8c c2 10    ... :9dd8[1]
    asl a                                                             ; 3ddb: 0a          .   :9ddb[1]
    adc l10c2                                                         ; 3ddc: 6d c2 10    m.. :9ddc[1]
    tay                                                               ; 3ddf: a8          .   :9ddf[1]
    lda l1110,y                                                       ; 3de0: b9 10 11    ... :9de0[1]
    sta l0000,x                                                       ; 3de3: 95 00       ..  :9de3[1]
    lda l1111,y                                                       ; 3de5: b9 11 11    ... :9de5[1]
    sta l0001,x                                                       ; 3de8: 95 01       ..  :9de8[1]
    lda l1112,y                                                       ; 3dea: b9 12 11    ... :9dea[1]
    sta l0002,x                                                       ; 3ded: 95 02       ..  :9ded[1]
    lda #0                                                            ; 3def: a9 00       ..  :9def[1]
    sta l0003,x                                                       ; 3df1: 95 03       ..  :9df1[1]
    rts                                                               ; 3df3: 60          `   :9df3[1]

; &3df4 referenced 2 times by &9b7a, &9e78
.sub_c9df4
    pha                                                               ; 3df4: 48          H   :9df4[1]
    stx l10c5                                                         ; 3df5: 8e c5 10    ... :9df5[1]
    tya                                                               ; 3df8: 98          .   :9df8[1]
    and #&e0                                                          ; 3df9: 29 e0       ).  :9df9[1]
    sta l10c2                                                         ; 3dfb: 8d c2 10    ... :9dfb[1]
    beq c9e13                                                         ; 3dfe: f0 13       ..  :9dfe[1]
    jsr sub_c81be                                                     ; 3e00: 20 be 81     .. :9e00[1]
    tay                                                               ; 3e03: a8          .   :9e03[1]
    lda #0                                                            ; 3e04: a9 00       ..  :9e04[1]
    sec                                                               ; 3e06: 38          8   :9e06[1]
; &3e07 referenced 1 time by &9e09
.loop_c9e07
    ror a                                                             ; 3e07: 6a          j   :9e07[1]
    dey                                                               ; 3e08: 88          .   :9e08[1]
    bne loop_c9e07                                                    ; 3e09: d0 fc       ..  :9e09[1]
    ldy l10c2                                                         ; 3e0b: ac c2 10    ... :9e0b[1]
    bit l10c0                                                         ; 3e0e: 2c c0 10    ,.. :9e0e[1]
    bne c9e16                                                         ; 3e11: d0 03       ..  :9e11[1]
; &3e13 referenced 1 time by &9dfe
.c9e13
    pla                                                               ; 3e13: 68          h   :9e13[1]
    sec                                                               ; 3e14: 38          8   :9e14[1]
    rts                                                               ; 3e15: 60          `   :9e15[1]

; &3e16 referenced 1 time by &9e11
.c9e16
    pla                                                               ; 3e16: 68          h   :9e16[1]
    clc                                                               ; 3e17: 18          .   :9e17[1]
    rts                                                               ; 3e18: 60          `   :9e18[1]

    equb &48, &8a, &4c, &20, &9e                                      ; 3e19: 48 8a 4c... H.L :9e19[1]

; &3e1e referenced 2 times by &9e56, &9e75
.sub_c9e1e
    pha                                                               ; 3e1e: 48          H   :9e1e[1]
    tya                                                               ; 3e1f: 98          .   :9e1f[1]
    cmp #&10                                                          ; 3e20: c9 10       ..  :9e20[1]
    bcc c9e28                                                         ; 3e22: 90 04       ..  :9e22[1]
    cmp #&18                                                          ; 3e24: c9 18       ..  :9e24[1]
    bcc c9e2a                                                         ; 3e26: 90 02       ..  :9e26[1]
; &3e28 referenced 1 time by &9e22
.c9e28
    lda #8                                                            ; 3e28: a9 08       ..  :9e28[1]
; &3e2a referenced 1 time by &9e26
.c9e2a
    jsr sub_c81c4                                                     ; 3e2a: 20 c4 81     .. :9e2a[1]
    tay                                                               ; 3e2d: a8          .   :9e2d[1]
    pla                                                               ; 3e2e: 68          h   :9e2e[1]
    rts                                                               ; 3e2f: 60          `   :9e2f[1]

; &3e30 referenced 3 times by &803d, &9e7d, &9fc5
.sub_c9e30
    lda #osbyte_rw_exec_handle                                        ; 3e30: a9 c6       ..  :9e30[1]
    jsr osbyte_read                                                   ; 3e32: 20 e5 9a     .. :9e32[1]
    txa                                                               ; 3e35: 8a          .   :9e35[1]
    beq c9e41                                                         ; 3e36: f0 09       ..  :9e36[1]
    jsr sub_c9e54                                                     ; 3e38: 20 54 9e     T. :9e38[1]
    bne c9e41                                                         ; 3e3b: d0 04       ..  :9e3b[1]
    lda #osbyte_rw_exec_handle                                        ; 3e3d: a9 c6       ..  :9e3d[1]
    bne osbyte_write_0                                                ; 3e3f: d0 0c       ..  :9e3f[1]
; &3e41 referenced 2 times by &9e36, &9e3b
.c9e41
    lda #osbyte_read_write_spool_file_handle                          ; 3e41: a9 c7       ..  :9e41[1]
    jsr osbyte_read                                                   ; 3e43: 20 e5 9a     .. :9e43[1]
    jsr sub_c9e54                                                     ; 3e46: 20 54 9e     T. :9e46[1]
    bne c9e5c                                                         ; 3e49: d0 11       ..  :9e49[1]
    lda #osbyte_read_write_spool_file_handle                          ; 3e4b: a9 c7       ..  :9e4b[1]
; &3e4d referenced 1 time by &9e3f
.osbyte_write_0
    ldx #0                                                            ; 3e4d: a2 00       ..  :9e4d[1]   ; X=File handle
    ldy #0                                                            ; 3e4f: a0 00       ..  :9e4f[1]
    jmp osbyte                                                        ; 3e51: 4c f4 ff    L.. :9e51[1]   ; Write *SPOOL file handle, value 0

; &3e54 referenced 2 times by &9e38, &9e46
.sub_c9e54
    txa                                                               ; 3e54: 8a          .   :9e54[1]
    tay                                                               ; 3e55: a8          .   :9e55[1]
    jsr sub_c9e1e                                                     ; 3e56: 20 1e 9e     .. :9e56[1]
    cpy l10c2                                                         ; 3e59: cc c2 10    ... :9e59[1]
; &3e5c referenced 1 time by &9e49
.c9e5c
    rts                                                               ; 3e5c: 60          `   :9e5c[1]

    pha                                                               ; 3e5d: 48          H   :9e5d[1]
    tya                                                               ; 3e5e: 98          .   :9e5e[1]
    pha                                                               ; 3e5f: 48          H   :9e5f[1]
    txa                                                               ; 3e60: 8a          .   :9e60[1]
    tay                                                               ; 3e61: a8          .   :9e61[1]
    jsr sub_c9e75                                                     ; 3e62: 20 75 9e     u. :9e62[1]
    tya                                                               ; 3e65: 98          .   :9e65[1]
    jsr sub_ca0de                                                     ; 3e66: 20 de a0     .. :9e66[1]
    bne c9e6f                                                         ; 3e69: d0 04       ..  :9e69[1]
    ldx #&ff                                                          ; 3e6b: a2 ff       ..  :9e6b[1]
    bne c9e71                                                         ; 3e6d: d0 02       ..  :9e6d[1]
; &3e6f referenced 1 time by &9e69
.c9e6f
    ldx #0                                                            ; 3e6f: a2 00       ..  :9e6f[1]
; &3e71 referenced 1 time by &9e6d
.c9e71
    pla                                                               ; 3e71: 68          h   :9e71[1]
    tay                                                               ; 3e72: a8          .   :9e72[1]
    pla                                                               ; 3e73: 68          h   :9e73[1]
; &3e74 referenced 1 time by &9e7b
.loop_c9e74
    rts                                                               ; 3e74: 60          `   :9e74[1]

; &3e75 referenced 6 times by &9b76, &9dd5, &9e62, &9e97, &9f85, &a06f
.sub_c9e75
    jsr sub_c9e1e                                                     ; 3e75: 20 1e 9e     .. :9e75[1]
    jsr sub_c9df4                                                     ; 3e78: 20 f4 9d     .. :9e78[1]
    bcc loop_c9e74                                                    ; 3e7b: 90 f7       ..  :9e7b[1]
    jsr sub_c9e30                                                     ; 3e7d: 20 30 9e     0. :9e7d[1]
    jsr generate_error_precheck                                       ; 3e80: 20 38 80     8. :9e80[1]
    equb &de                                                          ; 3e83: de          .   :9e83[1]
    equs "Channel"                                                    ; 3e84: 43 68 61... Cha :9e84[1]
    equb 0                                                            ; 3e8b: 00          .   :9e8b[1]

; &3e8c referenced 1 time by &9ea5
.loop_c9e8c
    jsr generate_error_precheck                                       ; 3e8c: 20 38 80     8. :9e8c[1]
    equb &df                                                          ; 3e8f: df          .   :9e8f[1]
    equs "EOF"                                                        ; 3e90: 45 4f 46    EOF :9e90[1]
    equb 0                                                            ; 3e93: 00          .   :9e93[1]

; &3e94 referenced 1 time by &9969
.sub_c9e94
    jsr sub_c840c                                                     ; 3e94: 20 0c 84     .. :9e94[1]
    jsr sub_c9e75                                                     ; 3e97: 20 75 9e     u. :9e97[1]
    tya                                                               ; 3e9a: 98          .   :9e9a[1]
    jsr sub_ca0de                                                     ; 3e9b: 20 de a0     .. :9e9b[1]
    bne c9eb3                                                         ; 3e9e: d0 13       ..  :9e9e[1]
    lda l1117,y                                                       ; 3ea0: b9 17 11    ... :9ea0[1]
    and #&10                                                          ; 3ea3: 29 10       ).  :9ea3[1]
    bne loop_c9e8c                                                    ; 3ea5: d0 e5       ..  :9ea5[1]
    lda #&10                                                          ; 3ea7: a9 10       ..  :9ea7[1]
    jsr sub_c9f0f                                                     ; 3ea9: 20 0f 9f     .. :9ea9[1]
    ldx l10c5                                                         ; 3eac: ae c5 10    ... :9eac[1]
    lda #&fe                                                          ; 3eaf: a9 fe       ..  :9eaf[1]
    sec                                                               ; 3eb1: 38          8   :9eb1[1]
    rts                                                               ; 3eb2: 60          `   :9eb2[1]

; &3eb3 referenced 1 time by &9e9e
.c9eb3
    lda l1117,y                                                       ; 3eb3: b9 17 11    ... :9eb3[1]
    bmi c9ec2                                                         ; 3eb6: 30 0a       0.  :9eb6[1]
    jsr sub_c9be5                                                     ; 3eb8: 20 e5 9b     .. :9eb8[1]
    jsr sub_c9f1e                                                     ; 3ebb: 20 1e 9f     .. :9ebb[1]
    sec                                                               ; 3ebe: 38          8   :9ebe[1]
    jsr sub_c9f26                                                     ; 3ebf: 20 26 9f     &. :9ebf[1]
; &3ec2 referenced 1 time by &9eb6
.c9ec2
    lda l1110,y                                                       ; 3ec2: b9 10 11    ... :9ec2[1]
    sta l00ba                                                         ; 3ec5: 85 ba       ..  :9ec5[1]
    lda l1113,y                                                       ; 3ec7: b9 13 11    ... :9ec7[1]
    sta l00bb                                                         ; 3eca: 85 bb       ..  :9eca[1]
    ldy #0                                                            ; 3ecc: a0 00       ..  :9ecc[1]
    lda (l00ba),y                                                     ; 3ece: b1 ba       ..  :9ece[1]
    pha                                                               ; 3ed0: 48          H   :9ed0[1]
    ldy l10c2                                                         ; 3ed1: ac c2 10    ... :9ed1[1]
    ldx l00ba                                                         ; 3ed4: a6 ba       ..  :9ed4[1]
    inx                                                               ; 3ed6: e8          .   :9ed6[1]
    txa                                                               ; 3ed7: 8a          .   :9ed7[1]
    sta l1110,y                                                       ; 3ed8: 99 10 11    ... :9ed8[1]
    bne c9ef1                                                         ; 3edb: d0 14       ..  :9edb[1]
    clc                                                               ; 3edd: 18          .   :9edd[1]
    lda l1111,y                                                       ; 3ede: b9 11 11    ... :9ede[1]
    adc #1                                                            ; 3ee1: 69 01       i.  :9ee1[1]
    sta l1111,y                                                       ; 3ee3: 99 11 11    ... :9ee3[1]
    lda l1112,y                                                       ; 3ee6: b9 12 11    ... :9ee6[1]
    adc #0                                                            ; 3ee9: 69 00       i.  :9ee9[1]
    sta l1112,y                                                       ; 3eeb: 99 12 11    ... :9eeb[1]
    jsr sub_c9f14                                                     ; 3eee: 20 14 9f     .. :9eee[1]
; &3ef1 referenced 1 time by &9edb
.c9ef1
    clc                                                               ; 3ef1: 18          .   :9ef1[1]
    pla                                                               ; 3ef2: 68          h   :9ef2[1]
    rts                                                               ; 3ef3: 60          `   :9ef3[1]

; &3ef4 referenced 2 times by &9f5e, &a018
.sub_c9ef4
    clc                                                               ; 3ef4: 18          .   :9ef4[1]
    lda l110f,y                                                       ; 3ef5: b9 0f 11    ... :9ef5[1]
    adc l1111,y                                                       ; 3ef8: 79 11 11    y.. :9ef8[1]
    sta l00c3                                                         ; 3efb: 85 c3       ..  :9efb[1]
    sta l111c,y                                                       ; 3efd: 99 1c 11    ... :9efd[1]
    lda l110d,y                                                       ; 3f00: b9 0d 11    ... :9f00[1]
    and #3                                                            ; 3f03: 29 03       ).  :9f03[1]
    adc l1112,y                                                       ; 3f05: 79 12 11    y.. :9f05[1]
    sta l00c2                                                         ; 3f08: 85 c2       ..  :9f08[1]
    sta l111d,y                                                       ; 3f0a: 99 1d 11    ... :9f0a[1]
; &3f0d referenced 1 time by &a0db
.c9f0d
    lda #&80                                                          ; 3f0d: a9 80       ..  :9f0d[1]
; &3f0f referenced 3 times by &9ea9, &a035, &a05c
.sub_c9f0f
    ora l1117,y                                                       ; 3f0f: 19 17 11    ... :9f0f[1]
    bne c9f19                                                         ; 3f12: d0 05       ..  :9f12[1]
; &3f14 referenced 2 times by &9eee, &a041
.sub_c9f14
    lda #&7f                                                          ; 3f14: a9 7f       ..  :9f14[1]
; &3f16 referenced 3 times by &95f0, &9f59, &a0ba
.sub_c9f16
    and l1117,y                                                       ; 3f16: 39 17 11    9.. :9f16[1]
; &3f19 referenced 1 time by &9f12
.c9f19
    sta l1117,y                                                       ; 3f19: 99 17 11    ... :9f19[1]
    clc                                                               ; 3f1c: 18          .   :9f1c[1]
    rts                                                               ; 3f1d: 60          `   :9f1d[1]

; &3f1e referenced 3 times by &9bc2, &9ebb, &a00a
.sub_c9f1e
    lda l1117,y                                                       ; 3f1e: b9 17 11    ... :9f1e[1]
    and #&40 ; '@'                                                    ; 3f21: 29 40       )@  :9f21[1]
    beq c9f6a                                                         ; 3f23: f0 45       .E  :9f23[1]
    clc                                                               ; 3f25: 18          .   :9f25[1]
; &3f26 referenced 2 times by &9ebf, &a01e
.sub_c9f26
    php                                                               ; 3f26: 08          .   :9f26[1]
    inc l10dd                                                         ; 3f27: ee dd 10    ... :9f27[1]
    ldy l10c2                                                         ; 3f2a: ac c2 10    ... :9f2a[1]
    lda l1113,y                                                       ; 3f2d: b9 13 11    ... :9f2d[1]
    sta l00bd                                                         ; 3f30: 85 bd       ..  :9f30[1]
    lda #&ff                                                          ; 3f32: a9 ff       ..  :9f32[1]
    sta l1074                                                         ; 3f34: 8d 74 10    .t. :9f34[1]
    sta l1075                                                         ; 3f37: 8d 75 10    .u. :9f37[1]
    lda #0                                                            ; 3f3a: a9 00       ..  :9f3a[1]
    sta l00bc                                                         ; 3f3c: 85 bc       ..  :9f3c[1]
    sta l00c0                                                         ; 3f3e: 85 c0       ..  :9f3e[1]
    lda #1                                                            ; 3f40: a9 01       ..  :9f40[1]
    sta l00c1                                                         ; 3f42: 85 c1       ..  :9f42[1]
    plp                                                               ; 3f44: 28          (   :9f44[1]
    bcs c9f5e                                                         ; 3f45: b0 17       ..  :9f45[1]
    lda l111c,y                                                       ; 3f47: b9 1c 11    ... :9f47[1]
    sta l00c3                                                         ; 3f4a: 85 c3       ..  :9f4a[1]
    lda l111d,y                                                       ; 3f4c: b9 1d 11    ... :9f4c[1]
    sta l00c2                                                         ; 3f4f: 85 c2       ..  :9f4f[1]
    jsr sub_c8862                                                     ; 3f51: 20 62 88     b. :9f51[1]
    ldy l10c2                                                         ; 3f54: ac c2 10    ... :9f54[1]
    lda #&bf                                                          ; 3f57: a9 bf       ..  :9f57[1]
    jsr sub_c9f16                                                     ; 3f59: 20 16 9f     .. :9f59[1]
    bcc c9f64                                                         ; 3f5c: 90 06       ..  :9f5c[1]
; &3f5e referenced 1 time by &9f45
.c9f5e
    jsr sub_c9ef4                                                     ; 3f5e: 20 f4 9e     .. :9f5e[1]
    jsr sub_c8855                                                     ; 3f61: 20 55 88     U. :9f61[1]
; &3f64 referenced 1 time by &9f5c
.c9f64
    dec l10dd                                                         ; 3f64: ce dd 10    ... :9f64[1]
    ldy l10c2                                                         ; 3f67: ac c2 10    ... :9f67[1]
; &3f6a referenced 1 time by &9f23
.c9f6a
    rts                                                               ; 3f6a: 60          `   :9f6a[1]

; &3f6b referenced 1 time by &9f91
.c9f6b
    jmp generate_error_precheck_locked                                ; 3f6b: 4c 55 9a    LU. :9f6b[1]

; &3f6e referenced 1 time by &9f8c
.loop_c9f6e
    jsr generate_error_precheck                                       ; 3f6e: 20 38 80     8. :9f6e[1]
    equb &c1                                                          ; 3f71: c1          .   :9f71[1]
    equs "Read only"                                                  ; 3f72: 52 65 61... Rea :9f72[1]
    equb 0                                                            ; 3f7b: 00          .   :9f7b[1]

; &3f7c referenced 1 time by &a09a
.sub_c9f7c
    jsr sub_c83e3                                                     ; 3f7c: 20 e3 83     .. :9f7c[1]
    jmp c9f88                                                         ; 3f7f: 4c 88 9f    L.. :9f7f[1]

; &3f82 referenced 1 time by &9983
.sub_c9f82
    jsr sub_c83e3                                                     ; 3f82: 20 e3 83     .. :9f82[1]
    jsr sub_c9e75                                                     ; 3f85: 20 75 9e     u. :9f85[1]
; &3f88 referenced 1 time by &9f7f
.c9f88
    pha                                                               ; 3f88: 48          H   :9f88[1]
    lda l110c,y                                                       ; 3f89: b9 0c 11    ... :9f89[1]
    bmi loop_c9f6e                                                    ; 3f8c: 30 e0       0.  :9f8c[1]
    lda l110e,y                                                       ; 3f8e: b9 0e 11    ... :9f8e[1]
    bmi c9f6b                                                         ; 3f91: 30 d8       0.  :9f91[1]
    jsr sub_c9be5                                                     ; 3f93: 20 e5 9b     .. :9f93[1]
    tya                                                               ; 3f96: 98          .   :9f96[1]
    clc                                                               ; 3f97: 18          .   :9f97[1]
    adc #4                                                            ; 3f98: 69 04       i.  :9f98[1]
    jsr sub_ca0de                                                     ; 3f9a: 20 de a0     .. :9f9a[1]
    bne ca005                                                         ; 3f9d: d0 66       .f  :9f9d[1]
    jsr sub_c9bcd                                                     ; 3f9f: 20 cd 9b     .. :9f9f[1]
    ldx l10c3                                                         ; 3fa2: ae c3 10    ... :9fa2[1]
    sec                                                               ; 3fa5: 38          8   :9fa5[1]
    lda l0f07,x                                                       ; 3fa6: bd 07 0f    ... :9fa6[1]
    sbc l0f0f,x                                                       ; 3fa9: fd 0f 0f    ... :9fa9[1]
    pha                                                               ; 3fac: 48          H   :9fac[1]
    lda l0f06,x                                                       ; 3fad: bd 06 0f    ... :9fad[1]
    sbc l0f0e,x                                                       ; 3fb0: fd 0e 0f    ... :9fb0[1]
    and #3                                                            ; 3fb3: 29 03       ).  :9fb3[1]
    cmp l111a,y                                                       ; 3fb5: d9 1a 11    ... :9fb5[1]
    bne c9fd9                                                         ; 3fb8: d0 1f       ..  :9fb8[1]
    pla                                                               ; 3fba: 68          h   :9fba[1]
    cmp l1119,y                                                       ; 3fbb: d9 19 11    ... :9fbb[1]
    bne c9ff4                                                         ; 3fbe: d0 34       .4  :9fbe[1]
    sty l00b4                                                         ; 3fc0: 84 b4       ..  :9fc0[1]
    sty l10c2                                                         ; 3fc2: 8c c2 10    ... :9fc2[1]
    jsr sub_c9e30                                                     ; 3fc5: 20 30 9e     0. :9fc5[1]
    jsr generate_error_precheck                                       ; 3fc8: 20 38 80     8. :9fc8[1]
    equb &bf                                                          ; 3fcb: bf          .   :9fcb[1]
    equs "Can't extend"                                               ; 3fcc: 43 61 6e... Can :9fcc[1]
    equb 0                                                            ; 3fd8: 00          .   :9fd8[1]

; &3fd9 referenced 1 time by &9fb8
.c9fd9
    lda l111a,y                                                       ; 3fd9: b9 1a 11    ... :9fd9[1]
    clc                                                               ; 3fdc: 18          .   :9fdc[1]
    adc #1                                                            ; 3fdd: 69 01       i.  :9fdd[1]
    sta l111a,y                                                       ; 3fdf: 99 1a 11    ... :9fdf[1]
    asl a                                                             ; 3fe2: 0a          .   :9fe2[1]
    asl a                                                             ; 3fe3: 0a          .   :9fe3[1]
    asl a                                                             ; 3fe4: 0a          .   :9fe4[1]
    asl a                                                             ; 3fe5: 0a          .   :9fe5[1]
    eor l0f0e,x                                                       ; 3fe6: 5d 0e 0f    ].. :9fe6[1]
    and #&30 ; '0'                                                    ; 3fe9: 29 30       )0  :9fe9[1]
    eor l0f0e,x                                                       ; 3feb: 5d 0e 0f    ].. :9feb[1]
    sta l0f0e,x                                                       ; 3fee: 9d 0e 0f    ... :9fee[1]
    pla                                                               ; 3ff1: 68          h   :9ff1[1]
    lda #0                                                            ; 3ff2: a9 00       ..  :9ff2[1]
; &3ff4 referenced 1 time by &9fbe
.c9ff4
    sta l0f0d,x                                                       ; 3ff4: 9d 0d 0f    ... :9ff4[1]
    sta l1119,y                                                       ; 3ff7: 99 19 11    ... :9ff7[1]
    lda #0                                                            ; 3ffa: a9 00       ..  :9ffa[1]
    sta l0f0c,x                                                       ; 3ffc: 9d 0c 0f    ... :9ffc[1]
    jsr c93e6                                                         ; 3fff: 20 e6 93     .. :9fff[1]
    ldy l10c2                                                         ; 4002: ac c2 10    ... :a002[1]
; &4005 referenced 1 time by &9f9d
.ca005
    lda l1117,y                                                       ; 4005: b9 17 11    ... :a005[1]
    bmi ca021                                                         ; 4008: 30 17       0.  :a008[1]
    jsr sub_c9f1e                                                     ; 400a: 20 1e 9f     .. :a00a[1]
    lda l1114,y                                                       ; 400d: b9 14 11    ... :a00d[1]
    bne ca01d                                                         ; 4010: d0 0b       ..  :a010[1]
    tya                                                               ; 4012: 98          .   :a012[1]
    jsr sub_ca0de                                                     ; 4013: 20 de a0     .. :a013[1]
    bne ca01d                                                         ; 4016: d0 05       ..  :a016[1]
    jsr sub_c9ef4                                                     ; 4018: 20 f4 9e     .. :a018[1]
    bne ca021                                                         ; 401b: d0 04       ..  :a01b[1]
; &401d referenced 2 times by &a010, &a016
.ca01d
    sec                                                               ; 401d: 38          8   :a01d[1]
    jsr sub_c9f26                                                     ; 401e: 20 26 9f     &. :a01e[1]
; &4021 referenced 2 times by &a008, &a01b
.ca021
    lda l1110,y                                                       ; 4021: b9 10 11    ... :a021[1]
    sta l00ba                                                         ; 4024: 85 ba       ..  :a024[1]
    lda l1113,y                                                       ; 4026: b9 13 11    ... :a026[1]
    sta l00bb                                                         ; 4029: 85 bb       ..  :a029[1]
    pla                                                               ; 402b: 68          h   :a02b[1]
    ldy #0                                                            ; 402c: a0 00       ..  :a02c[1]
    sta (l00ba),y                                                     ; 402e: 91 ba       ..  :a02e[1]
    ldy l10c2                                                         ; 4030: ac c2 10    ... :a030[1]
    lda #&40 ; '@'                                                    ; 4033: a9 40       .@  :a033[1]
    jsr sub_c9f0f                                                     ; 4035: 20 0f 9f     .. :a035[1]
    inc l00ba                                                         ; 4038: e6 ba       ..  :a038[1]
    lda l00ba                                                         ; 403a: a5 ba       ..  :a03a[1]
    sta l1110,y                                                       ; 403c: 99 10 11    ... :a03c[1]
    bne ca054                                                         ; 403f: d0 13       ..  :a03f[1]
    jsr sub_c9f14                                                     ; 4041: 20 14 9f     .. :a041[1]
    lda l1111,y                                                       ; 4044: b9 11 11    ... :a044[1]
    adc #1                                                            ; 4047: 69 01       i.  :a047[1]
    sta l1111,y                                                       ; 4049: 99 11 11    ... :a049[1]
    lda l1112,y                                                       ; 404c: b9 12 11    ... :a04c[1]
    adc #0                                                            ; 404f: 69 00       i.  :a04f[1]
    sta l1112,y                                                       ; 4051: 99 12 11    ... :a051[1]
; &4054 referenced 1 time by &a03f
.ca054
    tya                                                               ; 4054: 98          .   :a054[1]
    jsr sub_ca0de                                                     ; 4055: 20 de a0     .. :a055[1]
    bcc ca06b                                                         ; 4058: 90 11       ..  :a058[1]
    lda #&20 ; ' '                                                    ; 405a: a9 20       .   :a05a[1]
    jsr sub_c9f0f                                                     ; 405c: 20 0f 9f     .. :a05c[1]
    ldx #2                                                            ; 405f: a2 02       ..  :a05f[1]
; &4061 referenced 1 time by &a069
.loop_ca061
    lda l1110,y                                                       ; 4061: b9 10 11    ... :a061[1]
    sta l1114,y                                                       ; 4064: 99 14 11    ... :a064[1]
    iny                                                               ; 4067: c8          .   :a067[1]
    dex                                                               ; 4068: ca          .   :a068[1]
    bpl loop_ca061                                                    ; 4069: 10 f6       ..  :a069[1]
; &406b referenced 3 times by &a058, &a0d1, &a0d9
.ca06b
    rts                                                               ; 406b: 60          `   :a06b[1]

; &406c referenced 2 times by &9849, &9db1
.ca06c
    jsr sub_c83e3                                                     ; 406c: 20 e3 83     .. :a06c[1]
    jsr sub_c9e75                                                     ; 406f: 20 75 9e     u. :a06f[1]
    ldy l10c2                                                         ; 4072: ac c2 10    ... :a072[1]
; &4075 referenced 1 time by &a0a6
.ca075
    jsr sub_ca0f6                                                     ; 4075: 20 f6 a0     .. :a075[1]
    bcs ca0a9                                                         ; 4078: b0 2f       ./  :a078[1]
    lda l1114,y                                                       ; 407a: b9 14 11    ... :a07a[1]
    sta l1110,y                                                       ; 407d: 99 10 11    ... :a07d[1]
    lda l1115,y                                                       ; 4080: b9 15 11    ... :a080[1]
    sta l1111,y                                                       ; 4083: 99 11 11    ... :a083[1]
    lda l1116,y                                                       ; 4086: b9 16 11    ... :a086[1]
    sta l1112,y                                                       ; 4089: 99 12 11    ... :a089[1]
    jsr sub_ca0b8                                                     ; 408c: 20 b8 a0     .. :a08c[1]
    lda l00b6                                                         ; 408f: a5 b6       ..  :a08f[1]
    pha                                                               ; 4091: 48          H   :a091[1]
    lda l00b7                                                         ; 4092: a5 b7       ..  :a092[1]
    pha                                                               ; 4094: 48          H   :a094[1]
    lda l00b8                                                         ; 4095: a5 b8       ..  :a095[1]
    pha                                                               ; 4097: 48          H   :a097[1]
    lda #0                                                            ; 4098: a9 00       ..  :a098[1]
    jsr sub_c9f7c                                                     ; 409a: 20 7c 9f     |. :a09a[1]
    pla                                                               ; 409d: 68          h   :a09d[1]
    sta l00b8                                                         ; 409e: 85 b8       ..  :a09e[1]
    pla                                                               ; 40a0: 68          h   :a0a0[1]
    sta l00b7                                                         ; 40a1: 85 b7       ..  :a0a1[1]
    pla                                                               ; 40a3: 68          h   :a0a3[1]
    sta l00b6                                                         ; 40a4: 85 b6       ..  :a0a4[1]
    jmp ca075                                                         ; 40a6: 4c 75 a0    Lu. :a0a6[1]

; &40a9 referenced 1 time by &a078
.ca0a9
    lda l0000,x                                                       ; 40a9: b5 00       ..  :a0a9[1]
    sta l1110,y                                                       ; 40ab: 99 10 11    ... :a0ab[1]
    lda l0001,x                                                       ; 40ae: b5 01       ..  :a0ae[1]
    sta l1111,y                                                       ; 40b0: 99 11 11    ... :a0b0[1]
    lda l0002,x                                                       ; 40b3: b5 02       ..  :a0b3[1]
    sta l1112,y                                                       ; 40b5: 99 12 11    ... :a0b5[1]
; &40b8 referenced 1 time by &a08c
.sub_ca0b8
    lda #&6f ; 'o'                                                    ; 40b8: a9 6f       .o  :a0b8[1]
    jsr sub_c9f16                                                     ; 40ba: 20 16 9f     .. :a0ba[1]
    lda l110f,y                                                       ; 40bd: b9 0f 11    ... :a0bd[1]
    adc l1111,y                                                       ; 40c0: 79 11 11    y.. :a0c0[1]
    sta l10c4                                                         ; 40c3: 8d c4 10    ... :a0c3[1]
    lda l110d,y                                                       ; 40c6: b9 0d 11    ... :a0c6[1]
    and #3                                                            ; 40c9: 29 03       ).  :a0c9[1]
    adc l1112,y                                                       ; 40cb: 79 12 11    y.. :a0cb[1]
    cmp l111d,y                                                       ; 40ce: d9 1d 11    ... :a0ce[1]
    bne ca06b                                                         ; 40d1: d0 98       ..  :a0d1[1]
    lda l10c4                                                         ; 40d3: ad c4 10    ... :a0d3[1]
    cmp l111c,y                                                       ; 40d6: d9 1c 11    ... :a0d6[1]
    bne ca06b                                                         ; 40d9: d0 90       ..  :a0d9[1]
    jmp c9f0d                                                         ; 40db: 4c 0d 9f    L.. :a0db[1]

; &40de referenced 5 times by &9e66, &9e9b, &9f9a, &a013, &a055
.sub_ca0de
    tax                                                               ; 40de: aa          .   :a0de[1]
    lda l1112,y                                                       ; 40df: b9 12 11    ... :a0df[1]
    cmp l1116,x                                                       ; 40e2: dd 16 11    ... :a0e2[1]
    bne ca0f5                                                         ; 40e5: d0 0e       ..  :a0e5[1]
    lda l1111,y                                                       ; 40e7: b9 11 11    ... :a0e7[1]
    cmp l1115,x                                                       ; 40ea: dd 15 11    ... :a0ea[1]
    bne ca0f5                                                         ; 40ed: d0 06       ..  :a0ed[1]
    lda l1110,y                                                       ; 40ef: b9 10 11    ... :a0ef[1]
    cmp l1114,x                                                       ; 40f2: dd 14 11    ... :a0f2[1]
; &40f5 referenced 2 times by &a0e5, &a0ed
.ca0f5
    rts                                                               ; 40f5: 60          `   :a0f5[1]

; &40f6 referenced 1 time by &a075
.sub_ca0f6
    lda l1114,y                                                       ; 40f6: b9 14 11    ... :a0f6[1]
    cmp l0000,x                                                       ; 40f9: d5 00       ..  :a0f9[1]
    lda l1115,y                                                       ; 40fb: b9 15 11    ... :a0fb[1]
    sbc l0001,x                                                       ; 40fe: f5 01       ..  :a0fe[1]
    lda l1116,y                                                       ; 4100: b9 16 11    ... :a100[1]
    sbc l0002,x                                                       ; 4103: f5 02       ..  :a103[1]
    rts                                                               ; 4105: 60          `   :a105[1]

.sub_ca106
    tya                                                               ; 4106: 98          .   :a106[1]
    ldx #&ff                                                          ; 4107: a2 ff       ..  :a107[1]
    ldy #&14                                                          ; 4109: a0 14       ..  :a109[1]
; &410b referenced 2 times by &9711, &a13c
.ca10b
    pha                                                               ; 410b: 48          H   :a10b[1]
    jsr print_inline_l809f_top_bit_clear                              ; 410c: 20 77 80     w. :a10c[1]
    equs &0d, "DFS 2.26", &0d                                         ; 410f: 0d 44 46... .DF :a10f[1]

    stx l00bf                                                         ; 4119: 86 bf       ..  :a119[1]
    sty l00b7                                                         ; 411b: 84 b7       ..  :a11b[1]
; &411d referenced 1 time by &a12e
.loop_ca11d
    lda #0                                                            ; 411d: a9 00       ..  :a11d[1]
    sta l00b9                                                         ; 411f: 85 b9       ..  :a11f[1]
    ldy #2                                                            ; 4121: a0 02       ..  :a121[1]
    jsr sub_ca1c6                                                     ; 4123: 20 c6 a1     .. :a123[1]
    jsr sub_ca168                                                     ; 4126: 20 68 a1     h. :a126[1]
    jsr ca3dc                                                         ; 4129: 20 dc a3     .. :a129[1]
    dec l00b7                                                         ; 412c: c6 b7       ..  :a12c[1]
    bne loop_ca11d                                                    ; 412e: d0 ed       ..  :a12e[1]
    pla                                                               ; 4130: 68          h   :a130[1]
    tay                                                               ; 4131: a8          .   :a131[1]
; &4132 referenced 1 time by &a148
.loop_ca132
    ldx #&cf                                                          ; 4132: a2 cf       ..  :a132[1]
    jmp c8703                                                         ; 4134: 4c 03 87    L.. :a134[1]

.sub_ca137
    tya                                                               ; 4137: 98          .   :a137[1]
    ldx #&9d                                                          ; 4138: a2 9d       ..  :a138[1]
    ldy #6                                                            ; 413a: a0 06       ..  :a13a[1]
    bne ca10b                                                         ; 413c: d0 cd       ..  :a13c[1]
    jsr clc_jmp_gsinit                                                ; 413e: 20 4c 87     L. :a13e[1]
    beq ca1c0                                                         ; 4141: f0 7d       .}  :a141[1]
; &4143 referenced 1 time by &a146
.loop_ca143
    jsr sub_c8149                                                     ; 4143: 20 49 81     I. :a143[1]
    bcc loop_ca143                                                    ; 4146: 90 fb       ..  :a146[1]
    bcs loop_ca132                                                    ; 4148: b0 e8       ..  :a148[1]
; &414a referenced 13 times by &8257, &8753, &8785, &879a, &87ee, &89b7, &89e9, &8baf, &8bc1, &a324, &a32d, &a469, &a5cb
.sub_ca14a
    jsr clc_jmp_gsinit                                                ; 414a: 20 4c 87     L. :a14a[1]
    bne ca1c0                                                         ; 414d: d0 71       .q  :a14d[1]
; &414f referenced 3 times by &8805, &a5e2, &ac25
.ca14f
    jsr generate_error                                                ; 414f: 20 48 80     H. :a14f[1]
    equb &dc                                                          ; 4152: dc          .   :a152[1]
    equs "Syntax: "                                                   ; 4153: 53 79 6e... Syn :a153[1]

    stx l00b9                                                         ; 415b: 86 b9       ..  :a15b[1]
    jsr sub_ca168                                                     ; 415d: 20 68 a1     h. :a15d[1]
    lda #0                                                            ; 4160: a9 00       ..  :a160[1]
    jsr sub_ca1b4                                                     ; 4162: 20 b4 a1     .. :a162[1]
    jmp l0100                                                         ; 4165: 4c 00 01    L.. :a165[1]

; &4168 referenced 2 times by &a126, &a15d
.sub_ca168
    ldx l00bf                                                         ; 4168: a6 bf       ..  :a168[1]
    lda #9                                                            ; 416a: a9 09       ..  :a16a[1]
    sta l00b8                                                         ; 416c: 85 b8       ..  :a16c[1]
; &416e referenced 1 time by &a177
.loop_ca16e
    inx                                                               ; 416e: e8          .   :a16e[1]
    lda command_table,x                                               ; 416f: bd 1c 86    ... :a16f[1]
    bmi ca17a                                                         ; 4172: 30 06       0.  :a172[1]
    jsr sub_ca1b4                                                     ; 4174: 20 b4 a1     .. :a174[1]
    jmp loop_ca16e                                                    ; 4177: 4c 6e a1    Ln. :a177[1]

; &417a referenced 1 time by &a172
.ca17a
    ldy l00b8                                                         ; 417a: a4 b8       ..  :a17a[1]
    cpy #&0c                                                          ; 417c: c0 0c       ..  :a17c[1]
    beq ca183                                                         ; 417e: f0 03       ..  :a17e[1]
    jsr sub_ca1c6                                                     ; 4180: 20 c6 a1     .. :a180[1]
; &4183 referenced 1 time by &a17e
.ca183
    inx                                                               ; 4183: e8          .   :a183[1]
    inx                                                               ; 4184: e8          .   :a184[1]
    stx l00bf                                                         ; 4185: 86 bf       ..  :a185[1]
    lda command_table,x                                               ; 4187: bd 1c 86    ... :a187[1]
    jsr sub_ca190                                                     ; 418a: 20 90 a1     .. :a18a[1]
    jsr sub_c81bf                                                     ; 418d: 20 bf 81     .. :a18d[1]
; &4190 referenced 1 time by &a18a
.sub_ca190
    jsr sub_c83e3                                                     ; 4190: 20 e3 83     .. :a190[1]
    and #&0f                                                          ; 4193: 29 0f       ).  :a193[1]
    beq ca1c0                                                         ; 4195: f0 29       .)  :a195[1]
    tay                                                               ; 4197: a8          .   :a197[1]
    lda #&20 ; ' '                                                    ; 4198: a9 20       .   :a198[1]
    jsr sub_ca1b4                                                     ; 419a: 20 b4 a1     .. :a19a[1]
    ldx #&ff                                                          ; 419d: a2 ff       ..  :a19d[1]
; &419f referenced 2 times by &a1a3, &a1a6
.ca19f
    inx                                                               ; 419f: e8          .   :a19f[1]
    lda la1d3,x                                                       ; 41a0: bd d3 a1    ... :a1a0[1]
    bpl ca19f                                                         ; 41a3: 10 fa       ..  :a1a3[1]
    dey                                                               ; 41a5: 88          .   :a1a5[1]
    bne ca19f                                                         ; 41a6: d0 f7       ..  :a1a6[1]
    and #&7f                                                          ; 41a8: 29 7f       ).  :a1a8[1]
; &41aa referenced 1 time by &a1b1
.loop_ca1aa
    jsr sub_ca1b4                                                     ; 41aa: 20 b4 a1     .. :a1aa[1]
    inx                                                               ; 41ad: e8          .   :a1ad[1]
    lda la1d3,x                                                       ; 41ae: bd d3 a1    ... :a1ae[1]
    bpl loop_ca1aa                                                    ; 41b1: 10 f7       ..  :a1b1[1]
    rts                                                               ; 41b3: 60          `   :a1b3[1]

; &41b4 referenced 5 times by &a162, &a174, &a19a, &a1aa, &a1cc
.sub_ca1b4
    jsr sub_c83e3                                                     ; 41b4: 20 e3 83     .. :a1b4[1]
    ldx l00b9                                                         ; 41b7: a6 b9       ..  :a1b7[1]
    beq ca1c1                                                         ; 41b9: f0 06       ..  :a1b9[1]
    inc l00b9                                                         ; 41bb: e6 b9       ..  :a1bb[1]
    sta l0100,x                                                       ; 41bd: 9d 00 01    ... :a1bd[1]
; &41c0 referenced 3 times by &a141, &a14d, &a195
.ca1c0
    rts                                                               ; 41c0: 60          `   :a1c0[1]

; &41c1 referenced 1 time by &a1b9
.ca1c1
    dec l00b8                                                         ; 41c1: c6 b8       ..  :a1c1[1]
    jmp c809f                                                         ; 41c3: 4c 9f 80    L.. :a1c3[1]

; &41c6 referenced 2 times by &a123, &a180
.sub_ca1c6
    lda l00b9                                                         ; 41c6: a5 b9       ..  :a1c6[1]
    bne ca1d2                                                         ; 41c8: d0 08       ..  :a1c8[1]
    lda #&20 ; ' '                                                    ; 41ca: a9 20       .   :a1ca[1]
; &41cc referenced 1 time by &a1d0
.loop_ca1cc
    jsr sub_ca1b4                                                     ; 41cc: 20 b4 a1     .. :a1cc[1]
    dey                                                               ; 41cf: 88          .   :a1cf[1]
    bne loop_ca1cc                                                    ; 41d0: d0 fa       ..  :a1d0[1]
; &41d2 referenced 1 time by &a1c8
.ca1d2
    rts                                                               ; 41d2: 60          `   :a1d2[1]

; &41d3 referenced 2 times by &a1a0, &a1ae
.la1d3
    equb &bc                                                          ; 41d3: bc          .   :a1d3[1]
    equs "fsp>"                                                       ; 41d4: 66 73 70... fsp :a1d4[1]
    equb &bc                                                          ; 41d8: bc          .   :a1d8[1]
    equs "afsp>"                                                      ; 41d9: 61 66 73... afs :a1d9[1]
    equb &a8, &4c, &29, &bc                                           ; 41de: a8 4c 29... .L) :a1de[1]
    equs "source> <dest.>"                                            ; 41e2: 73 6f 75... sou :a1e2[1]
    equb &bc                                                          ; 41f1: bc          .   :a1f1[1]
    equs "old fsp> <new fsp>"                                         ; 41f2: 6f 6c 64... old :a1f2[1]
    equb &a8                                                          ; 4204: a8          .   :a204[1]
    equs "<dir>)"                                                     ; 4205: 3c 64 69... <di :a205[1]
    equb &a8                                                          ; 420b: a8          .   :a20b[1]
    equs "<drive>)"                                                   ; 420c: 3c 64 72... <dr :a20c[1]
    equb &bc                                                          ; 4214: bc          .   :a214[1]
    equs "title>"                                                     ; 4215: 74 69 74... tit :a215[1]
    equb &bc                                                          ; 421b: bc          .   :a21b[1]
    equs "drive> (40)(80)"                                            ; 421c: 64 72 69... dri :a21c[1]
    equb &b4                                                          ; 422b: b4          .   :a22b[1]
    equs "0/80"                                                       ; 422c: 30 2f 38... 0/8 :a22c[1]
    equb &a8                                                          ; 4230: a8          .   :a230[1]
    equs "<drive>)..."                                                ; 4231: 3c 64 72... <dr :a231[1]
    equb &a8                                                          ; 423c: a8          .   :a23c[1]
    equs "<rom>)"                                                     ; 423d: 3c 72 6f... <ro :a23d[1]
    equb &ff                                                          ; 4243: ff          .   :a243[1]

.sub_ca244
    jsr sub_c8b86                                                     ; 4244: 20 86 8b     .. :a244[1]
    jsr print_inline_l809f_top_bit_clear                              ; 4247: 20 77 80     w. :a247[1]
    equs "Compacting :"                                               ; 424a: 43 6f 6d... Com :a24a[1]

    sta l10d1                                                         ; 4256: 8d d1 10    ... :a256[1]
    sta l10d2                                                         ; 4259: 8d d2 10    ... :a259[1]
    jsr sub_c80c3                                                     ; 425c: 20 c3 80     .. :a25c[1]
    jsr ca3dc                                                         ; 425f: 20 dc a3     .. :a25f[1]
    ldy #0                                                            ; 4262: a0 00       ..  :a262[1]
    jsr sub_c9b79                                                     ; 4264: 20 79 9b     y. :a264[1]
    jsr sub_c9a8d                                                     ; 4267: 20 8d 9a     .. :a267[1]
    jsr sub_c8380                                                     ; 426a: 20 80 83     .. :a26a[1]
    ldy l0f05                                                         ; 426d: ac 05 0f    ... :a26d[1]
    sty l00ca                                                         ; 4270: 84 ca       ..  :a270[1]
    lda #2                                                            ; 4272: a9 02       ..  :a272[1]
    sta l00c8                                                         ; 4274: 85 c8       ..  :a274[1]
    lda #0                                                            ; 4276: a9 00       ..  :a276[1]
    sta l00c9                                                         ; 4278: 85 c9       ..  :a278[1]
; &427a referenced 1 time by &a312
.ca27a
    ldy l00ca                                                         ; 427a: a4 ca       ..  :a27a[1]
    jsr sub_c82b2                                                     ; 427c: 20 b2 82     .. :a27c[1]
    cpy #&f8                                                          ; 427f: c0 f8       ..  :a27f[1]
    bne ca2ab                                                         ; 4281: d0 28       .(  :a281[1]
    lda l0f07                                                         ; 4283: ad 07 0f    ... :a283[1]
    sec                                                               ; 4286: 38          8   :a286[1]
    sbc l00c8                                                         ; 4287: e5 c8       ..  :a287[1]
    pha                                                               ; 4289: 48          H   :a289[1]
    lda l0f06                                                         ; 428a: ad 06 0f    ... :a28a[1]
    and #3                                                            ; 428d: 29 03       ).  :a28d[1]
    sbc l00c9                                                         ; 428f: e5 c9       ..  :a28f[1]
    jsr sub_c80c3                                                     ; 4291: 20 c3 80     .. :a291[1]
    pla                                                               ; 4294: 68          h   :a294[1]
    jsr sub_c80bb                                                     ; 4295: 20 bb 80     .. :a295[1]
    jsr print_inline_l809f_top_bit_clear                              ; 4298: 20 77 80     w. :a298[1]
    equs " free sectors", &0d                                         ; 429b: 20 66 72...  fr :a29b[1]

    nop                                                               ; 42a9: ea          .   :a2a9[1]
    rts                                                               ; 42aa: 60          `   :a2aa[1]

; &42ab referenced 1 time by &a281
.ca2ab
    sty l00ca                                                         ; 42ab: 84 ca       ..  :a2ab[1]
    jsr sub_c8335                                                     ; 42ad: 20 35 83     5. :a2ad[1]
    ldy l00ca                                                         ; 42b0: a4 ca       ..  :a2b0[1]
    lda l0f0c,y                                                       ; 42b2: b9 0c 0f    ... :a2b2[1]
    cmp #1                                                            ; 42b5: c9 01       ..  :a2b5[1]
    lda #0                                                            ; 42b7: a9 00       ..  :a2b7[1]
    sta l00bc                                                         ; 42b9: 85 bc       ..  :a2b9[1]
    sta l00c0                                                         ; 42bb: 85 c0       ..  :a2bb[1]
    adc l0f0d,y                                                       ; 42bd: 79 0d 0f    y.. :a2bd[1]
    sta l00c4                                                         ; 42c0: 85 c4       ..  :a2c0[1]
    lda l0f0e,y                                                       ; 42c2: b9 0e 0f    ... :a2c2[1]
    php                                                               ; 42c5: 08          .   :a2c5[1]
    jsr sub_c81b0                                                     ; 42c6: 20 b0 81     .. :a2c6[1]
    plp                                                               ; 42c9: 28          (   :a2c9[1]
    adc #0                                                            ; 42ca: 69 00       i.  :a2ca[1]
    sta l00c5                                                         ; 42cc: 85 c5       ..  :a2cc[1]
    lda l0f0f,y                                                       ; 42ce: b9 0f 0f    ... :a2ce[1]
    sta l00c6                                                         ; 42d1: 85 c6       ..  :a2d1[1]
    lda l0f0e,y                                                       ; 42d3: b9 0e 0f    ... :a2d3[1]
    and #3                                                            ; 42d6: 29 03       ).  :a2d6[1]
    sta l00c7                                                         ; 42d8: 85 c7       ..  :a2d8[1]
    cmp l00c9                                                         ; 42da: c5 c9       ..  :a2da[1]
    bne ca2f2                                                         ; 42dc: d0 14       ..  :a2dc[1]
    lda l00c6                                                         ; 42de: a5 c6       ..  :a2de[1]
    cmp l00c8                                                         ; 42e0: c5 c8       ..  :a2e0[1]
    bne ca2f2                                                         ; 42e2: d0 0e       ..  :a2e2[1]
    clc                                                               ; 42e4: 18          .   :a2e4[1]
    adc l00c4                                                         ; 42e5: 65 c4       e.  :a2e5[1]
    sta l00c8                                                         ; 42e7: 85 c8       ..  :a2e7[1]
    lda l00c9                                                         ; 42e9: a5 c9       ..  :a2e9[1]
    adc l00c5                                                         ; 42eb: 65 c5       e.  :a2eb[1]
    sta l00c9                                                         ; 42ed: 85 c9       ..  :a2ed[1]
    jmp ca30d                                                         ; 42ef: 4c 0d a3    L.. :a2ef[1]

; &42f2 referenced 2 times by &a2dc, &a2e2
.ca2f2
    lda l00c8                                                         ; 42f2: a5 c8       ..  :a2f2[1]
    sta l0f0f,y                                                       ; 42f4: 99 0f 0f    ... :a2f4[1]
    lda l0f0e,y                                                       ; 42f7: b9 0e 0f    ... :a2f7[1]
    and #&fc                                                          ; 42fa: 29 fc       ).  :a2fa[1]
    ora l00c9                                                         ; 42fc: 05 c9       ..  :a2fc[1]
    sta l0f0e,y                                                       ; 42fe: 99 0e 0f    ... :a2fe[1]
    lda #0                                                            ; 4301: a9 00       ..  :a301[1]
    sta l00a8                                                         ; 4303: 85 a8       ..  :a303[1]
    sta l00a9                                                         ; 4305: 85 a9       ..  :a305[1]
    jsr sub_ca530                                                     ; 4307: 20 30 a5     0. :a307[1]
    jsr c93e6                                                         ; 430a: 20 e6 93     .. :a30a[1]
; &430d referenced 1 time by &a2ef
.ca30d
    ldy l00ca                                                         ; 430d: a4 ca       ..  :a30d[1]
    jsr sub_c833a                                                     ; 430f: 20 3a 83     :. :a30f[1]
    jmp ca27a                                                         ; 4312: 4c 7a a2    Lz. :a312[1]

; &4315 referenced 3 times by &8794, &a41a, &a64c
.sub_ca315
    bit l10c7                                                         ; 4315: 2c c7 10    ,.. :a315[1]
    bpl ca378                                                         ; 4318: 10 5e       .^  :a318[1]
    jsr sub_ca3ec                                                     ; 431a: 20 ec a3     .. :a31a[1]
    beq ca321                                                         ; 431d: f0 02       ..  :a31d[1]
    pla                                                               ; 431f: 68          h   :a31f[1]
    pla                                                               ; 4320: 68          h   :a320[1]
; &4321 referenced 1 time by &a31d
.ca321
    jmp ca3dc                                                         ; 4321: 4c dc a3    L.. :a321[1]

; &4324 referenced 2 times by &a417, &a466
.sub_ca324
    jsr sub_ca14a                                                     ; 4324: 20 4a a1     J. :a324[1]
    jsr c8b8b                                                         ; 4327: 20 8b 8b     .. :a327[1]
    sta l10d1                                                         ; 432a: 8d d1 10    ... :a32a[1]
    jsr sub_ca14a                                                     ; 432d: 20 4a a1     J. :a32d[1]
    jsr c8b8b                                                         ; 4330: 20 8b 8b     .. :a330[1]
    sta l10d2                                                         ; 4333: 8d d2 10    ... :a333[1]
    tya                                                               ; 4336: 98          .   :a336[1]
    pha                                                               ; 4337: 48          H   :a337[1]
    lda #0                                                            ; 4338: a9 00       ..  :a338[1]
    sta l00a9                                                         ; 433a: 85 a9       ..  :a33a[1]
    lda l10d2                                                         ; 433c: ad d2 10    ... :a33c[1]
    cmp l10d1                                                         ; 433f: cd d1 10    ... :a33f[1]
    bne ca34a                                                         ; 4342: d0 06       ..  :a342[1]
    lda #&ff                                                          ; 4344: a9 ff       ..  :a344[1]
    sta l00a9                                                         ; 4346: 85 a9       ..  :a346[1]
    sta l00aa                                                         ; 4348: 85 aa       ..  :a348[1]
; &434a referenced 1 time by &a342
.ca34a
    jsr sub_c9a8d                                                     ; 434a: 20 8d 9a     .. :a34a[1]
    jsr print_inline_l809f_top_bit_clear                              ; 434d: 20 77 80     w. :a34d[1]
    equs "Copying from :"                                             ; 4350: 43 6f 70... Cop :a350[1]

    lda l10d1                                                         ; 435e: ad d1 10    ... :a35e[1]
    jsr sub_c80c3                                                     ; 4361: 20 c3 80     .. :a361[1]
    jsr print_inline_l809f_top_bit_clear                              ; 4364: 20 77 80     w. :a364[1]
    equs " to :"                                                      ; 4367: 20 74 6f...  to :a367[1]

    lda l10d2                                                         ; 436c: ad d2 10    ... :a36c[1]
    jsr sub_c80c3                                                     ; 436f: 20 c3 80     .. :a36f[1]
    jsr ca3dc                                                         ; 4372: 20 dc a3     .. :a372[1]
    pla                                                               ; 4375: 68          h   :a375[1]
    tay                                                               ; 4376: a8          .   :a376[1]
    clc                                                               ; 4377: 18          .   :a377[1]
; &4378 referenced 1 time by &a318
.ca378
    rts                                                               ; 4378: 60          `   :a378[1]

; &4379 referenced 4 times by &a429, &a46f, &a4c8, &a55b
.sub_ca379
    jsr sub_c83e3                                                     ; 4379: 20 e3 83     .. :a379[1]
    bit l00a9                                                         ; 437c: 24 a9       $.  :a37c[1]
    bpl ca38b                                                         ; 437e: 10 0b       ..  :a37e[1]
    lda #0                                                            ; 4380: a9 00       ..  :a380[1]
    beq ca38e                                                         ; 4382: f0 0a       ..  :a382[1]
; &4384 referenced 3 times by &a440, &a4e4, &a581
.sub_ca384
    jsr sub_c83e3                                                     ; 4384: 20 e3 83     .. :a384[1]
    bit l00a9                                                         ; 4387: 24 a9       $.  :a387[1]
    bmi ca38c                                                         ; 4389: 30 01       0.  :a389[1]
; &438b referenced 2 times by &a37e, &a390
.ca38b
    rts                                                               ; 438b: 60          `   :a38b[1]

; &438c referenced 1 time by &a389
.ca38c
    lda #&80                                                          ; 438c: a9 80       ..  :a38c[1]
; &438e referenced 1 time by &a382
.ca38e
    cmp l00aa                                                         ; 438e: c5 aa       ..  :a38e[1]
    beq ca38b                                                         ; 4390: f0 f9       ..  :a390[1]
    sta l00aa                                                         ; 4392: 85 aa       ..  :a392[1]
    jsr print_inline_l809f_top_bit_clear                              ; 4394: 20 77 80     w. :a394[1]
    equs "Insert "                                                    ; 4397: 49 6e 73... Ins :a397[1]

    nop                                                               ; 439e: ea          .   :a39e[1]
    bit l00aa                                                         ; 439f: 24 aa       $.  :a39f[1]
    bmi ca3ae                                                         ; 43a1: 30 0b       0.  :a3a1[1]
    jsr print_inline_l809f_top_bit_clear                              ; 43a3: 20 77 80     w. :a3a3[1]
    equs "source"                                                     ; 43a6: 73 6f 75... sou :a3a6[1]

    bcc ca3bd                                                         ; 43ac: 90 0f       ..  :a3ac[1]
; &43ae referenced 1 time by &a3a1
.ca3ae
    jsr print_inline_l809f_top_bit_clear                              ; 43ae: 20 77 80     w. :a3ae[1]
    equs "destination"                                                ; 43b1: 64 65 73... des :a3b1[1]

    nop                                                               ; 43bc: ea          .   :a3bc[1]
; &43bd referenced 1 time by &a3ac
.ca3bd
    jsr print_inline_l809f_top_bit_clear                              ; 43bd: 20 77 80     w. :a3bd[1]
    equs " disc and hit a key"                                        ; 43c0: 20 64 69...  di :a3c0[1]

    nop                                                               ; 43d3: ea          .   :a3d3[1]
    jsr sub_c9ac8                                                     ; 43d4: 20 c8 9a     .. :a3d4[1]
    jsr osrdch                                                        ; 43d7: 20 e0 ff     .. :a3d7[1]
    bcs ca411                                                         ; 43da: b0 35       .5  :a3da[1]
; &43dc referenced 16 times by &836b, &8522, &854f, &85b2, &85b5, &8779, &87a8, &87b5, &a129, &a25f, &a321, &a372, &a62f, &a6b0, &a73a, &aa95
.ca3dc
    pha                                                               ; 43dc: 48          H   :a3dc[1]
    lda #&0d                                                          ; 43dd: a9 0d       ..  :a3dd[1]
    jsr c809f                                                         ; 43df: 20 9f 80     .. :a3df[1]
    pla                                                               ; 43e2: 68          h   :a3e2[1]
    rts                                                               ; 43e3: 60          `   :a3e3[1]

; &43e4 referenced 1 time by &8761
.sub_ca3e4
    jsr print_inline_l809f_top_bit_clear                              ; 43e4: 20 77 80     w. :a3e4[1]
    equs " : "                                                        ; 43e7: 20 3a 20     :  :a3e7[1]

    bcc ca3fb                                                         ; 43ea: 90 0f       ..  :a3ea[1]
; &43ec referenced 2 times by &87b0, &a31a
.sub_ca3ec
    jsr print_inline_l809f_top_bit_clear                              ; 43ec: 20 77 80     w. :a3ec[1]
    equs "Go (Y/N) ? "                                                ; 43ef: 47 6f 20... Go  :a3ef[1]

    nop                                                               ; 43fa: ea          .   :a3fa[1]
; &43fb referenced 1 time by &a3ea
.ca3fb
    jsr sub_c9ac8                                                     ; 43fb: 20 c8 9a     .. :a3fb[1]
    jsr osrdch                                                        ; 43fe: 20 e0 ff     .. :a3fe[1]
    bcs ca411                                                         ; 4401: b0 0e       ..  :a401[1]
    and #&5f ; '_'                                                    ; 4403: 29 5f       )_  :a403[1]
    cmp #&59 ; 'Y'                                                    ; 4405: c9 59       .Y  :a405[1]
    php                                                               ; 4407: 08          .   :a407[1]
    beq ca40c                                                         ; 4408: f0 02       ..  :a408[1]
    lda #&4e ; 'N'                                                    ; 440a: a9 4e       .N  :a40a[1]
; &440c referenced 1 time by &a408
.ca40c
    jsr c809f                                                         ; 440c: 20 9f 80     .. :a40c[1]
    plp                                                               ; 440f: 28          (   :a40f[1]
    rts                                                               ; 4410: 60          `   :a410[1]

; &4411 referenced 2 times by &a3da, &a401
.ca411
    jmp c9436                                                         ; 4411: 4c 36 94    L6. :a411[1]

; &4414 referenced 2 times by &a452, &a45b
.ca414
    jmp c8a6e                                                         ; 4414: 4c 6e 8a    Ln. :a414[1]

.sub_ca417
    jsr sub_ca324                                                     ; 4417: 20 24 a3     $. :a417[1]
    jsr sub_ca315                                                     ; 441a: 20 15 a3     .. :a41a[1]
    lda #0                                                            ; 441d: a9 00       ..  :a41d[1]
    sta l00c7                                                         ; 441f: 85 c7       ..  :a41f[1]
    sta l00c9                                                         ; 4421: 85 c9       ..  :a421[1]
    sta l00c8                                                         ; 4423: 85 c8       ..  :a423[1]
    sta l00c6                                                         ; 4425: 85 c6       ..  :a425[1]
    sta l00a8                                                         ; 4427: 85 a8       ..  :a427[1]
    jsr sub_ca379                                                     ; 4429: 20 79 a3     y. :a429[1]
    lda l10d1                                                         ; 442c: ad d1 10    ... :a42c[1]
    sta l00cd                                                         ; 442f: 85 cd       ..  :a42f[1]
    jsr c940c                                                         ; 4431: 20 0c 94     .. :a431[1]
    lda l0f07                                                         ; 4434: ad 07 0f    ... :a434[1]
    sta l00c4                                                         ; 4437: 85 c4       ..  :a437[1]
    lda l0f06                                                         ; 4439: ad 06 0f    ... :a439[1]
    and #3                                                            ; 443c: 29 03       ).  :a43c[1]
    sta l00c5                                                         ; 443e: 85 c5       ..  :a43e[1]
    jsr sub_ca384                                                     ; 4440: 20 84 a3     .. :a440[1]
    lda l10d2                                                         ; 4443: ad d2 10    ... :a443[1]
    sta l00cd                                                         ; 4446: 85 cd       ..  :a446[1]
    jsr c940c                                                         ; 4448: 20 0c 94     .. :a448[1]
    lda l0f06                                                         ; 444b: ad 06 0f    ... :a44b[1]
    and #3                                                            ; 444e: 29 03       ).  :a44e[1]
    cmp l00c5                                                         ; 4450: c5 c5       ..  :a450[1]
    bcc ca414                                                         ; 4452: 90 c0       ..  :a452[1]
    bne ca45d                                                         ; 4454: d0 07       ..  :a454[1]
    lda l0f07                                                         ; 4456: ad 07 0f    ... :a456[1]
    cmp l00c4                                                         ; 4459: c5 c4       ..  :a459[1]
    bcc ca414                                                         ; 445b: 90 b7       ..  :a45b[1]
; &445d referenced 1 time by &a454
.ca45d
    jsr sub_ca530                                                     ; 445d: 20 30 a5     0. :a45d[1]
    jmp c940c                                                         ; 4460: 4c 0c 94    L.. :a460[1]

.sub_ca463
    jsr sub_c99ac                                                     ; 4463: 20 ac 99     .. :a463[1]
    jsr sub_ca324                                                     ; 4466: 20 24 a3     $. :a466[1]
    jsr sub_ca14a                                                     ; 4469: 20 4a a1     J. :a469[1]
    jsr sub_c80ed                                                     ; 446c: 20 ed 80     .. :a46c[1]
    jsr sub_ca379                                                     ; 446f: 20 79 a3     y. :a46f[1]
    lda l10d1                                                         ; 4472: ad d1 10    ... :a472[1]
    jsr c8816                                                         ; 4475: 20 16 88     .. :a475[1]
    jsr c8225                                                         ; 4478: 20 25 82     %. :a478[1]
; &447b referenced 1 time by &a4de
.ca47b
    lda l00cc                                                         ; 447b: a5 cc       ..  :a47b[1]
    pha                                                               ; 447d: 48          H   :a47d[1]
    lda l00b6                                                         ; 447e: a5 b6       ..  :a47e[1]
    sta l00ab                                                         ; 4480: 85 ab       ..  :a480[1]
    jsr sub_c833a                                                     ; 4482: 20 3a 83     :. :a482[1]
    ldx #0                                                            ; 4485: a2 00       ..  :a485[1]
; &4487 referenced 1 time by &a49b
.loop_ca487
    lda l0e08,y                                                       ; 4487: b9 08 0e    ... :a487[1]
    sta l00c5,x                                                       ; 448a: 95 c5       ..  :a48a[1]
    sta l1050,x                                                       ; 448c: 9d 50 10    .P. :a48c[1]
    lda l0f08,y                                                       ; 448f: b9 08 0f    ... :a48f[1]
    sta l00bb,x                                                       ; 4492: 95 bb       ..  :a492[1]
    sta l1047,x                                                       ; 4494: 9d 47 10    .G. :a494[1]
    inx                                                               ; 4497: e8          .   :a497[1]
    iny                                                               ; 4498: c8          .   :a498[1]
    cpx #8                                                            ; 4499: e0 08       ..  :a499[1]
    bne loop_ca487                                                    ; 449b: d0 ea       ..  :a49b[1]
    lda l00c1                                                         ; 449d: a5 c1       ..  :a49d[1]
    jsr sub_c81b0                                                     ; 449f: 20 b0 81     .. :a49f[1]
    sta l00c3                                                         ; 44a2: 85 c3       ..  :a4a2[1]
    lda l00bf                                                         ; 44a4: a5 bf       ..  :a4a4[1]
    clc                                                               ; 44a6: 18          .   :a4a6[1]
    adc #&ff                                                          ; 44a7: 69 ff       i.  :a4a7[1]
    lda l00c0                                                         ; 44a9: a5 c0       ..  :a4a9[1]
    adc #0                                                            ; 44ab: 69 00       i.  :a4ab[1]
    sta l00c4                                                         ; 44ad: 85 c4       ..  :a4ad[1]
    lda l00c3                                                         ; 44af: a5 c3       ..  :a4af[1]
    adc #0                                                            ; 44b1: 69 00       i.  :a4b1[1]
    sta l00c5                                                         ; 44b3: 85 c5       ..  :a4b3[1]
    lda l104e                                                         ; 44b5: ad 4e 10    .N. :a4b5[1]
    sta l00c6                                                         ; 44b8: 85 c6       ..  :a4b8[1]
    lda l104d                                                         ; 44ba: ad 4d 10    .M. :a4ba[1]
    and #3                                                            ; 44bd: 29 03       ).  :a4bd[1]
    sta l00c7                                                         ; 44bf: 85 c7       ..  :a4bf[1]
    lda #&ff                                                          ; 44c1: a9 ff       ..  :a4c1[1]
    sta l00a8                                                         ; 44c3: 85 a8       ..  :a4c3[1]
    jsr sub_ca530                                                     ; 44c5: 20 30 a5     0. :a4c5[1]
    jsr sub_ca379                                                     ; 44c8: 20 79 a3     y. :a4c8[1]
    lda l10d1                                                         ; 44cb: ad d1 10    ... :a4cb[1]
    jsr c8816                                                         ; 44ce: 20 16 88     .. :a4ce[1]
    jsr sub_c8380                                                     ; 44d1: 20 80 83     .. :a4d1[1]
    lda l00ab                                                         ; 44d4: a5 ab       ..  :a4d4[1]
    sta l00b6                                                         ; 44d6: 85 b6       ..  :a4d6[1]
    pla                                                               ; 44d8: 68          h   :a4d8[1]
    sta l00cc                                                         ; 44d9: 85 cc       ..  :a4d9[1]
    jsr sub_c8280                                                     ; 44db: 20 80 82     .. :a4db[1]
    bcs ca47b                                                         ; 44de: b0 9b       ..  :a4de[1]
    rts                                                               ; 44e0: 60          `   :a4e0[1]

; &44e1 referenced 1 time by &a56d
.sub_ca4e1
    jsr sub_ca51f                                                     ; 44e1: 20 1f a5     .. :a4e1[1]
    jsr sub_ca384                                                     ; 44e4: 20 84 a3     .. :a4e4[1]
    lda l10d2                                                         ; 44e7: ad d2 10    ... :a4e7[1]
    sta l00cd                                                         ; 44ea: 85 cd       ..  :a4ea[1]
    lda l00cc                                                         ; 44ec: a5 cc       ..  :a4ec[1]
    pha                                                               ; 44ee: 48          H   :a4ee[1]
    jsr sub_c8380                                                     ; 44ef: 20 80 83     .. :a4ef[1]
    jsr sub_c826d                                                     ; 44f2: 20 6d 82     m. :a4f2[1]
    bcc ca4fa                                                         ; 44f5: 90 03       ..  :a4f5[1]
    jsr sub_c830a                                                     ; 44f7: 20 0a 83     .. :a4f7[1]
; &44fa referenced 1 time by &a4f5
.ca4fa
    pla                                                               ; 44fa: 68          h   :a4fa[1]
    sta l00cc                                                         ; 44fb: 85 cc       ..  :a4fb[1]
    jsr sub_c8b4d                                                     ; 44fd: 20 4d 8b     M. :a4fd[1]
    jsr sub_c8b64                                                     ; 4500: 20 64 8b     d. :a500[1]
    lda l00c2                                                         ; 4503: a5 c2       ..  :a503[1]
    jsr sub_c81b0                                                     ; 4505: 20 b0 81     .. :a505[1]
    sta l00c4                                                         ; 4508: 85 c4       ..  :a508[1]
    jsr sub_c8ab3                                                     ; 450a: 20 b3 8a     .. :a50a[1]
    lda l00c2                                                         ; 450d: a5 c2       ..  :a50d[1]
    and #3                                                            ; 450f: 29 03       ).  :a50f[1]
    pha                                                               ; 4511: 48          H   :a511[1]
    lda l00c3                                                         ; 4512: a5 c3       ..  :a512[1]
    pha                                                               ; 4514: 48          H   :a514[1]
    jsr sub_ca51f                                                     ; 4515: 20 1f a5     .. :a515[1]
    pla                                                               ; 4518: 68          h   :a518[1]
    sta l00c8                                                         ; 4519: 85 c8       ..  :a519[1]
    pla                                                               ; 451b: 68          h   :a51b[1]
    sta l00c9                                                         ; 451c: 85 c9       ..  :a51c[1]
    rts                                                               ; 451e: 60          `   :a51e[1]

; &451f referenced 2 times by &a4e1, &a515
.sub_ca51f
    ldx #&11                                                          ; 451f: a2 11       ..  :a51f[1]
; &4521 referenced 1 time by &a52d
.loop_ca521
    lda l1045,x                                                       ; 4521: bd 45 10    .E. :a521[1]
    ldy l00ba,x                                                       ; 4524: b4 ba       ..  :a524[1]
    sta l00ba,x                                                       ; 4526: 95 ba       ..  :a526[1]
    tya                                                               ; 4528: 98          .   :a528[1]
    sta l1045,x                                                       ; 4529: 9d 45 10    .E. :a529[1]
    dex                                                               ; 452c: ca          .   :a52c[1]
    bpl loop_ca521                                                    ; 452d: 10 f2       ..  :a52d[1]
    rts                                                               ; 452f: 60          `   :a52f[1]

; &4530 referenced 3 times by &a307, &a45d, &a4c5
.sub_ca530
    lda #0                                                            ; 4530: a9 00       ..  :a530[1]
    sta l00bc                                                         ; 4532: 85 bc       ..  :a532[1]
    sta l00c0                                                         ; 4534: 85 c0       ..  :a534[1]
    beq ca5ab                                                         ; 4536: f0 73       .s  :a536[1]
; &4538 referenced 1 time by &a5af
.ca538
    lda l00c4                                                         ; 4538: a5 c4       ..  :a538[1]
    tay                                                               ; 453a: a8          .   :a53a[1]
    cmp l10d0                                                         ; 453b: cd d0 10    ... :a53b[1]
    lda l00c5                                                         ; 453e: a5 c5       ..  :a53e[1]
    sbc #0                                                            ; 4540: e9 00       ..  :a540[1]
    bcc ca547                                                         ; 4542: 90 03       ..  :a542[1]
    ldy l10d0                                                         ; 4544: ac d0 10    ... :a544[1]
; &4547 referenced 1 time by &a542
.ca547
    sty l00c1                                                         ; 4547: 84 c1       ..  :a547[1]
    lda l00c6                                                         ; 4549: a5 c6       ..  :a549[1]
    sta l00c3                                                         ; 454b: 85 c3       ..  :a54b[1]
    lda l00c7                                                         ; 454d: a5 c7       ..  :a54d[1]
    sta l00c2                                                         ; 454f: 85 c2       ..  :a54f[1]
    lda l10cf                                                         ; 4551: ad cf 10    ... :a551[1]
    sta l00bd                                                         ; 4554: 85 bd       ..  :a554[1]
    lda l10d1                                                         ; 4556: ad d1 10    ... :a556[1]
    sta l00cd                                                         ; 4559: 85 cd       ..  :a559[1]
    jsr sub_ca379                                                     ; 455b: 20 79 a3     y. :a55b[1]
    jsr sub_ca5b2                                                     ; 455e: 20 b2 a5     .. :a55e[1]
    jsr sub_c8855                                                     ; 4561: 20 55 88     U. :a561[1]
    lda l10d2                                                         ; 4564: ad d2 10    ... :a564[1]
    sta l00cd                                                         ; 4567: 85 cd       ..  :a567[1]
    bit l00a8                                                         ; 4569: 24 a8       $.  :a569[1]
    bpl ca574                                                         ; 456b: 10 07       ..  :a56b[1]
    jsr sub_ca4e1                                                     ; 456d: 20 e1 a4     .. :a56d[1]
    lda #0                                                            ; 4570: a9 00       ..  :a570[1]
    sta l00a8                                                         ; 4572: 85 a8       ..  :a572[1]
; &4574 referenced 1 time by &a56b
.ca574
    lda l00c8                                                         ; 4574: a5 c8       ..  :a574[1]
    sta l00c3                                                         ; 4576: 85 c3       ..  :a576[1]
    lda l00c9                                                         ; 4578: a5 c9       ..  :a578[1]
    sta l00c2                                                         ; 457a: 85 c2       ..  :a57a[1]
    lda l10cf                                                         ; 457c: ad cf 10    ... :a57c[1]
    sta l00bd                                                         ; 457f: 85 bd       ..  :a57f[1]
    jsr sub_ca384                                                     ; 4581: 20 84 a3     .. :a581[1]
    jsr sub_ca5b2                                                     ; 4584: 20 b2 a5     .. :a584[1]
    jsr sub_c8862                                                     ; 4587: 20 62 88     b. :a587[1]
    lda l00c1                                                         ; 458a: a5 c1       ..  :a58a[1]
    clc                                                               ; 458c: 18          .   :a58c[1]
    adc l00c8                                                         ; 458d: 65 c8       e.  :a58d[1]
    sta l00c8                                                         ; 458f: 85 c8       ..  :a58f[1]
    bcc ca595                                                         ; 4591: 90 02       ..  :a591[1]
    inc l00c9                                                         ; 4593: e6 c9       ..  :a593[1]
; &4595 referenced 1 time by &a591
.ca595
    lda l00c1                                                         ; 4595: a5 c1       ..  :a595[1]
    clc                                                               ; 4597: 18          .   :a597[1]
    adc l00c6                                                         ; 4598: 65 c6       e.  :a598[1]
    sta l00c6                                                         ; 459a: 85 c6       ..  :a59a[1]
    bcc ca5a0                                                         ; 459c: 90 02       ..  :a59c[1]
    inc l00c7                                                         ; 459e: e6 c7       ..  :a59e[1]
; &45a0 referenced 1 time by &a59c
.ca5a0
    sec                                                               ; 45a0: 38          8   :a5a0[1]
    lda l00c4                                                         ; 45a1: a5 c4       ..  :a5a1[1]
    sbc l00c1                                                         ; 45a3: e5 c1       ..  :a5a3[1]
    sta l00c4                                                         ; 45a5: 85 c4       ..  :a5a5[1]
    bcs ca5ab                                                         ; 45a7: b0 02       ..  :a5a7[1]
    dec l00c5                                                         ; 45a9: c6 c5       ..  :a5a9[1]
; &45ab referenced 2 times by &a536, &a5a7
.ca5ab
    lda l00c4                                                         ; 45ab: a5 c4       ..  :a5ab[1]
    ora l00c5                                                         ; 45ad: 05 c5       ..  :a5ad[1]
    bne ca538                                                         ; 45af: d0 87       ..  :a5af[1]
    rts                                                               ; 45b1: 60          `   :a5b1[1]

; &45b2 referenced 2 times by &a55e, &a584
.sub_ca5b2
    lda #&ff                                                          ; 45b2: a9 ff       ..  :a5b2[1]
    sta l1074                                                         ; 45b4: 8d 74 10    .t. :a5b4[1]
    sta l1075                                                         ; 45b7: 8d 75 10    .u. :a5b7[1]
    rts                                                               ; 45ba: 60          `   :a5ba[1]

.sub_ca5bb
    lda #0                                                            ; 45bb: a9 00       ..  :a5bb[1]
    beq ca5c4                                                         ; 45bd: f0 05       ..  :a5bd[1]
.sub_ca5bf
    lda #&ff                                                          ; 45bf: a9 ff       ..  :a5bf[1]
    sta l1082                                                         ; 45c1: 8d 82 10    ... :a5c1[1]
; &45c4 referenced 1 time by &a5bd
.ca5c4
    sta l00c9                                                         ; 45c4: 85 c9       ..  :a5c4[1]
    sta l1090                                                         ; 45c6: 8d 90 10    ... :a5c6[1]
    bpl ca5e5                                                         ; 45c9: 10 1a       ..  :a5c9[1]
    jsr sub_ca14a                                                     ; 45cb: 20 4a a1     J. :a5cb[1]
    jsr sub_c8456                                                     ; 45ce: 20 56 84     V. :a5ce[1]
    sta l109f                                                         ; 45d1: 8d 9f 10    ... :a5d1[1]
    bcs ca5e2                                                         ; 45d4: b0 0c       ..  :a5d4[1]
    cmp #&23 ; '#'                                                    ; 45d6: c9 23       .#  :a5d6[1]
    beq ca5e5                                                         ; 45d8: f0 0b       ..  :a5d8[1]
    cmp #&28 ; '('                                                    ; 45da: c9 28       .(  :a5da[1]
    beq ca5e5                                                         ; 45dc: f0 07       ..  :a5dc[1]
    cmp #&50 ; 'P'                                                    ; 45de: c9 50       .P  :a5de[1]
    beq ca5e5                                                         ; 45e0: f0 03       ..  :a5e0[1]
; &45e2 referenced 1 time by &a5d4
.ca5e2
    jmp ca14f                                                         ; 45e2: 4c 4f a1    LO. :a5e2[1]

; &45e5 referenced 4 times by &a5c9, &a5d8, &a5dc, &a5e0
.ca5e5
    jsr clc_jmp_gsinit                                                ; 45e5: 20 4c 87     L. :a5e5[1]
    sty l00ca                                                         ; 45e8: 84 ca       ..  :a5e8[1]
    bne ca637                                                         ; 45ea: d0 4b       .K  :a5ea[1]
    bit l00c9                                                         ; 45ec: 24 c9       $.  :a5ec[1]
    bmi ca5fb                                                         ; 45ee: 30 0b       0.  :a5ee[1]
    jsr print_inline_l809f_top_bit_clear                              ; 45f0: 20 77 80     w. :a5f0[1]
    equs "Verify"                                                     ; 45f3: 56 65 72... Ver :a5f3[1]

    bcc ca605                                                         ; 45f9: 90 0a       ..  :a5f9[1]
; &45fb referenced 1 time by &a5ee
.ca5fb
    jsr print_inline_l809f_top_bit_clear                              ; 45fb: 20 77 80     w. :a5fb[1]
    equs "Format"                                                     ; 45fe: 46 6f 72... For :a5fe[1]

    nop                                                               ; 4604: ea          .   :a604[1]
; &4605 referenced 1 time by &a5f9
.ca605
    jsr print_inline_l809f_top_bit_clear                              ; 4605: 20 77 80     w. :a605[1]
    equs " which drive ? "                                            ; 4608: 20 77 68...  wh :a608[1]

    nop                                                               ; 4617: ea          .   :a617[1]
    jsr osrdch                                                        ; 4618: 20 e0 ff     .. :a618[1]
    bcs ca65d                                                         ; 461b: b0 40       .@  :a61b[1]
    cmp #&20 ; ' '                                                    ; 461d: c9 20       .   :a61d[1]
    bcc ca660                                                         ; 461f: 90 3f       .?  :a61f[1]
    jsr c809f                                                         ; 4621: 20 9f 80     .. :a621[1]
    sec                                                               ; 4624: 38          8   :a624[1]
    sbc #&30 ; '0'                                                    ; 4625: e9 30       .0  :a625[1]
    bcc ca660                                                         ; 4627: 90 37       .7  :a627[1]
    cmp #4                                                            ; 4629: c9 04       ..  :a629[1]
    bcs ca660                                                         ; 462b: b0 33       .3  :a62b[1]
    sta l00cd                                                         ; 462d: 85 cd       ..  :a62d[1]
    jsr ca3dc                                                         ; 462f: 20 dc a3     .. :a62f[1]
    ldy l00ca                                                         ; 4632: a4 ca       ..  :a632[1]
    jmp ca63a                                                         ; 4634: 4c 3a a6    L:. :a634[1]

; &4637 referenced 2 times by &a5ea, &a65a
.ca637
    jsr c8b8b                                                         ; 4637: 20 8b 8b     .. :a637[1]
; &463a referenced 1 time by &a634
.ca63a
    sty l00ca                                                         ; 463a: 84 ca       ..  :a63a[1]
    bit l00c9                                                         ; 463c: 24 c9       $.  :a63c[1]
    bpl ca647                                                         ; 463e: 10 07       ..  :a63e[1]
    ldx l00cd                                                         ; 4640: a6 cd       ..  :a640[1]
    lda #0                                                            ; 4642: a9 00       ..  :a642[1]
    sta l10de,x                                                       ; 4644: 9d de 10    ... :a644[1]
; &4647 referenced 1 time by &a63e
.ca647
    bit l1090                                                         ; 4647: 2c 90 10    ,.. :a647[1]
    bpl ca652                                                         ; 464a: 10 06       ..  :a64a[1]
    jsr sub_ca315                                                     ; 464c: 20 15 a3     .. :a64c[1]
    jsr sub_c9a8d                                                     ; 464f: 20 8d 9a     .. :a64f[1]
; &4652 referenced 1 time by &a64a
.ca652
    jsr sub_ca663                                                     ; 4652: 20 63 a6     c. :a652[1]
    ldy l00ca                                                         ; 4655: a4 ca       ..  :a655[1]
    jsr clc_jmp_gsinit                                                ; 4657: 20 4c 87     L. :a657[1]
    bne ca637                                                         ; 465a: d0 db       ..  :a65a[1]
    rts                                                               ; 465c: 60          `   :a65c[1]

; &465d referenced 1 time by &a61b
.ca65d
    jmp c9436                                                         ; 465d: 4c 36 94    L6. :a65d[1]

; &4660 referenced 3 times by &a61f, &a627, &a62b
.ca660
    jmp c8ba2                                                         ; 4660: 4c a2 8b    L.. :a660[1]

; &4663 referenced 1 time by &a652
.sub_ca663
    bit l00c9                                                         ; 4663: 24 c9       $.  :a663[1]
    bmi ca675                                                         ; 4665: 30 0e       0.  :a665[1]
    jsr print_inline_l809f_top_bit_clear                              ; 4667: 20 77 80     w. :a667[1]
    equs "Verifying"                                                  ; 466a: 56 65 72... Ver :a66a[1]

    bcc ca68a                                                         ; 4673: 90 15       ..  :a673[1]
; &4675 referenced 1 time by &a665
.ca675
    jsr sub_ca76c                                                     ; 4675: 20 6c a7     l. :a675[1]
    jsr print_inline_l809f_top_bit_clear                              ; 4678: 20 77 80     w. :a678[1]
    equs "Formatting"                                                 ; 467b: 46 6f 72... For :a67b[1]

    ldx l00cd                                                         ; 4685: a6 cd       ..  :a685[1]
    stx l1090                                                         ; 4687: 8e 90 10    ... :a687[1]
; &468a referenced 1 time by &a673
.ca68a
    jsr print_inline_l809f_top_bit_clear                              ; 468a: 20 77 80     w. :a68a[1]
    equs " drive "                                                    ; 468d: 20 64 72...  dr :a68d[1]

    lda l00cd                                                         ; 4694: a5 cd       ..  :a694[1]
    jsr sub_c80c3                                                     ; 4696: 20 c3 80     .. :a696[1]
    jsr print_inline_l809f_top_bit_clear                              ; 4699: 20 77 80     w. :a699[1]
    equs " track   "                                                  ; 469c: 20 74 72...  tr :a69c[1]

    nop                                                               ; 46a5: ea          .   :a6a5[1]
    bit l00c9                                                         ; 46a6: 24 c9       $.  :a6a6[1]
    bmi ca6b6                                                         ; 46a8: 30 0c       0.  :a6a8[1]
    jsr sub_ca7ce                                                     ; 46aa: 20 ce a7     .. :a6aa[1]
    txa                                                               ; 46ad: 8a          .   :a6ad[1]
    bne ca6b3                                                         ; 46ae: d0 03       ..  :a6ae[1]
    jmp ca3dc                                                         ; 46b0: 4c dc a3    L.. :a6b0[1]

; &46b3 referenced 1 time by &a6ae
.ca6b3
    sta l109f                                                         ; 46b3: 8d 9f 10    ... :a6b3[1]
; &46b6 referenced 1 time by &a6a8
.ca6b6
    lda #0                                                            ; 46b6: a9 00       ..  :a6b6[1]
    sta l1097                                                         ; 46b8: 8d 97 10    ... :a6b8[1]
; &46bb referenced 1 time by &a731
.ca6bb
    lda #8                                                            ; 46bb: a9 08       ..  :a6bb[1]
    jsr c809f                                                         ; 46bd: 20 9f 80     .. :a6bd[1]
    jsr c809f                                                         ; 46c0: 20 9f 80     .. :a6c0[1]
    lda l1097                                                         ; 46c3: ad 97 10    ... :a6c3[1]
    jsr sub_c80bb                                                     ; 46c6: 20 bb 80     .. :a6c6[1]
    lda #6                                                            ; 46c9: a9 06       ..  :a6c9[1]
    sta l109d                                                         ; 46cb: 8d 9d 10    ... :a6cb[1]
; &46ce referenced 1 time by &a708
.ca6ce
    jsr sub_ca73d                                                     ; 46ce: 20 3d a7     =. :a6ce[1]
    bit l00c9                                                         ; 46d1: 24 c9       $.  :a6d1[1]
    bpl ca6e2                                                         ; 46d3: 10 0d       ..  :a6d3[1]
    jsr sub_ca788                                                     ; 46d5: 20 88 a7     .. :a6d5[1]
    ldx #&90                                                          ; 46d8: a2 90       ..  :a6d8[1]
    ldy #&10                                                          ; 46da: a0 10       ..  :a6da[1]
    jsr c91af                                                         ; 46dc: 20 af 91     .. :a6dc[1]
    tax                                                               ; 46df: aa          .   :a6df[1]
    bne ca70a                                                         ; 46e0: d0 28       .(  :a6e0[1]
; &46e2 referenced 1 time by &a6d3
.ca6e2
    lda #0                                                            ; 46e2: a9 00       ..  :a6e2[1]
    sta l1098                                                         ; 46e4: 8d 98 10    ... :a6e4[1]
    lda l1099                                                         ; 46e7: ad 99 10    ... :a6e7[1]
    and #&1f                                                          ; 46ea: 29 1f       ).  :a6ea[1]
    sta l1099                                                         ; 46ec: 8d 99 10    ... :a6ec[1]
    lda #3                                                            ; 46ef: a9 03       ..  :a6ef[1]
    sta l1095                                                         ; 46f1: 8d 95 10    ... :a6f1[1]
    lda #&5f ; '_'                                                    ; 46f4: a9 5f       ._  :a6f4[1]
    sta l1096                                                         ; 46f6: 8d 96 10    ... :a6f6[1]
    jsr sub_c9432                                                     ; 46f9: 20 32 94     2. :a6f9[1]
    ldx #&90                                                          ; 46fc: a2 90       ..  :a6fc[1]
    ldy #&10                                                          ; 46fe: a0 10       ..  :a6fe[1]
    jsr c91af                                                         ; 4700: 20 af 91     .. :a700[1]
    beq ca712                                                         ; 4703: f0 0d       ..  :a703[1]
    dec l109d                                                         ; 4705: ce 9d 10    ... :a705[1]
    bne ca6ce                                                         ; 4708: d0 c4       ..  :a708[1]
; &470a referenced 1 time by &a6e0
.ca70a
    jsr print_inline_l809f_top_bit_clear                              ; 470a: 20 77 80     w. :a70a[1]
    equs "?"                                                          ; 470d: 3f          ?   :a70d[1]

    nop                                                               ; 470e: ea          .   :a70e[1]
    jmp c94c2                                                         ; 470f: 4c c2 94    L.. :a70f[1]

; &4712 referenced 1 time by &a703
.ca712
    lda l109d                                                         ; 4712: ad 9d 10    ... :a712[1]
    cmp #6                                                            ; 4715: c9 06       ..  :a715[1]
    beq ca721                                                         ; 4717: f0 08       ..  :a717[1]
    jsr print_inline_l809f_top_bit_clear                              ; 4719: 20 77 80     w. :a719[1]
    equs "?   "                                                       ; 471c: 3f 20 20... ?   :a71c[1]

    nop                                                               ; 4720: ea          .   :a720[1]
; &4721 referenced 1 time by &a717
.ca721
    bit l00c9                                                         ; 4721: 24 c9       $.  :a721[1]
    bpl ca728                                                         ; 4723: 10 03       ..  :a723[1]
    jsr sub_ca779                                                     ; 4725: 20 79 a7     y. :a725[1]
; &4728 referenced 1 time by &a723
.ca728
    inc l1097                                                         ; 4728: ee 97 10    ... :a728[1]
    lda l1097                                                         ; 472b: ad 97 10    ... :a72b[1]
    cmp l109f                                                         ; 472e: cd 9f 10    ... :a72e[1]
    bne ca6bb                                                         ; 4731: d0 88       ..  :a731[1]
    bit l00c9                                                         ; 4733: 24 c9       $.  :a733[1]
    bpl ca73a                                                         ; 4735: 10 03       ..  :a735[1]
    jsr sub_c93f1                                                     ; 4737: 20 f1 93     .. :a737[1]
; &473a referenced 1 time by &a735
.ca73a
    jmp ca3dc                                                         ; 473a: 4c dc a3    L.. :a73a[1]

; &473d referenced 1 time by &a6ce
.sub_ca73d
    ldx #0                                                            ; 473d: a2 00       ..  :a73d[1]
    stx l1091                                                         ; 473f: 8e 91 10    ... :a73f[1]
    stx l109a                                                         ; 4742: 8e 9a 10    ... :a742[1]
    dex                                                               ; 4745: ca          .   :a745[1]
    stx l1093                                                         ; 4746: 8e 93 10    ... :a746[1]
    stx l1094                                                         ; 4749: 8e 94 10    ... :a749[1]
    lda l10cf                                                         ; 474c: ad cf 10    ... :a74c[1]
    sta l1092                                                         ; 474f: 8d 92 10    ... :a74f[1]
    lda #5                                                            ; 4752: a9 05       ..  :a752[1]
    sta l1095                                                         ; 4754: 8d 95 10    ... :a754[1]
    lda #&63 ; 'c'                                                    ; 4757: a9 63       .c  :a757[1]
    sta l1096                                                         ; 4759: 8d 96 10    ... :a759[1]
    lda #&2a ; '*'                                                    ; 475c: a9 2a       .*  :a75c[1]
    sta l1099                                                         ; 475e: 8d 99 10    ... :a75e[1]
    ldx #&10                                                          ; 4761: a2 10       ..  :a761[1]
    ldy #&13                                                          ; 4763: a0 13       ..  :a763[1]
    stx l109b                                                         ; 4765: 8e 9b 10    ... :a765[1]
    sty l1098                                                         ; 4768: 8c 98 10    ... :a768[1]
    rts                                                               ; 476b: 60          `   :a76b[1]

; &476c referenced 1 time by &a675
.sub_ca76c
    lda #0                                                            ; 476c: a9 00       ..  :a76c[1]
    tay                                                               ; 476e: a8          .   :a76e[1]
; &476f referenced 1 time by &a776
.loop_ca76f
    sta l0e00,y                                                       ; 476f: 99 00 0e    ... :a76f[1]
    sta l0f00,y                                                       ; 4772: 99 00 0f    ... :a772[1]
    iny                                                               ; 4775: c8          .   :a775[1]
    bne loop_ca76f                                                    ; 4776: d0 f7       ..  :a776[1]
    rts                                                               ; 4778: 60          `   :a778[1]

; &4779 referenced 1 time by &a725
.sub_ca779
    lda #&0a                                                          ; 4779: a9 0a       ..  :a779[1]
    clc                                                               ; 477b: 18          .   :a77b[1]
    adc l0f07                                                         ; 477c: 6d 07 0f    m.. :a77c[1]
    sta l0f07                                                         ; 477f: 8d 07 0f    ... :a77f[1]
    bcc ca787                                                         ; 4782: 90 03       ..  :a782[1]
    inc l0f06                                                         ; 4784: ee 06 0f    ... :a784[1]
; &4787 referenced 1 time by &a782
.ca787
    rts                                                               ; 4787: 60          `   :a787[1]

; &4788 referenced 1 time by &a6d5
.sub_ca788
    lda #0                                                            ; 4788: a9 00       ..  :a788[1]
    sta l00b0                                                         ; 478a: 85 b0       ..  :a78a[1]
    lda l10cf                                                         ; 478c: ad cf 10    ... :a78c[1]
    sta l00b1                                                         ; 478f: 85 b1       ..  :a78f[1]
    lda #&0a                                                          ; 4791: a9 0a       ..  :a791[1]
    sta l00b2                                                         ; 4793: 85 b2       ..  :a793[1]
    lda l1097                                                         ; 4795: ad 97 10    ... :a795[1]
    beq ca7a4                                                         ; 4798: f0 0a       ..  :a798[1]
    ldy #2                                                            ; 479a: a0 02       ..  :a79a[1]
    lda (l00b0),y                                                     ; 479c: b1 b0       ..  :a79c[1]
    clc                                                               ; 479e: 18          .   :a79e[1]
    adc #7                                                            ; 479f: 69 07       i.  :a79f[1]
    jsr sub_ca7c5                                                     ; 47a1: 20 c5 a7     .. :a7a1[1]
; &47a4 referenced 1 time by &a798
.ca7a4
    tax                                                               ; 47a4: aa          .   :a7a4[1]
    ldy #0                                                            ; 47a5: a0 00       ..  :a7a5[1]
; &47a7 referenced 1 time by &a7c1
.loop_ca7a7
    lda l1097                                                         ; 47a7: ad 97 10    ... :a7a7[1]
    sta (l00b0),y                                                     ; 47aa: 91 b0       ..  :a7aa[1]
    iny                                                               ; 47ac: c8          .   :a7ac[1]
    lda #0                                                            ; 47ad: a9 00       ..  :a7ad[1]
    sta (l00b0),y                                                     ; 47af: 91 b0       ..  :a7af[1]
    iny                                                               ; 47b1: c8          .   :a7b1[1]
    txa                                                               ; 47b2: 8a          .   :a7b2[1]
    sta (l00b0),y                                                     ; 47b3: 91 b0       ..  :a7b3[1]
    iny                                                               ; 47b5: c8          .   :a7b5[1]
    lda #1                                                            ; 47b6: a9 01       ..  :a7b6[1]
    sta (l00b0),y                                                     ; 47b8: 91 b0       ..  :a7b8[1]
    iny                                                               ; 47ba: c8          .   :a7ba[1]
    inx                                                               ; 47bb: e8          .   :a7bb[1]
    jsr sub_ca7c4                                                     ; 47bc: 20 c4 a7     .. :a7bc[1]
    dec l00b2                                                         ; 47bf: c6 b2       ..  :a7bf[1]
    bne loop_ca7a7                                                    ; 47c1: d0 e4       ..  :a7c1[1]
    rts                                                               ; 47c3: 60          `   :a7c3[1]

; &47c4 referenced 1 time by &a7bc
.sub_ca7c4
    txa                                                               ; 47c4: 8a          .   :a7c4[1]
; &47c5 referenced 1 time by &a7a1
.sub_ca7c5
    sec                                                               ; 47c5: 38          8   :a7c5[1]
; &47c6 referenced 1 time by &a7c8
.loop_ca7c6
    sbc #&0a                                                          ; 47c6: e9 0a       ..  :a7c6[1]
    bcs loop_ca7c6                                                    ; 47c8: b0 fc       ..  :a7c8[1]
    adc #&0a                                                          ; 47ca: 69 0a       i.  :a7ca[1]
    tax                                                               ; 47cc: aa          .   :a7cc[1]
    rts                                                               ; 47cd: 60          `   :a7cd[1]

; &47ce referenced 1 time by &a6aa
.sub_ca7ce
    jsr sub_c93f5                                                     ; 47ce: 20 f5 93     .. :a7ce[1]
    lda l0f06                                                         ; 47d1: ad 06 0f    ... :a7d1[1]
    and #3                                                            ; 47d4: 29 03       ).  :a7d4[1]
    tax                                                               ; 47d6: aa          .   :a7d6[1]
    lda l0f07                                                         ; 47d7: ad 07 0f    ... :a7d7[1]
    ldy #&0a                                                          ; 47da: a0 0a       ..  :a7da[1]
    sty l00b0                                                         ; 47dc: 84 b0       ..  :a7dc[1]
    ldy #&ff                                                          ; 47de: a0 ff       ..  :a7de[1]
; &47e0 referenced 1 time by &a7e7
.loop_ca7e0
    sec                                                               ; 47e0: 38          8   :a7e0[1]
; &47e1 referenced 1 time by &a7e4
.loop_ca7e1
    iny                                                               ; 47e1: c8          .   :a7e1[1]
    sbc l00b0                                                         ; 47e2: e5 b0       ..  :a7e2[1]
    bcs loop_ca7e1                                                    ; 47e4: b0 fb       ..  :a7e4[1]
    dex                                                               ; 47e6: ca          .   :a7e6[1]
    bpl loop_ca7e0                                                    ; 47e7: 10 f7       ..  :a7e7[1]
    adc l00b0                                                         ; 47e9: 65 b0       e.  :a7e9[1]
    pha                                                               ; 47eb: 48          H   :a7eb[1]
    tya                                                               ; 47ec: 98          .   :a7ec[1]
    tax                                                               ; 47ed: aa          .   :a7ed[1]
    pla                                                               ; 47ee: 68          h   :a7ee[1]
    beq ca7f2                                                         ; 47ef: f0 01       ..  :a7ef[1]
    inx                                                               ; 47f1: e8          .   :a7f1[1]
; &47f2 referenced 1 time by &a7ef
.ca7f2
    rts                                                               ; 47f2: 60          `   :a7f2[1]

.sub_ca7f3
    sec                                                               ; 47f3: 38          8   :a7f3[1]
    bcs ca7f7                                                         ; 47f4: b0 01       ..  :a7f4[1]
.sub_ca7f6
    clc                                                               ; 47f6: 18          .   :a7f6[1]
; &47f7 referenced 1 time by &a7f4
.ca7f7
    ror l00c6                                                         ; 47f7: 66 c6       f.  :a7f7[1]
    jsr sub_c8b86                                                     ; 47f9: 20 86 8b     .. :a7f9[1]
    jsr sub_c8380                                                     ; 47fc: 20 80 83     .. :a7fc[1]
    bit l00c6                                                         ; 47ff: 24 c6       $.  :a7ff[1]
    bmi ca818                                                         ; 4801: 30 15       0.  :a801[1]
    jsr print_inline_osasci_top_bit_clear                             ; 4803: 20 9c a9     .. :a803[1]
    equs "Address :  Length", &0d                                     ; 4806: 41 64 64... Add :a806[1]

; &4818 referenced 1 time by &a801
.ca818
    lda l0f06                                                         ; 4818: ad 06 0f    ... :a818[1]
    and #3                                                            ; 481b: 29 03       ).  :a81b[1]
    sta l00c5                                                         ; 481d: 85 c5       ..  :a81d[1]
    sta l00c2                                                         ; 481f: 85 c2       ..  :a81f[1]
    lda l0f07                                                         ; 4821: ad 07 0f    ... :a821[1]
    sta l00c4                                                         ; 4824: 85 c4       ..  :a824[1]
    sec                                                               ; 4826: 38          8   :a826[1]
    sbc #2                                                            ; 4827: e9 02       ..  :a827[1]
    sta l00c1                                                         ; 4829: 85 c1       ..  :a829[1]
    bcs ca82f                                                         ; 482b: b0 02       ..  :a82b[1]
    dec l00c2                                                         ; 482d: c6 c2       ..  :a82d[1]
; &482f referenced 1 time by &a82b
.ca82f
    lda #2                                                            ; 482f: a9 02       ..  :a82f[1]
    sta l00bb                                                         ; 4831: 85 bb       ..  :a831[1]
    lda #0                                                            ; 4833: a9 00       ..  :a833[1]
    sta l00bc                                                         ; 4835: 85 bc       ..  :a835[1]
    sta l00bf                                                         ; 4837: 85 bf       ..  :a837[1]
    sta l00c0                                                         ; 4839: 85 c0       ..  :a839[1]
    lda l0f05                                                         ; 483b: ad 05 0f    ... :a83b[1]
    and #&f8                                                          ; 483e: 29 f8       ).  :a83e[1]
    tay                                                               ; 4840: a8          .   :a840[1]
    beq ca86b                                                         ; 4841: f0 28       .(  :a841[1]
    bne ca856                                                         ; 4843: d0 11       ..  :a843[1]
; &4845 referenced 2 times by &a869, &a889
.ca845
    jsr sub_ca8e2                                                     ; 4845: 20 e2 a8     .. :a845[1]
    jsr sub_c82b2                                                     ; 4848: 20 b2 82     .. :a848[1]
    lda l00c4                                                         ; 484b: a5 c4       ..  :a84b[1]
    sec                                                               ; 484d: 38          8   :a84d[1]
    sbc l00bb                                                         ; 484e: e5 bb       ..  :a84e[1]
    lda l00c5                                                         ; 4850: a5 c5       ..  :a850[1]
    sbc l00bc                                                         ; 4852: e5 bc       ..  :a852[1]
    bcc ca86b                                                         ; 4854: 90 15       ..  :a854[1]
; &4856 referenced 1 time by &a843
.ca856
    lda l0f07,y                                                       ; 4856: b9 07 0f    ... :a856[1]
    sec                                                               ; 4859: 38          8   :a859[1]
    sbc l00bb                                                         ; 485a: e5 bb       ..  :a85a[1]
    sta l00c1                                                         ; 485c: 85 c1       ..  :a85c[1]
    php                                                               ; 485e: 08          .   :a85e[1]
    lda l0f06,y                                                       ; 485f: b9 06 0f    ... :a85f[1]
    and #3                                                            ; 4862: 29 03       ).  :a862[1]
    plp                                                               ; 4864: 28          (   :a864[1]
    sbc l00bc                                                         ; 4865: e5 bc       ..  :a865[1]
    sta l00c2                                                         ; 4867: 85 c2       ..  :a867[1]
    bcc ca845                                                         ; 4869: 90 da       ..  :a869[1]
; &486b referenced 2 times by &a841, &a854
.ca86b
    sty l00bd                                                         ; 486b: 84 bd       ..  :a86b[1]
    bit l00c6                                                         ; 486d: 24 c6       $.  :a86d[1]
    bmi ca87a                                                         ; 486f: 30 09       0.  :a86f[1]
    lda l00c1                                                         ; 4871: a5 c1       ..  :a871[1]
    ora l00c2                                                         ; 4873: 05 c2       ..  :a873[1]
    beq ca87a                                                         ; 4875: f0 03       ..  :a875[1]
    jsr sub_ca8be                                                     ; 4877: 20 be a8     .. :a877[1]
; &487a referenced 2 times by &a86f, &a875
.ca87a
    lda l00c1                                                         ; 487a: a5 c1       ..  :a87a[1]
    clc                                                               ; 487c: 18          .   :a87c[1]
    adc l00bf                                                         ; 487d: 65 bf       e.  :a87d[1]
    sta l00bf                                                         ; 487f: 85 bf       ..  :a87f[1]
    lda l00c2                                                         ; 4881: a5 c2       ..  :a881[1]
    adc l00c0                                                         ; 4883: 65 c0       e.  :a883[1]
    sta l00c0                                                         ; 4885: 85 c0       ..  :a885[1]
    ldy l00bd                                                         ; 4887: a4 bd       ..  :a887[1]
    bne ca845                                                         ; 4889: d0 ba       ..  :a889[1]
    bit l00c6                                                         ; 488b: 24 c6       $.  :a88b[1]
    bpl ca8bd                                                         ; 488d: 10 2e       ..  :a88d[1]
    tay                                                               ; 488f: a8          .   :a88f[1]
    ldx l00bf                                                         ; 4890: a6 bf       ..  :a890[1]
    lda #&f8                                                          ; 4892: a9 f8       ..  :a892[1]
    sec                                                               ; 4894: 38          8   :a894[1]
    sbc l0f05                                                         ; 4895: ed 05 0f    ... :a895[1]
    jsr sub_ca90d                                                     ; 4898: 20 0d a9     .. :a898[1]
    jsr print_inline_osasci_top_bit_clear                             ; 489b: 20 9c a9     .. :a89b[1]
    equs "Free", &0d                                                  ; 489e: 46 72 65... Fre :a89e[1]

    lda l00c4                                                         ; 48a3: a5 c4       ..  :a8a3[1]
    sec                                                               ; 48a5: 38          8   :a8a5[1]
    sbc l00bf                                                         ; 48a6: e5 bf       ..  :a8a6[1]
    tax                                                               ; 48a8: aa          .   :a8a8[1]
    lda l00c5                                                         ; 48a9: a5 c5       ..  :a8a9[1]
    sbc l00c0                                                         ; 48ab: e5 c0       ..  :a8ab[1]
    tay                                                               ; 48ad: a8          .   :a8ad[1]
    lda l0f05                                                         ; 48ae: ad 05 0f    ... :a8ae[1]
    jsr sub_ca90d                                                     ; 48b1: 20 0d a9     .. :a8b1[1]
    jsr print_inline_osasci_top_bit_clear                             ; 48b4: 20 9c a9     .. :a8b4[1]
    equs "Used", &0d                                                  ; 48b7: 55 73 65... Use :a8b7[1]

    nop                                                               ; 48bc: ea          .   :a8bc[1]
; &48bd referenced 1 time by &a88d
.ca8bd
    rts                                                               ; 48bd: 60          `   :a8bd[1]

; &48be referenced 1 time by &a877
.sub_ca8be
    lda l00bc                                                         ; 48be: a5 bc       ..  :a8be[1]
    jsr sub_ca9ca                                                     ; 48c0: 20 ca a9     .. :a8c0[1]
    lda l00bb                                                         ; 48c3: a5 bb       ..  :a8c3[1]
    jsr sub_ca9c2                                                     ; 48c5: 20 c2 a9     .. :a8c5[1]
    jsr print_inline_osasci_top_bit_clear                             ; 48c8: 20 9c a9     .. :a8c8[1]
    equs "     :  "                                                   ; 48cb: 20 20 20...     :a8cb[1]

    lda l00c2                                                         ; 48d3: a5 c2       ..  :a8d3[1]
    jsr sub_ca9ca                                                     ; 48d5: 20 ca a9     .. :a8d5[1]
    lda l00c1                                                         ; 48d8: a5 c1       ..  :a8d8[1]
    jsr sub_ca9c2                                                     ; 48da: 20 c2 a9     .. :a8da[1]
    lda #&0d                                                          ; 48dd: a9 0d       ..  :a8dd[1]
    jsr osasci                                                        ; 48df: 20 e3 ff     .. :a8df[1]
; &48e2 referenced 1 time by &a845
.sub_ca8e2
    lda l0f06,y                                                       ; 48e2: b9 06 0f    ... :a8e2[1]
    pha                                                               ; 48e5: 48          H   :a8e5[1]
    jsr sub_c81b0                                                     ; 48e6: 20 b0 81     .. :a8e6[1]
    sta l00bc                                                         ; 48e9: 85 bc       ..  :a8e9[1]
    pla                                                               ; 48eb: 68          h   :a8eb[1]
    and #3                                                            ; 48ec: 29 03       ).  :a8ec[1]
    clc                                                               ; 48ee: 18          .   :a8ee[1]
    adc l00bc                                                         ; 48ef: 65 bc       e.  :a8ef[1]
    sta l00bc                                                         ; 48f1: 85 bc       ..  :a8f1[1]
    lda l0f04,y                                                       ; 48f3: b9 04 0f    ... :a8f3[1]
    beq ca8fa                                                         ; 48f6: f0 02       ..  :a8f6[1]
    lda #1                                                            ; 48f8: a9 01       ..  :a8f8[1]
; &48fa referenced 1 time by &a8f6
.ca8fa
    clc                                                               ; 48fa: 18          .   :a8fa[1]
    adc l0f05,y                                                       ; 48fb: 79 05 0f    y.. :a8fb[1]
    bcc ca902                                                         ; 48fe: 90 02       ..  :a8fe[1]
    inc l00bc                                                         ; 4900: e6 bc       ..  :a900[1]
; &4902 referenced 1 time by &a8fe
.ca902
    clc                                                               ; 4902: 18          .   :a902[1]
    adc l0f07,y                                                       ; 4903: 79 07 0f    y.. :a903[1]
    sta l00bb                                                         ; 4906: 85 bb       ..  :a906[1]
    bcc ca90c                                                         ; 4908: 90 02       ..  :a908[1]
    inc l00bc                                                         ; 490a: e6 bc       ..  :a90a[1]
; &490c referenced 1 time by &a908
.ca90c
    rts                                                               ; 490c: 60          `   :a90c[1]

; &490d referenced 2 times by &a898, &a8b1
.sub_ca90d
    jsr sub_c81c0                                                     ; 490d: 20 c0 81     .. :a90d[1]
    jsr sub_ca9bf                                                     ; 4910: 20 bf a9     .. :a910[1]
    jsr print_inline_osasci_top_bit_clear                             ; 4913: 20 9c a9     .. :a913[1]
    equs " Files "                                                    ; 4916: 20 46 69...  Fi :a916[1]

    stx l00bc                                                         ; 491d: 86 bc       ..  :a91d[1]
    sty l00bd                                                         ; 491f: 84 bd       ..  :a91f[1]
    tya                                                               ; 4921: 98          .   :a921[1]
    jsr sub_ca9ca                                                     ; 4922: 20 ca a9     .. :a922[1]
    txa                                                               ; 4925: 8a          .   :a925[1]
    jsr sub_ca9c2                                                     ; 4926: 20 c2 a9     .. :a926[1]
    jsr print_inline_osasci_top_bit_clear                             ; 4929: 20 9c a9     .. :a929[1]
    equs " Sectors "                                                  ; 492c: 20 53 65...  Se :a92c[1]

    lda #0                                                            ; 4935: a9 00       ..  :a935[1]
    sta l00bb                                                         ; 4937: 85 bb       ..  :a937[1]
    sta l00be                                                         ; 4939: 85 be       ..  :a939[1]
    ldx #&1f                                                          ; 493b: a2 1f       ..  :a93b[1]
    stx l00c1                                                         ; 493d: 86 c1       ..  :a93d[1]
    ldx #9                                                            ; 493f: a2 09       ..  :a93f[1]
; &4941 referenced 1 time by &a945
.loop_ca941
    sta l1000,x                                                       ; 4941: 9d 00 10    ... :a941[1]
    dex                                                               ; 4944: ca          .   :a944[1]
    bpl loop_ca941                                                    ; 4945: 10 fa       ..  :a945[1]
; &4947 referenced 1 time by &a966
.loop_ca947
    asl l00bb                                                         ; 4947: 06 bb       ..  :a947[1]
    rol l00bc                                                         ; 4949: 26 bc       &.  :a949[1]
    rol l00bd                                                         ; 494b: 26 bd       &.  :a94b[1]
    rol l00be                                                         ; 494d: 26 be       &.  :a94d[1]
    ldx #0                                                            ; 494f: a2 00       ..  :a94f[1]
    ldy #9                                                            ; 4951: a0 09       ..  :a951[1]
; &4953 referenced 1 time by &a962
.loop_ca953
    lda l1000,x                                                       ; 4953: bd 00 10    ... :a953[1]
    rol a                                                             ; 4956: 2a          *   :a956[1]
    cmp #&0a                                                          ; 4957: c9 0a       ..  :a957[1]
    bcc ca95d                                                         ; 4959: 90 02       ..  :a959[1]
    sbc #&0a                                                          ; 495b: e9 0a       ..  :a95b[1]
; &495d referenced 1 time by &a959
.ca95d
    sta l1000,x                                                       ; 495d: 9d 00 10    ... :a95d[1]
    inx                                                               ; 4960: e8          .   :a960[1]
    dey                                                               ; 4961: 88          .   :a961[1]
    bpl loop_ca953                                                    ; 4962: 10 ef       ..  :a962[1]
    dec l00c1                                                         ; 4964: c6 c1       ..  :a964[1]
    bpl loop_ca947                                                    ; 4966: 10 df       ..  :a966[1]
    ldy #&20 ; ' '                                                    ; 4968: a0 20       .   :a968[1]
    ldx #5                                                            ; 496a: a2 05       ..  :a96a[1]
; &496c referenced 1 time by &a98e
.ca96c
    bne ca970                                                         ; 496c: d0 02       ..  :a96c[1]
    ldy #&2c ; ','                                                    ; 496e: a0 2c       .,  :a96e[1]
; &4970 referenced 1 time by &a96c
.ca970
    lda l1000,x                                                       ; 4970: bd 00 10    ... :a970[1]
    bne ca97d                                                         ; 4973: d0 08       ..  :a973[1]
    cpy #&2c ; ','                                                    ; 4975: c0 2c       .,  :a975[1]
    beq ca97d                                                         ; 4977: f0 04       ..  :a977[1]
    lda #&20 ; ' '                                                    ; 4979: a9 20       .   :a979[1]
    bne ca982                                                         ; 497b: d0 05       ..  :a97b[1]
; &497d referenced 2 times by &a973, &a977
.ca97d
    ldy #&2c ; ','                                                    ; 497d: a0 2c       .,  :a97d[1]
    clc                                                               ; 497f: 18          .   :a97f[1]
    adc #&30 ; '0'                                                    ; 4980: 69 30       i0  :a980[1]
; &4982 referenced 1 time by &a97b
.ca982
    jsr osasci                                                        ; 4982: 20 e3 ff     .. :a982[1]
    cpx #3                                                            ; 4985: e0 03       ..  :a985[1]
    bne ca98d                                                         ; 4987: d0 04       ..  :a987[1]
    tya                                                               ; 4989: 98          .   :a989[1]
    jsr osasci                                                        ; 498a: 20 e3 ff     .. :a98a[1]
; &498d referenced 1 time by &a987
.ca98d
    dex                                                               ; 498d: ca          .   :a98d[1]
    bpl ca96c                                                         ; 498e: 10 dc       ..  :a98e[1]
    jsr print_inline_osasci_top_bit_clear                             ; 4990: 20 9c a9     .. :a990[1]
    equs " Bytes "                                                    ; 4993: 20 42 79...  By :a993[1]

    nop                                                               ; 499a: ea          .   :a99a[1]
    rts                                                               ; 499b: 60          `   :a99b[1]

; &499c referenced 7 times by &a803, &a89b, &a8b4, &a8c8, &a913, &a929, &a990
.print_inline_osasci_top_bit_clear
    sta l00b3                                                         ; 499c: 85 b3       ..  :a99c[1]
    pla                                                               ; 499e: 68          h   :a99e[1]
    sta l00ae                                                         ; 499f: 85 ae       ..  :a99f[1]
    pla                                                               ; 49a1: 68          h   :a9a1[1]
    sta l00af                                                         ; 49a2: 85 af       ..  :a9a2[1]
    lda l00b3                                                         ; 49a4: a5 b3       ..  :a9a4[1]
    pha                                                               ; 49a6: 48          H   :a9a6[1]
    tya                                                               ; 49a7: 98          .   :a9a7[1]
    pha                                                               ; 49a8: 48          H   :a9a8[1]
    ldy #0                                                            ; 49a9: a0 00       ..  :a9a9[1]
; &49ab referenced 1 time by &a9b5
.loop_ca9ab
    jsr inc16_ae                                                      ; 49ab: 20 dc 83     .. :a9ab[1]
    lda (l00ae),y                                                     ; 49ae: b1 ae       ..  :a9ae[1]
    bmi ca9b8                                                         ; 49b0: 30 06       0.  :a9b0[1]
    jsr osasci                                                        ; 49b2: 20 e3 ff     .. :a9b2[1]
    jmp loop_ca9ab                                                    ; 49b5: 4c ab a9    L.. :a9b5[1]

; &49b8 referenced 1 time by &a9b0
.ca9b8
    pla                                                               ; 49b8: 68          h   :a9b8[1]
    tay                                                               ; 49b9: a8          .   :a9b9[1]
    pla                                                               ; 49ba: 68          h   :a9ba[1]
    clc                                                               ; 49bb: 18          .   :a9bb[1]
    jmp (l00ae)                                                       ; 49bc: 6c ae 00    l.. :a9bc[1]

; &49bf referenced 1 time by &a910
.sub_ca9bf
    jsr sub_c841b                                                     ; 49bf: 20 1b 84     .. :a9bf[1]
; &49c2 referenced 3 times by &a8c5, &a8da, &a926
.sub_ca9c2
    pha                                                               ; 49c2: 48          H   :a9c2[1]
    jsr sub_c81bf                                                     ; 49c3: 20 bf 81     .. :a9c3[1]
    jsr sub_ca9ca                                                     ; 49c6: 20 ca a9     .. :a9c6[1]
    pla                                                               ; 49c9: 68          h   :a9c9[1]
; &49ca referenced 4 times by &a8c0, &a8d5, &a922, &a9c6
.sub_ca9ca
    jsr sub_c80c8                                                     ; 49ca: 20 c8 80     .. :a9ca[1]
    jmp osasci                                                        ; 49cd: 4c e3 ff    L.. :a9cd[1]

.sub_ca9d0
    lda #0                                                            ; 49d0: a9 00       ..  :a9d0[1]
    sta l00a8                                                         ; 49d2: 85 a8       ..  :a9d2[1]
    jsr sub_caaea                                                     ; 49d4: 20 ea aa     .. :a9d4[1]
    lda #&0f                                                          ; 49d7: a9 0f       ..  :a9d7[1]
    sta l00aa                                                         ; 49d9: 85 aa       ..  :a9d9[1]
    jsr sub_caadd                                                     ; 49db: 20 dd aa     .. :a9db[1]
    sec                                                               ; 49de: 38          8   :a9de[1]
    jsr gsinit                                                        ; 49df: 20 c2 ff     .. :a9df[1]
    sty l00ab                                                         ; 49e2: 84 ab       ..  :a9e2[1]
    clc                                                               ; 49e4: 18          .   :a9e4[1]
    beq ca9ff                                                         ; 49e5: f0 18       ..  :a9e5[1]
; &49e7 referenced 1 time by &a9fc
.loop_ca9e7
    jsr sub_c8456                                                     ; 49e7: 20 56 84     V. :a9e7[1]
    bcs ca9ff                                                         ; 49ea: b0 13       ..  :a9ea[1]
    sty l00ab                                                         ; 49ec: 84 ab       ..  :a9ec[1]
    and #&0f                                                          ; 49ee: 29 0f       ).  :a9ee[1]
    sta l00aa                                                         ; 49f0: 85 aa       ..  :a9f0[1]
    jsr sub_caa53                                                     ; 49f2: 20 53 aa     S. :a9f2[1]
    ldy l00ab                                                         ; 49f5: a4 ab       ..  :a9f5[1]
    jsr clc_jmp_gsinit                                                ; 49f7: 20 4c 87     L. :a9f7[1]
    sty l00ab                                                         ; 49fa: 84 ab       ..  :a9fa[1]
    bne loop_ca9e7                                                    ; 49fc: d0 e9       ..  :a9fc[1]
    rts                                                               ; 49fe: 60          `   :a9fe[1]

; &49ff referenced 2 times by &a9e5, &a9ea
.ca9ff
    ror l00a8                                                         ; 49ff: 66 a8       f.  :a9ff[1]
; &4a01 referenced 1 time by &aa0f
.loop_caa01
    bit l00a8                                                         ; 4a01: 24 a8       $.  :aa01[1]
    bpl caa0a                                                         ; 4a03: 10 05       ..  :aa03[1]
    jsr sub_caa12                                                     ; 4a05: 20 12 aa     .. :aa05[1]
    bcc caa0d                                                         ; 4a08: 90 03       ..  :aa08[1]
; &4a0a referenced 1 time by &aa03
.caa0a
    jsr sub_caa53                                                     ; 4a0a: 20 53 aa     S. :aa0a[1]
; &4a0d referenced 1 time by &aa08
.caa0d
    dec l00aa                                                         ; 4a0d: c6 aa       ..  :aa0d[1]
    bpl loop_caa01                                                    ; 4a0f: 10 f0       ..  :aa0f[1]
    rts                                                               ; 4a11: 60          `   :aa11[1]

; &4a12 referenced 1 time by &aa05
.sub_caa12
    lda #9                                                            ; 4a12: a9 09       ..  :aa12[1]
    sta osrdsc_ptr                                                    ; 4a14: 85 f6       ..  :aa14[1]
    lda #&80                                                          ; 4a16: a9 80       ..  :aa16[1]
    sta l00f7                                                         ; 4a18: 85 f7       ..  :aa18[1]
    ldy l00ab                                                         ; 4a1a: a4 ab       ..  :aa1a[1]
; &4a1c referenced 2 times by &aa39, &aa40
.caa1c
    lda (os_text_ptr),y                                               ; 4a1c: b1 f2       ..  :aa1c[1]
    cmp #&0d                                                          ; 4a1e: c9 0d       ..  :aa1e[1]
    beq caa44                                                         ; 4a20: f0 22       ."  :aa20[1]
    cmp #&22 ; '"'                                                    ; 4a22: c9 22       ."  :aa22[1]
    beq caa44                                                         ; 4a24: f0 1e       ..  :aa24[1]
    iny                                                               ; 4a26: c8          .   :aa26[1]
    cmp #&2a ; '*'                                                    ; 4a27: c9 2a       .*  :aa27[1]
    beq caa51                                                         ; 4a29: f0 26       .&  :aa29[1]
    jsr sub_c82fe                                                     ; 4a2b: 20 fe 82     .. :aa2b[1]
    sta l00ae                                                         ; 4a2e: 85 ae       ..  :aa2e[1]
    jsr sub_caacf                                                     ; 4a30: 20 cf aa     .. :aa30[1]
    beq caa42                                                         ; 4a33: f0 0d       ..  :aa33[1]
    ldx l00ae                                                         ; 4a35: a6 ae       ..  :aa35[1]
    cpx #&23 ; '#'                                                    ; 4a37: e0 23       .#  :aa37[1]
    beq caa1c                                                         ; 4a39: f0 e1       ..  :aa39[1]
    jsr sub_c82fe                                                     ; 4a3b: 20 fe 82     .. :aa3b[1]
    cmp l00ae                                                         ; 4a3e: c5 ae       ..  :aa3e[1]
    beq caa1c                                                         ; 4a40: f0 da       ..  :aa40[1]
; &4a42 referenced 3 times by &aa33, &aa4f, &aa57
.caa42
    clc                                                               ; 4a42: 18          .   :aa42[1]
    rts                                                               ; 4a43: 60          `   :aa43[1]

; &4a44 referenced 3 times by &aa20, &aa24, &aa4b
.caa44
    jsr sub_caacf                                                     ; 4a44: 20 cf aa     .. :aa44[1]
    beq caa51                                                         ; 4a47: f0 08       ..  :aa47[1]
    cmp #&20 ; ' '                                                    ; 4a49: c9 20       .   :aa49[1]
    beq caa44                                                         ; 4a4b: f0 f7       ..  :aa4b[1]
    cmp #&0d                                                          ; 4a4d: c9 0d       ..  :aa4d[1]
    bne caa42                                                         ; 4a4f: d0 f1       ..  :aa4f[1]
; &4a51 referenced 2 times by &aa29, &aa47
.caa51
    sec                                                               ; 4a51: 38          8   :aa51[1]
    rts                                                               ; 4a52: 60          `   :aa52[1]

; &4a53 referenced 2 times by &a9f2, &aa0a
.sub_caa53
    ldy l00aa                                                         ; 4a53: a4 aa       ..  :aa53[1]
    lda (l00b4),y                                                     ; 4a55: b1 b4       ..  :aa55[1]
    beq caa42                                                         ; 4a57: f0 e9       ..  :aa57[1]
    pha                                                               ; 4a59: 48          H   :aa59[1]
    jsr print_inline_l809f_top_bit_clear                              ; 4a5a: 20 77 80     w. :aa5a[1]
    equs "Rom "                                                       ; 4a5d: 52 6f 6d... Rom :aa5d[1]

    tya                                                               ; 4a61: 98          .   :aa61[1]
    jsr sub_c80b8                                                     ; 4a62: 20 b8 80     .. :aa62[1]
    jsr print_inline_l809f_top_bit_clear                              ; 4a65: 20 77 80     w. :aa65[1]
    equs " : "                                                        ; 4a68: 20 3a 20     :  :aa68[1]

    lda #&28 ; '('                                                    ; 4a6b: a9 28       .(  :aa6b[1]
    jsr c809f                                                         ; 4a6d: 20 9f 80     .. :aa6d[1]
    pla                                                               ; 4a70: 68          h   :aa70[1]
    pha                                                               ; 4a71: 48          H   :aa71[1]
    bmi caa78                                                         ; 4a72: 30 04       0.  :aa72[1]
    ldy #&20 ; ' '                                                    ; 4a74: a0 20       .   :aa74[1]
    bne caa7a                                                         ; 4a76: d0 02       ..  :aa76[1]
; &4a78 referenced 1 time by &aa72
.caa78
    ldy #&53 ; 'S'                                                    ; 4a78: a0 53       .S  :aa78[1]
; &4a7a referenced 1 time by &aa76
.caa7a
    tya                                                               ; 4a7a: 98          .   :aa7a[1]
    jsr c809f                                                         ; 4a7b: 20 9f 80     .. :aa7b[1]
    pla                                                               ; 4a7e: 68          h   :aa7e[1]
    ldy #&20 ; ' '                                                    ; 4a7f: a0 20       .   :aa7f[1]
    asl a                                                             ; 4a81: 0a          .   :aa81[1]
    bpl caa86                                                         ; 4a82: 10 02       ..  :aa82[1]
    ldy #&4c ; 'L'                                                    ; 4a84: a0 4c       .L  :aa84[1]
; &4a86 referenced 1 time by &aa82
.caa86
    tya                                                               ; 4a86: 98          .   :aa86[1]
    jsr c809f                                                         ; 4a87: 20 9f 80     .. :aa87[1]
    lda #&29 ; ')'                                                    ; 4a8a: a9 29       .)  :aa8a[1]
    jsr c809f                                                         ; 4a8c: 20 9f 80     .. :aa8c[1]
    jsr cac0f                                                         ; 4a8f: 20 0f ac     .. :aa8f[1]
    jsr sub_caa9a                                                     ; 4a92: 20 9a aa     .. :aa92[1]
    jsr ca3dc                                                         ; 4a95: 20 dc a3     .. :aa95[1]
    sec                                                               ; 4a98: 38          8   :aa98[1]
    rts                                                               ; 4a99: 60          `   :aa99[1]

; &4a9a referenced 1 time by &aa92
.sub_caa9a
    lda #7                                                            ; 4a9a: a9 07       ..  :aa9a[1]
    sta osrdsc_ptr                                                    ; 4a9c: 85 f6       ..  :aa9c[1]
    lda #&80                                                          ; 4a9e: a9 80       ..  :aa9e[1]
    sta l00f7                                                         ; 4aa0: 85 f7       ..  :aaa0[1]
    jsr sub_caacf                                                     ; 4aa2: 20 cf aa     .. :aaa2[1]
    sta l00ae                                                         ; 4aa5: 85 ae       ..  :aaa5[1]
    inc osrdsc_ptr                                                    ; 4aa7: e6 f6       ..  :aaa7[1]
    ldy #&1e                                                          ; 4aa9: a0 1e       ..  :aaa9[1]
    jsr sub_caac2                                                     ; 4aab: 20 c2 aa     .. :aaab[1]
    bcs caab7                                                         ; 4aae: b0 07       ..  :aaae[1]
    jsr cac0f                                                         ; 4ab0: 20 0f ac     .. :aab0[1]
    dey                                                               ; 4ab3: 88          .   :aab3[1]
    jsr sub_caac2                                                     ; 4ab4: 20 c2 aa     .. :aab4[1]
; &4ab7 referenced 1 time by &aaae
.caab7
    rts                                                               ; 4ab7: 60          `   :aab7[1]

; &4ab8 referenced 1 time by &aacb
.loop_caab8
    cmp #&20 ; ' '                                                    ; 4ab8: c9 20       .   :aab8[1]
    bcs caabe                                                         ; 4aba: b0 02       ..  :aaba[1]
    lda #&20 ; ' '                                                    ; 4abc: a9 20       .   :aabc[1]
; &4abe referenced 1 time by &aaba
.caabe
    jsr c809f                                                         ; 4abe: 20 9f 80     .. :aabe[1]
    dey                                                               ; 4ac1: 88          .   :aac1[1]
; &4ac2 referenced 2 times by &aaab, &aab4
.sub_caac2
    lda osrdsc_ptr                                                    ; 4ac2: a5 f6       ..  :aac2[1]
    cmp l00ae                                                         ; 4ac4: c5 ae       ..  :aac4[1]
    bcs caace                                                         ; 4ac6: b0 06       ..  :aac6[1]
    jsr sub_caacf                                                     ; 4ac8: 20 cf aa     .. :aac8[1]
    bne loop_caab8                                                    ; 4acb: d0 eb       ..  :aacb[1]
    clc                                                               ; 4acd: 18          .   :aacd[1]
; &4ace referenced 1 time by &aac6
.caace
    rts                                                               ; 4ace: 60          `   :aace[1]

; &4acf referenced 4 times by &aa30, &aa44, &aaa2, &aac8
.sub_caacf
    tya                                                               ; 4acf: 98          .   :aacf[1]
    pha                                                               ; 4ad0: 48          H   :aad0[1]
    ldy l00aa                                                         ; 4ad1: a4 aa       ..  :aad1[1]
    jsr osrdsc                                                        ; 4ad3: 20 b9 ff     .. :aad3[1]
    inc osrdsc_ptr                                                    ; 4ad6: e6 f6       ..  :aad6[1]
    tax                                                               ; 4ad8: aa          .   :aad8[1]
    pla                                                               ; 4ad9: 68          h   :aad9[1]
    tay                                                               ; 4ada: a8          .   :aada[1]
    txa                                                               ; 4adb: 8a          .   :aadb[1]
    rts                                                               ; 4adc: 60          `   :aadc[1]

; &4add referenced 1 time by &a9db
.sub_caadd
    jsr sub_c840c                                                     ; 4add: 20 0c 84     .. :aadd[1]
    lda #&aa                                                          ; 4ae0: a9 aa       ..  :aae0[1]
    jsr osbyte_read                                                   ; 4ae2: 20 e5 9a     .. :aae2[1]
    stx l00b4                                                         ; 4ae5: 86 b4       ..  :aae5[1]
    sty l00b5                                                         ; 4ae7: 84 b5       ..  :aae7[1]
    rts                                                               ; 4ae9: 60          `   :aae9[1]

; &4aea referenced 1 time by &a9d4
.sub_caaea
    tsx                                                               ; 4aea: ba          .   :aaea[1]
    lda #0                                                            ; 4aeb: a9 00       ..  :aaeb[1]
    sta l0107,x                                                       ; 4aed: 9d 07 01    ... :aaed[1]
    rts                                                               ; 4af0: 60          `   :aaf0[1]

; &4af1 referenced 2 times by &ab51, &abd5
.sub_caaf1
    ldx romsel_copy                                                   ; 4af1: a6 f4       ..  :aaf1[1]
    lda l0df0,x                                                       ; 4af3: bd f0 0d    ... :aaf3[1]
    and #&3f ; '?'                                                    ; 4af6: 29 3f       )?  :aaf6[1]
    sta l00ad                                                         ; 4af8: 85 ad       ..  :aaf8[1]
    inc l00ad                                                         ; 4afa: e6 ad       ..  :aafa[1]
    rts                                                               ; 4afc: 60          `   :aafc[1]

.sub_caafd
    jsr sub_cac18                                                     ; 4afd: 20 18 ac     .. :aafd[1]
    lda #0                                                            ; 4b00: a9 00       ..  :ab00[1]
    beq cab09                                                         ; 4b02: f0 05       ..  :ab02[1]
.sub_cab04
    jsr sub_cac18                                                     ; 4b04: 20 18 ac     .. :ab04[1]
    lda #&ff                                                          ; 4b07: a9 ff       ..  :ab07[1]
; &4b09 referenced 1 time by &ab02
.cab09
    sta l00ab                                                         ; 4b09: 85 ab       ..  :ab09[1]
    lda #&40 ; '@'                                                    ; 4b0b: a9 40       .@  :ab0b[1]
    jsr osfind                                                        ; 4b0d: 20 ce ff     .. :ab0d[1]
    tay                                                               ; 4b10: a8          .   :ab10[1]
    lda #&0d                                                          ; 4b11: a9 0d       ..  :ab11[1]
    cpy #0                                                            ; 4b13: c0 00       ..  :ab13[1]
    bne cab35                                                         ; 4b15: d0 1e       ..  :ab15[1]
; &4b17 referenced 1 time by &ab4f
.cab17
    jmp c822a                                                         ; 4b17: 4c 2a 82    L*. :ab17[1]

; &4b1a referenced 2 times by &ab21, &ab3a
.cab1a
    jsr osbget                                                        ; 4b1a: 20 d7 ff     .. :ab1a[1]
    bcs cab3d                                                         ; 4b1d: b0 1e       ..  :ab1d[1]
    cmp #&0a                                                          ; 4b1f: c9 0a       ..  :ab1f[1]
    beq cab1a                                                         ; 4b21: f0 f7       ..  :ab21[1]
    plp                                                               ; 4b23: 28          (   :ab23[1]
    bne cab2e                                                         ; 4b24: d0 08       ..  :ab24[1]
    pha                                                               ; 4b26: 48          H   :ab26[1]
    jsr sub_cac4e                                                     ; 4b27: 20 4e ac     N. :ab27[1]
    jsr cac0f                                                         ; 4b2a: 20 0f ac     .. :ab2a[1]
    pla                                                               ; 4b2d: 68          h   :ab2d[1]
; &4b2e referenced 1 time by &ab24
.cab2e
    jsr osasci                                                        ; 4b2e: 20 e3 ff     .. :ab2e[1]
    bit l00ff                                                         ; 4b31: 24 ff       $.  :ab31[1]
    bmi cab54                                                         ; 4b33: 30 1f       0.  :ab33[1]
; &4b35 referenced 1 time by &ab15
.cab35
    and l00ab                                                         ; 4b35: 25 ab       %.  :ab35[1]
    cmp #&0d                                                          ; 4b37: c9 0d       ..  :ab37[1]
    php                                                               ; 4b39: 08          .   :ab39[1]
    jmp cab1a                                                         ; 4b3a: 4c 1a ab    L.. :ab3a[1]

; &4b3d referenced 1 time by &ab1d
.cab3d
    plp                                                               ; 4b3d: 28          (   :ab3d[1]
    jsr osnewl                                                        ; 4b3e: 20 e7 ff     .. :ab3e[1]
; &4b41 referenced 2 times by &aba5, &abbf
.cab41
    lda #0                                                            ; 4b41: a9 00       ..  :ab41[1]
    jmp osfind                                                        ; 4b43: 4c ce ff    L.. :ab43[1]

.sub_cab46
    jsr sub_cac18                                                     ; 4b46: 20 18 ac     .. :ab46[1]
    lda #&40 ; '@'                                                    ; 4b49: a9 40       .@  :ab49[1]
    jsr osfind                                                        ; 4b4b: 20 ce ff     .. :ab4b[1]
    tay                                                               ; 4b4e: a8          .   :ab4e[1]
    beq cab17                                                         ; 4b4f: f0 c6       ..  :ab4f[1]
    jsr sub_caaf1                                                     ; 4b51: 20 f1 aa     .. :ab51[1]
; &4b54 referenced 2 times by &ab33, &aba7
.cab54
    bit l00ff                                                         ; 4b54: 24 ff       $.  :ab54[1]
    bmi cabbc                                                         ; 4b56: 30 64       0d  :ab56[1]
    lda l00a9                                                         ; 4b58: a5 a9       ..  :ab58[1]
    jsr sub_cac62                                                     ; 4b5a: 20 62 ac     b. :ab5a[1]
    lda l00a8                                                         ; 4b5d: a5 a8       ..  :ab5d[1]
    jsr sub_cac62                                                     ; 4b5f: 20 62 ac     b. :ab5f[1]
    jsr cac0f                                                         ; 4b62: 20 0f ac     .. :ab62[1]
    lda #8                                                            ; 4b65: a9 08       ..  :ab65[1]
    sta l00ac                                                         ; 4b67: 85 ac       ..  :ab67[1]
    ldx #0                                                            ; 4b69: a2 00       ..  :ab69[1]
; &4b6b referenced 1 time by &ab7a
.loop_cab6b
    jsr osbget                                                        ; 4b6b: 20 d7 ff     .. :ab6b[1]
    bcs cab7d                                                         ; 4b6e: b0 0d       ..  :ab6e[1]
    sta (l00ac,x)                                                     ; 4b70: 81 ac       ..  :ab70[1]
    jsr sub_cac62                                                     ; 4b72: 20 62 ac     b. :ab72[1]
    jsr cac0f                                                         ; 4b75: 20 0f ac     .. :ab75[1]
    dec l00ac                                                         ; 4b78: c6 ac       ..  :ab78[1]
    bne loop_cab6b                                                    ; 4b7a: d0 ef       ..  :ab7a[1]
    clc                                                               ; 4b7c: 18          .   :ab7c[1]
; &4b7d referenced 1 time by &ab6e
.cab7d
    php                                                               ; 4b7d: 08          .   :ab7d[1]
    bcc cab93                                                         ; 4b7e: 90 13       ..  :ab7e[1]
; &4b80 referenced 1 time by &ab91
.loop_cab80
    lda #&2a ; '*'                                                    ; 4b80: a9 2a       .*  :ab80[1]
    jsr osasci                                                        ; 4b82: 20 e3 ff     .. :ab82[1]
    jsr osasci                                                        ; 4b85: 20 e3 ff     .. :ab85[1]
    jsr cac0f                                                         ; 4b88: 20 0f ac     .. :ab88[1]
    lda #0                                                            ; 4b8b: a9 00       ..  :ab8b[1]
    sta (l00ac,x)                                                     ; 4b8d: 81 ac       ..  :ab8d[1]
    dec l00ac                                                         ; 4b8f: c6 ac       ..  :ab8f[1]
    bne loop_cab80                                                    ; 4b91: d0 ed       ..  :ab91[1]
; &4b93 referenced 1 time by &ab7e
.cab93
    jsr sub_caba9                                                     ; 4b93: 20 a9 ab     .. :ab93[1]
    jsr osnewl                                                        ; 4b96: 20 e7 ff     .. :ab96[1]
    lda #8                                                            ; 4b99: a9 08       ..  :ab99[1]
    clc                                                               ; 4b9b: 18          .   :ab9b[1]
    adc l00a8                                                         ; 4b9c: 65 a8       e.  :ab9c[1]
    sta l00a8                                                         ; 4b9e: 85 a8       ..  :ab9e[1]
    bcc caba4                                                         ; 4ba0: 90 02       ..  :aba0[1]
    inc l00a9                                                         ; 4ba2: e6 a9       ..  :aba2[1]
; &4ba4 referenced 1 time by &aba0
.caba4
    plp                                                               ; 4ba4: 28          (   :aba4[1]
    bcs cab41                                                         ; 4ba5: b0 9a       ..  :aba5[1]
    bcc cab54                                                         ; 4ba7: 90 ab       ..  :aba7[1]
; &4ba9 referenced 1 time by &ab93
.sub_caba9
    lda #8                                                            ; 4ba9: a9 08       ..  :aba9[1]
    sta l00ac                                                         ; 4bab: 85 ac       ..  :abab[1]
; &4bad referenced 1 time by &abb9
.loop_cabad
    ldx #0                                                            ; 4bad: a2 00       ..  :abad[1]
    lda (l00ac,x)                                                     ; 4baf: a1 ac       ..  :abaf[1]
    jsr sub_c842c                                                     ; 4bb1: 20 2c 84     ,. :abb1[1]
    jsr osasci                                                        ; 4bb4: 20 e3 ff     .. :abb4[1]
    dec l00ac                                                         ; 4bb7: c6 ac       ..  :abb7[1]
    bne loop_cabad                                                    ; 4bb9: d0 f2       ..  :abb9[1]
    rts                                                               ; 4bbb: 60          `   :abbb[1]

; &4bbc referenced 2 times by &ab56, &ac02
.cabbc
    jsr sub_c9ad8                                                     ; 4bbc: 20 d8 9a     .. :abbc[1]
    jsr cab41                                                         ; 4bbf: 20 41 ab     A. :abbf[1]
    jmp c9436                                                         ; 4bc2: 4c 36 94    L6. :abc2[1]

.sub_cabc5
    jsr sub_cac18                                                     ; 4bc5: 20 18 ac     .. :abc5[1]
    lda #&80                                                          ; 4bc8: a9 80       ..  :abc8[1]
    jsr osfind                                                        ; 4bca: 20 ce ff     .. :abca[1]
    sta l00ab                                                         ; 4bcd: 85 ab       ..  :abcd[1]
; &4bcf referenced 1 time by &ac09
.cabcf
    jsr sub_cac4e                                                     ; 4bcf: 20 4e ac     N. :abcf[1]
    jsr cac0f                                                         ; 4bd2: 20 0f ac     .. :abd2[1]
    jsr sub_caaf1                                                     ; 4bd5: 20 f1 aa     .. :abd5[1]
    ldx #&ac                                                          ; 4bd8: a2 ac       ..  :abd8[1]
    ldy #&ff                                                          ; 4bda: a0 ff       ..  :abda[1]
    sty l00ae                                                         ; 4bdc: 84 ae       ..  :abdc[1]
    sty l00b0                                                         ; 4bde: 84 b0       ..  :abde[1]
    iny                                                               ; 4be0: c8          .   :abe0[1]
    sty l00ac                                                         ; 4be1: 84 ac       ..  :abe1[1]
    lda #&20 ; ' '                                                    ; 4be3: a9 20       .   :abe3[1]
    sta l00af                                                         ; 4be5: 85 af       ..  :abe5[1]
    tya                                                               ; 4be7: 98          .   :abe7[1]
    jsr osword                                                        ; 4be8: 20 f1 ff     .. :abe8[1]
    php                                                               ; 4beb: 08          .   :abeb[1]
    sty l00aa                                                         ; 4bec: 84 aa       ..  :abec[1]
    ldy l00ab                                                         ; 4bee: a4 ab       ..  :abee[1]
    ldx #0                                                            ; 4bf0: a2 00       ..  :abf0[1]
    beq cabfb                                                         ; 4bf2: f0 07       ..  :abf2[1]
; &4bf4 referenced 1 time by &abff
.loop_cabf4
    lda (l00ac,x)                                                     ; 4bf4: a1 ac       ..  :abf4[1]
    jsr osbput                                                        ; 4bf6: 20 d4 ff     .. :abf6[1]
    inc l00ac                                                         ; 4bf9: e6 ac       ..  :abf9[1]
; &4bfb referenced 1 time by &abf2
.cabfb
    lda l00ac                                                         ; 4bfb: a5 ac       ..  :abfb[1]
    cmp l00aa                                                         ; 4bfd: c5 aa       ..  :abfd[1]
    bne loop_cabf4                                                    ; 4bff: d0 f3       ..  :abff[1]
    plp                                                               ; 4c01: 28          (   :ac01[1]
    bcs cabbc                                                         ; 4c02: b0 b8       ..  :ac02[1]
    lda #&0d                                                          ; 4c04: a9 0d       ..  :ac04[1]
    jsr osbput                                                        ; 4c06: 20 d4 ff     .. :ac06[1]
    jmp cabcf                                                         ; 4c09: 4c cf ab    L.. :ac09[1]

; &4c0c referenced 3 times by &817f, &8198, &85ca
.sub_cac0c
    jsr cac0f                                                         ; 4c0c: 20 0f ac     .. :ac0c[1]
; &4c0f referenced 11 times by &81a7, &834f, &837d, &aa8f, &aab0, &ab2a, &ab62, &ab75, &ab88, &abd2, &ac0c
.cac0f
    pha                                                               ; 4c0f: 48          H   :ac0f[1]
    lda #&20 ; ' '                                                    ; 4c10: a9 20       .   :ac10[1]
    jsr osasci                                                        ; 4c12: 20 e3 ff     .. :ac12[1]
    pla                                                               ; 4c15: 68          h   :ac15[1]
    clc                                                               ; 4c16: 18          .   :ac16[1]
    rts                                                               ; 4c17: 60          `   :ac17[1]

; &4c18 referenced 4 times by &aafd, &ab04, &ab46, &abc5
.sub_cac18
    tsx                                                               ; 4c18: ba          .   :ac18[1]
    lda #0                                                            ; 4c19: a9 00       ..  :ac19[1]
    sta l0107,x                                                       ; 4c1b: 9d 07 01    ... :ac1b[1]
    jsr sub_cac47                                                     ; 4c1e: 20 47 ac     G. :ac1e[1]
    cmp #&0d                                                          ; 4c21: c9 0d       ..  :ac21[1]
    bne cac28                                                         ; 4c23: d0 03       ..  :ac23[1]
    jmp ca14f                                                         ; 4c25: 4c 4f a1    LO. :ac25[1]

; &4c28 referenced 1 time by &ac23
.cac28
    lda #0                                                            ; 4c28: a9 00       ..  :ac28[1]
    sta l00a8                                                         ; 4c2a: 85 a8       ..  :ac2a[1]
    sta l00a9                                                         ; 4c2c: 85 a9       ..  :ac2c[1]
    pha                                                               ; 4c2e: 48          H   :ac2e[1]
    tya                                                               ; 4c2f: 98          .   :ac2f[1]
    clc                                                               ; 4c30: 18          .   :ac30[1]
    adc os_text_ptr                                                   ; 4c31: 65 f2       e.  :ac31[1]
    tax                                                               ; 4c33: aa          .   :ac33[1]
    lda l00f3                                                         ; 4c34: a5 f3       ..  :ac34[1]
    adc #0                                                            ; 4c36: 69 00       i.  :ac36[1]
    tay                                                               ; 4c38: a8          .   :ac38[1]
    pla                                                               ; 4c39: 68          h   :ac39[1]
    rts                                                               ; 4c3a: 60          `   :ac3a[1]

    tya                                                               ; 4c3b: 98          .   :ac3b[1]
    clc                                                               ; 4c3c: 18          .   :ac3c[1]
    adc os_text_ptr                                                   ; 4c3d: 65 f2       e.  :ac3d[1]
    sta os_text_ptr                                                   ; 4c3f: 85 f2       ..  :ac3f[1]
    bcc cac45                                                         ; 4c41: 90 02       ..  :ac41[1]
    inc os_text_ptr                                                   ; 4c43: e6 f2       ..  :ac43[1]
; &4c45 referenced 1 time by &ac41
.cac45
    rts                                                               ; 4c45: 60          `   :ac45[1]

; &4c46 referenced 1 time by &ac4b
.loop_cac46
    iny                                                               ; 4c46: c8          .   :ac46[1]
; &4c47 referenced 1 time by &ac1e
.sub_cac47
    lda (os_text_ptr),y                                               ; 4c47: b1 f2       ..  :ac47[1]
    cmp #&20 ; ' '                                                    ; 4c49: c9 20       .   :ac49[1]
    beq loop_cac46                                                    ; 4c4b: f0 f9       ..  :ac4b[1]
    rts                                                               ; 4c4d: 60          `   :ac4d[1]

; &4c4e referenced 2 times by &ab27, &abcf
.sub_cac4e
    sed                                                               ; 4c4e: f8          .   :ac4e[1]
    clc                                                               ; 4c4f: 18          .   :ac4f[1]
    lda l00a8                                                         ; 4c50: a5 a8       ..  :ac50[1]
    adc #1                                                            ; 4c52: 69 01       i.  :ac52[1]
    sta l00a8                                                         ; 4c54: 85 a8       ..  :ac54[1]
    lda l00a9                                                         ; 4c56: a5 a9       ..  :ac56[1]
    adc #0                                                            ; 4c58: 69 00       i.  :ac58[1]
    sta l00a9                                                         ; 4c5a: 85 a9       ..  :ac5a[1]
    cld                                                               ; 4c5c: d8          .   :ac5c[1]
    jsr sub_cac62                                                     ; 4c5d: 20 62 ac     b. :ac5d[1]
    lda l00a8                                                         ; 4c60: a5 a8       ..  :ac60[1]
; &4c62 referenced 4 times by &ab5a, &ab5f, &ab72, &ac5d
.sub_cac62
    pha                                                               ; 4c62: 48          H   :ac62[1]
    jsr sub_c81bf                                                     ; 4c63: 20 bf 81     .. :ac63[1]
    jsr sub_cac6a                                                     ; 4c66: 20 6a ac     j. :ac66[1]
    pla                                                               ; 4c69: 68          h   :ac69[1]
; &4c6a referenced 1 time by &ac66
.sub_cac6a
    jsr sub_c80c8                                                     ; 4c6a: 20 c8 80     .. :ac6a[1]
    jsr osasci                                                        ; 4c6d: 20 e3 ff     .. :ac6d[1]
    sec                                                               ; 4c70: 38          8   :ac70[1]
    rts                                                               ; 4c71: 60          `   :ac71[1]

; &4c72 referenced 1 time by &96e1
.sub_cac72
    jsr sub_c83e3                                                     ; 4c72: 20 e3 83     .. :ac72[1]
    lda #&40 ; '@'                                                    ; 4c75: a9 40       .@  :ac75[1]
    sta l10de                                                         ; 4c77: 8d de 10    ... :ac77[1]
    lda #&a8                                                          ; 4c7a: a9 a8       ..  :ac7a[1]
    jsr osbyte_read                                                   ; 4c7c: 20 e5 9a     .. :ac7c[1]
    stx l00b0                                                         ; 4c7f: 86 b0       ..  :ac7f[1]
    sty l00b1                                                         ; 4c81: 84 b1       ..  :ac81[1]
    ldy #&0f                                                          ; 4c83: a0 0f       ..  :ac83[1]
    lda #&4c ; 'L'                                                    ; 4c85: a9 4c       .L  :ac85[1]
    sta l10e2                                                         ; 4c87: 8d e2 10    ... :ac87[1]
    lda bytev                                                         ; 4c8a: ad 0a 02    ... :ac8a[1]
    sta l10e3                                                         ; 4c8d: 8d e3 10    ... :ac8d[1]
    lda bytev+1                                                       ; 4c90: ad 0b 02    ... :ac90[1]
    sta l10e4                                                         ; 4c93: 8d e4 10    ... :ac93[1]
    php                                                               ; 4c96: 08          .   :ac96[1]
    sei                                                               ; 4c97: 78          x   :ac97[1]
    lda #&0f                                                          ; 4c98: a9 0f       ..  :ac98[1]
    sta bytev                                                         ; 4c9a: 8d 0a 02    ... :ac9a[1]
    lda #&ff                                                          ; 4c9d: a9 ff       ..  :ac9d[1]
    sta bytev+1                                                       ; 4c9f: 8d 0b 02    ... :ac9f[1]
    lda #&b2                                                          ; 4ca2: a9 b2       ..  :aca2[1]
    sta (l00b0),y                                                     ; 4ca4: 91 b0       ..  :aca4[1]
    iny                                                               ; 4ca6: c8          .   :aca6[1]
    lda #&ac                                                          ; 4ca7: a9 ac       ..  :aca7[1]
    sta (l00b0),y                                                     ; 4ca9: 91 b0       ..  :aca9[1]
    iny                                                               ; 4cab: c8          .   :acab[1]
    lda romsel_copy                                                   ; 4cac: a5 f4       ..  :acac[1]
    sta (l00b0),y                                                     ; 4cae: 91 b0       ..  :acae[1]
    plp                                                               ; 4cb0: 28          (   :acb0[1]
    rts                                                               ; 4cb1: 60          `   :acb1[1]

    cmp #0                                                            ; 4cb2: c9 00       ..  :acb2[1]
    beq cacc7                                                         ; 4cb4: f0 11       ..  :acb4[1]
    cmp #&81                                                          ; 4cb6: c9 81       ..  :acb6[1]
    bne cacc4                                                         ; 4cb8: d0 0a       ..  :acb8[1]
    cpy #&ff                                                          ; 4cba: c0 ff       ..  :acba[1]
    bne cacc4                                                         ; 4cbc: d0 06       ..  :acbc[1]
    cpx #0                                                            ; 4cbe: e0 00       ..  :acbe[1]
    bne cacc4                                                         ; 4cc0: d0 02       ..  :acc0[1]
    dex                                                               ; 4cc2: ca          .   :acc2[1]
    rts                                                               ; 4cc3: 60          `   :acc3[1]

; &4cc4 referenced 3 times by &acb8, &acbc, &acc0
.cacc4
    jmp l10e2                                                         ; 4cc4: 4c e2 10    L.. :acc4[1]

; &4cc7 referenced 1 time by &acb4
.cacc7
    php                                                               ; 4cc7: 08          .   :acc7[1]
    sei                                                               ; 4cc8: 78          x   :acc8[1]
    lda l10e3                                                         ; 4cc9: ad e3 10    ... :acc9[1]
    sta bytev                                                         ; 4ccc: 8d 0a 02    ... :accc[1]
    lda l10e4                                                         ; 4ccf: ad e4 10    ... :accf[1]
    sta bytev+1                                                       ; 4cd2: 8d 0b 02    ... :acd2[1]
    lda #0                                                            ; 4cd5: a9 00       ..  :acd5[1]
    ldx #1                                                            ; 4cd7: a2 01       ..  :acd7[1]
    plp                                                               ; 4cd9: 28          (   :acd9[1]
    rts                                                               ; 4cda: 60          `   :acda[1]

; &4cdb referenced 2 times by &0050, &af1c
.tube_host_code2
    org c30fb + (tube_host_code2 - nmi_handler2_rom_end)
    copyblock nmi_handler2_rom_end, tube_host_code2, c30fb
    clear nmi_handler2_rom_end, tube_host_code2

; &4cdb referenced 2 times by &0050, &af1c
; &4cdb referenced 2 times by &0050, &af1c

    org &0500
; &4cdb referenced 2 times by &0050, &af1c
.l0500
    equw          sub_c0537,          sub_c0596,          sub_c05f2   ; 4cdb: 37 05 96... 7.. :0500[3]
    equw          sub_c0607,          sub_c0627, tube_host_osword_0   ; 4ce1: 07 06 27... ..' :0506[3]
    equw          sub_c055e,          sub_c052d,          sub_c0520   ; 4ce7: 5e 05 2d... ^.- :050c[3]
    equw          sub_c0542,          sub_c05a9,          sub_c05d1   ; 4ced: 42 05 a9... B.. :0512[3]
; Table of flags used by tube_entry_small_a to set up registers 1/4 for the
; selected operation.
; &4cf3 referenced 1 time by &0453
.tube_entry_flags
    equb &86, &88, &96, &98, &18, &18, &82, &18                       ; 4cf3: 86 88 96... ... :0518[3]

.sub_c0520
    jsr read_tube_r2_data                                             ; 4cfb: 20 c5 06     .. :0520[3]
    tay                                                               ; 4cfe: a8          .   :0523[3]
    jsr read_tube_r2_data                                             ; 4cff: 20 c5 06     .. :0524[3]
    jsr osbput                                                        ; 4d02: 20 d4 ff     .. :0527[3]
    jmp c059c                                                         ; 4d05: 4c 9c 05    L.. :052a[3]

.sub_c052d
    jsr read_tube_r2_data                                             ; 4d08: 20 c5 06     .. :052d[3]
    tay                                                               ; 4d0b: a8          .   :0530[3]
    jsr osbget                                                        ; 4d0c: 20 d7 ff     .. :0531[3]
    jmp c053a                                                         ; 4d0f: 4c 3a 05    L:. :0534[3]

.sub_c0537
    jsr osrdch                                                        ; 4d12: 20 e0 ff     .. :0537[3]
; &4d15 referenced 2 times by &0534, &05ef
.c053a
    ror a                                                             ; 4d15: 6a          j   :053a[3]
    jsr write_tube_r2_data                                            ; 4d16: 20 95 06     .. :053b[3]
    rol a                                                             ; 4d19: 2a          *   :053e[3]
    jmp c059e                                                         ; 4d1a: 4c 9e 05    L.. :053f[3]

.sub_c0542
    jsr read_tube_r2_data                                             ; 4d1d: 20 c5 06     .. :0542[3]
    beq c0552                                                         ; 4d20: f0 0b       ..  :0545[3]
    pha                                                               ; 4d22: 48          H   :0547[3]
    jsr sub_c0582                                                     ; 4d23: 20 82 05     .. :0548[3]
    pla                                                               ; 4d26: 68          h   :054b[3]
    jsr osfind                                                        ; 4d27: 20 ce ff     .. :054c[3]
    jmp c059e                                                         ; 4d2a: 4c 9e 05    L.. :054f[3]

; &4d2d referenced 1 time by &0545
.c0552
    jsr read_tube_r2_data                                             ; 4d2d: 20 c5 06     .. :0552[3]
    tay                                                               ; 4d30: a8          .   :0555[3]
    lda #0                                                            ; 4d31: a9 00       ..  :0556[3]
    jsr osfind                                                        ; 4d33: 20 ce ff     .. :0558[3]
    jmp c059c                                                         ; 4d36: 4c 9c 05    L.. :055b[3]

.sub_c055e
    jsr read_tube_r2_data                                             ; 4d39: 20 c5 06     .. :055e[3]
    tay                                                               ; 4d3c: a8          .   :0561[3]
    ldx #4                                                            ; 4d3d: a2 04       ..  :0562[3]
; &4d3f referenced 1 time by &056a
.loop_c0564
    jsr read_tube_r2_data                                             ; 4d3f: 20 c5 06     .. :0564[3]
    sta l00ff,x                                                       ; 4d42: 95 ff       ..  :0567[3]
    dex                                                               ; 4d44: ca          .   :0569[3]
    bne loop_c0564                                                    ; 4d45: d0 f8       ..  :056a[3]
    jsr read_tube_r2_data                                             ; 4d47: 20 c5 06     .. :056c[3]
    jsr osargs                                                        ; 4d4a: 20 da ff     .. :056f[3]
    jsr write_tube_r2_data                                            ; 4d4d: 20 95 06     .. :0572[3]
    ldx #3                                                            ; 4d50: a2 03       ..  :0575[3]
; &4d52 referenced 1 time by &057d
.loop_c0577
    lda l0000,x                                                       ; 4d52: b5 00       ..  :0577[3]
    jsr write_tube_r2_data                                            ; 4d54: 20 95 06     .. :0579[3]
    dex                                                               ; 4d57: ca          .   :057c[3]
    bpl loop_c0577                                                    ; 4d58: 10 f8       ..  :057d[3]
    jmp c0036                                                         ; 4d5a: 4c 36 00    L6. :057f[3]

; &4d5d referenced 3 times by &0548, &0596, &05b3
.sub_c0582
    ldx #0                                                            ; 4d5d: a2 00       ..  :0582[3]
    ldy #0                                                            ; 4d5f: a0 00       ..  :0584[3]
; &4d61 referenced 1 time by &0591
.loop_c0586
    jsr read_tube_r2_data                                             ; 4d61: 20 c5 06     .. :0586[3]
    sta l0700,y                                                       ; 4d64: 99 00 07    ... :0589[3]
    iny                                                               ; 4d67: c8          .   :058c[3]
    beq c0593                                                         ; 4d68: f0 04       ..  :058d[3]
    cmp #&0d                                                          ; 4d6a: c9 0d       ..  :058f[3]
    bne loop_c0586                                                    ; 4d6c: d0 f3       ..  :0591[3]
; &4d6e referenced 1 time by &058d
.c0593
    ldy #7                                                            ; 4d6e: a0 07       ..  :0593[3]
    rts                                                               ; 4d70: 60          `   :0595[3]

.sub_c0596
    jsr sub_c0582                                                     ; 4d71: 20 82 05     .. :0596[3]
    jsr oscli                                                         ; 4d74: 20 f7 ff     .. :0599[3]
; &4d77 referenced 3 times by &0489, &052a, &055b
.c059c
    lda #&7f                                                          ; 4d77: a9 7f       ..  :059c[3]
; &4d79 referenced 4 times by &053f, &054f, &05a1, &067d
.c059e
    bit tube_host_r2_status                                           ; 4d79: 2c e2 fe    ,.. :059e[3]
    bvc c059e                                                         ; 4d7c: 50 fb       P.  :05a1[3]
    sta tube_host_r2_data                                             ; 4d7e: 8d e3 fe    ... :05a3[3]
; &4d81 referenced 1 time by &05cf
.c05a6
    jmp c0036                                                         ; 4d81: 4c 36 00    L6. :05a6[3]

.sub_c05a9
    ldx #&10                                                          ; 4d84: a2 10       ..  :05a9[3]
; &4d86 referenced 1 time by &05b1
.loop_c05ab
    jsr read_tube_r2_data                                             ; 4d86: 20 c5 06     .. :05ab[3]
    sta l0001,x                                                       ; 4d89: 95 01       ..  :05ae[3]
    dex                                                               ; 4d8b: ca          .   :05b0[3]
    bne loop_c05ab                                                    ; 4d8c: d0 f8       ..  :05b1[3]
    jsr sub_c0582                                                     ; 4d8e: 20 82 05     .. :05b3[3]
    stx l0000                                                         ; 4d91: 86 00       ..  :05b6[3]
    sty l0001                                                         ; 4d93: 84 01       ..  :05b8[3]
    ldy #0                                                            ; 4d95: a0 00       ..  :05ba[3]
    jsr read_tube_r2_data                                             ; 4d97: 20 c5 06     .. :05bc[3]
    jsr osfile                                                        ; 4d9a: 20 dd ff     .. :05bf[3]
    jsr write_tube_r2_data                                            ; 4d9d: 20 95 06     .. :05c2[3]
    ldx #&10                                                          ; 4da0: a2 10       ..  :05c5[3]
; &4da2 referenced 1 time by &05cd
.loop_c05c7
    lda l0001,x                                                       ; 4da2: b5 01       ..  :05c7[3]
    jsr write_tube_r2_data                                            ; 4da4: 20 95 06     .. :05c9[3]
    dex                                                               ; 4da7: ca          .   :05cc[3]
    bne loop_c05c7                                                    ; 4da8: d0 f8       ..  :05cd[3]
    beq c05a6                                                         ; 4daa: f0 d5       ..  :05cf[3]
.sub_c05d1
    ldx #&0d                                                          ; 4dac: a2 0d       ..  :05d1[3]
; &4dae referenced 1 time by &05d9
.loop_c05d3
    jsr read_tube_r2_data                                             ; 4dae: 20 c5 06     .. :05d3[3]
    sta l00ff,x                                                       ; 4db1: 95 ff       ..  :05d6[3]
    dex                                                               ; 4db3: ca          .   :05d8[3]
    bne loop_c05d3                                                    ; 4db4: d0 f8       ..  :05d9[3]
    jsr read_tube_r2_data                                             ; 4db6: 20 c5 06     .. :05db[3]
    ldy #0                                                            ; 4db9: a0 00       ..  :05de[3]
    jsr osgbpb                                                        ; 4dbb: 20 d1 ff     .. :05e0[3]
    pha                                                               ; 4dbe: 48          H   :05e3[3]
    ldx #&0c                                                          ; 4dbf: a2 0c       ..  :05e4[3]
; &4dc1 referenced 1 time by &05ec
.loop_c05e6
    lda l0000,x                                                       ; 4dc1: b5 00       ..  :05e6[3]
    jsr write_tube_r2_data                                            ; 4dc3: 20 95 06     .. :05e8[3]
    dex                                                               ; 4dc6: ca          .   :05eb[3]
    bpl loop_c05e6                                                    ; 4dc7: 10 f8       ..  :05ec[3]
    pla                                                               ; 4dc9: 68          h   :05ee[3]
    jmp c053a                                                         ; 4dca: 4c 3a 05    L:. :05ef[3]

.sub_c05f2
    jsr read_tube_r2_data                                             ; 4dcd: 20 c5 06     .. :05f2[3]
    tax                                                               ; 4dd0: aa          .   :05f5[3]
    jsr read_tube_r2_data                                             ; 4dd1: 20 c5 06     .. :05f6[3]
    jsr osbyte                                                        ; 4dd4: 20 f4 ff     .. :05f9[3]
; &4dd7 referenced 2 times by &05ff, &0625
.c05fc
    bit tube_host_r2_status                                           ; 4dd7: 2c e2 fe    ,.. :05fc[3]
.sub_c05ff
l0600 = sub_c05ff+1
    bvc c05fc                                                         ; 4dda: 50 fb       P.  :05ff[3]
; &4ddb referenced 1 time by &af22
    stx tube_host_r2_data                                             ; 4ddc: 8e e3 fe    ... :0601[3]
; &4ddf referenced 1 time by &0617
.loop_c0604
    jmp c0036                                                         ; 4ddf: 4c 36 00    L6. :0604[3]

.sub_c0607
    jsr read_tube_r2_data                                             ; 4de2: 20 c5 06     .. :0607[3]
    tax                                                               ; 4de5: aa          .   :060a[3]
    jsr read_tube_r2_data                                             ; 4de6: 20 c5 06     .. :060b[3]
    tay                                                               ; 4de9: a8          .   :060e[3]
    jsr read_tube_r2_data                                             ; 4dea: 20 c5 06     .. :060f[3]
    jsr osbyte                                                        ; 4ded: 20 f4 ff     .. :0612[3]
    eor #&9d                                                          ; 4df0: 49 9d       I.  :0615[3]
    beq loop_c0604                                                    ; 4df2: f0 eb       ..  :0617[3]
    ror a                                                             ; 4df4: 6a          j   :0619[3]
    jsr write_tube_r2_data                                            ; 4df5: 20 95 06     .. :061a[3]
; &4df8 referenced 1 time by &0620
.loop_c061d
    bit tube_host_r2_status                                           ; 4df8: 2c e2 fe    ,.. :061d[3]
    bvc loop_c061d                                                    ; 4dfb: 50 fb       P.  :0620[3]
    sty tube_host_r2_data                                             ; 4dfd: 8c e3 fe    ... :0622[3]
    bvs c05fc                                                         ; 4e00: 70 d5       p.  :0625[3]
.sub_c0627
    jsr read_tube_r2_data                                             ; 4e02: 20 c5 06     .. :0627[3]
    tay                                                               ; 4e05: a8          .   :062a[3]
; &4e06 referenced 1 time by &062e
.loop_c062b
    bit tube_host_r2_status                                           ; 4e06: 2c e2 fe    ,.. :062b[3]
    bpl loop_c062b                                                    ; 4e09: 10 fb       ..  :062e[3]
    ldx tube_host_r2_data                                             ; 4e0b: ae e3 fe    ... :0630[3]
    dex                                                               ; 4e0e: ca          .   :0633[3]
    bmi c0645                                                         ; 4e0f: 30 0f       0.  :0634[3]
; &4e11 referenced 2 times by &0639, &0642
.c0636
    bit tube_host_r2_status                                           ; 4e11: 2c e2 fe    ,.. :0636[3]
    bpl c0636                                                         ; 4e14: 10 fb       ..  :0639[3]
    lda tube_host_r2_data                                             ; 4e16: ad e3 fe    ... :063b[3]
    sta l0128,x                                                       ; 4e19: 9d 28 01    .(. :063e[3]
    dex                                                               ; 4e1c: ca          .   :0641[3]
    bpl c0636                                                         ; 4e1d: 10 f2       ..  :0642[3]
    tya                                                               ; 4e1f: 98          .   :0644[3]
; &4e20 referenced 1 time by &0634
.c0645
    ldx #<(l0128)                                                     ; 4e20: a2 28       .(  :0645[3]
    ldy #>(l0128)                                                     ; 4e22: a0 01       ..  :0647[3]
    jsr osword                                                        ; 4e24: 20 f1 ff     .. :0649[3]
; &4e27 referenced 1 time by &064f
.loop_c064c
    bit tube_host_r2_status                                           ; 4e27: 2c e2 fe    ,.. :064c[3]
    bpl loop_c064c                                                    ; 4e2a: 10 fb       ..  :064f[3]
    ldx tube_host_r2_data                                             ; 4e2c: ae e3 fe    ... :0651[3]
    dex                                                               ; 4e2f: ca          .   :0654[3]
    bmi c0665                                                         ; 4e30: 30 0e       0.  :0655[3]
; &4e32 referenced 1 time by &0663
.loop_c0657
    ldy l0128,x                                                       ; 4e32: bc 28 01    .(. :0657[3]
; &4e35 referenced 1 time by &065d
.loop_c065a
    bit tube_host_r2_status                                           ; 4e35: 2c e2 fe    ,.. :065a[3]
    bvc loop_c065a                                                    ; 4e38: 50 fb       P.  :065d[3]
    sty tube_host_r2_data                                             ; 4e3a: 8c e3 fe    ... :065f[3]
    dex                                                               ; 4e3d: ca          .   :0662[3]
    bpl loop_c0657                                                    ; 4e3e: 10 f2       ..  :0663[3]
; &4e40 referenced 1 time by &0655
.c0665
    jmp c0036                                                         ; 4e40: 4c 36 00    L6. :0665[3]

.tube_host_osword_0
    ldx #4                                                            ; 4e43: a2 04       ..  :0668[3]
; &4e45 referenced 1 time by &0670
.tube_host_osword_0_loop
    jsr read_tube_r2_data                                             ; 4e45: 20 c5 06     .. :066a[3]
    sta l0000,x                                                       ; 4e48: 95 00       ..  :066d[3]
    dex                                                               ; 4e4a: ca          .   :066f[3]
    bpl tube_host_osword_0_loop                                       ; 4e4b: 10 f8       ..  :0670[3]
    inx                                                               ; 4e4d: e8          .   :0672[3]
    ldy #0                                                            ; 4e4e: a0 00       ..  :0673[3]
    txa                                                               ; 4e50: 8a          .   :0675[3]
    jsr osword                                                        ; 4e51: 20 f1 ff     .. :0676[3]
    bcc tube_host_osword_0_no_escape                                  ; 4e54: 90 05       ..  :0679[3]
    lda #&ff                                                          ; 4e56: a9 ff       ..  :067b[3]
    jmp c059e                                                         ; 4e58: 4c 9e 05    L.. :067d[3]

; &4e5b referenced 1 time by &0679
.tube_host_osword_0_no_escape
    ldx #0                                                            ; 4e5b: a2 00       ..  :0680[3]
    lda #&7f                                                          ; 4e5d: a9 7f       ..  :0682[3]
    jsr write_tube_r2_data                                            ; 4e5f: 20 95 06     .. :0684[3]
; &4e62 referenced 1 time by &0690
.tube_host_osword_0_no_escape_loop
    lda l0700,x                                                       ; 4e62: bd 00 07    ... :0687[3]
    jsr write_tube_r2_data                                            ; 4e65: 20 95 06     .. :068a[3]
    inx                                                               ; 4e68: e8          .   :068d[3]
    cmp #&0d                                                          ; 4e69: c9 0d       ..  :068e[3]
    bne tube_host_osword_0_no_escape_loop                             ; 4e6b: d0 f5       ..  :0690[3]
    jmp c0036                                                         ; 4e6d: 4c 36 00    L6. :0692[3]

; Wait for register 2 to have space and write A to it.
; &4e70 referenced 14 times by &0020, &0026, &002c, &0474, &053b, &0572, &0579, &05c2, &05c9, &05e8, &061a, &0684, &068a, &0698
.write_tube_r2_data
    bit tube_host_r2_status                                           ; 4e70: 2c e2 fe    ,.. :0695[3]
    bvc write_tube_r2_data                                            ; 4e73: 50 fb       P.  :0698[3]
    sta tube_host_r2_data                                             ; 4e75: 8d e3 fe    ... :069a[3]
    rts                                                               ; 4e78: 60          `   :069d[3]

; Wait for register 4 to have space and write A to it.
; &4e79 referenced 8 times by &0018, &0418, &041d, &043b, &0443, &0448, &0463, &06a1
.write_tube_r4_data
    bit tube_host_r4_status                                           ; 4e79: 2c e6 fe    ,.. :069e[3]
    bvc write_tube_r4_data                                            ; 4e7c: 50 fb       P.  :06a1[3]
    sta tube_host_r4_data                                             ; 4e7e: 8d e7 fe    ... :06a3[3]
    rts                                                               ; 4e81: 60          `   :06a6[3]

; &4e82 referenced 1 time by &0403
.c06a7
    lda l00ff                                                         ; 4e82: a5 ff       ..  :06a7[3]
    sec                                                               ; 4e84: 38          8   :06a9[3]
    ror a                                                             ; 4e85: 6a          j   :06aa[3]
    bmi write_tube_r1_data                                            ; 4e86: 30 0f       0.  :06ab[3]
.tube_evntv_handler
    pha                                                               ; 4e88: 48          H   :06ad[3]
    lda #0                                                            ; 4e89: a9 00       ..  :06ae[3]
    jsr write_tube_r1_data                                            ; 4e8b: 20 bc 06     .. :06b0[3]
    tya                                                               ; 4e8e: 98          .   :06b3[3]
    jsr write_tube_r1_data                                            ; 4e8f: 20 bc 06     .. :06b4[3]
    txa                                                               ; 4e92: 8a          .   :06b7[3]
    jsr write_tube_r1_data                                            ; 4e93: 20 bc 06     .. :06b8[3]
    pla                                                               ; 4e96: 68          h   :06bb[3]
; Wait for register 1 to have space and write A to it.
; &4e97 referenced 5 times by &06ab, &06b0, &06b4, &06b8, &06bf
.write_tube_r1_data
    bit tube_host_r1_status                                           ; 4e97: 2c e0 fe    ,.. :06bc[3]
    bvc write_tube_r1_data                                            ; 4e9a: 50 fb       P.  :06bf[3]
    sta tube_host_r1_data                                             ; 4e9c: 8d e1 fe    ... :06c1[3]
    rts                                                               ; 4e9f: 60          `   :06c4[3]

; Wait for register 2 to have data and read A from it.
; &4ea0 referenced 21 times by &0520, &0524, &052d, &0542, &0552, &055e, &0564, &056c, &0586, &05ab, &05bc, &05d3, &05db, &05f2, &05f6, &0607, &060b, &060f, &0627, &066a, &06c8
.read_tube_r2_data
    bit tube_host_r2_status                                           ; 4ea0: 2c e2 fe    ,.. :06c5[3]
    bpl read_tube_r2_data                                             ; 4ea3: 10 fb       ..  :06c8[3]
    lda tube_host_r2_data                                             ; 4ea5: ad e3 fe    ... :06ca[3]
    rts                                                               ; 4ea8: 60          `   :06cd[3]

; &4ea9 referenced 1 time by &965d
    org l4cdb + (l06ce - l0500)
    copyblock l0500, l06ce, l4cdb
    clear l0500, l06ce

; &4ea9 referenced 1 time by &965d
; &4ea9 referenced 1 time by &965d

    org &aea9
; &4ea9 referenced 1 time by &965d
.service_handler_help_and_tube
    cmp #service_help                                                 ; 4ea9: c9 09       ..  :aea9[1]
    bne caed7                                                         ; 4eab: d0 2a       .*  :aeab[1]
    tya                                                               ; 4ead: 98          .   :aead[1]
    pha                                                               ; 4eae: 48          H   :aeae[1]
    lda (os_text_ptr),y                                               ; 4eaf: b1 f2       ..  :aeaf[1]
    cmp #&0d                                                          ; 4eb1: c9 0d       ..  :aeb1[1]
    bne caed3                                                         ; 4eb3: d0 1e       ..  :aeb3[1]
    lda #&e9                                                          ; 4eb5: a9 e9       ..  :aeb5[1]
    jsr osbyte_read                                                   ; 4eb7: 20 e5 9a     .. :aeb7[1]
    ldx romsel_copy                                                   ; 4eba: a6 f4       ..  :aeba[1]
    tya                                                               ; 4ebc: 98          .   :aebc[1]
    beq caed3                                                         ; 4ebd: f0 14       ..  :aebd[1]
    jsr print_inline_l809f_top_bit_clear                              ; 4ebf: 20 77 80     w. :aebf[1]
    equs &0d, "TUBE HOST 2.30", &0d                                   ; 4ec2: 0d 54 55... .TU :aec2[1]

    nop                                                               ; 4ed2: ea          .   :aed2[1]
; &4ed3 referenced 2 times by &aeb3, &aebd
.caed3
    pla                                                               ; 4ed3: 68          h   :aed3[1]
    tay                                                               ; 4ed4: a8          .   :aed4[1]
    lda #9                                                            ; 4ed5: a9 09       ..  :aed5[1]
; &4ed7 referenced 1 time by &aeab
.caed7
    cmp #service_tube_post_init                                       ; 4ed7: c9 fe       ..  :aed7[1]
    bcc just_rts                                                      ; 4ed9: 90 5c       .\  :aed9[1]
    bne service_handler_tube_main_init                                ; 4edb: d0 1b       ..  :aedb[1]
    cpy #0                                                            ; 4edd: c0 00       ..  :aedd[1]
    beq just_rts                                                      ; 4edf: f0 56       .V  :aedf[1]
    ldx #6                                                            ; 4ee1: a2 06       ..  :aee1[1]
    lda #osbyte_explode_chars                                         ; 4ee3: a9 14       ..  :aee3[1]
    jsr osbyte                                                        ; 4ee5: 20 f4 ff     .. :aee5[1]   ; Explode character definition RAM (taking six extra pages of memory), for all characters 32-255
; &4ee8 referenced 2 times by &aeeb, &aef5
.tube_banner_loop
    bit tube_host_r1_status                                           ; 4ee8: 2c e0 fe    ,.. :aee8[1]
    bpl tube_banner_loop                                              ; 4eeb: 10 fb       ..  :aeeb[1]
    lda tube_host_r1_data                                             ; 4eed: ad e1 fe    ... :aeed[1]
    beq lda_0_rts                                                     ; 4ef0: f0 43       .C  :aef0[1]
    jsr oswrch                                                        ; 4ef2: 20 ee ff     .. :aef2[1]
    jmp tube_banner_loop                                              ; 4ef5: 4c e8 ae    L.. :aef5[1]

; &4ef8 referenced 1 time by &aedb
.service_handler_tube_main_init
    lda #<tube_evntv_handler                                          ; 4ef8: a9 ad       ..  :aef8[1]
    sta evntv                                                         ; 4efa: 8d 20 02    . . :aefa[1]
    lda #>tube_evntv_handler                                          ; 4efd: a9 06       ..  :aefd[1]
    sta evntv+1                                                       ; 4eff: 8d 21 02    .!. :aeff[1]
    lda #<tube_brkv_handler                                           ; 4f02: a9 16       ..  :af02[1]
    sta brkv                                                          ; 4f04: 8d 02 02    ... :af04[1]
    lda #>tube_brkv_handler                                           ; 4f07: a9 00       ..  :af07[1]
    sta brkv+1                                                        ; 4f09: 8d 03 02    ... :af09[1]
    lda #&8e                                                          ; 4f0c: a9 8e       ..  :af0c[1]
    sta tube_host_r1_status                                           ; 4f0e: 8d e0 fe    ... :af0e[1]
    ldy #0                                                            ; 4f11: a0 00       ..  :af11[1]
; &4f13 referenced 1 time by &af26
.loop_caf13
    lda tube_host_code1,y                                             ; 4f13: b9 79 af    .y. :af13[1]
    sta c0400,y                                                       ; 4f16: 99 00 04    ... :af16[1]
    lda tube_host_code2,y                                             ; 4f19: b9 db ac    ... :af19[1]
    sta l0500,y                                                       ; 4f1c: 99 00 05    ... :af1c[1]
    lda tube_host_code2+256,y                                         ; 4f1f: b9 db ad    ... :af1f[1]
    sta l0600,y                                                       ; 4f22: 99 00 06    ... :af22[1]
    dey                                                               ; 4f25: 88          .   :af25[1]
    bne loop_caf13                                                    ; 4f26: d0 eb       ..  :af26[1]
    jsr sub_c0421                                                     ; 4f28: 20 21 04     !. :af28[1]
    ldx #&41 ; 'A'                                                    ; 4f2b: a2 41       .A  :af2b[1]
; &4f2d referenced 1 time by &af33
.loop_caf2d
    lda tube_host_code3,x                                             ; 4f2d: bd 38 af    .8. :af2d[1]
    sta tube_brkv_handler_fwd,x                                       ; 4f30: 95 16       ..  :af30[1]
    dex                                                               ; 4f32: ca          .   :af32[1]
    bpl loop_caf2d                                                    ; 4f33: 10 f8       ..  :af33[1]
; &4f35 referenced 1 time by &aef0
.lda_0_rts
    lda #0                                                            ; 4f35: a9 00       ..  :af35[1]
; &4f37 referenced 2 times by &aed9, &aedf
.just_rts
    rts                                                               ; 4f37: 60          `   :af37[1]

; &4f38 referenced 1 time by &af30
.tube_host_code3
    org sub_c4ea9 + (tube_host_code3 - service_handler_help_and_tube)
    copyblock service_handler_help_and_tube, tube_host_code3, sub_c4ea9
    clear service_handler_help_and_tube, tube_host_code3

; &4f38 referenced 1 time by &af30
; &4f38 referenced 1 time by &af30

    org &16
; &4f38 referenced 1 time by &af30
.tube_brkv_handler
    lda #&ff                                                          ; 4f38: a9 ff       ..  :0016[4]
    jsr write_tube_r4_data                                            ; 4f3a: 20 9e 06     .. :0018[4]
    lda tube_host_r2_data                                             ; 4f3d: ad e3 fe    ... :001b[4]
    lda #0                                                            ; 4f40: a9 00       ..  :001e[4]
    jsr write_tube_r2_data                                            ; 4f42: 20 95 06     .. :0020[4]
    tay                                                               ; 4f45: a8          .   :0023[4]
    lda (l00fd),y                                                     ; 4f46: b1 fd       ..  :0024[4]
    jsr write_tube_r2_data                                            ; 4f48: 20 95 06     .. :0026[4]
; &4f4b referenced 1 time by &0030
.loop_c0029
    iny                                                               ; 4f4b: c8          .   :0029[4]
    lda (l00fd),y                                                     ; 4f4c: b1 fd       ..  :002a[4]
    jsr write_tube_r2_data                                            ; 4f4e: 20 95 06     .. :002c[4]
    tax                                                               ; 4f51: aa          .   :002f[4]
    bne loop_c0029                                                    ; 4f52: d0 f7       ..  :0030[4]
; &4f54 referenced 1 time by &0477
.c0032
    ldx #&ff                                                          ; 4f54: a2 ff       ..  :0032[4]
    txs                                                               ; 4f56: 9a          .   :0034[4]
    cli                                                               ; 4f57: 58          X   :0035[4]
; &4f58 referenced 6 times by &0044, &057f, &05a6, &0604, &0665, &0692
.c0036
    bit tube_host_r1_status                                           ; 4f58: 2c e0 fe    ,.. :0036[4]
    bpl c0041                                                         ; 4f5b: 10 06       ..  :0039[4]
; &4f5d referenced 1 time by &0049
.loop_c003b
    lda tube_host_r1_data                                             ; 4f5d: ad e1 fe    ... :003b[4]
    jsr oswrch                                                        ; 4f60: 20 ee ff     .. :003e[4]
; &4f63 referenced 1 time by &0039
.c0041
    bit tube_host_r2_status                                           ; 4f63: 2c e2 fe    ,.. :0041[4]
    bpl c0036                                                         ; 4f66: 10 f0       ..  :0044[4]
    bit tube_host_r1_status                                           ; 4f68: 2c e0 fe    ,.. :0046[4]
    bmi loop_c003b                                                    ; 4f6b: 30 f0       0.  :0049[4]
    ldx tube_host_r2_data                                             ; 4f6d: ae e3 fe    ... :004b[4]
; Patch the following JMP so we effectively do JMP (&500,X)
    stx jump_address_low                                              ; 4f70: 86 51       .Q  :004e[4]
.sub_c0050
jump_address_low = sub_c0050+1
    jmp (l0500)                                                       ; 4f72: 6c 00 05    l.. :0050[4]

; &4f73 referenced 1 time by &004e
; &4f75 referenced 2 times by &04da, &04ea
.l0053
    equb 0                                                            ; 4f75: 00          .   :0053[4]
; &4f76 referenced 3 times by &04b2, &04d0, &04ef
.l0054
    equb &80                                                          ; 4f76: 80          .   :0054[4]
; &4f77 referenced 2 times by &04b6, &04f9
.l0055
    equb 0                                                            ; 4f77: 00          .   :0055[4]
; &4f78 referenced 2 times by &04ba, &04f7
.l0056
    equb 0                                                            ; 4f78: 00          .   :0056[4]
; &4f79 referenced 1 time by &af16
    org c4f38 + (l0057 - tube_brkv_handler)
    copyblock tube_brkv_handler, l0057, c4f38
    clear tube_brkv_handler, l0057

; &4f79 referenced 1 time by &af16
; &4f79 referenced 1 time by &af16

    org &0400
; &4f79 referenced 1 time by &af16
.c0400
    jmp c0484                                                         ; 4f79: 4c 84 04    L.. :0400[2]

    jmp c06a7                                                         ; 4f7c: 4c a7 06    L.. :0403[2]

; &4f7f referenced 14 times by &0493, &04cb, &892a, &8cae, &8f6e, &8f7d, &9346, &982b, &bd64, &bd91, &be09, &be2c, &be7d, &be85
.tube_entry
    cmp #&80                                                          ; 4f7f: c9 80       ..  :0406[2]
    bcc tube_entry_small_a                                            ; 4f81: 90 2b       .+  :0408[2]
    cmp #&c0                                                          ; 4f83: c9 c0       ..  :040a[2]
    bcs tube_entry_claim_tube                                         ; 4f85: b0 1a       ..  :040c[2]
; This is a call to release the tube.
    ora #&40 ; '@'                                                    ; 4f87: 09 40       .@  :040e[2]
    cmp l0015                                                         ; 4f89: c5 15       ..  :0410[2]
    bne c0434                                                         ; 4f8b: d0 20       .   :0412[2]
; &4f8d referenced 1 time by &0471
.sub_c0414
    php                                                               ; 4f8d: 08          .   :0414[2]
    sei                                                               ; 4f8e: 78          x   :0415[2]
    lda #5                                                            ; 4f8f: a9 05       ..  :0416[2]
    jsr write_tube_r4_data                                            ; 4f91: 20 9e 06     .. :0418[2]
    lda l0015                                                         ; 4f94: a5 15       ..  :041b[2]
    jsr write_tube_r4_data                                            ; 4f96: 20 9e 06     .. :041d[2]
    plp                                                               ; 4f99: 28          (   :0420[2]
; &4f9a referenced 1 time by &af28
.sub_c0421
    lda #&80                                                          ; 4f9a: a9 80       ..  :0421[2]
    sta l0015                                                         ; 4f9c: 85 15       ..  :0423[2]
    sta l0014                                                         ; 4f9e: 85 14       ..  :0425[2]
    rts                                                               ; 4fa0: 60          `   :0427[2]

; &4fa1 referenced 1 time by &040c
.tube_entry_claim_tube
    asl l0014                                                         ; 4fa1: 06 14       ..  :0428[2]
    bcs c0432                                                         ; 4fa3: b0 06       ..  :042a[2]
    cmp l0015                                                         ; 4fa5: c5 15       ..  :042c[2]
    beq c0434                                                         ; 4fa7: f0 04       ..  :042e[2]
    clc                                                               ; 4fa9: 18          .   :0430[2]
    rts                                                               ; 4faa: 60          `   :0431[2]

; &4fab referenced 1 time by &042a
.c0432
    sta l0015                                                         ; 4fab: 85 15       ..  :0432[2]
; &4fad referenced 2 times by &0412, &042e
.c0434
    rts                                                               ; 4fad: 60          `   :0434[2]

; &4fae referenced 1 time by &0408
.tube_entry_small_a
    php                                                               ; 4fae: 08          .   :0435[2]
    sei                                                               ; 4faf: 78          x   :0436[2]
    sty l0013                                                         ; 4fb0: 84 13       ..  :0437[2]
    stx l0012                                                         ; 4fb2: 86 12       ..  :0439[2]
    jsr write_tube_r4_data                                            ; 4fb4: 20 9e 06     .. :043b[2]
    tax                                                               ; 4fb7: aa          .   :043e[2]
    ldy #3                                                            ; 4fb8: a0 03       ..  :043f[2]
    lda l0015                                                         ; 4fba: a5 15       ..  :0441[2]
    jsr write_tube_r4_data                                            ; 4fbc: 20 9e 06     .. :0443[2]
; &4fbf referenced 1 time by &044c
.loop_c0446
    lda (l0012),y                                                     ; 4fbf: b1 12       ..  :0446[2]
    jsr write_tube_r4_data                                            ; 4fc1: 20 9e 06     .. :0448[2]
    dey                                                               ; 4fc4: 88          .   :044b[2]
    bpl loop_c0446                                                    ; 4fc5: 10 f8       ..  :044c[2]
    ldy #&18                                                          ; 4fc7: a0 18       ..  :044e[2]
    sty tube_host_r1_status                                           ; 4fc9: 8c e0 fe    ... :0450[2]
    lda tube_entry_flags,x                                            ; 4fcc: bd 18 05    ... :0453[2]
    sta tube_host_r1_status                                           ; 4fcf: 8d e0 fe    ... :0456[2]
    lsr a                                                             ; 4fd2: 4a          J   :0459[2]
    lsr a                                                             ; 4fd3: 4a          J   :045a[2]
    bcc c0463                                                         ; 4fd4: 90 06       ..  :045b[2]
    bit tube_host_r3_data                                             ; 4fd6: 2c e5 fe    ,.. :045d[2]
    bit tube_host_r3_data                                             ; 4fd9: 2c e5 fe    ,.. :0460[2]
; &4fdc referenced 1 time by &045b
.c0463
    jsr write_tube_r4_data                                            ; 4fdc: 20 9e 06     .. :0463[2]
; &4fdf referenced 1 time by &0469
.loop_c0466
    bit tube_host_r4_status                                           ; 4fdf: 2c e6 fe    ,.. :0466[2]
    bvc loop_c0466                                                    ; 4fe2: 50 fb       P.  :0469[2]
    bcs c047a                                                         ; 4fe4: b0 0d       ..  :046b[2]
    cpx #4                                                            ; 4fe6: e0 04       ..  :046d[2]
    bne c0482                                                         ; 4fe8: d0 11       ..  :046f[2]
; &4fea referenced 1 time by &048f
.loop_c0471
    jsr sub_c0414                                                     ; 4fea: 20 14 04     .. :0471[2]
    jsr write_tube_r2_data                                            ; 4fed: 20 95 06     .. :0474[2]
    jmp c0032                                                         ; 4ff0: 4c 32 00    L2. :0477[2]

; &4ff3 referenced 1 time by &046b
.c047a
    lsr a                                                             ; 4ff3: 4a          J   :047a[2]
    bcc c0482                                                         ; 4ff4: 90 05       ..  :047b[2]
    ldy #&88                                                          ; 4ff6: a0 88       ..  :047d[2]
    sty tube_host_r1_status                                           ; 4ff8: 8c e0 fe    ... :047f[2]
; &4ffb referenced 2 times by &046f, &047b
.c0482
    plp                                                               ; 4ffb: 28          (   :0482[2]
    rts                                                               ; 4ffc: 60          `   :0483[2]

; &4ffd referenced 1 time by &0400
.c0484
    cli                                                               ; 4ffd: 58          X   :0484[2]
    bcs c0491                                                         ; 4ffe: b0 0a       ..  :0485[2]
    bne c048c                                                         ; 5000: d0 03       ..  :0487[2]
    jmp c059c                                                         ; 5002: 4c 9c 05    L.. :0489[2]

; &5005 referenced 1 time by &0487
.c048c
    ldx l028d                                                         ; 5005: ae 8d 02    ... :048c[2]
    beq loop_c0471                                                    ; 5008: f0 e0       ..  :048f[2]
; &500a referenced 2 times by &0485, &0496
.c0491
    lda #&ff                                                          ; 500a: a9 ff       ..  :0491[2]
    jsr tube_entry                                                    ; 500c: 20 06 04     .. :0493[2]
    bcc c0491                                                         ; 500f: 90 f9       ..  :0496[2]
    jsr sub_c04ce                                                     ; 5011: 20 ce 04     .. :0498[2]
; &5014 referenced 1 time by &04c0
.c049b
    php                                                               ; 5014: 08          .   :049b[2]
    sei                                                               ; 5015: 78          x   :049c[2]
    lda #7                                                            ; 5016: a9 07       ..  :049d[2]
    jsr sub_c04c7                                                     ; 5018: 20 c7 04     .. :049f[2]
    ldy #0                                                            ; 501b: a0 00       ..  :04a2[2]
    sty l0000                                                         ; 501d: 84 00       ..  :04a4[2]
; &501f referenced 1 time by &04af
.loop_c04a6
    lda (l0000),y                                                     ; 501f: b1 00       ..  :04a6[2]
    sta tube_host_r3_data                                             ; 5021: 8d e5 fe    ... :04a8[2]
    nop                                                               ; 5024: ea          .   :04ab[2]
    nop                                                               ; 5025: ea          .   :04ac[2]
    nop                                                               ; 5026: ea          .   :04ad[2]
    iny                                                               ; 5027: c8          .   :04ae[2]
    bne loop_c04a6                                                    ; 5028: d0 f5       ..  :04af[2]
    plp                                                               ; 502a: 28          (   :04b1[2]
    inc l0054                                                         ; 502b: e6 54       .T  :04b2[2]
    bne c04bc                                                         ; 502d: d0 06       ..  :04b4[2]
    inc l0055                                                         ; 502f: e6 55       .U  :04b6[2]
    bne c04bc                                                         ; 5031: d0 02       ..  :04b8[2]
    inc l0056                                                         ; 5033: e6 56       .V  :04ba[2]
; &5035 referenced 2 times by &04b4, &04b8
.c04bc
    inc l0001                                                         ; 5035: e6 01       ..  :04bc[2]
    bit l0001                                                         ; 5037: 24 01       $.  :04be[2]
    bvc c049b                                                         ; 5039: 50 d9       P.  :04c0[2]
    jsr sub_c04ce                                                     ; 503b: 20 ce 04     .. :04c2[2]
    lda #4                                                            ; 503e: a9 04       ..  :04c5[2]
; &5040 referenced 1 time by &049f
.sub_c04c7
    ldy #0                                                            ; 5040: a0 00       ..  :04c7[2]
    ldx #&53 ; 'S'                                                    ; 5042: a2 53       .S  :04c9[2]
    jmp tube_entry                                                    ; 5044: 4c 06 04    L.. :04cb[2]

; &5047 referenced 2 times by &0498, &04c2
.sub_c04ce
    lda #&80                                                          ; 5047: a9 80       ..  :04ce[2]
    sta l0054                                                         ; 5049: 85 54       .T  :04d0[2]
    sta l0001                                                         ; 504b: 85 01       ..  :04d2[2]
    lda #&20 ; ' '                                                    ; 504d: a9 20       .   :04d4[2]
    and rom_type                                                      ; 504f: 2d 06 80    -.. :04d6[2]
    tay                                                               ; 5052: a8          .   :04d9[2]
    sty l0053                                                         ; 5053: 84 53       .S  :04da[2]
    beq c04f7                                                         ; 5055: f0 19       ..  :04dc[2]
    ldx copyright_offset                                              ; 5057: ae 07 80    ... :04de[2]
; &505a referenced 1 time by &04e5
.loop_c04e1
    inx                                                               ; 505a: e8          .   :04e1[2]
    lda rom_header,x                                                  ; 505b: bd 00 80    ... :04e2[2]
    bne loop_c04e1                                                    ; 505e: d0 fa       ..  :04e5[2]
    lda l8001,x                                                       ; 5060: bd 01 80    ... :04e7[2]
    sta l0053                                                         ; 5063: 85 53       .S  :04ea[2]
    lda l8002,x                                                       ; 5065: bd 02 80    ... :04ec[2]
    sta l0054                                                         ; 5068: 85 54       .T  :04ef[2]
    ldy service_entry,x                                               ; 506a: bc 03 80    ... :04f1[2]
    lda l8004,x                                                       ; 506d: bd 04 80    ... :04f4[2]
; &5070 referenced 1 time by &04dc
.c04f7
    sta l0056                                                         ; 5070: 85 56       .V  :04f7[2]
    sty l0055                                                         ; 5072: 84 55       .U  :04f9[2]
    rts                                                               ; 5074: 60          `   :04fb[2]

; &5075 referenced 1 time by &b2b4
    org c4f79 + (l04fc - c0400)
    copyblock c0400, l04fc, c4f79
    clear c0400, l04fc

; &5075 referenced 1 time by &b2b4
; &5075 referenced 1 time by &b2b4

    org &b075
; &5075 referenced 1 time by &b2b4
.lb075
    equb &0a                                                          ; 5075: 0a          .   :b075[1]
    equs "SRAM 1.05"                                                  ; 5076: 53 52 41... SRA :b076[1]
    equb &0d, &0a                                                     ; 507f: 0d 0a       ..  :b07f[1]
    equs "  SRDATA  <id.>"                                            ; 5081: 20 20 53...   S :b081[1]
    equb &0d, &0a                                                     ; 5090: 0d 0a       ..  :b090[1]
    equs "  SRLOAD  <filename> <sram address> (<id.>) (Q)"            ; 5092: 20 20 53...   S :b092[1]
    equb &0d, &0a                                                     ; 50c1: 0d 0a       ..  :b0c1[1]
    equs "  SRREAD  <dest. start> <dest. end> <sram start> (<id.>)"   ; 50c3: 20 20 53...   S :b0c3[1]
    equb &0d, &0a                                                     ; 50fb: 0d 0a       ..  :b0fb[1]
    equs "  SRROM   <id.>"                                            ; 50fd: 20 20 53...   S :b0fd[1]
    equb &0d, &0a                                                     ; 510c: 0d 0a       ..  :b10c[1]
    equs "  SRSAVE  <filename> <sram start> <sram end> (<id.>) (Q)"   ; 510e: 20 20 53...   S :b10e[1]
    equb &0d, &0a                                                     ; 5146: 0d 0a       ..  :b146[1]
    equs "  SRWRITE <source start> <source end> <sram s"              ; 5148: 20 20 53...   S :b148[1]
; &5175 referenced 1 time by &b2bd
.lb175
    equs "tart> (<id.>)"                                              ; 5175: 74 61 72... tar :b175[1]
    equb &0d, &0a                                                     ; 5182: 0d 0a       ..  :b182[1]
    equs "End addresses may be replaced by +<length>"                 ; 5184: 45 6e 64... End :b184[1]
    equb &0d, &0a,   0                                                ; 51ae: 0d 0a 00    ... :b1ae[1]

; &51b1 referenced 1 time by &bedd
.general_service_handler
    jsr sub_c965d                                                     ; 51b1: 20 5d 96     ]. :b1b1[1]
    pha                                                               ; 51b4: 48          H   :b1b4[1]
    tax                                                               ; 51b5: aa          .   :b1b5[1]
    lda l00b8                                                         ; 51b6: a5 b8       ..  :b1b6[1]
    pha                                                               ; 51b8: 48          H   :b1b8[1]
    lda l00b9                                                         ; 51b9: a5 b9       ..  :b1b9[1]
    pha                                                               ; 51bb: 48          H   :b1bb[1]
    tya                                                               ; 51bc: 98          .   :b1bc[1]
    pha                                                               ; 51bd: 48          H   :b1bd[1]
    txa                                                               ; 51be: 8a          .   :b1be[1]
    ldx romsel_copy                                                   ; 51bf: a6 f4       ..  :b1bf[1]
    jsr cb82b                                                         ; 51c1: 20 2b b8     +. :b1c1[1]
    bit l00b9                                                         ; 51c4: 24 b9       $.  :b1c4[1]
    bmi cb203                                                         ; 51c6: 30 3b       0;  :b1c6[1]
    cmp #8                                                            ; 51c8: c9 08       ..  :b1c8[1]
    bne cb1fc                                                         ; 51ca: d0 30       .0  :b1ca[1]
    lda l00ef                                                         ; 51cc: a5 ef       ..  :b1cc[1]
    cmp #&43 ; 'C'                                                    ; 51ce: c9 43       .C  :b1ce[1]
    bne cb1dd                                                         ; 51d0: d0 0b       ..  :b1d0[1]
    jsr sub_cb2c8                                                     ; 51d2: 20 c8 b2     .. :b1d2[1]
; &51d5 referenced 3 times by &b1f9, &b231, &b25d
.cb1d5
    tsx                                                               ; 51d5: ba          .   :b1d5[1]
    lda #0                                                            ; 51d6: a9 00       ..  :b1d6[1]
    sta l0104,x                                                       ; 51d8: 9d 04 01    ... :b1d8[1]
    beq cb203                                                         ; 51db: f0 26       .&  :b1db[1]
; &51dd referenced 1 time by &b1d0
.cb1dd
    cmp #&42 ; 'B'                                                    ; 51dd: c9 42       .B  :b1dd[1]
    bne cb203                                                         ; 51df: d0 22       ."  :b1df[1]
    ldy #9                                                            ; 51e1: a0 09       ..  :b1e1[1]
; &51e3 referenced 1 time by &b1eb
.loop_cb1e3
    lda (l00f0),y                                                     ; 51e3: b1 f0       ..  :b1e3[1]
    sta l00b4,y                                                       ; 51e5: 99 b4 00    ... :b1e5[1]
    dey                                                               ; 51e8: 88          .   :b1e8[1]
    cpy #8                                                            ; 51e9: c0 08       ..  :b1e9[1]
    bcs loop_cb1e3                                                    ; 51eb: b0 f6       ..  :b1eb[1]
; &51ed referenced 1 time by &b1f3
.loop_cb1ed
    lda (l00f0),y                                                     ; 51ed: b1 f0       ..  :b1ed[1]
    sta l00b0,y                                                       ; 51ef: 99 b0 00    ... :b1ef[1]
    dey                                                               ; 51f2: 88          .   :b1f2[1]
    bpl loop_cb1ed                                                    ; 51f3: 10 f8       ..  :b1f3[1]
    cli                                                               ; 51f5: 58          X   :b1f5[1]
    jsr cbcb9                                                         ; 51f6: 20 b9 bc     .. :b1f6[1]
    jmp cb1d5                                                         ; 51f9: 4c d5 b1    L.. :b1f9[1]

; &51fc referenced 1 time by &b1ca
.cb1fc
    cmp #2                                                            ; 51fc: c9 02       ..  :b1fc[1]
    bne cb20f                                                         ; 51fe: d0 0f       ..  :b1fe[1]
    jsr sub_cb882                                                     ; 5200: 20 82 b8     .. :b200[1]
; &5203 referenced 10 times by &b1c6, &b1db, &b1df, &b219, &b21e, &b228, &b22c, &b262, &b26a, &b280
.cb203
    pla                                                               ; 5203: 68          h   :b203[1]
    tay                                                               ; 5204: a8          .   :b204[1]
    pla                                                               ; 5205: 68          h   :b205[1]
    sta l00b9                                                         ; 5206: 85 b9       ..  :b206[1]
    pla                                                               ; 5208: 68          h   :b208[1]
    sta l00b8                                                         ; 5209: 85 b8       ..  :b209[1]
    pla                                                               ; 520b: 68          h   :b20b[1]
    ldx romsel_copy                                                   ; 520c: a6 f4       ..  :b20c[1]
    rts                                                               ; 520e: 60          `   :b20e[1]

; &520f referenced 1 time by &b1fe
.cb20f
    cmp #6                                                            ; 520f: c9 06       ..  :b20f[1]
    bne cb221                                                         ; 5211: d0 0e       ..  :b211[1]
    ldy #&ff                                                          ; 5213: a0 ff       ..  :b213[1]
    lda (l00b8),y                                                     ; 5215: b1 b8       ..  :b215[1]
    cmp #&4e ; 'N'                                                    ; 5217: c9 4e       .N  :b217[1]
    bne cb203                                                         ; 5219: d0 e8       ..  :b219[1]
    jsr sub_cb5f2                                                     ; 521b: 20 f2 b5     .. :b21b[1]
    jmp cb203                                                         ; 521e: 4c 03 b2    L.. :b21e[1]

; &5221 referenced 1 time by &b211
.cb221
    cmp #4                                                            ; 5221: c9 04       ..  :b221[1]
    bne cb23d                                                         ; 5223: d0 18       ..  :b223[1]
    jsr sub_cb9f5                                                     ; 5225: 20 f5 b9     .. :b225[1]
    bcs cb203                                                         ; 5228: b0 d9       ..  :b228[1]
    cpx #4                                                            ; 522a: e0 04       ..  :b22a[1]
    beq cb203                                                         ; 522c: f0 d5       ..  :b22c[1]
    jsr sub_cb234                                                     ; 522e: 20 34 b2     4. :b22e[1]
    jmp cb1d5                                                         ; 5231: 4c d5 b1    L.. :b231[1]

; &5234 referenced 1 time by &b22e
.sub_cb234
    lda sram_table,x                                                  ; 5234: bd 30 ba    .0. :b234[1]
    pha                                                               ; 5237: 48          H   :b237[1]
    lda sram_table+1,x                                                ; 5238: bd 31 ba    .1. :b238[1]
    pha                                                               ; 523b: 48          H   :b23b[1]
    rts                                                               ; 523c: 60          `   :b23c[1]

; &523d referenced 1 time by &b223
.cb23d
    cmp #7                                                            ; 523d: c9 07       ..  :b23d[1]
    bne cb268                                                         ; 523f: d0 27       .'  :b23f[1]
    lda l00ef                                                         ; 5241: a5 ef       ..  :b241[1]
    cmp #&44 ; 'D'                                                    ; 5243: c9 44       .D  :b243[1]
    bne cb260                                                         ; 5245: d0 19       ..  :b245[1]
    ldy #&ee                                                          ; 5247: a0 ee       ..  :b247[1]
; &5249 referenced 1 time by &b266
.loop_cb249
    lda (l00b8),y                                                     ; 5249: b1 b8       ..  :b249[1]
    and #&3f ; '?'                                                    ; 524b: 29 3f       )?  :b24b[1]
    sta l00b0                                                         ; 524d: 85 b0       ..  :b24d[1]
    ldy #&fe                                                          ; 524f: a0 fe       ..  :b24f[1]
    lda (l00b8),y                                                     ; 5251: b1 b8       ..  :b251[1]
    and #8                                                            ; 5253: 29 08       ).  :b253[1]
    asl a                                                             ; 5255: 0a          .   :b255[1]
    asl a                                                             ; 5256: 0a          .   :b256[1]
    asl a                                                             ; 5257: 0a          .   :b257[1]
    asl a                                                             ; 5258: 0a          .   :b258[1]
    ora l00b0                                                         ; 5259: 05 b0       ..  :b259[1]
    sta l00f0                                                         ; 525b: 85 f0       ..  :b25b[1]
    jmp cb1d5                                                         ; 525d: 4c d5 b1    L.. :b25d[1]

; &5260 referenced 1 time by &b245
.cb260
    cmp #&45 ; 'E'                                                    ; 5260: c9 45       .E  :b260[1]
    bne cb203                                                         ; 5262: d0 9f       ..  :b262[1]
    ldy #&fd                                                          ; 5264: a0 fd       ..  :b264[1]
    bne loop_cb249                                                    ; 5266: d0 e1       ..  :b266[1]
; &5268 referenced 1 time by &b23f
.cb268
    cmp #9                                                            ; 5268: c9 09       ..  :b268[1]
    bne cb203                                                         ; 526a: d0 97       ..  :b26a[1]
    lda #&0d                                                          ; 526c: a9 0d       ..  :b26c[1]
    jsr sub_cbac4                                                     ; 526e: 20 c4 ba     .. :b26e[1]
    bcs cb297                                                         ; 5271: b0 24       .$  :b271[1]
    ldx #0                                                            ; 5273: a2 00       ..  :b273[1]
; &5275 referenced 1 time by &b27e
.loop_cb275
    lda lb283,x                                                       ; 5275: bd 83 b2    ... :b275[1]
    jsr oswrch                                                        ; 5278: 20 ee ff     .. :b278[1]
    inx                                                               ; 527b: e8          .   :b27b[1]
    cpx #&14                                                          ; 527c: e0 14       ..  :b27c[1]
    bne loop_cb275                                                    ; 527e: d0 f5       ..  :b27e[1]
; &5280 referenced 2 times by &b2a6, &b2c0
.cb280
    jmp cb203                                                         ; 5280: 4c 03 b2    L.. :b280[1]

; &5283 referenced 1 time by &b275
.lb283
    equb &0a                                                          ; 5283: 0a          .   :b283[1]
    equs "SRAM 1.05"                                                  ; 5284: 53 52 41... SRA :b284[1]
    equb &0d, &0a                                                     ; 528d: 0d 0a       ..  :b28d[1]
    equs "  SRAM"                                                     ; 528f: 20 20 53...   S :b28f[1]
    equb &0d, &0a                                                     ; 5295: 0d 0a       ..  :b295[1]

; &5297 referenced 2 times by &b271, &b2b0
.cb297
    jsr sub_cb9f5                                                     ; 5297: 20 f5 b9     .. :b297[1]
    cpx #4                                                            ; 529a: e0 04       ..  :b29a[1]
    beq cb2b2                                                         ; 529c: f0 14       ..  :b29c[1]
    lda #0                                                            ; 529e: a9 00       ..  :b29e[1]
; &52a0 referenced 2 times by &b2aa, &b2ae
.cb2a0
    tax                                                               ; 52a0: aa          .   :b2a0[1]
    iny                                                               ; 52a1: c8          .   :b2a1[1]
    lda (os_text_ptr),y                                               ; 52a2: b1 f2       ..  :b2a2[1]
    cmp #&0d                                                          ; 52a4: c9 0d       ..  :b2a4[1]
    beq cb280                                                         ; 52a6: f0 d8       ..  :b2a6[1]
    cmp #&20 ; ' '                                                    ; 52a8: c9 20       .   :b2a8[1]
    beq cb2a0                                                         ; 52aa: f0 f4       ..  :b2aa[1]
    cpx #&20 ; ' '                                                    ; 52ac: e0 20       .   :b2ac[1]
    bne cb2a0                                                         ; 52ae: d0 f0       ..  :b2ae[1]
    beq cb297                                                         ; 52b0: f0 e5       ..  :b2b0[1]
; &52b2 referenced 1 time by &b29c
.cb2b2
    ldy #0                                                            ; 52b2: a0 00       ..  :b2b2[1]
; &52b4 referenced 1 time by &b2bb
.loop_cb2b4
    lda lb075,y                                                       ; 52b4: b9 75 b0    .u. :b2b4[1]
    jsr oswrch                                                        ; 52b7: 20 ee ff     .. :b2b7[1]
    iny                                                               ; 52ba: c8          .   :b2ba[1]
    bne loop_cb2b4                                                    ; 52bb: d0 f7       ..  :b2bb[1]
; &52bd referenced 1 time by &b2c6
.loop_cb2bd
    lda lb175,y                                                       ; 52bd: b9 75 b1    .u. :b2bd[1]
    beq cb280                                                         ; 52c0: f0 be       ..  :b2c0[1]
    jsr oswrch                                                        ; 52c2: 20 ee ff     .. :b2c2[1]
    iny                                                               ; 52c5: c8          .   :b2c5[1]
    bne loop_cb2bd                                                    ; 52c6: d0 f5       ..  :b2c6[1]
; &52c8 referenced 1 time by &b1d2
.sub_cb2c8
    jsr cb82b                                                         ; 52c8: 20 2b b8     +. :b2c8[1]
    lda #&ee                                                          ; 52cb: a9 ee       ..  :b2cb[1]
    sta l00b8                                                         ; 52cd: 85 b8       ..  :b2cd[1]
    ldy #&0b                                                          ; 52cf: a0 0b       ..  :b2cf[1]
; &52d1 referenced 1 time by &b2e4
.loop_cb2d1
    lda (l00f0),y                                                     ; 52d1: b1 f0       ..  :b2d1[1]
    cpy #0                                                            ; 52d3: c0 00       ..  :b2d3[1]
    bne cb2e1                                                         ; 52d5: d0 0a       ..  :b2d5[1]
    and #&c0                                                          ; 52d7: 29 c0       ).  :b2d7[1]
    sta l00bc                                                         ; 52d9: 85 bc       ..  :b2d9[1]
    lda (l00b8),y                                                     ; 52db: b1 b8       ..  :b2db[1]
    and #&3f ; '?'                                                    ; 52dd: 29 3f       )?  :b2dd[1]
    ora l00bc                                                         ; 52df: 05 bc       ..  :b2df[1]
; &52e1 referenced 1 time by &b2d5
.cb2e1
    sta (l00b8),y                                                     ; 52e1: 91 b8       ..  :b2e1[1]
    dey                                                               ; 52e3: 88          .   :b2e3[1]
    bpl loop_cb2d1                                                    ; 52e4: 10 eb       ..  :b2e4[1]
    cli                                                               ; 52e6: 58          X   :b2e6[1]
; &52e7 referenced 1 time by &bbcd
.cb2e7
    jsr cb82b                                                         ; 52e7: 20 2b b8     +. :b2e7[1]
    ldy #&f2                                                          ; 52ea: a0 f2       ..  :b2ea[1]
    lda (l00b8),y                                                     ; 52ec: b1 b8       ..  :b2ec[1]
    tax                                                               ; 52ee: aa          .   :b2ee[1]
    iny                                                               ; 52ef: c8          .   :b2ef[1]
    lda (l00b8),y                                                     ; 52f0: b1 b8       ..  :b2f0[1]
    jsr sub_cb85d                                                     ; 52f2: 20 5d b8     ]. :b2f2[1]
    bvs cb305                                                         ; 52f5: 70 0e       p.  :b2f5[1]
    ldy #&f1                                                          ; 52f7: a0 f1       ..  :b2f7[1]
    lda (l00b8),y                                                     ; 52f9: b1 b8       ..  :b2f9[1]
    tay                                                               ; 52fb: a8          .   :b2fb[1]
    cpy #&14                                                          ; 52fc: c0 14       ..  :b2fc[1]
    bcc cb314                                                         ; 52fe: 90 14       ..  :b2fe[1]
; &5300 referenced 2 times by &b324, &bcd3
.cb300
    ldx #0                                                            ; 5300: a2 00       ..  :b300[1]
    jmp cb8fb                                                         ; 5302: 4c fb b8    L.. :b302[1]

; &5305 referenced 1 time by &b2f5
.cb305
    jsr sub_cb6b1                                                     ; 5305: 20 b1 b6     .. :b305[1]
    sty l00ba                                                         ; 5308: 84 ba       ..  :b308[1]
    ldy #&f3                                                          ; 530a: a0 f3       ..  :b30a[1]
    sta (l00b8),y                                                     ; 530c: 91 b8       ..  :b30c[1]
    txa                                                               ; 530e: 8a          .   :b30e[1]
    dey                                                               ; 530f: 88          .   :b30f[1]
    sta (l00b8),y                                                     ; 5310: 91 b8       ..  :b310[1]
    ldy l00ba                                                         ; 5312: a4 ba       ..  :b312[1]
; &5314 referenced 1 time by &b2fe
.cb314
    jsr sub_cb6fe                                                     ; 5314: 20 fe b6     .. :b314[1]
    tax                                                               ; 5317: aa          .   :b317[1]
    tya                                                               ; 5318: 98          .   :b318[1]
    ldy #&f1                                                          ; 5319: a0 f1       ..  :b319[1]
    sta (l00b8),y                                                     ; 531b: 91 b8       ..  :b31b[1]
    txa                                                               ; 531d: 8a          .   :b31d[1]
    ldy #&ee                                                          ; 531e: a0 ee       ..  :b31e[1]
    eor (l00b8),y                                                     ; 5320: 51 b8       Q.  :b320[1]
    and #&40 ; '@'                                                    ; 5322: 29 40       )@  :b322[1]
    bne cb300                                                         ; 5324: d0 da       ..  :b324[1]
    tay                                                               ; 5326: a8          .   :b326[1]
    ldx #&ba                                                          ; 5327: a2 ba       ..  :b327[1]
    jsr osargs                                                        ; 5329: 20 da ff     .. :b329[1]
    jsr cb82b                                                         ; 532c: 20 2b b8     +. :b32c[1]
    tax                                                               ; 532f: aa          .   :b32f[1]
    bne cb337                                                         ; 5330: d0 05       ..  :b330[1]
    ldx #2                                                            ; 5332: a2 02       ..  :b332[1]
    jmp cb8fb                                                         ; 5334: 4c fb b8    L.. :b334[1]

; &5337 referenced 1 time by &b330
.cb337
    pha                                                               ; 5337: 48          H   :b337[1]
    jsr sub_cbe9d                                                     ; 5338: 20 9d be     .. :b338[1]
    pla                                                               ; 533b: 68          h   :b33b[1]
    cmp #4                                                            ; 533c: c9 04       ..  :b33c[1]
    bcs cb3ba                                                         ; 533e: b0 7a       .z  :b33e[1]
    jsr sub_cb85d                                                     ; 5340: 20 5d b8     ]. :b340[1]
    bpl cb375                                                         ; 5343: 10 30       .0  :b343[1]
    jsr sub_cb5ce                                                     ; 5345: 20 ce b5     .. :b345[1]
    jsr sub_cb607                                                     ; 5348: 20 07 b6     .. :b348[1]
    bne cb371                                                         ; 534b: d0 24       .$  :b34b[1]
    beq cb352                                                         ; 534d: f0 03       ..  :b34d[1]
; &534f referenced 1 time by &b36f
.cb34f
    jsr sub_cb65f                                                     ; 534f: 20 5f b6     _. :b34f[1]
; &5352 referenced 1 time by &b34d
.cb352
    ldy #&fa                                                          ; 5352: a0 fa       ..  :b352[1]
    lda (l00b8),y                                                     ; 5354: b1 b8       ..  :b354[1]
    tay                                                               ; 5356: a8          .   :b356[1]
    jsr osbget                                                        ; 5357: 20 d7 ff     .. :b357[1]
    jsr cb82b                                                         ; 535a: 20 2b b8     +. :b35a[1]
    ldy #&f2                                                          ; 535d: a0 f2       ..  :b35d[1]
    jsr sub_cb83f                                                     ; 535f: 20 3f b8     ?. :b35f[1]
    tax                                                               ; 5362: aa          .   :b362[1]
    ldy #&f1                                                          ; 5363: a0 f1       ..  :b363[1]
    lda (l00b8),y                                                     ; 5365: b1 b8       ..  :b365[1]
    tay                                                               ; 5367: a8          .   :b367[1]
    txa                                                               ; 5368: 8a          .   :b368[1]
    jsr sub_cb745                                                     ; 5369: 20 45 b7     E. :b369[1]
    jsr sub_cb607                                                     ; 536c: 20 07 b6     .. :b36c[1]
    beq cb34f                                                         ; 536f: f0 de       ..  :b36f[1]
; &5371 referenced 3 times by &b34b, &b37b, &b3b8
.cb371
    jsr sub_cb5f2                                                     ; 5371: 20 f2 b5     .. :b371[1]
    rts                                                               ; 5374: 60          `   :b374[1]

; &5375 referenced 1 time by &b343
.cb375
    jsr sub_cb5ee                                                     ; 5375: 20 ee b5     .. :b375[1]
    jsr sub_cb616                                                     ; 5378: 20 16 b6     .. :b378[1]
    beq cb371                                                         ; 537b: f0 f4       ..  :b37b[1]
    bne cb382                                                         ; 537d: d0 03       ..  :b37d[1]
; &537f referenced 1 time by &b3b6
.cb37f
    jsr sub_cb65f                                                     ; 537f: 20 5f b6     _. :b37f[1]
; &5382 referenced 1 time by &b37d
.cb382
    ldy #&f4                                                          ; 5382: a0 f4       ..  :b382[1]
    lda (l00b8),y                                                     ; 5384: b1 b8       ..  :b384[1]
    sec                                                               ; 5386: 38          8   :b386[1]
    sbc #1                                                            ; 5387: e9 01       ..  :b387[1]
    sta (l00b8),y                                                     ; 5389: 91 b8       ..  :b389[1]
    cmp #&ff                                                          ; 538b: c9 ff       ..  :b38b[1]
    bne cb397                                                         ; 538d: d0 08       ..  :b38d[1]
    iny                                                               ; 538f: c8          .   :b38f[1]
    lda (l00b8),y                                                     ; 5390: b1 b8       ..  :b390[1]
    sec                                                               ; 5392: 38          8   :b392[1]
    sbc #1                                                            ; 5393: e9 01       ..  :b393[1]
    sta (l00b8),y                                                     ; 5395: 91 b8       ..  :b395[1]
; &5397 referenced 1 time by &b38d
.cb397
    ldx #&f6                                                          ; 5397: a2 f6       ..  :b397[1]
    ldy #&f2                                                          ; 5399: a0 f2       ..  :b399[1]
    jsr sub_cb841                                                     ; 539b: 20 41 b8     A. :b39b[1]
    ldy #&f1                                                          ; 539e: a0 f1       ..  :b39e[1]
    lda (l00b8),y                                                     ; 53a0: b1 b8       ..  :b3a0[1]
    tay                                                               ; 53a2: a8          .   :b3a2[1]
    jsr osrdsc                                                        ; 53a3: 20 b9 ff     .. :b3a3[1]
    tax                                                               ; 53a6: aa          .   :b3a6[1]
    ldy #&fa                                                          ; 53a7: a0 fa       ..  :b3a7[1]
    lda (l00b8),y                                                     ; 53a9: b1 b8       ..  :b3a9[1]
    tay                                                               ; 53ab: a8          .   :b3ab[1]
    txa                                                               ; 53ac: 8a          .   :b3ac[1]
    jsr osbput                                                        ; 53ad: 20 d4 ff     .. :b3ad[1]
    jsr cb82b                                                         ; 53b0: 20 2b b8     +. :b3b0[1]
    jsr sub_cb616                                                     ; 53b3: 20 16 b6     .. :b3b3[1]
    bne cb37f                                                         ; 53b6: d0 c7       ..  :b3b6[1]
    beq cb371                                                         ; 53b8: f0 b7       ..  :b3b8[1]
; &53ba referenced 1 time by &b33e
.cb3ba
    ldy #&f9                                                          ; 53ba: a0 f9       ..  :b3ba[1]
    lda (l00b8),y                                                     ; 53bc: b1 b8       ..  :b3bc[1]
    bmi cb3de                                                         ; 53be: 30 1e       0.  :b3be[1]
    dey                                                               ; 53c0: 88          .   :b3c0[1]
    ora (l00b8),y                                                     ; 53c1: 11 b8       ..  :b3c1[1]
    bne cb406                                                         ; 53c3: d0 41       .A  :b3c3[1]
    lda #0                                                            ; 53c5: a9 00       ..  :b3c5[1]
    sta (l00b8),y                                                     ; 53c7: 91 b8       ..  :b3c7[1]
    lda #1                                                            ; 53c9: a9 01       ..  :b3c9[1]
    iny                                                               ; 53cb: c8          .   :b3cb[1]
    sta (l00b8),y                                                     ; 53cc: 91 b8       ..  :b3cc[1]
    ldy #&f6                                                          ; 53ce: a0 f6       ..  :b3ce[1]
    lda #0                                                            ; 53d0: a9 00       ..  :b3d0[1]
    sta (l00b8),y                                                     ; 53d2: 91 b8       ..  :b3d2[1]
    ldx l00b9                                                         ; 53d4: a6 b9       ..  :b3d4[1]
    inx                                                               ; 53d6: e8          .   :b3d6[1]
    txa                                                               ; 53d7: 8a          .   :b3d7[1]
    iny                                                               ; 53d8: c8          .   :b3d8[1]
    sta (l00b8),y                                                     ; 53d9: 91 b8       ..  :b3d9[1]
    jmp cb406                                                         ; 53db: 4c 06 b4    L.. :b3db[1]

; &53de referenced 1 time by &b3be
.cb3de
    lda #osbyte_read_himem                                            ; 53de: a9 84       ..  :b3de[1]
    jsr osbyte                                                        ; 53e0: 20 f4 ff     .. :b3e0[1]   ; Read top of user memory (HIMEM)
    tya                                                               ; 53e3: 98          .   :b3e3[1]
    pha                                                               ; 53e4: 48          H   :b3e4[1]
    txa                                                               ; 53e5: 8a          .   :b3e5[1]
    pha                                                               ; 53e6: 48          H   :b3e6[1]
    lda #osbyte_read_oshwm                                            ; 53e7: a9 83       ..  :b3e7[1]
    jsr osbyte                                                        ; 53e9: 20 f4 ff     .. :b3e9[1]   ; Read top of operating system RAM address (OSHWM)
    jsr cb82b                                                         ; 53ec: 20 2b b8     +. :b3ec[1]
    stx l00ba                                                         ; 53ef: 86 ba       ..  :b3ef[1]
    sty l00bb                                                         ; 53f1: 84 bb       ..  :b3f1[1]
    ldy #&f6                                                          ; 53f3: a0 f6       ..  :b3f3[1]
    jsr sub_cb84e                                                     ; 53f5: 20 4e b8     N. :b3f5[1]
    pla                                                               ; 53f8: 68          h   :b3f8[1]
    sec                                                               ; 53f9: 38          8   :b3f9[1]
    sbc l00ba                                                         ; 53fa: e5 ba       ..  :b3fa[1]
    ldy #&f8                                                          ; 53fc: a0 f8       ..  :b3fc[1]
    sta (l00b8),y                                                     ; 53fe: 91 b8       ..  :b3fe[1]
    pla                                                               ; 5400: 68          h   :b400[1]
    sbc l00bb                                                         ; 5401: e5 bb       ..  :b401[1]
    iny                                                               ; 5403: c8          .   :b403[1]
    sta (l00b8),y                                                     ; 5404: 91 b8       ..  :b404[1]
; &5406 referenced 2 times by &b3c3, &b3db
.cb406
    jsr sub_cb85d                                                     ; 5406: 20 5d b8     ]. :b406[1]
    bmi cb40e                                                         ; 5409: 30 03       0.  :b409[1]
    jmp cb4d8                                                         ; 540b: 4c d8 b4    L.. :b40b[1]

; &540e referenced 1 time by &b409
.cb40e
    jsr sub_cb5ce                                                     ; 540e: 20 ce b5     .. :b40e[1]
    tsx                                                               ; 5411: ba          .   :b411[1]
    txa                                                               ; 5412: 8a          .   :b412[1]
    sec                                                               ; 5413: 38          8   :b413[1]
    sbc #&10                                                          ; 5414: e9 10       ..  :b414[1]
    tax                                                               ; 5416: aa          .   :b416[1]
    txs                                                               ; 5417: 9a          .   :b417[1]
    ldy #&f0                                                          ; 5418: a0 f0       ..  :b418[1]
    lda (l00b8),y                                                     ; 541a: b1 b8       ..  :b41a[1]
    pha                                                               ; 541c: 48          H   :b41c[1]
    dey                                                               ; 541d: 88          .   :b41d[1]
    lda (l00b8),y                                                     ; 541e: b1 b8       ..  :b41e[1]
    pha                                                               ; 5420: 48          H   :b420[1]
    dex                                                               ; 5421: ca          .   :b421[1]
    ldy #1                                                            ; 5422: a0 01       ..  :b422[1]
    lda #osfile_read_catalogue_info                                   ; 5424: a9 05       ..  :b424[1]
    jsr osfile                                                        ; 5426: 20 dd ff     .. :b426[1]   ; Read catalogue information
    jsr cb82b                                                         ; 5429: 20 2b b8     +. :b429[1]
    tsx                                                               ; 542c: ba          .   :b42c[1]
    lda l010b,x                                                       ; 542d: bd 0b 01    ... :b42d[1]
    ldy #&f4                                                          ; 5430: a0 f4       ..  :b430[1]
    sta (l00b8),y                                                     ; 5432: 91 b8       ..  :b432[1]
    sta l00ba                                                         ; 5434: 85 ba       ..  :b434[1]
    lda l010c,x                                                       ; 5436: bd 0c 01    ... :b436[1]
    iny                                                               ; 5439: c8          .   :b439[1]
    sta (l00b8),y                                                     ; 543a: 91 b8       ..  :b43a[1]
    sta l00bb                                                         ; 543c: 85 bb       ..  :b43c[1]
    lda l010d,x                                                       ; 543e: bd 0d 01    ... :b43e[1]
    ora l010e,x                                                       ; 5441: 1d 0e 01    ... :b441[1]
    beq cb44b                                                         ; 5444: f0 05       ..  :b444[1]
; &5446 referenced 4 times by &b68c, &b6c7, &b715, &bc10
.cb446
    ldx #1                                                            ; 5446: a2 01       ..  :b446[1]
    jmp cb8fb                                                         ; 5448: 4c fb b8    L.. :b448[1]

; &544b referenced 1 time by &b444
.cb44b
    ldx #&12                                                          ; 544b: a2 12       ..  :b44b[1]
; &544d referenced 1 time by &b44f
.loop_cb44d
    pla                                                               ; 544d: 68          h   :b44d[1]
    dex                                                               ; 544e: ca          .   :b44e[1]
    bne loop_cb44d                                                    ; 544f: d0 fc       ..  :b44f[1]
    bit lb57f                                                         ; 5451: 2c 7f b5    ,.. :b451[1]
    lda l00ba                                                         ; 5454: a5 ba       ..  :b454[1]
    ora l00bb                                                         ; 5456: 05 bb       ..  :b456[1]
    bne cb45e                                                         ; 5458: d0 04       ..  :b458[1]
; &545a referenced 1 time by &b4d2
.cb45a
    jsr sub_cb5f2                                                     ; 545a: 20 f2 b5     .. :b45a[1]
    rts                                                               ; 545d: 60          `   :b45d[1]

; &545e referenced 2 times by &b458, &b4d5
.cb45e
    ldx #&bc                                                          ; 545e: a2 bc       ..  :b45e[1]
    ldy #&f8                                                          ; 5460: a0 f8       ..  :b460[1]
    jsr sub_cb841                                                     ; 5462: 20 41 b8     A. :b462[1]
    ldy #&ba                                                          ; 5465: a0 ba       ..  :b465[1]
    jsr sub_cb58b                                                     ; 5467: 20 8b b5     .. :b467[1]
    bcs cb470                                                         ; 546a: b0 04       ..  :b46a[1]
    jsr sub_cb580                                                     ; 546c: 20 80 b5     .. :b46c[1]
    clv                                                               ; 546f: b8          .   :b46f[1]
; &5470 referenced 1 time by &b46a
.cb470
    ldy #&fb                                                          ; 5470: a0 fb       ..  :b470[1]
    jsr sub_cb84e                                                     ; 5472: 20 4e b8     N. :b472[1]
    bvc cb4af                                                         ; 5475: 50 38       P8  :b475[1]
    jsr sub_cb5f2                                                     ; 5477: 20 f2 b5     .. :b477[1]
    tsx                                                               ; 547a: ba          .   :b47a[1]
    txa                                                               ; 547b: 8a          .   :b47b[1]
    sec                                                               ; 547c: 38          8   :b47c[1]
    sbc #&0b                                                          ; 547d: e9 0b       ..  :b47d[1]
    tax                                                               ; 547f: aa          .   :b47f[1]
    txs                                                               ; 5480: 9a          .   :b480[1]
    lda #0                                                            ; 5481: a9 00       ..  :b481[1]
    pha                                                               ; 5483: 48          H   :b483[1]
    lda #&ff                                                          ; 5484: a9 ff       ..  :b484[1]
    pha                                                               ; 5486: 48          H   :b486[1]
    pha                                                               ; 5487: 48          H   :b487[1]
    ldy #&f7                                                          ; 5488: a0 f7       ..  :b488[1]
    lda (l00b8),y                                                     ; 548a: b1 b8       ..  :b48a[1]
    pha                                                               ; 548c: 48          H   :b48c[1]
    dey                                                               ; 548d: 88          .   :b48d[1]
    lda (l00b8),y                                                     ; 548e: b1 b8       ..  :b48e[1]
    pha                                                               ; 5490: 48          H   :b490[1]
    ldy #&f0                                                          ; 5491: a0 f0       ..  :b491[1]
    lda (l00b8),y                                                     ; 5493: b1 b8       ..  :b493[1]
    pha                                                               ; 5495: 48          H   :b495[1]
    dey                                                               ; 5496: 88          .   :b496[1]
    lda (l00b8),y                                                     ; 5497: b1 b8       ..  :b497[1]
    pha                                                               ; 5499: 48          H   :b499[1]
    tsx                                                               ; 549a: ba          .   :b49a[1]
    inx                                                               ; 549b: e8          .   :b49b[1]
    ldy #1                                                            ; 549c: a0 01       ..  :b49c[1]
    lda #osfile_load                                                  ; 549e: a9 ff       ..  :b49e[1]
    jsr osfile                                                        ; 54a0: 20 dd ff     .. :b4a0[1]   ; Load named file (if XY+6 contains 0, use specified address)
    jsr cb82b                                                         ; 54a3: 20 2b b8     +. :b4a3[1]
    ldx #&12                                                          ; 54a6: a2 12       ..  :b4a6[1]
; &54a8 referenced 1 time by &b4aa
.loop_cb4a8
    pla                                                               ; 54a8: 68          h   :b4a8[1]
    dex                                                               ; 54a9: ca          .   :b4a9[1]
    bne loop_cb4a8                                                    ; 54aa: d0 fc       ..  :b4aa[1]
    jmp cb4b4                                                         ; 54ac: 4c b4 b4    L.. :b4ac[1]

; &54af referenced 1 time by &b475
.cb4af
    lda #4                                                            ; 54af: a9 04       ..  :b4af[1]
    jsr sub_cb598                                                     ; 54b1: 20 98 b5     .. :b4b1[1]
; &54b4 referenced 1 time by &b4ac
.cb4b4
    ldx #&b1                                                          ; 54b4: a2 b1       ..  :b4b4[1]
    ldy #&f6                                                          ; 54b6: a0 f6       ..  :b4b6[1]
    jsr sub_cb841                                                     ; 54b8: 20 41 b8     A. :b4b8[1]
    ldx #&b3                                                          ; 54bb: a2 b3       ..  :b4bb[1]
    ldy #&f2                                                          ; 54bd: a0 f2       ..  :b4bd[1]
    jsr sub_cb841                                                     ; 54bf: 20 41 b8     A. :b4bf[1]
    ldx #&be                                                          ; 54c2: a2 be       ..  :b4c2[1]
    ldy #&fb                                                          ; 54c4: a0 fb       ..  :b4c4[1]
    jsr sub_cb841                                                     ; 54c6: 20 41 b8     A. :b4c6[1]
    sec                                                               ; 54c9: 38          8   :b4c9[1]
    jsr cb795                                                         ; 54ca: 20 95 b7     .. :b4ca[1]
    ldx #&b3                                                          ; 54cd: a2 b3       ..  :b4cd[1]
    jsr sub_cb61e                                                     ; 54cf: 20 1e b6     .. :b4cf[1]
    beq cb45a                                                         ; 54d2: f0 86       ..  :b4d2[1]
    clv                                                               ; 54d4: b8          .   :b4d4[1]
    jmp cb45e                                                         ; 54d5: 4c 5e b4    L^. :b4d5[1]

; &54d8 referenced 1 time by &b40b
.cb4d8
    jsr sub_cb5ee                                                     ; 54d8: 20 ee b5     .. :b4d8[1]
    bit lb57f                                                         ; 54db: 2c 7f b5    ,.. :b4db[1]
    php                                                               ; 54de: 08          .   :b4de[1]
; &54df referenced 1 time by &b531
.cb4df
    ldy #&f4                                                          ; 54df: a0 f4       ..  :b4df[1]
    jsr sub_cb83f                                                     ; 54e1: 20 3f b8     ?. :b4e1[1]
    jsr sub_cb616                                                     ; 54e4: 20 16 b6     .. :b4e4[1]
    bne cb4ee                                                         ; 54e7: d0 05       ..  :b4e7[1]
; &54e9 referenced 1 time by &b57c
.cb4e9
    plp                                                               ; 54e9: 28          (   :b4e9[1]
    jsr sub_cb5f2                                                     ; 54ea: 20 f2 b5     .. :b4ea[1]
    rts                                                               ; 54ed: 60          `   :b4ed[1]

; &54ee referenced 1 time by &b4e7
.cb4ee
    ldx #&bc                                                          ; 54ee: a2 bc       ..  :b4ee[1]
    ldy #&f8                                                          ; 54f0: a0 f8       ..  :b4f0[1]
    jsr sub_cb841                                                     ; 54f2: 20 41 b8     A. :b4f2[1]
    ldy #&ba                                                          ; 54f5: a0 ba       ..  :b4f5[1]
    jsr sub_cb58b                                                     ; 54f7: 20 8b b5     .. :b4f7[1]
    bcs cb502                                                         ; 54fa: b0 06       ..  :b4fa[1]
    jsr sub_cb580                                                     ; 54fc: 20 80 b5     .. :b4fc[1]
    plp                                                               ; 54ff: 28          (   :b4ff[1]
    clv                                                               ; 5500: b8          .   :b500[1]
    php                                                               ; 5501: 08          .   :b501[1]
; &5502 referenced 1 time by &b4fa
.cb502
    ldy #&fb                                                          ; 5502: a0 fb       ..  :b502[1]
    jsr sub_cb84e                                                     ; 5504: 20 4e b8     N. :b504[1]
    ldx #&b1                                                          ; 5507: a2 b1       ..  :b507[1]
    ldy #&f2                                                          ; 5509: a0 f2       ..  :b509[1]
    jsr sub_cb841                                                     ; 550b: 20 41 b8     A. :b50b[1]
    ldx #&b3                                                          ; 550e: a2 b3       ..  :b50e[1]
    ldy #&f6                                                          ; 5510: a0 f6       ..  :b510[1]
    jsr sub_cb841                                                     ; 5512: 20 41 b8     A. :b512[1]
    ldx #&be                                                          ; 5515: a2 be       ..  :b515[1]
    ldy #&fb                                                          ; 5517: a0 fb       ..  :b517[1]
    jsr sub_cb841                                                     ; 5519: 20 41 b8     A. :b519[1]
    clc                                                               ; 551c: 18          .   :b51c[1]
    jsr cb795                                                         ; 551d: 20 95 b7     .. :b51d[1]
    ldx #&b1                                                          ; 5520: a2 b1       ..  :b520[1]
    jsr sub_cb61e                                                     ; 5522: 20 1e b6     .. :b522[1]
    plp                                                               ; 5525: 28          (   :b525[1]
    php                                                               ; 5526: 08          .   :b526[1]
    bvs cb534                                                         ; 5527: 70 0b       p.  :b527[1]
    lda #2                                                            ; 5529: a9 02       ..  :b529[1]
    jsr sub_cb598                                                     ; 552b: 20 98 b5     .. :b52b[1]
    plp                                                               ; 552e: 28          (   :b52e[1]
    clv                                                               ; 552f: b8          .   :b52f[1]
    php                                                               ; 5530: 08          .   :b530[1]
    jmp cb4df                                                         ; 5531: 4c df b4    L.. :b531[1]

; &5534 referenced 1 time by &b527
.cb534
    jsr sub_cb5f2                                                     ; 5534: 20 f2 b5     .. :b534[1]
    lda #&ff                                                          ; 5537: a9 ff       ..  :b537[1]
    pha                                                               ; 5539: 48          H   :b539[1]
    pha                                                               ; 553a: 48          H   :b53a[1]
    ldy #&f6                                                          ; 553b: a0 f6       ..  :b53b[1]
    jsr sub_cb83f                                                     ; 553d: 20 3f b8     ?. :b53d[1]
    ldy #&fb                                                          ; 5540: a0 fb       ..  :b540[1]
    lda l00ba                                                         ; 5542: a5 ba       ..  :b542[1]
    clc                                                               ; 5544: 18          .   :b544[1]
    adc (l00b8),y                                                     ; 5545: 71 b8       q.  :b545[1]
    tax                                                               ; 5547: aa          .   :b547[1]
    lda l00bb                                                         ; 5548: a5 bb       ..  :b548[1]
    iny                                                               ; 554a: c8          .   :b54a[1]
    adc (l00b8),y                                                     ; 554b: 71 b8       q.  :b54b[1]
    pha                                                               ; 554d: 48          H   :b54d[1]
    txa                                                               ; 554e: 8a          .   :b54e[1]
    pha                                                               ; 554f: 48          H   :b54f[1]
    lda #&ff                                                          ; 5550: a9 ff       ..  :b550[1]
    pha                                                               ; 5552: 48          H   :b552[1]
    pha                                                               ; 5553: 48          H   :b553[1]
    lda l00bb                                                         ; 5554: a5 bb       ..  :b554[1]
    pha                                                               ; 5556: 48          H   :b556[1]
    lda l00ba                                                         ; 5557: a5 ba       ..  :b557[1]
    pha                                                               ; 5559: 48          H   :b559[1]
    lda #&ff                                                          ; 555a: a9 ff       ..  :b55a[1]
    ldx #8                                                            ; 555c: a2 08       ..  :b55c[1]
; &555e referenced 1 time by &b560
.loop_cb55e
    pha                                                               ; 555e: 48          H   :b55e[1]
    dex                                                               ; 555f: ca          .   :b55f[1]
    bne loop_cb55e                                                    ; 5560: d0 fc       ..  :b560[1]
    ldy #&f0                                                          ; 5562: a0 f0       ..  :b562[1]
    lda (l00b8),y                                                     ; 5564: b1 b8       ..  :b564[1]
    pha                                                               ; 5566: 48          H   :b566[1]
    dey                                                               ; 5567: 88          .   :b567[1]
    tsx                                                               ; 5568: ba          .   :b568[1]
    lda (l00b8),y                                                     ; 5569: b1 b8       ..  :b569[1]
    pha                                                               ; 556b: 48          H   :b56b[1]
    ldy #1                                                            ; 556c: a0 01       ..  :b56c[1]
    lda #osfile_save                                                  ; 556e: a9 00       ..  :b56e[1]
    jsr osfile                                                        ; 5570: 20 dd ff     .. :b570[1]   ; Save a block of memory (returning file length and attributes)
    jsr cb82b                                                         ; 5573: 20 2b b8     +. :b573[1]
    ldx #&12                                                          ; 5576: a2 12       ..  :b576[1]
; &5578 referenced 1 time by &b57a
.loop_cb578
    pla                                                               ; 5578: 68          h   :b578[1]
    dex                                                               ; 5579: ca          .   :b579[1]
    bne loop_cb578                                                    ; 557a: d0 fc       ..  :b57a[1]
    jmp cb4e9                                                         ; 557c: 4c e9 b4    L.. :b57c[1]

; &557f referenced 4 times by &b451, &b4db, &bae7, &bbda
.lb57f
    equb &40                                                          ; 557f: 40          @   :b57f[1]

; &5580 referenced 7 times by &b46c, &b4fc, &bcfd, &bd08, &bd12, &bdaa, &bde4
.sub_cb580
    lda l0000,x                                                       ; 5580: b5 00       ..  :b580[1]
    sta l0000,y                                                       ; 5582: 99 00 00    ... :b582[1]
    lda l0001,x                                                       ; 5585: b5 01       ..  :b585[1]
    sta l0001,y                                                       ; 5587: 99 01 00    ... :b587[1]
    rts                                                               ; 558a: 60          `   :b58a[1]

; &558b referenced 3 times by &b467, &b4f7, &b800
.sub_cb58b
    lda l0001,x                                                       ; 558b: b5 01       ..  :b58b[1]
    cmp l0001,y                                                       ; 558d: d9 01 00    ... :b58d[1]
    bne cb597                                                         ; 5590: d0 05       ..  :b590[1]
    lda l0000,x                                                       ; 5592: b5 00       ..  :b592[1]
    cmp l0000,y                                                       ; 5594: d9 00 00    ... :b594[1]
; &5597 referenced 1 time by &b590
.cb597
    rts                                                               ; 5597: 60          `   :b597[1]

; &5598 referenced 2 times by &b4b1, &b52b
.sub_cb598
    pha                                                               ; 5598: 48          H   :b598[1]
    pha                                                               ; 5599: 48          H   :b599[1]
    pha                                                               ; 559a: 48          H   :b59a[1]
    pha                                                               ; 559b: 48          H   :b59b[1]
    lda #0                                                            ; 559c: a9 00       ..  :b59c[1]
    pha                                                               ; 559e: 48          H   :b59e[1]
    pha                                                               ; 559f: 48          H   :b59f[1]
    ldy #&fc                                                          ; 55a0: a0 fc       ..  :b5a0[1]
    lda (l00b8),y                                                     ; 55a2: b1 b8       ..  :b5a2[1]
    pha                                                               ; 55a4: 48          H   :b5a4[1]
    dey                                                               ; 55a5: 88          .   :b5a5[1]
    lda (l00b8),y                                                     ; 55a6: b1 b8       ..  :b5a6[1]
    pha                                                               ; 55a8: 48          H   :b5a8[1]
    lda #&ff                                                          ; 55a9: a9 ff       ..  :b5a9[1]
    pha                                                               ; 55ab: 48          H   :b5ab[1]
    pha                                                               ; 55ac: 48          H   :b5ac[1]
    ldy #&f7                                                          ; 55ad: a0 f7       ..  :b5ad[1]
    lda (l00b8),y                                                     ; 55af: b1 b8       ..  :b5af[1]
    pha                                                               ; 55b1: 48          H   :b5b1[1]
    dey                                                               ; 55b2: 88          .   :b5b2[1]
    lda (l00b8),y                                                     ; 55b3: b1 b8       ..  :b5b3[1]
    pha                                                               ; 55b5: 48          H   :b5b5[1]
    tsx                                                               ; 55b6: ba          .   :b5b6[1]
    ldy #&fa                                                          ; 55b7: a0 fa       ..  :b5b7[1]
    lda (l00b8),y                                                     ; 55b9: b1 b8       ..  :b5b9[1]
    pha                                                               ; 55bb: 48          H   :b5bb[1]
    lda l0109,x                                                       ; 55bc: bd 09 01    ... :b5bc[1]
    ldy #1                                                            ; 55bf: a0 01       ..  :b5bf[1]
    jsr osgbpb                                                        ; 55c1: 20 d1 ff     .. :b5c1[1]
    ldx #&0d                                                          ; 55c4: a2 0d       ..  :b5c4[1]
; &55c6 referenced 1 time by &b5c8
.loop_cb5c6
    pla                                                               ; 55c6: 68          h   :b5c6[1]
    dex                                                               ; 55c7: ca          .   :b5c7[1]
    bne loop_cb5c6                                                    ; 55c8: d0 fc       ..  :b5c8[1]
    jsr cb82b                                                         ; 55ca: 20 2b b8     +. :b5ca[1]
    rts                                                               ; 55cd: 60          `   :b5cd[1]

; &55ce referenced 2 times by &b345, &b40e
.sub_cb5ce
    lda #&40 ; '@'                                                    ; 55ce: a9 40       .@  :b5ce[1]
; &55d0 referenced 1 time by &b5f0
.cb5d0
    pha                                                               ; 55d0: 48          H   :b5d0[1]
    ldy #&ef                                                          ; 55d1: a0 ef       ..  :b5d1[1]
    lda (l00b8),y                                                     ; 55d3: b1 b8       ..  :b5d3[1]
    tax                                                               ; 55d5: aa          .   :b5d5[1]
    iny                                                               ; 55d6: c8          .   :b5d6[1]
    lda (l00b8),y                                                     ; 55d7: b1 b8       ..  :b5d7[1]
    tay                                                               ; 55d9: a8          .   :b5d9[1]
    pla                                                               ; 55da: 68          h   :b5da[1]
    jsr osfind                                                        ; 55db: 20 ce ff     .. :b5db[1]
    tax                                                               ; 55de: aa          .   :b5de[1]
    bne cb5e6                                                         ; 55df: d0 05       ..  :b5df[1]
    ldx #4                                                            ; 55e1: a2 04       ..  :b5e1[1]
    jmp cb8fb                                                         ; 55e3: 4c fb b8    L.. :b5e3[1]

; &55e6 referenced 1 time by &b5df
.cb5e6
    ldy #&fa                                                          ; 55e6: a0 fa       ..  :b5e6[1]
    jsr cb82b                                                         ; 55e8: 20 2b b8     +. :b5e8[1]
    sta (l00b8),y                                                     ; 55eb: 91 b8       ..  :b5eb[1]
; &55ed referenced 1 time by &b5f6
.loop_cb5ed
    rts                                                               ; 55ed: 60          `   :b5ed[1]

; &55ee referenced 2 times by &b375, &b4d8
.sub_cb5ee
    lda #&80                                                          ; 55ee: a9 80       ..  :b5ee[1]
    bne cb5d0                                                         ; 55f0: d0 de       ..  :b5f0[1]
; &55f2 referenced 6 times by &b21b, &b371, &b45a, &b477, &b4ea, &b534
.sub_cb5f2
    ldy #&fa                                                          ; 55f2: a0 fa       ..  :b5f2[1]
    lda (l00b8),y                                                     ; 55f4: b1 b8       ..  :b5f4[1]
    beq loop_cb5ed                                                    ; 55f6: f0 f5       ..  :b5f6[1]
    pha                                                               ; 55f8: 48          H   :b5f8[1]
    lda #0                                                            ; 55f9: a9 00       ..  :b5f9[1]
    sta (l00b8),y                                                     ; 55fb: 91 b8       ..  :b5fb[1]
    pla                                                               ; 55fd: 68          h   :b5fd[1]
    tay                                                               ; 55fe: a8          .   :b5fe[1]
    lda #0                                                            ; 55ff: a9 00       ..  :b5ff[1]
    jsr osfind                                                        ; 5601: 20 ce ff     .. :b601[1]
    jmp cb82b                                                         ; 5604: 4c 2b b8    L+. :b604[1]

; &5607 referenced 2 times by &b348, &b36c
.sub_cb607
    ldy #&fa                                                          ; 5607: a0 fa       ..  :b607[1]
    lda (l00b8),y                                                     ; 5609: b1 b8       ..  :b609[1]
    tax                                                               ; 560b: aa          .   :b60b[1]
    lda #1                                                            ; 560c: a9 01       ..  :b60c[1]
    jsr sub_cb86f                                                     ; 560e: 20 6f b8     o. :b60e[1]
    jsr cb82b                                                         ; 5611: 20 2b b8     +. :b611[1]
    txa                                                               ; 5614: 8a          .   :b614[1]
    rts                                                               ; 5615: 60          `   :b615[1]

; &5616 referenced 4 times by &b378, &b3b3, &b4e4, &be5d
.sub_cb616
    ldy #&f4                                                          ; 5616: a0 f4       ..  :b616[1]
    lda (l00b8),y                                                     ; 5618: b1 b8       ..  :b618[1]
    iny                                                               ; 561a: c8          .   :b61a[1]
    ora (l00b8),y                                                     ; 561b: 11 b8       ..  :b61b[1]
    rts                                                               ; 561d: 60          `   :b61d[1]

; &561e referenced 2 times by &b4cf, &b522
.sub_cb61e
    stx l00bc                                                         ; 561e: 86 bc       ..  :b61e[1]
    ldy #&fb                                                          ; 5620: a0 fb       ..  :b620[1]
    jsr sub_cb83f                                                     ; 5622: 20 3f b8     ?. :b622[1]
    ldy #&f4                                                          ; 5625: a0 f4       ..  :b625[1]
    lda (l00b8),y                                                     ; 5627: b1 b8       ..  :b627[1]
    sec                                                               ; 5629: 38          8   :b629[1]
    sbc l00ba                                                         ; 562a: e5 ba       ..  :b62a[1]
    sta (l00b8),y                                                     ; 562c: 91 b8       ..  :b62c[1]
    sta l00ba                                                         ; 562e: 85 ba       ..  :b62e[1]
    iny                                                               ; 5630: c8          .   :b630[1]
    lda (l00b8),y                                                     ; 5631: b1 b8       ..  :b631[1]
    sbc l00bb                                                         ; 5633: e5 bb       ..  :b633[1]
    sta (l00b8),y                                                     ; 5635: 91 b8       ..  :b635[1]
    sta l00bb                                                         ; 5637: 85 bb       ..  :b637[1]
    ora l00ba                                                         ; 5639: 05 ba       ..  :b639[1]
    beq cb65e                                                         ; 563b: f0 21       .!  :b63b[1]
    ldx l00bc                                                         ; 563d: a6 bc       ..  :b63d[1]
    jsr sub_cb85d                                                     ; 563f: 20 5d b8     ]. :b63f[1]
    bvc cb655                                                         ; 5642: 50 11       P.  :b642[1]
    lda l0001,x                                                       ; 5644: b5 01       ..  :b644[1]
    cmp #&c0                                                          ; 5646: c9 c0       ..  :b646[1]
    bcc cb655                                                         ; 5648: 90 0b       ..  :b648[1]
    lda #&10                                                          ; 564a: a9 10       ..  :b64a[1]
    sta l0000,x                                                       ; 564c: 95 00       ..  :b64c[1]
    lda #&80                                                          ; 564e: a9 80       ..  :b64e[1]
    sta l0001,x                                                       ; 5650: 95 01       ..  :b650[1]
    jsr sub_cb68f                                                     ; 5652: 20 8f b6     .. :b652[1]
; &5655 referenced 2 times by &b642, &b648
.cb655
    ldx l00bc                                                         ; 5655: a6 bc       ..  :b655[1]
    ldy #&f2                                                          ; 5657: a0 f2       ..  :b657[1]
    jsr sub_cb850                                                     ; 5659: 20 50 b8     P. :b659[1]
    lda #&ff                                                          ; 565c: a9 ff       ..  :b65c[1]
; &565e referenced 1 time by &b63b
.cb65e
    rts                                                               ; 565e: 60          `   :b65e[1]

; &565f referenced 2 times by &b34f, &b37f
.sub_cb65f
    ldx #&bd                                                          ; 565f: a2 bd       ..  :b65f[1]
    ldy #&f2                                                          ; 5661: a0 f2       ..  :b661[1]
    jsr sub_cb841                                                     ; 5663: 20 41 b8     A. :b663[1]
    inc l00bd                                                         ; 5666: e6 bd       ..  :b666[1]
    bne cb684                                                         ; 5668: d0 1a       ..  :b668[1]
    inc l00be                                                         ; 566a: e6 be       ..  :b66a[1]
    beq cb68c                                                         ; 566c: f0 1e       ..  :b66c[1]
    jsr sub_cb85d                                                     ; 566e: 20 5d b8     ]. :b66e[1]
    bvc cb684                                                         ; 5671: 50 11       P.  :b671[1]
    lda l00be                                                         ; 5673: a5 be       ..  :b673[1]
    cmp #&c0                                                          ; 5675: c9 c0       ..  :b675[1]
    bne cb684                                                         ; 5677: d0 0b       ..  :b677[1]
    jsr sub_cb68f                                                     ; 5679: 20 8f b6     .. :b679[1]
    lda #&10                                                          ; 567c: a9 10       ..  :b67c[1]
    sta l00bd                                                         ; 567e: 85 bd       ..  :b67e[1]
    lda #&80                                                          ; 5680: a9 80       ..  :b680[1]
    sta l00be                                                         ; 5682: 85 be       ..  :b682[1]
; &5684 referenced 3 times by &b668, &b671, &b677
.cb684
    ldx #&bd                                                          ; 5684: a2 bd       ..  :b684[1]
    ldy #&f2                                                          ; 5686: a0 f2       ..  :b686[1]
    jsr sub_cb850                                                     ; 5688: 20 50 b8     P. :b688[1]
    rts                                                               ; 568b: 60          `   :b68b[1]

; &568c referenced 4 times by &b66c, &b698, &b69c, &b6ae
.cb68c
    jmp cb446                                                         ; 568c: 4c 46 b4    LF. :b68c[1]

; &568f referenced 4 times by &b652, &b679, &b81f, &be77
.sub_cb68f
    ldy #&f1                                                          ; 568f: a0 f1       ..  :b68f[1]
    lda (l00b8),y                                                     ; 5691: b1 b8       ..  :b691[1]
    clc                                                               ; 5693: 18          .   :b693[1]
    adc #1                                                            ; 5694: 69 01       i.  :b694[1]
    cmp #&10                                                          ; 5696: c9 10       ..  :b696[1]
    bcs cb68c                                                         ; 5698: b0 f2       ..  :b698[1]
    cmp #2                                                            ; 569a: c9 02       ..  :b69a[1]
    beq cb68c                                                         ; 569c: f0 ee       ..  :b69c[1]
    cmp #&0e                                                          ; 569e: c9 0e       ..  :b69e[1]
    bne cb6a6                                                         ; 56a0: d0 04       ..  :b6a0[1]
    ldy #&fe                                                          ; 56a2: a0 fe       ..  :b6a2[1]
    and (l00b8),y                                                     ; 56a4: 31 b8       1.  :b6a4[1]
; &56a6 referenced 1 time by &b6a0
.cb6a6
    ldy #&f1                                                          ; 56a6: a0 f1       ..  :b6a6[1]
    sta (l00b8),y                                                     ; 56a8: 91 b8       ..  :b6a8[1]
    tay                                                               ; 56aa: a8          .   :b6aa[1]
    jsr sub_cb6fe                                                     ; 56ab: 20 fe b6     .. :b6ab[1]
    beq cb68c                                                         ; 56ae: f0 dc       ..  :b6ae[1]
    rts                                                               ; 56b0: 60          `   :b6b0[1]

; &56b1 referenced 2 times by &b305, &bcda
.sub_cb6b1
    ldy #&10                                                          ; 56b1: a0 10       ..  :b6b1[1]
; &56b3 referenced 1 time by &b6c5
.loop_cb6b3
    cmp cb6ca,y                                                       ; 56b3: d9 ca b6    ... :b6b3[1]
    bcc cb6ca                                                         ; 56b6: 90 12       ..  :b6b6[1]
    bne cb6c2                                                         ; 56b8: d0 08       ..  :b6b8[1]
    pha                                                               ; 56ba: 48          H   :b6ba[1]
    txa                                                               ; 56bb: 8a          .   :b6bb[1]
    cmp lb6c6,y                                                       ; 56bc: d9 c6 b6    ... :b6bc[1]
    pla                                                               ; 56bf: 68          h   :b6bf[1]
    bcc cb6ca                                                         ; 56c0: 90 08       ..  :b6c0[1]
; &56c2 referenced 1 time by &b6b8
.cb6c2
    iny                                                               ; 56c2: c8          .   :b6c2[1]
    cpy #&14                                                          ; 56c3: c0 14       ..  :b6c3[1]
.sub_cb6c5
lb6c6 = sub_cb6c5+1
    bcc loop_cb6b3                                                    ; 56c5: 90 ec       ..  :b6c5[1]
; &56c6 referenced 1 time by &b6bc
    jmp cb446                                                         ; 56c7: 4c 46 b4    LF. :b6c7[1]

; &56ca referenced 3 times by &b6b3, &b6b6, &b6c0
.cb6ca
    pha                                                               ; 56ca: 48          H   :b6ca[1]
    txa                                                               ; 56cb: 8a          .   :b6cb[1]
    clc                                                               ; 56cc: 18          .   :b6cc[1]
.sub_cb6cd
lb6ce = sub_cb6cd+1
    adc lb6ce,y                                                       ; 56cd: 79 ce b6    y.. :b6cd[1]
; &56ce referenced 1 time by &b6cd
    tax                                                               ; 56d0: aa          .   :b6d0[1]
    pla                                                               ; 56d1: 68          h   :b6d1[1]
; &56d2 referenced 1 time by &b6d2
.cb6d2
    adc cb6d2,y                                                       ; 56d2: 79 d2 b6    y.. :b6d2[1]
    rts                                                               ; 56d5: 60          `   :b6d5[1]

    equb &f0, &e0, &d0, &c0, &3f, &7f, &bf, &ff, &10                  ; 56d6: f0 e0 d0... ... :b6d6[1]
    equs " 0@"                                                        ; 56df: 20 30 40     0@ :b6df[1]
    equb &80, &40,   0, &c0                                           ; 56e2: 80 40 00... .@. :b6e2[1]

; &56e6 referenced 1 time by &b6fe
.sub_cb6e6
    cpy #&10                                                          ; 56e6: c0 10       ..  :b6e6[1]
    bcs cb6eb                                                         ; 56e8: b0 01       ..  :b6e8[1]
    rts                                                               ; 56ea: 60          `   :b6ea[1]

; &56eb referenced 1 time by &b6e8
.cb6eb
    tya                                                               ; 56eb: 98          .   :b6eb[1]
    sec                                                               ; 56ec: 38          8   :b6ec[1]
    sbc #4                                                            ; 56ed: e9 04       ..  :b6ed[1]
    tay                                                               ; 56ef: a8          .   :b6ef[1]
    cpy #&0e                                                          ; 56f0: c0 0e       ..  :b6f0[1]
    bcs cb6f5                                                         ; 56f2: b0 01       ..  :b6f2[1]
    rts                                                               ; 56f4: 60          `   :b6f4[1]

; &56f5 referenced 1 time by &b6f2
.cb6f5
    tya                                                               ; 56f5: 98          .   :b6f5[1]
    and #1                                                            ; 56f6: 29 01       ).  :b6f6[1]
    ldy #&fe                                                          ; 56f8: a0 fe       ..  :b6f8[1]
    ora (l00b8),y                                                     ; 56fa: 11 b8       ..  :b6fa[1]
    tay                                                               ; 56fc: a8          .   :b6fc[1]
    rts                                                               ; 56fd: 60          `   :b6fd[1]

; &56fe referenced 5 times by &b314, &b6ab, &bc44, &bc8e, &bce1
.sub_cb6fe
    jsr sub_cb6e6                                                     ; 56fe: 20 e6 b6     .. :b6fe[1]
    tya                                                               ; 5701: 98          .   :b701[1]
    tax                                                               ; 5702: aa          .   :b702[1]
    lda lb726,y                                                       ; 5703: b9 26 b7    .&. :b703[1]
    pha                                                               ; 5706: 48          H   :b706[1]
    ldy #&ee                                                          ; 5707: a0 ee       ..  :b707[1]
    and (l00b8),y                                                     ; 5709: 31 b8       1.  :b709[1]
    bne cb718                                                         ; 570b: d0 0b       ..  :b70b[1]
    lda (l00b8),y                                                     ; 570d: b1 b8       ..  :b70d[1]
    and #&c0                                                          ; 570f: 29 c0       ).  :b70f[1]
    cmp #&80                                                          ; 5711: c9 80       ..  :b711[1]
    beq cb718                                                         ; 5713: f0 03       ..  :b713[1]
    jmp cb446                                                         ; 5715: 4c 46 b4    LF. :b715[1]

; &5718 referenced 2 times by &b70b, &b713
.cb718
    pla                                                               ; 5718: 68          h   :b718[1]
    ldy #&fd                                                          ; 5719: a0 fd       ..  :b719[1]
    and (l00b8),y                                                     ; 571b: 31 b8       1.  :b71b[1]
    pha                                                               ; 571d: 48          H   :b71d[1]
    txa                                                               ; 571e: 8a          .   :b71e[1]
    tay                                                               ; 571f: a8          .   :b71f[1]
    pla                                                               ; 5720: 68          h   :b720[1]
    beq cb725                                                         ; 5721: f0 02       ..  :b721[1]
    lda #&ff                                                          ; 5723: a9 ff       ..  :b723[1]
; &5725 referenced 1 time by &b721
.cb725
    rts                                                               ; 5725: 60          `   :b725[1]

; &5726 referenced 6 times by &b703, &b898, &b8c8, &b8db, &bc56, &bca1
.lb726
    equb   4,   8,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5726: 04 08 00... ... :b726[1]
    equb   1,   2, &10, &20                                           ; 5732: 01 02 10... ... :b732[1]

; &5736 referenced 1 time by &b75a
.cb736
    sty romsel_copy                                                   ; 5736: 84 f4       ..  :b736[1]
    sty romsel                                                        ; 5738: 8c 30 fe    .0. :b738[1]
    ldy #0                                                            ; 573b: a0 00       ..  :b73b[1]
    sta (l00ba),y                                                     ; 573d: 91 ba       ..  :b73d[1]
    stx romsel_copy                                                   ; 573f: 86 f4       ..  :b73f[1]
    stx romsel                                                        ; 5741: 8e 30 fe    .0. :b741[1]
    rts                                                               ; 5744: 60          `   :b744[1]

; &5745 referenced 5 times by &b369, &b8b7, &b8d1, &bc78, &bc9e
.sub_cb745
    sta l00bf                                                         ; 5745: 85 bf       ..  :b745[1]
    txa                                                               ; 5747: 8a          .   :b747[1]
    pha                                                               ; 5748: 48          H   :b748[1]
    tya                                                               ; 5749: 98          .   :b749[1]
    pha                                                               ; 574a: 48          H   :b74a[1]
    ldx romsel_copy                                                   ; 574b: a6 f4       ..  :b74b[1]
    lda l0df0,x                                                       ; 574d: bd f0 0d    ... :b74d[1]
    sta l00b1                                                         ; 5750: 85 b1       ..  :b750[1]
    inc l00b1                                                         ; 5752: e6 b1       ..  :b752[1]
    lda #0                                                            ; 5754: a9 00       ..  :b754[1]
    sta l00b0                                                         ; 5756: 85 b0       ..  :b756[1]
    ldy #&0e                                                          ; 5758: a0 0e       ..  :b758[1]
; &575a referenced 1 time by &b760
.loop_cb75a
    lda cb736,y                                                       ; 575a: b9 36 b7    .6. :b75a[1]
    sta (l00b0),y                                                     ; 575d: 91 b0       ..  :b75d[1]
    dey                                                               ; 575f: 88          .   :b75f[1]
    bpl loop_cb75a                                                    ; 5760: 10 f8       ..  :b760[1]
    pla                                                               ; 5762: 68          h   :b762[1]
    pha                                                               ; 5763: 48          H   :b763[1]
    tay                                                               ; 5764: a8          .   :b764[1]
    lda l00bf                                                         ; 5765: a5 bf       ..  :b765[1]
    jsr sub_cb771                                                     ; 5767: 20 71 b7     q. :b767[1]
    pla                                                               ; 576a: 68          h   :b76a[1]
    tay                                                               ; 576b: a8          .   :b76b[1]
    pla                                                               ; 576c: 68          h   :b76c[1]
    tax                                                               ; 576d: aa          .   :b76d[1]
    lda l00bf                                                         ; 576e: a5 bf       ..  :b76e[1]
    rts                                                               ; 5770: 60          `   :b770[1]

; &5771 referenced 1 time by &b767
.sub_cb771
    jmp (l00b0)                                                       ; 5771: 6c b0 00    l.. :b771[1]

; &5774 referenced 1 time by &b7be
.lb774
    equb &85, &f4, &8d, &30, &fe, &b1, &b1, &91, &b3, &c8, &d0,   5   ; 5774: 85 f4 8d... ... :b774[1]
    equb &e6, &b2, &e6, &b4, &ca, &c4, &b5, &d0, &f0, &8a, &d0, &ed   ; 5780: e6 b2 e6... ... :b780[1]
    equb &68, &85, &f4, &8d, &30, &fe, &4c, &d5, &b7                  ; 578c: 68 85 f4... h.. :b78c[1]

; &5795 referenced 5 times by &b4ca, &b51d, &bd0b, &bdb0, &bded
.cb795
    ldy #&f1                                                          ; 5795: a0 f1       ..  :b795[1]
    lda (l00b8),y                                                     ; 5797: b1 b8       ..  :b797[1]
    sta l00b0                                                         ; 5799: 85 b0       ..  :b799[1]
    ldx l00be                                                         ; 579b: a6 be       ..  :b79b[1]
    ldy l00bf                                                         ; 579d: a4 bf       ..  :b79d[1]
    lda #0                                                            ; 579f: a9 00       ..  :b79f[1]
    rol a                                                             ; 57a1: 2a          *   :b7a1[1]
    asl a                                                             ; 57a2: 0a          .   :b7a2[1]
    sta l00b7                                                         ; 57a3: 85 b7       ..  :b7a3[1]
    inc l00b7                                                         ; 57a5: e6 b7       ..  :b7a5[1]
    jsr sub_cb85d                                                     ; 57a7: 20 5d b8     ]. :b7a7[1]
    bvs cb7ed                                                         ; 57aa: 70 41       pA  :b7aa[1]
    bvc cb7b2                                                         ; 57ac: 50 04       P.  :b7ac[1]
; &57ae referenced 1 time by &b803
.cb7ae
    ldx l00be                                                         ; 57ae: a6 be       ..  :b7ae[1]
    ldy l00bf                                                         ; 57b0: a4 bf       ..  :b7b0[1]
; &57b2 referenced 1 time by &b7ac
.cb7b2
    stx l00b5                                                         ; 57b2: 86 b5       ..  :b7b2[1]
    sty l00b6                                                         ; 57b4: 84 b6       ..  :b7b4[1]
; &57b6 referenced 1 time by &b812
.sub_cb7b6
    lda l00b5                                                         ; 57b6: a5 b5       ..  :b7b6[1]
    ora l00b6                                                         ; 57b8: 05 b6       ..  :b7b8[1]
    beq cb7ec                                                         ; 57ba: f0 30       .0  :b7ba[1]
    ldx #&20 ; ' '                                                    ; 57bc: a2 20       .   :b7bc[1]
; &57be referenced 1 time by &b7c3
.loop_cb7be
    lda lb774,x                                                       ; 57be: bd 74 b7    .t. :b7be[1]
    pha                                                               ; 57c1: 48          H   :b7c1[1]
    dex                                                               ; 57c2: ca          .   :b7c2[1]
    bpl loop_cb7be                                                    ; 57c3: 10 f9       ..  :b7c3[1]
    tsx                                                               ; 57c5: ba          .   :b7c5[1]
    lda romsel_copy                                                   ; 57c6: a5 f4       ..  :b7c6[1]
    pha                                                               ; 57c8: 48          H   :b7c8[1]
    lda #1                                                            ; 57c9: a9 01       ..  :b7c9[1]
    pha                                                               ; 57cb: 48          H   :b7cb[1]
    txa                                                               ; 57cc: 8a          .   :b7cc[1]
    pha                                                               ; 57cd: 48          H   :b7cd[1]
    lda l00b0                                                         ; 57ce: a5 b0       ..  :b7ce[1]
    ldx l00b6                                                         ; 57d0: a6 b6       ..  :b7d0[1]
    ldy #0                                                            ; 57d2: a0 00       ..  :b7d2[1]
    rts                                                               ; 57d4: 60          `   :b7d4[1]

    ldx #&21 ; '!'                                                    ; 57d5: a2 21       .!  :b7d5[1]
; &57d7 referenced 1 time by &b7d9
.loop_cb7d7
    pla                                                               ; 57d7: 68          h   :b7d7[1]
    dex                                                               ; 57d8: ca          .   :b7d8[1]
    bne loop_cb7d7                                                    ; 57d9: d0 fc       ..  :b7d9[1]
    ldx #2                                                            ; 57db: a2 02       ..  :b7db[1]
; &57dd referenced 1 time by &b7ea
.loop_cb7dd
    lda l00b1,x                                                       ; 57dd: b5 b1       ..  :b7dd[1]
    clc                                                               ; 57df: 18          .   :b7df[1]
    adc l00b5                                                         ; 57e0: 65 b5       e.  :b7e0[1]
    sta l00b1,x                                                       ; 57e2: 95 b1       ..  :b7e2[1]
    bcc cb7e8                                                         ; 57e4: 90 02       ..  :b7e4[1]
    inc l00b2,x                                                       ; 57e6: f6 b2       ..  :b7e6[1]
; &57e8 referenced 1 time by &b7e4
.cb7e8
    dex                                                               ; 57e8: ca          .   :b7e8[1]
    dex                                                               ; 57e9: ca          .   :b7e9[1]
    bpl loop_cb7dd                                                    ; 57ea: 10 f1       ..  :b7ea[1]
; &57ec referenced 1 time by &b7ba
.cb7ec
    rts                                                               ; 57ec: 60          `   :b7ec[1]

; &57ed referenced 2 times by &b7aa, &b828
.cb7ed
    lda #0                                                            ; 57ed: a9 00       ..  :b7ed[1]
    sec                                                               ; 57ef: 38          8   :b7ef[1]
    ldx l00b7                                                         ; 57f0: a6 b7       ..  :b7f0[1]
    sbc l00b0,x                                                       ; 57f2: f5 b0       ..  :b7f2[1]
    sta l00b5                                                         ; 57f4: 85 b5       ..  :b7f4[1]
    lda #&c0                                                          ; 57f6: a9 c0       ..  :b7f6[1]
    sbc l00b1,x                                                       ; 57f8: f5 b1       ..  :b7f8[1]
    sta l00b6                                                         ; 57fa: 85 b6       ..  :b7fa[1]
    ldx #&b5                                                          ; 57fc: a2 b5       ..  :b7fc[1]
    ldy #&be                                                          ; 57fe: a0 be       ..  :b7fe[1]
    jsr sub_cb58b                                                     ; 5800: 20 8b b5     .. :b800[1]
    bcs cb7ae                                                         ; 5803: b0 a9       ..  :b803[1]
    lda l00be                                                         ; 5805: a5 be       ..  :b805[1]
    sec                                                               ; 5807: 38          8   :b807[1]
    sbc l00b5                                                         ; 5808: e5 b5       ..  :b808[1]
    sta l00be                                                         ; 580a: 85 be       ..  :b80a[1]
    lda l00bf                                                         ; 580c: a5 bf       ..  :b80c[1]
    sbc l00b6                                                         ; 580e: e5 b6       ..  :b80e[1]
    sta l00bf                                                         ; 5810: 85 bf       ..  :b810[1]
    jsr sub_cb7b6                                                     ; 5812: 20 b6 b7     .. :b812[1]
    lda #&10                                                          ; 5815: a9 10       ..  :b815[1]
    ldx l00b7                                                         ; 5817: a6 b7       ..  :b817[1]
    sta l00b0,x                                                       ; 5819: 95 b0       ..  :b819[1]
    lda #&80                                                          ; 581b: a9 80       ..  :b81b[1]
    sta l00b1,x                                                       ; 581d: 95 b1       ..  :b81d[1]
    jsr sub_cb68f                                                     ; 581f: 20 8f b6     .. :b81f[1]
    ldy #&f1                                                          ; 5822: a0 f1       ..  :b822[1]
    lda (l00b8),y                                                     ; 5824: b1 b8       ..  :b824[1]
    sta l00b0                                                         ; 5826: 85 b0       ..  :b826[1]
    jmp cb7ed                                                         ; 5828: 4c ed b7    L.. :b828[1]

; &582b referenced 16 times by &b1c1, &b2c8, &b2e7, &b32c, &b35a, &b3b0, &b3ec, &b429, &b4a3, &b573, &b5ca, &b5e8, &b604, &b611, &b86b, &beb5
.cb82b
    php                                                               ; 582b: 08          .   :b82b[1]
    pha                                                               ; 582c: 48          H   :b82c[1]
    txa                                                               ; 582d: 8a          .   :b82d[1]
    pha                                                               ; 582e: 48          H   :b82e[1]
    lda #0                                                            ; 582f: a9 00       ..  :b82f[1]
    sta l00b8                                                         ; 5831: 85 b8       ..  :b831[1]
    ldx romsel_copy                                                   ; 5833: a6 f4       ..  :b833[1]
    lda l0df0,x                                                       ; 5835: bd f0 0d    ... :b835[1]
    sta l00b9                                                         ; 5838: 85 b9       ..  :b838[1]
    pla                                                               ; 583a: 68          h   :b83a[1]
    tax                                                               ; 583b: aa          .   :b83b[1]
    pla                                                               ; 583c: 68          h   :b83c[1]
    plp                                                               ; 583d: 28          (   :b83d[1]
    rts                                                               ; 583e: 60          `   :b83e[1]

; &583f referenced 4 times by &b35f, &b4e1, &b53d, &b622
.sub_cb83f
    ldx #&ba                                                          ; 583f: a2 ba       ..  :b83f[1]
; &5841 referenced 12 times by &b39b, &b462, &b4b8, &b4bf, &b4c6, &b4f2, &b50b, &b512, &b519, &b663, &bd4a, &bdc4
.sub_cb841
    pha                                                               ; 5841: 48          H   :b841[1]
    lda (l00b8),y                                                     ; 5842: b1 b8       ..  :b842[1]
    sta l0000,x                                                       ; 5844: 95 00       ..  :b844[1]
    iny                                                               ; 5846: c8          .   :b846[1]
    lda (l00b8),y                                                     ; 5847: b1 b8       ..  :b847[1]
    sta l0001,x                                                       ; 5849: 95 01       ..  :b849[1]
    dey                                                               ; 584b: 88          .   :b84b[1]
    pla                                                               ; 584c: 68          h   :b84c[1]
    rts                                                               ; 584d: 60          `   :b84d[1]

; &584e referenced 3 times by &b3f5, &b472, &b504
.sub_cb84e
    ldx #&ba                                                          ; 584e: a2 ba       ..  :b84e[1]
; &5850 referenced 5 times by &b659, &b688, &bb5c, &bb8d, &bd36
.sub_cb850
    pha                                                               ; 5850: 48          H   :b850[1]
    lda l0000,x                                                       ; 5851: b5 00       ..  :b851[1]
    sta (l00b8),y                                                     ; 5853: 91 b8       ..  :b853[1]
    iny                                                               ; 5855: c8          .   :b855[1]
    lda l0001,x                                                       ; 5856: b5 01       ..  :b856[1]
    sta (l00b8),y                                                     ; 5858: 91 b8       ..  :b858[1]
    dey                                                               ; 585a: 88          .   :b85a[1]
    pla                                                               ; 585b: 68          h   :b85b[1]
    rts                                                               ; 585c: 60          `   :b85c[1]

; &585d referenced 8 times by &b2f2, &b340, &b406, &b63f, &b66e, &b7a7, &be64, &be9d
.sub_cb85d
    pha                                                               ; 585d: 48          H   :b85d[1]
    tya                                                               ; 585e: 98          .   :b85e[1]
    pha                                                               ; 585f: 48          H   :b85f[1]
    ldy #&ee                                                          ; 5860: a0 ee       ..  :b860[1]
    lda (l00b8),y                                                     ; 5862: b1 b8       ..  :b862[1]
    sta l00b8                                                         ; 5864: 85 b8       ..  :b864[1]
    pla                                                               ; 5866: 68          h   :b866[1]
    tay                                                               ; 5867: a8          .   :b867[1]
    pla                                                               ; 5868: 68          h   :b868[1]
    bit l00b8                                                         ; 5869: 24 b8       $.  :b869[1]
    jsr cb82b                                                         ; 586b: 20 2b b8     +. :b86b[1]
    rts                                                               ; 586e: 60          `   :b86e[1]

; &586f referenced 1 time by &b60e
.sub_cb86f
    jmp (fscv)                                                        ; 586f: 6c 1e 02    l.. :b86f[1]

; &5872 referenced 2 times by &b9c7, &bc70
.lb872
    equb &60,   0,   0, &60,   0,   0,   2, &0c, &ff                  ; 5872: 60 00 00... `.. :b872[1]
    equs "RAM"                                                        ; 587b: 52 41 4d    RAM :b87b[1]
; &587e referenced 1 time by &b9a3
.lb87e
    equb 0                                                            ; 587e: 00          .   :b87e[1]
    equs "(C)"                                                        ; 587f: 28 43 29    (C) :b87f[1]

; &5882 referenced 1 time by &b200
.sub_cb882
    lda #0                                                            ; 5882: a9 00       ..  :b882[1]
    ldy #&fd                                                          ; 5884: a0 fd       ..  :b884[1]
    sta (l00b8),y                                                     ; 5886: 91 b8       ..  :b886[1]
    ldy #&ee                                                          ; 5888: a0 ee       ..  :b888[1]
    sta (l00b8),y                                                     ; 588a: 91 b8       ..  :b88a[1]
    ldy #&fa                                                          ; 588c: a0 fa       ..  :b88c[1]
    sta (l00b8),y                                                     ; 588e: 91 b8       ..  :b88e[1]
    ldy #&ff                                                          ; 5890: a0 ff       ..  :b890[1]
    lda #&4e ; 'N'                                                    ; 5892: a9 4e       .N  :b892[1]
    sta (l00b8),y                                                     ; 5894: 91 b8       ..  :b894[1]
    ldy #&0f                                                          ; 5896: a0 0f       ..  :b896[1]
; &5898 referenced 1 time by &b8e7
.cb898
    lda lb726,y                                                       ; 5898: b9 26 b7    .&. :b898[1]
    beq cb8e6                                                         ; 589b: f0 49       .I  :b89b[1]
    tya                                                               ; 589d: 98          .   :b89d[1]
    pha                                                               ; 589e: 48          H   :b89e[1]
    lda #8                                                            ; 589f: a9 08       ..  :b89f[1]
    sta osrdsc_ptr                                                    ; 58a1: 85 f6       ..  :b8a1[1]
    sta l00ba                                                         ; 58a3: 85 ba       ..  :b8a3[1]
    lda #&80                                                          ; 58a5: a9 80       ..  :b8a5[1]
    sta l00f7                                                         ; 58a7: 85 f7       ..  :b8a7[1]
    sta l00bb                                                         ; 58a9: 85 bb       ..  :b8a9[1]
    jsr osrdsc                                                        ; 58ab: 20 b9 ff     .. :b8ab[1]
    sta l00bd                                                         ; 58ae: 85 bd       ..  :b8ae[1]
    pla                                                               ; 58b0: 68          h   :b8b0[1]
    pha                                                               ; 58b1: 48          H   :b8b1[1]
    tay                                                               ; 58b2: a8          .   :b8b2[1]
    lda l00bd                                                         ; 58b3: a5 bd       ..  :b8b3[1]
    eor #&ff                                                          ; 58b5: 49 ff       I.  :b8b5[1]
    jsr sub_cb745                                                     ; 58b7: 20 45 b7     E. :b8b7[1]
    jsr osrdsc                                                        ; 58ba: 20 b9 ff     .. :b8ba[1]
    cmp l00bd                                                         ; 58bd: c5 bd       ..  :b8bd[1]
    beq cb8e4                                                         ; 58bf: f0 23       .#  :b8bf[1]
    pla                                                               ; 58c1: 68          h   :b8c1[1]
    pha                                                               ; 58c2: 48          H   :b8c2[1]
    tax                                                               ; 58c3: aa          .   :b8c3[1]
    ldy #&ee                                                          ; 58c4: a0 ee       ..  :b8c4[1]
    lda (l00b8),y                                                     ; 58c6: b1 b8       ..  :b8c6[1]
    ora lb726,x                                                       ; 58c8: 1d 26 b7    .&. :b8c8[1]
    sta (l00b8),y                                                     ; 58cb: 91 b8       ..  :b8cb[1]
    txa                                                               ; 58cd: 8a          .   :b8cd[1]
    tay                                                               ; 58ce: a8          .   :b8ce[1]
    lda l00bd                                                         ; 58cf: a5 bd       ..  :b8cf[1]
    jsr sub_cb745                                                     ; 58d1: 20 45 b7     E. :b8d1[1]
    jsr sub_cb986                                                     ; 58d4: 20 86 b9     .. :b8d4[1]
    cmp #2                                                            ; 58d7: c9 02       ..  :b8d7[1]
    bne cb8e4                                                         ; 58d9: d0 09       ..  :b8d9[1]
    lda lb726,y                                                       ; 58db: b9 26 b7    .&. :b8db[1]
    ldy #&fd                                                          ; 58de: a0 fd       ..  :b8de[1]
    ora (l00b8),y                                                     ; 58e0: 11 b8       ..  :b8e0[1]
    sta (l00b8),y                                                     ; 58e2: 91 b8       ..  :b8e2[1]
; &58e4 referenced 2 times by &b8bf, &b8d9
.cb8e4
    pla                                                               ; 58e4: 68          h   :b8e4[1]
    tay                                                               ; 58e5: a8          .   :b8e5[1]
; &58e6 referenced 1 time by &b89b
.cb8e6
    dey                                                               ; 58e6: 88          .   :b8e6[1]
    bpl cb898                                                         ; 58e7: 10 af       ..  :b8e7[1]
    ldy #&ee                                                          ; 58e9: a0 ee       ..  :b8e9[1]
    lda (l00b8),y                                                     ; 58eb: b1 b8       ..  :b8eb[1]
    ldx #0                                                            ; 58ed: a2 00       ..  :b8ed[1]
    and #&0c                                                          ; 58ef: 29 0c       ).  :b8ef[1]
    bne cb8f5                                                         ; 58f1: d0 02       ..  :b8f1[1]
    ldx #&0e                                                          ; 58f3: a2 0e       ..  :b8f3[1]
; &58f5 referenced 1 time by &b8f1
.cb8f5
    txa                                                               ; 58f5: 8a          .   :b8f5[1]
    ldy #&fe                                                          ; 58f6: a0 fe       ..  :b8f6[1]
    sta (l00b8),y                                                     ; 58f8: 91 b8       ..  :b8f8[1]
    rts                                                               ; 58fa: 60          `   :b8fa[1]

; &58fb referenced 6 times by &b302, &b334, &b448, &b5e3, &bafa, &bc51
.cb8fb
    lda #0                                                            ; 58fb: a9 00       ..  :b8fb[1]
    sta l0100                                                         ; 58fd: 8d 00 01    ... :b8fd[1]
    lda lb980,x                                                       ; 5900: bd 80 b9    ... :b900[1]
    sta l0101                                                         ; 5903: 8d 01 01    ... :b903[1]
    lda lb97a,x                                                       ; 5906: bd 7a b9    .z. :b906[1]
    sta l00bf                                                         ; 5909: 85 bf       ..  :b909[1]
    ldy lb979,x                                                       ; 590b: bc 79 b9    .y. :b90b[1]
    ldx #0                                                            ; 590e: a2 00       ..  :b90e[1]
; &5910 referenced 1 time by &b91a
.loop_cb910
    lda lb924,y                                                       ; 5910: b9 24 b9    .$. :b910[1]
    sta l0102,x                                                       ; 5913: 9d 02 01    ... :b913[1]
    inx                                                               ; 5916: e8          .   :b916[1]
    iny                                                               ; 5917: c8          .   :b917[1]
    cpy l00bf                                                         ; 5918: c4 bf       ..  :b918[1]
    bcc loop_cb910                                                    ; 591a: 90 f4       ..  :b91a[1]
    lda #0                                                            ; 591c: a9 00       ..  :b91c[1]
    sta l0102,x                                                       ; 591e: 9d 02 01    ... :b91e[1]
    jmp l0100                                                         ; 5921: 4c 00 01    L.. :b921[1]

; &5924 referenced 1 time by &b910
.lb924
    equs "Illegal parameterIllegal addressNo filing systemBad comm"   ; 5924: 49 6c 6c... Ill :b924[1]
    equs "andFile not foundRAM occupied"                              ; 595c: 61 6e 64... and :b95c[1]
; &5979 referenced 1 time by &b90b
.lb979
    equb 0                                                            ; 5979: 00          .   :b979[1]
; &597a referenced 1 time by &b906
.lb97a
    equb &11                                                          ; 597a: 11          .   :b97a[1]
    equs " 0;IU"                                                      ; 597b: 20 30 3b...  0; :b97b[1]
; &5980 referenced 1 time by &b900
.lb980
    equb &80, &81, &82, &fe, &d6, &83                                 ; 5980: 80 81 82... ... :b980[1]

; &5986 referenced 3 times by &b8d4, &bc49, &bcb2
.sub_cb986
    txa                                                               ; 5986: 8a          .   :b986[1]
    pha                                                               ; 5987: 48          H   :b987[1]
    tya                                                               ; 5988: 98          .   :b988[1]
    pha                                                               ; 5989: 48          H   :b989[1]
    ldx #7                                                            ; 598a: a2 07       ..  :b98a[1]
    stx osrdsc_ptr                                                    ; 598c: 86 f6       ..  :b98c[1]
    lda #&80                                                          ; 598e: a9 80       ..  :b98e[1]
    sta l00f7                                                         ; 5990: 85 f7       ..  :b990[1]
    jsr osrdsc                                                        ; 5992: 20 b9 ff     .. :b992[1]
    sta osrdsc_ptr                                                    ; 5995: 85 f6       ..  :b995[1]
    ldx #0                                                            ; 5997: a2 00       ..  :b997[1]
; &5999 referenced 1 time by &b9b1
.loop_cb999
    stx l00bf                                                         ; 5999: 86 bf       ..  :b999[1]
    pla                                                               ; 599b: 68          h   :b99b[1]
    pha                                                               ; 599c: 48          H   :b99c[1]
    tay                                                               ; 599d: a8          .   :b99d[1]
    jsr osrdsc                                                        ; 599e: 20 b9 ff     .. :b99e[1]
    ldx l00bf                                                         ; 59a1: a6 bf       ..  :b9a1[1]
    cmp lb87e,x                                                       ; 59a3: dd 7e b8    .~. :b9a3[1]
    bne cb9ee                                                         ; 59a6: d0 46       .F  :b9a6[1]
    inc osrdsc_ptr                                                    ; 59a8: e6 f6       ..  :b9a8[1]
    bne cb9ae                                                         ; 59aa: d0 02       ..  :b9aa[1]
    inc l00f7                                                         ; 59ac: e6 f7       ..  :b9ac[1]
; &59ae referenced 1 time by &b9aa
.cb9ae
    inx                                                               ; 59ae: e8          .   :b9ae[1]
    cpx #4                                                            ; 59af: e0 04       ..  :b9af[1]
    bcc loop_cb999                                                    ; 59b1: 90 e6       ..  :b9b1[1]
    lda #2                                                            ; 59b3: a9 02       ..  :b9b3[1]
    sta l00bf                                                         ; 59b5: 85 bf       ..  :b9b5[1]
    ldx #&0f                                                          ; 59b7: a2 0f       ..  :b9b7[1]
    lda #&80                                                          ; 59b9: a9 80       ..  :b9b9[1]
    sta l00f7                                                         ; 59bb: 85 f7       ..  :b9bb[1]
; &59bd referenced 1 time by &b9cf
.loop_cb9bd
    stx osrdsc_ptr                                                    ; 59bd: 86 f6       ..  :b9bd[1]
    pla                                                               ; 59bf: 68          h   :b9bf[1]
    pha                                                               ; 59c0: 48          H   :b9c0[1]
    tay                                                               ; 59c1: a8          .   :b9c1[1]
    jsr osrdsc                                                        ; 59c2: 20 b9 ff     .. :b9c2[1]
    ldx osrdsc_ptr                                                    ; 59c5: a6 f6       ..  :b9c5[1]
    cmp lb872,x                                                       ; 59c7: dd 72 b8    .r. :b9c7[1]
    bne cb9d9                                                         ; 59ca: d0 0d       ..  :b9ca[1]
; &59cc referenced 1 time by &b9e5
.loop_cb9cc
    dex                                                               ; 59cc: ca          .   :b9cc[1]
    cpx #6                                                            ; 59cd: e0 06       ..  :b9cd[1]
    bcs loop_cb9bd                                                    ; 59cf: b0 ec       ..  :b9cf[1]
; &59d1 referenced 1 time by &b9ec
.loop_cb9d1
    clc                                                               ; 59d1: 18          .   :b9d1[1]
; &59d2 referenced 1 time by &b9f3
.cb9d2
    pla                                                               ; 59d2: 68          h   :b9d2[1]
    tay                                                               ; 59d3: a8          .   :b9d3[1]
    pla                                                               ; 59d4: 68          h   :b9d4[1]
    tax                                                               ; 59d5: aa          .   :b9d5[1]
    lda l00bf                                                         ; 59d6: a5 bf       ..  :b9d6[1]
    rts                                                               ; 59d8: 60          `   :b9d8[1]

; &59d9 referenced 1 time by &b9ca
.cb9d9
    cpx #&0a                                                          ; 59d9: e0 0a       ..  :b9d9[1]
    bne cb9e8                                                         ; 59db: d0 0b       ..  :b9db[1]
    cmp #&4f ; 'O'                                                    ; 59dd: c9 4f       .O  :b9dd[1]
    bne cb9e8                                                         ; 59df: d0 07       ..  :b9df[1]
    lda #1                                                            ; 59e1: a9 01       ..  :b9e1[1]
    sta l00bf                                                         ; 59e3: 85 bf       ..  :b9e3[1]
    jmp loop_cb9cc                                                    ; 59e5: 4c cc b9    L.. :b9e5[1]

; &59e8 referenced 2 times by &b9db, &b9df
.cb9e8
    lda #0                                                            ; 59e8: a9 00       ..  :b9e8[1]
    sta l00bf                                                         ; 59ea: 85 bf       ..  :b9ea[1]
    beq loop_cb9d1                                                    ; 59ec: f0 e3       ..  :b9ec[1]
; &59ee referenced 1 time by &b9a6
.cb9ee
    lda #&ff                                                          ; 59ee: a9 ff       ..  :b9ee[1]
    sta l00bf                                                         ; 59f0: 85 bf       ..  :b9f0[1]
    sec                                                               ; 59f2: 38          8   :b9f2[1]
    bcs cb9d2                                                         ; 59f3: b0 dd       ..  :b9f3[1]
; &59f5 referenced 2 times by &b225, &b297
.sub_cb9f5
    ldx #0                                                            ; 59f5: a2 00       ..  :b9f5[1]
; &59f7 referenced 1 time by &ba25
.cb9f7
    tya                                                               ; 59f7: 98          .   :b9f7[1]
    pha                                                               ; 59f8: 48          H   :b9f8[1]
; &59f9 referenced 1 time by &ba0e
.loop_cb9f9
    lda (os_text_ptr),y                                               ; 59f9: b1 f2       ..  :b9f9[1]
    bmi cba10                                                         ; 59fb: 30 13       0.  :b9fb[1]
    cmp #&2e ; '.'                                                    ; 59fd: c9 2e       ..  :b9fd[1]
    beq cba19                                                         ; 59ff: f0 18       ..  :b9ff[1]
    cmp #&41 ; 'A'                                                    ; 5a01: c9 41       .A  :ba01[1]
    bcc cba10                                                         ; 5a03: 90 0b       ..  :ba03[1]
    eor sram_table,x                                                  ; 5a05: 5d 30 ba    ]0. :ba05[1]
    and #&df                                                          ; 5a08: 29 df       ).  :ba08[1]
    bne cba15                                                         ; 5a0a: d0 09       ..  :ba0a[1]
    iny                                                               ; 5a0c: c8          .   :ba0c[1]
    inx                                                               ; 5a0d: e8          .   :ba0d[1]
    bne loop_cb9f9                                                    ; 5a0e: d0 e9       ..  :ba0e[1]
; &5a10 referenced 2 times by &b9fb, &ba03
.cba10
    lda sram_table,x                                                  ; 5a10: bd 30 ba    .0. :ba10[1]
    bmi cba28                                                         ; 5a13: 30 13       0.  :ba13[1]
; &5a15 referenced 1 time by &ba0a
.cba15
    clc                                                               ; 5a15: 18          .   :ba15[1]
    pla                                                               ; 5a16: 68          h   :ba16[1]
    tay                                                               ; 5a17: a8          .   :ba17[1]
    dey                                                               ; 5a18: 88          .   :ba18[1]
; &5a19 referenced 1 time by &b9ff
.cba19
    iny                                                               ; 5a19: c8          .   :ba19[1]
; &5a1a referenced 1 time by &ba20
.loop_cba1a
    inx                                                               ; 5a1a: e8          .   :ba1a[1]
    lda cba2f,x                                                       ; 5a1b: bd 2f ba    ./. :ba1b[1]
    beq cba2e                                                         ; 5a1e: f0 0e       ..  :ba1e[1]
    bpl loop_cba1a                                                    ; 5a20: 10 f8       ..  :ba20[1]
    bcs cba27                                                         ; 5a22: b0 03       ..  :ba22[1]
    inx                                                               ; 5a24: e8          .   :ba24[1]
    bcc cb9f7                                                         ; 5a25: 90 d0       ..  :ba25[1]
; &5a27 referenced 1 time by &ba22
.cba27
    dex                                                               ; 5a27: ca          .   :ba27[1]
; &5a28 referenced 1 time by &ba13
.cba28
    pla                                                               ; 5a28: 68          h   :ba28[1]
    jsr sub_cbab9                                                     ; 5a29: 20 b9 ba     .. :ba29[1]
    clc                                                               ; 5a2c: 18          .   :ba2c[1]
    rts                                                               ; 5a2d: 60          `   :ba2d[1]

; &5a2e referenced 1 time by &ba1e
.cba2e
    sec                                                               ; 5a2e: 38          8   :ba2e[1]
; &5a2f referenced 1 time by &ba1b
.cba2f
    rts                                                               ; 5a2f: 60          `   :ba2f[1]

; &5a30 referenced 3 times by &b234, &ba05, &ba10
.sram_table
    equs "SRAM"                                                       ; 5a30: 53 52 41... SRA :ba30[1]
; &5a31 referenced 1 time by &b238
    equb &ff, &ff                                                     ; 5a34: ff ff       ..  :ba34[1]
    equs "SRLOAD"                                                     ; 5a36: 53 52 4c... SRL :ba36[1]
    equb >(sub_cbb46-1)                                               ; 5a3c: bb          .   :ba3c[1]
    equb <(sub_cbb46-1)                                               ; 5a3d: 45          E   :ba3d[1]
    equs "SRSAVE"                                                     ; 5a3e: 53 52 53... SRS :ba3e[1]
    equb >(sub_cbb4a-1)                                               ; 5a44: bb          .   :ba44[1]
    equb <(sub_cbb4a-1)                                               ; 5a45: 49          I   :ba45[1]
    equs "SRWRITE"                                                    ; 5a46: 53 52 57... SRW :ba46[1]
    equb >(sub_cbbd3-1)                                               ; 5a4d: bb          .   :ba4d[1]
    equb <(sub_cbbd3-1)                                               ; 5a4e: d2          .   :ba4e[1]
    equs "SRREAD"                                                     ; 5a4f: 53 52 52... SRR :ba4f[1]
    equb >(sub_cbbd7-1)                                               ; 5a55: bb          .   :ba55[1]
    equb <(sub_cbbd7-1)                                               ; 5a56: d6          .   :ba56[1]
    equs "SRDATA"                                                     ; 5a57: 53 52 44... SRD :ba57[1]
    equb >(sub_cbc37-1)                                               ; 5a5d: bc          .   :ba5d[1]
    equb <(sub_cbc37-1)                                               ; 5a5e: 36          6   :ba5e[1]
    equs "SRROM"                                                      ; 5a5f: 53 52 52... SRR :ba5f[1]
    equb >(sub_cbc81-1)                                               ; 5a64: bc          .   :ba64[1]
    equb <(sub_cbc81-1)                                               ; 5a65: 80          .   :ba65[1]
    equb 0                                                            ; 5a66: 00          .   :ba66[1]

; &5a67 referenced 5 times by &bb51, &bb6c, &bbdd, &bbf3, &bc1c
.sub_cba67
    txa                                                               ; 5a67: 8a          .   :ba67[1]
    pha                                                               ; 5a68: 48          H   :ba68[1]
    jsr sub_cbab9                                                     ; 5a69: 20 b9 ba     .. :ba69[1]
    lda #0                                                            ; 5a6c: a9 00       ..  :ba6c[1]
    sta l00bc                                                         ; 5a6e: 85 bc       ..  :ba6e[1]
    sta l00bd                                                         ; 5a70: 85 bd       ..  :ba70[1]
    sta l00be                                                         ; 5a72: 85 be       ..  :ba72[1]
    sta l00bf                                                         ; 5a74: 85 bf       ..  :ba74[1]
    sec                                                               ; 5a76: 38          8   :ba76[1]
    php                                                               ; 5a77: 08          .   :ba77[1]
; &5a78 referenced 1 time by &baae
.cba78
    lda (os_text_ptr),y                                               ; 5a78: b1 f2       ..  :ba78[1]
    cmp #&30 ; '0'                                                    ; 5a7a: c9 30       .0  :ba7a[1]
    bcc cbab4                                                         ; 5a7c: 90 36       .6  :ba7c[1]
    cmp #&3a ; ':'                                                    ; 5a7e: c9 3a       .:  :ba7e[1]
    bcc cba8c                                                         ; 5a80: 90 0a       ..  :ba80[1]
    cmp #&47 ; 'G'                                                    ; 5a82: c9 47       .G  :ba82[1]
    bcs cbab4                                                         ; 5a84: b0 2e       ..  :ba84[1]
    cmp #&41 ; 'A'                                                    ; 5a86: c9 41       .A  :ba86[1]
    bcc cbab4                                                         ; 5a88: 90 2a       .*  :ba88[1]
    sbc #7                                                            ; 5a8a: e9 07       ..  :ba8a[1]
; &5a8c referenced 1 time by &ba80
.cba8c
    sec                                                               ; 5a8c: 38          8   :ba8c[1]
    sbc #&30 ; '0'                                                    ; 5a8d: e9 30       .0  :ba8d[1]
    plp                                                               ; 5a8f: 28          (   :ba8f[1]
    php                                                               ; 5a90: 08          .   :ba90[1]
    pha                                                               ; 5a91: 48          H   :ba91[1]
    ldx #4                                                            ; 5a92: a2 04       ..  :ba92[1]
; &5a94 referenced 1 time by &baa1
.loop_cba94
    asl l00bc                                                         ; 5a94: 06 bc       ..  :ba94[1]
    rol l00bd                                                         ; 5a96: 26 bd       &.  :ba96[1]
    bvc cba9e                                                         ; 5a98: 50 04       P.  :ba98[1]
    rol l00be                                                         ; 5a9a: 26 be       &.  :ba9a[1]
    rol l00bf                                                         ; 5a9c: 26 bf       &.  :ba9c[1]
; &5a9e referenced 1 time by &ba98
.cba9e
    bcs cbab0                                                         ; 5a9e: b0 10       ..  :ba9e[1]
    dex                                                               ; 5aa0: ca          .   :baa0[1]
    bne loop_cba94                                                    ; 5aa1: d0 f1       ..  :baa1[1]
    pla                                                               ; 5aa3: 68          h   :baa3[1]
    ora l00bc                                                         ; 5aa4: 05 bc       ..  :baa4[1]
    sta l00bc                                                         ; 5aa6: 85 bc       ..  :baa6[1]
    plp                                                               ; 5aa8: 28          (   :baa8[1]
    clc                                                               ; 5aa9: 18          .   :baa9[1]
    php                                                               ; 5aaa: 08          .   :baaa[1]
    iny                                                               ; 5aab: c8          .   :baab[1]
    beq cbab1                                                         ; 5aac: f0 03       ..  :baac[1]
    bcc cba78                                                         ; 5aae: 90 c8       ..  :baae[1]
; &5ab0 referenced 1 time by &ba9e
.cbab0
    pla                                                               ; 5ab0: 68          h   :bab0[1]
; &5ab1 referenced 1 time by &baac
.cbab1
    plp                                                               ; 5ab1: 28          (   :bab1[1]
    sec                                                               ; 5ab2: 38          8   :bab2[1]
    php                                                               ; 5ab3: 08          .   :bab3[1]
; &5ab4 referenced 3 times by &ba7c, &ba84, &ba88
.cbab4
    plp                                                               ; 5ab4: 28          (   :bab4[1]
    pla                                                               ; 5ab5: 68          h   :bab5[1]
    tax                                                               ; 5ab6: aa          .   :bab6[1]
    rts                                                               ; 5ab7: 60          `   :bab7[1]

; &5ab8 referenced 1 time by &babd
.loop_cbab8
    iny                                                               ; 5ab8: c8          .   :bab8[1]
; &5ab9 referenced 7 times by &ba29, &ba69, &bac5, &bad2, &bb02, &bb2b, &bbb0
.sub_cbab9
    lda (os_text_ptr),y                                               ; 5ab9: b1 f2       ..  :bab9[1]
    cmp #&20 ; ' '                                                    ; 5abb: c9 20       .   :babb[1]
    beq loop_cbab8                                                    ; 5abd: f0 f9       ..  :babd[1]
    cmp #&0d                                                          ; 5abf: c9 0d       ..  :babf[1]
    rts                                                               ; 5ac1: 60          `   :bac1[1]

; &5ac2 referenced 4 times by &bbbe, &bc2c, &bc3d, &bc87
.sub_cbac2
    lda #&0d                                                          ; 5ac2: a9 0d       ..  :bac2[1]
; &5ac4 referenced 3 times by &b26e, &bb67, &bbed
.sub_cbac4
    pha                                                               ; 5ac4: 48          H   :bac4[1]
    jsr sub_cbab9                                                     ; 5ac5: 20 b9 ba     .. :bac5[1]
    pla                                                               ; 5ac8: 68          h   :bac8[1]
    cmp (os_text_ptr),y                                               ; 5ac9: d1 f2       ..  :bac9[1]
    bne cbad0                                                         ; 5acb: d0 03       ..  :bacb[1]
    clc                                                               ; 5acd: 18          .   :bacd[1]
    iny                                                               ; 5ace: c8          .   :bace[1]
    rts                                                               ; 5acf: 60          `   :bacf[1]

; &5ad0 referenced 1 time by &bacb
.cbad0
    sec                                                               ; 5ad0: 38          8   :bad0[1]
    rts                                                               ; 5ad1: 60          `   :bad1[1]

; &5ad2 referenced 1 time by &bb4d
.sub_cbad2
    jsr sub_cbab9                                                     ; 5ad2: 20 b9 ba     .. :bad2[1]
    tya                                                               ; 5ad5: 98          .   :bad5[1]
    pha                                                               ; 5ad6: 48          H   :bad6[1]
    clc                                                               ; 5ad7: 18          .   :bad7[1]
    adc os_text_ptr                                                   ; 5ad8: 65 f2       e.  :bad8[1]
    ldy #&ef                                                          ; 5ada: a0 ef       ..  :bada[1]
    sta (l00b8),y                                                     ; 5adc: 91 b8       ..  :badc[1]
    lda l00f3                                                         ; 5ade: a5 f3       ..  :bade[1]
    adc #0                                                            ; 5ae0: 69 00       i.  :bae0[1]
    iny                                                               ; 5ae2: c8          .   :bae2[1]
    sta (l00b8),y                                                     ; 5ae3: 91 b8       ..  :bae3[1]
    pla                                                               ; 5ae5: 68          h   :bae5[1]
    tay                                                               ; 5ae6: a8          .   :bae6[1]
    bit lb57f                                                         ; 5ae7: 2c 7f b5    ,.. :bae7[1]
; &5aea referenced 1 time by &baf6
.loop_cbaea
    lda (os_text_ptr),y                                               ; 5aea: b1 f2       ..  :baea[1]
    cmp #&20 ; ' '                                                    ; 5aec: c9 20       .   :baec[1]
    beq cbafd                                                         ; 5aee: f0 0d       ..  :baee[1]
    cmp #&0d                                                          ; 5af0: c9 0d       ..  :baf0[1]
    beq cbafd                                                         ; 5af2: f0 09       ..  :baf2[1]
    clv                                                               ; 5af4: b8          .   :baf4[1]
    iny                                                               ; 5af5: c8          .   :baf5[1]
    bne loop_cbaea                                                    ; 5af6: d0 f2       ..  :baf6[1]
; &5af8 referenced 2 times by &bafd, &bbd0
.cbaf8
    ldx #3                                                            ; 5af8: a2 03       ..  :baf8[1]
    jmp cb8fb                                                         ; 5afa: 4c fb b8    L.. :bafa[1]

; &5afd referenced 2 times by &baee, &baf2
.cbafd
    bvs cbaf8                                                         ; 5afd: 70 f9       p.  :bafd[1]
    rts                                                               ; 5aff: 60          `   :baff[1]

; &5b00 referenced 4 times by &bb92, &bc21, &bc37, &bc81
.sub_cbb00
    stx l00bf                                                         ; 5b00: 86 bf       ..  :bb00[1]
    jsr sub_cbab9                                                     ; 5b02: 20 b9 ba     .. :bb02[1]
    ldx #3                                                            ; 5b05: a2 03       ..  :bb05[1]
; &5b07 referenced 1 time by &bb34
.cbb07
    cmp lbb3e,x                                                       ; 5b07: dd 3e bb    .>. :bb07[1]
    bcs cbb36                                                         ; 5b0a: b0 2a       .*  :bb0a[1]
    cmp lbb3a,x                                                       ; 5b0c: dd 3a bb    .:. :bb0c[1]
    bcc cbb33                                                         ; 5b0f: 90 22       ."  :bb0f[1]
    sbc lbb42,x                                                       ; 5b11: fd 42 bb    .B. :bb11[1]
    iny                                                               ; 5b14: c8          .   :bb14[1]
    cmp #1                                                            ; 5b15: c9 01       ..  :bb15[1]
    bne cbb2a                                                         ; 5b17: d0 11       ..  :bb17[1]
    lda (os_text_ptr),y                                               ; 5b19: b1 f2       ..  :bb19[1]
    cmp #&36 ; '6'                                                    ; 5b1b: c9 36       .6  :bb1b[1]
    bcs cbb28                                                         ; 5b1d: b0 09       ..  :bb1d[1]
    cmp #&30 ; '0'                                                    ; 5b1f: c9 30       .0  :bb1f[1]
    bcc cbb28                                                         ; 5b21: 90 05       ..  :bb21[1]
    sbc #&26 ; '&'                                                    ; 5b23: e9 26       .&  :bb23[1]
    iny                                                               ; 5b25: c8          .   :bb25[1]
    bne cbb2a                                                         ; 5b26: d0 02       ..  :bb26[1]
; &5b28 referenced 2 times by &bb1d, &bb21
.cbb28
    lda #1                                                            ; 5b28: a9 01       ..  :bb28[1]
; &5b2a referenced 2 times by &bb17, &bb26
.cbb2a
    pha                                                               ; 5b2a: 48          H   :bb2a[1]
    jsr sub_cbab9                                                     ; 5b2b: 20 b9 ba     .. :bb2b[1]
    pla                                                               ; 5b2e: 68          h   :bb2e[1]
    ldx l00bf                                                         ; 5b2f: a6 bf       ..  :bb2f[1]
    clc                                                               ; 5b31: 18          .   :bb31[1]
    rts                                                               ; 5b32: 60          `   :bb32[1]

; &5b33 referenced 1 time by &bb0f
.cbb33
    dex                                                               ; 5b33: ca          .   :bb33[1]
    bpl cbb07                                                         ; 5b34: 10 d1       ..  :bb34[1]
; &5b36 referenced 1 time by &bb0a
.cbb36
    ldx l00bf                                                         ; 5b36: a6 bf       ..  :bb36[1]
    sec                                                               ; 5b38: 38          8   :bb38[1]
    rts                                                               ; 5b39: 60          `   :bb39[1]

; &5b3a referenced 1 time by &bb0c
.lbb3a
    equs "0AWw"                                                       ; 5b3a: 30 41 57... 0AW :bb3a[1]
; &5b3e referenced 1 time by &bb07
.lbb3e
    equs ":G[{"                                                       ; 5b3e: 3a 47 5b... :G[ :bb3e[1]
; &5b42 referenced 1 time by &bb11
.lbb42
    equs "07Gg"                                                       ; 5b42: 30 37 47... 07G :bb42[1]

.sub_cbb46
    lda #&c0                                                          ; 5b46: a9 c0       ..  :bb46[1]
    bne cbb4c                                                         ; 5b48: d0 02       ..  :bb48[1]
.sub_cbb4a
    lda #&40 ; '@'                                                    ; 5b4a: a9 40       .@  :bb4a[1]
; &5b4c referenced 1 time by &bb48
.cbb4c
    pha                                                               ; 5b4c: 48          H   :bb4c[1]
    jsr sub_cbad2                                                     ; 5b4d: 20 d2 ba     .. :bb4d[1]
    clv                                                               ; 5b50: b8          .   :bb50[1]
    jsr sub_cba67                                                     ; 5b51: 20 67 ba     g. :bb51[1]
    bcs cbb6f                                                         ; 5b54: b0 19       ..  :bb54[1]
    sty l00ba                                                         ; 5b56: 84 ba       ..  :bb56[1]
    ldx #&bc                                                          ; 5b58: a2 bc       ..  :bb58[1]
    ldy #&f2                                                          ; 5b5a: a0 f2       ..  :bb5a[1]
    jsr sub_cb850                                                     ; 5b5c: 20 50 b8     P. :bb5c[1]
    ldy l00ba                                                         ; 5b5f: a4 ba       ..  :bb5f[1]
    pla                                                               ; 5b61: 68          h   :bb61[1]
    pha                                                               ; 5b62: 48          H   :bb62[1]
    bmi cbb90                                                         ; 5b63: 30 2b       0+  :bb63[1]
    lda #&2b ; '+'                                                    ; 5b65: a9 2b       .+  :bb65[1]
    jsr sub_cbac4                                                     ; 5b67: 20 c4 ba     .. :bb67[1]
    php                                                               ; 5b6a: 08          .   :bb6a[1]
    clv                                                               ; 5b6b: b8          .   :bb6b[1]
    jsr sub_cba67                                                     ; 5b6c: 20 67 ba     g. :bb6c[1]
; &5b6f referenced 1 time by &bb54
.cbb6f
    bcs cbbd0                                                         ; 5b6f: b0 5f       ._  :bb6f[1]
    sty l00ba                                                         ; 5b71: 84 ba       ..  :bb71[1]
    plp                                                               ; 5b73: 28          (   :bb73[1]
    bcc cbb89                                                         ; 5b74: 90 13       ..  :bb74[1]
    ldy #&f2                                                          ; 5b76: a0 f2       ..  :bb76[1]
    sec                                                               ; 5b78: 38          8   :bb78[1]
    lda l00bc                                                         ; 5b79: a5 bc       ..  :bb79[1]
    sec                                                               ; 5b7b: 38          8   :bb7b[1]
    sbc (l00b8),y                                                     ; 5b7c: f1 b8       ..  :bb7c[1]
    sta l00bc                                                         ; 5b7e: 85 bc       ..  :bb7e[1]
    iny                                                               ; 5b80: c8          .   :bb80[1]
    lda l00bd                                                         ; 5b81: a5 bd       ..  :bb81[1]
    sbc (l00b8),y                                                     ; 5b83: f1 b8       ..  :bb83[1]
    bcc cbbd0                                                         ; 5b85: 90 49       .I  :bb85[1]
    sta l00bd                                                         ; 5b87: 85 bd       ..  :bb87[1]
; &5b89 referenced 1 time by &bb74
.cbb89
    ldx #&bc                                                          ; 5b89: a2 bc       ..  :bb89[1]
    ldy #&f4                                                          ; 5b8b: a0 f4       ..  :bb8b[1]
    jsr sub_cb850                                                     ; 5b8d: 20 50 b8     P. :bb8d[1]
; &5b90 referenced 1 time by &bb63
.cbb90
    ldy l00ba                                                         ; 5b90: a4 ba       ..  :bb90[1]
    jsr sub_cbb00                                                     ; 5b92: 20 00 bb     .. :bb92[1]
    sty l00ba                                                         ; 5b95: 84 ba       ..  :bb95[1]
    bcs cbba1                                                         ; 5b97: b0 08       ..  :bb97[1]
    ldy #&f1                                                          ; 5b99: a0 f1       ..  :bb99[1]
    sta (l00b8),y                                                     ; 5b9b: 91 b8       ..  :bb9b[1]
    pla                                                               ; 5b9d: 68          h   :bb9d[1]
    and #&80                                                          ; 5b9e: 29 80       ).  :bb9e[1]
    pha                                                               ; 5ba0: 48          H   :bba0[1]
; &5ba1 referenced 1 time by &bb97
.cbba1
    pla                                                               ; 5ba1: 68          h   :bba1[1]
    sta l00bb                                                         ; 5ba2: 85 bb       ..  :bba2[1]
    ldy #&ee                                                          ; 5ba4: a0 ee       ..  :bba4[1]
    lda (l00b8),y                                                     ; 5ba6: b1 b8       ..  :bba6[1]
    and #&3f ; '?'                                                    ; 5ba8: 29 3f       )?  :bba8[1]
    ora l00bb                                                         ; 5baa: 05 bb       ..  :bbaa[1]
    sta (l00b8),y                                                     ; 5bac: 91 b8       ..  :bbac[1]
    ldy l00ba                                                         ; 5bae: a4 ba       ..  :bbae[1]
    jsr sub_cbab9                                                     ; 5bb0: 20 b9 ba     .. :bbb0[1]
    and #&df                                                          ; 5bb3: 29 df       ).  :bbb3[1]
    ldx #0                                                            ; 5bb5: a2 00       ..  :bbb5[1]
    cmp #&51 ; 'Q'                                                    ; 5bb7: c9 51       .Q  :bbb7[1]
    bne cbbbe                                                         ; 5bb9: d0 03       ..  :bbb9[1]
    iny                                                               ; 5bbb: c8          .   :bbbb[1]
    ldx #&ff                                                          ; 5bbc: a2 ff       ..  :bbbc[1]
; &5bbe referenced 1 time by &bbb9
.cbbbe
    jsr sub_cbac2                                                     ; 5bbe: 20 c2 ba     .. :bbbe[1]
    bcs cbbd0                                                         ; 5bc1: b0 0d       ..  :bbc1[1]
    ldy #&f8                                                          ; 5bc3: a0 f8       ..  :bbc3[1]
    lda #0                                                            ; 5bc5: a9 00       ..  :bbc5[1]
    sta (l00b8),y                                                     ; 5bc7: 91 b8       ..  :bbc7[1]
    iny                                                               ; 5bc9: c8          .   :bbc9[1]
    txa                                                               ; 5bca: 8a          .   :bbca[1]
    sta (l00b8),y                                                     ; 5bcb: 91 b8       ..  :bbcb[1]
    jmp cb2e7                                                         ; 5bcd: 4c e7 b2    L.. :bbcd[1]

; &5bd0 referenced 9 times by &bb6f, &bb85, &bbc1, &bbe0, &bbf6, &bc1f, &bc2f, &bc3a, &bc40
.cbbd0
    jmp cbaf8                                                         ; 5bd0: 4c f8 ba    L.. :bbd0[1]

.sub_cbbd3
    lda #&c0                                                          ; 5bd3: a9 c0       ..  :bbd3[1]
    bne cbbd9                                                         ; 5bd5: d0 02       ..  :bbd5[1]
.sub_cbbd7
    lda #&40 ; '@'                                                    ; 5bd7: a9 40       .@  :bbd7[1]
; &5bd9 referenced 1 time by &bbd5
.cbbd9
    pha                                                               ; 5bd9: 48          H   :bbd9[1]
    bit lb57f                                                         ; 5bda: 2c 7f b5    ,.. :bbda[1]
    jsr sub_cba67                                                     ; 5bdd: 20 67 ba     g. :bbdd[1]
    bcs cbbd0                                                         ; 5be0: b0 ee       ..  :bbe0[1]
    ldx #3                                                            ; 5be2: a2 03       ..  :bbe2[1]
; &5be4 referenced 1 time by &bbe9
.loop_cbbe4
    lda l00bc,x                                                       ; 5be4: b5 bc       ..  :bbe4[1]
    sta l00b1,x                                                       ; 5be6: 95 b1       ..  :bbe6[1]
    dex                                                               ; 5be8: ca          .   :bbe8[1]
    bpl loop_cbbe4                                                    ; 5be9: 10 f9       ..  :bbe9[1]
    lda #&2b ; '+'                                                    ; 5beb: a9 2b       .+  :bbeb[1]
    jsr sub_cbac4                                                     ; 5bed: 20 c4 ba     .. :bbed[1]
    bcs cbbf3                                                         ; 5bf0: b0 01       ..  :bbf0[1]
    clv                                                               ; 5bf2: b8          .   :bbf2[1]
; &5bf3 referenced 1 time by &bbf0
.cbbf3
    jsr sub_cba67                                                     ; 5bf3: 20 67 ba     g. :bbf3[1]
    bcs cbbd0                                                         ; 5bf6: b0 d8       ..  :bbf6[1]
    bvc cbc13                                                         ; 5bf8: 50 19       P.  :bbf8[1]
    sec                                                               ; 5bfa: 38          8   :bbfa[1]
    ldx #0                                                            ; 5bfb: a2 00       ..  :bbfb[1]
    sec                                                               ; 5bfd: 38          8   :bbfd[1]
; &5bfe referenced 1 time by &bc08
.loop_cbbfe
    lda l00bc,x                                                       ; 5bfe: b5 bc       ..  :bbfe[1]
    sbc l00b1,x                                                       ; 5c00: f5 b1       ..  :bc00[1]
    sta l00bc,x                                                       ; 5c02: 95 bc       ..  :bc02[1]
    inx                                                               ; 5c04: e8          .   :bc04[1]
    txa                                                               ; 5c05: 8a          .   :bc05[1]
    and #4                                                            ; 5c06: 29 04       ).  :bc06[1]
    beq loop_cbbfe                                                    ; 5c08: f0 f4       ..  :bc08[1]
    lda l00be                                                         ; 5c0a: a5 be       ..  :bc0a[1]
    ora l00bf                                                         ; 5c0c: 05 bf       ..  :bc0c[1]
    beq cbc13                                                         ; 5c0e: f0 03       ..  :bc0e[1]
    jmp cb446                                                         ; 5c10: 4c 46 b4    LF. :bc10[1]

; &5c13 referenced 2 times by &bbf8, &bc0e
.cbc13
    lda l00bc                                                         ; 5c13: a5 bc       ..  :bc13[1]
    sta l00b5                                                         ; 5c15: 85 b5       ..  :bc15[1]
    lda l00bd                                                         ; 5c17: a5 bd       ..  :bc17[1]
    sta l00b6                                                         ; 5c19: 85 b6       ..  :bc19[1]
    clv                                                               ; 5c1b: b8          .   :bc1b[1]
    jsr sub_cba67                                                     ; 5c1c: 20 67 ba     g. :bc1c[1]
    bcs cbbd0                                                         ; 5c1f: b0 af       ..  :bc1f[1]
    jsr sub_cbb00                                                     ; 5c21: 20 00 bb     .. :bc21[1]
    bcs cbc2c                                                         ; 5c24: b0 06       ..  :bc24[1]
    sta l00b7                                                         ; 5c26: 85 b7       ..  :bc26[1]
    pla                                                               ; 5c28: 68          h   :bc28[1]
    and #&bf                                                          ; 5c29: 29 bf       ).  :bc29[1]
    pha                                                               ; 5c2b: 48          H   :bc2b[1]
; &5c2c referenced 1 time by &bc24
.cbc2c
    jsr sub_cbac2                                                     ; 5c2c: 20 c2 ba     .. :bc2c[1]
    bcs cbbd0                                                         ; 5c2f: b0 9f       ..  :bc2f[1]
    pla                                                               ; 5c31: 68          h   :bc31[1]
    sta l00b0                                                         ; 5c32: 85 b0       ..  :bc32[1]
    jmp cbcb9                                                         ; 5c34: 4c b9 bc    L.. :bc34[1]

.sub_cbc37
    jsr sub_cbb00                                                     ; 5c37: 20 00 bb     .. :bc37[1]
; &5c3a referenced 2 times by &bc84, &bc8a
.cbc3a
    bcs cbbd0                                                         ; 5c3a: b0 94       ..  :bc3a[1]
    pha                                                               ; 5c3c: 48          H   :bc3c[1]
    jsr sub_cbac2                                                     ; 5c3d: 20 c2 ba     .. :bc3d[1]
    bcs cbbd0                                                         ; 5c40: b0 8e       ..  :bc40[1]
    pla                                                               ; 5c42: 68          h   :bc42[1]
    tay                                                               ; 5c43: a8          .   :bc43[1]
    jsr sub_cb6fe                                                     ; 5c44: 20 fe b6     .. :bc44[1]
    bne cbc64                                                         ; 5c47: d0 1b       ..  :bc47[1]
    jsr sub_cb986                                                     ; 5c49: 20 86 b9     .. :bc49[1]
    tax                                                               ; 5c4c: aa          .   :bc4c[1]
    bne cbc54                                                         ; 5c4d: d0 05       ..  :bc4d[1]
    ldx #5                                                            ; 5c4f: a2 05       ..  :bc4f[1]
    jmp cb8fb                                                         ; 5c51: 4c fb b8    L.. :bc51[1]

; &5c54 referenced 1 time by &bc4d
.cbc54
    sty l00bf                                                         ; 5c54: 84 bf       ..  :bc54[1]
    lda lb726,y                                                       ; 5c56: b9 26 b7    .&. :bc56[1]
    ldy #&fd                                                          ; 5c59: a0 fd       ..  :bc59[1]
    ora (l00b8),y                                                     ; 5c5b: 11 b8       ..  :bc5b[1]
    sta (l00b8),y                                                     ; 5c5d: 91 b8       ..  :bc5d[1]
    ldy l00bf                                                         ; 5c5f: a4 bf       ..  :bc5f[1]
    jsr sub_cbc68                                                     ; 5c61: 20 68 bc     h. :bc61[1]
; &5c64 referenced 1 time by &bc47
.cbc64
    jsr sub_cbec2                                                     ; 5c64: 20 c2 be     .. :bc64[1]
    rts                                                               ; 5c67: 60          `   :bc67[1]

; &5c68 referenced 2 times by &bc61, &bc95
.sub_cbc68
    ldx #&0f                                                          ; 5c68: a2 0f       ..  :bc68[1]
    stx l00ba                                                         ; 5c6a: 86 ba       ..  :bc6a[1]
    lda #&80                                                          ; 5c6c: a9 80       ..  :bc6c[1]
    sta l00bb                                                         ; 5c6e: 85 bb       ..  :bc6e[1]
; &5c70 referenced 1 time by &bc7e
.loop_cbc70
    lda lb872,x                                                       ; 5c70: bd 72 b8    .r. :bc70[1]
    cpx #1                                                            ; 5c73: e0 01       ..  :bc73[1]
    bne cbc78                                                         ; 5c75: d0 01       ..  :bc75[1]
    tya                                                               ; 5c77: 98          .   :bc77[1]
; &5c78 referenced 1 time by &bc75
.cbc78
    jsr sub_cb745                                                     ; 5c78: 20 45 b7     E. :bc78[1]
    dex                                                               ; 5c7b: ca          .   :bc7b[1]
    stx l00ba                                                         ; 5c7c: 86 ba       ..  :bc7c[1]
    bpl loop_cbc70                                                    ; 5c7e: 10 f0       ..  :bc7e[1]
    rts                                                               ; 5c80: 60          `   :bc80[1]

.sub_cbc81
    jsr sub_cbb00                                                     ; 5c81: 20 00 bb     .. :bc81[1]
    bcs cbc3a                                                         ; 5c84: b0 b4       ..  :bc84[1]
    pha                                                               ; 5c86: 48          H   :bc86[1]
    jsr sub_cbac2                                                     ; 5c87: 20 c2 ba     .. :bc87[1]
    bcs cbc3a                                                         ; 5c8a: b0 ae       ..  :bc8a[1]
    pla                                                               ; 5c8c: 68          h   :bc8c[1]
    tay                                                               ; 5c8d: a8          .   :bc8d[1]
    jsr sub_cb6fe                                                     ; 5c8e: 20 fe b6     .. :bc8e[1]
    beq cbcb2                                                         ; 5c91: f0 1f       ..  :bc91[1]
; &5c93 referenced 1 time by &bcb6
.cbc93
    sty l00bc                                                         ; 5c93: 84 bc       ..  :bc93[1]
    jsr sub_cbc68                                                     ; 5c95: 20 68 bc     h. :bc95[1]
    lda #&0a                                                          ; 5c98: a9 0a       ..  :bc98[1]
    sta l00ba                                                         ; 5c9a: 85 ba       ..  :bc9a[1]
    lda #&4f ; 'O'                                                    ; 5c9c: a9 4f       .O  :bc9c[1]
    jsr sub_cb745                                                     ; 5c9e: 20 45 b7     E. :bc9e[1]
    lda lb726,y                                                       ; 5ca1: b9 26 b7    .&. :bca1[1]
    eor #&ff                                                          ; 5ca4: 49 ff       I.  :bca4[1]
    ldy #&fd                                                          ; 5ca6: a0 fd       ..  :bca6[1]
    and (l00b8),y                                                     ; 5ca8: 31 b8       1.  :bca8[1]
    sta (l00b8),y                                                     ; 5caa: 91 b8       ..  :bcaa[1]
    ldy l00bc                                                         ; 5cac: a4 bc       ..  :bcac[1]
    jsr sub_cbec2                                                     ; 5cae: 20 c2 be     .. :bcae[1]
    rts                                                               ; 5cb1: 60          `   :bcb1[1]

; &5cb2 referenced 1 time by &bc91
.cbcb2
    jsr sub_cb986                                                     ; 5cb2: 20 86 b9     .. :bcb2[1]
    tax                                                               ; 5cb5: aa          .   :bcb5[1]
    bne cbc93                                                         ; 5cb6: d0 db       ..  :bcb6[1]
    rts                                                               ; 5cb8: 60          `   :bcb8[1]

; &5cb9 referenced 2 times by &b1f6, &bc34
.cbcb9
    lda l00b0                                                         ; 5cb9: a5 b0       ..  :bcb9[1]
    and #&c0                                                          ; 5cbb: 29 c0       ).  :bcbb[1]
    sta l00be                                                         ; 5cbd: 85 be       ..  :bcbd[1]
    ldy #&ee                                                          ; 5cbf: a0 ee       ..  :bcbf[1]
    lda (l00b8),y                                                     ; 5cc1: b1 b8       ..  :bcc1[1]
    and #&3f ; '?'                                                    ; 5cc3: 29 3f       )?  :bcc3[1]
    ora l00be                                                         ; 5cc5: 05 be       ..  :bcc5[1]
    sta (l00b8),y                                                     ; 5cc7: 91 b8       ..  :bcc7[1]
    bit l00b0                                                         ; 5cc9: 24 b0       $.  :bcc9[1]
    bvs cbcd6                                                         ; 5ccb: 70 09       p.  :bccb[1]
    ldy l00b7                                                         ; 5ccd: a4 b7       ..  :bccd[1]
    cpy #&14                                                          ; 5ccf: c0 14       ..  :bccf[1]
    bcc cbce1                                                         ; 5cd1: 90 0e       ..  :bcd1[1]
; &5cd3 referenced 1 time by &bcef
.loop_cbcd3
    jmp cb300                                                         ; 5cd3: 4c 00 b3    L.. :bcd3[1]

; &5cd6 referenced 1 time by &bccb
.cbcd6
    ldx l00bc                                                         ; 5cd6: a6 bc       ..  :bcd6[1]
    lda l00bd                                                         ; 5cd8: a5 bd       ..  :bcd8[1]
    jsr sub_cb6b1                                                     ; 5cda: 20 b1 b6     .. :bcda[1]
    stx l00bc                                                         ; 5cdd: 86 bc       ..  :bcdd[1]
    sta l00bd                                                         ; 5cdf: 85 bd       ..  :bcdf[1]
; &5ce1 referenced 1 time by &bcd1
.cbce1
    jsr sub_cb6fe                                                     ; 5ce1: 20 fe b6     .. :bce1[1]
    pha                                                               ; 5ce4: 48          H   :bce4[1]
    tya                                                               ; 5ce5: 98          .   :bce5[1]
    ldy #&f1                                                          ; 5ce6: a0 f1       ..  :bce6[1]
    sta (l00b8),y                                                     ; 5ce8: 91 b8       ..  :bce8[1]
    pla                                                               ; 5cea: 68          h   :bcea[1]
    eor l00b0                                                         ; 5ceb: 45 b0       E.  :bceb[1]
    and #&40 ; '@'                                                    ; 5ced: 29 40       )@  :bced[1]
    bne loop_cbcd3                                                    ; 5cef: d0 e2       ..  :bcef[1]
    jsr sub_cbe9d                                                     ; 5cf1: 20 9d be     .. :bcf1[1]
    jsr sub_cbe91                                                     ; 5cf4: 20 91 be     .. :bcf4[1]
    bcs cbd1b                                                         ; 5cf7: b0 22       ."  :bcf7[1]
; &5cf9 referenced 1 time by &bd21
.cbcf9
    ldx #&b5                                                          ; 5cf9: a2 b5       ..  :bcf9[1]
    ldy #&be                                                          ; 5cfb: a0 be       ..  :bcfb[1]
    jsr sub_cb580                                                     ; 5cfd: 20 80 b5     .. :bcfd[1]
    rol l00b0                                                         ; 5d00: 26 b0       &.  :bd00[1]
    bcc cbd0e                                                         ; 5d02: 90 0a       ..  :bd02[1]
    ldx #&bc                                                          ; 5d04: a2 bc       ..  :bd04[1]
    ldy #&b3                                                          ; 5d06: a0 b3       ..  :bd06[1]
; &5d08 referenced 1 time by &bd19
.loop_cbd08
    jsr sub_cb580                                                     ; 5d08: 20 80 b5     .. :bd08[1]
    jmp cb795                                                         ; 5d0b: 4c 95 b7    L.. :bd0b[1]

; &5d0e referenced 1 time by &bd02
.cbd0e
    ldx #&b1                                                          ; 5d0e: a2 b1       ..  :bd0e[1]
    ldy #&b3                                                          ; 5d10: a0 b3       ..  :bd10[1]
    jsr sub_cb580                                                     ; 5d12: 20 80 b5     .. :bd12[1]
    ldx #&bc                                                          ; 5d15: a2 bc       ..  :bd15[1]
    ldy #&b1                                                          ; 5d17: a0 b1       ..  :bd17[1]
    bne loop_cbd08                                                    ; 5d19: d0 ed       ..  :bd19[1]
; &5d1b referenced 1 time by &bcf7
.cbd1b
    lda l00b3                                                         ; 5d1b: a5 b3       ..  :bd1b[1]
    and l00b4                                                         ; 5d1d: 25 b4       %.  :bd1d[1]
    cmp #&ff                                                          ; 5d1f: c9 ff       ..  :bd1f[1]
    beq cbcf9                                                         ; 5d21: f0 d6       ..  :bd21[1]
    lda l00bc                                                         ; 5d23: a5 bc       ..  :bd23[1]
    pha                                                               ; 5d25: 48          H   :bd25[1]
    lda l00bd                                                         ; 5d26: a5 bd       ..  :bd26[1]
    pha                                                               ; 5d28: 48          H   :bd28[1]
    ldx #3                                                            ; 5d29: a2 03       ..  :bd29[1]
; &5d2b referenced 1 time by &bd30
.loop_cbd2b
    lda l00b1,x                                                       ; 5d2b: b5 b1       ..  :bd2b[1]
    sta l00ba,x                                                       ; 5d2d: 95 ba       ..  :bd2d[1]
    dex                                                               ; 5d2f: ca          .   :bd2f[1]
    bpl loop_cbd2b                                                    ; 5d30: 10 f9       ..  :bd30[1]
    ldx #&b5                                                          ; 5d32: a2 b5       ..  :bd32[1]
    ldy #&f4                                                          ; 5d34: a0 f4       ..  :bd34[1]
    jsr sub_cb850                                                     ; 5d36: 20 50 b8     P. :bd36[1]
    bit l00b0                                                         ; 5d39: 24 b0       $.  :bd39[1]
    bmi cbd40                                                         ; 5d3b: 30 03       0.  :bd3b[1]
    jmp cbdba                                                         ; 5d3d: 4c ba bd    L.. :bd3d[1]

; &5d40 referenced 1 time by &bd3b
.cbd40
    pla                                                               ; 5d40: 68          h   :bd40[1]
    sta l00b4                                                         ; 5d41: 85 b4       ..  :bd41[1]
    pla                                                               ; 5d43: 68          h   :bd43[1]
    sta l00b3                                                         ; 5d44: 85 b3       ..  :bd44[1]
; &5d46 referenced 1 time by &bdb6
.cbd46
    ldx #&be                                                          ; 5d46: a2 be       ..  :bd46[1]
    ldy #&f4                                                          ; 5d48: a0 f4       ..  :bd48[1]
    jsr sub_cb841                                                     ; 5d4a: 20 41 b8     A. :bd4a[1]
    lda l00bf                                                         ; 5d4d: a5 bf       ..  :bd4d[1]
    bne cbd7e                                                         ; 5d4f: d0 2d       .-  :bd4f[1]
    ldx l00be                                                         ; 5d51: a6 be       ..  :bd51[1]
    beq cbdb9                                                         ; 5d53: f0 64       .d  :bd53[1]
    lda #0                                                            ; 5d55: a9 00       ..  :bd55[1]
    sta (l00b8),y                                                     ; 5d57: 91 b8       ..  :bd57[1]
    inc l00b9                                                         ; 5d59: e6 b9       ..  :bd59[1]
    jsr cbe7b                                                         ; 5d5b: 20 7b be     {. :bd5b[1]
    lda #0                                                            ; 5d5e: a9 00       ..  :bd5e[1]
    ldx #&ba                                                          ; 5d60: a2 ba       ..  :bd60[1]
    ldy #0                                                            ; 5d62: a0 00       ..  :bd62[1]
    jsr tube_entry                                                    ; 5d64: 20 06 04     .. :bd64[1]
    ldy #7                                                            ; 5d67: a0 07       ..  :bd67[1]
    jsr cbe89                                                         ; 5d69: 20 89 be     .. :bd69[1]
; &5d6c referenced 1 time by &bd7a
.loop_cbd6c
    lda tube_host_r3_data                                             ; 5d6c: ad e5 fe    ... :bd6c[1]
    sta (l00b8),y                                                     ; 5d6f: 91 b8       ..  :bd6f[1]
    ldx #3                                                            ; 5d71: a2 03       ..  :bd71[1]
    jsr cbe8d                                                         ; 5d73: 20 8d be     .. :bd73[1]
    nop                                                               ; 5d76: ea          .   :bd76[1]
    iny                                                               ; 5d77: c8          .   :bd77[1]
    cpy l00be                                                         ; 5d78: c4 be       ..  :bd78[1]
    bne loop_cbd6c                                                    ; 5d7a: d0 f0       ..  :bd7a[1]
    beq cbda3                                                         ; 5d7c: f0 25       .%  :bd7c[1]
; &5d7e referenced 1 time by &bd4f
.cbd7e
    lda #0                                                            ; 5d7e: a9 00       ..  :bd7e[1]
    sta l00be                                                         ; 5d80: 85 be       ..  :bd80[1]
    lda #1                                                            ; 5d82: a9 01       ..  :bd82[1]
    sta l00bf                                                         ; 5d84: 85 bf       ..  :bd84[1]
    inc l00b9                                                         ; 5d86: e6 b9       ..  :bd86[1]
    jsr cbe7b                                                         ; 5d88: 20 7b be     {. :bd88[1]
    lda #6                                                            ; 5d8b: a9 06       ..  :bd8b[1]
    ldx #&ba                                                          ; 5d8d: a2 ba       ..  :bd8d[1]
    ldy #0                                                            ; 5d8f: a0 00       ..  :bd8f[1]
    jsr tube_entry                                                    ; 5d91: 20 06 04     .. :bd91[1]
    ldy #5                                                            ; 5d94: a0 05       ..  :bd94[1]
    jsr cbe89                                                         ; 5d96: 20 89 be     .. :bd96[1]
; &5d99 referenced 1 time by &bda1
.loop_cbd99
    lda tube_host_r3_data                                             ; 5d99: ad e5 fe    ... :bd99[1]
    sta (l00b8),y                                                     ; 5d9c: 91 b8       ..  :bd9c[1]
    lda (l00b8),y                                                     ; 5d9e: b1 b8       ..  :bd9e[1]
    iny                                                               ; 5da0: c8          .   :bda0[1]
    bne loop_cbd99                                                    ; 5da1: d0 f6       ..  :bda1[1]
; &5da3 referenced 1 time by &bd7c
.cbda3
    jsr sub_cbe83                                                     ; 5da3: 20 83 be     .. :bda3[1]
    ldx #&b8                                                          ; 5da6: a2 b8       ..  :bda6[1]
    ldy #&b1                                                          ; 5da8: a0 b1       ..  :bda8[1]
    jsr sub_cb580                                                     ; 5daa: 20 80 b5     .. :bdaa[1]
    dec l00b9                                                         ; 5dad: c6 b9       ..  :bdad[1]
    sec                                                               ; 5daf: 38          8   :bdaf[1]
    jsr cb795                                                         ; 5db0: 20 95 b7     .. :bdb0[1]
    jsr cbe47                                                         ; 5db3: 20 47 be     G. :bdb3[1]
    jmp cbd46                                                         ; 5db6: 4c 46 bd    LF. :bdb6[1]

; &5db9 referenced 2 times by &bd53, &bdcd
.cbdb9
    rts                                                               ; 5db9: 60          `   :bdb9[1]

; &5dba referenced 1 time by &bd3d
.cbdba
    pla                                                               ; 5dba: 68          h   :bdba[1]
    sta l00b2                                                         ; 5dbb: 85 b2       ..  :bdbb[1]
    pla                                                               ; 5dbd: 68          h   :bdbd[1]
    sta l00b1                                                         ; 5dbe: 85 b1       ..  :bdbe[1]
; &5dc0 referenced 1 time by &be44
.cbdc0
    ldx #&be                                                          ; 5dc0: a2 be       ..  :bdc0[1]
    ldy #&f4                                                          ; 5dc2: a0 f4       ..  :bdc2[1]
    jsr sub_cb841                                                     ; 5dc4: 20 41 b8     A. :bdc4[1]
    lda l00bf                                                         ; 5dc7: a5 bf       ..  :bdc7[1]
    bne cbdd3                                                         ; 5dc9: d0 08       ..  :bdc9[1]
    ldx l00be                                                         ; 5dcb: a6 be       ..  :bdcb[1]
    beq cbdb9                                                         ; 5dcd: f0 ea       ..  :bdcd[1]
    lda #1                                                            ; 5dcf: a9 01       ..  :bdcf[1]
    bne cbddd                                                         ; 5dd1: d0 0a       ..  :bdd1[1]
; &5dd3 referenced 1 time by &bdc9
.cbdd3
    lda #0                                                            ; 5dd3: a9 00       ..  :bdd3[1]
    sta l00be                                                         ; 5dd5: 85 be       ..  :bdd5[1]
    lda #1                                                            ; 5dd7: a9 01       ..  :bdd7[1]
    sta l00bf                                                         ; 5dd9: 85 bf       ..  :bdd9[1]
    lda #7                                                            ; 5ddb: a9 07       ..  :bddb[1]
; &5ddd referenced 1 time by &bdd1
.cbddd
    pha                                                               ; 5ddd: 48          H   :bddd[1]
    inc l00b9                                                         ; 5dde: e6 b9       ..  :bdde[1]
    ldx #&b8                                                          ; 5de0: a2 b8       ..  :bde0[1]
    ldy #&b3                                                          ; 5de2: a0 b3       ..  :bde2[1]
    jsr sub_cb580                                                     ; 5de4: 20 80 b5     .. :bde4[1]
    lda l00be                                                         ; 5de7: a5 be       ..  :bde7[1]
    pha                                                               ; 5de9: 48          H   :bde9[1]
    dec l00b9                                                         ; 5dea: c6 b9       ..  :bdea[1]
    clc                                                               ; 5dec: 18          .   :bdec[1]
    jsr cb795                                                         ; 5ded: 20 95 b7     .. :bded[1]
    pla                                                               ; 5df0: 68          h   :bdf0[1]
    sta l00be                                                         ; 5df1: 85 be       ..  :bdf1[1]
    pla                                                               ; 5df3: 68          h   :bdf3[1]
    cmp #1                                                            ; 5df4: c9 01       ..  :bdf4[1]
    bne cbe21                                                         ; 5df6: d0 29       .)  :bdf6[1]
    lda #0                                                            ; 5df8: a9 00       ..  :bdf8[1]
    ldy #&f4                                                          ; 5dfa: a0 f4       ..  :bdfa[1]
    sta (l00b8),y                                                     ; 5dfc: 91 b8       ..  :bdfc[1]
    inc l00b9                                                         ; 5dfe: e6 b9       ..  :bdfe[1]
    jsr cbe7b                                                         ; 5e00: 20 7b be     {. :be00[1]
    lda #1                                                            ; 5e03: a9 01       ..  :be03[1]
    ldx #&ba                                                          ; 5e05: a2 ba       ..  :be05[1]
    ldy #0                                                            ; 5e07: a0 00       ..  :be07[1]
    jsr tube_entry                                                    ; 5e09: 20 06 04     .. :be09[1]
    ldy #0                                                            ; 5e0c: a0 00       ..  :be0c[1]
; &5e0e referenced 1 time by &be1d
.loop_cbe0e
    lda (l00b8),y                                                     ; 5e0e: b1 b8       ..  :be0e[1]
    sta tube_host_r3_data                                             ; 5e10: 8d e5 fe    ... :be10[1]
    ldx #3                                                            ; 5e13: a2 03       ..  :be13[1]
    jsr cbe8d                                                         ; 5e15: 20 8d be     .. :be15[1]
    iny                                                               ; 5e18: c8          .   :be18[1]
    cpy l00be                                                         ; 5e19: c4 be       ..  :be19[1]
    cpy l00be                                                         ; 5e1b: c4 be       ..  :be1b[1]
    bne loop_cbe0e                                                    ; 5e1d: d0 ef       ..  :be1d[1]
    beq cbe3c                                                         ; 5e1f: f0 1b       ..  :be1f[1]
; &5e21 referenced 1 time by &bdf6
.cbe21
    inc l00b9                                                         ; 5e21: e6 b9       ..  :be21[1]
    jsr cbe7b                                                         ; 5e23: 20 7b be     {. :be23[1]
    lda #7                                                            ; 5e26: a9 07       ..  :be26[1]
    ldx #&ba                                                          ; 5e28: a2 ba       ..  :be28[1]
    ldy #0                                                            ; 5e2a: a0 00       ..  :be2a[1]
    jsr tube_entry                                                    ; 5e2c: 20 06 04     .. :be2c[1]
    ldy #0                                                            ; 5e2f: a0 00       ..  :be2f[1]
; &5e31 referenced 1 time by &be3a
.loop_cbe31
    lda (l00b8),y                                                     ; 5e31: b1 b8       ..  :be31[1]
    sta tube_host_r3_data                                             ; 5e33: 8d e5 fe    ... :be33[1]
    nop                                                               ; 5e36: ea          .   :be36[1]
    nop                                                               ; 5e37: ea          .   :be37[1]
    nop                                                               ; 5e38: ea          .   :be38[1]
    iny                                                               ; 5e39: c8          .   :be39[1]
    bne loop_cbe31                                                    ; 5e3a: d0 f5       ..  :be3a[1]
; &5e3c referenced 1 time by &be1f
.cbe3c
    jsr sub_cbe83                                                     ; 5e3c: 20 83 be     .. :be3c[1]
    dec l00b9                                                         ; 5e3f: c6 b9       ..  :be3f[1]
    jsr cbe47                                                         ; 5e41: 20 47 be     G. :be41[1]
    jmp cbdc0                                                         ; 5e44: 4c c0 bd    L.. :be44[1]

; &5e47 referenced 3 times by &bdb3, &be41, &be50
.cbe47
    ldx #1                                                            ; 5e47: a2 01       ..  :be47[1]
    inc l00ba,x                                                       ; 5e49: f6 ba       ..  :be49[1]
    bne cbe52                                                         ; 5e4b: d0 05       ..  :be4b[1]
    inx                                                               ; 5e4d: e8          .   :be4d[1]
    cpx #4                                                            ; 5e4e: e0 04       ..  :be4e[1]
    bcc cbe47                                                         ; 5e50: 90 f5       ..  :be50[1]
; &5e52 referenced 1 time by &be4b
.cbe52
    ldy #&f5                                                          ; 5e52: a0 f5       ..  :be52[1]
    lda (l00b8),y                                                     ; 5e54: b1 b8       ..  :be54[1]
    sec                                                               ; 5e56: 38          8   :be56[1]
    sbc #1                                                            ; 5e57: e9 01       ..  :be57[1]
    bcc cbe7a                                                         ; 5e59: 90 1f       ..  :be59[1]
    sta (l00b8),y                                                     ; 5e5b: 91 b8       ..  :be5b[1]
    jsr sub_cb616                                                     ; 5e5d: 20 16 b6     .. :be5d[1]
    beq cbe7a                                                         ; 5e60: f0 18       ..  :be60[1]
    ldx l00b7                                                         ; 5e62: a6 b7       ..  :be62[1]
    jsr sub_cb85d                                                     ; 5e64: 20 5d b8     ]. :be64[1]
    bvc cbe7a                                                         ; 5e67: 50 11       P.  :be67[1]
    lda l00b1,x                                                       ; 5e69: b5 b1       ..  :be69[1]
    cmp #&c0                                                          ; 5e6b: c9 c0       ..  :be6b[1]
    bcc cbe7a                                                         ; 5e6d: 90 0b       ..  :be6d[1]
    lda #&10                                                          ; 5e6f: a9 10       ..  :be6f[1]
    sta l00b0,x                                                       ; 5e71: 95 b0       ..  :be71[1]
    lda #&80                                                          ; 5e73: a9 80       ..  :be73[1]
    sta l00b1,x                                                       ; 5e75: 95 b1       ..  :be75[1]
    jsr sub_cb68f                                                     ; 5e77: 20 8f b6     .. :be77[1]
; &5e7a referenced 4 times by &be59, &be60, &be67, &be6d
.cbe7a
    rts                                                               ; 5e7a: 60          `   :be7a[1]

; &5e7b referenced 5 times by &bd5b, &bd88, &be00, &be23, &be80
.cbe7b
    lda #&c8                                                          ; 5e7b: a9 c8       ..  :be7b[1]
    jsr tube_entry                                                    ; 5e7d: 20 06 04     .. :be7d[1]
    bcc cbe7b                                                         ; 5e80: 90 f9       ..  :be80[1]
    rts                                                               ; 5e82: 60          `   :be82[1]

; &5e83 referenced 2 times by &bda3, &be3c
.sub_cbe83
    lda #&88                                                          ; 5e83: a9 88       ..  :be83[1]
    jsr tube_entry                                                    ; 5e85: 20 06 04     .. :be85[1]
    rts                                                               ; 5e88: 60          `   :be88[1]

; &5e89 referenced 3 times by &bd69, &bd96, &be8a
.cbe89
    dey                                                               ; 5e89: 88          .   :be89[1]
    bne cbe89                                                         ; 5e8a: d0 fd       ..  :be8a[1]
    rts                                                               ; 5e8c: 60          `   :be8c[1]

; &5e8d referenced 3 times by &bd73, &be15, &be8e
.cbe8d
    dex                                                               ; 5e8d: ca          .   :be8d[1]
    bne cbe8d                                                         ; 5e8e: d0 fd       ..  :be8e[1]
    rts                                                               ; 5e90: 60          `   :be90[1]

; &5e91 referenced 1 time by &bcf4
.sub_cbe91
    lda #osbyte_read_tube_presence                                    ; 5e91: a9 ea       ..  :be91[1]
    ldx #0                                                            ; 5e93: a2 00       ..  :be93[1]
    ldy #&ff                                                          ; 5e95: a0 ff       ..  :be95[1]
    jsr osbyte                                                        ; 5e97: 20 f4 ff     .. :be97[1]   ; Read Tube present flag
    cpx #&ff                                                          ; 5e9a: e0 ff       ..  :be9a[1]
    rts                                                               ; 5e9c: 60          `   :be9c[1]

; &5e9d referenced 2 times by &b338, &bcf1
.sub_cbe9d
    jsr sub_cb85d                                                     ; 5e9d: 20 5d b8     ]. :be9d[1]
    bpl cbec1                                                         ; 5ea0: 10 1f       ..  :bea0[1]
    bvs cbec1                                                         ; 5ea2: 70 1d       p.  :bea2[1]
    lda #0                                                            ; 5ea4: a9 00       ..  :bea4[1]
    pha                                                               ; 5ea6: 48          H   :bea6[1]
    ldy #&f1                                                          ; 5ea7: a0 f1       ..  :bea7[1]
    lda (l00b8),y                                                     ; 5ea9: b1 b8       ..  :bea9[1]
; &5eab referenced 1 time by &bec6
.loop_cbeab
    pha                                                               ; 5eab: 48          H   :beab[1]
    lda #osbyte_read_rom_info_table_low                               ; 5eac: a9 aa       ..  :beac[1]
    ldx #0                                                            ; 5eae: a2 00       ..  :beae[1]
    ldy #&ff                                                          ; 5eb0: a0 ff       ..  :beb0[1]
    jsr osbyte                                                        ; 5eb2: 20 f4 ff     .. :beb2[1]   ; Read address of ROM info table
    jsr cb82b                                                         ; 5eb5: 20 2b b8     +. :beb5[1]
    stx l00ba                                                         ; 5eb8: 86 ba       ..  :beb8[1]
    sty l00bb                                                         ; 5eba: 84 bb       ..  :beba[1]
    pla                                                               ; 5ebc: 68          h   :bebc[1]
    tay                                                               ; 5ebd: a8          .   :bebd[1]
    pla                                                               ; 5ebe: 68          h   :bebe[1]
    sta (l00ba),y                                                     ; 5ebf: 91 ba       ..  :bebf[1]
; &5ec1 referenced 2 times by &bea0, &bea2
.cbec1
    rts                                                               ; 5ec1: 60          `   :bec1[1]

; &5ec2 referenced 2 times by &bc64, &bcae
.sub_cbec2
    lda #2                                                            ; 5ec2: a9 02       ..  :bec2[1]
    pha                                                               ; 5ec4: 48          H   :bec4[1]
    tya                                                               ; 5ec5: 98          .   :bec5[1]
    bpl loop_cbeab                                                    ; 5ec6: 10 e3       ..  :bec6[1]
; &5ec8 referenced 1 time by &8003
.service_handler
    cmp #service_claim_absolute_workspace                             ; 5ec8: c9 01       ..  :bec8[1]
    bne cbee0                                                         ; 5eca: d0 14       ..  :beca[1]
    pha                                                               ; 5ecc: 48          H   :becc[1]
    tya                                                               ; 5ecd: 98          .   :becd[1]
    pha                                                               ; 5ece: 48          H   :bece[1]
    lda #osbyte_issue_service_request                                 ; 5ecf: a9 8f       ..  :becf[1]
    ldx #service_check_swr_presence                                   ; 5ed1: a2 2b       .+  :bed1[1]
    ldy romsel_copy                                                   ; 5ed3: a4 f4       ..  :bed3[1]
    jsr osbyte                                                        ; 5ed5: 20 f4 ff     .. :bed5[1]   ; Issue paged ROM service call, Reason 43 - Report memory size
    pla                                                               ; 5ed8: 68          h   :bed8[1]
    tay                                                               ; 5ed9: a8          .   :bed9[1]
    ldx romsel_copy                                                   ; 5eda: a6 f4       ..  :beda[1]
    pla                                                               ; 5edc: 68          h   :bedc[1]
; &5edd referenced 2 times by &bee2, &beec
.general_service_handler_indirect
    jmp general_service_handler                                       ; 5edd: 4c b1 b1    L.. :bedd[1]

; &5ee0 referenced 1 time by &beca
.cbee0
    cmp #service_check_swr_presence                                   ; 5ee0: c9 2b       .+  :bee0[1]
    bne general_service_handler_indirect                              ; 5ee2: d0 f9       ..  :bee2[1]
    cpy romsel_copy                                                   ; 5ee4: c4 f4       ..  :bee4[1]
    beq cbeee                                                         ; 5ee6: f0 06       ..  :bee6[1]
; &5ee8 referenced 4 times by &bef8, &beff, &bf08, &bf4c
.cbee8
    ldx romsel_copy                                                   ; 5ee8: a6 f4       ..  :bee8[1]
    lda #0                                                            ; 5eea: a9 00       ..  :beea[1]
    beq general_service_handler_indirect                              ; 5eec: f0 ef       ..  :beec[1]
; &5eee referenced 1 time by &bee6
.cbeee
    lda #&72 ; 'r'                                                    ; 5eee: a9 72       .r  :beee[1]
    ldx #0                                                            ; 5ef0: a2 00       ..  :bef0[1]
    jsr osbyte                                                        ; 5ef2: 20 f4 ff     .. :bef2[1]
    jsr osbyte                                                        ; 5ef5: 20 f4 ff     .. :bef5[1]
    bvs cbee8                                                         ; 5ef8: 70 ee       p.  :bef8[1]
    lda #&ea                                                          ; 5efa: a9 ea       ..  :befa[1]
    jsr sub_cbf82                                                     ; 5efc: 20 82 bf     .. :befc[1]
    bne cbee8                                                         ; 5eff: d0 e7       ..  :beff[1]
    lda #&d7                                                          ; 5f01: a9 d7       ..  :bf01[1]
    ldy #&7f                                                          ; 5f03: a0 7f       ..  :bf03[1]
    jsr sub_cbf84                                                     ; 5f05: 20 84 bf     .. :bf05[1]
    bpl cbee8                                                         ; 5f08: 10 de       ..  :bf08[1]
    jsr osnewl                                                        ; 5f0a: 20 e7 ff     .. :bf0a[1]
    ldx #0                                                            ; 5f0d: a2 00       ..  :bf0d[1]
    jsr sub_cbf7c                                                     ; 5f0f: 20 7c bf     |. :bf0f[1]
    lda #&fd                                                          ; 5f12: a9 fd       ..  :bf12[1]
    jsr sub_cbf82                                                     ; 5f14: 20 82 bf     .. :bf14[1]
    beq cbf46                                                         ; 5f17: f0 2d       .-  :bf17[1]
    tsx                                                               ; 5f19: ba          .   :bf19[1]
    ldy #&30 ; '0'                                                    ; 5f1a: a0 30       .0  :bf1a[1]
; &5f1c referenced 1 time by &bf21
.loop_cbf1c
    lda cbf8a,y                                                       ; 5f1c: b9 8a bf    ... :bf1c[1]
    pha                                                               ; 5f1f: 48          H   :bf1f[1]
    dey                                                               ; 5f20: 88          .   :bf20[1]
    bne loop_cbf1c                                                    ; 5f21: d0 f9       ..  :bf21[1]
    txa                                                               ; 5f23: 8a          .   :bf23[1]
    tay                                                               ; 5f24: a8          .   :bf24[1]
    lda #1                                                            ; 5f25: a9 01       ..  :bf25[1]
    pha                                                               ; 5f27: 48          H   :bf27[1]
    tsx                                                               ; 5f28: ba          .   :bf28[1]
    inx                                                               ; 5f29: e8          .   :bf29[1]
    txa                                                               ; 5f2a: 8a          .   :bf2a[1]
    pha                                                               ; 5f2b: 48          H   :bf2b[1]
    ldx #&0f                                                          ; 5f2c: a2 0f       ..  :bf2c[1]
    lda #0                                                            ; 5f2e: a9 00       ..  :bf2e[1]
    sta l00b0                                                         ; 5f30: 85 b0       ..  :bf30[1]
    rts                                                               ; 5f32: 60          `   :bf32[1]

; &5f33 referenced 1 time by &bfb8
.cbf33
    tya                                                               ; 5f33: 98          .   :bf33[1]
    tax                                                               ; 5f34: aa          .   :bf34[1]
    txs                                                               ; 5f35: 9a          .   :bf35[1]
    lda l00b0                                                         ; 5f36: a5 b0       ..  :bf36[1]
    asl a                                                             ; 5f38: 0a          .   :bf38[1]
    asl a                                                             ; 5f39: 0a          .   :bf39[1]
    clc                                                               ; 5f3a: 18          .   :bf3a[1]
    adc #&0d                                                          ; 5f3b: 69 0d       i.  :bf3b[1]
    tax                                                               ; 5f3d: aa          .   :bf3d[1]
    jsr sub_cbf7c                                                     ; 5f3e: 20 7c bf     |. :bf3e[1]
    ldx #&0a                                                          ; 5f41: a2 0a       ..  :bf41[1]
    jsr sub_cbf7c                                                     ; 5f43: 20 7c bf     |. :bf43[1]
; &5f46 referenced 1 time by &bf17
.cbf46
    jsr osnewl                                                        ; 5f46: 20 e7 ff     .. :bf46[1]
    jsr osnewl                                                        ; 5f49: 20 e7 ff     .. :bf49[1]
    jmp cbee8                                                         ; 5f4c: 4c e8 be    L.. :bf4c[1]

; &5f4f referenced 1 time by &bf7c
.lbf4f
    equs "Acorn OS "                                                  ; 5f4f: 41 63 6f... Aco :bf4f[1]
    equb   0, &4b,   7,   0, &36, &34,   0,   0, &38, &30,   0,   0   ; 5f58: 00 4b 07... .K. :bf58[1]
    equb &39, &36,   0,   0                                           ; 5f64: 39 36 00... 96. :bf64[1]
    equs "112"                                                        ; 5f68: 31 31 32    112 :bf68[1]
    equb 0                                                            ; 5f6b: 00          .   :bf6b[1]
    equs "128"                                                        ; 5f6c: 31 32 38    128 :bf6c[1]
    equb 0                                                            ; 5f6f: 00          .   :bf6f[1]
    equs "144"                                                        ; 5f70: 31 34 34    144 :bf70[1]
    equb 0                                                            ; 5f73: 00          .   :bf73[1]
    equs "160"                                                        ; 5f74: 31 36 30    160 :bf74[1]
    equb 0                                                            ; 5f77: 00          .   :bf77[1]

; &5f78 referenced 1 time by &bf7f
.loop_cbf78
    jsr oswrch                                                        ; 5f78: 20 ee ff     .. :bf78[1]
    inx                                                               ; 5f7b: e8          .   :bf7b[1]
; &5f7c referenced 3 times by &bf0f, &bf3e, &bf43
.sub_cbf7c
    lda lbf4f,x                                                       ; 5f7c: bd 4f bf    .O. :bf7c[1]
    bne loop_cbf78                                                    ; 5f7f: d0 f7       ..  :bf7f[1]
    rts                                                               ; 5f81: 60          `   :bf81[1]

; &5f82 referenced 2 times by &befc, &bf14
.sub_cbf82
    ldy #&ff                                                          ; 5f82: a0 ff       ..  :bf82[1]
; &5f84 referenced 1 time by &bf05
.sub_cbf84
    ldx #0                                                            ; 5f84: a2 00       ..  :bf84[1]
    jsr osbyte                                                        ; 5f86: 20 f4 ff     .. :bf86[1]
    txa                                                               ; 5f89: 8a          .   :bf89[1]
; &5f8a referenced 1 time by &bf1c
.cbf8a
    rts                                                               ; 5f8a: 60          `   :bf8a[1]

    lda romsel_copy                                                   ; 5f8b: a5 f4       ..  :bf8b[1]
    pha                                                               ; 5f8d: 48          H   :bf8d[1]
; &5f8e referenced 2 times by &bfac, &bfb0
.cbf8e
    stx romsel_copy                                                   ; 5f8e: 86 f4       ..  :bf8e[1]
    stx romsel                                                        ; 5f90: 8e 30 fe    .0. :bf90[1]
    lda lbfff                                                         ; 5f93: ad ff bf    ... :bf93[1]
    pha                                                               ; 5f96: 48          H   :bf96[1]
    eor #&a5                                                          ; 5f97: 49 a5       I.  :bf97[1]
    sta lbfff                                                         ; 5f99: 8d ff bf    ... :bf99[1]
    cmp lbfff                                                         ; 5f9c: cd ff bf    ... :bf9c[1]
    bne cbfa3                                                         ; 5f9f: d0 02       ..  :bf9f[1]
    inc l00b0                                                         ; 5fa1: e6 b0       ..  :bfa1[1]
; &5fa3 referenced 1 time by &bf9f
.cbfa3
    pla                                                               ; 5fa3: 68          h   :bfa3[1]
    sta lbfff                                                         ; 5fa4: 8d ff bf    ... :bfa4[1]
    dex                                                               ; 5fa7: ca          .   :bfa7[1]
    bmi cbfb2                                                         ; 5fa8: 30 08       0.  :bfa8[1]
    cpx #&0b                                                          ; 5faa: e0 0b       ..  :bfaa[1]
    bne cbf8e                                                         ; 5fac: d0 e0       ..  :bfac[1]
    ldx #1                                                            ; 5fae: a2 01       ..  :bfae[1]
    bne cbf8e                                                         ; 5fb0: d0 dc       ..  :bfb0[1]
; &5fb2 referenced 1 time by &bfa8
.cbfb2
    pla                                                               ; 5fb2: 68          h   :bfb2[1]
    sta romsel_copy                                                   ; 5fb3: 85 f4       ..  :bfb3[1]
    sta romsel                                                        ; 5fb5: 8d 30 fe    .0. :bfb5[1]
    jmp cbf33                                                         ; 5fb8: 4c 33 bf    L3. :bfb8[1]

    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 5fbb: ff ff ff... ... :bfbb[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 5fc7: ff ff ff... ... :bfc7[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 5fd3: ff ff ff... ... :bfd3[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 5fdf: ff ff ff... ... :bfdf[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 5feb: ff ff ff... ... :bfeb[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5ff7: ff ff ff... ... :bff7[1]
; &5fff referenced 4 times by &bf93, &bf99, &bf9c, &bfa4
.lbfff
    equb &ff                                                          ; 5fff: ff          .   :bfff[1]
    org l5075 + (lc000 - lb075)
    copyblock lb075, lc000, l5075
    clear lb075, lc000

.pydis_end

; Label references by decreasing frequency:
;     l00b8:                    125
;     l00b0:                    105
;     l00ba:                     44
;     l00bf:                     42
;     l00bc:                     41
;     l00b6:                     35
;     l00be:                     31
;     l00cd:                     31
;     sub_c2077:                 31
;     l00c2:                     30
;     l00b1:                     29
;     sub_c23e3:                 29
;     l00b9:                     28
;     l00bb:                     28
;     l00b5:                     26
;     l00bd:                     26
;     l00b4:                     25
;     l00b3:                     23
;     l00c1:                     23
;     os_text_ptr:               23
;     osbyte:                    22
;     romsel_copy:               21
;     l0f0e:                     21
;     c4ea0:                     21
;     l00c4:                     20
;     c209f:                     20
;     l00b2:                     19
;     l10c2:                     19
;     l0001:                     18
;     l00a8:                     18
;     l00aa:                     18
;     l00c5:                     18
;     l00c9:                     18
;     l10de:                     18
;     l0000:                     17
;     l00b7:                     17
;     l0e0f:                     17
;     l0f06:                     17
;     l1000:                     17
;     l00a2:                     16
;     l00ab:                     16
;     l00ae:                     16
;     c43dc:                     16
;     c582b:                     16
;     l00c0:                     15
;     l00c3:                     15
;     l00c7:                     15
;     l0f05:                     15
;     l00cc:                     14
;     l1117:                     14
;     c4e70:                     14
;     c4f7f:                     14
;     l00a1:                     13
;     l00a5:                     13
;     l00c8:                     13
;     l0f07:                     13
;     sub_c414a:                 13
;     tube_host_r3_data:         13
;     l00ac:                     12
;     sub_c274c:                 12
;     sub_c5841:                 12
;     osasci:                    12
;     l00c6:                     11
;     osrdsc_ptr:                11
;     l0e08:                     11
;     sub_c2038:                 11
;     sub_c2149:                 11
;     c396e:                     11
;     c4c0f:                     11
;     lfe84:                     11
;     tube_host_r2_data:         11
;     l00a9:                     10
;     l1111:                     10
;     l1112:                     10
;     sub_c20c3:                 10
;     c33e6:                     10
;     c5203:                     10
;     lfe87:                     10
;     tube_host_r2_status:       10
;     l00ca:                      9
;     l1074:                      9
;     l108a:                      9
;     l1097:                      9
;     l10c0:                      9
;     l1110:                      9
;     c5bd0:                      9
;     l00ce:                      8
;     l00ff:                      8
;     l0100:                      8
;     l0df0:                      8
;     l0f04:                      8
;     l1060:                      8
;     l1082:                      8
;     l108b:                      8
;     l1090:                      8
;     l1096:                      8
;     l10ca:                      8
;     l10cf:                      8
;     l10d1:                      8
;     sub_c21b0:                  8
;     sub_c21bf:                  8
;     c2816:                      8
;     sub_c2b7b:                  8
;     sub_c3ae5:                  8
;     c4e79:                      8
;     sub_c585d:                  8
;     tube_host_r1_status:        8
;     osfind:                     8
;     l00a7:                      7
;     l00cf:                      7
;     l0f08:                      7
;     l1075:                      7
;     l10c9:                      7
;     l10d2:                      7
;     l1114:                      7
;     c204f:                      7
;     sub_c2284:                  7
;     sub_c2380:                  7
;     c2b8b:                      7
;     sub_c499c:                  7
;     sub_c5580:                  7
;     sub_c5ab9:                  7
;     osrdsc:                     7
;     l0015:                      6
;     l00f3:                      6
;     l00f7:                      6
;     l0f0f:                      6
;     l1100:                      6
;     sub_c202e:                  6
;     sub_c2280:                  6
;     sub_c22fe:                  6
;     l261c:                      6
;     sub_c27da:                  6
;     c340c:                      6
;     sub_c39ac:                  6
;     sub_c3d8e:                  6
;     sub_c3e75:                  6
;     c4f58:                      6
;     sub_c55f2:                  6
;     l5726:                      6
;     c58fb:                      6
;     oswrch:                     6
;     l00a6:                      5
;     l00af:                      5
;     l00f0:                      5
;     l1087:                      5
;     l1088:                      5
;     l1099:                      5
;     l10c7:                      5
;     l10dd:                      5
;     l110c:                      5
;     l1115:                      5
;     l1116:                      5
;     sub_c20bb:                  5
;     sub_c20ed:                  5
;     sub_c20f3:                  5
;     c2125:                      5
;     sub_c230a:                  5
;     sub_c2335:                  5
;     sub_c2386:                  5
;     sub_c240c:                  5
;     c2ba2:                      5
;     sub_c2f3f:                  5
;     c3257:                      5
;     c39a3:                      5
;     sub_c3a6e:                  5
;     sub_c3ab8:                  5
;     sub_c40de:                  5
;     sub_c41b4:                  5
;     c4e97:                      5
;     sub_c56fe:                  5
;     sub_c5745:                  5
;     c5795:                      5
;     sub_c5850:                  5
;     sub_c5a67:                  5
;     c5e7b:                      5
;     osnewl:                     5
;     l0002:                      4
;     l0e00:                      4
;     l0f0c:                      4
;     l0f0d:                      4
;     l1069:                      4
;     l1076:                      4
;     l1077:                      4
;     l1081:                      4
;     l1086:                      4
;     l1095:                      4
;     l10c4:                      4
;     l10cb:                      4
;     l10cc:                      4
;     l10ce:                      4
;     l10d9:                      4
;     l10da:                      4
;     l110d:                      4
;     l1113:                      4
;     l111a:                      4
;     l111d:                      4
;     sub_c2023:                  4
;     sub_c2048:                  4
;     sub_c20c8:                  4
;     sub_c2174:                  4
;     c21a7:                      4
;     sub_c221d:                  4
;     c2225:                      4
;     sub_c22b2:                  4
;     sub_c2327:                  4
;     sub_c23dc:                  4
;     c2d74:                      4
;     c2d91:                      4
;     c2e0e:                      4
;     c2e12:                      4
;     c2e64:                      4
;     sub_c2f6b:                  4
;     c340e:                      4
;     c3436:                      4
;     c393b:                      4
;     sub_c3965:                  4
;     sub_c3a8d:                  4
;     c3adf:                      4
;     c3ae9:                      4
;     sub_c4379:                  4
;     c45e5:                      4
;     sub_c49ca:                  4
;     sub_c4acf:                  4
;     sub_c4c18:                  4
;     sub_c4c62:                  4
;     c4d79:                      4
;     c5446:                      4
;     l557f:                      4
;     sub_c5616:                  4
;     c568c:                      4
;     sub_c568f:                  4
;     sub_c583f:                  4
;     sub_c5ac2:                  4
;     sub_c5b00:                  4
;     c5e7a:                      4
;     c5ee8:                      4
;     l5fff:                      4
;     romsel:                     4
;     lfe85:                      4
;     lfe86:                      4
;     osbput:                     4
;     osbget:                     4
;     osfile:                     4
;     osrdch:                     4
;     l00ef:                      3
;     l0107:                      3
;     l0109:                      3
;     bytev:                      3
;     bytev+1:                    3
;     l0ef8:                      3
;     l1092:                      3
;     l1093:                      3
;     l1094:                      3
;     l1098:                      3
;     l109d:                      3
;     l109f:                      3
;     l10c3:                      3
;     l10c5:                      3
;     l10c6:                      3
;     l10d0:                      3
;     l10d3:                      3
;     l10d6:                      3
;     l10d7:                      3
;     l1119:                      3
;     l111c:                      3
;     c2103:                      3
;     sub_c21be:                  3
;     c2290:                      3
;     c22e6:                      3
;     sub_c233a:                  3
;     sub_c236e:                  3
;     c2454:                      3
;     sub_c2456:                  3
;     c29d7:                      3
;     sub_c2b86:                  3
;     c2d41:                      3
;     c2e53:                      3
;     c2ecc:                      3
;     c2f2a:                      3
;     sub_c2f7a:                  3
;     c30fb:                      3
;     c31af:                      3
;     c3214:                      3
;     sub_c33fd:                  3
;     c3444:                      3
;     c34bc:                      3
;     sub_c3526:                  3
;     c3738:                      3
;     sub_c3940:                  3
;     c39ed:                      3
;     c3a8c:                      3
;     sub_c3be5:                  3
;     c3c82:                      3
;     c3d5d:                      3
;     sub_c3e30:                  3
;     sub_c3f0f:                  3
;     sub_c3f16:                  3
;     sub_c3f1e:                  3
;     c406b:                      3
;     c414f:                      3
;     c41c0:                      3
;     sub_c4315:                  3
;     sub_c4384:                  3
;     sub_c4530:                  3
;     c4660:                      3
;     sub_c49c2:                  3
;     c4a42:                      3
;     c4a44:                      3
;     sub_c4c0c:                  3
;     c4cc4:                      3
;     sub_c4d5d:                  3
;     c4d77:                      3
;     l4f76:                      3
;     c51d5:                      3
;     c5371:                      3
;     sub_c558b:                  3
;     c5684:                      3
;     c56ca:                      3
;     sub_c584e:                  3
;     sub_c5986:                  3
;     l5a30:                      3
;     c5ab4:                      3
;     sub_c5ac4:                  3
;     c5e47:                      3
;     c5e89:                      3
;     c5e8d:                      3
;     sub_c5f7c:                  3
;     lfe80:                      3
;     tube_host_r1_data:          3
;     osword:                     3
;     oscli:                      3
;     l0003:                      2
;     l0012:                      2
;     l0014:                      2
;     l00a0:                      2
;     l00a3:                      2
;     l00a4:                      2
;     l00ad:                      2
;     l00fd:                      2
;     l0101:                      2
;     l0102:                      2
;     l0105:                      2
;     l010b:                      2
;     l0128:                      2
;     fscv:                       2
;     l0700:                      2
;     l0e07:                      2
;     l0f0a:                      2
;     l0f0b:                      2
;     l1045:                      2
;     l1062:                      2
;     l1065:                      2
;     l1067:                      2
;     l1078:                      2
;     l107d:                      2
;     l107e:                      2
;     l107f:                      2
;     l1089:                      2
;     l108c:                      2
;     l1091:                      2
;     l109a:                      2
;     l109b:                      2
;     l109e:                      2
;     l10c1:                      2
;     l10cd:                      2
;     l10d8:                      2
;     l10db:                      2
;     l10dc:                      2
;     l10e2:                      2
;     l10e3:                      2
;     l10e4:                      2
;     l1109:                      2
;     l110b:                      2
;     l110e:                      2
;     l110f:                      2
;     l111b:                      2
;     sub_c209a:                  2
;     sub_c20e3:                  2
;     c215d:                      2
;     sub_c21ae:                  2
;     sub_c21c5:                  2
;     c222a:                      2
;     c225d:                      2
;     sub_c2266:                  2
;     sub_c226d:                  2
;     sub_c22bb:                  2
;     sub_c22e8:                  2
;     c22fd:                      2
;     sub_c241b:                  2
;     sub_c2439:                  2
;     c2543:                      2
;     sub_c2555:                  2
;     c2560:                      2
;     c25bc:                      2
;     c2703:                      2
;     c2705:                      2
;     c273b:                      2
;     sub_c2745:                  2
;     sub_c27db:                  2
;     sub_c27e3:                  2
;     c2808:                      2
;     c283f:                      2
;     sub_c2855:                  2
;     sub_c2862:                  2
;     c28a6:                      2
;     c28f4:                      2
;     sub_c2951:                  2
;     c298a:                      2
;     c29a5:                      2
;     c29b4:                      2
;     sub_c29da:                  2
;     c2a00:                      2
;     c2a6e:                      2
;     sub_c2a77:                  2
;     sub_c2ab3:                  2
;     sub_c2b4d:                  2
;     sub_c2b64:                  2
;     c2be3:                      2
;     c2c12:                      2
;     c2cb2:                      2
;     c2d0d:                      2
;     c2d13:                      2
;     c2e0d:                      2
;     c2e32:                      2
;     c2e9f:                      2
;     c2ea5:                      2
;     c2eb7:                      2
;     c2eeb:                      2
;     c2f3e:                      2
;     c30c7:                      2
;     c31df:                      2
;     sub_c3279:                  2
;     c3289:                      2
;     sub_c328a:                  2
;     c3367:                      2
;     sub_c33c5:                  2
;     sub_c33d3:                  2
;     sub_c33f5:                  2
;     sub_c3432:                  2
;     sub_c3445:                  2
;     c34a9:                      2
;     c34c6:                      2
;     sub_c3516:                  2
;     sub_c352e:                  2
;     c35fd:                      2
;     c3628:                      2
;     c365a:                      2
;     c36b7:                      2
;     c37b3:                      2
;     sub_c392c:                  2
;     sub_c394c:                  2
;     sub_c395a:                  2
;     sub_c39f3:                  2
;     sub_c3a0f:                  2
;     sub_c3a50:                  2
;     sub_c3a60:                  2
;     sub_c3a63:                  2
;     sub_c3a78:                  2
;     sub_c3a82:                  2
;     sub_c3aa3:                  2
;     sub_c3ac8:                  2
;     sub_c3ad8:                  2
;     c3b6e:                      2
;     sub_c3b79:                  2
;     c3bc5:                      2
;     sub_c3bf2:                  2
;     sub_c3d1e:                  2
;     c3dcd:                      2
;     c3dd5:                      2
;     sub_c3df4:                  2
;     sub_c3e1e:                  2
;     c3e41:                      2
;     sub_c3e54:                  2
;     sub_c3ef4:                  2
;     sub_c3f14:                  2
;     sub_c3f26:                  2
;     c401d:                      2
;     c4021:                      2
;     c406c:                      2
;     c40f5:                      2
;     c410b:                      2
;     sub_c4168:                  2
;     c419f:                      2
;     sub_c41c6:                  2
;     l41d3:                      2
;     c42f2:                      2
;     sub_c4324:                  2
;     c438b:                      2
;     sub_c43ec:                  2
;     c4411:                      2
;     c4414:                      2
;     sub_c451f:                  2
;     c45ab:                      2
;     sub_c45b2:                  2
;     c4637:                      2
;     c4845:                      2
;     c486b:                      2
;     c487a:                      2
;     sub_c490d:                  2
;     c497d:                      2
;     c49ff:                      2
;     c4a1c:                      2
;     c4a51:                      2
;     sub_c4a53:                  2
;     sub_c4ac2:                  2
;     sub_c4af1:                  2
;     c4b1a:                      2
;     c4b41:                      2
;     c4b54:                      2
;     c4bbc:                      2
;     sub_c4c4e:                  2
;     l4cdb:                      2
;     c4d15:                      2
;     c4dd7:                      2
;     c4e11:                      2
;     c4ed3:                      2
;     c4ee8:                      2
;     c4f37:                      2
;     l4f75:                      2
;     l4f77:                      2
;     l4f78:                      2
;     c4fad:                      2
;     c4ffb:                      2
;     c500a:                      2
;     c5035:                      2
;     sub_c5047:                  2
;     c5280:                      2
;     c5297:                      2
;     c52a0:                      2
;     c5300:                      2
;     c5406:                      2
;     c545e:                      2
;     sub_c5598:                  2
;     sub_c55ce:                  2
;     sub_c55ee:                  2
;     sub_c5607:                  2
;     sub_c561e:                  2
;     c5655:                      2
;     sub_c565f:                  2
;     sub_c56b1:                  2
;     c5718:                      2
;     c57ed:                      2
;     l5872:                      2
;     c58e4:                      2
;     c59e8:                      2
;     sub_c59f5:                  2
;     c5a10:                      2
;     c5af8:                      2
;     c5afd:                      2
;     c5b28:                      2
;     c5b2a:                      2
;     c5c13:                      2
;     c5c3a:                      2
;     sub_c5c68:                  2
;     c5cb9:                      2
;     c5db9:                      2
;     sub_c5e83:                  2
;     sub_c5e9d:                  2
;     c5ec1:                      2
;     sub_c5ec2:                  2
;     c5edd:                      2
;     sub_c5f82:                  2
;     c5f8e:                      2
;     tube_host_r4_status:        2
;     gsinit:                     2
;     gsread:                     2
;     osgbpb:                     2
;     osargs:                     2
;     l0013:                      1
;     l00f1:                      1
;     l0103:                      1
;     l0104:                      1
;     l010c:                      1
;     l010d:                      1
;     l010e:                      1
;     brkv:                       1
;     brkv+1:                     1
;     filev:                      1
;     evntv:                      1
;     evntv+1:                    1
;     l028d:                      1
;     l0cff:                      1
;     l0e0e:                      1
;     l0e10:                      1
;     l0f00:                      1
;     l0f09:                      1
;     l0f10:                      1
;     l1001:                      1
;     l1002:                      1
;     l1003:                      1
;     l1004:                      1
;     l1005:                      1
;     l1006:                      1
;     l1007:                      1
;     l100e:                      1
;     l1047:                      1
;     l104d:                      1
;     l104e:                      1
;     l1050:                      1
;     l1058:                      1
;     l105f:                      1
;     l1061:                      1
;     l1063:                      1
;     l1064:                      1
;     l1072:                      1
;     l1079:                      1
;     l107a:                      1
;     l1083:                      1
;     l108f:                      1
;     pydis_start:                1
;     l2001:                      1
;     l2002:                      1
;     c2003:                      1
;     l2004:                      1
;     l2006:                      1
;     l2007:                      1
;     sub_c2020:                  1
;     c2040:                      1
;     c2064:                      1
;     c2086:                      1
;     c2093:                      1
;     c2096:                      1
;     sub_c209d:                  1
;     sub_c20b8:                  1
;     c20d0:                      1
;     sub_c20d3:                  1
;     sub_c20db:                  1
;     sub_c20e6:                  1
;     sub_c20f6:                  1
;     c2111:                      1
;     c2115:                      1
;     c212e:                      1
;     c213a:                      1
;     c215b:                      1
;     c215f:                      1
;     c2161:                      1
;     c216b:                      1
;     c2184:                      1
;     c218a:                      1
;     c218c:                      1
;     c21a2:                      1
;     sub_c21b7:                  1
;     c21bd:                      1
;     sub_c21c0:                  1
;     sub_c21c4:                  1
;     sub_c21ca:                  1
;     c220c:                      1
;     c220d:                      1
;     c221c:                      1
;     sub_c2222:                  1
;     c2243:                      1
;     c226f:                      1
;     c2286:                      1
;     c228b:                      1
;     c22be:                      1
;     c22c7:                      1
;     c22d1:                      1
;     c22d9:                      1
;     c22e7:                      1
;     c22fb:                      1
;     c2306:                      1
;     c230d:                      1
;     c2326:                      1
;     c2332:                      1
;     c2333:                      1
;     c2370:                      1
;     c2390:                      1
;     c2397:                      1
;     c23ab:                      1
;     sub_c23bf:                  1
;     c23cd:                      1
;     sub_c23d1:                  1
;     sub_c23d4:                  1
;     c23e2:                      1
;     sub_c23ee:                  1
;     c23f0:                      1
;     c23fa:                      1
;     c2406:                      1
;     c2425:                      1
;     c242b:                      1
;     sub_c242c:                  1
;     c2436:                      1
;     c2438:                      1
;     c2453:                      1
;     c2463:                      1
;     c2477:                      1
;     c2481:                      1
;     c2482:                      1
;     c2493:                      1
;     c249d:                      1
;     c24e7:                      1
;     c2527:                      1
;     c253e:                      1
;     c2552:                      1
;     c255f:                      1
;     c2564:                      1
;     c2573:                      1
;     c257b:                      1
;     c259b:                      1
;     c25b5:                      1
;     c25c5:                      1
;     l25d3:                      1
;     sub_c25e3:                  1
;     sub_c2602:                  1
;     l261d:                      1
;     c2717:                      1
;     c2725:                      1
;     c2734:                      1
;     c2759:                      1
;     c2779:                      1
;     c277c:                      1
;     c27a0:                      1
;     c27ab:                      1
;     c27b8:                      1
;     c27be:                      1
;     c27c6:                      1
;     c2815:                      1
;     sub_c2826:                  1
;     c2837:                      1
;     c2864:                      1
;     c2867:                      1
;     c28bc:                      1
;     c292d:                      1
;     sub_c2932:                  1
;     c2945:                      1
;     c295f:                      1
;     c2968:                      1
;     c296b:                      1
;     sub_c2979:                  1
;     c2990:                      1
;     c29ad:                      1
;     c29c4:                      1
;     c29ca:                      1
;     c29e2:                      1
;     c29f6:                      1
;     c2a17:                      1
;     c2a19:                      1
;     c2a49:                      1
;     c2a50:                      1
;     c2a54:                      1
;     c2a82:                      1
;     c2ac8:                      1
;     c2ad0:                      1
;     c2ad8:                      1
;     c2aeb:                      1
;     c2af0:                      1
;     c2afb:                      1
;     c2b18:                      1
;     sub_c2b25:                  1
;     c2b60:                      1
;     c2b77:                      1
;     c2b80:                      1
;     c2bea:                      1
;     sub_c2bf6:                  1
;     sub_c2bf9:                  1
;     c2bfb:                      1
;     c2c2e:                      1
;     c2c3a:                      1
;     c2c4e:                      1
;     sub_c2c56:                  1
;     c2c58:                      1
;     c2c61:                      1
;     sub_c2c65:                  1
;     c2c71:                      1
;     c2c87:                      1
;     c2cae:                      1
;     c2cc1:                      1
;     c2cd6:                      1
;     c2ce7:                      1
;     c2cfc:                      1
;     c2d03:                      1
;     c2d14:                      1
;     c2d17:                      1
;     sub_c2d1a:                  1
;     c2d5d:                      1
;     c2d92:                      1
;     c2dac:                      1
;     c2dba:                      1
;     sub_c2dc6:                  1
;     c2dd2:                      1
;     c2de2:                      1
;     c2de9:                      1
;     c2df0:                      1
;     c2e03:                      1
;     c2e14:                      1
;     c2e4d:                      1
;     c2e6f:                      1
;     c2e72:                      1
;     c2e85:                      1
;     c2e9e:                      1
;     c2eaf:                      1
;     c2ecb:                      1
;     c2edf:                      1
;     sub_c2eec:                  1
;     c2ef8:                      1
;     sub_c2efa:                  1
;     sub_c2eff:                  1
;     c2f12:                      1
;     c2f17:                      1
;     c2f21:                      1
;     sub_c2f33:                  1
;     sub_c2f37:                  1
;     sub_c2f4f:                  1
;     sub_c2f5e:                  1
;     c2f6c:                      1
;     sub_c2f75:                  1
;     c2f81:                      1
;     sub_c2f82:                  1
;     sub_c2f94:                  1
;     c2f96:                      1
;     c2fac:                      1
;     c2fb5:                      1
;     c2fc7:                      1
;     sub_c303e:                  1
;     c3047:                      1
;     c3060:                      1
;     c3066:                      1
;     c30db:                      1
;     c30e7:                      1
;     sub_c3104:                  1
;     c3108:                      1
;     c3113:                      1
;     c3115:                      1
;     l311d:                      1
;     l3121:                      1
;     l312d:                      1
;     l3139:                      1
;     l313f:                      1
;     l3145:                      1
;     l3146:                      1
;     l3191:                      1
;     l31a0:                      1
;     c31ba:                      1
;     c31cc:                      1
;     c31e7:                      1
;     c31eb:                      1
;     c31f3:                      1
;     c31f9:                      1
;     c3201:                      1
;     c320d:                      1
;     c321f:                      1
;     c322b:                      1
;     c3238:                      1
;     c323b:                      1
;     c323f:                      1
;     c3249:                      1
;     c325a:                      1
;     c326a:                      1
;     c3276:                      1
;     c329c:                      1
;     sub_c329d:                  1
;     c32bd:                      1
;     c32c4:                      1
;     c32c7:                      1
;     c32d6:                      1
;     c32e3:                      1
;     c32ef:                      1
;     c3302:                      1
;     c3355:                      1
;     c3357:                      1
;     c336b:                      1
;     c336f:                      1
;     c3379:                      1
;     c3382:                      1
;     c338d:                      1
;     c3390:                      1
;     c33a8:                      1
;     c33b1:                      1
;     sub_c33b4:                  1
;     c33bd:                      1
;     c33c4:                      1
;     sub_c33d8:                  1
;     c33da:                      1
;     c33e2:                      1
;     c33e5:                      1
;     sub_c33f1:                  1
;     sub_c33f9:                  1
;     c33ff:                      1
;     c3450:                      1
;     c345c:                      1
;     c348d:                      1
;     c34c1:                      1
;     c34c2:                      1
;     c34d4:                      1
;     c3504:                      1
;     c3535:                      1
;     sub_c3536:                  1
;     c353a:                      1
;     c3556:                      1
;     c356d:                      1
;     c356f:                      1
;     c357d:                      1
;     c3593:                      1
;     c35b6:                      1
;     c35d9:                      1
;     c35e4:                      1
;     c35e7:                      1
;     c35ec:                      1
;     c3618:                      1
;     c3649:                      1
;     c364a:                      1
;     c3658:                      1
;     sub_c365d:                  1
;     c367a:                      1
;     c3682:                      1
;     c3683:                      1
;     c369e:                      1
;     c36c1:                      1
;     c36c2:                      1
;     c36c3:                      1
;     c36e4:                      1
;     c36e9:                      1
;     c36ec:                      1
;     c36f2:                      1
;     c36f5:                      1
;     c3700:                      1
;     c3714:                      1
;     c3736:                      1
;     c373c:                      1
;     c373d:                      1
;     c375b:                      1
;     c376c:                      1
;     c379d:                      1
;     c37c8:                      1
;     c37e6:                      1
;     sub_c37e8:                  1
;     c3803:                      1
;     c381f:                      1
;     c382e:                      1
;     sub_c3832:                  1
;     c3835:                      1
;     c3837:                      1
;     c384c:                      1
;     c3851:                      1
;     c3859:                      1
;     c385e:                      1
;     c386b:                      1
;     c3873:                      1
;     c3881:                      1
;     c38a0:                      1
;     c38b1:                      1
;     c38ba:                      1
;     c38c1:                      1
;     c38cd:                      1
;     c38e4:                      1
;     c38ed:                      1
;     c38f0:                      1
;     c3942:                      1
;     c394b:                      1
;     c394e:                      1
;     c3964:                      1
;     c3978:                      1
;     sub_c3988:                  1
;     c3993:                      1
;     c39a8:                      1
;     c39ea:                      1
;     c3a2a:                      1
;     sub_c3a32:                  1
;     c3a3f:                      1
;     sub_c3a4b:                  1
;     c3a55:                      1
;     c3a73:                      1
;     c3a77:                      1
;     sub_c3ad3:                  1
;     c3ad4:                      1
;     l3aec:                      1
;     l3b0f:                      1
;     l3b18:                      1
;     l3b21:                      1
;     l3b29:                      1
;     l3b31:                      1
;     l3b3a:                      1
;     l3b43:                      1
;     c3b50:                      1
;     sub_c3b51:                  1
;     c3b5e:                      1
;     sub_c3b61:                  1
;     c3b63:                      1
;     c3bc2:                      1
;     sub_c3bca:                  1
;     sub_c3bcd:                  1
;     c3bcf:                      1
;     c3be4:                      1
;     c3c00:                      1
;     c3c16:                      1
;     c3c33:                      1
;     c3c38:                      1
;     c3c51:                      1
;     c3c58:                      1
;     c3c5d:                      1
;     c3c6b:                      1
;     c3c8b:                      1
;     c3c90:                      1
;     c3ca8:                      1
;     c3cee:                      1
;     c3d03:                      1
;     c3d12:                      1
;     sub_c3d19:                  1
;     c3d2b:                      1
;     c3d43:                      1
;     c3d57:                      1
;     c3d67:                      1
;     c3d71:                      1
;     c3d72:                      1
;     sub_c3d75:                  1
;     c3d86:                      1
;     c3d89:                      1
;     c3db4:                      1
;     c3dce:                      1
;     c3e07:                      1
;     c3e13:                      1
;     c3e16:                      1
;     c3e28:                      1
;     c3e2a:                      1
;     c3e4d:                      1
;     c3e5c:                      1
;     c3e6f:                      1
;     c3e71:                      1
;     c3e74:                      1
;     c3e8c:                      1
;     sub_c3e94:                  1
;     c3eb3:                      1
;     c3ec2:                      1
;     c3ef1:                      1
;     c3f0d:                      1
;     c3f19:                      1
;     c3f5e:                      1
;     c3f64:                      1
;     c3f6a:                      1
;     c3f6b:                      1
;     c3f6e:                      1
;     sub_c3f7c:                  1
;     sub_c3f82:                  1
;     c3f88:                      1
;     c3fd9:                      1
;     c3ff4:                      1
;     c4005:                      1
;     c4054:                      1
;     c4061:                      1
;     c4075:                      1
;     c40a9:                      1
;     sub_c40b8:                  1
;     sub_c40f6:                  1
;     c411d:                      1
;     c4132:                      1
;     c4143:                      1
;     c416e:                      1
;     c417a:                      1
;     c4183:                      1
;     sub_c4190:                  1
;     c41aa:                      1
;     c41c1:                      1
;     c41cc:                      1
;     c41d2:                      1
;     c427a:                      1
;     c42ab:                      1
;     c430d:                      1
;     c4321:                      1
;     c434a:                      1
;     c4378:                      1
;     c438c:                      1
;     c438e:                      1
;     c43ae:                      1
;     c43bd:                      1
;     sub_c43e4:                  1
;     c43fb:                      1
;     c440c:                      1
;     c445d:                      1
;     c447b:                      1
;     c4487:                      1
;     sub_c44e1:                  1
;     c44fa:                      1
;     c4521:                      1
;     c4538:                      1
;     c4547:                      1
;     c4574:                      1
;     c4595:                      1
;     c45a0:                      1
;     c45c4:                      1
;     c45e2:                      1
;     c45fb:                      1
;     c4605:                      1
;     c463a:                      1
;     c4647:                      1
;     c4652:                      1
;     c465d:                      1
;     sub_c4663:                  1
;     c4675:                      1
;     c468a:                      1
;     c46b3:                      1
;     c46b6:                      1
;     c46bb:                      1
;     c46ce:                      1
;     c46e2:                      1
;     c470a:                      1
;     c4712:                      1
;     c4721:                      1
;     c4728:                      1
;     c473a:                      1
;     sub_c473d:                  1
;     sub_c476c:                  1
;     c476f:                      1
;     sub_c4779:                  1
;     c4787:                      1
;     sub_c4788:                  1
;     c47a4:                      1
;     c47a7:                      1
;     sub_c47c4:                  1
;     sub_c47c5:                  1
;     c47c6:                      1
;     sub_c47ce:                  1
;     c47e0:                      1
;     c47e1:                      1
;     c47f2:                      1
;     c47f7:                      1
;     c4818:                      1
;     c482f:                      1
;     c4856:                      1
;     c48bd:                      1
;     sub_c48be:                  1
;     sub_c48e2:                  1
;     c48fa:                      1
;     c4902:                      1
;     c490c:                      1
;     c4941:                      1
;     c4947:                      1
;     c4953:                      1
;     c495d:                      1
;     c496c:                      1
;     c4970:                      1
;     c4982:                      1
;     c498d:                      1
;     c49ab:                      1
;     c49b8:                      1
;     sub_c49bf:                  1
;     c49e7:                      1
;     c4a01:                      1
;     c4a0a:                      1
;     c4a0d:                      1
;     sub_c4a12:                  1
;     c4a78:                      1
;     c4a7a:                      1
;     c4a86:                      1
;     sub_c4a9a:                  1
;     c4ab7:                      1
;     c4ab8:                      1
;     c4abe:                      1
;     c4ace:                      1
;     sub_c4add:                  1
;     sub_c4aea:                  1
;     c4b09:                      1
;     c4b17:                      1
;     c4b2e:                      1
;     c4b35:                      1
;     c4b3d:                      1
;     c4b6b:                      1
;     c4b7d:                      1
;     c4b80:                      1
;     c4b93:                      1
;     c4ba4:                      1
;     sub_c4ba9:                  1
;     c4bad:                      1
;     c4bcf:                      1
;     c4bf4:                      1
;     c4bfb:                      1
;     c4c28:                      1
;     c4c45:                      1
;     c4c46:                      1
;     sub_c4c47:                  1
;     sub_c4c6a:                  1
;     sub_c4c72:                  1
;     c4cc7:                      1
;     l4cf3:                      1
;     c4d2d:                      1
;     c4d3f:                      1
;     c4d52:                      1
;     c4d61:                      1
;     c4d6e:                      1
;     c4d81:                      1
;     c4d86:                      1
;     c4da2:                      1
;     c4dae:                      1
;     c4dc1:                      1
;     l4ddb:                      1
;     c4ddf:                      1
;     c4df8:                      1
;     c4e06:                      1
;     c4e20:                      1
;     c4e27:                      1
;     c4e32:                      1
;     c4e35:                      1
;     c4e40:                      1
;     c4e45:                      1
;     c4e5b:                      1
;     c4e62:                      1
;     c4e82:                      1
;     sub_c4ea9:                  1
;     c4ed7:                      1
;     c4ef8:                      1
;     c4f13:                      1
;     c4f2d:                      1
;     c4f35:                      1
;     c4f38:                      1
;     c4f4b:                      1
;     c4f54:                      1
;     c4f5d:                      1
;     c4f63:                      1
;     l4f73:                      1
;     c4f79:                      1
;     sub_c4f8d:                  1
;     sub_c4f9a:                  1
;     c4fa1:                      1
;     c4fab:                      1
;     c4fae:                      1
;     c4fbf:                      1
;     c4fdc:                      1
;     c4fdf:                      1
;     c4fea:                      1
;     c4ff3:                      1
;     c4ffd:                      1
;     c5005:                      1
;     c5014:                      1
;     c501f:                      1
;     sub_c5040:                  1
;     c505a:                      1
;     c5070:                      1
;     l5075:                      1
;     l5175:                      1
;     c51b1:                      1
;     c51dd:                      1
;     c51e3:                      1
;     c51ed:                      1
;     c51fc:                      1
;     c520f:                      1
;     c5221:                      1
;     sub_c5234:                  1
;     c523d:                      1
;     c5249:                      1
;     c5260:                      1
;     c5268:                      1
;     c5275:                      1
;     l5283:                      1
;     c52b2:                      1
;     c52b4:                      1
;     c52bd:                      1
;     sub_c52c8:                  1
;     c52d1:                      1
;     c52e1:                      1
;     c52e7:                      1
;     c5305:                      1
;     c5314:                      1
;     c5337:                      1
;     c534f:                      1
;     c5352:                      1
;     c5375:                      1
;     c537f:                      1
;     c5382:                      1
;     c5397:                      1
;     c53ba:                      1
;     c53de:                      1
;     c540e:                      1
;     c544b:                      1
;     c544d:                      1
;     c545a:                      1
;     c5470:                      1
;     c54a8:                      1
;     c54af:                      1
;     c54b4:                      1
;     c54d8:                      1
;     c54df:                      1
;     c54e9:                      1
;     c54ee:                      1
;     c5502:                      1
;     c5534:                      1
;     c555e:                      1
;     c5578:                      1
;     c5597:                      1
;     c55c6:                      1
;     c55d0:                      1
;     c55e6:                      1
;     c55ed:                      1
;     c565e:                      1
;     c56a6:                      1
;     c56b3:                      1
;     c56c2:                      1
;     l56c6:                      1
;     l56ce:                      1
;     c56d2:                      1
;     sub_c56e6:                  1
;     c56eb:                      1
;     c56f5:                      1
;     c5725:                      1
;     c5736:                      1
;     c575a:                      1
;     sub_c5771:                  1
;     l5774:                      1
;     c57ae:                      1
;     c57b2:                      1
;     sub_c57b6:                  1
;     c57be:                      1
;     c57d7:                      1
;     c57dd:                      1
;     c57e8:                      1
;     c57ec:                      1
;     sub_c586f:                  1
;     l587e:                      1
;     sub_c5882:                  1
;     c5898:                      1
;     c58e6:                      1
;     c58f5:                      1
;     c5910:                      1
;     l5924:                      1
;     l5979:                      1
;     l597a:                      1
;     l5980:                      1
;     c5999:                      1
;     c59ae:                      1
;     c59bd:                      1
;     c59cc:                      1
;     c59d1:                      1
;     c59d2:                      1
;     c59d9:                      1
;     c59ee:                      1
;     c59f7:                      1
;     c59f9:                      1
;     c5a15:                      1
;     c5a19:                      1
;     c5a1a:                      1
;     c5a27:                      1
;     c5a28:                      1
;     c5a2e:                      1
;     c5a2f:                      1
;     l5a31:                      1
;     c5a78:                      1
;     c5a8c:                      1
;     c5a94:                      1
;     c5a9e:                      1
;     c5ab0:                      1
;     c5ab1:                      1
;     c5ab8:                      1
;     c5ad0:                      1
;     sub_c5ad2:                  1
;     c5aea:                      1
;     c5b07:                      1
;     c5b33:                      1
;     c5b36:                      1
;     l5b3a:                      1
;     l5b3e:                      1
;     l5b42:                      1
;     c5b4c:                      1
;     c5b6f:                      1
;     c5b89:                      1
;     c5b90:                      1
;     c5ba1:                      1
;     c5bbe:                      1
;     c5bd9:                      1
;     c5be4:                      1
;     c5bf3:                      1
;     c5bfe:                      1
;     c5c2c:                      1
;     c5c54:                      1
;     c5c64:                      1
;     c5c70:                      1
;     c5c78:                      1
;     c5c93:                      1
;     c5cb2:                      1
;     c5cd3:                      1
;     c5cd6:                      1
;     c5ce1:                      1
;     c5cf9:                      1
;     c5d08:                      1
;     c5d0e:                      1
;     c5d1b:                      1
;     c5d2b:                      1
;     c5d40:                      1
;     c5d46:                      1
;     c5d6c:                      1
;     c5d7e:                      1
;     c5d99:                      1
;     c5da3:                      1
;     c5dba:                      1
;     c5dc0:                      1
;     c5dd3:                      1
;     c5ddd:                      1
;     c5e0e:                      1
;     c5e21:                      1
;     c5e31:                      1
;     c5e3c:                      1
;     c5e52:                      1
;     sub_c5e91:                  1
;     c5eab:                      1
;     c5ec8:                      1
;     c5ee0:                      1
;     c5eee:                      1
;     c5f1c:                      1
;     c5f33:                      1
;     c5f46:                      1
;     l5f4f:                      1
;     c5f78:                      1
;     sub_c5f84:                  1
;     c5f8a:                      1
;     c5fa3:                      1
;     c5fb2:                      1
;     nmi_handler_rom_start:      1
;     nmi3_handler_rom_start-1:   1
;     tube_host_code2:            1
;     tube_host_code2+256:        1
;     tube_host_code3:            1
;     tube_host_code1:            1
;     tube_host_r4_data:          1

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
;     c2003
;     c2040
;     c204f
;     c2064
;     c2086
;     c2093
;     c2096
;     c209f
;     c20d0
;     c2103
;     c2111
;     c2115
;     c2125
;     c212e
;     c213a
;     c215b
;     c215d
;     c215f
;     c2161
;     c216b
;     c2184
;     c218a
;     c218c
;     c21a2
;     c21a7
;     c21bd
;     c220c
;     c220d
;     c221c
;     c2225
;     c222a
;     c2243
;     c225d
;     c226f
;     c2286
;     c228b
;     c2290
;     c22be
;     c22c7
;     c22d1
;     c22d9
;     c22e6
;     c22e7
;     c22fb
;     c22fd
;     c2306
;     c230d
;     c2326
;     c2332
;     c2333
;     c2370
;     c2390
;     c2397
;     c23ab
;     c23cd
;     c23e2
;     c23f0
;     c23fa
;     c2406
;     c2425
;     c242b
;     c2436
;     c2438
;     c2453
;     c2454
;     c2463
;     c2477
;     c2481
;     c2482
;     c2493
;     c249d
;     c24e7
;     c2527
;     c253e
;     c2543
;     c2552
;     c255f
;     c2560
;     c2564
;     c2573
;     c257b
;     c259b
;     c25b5
;     c25bc
;     c25c5
;     c2703
;     c2705
;     c2717
;     c2725
;     c2734
;     c273b
;     c2759
;     c2779
;     c277c
;     c27a0
;     c27ab
;     c27b8
;     c27be
;     c27c6
;     c2808
;     c2815
;     c2816
;     c2837
;     c283f
;     c2864
;     c2867
;     c28a6
;     c28bc
;     c28f4
;     c292d
;     c2945
;     c295f
;     c2968
;     c296b
;     c298a
;     c2990
;     c29a5
;     c29ad
;     c29b4
;     c29c4
;     c29ca
;     c29d7
;     c29e2
;     c29f6
;     c2a00
;     c2a17
;     c2a19
;     c2a49
;     c2a50
;     c2a54
;     c2a6e
;     c2a82
;     c2ac8
;     c2ad0
;     c2ad8
;     c2aeb
;     c2af0
;     c2afb
;     c2b18
;     c2b60
;     c2b77
;     c2b80
;     c2b8b
;     c2ba2
;     c2be3
;     c2bea
;     c2bfb
;     c2c12
;     c2c2e
;     c2c3a
;     c2c4e
;     c2c58
;     c2c61
;     c2c71
;     c2c87
;     c2cae
;     c2cb2
;     c2cc1
;     c2cd6
;     c2ce7
;     c2cfc
;     c2d03
;     c2d0d
;     c2d13
;     c2d14
;     c2d17
;     c2d41
;     c2d5d
;     c2d74
;     c2d91
;     c2d92
;     c2dac
;     c2dba
;     c2dd2
;     c2de2
;     c2de9
;     c2df0
;     c2e03
;     c2e0d
;     c2e0e
;     c2e12
;     c2e14
;     c2e32
;     c2e4d
;     c2e53
;     c2e64
;     c2e6f
;     c2e72
;     c2e85
;     c2e9e
;     c2e9f
;     c2ea5
;     c2eaf
;     c2eb7
;     c2ecb
;     c2ecc
;     c2edf
;     c2eeb
;     c2ef8
;     c2f12
;     c2f17
;     c2f21
;     c2f2a
;     c2f3e
;     c2f6c
;     c2f81
;     c2f96
;     c2fac
;     c2fb5
;     c2fc7
;     c3047
;     c3060
;     c3066
;     c30c7
;     c30db
;     c30e7
;     c30fb
;     c3108
;     c3113
;     c3115
;     c31af
;     c31ba
;     c31cc
;     c31df
;     c31e7
;     c31eb
;     c31f3
;     c31f9
;     c3201
;     c320d
;     c3214
;     c321f
;     c322b
;     c3238
;     c323b
;     c323f
;     c3249
;     c3257
;     c325a
;     c326a
;     c3276
;     c3289
;     c329c
;     c32bd
;     c32c4
;     c32c7
;     c32d6
;     c32e3
;     c32ef
;     c3302
;     c3355
;     c3357
;     c3367
;     c336b
;     c336f
;     c3379
;     c3382
;     c338d
;     c3390
;     c33a8
;     c33b1
;     c33bd
;     c33c4
;     c33da
;     c33e2
;     c33e5
;     c33e6
;     c33ff
;     c340c
;     c340e
;     c3436
;     c3444
;     c3450
;     c345c
;     c348d
;     c34a9
;     c34bc
;     c34c1
;     c34c2
;     c34c6
;     c34d4
;     c3504
;     c3535
;     c353a
;     c3556
;     c356d
;     c356f
;     c357d
;     c3593
;     c35b6
;     c35d9
;     c35e4
;     c35e7
;     c35ec
;     c35fd
;     c3618
;     c3628
;     c3649
;     c364a
;     c3658
;     c365a
;     c367a
;     c3682
;     c3683
;     c369e
;     c36b7
;     c36c1
;     c36c2
;     c36c3
;     c36e4
;     c36e9
;     c36ec
;     c36f2
;     c36f5
;     c3700
;     c3714
;     c3736
;     c3738
;     c373c
;     c373d
;     c375b
;     c376c
;     c379d
;     c37b3
;     c37c8
;     c37e6
;     c3803
;     c381f
;     c382e
;     c3835
;     c3837
;     c384c
;     c3851
;     c3859
;     c385e
;     c386b
;     c3873
;     c3881
;     c38a0
;     c38b1
;     c38ba
;     c38c1
;     c38cd
;     c38e4
;     c38ed
;     c38f0
;     c393b
;     c3942
;     c394b
;     c394e
;     c3964
;     c396e
;     c3978
;     c3993
;     c39a3
;     c39a8
;     c39ea
;     c39ed
;     c3a2a
;     c3a3f
;     c3a55
;     c3a73
;     c3a77
;     c3a8c
;     c3ad4
;     c3adf
;     c3ae9
;     c3b50
;     c3b5e
;     c3b63
;     c3b6e
;     c3bc2
;     c3bc5
;     c3bcf
;     c3be4
;     c3c00
;     c3c16
;     c3c33
;     c3c38
;     c3c51
;     c3c58
;     c3c5d
;     c3c6b
;     c3c82
;     c3c8b
;     c3c90
;     c3ca8
;     c3cee
;     c3d03
;     c3d12
;     c3d2b
;     c3d43
;     c3d57
;     c3d5d
;     c3d67
;     c3d71
;     c3d72
;     c3d86
;     c3d89
;     c3db4
;     c3dcd
;     c3dce
;     c3dd5
;     c3e07
;     c3e13
;     c3e16
;     c3e28
;     c3e2a
;     c3e41
;     c3e4d
;     c3e5c
;     c3e6f
;     c3e71
;     c3e74
;     c3e8c
;     c3eb3
;     c3ec2
;     c3ef1
;     c3f0d
;     c3f19
;     c3f5e
;     c3f64
;     c3f6a
;     c3f6b
;     c3f6e
;     c3f88
;     c3fd9
;     c3ff4
;     c4005
;     c401d
;     c4021
;     c4054
;     c4061
;     c406b
;     c406c
;     c4075
;     c40a9
;     c40f5
;     c410b
;     c411d
;     c4132
;     c4143
;     c414f
;     c416e
;     c417a
;     c4183
;     c419f
;     c41aa
;     c41c0
;     c41c1
;     c41cc
;     c41d2
;     c427a
;     c42ab
;     c42f2
;     c430d
;     c4321
;     c434a
;     c4378
;     c438b
;     c438c
;     c438e
;     c43ae
;     c43bd
;     c43dc
;     c43fb
;     c440c
;     c4411
;     c4414
;     c445d
;     c447b
;     c4487
;     c44fa
;     c4521
;     c4538
;     c4547
;     c4574
;     c4595
;     c45a0
;     c45ab
;     c45c4
;     c45e2
;     c45e5
;     c45fb
;     c4605
;     c4637
;     c463a
;     c4647
;     c4652
;     c465d
;     c4660
;     c4675
;     c468a
;     c46b3
;     c46b6
;     c46bb
;     c46ce
;     c46e2
;     c470a
;     c4712
;     c4721
;     c4728
;     c473a
;     c476f
;     c4787
;     c47a4
;     c47a7
;     c47c6
;     c47e0
;     c47e1
;     c47f2
;     c47f7
;     c4818
;     c482f
;     c4845
;     c4856
;     c486b
;     c487a
;     c48bd
;     c48fa
;     c4902
;     c490c
;     c4941
;     c4947
;     c4953
;     c495d
;     c496c
;     c4970
;     c497d
;     c4982
;     c498d
;     c49ab
;     c49b8
;     c49e7
;     c49ff
;     c4a01
;     c4a0a
;     c4a0d
;     c4a1c
;     c4a42
;     c4a44
;     c4a51
;     c4a78
;     c4a7a
;     c4a86
;     c4ab7
;     c4ab8
;     c4abe
;     c4ace
;     c4b09
;     c4b17
;     c4b1a
;     c4b2e
;     c4b35
;     c4b3d
;     c4b41
;     c4b54
;     c4b6b
;     c4b7d
;     c4b80
;     c4b93
;     c4ba4
;     c4bad
;     c4bbc
;     c4bcf
;     c4bf4
;     c4bfb
;     c4c0f
;     c4c28
;     c4c45
;     c4c46
;     c4cc4
;     c4cc7
;     c4d15
;     c4d2d
;     c4d3f
;     c4d52
;     c4d61
;     c4d6e
;     c4d77
;     c4d79
;     c4d81
;     c4d86
;     c4da2
;     c4dae
;     c4dc1
;     c4dd7
;     c4ddf
;     c4df8
;     c4e06
;     c4e11
;     c4e20
;     c4e27
;     c4e32
;     c4e35
;     c4e40
;     c4e45
;     c4e5b
;     c4e62
;     c4e70
;     c4e79
;     c4e82
;     c4e97
;     c4ea0
;     c4ed3
;     c4ed7
;     c4ee8
;     c4ef8
;     c4f13
;     c4f2d
;     c4f35
;     c4f37
;     c4f38
;     c4f4b
;     c4f54
;     c4f58
;     c4f5d
;     c4f63
;     c4f79
;     c4f7f
;     c4fa1
;     c4fab
;     c4fad
;     c4fae
;     c4fbf
;     c4fdc
;     c4fdf
;     c4fea
;     c4ff3
;     c4ffb
;     c4ffd
;     c5005
;     c500a
;     c5014
;     c501f
;     c5035
;     c505a
;     c5070
;     c51b1
;     c51d5
;     c51dd
;     c51e3
;     c51ed
;     c51fc
;     c5203
;     c520f
;     c5221
;     c523d
;     c5249
;     c5260
;     c5268
;     c5275
;     c5280
;     c5297
;     c52a0
;     c52b2
;     c52b4
;     c52bd
;     c52d1
;     c52e1
;     c52e7
;     c5300
;     c5305
;     c5314
;     c5337
;     c534f
;     c5352
;     c5371
;     c5375
;     c537f
;     c5382
;     c5397
;     c53ba
;     c53de
;     c5406
;     c540e
;     c5446
;     c544b
;     c544d
;     c545a
;     c545e
;     c5470
;     c54a8
;     c54af
;     c54b4
;     c54d8
;     c54df
;     c54e9
;     c54ee
;     c5502
;     c5534
;     c555e
;     c5578
;     c5597
;     c55c6
;     c55d0
;     c55e6
;     c55ed
;     c5655
;     c565e
;     c5684
;     c568c
;     c56a6
;     c56b3
;     c56c2
;     c56ca
;     c56d2
;     c56eb
;     c56f5
;     c5718
;     c5725
;     c5736
;     c575a
;     c5795
;     c57ae
;     c57b2
;     c57be
;     c57d7
;     c57dd
;     c57e8
;     c57ec
;     c57ed
;     c582b
;     c5898
;     c58e4
;     c58e6
;     c58f5
;     c58fb
;     c5910
;     c5999
;     c59ae
;     c59bd
;     c59cc
;     c59d1
;     c59d2
;     c59d9
;     c59e8
;     c59ee
;     c59f7
;     c59f9
;     c5a10
;     c5a15
;     c5a19
;     c5a1a
;     c5a27
;     c5a28
;     c5a2e
;     c5a2f
;     c5a78
;     c5a8c
;     c5a94
;     c5a9e
;     c5ab0
;     c5ab1
;     c5ab4
;     c5ab8
;     c5ad0
;     c5aea
;     c5af8
;     c5afd
;     c5b07
;     c5b28
;     c5b2a
;     c5b33
;     c5b36
;     c5b4c
;     c5b6f
;     c5b89
;     c5b90
;     c5ba1
;     c5bbe
;     c5bd0
;     c5bd9
;     c5be4
;     c5bf3
;     c5bfe
;     c5c13
;     c5c2c
;     c5c3a
;     c5c54
;     c5c64
;     c5c70
;     c5c78
;     c5c93
;     c5cb2
;     c5cb9
;     c5cd3
;     c5cd6
;     c5ce1
;     c5cf9
;     c5d08
;     c5d0e
;     c5d1b
;     c5d2b
;     c5d40
;     c5d46
;     c5d6c
;     c5d7e
;     c5d99
;     c5da3
;     c5db9
;     c5dba
;     c5dc0
;     c5dd3
;     c5ddd
;     c5e0e
;     c5e21
;     c5e31
;     c5e3c
;     c5e47
;     c5e52
;     c5e7a
;     c5e7b
;     c5e89
;     c5e8d
;     c5eab
;     c5ec1
;     c5ec8
;     c5edd
;     c5ee0
;     c5ee8
;     c5eee
;     c5f1c
;     c5f33
;     c5f46
;     c5f78
;     c5f8a
;     c5f8e
;     c5fa3
;     c5fb2
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
;     caed3
;     caed7
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
;     l0057
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
;     l04fc
;     l0500
;     l0600
;     l06ce
;     l0700
;     l0cff
;     l0d00
;     l0d0f
;     l0d12
;     l0d1f
;     l0d26
;     l0d2a
;     l0d30
;     l0d3d
;     l0d47
;     l0d50
;     l0d94
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
;     l2001
;     l2002
;     l2004
;     l2006
;     l2007
;     l25d3
;     l261c
;     l261d
;     l311d
;     l3121
;     l312d
;     l3139
;     l313f
;     l3145
;     l3146
;     l3191
;     l31a0
;     l3aec
;     l3b0f
;     l3b18
;     l3b21
;     l3b29
;     l3b31
;     l3b3a
;     l3b43
;     l41d3
;     l4cdb
;     l4cf3
;     l4ddb
;     l4f73
;     l4f75
;     l4f76
;     l4f77
;     l4f78
;     l5075
;     l5175
;     l5283
;     l557f
;     l56c6
;     l56ce
;     l5726
;     l5774
;     l5872
;     l587e
;     l5924
;     l5979
;     l597a
;     l5980
;     l5a30
;     l5a31
;     l5b3a
;     l5b3e
;     l5b42
;     l5f4f
;     l5fff
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
;     lc000
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
;     sub_c0d5e
;     sub_c2020
;     sub_c2023
;     sub_c202e
;     sub_c2038
;     sub_c2048
;     sub_c2077
;     sub_c209a
;     sub_c209d
;     sub_c20b8
;     sub_c20bb
;     sub_c20c3
;     sub_c20c8
;     sub_c20d3
;     sub_c20db
;     sub_c20e3
;     sub_c20e6
;     sub_c20ed
;     sub_c20f3
;     sub_c20f6
;     sub_c2149
;     sub_c2174
;     sub_c21ae
;     sub_c21b0
;     sub_c21b7
;     sub_c21be
;     sub_c21bf
;     sub_c21c0
;     sub_c21c4
;     sub_c21c5
;     sub_c21ca
;     sub_c221d
;     sub_c2222
;     sub_c2266
;     sub_c226d
;     sub_c2280
;     sub_c2284
;     sub_c22b2
;     sub_c22bb
;     sub_c22e8
;     sub_c22fe
;     sub_c230a
;     sub_c2327
;     sub_c2335
;     sub_c233a
;     sub_c236e
;     sub_c2380
;     sub_c2386
;     sub_c23bf
;     sub_c23d1
;     sub_c23d4
;     sub_c23dc
;     sub_c23e3
;     sub_c23ee
;     sub_c240c
;     sub_c241b
;     sub_c242c
;     sub_c2439
;     sub_c2456
;     sub_c2555
;     sub_c25e3
;     sub_c2602
;     sub_c2745
;     sub_c274c
;     sub_c27da
;     sub_c27db
;     sub_c27e3
;     sub_c2826
;     sub_c2855
;     sub_c2862
;     sub_c2932
;     sub_c2951
;     sub_c2979
;     sub_c29da
;     sub_c2a77
;     sub_c2ab3
;     sub_c2b25
;     sub_c2b4d
;     sub_c2b64
;     sub_c2b7b
;     sub_c2b86
;     sub_c2bf6
;     sub_c2bf9
;     sub_c2c56
;     sub_c2c65
;     sub_c2d1a
;     sub_c2dc6
;     sub_c2eec
;     sub_c2efa
;     sub_c2eff
;     sub_c2f33
;     sub_c2f37
;     sub_c2f3f
;     sub_c2f4f
;     sub_c2f5e
;     sub_c2f6b
;     sub_c2f75
;     sub_c2f7a
;     sub_c2f82
;     sub_c2f94
;     sub_c2fd2
;     sub_c3030
;     sub_c303e
;     sub_c3067
;     sub_c3104
;     sub_c3279
;     sub_c328a
;     sub_c329d
;     sub_c33b4
;     sub_c33c5
;     sub_c33d3
;     sub_c33d8
;     sub_c33f1
;     sub_c33f5
;     sub_c33f9
;     sub_c33fd
;     sub_c3432
;     sub_c3445
;     sub_c3516
;     sub_c3526
;     sub_c352e
;     sub_c3536
;     sub_c365d
;     sub_c37e8
;     sub_c3832
;     sub_c392c
;     sub_c3940
;     sub_c394c
;     sub_c395a
;     sub_c3965
;     sub_c3988
;     sub_c39ac
;     sub_c39f3
;     sub_c3a0f
;     sub_c3a32
;     sub_c3a4b
;     sub_c3a50
;     sub_c3a60
;     sub_c3a63
;     sub_c3a6e
;     sub_c3a78
;     sub_c3a82
;     sub_c3a8d
;     sub_c3aa3
;     sub_c3ab8
;     sub_c3ac8
;     sub_c3ad3
;     sub_c3ad8
;     sub_c3ae5
;     sub_c3b51
;     sub_c3b61
;     sub_c3b79
;     sub_c3bca
;     sub_c3bcd
;     sub_c3be5
;     sub_c3bf2
;     sub_c3d19
;     sub_c3d1e
;     sub_c3d75
;     sub_c3d8e
;     sub_c3df4
;     sub_c3e1e
;     sub_c3e30
;     sub_c3e54
;     sub_c3e75
;     sub_c3e94
;     sub_c3ef4
;     sub_c3f0f
;     sub_c3f14
;     sub_c3f16
;     sub_c3f1e
;     sub_c3f26
;     sub_c3f7c
;     sub_c3f82
;     sub_c40b8
;     sub_c40de
;     sub_c40f6
;     sub_c414a
;     sub_c4168
;     sub_c4190
;     sub_c41b4
;     sub_c41c6
;     sub_c4315
;     sub_c4324
;     sub_c4379
;     sub_c4384
;     sub_c43e4
;     sub_c43ec
;     sub_c44e1
;     sub_c451f
;     sub_c4530
;     sub_c45b2
;     sub_c4663
;     sub_c473d
;     sub_c476c
;     sub_c4779
;     sub_c4788
;     sub_c47c4
;     sub_c47c5
;     sub_c47ce
;     sub_c48be
;     sub_c48e2
;     sub_c490d
;     sub_c499c
;     sub_c49bf
;     sub_c49c2
;     sub_c49ca
;     sub_c4a12
;     sub_c4a53
;     sub_c4a9a
;     sub_c4ac2
;     sub_c4acf
;     sub_c4add
;     sub_c4aea
;     sub_c4af1
;     sub_c4ba9
;     sub_c4c0c
;     sub_c4c18
;     sub_c4c47
;     sub_c4c4e
;     sub_c4c62
;     sub_c4c6a
;     sub_c4c72
;     sub_c4d5d
;     sub_c4ea9
;     sub_c4f8d
;     sub_c4f9a
;     sub_c5040
;     sub_c5047
;     sub_c5234
;     sub_c52c8
;     sub_c5580
;     sub_c558b
;     sub_c5598
;     sub_c55ce
;     sub_c55ee
;     sub_c55f2
;     sub_c5607
;     sub_c5616
;     sub_c561e
;     sub_c565f
;     sub_c568f
;     sub_c56b1
;     sub_c56e6
;     sub_c56fe
;     sub_c5745
;     sub_c5771
;     sub_c57b6
;     sub_c583f
;     sub_c5841
;     sub_c584e
;     sub_c5850
;     sub_c585d
;     sub_c586f
;     sub_c5882
;     sub_c5986
;     sub_c59f5
;     sub_c5a67
;     sub_c5ab9
;     sub_c5ac2
;     sub_c5ac4
;     sub_c5ad2
;     sub_c5b00
;     sub_c5c68
;     sub_c5e83
;     sub_c5e91
;     sub_c5e9d
;     sub_c5ec2
;     sub_c5f7c
;     sub_c5f82
;     sub_c5f84
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
    assert <(c956d-1) == &6c
    assert <(c956d-1) == &6c
    assert <(l0128) == &28
    assert <(l1000) == &00
    assert <(sub_c8238-1) == &37
    assert <(sub_c8254-1) == &53
    assert <(sub_c8750-1) == &4f
    assert <(sub_c8782-1) == &81
    assert <(sub_c8794-1) == &93
    assert <(sub_c87ee-1) == &ed
    assert <(sub_c893f-1) == &3e
    assert <(sub_c8943-1) == &42
    assert <(sub_c89b7-1) == &b6
    assert <(sub_c89e6-1) == &e5
    assert <(sub_c8b47-1) == &46
    assert <(sub_c8bac-1) == &ab
    assert <(sub_c9b59-1) == &58
    assert <(sub_ca106-1) == &05
    assert <(sub_ca137-1) == &36
    assert <(sub_ca244-1) == &43
    assert <(sub_ca417-1) == &16
    assert <(sub_ca463-1) == &62
    assert <(sub_ca5bb-1) == &ba
    assert <(sub_ca5bf-1) == &be
    assert <(sub_ca7f3-1) == &f2
    assert <(sub_ca7f6-1) == &f5
    assert <(sub_ca9d0-1) == &cf
    assert <(sub_caafd-1) == &fc
    assert <(sub_cab04-1) == &03
    assert <(sub_cab46-1) == &45
    assert <(sub_cabc5-1) == &c4
    assert <(sub_cbb46-1) == &45
    assert <(sub_cbb4a-1) == &49
    assert <(sub_cbbd3-1) == &d2
    assert <(sub_cbbd7-1) == &d6
    assert <(sub_cbc37-1) == &36
    assert <(sub_cbc81-1) == &80
    assert <tube_brkv_handler == &16
    assert <tube_evntv_handler == &ad
    assert >(c956d-1) == &95
    assert >(c956d-1) == &95
    assert >(l0128) == &01
    assert >(l1000) == &10
    assert >(sub_c8238-1) == &82
    assert >(sub_c8254-1) == &82
    assert >(sub_c8750-1) == &87
    assert >(sub_c8782-1) == &87
    assert >(sub_c8794-1) == &87
    assert >(sub_c87ee-1) == &87
    assert >(sub_c893f-1) == &89
    assert >(sub_c8943-1) == &89
    assert >(sub_c89b7-1) == &89
    assert >(sub_c89e6-1) == &89
    assert >(sub_c8b47-1) == &8b
    assert >(sub_c8bac-1) == &8b
    assert >(sub_c9b59-1) == &9b
    assert >(sub_ca106-1) == &a1
    assert >(sub_ca137-1) == &a1
    assert >(sub_ca244-1) == &a2
    assert >(sub_ca417-1) == &a4
    assert >(sub_ca463-1) == &a4
    assert >(sub_ca5bb-1) == &a5
    assert >(sub_ca5bf-1) == &a5
    assert >(sub_ca7f3-1) == &a7
    assert >(sub_ca7f6-1) == &a7
    assert >(sub_ca9d0-1) == &a9
    assert >(sub_caafd-1) == &aa
    assert >(sub_cab04-1) == &ab
    assert >(sub_cab46-1) == &ab
    assert >(sub_cabc5-1) == &ab
    assert >(sub_cbb46-1) == &bb
    assert >(sub_cbb4a-1) == &bb
    assert >(sub_cbbd3-1) == &bb
    assert >(sub_cbbd7-1) == &bb
    assert >(sub_cbc37-1) == &bc
    assert >(sub_cbc81-1) == &bc
    assert >tube_brkv_handler == &00
    assert >tube_evntv_handler == &06
    assert copyright - rom_header == &11
    assert jump_address_low == &51
    assert nmi3_handler_rom_end-nmi3_handler_rom_start == &0e
    assert nmi_XXX1-(nmi_beq+2) == &48
    assert nmi_XXX10-(nmi_bcs+2) == &32
    assert nmi_XXX11-(nmi_bcs+2) == &3b
    assert nmi_XXX12-(nmi_bcs+2) == &3f
    assert nmi_XXX13-(nmi_bcs+2) == &49
    assert nmi_XXX14-(nmi_bcs+2) == &4d
    assert nmi_XXX15-(nmi_bcs+2) == &55
    assert nmi_XXX16-(nmi_bcs+2) == &5d
    assert nmi_XXX17-(nmi_bcs+2) == &06
    assert nmi_XXX18-(nmi_bcs+2) == &11
    assert nmi_XXX19-(nmi_bcs+2) == &7b
    assert nmi_XXX2-(nmi_beq+2) == &2f
    assert nmi_XXX2-1 == &0d38
    assert nmi_XXX20-(nmi_bcs+2) == &7f
    assert nmi_XXX21-(nmi_bcs+2) == &26
    assert nmi_XXX22-(nmi_bcs+2) == &77
    assert nmi_XXX23-(nmi_bcs+2) == &24
    assert nmi_XXX5-(nmi_cmp_imm_or_bcs+2) == &06
    assert nmi_XXX7-(nmi_XXX6+2) == &06
    assert nmi_XXX8-(nmi_beq+2) == &4d
    assert nmi_handler2_rom_end-nmi_handler2_rom_start == &94
    assert nmi_handler_rom_end-nmi_handler_rom_start-1 == &5d
    assert opcode_bcs == &b0
    assert opcode_rti == &40
    assert osbyte_close_spool_exec == &77
    assert osbyte_explode_chars == &14
    assert osbyte_issue_service_request == &8f
    assert osbyte_read_himem == &84
    assert osbyte_read_oshwm == &83
    assert osbyte_read_rom_info_table_low == &aa
    assert osbyte_read_tube_presence == &ea
    assert osbyte_read_write_spool_file_handle == &c7
    assert osbyte_read_write_startup_options == &ff
    assert osbyte_rw_exec_handle == &c6
    assert osbyte_scan_keyboard_from_16 == &7a
    assert osbyte_write_keys_pressed == &78
    assert osfile_load == &ff
    assert osfile_read_catalogue_info == &05
    assert osfile_save == &00
    assert service_absolute_workspace_claimed == &0a
    assert service_boot == &03
    assert service_check_swr_presence == &2b
    assert service_claim_absolute_workspace == &01
    assert service_claim_private_workspace == &02
    assert service_help == &09
    assert service_select_filing_system == &12
    assert service_tube_post_init == &fe
    assert service_unrecognised_command == &04
    assert service_unrecognised_osword == &08
    assert sub_c0520 == &0520
    assert sub_c052d == &052d
    assert sub_c0537 == &0537
    assert sub_c0542 == &0542
    assert sub_c055e == &055e
    assert sub_c0596 == &0596
    assert sub_c05a9 == &05a9
    assert sub_c05d1 == &05d1
    assert sub_c05f2 == &05f2
    assert sub_c0607 == &0607
    assert sub_c0627 == &0627
    assert sub_c9785 == &9785
    assert sub_c97b6 == &97b6
    assert sub_c97c9 == &97c9
    assert sub_c9c0c == &9c0c
    assert sub_c9d9b == &9d9b
    assert sub_c9e94 == &9e94
    assert sub_c9f82 == &9f82
    assert tube_brkv_handler_fwd == &16
    assert tube_host_osword_0 == &0668

save pydis_start, pydis_end
