; Memory locations

    ORG $1000

pydis_start:
    call return_1                                                     ; 1000: cd 11 10    ...
    mov a, b                                                          ; 1003: 78          x
    ora c                                                             ; 1004: b1          .
    rz                                                                ; 1005: c8          .
; $1006 referenced 1 time by $100d
loop_c1006:
    ldax d                                                            ; 1006: 1a          .
    mov m, a                                                          ; 1007: 77          w
    inx d                                                             ; 1008: 13          .
    inx h                                                             ; 1009: 23          #
    dcx b                                                             ; 100a: 0b          .
    mov a, b                                                          ; 100b: 78          x
    ora c                                                             ; 100c: b1          .
    jnz loop_c1006                                                    ; 100d: c2 06 10    ...
    ret                                                               ; 1010: c9          .

; $1011 referenced 1 time by $1000
return_1:
    ret                                                               ; 1011: c9          .

pydis_end:

; Label references by decreasing frequency:
;     loop_c1006:   1
;     return_1:     1

; Automatically generated labels:
;     loop_c1006
;     return_1
