; Memory locations
l0070   = $70
lffe3   = $ffe3

    * = $2000

pydis_start
    ldx #0                                                            ; 2000: a2 00       ..
; $2002 referenced 1 time by $200b
loop_c2002
    lda c201e,x                                                       ; 2002: bd 1e 20    ..
    sta print_and_inc_zp,x                                            ; 2005: 9d 00 09    ...
    inx                                                               ; 2008: e8          .
    cpx #$0f                                                          ; 2009: e0 0f       ..
    bne loop_c2002                                                    ; 200b: d0 f5       ..
    lda #$61 ; 'a'                                                    ; 200d: a9 61       .a
    ldx #$0a                                                          ; 200f: a2 0a       ..
    sta l0070                                                         ; 2011: 85 70       .p
; $2013 referenced 1 time by $2017
loop_c2013
    jsr print_and_inc_zp                                              ; 2013: 20 00 09     ..
    dex                                                               ; 2016: ca          .
    bne loop_c2013                                                    ; 2017: d0 fa       ..
    lda #$0d                                                          ; 2019: a9 0d       ..
    jmp lffe3                                                         ; 201b: 4c e3 ff    L..

c201e

!pseudopc $0900 {
; $201e referenced 3 times by $2002, $2005, $2013
print_and_inc_zp
    lda l0070                                                         ; 201e: a5 70       .p  :0900[1]
    jsr sub_c0908                                                     ; 2020: 20 08 09     .. :0902[1]
    sta l0070                                                         ; 2023: 85 70       .p  :0905[1]
    rts                                                               ; 2025: 60          `   :0907[1]

; $2026 referenced 1 time by $0902
sub_c0908
    jsr lffe3                                                         ; 2026: 20 e3 ff     .. :0908[1]
    clc                                                               ; 2029: 18          .   :090b[1]
    adc #1                                                            ; 202a: 69 01       i.  :090c[1]
    rts                                                               ; 202c: 60          `   :090e[1]

}

pydis_end

; Label references by decreasing frequency:
;     l0070:        3
;     c201e:        3
;     lffe3:        2
;     loop_c2002:   1
;     loop_c2013:   1
;     sub_c2026:    1

; Automatically generated labels:
;     c201e
;     l0070
;     lffe3
;     loop_c2002
;     loop_c2013
;     sub_c0908
;     sub_c2026
