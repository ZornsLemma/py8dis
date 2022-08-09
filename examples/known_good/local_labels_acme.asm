; Constants
crtc_vert_total_adjust   = 5

; Memory locations
bit_value               = $70
char_to_print           = $70
crtc_address_register   = $fe00
oswrch                  = $ffee

    * = $2000

; ***************************************************************************************
; Local Labels Test
; 
; This is just a jumble of code to test: the local labels feature, CRTC register
; substitution, and subroutine headers. It outputs some characters then reuses a
; variable to count some bits. It doesn't really make sense as a program in its own
; right. It also shows the subroutine header.
; 
; On Entry:
;     A: File handle
;     Y: 0 to write, otherwise read
; 
; On Exit:
;     X: Holds the number of bits set.
test_for_local_labels
pydis_start
    lda #5                                                            ; 2000: a9 05       ..
    sta char_to_print                                                 ; 2002: 85 70       .p
; output some characters
    ldx #$0a                                                          ; 2004: a2 0a       ..
print_loop
    lda #'A'                                                          ; 2006: a9 41       .A
    clc                                                               ; 2008: 18          .
    adc char_to_print                                                 ; 2009: 65 70       ep
    jsr oswrch                                                        ; 200b: 20 ee ff     ..            ; Write character
    inc char_to_print                                                 ; 200e: e6 70       .p
    inc char_to_print                                                 ; 2010: e6 70       .p
    dex                                                               ; 2012: ca          .
    bne print_loop                                                    ; 2013: d0 f1       ..

; count bits in a byte
    lda #$14                                                          ; 2015: a9 14       ..
    sta bit_value                                                     ; 2017: 85 70       .p
bit_counting_loop
    lsr bit_value                                                     ; 2019: 46 70       Fp
    bcc skip_add_to_bit_count                                         ; 201b: 90 01       ..
    inx                                                               ; 201d: e8          .
skip_add_to_bit_count
    lda bit_value                                                     ; 201e: a5 70       .p
    bne bit_counting_loop                                             ; 2020: d0 f7       ..
    jsr crtc_substitution_test                                        ; 2022: 20 26 20     &
    rts                                                               ; 2025: 60          `

crtc_substitution_test
    lda #crtc_vert_total_adjust                                       ; 2026: a9 05       ..
    sta crtc_address_register                                         ; 2028: 8d 00 fe    ...
    rts                                                               ; 202b: 60          `

pydis_end
!if (crtc_vert_total_adjust) != $05 {
    !error "Assertion failed: crtc_vert_total_adjust == $05"
}
