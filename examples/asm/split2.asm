osasci = $ffe3 ; Acorn OS routine to print ASCII character in A
print_and_inc_zp = $900
zp = $70

    * = $2000
    lda #'a'
    ldx #10
    sta zp
call_loop
    jsr print_and_inc_zp
    dex
    bne call_loop
    lda #13
    jmp osasci
