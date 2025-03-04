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
screen_address_low                      = $70
screen_address_high                     = $71
output_pixels                           = $72
output_fraction                         = $73
segment_length                          = $74
temp8                                   = $75
temp9                                   = $76
temp10                                  = $77
segment_angle                           = $78
screen_start_high                       = $79
x_pixels                                = $7a
y_pixels                                = $7b
temp11                                  = $7c
temp0_low                               = $80
temp0_high                              = $81
temp1_low                               = $82
temp2_low                               = $82
temp1_high                              = $83
temp2_high                              = $83
temp3                                   = $84
temp4                                   = $85
temp5                                   = $86
temp6                                   = $87
temp7                                   = $88
page_low                                = $8e
page_high                               = $8f
enemy_ships_previous_on_screen          = $0400
enemy_ships_previous_x_fraction         = $0401
enemy_ships_previous_x_pixels           = $0402
enemy_ships_previous_x_screens          = $0403
enemy_ships_previous_x_fraction1        = $0404
enemy_ships_previous_x_pixels1          = $0405
enemy_ships_previous_x_screens1         = $0406
enemy_ships_previous_angle              = $0407
enemy_ships_velocity                    = $0408
enemy_ships_flags_or_explosion_timer    = $0409
enemy_ships_type                        = $040a
enemy_ships_on_screen                   = $0480
enemy_ships_x_fraction                  = $0481
enemy_ships_x_pixels                    = $0482
enemy_ships_x_screens                   = $0483
enemy_ships_x_fraction1                 = $0484
enemy_ships_x_pixels1                   = $0485
enemy_ships_x_screens1                  = $0486
enemy_ships_angle                       = $0487
enemy_ships_temporary_behaviour_flags   = $0488
enemy_ships_energy                      = $0489
enemy_ships_firing_cooldown             = $048a
user_defined_characters                 = $0c00
unused_copy_of_scanner_static_eor       = $593f
entry_point                             = $61b1
starship_top_screen_address             = $6b38
starship_bottom_screen_address          = $6c78
energy_screen_address                   = $6e48
oswrch                                  = $ffee
osword                                  = $fff1
osbyte                                  = $fff4

    * = $0e00

unused_copyright_string1
pydis_start
    !byte $0d, $ff                                                    ; 0e00: 0d ff       ..
    !text "STARSHIP COMMAND 1.21 Copyright (c) 1982"                  ; 0e02: 53 54 41... STA
    !byte $0d, $50, $54                                               ; 0e2a: 0d 50 54    .PT
number_of_delay_loops
    !byte 0                                                           ; 0e2d: 00          .
enemy_ship_was_previously_on_screen
    !byte 1                                                           ; 0e2e: 01          .
enemy_ship_was_on_screen
    !byte 1                                                           ; 0e2f: 01          .
additional_damage_from_collision_with_enemy_ship
    !byte $c0                                                         ; 0e30: c0          .
damage_enemy_ship_incurs_from_collision_with_other_enemy_ship
    !byte $20                                                         ; 0e31: 20
starship_angle_fraction
    !byte $c4                                                         ; 0e32: c4          .
starship_angle_delta
    !byte $ff                                                         ; 0e33: ff          .
damage_to_enemy_ship_from_starship_torpedo
    !byte $10                                                         ; 0e34: 10          .
maximum_number_of_explosions
    !byte 8                                                           ; 0e35: 08          .
value_used_for_enemy_torpedo_ttl
    !byte $20                                                         ; 0e36: 20
frame_of_enemy_ship_explosion_after_which_no_collisions
    !byte $1b                                                         ; 0e37: 1b          .
frame_of_enemy_ship_explosion_after_which_no_segments_are_plotted
    !byte $23                                                         ; 0e38: 23          #
enemy_ship_explosion_duration
    !byte $25                                                         ; 0e39: 25          %
size_of_enemy_ship_for_collisions_with_torpedoes
    !byte 5                                                           ; 0e3a: 05          .
size_of_enemy_ship_for_collisions_between_enemy_ships
    !byte 8, $4d                                                      ; 0e3b: 08 4d       .M
enemy_torpedo_table_address_low
    !byte <enemy_torpedoes_table                                      ; 0e3d: b4          .
enemy_torpedo_table_address_high
    !byte >enemy_torpedoes_table                                      ; 0e3e: 4f          O
unused4
    !byte $37, $5f                                                    ; 0e3f: 37 5f       7_
bit_table
    !byte $80, $40, $20, $10, 8, 4, 2, 1                              ; 0e41: 80 40 20... .@
star_table_address_low
    !byte <star_table                                                 ; 0e49: 00          .
star_table_address_high
    !byte >star_table                                                 ; 0e4a: 4b          K
starship_torpedo_table_address_low
    !byte <starship_torpedoes_table                                   ; 0e4b: 00          .
starship_torpedo_table_address_high
    !byte >starship_torpedoes_table                                   ; 0e4c: 4f          O
starship_torpedo_tail_table_address_low
    !byte <(starship_torpedoes_table+4)                               ; 0e4d: 04          .
starship_torpedo_tail_table_address_high
    !byte >(starship_torpedoes_table+4)                               ; 0e4e: 4f          O
maximum_number_of_enemy_ships
    !byte 8                                                           ; 0e4f: 08          .
maximum_number_of_stars
    !byte $11                                                         ; 0e50: 11          .
maximum_number_of_starship_torpedoes
    !byte $0c                                                         ; 0e51: 0c          .
maximum_number_of_enemy_torpedoes
    !byte $18                                                         ; 0e52: 18          .
starship_torpedoes_time_to_live
    !byte $0f                                                         ; 0e53: 0f          .
enemy_ships_still_to_consider
    !byte 0                                                           ; 0e54: 00          .
torpedoes_still_to_consider
    !byte 0                                                           ; 0e55: 00          .
starship_shields_active
    !byte 1                                                           ; 0e56: 01          .
unused5
    !byte $3a                                                         ; 0e57: 3a          :
sine_table
    !byte   0,   1,   2,   3,   4,   5,   5,   6,   6,   6,   5,   5  ; 0e58: 00 01 02... ...
    !byte   4,   3,   2,   1,   0, $ff, $fe, $fd, $fc, $fb, $fb, $fa  ; 0e64: 04 03 02... ...
    !byte $fa, $fa, $fb, $fb, $fc, $fd, $fe, $ff                      ; 0e70: fa fa fb... ...
cosine_table
    !byte $fa, $fa, $fb, $fb, $fc, $fd, $fe, $ff, 0, 1, 2, 3,   4     ; 0e78: fa fa fb... ...
    !byte   5,   5,   6,   6,   6,   5,   5,   4, 3, 2, 1, 0, $ff     ; 0e85: 05 05 06... ...
    !byte $fe, $fd, $fc, $fb, $fb, $fa                                ; 0e92: fe fd fc... ...
segment_angle_to_x_y_deltas_table
    !byte 3, $0f, 3, $0f, $0f, $0c, $0f, $0c, $0c, $0d, $0c, $0d, $0d ; 0e98: 03 0f 03... ...
    !byte 1, $0d, 1,   1,   5,   1,   5,   5,   4,   5,   4,   4,   7 ; 0ea5: 01 0d 01... ...
    !byte 4,   7, 7,   3,   7,   3                                    ; 0eb2: 04 07 07... ...
unused6
    !byte 0, $ff, $ff, $ff, $ff, $ff                                  ; 0eb8: 00 ff ff... ...
starship_rotation_cosine_table
    !byte 0, $fe, $f8, $ee, $e0, $ce                                  ; 0ebe: 00 fe f8... ...
starship_rotation_sine_table
    !byte 0, 2, 4, 6, 8, $0a                                          ; 0ec4: 00 02 04... ...
unused7
    !byte 0, 0, 0, 0, 0, 0                                            ; 0eca: 00 00 00... ...
rotated_x_correction_lsb
    !byte 0, $ff, $fc, $f7, $f0, $e7                                  ; 0ed0: 00 ff fc... ...
rotated_x_correction_screens
    !byte 0, 0, 1, 2, 3, 4                                            ; 0ed6: 00 00 01... ...
rotated_y_correction_lsb
    !byte 0, 1, 4, 9, $10, $19                                        ; 0edc: 00 01 04... ...
rotated_y_correction_screens
    !byte 0, 1, 2, 3, 4, 5                                            ; 0ee2: 00 01 02... ...
rotated_x_correction_fraction
    !byte 0, $fe, $ff, $fc, $fa, $f6                                  ; 0ee8: 00 fe ff... ...
rotated_x_correction_pixels
    !byte 0, $fe, $fb, $f6, $ef, $e6                                  ; 0eee: 00 fe fb... ...
rotated_y_correction_fraction
    !byte 1, 0, 2, 0, $ff, $fe                                        ; 0ef4: 01 00 02... ...
rotated_y_correction_pixels
    !byte 0, 1, 4, 9, $0f, $18                                        ; 0efa: 00 01 04... ...
starship_velocity_high
    !byte 0                                                           ; 0f00: 00          .
starship_velocity_low
    !byte 0                                                           ; 0f01: 00          .
starship_rotation
    !byte 0                                                           ; 0f02: 00          .
starship_rotation_magnitude
    !byte 0                                                           ; 0f03: 00          .
starship_rotation_cosine
    !byte 0                                                           ; 0f04: 00          .
starship_rotation_sine_magnitude
    !byte 0                                                           ; 0f05: 00          .

; ----------------------------------------------------------------------------------
set_pixel
    jsr calculate_pixel_address                                       ; 0f06: 20 18 0f     ..
    ora (screen_address_low),y                                        ; 0f09: 11 70       .p
    sta (screen_address_low),y                                        ; 0f0b: 91 70       .p
    rts                                                               ; 0f0d: 60          `

; ----------------------------------------------------------------------------------
unset_pixel
    jsr calculate_pixel_address                                       ; 0f0e: 20 18 0f     ..
    eor #$ff                                                          ; 0f11: 49 ff       I.
    and (screen_address_low),y                                        ; 0f13: 31 70       1p
    sta (screen_address_low),y                                        ; 0f15: 91 70       .p
    rts                                                               ; 0f17: 60          `

; ----------------------------------------------------------------------------------
calculate_pixel_address
    lda #0                                                            ; 0f18: a9 00       ..
    sta screen_address_low                                            ; 0f1a: 85 70       .p
    lda y_pixels                                                      ; 0f1c: a5 7b       .{
    lsr                                                               ; 0f1e: 4a          J
    lsr                                                               ; 0f1f: 4a          J
    lsr                                                               ; 0f20: 4a          J
    sta screen_address_high                                           ; 0f21: 85 71       .q
    lsr                                                               ; 0f23: 4a          J
    ror screen_address_low                                            ; 0f24: 66 70       fp
    lsr                                                               ; 0f26: 4a          J
    ror screen_address_low                                            ; 0f27: 66 70       fp
    adc screen_address_high                                           ; 0f29: 65 71       eq
    adc screen_start_high                                             ; 0f2b: 65 79       ey
    sta screen_address_high                                           ; 0f2d: 85 71       .q
    lda y_pixels                                                      ; 0f2f: a5 7b       .{
    and #7                                                            ; 0f31: 29 07       ).
    adc screen_address_low                                            ; 0f33: 65 70       ep
    sta screen_address_low                                            ; 0f35: 85 70       .p
    lda x_pixels                                                      ; 0f37: a5 7a       .z
    and #$f8                                                          ; 0f39: 29 f8       ).
    tay                                                               ; 0f3b: a8          .
    lda x_pixels                                                      ; 0f3c: a5 7a       .z
    and #7                                                            ; 0f3e: 29 07       ).
    tax                                                               ; 0f40: aa          .
    lda bit_table,x                                                   ; 0f41: bd 41 0e    .A.
    rts                                                               ; 0f44: 60          `

unused_infinite_loop
    !byte $ea, $ea, $d0, $fc, $60                                     ; 0f45: ea ea d0... ...

; ----------------------------------------------------------------------------------
eor_pixel_within_box_around_origin
    lda x_pixels                                                      ; 0f4a: a5 7a       .z
    sec                                                               ; 0f4c: 38          8
    sbc temp10                                                        ; 0f4d: e5 77       .w
    bcs skip_inversion_x                                              ; 0f4f: b0 02       ..
    eor #$ff                                                          ; 0f51: 49 ff       I.
skip_inversion_x
    cmp #$20                                                          ; 0f53: c9 20       .
    bcs return                                                        ; 0f55: b0 42       .B
    lda y_pixels                                                      ; 0f57: a5 7b       .{
    sec                                                               ; 0f59: 38          8
    sbc temp9                                                         ; 0f5a: e5 76       .v
    bcs skip_inversion_y                                              ; 0f5c: b0 02       ..
    eor #$ff                                                          ; 0f5e: 49 ff       I.
skip_inversion_y
    cmp #$20                                                          ; 0f60: c9 20       .
    bcs return                                                        ; 0f62: b0 35       .5
eor_pixel
    lda #0                                                            ; 0f64: a9 00       ..
    sta screen_address_low                                            ; 0f66: 85 70       .p
    lda y_pixels                                                      ; 0f68: a5 7b       .{
    lsr                                                               ; 0f6a: 4a          J
    lsr                                                               ; 0f6b: 4a          J
    lsr                                                               ; 0f6c: 4a          J
    sta screen_address_high                                           ; 0f6d: 85 71       .q
    lsr                                                               ; 0f6f: 4a          J
    ror screen_address_low                                            ; 0f70: 66 70       fp
    lsr                                                               ; 0f72: 4a          J
    ror screen_address_low                                            ; 0f73: 66 70       fp
    adc screen_address_high                                           ; 0f75: 65 71       eq
    adc screen_start_high                                             ; 0f77: 65 79       ey
    sta screen_address_high                                           ; 0f79: 85 71       .q
    lda y_pixels                                                      ; 0f7b: a5 7b       .{
    and #7                                                            ; 0f7d: 29 07       ).
    adc screen_address_low                                            ; 0f7f: 65 70       ep
    sta screen_address_low                                            ; 0f81: 85 70       .p
    lda x_pixels                                                      ; 0f83: a5 7a       .z
    and #$f8                                                          ; 0f85: 29 f8       ).
    tay                                                               ; 0f87: a8          .
    lda x_pixels                                                      ; 0f88: a5 7a       .z
    and #7                                                            ; 0f8a: 29 07       ).
    tax                                                               ; 0f8c: aa          .
    lda bit_table,x                                                   ; 0f8d: bd 41 0e    .A.
    eor (screen_address_low),y                                        ; 0f90: 51 70       Qp
    sta (screen_address_low),y                                        ; 0f92: 91 70       .p
    rts                                                               ; 0f94: 60          `

unused8
    !byte $ea, $ea, $91, $70                                          ; 0f95: ea ea 91... ...

return
    rts                                                               ; 0f99: 60          `

; ----------------------------------------------------------------------------------
multiply_torpedo_position_by_starship_rotation_sine_magnitude
    lda starship_rotation_sine_magnitude                              ; 0f9a: ad 05 0f    ...
    sta temp11                                                        ; 0f9d: 85 7c       .|
    lda (temp0_low),y                                                 ; 0f9f: b1 80       ..
    sta temp8                                                         ; 0fa1: 85 75       .u
    iny                                                               ; 0fa3: c8          .
    lda (temp0_low),y                                                 ; 0fa4: b1 80       ..
    sta output_fraction                                               ; 0fa6: 85 73       .s
    lda #0                                                            ; 0fa8: a9 00       ..
    ldx #$10                                                          ; 0faa: a2 10       ..
loop_over_bits_of_input
    lsr output_fraction                                               ; 0fac: 46 73       Fs
    ror temp8                                                         ; 0fae: 66 75       fu
    bcc input_bit_unset                                               ; 0fb0: 90 03       ..
    clc                                                               ; 0fb2: 18          .
    adc temp11                                                        ; 0fb3: 65 7c       e|
input_bit_unset
    ror                                                               ; 0fb5: 6a          j
    ror output_pixels                                                 ; 0fb6: 66 72       fr
    dex                                                               ; 0fb8: ca          .
    bne loop_over_bits_of_input                                       ; 0fb9: d0 f1       ..
    sta output_fraction                                               ; 0fbb: 85 73       .s
    rts                                                               ; 0fbd: 60          `

; ----------------------------------------------------------------------------------
multiply_torpedo_position_by_starship_rotation_cosine
    lda starship_rotation_cosine                                      ; 0fbe: ad 04 0f    ...
    sta temp8                                                         ; 0fc1: 85 75       .u
    lda #0                                                            ; 0fc3: a9 00       ..
    ldx #8                                                            ; 0fc5: a2 08       ..
loop_over_bits_of_multiplier
    lsr temp8                                                         ; 0fc7: 46 75       Fu
    bcc multiplier_bit_unset                                          ; 0fc9: 90 03       ..
    clc                                                               ; 0fcb: 18          .
    adc (temp0_low),y                                                 ; 0fcc: 71 80       q.
multiplier_bit_unset
    ror                                                               ; 0fce: 6a          j
    dex                                                               ; 0fcf: ca          .
    bne loop_over_bits_of_multiplier                                  ; 0fd0: d0 f5       ..
    sec                                                               ; 0fd2: 38          8
    sbc (temp0_low),y                                                 ; 0fd3: f1 80       ..
    tax                                                               ; 0fd5: aa          .
    lda (temp0_low),y                                                 ; 0fd6: b1 80       ..
    sbc #0                                                            ; 0fd8: e9 00       ..
    sta temp8                                                         ; 0fda: 85 75       .u
    txa                                                               ; 0fdc: 8a          .
    dey                                                               ; 0fdd: 88          .
    clc                                                               ; 0fde: 18          .
    adc (temp0_low),y                                                 ; 0fdf: 71 80       q.
    bcc return1                                                       ; 0fe1: 90 02       ..
    inc temp8                                                         ; 0fe3: e6 75       .u
return1
    rts                                                               ; 0fe5: 60          `

; ----------------------------------------------------------------------------------
update_object_position_for_starship_rotation_and_speed
    iny                                                               ; 0fe6: c8          .
    lda (temp0_low),y                                                 ; 0fe7: b1 80       ..
    sta x_pixels                                                      ; 0fe9: 85 7a       .z
    ldx starship_rotation                                             ; 0feb: ae 02 0f    ...
    bmi skip_inversion                                                ; 0fee: 30 0c       0.
    eor #$ff                                                          ; 0ff0: 49 ff       I.
    sta (temp0_low),y                                                 ; 0ff2: 91 80       ..
    dey                                                               ; 0ff4: 88          .
    lda (temp0_low),y                                                 ; 0ff5: b1 80       ..
    eor #$ff                                                          ; 0ff7: 49 ff       I.
    sta (temp0_low),y                                                 ; 0ff9: 91 80       ..
    iny                                                               ; 0ffb: c8          .
skip_inversion
    iny                                                               ; 0ffc: c8          .
    iny                                                               ; 0ffd: c8          .
    lda (temp0_low),y                                                 ; 0ffe: b1 80       ..
    sta y_pixels                                                      ; 1000: 85 7b       .{
    ldx starship_rotation_sine_magnitude                              ; 1002: ae 05 0f    ...
    bne update_position_for_rotation                                  ; 1005: d0 06       ..
    jsr brief_delay_80                                                ; 1007: 20 0d 12     ..
    jmp add_starship_velocity_to_position                             ; 100a: 4c 6f 10    Lo.

; ----------------------------------------------------------------------------------
update_position_for_rotation
    dey                                                               ; 100d: 88          .
    jsr multiply_torpedo_position_by_starship_rotation_sine_magnitude ; 100e: 20 9a 0f     ..
    dey                                                               ; 1011: 88          .
    dey                                                               ; 1012: 88          .
    jsr multiply_torpedo_position_by_starship_rotation_cosine         ; 1013: 20 be 0f     ..
    clc                                                               ; 1016: 18          .
    adc output_pixels                                                 ; 1017: 65 72       er
    sta temp9                                                         ; 1019: 85 76       .v
    lda temp8                                                         ; 101b: a5 75       .u
    adc output_fraction                                               ; 101d: 65 73       es
    sta temp10                                                        ; 101f: 85 77       .w
    jsr multiply_torpedo_position_by_starship_rotation_sine_magnitude ; 1021: 20 9a 0f     ..
    iny                                                               ; 1024: c8          .
    iny                                                               ; 1025: c8          .
    jsr multiply_torpedo_position_by_starship_rotation_cosine         ; 1026: 20 be 0f     ..
    sec                                                               ; 1029: 38          8
    sbc output_pixels                                                 ; 102a: e5 72       .r
    sta (temp0_low),y                                                 ; 102c: 91 80       ..
    iny                                                               ; 102e: c8          .
    lda temp8                                                         ; 102f: a5 75       .u
    sbc output_fraction                                               ; 1031: e5 73       .s
    sta (temp0_low),y                                                 ; 1033: 91 80       ..
    dey                                                               ; 1035: 88          .
    dey                                                               ; 1036: 88          .
    dey                                                               ; 1037: 88          .
    ldx starship_rotation_magnitude                                   ; 1038: ae 03 0f    ...
    lda temp9                                                         ; 103b: a5 76       .v
    sec                                                               ; 103d: 38          8
    sbc rotated_x_correction_lsb,x                                    ; 103e: fd d0 0e    ...
    sta (temp0_low),y                                                 ; 1041: 91 80       ..
    iny                                                               ; 1043: c8          .
    lda temp10                                                        ; 1044: a5 77       .w
    sbc rotated_x_correction_screens,x                                ; 1046: fd d6 0e    ...
    sta (temp0_low),y                                                 ; 1049: 91 80       ..
    lda starship_rotation                                             ; 104b: ad 02 0f    ...
    bmi skip_uninversion                                              ; 104e: 30 0e       0.
    dey                                                               ; 1050: 88          .
    lda (temp0_low),y                                                 ; 1051: b1 80       ..
    eor #$ff                                                          ; 1053: 49 ff       I.
    sta (temp0_low),y                                                 ; 1055: 91 80       ..
    iny                                                               ; 1057: c8          .
    lda (temp0_low),y                                                 ; 1058: b1 80       ..
    eor #$ff                                                          ; 105a: 49 ff       I.
    sta (temp0_low),y                                                 ; 105c: 91 80       ..
skip_uninversion
    iny                                                               ; 105e: c8          .
    lda (temp0_low),y                                                 ; 105f: b1 80       ..
    clc                                                               ; 1061: 18          .
    adc rotated_y_correction_lsb,x                                    ; 1062: 7d dc 0e    }..
    sta (temp0_low),y                                                 ; 1065: 91 80       ..
    iny                                                               ; 1067: c8          .
    lda (temp0_low),y                                                 ; 1068: b1 80       ..
    adc rotated_y_correction_screens,x                                ; 106a: 7d e2 0e    }..
    sta (temp0_low),y                                                 ; 106d: 91 80       ..
add_starship_velocity_to_position
    dey                                                               ; 106f: 88          .
    lda (temp0_low),y                                                 ; 1070: b1 80       ..
    clc                                                               ; 1072: 18          .
    adc starship_velocity_low                                         ; 1073: 6d 01 0f    m..
    sta (temp0_low),y                                                 ; 1076: 91 80       ..
    iny                                                               ; 1078: c8          .
    lda (temp0_low),y                                                 ; 1079: b1 80       ..
    adc starship_velocity_high                                        ; 107b: 6d 00 0f    m..
    sta (temp0_low),y                                                 ; 107e: 91 80       ..
    rts                                                               ; 1080: 60          `

; ----------------------------------------------------------------------------------
multiply_enemy_position_by_starship_rotation_sine_magnitude
    lda starship_rotation_sine_magnitude                              ; 1081: ad 05 0f    ...
    sta segment_length                                                ; 1084: 85 74       .t
    lda enemy_ships_x_fraction,x                                      ; 1086: bd 81 04    ...
    sta temp9                                                         ; 1089: 85 76       .v
    lda enemy_ships_x_pixels,x                                        ; 108b: bd 82 04    ...
    sta temp10                                                        ; 108e: 85 77       .w
    lda enemy_ships_x_screens,x                                       ; 1090: bd 83 04    ...
    sta segment_angle                                                 ; 1093: 85 78       .x
    lda #0                                                            ; 1095: a9 00       ..
    ldy #$18                                                          ; 1097: a0 18       ..
loop_over_bits_of_input1
    lsr segment_angle                                                 ; 1099: 46 78       Fx
    ror temp10                                                        ; 109b: 66 77       fw
    ror temp9                                                         ; 109d: 66 76       fv
    bcc input_bit_unset1                                              ; 109f: 90 03       ..
    clc                                                               ; 10a1: 18          .
    adc segment_length                                                ; 10a2: 65 74       et
input_bit_unset1
    ror                                                               ; 10a4: 6a          j
    ror output_fraction                                               ; 10a5: 66 73       fs
    ror output_pixels                                                 ; 10a7: 66 72       fr
    dey                                                               ; 10a9: 88          .
    bne loop_over_bits_of_input1                                      ; 10aa: d0 ed       ..
    sta segment_length                                                ; 10ac: 85 74       .t
    rts                                                               ; 10ae: 60          `

; ----------------------------------------------------------------------------------
multiply_enemy_position_by_starship_rotation_cosine
    lda starship_rotation_cosine                                      ; 10af: ad 04 0f    ...
    sta segment_angle                                                 ; 10b2: 85 78       .x
    lda enemy_ships_x_pixels,x                                        ; 10b4: bd 82 04    ...
    sta temp9                                                         ; 10b7: 85 76       .v
    lda enemy_ships_x_screens,x                                       ; 10b9: bd 83 04    ...
    sta temp10                                                        ; 10bc: 85 77       .w
    lda #0                                                            ; 10be: a9 00       ..
    ldy #$10                                                          ; 10c0: a0 10       ..
loop_over_bits_of_input2
    lsr temp10                                                        ; 10c2: 46 77       Fw
    ror temp9                                                         ; 10c4: 66 76       fv
    bcc input_bit_unset2                                              ; 10c6: 90 03       ..
    clc                                                               ; 10c8: 18          .
    adc segment_angle                                                 ; 10c9: 65 78       ex
input_bit_unset2
    ror                                                               ; 10cb: 6a          j
    ror temp8                                                         ; 10cc: 66 75       fu
    dey                                                               ; 10ce: 88          .
    bne loop_over_bits_of_input2                                      ; 10cf: d0 f1       ..
    tay                                                               ; 10d1: a8          .
    lda temp8                                                         ; 10d2: a5 75       .u
    clc                                                               ; 10d4: 18          .
    adc enemy_ships_x_fraction,x                                      ; 10d5: 7d 81 04    }..
    sta temp9                                                         ; 10d8: 85 76       .v
    tya                                                               ; 10da: 98          .
    adc enemy_ships_x_pixels,x                                        ; 10db: 7d 82 04    }..
    tay                                                               ; 10de: a8          .
    lda enemy_ships_x_screens,x                                       ; 10df: bd 83 04    ...
    adc #0                                                            ; 10e2: 69 00       i.
    sta segment_angle                                                 ; 10e4: 85 78       .x
    lda temp9                                                         ; 10e6: a5 76       .v
    sec                                                               ; 10e8: 38          8
    sbc enemy_ships_x_pixels,x                                        ; 10e9: fd 82 04    ...
    sta temp9                                                         ; 10ec: 85 76       .v
    tya                                                               ; 10ee: 98          .
    sbc enemy_ships_x_screens,x                                       ; 10ef: fd 83 04    ...
    sta temp10                                                        ; 10f2: 85 77       .w
    lda segment_angle                                                 ; 10f4: a5 78       .x
    sbc #0                                                            ; 10f6: e9 00       ..
    sta segment_angle                                                 ; 10f8: 85 78       .x
    rts                                                               ; 10fa: 60          `

; ----------------------------------------------------------------------------------
apply_starship_rotation_and_velocity_to_enemy_ships
    lda starship_rotation_sine_magnitude                              ; 10fb: ad 05 0f    ...
    bne starship_is_rotating                                          ; 10fe: d0 06       ..
    jsr brief_delay_40                                                ; 1100: 20 11 12     ..
    jmp apply_starship_velocity_to_enemy_ship                         ; 1103: 4c f1 11    L..

starship_is_rotating
    lda enemy_ships_previous_x_pixels,x                               ; 1106: bd 02 04    ...
    clc                                                               ; 1109: 18          .
    adc #$80                                                          ; 110a: 69 80       i.
    sta enemy_ships_x_pixels,x                                        ; 110c: 9d 82 04    ...
    bcc skip1                                                         ; 110f: 90 03       ..
    inc enemy_ships_x_screens,x                                       ; 1111: fe 83 04    ...
skip1
    lda enemy_ships_previous_x_pixels1,x                              ; 1114: bd 05 04    ...
    clc                                                               ; 1117: 18          .
    adc #$80                                                          ; 1118: 69 80       i.
    sta enemy_ships_x_pixels1,x                                       ; 111a: 9d 85 04    ...
    bcc skip2                                                         ; 111d: 90 03       ..
    inc enemy_ships_x_screens1,x                                      ; 111f: fe 86 04    ...
skip2
    ldy starship_rotation                                             ; 1122: ac 02 0f    ...
    bmi skip_inversion1                                               ; 1125: 30 18       0.
    lda enemy_ships_previous_x_fraction,x                             ; 1127: bd 01 04    ...
    eor #$ff                                                          ; 112a: 49 ff       I.
    sta enemy_ships_x_fraction,x                                      ; 112c: 9d 81 04    ...
    lda enemy_ships_x_pixels,x                                        ; 112f: bd 82 04    ...
    eor #$ff                                                          ; 1132: 49 ff       I.
    sta enemy_ships_x_pixels,x                                        ; 1134: 9d 82 04    ...
    lda enemy_ships_x_screens,x                                       ; 1137: bd 83 04    ...
    eor #$ff                                                          ; 113a: 49 ff       I.
    sta enemy_ships_x_screens,x                                       ; 113c: 9d 83 04    ...
skip_inversion1
    inx                                                               ; 113f: e8          .
    inx                                                               ; 1140: e8          .
    inx                                                               ; 1141: e8          .
    jsr multiply_enemy_position_by_starship_rotation_sine_magnitude   ; 1142: 20 81 10     ..
    dex                                                               ; 1145: ca          .
    dex                                                               ; 1146: ca          .
    dex                                                               ; 1147: ca          .
    jsr multiply_enemy_position_by_starship_rotation_cosine           ; 1148: 20 af 10     ..
    lda temp9                                                         ; 114b: a5 76       .v
    clc                                                               ; 114d: 18          .
    adc output_pixels                                                 ; 114e: 65 72       er
    sta x_pixels                                                      ; 1150: 85 7a       .z
    lda temp10                                                        ; 1152: a5 77       .w
    adc output_fraction                                               ; 1154: 65 73       es
    sta y_pixels                                                      ; 1156: 85 7b       .{
    lda segment_angle                                                 ; 1158: a5 78       .x
    adc segment_length                                                ; 115a: 65 74       et
    sta temp11                                                        ; 115c: 85 7c       .|
    jsr multiply_enemy_position_by_starship_rotation_sine_magnitude   ; 115e: 20 81 10     ..
    inx                                                               ; 1161: e8          .
    inx                                                               ; 1162: e8          .
    inx                                                               ; 1163: e8          .
    jsr multiply_enemy_position_by_starship_rotation_cosine           ; 1164: 20 af 10     ..
    dex                                                               ; 1167: ca          .
    dex                                                               ; 1168: ca          .
    dex                                                               ; 1169: ca          .
    lda temp9                                                         ; 116a: a5 76       .v
    sec                                                               ; 116c: 38          8
    sbc output_pixels                                                 ; 116d: e5 72       .r
    sta temp9                                                         ; 116f: 85 76       .v
    lda temp10                                                        ; 1171: a5 77       .w
    sbc output_fraction                                               ; 1173: e5 73       .s
    sta temp10                                                        ; 1175: 85 77       .w
    lda segment_angle                                                 ; 1177: a5 78       .x
    sbc segment_length                                                ; 1179: e5 74       .t
    sta segment_angle                                                 ; 117b: 85 78       .x
    ldy starship_rotation_magnitude                                   ; 117d: ac 03 0f    ...
    lda x_pixels                                                      ; 1180: a5 7a       .z
    sec                                                               ; 1182: 38          8
    sbc rotated_x_correction_fraction,y                               ; 1183: f9 e8 0e    ...
    sta enemy_ships_x_fraction,x                                      ; 1186: 9d 81 04    ...
    lda y_pixels                                                      ; 1189: a5 7b       .{
    sbc rotated_x_correction_pixels,y                                 ; 118b: f9 ee 0e    ...
    sta enemy_ships_x_pixels,x                                        ; 118e: 9d 82 04    ...
    lda temp11                                                        ; 1191: a5 7c       .|
    sbc rotated_x_correction_screens,y                                ; 1193: f9 d6 0e    ...
    sta enemy_ships_x_screens,x                                       ; 1196: 9d 83 04    ...
    lda starship_rotation                                             ; 1199: ad 02 0f    ...
    bmi skip_uninversion1                                             ; 119c: 30 18       0.
    lda enemy_ships_x_fraction,x                                      ; 119e: bd 81 04    ...
    eor #$ff                                                          ; 11a1: 49 ff       I.
    sta enemy_ships_x_fraction,x                                      ; 11a3: 9d 81 04    ...
    lda enemy_ships_x_pixels,x                                        ; 11a6: bd 82 04    ...
    eor #$ff                                                          ; 11a9: 49 ff       I.
    sta enemy_ships_x_pixels,x                                        ; 11ab: 9d 82 04    ...
    lda enemy_ships_x_screens,x                                       ; 11ae: bd 83 04    ...
    eor #$ff                                                          ; 11b1: 49 ff       I.
    sta enemy_ships_x_screens,x                                       ; 11b3: 9d 83 04    ...
skip_uninversion1
    lda temp9                                                         ; 11b6: a5 76       .v
    clc                                                               ; 11b8: 18          .
    adc rotated_y_correction_fraction,y                               ; 11b9: 79 f4 0e    y..
    sta enemy_ships_x_fraction1,x                                     ; 11bc: 9d 84 04    ...
    lda temp10                                                        ; 11bf: a5 77       .w
    adc rotated_y_correction_pixels,y                                 ; 11c1: 79 fa 0e    y..
    sta enemy_ships_x_pixels1,x                                       ; 11c4: 9d 85 04    ...
    lda segment_angle                                                 ; 11c7: a5 78       .x
    adc rotated_y_correction_screens,y                                ; 11c9: 79 e2 0e    y..
    sta enemy_ships_x_screens1,x                                      ; 11cc: 9d 86 04    ...
    lda enemy_ships_x_pixels1,x                                       ; 11cf: bd 85 04    ...
    sec                                                               ; 11d2: 38          8
    sbc #$80                                                          ; 11d3: e9 80       ..
    sta enemy_ships_x_pixels1,x                                       ; 11d5: 9d 85 04    ...
    lda enemy_ships_x_screens1,x                                      ; 11d8: bd 86 04    ...
    sbc #0                                                            ; 11db: e9 00       ..
    sta enemy_ships_x_screens1,x                                      ; 11dd: 9d 86 04    ...
    lda enemy_ships_x_pixels,x                                        ; 11e0: bd 82 04    ...
    sec                                                               ; 11e3: 38          8
    sbc #$80                                                          ; 11e4: e9 80       ..
    sta enemy_ships_x_pixels,x                                        ; 11e6: 9d 82 04    ...
    lda enemy_ships_x_screens,x                                       ; 11e9: bd 83 04    ...
    sbc #0                                                            ; 11ec: e9 00       ..
    sta enemy_ships_x_screens,x                                       ; 11ee: 9d 83 04    ...
apply_starship_velocity_to_enemy_ship
    lda enemy_ships_x_fraction1,x                                     ; 11f1: bd 84 04    ...
    clc                                                               ; 11f4: 18          .
    adc starship_velocity_low                                         ; 11f5: 6d 01 0f    m..
    sta enemy_ships_x_fraction1,x                                     ; 11f8: 9d 84 04    ...
    lda enemy_ships_x_pixels1,x                                       ; 11fb: bd 85 04    ...
    adc starship_velocity_high                                        ; 11fe: 6d 00 0f    m..
    sta enemy_ships_x_pixels1,x                                       ; 1201: 9d 85 04    ...
    lda enemy_ships_x_screens1,x                                      ; 1204: bd 86 04    ...
    adc #0                                                            ; 1207: 69 00       i.
    sta enemy_ships_x_screens1,x                                      ; 1209: 9d 86 04    ...
    rts                                                               ; 120c: 60          `

; ----------------------------------------------------------------------------------
brief_delay_80
    lda #$80                                                          ; 120d: a9 80       ..
    bne brief_delay_loop                                              ; 120f: d0 02       ..             ; ALWAYS branch

brief_delay_40
    lda #$c0                                                          ; 1211: a9 c0       ..
brief_delay_loop
    clc                                                               ; 1213: 18          .
    adc #1                                                            ; 1214: 69 01       i.
    bne brief_delay_loop                                              ; 1216: d0 fb       ..
    rts                                                               ; 1218: 60          `

; ----------------------------------------------------------------------------------
plot_starship_torpedoes
    lda maximum_number_of_starship_torpedoes                          ; 1219: ad 51 0e    .Q.
    sta torpedoes_still_to_consider                                   ; 121c: 8d 55 0e    .U.
    lda starship_torpedo_table_address_low                            ; 121f: ad 4b 0e    .K.
    sta temp0_low                                                     ; 1222: 85 80       ..
    lda starship_torpedo_table_address_high                           ; 1224: ad 4c 0e    .L.
    sta temp0_high                                                    ; 1227: 85 81       ..
    lda starship_torpedo_tail_table_address_low                       ; 1229: ad 4d 0e    .M.
    sta temp1_low                                                     ; 122c: 85 82       ..
    lda starship_torpedo_tail_table_address_high                      ; 122e: ad 4e 0e    .N.
    sta temp1_high                                                    ; 1231: 85 83       ..
plot_starship_torpedoes_loop
    ldy #0                                                            ; 1233: a0 00       ..
    lda (temp0_low),y                                                 ; 1235: b1 80       ..
    bne torpedo_present                                               ; 1237: d0 03       ..
    jmp update_next_torpedo                                           ; 1239: 4c d8 12    L..

torpedo_present
    sec                                                               ; 123c: 38          8
    sbc #1                                                            ; 123d: e9 01       ..
    sta (temp0_low),y                                                 ; 123f: 91 80       ..
    bne torpedo_still_alive                                           ; 1241: d0 09       ..
    dec number_of_live_starship_torpedoes                             ; 1243: ce 57 26    .W&
    jsr plot_expiring_torpedo                                         ; 1246: 20 8a 13     ..
    jmp update_next_torpedo                                           ; 1249: 4c d8 12    L..

torpedo_still_alive
    jsr plot_starship_torpedo                                         ; 124c: 20 5a 14     Z.
    ldy #1                                                            ; 124f: a0 01       ..
    jsr update_object_position_for_starship_rotation_and_speed        ; 1251: 20 e6 0f     ..
    ldy #5                                                            ; 1254: a0 05       ..
    jsr update_object_position_for_starship_rotation_and_speed        ; 1256: 20 e6 0f     ..
    ldy #1                                                            ; 1259: a0 01       ..
    lda (temp0_low),y                                                 ; 125b: b1 80       ..
    sec                                                               ; 125d: 38          8
    sbc (temp1_low),y                                                 ; 125e: f1 82       ..
    sta output_pixels                                                 ; 1260: 85 72       .r
    iny                                                               ; 1262: c8          .              ; Y=$02
    lda (temp0_low),y                                                 ; 1263: b1 80       ..
    sbc (temp1_low),y                                                 ; 1265: f1 82       ..
    asl output_pixels                                                 ; 1267: 06 72       .r
    rol                                                               ; 1269: 2a          *
    asl output_pixels                                                 ; 126a: 06 72       .r
    rol                                                               ; 126c: 2a          *
    sta output_fraction                                               ; 126d: 85 73       .s
    iny                                                               ; 126f: c8          .              ; Y=$03
    lda (temp0_low),y                                                 ; 1270: b1 80       ..
    sec                                                               ; 1272: 38          8
    sbc (temp1_low),y                                                 ; 1273: f1 82       ..
    sta temp9                                                         ; 1275: 85 76       .v
    iny                                                               ; 1277: c8          .              ; Y=$04
    lda (temp0_low),y                                                 ; 1278: b1 80       ..
    sbc (temp1_low),y                                                 ; 127a: f1 82       ..
    asl temp9                                                         ; 127c: 06 76       .v
    rol                                                               ; 127e: 2a          *
    asl temp9                                                         ; 127f: 06 76       .v
    rol                                                               ; 1281: 2a          *
    sta temp10                                                        ; 1282: 85 77       .w
    ldy #1                                                            ; 1284: a0 01       ..
    lda (temp0_low),y                                                 ; 1286: b1 80       ..
    clc                                                               ; 1288: 18          .
    adc output_pixels                                                 ; 1289: 65 72       er
    sta (temp0_low),y                                                 ; 128b: 91 80       ..
    iny                                                               ; 128d: c8          .              ; Y=$02
    lda (temp0_low),y                                                 ; 128e: b1 80       ..
    adc output_fraction                                               ; 1290: 65 73       es
    sta (temp0_low),y                                                 ; 1292: 91 80       ..
    iny                                                               ; 1294: c8          .              ; Y=$03
    lda (temp0_low),y                                                 ; 1295: b1 80       ..
    clc                                                               ; 1297: 18          .
    adc temp9                                                         ; 1298: 65 76       ev
    sta (temp0_low),y                                                 ; 129a: 91 80       ..
    iny                                                               ; 129c: c8          .              ; Y=$04
    lda (temp0_low),y                                                 ; 129d: b1 80       ..
    adc temp10                                                        ; 129f: 65 77       ew
    sta (temp0_low),y                                                 ; 12a1: 91 80       ..
    ldy #1                                                            ; 12a3: a0 01       ..
    lda (temp1_low),y                                                 ; 12a5: b1 82       ..
    clc                                                               ; 12a7: 18          .
    adc output_pixels                                                 ; 12a8: 65 72       er
    sta (temp1_low),y                                                 ; 12aa: 91 82       ..
    iny                                                               ; 12ac: c8          .              ; Y=$02
    lda (temp1_low),y                                                 ; 12ad: b1 82       ..
    adc output_fraction                                               ; 12af: 65 73       es
    sta (temp1_low),y                                                 ; 12b1: 91 82       ..
    iny                                                               ; 12b3: c8          .              ; Y=$03
    lda (temp1_low),y                                                 ; 12b4: b1 82       ..
    clc                                                               ; 12b6: 18          .
    adc temp9                                                         ; 12b7: 65 76       ev
    sta (temp1_low),y                                                 ; 12b9: 91 82       ..
    iny                                                               ; 12bb: c8          .              ; Y=$04
    lda (temp1_low),y                                                 ; 12bc: b1 82       ..
    adc temp10                                                        ; 12be: 65 77       ew
    sta (temp1_low),y                                                 ; 12c0: 91 82       ..
    jsr check_for_collision_with_enemy_ships                          ; 12c2: 20 9d 15     ..
    bcs update_next_torpedo                                           ; 12c5: b0 11       ..
    ldy #0                                                            ; 12c7: a0 00       ..
    lda (temp0_low),y                                                 ; 12c9: b1 80       ..
    cmp #2                                                            ; 12cb: c9 02       ..
    bcs unplot_torpedo                                                ; 12cd: b0 06       ..
    jsr plot_expiring_torpedo                                         ; 12cf: 20 8a 13     ..
    sec                                                               ; 12d2: 38          8
    bcs update_next_torpedo                                           ; 12d3: b0 03       ..             ; ALWAYS branch

unplot_torpedo
    jsr plot_starship_torpedo                                         ; 12d5: 20 5a 14     Z.
update_next_torpedo
    lda temp0_low                                                     ; 12d8: a5 80       ..
    clc                                                               ; 12da: 18          .
    adc #9                                                            ; 12db: 69 09       i.
    sta temp0_low                                                     ; 12dd: 85 80       ..
    bcc skip3                                                         ; 12df: 90 02       ..
    inc temp0_high                                                    ; 12e1: e6 81       ..
skip3
    lda temp1_low                                                     ; 12e3: a5 82       ..
    clc                                                               ; 12e5: 18          .
    adc #9                                                            ; 12e6: 69 09       i.
    sta temp1_low                                                     ; 12e8: 85 82       ..
    bcc skip4                                                         ; 12ea: 90 02       ..
    inc temp1_high                                                    ; 12ec: e6 83       ..
skip4
    dec torpedoes_still_to_consider                                   ; 12ee: ce 55 0e    .U.
    beq return2                                                       ; 12f1: f0 03       ..
    jmp plot_starship_torpedoes_loop                                  ; 12f3: 4c 33 12    L3.

return2
    rts                                                               ; 12f6: 60          `

; ----------------------------------------------------------------------------------
fire_starship_torpedo
    lda number_of_live_starship_torpedoes                             ; 12f7: ad 57 26    .W&
    cmp maximum_number_of_starship_torpedoes                          ; 12fa: cd 51 0e    .Q.
    bcs return3                                                       ; 12fd: b0 23       .#
    inc number_of_live_starship_torpedoes                             ; 12ff: ee 57 26    .W&
    inc starship_fired_torpedo                                        ; 1302: ee 58 26    .X&
    lda starship_torpedo_table_address_low                            ; 1305: ad 4b 0e    .K.
    sta temp0_low                                                     ; 1308: 85 80       ..
    lda starship_torpedo_table_address_high                           ; 130a: ad 4c 0e    .L.
    sta temp0_high                                                    ; 130d: 85 81       ..
    ldy #0                                                            ; 130f: a0 00       ..
loop5
    lda (temp0_low),y                                                 ; 1311: b1 80       ..
    beq empty_torpedo_slot                                            ; 1313: f0 0e       ..
    lda temp0_low                                                     ; 1315: a5 80       ..
    clc                                                               ; 1317: 18          .
    adc #9                                                            ; 1318: 69 09       i.
    sta temp0_low                                                     ; 131a: 85 80       ..
    bcc loop5                                                         ; 131c: 90 f3       ..
    inc temp0_high                                                    ; 131e: e6 81       ..
    bne loop5                                                         ; 1320: d0 ef       ..
return3
    rts                                                               ; 1322: 60          `

; ----------------------------------------------------------------------------------
empty_torpedo_slot
    lda starship_torpedoes_time_to_live                               ; 1323: ad 53 0e    .S.
    sta (temp0_low),y                                                 ; 1326: 91 80       ..
    lda temp0_low                                                     ; 1328: a5 80       ..
    clc                                                               ; 132a: 18          .
    adc #4                                                            ; 132b: 69 04       i.
    sta temp1_low                                                     ; 132d: 85 82       ..
    lda temp0_high                                                    ; 132f: a5 81       ..
    adc #0                                                            ; 1331: 69 00       i.
    sta temp1_high                                                    ; 1333: 85 83       ..
    iny                                                               ; 1335: c8          .
    lda #$7f                                                          ; 1336: a9 7f       ..
    sta (temp0_low),y                                                 ; 1338: 91 80       ..
    sta (temp1_low),y                                                 ; 133a: 91 82       ..
    iny                                                               ; 133c: c8          .
    sta (temp0_low),y                                                 ; 133d: 91 80       ..
    sta (temp1_low),y                                                 ; 133f: 91 82       ..
    iny                                                               ; 1341: c8          .
    lda #$80                                                          ; 1342: a9 80       ..
    sta (temp0_low),y                                                 ; 1344: 91 80       ..
    lda #$90                                                          ; 1346: a9 90       ..
    sta (temp1_low),y                                                 ; 1348: 91 82       ..
    iny                                                               ; 134a: c8          .
    lda #$75                                                          ; 134b: a9 75       .u
    sta (temp0_low),y                                                 ; 134d: 91 80       ..
    lda #$77                                                          ; 134f: a9 77       .w
    sta (temp1_low),y                                                 ; 1351: 91 82       ..
    lda #0                                                            ; 1353: a9 00       ..
    sta how_enemy_ship_was_damaged                                    ; 1355: 8d e0 1c    ...
    jsr check_for_collision_with_enemy_ships                          ; 1358: 20 9d 15     ..
    bcs return4                                                       ; 135b: b0 03       ..
    jmp plot_starship_torpedo                                         ; 135d: 4c 5a 14    LZ.

return4
    rts                                                               ; 1360: 60          `

unused9
    !byte $ea                                                         ; 1361: ea          .

; ----------------------------------------------------------------------------------
plot_big_torpedo
    inc x_pixels                                                      ; 1362: e6 7a       .z
    jsr eor_pixel                                                     ; 1364: 20 64 0f     d.
    inc y_pixels                                                      ; 1367: e6 7b       .{
    jsr eor_pixel                                                     ; 1369: 20 64 0f     d.
    dec x_pixels                                                      ; 136c: c6 7a       .z
    jsr eor_pixel                                                     ; 136e: 20 64 0f     d.
    inc y_pixels                                                      ; 1371: e6 7b       .{
    jsr eor_pixel                                                     ; 1373: 20 64 0f     d.
    dec x_pixels                                                      ; 1376: c6 7a       .z
    dec y_pixels                                                      ; 1378: c6 7b       .{
    jsr eor_pixel                                                     ; 137a: 20 64 0f     d.
    dec y_pixels                                                      ; 137d: c6 7b       .{
    jsr eor_pixel                                                     ; 137f: 20 64 0f     d.
    dec y_pixels                                                      ; 1382: c6 7b       .{
    inc x_pixels                                                      ; 1384: e6 7a       .z
    jsr eor_pixel                                                     ; 1386: 20 64 0f     d.
    rts                                                               ; 1389: 60          `

; ----------------------------------------------------------------------------------
plot_expiring_torpedo
    ldy #2                                                            ; 138a: a0 02       ..
    lda (temp0_low),y                                                 ; 138c: b1 80       ..
    sta x_pixels                                                      ; 138e: 85 7a       .z
    ldy #4                                                            ; 1390: a0 04       ..
    lda (temp0_low),y                                                 ; 1392: b1 80       ..
    sta y_pixels                                                      ; 1394: 85 7b       .{
    jsr eor_pixel                                                     ; 1396: 20 64 0f     d.
    inc y_pixels                                                      ; 1399: e6 7b       .{
    jsr eor_pixel                                                     ; 139b: 20 64 0f     d.
    inc x_pixels                                                      ; 139e: e6 7a       .z
    jsr eor_pixel                                                     ; 13a0: 20 64 0f     d.
    inc x_pixels                                                      ; 13a3: e6 7a       .z
    dec y_pixels                                                      ; 13a5: c6 7b       .{
    jsr eor_pixel                                                     ; 13a7: 20 64 0f     d.
    dec x_pixels                                                      ; 13aa: c6 7a       .z
    jsr eor_pixel                                                     ; 13ac: 20 64 0f     d.
    dec y_pixels                                                      ; 13af: c6 7b       .{
    jsr eor_pixel                                                     ; 13b1: 20 64 0f     d.
    dec x_pixels                                                      ; 13b4: c6 7a       .z
    jsr eor_pixel                                                     ; 13b6: 20 64 0f     d.
    dec x_pixels                                                      ; 13b9: c6 7a       .z
    jsr eor_pixel                                                     ; 13bb: 20 64 0f     d.
    dec x_pixels                                                      ; 13be: c6 7a       .z
    inc y_pixels                                                      ; 13c0: e6 7b       .{
    jsr eor_pixel                                                     ; 13c2: 20 64 0f     d.
    inc x_pixels                                                      ; 13c5: e6 7a       .z
    jsr eor_pixel                                                     ; 13c7: 20 64 0f     d.
    inc y_pixels                                                      ; 13ca: e6 7b       .{
    jsr eor_pixel                                                     ; 13cc: 20 64 0f     d.
    rts                                                               ; 13cf: 60          `

; ----------------------------------------------------------------------------------
update_stars
    lda star_table_address_low                                        ; 13d0: ad 49 0e    .I.
    sta temp0_low                                                     ; 13d3: 85 80       ..
    lda star_table_address_high                                       ; 13d5: ad 4a 0e    .J.
    sta temp0_high                                                    ; 13d8: 85 81       ..
    lda maximum_number_of_stars                                       ; 13da: ad 50 0e    .P.
    sta enemy_ships_still_to_consider                                 ; 13dd: 8d 54 0e    .T.
update_stars_loop
    ldy #0                                                            ; 13e0: a0 00       ..
    jsr update_object_position_for_starship_rotation_and_speed        ; 13e2: 20 e6 0f     ..
    jsr eor_pixel                                                     ; 13e5: 20 64 0f     d.
    ldy #1                                                            ; 13e8: a0 01       ..
    lda (temp0_low),y                                                 ; 13ea: b1 80       ..
    sta x_pixels                                                      ; 13ec: 85 7a       .z
    ldy #3                                                            ; 13ee: a0 03       ..
    lda (temp0_low),y                                                 ; 13f0: b1 80       ..
    sta y_pixels                                                      ; 13f2: 85 7b       .{
    jsr eor_pixel                                                     ; 13f4: 20 64 0f     d.
    lda temp0_low                                                     ; 13f7: a5 80       ..
    clc                                                               ; 13f9: 18          .
    adc #4                                                            ; 13fa: 69 04       i.
    sta temp0_low                                                     ; 13fc: 85 80       ..
    bcc skip5                                                         ; 13fe: 90 02       ..
    inc temp0_high                                                    ; 1400: e6 81       ..
skip5
    dec enemy_ships_still_to_consider                                 ; 1402: ce 54 0e    .T.
    bne update_stars_loop                                             ; 1405: d0 d9       ..
    rts                                                               ; 1407: 60          `

; ----------------------------------------------------------------------------------
unplot_long_range_scanner_if_shields_inactive
    lda starship_shields_active                                       ; 1408: ad 56 0e    .V.
    beq return5                                                       ; 140b: f0 4b       .K
    lda #0                                                            ; 140d: a9 00       ..
    sta starship_shields_active                                       ; 140f: 8d 56 0e    .V.
    jsr plot_top_and_right_edge_of_long_range_scanner_without_text    ; 1412: 20 38 14     8.
    jsr plot_enemy_ships_on_scanners                                  ; 1415: 20 19 30     .0
    ldy #$1f                                                          ; 1418: a0 1f       ..
    sty x_pixels                                                      ; 141a: 84 7a       .z
    iny                                                               ; 141c: c8          .              ; Y=$20
    sty y_pixels                                                      ; 141d: 84 7b       .{
    inc screen_start_high                                             ; 141f: e6 79       .y
    jsr unset_pixel                                                   ; 1421: 20 0e 0f     ..
    dec screen_start_high                                             ; 1424: c6 79       .y
    jsr plot_shields_text                                             ; 1426: 20 bd 22     ."
    rts                                                               ; 1429: 60          `

unused10
    !byte $ea                                                         ; 142a: ea          .

; ----------------------------------------------------------------------------------
plot_top_and_right_edge_of_long_range_scanner_with_blank_text
    lda starship_shields_active                                       ; 142b: ad 56 0e    .V.
    bne return5                                                       ; 142e: d0 28       .(
    lda #1                                                            ; 1430: a9 01       ..
    sta starship_shields_active                                       ; 1432: 8d 56 0e    .V.
    jsr plot_blank_text                                               ; 1435: 20 c9 22     ."
; ----------------------------------------------------------------------------------
plot_top_and_right_edge_of_long_range_scanner_without_text
    inc screen_start_high                                             ; 1438: e6 79       .y
    lda #$3f                                                          ; 143a: a9 3f       .?
    sta x_pixels                                                      ; 143c: 85 7a       .z
    lda #0                                                            ; 143e: a9 00       ..
    sta y_pixels                                                      ; 1440: 85 7b       .{
plot_top_edge_loop
    jsr eor_pixel                                                     ; 1442: 20 64 0f     d.
    dec x_pixels                                                      ; 1445: c6 7a       .z
    bpl plot_top_edge_loop                                            ; 1447: 10 f9       ..
    lda #$3f                                                          ; 1449: a9 3f       .?
    sta y_pixels                                                      ; 144b: 85 7b       .{
    sta x_pixels                                                      ; 144d: 85 7a       .z
plot_right_edge_loop
    jsr eor_pixel                                                     ; 144f: 20 64 0f     d.
    dec y_pixels                                                      ; 1452: c6 7b       .{
    bne plot_right_edge_loop                                          ; 1454: d0 f9       ..
    dec screen_start_high                                             ; 1456: c6 79       .y
return5
    rts                                                               ; 1458: 60          `

unused11
    !byte $ea                                                         ; 1459: ea          .

; ----------------------------------------------------------------------------------
plot_starship_torpedo
    ldy #2                                                            ; 145a: a0 02       ..
    lda (temp0_low),y                                                 ; 145c: b1 80       ..
    sta x_pixels                                                      ; 145e: 85 7a       .z
    ldy #4                                                            ; 1460: a0 04       ..
    lda (temp0_low),y                                                 ; 1462: b1 80       ..
    sta y_pixels                                                      ; 1464: 85 7b       .{
    jsr eor_pixel                                                     ; 1466: 20 64 0f     d.
    lda starship_torpedo_type                                         ; 1469: ad 5b 26    .[&
    beq small_starship_torpedoes                                      ; 146c: f0 03       ..
    jmp plot_big_torpedo                                              ; 146e: 4c 62 13    Lb.

small_starship_torpedoes
    ldy #2                                                            ; 1471: a0 02       ..
    lda (temp1_low),y                                                 ; 1473: b1 82       ..
    sta x_pixels                                                      ; 1475: 85 7a       .z
    ldy #4                                                            ; 1477: a0 04       ..
    lda (temp1_low),y                                                 ; 1479: b1 82       ..
    sta y_pixels                                                      ; 147b: 85 7b       .{
    jsr eor_pixel                                                     ; 147d: 20 64 0f     d.
    ldy #1                                                            ; 1480: a0 01       ..
    lda (temp0_low),y                                                 ; 1482: b1 80       ..
    clc                                                               ; 1484: 18          .
    adc (temp1_low),y                                                 ; 1485: 71 82       q.
    iny                                                               ; 1487: c8          .              ; Y=$02
    lda (temp0_low),y                                                 ; 1488: b1 80       ..
    adc (temp1_low),y                                                 ; 148a: 71 82       q.
    ror                                                               ; 148c: 6a          j
    sta x_pixels                                                      ; 148d: 85 7a       .z
    iny                                                               ; 148f: c8          .              ; Y=$03
    lda (temp0_low),y                                                 ; 1490: b1 80       ..
    clc                                                               ; 1492: 18          .
    adc (temp1_low),y                                                 ; 1493: 71 82       q.
    iny                                                               ; 1495: c8          .              ; Y=$04
    lda (temp0_low),y                                                 ; 1496: b1 80       ..
    adc (temp1_low),y                                                 ; 1498: 71 82       q.
    ror                                                               ; 149a: 6a          j
    sta y_pixels                                                      ; 149b: 85 7b       .{
    jsr eor_pixel                                                     ; 149d: 20 64 0f     d.
    rts                                                               ; 14a0: 60          `

unused12
    !text "INY"                                                       ; 14a1: 49 4e 59    INY

; ----------------------------------------------------------------------------------
apply_rotation_to_starship_angle
    lda #0                                                            ; 14a4: a9 00       ..
    sta starship_angle_delta                                          ; 14a6: 8d 33 0e    .3.
    ldx starship_rotation_magnitude                                   ; 14a9: ae 03 0f    ...
    beq return6                                                       ; 14ac: f0 23       .#
    lda starship_angle_fraction                                       ; 14ae: ad 32 0e    .2.
    ldy starship_rotation                                             ; 14b1: ac 02 0f    ...
    bpl subtract_fraction                                             ; 14b4: 10 0d       ..
add_fraction
    clc                                                               ; 14b6: 18          .
    adc #$52                                                          ; 14b7: 69 52       iR
    bcc skip6                                                         ; 14b9: 90 03       ..
    dec starship_angle_delta                                          ; 14bb: ce 33 0e    .3.
skip6
    dex                                                               ; 14be: ca          .
    bne add_fraction                                                  ; 14bf: d0 f5       ..
    beq set_starship_angle_fraction                                   ; 14c1: f0 0b       ..             ; ALWAYS branch

subtract_fraction
    sec                                                               ; 14c3: 38          8
    sbc #$52                                                          ; 14c4: e9 52       .R
    bcs skip7                                                         ; 14c6: b0 03       ..
    inc starship_angle_delta                                          ; 14c8: ee 33 0e    .3.
skip7
    dex                                                               ; 14cb: ca          .
    bne subtract_fraction                                             ; 14cc: d0 f5       ..
set_starship_angle_fraction
    sta starship_angle_fraction                                       ; 14ce: 8d 32 0e    .2.
return6
    rts                                                               ; 14d1: 60          `

; ----------------------------------------------------------------------------------
update_enemy_torpedoes
    lda #1                                                            ; 14d2: a9 01       ..
    sta how_enemy_ship_was_damaged                                    ; 14d4: 8d e0 1c    ...
    lda maximum_number_of_enemy_torpedoes                             ; 14d7: ad 52 0e    .R.
    sta torpedoes_still_to_consider                                   ; 14da: 8d 55 0e    .U.
    lda enemy_torpedo_table_address_low                               ; 14dd: ad 3d 0e    .=.
    sta temp0_low                                                     ; 14e0: 85 80       ..
    lda enemy_torpedo_table_address_high                              ; 14e2: ad 3e 0e    .>.
    sta temp0_high                                                    ; 14e5: 85 81       ..
update_enemy_torpedoes_loop
    ldy #0                                                            ; 14e7: a0 00       ..
    lda (temp0_low),y                                                 ; 14e9: b1 80       ..
    bne enemy_torpedo_in_slot                                         ; 14eb: d0 03       ..
    jmp move_to_next_enemy_torpedo                                    ; 14ed: 4c 89 15    L..

; ----------------------------------------------------------------------------------
enemy_torpedo_in_slot
    sec                                                               ; 14f0: 38          8
    sbc #1                                                            ; 14f1: e9 01       ..
    sta (temp0_low),y                                                 ; 14f3: 91 80       ..
    bne enemy_torpedo_still_alive                                     ; 14f5: d0 06       ..
    jsr plot_expiring_torpedo                                         ; 14f7: 20 8a 13     ..
    jmp move_to_next_enemy_torpedo                                    ; 14fa: 4c 89 15    L..

enemy_torpedo_still_alive
    jsr plot_enemy_torpedo                                            ; 14fd: 20 11 16     ..
    ldy #1                                                            ; 1500: a0 01       ..
    jsr update_object_position_for_starship_rotation_and_speed        ; 1502: 20 e6 0f     ..
    ldy #5                                                            ; 1505: a0 05       ..
    lda (temp0_low),y                                                 ; 1507: b1 80       ..
    clc                                                               ; 1509: 18          .
    adc starship_angle_delta                                          ; 150a: 6d 33 0e    m3.
    sta (temp0_low),y                                                 ; 150d: 91 80       ..
    lsr                                                               ; 150f: 4a          J
    lsr                                                               ; 1510: 4a          J
    lsr                                                               ; 1511: 4a          J
    tax                                                               ; 1512: aa          .
    dey                                                               ; 1513: 88          .              ; Y=$04
    lda cosine_table,x                                                ; 1514: bd 78 0e    .x.
    clc                                                               ; 1517: 18          .
    adc (temp0_low),y                                                 ; 1518: 71 80       q.
    sta (temp0_low),y                                                 ; 151a: 91 80       ..
    sec                                                               ; 151c: 38          8
    sbc y_pixels                                                      ; 151d: e5 7b       .{
    bcs skip_inversion2                                               ; 151f: b0 02       ..
    eor #$ff                                                          ; 1521: 49 ff       I.
skip_inversion2
    cmp #$40                                                          ; 1523: c9 40       .@
    bcs remove_torpedo                                                ; 1525: b0 15       ..
    ldy #2                                                            ; 1527: a0 02       ..
    lda sine_table,x                                                  ; 1529: bd 58 0e    .X.
    clc                                                               ; 152c: 18          .
    adc (temp0_low),y                                                 ; 152d: 71 80       q.
    sta (temp0_low),y                                                 ; 152f: 91 80       ..
    sec                                                               ; 1531: 38          8
    sbc x_pixels                                                      ; 1532: e5 7a       .z
    bcs skip_uninversion2                                             ; 1534: b0 02       ..
    eor #$ff                                                          ; 1536: 49 ff       I.
skip_uninversion2
    cmp #$40                                                          ; 1538: c9 40       .@
    bcc consider_collisions                                           ; 153a: 90 08       ..
remove_torpedo
    lda #0                                                            ; 153c: a9 00       ..
    tay                                                               ; 153e: a8          .
    sta (temp0_low),y                                                 ; 153f: 91 80       ..
    jmp move_to_next_enemy_torpedo                                    ; 1541: 4c 89 15    L..

; ----------------------------------------------------------------------------------
consider_collisions
    lda (temp0_low),y                                                 ; 1544: b1 80       ..
    cmp starship_maximum_x_for_collisions_with_enemy_torpedoes        ; 1546: cd d5 25    ..%
    bcs enemy_torpedo_missed_starship                                 ; 1549: b0 28       .(
    cmp starship_minimum_x_for_collisions_with_enemy_torpedoes        ; 154b: cd d6 25    ..%
    bcc enemy_torpedo_missed_starship                                 ; 154e: 90 23       .#
    ldy #4                                                            ; 1550: a0 04       ..
    lda (temp0_low),y                                                 ; 1552: b1 80       ..
    cmp starship_maximum_y_for_collisions_with_enemy_torpedoes        ; 1554: cd d7 25    ..%
    bcs enemy_torpedo_missed_starship                                 ; 1557: b0 1a       ..
    cmp starship_minimum_y_for_collisions_with_enemy_torpedoes        ; 1559: cd d8 25    ..%
    bcc enemy_torpedo_missed_starship                                 ; 155c: 90 15       ..
    jsr plot_expiring_torpedo                                         ; 155e: 20 8a 13     ..
    inc enemy_torpedo_hits_against_starship                           ; 1561: ee dd 1c    ...
    lda damage_from_enemy_torpedo                                     ; 1564: ad d9 1c    ...
    jsr incur_damage                                                  ; 1567: 20 a3 1a     ..
    ldy #0                                                            ; 156a: a0 00       ..
    lda #1                                                            ; 156c: a9 01       ..
    sta (temp0_low),y                                                 ; 156e: 91 80       ..
    jmp move_to_next_enemy_torpedo                                    ; 1570: 4c 89 15    L..

enemy_torpedo_missed_starship
    jsr check_for_collision_with_enemy_ships                          ; 1573: 20 9d 15     ..
    bcs move_to_next_enemy_torpedo                                    ; 1576: b0 11       ..
    ldy #0                                                            ; 1578: a0 00       ..
    lda (temp0_low),y                                                 ; 157a: b1 80       ..
    cmp #2                                                            ; 157c: c9 02       ..
    bcs enemy_torpedo_ok                                              ; 157e: b0 06       ..
    jsr plot_expiring_torpedo                                         ; 1580: 20 8a 13     ..
    jmp move_to_next_enemy_torpedo                                    ; 1583: 4c 89 15    L..

enemy_torpedo_ok
    jsr plot_enemy_torpedo                                            ; 1586: 20 11 16     ..
move_to_next_enemy_torpedo
    lda temp0_low                                                     ; 1589: a5 80       ..
    clc                                                               ; 158b: 18          .
    adc #6                                                            ; 158c: 69 06       i.
    sta temp0_low                                                     ; 158e: 85 80       ..
    bcc skip8                                                         ; 1590: 90 02       ..
    inc temp0_high                                                    ; 1592: e6 81       ..
skip8
    dec torpedoes_still_to_consider                                   ; 1594: ce 55 0e    .U.
    beq finished_updating_torpedoes                                   ; 1597: f0 03       ..
    jmp update_enemy_torpedoes_loop                                   ; 1599: 4c e7 14    L..

finished_updating_torpedoes
    rts                                                               ; 159c: 60          `

; ----------------------------------------------------------------------------------
check_for_collision_with_enemy_ships
    ldy #2                                                            ; 159d: a0 02       ..
    lda (temp0_low),y                                                 ; 159f: b1 80       ..
    sta temp3                                                         ; 15a1: 85 84       ..
    ldy #4                                                            ; 15a3: a0 04       ..
    lda (temp0_low),y                                                 ; 15a5: b1 80       ..
    sta temp4                                                         ; 15a7: 85 85       ..
    lda maximum_number_of_enemy_ships                                 ; 15a9: ad 4f 0e    .O.
    sta enemy_ships_still_to_consider                                 ; 15ac: 8d 54 0e    .T.
    ldx #0                                                            ; 15af: a2 00       ..
consider_enemy_slot
    lda enemy_ships_on_screen,x                                       ; 15b1: bd 80 04    ...
    bne move_to_next_enemy                                            ; 15b4: d0 4f       .O
    lda enemy_ships_x_pixels,x                                        ; 15b6: bd 82 04    ...
    sec                                                               ; 15b9: 38          8
    sbc temp3                                                         ; 15ba: e5 84       ..
    bcs skip_inversion_x1                                             ; 15bc: b0 02       ..
    eor #$ff                                                          ; 15be: 49 ff       I.
skip_inversion_x1
    cmp size_of_enemy_ship_for_collisions_with_torpedoes              ; 15c0: cd 3a 0e    .:.
    bcs move_to_next_enemy                                            ; 15c3: b0 40       .@
    lda enemy_ships_x_pixels1,x                                       ; 15c5: bd 85 04    ...
    sec                                                               ; 15c8: 38          8
    sbc temp4                                                         ; 15c9: e5 85       ..
    bcs skip_inversion_y1                                             ; 15cb: b0 02       ..
    eor #$ff                                                          ; 15cd: 49 ff       I.
skip_inversion_y1
    cmp size_of_enemy_ship_for_collisions_with_torpedoes              ; 15cf: cd 3a 0e    .:.
    bcs move_to_next_enemy                                            ; 15d2: b0 31       .1
    lda enemy_ships_energy,x                                          ; 15d4: bd 89 04    ...
    bne skip_considering_explosion                                    ; 15d7: d0 0a       ..
    lda enemy_ships_flags_or_explosion_timer,x                        ; 15d9: bd 09 04    ...
    cmp frame_of_enemy_ship_explosion_after_which_no_collisions       ; 15dc: cd 37 0e    .7.
    bcs skip_damage                                                   ; 15df: b0 19       ..
    bcc move_to_next_enemy                                            ; 15e1: 90 22       ."             ; ALWAYS branch

skip_considering_explosion
    inc enemy_ship_was_hit                                            ; 15e3: ee de 1c    ...
    inc enemy_ships_temporary_behaviour_flags,x                       ; 15e6: fe 88 04    ...
    lda how_enemy_ship_was_damaged                                    ; 15e9: ad e0 1c    ...
    beq damaged_by_other                                              ; 15ec: f0 06       ..
    lda damage_to_enemy_ship_from_starship_torpedo                    ; 15ee: ad 34 0e    .4.
    jmp collision_occurred                                            ; 15f1: 4c f7 15    L..

damaged_by_other
    lda damage_to_enemy_ship_from_other_collision                     ; 15f4: ad df 1c    ...
collision_occurred
    jsr damage_enemy_ship                                             ; 15f7: 20 e7 1b     ..
skip_damage
    ldy #0                                                            ; 15fa: a0 00       ..
    lda #1                                                            ; 15fc: a9 01       ..
    sta (temp0_low),y                                                 ; 15fe: 91 80       ..
    jsr plot_expiring_torpedo                                         ; 1600: 20 8a 13     ..
    sec                                                               ; 1603: 38          8
    rts                                                               ; 1604: 60          `

move_to_next_enemy
    txa                                                               ; 1605: 8a          .
    clc                                                               ; 1606: 18          .
    adc #$0b                                                          ; 1607: 69 0b       i.
    tax                                                               ; 1609: aa          .
    dec enemy_ships_still_to_consider                                 ; 160a: ce 54 0e    .T.
    bne consider_enemy_slot                                           ; 160d: d0 a2       ..
    clc                                                               ; 160f: 18          .
    rts                                                               ; 1610: 60          `

plot_enemy_torpedo
    ldy #2                                                            ; 1611: a0 02       ..
    lda (temp0_low),y                                                 ; 1613: b1 80       ..
    sta x_pixels                                                      ; 1615: 85 7a       .z
    ldy #4                                                            ; 1617: a0 04       ..
    lda (temp0_low),y                                                 ; 1619: b1 80       ..
    sta y_pixels                                                      ; 161b: 85 7b       .{
    jsr eor_pixel                                                     ; 161d: 20 64 0f     d.
enemy_torpedo_type_instruction
    rts                                                               ; 1620: 60          `

unused13
    !byte $e6, $7a, $20, $64, $0f, $e6, $7b, $20, $64, $0f, $c6, $7a  ; 1621: e6 7a 20... .z
    !byte $20, $64, $0f, $60                                          ; 162d: 20 64 0f...  d.

apply_velocity_to_enemy_ships
    lda maximum_number_of_enemy_ships                                 ; 1631: ad 4f 0e    .O.
    sta enemy_ships_still_to_consider                                 ; 1634: 8d 54 0e    .T.
    ldx #0                                                            ; 1637: a2 00       ..
apply_velocity_to_enemy_ships_loop
    jsr apply_starship_rotation_and_velocity_to_enemy_ships           ; 1639: 20 fb 10     ..
    lda enemy_ships_previous_angle,x                                  ; 163c: bd 07 04    ...
    clc                                                               ; 163f: 18          .
    adc starship_angle_delta                                          ; 1640: 6d 33 0e    m3.
    sta enemy_ships_angle,x                                           ; 1643: 9d 87 04    ...
    lda enemy_ships_velocity,x                                        ; 1646: bd 08 04    ...
    sta temp7                                                         ; 1649: 85 88       ..
    beq skip_subtraction_cosine                                       ; 164b: f0 7f       ..
    lda enemy_ships_previous_angle,x                                  ; 164d: bd 07 04    ...
    lsr                                                               ; 1650: 4a          J
    lsr                                                               ; 1651: 4a          J
    lsr                                                               ; 1652: 4a          J
    tay                                                               ; 1653: a8          .
    lda sine_table,y                                                  ; 1654: b9 58 0e    .X.
    sta temp3                                                         ; 1657: 85 84       ..
    lda cosine_table,y                                                ; 1659: b9 78 0e    .x.
    sta temp4                                                         ; 165c: 85 85       ..
    ldy #5                                                            ; 165e: a0 05       ..
    lda #0                                                            ; 1660: a9 00       ..
    sta temp8                                                         ; 1662: 85 75       .u
loop_over_bits_of_sine
    lsr temp3                                                         ; 1664: 46 84       F.
    bcc sine_bit_unset                                                ; 1666: 90 03       ..
    clc                                                               ; 1668: 18          .
    adc temp7                                                         ; 1669: 65 88       e.
sine_bit_unset
    ror                                                               ; 166b: 6a          j
    ror temp8                                                         ; 166c: 66 75       fu
    dey                                                               ; 166e: 88          .
    bne loop_over_bits_of_sine                                        ; 166f: d0 f3       ..
    tay                                                               ; 1671: a8          .
    lda enemy_ships_x_fraction,x                                      ; 1672: bd 81 04    ...
    adc temp8                                                         ; 1675: 65 75       eu
    sta enemy_ships_x_fraction,x                                      ; 1677: 9d 81 04    ...
    tya                                                               ; 167a: 98          .
    adc enemy_ships_x_pixels,x                                        ; 167b: 7d 82 04    }..
    sta enemy_ships_x_pixels,x                                        ; 167e: 9d 82 04    ...
    bcc skip9                                                         ; 1681: 90 03       ..
    inc enemy_ships_x_screens,x                                       ; 1683: fe 83 04    ...
skip9
    ldy temp3                                                         ; 1686: a4 84       ..
    beq skip_subtraction_sine                                         ; 1688: f0 0b       ..
    sec                                                               ; 168a: 38          8
    sbc temp7                                                         ; 168b: e5 88       ..
    sta enemy_ships_x_pixels,x                                        ; 168d: 9d 82 04    ...
    bcs skip_subtraction_sine                                         ; 1690: b0 03       ..
    dec enemy_ships_x_screens,x                                       ; 1692: de 83 04    ...
skip_subtraction_sine
    ldy #5                                                            ; 1695: a0 05       ..
    lda #0                                                            ; 1697: a9 00       ..
    sta temp8                                                         ; 1699: 85 75       .u
loop_over_bits_of_cosine
    lsr temp4                                                         ; 169b: 46 85       F.
    bcc cosine_bit_unset                                              ; 169d: 90 03       ..
    clc                                                               ; 169f: 18          .
    adc temp7                                                         ; 16a0: 65 88       e.
cosine_bit_unset
    ror                                                               ; 16a2: 6a          j
    ror temp8                                                         ; 16a3: 66 75       fu
    dey                                                               ; 16a5: 88          .
    bne loop_over_bits_of_cosine                                      ; 16a6: d0 f3       ..
    tay                                                               ; 16a8: a8          .
    lda enemy_ships_x_fraction1,x                                     ; 16a9: bd 84 04    ...
    adc temp8                                                         ; 16ac: 65 75       eu
    sta enemy_ships_x_fraction1,x                                     ; 16ae: 9d 84 04    ...
    tya                                                               ; 16b1: 98          .
    adc enemy_ships_x_pixels1,x                                       ; 16b2: 7d 85 04    }..
    sta enemy_ships_x_pixels1,x                                       ; 16b5: 9d 85 04    ...
    bcc skip10                                                        ; 16b8: 90 03       ..
    inc enemy_ships_x_screens1,x                                      ; 16ba: fe 86 04    ...
skip10
    ldy temp4                                                         ; 16bd: a4 85       ..
    beq skip_subtraction_cosine                                       ; 16bf: f0 0b       ..
    sec                                                               ; 16c1: 38          8
    sbc temp7                                                         ; 16c2: e5 88       ..
    sta enemy_ships_x_pixels1,x                                       ; 16c4: 9d 85 04    ...
    bcs skip_subtraction_cosine                                       ; 16c7: b0 03       ..
    dec enemy_ships_x_screens1,x                                      ; 16c9: de 86 04    ...
skip_subtraction_cosine
mark_enemy_ship_as_plotted_if_on_starship_screen
    lda #$7f                                                          ; 16cc: a9 7f       ..
    cmp enemy_ships_x_screens,x                                       ; 16ce: dd 83 04    ...
    bne enemy_ship_not_on_starship_screen                             ; 16d1: d0 09       ..
    cmp enemy_ships_x_screens1,x                                      ; 16d3: dd 86 04    ...
    bne enemy_ship_not_on_starship_screen                             ; 16d6: d0 04       ..
    lda #0                                                            ; 16d8: a9 00       ..
    beq set_enemy_ships_on_screen                                     ; 16da: f0 02       ..             ; ALWAYS branch

enemy_ship_not_on_starship_screen
    lda #1                                                            ; 16dc: a9 01       ..
set_enemy_ships_on_screen
    sta enemy_ships_on_screen,x                                       ; 16de: 9d 80 04    ...
    txa                                                               ; 16e1: 8a          .
    clc                                                               ; 16e2: 18          .
    adc #$0b                                                          ; 16e3: 69 0b       i.
    tax                                                               ; 16e5: aa          .
    dec enemy_ships_still_to_consider                                 ; 16e6: ce 54 0e    .T.
    beq return7                                                       ; 16e9: f0 03       ..
    jmp apply_velocity_to_enemy_ships_loop                            ; 16eb: 4c 39 16    L9.

return7
    rts                                                               ; 16ee: 60          `

unused14
    !byte $ea, $ea, $ea                                               ; 16ef: ea ea ea    ...

plot_enemy_ships
    lda maximum_number_of_enemy_ships                                 ; 16f2: ad 4f 0e    .O.
    sta enemy_ships_still_to_consider                                 ; 16f5: 8d 54 0e    .T.
    ldx #0                                                            ; 16f8: a2 00       ..
plot_enemy_ships_loop
    lda enemy_ships_previous_on_screen,x                              ; 16fa: bd 00 04    ...
    sta enemy_ship_was_previously_on_screen                           ; 16fd: 8d 2e 0e    ...
    lda enemy_ships_energy,x                                          ; 1700: bd 89 04    ...
    bne explosion_continuing                                          ; 1703: d0 24       .$
    ldy enemy_ships_still_to_consider                                 ; 1705: ac 54 0e    .T.
    lda unused24,y                                                    ; 1708: b9 e1 1c    ...
    tay                                                               ; 170b: a8          .
    lda enemy_explosion_address_low_table - 1,y                       ; 170c: b9 f6 1c    ...
    sta temp5                                                         ; 170f: 85 86       ..
    lda unused26,y                                                    ; 1711: b9 07 1d    ...
    sta temp6                                                         ; 1714: 85 87       ..
    lda enemy_ship_was_previously_on_screen                           ; 1716: ad 2e 0e    ...
    bne not_previously_on_screen                                      ; 1719: d0 06       ..
    dec enemy_ship_was_previously_on_screen                           ; 171b: ce 2e 0e    ...
    jsr update_enemy_explosion_pieces                                 ; 171e: 20 b4 1f     ..
not_previously_on_screen
    dec enemy_ships_flags_or_explosion_timer,x                        ; 1721: de 09 04    ...
    bne explosion_continuing                                          ; 1724: d0 03       ..
    jsr initialise_enemy_ship                                         ; 1726: 20 d2 33     .3
explosion_continuing
    lda enemy_ships_on_screen,x                                       ; 1729: bd 80 04    ...
    sta enemy_ship_was_on_screen                                      ; 172c: 8d 2f 0e    ./.
    bne not_on_screen                                                 ; 172f: d0 0a       ..
    lda enemy_ships_energy,x                                          ; 1731: bd 89 04    ...
    bne skip_extra_delay                                              ; 1734: d0 08       ..
    dec enemy_ship_was_on_screen                                      ; 1736: ce 2f 0e    ./.
    bne skip_extra_delay                                              ; 1739: d0 03       ..
not_on_screen
    inc number_of_delay_loops                                         ; 173b: ee 2d 0e    .-.
skip_extra_delay
    lda enemy_ship_was_previously_on_screen                           ; 173e: ad 2e 0e    ...
    beq unplot_enemy_ship                                             ; 1741: f0 08       ..
    bmi skip_plotting                                                 ; 1743: 30 09       0.
    inc number_of_delay_loops                                         ; 1745: ee 2d 0e    .-.
    jmp skip_plotting                                                 ; 1748: 4c 4e 17    LN.

unplot_enemy_ship
    jsr plot_enemy_ship                                               ; 174b: 20 fc 1b     ..
skip_plotting
    lda enemy_ships_angle,x                                           ; 174e: bd 87 04    ...
    sta enemy_ships_previous_angle,x                                  ; 1751: 9d 07 04    ...
    lda enemy_ships_x_pixels1,x                                       ; 1754: bd 85 04    ...
    sta enemy_ships_previous_x_pixels1,x                              ; 1757: 9d 05 04    ...
    lda enemy_ships_x_pixels,x                                        ; 175a: bd 82 04    ...
    sta enemy_ships_previous_x_pixels,x                               ; 175d: 9d 02 04    ...
    lda enemy_ship_was_on_screen                                      ; 1760: ad 2f 0e    ./.
    beq plot_enemy_ship_and_copy_position                             ; 1763: f0 08       ..
    bpl copy_position_without_plotting                                ; 1765: 10 09       ..
    jsr plot_enemy_ship_explosion                                     ; 1767: 20 0c 20     .
    jmp copy_position_without_plotting                                ; 176a: 4c 70 17    Lp.

plot_enemy_ship_and_copy_position
    jsr plot_enemy_ship                                               ; 176d: 20 fc 1b     ..
copy_position_without_plotting
    lda enemy_ships_on_screen,x                                       ; 1770: bd 80 04    ...
    sta enemy_ships_previous_on_screen,x                              ; 1773: 9d 00 04    ...
    lda enemy_ships_x_screens1,x                                      ; 1776: bd 86 04    ...
    sta enemy_ships_previous_x_screens1,x                             ; 1779: 9d 06 04    ...
    lda enemy_ships_x_fraction1,x                                     ; 177c: bd 84 04    ...
    sta enemy_ships_previous_x_fraction1,x                            ; 177f: 9d 04 04    ...
    lda enemy_ships_x_screens,x                                       ; 1782: bd 83 04    ...
    sta enemy_ships_previous_x_screens,x                              ; 1785: 9d 03 04    ...
    lda enemy_ships_x_fraction,x                                      ; 1788: bd 81 04    ...
    sta enemy_ships_previous_x_fraction,x                             ; 178b: 9d 01 04    ...
    txa                                                               ; 178e: 8a          .
    clc                                                               ; 178f: 18          .
    adc #$0b                                                          ; 1790: 69 0b       i.
    tax                                                               ; 1792: aa          .
    dec enemy_ships_still_to_consider                                 ; 1793: ce 54 0e    .T.
    beq return8                                                       ; 1796: f0 03       ..
    jmp plot_enemy_ships_loop                                         ; 1798: 4c fa 16    L..

return8
    rts                                                               ; 179b: 60          `

delay_loop
    ldx #2                                                            ; 179c: a2 02       ..
delay_loop_outer_loop
    ldy #$7f                                                          ; 179e: a0 7f       ..
delay_loop_inner_loop
    dey                                                               ; 17a0: 88          .
    bne delay_loop_inner_loop                                         ; 17a1: d0 fd       ..
    dex                                                               ; 17a3: ca          .
    bne delay_loop_outer_loop                                         ; 17a4: d0 f8       ..
    rts                                                               ; 17a6: 60          `

unused15
    !byte $ea, $ea, $ea                                               ; 17a7: ea ea ea    ...
    !text "#128:STA"                                                  ; 17aa: 23 31 32... #12
shield_state_strings
    !byte $1f, $22, $18                                               ; 17b2: 1f 22 18    .".
    !text " ON "                                                      ; 17b5: 20 4f 4e...  ON
    !byte $1f, $22, $18                                               ; 17b9: 1f 22 18    .".
    !text " OFF"                                                      ; 17bc: 20 4f 46...  OF
    !byte $1f, $22, $18                                               ; 17c0: 1f 22 18    .".
    !text "AUTO"                                                      ; 17c3: 41 55 54... AUT
unused16
    !byte $1f, $20, $18                                               ; 17c7: 1f 20 18    . .
    !text "Sh:~"                                                      ; 17ca: 53 68 3a... Sh:
    !byte $0d, $44, $59                                               ; 17ce: 0d 44 59    .DY
enemy_ships_collided_with_each_other
    !byte 0                                                           ; 17d1: 00          .
unused17
    !byte 0, 0, 0, 0, 0, 0                                            ; 17d2: 00 00 00... ...

check_for_starship_collision_with_enemy_ships
    lda maximum_number_of_enemy_ships                                 ; 17d8: ad 4f 0e    .O.
    sta enemy_ships_still_to_consider                                 ; 17db: 8d 54 0e    .T.
    lda #0                                                            ; 17de: a9 00       ..
    sta temp0_low                                                     ; 17e0: 85 80       ..
check_for_starship_collision_with_enemy_ships_loop
    ldx temp0_low                                                     ; 17e2: a6 80       ..
    lda enemy_ships_on_screen,x                                       ; 17e4: bd 80 04    ...
    bne to_consider_next_enemy_ship                                   ; 17e7: d0 0d       ..
    lda enemy_ships_energy,x                                          ; 17e9: bd 89 04    ...
    bne check_for_collision                                           ; 17ec: d0 0b       ..
    lda enemy_ships_flags_or_explosion_timer,x                        ; 17ee: bd 09 04    ...
    cmp frame_of_enemy_ship_explosion_after_which_no_collisions       ; 17f1: cd 37 0e    .7.
    bcs check_for_collision                                           ; 17f4: b0 03       ..
to_consider_next_enemy_ship
    jmp consider_next_enemy_ship                                      ; 17f6: 4c d4 18    L..

check_for_collision
    lda starship_has_exploded                                         ; 17f9: ad c9 1c    ...
    beq starship_not_exploded                                         ; 17fc: f0 08       ..
    lda starship_explosion_countdown                                  ; 17fe: ad ce 1c    ...
    cmp frame_of_starship_explosion_after_which_no_collisions         ; 1801: cd df 25    ..%
    bcc no_collision                                                  ; 1804: 90 3e       .>
starship_not_exploded
    lda enemy_ships_x_pixels,x                                        ; 1806: bd 82 04    ...
    cmp starship_maximum_x_for_collisions_with_enemy_ships            ; 1809: cd d9 25    ..%
    bcs no_collision                                                  ; 180c: b0 36       .6
    cmp starship_minimum_x_for_collisions_with_enemy_ships            ; 180e: cd da 25    ..%
    bcc no_collision                                                  ; 1811: 90 31       .1
    lda enemy_ships_x_pixels1,x                                       ; 1813: bd 85 04    ...
    cmp starship_maximum_y_for_collisions_with_enemy_ships            ; 1816: cd db 25    ..%
    bcs no_collision                                                  ; 1819: b0 29       .)
    cmp starship_minimum_y_for_collisions_with_enemy_ships            ; 181b: cd dc 25    ..%
    bcc no_collision                                                  ; 181e: 90 24       .$
    lda enemy_ships_energy,x                                          ; 1820: bd 89 04    ...
    beq incur_damage_from_passing_through_explosion                   ; 1823: f0 18       ..
    pha                                                               ; 1825: 48          H
    inc starship_collided_with_enemy_ship                             ; 1826: ee de 25    ..%
    lda #0                                                            ; 1829: a9 00       ..
    sta enemy_ships_energy,x                                          ; 182b: 9d 89 04    ...
    jsr explode_enemy_ship                                            ; 182e: 20 5d 1f     ].
    pla                                                               ; 1831: 68          h
    lsr                                                               ; 1832: 4a          J
    clc                                                               ; 1833: 18          .
    adc additional_damage_from_collision_with_enemy_ship              ; 1834: 6d 30 0e    m0.
    bcc incur_damage_from_collision                                   ; 1837: 90 08       ..
    lda #$ff                                                          ; 1839: a9 ff       ..
    bne incur_damage_from_collision                                   ; 183b: d0 04       ..             ; ALWAYS branch

incur_damage_from_passing_through_explosion
    lda enemy_ships_flags_or_explosion_timer,x                        ; 183d: bd 09 04    ...
    lsr                                                               ; 1840: 4a          J
incur_damage_from_collision
    jsr incur_damage                                                  ; 1841: 20 a3 1a     ..
no_collision
    stx temp1_low                                                     ; 1844: 86 82       ..
    ldx enemy_ships_still_to_consider                                 ; 1846: ae 54 0e    .T.
    dex                                                               ; 1849: ca          .
    stx torpedoes_still_to_consider                                   ; 184a: 8e 55 0e    .U.
    bne check_for_collisions_between_enemy_ships                      ; 184d: d0 01       ..
    rts                                                               ; 184f: 60          `

check_for_collisions_between_enemy_ships
    lda temp1_low                                                     ; 1850: a5 82       ..
    clc                                                               ; 1852: 18          .
    adc #$0b                                                          ; 1853: 69 0b       i.
    sta temp1_low                                                     ; 1855: 85 82       ..
    tax                                                               ; 1857: aa          .
    lda enemy_ships_on_screen,x                                       ; 1858: bd 80 04    ...
    bne consider_next_second_enemy_ship                               ; 185b: d0 6f       .o
    ldy temp0_low                                                     ; 185d: a4 80       ..
    lda enemy_ships_x_pixels,x                                        ; 185f: bd 82 04    ...
    sec                                                               ; 1862: 38          8
    sbc enemy_ships_x_pixels,y                                        ; 1863: f9 82 04    ...
    bcs skip_inversion_x2                                             ; 1866: b0 02       ..
    eor #$ff                                                          ; 1868: 49 ff       I.
skip_inversion_x2
    cmp size_of_enemy_ship_for_collisions_between_enemy_ships         ; 186a: cd 3b 0e    .;.
    bcs consider_next_second_enemy_ship                               ; 186d: b0 5d       .]
    sta enemy_ships_collision_x_difference                            ; 186f: 8d e0 25    ..%
    lda enemy_ships_x_pixels1,x                                       ; 1872: bd 85 04    ...
    sec                                                               ; 1875: 38          8
    sbc enemy_ships_x_pixels1,y                                       ; 1876: f9 85 04    ...
    bcs skip_inversion_y2                                             ; 1879: b0 02       ..
    eor #$ff                                                          ; 187b: 49 ff       I.
skip_inversion_y2
    cmp size_of_enemy_ship_for_collisions_between_enemy_ships         ; 187d: cd 3b 0e    .;.
    bcs consider_next_second_enemy_ship                               ; 1880: b0 4a       .J
    sta enemy_ships_collision_y_difference                            ; 1882: 8d e1 25    ..%
    lda enemy_ships_energy,x                                          ; 1885: bd 89 04    ...
    bne second_ship_not_exploding                                     ; 1888: d0 0a       ..
    lda enemy_ships_flags_or_explosion_timer,x                        ; 188a: bd 09 04    ...
    cmp frame_of_enemy_ship_explosion_after_which_no_collisions       ; 188d: cd 37 0e    .7.
    bcs to_collide_enemy_ships                                        ; 1890: b0 37       .7
    bcc consider_next_second_enemy_ship                               ; 1892: 90 38       .8             ; ALWAYS branch

second_ship_not_exploding
    inc enemy_ships_collided_with_each_other                          ; 1894: ee d1 17    ...
    sec                                                               ; 1897: 38          8
    sbc damage_enemy_ship_incurs_from_collision_with_other_enemy_ship ; 1898: ed 31 0e    .1.
    bcs skip11                                                        ; 189b: b0 02       ..
    lda #0                                                            ; 189d: a9 00       ..
skip11
    sta enemy_ships_energy,x                                          ; 189f: 9d 89 04    ...
    bne enemy_ship_isnt_destroyed_by_collision                        ; 18a2: d0 14       ..
    lda enemy_ships_still_to_consider                                 ; 18a4: ad 54 0e    .T.
    pha                                                               ; 18a7: 48          H
    lda torpedoes_still_to_consider                                   ; 18a8: ad 55 0e    .U.
    sta enemy_ships_still_to_consider                                 ; 18ab: 8d 54 0e    .T.
    jsr explode_enemy_ship                                            ; 18ae: 20 5d 1f     ].
    pla                                                               ; 18b1: 68          h
    sta enemy_ships_still_to_consider                                 ; 18b2: 8d 54 0e    .T.
    inc enemy_ship_was_hit_by_collision_with_other_enemy_ship         ; 18b5: ee dd 25    ..%
enemy_ship_isnt_destroyed_by_collision
    lda enemy_ships_type,x                                            ; 18b8: bd 0a 04    ...
    cmp #4                                                            ; 18bb: c9 04       ..
    bcc to_collide_enemy_ships                                        ; 18bd: 90 0a       ..
    and #3                                                            ; 18bf: 29 03       ).
    sta enemy_ships_type,x                                            ; 18c1: 9d 0a 04    ...
    lda #1                                                            ; 18c4: a9 01       ..
    sta enemy_ships_previous_on_screen,x                              ; 18c6: 9d 00 04    ...
to_collide_enemy_ships
    jmp collide_enemy_ships                                           ; 18c9: 4c e0 27    L.'

consider_next_second_enemy_ship
    dec torpedoes_still_to_consider                                   ; 18cc: ce 55 0e    .U.
    beq consider_next_enemy_ship                                      ; 18cf: f0 03       ..
    jmp check_for_collisions_between_enemy_ships                      ; 18d1: 4c 50 18    LP.

consider_next_enemy_ship
    lda temp0_low                                                     ; 18d4: a5 80       ..
    clc                                                               ; 18d6: 18          .
    adc #$0b                                                          ; 18d7: 69 0b       i.
    sta temp0_low                                                     ; 18d9: 85 80       ..
    dec enemy_ships_still_to_consider                                 ; 18db: ce 54 0e    .T.
    beq return9                                                       ; 18de: f0 03       ..
    jmp check_for_starship_collision_with_enemy_ships_loop            ; 18e0: 4c e2 17    L..

return9
    rts                                                               ; 18e3: 60          `

plot_segment
    jsr eor_pixel_within_box_around_origin                            ; 18e4: 20 4a 0f     J.
    ldy segment_angle                                                 ; 18e7: a4 78       .x
    lda segment_angle_to_x_y_deltas_table,y                           ; 18e9: b9 98 0e    ...
consider_change_to_x
    lsr                                                               ; 18ec: 4a          J
    bcc bit_1_unset                                                   ; 18ed: 90 07       ..
    lsr                                                               ; 18ef: 4a          J
    bcs bit_2_set                                                     ; 18f0: b0 07       ..
    dec x_pixels                                                      ; 18f2: c6 7a       .z
    bcc consider_change_to_y                                          ; 18f4: 90 05       ..             ; ALWAYS branch

bit_1_unset
    lsr                                                               ; 18f6: 4a          J
    bcc consider_change_to_y                                          ; 18f7: 90 02       ..
bit_2_set
    inc x_pixels                                                      ; 18f9: e6 7a       .z
consider_change_to_y
    lsr                                                               ; 18fb: 4a          J
    bcc bit_3_unset                                                   ; 18fc: 90 07       ..
    lsr                                                               ; 18fe: 4a          J
    bcs bit_4_set                                                     ; 18ff: b0 07       ..
    dec y_pixels                                                      ; 1901: c6 7b       .{
    bcc make_changes                                                  ; 1903: 90 05       ..             ; ALWAYS branch

bit_3_unset
    lsr                                                               ; 1905: 4a          J
    bcc make_changes                                                  ; 1906: 90 02       ..
bit_4_set
    inc y_pixels                                                      ; 1908: e6 7b       .{
make_changes
    lda segment_angle                                                 ; 190a: a5 78       .x
    clc                                                               ; 190c: 18          .
    adc output_pixels                                                 ; 190d: 65 72       er
    and #$1f                                                          ; 190f: 29 1f       ).
    sta segment_angle                                                 ; 1911: 85 78       .x
    dec segment_length                                                ; 1913: c6 74       .t
    bne plot_segment                                                  ; 1915: d0 cd       ..
    rts                                                               ; 1917: 60          `

starship_torpedo_cooldown
    !byte 0                                                           ; 1918: 00          .
starship_torpedo_cooldown_after_firing
    !byte 1                                                           ; 1919: 01          .
fire_pressed
    !byte 0                                                           ; 191a: 00          .
unused18
    !byte 0                                                           ; 191b: 00          .
starship_energy_low
    !byte 0                                                           ; 191c: 00          .
starship_energy_high
starship_energy_high1
    !byte 0                                                           ; 191d: 00          .
damage_high
    !byte 0                                                           ; 191e: 00          .
damage_low
damage_low1
    !byte 0                                                           ; 191f: 00          .
starship_destroyed
    !byte 0                                                           ; 1920: 00          .
minimum_energy_value_to_avoid_starship_destruction
    !byte 4                                                           ; 1921: 04          .
starship_energy_divided_by_sixteen
    !byte 0                                                           ; 1922: 00          .
starship_energy_regeneration
    !byte 0                                                           ; 1923: 00          .
starship_automatic_shields
    !byte 0                                                           ; 1924: 00          .
value_of_x_when_incur_damage_called
    !byte 0                                                           ; 1925: 00          .
shields_state_delta
    !byte 0                                                           ; 1926: 00          .
rotation_delta
    !byte 0                                                           ; 1927: 00          .
starship_rotation_fraction
    !byte 0                                                           ; 1928: 00          .
strength_of_player_rotation
    !byte $f0                                                         ; 1929: f0          .
strength_of_rotation_dampers
    !byte $40                                                         ; 192a: 40          @
starship_energy_drain_from_acceleration
    !byte 4                                                           ; 192b: 04          .
rotation_damper
    !byte 0                                                           ; 192c: 00          .
starship_energy_drain_from_non_zero_rotation
    !byte 4                                                           ; 192d: 04          .
velocity_delta
    !byte 0                                                           ; 192e: 00          .
starship_acceleration_from_player
    !byte $40                                                         ; 192f: 40          @
starship_acceleration_from_velocity_damper
    !byte $20                                                         ; 1930: 20
velocity_damper
    !byte 0                                                           ; 1931: 00          .
maximum_starship_velocity
    !byte 4                                                           ; 1932: 04          .
enemy_ship_x_plus_half_sine
    !byte 0                                                           ; 1933: 00          .
enemy_ship_y_plus_half_cosine
    !byte 0                                                           ; 1934: 00          .
enemy_ship_type
    !byte 0                                                           ; 1935: 00          .
starship_torpedo_counter
    !byte 0                                                           ; 1936: 00          .
starship_torpedoes_per_round
    !byte 4                                                           ; 1937: 04          .
starship_torpedo_cooldown_after_round
    !byte 2                                                           ; 1938: 02          .
starship_energy_drain_from_firing_torpedo
    !byte 4                                                           ; 1939: 04          .
previous_starship_automatic_shields
    !byte 0                                                           ; 193a: 00          .
unused19
    !byte $ea, $ea, $ea, $ea                                          ; 193b: ea ea ea... ...

handle_player_movement
    lda #0                                                            ; 193f: a9 00       ..
    sta rotation_delta                                                ; 1941: 8d 27 19    .'.
    sta velocity_delta                                                ; 1944: 8d 2e 19    ...
    sta fire_pressed                                                  ; 1947: 8d 1a 19    ...
    sta shields_state_delta                                           ; 194a: 8d 26 19    .&.
    ldx starship_torpedo_cooldown                                     ; 194d: ae 18 19    ...
    beq reset_starship_torpedo_round                                  ; 1950: f0 06       ..
    dec starship_torpedo_cooldown                                     ; 1952: ce 18 19    ...
    jmp skip_reset_starship_torpedo_round                             ; 1955: 4c 5e 19    L^.

reset_starship_torpedo_round
    lda starship_torpedoes_per_round                                  ; 1958: ad 37 19    .7.
    sta starship_torpedo_counter                                      ; 195b: 8d 36 19    .6.
skip_reset_starship_torpedo_round
    jsr check_for_keypresses                                          ; 195e: 20 4b 23     K#
    lda starship_destroyed                                            ; 1961: ad 20 19    . .
    beq starship_isnt_destroyed                                       ; 1964: f0 03       ..
    jmp player_isnt_firing                                            ; 1966: 4c 70 1a    Lp.

starship_isnt_destroyed
    lda velocity_delta                                                ; 1969: ad 2e 19    ...
    bne player_is_accelerating                                        ; 196c: d0 0b       ..
    lda velocity_damper                                               ; 196e: ad 31 19    .1.
    beq finished_accelerating                                         ; 1971: f0 53       .S
    lda starship_acceleration_from_velocity_damper                    ; 1973: ad 30 19    .0.
    jmp set_deceleration                                              ; 1976: 4c a4 19    L..

player_is_accelerating
    bmi starship_is_decelerating                                      ; 1979: 30 26       0&
    lda starship_acceleration_from_player                             ; 197b: ad 2f 19    ./.
    sta temp8                                                         ; 197e: 85 75       .u
    clc                                                               ; 1980: 18          .
    adc starship_velocity_low                                         ; 1981: 6d 01 0f    m..
    sta starship_velocity_low                                         ; 1984: 8d 01 0f    ...
    bcc skip12                                                        ; 1987: 90 03       ..
    inc starship_velocity_high                                        ; 1989: ee 00 0f    ...
skip12
    lda starship_velocity_high                                        ; 198c: ad 00 0f    ...
    cmp maximum_starship_velocity                                     ; 198f: cd 32 19    .2.
    bcc incur_damage_from_acceleration                                ; 1992: 90 2c       .,
    lda maximum_starship_velocity                                     ; 1994: ad 32 19    .2.
    sta starship_velocity_high                                        ; 1997: 8d 00 0f    ...
    lda #0                                                            ; 199a: a9 00       ..
    sta starship_velocity_low                                         ; 199c: 8d 01 0f    ...
    beq finished_accelerating                                         ; 199f: f0 25       .%             ; ALWAYS branch

starship_is_decelerating
    lda starship_acceleration_from_player                             ; 19a1: ad 2f 19    ./.
set_deceleration
    sta temp8                                                         ; 19a4: 85 75       .u
    lda starship_velocity_low                                         ; 19a6: ad 01 0f    ...
    sec                                                               ; 19a9: 38          8
    sbc temp8                                                         ; 19aa: e5 75       .u
    sta starship_velocity_low                                         ; 19ac: 8d 01 0f    ...
    bcs incur_damage_from_acceleration                                ; 19af: b0 0f       ..
    dec starship_velocity_high                                        ; 19b1: ce 00 0f    ...
    bpl incur_damage_from_acceleration                                ; 19b4: 10 0a       ..
    lda #0                                                            ; 19b6: a9 00       ..
    sta starship_velocity_low                                         ; 19b8: 8d 01 0f    ...
    sta starship_velocity_high                                        ; 19bb: 8d 00 0f    ...
    beq finished_accelerating                                         ; 19be: f0 06       ..             ; ALWAYS branch

incur_damage_from_acceleration
    lda starship_energy_drain_from_acceleration                       ; 19c0: ad 2b 19    .+.
    jsr incur_low_damage                                              ; 19c3: 20 ba 1a     ..
finished_accelerating
    lda starship_rotation_fraction                                    ; 19c6: ad 28 19    .(.
    ldy rotation_delta                                                ; 19c9: ac 27 19    .'.
    bne player_is_turning                                             ; 19cc: d0 1b       ..
    ldy rotation_damper                                               ; 19ce: ac 2c 19    .,.
    beq finished_rotating                                             ; 19d1: f0 6e       .n
    ldx starship_rotation                                             ; 19d3: ae 02 0f    ...
    bpl starship_was_turned_clockwise                                 ; 19d6: 10 0a       ..
    dex                                                               ; 19d8: ca          .
    bpl finished_rotating                                             ; 19d9: 10 66       .f
    sec                                                               ; 19db: 38          8
    sbc strength_of_rotation_dampers                                  ; 19dc: ed 2a 19    .*.
    jmp store_rotation                                                ; 19df: 4c ef 19    L..

starship_was_turned_clockwise
    clc                                                               ; 19e2: 18          .
    adc strength_of_rotation_dampers                                  ; 19e3: 6d 2a 19    m*.
    jmp set_starship_rotation_fraction_and_consider_rotating          ; 19e6: 4c 03 1a    L..

player_is_turning
    bpl player_is_turning_clockwise                                   ; 19e9: 10 14       ..
    sec                                                               ; 19eb: 38          8
    sbc strength_of_player_rotation                                   ; 19ec: ed 29 19    .).
store_rotation
    sta starship_rotation_fraction                                    ; 19ef: 8d 28 19    .(.
    bcs incur_energy_drain_from_rotation                              ; 19f2: b0 47       .G
    lda #$7b                                                          ; 19f4: a9 7b       .{
    cmp starship_rotation                                             ; 19f6: cd 02 0f    ...
    bne rotate_starship_anticlockwise                                 ; 19f9: d0 21       .!
    lda #0                                                            ; 19fb: a9 00       ..
    beq set_starship_rotation_fraction                                ; 19fd: f0 12       ..             ; ALWAYS branch

player_is_turning_clockwise
    clc                                                               ; 19ff: 18          .
    adc strength_of_player_rotation                                   ; 1a00: 6d 29 19    m).
set_starship_rotation_fraction_and_consider_rotating
    sta starship_rotation_fraction                                    ; 1a03: 8d 28 19    .(.
    bcc incur_energy_drain_from_rotation                              ; 1a06: 90 33       .3
    lda #$85                                                          ; 1a08: a9 85       ..
    cmp starship_rotation                                             ; 1a0a: cd 02 0f    ...
    bne rotate_starship_clockwise                                     ; 1a0d: d0 08       ..
    lda #$ff                                                          ; 1a0f: a9 ff       ..
set_starship_rotation_fraction
    sta starship_rotation_fraction                                    ; 1a11: 8d 28 19    .(.
    jmp finished_rotating                                             ; 1a14: 4c 41 1a    LA.

rotate_starship_clockwise
    inc starship_rotation                                             ; 1a17: ee 02 0f    ...
    bne continue                                                      ; 1a1a: d0 03       ..
rotate_starship_anticlockwise
    dec starship_rotation                                             ; 1a1c: ce 02 0f    ...
continue
    clc                                                               ; 1a1f: 18          .
    lda starship_rotation                                             ; 1a20: ad 02 0f    ...
    bmi skip_inversion3                                               ; 1a23: 30 04       0.
    eor #$ff                                                          ; 1a25: 49 ff       I.
    adc #1                                                            ; 1a27: 69 01       i.
skip_inversion3
    adc #$80                                                          ; 1a29: 69 80       i.
    tay                                                               ; 1a2b: a8          .
    sta starship_rotation_magnitude                                   ; 1a2c: 8d 03 0f    ...
    lda starship_rotation_sine_table,y                                ; 1a2f: b9 c4 0e    ...
    sta starship_rotation_sine_magnitude                              ; 1a32: 8d 05 0f    ...
    lda starship_rotation_cosine_table,y                              ; 1a35: b9 be 0e    ...
    sta starship_rotation_cosine                                      ; 1a38: 8d 04 0f    ...
incur_energy_drain_from_rotation
    lda starship_energy_drain_from_non_zero_rotation                  ; 1a3b: ad 2d 19    .-.
    jsr incur_low_damage                                              ; 1a3e: 20 ba 1a     ..
finished_rotating
    lda fire_pressed                                                  ; 1a41: ad 1a 19    ...
    beq player_isnt_firing                                            ; 1a44: f0 2a       .*
    lda starship_torpedo_cooldown                                     ; 1a46: ad 18 19    ...
    bne player_isnt_firing                                            ; 1a49: d0 25       .%
    dec starship_torpedo_counter                                      ; 1a4b: ce 36 19    .6.
    bne not_end_of_round                                              ; 1a4e: d0 0c       ..
    lda starship_torpedoes_per_round                                  ; 1a50: ad 37 19    .7.
    sta starship_torpedo_counter                                      ; 1a53: 8d 36 19    .6.
    lda starship_torpedo_cooldown_after_round                         ; 1a56: ad 38 19    .8.
    jmp set_starship_torpedo_cooldown                                 ; 1a59: 4c 5f 1a    L_.

not_end_of_round
    lda starship_torpedo_cooldown_after_firing                        ; 1a5c: ad 19 19    ...
set_starship_torpedo_cooldown
    sta starship_torpedo_cooldown                                     ; 1a5f: 8d 18 19    ...
    jsr fire_starship_torpedo                                         ; 1a62: 20 f7 12     ..
    lda starship_fired_torpedo                                        ; 1a65: ad 58 26    .X&
    beq player_isnt_firing                                            ; 1a68: f0 06       ..
    lda starship_energy_drain_from_firing_torpedo                     ; 1a6a: ad 39 19    .9.
    jsr incur_low_damage                                              ; 1a6d: 20 ba 1a     ..
player_isnt_firing
    jsr plot_auto_shields_string                                      ; 1a70: 20 ae 45     .E
    lda starship_automatic_shields                                    ; 1a73: ad 24 19    .$.
    sta previous_starship_automatic_shields                           ; 1a76: 8d 3a 19    .:.
    beq skip_shield_activation                                        ; 1a79: f0 08       ..
    lda scanner_failure_duration                                      ; 1a7b: ad 59 26    .Y&
    bne skip_shield_activation                                        ; 1a7e: d0 03       ..
    jsr activate_shields_when_enemy_ship_enters_main_square           ; 1a80: 20 a1 1b     ..
skip_shield_activation
    lda shields_state_delta                                           ; 1a83: ad 26 19    .&.
    beq return10                                                      ; 1a86: f0 19       ..
    ldx #0                                                            ; 1a88: a2 00       ..
    stx starship_automatic_shields                                    ; 1a8a: 8e 24 19    .$.
    stx previous_starship_automatic_shields                           ; 1a8d: 8e 3a 19    .:.
    tay                                                               ; 1a90: a8          .
    bmi plot_shields_on_and_consider_activation                       ; 1a91: 30 08       0.
    ldx #7                                                            ; 1a93: a2 07       ..
    jsr plot_shields_string_and_something                             ; 1a95: 20 9d 45     .E
    jmp plot_top_and_right_edge_of_long_range_scanner_with_blank_text ; 1a98: 4c 2b 14    L+.

plot_shields_on_and_consider_activation
    jsr plot_shields_string_and_something                             ; 1a9b: 20 9d 45     .E
    jmp unplot_long_range_scanner_if_shields_inactive                 ; 1a9e: 4c 08 14    L..

return10
    rts                                                               ; 1aa1: 60          `

unused20
    !byte $ea                                                         ; 1aa2: ea          .

incur_damage
    stx value_of_x_when_incur_damage_called                           ; 1aa3: 8e 25 19    .%.
    ldx starship_shields_active                                       ; 1aa6: ae 56 0e    .V.
    beq shields_are_active                                            ; 1aa9: f0 0c       ..
    asl                                                               ; 1aab: 0a          .
    bcc skip13                                                        ; 1aac: 90 03       ..
    inc damage_high                                                   ; 1aae: ee 1e 19    ...
skip13
    asl                                                               ; 1ab1: 0a          .
    bcc shields_are_active                                            ; 1ab2: 90 03       ..
    inc damage_high                                                   ; 1ab4: ee 1e 19    ...
shields_are_active
    ldx value_of_x_when_incur_damage_called                           ; 1ab7: ae 25 19    .%.
incur_low_damage
    clc                                                               ; 1aba: 18          .
    adc damage_low                                                    ; 1abb: 6d 1f 19    m..
    sta damage_low                                                    ; 1abe: 8d 1f 19    ...
    bcc return11                                                      ; 1ac1: 90 03       ..
    inc damage_high                                                   ; 1ac3: ee 1e 19    ...
return11
    rts                                                               ; 1ac6: 60          `

update_various_starship_statuses_on_screen
    jsr apply_damage_to_starship_energy                               ; 1ac7: 20 d1 1a     ..
    jsr plot_starship_velocity_and_rotation_on_gauges                 ; 1aca: 20 45 2f     E/
    jmp flash_energy_when_low                                         ; 1acd: 4c f3 25    L.%

unused21
    !byte $60                                                         ; 1ad0: 60          `

apply_damage_to_starship_energy
    lda starship_energy_low                                           ; 1ad1: ad 1c 19    ...
    sec                                                               ; 1ad4: 38          8
    sbc damage_low                                                    ; 1ad5: ed 1f 19    ...
    sta starship_energy_low                                           ; 1ad8: 8d 1c 19    ...
    lda starship_energy_high                                          ; 1adb: ad 1d 19    ...
    sbc damage_high                                                   ; 1ade: ed 1e 19    ...
    sta starship_energy_high                                          ; 1ae1: 8d 1d 19    ...
    lda starship_energy_low                                           ; 1ae4: ad 1c 19    ...
    clc                                                               ; 1ae7: 18          .
    adc starship_energy_regeneration                                  ; 1ae8: 6d 23 19    m#.
    sta starship_energy_low                                           ; 1aeb: 8d 1c 19    ...
    bcc skip14                                                        ; 1aee: 90 03       ..
    inc starship_energy_high                                          ; 1af0: ee 1d 19    ...
skip14
    lda starship_energy_high                                          ; 1af3: ad 1d 19    ...
    bpl starship_still_has_energy                                     ; 1af6: 10 0d       ..
    jsr explode_starship                                              ; 1af8: 20 af 1d     ..
    lda #0                                                            ; 1afb: a9 00       ..
    sta starship_energy_low                                           ; 1afd: 8d 1c 19    ...
    sta starship_energy_high                                          ; 1b00: 8d 1d 19    ...
    beq reset_damage_counter                                          ; 1b03: f0 17       ..             ; ALWAYS branch

starship_still_has_energy
    cmp #$0c                                                          ; 1b05: c9 0c       ..
    bcc reset_damage_counter                                          ; 1b07: 90 13       ..
    bne skip15                                                        ; 1b09: d0 07       ..
    lda starship_energy_low                                           ; 1b0b: ad 1c 19    ...
    cmp #$81                                                          ; 1b0e: c9 81       ..
    bcc reset_damage_counter                                          ; 1b10: 90 0a       ..
skip15
    lda #$0c                                                          ; 1b12: a9 0c       ..
    sta starship_energy_high                                          ; 1b14: 8d 1d 19    ...
    lda #$80                                                          ; 1b17: a9 80       ..
    sta starship_energy_low                                           ; 1b19: 8d 1c 19    ...
reset_damage_counter
    lda #0                                                            ; 1b1c: a9 00       ..
    sta damage_low                                                    ; 1b1e: 8d 1f 19    ...
    sta damage_high                                                   ; 1b21: 8d 1e 19    ...
    sta starship_destroyed                                            ; 1b24: 8d 20 19    . .
    lda starship_energy_high                                          ; 1b27: ad 1d 19    ...
    sta temp3                                                         ; 1b2a: 85 84       ..
    lda starship_energy_low                                           ; 1b2c: ad 1c 19    ...
    lsr temp3                                                         ; 1b2f: 46 84       F.
    ror                                                               ; 1b31: 6a          j
    lsr temp3                                                         ; 1b32: 46 84       F.
    ror                                                               ; 1b34: 6a          j
    lsr temp3                                                         ; 1b35: 46 84       F.
    ror                                                               ; 1b37: 6a          j
    lsr temp3                                                         ; 1b38: 46 84       F.
    ror                                                               ; 1b3a: 6a          j
    cmp minimum_energy_value_to_avoid_starship_destruction            ; 1b3b: cd 21 19    .!.
    bcs skip_destruction                                              ; 1b3e: b0 03       ..
    inc starship_destroyed                                            ; 1b40: ee 20 19    . .
skip_destruction
    cmp starship_energy_divided_by_sixteen                            ; 1b43: cd 22 19    .".
    beq return12                                                      ; 1b46: f0 58       .X
plot_starship_energy_bars
    ldx starship_energy_divided_by_sixteen                            ; 1b48: ae 22 19    .".
    sta starship_energy_divided_by_sixteen                            ; 1b4b: 8d 22 19    .".
    sta output_pixels                                                 ; 1b4e: 85 72       .r
    cpx output_pixels                                                 ; 1b50: e4 72       .r
    bcs skip_swapping_start_and_end                                   ; 1b52: b0 03       ..
    stx output_pixels                                                 ; 1b54: 86 72       .r
    tax                                                               ; 1b56: aa          .
skip_swapping_start_and_end
    stx output_fraction                                               ; 1b57: 86 73       .s
    ldx #3                                                            ; 1b59: a2 03       ..
    lda output_fraction                                               ; 1b5b: a5 73       .s
calculate_pixel_position_in_bar
    cmp #$33                                                          ; 1b5d: c9 33       .3
    bcc finished_calculating_pixel_position_in_bar                    ; 1b5f: 90 06       ..
    sec                                                               ; 1b61: 38          8
    sbc #$32                                                          ; 1b62: e9 32       .2
    dex                                                               ; 1b64: ca          .
    bpl calculate_pixel_position_in_bar                               ; 1b65: 10 f6       ..
finished_calculating_pixel_position_in_bar
    clc                                                               ; 1b67: 18          .
    adc #$0c                                                          ; 1b68: 69 0c       i.
    sta x_pixels                                                      ; 1b6a: 85 7a       .z
    txa                                                               ; 1b6c: 8a          .
    asl                                                               ; 1b6d: 0a          .
    asl                                                               ; 1b6e: 0a          .
    asl                                                               ; 1b6f: 0a          .
    clc                                                               ; 1b70: 18          .
    adc #$95                                                          ; 1b71: 69 95       i.
    sta y_pixels                                                      ; 1b73: 85 7b       .{
    inc screen_start_high                                             ; 1b75: e6 79       .y
plot_energy_change_loop
    lda #5                                                            ; 1b77: a9 05       ..
    jsr plot_vertical_line                                            ; 1b79: 20 cf 1b     ..
    dec x_pixels                                                      ; 1b7c: c6 7a       .z
    lda y_pixels                                                      ; 1b7e: a5 7b       .{
    sec                                                               ; 1b80: 38          8
    sbc #5                                                            ; 1b81: e9 05       ..
    sta y_pixels                                                      ; 1b83: 85 7b       .{
    lda #$0c                                                          ; 1b85: a9 0c       ..
    cmp x_pixels                                                      ; 1b87: c5 7a       .z
    bcc skip_moving_to_next_bar                                       ; 1b89: 90 0b       ..
    lda y_pixels                                                      ; 1b8b: a5 7b       .{
    clc                                                               ; 1b8d: 18          .
    adc #8                                                            ; 1b8e: 69 08       i.
    sta y_pixels                                                      ; 1b90: 85 7b       .{
    lda #$3e                                                          ; 1b92: a9 3e       .>
    sta x_pixels                                                      ; 1b94: 85 7a       .z
skip_moving_to_next_bar
    dec output_fraction                                               ; 1b96: c6 73       .s
    lda output_fraction                                               ; 1b98: a5 73       .s
    cmp output_pixels                                                 ; 1b9a: c5 72       .r
    bne plot_energy_change_loop                                       ; 1b9c: d0 d9       ..
    dec screen_start_high                                             ; 1b9e: c6 79       .y
return12
    rts                                                               ; 1ba0: 60          `

activate_shields_when_enemy_ship_enters_main_square
    lda maximum_number_of_enemy_ships                                 ; 1ba1: ad 4f 0e    .O.
    sta enemy_ships_still_to_consider                                 ; 1ba4: 8d 54 0e    .T.
    ldx #0                                                            ; 1ba7: a2 00       ..
activate_shields_when_enemy_ship_enters_main_square_loop
    lda enemy_ships_on_screen,x                                       ; 1ba9: bd 80 04    ...
    beq enemy_ship_is_on_screen                                       ; 1bac: f0 12       ..
    txa                                                               ; 1bae: 8a          .
    clc                                                               ; 1baf: 18          .
    adc #$0b                                                          ; 1bb0: 69 0b       i.
    tax                                                               ; 1bb2: aa          .
    dec enemy_ships_still_to_consider                                 ; 1bb3: ce 54 0e    .T.
    bne activate_shields_when_enemy_ship_enters_main_square_loop      ; 1bb6: d0 f1       ..
    lda starship_shields_active                                       ; 1bb8: ad 56 0e    .V.
    bne return13                                                      ; 1bbb: d0 0b       ..
    jmp plot_top_and_right_edge_of_long_range_scanner_with_blank_text ; 1bbd: 4c 2b 14    L+.

enemy_ship_is_on_screen
    lda starship_shields_active                                       ; 1bc0: ad 56 0e    .V.
    beq return13                                                      ; 1bc3: f0 03       ..
    jmp unplot_long_range_scanner_if_shields_inactive                 ; 1bc5: 4c 08 14    L..

return13
    rts                                                               ; 1bc8: 60          `

unused22
    !byte $ea, $ea, $ea, $ea, $ea, $ea                                ; 1bc9: ea ea ea... ...

plot_vertical_line
    sta temp3                                                         ; 1bcf: 85 84       ..
plot_vertical_line_loop
    jsr eor_pixel                                                     ; 1bd1: 20 64 0f     d.
    inc y_pixels                                                      ; 1bd4: e6 7b       .{
    dec temp3                                                         ; 1bd6: c6 84       ..
    bne plot_vertical_line_loop                                       ; 1bd8: d0 f7       ..
    rts                                                               ; 1bda: 60          `

plot_horizontal_line
    sta temp3                                                         ; 1bdb: 85 84       ..
plot_horizontal_line_loop
    jsr eor_pixel                                                     ; 1bdd: 20 64 0f     d.
    inc x_pixels                                                      ; 1be0: e6 7a       .z
    dec temp3                                                         ; 1be2: c6 84       ..
    bne plot_horizontal_line_loop                                     ; 1be4: d0 f7       ..
    rts                                                               ; 1be6: 60          `

damage_enemy_ship
    sta temp8                                                         ; 1be7: 85 75       .u
    lda enemy_ships_energy,x                                          ; 1be9: bd 89 04    ...
    sec                                                               ; 1bec: 38          8
    sbc temp8                                                         ; 1bed: e5 75       .u
    bcs skip16                                                        ; 1bef: b0 02       ..
    lda #0                                                            ; 1bf1: a9 00       ..
skip16
    sta enemy_ships_energy,x                                          ; 1bf3: 9d 89 04    ...
    bne return14                                                      ; 1bf6: d0 03       ..
    jsr explode_enemy_ship                                            ; 1bf8: 20 5d 1f     ].
return14
    rts                                                               ; 1bfb: 60          `

plot_enemy_ship
    stx temp8                                                         ; 1bfc: 86 75       .u
    lda enemy_ships_type,x                                            ; 1bfe: bd 0a 04    ...
    sta enemy_ship_type                                               ; 1c01: 8d 35 19    .5.
    cmp #2                                                            ; 1c04: c9 02       ..
    bcc enemy_ship_isnt_cloaked                                       ; 1c06: 90 03       ..
    jmp enemy_ship_is_cloaked                                         ; 1c08: 4c c6 1c    L..

enemy_ship_isnt_cloaked
    lda enemy_ships_previous_x_pixels,x                               ; 1c0b: bd 02 04    ...
    sta temp10                                                        ; 1c0e: 85 77       .w
    lda enemy_ships_previous_x_pixels1,x                              ; 1c10: bd 05 04    ...
    sta temp9                                                         ; 1c13: 85 76       .v
    lda enemy_ships_previous_angle,x                                  ; 1c15: bd 07 04    ...
    lsr                                                               ; 1c18: 4a          J
    lsr                                                               ; 1c19: 4a          J
    lsr                                                               ; 1c1a: 4a          J
    sta temp11                                                        ; 1c1b: 85 7c       .|
    clc                                                               ; 1c1d: 18          .
    adc #$10                                                          ; 1c1e: 69 10       i.
    and #$1f                                                          ; 1c20: 29 1f       ).
    tay                                                               ; 1c22: a8          .
    lda sine_table,y                                                  ; 1c23: b9 58 0e    .X.
    clc                                                               ; 1c26: 18          .
    bpl skip_set_carry_sine                                           ; 1c27: 10 01       ..
    sec                                                               ; 1c29: 38          8
skip_set_carry_sine
    ror                                                               ; 1c2a: 6a          j
    clc                                                               ; 1c2b: 18          .
    adc temp10                                                        ; 1c2c: 65 77       ew
    sta enemy_ship_x_plus_half_sine                                   ; 1c2e: 8d 33 19    .3.
    lda cosine_table,y                                                ; 1c31: b9 78 0e    .x.
    clc                                                               ; 1c34: 18          .
    bpl skip_set_carry_cosine                                         ; 1c35: 10 01       ..
    sec                                                               ; 1c37: 38          8
skip_set_carry_cosine
    ror                                                               ; 1c38: 6a          j
    clc                                                               ; 1c39: 18          .
    adc temp9                                                         ; 1c3a: 65 76       ev
    sta enemy_ship_y_plus_half_cosine                                 ; 1c3c: 8d 34 19    .4.
    lda temp11                                                        ; 1c3f: a5 7c       .|
    clc                                                               ; 1c41: 18          .
    adc #3                                                            ; 1c42: 69 03       i.
    and #$1f                                                          ; 1c44: 29 1f       ).
    tay                                                               ; 1c46: a8          .
    sta segment_angle                                                 ; 1c47: 85 78       .x
    lda enemy_ship_x_plus_half_sine                                   ; 1c49: ad 33 19    .3.
    clc                                                               ; 1c4c: 18          .
    adc sine_table,y                                                  ; 1c4d: 79 58 0e    yX.
    sta x_pixels                                                      ; 1c50: 85 7a       .z
    lda enemy_ship_y_plus_half_cosine                                 ; 1c52: ad 34 19    .4.
    clc                                                               ; 1c55: 18          .
    adc cosine_table,y                                                ; 1c56: 79 78 0e    yx.
    sta y_pixels                                                      ; 1c59: 85 7b       .{
    lda #8                                                            ; 1c5b: a9 08       ..
    sta segment_length                                                ; 1c5d: 85 74       .t
    lda #1                                                            ; 1c5f: a9 01       ..
    sta output_pixels                                                 ; 1c61: 85 72       .r
    jsr plot_segment                                                  ; 1c63: 20 e4 18     ..
    lda temp11                                                        ; 1c66: a5 7c       .|
    clc                                                               ; 1c68: 18          .
    adc #$14                                                          ; 1c69: 69 14       i.
    and #$1f                                                          ; 1c6b: 29 1f       ).
    sta segment_angle                                                 ; 1c6d: 85 78       .x
    lda #$0a                                                          ; 1c6f: a9 0a       ..
    sta segment_length                                                ; 1c71: 85 74       .t
    lda #$ff                                                          ; 1c73: a9 ff       ..
    sta output_pixels                                                 ; 1c75: 85 72       .r
    jsr plot_segment                                                  ; 1c77: 20 e4 18     ..
    lda temp11                                                        ; 1c7a: a5 7c       .|
    clc                                                               ; 1c7c: 18          .
    adc #$15                                                          ; 1c7d: 69 15       i.
    and #$1f                                                          ; 1c7f: 29 1f       ).
    sta segment_angle                                                 ; 1c81: 85 78       .x
    lda #9                                                            ; 1c83: a9 09       ..
    sta segment_length                                                ; 1c85: 85 74       .t
    lda #1                                                            ; 1c87: a9 01       ..
    sta output_pixels                                                 ; 1c89: 85 72       .r
    jsr plot_segment                                                  ; 1c8b: 20 e4 18     ..
    lda enemy_ship_type                                               ; 1c8e: ad 35 19    .5.
    beq regular_ship                                                  ; 1c91: f0 09       ..
    lda temp10                                                        ; 1c93: a5 77       .w
    sta x_pixels                                                      ; 1c95: 85 7a       .z
    lda temp9                                                         ; 1c97: a5 76       .v
    jmp long_ship                                                     ; 1c99: 4c a4 1c    L..

regular_ship
    lda enemy_ship_x_plus_half_sine                                   ; 1c9c: ad 33 19    .3.
    sta x_pixels                                                      ; 1c9f: 85 7a       .z
    lda enemy_ship_y_plus_half_cosine                                 ; 1ca1: ad 34 19    .4.
long_ship
    sta y_pixels                                                      ; 1ca4: 85 7b       .{
    lda temp11                                                        ; 1ca6: a5 7c       .|
    clc                                                               ; 1ca8: 18          .
    adc #$14                                                          ; 1ca9: 69 14       i.
    and #$1f                                                          ; 1cab: 29 1f       ).
    sta segment_angle                                                 ; 1cad: 85 78       .x
    lda #8                                                            ; 1caf: a9 08       ..
    sta segment_length                                                ; 1cb1: 85 74       .t
    jsr plot_segment                                                  ; 1cb3: 20 e4 18     ..
    lda temp11                                                        ; 1cb6: a5 7c       .|
    clc                                                               ; 1cb8: 18          .
    adc #4                                                            ; 1cb9: 69 04       i.
    and #$1f                                                          ; 1cbb: 29 1f       ).
    sta segment_angle                                                 ; 1cbd: 85 78       .x
    lda #9                                                            ; 1cbf: a9 09       ..
    sta segment_length                                                ; 1cc1: 85 74       .t
    jsr plot_segment                                                  ; 1cc3: 20 e4 18     ..
enemy_ship_is_cloaked
    ldx temp8                                                         ; 1cc6: a6 75       .u
    rts                                                               ; 1cc8: 60          `

starship_has_exploded
    !byte 0                                                           ; 1cc9: 00          .
starship_explosion_address_low
    !byte <starship_explosion_table                                   ; 1cca: d0          .
starship_explosion_address_high
    !byte >starship_explosion_table                                   ; 1ccb: 4b          K
starship_explosion_size
    !byte $40                                                         ; 1ccc: 40          @
maximum_starship_explosion_countdown
    !byte $50                                                         ; 1ccd: 50          P
starship_explosion_countdown
    !byte 0                                                           ; 1cce: 00          .
number_of_bytes_per_enemy_explosion
    !byte $3f                                                         ; 1ccf: 3f          ?
create_new_enemy_explosion_piece_after_one_dies
    !byte 0                                                           ; 1cd0: 00          .
rnd_1
    !byte $ca                                                         ; 1cd1: ca          .
rnd_2
    !byte $48                                                         ; 1cd2: 48          H
unused23
    !byte 0, 0, 0                                                     ; 1cd3: 00 00 00    ...
keyboard_or_joystick
    !byte 0                                                           ; 1cd6: 00          .
sound_enabled
    !byte 0                                                           ; 1cd7: 00          .
escape_capsule_launched
    !byte 0                                                           ; 1cd8: 00          .
damage_from_enemy_torpedo
    !byte $10                                                         ; 1cd9: 10          .
frame_of_starship_explosion_after_which_no_sound
    !byte $11                                                         ; 1cda: 11          .
escape_capsule_sound_channel
    !byte 0                                                           ; 1cdb: 00          .
enemy_ship_fired_torpedo
    !byte 0                                                           ; 1cdc: 00          .
enemy_torpedo_hits_against_starship
    !byte 0                                                           ; 1cdd: 00          .
enemy_ship_was_hit
    !byte 0                                                           ; 1cde: 00          .
damage_to_enemy_ship_from_other_collision
    !byte $ea                                                         ; 1cdf: ea          .
how_enemy_ship_was_damaged
    !byte $ea                                                         ; 1ce0: ea          .
unused24
    !byte $2e                                                         ; 1ce1: 2e          .
enemy_ships_explosion_number
    !byte 0, 0, 0, 0, 0, 0, 0, 0                                      ; 1ce2: 00 00 00... ...
unused25
    !text "SIE/256:I?SNL"                                             ; 1cea: 53 49 45... SIE
enemy_explosion_address_low_table
    !byte <(enemy_explosion_tables + $0000)                           ; 1cf7: 00          .
    !byte <(enemy_explosion_tables + $0040)                           ; 1cf8: 40          @
    !byte <(enemy_explosion_tables + $0080)                           ; 1cf9: 80          .
    !byte <(enemy_explosion_tables + $00c0)                           ; 1cfa: c0          .
    !byte <(enemy_explosion_tables + $0100)                           ; 1cfb: 00          .
    !byte <(enemy_explosion_tables + $0140)                           ; 1cfc: 40          @
    !byte <(enemy_explosion_tables + $0180)                           ; 1cfd: 80          .
    !byte <(enemy_explosion_tables + $01c0)                           ; 1cfe: c0          .
    !byte <(enemy_explosion_tables + $0200)                           ; 1cff: 00          .
    !byte <(enemy_explosion_tables + $0240)                           ; 1d00: 40          @
    !byte <(enemy_explosion_tables + $0280)                           ; 1d01: 80          .
    !byte <(enemy_explosion_tables + $02c0)                           ; 1d02: c0          .
    !byte <(enemy_explosion_tables + $0300)                           ; 1d03: 00          .
    !byte <(enemy_explosion_tables + $0340)                           ; 1d04: 40          @
    !byte <(enemy_explosion_tables + $0380)                           ; 1d05: 80          .
    !byte <(enemy_explosion_tables + $03c0)                           ; 1d06: c0          .
unused26
    !byte $53                                                         ; 1d07: 53          S
enemy_explosion_address_high_table
    !byte >(enemy_explosion_tables + $0000)                           ; 1d08: 4d          M
    !byte >(enemy_explosion_tables + $0040)                           ; 1d09: 4d          M
    !byte >(enemy_explosion_tables + $0080)                           ; 1d0a: 4d          M
    !byte >(enemy_explosion_tables + $00c0)                           ; 1d0b: 4d          M
    !byte >(enemy_explosion_tables + $0100)                           ; 1d0c: 4e          N
    !byte >(enemy_explosion_tables + $0140)                           ; 1d0d: 4e          N
    !byte >(enemy_explosion_tables + $0180)                           ; 1d0e: 4e          N
    !byte >(enemy_explosion_tables + $01c0)                           ; 1d0f: 4e          N
    !byte >(enemy_explosion_tables + $0200)                           ; 1d10: 4f          O
    !byte >(enemy_explosion_tables + $0240)                           ; 1d11: 4f          O
    !byte >(enemy_explosion_tables + $0280)                           ; 1d12: 4f          O
    !byte >(enemy_explosion_tables + $02c0)                           ; 1d13: 4f          O
    !byte >(enemy_explosion_tables + $0300)                           ; 1d14: 50          P
    !byte >(enemy_explosion_tables + $0340)                           ; 1d15: 50          P
    !byte >(enemy_explosion_tables + $0380)                           ; 1d16: 50          P
    !byte >(enemy_explosion_tables + $03c0)                           ; 1d17: 50          P
enemy_explosion_piece_ageing_table
    !byte $0f, $11, $13, $15                                          ; 1d18: 0f 11 13... ...
starship_explosion_piece_ageing_table
    !byte 5, 6, 7, 8, 9, $0a, $0b, $0c                                ; 1d1c: 05 06 07... ...

plot_stars
    lda star_table_address_low                                        ; 1d24: ad 49 0e    .I.
    sta temp0_low                                                     ; 1d27: 85 80       ..
    lda star_table_address_high                                       ; 1d29: ad 4a 0e    .J.
    sta temp0_high                                                    ; 1d2c: 85 81       ..
    lda maximum_number_of_stars                                       ; 1d2e: ad 50 0e    .P.
    sta enemy_ships_still_to_consider                                 ; 1d31: 8d 54 0e    .T.
plot_stars_loop
    ldy #1                                                            ; 1d34: a0 01       ..
    lda (temp0_low),y                                                 ; 1d36: b1 80       ..
    sta x_pixels                                                      ; 1d38: 85 7a       .z
    ldy #3                                                            ; 1d3a: a0 03       ..
    lda (temp0_low),y                                                 ; 1d3c: b1 80       ..
    sta y_pixels                                                      ; 1d3e: 85 7b       .{
    jsr eor_pixel                                                     ; 1d40: 20 64 0f     d.
    lda temp0_low                                                     ; 1d43: a5 80       ..
    clc                                                               ; 1d45: 18          .
    adc #4                                                            ; 1d46: 69 04       i.
    sta temp0_low                                                     ; 1d48: 85 80       ..
    bcc skip17                                                        ; 1d4a: 90 02       ..
    inc temp0_high                                                    ; 1d4c: e6 81       ..
skip17
    dec enemy_ships_still_to_consider                                 ; 1d4e: ce 54 0e    .T.
    bne plot_stars_loop                                               ; 1d51: d0 e1       ..
    rts                                                               ; 1d53: 60          `

unused27
    !byte $ea, $ea, $ea, $ea                                          ; 1d54: ea ea ea... ...

initialise_stars_at_random_positions
    lda star_table_address_low                                        ; 1d58: ad 49 0e    .I.
    sta temp0_low                                                     ; 1d5b: 85 80       ..
    lda star_table_address_high                                       ; 1d5d: ad 4a 0e    .J.
    sta temp0_high                                                    ; 1d60: 85 81       ..
    lda maximum_number_of_stars                                       ; 1d62: ad 50 0e    .P.
    sta enemy_ships_still_to_consider                                 ; 1d65: 8d 54 0e    .T.
initialise_stars_at_random_positions_loop
    jsr random_number_generator                                       ; 1d68: 20 13 21     .!
    ldy #1                                                            ; 1d6b: a0 01       ..
    lda rnd_1                                                         ; 1d6d: ad d1 1c    ...
    sta (temp0_low),y                                                 ; 1d70: 91 80       ..
    ldy #3                                                            ; 1d72: a0 03       ..
    lda rnd_2                                                         ; 1d74: ad d2 1c    ...
    sta (temp0_low),y                                                 ; 1d77: 91 80       ..
    lda temp0_low                                                     ; 1d79: a5 80       ..
    clc                                                               ; 1d7b: 18          .
    adc #4                                                            ; 1d7c: 69 04       i.
    sta temp0_low                                                     ; 1d7e: 85 80       ..
    bcc skip18                                                        ; 1d80: 90 02       ..
    inc temp0_high                                                    ; 1d82: e6 81       ..
skip18
    dec enemy_ships_still_to_consider                                 ; 1d84: ce 54 0e    .T.
    bne initialise_stars_at_random_positions_loop                     ; 1d87: d0 df       ..
    rts                                                               ; 1d89: 60          `

unused28
    !byte $ea, $ea, $ea, $ea                                          ; 1d8a: ea ea ea... ...

plot_starship
    ldx #$0f                                                          ; 1d8e: a2 0f       ..
plot_starship_top_loop
    lda user_defined_characters,x                                     ; 1d90: bd 00 0c    ...
    eor starship_top_screen_address,x                                 ; 1d93: 5d 38 6b    ]8k
    sta starship_top_screen_address,x                                 ; 1d96: 9d 38 6b    .8k
    dex                                                               ; 1d99: ca          .
    bpl plot_starship_top_loop                                        ; 1d9a: 10 f4       ..
    ldx #$0f                                                          ; 1d9c: a2 0f       ..
plot_starship_bottom_loop
    lda user_defined_characters + 16,x                                ; 1d9e: bd 10 0c    ...
    eor starship_bottom_screen_address,x                              ; 1da1: 5d 78 6c    ]xl
    sta starship_bottom_screen_address,x                              ; 1da4: 9d 78 6c    .xl
    dex                                                               ; 1da7: ca          .
    bpl plot_starship_bottom_loop                                     ; 1da8: 10 f4       ..
    rts                                                               ; 1daa: 60          `

unused29
    !byte $ea, $ea, $ea, $ea                                          ; 1dab: ea ea ea... ...

explode_starship
    lda starship_explosion_address_low                                ; 1daf: ad ca 1c    ...
    sta temp0_low                                                     ; 1db2: 85 80       ..
    lda starship_explosion_address_high                               ; 1db4: ad cb 1c    ...
    sta temp0_high                                                    ; 1db7: 85 81       ..
    lda starship_explosion_size                                       ; 1db9: ad cc 1c    ...
    sta enemy_ships_still_to_consider                                 ; 1dbc: 8d 54 0e    .T.
plot_starship_explosion_loop
    jsr plot_starship_explosion_piece                                 ; 1dbf: 20 3d 1e     =.
    lda temp0_low                                                     ; 1dc2: a5 80       ..
    clc                                                               ; 1dc4: 18          .
    adc #3                                                            ; 1dc5: 69 03       i.
    sta temp0_low                                                     ; 1dc7: 85 80       ..
    bcc skip19                                                        ; 1dc9: 90 02       ..
    inc temp0_high                                                    ; 1dcb: e6 81       ..
skip19
    dec enemy_ships_still_to_consider                                 ; 1dcd: ce 54 0e    .T.
    bne plot_starship_explosion_loop                                  ; 1dd0: d0 ed       ..
    inc starship_has_exploded                                         ; 1dd2: ee c9 1c    ...
    lda rnd_1                                                         ; 1dd5: ad d1 1c    ...
    ora #$10                                                          ; 1dd8: 09 10       ..
    sta rnd_1                                                         ; 1dda: 8d d1 1c    ...
    jsr turn_scanner_to_static                                        ; 1ddd: 20 7c 31     |1
    jmp plot_starship                                                 ; 1de0: 4c 8e 1d    L..

unused30
    !byte $ea, $ea, $ea, $ea, $ea                                     ; 1de3: ea ea ea... ...

plot_starship_explosion
    dec starship_explosion_countdown                                  ; 1de8: ce ce 1c    ...
    bne starship_explosion_continuing                                 ; 1deb: d0 03       ..
    jmp end_of_command                                                ; 1ded: 4c 07 46    L.F

starship_explosion_continuing
    lda starship_explosion_address_low                                ; 1df0: ad ca 1c    ...
    sta temp0_low                                                     ; 1df3: 85 80       ..
    lda starship_explosion_address_high                               ; 1df5: ad cb 1c    ...
    sta temp0_high                                                    ; 1df8: 85 81       ..
    lda starship_explosion_size                                       ; 1dfa: ad cc 1c    ...
    sta enemy_ships_still_to_consider                                 ; 1dfd: 8d 54 0e    .T.
loop6
    ldy #0                                                            ; 1e00: a0 00       ..
    lda (temp0_low),y                                                 ; 1e02: b1 80       ..
    beq move_to_next_starship_explosion_piece                         ; 1e04: f0 25       .%
    jsr plot_starship_explosion_piece                                 ; 1e06: 20 3d 1e     =.
    ldy #1                                                            ; 1e09: a0 01       ..
    lda (temp0_low),y                                                 ; 1e0b: b1 80       ..
    and #7                                                            ; 1e0d: 29 07       ).
    tax                                                               ; 1e0f: aa          .
    lda starship_explosion_piece_ageing_table,x                       ; 1e10: bd 1c 1d    ...
    dey                                                               ; 1e13: 88          .              ; Y=$00
    clc                                                               ; 1e14: 18          .
    adc (temp0_low),y                                                 ; 1e15: 71 80       q.
    bcc skip20                                                        ; 1e17: 90 05       ..
    tya                                                               ; 1e19: 98          .
    sta (temp0_low),y                                                 ; 1e1a: 91 80       ..
    beq move_to_next_starship_explosion_piece                         ; 1e1c: f0 0d       ..             ; ALWAYS branch

skip20
    sta (temp0_low),y                                                 ; 1e1e: 91 80       ..
    txa                                                               ; 1e20: 8a          .
    ldy #2                                                            ; 1e21: a0 02       ..
    sec                                                               ; 1e23: 38          8
    adc (temp0_low),y                                                 ; 1e24: 71 80       q.
    sta (temp0_low),y                                                 ; 1e26: 91 80       ..
    jsr plot_starship_explosion_piece                                 ; 1e28: 20 3d 1e     =.
move_to_next_starship_explosion_piece
    lda temp0_low                                                     ; 1e2b: a5 80       ..
    clc                                                               ; 1e2d: 18          .
    adc #3                                                            ; 1e2e: 69 03       i.
    sta temp0_low                                                     ; 1e30: 85 80       ..
    bcc skip21                                                        ; 1e32: 90 02       ..
    inc temp0_high                                                    ; 1e34: e6 81       ..
skip21
    dec enemy_ships_still_to_consider                                 ; 1e36: ce 54 0e    .T.
    bne loop6                                                         ; 1e39: d0 c5       ..
    rts                                                               ; 1e3b: 60          `

unused31
    !byte $ea                                                         ; 1e3c: ea          .

plot_starship_explosion_piece
    ldy #0                                                            ; 1e3d: a0 00       ..
    lda (temp0_low),y                                                 ; 1e3f: b1 80       ..
    and #$c0                                                          ; 1e41: 29 c0       ).
    sta temp8                                                         ; 1e43: 85 75       .u
    ldy #2                                                            ; 1e45: a0 02       ..
    lda (temp0_low),y                                                 ; 1e47: b1 80       ..
    sta temp11                                                        ; 1e49: 85 7c       .|
    lda enemy_ships_still_to_consider                                 ; 1e4b: ad 54 0e    .T.
    and #$1f                                                          ; 1e4e: 29 1f       ).
    tax                                                               ; 1e50: aa          .
    lda sine_table,x                                                  ; 1e51: bd 58 0e    .X.
    bpl skip_inversion_sine                                           ; 1e54: 10 05       ..
    eor #$1f                                                          ; 1e56: 49 1f       I.
    clc                                                               ; 1e58: 18          .
    adc #1                                                            ; 1e59: 69 01       i.
skip_inversion_sine
    sta x_pixels                                                      ; 1e5b: 85 7a       .z
    lda cosine_table,x                                                ; 1e5d: bd 78 0e    .x.
    bpl skip_inversion_cosine                                         ; 1e60: 10 05       ..
    eor #$1f                                                          ; 1e62: 49 1f       I.
    clc                                                               ; 1e64: 18          .
    adc #1                                                            ; 1e65: 69 01       i.
skip_inversion_cosine
    sta y_pixels                                                      ; 1e67: 85 7b       .{
    ldx #3                                                            ; 1e69: a2 03       ..
    lda #0                                                            ; 1e6b: a9 00       ..
loop_over_bits_of_sine1
    lsr x_pixels                                                      ; 1e6d: 46 7a       Fz
    bcc sine_bit_unset1                                               ; 1e6f: 90 03       ..
    clc                                                               ; 1e71: 18          .
    adc temp11                                                        ; 1e72: 65 7c       e|
sine_bit_unset1
    ror                                                               ; 1e74: 6a          j
    dex                                                               ; 1e75: ca          .
    bne loop_over_bits_of_sine1                                       ; 1e76: d0 f5       ..
    ldx x_pixels                                                      ; 1e78: a6 7a       .z
    beq skip_uninversion_sine                                         ; 1e7a: f0 02       ..
    eor #$ff                                                          ; 1e7c: 49 ff       I.
skip_uninversion_sine
    eor #$80                                                          ; 1e7e: 49 80       I.
    sta x_pixels                                                      ; 1e80: 85 7a       .z
    ldx #3                                                            ; 1e82: a2 03       ..
    lda #0                                                            ; 1e84: a9 00       ..
loop_over_bits_of_cosine1
    lsr y_pixels                                                      ; 1e86: 46 7b       F{
    bcc skip22                                                        ; 1e88: 90 03       ..
    clc                                                               ; 1e8a: 18          .
    adc temp11                                                        ; 1e8b: 65 7c       e|
skip22
    ror                                                               ; 1e8d: 6a          j
    dex                                                               ; 1e8e: ca          .
    bne loop_over_bits_of_cosine1                                     ; 1e8f: d0 f5       ..
    ldx y_pixels                                                      ; 1e91: a6 7b       .{
    beq skip_uninversion_cosine                                       ; 1e93: f0 02       ..
    eor #$ff                                                          ; 1e95: 49 ff       I.
skip_uninversion_cosine
    eor #$80                                                          ; 1e97: 49 80       I.
    sta y_pixels                                                      ; 1e99: 85 7b       .{
    dey                                                               ; 1e9b: 88          .
    lda (temp0_low),y                                                 ; 1e9c: b1 80       ..
    bpl plot_variable_size_fragment                                   ; 1e9e: 10 26       .&
    lda temp8                                                         ; 1ea0: a5 75       .u
    clc                                                               ; 1ea2: 18          .
    rol                                                               ; 1ea3: 2a          *
    rol                                                               ; 1ea4: 2a          *
    rol                                                               ; 1ea5: 2a          *
    sta output_pixels                                                 ; 1ea6: 85 72       .r
    eor #3                                                            ; 1ea8: 49 03       I.
    clc                                                               ; 1eaa: 18          .
    adc #1                                                            ; 1eab: 69 01       i.
    sec                                                               ; 1ead: 38          8
    rol                                                               ; 1eae: 2a          *
    sta segment_length                                                ; 1eaf: 85 74       .t
    inc output_pixels                                                 ; 1eb1: e6 72       .r
    iny                                                               ; 1eb3: c8          .
    lda (temp0_low),y                                                 ; 1eb4: b1 80       ..
    and #$1f                                                          ; 1eb6: 29 1f       ).
    sta segment_angle                                                 ; 1eb8: 85 78       .x
    lda x_pixels                                                      ; 1eba: a5 7a       .z
    sta temp10                                                        ; 1ebc: 85 77       .w
    lda y_pixels                                                      ; 1ebe: a5 7b       .{
    sta temp9                                                         ; 1ec0: 85 76       .v
    jsr plot_segment                                                  ; 1ec2: 20 e4 18     ..
    rts                                                               ; 1ec5: 60          `

plot_variable_size_fragment
    jsr eor_pixel                                                     ; 1ec6: 20 64 0f     d.
    lda temp8                                                         ; 1ec9: a5 75       .u
    cmp #$c0                                                          ; 1ecb: c9 c0       ..
    beq return15                                                      ; 1ecd: f0 2f       ./
    inc x_pixels                                                      ; 1ecf: e6 7a       .z
    jsr eor_pixel                                                     ; 1ed1: 20 64 0f     d.
    lda temp8                                                         ; 1ed4: a5 75       .u
    bmi return15                                                      ; 1ed6: 30 26       0&
    inc y_pixels                                                      ; 1ed8: e6 7b       .{
    jsr eor_pixel                                                     ; 1eda: 20 64 0f     d.
    dec x_pixels                                                      ; 1edd: c6 7a       .z
    jsr eor_pixel                                                     ; 1edf: 20 64 0f     d.
    lda temp8                                                         ; 1ee2: a5 75       .u
    bne return15                                                      ; 1ee4: d0 18       ..
    inc y_pixels                                                      ; 1ee6: e6 7b       .{
    jsr eor_pixel                                                     ; 1ee8: 20 64 0f     d.
    dec y_pixels                                                      ; 1eeb: c6 7b       .{
    dec x_pixels                                                      ; 1eed: c6 7a       .z
    jsr eor_pixel                                                     ; 1eef: 20 64 0f     d.
    dec y_pixels                                                      ; 1ef2: c6 7b       .{
    jsr eor_pixel                                                     ; 1ef4: 20 64 0f     d.
    dec y_pixels                                                      ; 1ef7: c6 7b       .{
    inc x_pixels                                                      ; 1ef9: e6 7a       .z
    jsr eor_pixel                                                     ; 1efb: 20 64 0f     d.
return15
    rts                                                               ; 1efe: 60          `

unused32
    !byte $ea, $ea, $ea, $ea                                          ; 1eff: ea ea ea... ...

initialise_starship_explosion_pieces
    lda maximum_starship_explosion_countdown                          ; 1f03: ad cd 1c    ...
    sta starship_explosion_countdown                                  ; 1f06: 8d ce 1c    ...
    lda starship_explosion_address_low                                ; 1f09: ad ca 1c    ...
    sta temp0_low                                                     ; 1f0c: 85 80       ..
    lda starship_explosion_address_high                               ; 1f0e: ad cb 1c    ...
    sta temp0_high                                                    ; 1f11: 85 81       ..
    lda starship_explosion_size                                       ; 1f13: ad cc 1c    ...
    sta enemy_ships_still_to_consider                                 ; 1f16: 8d 54 0e    .T.
initialise_starship_explosion_pieces_loop
    jsr initialise_starship_explosion_piece                           ; 1f19: 20 2d 1f     -.
    lda temp0_low                                                     ; 1f1c: a5 80       ..
    clc                                                               ; 1f1e: 18          .
    adc #3                                                            ; 1f1f: 69 03       i.
    sta temp0_low                                                     ; 1f21: 85 80       ..
    bcc skip23                                                        ; 1f23: 90 02       ..
    inc temp0_high                                                    ; 1f25: e6 81       ..
skip23
    dec enemy_ships_still_to_consider                                 ; 1f27: ce 54 0e    .T.
    bne initialise_starship_explosion_pieces_loop                     ; 1f2a: d0 ed       ..
    rts                                                               ; 1f2c: 60          `

initialise_starship_explosion_piece
    jsr random_number_generator                                       ; 1f2d: 20 13 21     .!
    ldy #2                                                            ; 1f30: a0 02       ..
    lda rnd_1                                                         ; 1f32: ad d1 1c    ...
    and #7                                                            ; 1f35: 29 07       ).
    sta (temp0_low),y                                                 ; 1f37: 91 80       ..
    dey                                                               ; 1f39: 88          .              ; Y=$01
    lda rnd_2                                                         ; 1f3a: ad d2 1c    ...
    lsr                                                               ; 1f3d: 4a          J
    sta (temp0_low),y                                                 ; 1f3e: 91 80       ..
    lda rnd_1                                                         ; 1f40: ad d1 1c    ...
    and #$3c                                                          ; 1f43: 29 3c       )<
    bne not_a_segment                                                 ; 1f45: d0 06       ..
    lda (temp0_low),y                                                 ; 1f47: b1 80       ..
    ora #$80                                                          ; 1f49: 09 80       ..
    sta (temp0_low),y                                                 ; 1f4b: 91 80       ..
not_a_segment
    dey                                                               ; 1f4d: 88          .
    lda rnd_1                                                         ; 1f4e: ad d1 1c    ...
    and #$1f                                                          ; 1f51: 29 1f       ).
    clc                                                               ; 1f53: 18          .
    adc #1                                                            ; 1f54: 69 01       i.
    sta (temp0_low),y                                                 ; 1f56: 91 80       ..
    rts                                                               ; 1f58: 60          `

    !byte $ea, $ea, $ea, $ea                                          ; 1f59: ea ea ea... ...

explode_enemy_ship
    lda enemy_ships_previous_on_screen,x                              ; 1f5d: bd 00 04    ...
    bne skip_unplotting                                               ; 1f60: d0 03       ..
    jsr plot_enemy_ship                                               ; 1f62: 20 fc 1b     ..
skip_unplotting
    lda enemy_ship_explosion_duration                                 ; 1f65: ad 39 0e    .9.
    sta enemy_ships_flags_or_explosion_timer,x                        ; 1f68: 9d 09 04    ...
    ldy maximum_number_of_enemy_ships                                 ; 1f6b: ac 4f 0e    .O.
    lda #0                                                            ; 1f6e: a9 00       ..
find_free_explosion_slot_loop
    cmp unused24,y                                                    ; 1f70: d9 e1 1c    ...
    bcs skip24                                                        ; 1f73: b0 03       ..
    lda unused24,y                                                    ; 1f75: b9 e1 1c    ...
skip24
    dey                                                               ; 1f78: 88          .
    bne find_free_explosion_slot_loop                                 ; 1f79: d0 f5       ..
    cmp maximum_number_of_explosions                                  ; 1f7b: cd 35 0e    .5.
    beq too_many_explosions                                           ; 1f7e: f0 03       ..
    clc                                                               ; 1f80: 18          .
    adc #1                                                            ; 1f81: 69 01       i.
too_many_explosions
    ldy enemy_ships_still_to_consider                                 ; 1f83: ac 54 0e    .T.
    sta unused24,y                                                    ; 1f86: 99 e1 1c    ...
    tay                                                               ; 1f89: a8          .
    lda enemy_explosion_address_low_table - 1,y                       ; 1f8a: b9 f6 1c    ...
    sta temp5                                                         ; 1f8d: 85 86       ..
    lda unused26,y                                                    ; 1f8f: b9 07 1d    ...
    sta temp6                                                         ; 1f92: 85 87       ..
    ldy number_of_bytes_per_enemy_explosion                           ; 1f94: ac cf 1c    ...
loop_c1f97
    jsr random_number_generator                                       ; 1f97: 20 13 21     .!
enemy_explosion_initialisation_loop
    lda rnd_2                                                         ; 1f9a: ad d2 1c    ...
    and #$3f                                                          ; 1f9d: 29 3f       )?
    sta (temp5),y                                                     ; 1f9f: 91 86       ..
    dey                                                               ; 1fa1: 88          .
    lda rnd_1                                                         ; 1fa2: ad d1 1c    ...
    and #$3f                                                          ; 1fa5: 29 3f       )?
    clc                                                               ; 1fa7: 18          .
    adc #$68                                                          ; 1fa8: 69 68       ih
    sta (temp5),y                                                     ; 1faa: 91 86       ..
    dey                                                               ; 1fac: 88          .
    bpl loop_c1f97                                                    ; 1fad: 10 e8       ..
    jmp score_points_for_destroying_enemy_ship                        ; 1faf: 4c 86 2d    L.-

unused33
    !byte $ea, $ea                                                    ; 1fb2: ea ea       ..

update_enemy_explosion_pieces
    lda enemy_ships_flags_or_explosion_timer,x                        ; 1fb4: bd 09 04    ...
    cmp frame_of_enemy_ship_explosion_after_which_no_collisions       ; 1fb7: cd 37 0e    .7.
    lda #1                                                            ; 1fba: a9 01       ..
    bcs skip25                                                        ; 1fbc: b0 02       ..
    lda #0                                                            ; 1fbe: a9 00       ..
skip25
    sta create_new_enemy_explosion_piece_after_one_dies               ; 1fc0: 8d d0 1c    ...
    jsr plot_enemy_ship_or_explosion_segments                         ; 1fc3: 20 a4 20     .
    ldy number_of_bytes_per_enemy_explosion                           ; 1fc6: ac cf 1c    ...
update_enemy_explosion_pieces_loop
    dey                                                               ; 1fc9: 88          .
    lda (temp5),y                                                     ; 1fca: b1 86       ..
    beq move_to_next_piece                                            ; 1fcc: f0 34       .4
    jsr plot_enemy_explosion_fragment                                 ; 1fce: 20 25 20     %
    lda (temp5),y                                                     ; 1fd1: b1 86       ..
    and #3                                                            ; 1fd3: 29 03       ).
    tax                                                               ; 1fd5: aa          .
    lda enemy_explosion_piece_ageing_table,x                          ; 1fd6: bd 18 1d    ...
    dey                                                               ; 1fd9: 88          .
    clc                                                               ; 1fda: 18          .
    adc (temp5),y                                                     ; 1fdb: 71 86       q.
    bcc piece_still_active                                            ; 1fdd: 90 16       ..
    lda create_new_enemy_explosion_piece_after_one_dies               ; 1fdf: ad d0 1c    ...
    sta (temp5),y                                                     ; 1fe2: 91 86       ..
    beq move_to_next_piece                                            ; 1fe4: f0 1c       ..
    jsr random_number_generator                                       ; 1fe6: 20 13 21     .!
    lda rnd_2                                                         ; 1fe9: ad d2 1c    ...
    lsr                                                               ; 1fec: 4a          J
    and #$3f                                                          ; 1fed: 29 3f       )?
    iny                                                               ; 1fef: c8          .
    sta (temp5),y                                                     ; 1ff0: 91 86       ..
    jmp move_to_next_piece_after_dey                                  ; 1ff2: 4c 01 20    L.

piece_still_active
    sta (temp5),y                                                     ; 1ff5: 91 86       ..
    iny                                                               ; 1ff7: c8          .
    inx                                                               ; 1ff8: e8          .
    txa                                                               ; 1ff9: 8a          .
    asl                                                               ; 1ffa: 0a          .
    asl                                                               ; 1ffb: 0a          .
    clc                                                               ; 1ffc: 18          .
    adc (temp5),y                                                     ; 1ffd: 71 86       q.
    sta (temp5),y                                                     ; 1fff: 91 86       ..
move_to_next_piece_after_dey
    dey                                                               ; 2001: 88          .
move_to_next_piece
    dey                                                               ; 2002: 88          .
    bpl update_enemy_explosion_pieces_loop                            ; 2003: 10 c4       ..
    ldx temp7                                                         ; 2005: a6 88       ..
    rts                                                               ; 2007: 60          `

; ----------------------------------------------------------------------------------
; [only 4 bytes, but should be eight bytes]
; ----------------------------------------------------------------------------------
sound_0
unused34
    !byte $ea, $ea, $ea, $ea                                          ; 2008: ea ea ea... ...            ; Channel (2 bytes); Amplitude (2 bytes)

plot_enemy_ship_explosion
    jsr plot_enemy_ship_or_explosion_segments                         ; 200c: 20 a4 20     .             ; Pitch (2 bytes); Duration (2 bytes)
    ldy number_of_bytes_per_enemy_explosion                           ; 200f: ac cf 1c    ...
plot_enemy_ship_explosion_loop
    dey                                                               ; 2012: 88          .
    lda (temp5),y                                                     ; 2013: b1 86       ..
    beq move_to_next_explosion_piece                                  ; 2015: f0 04       ..
    jsr plot_enemy_explosion_fragment                                 ; 2017: 20 25 20     %
    dey                                                               ; 201a: 88          .
move_to_next_explosion_piece
    dey                                                               ; 201b: 88          .
    bpl plot_enemy_ship_explosion_loop                                ; 201c: 10 f4       ..
    ldx temp7                                                         ; 201e: a6 88       ..
    rts                                                               ; 2020: 60          `

unused35
    !byte $ea, $ea, $ea, $ea                                          ; 2021: ea ea ea... ...

plot_enemy_explosion_fragment
    lda (temp5),y                                                     ; 2025: b1 86       ..
    and #$c0                                                          ; 2027: 29 c0       ).
    sta segment_angle                                                 ; 2029: 85 78       .x
    iny                                                               ; 202b: c8          .
    lda (temp5),y                                                     ; 202c: b1 86       ..
    lsr                                                               ; 202e: 4a          J
    lsr                                                               ; 202f: 4a          J
    sta temp11                                                        ; 2030: 85 7c       .|
    tya                                                               ; 2032: 98          .
    lsr                                                               ; 2033: 4a          J
    tax                                                               ; 2034: aa          .
    lda sine_table,x                                                  ; 2035: bd 58 0e    .X.
    bpl skip_inversion_sine1                                          ; 2038: 10 05       ..
    eor #$1f                                                          ; 203a: 49 1f       I.
    clc                                                               ; 203c: 18          .
    adc #1                                                            ; 203d: 69 01       i.
skip_inversion_sine1
    sta x_pixels                                                      ; 203f: 85 7a       .z
    lda cosine_table,x                                                ; 2041: bd 78 0e    .x.
    bpl skip_inversion_cosine1                                        ; 2044: 10 05       ..
    eor #$1f                                                          ; 2046: 49 1f       I.
    clc                                                               ; 2048: 18          .
    adc #1                                                            ; 2049: 69 01       i.
skip_inversion_cosine1
    sta y_pixels                                                      ; 204b: 85 7b       .{
    ldx #3                                                            ; 204d: a2 03       ..
    lda #0                                                            ; 204f: a9 00       ..
loop_over_bits_of_sine2
    lsr x_pixels                                                      ; 2051: 46 7a       Fz
    bcc sine_bit_unset2                                               ; 2053: 90 03       ..
    clc                                                               ; 2055: 18          .
    adc temp11                                                        ; 2056: 65 7c       e|
sine_bit_unset2
    ror                                                               ; 2058: 6a          j
    dex                                                               ; 2059: ca          .
    bne loop_over_bits_of_sine2                                       ; 205a: d0 f5       ..
    ldx x_pixels                                                      ; 205c: a6 7a       .z
    beq skip_uninversion_sine1                                        ; 205e: f0 02       ..
    eor #$ff                                                          ; 2060: 49 ff       I.
skip_uninversion_sine1
    clc                                                               ; 2062: 18          .
    adc temp10                                                        ; 2063: 65 77       ew
    sta x_pixels                                                      ; 2065: 85 7a       .z
    ldx #3                                                            ; 2067: a2 03       ..
    lda #0                                                            ; 2069: a9 00       ..
loop_over_bits_of_cosine2
    lsr y_pixels                                                      ; 206b: 46 7b       F{
    bcc cosine_bit_unset1                                             ; 206d: 90 03       ..
    clc                                                               ; 206f: 18          .
    adc temp11                                                        ; 2070: 65 7c       e|
cosine_bit_unset1
    ror                                                               ; 2072: 6a          j
    dex                                                               ; 2073: ca          .
    bne loop_over_bits_of_cosine2                                     ; 2074: d0 f5       ..
    ldx y_pixels                                                      ; 2076: a6 7b       .{
    beq skip_uninversion_cosine1                                      ; 2078: f0 02       ..
    eor #$ff                                                          ; 207a: 49 ff       I.
skip_uninversion_cosine1
    clc                                                               ; 207c: 18          .
    adc temp9                                                         ; 207d: 65 76       ev
    sta y_pixels                                                      ; 207f: 85 7b       .{
    sty temp11                                                        ; 2081: 84 7c       .|
    jsr eor_pixel_within_box_around_origin                            ; 2083: 20 4a 0f     J.
    lda segment_angle                                                 ; 2086: a5 78       .x
    bmi leave_after_restoring_y                                       ; 2088: 30 13       0.
    inc x_pixels                                                      ; 208a: e6 7a       .z
    jsr eor_pixel_within_box_around_origin                            ; 208c: 20 4a 0f     J.
    lda segment_angle                                                 ; 208f: a5 78       .x
    bne leave_after_restoring_y                                       ; 2091: d0 0a       ..
    inc y_pixels                                                      ; 2093: e6 7b       .{
    jsr eor_pixel_within_box_around_origin                            ; 2095: 20 4a 0f     J.
    dec x_pixels                                                      ; 2098: c6 7a       .z
    jsr eor_pixel_within_box_around_origin                            ; 209a: 20 4a 0f     J.
leave_after_restoring_y
    ldy temp11                                                        ; 209d: a4 7c       .|
    rts                                                               ; 209f: 60          `

unused36
    !byte $ea, $ea, $ea, $ea                                          ; 20a0: ea ea ea... ...

plot_enemy_ship_or_explosion_segments
    stx temp7                                                         ; 20a4: 86 88       ..
    lda enemy_ships_previous_x_pixels,x                               ; 20a6: bd 02 04    ...
    sta temp10                                                        ; 20a9: 85 77       .w
    lda enemy_ships_previous_x_pixels1,x                              ; 20ab: bd 05 04    ...
    sta temp9                                                         ; 20ae: 85 76       .v
    lda enemy_ships_flags_or_explosion_timer,x                        ; 20b0: bd 09 04    ...
    cmp frame_of_enemy_ship_explosion_after_which_no_collisions       ; 20b3: cd 37 0e    .7.
    bcc return16                                                      ; 20b6: 90 09       ..
    cmp frame_of_enemy_ship_explosion_after_which_no_segments_are_plotted; 20b8: cd 38 0e    .8.
    bcc plot_enemy_explosion_segments                                 ; 20bb: 90 08       ..
    jsr plot_enemy_ship                                               ; 20bd: 20 fc 1b     ..
    rts                                                               ; 20c0: 60          `

return16
    rts                                                               ; 20c1: 60          `

unused37
    !byte $ea, $ea, $ea                                               ; 20c2: ea ea ea    ...

plot_enemy_explosion_segments
    and #$1f                                                          ; 20c5: 29 1f       ).
    sta segment_angle                                                 ; 20c7: 85 78       .x
    lda temp10                                                        ; 20c9: a5 77       .w
    sta x_pixels                                                      ; 20cb: 85 7a       .z
    lda temp9                                                         ; 20cd: a5 76       .v
    sta y_pixels                                                      ; 20cf: 85 7b       .{
    lda #$0a                                                          ; 20d1: a9 0a       ..
    sta segment_length                                                ; 20d3: 85 74       .t
    lda #1                                                            ; 20d5: a9 01       ..
    sta output_pixels                                                 ; 20d7: 85 72       .r
    jsr plot_segment                                                  ; 20d9: 20 e4 18     ..
    ldx temp7                                                         ; 20dc: a6 88       ..
    lda enemy_ships_flags_or_explosion_timer,x                        ; 20de: bd 09 04    ...
    eor #$1f                                                          ; 20e1: 49 1f       I.
    and #$1f                                                          ; 20e3: 29 1f       ).
    sta segment_angle                                                 ; 20e5: 85 78       .x
    lda #7                                                            ; 20e7: a9 07       ..
    sta segment_length                                                ; 20e9: 85 74       .t
    inc output_pixels                                                 ; 20eb: e6 72       .r
    jsr plot_segment                                                  ; 20ed: 20 e4 18     ..
    ldx temp7                                                         ; 20f0: a6 88       ..
    lda temp10                                                        ; 20f2: a5 77       .w
    sta x_pixels                                                      ; 20f4: 85 7a       .z
    lda temp9                                                         ; 20f6: a5 76       .v
    sta y_pixels                                                      ; 20f8: 85 7b       .{
    lda enemy_ships_flags_or_explosion_timer,x                        ; 20fa: bd 09 04    ...
    eor #$0f                                                          ; 20fd: 49 0f       I.
    and #$1f                                                          ; 20ff: 29 1f       ).
    sta segment_angle                                                 ; 2101: 85 78       .x
    lda #6                                                            ; 2103: a9 06       ..
    sta segment_length                                                ; 2105: 85 74       .t
    lda #$ff                                                          ; 2107: a9 ff       ..
    sta output_pixels                                                 ; 2109: 85 72       .r
    jsr plot_segment                                                  ; 210b: 20 e4 18     ..
    rts                                                               ; 210e: 60          `

unused38
    !byte $ea, $ea, $ea, $ea                                          ; 210f: ea ea ea... ...

random_number_generator
    lda rnd_1                                                         ; 2113: ad d1 1c    ...
    sta y_pixels                                                      ; 2116: 85 7b       .{
    lda rnd_2                                                         ; 2118: ad d2 1c    ...
    sta x_pixels                                                      ; 211b: 85 7a       .z
    lda #8                                                            ; 211d: a9 08       ..
    sta temp11                                                        ; 211f: 85 7c       .|
    lda #$d5                                                          ; 2121: a9 d5       ..
random_number_generator_loop
random_number_generator_loop1
    lsr x_pixels                                                      ; 2123: 46 7a       Fz
    ror y_pixels                                                      ; 2125: 66 7b       f{
    bcc lowest_bit_unset                                              ; 2127: 90 03       ..
    clc                                                               ; 2129: 18          .
    adc #$25                                                          ; 212a: 69 25       i%
lowest_bit_unset
    ror                                                               ; 212c: 6a          j
    ror temp8                                                         ; 212d: 66 75       fu
    dec temp11                                                        ; 212f: c6 7c       .|
    bne random_number_generator_loop                                  ; 2131: d0 f0       ..
    clc                                                               ; 2133: 18          .
    adc rnd_1                                                         ; 2134: 6d d1 1c    m..
    sta rnd_2                                                         ; 2137: 8d d2 1c    ...
    lda temp8                                                         ; 213a: a5 75       .u
    sta rnd_1                                                         ; 213c: 8d d1 1c    ...
    rts                                                               ; 213f: 60          `

unused39
    !byte $ea, $ea, $ea, $ea, $ea, $ea                                ; 2140: ea ea ea... ...
game_key_table
    !byte $9e                                                         ; 2146: 9e          .
    !byte $bd                                                         ; 2147: bd          .
    !byte $9a                                                         ; 2148: 9a          .
    !byte $99                                                         ; 2149: 99          .
    !byte $aa                                                         ; 214a: aa          .
    !byte $ac                                                         ; 214b: ac          .
    !byte $bc                                                         ; 214c: bc          .
    !byte $df                                                         ; 214d: df          .
    !byte $8e                                                         ; 214e: 8e          .
    !byte $ce                                                         ; 214f: ce          .
    !byte $ee                                                         ; 2150: ee          .
    !byte $9c                                                         ; 2151: 9c          .
    !byte $9b                                                         ; 2152: 9b          .
    !byte $ad                                                         ; 2153: ad          .
    !byte $96                                                         ; 2154: 96          .
unused40
    !byte $ff, $ff, $ff, $ff, $96                                     ; 2155: ff ff ff... ...
screen_border_string
    !byte 0,   0, 3, $ff, 5, $19                                      ; 215a: 00 00 03... ...
    !byte 3, $ff, 3, $ff, 5, $19                                      ; 2160: 03 ff 03... ...
    !byte 3, $ff, 0,   0, 5, $19                                      ; 2166: 03 ff 00... ...
    !byte 0,   0, 0,   0, 5, $19                                      ; 216c: 00 00 00... ...
    !byte 0,   0, 4, $ff, 5, $19                                      ; 2172: 00 00 04... ...
    !byte 2, $fc, 4, $ff, 5, $19                                      ; 2178: 02 fc 04... ...
    !byte 2, $fc, 4,   0, 4, $19                                      ; 217e: 02 fc 04... ...
envelope1
    !byte 1, 0, $f8, $fa, $0f, 4, $0a, 8, $7f, $fe, $fc, $ff, $7e, $64; 2184: 01 00 f8... ...            ; Envelope Number (1-16) and rest of definition (14 bytes)
envelope2
    !byte 2, 0, $f8, $fa, $fe, 4, $0a, 8, $7f, $fe, $ff, $ff, $64, $50; 2192: 02 00 f8... ...            ; Envelope Number (1-16) and rest of definition (14 bytes)
envelope3
    !byte 3, $86, $ff, 0, 1, 3, 1, 2, $7f, $ff, $fd, $fd, $7e, $78    ; 21a0: 03 86 ff... ...            ; Envelope Number (1-16) and rest of definition (14 bytes)
envelope4
    !byte 4, 0, $10, $f0, $10, 4, 8, 4, $7f, $ff, $ff, $ff, $7e, $64  ; 21ae: 04 00 10... ...            ; Envelope Number (1-16) and rest of definition (14 bytes)
unused41
    !byte 1, 2, 3, 4, 5, 6, 7, 8, 9, $0a, $0b, $0c                    ; 21bc: 01 02 03... ...
; ----------------------------------------------------------------------------------
; Exploding starship 1
; ----------------------------------------------------------------------------------
sound_1
    !byte $11, 0, 0, 0                                                ; 21c8: 11 00 00... ...            ; Channel (2 bytes); Amplitude (2 bytes)
sound_1_pitch
    !byte 0, 0, 8, 0                                                  ; 21cc: 00 00 08... ...            ; Pitch (2 bytes); Duration (2 bytes)
; ----------------------------------------------------------------------------------
; Exploding starship 2
; ----------------------------------------------------------------------------------
sound_2
    !byte $10, 0                                                      ; 21d0: 10 00       ..             ; Channel (2 bytes)
sound_1_volume_low
    !byte 0                                                           ; 21d2: 00          .              ; Amplitude (2 bytes)
sound_1_volume_high
    !byte 0, 7, 0, 8, 0                                               ; 21d3: 00 07 00... ...            ; Pitch (2 bytes); Duration (2 bytes)
; ----------------------------------------------------------------------------------
; Starship fired torpedo
; ----------------------------------------------------------------------------------
sound_3
    !byte $13, 0, 1, 0, $80, 0, 4, 0                                  ; 21d8: 13 00 01... ...            ; Channel (2 bytes); Amplitude (2 bytes); Pitch (2 bytes); Duration (2 bytes)
; ----------------------------------------------------------------------------------
; Enemy ship fired torpedo
; ----------------------------------------------------------------------------------
sound_4
    !byte $12, 0, 2, 0, $c0, 0, $1f, 0                                ; 21e0: 12 00 02... ...
; ----------------------------------------------------------------------------------
; Enemy ship hit by torpedo
; ----------------------------------------------------------------------------------
sound_5
    !byte $12, 0, 4, 0, $40, 0, 8, 0                                  ; 21e8: 12 00 04... ...
; ----------------------------------------------------------------------------------
; Starship hit by torpedo
; ----------------------------------------------------------------------------------
sound_6
    !byte $12, 0, 4, 0, $be, 0, 8, 0                                  ; 21f0: 12 00 04... ...
; ----------------------------------------------------------------------------------
; Enemy ships collided with each other
; ----------------------------------------------------------------------------------
sound_7
    !byte $13, 0, 2, 0, $6c, 0, 8, 0                                  ; 21f8: 13 00 02... ...            ; Channel (2 bytes); Amplitude (2 bytes); Pitch (2 bytes); Duration (2 bytes)
; ----------------------------------------------------------------------------------
; Escape capsule launched
; ----------------------------------------------------------------------------------
sound_8
    !byte $13, 0                                                      ; 2200: 13 00       ..             ; Channel (2 bytes)
sound_8_volume_low
    !byte 0                                                           ; 2202: 00          .              ; Amplitude (2 bytes)
sound_8_volume_high
    !byte 0, $64, 0, 4, 0                                             ; 2203: 00 64 00... .d.            ; Pitch (2 bytes); Duration (2 bytes)
; ----------------------------------------------------------------------------------
; Low energy warning
; ----------------------------------------------------------------------------------
sound_9
    !byte $11, 0, $f1, $ff, $c8, 0, 4, 0                              ; 2208: 11 00 f1... ...            ; Channel (2 bytes); Amplitude (2 bytes); Pitch (2 bytes); Duration (2 bytes)
; ----------------------------------------------------------------------------------
set_foreground_colour_to_white_string
    !byte 0, 0, 0, 7, 1, $13                                          ; 2210: 00 00 00... ...
set_foreground_colour_to_black_string
    !byte 0, 0, 0, 0, 1, $13                                          ; 2216: 00 00 00... ...
set_background_colour_to_black_string
    !byte 0, 0, 0, 0, 0, $13                                          ; 221c: 00 00 00... ...
energy_string
    !text "YGRENE"                                                    ; 2222: 59 47 52... YGR
    !byte $11, $21, $1f                                               ; 2228: 11 21 1f    .!.
one_two_three_four_string
    !byte 4, $34, $0a, 8, $33, $0a, 8, $32, $0a, 8, $31, 5, 1, $ac, 4 ; 222b: 04 34 0a... .4.
    !byte 8,   4, $19                                                 ; 223a: 08 04 19    ...
shields_string
    !text "NO"                                                        ; 223d: 4e 4f       NO
    !byte 5, $23, $1f                                                 ; 223f: 05 23 1f    .#.
    !text "SDLEIHS"                                                   ; 2242: 53 44 4c... SDL
    !byte 2, $21, $1f                                                 ; 2249: 02 21 1f    .!.
blank_string
    !byte $20, $20, 5, $23, $1f                                       ; 224c: 20 20 05...   .
    !text "       "                                                   ; 2251: 20 20 20...
    !byte 2, $21, $1f                                                 ; 2258: 02 21 1f    .!.
enable_cursor_string
    !byte 0, 0, 0, 0, 0, 0, $60, $0a, 0, $17                          ; 225b: 00 00 00... ...
disable_cursor_string
    !byte 0, 0, 0, 0, 0, 0, $3c, $0a, 0, $17                          ; 2265: 00 00 00... ...
unused42
    !byte $ea, $ea, $ea, $ea, $ea, $ea                                ; 226f: ea ea ea... ...

plot_energy_bar_edges
    lda #$93                                                          ; 2275: a9 93       ..
    sta y_pixels                                                      ; 2277: 85 7b       .{
    lda #5                                                            ; 2279: a9 05       ..
    sta temp8                                                         ; 227b: 85 75       .u
    inc screen_start_high                                             ; 227d: e6 79       .y
plot_energy_bar_edges_loop
    lda #$0d                                                          ; 227f: a9 0d       ..
    sta x_pixels                                                      ; 2281: 85 7a       .z
    lda #$32                                                          ; 2283: a9 32       .2
    jsr plot_horizontal_line                                          ; 2285: 20 db 1b     ..
    lda y_pixels                                                      ; 2288: a5 7b       .{
    clc                                                               ; 228a: 18          .
    adc #8                                                            ; 228b: 69 08       i.
    sta y_pixels                                                      ; 228d: 85 7b       .{
    dec temp8                                                         ; 228f: c6 75       .u
    bne plot_energy_bar_edges_loop                                    ; 2291: d0 ec       ..
    lda #$93                                                          ; 2293: a9 93       ..
    sta y_pixels                                                      ; 2295: 85 7b       .{
    lda #$0c                                                          ; 2297: a9 0c       ..
    sta x_pixels                                                      ; 2299: 85 7a       .z
    lda #$21                                                          ; 229b: a9 21       .!
    jsr plot_vertical_line                                            ; 229d: 20 cf 1b     ..
    dec screen_start_high                                             ; 22a0: c6 79       .y
    rts                                                               ; 22a2: 60          `

; ----------------------------------------------------------------------------------
plot_energy_text
    ldx #8                                                            ; 22a3: a2 08       ..
loop
    lda energy_string,x                                               ; 22a5: bd 22 22    .""
    jsr oswrch                                                        ; 22a8: 20 ee ff     ..            ; Write character
    dex                                                               ; 22ab: ca          .
    bpl loop                                                          ; 22ac: 10 f7       ..
    ldx #$11                                                          ; 22ae: a2 11       ..
    rts                                                               ; 22b0: 60          `

; ----------------------------------------------------------------------------------
plot_one_two_three_four_text
    ldx #$11                                                          ; 22b1: a2 11       ..
loop1
    lda one_two_three_four_string,x                                   ; 22b3: bd 2b 22    .+"
    jsr oswrch                                                        ; 22b6: 20 ee ff     ..            ; Write character
    dex                                                               ; 22b9: ca          .
    bpl loop1                                                         ; 22ba: 10 f7       ..
    rts                                                               ; 22bc: 60          `

; ----------------------------------------------------------------------------------
plot_shields_text
    ldx #$0e                                                          ; 22bd: a2 0e       ..
loop2
    lda shields_string,x                                              ; 22bf: bd 3d 22    .="
    jsr oswrch                                                        ; 22c2: 20 ee ff     ..            ; Write character
    dex                                                               ; 22c5: ca          .
    bpl loop2                                                         ; 22c6: 10 f7       ..
    rts                                                               ; 22c8: 60          `

; ----------------------------------------------------------------------------------
plot_blank_text
    ldx #$0e                                                          ; 22c9: a2 0e       ..
loop3
    lda blank_string,x                                                ; 22cb: bd 4c 22    .L"
    jsr oswrch                                                        ; 22ce: 20 ee ff     ..            ; Write character
    dex                                                               ; 22d1: ca          .
    bpl loop3                                                         ; 22d2: 10 f7       ..
    rts                                                               ; 22d4: 60          `

; ----------------------------------------------------------------------------------
initialise_envelopes
    ldx #<(envelope1)                                                 ; 22d5: a2 84       ..
    ldy #>(envelope1)                                                 ; 22d7: a0 21       .!
    lda #osword_envelope                                              ; 22d9: a9 08       ..
    jsr osword                                                        ; 22db: 20 f1 ff     ..            ; ENVELOPE command
    ldx #<(envelope2)                                                 ; 22de: a2 92       ..
    ldy #>(envelope2)                                                 ; 22e0: a0 21       .!
    lda #osword_envelope                                              ; 22e2: a9 08       ..
    jsr osword                                                        ; 22e4: 20 f1 ff     ..            ; ENVELOPE command
    ldx #<(envelope3)                                                 ; 22e7: a2 a0       ..
    ldy #>(envelope3)                                                 ; 22e9: a0 21       .!
    lda #osword_envelope                                              ; 22eb: a9 08       ..
    jsr osword                                                        ; 22ed: 20 f1 ff     ..            ; ENVELOPE command
    ldx #<(envelope4)                                                 ; 22f0: a2 ae       ..
    ldy #>(envelope4)                                                 ; 22f2: a0 21       .!
    lda #osword_envelope                                              ; 22f4: a9 08       ..
    jsr osword                                                        ; 22f6: 20 f1 ff     ..            ; ENVELOPE command
    rts                                                               ; 22f9: 60          `

plot_screen_border
    ldx #$29                                                          ; 22fa: a2 29       .)
loop_c22fc
    lda screen_border_string,x                                        ; 22fc: bd 5a 21    .Z!
    jsr oswrch                                                        ; 22ff: 20 ee ff     ..            ; Write character
    dex                                                               ; 2302: ca          .
    bpl loop_c22fc                                                    ; 2303: 10 f7       ..
    rts                                                               ; 2305: 60          `

set_foreground_colour_to_white
    ldx #5                                                            ; 2306: a2 05       ..
loop_c2308
    lda set_foreground_colour_to_white_string,x                       ; 2308: bd 10 22    .."
    jsr oswrch                                                        ; 230b: 20 ee ff     ..            ; Write character
    dex                                                               ; 230e: ca          .
    bpl loop_c2308                                                    ; 230f: 10 f7       ..
    rts                                                               ; 2311: 60          `

set_foreground_colour_to_black
    ldx #5                                                            ; 2312: a2 05       ..
loop_c2314
    lda set_foreground_colour_to_black_string,x                       ; 2314: bd 16 22    .."
    jsr oswrch                                                        ; 2317: 20 ee ff     ..            ; Write character
    dex                                                               ; 231a: ca          .
    bpl loop_c2314                                                    ; 231b: 10 f7       ..
    rts                                                               ; 231d: 60          `

set_background_colour_to_black
    ldx #5                                                            ; 231e: a2 05       ..
loop_c2320
    lda set_background_colour_to_black_string,x                       ; 2320: bd 1c 22    .."
    jsr oswrch                                                        ; 2323: 20 ee ff     ..            ; Write character
    dex                                                               ; 2326: ca          .
    bpl loop_c2320                                                    ; 2327: 10 f7       ..
    rts                                                               ; 2329: 60          `

enable_cursor
    ldx #9                                                            ; 232a: a2 09       ..
enable_cursor_loop
    lda enable_cursor_string,x                                        ; 232c: bd 5b 22    .["
    jsr oswrch                                                        ; 232f: 20 ee ff     ..            ; Write character
    dex                                                               ; 2332: ca          .
    bpl enable_cursor_loop                                            ; 2333: 10 f7       ..
    rts                                                               ; 2335: 60          `

; ----------------------------------------------------------------------------------
disable_cursor
    ldx #9                                                            ; 2336: a2 09       ..
loop4
disable_cursor_loop
    lda disable_cursor_string,x                                       ; 2338: bd 65 22    .e"
    jsr oswrch                                                        ; 233b: 20 ee ff     ..            ; Write character
    dex                                                               ; 233e: ca          .
    bpl loop4                                                         ; 233f: 10 f7       ..
    rts                                                               ; 2341: 60          `

unused43
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea                 ; 2342: ea ea ea... ...

check_for_keypresses
    ldy escape_capsule_launched                                       ; 234b: ac d8 1c    ...
    bne return17                                                      ; 234e: d0 67       .g
    ldy keyboard_or_joystick                                          ; 2350: ac d6 1c    ...
    beq use_keyboard_input                                            ; 2353: f0 09       ..
    jsr get_joystick_input                                            ; 2355: 20 00 49     .I
    lda #4                                                            ; 2358: a9 04       ..
    sta temp8                                                         ; 235a: 85 75       .u
    bne check_for_additional_keys                                     ; 235c: d0 2c       .,             ; ALWAYS branch

use_keyboard_input
    lda #$ff                                                          ; 235e: a9 ff       ..
    sta temp8                                                         ; 2360: 85 75       .u
    jsr check_key                                                     ; 2362: 20 36 24     6$
    beq not_rotate_anticlockwise                                      ; 2365: f0 03       ..
    dec rotation_delta                                                ; 2367: ce 27 19    .'.
not_rotate_anticlockwise
    jsr check_key                                                     ; 236a: 20 36 24     6$
    beq not_rotate_clockwise                                          ; 236d: f0 03       ..
    inc rotation_delta                                                ; 236f: ee 27 19    .'.
not_rotate_clockwise
    jsr check_key                                                     ; 2372: 20 36 24     6$
    beq not_accelerate                                                ; 2375: f0 03       ..
    inc velocity_delta                                                ; 2377: ee 2e 19    ...
not_accelerate
    jsr check_key                                                     ; 237a: 20 36 24     6$
    beq not_decelerate                                                ; 237d: f0 03       ..
    dec velocity_delta                                                ; 237f: ce 2e 19    ...
not_decelerate
    jsr check_key                                                     ; 2382: 20 36 24     6$
    beq check_for_additional_keys                                     ; 2385: f0 03       ..
    inc fire_pressed                                                  ; 2387: ee 1a 19    ...
check_for_additional_keys
    jsr check_key                                                     ; 238a: 20 36 24     6$
    beq not_launch_starboard_escape_capsule                           ; 238d: f0 03       ..
    jmp launch_escape_capsule_starboard                               ; 238f: 4c db 28    L.(

not_launch_starboard_escape_capsule
    jsr check_key                                                     ; 2392: 20 36 24     6$
    beq not_launch_port_escape_capsule                                ; 2395: f0 03       ..
    jmp launch_escape_capsule_port                                    ; 2397: 4c d7 28    L.(

not_launch_port_escape_capsule
    lda keyboard_or_joystick                                          ; 239a: ad d6 1c    ...
    beq is_keyboard                                                   ; 239d: f0 06       ..
    lda #$0a                                                          ; 239f: a9 0a       ..
    sta temp8                                                         ; 23a1: 85 75       .u
    bne skip_damper_keys                                              ; 23a3: d0 34       .4             ; ALWAYS branch

is_keyboard
    lda rotation_delta                                                ; 23a5: ad 27 19    .'.
    ora velocity_delta                                                ; 23a8: 0d 2e 19    ...
    bne return17                                                      ; 23ab: d0 0a       ..
    jsr check_key                                                     ; 23ad: 20 36 24     6$
    beq not_enable_rotation_damper                                    ; 23b0: f0 06       ..
    lda #1                                                            ; 23b2: a9 01       ..
    sta rotation_damper                                               ; 23b4: 8d 2c 19    .,.
return17
    rts                                                               ; 23b7: 60          `

not_enable_rotation_damper
    jsr check_key                                                     ; 23b8: 20 36 24     6$
    beq not_enable_velocity_damper                                    ; 23bb: f0 06       ..
    lda #1                                                            ; 23bd: a9 01       ..
    sta velocity_damper                                               ; 23bf: 8d 31 19    .1.
    rts                                                               ; 23c2: 60          `

not_enable_velocity_damper
    jsr check_key                                                     ; 23c3: 20 36 24     6$
    beq not_disable_rotation_damper                                   ; 23c6: f0 06       ..
    lda #0                                                            ; 23c8: a9 00       ..
    sta rotation_damper                                               ; 23ca: 8d 2c 19    .,.
    rts                                                               ; 23cd: 60          `

not_disable_rotation_damper
    jsr check_key                                                     ; 23ce: 20 36 24     6$
    beq skip_damper_keys                                              ; 23d1: f0 06       ..
    lda #0                                                            ; 23d3: a9 00       ..
    sta velocity_damper                                               ; 23d5: 8d 31 19    .1.
    rts                                                               ; 23d8: 60          `

skip_damper_keys
    jsr check_key                                                     ; 23d9: 20 36 24     6$
    beq not_enable_shields                                            ; 23dc: f0 04       ..
    inc shields_state_delta                                           ; 23de: ee 26 19    .&.
    rts                                                               ; 23e1: 60          `

not_enable_shields
    jsr check_key                                                     ; 23e2: 20 36 24     6$
    beq not_disable_shields                                           ; 23e5: f0 04       ..
    dec shields_state_delta                                           ; 23e7: ce 26 19    .&.
    rts                                                               ; 23ea: 60          `

not_disable_shields
    jsr check_key                                                     ; 23eb: 20 36 24     6$
    beq check_for_copy                                                ; 23ee: f0 2e       ..
    lda #1                                                            ; 23f0: a9 01       ..
    sta starship_automatic_shields                                    ; 23f2: 8d 24 19    .$.
    rts                                                               ; 23f5: 60          `

unused44
    jsr check_key                                                     ; 23f6: 20 36 24     6$
    beq unused_not_copy                                               ; 23f9: f0 03       ..
    jmp check_for_copy                                                ; 23fb: 4c 1e 24    L.$

unused_not_copy
    jsr check_key                                                     ; 23fe: 20 36 24     6$
    beq unused_not_shift_one                                          ; 2401: f0 03       ..
    jmp check_for_copy                                                ; 2403: 4c 1e 24    L.$

unused_not_shift_one
    jsr check_key                                                     ; 2406: 20 36 24     6$
    beq unused_not_shift_two                                          ; 2409: f0 03       ..
    jmp check_for_copy                                                ; 240b: 4c 1e 24    L.$

unused_not_shift_two
    jsr check_key                                                     ; 240e: 20 36 24     6$
    beq unused_not_shift_three                                        ; 2411: f0 03       ..
    jmp check_for_copy                                                ; 2413: 4c 1e 24    L.$

unused_not_shift_three
    jsr check_key                                                     ; 2416: 20 36 24     6$
    beq check_for_copy                                                ; 2419: f0 03       ..
    jmp check_for_copy                                                ; 241b: 4c 1e 24    L.$

check_for_copy
    jsr check_key                                                     ; 241e: 20 36 24     6$
    beq return18                                                      ; 2421: f0 03       ..
    jmp pause_game                                                    ; 2423: 4c 49 24    LI$

return18
    rts                                                               ; 2426: 60          `

unused45
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 2427: ea ea ea... ...
    !byte $ea, $ea, $ea                                               ; 2433: ea ea ea    ...

check_key
    inc temp8                                                         ; 2436: e6 75       .u
    ldx temp8                                                         ; 2438: a6 75       .u
    lda game_key_table,x                                              ; 243a: bd 46 21    .F!
    tay                                                               ; 243d: a8          .
    tax                                                               ; 243e: aa          .
    lda #osbyte_inkey                                                 ; 243f: a9 81       ..
    jsr osbyte                                                        ; 2441: 20 f4 ff     ..            ; Read key within time limit, or read a specific key, or read machine type
    tya                                                               ; 2444: 98          .
    rts                                                               ; 2445: 60          `

unused46
    !byte $ea, $ea, $ea                                               ; 2446: ea ea ea    ...

pause_game
    ldx #inkey_key_delete                                             ; 2449: a2 a6       ..             ; X=inkey key value
    ldy #$a6                                                          ; 244b: a0 a6       ..
    lda #osbyte_inkey                                                 ; 244d: a9 81       ..
    jsr osbyte                                                        ; 244f: 20 f4 ff     ..            ; Is the 'DELETE' key pressed?
    tya                                                               ; 2452: 98          .              ; X and Y contain $ff if the key is pressed
    beq pause_game                                                    ; 2453: f0 f4       ..
    rts                                                               ; 2455: 60          `

unused47
    !byte $ea, $ea, $ea, $ea                                          ; 2456: ea ea ea... ...

play_sounds
    lda sound_enabled                                                 ; 245a: ad d7 1c    ...
    beq sound_is_enabled                                              ; 245d: f0 01       ..
    rts                                                               ; 245f: 60          `

sound_is_enabled
    lda enemy_torpedo_hits_against_starship                           ; 2460: ad dd 1c    ...
    beq no_enemy_torpedo_hits_against_starship                        ; 2463: f0 0b       ..
    lda starship_has_exploded                                         ; 2465: ad c9 1c    ...
    bne skip_explosion_or_firing_sound                                ; 2468: d0 1f       ..
    ldx #$f0                                                          ; 246a: a2 f0       ..
    ldy #$21                                                          ; 246c: a0 21       .!
    bne play_explosion_or_firing_sound                                ; 246e: d0 14       ..             ; ALWAYS branch

no_enemy_torpedo_hits_against_starship
    lda enemy_ship_was_hit                                            ; 2470: ad de 1c    ...
    beq no_enemy_ship_was_hit                                         ; 2473: f0 06       ..
    ldx #$e8                                                          ; 2475: a2 e8       ..
    ldy #$21                                                          ; 2477: a0 21       .!
    bne play_explosion_or_firing_sound                                ; 2479: d0 09       ..             ; ALWAYS branch

no_enemy_ship_was_hit
    lda enemy_ship_fired_torpedo                                      ; 247b: ad dc 1c    ...
    beq skip_explosion_or_firing_sound                                ; 247e: f0 09       ..
    ldx #$e0                                                          ; 2480: a2 e0       ..
    ldy #$21                                                          ; 2482: a0 21       .!
play_explosion_or_firing_sound
    lda #osword_sound                                                 ; 2484: a9 07       ..
    jsr osword                                                        ; 2486: 20 f1 ff     ..            ; SOUND command
skip_explosion_or_firing_sound
    ldy #0                                                            ; 2489: a0 00       ..
    lda escape_capsule_launched                                       ; 248b: ad d8 1c    ...
    beq set_escape_capsule_sound_channel                              ; 248e: f0 06       ..
    lda escape_capsule_destroyed                                      ; 2490: ad 90 28    ..(
    bne set_escape_capsule_sound_channel                              ; 2493: d0 01       ..
    iny                                                               ; 2495: c8          .              ; Y=$01
set_escape_capsule_sound_channel
    sty escape_capsule_sound_channel                                  ; 2496: 8c db 1c    ...
    lda starship_has_exploded                                         ; 2499: ad c9 1c    ...
    bne play_sound_for_exploding_starship                             ; 249c: d0 64       .d
    lda score_delta_low                                               ; 249e: ad 63 2d    .c-
    ora score_delta_high                                              ; 24a1: 0d 64 2d    .d-
    beq skip_sound_for_exploding_enemy_ship                           ; 24a4: f0 09       ..
    ldx #<(sound_11)                                                  ; 24a6: a2 f8       ..
    ldy #>(sound_11)                                                  ; 24a8: a0 49       .I
    lda #osword_sound                                                 ; 24aa: a9 07       ..
    jsr osword                                                        ; 24ac: 20 f1 ff     ..            ; SOUND command
skip_sound_for_exploding_enemy_ship
    lda escape_capsule_sound_channel                                  ; 24af: ad db 1c    ...
    beq escape_capsule_not_launched                                   ; 24b2: f0 03       ..
    jmp play_escape_capsule_sound                                     ; 24b4: 4c 4d 25    LM%

escape_capsule_not_launched
    lda sound_needed_for_low_energy                                   ; 24b7: ad f1 25    ..%
    beq play_starship_engine_sound                                    ; 24ba: f0 0f       ..
    dec sound_needed_for_low_energy                                   ; 24bc: ce f1 25    ..%
    ldx #<(sound_9)                                                   ; 24bf: a2 08       ..
    ldy #>(sound_9)                                                   ; 24c1: a0 22       ."
    lda #osword_sound                                                 ; 24c3: a9 07       ..
    jsr osword                                                        ; 24c5: 20 f1 ff     ..            ; SOUND command
    jmp consider_torpedo_sound                                        ; 24c8: 4c 7d 25    L}%

play_starship_engine_sound
    lda starship_velocity_low                                         ; 24cb: ad 01 0f    ...
    clc                                                               ; 24ce: 18          .
    adc #$40                                                          ; 24cf: 69 40       i@
    sta x_pixels                                                      ; 24d1: 85 7a       .z
    lda #0                                                            ; 24d3: a9 00       ..
    adc starship_velocity_high                                        ; 24d5: 6d 00 0f    m..
    asl x_pixels                                                      ; 24d8: 06 7a       .z
    rol                                                               ; 24da: 2a          *
    adc starship_rotation_magnitude                                   ; 24db: 6d 03 0f    m..
    sta sound_10_pitch                                                ; 24de: 8d f4 49    ..I
    cmp #$0a                                                          ; 24e1: c9 0a       ..
    bcc skip_ceiling                                                  ; 24e3: 90 03       ..
    lda #9                                                            ; 24e5: a9 09       ..
    clc                                                               ; 24e7: 18          .
skip_ceiling
    eor #$ff                                                          ; 24e8: 49 ff       I.
    adc #1                                                            ; 24ea: 69 01       i.
    sta sound_10_volume_low                                           ; 24ec: 8d f2 49    ..I
    lda #$ff                                                          ; 24ef: a9 ff       ..
    adc #0                                                            ; 24f1: 69 00       i.
    sta sound_10_volume_high                                          ; 24f3: 8d f3 49    ..I
    ldx #<(sound_10)                                                  ; 24f6: a2 f0       ..
    ldy #>(sound_10)                                                  ; 24f8: a0 49       .I
    lda #osword_sound                                                 ; 24fa: a9 07       ..
    jsr osword                                                        ; 24fc: 20 f1 ff     ..            ; SOUND command
    jmp consider_torpedo_sound                                        ; 24ff: 4c 7d 25    L}%

play_sound_for_exploding_starship
    lda starship_explosion_countdown                                  ; 2502: ad ce 1c    ...
    sec                                                               ; 2505: 38          8
    sbc frame_of_starship_explosion_after_which_no_sound              ; 2506: ed da 1c    ...
    bcc skip_starship_explosion_sound                                 ; 2509: 90 38       .8
    sta x_pixels                                                      ; 250b: 85 7a       .z
    rol                                                               ; 250d: 2a          *
    cmp #$56                                                          ; 250e: c9 56       .V
    bcc skip_pitch_bend                                               ; 2510: 90 04       ..
    sbc #$40                                                          ; 2512: e9 40       .@
    rol                                                               ; 2514: 2a          *
    rol                                                               ; 2515: 2a          *
skip_pitch_bend
    sta sound_1_pitch                                                 ; 2516: 8d cc 21    ..!
    lda x_pixels                                                      ; 2519: a5 7a       .z
    lsr                                                               ; 251b: 4a          J
    cmp #$10                                                          ; 251c: c9 10       ..
    bcc skip_ceiling1                                                 ; 251e: 90 03       ..
    lda #$0f                                                          ; 2520: a9 0f       ..
    clc                                                               ; 2522: 18          .
skip_ceiling1
    eor #$ff                                                          ; 2523: 49 ff       I.
    adc #1                                                            ; 2525: 69 01       i.
    sta sound_1_volume_low                                            ; 2527: 8d d2 21    ..!
    lda #$ff                                                          ; 252a: a9 ff       ..
    adc #0                                                            ; 252c: 69 00       i.
    sta sound_1_volume_high                                           ; 252e: 8d d3 21    ..!
    ldx #<(sound_1)                                                   ; 2531: a2 c8       ..
    ldy #>(sound_1)                                                   ; 2533: a0 21       .!
    lda #osword_sound                                                 ; 2535: a9 07       ..
    jsr osword                                                        ; 2537: 20 f1 ff     ..            ; SOUND command
    ldx #<(sound_2)                                                   ; 253a: a2 d0       ..
    ldy #>(sound_2)                                                   ; 253c: a0 21       .!
    lda #osword_sound                                                 ; 253e: a9 07       ..
    jsr osword                                                        ; 2540: 20 f1 ff     ..            ; SOUND command
skip_starship_explosion_sound
    lda escape_capsule_sound_channel                                  ; 2543: ad db 1c    ...
    beq consider_torpedo_sound                                        ; 2546: f0 35       .5
    lda #3                                                            ; 2548: a9 03       ..
    sta escape_capsule_sound_channel                                  ; 254a: 8d db 1c    ...
play_escape_capsule_sound
    ora #$10                                                          ; 254d: 09 10       ..
    sta sound_8                                                       ; 254f: 8d 00 22    .."
    lda self_destruct_countdown                                       ; 2552: ad 91 28    ..(
    and #1                                                            ; 2555: 29 01       ).
    beq set_volume                                                    ; 2557: f0 0a       ..
    lda self_destruct_countdown                                       ; 2559: ad 91 28    ..(
    lsr                                                               ; 255c: 4a          J
    lsr                                                               ; 255d: 4a          J
    eor #$ff                                                          ; 255e: 49 ff       I.
    clc                                                               ; 2560: 18          .
    adc #1                                                            ; 2561: 69 01       i.
set_volume
    sta sound_8_volume_low                                            ; 2563: 8d 02 22    .."
    beq set_volume_high                                               ; 2566: f0 02       ..
    lda #$ff                                                          ; 2568: a9 ff       ..
set_volume_high
    sta sound_8_volume_high                                           ; 256a: 8d 03 22    .."
    ldx #<(sound_8)                                                   ; 256d: a2 00       ..
    ldy #>(sound_8)                                                   ; 256f: a0 22       ."
    lda #osword_sound                                                 ; 2571: a9 07       ..
    jsr osword                                                        ; 2573: 20 f1 ff     ..            ; SOUND command
    lda escape_capsule_sound_channel                                  ; 2576: ad db 1c    ...
    cmp #3                                                            ; 2579: c9 03       ..
    beq return19                                                      ; 257b: f0 1c       ..
consider_torpedo_sound
    lda starship_fired_torpedo                                        ; 257d: ad 58 26    .X&
    beq skip_starship_torpedo_sound                                   ; 2580: f0 09       ..
    ldx #<(sound_3)                                                   ; 2582: a2 d8       ..
    ldy #>(sound_3)                                                   ; 2584: a0 21       .!
    lda #osword_sound                                                 ; 2586: a9 07       ..
    jmp osword                                                        ; 2588: 4c f1 ff    L..            ; SOUND command

skip_starship_torpedo_sound
    lda enemy_ships_collided_with_each_other                          ; 258b: ad d1 17    ...
    beq return19                                                      ; 258e: f0 09       ..
    ldx #<(sound_7)                                                   ; 2590: a2 f8       ..
    ldy #>(sound_7)                                                   ; 2592: a0 21       .!
    lda #osword_sound                                                 ; 2594: a9 07       ..
    jsr osword                                                        ; 2596: 20 f1 ff     ..            ; SOUND command
return19
    rts                                                               ; 2599: 60          `

unused48
    !byte $ea, $ea, $ff, $60, $ea, $ea, $ff, $ff, $ff, $ff, $ff, $ff  ; 259a: ea ea ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 25a6: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 25b2: ff ff ff... ...
    !byte $ff, $ff,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 25be: ff ff 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0       ; 25ca: 00 00 00... ...
starship_maximum_x_for_collisions_with_enemy_torpedoes
    !byte $86                                                         ; 25d5: 86          .
starship_minimum_x_for_collisions_with_enemy_torpedoes
    !byte $78                                                         ; 25d6: 78          x
starship_maximum_y_for_collisions_with_enemy_torpedoes
    !byte $86                                                         ; 25d7: 86          .
starship_minimum_y_for_collisions_with_enemy_torpedoes
    !byte $7a                                                         ; 25d8: 7a          z
starship_maximum_x_for_collisions_with_enemy_ships
    !byte $8c                                                         ; 25d9: 8c          .
starship_minimum_x_for_collisions_with_enemy_ships
    !byte $73                                                         ; 25da: 73          s
starship_maximum_y_for_collisions_with_enemy_ships
    !byte $8c                                                         ; 25db: 8c          .
starship_minimum_y_for_collisions_with_enemy_ships
    !byte $76                                                         ; 25dc: 76          v
enemy_ship_was_hit_by_collision_with_other_enemy_ship
    !byte 4                                                           ; 25dd: 04          .
starship_collided_with_enemy_ship
    !byte 0                                                           ; 25de: 00          .
frame_of_starship_explosion_after_which_no_collisions
    !byte $4a                                                         ; 25df: 4a          J
enemy_ships_collision_x_difference
    !byte 6                                                           ; 25e0: 06          .
enemy_ships_collision_y_difference
    !byte 5                                                           ; 25e1: 05          .
unused49
    !byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0                    ; 25e2: 00 00 00... ...
timer_for_low_energy_warning_sound
    !byte 0                                                           ; 25f0: 00          .
sound_needed_for_low_energy
    !byte 0                                                           ; 25f1: 00          .
energy_flash_timer
    !byte 0                                                           ; 25f2: 00          .

flash_energy_when_low
    lda energy_flash_timer                                            ; 25f3: ad f2 25    ..%
    bne energy_is_already_low                                         ; 25f6: d0 12       ..
    lda starship_energy_divided_by_sixteen                            ; 25f8: ad 22 19    .".
    cmp #$32                                                          ; 25fb: c9 32       .2
    bcs consider_warning_sound                                        ; 25fd: b0 15       ..
    lda #4                                                            ; 25ff: a9 04       ..
    sta energy_flash_timer                                            ; 2601: 8d f2 25    ..%
    jsr invert_energy_text                                            ; 2604: 20 29 26     )&
    jmp consider_warning_sound                                        ; 2607: 4c 14 26    L.&

energy_is_already_low
    dec energy_flash_timer                                            ; 260a: ce f2 25    ..%
    cmp #2                                                            ; 260d: c9 02       ..
    bne consider_warning_sound                                        ; 260f: d0 03       ..
    jsr invert_energy_text                                            ; 2611: 20 29 26     )&
consider_warning_sound
    dec timer_for_low_energy_warning_sound                            ; 2614: ce f0 25    ..%
    bne return20                                                      ; 2617: d0 0f       ..
    lda #8                                                            ; 2619: a9 08       ..
    sta timer_for_low_energy_warning_sound                            ; 261b: 8d f0 25    ..%
    lda starship_energy_divided_by_sixteen                            ; 261e: ad 22 19    .".
    cmp #$19                                                          ; 2621: c9 19       ..
    bcs return20                                                      ; 2623: b0 03       ..
    inc sound_needed_for_low_energy                                   ; 2625: ee f1 25    ..%
return20
    rts                                                               ; 2628: 60          `

invert_energy_text
    ldy #$2f                                                          ; 2629: a0 2f       ./
invert_energy_text_loop
    lda energy_screen_address,y                                       ; 262b: b9 48 6e    .Hn
    eor #$ff                                                          ; 262e: 49 ff       I.
    sta energy_screen_address,y                                       ; 2630: 99 48 6e    .Hn
    dey                                                               ; 2633: 88          .
    bpl invert_energy_text_loop                                       ; 2634: 10 f5       ..
    rts                                                               ; 2636: 60          `

unused50
    !byte $ea, $ea, $ea, $ff, $ff, $ff, $ff, $ff, $ff, 0, 0, 0, 0, 0  ; 2637: ea ea ea... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0, 0, 0, 0, 0     ; 2645: 00 00 00... ...
enemy_ships_can_cloak
    !byte 1                                                           ; 2652: 01          .
probability_of_enemy_ship_cloaking
    !byte $3f                                                         ; 2653: 3f          ?
minimum_energy_for_enemy_ship_to_cloak
    !byte $40                                                         ; 2654: 40          @
enemy_ship_desired_angle_divided_by_eight
    !byte 0                                                           ; 2655: 00          .
unused51
    !byte 7                                                           ; 2656: 07          .
number_of_live_starship_torpedoes
    !byte 0                                                           ; 2657: 00          .
starship_fired_torpedo
    !byte $ea                                                         ; 2658: ea          .
scanner_failure_duration
    !byte $ea                                                         ; 2659: ea          .
starship_shields_active_before_failure
    !byte $ea                                                         ; 265a: ea          .
starship_torpedo_type
    !byte 0                                                           ; 265b: 00          .
unused52
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea       ; 265c: ea ea ea... ...

handle_enemy_ships_cloaking
    lda enemy_ships_can_cloak                                         ; 2667: ad 52 26    .R&
    beq return21                                                      ; 266a: f0 5d       .]
    lda maximum_number_of_enemy_ships                                 ; 266c: ad 4f 0e    .O.
    sta enemy_ships_still_to_consider                                 ; 266f: 8d 54 0e    .T.
    ldx #0                                                            ; 2672: a2 00       ..
handle_enemy_ships_cloaking_loop
    lda enemy_ships_type,x                                            ; 2674: bd 0a 04    ...
    cmp #4                                                            ; 2677: c9 04       ..
    ror temp8                                                         ; 2679: 66 75       fu
    bmi enemy_ship_is_already_cloaked                                 ; 267b: 30 04       0.
    cmp #1                                                            ; 267d: c9 01       ..
    bne handle_enemy_ships_cloaking_next                              ; 267f: d0 3e       .>
enemy_ship_is_already_cloaked
    ldy enemy_ships_on_screen,x                                       ; 2681: bc 80 04    ...
    beq enemy_ship_is_on_screen1                                      ; 2684: f0 08       ..
    and #3                                                            ; 2686: 29 03       ).
    sta enemy_ships_type,x                                            ; 2688: 9d 0a 04    ...
    jmp handle_enemy_ships_cloaking_next                              ; 268b: 4c bf 26    L.&

enemy_ship_is_on_screen1
    ldy enemy_ships_energy,x                                          ; 268e: bc 89 04    ...
    cpy minimum_energy_for_enemy_ship_to_cloak                        ; 2691: cc 54 26    .T&
    bcs enemy_ship_has_sufficient_energy_to_cloak                     ; 2694: b0 0f       ..
    asl temp8                                                         ; 2696: 06 75       .u
    bcc handle_enemy_ships_cloaking_next                              ; 2698: 90 25       .%
    and #3                                                            ; 269a: 29 03       ).
    sta enemy_ships_type,x                                            ; 269c: 9d 0a 04    ...
    jsr plot_enemy_ship                                               ; 269f: 20 fc 1b     ..
    jmp handle_enemy_ships_cloaking_next                              ; 26a2: 4c bf 26    L.&

enemy_ship_has_sufficient_energy_to_cloak
    asl temp8                                                         ; 26a5: 06 75       .u
    bcs handle_enemy_ships_cloaking_next                              ; 26a7: b0 16       ..
    jsr random_number_generator                                       ; 26a9: 20 13 21     .!
    lda rnd_2                                                         ; 26ac: ad d2 1c    ...
    and probability_of_enemy_ship_cloaking                            ; 26af: 2d 53 26    -S&
    bne handle_enemy_ships_cloaking_next                              ; 26b2: d0 0b       ..
    jsr plot_enemy_ship                                               ; 26b4: 20 fc 1b     ..
    lda enemy_ships_type,x                                            ; 26b7: bd 0a 04    ...
    ora #4                                                            ; 26ba: 09 04       ..
    sta enemy_ships_type,x                                            ; 26bc: 9d 0a 04    ...
handle_enemy_ships_cloaking_next
    txa                                                               ; 26bf: 8a          .
    clc                                                               ; 26c0: 18          .
    adc #$0b                                                          ; 26c1: 69 0b       i.
    tax                                                               ; 26c3: aa          .
    dec enemy_ships_still_to_consider                                 ; 26c4: ce 54 0e    .T.
    bne handle_enemy_ships_cloaking_loop                              ; 26c7: d0 ab       ..
return21
    rts                                                               ; 26c9: 60          `

unused53
    !byte $ea, $ea                                                    ; 26ca: ea ea       ..

fire_enemy_torpedo
    lda torpedoes_still_to_consider                                   ; 26cc: ad 55 0e    .U.
    beq leave_after_clearing_carry                                    ; 26cf: f0 1d       ..
    lda enemy_ships_firing_cooldown,x                                 ; 26d1: bd 8a 04    ...
    and #$0f                                                          ; 26d4: 29 0f       ).
    bne leave_after_clearing_carry                                    ; 26d6: d0 16       ..
    ldy #0                                                            ; 26d8: a0 00       ..
find_enemy_torpedo_slot_loop
    lda (temp0_low),y                                                 ; 26da: b1 80       ..
    beq free_slot                                                     ; 26dc: f0 12       ..
    lda temp0_low                                                     ; 26de: a5 80       ..
    clc                                                               ; 26e0: 18          .
    adc #6                                                            ; 26e1: 69 06       i.
    sta temp0_low                                                     ; 26e3: 85 80       ..
    bcc skip26                                                        ; 26e5: 90 02       ..
    inc temp0_high                                                    ; 26e7: e6 81       ..
skip26
    dec torpedoes_still_to_consider                                   ; 26e9: ce 55 0e    .U.
    bne find_enemy_torpedo_slot_loop                                  ; 26ec: d0 ec       ..
leave_after_clearing_carry
    clc                                                               ; 26ee: 18          .
    rts                                                               ; 26ef: 60          `

free_slot
    lda enemy_ships_angle,x                                           ; 26f0: bd 87 04    ...
    lsr                                                               ; 26f3: 4a          J
    lsr                                                               ; 26f4: 4a          J
    lsr                                                               ; 26f5: 4a          J
    cmp enemy_ship_desired_angle_divided_by_eight                     ; 26f6: cd 55 26    .U&
    bne leave_after_clearing_carry                                    ; 26f9: d0 f3       ..
    lda enemy_ships_firing_cooldown,x                                 ; 26fb: bd 8a 04    ...
    lsr                                                               ; 26fe: 4a          J
    lsr                                                               ; 26ff: 4a          J
    lsr                                                               ; 2700: 4a          J
    lsr                                                               ; 2701: 4a          J
    adc enemy_ships_firing_cooldown,x                                 ; 2702: 7d 8a 04    }..
    sta enemy_ships_firing_cooldown,x                                 ; 2705: 9d 8a 04    ...
    lda enemy_ships_flags_or_explosion_timer,x                        ; 2708: bd 09 04    ...
    and #$10                                                          ; 270b: 29 10       ).
    beq single_torpedo                                                ; 270d: f0 03       ..
    jmp fire_enemy_torpedo_cluster                                    ; 270f: 4c d4 29    L.)

single_torpedo
    lda value_used_for_enemy_torpedo_ttl                              ; 2712: ad 36 0e    .6.
    ldy #0                                                            ; 2715: a0 00       ..
    sta (temp0_low),y                                                 ; 2717: 91 80       ..
    lda enemy_ships_angle,x                                           ; 2719: bd 87 04    ...
    ldy #5                                                            ; 271c: a0 05       ..
    sta (temp0_low),y                                                 ; 271e: 91 80       ..
    lsr                                                               ; 2720: 4a          J
    lsr                                                               ; 2721: 4a          J
    lsr                                                               ; 2722: 4a          J
    tay                                                               ; 2723: a8          .
    lda sine_table,y                                                  ; 2724: b9 58 0e    .X.
    clc                                                               ; 2727: 18          .
    adc enemy_ships_x_pixels,x                                        ; 2728: 7d 82 04    }..
    sta x_pixels                                                      ; 272b: 85 7a       .z
    lda cosine_table,y                                                ; 272d: b9 78 0e    .x.
    clc                                                               ; 2730: 18          .
    adc enemy_ships_x_pixels1,x                                       ; 2731: 7d 85 04    }..
    ldy #4                                                            ; 2734: a0 04       ..
    sta (temp0_low),y                                                 ; 2736: 91 80       ..
    ldy #2                                                            ; 2738: a0 02       ..
    lda x_pixels                                                      ; 273a: a5 7a       .z
    sta (temp0_low),y                                                 ; 273c: 91 80       ..
    inc enemy_ship_fired_torpedo                                      ; 273e: ee dc 1c    ...
    stx temp8                                                         ; 2741: 86 75       .u
    jsr plot_enemy_torpedo                                            ; 2743: 20 11 16     ..
    ldx temp8                                                         ; 2746: a6 75       .u
    dec torpedoes_still_to_consider                                   ; 2748: ce 55 0e    .U.
    lda temp0_low                                                     ; 274b: a5 80       ..
    clc                                                               ; 274d: 18          .
    adc #6                                                            ; 274e: 69 06       i.
    sta temp0_low                                                     ; 2750: 85 80       ..
    bcc skip27                                                        ; 2752: 90 02       ..
    inc temp0_high                                                    ; 2754: e6 81       ..
skip27
    sec                                                               ; 2756: 38          8
    rts                                                               ; 2757: 60          `

calculate_enemy_ship_angle_to_starship
    lda temp9                                                         ; 2758: a5 76       .v
    sec                                                               ; 275a: 38          8
    bmi skip_inversion_y3                                             ; 275b: 30 05       0.
    eor #$ff                                                          ; 275d: 49 ff       I.
    sbc #1                                                            ; 275f: e9 01       ..
    clc                                                               ; 2761: 18          .
skip_inversion_y3
    ror temp8                                                         ; 2762: 66 75       fu
    sec                                                               ; 2764: 38          8
    sbc #$7f                                                          ; 2765: e9 7f       ..
    sta y_pixels                                                      ; 2767: 85 7b       .{
    lda temp10                                                        ; 2769: a5 77       .w
    sec                                                               ; 276b: 38          8
    bmi skip_inversion_x3                                             ; 276c: 30 05       0.
    eor #$ff                                                          ; 276e: 49 ff       I.
    sbc #1                                                            ; 2770: e9 01       ..
    clc                                                               ; 2772: 18          .
skip_inversion_x3
    ror temp8                                                         ; 2773: 66 75       fu
    sec                                                               ; 2775: 38          8
    sbc #$7f                                                          ; 2776: e9 7f       ..
    sta x_pixels                                                      ; 2778: 85 7a       .z
    cmp y_pixels                                                      ; 277a: c5 7b       .{
    bcs skip_swap                                                     ; 277c: b0 06       ..
    ldy y_pixels                                                      ; 277e: a4 7b       .{
    sty x_pixels                                                      ; 2780: 84 7a       .z
    sta y_pixels                                                      ; 2782: 85 7b       .{
skip_swap
    ror temp8                                                         ; 2784: 66 75       fu
    lda #0                                                            ; 2786: a9 00       ..
    sta temp11                                                        ; 2788: 85 7c       .|
    ldy #$0c                                                          ; 278a: a0 0c       ..
division_loop
    asl x_pixels                                                      ; 278c: 06 7a       .z
    rol                                                               ; 278e: 2a          *
    cmp y_pixels                                                      ; 278f: c5 7b       .{
    bcc still_less_than                                               ; 2791: 90 02       ..
    sbc y_pixels                                                      ; 2793: e5 7b       .{
still_less_than
    rol temp11                                                        ; 2795: 26 7c       &|
    bcs ninety_degrees                                                ; 2797: b0 3a       .:
    dey                                                               ; 2799: 88          .
    bne division_loop                                                 ; 279a: d0 f0       ..
    ldy #$0c                                                          ; 279c: a0 0c       ..
    lda temp11                                                        ; 279e: a5 7c       .|
    cmp #$14                                                          ; 27a0: c9 14       ..
    bcc finished_calculating_partial_angle                            ; 27a2: 90 10       ..
    dey                                                               ; 27a4: 88          .              ; Y=$0b
    cmp #$1e                                                          ; 27a5: c9 1e       ..
    bcc finished_calculating_partial_angle                            ; 27a7: 90 0b       ..
    dey                                                               ; 27a9: 88          .              ; Y=$0a
    cmp #$35                                                          ; 27aa: c9 35       .5
    bcc finished_calculating_partial_angle                            ; 27ac: 90 06       ..
    dey                                                               ; 27ae: 88          .              ; Y=$09
    cmp #$a3                                                          ; 27af: c9 a3       ..
    bcc finished_calculating_partial_angle                            ; 27b1: 90 01       ..
    dey                                                               ; 27b3: 88          .              ; Y=$08
finished_calculating_partial_angle
    tya                                                               ; 27b4: 98          .
adjust_angle_for_inversions_and_swap
    rol temp8                                                         ; 27b5: 26 75       &u
    bcs skip_angle_swap                                               ; 27b7: b0 04       ..
    eor #7                                                            ; 27b9: 49 07       I.
    adc #1                                                            ; 27bb: 69 01       i.
skip_angle_swap
    rol temp8                                                         ; 27bd: 26 75       &u
    bcs skip_angle_inversion_x                                        ; 27bf: b0 04       ..
    eor #$1f                                                          ; 27c1: 49 1f       I.
    adc #1                                                            ; 27c3: 69 01       i.
skip_angle_inversion_x
    rol temp8                                                         ; 27c5: 26 75       &u
    bcs skip_angle_inversion_x1                                       ; 27c7: b0 04       ..
    eor #$0f                                                          ; 27c9: 49 0f       I.
    adc #1                                                            ; 27cb: 69 01       i.
skip_angle_inversion_x1
    and #$1f                                                          ; 27cd: 29 1f       ).
    sta enemy_ship_desired_angle_divided_by_eight                     ; 27cf: 8d 55 26    .U&
    rts                                                               ; 27d2: 60          `

ninety_degrees
    lda #8                                                            ; 27d3: a9 08       ..
    bne adjust_angle_for_inversions_and_swap                          ; 27d5: d0 de       ..             ; ALWAYS branch

unused54
    nop                                                               ; 27d7: ea          .
    nop                                                               ; 27d8: ea          .
    nop                                                               ; 27d9: ea          .
    nop                                                               ; 27da: ea          .
    brk                                                               ; 27db: 00          .

    !byte 0, 0, 0, 0                                                  ; 27dc: 00 00 00... ...

collide_enemy_ships
    ldx temp0_low                                                     ; 27e0: a6 80       ..
    lda enemy_ships_energy,x                                          ; 27e2: bd 89 04    ...
    beq first_ship_is_already_exploding                               ; 27e5: f0 24       .$
    sec                                                               ; 27e7: 38          8
    sbc damage_enemy_ship_incurs_from_collision_with_other_enemy_ship ; 27e8: ed 31 0e    .1.
    bcs skip_floor                                                    ; 27eb: b0 02       ..
    lda #0                                                            ; 27ed: a9 00       ..
skip_floor
    sta enemy_ships_energy,x                                          ; 27ef: 9d 89 04    ...
    bne first_ship_survives_collision                                 ; 27f2: d0 06       ..
    jsr explode_enemy_ship                                            ; 27f4: 20 5d 1f     ].
    inc enemy_ship_was_hit_by_collision_with_other_enemy_ship         ; 27f7: ee dd 25    ..%
first_ship_survives_collision
    lda enemy_ships_type,x                                            ; 27fa: bd 0a 04    ...
    cmp #4                                                            ; 27fd: c9 04       ..
    bcc first_ship_is_already_exploding                               ; 27ff: 90 0a       ..
    and #3                                                            ; 2801: 29 03       ).
    sta enemy_ships_type,x                                            ; 2803: 9d 0a 04    ...
    lda #1                                                            ; 2806: a9 01       ..
    sta enemy_ships_previous_on_screen,x                              ; 2808: 9d 00 04    ...
first_ship_is_already_exploding
    ldy temp1_low                                                     ; 280b: a4 82       ..
    lda enemy_ships_velocity,x                                        ; 280d: bd 08 04    ...
    sta x_pixels                                                      ; 2810: 85 7a       .z
    lda enemy_ships_velocity,y                                        ; 2812: b9 08 04    ...
    sta y_pixels                                                      ; 2815: 85 7b       .{
    lda enemy_ships_angle,x                                           ; 2817: bd 87 04    ...
    sta temp7                                                         ; 281a: 85 88       ..
    lda enemy_ships_angle,y                                           ; 281c: b9 87 04    ...
    sta enemy_ships_angle,x                                           ; 281f: 9d 87 04    ...
    lda temp7                                                         ; 2822: a5 88       ..
    sta enemy_ships_angle,y                                           ; 2824: 99 87 04    ...
    sec                                                               ; 2827: 38          8
    sbc enemy_ships_angle,x                                           ; 2828: fd 87 04    ...
    bpl skip_inversion4                                               ; 282b: 10 02       ..
    eor #$ff                                                          ; 282d: 49 ff       I.
skip_inversion4
    lsr                                                               ; 282f: 4a          J
    lsr                                                               ; 2830: 4a          J
    lsr                                                               ; 2831: 4a          J
    lsr                                                               ; 2832: 4a          J
    lsr                                                               ; 2833: 4a          J
    beq skip_velocity_absorption                                      ; 2834: f0 09       ..
angle_loop
    lsr x_pixels                                                      ; 2836: 46 7a       Fz
    lsr y_pixels                                                      ; 2838: 46 7b       F{
    sec                                                               ; 283a: 38          8
    sbc #1                                                            ; 283b: e9 01       ..
    bne angle_loop                                                    ; 283d: d0 f7       ..
skip_velocity_absorption
    lda x_pixels                                                      ; 283f: a5 7a       .z
    sta enemy_ships_velocity,y                                        ; 2841: 99 08 04    ...
    lda y_pixels                                                      ; 2844: a5 7b       .{
    sta enemy_ships_velocity,x                                        ; 2846: 9d 08 04    ...
    lda enemy_ships_collision_x_difference                            ; 2849: ad e0 25    ..%
    cmp enemy_ships_collision_y_difference                            ; 284c: cd e1 25    ..%
    bcs use_x_pixels_and_difference                                   ; 284f: b0 09       ..
    inx                                                               ; 2851: e8          .
    inx                                                               ; 2852: e8          .
    inx                                                               ; 2853: e8          .
    iny                                                               ; 2854: c8          .
    iny                                                               ; 2855: c8          .
    iny                                                               ; 2856: c8          .
    lda enemy_ships_collision_y_difference                            ; 2857: ad e1 25    ..%
use_x_pixels_and_difference
    sta y_pixels                                                      ; 285a: 85 7b       .{
    lda size_of_enemy_ship_for_collisions_between_enemy_ships         ; 285c: ad 3b 0e    .;.
    sec                                                               ; 285f: 38          8
    sbc y_pixels                                                      ; 2860: e5 7b       .{
    clc                                                               ; 2862: 18          .
    adc #1                                                            ; 2863: 69 01       i.
    lsr                                                               ; 2865: 4a          J
    sta y_pixels                                                      ; 2866: 85 7b       .{
    lda enemy_ships_x_pixels,x                                        ; 2868: bd 82 04    ...
    cmp enemy_ships_x_pixels,y                                        ; 286b: d9 82 04    ...
    bcs dont_swap_two_ships_for_collision                             ; 286e: b0 06       ..
    sty x_pixels                                                      ; 2870: 84 7a       .z
    txa                                                               ; 2872: 8a          .
    tay                                                               ; 2873: a8          .
    ldx x_pixels                                                      ; 2874: a6 7a       .z
dont_swap_two_ships_for_collision
    lda enemy_ships_x_pixels,x                                        ; 2876: bd 82 04    ...
    clc                                                               ; 2879: 18          .
    adc y_pixels                                                      ; 287a: 65 7b       e{
    bcs dont_alter_first_ships_position                               ; 287c: b0 03       ..
    sta enemy_ships_x_pixels,x                                        ; 287e: 9d 82 04    ...
dont_alter_first_ships_position
    lda enemy_ships_x_pixels,y                                        ; 2881: b9 82 04    ...
    sec                                                               ; 2884: 38          8
    sbc y_pixels                                                      ; 2885: e5 7b       .{
    bcc dont_alter_second_ships_position                              ; 2887: 90 03       ..
    sta enemy_ships_x_pixels,y                                        ; 2889: 99 82 04    ...
dont_alter_second_ships_position
    jmp consider_next_second_enemy_ship                               ; 288c: 4c cc 18    L..

unused55
    !byte $ff                                                         ; 288f: ff          .
escape_capsule_destroyed
    !byte 0                                                           ; 2890: 00          .
self_destruct_countdown
    !byte 0                                                           ; 2891: 00          .
escape_capsule_on_screen
    !byte 0                                                           ; 2892: 00          .
escape_capsule_x_fraction
    !byte 0                                                           ; 2893: 00          .
escape_capsule_x_pixels
    !byte 0                                                           ; 2894: 00          .
escape_capsule_y_fraction
    !byte 0                                                           ; 2895: 00          .
escape_capsule_y_pixels
    !byte 0                                                           ; 2896: 00          .
escape_capsule_launch_direction
    !byte 0                                                           ; 2897: 00          .
unused56
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea                      ; 2898: ea ea ea... ...

initialise_game_screen
    jsr disable_cursor                                                ; 28a0: 20 36 23     6#
    jsr set_foreground_colour_to_black                                ; 28a3: 20 12 23     .#
    jsr set_background_colour_to_black                                ; 28a6: 20 1e 23     .#
    jsr initialise_starship_explosion_pieces                          ; 28a9: 20 03 1f     ..
    jsr initialise_envelopes                                          ; 28ac: 20 d5 22     ."
    jsr plot_starship                                                 ; 28af: 20 8e 1d     ..
    jsr plot_energy_text                                              ; 28b2: 20 a3 22     ."
    jsr plot_one_two_three_four_text                                  ; 28b5: 20 b1 22     ."
    jsr plot_energy_bar_edges                                         ; 28b8: 20 75 22     u"
    jsr plot_gauge_edges                                              ; 28bb: 20 ac 2e     ..
    jsr plot_scanner_grid                                             ; 28be: 20 61 2e     a.
    jsr plot_command_number                                           ; 28c1: 20 a5 35     .5
    jsr plot_screen_border                                            ; 28c4: 20 fa 22     ."
    jsr plot_stars                                                    ; 28c7: 20 24 1d     $.
    jsr plot_top_and_right_edge_of_long_range_scanner_with_blank_text ; 28ca: 20 2b 14     +.
    jsr initialise_joystick_and_cursor_keys                           ; 28cd: 20 2f 36     /6
    jsr set_foreground_colour_to_white                                ; 28d0: 20 06 23     .#
    rts                                                               ; 28d3: 60          `

unused57
    !byte $ea, $ea, $ea                                               ; 28d4: ea ea ea    ...

launch_escape_capsule_port
    ldy #$c0                                                          ; 28d7: a0 c0       ..
    bne launch_escape_capsule                                         ; 28d9: d0 02       ..             ; ALWAYS branch

launch_escape_capsule_starboard
    ldy #$40                                                          ; 28db: a0 40       .@
launch_escape_capsule
    inc escape_capsule_launched                                       ; 28dd: ee d8 1c    ...
    sty escape_capsule_launch_direction                               ; 28e0: 8c 97 28    ..(
    lda #$3f                                                          ; 28e3: a9 3f       .?
    sta self_destruct_countdown                                       ; 28e5: 8d 91 28    ..(
    jsr plot_escape_capsule_launched                                  ; 28e8: 20 f7 35     .5
    lda #$7f                                                          ; 28eb: a9 7f       ..
    sta escape_capsule_x_pixels                                       ; 28ed: 8d 94 28    ..(
    sta escape_capsule_y_pixels                                       ; 28f0: 8d 96 28    ..(
    sta escape_capsule_on_screen                                      ; 28f3: 8d 92 28    ..(
    bne update_escape_capsule                                         ; 28f6: d0 1c       ..             ; ALWAYS branch

handle_starship_self_destruct
    lda escape_capsule_launched                                       ; 28f8: ad d8 1c    ...
    beq return22                                                      ; 28fb: f0 67       .g
    lda self_destruct_countdown                                       ; 28fd: ad 91 28    ..(
    beq skip_immense_damage                                           ; 2900: f0 0a       ..
    dec self_destruct_countdown                                       ; 2902: ce 91 28    ..(
    bne skip_immense_damage                                           ; 2905: d0 05       ..
    lda #$40                                                          ; 2907: a9 40       .@
    sta damage_high                                                   ; 2909: 8d 1e 19    ...
skip_immense_damage
    lda escape_capsule_on_screen                                      ; 290c: ad 92 28    ..(
    beq return22                                                      ; 290f: f0 53       .S
    jsr plot_escape_capsule                                           ; 2911: 20 98 29     .)
update_escape_capsule
    lda #$92                                                          ; 2914: a9 92       ..
    sta temp0_low                                                     ; 2916: 85 80       ..
    lda #$28                                                          ; 2918: a9 28       .(
    sta temp0_high                                                    ; 291a: 85 81       ..
    ldy #1                                                            ; 291c: a0 01       ..
    jsr update_object_position_for_starship_rotation_and_speed        ; 291e: 20 e6 0f     ..
    lda escape_capsule_launch_direction                               ; 2921: ad 97 28    ..(
    clc                                                               ; 2924: 18          .
    adc starship_angle_delta                                          ; 2925: 6d 33 0e    m3.
    sta escape_capsule_launch_direction                               ; 2928: 8d 97 28    ..(
    lsr                                                               ; 292b: 4a          J
    lsr                                                               ; 292c: 4a          J
    lsr                                                               ; 292d: 4a          J
    tay                                                               ; 292e: a8          .
    lda sine_table,y                                                  ; 292f: b9 58 0e    .X.
    clc                                                               ; 2932: 18          .
    adc escape_capsule_x_pixels                                       ; 2933: 6d 94 28    m.(
    sta escape_capsule_x_pixels                                       ; 2936: 8d 94 28    ..(
    lda cosine_table,y                                                ; 2939: b9 78 0e    .x.
    clc                                                               ; 293c: 18          .
    adc escape_capsule_y_pixels                                       ; 293d: 6d 96 28    m.(
    sta escape_capsule_y_pixels                                       ; 2940: 8d 96 28    ..(
    sec                                                               ; 2943: 38          8
    sbc y_pixels                                                      ; 2944: e5 7b       .{
    bcs skip_inversion5                                               ; 2946: b0 02       ..
    eor #$ff                                                          ; 2948: 49 ff       I.
skip_inversion5
    cmp #$40                                                          ; 294a: c9 40       .@
    bcs mark_escape_capsule_as_off_screen                             ; 294c: b0 43       .C
    lda escape_capsule_x_pixels                                       ; 294e: ad 94 28    ..(
    sec                                                               ; 2951: 38          8
    sbc x_pixels                                                      ; 2952: e5 7a       .z
    bcs skip_inversion6                                               ; 2954: b0 02       ..
    eor #$ff                                                          ; 2956: 49 ff       I.
skip_inversion6
    cmp #$40                                                          ; 2958: c9 40       .@
    bcs mark_escape_capsule_as_off_screen                             ; 295a: b0 35       .5
    jsr check_for_collision_with_enemy_ships                          ; 295c: 20 9d 15     ..
    bcs escape_capsule_collided_with_enemy_ship                       ; 295f: b0 04       ..
    jsr plot_escape_capsule                                           ; 2961: 20 98 29     .)
return22
    rts                                                               ; 2964: 60          `

escape_capsule_collided_with_enemy_ship
    lda maximum_number_of_enemy_ships                                 ; 2965: ad 4f 0e    .O.
    sec                                                               ; 2968: 38          8
    sbc enemy_ships_still_to_consider                                 ; 2969: ed 54 0e    .T.
    sta x_pixels                                                      ; 296c: 85 7a       .z
    asl                                                               ; 296e: 0a          .
    asl                                                               ; 296f: 0a          .
    adc x_pixels                                                      ; 2970: 65 7a       ez
    asl                                                               ; 2972: 0a          .
    adc x_pixels                                                      ; 2973: 65 7a       ez
    tax                                                               ; 2975: aa          .
    lda enemy_ships_energy,x                                          ; 2976: bd 89 04    ...
    beq enemy_ship_is_already_exploding                               ; 2979: f0 08       ..
    lda #0                                                            ; 297b: a9 00       ..
    sta enemy_ships_energy,x                                          ; 297d: 9d 89 04    ...
    jsr explode_enemy_ship                                            ; 2980: 20 5d 1f     ].
enemy_ship_is_already_exploding
    ldy #0                                                            ; 2983: a0 00       ..
    sty escape_capsule_on_screen                                      ; 2985: 8c 92 28    ..(
    jsr plot_expiring_torpedo                                         ; 2988: 20 8a 13     ..
    lda #1                                                            ; 298b: a9 01       ..
    sta escape_capsule_destroyed                                      ; 298d: 8d 90 28    ..(
    rts                                                               ; 2990: 60          `

mark_escape_capsule_as_off_screen
    lda #0                                                            ; 2991: a9 00       ..
    sta escape_capsule_on_screen                                      ; 2993: 8d 92 28    ..(
    rts                                                               ; 2996: 60          `

unused58
    !byte $ea                                                         ; 2997: ea          .

plot_escape_capsule
    lda escape_capsule_x_pixels                                       ; 2998: ad 94 28    ..(
    sta x_pixels                                                      ; 299b: 85 7a       .z
    lda escape_capsule_y_pixels                                       ; 299d: ad 96 28    ..(
    sta y_pixels                                                      ; 29a0: 85 7b       .{
    jsr eor_pixel                                                     ; 29a2: 20 64 0f     d.
    inc x_pixels                                                      ; 29a5: e6 7a       .z
    jsr eor_pixel                                                     ; 29a7: 20 64 0f     d.
    inc y_pixels                                                      ; 29aa: e6 7b       .{
    dec x_pixels                                                      ; 29ac: c6 7a       .z
    jsr eor_pixel                                                     ; 29ae: 20 64 0f     d.
    dec x_pixels                                                      ; 29b1: c6 7a       .z
    dec y_pixels                                                      ; 29b3: c6 7b       .{
    jsr eor_pixel                                                     ; 29b5: 20 64 0f     d.
    inc x_pixels                                                      ; 29b8: e6 7a       .z
    dec y_pixels                                                      ; 29ba: c6 7b       .{
    jsr eor_pixel                                                     ; 29bc: 20 64 0f     d.
    rts                                                               ; 29bf: 60          `

unused59
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 29c0: ea ea ea... ...
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea                      ; 29cc: ea ea ea... ...

fire_enemy_torpedo_cluster
    lda enemy_ships_angle,x                                           ; 29d4: bd 87 04    ...
    lsr                                                               ; 29d7: 4a          J
    lsr                                                               ; 29d8: 4a          J
    lsr                                                               ; 29d9: 4a          J
    tay                                                               ; 29da: a8          .
    lda sine_table,y                                                  ; 29db: b9 58 0e    .X.
    clc                                                               ; 29de: 18          .
    adc enemy_ships_x_pixels,x                                        ; 29df: 7d 82 04    }..
    sta output_fraction                                               ; 29e2: 85 73       .s
    lda cosine_table,y                                                ; 29e4: b9 78 0e    .x.
    clc                                                               ; 29e7: 18          .
    adc enemy_ships_x_pixels1,x                                       ; 29e8: 7d 85 04    }..
    sta output_pixels                                                 ; 29eb: 85 72       .r
    jsr add_single_torpedo_to_enemy_torpedo_cluster                   ; 29ed: 20 13 2a     .*
    dec output_fraction                                               ; 29f0: c6 73       .s
    dec output_fraction                                               ; 29f2: c6 73       .s
    dec output_pixels                                                 ; 29f4: c6 72       .r
    dec output_pixels                                                 ; 29f6: c6 72       .r
    jsr add_single_torpedo_to_enemy_torpedo_cluster                   ; 29f8: 20 13 2a     .*
    inc output_fraction                                               ; 29fb: e6 73       .s
    inc output_fraction                                               ; 29fd: e6 73       .s
    dec output_pixels                                                 ; 29ff: c6 72       .r
    dec output_pixels                                                 ; 2a01: c6 72       .r
    jsr add_single_torpedo_to_enemy_torpedo_cluster                   ; 2a03: 20 13 2a     .*
    inc output_fraction                                               ; 2a06: e6 73       .s
    inc output_fraction                                               ; 2a08: e6 73       .s
    inc output_pixels                                                 ; 2a0a: e6 72       .r
    inc output_pixels                                                 ; 2a0c: e6 72       .r
    jsr add_single_torpedo_to_enemy_torpedo_cluster                   ; 2a0e: 20 13 2a     .*
    sec                                                               ; 2a11: 38          8
    rts                                                               ; 2a12: 60          `

add_single_torpedo_to_enemy_torpedo_cluster
    ldy #0                                                            ; 2a13: a0 00       ..
    lda value_used_for_enemy_torpedo_ttl                              ; 2a15: ad 36 0e    .6.
    sta (temp0_low),y                                                 ; 2a18: 91 80       ..
    ldy #2                                                            ; 2a1a: a0 02       ..
    lda output_fraction                                               ; 2a1c: a5 73       .s
    sta (temp0_low),y                                                 ; 2a1e: 91 80       ..
    ldy #4                                                            ; 2a20: a0 04       ..
    lda output_pixels                                                 ; 2a22: a5 72       .r
    sta (temp0_low),y                                                 ; 2a24: 91 80       ..
    iny                                                               ; 2a26: c8          .              ; Y=$05
    lda enemy_ships_angle,x                                           ; 2a27: bd 87 04    ...
    sta (temp0_low),y                                                 ; 2a2a: 91 80       ..
    inc enemy_ship_fired_torpedo                                      ; 2a2c: ee dc 1c    ...
    stx temp8                                                         ; 2a2f: 86 75       .u
    jsr plot_enemy_torpedo                                            ; 2a31: 20 11 16     ..
    ldx temp8                                                         ; 2a34: a6 75       .u
    ldy #0                                                            ; 2a36: a0 00       ..
find_free_torpedo_slot
    dec torpedoes_still_to_consider                                   ; 2a38: ce 55 0e    .U.
    beq dont_add_any_more_torpedoes_to_cluster                        ; 2a3b: f0 10       ..
    lda temp0_low                                                     ; 2a3d: a5 80       ..
    clc                                                               ; 2a3f: 18          .
    adc #6                                                            ; 2a40: 69 06       i.
    sta temp0_low                                                     ; 2a42: 85 80       ..
    bcc skip28                                                        ; 2a44: 90 02       ..
    inc temp0_high                                                    ; 2a46: e6 81       ..
skip28
    lda (temp0_low),y                                                 ; 2a48: b1 80       ..
    bne find_free_torpedo_slot                                        ; 2a4a: d0 ec       ..
    rts                                                               ; 2a4c: 60          `

dont_add_any_more_torpedoes_to_cluster
    pla                                                               ; 2a4d: 68          h
    pla                                                               ; 2a4e: 68          h
    sec                                                               ; 2a4f: 38          8
    rts                                                               ; 2a50: 60          `

unused60
    !byte $ea, $ea, $ea, $ea, $ea                                     ; 2a51: ea ea ea... ...
angle_to_action_table
    !byte 0, 0, 1, 3, 7, 5, 2, 2                                      ; 2a56: 00 00 01... ...
unused61
    !byte $ea                                                         ; 2a5e: ea          .
enemy_ship_behaviour_routine_low_table
    !byte <(enemy_ship_behaviour_routine0)                            ; 2a5f: 49          I
    !byte <(enemy_ship_behaviour_routine1)                            ; 2a60: b1          .
    !byte <(enemy_ship_behaviour_routine2)                            ; 2a61: ee          .
    !byte <(enemy_ship_behaviour_routine3)                            ; 2a62: 1e          .
    !byte <(enemy_ship_behaviour_routine4)                            ; 2a63: 41          A
    !byte <(enemy_ship_behaviour_routine5)                            ; 2a64: 6a          j
    !byte <(enemy_ship_behaviour_routine6)                            ; 2a65: 2e          .
    !byte <(enemy_ship_behaviour_routine7)                            ; 2a66: 61          a
    !byte <(enemy_ship_behaviour_routine4)                            ; 2a67: 41          A
    !byte <(enemy_ship_behaviour_routine0)                            ; 2a68: 49          I
    !byte <(enemy_ship_behaviour_routine7)                            ; 2a69: 61          a
    !byte <(enemy_ship_behaviour_routine5)                            ; 2a6a: 6a          j
    !byte <(enemy_ship_behaviour_routine6)                            ; 2a6b: 2e          .
    !byte <(enemy_ship_behaviour_routine2)                            ; 2a6c: ee          .
    !byte <(enemy_ship_behaviour_routine3)                            ; 2a6d: 1e          .
    !byte <(enemy_ship_behaviour_routine1)                            ; 2a6e: b1          .
unused62
    !byte $ea                                                         ; 2a6f: ea          .
enemy_ship_behaviour_routine_high_table
    !byte >(enemy_ship_behaviour_routine0)                            ; 2a70: 32          2
    !byte >(enemy_ship_behaviour_routine1)                            ; 2a71: 32          2
    !byte >(enemy_ship_behaviour_routine2)                            ; 2a72: 32          2
    !byte >(enemy_ship_behaviour_routine3)                            ; 2a73: 33          3
    !byte >(enemy_ship_behaviour_routine4)                            ; 2a74: 33          3
    !byte >(enemy_ship_behaviour_routine5)                            ; 2a75: 33          3
    !byte >(enemy_ship_behaviour_routine6)                            ; 2a76: 37          7
    !byte >(enemy_ship_behaviour_routine7)                            ; 2a77: 37          7
    !byte >(enemy_ship_behaviour_routine4)                            ; 2a78: 33          3
    !byte >(enemy_ship_behaviour_routine0)                            ; 2a79: 32          2
    !byte >(enemy_ship_behaviour_routine7)                            ; 2a7a: 37          7
    !byte >(enemy_ship_behaviour_routine5)                            ; 2a7b: 33          3
    !byte >(enemy_ship_behaviour_routine6)                            ; 2a7c: 37          7
    !byte >(enemy_ship_behaviour_routine2)                            ; 2a7d: 32          2
    !byte >(enemy_ship_behaviour_routine3)                            ; 2a7e: 33          3
    !byte >(enemy_ship_behaviour_routine1)                            ; 2a7f: 32          2
unused63
    !byte $ea                                                         ; 2a80: ea          .
enemy_ship_desired_velocity
    !byte 0                                                           ; 2a81: 00          .
partial_velocity_for_damaged_enemy_ships
    !byte 6                                                           ; 2a82: 06          .
desired_velocity_for_intact_enemy_ships
    !byte $18                                                         ; 2a83: 18          .
unused64
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea                           ; 2a84: ea ea ea... ...

enemy_ship_defensive_behaviour_handling
    lda enemy_ships_on_screen,x                                       ; 2a8b: bd 80 04    ...
    bne unset_retreating_flags                                        ; 2a8e: d0 5f       ._
    lda enemy_ships_x_pixels,x                                        ; 2a90: bd 82 04    ...
    sta temp10                                                        ; 2a93: 85 77       .w
    lda enemy_ships_x_pixels1,x                                       ; 2a95: bd 85 04    ...
    sta temp9                                                         ; 2a98: 85 76       .v
    jsr calculate_enemy_ship_angle_to_starship                        ; 2a9a: 20 58 27     X'
    ldy enemy_ships_temporary_behaviour_flags,x                       ; 2a9d: bc 88 04    ...
    bmi skip_retreating_because_of_damage                             ; 2aa0: 30 10       0.
    lda enemy_ships_flags_or_explosion_timer,x                        ; 2aa2: bd 09 04    ...
    and #$40                                                          ; 2aa5: 29 40       )@
    beq skip_retreating_because_of_damage                             ; 2aa7: f0 09       ..
    tya                                                               ; 2aa9: 98          .
    and #$0f                                                          ; 2aaa: 29 0f       ).
    beq skip_retreating_because_of_damage                             ; 2aac: f0 04       ..
    tya                                                               ; 2aae: 98          .
    ora #$80                                                          ; 2aaf: 09 80       ..
    tay                                                               ; 2ab1: a8          .
skip_retreating_because_of_damage
    lda enemy_ships_flags_or_explosion_timer,x                        ; 2ab2: bd 09 04    ...
    and #$20                                                          ; 2ab5: 29 20       )
    beq skip_retreating_because_of_angle                              ; 2ab7: f0 26       .&
    tya                                                               ; 2ab9: 98          .
    and #$40                                                          ; 2aba: 29 40       )@
    bne already_retreating_because_of_angle                           ; 2abc: d0 11       ..
    lda enemy_ship_desired_angle_divided_by_eight                     ; 2abe: ad 55 26    .U&
    clc                                                               ; 2ac1: 18          .
    adc #3                                                            ; 2ac2: 69 03       i.
    and #$1f                                                          ; 2ac4: 29 1f       ).
    cmp #7                                                            ; 2ac6: c9 07       ..
    bcs skip_retreating_because_of_angle                              ; 2ac8: b0 15       ..
    tya                                                               ; 2aca: 98          .
    ora #$40                                                          ; 2acb: 09 40       .@
    bne set_temporary_behaviour_flags                                 ; 2acd: d0 11       ..
already_retreating_because_of_angle
    lda enemy_ship_desired_angle_divided_by_eight                     ; 2acf: ad 55 26    .U&
    clc                                                               ; 2ad2: 18          .
    adc #5                                                            ; 2ad3: 69 05       i.
    and #$1f                                                          ; 2ad5: 29 1f       ).
    cmp #$0b                                                          ; 2ad7: c9 0b       ..
    bcc skip_retreating_because_of_angle                              ; 2ad9: 90 04       ..
    tya                                                               ; 2adb: 98          .
    and #$bf                                                          ; 2adc: 29 bf       ).
    tay                                                               ; 2ade: a8          .
skip_retreating_because_of_angle
    tya                                                               ; 2adf: 98          .
set_temporary_behaviour_flags
    sta enemy_ships_temporary_behaviour_flags,x                       ; 2ae0: 9d 88 04    ...
    and #$c0                                                          ; 2ae3: 29 c0       ).
    beq leave_after_clearing_carry1                                   ; 2ae5: f0 10       ..
    jsr turn_enemy_ship_towards_desired_angle                         ; 2ae7: 20 cf 2b     .+
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 2aea: 20 3a 2c     :,
    sec                                                               ; 2aed: 38          8
    rts                                                               ; 2aee: 60          `

unset_retreating_flags
    lda enemy_ships_temporary_behaviour_flags,x                       ; 2aef: bd 88 04    ...
    and #$3f                                                          ; 2af2: 29 3f       )?
    sta enemy_ships_temporary_behaviour_flags,x                       ; 2af4: 9d 88 04    ...
leave_after_clearing_carry1
    clc                                                               ; 2af7: 18          .
    rts                                                               ; 2af8: 60          `

unused65
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea                      ; 2af9: ea ea ea... ...

get_rectilinear_distance_from_centre_of_screen_accounting_for_starship_velocity
    lda enemy_ships_x_pixels,x                                        ; 2b01: bd 82 04    ...
    bmi skip_inversion7                                               ; 2b04: 30 02       0.
    eor #$ff                                                          ; 2b06: 49 ff       I.
skip_inversion7
    sta x_pixels                                                      ; 2b08: 85 7a       .z
    lda starship_velocity_low                                         ; 2b0a: ad 01 0f    ...
    sta y_pixels                                                      ; 2b0d: 85 7b       .{
    lda starship_velocity_high                                        ; 2b0f: ad 00 0f    ...
    asl y_pixels                                                      ; 2b12: 06 7b       .{
    rol                                                               ; 2b14: 2a          *
    asl y_pixels                                                      ; 2b15: 06 7b       .{
    rol                                                               ; 2b17: 2a          *
    asl y_pixels                                                      ; 2b18: 06 7b       .{
    rol                                                               ; 2b1a: 2a          *
    adc enemy_ships_x_pixels1,x                                       ; 2b1b: 7d 85 04    }..
    bmi skip_inversion8                                               ; 2b1e: 30 02       0.
    eor #$ff                                                          ; 2b20: 49 ff       I.
skip_inversion8
    clc                                                               ; 2b22: 18          .
    adc x_pixels                                                      ; 2b23: 65 7a       ez
    rts                                                               ; 2b25: 60          `

get_rectilinear_distance_from_centre_of_screen
    lda enemy_ships_x_pixels,x                                        ; 2b26: bd 82 04    ...
    bmi skip_inversion_x4                                             ; 2b29: 30 02       0.
    eor #$ff                                                          ; 2b2b: 49 ff       I.
skip_inversion_x4
    sta x_pixels                                                      ; 2b2d: 85 7a       .z
    lda enemy_ships_x_pixels1,x                                       ; 2b2f: bd 85 04    ...
    bmi skip_inversion_y4                                             ; 2b32: 30 02       0.
    eor #$ff                                                          ; 2b34: 49 ff       I.
skip_inversion_y4
    clc                                                               ; 2b36: 18          .
    adc x_pixels                                                      ; 2b37: 65 7a       ez
    rts                                                               ; 2b39: 60          `

unused66
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea                      ; 2b3a: ea ea ea... ...
turn_enemy_ship_towards_starship_using_pixels_or_screens_unused
    !byte $bd, $80, 4, $f0, $0d                                       ; 2b42: bd 80 04... ...

turn_enemy_ship_towards_starship_using_screens
    lda enemy_ships_x_screens,x                                       ; 2b47: bd 83 04    ...
    sta temp10                                                        ; 2b4a: 85 77       .w
    lda enemy_ships_x_screens1,x                                      ; 2b4c: bd 86 04    ...
    sta temp9                                                         ; 2b4f: 85 76       .v
    jmp turn_enemy_ship_towards_starship                              ; 2b51: 4c 5e 2b    L^+

turn_enemy_ship_towards_starship_using_pixels_unused
    !byte $bd, $82, 4, $85, $77, $bd, $85, 4, $85, $76                ; 2b54: bd 82 04... ...

turn_enemy_ship_towards_starship
    jsr calculate_enemy_ship_angle_to_starship                        ; 2b5e: 20 58 27     X'
turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity
    lda enemy_ship_desired_angle_divided_by_eight                     ; 2b61: ad 55 26    .U&
    clc                                                               ; 2b64: 18          .
    adc #$10                                                          ; 2b65: 69 10       i.
    and #$1f                                                          ; 2b67: 29 1f       ).
    sta enemy_ship_desired_angle_divided_by_eight                     ; 2b69: 8d 55 26    .U&
    cmp #$11                                                          ; 2b6c: c9 11       ..
    bcc skip_inversion9                                               ; 2b6e: 90 05       ..
    eor #$1f                                                          ; 2b70: 49 1f       I.
    adc #0                                                            ; 2b72: 69 00       i.
    sec                                                               ; 2b74: 38          8
skip_inversion9
    ror temp8                                                         ; 2b75: 66 75       fu
    tay                                                               ; 2b77: a8          .
    lda sine_table,y                                                  ; 2b78: b9 58 0e    .X.
    sta y_pixels                                                      ; 2b7b: 85 7b       .{
    lda starship_velocity_low                                         ; 2b7d: ad 01 0f    ...
    sta x_pixels                                                      ; 2b80: 85 7a       .z
    lda starship_velocity_high                                        ; 2b82: ad 00 0f    ...
    asl x_pixels                                                      ; 2b85: 06 7a       .z
    rol                                                               ; 2b87: 2a          *
    asl x_pixels                                                      ; 2b88: 06 7a       .z
    rol                                                               ; 2b8a: 2a          *
    asl x_pixels                                                      ; 2b8b: 06 7a       .z
    rol                                                               ; 2b8d: 2a          *
    sta x_pixels                                                      ; 2b8e: 85 7a       .z
    lda #0                                                            ; 2b90: a9 00       ..
    ldy #3                                                            ; 2b92: a0 03       ..
loop_over_bits_of_sine3
    lsr y_pixels                                                      ; 2b94: 46 7b       F{
    bcc sine_bit_unset3                                               ; 2b96: 90 03       ..
    clc                                                               ; 2b98: 18          .
    adc x_pixels                                                      ; 2b99: 65 7a       ez
sine_bit_unset3
    ror                                                               ; 2b9b: 6a          j
    dey                                                               ; 2b9c: 88          .
    bne loop_over_bits_of_sine3                                       ; 2b9d: d0 f5       ..
    lsr                                                               ; 2b9f: 4a          J
    cmp #2                                                            ; 2ba0: c9 02       ..
    bcc finished_calculating_change_in_angle                          ; 2ba2: 90 15       ..
    iny                                                               ; 2ba4: c8          .
    cmp #5                                                            ; 2ba5: c9 05       ..
    bcc finished_calculating_change_in_angle                          ; 2ba7: 90 10       ..
    iny                                                               ; 2ba9: c8          .
    cmp #8                                                            ; 2baa: c9 08       ..
    bcc finished_calculating_change_in_angle                          ; 2bac: 90 0b       ..
    iny                                                               ; 2bae: c8          .
    cmp #$0b                                                          ; 2baf: c9 0b       ..
    bcc finished_calculating_change_in_angle                          ; 2bb1: 90 06       ..
    iny                                                               ; 2bb3: c8          .
    cmp #$0e                                                          ; 2bb4: c9 0e       ..
    bcc finished_calculating_change_in_angle                          ; 2bb6: 90 01       ..
    iny                                                               ; 2bb8: c8          .
finished_calculating_change_in_angle
    tya                                                               ; 2bb9: 98          .
    asl temp8                                                         ; 2bba: 06 75       .u
    bcc skip_uninversion3                                             ; 2bbc: 90 04       ..
    eor #$1f                                                          ; 2bbe: 49 1f       I.
    adc #0                                                            ; 2bc0: 69 00       i.
skip_uninversion3
    sta y_pixels                                                      ; 2bc2: 85 7b       .{
    lda enemy_ship_desired_angle_divided_by_eight                     ; 2bc4: ad 55 26    .U&
    sec                                                               ; 2bc7: 38          8
    sbc y_pixels                                                      ; 2bc8: e5 7b       .{
    and #$1f                                                          ; 2bca: 29 1f       ).
    sta enemy_ship_desired_angle_divided_by_eight                     ; 2bcc: 8d 55 26    .U&
turn_enemy_ship_towards_desired_angle
    lda enemy_ships_angle,x                                           ; 2bcf: bd 87 04    ...
    lsr                                                               ; 2bd2: 4a          J
    lsr                                                               ; 2bd3: 4a          J
    lsr                                                               ; 2bd4: 4a          J
    sec                                                               ; 2bd5: 38          8
    sbc enemy_ship_desired_angle_divided_by_eight                     ; 2bd6: ed 55 26    .U&
    beq no_change_needed_to_enemy_ship_angle                          ; 2bd9: f0 35       .5
    lsr                                                               ; 2bdb: 4a          J
    lsr                                                               ; 2bdc: 4a          J
    and #7                                                            ; 2bdd: 29 07       ).
    tay                                                               ; 2bdf: a8          .
    lda angle_to_action_table,y                                       ; 2be0: b9 56 2a    .V*
    sta y_pixels                                                      ; 2be3: 85 7b       .{
    lsr y_pixels                                                      ; 2be5: 46 7b       F{
    bcc skip_velocity_decrease                                        ; 2be7: 90 0a       ..
    jsr decrease_enemy_ship_velocity                                  ; 2be9: 20 29 2c     ),
    lsr y_pixels                                                      ; 2bec: 46 7b       F{
    bcc skip_velocity_decrease                                        ; 2bee: 90 03       ..
    jsr decrease_enemy_ship_velocity                                  ; 2bf0: 20 29 2c     ),
skip_velocity_decrease
    lsr y_pixels                                                      ; 2bf3: 46 7b       F{
    bcs increase_angle                                                ; 2bf5: b0 09       ..
    dec enemy_ships_angle,x                                           ; 2bf7: de 87 04    ...
    dec enemy_ships_angle,x                                           ; 2bfa: de 87 04    ...
    jmp continue1                                                     ; 2bfd: 4c 06 2c    L.,

increase_angle
    inc enemy_ships_angle,x                                           ; 2c00: fe 87 04    ...
    inc enemy_ships_angle,x                                           ; 2c03: fe 87 04    ...
continue1
    lda enemy_ships_angle,x                                           ; 2c06: bd 87 04    ...
    lsr                                                               ; 2c09: 4a          J
    lsr                                                               ; 2c0a: 4a          J
    lsr                                                               ; 2c0b: 4a          J
    sec                                                               ; 2c0c: 38          8
    sbc enemy_ship_desired_angle_divided_by_eight                     ; 2c0d: ed 55 26    .U&
no_change_needed_to_enemy_ship_angle
    rts                                                               ; 2c10: 60          `

unused67
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea                      ; 2c11: ea ea ea... ...

unused_routine_to_turn_enemy_ship_on_screen_towards_starship
    lda enemy_ships_x_pixels,x                                        ; 2c19: bd 82 04    ...
    sta temp10                                                        ; 2c1c: 85 77       .w
    lda enemy_ships_x_pixels1,x                                       ; 2c1e: bd 85 04    ...
    sta temp9                                                         ; 2c21: 85 76       .v
    jsr calculate_enemy_ship_angle_to_starship                        ; 2c23: 20 58 27     X'
    jmp turn_enemy_ship_towards_desired_angle                         ; 2c26: 4c cf 2b    L.+

decrease_enemy_ship_velocity
    lda enemy_ships_velocity,x                                        ; 2c29: bd 08 04    ...
    beq return23                                                      ; 2c2c: f0 06       ..
    sec                                                               ; 2c2e: 38          8
    sbc #1                                                            ; 2c2f: e9 01       ..
    sta enemy_ships_velocity,x                                        ; 2c31: 9d 08 04    ...
return23
    rts                                                               ; 2c34: 60          `

unused68
    !byte $ea, $ea, $ea, $ea, $ea                                     ; 2c35: ea ea ea... ...

increase_or_decrease_enemy_ship_velocity_towards_desired_velocity
    lda enemy_ship_desired_velocity                                   ; 2c3a: ad 81 2a    ..*
    cmp enemy_ships_velocity,x                                        ; 2c3d: dd 08 04    ...
    beq return24                                                      ; 2c40: f0 0e       ..
    bcs increase                                                      ; 2c42: b0 06       ..
    dec enemy_ships_velocity,x                                        ; 2c44: de 08 04    ...
    jmp compare_velocity                                              ; 2c47: 4c 4d 2c    LM,

increase
    inc enemy_ships_velocity,x                                        ; 2c4a: fe 08 04    ...
compare_velocity
    cmp enemy_ships_velocity,x                                        ; 2c4d: dd 08 04    ...
return24
    rts                                                               ; 2c50: 60          `

unused69
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, 0, 0, 0, 0, 0, 0, 0 ; 2c51: ea ea ea... ...
starship_sprite_1
    !byte %.#.....#                                                   ; 2c60: 41          A
    !byte %.#.....#                                                   ; 2c61: 41          A
    !byte %.#.....#                                                   ; 2c62: 41          A
    !byte %.#....##                                                   ; 2c63: 43          C
    !byte %###..###                                                   ; 2c64: e7          .
    !byte %#.#..###                                                   ; 2c65: a7          .
    !byte %#.#..#.#                                                   ; 2c66: a5          .
    !byte %#.#...##                                                   ; 2c67: a3          .
    !byte %.....#..                                                   ; 2c68: 04          .
    !byte %.....#..                                                   ; 2c69: 04          .
    !byte %.....#..                                                   ; 2c6a: 04          .
    !byte %#....#..                                                   ; 2c6b: 84          .
    !byte %##..###.                                                   ; 2c6c: ce          .
    !byte %##..#.#.                                                   ; 2c6d: ca          .
    !byte %.#..#.#.                                                   ; 2c6e: 4a          J
    !byte %#...#.#.                                                   ; 2c6f: 8a          .
    !byte %#####.##                                                   ; 2c70: fb          .
    !byte %.#..####                                                   ; 2c71: 4f          O
    !byte %.#....##                                                   ; 2c72: 43          C
    !byte %.....#.#                                                   ; 2c73: 05          .
    !byte %....##.#                                                   ; 2c74: 0d          .
    !byte %....##.#                                                   ; 2c75: 0d          .
    !byte %....##.#                                                   ; 2c76: 0d          .
    !byte %.....###                                                   ; 2c77: 07          .
    !byte %#.#####.                                                   ; 2c78: be          .
    !byte %###..#..                                                   ; 2c79: e4          .
    !byte %#....#..                                                   ; 2c7a: 84          .
    !byte %.#......                                                   ; 2c7b: 40          @
    !byte %.##.....                                                   ; 2c7c: 60          `
    !byte %.##.....                                                   ; 2c7d: 60          `
    !byte %.##.....                                                   ; 2c7e: 60          `
    !byte %##......                                                   ; 2c7f: c0          .
starship_sprite_2
    !byte %......##                                                   ; 2c80: 03          .
    !byte %....##..                                                   ; 2c81: 0c          .
    !byte %...#....                                                   ; 2c82: 10          .
    !byte %...#..##                                                   ; 2c83: 13          .
    !byte %..#..#..                                                   ; 2c84: 24          $
    !byte %..#..#.#                                                   ; 2c85: 25          %
    !byte %..#..#..                                                   ; 2c86: 24          $
    !byte %...#..##                                                   ; 2c87: 13          .
    !byte %#.......                                                   ; 2c88: 80          .
    !byte %.##.....                                                   ; 2c89: 60          `
    !byte %...#....                                                   ; 2c8a: 10          .
    !byte %#..#....                                                   ; 2c8b: 90          .
    !byte %.#..#...                                                   ; 2c8c: 48          H
    !byte %.#..#...                                                   ; 2c8d: 48          H
    !byte %.#..#...                                                   ; 2c8e: 48          H
    !byte %#..#....                                                   ; 2c8f: 90          .
    !byte %...#....                                                   ; 2c90: 10          .
    !byte %.#..##..                                                   ; 2c91: 4c          L
    !byte %###...##                                                   ; 2c92: e3          .
    !byte %###..##.                                                   ; 2c93: e6          .
    !byte %######..                                                   ; 2c94: fc          .
    !byte %###..##.                                                   ; 2c95: e6          .
    !byte %###...##                                                   ; 2c96: e3          .
    !byte %.#......                                                   ; 2c97: 40          @
    !byte %...#....                                                   ; 2c98: 10          .
    !byte %.##..#..                                                   ; 2c99: 64          d
    !byte %#...###.                                                   ; 2c9a: 8e          .
    !byte %##..###.                                                   ; 2c9b: ce          .
    !byte %.######.                                                   ; 2c9c: 7e          ~
    !byte %##..###.                                                   ; 2c9d: ce          .
    !byte %#...###.                                                   ; 2c9e: 8e          .
    !byte %.....#..                                                   ; 2c9f: 04          .
starship_sprite_3
    !byte %.......#                                                   ; 2ca0: 01          .
    !byte %.....###                                                   ; 2ca1: 07          .
    !byte %.#..##..                                                   ; 2ca2: 4c          L
    !byte %.#..##..                                                   ; 2ca3: 4c          L
    !byte %.#...###                                                   ; 2ca4: 47          G
    !byte %.#.....#                                                   ; 2ca5: 41          A
    !byte %###...#.                                                   ; 2ca6: e2          .
    !byte %#.#....#                                                   ; 2ca7: a1          .
    !byte %........                                                   ; 2ca8: 00          .
    !byte %##......                                                   ; 2ca9: c0          .
    !byte %.##..#..                                                   ; 2caa: 64          d
    !byte %.##..#..                                                   ; 2cab: 64          d
    !byte %##...#..                                                   ; 2cac: c4          .
    !byte %.....#..                                                   ; 2cad: 04          .
    !byte %#...###.                                                   ; 2cae: 8e          .
    !byte %....#.#.                                                   ; 2caf: 0a          .
    !byte %#.#...#.                                                   ; 2cb0: a2          .
    !byte %#.#....#                                                   ; 2cb1: a1          .
    !byte %#..#..##                                                   ; 2cb2: 93          .
    !byte %#..###..                                                   ; 2cb3: 9c          .
    !byte %#.#.#...                                                   ; 2cb4: a8          .
    !byte %.#...#..                                                   ; 2cb5: 44          D
    !byte %......#.                                                   ; 2cb6: 02          .
    !byte %.......#                                                   ; 2cb7: 01          .
    !byte %#...#.#.                                                   ; 2cb8: 8a          .
    !byte %....#.#.                                                   ; 2cb9: 0a          .
    !byte %#..#..#.                                                   ; 2cba: 92          .
    !byte %.###..#.                                                   ; 2cbb: 72          r
    !byte %..#.#.#.                                                   ; 2cbc: 2a          *
    !byte %.#...#..                                                   ; 2cbd: 44          D
    !byte %#.......                                                   ; 2cbe: 80          .
    !byte %........                                                   ; 2cbf: 00          .
starship_sprite_4
    !byte %.......#                                                   ; 2cc0: 01          .
    !byte %.......#                                                   ; 2cc1: 01          .
    !byte %......##                                                   ; 2cc2: 03          .
    !byte %##....##                                                   ; 2cc3: c3          .
    !byte %##...##.                                                   ; 2cc4: c6          .
    !byte %##...##.                                                   ; 2cc5: c6          .
    !byte %##..##..                                                   ; 2cc6: cc          .
    !byte %##..##.#                                                   ; 2cc7: cd          .
    !byte %........                                                   ; 2cc8: 00          .
    !byte %........                                                   ; 2cc9: 00          .
    !byte %#.......                                                   ; 2cca: 80          .
    !byte %#....##.                                                   ; 2ccb: 86          .
    !byte %##...##.                                                   ; 2ccc: c6          .
    !byte %##...##.                                                   ; 2ccd: c6          .
    !byte %.##..##.                                                   ; 2cce: 66          f
    !byte %.##..##.                                                   ; 2ccf: 66          f
    !byte %#####..#                                                   ; 2cd0: f9          .
    !byte %##....##                                                   ; 2cd1: c3          .
    !byte %######..                                                   ; 2cd2: fc          .
    !byte %##...##.                                                   ; 2cd3: c6          .
    !byte %####..##                                                   ; 2cd4: f3          .
    !byte %##.##..#                                                   ; 2cd5: d9          .
    !byte %##..##.#                                                   ; 2cd6: cd          .
    !byte %.....###                                                   ; 2cd7: 07          .
    !byte %..#####.                                                   ; 2cd8: 3e          >
    !byte %#....##.                                                   ; 2cd9: 86          .
    !byte %.######.                                                   ; 2cda: 7e          ~
    !byte %##...##.                                                   ; 2cdb: c6          .
    !byte %#..####.                                                   ; 2cdc: 9e          .
    !byte %..##.##.                                                   ; 2cdd: 36          6
    !byte %.##..##.                                                   ; 2cde: 66          f
    !byte %##......                                                   ; 2cdf: c0          .
starship_sprite_5
    !byte %........                                                   ; 2ce0: 00          .
    !byte %......##                                                   ; 2ce1: 03          .
    !byte %.....#..                                                   ; 2ce2: 04          .
    !byte %....#...                                                   ; 2ce3: 08          .
    !byte %...#...#                                                   ; 2ce4: 11          .
    !byte %...#..#.                                                   ; 2ce5: 12          .
    !byte %...#...#                                                   ; 2ce6: 11          .
    !byte %.#..#...                                                   ; 2ce7: 48          H
    !byte %........                                                   ; 2ce8: 00          .
    !byte %#.......                                                   ; 2ce9: 80          .
    !byte %.#......                                                   ; 2cea: 40          @
    !byte %..#.....                                                   ; 2ceb: 20
    !byte %...#....                                                   ; 2cec: 10          .
    !byte %#..#....                                                   ; 2ced: 90          .
    !byte %...#....                                                   ; 2cee: 10          .
    !byte %..#..#..                                                   ; 2cef: 24          $
    !byte %###..#..                                                   ; 2cf0: e4          .
    !byte %###...##                                                   ; 2cf1: e3          .
    !byte %##.#..#.                                                   ; 2cf2: d2          .
    !byte %##.##.#.                                                   ; 2cf3: da          .
    !byte %###.###.                                                   ; 2cf4: ee          .
    !byte %###..#..                                                   ; 2cf5: e4          .
    !byte %.#....#.                                                   ; 2cf6: 42          B
    !byte %.#.....#                                                   ; 2cf7: 41          A
    !byte %.#..###.                                                   ; 2cf8: 4e          N
    !byte %#...###.                                                   ; 2cf9: 8e          .
    !byte %#..#.##.                                                   ; 2cfa: 96          .
    !byte %#.##.##.                                                   ; 2cfb: b6          .
    !byte %###.###.                                                   ; 2cfc: ee          .
    !byte %.#..###.                                                   ; 2cfd: 4e          N
    !byte %#....#..                                                   ; 2cfe: 84          .
    !byte %.....#..                                                   ; 2cff: 04          .
starship_sprite_6
    !byte %......##                                                   ; 2d00: 03          .
    !byte %.....##.                                                   ; 2d01: 06          .
    !byte %.#..##..                                                   ; 2d02: 4c          L
    !byte %.#...###                                                   ; 2d03: 47          G
    !byte %.#....#.                                                   ; 2d04: 42          B
    !byte %###...#.                                                   ; 2d05: e2          .
    !byte %#.#...#.                                                   ; 2d06: a2          .
    !byte %#.#...#.                                                   ; 2d07: a2          .
    !byte %#.......                                                   ; 2d08: 80          .
    !byte %##......                                                   ; 2d09: c0          .
    !byte %.##..#..                                                   ; 2d0a: 64          d
    !byte %##...#..                                                   ; 2d0b: c4          .
    !byte %#....#..                                                   ; 2d0c: 84          .
    !byte %#...###.                                                   ; 2d0d: 8e          .
    !byte %#...#.#.                                                   ; 2d0e: 8a          .
    !byte %#...#.#.                                                   ; 2d0f: 8a          .
    !byte %#..#..#.                                                   ; 2d10: 92          .
    !byte %#...#.#.                                                   ; 2d11: 8a          .
    !byte %#....#.#                                                   ; 2d12: 85          .
    !byte %#..#...#                                                   ; 2d13: 91          .
    !byte %#.#.#..#                                                   ; 2d14: a9          .
    !byte %.#...#.#                                                   ; 2d15: 45          E
    !byte %.#....##                                                   ; 2d16: 43          C
    !byte %.......#                                                   ; 2d17: 01          .
    !byte %#..#..#.                                                   ; 2d18: 92          .
    !byte %#.#...#.                                                   ; 2d19: a2          .
    !byte %.#....#.                                                   ; 2d1a: 42          B
    !byte %...#..#.                                                   ; 2d1b: 12          .
    !byte %..#.#.#.                                                   ; 2d1c: 2a          *
    !byte %.#...#..                                                   ; 2d1d: 44          D
    !byte %#....#..                                                   ; 2d1e: 84          .
    !byte %........                                                   ; 2d1f: 00          .
starship_sprite_7
    !byte %.......#                                                   ; 2d20: 01          .
    !byte %.......#                                                   ; 2d21: 01          .
    !byte %.#....##                                                   ; 2d22: 43          C
    !byte %.#....##                                                   ; 2d23: 43          C
    !byte %.#...##.                                                   ; 2d24: 46          F
    !byte %###..##.                                                   ; 2d25: e6          .
    !byte %###.##.#                                                   ; 2d26: ed          .
    !byte %###.##.#                                                   ; 2d27: ed          .
    !byte %........                                                   ; 2d28: 00          .
    !byte %........                                                   ; 2d29: 00          .
    !byte %#....#..                                                   ; 2d2a: 84          .
    !byte %#....#..                                                   ; 2d2b: 84          .
    !byte %##...#..                                                   ; 2d2c: c4          .
    !byte %##..###.                                                   ; 2d2d: ce          .
    !byte %.##.###.                                                   ; 2d2e: 6e          n
    !byte %.##.###.                                                   ; 2d2f: 6e          n
    !byte %#####..#                                                   ; 2d30: f9          .
    !byte %##.....#                                                   ; 2d31: c1          .
    !byte %######.#                                                   ; 2d32: fd          .
    !byte %##....##                                                   ; 2d33: c3          .
    !byte %#####..#                                                   ; 2d34: f9          .
    !byte %###.##.#                                                   ; 2d35: ed          .
    !byte %###..##.                                                   ; 2d36: e6          .
    !byte %.#....##                                                   ; 2d37: 43          C
    !byte %..#####.                                                   ; 2d38: 3e          >
    !byte %.....##.                                                   ; 2d39: 06          .
    !byte %.######.                                                   ; 2d3a: 7e          ~
    !byte %#....##.                                                   ; 2d3b: 86          .
    !byte %..#####.                                                   ; 2d3c: 3e          >
    !byte %.##.###.                                                   ; 2d3d: 6e          n
    !byte %##..###.                                                   ; 2d3e: ce          .
    !byte %#....#..                                                   ; 2d3f: 84          .
starship_sprite_8
    !byte %.....###                                                   ; 2d40: 07          .
    !byte %....##..                                                   ; 2d41: 0c          .
    !byte %...##..#                                                   ; 2d42: 19          .
    !byte %...##.##                                                   ; 2d43: 1b          .
    !byte %...##.##                                                   ; 2d44: 1b          .
    !byte %...##..#                                                   ; 2d45: 19          .
    !byte %....##..                                                   ; 2d46: 0c          .
    !byte %##...###                                                   ; 2d47: c7          .
    !byte %##......                                                   ; 2d48: c0          .
    !byte %.##.....                                                   ; 2d49: 60          `
    !byte %..##....                                                   ; 2d4a: 30          0
    !byte %#.##....                                                   ; 2d4b: b0          .
    !byte %#.##....                                                   ; 2d4c: b0          .
    !byte %..##....                                                   ; 2d4d: 30          0
    !byte %.##.....                                                   ; 2d4e: 60          `
    !byte %##...##.                                                   ; 2d4f: c6          .
    !byte %##.....#                                                   ; 2d50: c1          .
    !byte %###...##                                                   ; 2d51: e3          .
    !byte %####..##                                                   ; 2d52: f3          .
    !byte %##.##.##                                                   ; 2d53: db          .
    !byte %##..####                                                   ; 2d54: cf          .
    !byte %##....##                                                   ; 2d55: c3          .
    !byte %##....##                                                   ; 2d56: c3          .
    !byte %##.....#                                                   ; 2d57: c1          .
    !byte %.....##.                                                   ; 2d58: 06          .
    !byte %#...###.                                                   ; 2d59: 8e          .
    !byte %#..####.                                                   ; 2d5a: 9e          .
    !byte %#.##.##.                                                   ; 2d5b: b6          .
    !byte %###..##.                                                   ; 2d5c: e6          .
    !byte %#....##.                                                   ; 2d5d: 86          .
    !byte %#....##.                                                   ; 2d5e: 86          .
    !byte %.....##.                                                   ; 2d5f: 06          .
unused70
    !byte $ea                                                         ; 2d60: ea          .
velocity_gauge_position
    !byte 0                                                           ; 2d61: 00          .
rotation_gauge_position
    !byte 0                                                           ; 2d62: 00          .
score_delta_low
    !byte 0                                                           ; 2d63: 00          .
score_delta_high
    !byte 0                                                           ; 2d64: 00          .
score_as_bcd
    !byte 0                                                           ; 2d65: 00          .
    !byte 0                                                           ; 2d66: 00          .
    !byte 0                                                           ; 2d67: 00          .
unused71
    !byte $ea, $ea, $ea, $ea, $ea, $ea                                ; 2d68: ea ea ea... ...
score_as_digits
    !byte 0                                                           ; 2d6e: 00          .
    !byte 0                                                           ; 2d6f: 00          .
    !byte 0                                                           ; 2d70: 00          .
    !byte 0                                                           ; 2d71: 00          .
    !byte 0                                                           ; 2d72: 00          .
    !byte 0                                                           ; 2d73: 00          .
unused72
    !byte $ea                                                         ; 2d74: ea          .
scores_for_destroying_enemy_ships
    !byte 8, $12, 3, 4, $70, $90, 3, 4, 2, 3                          ; 2d75: 08 12 03... ...
unused73
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea                           ; 2d7f: ea ea ea... ...

score_points_for_destroying_enemy_ship
    lda #1                                                            ; 2d86: a9 01       ..
    sta enemy_ships_previous_on_screen,x                              ; 2d88: 9d 00 04    ...
    lda how_enemy_ship_was_damaged                                    ; 2d8b: ad e0 1c    ...
    asl                                                               ; 2d8e: 0a          .
    tay                                                               ; 2d8f: a8          .
    lda enemy_ships_can_cloak                                         ; 2d90: ad 52 26    .R&
    beq not_cloaked                                                   ; 2d93: f0 0d       ..
    iny                                                               ; 2d95: c8          .
    lda enemy_ships_type,x                                            ; 2d96: bd 0a 04    ...
    cmp #4                                                            ; 2d99: c9 04       ..
    bcs not_cloaked                                                   ; 2d9b: b0 05       ..
    cmp #1                                                            ; 2d9d: c9 01       ..
    beq not_cloaked                                                   ; 2d9f: f0 01       ..
    dey                                                               ; 2da1: 88          .
not_cloaked
    tya                                                               ; 2da2: 98          .
    bpl convert_offset_to_score                                       ; 2da3: 10 0d       ..
    and #7                                                            ; 2da5: 29 07       ).
    tay                                                               ; 2da7: a8          .
    lda starship_collided_with_enemy_ship                             ; 2da8: ad de 25    ..%
    beq convert_offset_to_score                                       ; 2dab: f0 05       ..
    dec starship_collided_with_enemy_ship                             ; 2dad: ce de 25    ..%
    iny                                                               ; 2db0: c8          .
    iny                                                               ; 2db1: c8          .
convert_offset_to_score
    lda scores_for_destroying_enemy_ships,y                           ; 2db2: b9 75 2d    .u-
    clc                                                               ; 2db5: 18          .
    sei                                                               ; 2db6: 78          x
    sed                                                               ; 2db7: f8          .
    adc score_delta_low                                               ; 2db8: 6d 63 2d    mc-
    sta score_delta_low                                               ; 2dbb: 8d 63 2d    .c-
    lda score_delta_high                                              ; 2dbe: ad 64 2d    .d-
    adc #0                                                            ; 2dc1: 69 00       i.
    sta score_delta_high                                              ; 2dc3: 8d 64 2d    .d-
    cld                                                               ; 2dc6: d8          .
    cli                                                               ; 2dc7: 58          X
    rts                                                               ; 2dc8: 60          `

unused74
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea                           ; 2dc9: ea ea ea... ...

; ----------------------------------------------------------------------------------
; add to score (in binary coded decimal)
; ----------------------------------------------------------------------------------
apply_delta_to_score
apply_delta_to_score1
    lda score_delta_low                                               ; 2dd0: ad 63 2d    .c-
    clc                                                               ; 2dd3: 18          .
    sei                                                               ; 2dd4: 78          x
    sed                                                               ; 2dd5: f8          .
    adc score_as_bcd                                                  ; 2dd6: 6d 65 2d    me-
    sta score_as_bcd                                                  ; 2dd9: 8d 65 2d    .e-
    lda score_as_bcd + 1                                              ; 2ddc: ad 66 2d    .f-
    adc score_delta_high                                              ; 2ddf: 6d 64 2d    md-
    sta score_as_bcd + 1                                              ; 2de2: 8d 66 2d    .f-
    lda score_as_bcd + 2                                              ; 2de5: ad 67 2d    .g-
    adc #0                                                            ; 2de8: 69 00       i.
    sta score_as_bcd + 2                                              ; 2dea: 8d 67 2d    .g-
    cld                                                               ; 2ded: d8          .
    cli                                                               ; 2dee: 58          X
    lda #0                                                            ; 2def: a9 00       ..
    cmp score_delta_low                                               ; 2df1: cd 63 2d    .c-
    bne zero_score_delate                                             ; 2df4: d0 05       ..
    cmp score_delta_high                                              ; 2df6: cd 64 2d    .d-
    beq c2e5e                                                         ; 2df9: f0 63       .c
zero_score_delate
    sta score_delta_low                                               ; 2dfb: 8d 63 2d    .c-
    sta score_delta_high                                              ; 2dfe: 8d 64 2d    .d-
; calculate the characters to display the score, then display them
convert_score_as_bcd_to_score_as_digits
    lda score_as_bcd + 2                                              ; 2e01: ad 67 2d    .g-
    lsr                                                               ; 2e04: 4a          J
    lsr                                                               ; 2e05: 4a          J
    lsr                                                               ; 2e06: 4a          J
    lsr                                                               ; 2e07: 4a          J
    sta score_as_digits + 5                                           ; 2e08: 8d 73 2d    .s-
    lda score_as_bcd + 2                                              ; 2e0b: ad 67 2d    .g-
    and #$0f                                                          ; 2e0e: 29 0f       ).
    sta score_as_digits + 4                                           ; 2e10: 8d 72 2d    .r-
    lda score_as_bcd + 1                                              ; 2e13: ad 66 2d    .f-
    lsr                                                               ; 2e16: 4a          J
    lsr                                                               ; 2e17: 4a          J
    lsr                                                               ; 2e18: 4a          J
    lsr                                                               ; 2e19: 4a          J
    sta score_as_digits + 3                                           ; 2e1a: 8d 71 2d    .q-
    lda score_as_bcd + 1                                              ; 2e1d: ad 66 2d    .f-
    and #$0f                                                          ; 2e20: 29 0f       ).
    sta score_as_digits + 2                                           ; 2e22: 8d 70 2d    .p-
    lda score_as_bcd                                                  ; 2e25: ad 65 2d    .e-
    lsr                                                               ; 2e28: 4a          J
    lsr                                                               ; 2e29: 4a          J
    lsr                                                               ; 2e2a: 4a          J
    lsr                                                               ; 2e2b: 4a          J
    sta score_as_digits + 1                                           ; 2e2c: 8d 6f 2d    .o-
    lda score_as_bcd                                                  ; 2e2f: ad 65 2d    .e-
    and #$0f                                                          ; 2e32: 29 0f       ).
    sta score_as_digits                                               ; 2e34: 8d 6e 2d    .n-
; tab into position, TAB(33,30):
    lda #$1f                                                          ; 2e37: a9 1f       ..
    jsr oswrch                                                        ; 2e39: 20 ee ff     ..            ; Write character 31
    lda #$21                                                          ; 2e3c: a9 21       .!
    jsr oswrch                                                        ; 2e3e: 20 ee ff     ..            ; Write character 33
    lda #$1e                                                          ; 2e41: a9 1e       ..
    jsr oswrch                                                        ; 2e43: 20 ee ff     ..            ; Write character 30
; display the characters for the score
    ldy #5                                                            ; 2e46: a0 05       ..
    ldx #$20                                                          ; 2e48: a2 20       .
plot_score_loop
    lda score_as_digits,y                                             ; 2e4a: b9 6e 2d    .n-
    bne non_zero_digit                                                ; 2e4d: d0 04       ..
    txa                                                               ; 2e4f: 8a          .
    jmp leading_zero                                                  ; 2e50: 4c 58 2e    LX.

non_zero_digit
    clc                                                               ; 2e53: 18          .
    adc #'0'                                                          ; 2e54: 69 30       i0
    ldx #'0'                                                          ; 2e56: a2 30       .0
leading_zero
    jsr oswrch                                                        ; 2e58: 20 ee ff     ..            ; Write character
    dey                                                               ; 2e5b: 88          .
    bpl plot_score_loop                                               ; 2e5c: 10 ec       ..
c2e5e
    rts                                                               ; 2e5e: 60          `

unused75
    !byte $ea, $ea                                                    ; 2e5f: ea ea       ..

plot_scanner_grid
    inc screen_start_high                                             ; 2e61: e6 79       .y
    lda #9                                                            ; 2e63: a9 09       ..
    sta x_pixels                                                      ; 2e65: 85 7a       .z
    lda #5                                                            ; 2e67: a9 05       ..
    sta output_pixels                                                 ; 2e69: 85 72       .r
    sta output_fraction                                               ; 2e6b: 85 73       .s
plot_vertical_lines_outer_loop
    lda #$41                                                          ; 2e6d: a9 41       .A
    sta y_pixels                                                      ; 2e6f: 85 7b       .{
    lda #$31                                                          ; 2e71: a9 31       .1
    sta temp11                                                        ; 2e73: 85 7c       .|
plot_vertical_lines_inner_loop
    jsr set_pixel                                                     ; 2e75: 20 06 0f     ..
    inc y_pixels                                                      ; 2e78: e6 7b       .{
    dec temp11                                                        ; 2e7a: c6 7c       .|
    bne plot_vertical_lines_inner_loop                                ; 2e7c: d0 f7       ..
    lda x_pixels                                                      ; 2e7e: a5 7a       .z
    clc                                                               ; 2e80: 18          .
    adc #$0a                                                          ; 2e81: 69 0a       i.
    sta x_pixels                                                      ; 2e83: 85 7a       .z
    dec output_pixels                                                 ; 2e85: c6 72       .r
    bne plot_vertical_lines_outer_loop                                ; 2e87: d0 e4       ..
    lda #$4a                                                          ; 2e89: a9 4a       .J
    sta y_pixels                                                      ; 2e8b: 85 7b       .{
plot_horizontal_lines_outer_loop
    lda #0                                                            ; 2e8d: a9 00       ..
    sta x_pixels                                                      ; 2e8f: 85 7a       .z
    lda #$32                                                          ; 2e91: a9 32       .2
    sta temp11                                                        ; 2e93: 85 7c       .|
plot_horizontal_lines_inner_loop
    jsr set_pixel                                                     ; 2e95: 20 06 0f     ..
    inc x_pixels                                                      ; 2e98: e6 7a       .z
    dec temp11                                                        ; 2e9a: c6 7c       .|
    bne plot_horizontal_lines_inner_loop                              ; 2e9c: d0 f7       ..
    lda y_pixels                                                      ; 2e9e: a5 7b       .{
    clc                                                               ; 2ea0: 18          .
    adc #$0a                                                          ; 2ea1: 69 0a       i.
    sta y_pixels                                                      ; 2ea3: 85 7b       .{
    dec output_fraction                                               ; 2ea5: c6 73       .s
    bne plot_horizontal_lines_outer_loop                              ; 2ea7: d0 e4       ..
    dec screen_start_high                                             ; 2ea9: c6 79       .y
    rts                                                               ; 2eab: 60          `

plot_gauge_edges
    inc screen_start_high                                             ; 2eac: e6 79       .y
    lda #$35                                                          ; 2eae: a9 35       .5
    sta x_pixels                                                      ; 2eb0: 85 7a       .z
    lda #$41                                                          ; 2eb2: a9 41       .A
    sta y_pixels                                                      ; 2eb4: 85 7b       .{
    lda #$42                                                          ; 2eb6: a9 42       .B
    jsr plot_vertical_line                                            ; 2eb8: 20 cf 1b     ..
    lda #$3b                                                          ; 2ebb: a9 3b       .;
    sta x_pixels                                                      ; 2ebd: 85 7a       .z
    lda #$41                                                          ; 2ebf: a9 41       .A
    sta y_pixels                                                      ; 2ec1: 85 7b       .{
    lda #$42                                                          ; 2ec3: a9 42       .B
    jsr plot_vertical_line                                            ; 2ec5: 20 cf 1b     ..
    lda #5                                                            ; 2ec8: a9 05       ..
    sta x_pixels                                                      ; 2eca: 85 7a       .z
    lda #$77                                                          ; 2ecc: a9 77       .w
    sta y_pixels                                                      ; 2ece: 85 7b       .{
    lda #$2b                                                          ; 2ed0: a9 2b       .+
    jsr plot_horizontal_line                                          ; 2ed2: 20 db 1b     ..
    lda #7                                                            ; 2ed5: a9 07       ..
    jsr plot_vertical_line                                            ; 2ed7: 20 cf 1b     ..
    lda #5                                                            ; 2eda: a9 05       ..
    sta x_pixels                                                      ; 2edc: 85 7a       .z
    lda #$78                                                          ; 2ede: a9 78       .x
    sta y_pixels                                                      ; 2ee0: 85 7b       .{
    lda #6                                                            ; 2ee2: a9 06       ..
    jsr plot_vertical_line                                            ; 2ee4: 20 cf 1b     ..
    lda #$2c                                                          ; 2ee7: a9 2c       .,
    jsr plot_horizontal_line                                          ; 2ee9: 20 db 1b     ..
    lda #0                                                            ; 2eec: a9 00       ..
    sta x_pixels                                                      ; 2eee: 85 7a       .z
    lda #$83                                                          ; 2ef0: a9 83       ..
    sta y_pixels                                                      ; 2ef2: 85 7b       .{
    lda #$3f                                                          ; 2ef4: a9 3f       .?
    jsr plot_horizontal_line                                          ; 2ef6: 20 db 1b     ..
    lda #$1a                                                          ; 2ef9: a9 1a       ..
    sta x_pixels                                                      ; 2efb: 85 7a       .z
    lda #$75                                                          ; 2efd: a9 75       .u
    sta y_pixels                                                      ; 2eff: 85 7b       .{
    jsr set_pixel                                                     ; 2f01: 20 06 0f     ..
    inc x_pixels                                                      ; 2f04: e6 7a       .z
    jsr set_pixel                                                     ; 2f06: 20 06 0f     ..
    inc y_pixels                                                      ; 2f09: e6 7b       .{
    jsr set_pixel                                                     ; 2f0b: 20 06 0f     ..
    dec x_pixels                                                      ; 2f0e: c6 7a       .z
    jsr set_pixel                                                     ; 2f10: 20 06 0f     ..
    lda #$7f                                                          ; 2f13: a9 7f       ..
    sta y_pixels                                                      ; 2f15: 85 7b       .{
    jsr set_pixel                                                     ; 2f17: 20 06 0f     ..
    inc x_pixels                                                      ; 2f1a: e6 7a       .z
    jsr set_pixel                                                     ; 2f1c: 20 06 0f     ..
    inc y_pixels                                                      ; 2f1f: e6 7b       .{
    jsr set_pixel                                                     ; 2f21: 20 06 0f     ..
    dec x_pixels                                                      ; 2f24: c6 7a       .z
    jsr set_pixel                                                     ; 2f26: 20 06 0f     ..
    lda #0                                                            ; 2f29: a9 00       ..
    sta x_pixels                                                      ; 2f2b: 85 7a       .z
    lda #$e7                                                          ; 2f2d: a9 e7       ..
    sta y_pixels                                                      ; 2f2f: 85 7b       .{
    lda #$3f                                                          ; 2f31: a9 3f       .?
    jsr plot_horizontal_line                                          ; 2f33: 20 db 1b     ..
    dec screen_start_high                                             ; 2f36: c6 79       .y
    rts                                                               ; 2f38: 60          `

unused76
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 2f39: ea ea ea... ...

plot_starship_velocity_and_rotation_on_gauges
    inc screen_start_high                                             ; 2f45: e6 79       .y
    lda starship_velocity_low                                         ; 2f47: ad 01 0f    ...
    sta y_pixels                                                      ; 2f4a: 85 7b       .{
    lda starship_velocity_high                                        ; 2f4c: ad 00 0f    ...
    asl y_pixels                                                      ; 2f4f: 06 7b       .{
    rol                                                               ; 2f51: 2a          *
    asl y_pixels                                                      ; 2f52: 06 7b       .{
    rol                                                               ; 2f54: 2a          *
    asl y_pixels                                                      ; 2f55: 06 7b       .{
    rol                                                               ; 2f57: 2a          *
    asl y_pixels                                                      ; 2f58: 06 7b       .{
    rol                                                               ; 2f5a: 2a          *
    cmp velocity_gauge_position                                       ; 2f5b: cd 61 2d    .a-
    beq skip_velocity_gauge                                           ; 2f5e: f0 3e       .>
    tay                                                               ; 2f60: a8          .
    lda #$81                                                          ; 2f61: a9 81       ..
    sec                                                               ; 2f63: 38          8
    sbc velocity_gauge_position                                       ; 2f64: ed 61 2d    .a-
    sta y_pixels                                                      ; 2f67: 85 7b       .{
    sty velocity_gauge_position                                       ; 2f69: 8c 61 2d    .a-
    lda #$36                                                          ; 2f6c: a9 36       .6
    sta x_pixels                                                      ; 2f6e: 85 7a       .z
    lda #5                                                            ; 2f70: a9 05       ..
    sta temp7                                                         ; 2f72: 85 88       ..
    sta temp11                                                        ; 2f74: 85 7c       .|
plot_velocity_gauge_unset_loop
    jsr unset_pixel                                                   ; 2f76: 20 0e 0f     ..
    inc y_pixels                                                      ; 2f79: e6 7b       .{
    jsr unset_pixel                                                   ; 2f7b: 20 0e 0f     ..
    dec y_pixels                                                      ; 2f7e: c6 7b       .{
    inc x_pixels                                                      ; 2f80: e6 7a       .z
    dec temp7                                                         ; 2f82: c6 88       ..
    bne plot_velocity_gauge_unset_loop                                ; 2f84: d0 f0       ..
    lda #$81                                                          ; 2f86: a9 81       ..
    sec                                                               ; 2f88: 38          8
    sbc velocity_gauge_position                                       ; 2f89: ed 61 2d    .a-
    sta y_pixels                                                      ; 2f8c: 85 7b       .{
plot_velocity_gauge_set_loop
    dec x_pixels                                                      ; 2f8e: c6 7a       .z
    jsr set_pixel                                                     ; 2f90: 20 06 0f     ..
    inc y_pixels                                                      ; 2f93: e6 7b       .{
    jsr set_pixel                                                     ; 2f95: 20 06 0f     ..
    dec y_pixels                                                      ; 2f98: c6 7b       .{
    dec temp11                                                        ; 2f9a: c6 7c       .|
    bne plot_velocity_gauge_set_loop                                  ; 2f9c: d0 f0       ..
skip_velocity_gauge
    lda starship_rotation_fraction                                    ; 2f9e: ad 28 19    .(.
    sta y_pixels                                                      ; 2fa1: 85 7b       .{
    lda starship_rotation                                             ; 2fa3: ad 02 0f    ...
    sec                                                               ; 2fa6: 38          8
    sbc #$7b                                                          ; 2fa7: e9 7b       .{
    asl y_pixels                                                      ; 2fa9: 06 7b       .{
    rol                                                               ; 2fab: 2a          *
    asl y_pixels                                                      ; 2fac: 06 7b       .{
    rol                                                               ; 2fae: 2a          *
    cmp rotation_gauge_position                                       ; 2faf: cd 62 2d    .b-
    beq skip_rotation_gauge                                           ; 2fb2: f0 56       .V
    tay                                                               ; 2fb4: a8          .
    lda rotation_gauge_position                                       ; 2fb5: ad 62 2d    .b-
    sty rotation_gauge_position                                       ; 2fb8: 8c 62 2d    .b-
    cmp #$15                                                          ; 2fbb: c9 15       ..
    bcc set_rotation_gauge_position_for_unset                         ; 2fbd: 90 08       ..
    sbc #3                                                            ; 2fbf: e9 03       ..
    cmp #$14                                                          ; 2fc1: c9 14       ..
    bcs set_rotation_gauge_position_for_unset                         ; 2fc3: b0 02       ..
    lda #$14                                                          ; 2fc5: a9 14       ..
set_rotation_gauge_position_for_unset
    clc                                                               ; 2fc7: 18          .
    adc #6                                                            ; 2fc8: 69 06       i.
    sta x_pixels                                                      ; 2fca: 85 7a       .z
    lda #$78                                                          ; 2fcc: a9 78       .x
    sta y_pixels                                                      ; 2fce: 85 7b       .{
    lda #6                                                            ; 2fd0: a9 06       ..
    sta temp7                                                         ; 2fd2: 85 88       ..
    sta temp11                                                        ; 2fd4: 85 7c       .|
plot_rotation_gauge_unset_loop
    jsr unset_pixel                                                   ; 2fd6: 20 0e 0f     ..
    inc x_pixels                                                      ; 2fd9: e6 7a       .z
    jsr unset_pixel                                                   ; 2fdb: 20 0e 0f     ..
    dec x_pixels                                                      ; 2fde: c6 7a       .z
    inc y_pixels                                                      ; 2fe0: e6 7b       .{
    dec temp7                                                         ; 2fe2: c6 88       ..
    bne plot_rotation_gauge_unset_loop                                ; 2fe4: d0 f0       ..
    lda rotation_gauge_position                                       ; 2fe6: ad 62 2d    .b-
    cmp #$15                                                          ; 2fe9: c9 15       ..
    bcc set_rotation_gauge_position_for_set                           ; 2feb: 90 08       ..
    sbc #3                                                            ; 2fed: e9 03       ..
    cmp #$14                                                          ; 2fef: c9 14       ..
    bcs set_rotation_gauge_position_for_set                           ; 2ff1: b0 02       ..
    lda #$14                                                          ; 2ff3: a9 14       ..
set_rotation_gauge_position_for_set
    clc                                                               ; 2ff5: 18          .
    adc #6                                                            ; 2ff6: 69 06       i.
    sta x_pixels                                                      ; 2ff8: 85 7a       .z
plot_rotation_gauge_set_loop
    dec y_pixels                                                      ; 2ffa: c6 7b       .{
    jsr set_pixel                                                     ; 2ffc: 20 06 0f     ..
    inc x_pixels                                                      ; 2fff: e6 7a       .z
    jsr set_pixel                                                     ; 3001: 20 06 0f     ..
    dec x_pixels                                                      ; 3004: c6 7a       .z
    dec temp11                                                        ; 3006: c6 7c       .|
    bne plot_rotation_gauge_set_loop                                  ; 3008: d0 f0       ..
skip_rotation_gauge
    dec screen_start_high                                             ; 300a: c6 79       .y
    rts                                                               ; 300c: 60          `

unused77
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 300d: ea ea ea... ...

plot_enemy_ships_on_scanners
    inc screen_start_high                                             ; 3019: e6 79       .y
    lda maximum_number_of_enemy_ships                                 ; 301b: ad 4f 0e    .O.
    sta enemy_ships_still_to_consider                                 ; 301e: 8d 54 0e    .T.
    ldx #0                                                            ; 3021: a2 00       ..
plot_enemy_ships_on_scanners_loop
    stx temp8                                                         ; 3023: 86 75       .u
    lda enemy_ships_previous_x_screens,x                              ; 3025: bd 03 04    ...
    cmp #$60                                                          ; 3028: c9 60       .`
    bcc skip_unplotting_enemy_ship_on_scanner                         ; 302a: 90 79       .y
    cmp #$9f                                                          ; 302c: c9 9f       ..
    bcs skip_unplotting_enemy_ship_on_scanner                         ; 302e: b0 75       .u
    sta x_pixels                                                      ; 3030: 85 7a       .z
    lda enemy_ships_previous_x_screens1,x                             ; 3032: bd 06 04    ...
    cmp #$60                                                          ; 3035: c9 60       .`
    bcc skip_unplotting_enemy_ship_on_scanner                         ; 3037: 90 6c       .l
    cmp #$9f                                                          ; 3039: c9 9f       ..
    bcs skip_unplotting_enemy_ship_on_scanner                         ; 303b: b0 68       .h
    adc #$a1                                                          ; 303d: 69 a1       i.
    sta y_pixels                                                      ; 303f: 85 7b       .{
    lda x_pixels                                                      ; 3041: a5 7a       .z
    clc                                                               ; 3043: 18          .
    adc #$a0                                                          ; 3044: 69 a0       i.
    sta x_pixels                                                      ; 3046: 85 7a       .z
    jsr unset_pixel                                                   ; 3048: 20 0e 0f     ..
    lda x_pixels                                                      ; 304b: a5 7a       .z
    sec                                                               ; 304d: 38          8
    sbc #$1d                                                          ; 304e: e9 1d       ..
    bcc skip_unplotting_enemy_ship_on_scanner                         ; 3050: 90 53       .S
    cmp #5                                                            ; 3052: c9 05       ..
    bcs skip_unplotting_enemy_ship_on_scanner                         ; 3054: b0 4f       .O
    tay                                                               ; 3056: a8          .
    lda y_pixels                                                      ; 3057: a5 7b       .{
    sec                                                               ; 3059: 38          8
    sbc #$1e                                                          ; 305a: e9 1e       ..
    bcc skip_unplotting_enemy_ship_on_scanner                         ; 305c: 90 47       .G
    cmp #5                                                            ; 305e: c9 05       ..
    bcs skip_unplotting_enemy_ship_on_scanner                         ; 3060: b0 43       .C
    asl                                                               ; 3062: 0a          .
    sta y_pixels                                                      ; 3063: 85 7b       .{
    asl                                                               ; 3065: 0a          .
    asl                                                               ; 3066: 0a          .
    adc y_pixels                                                      ; 3067: 65 7b       e{
    sta y_pixels                                                      ; 3069: 85 7b       .{
    ldx temp8                                                         ; 306b: a6 75       .u
    lda enemy_ships_previous_x_pixels1,x                              ; 306d: bd 05 04    ...
    lsr                                                               ; 3070: 4a          J
    lsr                                                               ; 3071: 4a          J
    lsr                                                               ; 3072: 4a          J
    lsr                                                               ; 3073: 4a          J
    lsr                                                               ; 3074: 4a          J
    clc                                                               ; 3075: 18          .
    adc y_pixels                                                      ; 3076: 65 7b       e{
    adc #$41                                                          ; 3078: 69 41       iA
    sta y_pixels                                                      ; 307a: 85 7b       .{
    tya                                                               ; 307c: 98          .
    asl                                                               ; 307d: 0a          .
    sta x_pixels                                                      ; 307e: 85 7a       .z
    asl                                                               ; 3080: 0a          .
    asl                                                               ; 3081: 0a          .
    adc x_pixels                                                      ; 3082: 65 7a       ez
    sta x_pixels                                                      ; 3084: 85 7a       .z
    lda enemy_ships_previous_x_pixels,x                               ; 3086: bd 02 04    ...
    lsr                                                               ; 3089: 4a          J
    lsr                                                               ; 308a: 4a          J
    lsr                                                               ; 308b: 4a          J
    lsr                                                               ; 308c: 4a          J
    lsr                                                               ; 308d: 4a          J
    clc                                                               ; 308e: 18          .
    adc x_pixels                                                      ; 308f: 65 7a       ez
    sta x_pixels                                                      ; 3091: 85 7a       .z
    jsr unset_pixel                                                   ; 3093: 20 0e 0f     ..
    inc x_pixels                                                      ; 3096: e6 7a       .z
    jsr unset_pixel                                                   ; 3098: 20 0e 0f     ..
    inc y_pixels                                                      ; 309b: e6 7b       .{
    jsr unset_pixel                                                   ; 309d: 20 0e 0f     ..
    dec x_pixels                                                      ; 30a0: c6 7a       .z
    jsr unset_pixel                                                   ; 30a2: 20 0e 0f     ..
skip_unplotting_enemy_ship_on_scanner
    lda starship_shields_active                                       ; 30a5: ad 56 0e    .V.
    beq to_skip_plotting_enemy_ship_on_scanner                        ; 30a8: f0 07       ..
    ldx temp8                                                         ; 30aa: a6 75       .u
    lda enemy_ships_energy,x                                          ; 30ac: bd 89 04    ...
    bne continue2                                                     ; 30af: d0 03       ..
to_skip_plotting_enemy_ship_on_scanner
    jmp skip_plotting_enemy_ship_on_scanner                           ; 30b1: 4c 34 31    L41

continue2
    lda enemy_ships_x_screens,x                                       ; 30b4: bd 83 04    ...
    cmp #$60                                                          ; 30b7: c9 60       .`
    bcc skip_plotting_enemy_ship_on_scanner                           ; 30b9: 90 79       .y
    cmp #$9f                                                          ; 30bb: c9 9f       ..
    bcs skip_plotting_enemy_ship_on_scanner                           ; 30bd: b0 75       .u
    sta x_pixels                                                      ; 30bf: 85 7a       .z
    lda enemy_ships_x_screens1,x                                      ; 30c1: bd 86 04    ...
    cmp #$60                                                          ; 30c4: c9 60       .`
    bcc skip_plotting_enemy_ship_on_scanner                           ; 30c6: 90 6c       .l
    cmp #$9f                                                          ; 30c8: c9 9f       ..
    bcs skip_plotting_enemy_ship_on_scanner                           ; 30ca: b0 68       .h
    adc #$a1                                                          ; 30cc: 69 a1       i.
    sta y_pixels                                                      ; 30ce: 85 7b       .{
    lda x_pixels                                                      ; 30d0: a5 7a       .z
    clc                                                               ; 30d2: 18          .
    adc #$a0                                                          ; 30d3: 69 a0       i.
    sta x_pixels                                                      ; 30d5: 85 7a       .z
    jsr set_pixel                                                     ; 30d7: 20 06 0f     ..
    lda x_pixels                                                      ; 30da: a5 7a       .z
    sec                                                               ; 30dc: 38          8
    sbc #$1d                                                          ; 30dd: e9 1d       ..
    bcc skip_plotting_enemy_ship_on_scanner                           ; 30df: 90 53       .S
    cmp #5                                                            ; 30e1: c9 05       ..
    bcs skip_plotting_enemy_ship_on_scanner                           ; 30e3: b0 4f       .O
    tay                                                               ; 30e5: a8          .
    lda y_pixels                                                      ; 30e6: a5 7b       .{
    sec                                                               ; 30e8: 38          8
    sbc #$1e                                                          ; 30e9: e9 1e       ..
    bcc skip_plotting_enemy_ship_on_scanner                           ; 30eb: 90 47       .G
    cmp #5                                                            ; 30ed: c9 05       ..
    bcs skip_plotting_enemy_ship_on_scanner                           ; 30ef: b0 43       .C
    asl                                                               ; 30f1: 0a          .
    sta y_pixels                                                      ; 30f2: 85 7b       .{
    asl                                                               ; 30f4: 0a          .
    asl                                                               ; 30f5: 0a          .
    adc y_pixels                                                      ; 30f6: 65 7b       e{
    sta y_pixels                                                      ; 30f8: 85 7b       .{
    ldx temp8                                                         ; 30fa: a6 75       .u
    lda enemy_ships_x_pixels1,x                                       ; 30fc: bd 85 04    ...
    lsr                                                               ; 30ff: 4a          J
    lsr                                                               ; 3100: 4a          J
    lsr                                                               ; 3101: 4a          J
    lsr                                                               ; 3102: 4a          J
    lsr                                                               ; 3103: 4a          J
    clc                                                               ; 3104: 18          .
    adc y_pixels                                                      ; 3105: 65 7b       e{
    adc #$41                                                          ; 3107: 69 41       iA
    sta y_pixels                                                      ; 3109: 85 7b       .{
    tya                                                               ; 310b: 98          .
    asl                                                               ; 310c: 0a          .
    sta x_pixels                                                      ; 310d: 85 7a       .z
    asl                                                               ; 310f: 0a          .
    asl                                                               ; 3110: 0a          .
    adc x_pixels                                                      ; 3111: 65 7a       ez
    sta x_pixels                                                      ; 3113: 85 7a       .z
    lda enemy_ships_x_pixels,x                                        ; 3115: bd 82 04    ...
    lsr                                                               ; 3118: 4a          J
    lsr                                                               ; 3119: 4a          J
    lsr                                                               ; 311a: 4a          J
    lsr                                                               ; 311b: 4a          J
    lsr                                                               ; 311c: 4a          J
    clc                                                               ; 311d: 18          .
    adc x_pixels                                                      ; 311e: 65 7a       ez
    sta x_pixels                                                      ; 3120: 85 7a       .z
    jsr set_pixel                                                     ; 3122: 20 06 0f     ..
    inc x_pixels                                                      ; 3125: e6 7a       .z
    jsr set_pixel                                                     ; 3127: 20 06 0f     ..
    inc y_pixels                                                      ; 312a: e6 7b       .{
    jsr set_pixel                                                     ; 312c: 20 06 0f     ..
    dec x_pixels                                                      ; 312f: c6 7a       .z
    jsr set_pixel                                                     ; 3131: 20 06 0f     ..
skip_plotting_enemy_ship_on_scanner
    lda temp8                                                         ; 3134: a5 75       .u
    clc                                                               ; 3136: 18          .
    adc #$0b                                                          ; 3137: 69 0b       i.
    tax                                                               ; 3139: aa          .
    dec enemy_ships_still_to_consider                                 ; 313a: ce 54 0e    .T.
    beq continue3                                                     ; 313d: f0 03       ..
    jmp plot_enemy_ships_on_scanners_loop                             ; 313f: 4c 23 30    L#0

continue3
    ldy #$1f                                                          ; 3142: a0 1f       ..
    sty x_pixels                                                      ; 3144: 84 7a       .z
    iny                                                               ; 3146: c8          .              ; Y=$20
    sty y_pixels                                                      ; 3147: 84 7b       .{
    jsr set_pixel                                                     ; 3149: 20 06 0f     ..
    dec screen_start_high                                             ; 314c: c6 79       .y
    rts                                                               ; 314e: 60          `

unused78
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 314f: ea ea ea... ...
    !byte $ea, $ea, $ea, $ea, $ea, $ea                                ; 315b: ea ea ea... ...

handle_scanner_failure
    lda damage_low                                                    ; 3161: ad 1f 19    ...
    cmp #$3c                                                          ; 3164: c9 3c       .<
    bcs starship_incurred_major_damage                                ; 3166: b0 05       ..
    lda damage_high                                                   ; 3168: ad 1e 19    ...
    beq starship_didnt_incur_major_damage                             ; 316b: f0 61       .a
starship_incurred_major_damage
    lda scanner_failure_duration                                      ; 316d: ad 59 26    .Y&
    bne handle_failed_scanner                                         ; 3170: d0 61       .a
    jsr random_number_generator                                       ; 3172: 20 13 21     .!
    lda rnd_2                                                         ; 3175: ad d2 1c    ...
    and #$6c                                                          ; 3178: 29 6c       )l
    bne return25                                                      ; 317a: d0 51       .Q
turn_scanner_to_static
    lda starship_shields_active                                       ; 317c: ad 56 0e    .V.
    sta starship_shields_active_before_failure                        ; 317f: 8d 5a 26    .Z&
    beq skip_unplotting_scanners                                      ; 3182: f0 08       ..
    lda #0                                                            ; 3184: a9 00       ..
    sta starship_shields_active                                       ; 3186: 8d 56 0e    .V.
    jsr plot_enemy_ships_on_scanners                                  ; 3189: 20 19 30     .0
skip_unplotting_scanners
    inc starship_shields_active                                       ; 318c: ee 56 0e    .V.
    lda rnd_1                                                         ; 318f: ad d1 1c    ...
    ora #$42                                                          ; 3192: 09 42       .B
    sta scanner_failure_duration                                      ; 3194: 8d 59 26    .Y&
    lda #0                                                            ; 3197: a9 00       ..
    sta temp5                                                         ; 3199: 85 86       ..
    sta temp0_low                                                     ; 319b: 85 80       ..
    lda #$d0                                                          ; 319d: a9 d0       ..
    sta temp6                                                         ; 319f: 85 87       ..
    lda #$59                                                          ; 31a1: a9 59       .Y
    sta temp0_high                                                    ; 31a3: 85 81       ..
    ldx #8                                                            ; 31a5: a2 08       ..
plot_static_row_loop
    ldy #$3f                                                          ; 31a7: a0 3f       .?
plot_static_column_loop
    lda (temp5),y                                                     ; 31a9: b1 86       ..
    sta (temp0_low),y                                                 ; 31ab: 91 80       ..
    dey                                                               ; 31ad: 88          .
    bpl plot_static_column_loop                                       ; 31ae: 10 f9       ..
    lda temp0_low                                                     ; 31b0: a5 80       ..
    clc                                                               ; 31b2: 18          .
    adc #$40                                                          ; 31b3: 69 40       i@
    sta temp0_low                                                     ; 31b5: 85 80       ..
    lda temp0_high                                                    ; 31b7: a5 81       ..
    adc #1                                                            ; 31b9: 69 01       i.
    sta temp0_high                                                    ; 31bb: 85 81       ..
    lda temp5                                                         ; 31bd: a5 86       ..
    clc                                                               ; 31bf: 18          .
    adc #$40                                                          ; 31c0: 69 40       i@
    sta temp5                                                         ; 31c2: 85 86       ..
    lda temp6                                                         ; 31c4: a5 87       ..
    adc #1                                                            ; 31c6: 69 01       i.
    sta temp6                                                         ; 31c8: 85 87       ..
    dex                                                               ; 31ca: ca          .
    bne plot_static_row_loop                                          ; 31cb: d0 da       ..
return25
    rts                                                               ; 31cd: 60          `

starship_didnt_incur_major_damage
    lda scanner_failure_duration                                      ; 31ce: ad 59 26    .Y&
    beq return26                                                      ; 31d1: f0 31       .1
handle_failed_scanner
    dec scanner_failure_duration                                      ; 31d3: ce 59 26    .Y&
    beq clear_long_range_scanner                                      ; 31d6: f0 2d       .-
    lda #0                                                            ; 31d8: a9 00       ..
    sta temp0_low                                                     ; 31da: 85 80       ..
    lda #$59                                                          ; 31dc: a9 59       .Y
    sta temp0_high                                                    ; 31de: 85 81       ..
    ldx #8                                                            ; 31e0: a2 08       ..
update_static_row_loop
    ldy #$3f                                                          ; 31e2: a0 3f       .?
update_static_column_loop
    lda (temp0_low),y                                                 ; 31e4: b1 80       ..
    eor y_pixels                                                      ; 31e6: 45 7b       E{
    sta (temp0_low),y                                                 ; 31e8: 91 80       ..
    sta y_pixels                                                      ; 31ea: 85 7b       .{
    dey                                                               ; 31ec: 88          .
    bpl update_static_column_loop                                     ; 31ed: 10 f5       ..
    lda temp0_low                                                     ; 31ef: a5 80       ..
    clc                                                               ; 31f1: 18          .
    adc #$40                                                          ; 31f2: 69 40       i@
    sta temp0_low                                                     ; 31f4: 85 80       ..
    lda temp0_high                                                    ; 31f6: a5 81       ..
    adc #1                                                            ; 31f8: 69 01       i.
    sta temp0_high                                                    ; 31fa: 85 81       ..
    dex                                                               ; 31fc: ca          .
    bne update_static_row_loop                                        ; 31fd: d0 e3       ..
    lda y_pixels                                                      ; 31ff: a5 7b       .{
    sta unused_copy_of_scanner_static_eor                             ; 3201: 8d 3f 59    .?Y
return26
    rts                                                               ; 3204: 60          `

clear_long_range_scanner
    lda #0                                                            ; 3205: a9 00       ..
    sta temp0_low                                                     ; 3207: 85 80       ..
    lda #$59                                                          ; 3209: a9 59       .Y
    sta temp0_high                                                    ; 320b: 85 81       ..
    ldx #8                                                            ; 320d: a2 08       ..
clear_long_range_scanner_row_loop
    ldy #$3f                                                          ; 320f: a0 3f       .?
    lda #0                                                            ; 3211: a9 00       ..
clear_long_range_scanner_column_loop
    sta (temp0_low),y                                                 ; 3213: 91 80       ..
    dey                                                               ; 3215: 88          .
    bpl clear_long_range_scanner_column_loop                          ; 3216: 10 fb       ..
    lda temp0_low                                                     ; 3218: a5 80       ..
    clc                                                               ; 321a: 18          .
    adc #$40                                                          ; 321b: 69 40       i@
    sta temp0_low                                                     ; 321d: 85 80       ..
    lda temp0_high                                                    ; 321f: a5 81       ..
    adc #1                                                            ; 3221: 69 01       i.
    sta temp0_high                                                    ; 3223: 85 81       ..
    dex                                                               ; 3225: ca          .
    bne clear_long_range_scanner_row_loop                             ; 3226: d0 e7       ..
    lda #0                                                            ; 3228: a9 00       ..
    sta starship_shields_active                                       ; 322a: 8d 56 0e    .V.
    jsr plot_top_and_right_edge_of_long_range_scanner_with_blank_text ; 322d: 20 2b 14     +.
    lda starship_shields_active_before_failure                        ; 3230: ad 5a 26    .Z&
    bne return26                                                      ; 3233: d0 cf       ..
    jsr unplot_long_range_scanner_if_shields_inactive                 ; 3235: 20 08 14     ..
    rts                                                               ; 3238: 60          `

unused79
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 3239: ea ea ea... ...
    !byte $ea, $ea, $ea, $ea                                          ; 3245: ea ea ea... ...

; ----------------------------------------------------------------------------------
enemy_ship_behaviour_routine0
    lda enemy_ships_temporary_behaviour_flags,x                       ; 3249: bd 88 04    ...
    and #$10                                                          ; 324c: 29 10       ).
    bne skip_setting_enemy_ship_was_on_screen_above                   ; 324e: d0 16       ..
    lda enemy_ships_x_screens,x                                       ; 3250: bd 83 04    ...
    cmp #$7f                                                          ; 3253: c9 7f       ..
    bne not_on_screen_above                                           ; 3255: d0 3b       .;
    lda enemy_ships_x_screens1,x                                      ; 3257: bd 86 04    ...
    cmp #$7e                                                          ; 325a: c9 7e       .~
    bne not_on_screen_above                                           ; 325c: d0 34       .4
    lda enemy_ships_temporary_behaviour_flags,x                       ; 325e: bd 88 04    ...
    ora #$10                                                          ; 3261: 09 10       ..
    sta enemy_ships_temporary_behaviour_flags,x                       ; 3263: 9d 88 04    ...
skip_setting_enemy_ship_was_on_screen_above
    lda #4                                                            ; 3266: a9 04       ..
    sta enemy_ship_desired_velocity                                   ; 3268: 8d 81 2a    ..*
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 326b: 20 3a 2c     :,
    lda enemy_ships_on_screen,x                                       ; 326e: bd 80 04    ...
    bne not_on_screen1                                                ; 3271: d0 0b       ..
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 3273: 20 61 2b     a+
    bne to_return_from_enemy_ship_behaviour_routine                   ; 3276: d0 36       .6
    jsr fire_enemy_torpedo                                            ; 3278: 20 cc 26     .&
    jmp return_from_enemy_ship_behaviour_routine                      ; 327b: 4c d2 36    L.6

not_on_screen1
    jsr turn_enemy_ship_towards_starship_using_screens                ; 327e: 20 47 2b     G+
    lda temp9                                                         ; 3281: a5 76       .v
    cmp #$80                                                          ; 3283: c9 80       ..
    bcc to_return_from_enemy_ship_behaviour_routine                   ; 3285: 90 27       .'
    lda enemy_ships_temporary_behaviour_flags,x                       ; 3287: bd 88 04    ...
    and #$ef                                                          ; 328a: 29 ef       ).
    sta enemy_ships_temporary_behaviour_flags,x                       ; 328c: 9d 88 04    ...
    jmp return_from_enemy_ship_behaviour_routine                      ; 328f: 4c d2 36    L.6

not_on_screen_above
    lda enemy_ships_x_screens,x                                       ; 3292: bd 83 04    ...
    sta temp10                                                        ; 3295: 85 77       .w
    lda enemy_ships_x_screens1,x                                      ; 3297: bd 86 04    ...
    clc                                                               ; 329a: 18          .
    adc #1                                                            ; 329b: 69 01       i.
    sta temp9                                                         ; 329d: 85 76       .v
    jsr turn_enemy_ship_towards_starship                              ; 329f: 20 5e 2b     ^+
    lda enemy_ship_desired_velocity                                   ; 32a2: ad 81 2a    ..*
    clc                                                               ; 32a5: 18          .
    adc #$0a                                                          ; 32a6: 69 0a       i.
    sta enemy_ship_desired_velocity                                   ; 32a8: 8d 81 2a    ..*
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 32ab: 20 3a 2c     :,
to_return_from_enemy_ship_behaviour_routine
    jmp return_from_enemy_ship_behaviour_routine                      ; 32ae: 4c d2 36    L.6

; ----------------------------------------------------------------------------------
enemy_ship_behaviour_routine1
    lda enemy_ships_on_screen,x                                       ; 32b1: bd 80 04    ...
    bne off_screen                                                    ; 32b4: d0 2f       ./
    jsr get_rectilinear_distance_from_centre_of_screen_accounting_for_starship_velocity; 32b6: 20 01 2b     .+
    cmp #$40                                                          ; 32b9: c9 40       .@
    bcc to_set_retreating_and_head_towards_desired_velocity_and_angle ; 32bb: 90 25       .%
    lda starship_velocity_low                                         ; 32bd: ad 01 0f    ...
    sta x_pixels                                                      ; 32c0: 85 7a       .z
    lda starship_velocity_high                                        ; 32c2: ad 00 0f    ...
    asl x_pixels                                                      ; 32c5: 06 7a       .z
    rol                                                               ; 32c7: 2a          *
    sta y_pixels                                                      ; 32c8: 85 7b       .{
    asl x_pixels                                                      ; 32ca: 06 7a       .z
    rol                                                               ; 32cc: 2a          *
    adc y_pixels                                                      ; 32cd: 65 7b       e{
    cmp enemy_ship_desired_velocity                                   ; 32cf: cd 81 2a    ..*
    bcs skip_setting_desired_velocity                                 ; 32d2: b0 03       ..
    sta enemy_ship_desired_velocity                                   ; 32d4: 8d 81 2a    ..*
skip_setting_desired_velocity
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 32d7: 20 61 2b     a+
    bne return_after_changing_velocity                                ; 32da: d0 0c       ..
    jsr fire_enemy_torpedo                                            ; 32dc: 20 cc 26     .&
    jmp return_after_changing_velocity                                ; 32df: 4c e8 32    L.2

to_set_retreating_and_head_towards_desired_velocity_and_angle
    jmp set_retreating_and_head_towards_desired_velocity_and_angle    ; 32e2: 4c 8d 33    L.3

off_screen
    jsr turn_enemy_ship_towards_starship_using_screens                ; 32e5: 20 47 2b     G+
return_after_changing_velocity
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 32e8: 20 3a 2c     :,
    jmp return_from_enemy_ship_behaviour_routine                      ; 32eb: 4c d2 36    L.6

; ----------------------------------------------------------------------------------
enemy_ship_behaviour_routine2
    lda enemy_ships_on_screen,x                                       ; 32ee: bd 80 04    ...
    bne off_screen1                                                   ; 32f1: d0 22       ."
    jsr get_rectilinear_distance_from_centre_of_screen                ; 32f3: 20 26 2b     &+
    cmp #$46                                                          ; 32f6: c9 46       .F
    bcc to_set_retreating_and_head_towards_desired_velocity_and_angle1; 32f8: 90 12       ..
    cmp #$6e                                                          ; 32fa: c9 6e       .n
    bcs return_after_turning_enemy_ship_towards_desired_angle         ; 32fc: b0 11       ..
    jsr decrease_enemy_ship_velocity                                  ; 32fe: 20 29 2c     ),
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 3301: 20 61 2b     a+
    bne to_return_from_enemy_ship_behaviour_routine1                  ; 3304: d0 15       ..
    jsr fire_enemy_torpedo                                            ; 3306: 20 cc 26     .&
    jmp to_return_from_enemy_ship_behaviour_routine1                  ; 3309: 4c 1b 33    L.3

to_set_retreating_and_head_towards_desired_velocity_and_angle1
    jmp set_retreating_and_head_towards_desired_velocity_and_angle    ; 330c: 4c 8d 33    L.3

return_after_turning_enemy_ship_towards_desired_angle
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 330f: 20 61 2b     a+
    jmp return_after_changing_velocity1                               ; 3312: 4c 18 33    L.3

off_screen1
    jsr turn_enemy_ship_towards_starship_using_screens                ; 3315: 20 47 2b     G+
return_after_changing_velocity1
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 3318: 20 3a 2c     :,
to_return_from_enemy_ship_behaviour_routine1
    jmp return_from_enemy_ship_behaviour_routine                      ; 331b: 4c d2 36    L.6

; ----------------------------------------------------------------------------------
enemy_ship_behaviour_routine3
    lda enemy_ships_on_screen,x                                       ; 331e: bd 80 04    ...
    bne off_screen2                                                   ; 3321: d0 15       ..
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 3323: 20 61 2b     a+
    bne skip_firing                                                   ; 3326: d0 03       ..
    jsr fire_enemy_torpedo                                            ; 3328: 20 cc 26     .&
skip_firing
    jsr get_rectilinear_distance_from_centre_of_screen                ; 332b: 20 26 2b     &+
    cmp #$78                                                          ; 332e: c9 78       .x
    bcs to_return_from_enemy_ship_behaviour_routine2                  ; 3330: b0 0c       ..
    jsr decrease_enemy_ship_velocity                                  ; 3332: 20 29 2c     ),
    jmp return_from_enemy_ship_behaviour_routine                      ; 3335: 4c d2 36    L.6

off_screen2
    jsr turn_enemy_ship_towards_starship_using_screens                ; 3338: 20 47 2b     G+
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 333b: 20 3a 2c     :,
to_return_from_enemy_ship_behaviour_routine2
    jmp return_from_enemy_ship_behaviour_routine                      ; 333e: 4c d2 36    L.6

; ----------------------------------------------------------------------------------
enemy_ship_behaviour_routine4
    lda enemy_ships_on_screen,x                                       ; 3341: bd 80 04    ...
    bne off_screen3                                                   ; 3344: d0 1b       ..
    jsr get_rectilinear_distance_from_centre_of_screen                ; 3346: 20 26 2b     &+
    cmp #$64                                                          ; 3349: c9 64       .d
    bcc decelerate                                                    ; 334b: 90 06       ..
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 334d: 20 3a 2c     :,
    jmp skip_deceleration                                             ; 3350: 4c 56 33    LV3

decelerate
    jsr decrease_enemy_ship_velocity                                  ; 3353: 20 29 2c     ),
skip_deceleration
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 3356: 20 61 2b     a+
    bne return_after_changing_velocity2                               ; 3359: d0 09       ..
    jsr fire_enemy_torpedo                                            ; 335b: 20 cc 26     .&
    jmp return_from_enemy_ship_behaviour_routine                      ; 335e: 4c d2 36    L.6

off_screen3
    jsr turn_enemy_ship_towards_starship_using_screens                ; 3361: 20 47 2b     G+
return_after_changing_velocity2
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 3364: 20 3a 2c     :,
    jmp return_from_enemy_ship_behaviour_routine                      ; 3367: 4c d2 36    L.6

; ----------------------------------------------------------------------------------
enemy_ship_behaviour_routine5
    lda enemy_ships_on_screen,x                                       ; 336a: bd 80 04    ...
    bne off_screen4                                                   ; 336d: d0 15       ..
    jsr get_rectilinear_distance_from_centre_of_screen                ; 336f: 20 26 2b     &+
    cmp #$50                                                          ; 3372: c9 50       .P
    bcc to_set_retreating_and_head_towards_desired_velocity_and_angle2; 3374: 90 0b       ..
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 3376: 20 61 2b     a+
    bne return_after_changing_velocity3                               ; 3379: d0 0c       ..
    jsr fire_enemy_torpedo                                            ; 337b: 20 cc 26     .&
    jmp return_after_changing_velocity3                               ; 337e: 4c 87 33    L.3

to_set_retreating_and_head_towards_desired_velocity_and_angle2
    jmp set_retreating_and_head_towards_desired_velocity_and_angle    ; 3381: 4c 8d 33    L.3

off_screen4
    jsr turn_enemy_ship_towards_starship_using_screens                ; 3384: 20 47 2b     G+
return_after_changing_velocity3
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 3387: 20 3a 2c     :,
    jmp return_from_enemy_ship_behaviour_routine                      ; 338a: 4c d2 36    L.6

set_retreating_and_head_towards_desired_velocity_and_angle
    lda enemy_ships_temporary_behaviour_flags,x                       ; 338d: bd 88 04    ...
    ora #$80                                                          ; 3390: 09 80       ..
    sta enemy_ships_temporary_behaviour_flags,x                       ; 3392: 9d 88 04    ...
    jsr turn_enemy_ship_towards_desired_angle                         ; 3395: 20 cf 2b     .+
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 3398: 20 3a 2c     :,
    jmp return_from_enemy_ship_behaviour_routine                      ; 339b: 4c d2 36    L.6

unused80
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 339e: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff                           ; 33aa: ff ff ff... ...
maximum_enemy_torpedo_cooldown_per_command
    !byte $0f, $0d, $0b, 9, 7, 5, 3, 2                                ; 33b1: 0f 0d 0b... ...
command_number_used_for_maximum_enemy_torpedo_cooldown_lookup
    !byte 0                                                           ; 33b9: 00          .
probability_of_new_enemy_ship_being_defensive_about_damage
    !byte 0                                                           ; 33ba: 00          .
probability_of_new_enemy_ship_being_defensive_about_angle
    !byte 0                                                           ; 33bb: 00          .
probability_of_new_enemy_ship_firing_torpedo_clusters
    !byte 0                                                           ; 33bc: 00          .
probability_of_new_enemy_ship_being_large
    !byte 0                                                           ; 33bd: 00          .
unused81
    !byte 0, 0                                                        ; 33be: 00 00       ..
change_in_enemy_ship_spawning_probabilities_per_command
    !byte $ec, $f2, $0f, $17                                          ; 33c0: ec f2 0f... ...
unused82
    !byte 0, 0                                                        ; 33c4: 00 00       ..
ultimate_enemy_ship_probabilities
    !byte $20, 4, $b8, $ff                                            ; 33c6: 20 04 b8...  ..
unused83
    !byte 0, 0                                                        ; 33ca: 00 00       ..
initial_enemy_ship_spawning_probabilities
    !byte $c0, $82, 4, 2                                              ; 33cc: c0 82 04... ...
unused84
    !byte 0, 0                                                        ; 33d0: 00 00       ..

; ----------------------------------------------------------------------------------
initialise_enemy_ship
    lda #$ff                                                          ; 33d2: a9 ff       ..
    sta enemy_ships_energy,x                                          ; 33d4: 9d 89 04    ...
    ldy enemy_ships_still_to_consider                                 ; 33d7: ac 54 0e    .T.
    lda #0                                                            ; 33da: a9 00       ..
    sta unused24,y                                                    ; 33dc: 99 e1 1c    ...
    sta enemy_ships_temporary_behaviour_flags,x                       ; 33df: 9d 88 04    ...
    jsr random_number_generator                                       ; 33e2: 20 13 21     .!
    lda rnd_2                                                         ; 33e5: ad d2 1c    ...
    and #$0f                                                          ; 33e8: 29 0f       ).
    sta enemy_ships_flags_or_explosion_timer,x                        ; 33ea: 9d 09 04    ...
    ldy #$5f                                                          ; 33ed: a0 5f       ._
    lda rnd_2                                                         ; 33ef: ad d2 1c    ...
    bpl skip29                                                        ; 33f2: 10 02       ..
    ldy #$9f                                                          ; 33f4: a0 9f       ..
skip29
    sty x_pixels                                                      ; 33f6: 84 7a       .z
    lda rnd_1                                                         ; 33f8: ad d1 1c    ...
    and #$1f                                                          ; 33fb: 29 1f       ).
    clc                                                               ; 33fd: 18          .
    adc #$70                                                          ; 33fe: 69 70       ip
    tay                                                               ; 3400: a8          .
    lda rnd_2                                                         ; 3401: ad d2 1c    ...
    asl                                                               ; 3404: 0a          .
    bpl skip_swap1                                                    ; 3405: 10 05       ..
    tya                                                               ; 3407: 98          .
    ldy x_pixels                                                      ; 3408: a4 7a       .z
    sta x_pixels                                                      ; 340a: 85 7a       .z
skip_swap1
    tya                                                               ; 340c: 98          .
    sta enemy_ships_x_screens,x                                       ; 340d: 9d 83 04    ...
    sta temp10                                                        ; 3410: 85 77       .w
    lda x_pixels                                                      ; 3412: a5 7a       .z
    sta enemy_ships_x_screens1,x                                      ; 3414: 9d 86 04    ...
    sta temp9                                                         ; 3417: 85 76       .v
    jsr calculate_enemy_ship_angle_to_starship                        ; 3419: 20 58 27     X'
    clc                                                               ; 341c: 18          .
    adc #$10                                                          ; 341d: 69 10       i.
    asl                                                               ; 341f: 0a          .
    asl                                                               ; 3420: 0a          .
    asl                                                               ; 3421: 0a          .
    sta enemy_ships_angle,x                                           ; 3422: 9d 87 04    ...
    jsr random_number_generator                                       ; 3425: 20 13 21     .!
    lda probability_of_new_enemy_ship_being_defensive_about_damage    ; 3428: ad ba 33    ..3
    cmp rnd_2                                                         ; 342b: cd d2 1c    ...
    bcc not_defensive_about_damage                                    ; 342e: 90 08       ..
    lda enemy_ships_flags_or_explosion_timer,x                        ; 3430: bd 09 04    ...
    ora #$40                                                          ; 3433: 09 40       .@
    sta enemy_ships_flags_or_explosion_timer,x                        ; 3435: 9d 09 04    ...
not_defensive_about_damage
    lda probability_of_new_enemy_ship_being_defensive_about_angle     ; 3438: ad bb 33    ..3
    cmp rnd_1                                                         ; 343b: cd d1 1c    ...
    bcc defensive_about_angle                                         ; 343e: 90 08       ..
    lda enemy_ships_flags_or_explosion_timer,x                        ; 3440: bd 09 04    ...
    ora #$20                                                          ; 3443: 09 20       .
    sta enemy_ships_flags_or_explosion_timer,x                        ; 3445: 9d 09 04    ...
defensive_about_angle
    jsr random_number_generator                                       ; 3448: 20 13 21     .!
    lda probability_of_new_enemy_ship_firing_torpedo_clusters         ; 344b: ad bc 33    ..3
    cmp rnd_1                                                         ; 344e: cd d1 1c    ...
    bcc clusters_unset                                                ; 3451: 90 08       ..
    lda enemy_ships_flags_or_explosion_timer,x                        ; 3453: bd 09 04    ...
    ora #$10                                                          ; 3456: 09 10       ..
    sta enemy_ships_flags_or_explosion_timer,x                        ; 3458: 9d 09 04    ...
clusters_unset
    ldy #0                                                            ; 345b: a0 00       ..
    lda probability_of_new_enemy_ship_being_large                     ; 345d: ad bd 33    ..3
    cmp rnd_2                                                         ; 3460: cd d2 1c    ...
    bcc small_ship                                                    ; 3463: 90 01       ..
    iny                                                               ; 3465: c8          .              ; Y=$01
small_ship
    tya                                                               ; 3466: 98          .
    sta enemy_ships_type,x                                            ; 3467: 9d 0a 04    ...
    jsr random_number_generator                                       ; 346a: 20 13 21     .!
    ldy command_number_used_for_maximum_enemy_torpedo_cooldown_lookup ; 346d: ac b9 33    ..3
    cpy #8                                                            ; 3470: c0 08       ..
    bcc skip_ceiling2                                                 ; 3472: 90 02       ..
    ldy #7                                                            ; 3474: a0 07       ..
skip_ceiling2
    lda maximum_enemy_torpedo_cooldown_per_command,y                  ; 3476: b9 b1 33    ..3
    sta x_pixels                                                      ; 3479: 85 7a       .z
    ldy #4                                                            ; 347b: a0 04       ..
    lda #0                                                            ; 347d: a9 00       ..
calculate_cooldown_loop
    lsr x_pixels                                                      ; 347f: 46 7a       Fz
    bcc skip_addition                                                 ; 3481: 90 04       ..
    clc                                                               ; 3483: 18          .
    adc rnd_2                                                         ; 3484: 6d d2 1c    m..
skip_addition
    ror                                                               ; 3487: 6a          j
    dey                                                               ; 3488: 88          .
    bne calculate_cooldown_loop                                       ; 3489: d0 f4       ..
    clc                                                               ; 348b: 18          .
    adc #$10                                                          ; 348c: 69 10       i.
    and #$f0                                                          ; 348e: 29 f0       ).
    sta enemy_ships_firing_cooldown,x                                 ; 3490: 9d 8a 04    ...
    lda #1                                                            ; 3493: a9 01       ..
    sta enemy_ships_on_screen,x                                       ; 3495: 9d 80 04    ...
    lda #$ff                                                          ; 3498: a9 ff       ..
    sta enemy_ships_velocity,x                                        ; 349a: 9d 08 04    ...
    rts                                                               ; 349d: 60          `

unused85
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 349e: ea ea ea... ...
    !byte $ea, $ea, $ea, $ea, $ea, $ea                                ; 34aa: ea ea ea... ...
starship_type
    !byte 0                                                           ; 34b0: 00          .
command_number
    !byte 0                                                           ; 34b1: 00          .
regeneration_rate_for_enemy_ships
    !byte 1                                                           ; 34b2: 01          .
maximum_timer_for_enemy_ships_regeneration
    !byte 4                                                           ; 34b3: 04          .
timer_for_enemy_ships_regeneration
    !byte 0                                                           ; 34b4: 00          .
base_regeneration_rate_for_starship
    !byte $0c                                                         ; 34b5: 0c          .
maximum_timer_for_starship_energy_regeneration
    !byte 3                                                           ; 34b6: 03          .
timer_for_starship_energy_regeneration
    !byte 3                                                           ; 34b7: 03          .
base_damage_to_enemy_ship_from_other_collision
    !byte $14                                                         ; 34b8: 14          .
maximum_number_of_stars_in_game
    !byte $11                                                         ; 34b9: 11          .
minimum_number_of_stars
    !byte 1                                                           ; 34ba: 01          .
change_in_number_of_stars_per_command
    !byte $fe                                                         ; 34bb: fe          .
subtraction_from_starship_regeneration_when_shields_active
    !byte 4                                                           ; 34bc: 04          .
unused86
    !byte $ea, $ea, $ea                                               ; 34bd: ea ea ea    ...
escape_capsule_launched_string
    !text "DEHCNUAL"                                                  ; 34c0: 44 45 48... DEH
    !byte $19, $20, $1f                                               ; 34c8: 19 20 1f    . .
    !text "ELUSPAC"                                                   ; 34cb: 45 4c 55... ELU
    !byte $18, $20, $1f                                               ; 34d2: 18 20 1f    . .
    !text "EPACSE"                                                    ; 34d5: 45 50 41... EPA
    !byte $17, $20, $1f                                               ; 34db: 17 20 1f    . .
command_move_string
    !byte 0, $81, 4                                                   ; 34de: 00 81 04    ...
command_move_string_horizontal_pos
    !byte $6f, 4, $19                                                 ; 34e1: 6f 04 19    o..
command_string
    !text "DNAMMOC"                                                   ; 34e4: 44 4e 41... DNA
    !byte 5, 0, $a2, 4, $0f, 4, $19                                   ; 34eb: 05 00 a2... ...
unused87
    !byte $ea, $ea                                                    ; 34f2: ea ea       ..

prepare_starship_for_next_command
    inc starship_type                                                 ; 34f4: ee b0 34    ..4
    inc command_number_used_for_maximum_enemy_torpedo_cooldown_lookup ; 34f7: ee b9 33    ..3
    lda command_number                                                ; 34fa: ad b1 34    ..4
    clc                                                               ; 34fd: 18          .
    sei                                                               ; 34fe: 78          x
    sed                                                               ; 34ff: f8          .
    adc #1                                                            ; 3500: 69 01       i.
    cld                                                               ; 3502: d8          .
    cli                                                               ; 3503: 58          X
    sta command_number                                                ; 3504: 8d b1 34    ..4
    lda #0                                                            ; 3507: a9 00       ..
    sta starship_has_exploded                                         ; 3509: 8d c9 1c    ...
    sta escape_capsule_launched                                       ; 350c: 8d d8 1c    ...
    sta escape_capsule_destroyed                                      ; 350f: 8d 90 28    ..(
    sta score_delta_high                                              ; 3512: 8d 64 2d    .d-
    sta score_delta_low                                               ; 3515: 8d 63 2d    .c-
    sta damage_high                                                   ; 3518: 8d 1e 19    ...
    sta damage_low                                                    ; 351b: 8d 1f 19    ...
    sta starship_energy_divided_by_sixteen                            ; 351e: 8d 22 19    .".
    sta rotation_damper                                               ; 3521: 8d 2c 19    .,.
    sta velocity_damper                                               ; 3524: 8d 31 19    .1.
    sta velocity_gauge_position                                       ; 3527: 8d 61 2d    .a-
    sta rotation_gauge_position                                       ; 352a: 8d 62 2d    .b-
    sta starship_velocity_low                                         ; 352d: 8d 01 0f    ...
    sta starship_rotation_magnitude                                   ; 3530: 8d 03 0f    ...
    sta starship_rotation_cosine                                      ; 3533: 8d 04 0f    ...
    sta starship_rotation_sine_magnitude                              ; 3536: 8d 05 0f    ...
    sta starship_angle_delta                                          ; 3539: 8d 33 0e    .3.
    sta previous_starship_automatic_shields                           ; 353c: 8d 3a 19    .:.
    sta sound_needed_for_low_energy                                   ; 353f: 8d f1 25    ..%
    sta energy_flash_timer                                            ; 3542: 8d f2 25    ..%
    lda #4                                                            ; 3545: a9 04       ..
    sta starship_velocity_high                                        ; 3547: 8d 00 0f    ...
    lda #1                                                            ; 354a: a9 01       ..
    sta scanner_failure_duration                                      ; 354c: 8d 59 26    .Y&
    sta starship_shields_active_before_failure                        ; 354f: 8d 5a 26    .Z&
    lda #$80                                                          ; 3552: a9 80       ..
    sta starship_angle_fraction                                       ; 3554: 8d 32 0e    .2.
    sta starship_rotation                                             ; 3557: 8d 02 0f    ...
    sta starship_rotation_fraction                                    ; 355a: 8d 28 19    .(.
    sta starship_automatic_shields                                    ; 355d: 8d 24 19    .$.
    lda #$0c                                                          ; 3560: a9 0c       ..
    sta starship_energy_high                                          ; 3562: 8d 1d 19    ...
    lda #$7f                                                          ; 3565: a9 7f       ..
    sta starship_energy_low                                           ; 3567: 8d 1c 19    ...
; clear screen
    lda #$0c                                                          ; 356a: a9 0c       ..
    jsr oswrch                                                        ; 356c: 20 ee ff     ..            ; Write character 12
    ldx #<(sound_0)                                                   ; 356f: a2 08       ..
    ldy #>(sound_0)                                                   ; 3571: a0 20       .
    lda #osword_sound                                                 ; 3573: a9 07       ..
    jsr osword                                                        ; 3575: 20 f1 ff     ..            ; SOUND command
initialise_starship_sprite
    lda starship_type                                                 ; 3578: ad b0 34    ..4
    asl                                                               ; 357b: 0a          .
    asl                                                               ; 357c: 0a          .
    asl                                                               ; 357d: 0a          .
    asl                                                               ; 357e: 0a          .
    asl                                                               ; 357f: 0a          .
    tay                                                               ; 3580: a8          .
    ldx #0                                                            ; 3581: a2 00       ..
initialise_starship_sprite_loop
    lda starship_sprite_1,y                                           ; 3583: b9 60 2c    .`,
    sta user_defined_characters,x                                     ; 3586: 9d 00 0c    ...
    iny                                                               ; 3589: c8          .
    inx                                                               ; 358a: e8          .
    cpx #$20                                                          ; 358b: e0 20       .
    bne initialise_starship_sprite_loop                               ; 358d: d0 f4       ..
    jsr initialise_stars_at_random_positions                          ; 358f: 20 58 1d     X.
    jsr initialise_enemy_ships                                        ; 3592: 20 14 36     .6
    jsr initialise_game_screen                                        ; 3595: 20 a0 28     .(
    jsr plot_enemy_ships                                              ; 3598: 20 f2 16     ..
    rts                                                               ; 359b: 60          `

unused88
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea                 ; 359c: ea ea ea... ...

plot_command_number
    lda #$d4                                                          ; 35a5: a9 d4       ..
    sta y_pixels                                                      ; 35a7: 85 7b       .{
    lda #0                                                            ; 35a9: a9 00       ..
    sta x_pixels                                                      ; 35ab: 85 7a       .z
    inc screen_start_high                                             ; 35ad: e6 79       .y
    lda #$3f                                                          ; 35af: a9 3f       .?
    jsr plot_horizontal_line                                          ; 35b1: 20 db 1b     ..
    dec screen_start_high                                             ; 35b4: c6 79       .y
    ldy #$0d                                                          ; 35b6: a0 0d       ..
plot_command_loop
    lda command_string,y                                              ; 35b8: b9 e4 34    ..4
    jsr oswrch                                                        ; 35bb: 20 ee ff     ..            ; Write character
    dey                                                               ; 35be: 88          .
    bpl plot_command_loop                                             ; 35bf: 10 f7       ..
    ldy #$73                                                          ; 35c1: a0 73       .s
    lda command_number                                                ; 35c3: ad b1 34    ..4
    lsr                                                               ; 35c6: 4a          J
    lsr                                                               ; 35c7: 4a          J
    lsr                                                               ; 35c8: 4a          J
    lsr                                                               ; 35c9: 4a          J
    tax                                                               ; 35ca: aa          .
    beq single_digit_command_number_for_move                          ; 35cb: f0 02       ..
    ldy #$63                                                          ; 35cd: a0 63       .c
single_digit_command_number_for_move
    sty command_move_string_horizontal_pos                            ; 35cf: 8c e1 34    ..4
    ldy #5                                                            ; 35d2: a0 05       ..
plot_command_move_loop
    lda command_move_string,y                                         ; 35d4: b9 de 34    ..4
    jsr oswrch                                                        ; 35d7: 20 ee ff     ..            ; Write character
    dey                                                               ; 35da: 88          .
    bpl plot_command_move_loop                                        ; 35db: 10 f7       ..
    txa                                                               ; 35dd: 8a          .
    beq single_digit_command_number                                   ; 35de: f0 06       ..
    clc                                                               ; 35e0: 18          .
    adc #$30                                                          ; 35e1: 69 30       i0
    jsr oswrch                                                        ; 35e3: 20 ee ff     ..            ; Write character
single_digit_command_number
    lda command_number                                                ; 35e6: ad b1 34    ..4
    and #$0f                                                          ; 35e9: 29 0f       ).
    clc                                                               ; 35eb: 18          .
    adc #$30                                                          ; 35ec: 69 30       i0
    jsr oswrch                                                        ; 35ee: 20 ee ff     ..            ; Write character
    lda #4                                                            ; 35f1: a9 04       ..
    jsr oswrch                                                        ; 35f3: 20 ee ff     ..            ; Write character 4
    rts                                                               ; 35f6: 60          `

plot_escape_capsule_launched
    ldy #$1d                                                          ; 35f7: a0 1d       ..
plot_escape_capsule_launched_loop_loop
    lda escape_capsule_launched_string,y                              ; 35f9: b9 c0 34    ..4
    jsr oswrch                                                        ; 35fc: 20 ee ff     ..            ; Write character
    dey                                                               ; 35ff: 88          .
    bpl plot_escape_capsule_launched_loop_loop                        ; 3600: 10 f7       ..
    lda #$c8                                                          ; 3602: a9 c8       ..
    sta y_pixels                                                      ; 3604: 85 7b       .{
    lda #$3f                                                          ; 3606: a9 3f       .?
    sta x_pixels                                                      ; 3608: 85 7a       .z
    inc screen_start_high                                             ; 360a: e6 79       .y
    lda #8                                                            ; 360c: a9 08       ..
    jsr plot_vertical_line                                            ; 360e: 20 cf 1b     ..
    dec screen_start_high                                             ; 3611: c6 79       .y
    rts                                                               ; 3613: 60          `

initialise_enemy_ships
    lda maximum_number_of_enemy_ships                                 ; 3614: ad 4f 0e    .O.
    sta enemy_ships_still_to_consider                                 ; 3617: 8d 54 0e    .T.
    ldx #0                                                            ; 361a: a2 00       ..
initialise_enemy_ships_loop
    jsr initialise_enemy_ship                                         ; 361c: 20 d2 33     .3
    lda #1                                                            ; 361f: a9 01       ..
    sta enemy_ships_previous_on_screen,x                              ; 3621: 9d 00 04    ...
    txa                                                               ; 3624: 8a          .
    clc                                                               ; 3625: 18          .
    adc #$0b                                                          ; 3626: 69 0b       i.
    tax                                                               ; 3628: aa          .
    dec enemy_ships_still_to_consider                                 ; 3629: ce 54 0e    .T.
    bne initialise_enemy_ships_loop                                   ; 362c: d0 ee       ..
    rts                                                               ; 362e: 60          `

initialise_joystick_and_cursor_keys
    ldx #2                                                            ; 362f: a2 02       ..
    lda #osbyte_select_adc_channels                                   ; 3631: a9 10       ..
    jsr osbyte                                                        ; 3633: 20 f4 ff     ..            ; Select 2 ADC channels (X=2)
    ldx #1                                                            ; 3636: a2 01       ..
    lda #osbyte_set_cursor_editing                                    ; 3638: a9 04       ..
    jsr osbyte                                                        ; 363a: 20 f4 ff     ..            ; Disable cursor editing (edit keys give ASCII 135-139) (X=1)
    jsr convert_score_as_bcd_to_score_as_digits                       ; 363d: 20 01 2e     ..
    rts                                                               ; 3640: 60          `

unused89
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 3641: ea ea ea... ...
    !byte $ea, $ea                                                    ; 364d: ea ea       ..

update_enemy_ships
    dec timer_for_enemy_ships_regeneration                            ; 364f: ce b4 34    ..4
    bpl skip_timer_reset                                              ; 3652: 10 06       ..
    lda maximum_timer_for_enemy_ships_regeneration                    ; 3654: ad b3 34    ..4
    sta timer_for_enemy_ships_regeneration                            ; 3657: 8d b4 34    ..4
skip_timer_reset
    lda maximum_number_of_enemy_torpedoes                             ; 365a: ad 52 0e    .R.
    sta torpedoes_still_to_consider                                   ; 365d: 8d 55 0e    .U.
    lda enemy_torpedo_table_address_low                               ; 3660: ad 3d 0e    .=.
    sta temp0_low                                                     ; 3663: 85 80       ..
    lda enemy_torpedo_table_address_high                              ; 3665: ad 3e 0e    .>.
    sta temp0_high                                                    ; 3668: 85 81       ..
    lda maximum_number_of_enemy_ships                                 ; 366a: ad 4f 0e    .O.
    sta enemy_ships_still_to_consider                                 ; 366d: 8d 54 0e    .T.
    ldx #0                                                            ; 3670: a2 00       ..
update_enemy_ships_loop
    lda enemy_ships_energy,x                                          ; 3672: bd 89 04    ...
    beq to_skip_changing_behaviour_type                               ; 3675: f0 08       ..
    ldy starship_has_exploded                                         ; 3677: ac c9 1c    ...
    beq starship_still_viable                                         ; 367a: f0 06       ..
    jsr decrease_enemy_ship_velocity                                  ; 367c: 20 29 2c     ),
to_skip_changing_behaviour_type
    jmp skip_changing_behaviour_type                                  ; 367f: 4c 18 37    L.7

starship_still_viable
    cmp #$ff                                                          ; 3682: c9 ff       ..
    bne enemy_ship_is_damaged                                         ; 3684: d0 05       ..
    lda desired_velocity_for_intact_enemy_ships                       ; 3686: ad 83 2a    ..*
    bne set_velocity                                                  ; 3689: d0 08       ..
enemy_ship_is_damaged
    lsr                                                               ; 368b: 4a          J
    lsr                                                               ; 368c: 4a          J
    lsr                                                               ; 368d: 4a          J
    lsr                                                               ; 368e: 4a          J
    clc                                                               ; 368f: 18          .
    adc partial_velocity_for_damaged_enemy_ships                      ; 3690: 6d 82 2a    m.*
set_velocity
    sta enemy_ship_desired_velocity                                   ; 3693: 8d 81 2a    ..*
    lda enemy_ships_firing_cooldown,x                                 ; 3696: bd 8a 04    ...
    and #$0f                                                          ; 3699: 29 0f       ).
    beq cooldown_is_zero                                              ; 369b: f0 03       ..
    dec enemy_ships_firing_cooldown,x                                 ; 369d: de 8a 04    ...
cooldown_is_zero
    lda timer_for_enemy_ships_regeneration                            ; 36a0: ad b4 34    ..4
    bne skip_enemy_regeneration                                       ; 36a3: d0 15       ..
    lda enemy_ships_type,x                                            ; 36a5: bd 0a 04    ...
    cmp #4                                                            ; 36a8: c9 04       ..
    bcs skip_enemy_regeneration                                       ; 36aa: b0 0e       ..
    lda enemy_ships_energy,x                                          ; 36ac: bd 89 04    ...
    clc                                                               ; 36af: 18          .
    adc regeneration_rate_for_enemy_ships                             ; 36b0: 6d b2 34    m.4
    bcc skip_ceiling3                                                 ; 36b3: 90 02       ..
    lda #$ff                                                          ; 36b5: a9 ff       ..
skip_ceiling3
    sta enemy_ships_energy,x                                          ; 36b7: 9d 89 04    ...
skip_enemy_regeneration
    jsr enemy_ship_defensive_behaviour_handling                       ; 36ba: 20 8b 2a     .*
    bcs skip_behaviour_routine                                        ; 36bd: b0 3a       .:
    lda enemy_ships_flags_or_explosion_timer,x                        ; 36bf: bd 09 04    ...
    and #$0f                                                          ; 36c2: 29 0f       ).
    tay                                                               ; 36c4: a8          .
    lda enemy_ship_behaviour_routine_low_table,y                      ; 36c5: b9 5f 2a    ._*
    sta temp1_low                                                     ; 36c8: 85 82       ..
    lda enemy_ship_behaviour_routine_high_table,y                     ; 36ca: b9 70 2a    .p*
    sta temp1_high                                                    ; 36cd: 85 83       ..
    jmp (temp1_low)                                                   ; 36cf: 6c 82 00    l..

return_from_enemy_ship_behaviour_routine
    lda enemy_ships_x_screens,x                                       ; 36d2: bd 83 04    ...
    bmi skip_inversion_x5                                             ; 36d5: 30 02       0.
    eor #$ff                                                          ; 36d7: 49 ff       I.
skip_inversion_x5
    sta x_pixels                                                      ; 36d9: 85 7a       .z
    lda enemy_ships_x_screens1,x                                      ; 36db: bd 86 04    ...
    bmi skip_inversion_y5                                             ; 36de: 30 02       0.
    eor #$ff                                                          ; 36e0: 49 ff       I.
skip_inversion_y5
    clc                                                               ; 36e2: 18          .
    adc x_pixels                                                      ; 36e3: 65 7a       ez
    cmp #6                                                            ; 36e5: c9 06       ..
    bcc skip_behaviour_routine                                        ; 36e7: 90 10       ..
    ldy enemy_ships_velocity,x                                        ; 36e9: bc 08 04    ...
    cpy #$22                                                          ; 36ec: c0 22       ."
    bcs skip_behaviour_routine                                        ; 36ee: b0 09       ..
    adc #$50                                                          ; 36f0: 69 50       iP
    bcc skip_ceiling4                                                 ; 36f2: 90 02       ..
    lda #$ff                                                          ; 36f4: a9 ff       ..
skip_ceiling4
    sta enemy_ships_velocity,x                                        ; 36f6: 9d 08 04    ...
skip_behaviour_routine
    jsr random_number_generator                                       ; 36f9: 20 13 21     .!
    lda rnd_1                                                         ; 36fc: ad d1 1c    ...
    cmp #6                                                            ; 36ff: c9 06       ..
    bcs skip_changing_behaviour_type                                  ; 3701: b0 15       ..
    lda rnd_2                                                         ; 3703: ad d2 1c    ...
    and #$0f                                                          ; 3706: 29 0f       ).
    sta x_pixels                                                      ; 3708: 85 7a       .z
    lda enemy_ships_flags_or_explosion_timer,x                        ; 370a: bd 09 04    ...
    and #$f0                                                          ; 370d: 29 f0       ).
    ora x_pixels                                                      ; 370f: 05 7a       .z
    sta enemy_ships_flags_or_explosion_timer,x                        ; 3711: 9d 09 04    ...
    lda #0                                                            ; 3714: a9 00       ..
    beq skip_resetting_hit_count                                      ; 3716: f0 05       ..             ; ALWAYS branch

skip_changing_behaviour_type
    lda enemy_ships_temporary_behaviour_flags,x                       ; 3718: bd 88 04    ...
    and #$f0                                                          ; 371b: 29 f0       ).
skip_resetting_hit_count
    sta enemy_ships_temporary_behaviour_flags,x                       ; 371d: 9d 88 04    ...
    txa                                                               ; 3720: 8a          .
    clc                                                               ; 3721: 18          .
    adc #$0b                                                          ; 3722: 69 0b       i.
    tax                                                               ; 3724: aa          .
    dec enemy_ships_still_to_consider                                 ; 3725: ce 54 0e    .T.
    beq return27                                                      ; 3728: f0 03       ..
    jmp update_enemy_ships_loop                                       ; 372a: 4c 72 36    Lr6

return27
    rts                                                               ; 372d: 60          `

; ----------------------------------------------------------------------------------
enemy_ship_behaviour_routine6
    lda enemy_ships_on_screen,x                                       ; 372e: bd 80 04    ...
    bne off_screen5                                                   ; 3731: d0 25       .%
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 3733: 20 61 2b     a+
    bne skip_firing1                                                  ; 3736: d0 03       ..
    jsr fire_enemy_torpedo                                            ; 3738: 20 cc 26     .&
skip_firing1
    lda enemy_ships_x_pixels1,x                                       ; 373b: bd 85 04    ...
    bpl slow_to_a_crawl                                               ; 373e: 10 0b       ..
    and #$7f                                                          ; 3740: 29 7f       ).
    lsr                                                               ; 3742: 4a          J
    clc                                                               ; 3743: 18          .
    adc enemy_ships_still_to_consider                                 ; 3744: 6d 54 0e    mT.
    sbc #6                                                            ; 3747: e9 06       ..
    bcs use_speed_based_on_y_pixels                                   ; 3749: b0 02       ..
slow_to_a_crawl
    lda #1                                                            ; 374b: a9 01       ..
use_speed_based_on_y_pixels
    cmp enemy_ship_desired_velocity                                   ; 374d: cd 81 2a    ..*
    bcs return_after_changing_velocity4                               ; 3750: b0 09       ..
    sta enemy_ship_desired_velocity                                   ; 3752: 8d 81 2a    ..*
    jmp return_after_changing_velocity4                               ; 3755: 4c 5b 37    L[7

off_screen5
    jsr turn_enemy_ship_towards_starship_using_screens                ; 3758: 20 47 2b     G+
return_after_changing_velocity4
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 375b: 20 3a 2c     :,
    jmp return_from_enemy_ship_behaviour_routine                      ; 375e: 4c d2 36    L.6

; ----------------------------------------------------------------------------------
enemy_ship_behaviour_routine7
    lda enemy_ship_desired_velocity                                   ; 3761: ad 81 2a    ..*
    clc                                                               ; 3764: 18          .
    adc #8                                                            ; 3765: 69 08       i.
    sta enemy_ship_desired_velocity                                   ; 3767: 8d 81 2a    ..*
    lda enemy_ships_on_screen,x                                       ; 376a: bd 80 04    ...
    bne off_screen6                                                   ; 376d: d0 68       .h
    lda enemy_ships_temporary_behaviour_flags,x                       ; 376f: bd 88 04    ...
    tay                                                               ; 3772: a8          .
    and #$10                                                          ; 3773: 29 10       ).
    bne kamikaze_stage_one_set                                        ; 3775: d0 37       .7
    tya                                                               ; 3777: 98          .
    and #$20                                                          ; 3778: 29 20       )
    bne skip_setting_kamikaze_stage_one                               ; 377a: d0 0e       ..
    lda starship_velocity_high                                        ; 377c: ad 00 0f    ...
    cmp #2                                                            ; 377f: c9 02       ..
    bcc skip_setting_kamikaze_stage_one                               ; 3781: 90 07       ..
    tya                                                               ; 3783: 98          .
    ora #$10                                                          ; 3784: 09 10       ..
    tay                                                               ; 3786: a8          .
    sta enemy_ships_temporary_behaviour_flags,x                       ; 3787: 9d 88 04    ...
skip_setting_kamikaze_stage_one
    jsr get_rectilinear_distance_from_centre_of_screen                ; 378a: 20 26 2b     &+
    cmp #$69                                                          ; 378d: c9 69       .i
    bcc decelerate1                                                   ; 378f: 90 0c       ..
    tya                                                               ; 3791: 98          .
    and #$cf                                                          ; 3792: 29 cf       ).
    sta enemy_ships_temporary_behaviour_flags,x                       ; 3794: 9d 88 04    ...
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 3797: 20 3a 2c     :,
    jmp skip_deceleration1                                            ; 379a: 4c a3 37    L.7

decelerate1
    jsr decrease_enemy_ship_velocity                                  ; 379d: 20 29 2c     ),
    jsr decrease_enemy_ship_velocity                                  ; 37a0: 20 29 2c     ),
skip_deceleration1
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 37a3: 20 61 2b     a+
    bne to_return_from_enemy_ship_behaviour_routine3                  ; 37a6: d0 35       .5
    jsr fire_enemy_torpedo                                            ; 37a8: 20 cc 26     .&
    jmp to_return_from_enemy_ship_behaviour_routine3                  ; 37ab: 4c dd 37    L.7

kamikaze_stage_one_set
    lda enemy_ship_desired_angle_divided_by_eight                     ; 37ae: ad 55 26    .U&
    lsr                                                               ; 37b1: 4a          J
    clc                                                               ; 37b2: 18          .
    adc #8                                                            ; 37b3: 69 08       i.
    and #$1f                                                          ; 37b5: 29 1f       ).
    sta enemy_ship_desired_angle_divided_by_eight                     ; 37b7: 8d 55 26    .U&
    jsr turn_enemy_ship_towards_desired_angle_accounting_for_starship_velocity; 37ba: 20 61 2b     a+
    lda enemy_ships_x_pixels1,x                                       ; 37bd: bd 85 04    ...
    bmi return_after_changing_velocity5                               ; 37c0: 30 18       0.
    lda enemy_ships_x_pixels,x                                        ; 37c2: bd 82 04    ...
    sec                                                               ; 37c5: 38          8
    sbc #$60                                                          ; 37c6: e9 60       .`
    cmp #$40                                                          ; 37c8: c9 40       .@
    bcs return_after_changing_velocity5                               ; 37ca: b0 0e       ..
    lda enemy_ships_temporary_behaviour_flags,x                       ; 37cc: bd 88 04    ...
    eor #$30                                                          ; 37cf: 49 30       I0
    sta enemy_ships_temporary_behaviour_flags,x                       ; 37d1: 9d 88 04    ...
    jmp return_after_changing_velocity5                               ; 37d4: 4c da 37    L.7

off_screen6
    jsr turn_enemy_ship_towards_starship_using_screens                ; 37d7: 20 47 2b     G+
return_after_changing_velocity5
    jsr increase_or_decrease_enemy_ship_velocity_towards_desired_velocity; 37da: 20 3a 2c     :,
to_return_from_enemy_ship_behaviour_routine3
    jmp return_from_enemy_ship_behaviour_routine                      ; 37dd: 4c d2 36    L.6

unused90
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 37e0: ea ea ea... ...
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea                           ; 37ec: ea ea ea... ...

start_game_continuation
    lda #$ff                                                          ; 37f3: a9 ff       ..
    sta command_number_used_for_maximum_enemy_torpedo_cooldown_lookup ; 37f5: 8d b9 33    ..3
    sta starship_type                                                 ; 37f8: 8d b0 34    ..4
    lda #0                                                            ; 37fb: a9 00       ..
    sta command_number                                                ; 37fd: 8d b1 34    ..4
    sta score_as_bcd + 2                                              ; 3800: 8d 67 2d    .g-
    sta score_as_bcd + 1                                              ; 3803: 8d 66 2d    .f-
    sta score_as_bcd                                                  ; 3806: 8d 65 2d    .e-
    lda maximum_number_of_stars_in_game                               ; 3809: ad b9 34    ..4
    sta maximum_number_of_stars                                       ; 380c: 8d 50 0e    .P.
    ldy #3                                                            ; 380f: a0 03       ..
reset_enemy_ship_spawning_probabilities_loop
    lda initial_enemy_ship_spawning_probabilities,y                   ; 3811: b9 cc 33    ..3
    sta probability_of_new_enemy_ship_being_defensive_about_damage,y  ; 3814: 99 ba 33    ..3
    dey                                                               ; 3817: 88          .
    bpl reset_enemy_ship_spawning_probabilities_loop                  ; 3818: 10 f7       ..
    jsr prepare_starship_for_next_command                             ; 381a: 20 f4 34     .4
    jmp main_game_loop                                                ; 381d: 4c 33 38    L38

unused91
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 3820: ea ea ea... ...
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea                           ; 382c: ea ea ea... ...

main_game_loop
    lda #0                                                            ; 3833: a9 00       ..
    sta enemy_torpedo_hits_against_starship                           ; 3835: 8d dd 1c    ...
    sta enemy_ship_was_hit                                            ; 3838: 8d de 1c    ...
    sta starship_collided_with_enemy_ship                             ; 383b: 8d de 25    ..%
    sta starship_fired_torpedo                                        ; 383e: 8d 58 26    .X&
    sta enemy_ship_fired_torpedo                                      ; 3841: 8d dc 1c    ...
    sta enemy_ships_collided_with_each_other                          ; 3844: 8d d1 17    ...
    sta number_of_delay_loops                                         ; 3847: 8d 2d 0e    .-.
    jsr apply_velocity_to_enemy_ships                                 ; 384a: 20 31 16     1.
    lda #$ff                                                          ; 384d: a9 ff       ..
    sta how_enemy_ship_was_damaged                                    ; 384f: 8d e0 1c    ...
    jsr check_for_starship_collision_with_enemy_ships                 ; 3852: 20 d8 17     ..
    jsr update_enemy_ships                                            ; 3855: 20 4f 36     O6
    lda starship_shields_active                                       ; 3858: ad 56 0e    .V.
    beq skip_scanner_update                                           ; 385b: f0 08       ..
    lda scanner_failure_duration                                      ; 385d: ad 59 26    .Y&
    bne skip_scanner_update                                           ; 3860: d0 03       ..
    jsr plot_enemy_ships_on_scanners                                  ; 3862: 20 19 30     .0
skip_scanner_update
    jsr plot_enemy_ships                                              ; 3865: 20 f2 16     ..
    jsr update_stars                                                  ; 3868: 20 d0 13     ..
    jsr handle_enemy_ships_cloaking                                   ; 386b: 20 67 26     g&
    inc how_enemy_ship_was_damaged                                    ; 386e: ee e0 1c    ...
    jsr plot_starship_torpedoes                                       ; 3871: 20 19 12     ..
    jsr update_enemy_torpedoes                                        ; 3874: 20 d2 14     ..
    inc how_enemy_ship_was_damaged                                    ; 3877: ee e0 1c    ...
    jsr handle_starship_self_destruct                                 ; 387a: 20 f8 28     .(
    jsr handle_scanner_failure                                        ; 387d: 20 61 31     a1
    lda number_of_delay_loops                                         ; 3880: ad 2d 0e    .-.
    beq skip_delay                                                    ; 3883: f0 0e       ..
    cmp #$0b                                                          ; 3885: c9 0b       ..
    bcc delay_loop_loop                                               ; 3887: 90 02       ..
    lda #$0a                                                          ; 3889: a9 0a       ..
delay_loop_loop
    jsr delay_loop                                                    ; 388b: 20 9c 17     ..
    dec number_of_delay_loops                                         ; 388e: ce 2d 0e    .-.
    bne delay_loop_loop                                               ; 3891: d0 f8       ..
skip_delay
    lda #0                                                            ; 3893: a9 00       ..
    dec timer_for_starship_energy_regeneration                        ; 3895: ce b7 34    ..4
    bne set_regeneration                                              ; 3898: d0 16       ..
    lda maximum_timer_for_starship_energy_regeneration                ; 389a: ad b6 34    ..4
    sta timer_for_starship_energy_regeneration                        ; 389d: 8d b7 34    ..4
    lda base_regeneration_rate_for_starship                           ; 38a0: ad b5 34    ..4
    sec                                                               ; 38a3: 38          8
    sbc starship_velocity_high                                        ; 38a4: ed 00 0f    ...
    ldy starship_shields_active                                       ; 38a7: ac 56 0e    .V.
    bne set_regeneration                                              ; 38aa: d0 04       ..
    sec                                                               ; 38ac: 38          8
    sbc subtraction_from_starship_regeneration_when_shields_active    ; 38ad: ed bc 34    ..4
set_regeneration
    sta starship_energy_regeneration                                  ; 38b0: 8d 23 19    .#.
    lda starship_has_exploded                                         ; 38b3: ad c9 1c    ...
    beq starship_hasnt_exploded                                       ; 38b6: f0 06       ..
    jsr plot_starship_explosion                                       ; 38b8: 20 e8 1d     ..
    jmp skip_player_movement                                          ; 38bb: 4c c4 38    L.8

starship_hasnt_exploded
    jsr update_various_starship_statuses_on_screen                    ; 38be: 20 c7 1a     ..
    jsr handle_player_movement                                        ; 38c1: 20 3f 19     ?.
skip_player_movement
    jsr apply_rotation_to_starship_angle                              ; 38c4: 20 a4 14     ..
    jsr play_sounds                                                   ; 38c7: 20 5a 24     Z$
    jsr apply_delta_to_score                                          ; 38ca: 20 d0 2d     .-
    jsr random_number_generator                                       ; 38cd: 20 13 21     .!
    lda rnd_2                                                         ; 38d0: ad d2 1c    ...
    and #$3f                                                          ; 38d3: 29 3f       )?
    clc                                                               ; 38d5: 18          .
    adc base_damage_to_enemy_ship_from_other_collision                ; 38d6: 6d b8 34    m.4
    sta damage_to_enemy_ship_from_other_collision                     ; 38d9: 8d df 1c    ...
    lda starship_velocity_high                                        ; 38dc: ad 00 0f    ...
    sta y_pixels                                                      ; 38df: 85 7b       .{
    lda starship_velocity_low                                         ; 38e1: ad 01 0f    ...
    asl                                                               ; 38e4: 0a          .
    rol y_pixels                                                      ; 38e5: 26 7b       &{
    asl                                                               ; 38e7: 0a          .
    rol y_pixels                                                      ; 38e8: 26 7b       &{
    lda rnd_1                                                         ; 38ea: ad d1 1c    ...
    and #$1f                                                          ; 38ed: 29 1f       ).
    adc y_pixels                                                      ; 38ef: 65 7b       e{
    adc #$0c                                                          ; 38f1: 69 0c       i.
    sta value_used_for_enemy_torpedo_ttl                              ; 38f3: 8d 36 0e    .6.
    jmp main_game_loop                                                ; 38f6: 4c 33 38    L38

unused92
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 38f9: ea ea ea... ...
    !byte $ea, $ea                                                    ; 3905: ea ea       ..
previous_score_as_bcd
    !byte 0                                                           ; 3907: 00          .
    !byte 0                                                           ; 3908: 00          .
    !byte 0                                                           ; 3909: 00          .
allowed_another_command
    !byte 0                                                           ; 390a: 00          .
unused93
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea                           ; 390b: ea ea ea... ...
combat_experience_rating_string
    !byte $1f, $0b, 5                                                 ; 3912: 1f 0b 05    ...
    !text "STARSHIP COMMAND"                                          ; 3915: 53 54 41... STA
    !byte $1f, 5, $0a                                                 ; 3925: 1f 05 0a    ...
    !text "An escape capsule was launched"                            ; 3928: 41 6e 20... An
    !byte $1f, 4, $0f                                                 ; 3946: 1f 04 0f    ...
    !text "Your official combat experience"                           ; 3949: 59 6f 75... You
    !byte $1f, 4, $11                                                 ; 3968: 1f 04 11    ...
    !text "rating is now recorded as."                                ; 396b: 72 61 74... rat
    !byte $1f, $0d, $1f                                               ; 3985: 1f 0d 1f    ...
    !text "Press <RETURN>"                                            ; 3988: 50 72 65... Pre
    !byte $0d                                                         ; 3996: 0d          .
no_before_the_starship_exploded_string
    !byte $1f, 5, $0a, $4e, $4f, $1f, 5, $0b                          ; 3997: 1f 05 0a... ...
    !text "before the starship exploded."                             ; 399f: 62 65 66... bef
    !byte $0d                                                         ; 39bc: 0d          .
after_your_performance_string
    !byte $1f, 3, $16                                                 ; 39bd: 1f 03 16    ...
    !text "After  your  performance  on  this"                        ; 39c0: 41 66 74... Aft
    !byte $1f, 3, $17                                                 ; 39e2: 1f 03 17    ...
    !text "command the Star-Fleet authorities"                        ; 39e5: 63 6f 6d... com
    !byte $1f, 3, $18                                                 ; 3a07: 1f 03 18    ...
    !text "are  said  to  be  ", '"'                                  ; 3a0a: 61 72 65... are
    !byte $0d                                                         ; 3a1e: 0d          .
and_returned_safely_text
    !byte $1f, 5, $0b                                                 ; 3a1f: 1f 05 0b    ...
    !text "and returned safely from the"                              ; 3a22: 61 6e 64... and
    !byte $1f, 5, $0c                                                 ; 3a3e: 1f 05 0c    ...
    !text "combat zone."                                              ; 3a41: 63 6f 6d... com
    !byte $0d                                                         ; 3a4d: 0d          .
but_collided_string
    !byte $1f, 5, $0b                                                 ; 3a4e: 1f 05 0b    ...
    !text "but collided with an enemy ship."                          ; 3a51: 62 75 74... but
    !byte $0d                                                         ; 3a71: 0d          .
having_just_gained_string
    !byte $1f, 4, $13                                                 ; 3a72: 1f 04 13    ...
    !text "having  just  gained  "                                    ; 3a75: 68 61 76... hav
    !byte $0d                                                         ; 3a8b: 0d          .
and_but_they_allow_string
    !text "and but they allow you the command of"                     ; 3a8c: 61 6e 64... and
    !byte $1f, 3, $1b                                                 ; 3ab1: 1f 03 1b    ...
    !text "another starship."                                         ; 3ab4: 61 6e 6f... ano
    !byte $0d                                                         ; 3ac5: 0d          .
emotions
    !text '"', "furious", '"', "displeased", '"', "disappointed", '"' ; 3ac6: 22 66 75... "fu
    !text "disappointed", '"', "satisfied", '"', "pleased", '"', "i"  ; 3ae7: 64 69 73... dis
    !text "mpressed", '"', "delighted", '"'                           ; 3b07: 6d 70 72... mpr
    !byte $0d                                                         ; 3b1a: 0d          .
and_they_retire_you_string
    !byte $1f, 0, $1a                                                 ; 3b1b: 1f 00 1a    ...
    !text "and they retire you from active service."                  ; 3b1e: 61 6e 64... and
    !byte $0d                                                         ; 3b46: 0d          .
threshold_table
    !byte 2, 3, 4, 7, $0d, $14, $1e                                   ; 3b47: 02 03 04... ...
unused94
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 3b4e: ea ea ea... ...
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea                           ; 3b5a: ea ea ea... ...

plot_debriefing
    lda #$0a                                                          ; 3b61: a9 0a       ..
    jsr oswrch                                                        ; 3b63: 20 ee ff     ..            ; Write character 10
    ldy #$0d                                                          ; 3b66: a0 0d       ..
plot_row_of_starships_top_line_loop
    lda #$20                                                          ; 3b68: a9 20       .
    jsr oswrch                                                        ; 3b6a: 20 ee ff     ..            ; Write character 32
    lda #$e0                                                          ; 3b6d: a9 e0       ..
    jsr oswrch                                                        ; 3b6f: 20 ee ff     ..            ; Write character 224
    lda #$e1                                                          ; 3b72: a9 e1       ..
    jsr oswrch                                                        ; 3b74: 20 ee ff     ..            ; Write character 225
    dey                                                               ; 3b77: 88          .
    bne plot_row_of_starships_top_line_loop                           ; 3b78: d0 ee       ..
    lda #$20                                                          ; 3b7a: a9 20       .
    jsr oswrch                                                        ; 3b7c: 20 ee ff     ..            ; Write character 32
    ldy #$0d                                                          ; 3b7f: a0 0d       ..
plot_row_of_starships_bottom_line_loop
    lda #$20                                                          ; 3b81: a9 20       .
    jsr oswrch                                                        ; 3b83: 20 ee ff     ..            ; Write character 32
    lda #$e2                                                          ; 3b86: a9 e2       ..
    jsr oswrch                                                        ; 3b88: 20 ee ff     ..            ; Write character 226
    lda #$e3                                                          ; 3b8b: a9 e3       ..
    jsr oswrch                                                        ; 3b8d: 20 ee ff     ..            ; Write character 227
    dey                                                               ; 3b90: 88          .
    bne plot_row_of_starships_bottom_line_loop                        ; 3b91: d0 ee       ..
    jsr plot_line_of_underscores                                      ; 3b93: 20 1b 3d     .=
    ldy #0                                                            ; 3b96: a0 00       ..
plot_combat_experience_rating_text_loop
    lda combat_experience_rating_string,y                             ; 3b98: b9 12 39    ..9
    jsr oswrch                                                        ; 3b9b: 20 ee ff     ..            ; Write character
    iny                                                               ; 3b9e: c8          .
    cmp #$3e                                                          ; 3b9f: c9 3e       .>
    bne plot_combat_experience_rating_text_loop                       ; 3ba1: d0 f5       ..
plot_command_number1
    ldy #5                                                            ; 3ba3: a0 05       ..
    ldx #$1c                                                          ; 3ba5: a2 1c       ..
    jsr tab_to_x_y                                                    ; 3ba7: 20 30 3d     0=
    lda command_number                                                ; 3baa: ad b1 34    ..4
    lsr                                                               ; 3bad: 4a          J
    lsr                                                               ; 3bae: 4a          J
    lsr                                                               ; 3baf: 4a          J
    lsr                                                               ; 3bb0: 4a          J
    beq single_digit_command_number1                                  ; 3bb1: f0 06       ..
    clc                                                               ; 3bb3: 18          .
    adc #$30                                                          ; 3bb4: 69 30       i0
    jsr oswrch                                                        ; 3bb6: 20 ee ff     ..            ; Write character
single_digit_command_number1
    lda command_number                                                ; 3bb9: ad b1 34    ..4
    and #$0f                                                          ; 3bbc: 29 0f       ).
    clc                                                               ; 3bbe: 18          .
    adc #$30                                                          ; 3bbf: 69 30       i0
    jsr oswrch                                                        ; 3bc1: 20 ee ff     ..            ; Write character
    jsr plot_line_of_underscores                                      ; 3bc4: 20 1b 3d     .=
    lda escape_capsule_launched                                       ; 3bc7: ad d8 1c    ...
    bne escape_capsule_was_launched                                   ; 3bca: d0 0f       ..
    ldy #0                                                            ; 3bcc: a0 00       ..
plot_no_before_the_starship_exploded_loop
    lda no_before_the_starship_exploded_string,y                      ; 3bce: b9 97 39    ..9
    jsr oswrch                                                        ; 3bd1: 20 ee ff     ..            ; Write character
    iny                                                               ; 3bd4: c8          .
    cmp #$2e                                                          ; 3bd5: c9 2e       ..
    bne plot_no_before_the_starship_exploded_loop                     ; 3bd7: d0 f5       ..
    beq plot_score_in_debriefing                                      ; 3bd9: f0 21       .!             ; ALWAYS branch

escape_capsule_was_launched
    lda escape_capsule_destroyed                                      ; 3bdb: ad 90 28    ..(
    bne escape_capsule_was_destroyed                                  ; 3bde: d0 0f       ..
    ldy #0                                                            ; 3be0: a0 00       ..
plot_and_returned_safely_loop
    lda and_returned_safely_text,y                                    ; 3be2: b9 1f 3a    ..:
    jsr oswrch                                                        ; 3be5: 20 ee ff     ..            ; Write character
    iny                                                               ; 3be8: c8          .
    cmp #$2e                                                          ; 3be9: c9 2e       ..
    bne plot_and_returned_safely_loop                                 ; 3beb: d0 f5       ..
    beq plot_score_in_debriefing                                      ; 3bed: f0 0d       ..             ; ALWAYS branch

escape_capsule_was_destroyed
    ldy #0                                                            ; 3bef: a0 00       ..
plot_but_collided_loop
    lda but_collided_string,y                                         ; 3bf1: b9 4e 3a    .N:
    jsr oswrch                                                        ; 3bf4: 20 ee ff     ..            ; Write character
    iny                                                               ; 3bf7: c8          .
    cmp #$2e                                                          ; 3bf8: c9 2e       ..
    bne plot_but_collided_loop                                        ; 3bfa: d0 f5       ..
plot_score_in_debriefing
    ldy #$11                                                          ; 3bfc: a0 11       ..
    ldx #$1e                                                          ; 3bfe: a2 1e       ..
    jsr tab_to_x_y                                                    ; 3c00: 20 30 3d     0=
    ldx #$fe                                                          ; 3c03: a2 fe       ..
    ldy #5                                                            ; 3c05: a0 05       ..
plot_score_in_debriefing_loop
    lda score_as_digits,y                                             ; 3c07: b9 6e 2d    .n-
    bne non_zero_digit1                                               ; 3c0a: d0 07       ..
    tya                                                               ; 3c0c: 98          .
    beq non_zero_digit1                                               ; 3c0d: f0 04       ..
    txa                                                               ; 3c0f: 8a          .
    jmp leading_zero1                                                 ; 3c10: 4c 15 3c    L.<

non_zero_digit1
    ldx #0                                                            ; 3c13: a2 00       ..
leading_zero1
    clc                                                               ; 3c15: 18          .
    adc #$30                                                          ; 3c16: 69 30       i0
    jsr oswrch                                                        ; 3c18: 20 ee ff     ..            ; Write character
    dey                                                               ; 3c1b: 88          .
    bpl plot_score_in_debriefing_loop                                 ; 3c1c: 10 e9       ..
    lda score_as_bcd                                                  ; 3c1e: ad 65 2d    .e-
    sec                                                               ; 3c21: 38          8
    sei                                                               ; 3c22: 78          x
    sed                                                               ; 3c23: f8          .
    sbc previous_score_as_bcd                                         ; 3c24: ed 07 39    ..9
    sta previous_score_as_bcd                                         ; 3c27: 8d 07 39    ..9
    lda score_as_bcd + 1                                              ; 3c2a: ad 66 2d    .f-
    sbc previous_score_as_bcd + 1                                     ; 3c2d: ed 08 39    ..9
    sta previous_score_as_bcd + 1                                     ; 3c30: 8d 08 39    ..9
    lda score_as_bcd + 2                                              ; 3c33: ad 67 2d    .g-
    sbc previous_score_as_bcd + 2                                     ; 3c36: ed 09 39    ..9
    sta previous_score_as_bcd + 2                                     ; 3c39: 8d 09 39    ..9
    cld                                                               ; 3c3c: d8          .
    cli                                                               ; 3c3d: 58          X
    lda escape_capsule_destroyed                                      ; 3c3e: ad 90 28    ..(
    eor escape_capsule_launched                                       ; 3c41: 4d d8 1c    M..
    sta allowed_another_command                                       ; 3c44: 8d 0a 39    ..9
    lda command_number                                                ; 3c47: ad b1 34    ..4
    cmp #1                                                            ; 3c4a: c9 01       ..
    beq skip_previous_command_score                                   ; 3c4c: f0 29       .)
    ldy #0                                                            ; 3c4e: a0 00       ..
plot_having_just_gained_loop
    lda having_just_gained_string,y                                   ; 3c50: b9 72 3a    .r:
    jsr oswrch                                                        ; 3c53: 20 ee ff     ..            ; Write character
    iny                                                               ; 3c56: c8          .
    cpy #$19                                                          ; 3c57: c0 19       ..
    bne plot_having_just_gained_loop                                  ; 3c59: d0 f5       ..
    ldx #1                                                            ; 3c5b: a2 01       ..
    lda previous_score_as_bcd + 2                                     ; 3c5d: ad 09 39    ..9
    jsr plot_bcd_number_as_two_digits                                 ; 3c60: 20 3e 3d     >=
    lda previous_score_as_bcd + 1                                     ; 3c63: ad 08 39    ..9
    jsr plot_bcd_number_as_two_digits                                 ; 3c66: 20 3e 3d     >=
    lda previous_score_as_bcd                                         ; 3c69: ad 07 39    ..9
    jsr plot_bcd_number_as_two_digits                                 ; 3c6c: 20 3e 3d     >=
    txa                                                               ; 3c6f: 8a          .
    beq skip_previous_command_score                                   ; 3c70: f0 05       ..
    lda #$30                                                          ; 3c72: a9 30       .0
    jsr oswrch                                                        ; 3c74: 20 ee ff     ..            ; Write character 48
skip_previous_command_score
    lda allowed_another_command                                       ; 3c77: ad 0a 39    ..9
    bne plot_after_your_performance                                   ; 3c7a: d0 03       ..
    jmp leave_after_plotting_line_of_underscores                      ; 3c7c: 4c 17 3d    L.=

plot_after_your_performance
    ldy #0                                                            ; 3c7f: a0 00       ..
plot_after_your_performance_loop
    lda after_your_performance_string,y                               ; 3c81: b9 bd 39    ..9
    jsr oswrch                                                        ; 3c84: 20 ee ff     ..            ; Write character
    iny                                                               ; 3c87: c8          .
    cpy #$61                                                          ; 3c88: c0 61       .a
    bne plot_after_your_performance_loop                              ; 3c8a: d0 f5       ..
judge_player
    lda rnd_2                                                         ; 3c8c: ad d2 1c    ...
    and #$3f                                                          ; 3c8f: 29 3f       )?
    clc                                                               ; 3c91: 18          .
    adc previous_score_as_bcd                                         ; 3c92: 6d 07 39    m.9
    sta previous_score_as_bcd                                         ; 3c95: 8d 07 39    ..9
    lda previous_score_as_bcd + 1                                     ; 3c98: ad 08 39    ..9
    adc #0                                                            ; 3c9b: 69 00       i.
    ldy #5                                                            ; 3c9d: a0 05       ..
division_loop1
    lsr                                                               ; 3c9f: 4a          J
    ror previous_score_as_bcd                                         ; 3ca0: 6e 07 39    n.9
    dey                                                               ; 3ca3: 88          .
    bne division_loop1                                                ; 3ca4: d0 f9       ..
    ldy #8                                                            ; 3ca6: a0 08       ..
    ora previous_score_as_bcd + 2                                     ; 3ca8: 0d 09 39    ..9
    bne end_of_calculation                                            ; 3cab: d0 0f       ..
    ldy #1                                                            ; 3cad: a0 01       ..
    lda previous_score_as_bcd                                         ; 3caf: ad 07 39    ..9
check_threshold_loop
    cmp threshold_table - 1,y                                         ; 3cb2: d9 46 3b    .F;
    bcc end_of_calculation                                            ; 3cb5: 90 05       ..
    iny                                                               ; 3cb7: c8          .
    cpy #8                                                            ; 3cb8: c0 08       ..
    bne check_threshold_loop                                          ; 3cba: d0 f6       ..
end_of_calculation
    sty y_pixels                                                      ; 3cbc: 84 7b       .{
    ldx #$ff                                                          ; 3cbe: a2 ff       ..
    lda #$22                                                          ; 3cc0: a9 22       ."
find_emotion_loop
    inx                                                               ; 3cc2: e8          .
    cmp emotions,x                                                    ; 3cc3: dd c6 3a    ..:
    bne find_emotion_loop                                             ; 3cc6: d0 fa       ..
    dey                                                               ; 3cc8: 88          .
    bne find_emotion_loop                                             ; 3cc9: d0 f7       ..
plot_emotion_loop
    inx                                                               ; 3ccb: e8          .
    lda emotions,x                                                    ; 3ccc: bd c6 3a    ..:
    jsr oswrch                                                        ; 3ccf: 20 ee ff     ..            ; Write character
    cmp #$22                                                          ; 3cd2: c9 22       ."
    bne plot_emotion_loop                                             ; 3cd4: d0 f5       ..
    lda y_pixels                                                      ; 3cd6: a5 7b       .{
    cmp #4                                                            ; 3cd8: c9 04       ..
    bcc player_retired                                                ; 3cda: 90 2b       .+
    ldy #$1a                                                          ; 3cdc: a0 1a       ..
    ldx #3                                                            ; 3cde: a2 03       ..
    jsr tab_to_x_y                                                    ; 3ce0: 20 30 3d     0=
    ldy #0                                                            ; 3ce3: a0 00       ..
    lda y_pixels                                                      ; 3ce5: a5 7b       .{
    cmp #4                                                            ; 3ce7: c9 04       ..
    bne plot_and_or_but_loop                                          ; 3ce9: d0 02       ..
    ldy #4                                                            ; 3ceb: a0 04       ..
plot_and_or_but_loop
    lda and_but_they_allow_string,y                                   ; 3ced: b9 8c 3a    ..:
    jsr oswrch                                                        ; 3cf0: 20 ee ff     ..            ; Write character
    iny                                                               ; 3cf3: c8          .
    cmp #$20                                                          ; 3cf4: c9 20       .
    bne plot_and_or_but_loop                                          ; 3cf6: d0 f5       ..
    ldy #8                                                            ; 3cf8: a0 08       ..
plot_they_allow_you_loop
    lda and_but_they_allow_string,y                                   ; 3cfa: b9 8c 3a    ..:
    jsr oswrch                                                        ; 3cfd: 20 ee ff     ..            ; Write character
    iny                                                               ; 3d00: c8          .
    cmp #$2e                                                          ; 3d01: c9 2e       ..
    bne plot_they_allow_you_loop                                      ; 3d03: d0 f5       ..
    beq leave_after_plotting_line_of_underscores                      ; 3d05: f0 10       ..             ; ALWAYS branch

player_retired
    ldy #0                                                            ; 3d07: a0 00       ..
    sty allowed_another_command                                       ; 3d09: 8c 0a 39    ..9
plot_and_they_retire_you_loop
    lda and_they_retire_you_string,y                                  ; 3d0c: b9 1b 3b    ..;
    jsr oswrch                                                        ; 3d0f: 20 ee ff     ..            ; Write character
    iny                                                               ; 3d12: c8          .
    cmp #$2e                                                          ; 3d13: c9 2e       ..
    bne plot_and_they_retire_you_loop                                 ; 3d15: d0 f5       ..
leave_after_plotting_line_of_underscores
    jsr plot_line_of_underscores                                      ; 3d17: 20 1b 3d     .=
    rts                                                               ; 3d1a: 60          `

plot_line_of_underscores
    lda #$0d                                                          ; 3d1b: a9 0d       ..
    jsr oswrch                                                        ; 3d1d: 20 ee ff     ..            ; Write character 13
    lda #$0a                                                          ; 3d20: a9 0a       ..
    jsr oswrch                                                        ; 3d22: 20 ee ff     ..            ; Write character 10
    ldy #$28                                                          ; 3d25: a0 28       .(
plot_line_of_underscores_loop
    lda #$5f                                                          ; 3d27: a9 5f       ._
    jsr oswrch                                                        ; 3d29: 20 ee ff     ..            ; Write character 95
    dey                                                               ; 3d2c: 88          .
    bne plot_line_of_underscores_loop                                 ; 3d2d: d0 f8       ..
    rts                                                               ; 3d2f: 60          `

tab_to_x_y
    lda #$1f                                                          ; 3d30: a9 1f       ..
    jsr oswrch                                                        ; 3d32: 20 ee ff     ..            ; Write character 31
    txa                                                               ; 3d35: 8a          .
    jsr oswrch                                                        ; 3d36: 20 ee ff     ..            ; Write character
    tya                                                               ; 3d39: 98          .
    jsr oswrch                                                        ; 3d3a: 20 ee ff     ..            ; Write character
    rts                                                               ; 3d3d: 60          `

plot_bcd_number_as_two_digits
    tay                                                               ; 3d3e: a8          .
    lsr                                                               ; 3d3f: 4a          J
    lsr                                                               ; 3d40: 4a          J
    lsr                                                               ; 3d41: 4a          J
    lsr                                                               ; 3d42: 4a          J
    bne has_non_zero_tens                                             ; 3d43: d0 03       ..
    txa                                                               ; 3d45: 8a          .
    bne skip_leading_zeroes                                           ; 3d46: d0 08       ..
has_non_zero_tens
    ldx #0                                                            ; 3d48: a2 00       ..
    clc                                                               ; 3d4a: 18          .
    adc #$30                                                          ; 3d4b: 69 30       i0
    jsr oswrch                                                        ; 3d4d: 20 ee ff     ..            ; Write character
skip_leading_zeroes
    tya                                                               ; 3d50: 98          .
    and #$0f                                                          ; 3d51: 29 0f       ).
    bne has_non_zero_ones                                             ; 3d53: d0 03       ..
    txa                                                               ; 3d55: 8a          .
    bne skip_leading_zeroes_again                                     ; 3d56: d0 08       ..
has_non_zero_ones
    ldx #0                                                            ; 3d58: a2 00       ..
    clc                                                               ; 3d5a: 18          .
    adc #$30                                                          ; 3d5b: 69 30       i0
    jsr oswrch                                                        ; 3d5d: 20 ee ff     ..            ; Write character
skip_leading_zeroes_again
    rts                                                               ; 3d60: 60          `

unused95
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 3d61: ea ea ea... ...
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea,   0,   0,   0,   0,   0  ; 3d6d: ea ea ea... ...
    !byte   0,   0,   0,   0,   0,   0,   0, $ff, $ff, $ff, $ff, $ff  ; 3d79: 00 00 00... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 3d85: ff ff ff... ...
    !byte $ff                                                         ; 3d91: ff          .
instructions_string
    !byte $1f, 6, 2                                                   ; 3d92: 1f 06 02    ...
    !text "**** STARSHIP CONTROLS ****"                               ; 3d95: 2a 2a 2a... ***
    !byte $1f, 3, 5                                                   ; 3db0: 1f 03 05    ...
    !text "Z  -  Rotate left"                                         ; 3db3: 5a 20 20... Z
    !byte $1f, 3, 6                                                   ; 3dc4: 1f 03 06    ...
    !text "X  -  Rotate right"                                        ; 3dc7: 58 20 20... X
    !byte $1f, 3, 7                                                   ; 3dd9: 1f 03 07    ...
    !text "N  -  Fire torpedoes"                                      ; 3ddc: 4e 20 20... N
    !byte $1f, 3, 8                                                   ; 3df0: 1f 03 08    ...
    !text "M  -  Thrust"                                              ; 3df3: 4d 20 20... M
    !byte $1f, 3, 9                                                   ; 3dff: 1f 03 09    ...
    !text ",  -  Brake"                                               ; 3e02: 2c 20 20... ,
    !byte $1f, 3, $0b                                                 ; 3e0d: 1f 03 0b    ...
    !text "F  -  Launch port escape capsule"                          ; 3e10: 46 20 20... F
    !byte $1f, 3, $0c                                                 ; 3e30: 1f 03 0c    ...
    !text "G  -  Launch starboard escape capsule"                     ; 3e33: 47 20 20... G
    !byte $1f, 0, $0e                                                 ; 3e58: 1f 00 0e    ...
    !text "All the above may operate simultaneouslyAlternatively ,"   ; 3e5b: 41 6c 6c... All
    !text " ONE of the following maybe depressed...."                 ; 3e92: 20 4f 4e...  ON
    !byte $1f, 3, $12                                                 ; 3ebb: 1f 03 12    ...
    !text "B  -  Shields ON / Scanners OFF"                           ; 3ebe: 42 20 20... B
    !byte $1f, 3, $13                                                 ; 3edd: 1f 03 13    ...
    !text "V  -  Scanners ON / Shields OFF"                           ; 3ee0: 56 20 20... V
    !byte $1f, 3, $14                                                 ; 3eff: 1f 03 14    ...
    !text "C  -  ", '"', "Auto-Changeover", '"', " ON"                ; 3f02: 43 20 20... C
    !byte $1f, 3, $16                                                 ; 3f1c: 1f 03 16    ...
    !text "f0 -  ", '"', "Rotation Dampers", '"', " ON"               ; 3f1f: 66 30 20... f0
    !byte $1f, 3, $17                                                 ; 3f3a: 1f 03 17    ...
    !text "2  -  ", '"', "Rotation Dampers", '"', " OFF"              ; 3f3d: 32 20 20... 2
    !byte $1f, 3, $18                                                 ; 3f59: 1f 03 18    ...
    !text "f1 -  ", '"', "Velocity Dampers", '"', " ON"               ; 3f5c: 66 31 20... f1
    !byte $1f, 3, $19                                                 ; 3f77: 1f 03 19    ...
    !text "3  -  ", '"', "Velocity Dampers", '"', " OFF"              ; 3f7a: 33 20 20... 3
    !byte $1f, 3, $1b                                                 ; 3f96: 1f 03 1b    ...
    !text "<COPY>   - FREEZE"                                         ; 3f99: 3c 43 4f... <CO
    !byte $1f, 3, $1c                                                 ; 3faa: 1f 03 1c    ...
    !text "<DELETE> - UNFREEZE"                                       ; 3fad: 3c 44 45... <DE
    !byte $1f, $0d, $1f                                               ; 3fc0: 1f 0d 1f    ...
    !text "Press <RETURN>~"                                           ; 3fc3: 50 72 65... Pre
unused96
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 3fd2: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 3fde: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 3fea: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, $ff, $ff  ; 3ff6: 00 00 00... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ea, $ea, $ea  ; 4002: ff ff ff... ...
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea                      ; 400e: ea ea ea... ...

plot_instructions
    lda #<instructions_string                                         ; 4016: a9 92       ..
    sta temp0_low                                                     ; 4018: 85 80       ..
    lda #>instructions_string                                         ; 401a: a9 3d       .=
    sta temp0_high                                                    ; 401c: 85 81       ..
    ldy #0                                                            ; 401e: a0 00       ..
plot_instructions_loop
    lda (temp0_low),y                                                 ; 4020: b1 80       ..
    cmp #'~'                                                          ; 4022: c9 7e       .~
    beq finished_plotting_instructions                                ; 4024: f0 0b       ..
    jsr oswrch                                                        ; 4026: 20 ee ff     ..            ; Write character
    inc temp0_low                                                     ; 4029: e6 80       ..
    bne plot_instructions_loop                                        ; 402b: d0 f3       ..
    inc temp0_high                                                    ; 402d: e6 81       ..
    bne plot_instructions_loop                                        ; 402f: d0 ef       ..
finished_plotting_instructions
finished_plotting_instructions1
    lda #0                                                            ; 4031: a9 00       ..
    jsr plot_line_of_underscores_at_y                                 ; 4033: 20 4c 40     L@
    lda #3                                                            ; 4036: a9 03       ..
    jsr plot_line_of_underscores_at_y                                 ; 4038: 20 4c 40     L@
    lda #$1d                                                          ; 403b: a9 1d       ..
    jsr plot_line_of_underscores_at_y                                 ; 403d: 20 4c 40     L@
    rts                                                               ; 4040: 60          `

unused97
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea       ; 4041: ea ea ea... ...

plot_line_of_underscores_at_y
    tay                                                               ; 404c: a8          .
    lda #$1f                                                          ; 404d: a9 1f       ..
    jsr oswrch                                                        ; 404f: 20 ee ff     ..            ; Write character 31
    lda #0                                                            ; 4052: a9 00       ..
    jsr oswrch                                                        ; 4054: 20 ee ff     ..            ; Write character 0
    tya                                                               ; 4057: 98          .
    jsr oswrch                                                        ; 4058: 20 ee ff     ..            ; Write character
    ldy #$28                                                          ; 405b: a0 28       .(
    lda #$5f                                                          ; 405d: a9 5f       ._
plot_line_of_underscores_at_y_loop
    jsr oswrch                                                        ; 405f: 20 ee ff     ..            ; Write character 95
    dey                                                               ; 4062: 88          .
    bne plot_line_of_underscores_at_y_loop                            ; 4063: d0 fa       ..
    rts                                                               ; 4065: 60          `

combat_preparation_screen_key_table
    !byte $df                                                         ; 4066: df          .
    !byte $8e                                                         ; 4067: 8e          .
    !byte $8d                                                         ; 4068: 8d          .
    !byte $8c                                                         ; 4069: 8c          .
    !byte $eb                                                         ; 406a: eb          .
    !byte $8b                                                         ; 406b: 8b          .
    !byte $8a                                                         ; 406c: 8a          .
    !byte $e9                                                         ; 406d: e9          .
    !byte $89                                                         ; 406e: 89          .
    !byte $88                                                         ; 406f: 88          .
game_options
option_sound
    !byte 0                                                           ; 4070: 00          .
option_starship_torpedoes
    !byte 0                                                           ; 4071: 00          .
option_enemy_torpedoes
    !byte 0                                                           ; 4072: 00          .
option_keyboard_joystick
    !byte 0                                                           ; 4073: 00          .
options_values_to_write
    !byte   0                                                         ; 4074: 00          .
    !byte   1                                                         ; 4075: 01          .
    !byte   0                                                         ; 4076: 00          .
    !byte   1                                                         ; 4077: 01          .
    !byte $60                                                         ; 4078: 60          `
    !byte $ea                                                         ; 4079: ea          .
    !byte   0                                                         ; 407a: 00          .
    !byte   1                                                         ; 407b: 01          .
option_address_low_table
    !byte                  <sound_enabled, <starship_torpedo_type     ; 407c: d7 5b       .[
    !byte <enemy_torpedo_type_instruction                             ; 407e: 20
    !byte <keyboard_or_joystick                                       ; 407f: d6          .
option_address_high_table
    !byte                  >sound_enabled, >starship_torpedo_type     ; 4080: 1c 26       .&
    !byte >enemy_torpedo_type_instruction,  >keyboard_or_joystick     ; 4082: 16 1c       ..
combat_preparation_string
    !byte $1f, 6, 3                                                   ; 4084: 1f 06 03    ...
    !text "**** COMBAT PREPARATION ****"                              ; 4087: 2a 2a 2a... ***
    !byte $1f, 6, 7                                                   ; 40a3: 1f 06 07    ...
    !text "f0  View starship controls"                                ; 40a6: 66 30 20... f0
    !byte $1f, 6, 9                                                   ; 40c0: 1f 06 09    ...
    !text "f1  View Star-Fleet records"                               ; 40c3: 66 31 20... f1
    !byte $1f, 6, $0b                                                 ; 40de: 1f 06 0b    ...
    !text "f2  Enable"                                                ; 40e1: 66 32 20... f2
    !byte $1f, $11, $0c                                               ; 40eb: 1f 11 0c    ...
    !text "}the sound effects"                                        ; 40ee: 7d 74 68... }th
    !byte $1f, 6, $0d                                                 ; 4100: 1f 06 0d    ...
    !text "f3  Disable"                                               ; 4103: 66 33 20... f3
    !byte $1f, 6, $0f                                                 ; 410e: 1f 06 0f    ...
    !text "f4  Small"                                                 ; 4111: 66 34 20... f4
    !byte $1f, $11, $10                                               ; 411a: 1f 11 10    ...
    !text "}starship torpedoes"                                       ; 411d: 7d 73 74... }st
    !byte $1f, 6, $11                                                 ; 4130: 1f 06 11    ...
    !text "f5  Large"                                                 ; 4133: 66 35 20... f5
    !byte $1f, 6, $13                                                 ; 413c: 1f 06 13    ...
    !text "f6  Small"                                                 ; 413f: 66 36 20... f6
    !byte $1f, $11, $14                                               ; 4148: 1f 11 14    ...
    !text "}enemy torpedoes"                                          ; 414b: 7d 65 6e... }en
    !byte $1f, 6, $15                                                 ; 415b: 1f 06 15    ...
    !text "f7  Large"                                                 ; 415e: 66 37 20... f7
    !byte $1f, 6, $17                                                 ; 4167: 1f 06 17    ...
    !text "f8  Keyboard"                                              ; 416a: 66 38 20... f8
    !byte $1f, 6, $19                                                 ; 4176: 1f 06 19    ...
    !text "f9  Joystick"                                              ; 4179: 66 39 20... f9
    !byte $1f, $0d, $1e                                               ; 4185: 1f 0d 1e    ...
    !text "Press <RETURN>~"                                           ; 4188: 50 72 65... Pre
unused98
    !byte $ff, $ff, $ff, $ff                                          ; 4197: ff ff ff... ...

plot_selected_options
    ldx #3                                                            ; 419b: a2 03       ..
plot_selected_options_loop
    lda #$1f                                                          ; 419d: a9 1f       ..
    jsr oswrch                                                        ; 419f: 20 ee ff     ..            ; Write character 31
    lda #9                                                            ; 41a2: a9 09       ..
    jsr oswrch                                                        ; 41a4: 20 ee ff     ..            ; Write character 9
    txa                                                               ; 41a7: 8a          .
    asl                                                               ; 41a8: 0a          .
    adc game_options,x                                                ; 41a9: 7d 70 40    }p@
    asl                                                               ; 41ac: 0a          .
    adc #$0b                                                          ; 41ad: 69 0b       i.
    jsr oswrch                                                        ; 41af: 20 ee ff     ..            ; Write character
    lda #$2d                                                          ; 41b2: a9 2d       .-
    jsr oswrch                                                        ; 41b4: 20 ee ff     ..            ; Write character 45
    dex                                                               ; 41b7: ca          .
    bpl plot_selected_options_loop                                    ; 41b8: 10 e3       ..
    rts                                                               ; 41ba: 60          `

wait_for_return
    lda #osbyte_flush_buffer_class                                    ; 41bb: a9 0f       ..
    ldx #1                                                            ; 41bd: a2 01       ..
    ldy #0                                                            ; 41bf: a0 00       ..
    jsr osbyte                                                        ; 41c1: 20 f4 ff     ..            ; Flush input buffers (X non-zero)
wait_for_return_loop
    lda #osbyte_inkey                                                 ; 41c4: a9 81       ..
    ldx #$32                                                          ; 41c6: a2 32       .2
    ldy #0                                                            ; 41c8: a0 00       ..
    jsr osbyte                                                        ; 41ca: 20 f4 ff     ..            ; Wait for a key press within 50 centiseconds
    cpy #$1b                                                          ; 41cd: c0 1b       ..             ; Y is zero if key pressed; $ff if no key pressed; $1b if ESCAPE pressed
    beq escape_pressed                                                ; 41cf: f0 10       ..
    cpy #$ff                                                          ; 41d1: c0 ff       ..
    beq wait_for_return_loop                                          ; 41d3: f0 ef       ..
; X is the ASCII value of the key pressed (assuming Y=0)
    cpx #$60                                                          ; 41d5: e0 60       .`
    beq bad_program                                                   ; 41d7: f0 05       ..
    cpx #$0d                                                          ; 41d9: e0 0d       ..
    bne wait_for_return_loop                                          ; 41db: d0 e7       ..
    rts                                                               ; 41dd: 60          `

bad_program
    brk                                                               ; 41de: 00          .

unused99
    !byte $60, 0                                                      ; 41df: 60 00       `.

escape_pressed
    lda #osbyte_acknowledge_escape                                    ; 41e1: a9 7e       .~
    jsr osbyte                                                        ; 41e3: 20 f4 ff     ..            ; Clear escape condition and perform escape effects
    jmp wait_for_return_loop                                          ; 41e6: 4c c4 41    L.A

instructions_screen
    lda #$16                                                          ; 41e9: a9 16       ..
    jsr oswrch                                                        ; 41eb: 20 ee ff     ..            ; Write character 22
    lda #4                                                            ; 41ee: a9 04       ..
    jsr oswrch                                                        ; 41f0: 20 ee ff     ..            ; Write character 4
    jsr disable_cursor                                                ; 41f3: 20 36 23     6#
    jsr set_foreground_colour_to_black                                ; 41f6: 20 12 23     .#
    jsr plot_instructions                                             ; 41f9: 20 16 40     .@
    jsr set_foreground_colour_to_white                                ; 41fc: 20 06 23     .#
    jsr wait_for_return                                               ; 41ff: 20 bb 41     .A
    rts                                                               ; 4202: 60          `

combat_preparation_screen
    lda #$16                                                          ; 4203: a9 16       ..
    jsr oswrch                                                        ; 4205: 20 ee ff     ..            ; Write character 22
    lda #4                                                            ; 4208: a9 04       ..
    jsr oswrch                                                        ; 420a: 20 ee ff     ..            ; Write character 4
    jsr disable_cursor                                                ; 420d: 20 36 23     6#
    jsr set_foreground_colour_to_black                                ; 4210: 20 12 23     .#
    lda #$84                                                          ; 4213: a9 84       ..
    sta temp0_low                                                     ; 4215: 85 80       ..
    lda #$40                                                          ; 4217: a9 40       .@
    sta temp0_high                                                    ; 4219: 85 81       ..
    ldy #0                                                            ; 421b: a0 00       ..
plot_combat_preparations_loop
    lda (temp0_low),y                                                 ; 421d: b1 80       ..
    cmp #$7e                                                          ; 421f: c9 7e       .~
    beq finished_plotting_combat_preparations                         ; 4221: f0 0b       ..
    jsr oswrch                                                        ; 4223: 20 ee ff     ..            ; Write character
    inc temp0_low                                                     ; 4226: e6 80       ..
    bne plot_combat_preparations_loop                                 ; 4228: d0 f3       ..
    inc temp0_high                                                    ; 422a: e6 81       ..
    bne plot_combat_preparations_loop                                 ; 422c: d0 ef       ..
finished_plotting_combat_preparations
    lda #1                                                            ; 422e: a9 01       ..
    jsr plot_line_of_underscores_at_y                                 ; 4230: 20 4c 40     L@
    lda #4                                                            ; 4233: a9 04       ..
    jsr plot_line_of_underscores_at_y                                 ; 4235: 20 4c 40     L@
    jsr set_foreground_colour_to_white                                ; 4238: 20 06 23     .#
    jsr plot_selected_options                                         ; 423b: 20 9b 41     .A
get_keypress
    lda #osbyte_flush_buffer_class                                    ; 423e: a9 0f       ..
    ldx #1                                                            ; 4240: a2 01       ..
    jsr osbyte                                                        ; 4242: 20 f4 ff     ..            ; Flush input buffers (X non-zero)
    lda #osbyte_inkey                                                 ; 4245: a9 81       ..
    ldx #5                                                            ; 4247: a2 05       ..
    ldy #0                                                            ; 4249: a0 00       ..
    jsr osbyte                                                        ; 424b: 20 f4 ff     ..            ; Wait for a key press within 5 centiseconds
; X is the ASCII value of the key pressed (assuming Y=0)
    cpx #$0d                                                          ; 424e: e0 0d       ..
    beq return28                                                      ; 4250: f0 52       .R
    lda #osbyte_acknowledge_escape                                    ; 4252: a9 7e       .~
    jsr osbyte                                                        ; 4254: 20 f4 ff     ..            ; Clear escape condition and perform escape effects
    lda #$0a                                                          ; 4257: a9 0a       ..
    sta x_pixels                                                      ; 4259: 85 7a       .z
check_next_key
    dec x_pixels                                                      ; 425b: c6 7a       .z
    bmi get_keypress                                                  ; 425d: 30 df       0.
    ldx x_pixels                                                      ; 425f: a6 7a       .z
    lda combat_preparation_screen_key_table,x                         ; 4261: bd 66 40    .f@
    tax                                                               ; 4264: aa          .
    tay                                                               ; 4265: a8          .
    lda #osbyte_inkey                                                 ; 4266: a9 81       ..
    jsr osbyte                                                        ; 4268: 20 f4 ff     ..            ; Read key within time limit, or read a specific key, or read machine type
    tya                                                               ; 426b: 98          .
    beq check_next_key                                                ; 426c: f0 ed       ..
    ldx x_pixels                                                      ; 426e: a6 7a       .z
    bne not_f0                                                        ; 4270: d0 06       ..
    jsr instructions_screen                                           ; 4272: 20 e9 41     .A
    jmp combat_preparation_screen                                     ; 4275: 4c 03 42    L.B

not_f0
    cpx #1                                                            ; 4278: e0 01       ..
    bne not_f1                                                        ; 427a: d0 06       ..
    jsr starfleet_records_screen                                      ; 427c: 20 d7 43     .C
    jmp combat_preparation_screen                                     ; 427f: 4c 03 42    L.B

not_f1
    txa                                                               ; 4282: 8a          .
    lsr                                                               ; 4283: 4a          J
    tay                                                               ; 4284: a8          .
    txa                                                               ; 4285: 8a          .
    and #1                                                            ; 4286: 29 01       ).
    cmp game_options - 1,y                                            ; 4288: d9 6f 40    .o@
    beq check_next_key                                                ; 428b: f0 ce       ..
    sta game_options - 1,y                                            ; 428d: 99 6f 40    .o@
    lda option_address_low_table - 1,y                                ; 4290: b9 7b 40    .{@
    sta temp0_low                                                     ; 4293: 85 80       ..
    lda option_address_high_table - 1,y                               ; 4295: b9 7f 40    ..@
    sta temp0_high                                                    ; 4298: 85 81       ..
    lda option_enemy_torpedoes,x                                      ; 429a: bd 72 40    .r@
    ldy #0                                                            ; 429d: a0 00       ..
    sta (temp0_low),y                                                 ; 429f: 91 80       ..
    jmp combat_preparation_screen                                     ; 42a1: 4c 03 42    L.B

return28
    rts                                                               ; 42a4: 60          `

; ----------------------------------------------------------------------------------
starfleet_records_string
    !byte $1f, 6, 1                                                   ; 42a5: 1f 06 01    ...
    !text "**** STAR-FLEET RECORDS ****"                              ; 42a8: 2a 2a 2a... ***
    !byte $1f, 0, 4                                                   ; 42c4: 1f 00 04    ...
    !text "Below is a list of the most highly ratedof Star-Fleet's"   ; 42c7: 42 65 6c... Bel
    !text " past commanders."                                         ; 42fe: 20 70 61...  pa
    !byte $1f, $0d, $18                                               ; 430f: 1f 0d 18    ...
    !text "Press <RETURN>~"                                           ; 4312: 50 72 65... Pre
unused2
    !byte $0d                                                         ; 4321: 0d          .
unused100
    !byte $ff, $ff, $ff                                               ; 4322: ff ff ff    ...
    !byte $ff                                                         ; 4325: ff          .
    !byte $ff                                                         ; 4326: ff          .
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 4327: ea ea ea... ...
    !byte $ea, $ea                                                    ; 4333: ea ea       ..
; ----------------------------------------------------------------------------------
; There are eight entries of 16 bytes each. The first three bytes are the score, then 13 bytes for the name
; ----------------------------------------------------------------------------------
high_score_table
    !byte 0                                                           ; 4335: 00          .
    !byte 0                                                           ; 4336: 00          .
    !byte 0                                                           ; 4337: 00          .
    !byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0                       ; 4338: 00 00 00... ...
    !byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  ; 4345: 00 00 00... ...
    !byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  ; 4359: 00 00 00... ...
    !byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  ; 436d: 00 00 00... ...
    !byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  ; 4381: 00 00 00... ...
    !byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  ; 4395: 00 00 00... ...
    !byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0                          ; 43a9: 00 00 00... ...
unused101
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff,   0  ; 43b5: ff ff ff... ...
    !byte   0,   0,   0,   0, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 43c1: 00 00 00... ...
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea            ; 43cd: ea ea ea... ...

starfleet_records_screen
    lda #$16                                                          ; 43d7: a9 16       ..
    jsr oswrch                                                        ; 43d9: 20 ee ff     ..            ; Write character 22
    lda #7                                                            ; 43dc: a9 07       ..
    jsr oswrch                                                        ; 43de: 20 ee ff     ..            ; Write character 7
    jsr disable_cursor                                                ; 43e1: 20 36 23     6#
    lda #<starfleet_records_string                                    ; 43e4: a9 a5       ..
    sta temp0_low                                                     ; 43e6: 85 80       ..
    lda #>starfleet_records_string                                    ; 43e8: a9 42       .B
    sta temp0_high                                                    ; 43ea: 85 81       ..
    ldy #0                                                            ; 43ec: a0 00       ..
plot_starfleet_records_loop
    lda (temp0_low),y                                                 ; 43ee: b1 80       ..
    cmp #$7e                                                          ; 43f0: c9 7e       .~
    beq finished_plotting_starfleet_records                           ; 43f2: f0 0b       ..
    jsr oswrch                                                        ; 43f4: 20 ee ff     ..            ; Write character
    inc temp0_low                                                     ; 43f7: e6 80       ..
    bne plot_starfleet_records_loop                                   ; 43f9: d0 f3       ..
    inc temp0_high                                                    ; 43fb: e6 81       ..
    bne plot_starfleet_records_loop                                   ; 43fd: d0 ef       ..
finished_plotting_starfleet_records
    lda #8                                                            ; 43ff: a9 08       ..
    sta temp8                                                         ; 4401: 85 75       .u
    ldx #0                                                            ; 4403: a2 00       ..
plot_high_scores_loop
    lda #$1f                                                          ; 4405: a9 1f       ..
    jsr oswrch                                                        ; 4407: 20 ee ff     ..            ; Write character 31
    lda #7                                                            ; 440a: a9 07       ..
    jsr oswrch                                                        ; 440c: 20 ee ff     ..            ; Write character 7
    txa                                                               ; 440f: 8a          .
    lsr                                                               ; 4410: 4a          J
    lsr                                                               ; 4411: 4a          J
    lsr                                                               ; 4412: 4a          J
    clc                                                               ; 4413: 18          .
    adc #8                                                            ; 4414: 69 08       i.
    jsr oswrch                                                        ; 4416: 20 ee ff     ..            ; Write character
    lda high_score_table + 3,x                                        ; 4419: bd 38 43    .8C
    beq leave_after_plotting_underscores                              ; 441c: f0 48       .H
    txa                                                               ; 441e: 8a          .
    lsr                                                               ; 441f: 4a          J
    lsr                                                               ; 4420: 4a          J
    lsr                                                               ; 4421: 4a          J
    lsr                                                               ; 4422: 4a          J
    clc                                                               ; 4423: 18          .
    adc #$31                                                          ; 4424: 69 31       i1
    jsr oswrch                                                        ; 4426: 20 ee ff     ..            ; Write character
    lda #$20                                                          ; 4429: a9 20       .
    jsr oswrch                                                        ; 442b: 20 ee ff     ..            ; Write character 32
    jsr oswrch                                                        ; 442e: 20 ee ff     ..            ; Write character
    jsr oswrch                                                        ; 4431: 20 ee ff     ..            ; Write character
    inx                                                               ; 4434: e8          .
    inx                                                               ; 4435: e8          .
    inx                                                               ; 4436: e8          .
    ldy #$0d                                                          ; 4437: a0 0d       ..
plot_name_loop
    lda high_score_table,x                                            ; 4439: bd 35 43    .5C
    jsr oswrch                                                        ; 443c: 20 ee ff     ..            ; Write character
    inx                                                               ; 443f: e8          .
    dey                                                               ; 4440: 88          .
    bne plot_name_loop                                                ; 4441: d0 f6       ..
    lda #$20                                                          ; 4443: a9 20       .
    jsr oswrch                                                        ; 4445: 20 ee ff     ..            ; Write character 32
    jsr oswrch                                                        ; 4448: 20 ee ff     ..            ; Write character
    jsr oswrch                                                        ; 444b: 20 ee ff     ..            ; Write character
    ldy #$20                                                          ; 444e: a0 20       .
    lda high_score_table - 16,x                                       ; 4450: bd 25 43    .%C
    jsr plot_two_digit_high_score                                     ; 4453: 20 79 44     yD
    lda high_score_table - 15,x                                       ; 4456: bd 26 43    .&C
    jsr plot_two_digit_high_score                                     ; 4459: 20 79 44     yD
    lda high_score_table - 14,x                                       ; 445c: bd 27 43    .'C
    jsr plot_two_digit_high_score                                     ; 445f: 20 79 44     yD
    dec temp8                                                         ; 4462: c6 75       .u
    bne plot_high_scores_loop                                         ; 4464: d0 9f       ..
leave_after_plotting_underscores
    lda #0                                                            ; 4466: a9 00       ..
    jsr plot_line_of_underscores_at_y                                 ; 4468: 20 4c 40     L@
    lda #2                                                            ; 446b: a9 02       ..
    jsr plot_line_of_underscores_at_y                                 ; 446d: 20 4c 40     L@
    lda #$17                                                          ; 4470: a9 17       ..
    jsr plot_line_of_underscores_at_y                                 ; 4472: 20 4c 40     L@
    jsr wait_for_return                                               ; 4475: 20 bb 41     .A
    rts                                                               ; 4478: 60          `

plot_two_digit_high_score
    sta temp7                                                         ; 4479: 85 88       ..
    lsr                                                               ; 447b: 4a          J
    lsr                                                               ; 447c: 4a          J
    lsr                                                               ; 447d: 4a          J
    lsr                                                               ; 447e: 4a          J
    jsr plot_one_digit_high_score                                     ; 447f: 20 86 44     .D
    lda temp7                                                         ; 4482: a5 88       ..
    and #$0f                                                          ; 4484: 29 0f       ).
plot_one_digit_high_score
    bne not_zero                                                      ; 4486: d0 03       ..
    tya                                                               ; 4488: 98          .
    bne leading_zero2                                                 ; 4489: d0 05       ..
not_zero
    ldy #$30                                                          ; 448b: a0 30       .0
    clc                                                               ; 448d: 18          .
    adc #$30                                                          ; 448e: 69 30       i0
leading_zero2
    jsr oswrch                                                        ; 4490: 20 ee ff     ..            ; Write character
    rts                                                               ; 4493: 60          `

; ----------------------------------------------------------------------------------
enter_your_name_string
    !byte $1f, 0, $0a                                                 ; 4494: 1f 00 0a    ...
    !text "Enter your name for Star-Fleet records."                   ; 4497: 45 6e 74... Ent
    !byte $1f, $0d, $10                                               ; 44be: 1f 0d 10    ...
    !text "-------------"                                             ; 44c1: 2d 2d 2d... ---
    !byte $1f, $0d, $0f, $7e, $0d                                     ; 44ce: 1f 0d 0f... ...
input_buffer
    !text "PPPPPPPPPPPP"                                              ; 44d3: 50 50 50... PPP
    !byte $88, $0d                                                    ; 44df: 88 0d       ..
input_osword_block
    !word input_buffer                                                ; 44e1: d3 44       .D             ; Buffer address for input (2 bytes)
    !byte $0d, $20, $ff                                               ; 44e3: 0d 20 ff    . .            ; Maximum line length; Min. acceptable character value; Max. acceptable character value
unused3
    !byte 0, $ea                                                      ; 44e6: 00 ea       ..

; ----------------------------------------------------------------------------------
check_for_high_score
    lda #$16                                                          ; 44e8: a9 16       ..
    jsr oswrch                                                        ; 44ea: 20 ee ff     ..            ; Write character 22
    lda #4                                                            ; 44ed: a9 04       ..
    jsr oswrch                                                        ; 44ef: 20 ee ff     ..            ; Write character 4
    lda score_as_bcd                                                  ; 44f2: ad 65 2d    .e-
    ora score_as_bcd + 1                                              ; 44f5: 0d 66 2d    .f-
    ora score_as_bcd + 2                                              ; 44f8: 0d 67 2d    .g-
    beq score_is_zero                                                 ; 44fb: f0 2b       .+
    lda #8                                                            ; 44fd: a9 08       ..
    sta temp8                                                         ; 44ff: 85 75       .u
    ldx #0                                                            ; 4501: a2 00       ..
consider_records_loop
    lda score_as_bcd + 2                                              ; 4503: ad 67 2d    .g-
    cmp high_score_table,x                                            ; 4506: dd 35 43    .5C
    bcc consider_next_record                                          ; 4509: 90 14       ..
    bne higher_score                                                  ; 450b: d0 1c       ..
    lda score_as_bcd + 1                                              ; 450d: ad 66 2d    .f-
    cmp high_score_table + 1,x                                        ; 4510: dd 36 43    .6C
    bcc consider_next_record                                          ; 4513: 90 0a       ..
    bne higher_score                                                  ; 4515: d0 12       ..
    lda score_as_bcd                                                  ; 4517: ad 65 2d    .e-
    cmp high_score_table + 2,x                                        ; 451a: dd 37 43    .7C
    bcs higher_score                                                  ; 451d: b0 0a       ..
consider_next_record
    txa                                                               ; 451f: 8a          .
    clc                                                               ; 4520: 18          .
    adc #$10                                                          ; 4521: 69 10       i.
    tax                                                               ; 4523: aa          .
    dec temp8                                                         ; 4524: c6 75       .u
    bne consider_records_loop                                         ; 4526: d0 db       ..
score_is_zero
    rts                                                               ; 4528: 60          `

higher_score
    stx temp7                                                         ; 4529: 86 88       ..
    ldx #$70                                                          ; 452b: a2 70       .p
move_records_down_a_slot_loop
    cpx temp7                                                         ; 452d: e4 88       ..
    beq finished_moving_records                                       ; 452f: f0 0a       ..
    dex                                                               ; 4531: ca          .
    lda high_score_table,x                                            ; 4532: bd 35 43    .5C
    sta high_score_table + 16,x                                       ; 4535: 9d 45 43    .EC
    jmp move_records_down_a_slot_loop                                 ; 4538: 4c 2d 45    L-E

finished_moving_records
    lda #<enter_your_name_string                                      ; 453b: a9 94       ..
    sta temp0_low                                                     ; 453d: 85 80       ..
    lda #>enter_your_name_string                                      ; 453f: a9 44       .D
    sta temp0_high                                                    ; 4541: 85 81       ..
    ldy #0                                                            ; 4543: a0 00       ..
plot_enter_your_name_loop
    lda (temp0_low),y                                                 ; 4545: b1 80       ..
    cmp #$7e                                                          ; 4547: c9 7e       .~
    beq finished_plotting_enter_your_name                             ; 4549: f0 0b       ..
    jsr oswrch                                                        ; 454b: 20 ee ff     ..            ; Write character
    inc temp0_low                                                     ; 454e: e6 80       ..
    bne plot_enter_your_name_loop                                     ; 4550: d0 f3       ..
    inc temp0_high                                                    ; 4552: e6 81       ..
    bne plot_enter_your_name_loop                                     ; 4554: d0 ef       ..
finished_plotting_enter_your_name
    ldx #<(input_osword_block)                                        ; 4556: a2 e1       ..
    ldy #>(input_osword_block)                                        ; 4558: a0 44       .D
    lda #osword_read_line                                             ; 455a: a9 00       ..
    jsr osword                                                        ; 455c: 20 f1 ff     ..            ; Read line from input stream (exits with C=1 if ESCAPE pressed)
    sty y_pixels                                                      ; 455f: 84 7b       .{             ; Y contains line length, including carriage return if used.
    bcc escape_not_pressed                                            ; 4561: 90 05       ..
    lda #osbyte_acknowledge_escape                                    ; 4563: a9 7e       .~
    jsr osbyte                                                        ; 4565: 20 f4 ff     ..            ; Clear escape condition and perform escape effects
escape_not_pressed
    ldx temp7                                                         ; 4568: a6 88       ..
    lda score_as_bcd                                                  ; 456a: ad 65 2d    .e-
    sta high_score_table + 2,x                                        ; 456d: 9d 37 43    .7C
    lda score_as_bcd + 1                                              ; 4570: ad 66 2d    .f-
    sta high_score_table + 1,x                                        ; 4573: 9d 36 43    .6C
    lda score_as_bcd + 2                                              ; 4576: ad 67 2d    .g-
    sta high_score_table,x                                            ; 4579: 9d 35 43    .5C
    ldy #0                                                            ; 457c: a0 00       ..
copy_name_loop
    cpy y_pixels                                                      ; 457e: c4 7b       .{
    beq pad_name_loop                                                 ; 4580: f0 0a       ..
    lda input_buffer,y                                                ; 4582: b9 d3 44    ..D
    sta high_score_table + 3,x                                        ; 4585: 9d 38 43    .8C
    inx                                                               ; 4588: e8          .
    iny                                                               ; 4589: c8          .
    bne copy_name_loop                                                ; 458a: d0 f2       ..
pad_name_loop
    cpy #$0d                                                          ; 458c: c0 0d       ..
    beq finished_padding_name                                         ; 458e: f0 09       ..
    lda #$20                                                          ; 4590: a9 20       .
    sta high_score_table + 3,x                                        ; 4592: 9d 38 43    .8C
    inx                                                               ; 4595: e8          .
    iny                                                               ; 4596: c8          .
    bne pad_name_loop                                                 ; 4597: d0 f3       ..
finished_padding_name
    jsr starfleet_records_screen                                      ; 4599: 20 d7 43     .C
    rts                                                               ; 459c: 60          `

plot_shields_string_and_something
    txa                                                               ; 459d: 8a          .
    and #1                                                            ; 459e: 29 01       ).
    sta starship_shields_active_before_failure                        ; 45a0: 8d 5a 26    .Z&
    jsr plot_shields_string                                           ; 45a3: 20 b8 45     .E
    lda scanner_failure_duration                                      ; 45a6: ad 59 26    .Y&
    beq return29                                                      ; 45a9: f0 02       ..
    pla                                                               ; 45ab: 68          h
    pla                                                               ; 45ac: 68          h
return29
    rts                                                               ; 45ad: 60          `

plot_auto_shields_string
    lda previous_starship_automatic_shields                           ; 45ae: ad 3a 19    .:.
    cmp starship_automatic_shields                                    ; 45b1: cd 24 19    .$.
    bpl return30                                                      ; 45b4: 10 0e       ..
    ldx #$0e                                                          ; 45b6: a2 0e       ..
plot_shields_string
    ldy #7                                                            ; 45b8: a0 07       ..
plot_shields_string_loop
    lda shield_state_strings,x                                        ; 45ba: bd b2 17    ...
    jsr oswrch                                                        ; 45bd: 20 ee ff     ..            ; Write character
    inx                                                               ; 45c0: e8          .
    dey                                                               ; 45c1: 88          .
    bne plot_shields_string_loop                                      ; 45c2: d0 f6       ..
return30
    rts                                                               ; 45c4: 60          `

unused102
    !byte $ea, $ea, $ea, $60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0   ; 45c5: ea ea ea... ...
    !byte   0,   0,   0,   0                                          ; 45d6: 00 00 00... ...

start_game
    lda #$16                                                          ; 45da: a9 16       ..
    jsr oswrch                                                        ; 45dc: 20 ee ff     ..            ; Write character 22
    lda #4                                                            ; 45df: a9 04       ..
    jsr oswrch                                                        ; 45e1: 20 ee ff     ..            ; Write character 4
    jsr disable_cursor                                                ; 45e4: 20 36 23     6#
    lda #0                                                            ; 45e7: a9 00       ..
    sta previous_score_as_bcd                                         ; 45e9: 8d 07 39    ..9
    sta previous_score_as_bcd + 1                                     ; 45ec: 8d 08 39    ..9
    sta previous_score_as_bcd + 2                                     ; 45ef: 8d 09 39    ..9
    sta number_of_live_starship_torpedoes                             ; 45f2: 8d 57 26    .W&
    jmp start_game_continuation                                       ; 45f5: 4c f3 37    L.7

unused103
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 45f8: ea ea ea... ...
    !byte $ea, $ea, $ea                                               ; 4604: ea ea ea    ...

end_of_command
    pla                                                               ; 4607: 68          h
    pla                                                               ; 4608: 68          h
    lda enemy_ships_previous_x_fraction                               ; 4609: ad 01 04    ...
    sta rnd_2                                                         ; 460c: 8d d2 1c    ...
    lda enemy_ships_previous_x_fraction1                              ; 460f: ad 04 04    ...
    sta rnd_1                                                         ; 4612: 8d d1 1c    ...
    lda #$16                                                          ; 4615: a9 16       ..
    jsr oswrch                                                        ; 4617: 20 ee ff     ..            ; Write character 22
    lda #4                                                            ; 461a: a9 04       ..
    jsr oswrch                                                        ; 461c: 20 ee ff     ..            ; Write character 4
    jsr disable_cursor                                                ; 461f: 20 36 23     6#
    jsr set_foreground_colour_to_black                                ; 4622: 20 12 23     .#
    jsr plot_debriefing                                               ; 4625: 20 61 3b     a;
    jsr set_foreground_colour_to_white                                ; 4628: 20 06 23     .#
    jsr wait_for_return                                               ; 462b: 20 bb 41     .A
    lda allowed_another_command                                       ; 462e: ad 0a 39    ..9
    bne start_next_command                                            ; 4631: d0 06       ..
    jsr check_for_high_score                                          ; 4633: 20 e8 44     .D
    jmp start                                                         ; 4636: 4c b1 47    L.G

start_next_command
    jsr combat_preparation_screen                                     ; 4639: 20 03 42     .B
    lda score_as_bcd                                                  ; 463c: ad 65 2d    .e-
    sta previous_score_as_bcd                                         ; 463f: 8d 07 39    ..9
    lda score_as_bcd + 1                                              ; 4642: ad 66 2d    .f-
    sta previous_score_as_bcd + 1                                     ; 4645: 8d 08 39    ..9
    lda score_as_bcd + 2                                              ; 4648: ad 67 2d    .g-
    sta previous_score_as_bcd + 2                                     ; 464b: 8d 09 39    ..9
    ldy #3                                                            ; 464e: a0 03       ..
change_probabilities_loop
    lda probability_of_new_enemy_ship_being_defensive_about_damage,y  ; 4650: b9 ba 33    ..3
    cmp ultimate_enemy_ship_probabilities,y                           ; 4653: d9 c6 33    ..3
    beq skip_change_of_probability                                    ; 4656: f0 07       ..
    clc                                                               ; 4658: 18          .
    adc change_in_enemy_ship_spawning_probabilities_per_command,y     ; 4659: 79 c0 33    y.3
    sta probability_of_new_enemy_ship_being_defensive_about_damage,y  ; 465c: 99 ba 33    ..3
skip_change_of_probability
    dey                                                               ; 465f: 88          .
    bpl change_probabilities_loop                                     ; 4660: 10 ee       ..
    lda maximum_number_of_stars                                       ; 4662: ad 50 0e    .P.
    cmp minimum_number_of_stars                                       ; 4665: cd ba 34    ..4
    beq skip_change_of_stars                                          ; 4668: f0 07       ..
    clc                                                               ; 466a: 18          .
    adc change_in_number_of_stars_per_command                         ; 466b: 6d bb 34    m.4
    sta maximum_number_of_stars                                       ; 466e: 8d 50 0e    .P.
skip_change_of_stars
    lda #$16                                                          ; 4671: a9 16       ..
    jsr oswrch                                                        ; 4673: 20 ee ff     ..            ; Write character 22
    lda #4                                                            ; 4676: a9 04       ..
    jsr oswrch                                                        ; 4678: 20 ee ff     ..            ; Write character 4
    jsr disable_cursor                                                ; 467b: 20 36 23     6#
    jsr prepare_starship_for_next_command                             ; 467e: 20 f4 34     .4
    jmp main_game_loop                                                ; 4681: 4c 33 38    L38

unused
    !byte $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 4684: ea ea ea... ...
    !byte $ea, $ea, $ea                                               ; 4690: ea ea ea    ...
the_frontiers_string
    !byte $1f, 0, 5                                                   ; 4693: 1f 00 05    ...
    !text "  The frontiers of space are frequently penetrated  by "   ; 4696: 20 20 54...   T
    !text " hostile  alien  ships .  These are tackled by battle s"   ; 46cd: 20 68 6f...  ho
    !text "tarships ,the  command  of  which  is  given  to  deser"   ; 4704: 74 61 72... tar
    !text "ving captains from the Star-Fleet ."                       ; 473b: 76 69 6e... vin
    !byte $1f, $0b, 2                                                 ; 475e: 1f 0b 02    ...
    !text "STARSHIP  COMMAND"                                         ; 4761: 53 54 41... STA
    !byte $1f, 6, $0a                                                 ; 4772: 1f 06 0a    ...
    !text "To begin your first command"                               ; 4775: 54 6f 20... To
    !byte $1f, $0c, $0b                                               ; 4790: 1f 0c 0b    ...
    !text "Press <RETURN>~"                                           ; 4793: 50 72 65... Pre
unused1
    !byte $0d, $ff, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea, $ea  ; 47a2: 0d ff ea... ...
    !byte $ea, $ea, $ea                                               ; 47ae: ea ea ea    ...

start
    lda star_table_address_low                                        ; 47b1: ad 49 0e    .I.
    sta temp0_low                                                     ; 47b4: 85 80       ..
    lda star_table_address_high                                       ; 47b6: ad 4a 0e    .J.
    sta temp0_high                                                    ; 47b9: 85 81       ..
    ldy #0                                                            ; 47bb: a0 00       ..
    ldx #0                                                            ; 47bd: a2 00       ..
initialise_stars_loop
    lda #$80                                                          ; 47bf: a9 80       ..
    sta (temp0_low),y                                                 ; 47c1: 91 80       ..
    iny                                                               ; 47c3: c8          .
    lda initial_star_positions,x                                      ; 47c4: bd 00 4a    ..J
    sta (temp0_low),y                                                 ; 47c7: 91 80       ..
    iny                                                               ; 47c9: c8          .
    bne skip                                                          ; 47ca: d0 02       ..
    inc temp0_high                                                    ; 47cc: e6 81       ..
skip
    inx                                                               ; 47ce: e8          .
    bne initialise_stars_loop                                         ; 47cf: d0 ee       ..
    jsr initialise_joystick_and_cursor_keys                           ; 47d1: 20 2f 36     /6
    lda #$16                                                          ; 47d4: a9 16       ..
    jsr oswrch                                                        ; 47d6: 20 ee ff     ..            ; Write character 22
    lda #4                                                            ; 47d9: a9 04       ..
    jsr oswrch                                                        ; 47db: 20 ee ff     ..            ; Write character 4
    lda #$0d                                                          ; 47de: a9 0d       ..
    jsr oswrch                                                        ; 47e0: 20 ee ff     ..            ; Write character 13
    lda #0                                                            ; 47e3: a9 00       ..
    jsr plot_line_of_underscores_at_y                                 ; 47e5: 20 4c 40     L@
    lda #3                                                            ; 47e8: a9 03       ..
    jsr plot_line_of_underscores_at_y                                 ; 47ea: 20 4c 40     L@
    lda #<the_frontiers_string                                        ; 47ed: a9 93       ..
    sta temp0_low                                                     ; 47ef: 85 80       ..
    lda #>the_frontiers_string                                        ; 47f1: a9 46       .F
    sta temp0_high                                                    ; 47f3: 85 81       ..
    ldy #0                                                            ; 47f5: a0 00       ..
plot_the_frontiers_loop
    lda (temp0_low),y                                                 ; 47f7: b1 80       ..
    cmp #$7e                                                          ; 47f9: c9 7e       .~
    beq finished_the_frontiers                                        ; 47fb: f0 0b       ..
    jsr oswrch                                                        ; 47fd: 20 ee ff     ..            ; Write character
    inc temp0_low                                                     ; 4800: e6 80       ..
    bne plot_the_frontiers_loop                                       ; 4802: d0 f3       ..
    inc temp0_high                                                    ; 4804: e6 81       ..
    bne plot_the_frontiers_loop                                       ; 4806: d0 ef       ..
finished_the_frontiers
    lda #osbyte_flush_buffer_class                                    ; 4808: a9 0f       ..
    ldx #1                                                            ; 480a: a2 01       ..
    ldy #0                                                            ; 480c: a0 00       ..
    jsr osbyte                                                        ; 480e: 20 f4 ff     ..            ; Flush input buffers (X non-zero)
    lda #$80                                                          ; 4811: a9 80       ..
    sta maximum_number_of_stars                                       ; 4813: 8d 50 0e    .P.
    lda #1                                                            ; 4816: a9 01       ..
    sta starship_velocity_high                                        ; 4818: 8d 00 0f    ...
    sta starship_velocity_low                                         ; 481b: 8d 01 0f    ...
    lda #$85                                                          ; 481e: a9 85       ..
    sta starship_rotation                                             ; 4820: 8d 02 0f    ...
    lda #5                                                            ; 4823: a9 05       ..
    sta starship_rotation_magnitude                                   ; 4825: 8d 03 0f    ...
    lda #$ce                                                          ; 4828: a9 ce       ..
    sta starship_rotation_cosine                                      ; 482a: 8d 04 0f    ...
    lda #$0a                                                          ; 482d: a9 0a       ..
    sta starship_rotation_sine_magnitude                              ; 482f: 8d 05 0f    ...
    lda #$62                                                          ; 4832: a9 62       .b
    sta screen_start_high                                             ; 4834: 85 79       .y
    jsr plot_stars                                                    ; 4836: 20 24 1d     $.
wait_for_return_in_frontiers
    inc rnd_1                                                         ; 4839: ee d1 1c    ...
    sei                                                               ; 483c: 78          x
    jsr update_stars                                                  ; 483d: 20 d0 13     ..
    cli                                                               ; 4840: 58          X
    lda #osbyte_inkey                                                 ; 4841: a9 81       ..
    ldx #2                                                            ; 4843: a2 02       ..
    ldy #0                                                            ; 4845: a0 00       ..
    jsr osbyte                                                        ; 4847: 20 f4 ff     ..            ; Wait for a key press within 2 centiseconds
; X is the ASCII value of the key pressed (assuming Y=0)
    cpx #$0d                                                          ; 484a: e0 0d       ..
    beq return_pressed                                                ; 484c: f0 0c       ..
    cpy #$1b                                                          ; 484e: c0 1b       ..             ; Y is zero if key pressed; $ff if no key pressed; $1b if ESCAPE pressed
    bne wait_for_return_in_frontiers                                  ; 4850: d0 e7       ..
    lda #osbyte_acknowledge_escape                                    ; 4852: a9 7e       .~
osbyte_then_wait_for_return
    jsr osbyte                                                        ; 4854: 20 f4 ff     ..            ; Clear escape condition and perform escape effects
    jmp wait_for_return_in_frontiers                                  ; 4857: 4c 39 48    L9H

return_pressed
    lda #$58                                                          ; 485a: a9 58       .X
    sta screen_start_high                                             ; 485c: 85 79       .y
    lda rnd_1                                                         ; 485e: ad d1 1c    ...
    eor #$cd                                                          ; 4861: 49 cd       I.
    sta rnd_2                                                         ; 4863: 8d d2 1c    ...
    lda #$0d                                                          ; 4866: a9 0d       ..
    jsr oswrch                                                        ; 4868: 20 ee ff     ..            ; Write character 13
    jsr combat_preparation_screen                                     ; 486b: 20 03 42     .B
    jmp start_game                                                    ; 486e: 4c da 45    L.E

unused104
    !byte $54, $48, $e0, $0d, $d0, $dd, $60, 0                        ; 4871: 54 48 e0... TH.
unused_title_string
    !byte $1f, $0b, $0a                                               ; 4879: 1f 0b 0a    ...
    !text "STARSHIP COMMAND I"                                        ; 487c: 53 54 41... STA
    !byte $1f, $0b, $0c                                               ; 488e: 1f 0b 0c    ...
    !text "COPYRIGHT (c) 1982"                                        ; 4891: 43 4f 50... COP
    !byte $1f, $0b, $0e                                               ; 48a3: 1f 0b 0e    ...
    !text "Peter J.M. Irvin.~"                                        ; 48a6: 50 65 74... Pet
    !byte $0d                                                         ; 48b8: 0d          .
unused105
    !byte $ff                                                         ; 48b9: ff          .
unused_title_screen
    !byte $a9, $16, $20, $ee, $ff, $a9, 7, $20, $ee, $ff, $a0, 0      ; 48ba: a9 16 20... ..
plot_title_loop
    !byte $b9, $79, $48, $c9, $7e, $f0, 6, $20, $ee, $ff, $c8, $d0    ; 48c6: b9 79 48... .yH
    !byte $f3                                                         ; 48d2: f3          .
finished_plotting_title
    !byte $a0,   0, $a2, $64, $a9, $81, $20, $f4, $ff, $4c, $b1, $47  ; 48d3: a0 00 a2... ...
    !byte $9c, $a9, $b8, $a9, $be, $ec, $86, $e2, $81, $e2, $ec, $85  ; 48df: 9c a9 b8... ...
    !byte $be, $ba, $a5, $a2, $e2,   0,   0,   0,   0,   0,   0,   0  ; 48eb: be ba a5... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0                 ; 48f7: 00 00 00... ...

get_joystick_input
    lda #osbyte_read_adc_or_get_buffer_status                         ; 4900: a9 80       ..
    ldx #0                                                            ; 4902: a2 00       ..
    jsr osbyte                                                        ; 4904: 20 f4 ff     ..            ; Read the channel number last used for an ADC conversion and joystick fire buttons (X=0)
    txa                                                               ; 4907: 8a          .              ; X has the joystick fire buttons status in the lower two bits: bit 0=left button, bit 1=right button
    and #3                                                            ; 4908: 29 03       ).
    beq fire_not_pressed                                              ; 490a: f0 03       ..
    inc fire_pressed                                                  ; 490c: ee 1a 19    ...
fire_not_pressed
    lda #osbyte_read_adc_or_get_buffer_status                         ; 490f: a9 80       ..
    ldx #2                                                            ; 4911: a2 02       ..
    jsr osbyte                                                        ; 4913: 20 f4 ff     ..            ; Read the ADC conversion value for channel X=2
    lda starship_velocity_high                                        ; 4916: ad 00 0f    ...
    sta x_pixels                                                      ; 4919: 85 7a       .z
    lda starship_velocity_low                                         ; 491b: ad 01 0f    ...
    asl                                                               ; 491e: 0a          .
    rol x_pixels                                                      ; 491f: 26 7a       &z
    asl                                                               ; 4921: 0a          .
    rol x_pixels                                                      ; 4922: 26 7a       &z
    tya                                                               ; 4924: 98          .              ; X and Y contain the ADC value read (low,high)
    lsr                                                               ; 4925: 4a          J
    lsr                                                               ; 4926: 4a          J
    lsr                                                               ; 4927: 4a          J
    sec                                                               ; 4928: 38          8
    sbc #8                                                            ; 4929: e9 08       ..
    bcs skip_floor1                                                   ; 492b: b0 02       ..
    lda #0                                                            ; 492d: a9 00       ..
skip_floor1
    cmp x_pixels                                                      ; 492f: c5 7a       .z
    beq consider_rotation                                             ; 4931: f0 0b       ..
    bcc decrease_velocity                                             ; 4933: 90 06       ..
increase_velocity
    inc velocity_delta                                                ; 4935: ee 2e 19    ...
    jmp consider_rotation                                             ; 4938: 4c 3e 49    L>I

decrease_velocity
    dec velocity_delta                                                ; 493b: ce 2e 19    ...
consider_rotation
    lda #osbyte_read_adc_or_get_buffer_status                         ; 493e: a9 80       ..
    ldx #1                                                            ; 4940: a2 01       ..
    jsr osbyte                                                        ; 4942: 20 f4 ff     ..            ; Read the ADC conversion value for channel X=1
    tya                                                               ; 4945: 98          .              ; X and Y contain the ADC value read (low,high)
    eor #$ff                                                          ; 4946: 49 ff       I.
    lsr                                                               ; 4948: 4a          J
    lsr                                                               ; 4949: 4a          J
    lsr                                                               ; 494a: 4a          J
    lsr                                                               ; 494b: 4a          J
    cmp #8                                                            ; 494c: c9 08       ..
    bcc skip_subtraction                                              ; 494e: 90 03       ..
    sbc #1                                                            ; 4950: e9 01       ..
    clc                                                               ; 4952: 18          .
skip_subtraction
    adc #$79                                                          ; 4953: 69 79       iy
    cmp starship_rotation                                             ; 4955: cd 02 0f    ...
    beq return31                                                      ; 4958: f0 0b       ..
    bcs rotate_clockwise                                              ; 495a: b0 06       ..
rotate_anticlockwise
    dec rotation_delta                                                ; 495c: ce 27 19    .'.
    jmp return31                                                      ; 495f: 4c 65 49    LeI

rotate_clockwise
    inc rotation_delta                                                ; 4962: ee 27 19    .'.
return31
    rts                                                               ; 4965: 60          `

unused106
    !byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0                                ; 4966: 00 00 00... ...
unused_copyright_string
    !byte $0c, $1f, $0c, 8                                            ; 4970: 0c 1f 0c... ...
    !text "STARSHIP COMMAND"                                          ; 4974: 53 54 41... STA
    !byte $1f, 1, $0a                                                 ; 4984: 1f 01 0a    ...
    !text "Copyright (c) Acornsoft Limited 1982"                      ; 4987: 43 6f 70... Cop
    !byte $1f, 6, $0c                                                 ; 49ab: 1f 06 0c    ...
    !text "Created by Peter J.M. Irvin"                               ; 49ae: 43 72 65... Cre
    !byte $1f, $0a, $0e                                               ; 49c9: 1f 0a 0e    ...
    !text "All rights reserved"                                       ; 49cc: 41 6c 6c... All
    !byte $0d, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0         ; 49df: 0d 00 00... ...
sound_10
    !byte $11, 0                                                      ; 49f0: 11 00       ..             ; Channel (2 bytes)
sound_10_volume_low
    !byte 0                                                           ; 49f2: 00          .              ; Amplitude (2 bytes)
sound_10_volume_high
    !byte 0                                                           ; 49f3: 00          .
sound_10_pitch
    !byte 0, 0, 4, 0                                                  ; 49f4: 00 00 04... ...            ; Pitch (2 bytes); Duration (2 bytes)
sound_11
    !byte $10, 0, 3, 0, 7, 0, $1e, 0                                  ; 49f8: 10 00 03... ...            ; Channel (2 bytes); Amplitude (2 bytes); Pitch (2 bytes); Duration (2 bytes)
initial_star_positions
    !byte $d5, $82, $d5, $7b, $d5, $88, $d5, $75, $d3, $8f, $d3, $6e  ; 4a00: d5 82 d5... ...
    !byte $d3, $84, $d3, $79, $d2, $8d, $d2, $70, $d1, $95, $d1, $68  ; 4a0c: d3 84 d3... ...
    !byte $cf, $92, $cf, $6b, $cf, $9b, $cf, $62, $cf, $87, $cf, $76  ; 4a18: cf 92 cf... ...
    !byte $cb, $a0, $cb, $5d, $cb, $98, $cb, $65, $c9, $8b, $c9, $72  ; 4a24: cb a0 cb... ...
    !byte $c7, $9c, $c7, $61, $c7, $a5, $c7, $58, $c3, $aa, $c3, $53  ; 4a30: c7 9c c7... ...
    !byte $c2, $8d, $c2, $70, $c1, $a0, $c1, $5d, $be, $ae, $be, $4f  ; 4a3c: c2 8d c2... ...
    !byte $bb, $a4, $bb, $59, $b9, $90, $b9, $6d, $b8, $b2, $b8, $4b  ; 4a48: bb a4 bb... ...
    !byte $b4, $a7, $b4, $56, $b3, $b5, $b3, $48, $af, $91, $af, $6c  ; 4a54: b4 a7 b4... ...
    !byte $ad, $b7, $ad, $46, $ad, $a9, $ad, $54, $a6, $b9, $a6, $44  ; 4a60: ad b7 ad... ...
    !byte $a5, $ab, $a5, $52, $a5, $92, $a5, $6b, $a0, $ba, $a0, $43  ; 4a6c: a5 ab a5... ...
    !byte $9d, $ab, $9d, $52, $9a, $bb, $9a, $43, $9a, $93, $9a, $6b  ; 4a78: 9d ab 9d... ...
    !byte $96, $ab, $96, $52, $93, $ba, $93, $43, $8e, $ab, $8e, $52  ; 4a84: 96 ab 96... ...
    !byte $8e, $92, $8e, $6b, $8d, $b9, $8d, $44, $86, $a9, $86, $54  ; 4a90: 8e 92 8e... ...
    !byte $86, $b7, $86, $46, $84, $91, $84, $6c, $80, $b5, $80, $48  ; 4a9c: 86 b7 86... ...
    !byte $7f, $a7, $7f, $56, $7b, $b2, $7b, $4b, $7a, $90, $7a, $6d  ; 4aa8: 7f a7 7f... ...
    !byte $78, $a4, $78, $59, $75, $ae, $75, $4f, $72, $a0, $72, $5d  ; 4ab4: 78 a4 78... x.x
    !byte $71, $8d, $71, $70, $70, $aa, $70, $53, $6c, $a5, $6c, $58  ; 4ac0: 71 8d 71... q.q
    !byte $6c, $9c, $6c, $61, $6a, $8b, $6a, $72, $68, $98, $68, $65  ; 4acc: 6c 9c 6c... l.l
    !byte $68, $a0, $68, $5d, $64, $92, $64, $6b, $64, $9b, $64, $62  ; 4ad8: 68 a0 68... h.h
    !byte $64, $87, $64, $76, $62, $95, $62, $68, $61, $8d, $61, $70  ; 4ae4: 64 87 64... d.d
    !byte $60, $8f, $60, $6e, $60, $84, $60, $79, $5e, $82, $5e, $7b  ; 4af0: 60 8f 60... `.`
    !byte $5e, $88, $5e, $75                                          ; 4afc: 5e 88 5e... ^.^
star_table
    !byte $cd, $49, $3a, $96, $f8, $8d, $6e, $61, $c6, $2d, $68, $1f  ; 4b00: cd 49 3a... .I:
    !byte $0d, $74, $52, $d2, $f8, $9e, $3e, $a9, $b1, $25, $2b, $54  ; 4b0c: 0d 74 52... .tR
    !byte $6d, $6f, $94, $44, $56, $24, $fb, $88, $fd, $b6, $8f, $31  ; 4b18: 6d 6f 94... mo.
    !byte $6a, $ea, $36, $b6, $14, $b5, $0a, $4b, $97, $4c, $f4, $0a  ; 4b24: 6a ea 36... j.6
    !byte $10, $9d,   7, $40, $e5, $66, $c0, $26, $25, $7d, $2e, $4c  ; 4b30: 10 9d 07... ...
    !byte $63, $7a, $fe, $e4, $b2, $23, $a6, $43, $84, $cc, $3f, $6c  ; 4b3c: 63 7a fe... cz.
    !byte $c0, $d0, $39, $96, $be, $c3, $80, $54, $32, $cf, $60, $8e  ; 4b48: c0 d0 39... ..9
    !byte $4b, $c5, $59, $5c, $b6, $ca,   3, $82, $dc, $c5, $7c, $69  ; 4b54: 4b c5 59... K.Y
    !byte $0c, $cc, $13, $93, $99, $c0, $33, $59, $cc, $cd, $e7, $9b  ; 4b60: 0c cc 13... ...
    !byte $da, $be, $5d, $50, $d7, $ca, $95, $a1, $f4, $b9, $3d, $4c  ; 4b6c: da be 5d... ..]
    !byte $3a, $c4, $55, $85, $9b, $be, $e2, $68, $f1, $c6, $2b, $98  ; 4b78: 3a c4 55... :.U
    !byte $ee, $b9, $70, $56, $b6, $c6, $7c, $a6, $45, $b4, $49, $49  ; 4b84: ee b9 70... ..p
    !byte $d3, $c1, $41, $9d, $46, $b3, $ae, $53, $fb, $bb,   6, $8a  ; 4b90: d3 c1 41... ..A
    !byte $31, $b5, $af, $67, $9a, $c1, $92, $ab, $9c, $ad, $87, $46  ; 4b9c: 31 b5 af... 1..
    !byte $8b, $bb, $8d, $a1, $d2, $ab, $18, $52, $49, $bd, $7b, $af  ; 4ba8: 8b bb 8d... ...
    !byte $1f, $a8, $8f, $44, $5e, $b2, $f2, $8c, $30, $ab, $a6, $68  ; 4bb4: 1f a8 8f... ...
    !byte $c9, $b7, $9c, $b2, $d9, $a1, $c1, $43, $12, $b5, $e0, $a4  ; 4bc0: c9 b7 9c... ...
    !byte $90, $a4, $7d, $51                                          ; 4bcc: 90 a4 7d... ..}
starship_explosion_table
    !byte 0,   0, $2f, 0,   9, $57, 0, $15, $96, 0, $1a, $63          ; 4bd0: 00 00 2f... ../
    !byte 0, $46, $90, 0, $59, $55, 0, $37, $9a, 0, $7d, $91          ; 4bdc: 00 46 90... .F.
    !byte 0, $32, $69, 0, $3b, $75, 0, $7e, $a0, 0, $71, $51          ; 4be8: 00 32 69... .2i
    !byte 0, $42, $67, 0, $42, $61, 0, $57, $9a, 0, $0a, $6d          ; 4bf4: 00 42 67... .Bg
    !byte 0, $f6, $a1, 0, $6e, $98, 0, $55, $8a, 0, $36, $9d          ; 4c00: 00 f6 a1... ...
    !byte 0, $3d, $94, 0, $2b, $75, 0, $78, $32, 0,   6, $a1          ; 4c0c: 00 3d 94... .=.
    !byte 0, $29, $4c, 0, $0e, $98, 0, $2c, $83, 0, $0d, $99          ; 4c18: 00 29 4c... .)L
    !byte 0, $39, $56, 0, $15, $91, 0,   5, $98, 0, $13, $73          ; 4c24: 00 39 56... .9V
    !byte 0, $6d, $8a, 0, $40, $36, 0,   3, $7e, 0, $51, $4d          ; 4c30: 00 6d 8a... .m.
    !byte 0, $34, $81, 0, $90, $33, 0, $25, $86, 0, $21, $53          ; 4c3c: 00 34 81... .4.
    !byte 0, $1f, $a0, 0, $72, $65, 0, $6c, $8d, 0, $16, $96          ; 4c48: 00 1f a0... ...
    !byte 0, $2f, $9c, 0, $79, $4d, 0, $45, $8c, 0, $2f, $9f          ; 4c54: 00 2f 9c... ./.
    !byte 0, $64, $8c, 0, $12, $68, 0, $43, $76, 0, $6d, $93          ; 4c60: 00 64 8c... .d.
    !byte 0, $2b, $7c, 0, $62, $64, 0, $65, $92, 0, $3d, $97          ; 4c6c: 00 2b 7c... .+|
    !byte 0, $16, $8c, 0, $45, $95, 0, $1a                            ; 4c78: 00 16 8c... ...
    !byte $69,   0, $b1, $55, 0, $26, $9e, 0, $4b, $79, 0, $85, $98   ; 4c80: 69 00 b1... i..
    !byte   0, $4a, $64                                               ; 4c8d: 00 4a 64    .Jd
further_star_table
    !byte $86, $74, $92, $ad, $94, $65,   8, $62, $c6, $72, $be, $a4  ; 4c90: 86 74 92... .t.
    !byte $53, $67, $dd, $6a, $85, $6d, $73, $94, $ab, $68, $ee, $7b  ; 4c9c: 53 67 dd... Sg.
    !byte $14, $6e, $97, $a1, $2e, $64, $91, $6f, $a1, $6f, $71, $a9  ; 4ca8: 14 6e 97... .n.
    !byte $9f, $62, $b7, $67, $fd, $68, $7c, $9c, $6b, $61, $3a, $76  ; 4cb4: 9f 62 b7... .b.
    !byte $bd, $6a, $50, $a5, $ac, $5f, $66, $6d, $db, $66, $b1, $91  ; 4cc0: bd 6a 50... .jP
    !byte $8d, $63,   5, $81, $9d, $67, $d0, $9f, $e0, $5e, $ab, $73  ; 4ccc: 8d 63 05... .c.
    !byte $12, $65, $2b, $98, $74, $5f, $b6, $7b, $7d, $64, $51, $9a  ; 4cd8: 12 65 2b... .e+
    !byte $15, $5e, $f3, $79, $5b, $62, $87, $8f, $37, $60, $bd, $84  ; 4ce4: 15 5e f3... .^.
    !byte   0, $60, $f3, $8d, $a3, $5e, $16, $87, $2a, $61, $d7, $93  ; 4cf0: 00 60 f3... .`.
    !byte $78, $5d, $33, $81                                          ; 4cfc: 78 5d 33... x]3
enemy_explosion_tables
    !byte   0, $d3,   0, $85,   0, $a9,   0, $c6                      ; 4d00: 00 d3 00... ...
    !byte   0, $d7,   0, $9e,   0, $cb,   0, $cb                      ; 4d08: 00 d7 00... ...
    !byte   0, $9e,   0, $a1,   0, $7d,   0, $da                      ; 4d10: 00 9e 00... ...
    !byte   0, $fb,   0, $ce,   0, $b2,   0, $54                      ; 4d18: 00 fb 00... ...
    !byte   0, $6c,   0, $da,   0, $99,   0, $aa                      ; 4d20: 00 6c 00... .l.
    !byte   0, $d6,   0, $91,   0, $95,   0, $ad                      ; 4d28: 00 d6 00... ...
    !byte   0, $f7,   0, $81,   0, $89,   0, $64                      ; 4d30: 00 f7 00... ...
    !byte   0, $99,   0, $fb,   0, $44,   0, $a2                      ; 4d38: 00 99 00... ...
    !byte   0, $a5,   0, $9d,   0, $a2,   0, $a5                      ; 4d40: 00 a5 00... ...
    !byte   0, $75,   0, $fb,   0, $48,   0, $ae                      ; 4d48: 00 75 00... .u.
    !byte   0, $d2,   0, $4c,   0, $ff,   0, $60                      ; 4d50: 00 d2 00... ...
    !byte   0, $71,   0, $ba,   0, $44,   0, $4c                      ; 4d58: 00 71 00... .q.
    !byte   0, $c2,   0, $58,   0, $f3,   0, $91                      ; 4d60: 00 c2 00... ...
    !byte   0, $e7,   0, $aa,   0, $71,   0, $da                      ; 4d68: 00 e7 00... ...
    !byte   0, $9e,   0, $71,   0, $50,   0, $50                      ; 4d70: 00 9e 00... ...
    !byte   0, $a2,   0, $4c,   0, $e3,   0, $cb                      ; 4d78: 00 a2 00... ...
    !byte   0, $91,   0, $f3,   0, $85,   0, $89                      ; 4d80: 00 91 00... ...
    !byte   0, $81,   0, $e3,   0, $cb,   0, $9e                      ; 4d88: 00 81 00... ...
    !byte   0, $44,   0, $ba,   0, $a1,   0, $79                      ; 4d90: 00 44 00... .D.
    !byte   0, $54,   0, $58,   0, $44,   0, $c7                      ; 4d98: 00 54 00... .T.
    !byte   0, $aa,   0, $cb,   0, $7d,   0, $68                      ; 4da0: 00 aa 00... ...
    !byte   0, $a5,   0, $cf,   0, $40,   0, $71                      ; 4da8: 00 a5 00... ...
    !byte   0, $68,   0, $ae,   0, $d2,   0, $c2                      ; 4db0: 00 68 00... .h.
    !byte   0, $ae,   0, $da,   0, $6c,   0, $c2                      ; 4db8: 00 ae 00... ...
    !byte   0, $a2,   0, $54,   0, $78,   0, $eb                      ; 4dc0: 00 a2 00... ...
    !byte   0, $d6,   0, $fb,   0, $ce,   0, $fb                      ; 4dc8: 00 d6 00... ...
    !byte   0, $81,   0, $ad,   0, $f7,   0, $ad                      ; 4dd0: 00 81 00... ...
    !byte   0, $89,   0, $a2,   0, $b6,   0, $91                      ; 4dd8: 00 89 00... ...
    !byte   0, $44,   0, $d2,   0, $a6,   0, $c7                      ; 4de0: 00 44 00... .D.
    !byte   0, $85,   0, $44,   0, $50,   0, $74                      ; 4de8: 00 85 00... ...
    !byte   0, $85,   0, $79,   0, $a2,   0, $40                      ; 4df0: 00 85 00... ...
    !byte   0, $75,   0, $ca,   0, $cf,   0, $a6                      ; 4df8: 00 75 00... .u.
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4e00: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4e08: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4e10: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4e18: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4e20: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4e28: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4e30: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4e38: ff ff ff... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4e40: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4e48: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4e50: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4e58: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4e60: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4e68: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4e70: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4e78: 00 00 00... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4e80: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4e88: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4e90: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4e98: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4ea0: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4ea8: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4eb0: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff                      ; 4eb8: ff ff ff... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4ec0: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4ec8: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4ed0: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4ed8: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4ee0: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4ee8: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4ef0: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0                      ; 4ef8: 00 00 00... ...
starship_torpedoes_table
    !byte   0, $4b, $66, $b1, $48, $fd, $66, $a3, $4a,   0, $17, $66  ; 4f00: 00 4b 66... .Kf
    !byte $3a, $4b, $cb, $66, $2b, $4d,   0, $94, $49, $19, $44, $a2  ; 4f0c: 3a 4b cb... :K.
    !byte $4a, $db, $45,   0, $2f, $4a,   9, $46, $3d, $4b, $c9, $47  ; 4f18: 4a db 45... J.E
    !byte   0, $6b, $4b, $0e, $48, $77, $4c, $d2, $49,   0, $81, $4b  ; 4f24: 00 6b 4b... .kK
    !byte $fc, $48, $91, $4c, $bf, $4a,   0, $39, $83, $6b, $3f, $1d  ; 4f30: fc 48 91... .H.
    !byte $83, $7c, $41,   0, $72, $7d, $89, $3a, $82, $7d, $98, $3c  ; 4f3c: 83 7c 41... .|A
    !byte   0, $12, $75, $76, $3f, $60, $75, $7e, $41,   0, $99, $6d  ; 4f48: 00 12 75... ..u
    !byte $31, $3d, $13, $6e, $33, $3f,   0, $d5, $6a, $36, $40, $63  ; 4f54: 31 3d 13... 1=.
    !byte $6b, $35, $42,   0, $b1, $68, $93, $43, $4f, $69, $86, $45  ; 4f60: 6b 35 42... k5B
unused107
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 4f6c: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0, $ff, $ff, $ff, $ff  ; 4f78: 00 00 00... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 4f84: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 4f90: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 4f9c: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 4fa8: ff ff ff... ...
enemy_torpedoes_table
    !byte 0, $fb, $23,   5,   7, $97, 0, $38, $83, $f6, $7d, $9e      ; 4fb4: 00 fb 23... ..#
    !byte 0, $e7, $45, $45, $8a, $c5, 0, $f9, $37, $94, $6c, $bf      ; 4fc0: 00 e7 45... ..E
    !byte 0, $78, $8a, $4e, $77, $a5, 0, $28, $82, $6d, $7c, $d2      ; 4fcc: 00 78 8a... .x.
    !byte 0, $72, $fe, $82, $b1, $ac, 0, $26, $81, $c2, $7e, $c8      ; 4fd8: 00 72 fe... .r.
    !byte 0, $ab, $fd, $23, $a7, $ae, 0, $4a, $fe, $f5, $93, $b8      ; 4fe4: 00 ab fd... ...
    !byte 0, $5e,   2,   3, $ed, $9f, 0, $85, $fd,   9, $98, $b7      ; 4ff0: 00 5e 02... .^.
    !byte 0, $46, $81, $d8, $7b, $ab, 0, $f0, $18, $b1, $b0, $a8      ; 4ffc: 00 46 81... .F.
    !byte 0, $75, $0d, $21, $90, $b8, 0, $fb, $43, $77, $c9, $b3      ; 5008: 00 75 0d... .u.
    !byte 0, $1d, $47,   1, $8f, $af, 0, $55, $43, $b0, $73, $c3      ; 5014: 00 1d 47... ..G
    !byte 0, $2e, $36, $45, $b1, $b4, 0, $ed, $81, $73, $7d, $a7      ; 5020: 00 2e 36... ..6
    !byte 0, $af, $7d, $5d, $7b, $b2, 0, $d9, $1c, $c9, $93, $b4      ; 502c: 00 af 7d... ..}
    !byte 0, $51, $21, $1d, $82, $b8, 0, $31, $28, $f2, $96, $be      ; 5038: 00 51 21... .Q!
unused108
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 5044: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 5050: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 505c: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 5068: 00 00 00... ...
    !byte   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0  ; 5074: 00 00 00... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 5080: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 508c: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 5098: ff ff ff... ...
    !byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff  ; 50a4: ff ff ff... ...
    !byte   0, $a9,   0, $a8, $85, $80, $a9, $0e, $85, $81, $a9,   0  ; 50b0: 00 a9 00... ...
    !byte $85, $82, $a9, $1f, $85, $83, $a9, $b0, $85, $84, $a9, $61  ; 50bc: 85 82 a9... ...
    !byte $85, $85, $b1, $82, $91, $80, $a6, $82, $e4, $84, $d0,   6  ; 50c8: 85 85 b1... ...
    !byte $a6, $83, $e4, $85, $f0, $1c, $18, $a9,   1, $65, $82, $85  ; 50d4: a6 83 e4... ...
    !byte $82, $a9,   0, $65, $83, $85, $83, $a9,   1, $65, $80, $85  ; 50e0: 82 a9 00... ...
    !byte $80, $a9,   0, $65, $81, $85, $81, $4c, $ca, $61, $4c, $b1  ; 50ec: 80 a9 00... ...
    !byte $47,   0,   0,   0,   0,   0,   0                           ; 50f8: 47 00 00... G..
pydis_end
!if ('0') != $30 {
    !error "Assertion failed: '0' == $30"
}
!if ('~') != $7e {
    !error "Assertion failed: '~' == $7e"
}
!if (<(enemy_explosion_tables + $0000)) != $00 {
    !error "Assertion failed: <(enemy_explosion_tables + $0000) == $00"
}
!if (<(enemy_explosion_tables + $0040)) != $40 {
    !error "Assertion failed: <(enemy_explosion_tables + $0040) == $40"
}
!if (<(enemy_explosion_tables + $0080)) != $80 {
    !error "Assertion failed: <(enemy_explosion_tables + $0080) == $80"
}
!if (<(enemy_explosion_tables + $00c0)) != $c0 {
    !error "Assertion failed: <(enemy_explosion_tables + $00c0) == $c0"
}
!if (<(enemy_explosion_tables + $0100)) != $00 {
    !error "Assertion failed: <(enemy_explosion_tables + $0100) == $00"
}
!if (<(enemy_explosion_tables + $0140)) != $40 {
    !error "Assertion failed: <(enemy_explosion_tables + $0140) == $40"
}
!if (<(enemy_explosion_tables + $0180)) != $80 {
    !error "Assertion failed: <(enemy_explosion_tables + $0180) == $80"
}
!if (<(enemy_explosion_tables + $01c0)) != $c0 {
    !error "Assertion failed: <(enemy_explosion_tables + $01c0) == $c0"
}
!if (<(enemy_explosion_tables + $0200)) != $00 {
    !error "Assertion failed: <(enemy_explosion_tables + $0200) == $00"
}
!if (<(enemy_explosion_tables + $0240)) != $40 {
    !error "Assertion failed: <(enemy_explosion_tables + $0240) == $40"
}
!if (<(enemy_explosion_tables + $0280)) != $80 {
    !error "Assertion failed: <(enemy_explosion_tables + $0280) == $80"
}
!if (<(enemy_explosion_tables + $02c0)) != $c0 {
    !error "Assertion failed: <(enemy_explosion_tables + $02c0) == $c0"
}
!if (<(enemy_explosion_tables + $0300)) != $00 {
    !error "Assertion failed: <(enemy_explosion_tables + $0300) == $00"
}
!if (<(enemy_explosion_tables + $0340)) != $40 {
    !error "Assertion failed: <(enemy_explosion_tables + $0340) == $40"
}
!if (<(enemy_explosion_tables + $0380)) != $80 {
    !error "Assertion failed: <(enemy_explosion_tables + $0380) == $80"
}
!if (<(enemy_explosion_tables + $03c0)) != $c0 {
    !error "Assertion failed: <(enemy_explosion_tables + $03c0) == $c0"
}
!if (<(enemy_ship_behaviour_routine0)) != $49 {
    !error "Assertion failed: <(enemy_ship_behaviour_routine0) == $49"
}
!if (<(enemy_ship_behaviour_routine1)) != $b1 {
    !error "Assertion failed: <(enemy_ship_behaviour_routine1) == $b1"
}
!if (<(enemy_ship_behaviour_routine2)) != $ee {
    !error "Assertion failed: <(enemy_ship_behaviour_routine2) == $ee"
}
!if (<(enemy_ship_behaviour_routine3)) != $1e {
    !error "Assertion failed: <(enemy_ship_behaviour_routine3) == $1e"
}
!if (<(enemy_ship_behaviour_routine4)) != $41 {
    !error "Assertion failed: <(enemy_ship_behaviour_routine4) == $41"
}
!if (<(enemy_ship_behaviour_routine5)) != $6a {
    !error "Assertion failed: <(enemy_ship_behaviour_routine5) == $6a"
}
!if (<(enemy_ship_behaviour_routine6)) != $2e {
    !error "Assertion failed: <(enemy_ship_behaviour_routine6) == $2e"
}
!if (<(enemy_ship_behaviour_routine7)) != $61 {
    !error "Assertion failed: <(enemy_ship_behaviour_routine7) == $61"
}
!if (<(envelope1)) != $84 {
    !error "Assertion failed: <(envelope1) == $84"
}
!if (<(envelope2)) != $92 {
    !error "Assertion failed: <(envelope2) == $92"
}
!if (<(envelope3)) != $a0 {
    !error "Assertion failed: <(envelope3) == $a0"
}
!if (<(envelope4)) != $ae {
    !error "Assertion failed: <(envelope4) == $ae"
}
!if (<(input_osword_block)) != $e1 {
    !error "Assertion failed: <(input_osword_block) == $e1"
}
!if (<(sound_0)) != $08 {
    !error "Assertion failed: <(sound_0) == $08"
}
!if (<(sound_1)) != $c8 {
    !error "Assertion failed: <(sound_1) == $c8"
}
!if (<(sound_10)) != $f0 {
    !error "Assertion failed: <(sound_10) == $f0"
}
!if (<(sound_11)) != $f8 {
    !error "Assertion failed: <(sound_11) == $f8"
}
!if (<(sound_2)) != $d0 {
    !error "Assertion failed: <(sound_2) == $d0"
}
!if (<(sound_3)) != $d8 {
    !error "Assertion failed: <(sound_3) == $d8"
}
!if (<(sound_7)) != $f8 {
    !error "Assertion failed: <(sound_7) == $f8"
}
!if (<(sound_8)) != $00 {
    !error "Assertion failed: <(sound_8) == $00"
}
!if (<(sound_9)) != $08 {
    !error "Assertion failed: <(sound_9) == $08"
}
!if (<(starship_torpedoes_table+4)) != $04 {
    !error "Assertion failed: <(starship_torpedoes_table+4) == $04"
}
!if (<enemy_torpedo_type_instruction) != $20 {
    !error "Assertion failed: <enemy_torpedo_type_instruction == $20"
}
!if (<enemy_torpedoes_table) != $b4 {
    !error "Assertion failed: <enemy_torpedoes_table == $b4"
}
!if (<enter_your_name_string) != $94 {
    !error "Assertion failed: <enter_your_name_string == $94"
}
!if (<instructions_string) != $92 {
    !error "Assertion failed: <instructions_string == $92"
}
!if (<keyboard_or_joystick) != $d6 {
    !error "Assertion failed: <keyboard_or_joystick == $d6"
}
!if (<sound_enabled) != $d7 {
    !error "Assertion failed: <sound_enabled == $d7"
}
!if (<star_table) != $00 {
    !error "Assertion failed: <star_table == $00"
}
!if (<starfleet_records_string) != $a5 {
    !error "Assertion failed: <starfleet_records_string == $a5"
}
!if (<starship_explosion_table) != $d0 {
    !error "Assertion failed: <starship_explosion_table == $d0"
}
!if (<starship_torpedo_type) != $5b {
    !error "Assertion failed: <starship_torpedo_type == $5b"
}
!if (<starship_torpedoes_table) != $00 {
    !error "Assertion failed: <starship_torpedoes_table == $00"
}
!if (<the_frontiers_string) != $93 {
    !error "Assertion failed: <the_frontiers_string == $93"
}
!if (>(enemy_explosion_tables + $0000)) != $4d {
    !error "Assertion failed: >(enemy_explosion_tables + $0000) == $4d"
}
!if (>(enemy_explosion_tables + $0040)) != $4d {
    !error "Assertion failed: >(enemy_explosion_tables + $0040) == $4d"
}
!if (>(enemy_explosion_tables + $0080)) != $4d {
    !error "Assertion failed: >(enemy_explosion_tables + $0080) == $4d"
}
!if (>(enemy_explosion_tables + $00c0)) != $4d {
    !error "Assertion failed: >(enemy_explosion_tables + $00c0) == $4d"
}
!if (>(enemy_explosion_tables + $0100)) != $4e {
    !error "Assertion failed: >(enemy_explosion_tables + $0100) == $4e"
}
!if (>(enemy_explosion_tables + $0140)) != $4e {
    !error "Assertion failed: >(enemy_explosion_tables + $0140) == $4e"
}
!if (>(enemy_explosion_tables + $0180)) != $4e {
    !error "Assertion failed: >(enemy_explosion_tables + $0180) == $4e"
}
!if (>(enemy_explosion_tables + $01c0)) != $4e {
    !error "Assertion failed: >(enemy_explosion_tables + $01c0) == $4e"
}
!if (>(enemy_explosion_tables + $0200)) != $4f {
    !error "Assertion failed: >(enemy_explosion_tables + $0200) == $4f"
}
!if (>(enemy_explosion_tables + $0240)) != $4f {
    !error "Assertion failed: >(enemy_explosion_tables + $0240) == $4f"
}
!if (>(enemy_explosion_tables + $0280)) != $4f {
    !error "Assertion failed: >(enemy_explosion_tables + $0280) == $4f"
}
!if (>(enemy_explosion_tables + $02c0)) != $4f {
    !error "Assertion failed: >(enemy_explosion_tables + $02c0) == $4f"
}
!if (>(enemy_explosion_tables + $0300)) != $50 {
    !error "Assertion failed: >(enemy_explosion_tables + $0300) == $50"
}
!if (>(enemy_explosion_tables + $0340)) != $50 {
    !error "Assertion failed: >(enemy_explosion_tables + $0340) == $50"
}
!if (>(enemy_explosion_tables + $0380)) != $50 {
    !error "Assertion failed: >(enemy_explosion_tables + $0380) == $50"
}
!if (>(enemy_explosion_tables + $03c0)) != $50 {
    !error "Assertion failed: >(enemy_explosion_tables + $03c0) == $50"
}
!if (>(enemy_ship_behaviour_routine0)) != $32 {
    !error "Assertion failed: >(enemy_ship_behaviour_routine0) == $32"
}
!if (>(enemy_ship_behaviour_routine1)) != $32 {
    !error "Assertion failed: >(enemy_ship_behaviour_routine1) == $32"
}
!if (>(enemy_ship_behaviour_routine2)) != $32 {
    !error "Assertion failed: >(enemy_ship_behaviour_routine2) == $32"
}
!if (>(enemy_ship_behaviour_routine3)) != $33 {
    !error "Assertion failed: >(enemy_ship_behaviour_routine3) == $33"
}
!if (>(enemy_ship_behaviour_routine4)) != $33 {
    !error "Assertion failed: >(enemy_ship_behaviour_routine4) == $33"
}
!if (>(enemy_ship_behaviour_routine5)) != $33 {
    !error "Assertion failed: >(enemy_ship_behaviour_routine5) == $33"
}
!if (>(enemy_ship_behaviour_routine6)) != $37 {
    !error "Assertion failed: >(enemy_ship_behaviour_routine6) == $37"
}
!if (>(enemy_ship_behaviour_routine7)) != $37 {
    !error "Assertion failed: >(enemy_ship_behaviour_routine7) == $37"
}
!if (>(envelope1)) != $21 {
    !error "Assertion failed: >(envelope1) == $21"
}
!if (>(envelope2)) != $21 {
    !error "Assertion failed: >(envelope2) == $21"
}
!if (>(envelope3)) != $21 {
    !error "Assertion failed: >(envelope3) == $21"
}
!if (>(envelope4)) != $21 {
    !error "Assertion failed: >(envelope4) == $21"
}
!if (>(input_osword_block)) != $44 {
    !error "Assertion failed: >(input_osword_block) == $44"
}
!if (>(sound_0)) != $20 {
    !error "Assertion failed: >(sound_0) == $20"
}
!if (>(sound_1)) != $21 {
    !error "Assertion failed: >(sound_1) == $21"
}
!if (>(sound_10)) != $49 {
    !error "Assertion failed: >(sound_10) == $49"
}
!if (>(sound_11)) != $49 {
    !error "Assertion failed: >(sound_11) == $49"
}
!if (>(sound_2)) != $21 {
    !error "Assertion failed: >(sound_2) == $21"
}
!if (>(sound_3)) != $21 {
    !error "Assertion failed: >(sound_3) == $21"
}
!if (>(sound_7)) != $21 {
    !error "Assertion failed: >(sound_7) == $21"
}
!if (>(sound_8)) != $22 {
    !error "Assertion failed: >(sound_8) == $22"
}
!if (>(sound_9)) != $22 {
    !error "Assertion failed: >(sound_9) == $22"
}
!if (>(starship_torpedoes_table+4)) != $4f {
    !error "Assertion failed: >(starship_torpedoes_table+4) == $4f"
}
!if (>enemy_torpedo_type_instruction) != $16 {
    !error "Assertion failed: >enemy_torpedo_type_instruction == $16"
}
!if (>enemy_torpedoes_table) != $4f {
    !error "Assertion failed: >enemy_torpedoes_table == $4f"
}
!if (>enter_your_name_string) != $44 {
    !error "Assertion failed: >enter_your_name_string == $44"
}
!if (>instructions_string) != $3d {
    !error "Assertion failed: >instructions_string == $3d"
}
!if (>keyboard_or_joystick) != $1c {
    !error "Assertion failed: >keyboard_or_joystick == $1c"
}
!if (>sound_enabled) != $1c {
    !error "Assertion failed: >sound_enabled == $1c"
}
!if (>star_table) != $4b {
    !error "Assertion failed: >star_table == $4b"
}
!if (>starfleet_records_string) != $42 {
    !error "Assertion failed: >starfleet_records_string == $42"
}
!if (>starship_explosion_table) != $4b {
    !error "Assertion failed: >starship_explosion_table == $4b"
}
!if (>starship_torpedo_type) != $26 {
    !error "Assertion failed: >starship_torpedo_type == $26"
}
!if (>starship_torpedoes_table) != $4f {
    !error "Assertion failed: >starship_torpedoes_table == $4f"
}
!if (>the_frontiers_string) != $46 {
    !error "Assertion failed: >the_frontiers_string == $46"
}
!if (input_buffer) != $44d3 {
    !error "Assertion failed: input_buffer == $44d3"
}
