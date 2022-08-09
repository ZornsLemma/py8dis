; Memory locations
l0070   = $70
osasci  = $ffe3

    * = $0900

; $0900 referenced 1 time by $2006
print_and_inc_zp
pydis_start
    lda l0070                                                         ; 0900: a5 70       .p
    jsr sub_c0908                                                     ; 0902: 20 08 09     ..
    sta l0070                                                         ; 0905: 85 70       .p
    rts                                                               ; 0907: 60          `

; $0908 referenced 1 time by $0902
sub_c0908
    jsr osasci                                                        ; 0908: 20 e3 ff     ..            ; Write character
    clc                                                               ; 090b: 18          .
    adc #1                                                            ; 090c: 69 01       i.
    rts                                                               ; 090e: 60          `


    * = $2000

    lda #$61 ; 'a'                                                    ; 2000: a9 61       .a
    ldx #$0a                                                          ; 2002: a2 0a       ..
    sta l0070                                                         ; 2004: 85 70       .p
; $2006 referenced 1 time by $200a
loop_c2006
    jsr print_and_inc_zp                                              ; 2006: 20 00 09     ..
    dex                                                               ; 2009: ca          .
    bne loop_c2006                                                    ; 200a: d0 fa       ..
    lda #$0d                                                          ; 200c: a9 0d       ..
    jmp osasci                                                        ; 200e: 4c e3 ff    L..            ; Write character 13

pydis_end

; Label references by decreasing frequency:
;     l0070:              3
;     osasci:             2
;     print_and_inc_zp:   1
;     sub_c0908:          1
;     loop_c2006:         1

; Automatically generated labels:
;     l0070
;     loop_c2006
;     sub_c0908
