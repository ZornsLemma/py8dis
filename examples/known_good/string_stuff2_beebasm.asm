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
