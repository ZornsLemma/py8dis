; ----------------------------------------------------------------------------------
;
; Starship Command (the original BBC Micro version)
;
; Disassembled by TobyLobster using the py8dis tool.
; Based on the labels from the Level 7 disassembly (http://www.level7.org.uk/miscellany/starship-command-disassembly.txt)
;
; ----------------------------------------------------------------------------------

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
screen_address_low                      = &0070
screen_address_high                     = &0071
output_pixels                           = &0072
output_fraction                         = &0073
segment_length                          = &0074
temp8                                   = &0075
temp9                                   = &0076
temp10                                  = &0077
segment_angle                           = &0078
screen_start_high                       = &0079
x_pixels                                = &007a
y_pixels                                = &007b
temp11                                  = &007c
temp0_low                               = &0080
temp0_high                              = &0081
temp1_low                               = &0082
temp2_low                               = &0082
temp1_high                              = &0083
temp2_high                              = &0083
temp3                                   = &0084
temp4                                   = &0085
temp5                                   = &0086
temp6                                   = &0087
temp7                                   = &0088
page_low                                = &008e
page_high                               = &008f
enemy_ships_previous_on_screen          = &0400
enemy_ships_previous_x_fraction         = &0401
enemy_ships_previous_x_pixels           = &0402
enemy_ships_previous_x_screens          = &0403
enemy_ships_previous_x_fraction1        = &0404
enemy_ships_previous_x_pixels1          = &0405
enemy_ships_previous_x_screens1         = &0406
enemy_ships_previous_angle              = &0407
enemy_ships_velocity                    = &0408
enemy_ships_flags_or_explosion_timer    = &0409
enemy_ships_type                        = &040a
enemy_ships_on_screen                   = &0480
enemy_ships_x_fraction                  = &0481
enemy_ships_x_pixels                    = &0482
enemy_ships_x_screens                   = &0483
enemy_ships_x_fraction1                 = &0484
enemy_ships_x_pixels1                   = &0485
enemy_ships_x_screens1                  = &0486
enemy_ships_angle                       = &0487
enemy_ships_temporary_behaviour_flags   = &0488
enemy_ships_energy                      = &0489
enemy_ships_firing_cooldown             = &048a
user_defined_characters                 = &0c00
unused_copy_of_scanner_static_eor       = &593f
starship_top_screen_address             = &6b38
starship_bottom_screen_address          = &6c78
energy_screen_address                   = &6e48
oswrch                                  = &ffee
osword                                  = &fff1
osbyte                                  = &fff4

    org &1f00

.pydis_start

; Move 1: &1f00 to &0e00 for length 17073
    org &0e00
.unused_copyright_string1
    equb &0d, &ff                                                     ; 1f00: 0d ff       ..  :0e00[1]
    equs "STARSHIP COMMAND 1.21 Copyright (c) 1982"                   ; 1f02: 53 54 41... STA :0e02[1]
    equb &0d, &50, &54                                                ; 1f2a: 0d 50 54    .PT :0e2a[1]
.number_of_delay_loops
    equb 0                                                            ; 1f2d: 00          .   :0e2d[1]
.enemy_ship_was_previously_on_screen
    equb 1                                                            ; 1f2e: 01          .   :0e2e[1]
.enemy_ship_was_on_screen
    equb 1                                                            ; 1f2f: 01          .   :0e2f[1]
.additional_damage_from_collision_with_enemy_ship
    equb &c0                                                          ; 1f30: c0          .   :0e30[1]
.damage_enemy_ship_incurs_from_collision_with_other_enemy_ship
    equb &20                                                          ; 1f31: 20              :0e31[1]
.starship_angle_fraction
    equb &c4                                                          ; 1f32: c4          .   :0e32[1]
.starship_angle_delta
    equb &ff                                                          ; 1f33: ff          .   :0e33[1]
.damage_to_enemy_ship_from_starship_torpedo
    equb &10                                                          ; 1f34: 10          .   :0e34[1]
.maximum_number_of_explosions
    equb 8                                                            ; 1f35: 08          .   :0e35[1]
.value_used_for_enemy_torpedo_ttl
    equb &20                                                          ; 1f36: 20              :0e36[1]
.frame_of_enemy_ship_explosion_after_which_no_collisions
    equb &1b                                                          ; 1f37: 1b          .   :0e37[1]
.frame_of_enemy_ship_explosion_after_which_no_segments_are_plotted
    equb &23                                                          ; 1f38: 23          #   :0e38[1]
.enemy_ship_explosion_duration
    equb &25                                                          ; 1f39: 25          %   :0e39[1]
.size_of_enemy_ship_for_collisions_with_torpedoes
    equb 5                                                            ; 1f3a: 05          .   :0e3a[1]
.size_of_enemy_ship_for_collisions_between_enemy_ships
    equb 8, &4d                                                       ; 1f3b: 08 4d       .M  :0e3b[1]
.enemy_torpedo_table_address_low
    equb <enemy_torpedoes_table                                       ; 1f3d: b4          .   :0e3d[1]
.enemy_torpedo_table_address_high
    equb >enemy_torpedoes_table                                       ; 1f3e: 4f          O   :0e3e[1]
.unused4
    equb &37, &5f                                                     ; 1f3f: 37 5f       7_  :0e3f[1]
.bit_table
    equb &80, &40, &20, &10, 8, 4, 2, 1                               ; 1f41: 80 40 20... .@  :0e41[1]
.star_table_address_low
    equb <star_table                                                  ; 1f49: 00          .   :0e49[1]
.star_table_address_high
    equb >star_table                                                  ; 1f4a: 4b          K   :0e4a[1]
.starship_torpedo_table_address_low
    equb <starship_torpedoes_table                                    ; 1f4b: 00          .   :0e4b[1]
.starship_torpedo_table_address_high
    equb >starship_torpedoes_table                                    ; 1f4c: 4f          O   :0e4c[1]
.starship_torpedo_tail_table_address_low
    equb <(starship_torpedoes_table+4)                                ; 1f4d: 04          .   :0e4d[1]
.starship_torpedo_tail_table_address_high
    equb >(starship_torpedoes_table+4)                                ; 1f4e: 4f          O   :0e4e[1]
.maximum_number_of_enemy_ships
    equb 8                                                            ; 1f4f: 08          .   :0e4f[1]
.maximum_number_of_stars
    equb &11                                                          ; 1f50: 11          .   :0e50[1]
.maximum_number_of_starship_torpedoes
    equb &0c                                                          ; 1f51: 0c          .   :0e51[1]
.maximum_number_of_enemy_torpedoes
    equb &18                                                          ; 1f52: 18          .   :0e52[1]
.starship_torpedoes_time_to_live
    equb &0f                                                          ; 1f53: 0f          .   :0e53[1]
.enemy_ships_still_to_consider
    equb 0                                                            ; 1f54: 00          .   :0e54[1]
.torpedoes_still_to_consider
    equb 0                                                            ; 1f55: 00          .   :0e55[1]
.starship_shields_active
    equb 1                                                            ; 1f56: 01          .   :0e56[1]
.unused5
    equb &3a                                                          ; 1f57: 3a          :   :0e57[1]
.sine_table
    equb   0,   1,   2,   3,   4,   5,   5,   6,   6,   6,   5,   5   ; 1f58: 00 01 02... ... :0e58[1]
    equb   4,   3,   2,   1,   0, &ff, &fe, &fd, &fc, &fb, &fb, &fa   ; 1f64: 04 03 02... ... :0e64[1]
    equb &fa, &fa, &fb, &fb, &fc, &fd, &fe, &ff                       ; 1f70: fa fa fb... ... :0e70[1]
.cosine_table
    equb &fa, &fa, &fb, &fb, &fc, &fd, &fe, &ff, 0, 1, 2, 3,   4      ; 1f78: fa fa fb... ... :0e78[1]
    equb   5,   5,   6,   6,   6,   5,   5,   4, 3, 2, 1, 0, &ff      ; 1f85: 05 05 06... ... :0e85[1]
    equb &fe, &fd, &fc, &fb, &fb, &fa                                 ; 1f92: fe fd fc... ... :0e92[1]
.segment_angle_to_x_y_deltas_table
    equb 3, &0f, 3, &0f, &0f, &0c, &0f, &0c, &0c, &0d, &0c, &0d, &0d  ; 1f98: 03 0f 03... ... :0e98[1]
    equb 1, &0d, 1,   1,   5,   1,   5,   5,   4,   5,   4,   4,   7  ; 1fa5: 01 0d 01... ... :0ea5[1]
    equb 4,   7, 7,   3,   7,   3                                     ; 1fb2: 04 07 07... ... :0eb2[1]
.unused6
    equb 0, &ff, &ff, &ff, &ff, &ff                                   ; 1fb8: 00 ff ff... ... :0eb8[1]
.starship_rotation_cosine_table
    equb 0, &fe, &f8, &ee, &e0, &ce                                   ; 1fbe: 00 fe f8... ... :0ebe[1]
.starship_rotation_sine_table
    equb 0, 2, 4, 6, 8, &0a                                           ; 1fc4: 00 02 04... ... :0ec4[1]
.unused7
    equb 0, 0, 0, 0, 0, 0                                             ; 1fca: 00 00 00... ... :0eca[1]
.rotated_x_correction_lsb
    equb 0, &ff, &fc, &f7, &f0, &e7                                   ; 1fd0: 00 ff fc... ... :0ed0[1]
.rotated_x_correction_screens
    equb 0, 0, 1, 2, 3, 4                                             ; 1fd6: 00 00 01... ... :0ed6[1]
.rotated_y_correction_lsb
    equb 0, 1, 4, 9, &10, &19                                         ; 1fdc: 00 01 04... ... :0edc[1]
.rotated_y_correction_screens
    equb 0, 1, 2, 3, 4, 5                                             ; 1fe2: 00 01 02... ... :0ee2[1]
.rotated_x_correction_fraction
    equb 0, &fe, &ff, &fc, &fa, &f6                                   ; 1fe8: 00 fe ff... ... :0ee8[1]
.rotated_x_correction_pixels
    equb 0, &fe, &fb, &f6, &ef, &e6                                   ; 1fee: 00 fe fb... ... :0eee[1]
.rotated_y_correction_fraction
    equb 1, 0, 2, 0, &ff, &fe                                         ; 1ff4: 01 00 02... ... :0ef4[1]
.rotated_y_correction_pixels
    equb 0, 1, 4, 9, &0f, &18                                         ; 1ffa: 00 01 04... ... :0efa[1]
.starship_velocity_high
    equb 0                                                            ; 2000: 00          .   :0f00[1]
.starship_velocity_low
    equb 0                                                            ; 2001: 00          .   :0f01[1]
.starship_rotation
    equb 0                                                            ; 2002: 00          .   :0f02[1]
.starship_rotation_magnitude
    equb 0                                                            ; 2003: 00          .   :0f03[1]
.starship_rotation_cosine
    equb 0                                                            ; 2004: 00          .   :0f04[1]
.starship_rotation_sine_magnitude
    equb 0                                                            ; 2005: 00          .   :0f05[1]

; ----------------------------------------------------------------------------------
.set_pixel
    jsr calculate_pixel_address                                       ; 2006: 20 18 0f     .. :0f06[1]
    ora (screen_address_low),y                                        ; 2009: 11 70       .p  :0f09[1]
    sta (screen_address_low),y                                        ; 200b: 91 70       .p  :0f0b[1]
    rts                                                               ; 200d: 60          `   :0f0d[1]

; ----------------------------------------------------------------------------------
.unset_pixel
    jsr calculate_pixel_address                                       ; 200e: 20 18 0f     .. :0f0e[1]
    eor #&ff                                                          ; 2011: 49 ff       I.  :0f11[1]
    and (screen_address_low),y                                        ; 2013: 31 70       1p  :0f13[1]
    sta (screen_address_low),y                                        ; 2015: 91 70       .p  :0f15[1]
    rts                                                               ; 2017: 60          `   :0f17[1]

; ----------------------------------------------------------------------------------
.calculate_pixel_address
    lda #0                                                            ; 2018: a9 00       ..  :0f18[1]
    sta screen_address_low                                            ; 201a: 85 70       .p  :0f1a[1]
    lda y_pixels                                                      ; 201c: a5 7b       .{  :0f1c[1]
    lsr a                                                             ; 201e: 4a          J   :0f1e[1]
    lsr a                                                             ; 201f: 4a          J   :0f1f[1]
    lsr a                                                             ; 2020: 4a          J   :0f20[1]
    sta screen_address_high                                           ; 2021: 85 71       .q  :0f21[1]
    lsr a                                                             ; 2023: 4a          J   :0f23[1]
    ror screen_address_low                                            ; 2024: 66 70       fp  :0f24[1]
    lsr a                                                             ; 2026: 4a          J   :0f26[1]
    ror screen_address_low                                            ; 2027: 66 70       fp  :0f27[1]
    adc screen_address_high                                           ; 2029: 65 71       eq  :0f29[1]
    adc screen_start_high                                             ; 202b: 65 79       ey  :0f2b[1]
    sta screen_address_high                                           ; 202d: 85 71       .q  :0f2d[1]
    lda y_pixels                                                      ; 202f: a5 7b       .{  :0f2f[1]
    and #7                                                            ; 2031: 29 07       ).  :0f31[1]
    adc screen_address_low                                            ; 2033: 65 70       ep  :0f33[1]
    sta screen_address_low                                            ; 2035: 85 70       .p  :0f35[1]
    lda x_pixels                                                      ; 2037: a5 7a       .z  :0f37[1]
    and #&f8                                                          ; 2039: 29 f8       ).  :0f39[1]
    tay                                                               ; 203b: a8          .   :0f3b[1]
    lda x_pixels                                                      ; 203c: a5 7a       .z  :0f3c[1]
    and #7                                                            ; 203e: 29 07       ).  :0f3e[1]
    tax                                                               ; 2040: aa          .   :0f40[1]
    lda bit_table,x                                                   ; 2041: bd 41 0e    .A. :0f41[1]
    rts                                                               ; 2044: 60          `   :0f44[1]

.unused_infinite_loop
    equb &ea, &ea, &d0, &fc, &60                                      ; 2045: ea ea d0... ... :0f45[1]

; ----------------------------------------------------------------------------------
.eor_pixel_within_box_around_origin
    lda x_pixels                                                      ; 204a: a5 7a       .z  :0f4a[1]
    sec                                                               ; 204c: 38          8   :0f4c[1]
    sbc temp10                                                        ; 204d: e5 77       .w  :0f4d[1]
    bcs skip_inversion_x                                              ; 204f: b0 02       ..  :0f4f[1]
    eor #&ff                                                          ; 2051: 49 ff       I.  :0f51[1]
.skip_inversion_x
    cmp #&20                                                          ; 2053: c9 20       .   :0f53[1]
    bcs return                                                        ; 2055: b0 42       .B  :0f55[1]
    lda y_pixels                                                      ; 2057: a5 7b       .{  :0f57[1]
    sec                                                               ; 2059: 38          8   :0f59[1]
    sbc temp9                                                         ; 205a: e5 76       .v  :0f5a[1]
    bcs skip_inversion_y                                              ; 205c: b0 02       ..  :0f5c[1]
    eor #&ff                                                          ; 205e: 49 ff       I.  :0f5e[1]
.skip_inversion_y
    cmp #&20                                                          ; 2060: c9 20       .   :0f60[1]
    bcs return                                                        ; 2062: b0 35       .5  :0f62[1]
.eor_pixel
    lda #0                                                            ; 2064: a9 00       ..  :0f64[1]
    sta screen_address_low                                            ; 2066: 85 70       .p  :0f66[1]
    lda y_pixels                                                      ; 2068: a5 7b       .{  :0f68[1]
    lsr a                                                             ; 206a: 4a          J   :0f6a[1]
    lsr a                                                             ; 206b: 4a          J   :0f6b[1]
    lsr a                                                             ; 206c: 4a          J   :0f6c[1]
    sta screen_address_high                                           ; 206d: 85 71       .q  :0f6d[1]
    lsr a                                                             ; 206f: 4a          J   :0f6f[1]
    ror screen_address_low                                            ; 2070: 66 70       fp  :0f70[1]
    lsr a                                                             ; 2072: 4a          J   :0f72[1]
    ror screen_address_low                                            ; 2073: 66 70       fp  :0f73[1]
    adc screen_address_high                                           ; 2075: 65 71       eq  :0f75[1]
    adc screen_start_high                                             ; 2077: 65 79       ey  :0f77[1]
    sta screen_address_high                                           ; 2079: 85 71       .q  :0f79[1]
    lda y_pixels                                                      ; 207b: a5 7b       .{  :0f7b[1]
    and #7                                                            ; 207d: 29 07       ).  :0f7d[1]
    adc screen_address_low                                            ; 207f: 65 70       ep  :0f7f[1]
    sta screen_address_low                                            ; 2081: 85 70       .p  :0f81[1]
    lda x_pixels                                                      ; 2083: a5 7a       .z  :0f83[1]
    and #&f8                                                          ; 2085: 29 f8       ).  :0f85[1]
    tay                                                               ; 2087: a8          .   :0f87[1]
    lda x_pixels                                                      ; 2088: a5 7a       .z  :0f88[1]
    and #7                                                            ; 208a: 29 07       ).  :0f8a[1]
    tax                                                               ; 208c: aa          .   :0f8c[1]
    lda bit_table,x                                                   ; 208d: bd 41 0e    .A. :0f8d[1]
    eor (screen_address_low),y                                        ; 2090: 51 70       Qp  :0f90[1]
    sta (screen_address_low),y                                        ; 2092: 91 70       .p  :0f92[1]
    rts                                                               ; 2094: 60          `   :0f94[1]

.unused8
    equb &ea, &ea, &91, &70                                           ; 2095: ea ea 91... ... :0f95[1]

.return
    rts                                                               ; 2099: 60          `   :0f99[1]

; ----------------------------------------------------------------------------------
.multiply_torpedo_position_by_starship_rotation_sine_magnitude
    lda starship_rotation_sine_magnitude                              ; 209a: ad 05 0f    ... :0f9a[1]
    sta temp11                                                        ; 209d: 85 7c       .|  :0f9d[1]
    lda (temp0_low),y                                                 ; 209f: b1 80       ..  :0f9f[1]
    sta temp8                                                         ; 20a1: 85 75       .u  :0fa1[1]
    iny                                                               ; 20a3: c8          .   :0fa3[1]
    lda (temp0_low),y                                                 ; 20a4: b1 80       ..  :0fa4[1]
    sta output_fraction                                               ; 20a6: 85 73       .s  :0fa6[1]
    lda #0                                                            ; 20a8: a9 00       ..  :0fa8[1]
    ldx #&10                                                          ; 20aa: a2 10       ..  :0faa[1]
.loop_over_bits_of_input
    lsr output_fraction                                               ; 20ac: 46 73       Fs  :0fac[1]
    ror temp8                                                         ; 20ae: 66 75       fu  :0fae[1]
    bcc input_bit_unset                                               ; 20b0: 90 03       ..  :0fb0[1]
    clc                                                               ; 20b2: 18          .   :0fb2[1]
    adc temp11                                                        ; 20b3: 65 7c       e|  :0fb3[1]
.input_bit_unset
    ror a                                                             ; 20b5: 6a          j   :0fb5[1]
    ror output_pixels                                                 ; 20b6: 66 72       fr  :0fb6[1]
    dex                                                               ; 20b8: ca          .   :0fb8[1]
    bne loop_over_bits_of_input                                       ; 20b9: d0 f1       ..  :0fb9[1]
    sta output_fraction                                               ; 20bb: 85 73       .s  :0fbb[1]
    rts                                                               ; 20bd: 60          `   :0fbd[1]

; ----------------------------------------------------------------------------------
.multiply_torpedo_position_by_starship_rotation_cosine
    lda starship_rotation_cosine                                      ; 20be: ad 04 0f    ... :0fbe[1]
    sta temp8                                                         ; 20c1: 85 75       .u  :0fc1[1]
    lda #0                                                            ; 20c3: a9 00       ..  :0fc3[1]
    ldx #8                                                            ; 20c5: a2 08       ..  :0fc5[1]
.loop_over_bits_of_multiplier
    lsr temp8                                                         ; 20c7: 46 75       Fu  :0fc7[1]
    bcc multiplier_bit_unset                                          ; 20c9: 90 03       ..  :0fc9[1]
    clc                                                               ; 20cb: 18          .   :0fcb[1]
    adc (temp0_low),y                                                 ; 20cc: 71 80       q.  :0fcc[1]
.multiplier_bit_unset
    ror a                                                             ; 20ce: 6a          j   :0fce[1]
    dex                                                               ; 20cf: ca          .   :0fcf[1]
    bne loop_over_bits_of_multiplier                                  ; 20d0: d0 f5       ..  :0fd0[1]
    sec                                                               ; 20d2: 38          8   :0fd2[1]
    sbc (temp0_low),y                                                 ; 20d3: f1 80       ..  :0fd3[1]
    tax                                                               ; 20d5: aa          .   :0fd5[1]
    lda (temp0_low),y                                                 ; 20d6: b1 80       ..  :0fd6[1]
    sbc #0                                                            ; 20d8: e9 00       ..  :0fd8[1]
    sta temp8                                                         ; 20da: 85 75       .u  :0fda[1]
    txa                                                               ; 20dc: 8a          .   :0fdc[1]
    dey                                                               ; 20dd: 88          .   :0fdd[1]
    clc                                                               ; 20de: 18          .   :0fde[1]
    adc (temp0_low),y                                                 ; 20df: 71 80       q.  :0fdf[1]
    bcc return1                                                       ; 20e1: 90 02       ..  :0fe1[1]
    inc temp8                                                         ; 20e3: e6 75       .u  :0fe3[1]
.return1
    rts                                                               ; 20e5: 60          `   :0fe5[1]

; ----------------------------------------------------------------------------------
.update_object_position_for_starship_rotation_and_speed
    iny                                                               ; 20e6: c8          .   :0fe6[1]
    lda (temp0_low),y                                                 ; 20e7: b1 80       ..  :0fe7[1]
    sta x_pixels                                                      ; 20e9: 85 7a       .z  :0fe9[1]
    ldx starship_rotation                                             ; 20eb: ae 02 0f    ... :0feb[1]
    bmi skip_inversion                                                ; 20ee: 30 0c       0.  :0fee[1]
    eor #&ff                                                          ; 20f0: 49 ff       I.  :0ff0[1]
    sta (temp0_low),y                                                 ; 20f2: 91 80       ..  :0ff2[1]
    dey                                                               ; 20f4: 88          .   :0ff4[1]
    lda (temp0_low),y                                                 ; 20f5: b1 80       ..  :0ff5[1]
    eor #&ff                                                          ; 20f7: 49 ff       I.  :0ff7[1]
    sta (temp0_low),y                                                 ; 20f9: 91 80       ..  :0ff9[1]
    iny                                                               ; 20fb: c8          .   :0ffb[1]
.skip_inversion
    iny                                                               ; 20fc: c8          .   :0ffc[1]
    iny                                                               ; 20fd: c8          .   :0ffd[1]
    lda (temp0_low),y                                                 ; 20fe: b1 80       ..  :0ffe[1]
    sta y_pixels                                                      ; 2100: 85 7b       .{  :1000[1]
    ldx starship_rotation_sine_magnitude                              ; 2102: ae 05 0f    ... :1002[1]
    bne update_position_for_rotation                                  ; 2105: d0 06       ..  :1005[1]
    jsr brief_delay_80                                                ; 2107: 20 0d 12     .. :1007[1]
    jmp add_starship_velocity_to_position                             ; 210a: 4c 6f 10    Lo. :100a[1]

; ----------------------------------------------------------------------------------
.update_position_for_rotation
    dey                                                               ; 210d: 88          .   :100d[1]
    jsr multiply_torpedo_position_by_starship_rotation_sine_magnitude ; 210e: 20 9a 0f     .. :100e[1]
    dey                                                               ; 2111: 88          .   :1011[1]
    dey                                                               ; 2112: 88          .   :1012[1]
    jsr multiply_torpedo_position_by_starship_rotation_cosine         ; 2113: 20 be 0f     .. :1013[1]
    clc                                                               ; 2116: 18          .   :1016[1]
    adc output_pixels                                                 ; 2117: 65 72       er  :1017[1]
    sta temp9                                                         ; 2119: 85 76       .v  :1019[1]
    lda temp8                                                         ; 211b: a5 75       .u  :101b[1]
    adc output_fraction                                               ; 211d: 65 73       es  :101d[1]
    sta temp10                                                        ; 211f: 85 77       .w  :101f[1]
    jsr multiply_torpedo_position_by_starship_rotation_sine_magnitude ; 2121: 20 9a 0f     .. :1021[1]
    iny                                                               ; 2124: c8          .   :1024[1]
    iny                                                               ; 2125: c8          .   :1025[1]
    jsr multiply_torpedo_position_by_starship_rotation_cosine         ; 2126: 20 be 0f     .. :1026[1]
    sec                                                               ; 2129: 38          8   :1029[1]
    sbc output_pixels                                                 ; 212a: e5 72       .r  :102a[1]
    sta (temp0_low),y                                                 ; 212c: 91 80       ..  :102c[1]
    iny                                                               ; 212e: c8          .   :102e[1]
    lda temp8                                                         ; 212f: a5 75       .u  :102f[1]
    sbc output_fraction                                               ; 2131: e5 73       .s  :1031[1]
    sta (temp0_low),y                                                 ; 2133: 91 80       ..  :1033[1]
    dey                                                               ; 2135: 88          .   :1035[1]
    dey                                                               ; 2136: 88          .   :1036[1]
    dey                                                               ; 2137: 88          .   :1037[1]
    ldx starship_rotation_magnitude                                   ; 2138: ae 03 0f    ... :1038[1]
    lda temp9                                                         ; 213b: a5 76       .v  :103b[1]
    sec                                                               ; 213d: 38          8   :103d[1]
    sbc rotated_x_correction_lsb,x                                    ; 213e: fd d0 0e    ... :103e[1]
    sta (temp0_low),y                                                 ; 2141: 91 80       ..  :1041[1]
    iny                                                               ; 2143: c8          .   :1043[1]
    lda temp10                                                        ; 2144: a5 77       .w  :1044[1]
    sbc rotated_x_correction_screens,x                                ; 2146: fd d6 0e    ... :1046[1]
    sta (temp0_low),y                                                 ; 2149: 91 80       ..  :1049[1]
    lda starship_rotation                                             ; 214b: ad 02 0f    ... :104b[1]
    bmi skip_uninversion                                              ; 214e: 30 0e       0.  :104e[1]
    dey                                                               ; 2150: 88          .   :1050[1]
    lda (temp0_low),y                                                 ; 2151: b1 80       ..  :1051[1]
    eor #&ff                                                          ; 2153: 49 ff       I.  :1053[1]
    sta (temp0_low),y                                                 ; 2155: 91 80       ..  :1055[1]
    iny                                                               ; 2157: c8          .   :1057[1]
    lda (temp0_low),y                                                 ; 2158: b1 80       ..  :1058[1]
    eor #&ff                                                          ; 215a: 49 ff       I.  :105a[1]
    sta (temp0_low),y                                                 ; 215c: 91 80       ..  :105c[1]
.skip_uninversion
    iny                                                               ; 215e: c8          .   :105e[1]
    lda (temp0_low),y                                                 ; 215f: b1 80       ..  :105f[1]
    clc                                                               ; 2161: 18          .   :1061[1]
    adc rotated_y_correction_lsb,x                                    ; 2162: 7d dc 0e    }.. :1062[1]
    sta (temp0_low),y                                                 ; 2165: 91 80       ..  :1065[1]
    iny                                                               ; 2167: c8          .   :1067[1]
    lda (temp0_low),y                                                 ; 2168: b1 80       ..  :1068[1]
    adc rotated_y_correction_screens,x                                ; 216a: 7d e2 0e    }.. :106a[1]
    sta (temp0_low),y                                                 ; 216d: 91 80       ..  :106d[1]
.add_starship_velocity_to_position
    dey                                                               ; 216f: 88          .   :106f[1]
    lda (temp0_low),y                                                 ; 2170: b1 80       ..  :1070[1]
    clc                                                               ; 2172: 18          .   :1072[1]
    adc starship_velocity_low                                         ; 2173: 6d 01 0f    m.. :1073[1]
    sta (temp0_low),y                                                 ; 2176: 91 80       ..  :1076[1]
    iny                                                               ; 2178: c8          .   :1078[1]
    lda (temp0_low),y                                                 ; 2179: b1 80       ..  :1079[1]
    adc starship_velocity_high                                        ; 217b: 6d 00 0f    m.. :107b[1]
    sta (temp0_low),y                                                 ; 217e: 91 80       ..  :107e[1]
    rts                                                               ; 2180: 60          `   :1080[1]

; ----------------------------------------------------------------------------------
.multiply_enemy_position_by_starship_rotation_sine_magnitude
    lda starship_rotation_sine_magnitude                              ; 2181: ad 05 0f    ... :1081[1]
    sta segment_length                                                ; 2184: 85 74       .t  :1084[1]
    lda enemy_ships_x_fraction,x                                      ; 2186: bd 81 04    ... :1086[1]
    sta temp9                                                         ; 2189: 85 76       .v  :1089[1]
    lda enemy_ships_x_pixels,x                                        ; 218b: bd 82 04    ... :108b[1]
    sta temp10                                                        ; 218e: 85 77       .w  :108e[1]
    lda enemy_ships_x_screens,x                                       ; 2190: bd 83 04    ... :1090[1]
    sta segment_angle                                                 ; 2193: 85 78       .x  :1093[1]
    lda #0                                                            ; 2195: a9 00       ..  :1095[1]
    ldy #&18                                                          ; 2197: a0 18       ..  :1097[1]
.loop_over_bits_of_input1
    lsr segment_angle                                                 ; 2199: 46 78       Fx  :1099[1]
    ror temp10                                                        ; 219b: 66 77       fw  :109b[1]
    ror temp9                                                         ; 219d: 66 76       fv  :109d[1]
    bcc input_bit_unset1                                              ; 219f: 90 03       ..  :109f[1]
    clc                                                               ; 21a1: 18          .   :10a1[1]
    adc segment_length                                                ; 21a2: 65 74       et  :10a2[1]
.input_bit_unset1
    ror a                                                             ; 21a4: 6a          j   :10a4[1]
    ror output_fraction                                               ; 21a5: 66 73       fs  :10a5[1]
    ror output_pixels                                                 ; 21a7: 66 72       fr  :10a7[1]
    dey                                                               ; 21a9: 88          .   :10a9[1]
    bne loop_over_bits_of_input1                                      ; 21aa: d0 ed       ..  :10aa[1]
    sta segment_length                                                ; 21ac: 85 74       .t  :10ac[1]
    rts                                                               ; 21ae: 60          `   :10ae[1]

; ----------------------------------------------------------------------------------
.multiply_enemy_position_by_starship_rotation_cosine
    lda starship_rotation_cosine                                      ; 21af: ad 04 0f    ... :10af[1]
    sta segment_angle                                                 ; 21b2: 85 78       .x  :10b2[1]
    lda enemy_ships_x_pixels,x                                        ; 21b4: bd 82 04    ... :10b4[1]
    sta temp9                                                         ; 21b7: 85 76       .v  :10b7[1]
    lda enemy_ships_x_screens,x                                       ; 21b9: bd 83 04    ... :10b9[1]
    sta temp10                                                        ; 21bc: 85 77       .w  :10bc[1]
    lda #0                                                            ; 21be: a9 00       ..  :10be[1]
    ldy #&10                                                          ; 21c0: a0 10       ..  :10c0[1]
.loop_over_bits_of_input2
    lsr temp10                                                        ; 21c2: 46 77       Fw  :10c2[1]
    ror temp9                                                         ; 21c4: 66 76       fv  :10c4[1]
    bcc input_bit_unset2                                              ; 21c6: 90 03       ..  :10c6[1]
    clc                                                               ; 21c8: 18          .   :10c8[1]
    adc segment_angle                                                 ; 21c9: 65 78       ex  :10c9[1]
.input_bit_unset2
    ror a                                                             ; 21cb: 6a          j   :10cb[1]
    ror temp8                                                         ; 21cc: 66 75       fu  :10cc[1]
    dey                                                               ; 21ce: 88          .   :10ce[1]
    bne loop_over_bits_of_input2                                      ; 21cf: d0 f1       ..  :10cf[1]
    tay                                                               ; 21d1: a8          .   :10d1[1]
    lda temp8                                                         ; 21d2: a5 75       .u  :10d2[1]
    clc                                                               ; 21d4: 18          .   :10d4[1]
    adc enemy_ships_x_fraction,x                                      ; 21d5: 7d 81 04    }.. :10d5[1]
    sta temp9                                                         ; 21d8: 85 76       .v  :10d8[1]
    tya                                                               ; 21da: 98          .   :10da[1]
    adc enemy_ships_x_pixels,x                                        ; 21db: 7d 82 04    }.. :10db[1]
    tay                                                               ; 21de: a8          .   :10de[1]
    lda enemy_ships_x_screens,x                                       ; 21df: bd 83 04    ... :10df[1]
    adc #0                                                            ; 21e2: 69 00       i.  :10e2[1]
    sta segment_angle                                                 ; 21e4: 85 78       .x  :10e4[1]
    lda temp9                                                         ; 21e6: a5 76       .v  :10e6[1]
    sec                                                               ; 21e8: 38          8   :10e8[1]
    sbc enemy_ships_x_pixels,x                                        ; 21e9: fd 82 04    ... :10e9[1]
    sta temp9                                                         ; 21ec: 85 76       .v  :10ec[1]
    tya                                                               ; 21ee: 98          .   :10ee[1]
    sbc enemy_ships_x_screens,x                                       ; 21ef: fd 83 04    ... :10ef[1]
    sta temp10                                                        ; 21f2: 85 77       .w  :10f2[1]
    lda segment_angle                                                 ; 21f4: a5 78       .x  :10f4[1]
    sbc #0                                                            ; 21f6: e9 00       ..  :10f6[1]
    sta segment_angle                                                 ; 21f8: 85 78       .x  :10f8[1]
    rts                                                               ; 21fa: 60          `   :10fa[1]

; ----------------------------------------------------------------------------------
.apply_starship_rotation_and_velocity_to_enemy_ships
    lda starship_rotation_sine_magnitude                              ; 21fb: ad 05 0f    ... :10fb[1]
    bne starship_is_rotating                                          ; 21fe: d0 06       ..  :10fe[1]
    jsr brief_delay_40                                                ; 2200: 20 11 12     .. :1100[1]
    jmp apply_starship_velocity_to_enemy_ship                         ; 2203: 4c f1 11    L.. :1103[1]

.starship_is_rotating
    lda enemy_ships_previous_x_pixels,x                               ; 2206: bd 02 04    ... :1106[1]
    clc                                                               ; 2209: 18          .   :1109[1]
    adc #&80                                                          ; 220a: 69 80       i.  :110a[1]
    sta enemy_ships_x_pixels,x                                        ; 220c: 9d 82 04    ... :110c[1]
    bcc skip1                                                         ; 220f: 90 03       ..  :110f[1]
    inc enemy_ships_x_screens,x                                       ; 2211: fe 83 04    ... :1111[1]
.skip1
    lda enemy_ships_previous_x_pixels1,x                              ; 2214: bd 05 04    ... :1114[1]
    clc                                                               ; 2217: 18          .   :1117[1]
    adc #&80                                                          ; 2218: 69 80       i.  :1118[1]
    sta enemy_ships_x_pixels1,x                                       ; 221a: 9d 85 04    ... :111a[1]
    bcc skip2                                                         ; 221d: 90 03       ..  :111d[1]
    inc enemy_ships_x_screens1,x                                      ; 221f: fe 86 04    ... :111f[1]
.skip2
    ldy starship_rotation                                             ; 2222: ac 02 0f    ... :1122[1]
    bmi skip_inversion1                                               ; 2225: 30 18       0.  :1125[1]
    lda enemy_ships_previous_x_fraction,x                             ; 2227: bd 01 04    ... :1127[1]
    eor #&ff                                                          ; 222a: 49 ff       I.  :112a[1]
    sta enemy_ships_x_fraction,x                                      ; 222c: 9d 81 04    ... :112c[1]
    lda enemy_ships_x_pixels,x                                        ; 222f: bd 82 04    ... :112f[1]
    eor #&ff                                                          ; 2232: 49 ff       I.  :1132[1]
    sta enemy_ships_x_pixels,x                                        ; 2234: 9d 82 04    ... :1134[1]
    lda enemy_ships_x_screens,x                                       ; 2237: bd 83 04    ... :1137[1]
    eor #&ff                                                          ; 223a: 49 ff       I.  :113a[1]
    sta enemy_ships_x_screens,x                                       ; 223c: 9d 83 04    ... :113c[1]
.skip_inversion1
    inx                                                               ; 223f: e8          .   :113f[1]
    inx                                                               ; 2240: e8          .   :1140[1]
    inx                                                               ; 2241: e8          .   :1141[1]
    jsr multiply_enemy_position_by_starship_rotation_sine_magnitude   ; 2242: 20 81 10     .. :1142[1]
    dex                                                               ; 2245: ca          .   :1145[1]
    dex                                                               ; 2246: ca          .   :1146[1]
    dex                                                               ; 2247: ca          .   :1147[1]
    jsr multiply_enemy_position_by_starship_rotation_cosine           ; 2248: 20 af 10     .. :1148[1]
    lda temp9                                                         ; 224b: a5 76       .v  :114b[1]
    clc                                                               ; 224d: 18          .   :114d[1]
    adc output_pixels                                                 ; 224e: 65 72       er  :114e[1]
    sta x_pixels                                                      ; 2250: 85 7a       .z  :1150[1]
    lda temp10                                                        ; 2252: a5 77       .w  :1152[1]
    adc output_fraction                                               ; 2254: 65 73       es  :1154[1]
    sta y_pixels                                                      ; 2256: 85 7b       .{  :1156[1]
    lda segment_angle                                                 ; 2258: a5 78       .x  :1158[1]
    adc segment_length                                                ; 225a: 65 74       et  :115a[1]
    sta temp11                                                        ; 225c: 85 7c       .|  :115c[1]
    jsr multiply_enemy_position_by_starship_rotation_sine_magnitude   ; 225e: 20 81 10     .. :115e[1]
    inx                                                               ; 2261: e8          .   :1161[1]
    inx                                                               ; 2262: e8          .   :1162[1]
    inx                                                               ; 2263: e8          .   :1163[1]
    jsr multiply_enemy_position_by_starship_rotation_cosine           ; 2264: 20 af 10     .. :1164[1]
    dex                                                               ; 2267: ca          .   :1167[1]
    dex                                                               ; 2268: ca          .   :1168[1]
    dex                                                               ; 2269: ca          .   :1169[1]
    lda temp9                                                         ; 226a: a5 76       .v  :116a[1]
    sec                                                               ; 226c: 38          8   :116c[1]
    sbc output_pixels                                                 ; 226d: e5 72       .r  :116d[1]
    sta temp9                                                         ; 226f: 85 76       .v  :116f[1]
    lda temp10                                                        ; 2271: a5 77       .w  :1171[1]
    sbc output_fraction                                               ; 2273: e5 73       .s  :1173[1]
    sta temp10                                                        ; 2275: 85 77       .w  :1175[1]
    lda segment_angle                                                 ; 2277: a5 78       .x  :1177[1]
    sbc segment_length                                                ; 2279: e5 74       .t  :1179[1]
    sta segment_angle                                                 ; 227b: 85 78       .x  :117b[1]
    ldy starship_rotation_magnitude                                   ; 227d: ac 03 0f    ... :117d[1]
    lda x_pixels                                                      ; 2280: a5 7a       .z  :1180[1]
    sec                                                               ; 2282: 38          8   :1182[1]
    sbc rotated_x_correction_fraction,y                               ; 2283: f9 e8 0e    ... :1183[1]
    sta enemy_ships_x_fraction,x                                      ; 2286: 9d 81 04    ... :1186[1]
    lda y_pixels                                                      ; 2289: a5 7b       .{  :1189[1]
    sbc rotated_x_correction_pixels,y                                 ; 228b: f9 ee 0e    ... :118b[1]
    sta enemy_ships_x_pixels,x                                        ; 228e: 9d 82 04    ... :118e[1]
    lda temp11                                                        ; 2291: a5 7c       .|  :1191[1]
    sbc rotated_x_correction_screens,y                                ; 2293: f9 d6 0e    ... :1193[1]
    sta enemy_ships_x_screens,x                                       ; 2296: 9d 83 04    ... :1196[1]
    lda starship_rotation                                             ; 2299: ad 02 0f    ... :1199[1]
    bmi skip_uninversion1                                             ; 229c: 30 18       0.  :119c[1]
    lda enemy_ships_x_fraction,x                                      ; 229e: bd 81 04    ... :119e[1]
    eor #&ff                                                          ; 22a1: 49 ff       I.  :11a1[1]
    sta enemy_ships_x_fraction,x                                      ; 22a3: 9d 81 04    ... :11a3[1]
    lda enemy_ships_x_pixels,x                                        ; 22a6: bd 82 04    ... :11a6[1]
    eor #&ff                                                          ; 22a9: 49 ff       I.  :11a9[1]
    sta enemy_ships_x_pixels,x                                        ; 22ab: 9d 82 04    ... :11ab[1]
    lda enemy_ships_x_screens,x                                       ; 22ae: bd 83 04    ... :11ae[1]
    eor #&ff                                                          ; 22b1: 49 ff       I.  :11b1[1]
    sta enemy_ships_x_screens,x                                       ; 22b3: 9d 83 04    ... :11b3[1]
.skip_uninversion1
    lda temp9                                                         ; 22b6: a5 76       .v  :11b6[1]
    clc                                                               ; 22b8: 18          .   :11b8[1]
    adc rotated_y_correction_fraction,y                               ; 22b9: 79 f4 0e    y.. :11b9[1]
    sta enemy_ships_x_fraction1,x                                     ; 22bc: 9d 84 04    ... :11bc[1]
    lda temp10                                                        ; 22bf: a5 77       .w  :11bf[1]
    adc rotated_y_correction_pixels,y                                 ; 22c1: 79 fa 0e    y.. :11c1[1]
    sta enemy_ships_x_pixels1,x                                       ; 22c4: 9d 85 04    ... :11c4[1]
    lda segment_angle                                                 ; 22c7: a5 78       .x  :11c7[1]
    adc rotated_y_correction_screens,y                                ; 22c9: 79 e2 0e    y.. :11c9[1]
    sta enemy_ships_x_screens1,x                                      ; 22cc: 9d 86 04    ... :11cc[1]
    lda enemy_ships_x_pixels1,x                                       ; 22cf: bd 85 04    ... :11cf[1]
    sec                                                               ; 22d2: 38          8   :11d2[1]
    sbc #&80                                                          ; 22d3: e9 80       ..  :11d3[1]
    sta enemy_ships_x_pixels1,x                                       ; 22d5: 9d 85 04    ... :11d5[1]
    lda enemy_ships_x_screens1,x                                      ; 22d8: bd 86 04    ... :11d8[1]
    sbc #0                                                            ; 22db: e9 00       ..  :11db[1]
    sta enemy_ships_x_screens1,x                                      ; 22dd: 9d 86 04    ... :11dd[1]
    lda enemy_ships_x_pixels,x                                        ; 22e0: bd 82 04    ... :11e0[1]
    sec                                                               ; 22e3: 38          8   :11e3[1]
    sbc #&80                                                          ; 22e4: e9 80       ..  :11e4[1]
    sta enemy_ships_x_pixels,x                                        ; 22e6: 9d 82 04    ... :11e6[1]
    lda enemy_ships_x_screens,x                                       ; 22e9: bd 83 04    ... :11e9[1]
    sbc #0                                                            ; 22ec: e9 00       ..  :11ec[1]
    sta enemy_ships_x_screens,x                                       ; 22ee: 9d 83 04    ... :11ee[1]
.apply_starship_velocity_to_enemy_ship
    lda enemy_ships_x_fraction1,x                                     ; 22f1: bd 84 04    ... :11f1[1]
    clc                                                               ; 22f4: 18          .   :11f4[1]
    adc starship_velocity_low                                         ; 22f5: 6d 01 0f    m.. :11f5[1]
    sta enemy_ships_x_fraction1,x                                     ; 22f8: 9d 84 04    ... :11f8[1]
    lda enemy_ships_x_pixels1,x                                       ; 22fb: bd 85 04    ... :11fb[1]
    adc starship_velocity_high                                        ; 22fe: 6d 00 0f    m.. :11fe[1]
    sta enemy_ships_x_pixels1,x                                       ; 2301: 9d 85 04    ... :1201[1]
    lda enemy_ships_x_screens1,x                                      ; 2304: bd 86 04    ... :1204[1]
    adc #0                                                            ; 2307: 69 00       i.  :1207[1]
    sta enemy_ships_x_screens1,x                                      ; 2309: 9d 86 04    ... :1209[1]
    rts                                                               ; 230c: 60          `   :120c[1]

; ----------------------------------------------------------------------------------
.brief_delay_80
    lda #&80                                                          ; 230d: a9 80       ..  :120d[1]
    bne brief_delay_loop                                              ; 230f: d0 02       ..  :120f[1]   ; ALWAYS branch

.brief_delay_40
    lda #&c0                                                          ; 2311: a9 c0       ..  :1211[1]
.brief_delay_loop
    clc                                                               ; 2313: 18          .   :1213[1]
    adc #1                                                            ; 2314: 69 01       i.  :1214[1]
    bne brief_delay_loop                                              ; 2316: d0 fb       ..  :1216[1]
    rts                                                               ; 2318: 60          `   :1218[1]

; ----------------------------------------------------------------------------------
.plot_starship_torpedoes
    lda maximum_number_of_starship_torpedoes                          ; 2319: ad 51 0e    .Q. :1219[1]
    sta torpedoes_still_to_consider                                   ; 231c: 8d 55 0e    .U. :121c[1]
    lda starship_torpedo_table_address_low                            ; 231f: ad 4b 0e    .K. :121f[1]
    sta temp0_low                                                     ; 2322: 85 80       ..  :1222[1]
    lda starship_torpedo_table_address_high                           ; 2324: ad 4c 0e    .L. :1224[1]
    sta temp0_high                                                    ; 2327: 85 81       ..  :1227[1]
    lda starship_torpedo_tail_table_address_low                       ; 2329: ad 4d 0e    .M. :1229[1]
    sta temp1_low                                                     ; 232c: 85 82       ..  :122c[1]
    lda starship_torpedo_tail_table_address_high                      ; 232e: ad 4e 0e    .N. :122e[1]
    sta temp1_high                                                    ; 2331: 85 83       ..  :1231[1]
.plot_starship_torpedoes_loop
    ldy #0                                                            ; 2333: a0 00       ..  :1233[1]
    lda (temp0_low),y                                                 ; 2335: b1 80       ..  :1235[1]
    bne torpedo_present                                               ; 2337: d0 03       ..  :1237[1]
    jmp update_next_torpedo                                           ; 2339: 4c d8 12    L.. :1239[1]

.torpedo_present
    sec                                                               ; 233c: 38          8   :123c[1]
    sbc #1                                                            ; 233d: e9 01       ..  :123d[1]
    sta (temp0_low),y                                                 ; 233f: 91 80       ..  :123f[1]
    bne torpedo_still_alive                                           ; 2341: d0 09       ..  :1241[1]
    dec number_of_live_starship_torpedoes                             ; 2343: ce 57 26    .W& :1243[1]
    jsr plot_expiring_torpedo                                         ; 2346: 20 8a 13     .. :1246[1]
    jmp update_next_torpedo                                           ; 2349: 4c d8 12    L.. :1249[1]

.torpedo_still_alive
    jsr plot_starship_torpedo                                         ; 234c: 20 5a 14     Z. :124c[1]
    ldy #1                                                            ; 234f: a0 01       ..  :124f[1]
    jsr update_object_position_for_starship_rotation_and_speed        ; 2351: 20 e6 0f     .. :1251[1]
    ldy #5                                                            ; 2354: a0 05       ..  :1254[1]
    jsr update_object_position_for_starship_rotation_and_speed        ; 2356: 20 e6 0f     .. :1256[1]
    ldy #1                                                            ; 2359: a0 01       ..  :1259[1]
    lda (temp0_low),y                                                 ; 235b: b1 80       ..  :125b[1]
    sec                                                               ; 235d: 38          8   :125d[1]
    sbc (temp1_low),y                                                 ; 235e: f1 82       ..  :125e[1]
    sta output_pixels                                                 ; 2360: 85 72       .r  :1260[1]
    iny                                                               ; 2362: c8          .   :1262[1]   ; Y=&02
    lda (temp0_low),y                                                 ; 2363: b1 80       ..  :1263[1]
    sbc (temp1_low),y                                                 ; 2365: f1 82       ..  :1265[1]
    asl output_pixels                                                 ; 2367: 06 72       .r  :1267[1]
    rol a                                                             ; 2369: 2a          *   :1269[1]
    asl output_pixels                                                 ; 236a: 06 72       .r  :126a[1]
    rol a                                                             ; 236c: 2a          *   :126c[1]
    sta output_fraction                                               ; 236d: 85 73       .s  :126d[1]
    iny                                                               ; 236f: c8          .   :126f[1]   ; Y=&03
    lda (temp0_low),y                                                 ; 2370: b1 80       ..  :1270[1]
    sec                                                               ; 2372: 38          8   :1272[1]
    sbc (temp1_low),y                                                 ; 2373: f1 82       ..  :1273[1]
    sta temp9                                                         ; 2375: 85 76       .v  :1275[1]
    iny                                                               ; 2377: c8          .   :1277[1]   ; Y=&04
    lda (temp0_low),y                                                 ; 2378: b1 80       ..  :1278[1]
    sbc (temp1_low),y                                                 ; 237a: f1 82       ..  :127a[1]
    asl temp9                                                         ; 237c: 06 76       .v  :127c[1]
    rol a                                                             ; 237e: 2a          *   :127e[1]
    asl temp9                                                         ; 237f: 06 76       .v  :127f[1]
    rol a                                                             ; 2381: 2a          *   :1281[1]
    sta temp10                                                        ; 2382: 85 77       .w  :1282[1]
    ldy #1                                                            ; 2384: a0 01       ..  :1284[1]
    lda (temp0_low),y                                                 ; 2386: b1 80       ..  :1286[1]
    clc                                                               ; 2388: 18          .   :1288[1]
    adc output_pixels                                                 ; 2389: 65 72       er  :1289[1]
    sta (temp0_low),y                                                 ; 238b: 91 80       ..  :128b[1]
    iny                                                               ; 238d: c8          .   :128d[1]   ; Y=&02
    lda (temp0_low),y                                                 ; 238e: b1 80       ..  :128e[1]
    adc output_fraction                                               ; 2390: 65 73       es  :1290[1]
    sta (temp0_low),y                                                 ; 2392: 91 80       ..  :1292[1]
    iny                                                               ; 2394: c8          .   :1294[1]   ; Y=&03
    lda (temp0_low),y                                                 ; 2395: b1 80       ..  :1295[1]
    clc                                                               ; 2397: 18          .   :1297[1]
    adc temp9                                                         ; 2398: 65 76       ev  :1298[1]
    sta (temp0_low),y                                                 ; 239a: 91 80       ..  :129a[1]
    iny                                                               ; 239c: c8          .   :129c[1]   ; Y=&04
    lda (temp0_low),y                                                 ; 239d: b1 80       ..  :129d[1]
    adc temp10                                                        ; 239f: 65 77       ew  :129f[1]
    sta (temp0_low),y                                                 ; 23a1: 91 80       ..  :12a1[1]
    ldy #1                                                            ; 23a3: a0 01       ..  :12a3[1]
    lda (temp1_low),y                                                 ; 23a5: b1 82       ..  :12a5[1]
    clc                                                               ; 23a7: 18          .   :12a7[1]
    adc output_pixels                                                 ; 23a8: 65 72       er  :12a8[1]
    sta (temp1_low),y                                                 ; 23aa: 91 82       ..  :12aa[1]
    iny                                                               ; 23ac: c8          .   :12ac[1]   ; Y=&02
    lda (temp1_low),y                                                 ; 23ad: b1 82       ..  :12ad[1]
    adc output_fraction                                               ; 23af: 65 73       es  :12af[1]
    sta (temp1_low),y                                                 ; 23b1: 91 82       ..  :12b1[1]
    iny                                                               ; 23b3: c8          .   :12b3[1]   ; Y=&03
    lda (temp1_low),y                                                 ; 23b4: b1 82       ..  :12b4[1]
    clc                                                               ; 23b6: 18          .   :12b6[1]
    adc temp9                                                         ; 23b7: 65 76       ev  :12b7[1]
    sta (temp1_low),y                                                 ; 23b9: 91 82       ..  :12b9[1]
    iny                                                               ; 23bb: c8          .   :12bb[1]   ; Y=&04
    lda (temp1_low),y                                                 ; 23bc: b1 82       ..  :12bc[1]
    adc temp10                                                        ; 23be: 65 77       ew  :12be[1]
    sta (temp1_low),y                                                 ; 23c0: 91 82       ..  :12c0[1]
    jsr check_for_collision_with_enemy_ships                          ; 23c2: 20 9d 15     .. :12c2[1]
    bcs update_next_torpedo                                           ; 23c5: b0 11       ..  :12c5[1]
    ldy #0                                                            ; 23c7: a0 00       ..  :12c7[1]
    lda (temp0_low),y                                                 ; 23c9: b1 80       ..  :12c9[1]
    cmp #2                                                            ; 23cb: c9 02       ..  :12cb[1]
    bcs unplot_torpedo                                                ; 23cd: b0 06       ..  :12cd[1]
    jsr plot_expiring_torpedo                                         ; 23cf: 20 8a 13     .. :12cf[1]
    sec                                                               ; 23d2: 38          8   :12d2[1]
    bcs update_next_torpedo                                           ; 23d3: b0 03       ..  :12d3[1]   ; ALWAYS branch

.unplot_torpedo
    jsr plot_starship_torpedo                                         ; 23d5: 20 5a 14     Z. :12d5[1]
.update_next_torpedo
    lda temp0_low                                                     ; 23d8: a5 80       ..  :12d8[1]
    clc                                                               ; 23da: 18          .   :12da[1]
    adc #9                                                            ; 23db: 69 09       i.  :12db[1]
    sta temp0_low                                                     ; 23dd: 85 80       ..  :12dd[1]
    bcc skip3                                                         ; 23df: 90 02       ..  :12df[1]
    inc temp0_high                                                    ; 23e1: e6 81       ..  :12e1[1]
.skip3
    lda temp1_low                                                     ; 23e3: a5 82       ..  :12e3[1]
    clc                                                               ; 23e5: 18          .   :12e5[1]
    adc #9                                                            ; 23e6: 69 09       i.  :12e6[1]
    sta temp1_low                                                     ; 23e8: 85 82       ..  :12e8[1]
    bcc skip4                                                         ; 23ea: 90 02       ..  :12ea[1]
    inc temp1_high                                                    ; 23ec: e6 83       ..  :12ec[1]
.skip4
    dec torpedoes_still_to_consider                                   ; 23ee: ce 55 0e    .U. :12ee[1]
    beq return2                                                       ; 23f1: f0 03       ..  :12f1[1]
    jmp plot_starship_torpedoes_loop                                  ; 23f3: 4c 33 12    L3. :12f3[1]

.return2
    rts                                                               ; 23f6: 60          `   :12f6[1]

; ----------------------------------------------------------------------------------
.fire_starship_torpedo
    lda number_of_live_starship_torpedoes                             ; 23f7: ad 57 26    .W& :12f7[1]
    cmp maximum_number_of_starship_torpedoes                          ; 23fa: cd 51 0e    .Q. :12fa[1]
    bcs return3                                                       ; 23fd: b0 23       .#  :12fd[1]
    inc number_of_live_starship_torpedoes                             ; 23ff: ee 57 26    .W& :12ff[1]
    inc starship_fired_torpedo                                        ; 2402: ee 58 26    .X& :1302[1]
    lda starship_torpedo_table_address_low                            ; 2405: ad 4b 0e    .K. :1305[1]
    sta temp0_low                                                     ; 2408: 85 80       ..  :1308[1]
    lda starship_torpedo_table_address_high                           ; 240a: ad 4c 0e    .L. :130a[1]
    sta temp0_high                                                    ; 240d: 85 81       ..  :130d[1]
    ldy #0                                                            ; 240f: a0 00       ..  :130f[1]
.loop5
    lda (temp0_low),y                                                 ; 2411: b1 80       ..  :1311[1]
    beq empty_torpedo_slot                                            ; 2413: f0 0e       ..  :1313[1]
    lda temp0_low                                                     ; 2415: a5 80       ..  :1315[1]
    clc                                                               ; 2417: 18          .   :1317[1]
    adc #9                                                            ; 2418: 69 09       i.  :1318[1]
    sta temp0_low                                                     ; 241a: 85 80       ..  :131a[1]
    bcc loop5                                                         ; 241c: 90 f3       ..  :131c[1]
    inc temp0_high                                                    ; 241e: e6 81       ..  :131e[1]
    bne loop5                                                         ; 2420: d0 ef       ..  :1320[1]
.return3
    rts                                                               ; 2422: 60          `   :1322[1]

; ----------------------------------------------------------------------------------
.empty_torpedo_slot
    lda starship_torpedoes_time_to_live                               ; 2423: ad 53 0e    .S. :1323[1]
    sta (temp0_low),y                                                 ; 2426: 91 80       ..  :1326[1]
    lda temp0_low                                                     ; 2428: a5 80       ..  :1328[1]
    clc                                                               ; 242a: 18          .   :132a[1]
    adc #4                                                            ; 242b: 69 04       i.  :132b[1]
    sta temp1_low                                                     ; 242d: 85 82       ..  :132d[1]
    lda temp0_high                                                    ; 242f: a5 81       ..  :132f[1]
    adc #0                                                            ; 2431: 69 00       i.  :1331[1]
    sta temp1_high                                                    ; 2433: 85 83       ..  :1333[1]
    iny                                                               ; 2435: c8          .   :1335[1]
    lda #&7f                                                          ; 2436: a9 7f       ..  :1336[1]
    sta (temp0_low),y                                                 ; 2438: 91 80       ..  :1338[1]
    sta (temp1_low),y                                                 ; 243a: 91 82       ..  :133a[1]
    iny                                                               ; 243c: c8          .   :133c[1]
    sta (temp0_low),y                                                 ; 243d: 91 80       ..  :133d[1]
    sta (temp1_low),y                                                 ; 243f: 91 82       ..  :133f[1]
    iny                                                               ; 2441: c8          .   :1341[1]
    lda #&80                                                          ; 2442: a9 80       ..  :1342[1]
    sta (temp0_low),y                                                 ; 2444: 91 80       ..  :1344[1]
    lda #&90                                                          ; 2446: a9 90       ..  :1346[1]
    sta (temp1_low),y                                                 ; 2448: 91 82       ..  :1348[1]
    iny                                                               ; 244a: c8          .   :134a[1]
    lda #&75                                                          ; 244b: a9 75       .u  :134b[1]
    sta (temp0_low),y                                                 ; 244d: 91 80       ..  :134d[1]
    lda #&77                                                          ; 244f: a9 77       .w  :134f[1]
    sta (temp1_low),y                                                 ; 2451: 91 82       ..  :1351[1]
    lda #0                                                            ; 2453: a9 00       ..  :1353[1]
    sta how_enemy_ship_was_damaged                                    ; 2455: 8d e0 1c    ... :1355[1]
    jsr check_for_collision_with_enemy_ships                          ; 2458: 20 9d 15     .. :1358[1]
    bcs return4                                                       ; 245b: b0 03       ..  :135b[1]
    jmp plot_starship_torpedo                                         ; 245d: 4c 5a 14    LZ. :135d[1]

.return4
    rts                                                               ; 2460: 60          `   :1360[1]

.unused9
    equb &ea                                                          ; 2461: ea          .   :1361[1]

; ----------------------------------------------------------------------------------
.plot_big_torpedo
    inc x_pixels                                                      ; 2462: e6 7a       .z  :1362[1]
    jsr eor_pixel                                                     ; 2464: 20 64 0f     d. :1364[1]
    inc y_pixels                                                      ; 2467: e6 7b       .{  :1367[1]
    jsr eor_pixel                                                     ; 2469: 20 64 0f     d. :1369[1]
    dec x_pixels                                                      ; 246c: c6 7a       .z  :136c[1]
    jsr eor_pixel                                                     ; 246e: 20 64 0f     d. :136e[1]
    inc y_pixels                                                      ; 2471: e6 7b       .{  :1371[1]
    jsr eor_pixel                                                     ; 2473: 20 64 0f     d. :1373[1]
    dec x_pixels                                                      ; 2476: c6 7a       .z  :1376[1]
    dec y_pixels                                                      ; 2478: c6 7b       .{  :1378[1]
    jsr eor_pixel                                                     ; 247a: 20 64 0f     d. :137a[1]
    dec y_pixels                                                      ; 247d: c6 7b       .{  :137d[1]
    jsr eor_pixel                                                     ; 247f: 20 64 0f     d. :137f[1]
    dec y_pixels                                                      ; 2482: c6 7b       .{  :1382[1]
    inc x_pixels                                                      ; 2484: e6 7a       .z  :1384[1]
    jsr eor_pixel                                                     ; 2486: 20 64 0f     d. :1386[1]
    rts                                                               ; 2489: 60          `   :1389[1]

; ----------------------------------------------------------------------------------
.plot_expiring_torpedo
    ldy #2                                                            ; 248a: a0 02       ..  :138a[1]
    lda (temp0_low),y                                                 ; 248c: b1 80       ..  :138c[1]
    sta x_pixels                                                      ; 248e: 85 7a       .z  :138e[1]
    ldy #4                                                            ; 2490: a0 04       ..  :1390[1]
    lda (temp0_low),y                                                 ; 2492: b1 80       ..  :1392[1]
    sta y_pixels                                                      ; 2494: 85 7b       .{  :1394[1]
    jsr eor_pixel                                                     ; 2496: 20 64 0f     d. :1396[1]
    inc y_pixels                                                      ; 2499: e6 7b       .{  :1399[1]
    jsr eor_pixel                                                     ; 249b: 20 64 0f     d. :139b[1]
    inc x_pixels                                                      ; 249e: e6 7a       .z  :139e[1]
    jsr eor_pixel                                                     ; 24a0: 20 64 0f     d. :13a0[1]
    inc x_pixels                                                      ; 24a3: e6 7a       .z  :13a3[1]
    dec y_pixels                                                      ; 24a5: c6 7b       .{  :13a5[1]
    jsr eor_pixel                                                     ; 24a7: 20 64 0f     d. :13a7[1]
    dec x_pixels                                                      ; 24aa: c6 7a       .z  :13aa[1]
    jsr eor_pixel                                                     ; 24ac: 20 64 0f     d. :13ac[1]
    dec y_pixels                                                      ; 24af: c6 7b       .{  :13af[1]
    jsr eor_pixel                                                     ; 24b1: 20 64 0f     d. :13b1[1]
    dec x_pixels                                                      ; 24b4: c6 7a       .z  :13b4[1]
    jsr eor_pixel                                                     ; 24b6: 20 64 0f     d. :13b6[1]
    dec x_pixels                                                      ; 24b9: c6 7a       .z  :13b9[1]
    jsr eor_pixel                                                     ; 24bb: 20 64 0f     d. :13bb[1]
    dec x_pixels                                                      ; 24be: c6 7a       .z  :13be[1]
    inc y_pixels                                                      ; 24c0: e6 7b       .{  :13c0[1]
    jsr eor_pixel                                                     ; 24c2: 20 64 0f     d. :13c2[1]
    inc x_pixels                                                      ; 24c5: e6 7a       .z  :13c5[1]
    jsr eor_pixel                                                     ; 24c7: 20 64 0f     d. :13c7[1]
    inc y_pixels                                                      ; 24ca: e6 7b       .{  :13ca[1]
    jsr eor_pixel                                                     ; 24cc: 20 64 0f     d. :13cc[1]
    rts                                                               ; 24cf: 60          `   :13cf[1]

; ----------------------------------------------------------------------------------
.update_stars
    lda star_table_address_low                                        ; 24d0: ad 49 0e    .I. :13d0[1]
    sta temp0_low                                                     ; 24d3: 85 80       ..  :13d3[1]
    lda star_table_address_high                                       ; 24d5: ad 4a 0e    .J. :13d5[1]
    sta temp0_high                                                    ; 24d8: 85 81       ..  :13d8[1]
    lda maximum_number_of_stars                                       ; 24da: ad 50 0e    .P. :13da[1]
    sta enemy_ships_still_to_consider                                 ; 24dd: 8d 54 0e    .T. :13dd[1]
.update_stars_loop
    ldy #0                                                            ; 24e0: a0 00       ..  :13e0[1]
    jsr update_object_position_for_starship_rotation_and_speed        ; 24e2: 20 e6 0f     .. :13e2[1]
    jsr eor_pixel                                                     ; 24e5: 20 64 0f     d. :13e5[1]
    ldy #1                                                            ; 24e8: a0 01       ..  :13e8[1]
    lda (temp0_low),y                                                 ; 24ea: b1 80       ..  :13ea[1]
    sta x_pixels                                                      ; 24ec: 85 7a       .z  :13ec[1]
    ldy #3                                                            ; 24ee: a0 03       ..  :13ee[1]
    lda (temp0_low),y                                                 ; 24f0: b1 80       ..  :13f0[1]
    sta y_pixels                                                      ; 24f2: 85 7b       .{  :13f2[1]
    jsr eor_pixel                                                     ; 24f4: 20 64 0f     d. :13f4[1]
    lda temp0_low                                                     ; 24f7: a5 80       ..  :13f7[1]
    clc                                                               ; 24f9: 18          .   :13f9[1]
    adc #4                                                            ; 24fa: 69 04       i.  :13fa[1]
    sta temp0_low                                                     ; 24fc: 85 80       ..  :13fc[1]
    bcc skip5                                                         ; 24fe: 90 02       ..  :13fe[1]
    inc temp0_high                                                    ; 2500: e6 81       ..  :1400[1]
.skip5
    dec enemy_ships_still_to_consider                                 ; 2502: ce 54 0e    .T. :1402[1]
    bne update_stars_loop                                             ; 2505: d0 d9       ..  :1405[1]
    rts                                                               ; 2507: 60          `   :1407[1]

; ----------------------------------------------------------------------------------
.unplot_long_range_scanner_if_shields_inactive
    lda starship_shields_active                                       ; 2508: ad 56 0e    .V. :1408[1]
    beq return5                                                       ; 250b: f0 4b       .K  :140b[1]
    lda #0                                                            ; 250d: a9 00       ..  :140d[1]
    sta starship_shields_active                                       ; 250f: 8d 56 0e    .V. :140f[1]
    jsr plot_top_and_right_edge_of_long_range_scanner_without_text    ; 2512: 20 38 14     8. :1412[1]
    jsr plot_enemy_ships_on_scanners                                  ; 2515: 20 19 30     .0 :1415[1]
    ldy #&1f                                                          ; 2518: a0 1f       ..  :1418[1]
    sty x_pixels                                                      ; 251a: 84 7a       .z  :141a[1]
    iny                                                               ; 251c: c8          .   :141c[1]   ; Y=&20
    sty y_pixels                                                      ; 251d: 84 7b       .{  :141d[1]
    inc screen_start_high                                             ; 251f: e6 79       .y  :141f[1]
    jsr unset_pixel                                                   ; 2521: 20 0e 0f     .. :1421[1]
    dec screen_start_high                                             ; 2524: c6 79       .y  :1424[1]
    jsr plot_shields_text                                             ; 2526: 20 bd 22     ." :1426[1]
    rts                                                               ; 2529: 60          `   :1429[1]

.unused10
    equb &ea                                                          ; 252a: ea          .   :142a[1]

; ----------------------------------------------------------------------------------
.plot_top_and_right_edge_of_long_range_scanner_with_blank_text
    lda starship_shields_active                                       ; 252b: ad 56 0e    .V. :142b[1]
    bne return5                                                       ; 252e: d0 28       .(  :142e[1]
    lda #1                                                            ; 2530: a9 01       ..  :1430[1]
    sta starship_shields_active                                       ; 2532: 8d 56 0e    .V. :1432[1]
    jsr plot_blank_text                                               ; 2535: 20 c9 22     ." :1435[1]
; ----------------------------------------------------------------------------------
.plot_top_and_right_edge_of_long_range_scanner_without_text
    inc screen_start_high                                             ; 2538: e6 79       .y  :1438[1]
    lda #&3f                                                          ; 253a: a9 3f       .?  :143a[1]
    sta x_pixels                                                      ; 253c: 85 7a       .z  :143c[1]
    lda #0                                                            ; 253e: a9 00       ..  :143e[1]
    sta y_pixels                                                      ; 2540: 85 7b       .{  :1440[1]
.plot_top_edge_loop
    jsr eor_pixel                                                     ; 2542: 20 64 0f     d. :1442[1]
    dec x_pixels                                                      ; 2545: c6 7a       .z  :1445[1]
    bpl plot_top_edge_loop                                            ; 2547: 10 f9       ..  :1447[1]
    lda #&3f                                                          ; 2549: a9 3f       .?  :1449[1]
    sta y_pixels                                                      ; 254b: 85 7b       .{  :144b[1]
    sta x_pixels                                                      ; 254d: 85 7a       .z  :144d[1]
.plot_right_edge_loop
    jsr eor_pixel                                                     ; 254f: 20 64 0f     d. :144f[1]
    dec y_pixels                                                      ; 2552: c6 7b       .{  :1452[1]
    bne plot_right_edge_loop                                          ; 2554: d0 f9       ..  :1454[1]
    dec screen_start_high                                             ; 2556: c6 79       .y  :1456[1]
.return5
    rts                                                               ; 2558: 60          `   :1458[1]

.unused11
    equb &ea                                                          ; 2559: ea          .   :1459[1]

; ----------------------------------------------------------------------------------
.plot_starship_torpedo
    ldy #2                                                            ; 255a: a0 02       ..  :145a[1]
    lda (temp0_low),y                                                 ; 255c: b1 80       ..  :145c[1]
    sta x_pixels                                                      ; 255e: 85 7a       .z  :145e[1]
    ldy #4                                                            ; 2560: a0 04       ..  :1460[1]
    lda (temp0_low),y                                                 ; 2562: b1 80       ..  :1462[1]
    sta y_pixels                                                      ; 2564: 85 7b       .{  :1464[1]
    jsr eor_pixel                                                     ; 2566: 20 64 0f     d. :1466[1]
    lda starship_torpedo_type                                         ; 2569: ad 5b 26    .[& :1469[1]
    beq small_starship_torpedoes                                      ; 256c: f0 03       ..  :146c[1]
    jmp plot_big_torpedo                                              ; 256e: 4c 62 13    Lb. :146e[1]

.small_starship_torpedoes
    ldy #2                                                            ; 2571: a0 02       ..  :1471[1]
    lda (temp1_low),y                                                 ; 2573: b1 82       ..  :1473[1]
    sta x_pixels                                                      ; 2575: 85 7a       .z  :1475[1]
    ldy #4                                                            ; 2577: a0 04       ..  :1477[1]
    lda (temp1_low),y                                                 ; 2579: b1 82       ..  :1479[1]
    sta y_pixels                                                      ; 257b: 85 7b       .{  :147b[1]
    jsr eor_pixel                                                     ; 257d: 20 64 0f     d. :147d[1]
    ldy #1                                                            ; 2580: a0 01       ..  :1480[1]
    lda (temp0_low),y                                                 ; 2582: b1 80       ..  :1482[1]
    clc                                                               ; 2584: 18          .   :1484[1]
    adc (temp1_low),y                                                 ; 2585: 71 82       q.  :1485[1]
    iny                                                               ; 2587: c8          .   :1487[1]   ; Y=&02
    lda (temp0_low),y                                                 ; 2588: b1 80       ..  :1488[1]
    adc (temp1_low),y                                                 ; 258a: 71 82       q.  :148a[1]
    ror a                                                             ; 258c: 6a          j   :148c[1]
    sta x_pixels                                                      ; 258d: 85 7a       .z  :148d[1]
    iny                                                               ; 258f: c8          .   :148f[1]   ; Y=&03
    lda (temp0_low),y                                                 ; 2590: b1 80       ..  :1490[1]
    clc                                                               ; 2592: 18          .   :1492[1]
    adc (temp1_low),y                                                 ; 2593: 71 82       q.  :1493[1]
    iny                                                               ; 2595: c8          .   :1495[1]   ; Y=&04
    lda (temp0_low),y                                                 ; 2596: b1 80       ..  :1496[1]
    adc (temp1_low),y                                                 ; 2598: 71 82       q.  :1498[1]
    ror a                                                             ; 259a: 6a          j   :149a[1]
    sta y_pixels                                                      ; 259b: 85 7b       .{  :149b[1]
    jsr eor_pixel                                                     ; 259d: 20 64 0f     d. :149d[1]
    rts                                                               ; 25a0: 60          `   :14a0[1]

.unused12
    equs "INY"                                                        ; 25a1: 49 4e 59    INY :14a1[1]

; ----------------------------------------------------------------------------------
.apply_rotation_to_starship_angle
    lda #0                                                            ; 25a4: a9 00       ..  :14a4[1]
    sta starship_angle_delta                                          ; 25a6: 8d 33 0e    .3. :14a6[1]
    ldx starship_rotation_magnitude                                   ; 25a9: ae 03 0f    ... :14a9[1]
    beq return6                                                       ; 25ac: f0 23       .#  :14ac[1]
    lda starship_angle_fraction                                       ; 25ae: ad 32 0e    .2. :14ae[1]
    ldy starship_rotation                                             ; 25b1: ac 02 0f    ... :14b1[1]
    bpl subtract_fraction                                             ; 25b4: 10 0d       ..  :14b4[1]
.add_fraction
    clc                                                               ; 25b6: 18          .   :14b6[1]
    adc #&52                                                          ; 25b7: 69 52       iR  :14b7[1]
    bcc skip6                                                         ; 25b9: 90 03       ..  :14b9[1]
    dec starship_angle_delta                                          ; 25bb: ce 33 0e    .3. :14bb[1]
.skip6
    dex                                                               ; 25be: ca          .   :14be[1]
    bne add_fraction                                                  ; 25bf: d0 f5       ..  :14bf[1]
    beq set_starship_angle_fraction                                   ; 25c1: f0 0b       ..  :14c1[1]   ; ALWAYS branch

.subtract_fraction
    sec                                                               ; 25c3: 38          8   :14c3[1]
    sbc #&52                                                          ; 25c4: e9 52       .R  :14c4[1]
    bcs skip7                                                         ; 25c6: b0 03       ..  :14c6[1]
    inc starship_angle_delta                                          ; 25c8: ee 33 0e    .3. :14c8[1]
.skip7
    dex                                                               ; 25cb: ca          .   :14cb[1]
    bne subtract_fraction                                             ; 25cc: d0 f5       ..  :14cc[1]
.set_starship_angle_fraction
    sta starship_angle_fraction                                       ; 25ce: 8d 32 0e    .2. :14ce[1]
.return6
    rts                                                               ; 25d1: 60          `   :14d1[1]

; ----------------------------------------------------------------------------------
.update_enemy_torpedoes
    lda #1                                                            ; 25d2: a9 01       ..  :14d2[1]
    sta how_enemy_ship_was_damaged                                    ; 25d4: 8d e0 1c    ... :14d4[1]
    lda maximum_number_of_enemy_torpedoes                             ; 25d7: ad 52 0e    .R. :14d7[1]
    sta torpedoes_still_to_consider                                   ; 25da: 8d 55 0e    .U. :14da[1]
    lda enemy_torpedo_table_address_low                               ; 25dd: ad 3d 0e    .=. :14dd[1]
    sta temp0_low                                                     ; 25e0: 85 80       ..  :14e0[1]
    lda enemy_torpedo_table_address_high                              ; 25e2: ad 3e 0e    .>. :14e2[1]
    sta temp0_high                                                    ; 25e5: 85 81       ..  :14e5[1]
.update_enemy_torpedoes_loop
    ldy #0                                                            ; 25e7: a0 00       ..  :14e7[1]
    lda (temp0_low),y                                                 ; 25e9: b1 80       ..  :14e9[1]
    bne enemy_torpedo_in_slot                                         ; 25eb: d0 03       ..  :14eb[1]
    jmp move_to_next_enemy_torpedo                                    ; 25ed: 4c 89 15    L.. :14ed[1]

; ----------------------------------------------------------------------------------
.enemy_torpedo_in_slot
    sec                                                               ; 25f0: 38          8   :14f0[1]
    sbc #1                                                            ; 25f1: e9 01       ..  :14f1[1]
    sta (temp0_low),y                                                 ; 25f3: 91 80       ..  :14f3[1]
    bne enemy_torpedo_still_alive                                     ; 25f5: d0 06       ..  :14f5[1]
    jsr plot_expiring_torpedo                                         ; 25f7: 20 8a 13     .. :14f7[1]
    jmp move_to_next_enemy_torpedo                                    ; 25fa: 4c 89 15    L.. :14fa[1]

.enemy_torpedo_still_alive
    jsr plot_enemy_torpedo                                            ; 25fd: 20 11 16     .. :14fd[1]
    ldy #1                                                            ; 2600: a0 01       ..  :1500[1]
    jsr update_object_position_for_starship_rotation_and_speed        ; 2602: 20 e6 0f     .. :1502[1]
    ldy #5                                                            ; 2605: a0 05       ..  :1505[1]
    lda (temp0_low),y                                                 ; 2607: b1 80       ..  :1507[1]
    clc                                                               ; 2609: 18          .   :1509[1]
    adc starship_angle_delta                                          ; 260a: 6d 33 0e    m3. :150a[1]
    sta (temp0_low),y                                                 ; 260d: 91 80       ..  :150d[1]
    lsr a                                                             ; 260f: 4a          J   :150f[1]
    lsr a                                                             ; 2610: 4a          J   :1510[1]
    lsr a                                                             ; 2611: 4a          J   :1511[1]
    tax                                                               ; 2612: aa          .   :1512[1]
    dey                                                               ; 2613: 88          .   :1513[1]   ; Y=&04
    lda cosine_table,x                                                ; 2614: bd 78 0e    .x. :1514[1]
    clc                                                               ; 2617: 18          .   :1517[1]
    adc (temp0_low),y                                                 ; 2618: 71 80       q.  :1518[1]
    sta (temp0_low),y                                                 ; 261a: 91 80       ..  :151a[1]
    sec                                                               ; 261c: 38          8   :151c[1]
    sbc y_pixels                                                      ; 261d: e5 7b       .{  :151d[1]
    bcs skip_inversion2                                               ; 261f: b0 02       ..  :151f[1]
    eor #&ff                                                          ; 2621: 49 ff       I.  :1521[1]
.skip_inversion2
    cmp #&40                                                          ; 2623: c9 40       .@  :1523[1]
    bcs remove_torpedo                                                ; 2625: b0 15       ..  :1525[1]
    ldy #2                                                            ; 2627: a0 02       ..  :1527[1]
    lda sine_table,x                                                  ; 2629: bd 58 0e    .X. :1529[1]
    clc                                                               ; 262c: 18          .   :152c[1]
    adc (temp0_low),y                                                 ; 262d: 71 80       q.  :152d[1]
    sta (temp0_low),y                                                 ; 262f: 91 80       ..  :152f[1]
    sec                                                               ; 2631: 38          8   :1531[1]
    sbc x_pixels                                                      ; 2632: e5 7a       .z  :1532[1]
    bcs skip_uninversion2                                             ; 2634: b0 02       ..  :1534[1]
    eor #&ff                                                          ; 2636: 49 ff       I.  :1536[1]
.skip_uninversion2
    cmp #&40                                                          ; 2638: c9 40       .@  :1538[1]
    bcc consider_collisions                                           ; 263a: 90 08       ..  :153a[1]
.remove_torpedo
    lda #0                                                            ; 263c: a9 00       ..  :153c[1]
    tay                                                               ; 263e: a8          .   :153e[1]   ; Y=&00
    sta (temp0_low),y                                                 ; 263f: 91 80       ..  :153f[1]
    jmp move_to_next_enemy_torpedo                                    ; 2641: 4c 89 15    L.. :1541[1]

; ----------------------------------------------------------------------------------
.consider_collisions
    lda (temp0_low),y                                                 ; 2644: b1 80       ..  :1544[1]
    cmp starship_maximum_x_for_collisions_with_enemy_torpedoes        ; 2646: cd d5 25    ..% :1546[1]
    bcs enemy_torpedo_missed_starship                                 ; 2649: b0 28       .(  :1549[1]
    cmp starship_minimum_x_for_collisions_with_enemy_torpedoes        ; 264b: cd d6 25    ..% :154b[1]
    bcc enemy_torpedo_missed_starship                                 ; 264e: 90 23       .#  :154e[1]
    ldy #4                                                            ; 2650: a0 04       ..  :1550[1]
    lda (temp0_low),y                                                 ; 2652: b1 80       ..  :1552[1]
    cmp starship_maximum_y_for_collisions_with_enemy_torpedoes        ; 2654: cd d7 25    ..% :1554[1]
    bcs enemy_torpedo_missed_starship                                 ; 2657: b0 1a       ..  :1557[1]
    cmp starship_minimum_y_for_collisions_with_enemy_torpedoes        ; 2659: cd d8 25    ..% :1559[1]
    bcc enemy_torpedo_missed_starship                                 ; 265c: 90 15       ..  :155c[1]
    jsr plot_expiring_torpedo                                         ; 265e: 20 8a 13     .. :155e[1]
    inc enemy_torpedo_hits_against_starship                           ; 2661: ee dd 1c    ... :1561[1]
    lda damage_from_enemy_torpedo                                     ; 2664: ad d9 1c    ... :1564[1]
    jsr incur_damage                                                  ; 2667: 20 a3 1a     .. :1567[1]
    ldy #0                                                            ; 266a: a0 00       ..  :156a[1]
    lda #1                                                            ; 266c: a9 01       ..  :156c[1]
    sta (temp0_low),y                                                 ; 266e: 91 80       ..  :156e[1]
    jmp move_to_next_enemy_torpedo                                    ; 2670: 4c 89 15    L.. :1570[1]

.enemy_torpedo_missed_starship
    jsr check_for_collision_with_enemy_ships                          ; 2673: 20 9d 15     .. :1573[1]
    bcs move_to_next_enemy_torpedo                                    ; 2676: b0 11       ..  :1576[1]
    ldy #0                                                            ; 2678: a0 00       ..  :1578[1]
    lda (temp0_low),y                                                 ; 267a: b1 80       ..  :157a[1]
    cmp #2                                                            ; 267c: c9 02       ..  :157c[1]
    bcs enemy_torpedo_ok                                              ; 267e: b0 06       ..  :157e[1]
    jsr plot_expiring_torpedo                                         ; 2680: 20 8a 13     .. :1580[1]
    jmp move_to_next_enemy_torpedo                                    ; 2683: 4c 89 15    L.. :1583[1]

.enemy_torpedo_ok
    jsr plot_enemy_torpedo                                            ; 2686: 20 11 16     .. :1586[1]
.move_to_next_enemy_torpedo
    lda temp0_low                                                     ; 2689: a5 80       ..  :1589[1]
    clc                                                               ; 268b: 18          .   :158b[1]
    adc #6                                                            ; 268c: 69 06       i.  :158c[1]
    sta temp0_low                                                     ; 268e: 85 80       ..  :158e[1]
    bcc skip8                                                         ; 2690: 90 02       ..  :1590[1]
    inc temp0_high                                                    ; 2692: e6 81       ..  :1592[1]
.skip8
    dec torpedoes_still_to_consider                                   ; 2694: ce 55 0e    .U. :1594[1]
    beq finished_updating_torpedoes                                   ; 2697: f0 03       ..  :1597[1]
    jmp update_enemy_torpedoes_loop                                   ; 2699: 4c e7 14    L.. :1599[1]

.finished_updating_torpedoes
    rts                                                               ; 269c: 60          `   :159c[1]

; ----------------------------------------------------------------------------------
.check_for_collision_with_enemy_ships
    ldy #2                                                            ; 269d: a0 02       ..  :159d[1]
    lda (temp0_low),y                                                 ; 269f: b1 80       ..  :159f[1]
    sta temp3                                                         ; 26a1: 85 84       ..  :15a1[1]
    ldy #4                                                            ; 26a3: a0 04       ..  :15a3[1]
    lda (temp0_low),y                                                 ; 26a5: b1 80       ..  :15a5[1]
    sta temp4                                                         ; 26a7: 85 85       ..  :15a7[1]
    lda maximum_number_of_enemy_ships                                 ; 26a9: ad 4f 0e    .O. :15a9[1]
    sta enemy_ships_still_to_consider                                 ; 26ac: 8d 54 0e    .T. :15ac[1]
    ldx #0                                                            ; 26af: a2 00       ..  :15af[1]
.consider_enemy_slot
    lda enemy_ships_on_screen,x                                       ; 26b1: bd 80 04    ... :15b1[1]
    bne move_to_next_enemy                                            ; 26b4: d0 4f       .O  :15b4[1]
    lda enemy_ships_x_pixels,x                                        ; 26b6: bd 82 04    ... :15b6[1]
    sec                                                               ; 26b9: 38          8   :15b9[1]
    sbc temp3                                                         ; 26ba: e5 84       ..  :15ba[1]
    bcs skip_inversion_x1                                             ; 26bc: b0 02       ..  :15bc[1]
    eor #&ff                                                          ; 26be: 49 ff       I.  :15be[1]
.skip_inversion_x1
    cmp size_of_enemy_ship_for_collisions_with_torpedoes              ; 26c0: cd 3a 0e    .:. :15c0[1]
    bcs move_to_next_enemy                                            ; 26c3: b0 40       .@  :15c3[1]
    lda enemy_ships_x_pixels1,x                                       ; 26c5: bd 85 04    ... :15c5[1]
    sec                                                               ; 26c8: 38          8   :15c8[1]
    sbc temp4                                                         ; 26c9: e5 85       ..  :15c9[1]
    bcs skip_inversion_y1                                             ; 26cb: b0 02       ..  :15cb[1]
    eor #&ff                                                          ; 26cd: 49 ff       I.  :15cd[1]
.skip_inversion_y1
    cmp size_of_enemy_ship_for_collisions_with_torpedoes              ; 26cf: cd 3a 0e    .:. :15cf[1]
    bcs move_to_next_enemy                                            ; 26d2: b0 31       .1  :15d2[1]
    lda enemy_ships_energy,x                                          ; 26d4: bd 89 04    ... :15d4[1]
    bne skip_considering_explosion                                    ; 26d7: d0 0a       ..  :15d7[1]
    lda enemy_ships_flags_or_explosion_timer,x                        ; 26d9: bd 09 04    ... :15d9[1]
    cmp frame_of_enemy_ship_explosion_after_which_no_collisions       ; 26dc: cd 37 0e    .7. :15dc[1]
    bcs skip_damage                                                   ; 26df: b0 19       ..  :15df[1]
    bcc move_to_next_enemy                                            ; 26e1: 90 22       ."  :15e1[1]   ; ALWAYS branch

.skip_considering_explosion
    inc enemy_ship_was_hit                                            ; 26e3: ee de 1c    ... :15e3[1]
    inc enemy_ships_temporary_behaviour_flags,x                       ; 26e6: fe 88 04    ... :15e6[1]
    lda how_enemy_ship_was_damaged                                    ; 26e9: ad e0 1c    ... :15e9[1]
    beq damaged_by_other                                              ; 26ec: f0 06       ..  :15ec[1]
    lda damage_to_enemy_ship_from_starship_torpedo                    ; 26ee: ad 34 0e    .4. :15ee[1]
    jmp collision_occurred                                            ; 26f1: 4c f7 15    L.. :15f1[1]

.damaged_by_other
    lda damage_to_enemy_ship_from_other_collision                     ; 26f4: ad df 1c    ... :15f4[1]
.collision_occurred
    jsr damage_enemy_ship                                             ; 26f7: 20 e7 1b     .. :15f7[1]
.skip_damage
    ldy #0                                                            ; 26fa: a0 00       ..  :15fa[1]
    lda #1                                                            ; 26fc: a9 01       ..  :15fc[1]
    sta (temp0_low),y                                                 ; 26fe: 91 80       ..  :15fe[1]
    jsr plot_expiring_torpedo                                         ; 2700: 20 8a 13     .. :1600[1]
    sec                                                               ; 2703: 38          8   :1603[1]
    rts                                                               ; 2704: 60          `   :1604[1]

.move_to_next_enemy
    txa                                                               ; 2705: 8a          .   :1605[1]
    clc                                                               ; 2706: 18          .   :1606[1]
    adc #&0b                                                          ; 2707: 69 0b       i.  :1607[1]
    tax                                                               ; 2709: aa          .   :1609[1]
    dec enemy_ships_still_to_consider                                 ; 270a: ce 54 0e    .T. :160a[1]
    bne consider_enemy_slot                                           ; 270d: d0 a2       ..  :160d[1]
    clc                                                               ; 270f: 18          .   :160f[1]
    rts                                                               ; 2710: 60          `   :1610[1]

.plot_enemy_torpedo
    ldy #2                                                            ; 2711: a0 02       ..  :1611[1]
    lda (temp0_low),y                                                 ; 2713: b1 80       ..  :1613[1]
    sta x_pixels                                                      ; 2715: 85 7a       .z  :1615[1]
    ldy #4                                                            ; 2717: a0 04       ..  :1617[1]
    lda (temp0_low),y                                                 ; 2719: b1 80       ..  :1619[1]
    sta y_pixels                                                      ; 271b: 85 7b       .{  :161b[1]
    jsr eor_pixel                                                     ; 271d: 20 64 0f     d. :161d[1]
.enemy_torpedo_type_instruction
    rts                                                               ; 2720: 60          `   :1620[1]

.unused13
    equb &e6, &7a, &20, &64, &0f, &e6, &7b, &20, &64, &0f, &c6, &7a   ; 2721: e6 7a 20... .z  :1621[1]
    equb &20, &64, &0f, &60                                           ; 272d: 20 64 0f...  d. :162d[1]

.apply_velocity_to_enemy_ships
    lda maximum_number_of_enemy_ships                                 ; 2731: ad 4f 0e    .O. :1631[1]
    sta enemy_ships_still_to_consider                                 ; 2734: 8d 54 0e    .T. :1634[1]
    ldx #0                                                            ; 2737: a2 00       ..  :1637[1]
.apply_velocity_to_enemy_ships_loop
    jsr apply_starship_rotation_and_velocity_to_enemy_ships           ; 2739: 20 fb 10     .. :1639[1]
    lda enemy_ships_previous_angle,x                                  ; 273c: bd 07 04    ... :163c[1]
    clc                                                               ; 273f: 18          .   :163f[1]
    adc starship_angle_delta                                          ; 2740: 6d 33 0e    m3. :1640[1]
    sta enemy_ships_angle,x                                           ; 2743: 9d 87 04    ... :1643[1]
    lda enemy_ships_velocity,x                                        ; 2746: bd 08 04    ... :1646[1]
    sta temp7                                                         ; 2749: 85 88       ..  :1649[1]
    beq skip_subtraction_cosine                                       ; 274b: f0 7f       ..  :164b[1]
    lda enemy_ships_previous_angle,x                                  ; 274d: bd 07 04    ... :164d[1]
    lsr a                                                             ; 2750: 4a          J   :1650[1]
    lsr a                                                             ; 2751: 4a          J   :1651[1]
    lsr a                                                             ; 2752: 4a          J   :1652[1]
    tay                                                               ; 2753: a8          .   :1653[1]
    lda sine_table,y                                                  ; 2754: b9 58 0e    .X. :1654[1]
    sta temp3                                                         ; 2757: 85 84       ..  :1657[1]
    lda cosine_table,y                                                ; 2759: b9 78 0e    .x. :1659[1]
    sta temp4                                                         ; 275c: 85 85       ..  :165c[1]
    ldy #5                                                            ; 275e: a0 05       ..  :165e[1]
    lda #0                                                            ; 2760: a9 00       ..  :1660[1]
    sta temp8                                                         ; 2762: 85 75       .u  :1662[1]
.loop_over_bits_of_sine
    lsr temp3                                                         ; 2764: 46 84       F.  :1664[1]
    bcc sine_bit_unset                                                ; 2766: 90 03       ..  :1666[1]
    clc                                                               ; 2768: 18          .   :1668[1]
    adc temp7                                                         ; 2769: 65 88       e.  :1669[1]
.sine_bit_unset
    ror a                                                             ; 276b: 6a          j   :166b[1]
    ror temp8                                                         ; 276c: 66 75       fu  :166c[1]
    dey                                                               ; 276e: 88          .   :166e[1]
    bne loop_over_bits_of_sine                                        ; 276f: d0 f3       ..  :166f[1]
    tay                                                               ; 2771: a8          .   :1671[1]
    lda enemy_ships_x_fraction,x                                      ; 2772: bd 81 04    ... :1672[1]
    adc temp8                                                         ; 2775: 65 75       eu  :1675[1]
    sta enemy_ships_x_fraction,x                                      ; 2777: 9d 81 04    ... :1677[1]
    tya                                                               ; 277a: 98          .   :167a[1]
    adc enemy_ships_x_pixels,x                                        ; 277b: 7d 82 04    }.. :167b[1]
    sta enemy_ships_x_pixels,x                                        ; 277e: 9d 82 04    ... :167e[1]
    bcc skip9                                                         ; 2781: 90 03       ..  :1681[1]
    inc enemy_ships_x_screens,x                                       ; 2783: fe 83 04    ... :1683[1]
.skip9
    ldy temp3                                                         ; 2786: a4 84       ..  :1686[1]
    beq skip_subtraction_sine                                         ; 2788: f0 0b       ..  :1688[1]
    sec                                                               ; 278a: 38          8   :168a[1]
    sbc temp7                                                         ; 278b: e5 88       ..  :168b[1]
    sta enemy_ships_x_pixels,x                                        ; 278d: 9d 82 04    ... :168d[1]
    bcs skip_subtraction_sine                                         ; 2790: b0 03       ..  :1690[1]
    dec enemy_ships_x_screens,x                                       ; 2792: de 83 04    ... :1692[1]
.skip_subtraction_sine
    ldy #5                                                            ; 2795: a0 05       ..  :1695[1]
    lda #0                                                            ; 2797: a9 00       ..  :1697[1]
    sta temp8                                                         ; 2799: 85 75       .u  :1699[1]
.loop_over_bits_of_cosine
    lsr temp4                                                         ; 279b: 46 85       F.  :169b[1]
    bcc cosine_bit_unset                                              ; 279d: 90 03       ..  :169d[1]
    clc                                                               ; 279f: 18          .   :169f[1]
    adc temp7                                                         ; 27a0: 65 88       e.  :16a0[1]
.cosine_bit_unset
    ror a                                                             ; 27a2: 6a          j   :16a2[1]
    ror temp8                                                         ; 27a3: 66 75       fu  :16a3[1]
    dey                                                               ; 27a5: 88          .   :16a5[1]
    bne loop_over_bits_of_cosine                                      ; 27a6: d0 f3       ..  :16a6[1]
    tay                                                               ; 27a8: a8          .   :16a8[1]
    lda enemy_ships_x_fraction1,x                                     ; 27a9: bd 84 04    ... :16a9[1]
    adc temp8                                                         ; 27ac: 65 75       eu  :16ac[1]
    sta enemy_ships_x_fraction1,x                                     ; 27ae: 9d 84 04    ... :16ae[1]
    tya                                                               ; 27b1: 98          .   :16b1[1]
    adc enemy_ships_x_pixels1,x                                       ; 27b2: 7d 85 04    }.. :16b2[1]
    sta enemy_ships_x_pixels1,x                                       ; 27b5: 9d 85 04    ... :16b5[1]
    bcc skip10                                                        ; 27b8: 90 03       ..  :16b8[1]
    inc enemy_ships_x_screens1,x                                      ; 27ba: fe 86 04    ... :16ba[1]
.skip10
    ldy temp4                                                         ; 27bd: a4 85       ..  :16bd[1]
    beq skip_subtraction_cosine                                       ; 27bf: f0 0b       ..  :16bf[1]
    sec                                                               ; 27c1: 38          8   :16c1[1]
    sbc temp7                                                         ; 27c2: e5 88       ..  :16c2[1]
    sta enemy_ships_x_pixels1,x                                       ; 27c4: 9d 85 04    ... :16c4[1]
    bcs skip_subtraction_cosine                                       ; 27c7: b0 03       ..  :16c7[1]
    dec enemy_ships_x_screens1,x                                      ; 27c9: de 86 04    ... :16c9[1]
.skip_subtraction_cosine
.mark_enemy_ship_as_plotted_if_on_starship_screen
    lda #&7f                                                          ; 27cc: a9 7f       ..  :16cc[1]
    cmp enemy_ships_x_screens,x                                       ; 27ce: dd 83 04    ... :16ce[1]
    bne enemy_ship_not_on_starship_screen                             ; 27d1: d0 09       ..  :16d1[1]
    cmp enemy_ships_x_screens1,x                                      ; 27d3: dd 86 04    ... :16d3[1]
    bne enemy_ship_not_on_starship_screen                             ; 27d6: d0 04       ..  :16d6[1]
    lda #0                                                            ; 27d8: a9 00       ..  :16d8[1]
    beq set_enemy_ships_on_screen                                     ; 27da: f0 02       ..  :16da[1]   ; ALWAYS branch

.enemy_ship_not_on_starship_screen
    lda #1                                                            ; 27dc: a9 01       ..  :16dc[1]
.set_enemy_ships_on_screen
    sta enemy_ships_on_screen,x                                       ; 27de: 9d 80 04    ... :16de[1]
    txa                                                               ; 27e1: 8a          .   :16e1[1]
    clc                                                               ; 27e2: 18          .   :16e2[1]
    adc #&0b                                                          ; 27e3: 69 0b       i.  :16e3[1]
    tax                                                               ; 27e5: aa          .   :16e5[1]
    dec enemy_ships_still_to_consider                                 ; 27e6: ce 54 0e    .T. :16e6[1]
    beq return7                                                       ; 27e9: f0 03       ..  :16e9[1]
    jmp apply_velocity_to_enemy_ships_loop                            ; 27eb: 4c 39 16    L9. :16eb[1]

.return7
    rts                                                               ; 27ee: 60          `   :16ee[1]

.unused14
    equb &ea, &ea, &ea                                                ; 27ef: ea ea ea    ... :16ef[1]

.plot_enemy_ships
    lda maximum_number_of_enemy_ships                                 ; 27f2: ad 4f 0e    .O. :16f2[1]
    sta enemy_ships_still_to_consider                                 ; 27f5: 8d 54 0e    .T. :16f5[1]
    ldx #0                                                            ; 27f8: a2 00       ..  :16f8[1]
.plot_enemy_ships_loop
    lda enemy_ships_previous_on_screen,x                              ; 27fa: bd 00 04    ... :16fa[1]
    sta enemy_ship_was_previously_on_screen                           ; 27fd: 8d 2e 0e    ... :16fd[1]
    lda enemy_ships_energy,x                                          ; 2800: bd 89 04    ... :1700[1]
    bne explosion_continuing                                          ; 2803: d0 24       .$  :1703[1]
    ldy enemy_ships_still_to_consider                                 ; 2805: ac 54 0e    .T. :1705[1]
    lda unused24,y                                                    ; 2808: b9 e1 1c    ... :1708[1]
    tay                                                               ; 280b: a8          .   :170b[1]
    lda enemy_explosion_address_low_table - 1,y                       ; 280c: b9 f6 1c    ... :170c[1]
    sta temp5                                                         ; 280f: 85 86       ..  :170f[1]
    lda unused26,y                                                    ; 2811: b9 07 1d    ... :1711[1]
    sta temp6                                                         ; 2814: 85 87       ..  :1714[1]
    lda enemy_ship_was_previously_on_screen                           ; 2816: ad 2e 0e    ... :1716[1]
    bne not_previously_on_screen                                      ; 2819: d0 06       ..  :1719[1]
    dec enemy_ship_was_previously_on_screen                           ; 281b: ce 2e 0e    ... :171b[1]
    jsr update_enemy_explosion_pieces                                 ; 281e: 20 b4 1f     .. :171e[1]
.not_previously_on_screen
    dec enemy_ships_flags_or_explosion_timer,x                        ; 2821: de 09 04    ... :1721[1]
    bne explosion_continuing                                          ; 2824: d0 03       ..  :1724[1]
    jsr initialise_enemy_ship                                         ; 2826: 20 d2 33     .3 :1726[1]
.explosion_continuing
    lda enemy_ships_on_screen,x                                       ; 2829: bd 80 04    ... :1729[1]
    sta enemy_ship_was_on_screen                                      ; 282c: 8d 2f 0e    ./. :172c[1]
    bne not_on_screen                                                 ; 282f: d0 0a       ..  :172f[1]
    lda enemy_ships_energy,x                                          ; 2831: bd 89 04    ... :1731[1]
    bne skip_extra_delay                                              ; 2834: d0 08       ..  :1734[1]
    dec enemy_ship_was_on_screen                                      ; 2836: ce 2f 0e    ./. :1736[1]
    bne skip_extra_delay                                              ; 2839: d0 03       ..  :1739[1]
.not_on_screen
    inc number_of_delay_loops                                         ; 283b: ee 2d 0e    .-. :173b[1]
.skip_extra_delay
    lda enemy_ship_was_previously_on_screen                           ; 283e: ad 2e 0e    ... :173e[1]
    beq unplot_enemy_ship                                             ; 2841: f0 08       ..  :1741[1]
    bmi skip_plotting                                                 ; 2843: 30 09       0.  :1743[1]
    inc number_of_delay_loops                                         ; 2845: ee 2d 0e    .-. :1745[1]
    jmp skip_plotting                                                 ; 2848: 4c 4e 17    LN. :1748[1]

.unplot_enemy_ship
    jsr plot_enemy_ship                                               ; 284b: 20 fc 1b     .. :174b[1]
.skip_plotting
    lda enemy_ships_angle,x                                           ; 284e: bd 87 04    ... :174e[1]
    sta enemy_ships_previous_angle,x                                  ; 2851: 9d 07 04    ... :1751[1]
    lda enemy_ships_x_pixels1,x                                       ; 2854: bd 85 04    ... :1754[1]
    sta enemy_ships_previous_x_pixels1,x                              ; 2857: 9d 05 04    ... :1757[1]
    lda enemy_ships_x_pixels,x                                        ; 285a: bd 82 04    ... :175a[1]
    sta enemy_ships_previous_x_pixels,x                               ; 285d: 9d 02 04    ... :175d[1]
    lda enemy_ship_was_on_screen                                      ; 2860: ad 2f 0e    ./. :1760[1]
    beq plot_enemy_ship_and_copy_position                             ; 2863: f0 08       ..  :1763[1]
    bpl copy_position_without_plotting                                ; 2865: 10 09       ..  :1765[1]
    jsr plot_enemy_ship_explosion                                     ; 2867: 20 0c 20     .  :1767[1]
    jmp copy_position_without_plotting                                ; 286a: 4c 70 17    Lp. :176a[1]

.plot_enemy_ship_and_copy_position
    jsr plot_enemy_ship                                               ; 286d: 20 fc 1b     .. :176d[1]
.copy_position_without_plotting
    lda enemy_ships_on_screen,x                                       ; 2870: bd 80 04    ... :1770[1]
    sta enemy_ships_previous_on_screen,x                              ; 2873: 9d 00 04    ... :1773[1]
    lda enemy_ships_x_screens1,x                                      ; 2876: bd 86 04    ... :1776[1]
    sta enemy_ships_previous_x_screens1,x                             ; 2879: 9d 06 04    ... :1779[1]
    lda enemy_ships_x_fraction1,x                                     ; 287c: bd 84 04    ... :177c[1]
    sta enemy_ships_previous_x_fraction1,x                            ; 287f: 9d 04 04    ... :177f[1]
    lda enemy_ships_x_screens,x                                       ; 2882: bd 83 04    ... :1782[1]
    sta enemy_ships_previous_x_screens,x                              ; 2885: 9d 03 04    ... :1785[1]
    lda enemy_ships_x_fraction,x                                      ; 2888: bd 81 04    ... :1788[1]
    sta enemy_ships_previous_x_fraction,x                             ; 288b: 9d 01 04    ... :178b[1]
    txa                                                               ; 288e: 8a          .   :178e[1]
    clc                                                               ; 288f: 18          .   :178f[1]
    adc #&0b                                                          ; 2890: 69 0b       i.  :1790[1]
    tax                                                               ; 2892: aa          .   :1792[1]
    dec enemy_ships_still_to_consider                                 ; 2893: ce 54 0e    .T. :1793[1]
    beq return8                                                       ; 2896: f0 03       ..  :1796[1]
    jmp plot_enemy_ships_loop                                         ; 2898: 4c fa 16    L.. :1798[1]

.return8
    rts                                                               ; 289b: 60          `   :179b[1]

.delay_loop
    ldx #2                                                            ; 289c: a2 02       ..  :179c[1]
.delay_loop_outer_loop
    ldy #&7f                                                          ; 289e: a0 7f       ..  :179e[1]
.delay_loop_inner_loop
    dey                                                               ; 28a0: 88          .   :17a0[1]
    bne delay_loop_inner_loop                                         ; 28a1: d0 fd       ..  :17a1[1]
    dex                                                               ; 28a3: ca          .   :17a3[1]
    bne delay_loop_outer_loop                                         ; 28a4: d0 f8       ..  :17a4[1]
    rts                                                               ; 28a6: 60          `   :17a6[1]

.unused15
    equb &ea, &ea, &ea                                                ; 28a7: ea ea ea    ... :17a7[1]
    equs "#128:STA"                                                   ; 28aa: 23 31 32... #12 :17aa[1]
.shield_state_strings
    equb &1f, &22, &18                                                ; 28b2: 1f 22 18    .". :17b2[1]
    equs " ON "                                                       ; 28b5: 20 4f 4e...  ON :17b5[1]
    equb &1f, &22, &18                                                ; 28b9: 1f 22 18    .". :17b9[1]
    equs " OFF"                                                       ; 28bc: 20 4f 46...  OF :17bc[1]
    equb &1f, &22, &18                                                ; 28c0: 1f 22 18    .". :17c0[1]
    equs "AUTO"                                                       ; 28c3: 41 55 54... AUT :17c3[1]
.unused16
    equb &1f, &20, &18                                                ; 28c7: 1f 20 18    . . :17c7[1]
    equs "Sh:~"                                                       ; 28ca: 53 68 3a... Sh: :17ca[1]
    equb &0d, &44, &59                                                ; 28ce: 0d 44 59    .DY :17ce[1]
.enemy_ships_collided_with_each_other
    equb 0                                                            ; 28d1: 00          .   :17d1[1]
.unused17
    equb 0, 0, 0, 0, 0, 0                                             ; 28d2: 00 00 00... ... :17d2[1]

.check_for_starship_collision_with_enemy_ships
    lda maximum_number_of_enemy_ships                                 ; 28d8: ad 4f 0e    .O. :17d8[1]
    sta enemy_ships_still_to_consider                                 ; 28db: 8d 54 0e    .T. :17db[1]
    lda #0                                                            ; 28de: a9 00       ..  :17de[1]
    sta temp0_low                                                     ; 28e0: 85 80       ..  :17e0[1]
.check_for_starship_collision_with_enemy_ships_loop
    ldx temp0_low                                                     ; 28e2: a6 80       ..  :17e2[1]
    lda enemy_ships_on_screen,x                                       ; 28e4: bd 80 04    ... :17e4[1]
    bne to_consider_next_enemy_ship                                   ; 28e7: d0 0d       ..  :17e7[1]
    lda enemy_ships_energy,x                                          ; 28e9: bd 89 04    ... :17e9[1]
    bne check_for_collision                                           ; 28ec: d0 0b       ..  :17ec[1]
    lda enemy_ships_flags_or_explosion_timer,x                        ; 28ee: bd 09 04    ... :17ee[1]
    cmp frame_of_enemy_ship_explosion_after_which_no_collisions       ; 28f1: cd 37 0e    .7. :17f1[1]
    bcs check_for_collision                                           ; 28f4: b0 03       ..  :17f4[1]
.to_consider_next_enemy_ship
    jmp consider_next_enemy_ship                                      ; 28f6: 4c d4 18    L.. :17f6[1]

.check_for_collision
    lda starship_has_exploded                                         ; 28f9: ad c9 1c    ... :17f9[1]
    beq starship_not_exploded                                         ; 28fc: f0 08       ..  :17fc[1]
    lda starship_explosion_countdown                                  ; 28fe: ad ce 1c    ... :17fe[1]
    cmp frame_of_starship_explosion_after_which_no_collisions         ; 2901: cd df 25    ..% :1801[1]
    bcc no_collision                                                  ; 2904: 90 3e       .>  :1804[1]
.starship_not_exploded
    lda enemy_ships_x_pixels,x                                        ; 2906: bd 82 04    ... :1806[1]
    cmp starship_maximum_x_for_collisions_with_enemy_ships            ; 2909: cd d9 25    ..% :1809[1]
    bcs no_collision                                                  ; 290c: b0 36       .6  :180c[1]
    cmp starship_minimum_x_for_collisions_with_enemy_ships            ; 290e: cd da 25    ..% :180e[1]
    bcc no_collision                                                  ; 2911: 90 31       .1  :1811[1]
    lda enemy_ships_x_pixels1,x                                       ; 2913: bd 85 04    ... :1813[1]
    cmp starship_maximum_y_for_collisions_with_enemy_ships            ; 2916: cd db 25    ..% :1816[1]
    bcs no_collision                                                  ; 2919: b0 29       .)  :1819[1]
    cmp starship_minimum_y_for_collisions_with_enemy_ships            ; 291b: cd dc 25    ..% :181b[1]
    bcc no_collision                                                  ; 291e: 90 24       .$  :181e[1]
    lda enemy_ships_energy,x                                          ; 2920: bd 89 04    ... :1820[1]
    beq incur_damage_from_passing_through_explosion                   ; 2923: f0 18       ..  :1823[1]
    pha                                                               ; 2925: 48          H   :1825[1]
    inc starship_collided_with_enemy_ship                             ; 2926: ee de 25    ..% :1826[1]
    lda #0                                                            ; 2929: a9 00       ..  :1829[1]
    sta enemy_ships_energy,x                                          ; 292b: 9d 89 04    ... :182b[1]
    jsr explode_enemy_ship                                            ; 292e: 20 5d 1f     ]. :182e[1]
    pla                                                               ; 2931: 68          h   :1831[1]
    lsr a                                                             ; 2932: 4a          J   :1832[1]
    clc                                                               ; 2933: 18          .   :1833[1]
    adc additional_damage_from_collision_with_enemy_ship              ; 2934: 6d 30 0e    m0. :1834[1]
    bcc incur_damage_from_collision                                   ; 2937: 90 08       ..  :1837[1]
    lda #&ff                                                          ; 2939: a9 ff       ..  :1839[1]
    bne incur_damage_from_collision                                   ; 293b: d0 04       ..  :183b[1]   ; ALWAYS branch

.incur_damage_from_passing_through_explosion
    lda enemy_ships_flags_or_explosion_timer,x                        ; 293d: bd 09 04    ... :183d[1]
    lsr a                                                             ; 2940: 4a          J   :1840[1]
.incur_damage_from_collision
    jsr incur_damage                                                  ; 2941: 20 a3 1a     .. :1841[1]
.no_collision
    stx temp1_low                                                     ; 2944: 86 82       ..  :1844[1]
    ldx enemy_ships_still_to_consider                                 ; 2946: ae 54 0e    .T. :1846[1]
    dex                                                               ; 2949: ca          .   :1849[1]
    stx torpedoes_still_to_consider                                   ; 294a: 8e 55 0e    .U. :184a[1]
    bne check_for_collisions_between_enemy_ships                      ; 294d: d0 01       ..  :184d[1]
    rts                                                               ; 294f: 60          `   :184f[1]

.check_for_collisions_between_enemy_ships
    lda temp1_low                                                     ; 2950: a5 82       ..  :1850[1]
    clc                                                               ; 2952: 18          .   :1852[1]
    adc #&0b                                                          ; 2953: 69 0b       i.  :1853[1]
    sta temp1_low                                                     ; 2955: 85 82       ..  :1855[1]
    tax                                                               ; 2957: aa          .   :1857[1]
    lda enemy_ships_on_screen,x                                       ; 2958: bd 80 04    ... :1858[1]
    bne consider_next_second_enemy_ship                               ; 295b: d0 6f       .o  :185b[1]
    ldy temp0_low                                                     ; 295d: a4 80       ..  :185d[1]
    lda enemy_ships_x_pixels,x                                        ; 295f: bd 82 04    ... :185f[1]
    sec                                                               ; 2962: 38          8   :1862[1]
    sbc enemy_ships_x_pixels,y                                        ; 2963: f9 82 04    ... :1863[1]
    bcs skip_inversion_x2                                             ; 2966: b0 02       ..  :1866[1]
    eor #&ff                                                          ; 2968: 49 ff       I.  :1868[1]
.skip_inversion_x2
    cmp size_of_enemy_ship_for_collisions_between_enemy_ships         ; 296a: cd 3b 0e    .;. :186a[1]
    bcs consider_next_second_enemy_ship                               ; 296d: b0 5d       .]  :186d[1]
    sta enemy_ships_collision_x_difference                            ; 296f: 8d e0 25    ..% :186f[1]
    lda enemy_ships_x_pixels1,x                                       ; 2972: bd 85 04    ... :1872[1]
    sec                                                               ; 2975: 38          8   :1875[1]
    sbc enemy_ships_x_pixels1,y                                       ; 2976: f9 85 04    ... :1876[1]
    bcs skip_inversion_y2                                             ; 2979: b0 02       ..  :1879[1]
    eor #&ff                                                          ; 297b: 49 ff       I.  :187b[1]
.skip_inversion_y2
    cmp size_of_enemy_ship_for_collisions_between_enemy_ships         ; 297d: cd 3b 0e    .;. :187d[1]
    bcs consider_next_second_enemy_ship                               ; 2980: b0 4a       .J  :1880[1]
    sta enemy_ships_collision_y_difference                            ; 2982: 8d e1 25    ..% :1882[1]
    lda enemy_ships_energy,x                                          ; 2985: bd 89 04    ... :1885[1]
    bne second_ship_not_exploding                                     ; 2988: d0 0a       ..  :1888[1]
    lda enemy_ships_flags_or_explosion_timer,x                        ; 298a: bd 09 04    ... :188a[1]
    cmp frame_of_enemy_ship_explosion_after_which_no_collisions       ; 298d: cd 37 0e    .7. :188d[1]
    bcs to_collide_enemy_ships                                        ; 2990: b0 37       .7  :1890[1]
    bcc consider_next_second_enemy_ship                               ; 2992: 90 38       .8  :1892[1]   ; ALWAYS branch

.second_ship_not_exploding
    inc enemy_ships_collided_with_each_other                          ; 2994: ee d1 17    ... :1894[1]
    sec                                                               ; 2997: 38          8   :1897[1]
    sbc damage_enemy_ship_incurs_from_collision_with_other_enemy_ship ; 2998: ed 31 0e    .1. :1898[1]
    bcs skip11                                                        ; 299b: b0 02       ..  :189b[1]
    lda #0                                                            ; 299d: a9 00       ..  :189d[1]
.skip11
    sta enemy_ships_energy,x                                          ; 299f: 9d 89 04    ... :189f[1]
    bne enemy_ship_isnt_destroyed_by_collision                        ; 29a2: d0 14       ..  :18a2[1]
    lda enemy_ships_still_to_consider                                 ; 29a4: ad 54 0e    .T. :18a4[1]
    pha                                                               ; 29a7: 48          H   :18a7[1]
    lda torpedoes_still_to_consider                                   ; 29a8: ad 55 0e    .U. :18a8[1]
    sta enemy_ships_still_to_consider                                 ; 29ab: 8d 54 0e    .T. :18ab[1]
    jsr explode_enemy_ship                                            ; 29ae: 20 5d 1f     ]. :18ae[1]
    pla                                                               ; 29b1: 68          h   :18b1[1]
    sta enemy_ships_still_to_consider                                 ; 29b2: 8d 54 0e    .T. :18b2[1]
    inc enemy_ship_was_hit_by_collision_with_other_enemy_ship         ; 29b5: ee dd 25    ..% :18b5[1]
.enemy_ship_isnt_destroyed_by_collision
    lda enemy_ships_type,x                                            ; 29b8: bd 0a 04    ... :18b8[1]
    cmp #4                                                            ; 29bb: c9 04       ..  :18bb[1]
    bcc to_collide_enemy_ships                                        ; 29bd: 90 0a       ..  :18bd[1]
    and #3                                                            ; 29bf: 29 03       ).  :18bf[1]
    sta enemy_ships_type,x                                            ; 29c1: 9d 0a 04    ... :18c1[1]
    lda #1                                                            ; 29c4: a9 01       ..  :18c4[1]
    sta enemy_ships_previous_on_screen,x                              ; 29c6: 9d 00 04    ... :18c6[1]
.to_collide_enemy_ships
    jmp collide_enemy_ships                                           ; 29c9: 4c e0 27    L.' :18c9[1]

.consider_next_second_enemy_ship
    dec torpedoes_still_to_consider                                   ; 29cc: ce 55 0e    .U. :18cc[1]
    beq consider_next_enemy_ship                                      ; 29cf: f0 03       ..  :18cf[1]
    jmp check_for_collisions_between_enemy_ships                      ; 29d1: 4c 50 18    LP. :18d1[1]

.consider_next_enemy_ship
    lda temp0_low                                                     ; 29d4: a5 80       ..  :18d4[1]
    clc                                                               ; 29d6: 18          .   :18d6[1]
    adc #&0b                                                          ; 29d7: 69 0b       i.  :18d7[1]
    sta temp0_low                                                     ; 29d9: 85 80       ..  :18d9[1]
    dec enemy_ships_still_to_consider                                 ; 29db: ce 54 0e    .T. :18db[1]
    beq return9                                                       ; 29de: f0 03       ..  :18de[1]
    jmp check_for_starship_collision_with_enemy_ships_loop            ; 29e0: 4c e2 17    L.. :18e0[1]

.return9
    rts                                                               ; 29e3: 60          `   :18e3[1]

.plot_segment
    jsr eor_pixel_within_box_around_origin                            ; 29e4: 20 4a 0f     J. :18e4[1]
    ldy segment_angle                                                 ; 29e7: a4 78       .x  :18e7[1]
    lda segment_angle_to_x_y_deltas_table,y                           ; 29e9: b9 98 0e    ... :18e9[1]
.consider_change_to_x
    lsr a                                                             ; 29ec: 4a          J   :18ec[1]
    bcc bit_1_unset                                                   ; 29ed: 90 07       ..  :18ed[1]
    lsr a                                                             ; 29ef: 4a          J   :18ef[1]
    bcs bit_2_set                                                     ; 29f0: b0 07       ..  :18f0[1]
    dec x_pixels                                                      ; 29f2: c6 7a       .z  :18f2[1]
    bcc consider_change_to_y                                          ; 29f4: 90 05       ..  :18f4[1]   ; ALWAYS branch

.bit_1_unset
    lsr a                                                             ; 29f6: 4a          J   :18f6[1]
    bcc consider_change_to_y                                          ; 29f7: 90 02       ..  :18f7[1]
.bit_2_set
    inc x_pixels                                                      ; 29f9: e6 7a       .z  :18f9[1]
.consider_change_to_y
    lsr a                                                             ; 29fb: 4a          J   :18fb[1]
    bcc bit_3_unset                                                   ; 29fc: 90 07       ..  :18fc[1]
    lsr a                                                             ; 29fe: 4a          J   :18fe[1]
    bcs bit_4_set                                                     ; 29ff: b0 07       ..  :18ff[1]
    dec y_pixels                                                      ; 2a01: c6 7b       .{  :1901[1]
    bcc make_changes                                                  ; 2a03: 90 05       ..  :1903[1]   ; ALWAYS branch

.bit_3_unset
    lsr a                                                             ; 2a05: 4a          J   :1905[1]
    bcc make_changes                                                  ; 2a06: 90 02       ..  :1906[1]
.bit_4_set
    inc y_pixels                                                      ; 2a08: e6 7b       .{  :1908[1]
.make_changes
    lda segment_angle                                                 ; 2a0a: a5 78       .x  :190a[1]
    clc                                                               ; 2a0c: 18          .   :190c[1]
    adc output_pixels                                                 ; 2a0d: 65 72       er  :190d[1]
    and #&1f                                                          ; 2a0f: 29 1f       ).  :190f[1]
    sta segment_angle                                                 ; 2a11: 85 78       .x  :1911[1]
    dec segment_length                                                ; 2a13: c6 74       .t  :1913[1]
    bne plot_segment                                                  ; 2a15: d0 cd       ..  :1915[1]
    rts                                                               ; 2a17: 60          `   :1917[1]

.starship_torpedo_cooldown
    equb 0                                                            ; 2a18: 00          .   :1918[1]
.starship_torpedo_cooldown_after_firing
    equb 1                                                            ; 2a19: 01          .   :1919[1]
.fire_pressed
    equb 0                                                            ; 2a1a: 00          .   :191a[1]
.unused18
    equb 0                                                            ; 2a1b: 00          .   :191b[1]
.starship_energy_low
    equb 0                                                            ; 2a1c: 00          .   :191c[1]
.starship_energy_high
.starship_energy_high1
    equb 0                                                            ; 2a1d: 00          .   :191d[1]
.damage_high
    equb 0                                                            ; 2a1e: 00          .   :191e[1]
.damage_low
.damage_low1
    equb 0                                                            ; 2a1f: 00          .   :191f[1]
.starship_destroyed
    equb 0                                                            ; 2a20: 00          .   :1920[1]
.minimum_energy_value_to_avoid_starship_destruction
    equb 4                                                            ; 2a21: 04          .   :1921[1]
.starship_energy_divided_by_sixteen
    equb 0                                                            ; 2a22: 00          .   :1922[1]
.starship_energy_regeneration
    equb 0                                                            ; 2a23: 00          .   :1923[1]
.starship_automatic_shields
    equb 0                                                            ; 2a24: 00          .   :1924[1]
.value_of_x_when_incur_damage_called
    equb 0                                                            ; 2a25: 00          .   :1925[1]
.shields_state_delta
    equb 0                                                            ; 2a26: 00          .   :1926[1]
.rotation_delta
    equb 0                                                            ; 2a27: 00          .   :1927[1]
.starship_rotation_fraction
    equb 0                                                            ; 2a28: 00          .   :1928[1]
.strength_of_player_rotation
    equb &f0                                                          ; 2a29: f0          .   :1929[1]
.strength_of_rotation_dampers
    equb &40                                                          ; 2a2a: 40          @   :192a[1]
.starship_energy_drain_from_acceleration
    equb 4                                                            ; 2a2b: 04          .   :192b[1]
.rotation_damper
    equb 0                                                            ; 2a2c: 00          .   :192c[1]
.starship_energy_drain_from_non_zero_rotation
    equb 4                                                            ; 2a2d: 04          .   :192d[1]
.velocity_delta
    equb 0                                                            ; 2a2e: 00          .   :192e[1]
.starship_acceleration_from_player
    equb &40                                                          ; 2a2f: 40          @   :192f[1]
.starship_acceleration_from_velocity_damper
    equb &20                                                          ; 2a30: 20              :1930[1]
.velocity_damper
    equb 0                                                            ; 2a31: 00          .   :1931[1]
.maximum_starship_velocity
    equb 4                                                            ; 2a32: 04          .   :1932[1]
.enemy_ship_x_plus_half_sine
    equb 0                                                            ; 2a33: 00          .   :1933[1]
.enemy_ship_y_plus_half_cosine
    equb 0                                                            ; 2a34: 00          .   :1934[1]
.enemy_ship_type
    equb 0                                                            ; 2a35: 00          .   :1935[1]
.starship_torpedo_counter
    equb 0                                                            ; 2a36: 00          .   :1936[1]
.starship_torpedoes_per_round
    equb 4                                                            ; 2a37: 04          .   :1937[1]
.starship_torpedo_cooldown_after_round
    equb 2                                                            ; 2a38: 02          .   :1938[1]
.starship_energy_drain_from_firing_torpedo
    equb 4                                                            ; 2a39: 04          .   :1939[1]
.previous_starship_automatic_shields
    equb 0                                                            ; 2a3a: 00          .   :193a[1]
.unused19
    equb &ea, &ea, &ea, &ea                                           ; 2a3b: ea ea ea... ... :193b[1]

.handle_player_movement
    lda #0                                                            ; 2a3f: a9 00       ..  :193f[1]
    sta rotation_delta                                                ; 2a41: 8d 27 19    .'. :1941[1]
    sta velocity_delta                                                ; 2a44: 8d 2e 19    ... :1944[1]
    sta fire_pressed                                                  ; 2a47: 8d 1a 19    ... :1947[1]
    sta shields_state_delta                                           ; 2a4a: 8d 26 19    .&. :194a[1]
    ldx starship_torpedo_cooldown                                     ; 2a4d: ae 18 19    ... :194d[1]
    beq reset_starship_torpedo_round                                  ; 2a50: f0 06       ..  :1950[1]
    dec starship_torpedo_cooldown                                     ; 2a52: ce 18 19    ... :1952[1]
    jmp skip_reset_starship_torpedo_round                             ; 2a55: 4c 5e 19    L^. :1955[1]

.reset_starship_torpedo_round
    lda starship_torpedoes_per_round                                  ; 2a58: ad 37 19    .7. :1958[1]
    sta starship_torpedo_counter                                      ; 2a5b: 8d 36 19    .6. :195b[1]
.skip_reset_starship_torpedo_round
    jsr check_for_keypresses                                          ; 2a5e: 20 4b 23     K# :195e[1]
    lda starship_destroyed                                            ; 2a61: ad 20 19    . . :1961[1]
    beq starship_isnt_destroyed                                       ; 2a64: f0 03       ..  :1964[1]
    jmp player_isnt_firing                                            ; 2a66: 4c 70 1a    Lp. :1966[1]

.starship_isnt_destroyed
    lda velocity_delta                                                ; 2a69: ad 2e 19    ... :1969[1]
    bne player_is_accelerating                                        ; 2a6c: d0 0b       ..  :196c[1]
    lda velocity_damper                                               ; 2a6e: ad 31 19    .1. :196e[1]
    beq finished_accelerating                                         ; 2a71: f0 53       .S  :1971[1]
    lda starship_acceleration_from_velocity_damper                    ; 2a73: ad 30 19    .0. :1973[1]
    jmp set_deceleration                                              ; 2a76: 4c a4 19    L.. :1976[1]

.player_is_accelerating
    bmi starship_is_decelerating                                      ; 2a79: 30 26       0&  :1979[1]
    lda starship_acceleration_from_player                             ; 2a7b: ad 2f 19    ./. :197b[1]
    sta temp8                                                         ; 2a7e: 85 75       .u  :197e[1]
    clc                                                               ; 2a80: 18          .   :1980[1]
    adc starship_velocity_low                                         ; 2a81: 6d 01 0f    m.. :1981[1]
    sta starship_velocity_low                                         ; 2a84: 8d 01 0f    ... :1984[1]
    bcc skip12                                                        ; 2a87: 90 03       ..  :1987[1]
    inc starship_velocity_high                                        ; 2a89: ee 00 0f    ... :1989[1]
.skip12
    lda starship_velocity_high                                        ; 2a8c: ad 00 0f    ... :198c[1]
    cmp maximum_starship_velocity                                     ; 2a8f: cd 32 19    .2. :198f[1]
    bcc incur_damage_from_acceleration                                ; 2a92: 90 2c       .,  :1992[1]
    lda maximum_starship_velocity                                     ; 2a94: ad 32 19    .2. :1994[1]
    sta starship_velocity_high                                        ; 2a97: 8d 00 0f    ... :1997[1]
    lda #0                                                            ; 2a9a: a9 00       ..  :199a[1]
    sta starship_velocity_low                                         ; 2a9c: 8d 01 0f    ... :199c[1]
    beq finished_accelerating                                         ; 2a9f: f0 25       .%  :199f[1]   ; ALWAYS branch

.starship_is_decelerating
    lda starship_acceleration_from_player                             ; 2aa1: ad 2f 19    ./. :19a1[1]
.set_deceleration
    sta temp8                                                         ; 2aa4: 85 75       .u  :19a4[1]
    lda starship_velocity_low                                         ; 2aa6: ad 01 0f    ... :19a6[1]
    sec                                                               ; 2aa9: 38          8   :19a9[1]
    sbc temp8                                                         ; 2aaa: e5 75       .u  :19aa[1]
    sta starship_velocity_low                                         ; 2aac: 8d 01 0f    ... :19ac[1]
    bcs incur_damage_from_acceleration                                ; 2aaf: b0 0f       ..  :19af[1]
    dec starship_velocity_high                                        ; 2ab1: ce 00 0f    ... :19b1[1]
    bpl incur_damage_from_acceleration                                ; 2ab4: 10 0a       ..  :19b4[1]
    lda #0                                                            ; 2ab6: a9 00       ..  :19b6[1]
    sta starship_velocity_low                                         ; 2ab8: 8d 01 0f    ... :19b8[1]
    sta starship_velocity_high                                        ; 2abb: 8d 00 0f    ... :19bb[1]
    beq finished_accelerating                                         ; 2abe: f0 06       ..  :19be[1]   ; ALWAYS branch

.incur_damage_from_acceleration
    lda starship_energy_drain_from_acceleration                       ; 2ac0: ad 2b 19    .+. :19c0[1]
    jsr incur_low_damage                                              ; 2ac3: 20 ba 1a     .. :19c3[1]
.finished_accelerating
    lda starship_rotation_fraction                                    ; 2ac6: ad 28 19    .(. :19c6[1]
    ldy rotation_delta                                                ; 2ac9: ac 27 19    .'. :19c9[1]
    bne player_is_turning                                             ; 2acc: d0 1b       ..  :19cc[1]
    ldy rotation_damper                                               ; 2ace: ac 2c 19    .,. :19ce[1]
    beq finished_rotating                                             ; 2ad1: f0 6e       .n  :19d1[1]
    ldx starship_rotation                                             ; 2ad3: ae 02 0f    ... :19d3[1]
    bpl starship_was_turned_clockwise                                 ; 2ad6: 10 0a       ..  :19d6[1]
    dex                                                               ; 2ad8: ca          .   :19d8[1]
    bpl finished_rotating                                             ; 2ad9: 10 66       .f  :19d9[1]
    sec                                                               ; 2adb: 38          8   :19db[1]
    sbc strength_of_rotation_dampers                                  ; 2adc: ed 2a 19    .*. :19dc[1]
    jmp store_rotation                                                ; 2adf: 4c ef 19    L.. :19df[1]

.starship_was_turned_clockwise
    clc                                                               ; 2ae2: 18          .   :19e2[1]
    adc strength_of_rotation_dampers                                  ; 2ae3: 6d 2a 19    m*. :19e3[1]
    jmp set_starship_rotation_fraction_and_consider_rotating          ; 2ae6: 4c 03 1a    L.. :19e6[1]

.player_is_turning
    bpl player_is_turning_clockwise                                   ; 2ae9: 10 14       ..  :19e9[1]
    sec                                                               ; 2aeb: 38          8   :19eb[1]
    sbc strength_of_player_rotation                                   ; 2aec: ed 29 19    .). :19ec[1]
.store_rotation
    sta starship_rotation_fraction                                    ; 2aef: 8d 28 19    .(. :19ef[1]
    bcs incur_energy_drain_from_rotation                              ; 2af2: b0 47       .G  :19f2[1]
    lda #&7b                                                          ; 2af4: a9 7b       .{  :19f4[1]
    cmp starship_rotation                                             ; 2af6: cd 02 0f    ... :19f6[1]
    bne rotate_starship_anticlockwise                                 ; 2af9: d0 21       .!  :19f9[1]
    lda #0                                                            ; 2afb: a9 00       ..  :19fb[1]
    beq set_starship_rotation_fraction                                ; 2afd: f0 12       ..  :19fd[1]   ; ALWAYS branch

.player_is_turning_clockwise
    clc                                                               ; 2aff: 18          .   :19ff[1]
    adc strength_of_player_rotation                                   ; 2b00: 6d 29 19    m). :1a00[1]
.set_starship_rotation_fraction_and_consider_rotating
    sta starship_rotation_fraction                                    ; 2b03: 8d 28 19    .(. :1a03[1]
    bcc incur_energy_drain_from_rotation                              ; 2b06: 90 33       .3  :1a06[1]
    lda #&85                                                          ; 2b08: a9 85       ..  :1a08[1]
    cmp starship_rotation                                             ; 2b0a: cd 02 0f    ... :1a0a[1]
    bne rotate_starship_clockwise                                     ; 2b0d: d0 08       ..  :1a0d[1]
    lda #&ff                                                          ; 2b0f: a9 ff       ..  :1a0f[1]
.set_starship_rotation_fraction
    sta starship_rotation_fraction                                    ; 2b11: 8d 28 19    .(. :1a11[1]
    jmp finished_rotating                                             ; 2b14: 4c 41 1a    LA. :1a14[1]

.rotate_starship_clockwise
    inc starship_rotation                                             ; 2b17: ee 02 0f    ... :1a17[1]
    bne continue                                                      ; 2b1a: d0 03       ..  :1a1a[1]
.rotate_starship_anticlockwise
    dec starship_rotation                                             ; 2b1c: ce 02 0f    ... :1a1c[1]
.continue
    clc                                                               ; 2b1f: 18          .   :1a1f[1]
    lda starship_rotation                                             ; 2b20: ad 02 0f    ... :1a20[1]
    bmi skip_inversion3                                               ; 2b23: 30 04       0.  :1a23[1]
    eor #&ff                                                          ; 2b25: 49 ff       I.  :1a25[1]
    adc #1                                                            ; 2b27: 69 01       i.  :1a27[1]
.skip_inversion3
    adc #&80                                                          ; 2b29: 69 80       i.  :1a29[1]
    tay                                                               ; 2b2b: a8          .   :1a2b[1]
    sta starship_rotation_magnitude                                   ; 2b2c: 8d 03 0f    ... :1a2c[1]
    lda starship_rotation_sine_table,y                                ; 2b2f: b9 c4 0e    ... :1a2f[1]
    sta starship_rotation_sine_magnitude                              ; 2b32: 8d 05 0f    ... :1a32[1]
    lda starship_rotation_cosine_table,y                              ; 2b35: b9 be 0e    ... :1a35[1]
    sta starship_rotation_cosine                                      ; 2b38: 8d 04 0f    ... :1a38[1]
.incur_energy_drain_from_rotation
    lda starship_energy_drain_from_non_zero_rotation                  ; 2b3b: ad 2d 19    .-. :1a3b[1]
    jsr incur_low_damage                                              ; 2b3e: 20 ba 1a     .. :1a3e[1]
.finished_rotating
    lda fire_pressed                                                  ; 2b41: ad 1a 19    ... :1a41[1]
    beq player_isnt_firing                                            ; 2b44: f0 2a       .*  :1a44[1]
    lda starship_torpedo_cooldown                                     ; 2b46: ad 18 19    ... :1a46[1]
    bne player_isnt_firing                                            ; 2b49: d0 25       .%  :1a49[1]
    dec starship_torpedo_counter                                      ; 2b4b: ce 36 19    .6. :1a4b[1]
    bne not_end_of_round                                              ; 2b4e: d0 0c       ..  :1a4e[1]
    lda starship_torpedoes_per_round                                  ; 2b50: ad 37 19    .7. :1a50[1]
    sta starship_torpedo_counter                                      ; 2b53: 8d 36 19    .6. :1a53[1]
    lda starship_torpedo_cooldown_after_round                         ; 2b56: ad 38 19    .8. :1a56[1]
    jmp set_starship_torpedo_cooldown                                 ; 2b59: 4c 5f 1a    L_. :1a59[1]

.not_end_of_round
    lda starship_torpedo_cooldown_after_firing                        ; 2b5c: ad 19 19    ... :1a5c[1]
.set_starship_torpedo_cooldown
    sta starship_torpedo_cooldown                                     ; 2b5f: 8d 18 19    ... :1a5f[1]
    jsr fire_starship_torpedo                                         ; 2b62: 20 f7 12     .. :1a62[1]
    lda starship_fired_torpedo                                        ; 2b65: ad 58 26    .X& :1a65[1]
    beq player_isnt_firing                                            ; 2b68: f0 06       ..  :1a68[1]
    lda starship_energy_drain_from_firing_torpedo                     ; 2b6a: ad 39 19    .9. :1a6a[1]
    jsr incur_low_damage                                              ; 2b6d: 20 ba 1a     .. :1a6d[1]
.player_isnt_firing
    jsr plot_auto_shields_string                                      ; 2b70: 20 ae 45     .E :1a70[1]
    lda starship_automatic_shields                                    ; 2b73: ad 24 19    .$. :1a73[1]
    sta previous_starship_automatic_shields                           ; 2b76: 8d 3a 19    .:. :1a76[1]
    beq skip_shield_activation                                        ; 2b79: f0 08       ..  :1a79[1]
    lda scanner_failure_duration                                      ; 2b7b: ad 59 26    .Y& :1a7b[1]
    bne skip_shield_activation                                        ; 2b7e: d0 03       ..  :1a7e[1]
    jsr activate_shields_when_enemy_ship_enters_main_square           ; 2b80: 20 a1 1b     .. :1a80[1]
.skip_shield_activation
    lda shields_state_delta                                           ; 2b83: ad 26 19    .&. :1a83[1]
    beq return10                                                      ; 2b86: f0 19       ..  :1a86[1]
    ldx #0                                                            ; 2b88: a2 00       ..  :1a88[1]
    stx starship_automatic_shields                                    ; 2b8a: 8e 24 19    .$. :1a8a[1]
    stx previous_starship_automatic_shields                           ; 2b8d: 8e 3a 19    .:. :1a8d[1]
    tay                                                               ; 2b90: a8          .   :1a90[1]
    bmi plot_shields_on_and_consider_activation                       ; 2b91: 30 08       0.  :1a91[1]
    ldx #7                                                            ; 2b93: a2 07       ..  :1a93[1]
    jsr plot_shields_string_and_something                             ; 2b95: 20 9d 45     .E :1a95[1]
    jmp plot_top_and_right_edge_of_long_range_scanner_with_blank_text ; 2b98: 4c 2b 14    L+. :1a98[1]

.plot_shields_on_and_consider_activation
    jsr plot_shields_string_and_something                             ; 2b9b: 20 9d 45     .E :1a9b[1]
    jmp unplot_long_range_scanner_if_shields_inactive                 ; 2b9e: 4c 08 14    L.. :1a9e[1]

.return10
    rts                                                               ; 2ba1: 60          `   :1aa1[1]

.unused20
    equb &ea                                                          ; 2ba2: ea          .   :1aa2[1]

.incur_damage
    stx value_of_x_when_incur_damage_called                           ; 2ba3: 8e 25 19    .%. :1aa3[1]
    ldx starship_shields_active                                       ; 2ba6: ae 56 0e    .V. :1aa6[1]
    beq shields_are_active                                            ; 2ba9: f0 0c       ..  :1aa9[1]
    asl a                                                             ; 2bab: 0a          .   :1aab[1]
    bcc skip13                                                        ; 2bac: 90 03       ..  :1aac[1]
    inc damage_high                                                   ; 2bae: ee 1e 19    ... :1aae[1]
.skip13
    asl a                                                             ; 2bb1: 0a          .   :1ab1[1]
    bcc shields_are_active                                            ; 2bb2: 90 03       ..  :1ab2[1]
    inc damage_high                                                   ; 2bb4: ee 1e 19    ... :1ab4[1]
.shields_are_active
    ldx value_of_x_when_incur_damage_called                           ; 2bb7: ae 25 19    .%. :1ab7[1]
.incur_low_damage
    clc                                                               ; 2bba: 18          .   :1aba[1]
    adc damage_low                                                    ; 2bbb: 6d 1f 19    m.. :1abb[1]
    sta damage_low                                                    ; 2bbe: 8d 1f 19    ... :1abe[1]
    bcc return11                                                      ; 2bc1: 90 03       ..  :1ac1[1]
    inc damage_high                                                   ; 2bc3: ee 1e 19    ... :1ac3[1]
.return11
    rts                                                               ; 2bc6: 60          `   :1ac6[1]

.update_various_starship_statuses_on_screen
    jsr apply_damage_to_starship_energy                               ; 2bc7: 20 d1 1a     .. :1ac7[1]
    jsr plot_starship_velocity_and_rotation_on_gauges                 ; 2bca: 20 45 2f     E/ :1aca[1]
    jmp flash_energy_when_low                                         ; 2bcd: 4c f3 25    L.% :1acd[1]

.unused21
    equb &60                                                          ; 2bd0: 60          `   :1ad0[1]

.apply_damage_to_starship_energy
    lda starship_energy_low                                           ; 2bd1: ad 1c 19    ... :1ad1[1]
    sec                                                               ; 2bd4: 38          8   :1ad4[1]
    sbc damage_low                                                    ; 2bd5: ed 1f 19    ... :1ad5[1]
    sta starship_energy_low                                           ; 2bd8: 8d 1c 19    ... :1ad8[1]
    lda starship_energy_high                                          ; 2bdb: ad 1d 19    ... :1adb[1]
    sbc damage_high                                                   ; 2bde: ed 1e 19    ... :1ade[1]
    sta starship_energy_high                                          ; 2be1: 8d 1d 19    ... :1ae1[1]
    lda starship_energy_low                                           ; 2be4: ad 1c 19    ... :1ae4[1]
    clc                                                               ; 2be7: 18          .   :1ae7[1]
    adc starship_energy_regeneration                                  ; 2be8: 6d 23 19    m#. :1ae8[1]
    sta starship_energy_low                                           ; 2beb: 8d 1c 19    ... :1aeb[1]
    bcc skip14                                                        ; 2bee: 90 03       ..  :1aee[1]
    inc starship_energy_high                                          ; 2bf0: ee 1d 19    ... :1af0[1]
.skip14
    lda starship_energy_high                                          ; 2bf3: ad 1d 19    ... :1af3[1]
    bpl starship_still_has_energy                                     ; 2bf6: 10 0d       ..  :1af6[1]
    jsr explode_starship                                              ; 2bf8: 20 af 1d     .. :1af8[1]
    lda #0                                                            ; 2bfb: a9 00       ..  :1afb[1]
    sta starship_energy_low                                           ; 2bfd: 8d 1c 19    ... :1afd[1]
    sta starship_energy_high                                          ; 2c00: 8d 1d 19    ... :1b00[1]
    beq reset_damage_counter                                          ; 2c03: f0 17       ..  :1b03[1]   ; ALWAYS branch

.starship_still_has_energy
    cmp #&0c                                                          ; 2c05: c9 0c       ..  :1b05[1]
    bcc reset_damage_counter                                          ; 2c07: 90 13       ..  :1b07[1]
    bne skip15                                                        ; 2c09: d0 07       ..  :1b09[1]
    lda starship_energy_low                                           ; 2c0b: ad 1c 19    ... :1b0b[1]
    cmp #&81                                                          ; 2c0e: c9 81       ..  :1b0e[1]
    bcc reset_damage_counter                                          ; 2c10: 90 0a       ..  :1b10[1]
.skip15
    lda #&0c                                                          ; 2c12: a9 0c       ..  :1b12[1]
    sta starship_energy_high                                          ; 2c14: 8d 1d 19    ... :1b14[1]
    lda #&80                                                          ; 2c17: a9 80       ..  :1b17[1]
    sta starship_energy_low                                           ; 2c19: 8d 1c 19    ... :1b19[1]
.reset_damage_counter
    lda #0                                                            ; 2c1c: a9 00       ..  :1b1c[1]
    sta damage_low                                                    ; 2c1e: 8d 1f 19    ... :1b1e[1]
    sta damage_high                                                   ; 2c21: 8d 1e 19    ... :1b21[1]
    sta starship_destroyed                                            ; 2c24: 8d 20 19    . . :1b24[1]
    lda starship_energy_high                                          ; 2c27: ad 1d 19    ... :1b27[1]
    sta temp3                                                         ; 2c2a: 85 84       ..  :1b2a[1]
    lda starship_energy_low                                           ; 2c2c: ad 1c 19    ... :1b2c[1]
    lsr temp3                                                         ; 2c2f: 46 84       F.  :1b2f[1]
    ror a                                                             ; 2c31: 6a          j   :1b31[1]
    lsr temp3                                                         ; 2c32: 46 84       F.  :1b32[1]
    ror a                                                             ; 2c34: 6a          j   :1b34[1]
    lsr temp3                                                         ; 2c35: 46 84       F.  :1b35[1]
    ror a                                                             ; 2c37: 6a          j   :1b37[1]
    lsr temp3                                                         ; 2c38: 46 84       F.  :1b38[1]
    ror a                                                             ; 2c3a: 6a          j   :1b3a[1]
    cmp minimum_energy_value_to_avoid_starship_destruction            ; 2c3b: cd 21 19    .!. :1b3b[1]
    bcs skip_destruction                                              ; 2c3e: b0 03       ..  :1b3e[1]
    inc starship_destroyed                                            ; 2c40: ee 20 19    . . :1b40[1]
.skip_destruction
    cmp starship_energy_divided_by_sixteen                            ; 2c43: cd 22 19    .". :1b43[1]
    beq return12                                                      ; 2c46: f0 58       .X  :1b46[1]
.plot_starship_energy_bars
    ldx starship_energy_divided_by_sixteen                            ; 2c48: ae 22 19    .". :1b48[1]
    sta starship_energy_divided_by_sixteen                            ; 2c4b: 8d 22 19    .". :1b4b[1]
    sta output_pixels                                                 ; 2c4e: 85 72       .r  :1b4e[1]
    cpx output_pixels                                                 ; 2c50: e4 72       .r  :1b50[1]
    bcs skip_swapping_start_and_end                                   ; 2c52: b0 03       ..  :1b52[1]
    stx output_pixels                                                 ; 2c54: 86 72       .r  :1b54[1]
    tax                                                               ; 2c56: aa          .   :1b56[1]
.skip_swapping_start_and_end
    stx output_fraction                                               ; 2c57: 86 73       .s  :1b57[1]
    ldx #3                                                            ; 2c59: a2 03       ..  :1b59[1]
    lda output_fraction                                               ; 2c5b: a5 73       .s  :1b5b[1]
.calculate_pixel_position_in_bar
    cmp #&33                                                          ; 2c5d: c9 33       .3  :1b5d[1]
    bcc finished_calculating_pixel_position_in_bar                    ; 2c5f: 90 06       ..  :1b5f[1]
    sec                                                               ; 2c61: 38          8   :1b61[1]
    sbc #&32                                                          ; 2c62: e9 32       .2  :1b62[1]
    dex                                                               ; 2c64: ca          .   :1b64[1]
    bpl calculate_pixel_position_in_bar                               ; 2c65: 10 f6       ..  :1b65[1]
.finished_calculating_pixel_position_in_bar
    clc                                                               ; 2c67: 18          .   :1b67[1]
    adc #&0c                                                          ; 2c68: 69 0c       i.  :1b68[1]
    sta x_pixels                                                      ; 2c6a: 85 7a       .z  :1b6a[1]
    txa                                                               ; 2c6c: 8a          .   :1b6c[1]
    asl a                                                             ; 2c6d: 0a          .   :1b6d[1]
    asl a                                                             ; 2c6e: 0a          .   :1b6e[1]
    asl a                                                             ; 2c6f: 0a          .   :1b6f[1]
    clc                                                               ; 2c70: 18          .   :1b70[1]
    adc #&95                                                          ; 2c71: 69 95       i.  :1b71[1]
    sta y_pixels                                                      ; 2c73: 85 7b       .{  :1b73[1]
    inc screen_start_high                                             ; 2c75: e6 79       .y  :1b75[1]
.plot_energy_change_loop
    lda #5                                                            ; 2c77: a9 05       ..  :1b77[1]
    jsr plot_vertical_line                                            ; 2c79: 20 cf 1b     .. :1b79[1]
    dec x_pixels                                                      ; 2c7c: c6 7a       .z  :1b7c[1]
    lda y_pixels                                                      ; 2c7e: a5 7b       .{  :1b7e[1]
    sec                                                               ; 2c80: 38          8   :1b80[1]
    sbc #5                                                            ; 2c81: e9 05       ..  :1b81[1]
    sta y_pixels                                                      ; 2c83: 85 7b       .{  :1b83[1]
    lda #&0c                                                          ; 2c85: a9 0c       ..  :1b85[1]
    cmp x_pixels                                                      ; 2c87: c5 7a       .z  :1b87[1]
    bcc skip_moving_to_next_bar                                       ; 2c89: 90 0b       ..  :1b89[1]
    lda y_pixels                                                      ; 2c8b: a5 7b       .{  :1b8b[1]
    clc                                                               ; 2c8d: 18          .   :1b8d[1]
    adc #8                                                            ; 2c8e: 69 08       i.  :1b8e[1]
    sta y_pixels                                                      ; 2c90: 85 7b       .{  :1b90[1]
    lda #&3e                                                          ; 2c92: a9 3e       .>  :1b92[1]
    sta x_pixels                                                      ; 2c94: 85 7a       .z  :1b94[1]
.skip_moving_to_next_bar
    dec output_fraction                                               ; 2c96: c6 73       .s  :1b96[1]
    lda output_fraction                                               ; 2c98: a5 73       .s  :1b98[1]
    cmp output_pixels                                                 ; 2c9a: c5 72       .r  :1b9a[1]
    bne plot_energy_change_loop                                       ; 2c9c: d0 d9       ..  :1b9c[1]
    dec screen_start_high                                             ; 2c9e: c6 79       .y  :1b9e[1]
.return12
    rts                                                               ; 2ca0: 60          `   :1ba0[1]

.activate_shields_when_enemy_ship_enters_main_square
    lda maximum_number_of_enemy_ships                                 ; 2ca1: ad 4f 0e    .O. :1ba1[1]
    sta enemy_ships_still_to_consider                                 ; 2ca4: 8d 54 0e    .T. :1ba4[1]
    ldx #0                                                            ; 2ca7: a2 00       ..  :1ba7[1]
.activate_shields_when_enemy_ship_enters_main_square_loop
    lda enemy_ships_on_screen,x                                       ; 2ca9: bd 80 04    ... :1ba9[1]
    beq enemy_ship_is_on_screen                                       ; 2cac: f0 12       ..  :1bac[1]
    txa                                                               ; 2cae: 8a          .   :1bae[1]
    clc                                                               ; 2caf: 18          .   :1baf[1]
    adc #&0b                                                          ; 2cb0: 69 0b       i.  :1bb0[1]
    tax                                                               ; 2cb2: aa          .   :1bb2[1]
    dec enemy_ships_still_to_consider                                 ; 2cb3: ce 54 0e    .T. :1bb3[1]
    bne activate_shields_when_enemy_ship_enters_main_square_loop      ; 2cb6: d0 f1       ..  :1bb6[1]
    lda starship_shields_active                                       ; 2cb8: ad 56 0e    .V. :1bb8[1]
    bne return13                                                      ; 2cbb: d0 0b       ..  :1bbb[1]
    jmp plot_top_and_right_edge_of_long_range_scanner_with_blank_text ; 2cbd: 4c 2b 14    L+. :1bbd[1]

.enemy_ship_is_on_screen
    lda starship_shields_active                                       ; 2cc0: ad 56 0e    .V. :1bc0[1]
    beq return13                                                      ; 2cc3: f0 03       ..  :1bc3[1]
    jmp unplot_long_range_scanner_if_shields_inactive                 ; 2cc5: 4c 08 14    L.. :1bc5[1]

.return13
    rts                                                               ; 2cc8: 60          `   :1bc8[1]

.unused22
    equb &ea, &ea, &ea, &ea, &ea, &ea                                 ; 2cc9: ea ea ea... ... :1bc9[1]

.plot_vertical_line
    sta temp3                                                         ; 2ccf: 85 84       ..  :1bcf[1]
.plot_vertical_line_loop
    jsr eor_pixel                                                     ; 2cd1: 20 64 0f     d. :1bd1[1]
    inc y_pixels                                                      ; 2cd4: e6 7b       .{  :1bd4[1]
    dec temp3                                                         ; 2cd6: c6 84       ..  :1bd6[1]
    bne plot_vertical_line_loop                                       ; 2cd8: d0 f7       ..  :1bd8[1]
    rts                                                               ; 2cda: 60          `   :1bda[1]

.plot_horizontal_line
    sta temp3                                                         ; 2cdb: 85 84       ..  :1bdb[1]
.plot_horizontal_line_loop
    jsr eor_pixel                                                     ; 2cdd: 20 64 0f     d. :1bdd[1]
    inc x_pixels                                                      ; 2ce0: e6 7a       .z  :1be0[1]
    dec temp3                                                         ; 2ce2: c6 84       ..  :1be2[1]
    bne plot_horizontal_line_loop                                     ; 2ce4: d0 f7       ..  :1be4[1]
    rts                                                               ; 2ce6: 60          `   :1be6[1]

.damage_enemy_ship
    sta temp8                                                         ; 2ce7: 85 75       .u  :1be7[1]
    lda enemy_ships_energy,x                                          ; 2ce9: bd 89 04    ... :1be9[1]
    sec                                                               ; 2cec: 38          8   :1bec[1]
    sbc temp8                                                         ; 2ced: e5 75       .u  :1bed[1]
    bcs skip16                                                        ; 2cef: b0 02       ..  :1bef[1]
    lda #0                                                            ; 2cf1: a9 00       ..  :1bf1[1]
.skip16
    sta enemy_ships_energy,x                                          ; 2cf3: 9d 89 04    ... :1bf3[1]
    bne return14                                                      ; 2cf6: d0 03       ..  :1bf6[1]
    jsr explode_enemy_ship                                            ; 2cf8: 20 5d 1f     ]. :1bf8[1]
.return14
    rts                                                               ; 2cfb: 60          `   :1bfb[1]

.plot_enemy_ship
    stx temp8                                                         ; 2cfc: 86 75       .u  :1bfc[1]
    lda enemy_ships_type,x                                            ; 2cfe: bd 0a 04    ... :1bfe[1]
    sta enemy_ship_type                                               ; 2d01: 8d 35 19    .5. :1c01[1]
    cmp #2                                                            ; 2d04: c9 02       ..  :1c04[1]
    bcc enemy_ship_isnt_cloaked                                       ; 2d06: 90 03       ..  :1c06[1]
    jmp enemy_ship_is_cloaked                                         ; 2d08: 4c c6 1c    L.. :1c08[1]

.enemy_ship_isnt_cloaked
    lda enemy_ships_previous_x_pixels,x                               ; 2d0b: bd 02 04    ... :1c0b[1]
    sta temp10                                                        ; 2d0e: 85 77       .w  :1c0e[1]
    lda enemy_ships_previous_x_pixels1,x                              ; 2d10: bd 05 04    ... :1c10[1]
    sta temp9                                                         ; 2d13: 85 76       .v  :1c13[1]
    lda enemy_ships_previous_angle,x                                  ; 2d15: bd 07 04    ... :1c15[1]
    lsr a                                                             ; 2d18: 4a          J   :1c18[1]
    lsr a                                                             ; 2d19: 4a          J   :1c19[1]
    lsr a                                                             ; 2d1a: 4a          J   :1c1a[1]
    sta temp11                                                        ; 2d1b: 85 7c       .|  :1c1b[1]
    clc                                                               ; 2d1d: 18          .   :1c1d[1]
    adc #&10                                                          ; 2d1e: 69 10       i.  :1c1e[1]
    and #&1f                                                          ; 2d20: 29 1f       ).  :1c20[1]
    tay                                                               ; 2d22: a8          .   :1c22[1]
    lda sine_table,y                                                  ; 2d23: b9 58 0e    .X. :1c23[1]
    clc                                                               ; 2d26: 18          .   :1c26[1]
    bpl skip_set_carry_sine                                           ; 2d27: 10 01       ..  :1c27[1]
    sec                                                               ; 2d29: 38          8   :1c29[1]
.skip_set_carry_sine
    ror a                                                             ; 2d2a: 6a          j   :1c2a[1]
    clc                                                               ; 2d2b: 18          .   :1c2b[1]
    adc temp10                                                        ; 2d2c: 65 77       ew  :1c2c[1]
    sta enemy_ship_x_plus_half_sine                                   ; 2d2e: 8d 33 19    .3. :1c2e[1]
    lda cosine_table,y                                                ; 2d31: b9 78 0e    .x. :1c31[1]
    clc                                                               ; 2d34: 18          .   :1c34[1]
    bpl skip_set_carry_cosine                                         ; 2d35: 10 01       ..  :1c35[1]
    sec                                                               ; 2d37: 38          8   :1c37[1]
.skip_set_carry_cosine
    ror a                                                             ; 2d38: 6a          j   :1c38[1]
    clc                                                               ; 2d39: 18          .   :1c39[1]
    adc temp9                                                         ; 2d3a: 65 76       ev  :1c3a[1]
    sta enemy_ship_y_plus_half_cosine                                 ; 2d3c: 8d 34 19    .4. :1c3c[1]
    lda temp11                                                        ; 2d3f: a5 7c       .|  :1c3f[1]
    clc                                                               ; 2d41: 18          .   :1c41[1]
    adc #3                                                            ; 2d42: 69 03       i.  :1c42[1]
    and #&1f                                                          ; 2d44: 29 1f       ).  :1c44[1]
    tay                                                               ; 2d46: a8          .   :1c46[1]
    sta segment_angle                                                 ; 2d47: 85 78       .x  :1c47[1]
    lda enemy_ship_x_plus_half_sine                                   ; 2d49: ad 33 19    .3. :1c49[1]
    clc                                                               ; 2d4c: 18          .   :1c4c[1]
    adc sine_table,y                                                  ; 2d4d: 79 58 0e    yX. :1c4d[1]
    sta x_pixels                                                      ; 2d50: 85 7a       .z  :1c50[1]
    lda enemy_ship_y_plus_half_cosine                                 ; 2d52: ad 34 19    .4. :1c52[1]
    clc                                                               ; 2d55: 18          .   :1c55[1]
    adc cosine_table,y                                                ; 2d56: 79 78 0e    yx. :1c56[1]
    sta y_pixels                                                      ; 2d59: 85 7b       .{  :1c59[1]
    lda #8                                                            ; 2d5b: a9 08       ..  :1c5b[1]
    sta segment_length                                                ; 2d5d: 85 74       .t  :1c5d[1]
    lda #1                                                            ; 2d5f: a9 01       ..  :1c5f[1]
    sta output_pixels                                                 ; 2d61: 85 72       .r  :1c61[1]
    jsr plot_segment                                                  ; 2d63: 20 e4 18     .. :1c63[1]
    lda temp11                                                        ; 2d66: a5 7c       .|  :1c66[1]
    clc                                                               ; 2d68: 18          .   :1c68[1]
    adc #&14                                                          ; 2d69: 69 14       i.  :1c69[1]
    and #&1f                                                          ; 2d6b: 29 1f       ).  :1c6b[1]
    sta segment_angle                                                 ; 2d6d: 85 78       .x  :1c6d[1]
    lda #&0a                                                          ; 2d6f: a9 0a       ..  :1c6f[1]
    sta segment_length                                                ; 2d71: 85 74       .t  :1c71[1]
    lda #&ff                                                          ; 2d73: a9 ff       ..  :1c73[1]
    sta output_pixels                                                 ; 2d75: 85 72       .r  :1c75[1]
    jsr plot_segment                                                  ; 2d77: 20 e4 18     .. :1c77[1]
    lda temp11                                                        ; 2d7a: a5 7c       .|  :1c7a[1]
    clc                                                               ; 2d7c: 18          .   :1c7c[1]
    adc #&15                                                          ; 2d7d: 69 15       i.  :1c7d[1]
    and #&1f                                                          ; 2d7f: 29 1f       ).  :1c7f[1]
    sta segment_angle                                                 ; 2d81: 85 78       .x  :1c81[1]
    lda #9                                                            ; 2d83: a9 09       ..  :1c83[1]
    sta segment_length                                                ; 2d85: 85 74       .t  :1c85[1]
    lda #1                                                            ; 2d87: a9 01       ..  :1c87[1]
    sta output_pixels                                                 ; 2d89: 85 72       .r  :1c89[1]
    jsr plot_segment                                                  ; 2d8b: 20 e4 18     .. :1c8b[1]
    lda enemy_ship_type                                               ; 2d8e: ad 35 19    .5. :1c8e[1]
    beq regular_ship                                                  ; 2d91: f0 09       ..  :1c91[1]
    lda temp10                                                        ; 2d93: a5 77       .w  :1c93[1]
    sta x_pixels                                                      ; 2d95: 85 7a       .z  :1c95[1]
    lda temp9                                                         ; 2d97: a5 76       .v  :1c97[1]
    jmp long_ship                                                     ; 2d99: 4c a4 1c    L.. :1c99[1]

.regular_ship
    lda enemy_ship_x_plus_half_sine                                   ; 2d9c: ad 33 19    .3. :1c9c[1]
    sta x_pixels                                                      ; 2d9f: 85 7a       .z  :1c9f[1]
    lda enemy_ship_y_plus_half_cosine                                 ; 2da1: ad 34 19    .4. :1ca1[1]
.long_ship
    sta y_pixels                                                      ; 2da4: 85 7b       .{  :1ca4[1]
    lda temp11                                                        ; 2da6: a5 7c       .|  :1ca6[1]
    clc                                                               ; 2da8: 18          .   :1ca8[1]
    adc #&14                                                          ; 2da9: 69 14       i.  :1ca9[1]
    and #&1f                                                          ; 2dab: 29 1f       ).  :1cab[1]
    sta segment_angle                                                 ; 2dad: 85 78       .x  :1cad[1]
    lda #8                                                            ; 2daf: a9 08       ..  :1caf[1]
    sta segment_length                                                ; 2db1: 85 74       .t  :1cb1[1]
    jsr plot_segment                                                  ; 2db3: 20 e4 18     .. :1cb3[1]
    lda temp11                                                        ; 2db6: a5 7c       .|  :1cb6[1]
    clc                                                               ; 2db8: 18          .   :1cb8[1]
    adc #4                                                            ; 2db9: 69 04       i.  :1cb9[1]
    and #&1f                                                          ; 2dbb: 29 1f       ).  :1cbb[1]
    sta segment_angle                                                 ; 2dbd: 85 78       .x  :1cbd[1]
    lda #9                                                            ; 2dbf: a9 09       ..  :1cbf[1]
    sta segment_length                                                ; 2dc1: 85 74       .t  :1cc1[1]
    jsr plot_segment                                                  ; 2dc3: 20 e4 18     .. :1cc3[1]
.enemy_ship_is_cloaked
    ldx temp8                                                         ; 2dc6: a6 75       .u  :1cc6[1]
    rts                                                               ; 2dc8: 60          `   :1cc8[1]

.starship_has_exploded
    equb 0                                                            ; 2dc9: 00          .   :1cc9[1]
.starship_explosion_address_low
    equb <starship_explosion_table                                    ; 2dca: d0          .   :1cca[1]
.starship_explosion_address_high
    equb >starship_explosion_table                                    ; 2dcb: 4b          K   :1ccb[1]
.starship_explosion_size
    equb &40                                                          ; 2dcc: 40          @   :1ccc[1]
.maximum_starship_explosion_countdown
    equb &50                                                          ; 2dcd: 50          P   :1ccd[1]
.starship_explosion_countdown
    equb 0                                                            ; 2dce: 00          .   :1cce[1]
.number_of_bytes_per_enemy_explosion
    equb &3f                                                          ; 2dcf: 3f          ?   :1ccf[1]
.create_new_enemy_explosion_piece_after_one_dies
    equb 0                                                            ; 2dd0: 00          .   :1cd0[1]
.rnd_1
    equb &ca                                                          ; 2dd1: ca          .   :1cd1[1]
.rnd_2
    equb &48                                                          ; 2dd2: 48          H   :1cd2[1]
.unused23
    equb 0, 0, 0                                                      ; 2dd3: 00 00 00    ... :1cd3[1]
.keyboard_or_joystick
    equb 0                                                            ; 2dd6: 00          .   :1cd6[1]
.sound_enabled
    equb 0                                                            ; 2dd7: 00          .   :1cd7[1]
.escape_capsule_launched
    equb 0                                                            ; 2dd8: 00          .   :1cd8[1]
.damage_from_enemy_torpedo
    equb &10                                                          ; 2dd9: 10          .   :1cd9[1]
.frame_of_starship_explosion_after_which_no_sound
    equb &11                                                          ; 2dda: 11          .   :1cda[1]
.escape_capsule_sound_channel
    equb 0                                                            ; 2ddb: 00          .   :1cdb[1]
.enemy_ship_fired_torpedo
    equb 0                                                            ; 2ddc: 00          .   :1cdc[1]
.enemy_torpedo_hits_against_starship
    equb 0                                                            ; 2ddd: 00          .   :1cdd[1]
.enemy_ship_was_hit
    equb 0                                                            ; 2dde: 00          .   :1cde[1]
.damage_to_enemy_ship_from_other_collision
    equb &ea                                                          ; 2ddf: ea          .   :1cdf[1]
.how_enemy_ship_was_damaged
    equb &ea                                                          ; 2de0: ea          .   :1ce0[1]
.unused24
    equb &2e                                                          ; 2de1: 2e          .   :1ce1[1]
.enemy_ships_explosion_number
    equb 0, 0, 0, 0, 0, 0, 0, 0                                       ; 2de2: 00 00 00... ... :1ce2[1]
.unused25
    equs "SIE/256:I?SN"                                               ; 2dea: 53 49 45... SIE :1cea[1]
    equb &4c                                                          ; 2df6: 4c          L   :1cf6[1]
.enemy_explosion_address_low_table
    equb <(enemy_explosion_tables + $0000)                            ; 2df7: 00          .   :1cf7[1]
    equb <(enemy_explosion_tables + $0040)                            ; 2df8: 40          @   :1cf8[1]
    equb <(enemy_explosion_tables + $0080)                            ; 2df9: 80          .   :1cf9[1]
    equb <(enemy_explosion_tables + $00c0)                            ; 2dfa: c0          .   :1cfa[1]
    equb <(enemy_explosion_tables + $0100)                            ; 2dfb: 00          .   :1cfb[1]
    equb <(enemy_explosion_tables + $0140)                            ; 2dfc: 40          @   :1cfc[1]
    equb <(enemy_explosion_tables + $0180)                            ; 2dfd: 80          .   :1cfd[1]
    equb <(enemy_explosion_tables + $01c0)                            ; 2dfe: c0          .   :1cfe[1]
    equb <(enemy_explosion_tables + $0200)                            ; 2dff: 00          .   :1cff[1]
    equb <(enemy_explosion_tables + $0240)                            ; 2e00: 40          @   :1d00[1]
    equb <(enemy_explosion_tables + $0280)                            ; 2e01: 80          .   :1d01[1]
    equb <(enemy_explosion_tables + $02c0)                            ; 2e02: c0          .   :1d02[1]
    equb <(enemy_explosion_tables + $0300)                            ; 2e03: 00          .   :1d03[1]
    equb <(enemy_explosion_tables + $0340)                            ; 2e04: 40          @   :1d04[1]
    equb <(enemy_explosion_tables + $0380)                            ; 2e05: 80          .   :1d05[1]
    equb <(enemy_explosion_tables + $03c0)                            ; 2e06: c0          .   :1d06[1]
.unused26
    equb &53                                                          ; 2e07: 53          S   :1d07[1]
.enemy_explosion_address_high_table
    equb >(enemy_explosion_tables + $0000)                            ; 2e08: 4d          M   :1d08[1]
    equb >(enemy_explosion_tables + $0040)                            ; 2e09: 4d          M   :1d09[1]
    equb >(enemy_explosion_tables + $0080)                            ; 2e0a: 4d          M   :1d0a[1]
    equb >(enemy_explosion_tables + $00c0)                            ; 2e0b: 4d          M   :1d0b[1]
    equb >(enemy_explosion_tables + $0100)                            ; 2e0c: 4e          N   :1d0c[1]
    equb >(enemy_explosion_tables + $0140)                            ; 2e0d: 4e          N   :1d0d[1]
    equb >(enemy_explosion_tables + $0180)                            ; 2e0e: 4e          N   :1d0e[1]
    equb >(enemy_explosion_tables + $01c0)                            ; 2e0f: 4e          N   :1d0f[1]
    equb >(enemy_explosion_tables + $0200)                            ; 2e10: 4f          O   :1d10[1]
    equb >(enemy_explosion_tables + $0240)                            ; 2e11: 4f          O   :1d11[1]
    equb >(enemy_explosion_tables + $0280)                            ; 2e12: 4f          O   :1d12[1]
    equb >(enemy_explosion_tables + $02c0)                            ; 2e13: 4f          O   :1d13[1]
    equb >(enemy_explosion_tables + $0300)                            ; 2e14: 50          P   :1d14[1]
    equb >(enemy_explosion_tables + $0340)                            ; 2e15: 50          P   :1d15[1]
    equb >(enemy_explosion_tables + $0380)                            ; 2e16: 50          P   :1d16[1]
    equb >(enemy_explosion_tables + $03c0)                            ; 2e17: 50          P   :1d17[1]
.enemy_explosion_piece_ageing_table
    equb &0f, &11, &13, &15                                           ; 2e18: 0f 11 13... ... :1d18[1]
.starship_explosion_piece_ageing_table
    equb 5, 6, 7, 8, 9, &0a, &0b, &0c                                 ; 2e1c: 05 06 07... ... :1d1c[1]

.plot_stars
    lda star_table_address_low                                        ; 2e24: ad 49 0e    .I. :1d24[1]
    sta temp0_low                                                     ; 2e27: 85 80       ..  :1d27[1]
    lda star_table_address_high                                       ; 2e29: ad 4a 0e    .J. :1d29[1]
    sta temp0_high                                                    ; 2e2c: 85 81       ..  :1d2c[1]
    lda maximum_number_of_stars                                       ; 2e2e: ad 50 0e    .P. :1d2e[1]
    sta enemy_ships_still_to_consider                                 ; 2e31: 8d 54 0e    .T. :1d31[1]
.plot_stars_loop
    ldy #1                                                            ; 2e34: a0 01       ..  :1d34[1]
    lda (temp0_low),y                                                 ; 2e36: b1 80       ..  :1d36[1]
    sta x_pixels                                                      ; 2e38: 85 7a       .z  :1d38[1]
    ldy #3                                                            ; 2e3a: a0 03       ..  :1d3a[1]
    lda (temp0_low),y                                                 ; 2e3c: b1 80       ..  :1d3c[1]
    sta y_pixels                                                      ; 2e3e: 85 7b       .{  :1d3e[1]
    jsr eor_pixel                                                     ; 2e40: 20 64 0f     d. :1d40[1]
    lda temp0_low                                                     ; 2e43: a5 80       ..  :1d43[1]
    clc                                                               ; 2e45: 18          .   :1d45[1]
    adc #4                                                            ; 2e46: 69 04       i.  :1d46[1]
    sta temp0_low                                                     ; 2e48: 85 80       ..  :1d48[1]
    bcc skip17                                                        ; 2e4a: 90 02       ..  :1d4a[1]
    inc temp0_high                                                    ; 2e4c: e6 81       ..  :1d4c[1]
.skip17
    dec enemy_ships_still_to_consider                                 ; 2e4e: ce 54 0e    .T. :1d4e[1]
    bne plot_stars_loop                                               ; 2e51: d0 e1       ..  :1d51[1]
    rts                                                               ; 2e53: 60          `   :1d53[1]

.unused27
    equb &ea, &ea, &ea, &ea                                           ; 2e54: ea ea ea... ... :1d54[1]

.initialise_stars_at_random_positions
    lda star_table_address_low                                        ; 2e58: ad 49 0e    .I. :1d58[1]
    sta temp0_low                                                     ; 2e5b: 85 80       ..  :1d5b[1]
    lda star_table_address_high                                       ; 2e5d: ad 4a 0e    .J. :1d5d[1]
    sta temp0_high                                                    ; 2e60: 85 81       ..  :1d60[1]
    lda maximum_number_of_stars                                       ; 2e62: ad 50 0e    .P. :1d62[1]
    sta enemy_ships_still_to_consider                                 ; 2e65: 8d 54 0e    .T. :1d65[1]
.initialise_stars_at_random_positions_loop
    jsr random_number_generator                                       ; 2e68: 20 13 21     .! :1d68[1]
    ldy #1                                                            ; 2e6b: a0 01       ..  :1d6b[1]
    lda rnd_1                                                         ; 2e6d: ad d1 1c    ... :1d6d[1]
    sta (temp0_low),y                                                 ; 2e70: 91 80       ..  :1d70[1]
    ldy #3                                                            ; 2e72: a0 03       ..  :1d72[1]
    lda rnd_2                                                         ; 2e74: ad d2 1c    ... :1d74[1]
    sta (temp0_low),y                                                 ; 2e77: 91 80       ..  :1d77[1]
    lda temp0_low                                                     ; 2e79: a5 80       ..  :1d79[1]
    clc                                                               ; 2e7b: 18          .   :1d7b[1]
    adc #4                                                            ; 2e7c: 69 04       i.  :1d7c[1]
    sta temp0_low                                                     ; 2e7e: 85 80       ..  :1d7e[1]
    bcc skip18                                                        ; 2e80: 90 02       ..  :1d80[1]
    inc temp0_high                                                    ; 2e82: e6 81       ..  :1d82[1]
.skip18
    dec enemy_ships_still_to_consider                                 ; 2e84: ce 54 0e    .T. :1d84[1]
    bne initialise_stars_at_random_positions_loop                     ; 2e87: d0 df       ..  :1d87[1]
    rts                                                               ; 2e89: 60          `   :1d89[1]

.unused28
    equb &ea, &ea, &ea, &ea                                           ; 2e8a: ea ea ea... ... :1d8a[1]

.plot_starship
    ldx #&0f                                                          ; 2e8e: a2 0f       ..  :1d8e[1]
.plot_starship_top_loop
    lda user_defined_characters,x                                     ; 2e90: bd 00 0c    ... :1d90[1]
    eor starship_top_screen_address,x                                 ; 2e93: 5d 38 6b    ]8k :1d93[1]
    sta starship_top_screen_address,x                                 ; 2e96: 9d 38 6b    .8k :1d96[1]
    dex                                                               ; 2e99: ca          .   :1d99[1]
    bpl plot_starship_top_loop                                        ; 2e9a: 10 f4       ..  :1d9a[1]
    ldx #&0f                                                          ; 2e9c: a2 0f       ..  :1d9c[1]
.plot_starship_bottom_loop
    lda user_defined_characters + 16,x                                ; 2e9e: bd 10 0c    ... :1d9e[1]
    eor starship_bottom_screen_address,x                              ; 2ea1: 5d 78 6c    ]xl :1da1[1]
    sta starship_bottom_screen_address,x                              ; 2ea4: 9d 78 6c    .xl :1da4[1]
    dex                                                               ; 2ea7: ca          .   :1da7[1]
    bpl plot_starship_bottom_loop                                     ; 2ea8: 10 f4       ..  :1da8[1]
    rts                                                               ; 2eaa: 60          `   :1daa[1]

.unused29
    equb &ea, &ea, &ea, &ea                                           ; 2eab: ea ea ea... ... :1dab[1]

.explode_starship
    lda starship_explosion_address_low                                ; 2eaf: ad ca 1c    ... :1daf[1]
    sta temp0_low                                                     ; 2eb2: 85 80       ..  :1db2[1]
    lda starship_explosion_address_high                               ; 2eb4: ad cb 1c    ... :1db4[1]
    sta temp0_high                                                    ; 2eb7: 85 81       ..  :1db7[1]
    lda starship_explosion_size                                       ; 2eb9: ad cc 1c    ... :1db9[1]
    sta enemy_ships_still_to_consider                                 ; 2ebc: 8d 54 0e    .T. :1dbc[1]
.plot_starship_explosion_loop
    jsr plot_starship_explosion_piece                                 ; 2ebf: 20 3d 1e     =. :1dbf[1]
    lda temp0_low                                                     ; 2ec2: a5 80       ..  :1dc2[1]
    clc                                                               ; 2ec4: 18          .   :1dc4[1]
    adc #3                                                            ; 2ec5: 69 03       i.  :1dc5[1]
    sta temp0_low                                                     ; 2ec7: 85 80       ..  :1dc7[1]
    bcc skip19                                                        ; 2ec9: 90 02       ..  :1dc9[1]
    inc temp0_high                                                    ; 2ecb: e6 81       ..  :1dcb[1]
.skip19
    dec enemy_ships_still_to_consider                                 ; 2ecd: ce 54 0e    .T. :1dcd[1]
    bne plot_starship_explosion_loop                                  ; 2ed0: d0 ed       ..  :1dd0[1]
    inc starship_has_exploded                                         ; 2ed2: ee c9 1c    ... :1dd2[1]
    lda rnd_1                                                         ; 2ed5: ad d1 1c    ... :1dd5[1]
    ora #&10                                                          ; 2ed8: 09 10       ..  :1dd8[1]
    sta rnd_1                                                         ; 2eda: 8d d1 1c    ... :1dda[1]
    jsr turn_scanner_to_static                                        ; 2edd: 20 7c 31     |1 :1ddd[1]
    jmp plot_starship                                                 ; 2ee0: 4c 8e 1d    L.. :1de0[1]

.unused30
    equb &ea, &ea, &ea, &ea, &ea                                      ; 2ee3: ea ea ea... ... :1de3[1]

.plot_starship_explosion
    dec starship_explosion_countdown                                  ; 2ee8: ce ce 1c    ... :1de8[1]
    bne starship_explosion_continuing                                 ; 2eeb: d0 03       ..  :1deb[1]
    jmp end_of_command                                                ; 2eed: 4c 07 46    L.F :1ded[1]

.starship_explosion_continuing
    lda starship_explosion_address_low                                ; 2ef0: ad ca 1c    ... :1df0[1]
    sta temp0_low                                                     ; 2ef3: 85 80       ..  :1df3[1]
    lda starship_explosion_address_high                               ; 2ef5: ad cb 1c    ... :1df5[1]
    sta temp0_high                                                    ; 2ef8: 85 81       ..  :1df8[1]
    lda starship_explosion_size                                       ; 2efa: ad cc 1c    ... :1dfa[1]
    sta enemy_ships_still_to_consider                                 ; 2efd: 8d 54 0e    .T. :1dfd[1]
.loop6
    ldy #0                                                            ; 2f00: a0 00       ..  :1e00[1]
    lda (temp0_low),y                                                 ; 2f02: b1 80       ..  :1e02[1]
    beq move_to_next_starship_explosion_piece                         ; 2f04: f0 25       .%  :1e04[1]
    jsr plot_starship_explosion_piece                                 ; 2f06: 20 3d 1e     =. :1e06[1]
    ldy #1                                                            ; 2f09: a0 01       ..  :1e09[1]
    lda (temp0_low),y                                                 ; 2f0b: b1 80       ..  :1e0b[1]
    and #7                                                            ; 2f0d: 29 07       ).  :1e0d[1]
    tax                                                               ; 2f0f: aa          .   :1e0f[1]
    lda starship_explosion_piece_ageing_table,x                       ; 2f10: bd 1c 1d    ... :1e10[1]
    dey                                                               ; 2f13: 88          .   :1e13[1]   ; Y=&00
    clc                                                               ; 2f14: 18          .   :1e14[1]
    adc (temp0_low),y                                                 ; 2f15: 71 80       q.  :1e15[1]
    bcc skip20                                                        ; 2f17: 90 05       ..  :1e17[1]
    tya                                                               ; 2f19: 98          .   :1e19[1]   ; A=&00
    sta (temp0_low),y                                                 ; 2f1a: 91 80       ..  :1e1a[1]
    beq move_to_next_starship_explosion_piece                         ; 2f1c: f0 0d       ..  :1e1c[1]   ; ALWAYS branch

.skip20
    sta (temp0_low),y                                                 ; 2f1e: 91 80       ..  :1e1e[1]
    txa                                                               ; 2f20: 8a          .   :1e20[1]
    ldy #2                                                            ; 2f21: a0 02       ..  :1e21[1]
    sec                                                               ; 2f23: 38          8   :1e23[1]
    adc (temp0_low),y                                                 ; 2f24: 71 80       q.  :1e24[1]
    sta (temp0_low),y                                                 ; 2f26: 91 80       ..  :1e26[1]
    jsr plot_starship_explosion_piece                                 ; 2f28: 20 3d 1e     =. :1e28[1]
.move_to_next_starship_explosion_piece
    lda temp0_low                                                     ; 2f2b: a5 80       ..  :1e2b[1]
    clc                                                               ; 2f2d: 18          .   :1e2d[1]
    adc #3                                                            ; 2f2e: 69 03       i.  :1e2e[1]
    sta temp0_low                                                     ; 2f30: 85 80       ..  :1e30[1]
    bcc skip21                                                        ; 2f32: 90 02       ..  :1e32[1]
    inc temp0_high                                                    ; 2f34: e6 81       ..  :1e34[1]
.skip21
    dec enemy_ships_still_to_consider                                 ; 2f36: ce 54 0e    .T. :1e36[1]
    bne loop6                                                         ; 2f39: d0 c5       ..  :1e39[1]
    rts                                                               ; 2f3b: 60          `   :1e3b[1]

.unused31
    equb &ea                                                          ; 2f3c: ea          .   :1e3c[1]

.plot_starship_explosion_piece
    ldy #0                                                            ; 2f3d: a0 00       ..  :1e3d[1]
    lda (temp0_low),y                                                 ; 2f3f: b1 80       ..  :1e3f[1]
    and #&c0                                                          ; 2f41: 29 c0       ).  :1e41[1]
    sta temp8                                                         ; 2f43: 85 75       .u  :1e43[1]
    ldy #2                                                            ; 2f45: a0 02       ..  :1e45[1]
    lda (temp0_low),y                                                 ; 2f47: b1 80       ..  :1e47[1]
    sta temp11                                                        ; 2f49: 85 7c       .|  :1e49[1]
    lda enemy_ships_still_to_consider                                 ; 2f4b: ad 54 0e    .T. :1e4b[1]
    and #&1f                                                          ; 2f4e: 29 1f       ).  :1e4e[1]
    tax                                                               ; 2f50: aa          .   :1e50[1]
    lda sine_table,x                                                  ; 2f51: bd 58 0e    .X. :1e51[1]
    bpl skip_inversion_sine                                           ; 2f54: 10 05       ..  :1e54[1]
    eor #&1f                                                          ; 2f56: 49 1f       I.  :1e56[1]
    clc                                                               ; 2f58: 18          .   :1e58[1]
    adc #1                                                            ; 2f59: 69 01       i.  :1e59[1]
.skip_inversion_sine
    sta x_pixels                                                      ; 2f5b: 85 7a       .z  :1e5b[1]
    lda cosine_table,x                                                ; 2f5d: bd 78 0e    .x. :1e5d[1]
    bpl skip_inversion_cosine                                         ; 2f60: 10 05       ..  :1e60[1]
    eor #&1f                                                          ; 2f62: 49 1f       I.  :1e62[1]
    clc                                                               ; 2f64: 18          .   :1e64[1]
    adc #1                                                            ; 2f65: 69 01       i.  :1e65[1]
.skip_inversion_cosine
    sta y_pixels                                                      ; 2f67: 85 7b       .{  :1e67[1]
    ldx #3                                                            ; 2f69: a2 03       ..  :1e69[1]
    lda #0                                                            ; 2f6b: a9 00       ..  :1e6b[1]
.loop_over_bits_of_sine1
    lsr x_pixels                                                      ; 2f6d: 46 7a       Fz  :1e6d[1]
    bcc sine_bit_unset1                                               ; 2f6f: 90 03       ..  :1e6f[1]
    clc                                                               ; 2f71: 18          .   :1e71[1]
    adc temp11                                                        ; 2f72: 65 7c       e|  :1e72[1]
.sine_bit_unset1
    ror a                                                             ; 2f74: 6a          j   :1e74[1]
    dex                                                               ; 2f75: ca          .   :1e75[1]
    bne loop_over_bits_of_sine1                                       ; 2f76: d0 f5       ..  :1e76[1]
    ldx x_pixels                                                      ; 2f78: a6 7a       .z  :1e78[1]
    beq skip_uninversion_sine                                         ; 2f7a: f0 02       ..  :1e7a[1]
    eor #&ff                                                          ; 2f7c: 49 ff       I.  :1e7c[1]
.skip_uninversion_sine
    eor #&80                                                          ; 2f7e: 49 80       I.  :1e7e[1]
    sta x_pixels                                                      ; 2f80: 85 7a       .z  :1e80[1]
    ldx #3                                                            ; 2f82: a2 03       ..  :1e82[1]
    lda #0                                                            ; 2f84: a9 00       ..  :1e84[1]
.loop_over_bits_of_cosine1
    lsr y_pixels                                                      ; 2f86: 46 7b       F{  :1e86[1]
    bcc skip22                                                        ; 2f88: 90 03       ..  :1e88[1]
    clc                                                               ; 2f8a: 18          .   :1e8a[1]
    adc temp11                                                        ; 2f8b: 65 7c       e|  :1e8b[1]
.skip22
    ror a                                                             ; 2f8d: 6a          j   :1e8d[1]
    dex                                                               ; 2f8e: ca          .   :1e8e[1]
    bne loop_over_bits_of_cosine1                                     ; 2f8f: d0 f5       ..  :1e8f[1]
    ldx y_pixels                                                      ; 2f91: a6 7b       .{  :1e91[1]
    beq skip_uninversion_cosine                                       ; 2f93: f0 02       ..  :1e93[1]
    eor #&ff                                                          ; 2f95: 49 ff       I.  :1e95[1]
.skip_uninversion_cosine
    eor #&80                                                          ; 2f97: 49 80       I.  :1e97[1]
    sta y_pixels                                                      ; 2f99: 85 7b       .{  :1e99[1]
    dey                                                               ; 2f9b: 88          .   :1e9b[1]
    lda (temp0_low),y                                                 ; 2f9c: b1 80       ..  :1e9c[1]
    bpl plot_variable_size_fragment                                   ; 2f9e: 10 26       .&  :1e9e[1]
    lda temp8                                                         ; 2fa0: a5 75       .u  :1ea0[1]
    clc                                                               ; 2fa2: 18          .   :1ea2[1]
    rol a                                                             ; 2fa3: 2a          *   :1ea3[1]
    rol a                                                             ; 2fa4: 2a          *   :1ea4[1]
    rol a                                                             ; 2fa5: 2a          *   :1ea5[1]
    sta output_pixels                                                 ; 2fa6: 85 72       .r  :1ea6[1]
    eor #3                                                            ; 2fa8: 49 03       I.  :1ea8[1]
    clc                                                               ; 2faa: 18          .   :1eaa[1]
    adc #1                                                            ; 2fab: 69 01       i.  :1eab[1]
    sec                                                               ; 2fad: 38          8   :1ead[1]
    rol a                                                             ; 2fae: 2a          *   :1eae[1]
    sta segment_length                                                ; 2faf: 85 74       .t  :1eaf[1]
    inc output_pixels                                                 ; 2fb1: e6 72       .r  :1eb1[1]
    iny                                                               ; 2fb3: c8          .   :1eb3[1]
    lda (temp0_low),y                                                 ; 2fb4: b1 80       ..  :1eb4[1]
    and #&1f                                                          ; 2fb6: 29 1f       ).  :1eb6[1]
    sta segment_angle                                                 ; 2fb8: 85 78       .x  :1eb8[1]
    lda x_pixels                                                      ; 2fba: a5 7a       .z  :1eba[1]
    sta temp10                                                        ; 2fbc: 85 77       .w  :1ebc[1]
    lda y_pixels                                                      ; 2fbe: a5 7b       .{  :1ebe[1]
    sta temp9                                                         ; 2fc0: 85 76       .v  :1ec0[1]
    jsr plot_segment                                                  ; 2fc2: 20 e4 18     .. :1ec2[1]
    rts                                                               ; 2fc5: 60          `   :1ec5[1]

.plot_variable_size_fragment
    jsr eor_pixel                                                     ; 2fc6: 20 64 0f     d. :1ec6[1]
    lda temp8                                                         ; 2fc9: a5 75       .u  :1ec9[1]
    cmp #&c0                                                          ; 2fcb: c9 c0       ..  :1ecb[1]
    beq return15                                                      ; 2fcd: f0 2f       ./  :1ecd[1]
    inc x_pixels                                                      ; 2fcf: e6 7a       .z  :1ecf[1]
    jsr eor_pixel                                                     ; 2fd1: 20 64 0f     d. :1ed1[1]
    lda temp8                                                         ; 2fd4: a5 75       .u  :1ed4[1]
    bmi return15                                                      ; 2fd6: 30 26       0&  :1ed6[1]
    inc y_pixels                                                      ; 2fd8: e6 7b       .{  :1ed8[1]
    jsr eor_pixel                                                     ; 2fda: 20 64 0f     d. :1eda[1]
    dec x_pixels                                                      ; 2fdd: c6 7a       .z  :1edd[1]
    jsr eor_pixel                                                     ; 2fdf: 20 64 0f     d. :1edf[1]
    lda temp8                                                         ; 2fe2: a5 75       .u  :1ee2[1]
    bne return15                                                      ; 2fe4: d0 18       ..  :1ee4[1]
    inc y_pixels                                                      ; 2fe6: e6 7b       .{  :1ee6[1]
    jsr eor_pixel                                                     ; 2fe8: 20 64 0f     d. :1ee8[1]
    dec y_pixels                                                      ; 2feb: c6 7b       .{  :1eeb[1]
    dec x_pixels                                                      ; 2fed: c6 7a       .z  :1eed[1]
    jsr eor_pixel                                                     ; 2fef: 20 64 0f     d. :1eef[1]
    dec y_pixels                                                      ; 2ff2: c6 7b       .{  :1ef2[1]
    jsr eor_pixel                                                     ; 2ff4: 20 64 0f     d. :1ef4[1]
    dec y_pixels                                                      ; 2ff7: c6 7b       .{  :1ef7[1]
    inc x_pixels                                                      ; 2ff9: e6 7a       .z  :1ef9[1]
    jsr eor_pixel                                                     ; 2ffb: 20 64 0f     d. :1efb[1]
.return15
    rts                                                               ; 2ffe: 60          `   :1efe[1]

.unused32
    equb &ea                                                          ; 2fff: ea          .   :1eff[1]
    equb &ea, &ea, &ea                                                ; 3000: ea ea ea    ... :1f00[1]

.initialise_starship_explosion_pieces
    lda maximum_starship_explosion_countdown                          ; 3003: ad cd 1c    ... :1f03[1]
    sta starship_explosion_countdown                                  ; 3006: 8d ce 1c    ... :1f06[1]
    lda starship_explosion_address_low                                ; 3009: ad ca 1c    ... :1f09[1]
    sta temp0_low                                                     ; 300c: 85 80       ..  :1f0c[1]
    lda starship_explosion_address_high                               ; 300e: ad cb 1c    ... :1f0e[1]
    sta temp0_high                                                    ; 3011: 85 81       ..  :1f11[1]
    lda starship_explosion_size                                       ; 3013: ad cc 1c    ... :1f13[1]
    sta enemy_ships_still_to_consider                                 ; 3016: 8d 54 0e    .T. :1f16[1]
.initialise_starship_explosion_pieces_loop
    jsr initialise_starship_explosion_piece                           ; 3019: 20 2d 1f     -. :1f19[1]
    lda temp0_low                                                     ; 301c: a5 80       ..  :1f1c[1]
    clc                                                               ; 301e: 18          .   :1f1e[1]
    adc #3                                                            ; 301f: 69 03       i.  :1f1f[1]
    sta temp0_low                                                     ; 3021: 85 80       ..  :1f21[1]
    bcc skip23                                                        ; 3023: 90 02       ..  :1f23[1]
    inc temp0_high                                                    ; 3025: e6 81       ..  :1f25[1]
.skip23
    dec enemy_ships_still_to_consider                                 ; 3027: ce 54 0e    .T. :1f27[1]
    bne initialise_starship_explosion_pieces_loop                     ; 302a: d0 ed       ..  :1f2a[1]
    rts                                                               ; 302c: 60          `   :1f2c[1]

.initialise_starship_explosion_piece
    jsr random_number_generator                                       ; 302d: 20 13 21     .! :1f2d[1]
    ldy #2                                                            ; 3030: a0 02       ..  :1f30[1]
    lda rnd_1                                                         ; 3032: ad d1 1c    ... :1f32[1]
    and #7                                                            ; 3035: 29 07       ).  :1f35[1]
    sta (temp0_low),y                                                 ; 3037: 91 80       ..  :1f37[1]
    dey                                                               ; 3039: 88          .   :1f39[1]   ; Y=&01
    lda rnd_2                                                         ; 303a: ad d2 1c    ... :1f3a[1]
    lsr a                                                             ; 303d: 4a          J   :1f3d[1]
    sta (temp0_low),y                                                 ; 303e: 91 80       ..  :1f3e[1]
    lda rnd_1                                                         ; 3040: ad d1 1c    ... :1f40[1]
    and #&3c                                                          ; 3043: 29 3c       )<  :1f43[1]
    bne not_a_segment                                                 ; 3045: d0 06       ..  :1f45[1]
    lda (temp0_low),y                                                 ; 3047: b1 80       ..  :1f47[1]
    ora #&80                                                          ; 3049: 09 80       ..  :1f49[1]
    sta (temp0_low),y                                                 ; 304b: 91 80       ..  :1f4b[1]
.not_a_segment
    dey                                                               ; 304d: 88          .   :1f4d[1]
    lda rnd_1                                                         ; 304e: ad d1 1c    ... :1f4e[1]
    and #&1f                                                          ; 3051: 29 1f       ).  :1f51[1]
    clc                                                               ; 3053: 18          .   :1f53[1]
    adc #1                                                            ; 3054: 69 01       i.  :1f54[1]
    sta (temp0_low),y                                                 ; 3056: 91 80       ..  :1f56[1]
    rts                                                               ; 3058: 60          `   :1f58[1]

    equb &ea, &ea, &ea, &ea                                           ; 3059: ea ea ea... ... :1f59[1]

.explode_enemy_ship
    lda enemy_ships_previous_on_screen,x                              ; 305d: bd 00 04    ... :1f5d[1]
    bne skip_unplotting                                               ; 3060: d0 03       ..  :1f60[1]
    jsr plot_enemy_ship                                               ; 3062: 20 fc 1b     .. :1f62[1]
.skip_unplotting
    lda enemy_ship_explosion_duration                                 ; 3065: ad 39 0e    .9. :1f65[1]
    sta enemy_ships_flags_or_explosion_timer,x                        ; 3068: 9d 09 04    ... :1f68[1]
    ldy maximum_number_of_enemy_ships                                 ; 306b: ac 4f 0e    .O. :1f6b[1]
    lda #0                                                            ; 306e: a9 00       ..  :1f6e[1]
.find_free_explosion_slot_loop
    cmp unused24,y                                                    ; 3070: d9 e1 1c    ... :1f70[1]
    bcs skip24                                                        ; 3073: b0 03       ..  :1f73[1]
    lda unused24,y                                                    ; 3075: b9 e1 1c    ... :1f75[1]
.skip24
    dey                                                               ; 3078: 88          .   :1f78[1]
    bne find_free_explosion_slot_loop                                 ; 3079: d0 f5       ..  :1f79[1]
    cmp maximum_number_of_explosions                                  ; 307b: cd 35 0e    .5. :1f7b[1]
    beq too_many_explosions                                           ; 307e: f0 03       ..  :1f7e[1]
    clc                                                               ; 3080: 18          .   :1f80[1]
    adc #1                                                            ; 3081: 69 01       i.  :1f81[1]
.too_many_explosions
    ldy enemy_ships_still_to_consider                                 ; 3083: ac 54 0e    .T. :1f83[1]
    sta unused24,y                                                    ; 3086: 99 e1 1c    ... :1f86[1]
    tay                                                               ; 3089: a8          .   :1f89[1]
    lda enemy_explosion_address_low_table - 1,y                       ; 308a: b9 f6 1c    ... :1f8a[1]
    sta temp5                                                         ; 308d: 85 86       ..  :1f8d[1]
    lda unused26,y                                                    ; 308f: b9 07 1d    ... :1f8f[1]
    sta temp6                                                         ; 3092: 85 87       ..  :1f92[1]
    ldy number_of_bytes_per_enemy_explosion                           ; 3094: ac cf 1c    ... :1f94[1]
.loop_c1f97
    jsr random_number_generator                                       ; 3097: 20 13 21     .! :1f97[1]
.enemy_explosion_initialisation_loop
    lda rnd_2                                                         ; 309a: ad d2 1c    ... :1f9a[1]
    and #&3f                                                          ; 309d: 29 3f       )?  :1f9d[1]
    sta (temp5),y                                                     ; 309f: 91 86       ..  :1f9f[1]
    dey                                                               ; 30a1: 88          .   :1fa1[1]
    lda rnd_1                                                         ; 30a2: ad d1 1c    ... :1fa2[1]
    and #&3f                                                          ; 30a5: 29 3f       )?  :1fa5[1]
    clc                                                               ; 30a7: 18          .   :1fa7[1]
    adc #&68                                                          ; 30a8: 69 68       ih  :1fa8[1]
    sta (temp5),y                                                     ; 30aa: 91 86       ..  :1faa[1]
    dey                                                               ; 30ac: 88          .   :1fac[1]
    bpl loop_c1f97                                                    ; 30ad: 10 e8       ..  :1fad[1]
    jmp score_points_for_destroying_enemy_ship                        ; 30af: 4c 86 2d    L.- :1faf[1]

.unused33
    equb &ea, &ea                                                     ; 30b2: ea ea       ..  :1fb2[1]

.update_enemy_explosion_pieces
    lda enemy_ships_flags_or_explosion_timer,x                        ; 30b4: bd 09 04    ... :1fb4[1]
    cmp frame_of_enemy_ship_explosion_after_which_no_collisions       ; 30b7: cd 37 0e    .7. :1fb7[1]
    lda #1                                                            ; 30ba: a9 01       ..  :1fba[1]
    bcs skip25                                                        ; 30bc: b0 02       ..  :1fbc[1]
    lda #0                                                            ; 30be: a9 00       ..  :1fbe[1]
.skip25
    sta create_new_enemy_explosion_piece_after_one_dies               ; 30c0: 8d d0 1c    ... :1fc0[1]
    jsr plot_enemy_ship_or_explosion_segments                         ; 30c3: 20 a4 20     .  :1fc3[1]
    ldy number_of_bytes_per_enemy_explosion                           ; 30c6: ac cf 1c    ... :1fc6[1]
.update_enemy_explosion_pieces_loop
    dey                                                               ; 30c9: 88          .   :1fc9[1]
    lda (temp5),y                                                     ; 30ca: b1 86       ..  :1fca[1]
    beq move_to_next_piece                                            ; 30cc: f0 34       .4  :1fcc[1]
    jsr plot_enemy_explosion_fragment                                 ; 30ce: 20 25 20     %  :1fce[1]
    lda (temp5),y                                                     ; 30d1: b1 86       ..  :1fd1[1]
    and #3                                                            ; 30d3: 29 03       ).  :1fd3[1]
    tax                                                               ; 30d5: aa          .   :1fd5[1]
    lda enemy_explosion_piece_ageing_table,x                          ; 30d6: bd 18 1d    ... :1fd6[1]
    dey                                                               ; 30d9: 88          .   :1fd9[1]
    clc                                                               ; 30da: 18          .   :1fda[1]
    adc (temp5),y                                                     ; 30db: 71 86       q.  :1fdb[1]
    bcc piece_still_active                                            ; 30dd: 90 16       ..  :1fdd[1]
    lda create_new_enemy_explosion_piece_after_one_dies               ; 30df: ad d0 1c    ... :1fdf[1]
    sta (temp5),y                                                     ; 30e2: 91 86       ..  :1fe2[1]
    beq move_to_next_piece                                            ; 30e4: f0 1c       ..  :1fe4[1]
    jsr random_number_generator                                       ; 30e6: 20 13 21     .! :1fe6[1]
    lda rnd_2                                                         ; 30e9: ad d2 1c    ... :1fe9[1]
    lsr a                                                             ; 30ec: 4a          J   :1fec[1]
    and #&3f                                                          ; 30ed: 29 3f       )?  :1fed[1]
    iny                                                               ; 30ef: c8          .   :1fef[1]
    sta (temp5),y                                                     ; 30f0: 91 86       ..  :1ff0[1]
    jmp move_to_next_piece_after_dey                                  ; 30f2: 4c 01 20    L.  :1ff2[1]

.piece_still_active
    sta (temp5),y                                                     ; 30f5: 91 86       ..  :1ff5[1]
    iny                                                               ; 30f7: c8          .   :1ff7[1]
    inx                                                               ; 30f8: e8          .   :1ff8[1]
    txa                                                               ; 30f9: 8a          .   :1ff9[1]
    asl a                                                             ; 30fa: 0a          .   :1ffa[1]
    asl a                                                             ; 30fb: 0a          .   :1ffb[1]
    clc                                                               ; 30fc: 18          .   :1ffc[1]
    adc (temp5),y                                                     ; 30fd: 71 86       q.  :1ffd[1]
    sta (temp5),y                                                     ; 30ff: 91 86       ..  :1fff[1]
.move_to_next_piece_after_dey
    dey                                                               ; 3101: 88          .   :2001[1]
.move_to_next_piece
    dey                                                               ; 3102: 88          .   :2002[1]
    bpl update_enemy_explosion_pieces_loop                            ; 3103: 10 c4       ..  :2003[1]
    ldx temp7                                                         ; 3105: a6 88       ..  :2005[1]
    rts                                                               ; 3107: 60          `   :2007[1]

; ----------------------------------------------------------------------------------
; [only 4 bytes, but should be eight bytes]
; ----------------------------------------------------------------------------------
.sound_0
.unused34
    equb &ea, &ea, &ea, &ea                                           ; 3108: ea ea ea... ... :2008[1]   ; Channel (2 bytes); Amplitude (2 bytes)

.plot_enemy_ship_explosion
    jsr plot_enemy_ship_or_explosion_segments                         ; 310c: 20 a4 20     .  :200c[1]   ; Pitch (2 bytes); Duration (2 bytes)
    ldy number_of_bytes_per_enemy_explosion                           ; 310f: ac cf 1c    ... :200f[1]
.plot_enemy_ship_explosion_loop
    dey                                                               ; 3112: 88          .   :2012[1]
    lda (temp5),y                                                     ; 3113: b1 86       ..  :2013[1]
    beq move_to_next_explosion_piece                                  ; 3115: f0 04       ..  :2015[1]
    jsr plot_enemy_explosion_fragment                                 ; 3117: 20 25 20     %  :2017[1]
    dey                                                               ; 311a: 88          .   :201a[1]
.move_to_next_explosion_piece
    dey                                                               ; 311b: 88          .   :201b[1]
    bpl plot_enemy_ship_explosion_loop                                ; 311c: 10 f4       ..  :201c[1]
    ldx temp7                                                         ; 311e: a6 88       ..  :201e[1]
    rts                                                               ; 3120: 60          `   :2020[1]

.unused35
    equb &ea, &ea, &ea, &ea                                           ; 3121: ea ea ea... ... :2021[1]

.plot_enemy_explosion_fragment
    lda (temp5),y                                                     ; 3125: b1 86       ..  :2025[1]
    and #&c0                                                          ; 3127: 29 c0       ).  :2027[1]
    sta segment_angle                                                 ; 3129: 85 78       .x  :2029[1]
    iny                                                               ; 312b: c8          .   :202b[1]
    lda (temp5),y                                                     ; 312c: b1 86       ..  :202c[1]
    lsr a                                                             ; 312e: 4a          J   :202e[1]
    lsr a                                                             ; 312f: 4a          J   :202f[1]
    sta temp11                                                        ; 3130: 85 7c       .|  :2030[1]
    tya                                                               ; 3132: 98          .   :2032[1]
    lsr a                                                             ; 3133: 4a          J   :2033[1]
    tax                                                               ; 3134: aa          .   :2034[1]
    lda sine_table,x                                                  ; 3135: bd 58 0e    .X. :2035[1]
    bpl skip_inversion_sine1                                          ; 3138: 10 05       ..  :2038[1]
    eor #&1f                                                          ; 313a: 49 1f       I.  :203a[1]
    clc                                                               ; 313c: 18          .   :203c[1]
    adc #1                                                            ; 313d: 69 01       i.  :203d[1]
.skip_inversion_sine1
    sta x_pixels                                                      ; 313f: 85 7a       .z  :203f[1]
    lda cosine_table,x                                                ; 3141: bd 78 0e    .x. :2041[1]
    bpl skip_inversion_cosine1                                        ; 3144: 10 05       ..  :2044[1]
    eor #&1f                                                          ; 3146: 49 1f       I.  :2046[1]
    clc                                                               ; 3148: 18          .   :2048[1]
    adc #1                                                            ; 3149: 69 01       i.  :2049[1]
.skip_inversion_cosine1
    sta y_pixels                                                      ; 314b: 85 7b       .{  :204b[1]
    ldx #3                                                            ; 314d: a2 03       ..  :204d[1]
    lda #0                                                            ; 314f: a9 00       ..  :204f[1]
.loop_over_bits_of_sine2
    lsr x_pixels                                                      ; 3151: 46 7a       Fz  :2051[1]
    bcc sine_bit_unset2                                               ; 3153: 90 03       ..  :2053[1]
    clc                                                               ; 3155: 18          .   :2055[1]
    adc temp11                                                        ; 3156: 65 7c       e|  :2056[1]
.sine_bit_unset2
    ror a                                                             ; 3158: 6a          j   :2058[1]
    dex                                                               ; 3159: ca          .   :2059[1]
    bne loop_over_bits_of_sine2                                       ; 315a: d0 f5       ..  :205a[1]
    ldx x_pixels                                                      ; 315c: a6 7a       .z  :205c[1]
    beq skip_uninversion_sine1                                        ; 315e: f0 02       ..  :205e[1]
    eor #&ff                                                          ; 3160: 49 ff       I.  :2060[1]
.skip_uninversion_sine1
    clc                                                               ; 3162: 18          .   :2062[1]
    adc temp10                                                        ; 3163: 65 77       ew  :2063[1]
    sta x_pixels                                                      ; 3165: 85 7a       .z  :2065[1]
    ldx #3                                                            ; 3167: a2 03       ..  :2067[1]
    lda #0                                                            ; 3169: a9 00       ..  :2069[1]
.loop_over_bits_of_cosine2
    lsr y_pixels                                                      ; 316b: 46 7b       F{  :206b[1]
    bcc cosine_bit_unset1                                             ; 316d: 90 03       ..  :206d[1]
    clc                                                               ; 316f: 18          .   :206f[1]
    adc temp11                                                        ; 3170: 65 7c       e|  :2070[1]
.cosine_bit_unset1
    ror a                                                             ; 3172: 6a          j   :2072[1]
    dex                                                               ; 3173: ca          .   :2073[1]
    bne loop_over_bits_of_cosine2                                     ; 3174: d0 f5       ..  :2074[1]
    ldx y_pixels                                                      ; 3176: a6 7b       .{  :2076[1]
    beq skip_uninversion_cosine1                                      ; 3178: f0 02       ..  :2078[1]
    eor #&ff                                                          ; 317a: 49 ff       I.  :207a[1]
.skip_uninversion_cosine1
    clc                                                               ; 317c: 18          .   :207c[1]
    adc temp9                                                         ; 317d: 65 76       ev  :207d[1]
    sta y_pixels                                                      ; 317f: 85 7b       .{  :207f[1]
    sty temp11                                                        ; 3181: 84 7c       .|  :2081[1]
    jsr eor_pixel_within_box_around_origin                            ; 3183: 20 4a 0f     J. :2083[1]
    lda segment_angle                                                 ; 3186: a5 78       .x  :2086[1]
    bmi leave_after_restoring_y                                       ; 3188: 30 13       0.  :2088[1]
    inc x_pixels                                                      ; 318a: e6 7a       .z  :208a[1]
    jsr eor_pixel_within_box_around_origin                            ; 318c: 20 4a 0f     J. :208c[1]
    lda segment_angle                                                 ; 318f: a5 78       .x  :208f[1]
    bne leave_after_restoring_y                                       ; 3191: d0 0a       ..  :2091[1]
    inc y_pixels                                                      ; 3193: e6 7b       .{  :2093[1]
    jsr eor_pixel_within_box_around_origin                            ; 3195: 20 4a 0f     J. :2095[1]
    dec x_pixels                                                      ; 3198: c6 7a       .z  :2098[1]
    jsr eor_pixel_within_box_around_origin                            ; 319a: 20 4a 0f     J. :209a[1]
.leave_after_restoring_y
    ldy temp11                                                        ; 319d: a4 7c       .|  :209d[1]
    rts                                                               ; 319f: 60          `   :209f[1]

.unused36
    equb &ea, &ea, &ea, &ea                                           ; 31a0: ea ea ea... ... :20a0[1]

.plot_enemy_ship_or_explosion_segments
    stx temp7                                                         ; 31a4: 86 88       ..  :20a4[1]
    lda enemy_ships_previous_x_pixels,x                               ; 31a6: bd 02 04    ... :20a6[1]
    sta temp10                                                        ; 31a9: 85 77       .w  :20a9[1]
    lda enemy_ships_previous_x_pixels1,x                              ; 31ab: bd 05 04    ... :20ab[1]
    sta temp9                                                         ; 31ae: 85 76       .v  :20ae[1]
    lda enemy_ships_flags_or_explosion_timer,x                        ; 31b0: bd 09 04    ... :20b0[1]
    cmp frame_of_enemy_ship_explosion_after_which_no_collisions       ; 31b3: cd 37 0e    .7. :20b3[1]
    bcc return16                                                      ; 31b6: 90 09       ..  :20b6[1]
    cmp frame_of_enemy_ship_explosion_after_which_no_segments_are_plotted; 31b8: cd 38 0e    .8. :20b8[1]
    bcc plot_enemy_explosion_segments                                 ; 31bb: 90 08       ..  :20bb[1]
    jsr plot_enemy_ship                                               ; 31bd: 20 fc 1b     .. :20bd[1]
    rts                                                               ; 31c0: 60          `   :20c0[1]

.return16
    rts                                                               ; 31c1: 60          `   :20c1[1]

.unused37
    equb &ea, &ea, &ea                                                ; 31c2: ea ea ea    ... :20c2[1]

.plot_enemy_explosion_segments
    and #&1f                                                          ; 31c5: 29 1f       ).  :20c5[1]
    sta segment_angle                                                 ; 31c7: 85 78       .x  :20c7[1]
    lda temp10                                                        ; 31c9: a5 77       .w  :20c9[1]
    sta x_pixels                                                      ; 31cb: 85 7a       .z  :20cb[1]
    lda temp9                                                         ; 31cd: a5 76       .v  :20cd[1]
    sta y_pixels                                                      ; 31cf: 85 7b       .{  :20cf[1]
    lda #&0a                                                          ; 31d1: a9 0a       ..  :20d1[1]
    sta segment_length                                                ; 31d3: 85 74       .t  :20d3[1]
    lda #1                                                            ; 31d5: a9 01       ..  :20d5[1]
    sta output_pixels                                                 ; 31d7: 85 72       .r  :20d7[1]
    jsr plot_segment                                                  ; 31d9: 20 e4 18     .. :20d9[1]
    ldx temp7                                                         ; 31dc: a6 88       ..  :20dc[1]
    lda enemy_ships_flags_or_explosion_timer,x                        ; 31de: bd 09 04    ... :20de[1]
    eor #&1f                                                          ; 31e1: 49 1f       I.  :20e1[1]
    and #&1f                                                          ; 31e3: 29 1f       ).  :20e3[1]
    sta segment_angle                                                 ; 31e5: 85 78       .x  :20e5[1]
    lda #7                                                            ; 31e7: a9 07       ..  :20e7[1]
    sta segment_length                                                ; 31e9: 85 74       .t  :20e9[1]
    inc output_pixels                                                 ; 31eb: e6 72       .r  :20eb[1]
    jsr plot_segment                                                  ; 31ed: 20 e4 18     .. :20ed[1]
    ldx temp7                                                         ; 31f0: a6 88       ..  :20f0[1]
    lda temp10                                                        ; 31f2: a5 77       .w  :20f2[1]
    sta x_pixels                                                      ; 31f4: 85 7a       .z  :20f4[1]
    lda temp9                                                         ; 31f6: a5 76       .v  :20f6[1]
    sta y_pixels                                                      ; 31f8: 85 7b       .{  :20f8[1]
    lda enemy_ships_flags_or_explosion_timer,x                        ; 31fa: bd 09 04    ... :20fa[1]
    eor #&0f                                                          ; 31fd: 49 0f       I.  :20fd[1]
    and #&1f                                                          ; 31ff: 29 1f       ).  :20ff[1]
    sta segment_angle                                                 ; 3201: 85 78       .x  :2101[1]
    lda #6                                                            ; 3203: a9 06       ..  :2103[1]
    sta segment_length                                                ; 3205: 85 74       .t  :2105[1]
    lda #&ff                                                          ; 3207: a9 ff       ..  :2107[1]
    sta output_pixels                                                 ; 3209: 85 72       .r  :2109[1]
    jsr plot_segment                                                  ; 320b: 20 e4 18     .. :210b[1]
    rts                                                               ; 320e: 60          `   :210e[1]

.unused38
    equb &ea, &ea, &ea, &ea                                           ; 320f: ea ea ea... ... :210f[1]

.random_number_generator
    lda rnd_1                                                         ; 3213: ad d1 1c    ... :2113[1]
    sta y_pixels                                                      ; 3216: 85 7b       .{  :2116[1]
    lda rnd_2                                                         ; 3218: ad d2 1c    ... :2118[1]
    sta x_pixels                                                      ; 321b: 85 7a       .z  :211b[1]
    lda #8                                                            ; 321d: a9 08       ..  :211d[1]
    sta temp11                                                        ; 321f: 85 7c       .|  :211f[1]
    lda #&d5                                                          ; 3221: a9 d5       ..  :2121[1]
.random_number_generator_loop
.random_number_generator_loop1
    lsr x_pixels                                                      ; 3223: 46 7a       Fz  :2123[1]
    ror y_pixels                                                      ; 3225: 66 7b       f{  :2125[1]
    bcc lowest_bit_unset                                              ; 3227: 90 03       ..  :2127[1]
    clc                                                               ; 3229: 18          .   :2129[1]
    adc #&25                                                          ; 322a: 69 25       i%  :212a[1]
.lowest_bit_unset
    ror a                                                             ; 322c: 6a          j   :212c[1]
    ror temp8                                                         ; 322d: 66 75       fu  :212d[1]
    dec temp11                                                        ; 322f: c6 7c       .|  :212f[1]
    bne random_number_generator_loop                                  ; 3231: d0 f0       ..  :2131[1]
    clc                                                               ; 3233: 18          .   :2133[1]
    adc rnd_1                                                         ; 3234: 6d d1 1c    m.. :2134[1]
    sta rnd_2                                                         ; 3237: 8d d2 1c    ... :2137[1]
    lda temp8                                                         ; 323a: a5 75       .u  :213a[1]
    sta rnd_1                                                         ; 323c: 8d d1 1c    ... :213c[1]
    rts                                                               ; 323f: 60          `   :213f[1]

.unused39
    equb &ea, &ea, &ea, &ea, &ea, &ea                                 ; 3240: ea ea ea... ... :2140[1]
.game_key_table
    equb &9e                                                          ; 3246: 9e          .   :2146[1]
    equb &bd                                                          ; 3247: bd          .   :2147[1]
    equb &9a                                                          ; 3248: 9a          .   :2148[1]
    equb &99                                                          ; 3249: 99          .   :2149[1]
    equb &aa                                                          ; 324a: aa          .   :214a[1]
    equb &ac                                                          ; 324b: ac          .   :214b[1]
    equb &bc                                                          ; 324c: bc          .   :214c[1]
    equb &df                                                          ; 324d: df          .   :214d[1]
    equb &8e                                                          ; 324e: 8e          .   :214e[1]
    equb &ce                                                          ; 324f: ce          .   :214f[1]
    equb &ee                                                          ; 3250: ee          .   :2150[1]
    equb &9c                                                          ; 3251: 9c          .   :2151[1]
    equb &9b                                                          ; 3252: 9b          .   :2152[1]
    equb &ad                                                          ; 3253: ad          .   :2153[1]
    equb &96                                                          ; 3254: 96          .   :2154[1]
.unused40
    equb &ff, &ff, &ff, &ff, &96                                      ; 3255: ff ff ff... ... :2155[1]
.screen_border_string
    equb 0,   0, 3, &ff, 5, &19                                       ; 325a: 00 00 03... ... :215a[1]
    equb 3, &ff, 3, &ff, 5, &19                                       ; 3260: 03 ff 03... ... :2160[1]
    equb 3, &ff, 0,   0, 5, &19                                       ; 3266: 03 ff 00... ... :2166[1]
    equb 0,   0, 0,   0, 5, &19                                       ; 326c: 00 00 00... ... :216c[1]
    equb 0,   0, 4, &ff, 5, &19                                       ; 3272: 00 00 04... ... :2172[1]
    equb 2, &fc, 4, &ff, 5, &19                                       ; 3278: 02 fc 04... ... :2178[1]
    equb 2, &fc, 4,   0, 4, &19                                       ; 327e: 02 fc 04... ... :217e[1]
.envelope1
    equb 1, 0, &f8, &fa, &0f, 4, &0a, 8, &7f, &fe, &fc, &ff, &7e, &64 ; 3284: 01 00 f8... ... :2184[1]   ; Envelope Number (1-16) and rest of definition (14 bytes)
.envelope2
    equb 2, 0, &f8, &fa, &fe, 4, &0a, 8, &7f, &fe, &ff, &ff, &64, &50 ; 3292: 02 00 f8... ... :2192[1]   ; Envelope Number (1-16) and rest of definition (14 bytes)
.envelope3
    equb 3, &86, &ff, 0, 1, 3, 1, 2, &7f, &ff, &fd, &fd, &7e, &78     ; 32a0: 03 86 ff... ... :21a0[1]   ; Envelope Number (1-16) and rest of definition (14 bytes)
.envelope4
    equb 4, 0, &10, &f0, &10, 4, 8, 4, &7f, &ff, &ff, &ff, &7e, &64   ; 32ae: 04 00 10... ... :21ae[1]   ; Envelope Number (1-16) and rest of definition (14 bytes)
.unused41
    equb 1, 2, 3, 4, 5, 6, 7, 8, 9, &0a, &0b, &0c                     ; 32bc: 01 02 03... ... :21bc[1]
; ----------------------------------------------------------------------------------
; Exploding starship 1
; ----------------------------------------------------------------------------------
.sound_1
    equb &11, 0, 0, 0                                                 ; 32c8: 11 00 00... ... :21c8[1]   ; Channel (2 bytes); Amplitude (2 bytes)
.sound_1_pitch
    equb 0, 0, 8, 0                                                   ; 32cc: 00 00 08... ... :21cc[1]   ; Pitch (2 bytes); Duration (2 bytes)
; ----------------------------------------------------------------------------------
; Exploding starship 2
; ----------------------------------------------------------------------------------
.sound_2
    equb &10, 0                                                       ; 32d0: 10 00       ..  :21d0[1]   ; Channel (2 bytes)
.sound_1_volume_low
    equb 0                                                            ; 32d2: 00          .   :21d2[1]   ; Amplitude (2 bytes)
.sound_1_volume_high
    equb 0, 7, 0, 8, 0                                                ; 32d3: 00 07 00... ... :21d3[1]   ; Pitch (2 bytes); Duration (2 bytes)
; ----------------------------------------------------------------------------------
; Starship fired torpedo
; ----------------------------------------------------------------------------------
.sound_3
    equb &13, 0, 1, 0, &80, 0, 4, 0                                   ; 32d8: 13 00 01... ... :21d8[1]   ; Channel (2 bytes); Amplitude (2 bytes); Pitch (2 bytes); Duration (2 bytes)
; ----------------------------------------------------------------------------------
; Enemy ship fired torpedo
; ----------------------------------------------------------------------------------
.sound_4
    equb &12, 0, 2, 0, &c0, 0, &1f, 0                                 ; 32e0: 12 00 02... ... :21e0[1]
; ----------------------------------------------------------------------------------
; Enemy ship hit by torpedo
; ----------------------------------------------------------------------------------
.sound_5
    equb &12, 0, 4, 0, &40, 0, 8, 0                                   ; 32e8: 12 00 04... ... :21e8[1]
; ----------------------------------------------------------------------------------
; Starship hit by torpedo
; ----------------------------------------------------------------------------------
.sound_6
    equb &12, 0, 4, 0, &be, 0, 8, 0                                   ; 32f0: 12 00 04... ... :21f0[1]
; ----------------------------------------------------------------------------------
; Enemy ships collided with each other
; ----------------------------------------------------------------------------------
.sound_7
    equb &13, 0, 2, 0, &6c, 0, 8, 0                                   ; 32f8: 13 00 02... ... :21f8[1]   ; Channel (2 bytes); Amplitude (2 bytes); Pitch (2 bytes); Duration (2 bytes)
; ----------------------------------------------------------------------------------
; Escape capsule launched
; ----------------------------------------------------------------------------------
.sound_8
    equb &13, 0                                                       ; 3300: 13 00       ..  :2200[1]   ; Channel (2 bytes)
.sound_8_volume_low
    equb 0                                                            ; 3302: 00          .   :2202[1]   ; Amplitude (2 bytes)
.sound_8_volume_high
    equb 0, &64, 0, 4, 0                                              ; 3303: 00 64 00... .d. :2203[1]   ; Pitch (2 bytes); Duration (2 bytes)
; ----------------------------------------------------------------------------------
; Low energy warning
; ----------------------------------------------------------------------------------
.sound_9
    equb &11, 0, &f1, &ff, &c8, 0, 4, 0                               ; 3308: 11 00 f1... ... :2208[1]   ; Channel (2 bytes); Amplitude (2 bytes); Pitch (2 bytes); Duration (2 bytes)
; ----------------------------------------------------------------------------------
.set_foreground_colour_to_white_string
    equb 0, 0, 0, 7, 1, &13                                           ; 3310: 00 00 00... ... :2210[1]
.set_foreground_colour_to_black_string
    equb 0, 0, 0, 0, 1, &13                                           ; 3316: 00 00 00... ... :2216[1]
.set_background_colour_to_black_string
    equb 0, 0, 0, 0, 0, &13                                           ; 331c: 00 00 00... ... :221c[1]
.energy_string
    equs "YGRENE"                                                     ; 3322: 59 47 52... YGR :2222[1]
    equb &11, &21, &1f                                                ; 3328: 11 21 1f    .!. :2228[1]
.one_two_three_four_string
    equb 4, &34, &0a, 8, &33, &0a, 8, &32, &0a, 8, &31, 5, 1, &ac, 4  ; 332b: 04 34 0a... .4. :222b[1]
    equb 8,   4, &19                                                  ; 333a: 08 04 19    ... :223a[1]
.shields_string
    equs "NO"                                                         ; 333d: 4e 4f       NO  :223d[1]
    equb 5, &23, &1f                                                  ; 333f: 05 23 1f    .#. :223f[1]
    equs "SDLEIHS"                                                    ; 3342: 53 44 4c... SDL :2242[1]
    equb 2, &21, &1f                                                  ; 3349: 02 21 1f    .!. :2249[1]
.blank_string
    equb &20, &20, 5, &23, &1f                                        ; 334c: 20 20 05...   . :224c[1]
    equs "       "                                                    ; 3351: 20 20 20...     :2251[1]
    equb 2, &21, &1f                                                  ; 3358: 02 21 1f    .!. :2258[1]
.enable_cursor_string
    equb 0, 0, 0, 0, 0, 0, &60, &0a, 0, &17                           ; 335b: 00 00 00... ... :225b[1]
.disable_cursor_string
    equb 0, 0, 0, 0, 0, 0, &3c, &0a, 0, &17                           ; 3365: 00 00 00... ... :2265[1]
.unused42
    equb &ea, &ea, &ea, &ea, &ea, &ea                                 ; 336f: ea ea ea... ... :226f[1]

.plot_energy_bar_edges
    lda #&93                                                          ; 3375: a9 93       ..  :2275[1]
    sta y_pixels                                                      ; 3377: 85 7b       .{  :2277[1]
    lda #5                                                            ; 3379: a9 05       ..  :2279[1]
    sta temp8                                                         ; 337b: 85 75       .u  :227b[1]
    inc screen_start_high                                             ; 337d: e6 79       .y  :227d[1]
.plot_energy_bar_edges_loop
    lda #&0d                                                          ; 337f: a9 0d       ..  :227f[1]
    sta x_pixels                                                      ; 3381: 85 7a       .z  :2281[1]
    lda #&32                                                          ; 3383: a9 32       .2  :2283[1]
    jsr plot_horizontal_line                                          ; 3385: 20 db 1b     .. :2285[1]
    lda y_pixels                                                      ; 3388: a5 7b       .{  :2288[1]
    clc                                                               ; 338a: 18          .   :228a[1]
    adc #8                                                            ; 338b: 69 08       i.  :228b[1]
    sta y_pixels                                                      ; 338d: 85 7b       .{  :228d[1]
    dec temp8                                                         ; 338f: c6 75       .u  :228f[1]
    bne plot_energy_bar_edges_loop                                    ; 3391: d0 ec       ..  :2291[1]
    lda #&93                                                          ; 3393: a9 93       ..  :2293[1]
    sta y_pixels                                                      ; 3395: 85 7b       .{  :2295[1]
    lda #&0c                                                          ; 3397: a9 0c       ..  :2297[1]
    sta x_pixels                                                      ; 3399: 85 7a       .z  :2299[1]
    lda #&21                                                          ; 339b: a9 21       .!  :229b[1]
    jsr plot_vertical_line                                            ; 339d: 20 cf 1b     .. :229d[1]
    dec screen_start_high                                             ; 33a0: c6 79       .y  :22a0[1]
    rts                                                               ; 33a2: 60          `   :22a2[1]

; ----------------------------------------------------------------------------------
.plot_energy_text
    ldx #8                                                            ; 33a3: a2 08       ..  :22a3[1]
.loop
    lda energy_string,x                                               ; 33a5: bd 22 22    ."" :22a5[1]
    jsr oswrch                                                        ; 33a8: 20 ee ff     .. :22a8[1]   ; Write character
    dex                                                               ; 33ab: ca          .   :22ab[1]
    bpl loop                                                          ; 33ac: 10 f7       ..  :22ac[1]
    ldx #&11                                                          ; 33ae: a2 11       ..  :22ae[1]
    rts                                                               ; 33b0: 60          `   :22b0[1]

; ----------------------------------------------------------------------------------
.plot_one_two_three_four_text
    ldx #&11                                                          ; 33b1: a2 11       ..  :22b1[1]
.loop1
    lda one_two_three_four_string,x                                   ; 33b3: bd 2b 22    .+" :22b3[1]
    jsr oswrch                                                        ; 33b6: 20 ee ff     .. :22b6[1]   ; Write character
    dex                                                               ; 33b9: ca          .   :22b9[1]
    bpl loop1                                                         ; 33ba: 10 f7       ..  :22ba[1]
    rts                                                               ; 33bc: 60          `   :22bc[1]

; ----------------------------------------------------------------------------------
.plot_shields_text
    ldx #&0e                                                          ; 33bd: a2 0e       ..  :22bd[1]
.loop2
    lda shields_string,x                                              ; 33bf: bd 3d 22    .=" :22bf[1]
    jsr oswrch                                                        ; 33c2: 20 ee ff     .. :22c2[1]   ; Write character
    dex                                                               ; 33c5: ca          .   :22c5[1]
    bpl loop2                                                         ; 33c6: 10 f7       ..  :22c6[1]
    rts                                                               ; 33c8: 60          `   :22c8[1]

; ----------------------------------------------------------------------------------
.plot_blank_text
    ldx #&0e                                                          ; 33c9: a2 0e       ..  :22c9[1]
.loop3
    lda blank_string,x                                                ; 33cb: bd 4c 22    .L" :22cb[1]
    jsr oswrch                                                        ; 33ce: 20 ee ff     .. :22ce[1]   ; Write character
    dex                                                               ; 33d1: ca          .   :22d1[1]
    bpl loop3                                                         ; 33d2: 10 f7       ..  :22d2[1]
    rts                                                               ; 33d4: 60          `   :22d4[1]

; ----------------------------------------------------------------------------------
.initialise_envelopes
    ldx #<(envelope1)                                                 ; 33d5: a2 84       ..  :22d5[1]
    ldy #>(envelope1)                                                 ; 33d7: a0 21       .!  :22d7[1]
    lda #osword_envelope                                              ; 33d9: a9 08       ..  :22d9[1]
    jsr osword                                                        ; 33db: 20 f1 ff     .. :22db[1]   ; ENVELOPE command
    ldx #<(envelope2)                                                 ; 33de: a2 92       ..  :22de[1]
    ldy #>(envelope2)                                                 ; 33e0: a0 21       .!  :22e0[1]
    lda #osword_envelope                                              ; 33e2: a9 08       ..  :22e2[1]
    jsr osword                                                        ; 33e4: 20 f1 ff     .. :22e4[1]   ; ENVELOPE command
    ldx #<(envelope3)                                                 ; 33e7: a2 a0       ..  :22e7[1]
    ldy #>(envelope3)                                                 ; 33e9: a0 21       .!  :22e9[1]
    lda #osword_envelope                                              ; 33eb: a9 08       ..  :22eb[1]
    jsr osword                                                        ; 33ed: 20 f1 ff     .. :22ed[1]   ; ENVELOPE command
    ldx #<(envelope4)                                                 ; 33f0: a2 ae       ..  :22f0[1]
    ldy #>(envelope4)                                                 ; 33f2: a0 21       .!  :22f2[1]
    lda #osword_envelope                                              ; 33f4: a9 08       ..  :22f4[1]
    jsr osword                                                        ; 33f6: 20 f1 ff     .. :22f6[1]   ; ENVELOPE command
    rts                                                               ; 33f9: 60          `   :22f9[1]

.plot_screen_border
    ldx #&29                                                          ; 33fa: a2 29       .)  :22fa[1]
.loop_c22fc
    lda screen_border_string,x                                        ; 33fc: bd 5a 21    .Z! :22fc[1]
    jsr oswrch                                                        ; 33ff: 20 ee ff     .. :22ff[1]   ; Write character
    dex                                                               ; 3402: ca          .   :2302[1]
    bpl loop_c22fc                                                    ; 3403: 10 f7       ..  :2303[1]
    rts                                                               ; 3405: 60          `   :2305[1]

.set_foreground_colour_to_white
    ldx #5                                                            ; 3406: a2 05       ..  :2306[1]
.loop_c2308
    lda set_foreground_colour_to_white_string,x                       ; 3408: bd 10 22    .." :2308[1]
    jsr oswrch                                                        ; 340b: 20 ee ff     .. :230b[1]   ; Write character
    dex                                                               ; 340e: ca          .   :230e[1]
    bpl loop_c2308                                                    ; 340f: 10 f7       ..  :230f[1]
    rts                                                               ; 3411: 60          `   :2311[1]

.set_foreground_colour_to_black
    ldx #5                                                            ; 3412: a2 05       ..  :2312[1]
.loop_c2314
    lda set_foreground_colour_to_black_string,x                       ; 3414: bd 16 22    .." :2314[1]
    jsr oswrch                                                        ; 3417: 20 ee ff     .. :2317[1]   ; Write character
    dex                                                               ; 341a: ca          .   :231a[1]
    bpl loop_c2314                                                    ; 341b: 10 f7       ..  :231b[1]
    rts                                                               ; 341d: 60          `   :231d[1]

.set_background_colour_to_black
    ldx #5                                                            ; 341e: a2 05       ..  :231e[1]
.loop_c2320
    lda set_background_colour_to_black_string,x                       ; 3420: bd 1c 22    .." :2320[1]
    jsr oswrch                                                        ; 3423: 20 ee ff     .. :2323[1]   ; Write character
    dex                                                               ; 3426: ca          .   :2326[1]
    bpl loop_c2320                                                    ; 3427: 10 f7       ..  :2327[1]
    rts                                                               ; 3429: 60          `   :2329[1]

.enable_cursor
    ldx #9                                                            ; 342a: a2 09       ..  :232a[1]
.enable_cursor_loop
    lda enable_cursor_string,x                                        ; 342c: bd 5b 22    .[" :232c[1]
    jsr oswrch                                                        ; 342f: 20 ee ff     .. :232f[1]   ; Write character
    dex                                                               ; 3432: ca          .   :2332[1]
    bpl enable_cursor_loop                                            ; 3433: 10 f7       ..  :2333[1]
    rts                                                               ; 3435: 60          `   :2335[1]

; ----------------------------------------------------------------------------------
.disable_cursor
    ldx #9                                                            ; 3436: a2 09       ..  :2336[1]
.loop4
.disable_cursor_loop
    lda disable_cursor_string,x                                       ; 3438: bd 65 22    .e" :2338[1]
    jsr oswrch                                                        ; 343b: 20 ee ff     .. :233b[1]   ; Write character
    dex                                                               ; 343e: ca          .   :233e[1]
    bpl loop4                                                         ; 343f: 10 f7       ..  :233f[1]
    rts                                                               ; 3441: 60          `   :2341[1]

.unused43
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea                  ; 3442: ea ea ea... ... :2342[1]

.check_for_keypresses
    ldy escape_capsule_launched                                       ; 344b: ac d8 1c    ... :234b[1]
    bne return17                                                      ; 344e: d0 67       .g  :234e[1]
    ldy keyboard_or_joystick                                          ; 3450: ac d6 1c    ... :2350[1]
    beq use_keyboard_input                                            ; 3453: f0 09       ..  :2353[1]
    jsr get_joystick_input                                            ; 3455: 20 00 49     .I :2355[1]
    lda #4                                                            ; 3458: a9 04       ..  :2358[1]
    sta temp8                                                         ; 345a: 85 75       .u  :235a[1]
    bne check_for_additional_keys                                     ; 345c: d0 2c       .,  :235c[1]   ; ALWAYS branch

.use_keyboard_input
    lda #&ff                                                          ; 345e: a9 ff       ..  :235e[1]
    sta temp8                                                         ; 3460: 85 75       .u  :2360[1]
    jsr check_key                                                     ; 3462: 20 36 24     6$ :2362[1]
    beq not_rotate_anticlockwise                                      ; 3465: f0 03       ..  :2365[1]
    dec rotation_delta                                                ; 3467: ce 27 19    .'. :2367[1]
.not_rotate_anticlockwise
    jsr check_key                                                     ; 346a: 20 36 24     6$ :236a[1]
    beq not_rotate_clockwise                                          ; 346d: f0 03       ..  :236d[1]
    inc rotation_delta                                                ; 346f: ee 27 19    .'. :236f[1]
.not_rotate_clockwise
    jsr check_key                                                     ; 3472: 20 36 24     6$ :2372[1]
    beq not_accelerate                                                ; 3475: f0 03       ..  :2375[1]
    inc velocity_delta                                                ; 3477: ee 2e 19    ... :2377[1]
.not_accelerate
    jsr check_key                                                     ; 347a: 20 36 24     6$ :237a[1]
    beq not_decelerate                                                ; 347d: f0 03       ..  :237d[1]
    dec velocity_delta                                                ; 347f: ce 2e 19    ... :237f[1]
.not_decelerate
    jsr check_key                                                     ; 3482: 20 36 24     6$ :2382[1]
    beq check_for_additional_keys                                     ; 3485: f0 03       ..  :2385[1]
    inc fire_pressed                                                  ; 3487: ee 1a 19    ... :2387[1]
.check_for_additional_keys
    jsr check_key                                                     ; 348a: 20 36 24     6$ :238a[1]
    beq not_launch_starboard_escape_capsule                           ; 348d: f0 03       ..  :238d[1]
    jmp launch_escape_capsule_starboard                               ; 348f: 4c db 28    L.( :238f[1]

.not_launch_starboard_escape_capsule
    jsr check_key                                                     ; 3492: 20 36 24     6$ :2392[1]
    beq not_launch_port_escape_capsule                                ; 3495: f0 03       ..  :2395[1]
    jmp launch_escape_capsule_port                                    ; 3497: 4c d7 28    L.( :2397[1]

.not_launch_port_escape_capsule
    lda keyboard_or_joystick                                          ; 349a: ad d6 1c    ... :239a[1]
    beq is_keyboard                                                   ; 349d: f0 06       ..  :239d[1]
    lda #&0a                                                          ; 349f: a9 0a       ..  :239f[1]
    sta temp8                                                         ; 34a1: 85 75       .u  :23a1[1]
    bne skip_damper_keys                                              ; 34a3: d0 34       .4  :23a3[1]   ; ALWAYS branch

.is_keyboard
    lda rotation_delta                                                ; 34a5: ad 27 19    .'. :23a5[1]
    ora velocity_delta                                                ; 34a8: 0d 2e 19    ... :23a8[1]
    bne return17                                                      ; 34ab: d0 0a       ..  :23ab[1]
    jsr check_key                                                     ; 34ad: 20 36 24     6$ :23ad[1]
    beq not_enable_rotation_damper                                    ; 34b0: f0 06       ..  :23b0[1]
    lda #1                                                            ; 34b2: a9 01       ..  :23b2[1]
    sta rotation_damper                                               ; 34b4: 8d 2c 19    .,. :23b4[1]
.return17
    rts                                                               ; 34b7: 60          `   :23b7[1]

.not_enable_rotation_damper
    jsr check_key                                                     ; 34b8: 20 36 24     6$ :23b8[1]
    beq not_enable_velocity_damper                                    ; 34bb: f0 06       ..  :23bb[1]
    lda #1                                                            ; 34bd: a9 01       ..  :23bd[1]
    sta velocity_damper                                               ; 34bf: 8d 31 19    .1. :23bf[1]
    rts                                                               ; 34c2: 60          `   :23c2[1]

.not_enable_velocity_damper
    jsr check_key                                                     ; 34c3: 20 36 24     6$ :23c3[1]
    beq not_disable_rotation_damper                                   ; 34c6: f0 06       ..  :23c6[1]
    lda #0                                                            ; 34c8: a9 00       ..  :23c8[1]
    sta rotation_damper                                               ; 34ca: 8d 2c 19    .,. :23ca[1]
    rts                                                               ; 34cd: 60          `   :23cd[1]

.not_disable_rotation_damper
    jsr check_key                                                     ; 34ce: 20 36 24     6$ :23ce[1]
    beq skip_damper_keys                                              ; 34d1: f0 06       ..  :23d1[1]
    lda #0                                                            ; 34d3: a9 00       ..  :23d3[1]
    sta velocity_damper                                               ; 34d5: 8d 31 19    .1. :23d5[1]
    rts                                                               ; 34d8: 60          `   :23d8[1]

.skip_damper_keys
    jsr check_key                                                     ; 34d9: 20 36 24     6$ :23d9[1]
    beq not_enable_shields                                            ; 34dc: f0 04       ..  :23dc[1]
    inc shields_state_delta                                           ; 34de: ee 26 19    .&. :23de[1]
    rts                                                               ; 34e1: 60          `   :23e1[1]

.not_enable_shields
    jsr check_key                                                     ; 34e2: 20 36 24     6$ :23e2[1]
    beq not_disable_shields                                           ; 34e5: f0 04       ..  :23e5[1]
    dec shields_state_delta                                           ; 34e7: ce 26 19    .&. :23e7[1]
    rts                                                               ; 34ea: 60          `   :23ea[1]

.not_disable_shields
    jsr check_key                                                     ; 34eb: 20 36 24     6$ :23eb[1]
    beq check_for_copy                                                ; 34ee: f0 2e       ..  :23ee[1]
    lda #1                                                            ; 34f0: a9 01       ..  :23f0[1]
    sta starship_automatic_shields                                    ; 34f2: 8d 24 19    .$. :23f2[1]
    rts                                                               ; 34f5: 60          `   :23f5[1]

.unused44
    jsr check_key                                                     ; 34f6: 20 36 24     6$ :23f6[1]
    beq unused_not_copy                                               ; 34f9: f0 03       ..  :23f9[1]
    jmp check_for_copy                                                ; 34fb: 4c 1e 24    L.$ :23fb[1]

.unused_not_copy
    jsr check_key                                                     ; 34fe: 20 36 24     6$ :23fe[1]
    beq unused_not_shift_one                                          ; 3501: f0 03       ..  :2401[1]
    jmp check_for_copy                                                ; 3503: 4c 1e 24    L.$ :2403[1]

.unused_not_shift_one
    jsr check_key                                                     ; 3506: 20 36 24     6$ :2406[1]
    beq unused_not_shift_two                                          ; 3509: f0 03       ..  :2409[1]
    jmp check_for_copy                                                ; 350b: 4c 1e 24    L.$ :240b[1]

.unused_not_shift_two
    jsr check_key                                                     ; 350e: 20 36 24     6$ :240e[1]
    beq unused_not_shift_three                                        ; 3511: f0 03       ..  :2411[1]
    jmp check_for_copy                                                ; 3513: 4c 1e 24    L.$ :2413[1]

.unused_not_shift_three
    jsr check_key                                                     ; 3516: 20 36 24     6$ :2416[1]
    beq check_for_copy                                                ; 3519: f0 03       ..  :2419[1]
    jmp check_for_copy                                                ; 351b: 4c 1e 24    L.$ :241b[1]

.check_for_copy
    jsr check_key                                                     ; 351e: 20 36 24     6$ :241e[1]
    beq return18                                                      ; 3521: f0 03       ..  :2421[1]
    jmp pause_game                                                    ; 3523: 4c 49 24    LI$ :2423[1]

.return18
    rts                                                               ; 3526: 60          `   :2426[1]

.unused45
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 3527: ea ea ea... ... :2427[1]
    equb &ea, &ea, &ea                                                ; 3533: ea ea ea    ... :2433[1]

.check_key
    inc temp8                                                         ; 3536: e6 75       .u  :2436[1]
    ldx temp8                                                         ; 3538: a6 75       .u  :2438[1]
    lda game_key_table,x                                              ; 353a: bd 46 21    .F! :243a[1]
    tay                                                               ; 353d: a8          .   :243d[1]
    tax                                                               ; 353e: aa          .   :243e[1]
    lda #osbyte_inkey                                                 ; 353f: a9 81       ..  :243f[1]
    jsr osbyte                                                        ; 3541: 20 f4 ff     .. :2441[1]   ; Read key within time limit, or read a specific key, or read machine type
    tya                                                               ; 3544: 98          .   :2444[1]
    rts                                                               ; 3545: 60          `   :2445[1]

.unused46
    equb &ea, &ea, &ea                                                ; 3546: ea ea ea    ... :2446[1]

.pause_game
    ldx #inkey_key_delete                                             ; 3549: a2 a6       ..  :2449[1]   ; X=inkey key value
    ldy #&a6                                                          ; 354b: a0 a6       ..  :244b[1]
    lda #osbyte_inkey                                                 ; 354d: a9 81       ..  :244d[1]
    jsr osbyte                                                        ; 354f: 20 f4 ff     .. :244f[1]   ; Is the 'DELETE' key pressed?
    tya                                                               ; 3552: 98          .   :2452[1]   ; X and Y contain &ff if the key is pressed
    beq pause_game                                                    ; 3553: f0 f4       ..  :2453[1]
    rts                                                               ; 3555: 60          `   :2455[1]

.unused47
    equb &ea, &ea, &ea, &ea                                           ; 3556: ea ea ea... ... :2456[1]

.play_sounds
    lda sound_enabled                                                 ; 355a: ad d7 1c    ... :245a[1]
    beq sound_is_enabled                                              ; 355d: f0 01       ..  :245d[1]
    rts                                                               ; 355f: 60          `   :245f[1]

.sound_is_enabled
    lda enemy_torpedo_hits_against_starship                           ; 3560: ad dd 1c    ... :2460[1]
    beq no_enemy_torpedo_hits_against_starship                        ; 3563: f0 0b       ..  :2463[1]
    lda starship_has_exploded                                         ; 3565: ad c9 1c    ... :2465[1]
    bne skip_explosion_or_firing_sound                                ; 3568: d0 1f       ..  :2468[1]
    ldx #&f0                                                          ; 356a: a2 f0       ..  :246a[1]
    ldy #&21                                                          ; 356c: a0 21       .!  :246c[1]
    bne play_explosion_or_firing_sound                                ; 356e: d0 14       ..  :246e[1]   ; ALWAYS branch

.no_enemy_torpedo_hits_against_starship
    lda enemy_ship_was_hit                                            ; 3570: ad de 1c    ... :2470[1]
    beq no_enemy_ship_was_hit                                         ; 3573: f0 06       ..  :2473[1]
    ldx #&e8                                                          ; 3575: a2 e8       ..  :2475[1]
    ldy #&21                                                          ; 3577: a0 21       .!  :2477[1]
    bne play_explosion_or_firing_sound                                ; 3579: d0 09       ..  :2479[1]   ; ALWAYS branch

.no_enemy_ship_was_hit
    lda enemy_ship_fired_torpedo                                      ; 357b: ad dc 1c    ... :247b[1]
    beq skip_explosion_or_firing_sound                                ; 357e: f0 09       ..  :247e[1]
    ldx #&e0                                                          ; 3580: a2 e0       ..  :2480[1]
    ldy #&21                                                          ; 3582: a0 21       .!  :2482[1]
.play_explosion_or_firing_sound
    lda #osword_sound                                                 ; 3584: a9 07       ..  :2484[1]
    jsr osword                                                        ; 3586: 20 f1 ff     .. :2486[1]   ; SOUND command
.skip_explosion_or_firing_sound
    ldy #0                                                            ; 3589: a0 00       ..  :2489[1]
    lda escape_capsule_launched                                       ; 358b: ad d8 1c    ... :248b[1]
    beq set_escape_capsule_sound_channel                              ; 358e: f0 06       ..  :248e[1]
    lda escape_capsule_destroyed                                      ; 3590: ad 90 28    ..( :2490[1]
    bne set_escape_capsule_sound_channel                              ; 3593: d0 01       ..  :2493[1]
    iny                                                               ; 3595: c8          .   :2495[1]   ; Y=&01
.set_escape_capsule_sound_channel
    sty escape_capsule_sound_channel                                  ; 3596: 8c db 1c    ... :2496[1]
    lda starship_has_exploded                                         ; 3599: ad c9 1c    ... :2499[1]
    bne play_sound_for_exploding_starship                             ; 359c: d0 64       .d  :249c[1]
    lda score_delta_low                                               ; 359e: ad 63 2d    .c- :249e[1]
    ora score_delta_high                                              ; 35a1: 0d 64 2d    .d- :24a1[1]
    beq skip_sound_for_exploding_enemy_ship                           ; 35a4: f0 09       ..  :24a4[1]
    ldx #<(sound_11)                                                  ; 35a6: a2 f8       ..  :24a6[1]
    ldy #>(sound_11)                                                  ; 35a8: a0 49       .I  :24a8[1]
    lda #osword_sound                                                 ; 35aa: a9 07       ..  :24aa[1]
    jsr osword                                                        ; 35ac: 20 f1 ff     .. :24ac[1]   ; SOUND command
.skip_sound_for_exploding_enemy_ship
    lda escape_capsule_sound_channel                                  ; 35af: ad db 1c    ... :24af[1]
    beq escape_capsule_not_launched                                   ; 35b2: f0 03       ..  :24b2[1]
    jmp play_escape_capsule_sound                                     ; 35b4: 4c 4d 25    LM% :24b4[1]

.escape_capsule_not_launched
    lda sound_needed_for_low_energy                                   ; 35b7: ad f1 25    ..% :24b7[1]
    beq play_starship_engine_sound                                    ; 35ba: f0 0f       ..  :24ba[1]
    dec sound_needed_for_low_energy                                   ; 35bc: ce f1 25    ..% :24bc[1]
    ldx #<(sound_9)                                                   ; 35bf: a2 08       ..  :24bf[1]
    ldy #>(sound_9)                                                   ; 35c1: a0 22       ."  :24c1[1]
    lda #osword_sound                                                 ; 35c3: a9 07       ..  :24c3[1]
    jsr osword                                                        ; 35c5: 20 f1 ff     .. :24c5[1]   ; SOUND command
    jmp consider_torpedo_sound                                        ; 35c8: 4c 7d 25    L}% :24c8[1]

.play_starship_engine_sound
    lda starship_velocity_low                                         ; 35cb: ad 01 0f    ... :24cb[1]
    clc                                                               ; 35ce: 18          .   :24ce[1]
    adc #&40                                                          ; 35cf: 69 40       i@  :24cf[1]
    sta x_pixels                                                      ; 35d1: 85 7a       .z  :24d1[1]
    lda #0                                                            ; 35d3: a9 00       ..  :24d3[1]
    adc starship_velocity_high                                        ; 35d5: 6d 00 0f    m.. :24d5[1]
    asl x_pixels                                                      ; 35d8: 06 7a       .z  :24d8[1]
    rol a                                                             ; 35da: 2a          *   :24da[1]
    adc starship_rotation_magnitude                                   ; 35db: 6d 03 0f    m.. :24db[1]
    sta sound_10_pitch                                                ; 35de: 8d f4 49    ..I :24de[1]
    cmp #&0a                                                          ; 35e1: c9 0a       ..  :24e1[1]
    bcc skip_ceiling                                                  ; 35e3: 90 03       ..  :24e3[1]
    lda #9                                                            ; 35e5: a9 09       ..  :24e5[1]
    clc                                                               ; 35e7: 18          .   :24e7[1]
.skip_ceiling
    eor #&ff                                                          ; 35e8: 49 ff       I.  :24e8[1]
    adc #1                                                            ; 35ea: 69 01       i.  :24ea[1]
    sta sound_10_volume_low                                           ; 35ec: 8d f2 49    ..I :24ec[1]
    lda #&ff                                                          ; 35ef: a9 ff       ..  :24ef[1]
    adc #0                                                            ; 35f1: 69 00       i.  :24f1[1]
    sta sound_10_volume_high                                          ; 35f3: 8d f3 49    ..I :24f3[1]
    ldx #<(sound_10)                                                  ; 35f6: a2 f0       ..  :24f6[1]
    ldy #>(sound_10)                                                  ; 35f8: a0 49       .I  :24f8[1]
    lda #osword_sound                                                 ; 35fa: a9 07       ..  :24fa[1]
    jsr osword                                                        ; 35fc: 20 f1 ff     .. :24fc[1]   ; SOUND command
    jmp consider_torpedo_sound                                        ; 35ff: 4c 7d 25    L}% :24ff[1]

.play_sound_for_exploding_starship
    lda starship_explosion_countdown                                  ; 3602: ad ce 1c    ... :2502[1]
    sec                                                               ; 3605: 38          8   :2505[1]
    sbc frame_of_starship_explosion_after_which_no_sound              ; 3606: ed da 1c    ... :2506[1]
    bcc skip_starship_explosion_sound                                 ; 3609: 90 38       .8  :2509[1]
    sta x_pixels                                                      ; 360b: 85 7a       .z  :250b[1]
    rol a                                                             ; 360d: 2a          *   :250d[1]
    cmp #&56                                                          ; 360e: c9 56       .V  :250e[1]
    bcc skip_pitch_bend                                               ; 3610: 90 04       ..  :2510[1]
    sbc #&40                                                          ; 3612: e9 40       .@  :2512[1]
    rol a                                                             ; 3614: 2a          *   :2514[1]
    rol a                                                             ; 3615: 2a          *   :2515[1]
.skip_pitch_bend
    sta sound_1_pitch                                                 ; 3616: 8d cc 21    ..! :2516[1]
    lda x_pixels                                                      ; 3619: a5 7a       .z  :2519[1]
    lsr a                                                             ; 361b: 4a          J   :251b[1]
    cmp #&10                                                          ; 361c: c9 10       ..  :251c[1]
    bcc skip_ceiling1                                                 ; 361e: 90 03       ..  :251e[1]
    lda #&0f                                                          ; 3620: a9 0f       ..  :2520[1]
    clc                                                               ; 3622: 18          .   :2522[1]
.skip_ceiling1
    eor #&ff                                                          ; 3623: 49 ff       I.  :2523[1]
    adc #1                                                            ; 3625: 69 01       i.  :2525[1]
    sta sound_1_volume_low                                            ; 3627: 8d d2 21    ..! :2527[1]
    lda #&ff                                                          ; 362a: a9 ff       ..  :252a[1]
    adc #0                                                            ; 362c: 69 00       i.  :252c[1]
    sta sound_1_volume_high                                           ; 362e: 8d d3 21    ..! :252e[1]
    ldx #<(sound_1)                                                   ; 3631: a2 c8       ..  :2531[1]
    ldy #>(sound_1)                                                   ; 3633: a0 21       .!  :2533[1]
    lda #osword_sound                                                 ; 3635: a9 07       ..  :2535[1]
    jsr osword                                                        ; 3637: 20 f1 ff     .. :2537[1]   ; SOUND command
    ldx #<(sound_2)                                                   ; 363a: a2 d0       ..  :253a[1]
    ldy #>(sound_2)                                                   ; 363c: a0 21       .!  :253c[1]
    lda #osword_sound                                                 ; 363e: a9 07       ..  :253e[1]
    jsr osword                                                        ; 3640: 20 f1 ff     .. :2540[1]   ; SOUND command
.skip_starship_explosion_sound
    lda escape_capsule_sound_channel                                  ; 3643: ad db 1c    ... :2543[1]
    beq consider_torpedo_sound                                        ; 3646: f0 35       .5  :2546[1]
    lda #3                                                            ; 3648: a9 03       ..  :2548[1]
    sta escape_capsule_sound_channel                                  ; 364a: 8d db 1c    ... :254a[1]
.play_escape_capsule_sound
    ora #&10                                                          ; 364d: 09 10       ..  :254d[1]
    sta sound_8                                                       ; 364f: 8d 00 22    .." :254f[1]
    lda self_destruct_countdown                                       ; 3652: ad 91 28    ..( :2552[1]
    and #1                                                            ; 3655: 29 01       ).  :2555[1]
    beq set_volume                                                    ; 3657: f0 0a       ..  :2557[1]
    lda self_destruct_countdown                                       ; 3659: ad 91 28    ..( :2559[1]
    lsr a                                                             ; 365c: 4a          J   :255c[1]
    lsr a                                                             ; 365d: 4a          J   :255d[1]
    eor #&ff                                                          ; 365e: 49 ff       I.  :255e[1]
    clc                                                               ; 3660: 18          .   :2560[1]
    adc #1                                                            ; 3661: 69 01       i.  :2561[1]
.set_volume
    sta sound_8_volume_low                                            ; 3663: 8d 02 22    .." :2563[1]
    beq set_volume_high                                               ; 3666: f0 02       ..  :2566[1]
    lda #&ff                                                          ; 3668: a9 ff       ..  :2568[1]
.set_volume_high
    sta sound_8_volume_high                                           ; 366a: 8d 03 22    .." :256a[1]
    ldx #<(sound_8)                                                   ; 366d: a2 00       ..  :256d[1]
    ldy #>(sound_8)                                                   ; 366f: a0 22       ."  :256f[1]
    lda #osword_sound                                                 ; 3671: a9 07       ..  :2571[1]
    jsr osword                                                        ; 3673: 20 f1 ff     .. :2573[1]   ; SOUND command
    lda escape_capsule_sound_channel                                  ; 3676: ad db 1c    ... :2576[1]
    cmp #3                                                            ; 3679: c9 03       ..  :2579[1]
    beq return19                                                      ; 367b: f0 1c       ..  :257b[1]
.consider_torpedo_sound
    lda starship_fired_torpedo                                        ; 367d: ad 58 26    .X& :257d[1]
    beq skip_starship_torpedo_sound                                   ; 3680: f0 09       ..  :2580[1]
    ldx #<(sound_3)                                                   ; 3682: a2 d8       ..  :2582[1]
    ldy #>(sound_3)                                                   ; 3684: a0 21       .!  :2584[1]
    lda #osword_sound                                                 ; 3686: a9 07       ..  :2586[1]
    jmp osword                                                        ; 3688: 4c f1 ff    L.. :2588[1]   ; SOUND command

.skip_starship_torpedo_sound
    lda enemy_ships_collided_with_each_other                          ; 368b: ad d1 17    ... :258b[1]
    beq return19                                                      ; 368e: f0 09       ..  :258e[1]
    ldx #<(sound_7)                                                   ; 3690: a2 f8       ..  :2590[1]
    ldy #>(sound_7)                                                   ; 3692: a0 21       .!  :2592[1]
    lda #osword_sound                                                 ; 3694: a9 07       ..  :2594[1]
    jsr osword                                                        ; 3696: 20 f1 ff     .. :2596[1]   ; SOUND command
.return19
    rts                                                               ; 3699: 60          `   :2599[1]

.unused48
    equb &ea, &ea, &ff, &60, &ea, &ea, &ff, &ff, &ff, &ff, &ff, &ff   ; 369a: ea ea ff... ... :259a[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 36a6: ff ff ff... ... :25a6[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 36b2: ff ff ff... ... :25b2[1]
    equb &ff, &ff,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 36be: ff ff 00... ... :25be[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0        ; 36ca: 00 00 00... ... :25ca[1]
.starship_maximum_x_for_collisions_with_enemy_torpedoes
    equb &86                                                          ; 36d5: 86          .   :25d5[1]
.starship_minimum_x_for_collisions_with_enemy_torpedoes
    equb &78                                                          ; 36d6: 78          x   :25d6[1]
.starship_maximum_y_for_collisions_with_enemy_torpedoes
    equb &86                                                          ; 36d7: 86          .   :25d7[1]
.starship_minimum_y_for_collisions_with_enemy_torpedoes
    equb &7a                                                          ; 36d8: 7a          z   :25d8[1]
.starship_maximum_x_for_collisions_with_enemy_ships
    equb &8c                                                          ; 36d9: 8c          .   :25d9[1]
.starship_minimum_x_for_collisions_with_enemy_ships
    equb &73                                                          ; 36da: 73          s   :25da[1]
.starship_maximum_y_for_collisions_with_enemy_ships
    equb &8c                                                          ; 36db: 8c          .   :25db[1]
.starship_minimum_y_for_collisions_with_enemy_ships
    equb &76                                                          ; 36dc: 76          v   :25dc[1]
.enemy_ship_was_hit_by_collision_with_other_enemy_ship
    equb 4                                                            ; 36dd: 04          .   :25dd[1]
.starship_collided_with_enemy_ship
    equb 0                                                            ; 36de: 00          .   :25de[1]
.frame_of_starship_explosion_after_which_no_collisions
    equb &4a                                                          ; 36df: 4a          J   :25df[1]
.enemy_ships_collision_x_difference
    equb 6                                                            ; 36e0: 06          .   :25e0[1]
.enemy_ships_collision_y_difference
    equb 5                                                            ; 36e1: 05          .   :25e1[1]
.unused49
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0                     ; 36e2: 00 00 00... ... :25e2[1]
.timer_for_low_energy_warning_sound
    equb 0                                                            ; 36f0: 00          .   :25f0[1]
.sound_needed_for_low_energy
    equb 0                                                            ; 36f1: 00          .   :25f1[1]
.energy_flash_timer
    equb 0                                                            ; 36f2: 00          .   :25f2[1]

.flash_energy_when_low
    lda energy_flash_timer                                            ; 36f3: ad f2 25    ..% :25f3[1]
    bne energy_is_already_low                                         ; 36f6: d0 12       ..  :25f6[1]
    lda starship_energy_divided_by_sixteen                            ; 36f8: ad 22 19    .". :25f8[1]
    cmp #&32                                                          ; 36fb: c9 32       .2  :25fb[1]
    bcs consider_warning_sound                                        ; 36fd: b0 15       ..  :25fd[1]
    lda #4                                                            ; 36ff: a9 04       ..  :25ff[1]
    sta energy_flash_timer                                            ; 3701: 8d f2 25    ..% :2601[1]
    jsr invert_energy_text                                            ; 3704: 20 29 26     )& :2604[1]
    jmp consider_warning_sound                                        ; 3707: 4c 14 26    L.& :2607[1]

.energy_is_already_low
    dec energy_flash_timer                                            ; 370a: ce f2 25    ..% :260a[1]
    cmp #2                                                            ; 370d: c9 02       ..  :260d[1]
    bne consider_warning_sound                                        ; 370f: d0 03       ..  :260f[1]
    jsr invert_energy_text                                            ; 3711: 20 29 26     )& :2611[1]
.consider_warning_sound
    dec timer_for_low_energy_warning_sound                            ; 3714: ce f0 25    ..% :2614[1]
    bne return20                                                      ; 3717: d0 0f       ..  :2617[1]
    lda #8                                                            ; 3719: a9 08       ..  :2619[1]
    sta timer_for_low_energy_warning_sound                            ; 371b: 8d f0 25    ..% :261b[1]
    lda starship_energy_divided_by_sixteen                            ; 371e: ad 22 19    .". :261e[1]
    cmp #&19                                                          ; 3721: c9 19       ..  :2621[1]
    bcs return20                                                      ; 3723: b0 03       ..  :2623[1]
    inc sound_needed_for_low_energy                                   ; 3725: ee f1 25    ..% :2625[1]
.return20
    rts                                                               ; 3728: 60          `   :2628[1]

.invert_energy_text
    ldy #&2f                                                          ; 3729: a0 2f       ./  :2629[1]
.invert_energy_text_loop
    lda energy_screen_address,y                                       ; 372b: b9 48 6e    .Hn :262b[1]
    eor #&ff                                                          ; 372e: 49 ff       I.  :262e[1]
    sta energy_screen_address,y                                       ; 3730: 99 48 6e    .Hn :2630[1]
    dey                                                               ; 3733: 88          .   :2633[1]
    bpl invert_energy_text_loop                                       ; 3734: 10 f5       ..  :2634[1]
    rts                                                               ; 3736: 60          `   :2636[1]

.unused50
    equb &ea, &ea, &ea, &ff, &ff, &ff, &ff, &ff, &ff, 0, 0, 0, 0, 0   ; 3737: ea ea ea... ... :2637[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0, 0, 0, 0, 0      ; 3745: 00 00 00... ... :2645[1]
.enemy_ships_can_cloak
    equb 1                                                            ; 3752: 01          .   :2652[1]
.probability_of_enemy_ship_cloaking
    equb &3f                                                          ; 3753: 3f          ?   :2653[1]
.minimum_energy_for_enemy_ship_to_cloak
    equb &40                                                          ; 3754: 40          @   :2654[1]
.enemy_ship_desired_angle_divided_by_eight
    equb 0                                                            ; 3755: 00          .   :2655[1]
.unused51
    equb 7                                                            ; 3756: 07          .   :2656[1]
.number_of_live_starship_torpedoes
    equb 0                                                            ; 3757: 00          .   :2657[1]
.starship_fired_torpedo
    equb &ea                                                          ; 3758: ea          .   :2658[1]
.scanner_failure_duration
    equb &ea                                                          ; 3759: ea          .   :2659[1]
.starship_shields_active_before_failure
    equb &ea                                                          ; 375a: ea          .   :265a[1]
.starship_torpedo_type
    equb 0                                                            ; 375b: 00          .   :265b[1]
.unused52
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea        ; 375c: ea ea ea... ... :265c[1]

.handle_enemy_ships_cloaking
    lda enemy_ships_can_cloak                                         ; 3767: ad 52 26    .R& :2667[1]
    beq return21                                                      ; 376a: f0 5d       .]  :266a[1]
    lda maximum_number_of_enemy_ships                                 ; 376c: ad 4f 0e    .O. :266c[1]
    sta enemy_ships_still_to_consider                                 ; 376f: 8d 54 0e    .T. :266f[1]
    ldx #0                                                            ; 3772: a2 00       ..  :2672[1]
.handle_enemy_ships_cloaking_loop
    lda enemy_ships_type,x                                            ; 3774: bd 0a 04    ... :2674[1]
    cmp #4                                                            ; 3777: c9 04       ..  :2677[1]
    ror temp8                                                         ; 3779: 66 75       fu  :2679[1]
    bmi enemy_ship_is_already_cloaked                                 ; 377b: 30 04       0.  :267b[1]
    cmp #1                                                            ; 377d: c9 01       ..  :267d[1]
    bne handle_enemy_ships_cloaking_next                              ; 377f: d0 3e       .>  :267f[1]
.enemy_ship_is_already_cloaked
    ldy enemy_ships_on_screen,x                                       ; 3781: bc 80 04    ... :2681[1]
    beq enemy_ship_is_on_screen1                                      ; 3784: f0 08       ..  :2684[1]
    and #3                                                            ; 3786: 29 03       ).  :2686[1]
    sta enemy_ships_type,x                                            ; 3788: 9d 0a 04    ... :2688[1]
    jmp handle_enemy_ships_cloaking_next                              ; 378b: 4c bf 26    L.& :268b[1]

.enemy_ship_is_on_screen1
    ldy enemy_ships_energy,x                                          ; 378e: bc 89 04    ... :268e[1]
    cpy minimum_energy_for_enemy_ship_to_cloak                        ; 3791: cc 54 26    .T& :2691[1]
    bcs enemy_ship_has_sufficient_energy_to_cloak                     ; 3794: b0 0f       ..  :2694[1]
    asl temp8                                                         ; 3796: 06 75       .u  :2696[1]
    bcc handle_enemy_ships_cloaking_next                              ; 3798: 90 25       .%  :2698[1]
    and #3                                                            ; 379a: 29 03       ).  :269a[1]
    sta enemy_ships_type,x                                            ; 379c: 9d 0a 04    ... :269c[1]
    jsr plot_enemy_ship                                               ; 379f: 20 fc 1b     .. :269f[1]
    jmp handle_enemy_ships_cloaking_next                              ; 37a2: 4c bf 26    L.& :26a2[1]

.enemy_ship_has_sufficient_energy_to_cloak
    asl temp8                                                         ; 37a5: 06 75       .u  :26a5[1]
    bcs handle_enemy_ships_cloaking_next                              ; 37a7: b0 16       ..  :26a7[1]
    jsr random_number_generator                                       ; 37a9: 20 13 21     .! :26a9[1]
    lda rnd_2                                                         ; 37ac: ad d2 1c    ... :26ac[1]
    and probability_of_enemy_ship_cloaking                            ; 37af: 2d 53 26    -S& :26af[1]
    bne handle_enemy_ships_cloaking_next                              ; 37b2: d0 0b       ..  :26b2[1]
    jsr plot_enemy_ship                                               ; 37b4: 20 fc 1b     .. :26b4[1]
    lda enemy_ships_type,x                                            ; 37b7: bd 0a 04    ... :26b7[1]
    ora #4                                                            ; 37ba: 09 04       ..  :26ba[1]
    sta enemy_ships_type,x                                            ; 37bc: 9d 0a 04    ... :26bc[1]
.handle_enemy_ships_cloaking_next
    txa                                                               ; 37bf: 8a          .   :26bf[1]
    clc                                                               ; 37c0: 18          .   :26c0[1]
    adc #&0b                                                          ; 37c1: 69 0b       i.  :26c1[1]
    tax                                                               ; 37c3: aa          .   :26c3[1]
    dec enemy_ships_still_to_consider                                 ; 37c4: ce 54 0e    .T. :26c4[1]
    bne handle_enemy_ships_cloaking_loop                              ; 37c7: d0 ab       ..  :26c7[1]
.return21
    rts                                                               ; 37c9: 60          `   :26c9[1]

.unused53
    equb &ea, &ea                                                     ; 37ca: ea ea       ..  :26ca[1]

.fire_enemy_torpedo
    lda torpedoes_still_to_consider                                   ; 37cc: ad 55 0e    .U. :26cc[1]
    beq leave_after_clearing_carry                                    ; 37cf: f0 1d       ..  :26cf[1]
    lda enemy_ships_firing_cooldown,x                                 ; 37d1: bd 8a 04    ... :26d1[1]
    and #&0f                                                          ; 37d4: 29 0f       ).  :26d4[1]
    bne leave_after_clearing_carry                                    ; 37d6: d0 16       ..  :26d6[1]
    ldy #0                                                            ; 37d8: a0 00       ..  :26d8[1]
.find_enemy_torpedo_slot_loop
    lda (temp0_low),y                                                 ; 37da: b1 80       ..  :26da[1]
    beq free_slot                                                     ; 37dc: f0 12       ..  :26dc[1]
    lda temp0_low                                                     ; 37de: a5 80       ..  :26de[1]
    clc                                                               ; 37e0: 18          .   :26e0[1]
    adc #6                                                            ; 37e1: 69 06       i.  :26e1[1]
    sta temp0_low                                                     ; 37e3: 85 80       ..  :26e3[1]
    bcc skip26                                                        ; 37e5: 90 02       ..  :26e5[1]
    inc temp0_high                                                    ; 37e7: e6 81       ..  :26e7[1]
.skip26
    dec torpedoes_still_to_consider                                   ; 37e9: ce 55 0e    .U. :26e9[1]
    bne find_enemy_torpedo_slot_loop                                  ; 37ec: d0 ec       ..  :26ec[1]
.leave_after_clearing_carry
    clc                                                               ; 37ee: 18          .   :26ee[1]
    rts                                                               ; 37ef: 60          `   :26ef[1]

.free_slot
    lda enemy_ships_angle,x                                           ; 37f0: bd 87 04    ... :26f0[1]
    lsr a                                                             ; 37f3: 4a          J   :26f3[1]
    lsr a                                                             ; 37f4: 4a          J   :26f4[1]
    lsr a                                                             ; 37f5: 4a          J   :26f5[1]
    cmp enemy_ship_desired_angle_divided_by_eight                     ; 37f6: cd 55 26    .U& :26f6[1]
    bne leave_after_clearing_carry                                    ; 37f9: d0 f3       ..  :26f9[1]
    lda enemy_ships_firing_cooldown,x                                 ; 37fb: bd 8a 04    ... :26fb[1]
    lsr a                                                             ; 37fe: 4a          J   :26fe[1]
    lsr a                                                             ; 37ff: 4a          J   :26ff[1]
    lsr a                                                             ; 3800: 4a          J   :2700[1]
    lsr a                                                             ; 3801: 4a          J   :2701[1]
    adc enemy_ships_firing_cooldown,x                                 ; 3802: 7d 8a 04    }.. :2702[1]
    sta enemy_ships_firing_cooldown,x                                 ; 3805: 9d 8a 04    ... :2705[1]
    lda enemy_ships_flags_or_explosion_timer,x                        ; 3808: bd 09 04    ... :2708[1]
    and #&10                                                          ; 380b: 29 10       ).  :270b[1]
    beq single_torpedo                                                ; 380d: f0 03       ..  :270d[1]
    jmp fire_enemy_torpedo_cluster                                    ; 380f: 4c d4 29    L.) :270f[1]

.single_torpedo
    lda value_used_for_enemy_torpedo_ttl                              ; 3812: ad 36 0e    .6. :2712[1]
    ldy #0                                                            ; 3815: a0 00       ..  :2715[1]
    sta (temp0_low),y                                                 ; 3817: 91 80       ..  :2717[1]
    lda enemy_ships_angle,x                                           ; 3819: bd 87 04    ... :2719[1]
    ldy #5                                                            ; 381c: a0 05       ..  :271c[1]
    sta (temp0_low),y                                                 ; 381e: 91 80       ..  :271e[1]
    lsr a                                                             ; 3820: 4a          J   :2720[1]
    lsr a                                                             ; 3821: 4a          J   :2721[1]
    lsr a                                                             ; 3822: 4a          J   :2722[1]
    tay                                                               ; 3823: a8          .   :2723[1]
    lda sine_table,y                                                  ; 3824: b9 58 0e    .X. :2724[1]
    clc                                                               ; 3827: 18          .   :2727[1]
    adc enemy_ships_x_pixels,x                                        ; 3828: 7d 82 04    }.. :2728[1]
    sta x_pixels                                                      ; 382b: 85 7a       .z  :272b[1]
    lda cosine_table,y                                                ; 382d: b9 78 0e    .x. :272d[1]
    clc                                                               ; 3830: 18          .   :2730[1]
    adc enemy_ships_x_pixels1,x                                       ; 3831: 7d 85 04    }.. :2731[1]
    ldy #4                                                            ; 3834: a0 04       ..  :2734[1]
    sta (temp0_low),y                                                 ; 3836: 91 80       ..  :2736[1]
    ldy #2                                                            ; 3838: a0 02       ..  :2738[1]
    lda x_pixels                                                      ; 383a: a5 7a       .z  :273a[1]
    sta (temp0_low),y                                                 ; 383c: 91 80       ..  :273c[1]
    inc enemy_ship_fired_torpedo                                      ; 383e: ee dc 1c    ... :273e[1]
    stx temp8                                                         ; 3841: 86 75       .u  :2741[1]
    jsr plot_enemy_torpedo                                            ; 3843: 20 11 16     .. :2743[1]
    ldx temp8                                                         ; 3846: a6 75       .u  :2746[1]
    dec torpedoes_still_to_consider                                   ; 3848: ce 55 0e    .U. :2748[1]
    lda temp0_low                                                     ; 384b: a5 80       ..  :274b[1]
    clc                                                               ; 384d: 18          .   :274d[1]
    adc #6                                                            ; 384e: 69 06       i.  :274e[1]
    sta temp0_low                                                     ; 3850: 85 80       ..  :2750[1]
    bcc skip27                                                        ; 3852: 90 02       ..  :2752[1]
    inc temp0_high                                                    ; 3854: e6 81       ..  :2754[1]
.skip27
    sec                                                               ; 3856: 38          8   :2756[1]
    rts                                                               ; 3857: 60          `   :2757[1]

.calculate_enemy_ship_angle_to_starship
    lda temp9                                                         ; 3858: a5 76       .v  :2758[1]
    sec                                                               ; 385a: 38          8   :275a[1]
    bmi skip_inversion_y3                                             ; 385b: 30 05       0.  :275b[1]
    eor #&ff                                                          ; 385d: 49 ff       I.  :275d[1]
    sbc #1                                                            ; 385f: e9 01       ..  :275f[1]
    clc                                                               ; 3861: 18          .   :2761[1]
.skip_inversion_y3
    ror temp8                                                         ; 3862: 66 75       fu  :2762[1]
    sec                                                               ; 3864: 38          8   :2764[1]
    sbc #&7f                                                          ; 3865: e9 7f       ..  :2765[1]
    sta y_pixels                                                      ; 3867: 85 7b       .{  :2767[1]
    lda temp10                                                        ; 3869: a5 77       .w  :2769[1]
    sec                                                               ; 386b: 38          8   :276b[1]
    bmi skip_inversion_x3                                             ; 386c: 30 05       0.  :276c[1]
    eor #&ff                                                          ; 386e: 49 ff       I.  :276e[1]
    sbc #1                                                            ; 3870: e9 01       ..  :2770[1]
    clc                                                               ; 3872: 18          .   :2772[1]
.skip_inversion_x3
    ror temp8                                                         ; 3873: 66 75       fu  :2773[1]
    sec                                                               ; 3875: 38          8   :2775[1]
    sbc #&7f                                                          ; 3876: e9 7f       ..  :2776[1]
    sta x_pixels                                                      ; 3878: 85 7a       .z  :2778[1]
    cmp y_pixels                                                      ; 387a: c5 7b       .{  :277a[1]
    bcs skip_swap                                                     ; 387c: b0 06       ..  :277c[1]
    ldy y_pixels                                                      ; 387e: a4 7b       .{  :277e[1]
    sty x_pixels                                                      ; 3880: 84 7a       .z  :2780[1]
    sta y_pixels                                                      ; 3882: 85 7b       .{  :2782[1]
.skip_swap
    ror temp8                                                         ; 3884: 66 75       fu  :2784[1]
    lda #0                                                            ; 3886: a9 00       ..  :2786[1]
    sta temp11                                                        ; 3888: 85 7c       .|  :2788[1]
    ldy #&0c                                                          ; 388a: a0 0c       ..  :278a[1]
.division_loop
    asl x_pixels                                                      ; 388c: 06 7a       .z  :278c[1]
    rol a                                                             ; 388e: 2a          *   :278e[1]
    cmp y_pixels                                                      ; 388f: c5 7b       .{  :278f[1]
    bcc still_less_than                                               ; 3891: 90 02       ..  :2791[1]
    sbc y_pixels                                                      ; 3893: e5 7b       .{  :2793[1]
.still_less_than
    rol temp11                                                        ; 3895: 26 7c       &|  :2795[1]
    bcs ninety_degrees                                                ; 3897: b0 3a       .:  :2797[1]
    dey                                                               ; 3899: 88          .   :2799[1]
    bne division_loop                                                 ; 389a: d0 f0       ..  :279a[1]
    ldy #&0c                                                          ; 389c: a0 0c       ..  :279c[1]
    lda temp11                                                        ; 389e: a5 7c       .|  :279e[1]
    cmp #&14                                                          ; 38a0: c9 14       ..  :27a0[1]
    bcc finished_calculating_partial_angle                            ; 38a2: 90 10       ..  :27a2[1]
    dey                                                               ; 38a4: 88          .   :27a4[1]   ; Y=&0b
    cmp #&1e                                                          ; 38a5: c9 1e       ..  :27a5[1]
    bcc finished_calculating_partial_angle                            ; 38a7: 90 0b       ..  :27a7[1]
    dey                                                               ; 38a9: 88          .   :27a9[1]   ; Y=&0a
    cmp #&35                                                          ; 38aa: c9 35       .5  :27aa[1]
    bcc finished_calculating_partial_angle                            ; 38ac: 90 06       ..  :27ac[1]
    dey                                                               ; 38ae: 88          .   :27ae[1]   ; Y=&09
    cmp #&a3                                                          ; 38af: c9 a3       ..  :27af[1]
    bcc finished_calculating_partial_angle                            ; 38b1: 90 01       ..  :27b1[1]
    dey                                                               ; 38b3: 88          .   :27b3[1]   ; Y=&08
.finished_calculating_partial_angle
    tya                                                               ; 38b4: 98          .   :27b4[1]
.adjust_angle_for_inversions_and_swap
    rol temp8                                                         ; 38b5: 26 75       &u  :27b5[1]
    bcs skip_angle_swap                                               ; 38b7: b0 04       ..  :27b7[1]
    eor #7                                                            ; 38b9: 49 07       I.  :27b9[1]
    adc #1                                                            ; 38bb: 69 01       i.  :27bb[1]
.skip_angle_swap
    rol temp8                                                         ; 38bd: 26 75       &u  :27bd[1]
    bcs skip_angle_inversion_x                                        ; 38bf: b0 04       ..  :27bf[1]
    eor #&1f                                                          ; 38c1: 49 1f       I.  :27c1[1]
    adc #1                                                            ; 38c3: 69 01       i.  :27c3[1]
.skip_angle_inversion_x
    rol temp8                                                         ; 38c5: 26 75       &u  :27c5[1]
    bcs skip_angle_inversion_x1                                       ; 38c7: b0 04       ..  :27c7[1]
    eor #&0f                                                          ; 38c9: 49 0f       I.  :27c9[1]
    adc #1                                                            ; 38cb: 69 01       i.  :27cb[1]
.skip_angle_inversion_x1
    and #&1f                                                          ; 38cd: 29 1f       ).  :27cd[1]
    sta enemy_ship_desired_angle_divided_by_eight                     ; 38cf: 8d 55 26    .U& :27cf[1]
    rts                                                               ; 38d2: 60          `   :27d2[1]

.ninety_degrees
    lda #8                                                            ; 38d3: a9 08       ..  :27d3[1]
    bne adjust_angle_for_inversions_and_swap                          ; 38d5: d0 de       ..  :27d5[1]   ; ALWAYS branch

.unused54
    nop                                                               ; 38d7: ea          .   :27d7[1]
    nop                                                               ; 38d8: ea          .   :27d8[1]
    nop                                                               ; 38d9: ea          .   :27d9[1]
    nop                                                               ; 38da: ea          .   :27da[1]
    brk                                                               ; 38db: 00          .   :27db[1]

    equb 0, 0, 0, 0                                                   ; 38dc: 00 00 00... ... :27dc[1]

.collide_enemy_ships
    ldx temp0_low                                                     ; 38e0: a6 80       ..  :27e0[1]
    lda enemy_ships_energy,x                                          ; 38e2: bd 89 04    ... :27e2[1]
    beq first_ship_is_already_exploding                               ; 38e5: f0 24       .$  :27e5[1]
    sec                                                               ; 38e7: 38          8   :27e7[1]
    sbc damage_enemy_ship_incurs_from_collision_with_other_enemy_ship ; 38e8: ed 31 0e    .1. :27e8[1]
    bcs skip_floor                                                    ; 38eb: b0 02       ..  :27eb[1]
    lda #0                                                            ; 38ed: a9 00       ..  :27ed[1]
.skip_floor
    sta enemy_ships_energy,x                                          ; 38ef: 9d 89 04    ... :27ef[1]
    bne first_ship_survives_collision                                 ; 38f2: d0 06       ..  :27f2[1]
    jsr explode_enemy_ship                                            ; 38f4: 20 5d 1f     ]. :27f4[1]
    inc enemy_ship_was_hit_by_collision_with_other_enemy_ship         ; 38f7: ee dd 25    ..% :27f7[1]
.first_ship_survives_collision
    lda enemy_ships_type,x                                            ; 38fa: bd 0a 04    ... :27fa[1]
    cmp #4                                                            ; 38fd: c9 04       ..  :27fd[1]
    bcc first_ship_is_already_exploding                               ; 38ff: 90 0a       ..  :27ff[1]
    and #3                                                            ; 3901: 29 03       ).  :2801[1]
    sta enemy_ships_type,x                                            ; 3903: 9d 0a 04    ... :2803[1]
    lda #1                                                            ; 3906: a9 01       ..  :2806[1]
    sta enemy_ships_previous_on_screen,x                              ; 3908: 9d 00 04    ... :2808[1]
.first_ship_is_already_exploding
    ldy temp1_low                                                     ; 390b: a4 82       ..  :280b[1]
    lda enemy_ships_velocity,x                                        ; 390d: bd 08 04    ... :280d[1]
    sta x_pixels                                                      ; 3910: 85 7a       .z  :2810[1]
    lda enemy_ships_velocity,y                                        ; 3912: b9 08 04    ... :2812[1]
    sta y_pixels                                                      ; 3915: 85 7b       .{  :2815[1]
    lda enemy_ships_angle,x                                           ; 3917: bd 87 04    ... :2817[1]
    sta temp7                                                         ; 391a: 85 88       ..  :281a[1]
    lda enemy_ships_angle,y                                           ; 391c: b9 87 04    ... :281c[1]
    sta enemy_ships_angle,x                                           ; 391f: 9d 87 04    ... :281f[1]
    lda temp7                                                         ; 3922: a5 88       ..  :2822[1]
    sta enemy_ships_angle,y                                           ; 3924: 99 87 04    ... :2824[1]
    sec                                                               ; 3927: 38          8   :2827[1]
    sbc enemy_ships_angle,x                                           ; 3928: fd 87 04    ... :2828[1]
    bpl skip_inversion4                                               ; 392b: 10 02       ..  :282b[1]
    eor #&ff                                                          ; 392d: 49 ff       I.  :282d[1]
.skip_inversion4
    lsr a                                                             ; 392f: 4a          J   :282f[1]
    lsr a                                                             ; 3930: 4a          J   :2830[1]
    lsr a                                                             ; 3931: 4a          J   :2831[1]
    lsr a                                                             ; 3932: 4a          J   :2832[1]
    lsr a                                                             ; 3933: 4a          J   :2833[1]
    beq skip_velocity_absorption                                      ; 3934: f0 09       ..  :2834[1]
.angle_loop
    lsr x_pixels                                                      ; 3936: 46 7a       Fz  :2836[1]
    lsr y_pixels                                                      ; 3938: 46 7b       F{  :2838[1]
    sec                                                               ; 393a: 38          8   :283a[1]
    sbc #1                                                            ; 393b: e9 01       ..  :283b[1]
    bne angle_loop                                                    ; 393d: d0 f7       ..  :283d[1]
.skip_velocity_absorption
    lda x_pixels                                                      ; 393f: a5 7a       .z  :283f[1]
    sta enemy_ships_velocity,y                                        ; 3941: 99 08 04    ... :2841[1]
    lda y_pixels                                                      ; 3944: a5 7b       .{  :2844[1]
    sta enemy_ships_velocity,x                                        ; 3946: 9d 08 04    ... :2846[1]
    lda enemy_ships_collision_x_difference                            ; 3949: ad e0 25    ..% :2849[1]
    cmp enemy_ships_collision_y_difference                            ; 394c: cd e1 25    ..% :284c[1]
    bcs use_x_pixels_and_difference                                   ; 394f: b0 09       ..  :284f[1]
    inx                                                               ; 3951: e8          .   :2851[1]
    inx                                                               ; 3952: e8          .   :2852[1]
    inx                                                               ; 3953: e8          .   :2853[1]
    iny                                                               ; 3954: c8          .   :2854[1]
    iny                                                               ; 3955: c8          .   :2855[1]
    iny                                                               ; 3956: c8          .   :2856[1]
    lda enemy_ships_collision_y_difference                            ; 3957: ad e1 25    ..% :2857[1]
.use_x_pixels_and_difference
    sta y_pixels                                                      ; 395a: 85 7b       .{  :285a[1]
    lda size_of_enemy_ship_for_collisions_between_enemy_ships         ; 395c: ad 3b 0e    .;. :285c[1]
    sec                                                               ; 395f: 38          8   :285f[1]
    sbc y_pixels                                                      ; 3960: e5 7b       .{  :2860[1]
    clc                                                               ; 3962: 18          .   :2862[1]
    adc #1                                                            ; 3963: 69 01       i.  :2863[1]
    lsr a                                                             ; 3965: 4a          J   :2865[1]
    sta y_pixels                                                      ; 3966: 85 7b       .{  :2866[1]
    lda enemy_ships_x_pixels,x                                        ; 3968: bd 82 04    ... :2868[1]
    cmp enemy_ships_x_pixels,y                                        ; 396b: d9 82 04    ... :286b[1]
    bcs dont_swap_two_ships_for_collision                             ; 396e: b0 06       ..  :286e[1]
    sty x_pixels                                                      ; 3970: 84 7a       .z  :2870[1]
    txa                                                               ; 3972: 8a          .   :2872[1]
    tay                                                               ; 3973: a8          .   :2873[1]
    ldx x_pixels                                                      ; 3974: a6 7a       .z  :2874[1]
.dont_swap_two_ships_for_collision
    lda enemy_ships_x_pixels,x                                        ; 3976: bd 82 04    ... :2876[1]
    clc                                                               ; 3979: 18          .   :2879[1]
    adc y_pixels                                                      ; 397a: 65 7b       e{  :287a[1]
    bcs dont_alter_first_ships_position                               ; 397c: b0 03       ..  :287c[1]
    sta enemy_ships_x_pixels,x                                        ; 397e: 9d 82 04    ... :287e[1]
.dont_alter_first_ships_position
    lda enemy_ships_x_pixels,y                                        ; 3981: b9 82 04    ... :2881[1]
    sec                                                               ; 3984: 38          8   :2884[1]
    sbc y_pixels                                                      ; 3985: e5 7b       .{  :2885[1]
    bcc dont_alter_second_ships_position                              ; 3987: 90 03       ..  :2887[1]
    sta enemy_ships_x_pixels,y                                        ; 3989: 99 82 04    ... :2889[1]
.dont_alter_second_ships_position
    jmp consider_next_second_enemy_ship                               ; 398c: 4c cc 18    L.. :288c[1]

.unused55
    equb &ff                                                          ; 398f: ff          .   :288f[1]
.escape_capsule_destroyed
    equb 0                                                            ; 3990: 00          .   :2890[1]
.self_destruct_countdown
    equb 0                                                            ; 3991: 00          .   :2891[1]
.escape_capsule_on_screen
    equb 0                                                            ; 3992: 00          .   :2892[1]
.escape_capsule_x_fraction
    equb 0                                                            ; 3993: 00          .   :2893[1]
.escape_capsule_x_pixels
    equb 0                                                            ; 3994: 00          .   :2894[1]
.escape_capsule_y_fraction
    equb 0                                                            ; 3995: 00          .   :2895[1]
.escape_capsule_y_pixels
    equb 0                                                            ; 3996: 00          .   :2896[1]
.escape_capsule_launch_direction
    equb 0                                                            ; 3997: 00          .   :2897[1]
.unused56
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea                       ; 3998: ea ea ea... ... :2898[1]

.initialise_game_screen
    jsr disable_cursor                                                ; 39a0: 20 36 23     6# :28a0[1]
    jsr set_foreground_colour_to_black                                ; 39a3: 20 12 23     .# :28a3[1]
    jsr set_background_colour_to_black                                ; 39a6: 20 1e 23     .# :28a6[1]
    jsr initialise_starship_explosion_pieces                          ; 39a9: 20 03 1f     .. :28a9[1]
    jsr initialise_envelopes                                          ; 39ac: 20 d5 22     ." :28ac[1]
    jsr plot_starship                                                 ; 39af: 20 8e 1d     .. :28af[1]
    jsr plot_energy_text                                              ; 39b2: 20 a3 22     ." :28b2[1]
    jsr plot_one_two_three_four_text                                  ; 39b5: 20 b1 22     ." :28b5[1]
    jsr plot_energy_bar_edges                                         ; 39b8: 20 75 22     u" :28b8[1]
    jsr plot_gauge_edges                                              ; 39bb: 20 ac 2e     .. :28bb[1]
    jsr plot_scanner_grid                                             ; 39be: 20 61 2e     a. :28be[1]
    jsr plot_command_number                                           ; 39c1: 20 a5 35     .5 :28c1[1]
    jsr plot_screen_border                                            ; 39c4: 20 fa 22     ." :28c4[1]
    jsr plot_stars                                                    ; 39c7: 20 24 1d     $. :28c7[1]
    jsr plot_top_and_right_edge_of_long_range_scanner_with_blank_text ; 39ca: 20 2b 14     +. :28ca[1]
    jsr initialise_joystick_and_cursor_keys                           ; 39cd: 20 2f 36     /6 :28cd[1]
    jsr set_foreground_colour_to_white                                ; 39d0: 20 06 23     .# :28d0[1]
    rts                                                               ; 39d3: 60          `   :28d3[1]

.unused57
    equb &ea, &ea, &ea                                                ; 39d4: ea ea ea    ... :28d4[1]

.launch_escape_capsule_port
    ldy #&c0                                                          ; 39d7: a0 c0       ..  :28d7[1]
    bne launch_escape_capsule                                         ; 39d9: d0 02       ..  :28d9[1]   ; ALWAYS branch

.launch_escape_capsule_starboard
    ldy #&40                                                          ; 39db: a0 40       .@  :28db[1]
.launch_escape_capsule
    inc escape_capsule_launched                                       ; 39dd: ee d8 1c    ... :28dd[1]
    sty escape_capsule_launch_direction                               ; 39e0: 8c 97 28    ..( :28e0[1]
    lda #&3f                                                          ; 39e3: a9 3f       .?  :28e3[1]
    sta self_destruct_countdown                                       ; 39e5: 8d 91 28    ..( :28e5[1]
    jsr plot_escape_capsule_launched                                  ; 39e8: 20 f7 35     .5 :28e8[1]
    lda #&7f                                                          ; 39eb: a9 7f       ..  :28eb[1]
    sta escape_capsule_x_pixels                                       ; 39ed: 8d 94 28    ..( :28ed[1]
    sta escape_capsule_y_pixels                                       ; 39f0: 8d 96 28    ..( :28f0[1]
    sta escape_capsule_on_screen                                      ; 39f3: 8d 92 28    ..( :28f3[1]
    bne update_escape_capsule                                         ; 39f6: d0 1c       ..  :28f6[1]   ; ALWAYS branch

.handle_starship_self_destruct
    lda escape_capsule_launched                                       ; 39f8: ad d8 1c    ... :28f8[1]
    beq return22                                                      ; 39fb: f0 67       .g  :28fb[1]
    lda self_destruct_countdown                                       ; 39fd: ad 91 28    ..( :28fd[1]
    beq skip_immense_damage                                           ; 3a00: f0 0a       ..  :2900[1]
    dec self_destruct_countdown                                       ; 3a02: ce 91 28    ..( :2902[1]
    bne skip_immense_damage                                           ; 3a05: d0 05       ..  :2905[1]
    lda #&40                                                          ; 3a07: a9 40       .@  :2907[1]
    sta damage_high                                                   ; 3a09: 8d 1e 19    ... :2909[1]
.skip_immense_damage
    lda escape_capsule_on_screen                                      ; 3a0c: ad 92 28    ..( :290c[1]
    beq return22                                                      ; 3a0f: f0 53       .S  :290f[1]
    jsr plot_escape_capsule                                           ; 3a11: 20 98 29     .) :2911[1]
.update_escape_capsule
    lda #&92                                                          ; 3a14: a9 92       ..  :2914[1]
    sta temp0_low                                                     ; 3a16: 85 80       ..  :2916[1]
    lda #&28                                                          ; 3a18: a9 28       .(  :2918[1]
    sta temp0_high                                                    ; 3a1a: 85 81       ..  :291a[1]
    ldy #1                                                            ; 3a1c: a0 01       ..  :291c[1]
    jsr update_object_position_for_starship_rotation_and_speed        ; 3a1e: 20 e6 0f     .. :291e[1]
    lda escape_capsule_launch_direction                               ; 3a21: ad 97 28    ..( :2921[1]
    clc                                                               ; 3a24: 18          .   :2924[1]
    adc starship_angle_delta                                          ; 3a25: 6d 33 0e    m3. :2925[1]
    sta escape_capsule_launch_direction                               ; 3a28: 8d 97 28    ..( :2928[1]
    lsr a                                                             ; 3a2b: 4a          J   :292b[1]
    lsr a                                                             ; 3a2c: 4a          J   :292c[1]
    lsr a                                                             ; 3a2d: 4a          J   :292d[1]
    tay                                                               ; 3a2e: a8          .   :292e[1]
    lda sine_table,y                                                  ; 3a2f: b9 58 0e    .X. :292f[1]
    clc                                                               ; 3a32: 18          .   :2932[1]
    adc escape_capsule_x_pixels                                       ; 3a33: 6d 94 28    m.( :2933[1]
    sta escape_capsule_x_pixels                                       ; 3a36: 8d 94 28    ..( :2936[1]
    lda cosine_table,y                                                ; 3a39: b9 78 0e    .x. :2939[1]
    clc                                                               ; 3a3c: 18          .   :293c[1]
    adc escape_capsule_y_pixels                                       ; 3a3d: 6d 96 28    m.( :293d[1]
    sta escape_capsule_y_pixels                                       ; 3a40: 8d 96 28    ..( :2940[1]
    sec                                                               ; 3a43: 38          8   :2943[1]
    sbc y_pixels                                                      ; 3a44: e5 7b       .{  :2944[1]
    bcs skip_inversion5                                               ; 3a46: b0 02       ..  :2946[1]
    eor #&ff                                                          ; 3a48: 49 ff       I.  :2948[1]
.skip_inversion5
    cmp #&40                                                          ; 3a4a: c9 40       .@  :294a[1]
    bcs mark_escape_capsule_as_off_screen                             ; 3a4c: b0 43       .C  :294c[1]
    lda escape_capsule_x_pixels                                       ; 3a4e: ad 94 28    ..( :294e[1]
    sec                                                               ; 3a51: 38          8   :2951[1]
    sbc x_pixels                                                      ; 3a52: e5 7a       .z  :2952[1]
    bcs skip_inversion6                                               ; 3a54: b0 02       ..  :2954[1]
    eor #&ff                                                          ; 3a56: 49 ff       I.  :2956[1]
.skip_inversion6
    cmp #&40                                                          ; 3a58: c9 40       .@  :2958[1]
    bcs mark_escape_capsule_as_off_screen                             ; 3a5a: b0 35       .5  :295a[1]
    jsr check_for_collision_with_enemy_ships                          ; 3a5c: 20 9d 15     .. :295c[1]
    bcs escape_capsule_collided_with_enemy_ship                       ; 3a5f: b0 04       ..  :295f[1]
    jsr plot_escape_capsule                                           ; 3a61: 20 98 29     .) :2961[1]
.return22
    rts                                                               ; 3a64: 60          `   :2964[1]

.escape_capsule_collided_with_enemy_ship
    lda maximum_number_of_enemy_ships                                 ; 3a65: ad 4f 0e    .O. :2965[1]
    sec                                                               ; 3a68: 38          8   :2968[1]
    sbc enemy_ships_still_to_consider                                 ; 3a69: ed 54 0e    .T. :2969[1]
    sta x_pixels                                                      ; 3a6c: 85 7a       .z  :296c[1]
    asl a                                                             ; 3a6e: 0a          .   :296e[1]
    asl a                                                             ; 3a6f: 0a          .   :296f[1]
    adc x_pixels                                                      ; 3a70: 65 7a       ez  :2970[1]
    asl a                                                             ; 3a72: 0a          .   :2972[1]
    adc x_pixels                                                      ; 3a73: 65 7a       ez  :2973[1]
    tax                                                               ; 3a75: aa          .   :2975[1]
    lda enemy_ships_energy,x                                          ; 3a76: bd 89 04    ... :2976[1]
    beq enemy_ship_is_already_exploding                               ; 3a79: f0 08       ..  :2979[1]
    lda #0                                                            ; 3a7b: a9 00       ..  :297b[1]
    sta enemy_ships_energy,x                                          ; 3a7d: 9d 89 04    ... :297d[1]
    jsr explode_enemy_ship                                            ; 3a80: 20 5d 1f     ]. :2980[1]
.enemy_ship_is_already_exploding
    ldy #0                                                            ; 3a83: a0 00       ..  :2983[1]
    sty escape_capsule_on_screen                                      ; 3a85: 8c 92 28    ..( :2985[1]
    jsr plot_expiring_torpedo                                         ; 3a88: 20 8a 13     .. :2988[1]
    lda #1                                                            ; 3a8b: a9 01       ..  :298b[1]
    sta escape_capsule_destroyed                                      ; 3a8d: 8d 90 28    ..( :298d[1]
    rts                                                               ; 3a90: 60          `   :2990[1]

.mark_escape_capsule_as_off_screen
    lda #0                                                            ; 3a91: a9 00       ..  :2991[1]
    sta escape_capsule_on_screen                                      ; 3a93: 8d 92 28    ..( :2993[1]
    rts                                                               ; 3a96: 60          `   :2996[1]

.unused58
    equb &ea                                                          ; 3a97: ea          .   :2997[1]

.plot_escape_capsule
    lda escape_capsule_x_pixels                                       ; 3a98: ad 94 28    ..( :2998[1]
    sta x_pixels                                                      ; 3a9b: 85 7a       .z  :299b[1]
    lda escape_capsule_y_pixels                                       ; 3a9d: ad 96 28    ..( :299d[1]
    sta y_pixels                                                      ; 3aa0: 85 7b       .{  :29a0[1]
    jsr eor_pixel                                                     ; 3aa2: 20 64 0f     d. :29a2[1]
    inc x_pixels                                                      ; 3aa5: e6 7a       .z  :29a5[1]
    jsr eor_pixel                                                     ; 3aa7: 20 64 0f     d. :29a7[1]
    inc y_pixels                                                      ; 3aaa: e6 7b       .{  :29aa[1]
    dec x_pixels                                                      ; 3aac: c6 7a       .z  :29ac[1]
    jsr eor_pixel                                                     ; 3aae: 20 64 0f     d. :29ae[1]
    dec x_pixels                                                      ; 3ab1: c6 7a       .z  :29b1[1]
    dec y_pixels                                                      ; 3ab3: c6 7b       .{  :29b3[1]
    jsr eor_pixel                                                     ; 3ab5: 20 64 0f     d. :29b5[1]
    inc x_pixels                                                      ; 3ab8: e6 7a       .z  :29b8[1]
    dec y_pixels                                                      ; 3aba: c6 7b       .{  :29ba[1]
    jsr eor_pixel                                                     ; 3abc: 20 64 0f     d. :29bc[1]
    rts                                                               ; 3abf: 60          `   :29bf[1]

.unused59
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 3ac0: ea ea ea... ... :29c0[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea                       ; 3acc: ea ea ea... ... :29cc[1]

.fire_enemy_torpedo_cluster
    lda enemy_ships_angle,x                                           ; 3ad4: bd 87 04    ... :29d4[1]
    lsr a                                                             ; 3ad7: 4a          J   :29d7[1]
    lsr a                                                             ; 3ad8: 4a          J   :29d8[1]
    lsr a                                                             ; 3ad9: 4a          J   :29d9[1]
    tay                                                               ; 3ada: a8          .   :29da[1]
    lda sine_table,y                                                  ; 3adb: b9 58 0e    .X. :29db[1]
    clc                                                               ; 3ade: 18          .   :29de[1]
    adc enemy_ships_x_pixels,x                                        ; 3adf: 7d 82 04    }.. :29df[1]
    sta output_fraction                                               ; 3ae2: 85 73       .s  :29e2[1]
    lda cosine_table,y                                                ; 3ae4: b9 78 0e    .x. :29e4[1]
    clc                                                               ; 3ae7: 18          .   :29e7[1]
    adc enemy_ships_x_pixels1,x                                       ; 3ae8: 7d 85 04    }.. :29e8[1]
    sta output_pixels                                                 ; 3aeb: 85 72       .r  :29eb[1]
    jsr add_single_torpedo_to_enemy_torpedo_cluster                   ; 3aed: 20 13 2a     .* :29ed[1]
    dec output_fraction                                               ; 3af0: c6 73       .s  :29f0[1]
    dec output_fraction                                               ; 3af2: c6 73       .s  :29f2[1]
    dec output_pixels                                                 ; 3af4: c6 72       .r  :29f4[1]
    dec output_pixels                                                 ; 3af6: c6 72       .r  :29f6[1]
    jsr add_single_torpedo_to_enemy_torpedo_cluster                   ; 3af8: 20 13 2a     .* :29f8[1]
    inc output_fraction                                               ; 3afb: e6 73       .s  :29fb[1]
    inc output_fraction                                               ; 3afd: e6 73       .s  :29fd[1]
    dec output_pixels                                                 ; 3aff: c6 72       .r  :29ff[1]
    dec output_pixels                                                 ; 3b01: c6 72       .r  :2a01[1]
    jsr add_single_torpedo_to_enemy_torpedo_cluster                   ; 3b03: 20 13 2a     .* :2a03[1]
    inc output_fraction                                               ; 3b06: e6 73       .s  :2a06[1]
    inc output_fraction                                               ; 3b08: e6 73       .s  :2a08[1]
    inc output_pixels                                                 ; 3b0a: e6 72       .r  :2a0a[1]
    inc output_pixels                                                 ; 3b0c: e6 72       .r  :2a0c[1]
    jsr add_single_torpedo_to_enemy_torpedo_cluster                   ; 3b0e: 20 13 2a     .* :2a0e[1]
    sec                                                               ; 3b11: 38          8   :2a11[1]
    rts                                                               ; 3b12: 60          `   :2a12[1]

.add_single_torpedo_to_enemy_torpedo_cluster
    ldy #0                                                            ; 3b13: a0 00       ..  :2a13[1]
    lda value_used_for_enemy_torpedo_ttl                              ; 3b15: ad 36 0e    .6. :2a15[1]
    sta (temp0_low),y                                                 ; 3b18: 91 80       ..  :2a18[1]
    ldy #2                                                            ; 3b1a: a0 02       ..  :2a1a[1]
    lda output_fraction                                               ; 3b1c: a5 73       .s  :2a1c[1]
    sta (temp0_low),y                                                 ; 3b1e: 91 80       ..  :2a1e[1]
    ldy #4                                                            ; 3b20: a0 04       ..  :2a20[1]
    lda output_pixels                                                 ; 3b22: a5 72       .r  :2a22[1]
    sta (temp0_low),y                                                 ; 3b24: 91 80       ..  :2a24[1]
    iny                                                               ; 3b26: c8          .   :2a26[1]   ; Y=&05
    lda enemy_ships_angle,x                                           ; 3b27: bd 87 04    ... :2a27[1]
    sta (temp0_low),y                                                 ; 3b2a: 91 80       ..  :2a2a[1]
    inc enemy_ship_fired_torpedo                                      ; 3b2c: ee dc 1c    ... :2a2c[1]
    stx temp8                                                         ; 3b2f: 86 75       .u  :2a2f[1]
    jsr plot_enemy_torpedo                                            ; 3b31: 20 11 16     .. :2a31[1]
    ldx temp8                                                         ; 3b34: a6 75       .u  :2a34[1]
    ldy #0                                                            ; 3b36: a0 00       ..  :2a36[1]
.find_free_torpedo_slot
    dec torpedoes_still_to_consider                                   ; 3b38: ce 55 0e    .U. :2a38[1]
    beq dont_add_any_more_torpedoes_to_cluster                        ; 3b3b: f0 10       ..  :2a3b[1]
    lda temp0_low                                                     ; 3b3d: a5 80       ..  :2a3d[1]
    clc                                                               ; 3b3f: 18          .   :2a3f[1]
    adc #6                                                            ; 3b40: 69 06       i.  :2a40[1]
    sta temp0_low                                                     ; 3b42: 85 80       ..  :2a42[1]
    bcc skip28                                                        ; 3b44: 90 02       ..  :2a44[1]
    inc temp0_high                                                    ; 3b46: e6 81       ..  :2a46[1]
.skip28
    lda (temp0_low),y                                                 ; 3b48: b1 80       ..  :2a48[1]
    bne find_free_torpedo_slot                                        ; 3b4a: d0 ec       ..  :2a4a[1]
    rts                                                               ; 3b4c: 60          `   :2a4c[1]

.dont_add_any_more_torpedoes_to_cluster
    pla                                                               ; 3b4d: 68          h   :2a4d[1]
    pla                                                               ; 3b4e: 68          h   :2a4e[1]
    sec                                                               ; 3b4f: 38          8   :2a4f[1]
    rts                                                               ; 3b50: 60          `   :2a50[1]

.unused60
    equb &ea, &ea, &ea, &ea, &ea                                      ; 3b51: ea ea ea... ... :2a51[1]
.angle_to_action_table
    equb 0, 0, 1, 3, 7, 5, 2, 2                                       ; 3b56: 00 00 01... ... :2a56[1]
.unused61
    equb &ea                                                          ; 3b5e: ea          .   :2a5e[1]
.enemy_ship_behaviour_routine_low_table
    equb <(enemy_ship_behaviour_routine0)                             ; 3b5f: 49          I   :2a5f[1]
    equb <(enemy_ship_behaviour_routine1)                             ; 3b60: b1          .   :2a60[1]
    equb <(enemy_ship_behaviour_routine2)                             ; 3b61: ee          .   :2a61[1]
    equb <(enemy_ship_behaviour_routine3)                             ; 3b62: 1e          .   :2a62[1]
    equb <(enemy_ship_behaviour_routine4)                             ; 3b63: 41          A   :2a63[1]
    equb <(enemy_ship_behaviour_routine5)                             ; 3b64: 6a          j   :2a64[1]
    equb <(enemy_ship_behaviour_routine6)                             ; 3b65: 2e          .   :2a65[1]
    equb <(enemy_ship_behaviour_routine7)                             ; 3b66: 61          a   :2a66[1]
    equb <(enemy_ship_behaviour_routine4)                             ; 3b67: 41          A   :2a67[1]
    equb <(enemy_ship_behaviour_routine0)                             ; 3b68: 49          I   :2a68[1]
    equb <(enemy_ship_behaviour_routine7)                             ; 3b69: 61          a   :2a69[1]
    equb <(enemy_ship_behaviour_routine5)                             ; 3b6a: 6a          j   :2a6a[1]
    equb <(enemy_ship_behaviour_routine6)                             ; 3b6b: 2e          .   :2a6b[1]
    equb <(enemy_ship_behaviour_routine2)                             ; 3b6c: ee          .   :2a6c[1]
    equb <(enemy_ship_behaviour_routine3)                             ; 3b6d: 1e          .   :2a6d[1]
    equb <(enemy_ship_behaviour_routine1)                             ; 3b6e: b1          .   :2a6e[1]
.unused62
    equb &ea                                                          ; 3b6f: ea          .   :2a6f[1]
.enemy_ship_behaviour_routine_high_table
    equb >(enemy_ship_behaviour_routine0)                             ; 3b70: 32          2   :2a70[1]
    equb >(enemy_ship_behaviour_routine1)                             ; 3b71: 32          2   :2a71[1]
    equb >(enemy_ship_behaviour_routine2)                             ; 3b72: 32          2   :2a72[1]
    equb >(enemy_ship_behaviour_routine3)                             ; 3b73: 33          3   :2a73[1]
    equb >(enemy_ship_behaviour_routine4)                             ; 3b74: 33          3   :2a74[1]
    equb >(enemy_ship_behaviour_routine5)                             ; 3b75: 33          3   :2a75[1]
    equb >(enemy_ship_behaviour_routine6)                             ; 3b76: 37          7   :2a76[1]
    equb >(enemy_ship_behaviour_routine7)                             ; 3b77: 37          7   :2a77[1]
    equb >(enemy_ship_behaviour_routine4)                             ; 3b78: 33          3   :2a78[1]
    equb >(enemy_ship_behaviour_routine0)                             ; 3b79: 32          2   :2a79[1]
    equb >(enemy_ship_behaviour_routine7)                             ; 3b7a: 37          7   :2a7a[1]
    equb >(enemy_ship_behaviour_routine5)                             ; 3b7b: 33          3   :2a7b[1]
    equb >(enemy_ship_behaviour_routine6)                             ; 3b7c: 37          7   :2a7c[1]
    equb >(enemy_ship_behaviour_routine2)                             ; 3b7d: 32          2   :2a7d[1]
    equb >(enemy_ship_behaviour_routine3)                             ; 3b7e: 33          3   :2a7e[1]
    equb >(enemy_ship_behaviour_routine1)                             ; 3b7f: 32          2   :2a7f[1]
.unused63
    equb &ea                                                          ; 3b80: ea          .   :2a80[1]
.enemy_ship_desired_velocity
    equb 0                                                            ; 3b81: 00          .   :2a81[1]
.partial_velocity_for_damaged_enemy_ships
    equb 6                                                            ; 3b82: 06          .   :2a82[1]
.desired_velocity_for_intact_enemy_ships
    equb &18                                                          ; 3b83: 18          .   :2a83[1]
.unused64
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea                            ; 3b84: ea ea ea... ... :2a84[1]

.enemy_ship_defensive_behaviour_handling
    lda enemy_ships_on_screen,x                                       ; 3b8b: bd 80 04    ... :2a8b[1]
    bne unset_retreating_flags                                        ; 3b8e: d0 5f       ._  :2a8e[1]
    lda enemy_ships_x_pixels,x                                        ; 3b90: bd 82 04    ... :2a90[1]
    sta temp10                                                        ; 3b93: 85 77       .w  :2a93[1]
    lda enemy_ships_x_pixels1,x                                       ; 3b95: bd 85 04    ... :2a95[1]
    sta temp9                                                         ; 3b98: 85 76       .v  :2a98[1]
    jsr calculate_enemy_ship_angle_to_starship                        ; 3b9a: 20 58 27     X' :2a9a[1]
    ldy enemy_ships_temporary_behaviour_flags,x                       ; 3b9d: bc 88 04    ... :2a9d[1]
    bmi skip_retreating_because_of_damage                             ; 3ba0: 30 10       0.  :2aa0[1]
    lda enemy_ships_flags_or_explosion_timer,x                        ; 3ba2: bd 09 04    ... :2aa2[1]
    and #&40                                                          ; 3ba5: 29 40       )@  :2aa5[1]
    beq skip_retreating_because_of_damage                             ; 3ba7: f0 09       ..  :2aa7[1]
    tya                                                               ; 3ba9: 98          .   :2aa9[1]
    and #&0f                                                          ; 3baa: 29 0f       ).  :2aaa[1]
    beq skip_retreating_because_of_damage                             ; 3bac: f0 04       ..  :2aac[1]
    tya                                                               ; 3bae: 98          .   :2aae[1]
    ora #&80                                                          ; 3baf: 09 80       ..  :2aaf[1]
    tay                                                               ; 3bb1: a8          .   :2ab1[1]
.skip_retreating_because_of_damage
    lda enemy_ships_flags_or_explosion_timer,x                        ; 3bb2: bd 09 04    ... :2ab2[1]
    and #&20                                                          ; 3bb5: 29 20       )   :2ab5[1]
    beq skip_retreating_because_of_angle                              ; 3bb7: f0 26       .&  :2ab7[1]
    tya                                                               ; 3bb9: 98          .   :2ab9[1]
    and #&40                                                          ; 3bba: 29 40       )@  :2aba[1]
    bne already_retreating_because_of_angle                           ; 3bbc: d0 11       ..  :2abc[1]
    lda enemy_ship_desired_angle_divided_by_eight                     ; 3bbe: ad 55 26    .U& :2abe[1]
    clc                                                               ; 3bc1: 18          .   :2ac1[1]
    adc #3                                                            ; 3bc2: 69 03       i.  :2ac2[1]
    and #&1f                                                          ; 3bc4: 29 1f       ).  :2ac4[1]
    cmp #7                                                            ; 3bc6: c9 07       ..  :2ac6[1]
    bcs skip_retreating_because_of_angle                              ; 3bc8: b0 15       ..  :2ac8[1]
    tya                                                               ; 3bca: 98          .   :2aca[1]
    ora #&40                                                          ; 3bcb: 09 40       .@  :2acb[1]
    bne set_temporary_behaviour_flags                                 ; 3bcd: d0 11       ..  :2acd[1]   ; ALWAYS branch

.already_retreating_because_of_angle
    lda enemy_ship_desired_angle_divided_by_eight                     ; 3bcf: ad 55 26    .U& :2acf[1]
    clc                                                               ; 3bd2: 18          .   :2ad2[1]
    adc #5                                                            ; 3bd3: 69 05       i.  :2ad3[1]
    and #&1f                                                          ; 3bd5: 29 1f       ).  :2ad5[1]
    cmp #&0b                                                          ; 3bd7: c9 0b       ..  :2ad7[1]
    bcc skip_retreating_because_of_angle                              ; 3bd9: 90 04       ..  :2ad9[1]
    tya                                                               ; 3bdb: 98          .   :2adb[1]
    and #&bf                                                          ; 3bdc: 29 bf       ).  :2adc[1]
    tay                                                               ; 3bde: a8          .   :2ade[1]
.skip_retreating_because_of_angle
    tya                                                               ; 3bdf: 98          .   :2adf[1]
.set_temporary_behaviour_flags
    sta enemy_ships_temporary_behaviour_flags,x                       ; 3be0: 9d 88 04    ... :2ae0[1]
    and #&c0                                                          ; 3be3: 29 c0       ).  :2ae3[1]
    beq leave_after_clearing_carry1                                   ; 3be5: f0 10       ..  :2ae5[1]
    jsr turn_enemy_ship_towards_desired_angle                         ; 3be7: 20 cf 2b     .+ :2ae7[1]
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 3bea: 20 3a 2c     :, :2aea[1]
    sec                                                               ; 3bed: 38          8   :2aed[1]
    rts                                                               ; 3bee: 60          `   :2aee[1]

.unset_retreating_flags
    lda enemy_ships_temporary_behaviour_flags,x                       ; 3bef: bd 88 04    ... :2aef[1]
    and #&3f                                                          ; 3bf2: 29 3f       )?  :2af2[1]
    sta enemy_ships_temporary_behaviour_flags,x                       ; 3bf4: 9d 88 04    ... :2af4[1]
.leave_after_clearing_carry1
    clc                                                               ; 3bf7: 18          .   :2af7[1]
    rts                                                               ; 3bf8: 60          `   :2af8[1]

.unused65
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea                       ; 3bf9: ea ea ea... ... :2af9[1]

.get_rectilinear_distance_from_centre_of_screen_accounting_for_starship_velocity
    lda enemy_ships_x_pixels,x                                        ; 3c01: bd 82 04    ... :2b01[1]
    bmi skip_inversion7                                               ; 3c04: 30 02       0.  :2b04[1]
    eor #&ff                                                          ; 3c06: 49 ff       I.  :2b06[1]
.skip_inversion7
    sta x_pixels                                                      ; 3c08: 85 7a       .z  :2b08[1]
    lda starship_velocity_low                                         ; 3c0a: ad 01 0f    ... :2b0a[1]
    sta y_pixels                                                      ; 3c0d: 85 7b       .{  :2b0d[1]
    lda starship_velocity_high                                        ; 3c0f: ad 00 0f    ... :2b0f[1]
    asl y_pixels                                                      ; 3c12: 06 7b       .{  :2b12[1]
    rol a                                                             ; 3c14: 2a          *   :2b14[1]
    asl y_pixels                                                      ; 3c15: 06 7b       .{  :2b15[1]
    rol a                                                             ; 3c17: 2a          *   :2b17[1]
    asl y_pixels                                                      ; 3c18: 06 7b       .{  :2b18[1]
    rol a                                                             ; 3c1a: 2a          *   :2b1a[1]
    adc enemy_ships_x_pixels1,x                                       ; 3c1b: 7d 85 04    }.. :2b1b[1]
    bmi skip_inversion8                                               ; 3c1e: 30 02       0.  :2b1e[1]
    eor #&ff                                                          ; 3c20: 49 ff       I.  :2b20[1]
.skip_inversion8
    clc                                                               ; 3c22: 18          .   :2b22[1]
    adc x_pixels                                                      ; 3c23: 65 7a       ez  :2b23[1]
    rts                                                               ; 3c25: 60          `   :2b25[1]

.get_rectilinear_distance_from_centre_of_screen
    lda enemy_ships_x_pixels,x                                        ; 3c26: bd 82 04    ... :2b26[1]
    bmi skip_inversion_x4                                             ; 3c29: 30 02       0.  :2b29[1]
    eor #&ff                                                          ; 3c2b: 49 ff       I.  :2b2b[1]
.skip_inversion_x4
    sta x_pixels                                                      ; 3c2d: 85 7a       .z  :2b2d[1]
    lda enemy_ships_x_pixels1,x                                       ; 3c2f: bd 85 04    ... :2b2f[1]
    bmi skip_inversion_y4                                             ; 3c32: 30 02       0.  :2b32[1]
    eor #&ff                                                          ; 3c34: 49 ff       I.  :2b34[1]
.skip_inversion_y4
    clc                                                               ; 3c36: 18          .   :2b36[1]
    adc x_pixels                                                      ; 3c37: 65 7a       ez  :2b37[1]
    rts                                                               ; 3c39: 60          `   :2b39[1]

.unused66
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea                       ; 3c3a: ea ea ea... ... :2b3a[1]
.turn_enemy_ship_towards_starship_using_pixels_or_screens_unused
    equb &bd, &80, 4, &f0, &0d                                        ; 3c42: bd 80 04... ... :2b42[1]

.turn_enemy_ship_towards_starship_using_screens
    lda enemy_ships_x_screens,x                                       ; 3c47: bd 83 04    ... :2b47[1]
    sta temp10                                                        ; 3c4a: 85 77       .w  :2b4a[1]
    lda enemy_ships_x_screens1,x                                      ; 3c4c: bd 86 04    ... :2b4c[1]
    sta temp9                                                         ; 3c4f: 85 76       .v  :2b4f[1]
    jmp turn_enemy_ship_towards_starship                              ; 3c51: 4c 5e 2b    L^+ :2b51[1]

.turn_enemy_ship_towards_starship_using_pixels_unused
    equb &bd, &82, 4, &85, &77, &bd, &85, 4, &85, &76                 ; 3c54: bd 82 04... ... :2b54[1]

.turn_enemy_ship_towards_starship
    jsr calculate_enemy_ship_angle_to_starship                        ; 3c5e: 20 58 27     X' :2b5e[1]
.turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity
    lda enemy_ship_desired_angle_divided_by_eight                     ; 3c61: ad 55 26    .U& :2b61[1]
    clc                                                               ; 3c64: 18          .   :2b64[1]
    adc #&10                                                          ; 3c65: 69 10       i.  :2b65[1]
    and #&1f                                                          ; 3c67: 29 1f       ).  :2b67[1]
    sta enemy_ship_desired_angle_divided_by_eight                     ; 3c69: 8d 55 26    .U& :2b69[1]
    cmp #&11                                                          ; 3c6c: c9 11       ..  :2b6c[1]
    bcc skip_inversion9                                               ; 3c6e: 90 05       ..  :2b6e[1]
    eor #&1f                                                          ; 3c70: 49 1f       I.  :2b70[1]
    adc #0                                                            ; 3c72: 69 00       i.  :2b72[1]
    sec                                                               ; 3c74: 38          8   :2b74[1]
.skip_inversion9
    ror temp8                                                         ; 3c75: 66 75       fu  :2b75[1]
    tay                                                               ; 3c77: a8          .   :2b77[1]
    lda sine_table,y                                                  ; 3c78: b9 58 0e    .X. :2b78[1]
    sta y_pixels                                                      ; 3c7b: 85 7b       .{  :2b7b[1]
    lda starship_velocity_low                                         ; 3c7d: ad 01 0f    ... :2b7d[1]
    sta x_pixels                                                      ; 3c80: 85 7a       .z  :2b80[1]
    lda starship_velocity_high                                        ; 3c82: ad 00 0f    ... :2b82[1]
    asl x_pixels                                                      ; 3c85: 06 7a       .z  :2b85[1]
    rol a                                                             ; 3c87: 2a          *   :2b87[1]
    asl x_pixels                                                      ; 3c88: 06 7a       .z  :2b88[1]
    rol a                                                             ; 3c8a: 2a          *   :2b8a[1]
    asl x_pixels                                                      ; 3c8b: 06 7a       .z  :2b8b[1]
    rol a                                                             ; 3c8d: 2a          *   :2b8d[1]
    sta x_pixels                                                      ; 3c8e: 85 7a       .z  :2b8e[1]
    lda #0                                                            ; 3c90: a9 00       ..  :2b90[1]
    ldy #3                                                            ; 3c92: a0 03       ..  :2b92[1]
.loop_over_bits_of_sine3
    lsr y_pixels                                                      ; 3c94: 46 7b       F{  :2b94[1]
    bcc sine_bit_unset3                                               ; 3c96: 90 03       ..  :2b96[1]
    clc                                                               ; 3c98: 18          .   :2b98[1]
    adc x_pixels                                                      ; 3c99: 65 7a       ez  :2b99[1]
.sine_bit_unset3
    ror a                                                             ; 3c9b: 6a          j   :2b9b[1]
    dey                                                               ; 3c9c: 88          .   :2b9c[1]
    bne loop_over_bits_of_sine3                                       ; 3c9d: d0 f5       ..  :2b9d[1]
    lsr a                                                             ; 3c9f: 4a          J   :2b9f[1]
    cmp #2                                                            ; 3ca0: c9 02       ..  :2ba0[1]
    bcc finished_calculating_change_in_angle                          ; 3ca2: 90 15       ..  :2ba2[1]
    iny                                                               ; 3ca4: c8          .   :2ba4[1]
    cmp #5                                                            ; 3ca5: c9 05       ..  :2ba5[1]
    bcc finished_calculating_change_in_angle                          ; 3ca7: 90 10       ..  :2ba7[1]
    iny                                                               ; 3ca9: c8          .   :2ba9[1]
    cmp #8                                                            ; 3caa: c9 08       ..  :2baa[1]
    bcc finished_calculating_change_in_angle                          ; 3cac: 90 0b       ..  :2bac[1]
    iny                                                               ; 3cae: c8          .   :2bae[1]
    cmp #&0b                                                          ; 3caf: c9 0b       ..  :2baf[1]
    bcc finished_calculating_change_in_angle                          ; 3cb1: 90 06       ..  :2bb1[1]
    iny                                                               ; 3cb3: c8          .   :2bb3[1]
    cmp #&0e                                                          ; 3cb4: c9 0e       ..  :2bb4[1]
    bcc finished_calculating_change_in_angle                          ; 3cb6: 90 01       ..  :2bb6[1]
    iny                                                               ; 3cb8: c8          .   :2bb8[1]
.finished_calculating_change_in_angle
    tya                                                               ; 3cb9: 98          .   :2bb9[1]
    asl temp8                                                         ; 3cba: 06 75       .u  :2bba[1]
    bcc skip_uninversion3                                             ; 3cbc: 90 04       ..  :2bbc[1]
    eor #&1f                                                          ; 3cbe: 49 1f       I.  :2bbe[1]
    adc #0                                                            ; 3cc0: 69 00       i.  :2bc0[1]
.skip_uninversion3
    sta y_pixels                                                      ; 3cc2: 85 7b       .{  :2bc2[1]
    lda enemy_ship_desired_angle_divided_by_eight                     ; 3cc4: ad 55 26    .U& :2bc4[1]
    sec                                                               ; 3cc7: 38          8   :2bc7[1]
    sbc y_pixels                                                      ; 3cc8: e5 7b       .{  :2bc8[1]
    and #&1f                                                          ; 3cca: 29 1f       ).  :2bca[1]
    sta enemy_ship_desired_angle_divided_by_eight                     ; 3ccc: 8d 55 26    .U& :2bcc[1]
.turn_enemy_ship_towards_desired_angle
    lda enemy_ships_angle,x                                           ; 3ccf: bd 87 04    ... :2bcf[1]
    lsr a                                                             ; 3cd2: 4a          J   :2bd2[1]
    lsr a                                                             ; 3cd3: 4a          J   :2bd3[1]
    lsr a                                                             ; 3cd4: 4a          J   :2bd4[1]
    sec                                                               ; 3cd5: 38          8   :2bd5[1]
    sbc enemy_ship_desired_angle_divided_by_eight                     ; 3cd6: ed 55 26    .U& :2bd6[1]
    beq no_change_needed_to_enemy_ship_angle                          ; 3cd9: f0 35       .5  :2bd9[1]
    lsr a                                                             ; 3cdb: 4a          J   :2bdb[1]
    lsr a                                                             ; 3cdc: 4a          J   :2bdc[1]
    and #7                                                            ; 3cdd: 29 07       ).  :2bdd[1]
    tay                                                               ; 3cdf: a8          .   :2bdf[1]
    lda angle_to_action_table,y                                       ; 3ce0: b9 56 2a    .V* :2be0[1]
    sta y_pixels                                                      ; 3ce3: 85 7b       .{  :2be3[1]
    lsr y_pixels                                                      ; 3ce5: 46 7b       F{  :2be5[1]
    bcc skip_velocity_decrease                                        ; 3ce7: 90 0a       ..  :2be7[1]
    jsr decrease_enemy_ship_velocity                                  ; 3ce9: 20 29 2c     ), :2be9[1]
    lsr y_pixels                                                      ; 3cec: 46 7b       F{  :2bec[1]
    bcc skip_velocity_decrease                                        ; 3cee: 90 03       ..  :2bee[1]
    jsr decrease_enemy_ship_velocity                                  ; 3cf0: 20 29 2c     ), :2bf0[1]
.skip_velocity_decrease
    lsr y_pixels                                                      ; 3cf3: 46 7b       F{  :2bf3[1]
    bcs increase_angle                                                ; 3cf5: b0 09       ..  :2bf5[1]
    dec enemy_ships_angle,x                                           ; 3cf7: de 87 04    ... :2bf7[1]
    dec enemy_ships_angle,x                                           ; 3cfa: de 87 04    ... :2bfa[1]
    jmp continue1                                                     ; 3cfd: 4c 06 2c    L., :2bfd[1]

.increase_angle
    inc enemy_ships_angle,x                                           ; 3d00: fe 87 04    ... :2c00[1]
    inc enemy_ships_angle,x                                           ; 3d03: fe 87 04    ... :2c03[1]
.continue1
    lda enemy_ships_angle,x                                           ; 3d06: bd 87 04    ... :2c06[1]
    lsr a                                                             ; 3d09: 4a          J   :2c09[1]
    lsr a                                                             ; 3d0a: 4a          J   :2c0a[1]
    lsr a                                                             ; 3d0b: 4a          J   :2c0b[1]
    sec                                                               ; 3d0c: 38          8   :2c0c[1]
    sbc enemy_ship_desired_angle_divided_by_eight                     ; 3d0d: ed 55 26    .U& :2c0d[1]
.no_change_needed_to_enemy_ship_angle
    rts                                                               ; 3d10: 60          `   :2c10[1]

.unused67
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea                       ; 3d11: ea ea ea... ... :2c11[1]

.unused_routine_to_turn_enemy_ship_on_screen_towards_starship
    lda enemy_ships_x_pixels,x                                        ; 3d19: bd 82 04    ... :2c19[1]
    sta temp10                                                        ; 3d1c: 85 77       .w  :2c1c[1]
    lda enemy_ships_x_pixels1,x                                       ; 3d1e: bd 85 04    ... :2c1e[1]
    sta temp9                                                         ; 3d21: 85 76       .v  :2c21[1]
    jsr calculate_enemy_ship_angle_to_starship                        ; 3d23: 20 58 27     X' :2c23[1]
    jmp turn_enemy_ship_towards_desired_angle                         ; 3d26: 4c cf 2b    L.+ :2c26[1]

.decrease_enemy_ship_velocity
    lda enemy_ships_velocity,x                                        ; 3d29: bd 08 04    ... :2c29[1]
    beq return23                                                      ; 3d2c: f0 06       ..  :2c2c[1]
    sec                                                               ; 3d2e: 38          8   :2c2e[1]
    sbc #1                                                            ; 3d2f: e9 01       ..  :2c2f[1]
    sta enemy_ships_velocity,x                                        ; 3d31: 9d 08 04    ... :2c31[1]
.return23
    rts                                                               ; 3d34: 60          `   :2c34[1]

.unused68
    equb &ea, &ea, &ea, &ea, &ea                                      ; 3d35: ea ea ea... ... :2c35[1]

.increase_or_decrease_enemy_ship_velocity_towards_desired_velocity
    lda enemy_ship_desired_velocity                                   ; 3d3a: ad 81 2a    ..* :2c3a[1]
    cmp enemy_ships_velocity,x                                        ; 3d3d: dd 08 04    ... :2c3d[1]
    beq return24                                                      ; 3d40: f0 0e       ..  :2c40[1]
    bcs increase                                                      ; 3d42: b0 06       ..  :2c42[1]
    dec enemy_ships_velocity,x                                        ; 3d44: de 08 04    ... :2c44[1]
    jmp compare_velocity                                              ; 3d47: 4c 4d 2c    LM, :2c47[1]

.increase
    inc enemy_ships_velocity,x                                        ; 3d4a: fe 08 04    ... :2c4a[1]
.compare_velocity
    cmp enemy_ships_velocity,x                                        ; 3d4d: dd 08 04    ... :2c4d[1]
.return24
    rts                                                               ; 3d50: 60          `   :2c50[1]

.unused69
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, 0, 0, 0, 0, 0, 0, 0  ; 3d51: ea ea ea... ... :2c51[1]
.starship_sprite_1
    equb %01000001                                                    ; 3d60: 41          A   :2c60[1]
    equb %01000001                                                    ; 3d61: 41          A   :2c61[1]
    equb %01000001                                                    ; 3d62: 41          A   :2c62[1]
    equb %01000011                                                    ; 3d63: 43          C   :2c63[1]
    equb %11100111                                                    ; 3d64: e7          .   :2c64[1]
    equb %10100111                                                    ; 3d65: a7          .   :2c65[1]
    equb %10100101                                                    ; 3d66: a5          .   :2c66[1]
    equb %10100011                                                    ; 3d67: a3          .   :2c67[1]
    equb %00000100                                                    ; 3d68: 04          .   :2c68[1]
    equb %00000100                                                    ; 3d69: 04          .   :2c69[1]
    equb %00000100                                                    ; 3d6a: 04          .   :2c6a[1]
    equb %10000100                                                    ; 3d6b: 84          .   :2c6b[1]
    equb %11001110                                                    ; 3d6c: ce          .   :2c6c[1]
    equb %11001010                                                    ; 3d6d: ca          .   :2c6d[1]
    equb %01001010                                                    ; 3d6e: 4a          J   :2c6e[1]
    equb %10001010                                                    ; 3d6f: 8a          .   :2c6f[1]
    equb %11111011                                                    ; 3d70: fb          .   :2c70[1]
    equb %01001111                                                    ; 3d71: 4f          O   :2c71[1]
    equb %01000011                                                    ; 3d72: 43          C   :2c72[1]
    equb %00000101                                                    ; 3d73: 05          .   :2c73[1]
    equb %00001101                                                    ; 3d74: 0d          .   :2c74[1]
    equb %00001101                                                    ; 3d75: 0d          .   :2c75[1]
    equb %00001101                                                    ; 3d76: 0d          .   :2c76[1]
    equb %00000111                                                    ; 3d77: 07          .   :2c77[1]
    equb %10111110                                                    ; 3d78: be          .   :2c78[1]
    equb %11100100                                                    ; 3d79: e4          .   :2c79[1]
    equb %10000100                                                    ; 3d7a: 84          .   :2c7a[1]
    equb %01000000                                                    ; 3d7b: 40          @   :2c7b[1]
    equb %01100000                                                    ; 3d7c: 60          `   :2c7c[1]
    equb %01100000                                                    ; 3d7d: 60          `   :2c7d[1]
    equb %01100000                                                    ; 3d7e: 60          `   :2c7e[1]
    equb %11000000                                                    ; 3d7f: c0          .   :2c7f[1]
.starship_sprite_2
    equb %00000011                                                    ; 3d80: 03          .   :2c80[1]
    equb %00001100                                                    ; 3d81: 0c          .   :2c81[1]
    equb %00010000                                                    ; 3d82: 10          .   :2c82[1]
    equb %00010011                                                    ; 3d83: 13          .   :2c83[1]
    equb %00100100                                                    ; 3d84: 24          $   :2c84[1]
    equb %00100101                                                    ; 3d85: 25          %   :2c85[1]
    equb %00100100                                                    ; 3d86: 24          $   :2c86[1]
    equb %00010011                                                    ; 3d87: 13          .   :2c87[1]
    equb %10000000                                                    ; 3d88: 80          .   :2c88[1]
    equb %01100000                                                    ; 3d89: 60          `   :2c89[1]
    equb %00010000                                                    ; 3d8a: 10          .   :2c8a[1]
    equb %10010000                                                    ; 3d8b: 90          .   :2c8b[1]
    equb %01001000                                                    ; 3d8c: 48          H   :2c8c[1]
    equb %01001000                                                    ; 3d8d: 48          H   :2c8d[1]
    equb %01001000                                                    ; 3d8e: 48          H   :2c8e[1]
    equb %10010000                                                    ; 3d8f: 90          .   :2c8f[1]
    equb %00010000                                                    ; 3d90: 10          .   :2c90[1]
    equb %01001100                                                    ; 3d91: 4c          L   :2c91[1]
    equb %11100011                                                    ; 3d92: e3          .   :2c92[1]
    equb %11100110                                                    ; 3d93: e6          .   :2c93[1]
    equb %11111100                                                    ; 3d94: fc          .   :2c94[1]
    equb %11100110                                                    ; 3d95: e6          .   :2c95[1]
    equb %11100011                                                    ; 3d96: e3          .   :2c96[1]
    equb %01000000                                                    ; 3d97: 40          @   :2c97[1]
    equb %00010000                                                    ; 3d98: 10          .   :2c98[1]
    equb %01100100                                                    ; 3d99: 64          d   :2c99[1]
    equb %10001110                                                    ; 3d9a: 8e          .   :2c9a[1]
    equb %11001110                                                    ; 3d9b: ce          .   :2c9b[1]
    equb %01111110                                                    ; 3d9c: 7e          ~   :2c9c[1]
    equb %11001110                                                    ; 3d9d: ce          .   :2c9d[1]
    equb %10001110                                                    ; 3d9e: 8e          .   :2c9e[1]
    equb %00000100                                                    ; 3d9f: 04          .   :2c9f[1]
.starship_sprite_3
    equb %00000001                                                    ; 3da0: 01          .   :2ca0[1]
    equb %00000111                                                    ; 3da1: 07          .   :2ca1[1]
    equb %01001100                                                    ; 3da2: 4c          L   :2ca2[1]
    equb %01001100                                                    ; 3da3: 4c          L   :2ca3[1]
    equb %01000111                                                    ; 3da4: 47          G   :2ca4[1]
    equb %01000001                                                    ; 3da5: 41          A   :2ca5[1]
    equb %11100010                                                    ; 3da6: e2          .   :2ca6[1]
    equb %10100001                                                    ; 3da7: a1          .   :2ca7[1]
    equb %00000000                                                    ; 3da8: 00          .   :2ca8[1]
    equb %11000000                                                    ; 3da9: c0          .   :2ca9[1]
    equb %01100100                                                    ; 3daa: 64          d   :2caa[1]
    equb %01100100                                                    ; 3dab: 64          d   :2cab[1]
    equb %11000100                                                    ; 3dac: c4          .   :2cac[1]
    equb %00000100                                                    ; 3dad: 04          .   :2cad[1]
    equb %10001110                                                    ; 3dae: 8e          .   :2cae[1]
    equb %00001010                                                    ; 3daf: 0a          .   :2caf[1]
    equb %10100010                                                    ; 3db0: a2          .   :2cb0[1]
    equb %10100001                                                    ; 3db1: a1          .   :2cb1[1]
    equb %10010011                                                    ; 3db2: 93          .   :2cb2[1]
    equb %10011100                                                    ; 3db3: 9c          .   :2cb3[1]
    equb %10101000                                                    ; 3db4: a8          .   :2cb4[1]
    equb %01000100                                                    ; 3db5: 44          D   :2cb5[1]
    equb %00000010                                                    ; 3db6: 02          .   :2cb6[1]
    equb %00000001                                                    ; 3db7: 01          .   :2cb7[1]
    equb %10001010                                                    ; 3db8: 8a          .   :2cb8[1]
    equb %00001010                                                    ; 3db9: 0a          .   :2cb9[1]
    equb %10010010                                                    ; 3dba: 92          .   :2cba[1]
    equb %01110010                                                    ; 3dbb: 72          r   :2cbb[1]
    equb %00101010                                                    ; 3dbc: 2a          *   :2cbc[1]
    equb %01000100                                                    ; 3dbd: 44          D   :2cbd[1]
    equb %10000000                                                    ; 3dbe: 80          .   :2cbe[1]
    equb %00000000                                                    ; 3dbf: 00          .   :2cbf[1]
.starship_sprite_4
    equb %00000001                                                    ; 3dc0: 01          .   :2cc0[1]
    equb %00000001                                                    ; 3dc1: 01          .   :2cc1[1]
    equb %00000011                                                    ; 3dc2: 03          .   :2cc2[1]
    equb %11000011                                                    ; 3dc3: c3          .   :2cc3[1]
    equb %11000110                                                    ; 3dc4: c6          .   :2cc4[1]
    equb %11000110                                                    ; 3dc5: c6          .   :2cc5[1]
    equb %11001100                                                    ; 3dc6: cc          .   :2cc6[1]
    equb %11001101                                                    ; 3dc7: cd          .   :2cc7[1]
    equb %00000000                                                    ; 3dc8: 00          .   :2cc8[1]
    equb %00000000                                                    ; 3dc9: 00          .   :2cc9[1]
    equb %10000000                                                    ; 3dca: 80          .   :2cca[1]
    equb %10000110                                                    ; 3dcb: 86          .   :2ccb[1]
    equb %11000110                                                    ; 3dcc: c6          .   :2ccc[1]
    equb %11000110                                                    ; 3dcd: c6          .   :2ccd[1]
    equb %01100110                                                    ; 3dce: 66          f   :2cce[1]
    equb %01100110                                                    ; 3dcf: 66          f   :2ccf[1]
    equb %11111001                                                    ; 3dd0: f9          .   :2cd0[1]
    equb %11000011                                                    ; 3dd1: c3          .   :2cd1[1]
    equb %11111100                                                    ; 3dd2: fc          .   :2cd2[1]
    equb %11000110                                                    ; 3dd3: c6          .   :2cd3[1]
    equb %11110011                                                    ; 3dd4: f3          .   :2cd4[1]
    equb %11011001                                                    ; 3dd5: d9          .   :2cd5[1]
    equb %11001101                                                    ; 3dd6: cd          .   :2cd6[1]
    equb %00000111                                                    ; 3dd7: 07          .   :2cd7[1]
    equb %00111110                                                    ; 3dd8: 3e          >   :2cd8[1]
    equb %10000110                                                    ; 3dd9: 86          .   :2cd9[1]
    equb %01111110                                                    ; 3dda: 7e          ~   :2cda[1]
    equb %11000110                                                    ; 3ddb: c6          .   :2cdb[1]
    equb %10011110                                                    ; 3ddc: 9e          .   :2cdc[1]
    equb %00110110                                                    ; 3ddd: 36          6   :2cdd[1]
    equb %01100110                                                    ; 3dde: 66          f   :2cde[1]
    equb %11000000                                                    ; 3ddf: c0          .   :2cdf[1]
.starship_sprite_5
    equb %00000000                                                    ; 3de0: 00          .   :2ce0[1]
    equb %00000011                                                    ; 3de1: 03          .   :2ce1[1]
    equb %00000100                                                    ; 3de2: 04          .   :2ce2[1]
    equb %00001000                                                    ; 3de3: 08          .   :2ce3[1]
    equb %00010001                                                    ; 3de4: 11          .   :2ce4[1]
    equb %00010010                                                    ; 3de5: 12          .   :2ce5[1]
    equb %00010001                                                    ; 3de6: 11          .   :2ce6[1]
    equb %01001000                                                    ; 3de7: 48          H   :2ce7[1]
    equb %00000000                                                    ; 3de8: 00          .   :2ce8[1]
    equb %10000000                                                    ; 3de9: 80          .   :2ce9[1]
    equb %01000000                                                    ; 3dea: 40          @   :2cea[1]
    equb %00100000                                                    ; 3deb: 20              :2ceb[1]
    equb %00010000                                                    ; 3dec: 10          .   :2cec[1]
    equb %10010000                                                    ; 3ded: 90          .   :2ced[1]
    equb %00010000                                                    ; 3dee: 10          .   :2cee[1]
    equb %00100100                                                    ; 3def: 24          $   :2cef[1]
    equb %11100100                                                    ; 3df0: e4          .   :2cf0[1]
    equb %11100011                                                    ; 3df1: e3          .   :2cf1[1]
    equb %11010010                                                    ; 3df2: d2          .   :2cf2[1]
    equb %11011010                                                    ; 3df3: da          .   :2cf3[1]
    equb %11101110                                                    ; 3df4: ee          .   :2cf4[1]
    equb %11100100                                                    ; 3df5: e4          .   :2cf5[1]
    equb %01000010                                                    ; 3df6: 42          B   :2cf6[1]
    equb %01000001                                                    ; 3df7: 41          A   :2cf7[1]
    equb %01001110                                                    ; 3df8: 4e          N   :2cf8[1]
    equb %10001110                                                    ; 3df9: 8e          .   :2cf9[1]
    equb %10010110                                                    ; 3dfa: 96          .   :2cfa[1]
    equb %10110110                                                    ; 3dfb: b6          .   :2cfb[1]
    equb %11101110                                                    ; 3dfc: ee          .   :2cfc[1]
    equb %01001110                                                    ; 3dfd: 4e          N   :2cfd[1]
    equb %10000100                                                    ; 3dfe: 84          .   :2cfe[1]
    equb %00000100                                                    ; 3dff: 04          .   :2cff[1]
.starship_sprite_6
    equb %00000011                                                    ; 3e00: 03          .   :2d00[1]
    equb %00000110                                                    ; 3e01: 06          .   :2d01[1]
    equb %01001100                                                    ; 3e02: 4c          L   :2d02[1]
    equb %01000111                                                    ; 3e03: 47          G   :2d03[1]
    equb %01000010                                                    ; 3e04: 42          B   :2d04[1]
    equb %11100010                                                    ; 3e05: e2          .   :2d05[1]
    equb %10100010                                                    ; 3e06: a2          .   :2d06[1]
    equb %10100010                                                    ; 3e07: a2          .   :2d07[1]
    equb %10000000                                                    ; 3e08: 80          .   :2d08[1]
    equb %11000000                                                    ; 3e09: c0          .   :2d09[1]
    equb %01100100                                                    ; 3e0a: 64          d   :2d0a[1]
    equb %11000100                                                    ; 3e0b: c4          .   :2d0b[1]
    equb %10000100                                                    ; 3e0c: 84          .   :2d0c[1]
    equb %10001110                                                    ; 3e0d: 8e          .   :2d0d[1]
    equb %10001010                                                    ; 3e0e: 8a          .   :2d0e[1]
    equb %10001010                                                    ; 3e0f: 8a          .   :2d0f[1]
    equb %10010010                                                    ; 3e10: 92          .   :2d10[1]
    equb %10001010                                                    ; 3e11: 8a          .   :2d11[1]
    equb %10000101                                                    ; 3e12: 85          .   :2d12[1]
    equb %10010001                                                    ; 3e13: 91          .   :2d13[1]
    equb %10101001                                                    ; 3e14: a9          .   :2d14[1]
    equb %01000101                                                    ; 3e15: 45          E   :2d15[1]
    equb %01000011                                                    ; 3e16: 43          C   :2d16[1]
    equb %00000001                                                    ; 3e17: 01          .   :2d17[1]
    equb %10010010                                                    ; 3e18: 92          .   :2d18[1]
    equb %10100010                                                    ; 3e19: a2          .   :2d19[1]
    equb %01000010                                                    ; 3e1a: 42          B   :2d1a[1]
    equb %00010010                                                    ; 3e1b: 12          .   :2d1b[1]
    equb %00101010                                                    ; 3e1c: 2a          *   :2d1c[1]
    equb %01000100                                                    ; 3e1d: 44          D   :2d1d[1]
    equb %10000100                                                    ; 3e1e: 84          .   :2d1e[1]
    equb %00000000                                                    ; 3e1f: 00          .   :2d1f[1]
.starship_sprite_7
    equb %00000001                                                    ; 3e20: 01          .   :2d20[1]
    equb %00000001                                                    ; 3e21: 01          .   :2d21[1]
    equb %01000011                                                    ; 3e22: 43          C   :2d22[1]
    equb %01000011                                                    ; 3e23: 43          C   :2d23[1]
    equb %01000110                                                    ; 3e24: 46          F   :2d24[1]
    equb %11100110                                                    ; 3e25: e6          .   :2d25[1]
    equb %11101101                                                    ; 3e26: ed          .   :2d26[1]
    equb %11101101                                                    ; 3e27: ed          .   :2d27[1]
    equb %00000000                                                    ; 3e28: 00          .   :2d28[1]
    equb %00000000                                                    ; 3e29: 00          .   :2d29[1]
    equb %10000100                                                    ; 3e2a: 84          .   :2d2a[1]
    equb %10000100                                                    ; 3e2b: 84          .   :2d2b[1]
    equb %11000100                                                    ; 3e2c: c4          .   :2d2c[1]
    equb %11001110                                                    ; 3e2d: ce          .   :2d2d[1]
    equb %01101110                                                    ; 3e2e: 6e          n   :2d2e[1]
    equb %01101110                                                    ; 3e2f: 6e          n   :2d2f[1]
    equb %11111001                                                    ; 3e30: f9          .   :2d30[1]
    equb %11000001                                                    ; 3e31: c1          .   :2d31[1]
    equb %11111101                                                    ; 3e32: fd          .   :2d32[1]
    equb %11000011                                                    ; 3e33: c3          .   :2d33[1]
    equb %11111001                                                    ; 3e34: f9          .   :2d34[1]
    equb %11101101                                                    ; 3e35: ed          .   :2d35[1]
    equb %11100110                                                    ; 3e36: e6          .   :2d36[1]
    equb %01000011                                                    ; 3e37: 43          C   :2d37[1]
    equb %00111110                                                    ; 3e38: 3e          >   :2d38[1]
    equb %00000110                                                    ; 3e39: 06          .   :2d39[1]
    equb %01111110                                                    ; 3e3a: 7e          ~   :2d3a[1]
    equb %10000110                                                    ; 3e3b: 86          .   :2d3b[1]
    equb %00111110                                                    ; 3e3c: 3e          >   :2d3c[1]
    equb %01101110                                                    ; 3e3d: 6e          n   :2d3d[1]
    equb %11001110                                                    ; 3e3e: ce          .   :2d3e[1]
    equb %10000100                                                    ; 3e3f: 84          .   :2d3f[1]
.starship_sprite_8
    equb %00000111                                                    ; 3e40: 07          .   :2d40[1]
    equb %00001100                                                    ; 3e41: 0c          .   :2d41[1]
    equb %00011001                                                    ; 3e42: 19          .   :2d42[1]
    equb %00011011                                                    ; 3e43: 1b          .   :2d43[1]
    equb %00011011                                                    ; 3e44: 1b          .   :2d44[1]
    equb %00011001                                                    ; 3e45: 19          .   :2d45[1]
    equb %00001100                                                    ; 3e46: 0c          .   :2d46[1]
    equb %11000111                                                    ; 3e47: c7          .   :2d47[1]
    equb %11000000                                                    ; 3e48: c0          .   :2d48[1]
    equb %01100000                                                    ; 3e49: 60          `   :2d49[1]
    equb %00110000                                                    ; 3e4a: 30          0   :2d4a[1]
    equb %10110000                                                    ; 3e4b: b0          .   :2d4b[1]
    equb %10110000                                                    ; 3e4c: b0          .   :2d4c[1]
    equb %00110000                                                    ; 3e4d: 30          0   :2d4d[1]
    equb %01100000                                                    ; 3e4e: 60          `   :2d4e[1]
    equb %11000110                                                    ; 3e4f: c6          .   :2d4f[1]
    equb %11000001                                                    ; 3e50: c1          .   :2d50[1]
    equb %11100011                                                    ; 3e51: e3          .   :2d51[1]
    equb %11110011                                                    ; 3e52: f3          .   :2d52[1]
    equb %11011011                                                    ; 3e53: db          .   :2d53[1]
    equb %11001111                                                    ; 3e54: cf          .   :2d54[1]
    equb %11000011                                                    ; 3e55: c3          .   :2d55[1]
    equb %11000011                                                    ; 3e56: c3          .   :2d56[1]
    equb %11000001                                                    ; 3e57: c1          .   :2d57[1]
    equb %00000110                                                    ; 3e58: 06          .   :2d58[1]
    equb %10001110                                                    ; 3e59: 8e          .   :2d59[1]
    equb %10011110                                                    ; 3e5a: 9e          .   :2d5a[1]
    equb %10110110                                                    ; 3e5b: b6          .   :2d5b[1]
    equb %11100110                                                    ; 3e5c: e6          .   :2d5c[1]
    equb %10000110                                                    ; 3e5d: 86          .   :2d5d[1]
    equb %10000110                                                    ; 3e5e: 86          .   :2d5e[1]
    equb %00000110                                                    ; 3e5f: 06          .   :2d5f[1]
.unused70
    equb &ea                                                          ; 3e60: ea          .   :2d60[1]
.velocity_gauge_position
    equb 0                                                            ; 3e61: 00          .   :2d61[1]
.rotation_gauge_position
    equb 0                                                            ; 3e62: 00          .   :2d62[1]
.score_delta_low
    equb 0                                                            ; 3e63: 00          .   :2d63[1]
.score_delta_high
    equb 0                                                            ; 3e64: 00          .   :2d64[1]
.score_as_bcd
    equb 0                                                            ; 3e65: 00          .   :2d65[1]
    equb 0                                                            ; 3e66: 00          .   :2d66[1]
    equb 0                                                            ; 3e67: 00          .   :2d67[1]
.unused71
    equb &ea, &ea, &ea, &ea, &ea, &ea                                 ; 3e68: ea ea ea... ... :2d68[1]
.score_as_digits
    equb 0                                                            ; 3e6e: 00          .   :2d6e[1]
    equb 0                                                            ; 3e6f: 00          .   :2d6f[1]
    equb 0                                                            ; 3e70: 00          .   :2d70[1]
    equb 0                                                            ; 3e71: 00          .   :2d71[1]
    equb 0                                                            ; 3e72: 00          .   :2d72[1]
    equb 0                                                            ; 3e73: 00          .   :2d73[1]
.unused72
    equb &ea                                                          ; 3e74: ea          .   :2d74[1]
.scores_for_destroying_enemy_ships
    equb 8, &12, 3, 4, &70, &90, 3, 4, 2, 3                           ; 3e75: 08 12 03... ... :2d75[1]
.unused73
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea                            ; 3e7f: ea ea ea... ... :2d7f[1]

.score_points_for_destroying_enemy_ship
    lda #1                                                            ; 3e86: a9 01       ..  :2d86[1]
    sta enemy_ships_previous_on_screen,x                              ; 3e88: 9d 00 04    ... :2d88[1]
    lda how_enemy_ship_was_damaged                                    ; 3e8b: ad e0 1c    ... :2d8b[1]
    asl a                                                             ; 3e8e: 0a          .   :2d8e[1]
    tay                                                               ; 3e8f: a8          .   :2d8f[1]
    lda enemy_ships_can_cloak                                         ; 3e90: ad 52 26    .R& :2d90[1]
    beq not_cloaked                                                   ; 3e93: f0 0d       ..  :2d93[1]
    iny                                                               ; 3e95: c8          .   :2d95[1]
    lda enemy_ships_type,x                                            ; 3e96: bd 0a 04    ... :2d96[1]
    cmp #4                                                            ; 3e99: c9 04       ..  :2d99[1]
    bcs not_cloaked                                                   ; 3e9b: b0 05       ..  :2d9b[1]
    cmp #1                                                            ; 3e9d: c9 01       ..  :2d9d[1]
    beq not_cloaked                                                   ; 3e9f: f0 01       ..  :2d9f[1]
    dey                                                               ; 3ea1: 88          .   :2da1[1]
.not_cloaked
    tya                                                               ; 3ea2: 98          .   :2da2[1]
    bpl convert_offset_to_score                                       ; 3ea3: 10 0d       ..  :2da3[1]
    and #7                                                            ; 3ea5: 29 07       ).  :2da5[1]
    tay                                                               ; 3ea7: a8          .   :2da7[1]
    lda starship_collided_with_enemy_ship                             ; 3ea8: ad de 25    ..% :2da8[1]
    beq convert_offset_to_score                                       ; 3eab: f0 05       ..  :2dab[1]
    dec starship_collided_with_enemy_ship                             ; 3ead: ce de 25    ..% :2dad[1]
    iny                                                               ; 3eb0: c8          .   :2db0[1]
    iny                                                               ; 3eb1: c8          .   :2db1[1]
.convert_offset_to_score
    lda scores_for_destroying_enemy_ships,y                           ; 3eb2: b9 75 2d    .u- :2db2[1]
    clc                                                               ; 3eb5: 18          .   :2db5[1]
    sei                                                               ; 3eb6: 78          x   :2db6[1]
    sed                                                               ; 3eb7: f8          .   :2db7[1]
    adc score_delta_low                                               ; 3eb8: 6d 63 2d    mc- :2db8[1]
    sta score_delta_low                                               ; 3ebb: 8d 63 2d    .c- :2dbb[1]
    lda score_delta_high                                              ; 3ebe: ad 64 2d    .d- :2dbe[1]
    adc #0                                                            ; 3ec1: 69 00       i.  :2dc1[1]
    sta score_delta_high                                              ; 3ec3: 8d 64 2d    .d- :2dc3[1]
    cld                                                               ; 3ec6: d8          .   :2dc6[1]
    cli                                                               ; 3ec7: 58          X   :2dc7[1]
    rts                                                               ; 3ec8: 60          `   :2dc8[1]

.unused74
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea                            ; 3ec9: ea ea ea... ... :2dc9[1]

; ----------------------------------------------------------------------------------
; add to score (in binary coded decimal)
; ----------------------------------------------------------------------------------
.apply_delta_to_score
.apply_delta_to_score1
    lda score_delta_low                                               ; 3ed0: ad 63 2d    .c- :2dd0[1]
    clc                                                               ; 3ed3: 18          .   :2dd3[1]
    sei                                                               ; 3ed4: 78          x   :2dd4[1]
    sed                                                               ; 3ed5: f8          .   :2dd5[1]
    adc score_as_bcd                                                  ; 3ed6: 6d 65 2d    me- :2dd6[1]
    sta score_as_bcd                                                  ; 3ed9: 8d 65 2d    .e- :2dd9[1]
    lda score_as_bcd + 1                                              ; 3edc: ad 66 2d    .f- :2ddc[1]
    adc score_delta_high                                              ; 3edf: 6d 64 2d    md- :2ddf[1]
    sta score_as_bcd + 1                                              ; 3ee2: 8d 66 2d    .f- :2de2[1]
    lda score_as_bcd + 2                                              ; 3ee5: ad 67 2d    .g- :2de5[1]
    adc #0                                                            ; 3ee8: 69 00       i.  :2de8[1]
    sta score_as_bcd + 2                                              ; 3eea: 8d 67 2d    .g- :2dea[1]
    cld                                                               ; 3eed: d8          .   :2ded[1]
    cli                                                               ; 3eee: 58          X   :2dee[1]
    lda #0                                                            ; 3eef: a9 00       ..  :2def[1]
    cmp score_delta_low                                               ; 3ef1: cd 63 2d    .c- :2df1[1]
    bne zero_score_delate                                             ; 3ef4: d0 05       ..  :2df4[1]
    cmp score_delta_high                                              ; 3ef6: cd 64 2d    .d- :2df6[1]
    beq return_1                                                      ; 3ef9: f0 63       .c  :2df9[1]
.zero_score_delate
    sta score_delta_low                                               ; 3efb: 8d 63 2d    .c- :2dfb[1]
    sta score_delta_high                                              ; 3efe: 8d 64 2d    .d- :2dfe[1]
; calculate the characters to display the score, then display them
.convert_score_as_bcd_to_score_as_digits
    lda score_as_bcd + 2                                              ; 3f01: ad 67 2d    .g- :2e01[1]
    lsr a                                                             ; 3f04: 4a          J   :2e04[1]
    lsr a                                                             ; 3f05: 4a          J   :2e05[1]
    lsr a                                                             ; 3f06: 4a          J   :2e06[1]
    lsr a                                                             ; 3f07: 4a          J   :2e07[1]
    sta score_as_digits + 5                                           ; 3f08: 8d 73 2d    .s- :2e08[1]
    lda score_as_bcd + 2                                              ; 3f0b: ad 67 2d    .g- :2e0b[1]
    and #&0f                                                          ; 3f0e: 29 0f       ).  :2e0e[1]
    sta score_as_digits + 4                                           ; 3f10: 8d 72 2d    .r- :2e10[1]
    lda score_as_bcd + 1                                              ; 3f13: ad 66 2d    .f- :2e13[1]
    lsr a                                                             ; 3f16: 4a          J   :2e16[1]
    lsr a                                                             ; 3f17: 4a          J   :2e17[1]
    lsr a                                                             ; 3f18: 4a          J   :2e18[1]
    lsr a                                                             ; 3f19: 4a          J   :2e19[1]
    sta score_as_digits + 3                                           ; 3f1a: 8d 71 2d    .q- :2e1a[1]
    lda score_as_bcd + 1                                              ; 3f1d: ad 66 2d    .f- :2e1d[1]
    and #&0f                                                          ; 3f20: 29 0f       ).  :2e20[1]
    sta score_as_digits + 2                                           ; 3f22: 8d 70 2d    .p- :2e22[1]
    lda score_as_bcd                                                  ; 3f25: ad 65 2d    .e- :2e25[1]
    lsr a                                                             ; 3f28: 4a          J   :2e28[1]
    lsr a                                                             ; 3f29: 4a          J   :2e29[1]
    lsr a                                                             ; 3f2a: 4a          J   :2e2a[1]
    lsr a                                                             ; 3f2b: 4a          J   :2e2b[1]
    sta score_as_digits + 1                                           ; 3f2c: 8d 6f 2d    .o- :2e2c[1]
    lda score_as_bcd                                                  ; 3f2f: ad 65 2d    .e- :2e2f[1]
    and #&0f                                                          ; 3f32: 29 0f       ).  :2e32[1]
    sta score_as_digits                                               ; 3f34: 8d 6e 2d    .n- :2e34[1]
; tab into position, TAB(33,30):
    lda #&1f                                                          ; 3f37: a9 1f       ..  :2e37[1]
    jsr oswrch                                                        ; 3f39: 20 ee ff     .. :2e39[1]   ; Write character 31
    lda #&21                                                          ; 3f3c: a9 21       .!  :2e3c[1]
    jsr oswrch                                                        ; 3f3e: 20 ee ff     .. :2e3e[1]   ; Write character 33
    lda #&1e                                                          ; 3f41: a9 1e       ..  :2e41[1]
    jsr oswrch                                                        ; 3f43: 20 ee ff     .. :2e43[1]   ; Write character 30
; display the characters for the score
    ldy #5                                                            ; 3f46: a0 05       ..  :2e46[1]
    ldx #&20                                                          ; 3f48: a2 20       .   :2e48[1]
.plot_score_loop
    lda score_as_digits,y                                             ; 3f4a: b9 6e 2d    .n- :2e4a[1]
    bne non_zero_digit                                                ; 3f4d: d0 04       ..  :2e4d[1]
    txa                                                               ; 3f4f: 8a          .   :2e4f[1]
    jmp leading_zero                                                  ; 3f50: 4c 58 2e    LX. :2e50[1]

.non_zero_digit
    clc                                                               ; 3f53: 18          .   :2e53[1]
    adc #'0'                                                          ; 3f54: 69 30       i0  :2e54[1]
    ldx #'0'                                                          ; 3f56: a2 30       .0  :2e56[1]
.leading_zero
    jsr oswrch                                                        ; 3f58: 20 ee ff     .. :2e58[1]   ; Write character
    dey                                                               ; 3f5b: 88          .   :2e5b[1]
    bpl plot_score_loop                                               ; 3f5c: 10 ec       ..  :2e5c[1]
.return_1
    rts                                                               ; 3f5e: 60          `   :2e5e[1]

.unused75
    equb &ea, &ea                                                     ; 3f5f: ea ea       ..  :2e5f[1]

.plot_scanner_grid
    inc screen_start_high                                             ; 3f61: e6 79       .y  :2e61[1]
    lda #9                                                            ; 3f63: a9 09       ..  :2e63[1]
    sta x_pixels                                                      ; 3f65: 85 7a       .z  :2e65[1]
    lda #5                                                            ; 3f67: a9 05       ..  :2e67[1]
    sta output_pixels                                                 ; 3f69: 85 72       .r  :2e69[1]
    sta output_fraction                                               ; 3f6b: 85 73       .s  :2e6b[1]
.plot_vertical_lines_outer_loop
    lda #&41                                                          ; 3f6d: a9 41       .A  :2e6d[1]
    sta y_pixels                                                      ; 3f6f: 85 7b       .{  :2e6f[1]
    lda #&31                                                          ; 3f71: a9 31       .1  :2e71[1]
    sta temp11                                                        ; 3f73: 85 7c       .|  :2e73[1]
.plot_vertical_lines_inner_loop
    jsr set_pixel                                                     ; 3f75: 20 06 0f     .. :2e75[1]
    inc y_pixels                                                      ; 3f78: e6 7b       .{  :2e78[1]
    dec temp11                                                        ; 3f7a: c6 7c       .|  :2e7a[1]
    bne plot_vertical_lines_inner_loop                                ; 3f7c: d0 f7       ..  :2e7c[1]
    lda x_pixels                                                      ; 3f7e: a5 7a       .z  :2e7e[1]
    clc                                                               ; 3f80: 18          .   :2e80[1]
    adc #&0a                                                          ; 3f81: 69 0a       i.  :2e81[1]
    sta x_pixels                                                      ; 3f83: 85 7a       .z  :2e83[1]
    dec output_pixels                                                 ; 3f85: c6 72       .r  :2e85[1]
    bne plot_vertical_lines_outer_loop                                ; 3f87: d0 e4       ..  :2e87[1]
    lda #&4a                                                          ; 3f89: a9 4a       .J  :2e89[1]
    sta y_pixels                                                      ; 3f8b: 85 7b       .{  :2e8b[1]
.plot_horizontal_lines_outer_loop
    lda #0                                                            ; 3f8d: a9 00       ..  :2e8d[1]
    sta x_pixels                                                      ; 3f8f: 85 7a       .z  :2e8f[1]
    lda #&32                                                          ; 3f91: a9 32       .2  :2e91[1]
    sta temp11                                                        ; 3f93: 85 7c       .|  :2e93[1]
.plot_horizontal_lines_inner_loop
    jsr set_pixel                                                     ; 3f95: 20 06 0f     .. :2e95[1]
    inc x_pixels                                                      ; 3f98: e6 7a       .z  :2e98[1]
    dec temp11                                                        ; 3f9a: c6 7c       .|  :2e9a[1]
    bne plot_horizontal_lines_inner_loop                              ; 3f9c: d0 f7       ..  :2e9c[1]
    lda y_pixels                                                      ; 3f9e: a5 7b       .{  :2e9e[1]
    clc                                                               ; 3fa0: 18          .   :2ea0[1]
    adc #&0a                                                          ; 3fa1: 69 0a       i.  :2ea1[1]
    sta y_pixels                                                      ; 3fa3: 85 7b       .{  :2ea3[1]
    dec output_fraction                                               ; 3fa5: c6 73       .s  :2ea5[1]
    bne plot_horizontal_lines_outer_loop                              ; 3fa7: d0 e4       ..  :2ea7[1]
    dec screen_start_high                                             ; 3fa9: c6 79       .y  :2ea9[1]
    rts                                                               ; 3fab: 60          `   :2eab[1]

.plot_gauge_edges
    inc screen_start_high                                             ; 3fac: e6 79       .y  :2eac[1]
    lda #&35                                                          ; 3fae: a9 35       .5  :2eae[1]
    sta x_pixels                                                      ; 3fb0: 85 7a       .z  :2eb0[1]
    lda #&41                                                          ; 3fb2: a9 41       .A  :2eb2[1]
    sta y_pixels                                                      ; 3fb4: 85 7b       .{  :2eb4[1]
    lda #&42                                                          ; 3fb6: a9 42       .B  :2eb6[1]
    jsr plot_vertical_line                                            ; 3fb8: 20 cf 1b     .. :2eb8[1]
    lda #&3b                                                          ; 3fbb: a9 3b       .;  :2ebb[1]
    sta x_pixels                                                      ; 3fbd: 85 7a       .z  :2ebd[1]
    lda #&41                                                          ; 3fbf: a9 41       .A  :2ebf[1]
    sta y_pixels                                                      ; 3fc1: 85 7b       .{  :2ec1[1]
    lda #&42                                                          ; 3fc3: a9 42       .B  :2ec3[1]
    jsr plot_vertical_line                                            ; 3fc5: 20 cf 1b     .. :2ec5[1]
    lda #5                                                            ; 3fc8: a9 05       ..  :2ec8[1]
    sta x_pixels                                                      ; 3fca: 85 7a       .z  :2eca[1]
    lda #&77                                                          ; 3fcc: a9 77       .w  :2ecc[1]
    sta y_pixels                                                      ; 3fce: 85 7b       .{  :2ece[1]
    lda #&2b                                                          ; 3fd0: a9 2b       .+  :2ed0[1]
    jsr plot_horizontal_line                                          ; 3fd2: 20 db 1b     .. :2ed2[1]
    lda #7                                                            ; 3fd5: a9 07       ..  :2ed5[1]
    jsr plot_vertical_line                                            ; 3fd7: 20 cf 1b     .. :2ed7[1]
    lda #5                                                            ; 3fda: a9 05       ..  :2eda[1]
    sta x_pixels                                                      ; 3fdc: 85 7a       .z  :2edc[1]
    lda #&78                                                          ; 3fde: a9 78       .x  :2ede[1]
    sta y_pixels                                                      ; 3fe0: 85 7b       .{  :2ee0[1]
    lda #6                                                            ; 3fe2: a9 06       ..  :2ee2[1]
    jsr plot_vertical_line                                            ; 3fe4: 20 cf 1b     .. :2ee4[1]
    lda #&2c                                                          ; 3fe7: a9 2c       .,  :2ee7[1]
    jsr plot_horizontal_line                                          ; 3fe9: 20 db 1b     .. :2ee9[1]
    lda #0                                                            ; 3fec: a9 00       ..  :2eec[1]
    sta x_pixels                                                      ; 3fee: 85 7a       .z  :2eee[1]
    lda #&83                                                          ; 3ff0: a9 83       ..  :2ef0[1]
    sta y_pixels                                                      ; 3ff2: 85 7b       .{  :2ef2[1]
    lda #&3f                                                          ; 3ff4: a9 3f       .?  :2ef4[1]
    jsr plot_horizontal_line                                          ; 3ff6: 20 db 1b     .. :2ef6[1]
    lda #&1a                                                          ; 3ff9: a9 1a       ..  :2ef9[1]
    sta x_pixels                                                      ; 3ffb: 85 7a       .z  :2efb[1]
    lda #&75                                                          ; 3ffd: a9 75       .u  :2efd[1]
    sta y_pixels                                                      ; 3fff: 85 7b       .{  :2eff[1]
    jsr set_pixel                                                     ; 4001: 20 06 0f     .. :2f01[1]
    inc x_pixels                                                      ; 4004: e6 7a       .z  :2f04[1]
    jsr set_pixel                                                     ; 4006: 20 06 0f     .. :2f06[1]
    inc y_pixels                                                      ; 4009: e6 7b       .{  :2f09[1]
    jsr set_pixel                                                     ; 400b: 20 06 0f     .. :2f0b[1]
    dec x_pixels                                                      ; 400e: c6 7a       .z  :2f0e[1]
    jsr set_pixel                                                     ; 4010: 20 06 0f     .. :2f10[1]
    lda #&7f                                                          ; 4013: a9 7f       ..  :2f13[1]
    sta y_pixels                                                      ; 4015: 85 7b       .{  :2f15[1]
    jsr set_pixel                                                     ; 4017: 20 06 0f     .. :2f17[1]
    inc x_pixels                                                      ; 401a: e6 7a       .z  :2f1a[1]
    jsr set_pixel                                                     ; 401c: 20 06 0f     .. :2f1c[1]
    inc y_pixels                                                      ; 401f: e6 7b       .{  :2f1f[1]
    jsr set_pixel                                                     ; 4021: 20 06 0f     .. :2f21[1]
    dec x_pixels                                                      ; 4024: c6 7a       .z  :2f24[1]
    jsr set_pixel                                                     ; 4026: 20 06 0f     .. :2f26[1]
    lda #0                                                            ; 4029: a9 00       ..  :2f29[1]
    sta x_pixels                                                      ; 402b: 85 7a       .z  :2f2b[1]
    lda #&e7                                                          ; 402d: a9 e7       ..  :2f2d[1]
    sta y_pixels                                                      ; 402f: 85 7b       .{  :2f2f[1]
    lda #&3f                                                          ; 4031: a9 3f       .?  :2f31[1]
    jsr plot_horizontal_line                                          ; 4033: 20 db 1b     .. :2f33[1]
    dec screen_start_high                                             ; 4036: c6 79       .y  :2f36[1]
    rts                                                               ; 4038: 60          `   :2f38[1]

.unused76
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 4039: ea ea ea... ... :2f39[1]

.plot_starship_velocity_and_rotation_on_gauges
    inc screen_start_high                                             ; 4045: e6 79       .y  :2f45[1]
    lda starship_velocity_low                                         ; 4047: ad 01 0f    ... :2f47[1]
    sta y_pixels                                                      ; 404a: 85 7b       .{  :2f4a[1]
    lda starship_velocity_high                                        ; 404c: ad 00 0f    ... :2f4c[1]
    asl y_pixels                                                      ; 404f: 06 7b       .{  :2f4f[1]
    rol a                                                             ; 4051: 2a          *   :2f51[1]
    asl y_pixels                                                      ; 4052: 06 7b       .{  :2f52[1]
    rol a                                                             ; 4054: 2a          *   :2f54[1]
    asl y_pixels                                                      ; 4055: 06 7b       .{  :2f55[1]
    rol a                                                             ; 4057: 2a          *   :2f57[1]
    asl y_pixels                                                      ; 4058: 06 7b       .{  :2f58[1]
    rol a                                                             ; 405a: 2a          *   :2f5a[1]
    cmp velocity_gauge_position                                       ; 405b: cd 61 2d    .a- :2f5b[1]
    beq skip_velocity_gauge                                           ; 405e: f0 3e       .>  :2f5e[1]
    tay                                                               ; 4060: a8          .   :2f60[1]
    lda #&81                                                          ; 4061: a9 81       ..  :2f61[1]
    sec                                                               ; 4063: 38          8   :2f63[1]
    sbc velocity_gauge_position                                       ; 4064: ed 61 2d    .a- :2f64[1]
    sta y_pixels                                                      ; 4067: 85 7b       .{  :2f67[1]
    sty velocity_gauge_position                                       ; 4069: 8c 61 2d    .a- :2f69[1]
    lda #&36                                                          ; 406c: a9 36       .6  :2f6c[1]
    sta x_pixels                                                      ; 406e: 85 7a       .z  :2f6e[1]
    lda #5                                                            ; 4070: a9 05       ..  :2f70[1]
    sta temp7                                                         ; 4072: 85 88       ..  :2f72[1]
    sta temp11                                                        ; 4074: 85 7c       .|  :2f74[1]
.plot_velocity_gauge_unset_loop
    jsr unset_pixel                                                   ; 4076: 20 0e 0f     .. :2f76[1]
    inc y_pixels                                                      ; 4079: e6 7b       .{  :2f79[1]
    jsr unset_pixel                                                   ; 407b: 20 0e 0f     .. :2f7b[1]
    dec y_pixels                                                      ; 407e: c6 7b       .{  :2f7e[1]
    inc x_pixels                                                      ; 4080: e6 7a       .z  :2f80[1]
    dec temp7                                                         ; 4082: c6 88       ..  :2f82[1]
    bne plot_velocity_gauge_unset_loop                                ; 4084: d0 f0       ..  :2f84[1]
    lda #&81                                                          ; 4086: a9 81       ..  :2f86[1]
    sec                                                               ; 4088: 38          8   :2f88[1]
    sbc velocity_gauge_position                                       ; 4089: ed 61 2d    .a- :2f89[1]
    sta y_pixels                                                      ; 408c: 85 7b       .{  :2f8c[1]
.plot_velocity_gauge_set_loop
    dec x_pixels                                                      ; 408e: c6 7a       .z  :2f8e[1]
    jsr set_pixel                                                     ; 4090: 20 06 0f     .. :2f90[1]
    inc y_pixels                                                      ; 4093: e6 7b       .{  :2f93[1]
    jsr set_pixel                                                     ; 4095: 20 06 0f     .. :2f95[1]
    dec y_pixels                                                      ; 4098: c6 7b       .{  :2f98[1]
    dec temp11                                                        ; 409a: c6 7c       .|  :2f9a[1]
    bne plot_velocity_gauge_set_loop                                  ; 409c: d0 f0       ..  :2f9c[1]
.skip_velocity_gauge
    lda starship_rotation_fraction                                    ; 409e: ad 28 19    .(. :2f9e[1]
    sta y_pixels                                                      ; 40a1: 85 7b       .{  :2fa1[1]
    lda starship_rotation                                             ; 40a3: ad 02 0f    ... :2fa3[1]
    sec                                                               ; 40a6: 38          8   :2fa6[1]
    sbc #&7b                                                          ; 40a7: e9 7b       .{  :2fa7[1]
    asl y_pixels                                                      ; 40a9: 06 7b       .{  :2fa9[1]
    rol a                                                             ; 40ab: 2a          *   :2fab[1]
    asl y_pixels                                                      ; 40ac: 06 7b       .{  :2fac[1]
    rol a                                                             ; 40ae: 2a          *   :2fae[1]
    cmp rotation_gauge_position                                       ; 40af: cd 62 2d    .b- :2faf[1]
    beq skip_rotation_gauge                                           ; 40b2: f0 56       .V  :2fb2[1]
    tay                                                               ; 40b4: a8          .   :2fb4[1]
    lda rotation_gauge_position                                       ; 40b5: ad 62 2d    .b- :2fb5[1]
    sty rotation_gauge_position                                       ; 40b8: 8c 62 2d    .b- :2fb8[1]
    cmp #&15                                                          ; 40bb: c9 15       ..  :2fbb[1]
    bcc set_rotation_gauge_position_for_unset                         ; 40bd: 90 08       ..  :2fbd[1]
    sbc #3                                                            ; 40bf: e9 03       ..  :2fbf[1]
    cmp #&14                                                          ; 40c1: c9 14       ..  :2fc1[1]
    bcs set_rotation_gauge_position_for_unset                         ; 40c3: b0 02       ..  :2fc3[1]
    lda #&14                                                          ; 40c5: a9 14       ..  :2fc5[1]
.set_rotation_gauge_position_for_unset
    clc                                                               ; 40c7: 18          .   :2fc7[1]
    adc #6                                                            ; 40c8: 69 06       i.  :2fc8[1]
    sta x_pixels                                                      ; 40ca: 85 7a       .z  :2fca[1]
    lda #&78                                                          ; 40cc: a9 78       .x  :2fcc[1]
    sta y_pixels                                                      ; 40ce: 85 7b       .{  :2fce[1]
    lda #6                                                            ; 40d0: a9 06       ..  :2fd0[1]
    sta temp7                                                         ; 40d2: 85 88       ..  :2fd2[1]
    sta temp11                                                        ; 40d4: 85 7c       .|  :2fd4[1]
.plot_rotation_gauge_unset_loop
    jsr unset_pixel                                                   ; 40d6: 20 0e 0f     .. :2fd6[1]
    inc x_pixels                                                      ; 40d9: e6 7a       .z  :2fd9[1]
    jsr unset_pixel                                                   ; 40db: 20 0e 0f     .. :2fdb[1]
    dec x_pixels                                                      ; 40de: c6 7a       .z  :2fde[1]
    inc y_pixels                                                      ; 40e0: e6 7b       .{  :2fe0[1]
    dec temp7                                                         ; 40e2: c6 88       ..  :2fe2[1]
    bne plot_rotation_gauge_unset_loop                                ; 40e4: d0 f0       ..  :2fe4[1]
    lda rotation_gauge_position                                       ; 40e6: ad 62 2d    .b- :2fe6[1]
    cmp #&15                                                          ; 40e9: c9 15       ..  :2fe9[1]
    bcc set_rotation_gauge_position_for_set                           ; 40eb: 90 08       ..  :2feb[1]
    sbc #3                                                            ; 40ed: e9 03       ..  :2fed[1]
    cmp #&14                                                          ; 40ef: c9 14       ..  :2fef[1]
    bcs set_rotation_gauge_position_for_set                           ; 40f1: b0 02       ..  :2ff1[1]
    lda #&14                                                          ; 40f3: a9 14       ..  :2ff3[1]
.set_rotation_gauge_position_for_set
    clc                                                               ; 40f5: 18          .   :2ff5[1]
    adc #6                                                            ; 40f6: 69 06       i.  :2ff6[1]
    sta x_pixels                                                      ; 40f8: 85 7a       .z  :2ff8[1]
.plot_rotation_gauge_set_loop
    dec y_pixels                                                      ; 40fa: c6 7b       .{  :2ffa[1]
    jsr set_pixel                                                     ; 40fc: 20 06 0f     .. :2ffc[1]
    inc x_pixels                                                      ; 40ff: e6 7a       .z  :2fff[1]
    jsr set_pixel                                                     ; 4101: 20 06 0f     .. :3001[1]
    dec x_pixels                                                      ; 4104: c6 7a       .z  :3004[1]
    dec temp11                                                        ; 4106: c6 7c       .|  :3006[1]
    bne plot_rotation_gauge_set_loop                                  ; 4108: d0 f0       ..  :3008[1]
.skip_rotation_gauge
    dec screen_start_high                                             ; 410a: c6 79       .y  :300a[1]
    rts                                                               ; 410c: 60          `   :300c[1]

.unused77
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 410d: ea ea ea... ... :300d[1]

.plot_enemy_ships_on_scanners
    inc screen_start_high                                             ; 4119: e6 79       .y  :3019[1]
    lda maximum_number_of_enemy_ships                                 ; 411b: ad 4f 0e    .O. :301b[1]
    sta enemy_ships_still_to_consider                                 ; 411e: 8d 54 0e    .T. :301e[1]
    ldx #0                                                            ; 4121: a2 00       ..  :3021[1]
.plot_enemy_ships_on_scanners_loop
    stx temp8                                                         ; 4123: 86 75       .u  :3023[1]
    lda enemy_ships_previous_x_screens,x                              ; 4125: bd 03 04    ... :3025[1]
    cmp #&60                                                          ; 4128: c9 60       .`  :3028[1]
    bcc skip_unplotting_enemy_ship_on_scanner                         ; 412a: 90 79       .y  :302a[1]
    cmp #&9f                                                          ; 412c: c9 9f       ..  :302c[1]
    bcs skip_unplotting_enemy_ship_on_scanner                         ; 412e: b0 75       .u  :302e[1]
    sta x_pixels                                                      ; 4130: 85 7a       .z  :3030[1]
    lda enemy_ships_previous_x_screens1,x                             ; 4132: bd 06 04    ... :3032[1]
    cmp #&60                                                          ; 4135: c9 60       .`  :3035[1]
    bcc skip_unplotting_enemy_ship_on_scanner                         ; 4137: 90 6c       .l  :3037[1]
    cmp #&9f                                                          ; 4139: c9 9f       ..  :3039[1]
    bcs skip_unplotting_enemy_ship_on_scanner                         ; 413b: b0 68       .h  :303b[1]
    adc #&a1                                                          ; 413d: 69 a1       i.  :303d[1]
    sta y_pixels                                                      ; 413f: 85 7b       .{  :303f[1]
    lda x_pixels                                                      ; 4141: a5 7a       .z  :3041[1]
    clc                                                               ; 4143: 18          .   :3043[1]
    adc #&a0                                                          ; 4144: 69 a0       i.  :3044[1]
    sta x_pixels                                                      ; 4146: 85 7a       .z  :3046[1]
    jsr unset_pixel                                                   ; 4148: 20 0e 0f     .. :3048[1]
    lda x_pixels                                                      ; 414b: a5 7a       .z  :304b[1]
    sec                                                               ; 414d: 38          8   :304d[1]
    sbc #&1d                                                          ; 414e: e9 1d       ..  :304e[1]
    bcc skip_unplotting_enemy_ship_on_scanner                         ; 4150: 90 53       .S  :3050[1]
    cmp #5                                                            ; 4152: c9 05       ..  :3052[1]
    bcs skip_unplotting_enemy_ship_on_scanner                         ; 4154: b0 4f       .O  :3054[1]
    tay                                                               ; 4156: a8          .   :3056[1]
    lda y_pixels                                                      ; 4157: a5 7b       .{  :3057[1]
    sec                                                               ; 4159: 38          8   :3059[1]
    sbc #&1e                                                          ; 415a: e9 1e       ..  :305a[1]
    bcc skip_unplotting_enemy_ship_on_scanner                         ; 415c: 90 47       .G  :305c[1]
    cmp #5                                                            ; 415e: c9 05       ..  :305e[1]
    bcs skip_unplotting_enemy_ship_on_scanner                         ; 4160: b0 43       .C  :3060[1]
    asl a                                                             ; 4162: 0a          .   :3062[1]
    sta y_pixels                                                      ; 4163: 85 7b       .{  :3063[1]
    asl a                                                             ; 4165: 0a          .   :3065[1]
    asl a                                                             ; 4166: 0a          .   :3066[1]
    adc y_pixels                                                      ; 4167: 65 7b       e{  :3067[1]
    sta y_pixels                                                      ; 4169: 85 7b       .{  :3069[1]
    ldx temp8                                                         ; 416b: a6 75       .u  :306b[1]
    lda enemy_ships_previous_x_pixels1,x                              ; 416d: bd 05 04    ... :306d[1]
    lsr a                                                             ; 4170: 4a          J   :3070[1]
    lsr a                                                             ; 4171: 4a          J   :3071[1]
    lsr a                                                             ; 4172: 4a          J   :3072[1]
    lsr a                                                             ; 4173: 4a          J   :3073[1]
    lsr a                                                             ; 4174: 4a          J   :3074[1]
    clc                                                               ; 4175: 18          .   :3075[1]
    adc y_pixels                                                      ; 4176: 65 7b       e{  :3076[1]
    adc #&41                                                          ; 4178: 69 41       iA  :3078[1]
    sta y_pixels                                                      ; 417a: 85 7b       .{  :307a[1]
    tya                                                               ; 417c: 98          .   :307c[1]
    asl a                                                             ; 417d: 0a          .   :307d[1]
    sta x_pixels                                                      ; 417e: 85 7a       .z  :307e[1]
    asl a                                                             ; 4180: 0a          .   :3080[1]
    asl a                                                             ; 4181: 0a          .   :3081[1]
    adc x_pixels                                                      ; 4182: 65 7a       ez  :3082[1]
    sta x_pixels                                                      ; 4184: 85 7a       .z  :3084[1]
    lda enemy_ships_previous_x_pixels,x                               ; 4186: bd 02 04    ... :3086[1]
    lsr a                                                             ; 4189: 4a          J   :3089[1]
    lsr a                                                             ; 418a: 4a          J   :308a[1]
    lsr a                                                             ; 418b: 4a          J   :308b[1]
    lsr a                                                             ; 418c: 4a          J   :308c[1]
    lsr a                                                             ; 418d: 4a          J   :308d[1]
    clc                                                               ; 418e: 18          .   :308e[1]
    adc x_pixels                                                      ; 418f: 65 7a       ez  :308f[1]
    sta x_pixels                                                      ; 4191: 85 7a       .z  :3091[1]
    jsr unset_pixel                                                   ; 4193: 20 0e 0f     .. :3093[1]
    inc x_pixels                                                      ; 4196: e6 7a       .z  :3096[1]
    jsr unset_pixel                                                   ; 4198: 20 0e 0f     .. :3098[1]
    inc y_pixels                                                      ; 419b: e6 7b       .{  :309b[1]
    jsr unset_pixel                                                   ; 419d: 20 0e 0f     .. :309d[1]
    dec x_pixels                                                      ; 41a0: c6 7a       .z  :30a0[1]
    jsr unset_pixel                                                   ; 41a2: 20 0e 0f     .. :30a2[1]
.skip_unplotting_enemy_ship_on_scanner
    lda starship_shields_active                                       ; 41a5: ad 56 0e    .V. :30a5[1]
    beq to_skip_plotting_enemy_ship_on_scanner                        ; 41a8: f0 07       ..  :30a8[1]
    ldx temp8                                                         ; 41aa: a6 75       .u  :30aa[1]
    lda enemy_ships_energy,x                                          ; 41ac: bd 89 04    ... :30ac[1]
    bne continue2                                                     ; 41af: d0 03       ..  :30af[1]
.to_skip_plotting_enemy_ship_on_scanner
    jmp skip_plotting_enemy_ship_on_scanner                           ; 41b1: 4c 34 31    L41 :30b1[1]

.continue2
    lda enemy_ships_x_screens,x                                       ; 41b4: bd 83 04    ... :30b4[1]
    cmp #&60                                                          ; 41b7: c9 60       .`  :30b7[1]
    bcc skip_plotting_enemy_ship_on_scanner                           ; 41b9: 90 79       .y  :30b9[1]
    cmp #&9f                                                          ; 41bb: c9 9f       ..  :30bb[1]
    bcs skip_plotting_enemy_ship_on_scanner                           ; 41bd: b0 75       .u  :30bd[1]
    sta x_pixels                                                      ; 41bf: 85 7a       .z  :30bf[1]
    lda enemy_ships_x_screens1,x                                      ; 41c1: bd 86 04    ... :30c1[1]
    cmp #&60                                                          ; 41c4: c9 60       .`  :30c4[1]
    bcc skip_plotting_enemy_ship_on_scanner                           ; 41c6: 90 6c       .l  :30c6[1]
    cmp #&9f                                                          ; 41c8: c9 9f       ..  :30c8[1]
    bcs skip_plotting_enemy_ship_on_scanner                           ; 41ca: b0 68       .h  :30ca[1]
    adc #&a1                                                          ; 41cc: 69 a1       i.  :30cc[1]
    sta y_pixels                                                      ; 41ce: 85 7b       .{  :30ce[1]
    lda x_pixels                                                      ; 41d0: a5 7a       .z  :30d0[1]
    clc                                                               ; 41d2: 18          .   :30d2[1]
    adc #&a0                                                          ; 41d3: 69 a0       i.  :30d3[1]
    sta x_pixels                                                      ; 41d5: 85 7a       .z  :30d5[1]
    jsr set_pixel                                                     ; 41d7: 20 06 0f     .. :30d7[1]
    lda x_pixels                                                      ; 41da: a5 7a       .z  :30da[1]
    sec                                                               ; 41dc: 38          8   :30dc[1]
    sbc #&1d                                                          ; 41dd: e9 1d       ..  :30dd[1]
    bcc skip_plotting_enemy_ship_on_scanner                           ; 41df: 90 53       .S  :30df[1]
    cmp #5                                                            ; 41e1: c9 05       ..  :30e1[1]
    bcs skip_plotting_enemy_ship_on_scanner                           ; 41e3: b0 4f       .O  :30e3[1]
    tay                                                               ; 41e5: a8          .   :30e5[1]
    lda y_pixels                                                      ; 41e6: a5 7b       .{  :30e6[1]
    sec                                                               ; 41e8: 38          8   :30e8[1]
    sbc #&1e                                                          ; 41e9: e9 1e       ..  :30e9[1]
    bcc skip_plotting_enemy_ship_on_scanner                           ; 41eb: 90 47       .G  :30eb[1]
    cmp #5                                                            ; 41ed: c9 05       ..  :30ed[1]
    bcs skip_plotting_enemy_ship_on_scanner                           ; 41ef: b0 43       .C  :30ef[1]
    asl a                                                             ; 41f1: 0a          .   :30f1[1]
    sta y_pixels                                                      ; 41f2: 85 7b       .{  :30f2[1]
    asl a                                                             ; 41f4: 0a          .   :30f4[1]
    asl a                                                             ; 41f5: 0a          .   :30f5[1]
    adc y_pixels                                                      ; 41f6: 65 7b       e{  :30f6[1]
    sta y_pixels                                                      ; 41f8: 85 7b       .{  :30f8[1]
    ldx temp8                                                         ; 41fa: a6 75       .u  :30fa[1]
    lda enemy_ships_x_pixels1,x                                       ; 41fc: bd 85 04    ... :30fc[1]
    lsr a                                                             ; 41ff: 4a          J   :30ff[1]
    lsr a                                                             ; 4200: 4a          J   :3100[1]
    lsr a                                                             ; 4201: 4a          J   :3101[1]
    lsr a                                                             ; 4202: 4a          J   :3102[1]
    lsr a                                                             ; 4203: 4a          J   :3103[1]
    clc                                                               ; 4204: 18          .   :3104[1]
    adc y_pixels                                                      ; 4205: 65 7b       e{  :3105[1]
    adc #&41                                                          ; 4207: 69 41       iA  :3107[1]
    sta y_pixels                                                      ; 4209: 85 7b       .{  :3109[1]
    tya                                                               ; 420b: 98          .   :310b[1]
    asl a                                                             ; 420c: 0a          .   :310c[1]
    sta x_pixels                                                      ; 420d: 85 7a       .z  :310d[1]
    asl a                                                             ; 420f: 0a          .   :310f[1]
    asl a                                                             ; 4210: 0a          .   :3110[1]
    adc x_pixels                                                      ; 4211: 65 7a       ez  :3111[1]
    sta x_pixels                                                      ; 4213: 85 7a       .z  :3113[1]
    lda enemy_ships_x_pixels,x                                        ; 4215: bd 82 04    ... :3115[1]
    lsr a                                                             ; 4218: 4a          J   :3118[1]
    lsr a                                                             ; 4219: 4a          J   :3119[1]
    lsr a                                                             ; 421a: 4a          J   :311a[1]
    lsr a                                                             ; 421b: 4a          J   :311b[1]
    lsr a                                                             ; 421c: 4a          J   :311c[1]
    clc                                                               ; 421d: 18          .   :311d[1]
    adc x_pixels                                                      ; 421e: 65 7a       ez  :311e[1]
    sta x_pixels                                                      ; 4220: 85 7a       .z  :3120[1]
    jsr set_pixel                                                     ; 4222: 20 06 0f     .. :3122[1]
    inc x_pixels                                                      ; 4225: e6 7a       .z  :3125[1]
    jsr set_pixel                                                     ; 4227: 20 06 0f     .. :3127[1]
    inc y_pixels                                                      ; 422a: e6 7b       .{  :312a[1]
    jsr set_pixel                                                     ; 422c: 20 06 0f     .. :312c[1]
    dec x_pixels                                                      ; 422f: c6 7a       .z  :312f[1]
    jsr set_pixel                                                     ; 4231: 20 06 0f     .. :3131[1]
.skip_plotting_enemy_ship_on_scanner
    lda temp8                                                         ; 4234: a5 75       .u  :3134[1]
    clc                                                               ; 4236: 18          .   :3136[1]
    adc #&0b                                                          ; 4237: 69 0b       i.  :3137[1]
    tax                                                               ; 4239: aa          .   :3139[1]
    dec enemy_ships_still_to_consider                                 ; 423a: ce 54 0e    .T. :313a[1]
    beq continue3                                                     ; 423d: f0 03       ..  :313d[1]
    jmp plot_enemy_ships_on_scanners_loop                             ; 423f: 4c 23 30    L#0 :313f[1]

.continue3
    ldy #&1f                                                          ; 4242: a0 1f       ..  :3142[1]
    sty x_pixels                                                      ; 4244: 84 7a       .z  :3144[1]
    iny                                                               ; 4246: c8          .   :3146[1]   ; Y=&20
    sty y_pixels                                                      ; 4247: 84 7b       .{  :3147[1]
    jsr set_pixel                                                     ; 4249: 20 06 0f     .. :3149[1]
    dec screen_start_high                                             ; 424c: c6 79       .y  :314c[1]
    rts                                                               ; 424e: 60          `   :314e[1]

.unused78
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 424f: ea ea ea... ... :314f[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea                                 ; 425b: ea ea ea... ... :315b[1]

.handle_scanner_failure
    lda damage_low                                                    ; 4261: ad 1f 19    ... :3161[1]
    cmp #&3c                                                          ; 4264: c9 3c       .<  :3164[1]
    bcs starship_incurred_major_damage                                ; 4266: b0 05       ..  :3166[1]
    lda damage_high                                                   ; 4268: ad 1e 19    ... :3168[1]
    beq starship_didnt_incur_major_damage                             ; 426b: f0 61       .a  :316b[1]
.starship_incurred_major_damage
    lda scanner_failure_duration                                      ; 426d: ad 59 26    .Y& :316d[1]
    bne handle_failed_scanner                                         ; 4270: d0 61       .a  :3170[1]
    jsr random_number_generator                                       ; 4272: 20 13 21     .! :3172[1]
    lda rnd_2                                                         ; 4275: ad d2 1c    ... :3175[1]
    and #&6c                                                          ; 4278: 29 6c       )l  :3178[1]
    bne return25                                                      ; 427a: d0 51       .Q  :317a[1]
.turn_scanner_to_static
    lda starship_shields_active                                       ; 427c: ad 56 0e    .V. :317c[1]
    sta starship_shields_active_before_failure                        ; 427f: 8d 5a 26    .Z& :317f[1]
    beq skip_unplotting_scanners                                      ; 4282: f0 08       ..  :3182[1]
    lda #0                                                            ; 4284: a9 00       ..  :3184[1]
    sta starship_shields_active                                       ; 4286: 8d 56 0e    .V. :3186[1]
    jsr plot_enemy_ships_on_scanners                                  ; 4289: 20 19 30     .0 :3189[1]
.skip_unplotting_scanners
    inc starship_shields_active                                       ; 428c: ee 56 0e    .V. :318c[1]
    lda rnd_1                                                         ; 428f: ad d1 1c    ... :318f[1]
    ora #&42                                                          ; 4292: 09 42       .B  :3192[1]
    sta scanner_failure_duration                                      ; 4294: 8d 59 26    .Y& :3194[1]
    lda #0                                                            ; 4297: a9 00       ..  :3197[1]
    sta temp5                                                         ; 4299: 85 86       ..  :3199[1]
    sta temp0_low                                                     ; 429b: 85 80       ..  :319b[1]
    lda #&d0                                                          ; 429d: a9 d0       ..  :319d[1]
    sta temp6                                                         ; 429f: 85 87       ..  :319f[1]
    lda #&59                                                          ; 42a1: a9 59       .Y  :31a1[1]
    sta temp0_high                                                    ; 42a3: 85 81       ..  :31a3[1]
    ldx #8                                                            ; 42a5: a2 08       ..  :31a5[1]
.plot_static_row_loop
    ldy #&3f                                                          ; 42a7: a0 3f       .?  :31a7[1]
.plot_static_column_loop
    lda (temp5),y                                                     ; 42a9: b1 86       ..  :31a9[1]
    sta (temp0_low),y                                                 ; 42ab: 91 80       ..  :31ab[1]
    dey                                                               ; 42ad: 88          .   :31ad[1]
    bpl plot_static_column_loop                                       ; 42ae: 10 f9       ..  :31ae[1]
    lda temp0_low                                                     ; 42b0: a5 80       ..  :31b0[1]
    clc                                                               ; 42b2: 18          .   :31b2[1]
    adc #&40                                                          ; 42b3: 69 40       i@  :31b3[1]
    sta temp0_low                                                     ; 42b5: 85 80       ..  :31b5[1]
    lda temp0_high                                                    ; 42b7: a5 81       ..  :31b7[1]
    adc #1                                                            ; 42b9: 69 01       i.  :31b9[1]
    sta temp0_high                                                    ; 42bb: 85 81       ..  :31bb[1]
    lda temp5                                                         ; 42bd: a5 86       ..  :31bd[1]
    clc                                                               ; 42bf: 18          .   :31bf[1]
    adc #&40                                                          ; 42c0: 69 40       i@  :31c0[1]
    sta temp5                                                         ; 42c2: 85 86       ..  :31c2[1]
    lda temp6                                                         ; 42c4: a5 87       ..  :31c4[1]
    adc #1                                                            ; 42c6: 69 01       i.  :31c6[1]
    sta temp6                                                         ; 42c8: 85 87       ..  :31c8[1]
    dex                                                               ; 42ca: ca          .   :31ca[1]
    bne plot_static_row_loop                                          ; 42cb: d0 da       ..  :31cb[1]
.return25
    rts                                                               ; 42cd: 60          `   :31cd[1]

.starship_didnt_incur_major_damage
    lda scanner_failure_duration                                      ; 42ce: ad 59 26    .Y& :31ce[1]
    beq return26                                                      ; 42d1: f0 31       .1  :31d1[1]
.handle_failed_scanner
    dec scanner_failure_duration                                      ; 42d3: ce 59 26    .Y& :31d3[1]
    beq clear_long_range_scanner                                      ; 42d6: f0 2d       .-  :31d6[1]
    lda #0                                                            ; 42d8: a9 00       ..  :31d8[1]
    sta temp0_low                                                     ; 42da: 85 80       ..  :31da[1]
    lda #&59                                                          ; 42dc: a9 59       .Y  :31dc[1]
    sta temp0_high                                                    ; 42de: 85 81       ..  :31de[1]
    ldx #8                                                            ; 42e0: a2 08       ..  :31e0[1]
.update_static_row_loop
    ldy #&3f                                                          ; 42e2: a0 3f       .?  :31e2[1]
.update_static_column_loop
    lda (temp0_low),y                                                 ; 42e4: b1 80       ..  :31e4[1]
    eor y_pixels                                                      ; 42e6: 45 7b       E{  :31e6[1]
    sta (temp0_low),y                                                 ; 42e8: 91 80       ..  :31e8[1]
    sta y_pixels                                                      ; 42ea: 85 7b       .{  :31ea[1]
    dey                                                               ; 42ec: 88          .   :31ec[1]
    bpl update_static_column_loop                                     ; 42ed: 10 f5       ..  :31ed[1]
    lda temp0_low                                                     ; 42ef: a5 80       ..  :31ef[1]
    clc                                                               ; 42f1: 18          .   :31f1[1]
    adc #&40                                                          ; 42f2: 69 40       i@  :31f2[1]
    sta temp0_low                                                     ; 42f4: 85 80       ..  :31f4[1]
    lda temp0_high                                                    ; 42f6: a5 81       ..  :31f6[1]
    adc #1                                                            ; 42f8: 69 01       i.  :31f8[1]
    sta temp0_high                                                    ; 42fa: 85 81       ..  :31fa[1]
    dex                                                               ; 42fc: ca          .   :31fc[1]
    bne update_static_row_loop                                        ; 42fd: d0 e3       ..  :31fd[1]
    lda y_pixels                                                      ; 42ff: a5 7b       .{  :31ff[1]
    sta unused_copy_of_scanner_static_eor                             ; 4301: 8d 3f 59    .?Y :3201[1]
.return26
    rts                                                               ; 4304: 60          `   :3204[1]

.clear_long_range_scanner
    lda #0                                                            ; 4305: a9 00       ..  :3205[1]
    sta temp0_low                                                     ; 4307: 85 80       ..  :3207[1]
    lda #&59                                                          ; 4309: a9 59       .Y  :3209[1]
    sta temp0_high                                                    ; 430b: 85 81       ..  :320b[1]
    ldx #8                                                            ; 430d: a2 08       ..  :320d[1]
.clear_long_range_scanner_row_loop
    ldy #&3f                                                          ; 430f: a0 3f       .?  :320f[1]
    lda #0                                                            ; 4311: a9 00       ..  :3211[1]
.clear_long_range_scanner_column_loop
    sta (temp0_low),y                                                 ; 4313: 91 80       ..  :3213[1]
    dey                                                               ; 4315: 88          .   :3215[1]
    bpl clear_long_range_scanner_column_loop                          ; 4316: 10 fb       ..  :3216[1]
    lda temp0_low                                                     ; 4318: a5 80       ..  :3218[1]
    clc                                                               ; 431a: 18          .   :321a[1]
    adc #&40                                                          ; 431b: 69 40       i@  :321b[1]
    sta temp0_low                                                     ; 431d: 85 80       ..  :321d[1]
    lda temp0_high                                                    ; 431f: a5 81       ..  :321f[1]
    adc #1                                                            ; 4321: 69 01       i.  :3221[1]
    sta temp0_high                                                    ; 4323: 85 81       ..  :3223[1]
    dex                                                               ; 4325: ca          .   :3225[1]
    bne clear_long_range_scanner_row_loop                             ; 4326: d0 e7       ..  :3226[1]
    lda #0                                                            ; 4328: a9 00       ..  :3228[1]
    sta starship_shields_active                                       ; 432a: 8d 56 0e    .V. :322a[1]
    jsr plot_top_and_right_edge_of_long_range_scanner_with_blank_text ; 432d: 20 2b 14     +. :322d[1]
    lda starship_shields_active_before_failure                        ; 4330: ad 5a 26    .Z& :3230[1]
    bne return26                                                      ; 4333: d0 cf       ..  :3233[1]
    jsr unplot_long_range_scanner_if_shields_inactive                 ; 4335: 20 08 14     .. :3235[1]
    rts                                                               ; 4338: 60          `   :3238[1]

.unused79
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 4339: ea ea ea... ... :3239[1]
    equb &ea, &ea, &ea, &ea                                           ; 4345: ea ea ea... ... :3245[1]

; ----------------------------------------------------------------------------------
.enemy_ship_behaviour_routine0
    lda enemy_ships_temporary_behaviour_flags,x                       ; 4349: bd 88 04    ... :3249[1]
    and #&10                                                          ; 434c: 29 10       ).  :324c[1]
    bne skip_setting_enemy_ship_was_on_screen_above                   ; 434e: d0 16       ..  :324e[1]
    lda enemy_ships_x_screens,x                                       ; 4350: bd 83 04    ... :3250[1]
    cmp #&7f                                                          ; 4353: c9 7f       ..  :3253[1]
    bne not_on_screen_above                                           ; 4355: d0 3b       .;  :3255[1]
    lda enemy_ships_x_screens1,x                                      ; 4357: bd 86 04    ... :3257[1]
    cmp #&7e                                                          ; 435a: c9 7e       .~  :325a[1]
    bne not_on_screen_above                                           ; 435c: d0 34       .4  :325c[1]
    lda enemy_ships_temporary_behaviour_flags,x                       ; 435e: bd 88 04    ... :325e[1]
    ora #&10                                                          ; 4361: 09 10       ..  :3261[1]
    sta enemy_ships_temporary_behaviour_flags,x                       ; 4363: 9d 88 04    ... :3263[1]
.skip_setting_enemy_ship_was_on_screen_above
    lda #4                                                            ; 4366: a9 04       ..  :3266[1]
    sta enemy_ship_desired_velocity                                   ; 4368: 8d 81 2a    ..* :3268[1]
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 436b: 20 3a 2c     :, :326b[1]
    lda enemy_ships_on_screen,x                                       ; 436e: bd 80 04    ... :326e[1]
    bne not_on_screen1                                                ; 4371: d0 0b       ..  :3271[1]
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 4373: 20 61 2b     a+ :3273[1]
    bne to_return_from_enemy_ship_behaviour_routine                   ; 4376: d0 36       .6  :3276[1]
    jsr fire_enemy_torpedo                                            ; 4378: 20 cc 26     .& :3278[1]
    jmp return_from_enemy_ship_behaviour_routine                      ; 437b: 4c d2 36    L.6 :327b[1]

.not_on_screen1
    jsr turn_enemy_ship_towards_starship_using_screens                ; 437e: 20 47 2b     G+ :327e[1]
    lda temp9                                                         ; 4381: a5 76       .v  :3281[1]
    cmp #&80                                                          ; 4383: c9 80       ..  :3283[1]
    bcc to_return_from_enemy_ship_behaviour_routine                   ; 4385: 90 27       .'  :3285[1]
    lda enemy_ships_temporary_behaviour_flags,x                       ; 4387: bd 88 04    ... :3287[1]
    and #&ef                                                          ; 438a: 29 ef       ).  :328a[1]
    sta enemy_ships_temporary_behaviour_flags,x                       ; 438c: 9d 88 04    ... :328c[1]
    jmp return_from_enemy_ship_behaviour_routine                      ; 438f: 4c d2 36    L.6 :328f[1]

.not_on_screen_above
    lda enemy_ships_x_screens,x                                       ; 4392: bd 83 04    ... :3292[1]
    sta temp10                                                        ; 4395: 85 77       .w  :3295[1]
    lda enemy_ships_x_screens1,x                                      ; 4397: bd 86 04    ... :3297[1]
    clc                                                               ; 439a: 18          .   :329a[1]
    adc #1                                                            ; 439b: 69 01       i.  :329b[1]
    sta temp9                                                         ; 439d: 85 76       .v  :329d[1]
    jsr turn_enemy_ship_towards_starship                              ; 439f: 20 5e 2b     ^+ :329f[1]
    lda enemy_ship_desired_velocity                                   ; 43a2: ad 81 2a    ..* :32a2[1]
    clc                                                               ; 43a5: 18          .   :32a5[1]
    adc #&0a                                                          ; 43a6: 69 0a       i.  :32a6[1]
    sta enemy_ship_desired_velocity                                   ; 43a8: 8d 81 2a    ..* :32a8[1]
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 43ab: 20 3a 2c     :, :32ab[1]
.to_return_from_enemy_ship_behaviour_routine
    jmp return_from_enemy_ship_behaviour_routine                      ; 43ae: 4c d2 36    L.6 :32ae[1]

; ----------------------------------------------------------------------------------
.enemy_ship_behaviour_routine1
    lda enemy_ships_on_screen,x                                       ; 43b1: bd 80 04    ... :32b1[1]
    bne off_screen                                                    ; 43b4: d0 2f       ./  :32b4[1]
    jsr get_rectilinear_distance_from_centre_of_screen_accounting_for_starship_velocity; 43b6: 20 01 2b     .+ :32b6[1]
    cmp #&40                                                          ; 43b9: c9 40       .@  :32b9[1]
    bcc to_set_retreating_and_head_towards_desired_velocity_and_angle ; 43bb: 90 25       .%  :32bb[1]
    lda starship_velocity_low                                         ; 43bd: ad 01 0f    ... :32bd[1]
    sta x_pixels                                                      ; 43c0: 85 7a       .z  :32c0[1]
    lda starship_velocity_high                                        ; 43c2: ad 00 0f    ... :32c2[1]
    asl x_pixels                                                      ; 43c5: 06 7a       .z  :32c5[1]
    rol a                                                             ; 43c7: 2a          *   :32c7[1]
    sta y_pixels                                                      ; 43c8: 85 7b       .{  :32c8[1]
    asl x_pixels                                                      ; 43ca: 06 7a       .z  :32ca[1]
    rol a                                                             ; 43cc: 2a          *   :32cc[1]
    adc y_pixels                                                      ; 43cd: 65 7b       e{  :32cd[1]
    cmp enemy_ship_desired_velocity                                   ; 43cf: cd 81 2a    ..* :32cf[1]
    bcs skip_setting_desired_velocity                                 ; 43d2: b0 03       ..  :32d2[1]
    sta enemy_ship_desired_velocity                                   ; 43d4: 8d 81 2a    ..* :32d4[1]
.skip_setting_desired_velocity
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 43d7: 20 61 2b     a+ :32d7[1]
    bne return_after_changing_velocity                                ; 43da: d0 0c       ..  :32da[1]
    jsr fire_enemy_torpedo                                            ; 43dc: 20 cc 26     .& :32dc[1]
    jmp return_after_changing_velocity                                ; 43df: 4c e8 32    L.2 :32df[1]

.to_set_retreating_and_head_towards_desired_velocity_and_angle
    jmp set_retreating_and_head_towards_desired_velocity_and_angle    ; 43e2: 4c 8d 33    L.3 :32e2[1]

.off_screen
    jsr turn_enemy_ship_towards_starship_using_screens                ; 43e5: 20 47 2b     G+ :32e5[1]
.return_after_changing_velocity
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 43e8: 20 3a 2c     :, :32e8[1]
    jmp return_from_enemy_ship_behaviour_routine                      ; 43eb: 4c d2 36    L.6 :32eb[1]

; ----------------------------------------------------------------------------------
.enemy_ship_behaviour_routine2
    lda enemy_ships_on_screen,x                                       ; 43ee: bd 80 04    ... :32ee[1]
    bne off_screen1                                                   ; 43f1: d0 22       ."  :32f1[1]
    jsr get_rectilinear_distance_from_centre_of_screen                ; 43f3: 20 26 2b     &+ :32f3[1]
    cmp #&46                                                          ; 43f6: c9 46       .F  :32f6[1]
    bcc to_set_retreating_and_head_towards_desired_velocity_and_angle1; 43f8: 90 12       ..  :32f8[1]
    cmp #&6e                                                          ; 43fa: c9 6e       .n  :32fa[1]
    bcs return_after_turning_enemy_ship_towards_desired_angle         ; 43fc: b0 11       ..  :32fc[1]
    jsr decrease_enemy_ship_velocity                                  ; 43fe: 20 29 2c     ), :32fe[1]
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 4401: 20 61 2b     a+ :3301[1]
    bne to_return_from_enemy_ship_behaviour_routine1                  ; 4404: d0 15       ..  :3304[1]
    jsr fire_enemy_torpedo                                            ; 4406: 20 cc 26     .& :3306[1]
    jmp to_return_from_enemy_ship_behaviour_routine1                  ; 4409: 4c 1b 33    L.3 :3309[1]

.to_set_retreating_and_head_towards_desired_velocity_and_angle1
    jmp set_retreating_and_head_towards_desired_velocity_and_angle    ; 440c: 4c 8d 33    L.3 :330c[1]

.return_after_turning_enemy_ship_towards_desired_angle
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 440f: 20 61 2b     a+ :330f[1]
    jmp return_after_changing_velocity1                               ; 4412: 4c 18 33    L.3 :3312[1]

.off_screen1
    jsr turn_enemy_ship_towards_starship_using_screens                ; 4415: 20 47 2b     G+ :3315[1]
.return_after_changing_velocity1
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 4418: 20 3a 2c     :, :3318[1]
.to_return_from_enemy_ship_behaviour_routine1
    jmp return_from_enemy_ship_behaviour_routine                      ; 441b: 4c d2 36    L.6 :331b[1]

; ----------------------------------------------------------------------------------
.enemy_ship_behaviour_routine3
    lda enemy_ships_on_screen,x                                       ; 441e: bd 80 04    ... :331e[1]
    bne off_screen2                                                   ; 4421: d0 15       ..  :3321[1]
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 4423: 20 61 2b     a+ :3323[1]
    bne skip_firing                                                   ; 4426: d0 03       ..  :3326[1]
    jsr fire_enemy_torpedo                                            ; 4428: 20 cc 26     .& :3328[1]
.skip_firing
    jsr get_rectilinear_distance_from_centre_of_screen                ; 442b: 20 26 2b     &+ :332b[1]
    cmp #&78                                                          ; 442e: c9 78       .x  :332e[1]
    bcs to_return_from_enemy_ship_behaviour_routine2                  ; 4430: b0 0c       ..  :3330[1]
    jsr decrease_enemy_ship_velocity                                  ; 4432: 20 29 2c     ), :3332[1]
    jmp return_from_enemy_ship_behaviour_routine                      ; 4435: 4c d2 36    L.6 :3335[1]

.off_screen2
    jsr turn_enemy_ship_towards_starship_using_screens                ; 4438: 20 47 2b     G+ :3338[1]
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 443b: 20 3a 2c     :, :333b[1]
.to_return_from_enemy_ship_behaviour_routine2
    jmp return_from_enemy_ship_behaviour_routine                      ; 443e: 4c d2 36    L.6 :333e[1]

; ----------------------------------------------------------------------------------
.enemy_ship_behaviour_routine4
    lda enemy_ships_on_screen,x                                       ; 4441: bd 80 04    ... :3341[1]
    bne off_screen3                                                   ; 4444: d0 1b       ..  :3344[1]
    jsr get_rectilinear_distance_from_centre_of_screen                ; 4446: 20 26 2b     &+ :3346[1]
    cmp #&64                                                          ; 4449: c9 64       .d  :3349[1]
    bcc decelerate                                                    ; 444b: 90 06       ..  :334b[1]
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 444d: 20 3a 2c     :, :334d[1]
    jmp skip_deceleration                                             ; 4450: 4c 56 33    LV3 :3350[1]

.decelerate
    jsr decrease_enemy_ship_velocity                                  ; 4453: 20 29 2c     ), :3353[1]
.skip_deceleration
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 4456: 20 61 2b     a+ :3356[1]
    bne return_after_changing_velocity2                               ; 4459: d0 09       ..  :3359[1]
    jsr fire_enemy_torpedo                                            ; 445b: 20 cc 26     .& :335b[1]
    jmp return_from_enemy_ship_behaviour_routine                      ; 445e: 4c d2 36    L.6 :335e[1]

.off_screen3
    jsr turn_enemy_ship_towards_starship_using_screens                ; 4461: 20 47 2b     G+ :3361[1]
.return_after_changing_velocity2
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 4464: 20 3a 2c     :, :3364[1]
    jmp return_from_enemy_ship_behaviour_routine                      ; 4467: 4c d2 36    L.6 :3367[1]

; ----------------------------------------------------------------------------------
.enemy_ship_behaviour_routine5
    lda enemy_ships_on_screen,x                                       ; 446a: bd 80 04    ... :336a[1]
    bne off_screen4                                                   ; 446d: d0 15       ..  :336d[1]
    jsr get_rectilinear_distance_from_centre_of_screen                ; 446f: 20 26 2b     &+ :336f[1]
    cmp #&50                                                          ; 4472: c9 50       .P  :3372[1]
    bcc to_set_retreating_and_head_towards_desired_velocity_and_angle2; 4474: 90 0b       ..  :3374[1]
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 4476: 20 61 2b     a+ :3376[1]
    bne return_after_changing_velocity3                               ; 4479: d0 0c       ..  :3379[1]
    jsr fire_enemy_torpedo                                            ; 447b: 20 cc 26     .& :337b[1]
    jmp return_after_changing_velocity3                               ; 447e: 4c 87 33    L.3 :337e[1]

.to_set_retreating_and_head_towards_desired_velocity_and_angle2
    jmp set_retreating_and_head_towards_desired_velocity_and_angle    ; 4481: 4c 8d 33    L.3 :3381[1]

.off_screen4
    jsr turn_enemy_ship_towards_starship_using_screens                ; 4484: 20 47 2b     G+ :3384[1]
.return_after_changing_velocity3
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 4487: 20 3a 2c     :, :3387[1]
    jmp return_from_enemy_ship_behaviour_routine                      ; 448a: 4c d2 36    L.6 :338a[1]

.set_retreating_and_head_towards_desired_velocity_and_angle
    lda enemy_ships_temporary_behaviour_flags,x                       ; 448d: bd 88 04    ... :338d[1]
    ora #&80                                                          ; 4490: 09 80       ..  :3390[1]
    sta enemy_ships_temporary_behaviour_flags,x                       ; 4492: 9d 88 04    ... :3392[1]
    jsr turn_enemy_ship_towards_desired_angle                         ; 4495: 20 cf 2b     .+ :3395[1]
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 4498: 20 3a 2c     :, :3398[1]
    jmp return_from_enemy_ship_behaviour_routine                      ; 449b: 4c d2 36    L.6 :339b[1]

.unused80
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 449e: ff ff ff... ... :339e[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff                            ; 44aa: ff ff ff... ... :33aa[1]
.maximum_enemy_torpedo_cooldown_per_command
    equb &0f, &0d, &0b, 9, 7, 5, 3, 2                                 ; 44b1: 0f 0d 0b... ... :33b1[1]
.command_number_used_for_maximum_enemy_torpedo_cooldown_lookup
    equb 0                                                            ; 44b9: 00          .   :33b9[1]
.probability_of_new_enemy_ship_being_defensive_about_damage
    equb 0                                                            ; 44ba: 00          .   :33ba[1]
.probability_of_new_enemy_ship_being_defensive_about_angle
    equb 0                                                            ; 44bb: 00          .   :33bb[1]
.probability_of_new_enemy_ship_firing_torpedo_clusters
    equb 0                                                            ; 44bc: 00          .   :33bc[1]
.probability_of_new_enemy_ship_being_large
    equb 0                                                            ; 44bd: 00          .   :33bd[1]
.unused81
    equb 0, 0                                                         ; 44be: 00 00       ..  :33be[1]
.change_in_enemy_ship_spawning_probabilities_per_command
    equb &ec, &f2, &0f, &17                                           ; 44c0: ec f2 0f... ... :33c0[1]
.unused82
    equb 0, 0                                                         ; 44c4: 00 00       ..  :33c4[1]
.ultimate_enemy_ship_probabilities
    equb &20, 4, &b8, &ff                                             ; 44c6: 20 04 b8...  .. :33c6[1]
.unused83
    equb 0, 0                                                         ; 44ca: 00 00       ..  :33ca[1]
.initial_enemy_ship_spawning_probabilities
    equb &c0, &82, 4, 2                                               ; 44cc: c0 82 04... ... :33cc[1]
.unused84
    equb 0, 0                                                         ; 44d0: 00 00       ..  :33d0[1]

; ----------------------------------------------------------------------------------
.initialise_enemy_ship
    lda #&ff                                                          ; 44d2: a9 ff       ..  :33d2[1]
    sta enemy_ships_energy,x                                          ; 44d4: 9d 89 04    ... :33d4[1]
    ldy enemy_ships_still_to_consider                                 ; 44d7: ac 54 0e    .T. :33d7[1]
    lda #0                                                            ; 44da: a9 00       ..  :33da[1]
    sta unused24,y                                                    ; 44dc: 99 e1 1c    ... :33dc[1]
    sta enemy_ships_temporary_behaviour_flags,x                       ; 44df: 9d 88 04    ... :33df[1]
    jsr random_number_generator                                       ; 44e2: 20 13 21     .! :33e2[1]
    lda rnd_2                                                         ; 44e5: ad d2 1c    ... :33e5[1]
    and #&0f                                                          ; 44e8: 29 0f       ).  :33e8[1]
    sta enemy_ships_flags_or_explosion_timer,x                        ; 44ea: 9d 09 04    ... :33ea[1]
    ldy #&5f                                                          ; 44ed: a0 5f       ._  :33ed[1]
    lda rnd_2                                                         ; 44ef: ad d2 1c    ... :33ef[1]
    bpl skip29                                                        ; 44f2: 10 02       ..  :33f2[1]
    ldy #&9f                                                          ; 44f4: a0 9f       ..  :33f4[1]
.skip29
    sty x_pixels                                                      ; 44f6: 84 7a       .z  :33f6[1]
    lda rnd_1                                                         ; 44f8: ad d1 1c    ... :33f8[1]
    and #&1f                                                          ; 44fb: 29 1f       ).  :33fb[1]
    clc                                                               ; 44fd: 18          .   :33fd[1]
    adc #&70                                                          ; 44fe: 69 70       ip  :33fe[1]
    tay                                                               ; 4500: a8          .   :3400[1]
    lda rnd_2                                                         ; 4501: ad d2 1c    ... :3401[1]
    asl a                                                             ; 4504: 0a          .   :3404[1]
    bpl skip_swap1                                                    ; 4505: 10 05       ..  :3405[1]
    tya                                                               ; 4507: 98          .   :3407[1]
    ldy x_pixels                                                      ; 4508: a4 7a       .z  :3408[1]
    sta x_pixels                                                      ; 450a: 85 7a       .z  :340a[1]
.skip_swap1
    tya                                                               ; 450c: 98          .   :340c[1]
    sta enemy_ships_x_screens,x                                       ; 450d: 9d 83 04    ... :340d[1]
    sta temp10                                                        ; 4510: 85 77       .w  :3410[1]
    lda x_pixels                                                      ; 4512: a5 7a       .z  :3412[1]
    sta enemy_ships_x_screens1,x                                      ; 4514: 9d 86 04    ... :3414[1]
    sta temp9                                                         ; 4517: 85 76       .v  :3417[1]
    jsr calculate_enemy_ship_angle_to_starship                        ; 4519: 20 58 27     X' :3419[1]
    clc                                                               ; 451c: 18          .   :341c[1]
    adc #&10                                                          ; 451d: 69 10       i.  :341d[1]
    asl a                                                             ; 451f: 0a          .   :341f[1]
    asl a                                                             ; 4520: 0a          .   :3420[1]
    asl a                                                             ; 4521: 0a          .   :3421[1]
    sta enemy_ships_angle,x                                           ; 4522: 9d 87 04    ... :3422[1]
    jsr random_number_generator                                       ; 4525: 20 13 21     .! :3425[1]
    lda probability_of_new_enemy_ship_being_defensive_about_damage    ; 4528: ad ba 33    ..3 :3428[1]
    cmp rnd_2                                                         ; 452b: cd d2 1c    ... :342b[1]
    bcc not_defensive_about_damage                                    ; 452e: 90 08       ..  :342e[1]
    lda enemy_ships_flags_or_explosion_timer,x                        ; 4530: bd 09 04    ... :3430[1]
    ora #&40                                                          ; 4533: 09 40       .@  :3433[1]
    sta enemy_ships_flags_or_explosion_timer,x                        ; 4535: 9d 09 04    ... :3435[1]
.not_defensive_about_damage
    lda probability_of_new_enemy_ship_being_defensive_about_angle     ; 4538: ad bb 33    ..3 :3438[1]
    cmp rnd_1                                                         ; 453b: cd d1 1c    ... :343b[1]
    bcc defensive_about_angle                                         ; 453e: 90 08       ..  :343e[1]
    lda enemy_ships_flags_or_explosion_timer,x                        ; 4540: bd 09 04    ... :3440[1]
    ora #&20                                                          ; 4543: 09 20       .   :3443[1]
    sta enemy_ships_flags_or_explosion_timer,x                        ; 4545: 9d 09 04    ... :3445[1]
.defensive_about_angle
    jsr random_number_generator                                       ; 4548: 20 13 21     .! :3448[1]
    lda probability_of_new_enemy_ship_firing_torpedo_clusters         ; 454b: ad bc 33    ..3 :344b[1]
    cmp rnd_1                                                         ; 454e: cd d1 1c    ... :344e[1]
    bcc clusters_unset                                                ; 4551: 90 08       ..  :3451[1]
    lda enemy_ships_flags_or_explosion_timer,x                        ; 4553: bd 09 04    ... :3453[1]
    ora #&10                                                          ; 4556: 09 10       ..  :3456[1]
    sta enemy_ships_flags_or_explosion_timer,x                        ; 4558: 9d 09 04    ... :3458[1]
.clusters_unset
    ldy #0                                                            ; 455b: a0 00       ..  :345b[1]
    lda probability_of_new_enemy_ship_being_large                     ; 455d: ad bd 33    ..3 :345d[1]
    cmp rnd_2                                                         ; 4560: cd d2 1c    ... :3460[1]
    bcc small_ship                                                    ; 4563: 90 01       ..  :3463[1]
    iny                                                               ; 4565: c8          .   :3465[1]   ; Y=&01
.small_ship
    tya                                                               ; 4566: 98          .   :3466[1]
    sta enemy_ships_type,x                                            ; 4567: 9d 0a 04    ... :3467[1]
    jsr random_number_generator                                       ; 456a: 20 13 21     .! :346a[1]
    ldy command_number_used_for_maximum_enemy_torpedo_cooldown_lookup ; 456d: ac b9 33    ..3 :346d[1]
    cpy #8                                                            ; 4570: c0 08       ..  :3470[1]
    bcc skip_ceiling2                                                 ; 4572: 90 02       ..  :3472[1]
    ldy #7                                                            ; 4574: a0 07       ..  :3474[1]
.skip_ceiling2
    lda maximum_enemy_torpedo_cooldown_per_command,y                  ; 4576: b9 b1 33    ..3 :3476[1]
    sta x_pixels                                                      ; 4579: 85 7a       .z  :3479[1]
    ldy #4                                                            ; 457b: a0 04       ..  :347b[1]
    lda #0                                                            ; 457d: a9 00       ..  :347d[1]
.calculate_cooldown_loop
    lsr x_pixels                                                      ; 457f: 46 7a       Fz  :347f[1]
    bcc skip_addition                                                 ; 4581: 90 04       ..  :3481[1]
    clc                                                               ; 4583: 18          .   :3483[1]
    adc rnd_2                                                         ; 4584: 6d d2 1c    m.. :3484[1]
.skip_addition
    ror a                                                             ; 4587: 6a          j   :3487[1]
    dey                                                               ; 4588: 88          .   :3488[1]
    bne calculate_cooldown_loop                                       ; 4589: d0 f4       ..  :3489[1]
    clc                                                               ; 458b: 18          .   :348b[1]
    adc #&10                                                          ; 458c: 69 10       i.  :348c[1]
    and #&f0                                                          ; 458e: 29 f0       ).  :348e[1]
    sta enemy_ships_firing_cooldown,x                                 ; 4590: 9d 8a 04    ... :3490[1]
    lda #1                                                            ; 4593: a9 01       ..  :3493[1]
    sta enemy_ships_on_screen,x                                       ; 4595: 9d 80 04    ... :3495[1]
    lda #&ff                                                          ; 4598: a9 ff       ..  :3498[1]
    sta enemy_ships_velocity,x                                        ; 459a: 9d 08 04    ... :349a[1]
    rts                                                               ; 459d: 60          `   :349d[1]

.unused85
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 459e: ea ea ea... ... :349e[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea                                 ; 45aa: ea ea ea... ... :34aa[1]
.starship_type
    equb 0                                                            ; 45b0: 00          .   :34b0[1]
.command_number
    equb 0                                                            ; 45b1: 00          .   :34b1[1]
.regeneration_rate_for_enemy_ships
    equb 1                                                            ; 45b2: 01          .   :34b2[1]
.maximum_timer_for_enemy_ships_regeneration
    equb 4                                                            ; 45b3: 04          .   :34b3[1]
.timer_for_enemy_ships_regeneration
    equb 0                                                            ; 45b4: 00          .   :34b4[1]
.base_regeneration_rate_for_starship
    equb &0c                                                          ; 45b5: 0c          .   :34b5[1]
.maximum_timer_for_starship_energy_regeneration
    equb 3                                                            ; 45b6: 03          .   :34b6[1]
.timer_for_starship_energy_regeneration
    equb 3                                                            ; 45b7: 03          .   :34b7[1]
.base_damage_to_enemy_ship_from_other_collision
    equb &14                                                          ; 45b8: 14          .   :34b8[1]
.maximum_number_of_stars_in_game
    equb &11                                                          ; 45b9: 11          .   :34b9[1]
.minimum_number_of_stars
    equb 1                                                            ; 45ba: 01          .   :34ba[1]
.change_in_number_of_stars_per_command
    equb &fe                                                          ; 45bb: fe          .   :34bb[1]
.subtraction_from_starship_regeneration_when_shields_active
    equb 4                                                            ; 45bc: 04          .   :34bc[1]
.unused86
    equb &ea, &ea, &ea                                                ; 45bd: ea ea ea    ... :34bd[1]
.escape_capsule_launched_string
    equs "DEHCNUAL"                                                   ; 45c0: 44 45 48... DEH :34c0[1]
    equb &19, &20, &1f                                                ; 45c8: 19 20 1f    . . :34c8[1]
    equs "ELUSPAC"                                                    ; 45cb: 45 4c 55... ELU :34cb[1]
    equb &18, &20, &1f                                                ; 45d2: 18 20 1f    . . :34d2[1]
    equs "EPACSE"                                                     ; 45d5: 45 50 41... EPA :34d5[1]
    equb &17, &20, &1f                                                ; 45db: 17 20 1f    . . :34db[1]
.command_move_string
    equb 0, &81, 4                                                    ; 45de: 00 81 04    ... :34de[1]
.command_move_string_horizontal_pos
    equb &6f, 4, &19                                                  ; 45e1: 6f 04 19    o.. :34e1[1]
.command_string
    equs "DNAMMOC"                                                    ; 45e4: 44 4e 41... DNA :34e4[1]
    equb 5, 0, &a2, 4, &0f, 4, &19                                    ; 45eb: 05 00 a2... ... :34eb[1]
.unused87
    equb &ea, &ea                                                     ; 45f2: ea ea       ..  :34f2[1]

.prepare_starship_for_next_command
    inc starship_type                                                 ; 45f4: ee b0 34    ..4 :34f4[1]
    inc command_number_used_for_maximum_enemy_torpedo_cooldown_lookup ; 45f7: ee b9 33    ..3 :34f7[1]
    lda command_number                                                ; 45fa: ad b1 34    ..4 :34fa[1]
    clc                                                               ; 45fd: 18          .   :34fd[1]
    sei                                                               ; 45fe: 78          x   :34fe[1]
    sed                                                               ; 45ff: f8          .   :34ff[1]
    adc #1                                                            ; 4600: 69 01       i.  :3500[1]
    cld                                                               ; 4602: d8          .   :3502[1]
    cli                                                               ; 4603: 58          X   :3503[1]
    sta command_number                                                ; 4604: 8d b1 34    ..4 :3504[1]
    lda #0                                                            ; 4607: a9 00       ..  :3507[1]
    sta starship_has_exploded                                         ; 4609: 8d c9 1c    ... :3509[1]
    sta escape_capsule_launched                                       ; 460c: 8d d8 1c    ... :350c[1]
    sta escape_capsule_destroyed                                      ; 460f: 8d 90 28    ..( :350f[1]
    sta score_delta_high                                              ; 4612: 8d 64 2d    .d- :3512[1]
    sta score_delta_low                                               ; 4615: 8d 63 2d    .c- :3515[1]
    sta damage_high                                                   ; 4618: 8d 1e 19    ... :3518[1]
    sta damage_low                                                    ; 461b: 8d 1f 19    ... :351b[1]
    sta starship_energy_divided_by_sixteen                            ; 461e: 8d 22 19    .". :351e[1]
    sta rotation_damper                                               ; 4621: 8d 2c 19    .,. :3521[1]
    sta velocity_damper                                               ; 4624: 8d 31 19    .1. :3524[1]
    sta velocity_gauge_position                                       ; 4627: 8d 61 2d    .a- :3527[1]
    sta rotation_gauge_position                                       ; 462a: 8d 62 2d    .b- :352a[1]
    sta starship_velocity_low                                         ; 462d: 8d 01 0f    ... :352d[1]
    sta starship_rotation_magnitude                                   ; 4630: 8d 03 0f    ... :3530[1]
    sta starship_rotation_cosine                                      ; 4633: 8d 04 0f    ... :3533[1]
    sta starship_rotation_sine_magnitude                              ; 4636: 8d 05 0f    ... :3536[1]
    sta starship_angle_delta                                          ; 4639: 8d 33 0e    .3. :3539[1]
    sta previous_starship_automatic_shields                           ; 463c: 8d 3a 19    .:. :353c[1]
    sta sound_needed_for_low_energy                                   ; 463f: 8d f1 25    ..% :353f[1]
    sta energy_flash_timer                                            ; 4642: 8d f2 25    ..% :3542[1]
    lda #4                                                            ; 4645: a9 04       ..  :3545[1]
    sta starship_velocity_high                                        ; 4647: 8d 00 0f    ... :3547[1]
    lda #1                                                            ; 464a: a9 01       ..  :354a[1]
    sta scanner_failure_duration                                      ; 464c: 8d 59 26    .Y& :354c[1]
    sta starship_shields_active_before_failure                        ; 464f: 8d 5a 26    .Z& :354f[1]
    lda #&80                                                          ; 4652: a9 80       ..  :3552[1]
    sta starship_angle_fraction                                       ; 4654: 8d 32 0e    .2. :3554[1]
    sta starship_rotation                                             ; 4657: 8d 02 0f    ... :3557[1]
    sta starship_rotation_fraction                                    ; 465a: 8d 28 19    .(. :355a[1]
    sta starship_automatic_shields                                    ; 465d: 8d 24 19    .$. :355d[1]
    lda #&0c                                                          ; 4660: a9 0c       ..  :3560[1]
    sta starship_energy_high                                          ; 4662: 8d 1d 19    ... :3562[1]
    lda #&7f                                                          ; 4665: a9 7f       ..  :3565[1]
    sta starship_energy_low                                           ; 4667: 8d 1c 19    ... :3567[1]
; clear screen
    lda #&0c                                                          ; 466a: a9 0c       ..  :356a[1]
    jsr oswrch                                                        ; 466c: 20 ee ff     .. :356c[1]   ; Write character 12
    ldx #<(sound_0)                                                   ; 466f: a2 08       ..  :356f[1]
    ldy #>(sound_0)                                                   ; 4671: a0 20       .   :3571[1]
    lda #osword_sound                                                 ; 4673: a9 07       ..  :3573[1]
    jsr osword                                                        ; 4675: 20 f1 ff     .. :3575[1]   ; SOUND command
.initialise_starship_sprite
    lda starship_type                                                 ; 4678: ad b0 34    ..4 :3578[1]
    asl a                                                             ; 467b: 0a          .   :357b[1]
    asl a                                                             ; 467c: 0a          .   :357c[1]
    asl a                                                             ; 467d: 0a          .   :357d[1]
    asl a                                                             ; 467e: 0a          .   :357e[1]
    asl a                                                             ; 467f: 0a          .   :357f[1]
    tay                                                               ; 4680: a8          .   :3580[1]
    ldx #0                                                            ; 4681: a2 00       ..  :3581[1]
.initialise_starship_sprite_loop
    lda starship_sprite_1,y                                           ; 4683: b9 60 2c    .`, :3583[1]
    sta user_defined_characters,x                                     ; 4686: 9d 00 0c    ... :3586[1]
    iny                                                               ; 4689: c8          .   :3589[1]
    inx                                                               ; 468a: e8          .   :358a[1]
    cpx #&20                                                          ; 468b: e0 20       .   :358b[1]
    bne initialise_starship_sprite_loop                               ; 468d: d0 f4       ..  :358d[1]
    jsr initialise_stars_at_random_positions                          ; 468f: 20 58 1d     X. :358f[1]
    jsr initialise_enemy_ships                                        ; 4692: 20 14 36     .6 :3592[1]
    jsr initialise_game_screen                                        ; 4695: 20 a0 28     .( :3595[1]
    jsr plot_enemy_ships                                              ; 4698: 20 f2 16     .. :3598[1]
    rts                                                               ; 469b: 60          `   :359b[1]

.unused88
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea                  ; 469c: ea ea ea... ... :359c[1]

.plot_command_number
    lda #&d4                                                          ; 46a5: a9 d4       ..  :35a5[1]
    sta y_pixels                                                      ; 46a7: 85 7b       .{  :35a7[1]
    lda #0                                                            ; 46a9: a9 00       ..  :35a9[1]
    sta x_pixels                                                      ; 46ab: 85 7a       .z  :35ab[1]
    inc screen_start_high                                             ; 46ad: e6 79       .y  :35ad[1]
    lda #&3f                                                          ; 46af: a9 3f       .?  :35af[1]
    jsr plot_horizontal_line                                          ; 46b1: 20 db 1b     .. :35b1[1]
    dec screen_start_high                                             ; 46b4: c6 79       .y  :35b4[1]
    ldy #&0d                                                          ; 46b6: a0 0d       ..  :35b6[1]
.plot_command_loop
    lda command_string,y                                              ; 46b8: b9 e4 34    ..4 :35b8[1]
    jsr oswrch                                                        ; 46bb: 20 ee ff     .. :35bb[1]   ; Write character
    dey                                                               ; 46be: 88          .   :35be[1]
    bpl plot_command_loop                                             ; 46bf: 10 f7       ..  :35bf[1]
    ldy #&73                                                          ; 46c1: a0 73       .s  :35c1[1]
    lda command_number                                                ; 46c3: ad b1 34    ..4 :35c3[1]
    lsr a                                                             ; 46c6: 4a          J   :35c6[1]
    lsr a                                                             ; 46c7: 4a          J   :35c7[1]
    lsr a                                                             ; 46c8: 4a          J   :35c8[1]
    lsr a                                                             ; 46c9: 4a          J   :35c9[1]
    tax                                                               ; 46ca: aa          .   :35ca[1]
    beq single_digit_command_number_for_move                          ; 46cb: f0 02       ..  :35cb[1]
    ldy #&63                                                          ; 46cd: a0 63       .c  :35cd[1]
.single_digit_command_number_for_move
    sty command_move_string_horizontal_pos                            ; 46cf: 8c e1 34    ..4 :35cf[1]
    ldy #5                                                            ; 46d2: a0 05       ..  :35d2[1]
.plot_command_move_loop
    lda command_move_string,y                                         ; 46d4: b9 de 34    ..4 :35d4[1]
    jsr oswrch                                                        ; 46d7: 20 ee ff     .. :35d7[1]   ; Write character
    dey                                                               ; 46da: 88          .   :35da[1]
    bpl plot_command_move_loop                                        ; 46db: 10 f7       ..  :35db[1]
    txa                                                               ; 46dd: 8a          .   :35dd[1]
    beq single_digit_command_number                                   ; 46de: f0 06       ..  :35de[1]
    clc                                                               ; 46e0: 18          .   :35e0[1]
    adc #&30                                                          ; 46e1: 69 30       i0  :35e1[1]
    jsr oswrch                                                        ; 46e3: 20 ee ff     .. :35e3[1]   ; Write character
.single_digit_command_number
    lda command_number                                                ; 46e6: ad b1 34    ..4 :35e6[1]
    and #&0f                                                          ; 46e9: 29 0f       ).  :35e9[1]
    clc                                                               ; 46eb: 18          .   :35eb[1]
    adc #&30                                                          ; 46ec: 69 30       i0  :35ec[1]
    jsr oswrch                                                        ; 46ee: 20 ee ff     .. :35ee[1]   ; Write character
    lda #4                                                            ; 46f1: a9 04       ..  :35f1[1]
    jsr oswrch                                                        ; 46f3: 20 ee ff     .. :35f3[1]   ; Write character 4
    rts                                                               ; 46f6: 60          `   :35f6[1]

.plot_escape_capsule_launched
    ldy #&1d                                                          ; 46f7: a0 1d       ..  :35f7[1]
.plot_escape_capsule_launched_loop_loop
    lda escape_capsule_launched_string,y                              ; 46f9: b9 c0 34    ..4 :35f9[1]
    jsr oswrch                                                        ; 46fc: 20 ee ff     .. :35fc[1]   ; Write character
    dey                                                               ; 46ff: 88          .   :35ff[1]
    bpl plot_escape_capsule_launched_loop_loop                        ; 4700: 10 f7       ..  :3600[1]
    lda #&c8                                                          ; 4702: a9 c8       ..  :3602[1]
    sta y_pixels                                                      ; 4704: 85 7b       .{  :3604[1]
    lda #&3f                                                          ; 4706: a9 3f       .?  :3606[1]
    sta x_pixels                                                      ; 4708: 85 7a       .z  :3608[1]
    inc screen_start_high                                             ; 470a: e6 79       .y  :360a[1]
    lda #8                                                            ; 470c: a9 08       ..  :360c[1]
    jsr plot_vertical_line                                            ; 470e: 20 cf 1b     .. :360e[1]
    dec screen_start_high                                             ; 4711: c6 79       .y  :3611[1]
    rts                                                               ; 4713: 60          `   :3613[1]

.initialise_enemy_ships
    lda maximum_number_of_enemy_ships                                 ; 4714: ad 4f 0e    .O. :3614[1]
    sta enemy_ships_still_to_consider                                 ; 4717: 8d 54 0e    .T. :3617[1]
    ldx #0                                                            ; 471a: a2 00       ..  :361a[1]
.initialise_enemy_ships_loop
    jsr initialise_enemy_ship                                         ; 471c: 20 d2 33     .3 :361c[1]
    lda #1                                                            ; 471f: a9 01       ..  :361f[1]
    sta enemy_ships_previous_on_screen,x                              ; 4721: 9d 00 04    ... :3621[1]
    txa                                                               ; 4724: 8a          .   :3624[1]
    clc                                                               ; 4725: 18          .   :3625[1]
    adc #&0b                                                          ; 4726: 69 0b       i.  :3626[1]
    tax                                                               ; 4728: aa          .   :3628[1]
    dec enemy_ships_still_to_consider                                 ; 4729: ce 54 0e    .T. :3629[1]
    bne initialise_enemy_ships_loop                                   ; 472c: d0 ee       ..  :362c[1]
    rts                                                               ; 472e: 60          `   :362e[1]

.initialise_joystick_and_cursor_keys
    ldx #2                                                            ; 472f: a2 02       ..  :362f[1]
    lda #osbyte_select_adc_channels                                   ; 4731: a9 10       ..  :3631[1]
    jsr osbyte                                                        ; 4733: 20 f4 ff     .. :3633[1]   ; Select 2 ADC channels (X=2)
    ldx #1                                                            ; 4736: a2 01       ..  :3636[1]
    lda #osbyte_set_cursor_editing                                    ; 4738: a9 04       ..  :3638[1]
    jsr osbyte                                                        ; 473a: 20 f4 ff     .. :363a[1]   ; Disable cursor editing (edit keys give ASCII 135-139) (X=1)
    jsr convert_score_as_bcd_to_score_as_digits                       ; 473d: 20 01 2e     .. :363d[1]
    rts                                                               ; 4740: 60          `   :3640[1]

.unused89
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 4741: ea ea ea... ... :3641[1]
    equb &ea, &ea                                                     ; 474d: ea ea       ..  :364d[1]

.update_enemy_ships
    dec timer_for_enemy_ships_regeneration                            ; 474f: ce b4 34    ..4 :364f[1]
    bpl skip_timer_reset                                              ; 4752: 10 06       ..  :3652[1]
    lda maximum_timer_for_enemy_ships_regeneration                    ; 4754: ad b3 34    ..4 :3654[1]
    sta timer_for_enemy_ships_regeneration                            ; 4757: 8d b4 34    ..4 :3657[1]
.skip_timer_reset
    lda maximum_number_of_enemy_torpedoes                             ; 475a: ad 52 0e    .R. :365a[1]
    sta torpedoes_still_to_consider                                   ; 475d: 8d 55 0e    .U. :365d[1]
    lda enemy_torpedo_table_address_low                               ; 4760: ad 3d 0e    .=. :3660[1]
    sta temp0_low                                                     ; 4763: 85 80       ..  :3663[1]
    lda enemy_torpedo_table_address_high                              ; 4765: ad 3e 0e    .>. :3665[1]
    sta temp0_high                                                    ; 4768: 85 81       ..  :3668[1]
    lda maximum_number_of_enemy_ships                                 ; 476a: ad 4f 0e    .O. :366a[1]
    sta enemy_ships_still_to_consider                                 ; 476d: 8d 54 0e    .T. :366d[1]
    ldx #0                                                            ; 4770: a2 00       ..  :3670[1]
.update_enemy_ships_loop
    lda enemy_ships_energy,x                                          ; 4772: bd 89 04    ... :3672[1]
    beq to_skip_changing_behaviour_type                               ; 4775: f0 08       ..  :3675[1]
    ldy starship_has_exploded                                         ; 4777: ac c9 1c    ... :3677[1]
    beq starship_still_viable                                         ; 477a: f0 06       ..  :367a[1]
    jsr decrease_enemy_ship_velocity                                  ; 477c: 20 29 2c     ), :367c[1]
.to_skip_changing_behaviour_type
    jmp skip_changing_behaviour_type                                  ; 477f: 4c 18 37    L.7 :367f[1]

.starship_still_viable
    cmp #&ff                                                          ; 4782: c9 ff       ..  :3682[1]
    bne enemy_ship_is_damaged                                         ; 4784: d0 05       ..  :3684[1]
    lda desired_velocity_for_intact_enemy_ships                       ; 4786: ad 83 2a    ..* :3686[1]
    bne set_velocity                                                  ; 4789: d0 08       ..  :3689[1]
.enemy_ship_is_damaged
    lsr a                                                             ; 478b: 4a          J   :368b[1]
    lsr a                                                             ; 478c: 4a          J   :368c[1]
    lsr a                                                             ; 478d: 4a          J   :368d[1]
    lsr a                                                             ; 478e: 4a          J   :368e[1]
    clc                                                               ; 478f: 18          .   :368f[1]
    adc partial_velocity_for_damaged_enemy_ships                      ; 4790: 6d 82 2a    m.* :3690[1]
.set_velocity
    sta enemy_ship_desired_velocity                                   ; 4793: 8d 81 2a    ..* :3693[1]
    lda enemy_ships_firing_cooldown,x                                 ; 4796: bd 8a 04    ... :3696[1]
    and #&0f                                                          ; 4799: 29 0f       ).  :3699[1]
    beq cooldown_is_zero                                              ; 479b: f0 03       ..  :369b[1]
    dec enemy_ships_firing_cooldown,x                                 ; 479d: de 8a 04    ... :369d[1]
.cooldown_is_zero
    lda timer_for_enemy_ships_regeneration                            ; 47a0: ad b4 34    ..4 :36a0[1]
    bne skip_enemy_regeneration                                       ; 47a3: d0 15       ..  :36a3[1]
    lda enemy_ships_type,x                                            ; 47a5: bd 0a 04    ... :36a5[1]
    cmp #4                                                            ; 47a8: c9 04       ..  :36a8[1]
    bcs skip_enemy_regeneration                                       ; 47aa: b0 0e       ..  :36aa[1]
    lda enemy_ships_energy,x                                          ; 47ac: bd 89 04    ... :36ac[1]
    clc                                                               ; 47af: 18          .   :36af[1]
    adc regeneration_rate_for_enemy_ships                             ; 47b0: 6d b2 34    m.4 :36b0[1]
    bcc skip_ceiling3                                                 ; 47b3: 90 02       ..  :36b3[1]
    lda #&ff                                                          ; 47b5: a9 ff       ..  :36b5[1]
.skip_ceiling3
    sta enemy_ships_energy,x                                          ; 47b7: 9d 89 04    ... :36b7[1]
.skip_enemy_regeneration
    jsr enemy_ship_defensive_behaviour_handling                       ; 47ba: 20 8b 2a     .* :36ba[1]
    bcs skip_behaviour_routine                                        ; 47bd: b0 3a       .:  :36bd[1]
    lda enemy_ships_flags_or_explosion_timer,x                        ; 47bf: bd 09 04    ... :36bf[1]
    and #&0f                                                          ; 47c2: 29 0f       ).  :36c2[1]
    tay                                                               ; 47c4: a8          .   :36c4[1]
    lda enemy_ship_behaviour_routine_low_table,y                      ; 47c5: b9 5f 2a    ._* :36c5[1]
    sta temp1_low                                                     ; 47c8: 85 82       ..  :36c8[1]
    lda enemy_ship_behaviour_routine_high_table,y                     ; 47ca: b9 70 2a    .p* :36ca[1]
    sta temp1_high                                                    ; 47cd: 85 83       ..  :36cd[1]
    jmp (temp1_low)                                                   ; 47cf: 6c 82 00    l.. :36cf[1]

.return_from_enemy_ship_behaviour_routine
    lda enemy_ships_x_screens,x                                       ; 47d2: bd 83 04    ... :36d2[1]
    bmi skip_inversion_x5                                             ; 47d5: 30 02       0.  :36d5[1]
    eor #&ff                                                          ; 47d7: 49 ff       I.  :36d7[1]
.skip_inversion_x5
    sta x_pixels                                                      ; 47d9: 85 7a       .z  :36d9[1]
    lda enemy_ships_x_screens1,x                                      ; 47db: bd 86 04    ... :36db[1]
    bmi skip_inversion_y5                                             ; 47de: 30 02       0.  :36de[1]
    eor #&ff                                                          ; 47e0: 49 ff       I.  :36e0[1]
.skip_inversion_y5
    clc                                                               ; 47e2: 18          .   :36e2[1]
    adc x_pixels                                                      ; 47e3: 65 7a       ez  :36e3[1]
    cmp #6                                                            ; 47e5: c9 06       ..  :36e5[1]
    bcc skip_behaviour_routine                                        ; 47e7: 90 10       ..  :36e7[1]
    ldy enemy_ships_velocity,x                                        ; 47e9: bc 08 04    ... :36e9[1]
    cpy #&22                                                          ; 47ec: c0 22       ."  :36ec[1]
    bcs skip_behaviour_routine                                        ; 47ee: b0 09       ..  :36ee[1]
    adc #&50                                                          ; 47f0: 69 50       iP  :36f0[1]
    bcc skip_ceiling4                                                 ; 47f2: 90 02       ..  :36f2[1]
    lda #&ff                                                          ; 47f4: a9 ff       ..  :36f4[1]
.skip_ceiling4
    sta enemy_ships_velocity,x                                        ; 47f6: 9d 08 04    ... :36f6[1]
.skip_behaviour_routine
    jsr random_number_generator                                       ; 47f9: 20 13 21     .! :36f9[1]
    lda rnd_1                                                         ; 47fc: ad d1 1c    ... :36fc[1]
    cmp #6                                                            ; 47ff: c9 06       ..  :36ff[1]
    bcs skip_changing_behaviour_type                                  ; 4801: b0 15       ..  :3701[1]
    lda rnd_2                                                         ; 4803: ad d2 1c    ... :3703[1]
    and #&0f                                                          ; 4806: 29 0f       ).  :3706[1]
    sta x_pixels                                                      ; 4808: 85 7a       .z  :3708[1]
    lda enemy_ships_flags_or_explosion_timer,x                        ; 480a: bd 09 04    ... :370a[1]
    and #&f0                                                          ; 480d: 29 f0       ).  :370d[1]
    ora x_pixels                                                      ; 480f: 05 7a       .z  :370f[1]
    sta enemy_ships_flags_or_explosion_timer,x                        ; 4811: 9d 09 04    ... :3711[1]
    lda #0                                                            ; 4814: a9 00       ..  :3714[1]
    beq skip_resetting_hit_count                                      ; 4816: f0 05       ..  :3716[1]   ; ALWAYS branch

.skip_changing_behaviour_type
    lda enemy_ships_temporary_behaviour_flags,x                       ; 4818: bd 88 04    ... :3718[1]
    and #&f0                                                          ; 481b: 29 f0       ).  :371b[1]
.skip_resetting_hit_count
    sta enemy_ships_temporary_behaviour_flags,x                       ; 481d: 9d 88 04    ... :371d[1]
    txa                                                               ; 4820: 8a          .   :3720[1]
    clc                                                               ; 4821: 18          .   :3721[1]
    adc #&0b                                                          ; 4822: 69 0b       i.  :3722[1]
    tax                                                               ; 4824: aa          .   :3724[1]
    dec enemy_ships_still_to_consider                                 ; 4825: ce 54 0e    .T. :3725[1]
    beq return27                                                      ; 4828: f0 03       ..  :3728[1]
    jmp update_enemy_ships_loop                                       ; 482a: 4c 72 36    Lr6 :372a[1]

.return27
    rts                                                               ; 482d: 60          `   :372d[1]

; ----------------------------------------------------------------------------------
.enemy_ship_behaviour_routine6
    lda enemy_ships_on_screen,x                                       ; 482e: bd 80 04    ... :372e[1]
    bne off_screen5                                                   ; 4831: d0 25       .%  :3731[1]
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 4833: 20 61 2b     a+ :3733[1]
    bne skip_firing1                                                  ; 4836: d0 03       ..  :3736[1]
    jsr fire_enemy_torpedo                                            ; 4838: 20 cc 26     .& :3738[1]
.skip_firing1
    lda enemy_ships_x_pixels1,x                                       ; 483b: bd 85 04    ... :373b[1]
    bpl slow_to_a_crawl                                               ; 483e: 10 0b       ..  :373e[1]
    and #&7f                                                          ; 4840: 29 7f       ).  :3740[1]
    lsr a                                                             ; 4842: 4a          J   :3742[1]
    clc                                                               ; 4843: 18          .   :3743[1]
    adc enemy_ships_still_to_consider                                 ; 4844: 6d 54 0e    mT. :3744[1]
    sbc #6                                                            ; 4847: e9 06       ..  :3747[1]
    bcs use_speed_based_on_y_pixels                                   ; 4849: b0 02       ..  :3749[1]
.slow_to_a_crawl
    lda #1                                                            ; 484b: a9 01       ..  :374b[1]
.use_speed_based_on_y_pixels
    cmp enemy_ship_desired_velocity                                   ; 484d: cd 81 2a    ..* :374d[1]
    bcs return_after_changing_velocity4                               ; 4850: b0 09       ..  :3750[1]
    sta enemy_ship_desired_velocity                                   ; 4852: 8d 81 2a    ..* :3752[1]
    jmp return_after_changing_velocity4                               ; 4855: 4c 5b 37    L[7 :3755[1]

.off_screen5
    jsr turn_enemy_ship_towards_starship_using_screens                ; 4858: 20 47 2b     G+ :3758[1]
.return_after_changing_velocity4
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 485b: 20 3a 2c     :, :375b[1]
    jmp return_from_enemy_ship_behaviour_routine                      ; 485e: 4c d2 36    L.6 :375e[1]

; ----------------------------------------------------------------------------------
.enemy_ship_behaviour_routine7
    lda enemy_ship_desired_velocity                                   ; 4861: ad 81 2a    ..* :3761[1]
    clc                                                               ; 4864: 18          .   :3764[1]
    adc #8                                                            ; 4865: 69 08       i.  :3765[1]
    sta enemy_ship_desired_velocity                                   ; 4867: 8d 81 2a    ..* :3767[1]
    lda enemy_ships_on_screen,x                                       ; 486a: bd 80 04    ... :376a[1]
    bne off_screen6                                                   ; 486d: d0 68       .h  :376d[1]
    lda enemy_ships_temporary_behaviour_flags,x                       ; 486f: bd 88 04    ... :376f[1]
    tay                                                               ; 4872: a8          .   :3772[1]
    and #&10                                                          ; 4873: 29 10       ).  :3773[1]
    bne kamikaze_stage_one_set                                        ; 4875: d0 37       .7  :3775[1]
    tya                                                               ; 4877: 98          .   :3777[1]
    and #&20                                                          ; 4878: 29 20       )   :3778[1]
    bne skip_setting_kamikaze_stage_one                               ; 487a: d0 0e       ..  :377a[1]
    lda starship_velocity_high                                        ; 487c: ad 00 0f    ... :377c[1]
    cmp #2                                                            ; 487f: c9 02       ..  :377f[1]
    bcc skip_setting_kamikaze_stage_one                               ; 4881: 90 07       ..  :3781[1]
    tya                                                               ; 4883: 98          .   :3783[1]
    ora #&10                                                          ; 4884: 09 10       ..  :3784[1]
    tay                                                               ; 4886: a8          .   :3786[1]
    sta enemy_ships_temporary_behaviour_flags,x                       ; 4887: 9d 88 04    ... :3787[1]
.skip_setting_kamikaze_stage_one
    jsr get_rectilinear_distance_from_centre_of_screen                ; 488a: 20 26 2b     &+ :378a[1]
    cmp #&69                                                          ; 488d: c9 69       .i  :378d[1]
    bcc decelerate1                                                   ; 488f: 90 0c       ..  :378f[1]
    tya                                                               ; 4891: 98          .   :3791[1]
    and #&cf                                                          ; 4892: 29 cf       ).  :3792[1]
    sta enemy_ships_temporary_behaviour_flags,x                       ; 4894: 9d 88 04    ... :3794[1]
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 4897: 20 3a 2c     :, :3797[1]
    jmp skip_deceleration1                                            ; 489a: 4c a3 37    L.7 :379a[1]

.decelerate1
    jsr decrease_enemy_ship_velocity                                  ; 489d: 20 29 2c     ), :379d[1]
    jsr decrease_enemy_ship_velocity                                  ; 48a0: 20 29 2c     ), :37a0[1]
.skip_deceleration1
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 48a3: 20 61 2b     a+ :37a3[1]
    bne to_return_from_enemy_ship_behaviour_routine3                  ; 48a6: d0 35       .5  :37a6[1]
    jsr fire_enemy_torpedo                                            ; 48a8: 20 cc 26     .& :37a8[1]
    jmp to_return_from_enemy_ship_behaviour_routine3                  ; 48ab: 4c dd 37    L.7 :37ab[1]

.kamikaze_stage_one_set
    lda enemy_ship_desired_angle_divided_by_eight                     ; 48ae: ad 55 26    .U& :37ae[1]
    lsr a                                                             ; 48b1: 4a          J   :37b1[1]
    clc                                                               ; 48b2: 18          .   :37b2[1]
    adc #8                                                            ; 48b3: 69 08       i.  :37b3[1]
    and #&1f                                                          ; 48b5: 29 1f       ).  :37b5[1]
    sta enemy_ship_desired_angle_divided_by_eight                     ; 48b7: 8d 55 26    .U& :37b7[1]
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 48ba: 20 61 2b     a+ :37ba[1]
    lda enemy_ships_x_pixels1,x                                       ; 48bd: bd 85 04    ... :37bd[1]
    bmi return_after_changing_velocity5                               ; 48c0: 30 18       0.  :37c0[1]
    lda enemy_ships_x_pixels,x                                        ; 48c2: bd 82 04    ... :37c2[1]
    sec                                                               ; 48c5: 38          8   :37c5[1]
    sbc #&60                                                          ; 48c6: e9 60       .`  :37c6[1]
    cmp #&40                                                          ; 48c8: c9 40       .@  :37c8[1]
    bcs return_after_changing_velocity5                               ; 48ca: b0 0e       ..  :37ca[1]
    lda enemy_ships_temporary_behaviour_flags,x                       ; 48cc: bd 88 04    ... :37cc[1]
    eor #&30                                                          ; 48cf: 49 30       I0  :37cf[1]
    sta enemy_ships_temporary_behaviour_flags,x                       ; 48d1: 9d 88 04    ... :37d1[1]
    jmp return_after_changing_velocity5                               ; 48d4: 4c da 37    L.7 :37d4[1]

.off_screen6
    jsr turn_enemy_ship_towards_starship_using_screens                ; 48d7: 20 47 2b     G+ :37d7[1]
.return_after_changing_velocity5
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 48da: 20 3a 2c     :, :37da[1]
.to_return_from_enemy_ship_behaviour_routine3
    jmp return_from_enemy_ship_behaviour_routine                      ; 48dd: 4c d2 36    L.6 :37dd[1]

.unused90
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 48e0: ea ea ea... ... :37e0[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea                            ; 48ec: ea ea ea... ... :37ec[1]

.start_game_continuation
    lda #&ff                                                          ; 48f3: a9 ff       ..  :37f3[1]
    sta command_number_used_for_maximum_enemy_torpedo_cooldown_lookup ; 48f5: 8d b9 33    ..3 :37f5[1]
    sta starship_type                                                 ; 48f8: 8d b0 34    ..4 :37f8[1]
    lda #0                                                            ; 48fb: a9 00       ..  :37fb[1]
    sta command_number                                                ; 48fd: 8d b1 34    ..4 :37fd[1]
    sta score_as_bcd + 2                                              ; 4900: 8d 67 2d    .g- :3800[1]
    sta score_as_bcd + 1                                              ; 4903: 8d 66 2d    .f- :3803[1]
    sta score_as_bcd                                                  ; 4906: 8d 65 2d    .e- :3806[1]
    lda maximum_number_of_stars_in_game                               ; 4909: ad b9 34    ..4 :3809[1]
    sta maximum_number_of_stars                                       ; 490c: 8d 50 0e    .P. :380c[1]
    ldy #3                                                            ; 490f: a0 03       ..  :380f[1]
.reset_enemy_ship_spawning_probabilities_loop
    lda initial_enemy_ship_spawning_probabilities,y                   ; 4911: b9 cc 33    ..3 :3811[1]
    sta probability_of_new_enemy_ship_being_defensive_about_damage,y  ; 4914: 99 ba 33    ..3 :3814[1]
    dey                                                               ; 4917: 88          .   :3817[1]
    bpl reset_enemy_ship_spawning_probabilities_loop                  ; 4918: 10 f7       ..  :3818[1]
    jsr prepare_starship_for_next_command                             ; 491a: 20 f4 34     .4 :381a[1]
    jmp main_game_loop                                                ; 491d: 4c 33 38    L38 :381d[1]

.unused91
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 4920: ea ea ea... ... :3820[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea                            ; 492c: ea ea ea... ... :382c[1]

.main_game_loop
    lda #0                                                            ; 4933: a9 00       ..  :3833[1]
    sta enemy_torpedo_hits_against_starship                           ; 4935: 8d dd 1c    ... :3835[1]
    sta enemy_ship_was_hit                                            ; 4938: 8d de 1c    ... :3838[1]
    sta starship_collided_with_enemy_ship                             ; 493b: 8d de 25    ..% :383b[1]
    sta starship_fired_torpedo                                        ; 493e: 8d 58 26    .X& :383e[1]
    sta enemy_ship_fired_torpedo                                      ; 4941: 8d dc 1c    ... :3841[1]
    sta enemy_ships_collided_with_each_other                          ; 4944: 8d d1 17    ... :3844[1]
    sta number_of_delay_loops                                         ; 4947: 8d 2d 0e    .-. :3847[1]
    jsr apply_velocity_to_enemy_ships                                 ; 494a: 20 31 16     1. :384a[1]
    lda #&ff                                                          ; 494d: a9 ff       ..  :384d[1]
    sta how_enemy_ship_was_damaged                                    ; 494f: 8d e0 1c    ... :384f[1]
    jsr check_for_starship_collision_with_enemy_ships                 ; 4952: 20 d8 17     .. :3852[1]
    jsr update_enemy_ships                                            ; 4955: 20 4f 36     O6 :3855[1]
    lda starship_shields_active                                       ; 4958: ad 56 0e    .V. :3858[1]
    beq skip_scanner_update                                           ; 495b: f0 08       ..  :385b[1]
    lda scanner_failure_duration                                      ; 495d: ad 59 26    .Y& :385d[1]
    bne skip_scanner_update                                           ; 4960: d0 03       ..  :3860[1]
    jsr plot_enemy_ships_on_scanners                                  ; 4962: 20 19 30     .0 :3862[1]
.skip_scanner_update
    jsr plot_enemy_ships                                              ; 4965: 20 f2 16     .. :3865[1]
    jsr update_stars                                                  ; 4968: 20 d0 13     .. :3868[1]
    jsr handle_enemy_ships_cloaking                                   ; 496b: 20 67 26     g& :386b[1]
    inc how_enemy_ship_was_damaged                                    ; 496e: ee e0 1c    ... :386e[1]
    jsr plot_starship_torpedoes                                       ; 4971: 20 19 12     .. :3871[1]
    jsr update_enemy_torpedoes                                        ; 4974: 20 d2 14     .. :3874[1]
    inc how_enemy_ship_was_damaged                                    ; 4977: ee e0 1c    ... :3877[1]
    jsr handle_starship_self_destruct                                 ; 497a: 20 f8 28     .( :387a[1]
    jsr handle_scanner_failure                                        ; 497d: 20 61 31     a1 :387d[1]
    lda number_of_delay_loops                                         ; 4980: ad 2d 0e    .-. :3880[1]
    beq skip_delay                                                    ; 4983: f0 0e       ..  :3883[1]
    cmp #&0b                                                          ; 4985: c9 0b       ..  :3885[1]
    bcc delay_loop_loop                                               ; 4987: 90 02       ..  :3887[1]
    lda #&0a                                                          ; 4989: a9 0a       ..  :3889[1]
.delay_loop_loop
    jsr delay_loop                                                    ; 498b: 20 9c 17     .. :388b[1]
    dec number_of_delay_loops                                         ; 498e: ce 2d 0e    .-. :388e[1]
    bne delay_loop_loop                                               ; 4991: d0 f8       ..  :3891[1]
.skip_delay
    lda #0                                                            ; 4993: a9 00       ..  :3893[1]
    dec timer_for_starship_energy_regeneration                        ; 4995: ce b7 34    ..4 :3895[1]
    bne set_regeneration                                              ; 4998: d0 16       ..  :3898[1]
    lda maximum_timer_for_starship_energy_regeneration                ; 499a: ad b6 34    ..4 :389a[1]
    sta timer_for_starship_energy_regeneration                        ; 499d: 8d b7 34    ..4 :389d[1]
    lda base_regeneration_rate_for_starship                           ; 49a0: ad b5 34    ..4 :38a0[1]
    sec                                                               ; 49a3: 38          8   :38a3[1]
    sbc starship_velocity_high                                        ; 49a4: ed 00 0f    ... :38a4[1]
    ldy starship_shields_active                                       ; 49a7: ac 56 0e    .V. :38a7[1]
    bne set_regeneration                                              ; 49aa: d0 04       ..  :38aa[1]
    sec                                                               ; 49ac: 38          8   :38ac[1]
    sbc subtraction_from_starship_regeneration_when_shields_active    ; 49ad: ed bc 34    ..4 :38ad[1]
.set_regeneration
    sta starship_energy_regeneration                                  ; 49b0: 8d 23 19    .#. :38b0[1]
    lda starship_has_exploded                                         ; 49b3: ad c9 1c    ... :38b3[1]
    beq starship_hasnt_exploded                                       ; 49b6: f0 06       ..  :38b6[1]
    jsr plot_starship_explosion                                       ; 49b8: 20 e8 1d     .. :38b8[1]
    jmp skip_player_movement                                          ; 49bb: 4c c4 38    L.8 :38bb[1]

.starship_hasnt_exploded
    jsr update_various_starship_statuses_on_screen                    ; 49be: 20 c7 1a     .. :38be[1]
    jsr handle_player_movement                                        ; 49c1: 20 3f 19     ?. :38c1[1]
.skip_player_movement
    jsr apply_rotation_to_starship_angle                              ; 49c4: 20 a4 14     .. :38c4[1]
    jsr play_sounds                                                   ; 49c7: 20 5a 24     Z$ :38c7[1]
    jsr apply_delta_to_score                                          ; 49ca: 20 d0 2d     .- :38ca[1]
    jsr random_number_generator                                       ; 49cd: 20 13 21     .! :38cd[1]
    lda rnd_2                                                         ; 49d0: ad d2 1c    ... :38d0[1]
    and #&3f                                                          ; 49d3: 29 3f       )?  :38d3[1]
    clc                                                               ; 49d5: 18          .   :38d5[1]
    adc base_damage_to_enemy_ship_from_other_collision                ; 49d6: 6d b8 34    m.4 :38d6[1]
    sta damage_to_enemy_ship_from_other_collision                     ; 49d9: 8d df 1c    ... :38d9[1]
    lda starship_velocity_high                                        ; 49dc: ad 00 0f    ... :38dc[1]
    sta y_pixels                                                      ; 49df: 85 7b       .{  :38df[1]
    lda starship_velocity_low                                         ; 49e1: ad 01 0f    ... :38e1[1]
    asl a                                                             ; 49e4: 0a          .   :38e4[1]
    rol y_pixels                                                      ; 49e5: 26 7b       &{  :38e5[1]
    asl a                                                             ; 49e7: 0a          .   :38e7[1]
    rol y_pixels                                                      ; 49e8: 26 7b       &{  :38e8[1]
    lda rnd_1                                                         ; 49ea: ad d1 1c    ... :38ea[1]
    and #&1f                                                          ; 49ed: 29 1f       ).  :38ed[1]
    adc y_pixels                                                      ; 49ef: 65 7b       e{  :38ef[1]
    adc #&0c                                                          ; 49f1: 69 0c       i.  :38f1[1]
    sta value_used_for_enemy_torpedo_ttl                              ; 49f3: 8d 36 0e    .6. :38f3[1]
    jmp main_game_loop                                                ; 49f6: 4c 33 38    L38 :38f6[1]

.unused92
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 49f9: ea ea ea... ... :38f9[1]
    equb &ea, &ea                                                     ; 4a05: ea ea       ..  :3905[1]
.previous_score_as_bcd
    equb 0                                                            ; 4a07: 00          .   :3907[1]
    equb 0                                                            ; 4a08: 00          .   :3908[1]
    equb 0                                                            ; 4a09: 00          .   :3909[1]
.allowed_another_command
    equb 0                                                            ; 4a0a: 00          .   :390a[1]
.unused93
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea                            ; 4a0b: ea ea ea... ... :390b[1]
.combat_experience_rating_string
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
.no_before_the_starship_exploded_string
    equb &1f, 5, &0a, &4e, &4f, &1f, 5, &0b                           ; 4a97: 1f 05 0a... ... :3997[1]
    equs "before the starship exploded."                              ; 4a9f: 62 65 66... bef :399f[1]
    equb &0d                                                          ; 4abc: 0d          .   :39bc[1]
.after_your_performance_string
    equb &1f, 3, &16                                                  ; 4abd: 1f 03 16    ... :39bd[1]
    equs "After  your  performance  on  this"                         ; 4ac0: 41 66 74... Aft :39c0[1]
    equb &1f, 3, &17                                                  ; 4ae2: 1f 03 17    ... :39e2[1]
    equs "command the Star-Fleet authorities"                         ; 4ae5: 63 6f 6d... com :39e5[1]
    equb &1f, 3, &18                                                  ; 4b07: 1f 03 18    ... :3a07[1]
    equs "are  said  to  be  ", '"'                                   ; 4b0a: 61 72 65... are :3a0a[1]
    equb &0d                                                          ; 4b1e: 0d          .   :3a1e[1]
.and_returned_safely_text
    equb &1f, 5, &0b                                                  ; 4b1f: 1f 05 0b    ... :3a1f[1]
    equs "and returned safely from the"                               ; 4b22: 61 6e 64... and :3a22[1]
    equb &1f, 5, &0c                                                  ; 4b3e: 1f 05 0c    ... :3a3e[1]
    equs "combat zone."                                               ; 4b41: 63 6f 6d... com :3a41[1]
    equb &0d                                                          ; 4b4d: 0d          .   :3a4d[1]
.but_collided_string
    equb &1f, 5, &0b                                                  ; 4b4e: 1f 05 0b    ... :3a4e[1]
    equs "but collided with an enemy ship."                           ; 4b51: 62 75 74... but :3a51[1]
    equb &0d                                                          ; 4b71: 0d          .   :3a71[1]
.having_just_gained_string
    equb &1f, 4, &13                                                  ; 4b72: 1f 04 13    ... :3a72[1]
    equs "having  just  gained  "                                     ; 4b75: 68 61 76... hav :3a75[1]
    equb &0d                                                          ; 4b8b: 0d          .   :3a8b[1]
.and_but_they_allow_string
    equs "and but they allow you the command of"                      ; 4b8c: 61 6e 64... and :3a8c[1]
    equb &1f, 3, &1b                                                  ; 4bb1: 1f 03 1b    ... :3ab1[1]
    equs "another starship."                                          ; 4bb4: 61 6e 6f... ano :3ab4[1]
    equb &0d                                                          ; 4bc5: 0d          .   :3ac5[1]
.emotions
    equs '"', "furious", '"', "displeased", '"', "disappointed", '"'  ; 4bc6: 22 66 75... "fu :3ac6[1]
    equs "disappointed", '"', "satisfied", '"', "pleased", '"', "i"   ; 4be7: 64 69 73... dis :3ae7[1]
    equs "mpressed", '"', "delighted", '"'                            ; 4c07: 6d 70 72... mpr :3b07[1]
    equb &0d                                                          ; 4c1a: 0d          .   :3b1a[1]
.and_they_retire_you_string
    equb &1f, 0, &1a                                                  ; 4c1b: 1f 00 1a    ... :3b1b[1]
    equs "and they retire you from active service."                   ; 4c1e: 61 6e 64... and :3b1e[1]
    equb &0d                                                          ; 4c46: 0d          .   :3b46[1]
.threshold_table
    equb 2, 3, 4, 7, &0d, &14, &1e                                    ; 4c47: 02 03 04... ... :3b47[1]
.unused94
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 4c4e: ea ea ea... ... :3b4e[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea                            ; 4c5a: ea ea ea... ... :3b5a[1]

.plot_debriefing
    lda #&0a                                                          ; 4c61: a9 0a       ..  :3b61[1]
    jsr oswrch                                                        ; 4c63: 20 ee ff     .. :3b63[1]   ; Write character 10
    ldy #&0d                                                          ; 4c66: a0 0d       ..  :3b66[1]
.plot_row_of_starships_top_line_loop
    lda #&20                                                          ; 4c68: a9 20       .   :3b68[1]
    jsr oswrch                                                        ; 4c6a: 20 ee ff     .. :3b6a[1]   ; Write character 32
    lda #&e0                                                          ; 4c6d: a9 e0       ..  :3b6d[1]
    jsr oswrch                                                        ; 4c6f: 20 ee ff     .. :3b6f[1]   ; Write character 224
    lda #&e1                                                          ; 4c72: a9 e1       ..  :3b72[1]
    jsr oswrch                                                        ; 4c74: 20 ee ff     .. :3b74[1]   ; Write character 225
    dey                                                               ; 4c77: 88          .   :3b77[1]
    bne plot_row_of_starships_top_line_loop                           ; 4c78: d0 ee       ..  :3b78[1]
    lda #&20                                                          ; 4c7a: a9 20       .   :3b7a[1]
    jsr oswrch                                                        ; 4c7c: 20 ee ff     .. :3b7c[1]   ; Write character 32
    ldy #&0d                                                          ; 4c7f: a0 0d       ..  :3b7f[1]
.plot_row_of_starships_bottom_line_loop
    lda #&20                                                          ; 4c81: a9 20       .   :3b81[1]
    jsr oswrch                                                        ; 4c83: 20 ee ff     .. :3b83[1]   ; Write character 32
    lda #&e2                                                          ; 4c86: a9 e2       ..  :3b86[1]
    jsr oswrch                                                        ; 4c88: 20 ee ff     .. :3b88[1]   ; Write character 226
    lda #&e3                                                          ; 4c8b: a9 e3       ..  :3b8b[1]
    jsr oswrch                                                        ; 4c8d: 20 ee ff     .. :3b8d[1]   ; Write character 227
    dey                                                               ; 4c90: 88          .   :3b90[1]
    bne plot_row_of_starships_bottom_line_loop                        ; 4c91: d0 ee       ..  :3b91[1]
    jsr plot_line_of_underscores                                      ; 4c93: 20 1b 3d     .= :3b93[1]
    ldy #0                                                            ; 4c96: a0 00       ..  :3b96[1]
.plot_combat_experience_rating_text_loop
    lda combat_experience_rating_string,y                             ; 4c98: b9 12 39    ..9 :3b98[1]
    jsr oswrch                                                        ; 4c9b: 20 ee ff     .. :3b9b[1]   ; Write character
    iny                                                               ; 4c9e: c8          .   :3b9e[1]
    cmp #&3e                                                          ; 4c9f: c9 3e       .>  :3b9f[1]
    bne plot_combat_experience_rating_text_loop                       ; 4ca1: d0 f5       ..  :3ba1[1]
.plot_command_number1
    ldy #5                                                            ; 4ca3: a0 05       ..  :3ba3[1]
    ldx #&1c                                                          ; 4ca5: a2 1c       ..  :3ba5[1]
    jsr tab_to_x_y                                                    ; 4ca7: 20 30 3d     0= :3ba7[1]
    lda command_number                                                ; 4caa: ad b1 34    ..4 :3baa[1]
    lsr a                                                             ; 4cad: 4a          J   :3bad[1]
    lsr a                                                             ; 4cae: 4a          J   :3bae[1]
    lsr a                                                             ; 4caf: 4a          J   :3baf[1]
    lsr a                                                             ; 4cb0: 4a          J   :3bb0[1]
    beq single_digit_command_number1                                  ; 4cb1: f0 06       ..  :3bb1[1]
    clc                                                               ; 4cb3: 18          .   :3bb3[1]
    adc #&30                                                          ; 4cb4: 69 30       i0  :3bb4[1]
    jsr oswrch                                                        ; 4cb6: 20 ee ff     .. :3bb6[1]   ; Write character
.single_digit_command_number1
    lda command_number                                                ; 4cb9: ad b1 34    ..4 :3bb9[1]
    and #&0f                                                          ; 4cbc: 29 0f       ).  :3bbc[1]
    clc                                                               ; 4cbe: 18          .   :3bbe[1]
    adc #&30                                                          ; 4cbf: 69 30       i0  :3bbf[1]
    jsr oswrch                                                        ; 4cc1: 20 ee ff     .. :3bc1[1]   ; Write character
    jsr plot_line_of_underscores                                      ; 4cc4: 20 1b 3d     .= :3bc4[1]
    lda escape_capsule_launched                                       ; 4cc7: ad d8 1c    ... :3bc7[1]
    bne escape_capsule_was_launched                                   ; 4cca: d0 0f       ..  :3bca[1]
    ldy #0                                                            ; 4ccc: a0 00       ..  :3bcc[1]
.plot_no_before_the_starship_exploded_loop
    lda no_before_the_starship_exploded_string,y                      ; 4cce: b9 97 39    ..9 :3bce[1]
    jsr oswrch                                                        ; 4cd1: 20 ee ff     .. :3bd1[1]   ; Write character
    iny                                                               ; 4cd4: c8          .   :3bd4[1]
    cmp #&2e                                                          ; 4cd5: c9 2e       ..  :3bd5[1]
    bne plot_no_before_the_starship_exploded_loop                     ; 4cd7: d0 f5       ..  :3bd7[1]
    beq plot_score_in_debriefing                                      ; 4cd9: f0 21       .!  :3bd9[1]   ; ALWAYS branch

.escape_capsule_was_launched
    lda escape_capsule_destroyed                                      ; 4cdb: ad 90 28    ..( :3bdb[1]
    bne escape_capsule_was_destroyed                                  ; 4cde: d0 0f       ..  :3bde[1]
    ldy #0                                                            ; 4ce0: a0 00       ..  :3be0[1]
.plot_and_returned_safely_loop
    lda and_returned_safely_text,y                                    ; 4ce2: b9 1f 3a    ..: :3be2[1]
    jsr oswrch                                                        ; 4ce5: 20 ee ff     .. :3be5[1]   ; Write character
    iny                                                               ; 4ce8: c8          .   :3be8[1]
    cmp #&2e                                                          ; 4ce9: c9 2e       ..  :3be9[1]
    bne plot_and_returned_safely_loop                                 ; 4ceb: d0 f5       ..  :3beb[1]
    beq plot_score_in_debriefing                                      ; 4ced: f0 0d       ..  :3bed[1]   ; ALWAYS branch

.escape_capsule_was_destroyed
    ldy #0                                                            ; 4cef: a0 00       ..  :3bef[1]
.plot_but_collided_loop
    lda but_collided_string,y                                         ; 4cf1: b9 4e 3a    .N: :3bf1[1]
    jsr oswrch                                                        ; 4cf4: 20 ee ff     .. :3bf4[1]   ; Write character
    iny                                                               ; 4cf7: c8          .   :3bf7[1]
    cmp #&2e                                                          ; 4cf8: c9 2e       ..  :3bf8[1]
    bne plot_but_collided_loop                                        ; 4cfa: d0 f5       ..  :3bfa[1]
.plot_score_in_debriefing
    ldy #&11                                                          ; 4cfc: a0 11       ..  :3bfc[1]
    ldx #&1e                                                          ; 4cfe: a2 1e       ..  :3bfe[1]
    jsr tab_to_x_y                                                    ; 4d00: 20 30 3d     0= :3c00[1]
    ldx #&fe                                                          ; 4d03: a2 fe       ..  :3c03[1]
    ldy #5                                                            ; 4d05: a0 05       ..  :3c05[1]
.plot_score_in_debriefing_loop
    lda score_as_digits,y                                             ; 4d07: b9 6e 2d    .n- :3c07[1]
    bne non_zero_digit1                                               ; 4d0a: d0 07       ..  :3c0a[1]
    tya                                                               ; 4d0c: 98          .   :3c0c[1]
    beq non_zero_digit1                                               ; 4d0d: f0 04       ..  :3c0d[1]
    txa                                                               ; 4d0f: 8a          .   :3c0f[1]
    jmp leading_zero1                                                 ; 4d10: 4c 15 3c    L.< :3c10[1]

.non_zero_digit1
    ldx #0                                                            ; 4d13: a2 00       ..  :3c13[1]
.leading_zero1
    clc                                                               ; 4d15: 18          .   :3c15[1]
    adc #&30                                                          ; 4d16: 69 30       i0  :3c16[1]
    jsr oswrch                                                        ; 4d18: 20 ee ff     .. :3c18[1]   ; Write character
    dey                                                               ; 4d1b: 88          .   :3c1b[1]
    bpl plot_score_in_debriefing_loop                                 ; 4d1c: 10 e9       ..  :3c1c[1]
    lda score_as_bcd                                                  ; 4d1e: ad 65 2d    .e- :3c1e[1]
    sec                                                               ; 4d21: 38          8   :3c21[1]
    sei                                                               ; 4d22: 78          x   :3c22[1]
    sed                                                               ; 4d23: f8          .   :3c23[1]
    sbc previous_score_as_bcd                                         ; 4d24: ed 07 39    ..9 :3c24[1]
    sta previous_score_as_bcd                                         ; 4d27: 8d 07 39    ..9 :3c27[1]
    lda score_as_bcd + 1                                              ; 4d2a: ad 66 2d    .f- :3c2a[1]
    sbc previous_score_as_bcd + 1                                     ; 4d2d: ed 08 39    ..9 :3c2d[1]
    sta previous_score_as_bcd + 1                                     ; 4d30: 8d 08 39    ..9 :3c30[1]
    lda score_as_bcd + 2                                              ; 4d33: ad 67 2d    .g- :3c33[1]
    sbc previous_score_as_bcd + 2                                     ; 4d36: ed 09 39    ..9 :3c36[1]
    sta previous_score_as_bcd + 2                                     ; 4d39: 8d 09 39    ..9 :3c39[1]
    cld                                                               ; 4d3c: d8          .   :3c3c[1]
    cli                                                               ; 4d3d: 58          X   :3c3d[1]
    lda escape_capsule_destroyed                                      ; 4d3e: ad 90 28    ..( :3c3e[1]
    eor escape_capsule_launched                                       ; 4d41: 4d d8 1c    M.. :3c41[1]
    sta allowed_another_command                                       ; 4d44: 8d 0a 39    ..9 :3c44[1]
    lda command_number                                                ; 4d47: ad b1 34    ..4 :3c47[1]
    cmp #1                                                            ; 4d4a: c9 01       ..  :3c4a[1]
    beq skip_previous_command_score                                   ; 4d4c: f0 29       .)  :3c4c[1]
    ldy #0                                                            ; 4d4e: a0 00       ..  :3c4e[1]
.plot_having_just_gained_loop
    lda having_just_gained_string,y                                   ; 4d50: b9 72 3a    .r: :3c50[1]
    jsr oswrch                                                        ; 4d53: 20 ee ff     .. :3c53[1]   ; Write character
    iny                                                               ; 4d56: c8          .   :3c56[1]
    cpy #&19                                                          ; 4d57: c0 19       ..  :3c57[1]
    bne plot_having_just_gained_loop                                  ; 4d59: d0 f5       ..  :3c59[1]
    ldx #1                                                            ; 4d5b: a2 01       ..  :3c5b[1]
    lda previous_score_as_bcd + 2                                     ; 4d5d: ad 09 39    ..9 :3c5d[1]
    jsr plot_bcd_number_as_two_digits                                 ; 4d60: 20 3e 3d     >= :3c60[1]
    lda previous_score_as_bcd + 1                                     ; 4d63: ad 08 39    ..9 :3c63[1]
    jsr plot_bcd_number_as_two_digits                                 ; 4d66: 20 3e 3d     >= :3c66[1]
    lda previous_score_as_bcd                                         ; 4d69: ad 07 39    ..9 :3c69[1]
    jsr plot_bcd_number_as_two_digits                                 ; 4d6c: 20 3e 3d     >= :3c6c[1]
    txa                                                               ; 4d6f: 8a          .   :3c6f[1]
    beq skip_previous_command_score                                   ; 4d70: f0 05       ..  :3c70[1]
    lda #&30                                                          ; 4d72: a9 30       .0  :3c72[1]
    jsr oswrch                                                        ; 4d74: 20 ee ff     .. :3c74[1]   ; Write character 48
.skip_previous_command_score
    lda allowed_another_command                                       ; 4d77: ad 0a 39    ..9 :3c77[1]
    bne plot_after_your_performance                                   ; 4d7a: d0 03       ..  :3c7a[1]
    jmp leave_after_plotting_line_of_underscores                      ; 4d7c: 4c 17 3d    L.= :3c7c[1]

.plot_after_your_performance
    ldy #0                                                            ; 4d7f: a0 00       ..  :3c7f[1]
.plot_after_your_performance_loop
    lda after_your_performance_string,y                               ; 4d81: b9 bd 39    ..9 :3c81[1]
    jsr oswrch                                                        ; 4d84: 20 ee ff     .. :3c84[1]   ; Write character
    iny                                                               ; 4d87: c8          .   :3c87[1]
    cpy #&61                                                          ; 4d88: c0 61       .a  :3c88[1]
    bne plot_after_your_performance_loop                              ; 4d8a: d0 f5       ..  :3c8a[1]
.judge_player
    lda rnd_2                                                         ; 4d8c: ad d2 1c    ... :3c8c[1]
    and #&3f                                                          ; 4d8f: 29 3f       )?  :3c8f[1]
    clc                                                               ; 4d91: 18          .   :3c91[1]
    adc previous_score_as_bcd                                         ; 4d92: 6d 07 39    m.9 :3c92[1]
    sta previous_score_as_bcd                                         ; 4d95: 8d 07 39    ..9 :3c95[1]
    lda previous_score_as_bcd + 1                                     ; 4d98: ad 08 39    ..9 :3c98[1]
    adc #0                                                            ; 4d9b: 69 00       i.  :3c9b[1]
    ldy #5                                                            ; 4d9d: a0 05       ..  :3c9d[1]
.division_loop1
    lsr a                                                             ; 4d9f: 4a          J   :3c9f[1]
    ror previous_score_as_bcd                                         ; 4da0: 6e 07 39    n.9 :3ca0[1]
    dey                                                               ; 4da3: 88          .   :3ca3[1]
    bne division_loop1                                                ; 4da4: d0 f9       ..  :3ca4[1]
    ldy #8                                                            ; 4da6: a0 08       ..  :3ca6[1]
    ora previous_score_as_bcd + 2                                     ; 4da8: 0d 09 39    ..9 :3ca8[1]
    bne end_of_calculation                                            ; 4dab: d0 0f       ..  :3cab[1]
    ldy #1                                                            ; 4dad: a0 01       ..  :3cad[1]
    lda previous_score_as_bcd                                         ; 4daf: ad 07 39    ..9 :3caf[1]
.check_threshold_loop
    cmp threshold_table - 1,y                                         ; 4db2: d9 46 3b    .F; :3cb2[1]
    bcc end_of_calculation                                            ; 4db5: 90 05       ..  :3cb5[1]
    iny                                                               ; 4db7: c8          .   :3cb7[1]
    cpy #8                                                            ; 4db8: c0 08       ..  :3cb8[1]
    bne check_threshold_loop                                          ; 4dba: d0 f6       ..  :3cba[1]
.end_of_calculation
    sty y_pixels                                                      ; 4dbc: 84 7b       .{  :3cbc[1]
    ldx #&ff                                                          ; 4dbe: a2 ff       ..  :3cbe[1]
    lda #&22                                                          ; 4dc0: a9 22       ."  :3cc0[1]
.find_emotion_loop
    inx                                                               ; 4dc2: e8          .   :3cc2[1]
    cmp emotions,x                                                    ; 4dc3: dd c6 3a    ..: :3cc3[1]
    bne find_emotion_loop                                             ; 4dc6: d0 fa       ..  :3cc6[1]
    dey                                                               ; 4dc8: 88          .   :3cc8[1]
    bne find_emotion_loop                                             ; 4dc9: d0 f7       ..  :3cc9[1]
.plot_emotion_loop
    inx                                                               ; 4dcb: e8          .   :3ccb[1]
    lda emotions,x                                                    ; 4dcc: bd c6 3a    ..: :3ccc[1]
    jsr oswrch                                                        ; 4dcf: 20 ee ff     .. :3ccf[1]   ; Write character
    cmp #&22                                                          ; 4dd2: c9 22       ."  :3cd2[1]
    bne plot_emotion_loop                                             ; 4dd4: d0 f5       ..  :3cd4[1]
    lda y_pixels                                                      ; 4dd6: a5 7b       .{  :3cd6[1]
    cmp #4                                                            ; 4dd8: c9 04       ..  :3cd8[1]
    bcc player_retired                                                ; 4dda: 90 2b       .+  :3cda[1]
    ldy #&1a                                                          ; 4ddc: a0 1a       ..  :3cdc[1]
    ldx #3                                                            ; 4dde: a2 03       ..  :3cde[1]
    jsr tab_to_x_y                                                    ; 4de0: 20 30 3d     0= :3ce0[1]
    ldy #0                                                            ; 4de3: a0 00       ..  :3ce3[1]
    lda y_pixels                                                      ; 4de5: a5 7b       .{  :3ce5[1]
    cmp #4                                                            ; 4de7: c9 04       ..  :3ce7[1]
    bne plot_and_or_but_loop                                          ; 4de9: d0 02       ..  :3ce9[1]
    ldy #4                                                            ; 4deb: a0 04       ..  :3ceb[1]
.plot_and_or_but_loop
    lda and_but_they_allow_string,y                                   ; 4ded: b9 8c 3a    ..: :3ced[1]
    jsr oswrch                                                        ; 4df0: 20 ee ff     .. :3cf0[1]   ; Write character
    iny                                                               ; 4df3: c8          .   :3cf3[1]
    cmp #&20                                                          ; 4df4: c9 20       .   :3cf4[1]
    bne plot_and_or_but_loop                                          ; 4df6: d0 f5       ..  :3cf6[1]
    ldy #8                                                            ; 4df8: a0 08       ..  :3cf8[1]
.plot_they_allow_you_loop
    lda and_but_they_allow_string,y                                   ; 4dfa: b9 8c 3a    ..: :3cfa[1]
    jsr oswrch                                                        ; 4dfd: 20 ee ff     .. :3cfd[1]   ; Write character
    iny                                                               ; 4e00: c8          .   :3d00[1]
    cmp #&2e                                                          ; 4e01: c9 2e       ..  :3d01[1]
    bne plot_they_allow_you_loop                                      ; 4e03: d0 f5       ..  :3d03[1]
    beq leave_after_plotting_line_of_underscores                      ; 4e05: f0 10       ..  :3d05[1]   ; ALWAYS branch

.player_retired
    ldy #0                                                            ; 4e07: a0 00       ..  :3d07[1]
    sty allowed_another_command                                       ; 4e09: 8c 0a 39    ..9 :3d09[1]
.plot_and_they_retire_you_loop
    lda and_they_retire_you_string,y                                  ; 4e0c: b9 1b 3b    ..; :3d0c[1]
    jsr oswrch                                                        ; 4e0f: 20 ee ff     .. :3d0f[1]   ; Write character
    iny                                                               ; 4e12: c8          .   :3d12[1]
    cmp #&2e                                                          ; 4e13: c9 2e       ..  :3d13[1]
    bne plot_and_they_retire_you_loop                                 ; 4e15: d0 f5       ..  :3d15[1]
.leave_after_plotting_line_of_underscores
    jsr plot_line_of_underscores                                      ; 4e17: 20 1b 3d     .= :3d17[1]
    rts                                                               ; 4e1a: 60          `   :3d1a[1]

.plot_line_of_underscores
    lda #&0d                                                          ; 4e1b: a9 0d       ..  :3d1b[1]
    jsr oswrch                                                        ; 4e1d: 20 ee ff     .. :3d1d[1]   ; Write character 13
    lda #&0a                                                          ; 4e20: a9 0a       ..  :3d20[1]
    jsr oswrch                                                        ; 4e22: 20 ee ff     .. :3d22[1]   ; Write character 10
    ldy #&28                                                          ; 4e25: a0 28       .(  :3d25[1]
.plot_line_of_underscores_loop
    lda #&5f                                                          ; 4e27: a9 5f       ._  :3d27[1]
    jsr oswrch                                                        ; 4e29: 20 ee ff     .. :3d29[1]   ; Write character 95
    dey                                                               ; 4e2c: 88          .   :3d2c[1]
    bne plot_line_of_underscores_loop                                 ; 4e2d: d0 f8       ..  :3d2d[1]
    rts                                                               ; 4e2f: 60          `   :3d2f[1]

.tab_to_x_y
    lda #&1f                                                          ; 4e30: a9 1f       ..  :3d30[1]
    jsr oswrch                                                        ; 4e32: 20 ee ff     .. :3d32[1]   ; Write character 31
    txa                                                               ; 4e35: 8a          .   :3d35[1]
    jsr oswrch                                                        ; 4e36: 20 ee ff     .. :3d36[1]   ; Write character
    tya                                                               ; 4e39: 98          .   :3d39[1]
    jsr oswrch                                                        ; 4e3a: 20 ee ff     .. :3d3a[1]   ; Write character
    rts                                                               ; 4e3d: 60          `   :3d3d[1]

.plot_bcd_number_as_two_digits
    tay                                                               ; 4e3e: a8          .   :3d3e[1]
    lsr a                                                             ; 4e3f: 4a          J   :3d3f[1]
    lsr a                                                             ; 4e40: 4a          J   :3d40[1]
    lsr a                                                             ; 4e41: 4a          J   :3d41[1]
    lsr a                                                             ; 4e42: 4a          J   :3d42[1]
    bne has_non_zero_tens                                             ; 4e43: d0 03       ..  :3d43[1]
    txa                                                               ; 4e45: 8a          .   :3d45[1]
    bne skip_leading_zeroes                                           ; 4e46: d0 08       ..  :3d46[1]
.has_non_zero_tens
    ldx #0                                                            ; 4e48: a2 00       ..  :3d48[1]
    clc                                                               ; 4e4a: 18          .   :3d4a[1]
    adc #&30                                                          ; 4e4b: 69 30       i0  :3d4b[1]
    jsr oswrch                                                        ; 4e4d: 20 ee ff     .. :3d4d[1]   ; Write character
.skip_leading_zeroes
    tya                                                               ; 4e50: 98          .   :3d50[1]
    and #&0f                                                          ; 4e51: 29 0f       ).  :3d51[1]
    bne has_non_zero_ones                                             ; 4e53: d0 03       ..  :3d53[1]
    txa                                                               ; 4e55: 8a          .   :3d55[1]
    bne skip_leading_zeroes_again                                     ; 4e56: d0 08       ..  :3d56[1]
.has_non_zero_ones
    ldx #0                                                            ; 4e58: a2 00       ..  :3d58[1]
    clc                                                               ; 4e5a: 18          .   :3d5a[1]
    adc #&30                                                          ; 4e5b: 69 30       i0  :3d5b[1]
    jsr oswrch                                                        ; 4e5d: 20 ee ff     .. :3d5d[1]   ; Write character
.skip_leading_zeroes_again
    rts                                                               ; 4e60: 60          `   :3d60[1]

.unused95
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 4e61: ea ea ea... ... :3d61[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea,   0,   0,   0,   0,   0   ; 4e6d: ea ea ea... ... :3d6d[1]
    equb   0,   0,   0,   0,   0,   0,   0, &ff, &ff, &ff, &ff, &ff   ; 4e79: 00 00 00... ... :3d79[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 4e85: ff ff ff... ... :3d85[1]
    equb &ff                                                          ; 4e91: ff          .   :3d91[1]
.instructions_string
    equb &1f, 6, 2                                                    ; 4e92: 1f 06 02    ... :3d92[1]
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
.unused96
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 50d2: 00 00 00... ... :3fd2[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 50de: 00 00 00... ... :3fde[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 50ea: 00 00 00... ... :3fea[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, &ff, &ff   ; 50f6: 00 00 00... ... :3ff6[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ea, &ea, &ea   ; 5102: ff ff ff... ... :4002[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea                       ; 510e: ea ea ea... ... :400e[1]

.plot_instructions
    lda #<instructions_string                                         ; 5116: a9 92       ..  :4016[1]
    sta temp0_low                                                     ; 5118: 85 80       ..  :4018[1]
    lda #>instructions_string                                         ; 511a: a9 3d       .=  :401a[1]
    sta temp0_high                                                    ; 511c: 85 81       ..  :401c[1]
    ldy #0                                                            ; 511e: a0 00       ..  :401e[1]
.plot_instructions_loop
    lda (temp0_low),y                                                 ; 5120: b1 80       ..  :4020[1]
    cmp #'~'                                                          ; 5122: c9 7e       .~  :4022[1]
    beq finished_plotting_instructions                                ; 5124: f0 0b       ..  :4024[1]
    jsr oswrch                                                        ; 5126: 20 ee ff     .. :4026[1]   ; Write character
    inc temp0_low                                                     ; 5129: e6 80       ..  :4029[1]
    bne plot_instructions_loop                                        ; 512b: d0 f3       ..  :402b[1]
    inc temp0_high                                                    ; 512d: e6 81       ..  :402d[1]
    bne plot_instructions_loop                                        ; 512f: d0 ef       ..  :402f[1]
.finished_plotting_instructions
.finished_plotting_instructions1
    lda #0                                                            ; 5131: a9 00       ..  :4031[1]
    jsr plot_line_of_underscores_at_y                                 ; 5133: 20 4c 40     L@ :4033[1]
    lda #3                                                            ; 5136: a9 03       ..  :4036[1]
    jsr plot_line_of_underscores_at_y                                 ; 5138: 20 4c 40     L@ :4038[1]
    lda #&1d                                                          ; 513b: a9 1d       ..  :403b[1]
    jsr plot_line_of_underscores_at_y                                 ; 513d: 20 4c 40     L@ :403d[1]
    rts                                                               ; 5140: 60          `   :4040[1]

.unused97
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea        ; 5141: ea ea ea... ... :4041[1]

.plot_line_of_underscores_at_y
    tay                                                               ; 514c: a8          .   :404c[1]
    lda #&1f                                                          ; 514d: a9 1f       ..  :404d[1]
    jsr oswrch                                                        ; 514f: 20 ee ff     .. :404f[1]   ; Write character 31
    lda #0                                                            ; 5152: a9 00       ..  :4052[1]
    jsr oswrch                                                        ; 5154: 20 ee ff     .. :4054[1]   ; Write character 0
    tya                                                               ; 5157: 98          .   :4057[1]
    jsr oswrch                                                        ; 5158: 20 ee ff     .. :4058[1]   ; Write character
    ldy #&28                                                          ; 515b: a0 28       .(  :405b[1]
    lda #&5f                                                          ; 515d: a9 5f       ._  :405d[1]
.plot_line_of_underscores_at_y_loop
    jsr oswrch                                                        ; 515f: 20 ee ff     .. :405f[1]   ; Write character 95
    dey                                                               ; 5162: 88          .   :4062[1]
    bne plot_line_of_underscores_at_y_loop                            ; 5163: d0 fa       ..  :4063[1]
    rts                                                               ; 5165: 60          `   :4065[1]

.combat_preparation_screen_key_table
    equb &df                                                          ; 5166: df          .   :4066[1]
    equb &8e                                                          ; 5167: 8e          .   :4067[1]
    equb &8d                                                          ; 5168: 8d          .   :4068[1]
    equb &8c                                                          ; 5169: 8c          .   :4069[1]
    equb &eb                                                          ; 516a: eb          .   :406a[1]
    equb &8b                                                          ; 516b: 8b          .   :406b[1]
    equb &8a                                                          ; 516c: 8a          .   :406c[1]
    equb &e9                                                          ; 516d: e9          .   :406d[1]
    equb &89                                                          ; 516e: 89          .   :406e[1]
    equb &88                                                          ; 516f: 88          .   :406f[1]
.game_options
.option_sound
    equb 0                                                            ; 5170: 00          .   :4070[1]
.option_starship_torpedoes
    equb 0                                                            ; 5171: 00          .   :4071[1]
.option_enemy_torpedoes
    equb 0                                                            ; 5172: 00          .   :4072[1]
.option_keyboard_joystick
    equb 0                                                            ; 5173: 00          .   :4073[1]
.options_values_to_write
    equb   0                                                          ; 5174: 00          .   :4074[1]
    equb   1                                                          ; 5175: 01          .   :4075[1]
    equb   0                                                          ; 5176: 00          .   :4076[1]
    equb   1                                                          ; 5177: 01          .   :4077[1]
    equb &60                                                          ; 5178: 60          `   :4078[1]
    equb &ea                                                          ; 5179: ea          .   :4079[1]
    equb   0                                                          ; 517a: 00          .   :407a[1]
    equb   1                                                          ; 517b: 01          .   :407b[1]
.option_address_low_table
    equb                  <sound_enabled, <starship_torpedo_type      ; 517c: d7 5b       .[  :407c[1]
    equb <enemy_torpedo_type_instruction                              ; 517e: 20              :407e[1]
    equb <keyboard_or_joystick                                        ; 517f: d6          .   :407f[1]
.option_address_high_table
    equb                  >sound_enabled, >starship_torpedo_type      ; 5180: 1c 26       .&  :4080[1]
    equb >enemy_torpedo_type_instruction,  >keyboard_or_joystick      ; 5182: 16 1c       ..  :4082[1]
.combat_preparation_string
    equb &1f, 6, 3                                                    ; 5184: 1f 06 03    ... :4084[1]
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
.unused98
    equb &ff, &ff, &ff, &ff                                           ; 5297: ff ff ff... ... :4197[1]

.plot_selected_options
    ldx #3                                                            ; 529b: a2 03       ..  :419b[1]
.plot_selected_options_loop
    lda #&1f                                                          ; 529d: a9 1f       ..  :419d[1]
    jsr oswrch                                                        ; 529f: 20 ee ff     .. :419f[1]   ; Write character 31
    lda #9                                                            ; 52a2: a9 09       ..  :41a2[1]
    jsr oswrch                                                        ; 52a4: 20 ee ff     .. :41a4[1]   ; Write character 9
    txa                                                               ; 52a7: 8a          .   :41a7[1]
    asl a                                                             ; 52a8: 0a          .   :41a8[1]
    adc game_options,x                                                ; 52a9: 7d 70 40    }p@ :41a9[1]
    asl a                                                             ; 52ac: 0a          .   :41ac[1]
    adc #&0b                                                          ; 52ad: 69 0b       i.  :41ad[1]
    jsr oswrch                                                        ; 52af: 20 ee ff     .. :41af[1]   ; Write character
    lda #&2d                                                          ; 52b2: a9 2d       .-  :41b2[1]
    jsr oswrch                                                        ; 52b4: 20 ee ff     .. :41b4[1]   ; Write character 45
    dex                                                               ; 52b7: ca          .   :41b7[1]
    bpl plot_selected_options_loop                                    ; 52b8: 10 e3       ..  :41b8[1]
    rts                                                               ; 52ba: 60          `   :41ba[1]

.wait_for_return
    lda #osbyte_flush_buffer_class                                    ; 52bb: a9 0f       ..  :41bb[1]
    ldx #1                                                            ; 52bd: a2 01       ..  :41bd[1]
    ldy #0                                                            ; 52bf: a0 00       ..  :41bf[1]
    jsr osbyte                                                        ; 52c1: 20 f4 ff     .. :41c1[1]   ; Flush input buffers (X non-zero)
.wait_for_return_loop
    lda #osbyte_inkey                                                 ; 52c4: a9 81       ..  :41c4[1]
    ldx #&32                                                          ; 52c6: a2 32       .2  :41c6[1]
    ldy #0                                                            ; 52c8: a0 00       ..  :41c8[1]
    jsr osbyte                                                        ; 52ca: 20 f4 ff     .. :41ca[1]   ; Wait for a key press within 50 centiseconds
    cpy #&1b                                                          ; 52cd: c0 1b       ..  :41cd[1]   ; Y is zero if key pressed; &ff if no key pressed; &1b if ESCAPE pressed
    beq escape_pressed                                                ; 52cf: f0 10       ..  :41cf[1]
    cpy #&ff                                                          ; 52d1: c0 ff       ..  :41d1[1]
    beq wait_for_return_loop                                          ; 52d3: f0 ef       ..  :41d3[1]
; X is the ASCII value of the key pressed (assuming Y=0)
    cpx #&60                                                          ; 52d5: e0 60       .`  :41d5[1]
    beq bad_program                                                   ; 52d7: f0 05       ..  :41d7[1]
    cpx #&0d                                                          ; 52d9: e0 0d       ..  :41d9[1]
    bne wait_for_return_loop                                          ; 52db: d0 e7       ..  :41db[1]
    rts                                                               ; 52dd: 60          `   :41dd[1]

.bad_program
    brk                                                               ; 52de: 00          .   :41de[1]

.unused99
    equb &60, 0                                                       ; 52df: 60 00       `.  :41df[1]

.escape_pressed
    lda #osbyte_acknowledge_escape                                    ; 52e1: a9 7e       .~  :41e1[1]
    jsr osbyte                                                        ; 52e3: 20 f4 ff     .. :41e3[1]   ; Clear escape condition and perform escape effects
    jmp wait_for_return_loop                                          ; 52e6: 4c c4 41    L.A :41e6[1]

.instructions_screen
    lda #&16                                                          ; 52e9: a9 16       ..  :41e9[1]
    jsr oswrch                                                        ; 52eb: 20 ee ff     .. :41eb[1]   ; Write character 22
    lda #4                                                            ; 52ee: a9 04       ..  :41ee[1]
    jsr oswrch                                                        ; 52f0: 20 ee ff     .. :41f0[1]   ; Write character 4
    jsr disable_cursor                                                ; 52f3: 20 36 23     6# :41f3[1]
    jsr set_foreground_colour_to_black                                ; 52f6: 20 12 23     .# :41f6[1]
    jsr plot_instructions                                             ; 52f9: 20 16 40     .@ :41f9[1]
    jsr set_foreground_colour_to_white                                ; 52fc: 20 06 23     .# :41fc[1]
    jsr wait_for_return                                               ; 52ff: 20 bb 41     .A :41ff[1]
    rts                                                               ; 5302: 60          `   :4202[1]

.combat_preparation_screen
    lda #&16                                                          ; 5303: a9 16       ..  :4203[1]
    jsr oswrch                                                        ; 5305: 20 ee ff     .. :4205[1]   ; Write character 22
    lda #4                                                            ; 5308: a9 04       ..  :4208[1]
    jsr oswrch                                                        ; 530a: 20 ee ff     .. :420a[1]   ; Write character 4
    jsr disable_cursor                                                ; 530d: 20 36 23     6# :420d[1]
    jsr set_foreground_colour_to_black                                ; 5310: 20 12 23     .# :4210[1]
    lda #&84                                                          ; 5313: a9 84       ..  :4213[1]
    sta temp0_low                                                     ; 5315: 85 80       ..  :4215[1]
    lda #&40                                                          ; 5317: a9 40       .@  :4217[1]
    sta temp0_high                                                    ; 5319: 85 81       ..  :4219[1]
    ldy #0                                                            ; 531b: a0 00       ..  :421b[1]
.plot_combat_preparations_loop
    lda (temp0_low),y                                                 ; 531d: b1 80       ..  :421d[1]
    cmp #&7e                                                          ; 531f: c9 7e       .~  :421f[1]
    beq finished_plotting_combat_preparations                         ; 5321: f0 0b       ..  :4221[1]
    jsr oswrch                                                        ; 5323: 20 ee ff     .. :4223[1]   ; Write character
    inc temp0_low                                                     ; 5326: e6 80       ..  :4226[1]
    bne plot_combat_preparations_loop                                 ; 5328: d0 f3       ..  :4228[1]
    inc temp0_high                                                    ; 532a: e6 81       ..  :422a[1]
    bne plot_combat_preparations_loop                                 ; 532c: d0 ef       ..  :422c[1]
.finished_plotting_combat_preparations
    lda #1                                                            ; 532e: a9 01       ..  :422e[1]
    jsr plot_line_of_underscores_at_y                                 ; 5330: 20 4c 40     L@ :4230[1]
    lda #4                                                            ; 5333: a9 04       ..  :4233[1]
    jsr plot_line_of_underscores_at_y                                 ; 5335: 20 4c 40     L@ :4235[1]
    jsr set_foreground_colour_to_white                                ; 5338: 20 06 23     .# :4238[1]
    jsr plot_selected_options                                         ; 533b: 20 9b 41     .A :423b[1]
.get_keypress
    lda #osbyte_flush_buffer_class                                    ; 533e: a9 0f       ..  :423e[1]
    ldx #1                                                            ; 5340: a2 01       ..  :4240[1]
    jsr osbyte                                                        ; 5342: 20 f4 ff     .. :4242[1]   ; Flush input buffers (X non-zero)
    lda #osbyte_inkey                                                 ; 5345: a9 81       ..  :4245[1]
    ldx #5                                                            ; 5347: a2 05       ..  :4247[1]
    ldy #0                                                            ; 5349: a0 00       ..  :4249[1]
    jsr osbyte                                                        ; 534b: 20 f4 ff     .. :424b[1]   ; Wait for a key press within 5 centiseconds
; X is the ASCII value of the key pressed (assuming Y=0)
    cpx #&0d                                                          ; 534e: e0 0d       ..  :424e[1]
    beq return28                                                      ; 5350: f0 52       .R  :4250[1]
    lda #osbyte_acknowledge_escape                                    ; 5352: a9 7e       .~  :4252[1]
    jsr osbyte                                                        ; 5354: 20 f4 ff     .. :4254[1]   ; Clear escape condition and perform escape effects
    lda #&0a                                                          ; 5357: a9 0a       ..  :4257[1]
    sta x_pixels                                                      ; 5359: 85 7a       .z  :4259[1]
.check_next_key
    dec x_pixels                                                      ; 535b: c6 7a       .z  :425b[1]
    bmi get_keypress                                                  ; 535d: 30 df       0.  :425d[1]
    ldx x_pixels                                                      ; 535f: a6 7a       .z  :425f[1]
    lda combat_preparation_screen_key_table,x                         ; 5361: bd 66 40    .f@ :4261[1]
    tax                                                               ; 5364: aa          .   :4264[1]
    tay                                                               ; 5365: a8          .   :4265[1]
    lda #osbyte_inkey                                                 ; 5366: a9 81       ..  :4266[1]
    jsr osbyte                                                        ; 5368: 20 f4 ff     .. :4268[1]   ; Read key within time limit, or read a specific key, or read machine type
    tya                                                               ; 536b: 98          .   :426b[1]
    beq check_next_key                                                ; 536c: f0 ed       ..  :426c[1]
    ldx x_pixels                                                      ; 536e: a6 7a       .z  :426e[1]
    bne not_f0                                                        ; 5370: d0 06       ..  :4270[1]
    jsr instructions_screen                                           ; 5372: 20 e9 41     .A :4272[1]
    jmp combat_preparation_screen                                     ; 5375: 4c 03 42    L.B :4275[1]

.not_f0
    cpx #1                                                            ; 5378: e0 01       ..  :4278[1]
    bne not_f1                                                        ; 537a: d0 06       ..  :427a[1]
    jsr starfleet_records_screen                                      ; 537c: 20 d7 43     .C :427c[1]
    jmp combat_preparation_screen                                     ; 537f: 4c 03 42    L.B :427f[1]

.not_f1
    txa                                                               ; 5382: 8a          .   :4282[1]
    lsr a                                                             ; 5383: 4a          J   :4283[1]
    tay                                                               ; 5384: a8          .   :4284[1]
    txa                                                               ; 5385: 8a          .   :4285[1]
    and #1                                                            ; 5386: 29 01       ).  :4286[1]
    cmp game_options - 1,y                                            ; 5388: d9 6f 40    .o@ :4288[1]
    beq check_next_key                                                ; 538b: f0 ce       ..  :428b[1]
    sta game_options - 1,y                                            ; 538d: 99 6f 40    .o@ :428d[1]
    lda option_address_low_table - 1,y                                ; 5390: b9 7b 40    .{@ :4290[1]
    sta temp0_low                                                     ; 5393: 85 80       ..  :4293[1]
    lda option_address_high_table - 1,y                               ; 5395: b9 7f 40    ..@ :4295[1]
    sta temp0_high                                                    ; 5398: 85 81       ..  :4298[1]
    lda option_enemy_torpedoes,x                                      ; 539a: bd 72 40    .r@ :429a[1]
    ldy #0                                                            ; 539d: a0 00       ..  :429d[1]
    sta (temp0_low),y                                                 ; 539f: 91 80       ..  :429f[1]
    jmp combat_preparation_screen                                     ; 53a1: 4c 03 42    L.B :42a1[1]

.return28
    rts                                                               ; 53a4: 60          `   :42a4[1]

; ----------------------------------------------------------------------------------
.starfleet_records_string
    equb &1f, 6, 1                                                    ; 53a5: 1f 06 01    ... :42a5[1]
    equs "**** STAR-FLEET RECORDS ****"                               ; 53a8: 2a 2a 2a... *** :42a8[1]
    equb &1f, 0, 4                                                    ; 53c4: 1f 00 04    ... :42c4[1]
    equs "Below is a list of the most highly ratedof Star-Fleet's "   ; 53c7: 42 65 6c... Bel :42c7[1]
    equs "past commanders."                                           ; 53ff: 70 61 73... pas :42ff[1]
    equb &1f, &0d, &18                                                ; 540f: 1f 0d 18    ... :430f[1]
    equs "Press <RETURN>~"                                            ; 5412: 50 72 65... Pre :4312[1]
.unused2
    equb &0d                                                          ; 5421: 0d          .   :4321[1]
.unused100
    equb &ff, &ff, &ff                                                ; 5422: ff ff ff    ... :4322[1]
    equb &ff                                                          ; 5425: ff          .   :4325[1]
    equb &ff                                                          ; 5426: ff          .   :4326[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 5427: ea ea ea... ... :4327[1]
    equb &ea, &ea                                                     ; 5433: ea ea       ..  :4333[1]
; ----------------------------------------------------------------------------------
; There are eight entries of 16 bytes each. The first three bytes are the score, then 13 bytes for the name
; ----------------------------------------------------------------------------------
.high_score_table
    equb 0                                                            ; 5435: 00          .   :4335[1]
    equb 0                                                            ; 5436: 00          .   :4336[1]
    equb 0                                                            ; 5437: 00          .   :4337[1]
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0                        ; 5438: 00 00 00... ... :4338[1]
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0   ; 5445: 00 00 00... ... :4345[1]
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0   ; 5459: 00 00 00... ... :4359[1]
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0   ; 546d: 00 00 00... ... :436d[1]
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0   ; 5481: 00 00 00... ... :4381[1]
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0   ; 5495: 00 00 00... ... :4395[1]
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0                           ; 54a9: 00 00 00... ... :43a9[1]
.unused101
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff,   0   ; 54b5: ff ff ff... ... :43b5[1]
    equb   0,   0,   0,   0, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 54c1: 00 00 00... ... :43c1[1]
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea             ; 54cd: ea ea ea... ... :43cd[1]

.starfleet_records_screen
    lda #&16                                                          ; 54d7: a9 16       ..  :43d7[1]
    jsr oswrch                                                        ; 54d9: 20 ee ff     .. :43d9[1]   ; Write character 22
    lda #7                                                            ; 54dc: a9 07       ..  :43dc[1]
    jsr oswrch                                                        ; 54de: 20 ee ff     .. :43de[1]   ; Write character 7
    jsr disable_cursor                                                ; 54e1: 20 36 23     6# :43e1[1]
    lda #<starfleet_records_string                                    ; 54e4: a9 a5       ..  :43e4[1]
    sta temp0_low                                                     ; 54e6: 85 80       ..  :43e6[1]
    lda #>starfleet_records_string                                    ; 54e8: a9 42       .B  :43e8[1]
    sta temp0_high                                                    ; 54ea: 85 81       ..  :43ea[1]
    ldy #0                                                            ; 54ec: a0 00       ..  :43ec[1]
.plot_starfleet_records_loop
    lda (temp0_low),y                                                 ; 54ee: b1 80       ..  :43ee[1]
    cmp #&7e                                                          ; 54f0: c9 7e       .~  :43f0[1]
    beq finished_plotting_starfleet_records                           ; 54f2: f0 0b       ..  :43f2[1]
    jsr oswrch                                                        ; 54f4: 20 ee ff     .. :43f4[1]   ; Write character
    inc temp0_low                                                     ; 54f7: e6 80       ..  :43f7[1]
    bne plot_starfleet_records_loop                                   ; 54f9: d0 f3       ..  :43f9[1]
    inc temp0_high                                                    ; 54fb: e6 81       ..  :43fb[1]
    bne plot_starfleet_records_loop                                   ; 54fd: d0 ef       ..  :43fd[1]
.finished_plotting_starfleet_records
    lda #8                                                            ; 54ff: a9 08       ..  :43ff[1]
    sta temp8                                                         ; 5501: 85 75       .u  :4401[1]
    ldx #0                                                            ; 5503: a2 00       ..  :4403[1]
.plot_high_scores_loop
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
    lda high_score_table + 3,x                                        ; 5519: bd 38 43    .8C :4419[1]
    beq leave_after_plotting_underscores                              ; 551c: f0 48       .H  :441c[1]
    txa                                                               ; 551e: 8a          .   :441e[1]
    lsr a                                                             ; 551f: 4a          J   :441f[1]
    lsr a                                                             ; 5520: 4a          J   :4420[1]
    lsr a                                                             ; 5521: 4a          J   :4421[1]
    lsr a                                                             ; 5522: 4a          J   :4422[1]
    clc                                                               ; 5523: 18          .   :4423[1]
    adc #&31                                                          ; 5524: 69 31       i1  :4424[1]
    jsr oswrch                                                        ; 5526: 20 ee ff     .. :4426[1]   ; Write character
    lda #&20                                                          ; 5529: a9 20       .   :4429[1]
    jsr oswrch                                                        ; 552b: 20 ee ff     .. :442b[1]   ; Write character 32
    jsr oswrch                                                        ; 552e: 20 ee ff     .. :442e[1]   ; Write character
    jsr oswrch                                                        ; 5531: 20 ee ff     .. :4431[1]   ; Write character
    inx                                                               ; 5534: e8          .   :4434[1]
    inx                                                               ; 5535: e8          .   :4435[1]
    inx                                                               ; 5536: e8          .   :4436[1]
    ldy #&0d                                                          ; 5537: a0 0d       ..  :4437[1]
.plot_name_loop
    lda high_score_table,x                                            ; 5539: bd 35 43    .5C :4439[1]
    jsr oswrch                                                        ; 553c: 20 ee ff     .. :443c[1]   ; Write character
    inx                                                               ; 553f: e8          .   :443f[1]
    dey                                                               ; 5540: 88          .   :4440[1]
    bne plot_name_loop                                                ; 5541: d0 f6       ..  :4441[1]
    lda #&20                                                          ; 5543: a9 20       .   :4443[1]
    jsr oswrch                                                        ; 5545: 20 ee ff     .. :4445[1]   ; Write character 32
    jsr oswrch                                                        ; 5548: 20 ee ff     .. :4448[1]   ; Write character
    jsr oswrch                                                        ; 554b: 20 ee ff     .. :444b[1]   ; Write character
    ldy #&20                                                          ; 554e: a0 20       .   :444e[1]
    lda high_score_table - 16,x                                       ; 5550: bd 25 43    .%C :4450[1]
    jsr plot_two_digit_high_score                                     ; 5553: 20 79 44     yD :4453[1]
    lda high_score_table - 15,x                                       ; 5556: bd 26 43    .&C :4456[1]
    jsr plot_two_digit_high_score                                     ; 5559: 20 79 44     yD :4459[1]
    lda high_score_table - 14,x                                       ; 555c: bd 27 43    .'C :445c[1]
    jsr plot_two_digit_high_score                                     ; 555f: 20 79 44     yD :445f[1]
    dec temp8                                                         ; 5562: c6 75       .u  :4462[1]
    bne plot_high_scores_loop                                         ; 5564: d0 9f       ..  :4464[1]
.leave_after_plotting_underscores
    lda #0                                                            ; 5566: a9 00       ..  :4466[1]
    jsr plot_line_of_underscores_at_y                                 ; 5568: 20 4c 40     L@ :4468[1]
    lda #2                                                            ; 556b: a9 02       ..  :446b[1]
    jsr plot_line_of_underscores_at_y                                 ; 556d: 20 4c 40     L@ :446d[1]
    lda #&17                                                          ; 5570: a9 17       ..  :4470[1]
    jsr plot_line_of_underscores_at_y                                 ; 5572: 20 4c 40     L@ :4472[1]
    jsr wait_for_return                                               ; 5575: 20 bb 41     .A :4475[1]
    rts                                                               ; 5578: 60          `   :4478[1]

.plot_two_digit_high_score
    sta temp7                                                         ; 5579: 85 88       ..  :4479[1]
    lsr a                                                             ; 557b: 4a          J   :447b[1]
    lsr a                                                             ; 557c: 4a          J   :447c[1]
    lsr a                                                             ; 557d: 4a          J   :447d[1]
    lsr a                                                             ; 557e: 4a          J   :447e[1]
    jsr plot_one_digit_high_score                                     ; 557f: 20 86 44     .D :447f[1]
    lda temp7                                                         ; 5582: a5 88       ..  :4482[1]
    and #&0f                                                          ; 5584: 29 0f       ).  :4484[1]
.plot_one_digit_high_score
    bne not_zero                                                      ; 5586: d0 03       ..  :4486[1]
    tya                                                               ; 5588: 98          .   :4488[1]
    bne leading_zero2                                                 ; 5589: d0 05       ..  :4489[1]
.not_zero
    ldy #&30                                                          ; 558b: a0 30       .0  :448b[1]
    clc                                                               ; 558d: 18          .   :448d[1]
    adc #&30                                                          ; 558e: 69 30       i0  :448e[1]
.leading_zero2
    jsr oswrch                                                        ; 5590: 20 ee ff     .. :4490[1]   ; Write character
    rts                                                               ; 5593: 60          `   :4493[1]

; ----------------------------------------------------------------------------------
.enter_your_name_string
    equb &1f, 0, &0a                                                  ; 5594: 1f 00 0a    ... :4494[1]
    equs "Enter your name for Star-Fleet records."                    ; 5597: 45 6e 74... Ent :4497[1]
    equb &1f, &0d, &10                                                ; 55be: 1f 0d 10    ... :44be[1]
    equs "-------------"                                              ; 55c1: 2d 2d 2d... --- :44c1[1]
    equb &1f, &0d, &0f, &7e, &0d                                      ; 55ce: 1f 0d 0f... ... :44ce[1]
.input_buffer
    equs "PPPPPPPPPPPP"                                               ; 55d3: 50 50 50... PPP :44d3[1]
    equb &88, &0d                                                     ; 55df: 88 0d       ..  :44df[1]
.input_osword_block
    equw input_buffer                                                 ; 55e1: d3 44       .D  :44e1[1]   ; Buffer address for input (2 bytes)
    equb &0d, &20, &ff                                                ; 55e3: 0d 20 ff    . . :44e3[1]   ; Maximum line length; Min. acceptable character value; Max. acceptable character value
.unused3
    equb 0, &ea                                                       ; 55e6: 00 ea       ..  :44e6[1]

; ----------------------------------------------------------------------------------
.check_for_high_score
    lda #&16                                                          ; 55e8: a9 16       ..  :44e8[1]
    jsr oswrch                                                        ; 55ea: 20 ee ff     .. :44ea[1]   ; Write character 22
    lda #4                                                            ; 55ed: a9 04       ..  :44ed[1]
    jsr oswrch                                                        ; 55ef: 20 ee ff     .. :44ef[1]   ; Write character 4
    lda score_as_bcd                                                  ; 55f2: ad 65 2d    .e- :44f2[1]
    ora score_as_bcd + 1                                              ; 55f5: 0d 66 2d    .f- :44f5[1]
    ora score_as_bcd + 2                                              ; 55f8: 0d 67 2d    .g- :44f8[1]
    beq score_is_zero                                                 ; 55fb: f0 2b       .+  :44fb[1]
    lda #8                                                            ; 55fd: a9 08       ..  :44fd[1]
    sta temp8                                                         ; 55ff: 85 75       .u  :44ff[1]
    ldx #0                                                            ; 5601: a2 00       ..  :4501[1]
.consider_records_loop
    lda score_as_bcd + 2                                              ; 5603: ad 67 2d    .g- :4503[1]
    cmp high_score_table,x                                            ; 5606: dd 35 43    .5C :4506[1]
    bcc consider_next_record                                          ; 5609: 90 14       ..  :4509[1]
    bne higher_score                                                  ; 560b: d0 1c       ..  :450b[1]
    lda score_as_bcd + 1                                              ; 560d: ad 66 2d    .f- :450d[1]
    cmp high_score_table + 1,x                                        ; 5610: dd 36 43    .6C :4510[1]
    bcc consider_next_record                                          ; 5613: 90 0a       ..  :4513[1]
    bne higher_score                                                  ; 5615: d0 12       ..  :4515[1]
    lda score_as_bcd                                                  ; 5617: ad 65 2d    .e- :4517[1]
    cmp high_score_table + 2,x                                        ; 561a: dd 37 43    .7C :451a[1]
    bcs higher_score                                                  ; 561d: b0 0a       ..  :451d[1]
.consider_next_record
    txa                                                               ; 561f: 8a          .   :451f[1]
    clc                                                               ; 5620: 18          .   :4520[1]
    adc #&10                                                          ; 5621: 69 10       i.  :4521[1]
    tax                                                               ; 5623: aa          .   :4523[1]
    dec temp8                                                         ; 5624: c6 75       .u  :4524[1]
    bne consider_records_loop                                         ; 5626: d0 db       ..  :4526[1]
.score_is_zero
    rts                                                               ; 5628: 60          `   :4528[1]

.higher_score
    stx temp7                                                         ; 5629: 86 88       ..  :4529[1]
    ldx #&70                                                          ; 562b: a2 70       .p  :452b[1]
.move_records_down_a_slot_loop
    cpx temp7                                                         ; 562d: e4 88       ..  :452d[1]
    beq finished_moving_records                                       ; 562f: f0 0a       ..  :452f[1]
    dex                                                               ; 5631: ca          .   :4531[1]
    lda high_score_table,x                                            ; 5632: bd 35 43    .5C :4532[1]
    sta high_score_table + 16,x                                       ; 5635: 9d 45 43    .EC :4535[1]
    jmp move_records_down_a_slot_loop                                 ; 5638: 4c 2d 45    L-E :4538[1]

.finished_moving_records
    lda #<enter_your_name_string                                      ; 563b: a9 94       ..  :453b[1]
    sta temp0_low                                                     ; 563d: 85 80       ..  :453d[1]
    lda #>enter_your_name_string                                      ; 563f: a9 44       .D  :453f[1]
    sta temp0_high                                                    ; 5641: 85 81       ..  :4541[1]
    ldy #0                                                            ; 5643: a0 00       ..  :4543[1]
.plot_enter_your_name_loop
    lda (temp0_low),y                                                 ; 5645: b1 80       ..  :4545[1]
    cmp #&7e                                                          ; 5647: c9 7e       .~  :4547[1]
    beq finished_plotting_enter_your_name                             ; 5649: f0 0b       ..  :4549[1]
    jsr oswrch                                                        ; 564b: 20 ee ff     .. :454b[1]   ; Write character
    inc temp0_low                                                     ; 564e: e6 80       ..  :454e[1]
    bne plot_enter_your_name_loop                                     ; 5650: d0 f3       ..  :4550[1]
    inc temp0_high                                                    ; 5652: e6 81       ..  :4552[1]
    bne plot_enter_your_name_loop                                     ; 5654: d0 ef       ..  :4554[1]
.finished_plotting_enter_your_name
    ldx #<(input_osword_block)                                        ; 5656: a2 e1       ..  :4556[1]
    ldy #>(input_osword_block)                                        ; 5658: a0 44       .D  :4558[1]
    lda #osword_read_line                                             ; 565a: a9 00       ..  :455a[1]
    jsr osword                                                        ; 565c: 20 f1 ff     .. :455c[1]   ; Read line from input stream (exits with C=1 if ESCAPE pressed)
    sty y_pixels                                                      ; 565f: 84 7b       .{  :455f[1]   ; Y contains line length, including carriage return if used.
    bcc escape_not_pressed                                            ; 5661: 90 05       ..  :4561[1]
    lda #osbyte_acknowledge_escape                                    ; 5663: a9 7e       .~  :4563[1]
    jsr osbyte                                                        ; 5665: 20 f4 ff     .. :4565[1]   ; Clear escape condition and perform escape effects
.escape_not_pressed
    ldx temp7                                                         ; 5668: a6 88       ..  :4568[1]
    lda score_as_bcd                                                  ; 566a: ad 65 2d    .e- :456a[1]
    sta high_score_table + 2,x                                        ; 566d: 9d 37 43    .7C :456d[1]
    lda score_as_bcd + 1                                              ; 5670: ad 66 2d    .f- :4570[1]
    sta high_score_table + 1,x                                        ; 5673: 9d 36 43    .6C :4573[1]
    lda score_as_bcd + 2                                              ; 5676: ad 67 2d    .g- :4576[1]
    sta high_score_table,x                                            ; 5679: 9d 35 43    .5C :4579[1]
    ldy #0                                                            ; 567c: a0 00       ..  :457c[1]
.copy_name_loop
    cpy y_pixels                                                      ; 567e: c4 7b       .{  :457e[1]
    beq pad_name_loop                                                 ; 5680: f0 0a       ..  :4580[1]
    lda input_buffer,y                                                ; 5682: b9 d3 44    ..D :4582[1]
    sta high_score_table + 3,x                                        ; 5685: 9d 38 43    .8C :4585[1]
    inx                                                               ; 5688: e8          .   :4588[1]
    iny                                                               ; 5689: c8          .   :4589[1]
    bne copy_name_loop                                                ; 568a: d0 f2       ..  :458a[1]
.pad_name_loop
    cpy #&0d                                                          ; 568c: c0 0d       ..  :458c[1]
    beq finished_padding_name                                         ; 568e: f0 09       ..  :458e[1]
    lda #&20                                                          ; 5690: a9 20       .   :4590[1]
    sta high_score_table + 3,x                                        ; 5692: 9d 38 43    .8C :4592[1]
    inx                                                               ; 5695: e8          .   :4595[1]
    iny                                                               ; 5696: c8          .   :4596[1]
    bne pad_name_loop                                                 ; 5697: d0 f3       ..  :4597[1]
.finished_padding_name
    jsr starfleet_records_screen                                      ; 5699: 20 d7 43     .C :4599[1]
    rts                                                               ; 569c: 60          `   :459c[1]

.plot_shields_string_and_something
    txa                                                               ; 569d: 8a          .   :459d[1]
    and #1                                                            ; 569e: 29 01       ).  :459e[1]
    sta starship_shields_active_before_failure                        ; 56a0: 8d 5a 26    .Z& :45a0[1]
    jsr plot_shields_string                                           ; 56a3: 20 b8 45     .E :45a3[1]
    lda scanner_failure_duration                                      ; 56a6: ad 59 26    .Y& :45a6[1]
    beq return29                                                      ; 56a9: f0 02       ..  :45a9[1]
    pla                                                               ; 56ab: 68          h   :45ab[1]
    pla                                                               ; 56ac: 68          h   :45ac[1]
.return29
    rts                                                               ; 56ad: 60          `   :45ad[1]

.plot_auto_shields_string
    lda previous_starship_automatic_shields                           ; 56ae: ad 3a 19    .:. :45ae[1]
    cmp starship_automatic_shields                                    ; 56b1: cd 24 19    .$. :45b1[1]
    bpl return30                                                      ; 56b4: 10 0e       ..  :45b4[1]
    ldx #&0e                                                          ; 56b6: a2 0e       ..  :45b6[1]
.plot_shields_string
    ldy #7                                                            ; 56b8: a0 07       ..  :45b8[1]
.plot_shields_string_loop
    lda shield_state_strings,x                                        ; 56ba: bd b2 17    ... :45ba[1]
    jsr oswrch                                                        ; 56bd: 20 ee ff     .. :45bd[1]   ; Write character
    inx                                                               ; 56c0: e8          .   :45c0[1]
    dey                                                               ; 56c1: 88          .   :45c1[1]
    bne plot_shields_string_loop                                      ; 56c2: d0 f6       ..  :45c2[1]
.return30
    rts                                                               ; 56c4: 60          `   :45c4[1]

.unused102
    equb &ea, &ea, &ea, &60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ; 56c5: ea ea ea... ... :45c5[1]
    equb   0,   0,   0                                                ; 56d7: 00 00 00    ... :45d7[1]

.start_game
    lda #&16                                                          ; 56da: a9 16       ..  :45da[1]
    jsr oswrch                                                        ; 56dc: 20 ee ff     .. :45dc[1]   ; Write character 22
    lda #4                                                            ; 56df: a9 04       ..  :45df[1]
    jsr oswrch                                                        ; 56e1: 20 ee ff     .. :45e1[1]   ; Write character 4
    jsr disable_cursor                                                ; 56e4: 20 36 23     6# :45e4[1]
    lda #0                                                            ; 56e7: a9 00       ..  :45e7[1]
    sta previous_score_as_bcd                                         ; 56e9: 8d 07 39    ..9 :45e9[1]
    sta previous_score_as_bcd + 1                                     ; 56ec: 8d 08 39    ..9 :45ec[1]
    sta previous_score_as_bcd + 2                                     ; 56ef: 8d 09 39    ..9 :45ef[1]
    sta number_of_live_starship_torpedoes                             ; 56f2: 8d 57 26    .W& :45f2[1]
    jmp start_game_continuation                                       ; 56f5: 4c f3 37    L.7 :45f5[1]

.unused103
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 56f8: ea ea ea... ... :45f8[1]
    equb &ea, &ea, &ea                                                ; 5704: ea ea ea    ... :4604[1]

.end_of_command
    pla                                                               ; 5707: 68          h   :4607[1]
    pla                                                               ; 5708: 68          h   :4608[1]
    lda enemy_ships_previous_x_fraction                               ; 5709: ad 01 04    ... :4609[1]
    sta rnd_2                                                         ; 570c: 8d d2 1c    ... :460c[1]
    lda enemy_ships_previous_x_fraction1                              ; 570f: ad 04 04    ... :460f[1]
    sta rnd_1                                                         ; 5712: 8d d1 1c    ... :4612[1]
    lda #&16                                                          ; 5715: a9 16       ..  :4615[1]
    jsr oswrch                                                        ; 5717: 20 ee ff     .. :4617[1]   ; Write character 22
    lda #4                                                            ; 571a: a9 04       ..  :461a[1]
    jsr oswrch                                                        ; 571c: 20 ee ff     .. :461c[1]   ; Write character 4
    jsr disable_cursor                                                ; 571f: 20 36 23     6# :461f[1]
    jsr set_foreground_colour_to_black                                ; 5722: 20 12 23     .# :4622[1]
    jsr plot_debriefing                                               ; 5725: 20 61 3b     a; :4625[1]
    jsr set_foreground_colour_to_white                                ; 5728: 20 06 23     .# :4628[1]
    jsr wait_for_return                                               ; 572b: 20 bb 41     .A :462b[1]
    lda allowed_another_command                                       ; 572e: ad 0a 39    ..9 :462e[1]
    bne start_next_command                                            ; 5731: d0 06       ..  :4631[1]
    jsr check_for_high_score                                          ; 5733: 20 e8 44     .D :4633[1]
    jmp start                                                         ; 5736: 4c b1 47    L.G :4636[1]

.start_next_command
    jsr combat_preparation_screen                                     ; 5739: 20 03 42     .B :4639[1]
    lda score_as_bcd                                                  ; 573c: ad 65 2d    .e- :463c[1]
    sta previous_score_as_bcd                                         ; 573f: 8d 07 39    ..9 :463f[1]
    lda score_as_bcd + 1                                              ; 5742: ad 66 2d    .f- :4642[1]
    sta previous_score_as_bcd + 1                                     ; 5745: 8d 08 39    ..9 :4645[1]
    lda score_as_bcd + 2                                              ; 5748: ad 67 2d    .g- :4648[1]
    sta previous_score_as_bcd + 2                                     ; 574b: 8d 09 39    ..9 :464b[1]
    ldy #3                                                            ; 574e: a0 03       ..  :464e[1]
.change_probabilities_loop
    lda probability_of_new_enemy_ship_being_defensive_about_damage,y  ; 5750: b9 ba 33    ..3 :4650[1]
    cmp ultimate_enemy_ship_probabilities,y                           ; 5753: d9 c6 33    ..3 :4653[1]
    beq skip_change_of_probability                                    ; 5756: f0 07       ..  :4656[1]
    clc                                                               ; 5758: 18          .   :4658[1]
    adc change_in_enemy_ship_spawning_probabilities_per_command,y     ; 5759: 79 c0 33    y.3 :4659[1]
    sta probability_of_new_enemy_ship_being_defensive_about_damage,y  ; 575c: 99 ba 33    ..3 :465c[1]
.skip_change_of_probability
    dey                                                               ; 575f: 88          .   :465f[1]
    bpl change_probabilities_loop                                     ; 5760: 10 ee       ..  :4660[1]
    lda maximum_number_of_stars                                       ; 5762: ad 50 0e    .P. :4662[1]
    cmp minimum_number_of_stars                                       ; 5765: cd ba 34    ..4 :4665[1]
    beq skip_change_of_stars                                          ; 5768: f0 07       ..  :4668[1]
    clc                                                               ; 576a: 18          .   :466a[1]
    adc change_in_number_of_stars_per_command                         ; 576b: 6d bb 34    m.4 :466b[1]
    sta maximum_number_of_stars                                       ; 576e: 8d 50 0e    .P. :466e[1]
.skip_change_of_stars
    lda #&16                                                          ; 5771: a9 16       ..  :4671[1]
    jsr oswrch                                                        ; 5773: 20 ee ff     .. :4673[1]   ; Write character 22
    lda #4                                                            ; 5776: a9 04       ..  :4676[1]
    jsr oswrch                                                        ; 5778: 20 ee ff     .. :4678[1]   ; Write character 4
    jsr disable_cursor                                                ; 577b: 20 36 23     6# :467b[1]
    jsr prepare_starship_for_next_command                             ; 577e: 20 f4 34     .4 :467e[1]
    jmp main_game_loop                                                ; 5781: 4c 33 38    L38 :4681[1]

.unused
    equb &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 5784: ea ea ea... ... :4684[1]
    equb &ea, &ea, &ea                                                ; 5790: ea ea ea    ... :4690[1]
.the_frontiers_string
    equb &1f, 0, 5                                                    ; 5793: 1f 00 05    ... :4693[1]
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
.unused1
    equb &0d, &ff, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea, &ea   ; 58a2: 0d ff ea... ... :47a2[1]
    equb &ea, &ea, &ea                                                ; 58ae: ea ea ea    ... :47ae[1]

.start
    lda star_table_address_low                                        ; 58b1: ad 49 0e    .I. :47b1[1]
    sta temp0_low                                                     ; 58b4: 85 80       ..  :47b4[1]
    lda star_table_address_high                                       ; 58b6: ad 4a 0e    .J. :47b6[1]
    sta temp0_high                                                    ; 58b9: 85 81       ..  :47b9[1]
    ldy #0                                                            ; 58bb: a0 00       ..  :47bb[1]
    ldx #0                                                            ; 58bd: a2 00       ..  :47bd[1]
.initialise_stars_loop
    lda #&80                                                          ; 58bf: a9 80       ..  :47bf[1]
    sta (temp0_low),y                                                 ; 58c1: 91 80       ..  :47c1[1]
    iny                                                               ; 58c3: c8          .   :47c3[1]
    lda initial_star_positions,x                                      ; 58c4: bd 00 4a    ..J :47c4[1]
    sta (temp0_low),y                                                 ; 58c7: 91 80       ..  :47c7[1]
    iny                                                               ; 58c9: c8          .   :47c9[1]
    bne skip                                                          ; 58ca: d0 02       ..  :47ca[1]
    inc temp0_high                                                    ; 58cc: e6 81       ..  :47cc[1]
.skip
    inx                                                               ; 58ce: e8          .   :47ce[1]
    bne initialise_stars_loop                                         ; 58cf: d0 ee       ..  :47cf[1]
    jsr initialise_joystick_and_cursor_keys                           ; 58d1: 20 2f 36     /6 :47d1[1]
    lda #&16                                                          ; 58d4: a9 16       ..  :47d4[1]
    jsr oswrch                                                        ; 58d6: 20 ee ff     .. :47d6[1]   ; Write character 22
    lda #4                                                            ; 58d9: a9 04       ..  :47d9[1]
    jsr oswrch                                                        ; 58db: 20 ee ff     .. :47db[1]   ; Write character 4
    lda #&0d                                                          ; 58de: a9 0d       ..  :47de[1]
    jsr oswrch                                                        ; 58e0: 20 ee ff     .. :47e0[1]   ; Write character 13
    lda #0                                                            ; 58e3: a9 00       ..  :47e3[1]
    jsr plot_line_of_underscores_at_y                                 ; 58e5: 20 4c 40     L@ :47e5[1]
    lda #3                                                            ; 58e8: a9 03       ..  :47e8[1]
    jsr plot_line_of_underscores_at_y                                 ; 58ea: 20 4c 40     L@ :47ea[1]
    lda #<the_frontiers_string                                        ; 58ed: a9 93       ..  :47ed[1]
    sta temp0_low                                                     ; 58ef: 85 80       ..  :47ef[1]
    lda #>the_frontiers_string                                        ; 58f1: a9 46       .F  :47f1[1]
    sta temp0_high                                                    ; 58f3: 85 81       ..  :47f3[1]
    ldy #0                                                            ; 58f5: a0 00       ..  :47f5[1]
.plot_the_frontiers_loop
    lda (temp0_low),y                                                 ; 58f7: b1 80       ..  :47f7[1]
    cmp #&7e                                                          ; 58f9: c9 7e       .~  :47f9[1]
    beq finished_the_frontiers                                        ; 58fb: f0 0b       ..  :47fb[1]
    jsr oswrch                                                        ; 58fd: 20 ee ff     .. :47fd[1]   ; Write character
    inc temp0_low                                                     ; 5900: e6 80       ..  :4800[1]
    bne plot_the_frontiers_loop                                       ; 5902: d0 f3       ..  :4802[1]
    inc temp0_high                                                    ; 5904: e6 81       ..  :4804[1]
    bne plot_the_frontiers_loop                                       ; 5906: d0 ef       ..  :4806[1]
.finished_the_frontiers
    lda #osbyte_flush_buffer_class                                    ; 5908: a9 0f       ..  :4808[1]
    ldx #1                                                            ; 590a: a2 01       ..  :480a[1]
    ldy #0                                                            ; 590c: a0 00       ..  :480c[1]
    jsr osbyte                                                        ; 590e: 20 f4 ff     .. :480e[1]   ; Flush input buffers (X non-zero)
    lda #&80                                                          ; 5911: a9 80       ..  :4811[1]
    sta maximum_number_of_stars                                       ; 5913: 8d 50 0e    .P. :4813[1]
    lda #1                                                            ; 5916: a9 01       ..  :4816[1]
    sta starship_velocity_high                                        ; 5918: 8d 00 0f    ... :4818[1]
    sta starship_velocity_low                                         ; 591b: 8d 01 0f    ... :481b[1]
    lda #&85                                                          ; 591e: a9 85       ..  :481e[1]
    sta starship_rotation                                             ; 5920: 8d 02 0f    ... :4820[1]
    lda #5                                                            ; 5923: a9 05       ..  :4823[1]
    sta starship_rotation_magnitude                                   ; 5925: 8d 03 0f    ... :4825[1]
    lda #&ce                                                          ; 5928: a9 ce       ..  :4828[1]
    sta starship_rotation_cosine                                      ; 592a: 8d 04 0f    ... :482a[1]
    lda #&0a                                                          ; 592d: a9 0a       ..  :482d[1]
    sta starship_rotation_sine_magnitude                              ; 592f: 8d 05 0f    ... :482f[1]
    lda #&62                                                          ; 5932: a9 62       .b  :4832[1]
    sta screen_start_high                                             ; 5934: 85 79       .y  :4834[1]
    jsr plot_stars                                                    ; 5936: 20 24 1d     $. :4836[1]
.wait_for_return_in_frontiers
    inc rnd_1                                                         ; 5939: ee d1 1c    ... :4839[1]
    sei                                                               ; 593c: 78          x   :483c[1]
    jsr update_stars                                                  ; 593d: 20 d0 13     .. :483d[1]
    cli                                                               ; 5940: 58          X   :4840[1]
    lda #osbyte_inkey                                                 ; 5941: a9 81       ..  :4841[1]
    ldx #2                                                            ; 5943: a2 02       ..  :4843[1]
    ldy #0                                                            ; 5945: a0 00       ..  :4845[1]
    jsr osbyte                                                        ; 5947: 20 f4 ff     .. :4847[1]   ; Wait for a key press within 2 centiseconds
; X is the ASCII value of the key pressed (assuming Y=0)
    cpx #&0d                                                          ; 594a: e0 0d       ..  :484a[1]
    beq return_pressed                                                ; 594c: f0 0c       ..  :484c[1]
    cpy #&1b                                                          ; 594e: c0 1b       ..  :484e[1]   ; Y is zero if key pressed; &ff if no key pressed; &1b if ESCAPE pressed
    bne wait_for_return_in_frontiers                                  ; 5950: d0 e7       ..  :4850[1]
    lda #osbyte_acknowledge_escape                                    ; 5952: a9 7e       .~  :4852[1]
.osbyte_then_wait_for_return
    jsr osbyte                                                        ; 5954: 20 f4 ff     .. :4854[1]   ; Clear escape condition and perform escape effects
    jmp wait_for_return_in_frontiers                                  ; 5957: 4c 39 48    L9H :4857[1]

.return_pressed
    lda #&58                                                          ; 595a: a9 58       .X  :485a[1]
    sta screen_start_high                                             ; 595c: 85 79       .y  :485c[1]
    lda rnd_1                                                         ; 595e: ad d1 1c    ... :485e[1]
    eor #&cd                                                          ; 5961: 49 cd       I.  :4861[1]
    sta rnd_2                                                         ; 5963: 8d d2 1c    ... :4863[1]
    lda #&0d                                                          ; 5966: a9 0d       ..  :4866[1]
    jsr oswrch                                                        ; 5968: 20 ee ff     .. :4868[1]   ; Write character 13
    jsr combat_preparation_screen                                     ; 596b: 20 03 42     .B :486b[1]
    jmp start_game                                                    ; 596e: 4c da 45    L.E :486e[1]

.unused104
    equb &54, &48, &e0, &0d, &d0, &dd, &60, 0                         ; 5971: 54 48 e0... TH. :4871[1]
.unused_title_string
    equb &1f, &0b, &0a                                                ; 5979: 1f 0b 0a    ... :4879[1]
    equs "STARSHIP COMMAND I"                                         ; 597c: 53 54 41... STA :487c[1]
    equb &1f, &0b, &0c                                                ; 598e: 1f 0b 0c    ... :488e[1]
    equs "COPYRIGHT (c) 1982"                                         ; 5991: 43 4f 50... COP :4891[1]
    equb &1f, &0b, &0e                                                ; 59a3: 1f 0b 0e    ... :48a3[1]
    equs "Peter J.M. Irvin.~"                                         ; 59a6: 50 65 74... Pet :48a6[1]
    equb &0d                                                          ; 59b8: 0d          .   :48b8[1]
.unused105
    equb &ff                                                          ; 59b9: ff          .   :48b9[1]
.unused_title_screen
    equb &a9, &16, &20, &ee, &ff, &a9, 7, &20, &ee, &ff, &a0, 0       ; 59ba: a9 16 20... ..  :48ba[1]
.plot_title_loop
    equb &b9, &79, &48, &c9, &7e, &f0, 6, &20, &ee, &ff, &c8, &d0     ; 59c6: b9 79 48... .yH :48c6[1]
    equb &f3                                                          ; 59d2: f3          .   :48d2[1]
.finished_plotting_title
    equb &a0,   0, &a2, &64, &a9, &81, &20, &f4, &ff, &4c, &b1, &47   ; 59d3: a0 00 a2... ... :48d3[1]
    equb &9c, &a9, &b8, &a9, &be, &ec, &86, &e2, &81, &e2, &ec, &85   ; 59df: 9c a9 b8... ... :48df[1]
    equb &be, &ba, &a5, &a2, &e2,   0,   0,   0,   0,   0,   0,   0   ; 59eb: be ba a5... ... :48eb[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0                  ; 59f7: 00 00 00... ... :48f7[1]

.get_joystick_input
    lda #osbyte_read_adc_or_get_buffer_status                         ; 5a00: a9 80       ..  :4900[1]
    ldx #0                                                            ; 5a02: a2 00       ..  :4902[1]
    jsr osbyte                                                        ; 5a04: 20 f4 ff     .. :4904[1]   ; Read the channel number last used for an ADC conversion and joystick fire buttons (X=0)
    txa                                                               ; 5a07: 8a          .   :4907[1]   ; X has the joystick fire buttons status in the lower two bits: bit 0=left button, bit 1=right button
    and #3                                                            ; 5a08: 29 03       ).  :4908[1]
    beq fire_not_pressed                                              ; 5a0a: f0 03       ..  :490a[1]
    inc fire_pressed                                                  ; 5a0c: ee 1a 19    ... :490c[1]
.fire_not_pressed
    lda #osbyte_read_adc_or_get_buffer_status                         ; 5a0f: a9 80       ..  :490f[1]
    ldx #2                                                            ; 5a11: a2 02       ..  :4911[1]
    jsr osbyte                                                        ; 5a13: 20 f4 ff     .. :4913[1]   ; Read the ADC conversion value for channel X=2
    lda starship_velocity_high                                        ; 5a16: ad 00 0f    ... :4916[1]
    sta x_pixels                                                      ; 5a19: 85 7a       .z  :4919[1]
    lda starship_velocity_low                                         ; 5a1b: ad 01 0f    ... :491b[1]
    asl a                                                             ; 5a1e: 0a          .   :491e[1]
    rol x_pixels                                                      ; 5a1f: 26 7a       &z  :491f[1]
    asl a                                                             ; 5a21: 0a          .   :4921[1]
    rol x_pixels                                                      ; 5a22: 26 7a       &z  :4922[1]
    tya                                                               ; 5a24: 98          .   :4924[1]   ; X and Y contain the ADC value read (low,high)
    lsr a                                                             ; 5a25: 4a          J   :4925[1]
    lsr a                                                             ; 5a26: 4a          J   :4926[1]
    lsr a                                                             ; 5a27: 4a          J   :4927[1]
    sec                                                               ; 5a28: 38          8   :4928[1]
    sbc #8                                                            ; 5a29: e9 08       ..  :4929[1]
    bcs skip_floor1                                                   ; 5a2b: b0 02       ..  :492b[1]
    lda #0                                                            ; 5a2d: a9 00       ..  :492d[1]
.skip_floor1
    cmp x_pixels                                                      ; 5a2f: c5 7a       .z  :492f[1]
    beq consider_rotation                                             ; 5a31: f0 0b       ..  :4931[1]
    bcc decrease_velocity                                             ; 5a33: 90 06       ..  :4933[1]
.increase_velocity
    inc velocity_delta                                                ; 5a35: ee 2e 19    ... :4935[1]
    jmp consider_rotation                                             ; 5a38: 4c 3e 49    L>I :4938[1]

.decrease_velocity
    dec velocity_delta                                                ; 5a3b: ce 2e 19    ... :493b[1]
.consider_rotation
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
    bcc skip_subtraction                                              ; 5a4e: 90 03       ..  :494e[1]
    sbc #1                                                            ; 5a50: e9 01       ..  :4950[1]
    clc                                                               ; 5a52: 18          .   :4952[1]
.skip_subtraction
    adc #&79                                                          ; 5a53: 69 79       iy  :4953[1]
    cmp starship_rotation                                             ; 5a55: cd 02 0f    ... :4955[1]
    beq return31                                                      ; 5a58: f0 0b       ..  :4958[1]
    bcs rotate_clockwise                                              ; 5a5a: b0 06       ..  :495a[1]
.rotate_anticlockwise
    dec rotation_delta                                                ; 5a5c: ce 27 19    .'. :495c[1]
    jmp return31                                                      ; 5a5f: 4c 65 49    LeI :495f[1]

.rotate_clockwise
    inc rotation_delta                                                ; 5a62: ee 27 19    .'. :4962[1]
.return31
    rts                                                               ; 5a65: 60          `   :4965[1]

.unused106
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0                                 ; 5a66: 00 00 00... ... :4966[1]
.unused_copyright_string
    equb &0c, &1f, &0c, 8                                             ; 5a70: 0c 1f 0c... ... :4970[1]
    equs "STARSHIP COMMAND"                                           ; 5a74: 53 54 41... STA :4974[1]
    equb &1f, 1, &0a                                                  ; 5a84: 1f 01 0a    ... :4984[1]
    equs "Copyright (c) Acornsoft Limited 1982"                       ; 5a87: 43 6f 70... Cop :4987[1]
    equb &1f, 6, &0c                                                  ; 5aab: 1f 06 0c    ... :49ab[1]
    equs "Created by Peter J.M. Irvin"                                ; 5aae: 43 72 65... Cre :49ae[1]
    equb &1f, &0a, &0e                                                ; 5ac9: 1f 0a 0e    ... :49c9[1]
    equs "All rights reserved"                                        ; 5acc: 41 6c 6c... All :49cc[1]
    equb &0d, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0          ; 5adf: 0d 00 00... ... :49df[1]
.sound_10
    equb &11, 0                                                       ; 5af0: 11 00       ..  :49f0[1]   ; Channel (2 bytes)
.sound_10_volume_low
    equb 0                                                            ; 5af2: 00          .   :49f2[1]   ; Amplitude (2 bytes)
.sound_10_volume_high
    equb 0                                                            ; 5af3: 00          .   :49f3[1]
.sound_10_pitch
    equb 0, 0, 4, 0                                                   ; 5af4: 00 00 04... ... :49f4[1]   ; Pitch (2 bytes); Duration (2 bytes)
.sound_11
    equb &10, 0, 3, 0, 7, 0, &1e, 0                                   ; 5af8: 10 00 03... ... :49f8[1]   ; Channel (2 bytes); Amplitude (2 bytes); Pitch (2 bytes); Duration (2 bytes)
.initial_star_positions
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
    equb &7f, &a7, &7f, &56, &7b, &b2, &7b, &4b, &7a, &90, &7a, &6d   ; 5ba8: 7f a7 7f... ... :4aa8[1]
    equb &78, &a4, &78, &59, &75, &ae, &75, &4f, &72, &a0, &72, &5d   ; 5bb4: 78 a4 78... x.x :4ab4[1]
    equb &71, &8d, &71, &70, &70, &aa, &70, &53, &6c, &a5, &6c, &58   ; 5bc0: 71 8d 71... q.q :4ac0[1]
    equb &6c, &9c, &6c, &61, &6a, &8b, &6a, &72, &68, &98, &68, &65   ; 5bcc: 6c 9c 6c... l.l :4acc[1]
    equb &68, &a0, &68, &5d, &64, &92, &64, &6b, &64, &9b, &64, &62   ; 5bd8: 68 a0 68... h.h :4ad8[1]
    equb &64, &87, &64, &76, &62, &95, &62, &68, &61, &8d, &61, &70   ; 5be4: 64 87 64... d.d :4ae4[1]
    equb &60, &8f, &60, &6e, &60, &84, &60, &79, &5e, &82, &5e, &7b   ; 5bf0: 60 8f 60... `.` :4af0[1]
    equb &5e, &88, &5e, &75                                           ; 5bfc: 5e 88 5e... ^.^ :4afc[1]
.star_table
    equb &cd, &49, &3a, &96, &f8, &8d, &6e, &61, &c6, &2d, &68, &1f   ; 5c00: cd 49 3a... .I: :4b00[1]
    equb &0d, &74, &52, &d2, &f8, &9e, &3e, &a9, &b1, &25, &2b, &54   ; 5c0c: 0d 74 52... .tR :4b0c[1]
    equb &6d, &6f, &94, &44, &56, &24, &fb, &88, &fd, &b6, &8f, &31   ; 5c18: 6d 6f 94... mo. :4b18[1]
    equb &6a, &ea, &36, &b6, &14, &b5, &0a, &4b, &97, &4c, &f4, &0a   ; 5c24: 6a ea 36... j.6 :4b24[1]
    equb &10, &9d,   7, &40, &e5, &66, &c0, &26, &25, &7d, &2e, &4c   ; 5c30: 10 9d 07... ... :4b30[1]
    equb &63, &7a, &fe, &e4, &b2, &23, &a6, &43, &84, &cc, &3f, &6c   ; 5c3c: 63 7a fe... cz. :4b3c[1]
    equb &c0, &d0, &39, &96, &be, &c3, &80, &54, &32, &cf, &60, &8e   ; 5c48: c0 d0 39... ..9 :4b48[1]
    equb &4b, &c5, &59, &5c, &b6, &ca,   3, &82, &dc, &c5, &7c, &69   ; 5c54: 4b c5 59... K.Y :4b54[1]
    equb &0c, &cc, &13, &93, &99, &c0, &33, &59, &cc, &cd, &e7, &9b   ; 5c60: 0c cc 13... ... :4b60[1]
    equb &da, &be, &5d, &50, &d7, &ca, &95, &a1, &f4, &b9, &3d, &4c   ; 5c6c: da be 5d... ..] :4b6c[1]
    equb &3a, &c4, &55, &85, &9b, &be, &e2, &68, &f1, &c6, &2b, &98   ; 5c78: 3a c4 55... :.U :4b78[1]
    equb &ee, &b9, &70, &56, &b6, &c6, &7c, &a6, &45, &b4, &49, &49   ; 5c84: ee b9 70... ..p :4b84[1]
    equb &d3, &c1, &41, &9d, &46, &b3, &ae, &53, &fb, &bb,   6, &8a   ; 5c90: d3 c1 41... ..A :4b90[1]
    equb &31, &b5, &af, &67, &9a, &c1, &92, &ab, &9c, &ad, &87, &46   ; 5c9c: 31 b5 af... 1.. :4b9c[1]
    equb &8b, &bb, &8d, &a1, &d2, &ab, &18, &52, &49, &bd, &7b, &af   ; 5ca8: 8b bb 8d... ... :4ba8[1]
    equb &1f, &a8, &8f, &44, &5e, &b2, &f2, &8c, &30, &ab, &a6, &68   ; 5cb4: 1f a8 8f... ... :4bb4[1]
    equb &c9, &b7, &9c, &b2, &d9, &a1, &c1, &43, &12, &b5, &e0, &a4   ; 5cc0: c9 b7 9c... ... :4bc0[1]
    equb &90, &a4, &7d, &51                                           ; 5ccc: 90 a4 7d... ..} :4bcc[1]
.starship_explosion_table
    equb 0,   0, &2f, 0,   9, &57, 0, &15, &96, 0, &1a, &63           ; 5cd0: 00 00 2f... ../ :4bd0[1]
    equb 0, &46, &90, 0, &59, &55, 0, &37, &9a, 0, &7d, &91           ; 5cdc: 00 46 90... .F. :4bdc[1]
    equb 0, &32, &69, 0, &3b, &75, 0, &7e, &a0, 0, &71, &51           ; 5ce8: 00 32 69... .2i :4be8[1]
    equb 0, &42, &67, 0, &42, &61, 0, &57, &9a, 0, &0a, &6d           ; 5cf4: 00 42 67... .Bg :4bf4[1]
    equb 0, &f6, &a1, 0, &6e, &98, 0, &55, &8a, 0, &36, &9d           ; 5d00: 00 f6 a1... ... :4c00[1]
    equb 0, &3d, &94, 0, &2b, &75, 0, &78, &32, 0,   6, &a1           ; 5d0c: 00 3d 94... .=. :4c0c[1]
    equb 0, &29, &4c, 0, &0e, &98, 0, &2c, &83, 0, &0d, &99           ; 5d18: 00 29 4c... .)L :4c18[1]
    equb 0, &39, &56, 0, &15, &91, 0,   5, &98, 0, &13, &73           ; 5d24: 00 39 56... .9V :4c24[1]
    equb 0, &6d, &8a, 0, &40, &36, 0,   3, &7e, 0, &51, &4d           ; 5d30: 00 6d 8a... .m. :4c30[1]
    equb 0, &34, &81, 0, &90, &33, 0, &25, &86, 0, &21, &53           ; 5d3c: 00 34 81... .4. :4c3c[1]
    equb 0, &1f, &a0, 0, &72, &65, 0, &6c, &8d, 0, &16, &96           ; 5d48: 00 1f a0... ... :4c48[1]
    equb 0, &2f, &9c, 0, &79, &4d, 0, &45, &8c, 0, &2f, &9f           ; 5d54: 00 2f 9c... ./. :4c54[1]
    equb 0, &64, &8c, 0, &12, &68, 0, &43, &76, 0, &6d, &93           ; 5d60: 00 64 8c... .d. :4c60[1]
    equb 0, &2b, &7c, 0, &62, &64, 0, &65, &92, 0, &3d, &97           ; 5d6c: 00 2b 7c... .+| :4c6c[1]
    equb 0, &16, &8c, 0, &45, &95, 0, &1a                             ; 5d78: 00 16 8c... ... :4c78[1]
    equb &69,   0, &b1, &55, 0, &26, &9e, 0, &4b, &79, 0, &85, &98, 0 ; 5d80: 69 00 b1... i.. :4c80[1]
    equb &4a, &64                                                     ; 5d8e: 4a 64       Jd  :4c8e[1]
.further_star_table
    equb &86, &74, &92, &ad, &94, &65,   8, &62, &c6, &72, &be, &a4   ; 5d90: 86 74 92... .t. :4c90[1]
    equb &53, &67, &dd, &6a, &85, &6d, &73, &94, &ab, &68, &ee, &7b   ; 5d9c: 53 67 dd... Sg. :4c9c[1]
    equb &14, &6e, &97, &a1, &2e, &64, &91, &6f, &a1, &6f, &71, &a9   ; 5da8: 14 6e 97... .n. :4ca8[1]
    equb &9f, &62, &b7, &67, &fd, &68, &7c, &9c, &6b, &61, &3a, &76   ; 5db4: 9f 62 b7... .b. :4cb4[1]
    equb &bd, &6a, &50, &a5, &ac, &5f, &66, &6d, &db, &66, &b1, &91   ; 5dc0: bd 6a 50... .jP :4cc0[1]
    equb &8d, &63,   5, &81, &9d, &67, &d0, &9f, &e0, &5e, &ab, &73   ; 5dcc: 8d 63 05... .c. :4ccc[1]
    equb &12, &65, &2b, &98, &74, &5f, &b6, &7b, &7d, &64, &51, &9a   ; 5dd8: 12 65 2b... .e+ :4cd8[1]
    equb &15, &5e, &f3, &79, &5b, &62, &87, &8f, &37, &60, &bd, &84   ; 5de4: 15 5e f3... .^. :4ce4[1]
    equb   0, &60, &f3, &8d, &a3, &5e, &16, &87, &2a, &61, &d7, &93   ; 5df0: 00 60 f3... .`. :4cf0[1]
    equb &78, &5d, &33, &81                                           ; 5dfc: 78 5d 33... x]3 :4cfc[1]
.enemy_explosion_tables
    equb   0, &d3,   0, &85,   0, &a9,   0, &c6                       ; 5e00: 00 d3 00... ... :4d00[1]
    equb   0, &d7,   0, &9e,   0, &cb,   0, &cb                       ; 5e08: 00 d7 00... ... :4d08[1]
    equb   0, &9e,   0, &a1,   0, &7d,   0, &da                       ; 5e10: 00 9e 00... ... :4d10[1]
    equb   0, &fb,   0, &ce,   0, &b2,   0, &54                       ; 5e18: 00 fb 00... ... :4d18[1]
    equb   0, &6c,   0, &da,   0, &99,   0, &aa                       ; 5e20: 00 6c 00... .l. :4d20[1]
    equb   0, &d6,   0, &91,   0, &95,   0, &ad                       ; 5e28: 00 d6 00... ... :4d28[1]
    equb   0, &f7,   0, &81,   0, &89,   0, &64                       ; 5e30: 00 f7 00... ... :4d30[1]
    equb   0, &99,   0, &fb,   0, &44,   0, &a2                       ; 5e38: 00 99 00... ... :4d38[1]
    equb   0, &a5,   0, &9d,   0, &a2,   0, &a5                       ; 5e40: 00 a5 00... ... :4d40[1]
    equb   0, &75,   0, &fb,   0, &48,   0, &ae                       ; 5e48: 00 75 00... .u. :4d48[1]
    equb   0, &d2,   0, &4c,   0, &ff,   0, &60                       ; 5e50: 00 d2 00... ... :4d50[1]
    equb   0, &71,   0, &ba,   0, &44,   0, &4c                       ; 5e58: 00 71 00... .q. :4d58[1]
    equb   0, &c2,   0, &58,   0, &f3,   0, &91                       ; 5e60: 00 c2 00... ... :4d60[1]
    equb   0, &e7,   0, &aa,   0, &71,   0, &da                       ; 5e68: 00 e7 00... ... :4d68[1]
    equb   0, &9e,   0, &71,   0, &50,   0, &50                       ; 5e70: 00 9e 00... ... :4d70[1]
    equb   0, &a2,   0, &4c,   0, &e3,   0, &cb                       ; 5e78: 00 a2 00... ... :4d78[1]
    equb   0, &91,   0, &f3,   0, &85,   0, &89                       ; 5e80: 00 91 00... ... :4d80[1]
    equb   0, &81,   0, &e3,   0, &cb,   0, &9e                       ; 5e88: 00 81 00... ... :4d88[1]
    equb   0, &44,   0, &ba,   0, &a1,   0, &79                       ; 5e90: 00 44 00... .D. :4d90[1]
    equb   0, &54,   0, &58,   0, &44,   0, &c7                       ; 5e98: 00 54 00... .T. :4d98[1]
    equb   0, &aa,   0, &cb,   0, &7d,   0, &68                       ; 5ea0: 00 aa 00... ... :4da0[1]
    equb   0, &a5,   0, &cf,   0, &40,   0, &71                       ; 5ea8: 00 a5 00... ... :4da8[1]
    equb   0, &68,   0, &ae,   0, &d2,   0, &c2                       ; 5eb0: 00 68 00... .h. :4db0[1]
    equb   0, &ae,   0, &da,   0, &6c,   0, &c2                       ; 5eb8: 00 ae 00... ... :4db8[1]
    equb   0, &a2,   0, &54,   0, &78,   0, &eb                       ; 5ec0: 00 a2 00... ... :4dc0[1]
    equb   0, &d6,   0, &fb,   0, &ce,   0, &fb                       ; 5ec8: 00 d6 00... ... :4dc8[1]
    equb   0, &81,   0, &ad,   0, &f7,   0, &ad                       ; 5ed0: 00 81 00... ... :4dd0[1]
    equb   0, &89,   0, &a2,   0, &b6,   0, &91                       ; 5ed8: 00 89 00... ... :4dd8[1]
    equb   0, &44,   0, &d2,   0, &a6,   0, &c7                       ; 5ee0: 00 44 00... .D. :4de0[1]
    equb   0, &85,   0, &44,   0, &50,   0, &74                       ; 5ee8: 00 85 00... ... :4de8[1]
    equb   0, &85,   0, &79,   0, &a2,   0, &40                       ; 5ef0: 00 85 00... ... :4df0[1]
    equb   0, &75,   0, &ca,   0, &cf,   0, &a6                       ; 5ef8: 00 75 00... .u. :4df8[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5f00: ff ff ff... ... :4e00[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5f08: ff ff ff... ... :4e08[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5f10: ff ff ff... ... :4e10[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5f18: ff ff ff... ... :4e18[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5f20: ff ff ff... ... :4e20[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5f28: ff ff ff... ... :4e28[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5f30: ff ff ff... ... :4e30[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5f38: ff ff ff... ... :4e38[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5f40: 00 00 00... ... :4e40[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5f48: 00 00 00... ... :4e48[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5f50: 00 00 00... ... :4e50[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5f58: 00 00 00... ... :4e58[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5f60: 00 00 00... ... :4e60[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5f68: 00 00 00... ... :4e68[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5f70: 00 00 00... ... :4e70[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5f78: 00 00 00... ... :4e78[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5f80: ff ff ff... ... :4e80[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5f88: ff ff ff... ... :4e88[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5f90: ff ff ff... ... :4e90[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5f98: ff ff ff... ... :4e98[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5fa0: ff ff ff... ... :4ea0[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5fa8: ff ff ff... ... :4ea8[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5fb0: ff ff ff... ... :4eb0[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff                       ; 5fb8: ff ff ff... ... :4eb8[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5fc0: 00 00 00... ... :4ec0[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5fc8: 00 00 00... ... :4ec8[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5fd0: 00 00 00... ... :4ed0[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5fd8: 00 00 00... ... :4ed8[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5fe0: 00 00 00... ... :4ee0[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5fe8: 00 00 00... ... :4ee8[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5ff0: 00 00 00... ... :4ef0[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0                       ; 5ff8: 00 00 00... ... :4ef8[1]
.starship_torpedoes_table
    equb   0, &4b, &66, &b1, &48, &fd, &66, &a3, &4a,   0, &17, &66   ; 6000: 00 4b 66... .Kf :4f00[1]
    equb &3a, &4b, &cb, &66, &2b, &4d,   0, &94, &49, &19, &44, &a2   ; 600c: 3a 4b cb... :K. :4f0c[1]
    equb &4a, &db, &45,   0, &2f, &4a,   9, &46, &3d, &4b, &c9, &47   ; 6018: 4a db 45... J.E :4f18[1]
    equb   0, &6b, &4b, &0e, &48, &77, &4c, &d2, &49,   0, &81, &4b   ; 6024: 00 6b 4b... .kK :4f24[1]
    equb &fc, &48, &91, &4c, &bf, &4a,   0, &39, &83, &6b, &3f, &1d   ; 6030: fc 48 91... .H. :4f30[1]
    equb &83, &7c, &41,   0, &72, &7d, &89, &3a, &82, &7d, &98, &3c   ; 603c: 83 7c 41... .|A :4f3c[1]
    equb   0, &12, &75, &76, &3f, &60, &75, &7e, &41,   0, &99, &6d   ; 6048: 00 12 75... ..u :4f48[1]
    equb &31, &3d, &13, &6e, &33, &3f,   0, &d5, &6a, &36, &40, &63   ; 6054: 31 3d 13... 1=. :4f54[1]
    equb &6b, &35, &42,   0, &b1, &68, &93, &43, &4f, &69, &86, &45   ; 6060: 6b 35 42... k5B :4f60[1]
.unused107
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 606c: 00 00 00... ... :4f6c[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0, &ff, &ff, &ff, &ff   ; 6078: 00 00 00... ... :4f78[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 6084: ff ff ff... ... :4f84[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 6090: ff ff ff... ... :4f90[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 609c: ff ff ff... ... :4f9c[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 60a8: ff ff ff... ... :4fa8[1]
.enemy_torpedoes_table
    equb 0, &fb, &23,   5,   7, &97, 0, &38, &83, &f6, &7d, &9e       ; 60b4: 00 fb 23... ..# :4fb4[1]
    equb 0, &e7, &45, &45, &8a, &c5, 0, &f9, &37, &94, &6c, &bf       ; 60c0: 00 e7 45... ..E :4fc0[1]
    equb 0, &78, &8a, &4e, &77, &a5, 0, &28, &82, &6d, &7c, &d2       ; 60cc: 00 78 8a... .x. :4fcc[1]
    equb 0, &72, &fe, &82, &b1, &ac, 0, &26, &81, &c2, &7e, &c8       ; 60d8: 00 72 fe... .r. :4fd8[1]
    equb 0, &ab, &fd, &23, &a7, &ae, 0, &4a, &fe, &f5, &93, &b8       ; 60e4: 00 ab fd... ... :4fe4[1]
    equb 0, &5e,   2,   3, &ed, &9f, 0, &85, &fd,   9, &98, &b7       ; 60f0: 00 5e 02... .^. :4ff0[1]
    equb 0, &46, &81, &d8, &7b, &ab, 0, &f0, &18, &b1, &b0, &a8       ; 60fc: 00 46 81... .F. :4ffc[1]
    equb 0, &75, &0d, &21, &90, &b8, 0, &fb, &43, &77, &c9, &b3       ; 6108: 00 75 0d... .u. :5008[1]
    equb 0, &1d, &47,   1, &8f, &af, 0, &55, &43, &b0, &73, &c3       ; 6114: 00 1d 47... ..G :5014[1]
    equb 0, &2e, &36, &45, &b1, &b4, 0, &ed, &81, &73, &7d, &a7       ; 6120: 00 2e 36... ..6 :5020[1]
    equb 0, &af, &7d, &5d, &7b, &b2, 0, &d9, &1c, &c9, &93, &b4       ; 612c: 00 af 7d... ..} :502c[1]
    equb 0, &51, &21, &1d, &82, &b8, 0, &31, &28, &f2, &96, &be       ; 6138: 00 51 21... .Q! :5038[1]
.unused108
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 6144: 00 00 00... ... :5044[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 6150: 00 00 00... ... :5050[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 615c: 00 00 00... ... :505c[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 6168: 00 00 00... ... :5068[1]
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 6174: 00 00 00... ... :5074[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 6180: ff ff ff... ... :5080[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 618c: ff ff ff... ... :508c[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 6198: ff ff ff... ... :5098[1]
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff   ; 61a4: ff ff ff... ... :50a4[1]
    equb   0                                                          ; 61b0: 00          .   :50b0[1]

    ; Copy the newly assembled block of code back to it's proper place in the binary
    ; file.
    ; (Note the parameter order: 'copyblock <start>,<end>,<dest>')
    copyblock unused_copyright_string1, *, pydis_start

    ; Clear the area of memory we just temporarily used to assemble the new block,
    ; allowing us to assemble there again if needed
    clear unused_copyright_string1, pydis_start

    ; Set the program counter to the next position in the binary file.
    org pydis_start + (* - unused_copyright_string1)

.entry_point
    lda #0                                                            ; 61b1: a9 00       ..
    tay                                                               ; 61b3: a8          .              ; Y=&00
    sta temp0_low                                                     ; 61b4: 85 80       ..
    lda #&0e                                                          ; 61b6: a9 0e       ..
    sta temp0_high                                                    ; 61b8: 85 81       ..
    lda #0                                                            ; 61ba: a9 00       ..
    sta temp1_low                                                     ; 61bc: 85 82       ..
    lda #&1f                                                          ; 61be: a9 1f       ..
    sta temp1_high                                                    ; 61c0: 85 83       ..
    lda #&b0                                                          ; 61c2: a9 b0       ..
    sta temp3                                                         ; 61c4: 85 84       ..
    lda #&61                                                          ; 61c6: a9 61       .a
    sta temp4                                                         ; 61c8: 85 85       ..
.c61ca
    lda (temp1_low),y                                                 ; 61ca: b1 82       ..
    sta (temp0_low),y                                                 ; 61cc: 91 80       ..
    ldx temp1_low                                                     ; 61ce: a6 82       ..
    cpx temp3                                                         ; 61d0: e4 84       ..
    bne c61da                                                         ; 61d2: d0 06       ..
    ldx temp1_high                                                    ; 61d4: a6 83       ..
    cpx temp4                                                         ; 61d6: e4 85       ..
    beq c61f6                                                         ; 61d8: f0 1c       ..
.c61da
    clc                                                               ; 61da: 18          .
    lda #1                                                            ; 61db: a9 01       ..
    adc temp1_low                                                     ; 61dd: 65 82       e.
    sta temp1_low                                                     ; 61df: 85 82       ..
    lda #0                                                            ; 61e1: a9 00       ..
    adc temp1_high                                                    ; 61e3: 65 83       e.
    sta temp1_high                                                    ; 61e5: 85 83       ..
    lda #1                                                            ; 61e7: a9 01       ..
    adc temp0_low                                                     ; 61e9: 65 80       e.
    sta temp0_low                                                     ; 61eb: 85 80       ..
    lda #0                                                            ; 61ed: a9 00       ..
    adc temp0_high                                                    ; 61ef: 65 81       e.
    sta temp0_high                                                    ; 61f1: 85 81       ..
    jmp c61ca                                                         ; 61f3: 4c ca 61    L.a

.c61f6
    jmp start                                                         ; 61f6: 4c b1 47    L.G

    equb 0, 0, 0, 0, 0, 0                                             ; 61f9: 00 00 00... ...
.pydis_end

    assert '0' == &30
    assert '~' == &7e
    assert <(enemy_explosion_tables + $0000) == &00
    assert <(enemy_explosion_tables + $0040) == &40
    assert <(enemy_explosion_tables + $0080) == &80
    assert <(enemy_explosion_tables + $00c0) == &c0
    assert <(enemy_explosion_tables + $0100) == &00
    assert <(enemy_explosion_tables + $0140) == &40
    assert <(enemy_explosion_tables + $0180) == &80
    assert <(enemy_explosion_tables + $01c0) == &c0
    assert <(enemy_explosion_tables + $0200) == &00
    assert <(enemy_explosion_tables + $0240) == &40
    assert <(enemy_explosion_tables + $0280) == &80
    assert <(enemy_explosion_tables + $02c0) == &c0
    assert <(enemy_explosion_tables + $0300) == &00
    assert <(enemy_explosion_tables + $0340) == &40
    assert <(enemy_explosion_tables + $0380) == &80
    assert <(enemy_explosion_tables + $03c0) == &c0
    assert <(enemy_ship_behaviour_routine0) == &49
    assert <(enemy_ship_behaviour_routine1) == &b1
    assert <(enemy_ship_behaviour_routine2) == &ee
    assert <(enemy_ship_behaviour_routine3) == &1e
    assert <(enemy_ship_behaviour_routine4) == &41
    assert <(enemy_ship_behaviour_routine5) == &6a
    assert <(enemy_ship_behaviour_routine6) == &2e
    assert <(enemy_ship_behaviour_routine7) == &61
    assert <(envelope1) == &84
    assert <(envelope2) == &92
    assert <(envelope3) == &a0
    assert <(envelope4) == &ae
    assert <(input_osword_block) == &e1
    assert <(sound_0) == &08
    assert <(sound_1) == &c8
    assert <(sound_10) == &f0
    assert <(sound_11) == &f8
    assert <(sound_2) == &d0
    assert <(sound_3) == &d8
    assert <(sound_7) == &f8
    assert <(sound_8) == &00
    assert <(sound_9) == &08
    assert <(starship_torpedoes_table+4) == &04
    assert <enemy_torpedo_type_instruction == &20
    assert <enemy_torpedoes_table == &b4
    assert <enter_your_name_string == &94
    assert <instructions_string == &92
    assert <keyboard_or_joystick == &d6
    assert <sound_enabled == &d7
    assert <star_table == &00
    assert <starfleet_records_string == &a5
    assert <starship_explosion_table == &d0
    assert <starship_torpedo_type == &5b
    assert <starship_torpedoes_table == &00
    assert <the_frontiers_string == &93
    assert >(enemy_explosion_tables + $0000) == &4d
    assert >(enemy_explosion_tables + $0040) == &4d
    assert >(enemy_explosion_tables + $0080) == &4d
    assert >(enemy_explosion_tables + $00c0) == &4d
    assert >(enemy_explosion_tables + $0100) == &4e
    assert >(enemy_explosion_tables + $0140) == &4e
    assert >(enemy_explosion_tables + $0180) == &4e
    assert >(enemy_explosion_tables + $01c0) == &4e
    assert >(enemy_explosion_tables + $0200) == &4f
    assert >(enemy_explosion_tables + $0240) == &4f
    assert >(enemy_explosion_tables + $0280) == &4f
    assert >(enemy_explosion_tables + $02c0) == &4f
    assert >(enemy_explosion_tables + $0300) == &50
    assert >(enemy_explosion_tables + $0340) == &50
    assert >(enemy_explosion_tables + $0380) == &50
    assert >(enemy_explosion_tables + $03c0) == &50
    assert >(enemy_ship_behaviour_routine0) == &32
    assert >(enemy_ship_behaviour_routine1) == &32
    assert >(enemy_ship_behaviour_routine2) == &32
    assert >(enemy_ship_behaviour_routine3) == &33
    assert >(enemy_ship_behaviour_routine4) == &33
    assert >(enemy_ship_behaviour_routine5) == &33
    assert >(enemy_ship_behaviour_routine6) == &37
    assert >(enemy_ship_behaviour_routine7) == &37
    assert >(envelope1) == &21
    assert >(envelope2) == &21
    assert >(envelope3) == &21
    assert >(envelope4) == &21
    assert >(input_osword_block) == &44
    assert >(sound_0) == &20
    assert >(sound_1) == &21
    assert >(sound_10) == &49
    assert >(sound_11) == &49
    assert >(sound_2) == &21
    assert >(sound_3) == &21
    assert >(sound_7) == &21
    assert >(sound_8) == &22
    assert >(sound_9) == &22
    assert >(starship_torpedoes_table+4) == &4f
    assert >enemy_torpedo_type_instruction == &16
    assert >enemy_torpedoes_table == &4f
    assert >enter_your_name_string == &44
    assert >instructions_string == &3d
    assert >keyboard_or_joystick == &1c
    assert >sound_enabled == &1c
    assert >star_table == &4b
    assert >starfleet_records_string == &42
    assert >starship_explosion_table == &4b
    assert >starship_torpedo_type == &26
    assert >starship_torpedoes_table == &4f
    assert >the_frontiers_string == &46
    assert input_buffer == &44d3

save pydis_start, pydis_end

; Stats:
;     Total size (Code + Data) = 17151 bytes
;     Code                     = 11046 bytes (64%)
;     Data                     = 6105 bytes (36%)
;
;     Number of instructions   = 5145
;     Number of data bytes     = 4129 bytes
;     Number of data words     = 2 bytes
;     Number of string bytes   = 1974 bytes
;     Number of strings        = 84

