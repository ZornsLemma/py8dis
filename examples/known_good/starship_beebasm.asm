; Constants
inkey_key_delete                        = 166
osbyte_acknowledge_escape               = 126
osbyte_flush_buffer_class               = 15
osbyte_inkey                            = 129
osbyte_read_adc_or_get_buffer_status    = 128
osbyte_select_adc_channels              = 16
osbyte_set_cursor_editing               = 4
osword_envelope                         = 8
osword_read_line                        = 0
osword_sound                            = 7

; Memory locations
l0070   = &0070
l0071   = &0071
l0072   = &0072
l0073   = &0073
l0074   = &0074
l0075   = &0075
l0076   = &0076
l0077   = &0077
l0078   = &0078
l0079   = &0079
l007a   = &007a
l007b   = &007b
l007c   = &007c
l0080   = &0080
l0081   = &0081
l0082   = &0082
l0083   = &0083
l0084   = &0084
l0085   = &0085
l0086   = &0086
l0087   = &0087
l0088   = &0088
l0400   = &0400
l0401   = &0401
l0402   = &0402
l0403   = &0403
l0404   = &0404
l0405   = &0405
l0406   = &0406
l0407   = &0407
l0408   = &0408
l0409   = &0409
l040a   = &040a
l0480   = &0480
l0481   = &0481
l0482   = &0482
l0483   = &0483
l0484   = &0484
l0485   = &0485
l0486   = &0486
l0487   = &0487
l0488   = &0488
l0489   = &0489
l048a   = &048a
l0c00   = &0c00
l0c10   = &0c10
l0e00   = &0e00
l593f   = &593f
l6b38   = &6b38
l6c78   = &6c78
l6e48   = &6e48
oswrch  = &ffee
osword  = &fff1
osbyte  = &fff4

    org &1f00

.pydis_start

; Move 1: &1f00 to &0e00 for length 17073
    org &0e00
    equb &0d, &ff                                                     ; 1f00: 0d ff       ..  :0e00[1]
    equs "STARSHIP COMMAND 1.21 Copyright (c) 1982"                   ; 1f02: 53 54 41... STA :0e02[1]
    equb &0d, &50, &54                                                ; 1f2a: 0d 50 54    .PT :0e2a[1]
; &1f2d referenced 5 times by &173b[1], &1745[1], &3847[1], &3880[1], &388e[1]
.l0e2d
    equb 0                                                            ; 1f2d: 00          .   :0e2d[1]
; &1f2e referenced 4 times by &16fd[1], &1716[1], &171b[1], &173e[1]
.l0e2e
    equb 1                                                            ; 1f2e: 01          .   :0e2e[1]
; &1f2f referenced 3 times by &172c[1], &1736[1], &1760[1]
.l0e2f
    equb 1                                                            ; 1f2f: 01          .   :0e2f[1]
; &1f30 referenced 1 time by &1834[1]
.l0e30
    equb &c0                                                          ; 1f30: c0          .   :0e30[1]
; &1f31 referenced 2 times by &1898[1], &27e8[1]
.l0e31
    equb &20                                                          ; 1f31: 20              :0e31[1]
; &1f32 referenced 3 times by &14ae[1], &14ce[1], &3554[1]
.l0e32
    equb &c4                                                          ; 1f32: c4          .   :0e32[1]
; &1f33 referenced 7 times by &14a6[1], &14bb[1], &14c8[1], &150a[1], &1640[1], &2925[1], &3539[1]
.l0e33
    equb &ff                                                          ; 1f33: ff          .   :0e33[1]
; &1f34 referenced 1 time by &15ee[1]
.l0e34
    equb &10                                                          ; 1f34: 10          .   :0e34[1]
; &1f35 referenced 1 time by &1f7b[1]
.l0e35
    equb 8                                                            ; 1f35: 08          .   :0e35[1]
; &1f36 referenced 1 time by &38f3[1]
.l0e36
    equb &20                                                          ; 1f36: 20              :0e36[1]
; &1f37 referenced 5 times by &15dc[1], &17f1[1], &188d[1], &1fb7[1], &20b3[1]
.l0e37
    equb &1b                                                          ; 1f37: 1b          .   :0e37[1]
; &1f38 referenced 1 time by &20b8[1]
.l0e38
    equb &23                                                          ; 1f38: 23          #   :0e38[1]
; &1f39 referenced 1 time by &1f65[1]
.l0e39
    equb &25                                                          ; 1f39: 25          %   :0e39[1]
; &1f3a referenced 2 times by &15c0[1], &15cf[1]
.l0e3a
    equb 5                                                            ; 1f3a: 05          .   :0e3a[1]
; &1f3b referenced 3 times by &186a[1], &187d[1], &285c[1]
.l0e3b
    equb 8, &4d                                                       ; 1f3b: 08 4d       .M  :0e3b[1]
; &1f3d referenced 2 times by &14dd[1], &3660[1]
.l0e3d
    equb &b4                                                          ; 1f3d: b4          .   :0e3d[1]
; &1f3e referenced 2 times by &14e2[1], &3665[1]
.l0e3e
    equs "O7_"                                                        ; 1f3e: 4f 37 5f    O7_ :0e3e[1]
; &1f41 referenced 2 times by &0f41[1], &0f8d[1]
.l0e41
    equb &80, &40, &20, &10, 8, 4, 2, 1                               ; 1f41: 80 40 20... .@  :0e41[1]
; &1f49 referenced 4 times by &13d0[1], &1d24[1], &1d58[1], &47b1[1]
.l0e49
    equb 0                                                            ; 1f49: 00          .   :0e49[1]
; &1f4a referenced 4 times by &13d5[1], &1d29[1], &1d5d[1], &47b6[1]
.l0e4a
    equb &4b                                                          ; 1f4a: 4b          K   :0e4a[1]
; &1f4b referenced 2 times by &121f[1], &1305[1]
.l0e4b
    equb 0                                                            ; 1f4b: 00          .   :0e4b[1]
; &1f4c referenced 2 times by &1224[1], &130a[1]
.l0e4c
    equb &4f                                                          ; 1f4c: 4f          O   :0e4c[1]
; &1f4d referenced 1 time by &1229[1]
.l0e4d
    equb 4                                                            ; 1f4d: 04          .   :0e4d[1]
; &1f4e referenced 1 time by &122e[1]
.l0e4e
    equb &4f                                                          ; 1f4e: 4f          O   :0e4e[1]
; &1f4f referenced 11 times by &15a9[1], &1631[1], &16f2[1], &17d8[1], &1ba1[1], &1f6b[1], &266c[1], &2965[1], &301b[1], &3614[1], &366a[1]
.l0e4f
    equb 8                                                            ; 1f4f: 08          .   :0e4f[1]
; &1f50 referenced 7 times by &13da[1], &1d2e[1], &1d62[1], &380c[1], &4662[1], &466e[1], &4813[1]
.l0e50
    equb &11                                                          ; 1f50: 11          .   :0e50[1]
; &1f51 referenced 2 times by &1219[1], &12fa[1]
.l0e51
    equb &0c                                                          ; 1f51: 0c          .   :0e51[1]
; &1f52 referenced 2 times by &14d7[1], &365a[1]
.l0e52
    equb &18                                                          ; 1f52: 18          .   :0e52[1]
; &1f53 referenced 1 time by &1323[1]
.l0e53
    equb &0f                                                          ; 1f53: 0f          .   :0e53[1]
; &1f54 referenced 39 times by &13dd[1], &1402[1], &15ac[1], &160a[1], &1634[1], &16e6[1], &16f5[1], &1705[1], &1793[1], &17db[1], &1846[1], &18a4[1], &18ab[1], &18b2[1], &18db[1], &1ba4[1], &1bb3[1], &1d31[1], &1d4e[1], &1d65[1], &1d84[1], &1dbc[1], &1dcd[1], &1dfd[1], &1e36[1], &1e4b[1], &1f16[1], &1f27[1], &1f83[1], &266f[1], &26c4[1], &2969[1], &301e[1], &313a[1], &33d7[1], &3617[1], &3629[1], &366d[1], &3725[1]
.l0e54
    equb 0                                                            ; 1f54: 00          .   :0e54[1]
; &1f55 referenced 8 times by &121c[1], &12ee[1], &14da[1], &1594[1], &184a[1], &18a8[1], &18cc[1], &365d[1]
.l0e55
    equb 0                                                            ; 1f55: 00          .   :0e55[1]
; &1f56 referenced 14 times by &1408[1], &140f[1], &142b[1], &1432[1], &1aa6[1], &1bb8[1], &1bc0[1], &30a5[1], &317c[1], &3186[1], &318c[1], &322a[1], &3858[1], &38a7[1]
.l0e56
    equb 1, &3a                                                       ; 1f56: 01 3a       .:  :0e56[1]
; &1f58 referenced 7 times by &1529[1], &1654[1], &1c23[1], &1c4d[1], &1e51[1], &2035[1], &292f[1]
.l0e58
    equb   0,   1,   2,   3,   4,   5,   5,   6,   6,   6,   5,   5   ; 1f58: 00 01 02... ... :0e58[1]
    equb   4,   3,   2,   1,   0, &ff, &fe, &fd, &fc, &fb, &fb, &fa   ; 1f64: 04 03 02... ... :0e64[1]
    equb &fa, &fa, &fb, &fb, &fc, &fd, &fe, &ff                       ; 1f70: fa fa fb... ... :0e70[1]
; &1f78 referenced 7 times by &1514[1], &1659[1], &1c31[1], &1c56[1], &1e5d[1], &2041[1], &2939[1]
.l0e78
    equb &fa, &fa, &fb, &fb, &fc, &fd, &fe, &ff, 0, 1, 2, 3,   4      ; 1f78: fa fa fb... ... :0e78[1]
    equb   5,   5,   6,   6,   6,   5,   5,   4, 3, 2, 1, 0, &ff      ; 1f85: 05 05 06... ... :0e85[1]
    equb &fe, &fd, &fc, &fb, &fb, &fa                                 ; 1f92: fe fd fc... ... :0e92[1]
; &1f98 referenced 1 time by &18e9[1]
.l0e98
    equb 3, &0f, 3, &0f, &0f, &0c, &0f, &0c, &0c, &0d, &0c, &0d, &0d  ; 1f98: 03 0f 03... ... :0e98[1]
    equb 1, &0d, 1,   1,   5,   1,   5,   5,   4,   5,   4,   4,   7  ; 1fa5: 01 0d 01... ... :0ea5[1]
    equb 4,   7, 7,   3,   7,   3,   0, &ff, &ff, &ff, &ff, &ff       ; 1fb2: 04 07 07... ... :0eb2[1]
; &1fbe referenced 1 time by &1a35[1]
.l0ebe
    equb 0, &fe, &f8, &ee, &e0, &ce                                   ; 1fbe: 00 fe f8... ... :0ebe[1]
; &1fc4 referenced 1 time by &1a2f[1]
.l0ec4
    equb 0, 2, 4, 6, 8, &0a, 0, 0, 0, 0, 0, 0                         ; 1fc4: 00 02 04... ... :0ec4[1]
; &1fd0 referenced 1 time by &103e[1]
.l0ed0
    equb 0, &ff, &fc, &f7, &f0, &e7                                   ; 1fd0: 00 ff fc... ... :0ed0[1]
; &1fd6 referenced 2 times by &1046[1], &1193[1]
.l0ed6
    equb 0, 0, 1, 2, 3, 4                                             ; 1fd6: 00 00 01... ... :0ed6[1]
; &1fdc referenced 1 time by &1062[1]
.l0edc
    equb 0, 1, 4, 9, &10, &19                                         ; 1fdc: 00 01 04... ... :0edc[1]
; &1fe2 referenced 2 times by &106a[1], &11c9[1]
.l0ee2
    equb 0, 1, 2, 3, 4, 5                                             ; 1fe2: 00 01 02... ... :0ee2[1]
; &1fe8 referenced 1 time by &1183[1]
.l0ee8
    equb 0, &fe, &ff, &fc, &fa, &f6                                   ; 1fe8: 00 fe ff... ... :0ee8[1]
; &1fee referenced 1 time by &118b[1]
.l0eee
    equb 0, &fe, &fb, &f6, &ef, &e6                                   ; 1fee: 00 fe fb... ... :0eee[1]
; &1ff4 referenced 1 time by &11b9[1]
.l0ef4
    equb 1, 0, 2, 0, &ff, &fe                                         ; 1ff4: 01 00 02... ... :0ef4[1]
; &1ffa referenced 1 time by &11c1[1]
.l0efa
    equb 0, 1, 4, 9, &0f, &18                                         ; 1ffa: 00 01 04... ... :0efa[1]
; &2000 referenced 14 times by &107b[1], &11fe[1], &1989[1], &198c[1], &1997[1], &19b1[1], &19bb[1], &24d5[1], &2f4c[1], &3547[1], &38a4[1], &38dc[1], &4818[1], &4916[1]
.l0f00
    equb 0                                                            ; 2000: 00          .   :0f00[1]
; &2001 referenced 14 times by &1073[1], &11f5[1], &1981[1], &1984[1], &199c[1], &19a6[1], &19ac[1], &19b8[1], &24cb[1], &2f47[1], &352d[1], &38e1[1], &481b[1], &491b[1]
.l0f01
    equb 0                                                            ; 2001: 00          .   :0f01[1]
; &2002 referenced 15 times by &0feb[1], &104b[1], &1122[1], &1199[1], &14b1[1], &19d3[1], &19f6[1], &1a0a[1], &1a17[1], &1a1c[1], &1a20[1], &2fa3[1], &3557[1], &4820[1], &4955[1]
.l0f02
    equb 0                                                            ; 2002: 00          .   :0f02[1]
; &2003 referenced 7 times by &1038[1], &117d[1], &14a9[1], &1a2c[1], &24db[1], &3530[1], &4825[1]
.l0f03
    equb 0                                                            ; 2003: 00          .   :0f03[1]
; &2004 referenced 5 times by &0fbe[1], &10af[1], &1a38[1], &3533[1], &482a[1]
.l0f04
    equb 0                                                            ; 2004: 00          .   :0f04[1]
; &2005 referenced 7 times by &0f9a[1], &1002[1], &1081[1], &10fb[1], &1a32[1], &3536[1], &482f[1]
.l0f05
    equb 0                                                            ; 2005: 00          .   :0f05[1]

; &2006 referenced 20 times by &2e75[1], &2e95[1], &2f01[1], &2f06[1], &2f0b[1], &2f10[1], &2f17[1], &2f1c[1], &2f21[1], &2f26[1], &2f90[1], &2f95[1], &2ffc[1], &3001[1], &30d7[1], &3122[1], &3127[1], &312c[1], &3131[1], &3149[1]
.sub_c0f06
    jsr sub_c0f18                                                     ; 2006: 20 18 0f     .. :0f06[1]
    ora (l0070),y                                                     ; 2009: 11 70       .p  :0f09[1]
    sta (l0070),y                                                     ; 200b: 91 70       .p  :0f0b[1]
    rts                                                               ; 200d: 60          `   :0f0d[1]

; &200e referenced 10 times by &1421[1], &2f76[1], &2f7b[1], &2fd6[1], &2fdb[1], &3048[1], &3093[1], &3098[1], &309d[1], &30a2[1]
.sub_c0f0e
    jsr sub_c0f18                                                     ; 200e: 20 18 0f     .. :0f0e[1]
    eor #&ff                                                          ; 2011: 49 ff       I.  :0f11[1]
    and (l0070),y                                                     ; 2013: 31 70       1p  :0f13[1]
    sta (l0070),y                                                     ; 2015: 91 70       .p  :0f15[1]
    rts                                                               ; 2017: 60          `   :0f17[1]

; &2018 referenced 2 times by &0f06[1], &0f0e[1]
.sub_c0f18
    lda #0                                                            ; 2018: a9 00       ..  :0f18[1]
    sta l0070                                                         ; 201a: 85 70       .p  :0f1a[1]
    lda l007b                                                         ; 201c: a5 7b       .{  :0f1c[1]
    lsr a                                                             ; 201e: 4a          J   :0f1e[1]
    lsr a                                                             ; 201f: 4a          J   :0f1f[1]
    lsr a                                                             ; 2020: 4a          J   :0f20[1]
    sta l0071                                                         ; 2021: 85 71       .q  :0f21[1]
    lsr a                                                             ; 2023: 4a          J   :0f23[1]
    ror l0070                                                         ; 2024: 66 70       fp  :0f24[1]
    lsr a                                                             ; 2026: 4a          J   :0f26[1]
    ror l0070                                                         ; 2027: 66 70       fp  :0f27[1]
    adc l0071                                                         ; 2029: 65 71       eq  :0f29[1]
    adc l0079                                                         ; 202b: 65 79       ey  :0f2b[1]
    sta l0071                                                         ; 202d: 85 71       .q  :0f2d[1]
    lda l007b                                                         ; 202f: a5 7b       .{  :0f2f[1]
    and #7                                                            ; 2031: 29 07       ).  :0f31[1]
    adc l0070                                                         ; 2033: 65 70       ep  :0f33[1]
    sta l0070                                                         ; 2035: 85 70       .p  :0f35[1]
    lda l007a                                                         ; 2037: a5 7a       .z  :0f37[1]
    and #&f8                                                          ; 2039: 29 f8       ).  :0f39[1]
    tay                                                               ; 203b: a8          .   :0f3b[1]
    lda l007a                                                         ; 203c: a5 7a       .z  :0f3c[1]
    and #7                                                            ; 203e: 29 07       ).  :0f3e[1]
    tax                                                               ; 2040: aa          .   :0f40[1]
    lda l0e41,x                                                       ; 2041: bd 41 0e    .A. :0f41[1]
    rts                                                               ; 2044: 60          `   :0f44[1]

    equb &ea, &ea, &d0, &fc, &60                                      ; 2045: ea ea d0... ... :0f45[1]

; &204a referenced 5 times by &18e4[1], &2083[1], &208c[1], &2095[1], &209a[1]
.sub_c0f4a
    lda l007a                                                         ; 204a: a5 7a       .z  :0f4a[1]
    sec                                                               ; 204c: 38          8   :0f4c[1]
    sbc l0077                                                         ; 204d: e5 77       .w  :0f4d[1]
    bcs c0f53                                                         ; 204f: b0 02       ..  :0f4f[1]
    eor #&ff                                                          ; 2051: 49 ff       I.  :0f51[1]
; &2053 referenced 1 time by &0f4f[1]
.c0f53
    cmp #&20 ; ' '                                                    ; 2053: c9 20       .   :0f53[1]
    bcs c0f99                                                         ; 2055: b0 42       .B  :0f55[1]
    lda l007b                                                         ; 2057: a5 7b       .{  :0f57[1]
    sec                                                               ; 2059: 38          8   :0f59[1]
    sbc l0076                                                         ; 205a: e5 76       .v  :0f5a[1]
    bcs c0f60                                                         ; 205c: b0 02       ..  :0f5c[1]
    eor #&ff                                                          ; 205e: 49 ff       I.  :0f5e[1]
; &2060 referenced 1 time by &0f5c[1]
.c0f60
    cmp #&20 ; ' '                                                    ; 2060: c9 20       .   :0f60[1]
    bcs c0f99                                                         ; 2062: b0 35       .5  :0f62[1]
; &2064 referenced 42 times by &1364[1], &1369[1], &136e[1], &1373[1], &137a[1], &137f[1], &1386[1], &1396[1], &139b[1], &13a0[1], &13a7[1], &13ac[1], &13b1[1], &13b6[1], &13bb[1], &13c2[1], &13c7[1], &13cc[1], &13e5[1], &13f4[1], &1442[1], &144f[1], &1466[1], &147d[1], &149d[1], &161d[1], &1bd1[1], &1bdd[1], &1d40[1], &1ec6[1], &1ed1[1], &1eda[1], &1edf[1], &1ee8[1], &1eef[1], &1ef4[1], &1efb[1], &29a2[1], &29a7[1], &29ae[1], &29b5[1], &29bc[1]
.sub_c0f64
    lda #0                                                            ; 2064: a9 00       ..  :0f64[1]
    sta l0070                                                         ; 2066: 85 70       .p  :0f66[1]
    lda l007b                                                         ; 2068: a5 7b       .{  :0f68[1]
    lsr a                                                             ; 206a: 4a          J   :0f6a[1]
    lsr a                                                             ; 206b: 4a          J   :0f6b[1]
    lsr a                                                             ; 206c: 4a          J   :0f6c[1]
    sta l0071                                                         ; 206d: 85 71       .q  :0f6d[1]
    lsr a                                                             ; 206f: 4a          J   :0f6f[1]
    ror l0070                                                         ; 2070: 66 70       fp  :0f70[1]
    lsr a                                                             ; 2072: 4a          J   :0f72[1]
    ror l0070                                                         ; 2073: 66 70       fp  :0f73[1]
    adc l0071                                                         ; 2075: 65 71       eq  :0f75[1]
    adc l0079                                                         ; 2077: 65 79       ey  :0f77[1]
    sta l0071                                                         ; 2079: 85 71       .q  :0f79[1]
    lda l007b                                                         ; 207b: a5 7b       .{  :0f7b[1]
    and #7                                                            ; 207d: 29 07       ).  :0f7d[1]
    adc l0070                                                         ; 207f: 65 70       ep  :0f7f[1]
    sta l0070                                                         ; 2081: 85 70       .p  :0f81[1]
    lda l007a                                                         ; 2083: a5 7a       .z  :0f83[1]
    and #&f8                                                          ; 2085: 29 f8       ).  :0f85[1]
    tay                                                               ; 2087: a8          .   :0f87[1]
    lda l007a                                                         ; 2088: a5 7a       .z  :0f88[1]
    and #7                                                            ; 208a: 29 07       ).  :0f8a[1]
    tax                                                               ; 208c: aa          .   :0f8c[1]
    lda l0e41,x                                                       ; 208d: bd 41 0e    .A. :0f8d[1]
    eor (l0070),y                                                     ; 2090: 51 70       Qp  :0f90[1]
    sta (l0070),y                                                     ; 2092: 91 70       .p  :0f92[1]
    rts                                                               ; 2094: 60          `   :0f94[1]

    equb &ea, &ea, &91, &70                                           ; 2095: ea ea 91... ... :0f95[1]

; &2099 referenced 2 times by &0f55[1], &0f62[1]
.c0f99
    rts                                                               ; 2099: 60          `   :0f99[1]

; &209a referenced 2 times by &100e[1], &1021[1]
.sub_c0f9a
    lda l0f05                                                         ; 209a: ad 05 0f    ... :0f9a[1]
    sta l007c                                                         ; 209d: 85 7c       .|  :0f9d[1]
    lda (l0080),y                                                     ; 209f: b1 80       ..  :0f9f[1]
    sta l0075                                                         ; 20a1: 85 75       .u  :0fa1[1]
    iny                                                               ; 20a3: c8          .   :0fa3[1]
    lda (l0080),y                                                     ; 20a4: b1 80       ..  :0fa4[1]
    sta l0073                                                         ; 20a6: 85 73       .s  :0fa6[1]
    lda #0                                                            ; 20a8: a9 00       ..  :0fa8[1]
    ldx #&10                                                          ; 20aa: a2 10       ..  :0faa[1]
; &20ac referenced 1 time by &0fb9[1]
.loop_c0fac
    lsr l0073                                                         ; 20ac: 46 73       Fs  :0fac[1]
    ror l0075                                                         ; 20ae: 66 75       fu  :0fae[1]
    bcc c0fb5                                                         ; 20b0: 90 03       ..  :0fb0[1]
    clc                                                               ; 20b2: 18          .   :0fb2[1]
    adc l007c                                                         ; 20b3: 65 7c       e|  :0fb3[1]
; &20b5 referenced 1 time by &0fb0[1]
.c0fb5
    ror a                                                             ; 20b5: 6a          j   :0fb5[1]
    ror l0072                                                         ; 20b6: 66 72       fr  :0fb6[1]
    dex                                                               ; 20b8: ca          .   :0fb8[1]
    bne loop_c0fac                                                    ; 20b9: d0 f1       ..  :0fb9[1]
    sta l0073                                                         ; 20bb: 85 73       .s  :0fbb[1]
    rts                                                               ; 20bd: 60          `   :0fbd[1]

; &20be referenced 2 times by &1013[1], &1026[1]
.sub_c0fbe
    lda l0f04                                                         ; 20be: ad 04 0f    ... :0fbe[1]
    sta l0075                                                         ; 20c1: 85 75       .u  :0fc1[1]
    lda #0                                                            ; 20c3: a9 00       ..  :0fc3[1]
    ldx #8                                                            ; 20c5: a2 08       ..  :0fc5[1]
; &20c7 referenced 1 time by &0fd0[1]
.loop_c0fc7
    lsr l0075                                                         ; 20c7: 46 75       Fu  :0fc7[1]
    bcc c0fce                                                         ; 20c9: 90 03       ..  :0fc9[1]
    clc                                                               ; 20cb: 18          .   :0fcb[1]
    adc (l0080),y                                                     ; 20cc: 71 80       q.  :0fcc[1]
; &20ce referenced 1 time by &0fc9[1]
.c0fce
    ror a                                                             ; 20ce: 6a          j   :0fce[1]
    dex                                                               ; 20cf: ca          .   :0fcf[1]
    bne loop_c0fc7                                                    ; 20d0: d0 f5       ..  :0fd0[1]
    sec                                                               ; 20d2: 38          8   :0fd2[1]
    sbc (l0080),y                                                     ; 20d3: f1 80       ..  :0fd3[1]
    tax                                                               ; 20d5: aa          .   :0fd5[1]
    lda (l0080),y                                                     ; 20d6: b1 80       ..  :0fd6[1]
    sbc #0                                                            ; 20d8: e9 00       ..  :0fd8[1]
    sta l0075                                                         ; 20da: 85 75       .u  :0fda[1]
    txa                                                               ; 20dc: 8a          .   :0fdc[1]
    dey                                                               ; 20dd: 88          .   :0fdd[1]
    clc                                                               ; 20de: 18          .   :0fde[1]
    adc (l0080),y                                                     ; 20df: 71 80       q.  :0fdf[1]
    bcc c0fe5                                                         ; 20e1: 90 02       ..  :0fe1[1]
    inc l0075                                                         ; 20e3: e6 75       .u  :0fe3[1]
; &20e5 referenced 1 time by &0fe1[1]
.c0fe5
    rts                                                               ; 20e5: 60          `   :0fe5[1]

; &20e6 referenced 5 times by &1251[1], &1256[1], &13e2[1], &1502[1], &291e[1]
.sub_c0fe6
    iny                                                               ; 20e6: c8          .   :0fe6[1]
    lda (l0080),y                                                     ; 20e7: b1 80       ..  :0fe7[1]
    sta l007a                                                         ; 20e9: 85 7a       .z  :0fe9[1]
    ldx l0f02                                                         ; 20eb: ae 02 0f    ... :0feb[1]
    bmi c0ffc                                                         ; 20ee: 30 0c       0.  :0fee[1]
    eor #&ff                                                          ; 20f0: 49 ff       I.  :0ff0[1]
    sta (l0080),y                                                     ; 20f2: 91 80       ..  :0ff2[1]
    dey                                                               ; 20f4: 88          .   :0ff4[1]
    lda (l0080),y                                                     ; 20f5: b1 80       ..  :0ff5[1]
    eor #&ff                                                          ; 20f7: 49 ff       I.  :0ff7[1]
    sta (l0080),y                                                     ; 20f9: 91 80       ..  :0ff9[1]
    iny                                                               ; 20fb: c8          .   :0ffb[1]
; &20fc referenced 1 time by &0fee[1]
.c0ffc
    iny                                                               ; 20fc: c8          .   :0ffc[1]
    iny                                                               ; 20fd: c8          .   :0ffd[1]
    lda (l0080),y                                                     ; 20fe: b1 80       ..  :0ffe[1]
    sta l007b                                                         ; 2100: 85 7b       .{  :1000[1]
    ldx l0f05                                                         ; 2102: ae 05 0f    ... :1002[1]
    bne c100d                                                         ; 2105: d0 06       ..  :1005[1]
    jsr sub_c120d                                                     ; 2107: 20 0d 12     .. :1007[1]
    jmp c106f                                                         ; 210a: 4c 6f 10    Lo. :100a[1]

; &210d referenced 1 time by &1005[1]
.c100d
    dey                                                               ; 210d: 88          .   :100d[1]
    jsr sub_c0f9a                                                     ; 210e: 20 9a 0f     .. :100e[1]
    dey                                                               ; 2111: 88          .   :1011[1]
    dey                                                               ; 2112: 88          .   :1012[1]
    jsr sub_c0fbe                                                     ; 2113: 20 be 0f     .. :1013[1]
    clc                                                               ; 2116: 18          .   :1016[1]
    adc l0072                                                         ; 2117: 65 72       er  :1017[1]
    sta l0076                                                         ; 2119: 85 76       .v  :1019[1]
    lda l0075                                                         ; 211b: a5 75       .u  :101b[1]
    adc l0073                                                         ; 211d: 65 73       es  :101d[1]
    sta l0077                                                         ; 211f: 85 77       .w  :101f[1]
    jsr sub_c0f9a                                                     ; 2121: 20 9a 0f     .. :1021[1]
    iny                                                               ; 2124: c8          .   :1024[1]
    iny                                                               ; 2125: c8          .   :1025[1]
    jsr sub_c0fbe                                                     ; 2126: 20 be 0f     .. :1026[1]
    sec                                                               ; 2129: 38          8   :1029[1]
    sbc l0072                                                         ; 212a: e5 72       .r  :102a[1]
    sta (l0080),y                                                     ; 212c: 91 80       ..  :102c[1]
    iny                                                               ; 212e: c8          .   :102e[1]
    lda l0075                                                         ; 212f: a5 75       .u  :102f[1]
    sbc l0073                                                         ; 2131: e5 73       .s  :1031[1]
    sta (l0080),y                                                     ; 2133: 91 80       ..  :1033[1]
    dey                                                               ; 2135: 88          .   :1035[1]
    dey                                                               ; 2136: 88          .   :1036[1]
    dey                                                               ; 2137: 88          .   :1037[1]
    ldx l0f03                                                         ; 2138: ae 03 0f    ... :1038[1]
    lda l0076                                                         ; 213b: a5 76       .v  :103b[1]
    sec                                                               ; 213d: 38          8   :103d[1]
    sbc l0ed0,x                                                       ; 213e: fd d0 0e    ... :103e[1]
    sta (l0080),y                                                     ; 2141: 91 80       ..  :1041[1]
    iny                                                               ; 2143: c8          .   :1043[1]
    lda l0077                                                         ; 2144: a5 77       .w  :1044[1]
    sbc l0ed6,x                                                       ; 2146: fd d6 0e    ... :1046[1]
    sta (l0080),y                                                     ; 2149: 91 80       ..  :1049[1]
    lda l0f02                                                         ; 214b: ad 02 0f    ... :104b[1]
    bmi c105e                                                         ; 214e: 30 0e       0.  :104e[1]
    dey                                                               ; 2150: 88          .   :1050[1]
    lda (l0080),y                                                     ; 2151: b1 80       ..  :1051[1]
    eor #&ff                                                          ; 2153: 49 ff       I.  :1053[1]
    sta (l0080),y                                                     ; 2155: 91 80       ..  :1055[1]
    iny                                                               ; 2157: c8          .   :1057[1]
    lda (l0080),y                                                     ; 2158: b1 80       ..  :1058[1]
    eor #&ff                                                          ; 215a: 49 ff       I.  :105a[1]
    sta (l0080),y                                                     ; 215c: 91 80       ..  :105c[1]
; &215e referenced 1 time by &104e[1]
.c105e
    iny                                                               ; 215e: c8          .   :105e[1]
    lda (l0080),y                                                     ; 215f: b1 80       ..  :105f[1]
    clc                                                               ; 2161: 18          .   :1061[1]
    adc l0edc,x                                                       ; 2162: 7d dc 0e    }.. :1062[1]
    sta (l0080),y                                                     ; 2165: 91 80       ..  :1065[1]
    iny                                                               ; 2167: c8          .   :1067[1]
    lda (l0080),y                                                     ; 2168: b1 80       ..  :1068[1]
    adc l0ee2,x                                                       ; 216a: 7d e2 0e    }.. :106a[1]
    sta (l0080),y                                                     ; 216d: 91 80       ..  :106d[1]
; &216f referenced 1 time by &100a[1]
.c106f
    dey                                                               ; 216f: 88          .   :106f[1]
    lda (l0080),y                                                     ; 2170: b1 80       ..  :1070[1]
    clc                                                               ; 2172: 18          .   :1072[1]
    adc l0f01                                                         ; 2173: 6d 01 0f    m.. :1073[1]
    sta (l0080),y                                                     ; 2176: 91 80       ..  :1076[1]
    iny                                                               ; 2178: c8          .   :1078[1]
    lda (l0080),y                                                     ; 2179: b1 80       ..  :1079[1]
    adc l0f00                                                         ; 217b: 6d 00 0f    m.. :107b[1]
    sta (l0080),y                                                     ; 217e: 91 80       ..  :107e[1]
    rts                                                               ; 2180: 60          `   :1080[1]

; &2181 referenced 2 times by &1142[1], &115e[1]
.sub_c1081
    lda l0f05                                                         ; 2181: ad 05 0f    ... :1081[1]
    sta l0074                                                         ; 2184: 85 74       .t  :1084[1]
    lda l0481,x                                                       ; 2186: bd 81 04    ... :1086[1]
    sta l0076                                                         ; 2189: 85 76       .v  :1089[1]
    lda l0482,x                                                       ; 218b: bd 82 04    ... :108b[1]
    sta l0077                                                         ; 218e: 85 77       .w  :108e[1]
    lda l0483,x                                                       ; 2190: bd 83 04    ... :1090[1]
    sta l0078                                                         ; 2193: 85 78       .x  :1093[1]
    lda #0                                                            ; 2195: a9 00       ..  :1095[1]
    ldy #&18                                                          ; 2197: a0 18       ..  :1097[1]
; &2199 referenced 1 time by &10aa[1]
.loop_c1099
    lsr l0078                                                         ; 2199: 46 78       Fx  :1099[1]
    ror l0077                                                         ; 219b: 66 77       fw  :109b[1]
    ror l0076                                                         ; 219d: 66 76       fv  :109d[1]
    bcc c10a4                                                         ; 219f: 90 03       ..  :109f[1]
    clc                                                               ; 21a1: 18          .   :10a1[1]
    adc l0074                                                         ; 21a2: 65 74       et  :10a2[1]
; &21a4 referenced 1 time by &109f[1]
.c10a4
    ror a                                                             ; 21a4: 6a          j   :10a4[1]
    ror l0073                                                         ; 21a5: 66 73       fs  :10a5[1]
    ror l0072                                                         ; 21a7: 66 72       fr  :10a7[1]
    dey                                                               ; 21a9: 88          .   :10a9[1]
    bne loop_c1099                                                    ; 21aa: d0 ed       ..  :10aa[1]
    sta l0074                                                         ; 21ac: 85 74       .t  :10ac[1]
    rts                                                               ; 21ae: 60          `   :10ae[1]

; &21af referenced 2 times by &1148[1], &1164[1]
.sub_c10af
    lda l0f04                                                         ; 21af: ad 04 0f    ... :10af[1]
    sta l0078                                                         ; 21b2: 85 78       .x  :10b2[1]
    lda l0482,x                                                       ; 21b4: bd 82 04    ... :10b4[1]
    sta l0076                                                         ; 21b7: 85 76       .v  :10b7[1]
    lda l0483,x                                                       ; 21b9: bd 83 04    ... :10b9[1]
    sta l0077                                                         ; 21bc: 85 77       .w  :10bc[1]
    lda #0                                                            ; 21be: a9 00       ..  :10be[1]
    ldy #&10                                                          ; 21c0: a0 10       ..  :10c0[1]
; &21c2 referenced 1 time by &10cf[1]
.loop_c10c2
    lsr l0077                                                         ; 21c2: 46 77       Fw  :10c2[1]
    ror l0076                                                         ; 21c4: 66 76       fv  :10c4[1]
    bcc c10cb                                                         ; 21c6: 90 03       ..  :10c6[1]
    clc                                                               ; 21c8: 18          .   :10c8[1]
    adc l0078                                                         ; 21c9: 65 78       ex  :10c9[1]
; &21cb referenced 1 time by &10c6[1]
.c10cb
    ror a                                                             ; 21cb: 6a          j   :10cb[1]
    ror l0075                                                         ; 21cc: 66 75       fu  :10cc[1]
    dey                                                               ; 21ce: 88          .   :10ce[1]
    bne loop_c10c2                                                    ; 21cf: d0 f1       ..  :10cf[1]
    tay                                                               ; 21d1: a8          .   :10d1[1]
    lda l0075                                                         ; 21d2: a5 75       .u  :10d2[1]
    clc                                                               ; 21d4: 18          .   :10d4[1]
    adc l0481,x                                                       ; 21d5: 7d 81 04    }.. :10d5[1]
    sta l0076                                                         ; 21d8: 85 76       .v  :10d8[1]
    tya                                                               ; 21da: 98          .   :10da[1]
    adc l0482,x                                                       ; 21db: 7d 82 04    }.. :10db[1]
    tay                                                               ; 21de: a8          .   :10de[1]
    lda l0483,x                                                       ; 21df: bd 83 04    ... :10df[1]
    adc #0                                                            ; 21e2: 69 00       i.  :10e2[1]
    sta l0078                                                         ; 21e4: 85 78       .x  :10e4[1]
    lda l0076                                                         ; 21e6: a5 76       .v  :10e6[1]
    sec                                                               ; 21e8: 38          8   :10e8[1]
    sbc l0482,x                                                       ; 21e9: fd 82 04    ... :10e9[1]
    sta l0076                                                         ; 21ec: 85 76       .v  :10ec[1]
    tya                                                               ; 21ee: 98          .   :10ee[1]
    sbc l0483,x                                                       ; 21ef: fd 83 04    ... :10ef[1]
    sta l0077                                                         ; 21f2: 85 77       .w  :10f2[1]
    lda l0078                                                         ; 21f4: a5 78       .x  :10f4[1]
    sbc #0                                                            ; 21f6: e9 00       ..  :10f6[1]
    sta l0078                                                         ; 21f8: 85 78       .x  :10f8[1]
    rts                                                               ; 21fa: 60          `   :10fa[1]

; &21fb referenced 1 time by &1639[1]
.sub_c10fb
    lda l0f05                                                         ; 21fb: ad 05 0f    ... :10fb[1]
    bne c1106                                                         ; 21fe: d0 06       ..  :10fe[1]
    jsr sub_c1211                                                     ; 2200: 20 11 12     .. :1100[1]
    jmp c11f1                                                         ; 2203: 4c f1 11    L.. :1103[1]

; &2206 referenced 1 time by &10fe[1]
.c1106
    lda l0402,x                                                       ; 2206: bd 02 04    ... :1106[1]
    clc                                                               ; 2209: 18          .   :1109[1]
    adc #&80                                                          ; 220a: 69 80       i.  :110a[1]
    sta l0482,x                                                       ; 220c: 9d 82 04    ... :110c[1]
    bcc c1114                                                         ; 220f: 90 03       ..  :110f[1]
    inc l0483,x                                                       ; 2211: fe 83 04    ... :1111[1]
; &2214 referenced 1 time by &110f[1]
.c1114
    lda l0405,x                                                       ; 2214: bd 05 04    ... :1114[1]
    clc                                                               ; 2217: 18          .   :1117[1]
    adc #&80                                                          ; 2218: 69 80       i.  :1118[1]
    sta l0485,x                                                       ; 221a: 9d 85 04    ... :111a[1]
    bcc c1122                                                         ; 221d: 90 03       ..  :111d[1]
    inc l0486,x                                                       ; 221f: fe 86 04    ... :111f[1]
; &2222 referenced 1 time by &111d[1]
.c1122
    ldy l0f02                                                         ; 2222: ac 02 0f    ... :1122[1]
    bmi c113f                                                         ; 2225: 30 18       0.  :1125[1]
    lda l0401,x                                                       ; 2227: bd 01 04    ... :1127[1]
    eor #&ff                                                          ; 222a: 49 ff       I.  :112a[1]
    sta l0481,x                                                       ; 222c: 9d 81 04    ... :112c[1]
    lda l0482,x                                                       ; 222f: bd 82 04    ... :112f[1]
    eor #&ff                                                          ; 2232: 49 ff       I.  :1132[1]
    sta l0482,x                                                       ; 2234: 9d 82 04    ... :1134[1]
    lda l0483,x                                                       ; 2237: bd 83 04    ... :1137[1]
    eor #&ff                                                          ; 223a: 49 ff       I.  :113a[1]
    sta l0483,x                                                       ; 223c: 9d 83 04    ... :113c[1]
; &223f referenced 1 time by &1125[1]
.c113f
    inx                                                               ; 223f: e8          .   :113f[1]
    inx                                                               ; 2240: e8          .   :1140[1]
    inx                                                               ; 2241: e8          .   :1141[1]
    jsr sub_c1081                                                     ; 2242: 20 81 10     .. :1142[1]
    dex                                                               ; 2245: ca          .   :1145[1]
    dex                                                               ; 2246: ca          .   :1146[1]
    dex                                                               ; 2247: ca          .   :1147[1]
    jsr sub_c10af                                                     ; 2248: 20 af 10     .. :1148[1]
    lda l0076                                                         ; 224b: a5 76       .v  :114b[1]
    clc                                                               ; 224d: 18          .   :114d[1]
    adc l0072                                                         ; 224e: 65 72       er  :114e[1]
    sta l007a                                                         ; 2250: 85 7a       .z  :1150[1]
    lda l0077                                                         ; 2252: a5 77       .w  :1152[1]
    adc l0073                                                         ; 2254: 65 73       es  :1154[1]
    sta l007b                                                         ; 2256: 85 7b       .{  :1156[1]
    lda l0078                                                         ; 2258: a5 78       .x  :1158[1]
    adc l0074                                                         ; 225a: 65 74       et  :115a[1]
    sta l007c                                                         ; 225c: 85 7c       .|  :115c[1]
    jsr sub_c1081                                                     ; 225e: 20 81 10     .. :115e[1]
    inx                                                               ; 2261: e8          .   :1161[1]
    inx                                                               ; 2262: e8          .   :1162[1]
    inx                                                               ; 2263: e8          .   :1163[1]
    jsr sub_c10af                                                     ; 2264: 20 af 10     .. :1164[1]
    dex                                                               ; 2267: ca          .   :1167[1]
    dex                                                               ; 2268: ca          .   :1168[1]
    dex                                                               ; 2269: ca          .   :1169[1]
    lda l0076                                                         ; 226a: a5 76       .v  :116a[1]
    sec                                                               ; 226c: 38          8   :116c[1]
    sbc l0072                                                         ; 226d: e5 72       .r  :116d[1]
    sta l0076                                                         ; 226f: 85 76       .v  :116f[1]
    lda l0077                                                         ; 2271: a5 77       .w  :1171[1]
    sbc l0073                                                         ; 2273: e5 73       .s  :1173[1]
    sta l0077                                                         ; 2275: 85 77       .w  :1175[1]
    lda l0078                                                         ; 2277: a5 78       .x  :1177[1]
    sbc l0074                                                         ; 2279: e5 74       .t  :1179[1]
    sta l0078                                                         ; 227b: 85 78       .x  :117b[1]
    ldy l0f03                                                         ; 227d: ac 03 0f    ... :117d[1]
    lda l007a                                                         ; 2280: a5 7a       .z  :1180[1]
    sec                                                               ; 2282: 38          8   :1182[1]
    sbc l0ee8,y                                                       ; 2283: f9 e8 0e    ... :1183[1]
    sta l0481,x                                                       ; 2286: 9d 81 04    ... :1186[1]
    lda l007b                                                         ; 2289: a5 7b       .{  :1189[1]
    sbc l0eee,y                                                       ; 228b: f9 ee 0e    ... :118b[1]
    sta l0482,x                                                       ; 228e: 9d 82 04    ... :118e[1]
    lda l007c                                                         ; 2291: a5 7c       .|  :1191[1]
    sbc l0ed6,y                                                       ; 2293: f9 d6 0e    ... :1193[1]
    sta l0483,x                                                       ; 2296: 9d 83 04    ... :1196[1]
    lda l0f02                                                         ; 2299: ad 02 0f    ... :1199[1]
    bmi c11b6                                                         ; 229c: 30 18       0.  :119c[1]
    lda l0481,x                                                       ; 229e: bd 81 04    ... :119e[1]
    eor #&ff                                                          ; 22a1: 49 ff       I.  :11a1[1]
    sta l0481,x                                                       ; 22a3: 9d 81 04    ... :11a3[1]
    lda l0482,x                                                       ; 22a6: bd 82 04    ... :11a6[1]
    eor #&ff                                                          ; 22a9: 49 ff       I.  :11a9[1]
    sta l0482,x                                                       ; 22ab: 9d 82 04    ... :11ab[1]
    lda l0483,x                                                       ; 22ae: bd 83 04    ... :11ae[1]
    eor #&ff                                                          ; 22b1: 49 ff       I.  :11b1[1]
    sta l0483,x                                                       ; 22b3: 9d 83 04    ... :11b3[1]
; &22b6 referenced 1 time by &119c[1]
.c11b6
    lda l0076                                                         ; 22b6: a5 76       .v  :11b6[1]
    clc                                                               ; 22b8: 18          .   :11b8[1]
    adc l0ef4,y                                                       ; 22b9: 79 f4 0e    y.. :11b9[1]
    sta l0484,x                                                       ; 22bc: 9d 84 04    ... :11bc[1]
    lda l0077                                                         ; 22bf: a5 77       .w  :11bf[1]
    adc l0efa,y                                                       ; 22c1: 79 fa 0e    y.. :11c1[1]
    sta l0485,x                                                       ; 22c4: 9d 85 04    ... :11c4[1]
    lda l0078                                                         ; 22c7: a5 78       .x  :11c7[1]
    adc l0ee2,y                                                       ; 22c9: 79 e2 0e    y.. :11c9[1]
    sta l0486,x                                                       ; 22cc: 9d 86 04    ... :11cc[1]
    lda l0485,x                                                       ; 22cf: bd 85 04    ... :11cf[1]
    sec                                                               ; 22d2: 38          8   :11d2[1]
    sbc #&80                                                          ; 22d3: e9 80       ..  :11d3[1]
    sta l0485,x                                                       ; 22d5: 9d 85 04    ... :11d5[1]
    lda l0486,x                                                       ; 22d8: bd 86 04    ... :11d8[1]
    sbc #0                                                            ; 22db: e9 00       ..  :11db[1]
    sta l0486,x                                                       ; 22dd: 9d 86 04    ... :11dd[1]
    lda l0482,x                                                       ; 22e0: bd 82 04    ... :11e0[1]
    sec                                                               ; 22e3: 38          8   :11e3[1]
    sbc #&80                                                          ; 22e4: e9 80       ..  :11e4[1]
    sta l0482,x                                                       ; 22e6: 9d 82 04    ... :11e6[1]
    lda l0483,x                                                       ; 22e9: bd 83 04    ... :11e9[1]
    sbc #0                                                            ; 22ec: e9 00       ..  :11ec[1]
    sta l0483,x                                                       ; 22ee: 9d 83 04    ... :11ee[1]
; &22f1 referenced 1 time by &1103[1]
.c11f1
    lda l0484,x                                                       ; 22f1: bd 84 04    ... :11f1[1]
    clc                                                               ; 22f4: 18          .   :11f4[1]
    adc l0f01                                                         ; 22f5: 6d 01 0f    m.. :11f5[1]
    sta l0484,x                                                       ; 22f8: 9d 84 04    ... :11f8[1]
    lda l0485,x                                                       ; 22fb: bd 85 04    ... :11fb[1]
    adc l0f00                                                         ; 22fe: 6d 00 0f    m.. :11fe[1]
    sta l0485,x                                                       ; 2301: 9d 85 04    ... :1201[1]
    lda l0486,x                                                       ; 2304: bd 86 04    ... :1204[1]
    adc #0                                                            ; 2307: 69 00       i.  :1207[1]
    sta l0486,x                                                       ; 2309: 9d 86 04    ... :1209[1]
    rts                                                               ; 230c: 60          `   :120c[1]

; &230d referenced 1 time by &1007[1]
.sub_c120d
    lda #&80                                                          ; 230d: a9 80       ..  :120d[1]
    bne c1213                                                         ; 230f: d0 02       ..  :120f[1]   ; ALWAYS branch

; &2311 referenced 1 time by &1100[1]
.sub_c1211
    lda #&c0                                                          ; 2311: a9 c0       ..  :1211[1]
; &2313 referenced 2 times by &120f[1], &1216[1]
.c1213
    clc                                                               ; 2313: 18          .   :1213[1]
    adc #1                                                            ; 2314: 69 01       i.  :1214[1]
    bne c1213                                                         ; 2316: d0 fb       ..  :1216[1]
    rts                                                               ; 2318: 60          `   :1218[1]

; &2319 referenced 1 time by &3871[1]
.sub_c1219
    lda l0e51                                                         ; 2319: ad 51 0e    .Q. :1219[1]
    sta l0e55                                                         ; 231c: 8d 55 0e    .U. :121c[1]
    lda l0e4b                                                         ; 231f: ad 4b 0e    .K. :121f[1]
    sta l0080                                                         ; 2322: 85 80       ..  :1222[1]
    lda l0e4c                                                         ; 2324: ad 4c 0e    .L. :1224[1]
    sta l0081                                                         ; 2327: 85 81       ..  :1227[1]
    lda l0e4d                                                         ; 2329: ad 4d 0e    .M. :1229[1]
    sta l0082                                                         ; 232c: 85 82       ..  :122c[1]
    lda l0e4e                                                         ; 232e: ad 4e 0e    .N. :122e[1]
    sta l0083                                                         ; 2331: 85 83       ..  :1231[1]
; &2333 referenced 1 time by &12f3[1]
.c1233
    ldy #0                                                            ; 2333: a0 00       ..  :1233[1]
    lda (l0080),y                                                     ; 2335: b1 80       ..  :1235[1]
    bne c123c                                                         ; 2337: d0 03       ..  :1237[1]
    jmp c12d8                                                         ; 2339: 4c d8 12    L.. :1239[1]

; &233c referenced 1 time by &1237[1]
.c123c
    sec                                                               ; 233c: 38          8   :123c[1]
    sbc #1                                                            ; 233d: e9 01       ..  :123d[1]
    sta (l0080),y                                                     ; 233f: 91 80       ..  :123f[1]
    bne c124c                                                         ; 2341: d0 09       ..  :1241[1]
    dec l2657                                                         ; 2343: ce 57 26    .W& :1243[1]
    jsr sub_c138a                                                     ; 2346: 20 8a 13     .. :1246[1]
    jmp c12d8                                                         ; 2349: 4c d8 12    L.. :1249[1]

; &234c referenced 1 time by &1241[1]
.c124c
    jsr c145a                                                         ; 234c: 20 5a 14     Z. :124c[1]
    ldy #1                                                            ; 234f: a0 01       ..  :124f[1]
    jsr sub_c0fe6                                                     ; 2351: 20 e6 0f     .. :1251[1]
    ldy #5                                                            ; 2354: a0 05       ..  :1254[1]
    jsr sub_c0fe6                                                     ; 2356: 20 e6 0f     .. :1256[1]
    ldy #1                                                            ; 2359: a0 01       ..  :1259[1]
    lda (l0080),y                                                     ; 235b: b1 80       ..  :125b[1]
    sec                                                               ; 235d: 38          8   :125d[1]
    sbc (l0082),y                                                     ; 235e: f1 82       ..  :125e[1]
    sta l0072                                                         ; 2360: 85 72       .r  :1260[1]
    iny                                                               ; 2362: c8          .   :1262[1]   ; Y=&02
    lda (l0080),y                                                     ; 2363: b1 80       ..  :1263[1]
    sbc (l0082),y                                                     ; 2365: f1 82       ..  :1265[1]
    asl l0072                                                         ; 2367: 06 72       .r  :1267[1]
    rol a                                                             ; 2369: 2a          *   :1269[1]
    asl l0072                                                         ; 236a: 06 72       .r  :126a[1]
    rol a                                                             ; 236c: 2a          *   :126c[1]
    sta l0073                                                         ; 236d: 85 73       .s  :126d[1]
    iny                                                               ; 236f: c8          .   :126f[1]   ; Y=&03
    lda (l0080),y                                                     ; 2370: b1 80       ..  :1270[1]
    sec                                                               ; 2372: 38          8   :1272[1]
    sbc (l0082),y                                                     ; 2373: f1 82       ..  :1273[1]
    sta l0076                                                         ; 2375: 85 76       .v  :1275[1]
    iny                                                               ; 2377: c8          .   :1277[1]   ; Y=&04
    lda (l0080),y                                                     ; 2378: b1 80       ..  :1278[1]
    sbc (l0082),y                                                     ; 237a: f1 82       ..  :127a[1]
    asl l0076                                                         ; 237c: 06 76       .v  :127c[1]
    rol a                                                             ; 237e: 2a          *   :127e[1]
    asl l0076                                                         ; 237f: 06 76       .v  :127f[1]
    rol a                                                             ; 2381: 2a          *   :1281[1]
    sta l0077                                                         ; 2382: 85 77       .w  :1282[1]
    ldy #1                                                            ; 2384: a0 01       ..  :1284[1]
    lda (l0080),y                                                     ; 2386: b1 80       ..  :1286[1]
    clc                                                               ; 2388: 18          .   :1288[1]
    adc l0072                                                         ; 2389: 65 72       er  :1289[1]
    sta (l0080),y                                                     ; 238b: 91 80       ..  :128b[1]
    iny                                                               ; 238d: c8          .   :128d[1]   ; Y=&02
    lda (l0080),y                                                     ; 238e: b1 80       ..  :128e[1]
    adc l0073                                                         ; 2390: 65 73       es  :1290[1]
    sta (l0080),y                                                     ; 2392: 91 80       ..  :1292[1]
    iny                                                               ; 2394: c8          .   :1294[1]   ; Y=&03
    lda (l0080),y                                                     ; 2395: b1 80       ..  :1295[1]
    clc                                                               ; 2397: 18          .   :1297[1]
    adc l0076                                                         ; 2398: 65 76       ev  :1298[1]
    sta (l0080),y                                                     ; 239a: 91 80       ..  :129a[1]
    iny                                                               ; 239c: c8          .   :129c[1]   ; Y=&04
    lda (l0080),y                                                     ; 239d: b1 80       ..  :129d[1]
    adc l0077                                                         ; 239f: 65 77       ew  :129f[1]
    sta (l0080),y                                                     ; 23a1: 91 80       ..  :12a1[1]
    ldy #1                                                            ; 23a3: a0 01       ..  :12a3[1]
    lda (l0082),y                                                     ; 23a5: b1 82       ..  :12a5[1]
    clc                                                               ; 23a7: 18          .   :12a7[1]
    adc l0072                                                         ; 23a8: 65 72       er  :12a8[1]
    sta (l0082),y                                                     ; 23aa: 91 82       ..  :12aa[1]
    iny                                                               ; 23ac: c8          .   :12ac[1]   ; Y=&02
    lda (l0082),y                                                     ; 23ad: b1 82       ..  :12ad[1]
    adc l0073                                                         ; 23af: 65 73       es  :12af[1]
    sta (l0082),y                                                     ; 23b1: 91 82       ..  :12b1[1]
    iny                                                               ; 23b3: c8          .   :12b3[1]   ; Y=&03
    lda (l0082),y                                                     ; 23b4: b1 82       ..  :12b4[1]
    clc                                                               ; 23b6: 18          .   :12b6[1]
    adc l0076                                                         ; 23b7: 65 76       ev  :12b7[1]
    sta (l0082),y                                                     ; 23b9: 91 82       ..  :12b9[1]
    iny                                                               ; 23bb: c8          .   :12bb[1]   ; Y=&04
    lda (l0082),y                                                     ; 23bc: b1 82       ..  :12bc[1]
    adc l0077                                                         ; 23be: 65 77       ew  :12be[1]
    sta (l0082),y                                                     ; 23c0: 91 82       ..  :12c0[1]
    jsr sub_c159d                                                     ; 23c2: 20 9d 15     .. :12c2[1]
    bcs c12d8                                                         ; 23c5: b0 11       ..  :12c5[1]
    ldy #0                                                            ; 23c7: a0 00       ..  :12c7[1]
    lda (l0080),y                                                     ; 23c9: b1 80       ..  :12c9[1]
    cmp #2                                                            ; 23cb: c9 02       ..  :12cb[1]
    bcs c12d5                                                         ; 23cd: b0 06       ..  :12cd[1]
    jsr sub_c138a                                                     ; 23cf: 20 8a 13     .. :12cf[1]
    sec                                                               ; 23d2: 38          8   :12d2[1]
    bcs c12d8                                                         ; 23d3: b0 03       ..  :12d3[1]   ; ALWAYS branch

; &23d5 referenced 1 time by &12cd[1]
.c12d5
    jsr c145a                                                         ; 23d5: 20 5a 14     Z. :12d5[1]
; &23d8 referenced 4 times by &1239[1], &1249[1], &12c5[1], &12d3[1]
.c12d8
    lda l0080                                                         ; 23d8: a5 80       ..  :12d8[1]
    clc                                                               ; 23da: 18          .   :12da[1]
    adc #9                                                            ; 23db: 69 09       i.  :12db[1]
    sta l0080                                                         ; 23dd: 85 80       ..  :12dd[1]
    bcc c12e3                                                         ; 23df: 90 02       ..  :12df[1]
    inc l0081                                                         ; 23e1: e6 81       ..  :12e1[1]
; &23e3 referenced 1 time by &12df[1]
.c12e3
    lda l0082                                                         ; 23e3: a5 82       ..  :12e3[1]
    clc                                                               ; 23e5: 18          .   :12e5[1]
    adc #9                                                            ; 23e6: 69 09       i.  :12e6[1]
    sta l0082                                                         ; 23e8: 85 82       ..  :12e8[1]
    bcc c12ee                                                         ; 23ea: 90 02       ..  :12ea[1]
    inc l0083                                                         ; 23ec: e6 83       ..  :12ec[1]
; &23ee referenced 1 time by &12ea[1]
.c12ee
    dec l0e55                                                         ; 23ee: ce 55 0e    .U. :12ee[1]
    beq c12f6                                                         ; 23f1: f0 03       ..  :12f1[1]
    jmp c1233                                                         ; 23f3: 4c 33 12    L3. :12f3[1]

; &23f6 referenced 1 time by &12f1[1]
.c12f6
    rts                                                               ; 23f6: 60          `   :12f6[1]

; &23f7 referenced 1 time by &1a62[1]
.sub_c12f7
    lda l2657                                                         ; 23f7: ad 57 26    .W& :12f7[1]
    cmp l0e51                                                         ; 23fa: cd 51 0e    .Q. :12fa[1]
    bcs c1322                                                         ; 23fd: b0 23       .#  :12fd[1]
    inc l2657                                                         ; 23ff: ee 57 26    .W& :12ff[1]
    inc l2658                                                         ; 2402: ee 58 26    .X& :1302[1]
    lda l0e4b                                                         ; 2405: ad 4b 0e    .K. :1305[1]
    sta l0080                                                         ; 2408: 85 80       ..  :1308[1]
    lda l0e4c                                                         ; 240a: ad 4c 0e    .L. :130a[1]
    sta l0081                                                         ; 240d: 85 81       ..  :130d[1]
    ldy #0                                                            ; 240f: a0 00       ..  :130f[1]
; &2411 referenced 2 times by &131c[1], &1320[1]
.c1311
    lda (l0080),y                                                     ; 2411: b1 80       ..  :1311[1]
    beq c1323                                                         ; 2413: f0 0e       ..  :1313[1]
    lda l0080                                                         ; 2415: a5 80       ..  :1315[1]
    clc                                                               ; 2417: 18          .   :1317[1]
    adc #9                                                            ; 2418: 69 09       i.  :1318[1]
    sta l0080                                                         ; 241a: 85 80       ..  :131a[1]
    bcc c1311                                                         ; 241c: 90 f3       ..  :131c[1]
    inc l0081                                                         ; 241e: e6 81       ..  :131e[1]
    bne c1311                                                         ; 2420: d0 ef       ..  :1320[1]
; &2422 referenced 1 time by &12fd[1]
.c1322
    rts                                                               ; 2422: 60          `   :1322[1]

; &2423 referenced 1 time by &1313[1]
.c1323
    lda l0e53                                                         ; 2423: ad 53 0e    .S. :1323[1]
    sta (l0080),y                                                     ; 2426: 91 80       ..  :1326[1]
    lda l0080                                                         ; 2428: a5 80       ..  :1328[1]
    clc                                                               ; 242a: 18          .   :132a[1]
    adc #4                                                            ; 242b: 69 04       i.  :132b[1]
    sta l0082                                                         ; 242d: 85 82       ..  :132d[1]
    lda l0081                                                         ; 242f: a5 81       ..  :132f[1]
    adc #0                                                            ; 2431: 69 00       i.  :1331[1]
    sta l0083                                                         ; 2433: 85 83       ..  :1333[1]
    iny                                                               ; 2435: c8          .   :1335[1]
    lda #&7f                                                          ; 2436: a9 7f       ..  :1336[1]
    sta (l0080),y                                                     ; 2438: 91 80       ..  :1338[1]
    sta (l0082),y                                                     ; 243a: 91 82       ..  :133a[1]
    iny                                                               ; 243c: c8          .   :133c[1]
    sta (l0080),y                                                     ; 243d: 91 80       ..  :133d[1]
    sta (l0082),y                                                     ; 243f: 91 82       ..  :133f[1]
    iny                                                               ; 2441: c8          .   :1341[1]
    lda #&80                                                          ; 2442: a9 80       ..  :1342[1]
    sta (l0080),y                                                     ; 2444: 91 80       ..  :1344[1]
    lda #&90                                                          ; 2446: a9 90       ..  :1346[1]
    sta (l0082),y                                                     ; 2448: 91 82       ..  :1348[1]
    iny                                                               ; 244a: c8          .   :134a[1]
    lda #&75 ; 'u'                                                    ; 244b: a9 75       .u  :134b[1]
    sta (l0080),y                                                     ; 244d: 91 80       ..  :134d[1]
    lda #&77 ; 'w'                                                    ; 244f: a9 77       .w  :134f[1]
    sta (l0082),y                                                     ; 2451: 91 82       ..  :1351[1]
    lda #0                                                            ; 2453: a9 00       ..  :1353[1]
    sta l1ce0                                                         ; 2455: 8d e0 1c    ... :1355[1]
    jsr sub_c159d                                                     ; 2458: 20 9d 15     .. :1358[1]
    bcs c1360                                                         ; 245b: b0 03       ..  :135b[1]
    jmp c145a                                                         ; 245d: 4c 5a 14    LZ. :135d[1]

; &2460 referenced 1 time by &135b[1]
.c1360
    rts                                                               ; 2460: 60          `   :1360[1]

    equb &ea                                                          ; 2461: ea          .   :1361[1]

; &2462 referenced 1 time by &146e[1]
.c1362
    inc l007a                                                         ; 2462: e6 7a       .z  :1362[1]
    jsr sub_c0f64                                                     ; 2464: 20 64 0f     d. :1364[1]
    inc l007b                                                         ; 2467: e6 7b       .{  :1367[1]
    jsr sub_c0f64                                                     ; 2469: 20 64 0f     d. :1369[1]
    dec l007a                                                         ; 246c: c6 7a       .z  :136c[1]
    jsr sub_c0f64                                                     ; 246e: 20 64 0f     d. :136e[1]
    inc l007b                                                         ; 2471: e6 7b       .{  :1371[1]
    jsr sub_c0f64                                                     ; 2473: 20 64 0f     d. :1373[1]
    dec l007a                                                         ; 2476: c6 7a       .z  :1376[1]
    dec l007b                                                         ; 2478: c6 7b       .{  :1378[1]
    jsr sub_c0f64                                                     ; 247a: 20 64 0f     d. :137a[1]
    dec l007b                                                         ; 247d: c6 7b       .{  :137d[1]
    jsr sub_c0f64                                                     ; 247f: 20 64 0f     d. :137f[1]
    dec l007b                                                         ; 2482: c6 7b       .{  :1382[1]
    inc l007a                                                         ; 2484: e6 7a       .z  :1384[1]
    jsr sub_c0f64                                                     ; 2486: 20 64 0f     d. :1386[1]
    rts                                                               ; 2489: 60          `   :1389[1]

; &248a referenced 7 times by &1246[1], &12cf[1], &14f7[1], &155e[1], &1580[1], &1600[1], &2988[1]
.sub_c138a
    ldy #2                                                            ; 248a: a0 02       ..  :138a[1]
    lda (l0080),y                                                     ; 248c: b1 80       ..  :138c[1]
    sta l007a                                                         ; 248e: 85 7a       .z  :138e[1]
    ldy #4                                                            ; 2490: a0 04       ..  :1390[1]
    lda (l0080),y                                                     ; 2492: b1 80       ..  :1392[1]
    sta l007b                                                         ; 2494: 85 7b       .{  :1394[1]
    jsr sub_c0f64                                                     ; 2496: 20 64 0f     d. :1396[1]
    inc l007b                                                         ; 2499: e6 7b       .{  :1399[1]
    jsr sub_c0f64                                                     ; 249b: 20 64 0f     d. :139b[1]
    inc l007a                                                         ; 249e: e6 7a       .z  :139e[1]
    jsr sub_c0f64                                                     ; 24a0: 20 64 0f     d. :13a0[1]
    inc l007a                                                         ; 24a3: e6 7a       .z  :13a3[1]
    dec l007b                                                         ; 24a5: c6 7b       .{  :13a5[1]
    jsr sub_c0f64                                                     ; 24a7: 20 64 0f     d. :13a7[1]
    dec l007a                                                         ; 24aa: c6 7a       .z  :13aa[1]
    jsr sub_c0f64                                                     ; 24ac: 20 64 0f     d. :13ac[1]
    dec l007b                                                         ; 24af: c6 7b       .{  :13af[1]
    jsr sub_c0f64                                                     ; 24b1: 20 64 0f     d. :13b1[1]
    dec l007a                                                         ; 24b4: c6 7a       .z  :13b4[1]
    jsr sub_c0f64                                                     ; 24b6: 20 64 0f     d. :13b6[1]
    dec l007a                                                         ; 24b9: c6 7a       .z  :13b9[1]
    jsr sub_c0f64                                                     ; 24bb: 20 64 0f     d. :13bb[1]
    dec l007a                                                         ; 24be: c6 7a       .z  :13be[1]
    inc l007b                                                         ; 24c0: e6 7b       .{  :13c0[1]
    jsr sub_c0f64                                                     ; 24c2: 20 64 0f     d. :13c2[1]
    inc l007a                                                         ; 24c5: e6 7a       .z  :13c5[1]
    jsr sub_c0f64                                                     ; 24c7: 20 64 0f     d. :13c7[1]
    inc l007b                                                         ; 24ca: e6 7b       .{  :13ca[1]
    jsr sub_c0f64                                                     ; 24cc: 20 64 0f     d. :13cc[1]
    rts                                                               ; 24cf: 60          `   :13cf[1]

; &24d0 referenced 2 times by &3868[1], &483d[1]
.sub_c13d0
    lda l0e49                                                         ; 24d0: ad 49 0e    .I. :13d0[1]
    sta l0080                                                         ; 24d3: 85 80       ..  :13d3[1]
    lda l0e4a                                                         ; 24d5: ad 4a 0e    .J. :13d5[1]
    sta l0081                                                         ; 24d8: 85 81       ..  :13d8[1]
    lda l0e50                                                         ; 24da: ad 50 0e    .P. :13da[1]
    sta l0e54                                                         ; 24dd: 8d 54 0e    .T. :13dd[1]
; &24e0 referenced 1 time by &1405[1]
.c13e0
    ldy #0                                                            ; 24e0: a0 00       ..  :13e0[1]
    jsr sub_c0fe6                                                     ; 24e2: 20 e6 0f     .. :13e2[1]
    jsr sub_c0f64                                                     ; 24e5: 20 64 0f     d. :13e5[1]
    ldy #1                                                            ; 24e8: a0 01       ..  :13e8[1]
    lda (l0080),y                                                     ; 24ea: b1 80       ..  :13ea[1]
    sta l007a                                                         ; 24ec: 85 7a       .z  :13ec[1]
    ldy #3                                                            ; 24ee: a0 03       ..  :13ee[1]
    lda (l0080),y                                                     ; 24f0: b1 80       ..  :13f0[1]
    sta l007b                                                         ; 24f2: 85 7b       .{  :13f2[1]
    jsr sub_c0f64                                                     ; 24f4: 20 64 0f     d. :13f4[1]
    lda l0080                                                         ; 24f7: a5 80       ..  :13f7[1]
    clc                                                               ; 24f9: 18          .   :13f9[1]
    adc #4                                                            ; 24fa: 69 04       i.  :13fa[1]
    sta l0080                                                         ; 24fc: 85 80       ..  :13fc[1]
    bcc c1402                                                         ; 24fe: 90 02       ..  :13fe[1]
    inc l0081                                                         ; 2500: e6 81       ..  :1400[1]
; &2502 referenced 1 time by &13fe[1]
.c1402
    dec l0e54                                                         ; 2502: ce 54 0e    .T. :1402[1]
    bne c13e0                                                         ; 2505: d0 d9       ..  :1405[1]
    rts                                                               ; 2507: 60          `   :1407[1]

; &2508 referenced 3 times by &1a9e[1], &1bc5[1], &3235[1]
.c1408
    lda l0e56                                                         ; 2508: ad 56 0e    .V. :1408[1]
    beq c1458                                                         ; 250b: f0 4b       .K  :140b[1]
    lda #0                                                            ; 250d: a9 00       ..  :140d[1]
    sta l0e56                                                         ; 250f: 8d 56 0e    .V. :140f[1]
    jsr sub_c1438                                                     ; 2512: 20 38 14     8. :1412[1]
    jsr sub_c3019                                                     ; 2515: 20 19 30     .0 :1415[1]
    ldy #&1f                                                          ; 2518: a0 1f       ..  :1418[1]
    sty l007a                                                         ; 251a: 84 7a       .z  :141a[1]
    iny                                                               ; 251c: c8          .   :141c[1]   ; Y=&20
    sty l007b                                                         ; 251d: 84 7b       .{  :141d[1]
    inc l0079                                                         ; 251f: e6 79       .y  :141f[1]
    jsr sub_c0f0e                                                     ; 2521: 20 0e 0f     .. :1421[1]
    dec l0079                                                         ; 2524: c6 79       .y  :1424[1]
    jsr sub_c22bd                                                     ; 2526: 20 bd 22     ." :1426[1]
    rts                                                               ; 2529: 60          `   :1429[1]

    equb &ea                                                          ; 252a: ea          .   :142a[1]

; &252b referenced 4 times by &1a98[1], &1bbd[1], &28ca[1], &322d[1]
.c142b
    lda l0e56                                                         ; 252b: ad 56 0e    .V. :142b[1]
    bne c1458                                                         ; 252e: d0 28       .(  :142e[1]
    lda #1                                                            ; 2530: a9 01       ..  :1430[1]
    sta l0e56                                                         ; 2532: 8d 56 0e    .V. :1432[1]
    jsr sub_c22c9                                                     ; 2535: 20 c9 22     ." :1435[1]
; &2538 referenced 1 time by &1412[1]
.sub_c1438
    inc l0079                                                         ; 2538: e6 79       .y  :1438[1]
    lda #&3f ; '?'                                                    ; 253a: a9 3f       .?  :143a[1]
    sta l007a                                                         ; 253c: 85 7a       .z  :143c[1]
    lda #0                                                            ; 253e: a9 00       ..  :143e[1]
    sta l007b                                                         ; 2540: 85 7b       .{  :1440[1]
; &2542 referenced 1 time by &1447[1]
.loop_c1442
    jsr sub_c0f64                                                     ; 2542: 20 64 0f     d. :1442[1]
    dec l007a                                                         ; 2545: c6 7a       .z  :1445[1]
    bpl loop_c1442                                                    ; 2547: 10 f9       ..  :1447[1]
    lda #&3f ; '?'                                                    ; 2549: a9 3f       .?  :1449[1]
    sta l007b                                                         ; 254b: 85 7b       .{  :144b[1]
    sta l007a                                                         ; 254d: 85 7a       .z  :144d[1]
; &254f referenced 1 time by &1454[1]
.loop_c144f
    jsr sub_c0f64                                                     ; 254f: 20 64 0f     d. :144f[1]
    dec l007b                                                         ; 2552: c6 7b       .{  :1452[1]
    bne loop_c144f                                                    ; 2554: d0 f9       ..  :1454[1]
    dec l0079                                                         ; 2556: c6 79       .y  :1456[1]
; &2558 referenced 2 times by &140b[1], &142e[1]
.c1458
    rts                                                               ; 2558: 60          `   :1458[1]

    equb &ea                                                          ; 2559: ea          .   :1459[1]

; &255a referenced 3 times by &124c[1], &12d5[1], &135d[1]
.c145a
    ldy #2                                                            ; 255a: a0 02       ..  :145a[1]
    lda (l0080),y                                                     ; 255c: b1 80       ..  :145c[1]
    sta l007a                                                         ; 255e: 85 7a       .z  :145e[1]
    ldy #4                                                            ; 2560: a0 04       ..  :1460[1]
    lda (l0080),y                                                     ; 2562: b1 80       ..  :1462[1]
    sta l007b                                                         ; 2564: 85 7b       .{  :1464[1]
    jsr sub_c0f64                                                     ; 2566: 20 64 0f     d. :1466[1]
    lda l265b                                                         ; 2569: ad 5b 26    .[& :1469[1]
    beq c1471                                                         ; 256c: f0 03       ..  :146c[1]
    jmp c1362                                                         ; 256e: 4c 62 13    Lb. :146e[1]

; &2571 referenced 1 time by &146c[1]
.c1471
    ldy #2                                                            ; 2571: a0 02       ..  :1471[1]
    lda (l0082),y                                                     ; 2573: b1 82       ..  :1473[1]
    sta l007a                                                         ; 2575: 85 7a       .z  :1475[1]
    ldy #4                                                            ; 2577: a0 04       ..  :1477[1]
    lda (l0082),y                                                     ; 2579: b1 82       ..  :1479[1]
    sta l007b                                                         ; 257b: 85 7b       .{  :147b[1]
    jsr sub_c0f64                                                     ; 257d: 20 64 0f     d. :147d[1]
    ldy #1                                                            ; 2580: a0 01       ..  :1480[1]
    lda (l0080),y                                                     ; 2582: b1 80       ..  :1482[1]
    clc                                                               ; 2584: 18          .   :1484[1]
    adc (l0082),y                                                     ; 2585: 71 82       q.  :1485[1]
    iny                                                               ; 2587: c8          .   :1487[1]   ; Y=&02
    lda (l0080),y                                                     ; 2588: b1 80       ..  :1488[1]
    adc (l0082),y                                                     ; 258a: 71 82       q.  :148a[1]
    ror a                                                             ; 258c: 6a          j   :148c[1]
    sta l007a                                                         ; 258d: 85 7a       .z  :148d[1]
    iny                                                               ; 258f: c8          .   :148f[1]   ; Y=&03
    lda (l0080),y                                                     ; 2590: b1 80       ..  :1490[1]
    clc                                                               ; 2592: 18          .   :1492[1]
    adc (l0082),y                                                     ; 2593: 71 82       q.  :1493[1]
    iny                                                               ; 2595: c8          .   :1495[1]   ; Y=&04
    lda (l0080),y                                                     ; 2596: b1 80       ..  :1496[1]
    adc (l0082),y                                                     ; 2598: 71 82       q.  :1498[1]
    ror a                                                             ; 259a: 6a          j   :149a[1]
    sta l007b                                                         ; 259b: 85 7b       .{  :149b[1]
    jsr sub_c0f64                                                     ; 259d: 20 64 0f     d. :149d[1]
    rts                                                               ; 25a0: 60          `   :14a0[1]

    equs "INY"                                                        ; 25a1: 49 4e 59    INY :14a1[1]

; &25a4 referenced 1 time by &38c4[1]
.sub_c14a4
    lda #0                                                            ; 25a4: a9 00       ..  :14a4[1]
    sta l0e33                                                         ; 25a6: 8d 33 0e    .3. :14a6[1]
    ldx l0f03                                                         ; 25a9: ae 03 0f    ... :14a9[1]
    beq c14d1                                                         ; 25ac: f0 23       .#  :14ac[1]
    lda l0e32                                                         ; 25ae: ad 32 0e    .2. :14ae[1]
    ldy l0f02                                                         ; 25b1: ac 02 0f    ... :14b1[1]
    bpl c14c3                                                         ; 25b4: 10 0d       ..  :14b4[1]
; &25b6 referenced 1 time by &14bf[1]
.loop_c14b6
    clc                                                               ; 25b6: 18          .   :14b6[1]
    adc #&52 ; 'R'                                                    ; 25b7: 69 52       iR  :14b7[1]
    bcc c14be                                                         ; 25b9: 90 03       ..  :14b9[1]
    dec l0e33                                                         ; 25bb: ce 33 0e    .3. :14bb[1]
; &25be referenced 1 time by &14b9[1]
.c14be
    dex                                                               ; 25be: ca          .   :14be[1]
    bne loop_c14b6                                                    ; 25bf: d0 f5       ..  :14bf[1]
    beq c14ce                                                         ; 25c1: f0 0b       ..  :14c1[1]   ; ALWAYS branch

; &25c3 referenced 2 times by &14b4[1], &14cc[1]
.c14c3
    sec                                                               ; 25c3: 38          8   :14c3[1]
    sbc #&52 ; 'R'                                                    ; 25c4: e9 52       .R  :14c4[1]
    bcs c14cb                                                         ; 25c6: b0 03       ..  :14c6[1]
    inc l0e33                                                         ; 25c8: ee 33 0e    .3. :14c8[1]
; &25cb referenced 1 time by &14c6[1]
.c14cb
    dex                                                               ; 25cb: ca          .   :14cb[1]
    bne c14c3                                                         ; 25cc: d0 f5       ..  :14cc[1]
; &25ce referenced 1 time by &14c1[1]
.c14ce
    sta l0e32                                                         ; 25ce: 8d 32 0e    .2. :14ce[1]
; &25d1 referenced 1 time by &14ac[1]
.c14d1
    rts                                                               ; 25d1: 60          `   :14d1[1]

; &25d2 referenced 1 time by &3874[1]
.sub_c14d2
    lda #1                                                            ; 25d2: a9 01       ..  :14d2[1]
    sta l1ce0                                                         ; 25d4: 8d e0 1c    ... :14d4[1]
    lda l0e52                                                         ; 25d7: ad 52 0e    .R. :14d7[1]
    sta l0e55                                                         ; 25da: 8d 55 0e    .U. :14da[1]
    lda l0e3d                                                         ; 25dd: ad 3d 0e    .=. :14dd[1]
    sta l0080                                                         ; 25e0: 85 80       ..  :14e0[1]
    lda l0e3e                                                         ; 25e2: ad 3e 0e    .>. :14e2[1]
    sta l0081                                                         ; 25e5: 85 81       ..  :14e5[1]
; &25e7 referenced 1 time by &1599[1]
.c14e7
    ldy #0                                                            ; 25e7: a0 00       ..  :14e7[1]
    lda (l0080),y                                                     ; 25e9: b1 80       ..  :14e9[1]
    bne c14f0                                                         ; 25eb: d0 03       ..  :14eb[1]
    jmp c1589                                                         ; 25ed: 4c 89 15    L.. :14ed[1]

; &25f0 referenced 1 time by &14eb[1]
.c14f0
    sec                                                               ; 25f0: 38          8   :14f0[1]
    sbc #1                                                            ; 25f1: e9 01       ..  :14f1[1]
    sta (l0080),y                                                     ; 25f3: 91 80       ..  :14f3[1]
    bne c14fd                                                         ; 25f5: d0 06       ..  :14f5[1]
    jsr sub_c138a                                                     ; 25f7: 20 8a 13     .. :14f7[1]
    jmp c1589                                                         ; 25fa: 4c 89 15    L.. :14fa[1]

; &25fd referenced 1 time by &14f5[1]
.c14fd
    jsr sub_c1611                                                     ; 25fd: 20 11 16     .. :14fd[1]
    ldy #1                                                            ; 2600: a0 01       ..  :1500[1]
    jsr sub_c0fe6                                                     ; 2602: 20 e6 0f     .. :1502[1]
    ldy #5                                                            ; 2605: a0 05       ..  :1505[1]
    lda (l0080),y                                                     ; 2607: b1 80       ..  :1507[1]
    clc                                                               ; 2609: 18          .   :1509[1]
    adc l0e33                                                         ; 260a: 6d 33 0e    m3. :150a[1]
    sta (l0080),y                                                     ; 260d: 91 80       ..  :150d[1]
    lsr a                                                             ; 260f: 4a          J   :150f[1]
    lsr a                                                             ; 2610: 4a          J   :1510[1]
    lsr a                                                             ; 2611: 4a          J   :1511[1]
    tax                                                               ; 2612: aa          .   :1512[1]
    dey                                                               ; 2613: 88          .   :1513[1]   ; Y=&04
    lda l0e78,x                                                       ; 2614: bd 78 0e    .x. :1514[1]
    clc                                                               ; 2617: 18          .   :1517[1]
    adc (l0080),y                                                     ; 2618: 71 80       q.  :1518[1]
    sta (l0080),y                                                     ; 261a: 91 80       ..  :151a[1]
    sec                                                               ; 261c: 38          8   :151c[1]
    sbc l007b                                                         ; 261d: e5 7b       .{  :151d[1]
    bcs c1523                                                         ; 261f: b0 02       ..  :151f[1]
    eor #&ff                                                          ; 2621: 49 ff       I.  :1521[1]
; &2623 referenced 1 time by &151f[1]
.c1523
    cmp #&40 ; '@'                                                    ; 2623: c9 40       .@  :1523[1]
    bcs c153c                                                         ; 2625: b0 15       ..  :1525[1]
    ldy #2                                                            ; 2627: a0 02       ..  :1527[1]
    lda l0e58,x                                                       ; 2629: bd 58 0e    .X. :1529[1]
    clc                                                               ; 262c: 18          .   :152c[1]
    adc (l0080),y                                                     ; 262d: 71 80       q.  :152d[1]
    sta (l0080),y                                                     ; 262f: 91 80       ..  :152f[1]
    sec                                                               ; 2631: 38          8   :1531[1]
    sbc l007a                                                         ; 2632: e5 7a       .z  :1532[1]
    bcs c1538                                                         ; 2634: b0 02       ..  :1534[1]
    eor #&ff                                                          ; 2636: 49 ff       I.  :1536[1]
; &2638 referenced 1 time by &1534[1]
.c1538
    cmp #&40 ; '@'                                                    ; 2638: c9 40       .@  :1538[1]
    bcc c1544                                                         ; 263a: 90 08       ..  :153a[1]
; &263c referenced 1 time by &1525[1]
.c153c
    lda #0                                                            ; 263c: a9 00       ..  :153c[1]
    tay                                                               ; 263e: a8          .   :153e[1]
    sta (l0080),y                                                     ; 263f: 91 80       ..  :153f[1]
    jmp c1589                                                         ; 2641: 4c 89 15    L.. :1541[1]

; &2644 referenced 1 time by &153a[1]
.c1544
    lda (l0080),y                                                     ; 2644: b1 80       ..  :1544[1]
    cmp l25d5                                                         ; 2646: cd d5 25    ..% :1546[1]
    bcs c1573                                                         ; 2649: b0 28       .(  :1549[1]
    cmp l25d6                                                         ; 264b: cd d6 25    ..% :154b[1]
    bcc c1573                                                         ; 264e: 90 23       .#  :154e[1]
    ldy #4                                                            ; 2650: a0 04       ..  :1550[1]
    lda (l0080),y                                                     ; 2652: b1 80       ..  :1552[1]
    cmp l25d7                                                         ; 2654: cd d7 25    ..% :1554[1]
    bcs c1573                                                         ; 2657: b0 1a       ..  :1557[1]
    cmp l25d8                                                         ; 2659: cd d8 25    ..% :1559[1]
    bcc c1573                                                         ; 265c: 90 15       ..  :155c[1]
    jsr sub_c138a                                                     ; 265e: 20 8a 13     .. :155e[1]
    inc l1cdd                                                         ; 2661: ee dd 1c    ... :1561[1]
    lda l1cd9                                                         ; 2664: ad d9 1c    ... :1564[1]
    jsr sub_c1aa3                                                     ; 2667: 20 a3 1a     .. :1567[1]
    ldy #0                                                            ; 266a: a0 00       ..  :156a[1]
    lda #1                                                            ; 266c: a9 01       ..  :156c[1]
    sta (l0080),y                                                     ; 266e: 91 80       ..  :156e[1]
    jmp c1589                                                         ; 2670: 4c 89 15    L.. :1570[1]

; &2673 referenced 4 times by &1549[1], &154e[1], &1557[1], &155c[1]
.c1573
    jsr sub_c159d                                                     ; 2673: 20 9d 15     .. :1573[1]
    bcs c1589                                                         ; 2676: b0 11       ..  :1576[1]
    ldy #0                                                            ; 2678: a0 00       ..  :1578[1]
    lda (l0080),y                                                     ; 267a: b1 80       ..  :157a[1]
    cmp #2                                                            ; 267c: c9 02       ..  :157c[1]
    bcs c1586                                                         ; 267e: b0 06       ..  :157e[1]
    jsr sub_c138a                                                     ; 2680: 20 8a 13     .. :1580[1]
    jmp c1589                                                         ; 2683: 4c 89 15    L.. :1583[1]

; &2686 referenced 1 time by &157e[1]
.c1586
    jsr sub_c1611                                                     ; 2686: 20 11 16     .. :1586[1]
; &2689 referenced 6 times by &14ed[1], &14fa[1], &1541[1], &1570[1], &1576[1], &1583[1]
.c1589
    lda l0080                                                         ; 2689: a5 80       ..  :1589[1]
    clc                                                               ; 268b: 18          .   :158b[1]
    adc #6                                                            ; 268c: 69 06       i.  :158c[1]
    sta l0080                                                         ; 268e: 85 80       ..  :158e[1]
    bcc c1594                                                         ; 2690: 90 02       ..  :1590[1]
    inc l0081                                                         ; 2692: e6 81       ..  :1592[1]
; &2694 referenced 1 time by &1590[1]
.c1594
    dec l0e55                                                         ; 2694: ce 55 0e    .U. :1594[1]
    beq c159c                                                         ; 2697: f0 03       ..  :1597[1]
    jmp c14e7                                                         ; 2699: 4c e7 14    L.. :1599[1]

; &269c referenced 1 time by &1597[1]
.c159c
    rts                                                               ; 269c: 60          `   :159c[1]

; &269d referenced 4 times by &12c2[1], &1358[1], &1573[1], &295c[1]
.sub_c159d
    ldy #2                                                            ; 269d: a0 02       ..  :159d[1]
    lda (l0080),y                                                     ; 269f: b1 80       ..  :159f[1]
    sta l0084                                                         ; 26a1: 85 84       ..  :15a1[1]
    ldy #4                                                            ; 26a3: a0 04       ..  :15a3[1]
    lda (l0080),y                                                     ; 26a5: b1 80       ..  :15a5[1]
    sta l0085                                                         ; 26a7: 85 85       ..  :15a7[1]
    lda l0e4f                                                         ; 26a9: ad 4f 0e    .O. :15a9[1]
    sta l0e54                                                         ; 26ac: 8d 54 0e    .T. :15ac[1]
    ldx #0                                                            ; 26af: a2 00       ..  :15af[1]
; &26b1 referenced 1 time by &160d[1]
.c15b1
    lda l0480,x                                                       ; 26b1: bd 80 04    ... :15b1[1]
    bne c1605                                                         ; 26b4: d0 4f       .O  :15b4[1]
    lda l0482,x                                                       ; 26b6: bd 82 04    ... :15b6[1]
    sec                                                               ; 26b9: 38          8   :15b9[1]
    sbc l0084                                                         ; 26ba: e5 84       ..  :15ba[1]
    bcs c15c0                                                         ; 26bc: b0 02       ..  :15bc[1]
    eor #&ff                                                          ; 26be: 49 ff       I.  :15be[1]
; &26c0 referenced 1 time by &15bc[1]
.c15c0
    cmp l0e3a                                                         ; 26c0: cd 3a 0e    .:. :15c0[1]
    bcs c1605                                                         ; 26c3: b0 40       .@  :15c3[1]
    lda l0485,x                                                       ; 26c5: bd 85 04    ... :15c5[1]
    sec                                                               ; 26c8: 38          8   :15c8[1]
    sbc l0085                                                         ; 26c9: e5 85       ..  :15c9[1]
    bcs c15cf                                                         ; 26cb: b0 02       ..  :15cb[1]
    eor #&ff                                                          ; 26cd: 49 ff       I.  :15cd[1]
; &26cf referenced 1 time by &15cb[1]
.c15cf
    cmp l0e3a                                                         ; 26cf: cd 3a 0e    .:. :15cf[1]
    bcs c1605                                                         ; 26d2: b0 31       .1  :15d2[1]
    lda l0489,x                                                       ; 26d4: bd 89 04    ... :15d4[1]
    bne c15e3                                                         ; 26d7: d0 0a       ..  :15d7[1]
    lda l0409,x                                                       ; 26d9: bd 09 04    ... :15d9[1]
    cmp l0e37                                                         ; 26dc: cd 37 0e    .7. :15dc[1]
    bcs c15fa                                                         ; 26df: b0 19       ..  :15df[1]
    bcc c1605                                                         ; 26e1: 90 22       ."  :15e1[1]   ; ALWAYS branch

; &26e3 referenced 1 time by &15d7[1]
.c15e3
    inc l1cde                                                         ; 26e3: ee de 1c    ... :15e3[1]
    inc l0488,x                                                       ; 26e6: fe 88 04    ... :15e6[1]
    lda l1ce0                                                         ; 26e9: ad e0 1c    ... :15e9[1]
    beq c15f4                                                         ; 26ec: f0 06       ..  :15ec[1]
    lda l0e34                                                         ; 26ee: ad 34 0e    .4. :15ee[1]
    jmp c15f7                                                         ; 26f1: 4c f7 15    L.. :15f1[1]

; &26f4 referenced 1 time by &15ec[1]
.c15f4
    lda l1cdf                                                         ; 26f4: ad df 1c    ... :15f4[1]
; &26f7 referenced 1 time by &15f1[1]
.c15f7
    jsr sub_c1be7                                                     ; 26f7: 20 e7 1b     .. :15f7[1]
; &26fa referenced 1 time by &15df[1]
.c15fa
    ldy #0                                                            ; 26fa: a0 00       ..  :15fa[1]
    lda #1                                                            ; 26fc: a9 01       ..  :15fc[1]
    sta (l0080),y                                                     ; 26fe: 91 80       ..  :15fe[1]
    jsr sub_c138a                                                     ; 2700: 20 8a 13     .. :1600[1]
    sec                                                               ; 2703: 38          8   :1603[1]
    rts                                                               ; 2704: 60          `   :1604[1]

; &2705 referenced 4 times by &15b4[1], &15c3[1], &15d2[1], &15e1[1]
.c1605
    txa                                                               ; 2705: 8a          .   :1605[1]
    clc                                                               ; 2706: 18          .   :1606[1]
    adc #&0b                                                          ; 2707: 69 0b       i.  :1607[1]
    tax                                                               ; 2709: aa          .   :1609[1]
    dec l0e54                                                         ; 270a: ce 54 0e    .T. :160a[1]
    bne c15b1                                                         ; 270d: d0 a2       ..  :160d[1]
    clc                                                               ; 270f: 18          .   :160f[1]
    rts                                                               ; 2710: 60          `   :1610[1]

; &2711 referenced 2 times by &14fd[1], &1586[1]
.sub_c1611
    ldy #2                                                            ; 2711: a0 02       ..  :1611[1]
    lda (l0080),y                                                     ; 2713: b1 80       ..  :1613[1]
    sta l007a                                                         ; 2715: 85 7a       .z  :1615[1]
    ldy #4                                                            ; 2717: a0 04       ..  :1617[1]
    lda (l0080),y                                                     ; 2719: b1 80       ..  :1619[1]
    sta l007b                                                         ; 271b: 85 7b       .{  :161b[1]
    jsr sub_c0f64                                                     ; 271d: 20 64 0f     d. :161d[1]
    rts                                                               ; 2720: 60          `   :1620[1]

    equb &e6                                                          ; 2721: e6          .   :1621[1]
    equs "z d"                                                        ; 2722: 7a 20 64    z d :1622[1]
    equb &0f, &e6                                                     ; 2725: 0f e6       ..  :1625[1]
    equs "{ d"                                                        ; 2727: 7b 20 64    { d :1627[1]
    equb &0f, &c6                                                     ; 272a: 0f c6       ..  :162a[1]
    equs "z d"                                                        ; 272c: 7a 20 64    z d :162c[1]
    equb &0f, &60                                                     ; 272f: 0f 60       .`  :162f[1]

; &2731 referenced 1 time by &384a[1]
.sub_c1631
    lda l0e4f                                                         ; 2731: ad 4f 0e    .O. :1631[1]
    sta l0e54                                                         ; 2734: 8d 54 0e    .T. :1634[1]
    ldx #0                                                            ; 2737: a2 00       ..  :1637[1]
; &2739 referenced 1 time by &16eb[1]
.c1639
    jsr sub_c10fb                                                     ; 2739: 20 fb 10     .. :1639[1]
    lda l0407,x                                                       ; 273c: bd 07 04    ... :163c[1]
    clc                                                               ; 273f: 18          .   :163f[1]
    adc l0e33                                                         ; 2740: 6d 33 0e    m3. :1640[1]
    sta l0487,x                                                       ; 2743: 9d 87 04    ... :1643[1]
    lda l0408,x                                                       ; 2746: bd 08 04    ... :1646[1]
    sta l0088                                                         ; 2749: 85 88       ..  :1649[1]
    beq c16cc                                                         ; 274b: f0 7f       ..  :164b[1]
    lda l0407,x                                                       ; 274d: bd 07 04    ... :164d[1]
    lsr a                                                             ; 2750: 4a          J   :1650[1]
    lsr a                                                             ; 2751: 4a          J   :1651[1]
    lsr a                                                             ; 2752: 4a          J   :1652[1]
    tay                                                               ; 2753: a8          .   :1653[1]
    lda l0e58,y                                                       ; 2754: b9 58 0e    .X. :1654[1]
    sta l0084                                                         ; 2757: 85 84       ..  :1657[1]
    lda l0e78,y                                                       ; 2759: b9 78 0e    .x. :1659[1]
    sta l0085                                                         ; 275c: 85 85       ..  :165c[1]
    ldy #5                                                            ; 275e: a0 05       ..  :165e[1]
    lda #0                                                            ; 2760: a9 00       ..  :1660[1]
    sta l0075                                                         ; 2762: 85 75       .u  :1662[1]
; &2764 referenced 1 time by &166f[1]
.loop_c1664
    lsr l0084                                                         ; 2764: 46 84       F.  :1664[1]
    bcc c166b                                                         ; 2766: 90 03       ..  :1666[1]
    clc                                                               ; 2768: 18          .   :1668[1]
    adc l0088                                                         ; 2769: 65 88       e.  :1669[1]
; &276b referenced 1 time by &1666[1]
.c166b
    ror a                                                             ; 276b: 6a          j   :166b[1]
    ror l0075                                                         ; 276c: 66 75       fu  :166c[1]
    dey                                                               ; 276e: 88          .   :166e[1]
    bne loop_c1664                                                    ; 276f: d0 f3       ..  :166f[1]
    tay                                                               ; 2771: a8          .   :1671[1]
    lda l0481,x                                                       ; 2772: bd 81 04    ... :1672[1]
    adc l0075                                                         ; 2775: 65 75       eu  :1675[1]
    sta l0481,x                                                       ; 2777: 9d 81 04    ... :1677[1]
    tya                                                               ; 277a: 98          .   :167a[1]
    adc l0482,x                                                       ; 277b: 7d 82 04    }.. :167b[1]
    sta l0482,x                                                       ; 277e: 9d 82 04    ... :167e[1]
    bcc c1686                                                         ; 2781: 90 03       ..  :1681[1]
    inc l0483,x                                                       ; 2783: fe 83 04    ... :1683[1]
; &2786 referenced 1 time by &1681[1]
.c1686
    ldy l0084                                                         ; 2786: a4 84       ..  :1686[1]
    beq c1695                                                         ; 2788: f0 0b       ..  :1688[1]
    sec                                                               ; 278a: 38          8   :168a[1]
    sbc l0088                                                         ; 278b: e5 88       ..  :168b[1]
    sta l0482,x                                                       ; 278d: 9d 82 04    ... :168d[1]
    bcs c1695                                                         ; 2790: b0 03       ..  :1690[1]
    dec l0483,x                                                       ; 2792: de 83 04    ... :1692[1]
; &2795 referenced 2 times by &1688[1], &1690[1]
.c1695
    ldy #5                                                            ; 2795: a0 05       ..  :1695[1]
    lda #0                                                            ; 2797: a9 00       ..  :1697[1]
    sta l0075                                                         ; 2799: 85 75       .u  :1699[1]
; &279b referenced 1 time by &16a6[1]
.loop_c169b
    lsr l0085                                                         ; 279b: 46 85       F.  :169b[1]
    bcc c16a2                                                         ; 279d: 90 03       ..  :169d[1]
    clc                                                               ; 279f: 18          .   :169f[1]
    adc l0088                                                         ; 27a0: 65 88       e.  :16a0[1]
; &27a2 referenced 1 time by &169d[1]
.c16a2
    ror a                                                             ; 27a2: 6a          j   :16a2[1]
    ror l0075                                                         ; 27a3: 66 75       fu  :16a3[1]
    dey                                                               ; 27a5: 88          .   :16a5[1]
    bne loop_c169b                                                    ; 27a6: d0 f3       ..  :16a6[1]
    tay                                                               ; 27a8: a8          .   :16a8[1]
    lda l0484,x                                                       ; 27a9: bd 84 04    ... :16a9[1]
    adc l0075                                                         ; 27ac: 65 75       eu  :16ac[1]
    sta l0484,x                                                       ; 27ae: 9d 84 04    ... :16ae[1]
    tya                                                               ; 27b1: 98          .   :16b1[1]
    adc l0485,x                                                       ; 27b2: 7d 85 04    }.. :16b2[1]
    sta l0485,x                                                       ; 27b5: 9d 85 04    ... :16b5[1]
    bcc c16bd                                                         ; 27b8: 90 03       ..  :16b8[1]
    inc l0486,x                                                       ; 27ba: fe 86 04    ... :16ba[1]
; &27bd referenced 1 time by &16b8[1]
.c16bd
    ldy l0085                                                         ; 27bd: a4 85       ..  :16bd[1]
    beq c16cc                                                         ; 27bf: f0 0b       ..  :16bf[1]
    sec                                                               ; 27c1: 38          8   :16c1[1]
    sbc l0088                                                         ; 27c2: e5 88       ..  :16c2[1]
    sta l0485,x                                                       ; 27c4: 9d 85 04    ... :16c4[1]
    bcs c16cc                                                         ; 27c7: b0 03       ..  :16c7[1]
    dec l0486,x                                                       ; 27c9: de 86 04    ... :16c9[1]
; &27cc referenced 3 times by &164b[1], &16bf[1], &16c7[1]
.c16cc
    lda #&7f                                                          ; 27cc: a9 7f       ..  :16cc[1]
    cmp l0483,x                                                       ; 27ce: dd 83 04    ... :16ce[1]
    bne c16dc                                                         ; 27d1: d0 09       ..  :16d1[1]
    cmp l0486,x                                                       ; 27d3: dd 86 04    ... :16d3[1]
    bne c16dc                                                         ; 27d6: d0 04       ..  :16d6[1]
    lda #0                                                            ; 27d8: a9 00       ..  :16d8[1]
    beq c16de                                                         ; 27da: f0 02       ..  :16da[1]   ; ALWAYS branch

; &27dc referenced 2 times by &16d1[1], &16d6[1]
.c16dc
    lda #1                                                            ; 27dc: a9 01       ..  :16dc[1]
; &27de referenced 1 time by &16da[1]
.c16de
    sta l0480,x                                                       ; 27de: 9d 80 04    ... :16de[1]
    txa                                                               ; 27e1: 8a          .   :16e1[1]
    clc                                                               ; 27e2: 18          .   :16e2[1]
    adc #&0b                                                          ; 27e3: 69 0b       i.  :16e3[1]
    tax                                                               ; 27e5: aa          .   :16e5[1]
    dec l0e54                                                         ; 27e6: ce 54 0e    .T. :16e6[1]
    beq c16ee                                                         ; 27e9: f0 03       ..  :16e9[1]
    jmp c1639                                                         ; 27eb: 4c 39 16    L9. :16eb[1]

; &27ee referenced 1 time by &16e9[1]
.c16ee
    rts                                                               ; 27ee: 60          `   :16ee[1]

    equb &ea, &ea, &ea                                                ; 27ef: ea ea ea    ... :16ef[1]

; &27f2 referenced 2 times by &3598[1], &3865[1]
.sub_c16f2
    lda l0e4f                                                         ; 27f2: ad 4f 0e    .O. :16f2[1]
    sta l0e54                                                         ; 27f5: 8d 54 0e    .T. :16f5[1]
    ldx #0                                                            ; 27f8: a2 00       ..  :16f8[1]
; &27fa referenced 1 time by &1798[1]
.c16fa
    lda l0400,x                                                       ; 27fa: bd 00 04    ... :16fa[1]
    sta l0e2e                                                         ; 27fd: 8d 2e 0e    ... :16fd[1]
    lda l0489,x                                                       ; 2800: bd 89 04    ... :1700[1]
    bne c1729                                                         ; 2803: d0 24       .$  :1703[1]
    ldy l0e54                                                         ; 2805: ac 54 0e    .T. :1705[1]
    lda l1ce1,y                                                       ; 2808: b9 e1 1c    ... :1708[1]
    tay                                                               ; 280b: a8          .   :170b[1]
    lda l1cf6,y                                                       ; 280c: b9 f6 1c    ... :170c[1]
    sta l0086                                                         ; 280f: 85 86       ..  :170f[1]
    lda l1d07,y                                                       ; 2811: b9 07 1d    ... :1711[1]
    sta l0087                                                         ; 2814: 85 87       ..  :1714[1]
    lda l0e2e                                                         ; 2816: ad 2e 0e    ... :1716[1]
    bne c1721                                                         ; 2819: d0 06       ..  :1719[1]
    dec l0e2e                                                         ; 281b: ce 2e 0e    ... :171b[1]
    jsr sub_c1fb4                                                     ; 281e: 20 b4 1f     .. :171e[1]
; &2821 referenced 1 time by &1719[1]
.c1721
    dec l0409,x                                                       ; 2821: de 09 04    ... :1721[1]
    bne c1729                                                         ; 2824: d0 03       ..  :1724[1]
    jsr sub_c33d2                                                     ; 2826: 20 d2 33     .3 :1726[1]
; &2829 referenced 2 times by &1703[1], &1724[1]
.c1729
    lda l0480,x                                                       ; 2829: bd 80 04    ... :1729[1]
    sta l0e2f                                                         ; 282c: 8d 2f 0e    ./. :172c[1]
    bne c173b                                                         ; 282f: d0 0a       ..  :172f[1]
    lda l0489,x                                                       ; 2831: bd 89 04    ... :1731[1]
    bne c173e                                                         ; 2834: d0 08       ..  :1734[1]
    dec l0e2f                                                         ; 2836: ce 2f 0e    ./. :1736[1]
    bne c173e                                                         ; 2839: d0 03       ..  :1739[1]
; &283b referenced 1 time by &172f[1]
.c173b
    inc l0e2d                                                         ; 283b: ee 2d 0e    .-. :173b[1]
; &283e referenced 2 times by &1734[1], &1739[1]
.c173e
    lda l0e2e                                                         ; 283e: ad 2e 0e    ... :173e[1]
    beq c174b                                                         ; 2841: f0 08       ..  :1741[1]
    bmi c174e                                                         ; 2843: 30 09       0.  :1743[1]
    inc l0e2d                                                         ; 2845: ee 2d 0e    .-. :1745[1]
    jmp c174e                                                         ; 2848: 4c 4e 17    LN. :1748[1]

; &284b referenced 1 time by &1741[1]
.c174b
    jsr sub_c1bfc                                                     ; 284b: 20 fc 1b     .. :174b[1]
; &284e referenced 2 times by &1743[1], &1748[1]
.c174e
    lda l0487,x                                                       ; 284e: bd 87 04    ... :174e[1]
    sta l0407,x                                                       ; 2851: 9d 07 04    ... :1751[1]
    lda l0485,x                                                       ; 2854: bd 85 04    ... :1754[1]
    sta l0405,x                                                       ; 2857: 9d 05 04    ... :1757[1]
    lda l0482,x                                                       ; 285a: bd 82 04    ... :175a[1]
    sta l0402,x                                                       ; 285d: 9d 02 04    ... :175d[1]
    lda l0e2f                                                         ; 2860: ad 2f 0e    ./. :1760[1]
    beq c176d                                                         ; 2863: f0 08       ..  :1763[1]
    bpl c1770                                                         ; 2865: 10 09       ..  :1765[1]
    jsr sub_c200c                                                     ; 2867: 20 0c 20     .  :1767[1]
    jmp c1770                                                         ; 286a: 4c 70 17    Lp. :176a[1]

; &286d referenced 1 time by &1763[1]
.c176d
    jsr sub_c1bfc                                                     ; 286d: 20 fc 1b     .. :176d[1]
; &2870 referenced 2 times by &1765[1], &176a[1]
.c1770
    lda l0480,x                                                       ; 2870: bd 80 04    ... :1770[1]
    sta l0400,x                                                       ; 2873: 9d 00 04    ... :1773[1]
    lda l0486,x                                                       ; 2876: bd 86 04    ... :1776[1]
    sta l0406,x                                                       ; 2879: 9d 06 04    ... :1779[1]
    lda l0484,x                                                       ; 287c: bd 84 04    ... :177c[1]
    sta l0404,x                                                       ; 287f: 9d 04 04    ... :177f[1]
    lda l0483,x                                                       ; 2882: bd 83 04    ... :1782[1]
    sta l0403,x                                                       ; 2885: 9d 03 04    ... :1785[1]
    lda l0481,x                                                       ; 2888: bd 81 04    ... :1788[1]
    sta l0401,x                                                       ; 288b: 9d 01 04    ... :178b[1]
    txa                                                               ; 288e: 8a          .   :178e[1]
    clc                                                               ; 288f: 18          .   :178f[1]
    adc #&0b                                                          ; 2890: 69 0b       i.  :1790[1]
    tax                                                               ; 2892: aa          .   :1792[1]
    dec l0e54                                                         ; 2893: ce 54 0e    .T. :1793[1]
    beq c179b                                                         ; 2896: f0 03       ..  :1796[1]
    jmp c16fa                                                         ; 2898: 4c fa 16    L.. :1798[1]

; &289b referenced 1 time by &1796[1]
.c179b
    rts                                                               ; 289b: 60          `   :179b[1]

; &289c referenced 1 time by &388b[1]
.sub_c179c
    ldx #2                                                            ; 289c: a2 02       ..  :179c[1]
; &289e referenced 1 time by &17a4[1]
.loop_c179e
    ldy #&7f                                                          ; 289e: a0 7f       ..  :179e[1]
; &28a0 referenced 1 time by &17a1[1]
.loop_c17a0
    dey                                                               ; 28a0: 88          .   :17a0[1]
    bne loop_c17a0                                                    ; 28a1: d0 fd       ..  :17a1[1]
    dex                                                               ; 28a3: ca          .   :17a3[1]
    bne loop_c179e                                                    ; 28a4: d0 f8       ..  :17a4[1]
    rts                                                               ; 28a6: 60          `   :17a6[1]

    equb &ea, &ea, &ea                                                ; 28a7: ea ea ea    ... :17a7[1]
    equs "#128:STA"                                                   ; 28aa: 23 31 32... #12 :17aa[1]
; &28b2 referenced 1 time by &45ba[1]
.l17b2
    equb &1f, &22, &18                                                ; 28b2: 1f 22 18    .". :17b2[1]
    equs " ON "                                                       ; 28b5: 20 4f 4e...  ON :17b5[1]
    equb &1f, &22, &18                                                ; 28b9: 1f 22 18    .". :17b9[1]
    equs " OFF"                                                       ; 28bc: 20 4f 46...  OF :17bc[1]
    equb &1f, &22, &18                                                ; 28c0: 1f 22 18    .". :17c0[1]
    equs "AUTO"                                                       ; 28c3: 41 55 54... AUT :17c3[1]
    equb &1f, &20, &18                                                ; 28c7: 1f 20 18    . . :17c7[1]
    equs "Sh:~"                                                       ; 28ca: 53 68 3a... Sh: :17ca[1]
    equb &0d, &44, &59                                                ; 28ce: 0d 44 59    .DY :17ce[1]
; &28d1 referenced 3 times by &1894[1], &258b[1], &3844[1]
.l17d1
    equb 0, 0, 0, 0, 0, 0, 0                                          ; 28d1: 00 00 00... ... :17d1[1]

; &28d8 referenced 1 time by &3852[1]
.sub_c17d8
    lda l0e4f                                                         ; 28d8: ad 4f 0e    .O. :17d8[1]
    sta l0e54                                                         ; 28db: 8d 54 0e    .T. :17db[1]
    lda #0                                                            ; 28de: a9 00       ..  :17de[1]
    sta l0080                                                         ; 28e0: 85 80       ..  :17e0[1]
; &28e2 referenced 1 time by &18e0[1]
.c17e2
    ldx l0080                                                         ; 28e2: a6 80       ..  :17e2[1]
    lda l0480,x                                                       ; 28e4: bd 80 04    ... :17e4[1]
    bne c17f6                                                         ; 28e7: d0 0d       ..  :17e7[1]
    lda l0489,x                                                       ; 28e9: bd 89 04    ... :17e9[1]
    bne c17f9                                                         ; 28ec: d0 0b       ..  :17ec[1]
    lda l0409,x                                                       ; 28ee: bd 09 04    ... :17ee[1]
    cmp l0e37                                                         ; 28f1: cd 37 0e    .7. :17f1[1]
    bcs c17f9                                                         ; 28f4: b0 03       ..  :17f4[1]
; &28f6 referenced 1 time by &17e7[1]
.c17f6
    jmp c18d4                                                         ; 28f6: 4c d4 18    L.. :17f6[1]

; &28f9 referenced 2 times by &17ec[1], &17f4[1]
.c17f9
    lda l1cc9                                                         ; 28f9: ad c9 1c    ... :17f9[1]
    beq c1806                                                         ; 28fc: f0 08       ..  :17fc[1]
    lda l1cce                                                         ; 28fe: ad ce 1c    ... :17fe[1]
    cmp l25df                                                         ; 2901: cd df 25    ..% :1801[1]
    bcc c1844                                                         ; 2904: 90 3e       .>  :1804[1]
; &2906 referenced 1 time by &17fc[1]
.c1806
    lda l0482,x                                                       ; 2906: bd 82 04    ... :1806[1]
    cmp l25d9                                                         ; 2909: cd d9 25    ..% :1809[1]
    bcs c1844                                                         ; 290c: b0 36       .6  :180c[1]
    cmp l25da                                                         ; 290e: cd da 25    ..% :180e[1]
    bcc c1844                                                         ; 2911: 90 31       .1  :1811[1]
    lda l0485,x                                                       ; 2913: bd 85 04    ... :1813[1]
    cmp l25db                                                         ; 2916: cd db 25    ..% :1816[1]
    bcs c1844                                                         ; 2919: b0 29       .)  :1819[1]
    cmp l25dc                                                         ; 291b: cd dc 25    ..% :181b[1]
    bcc c1844                                                         ; 291e: 90 24       .$  :181e[1]
    lda l0489,x                                                       ; 2920: bd 89 04    ... :1820[1]
    beq c183d                                                         ; 2923: f0 18       ..  :1823[1]
    pha                                                               ; 2925: 48          H   :1825[1]
    inc l25de                                                         ; 2926: ee de 25    ..% :1826[1]
    lda #0                                                            ; 2929: a9 00       ..  :1829[1]
    sta l0489,x                                                       ; 292b: 9d 89 04    ... :182b[1]
    jsr sub_c1f5d                                                     ; 292e: 20 5d 1f     ]. :182e[1]
    pla                                                               ; 2931: 68          h   :1831[1]
    lsr a                                                             ; 2932: 4a          J   :1832[1]
    clc                                                               ; 2933: 18          .   :1833[1]
    adc l0e30                                                         ; 2934: 6d 30 0e    m0. :1834[1]
    bcc c1841                                                         ; 2937: 90 08       ..  :1837[1]
    lda #&ff                                                          ; 2939: a9 ff       ..  :1839[1]
    bne c1841                                                         ; 293b: d0 04       ..  :183b[1]   ; ALWAYS branch

; &293d referenced 1 time by &1823[1]
.c183d
    lda l0409,x                                                       ; 293d: bd 09 04    ... :183d[1]
    lsr a                                                             ; 2940: 4a          J   :1840[1]
; &2941 referenced 2 times by &1837[1], &183b[1]
.c1841
    jsr sub_c1aa3                                                     ; 2941: 20 a3 1a     .. :1841[1]
; &2944 referenced 5 times by &1804[1], &180c[1], &1811[1], &1819[1], &181e[1]
.c1844
    stx l0082                                                         ; 2944: 86 82       ..  :1844[1]
    ldx l0e54                                                         ; 2946: ae 54 0e    .T. :1846[1]
    dex                                                               ; 2949: ca          .   :1849[1]
    stx l0e55                                                         ; 294a: 8e 55 0e    .U. :184a[1]
    bne c1850                                                         ; 294d: d0 01       ..  :184d[1]
    rts                                                               ; 294f: 60          `   :184f[1]

; &2950 referenced 2 times by &184d[1], &18d1[1]
.c1850
    lda l0082                                                         ; 2950: a5 82       ..  :1850[1]
    clc                                                               ; 2952: 18          .   :1852[1]
    adc #&0b                                                          ; 2953: 69 0b       i.  :1853[1]
    sta l0082                                                         ; 2955: 85 82       ..  :1855[1]
    tax                                                               ; 2957: aa          .   :1857[1]
    lda l0480,x                                                       ; 2958: bd 80 04    ... :1858[1]
    bne c18cc                                                         ; 295b: d0 6f       .o  :185b[1]
    ldy l0080                                                         ; 295d: a4 80       ..  :185d[1]
    lda l0482,x                                                       ; 295f: bd 82 04    ... :185f[1]
    sec                                                               ; 2962: 38          8   :1862[1]
    sbc l0482,y                                                       ; 2963: f9 82 04    ... :1863[1]
    bcs c186a                                                         ; 2966: b0 02       ..  :1866[1]
    eor #&ff                                                          ; 2968: 49 ff       I.  :1868[1]
; &296a referenced 1 time by &1866[1]
.c186a
    cmp l0e3b                                                         ; 296a: cd 3b 0e    .;. :186a[1]
    bcs c18cc                                                         ; 296d: b0 5d       .]  :186d[1]
    sta l25e0                                                         ; 296f: 8d e0 25    ..% :186f[1]
    lda l0485,x                                                       ; 2972: bd 85 04    ... :1872[1]
    sec                                                               ; 2975: 38          8   :1875[1]
    sbc l0485,y                                                       ; 2976: f9 85 04    ... :1876[1]
    bcs c187d                                                         ; 2979: b0 02       ..  :1879[1]
    eor #&ff                                                          ; 297b: 49 ff       I.  :187b[1]
; &297d referenced 1 time by &1879[1]
.c187d
    cmp l0e3b                                                         ; 297d: cd 3b 0e    .;. :187d[1]
    bcs c18cc                                                         ; 2980: b0 4a       .J  :1880[1]
    sta l25e1                                                         ; 2982: 8d e1 25    ..% :1882[1]
    lda l0489,x                                                       ; 2985: bd 89 04    ... :1885[1]
    bne c1894                                                         ; 2988: d0 0a       ..  :1888[1]
    lda l0409,x                                                       ; 298a: bd 09 04    ... :188a[1]
    cmp l0e37                                                         ; 298d: cd 37 0e    .7. :188d[1]
    bcs c18c9                                                         ; 2990: b0 37       .7  :1890[1]
    bcc c18cc                                                         ; 2992: 90 38       .8  :1892[1]   ; ALWAYS branch

; &2994 referenced 1 time by &1888[1]
.c1894
    inc l17d1                                                         ; 2994: ee d1 17    ... :1894[1]
    sec                                                               ; 2997: 38          8   :1897[1]
    sbc l0e31                                                         ; 2998: ed 31 0e    .1. :1898[1]
    bcs c189f                                                         ; 299b: b0 02       ..  :189b[1]
    lda #0                                                            ; 299d: a9 00       ..  :189d[1]
; &299f referenced 1 time by &189b[1]
.c189f
    sta l0489,x                                                       ; 299f: 9d 89 04    ... :189f[1]
    bne c18b8                                                         ; 29a2: d0 14       ..  :18a2[1]
    lda l0e54                                                         ; 29a4: ad 54 0e    .T. :18a4[1]
    pha                                                               ; 29a7: 48          H   :18a7[1]
    lda l0e55                                                         ; 29a8: ad 55 0e    .U. :18a8[1]
    sta l0e54                                                         ; 29ab: 8d 54 0e    .T. :18ab[1]
    jsr sub_c1f5d                                                     ; 29ae: 20 5d 1f     ]. :18ae[1]
    pla                                                               ; 29b1: 68          h   :18b1[1]
    sta l0e54                                                         ; 29b2: 8d 54 0e    .T. :18b2[1]
    inc l25dd                                                         ; 29b5: ee dd 25    ..% :18b5[1]
; &29b8 referenced 1 time by &18a2[1]
.c18b8
    lda l040a,x                                                       ; 29b8: bd 0a 04    ... :18b8[1]
    cmp #4                                                            ; 29bb: c9 04       ..  :18bb[1]
    bcc c18c9                                                         ; 29bd: 90 0a       ..  :18bd[1]
    and #3                                                            ; 29bf: 29 03       ).  :18bf[1]
    sta l040a,x                                                       ; 29c1: 9d 0a 04    ... :18c1[1]
    lda #1                                                            ; 29c4: a9 01       ..  :18c4[1]
    sta l0400,x                                                       ; 29c6: 9d 00 04    ... :18c6[1]
; &29c9 referenced 2 times by &1890[1], &18bd[1]
.c18c9
    jmp c27e0                                                         ; 29c9: 4c e0 27    L.' :18c9[1]

; &29cc referenced 5 times by &185b[1], &186d[1], &1880[1], &1892[1], &288c[1]
.c18cc
    dec l0e55                                                         ; 29cc: ce 55 0e    .U. :18cc[1]
    beq c18d4                                                         ; 29cf: f0 03       ..  :18cf[1]
    jmp c1850                                                         ; 29d1: 4c 50 18    LP. :18d1[1]

; &29d4 referenced 2 times by &17f6[1], &18cf[1]
.c18d4
    lda l0080                                                         ; 29d4: a5 80       ..  :18d4[1]
    clc                                                               ; 29d6: 18          .   :18d6[1]
    adc #&0b                                                          ; 29d7: 69 0b       i.  :18d7[1]
    sta l0080                                                         ; 29d9: 85 80       ..  :18d9[1]
    dec l0e54                                                         ; 29db: ce 54 0e    .T. :18db[1]
    beq c18e3                                                         ; 29de: f0 03       ..  :18de[1]
    jmp c17e2                                                         ; 29e0: 4c e2 17    L.. :18e0[1]

; &29e3 referenced 1 time by &18de[1]
.c18e3
    rts                                                               ; 29e3: 60          `   :18e3[1]

; &29e4 referenced 10 times by &1915[1], &1c63[1], &1c77[1], &1c8b[1], &1cb3[1], &1cc3[1], &1ec2[1], &20d9[1], &20ed[1], &210b[1]
.c18e4
    jsr sub_c0f4a                                                     ; 29e4: 20 4a 0f     J. :18e4[1]
    ldy l0078                                                         ; 29e7: a4 78       .x  :18e7[1]
    lda l0e98,y                                                       ; 29e9: b9 98 0e    ... :18e9[1]
    lsr a                                                             ; 29ec: 4a          J   :18ec[1]
    bcc c18f6                                                         ; 29ed: 90 07       ..  :18ed[1]
    lsr a                                                             ; 29ef: 4a          J   :18ef[1]
    bcs c18f9                                                         ; 29f0: b0 07       ..  :18f0[1]
    dec l007a                                                         ; 29f2: c6 7a       .z  :18f2[1]
    bcc c18fb                                                         ; 29f4: 90 05       ..  :18f4[1]   ; ALWAYS branch

; &29f6 referenced 1 time by &18ed[1]
.c18f6
    lsr a                                                             ; 29f6: 4a          J   :18f6[1]
    bcc c18fb                                                         ; 29f7: 90 02       ..  :18f7[1]
; &29f9 referenced 1 time by &18f0[1]
.c18f9
    inc l007a                                                         ; 29f9: e6 7a       .z  :18f9[1]
; &29fb referenced 2 times by &18f4[1], &18f7[1]
.c18fb
    lsr a                                                             ; 29fb: 4a          J   :18fb[1]
    bcc c1905                                                         ; 29fc: 90 07       ..  :18fc[1]
    lsr a                                                             ; 29fe: 4a          J   :18fe[1]
    bcs c1908                                                         ; 29ff: b0 07       ..  :18ff[1]
    dec l007b                                                         ; 2a01: c6 7b       .{  :1901[1]
    bcc c190a                                                         ; 2a03: 90 05       ..  :1903[1]   ; ALWAYS branch

; &2a05 referenced 1 time by &18fc[1]
.c1905
    lsr a                                                             ; 2a05: 4a          J   :1905[1]
    bcc c190a                                                         ; 2a06: 90 02       ..  :1906[1]
; &2a08 referenced 1 time by &18ff[1]
.c1908
    inc l007b                                                         ; 2a08: e6 7b       .{  :1908[1]
; &2a0a referenced 2 times by &1903[1], &1906[1]
.c190a
    lda l0078                                                         ; 2a0a: a5 78       .x  :190a[1]
    clc                                                               ; 2a0c: 18          .   :190c[1]
    adc l0072                                                         ; 2a0d: 65 72       er  :190d[1]
    and #&1f                                                          ; 2a0f: 29 1f       ).  :190f[1]
    sta l0078                                                         ; 2a11: 85 78       .x  :1911[1]
    dec l0074                                                         ; 2a13: c6 74       .t  :1913[1]
    bne c18e4                                                         ; 2a15: d0 cd       ..  :1915[1]
    rts                                                               ; 2a17: 60          `   :1917[1]

; &2a18 referenced 4 times by &194d[1], &1952[1], &1a46[1], &1a5f[1]
.l1918
    equb 0                                                            ; 2a18: 00          .   :1918[1]
; &2a19 referenced 1 time by &1a5c[1]
.l1919
    equb 1                                                            ; 2a19: 01          .   :1919[1]
; &2a1a referenced 4 times by &1947[1], &1a41[1], &2387[1], &490c[1]
.l191a
    equb 0, 0                                                         ; 2a1a: 00 00       ..  :191a[1]
; &2a1c referenced 9 times by &1ad1[1], &1ad8[1], &1ae4[1], &1aeb[1], &1afd[1], &1b0b[1], &1b19[1], &1b2c[1], &3567[1]
.l191c
    equb 0                                                            ; 2a1c: 00          .   :191c[1]
; &2a1d referenced 8 times by &1adb[1], &1ae1[1], &1af0[1], &1af3[1], &1b00[1], &1b14[1], &1b27[1], &3562[1]
.l191d
    equb 0                                                            ; 2a1d: 00          .   :191d[1]
; &2a1e referenced 8 times by &1aae[1], &1ab4[1], &1ac3[1], &1ade[1], &1b21[1], &2909[1], &3168[1], &3518[1]
.l191e
    equb 0                                                            ; 2a1e: 00          .   :191e[1]
; &2a1f referenced 6 times by &1abb[1], &1abe[1], &1ad5[1], &1b1e[1], &3161[1], &351b[1]
.l191f
    equb 0                                                            ; 2a1f: 00          .   :191f[1]
; &2a20 referenced 3 times by &1961[1], &1b24[1], &1b40[1]
.l1920
    equb 0                                                            ; 2a20: 00          .   :1920[1]
; &2a21 referenced 1 time by &1b3b[1]
.l1921
    equb 4                                                            ; 2a21: 04          .   :1921[1]
; &2a22 referenced 6 times by &1b43[1], &1b48[1], &1b4b[1], &25f8[1], &261e[1], &351e[1]
.l1922
    equb 0                                                            ; 2a22: 00          .   :1922[1]
; &2a23 referenced 2 times by &1ae8[1], &38b0[1]
.l1923
    equb 0                                                            ; 2a23: 00          .   :1923[1]
; &2a24 referenced 5 times by &1a73[1], &1a8a[1], &23f2[1], &355d[1], &45b1[1]
.l1924
    equb 0                                                            ; 2a24: 00          .   :1924[1]
; &2a25 referenced 2 times by &1aa3[1], &1ab7[1]
.l1925
    equb 0                                                            ; 2a25: 00          .   :1925[1]
; &2a26 referenced 4 times by &194a[1], &1a83[1], &23de[1], &23e7[1]
.l1926
    equb 0                                                            ; 2a26: 00          .   :1926[1]
; &2a27 referenced 7 times by &1941[1], &19c9[1], &2367[1], &236f[1], &23a5[1], &495c[1], &4962[1]
.l1927
    equb 0                                                            ; 2a27: 00          .   :1927[1]
; &2a28 referenced 6 times by &19c6[1], &19ef[1], &1a03[1], &1a11[1], &2f9e[1], &355a[1]
.l1928
    equb 0                                                            ; 2a28: 00          .   :1928[1]
; &2a29 referenced 2 times by &19ec[1], &1a00[1]
.l1929
    equb &f0                                                          ; 2a29: f0          .   :1929[1]
; &2a2a referenced 2 times by &19dc[1], &19e3[1]
.l192a
    equb &40                                                          ; 2a2a: 40          @   :192a[1]
; &2a2b referenced 1 time by &19c0[1]
.l192b
    equb 4                                                            ; 2a2b: 04          .   :192b[1]
; &2a2c referenced 4 times by &19ce[1], &23b4[1], &23ca[1], &3521[1]
.l192c
    equb 0                                                            ; 2a2c: 00          .   :192c[1]
; &2a2d referenced 1 time by &1a3b[1]
.l192d
    equb 4                                                            ; 2a2d: 04          .   :192d[1]
; &2a2e referenced 7 times by &1944[1], &1969[1], &2377[1], &237f[1], &23a8[1], &4935[1], &493b[1]
.l192e
    equb 0                                                            ; 2a2e: 00          .   :192e[1]
; &2a2f referenced 2 times by &197b[1], &19a1[1]
.l192f
    equb &40                                                          ; 2a2f: 40          @   :192f[1]
; &2a30 referenced 1 time by &1973[1]
.l1930
    equb &20                                                          ; 2a30: 20              :1930[1]
; &2a31 referenced 4 times by &196e[1], &23bf[1], &23d5[1], &3524[1]
.l1931
    equb 0                                                            ; 2a31: 00          .   :1931[1]
; &2a32 referenced 2 times by &198f[1], &1994[1]
.l1932
    equb 4                                                            ; 2a32: 04          .   :1932[1]
; &2a33 referenced 3 times by &1c2e[1], &1c49[1], &1c9c[1]
.l1933
    equb 0                                                            ; 2a33: 00          .   :1933[1]
; &2a34 referenced 3 times by &1c3c[1], &1c52[1], &1ca1[1]
.l1934
    equb 0                                                            ; 2a34: 00          .   :1934[1]
; &2a35 referenced 2 times by &1c01[1], &1c8e[1]
.l1935
    equb 0                                                            ; 2a35: 00          .   :1935[1]
; &2a36 referenced 3 times by &195b[1], &1a4b[1], &1a53[1]
.l1936
    equb 0                                                            ; 2a36: 00          .   :1936[1]
; &2a37 referenced 2 times by &1958[1], &1a50[1]
.l1937
    equb 4                                                            ; 2a37: 04          .   :1937[1]
; &2a38 referenced 1 time by &1a56[1]
.l1938
    equb 2                                                            ; 2a38: 02          .   :1938[1]
; &2a39 referenced 1 time by &1a6a[1]
.l1939
    equb 4                                                            ; 2a39: 04          .   :1939[1]
; &2a3a referenced 4 times by &1a76[1], &1a8d[1], &353c[1], &45ae[1]
.l193a
    equb 0, &ea, &ea, &ea, &ea                                        ; 2a3a: 00 ea ea... ... :193a[1]

; &2a3f referenced 1 time by &38c1[1]
.sub_c193f
    lda #0                                                            ; 2a3f: a9 00       ..  :193f[1]
    sta l1927                                                         ; 2a41: 8d 27 19    .'. :1941[1]
    sta l192e                                                         ; 2a44: 8d 2e 19    ... :1944[1]
    sta l191a                                                         ; 2a47: 8d 1a 19    ... :1947[1]
    sta l1926                                                         ; 2a4a: 8d 26 19    .&. :194a[1]
    ldx l1918                                                         ; 2a4d: ae 18 19    ... :194d[1]
    beq c1958                                                         ; 2a50: f0 06       ..  :1950[1]
    dec l1918                                                         ; 2a52: ce 18 19    ... :1952[1]
    jmp c195e                                                         ; 2a55: 4c 5e 19    L^. :1955[1]

; &2a58 referenced 1 time by &1950[1]
.c1958
    lda l1937                                                         ; 2a58: ad 37 19    .7. :1958[1]
    sta l1936                                                         ; 2a5b: 8d 36 19    .6. :195b[1]
; &2a5e referenced 1 time by &1955[1]
.c195e
    jsr sub_c234b                                                     ; 2a5e: 20 4b 23     K# :195e[1]
    lda l1920                                                         ; 2a61: ad 20 19    . . :1961[1]
    beq c1969                                                         ; 2a64: f0 03       ..  :1964[1]
    jmp c1a70                                                         ; 2a66: 4c 70 1a    Lp. :1966[1]

; &2a69 referenced 1 time by &1964[1]
.c1969
    lda l192e                                                         ; 2a69: ad 2e 19    ... :1969[1]
    bne c1979                                                         ; 2a6c: d0 0b       ..  :196c[1]
    lda l1931                                                         ; 2a6e: ad 31 19    .1. :196e[1]
    beq c19c6                                                         ; 2a71: f0 53       .S  :1971[1]
    lda l1930                                                         ; 2a73: ad 30 19    .0. :1973[1]
    jmp c19a4                                                         ; 2a76: 4c a4 19    L.. :1976[1]

; &2a79 referenced 1 time by &196c[1]
.c1979
    bmi c19a1                                                         ; 2a79: 30 26       0&  :1979[1]
    lda l192f                                                         ; 2a7b: ad 2f 19    ./. :197b[1]
    sta l0075                                                         ; 2a7e: 85 75       .u  :197e[1]
    clc                                                               ; 2a80: 18          .   :1980[1]
    adc l0f01                                                         ; 2a81: 6d 01 0f    m.. :1981[1]
    sta l0f01                                                         ; 2a84: 8d 01 0f    ... :1984[1]
    bcc c198c                                                         ; 2a87: 90 03       ..  :1987[1]
    inc l0f00                                                         ; 2a89: ee 00 0f    ... :1989[1]
; &2a8c referenced 1 time by &1987[1]
.c198c
    lda l0f00                                                         ; 2a8c: ad 00 0f    ... :198c[1]
    cmp l1932                                                         ; 2a8f: cd 32 19    .2. :198f[1]
    bcc c19c0                                                         ; 2a92: 90 2c       .,  :1992[1]
    lda l1932                                                         ; 2a94: ad 32 19    .2. :1994[1]
    sta l0f00                                                         ; 2a97: 8d 00 0f    ... :1997[1]
    lda #0                                                            ; 2a9a: a9 00       ..  :199a[1]
    sta l0f01                                                         ; 2a9c: 8d 01 0f    ... :199c[1]
    beq c19c6                                                         ; 2a9f: f0 25       .%  :199f[1]   ; ALWAYS branch

; &2aa1 referenced 1 time by &1979[1]
.c19a1
    lda l192f                                                         ; 2aa1: ad 2f 19    ./. :19a1[1]
; &2aa4 referenced 1 time by &1976[1]
.c19a4
    sta l0075                                                         ; 2aa4: 85 75       .u  :19a4[1]
    lda l0f01                                                         ; 2aa6: ad 01 0f    ... :19a6[1]
    sec                                                               ; 2aa9: 38          8   :19a9[1]
    sbc l0075                                                         ; 2aaa: e5 75       .u  :19aa[1]
    sta l0f01                                                         ; 2aac: 8d 01 0f    ... :19ac[1]
    bcs c19c0                                                         ; 2aaf: b0 0f       ..  :19af[1]
    dec l0f00                                                         ; 2ab1: ce 00 0f    ... :19b1[1]
    bpl c19c0                                                         ; 2ab4: 10 0a       ..  :19b4[1]
    lda #0                                                            ; 2ab6: a9 00       ..  :19b6[1]
    sta l0f01                                                         ; 2ab8: 8d 01 0f    ... :19b8[1]
    sta l0f00                                                         ; 2abb: 8d 00 0f    ... :19bb[1]
    beq c19c6                                                         ; 2abe: f0 06       ..  :19be[1]   ; ALWAYS branch

; &2ac0 referenced 3 times by &1992[1], &19af[1], &19b4[1]
.c19c0
    lda l192b                                                         ; 2ac0: ad 2b 19    .+. :19c0[1]
    jsr sub_c1aba                                                     ; 2ac3: 20 ba 1a     .. :19c3[1]
; &2ac6 referenced 3 times by &1971[1], &199f[1], &19be[1]
.c19c6
    lda l1928                                                         ; 2ac6: ad 28 19    .(. :19c6[1]
    ldy l1927                                                         ; 2ac9: ac 27 19    .'. :19c9[1]
    bne c19e9                                                         ; 2acc: d0 1b       ..  :19cc[1]
    ldy l192c                                                         ; 2ace: ac 2c 19    .,. :19ce[1]
    beq c1a41                                                         ; 2ad1: f0 6e       .n  :19d1[1]
    ldx l0f02                                                         ; 2ad3: ae 02 0f    ... :19d3[1]
    bpl c19e2                                                         ; 2ad6: 10 0a       ..  :19d6[1]
    dex                                                               ; 2ad8: ca          .   :19d8[1]
    bpl c1a41                                                         ; 2ad9: 10 66       .f  :19d9[1]
    sec                                                               ; 2adb: 38          8   :19db[1]
    sbc l192a                                                         ; 2adc: ed 2a 19    .*. :19dc[1]
    jmp c19ef                                                         ; 2adf: 4c ef 19    L.. :19df[1]

; &2ae2 referenced 1 time by &19d6[1]
.c19e2
    clc                                                               ; 2ae2: 18          .   :19e2[1]
    adc l192a                                                         ; 2ae3: 6d 2a 19    m*. :19e3[1]
    jmp c1a03                                                         ; 2ae6: 4c 03 1a    L.. :19e6[1]

; &2ae9 referenced 1 time by &19cc[1]
.c19e9
    bpl c19ff                                                         ; 2ae9: 10 14       ..  :19e9[1]
    sec                                                               ; 2aeb: 38          8   :19eb[1]
    sbc l1929                                                         ; 2aec: ed 29 19    .). :19ec[1]
; &2aef referenced 1 time by &19df[1]
.c19ef
    sta l1928                                                         ; 2aef: 8d 28 19    .(. :19ef[1]
    bcs c1a3b                                                         ; 2af2: b0 47       .G  :19f2[1]
    lda #&7b ; '{'                                                    ; 2af4: a9 7b       .{  :19f4[1]
    cmp l0f02                                                         ; 2af6: cd 02 0f    ... :19f6[1]
    bne c1a1c                                                         ; 2af9: d0 21       .!  :19f9[1]
    lda #0                                                            ; 2afb: a9 00       ..  :19fb[1]
    beq c1a11                                                         ; 2afd: f0 12       ..  :19fd[1]   ; ALWAYS branch

; &2aff referenced 1 time by &19e9[1]
.c19ff
    clc                                                               ; 2aff: 18          .   :19ff[1]
    adc l1929                                                         ; 2b00: 6d 29 19    m). :1a00[1]
; &2b03 referenced 1 time by &19e6[1]
.c1a03
    sta l1928                                                         ; 2b03: 8d 28 19    .(. :1a03[1]
    bcc c1a3b                                                         ; 2b06: 90 33       .3  :1a06[1]
    lda #&85                                                          ; 2b08: a9 85       ..  :1a08[1]
    cmp l0f02                                                         ; 2b0a: cd 02 0f    ... :1a0a[1]
    bne c1a17                                                         ; 2b0d: d0 08       ..  :1a0d[1]
    lda #&ff                                                          ; 2b0f: a9 ff       ..  :1a0f[1]
; &2b11 referenced 1 time by &19fd[1]
.c1a11
    sta l1928                                                         ; 2b11: 8d 28 19    .(. :1a11[1]
    jmp c1a41                                                         ; 2b14: 4c 41 1a    LA. :1a14[1]

; &2b17 referenced 1 time by &1a0d[1]
.c1a17
    inc l0f02                                                         ; 2b17: ee 02 0f    ... :1a17[1]
    bne c1a1f                                                         ; 2b1a: d0 03       ..  :1a1a[1]
; &2b1c referenced 1 time by &19f9[1]
.c1a1c
    dec l0f02                                                         ; 2b1c: ce 02 0f    ... :1a1c[1]
; &2b1f referenced 1 time by &1a1a[1]
.c1a1f
    clc                                                               ; 2b1f: 18          .   :1a1f[1]
    lda l0f02                                                         ; 2b20: ad 02 0f    ... :1a20[1]
    bmi c1a29                                                         ; 2b23: 30 04       0.  :1a23[1]
    eor #&ff                                                          ; 2b25: 49 ff       I.  :1a25[1]
    adc #1                                                            ; 2b27: 69 01       i.  :1a27[1]
; &2b29 referenced 1 time by &1a23[1]
.c1a29
    adc #&80                                                          ; 2b29: 69 80       i.  :1a29[1]
    tay                                                               ; 2b2b: a8          .   :1a2b[1]
    sta l0f03                                                         ; 2b2c: 8d 03 0f    ... :1a2c[1]
    lda l0ec4,y                                                       ; 2b2f: b9 c4 0e    ... :1a2f[1]
    sta l0f05                                                         ; 2b32: 8d 05 0f    ... :1a32[1]
    lda l0ebe,y                                                       ; 2b35: b9 be 0e    ... :1a35[1]
    sta l0f04                                                         ; 2b38: 8d 04 0f    ... :1a38[1]
; &2b3b referenced 2 times by &19f2[1], &1a06[1]
.c1a3b
    lda l192d                                                         ; 2b3b: ad 2d 19    .-. :1a3b[1]
    jsr sub_c1aba                                                     ; 2b3e: 20 ba 1a     .. :1a3e[1]
; &2b41 referenced 3 times by &19d1[1], &19d9[1], &1a14[1]
.c1a41
    lda l191a                                                         ; 2b41: ad 1a 19    ... :1a41[1]
    beq c1a70                                                         ; 2b44: f0 2a       .*  :1a44[1]
    lda l1918                                                         ; 2b46: ad 18 19    ... :1a46[1]
    bne c1a70                                                         ; 2b49: d0 25       .%  :1a49[1]
    dec l1936                                                         ; 2b4b: ce 36 19    .6. :1a4b[1]
    bne c1a5c                                                         ; 2b4e: d0 0c       ..  :1a4e[1]
    lda l1937                                                         ; 2b50: ad 37 19    .7. :1a50[1]
    sta l1936                                                         ; 2b53: 8d 36 19    .6. :1a53[1]
    lda l1938                                                         ; 2b56: ad 38 19    .8. :1a56[1]
    jmp c1a5f                                                         ; 2b59: 4c 5f 1a    L_. :1a59[1]

; &2b5c referenced 1 time by &1a4e[1]
.c1a5c
    lda l1919                                                         ; 2b5c: ad 19 19    ... :1a5c[1]
; &2b5f referenced 1 time by &1a59[1]
.c1a5f
    sta l1918                                                         ; 2b5f: 8d 18 19    ... :1a5f[1]
    jsr sub_c12f7                                                     ; 2b62: 20 f7 12     .. :1a62[1]
    lda l2658                                                         ; 2b65: ad 58 26    .X& :1a65[1]
    beq c1a70                                                         ; 2b68: f0 06       ..  :1a68[1]
    lda l1939                                                         ; 2b6a: ad 39 19    .9. :1a6a[1]
    jsr sub_c1aba                                                     ; 2b6d: 20 ba 1a     .. :1a6d[1]
; &2b70 referenced 4 times by &1966[1], &1a44[1], &1a49[1], &1a68[1]
.c1a70
    jsr sub_c45ae                                                     ; 2b70: 20 ae 45     .E :1a70[1]
    lda l1924                                                         ; 2b73: ad 24 19    .$. :1a73[1]
    sta l193a                                                         ; 2b76: 8d 3a 19    .:. :1a76[1]
    beq c1a83                                                         ; 2b79: f0 08       ..  :1a79[1]
    lda l2659                                                         ; 2b7b: ad 59 26    .Y& :1a7b[1]
    bne c1a83                                                         ; 2b7e: d0 03       ..  :1a7e[1]
    jsr sub_c1ba1                                                     ; 2b80: 20 a1 1b     .. :1a80[1]
; &2b83 referenced 2 times by &1a79[1], &1a7e[1]
.c1a83
    lda l1926                                                         ; 2b83: ad 26 19    .&. :1a83[1]
    beq c1aa1                                                         ; 2b86: f0 19       ..  :1a86[1]
    ldx #0                                                            ; 2b88: a2 00       ..  :1a88[1]
    stx l1924                                                         ; 2b8a: 8e 24 19    .$. :1a8a[1]
    stx l193a                                                         ; 2b8d: 8e 3a 19    .:. :1a8d[1]
    tay                                                               ; 2b90: a8          .   :1a90[1]
    bmi c1a9b                                                         ; 2b91: 30 08       0.  :1a91[1]
    ldx #7                                                            ; 2b93: a2 07       ..  :1a93[1]
    jsr sub_c459d                                                     ; 2b95: 20 9d 45     .E :1a95[1]
    jmp c142b                                                         ; 2b98: 4c 2b 14    L+. :1a98[1]

; &2b9b referenced 1 time by &1a91[1]
.c1a9b
    jsr sub_c459d                                                     ; 2b9b: 20 9d 45     .E :1a9b[1]
    jmp c1408                                                         ; 2b9e: 4c 08 14    L.. :1a9e[1]

; &2ba1 referenced 1 time by &1a86[1]
.c1aa1
    rts                                                               ; 2ba1: 60          `   :1aa1[1]

    equb &ea                                                          ; 2ba2: ea          .   :1aa2[1]

; &2ba3 referenced 2 times by &1567[1], &1841[1]
.sub_c1aa3
    stx l1925                                                         ; 2ba3: 8e 25 19    .%. :1aa3[1]
    ldx l0e56                                                         ; 2ba6: ae 56 0e    .V. :1aa6[1]
    beq c1ab7                                                         ; 2ba9: f0 0c       ..  :1aa9[1]
    asl a                                                             ; 2bab: 0a          .   :1aab[1]
    bcc c1ab1                                                         ; 2bac: 90 03       ..  :1aac[1]
    inc l191e                                                         ; 2bae: ee 1e 19    ... :1aae[1]
; &2bb1 referenced 1 time by &1aac[1]
.c1ab1
    asl a                                                             ; 2bb1: 0a          .   :1ab1[1]
    bcc c1ab7                                                         ; 2bb2: 90 03       ..  :1ab2[1]
    inc l191e                                                         ; 2bb4: ee 1e 19    ... :1ab4[1]
; &2bb7 referenced 2 times by &1aa9[1], &1ab2[1]
.c1ab7
    ldx l1925                                                         ; 2bb7: ae 25 19    .%. :1ab7[1]
; &2bba referenced 3 times by &19c3[1], &1a3e[1], &1a6d[1]
.sub_c1aba
    clc                                                               ; 2bba: 18          .   :1aba[1]
    adc l191f                                                         ; 2bbb: 6d 1f 19    m.. :1abb[1]
    sta l191f                                                         ; 2bbe: 8d 1f 19    ... :1abe[1]
    bcc c1ac6                                                         ; 2bc1: 90 03       ..  :1ac1[1]
    inc l191e                                                         ; 2bc3: ee 1e 19    ... :1ac3[1]
; &2bc6 referenced 1 time by &1ac1[1]
.c1ac6
    rts                                                               ; 2bc6: 60          `   :1ac6[1]

; &2bc7 referenced 1 time by &38be[1]
.sub_c1ac7
    jsr sub_c1ad1                                                     ; 2bc7: 20 d1 1a     .. :1ac7[1]
    jsr sub_c2f45                                                     ; 2bca: 20 45 2f     E/ :1aca[1]
    jmp c25f3                                                         ; 2bcd: 4c f3 25    L.% :1acd[1]

    equb &60                                                          ; 2bd0: 60          `   :1ad0[1]

; &2bd1 referenced 1 time by &1ac7[1]
.sub_c1ad1
    lda l191c                                                         ; 2bd1: ad 1c 19    ... :1ad1[1]
    sec                                                               ; 2bd4: 38          8   :1ad4[1]
    sbc l191f                                                         ; 2bd5: ed 1f 19    ... :1ad5[1]
    sta l191c                                                         ; 2bd8: 8d 1c 19    ... :1ad8[1]
    lda l191d                                                         ; 2bdb: ad 1d 19    ... :1adb[1]
    sbc l191e                                                         ; 2bde: ed 1e 19    ... :1ade[1]
    sta l191d                                                         ; 2be1: 8d 1d 19    ... :1ae1[1]
    lda l191c                                                         ; 2be4: ad 1c 19    ... :1ae4[1]
    clc                                                               ; 2be7: 18          .   :1ae7[1]
    adc l1923                                                         ; 2be8: 6d 23 19    m#. :1ae8[1]
    sta l191c                                                         ; 2beb: 8d 1c 19    ... :1aeb[1]
    bcc c1af3                                                         ; 2bee: 90 03       ..  :1aee[1]
    inc l191d                                                         ; 2bf0: ee 1d 19    ... :1af0[1]
; &2bf3 referenced 1 time by &1aee[1]
.c1af3
    lda l191d                                                         ; 2bf3: ad 1d 19    ... :1af3[1]
    bpl c1b05                                                         ; 2bf6: 10 0d       ..  :1af6[1]
    jsr sub_c1daf                                                     ; 2bf8: 20 af 1d     .. :1af8[1]
    lda #0                                                            ; 2bfb: a9 00       ..  :1afb[1]
    sta l191c                                                         ; 2bfd: 8d 1c 19    ... :1afd[1]
    sta l191d                                                         ; 2c00: 8d 1d 19    ... :1b00[1]
    beq c1b1c                                                         ; 2c03: f0 17       ..  :1b03[1]   ; ALWAYS branch

; &2c05 referenced 1 time by &1af6[1]
.c1b05
    cmp #&0c                                                          ; 2c05: c9 0c       ..  :1b05[1]
    bcc c1b1c                                                         ; 2c07: 90 13       ..  :1b07[1]
    bne c1b12                                                         ; 2c09: d0 07       ..  :1b09[1]
    lda l191c                                                         ; 2c0b: ad 1c 19    ... :1b0b[1]
    cmp #&81                                                          ; 2c0e: c9 81       ..  :1b0e[1]
    bcc c1b1c                                                         ; 2c10: 90 0a       ..  :1b10[1]
; &2c12 referenced 1 time by &1b09[1]
.c1b12
    lda #&0c                                                          ; 2c12: a9 0c       ..  :1b12[1]
    sta l191d                                                         ; 2c14: 8d 1d 19    ... :1b14[1]
    lda #&80                                                          ; 2c17: a9 80       ..  :1b17[1]
    sta l191c                                                         ; 2c19: 8d 1c 19    ... :1b19[1]
; &2c1c referenced 3 times by &1b03[1], &1b07[1], &1b10[1]
.c1b1c
    lda #0                                                            ; 2c1c: a9 00       ..  :1b1c[1]
    sta l191f                                                         ; 2c1e: 8d 1f 19    ... :1b1e[1]
    sta l191e                                                         ; 2c21: 8d 1e 19    ... :1b21[1]
    sta l1920                                                         ; 2c24: 8d 20 19    . . :1b24[1]
    lda l191d                                                         ; 2c27: ad 1d 19    ... :1b27[1]
    sta l0084                                                         ; 2c2a: 85 84       ..  :1b2a[1]
    lda l191c                                                         ; 2c2c: ad 1c 19    ... :1b2c[1]
    lsr l0084                                                         ; 2c2f: 46 84       F.  :1b2f[1]
    ror a                                                             ; 2c31: 6a          j   :1b31[1]
    lsr l0084                                                         ; 2c32: 46 84       F.  :1b32[1]
    ror a                                                             ; 2c34: 6a          j   :1b34[1]
    lsr l0084                                                         ; 2c35: 46 84       F.  :1b35[1]
    ror a                                                             ; 2c37: 6a          j   :1b37[1]
    lsr l0084                                                         ; 2c38: 46 84       F.  :1b38[1]
    ror a                                                             ; 2c3a: 6a          j   :1b3a[1]
    cmp l1921                                                         ; 2c3b: cd 21 19    .!. :1b3b[1]
    bcs c1b43                                                         ; 2c3e: b0 03       ..  :1b3e[1]
    inc l1920                                                         ; 2c40: ee 20 19    . . :1b40[1]
; &2c43 referenced 1 time by &1b3e[1]
.c1b43
    cmp l1922                                                         ; 2c43: cd 22 19    .". :1b43[1]
    beq c1ba0                                                         ; 2c46: f0 58       .X  :1b46[1]
    ldx l1922                                                         ; 2c48: ae 22 19    .". :1b48[1]
    sta l1922                                                         ; 2c4b: 8d 22 19    .". :1b4b[1]
    sta l0072                                                         ; 2c4e: 85 72       .r  :1b4e[1]
    cpx l0072                                                         ; 2c50: e4 72       .r  :1b50[1]
    bcs c1b57                                                         ; 2c52: b0 03       ..  :1b52[1]
    stx l0072                                                         ; 2c54: 86 72       .r  :1b54[1]
    tax                                                               ; 2c56: aa          .   :1b56[1]
; &2c57 referenced 1 time by &1b52[1]
.c1b57
    stx l0073                                                         ; 2c57: 86 73       .s  :1b57[1]
    ldx #3                                                            ; 2c59: a2 03       ..  :1b59[1]
    lda l0073                                                         ; 2c5b: a5 73       .s  :1b5b[1]
; &2c5d referenced 1 time by &1b65[1]
.loop_c1b5d
    cmp #&33 ; '3'                                                    ; 2c5d: c9 33       .3  :1b5d[1]
    bcc c1b67                                                         ; 2c5f: 90 06       ..  :1b5f[1]
    sec                                                               ; 2c61: 38          8   :1b61[1]
    sbc #&32 ; '2'                                                    ; 2c62: e9 32       .2  :1b62[1]
    dex                                                               ; 2c64: ca          .   :1b64[1]
    bpl loop_c1b5d                                                    ; 2c65: 10 f6       ..  :1b65[1]
; &2c67 referenced 1 time by &1b5f[1]
.c1b67
    clc                                                               ; 2c67: 18          .   :1b67[1]
    adc #&0c                                                          ; 2c68: 69 0c       i.  :1b68[1]
    sta l007a                                                         ; 2c6a: 85 7a       .z  :1b6a[1]
    txa                                                               ; 2c6c: 8a          .   :1b6c[1]
    asl a                                                             ; 2c6d: 0a          .   :1b6d[1]
    asl a                                                             ; 2c6e: 0a          .   :1b6e[1]
    asl a                                                             ; 2c6f: 0a          .   :1b6f[1]
    clc                                                               ; 2c70: 18          .   :1b70[1]
    adc #&95                                                          ; 2c71: 69 95       i.  :1b71[1]
    sta l007b                                                         ; 2c73: 85 7b       .{  :1b73[1]
    inc l0079                                                         ; 2c75: e6 79       .y  :1b75[1]
; &2c77 referenced 1 time by &1b9c[1]
.c1b77
    lda #5                                                            ; 2c77: a9 05       ..  :1b77[1]
    jsr sub_c1bcf                                                     ; 2c79: 20 cf 1b     .. :1b79[1]
    dec l007a                                                         ; 2c7c: c6 7a       .z  :1b7c[1]
    lda l007b                                                         ; 2c7e: a5 7b       .{  :1b7e[1]
    sec                                                               ; 2c80: 38          8   :1b80[1]
    sbc #5                                                            ; 2c81: e9 05       ..  :1b81[1]
    sta l007b                                                         ; 2c83: 85 7b       .{  :1b83[1]
    lda #&0c                                                          ; 2c85: a9 0c       ..  :1b85[1]
    cmp l007a                                                         ; 2c87: c5 7a       .z  :1b87[1]
    bcc c1b96                                                         ; 2c89: 90 0b       ..  :1b89[1]
    lda l007b                                                         ; 2c8b: a5 7b       .{  :1b8b[1]
    clc                                                               ; 2c8d: 18          .   :1b8d[1]
    adc #8                                                            ; 2c8e: 69 08       i.  :1b8e[1]
    sta l007b                                                         ; 2c90: 85 7b       .{  :1b90[1]
    lda #&3e ; '>'                                                    ; 2c92: a9 3e       .>  :1b92[1]
    sta l007a                                                         ; 2c94: 85 7a       .z  :1b94[1]
; &2c96 referenced 1 time by &1b89[1]
.c1b96
    dec l0073                                                         ; 2c96: c6 73       .s  :1b96[1]
    lda l0073                                                         ; 2c98: a5 73       .s  :1b98[1]
    cmp l0072                                                         ; 2c9a: c5 72       .r  :1b9a[1]
    bne c1b77                                                         ; 2c9c: d0 d9       ..  :1b9c[1]
    dec l0079                                                         ; 2c9e: c6 79       .y  :1b9e[1]
; &2ca0 referenced 1 time by &1b46[1]
.c1ba0
    rts                                                               ; 2ca0: 60          `   :1ba0[1]

; &2ca1 referenced 1 time by &1a80[1]
.sub_c1ba1
    lda l0e4f                                                         ; 2ca1: ad 4f 0e    .O. :1ba1[1]
    sta l0e54                                                         ; 2ca4: 8d 54 0e    .T. :1ba4[1]
    ldx #0                                                            ; 2ca7: a2 00       ..  :1ba7[1]
; &2ca9 referenced 1 time by &1bb6[1]
.loop_c1ba9
    lda l0480,x                                                       ; 2ca9: bd 80 04    ... :1ba9[1]
    beq c1bc0                                                         ; 2cac: f0 12       ..  :1bac[1]
    txa                                                               ; 2cae: 8a          .   :1bae[1]
    clc                                                               ; 2caf: 18          .   :1baf[1]
    adc #&0b                                                          ; 2cb0: 69 0b       i.  :1bb0[1]
    tax                                                               ; 2cb2: aa          .   :1bb2[1]
    dec l0e54                                                         ; 2cb3: ce 54 0e    .T. :1bb3[1]
    bne loop_c1ba9                                                    ; 2cb6: d0 f1       ..  :1bb6[1]
    lda l0e56                                                         ; 2cb8: ad 56 0e    .V. :1bb8[1]
    bne c1bc8                                                         ; 2cbb: d0 0b       ..  :1bbb[1]
    jmp c142b                                                         ; 2cbd: 4c 2b 14    L+. :1bbd[1]

; &2cc0 referenced 1 time by &1bac[1]
.c1bc0
    lda l0e56                                                         ; 2cc0: ad 56 0e    .V. :1bc0[1]
    beq c1bc8                                                         ; 2cc3: f0 03       ..  :1bc3[1]
    jmp c1408                                                         ; 2cc5: 4c 08 14    L.. :1bc5[1]

; &2cc8 referenced 2 times by &1bbb[1], &1bc3[1]
.c1bc8
    rts                                                               ; 2cc8: 60          `   :1bc8[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea                                 ; 2cc9: ea ea ea... ... :1bc9[1]

; &2ccf referenced 7 times by &1b79[1], &229d[1], &2eb8[1], &2ec5[1], &2ed7[1], &2ee4[1], &360e[1]
.sub_c1bcf
    sta l0084                                                         ; 2ccf: 85 84       ..  :1bcf[1]
; &2cd1 referenced 1 time by &1bd8[1]
.loop_c1bd1
    jsr sub_c0f64                                                     ; 2cd1: 20 64 0f     d. :1bd1[1]
    inc l007b                                                         ; 2cd4: e6 7b       .{  :1bd4[1]
    dec l0084                                                         ; 2cd6: c6 84       ..  :1bd6[1]
    bne loop_c1bd1                                                    ; 2cd8: d0 f7       ..  :1bd8[1]
    rts                                                               ; 2cda: 60          `   :1bda[1]

; &2cdb referenced 6 times by &2285[1], &2ed2[1], &2ee9[1], &2ef6[1], &2f33[1], &35b1[1]
.sub_c1bdb
    sta l0084                                                         ; 2cdb: 85 84       ..  :1bdb[1]
; &2cdd referenced 1 time by &1be4[1]
.loop_c1bdd
    jsr sub_c0f64                                                     ; 2cdd: 20 64 0f     d. :1bdd[1]
    inc l007a                                                         ; 2ce0: e6 7a       .z  :1be0[1]
    dec l0084                                                         ; 2ce2: c6 84       ..  :1be2[1]
    bne loop_c1bdd                                                    ; 2ce4: d0 f7       ..  :1be4[1]
    rts                                                               ; 2ce6: 60          `   :1be6[1]

; &2ce7 referenced 1 time by &15f7[1]
.sub_c1be7
    sta l0075                                                         ; 2ce7: 85 75       .u  :1be7[1]
    lda l0489,x                                                       ; 2ce9: bd 89 04    ... :1be9[1]
    sec                                                               ; 2cec: 38          8   :1bec[1]
    sbc l0075                                                         ; 2ced: e5 75       .u  :1bed[1]
    bcs c1bf3                                                         ; 2cef: b0 02       ..  :1bef[1]
    lda #0                                                            ; 2cf1: a9 00       ..  :1bf1[1]
; &2cf3 referenced 1 time by &1bef[1]
.c1bf3
    sta l0489,x                                                       ; 2cf3: 9d 89 04    ... :1bf3[1]
    bne c1bfb                                                         ; 2cf6: d0 03       ..  :1bf6[1]
    jsr sub_c1f5d                                                     ; 2cf8: 20 5d 1f     ]. :1bf8[1]
; &2cfb referenced 1 time by &1bf6[1]
.c1bfb
    rts                                                               ; 2cfb: 60          `   :1bfb[1]

; &2cfc referenced 6 times by &174b[1], &176d[1], &1f62[1], &20bd[1], &269f[1], &26b4[1]
.sub_c1bfc
    stx l0075                                                         ; 2cfc: 86 75       .u  :1bfc[1]
    lda l040a,x                                                       ; 2cfe: bd 0a 04    ... :1bfe[1]
    sta l1935                                                         ; 2d01: 8d 35 19    .5. :1c01[1]
    cmp #2                                                            ; 2d04: c9 02       ..  :1c04[1]
    bcc c1c0b                                                         ; 2d06: 90 03       ..  :1c06[1]
    jmp c1cc6                                                         ; 2d08: 4c c6 1c    L.. :1c08[1]

; &2d0b referenced 1 time by &1c06[1]
.c1c0b
    lda l0402,x                                                       ; 2d0b: bd 02 04    ... :1c0b[1]
    sta l0077                                                         ; 2d0e: 85 77       .w  :1c0e[1]
    lda l0405,x                                                       ; 2d10: bd 05 04    ... :1c10[1]
    sta l0076                                                         ; 2d13: 85 76       .v  :1c13[1]
    lda l0407,x                                                       ; 2d15: bd 07 04    ... :1c15[1]
    lsr a                                                             ; 2d18: 4a          J   :1c18[1]
    lsr a                                                             ; 2d19: 4a          J   :1c19[1]
    lsr a                                                             ; 2d1a: 4a          J   :1c1a[1]
    sta l007c                                                         ; 2d1b: 85 7c       .|  :1c1b[1]
    clc                                                               ; 2d1d: 18          .   :1c1d[1]
    adc #&10                                                          ; 2d1e: 69 10       i.  :1c1e[1]
    and #&1f                                                          ; 2d20: 29 1f       ).  :1c20[1]
    tay                                                               ; 2d22: a8          .   :1c22[1]
    lda l0e58,y                                                       ; 2d23: b9 58 0e    .X. :1c23[1]
    clc                                                               ; 2d26: 18          .   :1c26[1]
    bpl c1c2a                                                         ; 2d27: 10 01       ..  :1c27[1]
    sec                                                               ; 2d29: 38          8   :1c29[1]
; &2d2a referenced 1 time by &1c27[1]
.c1c2a
    ror a                                                             ; 2d2a: 6a          j   :1c2a[1]
    clc                                                               ; 2d2b: 18          .   :1c2b[1]
    adc l0077                                                         ; 2d2c: 65 77       ew  :1c2c[1]
    sta l1933                                                         ; 2d2e: 8d 33 19    .3. :1c2e[1]
    lda l0e78,y                                                       ; 2d31: b9 78 0e    .x. :1c31[1]
    clc                                                               ; 2d34: 18          .   :1c34[1]
    bpl c1c38                                                         ; 2d35: 10 01       ..  :1c35[1]
    sec                                                               ; 2d37: 38          8   :1c37[1]
; &2d38 referenced 1 time by &1c35[1]
.c1c38
    ror a                                                             ; 2d38: 6a          j   :1c38[1]
    clc                                                               ; 2d39: 18          .   :1c39[1]
    adc l0076                                                         ; 2d3a: 65 76       ev  :1c3a[1]
    sta l1934                                                         ; 2d3c: 8d 34 19    .4. :1c3c[1]
    lda l007c                                                         ; 2d3f: a5 7c       .|  :1c3f[1]
    clc                                                               ; 2d41: 18          .   :1c41[1]
    adc #3                                                            ; 2d42: 69 03       i.  :1c42[1]
    and #&1f                                                          ; 2d44: 29 1f       ).  :1c44[1]
    tay                                                               ; 2d46: a8          .   :1c46[1]
    sta l0078                                                         ; 2d47: 85 78       .x  :1c47[1]
    lda l1933                                                         ; 2d49: ad 33 19    .3. :1c49[1]
    clc                                                               ; 2d4c: 18          .   :1c4c[1]
    adc l0e58,y                                                       ; 2d4d: 79 58 0e    yX. :1c4d[1]
    sta l007a                                                         ; 2d50: 85 7a       .z  :1c50[1]
    lda l1934                                                         ; 2d52: ad 34 19    .4. :1c52[1]
    clc                                                               ; 2d55: 18          .   :1c55[1]
    adc l0e78,y                                                       ; 2d56: 79 78 0e    yx. :1c56[1]
    sta l007b                                                         ; 2d59: 85 7b       .{  :1c59[1]
    lda #8                                                            ; 2d5b: a9 08       ..  :1c5b[1]
    sta l0074                                                         ; 2d5d: 85 74       .t  :1c5d[1]
    lda #1                                                            ; 2d5f: a9 01       ..  :1c5f[1]
    sta l0072                                                         ; 2d61: 85 72       .r  :1c61[1]
    jsr c18e4                                                         ; 2d63: 20 e4 18     .. :1c63[1]
    lda l007c                                                         ; 2d66: a5 7c       .|  :1c66[1]
    clc                                                               ; 2d68: 18          .   :1c68[1]
    adc #&14                                                          ; 2d69: 69 14       i.  :1c69[1]
    and #&1f                                                          ; 2d6b: 29 1f       ).  :1c6b[1]
    sta l0078                                                         ; 2d6d: 85 78       .x  :1c6d[1]
    lda #&0a                                                          ; 2d6f: a9 0a       ..  :1c6f[1]
    sta l0074                                                         ; 2d71: 85 74       .t  :1c71[1]
    lda #&ff                                                          ; 2d73: a9 ff       ..  :1c73[1]
    sta l0072                                                         ; 2d75: 85 72       .r  :1c75[1]
    jsr c18e4                                                         ; 2d77: 20 e4 18     .. :1c77[1]
    lda l007c                                                         ; 2d7a: a5 7c       .|  :1c7a[1]
    clc                                                               ; 2d7c: 18          .   :1c7c[1]
    adc #&15                                                          ; 2d7d: 69 15       i.  :1c7d[1]
    and #&1f                                                          ; 2d7f: 29 1f       ).  :1c7f[1]
    sta l0078                                                         ; 2d81: 85 78       .x  :1c81[1]
    lda #9                                                            ; 2d83: a9 09       ..  :1c83[1]
    sta l0074                                                         ; 2d85: 85 74       .t  :1c85[1]
    lda #1                                                            ; 2d87: a9 01       ..  :1c87[1]
    sta l0072                                                         ; 2d89: 85 72       .r  :1c89[1]
    jsr c18e4                                                         ; 2d8b: 20 e4 18     .. :1c8b[1]
    lda l1935                                                         ; 2d8e: ad 35 19    .5. :1c8e[1]
    beq c1c9c                                                         ; 2d91: f0 09       ..  :1c91[1]
    lda l0077                                                         ; 2d93: a5 77       .w  :1c93[1]
    sta l007a                                                         ; 2d95: 85 7a       .z  :1c95[1]
    lda l0076                                                         ; 2d97: a5 76       .v  :1c97[1]
    jmp c1ca4                                                         ; 2d99: 4c a4 1c    L.. :1c99[1]

; &2d9c referenced 1 time by &1c91[1]
.c1c9c
    lda l1933                                                         ; 2d9c: ad 33 19    .3. :1c9c[1]
    sta l007a                                                         ; 2d9f: 85 7a       .z  :1c9f[1]
    lda l1934                                                         ; 2da1: ad 34 19    .4. :1ca1[1]
; &2da4 referenced 1 time by &1c99[1]
.c1ca4
    sta l007b                                                         ; 2da4: 85 7b       .{  :1ca4[1]
    lda l007c                                                         ; 2da6: a5 7c       .|  :1ca6[1]
    clc                                                               ; 2da8: 18          .   :1ca8[1]
    adc #&14                                                          ; 2da9: 69 14       i.  :1ca9[1]
    and #&1f                                                          ; 2dab: 29 1f       ).  :1cab[1]
    sta l0078                                                         ; 2dad: 85 78       .x  :1cad[1]
    lda #8                                                            ; 2daf: a9 08       ..  :1caf[1]
    sta l0074                                                         ; 2db1: 85 74       .t  :1cb1[1]
    jsr c18e4                                                         ; 2db3: 20 e4 18     .. :1cb3[1]
    lda l007c                                                         ; 2db6: a5 7c       .|  :1cb6[1]
    clc                                                               ; 2db8: 18          .   :1cb8[1]
    adc #4                                                            ; 2db9: 69 04       i.  :1cb9[1]
    and #&1f                                                          ; 2dbb: 29 1f       ).  :1cbb[1]
    sta l0078                                                         ; 2dbd: 85 78       .x  :1cbd[1]
    lda #9                                                            ; 2dbf: a9 09       ..  :1cbf[1]
    sta l0074                                                         ; 2dc1: 85 74       .t  :1cc1[1]
    jsr c18e4                                                         ; 2dc3: 20 e4 18     .. :1cc3[1]
; &2dc6 referenced 1 time by &1c08[1]
.c1cc6
    ldx l0075                                                         ; 2dc6: a6 75       .u  :1cc6[1]
    rts                                                               ; 2dc8: 60          `   :1cc8[1]

; &2dc9 referenced 7 times by &17f9[1], &1dd2[1], &2465[1], &2499[1], &3509[1], &3677[1], &38b3[1]
.l1cc9
    equb 0                                                            ; 2dc9: 00          .   :1cc9[1]
; &2dca referenced 3 times by &1daf[1], &1df0[1], &1f09[1]
.l1cca
    equb &d0                                                          ; 2dca: d0          .   :1cca[1]
; &2dcb referenced 3 times by &1db4[1], &1df5[1], &1f0e[1]
.l1ccb
    equb &4b                                                          ; 2dcb: 4b          K   :1ccb[1]
; &2dcc referenced 3 times by &1db9[1], &1dfa[1], &1f13[1]
.l1ccc
    equb &40                                                          ; 2dcc: 40          @   :1ccc[1]
; &2dcd referenced 1 time by &1f03[1]
.l1ccd
    equb &50                                                          ; 2dcd: 50          P   :1ccd[1]
; &2dce referenced 4 times by &17fe[1], &1de8[1], &1f06[1], &2502[1]
.l1cce
    equb 0                                                            ; 2dce: 00          .   :1cce[1]
; &2dcf referenced 3 times by &1f94[1], &1fc6[1], &200f[1]
.l1ccf
    equb &3f                                                          ; 2dcf: 3f          ?   :1ccf[1]
; &2dd0 referenced 2 times by &1fc0[1], &1fdf[1]
.l1cd0
    equb 0                                                            ; 2dd0: 00          .   :1cd0[1]
; &2dd1 referenced 19 times by &1d6d[1], &1dd5[1], &1dda[1], &1f32[1], &1f40[1], &1f4e[1], &1fa2[1], &2113[1], &2134[1], &213c[1], &318f[1], &33f8[1], &343b[1], &344e[1], &36fc[1], &38ea[1], &4612[1], &4839[1], &485e[1]
.l1cd1
    equb &ca                                                          ; 2dd1: ca          .   :1cd1[1]
; &2dd2 referenced 19 times by &1d74[1], &1f3a[1], &1f9a[1], &1fe9[1], &2118[1], &2137[1], &26ac[1], &3175[1], &33e5[1], &33ef[1], &3401[1], &342b[1], &3460[1], &3484[1], &3703[1], &38d0[1], &3c8c[1], &460c[1], &4863[1]
.l1cd2
    equb &48, 0, 0, 0                                                 ; 2dd2: 48 00 00... H.. :1cd2[1]
; &2dd6 referenced 2 times by &2350[1], &239a[1]
.l1cd6
    equb 0                                                            ; 2dd6: 00          .   :1cd6[1]
; &2dd7 referenced 1 time by &245a[1]
.l1cd7
    equb 0                                                            ; 2dd7: 00          .   :1cd7[1]
; &2dd8 referenced 7 times by &234b[1], &248b[1], &28dd[1], &28f8[1], &350c[1], &3bc7[1], &3c41[1]
.l1cd8
    equb 0                                                            ; 2dd8: 00          .   :1cd8[1]
; &2dd9 referenced 1 time by &1564[1]
.l1cd9
    equb &10                                                          ; 2dd9: 10          .   :1cd9[1]
; &2dda referenced 1 time by &2506[1]
.l1cda
    equb &11                                                          ; 2dda: 11          .   :1cda[1]
; &2ddb referenced 5 times by &2496[1], &24af[1], &2543[1], &254a[1], &2576[1]
.l1cdb
    equb 0                                                            ; 2ddb: 00          .   :1cdb[1]
; &2ddc referenced 2 times by &247b[1], &3841[1]
.l1cdc
    equb 0                                                            ; 2ddc: 00          .   :1cdc[1]
; &2ddd referenced 3 times by &1561[1], &2460[1], &3835[1]
.l1cdd
    equb 0                                                            ; 2ddd: 00          .   :1cdd[1]
; &2dde referenced 3 times by &15e3[1], &2470[1], &3838[1]
.l1cde
    equb 0                                                            ; 2dde: 00          .   :1cde[1]
; &2ddf referenced 2 times by &15f4[1], &38d9[1]
.l1cdf
    equb &ea                                                          ; 2ddf: ea          .   :1cdf[1]
; &2de0 referenced 7 times by &1355[1], &14d4[1], &15e9[1], &2d8b[1], &384f[1], &386e[1], &3877[1]
.l1ce0
    equb &ea                                                          ; 2de0: ea          .   :1ce0[1]
; &2de1 referenced 5 times by &1708[1], &1f70[1], &1f75[1], &1f86[1], &33dc[1]
.l1ce1
    equb &2e, 0, 0, 0, 0, 0, 0, 0, 0                                  ; 2de1: 2e 00 00... ... :1ce1[1]
    equs "SIE/256:I?SN"                                               ; 2dea: 53 49 45... SIE :1cea[1]
; &2df6 referenced 2 times by &170c[1], &1f8a[1]
.l1cf6
    equb &4c,   0, &40, &80, &c0, 0, &40, &80, &c0, 0, &40, &80, &c0  ; 2df6: 4c 00 40... L.@ :1cf6[1]
    equb   0, &40, &80, &c0                                           ; 2e03: 00 40 80... .@. :1d03[1]
; &2e07 referenced 2 times by &1711[1], &1f8f[1]
.l1d07
    equs "SMMMMNNNNOOOOPPPP"                                          ; 2e07: 53 4d 4d... SMM :1d07[1]
; &2e18 referenced 1 time by &1fd6[1]
.l1d18
    equb &0f, &11, &13, &15                                           ; 2e18: 0f 11 13... ... :1d18[1]
; &2e1c referenced 1 time by &1e10[1]
.l1d1c
    equb 5, 6, 7, 8, 9, &0a, &0b, &0c                                 ; 2e1c: 05 06 07... ... :1d1c[1]

; &2e24 referenced 2 times by &28c7[1], &4836[1]
.sub_c1d24
    lda l0e49                                                         ; 2e24: ad 49 0e    .I. :1d24[1]
    sta l0080                                                         ; 2e27: 85 80       ..  :1d27[1]
    lda l0e4a                                                         ; 2e29: ad 4a 0e    .J. :1d29[1]
    sta l0081                                                         ; 2e2c: 85 81       ..  :1d2c[1]
    lda l0e50                                                         ; 2e2e: ad 50 0e    .P. :1d2e[1]
    sta l0e54                                                         ; 2e31: 8d 54 0e    .T. :1d31[1]
; &2e34 referenced 1 time by &1d51[1]
.loop_c1d34
    ldy #1                                                            ; 2e34: a0 01       ..  :1d34[1]
    lda (l0080),y                                                     ; 2e36: b1 80       ..  :1d36[1]
    sta l007a                                                         ; 2e38: 85 7a       .z  :1d38[1]
    ldy #3                                                            ; 2e3a: a0 03       ..  :1d3a[1]
    lda (l0080),y                                                     ; 2e3c: b1 80       ..  :1d3c[1]
    sta l007b                                                         ; 2e3e: 85 7b       .{  :1d3e[1]
    jsr sub_c0f64                                                     ; 2e40: 20 64 0f     d. :1d40[1]
    lda l0080                                                         ; 2e43: a5 80       ..  :1d43[1]
    clc                                                               ; 2e45: 18          .   :1d45[1]
    adc #4                                                            ; 2e46: 69 04       i.  :1d46[1]
    sta l0080                                                         ; 2e48: 85 80       ..  :1d48[1]
    bcc c1d4e                                                         ; 2e4a: 90 02       ..  :1d4a[1]
    inc l0081                                                         ; 2e4c: e6 81       ..  :1d4c[1]
; &2e4e referenced 1 time by &1d4a[1]
.c1d4e
    dec l0e54                                                         ; 2e4e: ce 54 0e    .T. :1d4e[1]
    bne loop_c1d34                                                    ; 2e51: d0 e1       ..  :1d51[1]
    rts                                                               ; 2e53: 60          `   :1d53[1]

    equb &ea, &ea, &ea, &ea                                           ; 2e54: ea ea ea... ... :1d54[1]

; &2e58 referenced 1 time by &358f[1]
.sub_c1d58
    lda l0e49                                                         ; 2e58: ad 49 0e    .I. :1d58[1]
    sta l0080                                                         ; 2e5b: 85 80       ..  :1d5b[1]
    lda l0e4a                                                         ; 2e5d: ad 4a 0e    .J. :1d5d[1]
    sta l0081                                                         ; 2e60: 85 81       ..  :1d60[1]
    lda l0e50                                                         ; 2e62: ad 50 0e    .P. :1d62[1]
    sta l0e54                                                         ; 2e65: 8d 54 0e    .T. :1d65[1]
; &2e68 referenced 1 time by &1d87[1]
.loop_c1d68
    jsr sub_c2113                                                     ; 2e68: 20 13 21     .! :1d68[1]
    ldy #1                                                            ; 2e6b: a0 01       ..  :1d6b[1]
    lda l1cd1                                                         ; 2e6d: ad d1 1c    ... :1d6d[1]
    sta (l0080),y                                                     ; 2e70: 91 80       ..  :1d70[1]
    ldy #3                                                            ; 2e72: a0 03       ..  :1d72[1]
    lda l1cd2                                                         ; 2e74: ad d2 1c    ... :1d74[1]
    sta (l0080),y                                                     ; 2e77: 91 80       ..  :1d77[1]
    lda l0080                                                         ; 2e79: a5 80       ..  :1d79[1]
    clc                                                               ; 2e7b: 18          .   :1d7b[1]
    adc #4                                                            ; 2e7c: 69 04       i.  :1d7c[1]
    sta l0080                                                         ; 2e7e: 85 80       ..  :1d7e[1]
    bcc c1d84                                                         ; 2e80: 90 02       ..  :1d80[1]
    inc l0081                                                         ; 2e82: e6 81       ..  :1d82[1]
; &2e84 referenced 1 time by &1d80[1]
.c1d84
    dec l0e54                                                         ; 2e84: ce 54 0e    .T. :1d84[1]
    bne loop_c1d68                                                    ; 2e87: d0 df       ..  :1d87[1]
    rts                                                               ; 2e89: 60          `   :1d89[1]

    equb &ea, &ea, &ea, &ea                                           ; 2e8a: ea ea ea... ... :1d8a[1]

; &2e8e referenced 2 times by &1de0[1], &28af[1]
.c1d8e
    ldx #&0f                                                          ; 2e8e: a2 0f       ..  :1d8e[1]
; &2e90 referenced 1 time by &1d9a[1]
.loop_c1d90
    lda l0c00,x                                                       ; 2e90: bd 00 0c    ... :1d90[1]
    eor l6b38,x                                                       ; 2e93: 5d 38 6b    ]8k :1d93[1]
    sta l6b38,x                                                       ; 2e96: 9d 38 6b    .8k :1d96[1]
    dex                                                               ; 2e99: ca          .   :1d99[1]
    bpl loop_c1d90                                                    ; 2e9a: 10 f4       ..  :1d9a[1]
    ldx #&0f                                                          ; 2e9c: a2 0f       ..  :1d9c[1]
; &2e9e referenced 1 time by &1da8[1]
.loop_c1d9e
    lda l0c10,x                                                       ; 2e9e: bd 10 0c    ... :1d9e[1]
    eor l6c78,x                                                       ; 2ea1: 5d 78 6c    ]xl :1da1[1]
    sta l6c78,x                                                       ; 2ea4: 9d 78 6c    .xl :1da4[1]
    dex                                                               ; 2ea7: ca          .   :1da7[1]
    bpl loop_c1d9e                                                    ; 2ea8: 10 f4       ..  :1da8[1]
    rts                                                               ; 2eaa: 60          `   :1daa[1]

    equb &ea, &ea, &ea, &ea                                           ; 2eab: ea ea ea... ... :1dab[1]

; &2eaf referenced 1 time by &1af8[1]
.sub_c1daf
    lda l1cca                                                         ; 2eaf: ad ca 1c    ... :1daf[1]
    sta l0080                                                         ; 2eb2: 85 80       ..  :1db2[1]
    lda l1ccb                                                         ; 2eb4: ad cb 1c    ... :1db4[1]
    sta l0081                                                         ; 2eb7: 85 81       ..  :1db7[1]
    lda l1ccc                                                         ; 2eb9: ad cc 1c    ... :1db9[1]
    sta l0e54                                                         ; 2ebc: 8d 54 0e    .T. :1dbc[1]
; &2ebf referenced 1 time by &1dd0[1]
.loop_c1dbf
    jsr sub_c1e3d                                                     ; 2ebf: 20 3d 1e     =. :1dbf[1]
    lda l0080                                                         ; 2ec2: a5 80       ..  :1dc2[1]
    clc                                                               ; 2ec4: 18          .   :1dc4[1]
    adc #3                                                            ; 2ec5: 69 03       i.  :1dc5[1]
    sta l0080                                                         ; 2ec7: 85 80       ..  :1dc7[1]
    bcc c1dcd                                                         ; 2ec9: 90 02       ..  :1dc9[1]
    inc l0081                                                         ; 2ecb: e6 81       ..  :1dcb[1]
; &2ecd referenced 1 time by &1dc9[1]
.c1dcd
    dec l0e54                                                         ; 2ecd: ce 54 0e    .T. :1dcd[1]
    bne loop_c1dbf                                                    ; 2ed0: d0 ed       ..  :1dd0[1]
    inc l1cc9                                                         ; 2ed2: ee c9 1c    ... :1dd2[1]
    lda l1cd1                                                         ; 2ed5: ad d1 1c    ... :1dd5[1]
    ora #&10                                                          ; 2ed8: 09 10       ..  :1dd8[1]
    sta l1cd1                                                         ; 2eda: 8d d1 1c    ... :1dda[1]
    jsr sub_c317c                                                     ; 2edd: 20 7c 31     |1 :1ddd[1]
    jmp c1d8e                                                         ; 2ee0: 4c 8e 1d    L.. :1de0[1]

    equb &ea, &ea, &ea, &ea, &ea                                      ; 2ee3: ea ea ea... ... :1de3[1]

; &2ee8 referenced 1 time by &38b8[1]
.sub_c1de8
    dec l1cce                                                         ; 2ee8: ce ce 1c    ... :1de8[1]
    bne c1df0                                                         ; 2eeb: d0 03       ..  :1deb[1]
    jmp c4607                                                         ; 2eed: 4c 07 46    L.F :1ded[1]

; &2ef0 referenced 1 time by &1deb[1]
.c1df0
    lda l1cca                                                         ; 2ef0: ad ca 1c    ... :1df0[1]
    sta l0080                                                         ; 2ef3: 85 80       ..  :1df3[1]
    lda l1ccb                                                         ; 2ef5: ad cb 1c    ... :1df5[1]
    sta l0081                                                         ; 2ef8: 85 81       ..  :1df8[1]
    lda l1ccc                                                         ; 2efa: ad cc 1c    ... :1dfa[1]
    sta l0e54                                                         ; 2efd: 8d 54 0e    .T. :1dfd[1]
; &2f00 referenced 1 time by &1e39[1]
.c1e00
    ldy #0                                                            ; 2f00: a0 00       ..  :1e00[1]
    lda (l0080),y                                                     ; 2f02: b1 80       ..  :1e02[1]
    beq c1e2b                                                         ; 2f04: f0 25       .%  :1e04[1]
    jsr sub_c1e3d                                                     ; 2f06: 20 3d 1e     =. :1e06[1]
    ldy #1                                                            ; 2f09: a0 01       ..  :1e09[1]
    lda (l0080),y                                                     ; 2f0b: b1 80       ..  :1e0b[1]
    and #7                                                            ; 2f0d: 29 07       ).  :1e0d[1]
    tax                                                               ; 2f0f: aa          .   :1e0f[1]
    lda l1d1c,x                                                       ; 2f10: bd 1c 1d    ... :1e10[1]
    dey                                                               ; 2f13: 88          .   :1e13[1]   ; Y=&00
    clc                                                               ; 2f14: 18          .   :1e14[1]
    adc (l0080),y                                                     ; 2f15: 71 80       q.  :1e15[1]
    bcc c1e1e                                                         ; 2f17: 90 05       ..  :1e17[1]
    tya                                                               ; 2f19: 98          .   :1e19[1]
    sta (l0080),y                                                     ; 2f1a: 91 80       ..  :1e1a[1]
    beq c1e2b                                                         ; 2f1c: f0 0d       ..  :1e1c[1]   ; ALWAYS branch

; &2f1e referenced 1 time by &1e17[1]
.c1e1e
    sta (l0080),y                                                     ; 2f1e: 91 80       ..  :1e1e[1]
    txa                                                               ; 2f20: 8a          .   :1e20[1]
    ldy #2                                                            ; 2f21: a0 02       ..  :1e21[1]
    sec                                                               ; 2f23: 38          8   :1e23[1]
    adc (l0080),y                                                     ; 2f24: 71 80       q.  :1e24[1]
    sta (l0080),y                                                     ; 2f26: 91 80       ..  :1e26[1]
    jsr sub_c1e3d                                                     ; 2f28: 20 3d 1e     =. :1e28[1]
; &2f2b referenced 2 times by &1e04[1], &1e1c[1]
.c1e2b
    lda l0080                                                         ; 2f2b: a5 80       ..  :1e2b[1]
    clc                                                               ; 2f2d: 18          .   :1e2d[1]
    adc #3                                                            ; 2f2e: 69 03       i.  :1e2e[1]
    sta l0080                                                         ; 2f30: 85 80       ..  :1e30[1]
    bcc c1e36                                                         ; 2f32: 90 02       ..  :1e32[1]
    inc l0081                                                         ; 2f34: e6 81       ..  :1e34[1]
; &2f36 referenced 1 time by &1e32[1]
.c1e36
    dec l0e54                                                         ; 2f36: ce 54 0e    .T. :1e36[1]
    bne c1e00                                                         ; 2f39: d0 c5       ..  :1e39[1]
    rts                                                               ; 2f3b: 60          `   :1e3b[1]

    equb &ea                                                          ; 2f3c: ea          .   :1e3c[1]

; &2f3d referenced 3 times by &1dbf[1], &1e06[1], &1e28[1]
.sub_c1e3d
    ldy #0                                                            ; 2f3d: a0 00       ..  :1e3d[1]
    lda (l0080),y                                                     ; 2f3f: b1 80       ..  :1e3f[1]
    and #&c0                                                          ; 2f41: 29 c0       ).  :1e41[1]
    sta l0075                                                         ; 2f43: 85 75       .u  :1e43[1]
    ldy #2                                                            ; 2f45: a0 02       ..  :1e45[1]
    lda (l0080),y                                                     ; 2f47: b1 80       ..  :1e47[1]
    sta l007c                                                         ; 2f49: 85 7c       .|  :1e49[1]
    lda l0e54                                                         ; 2f4b: ad 54 0e    .T. :1e4b[1]
    and #&1f                                                          ; 2f4e: 29 1f       ).  :1e4e[1]
    tax                                                               ; 2f50: aa          .   :1e50[1]
    lda l0e58,x                                                       ; 2f51: bd 58 0e    .X. :1e51[1]
    bpl c1e5b                                                         ; 2f54: 10 05       ..  :1e54[1]
    eor #&1f                                                          ; 2f56: 49 1f       I.  :1e56[1]
    clc                                                               ; 2f58: 18          .   :1e58[1]
    adc #1                                                            ; 2f59: 69 01       i.  :1e59[1]
; &2f5b referenced 1 time by &1e54[1]
.c1e5b
    sta l007a                                                         ; 2f5b: 85 7a       .z  :1e5b[1]
    lda l0e78,x                                                       ; 2f5d: bd 78 0e    .x. :1e5d[1]
    bpl c1e67                                                         ; 2f60: 10 05       ..  :1e60[1]
    eor #&1f                                                          ; 2f62: 49 1f       I.  :1e62[1]
    clc                                                               ; 2f64: 18          .   :1e64[1]
    adc #1                                                            ; 2f65: 69 01       i.  :1e65[1]
; &2f67 referenced 1 time by &1e60[1]
.c1e67
    sta l007b                                                         ; 2f67: 85 7b       .{  :1e67[1]
    ldx #3                                                            ; 2f69: a2 03       ..  :1e69[1]
    lda #0                                                            ; 2f6b: a9 00       ..  :1e6b[1]
; &2f6d referenced 1 time by &1e76[1]
.loop_c1e6d
    lsr l007a                                                         ; 2f6d: 46 7a       Fz  :1e6d[1]
    bcc c1e74                                                         ; 2f6f: 90 03       ..  :1e6f[1]
    clc                                                               ; 2f71: 18          .   :1e71[1]
    adc l007c                                                         ; 2f72: 65 7c       e|  :1e72[1]
; &2f74 referenced 1 time by &1e6f[1]
.c1e74
    ror a                                                             ; 2f74: 6a          j   :1e74[1]
    dex                                                               ; 2f75: ca          .   :1e75[1]
    bne loop_c1e6d                                                    ; 2f76: d0 f5       ..  :1e76[1]
    ldx l007a                                                         ; 2f78: a6 7a       .z  :1e78[1]
    beq c1e7e                                                         ; 2f7a: f0 02       ..  :1e7a[1]
    eor #&ff                                                          ; 2f7c: 49 ff       I.  :1e7c[1]
; &2f7e referenced 1 time by &1e7a[1]
.c1e7e
    eor #&80                                                          ; 2f7e: 49 80       I.  :1e7e[1]
    sta l007a                                                         ; 2f80: 85 7a       .z  :1e80[1]
    ldx #3                                                            ; 2f82: a2 03       ..  :1e82[1]
    lda #0                                                            ; 2f84: a9 00       ..  :1e84[1]
; &2f86 referenced 1 time by &1e8f[1]
.loop_c1e86
    lsr l007b                                                         ; 2f86: 46 7b       F{  :1e86[1]
    bcc c1e8d                                                         ; 2f88: 90 03       ..  :1e88[1]
    clc                                                               ; 2f8a: 18          .   :1e8a[1]
    adc l007c                                                         ; 2f8b: 65 7c       e|  :1e8b[1]
; &2f8d referenced 1 time by &1e88[1]
.c1e8d
    ror a                                                             ; 2f8d: 6a          j   :1e8d[1]
    dex                                                               ; 2f8e: ca          .   :1e8e[1]
    bne loop_c1e86                                                    ; 2f8f: d0 f5       ..  :1e8f[1]
    ldx l007b                                                         ; 2f91: a6 7b       .{  :1e91[1]
    beq c1e97                                                         ; 2f93: f0 02       ..  :1e93[1]
    eor #&ff                                                          ; 2f95: 49 ff       I.  :1e95[1]
; &2f97 referenced 1 time by &1e93[1]
.c1e97
    eor #&80                                                          ; 2f97: 49 80       I.  :1e97[1]
    sta l007b                                                         ; 2f99: 85 7b       .{  :1e99[1]
    dey                                                               ; 2f9b: 88          .   :1e9b[1]
    lda (l0080),y                                                     ; 2f9c: b1 80       ..  :1e9c[1]
    bpl c1ec6                                                         ; 2f9e: 10 26       .&  :1e9e[1]
    lda l0075                                                         ; 2fa0: a5 75       .u  :1ea0[1]
    clc                                                               ; 2fa2: 18          .   :1ea2[1]
    rol a                                                             ; 2fa3: 2a          *   :1ea3[1]
    rol a                                                             ; 2fa4: 2a          *   :1ea4[1]
    rol a                                                             ; 2fa5: 2a          *   :1ea5[1]
    sta l0072                                                         ; 2fa6: 85 72       .r  :1ea6[1]
    eor #3                                                            ; 2fa8: 49 03       I.  :1ea8[1]
    clc                                                               ; 2faa: 18          .   :1eaa[1]
    adc #1                                                            ; 2fab: 69 01       i.  :1eab[1]
    sec                                                               ; 2fad: 38          8   :1ead[1]
    rol a                                                             ; 2fae: 2a          *   :1eae[1]
    sta l0074                                                         ; 2faf: 85 74       .t  :1eaf[1]
    inc l0072                                                         ; 2fb1: e6 72       .r  :1eb1[1]
    iny                                                               ; 2fb3: c8          .   :1eb3[1]
    lda (l0080),y                                                     ; 2fb4: b1 80       ..  :1eb4[1]
    and #&1f                                                          ; 2fb6: 29 1f       ).  :1eb6[1]
    sta l0078                                                         ; 2fb8: 85 78       .x  :1eb8[1]
    lda l007a                                                         ; 2fba: a5 7a       .z  :1eba[1]
    sta l0077                                                         ; 2fbc: 85 77       .w  :1ebc[1]
    lda l007b                                                         ; 2fbe: a5 7b       .{  :1ebe[1]
    sta l0076                                                         ; 2fc0: 85 76       .v  :1ec0[1]
    jsr c18e4                                                         ; 2fc2: 20 e4 18     .. :1ec2[1]
    rts                                                               ; 2fc5: 60          `   :1ec5[1]

; &2fc6 referenced 1 time by &1e9e[1]
.c1ec6
    jsr sub_c0f64                                                     ; 2fc6: 20 64 0f     d. :1ec6[1]
    lda l0075                                                         ; 2fc9: a5 75       .u  :1ec9[1]
    cmp #&c0                                                          ; 2fcb: c9 c0       ..  :1ecb[1]
    beq c1efe                                                         ; 2fcd: f0 2f       ./  :1ecd[1]
    inc l007a                                                         ; 2fcf: e6 7a       .z  :1ecf[1]
    jsr sub_c0f64                                                     ; 2fd1: 20 64 0f     d. :1ed1[1]
    lda l0075                                                         ; 2fd4: a5 75       .u  :1ed4[1]
    bmi c1efe                                                         ; 2fd6: 30 26       0&  :1ed6[1]
    inc l007b                                                         ; 2fd8: e6 7b       .{  :1ed8[1]
    jsr sub_c0f64                                                     ; 2fda: 20 64 0f     d. :1eda[1]
    dec l007a                                                         ; 2fdd: c6 7a       .z  :1edd[1]
    jsr sub_c0f64                                                     ; 2fdf: 20 64 0f     d. :1edf[1]
    lda l0075                                                         ; 2fe2: a5 75       .u  :1ee2[1]
    bne c1efe                                                         ; 2fe4: d0 18       ..  :1ee4[1]
    inc l007b                                                         ; 2fe6: e6 7b       .{  :1ee6[1]
    jsr sub_c0f64                                                     ; 2fe8: 20 64 0f     d. :1ee8[1]
    dec l007b                                                         ; 2feb: c6 7b       .{  :1eeb[1]
    dec l007a                                                         ; 2fed: c6 7a       .z  :1eed[1]
    jsr sub_c0f64                                                     ; 2fef: 20 64 0f     d. :1eef[1]
    dec l007b                                                         ; 2ff2: c6 7b       .{  :1ef2[1]
    jsr sub_c0f64                                                     ; 2ff4: 20 64 0f     d. :1ef4[1]
    dec l007b                                                         ; 2ff7: c6 7b       .{  :1ef7[1]
    inc l007a                                                         ; 2ff9: e6 7a       .z  :1ef9[1]
    jsr sub_c0f64                                                     ; 2ffb: 20 64 0f     d. :1efb[1]
; &2ffe referenced 3 times by &1ecd[1], &1ed6[1], &1ee4[1]
.c1efe
    rts                                                               ; 2ffe: 60          `   :1efe[1]

    equb &ea                                                          ; 2fff: ea          .   :1eff[1]
    equb &ea, &ea, &ea                                                ; 3000: ea ea ea    ... :1f00[1]

; &3003 referenced 1 time by &28a9[1]
.sub_c1f03
    lda l1ccd                                                         ; 3003: ad cd 1c    ... :1f03[1]
    sta l1cce                                                         ; 3006: 8d ce 1c    ... :1f06[1]
    lda l1cca                                                         ; 3009: ad ca 1c    ... :1f09[1]
    sta l0080                                                         ; 300c: 85 80       ..  :1f0c[1]
    lda l1ccb                                                         ; 300e: ad cb 1c    ... :1f0e[1]
    sta l0081                                                         ; 3011: 85 81       ..  :1f11[1]
    lda l1ccc                                                         ; 3013: ad cc 1c    ... :1f13[1]
    sta l0e54                                                         ; 3016: 8d 54 0e    .T. :1f16[1]
; &3019 referenced 1 time by &1f2a[1]
.loop_c1f19
    jsr sub_c1f2d                                                     ; 3019: 20 2d 1f     -. :1f19[1]
    lda l0080                                                         ; 301c: a5 80       ..  :1f1c[1]
    clc                                                               ; 301e: 18          .   :1f1e[1]
    adc #3                                                            ; 301f: 69 03       i.  :1f1f[1]
    sta l0080                                                         ; 3021: 85 80       ..  :1f21[1]
    bcc c1f27                                                         ; 3023: 90 02       ..  :1f23[1]
    inc l0081                                                         ; 3025: e6 81       ..  :1f25[1]
; &3027 referenced 1 time by &1f23[1]
.c1f27
    dec l0e54                                                         ; 3027: ce 54 0e    .T. :1f27[1]
    bne loop_c1f19                                                    ; 302a: d0 ed       ..  :1f2a[1]
    rts                                                               ; 302c: 60          `   :1f2c[1]

; &302d referenced 1 time by &1f19[1]
.sub_c1f2d
    jsr sub_c2113                                                     ; 302d: 20 13 21     .! :1f2d[1]
    ldy #2                                                            ; 3030: a0 02       ..  :1f30[1]
    lda l1cd1                                                         ; 3032: ad d1 1c    ... :1f32[1]
    and #7                                                            ; 3035: 29 07       ).  :1f35[1]
    sta (l0080),y                                                     ; 3037: 91 80       ..  :1f37[1]
    dey                                                               ; 3039: 88          .   :1f39[1]   ; Y=&01
    lda l1cd2                                                         ; 303a: ad d2 1c    ... :1f3a[1]
    lsr a                                                             ; 303d: 4a          J   :1f3d[1]
    sta (l0080),y                                                     ; 303e: 91 80       ..  :1f3e[1]
    lda l1cd1                                                         ; 3040: ad d1 1c    ... :1f40[1]
    and #&3c ; '<'                                                    ; 3043: 29 3c       )<  :1f43[1]
    bne c1f4d                                                         ; 3045: d0 06       ..  :1f45[1]
    lda (l0080),y                                                     ; 3047: b1 80       ..  :1f47[1]
    ora #&80                                                          ; 3049: 09 80       ..  :1f49[1]
    sta (l0080),y                                                     ; 304b: 91 80       ..  :1f4b[1]
; &304d referenced 1 time by &1f45[1]
.c1f4d
    dey                                                               ; 304d: 88          .   :1f4d[1]
    lda l1cd1                                                         ; 304e: ad d1 1c    ... :1f4e[1]
    and #&1f                                                          ; 3051: 29 1f       ).  :1f51[1]
    clc                                                               ; 3053: 18          .   :1f53[1]
    adc #1                                                            ; 3054: 69 01       i.  :1f54[1]
    sta (l0080),y                                                     ; 3056: 91 80       ..  :1f56[1]
    rts                                                               ; 3058: 60          `   :1f58[1]

    equb &ea, &ea, &ea, &ea                                           ; 3059: ea ea ea... ... :1f59[1]

; &305d referenced 5 times by &182e[1], &18ae[1], &1bf8[1], &27f4[1], &2980[1]
.sub_c1f5d
    lda l0400,x                                                       ; 305d: bd 00 04    ... :1f5d[1]
    bne c1f65                                                         ; 3060: d0 03       ..  :1f60[1]
    jsr sub_c1bfc                                                     ; 3062: 20 fc 1b     .. :1f62[1]
; &3065 referenced 1 time by &1f60[1]
.c1f65
    lda l0e39                                                         ; 3065: ad 39 0e    .9. :1f65[1]
    sta l0409,x                                                       ; 3068: 9d 09 04    ... :1f68[1]
    ldy l0e4f                                                         ; 306b: ac 4f 0e    .O. :1f6b[1]
    lda #0                                                            ; 306e: a9 00       ..  :1f6e[1]
; &3070 referenced 1 time by &1f79[1]
.loop_c1f70
    cmp l1ce1,y                                                       ; 3070: d9 e1 1c    ... :1f70[1]
    bcs c1f78                                                         ; 3073: b0 03       ..  :1f73[1]
    lda l1ce1,y                                                       ; 3075: b9 e1 1c    ... :1f75[1]
; &3078 referenced 1 time by &1f73[1]
.c1f78
    dey                                                               ; 3078: 88          .   :1f78[1]
    bne loop_c1f70                                                    ; 3079: d0 f5       ..  :1f79[1]
    cmp l0e35                                                         ; 307b: cd 35 0e    .5. :1f7b[1]
    beq c1f83                                                         ; 307e: f0 03       ..  :1f7e[1]
    clc                                                               ; 3080: 18          .   :1f80[1]
    adc #1                                                            ; 3081: 69 01       i.  :1f81[1]
; &3083 referenced 1 time by &1f7e[1]
.c1f83
    ldy l0e54                                                         ; 3083: ac 54 0e    .T. :1f83[1]
    sta l1ce1,y                                                       ; 3086: 99 e1 1c    ... :1f86[1]
    tay                                                               ; 3089: a8          .   :1f89[1]
    lda l1cf6,y                                                       ; 308a: b9 f6 1c    ... :1f8a[1]
    sta l0086                                                         ; 308d: 85 86       ..  :1f8d[1]
    lda l1d07,y                                                       ; 308f: b9 07 1d    ... :1f8f[1]
    sta l0087                                                         ; 3092: 85 87       ..  :1f92[1]
    ldy l1ccf                                                         ; 3094: ac cf 1c    ... :1f94[1]
; &3097 referenced 1 time by &1fad[1]
.loop_c1f97
    jsr sub_c2113                                                     ; 3097: 20 13 21     .! :1f97[1]
    lda l1cd2                                                         ; 309a: ad d2 1c    ... :1f9a[1]
    and #&3f ; '?'                                                    ; 309d: 29 3f       )?  :1f9d[1]
    sta (l0086),y                                                     ; 309f: 91 86       ..  :1f9f[1]
    dey                                                               ; 30a1: 88          .   :1fa1[1]
    lda l1cd1                                                         ; 30a2: ad d1 1c    ... :1fa2[1]
    and #&3f ; '?'                                                    ; 30a5: 29 3f       )?  :1fa5[1]
    clc                                                               ; 30a7: 18          .   :1fa7[1]
    adc #&68 ; 'h'                                                    ; 30a8: 69 68       ih  :1fa8[1]
    sta (l0086),y                                                     ; 30aa: 91 86       ..  :1faa[1]
    dey                                                               ; 30ac: 88          .   :1fac[1]
    bpl loop_c1f97                                                    ; 30ad: 10 e8       ..  :1fad[1]
    jmp c2d86                                                         ; 30af: 4c 86 2d    L.- :1faf[1]

    equb &ea, &ea                                                     ; 30b2: ea ea       ..  :1fb2[1]

; &30b4 referenced 1 time by &171e[1]
.sub_c1fb4
    lda l0409,x                                                       ; 30b4: bd 09 04    ... :1fb4[1]
    cmp l0e37                                                         ; 30b7: cd 37 0e    .7. :1fb7[1]
    lda #1                                                            ; 30ba: a9 01       ..  :1fba[1]
    bcs c1fc0                                                         ; 30bc: b0 02       ..  :1fbc[1]
    lda #0                                                            ; 30be: a9 00       ..  :1fbe[1]
; &30c0 referenced 1 time by &1fbc[1]
.c1fc0
    sta l1cd0                                                         ; 30c0: 8d d0 1c    ... :1fc0[1]
    jsr sub_c20a4                                                     ; 30c3: 20 a4 20     .  :1fc3[1]
    ldy l1ccf                                                         ; 30c6: ac cf 1c    ... :1fc6[1]
; &30c9 referenced 1 time by &2003[1]
.c1fc9
    dey                                                               ; 30c9: 88          .   :1fc9[1]
    lda (l0086),y                                                     ; 30ca: b1 86       ..  :1fca[1]
    beq c2002                                                         ; 30cc: f0 34       .4  :1fcc[1]
    jsr sub_c2025                                                     ; 30ce: 20 25 20     %  :1fce[1]
    lda (l0086),y                                                     ; 30d1: b1 86       ..  :1fd1[1]
    and #3                                                            ; 30d3: 29 03       ).  :1fd3[1]
    tax                                                               ; 30d5: aa          .   :1fd5[1]
    lda l1d18,x                                                       ; 30d6: bd 18 1d    ... :1fd6[1]
    dey                                                               ; 30d9: 88          .   :1fd9[1]
    clc                                                               ; 30da: 18          .   :1fda[1]
    adc (l0086),y                                                     ; 30db: 71 86       q.  :1fdb[1]
    bcc c1ff5                                                         ; 30dd: 90 16       ..  :1fdd[1]
    lda l1cd0                                                         ; 30df: ad d0 1c    ... :1fdf[1]
    sta (l0086),y                                                     ; 30e2: 91 86       ..  :1fe2[1]
    beq c2002                                                         ; 30e4: f0 1c       ..  :1fe4[1]
    jsr sub_c2113                                                     ; 30e6: 20 13 21     .! :1fe6[1]
    lda l1cd2                                                         ; 30e9: ad d2 1c    ... :1fe9[1]
    lsr a                                                             ; 30ec: 4a          J   :1fec[1]
    and #&3f ; '?'                                                    ; 30ed: 29 3f       )?  :1fed[1]
    iny                                                               ; 30ef: c8          .   :1fef[1]
    sta (l0086),y                                                     ; 30f0: 91 86       ..  :1ff0[1]
    jmp c2001                                                         ; 30f2: 4c 01 20    L.  :1ff2[1]

; &30f5 referenced 1 time by &1fdd[1]
.c1ff5
    sta (l0086),y                                                     ; 30f5: 91 86       ..  :1ff5[1]
    iny                                                               ; 30f7: c8          .   :1ff7[1]
    inx                                                               ; 30f8: e8          .   :1ff8[1]
    txa                                                               ; 30f9: 8a          .   :1ff9[1]
    asl a                                                             ; 30fa: 0a          .   :1ffa[1]
    asl a                                                             ; 30fb: 0a          .   :1ffb[1]
    clc                                                               ; 30fc: 18          .   :1ffc[1]
    adc (l0086),y                                                     ; 30fd: 71 86       q.  :1ffd[1]
    sta (l0086),y                                                     ; 30ff: 91 86       ..  :1fff[1]
; &3101 referenced 1 time by &1ff2[1]
.c2001
    dey                                                               ; 3101: 88          .   :2001[1]
; &3102 referenced 2 times by &1fcc[1], &1fe4[1]
.c2002
    dey                                                               ; 3102: 88          .   :2002[1]
    bpl c1fc9                                                         ; 3103: 10 c4       ..  :2003[1]
    ldx l0088                                                         ; 3105: a6 88       ..  :2005[1]
    rts                                                               ; 3107: 60          `   :2007[1]

.l2008
    equb &ea, &ea, &ea, &ea                                           ; 3108: ea ea ea... ... :2008[1]   ; Channel (2 bytes); Amplitude (2 bytes)

; &310c referenced 1 time by &1767[1]
.sub_c200c
    jsr sub_c20a4                                                     ; 310c: 20 a4 20     .  :200c[1]   ; Pitch (2 bytes); Duration (2 bytes)
    ldy l1ccf                                                         ; 310f: ac cf 1c    ... :200f[1]
; &3112 referenced 1 time by &201c[1]
.loop_c2012
    dey                                                               ; 3112: 88          .   :2012[1]
    lda (l0086),y                                                     ; 3113: b1 86       ..  :2013[1]
    beq c201b                                                         ; 3115: f0 04       ..  :2015[1]
    jsr sub_c2025                                                     ; 3117: 20 25 20     %  :2017[1]
    dey                                                               ; 311a: 88          .   :201a[1]
; &311b referenced 1 time by &2015[1]
.c201b
    dey                                                               ; 311b: 88          .   :201b[1]
    bpl loop_c2012                                                    ; 311c: 10 f4       ..  :201c[1]
    ldx l0088                                                         ; 311e: a6 88       ..  :201e[1]
    rts                                                               ; 3120: 60          `   :2020[1]

    equb &ea, &ea, &ea, &ea                                           ; 3121: ea ea ea... ... :2021[1]

; &3125 referenced 2 times by &1fce[1], &2017[1]
.sub_c2025
    lda (l0086),y                                                     ; 3125: b1 86       ..  :2025[1]
    and #&c0                                                          ; 3127: 29 c0       ).  :2027[1]
    sta l0078                                                         ; 3129: 85 78       .x  :2029[1]
    iny                                                               ; 312b: c8          .   :202b[1]
    lda (l0086),y                                                     ; 312c: b1 86       ..  :202c[1]
    lsr a                                                             ; 312e: 4a          J   :202e[1]
    lsr a                                                             ; 312f: 4a          J   :202f[1]
    sta l007c                                                         ; 3130: 85 7c       .|  :2030[1]
    tya                                                               ; 3132: 98          .   :2032[1]
    lsr a                                                             ; 3133: 4a          J   :2033[1]
    tax                                                               ; 3134: aa          .   :2034[1]
    lda l0e58,x                                                       ; 3135: bd 58 0e    .X. :2035[1]
    bpl c203f                                                         ; 3138: 10 05       ..  :2038[1]
    eor #&1f                                                          ; 313a: 49 1f       I.  :203a[1]
    clc                                                               ; 313c: 18          .   :203c[1]
    adc #1                                                            ; 313d: 69 01       i.  :203d[1]
; &313f referenced 1 time by &2038[1]
.c203f
    sta l007a                                                         ; 313f: 85 7a       .z  :203f[1]
    lda l0e78,x                                                       ; 3141: bd 78 0e    .x. :2041[1]
    bpl c204b                                                         ; 3144: 10 05       ..  :2044[1]
    eor #&1f                                                          ; 3146: 49 1f       I.  :2046[1]
    clc                                                               ; 3148: 18          .   :2048[1]
    adc #1                                                            ; 3149: 69 01       i.  :2049[1]
; &314b referenced 1 time by &2044[1]
.c204b
    sta l007b                                                         ; 314b: 85 7b       .{  :204b[1]
    ldx #3                                                            ; 314d: a2 03       ..  :204d[1]
    lda #0                                                            ; 314f: a9 00       ..  :204f[1]
; &3151 referenced 1 time by &205a[1]
.loop_c2051
    lsr l007a                                                         ; 3151: 46 7a       Fz  :2051[1]
    bcc c2058                                                         ; 3153: 90 03       ..  :2053[1]
    clc                                                               ; 3155: 18          .   :2055[1]
    adc l007c                                                         ; 3156: 65 7c       e|  :2056[1]
; &3158 referenced 1 time by &2053[1]
.c2058
    ror a                                                             ; 3158: 6a          j   :2058[1]
    dex                                                               ; 3159: ca          .   :2059[1]
    bne loop_c2051                                                    ; 315a: d0 f5       ..  :205a[1]
    ldx l007a                                                         ; 315c: a6 7a       .z  :205c[1]
    beq c2062                                                         ; 315e: f0 02       ..  :205e[1]
    eor #&ff                                                          ; 3160: 49 ff       I.  :2060[1]
; &3162 referenced 1 time by &205e[1]
.c2062
    clc                                                               ; 3162: 18          .   :2062[1]
    adc l0077                                                         ; 3163: 65 77       ew  :2063[1]
    sta l007a                                                         ; 3165: 85 7a       .z  :2065[1]
    ldx #3                                                            ; 3167: a2 03       ..  :2067[1]
    lda #0                                                            ; 3169: a9 00       ..  :2069[1]
; &316b referenced 1 time by &2074[1]
.loop_c206b
    lsr l007b                                                         ; 316b: 46 7b       F{  :206b[1]
    bcc c2072                                                         ; 316d: 90 03       ..  :206d[1]
    clc                                                               ; 316f: 18          .   :206f[1]
    adc l007c                                                         ; 3170: 65 7c       e|  :2070[1]
; &3172 referenced 1 time by &206d[1]
.c2072
    ror a                                                             ; 3172: 6a          j   :2072[1]
    dex                                                               ; 3173: ca          .   :2073[1]
    bne loop_c206b                                                    ; 3174: d0 f5       ..  :2074[1]
    ldx l007b                                                         ; 3176: a6 7b       .{  :2076[1]
    beq c207c                                                         ; 3178: f0 02       ..  :2078[1]
    eor #&ff                                                          ; 317a: 49 ff       I.  :207a[1]
; &317c referenced 1 time by &2078[1]
.c207c
    clc                                                               ; 317c: 18          .   :207c[1]
    adc l0076                                                         ; 317d: 65 76       ev  :207d[1]
    sta l007b                                                         ; 317f: 85 7b       .{  :207f[1]
    sty l007c                                                         ; 3181: 84 7c       .|  :2081[1]
    jsr sub_c0f4a                                                     ; 3183: 20 4a 0f     J. :2083[1]
    lda l0078                                                         ; 3186: a5 78       .x  :2086[1]
    bmi c209d                                                         ; 3188: 30 13       0.  :2088[1]
    inc l007a                                                         ; 318a: e6 7a       .z  :208a[1]
    jsr sub_c0f4a                                                     ; 318c: 20 4a 0f     J. :208c[1]
    lda l0078                                                         ; 318f: a5 78       .x  :208f[1]
    bne c209d                                                         ; 3191: d0 0a       ..  :2091[1]
    inc l007b                                                         ; 3193: e6 7b       .{  :2093[1]
    jsr sub_c0f4a                                                     ; 3195: 20 4a 0f     J. :2095[1]
    dec l007a                                                         ; 3198: c6 7a       .z  :2098[1]
    jsr sub_c0f4a                                                     ; 319a: 20 4a 0f     J. :209a[1]
; &319d referenced 2 times by &2088[1], &2091[1]
.c209d
    ldy l007c                                                         ; 319d: a4 7c       .|  :209d[1]
    rts                                                               ; 319f: 60          `   :209f[1]

    equb &ea, &ea, &ea, &ea                                           ; 31a0: ea ea ea... ... :20a0[1]

; &31a4 referenced 2 times by &1fc3[1], &200c[1]
.sub_c20a4
    stx l0088                                                         ; 31a4: 86 88       ..  :20a4[1]
    lda l0402,x                                                       ; 31a6: bd 02 04    ... :20a6[1]
    sta l0077                                                         ; 31a9: 85 77       .w  :20a9[1]
    lda l0405,x                                                       ; 31ab: bd 05 04    ... :20ab[1]
    sta l0076                                                         ; 31ae: 85 76       .v  :20ae[1]
    lda l0409,x                                                       ; 31b0: bd 09 04    ... :20b0[1]
    cmp l0e37                                                         ; 31b3: cd 37 0e    .7. :20b3[1]
    bcc c20c1                                                         ; 31b6: 90 09       ..  :20b6[1]
    cmp l0e38                                                         ; 31b8: cd 38 0e    .8. :20b8[1]
    bcc c20c5                                                         ; 31bb: 90 08       ..  :20bb[1]
    jsr sub_c1bfc                                                     ; 31bd: 20 fc 1b     .. :20bd[1]
    rts                                                               ; 31c0: 60          `   :20c0[1]

; &31c1 referenced 1 time by &20b6[1]
.c20c1
    rts                                                               ; 31c1: 60          `   :20c1[1]

    equb &ea, &ea, &ea                                                ; 31c2: ea ea ea    ... :20c2[1]

; &31c5 referenced 1 time by &20bb[1]
.c20c5
    and #&1f                                                          ; 31c5: 29 1f       ).  :20c5[1]
    sta l0078                                                         ; 31c7: 85 78       .x  :20c7[1]
    lda l0077                                                         ; 31c9: a5 77       .w  :20c9[1]
    sta l007a                                                         ; 31cb: 85 7a       .z  :20cb[1]
    lda l0076                                                         ; 31cd: a5 76       .v  :20cd[1]
    sta l007b                                                         ; 31cf: 85 7b       .{  :20cf[1]
    lda #&0a                                                          ; 31d1: a9 0a       ..  :20d1[1]
    sta l0074                                                         ; 31d3: 85 74       .t  :20d3[1]
    lda #1                                                            ; 31d5: a9 01       ..  :20d5[1]
    sta l0072                                                         ; 31d7: 85 72       .r  :20d7[1]
    jsr c18e4                                                         ; 31d9: 20 e4 18     .. :20d9[1]
    ldx l0088                                                         ; 31dc: a6 88       ..  :20dc[1]
    lda l0409,x                                                       ; 31de: bd 09 04    ... :20de[1]
    eor #&1f                                                          ; 31e1: 49 1f       I.  :20e1[1]
    and #&1f                                                          ; 31e3: 29 1f       ).  :20e3[1]
    sta l0078                                                         ; 31e5: 85 78       .x  :20e5[1]
    lda #7                                                            ; 31e7: a9 07       ..  :20e7[1]
    sta l0074                                                         ; 31e9: 85 74       .t  :20e9[1]
    inc l0072                                                         ; 31eb: e6 72       .r  :20eb[1]
    jsr c18e4                                                         ; 31ed: 20 e4 18     .. :20ed[1]
    ldx l0088                                                         ; 31f0: a6 88       ..  :20f0[1]
    lda l0077                                                         ; 31f2: a5 77       .w  :20f2[1]
    sta l007a                                                         ; 31f4: 85 7a       .z  :20f4[1]
    lda l0076                                                         ; 31f6: a5 76       .v  :20f6[1]
    sta l007b                                                         ; 31f8: 85 7b       .{  :20f8[1]
    lda l0409,x                                                       ; 31fa: bd 09 04    ... :20fa[1]
    eor #&0f                                                          ; 31fd: 49 0f       I.  :20fd[1]
    and #&1f                                                          ; 31ff: 29 1f       ).  :20ff[1]
    sta l0078                                                         ; 3201: 85 78       .x  :2101[1]
    lda #6                                                            ; 3203: a9 06       ..  :2103[1]
    sta l0074                                                         ; 3205: 85 74       .t  :2105[1]
    lda #&ff                                                          ; 3207: a9 ff       ..  :2107[1]
    sta l0072                                                         ; 3209: 85 72       .r  :2109[1]
    jsr c18e4                                                         ; 320b: 20 e4 18     .. :210b[1]
    rts                                                               ; 320e: 60          `   :210e[1]

    equb &ea, &ea, &ea, &ea                                           ; 320f: ea ea ea... ... :210f[1]

; &3213 referenced 12 times by &1d68[1], &1f2d[1], &1f97[1], &1fe6[1], &26a9[1], &3172[1], &33e2[1], &3425[1], &3448[1], &346a[1], &36f9[1], &38cd[1]
.sub_c2113
    lda l1cd1                                                         ; 3213: ad d1 1c    ... :2113[1]
    sta l007b                                                         ; 3216: 85 7b       .{  :2116[1]
    lda l1cd2                                                         ; 3218: ad d2 1c    ... :2118[1]
    sta l007a                                                         ; 321b: 85 7a       .z  :211b[1]
    lda #8                                                            ; 321d: a9 08       ..  :211d[1]
    sta l007c                                                         ; 321f: 85 7c       .|  :211f[1]
    lda #&d5                                                          ; 3221: a9 d5       ..  :2121[1]
; &3223 referenced 1 time by &2131[1]
.loop_c2123
    lsr l007a                                                         ; 3223: 46 7a       Fz  :2123[1]
    ror l007b                                                         ; 3225: 66 7b       f{  :2125[1]
    bcc c212c                                                         ; 3227: 90 03       ..  :2127[1]
    clc                                                               ; 3229: 18          .   :2129[1]
    adc #&25 ; '%'                                                    ; 322a: 69 25       i%  :212a[1]
; &322c referenced 1 time by &2127[1]
.c212c
    ror a                                                             ; 322c: 6a          j   :212c[1]
    ror l0075                                                         ; 322d: 66 75       fu  :212d[1]
    dec l007c                                                         ; 322f: c6 7c       .|  :212f[1]
    bne loop_c2123                                                    ; 3231: d0 f0       ..  :2131[1]
    clc                                                               ; 3233: 18          .   :2133[1]
    adc l1cd1                                                         ; 3234: 6d d1 1c    m.. :2134[1]
    sta l1cd2                                                         ; 3237: 8d d2 1c    ... :2137[1]
    lda l0075                                                         ; 323a: a5 75       .u  :213a[1]
    sta l1cd1                                                         ; 323c: 8d d1 1c    ... :213c[1]
    rts                                                               ; 323f: 60          `   :213f[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea                                 ; 3240: ea ea ea... ... :2140[1]
; &3246 referenced 1 time by &243a[1]
.l2146
    equb &9e, &bd, &9a, &99, &aa, &ac, &bc, &df, &8e, &ce, &ee, &9c   ; 3246: 9e bd 9a... ... :2146[1]
    equb &9b, &ad, &96, &ff, &ff, &ff, &ff, &96                       ; 3252: 9b ad 96... ... :2152[1]
; &325a referenced 1 time by &22fc[1]
.l215a
    equb 0,   0, 3, &ff, 5, &19, 3, &ff, 3, &ff, 5, &19, 3, &ff       ; 325a: 00 00 03... ... :215a[1]
    equb 0,   0, 5, &19, 0,   0, 0,   0, 5, &19, 0,   0, 4, &ff       ; 3268: 00 00 05... ... :2168[1]
    equb 5, &19, 2, &fc, 4, &ff, 5, &19, 2, &fc, 4,   0, 4, &19       ; 3276: 05 19 02... ... :2176[1]
.l2184
    equb 1, 0, &f8, &fa, &0f, 4, &0a, 8, &7f, &fe, &fc, &ff, &7e, &64 ; 3284: 01 00 f8... ... :2184[1]   ; Envelope Number (1-16) and rest of definition (14 bytes)
.l2192
    equb 2, 0, &f8, &fa, &fe, 4, &0a, 8, &7f, &fe, &ff, &ff, &64, &50 ; 3292: 02 00 f8... ... :2192[1]   ; Envelope Number (1-16) and rest of definition (14 bytes)
.l21a0
    equb 3, &86, &ff, 0, 1, 3, 1, 2, &7f, &ff, &fd, &fd, &7e, &78     ; 32a0: 03 86 ff... ... :21a0[1]   ; Envelope Number (1-16) and rest of definition (14 bytes)
.l21ae
    equb 4, 0, &10, &f0, &10, 4, 8, 4, &7f, &ff, &ff, &ff, &7e, &64   ; 32ae: 04 00 10... ... :21ae[1]   ; Envelope Number (1-16) and rest of definition (14 bytes)
    equb 1, 2,   3,   4,   5, 6, 7, 8,   9, &0a, &0b, &0c             ; 32bc: 01 02 03... ... :21bc[1]
.sound_1
    equb &11, 0, 0, 0                                                 ; 32c8: 11 00 00... ... :21c8[1]   ; Channel (2 bytes); Amplitude (2 bytes)
; &32cc referenced 1 time by &2516[1]
.l21cc
    equb 0, 0, 8, 0                                                   ; 32cc: 00 00 08... ... :21cc[1]   ; Pitch (2 bytes); Duration (2 bytes)
.sound_2
    equb &10, 0                                                       ; 32d0: 10 00       ..  :21d0[1]   ; Channel (2 bytes)
; &32d2 referenced 1 time by &2527[1]
.l21d2
    equb 0                                                            ; 32d2: 00          .   :21d2[1]   ; Amplitude (2 bytes)
; &32d3 referenced 1 time by &252e[1]
.l21d3
    equb 0, 7, 0, 8, 0                                                ; 32d3: 00 07 00... ... :21d3[1]   ; Pitch (2 bytes); Duration (2 bytes)
.sound_3
    equb &13, 0, 1, 0, &80, 0, 4, 0                                   ; 32d8: 13 00 01... ... :21d8[1]   ; Channel (2 bytes); Amplitude (2 bytes); Pitch (2 bytes); Duration (2 bytes)
.sound_4
    equb &12, 0, 2, 0, &c0, 0, &1f, 0                                 ; 32e0: 12 00 02... ... :21e0[1]
.sound_5
    equb &12, 0, 4, 0, &40, 0, 8, 0                                   ; 32e8: 12 00 04... ... :21e8[1]
.sound_6
    equb &12, 0, 4, 0, &be, 0, 8, 0                                   ; 32f0: 12 00 04... ... :21f0[1]
.sound_7
    equb &13, 0, 2, 0, &6c, 0, 8, 0                                   ; 32f8: 13 00 02... ... :21f8[1]   ; Channel (2 bytes); Amplitude (2 bytes); Pitch (2 bytes); Duration (2 bytes)
; &3300 referenced 1 time by &254f[1]
.sound_8
    equb &13, 0                                                       ; 3300: 13 00       ..  :2200[1]   ; Channel (2 bytes)
; &3302 referenced 1 time by &2563[1]
.l2202
    equb 0                                                            ; 3302: 00          .   :2202[1]   ; Amplitude (2 bytes)
; &3303 referenced 1 time by &256a[1]
.l2203
    equb 0, &64, 0, 4, 0                                              ; 3303: 00 64 00... .d. :2203[1]   ; Pitch (2 bytes); Duration (2 bytes)
.sound_9
    equb &11, 0, &f1, &ff, &c8, 0, 4, 0                               ; 3308: 11 00 f1... ... :2208[1]   ; Channel (2 bytes); Amplitude (2 bytes); Pitch (2 bytes); Duration (2 bytes)
; &3310 referenced 1 time by &2308[1]
.l2210
    equb 0, 0, 0, 7, 1, &13                                           ; 3310: 00 00 00... ... :2210[1]
; &3316 referenced 1 time by &2314[1]
.l2216
    equb 0, 0, 0, 0, 1, &13                                           ; 3316: 00 00 00... ... :2216[1]
; &331c referenced 1 time by &2320[1]
.l221c
    equb 0, 0, 0, 0, 0, &13                                           ; 331c: 00 00 00... ... :221c[1]
; &3322 referenced 1 time by &22a5[1]
.l2222
    equs "YGRENE"                                                     ; 3322: 59 47 52... YGR :2222[1]
    equb &11, &21, &1f                                                ; 3328: 11 21 1f    .!. :2228[1]
; &332b referenced 1 time by &22b3[1]
.l222b
    equb 4, &34, &0a, 8, &33, &0a, 8, &32, &0a, 8, &31, 5, 1, &ac, 4  ; 332b: 04 34 0a... .4. :222b[1]
    equb 8,   4, &19                                                  ; 333a: 08 04 19    ... :223a[1]
; &333d referenced 1 time by &22bf[1]
.l223d
    equb &4e, &4f, 5, &23, &1f                                        ; 333d: 4e 4f 05... NO. :223d[1]
    equs "SDLEIHS"                                                    ; 3342: 53 44 4c... SDL :2242[1]
    equb 2, &21, &1f                                                  ; 3349: 02 21 1f    .!. :2249[1]
; &334c referenced 1 time by &22cb[1]
.l224c
    equb &20, &20, 5, &23, &1f                                        ; 334c: 20 20 05...   . :224c[1]
    equs "       "                                                    ; 3351: 20 20 20...     :2251[1]
    equb 2, &21, &1f, 0, 0, 0, 0, 0, 0, &60, &0a, 0, &17              ; 3358: 02 21 1f... .!. :2258[1]
; &3365 referenced 1 time by &2338[1]
.l2265
    equb   0,   0, 0, 0, 0, 0, &3c, &0a, 0, &17, &ea, &ea, &ea, &ea   ; 3365: 00 00 00... ... :2265[1]
    equb &ea, &ea                                                     ; 3373: ea ea       ..  :2273[1]

; &3375 referenced 1 time by &28b8[1]
.sub_c2275
    lda #&93                                                          ; 3375: a9 93       ..  :2275[1]
    sta l007b                                                         ; 3377: 85 7b       .{  :2277[1]
    lda #5                                                            ; 3379: a9 05       ..  :2279[1]
    sta l0075                                                         ; 337b: 85 75       .u  :227b[1]
    inc l0079                                                         ; 337d: e6 79       .y  :227d[1]
; &337f referenced 1 time by &2291[1]
.loop_c227f
    lda #&0d                                                          ; 337f: a9 0d       ..  :227f[1]
    sta l007a                                                         ; 3381: 85 7a       .z  :2281[1]
    lda #&32 ; '2'                                                    ; 3383: a9 32       .2  :2283[1]
    jsr sub_c1bdb                                                     ; 3385: 20 db 1b     .. :2285[1]
    lda l007b                                                         ; 3388: a5 7b       .{  :2288[1]
    clc                                                               ; 338a: 18          .   :228a[1]
    adc #8                                                            ; 338b: 69 08       i.  :228b[1]
    sta l007b                                                         ; 338d: 85 7b       .{  :228d[1]
    dec l0075                                                         ; 338f: c6 75       .u  :228f[1]
    bne loop_c227f                                                    ; 3391: d0 ec       ..  :2291[1]
    lda #&93                                                          ; 3393: a9 93       ..  :2293[1]
    sta l007b                                                         ; 3395: 85 7b       .{  :2295[1]
    lda #&0c                                                          ; 3397: a9 0c       ..  :2297[1]
    sta l007a                                                         ; 3399: 85 7a       .z  :2299[1]
    lda #&21 ; '!'                                                    ; 339b: a9 21       .!  :229b[1]
    jsr sub_c1bcf                                                     ; 339d: 20 cf 1b     .. :229d[1]
    dec l0079                                                         ; 33a0: c6 79       .y  :22a0[1]
    rts                                                               ; 33a2: 60          `   :22a2[1]

; &33a3 referenced 1 time by &28b2[1]
.sub_c22a3
    ldx #8                                                            ; 33a3: a2 08       ..  :22a3[1]
; &33a5 referenced 1 time by &22ac[1]
.loop_c22a5
    lda l2222,x                                                       ; 33a5: bd 22 22    ."" :22a5[1]
    jsr oswrch                                                        ; 33a8: 20 ee ff     .. :22a8[1]   ; Write character
    dex                                                               ; 33ab: ca          .   :22ab[1]
    bpl loop_c22a5                                                    ; 33ac: 10 f7       ..  :22ac[1]
    ldx #&11                                                          ; 33ae: a2 11       ..  :22ae[1]
    rts                                                               ; 33b0: 60          `   :22b0[1]

; &33b1 referenced 1 time by &28b5[1]
.sub_c22b1
    ldx #&11                                                          ; 33b1: a2 11       ..  :22b1[1]
; &33b3 referenced 1 time by &22ba[1]
.loop_c22b3
    lda l222b,x                                                       ; 33b3: bd 2b 22    .+" :22b3[1]
    jsr oswrch                                                        ; 33b6: 20 ee ff     .. :22b6[1]   ; Write character
    dex                                                               ; 33b9: ca          .   :22b9[1]
    bpl loop_c22b3                                                    ; 33ba: 10 f7       ..  :22ba[1]
    rts                                                               ; 33bc: 60          `   :22bc[1]

; &33bd referenced 1 time by &1426[1]
.sub_c22bd
    ldx #&0e                                                          ; 33bd: a2 0e       ..  :22bd[1]
; &33bf referenced 1 time by &22c6[1]
.loop_c22bf
    lda l223d,x                                                       ; 33bf: bd 3d 22    .=" :22bf[1]
    jsr oswrch                                                        ; 33c2: 20 ee ff     .. :22c2[1]   ; Write character
    dex                                                               ; 33c5: ca          .   :22c5[1]
    bpl loop_c22bf                                                    ; 33c6: 10 f7       ..  :22c6[1]
    rts                                                               ; 33c8: 60          `   :22c8[1]

; &33c9 referenced 1 time by &1435[1]
.sub_c22c9
    ldx #&0e                                                          ; 33c9: a2 0e       ..  :22c9[1]
; &33cb referenced 1 time by &22d2[1]
.loop_c22cb
    lda l224c,x                                                       ; 33cb: bd 4c 22    .L" :22cb[1]
    jsr oswrch                                                        ; 33ce: 20 ee ff     .. :22ce[1]   ; Write character
    dex                                                               ; 33d1: ca          .   :22d1[1]
    bpl loop_c22cb                                                    ; 33d2: 10 f7       ..  :22d2[1]
    rts                                                               ; 33d4: 60          `   :22d4[1]

; &33d5 referenced 1 time by &28ac[1]
.sub_c22d5
    ldx #<(l2184)                                                     ; 33d5: a2 84       ..  :22d5[1]
    ldy #>(l2184)                                                     ; 33d7: a0 21       .!  :22d7[1]
    lda #osword_envelope                                              ; 33d9: a9 08       ..  :22d9[1]
    jsr osword                                                        ; 33db: 20 f1 ff     .. :22db[1]   ; ENVELOPE command
    ldx #<(l2192)                                                     ; 33de: a2 92       ..  :22de[1]
    ldy #>(l2192)                                                     ; 33e0: a0 21       .!  :22e0[1]
    lda #osword_envelope                                              ; 33e2: a9 08       ..  :22e2[1]
    jsr osword                                                        ; 33e4: 20 f1 ff     .. :22e4[1]   ; ENVELOPE command
    ldx #<(l21a0)                                                     ; 33e7: a2 a0       ..  :22e7[1]
    ldy #>(l21a0)                                                     ; 33e9: a0 21       .!  :22e9[1]
    lda #osword_envelope                                              ; 33eb: a9 08       ..  :22eb[1]
    jsr osword                                                        ; 33ed: 20 f1 ff     .. :22ed[1]   ; ENVELOPE command
    ldx #<(l21ae)                                                     ; 33f0: a2 ae       ..  :22f0[1]
    ldy #>(l21ae)                                                     ; 33f2: a0 21       .!  :22f2[1]
    lda #osword_envelope                                              ; 33f4: a9 08       ..  :22f4[1]
    jsr osword                                                        ; 33f6: 20 f1 ff     .. :22f6[1]   ; ENVELOPE command
    rts                                                               ; 33f9: 60          `   :22f9[1]

; &33fa referenced 1 time by &28c4[1]
.sub_c22fa
    ldx #&29 ; ')'                                                    ; 33fa: a2 29       .)  :22fa[1]
; &33fc referenced 1 time by &2303[1]
.loop_c22fc
    lda l215a,x                                                       ; 33fc: bd 5a 21    .Z! :22fc[1]
    jsr oswrch                                                        ; 33ff: 20 ee ff     .. :22ff[1]   ; Write character
    dex                                                               ; 3402: ca          .   :2302[1]
    bpl loop_c22fc                                                    ; 3403: 10 f7       ..  :2303[1]
    rts                                                               ; 3405: 60          `   :2305[1]

; &3406 referenced 4 times by &28d0[1], &41fc[1], &4238[1], &4628[1]
.sub_c2306
    ldx #5                                                            ; 3406: a2 05       ..  :2306[1]
; &3408 referenced 1 time by &230f[1]
.loop_c2308
    lda l2210,x                                                       ; 3408: bd 10 22    .." :2308[1]
    jsr oswrch                                                        ; 340b: 20 ee ff     .. :230b[1]   ; Write character
    dex                                                               ; 340e: ca          .   :230e[1]
    bpl loop_c2308                                                    ; 340f: 10 f7       ..  :230f[1]
    rts                                                               ; 3411: 60          `   :2311[1]

; &3412 referenced 4 times by &28a3[1], &41f6[1], &4210[1], &4622[1]
.sub_c2312
    ldx #5                                                            ; 3412: a2 05       ..  :2312[1]
; &3414 referenced 1 time by &231b[1]
.loop_c2314
    lda l2216,x                                                       ; 3414: bd 16 22    .." :2314[1]
    jsr oswrch                                                        ; 3417: 20 ee ff     .. :2317[1]   ; Write character
    dex                                                               ; 341a: ca          .   :231a[1]
    bpl loop_c2314                                                    ; 341b: 10 f7       ..  :231b[1]
    rts                                                               ; 341d: 60          `   :231d[1]

; &341e referenced 1 time by &28a6[1]
.sub_c231e
    ldx #5                                                            ; 341e: a2 05       ..  :231e[1]
; &3420 referenced 1 time by &2327[1]
.loop_c2320
    lda l221c,x                                                       ; 3420: bd 1c 22    .." :2320[1]
    jsr oswrch                                                        ; 3423: 20 ee ff     .. :2323[1]   ; Write character
    dex                                                               ; 3426: ca          .   :2326[1]
    bpl loop_c2320                                                    ; 3427: 10 f7       ..  :2327[1]
    rts                                                               ; 3429: 60          `   :2329[1]

    equb &a2, 9, &bd                                                  ; 342a: a2 09 bd    ... :232a[1]
    equs "[", '"', " "                                                ; 342d: 5b 22 20    ["  :232d[1]
    equb &ee, &ff, &ca, &10, &f7, &60                                 ; 3430: ee ff ca... ... :2330[1]

; &3436 referenced 7 times by &28a0[1], &41f3[1], &420d[1], &43e1[1], &45e4[1], &461f[1], &467b[1]
.sub_c2336
    ldx #9                                                            ; 3436: a2 09       ..  :2336[1]
; &3438 referenced 1 time by &233f[1]
.loop_c2338
    lda l2265,x                                                       ; 3438: bd 65 22    .e" :2338[1]
    jsr oswrch                                                        ; 343b: 20 ee ff     .. :233b[1]   ; Write character
    dex                                                               ; 343e: ca          .   :233e[1]
    bpl loop_c2338                                                    ; 343f: 10 f7       ..  :233f[1]
    rts                                                               ; 3441: 60          `   :2341[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea                  ; 3442: ea ea ea... ... :2342[1]

; &344b referenced 1 time by &195e[1]
.sub_c234b
    ldy l1cd8                                                         ; 344b: ac d8 1c    ... :234b[1]
    bne c23b7                                                         ; 344e: d0 67       .g  :234e[1]
    ldy l1cd6                                                         ; 3450: ac d6 1c    ... :2350[1]
    beq c235e                                                         ; 3453: f0 09       ..  :2353[1]
    jsr sub_c4900                                                     ; 3455: 20 00 49     .I :2355[1]
    lda #4                                                            ; 3458: a9 04       ..  :2358[1]
    sta l0075                                                         ; 345a: 85 75       .u  :235a[1]
    bne c238a                                                         ; 345c: d0 2c       .,  :235c[1]   ; ALWAYS branch

; &345e referenced 1 time by &2353[1]
.c235e
    lda #&ff                                                          ; 345e: a9 ff       ..  :235e[1]
    sta l0075                                                         ; 3460: 85 75       .u  :2360[1]
    jsr sub_c2436                                                     ; 3462: 20 36 24     6$ :2362[1]
    beq c236a                                                         ; 3465: f0 03       ..  :2365[1]
    dec l1927                                                         ; 3467: ce 27 19    .'. :2367[1]
; &346a referenced 1 time by &2365[1]
.c236a
    jsr sub_c2436                                                     ; 346a: 20 36 24     6$ :236a[1]
    beq c2372                                                         ; 346d: f0 03       ..  :236d[1]
    inc l1927                                                         ; 346f: ee 27 19    .'. :236f[1]
; &3472 referenced 1 time by &236d[1]
.c2372
    jsr sub_c2436                                                     ; 3472: 20 36 24     6$ :2372[1]
    beq c237a                                                         ; 3475: f0 03       ..  :2375[1]
    inc l192e                                                         ; 3477: ee 2e 19    ... :2377[1]
; &347a referenced 1 time by &2375[1]
.c237a
    jsr sub_c2436                                                     ; 347a: 20 36 24     6$ :237a[1]
    beq c2382                                                         ; 347d: f0 03       ..  :237d[1]
    dec l192e                                                         ; 347f: ce 2e 19    ... :237f[1]
; &3482 referenced 1 time by &237d[1]
.c2382
    jsr sub_c2436                                                     ; 3482: 20 36 24     6$ :2382[1]
    beq c238a                                                         ; 3485: f0 03       ..  :2385[1]
    inc l191a                                                         ; 3487: ee 1a 19    ... :2387[1]
; &348a referenced 2 times by &235c[1], &2385[1]
.c238a
    jsr sub_c2436                                                     ; 348a: 20 36 24     6$ :238a[1]
    beq c2392                                                         ; 348d: f0 03       ..  :238d[1]
    jmp c28db                                                         ; 348f: 4c db 28    L.( :238f[1]

; &3492 referenced 1 time by &238d[1]
.c2392
    jsr sub_c2436                                                     ; 3492: 20 36 24     6$ :2392[1]
    beq c239a                                                         ; 3495: f0 03       ..  :2395[1]
    jmp c28d7                                                         ; 3497: 4c d7 28    L.( :2397[1]

; &349a referenced 1 time by &2395[1]
.c239a
    lda l1cd6                                                         ; 349a: ad d6 1c    ... :239a[1]
    beq c23a5                                                         ; 349d: f0 06       ..  :239d[1]
    lda #&0a                                                          ; 349f: a9 0a       ..  :239f[1]
    sta l0075                                                         ; 34a1: 85 75       .u  :23a1[1]
    bne c23d9                                                         ; 34a3: d0 34       .4  :23a3[1]   ; ALWAYS branch

; &34a5 referenced 1 time by &239d[1]
.c23a5
    lda l1927                                                         ; 34a5: ad 27 19    .'. :23a5[1]
    ora l192e                                                         ; 34a8: 0d 2e 19    ... :23a8[1]
    bne c23b7                                                         ; 34ab: d0 0a       ..  :23ab[1]
    jsr sub_c2436                                                     ; 34ad: 20 36 24     6$ :23ad[1]
    beq c23b8                                                         ; 34b0: f0 06       ..  :23b0[1]
    lda #1                                                            ; 34b2: a9 01       ..  :23b2[1]
    sta l192c                                                         ; 34b4: 8d 2c 19    .,. :23b4[1]
; &34b7 referenced 2 times by &234e[1], &23ab[1]
.c23b7
    rts                                                               ; 34b7: 60          `   :23b7[1]

; &34b8 referenced 1 time by &23b0[1]
.c23b8
    jsr sub_c2436                                                     ; 34b8: 20 36 24     6$ :23b8[1]
    beq c23c3                                                         ; 34bb: f0 06       ..  :23bb[1]
    lda #1                                                            ; 34bd: a9 01       ..  :23bd[1]
    sta l1931                                                         ; 34bf: 8d 31 19    .1. :23bf[1]
    rts                                                               ; 34c2: 60          `   :23c2[1]

; &34c3 referenced 1 time by &23bb[1]
.c23c3
    jsr sub_c2436                                                     ; 34c3: 20 36 24     6$ :23c3[1]
    beq c23ce                                                         ; 34c6: f0 06       ..  :23c6[1]
    lda #0                                                            ; 34c8: a9 00       ..  :23c8[1]
    sta l192c                                                         ; 34ca: 8d 2c 19    .,. :23ca[1]
    rts                                                               ; 34cd: 60          `   :23cd[1]

; &34ce referenced 1 time by &23c6[1]
.c23ce
    jsr sub_c2436                                                     ; 34ce: 20 36 24     6$ :23ce[1]
    beq c23d9                                                         ; 34d1: f0 06       ..  :23d1[1]
    lda #0                                                            ; 34d3: a9 00       ..  :23d3[1]
    sta l1931                                                         ; 34d5: 8d 31 19    .1. :23d5[1]
    rts                                                               ; 34d8: 60          `   :23d8[1]

; &34d9 referenced 2 times by &23a3[1], &23d1[1]
.c23d9
    jsr sub_c2436                                                     ; 34d9: 20 36 24     6$ :23d9[1]
    beq c23e2                                                         ; 34dc: f0 04       ..  :23dc[1]
    inc l1926                                                         ; 34de: ee 26 19    .&. :23de[1]
    rts                                                               ; 34e1: 60          `   :23e1[1]

; &34e2 referenced 1 time by &23dc[1]
.c23e2
    jsr sub_c2436                                                     ; 34e2: 20 36 24     6$ :23e2[1]
    beq c23eb                                                         ; 34e5: f0 04       ..  :23e5[1]
    dec l1926                                                         ; 34e7: ce 26 19    .&. :23e7[1]
    rts                                                               ; 34ea: 60          `   :23ea[1]

; &34eb referenced 1 time by &23e5[1]
.c23eb
    jsr sub_c2436                                                     ; 34eb: 20 36 24     6$ :23eb[1]
    beq c241e                                                         ; 34ee: f0 2e       ..  :23ee[1]
    lda #1                                                            ; 34f0: a9 01       ..  :23f0[1]
    sta l1924                                                         ; 34f2: 8d 24 19    .$. :23f2[1]
    rts                                                               ; 34f5: 60          `   :23f5[1]

    equs " 6$"                                                        ; 34f6: 20 36 24     6$ :23f6[1]
    equb &f0, 3, &4c, &1e                                             ; 34f9: f0 03 4c... ..L :23f9[1]
    equs "$ 6$"                                                       ; 34fd: 24 20 36... $ 6 :23fd[1]
    equb &f0, 3, &4c, &1e                                             ; 3501: f0 03 4c... ..L :2401[1]
    equs "$ 6$"                                                       ; 3505: 24 20 36... $ 6 :2405[1]
    equb &f0, 3, &4c, &1e                                             ; 3509: f0 03 4c... ..L :2409[1]
    equs "$ 6$"                                                       ; 350d: 24 20 36... $ 6 :240d[1]
    equb &f0, 3, &4c, &1e                                             ; 3511: f0 03 4c... ..L :2411[1]
    equs "$ 6$"                                                       ; 3515: 24 20 36... $ 6 :2415[1]
    equb &f0, 3, &4c, &1e, &24                                        ; 3519: f0 03 4c... ..L :2419[1]

; &351e referenced 1 time by &23ee[1]
.c241e
    jsr sub_c2436                                                     ; 351e: 20 36 24     6$ :241e[1]
    beq c2426                                                         ; 3521: f0 03       ..  :2421[1]
    jmp c2449                                                         ; 3523: 4c 49 24    LI$ :2423[1]

; &3526 referenced 1 time by &2421[1]
.c2426
    rts                                                               ; 3526: 60          `   :2426[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 3527: ea ea ea... ... :2427[1]
    equb &ea, &ea, &ea                                                ; 3533: ea ea ea    ... :2433[1]

; &3536 referenced 15 times by &2362[1], &236a[1], &2372[1], &237a[1], &2382[1], &238a[1], &2392[1], &23ad[1], &23b8[1], &23c3[1], &23ce[1], &23d9[1], &23e2[1], &23eb[1], &241e[1]
.sub_c2436
    inc l0075                                                         ; 3536: e6 75       .u  :2436[1]
    ldx l0075                                                         ; 3538: a6 75       .u  :2438[1]
    lda l2146,x                                                       ; 353a: bd 46 21    .F! :243a[1]
    tay                                                               ; 353d: a8          .   :243d[1]
    tax                                                               ; 353e: aa          .   :243e[1]
    lda #osbyte_inkey                                                 ; 353f: a9 81       ..  :243f[1]
    jsr osbyte                                                        ; 3541: 20 f4 ff     .. :2441[1]   ; Read key within time limit, or read a specific key, or read machine type
    tya                                                               ; 3544: 98          .   :2444[1]
    rts                                                               ; 3545: 60          `   :2445[1]

    equb &ea, &ea, &ea                                                ; 3546: ea ea ea    ... :2446[1]

; &3549 referenced 2 times by &2423[1], &2453[1]
.c2449
    ldx #inkey_key_delete                                             ; 3549: a2 a6       ..  :2449[1]   ; X=inkey key value
    ldy #&a6                                                          ; 354b: a0 a6       ..  :244b[1]
    lda #osbyte_inkey                                                 ; 354d: a9 81       ..  :244d[1]
    jsr osbyte                                                        ; 354f: 20 f4 ff     .. :244f[1]   ; Is the 'DELETE' key pressed?
    tya                                                               ; 3552: 98          .   :2452[1]   ; X and Y contain &ff if the key is pressed
    beq c2449                                                         ; 3553: f0 f4       ..  :2453[1]
    rts                                                               ; 3555: 60          `   :2455[1]

    equb &ea, &ea, &ea, &ea                                           ; 3556: ea ea ea... ... :2456[1]

; &355a referenced 1 time by &38c7[1]
.sub_c245a
    lda l1cd7                                                         ; 355a: ad d7 1c    ... :245a[1]
    beq c2460                                                         ; 355d: f0 01       ..  :245d[1]
    rts                                                               ; 355f: 60          `   :245f[1]

; &3560 referenced 1 time by &245d[1]
.c2460
    lda l1cdd                                                         ; 3560: ad dd 1c    ... :2460[1]
    beq c2470                                                         ; 3563: f0 0b       ..  :2463[1]
    lda l1cc9                                                         ; 3565: ad c9 1c    ... :2465[1]
    bne c2489                                                         ; 3568: d0 1f       ..  :2468[1]
    ldx #&f0                                                          ; 356a: a2 f0       ..  :246a[1]
    ldy #&21 ; '!'                                                    ; 356c: a0 21       .!  :246c[1]
    bne c2484                                                         ; 356e: d0 14       ..  :246e[1]   ; ALWAYS branch

; &3570 referenced 1 time by &2463[1]
.c2470
    lda l1cde                                                         ; 3570: ad de 1c    ... :2470[1]
    beq c247b                                                         ; 3573: f0 06       ..  :2473[1]
    ldx #&e8                                                          ; 3575: a2 e8       ..  :2475[1]
    ldy #&21 ; '!'                                                    ; 3577: a0 21       .!  :2477[1]
    bne c2484                                                         ; 3579: d0 09       ..  :2479[1]   ; ALWAYS branch

; &357b referenced 1 time by &2473[1]
.c247b
    lda l1cdc                                                         ; 357b: ad dc 1c    ... :247b[1]
    beq c2489                                                         ; 357e: f0 09       ..  :247e[1]
    ldx #&e0                                                          ; 3580: a2 e0       ..  :2480[1]
    ldy #&21 ; '!'                                                    ; 3582: a0 21       .!  :2482[1]
; &3584 referenced 2 times by &246e[1], &2479[1]
.c2484
    lda #osword_sound                                                 ; 3584: a9 07       ..  :2484[1]
    jsr osword                                                        ; 3586: 20 f1 ff     .. :2486[1]   ; SOUND command
; &3589 referenced 2 times by &2468[1], &247e[1]
.c2489
    ldy #0                                                            ; 3589: a0 00       ..  :2489[1]
    lda l1cd8                                                         ; 358b: ad d8 1c    ... :248b[1]
    beq c2496                                                         ; 358e: f0 06       ..  :248e[1]
    lda l2890                                                         ; 3590: ad 90 28    ..( :2490[1]
    bne c2496                                                         ; 3593: d0 01       ..  :2493[1]
    iny                                                               ; 3595: c8          .   :2495[1]   ; Y=&01
; &3596 referenced 2 times by &248e[1], &2493[1]
.c2496
    sty l1cdb                                                         ; 3596: 8c db 1c    ... :2496[1]
    lda l1cc9                                                         ; 3599: ad c9 1c    ... :2499[1]
    bne c2502                                                         ; 359c: d0 64       .d  :249c[1]
    lda l2d63                                                         ; 359e: ad 63 2d    .c- :249e[1]
    ora l2d64                                                         ; 35a1: 0d 64 2d    .d- :24a1[1]
    beq c24af                                                         ; 35a4: f0 09       ..  :24a4[1]
    ldx #<(l49f8)                                                     ; 35a6: a2 f8       ..  :24a6[1]
    ldy #>(l49f8)                                                     ; 35a8: a0 49       .I  :24a8[1]
    lda #osword_sound                                                 ; 35aa: a9 07       ..  :24aa[1]
    jsr osword                                                        ; 35ac: 20 f1 ff     .. :24ac[1]   ; SOUND command
; &35af referenced 1 time by &24a4[1]
.c24af
    lda l1cdb                                                         ; 35af: ad db 1c    ... :24af[1]
    beq c24b7                                                         ; 35b2: f0 03       ..  :24b2[1]
    jmp c254d                                                         ; 35b4: 4c 4d 25    LM% :24b4[1]

; &35b7 referenced 1 time by &24b2[1]
.c24b7
    lda l25f1                                                         ; 35b7: ad f1 25    ..% :24b7[1]
    beq c24cb                                                         ; 35ba: f0 0f       ..  :24ba[1]
    dec l25f1                                                         ; 35bc: ce f1 25    ..% :24bc[1]
    ldx #<(sound_9)                                                   ; 35bf: a2 08       ..  :24bf[1]
    ldy #>(sound_9)                                                   ; 35c1: a0 22       ."  :24c1[1]
    lda #osword_sound                                                 ; 35c3: a9 07       ..  :24c3[1]
    jsr osword                                                        ; 35c5: 20 f1 ff     .. :24c5[1]   ; SOUND command
    jmp c257d                                                         ; 35c8: 4c 7d 25    L}% :24c8[1]

; &35cb referenced 1 time by &24ba[1]
.c24cb
    lda l0f01                                                         ; 35cb: ad 01 0f    ... :24cb[1]
    clc                                                               ; 35ce: 18          .   :24ce[1]
    adc #&40 ; '@'                                                    ; 35cf: 69 40       i@  :24cf[1]
    sta l007a                                                         ; 35d1: 85 7a       .z  :24d1[1]
    lda #0                                                            ; 35d3: a9 00       ..  :24d3[1]
    adc l0f00                                                         ; 35d5: 6d 00 0f    m.. :24d5[1]
    asl l007a                                                         ; 35d8: 06 7a       .z  :24d8[1]
    rol a                                                             ; 35da: 2a          *   :24da[1]
    adc l0f03                                                         ; 35db: 6d 03 0f    m.. :24db[1]
    sta l49f4                                                         ; 35de: 8d f4 49    ..I :24de[1]
    cmp #&0a                                                          ; 35e1: c9 0a       ..  :24e1[1]
    bcc c24e8                                                         ; 35e3: 90 03       ..  :24e3[1]
    lda #9                                                            ; 35e5: a9 09       ..  :24e5[1]
    clc                                                               ; 35e7: 18          .   :24e7[1]
; &35e8 referenced 1 time by &24e3[1]
.c24e8
    eor #&ff                                                          ; 35e8: 49 ff       I.  :24e8[1]
    adc #1                                                            ; 35ea: 69 01       i.  :24ea[1]
    sta l49f2                                                         ; 35ec: 8d f2 49    ..I :24ec[1]
    lda #&ff                                                          ; 35ef: a9 ff       ..  :24ef[1]
    adc #0                                                            ; 35f1: 69 00       i.  :24f1[1]
    sta l49f3                                                         ; 35f3: 8d f3 49    ..I :24f3[1]
    ldx #<(l49f0)                                                     ; 35f6: a2 f0       ..  :24f6[1]
    ldy #>(l49f0)                                                     ; 35f8: a0 49       .I  :24f8[1]
    lda #osword_sound                                                 ; 35fa: a9 07       ..  :24fa[1]
    jsr osword                                                        ; 35fc: 20 f1 ff     .. :24fc[1]   ; SOUND command
    jmp c257d                                                         ; 35ff: 4c 7d 25    L}% :24ff[1]

; &3602 referenced 1 time by &249c[1]
.c2502
    lda l1cce                                                         ; 3602: ad ce 1c    ... :2502[1]
    sec                                                               ; 3605: 38          8   :2505[1]
    sbc l1cda                                                         ; 3606: ed da 1c    ... :2506[1]
    bcc c2543                                                         ; 3609: 90 38       .8  :2509[1]
    sta l007a                                                         ; 360b: 85 7a       .z  :250b[1]
    rol a                                                             ; 360d: 2a          *   :250d[1]
    cmp #&56 ; 'V'                                                    ; 360e: c9 56       .V  :250e[1]
    bcc c2516                                                         ; 3610: 90 04       ..  :2510[1]
    sbc #&40 ; '@'                                                    ; 3612: e9 40       .@  :2512[1]
    rol a                                                             ; 3614: 2a          *   :2514[1]
    rol a                                                             ; 3615: 2a          *   :2515[1]
; &3616 referenced 1 time by &2510[1]
.c2516
    sta l21cc                                                         ; 3616: 8d cc 21    ..! :2516[1]
    lda l007a                                                         ; 3619: a5 7a       .z  :2519[1]
    lsr a                                                             ; 361b: 4a          J   :251b[1]
    cmp #&10                                                          ; 361c: c9 10       ..  :251c[1]
    bcc c2523                                                         ; 361e: 90 03       ..  :251e[1]
    lda #&0f                                                          ; 3620: a9 0f       ..  :2520[1]
    clc                                                               ; 3622: 18          .   :2522[1]
; &3623 referenced 1 time by &251e[1]
.c2523
    eor #&ff                                                          ; 3623: 49 ff       I.  :2523[1]
    adc #1                                                            ; 3625: 69 01       i.  :2525[1]
    sta l21d2                                                         ; 3627: 8d d2 21    ..! :2527[1]
    lda #&ff                                                          ; 362a: a9 ff       ..  :252a[1]
    adc #0                                                            ; 362c: 69 00       i.  :252c[1]
    sta l21d3                                                         ; 362e: 8d d3 21    ..! :252e[1]
    ldx #<(sound_1)                                                   ; 3631: a2 c8       ..  :2531[1]
    ldy #>(sound_1)                                                   ; 3633: a0 21       .!  :2533[1]
    lda #osword_sound                                                 ; 3635: a9 07       ..  :2535[1]
    jsr osword                                                        ; 3637: 20 f1 ff     .. :2537[1]   ; SOUND command
    ldx #<(sound_2)                                                   ; 363a: a2 d0       ..  :253a[1]
    ldy #>(sound_2)                                                   ; 363c: a0 21       .!  :253c[1]
    lda #osword_sound                                                 ; 363e: a9 07       ..  :253e[1]
    jsr osword                                                        ; 3640: 20 f1 ff     .. :2540[1]   ; SOUND command
; &3643 referenced 1 time by &2509[1]
.c2543
    lda l1cdb                                                         ; 3643: ad db 1c    ... :2543[1]
    beq c257d                                                         ; 3646: f0 35       .5  :2546[1]
    lda #3                                                            ; 3648: a9 03       ..  :2548[1]
    sta l1cdb                                                         ; 364a: 8d db 1c    ... :254a[1]
; &364d referenced 1 time by &24b4[1]
.c254d
    ora #&10                                                          ; 364d: 09 10       ..  :254d[1]
    sta sound_8                                                       ; 364f: 8d 00 22    .." :254f[1]
    lda l2891                                                         ; 3652: ad 91 28    ..( :2552[1]
    and #1                                                            ; 3655: 29 01       ).  :2555[1]
    beq c2563                                                         ; 3657: f0 0a       ..  :2557[1]
    lda l2891                                                         ; 3659: ad 91 28    ..( :2559[1]
    lsr a                                                             ; 365c: 4a          J   :255c[1]
    lsr a                                                             ; 365d: 4a          J   :255d[1]
    eor #&ff                                                          ; 365e: 49 ff       I.  :255e[1]
    clc                                                               ; 3660: 18          .   :2560[1]
    adc #1                                                            ; 3661: 69 01       i.  :2561[1]
; &3663 referenced 1 time by &2557[1]
.c2563
    sta l2202                                                         ; 3663: 8d 02 22    .." :2563[1]
    beq c256a                                                         ; 3666: f0 02       ..  :2566[1]
    lda #&ff                                                          ; 3668: a9 ff       ..  :2568[1]
; &366a referenced 1 time by &2566[1]
.c256a
    sta l2203                                                         ; 366a: 8d 03 22    .." :256a[1]
    ldx #<(sound_8)                                                   ; 366d: a2 00       ..  :256d[1]
    ldy #>(sound_8)                                                   ; 366f: a0 22       ."  :256f[1]
    lda #osword_sound                                                 ; 3671: a9 07       ..  :2571[1]
    jsr osword                                                        ; 3673: 20 f1 ff     .. :2573[1]   ; SOUND command
    lda l1cdb                                                         ; 3676: ad db 1c    ... :2576[1]
    cmp #3                                                            ; 3679: c9 03       ..  :2579[1]
    beq c2599                                                         ; 367b: f0 1c       ..  :257b[1]
; &367d referenced 3 times by &24c8[1], &24ff[1], &2546[1]
.c257d
    lda l2658                                                         ; 367d: ad 58 26    .X& :257d[1]
    beq c258b                                                         ; 3680: f0 09       ..  :2580[1]
    ldx #<(sound_3)                                                   ; 3682: a2 d8       ..  :2582[1]
    ldy #>(sound_3)                                                   ; 3684: a0 21       .!  :2584[1]
    lda #osword_sound                                                 ; 3686: a9 07       ..  :2586[1]
    jmp osword                                                        ; 3688: 4c f1 ff    L.. :2588[1]   ; SOUND command

; &368b referenced 1 time by &2580[1]
.c258b
    lda l17d1                                                         ; 368b: ad d1 17    ... :258b[1]
    beq c2599                                                         ; 368e: f0 09       ..  :258e[1]
    ldx #<(sound_7)                                                   ; 3690: a2 f8       ..  :2590[1]
    ldy #>(sound_7)                                                   ; 3692: a0 21       .!  :2592[1]
    lda #osword_sound                                                 ; 3694: a9 07       ..  :2594[1]
    jsr osword                                                        ; 3696: 20 f1 ff     .. :2596[1]   ; SOUND command
; &3699 referenced 2 times by &257b[1], &258e[1]
.c2599
    rts                                                               ; 3699: 60          `   :2599[1]

    equb &ea, &ea, &ff, &60, &ea, &ea, &ff, &ff, &ff, &ff, &ff, &ff   ; 369a: ea ea ff... ... :259a[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 36a6: ff ff ff... ... :25a6[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 36b2: ff ff ff... ... :25b2[1]
    equb &ff, &ff,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 36be: ff ff 00... ... :25be[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0        ; 36ca: 00 00 00... ... :25ca[1]
; &36d5 referenced 1 time by &1546[1]
.l25d5
    equb &86                                                          ; 36d5: 86          .   :25d5[1]
; &36d6 referenced 1 time by &154b[1]
.l25d6
    equb &78                                                          ; 36d6: 78          x   :25d6[1]
; &36d7 referenced 1 time by &1554[1]
.l25d7
    equb &86                                                          ; 36d7: 86          .   :25d7[1]
; &36d8 referenced 1 time by &1559[1]
.l25d8
    equb &7a                                                          ; 36d8: 7a          z   :25d8[1]
; &36d9 referenced 1 time by &1809[1]
.l25d9
    equb &8c                                                          ; 36d9: 8c          .   :25d9[1]
; &36da referenced 1 time by &180e[1]
.l25da
    equb &73                                                          ; 36da: 73          s   :25da[1]
; &36db referenced 1 time by &1816[1]
.l25db
    equb &8c                                                          ; 36db: 8c          .   :25db[1]
; &36dc referenced 1 time by &181b[1]
.l25dc
    equb &76                                                          ; 36dc: 76          v   :25dc[1]
; &36dd referenced 2 times by &18b5[1], &27f7[1]
.l25dd
    equb 4                                                            ; 36dd: 04          .   :25dd[1]
; &36de referenced 4 times by &1826[1], &2da8[1], &2dad[1], &383b[1]
.l25de
    equb 0                                                            ; 36de: 00          .   :25de[1]
; &36df referenced 1 time by &1801[1]
.l25df
    equb &4a                                                          ; 36df: 4a          J   :25df[1]
; &36e0 referenced 2 times by &186f[1], &2849[1]
.l25e0
    equb 6                                                            ; 36e0: 06          .   :25e0[1]
; &36e1 referenced 3 times by &1882[1], &284c[1], &2857[1]
.l25e1
    equb 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0                  ; 36e1: 05 00 00... ... :25e1[1]
; &36f0 referenced 2 times by &2614[1], &261b[1]
.l25f0
    equb 0                                                            ; 36f0: 00          .   :25f0[1]
; &36f1 referenced 4 times by &24b7[1], &24bc[1], &2625[1], &353f[1]
.l25f1
    equb 0                                                            ; 36f1: 00          .   :25f1[1]
; &36f2 referenced 4 times by &25f3[1], &2601[1], &260a[1], &3542[1]
.l25f2
    equb 0                                                            ; 36f2: 00          .   :25f2[1]

; &36f3 referenced 1 time by &1acd[1]
.c25f3
    lda l25f2                                                         ; 36f3: ad f2 25    ..% :25f3[1]
    bne c260a                                                         ; 36f6: d0 12       ..  :25f6[1]
    lda l1922                                                         ; 36f8: ad 22 19    .". :25f8[1]
    cmp #&32 ; '2'                                                    ; 36fb: c9 32       .2  :25fb[1]
    bcs c2614                                                         ; 36fd: b0 15       ..  :25fd[1]
    lda #4                                                            ; 36ff: a9 04       ..  :25ff[1]
    sta l25f2                                                         ; 3701: 8d f2 25    ..% :2601[1]
    jsr sub_c2629                                                     ; 3704: 20 29 26     )& :2604[1]
    jmp c2614                                                         ; 3707: 4c 14 26    L.& :2607[1]

; &370a referenced 1 time by &25f6[1]
.c260a
    dec l25f2                                                         ; 370a: ce f2 25    ..% :260a[1]
    cmp #2                                                            ; 370d: c9 02       ..  :260d[1]
    bne c2614                                                         ; 370f: d0 03       ..  :260f[1]
    jsr sub_c2629                                                     ; 3711: 20 29 26     )& :2611[1]
; &3714 referenced 3 times by &25fd[1], &2607[1], &260f[1]
.c2614
    dec l25f0                                                         ; 3714: ce f0 25    ..% :2614[1]
    bne c2628                                                         ; 3717: d0 0f       ..  :2617[1]
    lda #8                                                            ; 3719: a9 08       ..  :2619[1]
    sta l25f0                                                         ; 371b: 8d f0 25    ..% :261b[1]
    lda l1922                                                         ; 371e: ad 22 19    .". :261e[1]
    cmp #&19                                                          ; 3721: c9 19       ..  :2621[1]
    bcs c2628                                                         ; 3723: b0 03       ..  :2623[1]
    inc l25f1                                                         ; 3725: ee f1 25    ..% :2625[1]
; &3728 referenced 2 times by &2617[1], &2623[1]
.c2628
    rts                                                               ; 3728: 60          `   :2628[1]

; &3729 referenced 2 times by &2604[1], &2611[1]
.sub_c2629
    ldy #&2f ; '/'                                                    ; 3729: a0 2f       ./  :2629[1]
; &372b referenced 1 time by &2634[1]
.loop_c262b
    lda l6e48,y                                                       ; 372b: b9 48 6e    .Hn :262b[1]
    eor #&ff                                                          ; 372e: 49 ff       I.  :262e[1]
    sta l6e48,y                                                       ; 3730: 99 48 6e    .Hn :2630[1]
    dey                                                               ; 3733: 88          .   :2633[1]
    bpl loop_c262b                                                    ; 3734: 10 f5       ..  :2634[1]
    rts                                                               ; 3736: 60          `   :2636[1]

    equb &ea, &ea, &ea, &ff, &ff, &ff, &ff, &ff, &ff, 0, 0, 0, 0, 0   ; 3737: ea ea ea... ... :2637[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0, 0, 0, 0, 0      ; 3745: 00 00 00... ... :2645[1]
; &3752 referenced 2 times by &2667[1], &2d90[1]
.l2652
    equb 1                                                            ; 3752: 01          .   :2652[1]
; &3753 referenced 1 time by &26af[1]
.l2653
    equb &3f                                                          ; 3753: 3f          ?   :2653[1]
; &3754 referenced 1 time by &2691[1]
.l2654
    equb &40                                                          ; 3754: 40          @   :2654[1]
; &3755 referenced 5 times by &27cf[1], &2abe[1], &2acf[1], &2bd6[1], &2c0d[1]
.l2655
    equb 0, 7                                                         ; 3755: 00 07       ..  :2655[1]
; &3757 referenced 4 times by &1243[1], &12f7[1], &12ff[1], &45f2[1]
.l2657
    equb 0                                                            ; 3757: 00          .   :2657[1]
; &3758 referenced 4 times by &1302[1], &1a65[1], &257d[1], &383e[1]
.l2658
    equb &ea                                                          ; 3758: ea          .   :2658[1]
; &3759 referenced 8 times by &1a7b[1], &316d[1], &3194[1], &31ce[1], &31d3[1], &354c[1], &385d[1], &45a6[1]
.l2659
    equb &ea                                                          ; 3759: ea          .   :2659[1]
; &375a referenced 4 times by &317f[1], &3230[1], &354f[1], &45a0[1]
.l265a
    equb &ea                                                          ; 375a: ea          .   :265a[1]
; &375b referenced 1 time by &1469[1]
.l265b
    equb 0, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea     ; 375b: 00 ea ea... ... :265b[1]

; &3767 referenced 1 time by &386b[1]
.sub_c2667
    lda l2652                                                         ; 3767: ad 52 26    .R& :2667[1]
    beq c26c9                                                         ; 376a: f0 5d       .]  :266a[1]
    lda l0e4f                                                         ; 376c: ad 4f 0e    .O. :266c[1]
    sta l0e54                                                         ; 376f: 8d 54 0e    .T. :266f[1]
    ldx #0                                                            ; 3772: a2 00       ..  :2672[1]
; &3774 referenced 1 time by &26c7[1]
.c2674
    lda l040a,x                                                       ; 3774: bd 0a 04    ... :2674[1]
    cmp #4                                                            ; 3777: c9 04       ..  :2677[1]
    ror l0075                                                         ; 3779: 66 75       fu  :2679[1]
    bmi c2681                                                         ; 377b: 30 04       0.  :267b[1]
    cmp #1                                                            ; 377d: c9 01       ..  :267d[1]
    bne c26bf                                                         ; 377f: d0 3e       .>  :267f[1]
; &3781 referenced 1 time by &267b[1]
.c2681
    ldy l0480,x                                                       ; 3781: bc 80 04    ... :2681[1]
    beq c268e                                                         ; 3784: f0 08       ..  :2684[1]
    and #3                                                            ; 3786: 29 03       ).  :2686[1]
    sta l040a,x                                                       ; 3788: 9d 0a 04    ... :2688[1]
    jmp c26bf                                                         ; 378b: 4c bf 26    L.& :268b[1]

; &378e referenced 1 time by &2684[1]
.c268e
    ldy l0489,x                                                       ; 378e: bc 89 04    ... :268e[1]
    cpy l2654                                                         ; 3791: cc 54 26    .T& :2691[1]
    bcs c26a5                                                         ; 3794: b0 0f       ..  :2694[1]
    asl l0075                                                         ; 3796: 06 75       .u  :2696[1]
    bcc c26bf                                                         ; 3798: 90 25       .%  :2698[1]
    and #3                                                            ; 379a: 29 03       ).  :269a[1]
    sta l040a,x                                                       ; 379c: 9d 0a 04    ... :269c[1]
    jsr sub_c1bfc                                                     ; 379f: 20 fc 1b     .. :269f[1]
    jmp c26bf                                                         ; 37a2: 4c bf 26    L.& :26a2[1]

; &37a5 referenced 1 time by &2694[1]
.c26a5
    asl l0075                                                         ; 37a5: 06 75       .u  :26a5[1]
    bcs c26bf                                                         ; 37a7: b0 16       ..  :26a7[1]
    jsr sub_c2113                                                     ; 37a9: 20 13 21     .! :26a9[1]
    lda l1cd2                                                         ; 37ac: ad d2 1c    ... :26ac[1]
    and l2653                                                         ; 37af: 2d 53 26    -S& :26af[1]
    bne c26bf                                                         ; 37b2: d0 0b       ..  :26b2[1]
    jsr sub_c1bfc                                                     ; 37b4: 20 fc 1b     .. :26b4[1]
    lda l040a,x                                                       ; 37b7: bd 0a 04    ... :26b7[1]
    ora #4                                                            ; 37ba: 09 04       ..  :26ba[1]
    sta l040a,x                                                       ; 37bc: 9d 0a 04    ... :26bc[1]
; &37bf referenced 6 times by &267f[1], &268b[1], &2698[1], &26a2[1], &26a7[1], &26b2[1]
.c26bf
    txa                                                               ; 37bf: 8a          .   :26bf[1]
    clc                                                               ; 37c0: 18          .   :26c0[1]
    adc #&0b                                                          ; 37c1: 69 0b       i.  :26c1[1]
    tax                                                               ; 37c3: aa          .   :26c3[1]
    dec l0e54                                                         ; 37c4: ce 54 0e    .T. :26c4[1]
    bne c2674                                                         ; 37c7: d0 ab       ..  :26c7[1]
; &37c9 referenced 1 time by &266a[1]
.c26c9
    rts                                                               ; 37c9: 60          `   :26c9[1]

    equb &ea, &ea, &ad, &55, &0e, &f0, &1d, &bd, &8a,   4, &29, &0f   ; 37ca: ea ea ad... ... :26ca[1]
    equb &d0, &16, &a0,   0, &b1, &80, &f0, &12, &a5, &80, &18, &69   ; 37d6: d0 16 a0... ... :26d6[1]
    equb   6, &85, &80, &90,   2, &e6, &81, &ce, &55, &0e, &d0, &ec   ; 37e2: 06 85 80... ... :26e2[1]
    equb &18, &60, &bd, &87,   4                                      ; 37ee: 18 60 bd... .`. :26ee[1]
    equs "JJJ"                                                        ; 37f3: 4a 4a 4a    JJJ :26f3[1]
    equb &cd, &55, &26, &d0, &f3, &bd, &8a, 4                         ; 37f6: cd 55 26... .U& :26f6[1]
    equs "JJJJ}"                                                      ; 37fe: 4a 4a 4a... JJJ :26fe[1]
    equb &8a,   4, &9d, &8a,   4, &bd, 9,   4, &29, &10, &f0, 3, &4c  ; 3803: 8a 04 9d... ... :2703[1]
    equb &d4, &29, &ad, &36, &0e, &a0, 0, &91, &80, &bd, &87, 4, &a0  ; 3810: d4 29 ad... .). :2710[1]
    equb   5, &91, &80                                                ; 381d: 05 91 80    ... :271d[1]
    equs "JJJ"                                                        ; 3820: 4a 4a 4a    JJJ :2720[1]
    equb &a8, &b9, &58, &0e, &18, &7d, &82,   4, &85, &7a, &b9, &78   ; 3823: a8 b9 58... ..X :2723[1]
    equb &0e, &18, &7d, &85,   4, &a0,   4, &91, &80, &a0,   2, &a5   ; 382f: 0e 18 7d... ..} :272f[1]
    equb &7a, &91, &80, &ee, &dc, &1c, &86, &75, &20, &11, &16, &a6   ; 383b: 7a 91 80... z.. :273b[1]
    equb &75, &ce, &55, &0e, &a5, &80, &18, &69,   6, &85, &80, &90   ; 3847: 75 ce 55... u.U :2747[1]
    equb   2, &e6, &81, &38, &60                                      ; 3853: 02 e6 81... ... :2753[1]

; &3858 referenced 2 times by &2a9a[1], &3419[1]
.sub_c2758
    lda l0076                                                         ; 3858: a5 76       .v  :2758[1]
    sec                                                               ; 385a: 38          8   :275a[1]
    bmi c2762                                                         ; 385b: 30 05       0.  :275b[1]
    eor #&ff                                                          ; 385d: 49 ff       I.  :275d[1]
    sbc #1                                                            ; 385f: e9 01       ..  :275f[1]
    clc                                                               ; 3861: 18          .   :2761[1]
; &3862 referenced 1 time by &275b[1]
.c2762
    ror l0075                                                         ; 3862: 66 75       fu  :2762[1]
    sec                                                               ; 3864: 38          8   :2764[1]
    sbc #&7f                                                          ; 3865: e9 7f       ..  :2765[1]
    sta l007b                                                         ; 3867: 85 7b       .{  :2767[1]
    lda l0077                                                         ; 3869: a5 77       .w  :2769[1]
    sec                                                               ; 386b: 38          8   :276b[1]
    bmi c2773                                                         ; 386c: 30 05       0.  :276c[1]
    eor #&ff                                                          ; 386e: 49 ff       I.  :276e[1]
    sbc #1                                                            ; 3870: e9 01       ..  :2770[1]
    clc                                                               ; 3872: 18          .   :2772[1]
; &3873 referenced 1 time by &276c[1]
.c2773
    ror l0075                                                         ; 3873: 66 75       fu  :2773[1]
    sec                                                               ; 3875: 38          8   :2775[1]
    sbc #&7f                                                          ; 3876: e9 7f       ..  :2776[1]
    sta l007a                                                         ; 3878: 85 7a       .z  :2778[1]
    cmp l007b                                                         ; 387a: c5 7b       .{  :277a[1]
    bcs c2784                                                         ; 387c: b0 06       ..  :277c[1]
    ldy l007b                                                         ; 387e: a4 7b       .{  :277e[1]
    sty l007a                                                         ; 3880: 84 7a       .z  :2780[1]
    sta l007b                                                         ; 3882: 85 7b       .{  :2782[1]
; &3884 referenced 1 time by &277c[1]
.c2784
    ror l0075                                                         ; 3884: 66 75       fu  :2784[1]
    lda #0                                                            ; 3886: a9 00       ..  :2786[1]
    sta l007c                                                         ; 3888: 85 7c       .|  :2788[1]
    ldy #&0c                                                          ; 388a: a0 0c       ..  :278a[1]
; &388c referenced 1 time by &279a[1]
.loop_c278c
    asl l007a                                                         ; 388c: 06 7a       .z  :278c[1]
    rol a                                                             ; 388e: 2a          *   :278e[1]
    cmp l007b                                                         ; 388f: c5 7b       .{  :278f[1]
    bcc c2795                                                         ; 3891: 90 02       ..  :2791[1]
    sbc l007b                                                         ; 3893: e5 7b       .{  :2793[1]
; &3895 referenced 1 time by &2791[1]
.c2795
    rol l007c                                                         ; 3895: 26 7c       &|  :2795[1]
    bcs c27d3                                                         ; 3897: b0 3a       .:  :2797[1]
    dey                                                               ; 3899: 88          .   :2799[1]
    bne loop_c278c                                                    ; 389a: d0 f0       ..  :279a[1]
    ldy #&0c                                                          ; 389c: a0 0c       ..  :279c[1]
    lda l007c                                                         ; 389e: a5 7c       .|  :279e[1]
    cmp #&14                                                          ; 38a0: c9 14       ..  :27a0[1]
    bcc c27b4                                                         ; 38a2: 90 10       ..  :27a2[1]
    dey                                                               ; 38a4: 88          .   :27a4[1]   ; Y=&0b
    cmp #&1e                                                          ; 38a5: c9 1e       ..  :27a5[1]
    bcc c27b4                                                         ; 38a7: 90 0b       ..  :27a7[1]
    dey                                                               ; 38a9: 88          .   :27a9[1]   ; Y=&0a
    cmp #&35 ; '5'                                                    ; 38aa: c9 35       .5  :27aa[1]
    bcc c27b4                                                         ; 38ac: 90 06       ..  :27ac[1]
    dey                                                               ; 38ae: 88          .   :27ae[1]   ; Y=&09
    cmp #&a3                                                          ; 38af: c9 a3       ..  :27af[1]
    bcc c27b4                                                         ; 38b1: 90 01       ..  :27b1[1]
    dey                                                               ; 38b3: 88          .   :27b3[1]   ; Y=&08
; &38b4 referenced 4 times by &27a2[1], &27a7[1], &27ac[1], &27b1[1]
.c27b4
    tya                                                               ; 38b4: 98          .   :27b4[1]
; &38b5 referenced 1 time by &27d5[1]
.c27b5
    rol l0075                                                         ; 38b5: 26 75       &u  :27b5[1]
    bcs c27bd                                                         ; 38b7: b0 04       ..  :27b7[1]
    eor #7                                                            ; 38b9: 49 07       I.  :27b9[1]
    adc #1                                                            ; 38bb: 69 01       i.  :27bb[1]
; &38bd referenced 1 time by &27b7[1]
.c27bd
    rol l0075                                                         ; 38bd: 26 75       &u  :27bd[1]
    bcs c27c5                                                         ; 38bf: b0 04       ..  :27bf[1]
    eor #&1f                                                          ; 38c1: 49 1f       I.  :27c1[1]
    adc #1                                                            ; 38c3: 69 01       i.  :27c3[1]
; &38c5 referenced 1 time by &27bf[1]
.c27c5
    rol l0075                                                         ; 38c5: 26 75       &u  :27c5[1]
    bcs c27cd                                                         ; 38c7: b0 04       ..  :27c7[1]
    eor #&0f                                                          ; 38c9: 49 0f       I.  :27c9[1]
    adc #1                                                            ; 38cb: 69 01       i.  :27cb[1]
; &38cd referenced 1 time by &27c7[1]
.c27cd
    and #&1f                                                          ; 38cd: 29 1f       ).  :27cd[1]
    sta l2655                                                         ; 38cf: 8d 55 26    .U& :27cf[1]
    rts                                                               ; 38d2: 60          `   :27d2[1]

; &38d3 referenced 1 time by &2797[1]
.c27d3
    lda #8                                                            ; 38d3: a9 08       ..  :27d3[1]
    bne c27b5                                                         ; 38d5: d0 de       ..  :27d5[1]   ; ALWAYS branch

    nop                                                               ; 38d7: ea          .   :27d7[1]
    nop                                                               ; 38d8: ea          .   :27d8[1]
    nop                                                               ; 38d9: ea          .   :27d9[1]
    nop                                                               ; 38da: ea          .   :27da[1]
    brk                                                               ; 38db: 00          .   :27db[1]

    equb 0, 0, 0, 0                                                   ; 38dc: 00 00 00... ... :27dc[1]

; &38e0 referenced 1 time by &18c9[1]
.c27e0
    ldx l0080                                                         ; 38e0: a6 80       ..  :27e0[1]
    lda l0489,x                                                       ; 38e2: bd 89 04    ... :27e2[1]
    beq c280b                                                         ; 38e5: f0 24       .$  :27e5[1]
    sec                                                               ; 38e7: 38          8   :27e7[1]
    sbc l0e31                                                         ; 38e8: ed 31 0e    .1. :27e8[1]
    bcs c27ef                                                         ; 38eb: b0 02       ..  :27eb[1]
    lda #0                                                            ; 38ed: a9 00       ..  :27ed[1]
; &38ef referenced 1 time by &27eb[1]
.c27ef
    sta l0489,x                                                       ; 38ef: 9d 89 04    ... :27ef[1]
    bne c27fa                                                         ; 38f2: d0 06       ..  :27f2[1]
    jsr sub_c1f5d                                                     ; 38f4: 20 5d 1f     ]. :27f4[1]
    inc l25dd                                                         ; 38f7: ee dd 25    ..% :27f7[1]
; &38fa referenced 1 time by &27f2[1]
.c27fa
    lda l040a,x                                                       ; 38fa: bd 0a 04    ... :27fa[1]
    cmp #4                                                            ; 38fd: c9 04       ..  :27fd[1]
    bcc c280b                                                         ; 38ff: 90 0a       ..  :27ff[1]
    and #3                                                            ; 3901: 29 03       ).  :2801[1]
    sta l040a,x                                                       ; 3903: 9d 0a 04    ... :2803[1]
    lda #1                                                            ; 3906: a9 01       ..  :2806[1]
    sta l0400,x                                                       ; 3908: 9d 00 04    ... :2808[1]
; &390b referenced 2 times by &27e5[1], &27ff[1]
.c280b
    ldy l0082                                                         ; 390b: a4 82       ..  :280b[1]
    lda l0408,x                                                       ; 390d: bd 08 04    ... :280d[1]
    sta l007a                                                         ; 3910: 85 7a       .z  :2810[1]
    lda l0408,y                                                       ; 3912: b9 08 04    ... :2812[1]
    sta l007b                                                         ; 3915: 85 7b       .{  :2815[1]
    lda l0487,x                                                       ; 3917: bd 87 04    ... :2817[1]
    sta l0088                                                         ; 391a: 85 88       ..  :281a[1]
    lda l0487,y                                                       ; 391c: b9 87 04    ... :281c[1]
    sta l0487,x                                                       ; 391f: 9d 87 04    ... :281f[1]
    lda l0088                                                         ; 3922: a5 88       ..  :2822[1]
    sta l0487,y                                                       ; 3924: 99 87 04    ... :2824[1]
    sec                                                               ; 3927: 38          8   :2827[1]
    sbc l0487,x                                                       ; 3928: fd 87 04    ... :2828[1]
    bpl c282f                                                         ; 392b: 10 02       ..  :282b[1]
    eor #&ff                                                          ; 392d: 49 ff       I.  :282d[1]
; &392f referenced 1 time by &282b[1]
.c282f
    lsr a                                                             ; 392f: 4a          J   :282f[1]
    lsr a                                                             ; 3930: 4a          J   :2830[1]
    lsr a                                                             ; 3931: 4a          J   :2831[1]
    lsr a                                                             ; 3932: 4a          J   :2832[1]
    lsr a                                                             ; 3933: 4a          J   :2833[1]
    beq c283f                                                         ; 3934: f0 09       ..  :2834[1]
; &3936 referenced 1 time by &283d[1]
.loop_c2836
    lsr l007a                                                         ; 3936: 46 7a       Fz  :2836[1]
    lsr l007b                                                         ; 3938: 46 7b       F{  :2838[1]
    sec                                                               ; 393a: 38          8   :283a[1]
    sbc #1                                                            ; 393b: e9 01       ..  :283b[1]
    bne loop_c2836                                                    ; 393d: d0 f7       ..  :283d[1]
; &393f referenced 1 time by &2834[1]
.c283f
    lda l007a                                                         ; 393f: a5 7a       .z  :283f[1]
    sta l0408,y                                                       ; 3941: 99 08 04    ... :2841[1]
    lda l007b                                                         ; 3944: a5 7b       .{  :2844[1]
    sta l0408,x                                                       ; 3946: 9d 08 04    ... :2846[1]
    lda l25e0                                                         ; 3949: ad e0 25    ..% :2849[1]
    cmp l25e1                                                         ; 394c: cd e1 25    ..% :284c[1]
    bcs c285a                                                         ; 394f: b0 09       ..  :284f[1]
    inx                                                               ; 3951: e8          .   :2851[1]
    inx                                                               ; 3952: e8          .   :2852[1]
    inx                                                               ; 3953: e8          .   :2853[1]
    iny                                                               ; 3954: c8          .   :2854[1]
    iny                                                               ; 3955: c8          .   :2855[1]
    iny                                                               ; 3956: c8          .   :2856[1]
    lda l25e1                                                         ; 3957: ad e1 25    ..% :2857[1]
; &395a referenced 1 time by &284f[1]
.c285a
    sta l007b                                                         ; 395a: 85 7b       .{  :285a[1]
    lda l0e3b                                                         ; 395c: ad 3b 0e    .;. :285c[1]
    sec                                                               ; 395f: 38          8   :285f[1]
    sbc l007b                                                         ; 3960: e5 7b       .{  :2860[1]
    clc                                                               ; 3962: 18          .   :2862[1]
    adc #1                                                            ; 3963: 69 01       i.  :2863[1]
    lsr a                                                             ; 3965: 4a          J   :2865[1]
    sta l007b                                                         ; 3966: 85 7b       .{  :2866[1]
    lda l0482,x                                                       ; 3968: bd 82 04    ... :2868[1]
    cmp l0482,y                                                       ; 396b: d9 82 04    ... :286b[1]
    bcs c2876                                                         ; 396e: b0 06       ..  :286e[1]
    sty l007a                                                         ; 3970: 84 7a       .z  :2870[1]
    txa                                                               ; 3972: 8a          .   :2872[1]
    tay                                                               ; 3973: a8          .   :2873[1]
    ldx l007a                                                         ; 3974: a6 7a       .z  :2874[1]
; &3976 referenced 1 time by &286e[1]
.c2876
    lda l0482,x                                                       ; 3976: bd 82 04    ... :2876[1]
    clc                                                               ; 3979: 18          .   :2879[1]
    adc l007b                                                         ; 397a: 65 7b       e{  :287a[1]
    bcs c2881                                                         ; 397c: b0 03       ..  :287c[1]
    sta l0482,x                                                       ; 397e: 9d 82 04    ... :287e[1]
; &3981 referenced 1 time by &287c[1]
.c2881
    lda l0482,y                                                       ; 3981: b9 82 04    ... :2881[1]
    sec                                                               ; 3984: 38          8   :2884[1]
    sbc l007b                                                         ; 3985: e5 7b       .{  :2885[1]
    bcc c288c                                                         ; 3987: 90 03       ..  :2887[1]
    sta l0482,y                                                       ; 3989: 99 82 04    ... :2889[1]
; &398c referenced 1 time by &2887[1]
.c288c
    jmp c18cc                                                         ; 398c: 4c cc 18    L.. :288c[1]

    equb &ff                                                          ; 398f: ff          .   :288f[1]
; &3990 referenced 5 times by &2490[1], &298d[1], &350f[1], &3bdb[1], &3c3e[1]
.l2890
    equb 0                                                            ; 3990: 00          .   :2890[1]
; &3991 referenced 5 times by &2552[1], &2559[1], &28e5[1], &28fd[1], &2902[1]
.l2891
    equb 0                                                            ; 3991: 00          .   :2891[1]
; &3992 referenced 4 times by &28f3[1], &290c[1], &2985[1], &2993[1]
.l2892
    equb 0, 0                                                         ; 3992: 00 00       ..  :2892[1]
; &3994 referenced 5 times by &28ed[1], &2933[1], &2936[1], &294e[1], &2998[1]
.l2894
    equb 0, 0                                                         ; 3994: 00 00       ..  :2894[1]
; &3996 referenced 4 times by &28f0[1], &293d[1], &2940[1], &299d[1]
.l2896
    equb 0                                                            ; 3996: 00          .   :2896[1]
; &3997 referenced 3 times by &28e0[1], &2921[1], &2928[1]
.l2897
    equb 0, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea                    ; 3997: 00 ea ea... ... :2897[1]

; &39a0 referenced 1 time by &3595[1]
.sub_c28a0
    jsr sub_c2336                                                     ; 39a0: 20 36 23     6# :28a0[1]
    jsr sub_c2312                                                     ; 39a3: 20 12 23     .# :28a3[1]
    jsr sub_c231e                                                     ; 39a6: 20 1e 23     .# :28a6[1]
    jsr sub_c1f03                                                     ; 39a9: 20 03 1f     .. :28a9[1]
    jsr sub_c22d5                                                     ; 39ac: 20 d5 22     ." :28ac[1]
    jsr c1d8e                                                         ; 39af: 20 8e 1d     .. :28af[1]
    jsr sub_c22a3                                                     ; 39b2: 20 a3 22     ." :28b2[1]
    jsr sub_c22b1                                                     ; 39b5: 20 b1 22     ." :28b5[1]
    jsr sub_c2275                                                     ; 39b8: 20 75 22     u" :28b8[1]
    jsr sub_c2eac                                                     ; 39bb: 20 ac 2e     .. :28bb[1]
    jsr sub_c2e61                                                     ; 39be: 20 61 2e     a. :28be[1]
    jsr sub_c35a5                                                     ; 39c1: 20 a5 35     .5 :28c1[1]
    jsr sub_c22fa                                                     ; 39c4: 20 fa 22     ." :28c4[1]
    jsr sub_c1d24                                                     ; 39c7: 20 24 1d     $. :28c7[1]
    jsr c142b                                                         ; 39ca: 20 2b 14     +. :28ca[1]
    jsr sub_c362f                                                     ; 39cd: 20 2f 36     /6 :28cd[1]
    jsr sub_c2306                                                     ; 39d0: 20 06 23     .# :28d0[1]
    rts                                                               ; 39d3: 60          `   :28d3[1]

    equb &ea, &ea, &ea                                                ; 39d4: ea ea ea    ... :28d4[1]

; &39d7 referenced 1 time by &2397[1]
.c28d7
    ldy #&c0                                                          ; 39d7: a0 c0       ..  :28d7[1]
    bne c28dd                                                         ; 39d9: d0 02       ..  :28d9[1]   ; ALWAYS branch

; &39db referenced 1 time by &238f[1]
.c28db
    ldy #&40 ; '@'                                                    ; 39db: a0 40       .@  :28db[1]
; &39dd referenced 1 time by &28d9[1]
.c28dd
    inc l1cd8                                                         ; 39dd: ee d8 1c    ... :28dd[1]
    sty l2897                                                         ; 39e0: 8c 97 28    ..( :28e0[1]
    lda #&3f ; '?'                                                    ; 39e3: a9 3f       .?  :28e3[1]
    sta l2891                                                         ; 39e5: 8d 91 28    ..( :28e5[1]
    jsr sub_c35f7                                                     ; 39e8: 20 f7 35     .5 :28e8[1]
    lda #&7f                                                          ; 39eb: a9 7f       ..  :28eb[1]
    sta l2894                                                         ; 39ed: 8d 94 28    ..( :28ed[1]
    sta l2896                                                         ; 39f0: 8d 96 28    ..( :28f0[1]
    sta l2892                                                         ; 39f3: 8d 92 28    ..( :28f3[1]
    bne c2914                                                         ; 39f6: d0 1c       ..  :28f6[1]   ; ALWAYS branch

; &39f8 referenced 1 time by &387a[1]
.sub_c28f8
    lda l1cd8                                                         ; 39f8: ad d8 1c    ... :28f8[1]
    beq c2964                                                         ; 39fb: f0 67       .g  :28fb[1]
    lda l2891                                                         ; 39fd: ad 91 28    ..( :28fd[1]
    beq c290c                                                         ; 3a00: f0 0a       ..  :2900[1]
    dec l2891                                                         ; 3a02: ce 91 28    ..( :2902[1]
    bne c290c                                                         ; 3a05: d0 05       ..  :2905[1]
    lda #&40 ; '@'                                                    ; 3a07: a9 40       .@  :2907[1]
    sta l191e                                                         ; 3a09: 8d 1e 19    ... :2909[1]
; &3a0c referenced 2 times by &2900[1], &2905[1]
.c290c
    lda l2892                                                         ; 3a0c: ad 92 28    ..( :290c[1]
    beq c2964                                                         ; 3a0f: f0 53       .S  :290f[1]
    jsr sub_c2998                                                     ; 3a11: 20 98 29     .) :2911[1]
; &3a14 referenced 1 time by &28f6[1]
.c2914
    lda #&92                                                          ; 3a14: a9 92       ..  :2914[1]
    sta l0080                                                         ; 3a16: 85 80       ..  :2916[1]
    lda #&28 ; '('                                                    ; 3a18: a9 28       .(  :2918[1]
    sta l0081                                                         ; 3a1a: 85 81       ..  :291a[1]
    ldy #1                                                            ; 3a1c: a0 01       ..  :291c[1]
    jsr sub_c0fe6                                                     ; 3a1e: 20 e6 0f     .. :291e[1]
    lda l2897                                                         ; 3a21: ad 97 28    ..( :2921[1]
    clc                                                               ; 3a24: 18          .   :2924[1]
    adc l0e33                                                         ; 3a25: 6d 33 0e    m3. :2925[1]
    sta l2897                                                         ; 3a28: 8d 97 28    ..( :2928[1]
    lsr a                                                             ; 3a2b: 4a          J   :292b[1]
    lsr a                                                             ; 3a2c: 4a          J   :292c[1]
    lsr a                                                             ; 3a2d: 4a          J   :292d[1]
    tay                                                               ; 3a2e: a8          .   :292e[1]
    lda l0e58,y                                                       ; 3a2f: b9 58 0e    .X. :292f[1]
    clc                                                               ; 3a32: 18          .   :2932[1]
    adc l2894                                                         ; 3a33: 6d 94 28    m.( :2933[1]
    sta l2894                                                         ; 3a36: 8d 94 28    ..( :2936[1]
    lda l0e78,y                                                       ; 3a39: b9 78 0e    .x. :2939[1]
    clc                                                               ; 3a3c: 18          .   :293c[1]
    adc l2896                                                         ; 3a3d: 6d 96 28    m.( :293d[1]
    sta l2896                                                         ; 3a40: 8d 96 28    ..( :2940[1]
    sec                                                               ; 3a43: 38          8   :2943[1]
    sbc l007b                                                         ; 3a44: e5 7b       .{  :2944[1]
    bcs c294a                                                         ; 3a46: b0 02       ..  :2946[1]
    eor #&ff                                                          ; 3a48: 49 ff       I.  :2948[1]
; &3a4a referenced 1 time by &2946[1]
.c294a
    cmp #&40 ; '@'                                                    ; 3a4a: c9 40       .@  :294a[1]
    bcs c2991                                                         ; 3a4c: b0 43       .C  :294c[1]
    lda l2894                                                         ; 3a4e: ad 94 28    ..( :294e[1]
    sec                                                               ; 3a51: 38          8   :2951[1]
    sbc l007a                                                         ; 3a52: e5 7a       .z  :2952[1]
    bcs c2958                                                         ; 3a54: b0 02       ..  :2954[1]
    eor #&ff                                                          ; 3a56: 49 ff       I.  :2956[1]
; &3a58 referenced 1 time by &2954[1]
.c2958
    cmp #&40 ; '@'                                                    ; 3a58: c9 40       .@  :2958[1]
    bcs c2991                                                         ; 3a5a: b0 35       .5  :295a[1]
    jsr sub_c159d                                                     ; 3a5c: 20 9d 15     .. :295c[1]
    bcs c2965                                                         ; 3a5f: b0 04       ..  :295f[1]
    jsr sub_c2998                                                     ; 3a61: 20 98 29     .) :2961[1]
; &3a64 referenced 2 times by &28fb[1], &290f[1]
.c2964
    rts                                                               ; 3a64: 60          `   :2964[1]

; &3a65 referenced 1 time by &295f[1]
.c2965
    lda l0e4f                                                         ; 3a65: ad 4f 0e    .O. :2965[1]
    sec                                                               ; 3a68: 38          8   :2968[1]
    sbc l0e54                                                         ; 3a69: ed 54 0e    .T. :2969[1]
    sta l007a                                                         ; 3a6c: 85 7a       .z  :296c[1]
    asl a                                                             ; 3a6e: 0a          .   :296e[1]
    asl a                                                             ; 3a6f: 0a          .   :296f[1]
    adc l007a                                                         ; 3a70: 65 7a       ez  :2970[1]
    asl a                                                             ; 3a72: 0a          .   :2972[1]
    adc l007a                                                         ; 3a73: 65 7a       ez  :2973[1]
    tax                                                               ; 3a75: aa          .   :2975[1]
    lda l0489,x                                                       ; 3a76: bd 89 04    ... :2976[1]
    beq c2983                                                         ; 3a79: f0 08       ..  :2979[1]
    lda #0                                                            ; 3a7b: a9 00       ..  :297b[1]
    sta l0489,x                                                       ; 3a7d: 9d 89 04    ... :297d[1]
    jsr sub_c1f5d                                                     ; 3a80: 20 5d 1f     ]. :2980[1]
; &3a83 referenced 1 time by &2979[1]
.c2983
    ldy #0                                                            ; 3a83: a0 00       ..  :2983[1]
    sty l2892                                                         ; 3a85: 8c 92 28    ..( :2985[1]
    jsr sub_c138a                                                     ; 3a88: 20 8a 13     .. :2988[1]
    lda #1                                                            ; 3a8b: a9 01       ..  :298b[1]
    sta l2890                                                         ; 3a8d: 8d 90 28    ..( :298d[1]
    rts                                                               ; 3a90: 60          `   :2990[1]

; &3a91 referenced 2 times by &294c[1], &295a[1]
.c2991
    lda #0                                                            ; 3a91: a9 00       ..  :2991[1]
    sta l2892                                                         ; 3a93: 8d 92 28    ..( :2993[1]
    rts                                                               ; 3a96: 60          `   :2996[1]

    equb &ea                                                          ; 3a97: ea          .   :2997[1]

; &3a98 referenced 2 times by &2911[1], &2961[1]
.sub_c2998
    lda l2894                                                         ; 3a98: ad 94 28    ..( :2998[1]
    sta l007a                                                         ; 3a9b: 85 7a       .z  :299b[1]
    lda l2896                                                         ; 3a9d: ad 96 28    ..( :299d[1]
    sta l007b                                                         ; 3aa0: 85 7b       .{  :29a0[1]
    jsr sub_c0f64                                                     ; 3aa2: 20 64 0f     d. :29a2[1]
    inc l007a                                                         ; 3aa5: e6 7a       .z  :29a5[1]
    jsr sub_c0f64                                                     ; 3aa7: 20 64 0f     d. :29a7[1]
    inc l007b                                                         ; 3aaa: e6 7b       .{  :29aa[1]
    dec l007a                                                         ; 3aac: c6 7a       .z  :29ac[1]
    jsr sub_c0f64                                                     ; 3aae: 20 64 0f     d. :29ae[1]
    dec l007a                                                         ; 3ab1: c6 7a       .z  :29b1[1]
    dec l007b                                                         ; 3ab3: c6 7b       .{  :29b3[1]
    jsr sub_c0f64                                                     ; 3ab5: 20 64 0f     d. :29b5[1]
    inc l007a                                                         ; 3ab8: e6 7a       .z  :29b8[1]
    dec l007b                                                         ; 3aba: c6 7b       .{  :29ba[1]
    jsr sub_c0f64                                                     ; 3abc: 20 64 0f     d. :29bc[1]
    rts                                                               ; 3abf: 60          `   :29bf[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 3ac0: ea ea ea... ... :29c0[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &bd, &87,   4        ; 3acc: ea ea ea... ... :29cc[1]
    equs "JJJ"                                                        ; 3ad7: 4a 4a 4a    JJJ :29d7[1]
    equb &a8, &b9, &58, &0e, &18, &7d, &82,   4, &85, &73, &b9, &78   ; 3ada: a8 b9 58... ..X :29da[1]
    equb &0e, &18, &7d, &85,   4, &85, &72, &20, &13, &2a, &c6, &73   ; 3ae6: 0e 18 7d... ..} :29e6[1]
    equb &c6, &73, &c6, &72, &c6, &72, &20, &13, &2a, &e6, &73, &e6   ; 3af2: c6 73 c6... .s. :29f2[1]
    equb &73, &c6, &72, &c6, &72, &20, &13, &2a, &e6, &73, &e6, &73   ; 3afe: 73 c6 72... s.r :29fe[1]
    equb &e6, &72, &e6, &72, &20, &13                                 ; 3b0a: e6 72 e6... .r. :2a0a[1]
    equs "*8`"                                                        ; 3b10: 2a 38 60    *8` :2a10[1]
    equb &a0,   0, &ad, &36, &0e, &91, &80, &a0,   2, &a5, &73, &91   ; 3b13: a0 00 ad... ... :2a13[1]
    equb &80, &a0,   4, &a5, &72, &91, &80, &c8, &bd, &87,   4, &91   ; 3b1f: 80 a0 04... ... :2a1f[1]
    equb &80, &ee, &dc, &1c, &86, &75, &20, &11, &16, &a6, &75, &a0   ; 3b2b: 80 ee dc... ... :2a2b[1]
    equb   0, &ce, &55, &0e, &f0, &10, &a5, &80, &18, &69,   6, &85   ; 3b37: 00 ce 55... ..U :2a37[1]
    equb &80, &90,   2, &e6, &81, &b1, &80, &d0, &ec                  ; 3b43: 80 90 02... ... :2a43[1]
    equs "`hh8`"                                                      ; 3b4c: 60 68 68... `hh :2a4c[1]
    equb &ea, &ea, &ea, &ea, &ea                                      ; 3b51: ea ea ea... ... :2a51[1]
; &3b56 referenced 1 time by &2be0[1]
.l2a56
    equb 0, 0, 1, 3, 7, 5, 2, 2, &ea                                  ; 3b56: 00 00 01... ... :2a56[1]
; &3b5f referenced 1 time by &36c5[1]
.l2a5f
    equb &49, &b1, &ee, &1e                                           ; 3b5f: 49 b1 ee... I.. :2a5f[1]
    equs "Aj.aAIaj."                                                  ; 3b63: 41 6a 2e... Aj. :2a63[1]
    equb &ee, &1e, &b1, &ea                                           ; 3b6c: ee 1e b1... ... :2a6c[1]
; &3b70 referenced 1 time by &36ca[1]
.l2a70
    equs "2223337732737232"                                           ; 3b70: 32 32 32... 222 :2a70[1]
    equb &ea                                                          ; 3b80: ea          .   :2a80[1]
; &3b81 referenced 2 times by &2c3a[1], &3693[1]
.l2a81
    equb 0                                                            ; 3b81: 00          .   :2a81[1]
; &3b82 referenced 1 time by &3690[1]
.l2a82
    equb 6                                                            ; 3b82: 06          .   :2a82[1]
; &3b83 referenced 1 time by &3686[1]
.l2a83
    equb &18, &ea, &ea, &ea, &ea, &ea, &ea, &ea                       ; 3b83: 18 ea ea... ... :2a83[1]

; &3b8b referenced 1 time by &36ba[1]
.sub_c2a8b
    lda l0480,x                                                       ; 3b8b: bd 80 04    ... :2a8b[1]
    bne c2aef                                                         ; 3b8e: d0 5f       ._  :2a8e[1]
    lda l0482,x                                                       ; 3b90: bd 82 04    ... :2a90[1]
    sta l0077                                                         ; 3b93: 85 77       .w  :2a93[1]
    lda l0485,x                                                       ; 3b95: bd 85 04    ... :2a95[1]
    sta l0076                                                         ; 3b98: 85 76       .v  :2a98[1]
    jsr sub_c2758                                                     ; 3b9a: 20 58 27     X' :2a9a[1]
    ldy l0488,x                                                       ; 3b9d: bc 88 04    ... :2a9d[1]
    bmi c2ab2                                                         ; 3ba0: 30 10       0.  :2aa0[1]
    lda l0409,x                                                       ; 3ba2: bd 09 04    ... :2aa2[1]
    and #&40 ; '@'                                                    ; 3ba5: 29 40       )@  :2aa5[1]
    beq c2ab2                                                         ; 3ba7: f0 09       ..  :2aa7[1]
    tya                                                               ; 3ba9: 98          .   :2aa9[1]
    and #&0f                                                          ; 3baa: 29 0f       ).  :2aaa[1]
    beq c2ab2                                                         ; 3bac: f0 04       ..  :2aac[1]
    tya                                                               ; 3bae: 98          .   :2aae[1]
    ora #&80                                                          ; 3baf: 09 80       ..  :2aaf[1]
    tay                                                               ; 3bb1: a8          .   :2ab1[1]
; &3bb2 referenced 3 times by &2aa0[1], &2aa7[1], &2aac[1]
.c2ab2
    lda l0409,x                                                       ; 3bb2: bd 09 04    ... :2ab2[1]
    and #&20 ; ' '                                                    ; 3bb5: 29 20       )   :2ab5[1]
    beq c2adf                                                         ; 3bb7: f0 26       .&  :2ab7[1]
    tya                                                               ; 3bb9: 98          .   :2ab9[1]
    and #&40 ; '@'                                                    ; 3bba: 29 40       )@  :2aba[1]
    bne c2acf                                                         ; 3bbc: d0 11       ..  :2abc[1]
    lda l2655                                                         ; 3bbe: ad 55 26    .U& :2abe[1]
    clc                                                               ; 3bc1: 18          .   :2ac1[1]
    adc #3                                                            ; 3bc2: 69 03       i.  :2ac2[1]
    and #&1f                                                          ; 3bc4: 29 1f       ).  :2ac4[1]
    cmp #7                                                            ; 3bc6: c9 07       ..  :2ac6[1]
    bcs c2adf                                                         ; 3bc8: b0 15       ..  :2ac8[1]
    tya                                                               ; 3bca: 98          .   :2aca[1]
    ora #&40 ; '@'                                                    ; 3bcb: 09 40       .@  :2acb[1]
    bne c2ae0                                                         ; 3bcd: d0 11       ..  :2acd[1]
; &3bcf referenced 1 time by &2abc[1]
.c2acf
    lda l2655                                                         ; 3bcf: ad 55 26    .U& :2acf[1]
    clc                                                               ; 3bd2: 18          .   :2ad2[1]
    adc #5                                                            ; 3bd3: 69 05       i.  :2ad3[1]
    and #&1f                                                          ; 3bd5: 29 1f       ).  :2ad5[1]
    cmp #&0b                                                          ; 3bd7: c9 0b       ..  :2ad7[1]
    bcc c2adf                                                         ; 3bd9: 90 04       ..  :2ad9[1]
    tya                                                               ; 3bdb: 98          .   :2adb[1]
    and #&bf                                                          ; 3bdc: 29 bf       ).  :2adc[1]
    tay                                                               ; 3bde: a8          .   :2ade[1]
; &3bdf referenced 3 times by &2ab7[1], &2ac8[1], &2ad9[1]
.c2adf
    tya                                                               ; 3bdf: 98          .   :2adf[1]
; &3be0 referenced 1 time by &2acd[1]
.c2ae0
    sta l0488,x                                                       ; 3be0: 9d 88 04    ... :2ae0[1]
    and #&c0                                                          ; 3be3: 29 c0       ).  :2ae3[1]
    beq c2af7                                                         ; 3be5: f0 10       ..  :2ae5[1]
    jsr sub_c2bcf                                                     ; 3be7: 20 cf 2b     .+ :2ae7[1]
    jsr sub_c2c3a                                                     ; 3bea: 20 3a 2c     :, :2aea[1]
    sec                                                               ; 3bed: 38          8   :2aed[1]
    rts                                                               ; 3bee: 60          `   :2aee[1]

; &3bef referenced 1 time by &2a8e[1]
.c2aef
    lda l0488,x                                                       ; 3bef: bd 88 04    ... :2aef[1]
    and #&3f ; '?'                                                    ; 3bf2: 29 3f       )?  :2af2[1]
    sta l0488,x                                                       ; 3bf4: 9d 88 04    ... :2af4[1]
; &3bf7 referenced 1 time by &2ae5[1]
.c2af7
    clc                                                               ; 3bf7: 18          .   :2af7[1]
    rts                                                               ; 3bf8: 60          `   :2af8[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &bd, &82, 4, &30, 2  ; 3bf9: ea ea ea... ... :2af9[1]
    equb &49, &ff, &85, &7a, &ad,   1, &0f, &85, &7b, &ad, 0, &0f, 6  ; 3c06: 49 ff 85... I.. :2b06[1]
    equb &7b, &2a,   6, &7b, &2a,   6                                 ; 3c13: 7b 2a 06... {*. :2b13[1]
    equs "{*}"                                                        ; 3c19: 7b 2a 7d    {*} :2b19[1]
    equb &85, 4, &30, 2, &49, &ff, &18                                ; 3c1c: 85 04 30... ..0 :2b1c[1]
    equs "ez`"                                                        ; 3c23: 65 7a 60    ez` :2b23[1]
    equb &bd, &82,   4, &30, 2, &49, &ff, &85, &7a, &bd, &85, 4, &30  ; 3c26: bd 82 04... ... :2b26[1]
    equb   2, &49, &ff, &18                                           ; 3c33: 02 49 ff... .I. :2b33[1]
    equs "ez`"                                                        ; 3c37: 65 7a 60    ez` :2b37[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &bd, &80, 4, &f0     ; 3c3a: ea ea ea... ... :2b3a[1]
    equb &0d, &bd, &83,   4, &85, &77, &bd, &86,   4, &85             ; 3c46: 0d bd 83... ... :2b46[1]
    equs "vL^+"                                                       ; 3c50: 76 4c 5e... vL^ :2b50[1]
    equb &bd, &82, 4, &85, &77, &bd, &85, 4, &85                      ; 3c54: bd 82 04... ... :2b54[1]
    equs "v X'"                                                       ; 3c5d: 76 20 58... v X :2b5d[1]
    equb &ad, &55, &26, &18, &69, &10, &29, &1f, &8d, &55, &26, &c9   ; 3c61: ad 55 26... .U& :2b61[1]
    equb &11, &90,   5, &49, &1f, &69,   0                            ; 3c6d: 11 90 05... ... :2b6d[1]
    equs "8fu"                                                        ; 3c74: 38 66 75    8fu :2b74[1]
    equb &a8, &b9, &58, &0e, &85, &7b, &ad,   1, &0f, &85, &7a, &ad   ; 3c77: a8 b9 58... ..X :2b77[1]
    equb   0, &0f,   6, &7a, &2a,   6, &7a, &2a,   6, &7a, &2a, &85   ; 3c83: 00 0f 06... ... :2b83[1]
    equb &7a, &a9,   0, &a0,   3, &46, &7b, &90,   3, &18             ; 3c8f: 7a a9 00... z.. :2b8f[1]
    equs "ezj"                                                        ; 3c99: 65 7a 6a    ezj :2b99[1]
    equb &88, &d0, &f5, &4a, &c9,   2, &90, &15, &c8, &c9,   5, &90   ; 3c9c: 88 d0 f5... ... :2b9c[1]
    equb &10, &c8, &c9,   8, &90, &0b, &c8, &c9, &0b, &90,   6, &c8   ; 3ca8: 10 c8 c9... ... :2ba8[1]
    equb &c9, &0e, &90,   1, &c8, &98,   6, &75, &90,   4, &49, &1f   ; 3cb4: c9 0e 90... ... :2bb4[1]
    equb &69,   0, &85, &7b, &ad                                      ; 3cc0: 69 00 85... i.. :2bc0[1]
    equs "U&8"                                                        ; 3cc5: 55 26 38    U&8 :2bc5[1]
    equb &e5, &7b, &29, &1f, &8d, &55, &26                            ; 3cc8: e5 7b 29... .{) :2bc8[1]

; &3ccf referenced 1 time by &2ae7[1]
.sub_c2bcf
    lda l0487,x                                                       ; 3ccf: bd 87 04    ... :2bcf[1]
    lsr a                                                             ; 3cd2: 4a          J   :2bd2[1]
    lsr a                                                             ; 3cd3: 4a          J   :2bd3[1]
    lsr a                                                             ; 3cd4: 4a          J   :2bd4[1]
    sec                                                               ; 3cd5: 38          8   :2bd5[1]
    sbc l2655                                                         ; 3cd6: ed 55 26    .U& :2bd6[1]
    beq c2c10                                                         ; 3cd9: f0 35       .5  :2bd9[1]
    lsr a                                                             ; 3cdb: 4a          J   :2bdb[1]
    lsr a                                                             ; 3cdc: 4a          J   :2bdc[1]
    and #7                                                            ; 3cdd: 29 07       ).  :2bdd[1]
    tay                                                               ; 3cdf: a8          .   :2bdf[1]
    lda l2a56,y                                                       ; 3ce0: b9 56 2a    .V* :2be0[1]
    sta l007b                                                         ; 3ce3: 85 7b       .{  :2be3[1]
    lsr l007b                                                         ; 3ce5: 46 7b       F{  :2be5[1]
    bcc c2bf3                                                         ; 3ce7: 90 0a       ..  :2be7[1]
    jsr sub_c2c29                                                     ; 3ce9: 20 29 2c     ), :2be9[1]
    lsr l007b                                                         ; 3cec: 46 7b       F{  :2bec[1]
    bcc c2bf3                                                         ; 3cee: 90 03       ..  :2bee[1]
    jsr sub_c2c29                                                     ; 3cf0: 20 29 2c     ), :2bf0[1]
; &3cf3 referenced 2 times by &2be7[1], &2bee[1]
.c2bf3
    lsr l007b                                                         ; 3cf3: 46 7b       F{  :2bf3[1]
    bcs c2c00                                                         ; 3cf5: b0 09       ..  :2bf5[1]
    dec l0487,x                                                       ; 3cf7: de 87 04    ... :2bf7[1]
    dec l0487,x                                                       ; 3cfa: de 87 04    ... :2bfa[1]
    jmp c2c06                                                         ; 3cfd: 4c 06 2c    L., :2bfd[1]

; &3d00 referenced 1 time by &2bf5[1]
.c2c00
    inc l0487,x                                                       ; 3d00: fe 87 04    ... :2c00[1]
    inc l0487,x                                                       ; 3d03: fe 87 04    ... :2c03[1]
; &3d06 referenced 1 time by &2bfd[1]
.c2c06
    lda l0487,x                                                       ; 3d06: bd 87 04    ... :2c06[1]
    lsr a                                                             ; 3d09: 4a          J   :2c09[1]
    lsr a                                                             ; 3d0a: 4a          J   :2c0a[1]
    lsr a                                                             ; 3d0b: 4a          J   :2c0b[1]
    sec                                                               ; 3d0c: 38          8   :2c0c[1]
    sbc l2655                                                         ; 3d0d: ed 55 26    .U& :2c0d[1]
; &3d10 referenced 1 time by &2bd9[1]
.c2c10
    rts                                                               ; 3d10: 60          `   :2c10[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &bd, &82, 4, &85     ; 3d11: ea ea ea... ... :2c11[1]
    equb &77, &bd, &85,   4, &85                                      ; 3d1d: 77 bd 85... w.. :2c1d[1]
    equs "v X'L"                                                      ; 3d22: 76 20 58... v X :2c22[1]
    equb &cf, &2b                                                     ; 3d27: cf 2b       .+  :2c27[1]

; &3d29 referenced 3 times by &2be9[1], &2bf0[1], &367c[1]
.sub_c2c29
    lda l0408,x                                                       ; 3d29: bd 08 04    ... :2c29[1]
    beq c2c34                                                         ; 3d2c: f0 06       ..  :2c2c[1]
    sec                                                               ; 3d2e: 38          8   :2c2e[1]
    sbc #1                                                            ; 3d2f: e9 01       ..  :2c2f[1]
    sta l0408,x                                                       ; 3d31: 9d 08 04    ... :2c31[1]
; &3d34 referenced 1 time by &2c2c[1]
.c2c34
    rts                                                               ; 3d34: 60          `   :2c34[1]

    equb &ea, &ea, &ea, &ea, &ea                                      ; 3d35: ea ea ea... ... :2c35[1]

; &3d3a referenced 1 time by &2aea[1]
.sub_c2c3a
    lda l2a81                                                         ; 3d3a: ad 81 2a    ..* :2c3a[1]
    cmp l0408,x                                                       ; 3d3d: dd 08 04    ... :2c3d[1]
    beq c2c50                                                         ; 3d40: f0 0e       ..  :2c40[1]
    bcs c2c4a                                                         ; 3d42: b0 06       ..  :2c42[1]
    dec l0408,x                                                       ; 3d44: de 08 04    ... :2c44[1]
    jmp c2c4d                                                         ; 3d47: 4c 4d 2c    LM, :2c47[1]

; &3d4a referenced 1 time by &2c42[1]
.c2c4a
    inc l0408,x                                                       ; 3d4a: fe 08 04    ... :2c4a[1]
; &3d4d referenced 1 time by &2c47[1]
.c2c4d
    cmp l0408,x                                                       ; 3d4d: dd 08 04    ... :2c4d[1]
; &3d50 referenced 1 time by &2c40[1]
.c2c50
    rts                                                               ; 3d50: 60          `   :2c50[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, 0, 0, 0, 0, 0, 0, 0  ; 3d51: ea ea ea... ... :2c51[1]
; &3d60 referenced 1 time by &3583[1]
.l2c60
    equs "AAAC"                                                       ; 3d60: 41 41 41... AAA :2c60[1]
    equb &e7, &a7, &a5, &a3,   4,   4,   4, &84, &ce, &ca, &4a, &8a   ; 3d64: e7 a7 a5... ... :2c64[1]
    equb &fb, &4f, &43,   5, &0d, &0d, &0d,   7, &be, &e4, &84        ; 3d70: fb 4f 43... .OC :2c70[1]
    equs "@```"                                                       ; 3d7b: 40 60 60... @`` :2c7b[1]
    equb &c0, 3, &0c, &10, &13                                        ; 3d7f: c0 03 0c... ... :2c7f[1]
    equs "$%$"                                                        ; 3d84: 24 25 24    $%$ :2c84[1]
    equb &13, &80, &60, &10, &90                                      ; 3d87: 13 80 60... ..` :2c87[1]
    equs "HHH"                                                        ; 3d8c: 48 48 48    HHH :2c8c[1]
    equb &90, &10, &4c, &e3, &e6, &fc, &e6, &e3, &40, &10, &64, &8e   ; 3d8f: 90 10 4c... ..L :2c8f[1]
    equb &ce, &7e, &ce, &8e,   4,   1,   7                            ; 3d9b: ce 7e ce... .~. :2c9b[1]
    equs "LLGA"                                                       ; 3da2: 4c 4c 47... LLG :2ca2[1]
    equb &e2, &a1,   0, &c0, &64, &64, &c4,   4, &8e, &0a, &a2, &a1   ; 3da6: e2 a1 00... ... :2ca6[1]
    equb &93, &9c, &a8, &44,   2,   1, &8a, &0a, &92                  ; 3db2: 93 9c a8... ... :2cb2[1]
    equs "r*D"                                                        ; 3dbb: 72 2a 44    r*D :2cbb[1]
    equb &80,   0,   1,   1,   3, &c3, &c6, &c6, &cc, &cd,   0,   0   ; 3dbe: 80 00 01... ... :2cbe[1]
    equb &80, &86, &c6, &c6, &66, &66, &f9, &c3, &fc, &c6, &f3, &d9   ; 3dca: 80 86 c6... ... :2cca[1]
    equb &cd,   7, &3e, &86, &7e, &c6, &9e, &36, &66, &c0,   0,   3   ; 3dd6: cd 07 3e... ..> :2cd6[1]
    equb   4,   8, &11, &12, &11, &48,   0, &80, &40, &20, &10, &90   ; 3de2: 04 08 11... ... :2ce2[1]
    equb &10, &24, &e4, &e3, &d2, &da, &ee, &e4                       ; 3dee: 10 24 e4... .$. :2cee[1]
    equs "BAN"                                                        ; 3df6: 42 41 4e    BAN :2cf6[1]
    equb &8e, &96, &b6, &ee, &4e, &84, 4, 3, 6                        ; 3df9: 8e 96 b6... ... :2cf9[1]
    equs "LGB"                                                        ; 3e02: 4c 47 42    LGB :2d02[1]
    equb &e2, &a2, &a2, &80, &c0, &64, &c4, &84, &8e, &8a, &8a, &92   ; 3e05: e2 a2 a2... ... :2d05[1]
    equb &8a, &85, &91, &a9, &45, &43,   1, &92, &a2, &42, &12, &2a   ; 3e11: 8a 85 91... ... :2d11[1]
    equb &44, &84,   0,   1,   1                                      ; 3e1d: 44 84 00... D.. :2d1d[1]
    equs "CCF"                                                        ; 3e22: 43 43 46    CCF :2d22[1]
    equb &e6, &ed, &ed,   0,   0, &84, &84, &c4, &ce, &6e, &6e, &f9   ; 3e25: e6 ed ed... ... :2d25[1]
    equb &c1, &fd, &c3, &f9, &ed, &e6, &43, &3e,   6, &7e, &86, &3e   ; 3e31: c1 fd c3... ... :2d31[1]
    equb &6e, &ce, &84,   7, &0c, &19, &1b, &1b, &19, &0c, &c7, &c0   ; 3e3d: 6e ce 84... n.. :2d3d[1]
    equb &60, &30, &b0, &b0, &30, &60, &c6, &c1, &e3, &f3, &db, &cf   ; 3e49: 60 30 b0... `0. :2d49[1]
    equb &c3, &c3, &c1,   6, &8e, &9e, &b6, &e6, &86, &86,   6, &ea   ; 3e55: c3 c3 c1... ... :2d55[1]
; &3e61 referenced 5 times by &2f5b[1], &2f64[1], &2f69[1], &2f89[1], &3527[1]
.l2d61
    equb 0                                                            ; 3e61: 00          .   :2d61[1]
; &3e62 referenced 5 times by &2faf[1], &2fb5[1], &2fb8[1], &2fe6[1], &352a[1]
.l2d62
    equb 0                                                            ; 3e62: 00          .   :2d62[1]
; &3e63 referenced 7 times by &249e[1], &2db8[1], &2dbb[1], &2dd0[1], &2df1[1], &2dfb[1], &3515[1]
.l2d63
    equb 0                                                            ; 3e63: 00          .   :2d63[1]
; &3e64 referenced 7 times by &24a1[1], &2dbe[1], &2dc3[1], &2ddf[1], &2df6[1], &2dfe[1], &3512[1]
.l2d64
    equb 0                                                            ; 3e64: 00          .   :2d64[1]
; &3e65 referenced 10 times by &2dd6[1], &2dd9[1], &2e25[1], &2e2f[1], &3806[1], &3c1e[1], &44f2[1], &4517[1], &456a[1], &463c[1]
.l2d65
    equb 0                                                            ; 3e65: 00          .   :2d65[1]
; &3e66 referenced 10 times by &2ddc[1], &2de2[1], &2e13[1], &2e1d[1], &3803[1], &3c2a[1], &44f5[1], &450d[1], &4570[1], &4642[1]
.l2d66
    equb 0                                                            ; 3e66: 00          .   :2d66[1]
; &3e67 referenced 10 times by &2de5[1], &2dea[1], &2e01[1], &2e0b[1], &3800[1], &3c33[1], &44f8[1], &4503[1], &4576[1], &4648[1]
.l2d67
    equb 0, &ea, &ea, &ea, &ea, &ea, &ea                              ; 3e67: 00 ea ea... ... :2d67[1]
; &3e6e referenced 3 times by &2e34[1], &2e4a[1], &3c07[1]
.l2d6e
    equb 0                                                            ; 3e6e: 00          .   :2d6e[1]
; &3e6f referenced 1 time by &2e2c[1]
.l2d6f
    equb 0                                                            ; 3e6f: 00          .   :2d6f[1]
; &3e70 referenced 1 time by &2e22[1]
.l2d70
    equb 0                                                            ; 3e70: 00          .   :2d70[1]
; &3e71 referenced 1 time by &2e1a[1]
.l2d71
    equb 0                                                            ; 3e71: 00          .   :2d71[1]
; &3e72 referenced 1 time by &2e10[1]
.l2d72
    equb 0                                                            ; 3e72: 00          .   :2d72[1]
; &3e73 referenced 1 time by &2e08[1]
.l2d73
    equb 0, &ea                                                       ; 3e73: 00 ea       ..  :2d73[1]
; &3e75 referenced 1 time by &2db2[1]
.l2d75
    equb   8, &12,   3, 4, &70, &90, 3, 4, 2, 3, &ea, &ea, &ea, &ea   ; 3e75: 08 12 03... ... :2d75[1]
    equb &ea, &ea, &ea                                                ; 3e83: ea ea ea    ... :2d83[1]

; &3e86 referenced 1 time by &1faf[1]
.c2d86
    lda #1                                                            ; 3e86: a9 01       ..  :2d86[1]
    sta l0400,x                                                       ; 3e88: 9d 00 04    ... :2d88[1]
    lda l1ce0                                                         ; 3e8b: ad e0 1c    ... :2d8b[1]
    asl a                                                             ; 3e8e: 0a          .   :2d8e[1]
    tay                                                               ; 3e8f: a8          .   :2d8f[1]
    lda l2652                                                         ; 3e90: ad 52 26    .R& :2d90[1]
    beq c2da2                                                         ; 3e93: f0 0d       ..  :2d93[1]
    iny                                                               ; 3e95: c8          .   :2d95[1]
    lda l040a,x                                                       ; 3e96: bd 0a 04    ... :2d96[1]
    cmp #4                                                            ; 3e99: c9 04       ..  :2d99[1]
    bcs c2da2                                                         ; 3e9b: b0 05       ..  :2d9b[1]
    cmp #1                                                            ; 3e9d: c9 01       ..  :2d9d[1]
    beq c2da2                                                         ; 3e9f: f0 01       ..  :2d9f[1]
    dey                                                               ; 3ea1: 88          .   :2da1[1]
; &3ea2 referenced 3 times by &2d93[1], &2d9b[1], &2d9f[1]
.c2da2
    tya                                                               ; 3ea2: 98          .   :2da2[1]
    bpl c2db2                                                         ; 3ea3: 10 0d       ..  :2da3[1]
    and #7                                                            ; 3ea5: 29 07       ).  :2da5[1]
    tay                                                               ; 3ea7: a8          .   :2da7[1]
    lda l25de                                                         ; 3ea8: ad de 25    ..% :2da8[1]
    beq c2db2                                                         ; 3eab: f0 05       ..  :2dab[1]
    dec l25de                                                         ; 3ead: ce de 25    ..% :2dad[1]
    iny                                                               ; 3eb0: c8          .   :2db0[1]
    iny                                                               ; 3eb1: c8          .   :2db1[1]
; &3eb2 referenced 2 times by &2da3[1], &2dab[1]
.c2db2
    lda l2d75,y                                                       ; 3eb2: b9 75 2d    .u- :2db2[1]
    clc                                                               ; 3eb5: 18          .   :2db5[1]
    sei                                                               ; 3eb6: 78          x   :2db6[1]
    sed                                                               ; 3eb7: f8          .   :2db7[1]
    adc l2d63                                                         ; 3eb8: 6d 63 2d    mc- :2db8[1]
    sta l2d63                                                         ; 3ebb: 8d 63 2d    .c- :2dbb[1]
    lda l2d64                                                         ; 3ebe: ad 64 2d    .d- :2dbe[1]
    adc #0                                                            ; 3ec1: 69 00       i.  :2dc1[1]
    sta l2d64                                                         ; 3ec3: 8d 64 2d    .d- :2dc3[1]
    cld                                                               ; 3ec6: d8          .   :2dc6[1]
    cli                                                               ; 3ec7: 58          X   :2dc7[1]
    rts                                                               ; 3ec8: 60          `   :2dc8[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea                            ; 3ec9: ea ea ea... ... :2dc9[1]

; &3ed0 referenced 1 time by &38ca[1]
.sub_c2dd0
    lda l2d63                                                         ; 3ed0: ad 63 2d    .c- :2dd0[1]
    clc                                                               ; 3ed3: 18          .   :2dd3[1]
    sei                                                               ; 3ed4: 78          x   :2dd4[1]
    sed                                                               ; 3ed5: f8          .   :2dd5[1]
    adc l2d65                                                         ; 3ed6: 6d 65 2d    me- :2dd6[1]
    sta l2d65                                                         ; 3ed9: 8d 65 2d    .e- :2dd9[1]
    lda l2d66                                                         ; 3edc: ad 66 2d    .f- :2ddc[1]
    adc l2d64                                                         ; 3edf: 6d 64 2d    md- :2ddf[1]
    sta l2d66                                                         ; 3ee2: 8d 66 2d    .f- :2de2[1]
    lda l2d67                                                         ; 3ee5: ad 67 2d    .g- :2de5[1]
    adc #0                                                            ; 3ee8: 69 00       i.  :2de8[1]
    sta l2d67                                                         ; 3eea: 8d 67 2d    .g- :2dea[1]
    cld                                                               ; 3eed: d8          .   :2ded[1]
    cli                                                               ; 3eee: 58          X   :2dee[1]
    lda #0                                                            ; 3eef: a9 00       ..  :2def[1]
    cmp l2d63                                                         ; 3ef1: cd 63 2d    .c- :2df1[1]
    bne c2dfb                                                         ; 3ef4: d0 05       ..  :2df4[1]
    cmp l2d64                                                         ; 3ef6: cd 64 2d    .d- :2df6[1]
    beq c2e5e                                                         ; 3ef9: f0 63       .c  :2df9[1]
; &3efb referenced 1 time by &2df4[1]
.c2dfb
    sta l2d63                                                         ; 3efb: 8d 63 2d    .c- :2dfb[1]
    sta l2d64                                                         ; 3efe: 8d 64 2d    .d- :2dfe[1]
; &3f01 referenced 1 time by &363d[1]
.sub_c2e01
    lda l2d67                                                         ; 3f01: ad 67 2d    .g- :2e01[1]
    lsr a                                                             ; 3f04: 4a          J   :2e04[1]
    lsr a                                                             ; 3f05: 4a          J   :2e05[1]
    lsr a                                                             ; 3f06: 4a          J   :2e06[1]
    lsr a                                                             ; 3f07: 4a          J   :2e07[1]
    sta l2d73                                                         ; 3f08: 8d 73 2d    .s- :2e08[1]
    lda l2d67                                                         ; 3f0b: ad 67 2d    .g- :2e0b[1]
    and #&0f                                                          ; 3f0e: 29 0f       ).  :2e0e[1]
    sta l2d72                                                         ; 3f10: 8d 72 2d    .r- :2e10[1]
    lda l2d66                                                         ; 3f13: ad 66 2d    .f- :2e13[1]
    lsr a                                                             ; 3f16: 4a          J   :2e16[1]
    lsr a                                                             ; 3f17: 4a          J   :2e17[1]
    lsr a                                                             ; 3f18: 4a          J   :2e18[1]
    lsr a                                                             ; 3f19: 4a          J   :2e19[1]
    sta l2d71                                                         ; 3f1a: 8d 71 2d    .q- :2e1a[1]
    lda l2d66                                                         ; 3f1d: ad 66 2d    .f- :2e1d[1]
    and #&0f                                                          ; 3f20: 29 0f       ).  :2e20[1]
    sta l2d70                                                         ; 3f22: 8d 70 2d    .p- :2e22[1]
    lda l2d65                                                         ; 3f25: ad 65 2d    .e- :2e25[1]
    lsr a                                                             ; 3f28: 4a          J   :2e28[1]
    lsr a                                                             ; 3f29: 4a          J   :2e29[1]
    lsr a                                                             ; 3f2a: 4a          J   :2e2a[1]
    lsr a                                                             ; 3f2b: 4a          J   :2e2b[1]
    sta l2d6f                                                         ; 3f2c: 8d 6f 2d    .o- :2e2c[1]
    lda l2d65                                                         ; 3f2f: ad 65 2d    .e- :2e2f[1]
    and #&0f                                                          ; 3f32: 29 0f       ).  :2e32[1]
    sta l2d6e                                                         ; 3f34: 8d 6e 2d    .n- :2e34[1]
    lda #&1f                                                          ; 3f37: a9 1f       ..  :2e37[1]
    jsr oswrch                                                        ; 3f39: 20 ee ff     .. :2e39[1]   ; Write character 31
    lda #&21 ; '!'                                                    ; 3f3c: a9 21       .!  :2e3c[1]
    jsr oswrch                                                        ; 3f3e: 20 ee ff     .. :2e3e[1]   ; Write character 33
    lda #&1e                                                          ; 3f41: a9 1e       ..  :2e41[1]
    jsr oswrch                                                        ; 3f43: 20 ee ff     .. :2e43[1]   ; Write character 30
    ldy #5                                                            ; 3f46: a0 05       ..  :2e46[1]
    ldx #&20 ; ' '                                                    ; 3f48: a2 20       .   :2e48[1]
; &3f4a referenced 1 time by &2e5c[1]
.loop_c2e4a
    lda l2d6e,y                                                       ; 3f4a: b9 6e 2d    .n- :2e4a[1]
    bne c2e53                                                         ; 3f4d: d0 04       ..  :2e4d[1]
    txa                                                               ; 3f4f: 8a          .   :2e4f[1]
    jmp c2e58                                                         ; 3f50: 4c 58 2e    LX. :2e50[1]

; &3f53 referenced 1 time by &2e4d[1]
.c2e53
    clc                                                               ; 3f53: 18          .   :2e53[1]
    adc #&30 ; '0'                                                    ; 3f54: 69 30       i0  :2e54[1]
    ldx #&30 ; '0'                                                    ; 3f56: a2 30       .0  :2e56[1]
; &3f58 referenced 1 time by &2e50[1]
.c2e58
    jsr oswrch                                                        ; 3f58: 20 ee ff     .. :2e58[1]   ; Write character
    dey                                                               ; 3f5b: 88          .   :2e5b[1]
    bpl loop_c2e4a                                                    ; 3f5c: 10 ec       ..  :2e5c[1]
; &3f5e referenced 1 time by &2df9[1]
.c2e5e
    rts                                                               ; 3f5e: 60          `   :2e5e[1]

    equb &ea, &ea                                                     ; 3f5f: ea ea       ..  :2e5f[1]

; &3f61 referenced 1 time by &28be[1]
.sub_c2e61
    inc l0079                                                         ; 3f61: e6 79       .y  :2e61[1]
    lda #9                                                            ; 3f63: a9 09       ..  :2e63[1]
    sta l007a                                                         ; 3f65: 85 7a       .z  :2e65[1]
    lda #5                                                            ; 3f67: a9 05       ..  :2e67[1]
    sta l0072                                                         ; 3f69: 85 72       .r  :2e69[1]
    sta l0073                                                         ; 3f6b: 85 73       .s  :2e6b[1]
; &3f6d referenced 1 time by &2e87[1]
.loop_c2e6d
    lda #&41 ; 'A'                                                    ; 3f6d: a9 41       .A  :2e6d[1]
    sta l007b                                                         ; 3f6f: 85 7b       .{  :2e6f[1]
    lda #&31 ; '1'                                                    ; 3f71: a9 31       .1  :2e71[1]
    sta l007c                                                         ; 3f73: 85 7c       .|  :2e73[1]
; &3f75 referenced 1 time by &2e7c[1]
.loop_c2e75
    jsr sub_c0f06                                                     ; 3f75: 20 06 0f     .. :2e75[1]
    inc l007b                                                         ; 3f78: e6 7b       .{  :2e78[1]
    dec l007c                                                         ; 3f7a: c6 7c       .|  :2e7a[1]
    bne loop_c2e75                                                    ; 3f7c: d0 f7       ..  :2e7c[1]
    lda l007a                                                         ; 3f7e: a5 7a       .z  :2e7e[1]
    clc                                                               ; 3f80: 18          .   :2e80[1]
    adc #&0a                                                          ; 3f81: 69 0a       i.  :2e81[1]
    sta l007a                                                         ; 3f83: 85 7a       .z  :2e83[1]
    dec l0072                                                         ; 3f85: c6 72       .r  :2e85[1]
    bne loop_c2e6d                                                    ; 3f87: d0 e4       ..  :2e87[1]
    lda #&4a ; 'J'                                                    ; 3f89: a9 4a       .J  :2e89[1]
    sta l007b                                                         ; 3f8b: 85 7b       .{  :2e8b[1]
; &3f8d referenced 1 time by &2ea7[1]
.loop_c2e8d
    lda #0                                                            ; 3f8d: a9 00       ..  :2e8d[1]
    sta l007a                                                         ; 3f8f: 85 7a       .z  :2e8f[1]
    lda #&32 ; '2'                                                    ; 3f91: a9 32       .2  :2e91[1]
    sta l007c                                                         ; 3f93: 85 7c       .|  :2e93[1]
; &3f95 referenced 1 time by &2e9c[1]
.loop_c2e95
    jsr sub_c0f06                                                     ; 3f95: 20 06 0f     .. :2e95[1]
    inc l007a                                                         ; 3f98: e6 7a       .z  :2e98[1]
    dec l007c                                                         ; 3f9a: c6 7c       .|  :2e9a[1]
    bne loop_c2e95                                                    ; 3f9c: d0 f7       ..  :2e9c[1]
    lda l007b                                                         ; 3f9e: a5 7b       .{  :2e9e[1]
    clc                                                               ; 3fa0: 18          .   :2ea0[1]
    adc #&0a                                                          ; 3fa1: 69 0a       i.  :2ea1[1]
    sta l007b                                                         ; 3fa3: 85 7b       .{  :2ea3[1]
    dec l0073                                                         ; 3fa5: c6 73       .s  :2ea5[1]
    bne loop_c2e8d                                                    ; 3fa7: d0 e4       ..  :2ea7[1]
    dec l0079                                                         ; 3fa9: c6 79       .y  :2ea9[1]
    rts                                                               ; 3fab: 60          `   :2eab[1]

; &3fac referenced 1 time by &28bb[1]
.sub_c2eac
    inc l0079                                                         ; 3fac: e6 79       .y  :2eac[1]
    lda #&35 ; '5'                                                    ; 3fae: a9 35       .5  :2eae[1]
    sta l007a                                                         ; 3fb0: 85 7a       .z  :2eb0[1]
    lda #&41 ; 'A'                                                    ; 3fb2: a9 41       .A  :2eb2[1]
    sta l007b                                                         ; 3fb4: 85 7b       .{  :2eb4[1]
    lda #&42 ; 'B'                                                    ; 3fb6: a9 42       .B  :2eb6[1]
    jsr sub_c1bcf                                                     ; 3fb8: 20 cf 1b     .. :2eb8[1]
    lda #&3b ; ';'                                                    ; 3fbb: a9 3b       .;  :2ebb[1]
    sta l007a                                                         ; 3fbd: 85 7a       .z  :2ebd[1]
    lda #&41 ; 'A'                                                    ; 3fbf: a9 41       .A  :2ebf[1]
    sta l007b                                                         ; 3fc1: 85 7b       .{  :2ec1[1]
    lda #&42 ; 'B'                                                    ; 3fc3: a9 42       .B  :2ec3[1]
    jsr sub_c1bcf                                                     ; 3fc5: 20 cf 1b     .. :2ec5[1]
    lda #5                                                            ; 3fc8: a9 05       ..  :2ec8[1]
    sta l007a                                                         ; 3fca: 85 7a       .z  :2eca[1]
    lda #&77 ; 'w'                                                    ; 3fcc: a9 77       .w  :2ecc[1]
    sta l007b                                                         ; 3fce: 85 7b       .{  :2ece[1]
    lda #&2b ; '+'                                                    ; 3fd0: a9 2b       .+  :2ed0[1]
    jsr sub_c1bdb                                                     ; 3fd2: 20 db 1b     .. :2ed2[1]
    lda #7                                                            ; 3fd5: a9 07       ..  :2ed5[1]
    jsr sub_c1bcf                                                     ; 3fd7: 20 cf 1b     .. :2ed7[1]
    lda #5                                                            ; 3fda: a9 05       ..  :2eda[1]
    sta l007a                                                         ; 3fdc: 85 7a       .z  :2edc[1]
    lda #&78 ; 'x'                                                    ; 3fde: a9 78       .x  :2ede[1]
    sta l007b                                                         ; 3fe0: 85 7b       .{  :2ee0[1]
    lda #6                                                            ; 3fe2: a9 06       ..  :2ee2[1]
    jsr sub_c1bcf                                                     ; 3fe4: 20 cf 1b     .. :2ee4[1]
    lda #&2c ; ','                                                    ; 3fe7: a9 2c       .,  :2ee7[1]
    jsr sub_c1bdb                                                     ; 3fe9: 20 db 1b     .. :2ee9[1]
    lda #0                                                            ; 3fec: a9 00       ..  :2eec[1]
    sta l007a                                                         ; 3fee: 85 7a       .z  :2eee[1]
    lda #&83                                                          ; 3ff0: a9 83       ..  :2ef0[1]
    sta l007b                                                         ; 3ff2: 85 7b       .{  :2ef2[1]
    lda #&3f ; '?'                                                    ; 3ff4: a9 3f       .?  :2ef4[1]
    jsr sub_c1bdb                                                     ; 3ff6: 20 db 1b     .. :2ef6[1]
    lda #&1a                                                          ; 3ff9: a9 1a       ..  :2ef9[1]
    sta l007a                                                         ; 3ffb: 85 7a       .z  :2efb[1]
    lda #&75 ; 'u'                                                    ; 3ffd: a9 75       .u  :2efd[1]
    sta l007b                                                         ; 3fff: 85 7b       .{  :2eff[1]
    jsr sub_c0f06                                                     ; 4001: 20 06 0f     .. :2f01[1]
    inc l007a                                                         ; 4004: e6 7a       .z  :2f04[1]
    jsr sub_c0f06                                                     ; 4006: 20 06 0f     .. :2f06[1]
    inc l007b                                                         ; 4009: e6 7b       .{  :2f09[1]
    jsr sub_c0f06                                                     ; 400b: 20 06 0f     .. :2f0b[1]
    dec l007a                                                         ; 400e: c6 7a       .z  :2f0e[1]
    jsr sub_c0f06                                                     ; 4010: 20 06 0f     .. :2f10[1]
    lda #&7f                                                          ; 4013: a9 7f       ..  :2f13[1]
    sta l007b                                                         ; 4015: 85 7b       .{  :2f15[1]
    jsr sub_c0f06                                                     ; 4017: 20 06 0f     .. :2f17[1]
    inc l007a                                                         ; 401a: e6 7a       .z  :2f1a[1]
    jsr sub_c0f06                                                     ; 401c: 20 06 0f     .. :2f1c[1]
    inc l007b                                                         ; 401f: e6 7b       .{  :2f1f[1]
    jsr sub_c0f06                                                     ; 4021: 20 06 0f     .. :2f21[1]
    dec l007a                                                         ; 4024: c6 7a       .z  :2f24[1]
    jsr sub_c0f06                                                     ; 4026: 20 06 0f     .. :2f26[1]
    lda #0                                                            ; 4029: a9 00       ..  :2f29[1]
    sta l007a                                                         ; 402b: 85 7a       .z  :2f2b[1]
    lda #&e7                                                          ; 402d: a9 e7       ..  :2f2d[1]
    sta l007b                                                         ; 402f: 85 7b       .{  :2f2f[1]
    lda #&3f ; '?'                                                    ; 4031: a9 3f       .?  :2f31[1]
    jsr sub_c1bdb                                                     ; 4033: 20 db 1b     .. :2f33[1]
    dec l0079                                                         ; 4036: c6 79       .y  :2f36[1]
    rts                                                               ; 4038: 60          `   :2f38[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 4039: ea ea ea... ... :2f39[1]

; &4045 referenced 1 time by &1aca[1]
.sub_c2f45
    inc l0079                                                         ; 4045: e6 79       .y  :2f45[1]
    lda l0f01                                                         ; 4047: ad 01 0f    ... :2f47[1]
    sta l007b                                                         ; 404a: 85 7b       .{  :2f4a[1]
    lda l0f00                                                         ; 404c: ad 00 0f    ... :2f4c[1]
    asl l007b                                                         ; 404f: 06 7b       .{  :2f4f[1]
    rol a                                                             ; 4051: 2a          *   :2f51[1]
    asl l007b                                                         ; 4052: 06 7b       .{  :2f52[1]
    rol a                                                             ; 4054: 2a          *   :2f54[1]
    asl l007b                                                         ; 4055: 06 7b       .{  :2f55[1]
    rol a                                                             ; 4057: 2a          *   :2f57[1]
    asl l007b                                                         ; 4058: 06 7b       .{  :2f58[1]
    rol a                                                             ; 405a: 2a          *   :2f5a[1]
    cmp l2d61                                                         ; 405b: cd 61 2d    .a- :2f5b[1]
    beq c2f9e                                                         ; 405e: f0 3e       .>  :2f5e[1]
    tay                                                               ; 4060: a8          .   :2f60[1]
    lda #&81                                                          ; 4061: a9 81       ..  :2f61[1]
    sec                                                               ; 4063: 38          8   :2f63[1]
    sbc l2d61                                                         ; 4064: ed 61 2d    .a- :2f64[1]
    sta l007b                                                         ; 4067: 85 7b       .{  :2f67[1]
    sty l2d61                                                         ; 4069: 8c 61 2d    .a- :2f69[1]
    lda #&36 ; '6'                                                    ; 406c: a9 36       .6  :2f6c[1]
    sta l007a                                                         ; 406e: 85 7a       .z  :2f6e[1]
    lda #5                                                            ; 4070: a9 05       ..  :2f70[1]
    sta l0088                                                         ; 4072: 85 88       ..  :2f72[1]
    sta l007c                                                         ; 4074: 85 7c       .|  :2f74[1]
; &4076 referenced 1 time by &2f84[1]
.loop_c2f76
    jsr sub_c0f0e                                                     ; 4076: 20 0e 0f     .. :2f76[1]
    inc l007b                                                         ; 4079: e6 7b       .{  :2f79[1]
    jsr sub_c0f0e                                                     ; 407b: 20 0e 0f     .. :2f7b[1]
    dec l007b                                                         ; 407e: c6 7b       .{  :2f7e[1]
    inc l007a                                                         ; 4080: e6 7a       .z  :2f80[1]
    dec l0088                                                         ; 4082: c6 88       ..  :2f82[1]
    bne loop_c2f76                                                    ; 4084: d0 f0       ..  :2f84[1]
    lda #&81                                                          ; 4086: a9 81       ..  :2f86[1]
    sec                                                               ; 4088: 38          8   :2f88[1]
    sbc l2d61                                                         ; 4089: ed 61 2d    .a- :2f89[1]
    sta l007b                                                         ; 408c: 85 7b       .{  :2f8c[1]
; &408e referenced 1 time by &2f9c[1]
.loop_c2f8e
    dec l007a                                                         ; 408e: c6 7a       .z  :2f8e[1]
    jsr sub_c0f06                                                     ; 4090: 20 06 0f     .. :2f90[1]
    inc l007b                                                         ; 4093: e6 7b       .{  :2f93[1]
    jsr sub_c0f06                                                     ; 4095: 20 06 0f     .. :2f95[1]
    dec l007b                                                         ; 4098: c6 7b       .{  :2f98[1]
    dec l007c                                                         ; 409a: c6 7c       .|  :2f9a[1]
    bne loop_c2f8e                                                    ; 409c: d0 f0       ..  :2f9c[1]
; &409e referenced 1 time by &2f5e[1]
.c2f9e
    lda l1928                                                         ; 409e: ad 28 19    .(. :2f9e[1]
    sta l007b                                                         ; 40a1: 85 7b       .{  :2fa1[1]
    lda l0f02                                                         ; 40a3: ad 02 0f    ... :2fa3[1]
    sec                                                               ; 40a6: 38          8   :2fa6[1]
    sbc #&7b ; '{'                                                    ; 40a7: e9 7b       .{  :2fa7[1]
    asl l007b                                                         ; 40a9: 06 7b       .{  :2fa9[1]
    rol a                                                             ; 40ab: 2a          *   :2fab[1]
    asl l007b                                                         ; 40ac: 06 7b       .{  :2fac[1]
    rol a                                                             ; 40ae: 2a          *   :2fae[1]
    cmp l2d62                                                         ; 40af: cd 62 2d    .b- :2faf[1]
    beq c300a                                                         ; 40b2: f0 56       .V  :2fb2[1]
    tay                                                               ; 40b4: a8          .   :2fb4[1]
    lda l2d62                                                         ; 40b5: ad 62 2d    .b- :2fb5[1]
    sty l2d62                                                         ; 40b8: 8c 62 2d    .b- :2fb8[1]
    cmp #&15                                                          ; 40bb: c9 15       ..  :2fbb[1]
    bcc c2fc7                                                         ; 40bd: 90 08       ..  :2fbd[1]
    sbc #3                                                            ; 40bf: e9 03       ..  :2fbf[1]
    cmp #&14                                                          ; 40c1: c9 14       ..  :2fc1[1]
    bcs c2fc7                                                         ; 40c3: b0 02       ..  :2fc3[1]
    lda #&14                                                          ; 40c5: a9 14       ..  :2fc5[1]
; &40c7 referenced 2 times by &2fbd[1], &2fc3[1]
.c2fc7
    clc                                                               ; 40c7: 18          .   :2fc7[1]
    adc #6                                                            ; 40c8: 69 06       i.  :2fc8[1]
    sta l007a                                                         ; 40ca: 85 7a       .z  :2fca[1]
    lda #&78 ; 'x'                                                    ; 40cc: a9 78       .x  :2fcc[1]
    sta l007b                                                         ; 40ce: 85 7b       .{  :2fce[1]
    lda #6                                                            ; 40d0: a9 06       ..  :2fd0[1]
    sta l0088                                                         ; 40d2: 85 88       ..  :2fd2[1]
    sta l007c                                                         ; 40d4: 85 7c       .|  :2fd4[1]
; &40d6 referenced 1 time by &2fe4[1]
.loop_c2fd6
    jsr sub_c0f0e                                                     ; 40d6: 20 0e 0f     .. :2fd6[1]
    inc l007a                                                         ; 40d9: e6 7a       .z  :2fd9[1]
    jsr sub_c0f0e                                                     ; 40db: 20 0e 0f     .. :2fdb[1]
    dec l007a                                                         ; 40de: c6 7a       .z  :2fde[1]
    inc l007b                                                         ; 40e0: e6 7b       .{  :2fe0[1]
    dec l0088                                                         ; 40e2: c6 88       ..  :2fe2[1]
    bne loop_c2fd6                                                    ; 40e4: d0 f0       ..  :2fe4[1]
    lda l2d62                                                         ; 40e6: ad 62 2d    .b- :2fe6[1]
    cmp #&15                                                          ; 40e9: c9 15       ..  :2fe9[1]
    bcc c2ff5                                                         ; 40eb: 90 08       ..  :2feb[1]
    sbc #3                                                            ; 40ed: e9 03       ..  :2fed[1]
    cmp #&14                                                          ; 40ef: c9 14       ..  :2fef[1]
    bcs c2ff5                                                         ; 40f1: b0 02       ..  :2ff1[1]
    lda #&14                                                          ; 40f3: a9 14       ..  :2ff3[1]
; &40f5 referenced 2 times by &2feb[1], &2ff1[1]
.c2ff5
    clc                                                               ; 40f5: 18          .   :2ff5[1]
    adc #6                                                            ; 40f6: 69 06       i.  :2ff6[1]
    sta l007a                                                         ; 40f8: 85 7a       .z  :2ff8[1]
; &40fa referenced 1 time by &3008[1]
.loop_c2ffa
    dec l007b                                                         ; 40fa: c6 7b       .{  :2ffa[1]
    jsr sub_c0f06                                                     ; 40fc: 20 06 0f     .. :2ffc[1]
    inc l007a                                                         ; 40ff: e6 7a       .z  :2fff[1]
    jsr sub_c0f06                                                     ; 4101: 20 06 0f     .. :3001[1]
    dec l007a                                                         ; 4104: c6 7a       .z  :3004[1]
    dec l007c                                                         ; 4106: c6 7c       .|  :3006[1]
    bne loop_c2ffa                                                    ; 4108: d0 f0       ..  :3008[1]
; &410a referenced 1 time by &2fb2[1]
.c300a
    dec l0079                                                         ; 410a: c6 79       .y  :300a[1]
    rts                                                               ; 410c: 60          `   :300c[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 410d: ea ea ea... ... :300d[1]

; &4119 referenced 3 times by &1415[1], &3189[1], &3862[1]
.sub_c3019
    inc l0079                                                         ; 4119: e6 79       .y  :3019[1]
    lda l0e4f                                                         ; 411b: ad 4f 0e    .O. :301b[1]
    sta l0e54                                                         ; 411e: 8d 54 0e    .T. :301e[1]
    ldx #0                                                            ; 4121: a2 00       ..  :3021[1]
; &4123 referenced 1 time by &313f[1]
.c3023
    stx l0075                                                         ; 4123: 86 75       .u  :3023[1]
    lda l0403,x                                                       ; 4125: bd 03 04    ... :3025[1]
    cmp #&60 ; '`'                                                    ; 4128: c9 60       .`  :3028[1]
    bcc c30a5                                                         ; 412a: 90 79       .y  :302a[1]
    cmp #&9f                                                          ; 412c: c9 9f       ..  :302c[1]
    bcs c30a5                                                         ; 412e: b0 75       .u  :302e[1]
    sta l007a                                                         ; 4130: 85 7a       .z  :3030[1]
    lda l0406,x                                                       ; 4132: bd 06 04    ... :3032[1]
    cmp #&60 ; '`'                                                    ; 4135: c9 60       .`  :3035[1]
    bcc c30a5                                                         ; 4137: 90 6c       .l  :3037[1]
    cmp #&9f                                                          ; 4139: c9 9f       ..  :3039[1]
    bcs c30a5                                                         ; 413b: b0 68       .h  :303b[1]
    adc #&a1                                                          ; 413d: 69 a1       i.  :303d[1]
    sta l007b                                                         ; 413f: 85 7b       .{  :303f[1]
    lda l007a                                                         ; 4141: a5 7a       .z  :3041[1]
    clc                                                               ; 4143: 18          .   :3043[1]
    adc #&a0                                                          ; 4144: 69 a0       i.  :3044[1]
    sta l007a                                                         ; 4146: 85 7a       .z  :3046[1]
    jsr sub_c0f0e                                                     ; 4148: 20 0e 0f     .. :3048[1]
    lda l007a                                                         ; 414b: a5 7a       .z  :304b[1]
    sec                                                               ; 414d: 38          8   :304d[1]
    sbc #&1d                                                          ; 414e: e9 1d       ..  :304e[1]
    bcc c30a5                                                         ; 4150: 90 53       .S  :3050[1]
    cmp #5                                                            ; 4152: c9 05       ..  :3052[1]
    bcs c30a5                                                         ; 4154: b0 4f       .O  :3054[1]
    tay                                                               ; 4156: a8          .   :3056[1]
    lda l007b                                                         ; 4157: a5 7b       .{  :3057[1]
    sec                                                               ; 4159: 38          8   :3059[1]
    sbc #&1e                                                          ; 415a: e9 1e       ..  :305a[1]
    bcc c30a5                                                         ; 415c: 90 47       .G  :305c[1]
    cmp #5                                                            ; 415e: c9 05       ..  :305e[1]
    bcs c30a5                                                         ; 4160: b0 43       .C  :3060[1]
    asl a                                                             ; 4162: 0a          .   :3062[1]
    sta l007b                                                         ; 4163: 85 7b       .{  :3063[1]
    asl a                                                             ; 4165: 0a          .   :3065[1]
    asl a                                                             ; 4166: 0a          .   :3066[1]
    adc l007b                                                         ; 4167: 65 7b       e{  :3067[1]
    sta l007b                                                         ; 4169: 85 7b       .{  :3069[1]
    ldx l0075                                                         ; 416b: a6 75       .u  :306b[1]
    lda l0405,x                                                       ; 416d: bd 05 04    ... :306d[1]
    lsr a                                                             ; 4170: 4a          J   :3070[1]
    lsr a                                                             ; 4171: 4a          J   :3071[1]
    lsr a                                                             ; 4172: 4a          J   :3072[1]
    lsr a                                                             ; 4173: 4a          J   :3073[1]
    lsr a                                                             ; 4174: 4a          J   :3074[1]
    clc                                                               ; 4175: 18          .   :3075[1]
    adc l007b                                                         ; 4176: 65 7b       e{  :3076[1]
    adc #&41 ; 'A'                                                    ; 4178: 69 41       iA  :3078[1]
    sta l007b                                                         ; 417a: 85 7b       .{  :307a[1]
    tya                                                               ; 417c: 98          .   :307c[1]
    asl a                                                             ; 417d: 0a          .   :307d[1]
    sta l007a                                                         ; 417e: 85 7a       .z  :307e[1]
    asl a                                                             ; 4180: 0a          .   :3080[1]
    asl a                                                             ; 4181: 0a          .   :3081[1]
    adc l007a                                                         ; 4182: 65 7a       ez  :3082[1]
    sta l007a                                                         ; 4184: 85 7a       .z  :3084[1]
    lda l0402,x                                                       ; 4186: bd 02 04    ... :3086[1]
    lsr a                                                             ; 4189: 4a          J   :3089[1]
    lsr a                                                             ; 418a: 4a          J   :308a[1]
    lsr a                                                             ; 418b: 4a          J   :308b[1]
    lsr a                                                             ; 418c: 4a          J   :308c[1]
    lsr a                                                             ; 418d: 4a          J   :308d[1]
    clc                                                               ; 418e: 18          .   :308e[1]
    adc l007a                                                         ; 418f: 65 7a       ez  :308f[1]
    sta l007a                                                         ; 4191: 85 7a       .z  :3091[1]
    jsr sub_c0f0e                                                     ; 4193: 20 0e 0f     .. :3093[1]
    inc l007a                                                         ; 4196: e6 7a       .z  :3096[1]
    jsr sub_c0f0e                                                     ; 4198: 20 0e 0f     .. :3098[1]
    inc l007b                                                         ; 419b: e6 7b       .{  :309b[1]
    jsr sub_c0f0e                                                     ; 419d: 20 0e 0f     .. :309d[1]
    dec l007a                                                         ; 41a0: c6 7a       .z  :30a0[1]
    jsr sub_c0f0e                                                     ; 41a2: 20 0e 0f     .. :30a2[1]
; &41a5 referenced 8 times by &302a[1], &302e[1], &3037[1], &303b[1], &3050[1], &3054[1], &305c[1], &3060[1]
.c30a5
    lda l0e56                                                         ; 41a5: ad 56 0e    .V. :30a5[1]
    beq c30b1                                                         ; 41a8: f0 07       ..  :30a8[1]
    ldx l0075                                                         ; 41aa: a6 75       .u  :30aa[1]
    lda l0489,x                                                       ; 41ac: bd 89 04    ... :30ac[1]
    bne c30b4                                                         ; 41af: d0 03       ..  :30af[1]
; &41b1 referenced 1 time by &30a8[1]
.c30b1
    jmp c3134                                                         ; 41b1: 4c 34 31    L41 :30b1[1]

; &41b4 referenced 1 time by &30af[1]
.c30b4
    lda l0483,x                                                       ; 41b4: bd 83 04    ... :30b4[1]
    cmp #&60 ; '`'                                                    ; 41b7: c9 60       .`  :30b7[1]
    bcc c3134                                                         ; 41b9: 90 79       .y  :30b9[1]
    cmp #&9f                                                          ; 41bb: c9 9f       ..  :30bb[1]
    bcs c3134                                                         ; 41bd: b0 75       .u  :30bd[1]
    sta l007a                                                         ; 41bf: 85 7a       .z  :30bf[1]
    lda l0486,x                                                       ; 41c1: bd 86 04    ... :30c1[1]
    cmp #&60 ; '`'                                                    ; 41c4: c9 60       .`  :30c4[1]
    bcc c3134                                                         ; 41c6: 90 6c       .l  :30c6[1]
    cmp #&9f                                                          ; 41c8: c9 9f       ..  :30c8[1]
    bcs c3134                                                         ; 41ca: b0 68       .h  :30ca[1]
    adc #&a1                                                          ; 41cc: 69 a1       i.  :30cc[1]
    sta l007b                                                         ; 41ce: 85 7b       .{  :30ce[1]
    lda l007a                                                         ; 41d0: a5 7a       .z  :30d0[1]
    clc                                                               ; 41d2: 18          .   :30d2[1]
    adc #&a0                                                          ; 41d3: 69 a0       i.  :30d3[1]
    sta l007a                                                         ; 41d5: 85 7a       .z  :30d5[1]
    jsr sub_c0f06                                                     ; 41d7: 20 06 0f     .. :30d7[1]
    lda l007a                                                         ; 41da: a5 7a       .z  :30da[1]
    sec                                                               ; 41dc: 38          8   :30dc[1]
    sbc #&1d                                                          ; 41dd: e9 1d       ..  :30dd[1]
    bcc c3134                                                         ; 41df: 90 53       .S  :30df[1]
    cmp #5                                                            ; 41e1: c9 05       ..  :30e1[1]
    bcs c3134                                                         ; 41e3: b0 4f       .O  :30e3[1]
    tay                                                               ; 41e5: a8          .   :30e5[1]
    lda l007b                                                         ; 41e6: a5 7b       .{  :30e6[1]
    sec                                                               ; 41e8: 38          8   :30e8[1]
    sbc #&1e                                                          ; 41e9: e9 1e       ..  :30e9[1]
    bcc c3134                                                         ; 41eb: 90 47       .G  :30eb[1]
    cmp #5                                                            ; 41ed: c9 05       ..  :30ed[1]
    bcs c3134                                                         ; 41ef: b0 43       .C  :30ef[1]
    asl a                                                             ; 41f1: 0a          .   :30f1[1]
    sta l007b                                                         ; 41f2: 85 7b       .{  :30f2[1]
    asl a                                                             ; 41f4: 0a          .   :30f4[1]
    asl a                                                             ; 41f5: 0a          .   :30f5[1]
    adc l007b                                                         ; 41f6: 65 7b       e{  :30f6[1]
    sta l007b                                                         ; 41f8: 85 7b       .{  :30f8[1]
    ldx l0075                                                         ; 41fa: a6 75       .u  :30fa[1]
    lda l0485,x                                                       ; 41fc: bd 85 04    ... :30fc[1]
    lsr a                                                             ; 41ff: 4a          J   :30ff[1]
    lsr a                                                             ; 4200: 4a          J   :3100[1]
    lsr a                                                             ; 4201: 4a          J   :3101[1]
    lsr a                                                             ; 4202: 4a          J   :3102[1]
    lsr a                                                             ; 4203: 4a          J   :3103[1]
    clc                                                               ; 4204: 18          .   :3104[1]
    adc l007b                                                         ; 4205: 65 7b       e{  :3105[1]
    adc #&41 ; 'A'                                                    ; 4207: 69 41       iA  :3107[1]
    sta l007b                                                         ; 4209: 85 7b       .{  :3109[1]
    tya                                                               ; 420b: 98          .   :310b[1]
    asl a                                                             ; 420c: 0a          .   :310c[1]
    sta l007a                                                         ; 420d: 85 7a       .z  :310d[1]
    asl a                                                             ; 420f: 0a          .   :310f[1]
    asl a                                                             ; 4210: 0a          .   :3110[1]
    adc l007a                                                         ; 4211: 65 7a       ez  :3111[1]
    sta l007a                                                         ; 4213: 85 7a       .z  :3113[1]
    lda l0482,x                                                       ; 4215: bd 82 04    ... :3115[1]
    lsr a                                                             ; 4218: 4a          J   :3118[1]
    lsr a                                                             ; 4219: 4a          J   :3119[1]
    lsr a                                                             ; 421a: 4a          J   :311a[1]
    lsr a                                                             ; 421b: 4a          J   :311b[1]
    lsr a                                                             ; 421c: 4a          J   :311c[1]
    clc                                                               ; 421d: 18          .   :311d[1]
    adc l007a                                                         ; 421e: 65 7a       ez  :311e[1]
    sta l007a                                                         ; 4220: 85 7a       .z  :3120[1]
    jsr sub_c0f06                                                     ; 4222: 20 06 0f     .. :3122[1]
    inc l007a                                                         ; 4225: e6 7a       .z  :3125[1]
    jsr sub_c0f06                                                     ; 4227: 20 06 0f     .. :3127[1]
    inc l007b                                                         ; 422a: e6 7b       .{  :312a[1]
    jsr sub_c0f06                                                     ; 422c: 20 06 0f     .. :312c[1]
    dec l007a                                                         ; 422f: c6 7a       .z  :312f[1]
    jsr sub_c0f06                                                     ; 4231: 20 06 0f     .. :3131[1]
; &4234 referenced 9 times by &30b1[1], &30b9[1], &30bd[1], &30c6[1], &30ca[1], &30df[1], &30e3[1], &30eb[1], &30ef[1]
.c3134
    lda l0075                                                         ; 4234: a5 75       .u  :3134[1]
    clc                                                               ; 4236: 18          .   :3136[1]
    adc #&0b                                                          ; 4237: 69 0b       i.  :3137[1]
    tax                                                               ; 4239: aa          .   :3139[1]
    dec l0e54                                                         ; 423a: ce 54 0e    .T. :313a[1]
    beq c3142                                                         ; 423d: f0 03       ..  :313d[1]
    jmp c3023                                                         ; 423f: 4c 23 30    L#0 :313f[1]

; &4242 referenced 1 time by &313d[1]
.c3142
    ldy #&1f                                                          ; 4242: a0 1f       ..  :3142[1]
    sty l007a                                                         ; 4244: 84 7a       .z  :3144[1]
    iny                                                               ; 4246: c8          .   :3146[1]   ; Y=&20
    sty l007b                                                         ; 4247: 84 7b       .{  :3147[1]
    jsr sub_c0f06                                                     ; 4249: 20 06 0f     .. :3149[1]
    dec l0079                                                         ; 424c: c6 79       .y  :314c[1]
    rts                                                               ; 424e: 60          `   :314e[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 424f: ea ea ea... ... :314f[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea                                 ; 425b: ea ea ea... ... :315b[1]

; &4261 referenced 1 time by &387d[1]
.sub_c3161
    lda l191f                                                         ; 4261: ad 1f 19    ... :3161[1]
    cmp #&3c ; '<'                                                    ; 4264: c9 3c       .<  :3164[1]
    bcs c316d                                                         ; 4266: b0 05       ..  :3166[1]
    lda l191e                                                         ; 4268: ad 1e 19    ... :3168[1]
    beq c31ce                                                         ; 426b: f0 61       .a  :316b[1]
; &426d referenced 1 time by &3166[1]
.c316d
    lda l2659                                                         ; 426d: ad 59 26    .Y& :316d[1]
    bne c31d3                                                         ; 4270: d0 61       .a  :3170[1]
    jsr sub_c2113                                                     ; 4272: 20 13 21     .! :3172[1]
    lda l1cd2                                                         ; 4275: ad d2 1c    ... :3175[1]
    and #&6c ; 'l'                                                    ; 4278: 29 6c       )l  :3178[1]
    bne c31cd                                                         ; 427a: d0 51       .Q  :317a[1]
; &427c referenced 1 time by &1ddd[1]
.sub_c317c
    lda l0e56                                                         ; 427c: ad 56 0e    .V. :317c[1]
    sta l265a                                                         ; 427f: 8d 5a 26    .Z& :317f[1]
    beq c318c                                                         ; 4282: f0 08       ..  :3182[1]
    lda #0                                                            ; 4284: a9 00       ..  :3184[1]
    sta l0e56                                                         ; 4286: 8d 56 0e    .V. :3186[1]
    jsr sub_c3019                                                     ; 4289: 20 19 30     .0 :3189[1]
; &428c referenced 1 time by &3182[1]
.c318c
    inc l0e56                                                         ; 428c: ee 56 0e    .V. :318c[1]
    lda l1cd1                                                         ; 428f: ad d1 1c    ... :318f[1]
    ora #&42 ; 'B'                                                    ; 4292: 09 42       .B  :3192[1]
    sta l2659                                                         ; 4294: 8d 59 26    .Y& :3194[1]
    lda #0                                                            ; 4297: a9 00       ..  :3197[1]
    sta l0086                                                         ; 4299: 85 86       ..  :3199[1]
    sta l0080                                                         ; 429b: 85 80       ..  :319b[1]
    lda #&d0                                                          ; 429d: a9 d0       ..  :319d[1]
    sta l0087                                                         ; 429f: 85 87       ..  :319f[1]
    lda #&59 ; 'Y'                                                    ; 42a1: a9 59       .Y  :31a1[1]
    sta l0081                                                         ; 42a3: 85 81       ..  :31a3[1]
    ldx #8                                                            ; 42a5: a2 08       ..  :31a5[1]
; &42a7 referenced 1 time by &31cb[1]
.c31a7
    ldy #&3f ; '?'                                                    ; 42a7: a0 3f       .?  :31a7[1]
; &42a9 referenced 1 time by &31ae[1]
.loop_c31a9
    lda (l0086),y                                                     ; 42a9: b1 86       ..  :31a9[1]
    sta (l0080),y                                                     ; 42ab: 91 80       ..  :31ab[1]
    dey                                                               ; 42ad: 88          .   :31ad[1]
    bpl loop_c31a9                                                    ; 42ae: 10 f9       ..  :31ae[1]
    lda l0080                                                         ; 42b0: a5 80       ..  :31b0[1]
    clc                                                               ; 42b2: 18          .   :31b2[1]
    adc #&40 ; '@'                                                    ; 42b3: 69 40       i@  :31b3[1]
    sta l0080                                                         ; 42b5: 85 80       ..  :31b5[1]
    lda l0081                                                         ; 42b7: a5 81       ..  :31b7[1]
    adc #1                                                            ; 42b9: 69 01       i.  :31b9[1]
    sta l0081                                                         ; 42bb: 85 81       ..  :31bb[1]
    lda l0086                                                         ; 42bd: a5 86       ..  :31bd[1]
    clc                                                               ; 42bf: 18          .   :31bf[1]
    adc #&40 ; '@'                                                    ; 42c0: 69 40       i@  :31c0[1]
    sta l0086                                                         ; 42c2: 85 86       ..  :31c2[1]
    lda l0087                                                         ; 42c4: a5 87       ..  :31c4[1]
    adc #1                                                            ; 42c6: 69 01       i.  :31c6[1]
    sta l0087                                                         ; 42c8: 85 87       ..  :31c8[1]
    dex                                                               ; 42ca: ca          .   :31ca[1]
    bne c31a7                                                         ; 42cb: d0 da       ..  :31cb[1]
; &42cd referenced 1 time by &317a[1]
.c31cd
    rts                                                               ; 42cd: 60          `   :31cd[1]

; &42ce referenced 1 time by &316b[1]
.c31ce
    lda l2659                                                         ; 42ce: ad 59 26    .Y& :31ce[1]
    beq c3204                                                         ; 42d1: f0 31       .1  :31d1[1]
; &42d3 referenced 1 time by &3170[1]
.c31d3
    dec l2659                                                         ; 42d3: ce 59 26    .Y& :31d3[1]
    beq c3205                                                         ; 42d6: f0 2d       .-  :31d6[1]
    lda #0                                                            ; 42d8: a9 00       ..  :31d8[1]
    sta l0080                                                         ; 42da: 85 80       ..  :31da[1]
    lda #&59 ; 'Y'                                                    ; 42dc: a9 59       .Y  :31dc[1]
    sta l0081                                                         ; 42de: 85 81       ..  :31de[1]
    ldx #8                                                            ; 42e0: a2 08       ..  :31e0[1]
; &42e2 referenced 1 time by &31fd[1]
.loop_c31e2
    ldy #&3f ; '?'                                                    ; 42e2: a0 3f       .?  :31e2[1]
; &42e4 referenced 1 time by &31ed[1]
.loop_c31e4
    lda (l0080),y                                                     ; 42e4: b1 80       ..  :31e4[1]
    eor l007b                                                         ; 42e6: 45 7b       E{  :31e6[1]
    sta (l0080),y                                                     ; 42e8: 91 80       ..  :31e8[1]
    sta l007b                                                         ; 42ea: 85 7b       .{  :31ea[1]
    dey                                                               ; 42ec: 88          .   :31ec[1]
    bpl loop_c31e4                                                    ; 42ed: 10 f5       ..  :31ed[1]
    lda l0080                                                         ; 42ef: a5 80       ..  :31ef[1]
    clc                                                               ; 42f1: 18          .   :31f1[1]
    adc #&40 ; '@'                                                    ; 42f2: 69 40       i@  :31f2[1]
    sta l0080                                                         ; 42f4: 85 80       ..  :31f4[1]
    lda l0081                                                         ; 42f6: a5 81       ..  :31f6[1]
    adc #1                                                            ; 42f8: 69 01       i.  :31f8[1]
    sta l0081                                                         ; 42fa: 85 81       ..  :31fa[1]
    dex                                                               ; 42fc: ca          .   :31fc[1]
    bne loop_c31e2                                                    ; 42fd: d0 e3       ..  :31fd[1]
    lda l007b                                                         ; 42ff: a5 7b       .{  :31ff[1]
    sta l593f                                                         ; 4301: 8d 3f 59    .?Y :3201[1]
; &4304 referenced 2 times by &31d1[1], &3233[1]
.c3204
    rts                                                               ; 4304: 60          `   :3204[1]

; &4305 referenced 1 time by &31d6[1]
.c3205
    lda #0                                                            ; 4305: a9 00       ..  :3205[1]
    sta l0080                                                         ; 4307: 85 80       ..  :3207[1]
    lda #&59 ; 'Y'                                                    ; 4309: a9 59       .Y  :3209[1]
    sta l0081                                                         ; 430b: 85 81       ..  :320b[1]
    ldx #8                                                            ; 430d: a2 08       ..  :320d[1]
; &430f referenced 1 time by &3226[1]
.loop_c320f
    ldy #&3f ; '?'                                                    ; 430f: a0 3f       .?  :320f[1]
    lda #0                                                            ; 4311: a9 00       ..  :3211[1]
; &4313 referenced 1 time by &3216[1]
.loop_c3213
    sta (l0080),y                                                     ; 4313: 91 80       ..  :3213[1]
    dey                                                               ; 4315: 88          .   :3215[1]
    bpl loop_c3213                                                    ; 4316: 10 fb       ..  :3216[1]
    lda l0080                                                         ; 4318: a5 80       ..  :3218[1]
    clc                                                               ; 431a: 18          .   :321a[1]
    adc #&40 ; '@'                                                    ; 431b: 69 40       i@  :321b[1]
    sta l0080                                                         ; 431d: 85 80       ..  :321d[1]
    lda l0081                                                         ; 431f: a5 81       ..  :321f[1]
    adc #1                                                            ; 4321: 69 01       i.  :3221[1]
    sta l0081                                                         ; 4323: 85 81       ..  :3223[1]
    dex                                                               ; 4325: ca          .   :3225[1]
    bne loop_c320f                                                    ; 4326: d0 e7       ..  :3226[1]
    lda #0                                                            ; 4328: a9 00       ..  :3228[1]
    sta l0e56                                                         ; 432a: 8d 56 0e    .V. :322a[1]
    jsr c142b                                                         ; 432d: 20 2b 14     +. :322d[1]
    lda l265a                                                         ; 4330: ad 5a 26    .Z& :3230[1]
    bne c3204                                                         ; 4333: d0 cf       ..  :3233[1]
    jsr c1408                                                         ; 4335: 20 08 14     .. :3235[1]
    rts                                                               ; 4338: 60          `   :3238[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 4339: ea ea ea... ... :3239[1]
    equb &ea, &ea, &ea, &ea, &bd, &88,   4, &29, &10, &d0, &16, &bd   ; 4345: ea ea ea... ... :3245[1]
    equb &83,   4, &c9, &7f, &d0, &3b, &bd, &86,   4, &c9, &7e, &d0   ; 4351: 83 04 c9... ... :3251[1]
    equb &34, &bd, &88,   4,   9, &10, &9d, &88,   4, &a9,   4, &8d   ; 435d: 34 bd 88... 4.. :325d[1]
    equb &81                                                          ; 4369: 81          .   :3269[1]
    equs "* :,"                                                       ; 436a: 2a 20 3a... * : :326a[1]
    equb &bd, &80, 4, &d0, &0b                                        ; 436e: bd 80 04... ... :326e[1]
    equs " a+"                                                        ; 4373: 20 61 2b     a+ :3273[1]
    equb &d0, &36, &20, &cc, &26, &4c, &d2                            ; 4376: d0 36 20... .6  :3276[1]
    equs "6 G+"                                                       ; 437d: 36 20 47... 6 G :327d[1]
    equb &a5, &76, &c9, &80, &90, &27, &bd, &88,   4, &29, &ef, &9d   ; 4381: a5 76 c9... .v. :3281[1]
    equb &88,   4, &4c, &d2, &36, &bd, &83,   4, &85, &77, &bd, &86   ; 438d: 88 04 4c... ..L :328d[1]
    equb   4, &18, &69,   1, &85                                      ; 4399: 04 18 69... ..i :3299[1]
    equs "v ^+"                                                       ; 439e: 76 20 5e... v ^ :329e[1]
    equb &ad, &81, &2a, &18, &69, &0a, &8d, &81                       ; 43a2: ad 81 2a... ..* :32a2[1]
    equs "* :,L"                                                      ; 43aa: 2a 20 3a... * : :32aa[1]
    equb &d2, &36, &bd, &80,   4, &d0, &2f, &20, 1, &2b, &c9, &40     ; 43af: d2 36 bd... .6. :32af[1]
    equb &90, &25, &ad,   1, &0f, &85, &7a, &ad, 0, &0f,   6, &7a     ; 43bb: 90 25 ad... .%. :32bb[1]
    equb &2a, &85, &7b,   6                                           ; 43c7: 2a 85 7b... *.{ :32c7[1]
    equs "z*e{"                                                       ; 43cb: 7a 2a 65... z*e :32cb[1]
    equb &cd, &81, &2a, &b0, 3, &8d, &81                              ; 43cf: cd 81 2a... ..* :32cf[1]
    equs "* a+"                                                       ; 43d6: 2a 20 61... * a :32d6[1]
    equb &d0, &0c, &20, &cc, &26, &4c, &e8, &32, &4c, &8d             ; 43da: d0 0c 20... ..  :32da[1]
    equs "3 G+ :,L"                                                   ; 43e4: 33 20 47... 3 G :32e4[1]
    equb &d2, &36, &bd, &80, 4, &d0                                   ; 43ec: d2 36 bd... .6. :32ec[1]
    equs '"', " &+"                                                   ; 43f2: 22 20 26... " & :32f2[1]
    equb &c9, &46, &90, &12, &c9, &6e, &b0, &11                       ; 43f6: c9 46 90... .F. :32f6[1]
    equs " ), a+"                                                     ; 43fe: 20 29 2c...  ), :32fe[1]
    equb &d0, &15, &20, &cc, &26, &4c, &1b, &33, &4c, &8d             ; 4404: d0 15 20... ..  :3304[1]
    equs "3 a+L"                                                      ; 440e: 33 20 61... 3 a :330e[1]
    equb &18                                                          ; 4413: 18          .   :3313[1]
    equs "3 G+ :,L"                                                   ; 4414: 33 20 47... 3 G :3314[1]
    equb &d2, &36, &bd, &80, 4, &d0, &15                              ; 441c: d2 36 bd... .6. :331c[1]
    equs " a+"                                                        ; 4423: 20 61 2b     a+ :3323[1]
    equb &d0, 3, &20, &cc                                             ; 4426: d0 03 20... ..  :3326[1]
    equs "& &+"                                                       ; 442a: 26 20 26... & & :332a[1]
    equb &c9, &78, &b0, &0c                                           ; 442e: c9 78 b0... .x. :332e[1]
    equs " ),L"                                                       ; 4432: 20 29 2c...  ), :3332[1]
    equb &d2                                                          ; 4436: d2          .   :3336[1]
    equs "6 G+ :,L"                                                   ; 4437: 36 20 47... 6 G :3337[1]
    equb &d2, &36, &bd, &80, 4, &d0, &1b                              ; 443f: d2 36 bd... .6. :333f[1]
    equs " &+"                                                        ; 4446: 20 26 2b     &+ :3346[1]
    equb &c9, &64, &90, 6                                             ; 4449: c9 64 90... .d. :3349[1]
    equs " :,LV3 ), a+"                                               ; 444d: 20 3a 2c...  :, :334d[1]
    equb &d0, 9, &20, &cc, &26, &4c, &d2                              ; 4459: d0 09 20... ..  :3359[1]
    equs "6 G+ :,L"                                                   ; 4460: 36 20 47... 6 G :3360[1]
    equb &d2, &36, &bd, &80, 4, &d0, &15                              ; 4468: d2 36 bd... .6. :3368[1]
    equs " &+"                                                        ; 446f: 20 26 2b     &+ :336f[1]
    equb &c9, &50, &90, &0b                                           ; 4472: c9 50 90... .P. :3372[1]
    equs " a+"                                                        ; 4476: 20 61 2b     a+ :3376[1]
    equb &d0, &0c, &20, &cc, &26, &4c, &87, &33, &4c, &8d             ; 4479: d0 0c 20... ..  :3379[1]
    equs "3 G+ :,L"                                                   ; 4483: 33 20 47... 3 G :3383[1]
    equb &d2, &36, &bd, &88, 4, 9, &80, &9d, &88, 4, &20, &cf         ; 448b: d2 36 bd... .6. :338b[1]
    equs "+ :,L"                                                      ; 4497: 2b 20 3a... + : :3397[1]
    equb &d2, &36, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 449c: d2 36 ff... .6. :339c[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                  ; 44a8: ff ff ff... ... :33a8[1]
; &44b1 referenced 1 time by &3476[1]
.l33b1
    equb &0f, &0d, &0b, 9, 7, 5, 3, 2                                 ; 44b1: 0f 0d 0b... ... :33b1[1]
; &44b9 referenced 3 times by &346d[1], &34f7[1], &37f5[1]
.l33b9
    equb 0                                                            ; 44b9: 00          .   :33b9[1]
; &44ba referenced 4 times by &3428[1], &3814[1], &4650[1], &465c[1]
.l33ba
    equb 0                                                            ; 44ba: 00          .   :33ba[1]
; &44bb referenced 1 time by &3438[1]
.l33bb
    equb 0                                                            ; 44bb: 00          .   :33bb[1]
; &44bc referenced 1 time by &344b[1]
.l33bc
    equb 0                                                            ; 44bc: 00          .   :33bc[1]
; &44bd referenced 1 time by &345d[1]
.l33bd
    equb 0, 0, 0                                                      ; 44bd: 00 00 00    ... :33bd[1]
; &44c0 referenced 1 time by &4659[1]
.l33c0
    equb &ec, &f2, &0f, &17, 0, 0                                     ; 44c0: ec f2 0f... ... :33c0[1]
; &44c6 referenced 1 time by &4653[1]
.l33c6
    equb &20, 4, &b8, &ff, 0, 0                                       ; 44c6: 20 04 b8...  .. :33c6[1]
; &44cc referenced 1 time by &3811[1]
.l33cc
    equb &c0, &82, 4, 2, 0, 0                                         ; 44cc: c0 82 04... ... :33cc[1]

; &44d2 referenced 2 times by &1726[1], &361c[1]
.sub_c33d2
    lda #&ff                                                          ; 44d2: a9 ff       ..  :33d2[1]
    sta l0489,x                                                       ; 44d4: 9d 89 04    ... :33d4[1]
    ldy l0e54                                                         ; 44d7: ac 54 0e    .T. :33d7[1]
    lda #0                                                            ; 44da: a9 00       ..  :33da[1]
    sta l1ce1,y                                                       ; 44dc: 99 e1 1c    ... :33dc[1]
    sta l0488,x                                                       ; 44df: 9d 88 04    ... :33df[1]
    jsr sub_c2113                                                     ; 44e2: 20 13 21     .! :33e2[1]
    lda l1cd2                                                         ; 44e5: ad d2 1c    ... :33e5[1]
    and #&0f                                                          ; 44e8: 29 0f       ).  :33e8[1]
    sta l0409,x                                                       ; 44ea: 9d 09 04    ... :33ea[1]
    ldy #&5f ; '_'                                                    ; 44ed: a0 5f       ._  :33ed[1]
    lda l1cd2                                                         ; 44ef: ad d2 1c    ... :33ef[1]
    bpl c33f6                                                         ; 44f2: 10 02       ..  :33f2[1]
    ldy #&9f                                                          ; 44f4: a0 9f       ..  :33f4[1]
; &44f6 referenced 1 time by &33f2[1]
.c33f6
    sty l007a                                                         ; 44f6: 84 7a       .z  :33f6[1]
    lda l1cd1                                                         ; 44f8: ad d1 1c    ... :33f8[1]
    and #&1f                                                          ; 44fb: 29 1f       ).  :33fb[1]
    clc                                                               ; 44fd: 18          .   :33fd[1]
    adc #&70 ; 'p'                                                    ; 44fe: 69 70       ip  :33fe[1]
    tay                                                               ; 4500: a8          .   :3400[1]
    lda l1cd2                                                         ; 4501: ad d2 1c    ... :3401[1]
    asl a                                                             ; 4504: 0a          .   :3404[1]
    bpl c340c                                                         ; 4505: 10 05       ..  :3405[1]
    tya                                                               ; 4507: 98          .   :3407[1]
    ldy l007a                                                         ; 4508: a4 7a       .z  :3408[1]
    sta l007a                                                         ; 450a: 85 7a       .z  :340a[1]
; &450c referenced 1 time by &3405[1]
.c340c
    tya                                                               ; 450c: 98          .   :340c[1]
    sta l0483,x                                                       ; 450d: 9d 83 04    ... :340d[1]
    sta l0077                                                         ; 4510: 85 77       .w  :3410[1]
    lda l007a                                                         ; 4512: a5 7a       .z  :3412[1]
    sta l0486,x                                                       ; 4514: 9d 86 04    ... :3414[1]
    sta l0076                                                         ; 4517: 85 76       .v  :3417[1]
    jsr sub_c2758                                                     ; 4519: 20 58 27     X' :3419[1]
    clc                                                               ; 451c: 18          .   :341c[1]
    adc #&10                                                          ; 451d: 69 10       i.  :341d[1]
    asl a                                                             ; 451f: 0a          .   :341f[1]
    asl a                                                             ; 4520: 0a          .   :3420[1]
    asl a                                                             ; 4521: 0a          .   :3421[1]
    sta l0487,x                                                       ; 4522: 9d 87 04    ... :3422[1]
    jsr sub_c2113                                                     ; 4525: 20 13 21     .! :3425[1]
    lda l33ba                                                         ; 4528: ad ba 33    ..3 :3428[1]
    cmp l1cd2                                                         ; 452b: cd d2 1c    ... :342b[1]
    bcc c3438                                                         ; 452e: 90 08       ..  :342e[1]
    lda l0409,x                                                       ; 4530: bd 09 04    ... :3430[1]
    ora #&40 ; '@'                                                    ; 4533: 09 40       .@  :3433[1]
    sta l0409,x                                                       ; 4535: 9d 09 04    ... :3435[1]
; &4538 referenced 1 time by &342e[1]
.c3438
    lda l33bb                                                         ; 4538: ad bb 33    ..3 :3438[1]
    cmp l1cd1                                                         ; 453b: cd d1 1c    ... :343b[1]
    bcc c3448                                                         ; 453e: 90 08       ..  :343e[1]
    lda l0409,x                                                       ; 4540: bd 09 04    ... :3440[1]
    ora #&20 ; ' '                                                    ; 4543: 09 20       .   :3443[1]
    sta l0409,x                                                       ; 4545: 9d 09 04    ... :3445[1]
; &4548 referenced 1 time by &343e[1]
.c3448
    jsr sub_c2113                                                     ; 4548: 20 13 21     .! :3448[1]
    lda l33bc                                                         ; 454b: ad bc 33    ..3 :344b[1]
    cmp l1cd1                                                         ; 454e: cd d1 1c    ... :344e[1]
    bcc c345b                                                         ; 4551: 90 08       ..  :3451[1]
    lda l0409,x                                                       ; 4553: bd 09 04    ... :3453[1]
    ora #&10                                                          ; 4556: 09 10       ..  :3456[1]
    sta l0409,x                                                       ; 4558: 9d 09 04    ... :3458[1]
; &455b referenced 1 time by &3451[1]
.c345b
    ldy #0                                                            ; 455b: a0 00       ..  :345b[1]
    lda l33bd                                                         ; 455d: ad bd 33    ..3 :345d[1]
    cmp l1cd2                                                         ; 4560: cd d2 1c    ... :3460[1]
    bcc c3466                                                         ; 4563: 90 01       ..  :3463[1]
    iny                                                               ; 4565: c8          .   :3465[1]   ; Y=&01
; &4566 referenced 1 time by &3463[1]
.c3466
    tya                                                               ; 4566: 98          .   :3466[1]
    sta l040a,x                                                       ; 4567: 9d 0a 04    ... :3467[1]
    jsr sub_c2113                                                     ; 456a: 20 13 21     .! :346a[1]
    ldy l33b9                                                         ; 456d: ac b9 33    ..3 :346d[1]
    cpy #8                                                            ; 4570: c0 08       ..  :3470[1]
    bcc c3476                                                         ; 4572: 90 02       ..  :3472[1]
    ldy #7                                                            ; 4574: a0 07       ..  :3474[1]
; &4576 referenced 1 time by &3472[1]
.c3476
    lda l33b1,y                                                       ; 4576: b9 b1 33    ..3 :3476[1]
    sta l007a                                                         ; 4579: 85 7a       .z  :3479[1]
    ldy #4                                                            ; 457b: a0 04       ..  :347b[1]
    lda #0                                                            ; 457d: a9 00       ..  :347d[1]
; &457f referenced 1 time by &3489[1]
.loop_c347f
    lsr l007a                                                         ; 457f: 46 7a       Fz  :347f[1]
    bcc c3487                                                         ; 4581: 90 04       ..  :3481[1]
    clc                                                               ; 4583: 18          .   :3483[1]
    adc l1cd2                                                         ; 4584: 6d d2 1c    m.. :3484[1]
; &4587 referenced 1 time by &3481[1]
.c3487
    ror a                                                             ; 4587: 6a          j   :3487[1]
    dey                                                               ; 4588: 88          .   :3488[1]
    bne loop_c347f                                                    ; 4589: d0 f4       ..  :3489[1]
    clc                                                               ; 458b: 18          .   :348b[1]
    adc #&10                                                          ; 458c: 69 10       i.  :348c[1]
    and #&f0                                                          ; 458e: 29 f0       ).  :348e[1]
    sta l048a,x                                                       ; 4590: 9d 8a 04    ... :3490[1]
    lda #1                                                            ; 4593: a9 01       ..  :3493[1]
    sta l0480,x                                                       ; 4595: 9d 80 04    ... :3495[1]
    lda #&ff                                                          ; 4598: a9 ff       ..  :3498[1]
    sta l0408,x                                                       ; 459a: 9d 08 04    ... :349a[1]
    rts                                                               ; 459d: 60          `   :349d[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 459e: ea ea ea... ... :349e[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea                                 ; 45aa: ea ea ea... ... :34aa[1]
; &45b0 referenced 3 times by &34f4[1], &3578[1], &37f8[1]
.l34b0
    equb 0                                                            ; 45b0: 00          .   :34b0[1]
; &45b1 referenced 8 times by &34fa[1], &3504[1], &35c3[1], &35e6[1], &37fd[1], &3baa[1], &3bb9[1], &3c47[1]
.l34b1
    equb 0                                                            ; 45b1: 00          .   :34b1[1]
; &45b2 referenced 1 time by &36b0[1]
.l34b2
    equb 1                                                            ; 45b2: 01          .   :34b2[1]
; &45b3 referenced 1 time by &3654[1]
.l34b3
    equb 4                                                            ; 45b3: 04          .   :34b3[1]
; &45b4 referenced 3 times by &364f[1], &3657[1], &36a0[1]
.l34b4
    equb 0                                                            ; 45b4: 00          .   :34b4[1]
; &45b5 referenced 1 time by &38a0[1]
.l34b5
    equb &0c                                                          ; 45b5: 0c          .   :34b5[1]
; &45b6 referenced 1 time by &389a[1]
.l34b6
    equb 3                                                            ; 45b6: 03          .   :34b6[1]
; &45b7 referenced 2 times by &3895[1], &389d[1]
.l34b7
    equb 3                                                            ; 45b7: 03          .   :34b7[1]
; &45b8 referenced 1 time by &38d6[1]
.l34b8
    equb &14                                                          ; 45b8: 14          .   :34b8[1]
; &45b9 referenced 1 time by &3809[1]
.l34b9
    equb &11                                                          ; 45b9: 11          .   :34b9[1]
; &45ba referenced 1 time by &4665[1]
.l34ba
    equb 1                                                            ; 45ba: 01          .   :34ba[1]
; &45bb referenced 1 time by &466b[1]
.l34bb
    equb &fe                                                          ; 45bb: fe          .   :34bb[1]
; &45bc referenced 1 time by &38ad[1]
.l34bc
    equb 4, &ea, &ea, &ea                                             ; 45bc: 04 ea ea... ... :34bc[1]
; &45c0 referenced 1 time by &35f9[1]
.l34c0
    equs "DEHCNUAL"                                                   ; 45c0: 44 45 48... DEH :34c0[1]
    equb &19, &20, &1f                                                ; 45c8: 19 20 1f    . . :34c8[1]
    equs "ELUSPAC"                                                    ; 45cb: 45 4c 55... ELU :34cb[1]
    equb &18, &20, &1f                                                ; 45d2: 18 20 1f    . . :34d2[1]
    equs "EPACSE"                                                     ; 45d5: 45 50 41... EPA :34d5[1]
    equb &17, &20, &1f                                                ; 45db: 17 20 1f    . . :34db[1]
; &45de referenced 1 time by &35d4[1]
.l34de
    equb 0, &81, 4                                                    ; 45de: 00 81 04    ... :34de[1]
; &45e1 referenced 1 time by &35cf[1]
.l34e1
    equb &6f, 4, &19                                                  ; 45e1: 6f 04 19    o.. :34e1[1]
; &45e4 referenced 1 time by &35b8[1]
.l34e4
    equs "DNAMMOC"                                                    ; 45e4: 44 4e 41... DNA :34e4[1]
    equb 5, 0, &a2, 4, &0f, 4, &19, &ea, &ea                          ; 45eb: 05 00 a2... ... :34eb[1]

; &45f4 referenced 2 times by &381a[1], &467e[1]
.sub_c34f4
    inc l34b0                                                         ; 45f4: ee b0 34    ..4 :34f4[1]
    inc l33b9                                                         ; 45f7: ee b9 33    ..3 :34f7[1]
    lda l34b1                                                         ; 45fa: ad b1 34    ..4 :34fa[1]
    clc                                                               ; 45fd: 18          .   :34fd[1]
    sei                                                               ; 45fe: 78          x   :34fe[1]
    sed                                                               ; 45ff: f8          .   :34ff[1]
    adc #1                                                            ; 4600: 69 01       i.  :3500[1]
    cld                                                               ; 4602: d8          .   :3502[1]
    cli                                                               ; 4603: 58          X   :3503[1]
    sta l34b1                                                         ; 4604: 8d b1 34    ..4 :3504[1]
    lda #0                                                            ; 4607: a9 00       ..  :3507[1]
    sta l1cc9                                                         ; 4609: 8d c9 1c    ... :3509[1]
    sta l1cd8                                                         ; 460c: 8d d8 1c    ... :350c[1]
    sta l2890                                                         ; 460f: 8d 90 28    ..( :350f[1]
    sta l2d64                                                         ; 4612: 8d 64 2d    .d- :3512[1]
    sta l2d63                                                         ; 4615: 8d 63 2d    .c- :3515[1]
    sta l191e                                                         ; 4618: 8d 1e 19    ... :3518[1]
    sta l191f                                                         ; 461b: 8d 1f 19    ... :351b[1]
    sta l1922                                                         ; 461e: 8d 22 19    .". :351e[1]
    sta l192c                                                         ; 4621: 8d 2c 19    .,. :3521[1]
    sta l1931                                                         ; 4624: 8d 31 19    .1. :3524[1]
    sta l2d61                                                         ; 4627: 8d 61 2d    .a- :3527[1]
    sta l2d62                                                         ; 462a: 8d 62 2d    .b- :352a[1]
    sta l0f01                                                         ; 462d: 8d 01 0f    ... :352d[1]
    sta l0f03                                                         ; 4630: 8d 03 0f    ... :3530[1]
    sta l0f04                                                         ; 4633: 8d 04 0f    ... :3533[1]
    sta l0f05                                                         ; 4636: 8d 05 0f    ... :3536[1]
    sta l0e33                                                         ; 4639: 8d 33 0e    .3. :3539[1]
    sta l193a                                                         ; 463c: 8d 3a 19    .:. :353c[1]
    sta l25f1                                                         ; 463f: 8d f1 25    ..% :353f[1]
    sta l25f2                                                         ; 4642: 8d f2 25    ..% :3542[1]
    lda #4                                                            ; 4645: a9 04       ..  :3545[1]
    sta l0f00                                                         ; 4647: 8d 00 0f    ... :3547[1]
    lda #1                                                            ; 464a: a9 01       ..  :354a[1]
    sta l2659                                                         ; 464c: 8d 59 26    .Y& :354c[1]
    sta l265a                                                         ; 464f: 8d 5a 26    .Z& :354f[1]
    lda #&80                                                          ; 4652: a9 80       ..  :3552[1]
    sta l0e32                                                         ; 4654: 8d 32 0e    .2. :3554[1]
    sta l0f02                                                         ; 4657: 8d 02 0f    ... :3557[1]
    sta l1928                                                         ; 465a: 8d 28 19    .(. :355a[1]
    sta l1924                                                         ; 465d: 8d 24 19    .$. :355d[1]
    lda #&0c                                                          ; 4660: a9 0c       ..  :3560[1]
    sta l191d                                                         ; 4662: 8d 1d 19    ... :3562[1]
    lda #&7f                                                          ; 4665: a9 7f       ..  :3565[1]
    sta l191c                                                         ; 4667: 8d 1c 19    ... :3567[1]
    lda #&0c                                                          ; 466a: a9 0c       ..  :356a[1]
    jsr oswrch                                                        ; 466c: 20 ee ff     .. :356c[1]   ; Write character 12
    ldx #<(l2008)                                                     ; 466f: a2 08       ..  :356f[1]
    ldy #>(l2008)                                                     ; 4671: a0 20       .   :3571[1]
    lda #osword_sound                                                 ; 4673: a9 07       ..  :3573[1]
    jsr osword                                                        ; 4675: 20 f1 ff     .. :3575[1]   ; SOUND command
    lda l34b0                                                         ; 4678: ad b0 34    ..4 :3578[1]
    asl a                                                             ; 467b: 0a          .   :357b[1]
    asl a                                                             ; 467c: 0a          .   :357c[1]
    asl a                                                             ; 467d: 0a          .   :357d[1]
    asl a                                                             ; 467e: 0a          .   :357e[1]
    asl a                                                             ; 467f: 0a          .   :357f[1]
    tay                                                               ; 4680: a8          .   :3580[1]
    ldx #0                                                            ; 4681: a2 00       ..  :3581[1]
; &4683 referenced 1 time by &358d[1]
.loop_c3583
    lda l2c60,y                                                       ; 4683: b9 60 2c    .`, :3583[1]
    sta l0c00,x                                                       ; 4686: 9d 00 0c    ... :3586[1]
    iny                                                               ; 4689: c8          .   :3589[1]
    inx                                                               ; 468a: e8          .   :358a[1]
    cpx #&20 ; ' '                                                    ; 468b: e0 20       .   :358b[1]
    bne loop_c3583                                                    ; 468d: d0 f4       ..  :358d[1]
    jsr sub_c1d58                                                     ; 468f: 20 58 1d     X. :358f[1]
    jsr sub_c3614                                                     ; 4692: 20 14 36     .6 :3592[1]
    jsr sub_c28a0                                                     ; 4695: 20 a0 28     .( :3595[1]
    jsr sub_c16f2                                                     ; 4698: 20 f2 16     .. :3598[1]
    rts                                                               ; 469b: 60          `   :359b[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea                  ; 469c: ea ea ea... ... :359c[1]

; &46a5 referenced 1 time by &28c1[1]
.sub_c35a5
    lda #&d4                                                          ; 46a5: a9 d4       ..  :35a5[1]
    sta l007b                                                         ; 46a7: 85 7b       .{  :35a7[1]
    lda #0                                                            ; 46a9: a9 00       ..  :35a9[1]
    sta l007a                                                         ; 46ab: 85 7a       .z  :35ab[1]
    inc l0079                                                         ; 46ad: e6 79       .y  :35ad[1]
    lda #&3f ; '?'                                                    ; 46af: a9 3f       .?  :35af[1]
    jsr sub_c1bdb                                                     ; 46b1: 20 db 1b     .. :35b1[1]
    dec l0079                                                         ; 46b4: c6 79       .y  :35b4[1]
    ldy #&0d                                                          ; 46b6: a0 0d       ..  :35b6[1]
; &46b8 referenced 1 time by &35bf[1]
.loop_c35b8
    lda l34e4,y                                                       ; 46b8: b9 e4 34    ..4 :35b8[1]
    jsr oswrch                                                        ; 46bb: 20 ee ff     .. :35bb[1]   ; Write character
    dey                                                               ; 46be: 88          .   :35be[1]
    bpl loop_c35b8                                                    ; 46bf: 10 f7       ..  :35bf[1]
    ldy #&73 ; 's'                                                    ; 46c1: a0 73       .s  :35c1[1]
    lda l34b1                                                         ; 46c3: ad b1 34    ..4 :35c3[1]
    lsr a                                                             ; 46c6: 4a          J   :35c6[1]
    lsr a                                                             ; 46c7: 4a          J   :35c7[1]
    lsr a                                                             ; 46c8: 4a          J   :35c8[1]
    lsr a                                                             ; 46c9: 4a          J   :35c9[1]
    tax                                                               ; 46ca: aa          .   :35ca[1]
    beq c35cf                                                         ; 46cb: f0 02       ..  :35cb[1]
    ldy #&63 ; 'c'                                                    ; 46cd: a0 63       .c  :35cd[1]
; &46cf referenced 1 time by &35cb[1]
.c35cf
    sty l34e1                                                         ; 46cf: 8c e1 34    ..4 :35cf[1]
    ldy #5                                                            ; 46d2: a0 05       ..  :35d2[1]
; &46d4 referenced 1 time by &35db[1]
.loop_c35d4
    lda l34de,y                                                       ; 46d4: b9 de 34    ..4 :35d4[1]
    jsr oswrch                                                        ; 46d7: 20 ee ff     .. :35d7[1]   ; Write character
    dey                                                               ; 46da: 88          .   :35da[1]
    bpl loop_c35d4                                                    ; 46db: 10 f7       ..  :35db[1]
    txa                                                               ; 46dd: 8a          .   :35dd[1]
    beq c35e6                                                         ; 46de: f0 06       ..  :35de[1]
    clc                                                               ; 46e0: 18          .   :35e0[1]
    adc #&30 ; '0'                                                    ; 46e1: 69 30       i0  :35e1[1]
    jsr oswrch                                                        ; 46e3: 20 ee ff     .. :35e3[1]   ; Write character
; &46e6 referenced 1 time by &35de[1]
.c35e6
    lda l34b1                                                         ; 46e6: ad b1 34    ..4 :35e6[1]
    and #&0f                                                          ; 46e9: 29 0f       ).  :35e9[1]
    clc                                                               ; 46eb: 18          .   :35eb[1]
    adc #&30 ; '0'                                                    ; 46ec: 69 30       i0  :35ec[1]
    jsr oswrch                                                        ; 46ee: 20 ee ff     .. :35ee[1]   ; Write character
    lda #4                                                            ; 46f1: a9 04       ..  :35f1[1]
    jsr oswrch                                                        ; 46f3: 20 ee ff     .. :35f3[1]   ; Write character 4
    rts                                                               ; 46f6: 60          `   :35f6[1]

; &46f7 referenced 1 time by &28e8[1]
.sub_c35f7
    ldy #&1d                                                          ; 46f7: a0 1d       ..  :35f7[1]
; &46f9 referenced 1 time by &3600[1]
.loop_c35f9
    lda l34c0,y                                                       ; 46f9: b9 c0 34    ..4 :35f9[1]
    jsr oswrch                                                        ; 46fc: 20 ee ff     .. :35fc[1]   ; Write character
    dey                                                               ; 46ff: 88          .   :35ff[1]
    bpl loop_c35f9                                                    ; 4700: 10 f7       ..  :3600[1]
    lda #&c8                                                          ; 4702: a9 c8       ..  :3602[1]
    sta l007b                                                         ; 4704: 85 7b       .{  :3604[1]
    lda #&3f ; '?'                                                    ; 4706: a9 3f       .?  :3606[1]
    sta l007a                                                         ; 4708: 85 7a       .z  :3608[1]
    inc l0079                                                         ; 470a: e6 79       .y  :360a[1]
    lda #8                                                            ; 470c: a9 08       ..  :360c[1]
    jsr sub_c1bcf                                                     ; 470e: 20 cf 1b     .. :360e[1]
    dec l0079                                                         ; 4711: c6 79       .y  :3611[1]
    rts                                                               ; 4713: 60          `   :3613[1]

; &4714 referenced 1 time by &3592[1]
.sub_c3614
    lda l0e4f                                                         ; 4714: ad 4f 0e    .O. :3614[1]
    sta l0e54                                                         ; 4717: 8d 54 0e    .T. :3617[1]
    ldx #0                                                            ; 471a: a2 00       ..  :361a[1]
; &471c referenced 1 time by &362c[1]
.loop_c361c
    jsr sub_c33d2                                                     ; 471c: 20 d2 33     .3 :361c[1]
    lda #1                                                            ; 471f: a9 01       ..  :361f[1]
    sta l0400,x                                                       ; 4721: 9d 00 04    ... :3621[1]
    txa                                                               ; 4724: 8a          .   :3624[1]
    clc                                                               ; 4725: 18          .   :3625[1]
    adc #&0b                                                          ; 4726: 69 0b       i.  :3626[1]
    tax                                                               ; 4728: aa          .   :3628[1]
    dec l0e54                                                         ; 4729: ce 54 0e    .T. :3629[1]
    bne loop_c361c                                                    ; 472c: d0 ee       ..  :362c[1]
    rts                                                               ; 472e: 60          `   :362e[1]

; &472f referenced 2 times by &28cd[1], &47d1[1]
.sub_c362f
    ldx #2                                                            ; 472f: a2 02       ..  :362f[1]
    lda #osbyte_select_adc_channels                                   ; 4731: a9 10       ..  :3631[1]
    jsr osbyte                                                        ; 4733: 20 f4 ff     .. :3633[1]   ; Select 2 ADC channels (X=2)
    ldx #1                                                            ; 4736: a2 01       ..  :3636[1]
    lda #osbyte_set_cursor_editing                                    ; 4738: a9 04       ..  :3638[1]
    jsr osbyte                                                        ; 473a: 20 f4 ff     .. :363a[1]   ; Disable cursor editing (edit keys give ASCII 135-139) (X=1)
    jsr sub_c2e01                                                     ; 473d: 20 01 2e     .. :363d[1]
    rts                                                               ; 4740: 60          `   :3640[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 4741: ea ea ea... ... :3641[1]
    equb &ea, &ea                                                     ; 474d: ea ea       ..  :364d[1]

; &474f referenced 1 time by &3855[1]
.sub_c364f
    dec l34b4                                                         ; 474f: ce b4 34    ..4 :364f[1]
    bpl c365a                                                         ; 4752: 10 06       ..  :3652[1]
    lda l34b3                                                         ; 4754: ad b3 34    ..4 :3654[1]
    sta l34b4                                                         ; 4757: 8d b4 34    ..4 :3657[1]
; &475a referenced 1 time by &3652[1]
.c365a
    lda l0e52                                                         ; 475a: ad 52 0e    .R. :365a[1]
    sta l0e55                                                         ; 475d: 8d 55 0e    .U. :365d[1]
    lda l0e3d                                                         ; 4760: ad 3d 0e    .=. :3660[1]
    sta l0080                                                         ; 4763: 85 80       ..  :3663[1]
    lda l0e3e                                                         ; 4765: ad 3e 0e    .>. :3665[1]
    sta l0081                                                         ; 4768: 85 81       ..  :3668[1]
    lda l0e4f                                                         ; 476a: ad 4f 0e    .O. :366a[1]
    sta l0e54                                                         ; 476d: 8d 54 0e    .T. :366d[1]
    ldx #0                                                            ; 4770: a2 00       ..  :3670[1]
; &4772 referenced 1 time by &372a[1]
.c3672
    lda l0489,x                                                       ; 4772: bd 89 04    ... :3672[1]
    beq c367f                                                         ; 4775: f0 08       ..  :3675[1]
    ldy l1cc9                                                         ; 4777: ac c9 1c    ... :3677[1]
    beq c3682                                                         ; 477a: f0 06       ..  :367a[1]
    jsr sub_c2c29                                                     ; 477c: 20 29 2c     ), :367c[1]
; &477f referenced 1 time by &3675[1]
.c367f
    jmp c3718                                                         ; 477f: 4c 18 37    L.7 :367f[1]

; &4782 referenced 1 time by &367a[1]
.c3682
    cmp #&ff                                                          ; 4782: c9 ff       ..  :3682[1]
    bne c368b                                                         ; 4784: d0 05       ..  :3684[1]
    lda l2a83                                                         ; 4786: ad 83 2a    ..* :3686[1]
    bne c3693                                                         ; 4789: d0 08       ..  :3689[1]
; &478b referenced 1 time by &3684[1]
.c368b
    lsr a                                                             ; 478b: 4a          J   :368b[1]
    lsr a                                                             ; 478c: 4a          J   :368c[1]
    lsr a                                                             ; 478d: 4a          J   :368d[1]
    lsr a                                                             ; 478e: 4a          J   :368e[1]
    clc                                                               ; 478f: 18          .   :368f[1]
    adc l2a82                                                         ; 4790: 6d 82 2a    m.* :3690[1]
; &4793 referenced 1 time by &3689[1]
.c3693
    sta l2a81                                                         ; 4793: 8d 81 2a    ..* :3693[1]
    lda l048a,x                                                       ; 4796: bd 8a 04    ... :3696[1]
    and #&0f                                                          ; 4799: 29 0f       ).  :3699[1]
    beq c36a0                                                         ; 479b: f0 03       ..  :369b[1]
    dec l048a,x                                                       ; 479d: de 8a 04    ... :369d[1]
; &47a0 referenced 1 time by &369b[1]
.c36a0
    lda l34b4                                                         ; 47a0: ad b4 34    ..4 :36a0[1]
    bne c36ba                                                         ; 47a3: d0 15       ..  :36a3[1]
    lda l040a,x                                                       ; 47a5: bd 0a 04    ... :36a5[1]
    cmp #4                                                            ; 47a8: c9 04       ..  :36a8[1]
    bcs c36ba                                                         ; 47aa: b0 0e       ..  :36aa[1]
    lda l0489,x                                                       ; 47ac: bd 89 04    ... :36ac[1]
    clc                                                               ; 47af: 18          .   :36af[1]
    adc l34b2                                                         ; 47b0: 6d b2 34    m.4 :36b0[1]
    bcc c36b7                                                         ; 47b3: 90 02       ..  :36b3[1]
    lda #&ff                                                          ; 47b5: a9 ff       ..  :36b5[1]
; &47b7 referenced 1 time by &36b3[1]
.c36b7
    sta l0489,x                                                       ; 47b7: 9d 89 04    ... :36b7[1]
; &47ba referenced 2 times by &36a3[1], &36aa[1]
.c36ba
    jsr sub_c2a8b                                                     ; 47ba: 20 8b 2a     .* :36ba[1]
    bcs c36f9                                                         ; 47bd: b0 3a       .:  :36bd[1]
    lda l0409,x                                                       ; 47bf: bd 09 04    ... :36bf[1]
    and #&0f                                                          ; 47c2: 29 0f       ).  :36c2[1]
    tay                                                               ; 47c4: a8          .   :36c4[1]
    lda l2a5f,y                                                       ; 47c5: b9 5f 2a    ._* :36c5[1]
    sta l0082                                                         ; 47c8: 85 82       ..  :36c8[1]
    lda l2a70,y                                                       ; 47ca: b9 70 2a    .p* :36ca[1]
    sta l0083                                                         ; 47cd: 85 83       ..  :36cd[1]
    jmp (l0082)                                                       ; 47cf: 6c 82 00    l.. :36cf[1]

    equb &bd, &83,   4, &30,   2, &49, &ff, &85, &7a, &bd, &86,   4   ; 47d2: bd 83 04... ... :36d2[1]
    equb &30,   2, &49, &ff, &18, &65, &7a, &c9,   6, &90, &10, &bc   ; 47de: 30 02 49... 0.I :36de[1]
    equb   8,   4, &c0, &22, &b0,   9, &69, &50, &90,   2, &a9, &ff   ; 47ea: 08 04 c0... ... :36ea[1]
    equb &9d,   8,   4                                                ; 47f6: 9d 08 04    ... :36f6[1]

; &47f9 referenced 1 time by &36bd[1]
.c36f9
    jsr sub_c2113                                                     ; 47f9: 20 13 21     .! :36f9[1]
    lda l1cd1                                                         ; 47fc: ad d1 1c    ... :36fc[1]
    cmp #6                                                            ; 47ff: c9 06       ..  :36ff[1]
    bcs c3718                                                         ; 4801: b0 15       ..  :3701[1]
    lda l1cd2                                                         ; 4803: ad d2 1c    ... :3703[1]
    and #&0f                                                          ; 4806: 29 0f       ).  :3706[1]
    sta l007a                                                         ; 4808: 85 7a       .z  :3708[1]
    lda l0409,x                                                       ; 480a: bd 09 04    ... :370a[1]
    and #&f0                                                          ; 480d: 29 f0       ).  :370d[1]
    ora l007a                                                         ; 480f: 05 7a       .z  :370f[1]
    sta l0409,x                                                       ; 4811: 9d 09 04    ... :3711[1]
    lda #0                                                            ; 4814: a9 00       ..  :3714[1]
    beq c371d                                                         ; 4816: f0 05       ..  :3716[1]   ; ALWAYS branch

; &4818 referenced 2 times by &367f[1], &3701[1]
.c3718
    lda l0488,x                                                       ; 4818: bd 88 04    ... :3718[1]
    and #&f0                                                          ; 481b: 29 f0       ).  :371b[1]
; &481d referenced 1 time by &3716[1]
.c371d
    sta l0488,x                                                       ; 481d: 9d 88 04    ... :371d[1]
    txa                                                               ; 4820: 8a          .   :3720[1]
    clc                                                               ; 4821: 18          .   :3721[1]
    adc #&0b                                                          ; 4822: 69 0b       i.  :3722[1]
    tax                                                               ; 4824: aa          .   :3724[1]
    dec l0e54                                                         ; 4825: ce 54 0e    .T. :3725[1]
    beq c372d                                                         ; 4828: f0 03       ..  :3728[1]
    jmp c3672                                                         ; 482a: 4c 72 36    Lr6 :372a[1]

; &482d referenced 1 time by &3728[1]
.c372d
    rts                                                               ; 482d: 60          `   :372d[1]

    equb &bd, &80, 4, &d0                                             ; 482e: bd 80 04... ... :372e[1]
    equs "% a+"                                                       ; 4832: 25 20 61... % a :3732[1]
    equb &d0,   3, &20, &cc, &26, &bd, &85,   4, &10, &0b, &29, &7f   ; 4836: d0 03 20... ..  :3736[1]
    equb &4a, &18, &6d, &54, &0e, &e9,   6, &b0,   2, &a9,   1, &cd   ; 4842: 4a 18 6d... J.m :3742[1]
    equb &81, &2a, &b0,   9, &8d, &81                                 ; 484e: 81 2a b0... .*. :374e[1]
    equs "*L[7 G+ :,L"                                                ; 4854: 2a 4c 5b... *L[ :3754[1]
    equb &d2, &36, &ad, &81, &2a, &18, &69,   8, &8d, &81, &2a, &bd   ; 485f: d2 36 ad... .6. :375f[1]
    equb &80,   4, &d0, &68, &bd, &88,   4, &a8, &29, &10, &d0, &37   ; 486b: 80 04 d0... ... :376b[1]
    equb &98, &29, &20, &d0, &0e, &ad,   0, &0f, &c9,   2, &90,   7   ; 4877: 98 29 20... .)  :3777[1]
    equb &98,   9, &10, &a8, &9d, &88,   4                            ; 4883: 98 09 10... ... :3783[1]
    equs " &+"                                                        ; 488a: 20 26 2b     &+ :378a[1]
    equb &c9, &69, &90, &0c, &98, &29, &cf, &9d, &88, 4               ; 488d: c9 69 90... .i. :378d[1]
    equs " :,L"                                                       ; 4897: 20 3a 2c...  :, :3797[1]
    equb &a3                                                          ; 489b: a3          .   :379b[1]
    equs "7 ), ), a+"                                                 ; 489c: 37 20 29... 7 ) :379c[1]
    equb &d0, &35, &20, &cc, &26, &4c, &dd, &37, &ad                  ; 48a6: d0 35 20... .5  :37a6[1]
    equs "U&J"                                                        ; 48af: 55 26 4a    U&J :37af[1]
    equb &18, &69, 8, &29, &1f, &8d                                   ; 48b2: 18 69 08... .i. :37b2[1]
    equs "U& a+"                                                      ; 48b8: 55 26 20... U&  :37b8[1]
    equb &bd, &85,   4, &30, &18, &bd, &82,   4, &38, &e9, &60, &c9   ; 48bd: bd 85 04... ... :37bd[1]
    equb &40, &b0, &0e, &bd, &88,   4, &49, &30, &9d, &88,   4, &4c   ; 48c9: 40 b0 0e... @.. :37c9[1]
    equb &da                                                          ; 48d5: da          .   :37d5[1]
    equs "7 G+ :,L"                                                   ; 48d6: 37 20 47... 7 G :37d6[1]
    equb &d2, &36, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 48de: d2 36 ea... .6. :37de[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea                  ; 48ea: ea ea ea... ... :37ea[1]

; &48f3 referenced 1 time by &45f5[1]
.c37f3
    lda #&ff                                                          ; 48f3: a9 ff       ..  :37f3[1]
    sta l33b9                                                         ; 48f5: 8d b9 33    ..3 :37f5[1]
    sta l34b0                                                         ; 48f8: 8d b0 34    ..4 :37f8[1]
    lda #0                                                            ; 48fb: a9 00       ..  :37fb[1]
    sta l34b1                                                         ; 48fd: 8d b1 34    ..4 :37fd[1]
    sta l2d67                                                         ; 4900: 8d 67 2d    .g- :3800[1]
    sta l2d66                                                         ; 4903: 8d 66 2d    .f- :3803[1]
    sta l2d65                                                         ; 4906: 8d 65 2d    .e- :3806[1]
    lda l34b9                                                         ; 4909: ad b9 34    ..4 :3809[1]
    sta l0e50                                                         ; 490c: 8d 50 0e    .P. :380c[1]
    ldy #3                                                            ; 490f: a0 03       ..  :380f[1]
; &4911 referenced 1 time by &3818[1]
.loop_c3811
    lda l33cc,y                                                       ; 4911: b9 cc 33    ..3 :3811[1]
    sta l33ba,y                                                       ; 4914: 99 ba 33    ..3 :3814[1]
    dey                                                               ; 4917: 88          .   :3817[1]
    bpl loop_c3811                                                    ; 4918: 10 f7       ..  :3818[1]
    jsr sub_c34f4                                                     ; 491a: 20 f4 34     .4 :381a[1]
    jmp c3833                                                         ; 491d: 4c 33 38    L38 :381d[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 4920: ea ea ea... ... :3820[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea                            ; 492c: ea ea ea... ... :382c[1]

; &4933 referenced 3 times by &381d[1], &38f6[1], &4681[1]
.c3833
    lda #0                                                            ; 4933: a9 00       ..  :3833[1]
    sta l1cdd                                                         ; 4935: 8d dd 1c    ... :3835[1]
    sta l1cde                                                         ; 4938: 8d de 1c    ... :3838[1]
    sta l25de                                                         ; 493b: 8d de 25    ..% :383b[1]
    sta l2658                                                         ; 493e: 8d 58 26    .X& :383e[1]
    sta l1cdc                                                         ; 4941: 8d dc 1c    ... :3841[1]
    sta l17d1                                                         ; 4944: 8d d1 17    ... :3844[1]
    sta l0e2d                                                         ; 4947: 8d 2d 0e    .-. :3847[1]
    jsr sub_c1631                                                     ; 494a: 20 31 16     1. :384a[1]
    lda #&ff                                                          ; 494d: a9 ff       ..  :384d[1]
    sta l1ce0                                                         ; 494f: 8d e0 1c    ... :384f[1]
    jsr sub_c17d8                                                     ; 4952: 20 d8 17     .. :3852[1]
    jsr sub_c364f                                                     ; 4955: 20 4f 36     O6 :3855[1]
    lda l0e56                                                         ; 4958: ad 56 0e    .V. :3858[1]
    beq c3865                                                         ; 495b: f0 08       ..  :385b[1]
    lda l2659                                                         ; 495d: ad 59 26    .Y& :385d[1]
    bne c3865                                                         ; 4960: d0 03       ..  :3860[1]
    jsr sub_c3019                                                     ; 4962: 20 19 30     .0 :3862[1]
; &4965 referenced 2 times by &385b[1], &3860[1]
.c3865
    jsr sub_c16f2                                                     ; 4965: 20 f2 16     .. :3865[1]
    jsr sub_c13d0                                                     ; 4968: 20 d0 13     .. :3868[1]
    jsr sub_c2667                                                     ; 496b: 20 67 26     g& :386b[1]
    inc l1ce0                                                         ; 496e: ee e0 1c    ... :386e[1]
    jsr sub_c1219                                                     ; 4971: 20 19 12     .. :3871[1]
    jsr sub_c14d2                                                     ; 4974: 20 d2 14     .. :3874[1]
    inc l1ce0                                                         ; 4977: ee e0 1c    ... :3877[1]
    jsr sub_c28f8                                                     ; 497a: 20 f8 28     .( :387a[1]
    jsr sub_c3161                                                     ; 497d: 20 61 31     a1 :387d[1]
    lda l0e2d                                                         ; 4980: ad 2d 0e    .-. :3880[1]
    beq c3893                                                         ; 4983: f0 0e       ..  :3883[1]
    cmp #&0b                                                          ; 4985: c9 0b       ..  :3885[1]
    bcc c388b                                                         ; 4987: 90 02       ..  :3887[1]
    lda #&0a                                                          ; 4989: a9 0a       ..  :3889[1]
; &498b referenced 2 times by &3887[1], &3891[1]
.c388b
    jsr sub_c179c                                                     ; 498b: 20 9c 17     .. :388b[1]
    dec l0e2d                                                         ; 498e: ce 2d 0e    .-. :388e[1]
    bne c388b                                                         ; 4991: d0 f8       ..  :3891[1]
; &4993 referenced 1 time by &3883[1]
.c3893
    lda #0                                                            ; 4993: a9 00       ..  :3893[1]
    dec l34b7                                                         ; 4995: ce b7 34    ..4 :3895[1]
    bne c38b0                                                         ; 4998: d0 16       ..  :3898[1]
    lda l34b6                                                         ; 499a: ad b6 34    ..4 :389a[1]
    sta l34b7                                                         ; 499d: 8d b7 34    ..4 :389d[1]
    lda l34b5                                                         ; 49a0: ad b5 34    ..4 :38a0[1]
    sec                                                               ; 49a3: 38          8   :38a3[1]
    sbc l0f00                                                         ; 49a4: ed 00 0f    ... :38a4[1]
    ldy l0e56                                                         ; 49a7: ac 56 0e    .V. :38a7[1]
    bne c38b0                                                         ; 49aa: d0 04       ..  :38aa[1]
    sec                                                               ; 49ac: 38          8   :38ac[1]
    sbc l34bc                                                         ; 49ad: ed bc 34    ..4 :38ad[1]
; &49b0 referenced 2 times by &3898[1], &38aa[1]
.c38b0
    sta l1923                                                         ; 49b0: 8d 23 19    .#. :38b0[1]
    lda l1cc9                                                         ; 49b3: ad c9 1c    ... :38b3[1]
    beq c38be                                                         ; 49b6: f0 06       ..  :38b6[1]
    jsr sub_c1de8                                                     ; 49b8: 20 e8 1d     .. :38b8[1]
    jmp c38c4                                                         ; 49bb: 4c c4 38    L.8 :38bb[1]

; &49be referenced 1 time by &38b6[1]
.c38be
    jsr sub_c1ac7                                                     ; 49be: 20 c7 1a     .. :38be[1]
    jsr sub_c193f                                                     ; 49c1: 20 3f 19     ?. :38c1[1]
; &49c4 referenced 1 time by &38bb[1]
.c38c4
    jsr sub_c14a4                                                     ; 49c4: 20 a4 14     .. :38c4[1]
    jsr sub_c245a                                                     ; 49c7: 20 5a 24     Z$ :38c7[1]
    jsr sub_c2dd0                                                     ; 49ca: 20 d0 2d     .- :38ca[1]
    jsr sub_c2113                                                     ; 49cd: 20 13 21     .! :38cd[1]
    lda l1cd2                                                         ; 49d0: ad d2 1c    ... :38d0[1]
    and #&3f ; '?'                                                    ; 49d3: 29 3f       )?  :38d3[1]
    clc                                                               ; 49d5: 18          .   :38d5[1]
    adc l34b8                                                         ; 49d6: 6d b8 34    m.4 :38d6[1]
    sta l1cdf                                                         ; 49d9: 8d df 1c    ... :38d9[1]
    lda l0f00                                                         ; 49dc: ad 00 0f    ... :38dc[1]
    sta l007b                                                         ; 49df: 85 7b       .{  :38df[1]
    lda l0f01                                                         ; 49e1: ad 01 0f    ... :38e1[1]
    asl a                                                             ; 49e4: 0a          .   :38e4[1]
    rol l007b                                                         ; 49e5: 26 7b       &{  :38e5[1]
    asl a                                                             ; 49e7: 0a          .   :38e7[1]
    rol l007b                                                         ; 49e8: 26 7b       &{  :38e8[1]
    lda l1cd1                                                         ; 49ea: ad d1 1c    ... :38ea[1]
    and #&1f                                                          ; 49ed: 29 1f       ).  :38ed[1]
    adc l007b                                                         ; 49ef: 65 7b       e{  :38ef[1]
    adc #&0c                                                          ; 49f1: 69 0c       i.  :38f1[1]
    sta l0e36                                                         ; 49f3: 8d 36 0e    .6. :38f3[1]
    jmp c3833                                                         ; 49f6: 4c 33 38    L38 :38f6[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 49f9: ea ea ea... ... :38f9[1]
    equb &ea, &ea                                                     ; 4a05: ea ea       ..  :3905[1]
; &4a07 referenced 9 times by &3c24[1], &3c27[1], &3c69[1], &3c92[1], &3c95[1], &3ca0[1], &3caf[1], &45e9[1], &463f[1]
.l3907
    equb 0                                                            ; 4a07: 00          .   :3907[1]
; &4a08 referenced 6 times by &3c2d[1], &3c30[1], &3c63[1], &3c98[1], &45ec[1], &4645[1]
.l3908
    equb 0                                                            ; 4a08: 00          .   :3908[1]
; &4a09 referenced 6 times by &3c36[1], &3c39[1], &3c5d[1], &3ca8[1], &45ef[1], &464b[1]
.l3909
    equb 0                                                            ; 4a09: 00          .   :3909[1]
; &4a0a referenced 4 times by &3c44[1], &3c77[1], &3d09[1], &462e[1]
.l390a
    equb 0, &ea, &ea, &ea, &ea, &ea, &ea, &ea                         ; 4a0a: 00 ea ea... ... :390a[1]
; &4a12 referenced 1 time by &3b98[1]
.l3912
    equb &1f, &0b, 5                                                  ; 4a12: 1f 0b 05    ... :3912[1]
    equs "STARSHIP COMMAND"                                           ; 4a15: 53 54 41... STA :3915[1]
    equb &1f, 5, &0a                                                  ; 4a25: 1f 05 0a    ... :3925[1]
    equs "An escape capsule was launched"                             ; 4a28: 41 6e 20... An  :3928[1]
    equb &1f, 4, &0f                                                  ; 4a46: 1f 04 0f    ... :3946[1]
    equs "Your official combat experience"                            ; 4a49: 59 6f 75... You :3949[1]
    equb &1f, 4, &11                                                  ; 4a68: 1f 04 11    ... :3968[1]
    equs "rating is now recorded as."                                 ; 4a6b: 72 61 74... rat :396b[1]
    equb &1f, &0d, &1f                                                ; 4a85: 1f 0d 1f    ... :3985[1]
    equs "Press <RETURN>"                                             ; 4a88: 50 72 65... Pre :3988[1]
    equb &0d                                                          ; 4a96: 0d          .   :3996[1]
; &4a97 referenced 1 time by &3bce[1]
.l3997
    equb &1f, 5, &0a, &4e, &4f, &1f, 5, &0b                           ; 4a97: 1f 05 0a... ... :3997[1]
    equs "before the starship exploded."                              ; 4a9f: 62 65 66... bef :399f[1]
    equb &0d                                                          ; 4abc: 0d          .   :39bc[1]
; &4abd referenced 1 time by &3c81[1]
.l39bd
    equb &1f, 3, &16                                                  ; 4abd: 1f 03 16    ... :39bd[1]
    equs "After  your  performance  on  this"                         ; 4ac0: 41 66 74... Aft :39c0[1]
    equb &1f, 3, &17                                                  ; 4ae2: 1f 03 17    ... :39e2[1]
    equs "command the Star-Fleet authorities"                         ; 4ae5: 63 6f 6d... com :39e5[1]
    equb &1f, 3, &18                                                  ; 4b07: 1f 03 18    ... :3a07[1]
    equs "are  said  to  be  ", '"'                                   ; 4b0a: 61 72 65... are :3a0a[1]
    equb &0d                                                          ; 4b1e: 0d          .   :3a1e[1]
; &4b1f referenced 1 time by &3be2[1]
.l3a1f
    equb &1f, 5, &0b                                                  ; 4b1f: 1f 05 0b    ... :3a1f[1]
    equs "and returned safely from the"                               ; 4b22: 61 6e 64... and :3a22[1]
    equb &1f, 5, &0c                                                  ; 4b3e: 1f 05 0c    ... :3a3e[1]
    equs "combat zone."                                               ; 4b41: 63 6f 6d... com :3a41[1]
    equb &0d                                                          ; 4b4d: 0d          .   :3a4d[1]
; &4b4e referenced 1 time by &3bf1[1]
.l3a4e
    equb &1f, 5, &0b                                                  ; 4b4e: 1f 05 0b    ... :3a4e[1]
    equs "but collided with an enemy ship."                           ; 4b51: 62 75 74... but :3a51[1]
    equb &0d                                                          ; 4b71: 0d          .   :3a71[1]
; &4b72 referenced 1 time by &3c50[1]
.l3a72
    equb &1f, 4, &13                                                  ; 4b72: 1f 04 13    ... :3a72[1]
    equs "having  just  gained  "                                     ; 4b75: 68 61 76... hav :3a75[1]
    equb &0d                                                          ; 4b8b: 0d          .   :3a8b[1]
; &4b8c referenced 2 times by &3ced[1], &3cfa[1]
.l3a8c
    equs "and but they allow you the command of"                      ; 4b8c: 61 6e 64... and :3a8c[1]
    equb &1f, 3, &1b                                                  ; 4bb1: 1f 03 1b    ... :3ab1[1]
    equs "another starship."                                          ; 4bb4: 61 6e 6f... ano :3ab4[1]
    equb &0d                                                          ; 4bc5: 0d          .   :3ac5[1]
; &4bc6 referenced 2 times by &3cc3[1], &3ccc[1]
.l3ac6
    equs '"', "furious", '"', "displeased", '"', "disappointed", '"'  ; 4bc6: 22 66 75... "fu :3ac6[1]
    equs "disappointed", '"', "satisfied", '"', "pleased", '"', "i"   ; 4be7: 64 69 73... dis :3ae7[1]
    equs "mpressed", '"', "delighted", '"'                            ; 4c07: 6d 70 72... mpr :3b07[1]
    equb &0d                                                          ; 4c1a: 0d          .   :3b1a[1]
; &4c1b referenced 1 time by &3d0c[1]
.l3b1b
    equb &1f, 0, &1a                                                  ; 4c1b: 1f 00 1a    ... :3b1b[1]
    equs "and they retire you from active service."                   ; 4c1e: 61 6e 64... and :3b1e[1]
; &4c46 referenced 1 time by &3cb2[1]
.l3b46
    equb &0d,   2,   3,   4,   7, &0d, &14, &1e, &ea, &ea, &ea, &ea   ; 4c46: 0d 02 03... ... :3b46[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 4c52: ea ea ea... ... :3b52[1]
    equb &ea, &ea, &ea                                                ; 4c5e: ea ea ea    ... :3b5e[1]

; &4c61 referenced 1 time by &4625[1]
.sub_c3b61
    lda #&0a                                                          ; 4c61: a9 0a       ..  :3b61[1]
    jsr oswrch                                                        ; 4c63: 20 ee ff     .. :3b63[1]   ; Write character 10
    ldy #&0d                                                          ; 4c66: a0 0d       ..  :3b66[1]
; &4c68 referenced 1 time by &3b78[1]
.loop_c3b68
    lda #&20 ; ' '                                                    ; 4c68: a9 20       .   :3b68[1]
    jsr oswrch                                                        ; 4c6a: 20 ee ff     .. :3b6a[1]   ; Write character 32
    lda #&e0                                                          ; 4c6d: a9 e0       ..  :3b6d[1]
    jsr oswrch                                                        ; 4c6f: 20 ee ff     .. :3b6f[1]   ; Write character 224
    lda #&e1                                                          ; 4c72: a9 e1       ..  :3b72[1]
    jsr oswrch                                                        ; 4c74: 20 ee ff     .. :3b74[1]   ; Write character 225
    dey                                                               ; 4c77: 88          .   :3b77[1]
    bne loop_c3b68                                                    ; 4c78: d0 ee       ..  :3b78[1]
    lda #&20 ; ' '                                                    ; 4c7a: a9 20       .   :3b7a[1]
    jsr oswrch                                                        ; 4c7c: 20 ee ff     .. :3b7c[1]   ; Write character 32
    ldy #&0d                                                          ; 4c7f: a0 0d       ..  :3b7f[1]
; &4c81 referenced 1 time by &3b91[1]
.loop_c3b81
    lda #&20 ; ' '                                                    ; 4c81: a9 20       .   :3b81[1]
    jsr oswrch                                                        ; 4c83: 20 ee ff     .. :3b83[1]   ; Write character 32
    lda #&e2                                                          ; 4c86: a9 e2       ..  :3b86[1]
    jsr oswrch                                                        ; 4c88: 20 ee ff     .. :3b88[1]   ; Write character 226
    lda #&e3                                                          ; 4c8b: a9 e3       ..  :3b8b[1]
    jsr oswrch                                                        ; 4c8d: 20 ee ff     .. :3b8d[1]   ; Write character 227
    dey                                                               ; 4c90: 88          .   :3b90[1]
    bne loop_c3b81                                                    ; 4c91: d0 ee       ..  :3b91[1]
    jsr sub_c3d1b                                                     ; 4c93: 20 1b 3d     .= :3b93[1]
    ldy #0                                                            ; 4c96: a0 00       ..  :3b96[1]
; &4c98 referenced 1 time by &3ba1[1]
.loop_c3b98
    lda l3912,y                                                       ; 4c98: b9 12 39    ..9 :3b98[1]
    jsr oswrch                                                        ; 4c9b: 20 ee ff     .. :3b9b[1]   ; Write character
    iny                                                               ; 4c9e: c8          .   :3b9e[1]
    cmp #&3e ; '>'                                                    ; 4c9f: c9 3e       .>  :3b9f[1]
    bne loop_c3b98                                                    ; 4ca1: d0 f5       ..  :3ba1[1]
    ldy #5                                                            ; 4ca3: a0 05       ..  :3ba3[1]
    ldx #&1c                                                          ; 4ca5: a2 1c       ..  :3ba5[1]
    jsr sub_c3d30                                                     ; 4ca7: 20 30 3d     0= :3ba7[1]
    lda l34b1                                                         ; 4caa: ad b1 34    ..4 :3baa[1]
    lsr a                                                             ; 4cad: 4a          J   :3bad[1]
    lsr a                                                             ; 4cae: 4a          J   :3bae[1]
    lsr a                                                             ; 4caf: 4a          J   :3baf[1]
    lsr a                                                             ; 4cb0: 4a          J   :3bb0[1]
    beq c3bb9                                                         ; 4cb1: f0 06       ..  :3bb1[1]
    clc                                                               ; 4cb3: 18          .   :3bb3[1]
    adc #&30 ; '0'                                                    ; 4cb4: 69 30       i0  :3bb4[1]
    jsr oswrch                                                        ; 4cb6: 20 ee ff     .. :3bb6[1]   ; Write character
; &4cb9 referenced 1 time by &3bb1[1]
.c3bb9
    lda l34b1                                                         ; 4cb9: ad b1 34    ..4 :3bb9[1]
    and #&0f                                                          ; 4cbc: 29 0f       ).  :3bbc[1]
    clc                                                               ; 4cbe: 18          .   :3bbe[1]
    adc #&30 ; '0'                                                    ; 4cbf: 69 30       i0  :3bbf[1]
    jsr oswrch                                                        ; 4cc1: 20 ee ff     .. :3bc1[1]   ; Write character
    jsr sub_c3d1b                                                     ; 4cc4: 20 1b 3d     .= :3bc4[1]
    lda l1cd8                                                         ; 4cc7: ad d8 1c    ... :3bc7[1]
    bne c3bdb                                                         ; 4cca: d0 0f       ..  :3bca[1]
    ldy #0                                                            ; 4ccc: a0 00       ..  :3bcc[1]
; &4cce referenced 1 time by &3bd7[1]
.loop_c3bce
    lda l3997,y                                                       ; 4cce: b9 97 39    ..9 :3bce[1]
    jsr oswrch                                                        ; 4cd1: 20 ee ff     .. :3bd1[1]   ; Write character
    iny                                                               ; 4cd4: c8          .   :3bd4[1]
    cmp #&2e ; '.'                                                    ; 4cd5: c9 2e       ..  :3bd5[1]
    bne loop_c3bce                                                    ; 4cd7: d0 f5       ..  :3bd7[1]
    beq c3bfc                                                         ; 4cd9: f0 21       .!  :3bd9[1]   ; ALWAYS branch

; &4cdb referenced 1 time by &3bca[1]
.c3bdb
    lda l2890                                                         ; 4cdb: ad 90 28    ..( :3bdb[1]
    bne c3bef                                                         ; 4cde: d0 0f       ..  :3bde[1]
    ldy #0                                                            ; 4ce0: a0 00       ..  :3be0[1]
; &4ce2 referenced 1 time by &3beb[1]
.loop_c3be2
    lda l3a1f,y                                                       ; 4ce2: b9 1f 3a    ..: :3be2[1]
    jsr oswrch                                                        ; 4ce5: 20 ee ff     .. :3be5[1]   ; Write character
    iny                                                               ; 4ce8: c8          .   :3be8[1]
    cmp #&2e ; '.'                                                    ; 4ce9: c9 2e       ..  :3be9[1]
    bne loop_c3be2                                                    ; 4ceb: d0 f5       ..  :3beb[1]
    beq c3bfc                                                         ; 4ced: f0 0d       ..  :3bed[1]   ; ALWAYS branch

; &4cef referenced 1 time by &3bde[1]
.c3bef
    ldy #0                                                            ; 4cef: a0 00       ..  :3bef[1]
; &4cf1 referenced 1 time by &3bfa[1]
.loop_c3bf1
    lda l3a4e,y                                                       ; 4cf1: b9 4e 3a    .N: :3bf1[1]
    jsr oswrch                                                        ; 4cf4: 20 ee ff     .. :3bf4[1]   ; Write character
    iny                                                               ; 4cf7: c8          .   :3bf7[1]
    cmp #&2e ; '.'                                                    ; 4cf8: c9 2e       ..  :3bf8[1]
    bne loop_c3bf1                                                    ; 4cfa: d0 f5       ..  :3bfa[1]
; &4cfc referenced 2 times by &3bd9[1], &3bed[1]
.c3bfc
    ldy #&11                                                          ; 4cfc: a0 11       ..  :3bfc[1]
    ldx #&1e                                                          ; 4cfe: a2 1e       ..  :3bfe[1]
    jsr sub_c3d30                                                     ; 4d00: 20 30 3d     0= :3c00[1]
    ldx #&fe                                                          ; 4d03: a2 fe       ..  :3c03[1]
    ldy #5                                                            ; 4d05: a0 05       ..  :3c05[1]
; &4d07 referenced 1 time by &3c1c[1]
.loop_c3c07
    lda l2d6e,y                                                       ; 4d07: b9 6e 2d    .n- :3c07[1]
    bne c3c13                                                         ; 4d0a: d0 07       ..  :3c0a[1]
    tya                                                               ; 4d0c: 98          .   :3c0c[1]
    beq c3c13                                                         ; 4d0d: f0 04       ..  :3c0d[1]
    txa                                                               ; 4d0f: 8a          .   :3c0f[1]
    jmp c3c15                                                         ; 4d10: 4c 15 3c    L.< :3c10[1]

; &4d13 referenced 2 times by &3c0a[1], &3c0d[1]
.c3c13
    ldx #0                                                            ; 4d13: a2 00       ..  :3c13[1]
; &4d15 referenced 1 time by &3c10[1]
.c3c15
    clc                                                               ; 4d15: 18          .   :3c15[1]
    adc #&30 ; '0'                                                    ; 4d16: 69 30       i0  :3c16[1]
    jsr oswrch                                                        ; 4d18: 20 ee ff     .. :3c18[1]   ; Write character
    dey                                                               ; 4d1b: 88          .   :3c1b[1]
    bpl loop_c3c07                                                    ; 4d1c: 10 e9       ..  :3c1c[1]
    lda l2d65                                                         ; 4d1e: ad 65 2d    .e- :3c1e[1]
    sec                                                               ; 4d21: 38          8   :3c21[1]
    sei                                                               ; 4d22: 78          x   :3c22[1]
    sed                                                               ; 4d23: f8          .   :3c23[1]
    sbc l3907                                                         ; 4d24: ed 07 39    ..9 :3c24[1]
    sta l3907                                                         ; 4d27: 8d 07 39    ..9 :3c27[1]
    lda l2d66                                                         ; 4d2a: ad 66 2d    .f- :3c2a[1]
    sbc l3908                                                         ; 4d2d: ed 08 39    ..9 :3c2d[1]
    sta l3908                                                         ; 4d30: 8d 08 39    ..9 :3c30[1]
    lda l2d67                                                         ; 4d33: ad 67 2d    .g- :3c33[1]
    sbc l3909                                                         ; 4d36: ed 09 39    ..9 :3c36[1]
    sta l3909                                                         ; 4d39: 8d 09 39    ..9 :3c39[1]
    cld                                                               ; 4d3c: d8          .   :3c3c[1]
    cli                                                               ; 4d3d: 58          X   :3c3d[1]
    lda l2890                                                         ; 4d3e: ad 90 28    ..( :3c3e[1]
    eor l1cd8                                                         ; 4d41: 4d d8 1c    M.. :3c41[1]
    sta l390a                                                         ; 4d44: 8d 0a 39    ..9 :3c44[1]
    lda l34b1                                                         ; 4d47: ad b1 34    ..4 :3c47[1]
    cmp #1                                                            ; 4d4a: c9 01       ..  :3c4a[1]
    beq c3c77                                                         ; 4d4c: f0 29       .)  :3c4c[1]
    ldy #0                                                            ; 4d4e: a0 00       ..  :3c4e[1]
; &4d50 referenced 1 time by &3c59[1]
.loop_c3c50
    lda l3a72,y                                                       ; 4d50: b9 72 3a    .r: :3c50[1]
    jsr oswrch                                                        ; 4d53: 20 ee ff     .. :3c53[1]   ; Write character
    iny                                                               ; 4d56: c8          .   :3c56[1]
    cpy #&19                                                          ; 4d57: c0 19       ..  :3c57[1]
    bne loop_c3c50                                                    ; 4d59: d0 f5       ..  :3c59[1]
    ldx #1                                                            ; 4d5b: a2 01       ..  :3c5b[1]
    lda l3909                                                         ; 4d5d: ad 09 39    ..9 :3c5d[1]
    jsr sub_c3d3e                                                     ; 4d60: 20 3e 3d     >= :3c60[1]
    lda l3908                                                         ; 4d63: ad 08 39    ..9 :3c63[1]
    jsr sub_c3d3e                                                     ; 4d66: 20 3e 3d     >= :3c66[1]
    lda l3907                                                         ; 4d69: ad 07 39    ..9 :3c69[1]
    jsr sub_c3d3e                                                     ; 4d6c: 20 3e 3d     >= :3c6c[1]
    txa                                                               ; 4d6f: 8a          .   :3c6f[1]
    beq c3c77                                                         ; 4d70: f0 05       ..  :3c70[1]
    lda #&30 ; '0'                                                    ; 4d72: a9 30       .0  :3c72[1]
    jsr oswrch                                                        ; 4d74: 20 ee ff     .. :3c74[1]   ; Write character 48
; &4d77 referenced 2 times by &3c4c[1], &3c70[1]
.c3c77
    lda l390a                                                         ; 4d77: ad 0a 39    ..9 :3c77[1]
    bne c3c7f                                                         ; 4d7a: d0 03       ..  :3c7a[1]
    jmp c3d17                                                         ; 4d7c: 4c 17 3d    L.= :3c7c[1]

; &4d7f referenced 1 time by &3c7a[1]
.c3c7f
    ldy #0                                                            ; 4d7f: a0 00       ..  :3c7f[1]
; &4d81 referenced 1 time by &3c8a[1]
.loop_c3c81
    lda l39bd,y                                                       ; 4d81: b9 bd 39    ..9 :3c81[1]
    jsr oswrch                                                        ; 4d84: 20 ee ff     .. :3c84[1]   ; Write character
    iny                                                               ; 4d87: c8          .   :3c87[1]
    cpy #&61 ; 'a'                                                    ; 4d88: c0 61       .a  :3c88[1]
    bne loop_c3c81                                                    ; 4d8a: d0 f5       ..  :3c8a[1]
    lda l1cd2                                                         ; 4d8c: ad d2 1c    ... :3c8c[1]
    and #&3f ; '?'                                                    ; 4d8f: 29 3f       )?  :3c8f[1]
    clc                                                               ; 4d91: 18          .   :3c91[1]
    adc l3907                                                         ; 4d92: 6d 07 39    m.9 :3c92[1]
    sta l3907                                                         ; 4d95: 8d 07 39    ..9 :3c95[1]
    lda l3908                                                         ; 4d98: ad 08 39    ..9 :3c98[1]
    adc #0                                                            ; 4d9b: 69 00       i.  :3c9b[1]
    ldy #5                                                            ; 4d9d: a0 05       ..  :3c9d[1]
; &4d9f referenced 1 time by &3ca4[1]
.loop_c3c9f
    lsr a                                                             ; 4d9f: 4a          J   :3c9f[1]
    ror l3907                                                         ; 4da0: 6e 07 39    n.9 :3ca0[1]
    dey                                                               ; 4da3: 88          .   :3ca3[1]
    bne loop_c3c9f                                                    ; 4da4: d0 f9       ..  :3ca4[1]
    ldy #8                                                            ; 4da6: a0 08       ..  :3ca6[1]
    ora l3909                                                         ; 4da8: 0d 09 39    ..9 :3ca8[1]
    bne c3cbc                                                         ; 4dab: d0 0f       ..  :3cab[1]
    ldy #1                                                            ; 4dad: a0 01       ..  :3cad[1]
    lda l3907                                                         ; 4daf: ad 07 39    ..9 :3caf[1]
; &4db2 referenced 1 time by &3cba[1]
.loop_c3cb2
    cmp l3b46,y                                                       ; 4db2: d9 46 3b    .F; :3cb2[1]
    bcc c3cbc                                                         ; 4db5: 90 05       ..  :3cb5[1]
    iny                                                               ; 4db7: c8          .   :3cb7[1]
    cpy #8                                                            ; 4db8: c0 08       ..  :3cb8[1]
    bne loop_c3cb2                                                    ; 4dba: d0 f6       ..  :3cba[1]
; &4dbc referenced 2 times by &3cab[1], &3cb5[1]
.c3cbc
    sty l007b                                                         ; 4dbc: 84 7b       .{  :3cbc[1]
    ldx #&ff                                                          ; 4dbe: a2 ff       ..  :3cbe[1]
    lda #&22 ; '"'                                                    ; 4dc0: a9 22       ."  :3cc0[1]
; &4dc2 referenced 2 times by &3cc6[1], &3cc9[1]
.c3cc2
    inx                                                               ; 4dc2: e8          .   :3cc2[1]
    cmp l3ac6,x                                                       ; 4dc3: dd c6 3a    ..: :3cc3[1]
    bne c3cc2                                                         ; 4dc6: d0 fa       ..  :3cc6[1]
    dey                                                               ; 4dc8: 88          .   :3cc8[1]
    bne c3cc2                                                         ; 4dc9: d0 f7       ..  :3cc9[1]
; &4dcb referenced 1 time by &3cd4[1]
.loop_c3ccb
    inx                                                               ; 4dcb: e8          .   :3ccb[1]
    lda l3ac6,x                                                       ; 4dcc: bd c6 3a    ..: :3ccc[1]
    jsr oswrch                                                        ; 4dcf: 20 ee ff     .. :3ccf[1]   ; Write character
    cmp #&22 ; '"'                                                    ; 4dd2: c9 22       ."  :3cd2[1]
    bne loop_c3ccb                                                    ; 4dd4: d0 f5       ..  :3cd4[1]
    lda l007b                                                         ; 4dd6: a5 7b       .{  :3cd6[1]
    cmp #4                                                            ; 4dd8: c9 04       ..  :3cd8[1]
    bcc c3d07                                                         ; 4dda: 90 2b       .+  :3cda[1]
    ldy #&1a                                                          ; 4ddc: a0 1a       ..  :3cdc[1]
    ldx #3                                                            ; 4dde: a2 03       ..  :3cde[1]
    jsr sub_c3d30                                                     ; 4de0: 20 30 3d     0= :3ce0[1]
    ldy #0                                                            ; 4de3: a0 00       ..  :3ce3[1]
    lda l007b                                                         ; 4de5: a5 7b       .{  :3ce5[1]
    cmp #4                                                            ; 4de7: c9 04       ..  :3ce7[1]
    bne c3ced                                                         ; 4de9: d0 02       ..  :3ce9[1]
    ldy #4                                                            ; 4deb: a0 04       ..  :3ceb[1]
; &4ded referenced 2 times by &3ce9[1], &3cf6[1]
.c3ced
    lda l3a8c,y                                                       ; 4ded: b9 8c 3a    ..: :3ced[1]
    jsr oswrch                                                        ; 4df0: 20 ee ff     .. :3cf0[1]   ; Write character
    iny                                                               ; 4df3: c8          .   :3cf3[1]
    cmp #&20 ; ' '                                                    ; 4df4: c9 20       .   :3cf4[1]
    bne c3ced                                                         ; 4df6: d0 f5       ..  :3cf6[1]
    ldy #8                                                            ; 4df8: a0 08       ..  :3cf8[1]
; &4dfa referenced 1 time by &3d03[1]
.loop_c3cfa
    lda l3a8c,y                                                       ; 4dfa: b9 8c 3a    ..: :3cfa[1]
    jsr oswrch                                                        ; 4dfd: 20 ee ff     .. :3cfd[1]   ; Write character
    iny                                                               ; 4e00: c8          .   :3d00[1]
    cmp #&2e ; '.'                                                    ; 4e01: c9 2e       ..  :3d01[1]
    bne loop_c3cfa                                                    ; 4e03: d0 f5       ..  :3d03[1]
    beq c3d17                                                         ; 4e05: f0 10       ..  :3d05[1]   ; ALWAYS branch

; &4e07 referenced 1 time by &3cda[1]
.c3d07
    ldy #0                                                            ; 4e07: a0 00       ..  :3d07[1]
    sty l390a                                                         ; 4e09: 8c 0a 39    ..9 :3d09[1]
; &4e0c referenced 1 time by &3d15[1]
.loop_c3d0c
    lda l3b1b,y                                                       ; 4e0c: b9 1b 3b    ..; :3d0c[1]
    jsr oswrch                                                        ; 4e0f: 20 ee ff     .. :3d0f[1]   ; Write character
    iny                                                               ; 4e12: c8          .   :3d12[1]
    cmp #&2e ; '.'                                                    ; 4e13: c9 2e       ..  :3d13[1]
    bne loop_c3d0c                                                    ; 4e15: d0 f5       ..  :3d15[1]
; &4e17 referenced 2 times by &3c7c[1], &3d05[1]
.c3d17
    jsr sub_c3d1b                                                     ; 4e17: 20 1b 3d     .= :3d17[1]
    rts                                                               ; 4e1a: 60          `   :3d1a[1]

; &4e1b referenced 3 times by &3b93[1], &3bc4[1], &3d17[1]
.sub_c3d1b
    lda #&0d                                                          ; 4e1b: a9 0d       ..  :3d1b[1]
    jsr oswrch                                                        ; 4e1d: 20 ee ff     .. :3d1d[1]   ; Write character 13
    lda #&0a                                                          ; 4e20: a9 0a       ..  :3d20[1]
    jsr oswrch                                                        ; 4e22: 20 ee ff     .. :3d22[1]   ; Write character 10
    ldy #&28 ; '('                                                    ; 4e25: a0 28       .(  :3d25[1]
; &4e27 referenced 1 time by &3d2d[1]
.loop_c3d27
    lda #&5f ; '_'                                                    ; 4e27: a9 5f       ._  :3d27[1]
    jsr oswrch                                                        ; 4e29: 20 ee ff     .. :3d29[1]   ; Write character 95
    dey                                                               ; 4e2c: 88          .   :3d2c[1]
    bne loop_c3d27                                                    ; 4e2d: d0 f8       ..  :3d2d[1]
    rts                                                               ; 4e2f: 60          `   :3d2f[1]

; &4e30 referenced 3 times by &3ba7[1], &3c00[1], &3ce0[1]
.sub_c3d30
    lda #&1f                                                          ; 4e30: a9 1f       ..  :3d30[1]
    jsr oswrch                                                        ; 4e32: 20 ee ff     .. :3d32[1]   ; Write character 31
    txa                                                               ; 4e35: 8a          .   :3d35[1]
    jsr oswrch                                                        ; 4e36: 20 ee ff     .. :3d36[1]   ; Write character
    tya                                                               ; 4e39: 98          .   :3d39[1]
    jsr oswrch                                                        ; 4e3a: 20 ee ff     .. :3d3a[1]   ; Write character
    rts                                                               ; 4e3d: 60          `   :3d3d[1]

; &4e3e referenced 3 times by &3c60[1], &3c66[1], &3c6c[1]
.sub_c3d3e
    tay                                                               ; 4e3e: a8          .   :3d3e[1]
    lsr a                                                             ; 4e3f: 4a          J   :3d3f[1]
    lsr a                                                             ; 4e40: 4a          J   :3d40[1]
    lsr a                                                             ; 4e41: 4a          J   :3d41[1]
    lsr a                                                             ; 4e42: 4a          J   :3d42[1]
    bne c3d48                                                         ; 4e43: d0 03       ..  :3d43[1]
    txa                                                               ; 4e45: 8a          .   :3d45[1]
    bne c3d50                                                         ; 4e46: d0 08       ..  :3d46[1]
; &4e48 referenced 1 time by &3d43[1]
.c3d48
    ldx #0                                                            ; 4e48: a2 00       ..  :3d48[1]
    clc                                                               ; 4e4a: 18          .   :3d4a[1]
    adc #&30 ; '0'                                                    ; 4e4b: 69 30       i0  :3d4b[1]
    jsr oswrch                                                        ; 4e4d: 20 ee ff     .. :3d4d[1]   ; Write character
; &4e50 referenced 1 time by &3d46[1]
.c3d50
    tya                                                               ; 4e50: 98          .   :3d50[1]
    and #&0f                                                          ; 4e51: 29 0f       ).  :3d51[1]
    bne c3d58                                                         ; 4e53: d0 03       ..  :3d53[1]
    txa                                                               ; 4e55: 8a          .   :3d55[1]
    bne c3d60                                                         ; 4e56: d0 08       ..  :3d56[1]
; &4e58 referenced 1 time by &3d53[1]
.c3d58
    ldx #0                                                            ; 4e58: a2 00       ..  :3d58[1]
    clc                                                               ; 4e5a: 18          .   :3d5a[1]
    adc #&30 ; '0'                                                    ; 4e5b: 69 30       i0  :3d5b[1]
    jsr oswrch                                                        ; 4e5d: 20 ee ff     .. :3d5d[1]   ; Write character
; &4e60 referenced 1 time by &3d56[1]
.c3d60
    rts                                                               ; 4e60: 60          `   :3d60[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 4e61: ea ea ea... ... :3d61[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea,   0,   0,   0,   0,   0   ; 4e6d: ea ea ea... ... :3d6d[1]
    equb   0,   0,   0,   0,   0,   0,   0, &ff, &ff, &ff, &ff, &ff   ; 4e79: 00 00 00... ... :3d79[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 4e85: ff ff ff... ... :3d85[1]
    equb &ff, &1f,   6,   2                                           ; 4e91: ff 1f 06... ... :3d91[1]
    equs "**** STARSHIP CONTROLS ****"                                ; 4e95: 2a 2a 2a... *** :3d95[1]
    equb &1f, 3, 5                                                    ; 4eb0: 1f 03 05    ... :3db0[1]
    equs "Z  -  Rotate left"                                          ; 4eb3: 5a 20 20... Z   :3db3[1]
    equb &1f, 3, 6                                                    ; 4ec4: 1f 03 06    ... :3dc4[1]
    equs "X  -  Rotate right"                                         ; 4ec7: 58 20 20... X   :3dc7[1]
    equb &1f, 3, 7                                                    ; 4ed9: 1f 03 07    ... :3dd9[1]
    equs "N  -  Fire torpedoes"                                       ; 4edc: 4e 20 20... N   :3ddc[1]
    equb &1f, 3, 8                                                    ; 4ef0: 1f 03 08    ... :3df0[1]
    equs "M  -  Thrust"                                               ; 4ef3: 4d 20 20... M   :3df3[1]
    equb &1f, 3, 9                                                    ; 4eff: 1f 03 09    ... :3dff[1]
    equs ",  -  Brake"                                                ; 4f02: 2c 20 20... ,   :3e02[1]
    equb &1f, 3, &0b                                                  ; 4f0d: 1f 03 0b    ... :3e0d[1]
    equs "F  -  Launch port escape capsule"                           ; 4f10: 46 20 20... F   :3e10[1]
    equb &1f, 3, &0c                                                  ; 4f30: 1f 03 0c    ... :3e30[1]
    equs "G  -  Launch starboard escape capsule"                      ; 4f33: 47 20 20... G   :3e33[1]
    equb &1f, 0, &0e                                                  ; 4f58: 1f 00 0e    ... :3e58[1]
    equs "All the above may operate simultaneouslyAlternatively , "   ; 4f5b: 41 6c 6c... All :3e5b[1]
    equs "ONE of the following maybe depressed...."                   ; 4f93: 4f 4e 45... ONE :3e93[1]
    equb &1f, 3, &12                                                  ; 4fbb: 1f 03 12    ... :3ebb[1]
    equs "B  -  Shields ON / Scanners OFF"                            ; 4fbe: 42 20 20... B   :3ebe[1]
    equb &1f, 3, &13                                                  ; 4fdd: 1f 03 13    ... :3edd[1]
    equs "V  -  Scanners ON / Shields OFF"                            ; 4fe0: 56 20 20... V   :3ee0[1]
    equb &1f, 3, &14                                                  ; 4fff: 1f 03 14    ... :3eff[1]
    equs "C  -  ", '"', "Auto-Changeover", '"', " ON"                 ; 5002: 43 20 20... C   :3f02[1]
    equb &1f, 3, &16                                                  ; 501c: 1f 03 16    ... :3f1c[1]
    equs "f0 -  ", '"', "Rotation Dampers", '"', " ON"                ; 501f: 66 30 20... f0  :3f1f[1]
    equb &1f, 3, &17                                                  ; 503a: 1f 03 17    ... :3f3a[1]
    equs "2  -  ", '"', "Rotation Dampers", '"', " OFF"               ; 503d: 32 20 20... 2   :3f3d[1]
    equb &1f, 3, &18                                                  ; 5059: 1f 03 18    ... :3f59[1]
    equs "f1 -  ", '"', "Velocity Dampers", '"', " ON"                ; 505c: 66 31 20... f1  :3f5c[1]
    equb &1f, 3, &19                                                  ; 5077: 1f 03 19    ... :3f77[1]
    equs "3  -  ", '"', "Velocity Dampers", '"', " OFF"               ; 507a: 33 20 20... 3   :3f7a[1]
    equb &1f, 3, &1b                                                  ; 5096: 1f 03 1b    ... :3f96[1]
    equs "<COPY>   - FREEZE"                                          ; 5099: 3c 43 4f... <CO :3f99[1]
    equb &1f, 3, &1c                                                  ; 50aa: 1f 03 1c    ... :3faa[1]
    equs "<DELETE> - UNFREEZE"                                        ; 50ad: 3c 44 45... <DE :3fad[1]
    equb &1f, &0d, &1f                                                ; 50c0: 1f 0d 1f    ... :3fc0[1]
    equs "Press <RETURN>~"                                            ; 50c3: 50 72 65... Pre :3fc3[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 50d2: 00 00 00... ... :3fd2[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 50de: 00 00 00... ... :3fde[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 50ea: 00 00 00... ... :3fea[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, &ff, &ff   ; 50f6: 00 00 00... ... :3ff6[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ea, &ea, &ea   ; 5102: ff ff ff... ... :4002[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea                       ; 510e: ea ea ea... ... :400e[1]

; &5116 referenced 1 time by &41f9[1]
.sub_c4016
    lda #&92                                                          ; 5116: a9 92       ..  :4016[1]
    sta l0080                                                         ; 5118: 85 80       ..  :4018[1]
    lda #&3d ; '='                                                    ; 511a: a9 3d       .=  :401a[1]
    sta l0081                                                         ; 511c: 85 81       ..  :401c[1]
    ldy #0                                                            ; 511e: a0 00       ..  :401e[1]
; &5120 referenced 2 times by &402b[1], &402f[1]
.c4020
    lda (l0080),y                                                     ; 5120: b1 80       ..  :4020[1]
    cmp #&7e ; '~'                                                    ; 5122: c9 7e       .~  :4022[1]
    beq c4031                                                         ; 5124: f0 0b       ..  :4024[1]
    jsr oswrch                                                        ; 5126: 20 ee ff     .. :4026[1]   ; Write character
    inc l0080                                                         ; 5129: e6 80       ..  :4029[1]
    bne c4020                                                         ; 512b: d0 f3       ..  :402b[1]
    inc l0081                                                         ; 512d: e6 81       ..  :402d[1]
    bne c4020                                                         ; 512f: d0 ef       ..  :402f[1]
; &5131 referenced 1 time by &4024[1]
.c4031
    lda #0                                                            ; 5131: a9 00       ..  :4031[1]
    jsr sub_c404c                                                     ; 5133: 20 4c 40     L@ :4033[1]
    lda #3                                                            ; 5136: a9 03       ..  :4036[1]
    jsr sub_c404c                                                     ; 5138: 20 4c 40     L@ :4038[1]
    lda #&1d                                                          ; 513b: a9 1d       ..  :403b[1]
    jsr sub_c404c                                                     ; 513d: 20 4c 40     L@ :403d[1]
    rts                                                               ; 5140: 60          `   :4040[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea        ; 5141: ea ea ea... ... :4041[1]

; &514c referenced 10 times by &4033[1], &4038[1], &403d[1], &4230[1], &4235[1], &4468[1], &446d[1], &4472[1], &47e5[1], &47ea[1]
.sub_c404c
    tay                                                               ; 514c: a8          .   :404c[1]
    lda #&1f                                                          ; 514d: a9 1f       ..  :404d[1]
    jsr oswrch                                                        ; 514f: 20 ee ff     .. :404f[1]   ; Write character 31
    lda #0                                                            ; 5152: a9 00       ..  :4052[1]
    jsr oswrch                                                        ; 5154: 20 ee ff     .. :4054[1]   ; Write character 0
    tya                                                               ; 5157: 98          .   :4057[1]
    jsr oswrch                                                        ; 5158: 20 ee ff     .. :4058[1]   ; Write character
    ldy #&28 ; '('                                                    ; 515b: a0 28       .(  :405b[1]
    lda #&5f ; '_'                                                    ; 515d: a9 5f       ._  :405d[1]
; &515f referenced 1 time by &4063[1]
.loop_c405f
    jsr oswrch                                                        ; 515f: 20 ee ff     .. :405f[1]   ; Write character 95
    dey                                                               ; 5162: 88          .   :4062[1]
    bne loop_c405f                                                    ; 5163: d0 fa       ..  :4063[1]
    rts                                                               ; 5165: 60          `   :4065[1]

; &5166 referenced 1 time by &4261[1]
.l4066
    equb &df, &8e, &8d, &8c, &eb, &8b, &8a, &e9, &89                  ; 5166: df 8e 8d... ... :4066[1]
; &516f referenced 2 times by &4288[1], &428d[1]
.l406f
    equb &88                                                          ; 516f: 88          .   :406f[1]
; &5170 referenced 1 time by &41a9[1]
.l4070
    equb 0, 0                                                         ; 5170: 00 00       ..  :4070[1]
; &5172 referenced 1 time by &429a[1]
.l4072
    equb 0, 0, 0, 1, 0, 1, &60, &ea, 0                                ; 5172: 00 00 00... ... :4072[1]
; &517b referenced 1 time by &4290[1]
.l407b
    equb 1, &d7, &5b, &20                                             ; 517b: 01 d7 5b... ..[ :407b[1]
; &517f referenced 1 time by &4295[1]
.l407f
    equb &d6, &1c, &26, &16, &1c, &1f, 6, 3                           ; 517f: d6 1c 26... ..& :407f[1]
    equs "**** COMBAT PREPARATION ****"                               ; 5187: 2a 2a 2a... *** :4087[1]
    equb &1f, 6, 7                                                    ; 51a3: 1f 06 07    ... :40a3[1]
    equs "f0  View starship controls"                                 ; 51a6: 66 30 20... f0  :40a6[1]
    equb &1f, 6, 9                                                    ; 51c0: 1f 06 09    ... :40c0[1]
    equs "f1  View Star-Fleet records"                                ; 51c3: 66 31 20... f1  :40c3[1]
    equb &1f, 6, &0b                                                  ; 51de: 1f 06 0b    ... :40de[1]
    equs "f2  Enable"                                                 ; 51e1: 66 32 20... f2  :40e1[1]
    equb &1f, &11, &0c                                                ; 51eb: 1f 11 0c    ... :40eb[1]
    equs "}the sound effects"                                         ; 51ee: 7d 74 68... }th :40ee[1]
    equb &1f, 6, &0d                                                  ; 5200: 1f 06 0d    ... :4100[1]
    equs "f3  Disable"                                                ; 5203: 66 33 20... f3  :4103[1]
    equb &1f, 6, &0f                                                  ; 520e: 1f 06 0f    ... :410e[1]
    equs "f4  Small"                                                  ; 5211: 66 34 20... f4  :4111[1]
    equb &1f, &11, &10                                                ; 521a: 1f 11 10    ... :411a[1]
    equs "}starship torpedoes"                                        ; 521d: 7d 73 74... }st :411d[1]
    equb &1f, 6, &11                                                  ; 5230: 1f 06 11    ... :4130[1]
    equs "f5  Large"                                                  ; 5233: 66 35 20... f5  :4133[1]
    equb &1f, 6, &13                                                  ; 523c: 1f 06 13    ... :413c[1]
    equs "f6  Small"                                                  ; 523f: 66 36 20... f6  :413f[1]
    equb &1f, &11, &14                                                ; 5248: 1f 11 14    ... :4148[1]
    equs "}enemy torpedoes"                                           ; 524b: 7d 65 6e... }en :414b[1]
    equb &1f, 6, &15                                                  ; 525b: 1f 06 15    ... :415b[1]
    equs "f7  Large"                                                  ; 525e: 66 37 20... f7  :415e[1]
    equb &1f, 6, &17                                                  ; 5267: 1f 06 17    ... :4167[1]
    equs "f8  Keyboard"                                               ; 526a: 66 38 20... f8  :416a[1]
    equb &1f, 6, &19                                                  ; 5276: 1f 06 19    ... :4176[1]
    equs "f9  Joystick"                                               ; 5279: 66 39 20... f9  :4179[1]
    equb &1f, &0d, &1e                                                ; 5285: 1f 0d 1e    ... :4185[1]
    equs "Press <RETURN>~"                                            ; 5288: 50 72 65... Pre :4188[1]
    equb &ff, &ff, &ff, &ff                                           ; 5297: ff ff ff... ... :4197[1]

; &529b referenced 1 time by &423b[1]
.sub_c419b
    ldx #3                                                            ; 529b: a2 03       ..  :419b[1]
; &529d referenced 1 time by &41b8[1]
.loop_c419d
    lda #&1f                                                          ; 529d: a9 1f       ..  :419d[1]
    jsr oswrch                                                        ; 529f: 20 ee ff     .. :419f[1]   ; Write character 31
    lda #9                                                            ; 52a2: a9 09       ..  :41a2[1]
    jsr oswrch                                                        ; 52a4: 20 ee ff     .. :41a4[1]   ; Write character 9
    txa                                                               ; 52a7: 8a          .   :41a7[1]
    asl a                                                             ; 52a8: 0a          .   :41a8[1]
    adc l4070,x                                                       ; 52a9: 7d 70 40    }p@ :41a9[1]
    asl a                                                             ; 52ac: 0a          .   :41ac[1]
    adc #&0b                                                          ; 52ad: 69 0b       i.  :41ad[1]
    jsr oswrch                                                        ; 52af: 20 ee ff     .. :41af[1]   ; Write character
    lda #&2d ; '-'                                                    ; 52b2: a9 2d       .-  :41b2[1]
    jsr oswrch                                                        ; 52b4: 20 ee ff     .. :41b4[1]   ; Write character 45
    dex                                                               ; 52b7: ca          .   :41b7[1]
    bpl loop_c419d                                                    ; 52b8: 10 e3       ..  :41b8[1]
    rts                                                               ; 52ba: 60          `   :41ba[1]

; &52bb referenced 3 times by &41ff[1], &4475[1], &462b[1]
.sub_c41bb
    lda #osbyte_flush_buffer_class                                    ; 52bb: a9 0f       ..  :41bb[1]
    ldx #1                                                            ; 52bd: a2 01       ..  :41bd[1]
    ldy #0                                                            ; 52bf: a0 00       ..  :41bf[1]
    jsr osbyte                                                        ; 52c1: 20 f4 ff     .. :41c1[1]   ; Flush input buffers (X non-zero)
; &52c4 referenced 3 times by &41d3[1], &41db[1], &41e6[1]
.c41c4
    lda #osbyte_inkey                                                 ; 52c4: a9 81       ..  :41c4[1]
    ldx #&32 ; '2'                                                    ; 52c6: a2 32       .2  :41c6[1]
    ldy #0                                                            ; 52c8: a0 00       ..  :41c8[1]
    jsr osbyte                                                        ; 52ca: 20 f4 ff     .. :41ca[1]   ; Wait for a key press within 50 centiseconds
    cpy #&1b                                                          ; 52cd: c0 1b       ..  :41cd[1]   ; Y is zero if key pressed; &ff if no key pressed; &1b if ESCAPE pressed
    beq c41e1                                                         ; 52cf: f0 10       ..  :41cf[1]
    cpy #&ff                                                          ; 52d1: c0 ff       ..  :41d1[1]
    beq c41c4                                                         ; 52d3: f0 ef       ..  :41d3[1]
; X is the ASCII value of the key pressed (assuming Y=0)
    cpx #&60 ; '`'                                                    ; 52d5: e0 60       .`  :41d5[1]
    beq c41de                                                         ; 52d7: f0 05       ..  :41d7[1]
    cpx #&0d                                                          ; 52d9: e0 0d       ..  :41d9[1]
    bne c41c4                                                         ; 52db: d0 e7       ..  :41db[1]
    rts                                                               ; 52dd: 60          `   :41dd[1]

; &52de referenced 1 time by &41d7[1]
.c41de
    brk                                                               ; 52de: 00          .   :41de[1]

    equb &60, 0                                                       ; 52df: 60 00       `.  :41df[1]

; &52e1 referenced 1 time by &41cf[1]
.c41e1
    lda #osbyte_acknowledge_escape                                    ; 52e1: a9 7e       .~  :41e1[1]
    jsr osbyte                                                        ; 52e3: 20 f4 ff     .. :41e3[1]   ; Clear escape condition and perform escape effects
    jmp c41c4                                                         ; 52e6: 4c c4 41    L.A :41e6[1]

; &52e9 referenced 1 time by &4272[1]
.sub_c41e9
    lda #&16                                                          ; 52e9: a9 16       ..  :41e9[1]
    jsr oswrch                                                        ; 52eb: 20 ee ff     .. :41eb[1]   ; Write character 22
    lda #4                                                            ; 52ee: a9 04       ..  :41ee[1]
    jsr oswrch                                                        ; 52f0: 20 ee ff     .. :41f0[1]   ; Write character 4
    jsr sub_c2336                                                     ; 52f3: 20 36 23     6# :41f3[1]
    jsr sub_c2312                                                     ; 52f6: 20 12 23     .# :41f6[1]
    jsr sub_c4016                                                     ; 52f9: 20 16 40     .@ :41f9[1]
    jsr sub_c2306                                                     ; 52fc: 20 06 23     .# :41fc[1]
    jsr sub_c41bb                                                     ; 52ff: 20 bb 41     .A :41ff[1]
    rts                                                               ; 5302: 60          `   :4202[1]

; &5303 referenced 5 times by &4275[1], &427f[1], &42a1[1], &4639[1], &486b[1]
.c4203
    lda #&16                                                          ; 5303: a9 16       ..  :4203[1]
    jsr oswrch                                                        ; 5305: 20 ee ff     .. :4205[1]   ; Write character 22
    lda #4                                                            ; 5308: a9 04       ..  :4208[1]
    jsr oswrch                                                        ; 530a: 20 ee ff     .. :420a[1]   ; Write character 4
    jsr sub_c2336                                                     ; 530d: 20 36 23     6# :420d[1]
    jsr sub_c2312                                                     ; 5310: 20 12 23     .# :4210[1]
    lda #&84                                                          ; 5313: a9 84       ..  :4213[1]
    sta l0080                                                         ; 5315: 85 80       ..  :4215[1]
    lda #&40 ; '@'                                                    ; 5317: a9 40       .@  :4217[1]
    sta l0081                                                         ; 5319: 85 81       ..  :4219[1]
    ldy #0                                                            ; 531b: a0 00       ..  :421b[1]
; &531d referenced 2 times by &4228[1], &422c[1]
.c421d
    lda (l0080),y                                                     ; 531d: b1 80       ..  :421d[1]
    cmp #&7e ; '~'                                                    ; 531f: c9 7e       .~  :421f[1]
    beq c422e                                                         ; 5321: f0 0b       ..  :4221[1]
    jsr oswrch                                                        ; 5323: 20 ee ff     .. :4223[1]   ; Write character
    inc l0080                                                         ; 5326: e6 80       ..  :4226[1]
    bne c421d                                                         ; 5328: d0 f3       ..  :4228[1]
    inc l0081                                                         ; 532a: e6 81       ..  :422a[1]
    bne c421d                                                         ; 532c: d0 ef       ..  :422c[1]
; &532e referenced 1 time by &4221[1]
.c422e
    lda #1                                                            ; 532e: a9 01       ..  :422e[1]
    jsr sub_c404c                                                     ; 5330: 20 4c 40     L@ :4230[1]
    lda #4                                                            ; 5333: a9 04       ..  :4233[1]
    jsr sub_c404c                                                     ; 5335: 20 4c 40     L@ :4235[1]
    jsr sub_c2306                                                     ; 5338: 20 06 23     .# :4238[1]
    jsr sub_c419b                                                     ; 533b: 20 9b 41     .A :423b[1]
; &533e referenced 1 time by &425d[1]
.loop_c423e
    lda #osbyte_flush_buffer_class                                    ; 533e: a9 0f       ..  :423e[1]
    ldx #1                                                            ; 5340: a2 01       ..  :4240[1]
    jsr osbyte                                                        ; 5342: 20 f4 ff     .. :4242[1]   ; Flush input buffers (X non-zero)
    lda #osbyte_inkey                                                 ; 5345: a9 81       ..  :4245[1]
    ldx #5                                                            ; 5347: a2 05       ..  :4247[1]
    ldy #0                                                            ; 5349: a0 00       ..  :4249[1]
    jsr osbyte                                                        ; 534b: 20 f4 ff     .. :424b[1]   ; Wait for a key press within 5 centiseconds
; X is the ASCII value of the key pressed (assuming Y=0)
    cpx #&0d                                                          ; 534e: e0 0d       ..  :424e[1]
    beq c42a4                                                         ; 5350: f0 52       .R  :4250[1]
    lda #osbyte_acknowledge_escape                                    ; 5352: a9 7e       .~  :4252[1]
    jsr osbyte                                                        ; 5354: 20 f4 ff     .. :4254[1]   ; Clear escape condition and perform escape effects
    lda #&0a                                                          ; 5357: a9 0a       ..  :4257[1]
    sta l007a                                                         ; 5359: 85 7a       .z  :4259[1]
; &535b referenced 2 times by &426c[1], &428b[1]
.c425b
    dec l007a                                                         ; 535b: c6 7a       .z  :425b[1]
    bmi loop_c423e                                                    ; 535d: 30 df       0.  :425d[1]
    ldx l007a                                                         ; 535f: a6 7a       .z  :425f[1]
    lda l4066,x                                                       ; 5361: bd 66 40    .f@ :4261[1]
    tax                                                               ; 5364: aa          .   :4264[1]
    tay                                                               ; 5365: a8          .   :4265[1]
    lda #osbyte_inkey                                                 ; 5366: a9 81       ..  :4266[1]
    jsr osbyte                                                        ; 5368: 20 f4 ff     .. :4268[1]   ; Read key within time limit, or read a specific key, or read machine type
    tya                                                               ; 536b: 98          .   :426b[1]
    beq c425b                                                         ; 536c: f0 ed       ..  :426c[1]
    ldx l007a                                                         ; 536e: a6 7a       .z  :426e[1]
    bne c4278                                                         ; 5370: d0 06       ..  :4270[1]
    jsr sub_c41e9                                                     ; 5372: 20 e9 41     .A :4272[1]
    jmp c4203                                                         ; 5375: 4c 03 42    L.B :4275[1]

; &5378 referenced 1 time by &4270[1]
.c4278
    cpx #1                                                            ; 5378: e0 01       ..  :4278[1]
    bne c4282                                                         ; 537a: d0 06       ..  :427a[1]
    jsr sub_c43d7                                                     ; 537c: 20 d7 43     .C :427c[1]
    jmp c4203                                                         ; 537f: 4c 03 42    L.B :427f[1]

; &5382 referenced 1 time by &427a[1]
.c4282
    txa                                                               ; 5382: 8a          .   :4282[1]
    lsr a                                                             ; 5383: 4a          J   :4283[1]
    tay                                                               ; 5384: a8          .   :4284[1]
    txa                                                               ; 5385: 8a          .   :4285[1]
    and #1                                                            ; 5386: 29 01       ).  :4286[1]
    cmp l406f,y                                                       ; 5388: d9 6f 40    .o@ :4288[1]
    beq c425b                                                         ; 538b: f0 ce       ..  :428b[1]
    sta l406f,y                                                       ; 538d: 99 6f 40    .o@ :428d[1]
    lda l407b,y                                                       ; 5390: b9 7b 40    .{@ :4290[1]
    sta l0080                                                         ; 5393: 85 80       ..  :4293[1]
    lda l407f,y                                                       ; 5395: b9 7f 40    ..@ :4295[1]
    sta l0081                                                         ; 5398: 85 81       ..  :4298[1]
    lda l4072,x                                                       ; 539a: bd 72 40    .r@ :429a[1]
    ldy #0                                                            ; 539d: a0 00       ..  :429d[1]
    sta (l0080),y                                                     ; 539f: 91 80       ..  :429f[1]
    jmp c4203                                                         ; 53a1: 4c 03 42    L.B :42a1[1]

; &53a4 referenced 1 time by &4250[1]
.c42a4
    rts                                                               ; 53a4: 60          `   :42a4[1]

    equb &1f, 6, 1                                                    ; 53a5: 1f 06 01    ... :42a5[1]
    equs "**** STAR-FLEET RECORDS ****"                               ; 53a8: 2a 2a 2a... *** :42a8[1]
    equb &1f, 0, 4                                                    ; 53c4: 1f 00 04    ... :42c4[1]
    equs "Below is a list of the most highly ratedof Star-Fleet's "   ; 53c7: 42 65 6c... Bel :42c7[1]
    equs "past commanders."                                           ; 53ff: 70 61 73... pas :42ff[1]
    equb &1f, &0d, &18                                                ; 540f: 1f 0d 18    ... :430f[1]
    equs "Press <RETURN>~"                                            ; 5412: 50 72 65... Pre :4312[1]
    equb &0d, &ff, &ff, &ff                                           ; 5421: 0d ff ff... ... :4321[1]
; &5425 referenced 1 time by &4450[1]
.l4325
    equb &ff                                                          ; 5425: ff          .   :4325[1]
; &5426 referenced 1 time by &4456[1]
.l4326
    equb &ff                                                          ; 5426: ff          .   :4326[1]
; &5427 referenced 1 time by &445c[1]
.l4327
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 5427: ea ea ea... ... :4327[1]
    equb &ea, &ea                                                     ; 5433: ea ea       ..  :4333[1]
; &5435 referenced 4 times by &4439[1], &4506[1], &4532[1], &4579[1]
.l4335
    equb 0                                                            ; 5435: 00          .   :4335[1]
; &5436 referenced 2 times by &4510[1], &4573[1]
.l4336
    equb 0                                                            ; 5436: 00          .   :4336[1]
; &5437 referenced 2 times by &451a[1], &456d[1]
.l4337
    equb 0                                                            ; 5437: 00          .   :4337[1]
; &5438 referenced 3 times by &4419[1], &4585[1], &4592[1]
.l4338
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0                        ; 5438: 00 00 00... ... :4338[1]
; &5445 referenced 1 time by &4535[1]
.l4345
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5445: 00 00 00... ... :4345[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5451: 00 00 00... ... :4351[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 545d: 00 00 00... ... :435d[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5469: 00 00 00... ... :4369[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5475: 00 00 00... ... :4375[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5481: 00 00 00... ... :4381[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 548d: 00 00 00... ... :438d[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5499: 00 00 00... ... :4399[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 54a5: 00 00 00... ... :43a5[1]
    equb   0,   0,   0,   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 54b1: 00 00 00... ... :43b1[1]
    equb &ff, &ff, &ff,   0,   0,   0,   0,   0, &ea, &ea, &ea, &ea   ; 54bd: ff ff ff... ... :43bd[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 54c9: ea ea ea... ... :43c9[1]
    equb &ea, &ea                                                     ; 54d5: ea ea       ..  :43d5[1]

; &54d7 referenced 2 times by &427c[1], &4599[1]
.sub_c43d7
    lda #&16                                                          ; 54d7: a9 16       ..  :43d7[1]
    jsr oswrch                                                        ; 54d9: 20 ee ff     .. :43d9[1]   ; Write character 22
    lda #7                                                            ; 54dc: a9 07       ..  :43dc[1]
    jsr oswrch                                                        ; 54de: 20 ee ff     .. :43de[1]   ; Write character 7
    jsr sub_c2336                                                     ; 54e1: 20 36 23     6# :43e1[1]
    lda #&a5                                                          ; 54e4: a9 a5       ..  :43e4[1]
    sta l0080                                                         ; 54e6: 85 80       ..  :43e6[1]
    lda #&42 ; 'B'                                                    ; 54e8: a9 42       .B  :43e8[1]
    sta l0081                                                         ; 54ea: 85 81       ..  :43ea[1]
    ldy #0                                                            ; 54ec: a0 00       ..  :43ec[1]
; &54ee referenced 2 times by &43f9[1], &43fd[1]
.c43ee
    lda (l0080),y                                                     ; 54ee: b1 80       ..  :43ee[1]
    cmp #&7e ; '~'                                                    ; 54f0: c9 7e       .~  :43f0[1]
    beq c43ff                                                         ; 54f2: f0 0b       ..  :43f2[1]
    jsr oswrch                                                        ; 54f4: 20 ee ff     .. :43f4[1]   ; Write character
    inc l0080                                                         ; 54f7: e6 80       ..  :43f7[1]
    bne c43ee                                                         ; 54f9: d0 f3       ..  :43f9[1]
    inc l0081                                                         ; 54fb: e6 81       ..  :43fb[1]
    bne c43ee                                                         ; 54fd: d0 ef       ..  :43fd[1]
; &54ff referenced 1 time by &43f2[1]
.c43ff
    lda #8                                                            ; 54ff: a9 08       ..  :43ff[1]
    sta l0075                                                         ; 5501: 85 75       .u  :4401[1]
    ldx #0                                                            ; 5503: a2 00       ..  :4403[1]
; &5505 referenced 1 time by &4464[1]
.c4405
    lda #&1f                                                          ; 5505: a9 1f       ..  :4405[1]
    jsr oswrch                                                        ; 5507: 20 ee ff     .. :4407[1]   ; Write character 31
    lda #7                                                            ; 550a: a9 07       ..  :440a[1]
    jsr oswrch                                                        ; 550c: 20 ee ff     .. :440c[1]   ; Write character 7
    txa                                                               ; 550f: 8a          .   :440f[1]
    lsr a                                                             ; 5510: 4a          J   :4410[1]
    lsr a                                                             ; 5511: 4a          J   :4411[1]
    lsr a                                                             ; 5512: 4a          J   :4412[1]
    clc                                                               ; 5513: 18          .   :4413[1]
    adc #8                                                            ; 5514: 69 08       i.  :4414[1]
    jsr oswrch                                                        ; 5516: 20 ee ff     .. :4416[1]   ; Write character
    lda l4338,x                                                       ; 5519: bd 38 43    .8C :4419[1]
    beq c4466                                                         ; 551c: f0 48       .H  :441c[1]
    txa                                                               ; 551e: 8a          .   :441e[1]
    lsr a                                                             ; 551f: 4a          J   :441f[1]
    lsr a                                                             ; 5520: 4a          J   :4420[1]
    lsr a                                                             ; 5521: 4a          J   :4421[1]
    lsr a                                                             ; 5522: 4a          J   :4422[1]
    clc                                                               ; 5523: 18          .   :4423[1]
    adc #&31 ; '1'                                                    ; 5524: 69 31       i1  :4424[1]
    jsr oswrch                                                        ; 5526: 20 ee ff     .. :4426[1]   ; Write character
    lda #&20 ; ' '                                                    ; 5529: a9 20       .   :4429[1]
    jsr oswrch                                                        ; 552b: 20 ee ff     .. :442b[1]   ; Write character 32
    jsr oswrch                                                        ; 552e: 20 ee ff     .. :442e[1]   ; Write character
    jsr oswrch                                                        ; 5531: 20 ee ff     .. :4431[1]   ; Write character
    inx                                                               ; 5534: e8          .   :4434[1]
    inx                                                               ; 5535: e8          .   :4435[1]
    inx                                                               ; 5536: e8          .   :4436[1]
    ldy #&0d                                                          ; 5537: a0 0d       ..  :4437[1]
; &5539 referenced 1 time by &4441[1]
.loop_c4439
    lda l4335,x                                                       ; 5539: bd 35 43    .5C :4439[1]
    jsr oswrch                                                        ; 553c: 20 ee ff     .. :443c[1]   ; Write character
    inx                                                               ; 553f: e8          .   :443f[1]
    dey                                                               ; 5540: 88          .   :4440[1]
    bne loop_c4439                                                    ; 5541: d0 f6       ..  :4441[1]
    lda #&20 ; ' '                                                    ; 5543: a9 20       .   :4443[1]
    jsr oswrch                                                        ; 5545: 20 ee ff     .. :4445[1]   ; Write character 32
    jsr oswrch                                                        ; 5548: 20 ee ff     .. :4448[1]   ; Write character
    jsr oswrch                                                        ; 554b: 20 ee ff     .. :444b[1]   ; Write character
    ldy #&20 ; ' '                                                    ; 554e: a0 20       .   :444e[1]
    lda l4325,x                                                       ; 5550: bd 25 43    .%C :4450[1]
    jsr sub_c4479                                                     ; 5553: 20 79 44     yD :4453[1]
    lda l4326,x                                                       ; 5556: bd 26 43    .&C :4456[1]
    jsr sub_c4479                                                     ; 5559: 20 79 44     yD :4459[1]
    lda l4327,x                                                       ; 555c: bd 27 43    .'C :445c[1]
    jsr sub_c4479                                                     ; 555f: 20 79 44     yD :445f[1]
    dec l0075                                                         ; 5562: c6 75       .u  :4462[1]
    bne c4405                                                         ; 5564: d0 9f       ..  :4464[1]
; &5566 referenced 1 time by &441c[1]
.c4466
    lda #0                                                            ; 5566: a9 00       ..  :4466[1]
    jsr sub_c404c                                                     ; 5568: 20 4c 40     L@ :4468[1]
    lda #2                                                            ; 556b: a9 02       ..  :446b[1]
    jsr sub_c404c                                                     ; 556d: 20 4c 40     L@ :446d[1]
    lda #&17                                                          ; 5570: a9 17       ..  :4470[1]
    jsr sub_c404c                                                     ; 5572: 20 4c 40     L@ :4472[1]
    jsr sub_c41bb                                                     ; 5575: 20 bb 41     .A :4475[1]
    rts                                                               ; 5578: 60          `   :4478[1]

; &5579 referenced 3 times by &4453[1], &4459[1], &445f[1]
.sub_c4479
    sta l0088                                                         ; 5579: 85 88       ..  :4479[1]
    lsr a                                                             ; 557b: 4a          J   :447b[1]
    lsr a                                                             ; 557c: 4a          J   :447c[1]
    lsr a                                                             ; 557d: 4a          J   :447d[1]
    lsr a                                                             ; 557e: 4a          J   :447e[1]
    jsr sub_c4486                                                     ; 557f: 20 86 44     .D :447f[1]
    lda l0088                                                         ; 5582: a5 88       ..  :4482[1]
    and #&0f                                                          ; 5584: 29 0f       ).  :4484[1]
; &5586 referenced 1 time by &447f[1]
.sub_c4486
    bne c448b                                                         ; 5586: d0 03       ..  :4486[1]
    tya                                                               ; 5588: 98          .   :4488[1]
    bne c4490                                                         ; 5589: d0 05       ..  :4489[1]
; &558b referenced 1 time by &4486[1]
.c448b
    ldy #&30 ; '0'                                                    ; 558b: a0 30       .0  :448b[1]
    clc                                                               ; 558d: 18          .   :448d[1]
    adc #&30 ; '0'                                                    ; 558e: 69 30       i0  :448e[1]
; &5590 referenced 1 time by &4489[1]
.c4490
    jsr oswrch                                                        ; 5590: 20 ee ff     .. :4490[1]   ; Write character
    rts                                                               ; 5593: 60          `   :4493[1]

    equb &1f, 0, &0a                                                  ; 5594: 1f 00 0a    ... :4494[1]
    equs "Enter your name for Star-Fleet records."                    ; 5597: 45 6e 74... Ent :4497[1]
    equb &1f, &0d, &10                                                ; 55be: 1f 0d 10    ... :44be[1]
    equs "-------------"                                              ; 55c1: 2d 2d 2d... --- :44c1[1]
    equb &1f, &0d, &0f, &7e, &0d                                      ; 55ce: 1f 0d 0f... ... :44ce[1]
; &55d3 referenced 1 time by &4582[1]
.l44d3
    equs "PPPPPPPPPPPP"                                               ; 55d3: 50 50 50... PPP :44d3[1]
    equb &88, &0d                                                     ; 55df: 88 0d       ..  :44df[1]
.l44e1
    equb &d3, &44, &0d, &20, &ff, 0, &ea                              ; 55e1: d3 44 0d... .D. :44e1[1]   ; Buffer address for input (2 bytes); Maximum line length; Min. acceptable character value; Max. acceptable character value

; &55e8 referenced 1 time by &4633[1]
.sub_c44e8
    lda #&16                                                          ; 55e8: a9 16       ..  :44e8[1]
    jsr oswrch                                                        ; 55ea: 20 ee ff     .. :44ea[1]   ; Write character 22
    lda #4                                                            ; 55ed: a9 04       ..  :44ed[1]
    jsr oswrch                                                        ; 55ef: 20 ee ff     .. :44ef[1]   ; Write character 4
    lda l2d65                                                         ; 55f2: ad 65 2d    .e- :44f2[1]
    ora l2d66                                                         ; 55f5: 0d 66 2d    .f- :44f5[1]
    ora l2d67                                                         ; 55f8: 0d 67 2d    .g- :44f8[1]
    beq c4528                                                         ; 55fb: f0 2b       .+  :44fb[1]
    lda #8                                                            ; 55fd: a9 08       ..  :44fd[1]
    sta l0075                                                         ; 55ff: 85 75       .u  :44ff[1]
    ldx #0                                                            ; 5601: a2 00       ..  :4501[1]
; &5603 referenced 1 time by &4526[1]
.c4503
    lda l2d67                                                         ; 5603: ad 67 2d    .g- :4503[1]
    cmp l4335,x                                                       ; 5606: dd 35 43    .5C :4506[1]
    bcc c451f                                                         ; 5609: 90 14       ..  :4509[1]
    bne c4529                                                         ; 560b: d0 1c       ..  :450b[1]
    lda l2d66                                                         ; 560d: ad 66 2d    .f- :450d[1]
    cmp l4336,x                                                       ; 5610: dd 36 43    .6C :4510[1]
    bcc c451f                                                         ; 5613: 90 0a       ..  :4513[1]
    bne c4529                                                         ; 5615: d0 12       ..  :4515[1]
    lda l2d65                                                         ; 5617: ad 65 2d    .e- :4517[1]
    cmp l4337,x                                                       ; 561a: dd 37 43    .7C :451a[1]
    bcs c4529                                                         ; 561d: b0 0a       ..  :451d[1]
; &561f referenced 2 times by &4509[1], &4513[1]
.c451f
    txa                                                               ; 561f: 8a          .   :451f[1]
    clc                                                               ; 5620: 18          .   :4520[1]
    adc #&10                                                          ; 5621: 69 10       i.  :4521[1]
    tax                                                               ; 5623: aa          .   :4523[1]
    dec l0075                                                         ; 5624: c6 75       .u  :4524[1]
    bne c4503                                                         ; 5626: d0 db       ..  :4526[1]
; &5628 referenced 1 time by &44fb[1]
.c4528
    rts                                                               ; 5628: 60          `   :4528[1]

; &5629 referenced 3 times by &450b[1], &4515[1], &451d[1]
.c4529
    stx l0088                                                         ; 5629: 86 88       ..  :4529[1]
    ldx #&70 ; 'p'                                                    ; 562b: a2 70       .p  :452b[1]
; &562d referenced 1 time by &4538[1]
.loop_c452d
    cpx l0088                                                         ; 562d: e4 88       ..  :452d[1]
    beq c453b                                                         ; 562f: f0 0a       ..  :452f[1]
    dex                                                               ; 5631: ca          .   :4531[1]
    lda l4335,x                                                       ; 5632: bd 35 43    .5C :4532[1]
    sta l4345,x                                                       ; 5635: 9d 45 43    .EC :4535[1]
    jmp loop_c452d                                                    ; 5638: 4c 2d 45    L-E :4538[1]

; &563b referenced 1 time by &452f[1]
.c453b
    lda #&94                                                          ; 563b: a9 94       ..  :453b[1]
    sta l0080                                                         ; 563d: 85 80       ..  :453d[1]
    lda #&44 ; 'D'                                                    ; 563f: a9 44       .D  :453f[1]
    sta l0081                                                         ; 5641: 85 81       ..  :4541[1]
    ldy #0                                                            ; 5643: a0 00       ..  :4543[1]
; &5645 referenced 2 times by &4550[1], &4554[1]
.c4545
    lda (l0080),y                                                     ; 5645: b1 80       ..  :4545[1]
    cmp #&7e ; '~'                                                    ; 5647: c9 7e       .~  :4547[1]
    beq c4556                                                         ; 5649: f0 0b       ..  :4549[1]
    jsr oswrch                                                        ; 564b: 20 ee ff     .. :454b[1]   ; Write character
    inc l0080                                                         ; 564e: e6 80       ..  :454e[1]
    bne c4545                                                         ; 5650: d0 f3       ..  :4550[1]
    inc l0081                                                         ; 5652: e6 81       ..  :4552[1]
    bne c4545                                                         ; 5654: d0 ef       ..  :4554[1]
; &5656 referenced 1 time by &4549[1]
.c4556
    ldx #<(l44e1)                                                     ; 5656: a2 e1       ..  :4556[1]
    ldy #>(l44e1)                                                     ; 5658: a0 44       .D  :4558[1]
    lda #osword_read_line                                             ; 565a: a9 00       ..  :455a[1]
    jsr osword                                                        ; 565c: 20 f1 ff     .. :455c[1]   ; Read line from input stream (exits with C=1 if ESCAPE pressed)
    sty l007b                                                         ; 565f: 84 7b       .{  :455f[1]   ; Y contains line length, including carriage return if used.
    bcc c4568                                                         ; 5661: 90 05       ..  :4561[1]
    lda #osbyte_acknowledge_escape                                    ; 5663: a9 7e       .~  :4563[1]
    jsr osbyte                                                        ; 5665: 20 f4 ff     .. :4565[1]   ; Clear escape condition and perform escape effects
; &5668 referenced 1 time by &4561[1]
.c4568
    ldx l0088                                                         ; 5668: a6 88       ..  :4568[1]
    lda l2d65                                                         ; 566a: ad 65 2d    .e- :456a[1]
    sta l4337,x                                                       ; 566d: 9d 37 43    .7C :456d[1]
    lda l2d66                                                         ; 5670: ad 66 2d    .f- :4570[1]
    sta l4336,x                                                       ; 5673: 9d 36 43    .6C :4573[1]
    lda l2d67                                                         ; 5676: ad 67 2d    .g- :4576[1]
    sta l4335,x                                                       ; 5679: 9d 35 43    .5C :4579[1]
    ldy #0                                                            ; 567c: a0 00       ..  :457c[1]
; &567e referenced 1 time by &458a[1]
.loop_c457e
    cpy l007b                                                         ; 567e: c4 7b       .{  :457e[1]
    beq c458c                                                         ; 5680: f0 0a       ..  :4580[1]
    lda l44d3,y                                                       ; 5682: b9 d3 44    ..D :4582[1]
    sta l4338,x                                                       ; 5685: 9d 38 43    .8C :4585[1]
    inx                                                               ; 5688: e8          .   :4588[1]
    iny                                                               ; 5689: c8          .   :4589[1]
    bne loop_c457e                                                    ; 568a: d0 f2       ..  :458a[1]
; &568c referenced 2 times by &4580[1], &4597[1]
.c458c
    cpy #&0d                                                          ; 568c: c0 0d       ..  :458c[1]
    beq c4599                                                         ; 568e: f0 09       ..  :458e[1]
    lda #&20 ; ' '                                                    ; 5690: a9 20       .   :4590[1]
    sta l4338,x                                                       ; 5692: 9d 38 43    .8C :4592[1]
    inx                                                               ; 5695: e8          .   :4595[1]
    iny                                                               ; 5696: c8          .   :4596[1]
    bne c458c                                                         ; 5697: d0 f3       ..  :4597[1]
; &5699 referenced 1 time by &458e[1]
.c4599
    jsr sub_c43d7                                                     ; 5699: 20 d7 43     .C :4599[1]
    rts                                                               ; 569c: 60          `   :459c[1]

; &569d referenced 2 times by &1a95[1], &1a9b[1]
.sub_c459d
    txa                                                               ; 569d: 8a          .   :459d[1]
    and #1                                                            ; 569e: 29 01       ).  :459e[1]
    sta l265a                                                         ; 56a0: 8d 5a 26    .Z& :45a0[1]
    jsr sub_c45b8                                                     ; 56a3: 20 b8 45     .E :45a3[1]
    lda l2659                                                         ; 56a6: ad 59 26    .Y& :45a6[1]
    beq c45ad                                                         ; 56a9: f0 02       ..  :45a9[1]
    pla                                                               ; 56ab: 68          h   :45ab[1]
    pla                                                               ; 56ac: 68          h   :45ac[1]
; &56ad referenced 1 time by &45a9[1]
.c45ad
    rts                                                               ; 56ad: 60          `   :45ad[1]

; &56ae referenced 1 time by &1a70[1]
.sub_c45ae
    lda l193a                                                         ; 56ae: ad 3a 19    .:. :45ae[1]
    cmp l1924                                                         ; 56b1: cd 24 19    .$. :45b1[1]
    bpl c45c4                                                         ; 56b4: 10 0e       ..  :45b4[1]
    ldx #&0e                                                          ; 56b6: a2 0e       ..  :45b6[1]
; &56b8 referenced 1 time by &45a3[1]
.sub_c45b8
    ldy #7                                                            ; 56b8: a0 07       ..  :45b8[1]
; &56ba referenced 1 time by &45c2[1]
.loop_c45ba
    lda l17b2,x                                                       ; 56ba: bd b2 17    ... :45ba[1]
    jsr oswrch                                                        ; 56bd: 20 ee ff     .. :45bd[1]   ; Write character
    inx                                                               ; 56c0: e8          .   :45c0[1]
    dey                                                               ; 56c1: 88          .   :45c1[1]
    bne loop_c45ba                                                    ; 56c2: d0 f6       ..  :45c2[1]
; &56c4 referenced 1 time by &45b4[1]
.c45c4
    rts                                                               ; 56c4: 60          `   :45c4[1]

    equb &ea, &ea, &ea, &60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ; 56c5: ea ea ea... ... :45c5[1]
    equb   0,   0,   0                                                ; 56d7: 00 00 00    ... :45d7[1]

; &56da referenced 1 time by &486e[1]
.c45da
    lda #&16                                                          ; 56da: a9 16       ..  :45da[1]
    jsr oswrch                                                        ; 56dc: 20 ee ff     .. :45dc[1]   ; Write character 22
    lda #4                                                            ; 56df: a9 04       ..  :45df[1]
    jsr oswrch                                                        ; 56e1: 20 ee ff     .. :45e1[1]   ; Write character 4
    jsr sub_c2336                                                     ; 56e4: 20 36 23     6# :45e4[1]
    lda #0                                                            ; 56e7: a9 00       ..  :45e7[1]
    sta l3907                                                         ; 56e9: 8d 07 39    ..9 :45e9[1]
    sta l3908                                                         ; 56ec: 8d 08 39    ..9 :45ec[1]
    sta l3909                                                         ; 56ef: 8d 09 39    ..9 :45ef[1]
    sta l2657                                                         ; 56f2: 8d 57 26    .W& :45f2[1]
    jmp c37f3                                                         ; 56f5: 4c f3 37    L.7 :45f5[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 56f8: ea ea ea... ... :45f8[1]
    equb &ea, &ea, &ea                                                ; 5704: ea ea ea    ... :4604[1]

; &5707 referenced 1 time by &1ded[1]
.c4607
    pla                                                               ; 5707: 68          h   :4607[1]
    pla                                                               ; 5708: 68          h   :4608[1]
    lda l0401                                                         ; 5709: ad 01 04    ... :4609[1]
    sta l1cd2                                                         ; 570c: 8d d2 1c    ... :460c[1]
    lda l0404                                                         ; 570f: ad 04 04    ... :460f[1]
    sta l1cd1                                                         ; 5712: 8d d1 1c    ... :4612[1]
    lda #&16                                                          ; 5715: a9 16       ..  :4615[1]
    jsr oswrch                                                        ; 5717: 20 ee ff     .. :4617[1]   ; Write character 22
    lda #4                                                            ; 571a: a9 04       ..  :461a[1]
    jsr oswrch                                                        ; 571c: 20 ee ff     .. :461c[1]   ; Write character 4
    jsr sub_c2336                                                     ; 571f: 20 36 23     6# :461f[1]
    jsr sub_c2312                                                     ; 5722: 20 12 23     .# :4622[1]
    jsr sub_c3b61                                                     ; 5725: 20 61 3b     a; :4625[1]
    jsr sub_c2306                                                     ; 5728: 20 06 23     .# :4628[1]
    jsr sub_c41bb                                                     ; 572b: 20 bb 41     .A :462b[1]
    lda l390a                                                         ; 572e: ad 0a 39    ..9 :462e[1]
    bne c4639                                                         ; 5731: d0 06       ..  :4631[1]
    jsr sub_c44e8                                                     ; 5733: 20 e8 44     .D :4633[1]
    jmp c47b1                                                         ; 5736: 4c b1 47    L.G :4636[1]

; &5739 referenced 1 time by &4631[1]
.c4639
    jsr c4203                                                         ; 5739: 20 03 42     .B :4639[1]
    lda l2d65                                                         ; 573c: ad 65 2d    .e- :463c[1]
    sta l3907                                                         ; 573f: 8d 07 39    ..9 :463f[1]
    lda l2d66                                                         ; 5742: ad 66 2d    .f- :4642[1]
    sta l3908                                                         ; 5745: 8d 08 39    ..9 :4645[1]
    lda l2d67                                                         ; 5748: ad 67 2d    .g- :4648[1]
    sta l3909                                                         ; 574b: 8d 09 39    ..9 :464b[1]
    ldy #3                                                            ; 574e: a0 03       ..  :464e[1]
; &5750 referenced 1 time by &4660[1]
.loop_c4650
    lda l33ba,y                                                       ; 5750: b9 ba 33    ..3 :4650[1]
    cmp l33c6,y                                                       ; 5753: d9 c6 33    ..3 :4653[1]
    beq c465f                                                         ; 5756: f0 07       ..  :4656[1]
    clc                                                               ; 5758: 18          .   :4658[1]
    adc l33c0,y                                                       ; 5759: 79 c0 33    y.3 :4659[1]
    sta l33ba,y                                                       ; 575c: 99 ba 33    ..3 :465c[1]
; &575f referenced 1 time by &4656[1]
.c465f
    dey                                                               ; 575f: 88          .   :465f[1]
    bpl loop_c4650                                                    ; 5760: 10 ee       ..  :4660[1]
    lda l0e50                                                         ; 5762: ad 50 0e    .P. :4662[1]
    cmp l34ba                                                         ; 5765: cd ba 34    ..4 :4665[1]
    beq c4671                                                         ; 5768: f0 07       ..  :4668[1]
    clc                                                               ; 576a: 18          .   :466a[1]
    adc l34bb                                                         ; 576b: 6d bb 34    m.4 :466b[1]
    sta l0e50                                                         ; 576e: 8d 50 0e    .P. :466e[1]
; &5771 referenced 1 time by &4668[1]
.c4671
    lda #&16                                                          ; 5771: a9 16       ..  :4671[1]
    jsr oswrch                                                        ; 5773: 20 ee ff     .. :4673[1]   ; Write character 22
    lda #4                                                            ; 5776: a9 04       ..  :4676[1]
    jsr oswrch                                                        ; 5778: 20 ee ff     .. :4678[1]   ; Write character 4
    jsr sub_c2336                                                     ; 577b: 20 36 23     6# :467b[1]
    jsr sub_c34f4                                                     ; 577e: 20 f4 34     .4 :467e[1]
    jmp c3833                                                         ; 5781: 4c 33 38    L38 :4681[1]

    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 5784: ea ea ea... ... :4684[1]
    equb &ea, &ea, &ea, &1f,   0,   5                                 ; 5790: ea ea ea... ... :4690[1]
    equs "  The frontiers of space are frequently penetrated  by  "   ; 5796: 20 20 54...   T :4696[1]
    equs "hostile  alien  ships .  These are tackled by battle sta"   ; 57ce: 68 6f 73... hos :46ce[1]
    equs "rships ,the  command  of  which  is  given  to  deservin"   ; 5806: 72 73 68... rsh :4706[1]
    equs "g captains from the Star-Fleet ."                           ; 583e: 67 20 63... g c :473e[1]
    equb &1f, &0b, 2                                                  ; 585e: 1f 0b 02    ... :475e[1]
    equs "STARSHIP  COMMAND"                                          ; 5861: 53 54 41... STA :4761[1]
    equb &1f, 6, &0a                                                  ; 5872: 1f 06 0a    ... :4772[1]
    equs "To begin your first command"                                ; 5875: 54 6f 20... To  :4775[1]
    equb &1f, &0c, &0b                                                ; 5890: 1f 0c 0b    ... :4790[1]
    equs "Press <RETURN>~"                                            ; 5893: 50 72 65... Pre :4793[1]
    equb &0d, &ff, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 58a2: 0d ff ea... ... :47a2[1]
    equb &ea, &ea, &ea                                                ; 58ae: ea ea ea    ... :47ae[1]

; &58b1 referenced 2 times by &4636[1], &61f6
.c47b1
    lda l0e49                                                         ; 58b1: ad 49 0e    .I. :47b1[1]
    sta l0080                                                         ; 58b4: 85 80       ..  :47b4[1]
    lda l0e4a                                                         ; 58b6: ad 4a 0e    .J. :47b6[1]
    sta l0081                                                         ; 58b9: 85 81       ..  :47b9[1]
    ldy #0                                                            ; 58bb: a0 00       ..  :47bb[1]
    ldx #0                                                            ; 58bd: a2 00       ..  :47bd[1]
; &58bf referenced 1 time by &47cf[1]
.loop_c47bf
    lda #&80                                                          ; 58bf: a9 80       ..  :47bf[1]
    sta (l0080),y                                                     ; 58c1: 91 80       ..  :47c1[1]
    iny                                                               ; 58c3: c8          .   :47c3[1]
    lda l4a00,x                                                       ; 58c4: bd 00 4a    ..J :47c4[1]
    sta (l0080),y                                                     ; 58c7: 91 80       ..  :47c7[1]
    iny                                                               ; 58c9: c8          .   :47c9[1]
    bne c47ce                                                         ; 58ca: d0 02       ..  :47ca[1]
    inc l0081                                                         ; 58cc: e6 81       ..  :47cc[1]
; &58ce referenced 1 time by &47ca[1]
.c47ce
    inx                                                               ; 58ce: e8          .   :47ce[1]
    bne loop_c47bf                                                    ; 58cf: d0 ee       ..  :47cf[1]
    jsr sub_c362f                                                     ; 58d1: 20 2f 36     /6 :47d1[1]
    lda #&16                                                          ; 58d4: a9 16       ..  :47d4[1]
    jsr oswrch                                                        ; 58d6: 20 ee ff     .. :47d6[1]   ; Write character 22
    lda #4                                                            ; 58d9: a9 04       ..  :47d9[1]
    jsr oswrch                                                        ; 58db: 20 ee ff     .. :47db[1]   ; Write character 4
    lda #&0d                                                          ; 58de: a9 0d       ..  :47de[1]
    jsr oswrch                                                        ; 58e0: 20 ee ff     .. :47e0[1]   ; Write character 13
    lda #0                                                            ; 58e3: a9 00       ..  :47e3[1]
    jsr sub_c404c                                                     ; 58e5: 20 4c 40     L@ :47e5[1]
    lda #3                                                            ; 58e8: a9 03       ..  :47e8[1]
    jsr sub_c404c                                                     ; 58ea: 20 4c 40     L@ :47ea[1]
    lda #&93                                                          ; 58ed: a9 93       ..  :47ed[1]
    sta l0080                                                         ; 58ef: 85 80       ..  :47ef[1]
    lda #&46 ; 'F'                                                    ; 58f1: a9 46       .F  :47f1[1]
    sta l0081                                                         ; 58f3: 85 81       ..  :47f3[1]
    ldy #0                                                            ; 58f5: a0 00       ..  :47f5[1]
; &58f7 referenced 2 times by &4802[1], &4806[1]
.c47f7
    lda (l0080),y                                                     ; 58f7: b1 80       ..  :47f7[1]
    cmp #&7e ; '~'                                                    ; 58f9: c9 7e       .~  :47f9[1]
    beq c4808                                                         ; 58fb: f0 0b       ..  :47fb[1]
    jsr oswrch                                                        ; 58fd: 20 ee ff     .. :47fd[1]   ; Write character
    inc l0080                                                         ; 5900: e6 80       ..  :4800[1]
    bne c47f7                                                         ; 5902: d0 f3       ..  :4802[1]
    inc l0081                                                         ; 5904: e6 81       ..  :4804[1]
    bne c47f7                                                         ; 5906: d0 ef       ..  :4806[1]
; &5908 referenced 1 time by &47fb[1]
.c4808
    lda #osbyte_flush_buffer_class                                    ; 5908: a9 0f       ..  :4808[1]
    ldx #1                                                            ; 590a: a2 01       ..  :480a[1]
    ldy #0                                                            ; 590c: a0 00       ..  :480c[1]
    jsr osbyte                                                        ; 590e: 20 f4 ff     .. :480e[1]   ; Flush input buffers (X non-zero)
    lda #&80                                                          ; 5911: a9 80       ..  :4811[1]
    sta l0e50                                                         ; 5913: 8d 50 0e    .P. :4813[1]
    lda #1                                                            ; 5916: a9 01       ..  :4816[1]
    sta l0f00                                                         ; 5918: 8d 00 0f    ... :4818[1]
    sta l0f01                                                         ; 591b: 8d 01 0f    ... :481b[1]
    lda #&85                                                          ; 591e: a9 85       ..  :481e[1]
    sta l0f02                                                         ; 5920: 8d 02 0f    ... :4820[1]
    lda #5                                                            ; 5923: a9 05       ..  :4823[1]
    sta l0f03                                                         ; 5925: 8d 03 0f    ... :4825[1]
    lda #&ce                                                          ; 5928: a9 ce       ..  :4828[1]
    sta l0f04                                                         ; 592a: 8d 04 0f    ... :482a[1]
    lda #&0a                                                          ; 592d: a9 0a       ..  :482d[1]
    sta l0f05                                                         ; 592f: 8d 05 0f    ... :482f[1]
    lda #&62 ; 'b'                                                    ; 5932: a9 62       .b  :4832[1]
    sta l0079                                                         ; 5934: 85 79       .y  :4834[1]
    jsr sub_c1d24                                                     ; 5936: 20 24 1d     $. :4836[1]
; &5939 referenced 2 times by &4850[1], &4857[1]
.c4839
    inc l1cd1                                                         ; 5939: ee d1 1c    ... :4839[1]
    sei                                                               ; 593c: 78          x   :483c[1]
    jsr sub_c13d0                                                     ; 593d: 20 d0 13     .. :483d[1]
    cli                                                               ; 5940: 58          X   :4840[1]
    lda #osbyte_inkey                                                 ; 5941: a9 81       ..  :4841[1]
    ldx #2                                                            ; 5943: a2 02       ..  :4843[1]
    ldy #0                                                            ; 5945: a0 00       ..  :4845[1]
    jsr osbyte                                                        ; 5947: 20 f4 ff     .. :4847[1]   ; Wait for a key press within 2 centiseconds
; X is the ASCII value of the key pressed (assuming Y=0)
    cpx #&0d                                                          ; 594a: e0 0d       ..  :484a[1]
    beq c485a                                                         ; 594c: f0 0c       ..  :484c[1]
    cpy #&1b                                                          ; 594e: c0 1b       ..  :484e[1]   ; Y is zero if key pressed; &ff if no key pressed; &1b if ESCAPE pressed
    bne c4839                                                         ; 5950: d0 e7       ..  :4850[1]
    lda #osbyte_acknowledge_escape                                    ; 5952: a9 7e       .~  :4852[1]
    jsr osbyte                                                        ; 5954: 20 f4 ff     .. :4854[1]   ; Clear escape condition and perform escape effects
    jmp c4839                                                         ; 5957: 4c 39 48    L9H :4857[1]

; &595a referenced 1 time by &484c[1]
.c485a
    lda #&58 ; 'X'                                                    ; 595a: a9 58       .X  :485a[1]
    sta l0079                                                         ; 595c: 85 79       .y  :485c[1]
    lda l1cd1                                                         ; 595e: ad d1 1c    ... :485e[1]
    eor #&cd                                                          ; 5961: 49 cd       I.  :4861[1]
    sta l1cd2                                                         ; 5963: 8d d2 1c    ... :4863[1]
    lda #&0d                                                          ; 5966: a9 0d       ..  :4866[1]
    jsr oswrch                                                        ; 5968: 20 ee ff     .. :4868[1]   ; Write character 13
    jsr c4203                                                         ; 596b: 20 03 42     .B :486b[1]
    jmp c45da                                                         ; 596e: 4c da 45    L.E :486e[1]

    equb &54, &48, &e0, &0d, &d0, &dd, &60, 0, &1f, &0b, &0a          ; 5971: 54 48 e0... TH. :4871[1]
    equs "STARSHIP COMMAND I"                                         ; 597c: 53 54 41... STA :487c[1]
    equb &1f, &0b, &0c                                                ; 598e: 1f 0b 0c    ... :488e[1]
    equs "COPYRIGHT (c) 1982"                                         ; 5991: 43 4f 50... COP :4891[1]
    equb &1f, &0b, &0e                                                ; 59a3: 1f 0b 0e    ... :48a3[1]
    equs "Peter J.M. Irvin.~"                                         ; 59a6: 50 65 74... Pet :48a6[1]
    equb &0d, &ff, &a9, &16, &20, &ee, &ff, &a9,   7, &20, &ee, &ff   ; 59b8: 0d ff a9... ... :48b8[1]
    equb &a0,   0, &b9, &79, &48, &c9, &7e, &f0,   6, &20, &ee, &ff   ; 59c4: a0 00 b9... ... :48c4[1]
    equb &c8, &d0, &f3, &a0,   0, &a2, &64, &a9, &81, &20, &f4, &ff   ; 59d0: c8 d0 f3... ... :48d0[1]
    equb &4c, &b1, &47, &9c, &a9, &b8, &a9, &be, &ec, &86, &e2, &81   ; 59dc: 4c b1 47... L.G :48dc[1]
    equb &e2, &ec, &85, &be, &ba, &a5, &a2, &e2,   0,   0,   0,   0   ; 59e8: e2 ec 85... ... :48e8[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 59f4: 00 00 00... ... :48f4[1]

; &5a00 referenced 1 time by &2355[1]
.sub_c4900
    lda #osbyte_read_adc_or_get_buffer_status                         ; 5a00: a9 80       ..  :4900[1]
    ldx #0                                                            ; 5a02: a2 00       ..  :4902[1]
    jsr osbyte                                                        ; 5a04: 20 f4 ff     .. :4904[1]   ; Read the channel number last used for an ADC conversion and joystick fire buttons (X=0)
    txa                                                               ; 5a07: 8a          .   :4907[1]   ; X has the joystick fire buttons status in the lower two bits: bit 0=left button, bit 1=right button
    and #3                                                            ; 5a08: 29 03       ).  :4908[1]
    beq c490f                                                         ; 5a0a: f0 03       ..  :490a[1]
    inc l191a                                                         ; 5a0c: ee 1a 19    ... :490c[1]
; &5a0f referenced 1 time by &490a[1]
.c490f
    lda #osbyte_read_adc_or_get_buffer_status                         ; 5a0f: a9 80       ..  :490f[1]
    ldx #2                                                            ; 5a11: a2 02       ..  :4911[1]
    jsr osbyte                                                        ; 5a13: 20 f4 ff     .. :4913[1]   ; Read the ADC conversion value for channel X=2
    lda l0f00                                                         ; 5a16: ad 00 0f    ... :4916[1]
    sta l007a                                                         ; 5a19: 85 7a       .z  :4919[1]
    lda l0f01                                                         ; 5a1b: ad 01 0f    ... :491b[1]
    asl a                                                             ; 5a1e: 0a          .   :491e[1]
    rol l007a                                                         ; 5a1f: 26 7a       &z  :491f[1]
    asl a                                                             ; 5a21: 0a          .   :4921[1]
    rol l007a                                                         ; 5a22: 26 7a       &z  :4922[1]
    tya                                                               ; 5a24: 98          .   :4924[1]   ; X and Y contain the ADC value read (low,high)
    lsr a                                                             ; 5a25: 4a          J   :4925[1]
    lsr a                                                             ; 5a26: 4a          J   :4926[1]
    lsr a                                                             ; 5a27: 4a          J   :4927[1]
    sec                                                               ; 5a28: 38          8   :4928[1]
    sbc #8                                                            ; 5a29: e9 08       ..  :4929[1]
    bcs c492f                                                         ; 5a2b: b0 02       ..  :492b[1]
    lda #0                                                            ; 5a2d: a9 00       ..  :492d[1]
; &5a2f referenced 1 time by &492b[1]
.c492f
    cmp l007a                                                         ; 5a2f: c5 7a       .z  :492f[1]
    beq c493e                                                         ; 5a31: f0 0b       ..  :4931[1]
    bcc c493b                                                         ; 5a33: 90 06       ..  :4933[1]
    inc l192e                                                         ; 5a35: ee 2e 19    ... :4935[1]
    jmp c493e                                                         ; 5a38: 4c 3e 49    L>I :4938[1]

; &5a3b referenced 1 time by &4933[1]
.c493b
    dec l192e                                                         ; 5a3b: ce 2e 19    ... :493b[1]
; &5a3e referenced 2 times by &4931[1], &4938[1]
.c493e
    lda #osbyte_read_adc_or_get_buffer_status                         ; 5a3e: a9 80       ..  :493e[1]
    ldx #1                                                            ; 5a40: a2 01       ..  :4940[1]
    jsr osbyte                                                        ; 5a42: 20 f4 ff     .. :4942[1]   ; Read the ADC conversion value for channel X=1
    tya                                                               ; 5a45: 98          .   :4945[1]   ; X and Y contain the ADC value read (low,high)
    eor #&ff                                                          ; 5a46: 49 ff       I.  :4946[1]
    lsr a                                                             ; 5a48: 4a          J   :4948[1]
    lsr a                                                             ; 5a49: 4a          J   :4949[1]
    lsr a                                                             ; 5a4a: 4a          J   :494a[1]
    lsr a                                                             ; 5a4b: 4a          J   :494b[1]
    cmp #8                                                            ; 5a4c: c9 08       ..  :494c[1]
    bcc c4953                                                         ; 5a4e: 90 03       ..  :494e[1]
    sbc #1                                                            ; 5a50: e9 01       ..  :4950[1]
    clc                                                               ; 5a52: 18          .   :4952[1]
; &5a53 referenced 1 time by &494e[1]
.c4953
    adc #&79 ; 'y'                                                    ; 5a53: 69 79       iy  :4953[1]
    cmp l0f02                                                         ; 5a55: cd 02 0f    ... :4955[1]
    beq c4965                                                         ; 5a58: f0 0b       ..  :4958[1]
    bcs c4962                                                         ; 5a5a: b0 06       ..  :495a[1]
    dec l1927                                                         ; 5a5c: ce 27 19    .'. :495c[1]
    jmp c4965                                                         ; 5a5f: 4c 65 49    LeI :495f[1]

; &5a62 referenced 1 time by &495a[1]
.c4962
    inc l1927                                                         ; 5a62: ee 27 19    .'. :4962[1]
; &5a65 referenced 2 times by &4958[1], &495f[1]
.c4965
    rts                                                               ; 5a65: 60          `   :4965[1]

    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &0c, &1f, &0c, 8               ; 5a66: 00 00 00... ... :4966[1]
    equs "STARSHIP COMMAND"                                           ; 5a74: 53 54 41... STA :4974[1]
    equb &1f, 1, &0a                                                  ; 5a84: 1f 01 0a    ... :4984[1]
    equs "Copyright (c) Acornsoft Limited 1982"                       ; 5a87: 43 6f 70... Cop :4987[1]
    equb &1f, 6, &0c                                                  ; 5aab: 1f 06 0c    ... :49ab[1]
    equs "Created by Peter J.M. Irvin"                                ; 5aae: 43 72 65... Cre :49ae[1]
    equb &1f, &0a, &0e                                                ; 5ac9: 1f 0a 0e    ... :49c9[1]
    equs "All rights reserved"                                        ; 5acc: 41 6c 6c... All :49cc[1]
    equb &0d, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0          ; 5adf: 0d 00 00... ... :49df[1]
.l49f0
    equb &11, 0                                                       ; 5af0: 11 00       ..  :49f0[1]   ; Channel (2 bytes)
; &5af2 referenced 1 time by &24ec[1]
.l49f2
    equb 0                                                            ; 5af2: 00          .   :49f2[1]   ; Amplitude (2 bytes)
; &5af3 referenced 1 time by &24f3[1]
.l49f3
    equb 0                                                            ; 5af3: 00          .   :49f3[1]
; &5af4 referenced 1 time by &24de[1]
.l49f4
    equb 0, 0, 4, 0                                                   ; 5af4: 00 00 04... ... :49f4[1]   ; Pitch (2 bytes); Duration (2 bytes)
.l49f8
    equb &10, 0, 3, 0, 7, 0, &1e, 0                                   ; 5af8: 10 00 03... ... :49f8[1]   ; Channel (2 bytes); Amplitude (2 bytes); Pitch (2 bytes); Duration (2 bytes)
; &5b00 referenced 1 time by &47c4[1]
.l4a00
    equb &d5, &82, &d5, &7b, &d5, &88, &d5, &75, &d3, &8f, &d3, &6e   ; 5b00: d5 82 d5... ... :4a00[1]
    equb &d3, &84, &d3, &79, &d2, &8d, &d2, &70, &d1, &95, &d1, &68   ; 5b0c: d3 84 d3... ... :4a0c[1]
    equb &cf, &92, &cf, &6b, &cf, &9b, &cf, &62, &cf, &87, &cf, &76   ; 5b18: cf 92 cf... ... :4a18[1]
    equb &cb, &a0, &cb, &5d, &cb, &98, &cb, &65, &c9, &8b, &c9, &72   ; 5b24: cb a0 cb... ... :4a24[1]
    equb &c7, &9c, &c7, &61, &c7, &a5, &c7, &58, &c3, &aa, &c3, &53   ; 5b30: c7 9c c7... ... :4a30[1]
    equb &c2, &8d, &c2, &70, &c1, &a0, &c1, &5d, &be, &ae, &be, &4f   ; 5b3c: c2 8d c2... ... :4a3c[1]
    equb &bb, &a4, &bb, &59, &b9, &90, &b9, &6d, &b8, &b2, &b8, &4b   ; 5b48: bb a4 bb... ... :4a48[1]
    equb &b4, &a7, &b4, &56, &b3, &b5, &b3, &48, &af, &91, &af, &6c   ; 5b54: b4 a7 b4... ... :4a54[1]
    equb &ad, &b7, &ad, &46, &ad, &a9, &ad, &54, &a6, &b9, &a6, &44   ; 5b60: ad b7 ad... ... :4a60[1]
    equb &a5, &ab, &a5, &52, &a5, &92, &a5, &6b, &a0, &ba, &a0, &43   ; 5b6c: a5 ab a5... ... :4a6c[1]
    equb &9d, &ab, &9d, &52, &9a, &bb, &9a, &43, &9a, &93, &9a, &6b   ; 5b78: 9d ab 9d... ... :4a78[1]
    equb &96, &ab, &96, &52, &93, &ba, &93, &43, &8e, &ab, &8e, &52   ; 5b84: 96 ab 96... ... :4a84[1]
    equb &8e, &92, &8e, &6b, &8d, &b9, &8d, &44, &86, &a9, &86, &54   ; 5b90: 8e 92 8e... ... :4a90[1]
    equb &86, &b7, &86, &46, &84, &91, &84, &6c, &80, &b5, &80, &48   ; 5b9c: 86 b7 86... ... :4a9c[1]
    equb &7f, &a7, &7f, &56, &7b, &b2                                 ; 5ba8: 7f a7 7f... ... :4aa8[1]
    equs "{Kz"                                                        ; 5bae: 7b 4b 7a    {Kz :4aae[1]
    equb &90                                                          ; 5bb1: 90          .   :4ab1[1]
    equs "zmx"                                                        ; 5bb2: 7a 6d 78    zmx :4ab2[1]
    equb &a4                                                          ; 5bb5: a4          .   :4ab5[1]
    equs "xYu"                                                        ; 5bb6: 78 59 75    xYu :4ab6[1]
    equb &ae                                                          ; 5bb9: ae          .   :4ab9[1]
    equs "uOr"                                                        ; 5bba: 75 4f 72    uOr :4aba[1]
    equb &a0                                                          ; 5bbd: a0          .   :4abd[1]
    equs "r]q"                                                        ; 5bbe: 72 5d 71    r]q :4abe[1]
    equb &8d                                                          ; 5bc1: 8d          .   :4ac1[1]
    equs "qpp"                                                        ; 5bc2: 71 70 70    qpp :4ac2[1]
    equb &aa                                                          ; 5bc5: aa          .   :4ac5[1]
    equs "pSl"                                                        ; 5bc6: 70 53 6c    pSl :4ac6[1]
    equb &a5                                                          ; 5bc9: a5          .   :4ac9[1]
    equs "lXl"                                                        ; 5bca: 6c 58 6c    lXl :4aca[1]
    equb &9c                                                          ; 5bcd: 9c          .   :4acd[1]
    equs "laj"                                                        ; 5bce: 6c 61 6a    laj :4ace[1]
    equb &8b                                                          ; 5bd1: 8b          .   :4ad1[1]
    equs "jrh"                                                        ; 5bd2: 6a 72 68    jrh :4ad2[1]
    equb &98                                                          ; 5bd5: 98          .   :4ad5[1]
    equs "heh"                                                        ; 5bd6: 68 65 68    heh :4ad6[1]
    equb &a0                                                          ; 5bd9: a0          .   :4ad9[1]
    equs "h]d"                                                        ; 5bda: 68 5d 64    h]d :4ada[1]
    equb &92                                                          ; 5bdd: 92          .   :4add[1]
    equs "dkd"                                                        ; 5bde: 64 6b 64    dkd :4ade[1]
    equb &9b                                                          ; 5be1: 9b          .   :4ae1[1]
    equs "dbd"                                                        ; 5be2: 64 62 64    dbd :4ae2[1]
    equb &87                                                          ; 5be5: 87          .   :4ae5[1]
    equs "dvb"                                                        ; 5be6: 64 76 62    dvb :4ae6[1]
    equb &95                                                          ; 5be9: 95          .   :4ae9[1]
    equs "bha"                                                        ; 5bea: 62 68 61    bha :4aea[1]
    equb &8d                                                          ; 5bed: 8d          .   :4aed[1]
    equs "ap`"                                                        ; 5bee: 61 70 60    ap` :4aee[1]
    equb &8f                                                          ; 5bf1: 8f          .   :4af1[1]
    equs "`n`"                                                        ; 5bf2: 60 6e 60    `n` :4af2[1]
    equb &84                                                          ; 5bf5: 84          .   :4af5[1]
    equs "`y^"                                                        ; 5bf6: 60 79 5e    `y^ :4af6[1]
    equb &82                                                          ; 5bf9: 82          .   :4af9[1]
    equs "^{^"                                                        ; 5bfa: 5e 7b 5e    ^{^ :4afa[1]
    equb &88, &5e, &75, &cd, &49, &3a, &96, &f8, &8d, &6e, &61, &c6   ; 5bfd: 88 5e 75... .^u :4afd[1]
    equb &2d, &68, &1f, &0d, &74, &52, &d2, &f8, &9e, &3e, &a9, &b1   ; 5c09: 2d 68 1f... -h. :4b09[1]
    equs "%+Tmo"                                                      ; 5c15: 25 2b 54... %+T :4b15[1]
    equb &94                                                          ; 5c1a: 94          .   :4b1a[1]
    equs "DV$"                                                        ; 5c1b: 44 56 24    DV$ :4b1b[1]
    equb &fb, &88, &fd, &b6, &8f, &31, &6a, &ea, &36, &b6, &14, &b5   ; 5c1e: fb 88 fd... ... :4b1e[1]
    equb &0a, &4b, &97, &4c, &f4, &0a, &10, &9d,   7, &40, &e5, &66   ; 5c2a: 0a 4b 97... .K. :4b2a[1]
    equb &c0                                                          ; 5c36: c0          .   :4b36[1]
    equs "&%}.Lcz"                                                    ; 5c37: 26 25 7d... &%} :4b37[1]
    equb &fe, &e4, &b2, &23, &a6, &43, &84, &cc, &3f, &6c, &c0, &d0   ; 5c3e: fe e4 b2... ... :4b3e[1]
    equb &39, &96, &be, &c3, &80, &54, &32, &cf, &60, &8e, &4b, &c5   ; 5c4a: 39 96 be... 9.. :4b4a[1]
    equb &59, &5c, &b6, &ca,   3, &82, &dc, &c5, &7c, &69, &0c, &cc   ; 5c56: 59 5c b6... Y\. :4b56[1]
    equb &13, &93, &99, &c0, &33, &59, &cc, &cd, &e7, &9b, &da, &be   ; 5c62: 13 93 99... ... :4b62[1]
    equb &5d, &50, &d7, &ca, &95, &a1, &f4, &b9                       ; 5c6e: 5d 50 d7... ]P. :4b6e[1]
    equs "=L:"                                                        ; 5c76: 3d 4c 3a    =L: :4b76[1]
    equb &c4, &55, &85, &9b, &be, &e2, &68, &f1, &c6, &2b, &98, &ee   ; 5c79: c4 55 85... .U. :4b79[1]
    equb &b9, &70, &56, &b6, &c6, &7c, &a6, &45, &b4, &49, &49, &d3   ; 5c85: b9 70 56... .pV :4b85[1]
    equb &c1, &41, &9d, &46, &b3, &ae, &53, &fb, &bb,   6, &8a, &31   ; 5c91: c1 41 9d... .A. :4b91[1]
    equb &b5, &af, &67, &9a, &c1, &92, &ab, &9c, &ad, &87, &46, &8b   ; 5c9d: b5 af 67... ..g :4b9d[1]
    equb &bb, &8d, &a1, &d2, &ab, &18, &52, &49, &bd, &7b, &af, &1f   ; 5ca9: bb 8d a1... ... :4ba9[1]
    equb &a8, &8f, &44, &5e, &b2, &f2, &8c, &30, &ab, &a6, &68, &c9   ; 5cb5: a8 8f 44... ..D :4bb5[1]
    equb &b7, &9c, &b2, &d9, &a1, &c1, &43, &12, &b5, &e0, &a4, &90   ; 5cc1: b7 9c b2... ... :4bc1[1]
    equb &a4, &7d, &51,   0,   0, &2f,   0,   9, &57,   0, &15, &96   ; 5ccd: a4 7d 51... .}Q :4bcd[1]
    equb   0, &1a, &63,   0, &46, &90,   0, &59, &55,   0, &37, &9a   ; 5cd9: 00 1a 63... ..c :4bd9[1]
    equb   0, &7d, &91,   0, &32, &69,   0, &3b, &75,   0, &7e, &a0   ; 5ce5: 00 7d 91... .}. :4be5[1]
    equb   0, &71, &51,   0, &42, &67,   0, &42, &61,   0, &57, &9a   ; 5cf1: 00 71 51... .qQ :4bf1[1]
    equb   0, &0a, &6d,   0, &f6, &a1,   0, &6e, &98,   0, &55, &8a   ; 5cfd: 00 0a 6d... ..m :4bfd[1]
    equb   0, &36, &9d,   0, &3d, &94,   0, &2b, &75,   0, &78, &32   ; 5d09: 00 36 9d... .6. :4c09[1]
    equb   0,   6, &a1,   0, &29, &4c,   0, &0e, &98,   0, &2c, &83   ; 5d15: 00 06 a1... ... :4c15[1]
    equb   0, &0d, &99,   0, &39, &56,   0, &15, &91,   0,   5, &98   ; 5d21: 00 0d 99... ... :4c21[1]
    equb   0, &13, &73,   0, &6d, &8a,   0, &40, &36,   0,   3, &7e   ; 5d2d: 00 13 73... ..s :4c2d[1]
    equb   0, &51, &4d,   0, &34, &81,   0, &90, &33,   0, &25, &86   ; 5d39: 00 51 4d... .QM :4c39[1]
    equb   0, &21, &53,   0, &1f, &a0,   0, &72, &65,   0, &6c, &8d   ; 5d45: 00 21 53... .!S :4c45[1]
    equb   0, &16, &96,   0, &2f, &9c,   0, &79, &4d,   0, &45, &8c   ; 5d51: 00 16 96... ... :4c51[1]
    equb   0, &2f, &9f,   0, &64, &8c,   0, &12, &68,   0, &43, &76   ; 5d5d: 00 2f 9f... ./. :4c5d[1]
    equb   0, &6d, &93,   0, &2b, &7c,   0, &62, &64,   0, &65, &92   ; 5d69: 00 6d 93... .m. :4c69[1]
    equb   0, &3d, &97,   0, &16, &8c,   0, &45, &95,   0, &1a, &69   ; 5d75: 00 3d 97... .=. :4c75[1]
    equb   0, &b1, &55,   0, &26, &9e,   0, &4b, &79,   0, &85, &98   ; 5d81: 00 b1 55... ..U :4c81[1]
    equb   0, &4a, &64, &86, &74, &92, &ad, &94, &65,   8, &62, &c6   ; 5d8d: 00 4a 64... .Jd :4c8d[1]
    equb &72, &be, &a4, &53, &67, &dd, &6a, &85, &6d, &73, &94, &ab   ; 5d99: 72 be a4... r.. :4c99[1]
    equb &68, &ee, &7b, &14, &6e, &97, &a1, &2e, &64, &91, &6f, &a1   ; 5da5: 68 ee 7b... h.{ :4ca5[1]
    equb &6f, &71, &a9, &9f, &62, &b7, &67, &fd, &68, &7c, &9c        ; 5db1: 6f 71 a9... oq. :4cb1[1]
    equs "ka:v"                                                       ; 5dbc: 6b 61 3a... ka: :4cbc[1]
    equb &bd, &6a, &50, &a5, &ac                                      ; 5dc0: bd 6a 50... .jP :4cc0[1]
    equs "_fm"                                                        ; 5dc5: 5f 66 6d    _fm :4cc5[1]
    equb &db, &66, &b1, &91, &8d, &63,   5, &81, &9d, &67, &d0, &9f   ; 5dc8: db 66 b1... .f. :4cc8[1]
    equb &e0, &5e, &ab, &73, &12, &65, &2b, &98, &74, &5f, &b6        ; 5dd4: e0 5e ab... .^. :4cd4[1]
    equs "{}dQ"                                                       ; 5ddf: 7b 7d 64... {}d :4cdf[1]
    equb &9a, &15, &5e, &f3                                           ; 5de3: 9a 15 5e... ..^ :4ce3[1]
    equs "y[b"                                                        ; 5de7: 79 5b 62    y[b :4ce7[1]
    equb &87, &8f, &37, &60, &bd, &84, 0, &60, &f3, &8d, &a3, &5e     ; 5dea: 87 8f 37... ..7 :4cea[1]
    equb &16, &87, &2a, &61, &d7, &93                                 ; 5df6: 16 87 2a... ..* :4cf6[1]
    equs "x]3"                                                        ; 5dfc: 78 5d 33    x]3 :4cfc[1]
    equb &81,   0, &d3,   0, &85,   0, &a9,   0, &c6,   0, &d7,   0   ; 5dff: 81 00 d3... ... :4cff[1]
    equb &9e,   0, &cb,   0, &cb,   0, &9e,   0, &a1,   0, &7d,   0   ; 5e0b: 9e 00 cb... ... :4d0b[1]
    equb &da,   0, &fb,   0, &ce,   0, &b2,   0, &54,   0, &6c,   0   ; 5e17: da 00 fb... ... :4d17[1]
    equb &da,   0, &99,   0, &aa,   0, &d6,   0, &91,   0, &95,   0   ; 5e23: da 00 99... ... :4d23[1]
    equb &ad,   0, &f7,   0, &81,   0, &89,   0, &64,   0, &99,   0   ; 5e2f: ad 00 f7... ... :4d2f[1]
    equb &fb,   0, &44,   0, &a2,   0, &a5,   0, &9d,   0, &a2,   0   ; 5e3b: fb 00 44... ..D :4d3b[1]
    equb &a5,   0, &75,   0, &fb,   0, &48,   0, &ae,   0, &d2,   0   ; 5e47: a5 00 75... ..u :4d47[1]
    equb &4c,   0, &ff,   0, &60,   0, &71,   0, &ba,   0, &44,   0   ; 5e53: 4c 00 ff... L.. :4d53[1]
    equb &4c,   0, &c2,   0, &58,   0, &f3,   0, &91,   0, &e7,   0   ; 5e5f: 4c 00 c2... L.. :4d5f[1]
    equb &aa,   0, &71,   0, &da,   0, &9e,   0, &71,   0, &50,   0   ; 5e6b: aa 00 71... ..q :4d6b[1]
    equb &50,   0, &a2,   0, &4c,   0, &e3,   0, &cb,   0, &91,   0   ; 5e77: 50 00 a2... P.. :4d77[1]
    equb &f3,   0, &85,   0, &89,   0, &81,   0, &e3,   0, &cb,   0   ; 5e83: f3 00 85... ... :4d83[1]
    equb &9e,   0, &44,   0, &ba,   0, &a1,   0, &79,   0, &54,   0   ; 5e8f: 9e 00 44... ..D :4d8f[1]
    equb &58,   0, &44,   0, &c7,   0, &aa,   0, &cb,   0, &7d,   0   ; 5e9b: 58 00 44... X.D :4d9b[1]
    equb &68,   0, &a5,   0, &cf,   0, &40,   0, &71,   0, &68,   0   ; 5ea7: 68 00 a5... h.. :4da7[1]
    equb &ae,   0, &d2,   0, &c2,   0, &ae,   0, &da,   0, &6c,   0   ; 5eb3: ae 00 d2... ... :4db3[1]
    equb &c2,   0, &a2,   0, &54,   0, &78,   0, &eb,   0, &d6,   0   ; 5ebf: c2 00 a2... ... :4dbf[1]
    equb &fb,   0, &ce,   0, &fb,   0, &81,   0, &ad,   0, &f7,   0   ; 5ecb: fb 00 ce... ... :4dcb[1]
    equb &ad,   0, &89,   0, &a2,   0, &b6,   0, &91,   0, &44,   0   ; 5ed7: ad 00 89... ... :4dd7[1]
    equb &d2,   0, &a6,   0, &c7,   0, &85,   0, &44,   0, &50,   0   ; 5ee3: d2 00 a6... ... :4de3[1]
    equb &74,   0, &85,   0, &79,   0, &a2,   0, &40,   0, &75,   0   ; 5eef: 74 00 85... t.. :4def[1]
    equb &ca,   0, &cf,   0, &a6, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 5efb: ca 00 cf... ... :4dfb[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 5f07: ff ff ff... ... :4e07[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 5f13: ff ff ff... ... :4e13[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 5f1f: ff ff ff... ... :4e1f[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 5f2b: ff ff ff... ... :4e2b[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff,   0,   0,   0   ; 5f37: ff ff ff... ... :4e37[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5f43: 00 00 00... ... :4e43[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5f4f: 00 00 00... ... :4e4f[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5f5b: 00 00 00... ... :4e5b[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5f67: 00 00 00... ... :4e67[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5f73: 00 00 00... ... :4e73[1]
    equb   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 5f7f: 00 ff ff... ... :4e7f[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 5f8b: ff ff ff... ... :4e8b[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 5f97: ff ff ff... ... :4e97[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 5fa3: ff ff ff... ... :4ea3[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 5faf: ff ff ff... ... :4eaf[1]
    equb &ff, &ff, &ff, &ff, &ff,   0,   0,   0,   0,   0,   0,   0   ; 5fbb: ff ff ff... ... :4ebb[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5fc7: 00 00 00... ... :4ec7[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5fd3: 00 00 00... ... :4ed3[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5fdf: 00 00 00... ... :4edf[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 5feb: 00 00 00... ... :4eeb[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, &4b, &66   ; 5ff7: 00 00 00... ... :4ef7[1]
    equb &b1, &48, &fd, &66, &a3, &4a,   0, &17                       ; 6003: b1 48 fd... .H. :4f03[1]
    equs "f:K"                                                        ; 600b: 66 3a 4b    f:K :4f0b[1]
    equb &cb                                                          ; 600e: cb          .   :4f0e[1]
    equs "f+M"                                                        ; 600f: 66 2b 4d    f+M :4f0f[1]
    equb 0, &94, &49, &19, &44, &a2, &4a, &db, &45, 0, &2f, &4a, 9    ; 6012: 00 94 49... ..I :4f12[1]
    equs "F=K"                                                        ; 601f: 46 3d 4b    F=K :4f1f[1]
    equb &c9, &47, 0, &6b, &4b, &0e                                   ; 6022: c9 47 00... .G. :4f22[1]
    equs "HwL"                                                        ; 6028: 48 77 4c    HwL :4f28[1]
    equb &d2, &49,   0, &81, &4b, &fc, &48, &91, &4c, &bf, &4a,   0   ; 602b: d2 49 00... .I. :4f2b[1]
    equb &39, &83, &6b, &3f, &1d, &83, &7c, &41,   0, &72, &7d, &89   ; 6037: 39 83 6b... 9.k :4f37[1]
    equb &3a, &82, &7d, &98, &3c,   0, &12                            ; 6043: 3a 82 7d... :.} :4f43[1]
    equs "uv?`u~A"                                                    ; 604a: 75 76 3f... uv? :4f4a[1]
    equb 0, &99                                                       ; 6051: 00 99       ..  :4f51[1]
    equs "m1="                                                        ; 6053: 6d 31 3d    m1= :4f53[1]
    equb &13                                                          ; 6056: 13          .   :4f56[1]
    equs "n3?"                                                        ; 6057: 6e 33 3f    n3? :4f57[1]
    equb 0, &d5                                                       ; 605a: 00 d5       ..  :4f5a[1]
    equs "j6@ck5B"                                                    ; 605c: 6a 36 40... j6@ :4f5c[1]
    equb 0, &b1, &68, &93                                             ; 6063: 00 b1 68... ..h :4f63[1]
    equs "COi"                                                        ; 6067: 43 4f 69    COi :4f67[1]
    equb &86, &45,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 606a: 86 45 00... .E. :4f6a[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, &ff, &ff   ; 6076: 00 00 00... ... :4f76[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 6082: ff ff ff... ... :4f82[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 608e: ff ff ff... ... :4f8e[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 609a: ff ff ff... ... :4f9a[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 60a6: ff ff ff... ... :4fa6[1]
    equb &ff, &ff,   0, &fb, &23,   5,   7, &97,   0, &38, &83, &f6   ; 60b2: ff ff 00... ... :4fb2[1]
    equb &7d, &9e,   0, &e7, &45, &45, &8a, &c5,   0, &f9, &37, &94   ; 60be: 7d 9e 00... }.. :4fbe[1]
    equb &6c, &bf,   0, &78, &8a, &4e, &77, &a5,   0, &28, &82, &6d   ; 60ca: 6c bf 00... l.. :4fca[1]
    equb &7c, &d2,   0, &72, &fe, &82, &b1, &ac,   0, &26, &81, &c2   ; 60d6: 7c d2 00... |.. :4fd6[1]
    equb &7e, &c8,   0, &ab, &fd, &23, &a7, &ae,   0, &4a, &fe, &f5   ; 60e2: 7e c8 00... ~.. :4fe2[1]
    equb &93, &b8,   0, &5e,   2,   3, &ed, &9f,   0, &85, &fd,   9   ; 60ee: 93 b8 00... ... :4fee[1]
    equb &98, &b7,   0, &46, &81, &d8, &7b, &ab,   0, &f0, &18, &b1   ; 60fa: 98 b7 00... ... :4ffa[1]
    equb &b0, &a8,   0, &75, &0d, &21, &90, &b8,   0, &fb, &43, &77   ; 6106: b0 a8 00... ... :5006[1]
    equb &c9, &b3,   0, &1d, &47,   1, &8f, &af,   0, &55, &43, &b0   ; 6112: c9 b3 00... ... :5012[1]
    equb &73, &c3,   0                                                ; 611e: 73 c3 00    s.. :501e[1]
    equs ".6E"                                                        ; 6121: 2e 36 45    .6E :5021[1]
    equb &b1, &b4, 0, &ed, &81, &73, &7d, &a7, 0, &af                 ; 6124: b1 b4 00... ... :5024[1]
    equs "}]{"                                                        ; 612e: 7d 5d 7b    }]{ :502e[1]
    equb &b2,   0, &d9, &1c, &c9, &93, &b4,   0, &51, &21, &1d, &82   ; 6131: b2 00 d9... ... :5031[1]
    equb &b8,   0, &31, &28, &f2, &96, &be,   0,   0,   0,   0,   0   ; 613d: b8 00 31... ..1 :503d[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 6149: 00 00 00... ... :5049[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 6155: 00 00 00... ... :5055[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 6161: 00 00 00... ... :5061[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 616d: 00 00 00... ... :506d[1]
    equb   0,   0,   0,   0,   0,   0,   0, &ff, &ff, &ff, &ff, &ff   ; 6179: 00 00 00... ... :5079[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 6185: ff ff ff... ... :5085[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 6191: ff ff ff... ... :5091[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 619d: ff ff ff... ... :509d[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff,   0                       ; 61a9: ff ff ff... ... :50a9[1]

    ; Copy the newly assembled block of code back to it's proper place in the binary
    ; file.
    ; (Note the parameter order: 'copyblock <start>,<end>,<dest>')
    copyblock l0e00, *, pydis_start

    ; Clear the area of memory we just temporarily used to assemble the new block,
    ; allowing us to assemble there again if needed
    clear &0e00, &1f00

    ; Set the program counter to the next position in the binary file.
    org pydis_start + (* - l0e00)

.entry_point
    lda #0                                                            ; 61b1: a9 00       ..
    tay                                                               ; 61b3: a8          .
    sta l0080                                                         ; 61b4: 85 80       ..
    lda #&0e                                                          ; 61b6: a9 0e       ..
    sta l0081                                                         ; 61b8: 85 81       ..
    lda #0                                                            ; 61ba: a9 00       ..
    sta l0082                                                         ; 61bc: 85 82       ..
    lda #&1f                                                          ; 61be: a9 1f       ..
    sta l0083                                                         ; 61c0: 85 83       ..
    lda #&b0                                                          ; 61c2: a9 b0       ..
    sta l0084                                                         ; 61c4: 85 84       ..
    lda #&61 ; 'a'                                                    ; 61c6: a9 61       .a
    sta l0085                                                         ; 61c8: 85 85       ..
; &61ca referenced 1 time by &61f3
.c61ca
    lda (l0082),y                                                     ; 61ca: b1 82       ..
    sta (l0080),y                                                     ; 61cc: 91 80       ..
    ldx l0082                                                         ; 61ce: a6 82       ..
    cpx l0084                                                         ; 61d0: e4 84       ..
    bne c61da                                                         ; 61d2: d0 06       ..
    ldx l0083                                                         ; 61d4: a6 83       ..
    cpx l0085                                                         ; 61d6: e4 85       ..
    beq c61f6                                                         ; 61d8: f0 1c       ..
; &61da referenced 1 time by &61d2
.c61da
    clc                                                               ; 61da: 18          .
    lda #1                                                            ; 61db: a9 01       ..
    adc l0082                                                         ; 61dd: 65 82       e.
    sta l0082                                                         ; 61df: 85 82       ..
    lda #0                                                            ; 61e1: a9 00       ..
    adc l0083                                                         ; 61e3: 65 83       e.
    sta l0083                                                         ; 61e5: 85 83       ..
    lda #1                                                            ; 61e7: a9 01       ..
    adc l0080                                                         ; 61e9: 65 80       e.
    sta l0080                                                         ; 61eb: 85 80       ..
    lda #0                                                            ; 61ed: a9 00       ..
    adc l0081                                                         ; 61ef: 65 81       e.
    sta l0081                                                         ; 61f1: 85 81       ..
    jmp c61ca                                                         ; 61f3: 4c ca 61    L.a

; &61f6 referenced 1 time by &61d8
.c61f6
    jmp c47b1                                                         ; 61f6: 4c b1 47    L.G

    equb 0, 0, 0, 0, 0, 0                                             ; 61f9: 00 00 00... ...
.pydis_end

; Label references by decreasing frequency:
;     l0080:      169
;     l007a:      149
;     l007b:      149
;     oswrch:      94
;     l0075:       55
;     l0081:       46
;     sub_c0f64:   42
;     l0e54:       39
;     l0082:       37
;     l007c:       31
;     l0076:       30
;     l0482:       28
;     l0072:       26
;     l0077:       26
;     l0078:       26
;     l0079:       24
;     l0409:       22
;     l0088:       21
;     l0489:       20
;     sub_c0f06:   20
;     l0086:       19
;     l1cd1:       19
;     l1cd2:       19
;     l0483:       18
;     osbyte:      18
;     l0073:       17
;     l0070:       16
;     l0084:       16
;     l0485:       16
;     l0074:       15
;     l0f02:       15
;     osword:      15
;     sub_c2436:   15
;     l0487:       14
;     l0e56:       14
;     l0f00:       14
;     l0f01:       14
;     l040a:       13
;     l0408:       12
;     l0486:       12
;     sub_c2113:   12
;     l0e4f:       11
;     c18e4:       10
;     l0480:       10
;     l2d65:       10
;     l2d66:       10
;     l2d67:       10
;     sub_c0f0e:   10
;     sub_c404c:   10
;     c3134:        9
;     l0481:        9
;     l191c:        9
;     l3907:        9
;     c30a5:        8
;     l0083:        8
;     l0488:        8
;     l0e55:        8
;     l191d:        8
;     l191e:        8
;     l2659:        8
;     l34b1:        8
;     l0085:        7
;     l0400:        7
;     l0e33:        7
;     l0e50:        7
;     l0e58:        7
;     l0e78:        7
;     l0f03:        7
;     l0f05:        7
;     l1927:        7
;     l192e:        7
;     l1cc9:        7
;     l1cd8:        7
;     l1ce0:        7
;     l2d63:        7
;     l2d64:        7
;     sub_c138a:    7
;     sub_c1bcf:    7
;     sub_c2336:    7
;     c1589:        6
;     c26bf:        6
;     l0071:        6
;     l0484:        6
;     l191f:        6
;     l1922:        6
;     l1928:        6
;     l3908:        6
;     l3909:        6
;     sub_c1bdb:    6
;     sub_c1bfc:    6
;     c1844:        5
;     c18cc:        5
;     c4203:        5
;     l0087:        5
;     l0402:        5
;     l0405:        5
;     l0e2d:        5
;     l0e37:        5
;     l0f04:        5
;     l1924:        5
;     l1cdb:        5
;     l1ce1:        5
;     l2655:        5
;     l2890:        5
;     l2891:        5
;     l2894:        5
;     l2d61:        5
;     l2d62:        5
;     sub_c0f4a:    5
;     sub_c0fe6:    5
;     sub_c1f5d:    5
;     c12d8:        4
;     c142b:        4
;     c1573:        4
;     c1605:        4
;     c1a70:        4
;     c27b4:        4
;     l0407:        4
;     l0e2e:        4
;     l0e49:        4
;     l0e4a:        4
;     l1918:        4
;     l191a:        4
;     l1926:        4
;     l192c:        4
;     l1931:        4
;     l193a:        4
;     l1cce:        4
;     l25de:        4
;     l25f1:        4
;     l25f2:        4
;     l2657:        4
;     l2658:        4
;     l265a:        4
;     l2892:        4
;     l2896:        4
;     l33ba:        4
;     l390a:        4
;     l4335:        4
;     sub_c159d:    4
;     sub_c2306:    4
;     sub_c2312:    4
;     c1408:        3
;     c145a:        3
;     c16cc:        3
;     c19c0:        3
;     c19c6:        3
;     c1a41:        3
;     c1b1c:        3
;     c1efe:        3
;     c257d:        3
;     c2614:        3
;     c2ab2:        3
;     c2adf:        3
;     c2da2:        3
;     c3833:        3
;     c41c4:        3
;     c4529:        3
;     l0401:        3
;     l048a:        3
;     l0e2f:        3
;     l0e32:        3
;     l0e3b:        3
;     l17d1:        3
;     l1920:        3
;     l1933:        3
;     l1934:        3
;     l1936:        3
;     l1cca:        3
;     l1ccb:        3
;     l1ccc:        3
;     l1ccf:        3
;     l1cdd:        3
;     l1cde:        3
;     l25e1:        3
;     l2897:        3
;     l2d6e:        3
;     l33b9:        3
;     l34b0:        3
;     l34b4:        3
;     l4338:        3
;     sub_c1aba:    3
;     sub_c1e3d:    3
;     sub_c2c29:    3
;     sub_c3019:    3
;     sub_c3d1b:    3
;     sub_c3d30:    3
;     sub_c3d3e:    3
;     sub_c41bb:    3
;     sub_c4479:    3
;     c0f99:        2
;     c1213:        2
;     c1311:        2
;     c1458:        2
;     c14c3:        2
;     c1695:        2
;     c16dc:        2
;     c1729:        2
;     c173e:        2
;     c174e:        2
;     c1770:        2
;     c17f9:        2
;     c1841:        2
;     c1850:        2
;     c18c9:        2
;     c18d4:        2
;     c18fb:        2
;     c190a:        2
;     c1a3b:        2
;     c1a83:        2
;     c1ab7:        2
;     c1bc8:        2
;     c1d8e:        2
;     c1e2b:        2
;     c2002:        2
;     c209d:        2
;     c238a:        2
;     c23b7:        2
;     c23d9:        2
;     c2449:        2
;     c2484:        2
;     c2489:        2
;     c2496:        2
;     c2599:        2
;     c2628:        2
;     c280b:        2
;     c290c:        2
;     c2964:        2
;     c2991:        2
;     c2bf3:        2
;     c2db2:        2
;     c2fc7:        2
;     c2ff5:        2
;     c3204:        2
;     c36ba:        2
;     c3718:        2
;     c3865:        2
;     c388b:        2
;     c38b0:        2
;     c3bfc:        2
;     c3c13:        2
;     c3c77:        2
;     c3cbc:        2
;     c3cc2:        2
;     c3ced:        2
;     c3d17:        2
;     c4020:        2
;     c421d:        2
;     c425b:        2
;     c43ee:        2
;     c451f:        2
;     c4545:        2
;     c458c:        2
;     c47b1:        2
;     c47f7:        2
;     c4839:        2
;     c493e:        2
;     c4965:        2
;     l0403:        2
;     l0404:        2
;     l0406:        2
;     l0c00:        2
;     l0e31:        2
;     l0e3a:        2
;     l0e3d:        2
;     l0e3e:        2
;     l0e41:        2
;     l0e4b:        2
;     l0e4c:        2
;     l0e51:        2
;     l0e52:        2
;     l0ed6:        2
;     l0ee2:        2
;     l1923:        2
;     l1925:        2
;     l1929:        2
;     l192a:        2
;     l192f:        2
;     l1932:        2
;     l1935:        2
;     l1937:        2
;     l1cd0:        2
;     l1cd6:        2
;     l1cdc:        2
;     l1cdf:        2
;     l1cf6:        2
;     l1d07:        2
;     l25dd:        2
;     l25e0:        2
;     l25f0:        2
;     l2652:        2
;     l2a81:        2
;     l34b7:        2
;     l3a8c:        2
;     l3ac6:        2
;     l406f:        2
;     l4336:        2
;     l4337:        2
;     l6b38:        2
;     l6c78:        2
;     l6e48:        2
;     sub_c0f18:    2
;     sub_c0f9a:    2
;     sub_c0fbe:    2
;     sub_c1081:    2
;     sub_c10af:    2
;     sub_c13d0:    2
;     sub_c1611:    2
;     sub_c16f2:    2
;     sub_c1aa3:    2
;     sub_c1d24:    2
;     sub_c2025:    2
;     sub_c20a4:    2
;     sub_c2629:    2
;     sub_c2758:    2
;     sub_c2998:    2
;     sub_c33d2:    2
;     sub_c34f4:    2
;     sub_c362f:    2
;     sub_c43d7:    2
;     sub_c459d:    2
;     c0f53:        1
;     c0f60:        1
;     c0fb5:        1
;     c0fce:        1
;     c0fe5:        1
;     c0ffc:        1
;     c100d:        1
;     c105e:        1
;     c106f:        1
;     c10a4:        1
;     c10cb:        1
;     c1106:        1
;     c1114:        1
;     c1122:        1
;     c113f:        1
;     c11b6:        1
;     c11f1:        1
;     c1233:        1
;     c123c:        1
;     c124c:        1
;     c12d5:        1
;     c12e3:        1
;     c12ee:        1
;     c12f6:        1
;     c1322:        1
;     c1323:        1
;     c1360:        1
;     c1362:        1
;     c13e0:        1
;     c1402:        1
;     c1471:        1
;     c14be:        1
;     c14cb:        1
;     c14ce:        1
;     c14d1:        1
;     c14e7:        1
;     c14f0:        1
;     c14fd:        1
;     c1523:        1
;     c1538:        1
;     c153c:        1
;     c1544:        1
;     c1586:        1
;     c1594:        1
;     c159c:        1
;     c15b1:        1
;     c15c0:        1
;     c15cf:        1
;     c15e3:        1
;     c15f4:        1
;     c15f7:        1
;     c15fa:        1
;     c1639:        1
;     c166b:        1
;     c1686:        1
;     c16a2:        1
;     c16bd:        1
;     c16de:        1
;     c16ee:        1
;     c16fa:        1
;     c1721:        1
;     c173b:        1
;     c174b:        1
;     c176d:        1
;     c179b:        1
;     c17e2:        1
;     c17f6:        1
;     c1806:        1
;     c183d:        1
;     c186a:        1
;     c187d:        1
;     c1894:        1
;     c189f:        1
;     c18b8:        1
;     c18e3:        1
;     c18f6:        1
;     c18f9:        1
;     c1905:        1
;     c1908:        1
;     c1958:        1
;     c195e:        1
;     c1969:        1
;     c1979:        1
;     c198c:        1
;     c19a1:        1
;     c19a4:        1
;     c19e2:        1
;     c19e9:        1
;     c19ef:        1
;     c19ff:        1
;     c1a03:        1
;     c1a11:        1
;     c1a17:        1
;     c1a1c:        1
;     c1a1f:        1
;     c1a29:        1
;     c1a5c:        1
;     c1a5f:        1
;     c1a9b:        1
;     c1aa1:        1
;     c1ab1:        1
;     c1ac6:        1
;     c1af3:        1
;     c1b05:        1
;     c1b12:        1
;     c1b43:        1
;     c1b57:        1
;     c1b67:        1
;     c1b77:        1
;     c1b96:        1
;     c1ba0:        1
;     c1bc0:        1
;     c1bf3:        1
;     c1bfb:        1
;     c1c0b:        1
;     c1c2a:        1
;     c1c38:        1
;     c1c9c:        1
;     c1ca4:        1
;     c1cc6:        1
;     c1d4e:        1
;     c1d84:        1
;     c1dcd:        1
;     c1df0:        1
;     c1e00:        1
;     c1e1e:        1
;     c1e36:        1
;     c1e5b:        1
;     c1e67:        1
;     c1e74:        1
;     c1e7e:        1
;     c1e8d:        1
;     c1e97:        1
;     c1ec6:        1
;     c1f27:        1
;     c1f4d:        1
;     c1f65:        1
;     c1f78:        1
;     c1f83:        1
;     c1fc0:        1
;     c1fc9:        1
;     c1ff5:        1
;     c2001:        1
;     c201b:        1
;     c203f:        1
;     c204b:        1
;     c2058:        1
;     c2062:        1
;     c2072:        1
;     c207c:        1
;     c20c1:        1
;     c20c5:        1
;     c212c:        1
;     c235e:        1
;     c236a:        1
;     c2372:        1
;     c237a:        1
;     c2382:        1
;     c2392:        1
;     c239a:        1
;     c23a5:        1
;     c23b8:        1
;     c23c3:        1
;     c23ce:        1
;     c23e2:        1
;     c23eb:        1
;     c241e:        1
;     c2426:        1
;     c2460:        1
;     c2470:        1
;     c247b:        1
;     c24af:        1
;     c24b7:        1
;     c24cb:        1
;     c24e8:        1
;     c2502:        1
;     c2516:        1
;     c2523:        1
;     c2543:        1
;     c254d:        1
;     c2563:        1
;     c256a:        1
;     c258b:        1
;     c25f3:        1
;     c260a:        1
;     c2674:        1
;     c2681:        1
;     c268e:        1
;     c26a5:        1
;     c26c9:        1
;     c2762:        1
;     c2773:        1
;     c2784:        1
;     c2795:        1
;     c27b5:        1
;     c27bd:        1
;     c27c5:        1
;     c27cd:        1
;     c27d3:        1
;     c27e0:        1
;     c27ef:        1
;     c27fa:        1
;     c282f:        1
;     c283f:        1
;     c285a:        1
;     c2876:        1
;     c2881:        1
;     c288c:        1
;     c28d7:        1
;     c28db:        1
;     c28dd:        1
;     c2914:        1
;     c294a:        1
;     c2958:        1
;     c2965:        1
;     c2983:        1
;     c2acf:        1
;     c2ae0:        1
;     c2aef:        1
;     c2af7:        1
;     c2c00:        1
;     c2c06:        1
;     c2c10:        1
;     c2c34:        1
;     c2c4a:        1
;     c2c4d:        1
;     c2c50:        1
;     c2d86:        1
;     c2dfb:        1
;     c2e53:        1
;     c2e58:        1
;     c2e5e:        1
;     c2f9e:        1
;     c300a:        1
;     c3023:        1
;     c30b1:        1
;     c30b4:        1
;     c3142:        1
;     c316d:        1
;     c318c:        1
;     c31a7:        1
;     c31cd:        1
;     c31ce:        1
;     c31d3:        1
;     c3205:        1
;     c33f6:        1
;     c340c:        1
;     c3438:        1
;     c3448:        1
;     c345b:        1
;     c3466:        1
;     c3476:        1
;     c3487:        1
;     c35cf:        1
;     c35e6:        1
;     c365a:        1
;     c3672:        1
;     c367f:        1
;     c3682:        1
;     c368b:        1
;     c3693:        1
;     c36a0:        1
;     c36b7:        1
;     c36f9:        1
;     c371d:        1
;     c372d:        1
;     c37f3:        1
;     c3893:        1
;     c38be:        1
;     c38c4:        1
;     c3bb9:        1
;     c3bdb:        1
;     c3bef:        1
;     c3c15:        1
;     c3c7f:        1
;     c3d07:        1
;     c3d48:        1
;     c3d50:        1
;     c3d58:        1
;     c3d60:        1
;     c4031:        1
;     c41de:        1
;     c41e1:        1
;     c422e:        1
;     c4278:        1
;     c4282:        1
;     c42a4:        1
;     c43ff:        1
;     c4405:        1
;     c4466:        1
;     c448b:        1
;     c4490:        1
;     c4503:        1
;     c4528:        1
;     c453b:        1
;     c4556:        1
;     c4568:        1
;     c4599:        1
;     c45ad:        1
;     c45c4:        1
;     c45da:        1
;     c4607:        1
;     c4639:        1
;     c465f:        1
;     c4671:        1
;     c47ce:        1
;     c4808:        1
;     c485a:        1
;     c490f:        1
;     c492f:        1
;     c493b:        1
;     c4953:        1
;     c4962:        1
;     c61ca:        1
;     c61da:        1
;     c61f6:        1
;     l0c10:        1
;     l0e30:        1
;     l0e34:        1
;     l0e35:        1
;     l0e36:        1
;     l0e38:        1
;     l0e39:        1
;     l0e4d:        1
;     l0e4e:        1
;     l0e53:        1
;     l0e98:        1
;     l0ebe:        1
;     l0ec4:        1
;     l0ed0:        1
;     l0edc:        1
;     l0ee8:        1
;     l0eee:        1
;     l0ef4:        1
;     l0efa:        1
;     l17b2:        1
;     l1919:        1
;     l1921:        1
;     l192b:        1
;     l192d:        1
;     l1930:        1
;     l1938:        1
;     l1939:        1
;     l1ccd:        1
;     l1cd7:        1
;     l1cd9:        1
;     l1cda:        1
;     l1d18:        1
;     l1d1c:        1
;     l2146:        1
;     l215a:        1
;     l21cc:        1
;     l21d2:        1
;     l21d3:        1
;     l2202:        1
;     l2203:        1
;     l2210:        1
;     l2216:        1
;     l221c:        1
;     l2222:        1
;     l222b:        1
;     l223d:        1
;     l224c:        1
;     l2265:        1
;     l25d5:        1
;     l25d6:        1
;     l25d7:        1
;     l25d8:        1
;     l25d9:        1
;     l25da:        1
;     l25db:        1
;     l25dc:        1
;     l25df:        1
;     l2653:        1
;     l2654:        1
;     l265b:        1
;     l2a56:        1
;     l2a5f:        1
;     l2a70:        1
;     l2a82:        1
;     l2a83:        1
;     l2c60:        1
;     l2d6f:        1
;     l2d70:        1
;     l2d71:        1
;     l2d72:        1
;     l2d73:        1
;     l2d75:        1
;     l33b1:        1
;     l33bb:        1
;     l33bc:        1
;     l33bd:        1
;     l33c0:        1
;     l33c6:        1
;     l33cc:        1
;     l34b2:        1
;     l34b3:        1
;     l34b5:        1
;     l34b6:        1
;     l34b8:        1
;     l34b9:        1
;     l34ba:        1
;     l34bb:        1
;     l34bc:        1
;     l34c0:        1
;     l34de:        1
;     l34e1:        1
;     l34e4:        1
;     l3912:        1
;     l3997:        1
;     l39bd:        1
;     l3a1f:        1
;     l3a4e:        1
;     l3a72:        1
;     l3b1b:        1
;     l3b46:        1
;     l4066:        1
;     l4070:        1
;     l4072:        1
;     l407b:        1
;     l407f:        1
;     l4325:        1
;     l4326:        1
;     l4327:        1
;     l4345:        1
;     l44d3:        1
;     l49f2:        1
;     l49f3:        1
;     l49f4:        1
;     l4a00:        1
;     l593f:        1
;     loop_c0fac:   1
;     loop_c0fc7:   1
;     loop_c1099:   1
;     loop_c10c2:   1
;     loop_c1442:   1
;     loop_c144f:   1
;     loop_c14b6:   1
;     loop_c1664:   1
;     loop_c169b:   1
;     loop_c179e:   1
;     loop_c17a0:   1
;     loop_c1b5d:   1
;     loop_c1ba9:   1
;     loop_c1bd1:   1
;     loop_c1bdd:   1
;     loop_c1d34:   1
;     loop_c1d68:   1
;     loop_c1d90:   1
;     loop_c1d9e:   1
;     loop_c1dbf:   1
;     loop_c1e6d:   1
;     loop_c1e86:   1
;     loop_c1f19:   1
;     loop_c1f70:   1
;     loop_c1f97:   1
;     loop_c2012:   1
;     loop_c2051:   1
;     loop_c206b:   1
;     loop_c2123:   1
;     loop_c227f:   1
;     loop_c22a5:   1
;     loop_c22b3:   1
;     loop_c22bf:   1
;     loop_c22cb:   1
;     loop_c22fc:   1
;     loop_c2308:   1
;     loop_c2314:   1
;     loop_c2320:   1
;     loop_c2338:   1
;     loop_c262b:   1
;     loop_c278c:   1
;     loop_c2836:   1
;     loop_c2e4a:   1
;     loop_c2e6d:   1
;     loop_c2e75:   1
;     loop_c2e8d:   1
;     loop_c2e95:   1
;     loop_c2f76:   1
;     loop_c2f8e:   1
;     loop_c2fd6:   1
;     loop_c2ffa:   1
;     loop_c31a9:   1
;     loop_c31e2:   1
;     loop_c31e4:   1
;     loop_c320f:   1
;     loop_c3213:   1
;     loop_c347f:   1
;     loop_c3583:   1
;     loop_c35b8:   1
;     loop_c35d4:   1
;     loop_c35f9:   1
;     loop_c361c:   1
;     loop_c3811:   1
;     loop_c3b68:   1
;     loop_c3b81:   1
;     loop_c3b98:   1
;     loop_c3bce:   1
;     loop_c3be2:   1
;     loop_c3bf1:   1
;     loop_c3c07:   1
;     loop_c3c50:   1
;     loop_c3c81:   1
;     loop_c3c9f:   1
;     loop_c3cb2:   1
;     loop_c3ccb:   1
;     loop_c3cfa:   1
;     loop_c3d0c:   1
;     loop_c3d27:   1
;     loop_c405f:   1
;     loop_c419d:   1
;     loop_c423e:   1
;     loop_c4439:   1
;     loop_c452d:   1
;     loop_c457e:   1
;     loop_c45ba:   1
;     loop_c4650:   1
;     loop_c47bf:   1
;     sound_8:      1
;     sub_c10fb:    1
;     sub_c120d:    1
;     sub_c1211:    1
;     sub_c1219:    1
;     sub_c12f7:    1
;     sub_c1438:    1
;     sub_c14a4:    1
;     sub_c14d2:    1
;     sub_c1631:    1
;     sub_c179c:    1
;     sub_c17d8:    1
;     sub_c193f:    1
;     sub_c1ac7:    1
;     sub_c1ad1:    1
;     sub_c1ba1:    1
;     sub_c1be7:    1
;     sub_c1d58:    1
;     sub_c1daf:    1
;     sub_c1de8:    1
;     sub_c1f03:    1
;     sub_c1f2d:    1
;     sub_c1fb4:    1
;     sub_c200c:    1
;     sub_c2275:    1
;     sub_c22a3:    1
;     sub_c22b1:    1
;     sub_c22bd:    1
;     sub_c22c9:    1
;     sub_c22d5:    1
;     sub_c22fa:    1
;     sub_c231e:    1
;     sub_c234b:    1
;     sub_c245a:    1
;     sub_c2667:    1
;     sub_c28a0:    1
;     sub_c28f8:    1
;     sub_c2a8b:    1
;     sub_c2bcf:    1
;     sub_c2c3a:    1
;     sub_c2dd0:    1
;     sub_c2e01:    1
;     sub_c2e61:    1
;     sub_c2eac:    1
;     sub_c2f45:    1
;     sub_c3161:    1
;     sub_c317c:    1
;     sub_c35a5:    1
;     sub_c35f7:    1
;     sub_c3614:    1
;     sub_c364f:    1
;     sub_c3b61:    1
;     sub_c4016:    1
;     sub_c419b:    1
;     sub_c41e9:    1
;     sub_c4486:    1
;     sub_c44e8:    1
;     sub_c45ae:    1
;     sub_c45b8:    1
;     sub_c4900:    1

; Automatically generated labels:
;     c0f53
;     c0f60
;     c0f99
;     c0fb5
;     c0fce
;     c0fe5
;     c0ffc
;     c100d
;     c105e
;     c106f
;     c10a4
;     c10cb
;     c1106
;     c1114
;     c1122
;     c113f
;     c11b6
;     c11f1
;     c1213
;     c1233
;     c123c
;     c124c
;     c12d5
;     c12d8
;     c12e3
;     c12ee
;     c12f6
;     c1311
;     c1322
;     c1323
;     c1360
;     c1362
;     c13e0
;     c1402
;     c1408
;     c142b
;     c1458
;     c145a
;     c1471
;     c14be
;     c14c3
;     c14cb
;     c14ce
;     c14d1
;     c14e7
;     c14f0
;     c14fd
;     c1523
;     c1538
;     c153c
;     c1544
;     c1573
;     c1586
;     c1589
;     c1594
;     c159c
;     c15b1
;     c15c0
;     c15cf
;     c15e3
;     c15f4
;     c15f7
;     c15fa
;     c1605
;     c1639
;     c166b
;     c1686
;     c1695
;     c16a2
;     c16bd
;     c16cc
;     c16dc
;     c16de
;     c16ee
;     c16fa
;     c1721
;     c1729
;     c173b
;     c173e
;     c174b
;     c174e
;     c176d
;     c1770
;     c179b
;     c17e2
;     c17f6
;     c17f9
;     c1806
;     c183d
;     c1841
;     c1844
;     c1850
;     c186a
;     c187d
;     c1894
;     c189f
;     c18b8
;     c18c9
;     c18cc
;     c18d4
;     c18e3
;     c18e4
;     c18f6
;     c18f9
;     c18fb
;     c1905
;     c1908
;     c190a
;     c1958
;     c195e
;     c1969
;     c1979
;     c198c
;     c19a1
;     c19a4
;     c19c0
;     c19c6
;     c19e2
;     c19e9
;     c19ef
;     c19ff
;     c1a03
;     c1a11
;     c1a17
;     c1a1c
;     c1a1f
;     c1a29
;     c1a3b
;     c1a41
;     c1a5c
;     c1a5f
;     c1a70
;     c1a83
;     c1a9b
;     c1aa1
;     c1ab1
;     c1ab7
;     c1ac6
;     c1af3
;     c1b05
;     c1b12
;     c1b1c
;     c1b43
;     c1b57
;     c1b67
;     c1b77
;     c1b96
;     c1ba0
;     c1bc0
;     c1bc8
;     c1bf3
;     c1bfb
;     c1c0b
;     c1c2a
;     c1c38
;     c1c9c
;     c1ca4
;     c1cc6
;     c1d4e
;     c1d84
;     c1d8e
;     c1dcd
;     c1df0
;     c1e00
;     c1e1e
;     c1e2b
;     c1e36
;     c1e5b
;     c1e67
;     c1e74
;     c1e7e
;     c1e8d
;     c1e97
;     c1ec6
;     c1efe
;     c1f27
;     c1f4d
;     c1f65
;     c1f78
;     c1f83
;     c1fc0
;     c1fc9
;     c1ff5
;     c2001
;     c2002
;     c201b
;     c203f
;     c204b
;     c2058
;     c2062
;     c2072
;     c207c
;     c209d
;     c20c1
;     c20c5
;     c212c
;     c235e
;     c236a
;     c2372
;     c237a
;     c2382
;     c238a
;     c2392
;     c239a
;     c23a5
;     c23b7
;     c23b8
;     c23c3
;     c23ce
;     c23d9
;     c23e2
;     c23eb
;     c241e
;     c2426
;     c2449
;     c2460
;     c2470
;     c247b
;     c2484
;     c2489
;     c2496
;     c24af
;     c24b7
;     c24cb
;     c24e8
;     c2502
;     c2516
;     c2523
;     c2543
;     c254d
;     c2563
;     c256a
;     c257d
;     c258b
;     c2599
;     c25f3
;     c260a
;     c2614
;     c2628
;     c2674
;     c2681
;     c268e
;     c26a5
;     c26bf
;     c26c9
;     c2762
;     c2773
;     c2784
;     c2795
;     c27b4
;     c27b5
;     c27bd
;     c27c5
;     c27cd
;     c27d3
;     c27e0
;     c27ef
;     c27fa
;     c280b
;     c282f
;     c283f
;     c285a
;     c2876
;     c2881
;     c288c
;     c28d7
;     c28db
;     c28dd
;     c290c
;     c2914
;     c294a
;     c2958
;     c2964
;     c2965
;     c2983
;     c2991
;     c2ab2
;     c2acf
;     c2adf
;     c2ae0
;     c2aef
;     c2af7
;     c2bf3
;     c2c00
;     c2c06
;     c2c10
;     c2c34
;     c2c4a
;     c2c4d
;     c2c50
;     c2d86
;     c2da2
;     c2db2
;     c2dfb
;     c2e53
;     c2e58
;     c2e5e
;     c2f9e
;     c2fc7
;     c2ff5
;     c300a
;     c3023
;     c30a5
;     c30b1
;     c30b4
;     c3134
;     c3142
;     c316d
;     c318c
;     c31a7
;     c31cd
;     c31ce
;     c31d3
;     c3204
;     c3205
;     c33f6
;     c340c
;     c3438
;     c3448
;     c345b
;     c3466
;     c3476
;     c3487
;     c35cf
;     c35e6
;     c365a
;     c3672
;     c367f
;     c3682
;     c368b
;     c3693
;     c36a0
;     c36b7
;     c36ba
;     c36f9
;     c3718
;     c371d
;     c372d
;     c37f3
;     c3833
;     c3865
;     c388b
;     c3893
;     c38b0
;     c38be
;     c38c4
;     c3bb9
;     c3bdb
;     c3bef
;     c3bfc
;     c3c13
;     c3c15
;     c3c77
;     c3c7f
;     c3cbc
;     c3cc2
;     c3ced
;     c3d07
;     c3d17
;     c3d48
;     c3d50
;     c3d58
;     c3d60
;     c4020
;     c4031
;     c41c4
;     c41de
;     c41e1
;     c4203
;     c421d
;     c422e
;     c425b
;     c4278
;     c4282
;     c42a4
;     c43ee
;     c43ff
;     c4405
;     c4466
;     c448b
;     c4490
;     c4503
;     c451f
;     c4528
;     c4529
;     c453b
;     c4545
;     c4556
;     c4568
;     c458c
;     c4599
;     c45ad
;     c45c4
;     c45da
;     c4607
;     c4639
;     c465f
;     c4671
;     c47b1
;     c47ce
;     c47f7
;     c4808
;     c4839
;     c485a
;     c490f
;     c492f
;     c493b
;     c493e
;     c4953
;     c4962
;     c4965
;     c61ca
;     c61da
;     c61f6
;     l0070
;     l0071
;     l0072
;     l0073
;     l0074
;     l0075
;     l0076
;     l0077
;     l0078
;     l0079
;     l007a
;     l007b
;     l007c
;     l0080
;     l0081
;     l0082
;     l0083
;     l0084
;     l0085
;     l0086
;     l0087
;     l0088
;     l0400
;     l0401
;     l0402
;     l0403
;     l0404
;     l0405
;     l0406
;     l0407
;     l0408
;     l0409
;     l040a
;     l0480
;     l0481
;     l0482
;     l0483
;     l0484
;     l0485
;     l0486
;     l0487
;     l0488
;     l0489
;     l048a
;     l0c00
;     l0c10
;     l0e00
;     l0e2d
;     l0e2e
;     l0e2f
;     l0e30
;     l0e31
;     l0e32
;     l0e33
;     l0e34
;     l0e35
;     l0e36
;     l0e37
;     l0e38
;     l0e39
;     l0e3a
;     l0e3b
;     l0e3d
;     l0e3e
;     l0e41
;     l0e49
;     l0e4a
;     l0e4b
;     l0e4c
;     l0e4d
;     l0e4e
;     l0e4f
;     l0e50
;     l0e51
;     l0e52
;     l0e53
;     l0e54
;     l0e55
;     l0e56
;     l0e58
;     l0e78
;     l0e98
;     l0ebe
;     l0ec4
;     l0ed0
;     l0ed6
;     l0edc
;     l0ee2
;     l0ee8
;     l0eee
;     l0ef4
;     l0efa
;     l0f00
;     l0f01
;     l0f02
;     l0f03
;     l0f04
;     l0f05
;     l17b2
;     l17d1
;     l1918
;     l1919
;     l191a
;     l191c
;     l191d
;     l191e
;     l191f
;     l1920
;     l1921
;     l1922
;     l1923
;     l1924
;     l1925
;     l1926
;     l1927
;     l1928
;     l1929
;     l192a
;     l192b
;     l192c
;     l192d
;     l192e
;     l192f
;     l1930
;     l1931
;     l1932
;     l1933
;     l1934
;     l1935
;     l1936
;     l1937
;     l1938
;     l1939
;     l193a
;     l1cc9
;     l1cca
;     l1ccb
;     l1ccc
;     l1ccd
;     l1cce
;     l1ccf
;     l1cd0
;     l1cd1
;     l1cd2
;     l1cd6
;     l1cd7
;     l1cd8
;     l1cd9
;     l1cda
;     l1cdb
;     l1cdc
;     l1cdd
;     l1cde
;     l1cdf
;     l1ce0
;     l1ce1
;     l1cf6
;     l1d07
;     l1d18
;     l1d1c
;     l2008
;     l2146
;     l215a
;     l2184
;     l2192
;     l21a0
;     l21ae
;     l21cc
;     l21d2
;     l21d3
;     l2202
;     l2203
;     l2210
;     l2216
;     l221c
;     l2222
;     l222b
;     l223d
;     l224c
;     l2265
;     l25d5
;     l25d6
;     l25d7
;     l25d8
;     l25d9
;     l25da
;     l25db
;     l25dc
;     l25dd
;     l25de
;     l25df
;     l25e0
;     l25e1
;     l25f0
;     l25f1
;     l25f2
;     l2652
;     l2653
;     l2654
;     l2655
;     l2657
;     l2658
;     l2659
;     l265a
;     l265b
;     l2890
;     l2891
;     l2892
;     l2894
;     l2896
;     l2897
;     l2a56
;     l2a5f
;     l2a70
;     l2a81
;     l2a82
;     l2a83
;     l2c60
;     l2d61
;     l2d62
;     l2d63
;     l2d64
;     l2d65
;     l2d66
;     l2d67
;     l2d6e
;     l2d6f
;     l2d70
;     l2d71
;     l2d72
;     l2d73
;     l2d75
;     l33b1
;     l33b9
;     l33ba
;     l33bb
;     l33bc
;     l33bd
;     l33c0
;     l33c6
;     l33cc
;     l34b0
;     l34b1
;     l34b2
;     l34b3
;     l34b4
;     l34b5
;     l34b6
;     l34b7
;     l34b8
;     l34b9
;     l34ba
;     l34bb
;     l34bc
;     l34c0
;     l34de
;     l34e1
;     l34e4
;     l3907
;     l3908
;     l3909
;     l390a
;     l3912
;     l3997
;     l39bd
;     l3a1f
;     l3a4e
;     l3a72
;     l3a8c
;     l3ac6
;     l3b1b
;     l3b46
;     l4066
;     l406f
;     l4070
;     l4072
;     l407b
;     l407f
;     l4325
;     l4326
;     l4327
;     l4335
;     l4336
;     l4337
;     l4338
;     l4345
;     l44d3
;     l44e1
;     l49f0
;     l49f2
;     l49f3
;     l49f4
;     l49f8
;     l4a00
;     l593f
;     l6b38
;     l6c78
;     l6e48
;     loop_c0fac
;     loop_c0fc7
;     loop_c1099
;     loop_c10c2
;     loop_c1442
;     loop_c144f
;     loop_c14b6
;     loop_c1664
;     loop_c169b
;     loop_c179e
;     loop_c17a0
;     loop_c1b5d
;     loop_c1ba9
;     loop_c1bd1
;     loop_c1bdd
;     loop_c1d34
;     loop_c1d68
;     loop_c1d90
;     loop_c1d9e
;     loop_c1dbf
;     loop_c1e6d
;     loop_c1e86
;     loop_c1f19
;     loop_c1f70
;     loop_c1f97
;     loop_c2012
;     loop_c2051
;     loop_c206b
;     loop_c2123
;     loop_c227f
;     loop_c22a5
;     loop_c22b3
;     loop_c22bf
;     loop_c22cb
;     loop_c22fc
;     loop_c2308
;     loop_c2314
;     loop_c2320
;     loop_c2338
;     loop_c262b
;     loop_c278c
;     loop_c2836
;     loop_c2e4a
;     loop_c2e6d
;     loop_c2e75
;     loop_c2e8d
;     loop_c2e95
;     loop_c2f76
;     loop_c2f8e
;     loop_c2fd6
;     loop_c2ffa
;     loop_c31a9
;     loop_c31e2
;     loop_c31e4
;     loop_c320f
;     loop_c3213
;     loop_c347f
;     loop_c3583
;     loop_c35b8
;     loop_c35d4
;     loop_c35f9
;     loop_c361c
;     loop_c3811
;     loop_c3b68
;     loop_c3b81
;     loop_c3b98
;     loop_c3bce
;     loop_c3be2
;     loop_c3bf1
;     loop_c3c07
;     loop_c3c50
;     loop_c3c81
;     loop_c3c9f
;     loop_c3cb2
;     loop_c3ccb
;     loop_c3cfa
;     loop_c3d0c
;     loop_c3d27
;     loop_c405f
;     loop_c419d
;     loop_c423e
;     loop_c4439
;     loop_c452d
;     loop_c457e
;     loop_c45ba
;     loop_c4650
;     loop_c47bf
;     sub_c0f06
;     sub_c0f0e
;     sub_c0f18
;     sub_c0f4a
;     sub_c0f64
;     sub_c0f9a
;     sub_c0fbe
;     sub_c0fe6
;     sub_c1081
;     sub_c10af
;     sub_c10fb
;     sub_c120d
;     sub_c1211
;     sub_c1219
;     sub_c12f7
;     sub_c138a
;     sub_c13d0
;     sub_c1438
;     sub_c14a4
;     sub_c14d2
;     sub_c159d
;     sub_c1611
;     sub_c1631
;     sub_c16f2
;     sub_c179c
;     sub_c17d8
;     sub_c193f
;     sub_c1aa3
;     sub_c1aba
;     sub_c1ac7
;     sub_c1ad1
;     sub_c1ba1
;     sub_c1bcf
;     sub_c1bdb
;     sub_c1be7
;     sub_c1bfc
;     sub_c1d24
;     sub_c1d58
;     sub_c1daf
;     sub_c1de8
;     sub_c1e3d
;     sub_c1f03
;     sub_c1f2d
;     sub_c1f5d
;     sub_c1fb4
;     sub_c200c
;     sub_c2025
;     sub_c20a4
;     sub_c2113
;     sub_c2275
;     sub_c22a3
;     sub_c22b1
;     sub_c22bd
;     sub_c22c9
;     sub_c22d5
;     sub_c22fa
;     sub_c2306
;     sub_c2312
;     sub_c231e
;     sub_c2336
;     sub_c234b
;     sub_c2436
;     sub_c245a
;     sub_c2629
;     sub_c2667
;     sub_c2758
;     sub_c28a0
;     sub_c28f8
;     sub_c2998
;     sub_c2a8b
;     sub_c2bcf
;     sub_c2c29
;     sub_c2c3a
;     sub_c2dd0
;     sub_c2e01
;     sub_c2e61
;     sub_c2eac
;     sub_c2f45
;     sub_c3019
;     sub_c3161
;     sub_c317c
;     sub_c33d2
;     sub_c34f4
;     sub_c35a5
;     sub_c35f7
;     sub_c3614
;     sub_c362f
;     sub_c364f
;     sub_c3b61
;     sub_c3d1b
;     sub_c3d30
;     sub_c3d3e
;     sub_c4016
;     sub_c404c
;     sub_c419b
;     sub_c41bb
;     sub_c41e9
;     sub_c43d7
;     sub_c4479
;     sub_c4486
;     sub_c44e8
;     sub_c459d
;     sub_c45ae
;     sub_c45b8
;     sub_c4900
    assert <(l2008) == &08
    assert <(l2184) == &84
    assert <(l2192) == &92
    assert <(l21a0) == &a0
    assert <(l21ae) == &ae
    assert <(l44e1) == &e1
    assert <(l49f0) == &f0
    assert <(l49f8) == &f8
    assert <(sound_1) == &c8
    assert <(sound_2) == &d0
    assert <(sound_3) == &d8
    assert <(sound_7) == &f8
    assert <(sound_8) == &00
    assert <(sound_9) == &08
    assert >(l2008) == &20
    assert >(l2184) == &21
    assert >(l2192) == &21
    assert >(l21a0) == &21
    assert >(l21ae) == &21
    assert >(l44e1) == &44
    assert >(l49f0) == &49
    assert >(l49f8) == &49
    assert >(sound_1) == &21
    assert >(sound_2) == &21
    assert >(sound_3) == &21
    assert >(sound_7) == &21
    assert >(sound_8) == &22
    assert >(sound_9) == &22

save pydis_start, pydis_end
