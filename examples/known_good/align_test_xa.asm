// Constants
newline = $0d

// Memory locations
osasci  = $ffe3

    * = $2000

pydis_start
    ldx #0                                                            // 2000: a2 00       ..

// *** BEFORE LABEL ***
print_loop
// *** AFTER LABEL ***
    // *** BEFORE LINE ***
    lda hello_world_string,x                                          // 2002: bd 0e 20    ..             // *** INLINE ***
    // *** AFTER LINE ***
    jsr osasci                                                        // 2005: 20 e3 ff     ..            // Write character
    inx                                                               // 2008: e8          .
    cpx #$0e                                                          // 2009: e0 0e       ..
    bne print_loop                                                    // 200b: d0 f5       ..
    rts                                                               // 200d: 60          `

hello_world_string
    .asc "Hello, world!"                                              // 200e: 48 65 6c... Hel
    .byt newline                                                      // 201b: 0d          .
pydis_end


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

