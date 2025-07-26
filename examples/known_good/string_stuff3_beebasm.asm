; Memory locations

    org &0e00

.pydis_start
    equb l0e06 - l0e01                                                ; 0e00: 05          .
.l0e01
    equs "hello"                                                      ; 0e01: 68 65 6c... hel
.l0e06
    equb pydis_end - l0e07                                            ; 0e06: 05          .
.l0e07
    equs "wo", &0d, "ld"                                              ; 0e07: 77 6f 0d... wo.
.pydis_end

    assert l0e06 - l0e01 == &05
    assert pydis_end - l0e07 == &05

save pydis_start, pydis_end

; Stats:
;     Total size (Code + Data) = 12 bytes
;     Code                     = 0 bytes (0%)
;     Data                     = 12 bytes (100%)
;
;     Number of instructions   = 0
;     Number of data bytes     = 2 bytes
;     Number of data words     = 0 bytes
;     Number of string bytes   = 10 bytes
;     Number of strings        = 2

