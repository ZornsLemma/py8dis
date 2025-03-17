; Memory locations

    ORG $1000

pydis_start:
    call sub
    mov a, b
    ora c
    rz
; $1003 referenced 1 time by $100a
loop_c1003:
    ldax d
    mov m, a
    inx d
    inx h
    dcx b
    mov a, b
    ora c
    jnz loop_c1003
    ret

sub:
    ret

pydis_end:

; Label references by decreasing frequency:
;     loop_c1003:   1

; Automatically generated labels:
;     loop_c1003
