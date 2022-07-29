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

    ; ***** OSBYTE 1 *****
    lda #1
    ldx mem
    ldy #0
    jsr osbyte

    lda #1
    ldx #34
    ldy #0
    jsr osbyte

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

    ; ***** OSBYTE 5 *****
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

    ; ***** OSBYTE 6 *****
    lda #6
    ldx mem
    ldy #0
    jsr osbyte

    lda #6
    ldx #17
    ldy #0
    jsr osbyte

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


    ; ***** OSBYTE 117 *****
    lda #117
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 118 *****
    lda #118
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 119 *****
    lda #119
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 120 *****
    lda #120
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 121 *****
    lda #121
    ldx mem
    ldy mem
    jsr osbyte

    lda #121
    ldx mem
    ldy #0
    jsr osbyte

    lda #121
    ldx #0
    ldy mem
    jsr osbyte

    lda #121
    ldx #0
    ldy #0
    jsr osbyte

    lda #121
    ldx #$80
    ldy #0
    jsr osbyte

    lda #121
    ldx #$ff
    ldy #0
    jsr osbyte

    lda #121
    ldx #32
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 122 *****
    lda #122
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 123 *****
    lda #123
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 124 *****
    lda #124
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 125 *****
    lda #125
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 126 *****
    lda #126
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 127 *****
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

    ; ***** OSBYTE 128 *****
    lda #128
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 129 *****
    lda #129
    ldx #0
    ldy #0
    jsr osbyte

    lda #129
    ldx #1
    ldy #0
    jsr osbyte

    lda #129
    ldx #255
    ldy #0
    jsr osbyte

    lda #129
    ldx #0
    ldy #1
    jsr osbyte

    ; ***** OSBYTE 130 *****
    lda #130
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 131 *****
    lda #131
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 132 *****
    lda #132
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 133 *****
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

    ; ***** OSBYTE 134 *****
    lda #134
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 135 *****
    lda #135
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 136 *****
    lda #136
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 137 *****
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

    ; ***** OSBYTE 138 *****
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

    ; ***** OSBYTE 139 *****
    lda #139
    ldx mem
    ldy #0
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

    ; ***** OSBYTE 145 *****
    lda #145
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 146 *****
    lda #146
    ldx mem
    ldy #36
    jsr osbyte

    lda #146
    ldx #3
    ldy #4
    jsr osbyte

    ; ***** OSBYTE 147 *****
    lda #147
    ldx mem
    ldy #35
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

    ; ***** OSBYTE 149 *****
    lda #149
    ldx mem
    ldy #33
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

    ; ***** OSBYTE 151 *****
    lda #151
    ldx mem
    ldy #0
    jsr osbyte

    lda #151
    ldx #13
    ldy #14
    jsr osbyte

    ; ***** OSBYTE 152 *****
    lda #152
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 153 *****
    lda #153
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 154 *****
    lda #154
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 155 *****
    lda #155
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 156 *****
    lda #156
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 157 *****
    lda #157
    ldx #0
    ldy #0
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

    ; ***** OSBYTE 161 *****
    lda #161
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 162 *****
    lda #162
    ldx #0
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

    ; ***** OSBYTE 166 *****
    lda #166
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 167 *****
    lda #167
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 168 *****
    lda #168
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 169 *****
    lda #169
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 170 *****
    lda #170
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 171 *****
    lda #171
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 172 *****
    lda #172
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 173 *****
    lda #173
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 174 *****
    lda #174
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 175 *****
    lda #175
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 176 *****
    lda #176
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 177 *****
    lda #177
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 178 *****
    lda #178
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 179 *****
    lda #179
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 180 *****
    lda #180
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 181 *****
    lda #181
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 182 *****
    lda #182
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 183 *****
    lda #183
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 184 *****
    lda #184
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 185 *****
    lda #185
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 186 *****
    lda #186
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 187 *****
    lda #187
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 188 *****
    lda #188
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 189 *****
    lda #189
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 190 *****
    lda #190
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 191 *****
    lda #191
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 192 *****
    lda #192
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 193 *****
    lda #193
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 194 *****
    lda #194
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 195 *****
    lda #195
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 196 *****
    lda #196
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 197 *****
    lda #197
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 198 *****
    lda #198
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 199 *****
    lda #199
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 200 *****
    lda #200
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 201 *****
    lda #201
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 202 *****
    lda #202
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 203 *****
    lda #203
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 204 *****
    lda #204
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 205 *****
    lda #205
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 206 *****
    lda #206
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 207 *****
    lda #207
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 208 *****
    lda #208
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 209 *****
    lda #209
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 210 *****
    lda #210
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 211 *****
    lda #211
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 212 *****
    lda #212
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 213 *****
    lda #213
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 214 *****
    lda #214
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 215 *****
    lda #215
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 216 *****
    lda #216
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 217 *****
    lda #217
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 218 *****
    lda #218
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 219 *****
    lda #219
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 220 *****
    lda #220
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 221 *****
    lda #221
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 222 *****
    lda #222
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 223 *****
    lda #223
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 224 *****
    lda #224
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 225 *****
    lda #225
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 226 *****
    lda #226
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 227 *****
    lda #227
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 228 *****
    lda #228
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 229 *****
    lda #229
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 230 *****
    lda #230
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 231 *****
    lda #231
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 232 *****
    lda #232
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 233 *****
    lda #233
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 234 *****
    lda #234
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 235 *****
    lda #235
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 236 *****
    lda #236
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 237 *****
    lda #237
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 238 *****
    lda #238
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 239 *****
    lda #239
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 240 *****
    lda #240
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 241 *****
    lda #241
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 242 *****
    lda #242
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 243 *****
    lda #243
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 244 *****
    lda #244
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 245 *****
    lda #245
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 246 *****
    lda #246
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 247 *****
    lda #247
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 248 *****
    lda #248
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 249 *****
    lda #249
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 250 *****
    lda #250
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 251 *****
    lda #251
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 252 *****
    lda #252
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 253 *****
    lda #253
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 254 *****
    lda #254
    ldx #0
    ldy #0
    jsr osbyte

    ; ***** OSBYTE 255 *****
    lda #255
    ldx #0
    ldy #0
    jsr osbyte

    rts
