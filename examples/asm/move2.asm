; This is just a sketch of "tricksy" code; I haven't actually bothered to make
; it functional.

    * = $2000

    lda #65
    jsr $ffee
    jsr install_low_a
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
    ; imagine we have lots of padding here
    jsr install_low_b
    ; This code would probaly have been overwritten and this jmp would be
    ; corrupt but this is just a sketch; imagine we know this is past the
    ; area overwritten by install_low_b.
    jmp low_b_baz
}

install_low_a
    lda low_a,y
    sta $900,y
    rts

!pseudopc $901 {
low_b
    ldx #6
low_b_loop
    lda low_b_data,x
    dex
    bne low_b_loop
    rts
low_b_data
    !text "foo"
low_b_baz
    ldx #2
    bne low_b_loop
}

install_low_b
    lda low_b,x
    sta $901,x
    rts
