; Memory locations
test_byte   = &0070
oswrch      = &ffee

    org &2000

; ***************************************************************************************
.start
.pydis_start
    jsr print_message                                                 ; 2000: 20 10 20     .             ; Print welcome message
    stx test_byte                                                     ; 2003: 86 70       .p             ; X=Length of the message just printed
    lda #&aa                                                          ; 2005: a9 aa       ..             ; A=number to print
    jsr print_decimal_number                                          ; 2007: 20 29 20     )
    lda test_byte                                                     ; 200a: a5 70       .p             ; A=number to print
    jsr print_hex_number                                              ; 200c: 20 45 20     E             ; Print a byte as hexadecimal
    rts                                                               ; 200f: 60          `

; ***************************************************************************************
; Print welcome message
; 
; Displays the welcome message at the start of the code. Only used once.
; 
; On Exit:
;     X: Length of the message just printed
;     Y: (preserved)
.print_message
    ldx #0                                                            ; 2010: a2 00       ..
.print_loop
    lda welcome_message,x                                             ; 2012: bd 1e 20    ..
    jsr oswrch                                                        ; 2015: 20 ee ff     ..            ; Write character
    inx                                                               ; 2018: e8          .
    cmp #0                                                            ; 2019: c9 00       ..
    bne print_loop                                                    ; 201b: d0 f5       ..
    rts                                                               ; 201d: 60          `

.welcome_message
    equs "Welcome!"                                                   ; 201e: 57 65 6c... Wel
    equb &0a, &0d,   0                                                ; 2026: 0a 0d 00    ...

; ***************************************************************************************
; Print a byte as a decimal number 000-255
; 
; On Entry:
;     A: number to print
.print_decimal_number
    ldy #2                                                            ; 2029: a0 02       ..
.loop_next_decimal_digit
    ldx #'0'                                                          ; 202b: a2 30       .0
.loop_finding_digit
    cmp decimal_digits,y                                              ; 202d: d9 42 20    .B
    bcc found_digit                                                   ; 2030: 90 06       ..
    sbc decimal_digits,y                                              ; 2032: f9 42 20    .B
    inx                                                               ; 2035: e8          .
    bne loop_finding_digit                                            ; 2036: d0 f5       ..             ; ALWAYS branch
.found_digit
    pha                                                               ; 2038: 48          H
    txa                                                               ; 2039: 8a          .
    jsr oswrch                                                        ; 203a: 20 ee ff     ..            ; Write character
    pla                                                               ; 203d: 68          h
    dey                                                               ; 203e: 88          .
    bpl loop_next_decimal_digit                                       ; 203f: 10 ea       ..
    rts                                                               ; 2041: 60          `

.decimal_digits
    equb   1,  10, 100                                                ; 2042: 01 0a 64    ..d

; ***************************************************************************************
; Print a byte as hexadecimal
; 
; Prints a two digit hex number 00-FF.
; 
; On Entry:
;     A: number to print
; 
; On Exit:
;     A: (corrupted)
;     X: (preserved)
;     Y: (preserved)
.print_hex_number
    pha                                                               ; 2045: 48          H
    lsr a                                                             ; 2046: 4a          J
    lsr a                                                             ; 2047: 4a          J
    lsr a                                                             ; 2048: 4a          J
    lsr a                                                             ; 2049: 4a          J
    jsr print_hex_digit                                               ; 204a: 20 50 20     P
    pla                                                               ; 204d: 68          h
    and #&0f                                                          ; 204e: 29 0f       ).
.print_hex_digit
    sed                                                               ; 2050: f8          .
    cmp #&0a                                                          ; 2051: c9 0a       ..
    adc #'0'                                                          ; 2053: 69 30       i0
    cld                                                               ; 2055: d8          .
    jmp oswrch                                                        ; 2056: 4c ee ff    L..            ; Write character

.pydis_end

save pydis_start, pydis_end
