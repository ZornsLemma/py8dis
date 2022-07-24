; Memory locations

    ORG $1000

pydis_start:
    mov a, b                                                          ; 1000: 78          x
    ora c                                                             ; 1001: b1          .
    rz                                                                ; 1002: c8          .
; $1003 referenced 1 time by $100a
loop_c1003:
    ldax d                                                            ; 1003: 1a          .
    mov m, a                                                          ; 1004: 77          w
    inx d                                                             ; 1005: 13          .
    inx h                                                             ; 1006: 23          #
    dcx b                                                             ; 1007: 0b          .
    mov a, b                                                          ; 1008: 78          x
    ora c                                                             ; 1009: b1          .
    jnz loop_c1003                                                    ; 100a: c2 03 10    ...
    ret                                                               ; 100d: c9          .

pydis_end:

; Label references by decreasing frequency:
;     loop_c1003:   1

; Automatically generated labels:
;     loop_c1003
