osasci = $ffe3 ; Acorn OS routine to print ASCII character in A
zp = $70

    * = $900
print_and_inc_zp
    lda zp
    jsr print_and_inc_a
    sta zp
    rts
print_and_inc_a
    jsr osasci
    clc
    adc #1
    rts
