* = $1100

    lda #42
    !byte $80, $42 ; NOP #$42
    !byte $82, $72 ; NOP #$72
    sta $70
    !byte $82, $25 ; NOP #$25
    lda #99
    !byte $8b, $00 ; ANE #$00
    !byte $03, $70 ; SLO ($70,X)
    !byte $07, $80 ; SLO $80
    !byte $0f, $34, $12 ; SLO $1234
    !byte $0f, $72, $00 ; SLO+2 $0072
    !byte $1f, $34, $12 ; SLO $1234,X
    !byte $1b, $34, $12 ; SLO $1234,Y
    !byte $17, $70 ; SLO $70,X
    !byte $13, $70 ; SLO ($70),Y
    !byte $4B, $12 ; ALR #$12
    !byte $0B, $34 ; ANC #$34
    rts
