; Memory locations

    * = $0e00

pydis_start
    !byte l0e06 - l0e01                                               ; 0e00: 05          .
l0e01
    !text "hello"                                                     ; 0e01: 68 65 6c... hel
l0e06
    !byte pydis_end - l0e07                                           ; 0e06: 05          .
l0e07
    !text "wo", $0d, "ld"                                             ; 0e07: 77 6f 0d... wo.
pydis_end

!if (l0e06 - l0e01) != $05 {
    !error "Assertion failed: l0e06 - l0e01 == $05"
}
!if (pydis_end - l0e07) != $05 {
    !error "Assertion failed: pydis_end - l0e07 == $05"
}

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

