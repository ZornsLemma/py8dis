* = $1100

    lda #42
    !byte $80, $42 ; NOP #$42
    !byte $82, $72 ; NOP #$72
    sta $70
    !byte $82, $25 ; NOP #$25
    lda #99
    !byte $8b, $00 ; ANE #$00
    !byte $03, $70 ; SLO ($70,X)
    rts
