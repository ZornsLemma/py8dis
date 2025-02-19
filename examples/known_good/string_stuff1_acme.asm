; Constants
page    = "1900"

; Memory locations

    * = $0e00

pydis_start
    !text page                                                        ; 0e00: 31 39 30... 190
    !byte $21                                                         ; 0e04: 21          !
pydis_end
