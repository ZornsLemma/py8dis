// Memory locations
lffee   = $ffee

    * = $2000

pydis_start
    lda #$41 // 'A'                                                   // 2000: a9 41       .A
    jsr lffee                                                         // 2002: 20 ee ff     ..
    jsr sub_c2022                                                     // 2005: 20 22 20     "
    jsr low_a                                                         // 2008: 20 00 09     ..
    lda #$42 // 'B'                                                   // 200b: a9 42       .B
    jmp lffee                                                         // 200d: 4c ee ff    L..


// Move 1: $2010 to $0900 for length 18
* = $0900
// $2010 referenced 3 times by $2008, $2022, $2025
low_a
    ldx #$46 // 'F'                                                   // 2010: a2 46       .F  :0900[1]
    jmp l0909                                                         // 2012: 4c 09 09    L.. :0902[1]

// $2015 referenced 1 time by $090a[1]
l0905
    txa                                                               // 2015: 8a          .   :0905[1]
    jsr lffee                                                         // 2016: 20 ee ff     .. :0906[1]
// $2019 referenced 1 time by $0902[1]
l0909
    dex                                                               // 2019: ca          .   :0909[1]
    bne l0905                                                         // 201a: d0 f9       ..  :090a[1]
l090c
l090d = l090c+1
    jsr sub_c2039                                                     // 201c: 20 39 20     9  :090c[1]
    jmp l090d                                                         // 201f: 4c 0d 09    L.. :090f[1]

* = $2022
sub_c2022
// $2022 referenced 1 time by $2005
    lda low_a,y                                                       // 2022: b9 00 09    ...
    sta low_a,y                                                       // 2025: 99 00 09    ...
    rts                                                               // 2028: 60          `


// Move 2: $2029 to $0901 for length 16
* = $0901
// $2029 referenced 2 times by $2039, $203c
low_b
    ldx #6                                                            // 2029: a2 06       ..  :0901[2]
// $202b referenced 2 times by $0907[2], $090f[2]
l0903
    lda l090a,x                                                       // 202b: bd 0a 09    ... :0903[2]
    dex                                                               // 202e: ca          .   :0906[2]
    bne l0903                                                         // 202f: d0 fa       ..  :0907[2]
    rts                                                               // 2031: 60          `   :0909[2]

// $2032 referenced 1 time by $0903[2]
l090a
    .asc "foo"                                                        // 2032: 66 6f 6f    foo :090a[2]

// $2035 referenced 1 time by $090f[1]
low_b_baz
    ldx #2                                                            // 2035: a2 02       ..  :090d[2]
    bne l0903                                                         // 2037: d0 f2       ..  :090f[2]
* = $2039
sub_c2039
// $2039 referenced 1 time by $090c[1]
    lda low_b,x                                                       // 2039: bd 01 09    ...
    sta low_b,x                                                       // 203c: 9d 01 09    ...
    rts                                                               // 203f: 60          `

pydis_end

// Label references by decreasing frequency:
//     lffee:       3
//     low_a:       3
//     l0903:       2
//     low_b:       2
//     l0905:       1
//     l0909:       1
//     l090a:       1
//     l090d:       1
//     low_b_baz:   1
//     sub_c2022:   1
//     sub_c2039:   1

// Automatically generated labels:
//     l0903
//     l0905
//     l0909
//     l090a
//     l090c
//     l090d
//     lffee
//     sub_c2022
//     sub_c2039
