oswrsc = $ffb3
osrdsc = $ffb9
vduchr = $ffbc
oseven = $ffbf
gsinit = $ffc2
gsread = $ffc5
nvrdch = $ffc8
nvwrch = $ffcb
osfind = $ffce
osgbpb = $ffd1
osbput = $ffd4
osbget = $ffd7
osargs = $ffda
osfile = $ffdd
osrdch = $ffe0
osasci = $ffe3
osnewl = $ffe7
oswrcr = $ffec
oswrch = $ffee
osword = $fff1
osbyte = $fff4
oscli  = $fff7

mem = $70

* = $1100

start
    ; generic OSBYTE, nothing known
    lda mem
    ldx mem
    ldy mem
    jsr osbyte

    ; ***** OSBYTE 0 *****
    lda #0
    ldx mem
    ldy #0
    jsr osbyte

    lda #0
    ldx #0
    ldy #0
    jsr osbyte

    lda #0
    ldx #1
    ldy #0
    jsr osbyte
    cpx #1

    ; ***** OSBYTE 1 *****
    lda #1
    ldx mem
    ldy #0
    jsr osbyte

    lda #1
    ldx #34
    ldy #0
    jsr osbyte
    cpx #1

    ; ***** OSBYTE 2 *****
    lda #2
    ldx mem
    ldy #0
    jsr osbyte

    lda #2
    ldx #0
    ldy #0
    jsr osbyte

    lda #2
    ldx #1
    ldy #0
    jsr osbyte

    lda #2
    ldx #2
    ldy #0
    jsr osbyte

    lda #2
    ldx #3
    ldy #0
    jsr osbyte
    lda mem,X

    ; ***** OSBYTE 3 *****
    lda #3
    ldx mem
    ldy #0
    jsr osbyte

    lda #3
    ldx #0
    ldy #0
    jsr osbyte

    lda #3
    ldx #255
    ldy #0
    jsr osbyte
    lda mem,X

    ; ***** OSBYTE 4 *****
    lda #4
    ldx mem
    ldy #0
    jsr osbyte

    lda #4
    ldx #0
    ldy #0
    jsr osbyte

    lda #4
    ldx #1
    ldy #0
    jsr osbyte

    lda #4
    ldx #2
    ldy #0
    jsr osbyte

    lda #4
    ldx #3
    ldy #0
    jsr osbyte

    lda #4
    ldx #4
    ldy #0
    jsr osbyte
    cpx #1

    ; ***** OSBYTE 5 *****
    lda #5
    ldx mem
    ldy #0
    jsr osbyte

    lda #5
    ldx #0
    ldy #0
    jsr osbyte

    lda #5
    ldx #1
    ldy #0
    jsr osbyte

    lda #5
    ldx #2
    ldy #0
    jsr osbyte

    lda #5
    ldx #3
    ldy #0
    jsr osbyte

    lda #5
    ldx #4
    ldy #0
    jsr osbyte

    lda #5
    ldx #5
    ldy #0
    jsr osbyte
    cpx #1

    ; ***** OSBYTE 6 *****
    lda #6
    ldx mem
    ldy #0
    jsr osbyte

    lda #6
    ldx #65
    ldy #0
    jsr osbyte
    cpx #1

    ; ***** OSBYTE 7 *****
    lda #7
    ldx mem
    ldy #0
    jsr osbyte

    lda #7
    ldx #0
    ldy #0
    jsr osbyte

    lda #7
    ldx #1
    ldy #0
    jsr osbyte

    lda #7
    ldx #2
    ldy #0
    jsr osbyte

    lda #7
    ldx #3
    ldy #0
    jsr osbyte

    lda #7
    ldx #4
    ldy #0
    jsr osbyte

    lda #7
    ldx #5
    ldy #0
    jsr osbyte

    lda #7
    ldx #6
    ldy #0
    jsr osbyte

    lda #7
    ldx #7
    ldy #0
    jsr osbyte

    lda #7
    ldx #8
    ldy #0
    jsr osbyte

    lda #7
    ldx #9
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 8 *****
    lda #8
    ldx mem
    ldy #0
    jsr osbyte

    lda #8
    ldx #0
    ldy #0
    jsr osbyte

    lda #8
    ldx #1
    ldy #0
    jsr osbyte

    lda #8
    ldx #2
    ldy #0
    jsr osbyte

    lda #8
    ldx #3
    ldy #0
    jsr osbyte

    lda #8
    ldx #4
    ldy #0
    jsr osbyte

    lda #8
    ldx #5
    ldy #0
    jsr osbyte

    lda #8
    ldx #6
    ldy #0
    jsr osbyte

    lda #8
    ldx #7
    ldy #0
    jsr osbyte

    lda #8
    ldx #8
    ldy #0
    jsr osbyte

    lda #8
    ldx #9
    ldy #0
    jsr osbyte
    sty mem

    ; ***** OSBYTE 9 *****
    lda #9
    ldx mem
    ldy #0
    jsr osbyte

    lda #9
    ldx #0
    ldy #0
    jsr osbyte

    lda #9
    ldx #1
    ldy #0
    jsr osbyte

    lda #9
    ldx #12
    ldy #0
    jsr osbyte
    cpx mem

    ; ***** OSBYTE 10 *****
    lda #10
    ldx mem
    ldy #0
    jsr osbyte

    lda #10
    ldx #0
    ldy #0
    jsr osbyte

    lda #10
    ldx #1
    ldy #0
    jsr osbyte

    lda #10
    ldx #7
    ldy #0
    jsr osbyte
    cpx mem

    ; ***** OSBYTE 11 *****
    lda #11
    ldx mem
    ldy #0
    jsr osbyte

    lda #11
    ldx #0
    ldy #0
    jsr osbyte

    lda #11
    ldx #1
    ldy #0
    jsr osbyte

    lda #11
    ldx #5
    ldy #0
    jsr osbyte
    cpx mem

    ; ***** OSBYTE 12 *****
    lda #12
    ldx mem
    ldy #0
    jsr osbyte

    lda #12
    ldx #0
    ldy #0
    jsr osbyte

    lda #12
    ldx #1
    ldy #0
    jsr osbyte

    lda #12
    ldx #8
    ldy #0
    jsr osbyte
    cpx #2

    ; ***** OSBYTE 13 *****
    lda #13
    ldx #0
    ldy #0
    jsr osbyte

    lda #13
    ldx #1
    ldy #0
    jsr osbyte

    lda #13
    ldx #2
    ldy #0
    jsr osbyte

    lda #13
    ldx #3
    ldy #0
    jsr osbyte

    lda #13
    ldx #4
    ldy #0
    jsr osbyte

    lda #13
    ldx #5
    ldy #0
    jsr osbyte

    lda #13
    ldx #6
    ldy #0
    jsr osbyte

    lda #13
    ldx #7
    ldy #0
    jsr osbyte

    lda #13
    ldx #8
    ldy #0
    jsr osbyte

    lda #13
    ldx #9
    ldy #0
    jsr osbyte

    lda #13
    ldx #10
    ldy #0
    jsr osbyte
    cpx #0

    ; ***** OSBYTE 14 *****
    lda #14
    ldx #0
    ldy #0
    jsr osbyte

    lda #14
    ldx #1
    ldy #0
    jsr osbyte

    lda #14
    ldx #2
    ldy #0
    jsr osbyte

    lda #14
    ldx #3
    ldy #0
    jsr osbyte

    lda #14
    ldx #4
    ldy #0
    jsr osbyte

    lda #14
    ldx #5
    ldy #0
    jsr osbyte

    lda #14
    ldx #6
    ldy #0
    jsr osbyte

    lda #14
    ldx #7
    ldy #0
    jsr osbyte

    lda #14
    ldx #8
    ldy #0
    jsr osbyte

    lda #14
    ldx #9
    ldy #0
    jsr osbyte

    lda #14
    ldx #10
    ldy #0
    jsr osbyte
    cpx #0

    ; ***** OSBYTE 15 *****
    lda #15
    ldx mem
    ldy #0
    jsr osbyte

    lda #15
    ldx #0
    ldy #0
    jsr osbyte

    lda #15
    ldx #1
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 16 *****
    lda #16
    ldx mem
    ldy #0
    jsr osbyte

    lda #16
    ldx #0
    ldy #0
    jsr osbyte

    lda #16
    ldx #1
    ldy #0
    jsr osbyte

    lda #16
    ldx #2
    ldy #0
    jsr osbyte

    lda #16
    ldx #3
    ldy #0
    jsr osbyte

    lda #16
    ldx #4
    ldy #0
    jsr osbyte
    cpx #4

    ; ***** OSBYTE 17 *****
    lda #17
    ldx mem
    ldy #0
    jsr osbyte

    lda #17
    ldx #2
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 18 *****
    lda #18
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 19 *****
    lda #19
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 20 *****
    lda #20
    ldx mem
    ldy #0
    jsr osbyte

    lda #20
    ldx #0
    ldy #0
    jsr osbyte

    lda #20
    ldx #1
    ldy #0
    jsr osbyte

    lda #20
    ldx #2
    ldy #0
    jsr osbyte

    lda #20
    ldx #3
    ldy #0
    jsr osbyte

    lda #20
    ldx #4
    ldy #0
    jsr osbyte

    lda #20
    ldx #5
    ldy #0
    jsr osbyte

    lda #20
    ldx #6
    ldy #0
    jsr osbyte

    lda #20
    ldx #7
    ldy #0
    jsr osbyte
    stx mem

    ; ***** OSBYTE 21 *****
    lda #21
    ldx mem
    ldy #0
    jsr osbyte

    lda #21
    ldx #0
    ldy #0
    jsr osbyte

    lda #21
    ldx #1
    ldy #0
    jsr osbyte

    lda #21
    ldx #2
    ldy #0
    jsr osbyte

    lda #21
    ldx #3
    ldy #0
    jsr osbyte

    lda #21
    ldx #4
    ldy #0
    jsr osbyte

    lda #21
    ldx #5
    ldy #0
    jsr osbyte

    lda #21
    ldx #6
    ldy #0
    jsr osbyte

    lda #21
    ldx #7
    ldy #0
    jsr osbyte

    lda #21
    ldx #8
    ldy #0
    jsr osbyte

    lda #21
    ldx #9
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 22 *****
    lda #22
    jsr osbyte

    ; ***** OSBYTE 23 *****
    lda #23
    jsr osbyte

    ; ***** OSBYTE 24 *****
    lda #24
    ldx mem
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 25 *****
    lda #25
    ldx mem
    ldy #0
    jsr osbyte

    lda #25
    ldx #0
    ldy #0
    jsr osbyte

    lda #25
    ldx #1
    ldy #0
    jsr osbyte

    lda #25
    ldx #2
    ldy #0
    jsr osbyte

    lda #25
    ldx #3
    ldy #0
    jsr osbyte

    lda #25
    ldx #4
    ldy #0
    jsr osbyte

    lda #25
    ldx #5
    ldy #0
    jsr osbyte

    lda #25
    ldx #6
    ldy #0
    jsr osbyte

    lda #25
    ldx #7
    ldy #0
    jsr osbyte

    lda #25
    ldx #8
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 68 *****
    lda #68
    jsr osbyte
    cpx #$80

    ; ***** OSBYTE 69 *****
    lda #69
    jsr osbyte
    cpx #$80

    ; ***** OSBYTE 107 *****
    lda #107
    ldx mem
    jsr osbyte

    lda #107
    ldx #0
    jsr osbyte

    lda #107
    ldx #1
    jsr osbyte

    lda #107
    ldx #2
    jsr osbyte

    ; ***** OSBYTE $75 *****
    lda #117
    ldx #0
    jsr osbyte
    stx mem

    ; ***** OSBYTE $76 *****
    lda #118
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE $77 *****
    lda #119
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE $78 *****
    lda #120
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE $79 *****
    lda #121
    ldx mem
    jsr osbyte
    cpx #0

    lda #121
    ldx #0
    jsr osbyte
    cpx #0

    lda #121
    ldx #1
    jsr osbyte
    cpx #0

    lda #121
    ldx #$80
    jsr osbyte
    cpx #0

    lda #121
    ldx #$ff
    jsr osbyte
    cpx #0

    lda #121
    ldx #32
    jsr osbyte
    cpx #0

    ; ***** OSBYTE $7a *****
    lda #122
    ldx #0
    ldy #0
    jsr osbyte
    cpx #$ff

    ; ***** OSBYTE $7b *****
    lda #123
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE $7c *****
    lda #124
    ldx #0
    ldy #0
    jsr osbyte
    cpx #$ff

    ; ***** OSBYTE $7d *****
    lda #125
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE $7e *****
    lda #126
    ldx #0
    ldy #0
    jsr osbyte
    cpx #$ff

    ; ***** OSBYTE $7f *****
    lda #127
    ldy #0
    jsr osbyte

    lda #127
    ldx mem
    ldy #0
    jsr osbyte

    lda #127
    ldx #0
    ldy #0
    jsr osbyte
    cpx #0

    ; ***** OSBYTE $80 *****
    lda #128
    ldx #0
    jsr osbyte
    txa
    and #3
    sty mem

    lda #128
    ldx #1
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #128
    ldx #2
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #128
    ldx #3
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #128
    ldx #4
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #128
    ldx #5
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #128
    ldx #255
    ldy #0
    jsr osbyte
    cpx #0

    lda #128
    ldx #254
    ldy #0
    jsr osbyte
    cpx #0

    lda #128
    ldx #253
    ldy #0
    jsr osbyte
    cpx #0

    lda #128
    ldx #252
    ldy #0
    jsr osbyte
    cpx #0

    lda #128
    ldx #251
    ldy #0
    jsr osbyte
    cpx #0

    lda #128
    ldx #250
    ldy #0
    jsr osbyte
    cpx #0

    lda #128
    ldx #249
    ldy #0
    jsr osbyte
    cpx #0

    lda #128
    ldx #248
    ldy #0
    jsr osbyte
    cpx #0

    lda #128
    ldx #247
    ldy #0
    jsr osbyte
    cpx #0

    lda #128
    ldx #246
    ldy #0
    jsr osbyte
    cpx #0

    ; ***** OSBYTE 0x81 *****
    lda #129
    jsr osbyte
    cpy #0

    lda #129
    ldy #0
    jsr osbyte
    cpy #0

    lda #129
    ldy #$80
    jsr osbyte
    cpy #0

    lda #129
    ldx #0
    ldy #$ff
    jsr osbyte
    cpx #0

    lda #129
    ldx #$ff
    ldy #$80
    jsr osbyte
    cpy #0

    lda #129
    ldx #0
    ldy #0
    jsr osbyte
    cpy #0

    lda #129
    ldx #1
    ldy #0
    jsr osbyte
    cpy #0

    lda #129
    ldx #255
    ldy #0
    jsr osbyte
    cpy #0

    lda #129
    ldx #1
    ldy #2
    jsr osbyte
    cpy #0

    ; ***** OSBYTE 0x82 *****
    lda #130
    ldx #0
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 0x83 *****
    lda #131
    ldx #0
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 0x84 *****
    lda #132
    ldx #0
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 0x85 *****
    lda #133
    ldx mem
    ldy #0
    jsr osbyte

    lda #133
    ldx #0
    ldy #0
    jsr osbyte

    lda #133
    ldx #1
    ldy #0
    jsr osbyte

    lda #133
    ldx #2
    ldy #0
    jsr osbyte

    lda #133
    ldx #3
    ldy #0
    jsr osbyte

    lda #133
    ldx #4
    ldy #0
    jsr osbyte

    lda #133
    ldx #5
    ldy #0
    jsr osbyte

    lda #133
    ldx #6
    ldy #0
    jsr osbyte

    lda #133
    ldx #7
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 0x86 *****
    lda #134
    ldx #0
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 0x87 *****
    lda #135
    ldx #0
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 0x88 *****
    lda #136
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 0x89 *****
    lda #137
    ldx mem
    ldy #0
    jsr osbyte

    lda #137
    ldx #0
    ldy #0
    jsr osbyte

    lda #137
    ldx #1
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 0x8a *****
    lda #138
    ldx mem
    ldy #0
    jsr osbyte

    lda #138
    ldx #1
    ldy mem
    jsr osbyte

    lda #138
    ldx #0
    ldy #2
    jsr osbyte

    lda #138
    ldx #1
    ldy #3
    jsr osbyte

    lda #138
    ldx #2
    ldy #99
    jsr osbyte

    lda #138
    ldx #3
    ldy #23
    jsr osbyte

    lda #138
    ldx #4
    ldy #206
    jsr osbyte

    lda #138
    ldx #5
    ldy #99
    jsr osbyte

    lda #138
    ldx #6
    ldy #42
    jsr osbyte

    lda #138
    ldx #7
    ldy #1
    jsr osbyte

    lda #138
    ldx #8
    ldy #90
    jsr osbyte

    lda #138
    ldx #9
    ldy #100
    jsr osbyte

    ; ***** OSBYTE 0x8b *****
    lda #139
    ldx mem
    ldy mem
    jsr osbyte

    lda #139
    ldx mem
    ldy #0
    jsr osbyte

    lda #139
    ldx #0
    ldy mem
    jsr osbyte

    lda #139
    ldx #0
    ldy #0
    jsr osbyte

    lda #139
    ldx #1
    ldy #0
    jsr osbyte

    lda #139
    ldx #1
    ldy #1
    jsr osbyte

    lda #139
    ldx #1
    ldy #2
    jsr osbyte

    lda #139
    ldx #2
    ldy #0
    jsr osbyte

    lda #139
    ldx #2
    ldy #1
    jsr osbyte

    lda #139
    ldx #2
    ldy #2
    jsr osbyte

    lda #139
    ldx #3
    ldy mem
    jsr osbyte

    lda #139
    ldx #3
    ldy #0
    jsr osbyte

    lda #139
    ldx #3
    ldy #1
    jsr osbyte

    lda #139
    ldx #3
    ldy #127
    jsr osbyte

    lda #139
    ldx #4
    ldy #0
    jsr osbyte

    lda #139
    ldx #4
    ldy #1
    jsr osbyte

    lda #139
    ldx #4
    ldy #2
    jsr osbyte

    lda #139
    ldx #4
    ldy #3
    jsr osbyte

    lda #139
    ldx #4
    ldy #4
    jsr osbyte

    ; ***** OSBYTE 140 *****
    lda #140
    ldx mem
    ldy #0
    jsr osbyte

    lda #140
    ldx #0
    ldy #0
    jsr osbyte

    lda #140
    ldx #3
    ldy #0
    jsr osbyte

    lda #140
    ldx #12
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 141 *****
    lda #141
    jsr osbyte

    ; ***** OSBYTE 142 *****
    lda #142
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 143 *****
    lda #143
    ldx mem
    ldy #0
    jsr osbyte

    lda #143
    ldx #0
    ldy #0
    jsr osbyte

    lda #143
    ldx #1
    ldy #0
    jsr osbyte

    lda #143
    ldx #2
    ldy #0
    jsr osbyte

    lda #143
    ldx #3
    ldy #0
    jsr osbyte

    lda #143
    ldx #4
    ldy #0
    jsr osbyte

    lda #143
    ldx #5
    ldy #0
    jsr osbyte

    lda #143
    ldx #6
    ldy #0
    jsr osbyte

    lda #143
    ldx #7
    ldy #0
    jsr osbyte

    lda #143
    ldx #8
    ldy #0
    jsr osbyte

    lda #143
    ldx #9
    ldy #0
    jsr osbyte

    lda #143
    ldx #10
    ldy #0
    jsr osbyte

    lda #143
    ldx #11
    ldy #0
    jsr osbyte

    lda #143
    ldx #12
    ldy #0
    jsr osbyte

    lda #143
    ldx #13
    ldy #0
    jsr osbyte

    lda #143
    ldx #14
    ldy #0
    jsr osbyte

    lda #143
    ldx #15
    ldy #0
    jsr osbyte

    lda #143
    ldx #16
    ldy #0
    jsr osbyte

    lda #143
    ldx #17
    ldy #0
    jsr osbyte

    lda #143
    ldx #18
    ldy #0
    jsr osbyte

    lda #143
    ldx #19
    ldy #0
    jsr osbyte

    lda #143
    ldx #20
    ldy #0
    jsr osbyte

    lda #143
    ldx #21
    ldy #0
    jsr osbyte

    lda #143
    ldx #22
    ldy #0
    jsr osbyte

    lda #143
    ldx #23
    ldy #0
    jsr osbyte

    lda #143
    ldx #24
    ldy #0
    jsr osbyte

    lda #143
    ldx #25
    ldy #0
    jsr osbyte

    lda #143
    ldx #26
    ldy #0
    jsr osbyte

    lda #143
    ldx #27
    ldy #0
    jsr osbyte

    lda #143
    ldx #28
    ldy #0
    jsr osbyte

    lda #143
    ldx #29
    ldy #0
    jsr osbyte

    lda #143
    ldx #30
    ldy #0
    jsr osbyte

    lda #143
    ldx #31
    ldy #0
    jsr osbyte

    lda #143
    ldx #32
    ldy #0
    jsr osbyte

    lda #143
    ldx #33
    ldy #0
    jsr osbyte

    lda #143
    ldx #34
    ldy #0
    jsr osbyte

    lda #143
    ldx #35
    ldy #0
    jsr osbyte

    lda #143
    ldx #36
    ldy #0
    jsr osbyte

    lda #143
    ldx #37
    ldy #0
    jsr osbyte

    lda #143
    ldx #38
    ldy #0
    jsr osbyte

    lda #143
    ldx #39
    ldy #0
    jsr osbyte

    lda #143
    ldx #40
    ldy #0
    jsr osbyte

    lda #143
    ldx #41
    ldy #0
    jsr osbyte

    lda #143
    ldx #42
    ldy #0
    jsr osbyte

    lda #143
    ldx #43
    ldy #0
    jsr osbyte

    lda #143
    ldx #44
    ldy #0
    jsr osbyte

    lda #143
    ldx #45
    ldy #0
    jsr osbyte

    lda #143
    ldx #254
    ldy #0
    jsr osbyte

    lda #143
    ldx #255
    ldy #0
    jsr osbyte
    cpx #0
    cpy #0

    ; ***** OSBYTE 144 *****
    lda #144
    ldx mem
    ldy mem
    jsr osbyte

    lda #144
    ldx mem
    ldy #0
    jsr osbyte

    lda #144
    ldx #0
    ldy mem
    jsr osbyte

    lda #144
    ldx #0
    ldy #0
    jsr osbyte

    lda #144
    ldx #0
    ldy #1
    jsr osbyte

    lda #144
    ldx #1
    ldy #0
    jsr osbyte

    lda #144
    ldx #2
    ldy #0
    jsr osbyte

    lda #144
    ldx #254
    ldy #0
    jsr osbyte

    lda #144
    ldx #255
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 145 *****
    lda #145
    ldx #0
    ldy #0
    jsr osbyte
    bcs +
    cpy #0
+

    ; ***** OSBYTE 146 *****
    lda #146
    ldx mem
    ldy #36
    jsr osbyte

    lda #146
    ldx #3
    ldy #4
    jsr osbyte
    cpy #0

    ; ***** OSBYTE 147 *****
    lda #147
    ldx mem
    jsr osbyte

    lda #147
    ldx mem
    ldy #35
    jsr osbyte

    lda #147
    ldx #5
    jsr osbyte

    lda #147
    ldx #5
    ldy #6
    jsr osbyte

    ; ***** OSBYTE 148 *****
    lda #148
    ldx mem
    ldy #34
    jsr osbyte

    lda #148
    ldx #7
    ldy #8
    jsr osbyte
    cpy #1

    ; ***** OSBYTE 149 *****
    lda #149
    ldx mem
    jsr osbyte

    lda #149
    ldx mem
    ldy #33
    jsr osbyte

    lda #149
    ldx #9
    jsr osbyte

    lda #149
    ldx #9
    ldy #10
    jsr osbyte

    ; ***** OSBYTE 150 *****
    lda #150
    ldx mem
    ldy #32
    jsr osbyte

    lda #150
    ldx #11
    ldy #12
    jsr osbyte
    sty mem

    ; ***** OSBYTE 151 *****
    lda #151
    ldx mem
    jsr osbyte

    lda #151
    ldx mem
    ldy #0
    jsr osbyte

    lda #151
    ldx #13
    jsr osbyte

    lda #151
    ldx #13
    ldy #14
    jsr osbyte

    ; ***** OSBYTE 152 *****
    lda #152
    ldx mem
    ldy #0
    jsr osbyte

    lda #152
    ldx #0
    jsr osbyte

    lda #152
    ldx #1
    jsr osbyte

    lda #152
    ldx #2
    jsr osbyte

    lda #152
    ldx #3
    jsr osbyte

    lda #152
    ldx #4
    jsr osbyte

    lda #152
    ldx #5
    jsr osbyte

    lda #152
    ldx #6
    jsr osbyte

    lda #152
    ldx #7
    jsr osbyte

    lda #152
    ldx #8
    jsr osbyte

    lda #152
    ldx #9
    jsr osbyte
    cpy #0

    ; ***** OSBYTE 153 *****
    lda #153
    ldx mem
    ldy #0
    jsr osbyte

    lda #153
    ldx #0
    ldy #0
    jsr osbyte

    lda #153
    ldx #1
    ldy #189
    jsr osbyte

    lda #153
    ldx #1
    ldy mem
    jsr osbyte

    ; ***** OSBYTE 154 *****
    lda #154
    ldx mem
    jsr osbyte

    lda #154
    ldx #255
    jsr osbyte

    lda #154
    ldx #0 + 8 * 7
    jsr osbyte

    lda #154
    ldx #1 + 8 * 6
    jsr osbyte

    lda #154
    ldx #2 + 8 * 5
    jsr osbyte

    lda #154
    ldx #3 + 8 * 4
    jsr osbyte

    lda #154
    ldx #4 + 8 * 3
    jsr osbyte

    lda #154
    ldx #5 + 8 * 2
    jsr osbyte

    lda #154
    ldx #6 + 8 * 1
    jsr osbyte

    lda #154
    ldx #7 + 8 * 0
    jsr osbyte

    ; ***** OSBYTE 155 *****
    lda #155
    ldx mem
    jsr osbyte

    lda #155
    ldx #3
    jsr osbyte

    ; ***** OSBYTE 156 *****
    lda #156
    ldx #0
    ldy #0
    jsr osbyte

    lda #156
    ldx #1
    ldy #0
    jsr osbyte

    lda #156
    ldx #2
    ldy #0
    jsr osbyte

    lda #156
    ldx #3
    ldy #0
    jsr osbyte

    lda #156
    ldx #255
    ldy #0
    jsr osbyte
    cpx #0

    ; ***** OSBYTE 157 *****
    lda #157
    ldx mem
    ldy #0
    jsr osbyte

    lda #157
    ldx #0
    ldy #0
    jsr osbyte

    lda #157
    ldx #17
    ldy #46
    jsr osbyte

    ; ***** OSBYTE 158 *****
    lda #158
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 159 *****
    lda #159
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 160 *****
    lda #160
    ldx #0
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #1
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #2
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #3
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #4
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #5
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #6
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #7
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #8
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #9
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #10
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #11
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #12
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #13
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #14
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #15
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #16
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #17
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #18
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #19
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #20
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #21
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #22
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #23
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #24
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #25
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #26
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #27
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #28
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #29
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #30
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #31
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #32
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #33
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #34
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #35
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #36
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #37
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #38
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #39
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #40
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #41
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #43
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #44
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #45
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #46
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #47
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #48
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #49
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #50
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #51
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #52
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #53
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #54
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #55
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #56
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #57
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #58
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #59
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #60
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #61
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #62
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #63
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #64
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #65
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #66
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #67
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #68
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #69
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #70
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #71
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #72
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #73
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #74
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #75
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #76
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #77
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #78
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #79
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #80
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #81
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #82
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #83
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #84
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #85
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #86
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #87
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #88
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #89
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #90
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #91
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #92
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #93
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #94
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #95
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #96
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #97
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #98
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #99
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #100
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #101
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #102
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #103
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #104
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #105
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #106
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #107
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #108
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #109
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #110
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #111
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #112
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #113
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #114
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #115
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #116
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #117
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #118
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #119
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #120
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #121
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #122
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #123
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #124
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #125
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #126
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #160
    ldx #127
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 161 *****
    lda #161
    ldx mem
    jsr osbyte
    cpy #0

    lda #161
    ldx #0
    jsr osbyte
    cpy #0

    lda #161
    ldx #1
    jsr osbyte
    cpy #0

    lda #161
    ldx #2
    jsr osbyte
    cpy #0

    lda #161
    ldx #3
    jsr osbyte
    cpy #0

    lda #161
    ldx #4
    jsr osbyte
    cpy #0

    lda #161
    ldx #5
    jsr osbyte
    cpy #0

    lda #161
    ldx #6
    jsr osbyte
    cpy #0

    lda #161
    ldx #7
    jsr osbyte
    cpy #0

    lda #161
    ldx #8
    jsr osbyte
    cpy #0

    lda #161
    ldx #9
    jsr osbyte
    cpy #0

    lda #161
    ldx #10
    jsr osbyte
    cpy #0

    lda #161
    ldx #11
    jsr osbyte
    cpy #0

    lda #161
    ldx #12
    jsr osbyte
    cpy #0

    lda #161
    ldx #13
    jsr osbyte
    cpy #0

    lda #161
    ldx #14
    jsr osbyte
    cpy #0

    lda #161
    ldx #15
    jsr osbyte
    cpy #0

    lda #161
    ldx #16
    jsr osbyte
    cpy #0

    lda #161
    ldx #17
    jsr osbyte
    cpy #0

    lda #161
    ldx #18
    jsr osbyte
    cpy #0

    lda #161
    ldx #19
    jsr osbyte
    cpy #0

    lda #161
    ldx #20
    jsr osbyte
    cpy #0

    lda #161
    ldx #21
    jsr osbyte
    cpy #0

    lda #161
    ldx #22
    jsr osbyte
    cpy #0

    lda #161
    ldx #23
    jsr osbyte
    cpy #0

    lda #161
    ldx #24
    jsr osbyte
    cpy #0

    lda #161
    ldx #25
    jsr osbyte
    cpy #0

    lda #161
    ldx #26
    jsr osbyte
    cpy #0

    lda #161
    ldx #27
    jsr osbyte
    cpy #0

    lda #161
    ldx #28
    jsr osbyte
    cpy #0

    lda #161
    ldx #29
    jsr osbyte
    cpy #0

    lda #161
    ldx #30
    jsr osbyte
    cpy #0

    lda #161
    ldx #31
    jsr osbyte
    cpy #0

    lda #161
    ldx #32
    jsr osbyte
    cpy #0

    lda #161
    ldx #33
    jsr osbyte
    cpy #0

    lda #161
    ldx #34
    jsr osbyte
    cpy #0

    lda #161
    ldx #35
    jsr osbyte
    cpy #0

    lda #161
    ldx #36
    jsr osbyte
    cpy #0

    lda #161
    ldx #37
    jsr osbyte
    cpy #0

    lda #161
    ldx #38
    jsr osbyte
    cpy #0

    lda #161
    ldx #39
    jsr osbyte
    cpy #0

    lda #161
    ldx #40
    jsr osbyte
    cpy #0

    lda #161
    ldx #41
    jsr osbyte
    cpy #0

    lda #161
    ldx #42
    jsr osbyte
    cpy #0

    lda #161
    ldx #43
    jsr osbyte
    cpy #0

    lda #161
    ldx #44
    jsr osbyte
    cpy #0

    lda #161
    ldx #45
    jsr osbyte
    cpy #0

    lda #161
    ldx #46
    jsr osbyte
    cpy #0

    lda #161
    ldx #47
    jsr osbyte
    cpy #0

    lda #161
    ldx #48
    jsr osbyte
    cpy #0

    lda #161
    ldx #49
    jsr osbyte
    cpy #0

    lda #161
    ldx #255
    jsr osbyte
    cpy #0

    ; ***** OSBYTE 162 *****
    lda #162
    ldx mem
    ldy mem
    jsr osbyte

    lda #162
    ldx mem
    ldy #0
    jsr osbyte

    lda #162
    ldx #0
    ldy mem
    jsr osbyte

    lda #162
    ldx #0
    ldy #0
    jsr osbyte

    lda #162
    ldx #1
    ldy #0
    jsr osbyte

    lda #162
    ldx #2
    ldy #0
    jsr osbyte

    lda #162
    ldx #3
    ldy #0
    jsr osbyte

    lda #162
    ldx #4
    ldy #0
    jsr osbyte

    lda #162
    ldx #5
    ldy #0
    jsr osbyte

    lda #162
    ldx #6
    ldy #0
    jsr osbyte

    lda #162
    ldx #7
    ldy #0
    jsr osbyte

    lda #162
    ldx #8
    ldy #0
    jsr osbyte

    lda #162
    ldx #9
    ldy #0
    jsr osbyte

    lda #162
    ldx #10
    ldy #0
    jsr osbyte

    lda #162
    ldx #11
    ldy #0
    jsr osbyte

    lda #162
    ldx #12
    ldy #0
    jsr osbyte

    lda #162
    ldx #13
    ldy #0
    jsr osbyte

    lda #162
    ldx #14
    ldy #0
    jsr osbyte

    lda #162
    ldx #15
    ldy #0
    jsr osbyte

    lda #162
    ldx #16
    ldy #0
    jsr osbyte

    lda #162
    ldx #17
    ldy #0
    jsr osbyte

    lda #162
    ldx #18
    ldy #0
    jsr osbyte

    lda #162
    ldx #19
    ldy #0
    jsr osbyte

    lda #162
    ldx #20
    ldy #0
    jsr osbyte

    lda #162
    ldx #21
    ldy #0
    jsr osbyte

    lda #162
    ldx #22
    ldy #0
    jsr osbyte

    lda #162
    ldx #23
    ldy #0
    jsr osbyte

    lda #162
    ldx #24
    ldy #0
    jsr osbyte

    lda #162
    ldx #25
    ldy #0
    jsr osbyte

    lda #162
    ldx #26
    ldy #0
    jsr osbyte

    lda #162
    ldx #27
    ldy #0
    jsr osbyte

    lda #162
    ldx #28
    ldy #0
    jsr osbyte

    lda #162
    ldx #29
    ldy #0
    jsr osbyte

    lda #162
    ldx #30
    ldy #0
    jsr osbyte

    lda #162
    ldx #31
    ldy #0
    jsr osbyte

    lda #162
    ldx #32
    ldy #0
    jsr osbyte

    lda #162
    ldx #33
    ldy #0
    jsr osbyte

    lda #162
    ldx #34
    ldy #0
    jsr osbyte

    lda #162
    ldx #35
    ldy #0
    jsr osbyte

    lda #162
    ldx #36
    ldy #0
    jsr osbyte

    lda #162
    ldx #37
    ldy #0
    jsr osbyte

    lda #162
    ldx #38
    ldy #0
    jsr osbyte

    lda #162
    ldx #39
    ldy #0
    jsr osbyte

    lda #162
    ldx #40
    ldy #0
    jsr osbyte

    lda #162
    ldx #41
    ldy #0
    jsr osbyte

    lda #162
    ldx #42
    ldy #0
    jsr osbyte

    lda #162
    ldx #43
    ldy #0
    jsr osbyte

    lda #162
    ldx #44
    ldy #0
    jsr osbyte

    lda #162
    ldx #45
    ldy #0
    jsr osbyte

    lda #162
    ldx #46
    ldy #0
    jsr osbyte

    lda #162
    ldx #47
    ldy #0
    jsr osbyte

    lda #162
    ldx #48
    ldy #0
    jsr osbyte

    lda #162
    ldx #49
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 163 *****
    lda #163
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 164 *****
    lda #164
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 165 *****
    lda #165
    ldx #0
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 166 *****
    lda #166
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #166
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 167 *****
    lda #167
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #167
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 168 *****
    lda #168
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #168
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 169 *****
    lda #169
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #169
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 170 *****
    lda #170
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #170
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 171 *****
    lda #171
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #171
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 172 *****
    lda #172
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #172
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 173 *****
    lda #173
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #173
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 174 *****
    lda #174
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #174
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 175 *****
    lda #175
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #175
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 176 *****
    lda #176
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #176
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 177 *****
    lda #177
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #177
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 178 *****
    lda #178
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #178
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 179 *****
    lda #179
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #179
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 180 *****
    lda #180
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #180
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 181 *****
    lda #181
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #181
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 182 *****
    lda #182
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #182
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 183 *****
    lda #183
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #183
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 184 *****
    lda #184
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #184
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 185 *****
    lda #185
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #185
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 186 *****
    lda #186
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #186
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 187 *****
    lda #187
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #187
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 188 *****
    lda #188
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #188
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 189 *****
    lda #189
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #189
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 190 *****
    lda #190
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #190
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 191 *****
    lda #191
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #191
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 192 *****
    lda #192
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #192
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 193 *****
    lda #193
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #193
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 194 *****
    lda #194
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #194
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 195 *****
    lda #195
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #195
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 196 *****
    lda #196
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #196
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 197 *****
    lda #197
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #197
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 198 *****
    lda #198
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #198
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 199 *****
    lda #199
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #199
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 200 *****
    lda #200
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #200
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 201 *****
    lda #201
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #201
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 202 *****
    lda #202
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #202
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 203 *****
    lda #203
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #203
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 204 *****
    lda #204
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #204
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 205 *****
    lda #205
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #205
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 206 *****
    lda #206
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #206
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 207 *****
    lda #207
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #207
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 208 *****
    lda #208
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #208
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 209 *****
    lda #209
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #209
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 210 *****
    lda #210
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #210
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 211 *****
    lda #211
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #211
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 212 *****
    lda #212
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #212
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 213 *****
    lda #213
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #213
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 214 *****
    lda #214
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #214
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 215 *****
    lda #215
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #215
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 216 *****
    lda #216
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #216
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 217 *****
    lda #217
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #217
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 218 *****
    lda #218
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #218
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 219 *****
    lda #219
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #219
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 220 *****
    lda #220
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #220
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 221 *****
    lda #221
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #221
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 222 *****
    lda #222
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #222
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 223 *****
    lda #223
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #223
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 224 *****
    lda #224
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #224
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 225 *****
    lda #225
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #225
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 226 *****
    lda #226
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #226
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 227 *****
    lda #227
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #227
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 228 *****
    lda #228
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #228
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 229 *****
    lda #229
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #229
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 230 *****
    lda #230
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #230
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 231 *****
    lda #231
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #231
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 232 *****
    lda #232
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #232
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 233 *****
    lda #233
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #233
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 234 *****
    lda #234
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #234
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 235 *****
    lda #235
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #235
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 236 *****
    lda #236
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #236
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 237 *****
    lda #237
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #237
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 238 *****
    lda #238
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #238
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 239 *****
    lda #239
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #239
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 240 *****
    lda #240
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #240
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 241 *****
    lda #241
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #241
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 242 *****
    lda #242
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #242
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 243 *****
    lda #243
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #243
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 244 *****
    lda #244
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #244
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 245 *****
    lda #245
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #245
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 246 *****
    lda #246
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #246
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 247 *****
    lda #247
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #247
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 248 *****
    lda #248
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #248
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 249 *****
    lda #249
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #249
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 250 *****
    lda #250
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #250
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 251 *****
    lda #251
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #251
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 252 *****
    lda #252
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #252
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 253 *****
    lda #253
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #253
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 254 *****
    lda #254
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #254
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    ; ***** OSBYTE 255 *****
    lda #255
    ldx #42
    ldy #0
    jsr osbyte
    stx mem
    sty mem

    lda #255
    ldx #0
    ldy #255
    jsr osbyte
    stx mem
    sty mem

    lda #255
    ldx #42
    ldy #123
    jsr osbyte

    ; ***** OSWORD 0 *****
    lda #0
    ldx #<osword0block
    ldy #>osword0block
    jsr osword

    ; ***** OSWORD 1 *****
    lda #1
    ldx #<osword1block
    ldy #>osword1block
    jsr osword

    ; ***** OSWORD 2 *****
    lda #2
    ldx #<osword2block
    ldy #>osword2block
    jsr osword

    ; ***** OSWORD 3 *****
    lda #3
    ldx #<osword3block
    ldy #>osword3block
    jsr osword

    ; ***** OSWORD 4 *****
    lda #4
    ldx #<osword4block
    ldy #>osword4block
    jsr osword

    ; ***** OSWORD 5 *****
    lda #5
    ldx #<osword5block
    ldy #>osword5block
    jsr osword

    ; ***** OSWORD 6 *****
    lda #6
    ldx #<osword6block
    ldy #>osword6block
    jsr osword

    ; ***** OSWORD 7 *****
    lda #7
    ldx #<osword7block
    ldy #>osword7block
    jsr osword

    ; ***** OSWORD 8 *****
    lda #8
    ldx #<osword8block
    ldy #>osword8block
    jsr osword

    ; ***** OSWORD 9 *****
    lda #9
    ldx #<osword9block
    ldy #>osword9block
    jsr osword

    ; ***** OSWORD 10 *****
    lda #10
    ldx #<osword10block
    ldy #>osword10block
    jsr osword

    ; ***** OSWORD 11 *****
    lda #11
    ldx #<osword11block
    ldy #>osword11block
    jsr osword

    ; ***** OSWORD 12 *****
    lda #12
    ldx #<osword12block
    ldy #>osword12block
    jsr osword

    ; ***** OSWORD 13 *****
    lda #13
    ldx #<osword13block
    ldy #>osword13block
    jsr osword

    ; ***** OSWORD 14 *****
    lda #14
    ldx #<osword14block
    ldy #>osword14block
    jsr osword

    ; ***** OSWORD 15 *****
    lda #15
    ldx #<osword15block
    ldy #>osword15block
    jsr osword

    ; ***** OSRDSC *****
    ldy #3
    jsr osrdsc
    cmp #3

    lda #4
    ldy #90
    jsr oswrsc

    ldy #2
    jsr oseven

    jsr osrdch
    cmp #32

    jsr nvrdch
    cmp #42

    lda #0
    ldy #0
    jsr osfind

    lda #0
    ldy #1
    jsr osfind

    lda #64
    ldx #<filename
    ldy #>filename
    jsr osfind
    sta mem

    lda #128
    ldx #<filename
    ldy #>filename
    jsr osfind
    sta mem

    lda #192
    ldx #<filename
    ldy #>filename
    jsr osfind
    sta mem

    lda #42
    ldx #<filename
    ldy #>filename
    jsr osfind
    sta mem

    jsr osrdch
    sta mem

    ldy mem
    jsr osgbpb

    lda mem
    ldx #<osgbpb_block
    ldy #>osgbpb_block
    jsr osgbpb

    lda #0
    ldx #<osgbpb_block
    ldy #>osgbpb_block
    jsr osgbpb

    lda #1
    ldx #<osgbpb_block
    ldy #>osgbpb_block
    jsr osgbpb

    lda #2
    ldx #<osgbpb_block
    ldy #>osgbpb_block
    jsr osgbpb

    lda #3
    ldx #<osgbpb_block
    ldy #>osgbpb_block
    jsr osgbpb

    lda #4
    ldx #<osgbpb_block
    ldy #>osgbpb_block
    jsr osgbpb

    lda #5
    ldx #<osgbpb_block
    ldy #>osgbpb_block
    jsr osgbpb

    lda #6
    ldx #<osgbpb_block
    ldy #>osgbpb_block
    jsr osgbpb

    lda #7
    ldx #<osgbpb_block
    ldy #>osgbpb_block
    jsr osgbpb

    lda #8
    ldx #<osgbpb8_block
    ldy #>osgbpb8_block
    jsr osgbpb

    lda #42
    ldy mem
    jsr osbput

    ldy mem
    jsr osbget
    cmp #0

    jsr osnewl
    jsr oswrcr

    lda #65
    jsr oswrch

    lda #0
    ldx #<osfileblock
    ldy #>osfileblock
    jsr osfile

    lda #1
    ldx #<osfileblock
    ldy #>osfileblock
    jsr osfile

    lda #2
    ldx #<osfileblock
    ldy #>osfileblock
    jsr osfile

    lda #3
    ldx #<osfileblock
    ldy #>osfileblock
    jsr osfile

    lda #4
    ldx #<osfileblock
    ldy #>osfileblock
    jsr osfile

    lda #5
    ldx #<osfileblock
    ldy #>osfileblock
    jsr osfile
    cmp #1

    lda #6
    ldx #<osfileblock
    ldy #>osfileblock
    jsr osfile

    lda #7
    ldx #<osfileblock
    ldy #>osfileblock
    jsr osfile

    lda #255
    ldx #<osfileblock
    ldy #>osfileblock
    jsr osfile

    lda #8
    ldx #<osfileblock
    ldy #>osfileblock
    jsr osfile

    lda mem
    ldy mem
    jsr osargs

    lda #0
    ldy #0
    jsr osargs
    sta mem

    lda #0
    ldx mem
    ldy mem
    jsr osargs

    lda #1
    ldx mem
    ldy #0
    jsr osargs

    lda #1
    ldx mem
    ldy mem
    jsr osargs

    lda #2
    ldx mem
    ldy mem
    jsr osargs

    lda #255
    ldy #0
    jsr osargs

    lda #255
    ldy mem
    jsr osargs

    ; ***** EXTRA OSWORDs *****
    lda #16
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #17
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #18
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #19
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #20
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #21
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #22
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #23
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #24
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #25
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #26
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #27
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #28
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #29
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #30
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #31
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #32
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #33
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #34
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #35
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #36
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #37
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #38
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #39
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #40
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #41
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #42
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #43
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #44
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #45
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #46
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #47
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #48
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #49
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #50
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #51
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #52
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #53
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #54
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #55
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #56
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #57
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #58
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #59
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #60
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #61
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #62
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #63
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #64
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #65
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #66
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #67
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #68
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #69
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #70
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #71
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #72
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #73
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #74
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #75
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #76
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #77
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #78
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #79
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #80
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #81
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #82
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #83
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #84
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #85
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #86
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #87
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #88
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #89
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #90
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #91
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #92
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #93
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #94
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #95
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #96
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #97
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #98
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #99
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #100
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #101
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #102
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #103
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #104
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #105
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #106
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #107
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #108
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #109
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #110
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #111
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #112
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #113
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #114
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #115
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #116
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #117
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #118
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #119
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #120
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #121
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #122
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #123
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #124
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #125
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #126
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #127
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #128
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #129
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #130
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #131
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #132
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #133
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #134
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #135
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #136
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #137
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #138
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #139
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #140
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #141
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #142
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #143
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #144
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #145
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #146
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #147
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #148
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #149
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #150
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #151
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #152
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #153
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #154
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #155
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #156
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #157
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #158
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #159
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #160
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #161
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #162
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #163
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #164
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #165
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #166
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #167
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #168
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #169
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #170
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #171
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #172
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #173
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #174
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #175
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #176
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #177
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #178
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #179
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #180
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #181
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #182
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #183
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #184
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #185
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #186
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #187
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #188
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #189
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #190
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #191
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #192
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #193
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #194
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #195
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #196
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #197
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #198
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #199
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #200
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #201
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #202
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #203
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #204
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #205
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #206
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #207
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #208
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #209
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #210
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #211
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #212
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #213
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #214
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #215
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #216
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #217
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #218
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #219
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #220
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #221
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #222
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #223
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #224
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #225
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #226
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #227
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #228
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #229
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #230
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #231
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #232
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #233
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #234
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #235
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #236
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #237
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #238
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #239
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #240
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #241
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #242
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #243
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #244
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #245
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #246
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #247
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #248
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #249
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #250
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #251
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #252
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #253
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #254
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    lda #255
    ldx #<oswordffblock
    ldy #>oswordffblock
    jsr osword

    ; ***** EXTRA OSBYTES *****
    lda #$1A
    jsr osbyte

    lda #$1E
    jsr osbyte

    lda #$20
    jsr osbyte

    lda #$21
    jsr osbyte

    lda #$22
    jsr osbyte

    lda #$23
    jsr osbyte

    lda #$24
    jsr osbyte

    lda #$28
    jsr osbyte

    lda #$29
    jsr osbyte

    lda #$2A
    jsr osbyte

    lda #$2B
    jsr osbyte

    lda #$2C
    jsr osbyte

    lda #$2D
    jsr osbyte

    lda #$32
    jsr osbyte

    lda #$33
    jsr osbyte

    lda #$34
    jsr osbyte

    lda #$35
    jsr osbyte

    lda #$3F
    jsr osbyte

    lda #$40
    jsr osbyte

    lda #$41
    jsr osbyte

    lda #$42
    jsr osbyte

    lda #$43
    jsr osbyte

    lda #$46
    jsr osbyte

    lda #$47
    jsr osbyte

    lda #$49
    jsr osbyte

    lda #$5A
    jsr osbyte

    lda #$60
    jsr osbyte

    lda #$61
    jsr osbyte

    lda #$62
    jsr osbyte

    lda #$64
    jsr osbyte

    lda #$6A
    jsr osbyte

    lda #$6E
    jsr osbyte

    lda #$6F
    jsr osbyte

    rts

* = $4000
osword0block
    !word string_addr
    !byte 127
    !byte 32
    !byte 126
string_addr
    !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
    !byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

osword1block
    !byte 0,0,0,0,0

osword2block
    !byte 0,0,0,0,0

osword3block
    !byte 0,0,0,0,0

osword4block
    !byte 0,0,0,0,0

osword5block
    !byte 0,0,0,0,0

osword6block
    !byte 0,0,0,0,0

osword7block
    !byte 0,0,0,0,0,0,0,0

osword8block
    !byte 1,0,0,0,0,0,0,0,0,0,0,0,0,0

osword9block
    !byte 0,0,0,0,0

osword10block
    !byte 0,0,0,0,0,0,0,0,0

osword11block
    !byte 0,0,0,0,0

osword12block
    !byte 0,0,0,0,0

osword13block
    !byte 0,0,0,0,0,0,0,0

osword14block
    !byte 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0 ,0,0,0,0

osword15block
    !byte 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0 ,0,0,0,0

osword7ablock
    !byte 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0 ,0,0,0,0

osword7dblock
    !byte 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0 ,0,0,0,0

osword7eblock
    !byte 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0 ,0,0,0,0

osword7fblock
    !byte 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0 ,0,0,0,0

osword80block
    !byte 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0 ,0,0,0,0

oswordffblock
    !byte 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0 ,0,0,0,0

osfileblock
    !byte 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0

osgbpb_block
    !byte 0,0,0,0, 0,0,0,0, 0,0,0,0, 0

osgbpb8_block
    !byte 0,0,0,0, 0,0,0,0, 0,0,0,0, 0

filename
    !text "!BOOT"
