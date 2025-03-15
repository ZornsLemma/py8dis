// Memory locations
lffe3   = $ffe3

    * = $2000

pydis_start
    ldx #0                                                            // 2000: a2 00       ..
// $2002 referenced 1 time by $200b
loop_c2002
    lda l200e,x                                                       // 2002: bd 0e 20    ..
    jsr lffe3                                                         // 2005: 20 e3 ff     ..
    inx                                                               // 2008: e8          .
    cpx #$0e                                                          // 2009: e0 0e       ..
    bne loop_c2002                                                    // 200b: d0 f5       ..
    rts                                                               // 200d: 60          `

// $200e referenced 1 time by $2002
l200e
    .asc "Hello, world!"                                              // 200e: 48 65 6c... Hel
    .byt $0d                                                          // 201b: 0d          .
pydis_end


// Label references by decreasing frequency:
//     l200e:        1
//     lffe3:        1
//     loop_c2002:   1

// Automatically generated labels:
//     l200e
//     lffe3
//     loop_c2002

// Stats:
//     Total size (Code + Data) = 28 bytes
//     Code                     = 14 bytes (50%)
//     Data                     = 14 bytes (50%)
//
//     Number of instructions   = 7
//     Number of data bytes     = 1 bytes
//     Number of data words     = 0 bytes
//     Number of string bytes   = 13 bytes
//     Number of strings        = 1

