; Memory locations
oswrch  = &ffee

    org &2000

; ***************************************************************************************
.start
.pydis_start
    jsr print_message                                                 ; 2000: 20 0e 20     .
    lda #&aa                                                          ; 2003: a9 aa       ..
    jsr print_decimal_number                                          ; 2005: 20 26 20     &
    lda #&7c ; '|'                                                    ; 2008: a9 7c       .|
    jsr print_hex_number                                              ; 200a: 20 42 20     B
    rts                                                               ; 200d: 60          `

; ***************************************************************************************
; Print welcome message
; 
; Displays the welcome message at the start of the code. Only used once.
; ***************************************************************************************
.print_message
    ldx #0                                                            ; 200e: a2 00       ..
.print_loop
    lda welcome_message,x                                             ; 2010: bd 1c 20    ..
    jsr oswrch                                                        ; 2013: 20 ee ff     ..
    inx                                                               ; 2016: e8          .
    cpx #&0a                                                          ; 2017: e0 0a       ..
    bne print_loop                                                    ; 2019: d0 f5       ..
    rts                                                               ; 201b: 60          `

.welcome_message
    equs "Welcome!"                                                   ; 201c: 57 65 6c... Wel
    equb &0a, &0d                                                     ; 2024: 0a 0d       ..

; ***************************************************************************************
; Print a byte as a decimal number 000-255
; 
; On Entry:
;     A: number to print
; ***************************************************************************************
.print_decimal_number
    ldy #2                                                            ; 2026: a0 02       ..
.loop_next_decimal_digit
    ldx #'0'                                                          ; 2028: a2 30       .0
.loop_finding_digit
    cmp decimal_digits,y                                              ; 202a: d9 3f 20    .?
    bcc found_digit                                                   ; 202d: 90 06       ..
    sbc decimal_digits,y                                              ; 202f: f9 3f 20    .?
    inx                                                               ; 2032: e8          .
    bne loop_finding_digit                                            ; 2033: d0 f5       ..             ; ALWAYS branch
.found_digit
    pha                                                               ; 2035: 48          H
    txa                                                               ; 2036: 8a          .
    jsr oswrch                                                        ; 2037: 20 ee ff     ..
    pla                                                               ; 203a: 68          h
    dey                                                               ; 203b: 88          .
    bpl loop_next_decimal_digit                                       ; 203c: 10 ea       ..
    rts                                                               ; 203e: 60          `

.decimal_digits
    equb   1,  10, 100                                                ; 203f: 01 0a 64    ..d

; ***************************************************************************************
; Print a byte as hexadecimal
; 
; Prints a two digit hex number 00-FF.
; 
; On Entry:
;     A: number to print
; 
; On Exit:
;     A: corrupted
;     X: preserved
;     Y: preserved
; ***************************************************************************************
.print_hex_number
    pha                                                               ; 2042: 48          H
    lsr a                                                             ; 2043: 4a          J
    lsr a                                                             ; 2044: 4a          J
    lsr a                                                             ; 2045: 4a          J
    lsr a                                                             ; 2046: 4a          J
    jsr print_hex_digit                                               ; 2047: 20 4d 20     M
    pla                                                               ; 204a: 68          h
    and #&0f                                                          ; 204b: 29 0f       ).
.print_hex_digit
    sed                                                               ; 204d: f8          .
    cmp #&0a                                                          ; 204e: c9 0a       ..
    adc #'0'                                                          ; 2050: 69 30       i0
    cld                                                               ; 2052: d8          .
    jmp oswrch                                                        ; 2053: 4c ee ff    L..

.pydis_end

save pydis_start, pydis_end
