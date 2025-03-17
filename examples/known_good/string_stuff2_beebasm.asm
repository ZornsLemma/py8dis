; Constants
page    = &1900

; Memory locations

    org &0e00

.pydis_start
    equs STR$~(page)                                                  ; 0e00: 31 39 30... 190
    equb &21                                                          ; 0e04: 21          !
.pydis_end

    assert STR$~(page) == "1900"

save pydis_start, pydis_end

; Stats:
;     Total size (Code + Data) = 5 bytes
;     Code                     = 0 bytes (0%)
;     Data                     = 5 bytes (100%)
;
;     Number of instructions   = 0
;     Number of data bytes     = 1 bytes
;     Number of data words     = 0 bytes
;     Number of string bytes   = 4 bytes
;     Number of strings        = 1

