; This is just a sketch of "tricksy" code; I haven't actually bothered to make
; it functional.

    * = $2000

    lda #65
    jsr $ffee
    jsr install_low_a
    jsr low_a
    jsr install_low_b
    jsr low_a
    lda #66
    jmp $ffee
    
!pseudopc $900 {
low_a
    ldx #70
    jmp low_a_foo
low_a_loop
    txa
    jsr $ffee
low_a_foo
    dex
    bne low_a_loop
    rts
low_a_end
}

install_low_a
    ldy #(low_a_end-low_a)-1
install_low_a_loop
    lda low_a,y
    sta $900,y
    dey
    bpl install_low_a_loop
    rts

install_low_b
    ldy #(low_b_end-low_b)-1
install_low_b_loop
    lda low_b,y
    sta $900,y
    dey
    bpl install_low_b_loop
    rts

!pseudopc $900 {
low_b
    ldx #80
    jmp low_b_foo
low_b_loop
    txa
    jsr $ffee
low_b_foo
    dex
    bne low_b_loop
    rts
low_b_end
}
