* = $2000

start
    jsr show_title_message
    lda #$aa
    jsr print_decimal_number
    lda #$7c
    jsr print_hex_byte
    rts

show_title_message
    ldx #0
-
    lda welcome_message,x
    jsr $FFEE
    inx
    cpx #welcome_message_end - welcome_message
    bne -
    rts

welcome_message
    !text "Welcome!",10,13
welcome_message_end

print_decimal_number
    ldy #2
--
    ldx #'0'
-
    cmp decimal_table,Y
    bcc +
    sbc decimal_table,Y
    inx
    bne -                       ; Always branch back
+
    pha
    txa
    jsr $FFEE
    pla
    dey
    bpl --
    rts

decimal_table
    !byte 1,10,100

print_hex_byte
    PHA
    LSR
    LSR
    LSR
    LSR
    JSR print_hex_digit
    PLA
    AND #15
print_hex_digit
    SED
    CMP #10
    ADC #'0'
    CLD
    JMP $FFEE

