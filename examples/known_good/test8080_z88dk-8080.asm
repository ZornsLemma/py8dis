;
; Microcosm Associates  8080/8085 CPU Diagnostic Version 1.0  (C) 1980
;

; Memory locations
wboot   EQU $00
bdos    EQU $05
stack   EQU $07ad

    ORG $0100

pydis_start:
    jmp cpu                                                           ; 0100: c3 ab 01    ...            ; jump to 8080 CPU diagnostic

    db "MICROCOSM ASSOCIATES 8080/8085 CPU DIAGNOSTIC VERSION 1.0 "   ; 0103: 4d 49 43... MIC
    db "(C) 1980"                                                     ; 013d: 28 43 29... (C)


; 
; message output routine
; 
msg:
    push d                                                            ; 0145: d5          .
    xchg                                                              ; 0146: eb          .
    mvi c, 9                                                          ; 0147: 0e 09       ..
    call bdos                                                         ; 0149: cd 05 00    ...
    pop d                                                             ; 014c: d1          .
    ret                                                               ; 014d: c9          .

pchar:
    mvi c, 2                                                          ; 014e: 0e 02       ..
    call bdos                                                         ; 0150: cd 05 00    ...
    ret                                                               ; 0153: c9          .

byte0:
    push psw                                                          ; 0154: f5          .
    call byto1                                                        ; 0155: cd 64 01    .d.
    mov e, a                                                          ; 0158: 5f          _
    call pchar                                                        ; 0159: cd 4e 01    .N.
    pop psw                                                           ; 015c: f1          .
    call byto2                                                        ; 015d: cd 68 01    .h.
    mov e, a                                                          ; 0160: 5f          _
    jmp pchar                                                         ; 0161: c3 4e 01    .N.

byto1:
    rrc                                                               ; 0164: 0f          .
    rrc                                                               ; 0165: 0f          .
    rrc                                                               ; 0166: 0f          .
    rrc                                                               ; 0167: 0f          .
byto2:
    ani $0f                                                           ; 0168: e6 0f       ..
    cpi $0a                                                           ; 016a: fe 0a       ..
    jm byto3                                                          ; 016c: fa 71 01    .q.
    adi 7                                                             ; 016f: c6 07       ..
byto3:
    adi $30                                                           ; 0171: c6 30       .0
    ret                                                               ; 0173: c9          .

cpu_ok_message:
    db %"----##--", %"----##-#", %"----#-#-"                          ; 0174: 0c 0d 0a    ...
    db " CPU IS OPERATIONAL$"                                         ; 0177: 20 43 50...  CP

cpu_error_message:
    db $0c, $0d, $0a                                                  ; 018b: 0c 0d 0a    ...
    db " CPU HAS FAILED! ERROR EXIT=$"                                ; 018e: 20 43 50...  CP

cpu:
    lxi sp, $07ad                                                     ; 01ab: 31 ad 07    1..
    ani 0                                                             ; 01ae: e6 00       ..
    jz j010                                                           ; 01b0: ca b6 01    ...            ; test "jz"
    call cpuer                                                        ; 01b3: cd 89 06    ...
j010:
    jnc j020                                                          ; 01b6: d2 bc 01    ...            ; test "jnc"
    call cpuer                                                        ; 01b9: cd 89 06    ...
j020:
    jpe j030                                                          ; 01bc: ea c2 01    ...            ; test "jpe"
    call cpuer                                                        ; 01bf: cd 89 06    ...
j030:
    jp p, j040                                                        ; 01c2: f2 c8 01    ...            ; test "jp"
    call cpuer                                                        ; 01c5: cd 89 06    ...
j040:
    jnz j050                                                          ; 01c8: c2 d7 01    ...            ; test "jnz"
    jc j050                                                           ; 01cb: da d7 01    ...
    jpo j050                                                          ; 01ce: e2 d7 01    ...
    jm j050                                                           ; 01d1: fa d7 01    ...
    jmp j060                                                          ; 01d4: c3 da 01    ...

j050:
    call cpuer                                                        ; 01d7: cd 89 06    ...
j060:
    adi 6                                                             ; 01da: c6 06       ..
    jnz j070                                                          ; 01dc: c2 e2 01    ...
    call cpuer                                                        ; 01df: cd 89 06    ...
j070:
    jc j080                                                           ; 01e2: da eb 01    ...
    jpo j080                                                          ; 01e5: e2 eb 01    ...
    jp p, j090                                                        ; 01e8: f2 ee 01    ...
j080:
    call cpuer                                                        ; 01eb: cd 89 06    ...
j090:
    adi $70                                                           ; 01ee: c6 70       .p
    jpo j100                                                          ; 01f0: e2 f6 01    ...
    call cpuer                                                        ; 01f3: cd 89 06    ...
j100:
    jm j110                                                           ; 01f6: fa ff 01    ...
    jz j110                                                           ; 01f9: ca ff 01    ...
    jnc j120                                                          ; 01fc: d2 02 02    ...
j110:
    call cpuer                                                        ; 01ff: cd 89 06    ...
j120:
    adi $81                                                           ; 0202: c6 81       ..
    jm j130                                                           ; 0204: fa 0a 02    ...
    call cpuer                                                        ; 0207: cd 89 06    ...
j130:
    jz j140                                                           ; 020a: ca 13 02    ...
    jc j140                                                           ; 020d: da 13 02    ...
    jpo j150                                                          ; 0210: e2 16 02    ...
j140:
    call cpuer                                                        ; 0213: cd 89 06    ...
j150:
    adi $fe                                                           ; 0216: c6 fe       ..
    jc j160                                                           ; 0218: da 1e 02    ...
    call cpuer                                                        ; 021b: cd 89 06    ...
j160:
    jz j170                                                           ; 021e: ca 27 02    .'.
    jpo j170                                                          ; 0221: e2 27 02    .'.
    jm aimm                                                           ; 0224: fa 2a 02    .*.
j170:
    call cpuer                                                        ; 0227: cd 89 06    ...

; 
; test accumulator immediate instructions
; 
aimm:
    cpi 0                                                             ; 022a: fe 00       ..
    jc cpie                                                           ; 022c: da 42 02    .B.
    jz cpie                                                           ; 022f: ca 42 02    .B.
    cpi $f5                                                           ; 0232: fe f5       ..
    jc cpie                                                           ; 0234: da 42 02    .B.
    jnz cpie                                                          ; 0237: c2 42 02    .B.
    cpi $ff                                                           ; 023a: fe ff       ..
    jz cpie                                                           ; 023c: ca 42 02    .B.
    jc acii                                                           ; 023f: da 45 02    .E.
cpie:
    call cpuer                                                        ; 0242: cd 89 06    ...
acii:
    aci $0a                                                           ; 0245: ce 0a       ..
    aci $0a                                                           ; 0247: ce 0a       ..
    cpi $0b                                                           ; 0249: fe 0b       ..
    jz suii                                                           ; 024b: ca 51 02    .Q.
    call cpuer                                                        ; 024e: cd 89 06    ...
suii:
    sui $0c                                                           ; 0251: d6 0c       ..
    sui $0f                                                           ; 0253: d6 0f       ..
    cpi $f0                                                           ; 0255: fe f0       ..
    jz sbii                                                           ; 0257: ca 5d 02    .].
    call cpuer                                                        ; 025a: cd 89 06    ...
sbii:
    sbi $f1                                                           ; 025d: de f1       ..
    sbi $0e                                                           ; 025f: de 0e       ..
    cpi $f0                                                           ; 0261: fe f0       ..
    jz anii                                                           ; 0263: ca 69 02    .i.
    call cpuer                                                        ; 0266: cd 89 06    ...
anii:
    ani $55                                                           ; 0269: e6 55       .U
    cpi $50                                                           ; 026b: fe 50       .P
    jz orii                                                           ; 026d: ca 73 02    .s.
    call cpuer                                                        ; 0270: cd 89 06    ...
orii:
    ori $3a                                                           ; 0273: f6 3a       .:
    cpi $7a                                                           ; 0275: fe 7a       .z
    jz xrii                                                           ; 0277: ca 7d 02    .}.
    call cpuer                                                        ; 027a: cd 89 06    ...
xrii:
    xri $0f                                                           ; 027d: ee 0f       ..
    cpi $75                                                           ; 027f: fe 75       .u
    jz c010                                                           ; 0281: ca 87 02    ...
    call cpuer                                                        ; 0284: cd 89 06    ...

; 
; test calls and returns
; 
c010:
    ani 0                                                             ; 0287: e6 00       ..
    cc cpuer                                                          ; 0289: dc 89 06    ...
    cpo cpuer                                                         ; 028c: e4 89 06    ...
    cm cpuer                                                          ; 028f: fc 89 06    ...
    cnz cpuer                                                         ; 0292: c4 89 06    ...
    cpi 0                                                             ; 0295: fe 00       ..
    jz c020                                                           ; 0297: ca 9d 02    ...
    call cpuer                                                        ; 029a: cd 89 06    ...
c020:
    sui $77                                                           ; 029d: d6 77       .w
    cnc cpuer                                                         ; 029f: d4 89 06    ...
    cpe cpuer                                                         ; 02a2: ec 89 06    ...
    call p, cpuer                                                     ; 02a5: f4 89 06    ...
    cz cpuer                                                          ; 02a8: cc 89 06    ...
    cpi $89                                                           ; 02ab: fe 89       ..
    jz c030                                                           ; 02ad: ca b3 02    ...
    call cpuer                                                        ; 02b0: cd 89 06    ...
c030:
    ani $ff                                                           ; 02b3: e6 ff       ..
    cpo cpoi                                                          ; 02b5: e4 c0 02    ...
    cpi $d9                                                           ; 02b8: fe d9       ..
    jz movi                                                           ; 02ba: ca 1d 03    ...
    call cpuer                                                        ; 02bd: cd 89 06    ...
cpoi:
    rpe                                                               ; 02c0: e8          .
    adi $10                                                           ; 02c1: c6 10       ..
    cpe cpei                                                          ; 02c3: ec cc 02    ...
    adi 2                                                             ; 02c6: c6 02       ..
    rpo                                                               ; 02c8: e0          .
    call cpuer                                                        ; 02c9: cd 89 06    ...
cpei:
    rpo                                                               ; 02cc: e0          .
    adi $20                                                           ; 02cd: c6 20       .
    cm cmi                                                            ; 02cf: fc d8 02    ...
    adi 4                                                             ; 02d2: c6 04       ..
    rpe                                                               ; 02d4: e8          .
    call cpuer                                                        ; 02d5: cd 89 06    ...
cmi:
    rp                                                                ; 02d8: f0          .
    adi $80                                                           ; 02d9: c6 80       ..
    call p, tcpi                                                      ; 02db: f4 e4 02    ...
    adi $80                                                           ; 02de: c6 80       ..
    rm                                                                ; 02e0: f8          .
    call cpuer                                                        ; 02e1: cd 89 06    ...
tcpi:
    rm                                                                ; 02e4: f8          .
    adi $40                                                           ; 02e5: c6 40       .@
    cnc cnci                                                          ; 02e7: d4 f0 02    ...
    adi $40                                                           ; 02ea: c6 40       .@
    rp                                                                ; 02ec: f0          .
    call cpuer                                                        ; 02ed: cd 89 06    ...
cnci:
    rc                                                                ; 02f0: d8          .
    adi $8f                                                           ; 02f1: c6 8f       ..
    cc cci                                                            ; 02f3: dc fc 02    ...
    sui 2                                                             ; 02f6: d6 02       ..
    rnc                                                               ; 02f8: d0          .
    call cpuer                                                        ; 02f9: cd 89 06    ...
cci:
    rnc                                                               ; 02fc: d0          .
    adi $f7                                                           ; 02fd: c6 f7       ..
    cnz cnzi                                                          ; 02ff: c4 08 03    ...
    adi $fe                                                           ; 0302: c6 fe       ..
    rc                                                                ; 0304: d8          .
    call cpuer                                                        ; 0305: cd 89 06    ...
cnzi:
    rz                                                                ; 0308: c8          .
    adi 1                                                             ; 0309: c6 01       ..
    cz czi                                                            ; 030b: cc 14 03    ...
    adi $d0                                                           ; 030e: c6 d0       ..
    rnz                                                               ; 0310: c0          .
    call cpuer                                                        ; 0311: cd 89 06    ...
czi:
    rnz                                                               ; 0314: c0          .
    adi $47                                                           ; 0315: c6 47       .G
    cpi $47                                                           ; 0317: fe 47       .G
    rz                                                                ; 0319: c8          .
    call cpuer                                                        ; 031a: cd 89 06    ...

; 
; test "mov","inr",and "dcr" instructions
; 
movi:
    mvi a, $77                                                        ; 031d: 3e 77       >w
    inr a                                                             ; 031f: 3c          <
    mov b, a                                                          ; 0320: 47          G
    inr b                                                             ; 0321: 04          .
    mov c, b                                                          ; 0322: 48          H
    dcr c                                                             ; 0323: 0d          .
    mov d, c                                                          ; 0324: 51          Q
    mov e, d                                                          ; 0325: 5a          Z
    mov h, e                                                          ; 0326: 63          c
    mov l, h                                                          ; 0327: 6c          l
    mov a, l                                                          ; 0328: 7d          }
    dcr a                                                             ; 0329: 3d          =
    mov c, a                                                          ; 032a: 4f          O
    mov e, c                                                          ; 032b: 59          Y
    mov l, e                                                          ; 032c: 6b          k
    mov b, l                                                          ; 032d: 45          E
    mov d, b                                                          ; 032e: 50          P
    mov h, d                                                          ; 032f: 62          b
    mov a, h                                                          ; 0330: 7c          |
    mov d, a                                                          ; 0331: 57          W
    inr d                                                             ; 0332: 14          .
    mov l, d                                                          ; 0333: 6a          j
    mov c, l                                                          ; 0334: 4d          M
    inr c                                                             ; 0335: 0c          .
    mov h, c                                                          ; 0336: 61          a
    mov b, h                                                          ; 0337: 44          D
    dcr b                                                             ; 0338: 05          .
    mov e, b                                                          ; 0339: 58          X
    mov a, e                                                          ; 033a: 7b          {
    mov e, a                                                          ; 033b: 5f          _
    inr e                                                             ; 033c: 1c          .
    mov b, e                                                          ; 033d: 43          C
    mov h, b                                                          ; 033e: 60          `
    inr h                                                             ; 033f: 24          $
    mov c, h                                                          ; 0340: 4c          L
    mov l, c                                                          ; 0341: 69          i
    mov d, l                                                          ; 0342: 55          U
    dcr d                                                             ; 0343: 15          .
    mov a, d                                                          ; 0344: 7a          z
    mov h, a                                                          ; 0345: 67          g
    dcr h                                                             ; 0346: 25          %
    mov d, h                                                          ; 0347: 54          T
    mov b, d                                                          ; 0348: 42          B
    mov l, b                                                          ; 0349: 68          h
    inr l                                                             ; 034a: 2c          ,
    mov e, l                                                          ; 034b: 5d          ]
    dcr e                                                             ; 034c: 1d          .
    mov c, e                                                          ; 034d: 4b          K
    mov a, c                                                          ; 034e: 79          y
    mov l, a                                                          ; 034f: 6f          o
    dcr l                                                             ; 0350: 2d          -
    mov h, l                                                          ; 0351: 65          e
    mov e, h                                                          ; 0352: 5c          \
    mov d, e                                                          ; 0353: 53          S
    mov c, d                                                          ; 0354: 4a          J
    mov b, c                                                          ; 0355: 41          A
    mov a, b                                                          ; 0356: 78          x
    cpi $77                                                           ; 0357: fe 77       .w
    cnz cpuer                                                         ; 0359: c4 89 06    ...

; 
; test arithmetic and logic instructions
; 
    xra a                                                             ; 035c: af          .
    mvi b, 1                                                          ; 035d: 06 01       ..
    mvi c, 3                                                          ; 035f: 0e 03       ..
    mvi d, 7                                                          ; 0361: 16 07       ..
    mvi e, $0f                                                        ; 0363: 1e 0f       ..
    mvi h, $1f                                                        ; 0365: 26 1f       &.
    mvi l, $3f                                                        ; 0367: 2e 3f       .?
    add b                                                             ; 0369: 80          .
    add c                                                             ; 036a: 81          .
    add d                                                             ; 036b: 82          .
    add e                                                             ; 036c: 83          .
    add h                                                             ; 036d: 84          .
    add l                                                             ; 036e: 85          .
    add a                                                             ; 036f: 87          .
    cpi $f0                                                           ; 0370: fe f0       ..
    cnz cpuer                                                         ; 0372: c4 89 06    ...
    sub b                                                             ; 0375: 90          .
    sub c                                                             ; 0376: 91          .
    sub d                                                             ; 0377: 92          .
    sub e                                                             ; 0378: 93          .
    sub h                                                             ; 0379: 94          .
    sub l                                                             ; 037a: 95          .
    cpi $78                                                           ; 037b: fe 78       .x
    cnz cpuer                                                         ; 037d: c4 89 06    ...
    sub a                                                             ; 0380: 97          .
    cnz cpuer                                                         ; 0381: c4 89 06    ...
    mvi a, $80                                                        ; 0384: 3e 80       >.
    add a                                                             ; 0386: 87          .
    mvi b, 1                                                          ; 0387: 06 01       ..
    mvi c, 2                                                          ; 0389: 0e 02       ..
    mvi d, 3                                                          ; 038b: 16 03       ..
    mvi e, 4                                                          ; 038d: 1e 04       ..
    mvi h, 5                                                          ; 038f: 26 05       &.
    mvi l, 6                                                          ; 0391: 2e 06       ..
    adc b                                                             ; 0393: 88          .
    mvi b, $80                                                        ; 0394: 06 80       ..
    add b                                                             ; 0396: 80          .
    add b                                                             ; 0397: 80          .
    adc c                                                             ; 0398: 89          .
    add b                                                             ; 0399: 80          .
    add b                                                             ; 039a: 80          .
    adc d                                                             ; 039b: 8a          .
    add b                                                             ; 039c: 80          .
    add b                                                             ; 039d: 80          .
    adc e                                                             ; 039e: 8b          .
    add b                                                             ; 039f: 80          .
    add b                                                             ; 03a0: 80          .
    adc h                                                             ; 03a1: 8c          .
    add b                                                             ; 03a2: 80          .
    add b                                                             ; 03a3: 80          .
    adc l                                                             ; 03a4: 8d          .
    add b                                                             ; 03a5: 80          .
    add b                                                             ; 03a6: 80          .
    adc a                                                             ; 03a7: 8f          .
    cpi $37                                                           ; 03a8: fe 37       .7
    cnz cpuer                                                         ; 03aa: c4 89 06    ...
    mvi a, $80                                                        ; 03ad: 3e 80       >.
    add a                                                             ; 03af: 87          .
    mvi b, 1                                                          ; 03b0: 06 01       ..
    sbb b                                                             ; 03b2: 98          .
    mvi b, $ff                                                        ; 03b3: 06 ff       ..
    add b                                                             ; 03b5: 80          .
    sbb c                                                             ; 03b6: 99          .
    add b                                                             ; 03b7: 80          .
    sbb d                                                             ; 03b8: 9a          .
    add b                                                             ; 03b9: 80          .
    sbb e                                                             ; 03ba: 9b          .
    add b                                                             ; 03bb: 80          .
    sbb h                                                             ; 03bc: 9c          .
    add b                                                             ; 03bd: 80          .
    sbb l                                                             ; 03be: 9d          .
    cpi $e0                                                           ; 03bf: fe e0       ..
    cnz cpuer                                                         ; 03c1: c4 89 06    ...
    mvi a, $80                                                        ; 03c4: 3e 80       >.
    add a                                                             ; 03c6: 87          .
    sbb a                                                             ; 03c7: 9f          .
    cpi $ff                                                           ; 03c8: fe ff       ..
    cnz cpuer                                                         ; 03ca: c4 89 06    ...
    mvi a, $ff                                                        ; 03cd: 3e ff       >.
    mvi b, $fe                                                        ; 03cf: 06 fe       ..
    mvi c, $fc                                                        ; 03d1: 0e fc       ..
    mvi d, $ef                                                        ; 03d3: 16 ef       ..
    mvi e, $7f                                                        ; 03d5: 1e 7f       ..
    mvi h, $f4                                                        ; 03d7: 26 f4       &.
    mvi l, $bf                                                        ; 03d9: 2e bf       ..
    ana a                                                             ; 03db: a7          .
    ana c                                                             ; 03dc: a1          .
    ana d                                                             ; 03dd: a2          .
    ana e                                                             ; 03de: a3          .
    ana h                                                             ; 03df: a4          .
    ana l                                                             ; 03e0: a5          .
    ana a                                                             ; 03e1: a7          .
    cpi $24                                                           ; 03e2: fe 24       .$
    cnz cpuer                                                         ; 03e4: c4 89 06    ...
    xra a                                                             ; 03e7: af          .
    mvi b, 1                                                          ; 03e8: 06 01       ..
    mvi c, 2                                                          ; 03ea: 0e 02       ..
    mvi d, 4                                                          ; 03ec: 16 04       ..
    mvi e, 8                                                          ; 03ee: 1e 08       ..
    mvi h, $10                                                        ; 03f0: 26 10       &.
    mvi l, $20                                                        ; 03f2: 2e 20       .
    ora b                                                             ; 03f4: b0          .
    ora c                                                             ; 03f5: b1          .
    ora d                                                             ; 03f6: b2          .
    ora e                                                             ; 03f7: b3          .
    ora h                                                             ; 03f8: b4          .
    ora l                                                             ; 03f9: b5          .
    ora a                                                             ; 03fa: b7          .
    cpi $3f                                                           ; 03fb: fe 3f       .?
    cnz cpuer                                                         ; 03fd: c4 89 06    ...
    mvi a, 0                                                          ; 0400: 3e 00       >.
    mvi h, $8f                                                        ; 0402: 26 8f       &.
    mvi l, $4f                                                        ; 0404: 2e 4f       .O
    xra b                                                             ; 0406: a8          .
    xra c                                                             ; 0407: a9          .
    xra d                                                             ; 0408: aa          .
    xra e                                                             ; 0409: ab          .
    xra h                                                             ; 040a: ac          .
    xra l                                                             ; 040b: ad          .
    cpi $cf                                                           ; 040c: fe cf       ..
    cnz cpuer                                                         ; 040e: c4 89 06    ...
    xra a                                                             ; 0411: af          .
    cnz cpuer                                                         ; 0412: c4 89 06    ...
    mvi b, $44                                                        ; 0415: 06 44       .D
    mvi c, $45                                                        ; 0417: 0e 45       .E
    mvi d, $46                                                        ; 0419: 16 46       .F
    mvi e, $47                                                        ; 041b: 1e 47       .G
    mvi h, 6                                                          ; 041d: 26 06       &.
    mvi l, $a6                                                        ; 041f: 2e a6       ..
    mov m, b                                                          ; 0421: 70          p
    mvi b, 0                                                          ; 0422: 06 00       ..
    mov b, m                                                          ; 0424: 46          F
    mvi a, $44                                                        ; 0425: 3e 44       >D
    cmp b                                                             ; 0427: b8          .
    cnz cpuer                                                         ; 0428: c4 89 06    ...
    mov m, d                                                          ; 042b: 72          r
    mvi d, 0                                                          ; 042c: 16 00       ..
    mov d, m                                                          ; 042e: 56          V
    mvi a, $46                                                        ; 042f: 3e 46       >F
    cmp d                                                             ; 0431: ba          .
    cnz cpuer                                                         ; 0432: c4 89 06    ...
    mov m, e                                                          ; 0435: 73          s
    mvi e, 0                                                          ; 0436: 1e 00       ..
    mov e, m                                                          ; 0438: 5e          ^
    mvi a, $47                                                        ; 0439: 3e 47       >G
    cmp e                                                             ; 043b: bb          .
    cnz cpuer                                                         ; 043c: c4 89 06    ...
    mov m, h                                                          ; 043f: 74          t
    mvi h, 6                                                          ; 0440: 26 06       &.
    mvi l, $a6                                                        ; 0442: 2e a6       ..
    mov h, m                                                          ; 0444: 66          f
    mvi a, 6                                                          ; 0445: 3e 06       >.
    cmp h                                                             ; 0447: bc          .
    cnz cpuer                                                         ; 0448: c4 89 06    ...
    mov m, l                                                          ; 044b: 75          u
    mvi h, 6                                                          ; 044c: 26 06       &.
    mvi l, $a6                                                        ; 044e: 2e a6       ..
    mov l, m                                                          ; 0450: 6e          n
    mvi a, $a6                                                        ; 0451: 3e a6       >.
    cmp l                                                             ; 0453: bd          .
    cnz cpuer                                                         ; 0454: c4 89 06    ...
    mvi h, 6                                                          ; 0457: 26 06       &.
    mvi l, $a6                                                        ; 0459: 2e a6       ..
    mvi a, $32                                                        ; 045b: 3e 32       >2
    mov m, a                                                          ; 045d: 77          w
    cmp m                                                             ; 045e: be          .
    cnz cpuer                                                         ; 045f: c4 89 06    ...
    add m                                                             ; 0462: 86          .
    cpi $64                                                           ; 0463: fe 64       .d
    cnz cpuer                                                         ; 0465: c4 89 06    ...
    xra a                                                             ; 0468: af          .
    mov a, m                                                          ; 0469: 7e          ~
    cpi $32                                                           ; 046a: fe 32       .2
    cnz cpuer                                                         ; 046c: c4 89 06    ...
    mvi h, 6                                                          ; 046f: 26 06       &.
    mvi l, $a6                                                        ; 0471: 2e a6       ..
    mov a, m                                                          ; 0473: 7e          ~
    sub m                                                             ; 0474: 96          .
    cnz cpuer                                                         ; 0475: c4 89 06    ...
    mvi a, $80                                                        ; 0478: 3e 80       >.
    add a                                                             ; 047a: 87          .
    adc m                                                             ; 047b: 8e          .
    cpi $33                                                           ; 047c: fe 33       .3
    cnz cpuer                                                         ; 047e: c4 89 06    ...
    mvi a, $80                                                        ; 0481: 3e 80       >.
    add a                                                             ; 0483: 87          .
    sbb m                                                             ; 0484: 9e          .
    cpi $cd                                                           ; 0485: fe cd       ..
    cnz cpuer                                                         ; 0487: c4 89 06    ...
    ana m                                                             ; 048a: a6          .
    cnz cpuer                                                         ; 048b: c4 89 06    ...
    mvi a, $25                                                        ; 048e: 3e 25       >%
    ora m                                                             ; 0490: b6          .
    cpi $37                                                           ; 0491: fe 37       .7
    cnz cpuer                                                         ; 0493: c4 89 06    ...
    xra m                                                             ; 0496: ae          .
    cpi 5                                                             ; 0497: fe 05       ..
    cnz cpuer                                                         ; 0499: c4 89 06    ...
    mvi m, $55                                                        ; 049c: 36 55       6U
    inr m                                                             ; 049e: 34          4
    dcr m                                                             ; 049f: 35          5
    add m                                                             ; 04a0: 86          .
    cpi $5a                                                           ; 04a1: fe 5a       .Z
    cnz cpuer                                                         ; 04a3: c4 89 06    ...
    lxi bc, $12ff                                                     ; 04a6: 01 ff 12    ...
    lxi de, $12ff                                                     ; 04a9: 11 ff 12    ...
    lxi hl, $12ff                                                     ; 04ac: 21 ff 12    !..
    inx b                                                             ; 04af: 03          .
    inx d                                                             ; 04b0: 13          .
    inx h                                                             ; 04b1: 23          #
    mvi a, $13                                                        ; 04b2: 3e 13       >.
    cmp b                                                             ; 04b4: b8          .
    cnz cpuer                                                         ; 04b5: c4 89 06    ...
    cmp d                                                             ; 04b8: ba          .
    cnz cpuer                                                         ; 04b9: c4 89 06    ...
    cmp h                                                             ; 04bc: bc          .
    cnz cpuer                                                         ; 04bd: c4 89 06    ...
    mvi a, 0                                                          ; 04c0: 3e 00       >.
    cmp c                                                             ; 04c2: b9          .
    cnz cpuer                                                         ; 04c3: c4 89 06    ...
    cmp e                                                             ; 04c6: bb          .
    cnz cpuer                                                         ; 04c7: c4 89 06    ...
    cmp l                                                             ; 04ca: bd          .
    cnz cpuer                                                         ; 04cb: c4 89 06    ...
    dcx b                                                             ; 04ce: 0b          .
    dcx d                                                             ; 04cf: 1b          .
    dcx h                                                             ; 04d0: 2b          +
    mvi a, $12                                                        ; 04d1: 3e 12       >.
    cmp b                                                             ; 04d3: b8          .
    cnz cpuer                                                         ; 04d4: c4 89 06    ...
    cmp d                                                             ; 04d7: ba          .
    cnz cpuer                                                         ; 04d8: c4 89 06    ...
    cmp h                                                             ; 04db: bc          .
    cnz cpuer                                                         ; 04dc: c4 89 06    ...
    mvi a, $ff                                                        ; 04df: 3e ff       >.
    cmp c                                                             ; 04e1: b9          .
    cnz cpuer                                                         ; 04e2: c4 89 06    ...
    cmp e                                                             ; 04e5: bb          .
    cnz cpuer                                                         ; 04e6: c4 89 06    ...
    cmp l                                                             ; 04e9: bd          .
    cnz cpuer                                                         ; 04ea: c4 89 06    ...
    sta temp0                                                         ; 04ed: 32 a6 06    2..
    xra a                                                             ; 04f0: af          .
    lda temp0                                                         ; 04f1: 3a a6 06    :..
    cpi $ff                                                           ; 04f4: fe ff       ..
    cnz cpuer                                                         ; 04f6: c4 89 06    ...
    lhld tempp                                                        ; 04f9: 2a a4 06    *..
    shld temp0                                                        ; 04fc: 22 a6 06    "..
    lda tempp                                                         ; 04ff: 3a a4 06    :..
    mov b, a                                                          ; 0502: 47          G
    lda temp0                                                         ; 0503: 3a a6 06    :..
    cmp b                                                             ; 0506: b8          .
    cnz cpuer                                                         ; 0507: c4 89 06    ...
    lda tempp+1                                                       ; 050a: 3a a5 06    :..
    mov b, a                                                          ; 050d: 47          G
    lda temp1                                                         ; 050e: 3a a7 06    :..
    cmp b                                                             ; 0511: b8          .
    cnz cpuer                                                         ; 0512: c4 89 06    ...
    mvi a, $aa                                                        ; 0515: 3e aa       >.
    sta temp0                                                         ; 0517: 32 a6 06    2..
    mov b, h                                                          ; 051a: 44          D
    mov c, l                                                          ; 051b: 4d          M
    xra a                                                             ; 051c: af          .
    ldax b                                                            ; 051d: 0a          .
    cpi $aa                                                           ; 051e: fe aa       ..
    cnz cpuer                                                         ; 0520: c4 89 06    ...
    inr a                                                             ; 0523: 3c          <
    stax b                                                            ; 0524: 02          .
    lda temp0                                                         ; 0525: 3a a6 06    :..
    cpi $ab                                                           ; 0528: fe ab       ..
    cnz cpuer                                                         ; 052a: c4 89 06    ...
    mvi a, $77                                                        ; 052d: 3e 77       >w
    sta temp0                                                         ; 052f: 32 a6 06    2..
    lhld tempp                                                        ; 0532: 2a a4 06    *..
    lxi de, 0                                                         ; 0535: 11 00 00    ...
    xchg                                                              ; 0538: eb          .
    xra a                                                             ; 0539: af          .
    ldax d                                                            ; 053a: 1a          .
    cpi $77                                                           ; 053b: fe 77       .w
    cnz cpuer                                                         ; 053d: c4 89 06    ...
    xra a                                                             ; 0540: af          .
    add h                                                             ; 0541: 84          .
    add l                                                             ; 0542: 85          .
    cnz cpuer                                                         ; 0543: c4 89 06    ...
    mvi a, $cc                                                        ; 0546: 3e cc       >.
    stax d                                                            ; 0548: 12          .
    lda temp0                                                         ; 0549: 3a a6 06    :..
    cpi $cc                                                           ; 054c: fe cc       ..
    stax d                                                            ; 054e: 12          .
    lda temp0                                                         ; 054f: 3a a6 06    :..
    cpi $cc                                                           ; 0552: fe cc       ..
    cnz cpuer                                                         ; 0554: c4 89 06    ...
    lxi hl, $7777                                                     ; 0557: 21 77 77    !ww
    dad h                                                             ; 055a: 29          )
    mvi a, $ee                                                        ; 055b: 3e ee       >.
    cmp h                                                             ; 055d: bc          .
    cnz cpuer                                                         ; 055e: c4 89 06    ...
    cmp l                                                             ; 0561: bd          .
    cnz cpuer                                                         ; 0562: c4 89 06    ...
    lxi hl, $5555                                                     ; 0565: 21 55 55    !UU
    lxi bc, $ffff                                                     ; 0568: 01 ff ff    ...
    dad b                                                             ; 056b: 09          .
    mvi a, $55                                                        ; 056c: 3e 55       >U
    cnc cpuer                                                         ; 056e: d4 89 06    ...
    cmp h                                                             ; 0571: bc          .
    cnz cpuer                                                         ; 0572: c4 89 06    ...
    mvi a, $54                                                        ; 0575: 3e 54       >T
    cmp l                                                             ; 0577: bd          .
    cnz cpuer                                                         ; 0578: c4 89 06    ...
    lxi hl, $aaaa                                                     ; 057b: 21 aa aa    !..
    lxi de, $3333                                                     ; 057e: 11 33 33    .33
    dad d                                                             ; 0581: 19          .
    mvi a, $dd                                                        ; 0582: 3e dd       >.
    cmp h                                                             ; 0584: bc          .
    cnz cpuer                                                         ; 0585: c4 89 06    ...
    cmp l                                                             ; 0588: bd          .
    cnz cpuer                                                         ; 0589: c4 89 06    ...
    stc                                                               ; 058c: 37          7
    cnc cpuer                                                         ; 058d: d4 89 06    ...
    cmc                                                               ; 0590: 3f          ?
    cc cpuer                                                          ; 0591: dc 89 06    ...
    mvi a, $aa                                                        ; 0594: 3e aa       >.
    cma                                                               ; 0596: 2f          /
    cpi $55                                                           ; 0597: fe 55       .U
    cnz cpuer                                                         ; 0599: c4 89 06    ...
    ora a                                                             ; 059c: b7          .
    daa                                                               ; 059d: 27          '
    cpi $55                                                           ; 059e: fe 55       .U
    cnz cpuer                                                         ; 05a0: c4 89 06    ...
    mvi a, $88                                                        ; 05a3: 3e 88       >.
    add a                                                             ; 05a5: 87          .
    daa                                                               ; 05a6: 27          '
    cpi $76                                                           ; 05a7: fe 76       .v
    cnz cpuer                                                         ; 05a9: c4 89 06    ...
    xra a                                                             ; 05ac: af          .
    mvi a, $aa                                                        ; 05ad: 3e aa       >.
    daa                                                               ; 05af: 27          '
    cnc cpuer                                                         ; 05b0: d4 89 06    ...
    cpi $10                                                           ; 05b3: fe 10       ..
    cnz cpuer                                                         ; 05b5: c4 89 06    ...
    xra a                                                             ; 05b8: af          .
    mvi a, $9a                                                        ; 05b9: 3e 9a       >.
    daa                                                               ; 05bb: 27          '
    cnc cpuer                                                         ; 05bc: d4 89 06    ...
    cnz cpuer                                                         ; 05bf: c4 89 06    ...
    stc                                                               ; 05c2: 37          7
    mvi a, $42                                                        ; 05c3: 3e 42       >B
    rlc                                                               ; 05c5: 07          .
    cc cpuer                                                          ; 05c6: dc 89 06    ...
    rlc                                                               ; 05c9: 07          .
    cnc cpuer                                                         ; 05ca: d4 89 06    ...
    cpi 9                                                             ; 05cd: fe 09       ..
    cnz cpuer                                                         ; 05cf: c4 89 06    ...
    rrc                                                               ; 05d2: 0f          .
    cnc cpuer                                                         ; 05d3: d4 89 06    ...
    rrc                                                               ; 05d6: 0f          .
    cpi $42                                                           ; 05d7: fe 42       .B
    cnz cpuer                                                         ; 05d9: c4 89 06    ...
    ral                                                               ; 05dc: 17          .
    ral                                                               ; 05dd: 17          .
    cnc cpuer                                                         ; 05de: d4 89 06    ...
    cpi 8                                                             ; 05e1: fe 08       ..
    cnz cpuer                                                         ; 05e3: c4 89 06    ...
    rar                                                               ; 05e6: 1f          .
    rar                                                               ; 05e7: 1f          .
    cc cpuer                                                          ; 05e8: dc 89 06    ...
    cpi 2                                                             ; 05eb: fe 02       ..
    cnz cpuer                                                         ; 05ed: c4 89 06    ...
    lxi bc, $1234                                                     ; 05f0: 01 34 12    .4.
    lxi de, $aaaa                                                     ; 05f3: 11 aa aa    ...
    lxi hl, $5555                                                     ; 05f6: 21 55 55    !UU
    xra a                                                             ; 05f9: af          .
    push b                                                            ; 05fa: c5          .
    push d                                                            ; 05fb: d5          .
    push h                                                            ; 05fc: e5          .
    push psw                                                          ; 05fd: f5          .
    lxi bc, 0                                                         ; 05fe: 01 00 00    ...
    lxi de, 0                                                         ; 0601: 11 00 00    ...
    lxi hl, 0                                                         ; 0604: 21 00 00    !..
    mvi a, $c0                                                        ; 0607: 3e c0       >.
    adi $f0                                                           ; 0609: c6 f0       ..
    pop psw                                                           ; 060b: f1          .
    pop h                                                             ; 060c: e1          .
    pop d                                                             ; 060d: d1          .
    pop b                                                             ; 060e: c1          .
    cc cpuer                                                          ; 060f: dc 89 06    ...
    cnz cpuer                                                         ; 0612: c4 89 06    ...
    cpo cpuer                                                         ; 0615: e4 89 06    ...
    cm cpuer                                                          ; 0618: fc 89 06    ...
    mvi a, $12                                                        ; 061b: 3e 12       >.
    cmp b                                                             ; 061d: b8          .
    cnz cpuer                                                         ; 061e: c4 89 06    ...
    mvi a, $34                                                        ; 0621: 3e 34       >4
    cmp c                                                             ; 0623: b9          .
    cnz cpuer                                                         ; 0624: c4 89 06    ...
    mvi a, $aa                                                        ; 0627: 3e aa       >.
    cmp d                                                             ; 0629: ba          .
    cnz cpuer                                                         ; 062a: c4 89 06    ...
    cmp e                                                             ; 062d: bb          .
    cnz cpuer                                                         ; 062e: c4 89 06    ...
    mvi a, $55                                                        ; 0631: 3e 55       >U
    cmp h                                                             ; 0633: bc          .
    cnz cpuer                                                         ; 0634: c4 89 06    ...
    cmp l                                                             ; 0637: bd          .
    cnz cpuer                                                         ; 0638: c4 89 06    ...
    lxi hl, 0                                                         ; 063b: 21 00 00    !..
    dad sp                                                            ; 063e: 39          9
    shld savstk                                                       ; 063f: 22 ab 06    "..
    lxi sp, $06aa                                                     ; 0642: 31 aa 06    1..
    dcx sp                                                            ; 0645: 3b          ;
    dcx sp                                                            ; 0646: 3b          ;
    inx sp                                                            ; 0647: 33          3
    dcx sp                                                            ; 0648: 3b          ;
    mvi a, $55                                                        ; 0649: 3e 55       >U
    sta temp2                                                         ; 064b: 32 a8 06    2..
    cma                                                               ; 064e: 2f          /
    sta temp3                                                         ; 064f: 32 a9 06    2..
    pop b                                                             ; 0652: c1          .
    cmp b                                                             ; 0653: b8          .
    cnz cpuer                                                         ; 0654: c4 89 06    ...
    cma                                                               ; 0657: 2f          /
    cmp c                                                             ; 0658: b9          .
    cnz cpuer                                                         ; 0659: c4 89 06    ...
    lxi hl, $06aa                                                     ; 065c: 21 aa 06    !..
    sphl                                                              ; 065f: f9          .
    lxi hl, $7733                                                     ; 0660: 21 33 77    !3w
    dcx sp                                                            ; 0663: 3b          ;
    dcx sp                                                            ; 0664: 3b          ;
    xthl                                                              ; 0665: e3          .
    lda temp3                                                         ; 0666: 3a a9 06    :..
    cpi $77                                                           ; 0669: fe 77       .w
    cnz cpuer                                                         ; 066b: c4 89 06    ...
    lda temp2                                                         ; 066e: 3a a8 06    :..
    cpi $33                                                           ; 0671: fe 33       .3
    cnz cpuer                                                         ; 0673: c4 89 06    ...
    mvi a, $55                                                        ; 0676: 3e 55       >U
    cmp l                                                             ; 0678: bd          .
    cnz cpuer                                                         ; 0679: c4 89 06    ...
    cma                                                               ; 067c: 2f          /
    cmp h                                                             ; 067d: bc          .
    cnz cpuer                                                         ; 067e: c4 89 06    ...
    lhld savstk                                                       ; 0681: 2a ab 06    *..
    sphl                                                              ; 0684: f9          .
    lxi hl, $069b                                                     ; 0685: 21 9b 06    !..
    pchl                                                              ; 0688: e9          .

cpuer:
    lxi hl, cpu_error_message                                         ; 0689: 21 8b 01    !..
    call msg                                                          ; 068c: cd 45 01    .E.
    xthl                                                              ; 068f: e3          .
    mov a, h                                                          ; 0690: 7c          |
    call byte0                                                        ; 0691: cd 54 01    .T.
    mov a, l                                                          ; 0694: 7d          }
    call byte0                                                        ; 0695: cd 54 01    .T.
    jmp wboot                                                         ; 0698: c3 00 00    ...

cpuok:
    lxi hl, cpu_ok_message                                            ; 069b: 21 74 01    !t.
    call msg                                                          ; 069e: cd 45 01    .E.
    jmp wboot                                                         ; 06a1: c3 00 00    ...

tempp:
    dw temp0                                                          ; 06a4: a6 06       ..
temp0:
    db 0                                                              ; 06a6: 00          .
temp1:
    db 0                                                              ; 06a7: 00          .
temp2:
    db 0                                                              ; 06a8: 00          .
temp3:
    db 0                                                              ; 06a9: 00          .
temp4:
    db 0                                                              ; 06aa: 00          .
savstk:
    dw 0                                                              ; 06ab: 00 00       ..
pydis_end:

; ASSERT ((cpu_error_message) == $018b)
; ASSERT ((cpu_ok_message) == $0174)
; ASSERT ((temp0) == $06a6)

; Stats:
;     Total size (Code + Data) = 1453 bytes
;     Code                     = 1323 bytes (91%)
;     Data                     = 130 bytes (9%)
;
;     Number of instructions   = 692
;     Number of data bytes     = 11 bytes
;     Number of data words     = 4 bytes
;     Number of string bytes   = 115 bytes
;     Number of strings        = 3

