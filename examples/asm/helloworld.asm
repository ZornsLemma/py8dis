osasci = $ffe3 ; Acorn OS routine to print ASCII character in A

    * = $2000
    ldx #0
loop
    lda string,x
    jsr osasci
    inx
    cpx #string_end-string
    bne loop
    rts

string
    !text "Hello, world!", 13
string_end
