;
; Acornsoft Lisp v4.06
;
; Reassembled by TobyLobster in 2023
;
; Made by disassembling the LISP406 binary with py8dis
; then adding original label names and comments.
;
; See https://stardot.org.uk/forums/viewtopic.php?f=2&t=23053
;

; Constants
AREEXT                                  = 0
CHARF                                   = 0
COLDST                                  = 0
FSUBRF                                  = 12
IMALEN                                  = 18
LISTF                                   = 128
NUMF                                    = 4
osbyte_acknowledge_escape               = 126
osbyte_enter_language                   = 142
osbyte_inkey                            = 129
osbyte_read_adc_or_get_buffer_status    = 128
osbyte_read_high_order_address          = 130
osbyte_read_himem                       = 132
osbyte_read_himem_for_mode              = 133
osbyte_read_oshwm                       = 131
osbyte_read_tube_presence               = 234
osfile_load                             = 255
osfile_save                             = 0
osfind_close                            = 0
osword_read_clock                       = 1
osword_read_interval_timer              = 3
osword_read_io_memory                   = 5
osword_read_line                        = 0
osword_read_pixel                       = 9
service_star_help_command               = 9
service_unrecognised_star_command       = 4
SUBRF                                   = 8
WARMST                                  = 42
WSBOT                                   = 2

; Memory locations
GCNO    = &0000
GARX    = &0002
GARRY   = &0003
GCA     = &0004
GABBY   = &0006
SA      = &0007
l0009   = &0009
l000a   = &000a
DISPM   = &000b
ERRCNT  = &000d
TOPBIN  = &000f
ERRNO   = &0011
LINEPP  = &0012
HANDLE  = &0013
NBUFF   = &0014
NIND    = &0019
LEVEL   = &001a
OLDEXT  = &001b
END     = &001d
AA      = &001e
AB      = &0020
YSAV    = &0022
XREP    = &0023
LINENO  = &0025
ARG     = &0030
TVS     = &0030
BINDER  = &0032
TVSEXT  = &0033
WSA     = &0034
WSB     = &0036
WSC     = &0038
ARGA    = &003a
ARGB    = &003c
ARGC    = &003e
ARGD    = &0040
ARGE    = &0042
ACL     = &0072
XTNDL   = &0074
AUXL    = &0076
SIGN    = &0078
ARETOP  = &0079
POINT   = &007a
RELBS   = &007a
ROMBS   = &007a
CELL    = &007c
RAMBS   = &007c
RELOC   = &007c
SP      = &007e
SIZE    = &0082
WSD     = &0083
RETADD  = &0085
AD      = &0087
XPR     = &0089
DEPTH   = &008b
LSBUFF  = &008c
POPPY   = &008d
TERMCH  = &008e
ACIN    = &008f
ARGINF  = &0090
OLDLEV  = &0097
CLISTR  = &00f2
BRKAD   = &00fd
KBD     = &00ff
brkv    = &0202
FIRST   = &0400
TUBE    = &0401
ACL40   = &0402
REM40   = &0407
AUX40   = &040c
TEMP40  = &0411
IODCB   = &0416
PWORD   = &041b
GCTIME  = &0420
TIMEW   = &0425
MODEF   = &042a
VECBOT  = &042b
IMBOT   = &042c
AREVAL  = &042d
ESCHF   = &042f
LSCHAR  = &0430
STATYP  = &0431
MEMINV  = &0432
RELOFF  = &0433
GENCNT  = &0434
OSINFO  = &0438
DL      = &0450
DH      = &0520
IMBUF   = &0600
NAMBUF  = &0600
OSWBUF  = &0600
DOSBUF  = &0700
HILISP  = &d700
osfind  = &ffce
osbput  = &ffd4
osbget  = &ffd7
osargs  = &ffda
osfile  = &ffdd
osrdch  = &ffe0
osasci  = &ffe3
oswrch  = &ffee
osword  = &fff1
osbyte  = &fff4
oscli   = &fff7

    org &8000

; Standard language ROM header
.pydis_start
.entry_point
.LISPST
.LISVAL
.ROMHDR
    jmp INITUR                                     ; 8000: 4c 3c 80    L<.

    jmp INITSE                                     ; 8003: 4c 34 81    L4.            ; Service entry

    equb &e2                                       ; 8006: e2          .              ; Language, service & tube
    equb CPYOFF-ROMHDR                             ; 8007: 12          .
    equb 1                                         ; 8008: 01          .              ; ROM version
.TITLE
    equs "LISP"                                    ; 8009: 4c 49 53... LIS
    equb 0                                         ; 800d: 00          .
.VERSN
    equs "4.06"                                    ; 800e: 34 2e 30... 4.0
.CPYOFF
    equb 0                                         ; 8012: 00          .
    equs "(C)1983 Acornsoft/1979 Owl Computers"    ; 8013: 28 43 29... (C)
    equb 0                                         ; 8037: 00          .
.TUBOFF
    equb 0, &80, 0, 0                              ; 8038: 00 80 00... ...            ; Tube load addr


    ; ******************************
    ; Initialisation routine
    ; ******************************
.INITUR
    cmp #1                                         ; 803c: c9 01       ..             ; Satisfactory?
    beq CRYON                                      ; 803e: f0 01       ..
    rts                                            ; 8040: 60          `

.CRYON
    cli                                            ; 8041: 58          X
    cld                                            ; 8042: d8          .
    lda #osbyte_read_high_order_address            ; 8043: a9 82       ..
    jsr osbyte                                     ; 8045: 20 f4 ff     ..            ; Find out if in tube; Read the filing system 'machine high order address'
    stx TUBE                                       ; 8048: 8e 01 04    ...            ; X and Y contain the machine high order address (low, high)
    txa                                            ; 804b: 8a          .
    beq COLD                                       ; 804c: f0 03       ..
    jmp WRMCHK                                     ; 804e: 4c 7b 82    L{.

.COLD
    lda #osbyte_read_oshwm                         ; 8051: a9 83       ..             ; Find PAGE
    jsr osbyte                                     ; 8053: 20 f4 ff     ..            ; Read top of operating system RAM address (OSHWM)
    sty VECBOT                                     ; 8056: 8c 2b 04    .+.            ; X and Y contain the address of OSHWM (low, high)
    cpx #0                                         ; 8059: e0 00       ..
    beq PBOUND                                     ; 805b: f0 03       ..
    inc VECBOT                                     ; 805d: ee 2b 04    .+.            ; Put on page boundary
.PBOUND
    ldy VECBOT                                     ; 8060: ac 2b 04    .+.
    iny                                            ; 8063: c8          .
    iny                                            ; 8064: c8          .
    sty IMBOT                                      ; 8065: 8c 2c 04    .,.

    ; ******************************
    ; Now copy down into RAM
    ; ******************************
    lda #<VECTAB                                   ; 8068: a9 00       ..
    sta ROMBS                                      ; 806a: 85 7a       .z
    sta RAMBS                                      ; 806c: 85 7c       .|
    lda #>VECTAB                                   ; 806e: a9 a4       ..
    sta ROMBS+1                                    ; 8070: 85 7b       .{
    lda VECBOT                                     ; 8072: ad 2b 04    .+.
    sta RAMBS+1                                    ; 8075: 85 7d       .}
    ldx #IMALEN                                    ; 8077: a2 12       ..
    jsr COPY                                       ; 8079: 20 00 81     ..

    ; ******************************
    ; New initialisation routines
    ; ******************************
    lda #0                                         ; 807c: a9 00       ..
    sta MEMINV                                     ; 807e: 8d 32 04    .2.            ; Memory OK
    sta MODEF                                      ; 8081: 8d 2a 04    .*.
    lda #&f0                                       ; 8084: a9 f0       ..
    sta LSBUFF                                     ; 8086: 85 8c       ..             ; Fudge first reads
    lda #&0d                                       ; 8088: a9 0d       ..
    sta LSCHAR                                     ; 808a: 8d 30 04    .0.
    ldx #3                                         ; 808d: a2 03       ..
    lda #'0'                                       ; 808f: a9 30       .0
.LOOP5
    sta GENCNT,x                                   ; 8091: 9d 34 04    .4.
    dex                                            ; 8094: ca          .
    bpl LOOP5                                      ; 8095: 10 fa       ..
    lda TUBE                                       ; 8097: ad 01 04    ...
    beq INTUBE                                     ; 809a: f0 08       ..
    lda #WARMST                                    ; 809c: a9 2a       .*             ; No more to do if in I/O
    sta STATYP                                     ; 809e: 8d 31 04    .1.
    jmp INUREL                                     ; 80a1: 4c 68 8f    Lh.


    ; **** Copy to HILISP
.INTUBE
    lda #<LISPST                                   ; 80a4: a9 00       ..
    sta ROMBS                                      ; 80a6: 85 7a       .z
    lda #>LISPST                                   ; 80a8: a9 80       ..
    sta ROMBS+1                                    ; 80aa: 85 7b       .{
    lda #<HILISP                                   ; 80ac: a9 00       ..
    sta RAMBS                                      ; 80ae: 85 7c       .|
    lda #>HILISP                                   ; 80b0: a9 d7       ..
    sta RAMBS+1                                    ; 80b2: 85 7d       .}
    ldx #(>(LISPEN-LISVAL-1))+1                    ; 80b4: a2 21       .!
    jsr COPY                                       ; 80b6: 20 00 81     ..

    ; **** Change addresses
    lda #<RELTAB                                   ; 80b9: a9 00       ..
    sta RELBS                                      ; 80bb: 85 7a       .z
    lda #>RELTAB                                   ; 80bd: a9 b8       ..
    sta RELBS+1                                    ; 80bf: 85 7b       .{
    lda #>(HILISP-LISVAL)                          ; 80c1: a9 57       .W
    jsr CHADD                                      ; 80c3: 20 11 81     ..

    ; **** Alter vectors for tube
    lda #<VECTAB+2                                 ; 80c6: a9 02       ..
    sta RELBS                                      ; 80c8: 85 7a       .z
    lda VECBOT                                     ; 80ca: ad 2b 04    .+.
    sta RELBS+1                                    ; 80cd: 85 7b       .{
    ldy #0                                         ; 80cf: a0 00       ..
.LOOP3
    lda (RELBS),y                                  ; 80d1: b1 7a       .z
    clc                                            ; 80d3: 18          .
    adc #>(HILISP-LISVAL)                          ; 80d4: 69 57       iW
    sta (RELBS),y                                  ; 80d6: 91 7a       .z
    lda RELBS                                      ; 80d8: a5 7a       .z
    clc                                            ; 80da: 18          .
    adc #3                                         ; 80db: 69 03       i.             ; Next vector
    sta RELBS                                      ; 80dd: 85 7a       .z
    lda RELBS+1                                    ; 80df: a5 7b       .{
    adc #0                                         ; 80e1: 69 00       i.
    sta RELBS+1                                    ; 80e3: 85 7b       .{
    cmp IMBOT                                      ; 80e5: cd 2c 04    .,.
    bne LOOP3                                      ; 80e8: d0 e7       ..
    lda #0                                         ; 80ea: a9 00       ..             ; Prevent warm start offer
    sta STATYP                                     ; 80ec: 8d 31 04    .1.

    ; Do a *GO WRMCHK (via HILISP)
    lda #<HIWARM                                   ; 80ef: a9 7b       .{
    sta HILISP+1                                   ; 80f1: 8d 01 d7    ...
    lda #>HIWARM                                   ; 80f4: a9 d9       ..
    sta HILISP+2                                   ; 80f6: 8d 02 d7    ...
    ldx #<(GOSTR)                                  ; 80f9: a2 31       .1
    ldy #>(GOSTR)                                  ; 80fb: a0 82       ..
    jsr oscli                                      ; 80fd: 20 f7 ff     ..

    ; General copy routine
.COPY
    ldy #0                                         ; 8100: a0 00       ..
.LOOP1
    lda (ROMBS),y                                  ; 8102: b1 7a       .z
    sta (RAMBS),y                                  ; 8104: 91 7c       .|
    iny                                            ; 8106: c8          .
    bne LOOP1                                      ; 8107: d0 f9       ..
    inc RAMBS+1                                    ; 8109: e6 7d       .}
    inc ROMBS+1                                    ; 810b: e6 7b       .{
    dex                                            ; 810d: ca          .
    bne LOOP1                                      ; 810e: d0 f2       ..
    rts                                            ; 8110: 60          `


    ; Address change routine
.CHADD
    sta RELOFF                                     ; 8111: 8d 33 04    .3.
    ldx #0                                         ; 8114: a2 00       ..
    ldy #0                                         ; 8116: a0 00       ..
.LOOP2
    lda (RELBS),y                                  ; 8118: b1 7a       .z
    sta RELOC                                      ; 811a: 85 7c       .|
    iny                                            ; 811c: c8          .
    lda (RELBS),y                                  ; 811d: b1 7a       .z
    beq CHRTS                                      ; 811f: f0 12       ..
    sta RELOC+1                                    ; 8121: 85 7d       .}
    lda (RELOC,x)                                  ; 8123: a1 7c       .|
    clc                                            ; 8125: 18          .
    adc RELOFF                                     ; 8126: 6d 33 04    m3.
    sta (RELOC,x)                                  ; 8129: 81 7c       .|
    iny                                            ; 812b: c8          .
    bne LOOP2                                      ; 812c: d0 ea       ..
    inc RELBS+1                                    ; 812e: e6 7b       .{
    jmp LOOP2                                      ; 8130: 4c 18 81    L..

.CHRTS
    rts                                            ; 8133: 60          `


    ; ******************************
    ; Claim as service
    ; ******************************
.INITSE
    cmp #service_unrecognised_star_command         ; 8134: c9 04       ..             ; Reasonable?
    beq OKCALL                                     ; 8136: f0 1b       ..
    cmp #service_star_help_command                 ; 8138: c9 09       ..             ; Help?
    beq HELP                                       ; 813a: f0 01       ..
    rts                                            ; 813c: 60          `

.HELP
    pha                                            ; 813d: 48          H
    txa                                            ; 813e: 8a          .
    pha                                            ; 813f: 48          H
    tya                                            ; 8140: 98          .
    pha                                            ; 8141: 48          H              ; Mustn't corrupt zero page
    lda HANDLE                                     ; 8142: a5 13       ..
    pha                                            ; 8144: 48          H
    ldx #HLPOFF                                    ; 8145: a2 8e       ..
    jsr MESSAH                                     ; 8147: 20 fc 84     ..
    pla                                            ; 814a: 68          h
    sta HANDLE                                     ; 814b: 85 13       ..
    pla                                            ; 814d: 68          h
    tay                                            ; 814e: a8          .
    pla                                            ; 814f: 68          h
    tax                                            ; 8150: aa          .
    pla                                            ; 8151: 68          h
    rts                                            ; 8152: 60          `

.OKCALL
    pha                                            ; 8153: 48          H
    tya                                            ; 8154: 98          .
    pha                                            ; 8155: 48          H
    txa                                            ; 8156: 8a          .
    pha                                            ; 8157: 48          H
    lda (CLISTR),y                                 ; 8158: b1 f2       ..
    cmp #'L'                                       ; 815a: c9 4c       .L
    bne NOTLSP                                     ; 815c: d0 34       .4
    iny                                            ; 815e: c8          .
    lda (CLISTR),y                                 ; 815f: b1 f2       ..
    cmp #'I'                                       ; 8161: c9 49       .I
    bne NOTLSP                                     ; 8163: d0 2d       .-
    iny                                            ; 8165: c8          .
    lda (CLISTR),y                                 ; 8166: b1 f2       ..
    cmp #'S'                                       ; 8168: c9 53       .S
    bne NOTLSP                                     ; 816a: d0 26       .&
    iny                                            ; 816c: c8          .
    lda (CLISTR),y                                 ; 816d: b1 f2       ..
    cmp #'P'                                       ; 816f: c9 50       .P
    bne NOTLSP                                     ; 8171: d0 1f       ..
    iny                                            ; 8173: c8          .
    lda (CLISTR),y                                 ; 8174: b1 f2       ..
    cmp #&0d                                       ; 8176: c9 0d       ..
    bne NOTLSP                                     ; 8178: d0 18       ..
    lda #osbyte_read_tube_presence                 ; 817a: a9 ea       ..
    ldx #0                                         ; 817c: a2 00       ..
    ldy #&ff                                       ; 817e: a0 ff       ..
    jsr osbyte                                     ; 8180: 20 f4 ff     ..            ; Is there a tube?; Read Tube present flag
    txa                                            ; 8183: 8a          .              ; X=value of Tube present flag
    bne STLISP                                     ; 8184: d0 05       ..             ; If so don't flag
    lda #COLDST                                    ; 8186: a9 00       ..
    sta STATYP                                     ; 8188: 8d 31 04    .1.
.STLISP
    pla                                            ; 818b: 68          h
    tax                                            ; 818c: aa          .              ; X=ROM number
    lda #osbyte_enter_language                     ; 818d: a9 8e       ..
    jmp osbyte                                     ; 818f: 4c f4 ff    L..            ; Start up LISP; Enter language ROM X

.NOTLSP
    pla                                            ; 8192: 68          h
    tax                                            ; 8193: aa          .
    pla                                            ; 8194: 68          h
    tay                                            ; 8195: a8          .
    pla                                            ; 8196: 68          h
    rts                                            ; 8197: 60          `


    ; ******************************
    ; These are LISP's tables
    ; ******************************
    ; **** The text messages
.TEXT
    equs &0d, &0d, "Evaluate :", &80+' '           ; 8198: 0d 0d 45... ..E
.VALTXT
    equs &0d, "Value is :", &80+' '                ; 81a5: 0d 56 61... .Va
.NILTXT
    equs "NI", &80+'L'                             ; 81b1: 4e 49 cc    NI.
.DOTTXT
    equs " .", &80+' '                             ; 81b4: 20 2e a0     ..
.INSTXT
    equs &0d, "Insufficient memor", &80+'y'        ; 81b7: 0d 49 6e... .In
.GCTXT
    equs &0d, "G.C. ", &80+'#'                     ; 81cb: 0d 47 2e... .G.
.COLTXT
    equs " Bytes collected,", &80+' '              ; 81d2: 20 42 79...  By
.FRTXT
    equs " Bytes free", &80+&0d                    ; 81e4: 20 42 79...  By
.SUBTXT
    equs "Subr", &80+'#'                           ; 81f0: 53 75 62... Sub
.ERRTXT
    equs &0d, "Error number", &80+' '              ; 81f5: 0d 45 72... .Er
.ARGTXT
    equs &0d, "Arg :", &80+' '                     ; 8203: 0d 41 72... .Ar
.WRMTXT
    equs &0d, "Warm or cold start (W/C) ?", &80+' '; 820a: 0d 57 61... .Wa
.HLPTXT
    equs &0d, "LISP 4.06", &80+&0d                 ; 8226: 0d 4c 49... .LI

    ; **** Command lines
.GOSTR
    equs "GO D700"                                 ; 8231: 47 4f 20... GO
    equb &0d                                       ; 8238: 0d          .
.LISTR
    equs "LISP"                                    ; 8239: 4c 49 53... LIS
    equb &0d                                       ; 823d: 0d          .

    ; **** Readline control block
.INCB
    equw DOSBUF                                    ; 823e: 00 07       ..             ; Buffer address for input (2 bytes)
    equb &7f                                       ; 8240: 7f          .              ; Max line length; Maximum line length
    equb &20                                       ; 8241: 20                         ; Min. acceptable character value
    equb &7f                                       ; 8242: 7f          .              ; Max. acceptable character value

    ; **** Terminators
.TERMS
    equs "). ("                                    ; 8243: 29 2e 20... ).
    equb &0d, &0a, &21, &27                        ; 8247: 0d 0a 21... ..!

    ; **** CAR/CDR table
.CXXXR
    equb 0, 2, 2, 2, 0, 4, 2, 2, 0, 2, 4, 2, 0, 4  ; 824b: 00 02 02... ...
    equb 4, 2, 0, 2, 2, 4, 0, 4, 2, 4, 0, 2, 4, 4  ; 8259: 04 02 00... ...
    equb 0, 4, 4, 4                                ; 8267: 00 04 04... ...

    ; **** Table of CHARS lengths
.LENTAB
    equb 3, 6, 9, &0a, 0                           ; 826b: 03 06 09... ...

    ; **** Untraceable errors
.CATTAB
    equb 0, 1, 2, &0b, &0c, &ff                    ; 8270: 00 01 02... ...

    ; **** Zero time
.TIMZER
    equb 0, 0, 0, 0, 0                             ; 8276: 00 00 00... ...


    ; ******************************
    ; Routine to give optionsl warm
    ; start (ie OBLIST retained)
    ; ******************************
.WRMCHK
    lda STATYP                                     ; 827b: ad 31 04    .1.
    cmp #WARMST                                    ; 827e: c9 2a       .*
    bne NOTWRM                                     ; 8280: d0 03       ..
    jmp WARM                                       ; 8282: 4c 95 82    L..            ; Offer warm start

.NOTWRM
    lda TUBE                                       ; 8285: ad 01 04    ...
    bne COLD1                                      ; 8288: d0 08       ..
    lda #WARMST                                    ; 828a: a9 2a       .*             ; We're in tube and
    sta STATYP                                     ; 828c: 8d 31 04    .1.            ; it's first time through
    jmp INUREL                                     ; 828f: 4c 68 8f    Lh.

.COLD1
    jmp COLD                                       ; 8292: 4c 51 80    LQ.

.WARM
    lda MEMINV                                     ; 8295: ad 32 04    .2.
    bne REBOOT                                     ; 8298: d0 1a       ..
    ldx #WRMOFF                                    ; 829a: a2 72       .r
    jsr MESSAH                                     ; 829c: 20 fc 84     ..
    jsr osrdch                                     ; 829f: 20 e0 ff     ..            ; Read a character from the current input stream
    and #&7f                                       ; 82a2: 29 7f       ).
    cmp #'C'                                       ; 82a4: c9 43       .C
    beq REBOOT                                     ; 82a6: f0 0c       ..
    cmp #'c'                                       ; 82a8: c9 63       .c
    beq REBOOT                                     ; 82aa: f0 08       ..
    lda #'W'                                       ; 82ac: a9 57       .W
    jsr oswrch                                     ; 82ae: 20 ee ff     ..            ; Write character 87
    jmp INIT                                       ; 82b1: 4c b5 84    L..


    ; **** Reload from ROM
.REBOOT
    lda #'C'                                       ; 82b4: a9 43       .C
    jsr oswrch                                     ; 82b6: 20 ee ff     ..            ; Write character 67
    jsr CROUT                                      ; 82b9: 20 19 85     ..
    jsr CROUT                                      ; 82bc: 20 19 85     ..
    ldx #<(LISTR)                                  ; 82bf: a2 39       .9
    ldy #>(LISTR)                                  ; 82c1: a0 82       ..
    jmp oscli                                      ; 82c3: 4c f7 ff    L..


    ; ******************************
    ; This is the main LISP
    ; supervisor loop which is
    ; entered when LISP is called.
    ; ******************************
.SUPER
    lda #0                                         ; 82c6: a9 00       ..             ; Reset stack
    sta SP                                         ; 82c8: 85 7e       .~
    lda ARETOP                                     ; 82ca: a5 79       .y
    sta SP+1                                       ; 82cc: 85 7f       ..
    ldx #&ff                                       ; 82ce: a2 ff       ..             ; Reset hardware stack
    txs                                            ; 82d0: 9a          .
    lda MODEF                                      ; 82d1: ad 2a 04    .*.            ; Check mode flag
    bpl EVPR                                       ; 82d4: 10 03       ..
    jsr MODCHN                                     ; 82d6: 20 8b 97     ..            ;  Change mode
.EVPR
    ldx #EVOFF                                     ; 82d9: a2 00       ..
    jsr MESSAH                                     ; 82db: 20 fc 84     ..            ; Evaluate:
    jsr RSREAD                                     ; 82de: 20 c3 87     ..            ; Read expression
    jsr EVALU                                      ; 82e1: 20 39 85     9.            ; Evaluate it
    ldx #VALOFF                                    ; 82e4: a2 0d       ..             ; Value is:
    jsr MESSAH                                     ; 82e6: 20 fc 84     ..
    jsr PRINA                                      ; 82e9: 20 81 8b     ..            ; and print it
    jmp SUPER                                      ; 82ec: 4c c6 82    L..            ; Repeat ad infinitum


    ; ******************************
    ; Here are some condition
    ; routines taking advantage
    ; of POP
    ; ******************************
    ; **** ATOM
.ATOM
    lda ARGA+1                                     ; 82ef: a5 3b       .;             ; Is ARGA atom?
    beq YES                                        ; 82f1: f0 3e       .>             ; NIL => yes
    ldy #0                                         ; 82f3: a0 00       ..
    lda (ARGA),y                                   ; 82f5: b1 3a       .:             ; check bit 7
    bpl YES                                        ; 82f7: 10 38       .8
    bmi NO                                         ; 82f9: 30 32       02             ; ALWAYS branch


    ; **** EQ
.EQ
    lda ARGB+1                                     ; 82fb: a5 3d       .=             ; ARGA = ARGB?
    beq NULL                                       ; 82fd: f0 2a       .*             ; ARGB NIL => ARGA NIL
    cmp ARGA+1                                     ; 82ff: c5 3b       .;
    bne EQUATE                                     ; 8301: d0 06       ..             ; But they are numeric
    lda ARGB                                       ; 8303: a5 3c       .<
    cmp ARGA                                       ; 8305: c5 3a       .:
    beq YES                                        ; 8307: f0 28       .(
.EQUATE
    ldy #0                                         ; 8309: a0 00       ..             ; Fudge for nums
    lda (ARGA),y                                   ; 830b: b1 3a       .:
    cmp #NUMF                                      ; 830d: c9 04       ..             ; Both must be nums
    bne NO                                         ; 830f: d0 1c       ..
    cmp (ARGB),y                                   ; 8311: d1 3c       .<
    bne NO                                         ; 8313: d0 18       ..
    iny                                            ; 8315: c8          .              ; Y=&01
    lda (ARGA),y                                   ; 8316: b1 3a       .:
    cmp (ARGB),y                                   ; 8318: d1 3c       .<             ; Same length?
    bne NO                                         ; 831a: d0 11       ..
    tay                                            ; 831c: a8          .
    dey                                            ; 831d: 88          .
.EQUINE
    lda (ARGA),y                                   ; 831e: b1 3a       .:             ; Compare value
    cmp (ARGB),y                                   ; 8320: d1 3c       .<
    bne NO                                         ; 8322: d0 09       ..
    dey                                            ; 8324: 88          .
    bne EQUINE                                     ; 8325: d0 f7       ..
    beq YES                                        ; 8327: f0 08       ..             ; ALWAYS branch


    ; **** NULL
.NULL
    lda ARGA+1                                     ; 8329: a5 3b       .;             ; Is ARGA NIL?
    beq YES                                        ; 832b: f0 04       ..
.NO
    lda #0                                         ; 832d: a9 00       ..             ; Returns NIL
    beq POPA                                       ; 832f: f0 07       ..             ; ALWAYS branch

.YES
    lda #<CTRUE                                    ; 8331: a9 11       ..             ; Returns T
    sta ARG                                        ; 8333: 85 30       .0
    lda IMBOT                                      ; 8335: ad 2c 04    .,.
.POPA
    sta ARG+1                                      ; 8338: 85 31       .1

    ; ******************************
    ; POP is one of the two LISP
    ; stack handling routines. It
    ; restores old binding values
    ; and WSA, WSB and WSC from the
    ; stack and POP the stack. ARG
    ; is unchanged.
    ; ******************************
.POP
    ldy #0                                         ; 833a: a0 00       ..             ; Get binding size
    lda (SP),y                                     ; 833c: b1 7e       .~
    beq NOBOUN                                     ; 833e: f0 2b       .+             ; No bindings to do
    tay                                            ; 8340: a8          .
.POPPLE
    lda (SP),y                                     ; 8341: b1 7e       .~
    sta RETADD+1                                   ; 8343: 85 86       ..             ; Get atom
    dey                                            ; 8345: 88          .
    lda (SP),y                                     ; 8346: b1 7e       .~
    sta RETADD                                     ; 8348: 85 85       ..
    dey                                            ; 834a: 88          .
    lda (SP),y                                     ; 834b: b1 7e       .~             ; Get old value
    tax                                            ; 834d: aa          .              ; into A,X
    dey                                            ; 834e: 88          .
    lda (SP),y                                     ; 834f: b1 7e       .~
    dey                                            ; 8351: 88          .
    sty POPPY                                      ; 8352: 84 8d       ..             ; Save Y
    ldy #2                                         ; 8354: a0 02       ..             ; Put value back
    sta (RETADD),y                                 ; 8356: 91 85       ..             ; into atom value
    iny                                            ; 8358: c8          .              ; cell; Y=&03
    txa                                            ; 8359: 8a          .
    sta (RETADD),y                                 ; 835a: 91 85       ..
    ldy POPPY                                      ; 835c: a4 8d       ..             ; Fetch Y back
    bne POPPLE                                     ; 835e: d0 e1       ..             ; More bindings?
    lda (SP),y                                     ; 8360: b1 7e       .~
    clc                                            ; 8362: 18          .              ; Set stack pointer
    adc SP                                         ; 8363: 65 7e       e~             ; to bottom of work-
    sta SP                                         ; 8365: 85 7e       .~             ; Space area as if
    bcc NOBOUN                                     ; 8367: 90 02       ..             ; there were no binds
    inc SP+1                                       ; 8369: e6 7f       ..
.NOBOUN
    iny                                            ; 836b: c8          .              ; Now Y = 1
    lda (SP),y                                     ; 836c: b1 7e       .~
    tay                                            ; 836e: a8          .              ; Index for top space
    dey                                            ; 836f: 88          .
    lda (SP),y                                     ; 8370: b1 7e       .~             ; Push return addr
    pha                                            ; 8372: 48          H
    dey                                            ; 8373: 88          .
    lda (SP),y                                     ; 8374: b1 7e       .~
    pha                                            ; 8376: 48          H
    dey                                            ; 8377: 88          .
.MORSP
    lda (SP),y                                     ; 8378: b1 7e       .~             ; Copy back TVS
    sta BINDER,y                                   ; 837a: 99 32 00    .2.            ; WSA, WSB and WSC
    dey                                            ; 837d: 88          .
    bne MORSP                                      ; 837e: d0 f8       ..
    sec                                            ; 8380: 38          8              ; Add TVSEXT + 2 to stack
    lda SP                                         ; 8381: a5 7e       .~             ; pointer to POP the stack
    adc TVSEXT                                     ; 8383: 65 33       e3
    bcs TVF                                        ; 8385: b0 05       ..
    adc #1                                         ; 8387: 69 01       i.
    bcc TVG                                        ; 8389: 90 05       ..
    clc                                            ; 838b: 18          .
.TVF
    adc #0                                         ; 838c: 69 00       i.
    inc SP+1                                       ; 838e: e6 7f       ..
.TVG
    sta SP                                         ; 8390: 85 7e       .~
    rts                                            ; 8392: 60          `


    ; ******************************
    ; STACK stores:
    ;    Extent of TVS, WSA, WSB,
    ;    WSC, ARG and return addr
    ;     on the LISP stack
    ; ******************************
.STACK
    lda SP                                         ; 8393: a5 7e       .~
    clc                                            ; 8395: 18          .
    sbc TVSEXT                                     ; 8396: e5 33       .3
    tax                                            ; 8398: aa          .
    bne EXTRAM                                     ; 8399: d0 01       ..
    clc                                            ; 839b: 18          .
.EXTRAM
    dex                                            ; 839c: ca          .
    lda SP+1                                       ; 839d: a5 7f       ..
    sbc #0                                         ; 839f: e9 00       ..
    cmp AREVAL+1                                   ; 83a1: cd 2e 04    ...
    bcc SQUAT                                      ; 83a4: 90 07       ..
    bne SROOM                                      ; 83a6: d0 14       ..
    cpx AREVAL                                     ; 83a8: ec 2d 04    .-.
    bcs SROOM                                      ; 83ab: b0 0f       ..
.SQUAT
    jsr RUBBSH                                     ; 83ad: 20 46 9b     F.
    bne STACK                                      ; 83b0: d0 e1       ..
.STIR
    brk                                            ; 83b2: 00          .              ; None found

    equb 0                                         ; 83b3: 00          .
    equs "No room"                                 ; 83b4: 4e 6f 20... No
    equb 0                                         ; 83bb: 00          .

.SROOM
    sta SP+1                                       ; 83bc: 85 7f       ..
    stx SP                                         ; 83be: 86 7e       .~
    pla                                            ; 83c0: 68          h
    sta RETADD                                     ; 83c1: 85 85       ..
    pla                                            ; 83c3: 68          h
    tax                                            ; 83c4: aa          .
    ldy TVSEXT                                     ; 83c5: a4 33       .3
    iny                                            ; 83c7: c8          .
    lda ARG+1                                      ; 83c8: a5 31       .1             ; Store ARG
    sta (SP),y                                     ; 83ca: 91 7e       .~
    dey                                            ; 83cc: 88          .
    lda ARG                                        ; 83cd: a5 30       .0
    sta (SP),y                                     ; 83cf: 91 7e       .~
    dey                                            ; 83d1: 88          .
    dey                                            ; 83d2: 88          .
    pla                                            ; 83d3: 68          h              ; Store return addr
    sta (SP),y                                     ; 83d4: 91 7e       .~
    iny                                            ; 83d6: c8          .
    pla                                            ; 83d7: 68          h
    sta (SP),y                                     ; 83d8: 91 7e       .~
    dey                                            ; 83da: 88          .
    dey                                            ; 83db: 88          .
.PILE
    lda BINDER,y                                   ; 83dc: b9 32 00    .2.
    sta (SP),y                                     ; 83df: 91 7e       .~
    dey                                            ; 83e1: 88          .
    bpl PILE                                       ; 83e2: 10 f8       ..
    txa                                            ; 83e4: 8a          .
    pha                                            ; 83e5: 48          H
    lda RETADD                                     ; 83e6: a5 85       ..
    pha                                            ; 83e8: 48          H
    rts                                            ; 83e9: 60          `


    ; ******************************
    ; BIND adds a 'new value' to the
    ; bottom of the stack:
    ;   WSD     - Pointer to atom
    ;   TVS + X - New value
    ; ******************************
.BIND
    lda SP                                         ; 83ea: a5 7e       .~
    sec                                            ; 83ec: 38          8
    sbc #4                                         ; 83ed: e9 04       ..
    tay                                            ; 83ef: a8          .
    lda SP+1                                       ; 83f0: a5 7f       ..
    sbc #0                                         ; 83f2: e9 00       ..
    cmp AREVAL+1                                   ; 83f4: cd 2e 04    ...
    bcc SQUASH                                     ; 83f7: 90 07       ..
    bne XROOM                                      ; 83f9: d0 14       ..
    cpy AREVAL                                     ; 83fb: cc 2d 04    .-.
    bcs XROOM                                      ; 83fe: b0 0f       ..
.SQUASH
    jsr RUBBSH                                     ; 8400: 20 46 9b     F.
    bne BIND                                       ; 8403: d0 e5       ..
.BEAR
    brk                                            ; 8405: 00          .              ; None found

    equb 1                                         ; 8406: 01          .
    equs "No room"                                 ; 8407: 4e 6f 20... No
    equb 0                                         ; 840e: 00          .

.XROOM
    sta SP+1                                       ; 840f: 85 7f       ..
    sty SP                                         ; 8411: 84 7e       .~
    ldy #4                                         ; 8413: a0 04       ..
    lda (SP),y                                     ; 8415: b1 7e       .~
    adc #3                                         ; 8417: 69 03       i.             ; Carry is set
    pha                                            ; 8419: 48          H
    lda WSD+1                                      ; 841a: a5 84       ..
    sta (SP),y                                     ; 841c: 91 7e       .~
    dey                                            ; 841e: 88          .              ; Y=&03
    lda WSD                                        ; 841f: a5 83       ..
    sta (SP),y                                     ; 8421: 91 7e       .~
    lda (WSD),y                                    ; 8423: b1 83       ..             ; Old value and atom
    dey                                            ; 8425: 88          .              ; Y=&02
    sta (SP),y                                     ; 8426: 91 7e       .~             ; on stack
    lda (WSD),y                                    ; 8428: b1 83       ..
    dey                                            ; 842a: 88          .              ; Y=&01
    sta (SP),y                                     ; 842b: 91 7e       .~
    dey                                            ; 842d: 88          .              ; Y=&00
    pla                                            ; 842e: 68          h
    sta (SP),y                                     ; 842f: 91 7e       .~             ; Bound var size
    ldy #2                                         ; 8431: a0 02       ..
    lda TVS,x                                      ; 8433: b5 30       .0             ; New value in atom
    sta (WSD),y                                    ; 8435: 91 83       ..
    iny                                            ; 8437: c8          .              ; Y=&03
    lda TVS+1,x                                    ; 8438: b5 31       .1
    sta (WSD),y                                    ; 843a: 91 83       ..
    rts                                            ; 843c: 60          `


    ; ******************************
    ; Here is the space allocator
    ; routine. If allocates up to
    ; 256 bytes of initialized store
    ; ******************************
.ALNUM
    lda #4                                         ; 843d: a9 04       ..
.ALVEC
    ldx #NUMF                                      ; 843f: a2 04       ..
    bne SPACE                                      ; 8441: d0 14       ..             ; ALWAYS branch

.ALCHAR
    ldx #CHARF                                     ; 8443: a2 00       ..
    beq SPACE                                      ; 8445: f0 10       ..             ; ALWAYS branch

.ALFSBR
    ldx #FSUBRF                                    ; 8447: a2 0c       ..
    lda #6                                         ; 8449: a9 06       ..
    bne SPACE                                      ; 844b: d0 0a       ..             ; ALWAYS branch

.ALSUBR
    ldx #SUBRF                                     ; 844d: a2 08       ..
    lda #6                                         ; 844f: a9 06       ..
    bne SPACE                                      ; 8451: d0 04       ..             ; ALWAYS branch

.ALPAIR
    lda #5                                         ; 8453: a9 05       ..
    ldx #&80                                       ; 8455: a2 80       ..             ; Pointer space
.SPACE
    sta SIZE                                       ; 8457: 85 82       ..
.SPACEB
    clc                                            ; 8459: 18          .
    lda AREVAL                                     ; 845a: ad 2d 04    .-.
    sta POINT                                      ; 845d: 85 7a       .z
    adc SIZE                                       ; 845f: 65 82       e.
    tay                                            ; 8461: a8          .
    lda AREVAL+1                                   ; 8462: ad 2e 04    ...
    sta POINT+1                                    ; 8465: 85 7b       .{
    adc #0                                         ; 8467: 69 00       i.
    cmp SP+1                                       ; 8469: c5 7f       ..
    bcc ROOM                                       ; 846b: 90 15       ..
    bne SQUID                                      ; 846d: d0 04       ..
    cpy SP                                         ; 846f: c4 7e       .~
    bcc ROOM                                       ; 8471: 90 0f       ..
.SQUID
    jsr RUBBSH                                     ; 8473: 20 46 9b     F.
    bne SPACEB                                     ; 8476: d0 e1       ..
.ALLO
    brk                                            ; 8478: 00          .              ; None found

    equb 2                                         ; 8479: 02          .
    equs "No room"                                 ; 847a: 4e 6f 20... No
    equb 0                                         ; 8481: 00          .

.ROOM
    sta AREVAL+1                                   ; 8482: 8d 2e 04    ...
    sty AREVAL                                     ; 8485: 8c 2d 04    .-.
    ldy #0                                         ; 8488: a0 00       ..
    txa                                            ; 848a: 8a          .
    sta (POINT),y                                  ; 848b: 91 7a       .z
    bmi PINS                                       ; 848d: 30 1b       0.
    bne OBSCUR                                     ; 848f: d0 12       ..
    ldy #5                                         ; 8491: a0 05       ..
    lda #0                                         ; 8493: a9 00       ..
    sta (POINT),y                                  ; 8495: 91 7a       .z
    ldy #2                                         ; 8497: a0 02       ..
    lda #<ZA                                       ; 8499: a9 02       ..             ; UNDEFINED
    sta (POINT),y                                  ; 849b: 91 7a       .z
    iny                                            ; 849d: c8          .              ; Y=&03
    lda IMBOT                                      ; 849e: ad 2c 04    .,.
    sta (POINT),y                                  ; 84a1: 91 7a       .z
.OBSCUR
    ldy #1                                         ; 84a3: a0 01       ..
    lda SIZE                                       ; 84a5: a5 82       ..
    sta (POINT),y                                  ; 84a7: 91 7a       .z
    rts                                            ; 84a9: 60          `

.PINS
    lda #0                                         ; 84aa: a9 00       ..
    ldy #2                                         ; 84ac: a0 02       ..
    sta (POINT),y                                  ; 84ae: 91 7a       .z             ; Initial NIL point
    ldy #4                                         ; 84b0: a0 04       ..
    sta (POINT),y                                  ; 84b2: 91 7a       .z
    rts                                            ; 84b4: 60          `


    ; ******************************
    ; Here are the initialisation
    ; routines
    ; ******************************
.INIT
    lda #<ERROR                                    ; 84b5: a9 87       ..
    sta brkv                                       ; 84b7: 8d 02 02    ...            ; Error handling
    lda #>ERROR                                    ; 84ba: a9 9e       ..
    sta brkv+1                                     ; 84bc: 8d 03 02    ...
    lda #osbyte_read_himem                         ; 84bf: a9 84       ..             ; Find end of memory
    jsr osbyte                                     ; 84c1: 20 f4 ff     ..            ; Read top of user memory (HIMEM)
    sty ARETOP                                     ; 84c4: 84 79       .y             ; X and Y contain the address of HIMEM (low, high)

    ; **** Set up various values
    lda #&fc                                       ; 84c6: a9 fc       ..             ; Messages except GC
    sta LEVEL                                      ; 84c8: 85 1a       ..
    ldx #0                                         ; 84ca: a2 00       ..
    stx HANDLE                                     ; 84cc: 86 13       ..             ; Output to screen
    stx GCNO                                       ; 84ce: 86 00       ..             ; Zero collections
    stx GCNO+1                                     ; 84d0: 86 01       ..
    stx ERRCNT                                     ; 84d2: 86 0d       ..             ; Zero error count
    stx ERRCNT+1                                   ; 84d4: 86 0e       ..
    ldy #&10                                       ; 84d6: a0 10       ..             ; Clear TVS etc.
.ZLP
    stx TVS,y                                      ; 84d8: 96 30       .0
    dey                                            ; 84da: 88          .
    bpl ZLP                                        ; 84db: 10 fb       ..
    lda #&0a                                       ; 84dd: a9 0a       ..             ; Initially no args
    sta TVSEXT                                     ; 84df: 85 33       .3
    jsr GCTIMZ                                     ; 84e1: 20 d6 98     ..            ; Zero GC time
    jsr STCLK                                      ; 84e4: 20 c8 98     ..            ; Zero time
    lda #<KBD                                      ; 84e7: a9 ff       ..             ; Set up Escape check
    sta IODCB                                      ; 84e9: 8d 16 04    ...
    lda #>KBD                                      ; 84ec: a9 00       ..
    sta IODCB+1                                    ; 84ee: 8d 17 04    ...
    lda #0                                         ; 84f1: a9 00       ..
    sta IODCB+2                                    ; 84f3: 8d 18 04    ...
    sta IODCB+3                                    ; 84f6: 8d 19 04    ...
    jmp SUPER                                      ; 84f9: 4c c6 82    L..            ; Enter supervisor


    ; **** Message handler
.MESSAH
    ldy #0                                         ; 84fc: a0 00       ..
.MESSAI
    sty HANDLE                                     ; 84fe: 84 13       ..
.MESSAG
    lda TEXT,x                                     ; 8500: bd 98 81    ...            ; Print message
    php                                            ; 8503: 08          .
    and #&7f                                       ; 8504: 29 7f       ).             ; Remove flag bit
    jsr OUT                                        ; 8506: 20 0e 85     ..
    inx                                            ; 8509: e8          .
    plp                                            ; 850a: 28          (              ; Retrieve flag
    bpl MESSAG                                     ; 850b: 10 f3       ..             ; Bit 7 not set
    rts                                            ; 850d: 60          `

.OUT
    ldy HANDLE                                     ; 850e: a4 13       ..             ; to screen?; Y=file handle
    beq OUTSCR                                     ; 8510: f0 03       ..
    jmp osbput                                     ; 8512: 4c d4 ff    L..            ; Write a single byte A to an open file Y

.OUTSCR
    cmp #&0d                                       ; 8515: c9 0d       ..
    bne NCR                                        ; 8517: d0 02       ..
.CROUT
    lda #&0d                                       ; 8519: a9 0d       ..
.NCR
    jmp osasci                                     ; 851b: 4c e3 ff    L..            ; Print the char; Write character 13


    ; ******************************
    ; Main evaluation routine
    ;    arg           -> ARG
    ;    NIL           -> NIL
    ;    number, entry -> same
    ;    char          -> same
    ;    list          -> eval fn
    ; ******************************
.NXEVAL
    lda WSA+1                                      ; 851e: a5 35       .5
    bne NXEVAM                                     ; 8520: d0 14       ..
.FSARG
    brk                                            ; 8522: 00          .              ; No more args

    equb 3                                         ; 8523: 03          .
    equs "Too few arguments"                       ; 8524: 54 6f 6f... Too
    equb 0                                         ; 8535: 00          .

.NXEVAM
    jsr NXTARH                                     ; 8536: 20 f5 88     ..

    ; **** Main evaluator
.EVALU
    jsr KBCHK                                      ; 8539: 20 47 85     G.            ; Main entry
    beq EVAL1                                      ; 853c: f0 18       ..
    brk                                            ; 853e: 00          .              ; Escape

    equb 4                                         ; 853f: 04          .
    equs "Escape"                                  ; 8540: 45 73 63... Esc
    equb 0                                         ; 8546: 00          .

.KBCHK
    ldx #<(IODCB)                                  ; 8547: a2 16       ..
    ldy #>(IODCB)                                  ; 8549: a0 04       ..
    lda #osword_read_io_memory                     ; 854b: a9 05       ..
    jsr osword                                     ; 854d: 20 f1 ff     ..            ; Read byte of I/O processor memory
    lda #&80                                       ; 8550: a9 80       ..
    and IODCB+4                                    ; 8552: 2d 1a 04    -..
    rts                                            ; 8555: 60          `

.EVAL1
    lda ARG+1                                      ; 8556: a5 31       .1
    beq EVARTS                                     ; 8558: f0 51       .Q             ; NIL?
    ldy #0                                         ; 855a: a0 00       ..
    lda (ARG),y                                    ; 855c: b1 30       .0             ; Check type
    bmi EVLIST                                     ; 855e: 30 0f       0.
    bne EVARTS                                     ; 8560: d0 49       .I
    ldy #2                                         ; 8562: a0 02       ..
    lda (ARG),y                                    ; 8564: b1 30       .0
    tax                                            ; 8566: aa          .
    iny                                            ; 8567: c8          .              ; Get value cell; Y=&03
    lda (ARG),y                                    ; 8568: b1 30       .0
    stx ARG                                        ; 856a: 86 30       .0
    sta ARG+1                                      ; 856c: 85 31       .1
    rts                                            ; 856e: 60          `

.EVLIST
    jsr STACK                                      ; 856f: 20 93 83     ..
    ldy #4                                         ; 8572: a0 04       ..
    lda (ARG),y                                    ; 8574: b1 30       .0
    sta WSA+1                                      ; 8576: 85 35       .5
    dey                                            ; 8578: 88          .              ; Y=&03
    lda (ARG),y                                    ; 8579: b1 30       .0
    sta WSA                                        ; 857b: 85 34       .4
    dey                                            ; 857d: 88          .              ; Y=&02
    lda (ARG),y                                    ; 857e: b1 30       .0
    tax                                            ; 8580: aa          .
    dey                                            ; 8581: 88          .              ; Y=&01
    lda (ARG),y                                    ; 8582: b1 30       .0
    stx ARG+1                                      ; 8584: 86 31       .1
    sta ARG                                        ; 8586: 85 30       .0
    jsr FUN                                        ; 8588: 20 ac 85     ..
    jsr EVALU                                      ; 858b: 20 39 85     9.
    jsr FUN                                        ; 858e: 20 ac 85     ..
    jsr EVALU                                      ; 8591: 20 39 85     9.
    jsr FUN                                        ; 8594: 20 ac 85     ..
.FUNERR
    brk                                            ; 8597: 00          .              ; Can't make function

    equb 6                                         ; 8598: 06          .
    equs "Function expected"                       ; 8599: 46 75 6e... Fun
    equb 0                                         ; 85aa: 00          .

.EVARTS
    rts                                            ; 85ab: 60          `

.FUN
    lda ARG+1                                      ; 85ac: a5 31       .1
    beq FUNERR                                     ; 85ae: f0 e7       ..
    ldy #0                                         ; 85b0: a0 00       ..
    lda (ARG),y                                    ; 85b2: b1 30       .0
    beq EVARTS                                     ; 85b4: f0 f5       ..             ; Char atom
    bpl ENT                                        ; 85b6: 10 12       ..
    iny                                            ; 85b8: c8          .              ; Lambda?; Y=&01
    lda (ARG),y                                    ; 85b9: b1 30       .0
    cmp #<LAMBDA                                   ; 85bb: c9 18       ..
    bne EVARTS                                     ; 85bd: d0 ec       ..
    iny                                            ; 85bf: c8          .              ; Y=&02
    lda (ARG),y                                    ; 85c0: b1 30       .0
    cmp IMBOT                                      ; 85c2: cd 2c 04    .,.
    bne EVARTS                                     ; 85c5: d0 e4       ..
    jmp LAMOK                                      ; 85c7: 4c 67 86    Lg.

.ENT
    tay                                            ; 85ca: a8          .              ; Probably entry
    pla                                            ; 85cb: 68          h
    pla                                            ; 85cc: 68          h
    lda ARG                                        ; 85cd: a5 30       .0
    sta WSC                                        ; 85cf: 85 38       .8             ; Keep fn safe
    lda ARG+1                                      ; 85d1: a5 31       .1
    sta WSC+1                                      ; 85d3: 85 39       .9
    ldx #&0a                                       ; 85d5: a2 0a       ..
    stx TVSEXT                                     ; 85d7: 86 33       .3
    cpy #FSUBRF                                    ; 85d9: c0 0c       ..
    beq ISFSBR                                     ; 85db: f0 4a       .J
    cpy #SUBRF                                     ; 85dd: c0 08       ..
    beq ISSUBR                                     ; 85df: f0 17       ..
    bne FUNERR                                     ; 85e1: d0 b4       ..             ; Oops a number!; ALWAYS branch

.MORAG
    jsr NXEVAM                                     ; 85e3: 20 36 85     6.
    ldx TVSEXT                                     ; 85e6: a6 33       .3
    cpx #&42                                       ; 85e8: e0 42       .B
    bcs NARGER                                     ; 85ea: b0 1f       ..
    lda ARG                                        ; 85ec: a5 30       .0             ; Args eval in TVS
    sta TVS,x                                      ; 85ee: 95 30       .0
    inx                                            ; 85f0: e8          .
    lda ARG+1                                      ; 85f1: a5 31       .1
    sta TVS,x                                      ; 85f3: 95 30       .0
    inx                                            ; 85f5: e8          .
    stx TVSEXT                                     ; 85f6: 86 33       .3
.ISSUBR
    lda WSA+1                                      ; 85f8: a5 35       .5
    bne MORAG                                      ; 85fa: d0 e7       ..
.INSUBR
    ldy #1                                         ; 85fc: a0 01       ..
    lda (WSC),y                                    ; 85fe: b1 38       .8
    asl a                                          ; 8600: 0a          .
    clc                                            ; 8601: 18          .
    adc #&0a                                       ; 8602: 69 0a       i.
    tax                                            ; 8604: aa          .
    cpx TVSEXT                                     ; 8605: e4 33       .3
    beq ISFSBR                                     ; 8607: f0 1e       ..
    bcc ISFSBR                                     ; 8609: 90 1c       ..
.NARGER
    brk                                            ; 860b: 00          .              ; Wrong

    equb 6                                         ; 860c: 06          .
    equs "Wrong number of arguments"               ; 860d: 57 72 6f... Wro
    equb 0                                         ; 8626: 00          .

.ISFSBR
    ldy #3                                         ; 8627: a0 03       ..
    lda (WSC),y                                    ; 8629: b1 38       .8
    beq GOSUB                                      ; 862b: f0 2c       .,
    sta WSD+1                                      ; 862d: 85 84       ..
    dey                                            ; 862f: 88          .              ; Y=&02
    lda (WSC),y                                    ; 8630: b1 38       .8
    sta WSD                                        ; 8632: 85 83       ..             ; List in WSD
    jmp PLOP                                       ; 8634: 4c 40 86    L@.

.DEFLST
    pha                                            ; 8637: 48          H
    dey                                            ; 8638: 88          .
    lda (WSD),y                                    ; 8639: b1 83       ..
    sta WSD                                        ; 863b: 85 83       ..
    pla                                            ; 863d: 68          h
    sta WSD+1                                      ; 863e: 85 84       ..
.PLOP
    cpx TVSEXT                                     ; 8640: e4 33       .3             ; Default needed
    bcc SKIP                                       ; 8642: 90 0b       ..
    ldy #1                                         ; 8644: a0 01       ..
    lda (WSD),y                                    ; 8646: b1 83       ..
    sta TVS,x                                      ; 8648: 95 30       .0
    iny                                            ; 864a: c8          .              ; Y=&02
    lda (WSD),y                                    ; 864b: b1 83       ..
    sta TVS+1,x                                    ; 864d: 95 31       .1
.SKIP
    inx                                            ; 864f: e8          .
    inx                                            ; 8650: e8          .
    ldy #4                                         ; 8651: a0 04       ..
    lda (WSD),y                                    ; 8653: b1 83       ..
    bne DEFLST                                     ; 8655: d0 e0       ..
    stx TVSEXT                                     ; 8657: 86 33       .3
.GOSUB
    ldy #4                                         ; 8659: a0 04       ..             ; Go and do it!
    lda (WSC),y                                    ; 865b: b1 38       .8
    sta RETADD                                     ; 865d: 85 85       ..
    iny                                            ; 865f: c8          .              ; Y=&05
    lda (WSC),y                                    ; 8660: b1 38       .8
    sta RETADD+1                                   ; 8662: 85 86       ..
    jmp (RETADD)                                   ; 8664: 6c 85 00    l..            ; End of subrs


    ; ******************************
    ; Time for some lambda
    ; ******************************
.LAMOK
    pla                                            ; 8667: 68          h
    pla                                            ; 8668: 68          h
    ldy #4                                         ; 8669: a0 04       ..
    lda (ARG),y                                    ; 866b: b1 30       .0
    beq LAMERR                                     ; 866d: f0 34       .4             ; No parms or body
    sta WSD+1                                      ; 866f: 85 84       ..
    dey                                            ; 8671: 88          .              ; Y=&03
    lda (ARG),y                                    ; 8672: b1 30       .0
    sta WSD                                        ; 8674: 85 83       ..
    ldx #&0a                                       ; 8676: a2 0a       ..
    stx TVSEXT                                     ; 8678: 86 33       .3
    ldy #0                                         ; 867a: a0 00       ..
    lda (WSD),y                                    ; 867c: b1 83       ..
    bpl LAMERR                                     ; 867e: 10 23       .#
    iny                                            ; 8680: c8          .              ; Y=&01
    lda (WSD),y                                    ; 8681: b1 83       ..             ; Parm list
    sta WSB                                        ; 8683: 85 36       .6
    iny                                            ; 8685: c8          .              ; Y=&02
    lda (WSD),y                                    ; 8686: b1 83       ..
    sta WSB+1                                      ; 8688: 85 37       .7
    iny                                            ; 868a: c8          .              ; Y=&03
    lda (WSD),y                                    ; 868b: b1 83       ..             ; Body in WSC
    sta WSC                                        ; 868d: 85 38       .8
    iny                                            ; 868f: c8          .              ; Y=&04
    lda (WSD),y                                    ; 8690: b1 83       ..
    sta WSC+1                                      ; 8692: 85 39       .9
    lda WSB+1                                      ; 8694: a5 37       .7             ; NIL parms?
    bne AVX                                        ; 8696: d0 03       ..
    jmp XLAM                                       ; 8698: 4c 3f 87    L?.

.AVX
    ldy #0                                         ; 869b: a0 00       ..
    lda (WSB),y                                    ; 869d: b1 36       .6
    bmi ISEXPR                                     ; 869f: 30 2d       0-
    beq ISFXP1                                     ; 86a1: f0 10       ..             ; NB spelling!
.LAMERR
    brk                                            ; 86a3: 00          .              ; Syntax error

    equb 7                                         ; 86a4: 07          .
    equs "Lambda syntax"                           ; 86a5: 4c 61 6d... Lam
    equb 0                                         ; 86b2: 00          .

.ISFXP1
    jmp ISFXPR                                     ; 86b3: 4c 2e 87    L..

.MORFAG
    jsr NXEVAM                                     ; 86b6: 20 36 85     6.
    ldx TVSEXT                                     ; 86b9: a6 33       .3             ; Spread args for expr
    cpx #&42                                       ; 86bb: e0 42       .B
    bcc GODARG                                     ; 86bd: 90 03       ..
    jmp NARGER                                     ; 86bf: 4c 0b 86    L..

.GODARG
    lda ARG                                        ; 86c2: a5 30       .0
    sta TVS,x                                      ; 86c4: 95 30       .0
    inx                                            ; 86c6: e8          .
    lda ARG+1                                      ; 86c7: a5 31       .1
    sta TVS,x                                      ; 86c9: 95 30       .0
    inx                                            ; 86cb: e8          .
    stx TVSEXT                                     ; 86cc: 86 33       .3
.ISEXPR
    lda WSA+1                                      ; 86ce: a5 35       .5
    bne MORFAG                                     ; 86d0: d0 e4       ..
.RADON
    ldx #&0a                                       ; 86d2: a2 0a       ..
.XENON
    ldy #2                                         ; 86d4: a0 02       ..
    lda (WSB),y                                    ; 86d6: b1 36       .6
    beq LAMERR                                     ; 86d8: f0 c9       ..
    sta WSD+1                                      ; 86da: 85 84       ..
    dey                                            ; 86dc: 88          .              ; Y=&01
    lda (WSB),y                                    ; 86dd: b1 36       .6
    sta WSD                                        ; 86df: 85 83       ..
    dey                                            ; 86e1: 88          .              ; Y=&00
    cpx TVSEXT                                     ; 86e2: e4 33       .3             ; Enough args?
    lda (WSD),y                                    ; 86e4: b1 83       ..
    beq DOBIND                                     ; 86e6: f0 24       .$
    bpl LAMERR                                     ; 86e8: 10 b9       ..
    bcc NOD                                        ; 86ea: 90 0c       ..
    ldy #3                                         ; 86ec: a0 03       ..
    lda (WSD),y                                    ; 86ee: b1 83       ..
    sta TVS,x                                      ; 86f0: 95 30       .0
    iny                                            ; 86f2: c8          .              ; The default value?; Y=&04
    lda (WSD),y                                    ; 86f3: b1 83       ..
    sta TVS+1,x                                    ; 86f5: 95 31       .1
    clc                                            ; 86f7: 18          .
.NOD
    ldy #2                                         ; 86f8: a0 02       ..
    lda (WSD),y                                    ; 86fa: b1 83       ..
    beq LAMERR                                     ; 86fc: f0 a5       ..             ; Get the atom bind
    pha                                            ; 86fe: 48          H
    dey                                            ; 86ff: 88          .              ; Y=&01
    lda (WSD),y                                    ; 8700: b1 83       ..
    sta WSD                                        ; 8702: 85 83       ..
    pla                                            ; 8704: 68          h
    sta WSD+1                                      ; 8705: 85 84       ..
    dey                                            ; 8707: 88          .              ; Y=&00
    lda (WSD),y                                    ; 8708: b1 83       ..
    bne LAMERR                                     ; 870a: d0 97       ..             ; Must be char atom
.DOBIND
    bcc GADARG                                     ; 870c: 90 03       ..
    jmp NARGER                                     ; 870e: 4c 0b 86    L..

.GADARG
    jsr BIND                                       ; 8711: 20 ea 83     ..            ; Bind takes atom
    inx                                            ; 8714: e8          .              ; in WSD and value in TVS + X
    inx                                            ; 8715: e8          .
    ldy #4                                         ; 8716: a0 04       ..
    lda (WSB),y                                    ; 8718: b1 36       .6
    beq XLAMB                                      ; 871a: f0 21       .!
    pha                                            ; 871c: 48          H
    dey                                            ; 871d: 88          .              ; Y=&03
    lda (WSB),y                                    ; 871e: b1 36       .6
    sta WSB                                        ; 8720: 85 36       .6
    pla                                            ; 8722: 68          h
    sta WSB+1                                      ; 8723: 85 37       .7
    ldy #0                                         ; 8725: a0 00       ..
    lda (WSB),y                                    ; 8727: b1 36       .6
    bmi XENON                                      ; 8729: 30 a9       0.
    jmp LAMERR                                     ; 872b: 4c a3 86    L..

.ISFXPR
    lda WSB                                        ; 872e: a5 36       .6
    sta WSD                                        ; 8730: 85 83       ..
    lda WSB+1                                      ; 8732: a5 37       .7
    sta WSD+1                                      ; 8734: 85 84       ..
    ldx #4                                         ; 8736: a2 04       ..
    jsr BIND                                       ; 8738: 20 ea 83     ..
    ldx #&0a                                       ; 873b: a2 0a       ..
.XLAMB
    stx TVSEXT                                     ; 873d: 86 33       .3
.XLAM
    lda WSC+1                                      ; 873f: a5 39       .9
    bne XLAMC                                      ; 8741: d0 0a       ..
    beq EVPOP                                      ; 8743: f0 24       .$             ; ALWAYS branch

.XLAMD
    tax                                            ; 8745: aa          .
    dey                                            ; 8746: 88          .
    lda (WSC),y                                    ; 8747: b1 38       .8
    stx WSC+1                                      ; 8749: 86 39       .9
    sta WSC                                        ; 874b: 85 38       .8
.XLAMC
    ldy #0                                         ; 874d: a0 00       ..
    lda (WSC),y                                    ; 874f: b1 38       .8
    bmi SYNNED                                     ; 8751: 30 03       0.
    jmp LAMERR                                     ; 8753: 4c a3 86    L..

.SYNNED
    iny                                            ; 8756: c8          .
    lda (WSC),y                                    ; 8757: b1 38       .8
    sta ARG                                        ; 8759: 85 30       .0
    iny                                            ; 875b: c8          .
    lda (WSC),y                                    ; 875c: b1 38       .8
    sta ARG+1                                      ; 875e: 85 31       .1
    jsr EVALU                                      ; 8760: 20 39 85     9.
    ldy #4                                         ; 8763: a0 04       ..
    lda (WSC),y                                    ; 8765: b1 38       .8
    bne XLAMD                                      ; 8767: d0 dc       ..
.EVPOP
    jmp POP                                        ; 8769: 4c 3a 83    L:.


    ; **** Get a character
.GTCHAR
    ldy HANDLE                                     ; 876c: a4 13       ..             ; Y=file handle
    beq KEYCH                                      ; 876e: f0 10       ..
    lda LSCHAR                                     ; 8770: ad 30 04    .0.            ; From file
    bpl RENEW                                      ; 8773: 10 04       ..
    and #&7f                                       ; 8775: 29 7f       ).
    bpl REOLD                                      ; 8777: 10 03       ..
.RENEW
    jsr osbget                                     ; 8779: 20 d7 ff     ..            ; Read a single byte from an open file Y
.REOLD
    sta LSCHAR                                     ; 877c: 8d 30 04    .0.
    rts                                            ; 877f: 60          `

.KEYCH
    txa                                            ; 8780: 8a          .              ; From screen
    pha                                            ; 8781: 48          H
    ldx LSBUFF                                     ; 8782: a6 8c       ..
    cpx #&f0                                       ; 8784: e0 f0       ..             ; => New line
    bne NNL                                        ; 8786: d0 29       .)

    ; **** Read a line
    bit LEVEL                                      ; 8788: 24 1a       $.             ; Prompt masked?
    bpl READON                                     ; 878a: 10 0d       ..
    lda DEPTH                                      ; 878c: a5 8b       ..
    tax                                            ; 878e: aa          .
.PRDEPT
    beq READON                                     ; 878f: f0 08       ..
    lda #'['                                       ; 8791: a9 5b       .[
    jsr oswrch                                     ; 8793: 20 ee ff     ..            ; Write character 91
    dex                                            ; 8796: ca          .
    bpl PRDEPT                                     ; 8797: 10 f6       ..
.READON
    ldx #<(INCB)                                   ; 8799: a2 3e       .>
    ldy #>(INCB)                                   ; 879b: a0 82       ..
    lda #osword_read_line                          ; 879d: a9 00       ..
    jsr osword                                     ; 879f: 20 f1 ff     ..            ; Read line; Read line from input stream (exits with C=1 if ESCAPE pressed)
    bcc OKLINE                                     ; 87a2: 90 09       ..
.RDCHER
    brk                                            ; 87a4: 00          .              ; Escape

    equb &1a                                       ; 87a5: 1a          .
    equs "Escape"                                  ; 87a6: 45 73 63... Esc
    equb 0                                         ; 87ac: 00          .

.OKLINE
    lda #&ff                                       ; 87ad: a9 ff       ..             ; Zero => newline
    sta LSBUFF                                     ; 87af: 85 8c       ..
.NNL
    inc LSBUFF                                     ; 87b1: e6 8c       ..             ; Fetch char
    pla                                            ; 87b3: 68          h
    tax                                            ; 87b4: aa          .              ; RESTORE X
    ldy LSBUFF                                     ; 87b5: a4 8c       ..
    lda DOSBUF,y                                   ; 87b7: b9 00 07    ...            ; Get char form buffer
    cmp #&0d                                       ; 87ba: c9 0d       ..
    bne XYZ                                        ; 87bc: d0 04       ..
    ldy #&f0                                       ; 87be: a0 f0       ..
    sty LSBUFF                                     ; 87c0: 84 8c       ..             ; New line next time
.XYZ
    rts                                            ; 87c2: 60          `

.RSREAD
    ldx #0                                         ; 87c3: a2 00       ..
    stx DEPTH                                      ; 87c5: 86 8b       ..
    stx LINENO                                     ; 87c7: 86 25       .%
    stx HANDLE                                     ; 87c9: 86 13       ..
    ldx #&f0                                       ; 87cb: a2 f0       ..             ; Flag for new line
    stx LSBUFF                                     ; 87cd: 86 8c       ..

    ; **** READ
.READ
    ldx #&ff                                       ; 87cf: a2 ff       ..
    stx ARG+1                                      ; 87d1: 86 31       .1             ; Flag for rubbish
    jsr STACK                                      ; 87d3: 20 93 83     ..
.NXCHAR
    jsr GTCHAR                                     ; 87d6: 20 6c 87     l.
.RPT
    cmp #&0d                                       ; 87d9: c9 0d       ..
    beq NXCHAR                                     ; 87db: f0 f9       ..
    cmp #&0a                                       ; 87dd: c9 0a       ..
    beq NXCHAR                                     ; 87df: f0 f5       ..
    cmp #' '                                       ; 87e1: c9 20       .
    beq NXCHAR                                     ; 87e3: f0 f1       ..
    cmp #'''                                       ; 87e5: c9 27       .'
    bne PARQU                                      ; 87e7: d0 3d       .=
    lda #<QUOTE                                    ; 87e9: a9 2d       .-             ; It's a quote
    sta WSA                                        ; 87eb: 85 34       .4
    lda IMBOT                                      ; 87ed: ad 2c 04    .,.
    sta WSA+1                                      ; 87f0: 85 35       .5
.ODDAT
    jsr READ                                       ; 87f2: 20 cf 87     ..            ; Entry for atoms
    jsr ALPAIR                                     ; 87f5: 20 53 84     S.            ; Get list cell for it
    ldy #2                                         ; 87f8: a0 02       ..
    lda ARG+1                                      ; 87fa: a5 31       .1
    sta (POINT),y                                  ; 87fc: 91 7a       .z
    dey                                            ; 87fe: 88          .              ; Y=&01
    lda ARG                                        ; 87ff: a5 30       .0
    sta (POINT),y                                  ; 8801: 91 7a       .z
    lda POINT+1                                    ; 8803: a5 7b       .{
    sta WSB+1                                      ; 8805: 85 37       .7
    lda POINT                                      ; 8807: a5 7a       .z
    sta WSB                                        ; 8809: 85 36       .6
    jsr ALPAIR                                     ; 880b: 20 53 84     S.
    lda POINT                                      ; 880e: a5 7a       .z
    sta ARG                                        ; 8810: 85 30       .0
    lda POINT+1                                    ; 8812: a5 7b       .{
    sta ARG+1                                      ; 8814: 85 31       .1
    ldy #4                                         ; 8816: a0 04       ..
.MORODD
    lda TVSEXT,y                                   ; 8818: b9 33 00    .3.
    sta (ARG),y                                    ; 881b: 91 30       .0
    dey                                            ; 881d: 88          .
    bne MORODD                                     ; 881e: d0 f8       ..
    jmp POP                                        ; 8820: 4c 3a 83    L:.

.RDLJMP
    jmp RDLIST                                     ; 8823: 4c 72 88    Lr.

.PARQU
    cmp #'('                                       ; 8826: c9 28       .(
    beq RDLJMP                                     ; 8828: f0 f9       ..
    ldx #&ff                                       ; 882a: a2 ff       ..             ; Some sort of atom
    cmp #'!'                                       ; 882c: c9 21       .!             ; Escape
    beq SPCATM                                     ; 882e: f0 15       ..
    ldy #1                                         ; 8830: a0 01       ..             ; Ordinary char atom
    jsr TERMQ                                      ; 8832: 20 e5 88     ..
    bne NORMAL                                     ; 8835: d0 11       ..
.QUEER
    brk                                            ; 8837: 00          .              ; Syntax error

    equb 8                                         ; 8838: 08          .
    equs "Read syntax"                             ; 8839: 52 65 61... Rea
    equb 0                                         ; 8844: 00          .

.SPCATM
    jsr GTCHAR                                     ; 8845: 20 6c 87     l.            ; Escaped char
.NORMAL
    inx                                            ; 8848: e8          .              ; Fetch chars
    sta OSWBUF,x                                   ; 8849: 9d 00 06    ...
    jsr GTCHAR                                     ; 884c: 20 6c 87     l.
    cmp #'!'                                       ; 884f: c9 21       .!
    beq SPCATM                                     ; 8851: f0 f2       ..
    ldy #5                                         ; 8853: a0 05       ..
    jsr TERMQ                                      ; 8855: 20 e5 88     ..
    bne NORMAL                                     ; 8858: d0 ee       ..
    jsr PUTBCK                                     ; 885a: 20 20 89      .

    ; ******************************
    ; Here check if numeric. Find
    ; or set up char atom.
    ; ******************************
    stx END                                        ; 885d: 86 1d       ..
    jsr MAKNUM                                     ; 885f: 20 4e 89     N.
    bcc AMADE                                      ; 8862: 90 03       ..
.TRYCHR
    jsr MATCH                                      ; 8864: 20 ef 89     ..
.AMADE
    lda POINT                                      ; 8867: a5 7a       .z
    sta ARG                                        ; 8869: 85 30       .0
    lda POINT+1                                    ; 886b: a5 7b       .{
    sta ARG+1                                      ; 886d: 85 31       .1
    jmp POP                                        ; 886f: 4c 3a 83    L:.


    ; *** Read a list
.RDLIST
    lda #0                                         ; 8872: a9 00       ..
    sta WSA+1                                      ; 8874: 85 35       .5
    sta WSB+1                                      ; 8876: 85 37       .7
    inc DEPTH                                      ; 8878: e6 8b       ..
    jsr LCHAR                                      ; 887a: 20 11 89     ..
    cmp #'.'                                       ; 887d: c9 2e       ..
    bne LON                                        ; 887f: d0 10       ..
    jsr GTCHAR                                     ; 8881: 20 6c 87     l.
.DOTTY
    brk                                            ; 8884: 00          .              ; Dot syntax

    equb 9                                         ; 8885: 09          .
    equs "Dot syntax"                              ; 8886: 44 6f 74... Dot
    equb 0                                         ; 8890: 00          .

.LON
    jsr READ                                       ; 8891: 20 cf 87     ..
    jsr ALPAIR                                     ; 8894: 20 53 84     S.
    ldx POINT                                      ; 8897: a6 7a       .z
    lda POINT+1                                    ; 8899: a5 7b       .{
    ldy WSB+1                                      ; 889b: a4 37       .7             ; First element?
    beq NEWLST                                     ; 889d: f0 0c       ..
    ldy #4                                         ; 889f: a0 04       ..
    sta (WSB),y                                    ; 88a1: 91 36       .6
    txa                                            ; 88a3: 8a          .
    dey                                            ; 88a4: 88          .              ; Y=&03
    sta (WSB),y                                    ; 88a5: 91 36       .6
    lda POINT+1                                    ; 88a7: a5 7b       .{
    bne ALLIST                                     ; 88a9: d0 04       ..             ; Always taken
.NEWLST
    stx WSA                                        ; 88ab: 86 34       .4
    sta WSA+1                                      ; 88ad: 85 35       .5
.ALLIST
    stx WSB                                        ; 88af: 86 36       .6
    sta WSB+1                                      ; 88b1: 85 37       .7
    ldy #1                                         ; 88b3: a0 01       ..
    lda ARG                                        ; 88b5: a5 30       .0
    sta (WSB),y                                    ; 88b7: 91 36       .6
    iny                                            ; 88b9: c8          .              ; Y=&02
    lda ARG+1                                      ; 88ba: a5 31       .1
    sta (WSB),y                                    ; 88bc: 91 36       .6
    jsr LCHAR                                      ; 88be: 20 11 89     ..
    cmp #'.'                                       ; 88c1: c9 2e       ..
    bne LON                                        ; 88c3: d0 cc       ..
    jsr GTCHAR                                     ; 88c5: 20 6c 87     l.            ; Dotted pair at end
    jsr READ                                       ; 88c8: 20 cf 87     ..
    ldy #4                                         ; 88cb: a0 04       ..
    lda ARG+1                                      ; 88cd: a5 31       .1
    sta (WSB),y                                    ; 88cf: 91 36       .6
    dey                                            ; 88d1: 88          .              ; Y=&03
    lda ARG                                        ; 88d2: a5 30       .0
    sta (WSB),y                                    ; 88d4: 91 36       .6
    jsr LCHAR                                      ; 88d6: 20 11 89     ..            ; Shouldn't return
    jmp DOTTY                                      ; 88d9: 4c 84 88    L..            ; Dot syntax error

.READX
    jsr FILGB                                      ; 88dc: 20 94 8a     ..
    jsr READ                                       ; 88df: 20 cf 87     ..
    jmp POP                                        ; 88e2: 4c 3a 83    L:.


    ; **** Look for terminators
.TERMQ
    cmp TERMS,y                                    ; 88e5: d9 43 82    .C.
    beq TERRTS                                     ; 88e8: f0 03       ..
    dey                                            ; 88ea: 88          .
    bpl TERMQ                                      ; 88eb: 10 f8       ..
.TERRTS
    rts                                            ; 88ed: 60          `


    ; **** Next arg from WSA's list
.NXTARG
    lda WSA+1                                      ; 88ee: a5 35       .5
    bne NXTARH                                     ; 88f0: d0 03       ..
.ARGERR
    jmp FSARG                                      ; 88f2: 4c 22 85    L".

.NXTARH
    ldy #0                                         ; 88f5: a0 00       ..
    lda (WSA),y                                    ; 88f7: b1 34       .4
    bpl ARGERR                                     ; 88f9: 10 f7       ..
    iny                                            ; 88fb: c8          .              ; Y=&01
    lda (WSA),y                                    ; 88fc: b1 34       .4
    sta ARG                                        ; 88fe: 85 30       .0
    iny                                            ; 8900: c8          .              ; Y=&02
    lda (WSA),y                                    ; 8901: b1 34       .4
    sta ARG+1                                      ; 8903: 85 31       .1
    iny                                            ; 8905: c8          .              ; Y=&03
    lda (WSA),y                                    ; 8906: b1 34       .4
    tax                                            ; 8908: aa          .
    iny                                            ; 8909: c8          .              ; Y=&04
    lda (WSA),y                                    ; 890a: b1 34       .4
    stx WSA                                        ; 890c: 86 34       .4
    sta WSA+1                                      ; 890e: 85 35       .5
    rts                                            ; 8910: 60          `

.LCHAR
    jsr GTCHAR                                     ; 8911: 20 6c 87     l.
    cmp #' '                                       ; 8914: c9 20       .
    beq LCHAR                                      ; 8916: f0 f9       ..
    cmp #&0d                                       ; 8918: c9 0d       ..
    beq LCHAR                                      ; 891a: f0 f5       ..
    cmp #')'                                       ; 891c: c9 29       .)
    beq LISTND                                     ; 891e: f0 1f       ..
.PUTBCK
    pha                                            ; 8920: 48          H
    ldy HANDLE                                     ; 8921: a4 13       ..
    bne EXFILE                                     ; 8923: d0 10       ..             ; Reverse file pointer
    ldy LSBUFF                                     ; 8925: a4 8c       ..
    bpl MIDBUF                                     ; 8927: 10 07       ..
    lda #&0d                                       ; 8929: a9 0d       ..             ; Fudge CR into buffer
    sta DOSBUF                                     ; 892b: 8d 00 07    ...
    ldy #0                                         ; 892e: a0 00       ..
.MIDBUF
    dey                                            ; 8930: 88          .
    sty LSBUFF                                     ; 8931: 84 8c       ..
    pla                                            ; 8933: 68          h
    rts                                            ; 8934: 60          `

.EXFILE
    lda LSCHAR                                     ; 8935: ad 30 04    .0.            ; COS version
    ora #&80                                       ; 8938: 09 80       ..
    sta LSCHAR                                     ; 893a: 8d 30 04    .0.
    pla                                            ; 893d: 68          h
    rts                                            ; 893e: 60          `

.LISTND
    dec DEPTH                                      ; 893f: c6 8b       ..
    lda WSA                                        ; 8941: a5 34       .4
    sta ARG                                        ; 8943: 85 30       .0
    lda WSA+1                                      ; 8945: a5 35       .5
    sta ARG+1                                      ; 8947: 85 31       .1
    pla                                            ; 8949: 68          h
    pla                                            ; 894a: 68          h
    jmp POP                                        ; 894b: 4c 3a 83    L:.


    ; **** Make number in POINT
.MAKNUM
    ldx #0                                         ; 894e: a2 00       ..             ; Text from IMBUF
    stx SIGN                                       ; 8950: 86 78       .x
    stx ACL                                        ; 8952: 86 72       .r
    stx ACL+1                                      ; 8954: 86 73       .s
    lda OSWBUF,x                                   ; 8956: bd 00 06    ...
    cmp #'-'                                       ; 8959: c9 2d       .-
    bne PLUSS                                      ; 895b: d0 09       ..
    sta SIGN                                       ; 895d: 85 78       .x
    inx                                            ; 895f: e8          .              ; X=&01
    ldy END                                        ; 8960: a4 1d       ..
    cpy #0                                         ; 8962: c0 00       ..
    beq MKRTS                                      ; 8964: f0 6c       .l
.PLUSS
    lda OSWBUF,x                                   ; 8966: bd 00 06    ...
    sec                                            ; 8969: 38          8
    sbc #&30                                       ; 896a: e9 30       .0
    cmp #&0a                                       ; 896c: c9 0a       ..
    bcs MKRTS                                      ; 896e: b0 62       .b             ; Not a digit
    sta ACIN                                       ; 8970: 85 8f       ..
    ldy #0                                         ; 8972: a0 00       ..
    lda ACL                                        ; 8974: a5 72       .r             ; *10 now
    asl a                                          ; 8976: 0a          .
    sta ACL                                        ; 8977: 85 72       .r
    rol ACL+1                                      ; 8979: 26 73       &s             ; That's * 2
    bcs MKOVFL                                     ; 897b: b0 40       .@             ; Overflow
    asl a                                          ; 897d: 0a          .
    bcc YIA                                        ; 897e: 90 02       ..
    ldy #2                                         ; 8980: a0 02       ..
.YIA
    asl a                                          ; 8982: 0a          .
    bcc YIB                                        ; 8983: 90 02       ..
    iny                                            ; 8985: c8          .
    clc                                            ; 8986: 18          .
.YIB
    adc ACIN                                       ; 8987: 65 8f       e.
    bcc YIC                                        ; 8989: 90 02       ..
    iny                                            ; 898b: c8          .
    clc                                            ; 898c: 18          .
.YIC
    adc ACL                                        ; 898d: 65 72       er
    sta ACL                                        ; 898f: 85 72       .r
    bcc YID                                        ; 8991: 90 01       ..
    iny                                            ; 8993: c8          .
.YID
    lda ACL+1                                      ; 8994: a5 73       .s
    asl a                                          ; 8996: 0a          .
    bcs MKOVFL                                     ; 8997: b0 24       .$
    asl a                                          ; 8999: 0a          .
    bcs MKOVFL                                     ; 899a: b0 21       .!
    adc ACL+1                                      ; 899c: 65 73       es
    sta ACL+1                                      ; 899e: 85 73       .s
    bcs MKOVFL                                     ; 89a0: b0 1b       ..
    tya                                            ; 89a2: 98          .
    adc ACL+1                                      ; 89a3: 65 73       es
    bcs MKOVFL                                     ; 89a5: b0 16       ..
    sta ACL+1                                      ; 89a7: 85 73       .s
    cpx END                                        ; 89a9: e4 1d       ..
    inx                                            ; 89ab: e8          .
    bcc PLUSS                                      ; 89ac: 90 b8       ..             ; Any more digits?
    lda SIGN                                       ; 89ae: a5 78       .x
    beq PLUSSS                                     ; 89b0: f0 0d       ..
    ldy #0                                         ; 89b2: a0 00       ..             ; Reverse sign if -ve
    ldx #<ACL                                      ; 89b4: a2 72       .r
    jsr MD                                         ; 89b6: 20 34 a0     4.
    ldx ACL+1                                      ; 89b9: a6 73       .s
    bmi NTOVFL                                     ; 89bb: 30 06       0.
.MKOVFL
    sec                                            ; 89bd: 38          8
    rts                                            ; 89be: 60          `              ; Not number

.PLUSSS
    ldx ACL+1                                      ; 89bf: a6 73       .s
    bmi MKOVFL                                     ; 89c1: 30 fa       0.
.NTOVFL
    jsr ALNUM                                      ; 89c3: 20 3d 84     =.
    ldy #3                                         ; 89c6: a0 03       ..
    lda ACL+1                                      ; 89c8: a5 73       .s
    sta (POINT),y                                  ; 89ca: 91 7a       .z
    dey                                            ; 89cc: 88          .              ; Y=&02
    lda ACL                                        ; 89cd: a5 72       .r
    sta (POINT),y                                  ; 89cf: 91 7a       .z
    clc                                            ; 89d1: 18          .
.MKRTS
    rts                                            ; 89d2: 60          `

.NEXTAD
    inc AD                                         ; 89d3: e6 87       ..
    bne NEXTAA                                     ; 89d5: d0 02       ..
    inc AD+1                                       ; 89d7: e6 88       ..
.NEXTAA
    inc AA                                         ; 89d9: e6 1e       ..
    bne NAAB                                       ; 89db: d0 02       ..
    inc AA+1                                       ; 89dd: e6 1f       ..
.NAAB
    lda AA                                         ; 89df: a5 1e       ..
    cmp AB                                         ; 89e1: c5 20       .
    lda AA+1                                       ; 89e3: a5 1f       ..
    sbc AB+1                                       ; 89e5: e5 21       .!
    rts                                            ; 89e7: 60          `


    ; ******************************
    ; MATCH tries to find a string
    ; to match the string in IMBUF.
    ; If it cannot it makes up a
    ; new atom.
    ; ******************************
.LETTER
    sta OSWBUF                                     ; 89e8: 8d 00 06    ...
    ldy #0                                         ; 89eb: a0 00       ..
    sty END                                        ; 89ed: 84 1d       ..
.MATCH
    jsr SETCEL                                     ; 89ef: 20 be 9a     ..
    inc END                                        ; 89f2: e6 1d       ..
    lda END                                        ; 89f4: a5 1d       ..
    clc                                            ; 89f6: 18          .
    adc #6                                         ; 89f7: 69 06       i.
    sta ACL+1                                      ; 89f9: 85 73       .s
    bcc CHKCLL                                     ; 89fb: 90 12       ..
.LONGER
    brk                                            ; 89fd: 00          .              ; String too long

    equb &0a                                       ; 89fe: 0a          .
    equs "String too long"                         ; 89ff: 53 74 72... Str
    equb 0                                         ; 8a0e: 00          .

.CHKCLL
    ldy #0                                         ; 8a0f: a0 00       ..
.CHKCLM
    lda (CELL),y                                   ; 8a11: b1 7c       .|
    bne NXTCLL                                     ; 8a13: d0 36       .6
    iny                                            ; 8a15: c8          .
    lda (CELL),y                                   ; 8a16: b1 7c       .|
    cmp ACL+1                                      ; 8a18: c5 73       .s
    bne NXTCLL                                     ; 8a1a: d0 2f       ./
    lda CELL                                       ; 8a1c: a5 7c       .|
    adc #5                                         ; 8a1e: 69 05       i.
    sta AD                                         ; 8a20: 85 87       ..
    lda CELL+1                                     ; 8a22: a5 7d       .}
    adc #0                                         ; 8a24: 69 00       i.
    sta AD+1                                       ; 8a26: 85 88       ..
    ldy END                                        ; 8a28: a4 1d       ..
    bpl TESTY                                      ; 8a2a: 10 09       ..
.MCOP
    dey                                            ; 8a2c: 88          .
    lda OSWBUF,y                                   ; 8a2d: b9 00 06    ...            ; Chars the same?
    cmp (AD),y                                     ; 8a30: d1 87       ..
    bne NXTCLL                                     ; 8a32: d0 17       ..
    tya                                            ; 8a34: 98          .
.TESTY
    bne MCOP                                       ; 8a35: d0 f5       ..
    lda CELL+1                                     ; 8a37: a5 7d       .}
    ldx CELL                                       ; 8a39: a6 7c       .|             ; NIL?
    stx POINT                                      ; 8a3b: 86 7a       .z
    cpx #<NIL                                      ; 8a3d: e0 24       .$
    bne BOX                                        ; 8a3f: d0 07       ..
    sbc IMBOT                                      ; 8a41: ed 2c 04    .,.
    beq BOX                                        ; 8a44: f0 02       ..
    lda CELL+1                                     ; 8a46: a5 7d       .}
.BOX
    sta POINT+1                                    ; 8a48: 85 7b       .{
    rts                                            ; 8a4a: 60          `              ; It's found

.NXTCLL
    jsr NXCELL                                     ; 8a4b: 20 70 8a     p.
    bcc CHKCLM                                     ; 8a4e: 90 c1       ..
    lda ACL+1                                      ; 8a50: a5 73       .s
    jsr ALCHAR                                     ; 8a52: 20 43 84     C.
    lda POINT                                      ; 8a55: a5 7a       .z
    clc                                            ; 8a57: 18          .
    adc #6                                         ; 8a58: 69 06       i.
    sta AD                                         ; 8a5a: 85 87       ..
    lda POINT+1                                    ; 8a5c: a5 7b       .{
    adc #0                                         ; 8a5e: 69 00       i.
    sta AD+1                                       ; 8a60: 85 88       ..
    ldy END                                        ; 8a62: a4 1d       ..
    bpl TOSTIG                                     ; 8a64: 10 07       ..
.MCAP
    dey                                            ; 8a66: 88          .
    lda OSWBUF,y                                   ; 8a67: b9 00 06    ...
    sta (AD),y                                     ; 8a6a: 91 87       ..
    tya                                            ; 8a6c: 98          .
.TOSTIG
    bne MCAP                                       ; 8a6d: d0 f7       ..
    rts                                            ; 8a6f: 60          `              ; New cell made

.NXCELL
    ldy #0                                         ; 8a70: a0 00       ..             ; Given pointer
    lda (CELL),y                                   ; 8a72: b1 7c       .|             ; in CELL, finds next
    clc                                            ; 8a74: 18          .              ; CELL
    bmi SIX                                        ; 8a75: 30 0a       0.
    cmp #8                                         ; 8a77: c9 08       ..
    bcs SIX                                        ; 8a79: b0 06       ..
    iny                                            ; 8a7b: c8          .              ; Y=&01
    lda (CELL),y                                   ; 8a7c: b1 7c       .|
    dey                                            ; 8a7e: 88          .              ; Y=&00
    beq GOT                                        ; 8a7f: f0 02       ..             ; ALWAYS branch

.SIX
    lda #5                                         ; 8a81: a9 05       ..
.GOT
    adc CELL                                       ; 8a83: 65 7c       e|
    sta CELL                                       ; 8a85: 85 7c       .|
    bcc HCOK                                       ; 8a87: 90 02       ..
    inc CELL+1                                     ; 8a89: e6 7d       .}
.HCOK
    cmp AREVAL                                     ; 8a8b: cd 2d 04    .-.
    lda CELL+1                                     ; 8a8e: a5 7d       .}
    sbc AREVAL+1                                   ; 8a90: ed 2e 04    ...
    rts                                            ; 8a93: 60          `

.FILGB
    ldx TVSEXT                                     ; 8a94: a6 33       .3
    cpx #&0c                                       ; 8a96: e0 0c       ..
    lda #0                                         ; 8a98: a9 00       ..
    bcc ZIP                                        ; 8a9a: 90 07       ..
.FILGC
    jsr ALLNUM                                     ; 8a9c: 20 87 94     ..
    ldy #2                                         ; 8a9f: a0 02       ..
    lda (ARGA),y                                   ; 8aa1: b1 3a       .:
.ZIP
    sta HANDLE                                     ; 8aa3: 85 13       ..
    rts                                            ; 8aa5: 60          `

.IPLINE
    jsr FILGB                                      ; 8aa6: 20 94 8a     ..
    ldx #&ff                                       ; 8aa9: a2 ff       ..
.MOLIN
    jsr GTCHAR                                     ; 8aab: 20 6c 87     l.
    inx                                            ; 8aae: e8          .
    sta OSWBUF,x                                   ; 8aaf: 9d 00 06    ...
    cmp #&0d                                       ; 8ab2: c9 0d       ..
    bne MOLIN                                      ; 8ab4: d0 f5       ..
    dex                                            ; 8ab6: ca          .              ; Don't want CR at end.
    stx END                                        ; 8ab7: 86 1d       ..
    jmp TRYCHR                                     ; 8ab9: 4c 64 88    Ld.


    ; ******************************
    ; Here there be the point
    ; routines of various types:
    ; ******************************
    ; **** Intercept return addr
.GETSSP
    lda SP                                         ; 8abc: a5 7e       .~             ; Find SSP ret addr
    sta POINT                                      ; 8abe: 85 7a       .z
    lda SP+1                                       ; 8ac0: a5 7f       ..
    sta POINT+1                                    ; 8ac2: 85 7b       .{
    ldy #0                                         ; 8ac4: a0 00       ..
    lda (POINT),y                                  ; 8ac6: b1 7a       .z
    clc                                            ; 8ac8: 18          .
    adc POINT                                      ; 8ac9: 65 7a       ez
    sta POINT                                      ; 8acb: 85 7a       .z
    bcc STINC                                      ; 8acd: 90 02       ..
    inc POINT+1                                    ; 8acf: e6 7b       .{
.STINC
    iny                                            ; 8ad1: c8          .
    lda (POINT),y                                  ; 8ad2: b1 7a       .z
    tay                                            ; 8ad4: a8          .
    dey                                            ; 8ad5: 88          .
    rts                                            ; 8ad6: 60          `


    ; **** WRITE
.WRIT
    jsr GETSSP                                     ; 8ad7: 20 bc 8a     ..            ; Locate ret addr
    lda (POINT),y                                  ; 8ada: b1 7a       .z
    pha                                            ; 8adc: 48          H
    lda #>WRITGO                                   ; 8add: a9 8a       ..
    sta (POINT),y                                  ; 8adf: 91 7a       .z
    dey                                            ; 8ae1: 88          .
    lda (POINT),y                                  ; 8ae2: b1 7a       .z
    pha                                            ; 8ae4: 48          H
    lda #<WRITGO+2                                 ; 8ae5: a9 eb       ..
    sta (POINT),y                                  ; 8ae7: 91 7a       .z
.WRITGO
    jmp WRTTZ                                      ; 8ae9: 4c f2 8a    L..

    lda #&0d                                       ; 8aec: a9 0d       ..
    jsr OUT                                        ; 8aee: 20 0e 85     ..
    rts                                            ; 8af1: 60          `


    ; **** WRITE0
.WRTTZ
    jsr FILG                                       ; 8af2: 20 59 8b     Y.
    lda #&ff                                       ; 8af5: a9 ff       ..
    sta ESCHF                                      ; 8af7: 8d 2f 04    ./.
    ldx #&0c                                       ; 8afa: a2 0c       ..
    bne GENWRI                                     ; 8afc: d0 37       .7             ; ALWAYS branch


    ; **** Error entry
.PRINTE
    jsr STACK                                      ; 8afe: 20 93 83     ..
    jmp PRINTC                                     ; 8b01: 4c 0c 8b    L..


    ; **** PRINT
.PRINT
    lda #&ff                                       ; 8b04: a9 ff       ..             ; Put in esc char
    bmi PRINT1                                     ; 8b06: 30 06       0.             ; ALWAYS branch


    ; **** PRIN
.PRINZ
    lda #&ff                                       ; 8b08: a9 ff       ..
    bmi PRIN1                                      ; 8b0a: 30 20       0              ; ALWAYS branch


    ; **** PRINTC
.PRINTC
    lda #0                                         ; 8b0c: a9 00       ..
.PRINT1
    sta ESCHF                                      ; 8b0e: 8d 2f 04    ./.
    jsr GETSSP                                     ; 8b11: 20 bc 8a     ..
    lda (POINT),y                                  ; 8b14: b1 7a       .z
    pha                                            ; 8b16: 48          H
    lda #>PRINGO                                   ; 8b17: a9 8b       ..
    sta (POINT),y                                  ; 8b19: 91 7a       .z
    dey                                            ; 8b1b: 88          .
    lda (POINT),y                                  ; 8b1c: b1 7a       .z
    pha                                            ; 8b1e: 48          H
    lda #<PRINGO+2                                 ; 8b1f: a9 25       .%
    sta (POINT),y                                  ; 8b21: 91 7a       .z
.PRINGO
    jmp PRINOK                                     ; 8b23: 4c 2f 8b    L/.

    jsr CROUT                                      ; 8b26: 20 19 85     ..
    rts                                            ; 8b29: 60          `


    ; **** PRINC
.PRINC
    lda #0                                         ; 8b2a: a9 00       ..
.PRIN1
    sta ESCHF                                      ; 8b2c: 8d 2f 04    ./.
.PRINOK
    ldy #0                                         ; 8b2f: a0 00       ..
    sty HANDLE                                     ; 8b31: 84 13       ..
    ldx #&0a                                       ; 8b33: a2 0a       ..
.GENWRI
    lda #0                                         ; 8b35: a9 00       ..
    cpx TVSEXT                                     ; 8b37: e4 33       .3             ; NO ARGS?
    bcs NILFR                                      ; 8b39: b0 1b       ..
.PRON
    lda TVS,x                                      ; 8b3b: b5 30       .0
    sta ARG                                        ; 8b3d: 85 30       .0
    inx                                            ; 8b3f: e8          .
    lda TVS,x                                      ; 8b40: b5 30       .0
    sta ARG+1                                      ; 8b42: 85 31       .1
    inx                                            ; 8b44: e8          .
    stx XPR                                        ; 8b45: 86 89       ..
    jsr PRINB                                      ; 8b47: 20 86 8b     ..
    ldx XPR                                        ; 8b4a: a6 89       ..
    cpx TVSEXT                                     ; 8b4c: e4 33       .3
    bcc PRON                                       ; 8b4e: 90 eb       ..
    lda TVS-2,x                                    ; 8b50: b5 2e       ..
    sta ARG                                        ; 8b52: 85 30       .0
    lda ARG-1,x                                    ; 8b54: b5 2f       ./
.NILFR
    jmp POPA                                       ; 8b56: 4c 38 83    L8.


    ; **** Get file handle
.FILG
    lda ARGA+1                                     ; 8b59: a5 3b       .;
    beq FILGER                                     ; 8b5b: f0 0f       ..
    ldy #0                                         ; 8b5d: a0 00       ..
    lda (ARGA),y                                   ; 8b5f: b1 3a       .:
    cmp #NUMF                                      ; 8b61: c9 04       ..
    bne FILGER                                     ; 8b63: d0 07       ..
    ldy #2                                         ; 8b65: a0 02       ..
    lda (ARGA),y                                   ; 8b67: b1 3a       .:
    sta HANDLE                                     ; 8b69: 85 13       ..
    rts                                            ; 8b6b: 60          `

.FILGER
    jmp NUER                                       ; 8b6c: 4c 9c 94    L..

.SAVAR
    lda ARG                                        ; 8b6f: a5 30       .0             ; Saves ARG in WEB
    sta WSB                                        ; 8b71: 85 36       .6
    lda ARG+1                                      ; 8b73: a5 31       .1
    sta WSB+1                                      ; 8b75: 85 37       .7
    rts                                            ; 8b77: 60          `

.CCPR
    brk                                            ; 8b78: 00          .              ; Escape

    equb &0b                                       ; 8b79: 0b          .
    equs "Escape"                                  ; 8b7a: 45 73 63... Esc
    equb 0                                         ; 8b80: 00          .


    ; **** Just prints ARG
.PRINA
    lda #0                                         ; 8b81: a9 00       ..
    sta ESCHF                                      ; 8b83: 8d 2f 04    ./.
.PRINB
    jsr KBCHK                                      ; 8b86: 20 47 85     G.            ; Check for escape
    bne CCPR                                       ; 8b89: d0 ed       ..
    lda ARG+1                                      ; 8b8b: a5 31       .1
    bne NPN                                        ; 8b8d: d0 05       ..             ; NIL?
    ldx #NILOFF                                    ; 8b8f: a2 19       ..
    jmp MESSAG                                     ; 8b91: 4c 00 85    L..            ; 'NIL'


    ; **** Main printer
.NPN
    ldy #0                                         ; 8b94: a0 00       ..
    lda (ARG),y                                    ; 8b96: b1 30       .0
    bpl PATOMB                                     ; 8b98: 10 53       .S             ; Atom or list?
    lda #'('                                       ; 8b9a: a9 28       .(
    jsr OUT                                        ; 8b9c: 20 0e 85     ..
    jsr STACK                                      ; 8b9f: 20 93 83     ..            ; Since recursive
    lda ARG                                        ; 8ba2: a5 30       .0
    sta WSA                                        ; 8ba4: 85 34       .4
    lda ARG+1                                      ; 8ba6: a5 31       .1
    sta WSA+1                                      ; 8ba8: 85 35       .5
    bne NASTY                                      ; 8baa: d0 05       ..

    ; **** Print list
.PLIST
    lda #' '                                       ; 8bac: a9 20       .
    jsr OUT                                        ; 8bae: 20 0e 85     ..
.NASTY
    jsr NXTARH                                     ; 8bb1: 20 f5 88     ..
    jsr PRINB                                      ; 8bb4: 20 86 8b     ..
    lda WSA+1                                      ; 8bb7: a5 35       .5
    beq RPP                                        ; 8bb9: f0 16       ..
    ldy #0                                         ; 8bbb: a0 00       ..
    lda (WSA),y                                    ; 8bbd: b1 34       .4
    bmi PLIST                                      ; 8bbf: 30 eb       0.
    lda WSA+1                                      ; 8bc1: a5 35       .5
    sta ARG+1                                      ; 8bc3: 85 31       .1
    lda WSA                                        ; 8bc5: a5 34       .4
    sta ARG                                        ; 8bc7: 85 30       .0
    ldx #&1c                                       ; 8bc9: a2 1c       ..
    jsr MESSAG                                     ; 8bcb: 20 00 85     ..
    jsr PATOM                                      ; 8bce: 20 e9 8b     ..
.RPP
    lda #')'                                       ; 8bd1: a9 29       .)
    jsr OUT                                        ; 8bd3: 20 0e 85     ..
    jmp POP                                        ; 8bd6: 4c 3a 83    L:.

.BADAT
    brk                                            ; 8bd9: 00          .              ; Unknown atom type

    equb &0c                                       ; 8bda: 0c          .
    equs "Bad atom type"                           ; 8bdb: 42 61 64... Bad
    equb 0                                         ; 8be8: 00          .


    ; **** Print atom
.PATOM
    ldy #0                                         ; 8be9: a0 00       ..
    lda (ARG),y                                    ; 8beb: b1 30       .0
.PATOMB
    beq OKP                                        ; 8bed: f0 24       .$             ; If char atom
    cmp #NUMF                                      ; 8bef: c9 04       ..
    beq PNUM                                       ; 8bf1: f0 4b       .K             ; If number atom
    cmp #SUBRF                                     ; 8bf3: c9 08       ..
    beq HASH                                       ; 8bf5: f0 09       ..             ; If subr atom
    cmp #FSUBRF                                    ; 8bf7: c9 0c       ..
    bne BADAT                                      ; 8bf9: d0 de       ..
    lda #'F'                                       ; 8bfb: a9 46       .F             ; Fsubr
    jsr OUT                                        ; 8bfd: 20 0e 85     ..
.HASH
    ldx #SUBOFF                                    ; 8c00: a2 58       .X
    jsr MESSAG                                     ; 8c02: 20 00 85     ..
    ldy #5                                         ; 8c05: a0 05       ..
    lda (ARG),y                                    ; 8c07: b1 30       .0
    sta ACL+1                                      ; 8c09: 85 73       .s             ; Print entry addr.
    dey                                            ; 8c0b: 88          .              ; Y=&04
    lda (ARG),y                                    ; 8c0c: b1 30       .0
    sta ACL                                        ; 8c0e: 85 72       .r
    jmp PINT                                       ; 8c10: 4c 57 8c    LW.


    ; *** Char atoms
.OKP
    jsr GENDS                                      ; 8c13: 20 8c 8c     ..
    ldx #0                                         ; 8c16: a2 00       ..
    beq INCHP                                      ; 8c18: f0 1e       ..             ; ALWAYS branch

.FOOT
    lda (AA,x)                                     ; 8c1a: a1 1e       ..
    ldy ESCHF                                      ; 8c1c: ac 2f 04    ./.
    bmi ESCFT                                      ; 8c1f: 30 06       0.
.FTOUT
    jsr OUT                                        ; 8c21: 20 0e 85     ..
    jmp INCHP                                      ; 8c24: 4c 38 8c    L8.

.ESCFT
    ldy #6                                         ; 8c27: a0 06       ..
    jsr TERMQ                                      ; 8c29: 20 e5 88     ..
    bne FTOUT                                      ; 8c2c: d0 f3       ..
    pha                                            ; 8c2e: 48          H              ; Save character
    lda #'!'                                       ; 8c2f: a9 21       .!             ; Escape in char
    jsr OUT                                        ; 8c31: 20 0e 85     ..
    pla                                            ; 8c34: 68          h
    jmp FTOUT                                      ; 8c35: 4c 21 8c    L!.

.INCHP
    jsr NEXTAA                                     ; 8c38: 20 d9 89     ..
    bcc FOOT                                       ; 8c3b: 90 dd       ..
    rts                                            ; 8c3d: 60          `


    ; **** Print a number
.PNUM
    ldy #2                                         ; 8c3e: a0 02       ..
    lda (ARG),y                                    ; 8c40: b1 30       .0
    sta ACL                                        ; 8c42: 85 72       .r
    iny                                            ; 8c44: c8          .              ; Y=&03
    lda (ARG),y                                    ; 8c45: b1 30       .0
    sta ACL+1                                      ; 8c47: 85 73       .s
    bpl PINT                                       ; 8c49: 10 0c       ..
    lda #'-'                                       ; 8c4b: a9 2d       .-
    jsr OUT                                        ; 8c4d: 20 0e 85     ..
    ldx #ACL                                       ; 8c50: a2 72       .r
    ldy #0                                         ; 8c52: a0 00       ..
    jsr MD                                         ; 8c54: 20 34 a0     4.

    ; **** Actual number printer
.PINT
    ldx #5                                         ; 8c57: a2 05       ..
    lda #0                                         ; 8c59: a9 00       ..
.CLDIV
    sta NBUFF,x                                    ; 8c5b: 95 14       ..
    dex                                            ; 8c5d: ca          .
    bpl CLDIV                                      ; 8c5e: 10 fb       ..
    sta XTNDL                                      ; 8c60: 85 74       .t
    sta XTNDL+1                                    ; 8c62: 85 75       .u
    sta AUXL+1                                     ; 8c64: 85 77       .w
    lda #&0a                                       ; 8c66: a9 0a       ..
    sta AUXL                                       ; 8c68: 85 76       .v
.NOMSIN
    jsr DIV                                        ; 8c6a: 20 05 a0     ..
    lda XTNDL                                      ; 8c6d: a5 74       .t
    sty XTNDL                                      ; 8c6f: 84 74       .t
    ora #&30                                       ; 8c71: 09 30       .0
    ldx NIND                                       ; 8c73: a6 19       ..
    sta NBUFF,x                                    ; 8c75: 95 14       ..
    inc NIND                                       ; 8c77: e6 19       ..
    lda ACL                                        ; 8c79: a5 72       .r
    ora ACL+1                                      ; 8c7b: 05 73       .s
    bne NOMSIN                                     ; 8c7d: d0 eb       ..
    ldx #4                                         ; 8c7f: a2 04       ..
.MDIGP
    lda NBUFF,x                                    ; 8c81: b5 14       ..
    beq NDP                                        ; 8c83: f0 03       ..
    jsr OUT                                        ; 8c85: 20 0e 85     ..
.NDP
    dex                                            ; 8c88: ca          .
    bpl MDIGP                                      ; 8c89: 10 f6       ..
    rts                                            ; 8c8b: 60          `


    ; **** Finds end of char atom
.GENDS
    lda ARG                                        ; 8c8c: a5 30       .0
    ldy #1                                         ; 8c8e: a0 01       ..             ; Char atom
    clc                                            ; 8c90: 18          .
    adc (ARG),y                                    ; 8c91: 71 30       q0             ; AA +1 TO AB -1
    dey                                            ; 8c93: 88          .              ; Y=&00
    sta AB                                         ; 8c94: 85 20       .
    lda ARG+1                                      ; 8c96: a5 31       .1
    adc #0                                         ; 8c98: 69 00       i.
    sta AB+1                                       ; 8c9a: 85 21       .!
    lda #5                                         ; 8c9c: a9 05       ..
    adc ARG                                        ; 8c9e: 65 30       e0
    sta AA                                         ; 8ca0: 85 1e       ..
    lda ARG+1                                      ; 8ca2: a5 31       .1
    adc #0                                         ; 8ca4: 69 00       i.
    sta AA+1                                       ; 8ca6: 85 1f       ..
    rts                                            ; 8ca8: 60          `


    ; *** EOF
.EOF
    jsr ALLNUM                                     ; 8ca9: 20 87 94     ..
    ldy #2                                         ; 8cac: a0 02       ..             ; Get file handle
    lda (ARGA),y                                   ; 8cae: b1 3a       .:
    tay                                            ; 8cb0: a8          .              ; Y=file handle
    ldx #ACL                                       ; 8cb1: a2 72       .r             ; Put pointer into ACL; X=zero page address for result
    lda #0                                         ; 8cb3: a9 00       ..
    jsr osargs                                     ; 8cb5: 20 da ff     ..            ; Get sequential file pointer into zero page address X (A=0)
    ldx #ARGINF                                    ; 8cb8: a2 90       ..             ; File extent; X=zero page address for result
    lda #2                                         ; 8cba: a9 02       ..
    jsr osargs                                     ; 8cbc: 20 da ff     ..            ; Get length of file into zero page address X (A=2)
    ldx #2                                         ; 8cbf: a2 02       ..
.EOFCP
    lda ACL,x                                      ; 8cc1: b5 72       .r
    cmp ARGINF,x                                   ; 8cc3: d5 90       ..
    bne EOFNO                                      ; 8cc5: d0 06       ..
    dex                                            ; 8cc7: ca          .
    bpl EOFCP                                      ; 8cc8: 10 f7       ..
    jmp YES                                        ; 8cca: 4c 31 83    L1.

.EOFNO
    jmp NO                                         ; 8ccd: 4c 2d 83    L-.


    ; **** CLOSE
.CLOS
    jsr ALLNUM                                     ; 8cd0: 20 87 94     ..
    ldy #2                                         ; 8cd3: a0 02       ..
    lda (ARGA),y                                   ; 8cd5: b1 3a       .:
    tay                                            ; 8cd7: a8          .
    lda #osfind_close                              ; 8cd8: a9 00       ..             ; Close file (A lost)
    jsr osfind                                     ; 8cda: 20 ce ff     ..            ; Close one or all files
    jmp NO                                         ; 8cdd: 4c 2d 83    L-.


    ; ******************************
    ; File with CAR, CDR and COND
    ; functions.  Includes PROGN,
    ; PROGNA and POINTN as useful
    ; entry points.
    ; ******************************
.PARERR
    brk                                            ; 8ce0: 00          .              ; COND syntax

    equb &0d                                       ; 8ce1: 0d          .
    equs "COND syntax"                             ; 8ce2: 43 4f 4e... CON
    equb 0                                         ; 8ced: 00          .


    ; **** COND
.COND
    lda WSA+1                                      ; 8cee: a5 35       .5
    bne REMAIN                                     ; 8cf0: d0 03       ..
    jmp POPA                                       ; 8cf2: 4c 38 83    L8.

.REMAIN
    jsr NXTARH                                     ; 8cf5: 20 f5 88     ..
    ldy #0                                         ; 8cf8: a0 00       ..
    lda (ARG),y                                    ; 8cfa: b1 30       .0
    bpl PARERR                                     ; 8cfc: 10 e2       ..
    ldy #4                                         ; 8cfe: a0 04       ..             ; Split:
    lda (ARG),y                                    ; 8d00: b1 30       .0             ; Condition - ARG
    sta WSB+1                                      ; 8d02: 85 37       .7             ; Actions   - WSB
    dey                                            ; 8d04: 88          .              ; Rest      - WSA; Y=&03
    lda (ARG),y                                    ; 8d05: b1 30       .0
    sta WSB                                        ; 8d07: 85 36       .6
    dey                                            ; 8d09: 88          .              ; Y=&02
    lda (ARG),y                                    ; 8d0a: b1 30       .0
    tax                                            ; 8d0c: aa          .
    dey                                            ; 8d0d: 88          .              ; Y=&01
    lda (ARG),y                                    ; 8d0e: b1 30       .0
    stx ARG+1                                      ; 8d10: 86 31       .1
    sta ARG                                        ; 8d12: 85 30       .0
    jsr EVALU                                      ; 8d14: 20 39 85     9.
    lda ARG+1                                      ; 8d17: a5 31       .1             ; Condition NIL?
    beq COND                                       ; 8d19: f0 d3       ..             ; Next condition duo
    lda WSB+1                                      ; 8d1b: a5 37       .7
    beq PRGEND                                     ; 8d1d: f0 0d       ..
    sta WSA+1                                      ; 8d1f: 85 35       .5
    lda WSB                                        ; 8d21: a5 36       .6
    sta WSA                                        ; 8d23: 85 34       .4
.MTODO
    jsr NXEVAM                                     ; 8d25: 20 36 85     6.
.PROGN
    lda WSA+1                                      ; 8d28: a5 35       .5
    bne MTODO                                      ; 8d2a: d0 f9       ..
.PRGEND
    jmp POP                                        ; 8d2c: 4c 3a 83    L:.


    ; **** UNTIL
.UNTIL
    jsr NXEVAL                                     ; 8d2f: 20 1e 85     ..
    lda ARG+1                                      ; 8d32: a5 31       .1
    beq PRGEND                                     ; 8d34: f0 f6       ..
    bne WILLY                                      ; 8d36: d0 0c       ..             ; ALWAYS branch


    ; **** WHILE
.WHILE
    jsr NXEVAL                                     ; 8d38: 20 1e 85     ..
    lda ARG+1                                      ; 8d3b: a5 31       .1
    bne PRGEND                                     ; 8d3d: d0 ed       ..
    beq WILLY                                      ; 8d3f: f0 03       ..             ; ALWAYS branch

.WILL
    jsr NXEVAM                                     ; 8d41: 20 36 85     6.
.WILLY
    lda WSA+1                                      ; 8d44: a5 35       .5
    bne WILL                                       ; 8d46: d0 f9       ..
    sta XREP                                       ; 8d48: 85 23       .#
    jmp POP                                        ; 8d4a: 4c 3a 83    L:.


    ; **** QUOTE
.QUO
    jsr NXTARG                                     ; 8d4d: 20 ee 88     ..
    jmp POP                                        ; 8d50: 4c 3a 83    L:.


    ; ******************************
    ; Now the CAR - CDR complex
    ; ******************************
.PERR
    brk                                            ; 8d53: 00          .              ; Atomic arg

    equb &0e                                       ; 8d54: 0e          .
    equs "CAR/CDR of atom"                         ; 8d55: 43 41 52... CAR
    equb 0                                         ; 8d64: 00          .

.CDDDR
    ldx #&1f                                       ; 8d65: a2 1f       ..
    bne CXR                                        ; 8d67: d0 32       .2             ; ALWAYS branch

.CADDR
    ldx #&1b                                       ; 8d69: a2 1b       ..
    bne CXR                                        ; 8d6b: d0 2e       ..             ; ALWAYS branch

.CDADR
    ldx #&17                                       ; 8d6d: a2 17       ..
    bne CXR                                        ; 8d6f: d0 2a       .*             ; ALWAYS branch

.CAADR
    ldx #&13                                       ; 8d71: a2 13       ..
    bne CXR                                        ; 8d73: d0 26       .&             ; ALWAYS branch

.CDDAR
    ldx #&0f                                       ; 8d75: a2 0f       ..
    bne CXR                                        ; 8d77: d0 22       ."             ; ALWAYS branch

.CDDR
    ldx #&0e                                       ; 8d79: a2 0e       ..
    bne CXR                                        ; 8d7b: d0 1e       ..             ; ALWAYS branch

.CADAR
    ldx #&0b                                       ; 8d7d: a2 0b       ..
    bne CXR                                        ; 8d7f: d0 1a       ..             ; ALWAYS branch

.CADR
    ldx #&0a                                       ; 8d81: a2 0a       ..
    bne CXR                                        ; 8d83: d0 16       ..             ; ALWAYS branch

.CDAAR
    ldx #7                                         ; 8d85: a2 07       ..
    bne CXR                                        ; 8d87: d0 12       ..             ; ALWAYS branch

.CDAR
    ldx #6                                         ; 8d89: a2 06       ..
    bne CXR                                        ; 8d8b: d0 0e       ..             ; ALWAYS branch

.CDR
    ldx #5                                         ; 8d8d: a2 05       ..
    bne CXR                                        ; 8d8f: d0 0a       ..             ; ALWAYS branch

.CAAAR
    ldx #3                                         ; 8d91: a2 03       ..
    bne CXR                                        ; 8d93: d0 06       ..             ; ALWAYS branch

.CAAR
    ldx #2                                         ; 8d95: a2 02       ..
    bne CXR                                        ; 8d97: d0 02       ..             ; ALWAYS branch

.CAR
    ldx #1                                         ; 8d99: a2 01       ..
.CXR
    lda ARGA                                       ; 8d9b: a5 3a       .:
    sta ARG                                        ; 8d9d: 85 30       .0
    lda ARGA+1                                     ; 8d9f: a5 3b       .;
    sta ARG+1                                      ; 8da1: 85 31       .1
.CXLP
    cmp #0                                         ; 8da3: c9 00       ..
    beq PERR                                       ; 8da5: f0 ac       ..
    ldy #0                                         ; 8da7: a0 00       ..
    lda (ARG),y                                    ; 8da9: b1 30       .0
    bpl PERR                                       ; 8dab: 10 a6       ..
    ldy CXXXR,x                                    ; 8dad: bc 4b 82    .K.
    lda (ARG),y                                    ; 8db0: b1 30       .0
    pha                                            ; 8db2: 48          H
    dey                                            ; 8db3: 88          .
    lda (ARG),y                                    ; 8db4: b1 30       .0
    sta ARG                                        ; 8db6: 85 30       .0
    pla                                            ; 8db8: 68          h
    sta ARG+1                                      ; 8db9: 85 31       .1
    dex                                            ; 8dbb: ca          .
    ldy CXXXR,x                                    ; 8dbc: bc 4b 82    .K.
    bne CXLP                                       ; 8dbf: d0 e2       ..
    jmp POP                                        ; 8dc1: 4c 3a 83    L:.


    ; **** ERROR
.ERRORL
    jsr PRINTE                                     ; 8dc4: 20 fe 8a     ..
.LISPER
    brk                                            ; 8dc7: 00          .

    equb &0f                                       ; 8dc8: 0f          .
    equs "ERROR function"                          ; 8dc9: 45 52 52... ERR
    equb 0                                         ; 8dd7: 00          .


    ; **** AND
._AND
    lda WSA+1                                      ; 8dd8: a5 35       .5
    bne ANDON                                      ; 8dda: d0 03       ..
    jmp YES                                        ; 8ddc: 4c 31 83    L1.

.ANDON
    jsr NXEVAM                                     ; 8ddf: 20 36 85     6.
    lda ARG+1                                      ; 8de2: a5 31       .1
    bne _AND                                       ; 8de4: d0 f2       ..
    jmp NO                                         ; 8de6: 4c 2d 83    L-.


    ; **** OR
.OR
    lda WSA+1                                      ; 8de9: a5 35       .5
    bne ORON                                       ; 8deb: d0 03       ..
    jmp NO                                         ; 8ded: 4c 2d 83    L-.

.ORON
    jsr NXEVAM                                     ; 8df0: 20 36 85     6.
    lda ARG+1                                      ; 8df3: a5 31       .1
    beq OR                                         ; 8df5: f0 f2       ..
    jmp YES                                        ; 8df7: 4c 31 83    L1.


    ; **** LOOOP
.LOOP
    lda WSA                                        ; 8dfa: a5 34       .4
    sta WSC                                        ; 8dfc: 85 38       .8
    lda WSA+1                                      ; 8dfe: a5 35       .5
    sta WSC+1                                      ; 8e00: 85 39       .9
.RESTAR
    lda WSC                                        ; 8e02: a5 38       .8
    sta WSA                                        ; 8e04: 85 34       .4
    lda WSC+1                                      ; 8e06: a5 39       .9
    sta WSA+1                                      ; 8e08: 85 35       .5
.RIPON
    lda WSA+1                                      ; 8e0a: a5 35       .5
    beq RESTAR                                     ; 8e0c: f0 f4       ..
    sta XREP                                       ; 8e0e: 85 23       .#
    jsr NXEVAM                                     ; 8e10: 20 36 85     6.
    lda XREP                                       ; 8e13: a5 23       .#
    bne RIPON                                      ; 8e15: d0 f3       ..
    lda #&ff                                       ; 8e17: a9 ff       ..
    sta XREP                                       ; 8e19: 85 23       .#
    jmp POP                                        ; 8e1b: 4c 3a 83    L:.


    ; ******************************
    ; Extra LISP entry points
    ; ******************************
    ; **** CONS
.CONS
    jsr ALPAIR                                     ; 8e1e: 20 53 84     S.
    ldy #4                                         ; 8e21: a0 04       ..
.CONSLP
    lda WSC+1,y                                    ; 8e23: b9 39 00    .9.
    sta (POINT),y                                  ; 8e26: 91 7a       .z
    dey                                            ; 8e28: 88          .
    bne CONSLP                                     ; 8e29: d0 f8       ..
    lda POINT                                      ; 8e2b: a5 7a       .z
    sta ARG                                        ; 8e2d: 85 30       .0
    lda POINT+1                                    ; 8e2f: a5 7b       .{
    jmp POPA                                       ; 8e31: 4c 38 83    L8.


    ; **** SET
.SET
    jsr NXEVAL                                     ; 8e34: 20 1e 85     ..
    jmp DOSET                                      ; 8e37: 4c 3d 8e    L=.


    ; **** SETQ
.SETQ
    jsr NXTARG                                     ; 8e3a: 20 ee 88     ..
.DOSET
    lda ARG+1                                      ; 8e3d: a5 31       .1
    beq SETERR                                     ; 8e3f: f0 1a       ..
    ldy #0                                         ; 8e41: a0 00       ..
    lda (ARG),y                                    ; 8e43: b1 30       .0
    bne SETERR                                     ; 8e45: d0 14       ..
    jsr SAVAR                                      ; 8e47: 20 6f 8b     o.
    jsr NXEVAL                                     ; 8e4a: 20 1e 85     ..
    ldy #2                                         ; 8e4d: a0 02       ..             ; Alter value cell
    lda ARG                                        ; 8e4f: a5 30       .0
    sta (WSB),y                                    ; 8e51: 91 36       .6
    iny                                            ; 8e53: c8          .              ; Y=&03
    lda ARG+1                                      ; 8e54: a5 31       .1
    sta (WSB),y                                    ; 8e56: 91 36       .6
    jmp POP                                        ; 8e58: 4c 3a 83    L:.

.SETERR
    brk                                            ; 8e5b: 00          .              ; SET non-atomic

    equb &10                                       ; 8e5c: 10          .
    equs "Bad assignment"                          ; 8e5d: 42 61 64... Bad
    equb 0                                         ; 8e6b: 00          .


    ; **** LIST
.LIST
    lda #0                                         ; 8e6c: a9 00       ..
    sta ARG+1                                      ; 8e6e: 85 31       .1
    ldx TVSEXT                                     ; 8e70: a6 33       .3
    cpx #&0c                                       ; 8e72: e0 0c       ..
    bcc NOLLY                                      ; 8e74: 90 2a       .*
.LL
    stx YSAV                                       ; 8e76: 86 22       ."
    jsr ALPAIR                                     ; 8e78: 20 53 84     S.
    ldx YSAV                                       ; 8e7b: a6 22       ."
    ldy #4                                         ; 8e7d: a0 04       ..
    lda ARG+1                                      ; 8e7f: a5 31       .1
    sta (POINT),y                                  ; 8e81: 91 7a       .z
    dey                                            ; 8e83: 88          .              ; Y=&03
    lda ARG                                        ; 8e84: a5 30       .0
    sta (POINT),y                                  ; 8e86: 91 7a       .z
    dex                                            ; 8e88: ca          .
    dey                                            ; 8e89: 88          .              ; Y=&02
    lda TVS,x                                      ; 8e8a: b5 30       .0
    sta (POINT),y                                  ; 8e8c: 91 7a       .z
    dex                                            ; 8e8e: ca          .
    dey                                            ; 8e8f: 88          .              ; Y=&01
    lda TVS,x                                      ; 8e90: b5 30       .0
    sta (POINT),y                                  ; 8e92: 91 7a       .z
    lda POINT                                      ; 8e94: a5 7a       .z
    sta ARG                                        ; 8e96: 85 30       .0
    lda POINT+1                                    ; 8e98: a5 7b       .{
    sta ARG+1                                      ; 8e9a: 85 31       .1
    cpx #&0c                                       ; 8e9c: e0 0c       ..
    bcs LL                                         ; 8e9e: b0 d6       ..
.NOLLY
    jmp POP                                        ; 8ea0: 4c 3a 83    L:.


    ; **** VDU
.VDU
    jsr ALLNUM                                     ; 8ea3: 20 87 94     ..
    ldx #&0a                                       ; 8ea6: a2 0a       ..
.MVDU
    lda TVS,x                                      ; 8ea8: b5 30       .0
    sta ARG                                        ; 8eaa: 85 30       .0
    lda TVS+1,x                                    ; 8eac: b5 31       .1
    sta ARG+1                                      ; 8eae: 85 31       .1
    ldy #2                                         ; 8eb0: a0 02       ..
    lda (ARG),y                                    ; 8eb2: b1 30       .0             ; LS byte of arg
    jsr oswrch                                     ; 8eb4: 20 ee ff     ..            ; Write character
    inx                                            ; 8eb7: e8          .
    inx                                            ; 8eb8: e8          .
    cpx TVSEXT                                     ; 8eb9: e4 33       .3
    bcc MVDU                                       ; 8ebb: 90 eb       ..
    jmp POP                                        ; 8ebd: 4c 3a 83    L:.            ; Result is ARG


    ; ******************************
    ; Conditionals on numeric atoms
    ; ******************************
    ; **** CHARP
.CHARP
    ldx ARGA+1                                     ; 8ec0: a6 3b       .;
    beq YESNIL                                     ; 8ec2: f0 06       ..
    ldy #0                                         ; 8ec4: a0 00       ..
    lda (ARGA),y                                   ; 8ec6: b1 3a       .:
    bne NNO                                        ; 8ec8: d0 1e       ..
.YESNIL
    jmp YES                                        ; 8eca: 4c 31 83    L1.


    ; **** SUBRP
.SUBRP
    lda #SUBRF                                     ; 8ecd: a9 08       ..
    bne TYPE                                       ; 8ecf: d0 0a       ..             ; ALWAYS branch


    ; **** FSUBRP
.FSUBRP
    lda #FSUBRF                                    ; 8ed1: a9 0c       ..
    bne TYPE                                       ; 8ed3: d0 06       ..             ; ALWAYS branch


    ; **** LISTP
.LISTP
    lda #LISTF                                     ; 8ed5: a9 80       ..
    bne TYPE                                       ; 8ed7: d0 02       ..             ; ALWAYS branch


    ; **** NUMBERP
.NUMP
    lda #NUMF                                      ; 8ed9: a9 04       ..
.TYPE
    ldx ARGA+1                                     ; 8edb: a6 3b       .;
    beq NNO                                        ; 8edd: f0 09       ..
    ldy #0                                         ; 8edf: a0 00       ..
    cmp (ARGA),y                                   ; 8ee1: d1 3a       .:
    bne NNO                                        ; 8ee3: d0 03       ..
    jmp YES                                        ; 8ee5: 4c 31 83    L1.

.NNO
    jmp NO                                         ; 8ee8: 4c 2d 83    L-.


    ; **** ZEROP
.ZEROP
    ldx #0                                         ; 8eeb: a2 00       ..
    beq TSN                                        ; 8eed: f0 02       ..             ; ALWAYS branch


    ; **** ONEP
.ONEP
    ldx #1                                         ; 8eef: a2 01       ..
.TSN
    lda ARGA+1                                     ; 8ef1: a5 3b       .;
    beq NNO                                        ; 8ef3: f0 f3       ..             ; CHECK IT IS NUM.
    ldy #0                                         ; 8ef5: a0 00       ..
    lda (ARGA),y                                   ; 8ef7: b1 3a       .:
    cmp #NUMF                                      ; 8ef9: c9 04       ..
    bne NNO                                        ; 8efb: d0 eb       ..
    ldy #2                                         ; 8efd: a0 02       ..
    txa                                            ; 8eff: 8a          .
    eor (ARG),y                                    ; 8f00: 51 30       Q0
    iny                                            ; 8f02: c8          .              ; Y=&03
    ora (ARG),y                                    ; 8f03: 11 30       .0
    bne NNO                                        ; 8f05: d0 e1       ..
    jmp YES                                        ; 8f07: 4c 31 83    L1.


    ; **** MINUSP
.MINUSP
    lda ARGA+1                                     ; 8f0a: a5 3b       .;
    beq NNO                                        ; 8f0c: f0 da       ..
    ldy #0                                         ; 8f0e: a0 00       ..
    lda (ARGA),y                                   ; 8f10: b1 3a       .:
    cmp #NUMF                                      ; 8f12: c9 04       ..
    bne NNO                                        ; 8f14: d0 d2       ..
    ldy #3                                         ; 8f16: a0 03       ..
    lda (ARG),y                                    ; 8f18: b1 30       .0
    bpl NNO                                        ; 8f1a: 10 cc       ..
    jmp YES                                        ; 8f1c: 4c 31 83    L1.


    ; ******************************
    ; Set up DCB for file I/O
    ; ******************************
.SETDCB
    jsr MKNAM                                      ; 8f1f: 20 52 90     R.            ; Pointer to name
    lda #osbyte_read_high_order_address            ; 8f22: a9 82       ..             ; m/c higher order addr
    jsr osbyte                                     ; 8f24: 20 f4 ff     ..            ; Read the filing system 'machine high order address'
    lda #0                                         ; 8f27: a9 00       ..
    sta OSINFO+6                                   ; 8f29: 8d 3e 04    .>.
    lda #AREEXT                                    ; 8f2c: a9 00       ..             ; Load & save addr
    sta OSINFO+2                                   ; 8f2e: 8d 3a 04    .:.
    sta OSINFO+10                                  ; 8f31: 8d 42 04    .B.
    lda IMBOT                                      ; 8f34: ad 2c 04    .,.
    sta OSINFO+3                                   ; 8f37: 8d 3b 04    .;.
    sta OSINFO+11                                  ; 8f3a: 8d 43 04    .C.
    stx OSINFO+4                                   ; 8f3d: 8e 3c 04    .<.            ; X and Y contain the machine high order address (low, high)
    stx OSINFO+12                                  ; 8f40: 8e 44 04    .D.
    sty OSINFO+5                                   ; 8f43: 8c 3d 04    .=.
    sty OSINFO+13                                  ; 8f46: 8c 45 04    .E.
    lda AREVAL                                     ; 8f49: ad 2d 04    .-.            ; End addr
    sta OSINFO+14                                  ; 8f4c: 8d 46 04    .F.
    lda AREVAL+1                                   ; 8f4f: ad 2e 04    ...
    sta OSINFO+15                                  ; 8f52: 8d 47 04    .G.
    stx OSINFO+16                                  ; 8f55: 8e 48 04    .H.
    sty OSINFO+17                                  ; 8f58: 8c 49 04    .I.
    rts                                            ; 8f5b: 60          `              ; DCB complete


    ; **** LOAD
.LOAD
    jsr SETDCB                                     ; 8f5c: 20 1f 8f     ..
    lda #osfile_load                               ; 8f5f: a9 ff       ..             ; Load operation
    ldx #<(OSINFO)                                 ; 8f61: a2 38       .8
    ldy #>(OSINFO)                                 ; 8f63: a0 04       ..
    jsr osfile                                     ; 8f65: 20 dd ff     ..            ; Load named file (if XY+6 contains 0, use specified address) (A=255)
.INUREL
    lda #AREEXT                                    ; 8f68: a9 00       ..             ; Set up base
    sta RELBS                                      ; 8f6a: 85 7a       .z
    lda IMBOT                                      ; 8f6c: ad 2c 04    .,.
    sta RELBS+1                                    ; 8f6f: 85 7b       .{
    jsr UNREL                                      ; 8f71: 20 cf 90     ..
    jmp INIT                                       ; 8f74: 4c b5 84    L..            ; Re-start LISP


    ; **** DUMP
.DUMP
    jsr RUBBSH                                     ; 8f77: 20 46 9b     F.            ; GC
    jsr SETDCB                                     ; 8f7a: 20 1f 8f     ..            ; Set up before relat
    jsr RELAT                                      ; 8f7d: 20 5d 91     ].            ; Make relocatable
    lda #osfile_save                               ; 8f80: a9 00       ..             ; Save
    ldx #<(OSINFO)                                 ; 8f82: a2 38       .8
    ldy #>(OSINFO)                                 ; 8f84: a0 04       ..
    jsr osfile                                     ; 8f86: 20 dd ff     ..            ; Save a block of memory (returning file length and attributes) (A=0)
    jmp POP                                        ; 8f89: 4c 3a 83    L:.

.CHARQ
    lda ARGA+1                                     ; 8f8c: a5 3b       .;
    beq FILERR                                     ; 8f8e: f0 07       ..
.CHARQR
    ldy #0                                         ; 8f90: a0 00       ..
    lda (ARGA),y                                   ; 8f92: b1 3a       .:
    bne FILERR                                     ; 8f94: d0 01       ..
    rts                                            ; 8f96: 60          `

.FILERR
    brk                                            ; 8f97: 00          .              ; Not char atom

    equb &11                                       ; 8f98: 11          .
    equs "Character atom expected"                 ; 8f99: 43 68 61... Cha
    equb 0                                         ; 8fb0: 00          .

.ATOA
    lda ARGA                                       ; 8fb1: a5 3a       .:
    sta ARG                                        ; 8fb3: 85 30       .0
    lda ARGA+1                                     ; 8fb5: a5 3b       .;
    sta ARG+1                                      ; 8fb7: 85 31       .1
    rts                                            ; 8fb9: 60          `

.ANUM
    jsr ALLNUM                                     ; 8fba: 20 87 94     ..
    ldy #3                                         ; 8fbd: a0 03       ..
    lda (ARGA),y                                   ; 8fbf: b1 3a       .:
    sta ACL+1                                      ; 8fc1: 85 73       .s
    dey                                            ; 8fc3: 88          .              ; Y=&02
    lda (ARGA),y                                   ; 8fc4: b1 3a       .:
    sta ACL                                        ; 8fc6: 85 72       .r
    rts                                            ; 8fc8: 60          `


    ; **** CALL
.CALL
    jsr ANUM                                       ; 8fc9: 20 ba 8f     ..
    lda #>(BACALL+1)                               ; 8fcc: a9 8f       ..
    pha                                            ; 8fce: 48          H              ; Set up return
    lda #<(BACALL+1)                               ; 8fcf: a9 dd       ..             ; address
    pha                                            ; 8fd1: 48          H
    lda (ARGB),y                                   ; 8fd2: b1 3c       .<             ; Get A
    jmp (ACL)                                      ; 8fd4: 6c 72 00    lr.            ; and call


    ; **** PEEK
.PEEK
    jsr ANUM                                       ; 8fd7: 20 ba 8f     ..
    ldy #0                                         ; 8fda: a0 00       ..
.BACALL
    lda (ACL),y                                    ; 8fdc: b1 72       .r
.BECALM
    sta ACL                                        ; 8fde: 85 72       .r
    lda #0                                         ; 8fe0: a9 00       ..
    sta ACL+1                                      ; 8fe2: 85 73       .s
    jmp ACLRET                                     ; 8fe4: 4c a4 92    L..


    ; **** POKE
.POKE
    jsr ANUM                                       ; 8fe7: 20 ba 8f     ..
    lda (ARGB),y                                   ; 8fea: b1 3c       .<
    ldy #0                                         ; 8fec: a0 00       ..
    sta (ACL),y                                    ; 8fee: 91 72       .r
    lda ARGB                                       ; 8ff0: a5 3c       .<
    sta ARG                                        ; 8ff2: 85 30       .0
    lda ARGB+1                                     ; 8ff4: a5 3d       .=
    jmp POPA                                       ; 8ff6: 4c 38 83    L8.


    ; OBLIST
.OBLIST
    jsr SETCEL                                     ; 8ff9: 20 be 9a     ..            ; Only want good
    ldy #0                                         ; 8ffc: a0 00       ..             ; cells
    sty ARG+1                                      ; 8ffe: 84 31       .1
.BOOM
    lda (CELL),y                                   ; 9000: b1 7c       .|
    bne NEXOS                                      ; 9002: d0 31       .1
    jsr USEFUL                                     ; 9004: 20 3d 90     =.
    beq NEXOS                                      ; 9007: f0 2c       .,             ; Value UNDEFINED?
    lda CELL                                       ; 9009: a5 7c       .|
    sta WSA                                        ; 900b: 85 34       .4
    lda CELL+1                                     ; 900d: a5 7d       .}
    sta WSA+1                                      ; 900f: 85 35       .5
    jsr ALPAIR                                     ; 9011: 20 53 84     S.
    ldy #4                                         ; 9014: a0 04       ..
    lda ARG+1                                      ; 9016: a5 31       .1
    sta (POINT),y                                  ; 9018: 91 7a       .z
    dey                                            ; 901a: 88          .              ; Y=&03
    lda ARG                                        ; 901b: a5 30       .0
    sta (POINT),y                                  ; 901d: 91 7a       .z
    dey                                            ; 901f: 88          .              ; Y=&02
    lda WSA+1                                      ; 9020: a5 35       .5
    sta CELL+1                                     ; 9022: 85 7d       .}
    sta (POINT),y                                  ; 9024: 91 7a       .z
    dey                                            ; 9026: 88          .              ; Y=&01
    lda WSA                                        ; 9027: a5 34       .4
    sta CELL                                       ; 9029: 85 7c       .|
    sta (POINT),y                                  ; 902b: 91 7a       .z
    lda POINT+1                                    ; 902d: a5 7b       .{
    sta ARG+1                                      ; 902f: 85 31       .1
    lda POINT                                      ; 9031: a5 7a       .z
    sta ARG                                        ; 9033: 85 30       .0
.NEXOS
    jsr NXCELL                                     ; 9035: 20 70 8a     p.
    bcc BOOM                                       ; 9038: 90 c6       ..
    jmp POP                                        ; 903a: 4c 3a 83    L:.

.USEFUL
    ldy #2                                         ; 903d: a0 02       ..             ; Checks for
    lda (CELL),y                                   ; 903f: b1 7c       .|             ; string rather than
    cmp #<ZA                                       ; 9041: c9 02       ..             ; OBLIST atoms
    bne USABLE                                     ; 9043: d0 0c       ..
    iny                                            ; 9045: c8          .              ; Y=&03
    lda (CELL),y                                   ; 9046: b1 7c       .|
    cmp IMBOT                                      ; 9048: cd 2c 04    .,.
    bne USABLE                                     ; 904b: d0 04       ..
    ldy #5                                         ; 904d: a0 05       ..             ; NIL P-list
    lda (CELL),y                                   ; 904f: b1 7c       .|
.USABLE
    rts                                            ; 9051: 60          `


    ; **** Make DOS name
.MKNAM
    jsr CHARQ                                      ; 9052: 20 8c 8f     ..            ; FOR DOS
    lda #<NAMBUF                                   ; 9055: a9 00       ..
    sta OSINFO                                     ; 9057: 8d 38 04    .8.
    lda #>NAMBUF                                   ; 905a: a9 06       ..
    sta OSINFO+1                                   ; 905c: 8d 39 04    .9.
    ldy #1                                         ; 905f: a0 01       ..
    lda (ARGA),y                                   ; 9061: b1 3a       .:             ; Get name length
    tay                                            ; 9063: a8          .
    lda #&0d                                       ; 9064: a9 0d       ..             ; Terminator
.MORLET
    sta OSWBUF-6,y                                 ; 9066: 99 fa 05    ...
    dey                                            ; 9069: 88          .
    cpy #6                                         ; 906a: c0 06       ..
    bcc USABLE                                     ; 906c: 90 e3       ..
    lda (ARGA),y                                   ; 906e: b1 3a       .:
    bcs MORLET                                     ; 9070: b0 f4       ..             ; Always taken; ALWAYS branch


    ; **** *
.STAR
    jsr CHARQ                                      ; 9072: 20 8c 8f     ..
    ldy #1                                         ; 9075: a0 01       ..
    lda (ARGA),y                                   ; 9077: b1 3a       .:
    cmp #&3e                                       ; 9079: c9 3e       .>
    bcc SMALLP                                     ; 907b: 90 02       ..
    lda #&3e                                       ; 907d: a9 3e       .>
.SMALLP
    tay                                            ; 907f: a8          .
    lda #&0d                                       ; 9080: a9 0d       ..
.MORLEZ
    sta DOSBUF-6,y                                 ; 9082: 99 fa 06    ...
    dey                                            ; 9085: 88          .
    cpy #6                                         ; 9086: c0 06       ..
    bcc STARRY                                     ; 9088: 90 04       ..
    lda (ARGA),y                                   ; 908a: b1 3a       .:
    bcs MORLEZ                                     ; 908c: b0 f4       ..             ; ALWAYS branch

.STARRY
    ldx #<(DOSBUF)                                 ; 908e: a2 00       ..
    ldy #>(DOSBUF)                                 ; 9090: a0 07       ..
    jsr oscli                                      ; 9092: 20 f7 ff     ..
    jmp NO                                         ; 9095: 4c 2d 83    L-.


    ; **** OPEN
.OPE
    jsr MKNAM                                      ; 9098: 20 52 90     R.
    lda ARGB+1                                     ; 909b: a5 3d       .=
    cmp #1                                         ; 909d: c9 01       ..
    bcc WOPEN                                      ; 909f: 90 05       ..
    lda #&c0                                       ; 90a1: a9 c0       ..             ; OPEN FOR READ
    jmp ROPEN                                      ; 90a3: 4c a8 90    L..

.WOPEN
    lda #&80                                       ; 90a6: a9 80       ..             ; OPEN FOR WRITE
.ROPEN
    ldx OSINFO                                     ; 90a8: ae 38 04    .8.
    ldy OSINFO+1                                   ; 90ab: ac 39 04    .9.
    jsr osfind                                     ; 90ae: 20 ce ff     ..            ; Open or close file(s)
    cmp #0                                         ; 90b1: c9 00       ..
    beq FNERR                                      ; 90b3: f0 09       ..
    sta ACL                                        ; 90b5: 85 72       .r
    lda #0                                         ; 90b7: a9 00       ..
    sta ACL+1                                      ; 90b9: 85 73       .s
    jmp ACLRET                                     ; 90bb: 4c a4 92    L..            ; RESULT IN A

.FNERR
    brk                                            ; 90be: 00          .              ; File not found

    equb &d6                                       ; 90bf: d6          .
    equs "File not found"                          ; 90c0: 46 69 6c... Fil
    equb 0                                         ; 90ce: 00          .


    ; **** Unrelativise
.UNREL
    ldy #5                                         ; 90cf: a0 05       ..
    lda (RELBS),y                                  ; 90d1: b1 7a       .z             ; Get old IMBOT value from UNDEFINED
    sec                                            ; 90d3: 38          8
    sbc IMBOT                                      ; 90d4: ed 2c 04    .,.
    sta RELOFF                                     ; 90d7: 8d 33 04    .3.            ; Relativisation constant
    ldy #0                                         ; 90da: a0 00       ..
    lda (RELBS),y                                  ; 90dc: b1 7a       .z             ; Set up slave
    sta AREVAL                                     ; 90de: 8d 2d 04    .-.
    iny                                            ; 90e1: c8          .              ; Y=&01
    lda (RELBS),y                                  ; 90e2: b1 7a       .z             ; Length of IMAGE
    sec                                            ; 90e4: 38          8
    sbc RELOFF                                     ; 90e5: ed 33 04    .3.
    sta AREVAL+1                                   ; 90e8: 8d 2e 04    ...
    sta (RELBS),y                                  ; 90eb: 91 7a       .z             ; Real end of IMAGE
    lda #2                                         ; 90ed: a9 02       ..             ; Get first item
    bpl NXITU                                      ; 90ef: 10 49       .I             ; ALWAYS branch

.NEXTU
    ldy #0                                         ; 90f1: a0 00       ..
    lda (RELBS),y                                  ; 90f3: b1 7a       .z             ; Sort out type
    cmp #CHARF                                     ; 90f5: c9 00       ..
    beq URC                                        ; 90f7: f0 1e       ..
    cmp #SUBRF                                     ; 90f9: c9 08       ..
    beq URS                                        ; 90fb: f0 24       .$
    cmp #FSUBRF                                    ; 90fd: c9 0c       ..
    beq URS                                        ; 90ff: f0 20       .
    cmp #NUMF                                      ; 9101: c9 04       ..
    beq URN                                        ; 9103: f0 0e       ..
    ldy #2                                         ; 9105: a0 02       ..             ; Must be dotted pair
    jsr ALTADU                                     ; 9107: 20 2f 91     /.
    ldy #4                                         ; 910a: a0 04       ..
    jsr ALTADU                                     ; 910c: 20 2f 91     /.
    lda #5                                         ; 910f: a9 05       ..             ; Length
    bpl NXITU                                      ; 9111: 10 27       .'             ; ALWAYS branch

.URN
    lda #4                                         ; 9113: a9 04       ..             ; Number
    bpl NXITU                                      ; 9115: 10 23       .#             ; No alteration; ALWAYS branch

.URC
    jsr TWOADD                                     ; 9117: 20 28 91     (.            ; Character
    ldy #1                                         ; 911a: a0 01       ..
    lda (RELBS),y                                  ; 911c: b1 7a       .z
    jmp NXITU                                      ; 911e: 4c 3a 91    L:.

.URS
.URF
    jsr TWOADD                                     ; 9121: 20 28 91     (.            ; Subr/Fsubr
    lda #6                                         ; 9124: a9 06       ..
    bpl NXITU                                      ; 9126: 10 12       ..             ; ALWAYS branch

.TWOADD
    ldy #3                                         ; 9128: a0 03       ..
    jsr ALTADU                                     ; 912a: 20 2f 91     /.
    ldy #5                                         ; 912d: a0 05       ..
.ALTADU
    lda (RELBS),y                                  ; 912f: b1 7a       .z             ; Adjust addr
    beq NOTU                                       ; 9131: f0 06       ..             ; NIL - needn't alter
    sec                                            ; 9133: 38          8
    sbc RELOFF                                     ; 9134: ed 33 04    .3.
    sta (RELBS),y                                  ; 9137: 91 7a       .z
.NOTU
    rts                                            ; 9139: 60          `

.NXITU
    jsr NXIT                                       ; 913a: 20 40 91     @.
    bcc NEXTU                                      ; 913d: 90 b2       ..
    rts                                            ; 913f: 60          `

.NXIT
    clc                                            ; 9140: 18          .              ; Step to next item
    adc RELBS                                      ; 9141: 65 7a       ez
    sta RELBS                                      ; 9143: 85 7a       .z
    lda #0                                         ; 9145: a9 00       ..
    adc RELBS+1                                    ; 9147: 65 7b       e{
    sta RELBS+1                                    ; 9149: 85 7b       .{
    cmp AREVAL+1                                   ; 914b: cd 2e 04    ...            ; End of image
    bcc OKOUT                                      ; 914e: 90 0b       ..
    bne NOTOK                                      ; 9150: d0 07       ..
    lda RELBS                                      ; 9152: a5 7a       .z
    cmp AREVAL                                     ; 9154: cd 2d 04    .-.
    bcc OKOUT                                      ; 9157: 90 02       ..
.NOTOK
    sec                                            ; 9159: 38          8
    rts                                            ; 915a: 60          `              ; End reached

.OKOUT
    clc                                            ; 915b: 18          .
    rts                                            ; 915c: 60          `              ; End not reached


    ; **** RELAT (somewhat reduced!)
.RELAT
    lda #AREEXT                                    ; 915d: a9 00       ..
    sta RELBS                                      ; 915f: 85 7a       .z             ; Reset base
    lda IMBOT                                      ; 9161: ad 2c 04    .,.
    sta RELBS+1                                    ; 9164: 85 7b       .{
    ldy #0                                         ; 9166: a0 00       ..
    lda AREVAL                                     ; 9168: ad 2d 04    .-.
    sta (RELBS),y                                  ; 916b: 91 7a       .z
    iny                                            ; 916d: c8          .              ; Y=&01
    lda AREVAL+1                                   ; 916e: ad 2e 04    ...
    sta (RELBS),y                                  ; 9171: 91 7a       .z
    rts                                            ; 9173: 60          `


    ; **** RECLAIM
.RECLAM
    jsr RUBBSH                                     ; 9174: 20 46 9b     F.            ; Force G.C.
    jmp NO                                         ; 9177: 4c 2d 83    L-.


    ; **** QUOTIENT
.QUOT
    ldx #ACL                                       ; 917a: a2 72       .r
    bne DODO                                       ; 917c: d0 02       ..             ; ALWAYS branch


    ; **** REMAINDER
.REM
    ldx #XTNDL                                     ; 917e: a2 74       .t
.DODO
    stx XPR                                        ; 9180: 86 89       ..             ; Save index for
    jsr ALLNUM                                     ; 9182: 20 87 94     ..            ; returned number
    ldy #0                                         ; 9185: a0 00       ..
    sty XTNDL                                      ; 9187: 84 74       .t             ; Zero initial rem.
    sty XTNDL+1                                    ; 9189: 84 75       .u
    jsr ALNUM                                      ; 918b: 20 3d 84     =.            ; Have cell ready
    ldy #2                                         ; 918e: a0 02       ..
    lda (ARGA),y                                   ; 9190: b1 3a       .:             ; Move ARG"s" to
    sta ACL                                        ; 9192: 85 72       .r             ; workspace
    lda (ARGB),y                                   ; 9194: b1 3c       .<
    sta AUXL                                       ; 9196: 85 76       .v
    iny                                            ; 9198: c8          .              ; Y=&03
    ora (ARGB),y                                   ; 9199: 11 3c       .<
    beq OVFERR                                     ; 919b: f0 76       .v             ; Divide by zero!
    lda (ARGA),y                                   ; 919d: b1 3a       .:
    sta ACL+1                                      ; 919f: 85 73       .s
    lda (ARGB),y                                   ; 91a1: b1 3c       .<
    sta AUXL+1                                     ; 91a3: 85 77       .w
    jsr DIVPM                                      ; 91a5: 20 02 a0     ..            ; Divide
    lsr SIGN                                       ; 91a8: 46 78       Fx             ; Check sign
    bcc POSV                                       ; 91aa: 90 05       ..
    ldx #ACL                                       ; 91ac: a2 72       .r             ; Change ACL sign
    jsr MD                                         ; 91ae: 20 34 a0     4.
.POSV
    ldy #2                                         ; 91b1: a0 02       ..             ; RETREIVE RESULT
    ldx XPR                                        ; 91b3: a6 89       ..
    lda GCNO,x                                     ; 91b5: b5 00       ..
    sta (POINT),y                                  ; 91b7: 91 7a       .z             ; Put in new cell
    iny                                            ; 91b9: c8          .              ; Y=&03
    lda GCNO+1,x                                   ; 91ba: b5 01       ..
    sta (POINT),y                                  ; 91bc: 91 7a       .z
    jmp AMADE                                      ; 91be: 4c 67 88    Lg.            ; return POINT


    ; **** DIFFERENCE
.DIFF
    jsr ALLNUM                                     ; 91c1: 20 87 94     ..
    jsr ALNUM                                      ; 91c4: 20 3d 84     =.
    ldy #2                                         ; 91c7: a0 02       ..
    lda (ARGA),y                                   ; 91c9: b1 3a       .:
    sec                                            ; 91cb: 38          8
    sbc (ARGB),y                                   ; 91cc: f1 3c       .<
    sta (POINT),y                                  ; 91ce: 91 7a       .z
    iny                                            ; 91d0: c8          .              ; Y=&03
    lda (ARGA),y                                   ; 91d1: b1 3a       .:
    sbc (ARGB),y                                   ; 91d3: f1 3c       .<
    bvs OVFERR                                     ; 91d5: 70 3c       p<
    bvc FINONE                                     ; 91d7: 50 14       P.             ; ALWAYS branch


    ; **** MINUS
.MINUS
    jsr ALLNUM                                     ; 91d9: 20 87 94     ..
    jsr ALNUM                                      ; 91dc: 20 3d 84     =.
    ldy #2                                         ; 91df: a0 02       ..
    lda #0                                         ; 91e1: a9 00       ..
    sec                                            ; 91e3: 38          8
    sbc (ARGA),y                                   ; 91e4: f1 3a       .:
    sta (POINT),y                                  ; 91e6: 91 7a       .z
    iny                                            ; 91e8: c8          .              ; Y=&03
    lda #0                                         ; 91e9: a9 00       ..
    sbc (ARGA),y                                   ; 91eb: f1 3a       .:
.FINONE
    sta (POINT),y                                  ; 91ed: 91 7a       .z
    jmp AMADE                                      ; 91ef: 4c 67 88    Lg.


    ; **** SUB1
.SUBA
    jsr ALLNUM                                     ; 91f2: 20 87 94     ..
    jsr ALNUM                                      ; 91f5: 20 3d 84     =.
    lda #&ff                                       ; 91f8: a9 ff       ..
    clc                                            ; 91fa: 18          .
    bcc WONE                                       ; 91fb: 90 09       ..             ; ALWAYS branch


    ; ADD1
.ADDA
    jsr ALLNUM                                     ; 91fd: 20 87 94     ..
    jsr ALNUM                                      ; 9200: 20 3d 84     =.
    lda #0                                         ; 9203: a9 00       ..
    sec                                            ; 9205: 38          8
.WONE
    pha                                            ; 9206: 48          H
    ldy #2                                         ; 9207: a0 02       ..
    adc (ARGA),y                                   ; 9209: 71 3a       q:
    sta (POINT),y                                  ; 920b: 91 7a       .z
    iny                                            ; 920d: c8          .              ; Y=&03
    pla                                            ; 920e: 68          h
    adc (ARGA),y                                   ; 920f: 71 3a       q:
    bvc FINONE                                     ; 9211: 50 da       P.
.OVFERR
    brk                                            ; 9213: 00          .              ; Overflow

    equb &12                                       ; 9214: 12          .
    equs "Arithmetic overflow"                     ; 9215: 41 72 69... Ari
    equb 0                                         ; 9228: 00          .


    ; **** PLUS
.PLUS
    jsr ALLNUM                                     ; 9229: 20 87 94     ..
    jsr ALNUM                                      ; 922c: 20 3d 84     =.
    lda #0                                         ; 922f: a9 00       ..
    ldy #2                                         ; 9231: a0 02       ..
    sta (POINT),y                                  ; 9233: 91 7a       .z
    iny                                            ; 9235: c8          .              ; Y=&03
    ldx TVSEXT                                     ; 9236: a6 33       .3
    bne PEX                                        ; 9238: d0 18       ..
.MPLUS
    lda TVS,x                                      ; 923a: b5 30       .0
    sta ARG                                        ; 923c: 85 30       .0
    lda TVS+1,x                                    ; 923e: b5 31       .1
    sta ARG+1                                      ; 9240: 85 31       .1
    ldy #2                                         ; 9242: a0 02       ..
    clc                                            ; 9244: 18          .
    lda (POINT),y                                  ; 9245: b1 7a       .z
    adc (ARG),y                                    ; 9247: 71 30       q0
    sta (POINT),y                                  ; 9249: 91 7a       .z
    iny                                            ; 924b: c8          .              ; Y=&03
    lda (POINT),y                                  ; 924c: b1 7a       .z
    adc (ARG),y                                    ; 924e: 71 30       q0
    bvs OVFERR                                     ; 9250: 70 c1       p.
.PEX
    sta (POINT),y                                  ; 9252: 91 7a       .z
    dex                                            ; 9254: ca          .
    dex                                            ; 9255: ca          .
    cpx #&0a                                       ; 9256: e0 0a       ..
    bcs MPLUS                                      ; 9258: b0 e0       ..
    jmp AMADE                                      ; 925a: 4c 67 88    Lg.


    ; **** TIMES
.TIMES
    jsr ALLNUM                                     ; 925d: 20 87 94     ..
    ldx #1                                         ; 9260: a2 01       ..
    stx ACL                                        ; 9262: 86 72       .r
    dex                                            ; 9264: ca          .              ; X=&00
    stx ACL+1                                      ; 9265: 86 73       .s
    ldx TVSEXT                                     ; 9267: a6 33       .3
    bne TREX                                       ; 9269: d0 33       .3
.MTIMES
    lda #0                                         ; 926b: a9 00       ..
    sta XTNDL                                      ; 926d: 85 74       .t
    sta XTNDL+1                                    ; 926f: 85 75       .u
    lda TVS,x                                      ; 9271: b5 30       .0
    sta ARG                                        ; 9273: 85 30       .0
    lda TVS+1,x                                    ; 9275: b5 31       .1
    sta ARG+1                                      ; 9277: 85 31       .1
    ldy #2                                         ; 9279: a0 02       ..
    lda (ARG),y                                    ; 927b: b1 30       .0
    sta AUXL                                       ; 927d: 85 76       .v
    iny                                            ; 927f: c8          .              ; Y=&03
    lda (ARG),y                                    ; 9280: b1 30       .0
    sta AUXL+1                                     ; 9282: 85 77       .w
    stx XPR                                        ; 9284: 86 89       ..
    jsr MULPM                                      ; 9286: 20 e1 9f     ..
    lda XTNDL                                      ; 9289: a5 74       .t
    ora XTNDL+1                                    ; 928b: 05 75       .u
    bne OVFERR                                     ; 928d: d0 84       ..
    lda ACL+1                                      ; 928f: a5 73       .s
    bmi OVFERR                                     ; 9291: 30 80       0.
    ror SIGN                                       ; 9293: 66 78       fx
    bcc POSITV                                     ; 9295: 90 05       ..
    ldx #ACL                                       ; 9297: a2 72       .r
    jsr MD                                         ; 9299: 20 34 a0     4.
.POSITV
    ldx XPR                                        ; 929c: a6 89       ..
.TREX
    dex                                            ; 929e: ca          .
    dex                                            ; 929f: ca          .
    cpx #&0a                                       ; 92a0: e0 0a       ..
    bcs MTIMES                                     ; 92a2: b0 c7       ..
.ACLRET
    jsr ALNUM                                      ; 92a4: 20 3d 84     =.
    ldy #2                                         ; 92a7: a0 02       ..
    lda ACL                                        ; 92a9: a5 72       .r
    sta (POINT),y                                  ; 92ab: 91 7a       .z
    iny                                            ; 92ad: c8          .              ; Y=&03
    lda ACL+1                                      ; 92ae: a5 73       .s
    sta (POINT),y                                  ; 92b0: 91 7a       .z
    jmp AMADE                                      ; 92b2: 4c 67 88    Lg.


    ; **** CHARS
.CHARS
    jsr ALNUM                                      ; 92b5: 20 3d 84     =.
    ldx ARGA+1                                     ; 92b8: a6 3b       .;
    beq XGOOD                                      ; 92ba: f0 15       ..
    ldx #4                                         ; 92bc: a2 04       ..             ; List index
    ldy #0                                         ; 92be: a0 00       ..
    lda (ARGA),y                                   ; 92c0: b1 3a       .:
    bmi XGOOD                                      ; 92c2: 30 0d       0.
    bne FIXTY                                      ; 92c4: d0 08       ..
    iny                                            ; 92c6: c8          .              ; Y=&01
    lda (ARGA),y                                   ; 92c7: b1 3a       .:
    sec                                            ; 92c9: 38          8
    sbc #6                                         ; 92ca: e9 06       ..
    bcs AGOT                                       ; 92cc: b0 06       ..
.FIXTY
    lsr a                                          ; 92ce: 4a          J
    lsr a                                          ; 92cf: 4a          J
    tax                                            ; 92d0: aa          .
.XGOOD
    lda LENTAB,x                                   ; 92d1: bd 6b 82    .k.
.AGOT
    ldy #2                                         ; 92d4: a0 02       ..
    sta (POINT),y                                  ; 92d6: 91 7a       .z
    iny                                            ; 92d8: c8          .              ; Y=&03
    lda #0                                         ; 92d9: a9 00       ..
    sta (POINT),y                                  ; 92db: 91 7a       .z
    jmp AMADE                                      ; 92dd: 4c 67 88    Lg.

.GPLIST
    jsr CHARQ                                      ; 92e0: 20 8c 8f     ..
    ldy #4                                         ; 92e3: a0 04       ..
    lda (ARGA),y                                   ; 92e5: b1 3a       .:
    sta ARG                                        ; 92e7: 85 30       .0
    iny                                            ; 92e9: c8          .              ; Y=&05
    lda (ARGA),y                                   ; 92ea: b1 3a       .:
    jmp POPA                                       ; 92ec: 4c 38 83    L8.


    ; **** RPLACA
.RPLACA
    ldy #1                                         ; 92ef: a0 01       ..
    bne PLAQ                                       ; 92f1: d0 02       ..             ; ALWAYS branch


    ; **** RPLACD
.RPLACD
    ldy #3                                         ; 92f3: a0 03       ..
.PLAQ
    lda ARGA+1                                     ; 92f5: a5 3b       .;
    beq PLAQER                                     ; 92f7: f0 15       ..
    ldx #0                                         ; 92f9: a2 00       ..
    lda (ARGA,x)                                   ; 92fb: a1 3a       .:
    bpl PLAQER                                     ; 92fd: 10 0f       ..
    lda ARGB                                       ; 92ff: a5 3c       .<
    sta (ARGA),y                                   ; 9301: 91 3a       .:
    iny                                            ; 9303: c8          .
    lda ARGB+1                                     ; 9304: a5 3d       .=
    sta (ARGA),y                                   ; 9306: 91 3a       .:
    jsr ATOA                                       ; 9308: 20 b1 8f     ..
    jmp POP                                        ; 930b: 4c 3a 83    L:.

.PLAQER
    brk                                            ; 930e: 00          .              ; Wrong 1st arg

    equb &13                                       ; 930f: 13          .
    equs "RPLACA/RPLACD argument"                  ; 9310: 52 50 4c... RPL
    equb 0                                         ; 9326: 00          .


    ; **** LESSP
.LESSP
    ldx #1                                         ; 9327: a2 01       ..
.SWIP
    lda ARGA,x                                     ; 9329: b5 3a       .:
    ldy ARGB,x                                     ; 932b: b4 3c       .<
    sta ARGB,x                                     ; 932d: 95 3c       .<
    sty ARGA,x                                     ; 932f: 94 3a       .:
    dex                                            ; 9331: ca          .
    bpl SWIP                                       ; 9332: 10 f5       ..

    ; **** GREATERP
.GT
    jsr ALLNUM                                     ; 9334: 20 87 94     ..
    ldy #3                                         ; 9337: a0 03       ..
    lda (ARGB),y                                   ; 9339: b1 3c       .<
    cmp #&80                                       ; 933b: c9 80       ..
    eor (ARGA),y                                   ; 933d: 51 3a       Q:
    bmi DFSGN                                      ; 933f: 30 0f       0.
    dey                                            ; 9341: 88          .              ; Y=&02
    lda (ARGB),y                                   ; 9342: b1 3c       .<
    cmp (ARGA),y                                   ; 9344: d1 3a       .:
    iny                                            ; 9346: c8          .              ; Y=&03
    lda (ARGB),y                                   ; 9347: b1 3c       .<
    sbc (ARGA),y                                   ; 9349: f1 3a       .:
    bcs SMALLR                                     ; 934b: b0 05       ..
.BIGGER
    jmp YES                                        ; 934d: 4c 31 83    L1.

.DFSGN
    bcs BIGGER                                     ; 9350: b0 fb       ..
.SMALLR
    jmp NO                                         ; 9352: 4c 2d 83    L-.

.SOCK
    ldy #4                                         ; 9355: a0 04       ..
    lda (ARGA),y                                   ; 9357: b1 3a       .:
    sta WSB                                        ; 9359: 85 36       .6
    iny                                            ; 935b: c8          .              ; Y=&05
    lda (ARGA),y                                   ; 935c: b1 3a       .:
    sta WSB+1                                      ; 935e: 85 37       .7             ; A-list search
.SOCKA
    bne LKG                                        ; 9360: d0 10       ..             ; routine
    rts                                            ; 9362: 60          `

.ROCKON
    ldy #3                                         ; 9363: a0 03       ..
    lda (WSB),y                                    ; 9365: b1 36       .6
    tax                                            ; 9367: aa          .
    iny                                            ; 9368: c8          .              ; Y=&04
    lda (WSB),y                                    ; 9369: b1 36       .6
    bne LKH                                        ; 936b: d0 01       ..
    rts                                            ; 936d: 60          `

.LKH
    sta WSB+1                                      ; 936e: 85 37       .7
    stx WSB                                        ; 9370: 86 36       .6
.LKG
    ldx #0                                         ; 9372: a2 00       ..
    ldy #1                                         ; 9374: a0 01       ..
    lda (WSB,x)                                    ; 9376: a1 36       .6
    bpl ALERR                                      ; 9378: 10 1d       ..
    lda (WSB),y                                    ; 937a: b1 36       .6
    sta WSD                                        ; 937c: 85 83       ..
    iny                                            ; 937e: c8          .              ; Y=&02
    lda (WSB),y                                    ; 937f: b1 36       .6
    sta WSD+1                                      ; 9381: 85 84       ..
    lda (WSD,x)                                    ; 9383: a1 83       ..
    bpl ALERR                                      ; 9385: 10 10       ..
    lda ARGB+1                                     ; 9387: a5 3d       .=
    cmp (WSD),y                                    ; 9389: d1 83       ..
    bne ROCKON                                     ; 938b: d0 d6       ..
    dey                                            ; 938d: 88          .              ; Y=&01
    lda ARGB                                       ; 938e: a5 3c       .<
    cmp (WSD),y                                    ; 9390: d1 83       ..
    bne ROCKON                                     ; 9392: d0 cf       ..
    lda #&ff                                       ; 9394: a9 ff       ..
    rts                                            ; 9396: 60          `

.ALERR
    brk                                            ; 9397: 00          .              ; P-list error

    equb &14                                       ; 9398: 14          .
    equs "P-list structure"                        ; 9399: 50 2d 6c... P-l
    equb 0                                         ; 93a9: 00          .


    ; **** ASSOC
.ASSOC
    lda ARGB                                       ; 93aa: a5 3c       .<
    pha                                            ; 93ac: 48          H
    sta WSB                                        ; 93ad: 85 36       .6
    lda ARGB+1                                     ; 93af: a5 3d       .=
    pha                                            ; 93b1: 48          H
    sta WSB+1                                      ; 93b2: 85 37       .7
    lda ARGA                                       ; 93b4: a5 3a       .:             ; Fudge arg order
    sta ARGB                                       ; 93b6: 85 3c       .<
    lda ARGA+1                                     ; 93b8: a5 3b       .;
    sta ARGB+1                                     ; 93ba: 85 3d       .=
    jsr SOCKA                                      ; 93bc: 20 60 93     `.
    cmp #1                                         ; 93bf: c9 01       ..             ; Save ret code as carry
    pla                                            ; 93c1: 68          h
    sta ARGB+1                                     ; 93c2: 85 3d       .=
    pla                                            ; 93c4: 68          h
    sta ARGB                                       ; 93c5: 85 3c       .<
    lda #0                                         ; 93c7: a9 00       ..
    bcc HAUSE                                      ; 93c9: 90 06       ..             ; If SOCKA returned zero
    lda WSD                                        ; 93cb: a5 83       ..
    sta ARG                                        ; 93cd: 85 30       .0
    lda WSD+1                                      ; 93cf: a5 84       ..
.HAUSE
    sta ARG+1                                      ; 93d1: 85 31       .1
    jmp POP                                        ; 93d3: 4c 3a 83    L:.


    ; **** GET
.GET
    jsr CHARQ                                      ; 93d6: 20 8c 8f     ..
    jsr SOCK                                       ; 93d9: 20 55 93     U.
    beq HAUSE                                      ; 93dc: f0 f3       ..
    ldy #3                                         ; 93de: a0 03       ..
    lda (WSD),y                                    ; 93e0: b1 83       ..
    sta ARG                                        ; 93e2: 85 30       .0
    iny                                            ; 93e4: c8          .              ; Y=&04
    lda (WSD),y                                    ; 93e5: b1 83       ..
    sta ARG+1                                      ; 93e7: 85 31       .1
    jmp POP                                        ; 93e9: 4c 3a 83    L:.


    ; **** PUT
.PUT
    jsr CHARQ                                      ; 93ec: 20 8c 8f     ..
    jsr SOCK                                       ; 93ef: 20 55 93     U.
    beq INSERP                                     ; 93f2: f0 10       ..
    ldy #3                                         ; 93f4: a0 03       ..
    lda ARGC                                       ; 93f6: a5 3e       .>
    sta (WSD),y                                    ; 93f8: 91 83       ..
    sta ARG                                        ; 93fa: 85 30       .0
    iny                                            ; 93fc: c8          .              ; Y=&04
    lda ARGC+1                                     ; 93fd: a5 3f       .?
    sta (WSD),y                                    ; 93ff: 91 83       ..
    jmp POPA                                       ; 9401: 4c 38 83    L8.

.INSERP
    jsr ALPAIR                                     ; 9404: 20 53 84     S.
    lda POINT                                      ; 9407: a5 7a       .z
    sta WSB                                        ; 9409: 85 36       .6
    lda POINT+1                                    ; 940b: a5 7b       .{
    sta WSB+1                                      ; 940d: 85 37       .7
    jsr ALPAIR                                     ; 940f: 20 53 84     S.
    ldy #5                                         ; 9412: a0 05       ..
    lda (ARGA),y                                   ; 9414: b1 3a       .:
    dey                                            ; 9416: 88          .              ; Y=&04
    sta (WSB),y                                    ; 9417: 91 36       .6
    lda ARGC+1                                     ; 9419: a5 3f       .?
    sta ARG+1                                      ; 941b: 85 31       .1
    sta (POINT),y                                  ; 941d: 91 7a       .z
    lda (ARGA),y                                   ; 941f: b1 3a       .:
    dey                                            ; 9421: 88          .              ; Y=&03
    sta (WSB),y                                    ; 9422: 91 36       .6
    lda ARGC                                       ; 9424: a5 3e       .>
    sta ARG                                        ; 9426: 85 30       .0
    sta (POINT),y                                  ; 9428: 91 7a       .z
    dey                                            ; 942a: 88          .              ; Y=&02
    lda ARGB+1                                     ; 942b: a5 3d       .=
    sta (POINT),y                                  ; 942d: 91 7a       .z
    lda POINT+1                                    ; 942f: a5 7b       .{
    sta (WSB),y                                    ; 9431: 91 36       .6
    dey                                            ; 9433: 88          .              ; Y=&01
    lda ARGB                                       ; 9434: a5 3c       .<
    sta (POINT),y                                  ; 9436: 91 7a       .z
    lda POINT                                      ; 9438: a5 7a       .z
    sta (WSB),y                                    ; 943a: 91 36       .6
    ldy #5                                         ; 943c: a0 05       ..
    lda WSB+1                                      ; 943e: a5 37       .7
    sta (ARGA),y                                   ; 9440: 91 3a       .:
    dey                                            ; 9442: 88          .              ; Y=&04
    lda WSB                                        ; 9443: a5 36       .6
    sta (ARGA),y                                   ; 9445: 91 3a       .:
    jmp POP                                        ; 9447: 4c 3a 83    L:.


    ; **** REMPROP
.REMPR
    jsr CHARQ                                      ; 944a: 20 8c 8f     ..
    jsr SOCK                                       ; 944d: 20 55 93     U.
    beq HOUSE                                      ; 9450: f0 32       .2
    ldy #3                                         ; 9452: a0 03       ..
    lda (WSB),y                                    ; 9454: b1 36       .6
    sta WSC                                        ; 9456: 85 38       .8
    iny                                            ; 9458: c8          .              ; Y=&04
    lda (WSB),y                                    ; 9459: b1 36       .6
    sta WSC+1                                      ; 945b: 85 39       .9
    ldy #5                                         ; 945d: a0 05       ..
.FRUIT
    lda (ARGA),y                                   ; 945f: b1 3a       .:
    tax                                            ; 9461: aa          .
    cmp WSB+1                                      ; 9462: c5 37       .7
    bne FRUT                                       ; 9464: d0 13       ..
    dey                                            ; 9466: 88          .
    lda (ARGA),y                                   ; 9467: b1 3a       .:
    cmp WSB                                        ; 9469: c5 36       .6
    bne FRUTA                                      ; 946b: d0 0f       ..
    lda WSC                                        ; 946d: a5 38       .8
    sta (ARGA),y                                   ; 946f: 91 3a       .:
    iny                                            ; 9471: c8          .
    lda WSC+1                                      ; 9472: a5 39       .9
    sta (ARGA),y                                   ; 9474: 91 3a       .:
    jmp YES                                        ; 9476: 4c 31 83    L1.

.FRUT
    dey                                            ; 9479: 88          .
    lda (ARGA),y                                   ; 947a: b1 3a       .:
.FRUTA
    stx ARGA+1                                     ; 947c: 86 3b       .;
    sta ARGA                                       ; 947e: 85 3a       .:
    ldy #4                                         ; 9480: a0 04       ..
    bne FRUIT                                      ; 9482: d0 db       ..             ; ALWAYS branch

.HOUSE
    jmp NO                                         ; 9484: 4c 2d 83    L-.


    ; **** Check all numeric args
.ALLNUM
    lda #NUMF                                      ; 9487: a9 04       ..
    ldx TVSEXT                                     ; 9489: a6 33       .3
    bne COMPX                                      ; 948b: d0 08       ..
.MORIX
    ldy TVS+1,x                                    ; 948d: b4 31       .1
    beq NUER                                       ; 948f: f0 0b       ..
    cmp (TVS,x)                                    ; 9491: c1 30       .0
    bne NUER                                       ; 9493: d0 07       ..
.COMPX
    dex                                            ; 9495: ca          .
    dex                                            ; 9496: ca          .
    cpx #&0a                                       ; 9497: e0 0a       ..
    bcs MORIX                                      ; 9499: b0 f2       ..
    rts                                            ; 949b: 60          `

.NUER
    brk                                            ; 949c: 00          .              ; Non-numeric args

    equb &15                                       ; 949d: 15          .
    equs "Non-numeric argument"                    ; 949e: 4e 6f 6e... Non
    equb 0                                         ; 94b2: 00          .

.EVAL
    jsr ATOA                                       ; 94b3: 20 b1 8f     ..
    jsr EVALU                                      ; 94b6: 20 39 85     9.
    jmp POP                                        ; 94b9: 4c 3a 83    L:.


    ; ******************************
    ; APPLY/MAP complex
    ; ******************************
.APFUN
    lda ARGA+1                                     ; 94bc: a5 3b       .;
    beq APFERR                                     ; 94be: f0 0c       ..
    ldy #0                                         ; 94c0: a0 00       ..
    sty WSB+1                                      ; 94c2: 84 37       .7
    lda (ARGA),y                                   ; 94c4: b1 3a       .:
    bmi GEVIL                                      ; 94c6: 30 15       0.
    cmp #SUBRF                                     ; 94c8: c9 08       ..
    beq GFRTS                                      ; 94ca: f0 4f       .O             ; It's a subr
.APFERR
    brk                                            ; 94cc: 00          .

    equb &16                                       ; 94cd: 16          .
    equs "APPLY argument"                          ; 94ce: 41 50 50... APP
    equb 0                                         ; 94dc: 00          .

.GEVIL
    iny                                            ; 94dd: c8          .              ; Expr?
    lda (ARGA),y                                   ; 94de: b1 3a       .:
    cmp #<LAMBDA                                   ; 94e0: c9 18       ..
    bne APFERR                                     ; 94e2: d0 e8       ..
    iny                                            ; 94e4: c8          .
    lda (ARGA),y                                   ; 94e5: b1 3a       .:
    cmp IMBOT                                      ; 94e7: cd 2c 04    .,.
    bne APFERR                                     ; 94ea: d0 e0       ..
    iny                                            ; 94ec: c8          .
    lda (ARGA),y                                   ; 94ed: b1 3a       .:
    sta WSD                                        ; 94ef: 85 83       ..
    iny                                            ; 94f1: c8          .
    lda (ARGA),y                                   ; 94f2: b1 3a       .:
    sta WSD+1                                      ; 94f4: 85 84       ..
    beq APFERR                                     ; 94f6: f0 d4       ..
    ldy #0                                         ; 94f8: a0 00       ..
    lda (WSD),y                                    ; 94fa: b1 83       ..
    bpl APFERR                                     ; 94fc: 10 ce       ..
    iny                                            ; 94fe: c8          .              ; Y=&01
    lda (WSD),y                                    ; 94ff: b1 83       ..             ; Parm list in WSB
    sta WSB                                        ; 9501: 85 36       .6
    iny                                            ; 9503: c8          .              ; Y=&02
    lda (WSD),y                                    ; 9504: b1 83       ..
    sta WSB+1                                      ; 9506: 85 37       .7
    beq APFERR                                     ; 9508: f0 c2       ..
    iny                                            ; 950a: c8          .              ; Y=&03
    lda (WSD),y                                    ; 950b: b1 83       ..
    sta WSC                                        ; 950d: 85 38       .8             ; Body in WSC
    iny                                            ; 950f: c8          .              ; Y=&04
    lda (WSD),y                                    ; 9510: b1 83       ..
    sta WSC+1                                      ; 9512: 85 39       .9
    ldy #0                                         ; 9514: a0 00       ..
    lda (WSB),y                                    ; 9516: b1 36       .6             ; Fexpr?
    bpl APFERR                                     ; 9518: 10 b2       ..
    rts                                            ; 951a: 60          `

.GFRTS
    lda ARGA                                       ; 951b: a5 3a       .:
    sta WSC                                        ; 951d: 85 38       .8
    lda ARGA+1                                     ; 951f: a5 3b       .;
    sta WSC+1                                      ; 9521: 85 39       .9
    rts                                            ; 9523: 60          `

.APERR
    brk                                            ; 9524: 00          .              ; APPLY list

    equb &17                                       ; 9525: 17          .
    equs "APPLY arguments"                         ; 9526: 41 50 50... APP
    equb 0                                         ; 9535: 00          .


    ; **** APPLY
.APPLY
    jsr APFUN                                      ; 9536: 20 bc 94     ..
    ldx #&0a                                       ; 9539: a2 0a       ..
    lda ARGB+1                                     ; 953b: a5 3d       .=
    beq APGO                                       ; 953d: f0 2d       .-
    sta WSA+1                                      ; 953f: 85 35       .5
    lda ARGB                                       ; 9541: a5 3c       .<
    sta WSA                                        ; 9543: 85 34       .4
.APL
    ldy #0                                         ; 9545: a0 00       ..
    lda (WSA),y                                    ; 9547: b1 34       .4
    bpl APERR                                      ; 9549: 10 d9       ..
    iny                                            ; 954b: c8          .              ; Y=&01
    lda (WSA),y                                    ; 954c: b1 34       .4
    sta TVS,x                                      ; 954e: 95 30       .0
    iny                                            ; 9550: c8          .              ; Y=&02
    inx                                            ; 9551: e8          .
    lda (WSA),y                                    ; 9552: b1 34       .4
    sta TVS,x                                      ; 9554: 95 30       .0
    inx                                            ; 9556: e8          .              ; Spread args into TVS
    cpx #&42                                       ; 9557: e0 42       .B
    bcs APERR                                      ; 9559: b0 c9       ..
    ldy #4                                         ; 955b: a0 04       ..
    lda (WSA),y                                    ; 955d: b1 34       .4
    beq APGO                                       ; 955f: f0 0b       ..
    pha                                            ; 9561: 48          H
    dey                                            ; 9562: 88          .              ; Y=&03
    lda (WSA),y                                    ; 9563: b1 34       .4
    sta WSA                                        ; 9565: 85 34       .4
    pla                                            ; 9567: 68          h
    sta WSA+1                                      ; 9568: 85 35       .5
    bne APL                                        ; 956a: d0 d9       ..             ; Always taken
.APGO
    stx TVSEXT                                     ; 956c: 86 33       .3
.APGOB
    lda WSB+1                                      ; 956e: a5 37       .7
    beq SUBAP                                      ; 9570: f0 03       ..
    jmp RADON                                      ; 9572: 4c d2 86    L..            ; Expr entry

.SUBAP
    jmp INSUBR                                     ; 9575: 4c fc 85    L..            ; Subr entry

.MAPSTR
    jsr APFUN                                      ; 9578: 20 bc 94     ..            ; Prelims for
    ldx #&0c                                       ; 957b: a2 0c       ..             ; MAP functions
.MAPMOV
    lda TVS,x                                      ; 957d: b5 30       .0
    sta TVS-2,x                                    ; 957f: 95 2e       ..
    inx                                            ; 9581: e8          .
    lda TVS,x                                      ; 9582: b5 30       .0
    sta TVS-2,x                                    ; 9584: 95 2e       ..
    beq MAPRTS                                     ; 9586: f0 09       ..
    inx                                            ; 9588: e8          .
    cpx TVSEXT                                     ; 9589: e4 33       .3
    bcc MAPMOV                                     ; 958b: 90 f0       ..
    dex                                            ; 958d: ca          .
    dex                                            ; 958e: ca          .
    stx TVSEXT                                     ; 958f: 86 33       .3
.MAPRTS
    rts                                            ; 9591: 60          `

.NILMAP
    jmp POPA                                       ; 9592: 4c 38 83    L8.


    ; **** MAP
.MAP
    jsr MAPSTR                                     ; 9595: 20 78 95     x.
    beq NILMAP                                     ; 9598: f0 f8       ..
.MAPON
    jsr CARAP                                      ; 959a: 20 45 96     E.
    jsr CDRALL                                     ; 959d: 20 84 96     ..
    bne MAPON                                      ; 95a0: d0 f8       ..
    jmp NO                                         ; 95a2: 4c 2d 83    L-.


    ; *** MAPC
.MAPCAR
    jsr MAPSTR                                     ; 95a5: 20 78 95     x.
    beq NILMAP                                     ; 95a8: f0 e8       ..
    jsr ALPAIR                                     ; 95aa: 20 53 84     S.
    ldy #4                                         ; 95ad: a0 04       ..
    lda POINT+1                                    ; 95af: a5 7b       .{
    sta WSA+1                                      ; 95b1: 85 35       .5
    sta (POINT),y                                  ; 95b3: 91 7a       .z
    lda POINT                                      ; 95b5: a5 7a       .z
    sta WSA                                        ; 95b7: 85 34       .4
    dey                                            ; 95b9: 88          .              ; Y=&03
    sta (POINT),y                                  ; 95ba: 91 7a       .z
.MAPCON
    jsr CARAP                                      ; 95bc: 20 45 96     E.
    jsr ALPAIR                                     ; 95bf: 20 53 84     S.
    ldy #2                                         ; 95c2: a0 02       ..
    lda (WSA),y                                    ; 95c4: b1 34       .4
    bne OLDMAP                                     ; 95c6: d0 09       ..
    lda POINT+1                                    ; 95c8: a5 7b       .{
    sta (WSA),y                                    ; 95ca: 91 34       .4
    lda POINT                                      ; 95cc: a5 7a       .z
    dey                                            ; 95ce: 88          .              ; Y=&01
    sta (WSA),y                                    ; 95cf: 91 34       .4
.OLDMAP
    ldy #4                                         ; 95d1: a0 04       ..
    lda (WSA),y                                    ; 95d3: b1 34       .4
    sta WSD+1                                      ; 95d5: 85 84       ..
    dey                                            ; 95d7: 88          .              ; Y=&03
    lda (WSA),y                                    ; 95d8: b1 34       .4
    sta WSD                                        ; 95da: 85 83       ..
    lda POINT                                      ; 95dc: a5 7a       .z
    sta (WSD),y                                    ; 95de: 91 83       ..
    sta (WSA),y                                    ; 95e0: 91 34       .4
    iny                                            ; 95e2: c8          .              ; Y=&04
    lda POINT+1                                    ; 95e3: a5 7b       .{
    sta (WSD),y                                    ; 95e5: 91 83       ..
    sta (WSA),y                                    ; 95e7: 91 34       .4
    ldy #2                                         ; 95e9: a0 02       ..
    lda ARG+1                                      ; 95eb: a5 31       .1
    sta (POINT),y                                  ; 95ed: 91 7a       .z
    dey                                            ; 95ef: 88          .              ; Y=&01
    lda ARG                                        ; 95f0: a5 30       .0
    sta (POINT),y                                  ; 95f2: 91 7a       .z
    jsr CDRALL                                     ; 95f4: 20 84 96     ..
    bne MAPCON                                     ; 95f7: d0 c3       ..
    ldy #1                                         ; 95f9: a0 01       ..
    lda (WSA),y                                    ; 95fb: b1 34       .4
    sta ARG                                        ; 95fd: 85 30       .0
    iny                                            ; 95ff: c8          .              ; Y=&02
    lda (WSA),y                                    ; 9600: b1 34       .4
    jmp POPA                                       ; 9602: 4c 38 83    L8.


    ; **** GETCHAR
.GETCHA
    ldx TVSEXT                                     ; 9605: a6 33       .3             ; File arg?
    cpx #&0c                                       ; 9607: e0 0c       ..
    bcc GETDIR                                     ; 9609: 90 09       ..
    jsr FILGC                                      ; 960b: 20 9c 8a     ..
    jsr GTCHAR                                     ; 960e: 20 6c 87     l.
    jmp POST                                       ; 9611: 4c 29 96    L).

.GETDIR
    jsr osrdch                                     ; 9614: 20 e0 ff     ..            ; Grab a char; Read a character from the current input stream
    bcc POST                                       ; 9617: 90 10       ..
    brk                                            ; 9619: 00          .

    equb &1c                                       ; 961a: 1c          .
    equs "Escape"                                  ; 961b: 45 73 63... Esc
    equb 0                                         ; 9621: 00          .


    ; **** CHARACTER
.ASCII
    jsr ALLNUM                                     ; 9622: 20 87 94     ..
    ldy #2                                         ; 9625: a0 02       ..
    lda (ARGA),y                                   ; 9627: b1 3a       .:
.POST
    jsr LETTER                                     ; 9629: 20 e8 89     ..            ; Finds char atom
    jmp AMADE                                      ; 962c: 4c 67 88    Lg.


    ; **** ORDINAL
.ORDINL
    jsr CHARQ                                      ; 962f: 20 8c 8f     ..
    jsr ALNUM                                      ; 9632: 20 3d 84     =.
    ldy #1                                         ; 9635: a0 01       ..
    lda (ARGA),y                                   ; 9637: b1 3a       .:
    sec                                            ; 9639: 38          8
    sbc #6                                         ; 963a: e9 06       ..
    beq EMPTYC                                     ; 963c: f0 04       ..
    ldy #6                                         ; 963e: a0 06       ..
    lda (ARGA),y                                   ; 9640: b1 3a       .:
.EMPTYC
    jmp AGOT                                       ; 9642: 4c d4 92    L..

.CARAP
    jsr STACK                                      ; 9645: 20 93 83     ..
    ldx TVSEXT                                     ; 9648: a6 33       .3
    bne CARAFE                                     ; 964a: d0 1c       ..
.CARAVA
    dex                                            ; 964c: ca          .
    lda TVS,x                                      ; 964d: b5 30       .0
    sta WSD+1                                      ; 964f: 85 84       ..
    beq MAPERR                                     ; 9651: f0 1c       ..
    lda TVS-1,x                                    ; 9653: b5 2f       ./
    sta WSD                                        ; 9655: 85 83       ..
    ldy #0                                         ; 9657: a0 00       ..
    lda (WSD),y                                    ; 9659: b1 83       ..
    bpl MAPERR                                     ; 965b: 10 12       ..
    iny                                            ; 965d: c8          .              ; Y=&01
    lda (WSD),y                                    ; 965e: b1 83       ..
    sta TVS-1,x                                    ; 9660: 95 2f       ./
    iny                                            ; 9662: c8          .              ; Y=&02
    lda (WSD),y                                    ; 9663: b1 83       ..
    sta TVS,x                                      ; 9665: 95 30       .0
    dex                                            ; 9667: ca          .
.CARAFE
    cpx #&0c                                       ; 9668: e0 0c       ..
    bcs CARAVA                                     ; 966a: b0 e0       ..
    jmp APGOB                                      ; 966c: 4c 6e 95    Ln.

.MAPERR
    brk                                            ; 966f: 00          .              ; MAP args

    equb &18                                       ; 9670: 18          .
    equs "MAP/MAPC arguments"                      ; 9671: 4d 41 50... MAP
    equb 0                                         ; 9683: 00          .

.CDRALL
    ldx TVSEXT                                     ; 9684: a6 33       .3
    bne CDRAWL                                     ; 9686: d0 1d       ..
.CDRAVA
    dex                                            ; 9688: ca          .
    lda TVS,x                                      ; 9689: b5 30       .0
    sta WSD+1                                      ; 968b: 85 84       ..
    lda TVS-1,x                                    ; 968d: b5 2f       ./
    sta WSD                                        ; 968f: 85 83       ..
    ldy #0                                         ; 9691: a0 00       ..
    lda (WSD),y                                    ; 9693: b1 83       ..
    bpl MAPERR                                     ; 9695: 10 d8       ..
    ldy #4                                         ; 9697: a0 04       ..
    lda (WSD),y                                    ; 9699: b1 83       ..
    beq CDREND                                     ; 969b: f0 0c       ..
    sta TVS,x                                      ; 969d: 95 30       .0
    dex                                            ; 969f: ca          .
    dey                                            ; 96a0: 88          .              ; Y=&03
    lda (WSD),y                                    ; 96a1: b1 83       ..
    sta TVS,x                                      ; 96a3: 95 30       .0
.CDRAWL
    cpx #&0c                                       ; 96a5: e0 0c       ..
    bcs CDRAVA                                     ; 96a7: b0 df       ..
.CDREND
    rts                                            ; 96a9: 60          `


    ; **** EXPLODE
.EXPLOD
    jsr CHARQ                                      ; 96aa: 20 8c 8f     ..
    sty ARG+1                                      ; 96ad: 84 31       .1
    iny                                            ; 96af: c8          .
    lda (ARGA),y                                   ; 96b0: b1 3a       .:
    bne BANG                                       ; 96b2: d0 2d       .-
.THUMP
    sbc #1                                         ; 96b4: e9 01       ..
    pha                                            ; 96b6: 48          H
    jsr ALPAIR                                     ; 96b7: 20 53 84     S.
    ldy #4                                         ; 96ba: a0 04       ..
    lda ARG+1                                      ; 96bc: a5 31       .1
    sta (POINT),y                                  ; 96be: 91 7a       .z
    dey                                            ; 96c0: 88          .              ; Y=&03
    lda ARG                                        ; 96c1: a5 30       .0
    sta (POINT),y                                  ; 96c3: 91 7a       .z
    lda POINT+1                                    ; 96c5: a5 7b       .{
    sta ARG+1                                      ; 96c7: 85 31       .1
    lda POINT                                      ; 96c9: a5 7a       .z
    sta ARG                                        ; 96cb: 85 30       .0
    pla                                            ; 96cd: 68          h
    pha                                            ; 96ce: 48          H
    tay                                            ; 96cf: a8          .
    lda (ARGA),y                                   ; 96d0: b1 3a       .:
    jsr LETTER                                     ; 96d2: 20 e8 89     ..
    ldy #2                                         ; 96d5: a0 02       ..
    lda POINT+1                                    ; 96d7: a5 7b       .{
    sta (ARG),y                                    ; 96d9: 91 30       .0
    dey                                            ; 96db: 88          .              ; Y=&01
    lda POINT                                      ; 96dc: a5 7a       .z
    sta (ARG),y                                    ; 96de: 91 30       .0
    pla                                            ; 96e0: 68          h
.BANG
    cmp #7                                         ; 96e1: c9 07       ..
    bcs THUMP                                      ; 96e3: b0 cf       ..
    jmp POP                                        ; 96e5: 4c 3a 83    L:.

.IMPERR
    brk                                            ; 96e8: 00          .              ; No space

    equb &19                                       ; 96e9: 19          .
    equs "No room for IMPLODE"                     ; 96ea: 4e 6f 20... No
    equb 0                                         ; 96fd: 00          .


    ; **** IMPLODE
.IMPLOD
    ldx #0                                         ; 96fe: a2 00       ..
    lda ARGA+1                                     ; 9700: a5 3b       .;
    jmp WSBTST                                     ; 9702: 4c 44 97    LD.

.SQUISH
    iny                                            ; 9705: c8          .
    lda (ARGA),y                                   ; 9706: b1 3a       .:
    sta WSB                                        ; 9708: 85 36       .6
    iny                                            ; 970a: c8          .
    lda (ARGA),y                                   ; 970b: b1 3a       .:
    bne NODNIL                                     ; 970d: d0 07       ..
    lda #<NIL                                      ; 970f: a9 24       .$
    sta WSB                                        ; 9711: 85 36       .6
    lda IMBOT                                      ; 9713: ad 2c 04    .,.
.NODNIL
    sta WSB+1                                      ; 9716: 85 37       .7
    ldy #0                                         ; 9718: a0 00       ..
    lda (WSB),y                                    ; 971a: b1 36       .6
    beq ISCH                                       ; 971c: f0 03       ..
    jmp FILERR                                     ; 971e: 4c 97 8f    L..            ; Not char err

.ISCH
    iny                                            ; 9721: c8          .
    lda (WSB),y                                    ; 9722: b1 36       .6
    sta YSAV                                       ; 9724: 85 22       ."
    ldy #6                                         ; 9726: a0 06       ..
    bne EMM                                        ; 9728: d0 09       ..             ; ALWAYS branch

.SPLOT
    lda (WSB),y                                    ; 972a: b1 36       .6
    sta OSWBUF,x                                   ; 972c: 9d 00 06    ...
    iny                                            ; 972f: c8          .
    inx                                            ; 9730: e8          .
    beq IMPERR                                     ; 9731: f0 b5       ..
.EMM
    cpy YSAV                                       ; 9733: c4 22       ."
    bcc SPLOT                                      ; 9735: 90 f3       ..
    ldy #4                                         ; 9737: a0 04       ..
    lda (ARGA),y                                   ; 9739: b1 3a       .:
    pha                                            ; 973b: 48          H
    dey                                            ; 973c: 88          .              ; Y=&03
    lda (ARGA),y                                   ; 973d: b1 3a       .:
    sta ARGA                                       ; 973f: 85 3a       .:
    pla                                            ; 9741: 68          h
    sta ARGA+1                                     ; 9742: 85 3b       .;
.WSBTST
    beq IMPRET                                     ; 9744: f0 06       ..
    ldy #0                                         ; 9746: a0 00       ..
    lda (ARGA),y                                   ; 9748: b1 3a       .:
    bmi SQUISH                                     ; 974a: 30 b9       0.
.IMPRET
    dex                                            ; 974c: ca          .              ; Show string length
    stx END                                        ; 974d: 86 1d       ..
    jmp TRYCHR                                     ; 974f: 4c 64 88    Ld.


    ; **** MESSON
.MESSON
    jsr ALLNUM                                     ; 9752: 20 87 94     ..
    ldy #2                                         ; 9755: a0 02       ..
    lda (ARGA),y                                   ; 9757: b1 3a       .:
    ora LEVEL                                      ; 9759: 05 1a       ..
    sta LEVEL                                      ; 975b: 85 1a       ..
    jmp POP                                        ; 975d: 4c 3a 83    L:.


    ; **** MESSOFF
.MESSOF
    jsr ALLNUM                                     ; 9760: 20 87 94     ..
    ldy #2                                         ; 9763: a0 02       ..
    lda (ARGA),y                                   ; 9765: b1 3a       .:
    eor #&ff                                       ; 9767: 49 ff       I.
    and LEVEL                                      ; 9769: 25 1a       %.
    sta LEVEL                                      ; 976b: 85 1a       ..
    jmp POP                                        ; 976d: 4c 3a 83    L:.


    ; **** MODE
.MODE
    jsr ALLNUM                                     ; 9770: 20 87 94     ..
    jsr ALNUM                                      ; 9773: 20 3d 84     =.
    ldy #2                                         ; 9776: a0 02       ..
    lda (ARGA),y                                   ; 9778: b1 3a       .:             ; Get mode
    and #7                                         ; 977a: 29 07       ).             ; Mod 8
    sta (POINT),y                                  ; 977c: 91 7a       .z
    ora #&80                                       ; 977e: 09 80       ..             ; Flag bit
    sta MODEF                                      ; 9780: 8d 2a 04    .*.
    iny                                            ; 9783: c8          .              ; Y=&03
    lda #0                                         ; 9784: a9 00       ..
    sta (POINT),y                                  ; 9786: 91 7a       .z
    jmp AMADE                                      ; 9788: 4c 67 88    Lg.


    ; **** Actually change mode
.MODCHN
    lda MODEF                                      ; 978b: ad 2a 04    .*.
    and #7                                         ; 978e: 29 07       ).
    sta MODEF                                      ; 9790: 8d 2a 04    .*.            ; Clear flag bit
    pha                                            ; 9793: 48          H
    lda #osbyte_read_high_order_address            ; 9794: a9 82       ..
    jsr osbyte                                     ; 9796: 20 f4 ff     ..            ; M/c HO addr.; Read the filing system 'machine high order address'
    cpy #&ff                                       ; 9799: c0 ff       ..             ; X and Y contain the machine high order address (low, high)
    bne CHANGE                                     ; 979b: d0 2c       .,             ; In 2nd processor?
    pla                                            ; 979d: 68          h
    pha                                            ; 979e: 48          H
    tax                                            ; 979f: aa          .              ; X=MODE number
    lda #osbyte_read_himem_for_mode                ; 97a0: a9 85       ..
    jsr osbyte                                     ; 97a2: 20 f4 ff     ..            ; Get new aretop; Read top of user memory for a given screen mode X
    cpy AREVAL+1                                   ; 97a5: cc 2e 04    ...            ; Room for OBLIST?; X and Y contain the address (low, high)
    bcc MODERR                                     ; 97a8: 90 07       ..
    bne CHARE                                      ; 97aa: d0 19       ..
    cpx AREVAL                                     ; 97ac: ec 2d 04    .-.
    bcs CHARE                                      ; 97af: b0 14       ..
.MODERR
    brk                                            ; 97b1: 00          .              ; No room

    equb &1b                                       ; 97b2: 1b          .
    equs "No room for MODE "                       ; 97b3: 4e 6f 20... No
    equb 0                                         ; 97c4: 00          .

.CHARE
    sty ARETOP                                     ; 97c5: 84 79       .y             ; New ARETOP
    sty SP+1                                       ; 97c7: 84 7f       ..             ; Reset software stack
.CHANGE
    lda #&16                                       ; 97c9: a9 16       ..             ; Change mode
    jsr oswrch                                     ; 97cb: 20 ee ff     ..            ; Write character 22
    pla                                            ; 97ce: 68          h
    jmp oswrch                                     ; 97cf: 4c ee ff    L..            ; Write character


    ; **** USR
.USR
    jsr ALLNUM                                     ; 97d2: 20 87 94     ..
    ldy #3                                         ; 97d5: a0 03       ..
    lda (ARGA),y                                   ; 97d7: b1 3a       .:
    sta POINT+1                                    ; 97d9: 85 7b       .{             ; Call addr
    dey                                            ; 97db: 88          .              ; Y=&02
    lda (ARGA),y                                   ; 97dc: b1 3a       .:
    sta POINT                                      ; 97de: 85 7a       .z
    lda (ARGE),y                                   ; 97e0: b1 42       .B             ; Get carry
    cmp #1                                         ; 97e2: c9 01       ..             ; And adjust flag
    php                                            ; 97e4: 08          .
    lda (ARGB),y                                   ; 97e5: b1 3c       .<             ; Get A
    pha                                            ; 97e7: 48          H
    lda (ARGC),y                                   ; 97e8: b1 3e       .>             ; Get X
    tax                                            ; 97ea: aa          .
    lda (ARGD),y                                   ; 97eb: b1 40       .@             ; Get Y
    tay                                            ; 97ed: a8          .
    pla                                            ; 97ee: 68          h
    plp                                            ; 97ef: 28          (
    jsr JUMPAD                                     ; 97f0: 20 f6 97     ..
    jmp OUTL                                       ; 97f3: 4c f9 97    L..

.JUMPAD
    jmp (POINT)                                    ; 97f6: 6c 7a 00    lz.            ; Enter routine

.OUTL
    php                                            ; 97f9: 08          .              ; Build up result list
    sta WSA+1                                      ; 97fa: 85 35       .5
    pla                                            ; 97fc: 68          h
    sta WSA                                        ; 97fd: 85 34       .4             ; Save status
    lda WSA+1                                      ; 97ff: a5 35       .5             ; Restore A
    pha                                            ; 9801: 48          H
    txa                                            ; 9802: 8a          .
    pha                                            ; 9803: 48          H
    tya                                            ; 9804: 98          .
    pha                                            ; 9805: 48          H
    lda #0                                         ; 9806: a9 00       ..
    sta WSA+1                                      ; 9808: 85 35       .5             ; NIL
    lda WSA                                        ; 980a: a5 34       .4             ; Get status
    jsr BUILD1                                     ; 980c: 20 1e 98     ..            ; status
    pla                                            ; 980f: 68          h
    jsr BUILD1                                     ; 9810: 20 1e 98     ..            ; Y
    pla                                            ; 9813: 68          h
    jsr BUILD1                                     ; 9814: 20 1e 98     ..            ; X
    pla                                            ; 9817: 68          h
    jsr BUILD1                                     ; 9818: 20 1e 98     ..            ; A
    jmp AMADE                                      ; 981b: 4c 67 88    Lg.            ; Return list


    ; **** Put A on list in WSA
.BUILD1
    ldx #0                                         ; 981e: a2 00       ..

    ; **** Put A & X (msb) on WSA
.BUILD2
    jsr SETNUM                                     ; 9820: 20 44 98     D.            ; WSB has val
    jsr ALPAIR                                     ; 9823: 20 53 84     S.
    ldy #1                                         ; 9826: a0 01       ..
    lda WSB                                        ; 9828: a5 36       .6
    sta (POINT),y                                  ; 982a: 91 7a       .z
    iny                                            ; 982c: c8          .              ; Y=&02
    lda WSB+1                                      ; 982d: a5 37       .7
    sta (POINT),y                                  ; 982f: 91 7a       .z
    iny                                            ; 9831: c8          .              ; Y=&03
    lda WSA                                        ; 9832: a5 34       .4
    sta (POINT),y                                  ; 9834: 91 7a       .z
    iny                                            ; 9836: c8          .              ; Y=&04
    lda WSA+1                                      ; 9837: a5 35       .5
    sta (POINT),y                                  ; 9839: 91 7a       .z
    lda POINT                                      ; 983b: a5 7a       .z
    sta WSA                                        ; 983d: 85 34       .4
    lda POINT+1                                    ; 983f: a5 7b       .{
    sta WSA+1                                      ; 9841: 85 35       .5
    rts                                            ; 9843: 60          `

.SETNUM
    pha                                            ; 9844: 48          H              ; Num atom in WSB
    txa                                            ; 9845: 8a          .
    pha                                            ; 9846: 48          H
    jsr ALNUM                                      ; 9847: 20 3d 84     =.
    pla                                            ; 984a: 68          h
    tax                                            ; 984b: aa          .
    pla                                            ; 984c: 68          h
    ldy #2                                         ; 984d: a0 02       ..
    sta (POINT),y                                  ; 984f: 91 7a       .z
    txa                                            ; 9851: 8a          .
    iny                                            ; 9852: c8          .              ; Y=&03
    sta (POINT),y                                  ; 9853: 91 7a       .z
    lda POINT                                      ; 9855: a5 7a       .z
    sta WSB                                        ; 9857: 85 36       .6
    lda POINT+1                                    ; 9859: a5 7b       .{
    sta WSB+1                                      ; 985b: 85 37       .7
    rts                                            ; 985d: 60          `


    ; **** SOUND
.SOUND
    jsr ALLNUM                                     ; 985e: 20 87 94     ..
    ldy #2                                         ; 9861: a0 02       ..
    ldx #&0a                                       ; 9863: a2 0a       ..
.MORSOU
    lda TVS,x                                      ; 9865: b5 30       .0
    sta ARG                                        ; 9867: 85 30       .0
    lda TVS+1,x                                    ; 9869: b5 31       .1
    sta ARG+1                                      ; 986b: 85 31       .1
    lda (ARG),y                                    ; 986d: b1 30       .0
    sta OSWBUF-10,x                                ; 986f: 9d f6 05    ...
    iny                                            ; 9872: c8          .
    lda (ARG),y                                    ; 9873: b1 30       .0
    sta OSWBUF-9,x                                 ; 9875: 9d f7 05    ...
    dey                                            ; 9878: 88          .
    inx                                            ; 9879: e8          .
    inx                                            ; 987a: e8          .
    cpx #&12                                       ; 987b: e0 12       ..
    bne MORSOU                                     ; 987d: d0 e6       ..
    lda #7                                         ; 987f: a9 07       ..
.ENTOSW
    ldx #<(OSWBUF)                                 ; 9881: a2 00       ..
    ldy #>(OSWBUF)                                 ; 9883: a0 06       ..
    jsr osword                                     ; 9885: 20 f1 ff     ..
    jmp YES                                        ; 9888: 4c 31 83    L1.


    ; **** ENVELOPE
.ENV
    jsr ALLNUM                                     ; 988b: 20 87 94     ..
    ldy #2                                         ; 988e: a0 02       ..
    ldx #&0a                                       ; 9890: a2 0a       ..
.MORENV
    lda TVS,x                                      ; 9892: b5 30       .0
    sta ARG                                        ; 9894: 85 30       .0
    lda TVS+1,x                                    ; 9896: b5 31       .1
    sta ARG+1                                      ; 9898: 85 31       .1
    txa                                            ; 989a: 8a          .              ; Prepare index
    lsr a                                          ; 989b: 4a          J
    tax                                            ; 989c: aa          .
    lda (ARG),y                                    ; 989d: b1 30       .0
    sta OSWBUF-5,x                                 ; 989f: 9d fb 05    ...
    txa                                            ; 98a2: 8a          .
    asl a                                          ; 98a3: 0a          .
    tax                                            ; 98a4: aa          .
    inx                                            ; 98a5: e8          .
    inx                                            ; 98a6: e8          .
    cpx #&26                                       ; 98a7: e0 26       .&
    bne MORENV                                     ; 98a9: d0 e7       ..
    lda #8                                         ; 98ab: a9 08       ..
    bne ENTOSW                                     ; 98ad: d0 d2       ..             ; ALWAYS branch

    bne MORENV                                     ; 98af: d0 e1       ..             ; ALWAYS branch

    lda #8                                         ; 98b1: a9 08       ..
    bne ENTOSW                                     ; 98b3: d0 cc       ..             ; ALWAYS branch


    ; **** Get an argument
.GTARG
    lda TVS+10,x                                   ; 98b5: b5 3a       .:
    sta WSA                                        ; 98b7: 85 34       .4
    inx                                            ; 98b9: e8          .
    lda TVS+10,x                                   ; 98ba: b5 3a       .:
    sta WSA+1                                      ; 98bc: 85 35       .5
    inx                                            ; 98be: e8          .

    ; ******************************
    ;  Now the clock handling
    ; routines
    ; ******************************
.RESET
    jsr STCLK                                      ; 98bf: 20 c8 98     ..
    jsr GCTIMZ                                     ; 98c2: 20 d6 98     ..
    jmp YES                                        ; 98c5: 4c 31 83    L1.            ; Value is T


    ; **** Zero the clock
.STCLK
    lda #2                                         ; 98c8: a9 02       ..             ; Write clock
.ZERTIM
    ldy #>(TIMZER)                                 ; 98ca: a0 82       ..
    ldx #<(TIMZER)                                 ; 98cc: a2 76       .v
    jsr osword                                     ; 98ce: 20 f1 ff     ..
    ldx #&76                                       ; 98d1: a2 76       .v             ; Restore pointer
    ldy #&82                                       ; 98d3: a0 82       ..
    rts                                            ; 98d5: 60          `


    ; **** Zero GC time
.GCTIMZ
    lda #0                                         ; 98d6: a9 00       ..
    ldx #4                                         ; 98d8: a2 04       ..
.MGCTIM
    sta GCTIME,x                                   ; 98da: 9d 20 04    . .
    dex                                            ; 98dd: ca          .
    bpl MGCTIM                                     ; 98de: 10 fa       ..

    ; **** Read the clock
.TIMER
    lda #osword_read_clock                         ; 98e0: a9 01       ..
    ldx #<(TIMEW)                                  ; 98e2: a2 25       .%
    ldy #>(TIMEW)                                  ; 98e4: a0 04       ..
    jsr osword                                     ; 98e6: 20 f1 ff     ..            ; Read the clock; Read system clock
    ldx #<TIMEW                                    ; 98e9: a2 25       .%             ; Restore pointer
    ldy #>TIMEW                                    ; 98eb: a0 04       ..
    rts                                            ; 98ed: 60          `


    ; **** TIME
.TIME
    jsr TIMER                                      ; 98ee: 20 e0 98     ..
    jmp TIMPOP                                     ; 98f1: 4c f8 98    L..


    ; **** GCTIME
.GCTIM
    ldx #<GCTIME                                   ; 98f4: a2 20       .
    ldy #>GCTIME                                   ; 98f6: a0 04       ..

    ; **** Return a time
.TIMPOP
    stx WSC                                        ; 98f8: 86 38       .8
    sty WSC+1                                      ; 98fa: 84 39       .9
    jsr ALNUM                                      ; 98fc: 20 3d 84     =.
    ldy #0                                         ; 98ff: a0 00       ..
    lda (WSC),y                                    ; 9901: b1 38       .8
    iny                                            ; 9903: c8          .              ; Y=&01
    iny                                            ; 9904: c8          .              ; Y=&02
    sta (POINT),y                                  ; 9905: 91 7a       .z
    dey                                            ; 9907: 88          .              ; Y=&01
    lda (WSC),y                                    ; 9908: b1 38       .8
    iny                                            ; 990a: c8          .              ; Y=&02
    iny                                            ; 990b: c8          .              ; Y=&03
    sta (POINT),y                                  ; 990c: 91 7a       .z
    jmp AMADE                                      ; 990e: 4c 67 88    Lg.


    ; **** CLOCK
.CLOCK
    jsr TIMER                                      ; 9911: 20 e0 98     ..            ; Time in TIMEW
    ldx #5                                         ; 9914: a2 05       ..
    ldy #0                                         ; 9916: a0 00       ..
.MCLK1
    tya                                            ; 9918: 98          .
    sta REM40,x                                    ; 9919: 9d 07 04    ...            ; Zero remainder
    sta AUX40,x                                    ; 991c: 9d 0c 04    ...            ; Zero divisor
    lda TIMEW,x                                    ; 991f: bd 25 04    .%.            ; Dividend
    sta ACL40,x                                    ; 9922: 9d 02 04    ...
    dex                                            ; 9925: ca          .
    bpl MCLK1                                      ; 9926: 10 f0       ..
    lda #&64                                       ; 9928: a9 64       .d             ; Throw away cs
    sta AUX40                                      ; 992a: 8d 0c 04    ...
    jsr DIV40                                      ; 992d: 20 42 a0     B.
    lda #0                                         ; 9930: a9 00       ..
    sta REM40                                      ; 9932: 8d 07 04    ...
    lda #&3c                                       ; 9935: a9 3c       .<             ; Get the seconds
    sta AUX40                                      ; 9937: 8d 0c 04    ...
    jsr DIV40                                      ; 993a: 20 42 a0     B.
    lda #0                                         ; 993d: a9 00       ..
    sta WSA+1                                      ; 993f: 85 35       .5             ; NIL
    lda REM40                                      ; 9941: ad 07 04    ...
    jsr BUILD1                                     ; 9944: 20 1e 98     ..
    lda #0                                         ; 9947: a9 00       ..
    sta REM40                                      ; 9949: 8d 07 04    ...
    lda #&3c                                       ; 994c: a9 3c       .<             ; Get the minutes
    sta AUX40                                      ; 994e: 8d 0c 04    ...
    jsr DIV40                                      ; 9951: 20 42 a0     B.
    lda REM40                                      ; 9954: ad 07 04    ...
    jsr BUILD1                                     ; 9957: 20 1e 98     ..
    lda ACL40                                      ; 995a: ad 02 04    ...            ; Get the hours
    ldx ACL40+1                                    ; 995d: ae 03 04    ...
    jsr BUILD2                                     ; 9960: 20 20 98      .
    jmp AMADE                                      ; 9963: 4c 67 88    Lg.


    ; **** POINT
.PVAL
    jsr ALLNUM                                     ; 9966: 20 87 94     ..
    ldy #2                                         ; 9969: a0 02       ..
    lda (ARGA),y                                   ; 996b: b1 3a       .:             ; X lsb
    sta PWORD                                      ; 996d: 8d 1b 04    ...
    lda (ARGB),y                                   ; 9970: b1 3c       .<             ; Y msb
    sta PWORD+2                                    ; 9972: 8d 1d 04    ...
    iny                                            ; 9975: c8          .              ; Y=&03
    lda (ARGA),y                                   ; 9976: b1 3a       .:             ; X lsb
    sta PWORD+1                                    ; 9978: 8d 1c 04    ...
    lda (ARGB),y                                   ; 997b: b1 3c       .<             ; Y msb
    sta PWORD+3                                    ; 997d: 8d 1e 04    ...
    lda #osword_read_pixel                         ; 9980: a9 09       ..
    ldx #<(PWORD)                                  ; 9982: a2 1b       ..
    ldy #>(PWORD)                                  ; 9984: a0 04       ..
    jsr osword                                     ; 9986: 20 f1 ff     ..            ; Read pixel value
    jsr ALNUM                                      ; 9989: 20 3d 84     =.
    ldy #2                                         ; 998c: a0 02       ..
    ldx #0                                         ; 998e: a2 00       ..
    lda PWORD+4                                    ; 9990: ad 1f 04    ...
    bpl PEXIST                                     ; 9993: 10 01       ..             ; Point on screen
    dex                                            ; 9995: ca          .              ; X=&ff
.PEXIST
    sta (POINT),y                                  ; 9996: 91 7a       .z
    iny                                            ; 9998: c8          .
    txa                                            ; 9999: 8a          .
    sta (POINT),y                                  ; 999a: 91 7a       .z
    jmp AMADE                                      ; 999c: 4c 67 88    Lg.


    ; **** ADVAL
.ADVAL
    jsr ALLNUM                                     ; 999f: 20 87 94     ..
    jsr ALNUM                                      ; 99a2: 20 3d 84     =.
    ldy #2                                         ; 99a5: a0 02       ..
    lda (ARGA),y                                   ; 99a7: b1 3a       .:
    tax                                            ; 99a9: aa          .
    iny                                            ; 99aa: c8          .              ; Y=&03
    lda (ARGA),y                                   ; 99ab: b1 3a       .:
    tay                                            ; 99ad: a8          .
    lda #osbyte_read_adc_or_get_buffer_status      ; 99ae: a9 80       ..
    jsr osbyte                                     ; 99b0: 20 f4 ff     ..            ; Read buffer status or ADC channel
    tya                                            ; 99b3: 98          .
    clc                                            ; 99b4: 18          .
    adc #&80                                       ; 99b5: 69 80       i.             ; Make range +/-2^15
    ldy #3                                         ; 99b7: a0 03       ..
    sta (POINT),y                                  ; 99b9: 91 7a       .z
    dey                                            ; 99bb: 88          .              ; Y=&02
    txa                                            ; 99bc: 8a          .
    sta (POINT),y                                  ; 99bd: 91 7a       .z
    jmp AMADE                                      ; 99bf: 4c 67 88    Lg.


    ; **** INKEY (added 18/8/83 RMT)
.INKEY
    jsr ALLNUM                                     ; 99c2: 20 87 94     ..
    ldy #3                                         ; 99c5: a0 03       ..
    lda (ARGA),y                                   ; 99c7: b1 3a       .:
    bmi INKEY2                                     ; 99c9: 30 2a       0*
    jsr ALNUM                                      ; 99cb: 20 3d 84     =.
    ldy #2                                         ; 99ce: a0 02       ..
    lda (ARGA),y                                   ; 99d0: b1 3a       .:
    tax                                            ; 99d2: aa          .
    iny                                            ; 99d3: c8          .              ; Y=&03
    lda (ARGA),y                                   ; 99d4: b1 3a       .:
    tay                                            ; 99d6: a8          .
    lda #osbyte_inkey                              ; 99d7: a9 81       ..
    jsr osbyte                                     ; 99d9: 20 f4 ff     ..            ; Read key within time limit, or read a specific key, or read machine type
    ldy #2                                         ; 99dc: a0 02       ..
    bcs INKER                                      ; 99de: b0 0b       ..
    txa                                            ; 99e0: 8a          .
    sta (POINT),y                                  ; 99e1: 91 7a       .z
    lda #0                                         ; 99e3: a9 00       ..
    iny                                            ; 99e5: c8          .              ; Y=&03
    sta (POINT),y                                  ; 99e6: 91 7a       .z
    jmp AMADE                                      ; 99e8: 4c 67 88    Lg.

.INKER
    lda #&ff                                       ; 99eb: a9 ff       ..
    sta (POINT),y                                  ; 99ed: 91 7a       .z
    iny                                            ; 99ef: c8          .
    sta (POINT),y                                  ; 99f0: 91 7a       .z
    jmp AMADE                                      ; 99f2: 4c 67 88    Lg.

.INKEY2
    pha                                            ; 99f5: 48          H              ; Scan keyboard
    dey                                            ; 99f6: 88          .
    lda (ARGA),y                                   ; 99f7: b1 3a       .:
    tax                                            ; 99f9: aa          .
    pla                                            ; 99fa: 68          h
    tay                                            ; 99fb: a8          .
    lda #osbyte_inkey                              ; 99fc: a9 81       ..
    jsr osbyte                                     ; 99fe: 20 f4 ff     ..            ; Read key within time limit, or read a specific key, or read machine type
    tya                                            ; 9a01: 98          .
    bmi INKYES                                     ; 9a02: 30 03       0.
    jmp NO                                         ; 9a04: 4c 2d 83    L-.

.INKYES
    jmp YES                                        ; 9a07: 4c 31 83    L1.


    ; **** GENSYM (added 31/8/83 RMT)
.GENSYM
    lda #'G'                                       ; 9a0a: a9 47       .G
    sta OSWBUF                                     ; 9a0c: 8d 00 06    ...
    ldx #3                                         ; 9a0f: a2 03       ..
    sec                                            ; 9a11: 38          8
.NXDIGT
    lda GENCNT,x                                   ; 9a12: bd 34 04    .4.
    adc #0                                         ; 9a15: 69 00       i.
    cmp #&3a                                       ; 9a17: c9 3a       .:
    bcc NOCAR                                      ; 9a19: 90 02       ..
    lda #'0'                                       ; 9a1b: a9 30       .0
.NOCAR
    sta GENCNT,x                                   ; 9a1d: 9d 34 04    .4.
    sta IMBUF+1,x                                  ; 9a20: 9d 01 06    ...
    dex                                            ; 9a23: ca          .
    bpl NXDIGT                                     ; 9a24: 10 ec       ..
    ldy #4                                         ; 9a26: a0 04       ..
    sty END                                        ; 9a28: 84 1d       ..
    jsr MATCH                                      ; 9a2a: 20 ef 89     ..            ; Look up Gxxxx
    ldy #2                                         ; 9a2d: a0 02       ..
    lda (POINT),y                                  ; 9a2f: b1 7a       .z
    cmp #<ZA                                       ; 9a31: c9 02       ..             ; Is it UNDEFINED ?
    bne GENSYM                                     ; 9a33: d0 d5       ..
    iny                                            ; 9a35: c8          .              ; Y=&03
    lda (POINT),y                                  ; 9a36: b1 7a       .z
    cmp IMBOT                                      ; 9a38: cd 2c 04    .,.
    bne GENSYM                                     ; 9a3b: d0 cd       ..
    ldy #5                                         ; 9a3d: a0 05       ..
    lda (POINT),y                                  ; 9a3f: b1 7a       .z             ; No properties ?
    bne GENSYM                                     ; 9a41: d0 c7       ..
    jmp AMADE                                      ; 9a43: 4c 67 88    Lg.


    ; ******************************
    ; Useful Boolean routines
    ; ******************************
    ; **** BNOT
.BNOT
    jsr ALLNUM                                     ; 9a46: 20 87 94     ..
    jsr ALNUM                                      ; 9a49: 20 3d 84     =.
    ldy #2                                         ; 9a4c: a0 02       ..
    lda #&ff                                       ; 9a4e: a9 ff       ..
    eor (ARGA),y                                   ; 9a50: 51 3a       Q:
    sta (POINT),y                                  ; 9a52: 91 7a       .z
    iny                                            ; 9a54: c8          .              ; Y=&03
    lda #&ff                                       ; 9a55: a9 ff       ..
    eor (ARGA),y                                   ; 9a57: 51 3a       Q:
    sta (POINT),y                                  ; 9a59: 91 7a       .z
    jmp AMADE                                      ; 9a5b: 4c 67 88    Lg.


    ; **** BAND
.BAND
    jsr ALLNUM                                     ; 9a5e: 20 87 94     ..
    jsr ALNUM                                      ; 9a61: 20 3d 84     =.
    lda #&ff                                       ; 9a64: a9 ff       ..
    ldy #3                                         ; 9a66: a0 03       ..
    sta (POINT),y                                  ; 9a68: 91 7a       .z
    dey                                            ; 9a6a: 88          .              ; Y=&02
    sta (POINT),y                                  ; 9a6b: 91 7a       .z
    ldx TVSEXT                                     ; 9a6d: a6 33       .3
.MBAND
    dex                                            ; 9a6f: ca          .
    dex                                            ; 9a70: ca          .
    lda TVS,x                                      ; 9a71: b5 30       .0
    sta WSA                                        ; 9a73: 85 34       .4
    lda TVS+1,x                                    ; 9a75: b5 31       .1
    sta WSA+1                                      ; 9a77: 85 35       .5
    lda (WSA),y                                    ; 9a79: b1 34       .4
    and (POINT),y                                  ; 9a7b: 31 7a       1z
    sta (POINT),y                                  ; 9a7d: 91 7a       .z
    iny                                            ; 9a7f: c8          .
    lda (WSA),y                                    ; 9a80: b1 34       .4
    and (POINT),y                                  ; 9a82: 31 7a       1z
    sta (POINT),y                                  ; 9a84: 91 7a       .z
    dey                                            ; 9a86: 88          .
    cpx #&0a                                       ; 9a87: e0 0a       ..
    bne MBAND                                      ; 9a89: d0 e4       ..
    jmp AMADE                                      ; 9a8b: 4c 67 88    Lg.


    ; **** BOR
.BOR
    jsr ALLNUM                                     ; 9a8e: 20 87 94     ..
    jsr ALNUM                                      ; 9a91: 20 3d 84     =.
    lda #0                                         ; 9a94: a9 00       ..
    ldy #3                                         ; 9a96: a0 03       ..
    sta (POINT),y                                  ; 9a98: 91 7a       .z
    dey                                            ; 9a9a: 88          .              ; Y=&02
    sta (POINT),y                                  ; 9a9b: 91 7a       .z
    ldx TVSEXT                                     ; 9a9d: a6 33       .3
.MBOR
    dex                                            ; 9a9f: ca          .
    dex                                            ; 9aa0: ca          .
    lda TVS,x                                      ; 9aa1: b5 30       .0
    sta WSA                                        ; 9aa3: 85 34       .4
    lda TVS+1,x                                    ; 9aa5: b5 31       .1
    sta WSA+1                                      ; 9aa7: 85 35       .5
    lda (WSA),y                                    ; 9aa9: b1 34       .4
    ora (POINT),y                                  ; 9aab: 11 7a       .z
    sta (POINT),y                                  ; 9aad: 91 7a       .z
    iny                                            ; 9aaf: c8          .
    lda (WSA),y                                    ; 9ab0: b1 34       .4
    ora (POINT),y                                  ; 9ab2: 11 7a       .z
    sta (POINT),y                                  ; 9ab4: 91 7a       .z
    dey                                            ; 9ab6: 88          .
    cpx #&0a                                       ; 9ab7: e0 0a       ..
    bne MBOR                                       ; 9ab9: d0 e4       ..
    jmp AMADE                                      ; 9abb: 4c 67 88    Lg.


    ; ******************************
    ; Garbage collector file.
    ; ******************************
    ; **** Set CELL to image start
.SETCEL
    lda #WSBOT                                     ; 9abe: a9 02       ..
    sta CELL                                       ; 9ac0: 85 7c       .|
    lda IMBOT                                      ; 9ac2: ad 2c 04    .,.
    sta CELL+1                                     ; 9ac5: 85 7d       .}
    rts                                            ; 9ac7: 60          `


    ; **** Clear all G.C. flags
.CLEARF
    jsr SETCEL                                     ; 9ac8: 20 be 9a     ..
    ldy #0                                         ; 9acb: a0 00       ..
.RZ
    lda (CELL),y                                   ; 9acd: b1 7c       .|
    and #&fc                                       ; 9acf: 29 fc       ).
    sta (CELL),y                                   ; 9ad1: 91 7c       .|
    jsr NXCELL                                     ; 9ad3: 20 70 8a     p.
    bcc RZ                                         ; 9ad6: 90 f5       ..
    rts                                            ; 9ad8: 60          `


    ; ******************************
    ; Register a set of cells,
    ; starting from the one in GCA.
    ; ******************************
.REGCDR
    lda (GCA,x)                                    ; 9ad9: a1 04       ..
.REGPIN
    ror a                                          ; 9adb: 6a          j
    bcs REGRTS                                     ; 9adc: b0 2d       .-
    ror a                                          ; 9ade: 6a          j
    bcc VIRGIN                                     ; 9adf: 90 32       .2
    ldy #4                                         ; 9ae1: a0 04       ..
    rol a                                          ; 9ae3: 2a          *
    sec                                            ; 9ae4: 38          8
    rol a                                          ; 9ae5: 2a          *
    sta (GCA,x)                                    ; 9ae6: 81 04       ..
    bmi LIN                                        ; 9ae8: 30 01       0.
    iny                                            ; 9aea: c8          .              ; Y=&05
.LIN
    lda (GCA),y                                    ; 9aeb: b1 04       ..
    beq REGRTS                                     ; 9aed: f0 1c       ..
    tax                                            ; 9aef: aa          .
    dey                                            ; 9af0: 88          .
.BOT
    lda (GCA),y                                    ; 9af1: b1 04       ..
    sta GCA                                        ; 9af3: 85 04       ..
    stx GCA+1                                      ; 9af5: 86 05       ..
.REGIS1
    ldx #0                                         ; 9af7: a2 00       ..
.REGISU
    lda (GCA,x)                                    ; 9af9: a1 04       ..
    bmi REGPIN                                     ; 9afb: 30 de       0.
    cmp #4                                         ; 9afd: c9 04       ..
    bcc REGPIN                                     ; 9aff: 90 da       ..
    ora #1                                         ; 9b01: 09 01       ..
    sta (GCA,x)                                    ; 9b03: 81 04       ..
    ldy #3                                         ; 9b05: a0 03       ..
    cmp #SUBRF                                     ; 9b07: c9 08       ..
    bcs LIN                                        ; 9b09: b0 e0       ..
.REGRTS
    rts                                            ; 9b0b: 60          `

.REGIST
    lda GCA+1                                      ; 9b0c: a5 05       ..             ; This code added by RMT
    cmp ARETOP                                     ; 9b0e: c5 79       .y             ; 12/9/83 to prevent bug
    bcc REGIS1                                     ; 9b10: 90 e5       ..             ; probably caused by ARG
    rts                                            ; 9b12: 60          `              ; being &FFxx

.VIRGIN
    clv                                            ; 9b13: b8          .
    ldy #2                                         ; 9b14: a0 02       ..
    sec                                            ; 9b16: 38          8
    rol a                                          ; 9b17: 2a          *
    asl a                                          ; 9b18: 0a          .
    sta (GCA,x)                                    ; 9b19: 81 04       ..
    bmi LINJ                                       ; 9b1b: 30 01       0.
    iny                                            ; 9b1d: c8          .              ; Y=&03
.LINJ
    lda (GCA),y                                    ; 9b1e: b1 04       ..
    beq REGCDR                                     ; 9b20: f0 b7       ..
    tax                                            ; 9b22: aa          .
    dey                                            ; 9b23: 88          .
    dec l0009                                      ; 9b24: c6 09       ..
    bpl STOCK                                      ; 9b26: 10 04       ..
    inc l0009                                      ; 9b28: e6 09       ..
    beq BOT                                        ; 9b2a: f0 c5       ..             ; Always taken
.STOCK
    lda GCA+1                                      ; 9b2c: a5 05       ..
    pha                                            ; 9b2e: 48          H
    lda GCA                                        ; 9b2f: a5 04       ..
    pha                                            ; 9b31: 48          H
    lda (GCA),y                                    ; 9b32: b1 04       ..
    stx GCA+1                                      ; 9b34: 86 05       ..
    sta GCA                                        ; 9b36: 85 04       ..
    jsr REGIST                                     ; 9b38: 20 0c 9b     ..
    inc l0009                                      ; 9b3b: e6 09       ..
    pla                                            ; 9b3d: 68          h
    sta GCA                                        ; 9b3e: 85 04       ..
    pla                                            ; 9b40: 68          h
    sta GCA+1                                      ; 9b41: 85 05       ..
    jmp REGCDR                                     ; 9b43: 4c d9 9a    L..


    ; **** Garbage Collector entry
.RUBBSH
    stx GARX                                       ; 9b46: 86 02       ..
    sty GARRY                                      ; 9b48: 84 03       ..
    lda #&ff                                       ; 9b4a: a9 ff       ..             ; Mark memory invalid
    sta MEMINV                                     ; 9b4c: 8d 32 04    .2.
    lda #4                                         ; 9b4f: a9 04       ..             ; Start timing
    jsr ZERTIM                                     ; 9b51: 20 ca 98     ..            ; Zero timer
    lda AREVAL                                     ; 9b54: ad 2d 04    .-.
    sta OLDEXT                                     ; 9b57: 85 1b       ..
    lda AREVAL+1                                   ; 9b59: ad 2e 04    ...
    sta OLDEXT+1                                   ; 9b5c: 85 1c       ..
    inc GCNO                                       ; 9b5e: e6 00       ..
    bne HGCA                                       ; 9b60: d0 02       ..
    inc GCNO+1                                     ; 9b62: e6 01       ..
.HGCA
    lda LEVEL                                      ; 9b64: a5 1a       ..
    and #2                                         ; 9b66: 29 02       ).
    beq NOMESA                                     ; 9b68: f0 16       ..
    lda HANDLE                                     ; 9b6a: a5 13       ..
    pha                                            ; 9b6c: 48          H              ; Save I/O file handle
    ldx #GCOFF                                     ; 9b6d: a2 33       .3             ; 'G.C. no.'
    jsr MESSAH                                     ; 9b6f: 20 fc 84     ..
    lda GCNO                                       ; 9b72: a5 00       ..
    sta ACL                                        ; 9b74: 85 72       .r             ; Print no. of G.C.'s
    lda GCNO+1                                     ; 9b76: a5 01       ..
    sta ACL+1                                      ; 9b78: 85 73       .s
    jsr PINT                                       ; 9b7a: 20 57 8c     W.
    pla                                            ; 9b7d: 68          h
    sta HANDLE                                     ; 9b7e: 85 13       ..
.NOMESA
    jsr CLEARF                                     ; 9b80: 20 c8 9a     ..
    lda #&20                                       ; 9b83: a9 20       .
    sta l0009                                      ; 9b85: 85 09       ..             ; Stack limit
    ldx TVSEXT                                     ; 9b87: a6 33       .3
.COLLEC
    lda TVS-1,x                                    ; 9b89: b5 2f       ./
    beq SREG                                       ; 9b8b: f0 0d       ..             ; Register off WSA etc.
.CREG
    sta GCA+1                                      ; 9b8d: 85 05       ..
    lda TVS-2,x                                    ; 9b8f: b5 2e       ..
    sta GCA                                        ; 9b91: 85 04       ..
    stx CELL                                       ; 9b93: 86 7c       .|
    jsr REGIST                                     ; 9b95: 20 0c 9b     ..
    ldx CELL                                       ; 9b98: a6 7c       .|
.SREG
    dex                                            ; 9b9a: ca          .
    dex                                            ; 9b9b: ca          .
    cpx #6                                         ; 9b9c: e0 06       ..
    bcs COLLEC                                     ; 9b9e: b0 e9       ..
    lda ARG+1                                      ; 9ba0: a5 31       .1
    beq STRETH                                     ; 9ba2: f0 09       ..
    sta GCA+1                                      ; 9ba4: 85 05       ..
    lda ARG                                        ; 9ba6: a5 30       .0
    sta GCA                                        ; 9ba8: 85 04       ..
    jsr REGIST                                     ; 9baa: 20 0c 9b     ..
.STRETH
    lda SP                                         ; 9bad: a5 7e       .~             ; Register off stack
    sta CELL                                       ; 9baf: 85 7c       .|
    lda SP+1                                       ; 9bb1: a5 7f       ..
    sta CELL+1                                     ; 9bb3: 85 7d       .}
    cmp ARETOP                                     ; 9bb5: c5 79       .y
    bcs LOOKW                                      ; 9bb7: b0 35       .5
.STUP
    ldy #0                                         ; 9bb9: a0 00       ..
    lda (CELL),y                                   ; 9bbb: b1 7c       .|
    beq BOWDUN                                     ; 9bbd: f0 08       ..
    tay                                            ; 9bbf: a8          .
.STCOLL
    jsr SPREG                                      ; 9bc0: 20 72 9e     r.
    bne STCOLL                                     ; 9bc3: d0 fb       ..
    lda (CELL),y                                   ; 9bc5: b1 7c       .|
.BOWDUN
    sec                                            ; 9bc7: 38          8
    adc CELL                                       ; 9bc8: 65 7c       e|
    sta CELL                                       ; 9bca: 85 7c       .|
    bcc SPOCK                                      ; 9bcc: 90 02       ..
    inc CELL+1                                     ; 9bce: e6 7d       .}
.SPOCK
    lda (CELL),y                                   ; 9bd0: b1 7c       .|
    tay                                            ; 9bd2: a8          .
    jsr SPREG                                      ; 9bd3: 20 72 9e     r.
    dey                                            ; 9bd6: 88          .              ; Avoid the return addr
    dey                                            ; 9bd7: 88          .
.STCOL
    jsr SPREG                                      ; 9bd8: 20 72 9e     r.
    bne STCOL                                      ; 9bdb: d0 fb       ..
    lda (CELL),y                                   ; 9bdd: b1 7c       .|
    sec                                            ; 9bdf: 38          8
.CXH
    adc CELL                                       ; 9be0: 65 7c       e|
    bcc CXHB                                       ; 9be2: 90 02       ..
    inc CELL+1                                     ; 9be4: e6 7d       .}
.CXHB
    sta CELL                                       ; 9be6: 85 7c       .|
    lda CELL+1                                     ; 9be8: a5 7d       .}
    cmp ARETOP                                     ; 9bea: c5 79       .y
    bcc STUP                                       ; 9bec: 90 cb       ..
.LOOKW
    jsr SETCEL                                     ; 9bee: 20 be 9a     ..            ; Now off whole
    bit CXH                                        ; 9bf1: 2c e0 9b    ,..            ; Set overflow
    php                                            ; 9bf4: 08          .
.MORWS
    ldx #0                                         ; 9bf5: a2 00       ..
    lda (CELL,x)                                   ; 9bf7: a1 7c       .|
    cmp #&82                                       ; 9bf9: c9 82       ..
    beq DOREG                                      ; 9bfb: f0 0d       ..
    cmp #2                                         ; 9bfd: c9 02       ..
    beq DOREG                                      ; 9bff: f0 09       ..             ; Register if half
    bcs NOREG                                      ; 9c01: b0 14       ..             ; finished,
    jsr USEFUL                                     ; 9c03: 20 3d 90     =.
    beq NOREG                                      ; 9c06: f0 0f       ..
    lda (CELL,x)                                   ; 9c08: a1 7c       .|
.DOREG
    ldy CELL                                       ; 9c0a: a4 7c       .|             ; or if char atom
    sty GCA                                        ; 9c0c: 84 04       ..
    ldy CELL+1                                     ; 9c0e: a4 7d       .}
    sty GCA+1                                      ; 9c10: 84 05       ..
    plp                                            ; 9c12: 28          (
    jsr REGPIN                                     ; 9c13: 20 db 9a     ..
    php                                            ; 9c16: 08          .
.NOREG
    jsr NXCELL                                     ; 9c17: 20 70 8a     p.
    bcc MORWS                                      ; 9c1a: 90 d9       ..
    plp                                            ; 9c1c: 28          (
    bvc LOOKW                                      ; 9c1d: 50 cf       P.             ; There's more

    ; ******************************
    ; Having registered the cells,
    ; now to move the memory about
    ;    First calculate the change
    ; in position of all the blocks
    ; ******************************
    jsr SETCEL                                     ; 9c1f: 20 be 9a     ..
    ldy #0                                         ; 9c22: a0 00       ..
    sty DISPM                                      ; 9c24: 84 0b       ..
    sty DISPM+1                                    ; 9c26: 84 0c       ..
.ML
    lda (CELL),y                                   ; 9c28: b1 7c       .|
    lsr a                                          ; 9c2a: 4a          J
    bcc SETMIN                                     ; 9c2b: 90 08       ..
    jsr NXCELL                                     ; 9c2d: 20 70 8a     p.
    bcc ML                                         ; 9c30: 90 f6       ..
    jmp CLUPB                                      ; 9c32: 4c 7f 9d    L..

.SETMIN
    lda CELL+1                                     ; 9c35: a5 7d       .}
    sta AD+1                                       ; 9c37: 85 88       ..
    lda CELL                                       ; 9c39: a5 7c       .|
    sta AD                                         ; 9c3b: 85 87       ..             ; Top of static
.DLOP
    ldy #2                                         ; 9c3d: a0 02       ..
    lda DISPM                                      ; 9c3f: a5 0b       ..
    sta (CELL),y                                   ; 9c41: 91 7c       .|
    iny                                            ; 9c43: c8          .              ; Y=&03
    lda DISPM+1                                    ; 9c44: a5 0c       ..
    sta (CELL),y                                   ; 9c46: 91 7c       .|
    lda CELL                                       ; 9c48: a5 7c       .|
    sta AA                                         ; 9c4a: 85 1e       ..
    lda CELL+1                                     ; 9c4c: a5 7d       .}
    sta AA+1                                       ; 9c4e: 85 1f       ..
.STFR
    jsr NXCELL                                     ; 9c50: 20 70 8a     p.
    bcs TADJ                                       ; 9c53: b0 5a       .Z
    lda (CELL),y                                   ; 9c55: b1 7c       .|
    lsr a                                          ; 9c57: 4a          J
    bcc STFR                                       ; 9c58: 90 f6       ..
    lda CELL                                       ; 9c5a: a5 7c       .|
    sta AB                                         ; 9c5c: 85 20       .
    sbc AA                                         ; 9c5e: e5 1e       ..
    tax                                            ; 9c60: aa          .
    lda CELL+1                                     ; 9c61: a5 7d       .}
    sta AB+1                                       ; 9c63: 85 21       .!
    sbc AA+1                                       ; 9c65: e5 1f       ..
    tay                                            ; 9c67: a8          .
    txa                                            ; 9c68: 8a          .
    clc                                            ; 9c69: 18          .
    adc DISPM                                      ; 9c6a: 65 0b       e.
    sta DISPM                                      ; 9c6c: 85 0b       ..
    tya                                            ; 9c6e: 98          .
    adc DISPM+1                                    ; 9c6f: 65 0c       e.
    sta DISPM+1                                    ; 9c71: 85 0c       ..
    ldy #0                                         ; 9c73: a0 00       ..
    lda (CELL),y                                   ; 9c75: b1 7c       .|
    lsr a                                          ; 9c77: 4a          J
.STUSE
    rol a                                          ; 9c78: 2a          *
    clc                                            ; 9c79: 18          .
    bmi SIXG                                       ; 9c7a: 30 0a       0.
    cmp #SUBRF                                     ; 9c7c: c9 08       ..
    bcs SIXG                                       ; 9c7e: b0 06       ..
    iny                                            ; 9c80: c8          .
    lda (CELL),y                                   ; 9c81: b1 7c       .|
    dey                                            ; 9c83: 88          .
    bcc ADDIN                                      ; 9c84: 90 02       ..             ; ALWAYS branch

.SIXG
    lda #5                                         ; 9c86: a9 05       ..
.ADDIN
    adc CELL                                       ; 9c88: 65 7c       e|
    sta CELL                                       ; 9c8a: 85 7c       .|
    bcc NHCIQ                                      ; 9c8c: 90 10       ..
    ldx CELL+1                                     ; 9c8e: a6 7d       .}
    inc CELL+1                                     ; 9c90: e6 7d       .}
    lda DISPM                                      ; 9c92: a5 0b       ..
    sta DL,x                                       ; 9c94: 9d 50 04    .P.
    lda DISPM+1                                    ; 9c97: a5 0c       ..
    sta DH,x                                       ; 9c99: 9d 20 05    . .
    lda CELL                                       ; 9c9c: a5 7c       .|
.NHCIQ
    cmp AREVAL                                     ; 9c9e: cd 2d 04    .-.
    lda CELL+1                                     ; 9ca1: a5 7d       .}
    sbc AREVAL+1                                   ; 9ca3: ed 2e 04    ...
    bcs TADJ                                       ; 9ca6: b0 07       ..
    lda (CELL),y                                   ; 9ca8: b1 7c       .|
    lsr a                                          ; 9caa: 4a          J
    bcs STUSE                                      ; 9cab: b0 cb       ..
    bcc DLOP                                       ; 9cad: 90 8e       ..             ; ALWAYS branch

.TADJ
    lda DISPM                                      ; 9caf: a5 0b       ..
    sta l0009                                      ; 9cb1: 85 09       ..
    lda DISPM+1                                    ; 9cb3: a5 0c       ..
    sta l000a                                      ; 9cb5: 85 0a       ..

    ; ******************************
    ; Having calculated the
    ; dispacements, now to alter
    ; the pointers
    ; ******************************
.ADJUSS
    lda SP                                         ; 9cb7: a5 7e       .~             ; Adjust stack
    sta CELL                                       ; 9cb9: 85 7c       .|
    lda SP+1                                       ; 9cbb: a5 7f       ..
    sta CELL+1                                     ; 9cbd: 85 7d       .}
.ASP
    ldy #0                                         ; 9cbf: a0 00       ..
    sty GCA                                        ; 9cc1: 84 04       ..
    lda (CELL),y                                   ; 9cc3: b1 7c       .|
    beq NOLEAP                                     ; 9cc5: f0 06       ..
    pha                                            ; 9cc7: 48          H
    tay                                            ; 9cc8: a8          .
    jsr AJCELL                                     ; 9cc9: 20 f5 9d     ..
    pla                                            ; 9ccc: 68          h
.NOLEAP
    sec                                            ; 9ccd: 38          8
    adc CELL                                       ; 9cce: 65 7c       e|
    sta CELL                                       ; 9cd0: 85 7c       .|
    bcc LUCK                                       ; 9cd2: 90 02       ..
    inc CELL+1                                     ; 9cd4: e6 7d       .}
.LUCK
    lda CELL+1                                     ; 9cd6: a5 7d       .}
    cmp ARETOP                                     ; 9cd8: c5 79       .y
    bcc ASP                                        ; 9cda: 90 e3       ..
    lda #BINDER                                    ; 9cdc: a9 32       .2             ; Adjust workspace
    sta CELL                                       ; 9cde: 85 7c       .|
    lda #0                                         ; 9ce0: a9 00       ..
    sta CELL+1                                     ; 9ce2: 85 7d       .}
    ldy TVSEXT                                     ; 9ce4: a4 33       .3
    dey                                            ; 9ce6: 88          .
    dey                                            ; 9ce7: 88          .
    dey                                            ; 9ce8: 88          .
    jsr AJCELL                                     ; 9ce9: 20 f5 9d     ..
    lda #TVS-1                                     ; 9cec: a9 2f       ./
    sta CELL                                       ; 9cee: 85 7c       .|
    ldy #2                                         ; 9cf0: a0 02       ..
    jsr AJCELL                                     ; 9cf2: 20 f5 9d     ..
    jsr SETCEL                                     ; 9cf5: 20 be 9a     ..
    ldy #0                                         ; 9cf8: a0 00       ..             ; Revises pointer over
.ADJUT
    lda (CELL),y                                   ; 9cfa: b1 7c       .|             ; whole of
    lsr a                                          ; 9cfc: 4a          J
    bcc NXADJ                                      ; 9cfd: 90 11       ..
    ldy #4                                         ; 9cff: a0 04       ..
    asl a                                          ; 9d01: 0a          .
    bmi LICE                                       ; 9d02: 30 09       0.
    iny                                            ; 9d04: c8          .              ; Y=&05
    cmp #SUBRF                                     ; 9d05: c9 08       ..
    bcs LICE                                       ; 9d07: b0 04       ..
    cmp #NUMF                                      ; 9d09: c9 04       ..
    bcs NXADJ                                      ; 9d0b: b0 03       ..
.LICE
    jsr AJCELL                                     ; 9d0d: 20 f5 9d     ..
.NXADJ
    jsr NXCELL                                     ; 9d10: 20 70 8a     p.
    bcc ADJUT                                      ; 9d13: 90 e5       ..

    ; ******************************
    ; Now move the blocks about
    ; ******************************
    lda AD                                         ; 9d15: a5 87       ..             ; AD has top of static
    sta CELL                                       ; 9d17: 85 7c       .|             ; space
    lda AD+1                                       ; 9d19: a5 88       ..
    sta CELL+1                                     ; 9d1b: 85 7d       .}
.SAL
    jsr NXCELL                                     ; 9d1d: 20 70 8a     p.
    bcs CLUP                                       ; 9d20: b0 53       .S
    lda (CELL),y                                   ; 9d22: b1 7c       .|
    lsr a                                          ; 9d24: 4a          J
    bcc SAL                                        ; 9d25: 90 f6       ..
    lda CELL                                       ; 9d27: a5 7c       .|
    sta AA                                         ; 9d29: 85 1e       ..
    lda CELL+1                                     ; 9d2b: a5 7d       .}
    sta AA+1                                       ; 9d2d: 85 1f       ..
.MOLE
    jsr NXCELL                                     ; 9d2f: 20 70 8a     p.
    bcs ABGO                                       ; 9d32: b0 05       ..
    lda (CELL),y                                   ; 9d34: b1 7c       .|
    lsr a                                          ; 9d36: 4a          J
    bcs MOLE                                       ; 9d37: b0 f6       ..
.ABGO
    lda CELL                                       ; 9d39: a5 7c       .|
    sta AB                                         ; 9d3b: 85 20       .
    sec                                            ; 9d3d: 38          8
    sbc AA                                         ; 9d3e: e5 1e       ..
    sta GCA                                        ; 9d40: 85 04       ..             ; PUT LENGTH IN GCA
    lda CELL+1                                     ; 9d42: a5 7d       .}
    sta AB+1                                       ; 9d44: 85 21       .!

    ; ******************************
    ; Fast move routine
    ; ******************************
    ldy #0                                         ; 9d46: a0 00       ..
    sbc AA+1                                       ; 9d48: e5 1f       ..
    beq BITMOV                                     ; 9d4a: f0 11       ..
    sta GCA+1                                      ; 9d4c: 85 05       ..
.MORMOV
    lda (AA),y                                     ; 9d4e: b1 1e       ..
    sta (AD),y                                     ; 9d50: 91 87       ..
    iny                                            ; 9d52: c8          .
    bne MORMOV                                     ; 9d53: d0 f9       ..
    inc AA+1                                       ; 9d55: e6 1f       ..
    inc AD+1                                       ; 9d57: e6 88       ..
    dec GCA+1                                      ; 9d59: c6 05       ..
    bne MORMOV                                     ; 9d5b: d0 f1       ..
.BITMOV
    lda (AA),y                                     ; 9d5d: b1 1e       ..
    sta (AD),y                                     ; 9d5f: 91 87       ..
    iny                                            ; 9d61: c8          .
    cpy GCA                                        ; 9d62: c4 04       ..
    bcc BITMOV                                     ; 9d64: 90 f7       ..
    bne SAL                                        ; 9d66: d0 b5       ..             ; If GCA is zero loop
    tya                                            ; 9d68: 98          .
    clc                                            ; 9d69: 18          .
    adc AD                                         ; 9d6a: 65 87       e.
    sta AD                                         ; 9d6c: 85 87       ..
    bcc FINMOV                                     ; 9d6e: 90 02       ..
    inc AD+1                                       ; 9d70: e6 88       ..
.FINMOV
    jmp SAL                                        ; 9d72: 4c 1d 9d    L..


    ; ******************************
    ; Now to calculate the gain in
    ; cells etc.
    ; ******************************
.CLUP
    lda AD                                         ; 9d75: a5 87       ..
    sta AREVAL                                     ; 9d77: 8d 2d 04    .-.
    lda AD+1                                       ; 9d7a: a5 88       ..
    sta AREVAL+1                                   ; 9d7c: 8d 2e 04    ...
.CLUPB
    jsr CLEARF                                     ; 9d7f: 20 c8 9a     ..
    sec                                            ; 9d82: 38          8
    lda OLDEXT                                     ; 9d83: a5 1b       ..
    sbc AREVAL                                     ; 9d85: ed 2d 04    .-.
    sta ACL                                        ; 9d88: 85 72       .r
    sta SA                                         ; 9d8a: 85 07       ..
    lda OLDEXT+1                                   ; 9d8c: a5 1c       ..
    sbc AREVAL+1                                   ; 9d8e: ed 2e 04    ...
    sta ACL+1                                      ; 9d91: 85 73       .s
    sta SA+1                                       ; 9d93: 85 08       ..
    lda LEVEL                                      ; 9d95: a5 1a       ..
    and #1                                         ; 9d97: 29 01       ).
    beq NOMESC                                     ; 9d99: f0 31       .1
    lda HANDLE                                     ; 9d9b: a5 13       ..             ; Save file handle
    pha                                            ; 9d9d: 48          H
    lda #0                                         ; 9d9e: a9 00       ..
    sta HANDLE                                     ; 9da0: 85 13       ..
    jsr CROUT                                      ; 9da2: 20 19 85     ..
    lda #'^'                                       ; 9da5: a9 5e       .^
    jsr OUT                                        ; 9da7: 20 0e 85     ..
    jsr PINT                                       ; 9daa: 20 57 8c     W.
    ldx #COLOFF                                    ; 9dad: a2 3a       .:
    jsr MESSAG                                     ; 9daf: 20 00 85     ..            ; ' Bytes collected '
    sec                                            ; 9db2: 38          8
    lda SP                                         ; 9db3: a5 7e       .~
    sbc AREVAL                                     ; 9db5: ed 2d 04    .-.
    sta ACL                                        ; 9db8: 85 72       .r
    lda SP+1                                       ; 9dba: a5 7f       ..
    sbc AREVAL+1                                   ; 9dbc: ed 2e 04    ...
    sta ACL+1                                      ; 9dbf: 85 73       .s
    jsr PINT                                       ; 9dc1: 20 57 8c     W.
    ldx #FROFF                                     ; 9dc4: a2 4c       .L
    jsr MESSAG                                     ; 9dc6: 20 00 85     ..            ; ' Bytes free<CR>'
    pla                                            ; 9dc9: 68          h
    sta HANDLE                                     ; 9dca: 85 13       ..             ; Restore file handle
.NOMESC
    lda #osword_read_interval_timer                ; 9dcc: a9 03       ..
    ldx #<(TIMEW)                                  ; 9dce: a2 25       .%
    ldy #>(TIMEW)                                  ; 9dd0: a0 04       ..
    jsr osword                                     ; 9dd2: 20 f1 ff     ..            ; Read timer; Read interval timer
    clc                                            ; 9dd5: 18          .
    ldy #0                                         ; 9dd6: a0 00       ..
    ldx #5                                         ; 9dd8: a2 05       ..
.MORTIM
    lda TIMEW,y                                    ; 9dda: b9 25 04    .%.
    adc GCTIME,y                                   ; 9ddd: 79 20 04    y .
    sta GCTIME,y                                   ; 9de0: 99 20 04    . .
    iny                                            ; 9de3: c8          .
    dex                                            ; 9de4: ca          .
    bpl MORTIM                                     ; 9de5: 10 f3       ..
    ldx GARX                                       ; 9de7: a6 02       ..
    ldy GARRY                                      ; 9de9: a4 03       ..
    lda #0                                         ; 9deb: a9 00       ..
    sta MEMINV                                     ; 9ded: 8d 32 04    .2.
    lda SA                                         ; 9df0: a5 07       ..
    ora SA+1                                       ; 9df2: 05 08       ..
    rts                                            ; 9df4: 60          `

.AJCELL
    lda (CELL),y                                   ; 9df5: b1 7c       .|
    dey                                            ; 9df7: 88          .
    cmp AD+1                                       ; 9df8: c5 88       ..
    bcc NXPR                                       ; 9dfa: 90 70       .p
    cmp ARETOP                                     ; 9dfc: c5 79       .y
    bcs NXPR                                       ; 9dfe: b0 6c       .l
    cmp AB+1                                       ; 9e00: c5 21       .!             ; Bottom of top block
    bcc ONW                                        ; 9e02: 90 19       ..
    sta GCA+1                                      ; 9e04: 85 05       ..
    bne SPECS                                      ; 9e06: d0 0a       ..
    sta SA+1                                       ; 9e08: 85 08       ..
    lda (CELL),y                                   ; 9e0a: b1 7c       .|
    cmp AB                                         ; 9e0c: c5 20       .
    bcc ONX                                        ; 9e0e: 90 13       ..
    bcs SPECTR                                     ; 9e10: b0 02       ..             ; ALWAYS branch

.SPECS
    lda (CELL),y                                   ; 9e12: b1 7c       .|
.SPECTR
    sbc l0009                                      ; 9e14: e5 09       ..
    tax                                            ; 9e16: aa          .
    lda GCA+1                                      ; 9e17: a5 05       ..
    sbc l000a                                      ; 9e19: e5 0a       ..
    bne CHUGB                                      ; 9e1b: d0 48       .H
.ONW
    sta GCA+1                                      ; 9e1d: 85 05       ..
    sta SA+1                                       ; 9e1f: 85 08       ..
    lda (CELL),y                                   ; 9e21: b1 7c       .|
.ONX
    tax                                            ; 9e23: aa          .
    sty GABBY                                      ; 9e24: 84 06       ..
    tay                                            ; 9e26: a8          .
    lda (GCA),y                                    ; 9e27: b1 04       ..
    lsr a                                          ; 9e29: 4a          J
.GCAON
    rol a                                          ; 9e2a: 2a          *
    clc                                            ; 9e2b: 18          .
    bmi SIXP                                       ; 9e2c: 30 0e       0.
    cmp #SUBRF                                     ; 9e2e: c9 08       ..
    bcs SIXP                                       ; 9e30: b0 0a       ..
    tya                                            ; 9e32: 98          .
    iny                                            ; 9e33: c8          .
    beq PAGDIQ                                     ; 9e34: f0 21       .!
    adc (GCA),y                                    ; 9e36: 71 04       q.
    bcs PAGDIP                                     ; 9e38: b0 1e       ..
    bcc ADDOUT                                     ; 9e3a: 90 05       ..             ; ALWAYS branch

.SIXP
    tya                                            ; 9e3c: 98          .
    adc #5                                         ; 9e3d: 69 05       i.
    bcs PAGDIP                                     ; 9e3f: b0 17       ..
.ADDOUT
    tay                                            ; 9e41: a8          .
    lda (GCA),y                                    ; 9e42: b1 04       ..
    lsr a                                          ; 9e44: 4a          J
    bcs GCAON                                      ; 9e45: b0 e3       ..
    sty SA                                         ; 9e47: 84 07       ..
    ldy #2                                         ; 9e49: a0 02       ..
    txa                                            ; 9e4b: 8a          .
    sec                                            ; 9e4c: 38          8
    sbc (SA),y                                     ; 9e4d: f1 07       ..
    tax                                            ; 9e4f: aa          .
    lda GCA+1                                      ; 9e50: a5 05       ..
    iny                                            ; 9e52: c8          .              ; Y=&03
    sbc (SA),y                                     ; 9e53: f1 07       ..
    bcs CHUG                                       ; 9e55: b0 0c       ..             ; Always taken
.PAGDIQ
    sec                                            ; 9e57: 38          8
.PAGDIP
    ldy GCA+1                                      ; 9e58: a4 05       ..
    txa                                            ; 9e5a: 8a          .
    sbc DL,y                                       ; 9e5b: f9 50 04    .P.
    tax                                            ; 9e5e: aa          .
    tya                                            ; 9e5f: 98          .
    sbc DH,y                                       ; 9e60: f9 20 05    . .
.CHUG
    ldy GABBY                                      ; 9e63: a4 06       ..
.CHUGB
    iny                                            ; 9e65: c8          .
    sta (CELL),y                                   ; 9e66: 91 7c       .|
    dey                                            ; 9e68: 88          .
    txa                                            ; 9e69: 8a          .
    sta (CELL),y                                   ; 9e6a: 91 7c       .|
.NXPR
    dey                                            ; 9e6c: 88          .
    cpy #2                                         ; 9e6d: c0 02       ..
    bcs AJCELL                                     ; 9e6f: b0 84       ..
    rts                                            ; 9e71: 60          `

.SPREG
    lda (CELL),y                                   ; 9e72: b1 7c       .|             ; Stack register
    beq NULBOW                                     ; 9e74: f0 0e       ..
    sta GCA+1                                      ; 9e76: 85 05       ..
    sty GABBY                                      ; 9e78: 84 06       ..
    dey                                            ; 9e7a: 88          .
    lda (CELL),y                                   ; 9e7b: b1 7c       .|
    sta GCA                                        ; 9e7d: 85 04       ..
    jsr REGIST                                     ; 9e7f: 20 0c 9b     ..
    ldy GABBY                                      ; 9e82: a4 06       ..
.NULBOW
    dey                                            ; 9e84: 88          .
    dey                                            ; 9e85: 88          .
    rts                                            ; 9e86: 60          `


    ; ******************************
    ; The error handler
    ; The stack is "gently" taken
    ; down with diagnostic printout.
    ; ******************************

    ; **** Main error entry
.ERRORS
.ERROR
    lda #osbyte_acknowledge_escape                 ; 9e87: a9 7e       .~             ; Ack escape
    jsr osbyte                                     ; 9e89: 20 f4 ff     ..            ; Clear escape condition and perform escape effects
    clc                                            ; 9e8c: 18          .              ; Increment error count
    lda ERRCNT                                     ; 9e8d: a5 0d       ..
    adc #1                                         ; 9e8f: 69 01       i.
    sta ERRCNT                                     ; 9e91: 85 0d       ..
    lda ERRCNT+1                                   ; 9e93: a5 0e       ..
    adc #0                                         ; 9e95: 69 00       i.
    sta ERRCNT+1                                   ; 9e97: 85 0e       ..
    lda LEVEL                                      ; 9e99: a5 1a       ..             ; Save LEVEL
    sta OLDLEV                                     ; 9e9b: 85 97       ..
    ldy #0                                         ; 9e9d: a0 00       ..
    lda (BRKAD),y                                  ; 9e9f: b1 fd       ..             ; Get errno.
    sta ERRNO                                      ; 9ea1: 85 11       ..
    sta ACL                                        ; 9ea3: 85 72       .r

    ; **** Traceback wanted?
    ldx #&ff                                       ; 9ea5: a2 ff       ..
.NEXCAT
    inx                                            ; 9ea7: e8          .
    lda CATTAB,x                                   ; 9ea8: bd 70 82    .p.
    bmi TRCOK                                      ; 9eab: 30 0a       0.             ; Allow trackback
    cmp ERRNO                                      ; 9ead: c5 11       ..
    bne NEXCAT                                     ; 9eaf: d0 f6       ..
    lda LEVEL                                      ; 9eb1: a5 1a       ..             ; Match
    and #&e7                                       ; 9eb3: 29 e7       ).
    sta LEVEL                                      ; 9eb5: 85 1a       ..             ; No traceback
.TRCOK
    ldx #&ff                                       ; 9eb7: a2 ff       ..
    txs                                            ; 9eb9: 9a          .              ; Reset stack
    inx                                            ; 9eba: e8          .              ; X=&00
    stx DEPTH                                      ; 9ebb: 86 8b       ..
    stx HANDLE                                     ; 9ebd: 86 13       ..
    lda #&0e                                       ; 9ebf: a9 0e       ..             ; Page mode
    jsr oswrch                                     ; 9ec1: 20 ee ff     ..            ; Write character 14
    lda #&18                                       ; 9ec4: a9 18       ..             ; Mask for LEVEL
    sta TOPBIN                                     ; 9ec6: 85 0f       ..
    lda #4                                         ; 9ec8: a9 04       ..             ; Error
    and LEVEL                                      ; 9eca: 25 1a       %.
    beq NERRA                                      ; 9ecc: f0 0c       ..
    ldx #ERROFF                                    ; 9ece: a2 5d       .]             ; "^Error number "
    jsr MESSAH                                     ; 9ed0: 20 fc 84     ..
    lda #0                                         ; 9ed3: a9 00       ..
    sta ACL+1                                      ; 9ed5: 85 73       .s
    jsr PINT                                       ; 9ed7: 20 57 8c     W.            ; Print err no.
.NERRA
    lda #&ff                                       ; 9eda: a9 ff       ..
    bit LEVEL                                      ; 9edc: 24 1a       $.             ; Err mess mask
    beq NERRB                                      ; 9ede: f0 03       ..
    jsr PSTRNG                                     ; 9ee0: 20 a5 9f     ..            ; Print err mess
.NERRB
    lda #8                                         ; 9ee3: a9 08       ..             ; Top args mask
    and LEVEL                                      ; 9ee5: 25 1a       %.
    beq NERRC                                      ; 9ee7: f0 03       ..
    jsr PARG                                       ; 9ee9: 20 b6 9f     ..            ; Print ARG
.NERRC
    lda SP+1                                       ; 9eec: a5 7f       ..
DWARF=NERRC-1
    cmp ARETOP                                     ; 9eee: c5 79       .y             ; Pop return
    bcc WINDER                                     ; 9ef0: 90 0c       ..             ; stack completely
    lda #&0f                                       ; 9ef2: a9 0f       ..
    jsr oswrch                                     ; 9ef4: 20 ee ff     ..            ; Page mode off; Write character 15
    lda OLDLEV                                     ; 9ef7: a5 97       ..
    sta LEVEL                                      ; 9ef9: 85 1a       ..             ; Old LEVEL
    jmp SUPER                                      ; 9efb: 4c c6 82    L..            ; Restart


    ; **** Collapse the stack
.WINDER
    ldx #0                                         ; 9efe: a2 00       ..
    stx ACL+1                                      ; 9f00: 86 73       .s
    stx WSC+1                                      ; 9f02: 86 39       .9             ; Used bind count
    lda (SP,x)                                     ; 9f04: a1 7e       .~             ; Get binding state
    tay                                            ; 9f06: a8          .
    iny                                            ; 9f07: c8          .
    clc                                            ; 9f08: 18          .
    adc (SP),y                                     ; 9f09: 71 7e       q~             ; Add work space
    tay                                            ; 9f0b: a8          .
    iny                                            ; 9f0c: c8          .
    lda (SP),y                                     ; 9f0d: b1 7e       .~             ; To get ARG
    sta WSB+1                                      ; 9f0f: 85 37       .7
    dey                                            ; 9f11: 88          .              ; Put ARG in WSB
    lda (SP),y                                     ; 9f12: b1 7e       .~
    sta WSB                                        ; 9f14: 85 36       .6
    dey                                            ; 9f16: 88          .
    lda (SP),y                                     ; 9f17: b1 7e       .~             ; Check ret addr for
    dey                                            ; 9f19: 88          .              ;  ERRORSET
    cmp #>(ELFIN-1)                                ; 9f1a: c9 9f       ..
    bne SLIP                                       ; 9f1c: d0 1e       ..
    lda (SP),y                                     ; 9f1e: b1 7e       .~             ; and low byte
    cmp #<(ELFIN-1)                                ; 9f20: c9 c6       ..
    bne SLIP                                       ; 9f22: d0 18       ..             ; Not ERRORSET
    tya                                            ; 9f24: 98          .
    clc                                            ; 9f25: 18          .
    adc #4                                         ; 9f26: 69 04       i.             ; Remove ERRORSET
    adc SP                                         ; 9f28: 65 7e       e~             ; stack entry
    sta SP                                         ; 9f2a: 85 7e       .~
    bcc QZQ                                        ; 9f2c: 90 02       ..
    inc SP+1                                       ; 9f2e: e6 7f       ..
.QZQ
    lda ERRNO                                      ; 9f30: a5 11       ..             ; Return err no.
    sta ACL                                        ; 9f32: 85 72       .r
    lda #&0f                                       ; 9f34: a9 0f       ..
    jsr oswrch                                     ; 9f36: 20 ee ff     ..            ; Page mode off; Write character 15
    jmp ACLRET                                     ; 9f39: 4c a4 92    L..            ; POP via ACLRET

.SLIP
    lda #<DWARF                                    ; 9f3c: a9 eb       ..
    sta (SP),y                                     ; 9f3e: 91 7e       .~             ; Set up return for POP
    iny                                            ; 9f40: c8          .
    lda #>DWARF                                    ; 9f41: a9 9e       ..
    sta (SP),y                                     ; 9f43: 91 7e       .~
    lda LEVEL                                      ; 9f45: a5 1a       ..             ; Check trace print
    and TOPBIN                                     ; 9f47: 25 0f       %.             ; is this second arg
    beq NOPE                                       ; 9f49: f0 47       .G             ; Skip rint
    and #&10                                       ; 9f4b: 29 10       ).             ; Clear top arg flag
    sta TOPBIN                                     ; 9f4d: 85 0f       ..
    beq BINS                                       ; 9f4f: f0 36       .6
    lda (SP,x)                                     ; 9f51: a1 7e       .~             ; Any bound vars?
    beq BINS                                       ; 9f53: f0 32       .2

    ; **** Do bound var pairs
    tay                                            ; 9f55: a8          .
.ERBIN
    lda (SP),y                                     ; 9f56: b1 7e       .~             ; Get var name into
    sta ARG+1                                      ; 9f58: 85 31       .1             ; ARG
    dey                                            ; 9f5a: 88          .
    lda (SP),y                                     ; 9f5b: b1 7e       .~
    sta ARG                                        ; 9f5d: 85 30       .0
    dey                                            ; 9f5f: 88          .
    dey                                            ; 9f60: 88          .
    dey                                            ; 9f61: 88          .
    sty WSC                                        ; 9f62: 84 38       .8             ; NB. WSC +&01 is &00
    jsr CROUT                                      ; 9f64: 20 19 85     ..
    jsr PRINA                                      ; 9f67: 20 81 8b     ..            ; Print var name
    lda #'='                                       ; 9f6a: a9 3d       .=
    jsr OUT                                        ; 9f6c: 20 0e 85     ..
    lda #' '                                       ; 9f6f: a9 20       .              ; Print a space
    jsr OUT                                        ; 9f71: 20 0e 85     ..
    ldy #3                                         ; 9f74: a0 03       ..             ; Get the value of the
    lda (ARG),y                                    ; 9f76: b1 30       .0             ; variable into ARG
    tax                                            ; 9f78: aa          .
    dey                                            ; 9f79: 88          .              ; Y=&02
    lda (ARG),y                                    ; 9f7a: b1 30       .0
    sta ARG                                        ; 9f7c: 85 30       .0
    stx ARG+1                                      ; 9f7e: 86 31       .1
    jsr PRINA                                      ; 9f80: 20 81 8b     ..            ; Print it
    ldy WSC                                        ; 9f83: a4 38       .8             ; Repeat if more
    bne ERBIN                                      ; 9f85: d0 cf       ..

    ; **** Remove rest of stack
.BINS
    lda WSB                                        ; 9f87: a5 36       .6
    sta ARG                                        ; 9f89: 85 30       .0
    lda WSB+1                                      ; 9f8b: a5 37       .7
    sta ARG+1                                      ; 9f8d: 85 31       .1
    jsr PARG                                       ; 9f8f: 20 b6 9f     ..
.NOPE
    jmp POP                                        ; 9f92: 4c 3a 83    L:.            ; And back to NERRC

.ERCN
    ldy #0                                         ; 9f95: a0 00       ..
    ldx #1                                         ; 9f97: a2 01       ..
.ERCND
    lda ERRCNT,x                                   ; 9f99: b5 0d       ..
    sta ACL,x                                      ; 9f9b: 95 72       .r
    sty ERRCNT,x                                   ; 9f9d: 94 0d       ..
    dex                                            ; 9f9f: ca          .
    bpl ERCND                                      ; 9fa0: 10 f7       ..
    jmp ACLRET                                     ; 9fa2: 4c a4 92    L..

.PSTRNG
    ldx #0                                         ; 9fa5: a2 00       ..             ; Print err mess
    lda #&0d                                       ; 9fa7: a9 0d       ..
.NXOUT
    jsr OUT                                        ; 9fa9: 20 0e 85     ..
    inx                                            ; 9fac: e8          .
    txa                                            ; 9fad: 8a          .
    tay                                            ; 9fae: a8          .
    lda (BRKAD),y                                  ; 9faf: b1 fd       ..
    bne NXOUT                                      ; 9fb1: d0 f6       ..
    jmp CROUT                                      ; 9fb3: 4c 19 85    L..

.PARG
    ldx ARG+1                                      ; 9fb6: a6 31       .1             ; Look for flag
    inx                                            ; 9fb8: e8          .
    beq ARGRTS                                     ; 9fb9: f0 08       ..
    ldx #ARGOFF                                    ; 9fbb: a2 6b       .k             ; Print ARG
    jsr MESSAH                                     ; 9fbd: 20 fc 84     ..            ; 'Arg :'
    jmp PRINA                                      ; 9fc0: 4c 81 8b    L..

.ARGRTS
    rts                                            ; 9fc3: 60          `


    ; **** ERRORSET
.ERRSET
    jsr STEVAL                                     ; 9fc4: 20 d8 9f     ..
.ELFIN
    jsr ALPAIR                                     ; 9fc7: 20 53 84     S.
    ldy #2                                         ; 9fca: a0 02       ..
    lda ARG+1                                      ; 9fcc: a5 31       .1
    sta (POINT),y                                  ; 9fce: 91 7a       .z
    dey                                            ; 9fd0: 88          .              ; Y=&01
    lda ARG                                        ; 9fd1: a5 30       .0
    sta (POINT),y                                  ; 9fd3: 91 7a       .z
    jmp AMADE                                      ; 9fd5: 4c 67 88    Lg.

.STEVAL
    jsr STACK                                      ; 9fd8: 20 93 83     ..            ; ELFIN on stack
    jsr NXEVAL                                     ; 9fdb: 20 1e 85     ..
    jmp POP                                        ; 9fde: 4c 3a 83    L:.


    ; ******************************
    ; Useful arithmetic routines
    ; ******************************
    ; **** 16 bit multiply
.MULPM
    jsr MDA                                        ; 9fe1: 20 25 a0     %.
.MUL
    ldy #&10                                       ; 9fe4: a0 10       ..             ; Index for 16 bits
.MULB
    lda ACL                                        ; 9fe6: a5 72       .r
    lsr a                                          ; 9fe8: 4a          J
    bcc MULD                                       ; 9fe9: 90 0c       ..
    clc                                            ; 9feb: 18          .
    ldx #&fe                                       ; 9fec: a2 fe       ..
.MULC
    lda AUXL,x                                     ; 9fee: b5 76       .v
    adc SIGN,x                                     ; 9ff0: 75 78       ux
    sta AUXL,x                                     ; 9ff2: 95 76       .v
    inx                                            ; 9ff4: e8          .
    bne MULC                                       ; 9ff5: d0 f7       ..
.MULD
    ldx #3                                         ; 9ff7: a2 03       ..
.MULE
    ror ACL,x                                      ; 9ff9: 76 72       vr
    dex                                            ; 9ffb: ca          .
    bpl MULE                                       ; 9ffc: 10 fb       ..
    dey                                            ; 9ffe: 88          .
    bne MULB                                       ; 9fff: d0 e5       ..
    rts                                            ; a001: 60          `


    ; **** 16 bit divide
.DIVPM
    jsr MDA                                        ; a002: 20 25 a0     %.
.DIV
    ldy #&10                                       ; a005: a0 10       ..
.DIVB
    asl ACL                                        ; a007: 06 72       .r
    rol ACL+1                                      ; a009: 26 73       &s
    rol XTNDL                                      ; a00b: 26 74       &t
    rol XTNDL+1                                    ; a00d: 26 75       &u
    sec                                            ; a00f: 38          8
    lda XTNDL                                      ; a010: a5 74       .t
    sbc AUXL                                       ; a012: e5 76       .v
    tax                                            ; a014: aa          .
    lda XTNDL+1                                    ; a015: a5 75       .u
    sbc AUXL+1                                     ; a017: e5 77       .w
    bcc DIVC                                       ; a019: 90 06       ..
    stx XTNDL                                      ; a01b: 86 74       .t
    sta XTNDL+1                                    ; a01d: 85 75       .u
    inc ACL                                        ; a01f: e6 72       .r
.DIVC
    dey                                            ; a021: 88          .
    bne DIVB                                       ; a022: d0 e3       ..
    rts                                            ; a024: 60          `


    ; **** Negation routines
.MDA
    ldy #0                                         ; a025: a0 00       ..
    sty SIGN                                       ; a027: 84 78       .x             ; Abs value of
    ldx #AUXL                                      ; a029: a2 76       .v             ; AUXL with sign in
    jsr MDB                                        ; a02b: 20 30 a0     0.
    ldx #ACL                                       ; a02e: a2 72       .r             ; ls bit of SIGN
.MDB
    lda GCNO+1,x                                   ; a030: b5 01       ..
    bpl MDRTS                                      ; a032: 10 0d       ..
.MD
    sec                                            ; a034: 38          8
    tya                                            ; a035: 98          .
    sbc GCNO,x                                     ; a036: f5 00       ..
    sta GCNO,x                                     ; a038: 95 00       ..
    tya                                            ; a03a: 98          .
    sbc GCNO+1,x                                   ; a03b: f5 01       ..
    sta GCNO+1,x                                   ; a03d: 95 01       ..
    inc SIGN                                       ; a03f: e6 78       .x
.MDRTS
    rts                                            ; a041: 60          `


    ; **** 40 bit divide
.DIV40
    lda #&28                                       ; a042: a9 28       .(
.DIV40B
    pha                                            ; a044: 48          H
    asl ACL40                                      ; a045: 0e 02 04    ...
    ldx #1                                         ; a048: a2 01       ..
    ldy #3                                         ; a04a: a0 03       ..
.MDIV1
    rol ACL40,x                                    ; a04c: 3e 02 04    >..
    inx                                            ; a04f: e8          .
    dey                                            ; a050: 88          .
    bpl MDIV1                                      ; a051: 10 f9       ..
    ldx #0                                         ; a053: a2 00       ..
    ldy #4                                         ; a055: a0 04       ..
.MDIV2
    rol REM40,x                                    ; a057: 3e 07 04    >..
    inx                                            ; a05a: e8          .
    dey                                            ; a05b: 88          .
    bpl MDIV2                                      ; a05c: 10 f9       ..
    sec                                            ; a05e: 38          8
    ldx #0                                         ; a05f: a2 00       ..
    ldy #4                                         ; a061: a0 04       ..
.MDIV3
    lda REM40,x                                    ; a063: bd 07 04    ...
    sbc AUX40,x                                    ; a066: fd 0c 04    ...
    sta TEMP40,x                                   ; a069: 9d 11 04    ...
    inx                                            ; a06c: e8          .
    dey                                            ; a06d: 88          .
    bpl MDIV3                                      ; a06e: 10 f3       ..
    bcc DIV40C                                     ; a070: 90 0e       ..
    ldx #4                                         ; a072: a2 04       ..
.MDIV4
    lda TEMP40,x                                   ; a074: bd 11 04    ...
    sta REM40,x                                    ; a077: 9d 07 04    ...
    dex                                            ; a07a: ca          .
    bpl MDIV4                                      ; a07b: 10 f7       ..
    inc ACL40                                      ; a07d: ee 02 04    ...
.DIV40C
    pla                                            ; a080: 68          h
    tay                                            ; a081: a8          .
    dey                                            ; a082: 88          .
    tya                                            ; a083: 98          .
    bne DIV40B                                     ; a084: d0 be       ..
    rts                                            ; a086: 60          `

.LISPEN
.unused1
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a087: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a08f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a097: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; a09f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a0a7: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a0af: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a0b7: 00 00 00... ...
    equb   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a0bf: 00 ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a0c7: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a0cf: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a0d7: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; a0df: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a0e7: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a0ef: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a0f7: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; a0ff: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a107: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a10f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a117: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; a11f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a127: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a12f: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a137: 00 00 00... ...
    equb   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a13f: 00 ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a147: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a14f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a157: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; a15f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a167: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a16f: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a177: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; a17f: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a187: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a18f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a197: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; a19f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a1a7: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a1af: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a1b7: 00 00 00... ...
    equb   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a1bf: 00 ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a1c7: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a1cf: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a1d7: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; a1df: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a1e7: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a1ef: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a1f7: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; a1ff: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a207: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a20f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a217: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; a21f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a227: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a22f: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a237: 00 00 00... ...
    equb   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a23f: 00 ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a247: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a24f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a257: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; a25f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a267: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a26f: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a277: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; a27f: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a287: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a28f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a297: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; a29f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a2a7: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a2af: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a2b7: 00 00 00... ...
    equb   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a2bf: 00 ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a2c7: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a2cf: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a2d7: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; a2df: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a2e7: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a2ef: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a2f7: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; a2ff: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a307: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a30f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a317: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; a31f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a327: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a32f: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a337: 00 00 00... ...
    equb   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a33f: 00 ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a347: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a34f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a357: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; a35f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a367: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a36f: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a377: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; a37f: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a387: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a38f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a397: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; a39f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a3a7: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a3af: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a3b7: 00 00 00... ...
    equb   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a3bf: 00 ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a3c7: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a3cf: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a3d7: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; a3df: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a3e7: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a3ef: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a3f7: 00 00 00... ...
    equb   0                                       ; a3ff: 00          .


    ; ******************************
    ; This file holds the vectored
    ; core routines. These are
    ; held in 2 pages immediately
    ; preceding the image.
    ; ******************************
.VECTAB
    jmp NULL                                       ; a400: 4c 29 83    L).

    jmp PRINT                                      ; a403: 4c 04 8b    L..

    jmp CONS                                       ; a406: 4c 1e 8e    L..

    jmp EVAL                                       ; a409: 4c b3 94    L..

    jmp CAR                                        ; a40c: 4c 99 8d    L..

    jmp EQ                                         ; a40f: 4c fb 82    L..

    jmp SETQ                                       ; a412: 4c 3a 8e    L:.

    jmp SET                                        ; a415: 4c 34 8e    L4.

    jmp ATOM                                       ; a418: 4c ef 82    L..

    jmp READX                                      ; a41b: 4c dc 88    L..

    jmp CDR                                        ; a41e: 4c 8d 8d    L..

    jmp PRINZ                                      ; a421: 4c 08 8b    L..

    jmp COND                                       ; a424: 4c ee 8c    L..

    jmp QUO                                        ; a427: 4c 4d 8d    LM.

    jmp PROGN                                      ; a42a: 4c 28 8d    L(.

    jmp LOOP                                       ; a42d: 4c fa 8d    L..

    jmp WHILE                                      ; a430: 4c 38 8d    L8.

    jmp LIST                                       ; a433: 4c 6c 8e    Ll.

    jmp CAAR                                       ; a436: 4c 95 8d    L..

    jmp CADR                                       ; a439: 4c 81 8d    L..

    jmp CDAR                                       ; a43c: 4c 89 8d    L..

    jmp CDDR                                       ; a43f: 4c 79 8d    Ly.

    jmp CAAAR                                      ; a442: 4c 91 8d    L..

    jmp CAADR                                      ; a445: 4c 71 8d    Lq.

    jmp CADAR                                      ; a448: 4c 7d 8d    L}.

    jmp CADDR                                      ; a44b: 4c 69 8d    Li.

    jmp CDAAR                                      ; a44e: 4c 85 8d    L..

    jmp CDADR                                      ; a451: 4c 6d 8d    Lm.

    jmp CDDAR                                      ; a454: 4c 75 8d    Lu.

    jmp CDDDR                                      ; a457: 4c 65 8d    Le.

    jmp _AND                                       ; a45a: 4c d8 8d    L..

    jmp OR                                         ; a45d: 4c e9 8d    L..

    jmp ERRORL                                     ; a460: 4c c4 8d    L..

    jmp NUMP                                       ; a463: 4c d9 8e    L..

    jmp ZEROP                                      ; a466: 4c eb 8e    L..

    jmp ONEP                                       ; a469: 4c ef 8e    L..

    jmp MINUSP                                     ; a46c: 4c 0a 8f    L..

    jmp DUMP                                       ; a46f: 4c 77 8f    Lw.

    jmp LOAD                                       ; a472: 4c 5c 8f    L\.

    jmp PLUS                                       ; a475: 4c 29 92    L).

    jmp DIFF                                       ; a478: 4c c1 91    L..

    jmp MINUS                                      ; a47b: 4c d9 91    L..

    jmp SUBRP                                      ; a47e: 4c cd 8e    L..

    jmp TIMES                                      ; a481: 4c 5d 92    L].

    jmp QUOT                                       ; a484: 4c 7a 91    Lz.

    jmp REM                                        ; a487: 4c 7e 91    L~.

    jmp LESSP                                      ; a48a: 4c 27 93    L'.

    jmp SUBA                                       ; a48d: 4c f2 91    L..

    jmp ADDA                                       ; a490: 4c fd 91    L..

    jmp RECLAM                                     ; a493: 4c 74 91    Lt.

    jmp RPLACA                                     ; a496: 4c ef 92    L..

    jmp RPLACD                                     ; a499: 4c f3 92    L..

    jmp CHARS                                      ; a49c: 4c b5 92    L..

    jmp MESSON                                     ; a49f: 4c 52 97    LR.

    jmp GET                                        ; a4a2: 4c d6 93    L..

    jmp PUT                                        ; a4a5: 4c ec 93    L..

    jmp REMPR                                      ; a4a8: 4c 4a 94    LJ.

    jmp GT                                         ; a4ab: 4c 34 93    L4.

    jmp GPLIST                                     ; a4ae: 4c e0 92    L..

    jmp CHARP                                      ; a4b1: 4c c0 8e    L..

    jmp LISTP                                      ; a4b4: 4c d5 8e    L..

    jmp ASSOC                                      ; a4b7: 4c aa 93    L..

    jmp UNTIL                                      ; a4ba: 4c 2f 8d    L/.

    jmp FSUBRP                                     ; a4bd: 4c d1 8e    L..

    jmp ERCN                                       ; a4c0: 4c 95 9f    L..

    jmp ERRSET                                     ; a4c3: 4c c4 9f    L..

    jmp CALL                                       ; a4c6: 4c c9 8f    L..

    jmp PEEK                                       ; a4c9: 4c d7 8f    L..

    jmp POKE                                       ; a4cc: 4c e7 8f    L..

    jmp OBLIST                                     ; a4cf: 4c f9 8f    L..

    jmp APPLY                                      ; a4d2: 4c 36 95    L6.

    jmp MAPCAR                                     ; a4d5: 4c a5 95    L..

    jmp MAP                                        ; a4d8: 4c 95 95    L..

    jmp ASCII                                      ; a4db: 4c 22 96    L".

    jmp ORDINL                                     ; a4de: 4c 2f 96    L/.

    jmp EXPLOD                                     ; a4e1: 4c aa 96    L..

    jmp IMPLOD                                     ; a4e4: 4c fe 96    L..

    jmp GETCHA                                     ; a4e7: 4c 05 96    L..

    jmp STAR                                       ; a4ea: 4c 72 90    Lr.

    jmp MESSOF                                     ; a4ed: 4c 60 97    L`.

    jmp IPLINE                                     ; a4f0: 4c a6 8a    L..

    jmp CLOS                                       ; a4f3: 4c d0 8c    L..

    jmp OPE                                        ; a4f6: 4c 98 90    L..

    jmp WRTTZ                                      ; a4f9: 4c f2 8a    L..

    jmp WRIT                                       ; a4fc: 4c d7 8a    L..

    jmp EOF                                        ; a4ff: 4c a9 8c    L..

    jmp VDU                                        ; a502: 4c a3 8e    L..

    jmp PRINTC                                     ; a505: 4c 0c 8b    L..

    jmp PRINC                                      ; a508: 4c 2a 8b    L*.

    jmp MODE                                       ; a50b: 4c 70 97    Lp.

    jmp USR                                        ; a50e: 4c d2 97    L..

    jmp SOUND                                      ; a511: 4c 5e 98    L^.

    jmp ENV                                        ; a514: 4c 8b 98    L..

    jmp GCTIM                                      ; a517: 4c f4 98    L..

    jmp TIME                                       ; a51a: 4c ee 98    L..

    jmp RESET                                      ; a51d: 4c bf 98    L..

    jmp CLOCK                                      ; a520: 4c 11 99    L..

    jmp PVAL                                       ; a523: 4c 66 99    Lf.

    jmp ADVAL                                      ; a526: 4c 9f 99    L..

    jmp BNOT                                       ; a529: 4c 46 9a    LF.

    jmp BAND                                       ; a52c: 4c 5e 9a    L^.

    jmp BOR                                        ; a52f: 4c 8e 9a    L..

    jmp INKEY                                      ; a532: 4c c2 99    L..

    jmp GENSYM                                     ; a535: 4c 0a 9a    L..

.unused2
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a538: 00 00 00... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a540: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a548: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a550: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a558: ff ff ff... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a560: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a568: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a570: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a578: 00 00 00... ...
    equb   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a580: 00 ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a588: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a590: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a598: ff ff ff... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a5a0: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a5a8: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a5b0: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a5b8: 00 00 00... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a5c0: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a5c8: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a5d0: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; a5d8: ff ff ff... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a5e0: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a5e8: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a5f0: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; a5f8: 00 00 00... ...

    ; Calculated expressions put at the end of the assembly so they resolve on the
    ; first pass which makes the asserts at the end of the file work.
HIWARM  = WRMCHK + HILISP - LISVAL
EVOFF   = TEXT   - TEXT
VALOFF  = VALTXT - TEXT
NILOFF  = NILTXT - TEXT
DOTOFF  = DOTTXT - TEXT
INSOFF  = INSTXT - TEXT
GCOFF   = GCTXT  - TEXT
COLOFF  = COLTXT - TEXT
FROFF   = FRTXT  - TEXT
SUBOFF  = SUBTXT - TEXT
ERROFF  = ERRTXT - TEXT
ARGOFF  = ARGTXT - TEXT
WRMOFF  = WRMTXT - TEXT
HLPOFF  = HLPTXT - TEXT

    ; ******************************
    ; The first LISP image file
    ; ******************************
.IMAGE
    equb &f9, &18                                  ; a600: f9 18       ..

.ZA
    equb CHARF, &0f                                ; a602: 00 0f       ..
    equw &0a02                                     ; a604: 02 0a       ..
    equw &0a02                                     ; a606: 02 0a       ..
    equs "UNDEFINED"                               ; a608: 55 4e 44... UND

.CTRUE
    equb CHARF, 7                                  ; a611: 00 07       ..
    equw &0a11                                     ; a613: 11 0a       ..
    equw     0                                     ; a615: 00 00       ..
    equs "T"                                       ; a617: 54          T

.LAMBDA
    equb CHARF, &0c                                ; a618: 00 0c       ..
    equw &0a18                                     ; a61a: 18 0a       ..
    equw     0                                     ; a61c: 00 00       ..
    equs "LAMBDA"                                  ; a61e: 4c 41 4d... LAM

.NIL
    equb CHARF, 9                                  ; a624: 00 09       ..
    equw 0                                         ; a626: 00 00       ..
    equw 0                                         ; a628: 00 00       ..
    equs "NIL"                                     ; a62a: 4e 49 4c    NIL

.QUOTE
    equb CHARF, &0b                                ; a62d: 00 0b       ..
    equw &0b04                                     ; a62f: 04 0b       ..
    equw     0                                     ; a631: 00 00       ..
    equs "QUOTE"                                   ; a633: 51 55 4f... QUO

.ZB
    equb CHARF, &0a                                ; a638: 00 0a       ..
    equw &0ab6                                     ; a63a: b6 0a       ..
    equw     0                                     ; a63c: 00 00       ..
    equs "NULL"                                    ; a63e: 4e 55 4c... NUL

.ZC
    equb CHARF, &0b                                ; a642: 00 0b       ..
    equw &0abc                                     ; a644: bc 0a       ..
    equw     0                                     ; a646: 00 00       ..
    equs "PRINT"                                   ; a648: 50 52 49... PRI

.ZD
    equb CHARF, &0a                                ; a64d: 00 0a       ..
    equw &0ac2                                     ; a64f: c2 0a       ..
    equw     0                                     ; a651: 00 00       ..
    equs "CONS"                                    ; a653: 43 4f 4e... CON

.ZE
    equb CHARF, &0a                                ; a657: 00 0a       ..
    equw &0ac8                                     ; a659: c8 0a       ..
    equw     0                                     ; a65b: 00 00       ..
    equs "EVAL"                                    ; a65d: 45 56 41... EVA

.ZF
    equb CHARF, 9                                  ; a661: 00 09       ..
    equw &0ace                                     ; a663: ce 0a       ..
    equw     0                                     ; a665: 00 00       ..
    equs "CAR"                                     ; a667: 43 41 52    CAR

.ZG
    equb CHARF, 8                                  ; a66a: 00 08       ..
    equw &0ad4                                     ; a66c: d4 0a       ..
    equw     0                                     ; a66e: 00 00       ..
    equs "EQ"                                      ; a670: 45 51       EQ

.ZH
    equb CHARF, &0a                                ; a672: 00 0a       ..
    equw &0ada                                     ; a674: da 0a       ..
    equw     0                                     ; a676: 00 00       ..
    equs "SETQ"                                    ; a678: 53 45 54... SET

.ZI
    equb CHARF, 9                                  ; a67c: 00 09       ..
    equw &0ae0                                     ; a67e: e0 0a       ..
    equw     0                                     ; a680: 00 00       ..
    equs "SET"                                     ; a682: 53 45 54    SET

.ZJ
    equb CHARF, &0a                                ; a685: 00 0a       ..
    equw &0ae6                                     ; a687: e6 0a       ..
    equw     0                                     ; a689: 00 00       ..
    equs "ATOM"                                    ; a68b: 41 54 4f... ATO

.ZK
    equb CHARF, &0a                                ; a68f: 00 0a       ..
    equw &0aec                                     ; a691: ec 0a       ..
    equw     0                                     ; a693: 00 00       ..
    equs "READ"                                    ; a695: 52 45 41... REA

.ZL
    equb CHARF, 9                                  ; a699: 00 09       ..
    equw &0af2                                     ; a69b: f2 0a       ..
    equw     0                                     ; a69d: 00 00       ..
    equs "CDR"                                     ; a69f: 43 44 52    CDR

.ZM
    equb CHARF, &0a                                ; a6a2: 00 0a       ..
    equw &0af8                                     ; a6a4: f8 0a       ..
    equw     0                                     ; a6a6: 00 00       ..
    equs "PRIN"                                    ; a6a8: 50 52 49... PRI

.ZN
    equb CHARF, &0a                                ; a6ac: 00 0a       ..
    equw &0afe                                     ; a6ae: fe 0a       ..
    equw     0                                     ; a6b0: 00 00       ..
    equs "COND"                                    ; a6b2: 43 4f 4e... CON

.ZO
    equb SUBRF, 1                                  ; a6b6: 08 01       ..
    equw     0                                     ; a6b8: 00 00       ..
    equw &0800                                     ; a6ba: 00 08       ..

.ZP
    equb SUBRF, 0                                  ; a6bc: 08 00       ..
    equw     0                                     ; a6be: 00 00       ..
    equw &0803                                     ; a6c0: 03 08       ..

.ZQ
    equb SUBRF, 2                                  ; a6c2: 08 02       ..
    equw     0                                     ; a6c4: 00 00       ..
    equw &0806                                     ; a6c6: 06 08       ..

.ZR
    equb SUBRF, 1                                  ; a6c8: 08 01       ..
    equw     0                                     ; a6ca: 00 00       ..
    equw &0809                                     ; a6cc: 09 08       ..

.ZS
    equb SUBRF, 1                                  ; a6ce: 08 01       ..
    equw     0                                     ; a6d0: 00 00       ..
    equw &080c                                     ; a6d2: 0c 08       ..

.ZT
    equb SUBRF, 2                                  ; a6d4: 08 02       ..
    equw     0                                     ; a6d6: 00 00       ..
    equw &080f                                     ; a6d8: 0f 08       ..

.ZU
    equb FSUBRF, 0                                 ; a6da: 0c 00       ..
    equw     0                                     ; a6dc: 00 00       ..
    equw &0812                                     ; a6de: 12 08       ..

.ZV
    equb FSUBRF, 0                                 ; a6e0: 0c 00       ..
    equw     0                                     ; a6e2: 00 00       ..
    equw &0815                                     ; a6e4: 15 08       ..

.ZW
    equb SUBRF, 1                                  ; a6e6: 08 01       ..
    equw     0                                     ; a6e8: 00 00       ..
    equw &0818                                     ; a6ea: 18 08       ..

.ZX
    equb SUBRF, 0                                  ; a6ec: 08 00       ..
    equw     0                                     ; a6ee: 00 00       ..
    equw &081b                                     ; a6f0: 1b 08       ..

.ZY
    equb SUBRF, 1                                  ; a6f2: 08 01       ..
    equw     0                                     ; a6f4: 00 00       ..
    equw &081e                                     ; a6f6: 1e 08       ..

.ZZ
    equb SUBRF, 0                                  ; a6f8: 08 00       ..
    equw     0                                     ; a6fa: 00 00       ..
    equw &0821                                     ; a6fc: 21 08       !.

.ZAA
    equb FSUBRF, 0                                 ; a6fe: 0c 00       ..
    equw     0                                     ; a700: 00 00       ..
    equw &0824                                     ; a702: 24 08       $.

.ZAB
    equb FSUBRF, 0                                 ; a704: 0c 00       ..
    equw     0                                     ; a706: 00 00       ..
    equw &0827                                     ; a708: 27 08       '.

.ZBA
    equb CHARF, &0b                                ; a70a: 00 0b       ..
    equw &0c22                                     ; a70c: 22 0c       ".
    equw     0                                     ; a70e: 00 00       ..
    equs "PROGN"                                   ; a710: 50 52 4f... PRO

.ZBB
    equb CHARF, &0a                                ; a715: 00 0a       ..
    equw &0c28                                     ; a717: 28 0c       (.
    equw     0                                     ; a719: 00 00       ..
    equs "LOOP"                                    ; a71b: 4c 4f 4f... LOO

.ZBC
    equb CHARF, &0b                                ; a71f: 00 0b       ..
    equw &0c2e                                     ; a721: 2e 0c       ..
    equw     0                                     ; a723: 00 00       ..
    equs "WHILE"                                   ; a725: 57 48 49... WHI

.ZBF
    equb CHARF, &0a                                ; a72a: 00 0a       ..
    equw &0c34                                     ; a72c: 34 0c       4.
    equw     0                                     ; a72e: 00 00       ..
    equs "LIST"                                    ; a730: 4c 49 53... LIS

.ZBH
    equb CHARF, &0a                                ; a734: 00 0a       ..
    equw &0c3a                                     ; a736: 3a 0c       :.
    equw     0                                     ; a738: 00 00       ..
    equs "CAAR"                                    ; a73a: 43 41 41... CAA

.ZBI
    equb CHARF, &0a                                ; a73e: 00 0a       ..
    equw &0c40                                     ; a740: 40 0c       @.
    equw     0                                     ; a742: 00 00       ..
    equs "CADR"                                    ; a744: 43 41 44... CAD

.ZBJ
    equb CHARF, &0a                                ; a748: 00 0a       ..
    equw &0c46                                     ; a74a: 46 0c       F.
    equw     0                                     ; a74c: 00 00       ..
    equs "CDAR"                                    ; a74e: 43 44 41... CDA

.ZBK
    equb CHARF, &0a                                ; a752: 00 0a       ..
    equw &0c4c                                     ; a754: 4c 0c       L.
    equw     0                                     ; a756: 00 00       ..
    equs "CDDR"                                    ; a758: 43 44 44... CDD

.ZBL
    equb CHARF, &0b                                ; a75c: 00 0b       ..
    equw &0c52                                     ; a75e: 52 0c       R.
    equw     0                                     ; a760: 00 00       ..
    equs "CAAAR"                                   ; a762: 43 41 41... CAA

.ZBM
    equb CHARF, &0b                                ; a767: 00 0b       ..
    equw &0c58                                     ; a769: 58 0c       X.
    equw     0                                     ; a76b: 00 00       ..
    equs "CAADR"                                   ; a76d: 43 41 41... CAA

.ZBN
    equb CHARF, &0b                                ; a772: 00 0b       ..
    equw &0c5e                                     ; a774: 5e 0c       ^.
    equw     0                                     ; a776: 00 00       ..
    equs "CADAR"                                   ; a778: 43 41 44... CAD

.ZBO
    equb CHARF, &0b                                ; a77d: 00 0b       ..
    equw &0c64                                     ; a77f: 64 0c       d.
    equw     0                                     ; a781: 00 00       ..
    equs "CADDR"                                   ; a783: 43 41 44... CAD

.ZPB
    equb CHARF, &0b                                ; a788: 00 0b       ..
    equw &0c6a                                     ; a78a: 6a 0c       j.
    equw     0                                     ; a78c: 00 00       ..
    equs "CDAAR"                                   ; a78e: 43 44 41... CDA

.ZBQ
    equb CHARF, &0b                                ; a793: 00 0b       ..
    equw &0c70                                     ; a795: 70 0c       p.
    equw     0                                     ; a797: 00 00       ..
    equs "CDADR"                                   ; a799: 43 44 41... CDA

.ZBR
    equb CHARF, &0b                                ; a79e: 00 0b       ..
    equw &0c76                                     ; a7a0: 76 0c       v.
    equw     0                                     ; a7a2: 00 00       ..
    equs "CDDAR"                                   ; a7a4: 43 44 44... CDD

.ZBS
    equb CHARF, &0b                                ; a7a9: 00 0b       ..
    equw &0c7c                                     ; a7ab: 7c 0c       |.
    equw     0                                     ; a7ad: 00 00       ..
    equs "CDDDR"                                   ; a7af: 43 44 44... CDD

.ZBT
    equb CHARF, 9                                  ; a7b4: 00 09       ..
    equw &0c82                                     ; a7b6: 82 0c       ..
    equw     0                                     ; a7b8: 00 00       ..
    equs "AND"                                     ; a7ba: 41 4e 44    AND

.ZBU
    equb CHARF, 8                                  ; a7bd: 00 08       ..
    equw &0c88                                     ; a7bf: 88 0c       ..
    equw     0                                     ; a7c1: 00 00       ..
    equs "OR"                                      ; a7c3: 4f 52       OR

.ZBV
    equb CHARF, &0b                                ; a7c5: 00 0b       ..
    equw &0c8e                                     ; a7c7: 8e 0c       ..
    equw     0                                     ; a7c9: 00 00       ..
    equs "ERROR"                                   ; a7cb: 45 52 52... ERR

.ZBW
    equb CHARF, 9                                  ; a7d0: 00 09       ..
    equw &0ab6                                     ; a7d2: b6 0a       ..
    equw     0                                     ; a7d4: 00 00       ..
    equs "NOT"                                     ; a7d6: 4e 4f 54    NOT

.ZBX
    equb CHARF, &0d                                ; a7d9: 00 0d       ..
    equw &0c94                                     ; a7db: 94 0c       ..
    equw     0                                     ; a7dd: 00 00       ..
    equs "NUMBERP"                                 ; a7df: 4e 55 4d... NUM

.ZBY
    equb CHARF, &0b                                ; a7e6: 00 0b       ..
    equw &0c9a                                     ; a7e8: 9a 0c       ..
    equw     0                                     ; a7ea: 00 00       ..
    equs "ZEROP"                                   ; a7ec: 5a 45 52... ZER

.ZBZ
    equb CHARF, &0a                                ; a7f1: 00 0a       ..
    equw &0ca0                                     ; a7f3: a0 0c       ..
    equw     0                                     ; a7f5: 00 00       ..
    equs "ONEP"                                    ; a7f7: 4f 4e 45... ONE

.ZCA
    equb CHARF, &0c                                ; a7fb: 00 0c       ..
    equw &0ca6                                     ; a7fd: a6 0c       ..
    equw     0                                     ; a7ff: 00 00       ..
    equs "MINUSP"                                  ; a801: 4d 49 4e... MIN

.ZCB
    equb CHARF, 7                                  ; a807: 00 07       ..
    equw 0                                         ; a809: 00 00       ..
    equw 0                                         ; a80b: 00 00       ..
    equs "F"                                       ; a80d: 46          F

.ZCC
    equb CHARF, &0a                                ; a80e: 00 0a       ..
    equw &0cac                                     ; a810: ac 0c       ..
    equw     0                                     ; a812: 00 00       ..
    equs "SAVE"                                    ; a814: 53 41 56... SAV

.ZCD
    equb CHARF, &0a                                ; a818: 00 0a       ..
    equw &0cb2                                     ; a81a: b2 0c       ..
    equw     0                                     ; a81c: 00 00       ..
    equs "LOAD"                                    ; a81e: 4c 4f 41... LOA

.ZEA
    equb FSUBRF, 0                                 ; a822: 0c 00       ..
    equw     0                                     ; a824: 00 00       ..
    equw &082a                                     ; a826: 2a 08       *.

.ZEB
    equb FSUBRF, 0                                 ; a828: 0c 00       ..
    equw     0                                     ; a82a: 00 00       ..
    equw &082d                                     ; a82c: 2d 08       -.

.ZEC
    equb FSUBRF, 0                                 ; a82e: 0c 00       ..
    equw     0                                     ; a830: 00 00       ..
    equw &0830                                     ; a832: 30 08       0.

.ZEF
    equb SUBRF, 0                                  ; a834: 08 00       ..
    equw     0                                     ; a836: 00 00       ..
    equw &0833                                     ; a838: 33 08       3.

.ZEH
    equb SUBRF, 1                                  ; a83a: 08 01       ..
    equw     0                                     ; a83c: 00 00       ..
    equw &0836                                     ; a83e: 36 08       6.

.ZEI
    equb SUBRF, 1                                  ; a840: 08 01       ..
    equw     0                                     ; a842: 00 00       ..
    equw &0839                                     ; a844: 39 08       9.

.ZEJ
    equb SUBRF, 1                                  ; a846: 08 01       ..
    equw     0                                     ; a848: 00 00       ..
    equw &083c                                     ; a84a: 3c 08       <.

.ZEK
    equb SUBRF, 1                                  ; a84c: 08 01       ..
    equw     0                                     ; a84e: 00 00       ..
    equw &083f                                     ; a850: 3f 08       ?.

.ZEL
    equb SUBRF, 1                                  ; a852: 08 01       ..
    equw     0                                     ; a854: 00 00       ..
    equw &0842                                     ; a856: 42 08       B.

.ZEM
    equb SUBRF, 1                                  ; a858: 08 01       ..
    equw     0                                     ; a85a: 00 00       ..
    equw &0845                                     ; a85c: 45 08       E.

.ZEN
    equb SUBRF, 1                                  ; a85e: 08 01       ..
    equw     0                                     ; a860: 00 00       ..
    equw &0848                                     ; a862: 48 08       H.

.ZEO
    equb SUBRF, 1                                  ; a864: 08 01       ..
    equw     0                                     ; a866: 00 00       ..
    equw &084b                                     ; a868: 4b 08       K.

.ZEP
    equb SUBRF, 1                                  ; a86a: 08 01       ..
    equw     0                                     ; a86c: 00 00       ..
    equw &084e                                     ; a86e: 4e 08       N.

.ZEQ
    equb SUBRF, 1                                  ; a870: 08 01       ..
    equw     0                                     ; a872: 00 00       ..
    equw &0851                                     ; a874: 51 08       Q.

.ZER
    equb SUBRF, 1                                  ; a876: 08 01       ..
    equw     0                                     ; a878: 00 00       ..
    equw &0854                                     ; a87a: 54 08       T.

.ZES
    equb SUBRF, 1                                  ; a87c: 08 01       ..
    equw     0                                     ; a87e: 00 00       ..
    equw &0857                                     ; a880: 57 08       W.

.ZET
    equb FSUBRF, 0                                 ; a882: 0c 00       ..
    equw     0                                     ; a884: 00 00       ..
    equw &085a                                     ; a886: 5a 08       Z.

.ZEU
    equb FSUBRF, 0                                 ; a888: 0c 00       ..
    equw     0                                     ; a88a: 00 00       ..
    equw &085d                                     ; a88c: 5d 08       ].

.ZEV
    equb SUBRF, 0                                  ; a88e: 08 00       ..
    equw     0                                     ; a890: 00 00       ..
    equw &0860                                     ; a892: 60 08       `.

.ZEX
    equb SUBRF, 1                                  ; a894: 08 01       ..
    equw     0                                     ; a896: 00 00       ..
    equw &0863                                     ; a898: 63 08       c.

.ZEY
    equb SUBRF, 1                                  ; a89a: 08 01       ..
    equw     0                                     ; a89c: 00 00       ..
    equw &0866                                     ; a89e: 66 08       f.

.ZEZ
    equb SUBRF, 1                                  ; a8a0: 08 01       ..
    equw     0                                     ; a8a2: 00 00       ..
    equw &0869                                     ; a8a4: 69 08       i.

.ZFA
    equb SUBRF, 1                                  ; a8a6: 08 01       ..
    equw     0                                     ; a8a8: 00 00       ..
    equw &086c                                     ; a8aa: 6c 08       l.

.ZFC
    equb SUBRF, 1                                  ; a8ac: 08 01       ..
    equw     0                                     ; a8ae: 00 00       ..
    equw &086f                                     ; a8b0: 6f 08       o.

.ZFD
    equb SUBRF, 1                                  ; a8b2: 08 01       ..
    equw     0                                     ; a8b4: 00 00       ..
    equw &0872                                     ; a8b6: 72 08       r.

.ZFE
    equb SUBRF, 0                                  ; a8b8: 08 00       ..
    equw     0                                     ; a8ba: 00 00       ..
    equw &0875                                     ; a8bc: 75 08       u.

.ZFF
    equb SUBRF, 2                                  ; a8be: 08 02       ..
    equw     0                                     ; a8c0: 00 00       ..
    equw &0878                                     ; a8c2: 78 08       x.

.ZFG
    equb SUBRF, 1                                  ; a8c4: 08 01       ..
    equw     0                                     ; a8c6: 00 00       ..
    equw &087b                                     ; a8c8: 7b 08       {.

.ZFH
    equb SUBRF, 1                                  ; a8ca: 08 01       ..
    equw     0                                     ; a8cc: 00 00       ..
    equw &087e                                     ; a8ce: 7e 08       ~.

.ZFI
    equb SUBRF, 0                                  ; a8d0: 08 00       ..
    equw     0                                     ; a8d2: 00 00       ..
    equw &0881                                     ; a8d4: 81 08       ..

.ZFJ
    equb SUBRF, 2                                  ; a8d6: 08 02       ..
    equw     0                                     ; a8d8: 00 00       ..
    equw &0884                                     ; a8da: 84 08       ..

.ZFK
    equb SUBRF, 2                                  ; a8dc: 08 02       ..
    equw     0                                     ; a8de: 00 00       ..
    equw &0887                                     ; a8e0: 87 08       ..

.ZFL
    equb SUBRF, 2                                  ; a8e2: 08 02       ..
    equw     0                                     ; a8e4: 00 00       ..
    equw &088a                                     ; a8e6: 8a 08       ..

.ZFM
    equb SUBRF, 1                                  ; a8e8: 08 01       ..
    equw     0                                     ; a8ea: 00 00       ..
    equw &088d                                     ; a8ec: 8d 08       ..

.ZFN
    equb SUBRF, 1                                  ; a8ee: 08 01       ..
    equw     0                                     ; a8f0: 00 00       ..
    equw &0890                                     ; a8f2: 90 08       ..

.ZFQ
    equb SUBRF, 0                                  ; a8f4: 08 00       ..
    equw     0                                     ; a8f6: 00 00       ..
    equw &0893                                     ; a8f8: 93 08       ..

.ZFR
    equb SUBRF, 2                                  ; a8fa: 08 02       ..
    equw     0                                     ; a8fc: 00 00       ..
    equw &0896                                     ; a8fe: 96 08       ..

.ZFS
    equb SUBRF, 2                                  ; a900: 08 02       ..
    equw     0                                     ; a902: 00 00       ..
    equw &0899                                     ; a904: 99 08       ..

.ZFT
    equb SUBRF, 1                                  ; a906: 08 01       ..
    equw     0                                     ; a908: 00 00       ..
    equw &089c                                     ; a90a: 9c 08       ..

.ZFU
    equb SUBRF, 0                                  ; a90c: 08 00       ..
    equw     0                                     ; a90e: 00 00       ..
    equw &089f                                     ; a910: 9f 08       ..

.ZFV
    equb SUBRF, 2                                  ; a912: 08 02       ..
    equw     0                                     ; a914: 00 00       ..
    equw &08a2                                     ; a916: a2 08       ..

.ZFW
    equb SUBRF, 3                                  ; a918: 08 03       ..
    equw     0                                     ; a91a: 00 00       ..
    equw &08a5                                     ; a91c: a5 08       ..

.ZFX
    equb SUBRF, 2                                  ; a91e: 08 02       ..
    equw     0                                     ; a920: 00 00       ..
    equw &08a8                                     ; a922: a8 08       ..

.ZFY
    equb SUBRF, 2                                  ; a924: 08 02       ..
    equw     0                                     ; a926: 00 00       ..
    equw &08ab                                     ; a928: ab 08       ..

.ZFZ
    equb SUBRF, 1                                  ; a92a: 08 01       ..
    equw     0                                     ; a92c: 00 00       ..
    equw &08ae                                     ; a92e: ae 08       ..

.ZGA
    equb SUBRF, 1                                  ; a930: 08 01       ..
    equw     0                                     ; a932: 00 00       ..
    equw &08b1                                     ; a934: b1 08       ..

.ZGB
    equb SUBRF, 1                                  ; a936: 08 01       ..
    equw     0                                     ; a938: 00 00       ..
    equw &08b4                                     ; a93a: b4 08       ..

.ZGD
    equb SUBRF, 2                                  ; a93c: 08 02       ..
    equw     0                                     ; a93e: 00 00       ..
    equw &08b7                                     ; a940: b7 08       ..

.ZGE
    equb FSUBRF, 0                                 ; a942: 0c 00       ..
    equw     0                                     ; a944: 00 00       ..
    equw &08ba                                     ; a946: ba 08       ..

.ZGF
    equb SUBRF, 1                                  ; a948: 08 01       ..
    equw     0                                     ; a94a: 00 00       ..
    equw &08bd                                     ; a94c: bd 08       ..

.ZGG
    equb CHARF, &0a                                ; a94e: 00 0a       ..
    equw &0cb8                                     ; a950: b8 0c       ..
    equw     0                                     ; a952: 00 00       ..
    equs "PLUS"                                    ; a954: 50 4c 55... PLU

    ; ******************************
    ; The second LISP image file
    ; ******************************

    equb CHARF, &10                                ; a958: 00 10       ..
    equw &0cbe                                     ; a95a: be 0c       ..
    equw     0                                     ; a95c: 00 00       ..
    equs "DIFFERENCE"                              ; a95e: 44 49 46... DIF

    equb CHARF, &0b                                ; a968: 00 0b       ..
    equw &0cc4                                     ; a96a: c4 0c       ..
    equw     0                                     ; a96c: 00 00       ..
    equs "MINUS"                                   ; a96e: 4d 49 4e... MIN

    equb CHARF, &0b                                ; a973: 00 0b       ..
    equw &0cca                                     ; a975: ca 0c       ..
    equw     0                                     ; a977: 00 00       ..
    equs "SUBRP"                                   ; a979: 53 55 42... SUB

    equb CHARF, &0b                                ; a97e: 00 0b       ..
    equw &0cd0                                     ; a980: d0 0c       ..
    equw     0                                     ; a982: 00 00       ..
    equs "TIMES"                                   ; a984: 54 49 4d... TIM

    equb CHARF, &0e                                ; a989: 00 0e       ..
    equw &0cd6                                     ; a98b: d6 0c       ..
    equw     0                                     ; a98d: 00 00       ..
    equs "QUOTIENT"                                ; a98f: 51 55 4f... QUO

    equb CHARF, &0f                                ; a997: 00 0f       ..
    equw &0cdc                                     ; a999: dc 0c       ..
    equw     0                                     ; a99b: 00 00       ..
    equs "REMAINDER"                               ; a99d: 52 45 4d... REM

    equb CHARF, &0b                                ; a9a6: 00 0b       ..
    equw &0ce2                                     ; a9a8: e2 0c       ..
    equw     0                                     ; a9aa: 00 00       ..
    equs "LESSP"                                   ; a9ac: 4c 45 53... LES

    equb CHARF, &0a                                ; a9b1: 00 0a       ..
    equw &0ce8                                     ; a9b3: e8 0c       ..
    equw     0                                     ; a9b5: 00 00       ..
    equs "SUB1"                                    ; a9b7: 53 55 42... SUB

    equb CHARF, &0a                                ; a9bb: 00 0a       ..
    equw &0cee                                     ; a9bd: ee 0c       ..
    equw     0                                     ; a9bf: 00 00       ..
    equs "ADD1"                                    ; a9c1: 41 44 44... ADD

    equb CHARF, &0d                                ; a9c5: 00 0d       ..
    equw &0cf4                                     ; a9c7: f4 0c       ..
    equw     0                                     ; a9c9: 00 00       ..
    equs "RECLAIM"                                 ; a9cb: 52 45 43... REC

    equb CHARF, &0c                                ; a9d2: 00 0c       ..
    equw &0cfa                                     ; a9d4: fa 0c       ..
    equw     0                                     ; a9d6: 00 00       ..
    equs "RPLACA"                                  ; a9d8: 52 50 4c... RPL

    equb CHARF, &0c                                ; a9de: 00 0c       ..
    equw &0d00                                     ; a9e0: 00 0d       ..
    equw     0                                     ; a9e2: 00 00       ..
    equs "RPLACD"                                  ; a9e4: 52 50 4c... RPL

    equb CHARF, &0b                                ; a9ea: 00 0b       ..
    equw &0d06                                     ; a9ec: 06 0d       ..
    equw     0                                     ; a9ee: 00 00       ..
    equs "CHARS"                                   ; a9f0: 43 48 41... CHA

    equb CHARF, &0c                                ; a9f5: 00 0c       ..
    equw &0e5a                                     ; a9f7: 5a 0e       Z.
    equw     0                                     ; a9f9: 00 00       ..
    equs "DOLLAR"                                  ; a9fb: 44 4f 4c... DOL

    equb CHARF, 8                                  ; aa01: 00 08       ..
    equw &0e61                                     ; aa03: 61 0e       a.
    equw     0                                     ; aa05: 00 00       ..
    equs "CR"                                      ; aa07: 43 52       CR

    equb CHARF, &0c                                ; aa09: 00 0c       ..
    equw &0d0c                                     ; aa0b: 0c 0d       ..
    equw     0                                     ; aa0d: 00 00       ..
    equs "MESSON"                                  ; aa0f: 4d 45 53... MES

    equb CHARF, &0d                                ; aa15: 00 0d       ..
    equw &1054                                     ; aa17: 54 10       T.
    equw     0                                     ; aa19: 00 00       ..
    equs "MESSOFF"                                 ; aa1b: 4d 45 53... MES

    equb CHARF, 9                                  ; aa22: 00 09       ..
    equw &0d12                                     ; aa24: 12 0d       ..
    equw     0                                     ; aa26: 00 00       ..
    equs "GET"                                     ; aa28: 47 45 54    GET

    equb CHARF, 9                                  ; aa2b: 00 09       ..
    equw &0d18                                     ; aa2d: 18 0d       ..
    equw     0                                     ; aa2f: 00 00       ..
    equs "PUT"                                     ; aa31: 50 55 54    PUT

    equb CHARF, &0d                                ; aa34: 00 0d       ..
    equw &0d1e                                     ; aa36: 1e 0d       ..
    equw     0                                     ; aa38: 00 00       ..
    equs "REMPROP"                                 ; aa3a: 52 45 4d... REM

    equb CHARF, &0e                                ; aa41: 00 0e       ..
    equw &0d24                                     ; aa43: 24 0d       $.
    equw     0                                     ; aa45: 00 00       ..
    equs "GREATERP"                                ; aa47: 47 52 45... GRE

    equb CHARF, &0b                                ; aa4f: 00 0b       ..
    equw &0d2a                                     ; aa51: 2a 0d       *.
    equw     0                                     ; aa53: 00 00       ..
    equs "PLIST"                                   ; aa55: 50 4c 49... PLI

    equb CHARF, 7                                  ; aa5a: 00 07       ..
    equw &0e5a                                     ; aa5c: 5a 0e       Z.
    equw     0                                     ; aa5e: 00 00       ..
    equs "$"                                       ; aa60: 24          $

    equb CHARF, 7                                  ; aa61: 00 07       ..
    equw &0e61                                     ; aa63: 61 0e       a.
    equw     0                                     ; aa65: 00 00       ..
    equb &0d                                       ; aa67: 0d          .

    equb CHARF, &0b                                ; aa68: 00 0b       ..
    equw &0d30                                     ; aa6a: 30 0d       0.
    equw     0                                     ; aa6c: 00 00       ..
    equs "CHARP"                                   ; aa6e: 43 48 41... CHA

    equb CHARF, &0b                                ; aa73: 00 0b       ..
    equw &0d36                                     ; aa75: 36 0d       6.
    equw     0                                     ; aa77: 00 00       ..
    equs "LISTP"                                   ; aa79: 4c 49 53... LIS

    equb CHARF, &0b                                ; aa7e: 00 0b       ..
    equw &0d3c                                     ; aa80: 3c 0d       <.
    equw     0                                     ; aa82: 00 00       ..
    equs "ASSOC"                                   ; aa84: 41 53 53... ASS

    equb CHARF, 7                                  ; aa89: 00 07       ..
    equw &104e                                     ; aa8b: 4e 10       N.
    equw     0                                     ; aa8d: 00 00       ..
    equs "*"                                       ; aa8f: 2a          *

    equb CHARF, &0a                                ; aa90: 00 0a       ..
    equw &0ebb                                     ; aa92: bb 0e       ..
    equw     0                                     ; aa94: 00 00       ..
    equs "LPAR"                                    ; aa96: 4c 50 41... LPA

    equb CHARF, &0b                                ; aa9a: 00 0b       ..
    equw &0ec2                                     ; aa9c: c2 0e       ..
    equw     0                                     ; aa9e: 00 00       ..
    equs "BLANK"                                   ; aaa0: 42 4c 41... BLA

    equb CHARF, &0a                                ; aaa5: 00 0a       ..
    equw &0ec9                                     ; aaa7: c9 0e       ..
    equw     0                                     ; aaa9: 00 00       ..
    equs "RPAR"                                    ; aaab: 52 50 41... RPA

    equb CHARF, &0c                                ; aaaf: 00 0c       ..
    equw &0ed0                                     ; aab1: d0 0e       ..
    equw     0                                     ; aab3: 00 00       ..
    equs "PERIOD"                                  ; aab5: 50 45 52... PER

    equb CHARF, 7                                  ; aabb: 00 07       ..
    equw &0ebb                                     ; aabd: bb 0e       ..
    equw     0                                     ; aabf: 00 00       ..
    equs "("                                       ; aac1: 28          (

    equb CHARF, 7                                  ; aac2: 00 07       ..
    equw &0ec2                                     ; aac4: c2 0e       ..
    equw     0                                     ; aac6: 00 00       ..
    equs " "                                       ; aac8: 20

    equb CHARF, 7                                  ; aac9: 00 07       ..
    equw &0ec9                                     ; aacb: c9 0e       ..
    equw     0                                     ; aacd: 00 00       ..
    equs ")"                                       ; aacf: 29          )

    equb CHARF, 7                                  ; aad0: 00 07       ..
    equw &0ed0                                     ; aad2: d0 0e       ..
    equw     0                                     ; aad4: 00 00       ..
    equs "."                                       ; aad6: 2e          .

    equb CHARF, &0b                                ; aad7: 00 0b       ..
    equw &0d42                                     ; aad9: 42 0d       B.
    equw     0                                     ; aadb: 00 00       ..
    equs "UNTIL"                                   ; aadd: 55 4e 54... UNT

    equb CHARF, &0c                                ; aae2: 00 0c       ..
    equw &0d48                                     ; aae4: 48 0d       H.
    equw     0                                     ; aae6: 00 00       ..
    equs "FSUBRP"                                  ; aae8: 46 53 55... FSU

    equb CHARF, &10                                ; aaee: 00 10       ..
    equw &0ffa                                     ; aaf0: fa 0f       ..
    equw     0                                     ; aaf2: 00 00       ..
    equs "ERRORCOUNT"                              ; aaf4: 45 52 52... ERR

    equb CHARF, &0e                                ; aafe: 00 0e       ..
    equw &1000                                     ; ab00: 00 10       ..
    equw     0                                     ; ab02: 00 00       ..
    equs "ERRORSET"                                ; ab04: 45 52 52... ERR

    equb CHARF, &0a                                ; ab0c: 00 0a       ..
    equw &1006                                     ; ab0e: 06 10       ..
    equw     0                                     ; ab10: 00 00       ..
    equs "CALL"                                    ; ab12: 43 41 4c... CAL

    equb CHARF, &0a                                ; ab16: 00 0a       ..
    equw &100c                                     ; ab18: 0c 10       ..
    equw     0                                     ; ab1a: 00 00       ..
    equs "PEEK"                                    ; ab1c: 50 45 45... PEE

    equb CHARF, &0a                                ; ab20: 00 0a       ..
    equw &1012                                     ; ab22: 12 10       ..
    equw     0                                     ; ab24: 00 00       ..
    equs "POKE"                                    ; ab26: 50 4f 4b... POK

    equb CHARF, &0c                                ; ab2a: 00 0c       ..
    equw &1018                                     ; ab2c: 18 10       ..
    equw     0                                     ; ab2e: 00 00       ..
    equs "OBLIST"                                  ; ab30: 4f 42 4c... OBL

    equb CHARF, &0b                                ; ab36: 00 0b       ..
    equw &101e                                     ; ab38: 1e 10       ..
    equw     0                                     ; ab3a: 00 00       ..
    equs "APPLY"                                   ; ab3c: 41 50 50... APP

    equb CHARF, &0a                                ; ab41: 00 0a       ..
    equw &1024                                     ; ab43: 24 10       $.
    equw     0                                     ; ab45: 00 00       ..
    equs "MAPC"                                    ; ab47: 4d 41 50... MAP

    equb CHARF, 9                                  ; ab4b: 00 09       ..
    equw &102a                                     ; ab4d: 2a 10       *.
    equw     0                                     ; ab4f: 00 00       ..
    equs "MAP"                                     ; ab51: 4d 41 50    MAP

    equb CHARF, &0f                                ; ab54: 00 0f       ..
    equw &1030                                     ; ab56: 30 10       0.
    equw     0                                     ; ab58: 00 00       ..
    equs "CHARACTER"                               ; ab5a: 43 48 41... CHA

    equb CHARF, &0d                                ; ab63: 00 0d       ..
    equw &1036                                     ; ab65: 36 10       6.
    equw     0                                     ; ab67: 00 00       ..
    equs "ORDINAL"                                 ; ab69: 4f 52 44... ORD

    equb CHARF, &0d                                ; ab70: 00 0d       ..
    equw &103c                                     ; ab72: 3c 10       <.
    equw     0                                     ; ab74: 00 00       ..
    equs "EXPLODE"                                 ; ab76: 45 58 50... EXP

    equb CHARF, &0d                                ; ab7d: 00 0d       ..
    equw &1042                                     ; ab7f: 42 10       B.
    equw     0                                     ; ab81: 00 00       ..
    equs "IMPLODE"                                 ; ab83: 49 4d 50... IMP

    equb CHARF, &0d                                ; ab8a: 00 0d       ..
    equw &1048                                     ; ab8c: 48 10       H.
    equw     0                                     ; ab8e: 00 00       ..
    equs "GETCHAR"                                 ; ab90: 47 45 54... GET            ; N.B. ZMQ IS USED

    equb CHARF, &0e                                ; ab97: 00 0e       ..
    equw &105a                                     ; ab99: 5a 10       Z.
    equw     0                                     ; ab9b: 00 00       ..
    equs "READLINE"                                ; ab9d: 52 45 41... REA

    equb CHARF, &0b                                ; aba5: 00 0b       ..
    equw &1060                                     ; aba7: 60 10       `.
    equw     0                                     ; aba9: 00 00       ..
    equs "CLOSE"                                   ; abab: 43 4c 4f... CLO

    equb CHARF, &0a                                ; abb0: 00 0a       ..
    equw &1066                                     ; abb2: 66 10       f.
    equw     0                                     ; abb4: 00 00       ..
    equs "OPEN"                                    ; abb6: 4f 50 45... OPE

    equb CHARF, &0c                                ; abba: 00 0c       ..
    equw &106c                                     ; abbc: 6c 10       l.
    equw     0                                     ; abbe: 00 00       ..
    equs "WRITE0"                                  ; abc0: 57 52 49... WRI

    equb CHARF, &0b                                ; abc6: 00 0b       ..
    equw &1072                                     ; abc8: 72 10       r.
    equw     0                                     ; abca: 00 00       ..
    equs "WRITE"                                   ; abcc: 57 52 49... WRI

    equb CHARF, 9                                  ; abd1: 00 09       ..
    equw &1078                                     ; abd3: 78 10       x.
    equw     0                                     ; abd5: 00 00       ..
    equs "EOF"                                     ; abd7: 45 4f 46    EOF

    equb CHARF, 9                                  ; abda: 00 09       ..
    equw &107e                                     ; abdc: 7e 10       ~.
    equw     0                                     ; abde: 00 00       ..
    equs "VDU"                                     ; abe0: 56 44 55    VDU

    equb CHARF, &0c                                ; abe3: 00 0c       ..
    equw &1084                                     ; abe5: 84 10       ..
    equw     0                                     ; abe7: 00 00       ..
    equs "PRINTC"                                  ; abe9: 50 52 49... PRI

    equb CHARF, &0b                                ; abef: 00 0b       ..
    equw &108a                                     ; abf1: 8a 10       ..
    equw     0                                     ; abf3: 00 00       ..
    equs "PRINC"                                   ; abf5: 50 52 49... PRI

    equb SUBRF, 0                                  ; abfa: 08 00       ..
    equw     0                                     ; abfc: 00 00       ..
    equw &08c0                                     ; abfe: c0 08       ..

    equb FSUBRF, 0                                 ; ac00: 0c 00       ..
    equw     0                                     ; ac02: 00 00       ..
    equw &08c3                                     ; ac04: c3 08       ..

    equb SUBRF, 1                                  ; ac06: 08 01       ..
    equw     0                                     ; ac08: 00 00       ..
    equw &08c6                                     ; ac0a: c6 08       ..

    equb SUBRF, 1                                  ; ac0c: 08 01       ..
    equw     0                                     ; ac0e: 00 00       ..
    equw &08c9                                     ; ac10: c9 08       ..

    equb SUBRF, 2                                  ; ac12: 08 02       ..
    equw     0                                     ; ac14: 00 00       ..
    equw &08cc                                     ; ac16: cc 08       ..

    equb SUBRF, 0                                  ; ac18: 08 00       ..
    equw     0                                     ; ac1a: 00 00       ..
    equw &08cf                                     ; ac1c: cf 08       ..

    equb SUBRF, 2                                  ; ac1e: 08 02       ..
    equw     0                                     ; ac20: 00 00       ..
    equw &08d2                                     ; ac22: d2 08       ..

    equb SUBRF, 2                                  ; ac24: 08 02       ..
    equw     0                                     ; ac26: 00 00       ..
    equw &08d5                                     ; ac28: d5 08       ..

    equb SUBRF, 2                                  ; ac2a: 08 02       ..
    equw     0                                     ; ac2c: 00 00       ..
    equw &08d8                                     ; ac2e: d8 08       ..

    equb SUBRF, 1                                  ; ac30: 08 01       ..
    equw     0                                     ; ac32: 00 00       ..
    equw &08db                                     ; ac34: db 08       ..

    equb SUBRF, 1                                  ; ac36: 08 01       ..
    equw     0                                     ; ac38: 00 00       ..
    equw &08de                                     ; ac3a: de 08       ..

    equb SUBRF, 1                                  ; ac3c: 08 01       ..
    equw     0                                     ; ac3e: 00 00       ..
    equw &08e1                                     ; ac40: e1 08       ..

    equb SUBRF, 1                                  ; ac42: 08 01       ..
    equw     0                                     ; ac44: 00 00       ..
    equw &08e4                                     ; ac46: e4 08       ..

    equb SUBRF, 0                                  ; ac48: 08 00       ..
    equw     0                                     ; ac4a: 00 00       ..
    equw &08e7                                     ; ac4c: e7 08       ..

    equb SUBRF, 1                                  ; ac4e: 08 01       ..
    equw     0                                     ; ac50: 00 00       ..
    equw &08ea                                     ; ac52: ea 08       ..

    equb SUBRF, 1                                  ; ac54: 08 01       ..
    equw     0                                     ; ac56: 00 00       ..
    equw &08ed                                     ; ac58: ed 08       ..

    equb SUBRF, 0                                  ; ac5a: 08 00       ..
    equw     0                                     ; ac5c: 00 00       ..
    equw &08f0                                     ; ac5e: f0 08       ..

    equb SUBRF, 1                                  ; ac60: 08 01       ..
    equw     0                                     ; ac62: 00 00       ..
    equw &08f3                                     ; ac64: f3 08       ..

    equb SUBRF, 2                                  ; ac66: 08 02       ..
    equw     0                                     ; ac68: 00 00       ..
    equw &08f6                                     ; ac6a: f6 08       ..

    equb SUBRF, 1                                  ; ac6c: 08 01       ..
    equw     0                                     ; ac6e: 00 00       ..
    equw &08f9                                     ; ac70: f9 08       ..

    equb SUBRF, 1                                  ; ac72: 08 01       ..
    equw     0                                     ; ac74: 00 00       ..
    equw &08fc                                     ; ac76: fc 08       ..

    equb SUBRF, 1                                  ; ac78: 08 01       ..
    equw     0                                     ; ac7a: 00 00       ..
    equw &08ff                                     ; ac7c: ff 08       ..

    equb SUBRF, 0                                  ; ac7e: 08 00       ..
    equw     0                                     ; ac80: 00 00       ..
    equw &0902                                     ; ac82: 02 09       ..

    equb SUBRF, 0                                  ; ac84: 08 00       ..
    equw     0                                     ; ac86: 00 00       ..
    equw &0905                                     ; ac88: 05 09       ..

    equb SUBRF, 0                                  ; ac8a: 08 00       ..
    equw     0                                     ; ac8c: 00 00       ..
    equw &0908                                     ; ac8e: 08 09       ..

    equb CHARF, &0a                                ; ac90: 00 0a       ..
    equw &1132                                     ; ac92: 32 11       2.
    equw     0                                     ; ac94: 00 00       ..
    equs "MODE"                                    ; ac96: 4d 4f 44... MOD

    ; ******************************
    ; Routines new to version 2
    ; ******************************

    equb CHARF, 9                                  ; ac9a: 00 09       ..
    equw &1138                                     ; ac9c: 38 11       8.
    equw     0                                     ; ac9e: 00 00       ..
    equs "USR"                                     ; aca0: 55 53 52    USR

    equb CHARF, &0b                                ; aca3: 00 0b       ..
    equw &113e                                     ; aca5: 3e 11       >.
    equw     0                                     ; aca7: 00 00       ..
    equs "SOUND"                                   ; aca9: 53 4f 55... SOU

    equb CHARF, &0e                                ; acae: 00 0e       ..
    equw &1144                                     ; acb0: 44 11       D.
    equw     0                                     ; acb2: 00 00       ..
    equs "ENVELOPE"                                ; acb4: 45 4e 56... ENV

    equb CHARF, &0c                                ; acbc: 00 0c       ..
    equw &114a                                     ; acbe: 4a 11       J.
    equw     0                                     ; acc0: 00 00       ..
    equs "GCTIME"                                  ; acc2: 47 43 54... GCT

    equb CHARF, &0a                                ; acc8: 00 0a       ..
    equw &1150                                     ; acca: 50 11       P.
    equw     0                                     ; accc: 00 00       ..
    equs "TIME"                                    ; acce: 54 49 4d... TIM

    equb CHARF, &0b                                ; acd2: 00 0b       ..
    equw &1156                                     ; acd4: 56 11       V.
    equw     0                                     ; acd6: 00 00       ..
    equs "RESET"                                   ; acd8: 52 45 53... RES

    equb CHARF, &0b                                ; acdd: 00 0b       ..
    equw &115c                                     ; acdf: 5c 11       \.
    equw     0                                     ; ace1: 00 00       ..
    equs "POINT"                                   ; ace3: 50 4f 49... POI

    equb CHARF, &0b                                ; ace8: 00 0b       ..
    equw &1162                                     ; acea: 62 11       b.
    equw     0                                     ; acec: 00 00       ..
    equs "ADVAL"                                   ; acee: 41 44 56... ADV

    equb CHARF, &0b                                ; acf3: 00 0b       ..
    equw &1168                                     ; acf5: 68 11       h.
    equw     0                                     ; acf7: 00 00       ..
    equs "CLOCK"                                   ; acf9: 43 4c 4f... CLO

    equb CHARF, &0a                                ; acfe: 00 0a       ..
    equw &116e                                     ; ad00: 6e 11       n.
    equw     0                                     ; ad02: 00 00       ..
    equs "BNOT"                                    ; ad04: 42 4e 4f... BNO

    equb CHARF, &0a                                ; ad08: 00 0a       ..
    equw &1174                                     ; ad0a: 74 11       t.
    equw     0                                     ; ad0c: 00 00       ..
    equs "BAND"                                    ; ad0e: 42 41 4e... BAN

    equb CHARF, 9                                  ; ad12: 00 09       ..
    equw &117a                                     ; ad14: 7a 11       z.
    equw     0                                     ; ad16: 00 00       ..
    equs "BOR"                                     ; ad18: 42 4f 52    BOR

    equb CHARF, &0b                                ; ad1b: 00 0b       ..
    equw &1180                                     ; ad1d: 80 11       ..
    equw     0                                     ; ad1f: 00 00       ..
    equs "INKEY"                                   ; ad21: 49 4e 4b... INK

    equb CHARF, &0c                                ; ad26: 00 0c       ..
    equw &1186                                     ; ad28: 86 11       ..
    equw     0                                     ; ad2a: 00 00       ..
    equs "GENSYM"                                  ; ad2c: 47 45 4e... GEN

    equb SUBRF, 1                                  ; ad32: 08 01       ..
    equw     0                                     ; ad34: 00 00       ..
    equw &090b                                     ; ad36: 0b 09       ..

    equb SUBRF, 5                                  ; ad38: 08 05       ..
    equw     0                                     ; ad3a: 00 00       ..
    equw &090e                                     ; ad3c: 0e 09       ..

    equb SUBRF, 4                                  ; ad3e: 08 04       ..
    equw     0                                     ; ad40: 00 00       ..
    equw &0911                                     ; ad42: 11 09       ..

    equb SUBRF, &0e                                ; ad44: 08 0e       ..
    equw     0                                     ; ad46: 00 00       ..
    equw &0914                                     ; ad48: 14 09       ..

    equb SUBRF, 0                                  ; ad4a: 08 00       ..
    equw     0                                     ; ad4c: 00 00       ..
    equw &0917                                     ; ad4e: 17 09       ..

    equb SUBRF, 0                                  ; ad50: 08 00       ..
    equw     0                                     ; ad52: 00 00       ..
    equw &091a                                     ; ad54: 1a 09       ..

    equb SUBRF, 0                                  ; ad56: 08 00       ..
    equw     0                                     ; ad58: 00 00       ..
    equw &091d                                     ; ad5a: 1d 09       ..

    equb SUBRF, 2                                  ; ad5c: 08 02       ..
    equw     0                                     ; ad5e: 00 00       ..
    equw &0923                                     ; ad60: 23 09       #.

    equb SUBRF, 1                                  ; ad62: 08 01       ..
    equw     0                                     ; ad64: 00 00       ..
    equw &0926                                     ; ad66: 26 09       &.

    equb SUBRF, 0                                  ; ad68: 08 00       ..
    equw     0                                     ; ad6a: 00 00       ..
    equw &0920                                     ; ad6c: 20 09        .

    equb SUBRF, 1                                  ; ad6e: 08 01       ..
    equw     0                                     ; ad70: 00 00       ..
    equw &0929                                     ; ad72: 29 09       ).

    equb SUBRF, 0                                  ; ad74: 08 00       ..
    equw     0                                     ; ad76: 00 00       ..
    equw &092c                                     ; ad78: 2c 09       ,.

    equb SUBRF, 0                                  ; ad7a: 08 00       ..
    equw     0                                     ; ad7c: 00 00       ..
    equw &092f                                     ; ad7e: 2f 09       /.

    equb SUBRF, 1                                  ; ad80: 08 01       ..
    equw     0                                     ; ad82: 00 00       ..
    equw &0932                                     ; ad84: 32 09       2.

    equb SUBRF, 0                                  ; ad86: 08 00       ..
    equw     0                                     ; ad88: 00 00       ..
    equw &0935                                     ; ad8a: 35 09       5.

    equb CHARF, &0d                                ; ad8c: 00 0d       ..
    equw &1199                                     ; ad8e: 99 11       ..
    equw &002c                                     ; ad90: 2c 00       ,.
    equs "VERSION"                                 ; ad92: 56 45 52... VER
    equb 4, 4, 4, 0                                ; ad99: 04 04 04... ...

    equb CHARF, &0f                                ; ad9d: 00 0f       ..
    equw &11ac                                     ; ad9f: ac 11       ..
    equw &00e3                                     ; ada1: e3 00       ..
    equs "LINEWIDTH"                               ; ada3: 4c 49 4e... LIN

    equb NUMF, 4                                   ; adac: 04 04       ..
    equw &001f                                     ; adae: 1f 00       ..
    equw &0b00                                     ; adb0: 00 0b       ..
    equb &bb, &11, &80, 0                          ; adb2: bb 11 80... ...
    equs "DEFUN"                                   ; adb6: 44 45 46... DEF

    equb LISTF, &18                                ; adbb: 80 18       ..
    equw &c70a                                     ; adbd: 0a c7       ..
    equw &0011                                     ; adbf: 11 00       ..
    equb 7, 2, &0a, &ff, 0, &58                    ; adc1: 07 02 0a... ...

    equb LISTF, &c0                                ; adc7: 80 c0       ..
    equw &0811                                     ; adc9: 11 08       ..
    equw &8012                                     ; adcb: 12 80       ..
    equs "|"                                       ; adcd: 7c          |
    equb &0a, &db, &11, &80, &61, &0a, &d6, &11    ; adce: 0a db 11... ...
    equb &80, &c0, &11, &14,   0, &80, &d1, &11    ; add6: 80 c0 11... ...
    equb   3, &12, &80, &4d, &0a, &ef, &11, &80    ; adde: 03 12 80... ...
    equb &2d, &0a, &ea, &11, &80, &18, &0a,   2    ; ade6: 2d 0a ea... -..
    equb   0, &80, &e5, &11, &fe, &11, &80, &99    ; adee: 00 80 e5... ...
    equb &0a, &f9, &11, &80, &c0, &11, &80,   0    ; adf6: 0a f9 11... ...
    equb &80, &f4, &11, &80,   0, &80, &e0, &11    ; adfe: 80 f4 11... ...
    equb &80,   0, &80, &cc, &11, &17, &12, &80    ; ae06: 80 00 80... ...
    equb &61, &0a, &12, &12, &80, &c0, &11, &80    ; ae0e: 61 0a 12... a..
    equb   0, &80, &0d, &12, &80,   0              ; ae16: 00 80 0d... ...

    equb CHARF, &0f                                ; ae1c: 00 0f       ..
    equw &1382                                     ; ae1e: 82 13       ..
    equw &006f                                     ; ae20: 6f 00       o.
    equs "CHARCOUNT"                               ; ae22: 43 48 41... CHA

    equb LISTF, &c0                                ; ae2b: 80 c0       ..
    equw &3a11                                     ; ae2d: 11 3a       .:
    equw &0012                                     ; ae2f: 12 00       ..
    equb &0a, 2, &0a, &7e, 0                       ; ae31: 0a 02 0a... ...
    equs "LEFT"                                    ; ae36: 4c 45 46... LEF

    equb LISTF, &30                                ; ae3a: 80 30       .0
    equw &8012                                     ; ae3c: 12 80       ..
    equw &8000                                     ; ae3e: 00 80       ..
    equs "+"                                       ; ae40: 2b          +
    equb &12, &7d, &13, &80, &ac, &0a, &a3, &12    ; ae41: 12 7d 13... .}.
    equb &80, &85, &0a, &4e, &12, &80, &c0, &11    ; ae49: 80 85 0a... ...
    equb   0,   0, &80, &49, &12, &9e, &12, &80    ; ae51: 00 00 80... ...
    equb &ac, &0a, &99, &12, &80, &41, &0e, &62    ; ae59: ac 0a 99... ...
    equb &12, &80, &30, &12, &71, &12, &80, &ea    ; ae61: 12 80 30... ..0
    equb &0d, &6c, &12, &80, &c0, &11, &d0,   0    ; ae69: 0d 6c 12... .l.
    equb &80, &67, &12,   0,   0, &80, &5d, &12    ; ae71: 80 67 12... .g.
    equb &94, &12, &80, &58, &0d, &80, &12, &80    ; ae79: 94 12 80... ...
    equb &30, &12, &8f, &12, &80, &ea, &0d, &8a    ; ae81: 30 12 8f... 0..
    equb &12, &80, &c0, &11, &ff,   0, &80, &85    ; ae89: 12 80 c0... ...
    equb &12, &ff,   0, &80, &7b, &12, &ff,   0    ; ae91: 12 ff 00... ...
    equb &80, &76, &12, &4d,   0, &80, &58, &12    ; ae99: 80 76 12... .v.
    equb   2,   0, &80, &53, &12, &78, &13, &80    ; aea1: 02 00 80... ...
    equb &15, &0b, &0f, &13, &80, &d7, &0e, &bc    ; aea9: 15 0b 0f... ...
    equb &12, &80, &85, &0a, &b7, &12, &80, &c0    ; aeb1: 12 80 85... ...
    equb &11, &48,   0, &80, &b2, &12, &0a, &13    ; aeb9: 11 48 00... .H.
    equb &80, &1c, &12, &c6, &12, &80, &c0, &11    ; aec1: 80 1c 12... ...
    equb   5, &13, &80, &58, &0d, &d0, &12, &80    ; aec9: 05 13 80... ...
    equb &30, &12,   0, &13, &80, &ac, &0a, &e8    ; aed1: 30 12 00... 0..
    equb &12, &80, &c0, &11, &e3, &12,   4,   4    ; aed9: 12 80 c0... ...
    equb   4,   0, &80, &df, &12, &16,   0, &80    ; aee1: 04 00 80... ...
    equb &da, &12, &fb, &12, &80, &11, &0a, &f6    ; aee9: da 12 fb... ...
    equb &12,   4,   4, &fe, &ff, &80, &f2, &12    ; aef1: 12 04 04... ...
    equb &2c,   0, &80, &ed, &12, &2d,   0, &80    ; aef9: 2c 00 80... ,..
    equb &d5, &12, &c0,   0, &80, &cb, &12, &5c    ; af01: d5 12 c0... ...
    equb   0, &80, &c1, &12, &52,   0, &80, &ad    ; af09: 00 80 c1... ...
    equb &12, &50, &13, &80, &1f, &0b, &4b, &13    ; af11: 12 50 13... .P.
    equb &80, &72, &0a, &1e, &13, &80, &30, &12    ; af19: 80 72 0a... .r.
    equb &46, &13, &80, &1c, &12, &32, &13, &80    ; af21: 46 13 80... F..
    equb &61, &0a, &2d, &13, &80, &c0, &11, &2d    ; af29: 61 0a 2d... a.-
    equb   0, &80, &28, &13, &41, &13, &80, &b1    ; af31: 00 80 28... ..(
    equb &0d, &3c, &13, &80, &30, &12,   0,   0    ; af39: 0d 3c 13... .<.
    equb &80, &37, &13,   0,   0, &80, &23, &13    ; af41: 80 37 13... .7.
    equb &16,   0, &80, &19, &13,   0,   0, &80    ; af49: 16 00 80... ...
    equb &14, &13, &6e, &13, &80, &72, &0a, &5a    ; af51: 14 13 6e... ..n
    equb &13, &80, &c0, &11, &69, &13, &80, &99    ; af59: 13 80 c0... ...
    equb &0a, &64, &13, &80, &c0, &11, &14,   0    ; af61: 0a 64 13... .d.
    equb &80, &5f, &13, &16,   0, &80, &55, &13    ; af69: 80 5f 13... ._.
    equb   0,   0, &80, &a8, &12, &16,   0, &80    ; af71: 00 00 80... ...
    equb &73, &13,   0,   0, &80, &44, &12, &ff    ; af79: 73 13 00... s..
    equb   0, &80, &18, &0a, &3f, &12              ; af81: 00 80 18... ...

    equb CHARF, &0a                                ; af87: 00 0a       ..
    equw &141b                                     ; af89: 1b 14       ..
    equw &0016                                     ; af8b: 16 00       ..
    equs "EDIT"                                    ; af8d: 45 44 49... EDI

    equb CHARF, 7                                  ; af91: 00 07       ..
    equw &0a02                                     ; af93: 02 0a       ..
    equw &0017                                     ; af95: 17 00       ..
    equs "L"                                       ; af97: 4c          L

    equb LISTF, &91                                ; af98: 80 91       ..
    equw &c713                                     ; af9a: 13 c7       ..
    equw &0013                                     ; af9c: 13 00       ..
    equb &0c, &61, &18, &58, 0                     ; af9e: 0c 61 18... .a.
    equs "SPRINT"                                  ; afa3: 53 50 52... SPR
    equb &80, &9d, &13, &c2, &13, &80, &57, &0a    ; afa9: 80 9d 13... ...
    equb &bd, &13, &80, &61, &0a, &b8, &13, &80    ; afb1: bd 13 80... ...
    equb &91, &13, &16,   0, &80, &b3, &13, &0f    ; afb9: 91 13 16... ...
    equb   0, &80, &ae, &13, &11,   0, &80, &a9    ; afc1: 00 80 ae... ...
    equb &13, &d1, &13, &80, &e3, &0f, &17,   0    ; afc9: 13 d1 13... ...
    equb &80, &cc, &13, &16, &14, &80, &7c, &0a    ; afd1: 80 cc 13... ...
    equb &e5, &13, &80, &61, &0a, &e0, &13, &80    ; afd9: e5 13 80... ...
    equb &91, &13, &13,   0, &80, &db, &13, &11    ; afe1: 91 13 13... ...
    equb &14                                       ; afe9: 14          .

    equb CHARF, 9                                  ; afea: 00 09       ..
    equw &16c2                                     ; afec: c2 16       ..
    equw &001a                                     ; afee: 1a 00       ..
    equs "SED"                                     ; aff0: 53 45 44    SED

    equb LISTF, &ea                                ; aff3: 80 ea       ..
    equw &0c13                                     ; aff5: 13 0c       ..
    equw &8014                                     ; aff7: 14 80       ..
    equs "W"                                       ; aff9: 57          W
    equb &0a,   7, &14, &80, &61, &0a,   2, &14    ; affa: 0a 07 14... ...
    equb &80, &91, &13, &cc,   0, &80, &fd, &13    ; b002: 80 91 13... ...
    equb &4e,   0, &80, &f8, &13, &cc,   0, &80    ; b00a: 4e 00 80... N..
    equb &f3, &13,   4,   0, &80, &d6, &13, &17    ; b012: f3 13 04... ...
    equb   0, &80, &18, &0a, &98, &13,   0,   7    ; b01a: 00 80 18... ...
    equb   2, &0a, &99,   0, &41, &80, &20, &14    ; b022: 02 0a 99... ...
    equb &38, &14,   0,   7,   2, &0a, &80,   0    ; b02a: 38 14 00... 8..
    equb &51, &80, &2c, &14, &9e,   0, &80, &33    ; b032: 51 80 2c... Q.,
    equb &14, &94,   0, &80, &27, &14, &bd, &16    ; b03a: 14 94 00... ...
    equb &80, &15, &0b, &65, &14, &80, &72, &0a    ; b042: 80 15 0b... ...
    equb &4c, &14, &80, &2c, &14, &60, &14, &80    ; b04a: 4c 14 80... L..
    equb &ef, &0f, &5b, &14, &80, &8a, &0f, &c1    ; b052: ef 0f 5b... ..[
    equb   0, &80, &56, &14, &b7,   0, &80, &51    ; b05a: 00 80 56... ..V
    equb &14, &ef,   0, &80, &47, &14, &99, &14    ; b062: 14 ef 00... ...
    equb &80, &d7, &0e, &8f, &14, &80, &6a, &0a    ; b06a: 80 d7 0e... ...
    equb &74, &14, &80, &2c, &14, &8a, &14, &80    ; b072: 74 14 80... t..
    equb &2d, &0a, &85, &14,   0,   7,   2, &0a    ; b07a: 2d 0a 85... -..
    equb &0e,   0, &42, &80, &7e, &14, &fd,   0    ; b082: 0e 00 42... ..B
    equb &80, &79, &14, &e3,   0, &80, &6f, &14    ; b08a: 80 79 14... .y.
    equb &94, &14, &80, &20, &14, &0c,   0, &80    ; b092: 94 14 80... ...
    equb &6a, &14, &b8, &16, &80, &72, &0a, &a3    ; b09a: 6a 14 b8... j..
    equb &14, &80, &20, &14, &b3, &16, &80, &ac    ; b0a2: 14 80 20... ..
    equb &0a, &e6, &14, &80, &6a, &0a, &b2, &14    ; b0aa: 0a e6 14... ...
    equb &80, &2c, &14, &c8, &14, &80, &2d, &0a    ; b0b2: 80 2c 14... .,.
    equb &c3, &14,   0,   7,   2, &0a, &18,   0    ; b0ba: c3 14 00... ...
    equb &52, &80, &bc, &14, &80,   0, &80, &b7    ; b0c2: 52 80 bc... R..
    equb &14, &80,   0, &80, &ad, &14, &d7, &14    ; b0ca: 14 80 00... ...
    equb &80, &e3, &0f, &80,   0, &80, &d2, &14    ; b0d2: 80 e3 0f... ...
    equb &e1, &14, &80, &8f, &0a, &80,   0, &80    ; b0da: e1 14 80... ...
    equb &dc, &14, &80,   0, &80, &cd, &14, &1d    ; b0e2: dc 14 80... ...
    equb &15, &80, &6a, &0a, &f0, &14, &80, &2c    ; b0ea: 15 80 6a... ..j
    equb &14, &f5, &14, &80,   1, &0e,   0,   0    ; b0f2: 14 f5 14... ...
    equb &80, &eb, &14,   9, &15, &80, &9d, &13    ; b0fa: 80 eb 14... ...
    equb   4, &15, &80, &20, &14, &80,   0, &80    ; b102: 04 15 80... ...
    equb &ff, &14, &13, &15, &80, &e3, &0f, &bc    ; b10a: ff 14 13... ...
    equb   0, &80, &0e, &15, &18, &15, &80, &20    ; b112: 00 80 0e... ...
    equb &14, &b2,   0, &80, &fa, &14, &6a, &15    ; b11a: 14 b2 00... ...
    equb &80, &6a, &0a, &27, &15, &80, &2c, &14    ; b122: 80 6a 0a... .j.
    equb &3d, &15, &80, &2d, &0a, &38, &15,   0    ; b12a: 3d 15 80... =..
    equb   7,   2, &0a, &80,   0, &43, &80, &31    ; b132: 07 02 0a... ...
    equb &15, &9a,   0, &80, &2c, &15, &90,   0    ; b13a: 15 9a 00... ...
    equb &80, &22, &15, &4c, &15, &80, &e3, &0f    ; b142: 80 22 15... .".
    equb &86,   0, &80, &47, &15, &65, &15, &80    ; b14a: 86 00 80... ...
    equb &4d, &0a, &5b, &15, &80, &8f, &0a, &c1    ; b152: 4d 0a 5b... M.[
    equb   0, &80, &56, &15, &60, &15, &80, &20    ; b15a: 00 80 56... ..V
    equb &14, &18,   0, &80, &51, &15, &0e,   0    ; b162: 14 18 00... ...
    equb &80, &42, &15, &9c, &15, &80, &85, &0a    ; b16a: 80 42 15... .B.
    equb &74, &15, &80, &20, &14, &80,   0, &80    ; b172: 74 15 80... t..
    equb &6f, &15, &92, &15, &80, &ef, &0f, &8d    ; b17a: 6f 15 92... o..
    equb &15, &80, &2d, &0a, &88, &15, &80, &89    ; b182: 15 80 2d... ..-
    equb &0e,   0,   0, &80, &83, &15,   0,   0    ; b18a: 0e 00 00... ...
    equb &80, &7e, &15, &97, &15, &80, &20, &14    ; b192: 80 7e 15... .~.
    equb &0a,   0, &80, &79, &15, &f8, &15, &80    ; b19a: 0a 00 80... ...
    equb &6a, &0a, &a6, &15, &80, &2c, &14, &bc    ; b1a2: 6a 0a a6... j..
    equb &15, &80, &2d, &0a, &b7, &15,   0,   7    ; b1aa: 15 80 2d... ..-
    equb   2, &0a, &4f,   0, &44, &80, &b0, &15    ; b1b2: 02 0a 4f... ..O
    equb &10,   0, &80, &ab, &15, &4c,   0, &80    ; b1ba: 10 00 80... ...
    equb &a1, &15, &f3, &15, &80, &4d, &0a, &d5    ; b1c2: a1 15 f3... ...
    equb &15, &80, &61, &0a, &d0, &15, &80, &20    ; b1ca: 15 80 61... ..a
    equb &14,   0,   0, &80, &cb, &15, &ee, &15    ; b1d2: 14 00 00... ...
    equb &80, &ea, &13, &e9, &15, &80, &99, &0a    ; b1da: 80 ea 13... ...
    equb &e4, &15, &80, &20, &14, &43,   0, &80    ; b1e2: e4 15 80... ...
    equb &df, &15, &43,   0, &80, &da, &15, &0d    ; b1ea: df 15 43... ..C
    equb   0, &80, &c6, &15, &4f,   0, &80, &c1    ; b1f2: 00 80 c6... ...
    equb &15, &4d, &16, &80, &6a, &0a,   2, &16    ; b1fa: 15 4d 16... .M.
    equb &80, &2c, &14, &11, &16, &80, &2d, &0a    ; b202: 80 2c 14... .,.
    equb &0c, &16, &80, &20, &14,   0,   0, &80    ; b20a: 0c 16 80... ...
    equb   7, &16, &4f,   0, &80, &fd, &15, &48    ; b212: 07 16 4f... ..O
    equb &16, &80, &4d, &0a, &34, &16, &80, &ea    ; b21a: 16 80 4d... ..M
    equb &13, &2f, &16, &80, &61, &0a, &2a, &16    ; b222: 13 2f 16... ./.
    equb &80, &20, &14, &44,   0, &80, &25, &16    ; b22a: 80 20 14... . .
    equb   0,   0, &80, &20, &16, &43, &16, &80    ; b232: 00 00 80... ...
    equb &99, &0a, &3e, &16, &80, &20, &14,   0    ; b23a: 99 0a 3e... ..>
    equb   0, &80, &39, &16, &4e,   0, &80, &1b    ; b242: 00 80 39... ..9
    equb &16,   0,   0, &80, &16, &16, &7f, &16    ; b24a: 16 00 00... ...
    equb &80, &6a, &0a, &57, &16, &80, &2c, &14    ; b252: 80 6a 0a... .j.
    equb &66, &16, &80, &2d, &0a, &61, &16, &80    ; b25a: 66 16 80... f..
    equb &c0, &11, &45,   0, &80, &5c, &16, &7e    ; b262: c0 11 45... ..E
    equb   0, &80, &52, &16, &7a, &16, &80, &99    ; b26a: 00 80 52... ..R
    equb &0a, &75, &16, &80, &20, &14, &49,   0    ; b272: 0a 75 16... .u.
    equb &80, &70, &16, &0b,   0, &80, &6b, &16    ; b27a: 80 70 16... .p.
    equb &ae, &16, &80, &11, &0a, &a4, &16, &80    ; b282: ae 16 80... ...
    equb &ef, &0f, &9f, &16, &80, &2d, &0a, &9a    ; b28a: ef 0f 9f... ...
    equb &16,   0,   7,   2, &0a,   0,   0, &3f    ; b292: 16 00 07... ...
    equb &80, &93, &16,   0,   0, &80, &8e, &16    ; b29a: 80 93 16... ...
    equb   0,   0, &80, &89, &16, &a9, &16, &80    ; b2a2: 00 00 80... ...
    equb &20, &14,   0,   0, &80, &84, &16,   0    ; b2aa: 20 14 00...  ..
    equb   0, &80, &a8, &14,   0,   0, &80, &9e    ; b2b2: 00 80 a8... ...
    equb &14,   0,   0, &80, &42, &14,   0,   0    ; b2ba: 14 00 00... ...
    equb &80, &18, &0a, &3d, &14, &80, &c0, &11    ; b2c2: 80 18 0a... ...
    equb &dc, &16,   0,   7,   2, &0a,   0,   0    ; b2ca: dc 16 00... ...
    equb &4e, &80, &cc, &16, &d8, &16,   4,   4    ; b2d2: 4e 80 cc... N..
    equb   0,   0, &80, &d3, &16,   0,   0, &80    ; b2da: 00 00 80... ...
    equb &c7, &16, &5c, &18, &80, &ac, &0a, &36    ; b2e2: c7 16 5c... ..\
    equb &17, &80, &bd, &0b, &fa, &16, &80, &85    ; b2ea: 17 80 bd... ...
    equb &0a, &f5, &16, &80, &c0, &11,   0,   0    ; b2f2: 0a f5 16... ...
    equb &80, &f0, &16, &1d, &17, &80, &1c, &12    ; b2fa: 80 f0 16... ...
    equb   4, &17, &80, &c0, &11, &18, &17, &80    ; b302: 04 17 80... ...
    equb &58, &0d, &0e, &17, &80, &9d, &11, &13    ; b30a: 58 0d 0e... X..
    equb &17, &80, &cc, &16,   0,   0, &80,   9    ; b312: 17 80 cc... ...
    equb &17,   0,   0, &80, &ff, &16,   0,   0    ; b31a: 17 00 00... ...
    equb &80, &eb, &16, &31, &17, &80, &ef, &0f    ; b322: 80 eb 16... ...
    equb &2c, &17, &80, &c0, &11,   0,   0, &80    ; b32a: 2c 17 80... ,..
    equb &27, &17,   0,   0, &80, &22, &17, &57    ; b332: 27 17 00... '..
    equb &18, &80, &ef, &0f, &40, &17, &80, &90    ; b33a: 18 80 ef... ...
    equb &0e,   0,   0, &80, &3b, &17, &63, &17    ; b342: 0e 00 00... ...
    equb &80, &9d, &13, &59, &17, &80, &61, &0a    ; b34a: 80 9d 13... ...
    equb &54, &17, &80, &c0, &11,   0,   0, &80    ; b352: 54 17 80... T..
    equb &4f, &17, &5e, &17, &80, &cc, &16,   0    ; b35a: 4f 17 5e... O.^
    equb   0, &80, &4a, &17, &8a, &17, &80, &72    ; b362: 00 80 4a... ..J
    equb &0a, &6d, &17, &80, &cc, &16, &85, &17    ; b36a: 0a 6d 17... .m.
    equb &80, &4e, &0d, &77, &17, &80, &cc, &16    ; b372: 80 4e 0d... .N.
    equb &80, &17,   4,   4,   3,   0, &80, &7c    ; b37a: 80 17 04... ...
    equb &17,   0,   0, &80, &72, &17,   0,   0    ; b382: 17 00 00... ...
    equb &80, &68, &17, &52, &18, &80, &15, &0b    ; b38a: 80 68 17... .h.
    equb &ad, &17, &80, &72, &0a, &99, &17, &80    ; b392: ad 17 80... ...
    equb &c0, &11, &a8, &17, &80, &99, &0a, &a3    ; b39a: c0 11 a8... ...
    equb &17, &80, &c0, &11,   0,   0, &80, &9e    ; b3a2: 17 80 c0... ...
    equb &17,   0,   0, &80, &94, &17, &ee, &17    ; b3aa: 17 00 00... ...
    equb &80, &ac, &0a, &e9, &17, &80, &b4, &0b    ; b3b2: 80 ac 0a... ...
    equb &bc, &17, &80, &c0, &11, &cb, &17, &80    ; b3ba: bc 17 80... ...
    equb &85, &0a, &c6, &17, &80, &c0, &11,   0    ; b3c2: 85 0a c6... ...
    equb   0, &80, &c1, &17,   0,   0, &80, &b7    ; b3ca: 00 80 c1... ...
    equb &17, &e4, &17, &80, &ef, &0f, &da, &17    ; b3d2: 17 e4 17... ...
    equb &80, &af, &0e, &df, &17, &80, &c0, &11    ; b3da: 80 af 0e... ...
    equb   0,   0, &80, &d5, &17,   0,   0, &80    ; b3e2: 00 00 80... ...
    equb &d0, &17,   0,   0, &80, &b2, &17, &16    ; b3ea: d0 17 00... ...
    equb &18, &80, &d7, &0e,   2, &18, &80, &85    ; b3f2: 18 80 d7... ...
    equb &0a, &fd, &17, &80, &c0, &11,   0,   0    ; b3fa: 0a fd 17... ...
    equb &80, &f8, &17, &11, &18, &80, &ef, &0f    ; b402: 80 f8 17... ...
    equb &0c, &18, &80, &a5, &0e,   0,   0, &80    ; b40a: 0c 18 80... ...
    equb   7, &18,   0,   0, &80, &f3, &17, &2f    ; b412: 07 18 00... ...
    equb &18                                       ; b41a: 18          .

    equb CHARF, &0a                                ; b41b: 00 0a       ..
    equw &18d5                                     ; b41d: d5 18       ..
    equw     0                                     ; b41f: 00 00       ..
    equs "XTAB"                                    ; b421: 58 54 41... XTA

    equb LISTF, &1b                                ; b425: 80 1b       ..
    equw &2a18                                     ; b427: 18 2a       .*
    equw &8018                                     ; b429: 18 80       ..
    equb &cc, &16,   0,   0, &80, &25, &18, &4d    ; b42b: cc 16 00... ...
    equb &18, &80, &9d, &13, &43, &18, &80, &61    ; b433: 18 80 9d... ...
    equb &0a, &3e, &18, &80, &c0, &11,   0,   0    ; b43b: 0a 3e 18... .>.
    equb &80, &39, &18, &48, &18, &80, &cc, &16    ; b443: 80 39 18... .9.
    equb   0,   0, &80, &34, &18,   0,   0, &80    ; b44b: 00 00 80... ...
    equb &8f, &17,   0,   0, &80, &45, &17,   0    ; b453: 8f 17 00... ...
    equb   0, &80, &e6, &16,   0,   0, &80, &18    ; b45b: 00 80 e6... ...
    equb &0a, &e1, &16,   0,   7,   2, &0a,   0    ; b463: 0a e1 16... ...
    equb   0, &53, &80, &66, &18,   0,   0, &80    ; b46b: 00 53 80... .S.
    equb &6d, &18, &7c, &18, &80, &e3, &0f,   0    ; b473: 6d 18 7c... m.|
    equb   0, &80, &77, &18, &d0, &18, &80, &15    ; b47b: 00 80 77... ..w
    equb &0b, &bc, &18, &80, &d7, &0e, &b7, &18    ; b483: 0b bc 18... ...
    equb &80, &fb, &0b, &b2, &18, &80, &72, &0a    ; b48b: 80 fb 0b... ...
    equb &95, &18, &80, &66, &18, &ad, &18, &80    ; b493: 95 18 80... ...
    equb &58, &0d, &9f, &18, &80, &66, &18, &a8    ; b49b: 58 0d 9f... X..
    equb &18,   4,   4,   1,   0, &80, &a4, &18    ; b4a3: 18 04 04... ...
    equb   0,   0, &80, &9a, &18,   0,   0, &80    ; b4ab: 00 00 80... ...
    equb &90, &18,   0,   0, &80, &8b, &18,   0    ; b4b3: 90 18 00... ...
    equb   0, &80, &86, &18, &cb, &18, &80, &ef    ; b4bb: 00 80 86... ...
    equb &0f, &c6, &18, &80, &9a, &0e,   0,   0    ; b4c3: 0f c6 18... ...
    equb &80, &c1, &18,   0,   0, &80, &81, &18    ; b4cb: 80 c1 18... ...
    equb   0,   0, &80, &18, &0a, &72, &18, &80    ; b4d3: 00 00 80... ...
    equb &0e, &0c, &f4, &18                        ; b4db: 0e 0c f4... ...

    equb CHARF, &0b                                ; b4df: 00 0b       ..
    equw &0a02                                     ; b4e1: 02 0a       ..
    equw     0                                     ; b4e3: 00 00       ..
    equs "IMAGE"                                   ; b4e5: 49 4d 41... IMA

    equb LISTF, &df                                ; b4ea: 80 df       ..
    equw &0018                                     ; b4ec: 18 00       ..
    equw &8000                                     ; b4ee: 00 80       ..
    equs "-"                                       ; b4f0: 2d          -
    equb &0a, &ea, &18, &80, &ef, &18              ; b4f1: 0a ea 18... ...
.unused3
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b4f7: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; b4ff: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b507: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b50f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b517: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; b51f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b527: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b52f: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b537: 00 00 00... ...
    equb   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b53f: 00 ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b547: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b54f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b557: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; b55f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b567: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b56f: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b577: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; b57f: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b587: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b58f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b597: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; b59f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b5a7: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b5af: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b5b7: 00 00 00... ...
    equb   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b5bf: 00 ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b5c7: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b5cf: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b5d7: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; b5df: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b5e7: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b5ef: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b5f7: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; b5ff: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b607: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b60f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b617: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; b61f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b627: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b62f: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b637: 00 00 00... ...
    equb   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b63f: 00 ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b647: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b64f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b657: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; b65f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b667: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b66f: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b677: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; b67f: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b687: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b68f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b697: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; b69f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b6a7: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b6af: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b6b7: 00 00 00... ...
    equb   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b6bf: 00 ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b6c7: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b6cf: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b6d7: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; b6df: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b6e7: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b6ef: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b6f7: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; b6ff: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b707: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b70f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b717: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; b71f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b727: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b72f: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b737: 00 00 00... ...
    equb   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b73f: 00 ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b747: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b74f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b757: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; b75f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b767: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b76f: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b777: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; b77f: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b787: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b78f: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b797: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; b79f: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b7a7: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b7af: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b7b7: 00 00 00... ...
    equb   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b7bf: 00 ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b7c7: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b7cf: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; b7d7: ff ff ff... ...
    equb &ff,   0,   0,   0,   0,   0,   0,   0    ; b7df: ff 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b7e7: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b7ef: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; b7f7: 00 00 00... ...
    equb   0                                       ; b7ff: 00          .

; relocation table (entries point to high bytes of addresses)
MOVE_OFFSET = HILISP-LISVAL
.RELTAB
    equw MOVE_OFFSET + $8002                       ; b800: 02 d7       ..
    equw MOVE_OFFSET + $8005                       ; b802: 05 d7       ..
    equw MOVE_OFFSET + $8050                       ; b804: 50 d7       P.
    equw MOVE_OFFSET + $807b                       ; b806: 7b d7       {.
    equw MOVE_OFFSET + $80a3                       ; b808: a3 d7       ..
    equw MOVE_OFFSET + $80a9                       ; b80a: a9 d7       ..
    equw MOVE_OFFSET + $80b5                       ; b80c: b5 d7       ..
    equw MOVE_OFFSET + $80b8                       ; b80e: b8 d7       ..
    equw MOVE_OFFSET + $80c5                       ; b810: c5 d7       ..
    equw MOVE_OFFSET + $80fc                       ; b812: fc d7       ..
    equw MOVE_OFFSET + $8132                       ; b814: 32 d8       2.
    equw MOVE_OFFSET + $8149                       ; b816: 49 d8       I.
    equw MOVE_OFFSET + $8284                       ; b818: 84 d9       ..
    equw MOVE_OFFSET + $8291                       ; b81a: 91 d9       ..
    equw MOVE_OFFSET + $8294                       ; b81c: 94 d9       ..
    equw MOVE_OFFSET + $829e                       ; b81e: 9e d9       ..
    equw MOVE_OFFSET + $82b3                       ; b820: b3 d9       ..
    equw MOVE_OFFSET + $82bb                       ; b822: bb d9       ..
    equw MOVE_OFFSET + $82be                       ; b824: be d9       ..
    equw MOVE_OFFSET + $82c2                       ; b826: c2 d9       ..
    equw MOVE_OFFSET + $82d8                       ; b828: d8 d9       ..
    equw MOVE_OFFSET + $82dd                       ; b82a: dd d9       ..
    equw MOVE_OFFSET + $82e0                       ; b82c: e0 d9       ..
    equw MOVE_OFFSET + $82e3                       ; b82e: e3 d9       ..
    equw MOVE_OFFSET + $82e8                       ; b830: e8 d9       ..
    equw MOVE_OFFSET + $82eb                       ; b832: eb d9       ..
    equw MOVE_OFFSET + $82ee                       ; b834: ee d9       ..
    equw MOVE_OFFSET + $83af                       ; b836: af da       ..
    equw MOVE_OFFSET + $8402                       ; b838: 02 db       ..
    equw MOVE_OFFSET + $8475                       ; b83a: 75 db       u.
    equw MOVE_OFFSET + $84bb                       ; b83c: bb db       ..
    equw MOVE_OFFSET + $84e3                       ; b83e: e3 db       ..
    equw MOVE_OFFSET + $84e6                       ; b840: e6 db       ..
    equw MOVE_OFFSET + $84fb                       ; b842: fb db       ..
    equw MOVE_OFFSET + $8502                       ; b844: 02 dc       ..
    equw MOVE_OFFSET + $8508                       ; b846: 08 dc       ..
    equw MOVE_OFFSET + $8538                       ; b848: 38 dc       8.
    equw MOVE_OFFSET + $853b                       ; b84a: 3b dc       ;.
    equw MOVE_OFFSET + $8571                       ; b84c: 71 dc       q.
    equw MOVE_OFFSET + $858a                       ; b84e: 8a dc       ..
    equw MOVE_OFFSET + $858d                       ; b850: 8d dc       ..
    equw MOVE_OFFSET + $8590                       ; b852: 90 dc       ..
    equw MOVE_OFFSET + $8593                       ; b854: 93 dc       ..
    equw MOVE_OFFSET + $8596                       ; b856: 96 dc       ..
    equw MOVE_OFFSET + $85c9                       ; b858: c9 dc       ..
    equw MOVE_OFFSET + $85e5                       ; b85a: e5 dc       ..
    equw MOVE_OFFSET + $8636                       ; b85c: 36 dd       6.
    equw MOVE_OFFSET + $869a                       ; b85e: 9a dd       ..
    equw MOVE_OFFSET + $86b5                       ; b860: b5 dd       ..
    equw MOVE_OFFSET + $86b8                       ; b862: b8 dd       ..
    equw MOVE_OFFSET + $86c1                       ; b864: c1 dd       ..
    equw MOVE_OFFSET + $8710                       ; b866: 10 de       ..
    equw MOVE_OFFSET + $8713                       ; b868: 13 de       ..
    equw MOVE_OFFSET + $872d                       ; b86a: 2d de       -.
    equw MOVE_OFFSET + $873a                       ; b86c: 3a de       :.
    equw MOVE_OFFSET + $8755                       ; b86e: 55 de       U.
    equw MOVE_OFFSET + $8762                       ; b870: 62 de       b.
    equw MOVE_OFFSET + $876b                       ; b872: 6b de       k.
    equw MOVE_OFFSET + $879c                       ; b874: 9c de       ..
    equw MOVE_OFFSET + $87d5                       ; b876: d5 de       ..
    equw MOVE_OFFSET + $87d8                       ; b878: d8 de       ..
    equw MOVE_OFFSET + $87f4                       ; b87a: f4 de       ..
    equw MOVE_OFFSET + $87f7                       ; b87c: f7 de       ..
    equw MOVE_OFFSET + $880d                       ; b87e: 0d df       ..
    equw MOVE_OFFSET + $8822                       ; b880: 22 df       ".
    equw MOVE_OFFSET + $8825                       ; b882: 25 df       %.
    equw MOVE_OFFSET + $8834                       ; b884: 34 df       4.
    equw MOVE_OFFSET + $8847                       ; b886: 47 df       G.
    equw MOVE_OFFSET + $884e                       ; b888: 4e df       N.
    equw MOVE_OFFSET + $8857                       ; b88a: 57 df       W.
    equw MOVE_OFFSET + $885c                       ; b88c: 5c df       \.
    equw MOVE_OFFSET + $8861                       ; b88e: 61 df       a.
    equw MOVE_OFFSET + $8866                       ; b890: 66 df       f.
    equw MOVE_OFFSET + $8871                       ; b892: 71 df       q.
    equw MOVE_OFFSET + $887c                       ; b894: 7c df       |.
    equw MOVE_OFFSET + $8883                       ; b896: 83 df       ..
    equw MOVE_OFFSET + $8893                       ; b898: 93 df       ..
    equw MOVE_OFFSET + $8896                       ; b89a: 96 df       ..
    equw MOVE_OFFSET + $88c0                       ; b89c: c0 df       ..
    equw MOVE_OFFSET + $88c7                       ; b89e: c7 df       ..
    equw MOVE_OFFSET + $88ca                       ; b8a0: ca df       ..
    equw MOVE_OFFSET + $88d8                       ; b8a2: d8 df       ..
    equw MOVE_OFFSET + $88db                       ; b8a4: db df       ..
    equw MOVE_OFFSET + $88de                       ; b8a6: de df       ..
    equw MOVE_OFFSET + $88e1                       ; b8a8: e1 df       ..
    equw MOVE_OFFSET + $88e4                       ; b8aa: e4 df       ..
    equw MOVE_OFFSET + $88e7                       ; b8ac: e7 df       ..
    equw MOVE_OFFSET + $88f4                       ; b8ae: f4 df       ..
    equw MOVE_OFFSET + $8913                       ; b8b0: 13 e0       ..
    equw MOVE_OFFSET + $894d                       ; b8b2: 4d e0       M.
    equw MOVE_OFFSET + $89b8                       ; b8b4: b8 e0       ..
    equw MOVE_OFFSET + $89c5                       ; b8b6: c5 e0       ..
    equw MOVE_OFFSET + $89f1                       ; b8b8: f1 e0       ..
    equw MOVE_OFFSET + $8a4d                       ; b8ba: 4d e1       M.
    equw MOVE_OFFSET + $8a54                       ; b8bc: 54 e1       T.
    equw MOVE_OFFSET + $8a9e                       ; b8be: 9e e1       ..
    equw MOVE_OFFSET + $8aa8                       ; b8c0: a8 e1       ..
    equw MOVE_OFFSET + $8aad                       ; b8c2: ad e1       ..
    equw MOVE_OFFSET + $8abb                       ; b8c4: bb e1       ..
    equw MOVE_OFFSET + $8ad9                       ; b8c6: d9 e1       ..
    equw MOVE_OFFSET + $8ade                       ; b8c8: de e1       ..
    equw MOVE_OFFSET + $8aeb                       ; b8ca: eb e1       ..
    equw MOVE_OFFSET + $8af0                       ; b8cc: f0 e1       ..
    equw MOVE_OFFSET + $8af4                       ; b8ce: f4 e1       ..
    equw MOVE_OFFSET + $8b00                       ; b8d0: 00 e2       ..
    equw MOVE_OFFSET + $8b03                       ; b8d2: 03 e2       ..
    equw MOVE_OFFSET + $8b13                       ; b8d4: 13 e2       ..
    equw MOVE_OFFSET + $8b18                       ; b8d6: 18 e2       ..
    equw MOVE_OFFSET + $8b25                       ; b8d8: 25 e2       %.
    equw MOVE_OFFSET + $8b28                       ; b8da: 28 e2       (.
    equw MOVE_OFFSET + $8b49                       ; b8dc: 49 e2       I.
    equw MOVE_OFFSET + $8b58                       ; b8de: 58 e2       X.
    equw MOVE_OFFSET + $8b6e                       ; b8e0: 6e e2       n.
    equw MOVE_OFFSET + $8b88                       ; b8e2: 88 e2       ..
    equw MOVE_OFFSET + $8b93                       ; b8e4: 93 e2       ..
    equw MOVE_OFFSET + $8b9e                       ; b8e6: 9e e2       ..
    equw MOVE_OFFSET + $8ba1                       ; b8e8: a1 e2       ..
    equw MOVE_OFFSET + $8bb0                       ; b8ea: b0 e2       ..
    equw MOVE_OFFSET + $8bb3                       ; b8ec: b3 e2       ..
    equw MOVE_OFFSET + $8bb6                       ; b8ee: b6 e2       ..
    equw MOVE_OFFSET + $8bcd                       ; b8f0: cd e2       ..
    equw MOVE_OFFSET + $8bd0                       ; b8f2: d0 e2       ..
    equw MOVE_OFFSET + $8bd5                       ; b8f4: d5 e2       ..
    equw MOVE_OFFSET + $8bd8                       ; b8f6: d8 e2       ..
    equw MOVE_OFFSET + $8bff                       ; b8f8: ff e2       ..
    equw MOVE_OFFSET + $8c04                       ; b8fa: 04 e3       ..
    equw MOVE_OFFSET + $8c12                       ; b8fc: 12 e3       ..
    equw MOVE_OFFSET + $8c15                       ; b8fe: 15 e3       ..
    equw MOVE_OFFSET + $8c23                       ; b900: 23 e3       #.
    equw MOVE_OFFSET + $8c26                       ; b902: 26 e3       &.
    equw MOVE_OFFSET + $8c2b                       ; b904: 2b e3       +.
    equw MOVE_OFFSET + $8c33                       ; b906: 33 e3       3.
    equw MOVE_OFFSET + $8c37                       ; b908: 37 e3       7.
    equw MOVE_OFFSET + $8c3a                       ; b90a: 3a e3       :.
    equw MOVE_OFFSET + $8c4f                       ; b90c: 4f e3       O.
    equw MOVE_OFFSET + $8c56                       ; b90e: 56 e3       V.
    equw MOVE_OFFSET + $8c6c                       ; b910: 6c e3       l.
    equw MOVE_OFFSET + $8c87                       ; b912: 87 e3       ..
    equw MOVE_OFFSET + $8cab                       ; b914: ab e3       ..
    equw MOVE_OFFSET + $8ccc                       ; b916: cc e3       ..
    equw MOVE_OFFSET + $8ccf                       ; b918: cf e3       ..
    equw MOVE_OFFSET + $8cd2                       ; b91a: d2 e3       ..
    equw MOVE_OFFSET + $8cdf                       ; b91c: df e3       ..
    equw MOVE_OFFSET + $8cf4                       ; b91e: f4 e3       ..
    equw MOVE_OFFSET + $8cf7                       ; b920: f7 e3       ..
    equw MOVE_OFFSET + $8d16                       ; b922: 16 e4       ..
    equw MOVE_OFFSET + $8d27                       ; b924: 27 e4       '.
    equw MOVE_OFFSET + $8d2e                       ; b926: 2e e4       ..
    equw MOVE_OFFSET + $8d31                       ; b928: 31 e4       1.
    equw MOVE_OFFSET + $8d3a                       ; b92a: 3a e4       :.
    equw MOVE_OFFSET + $8d43                       ; b92c: 43 e4       C.
    equw MOVE_OFFSET + $8d4c                       ; b92e: 4c e4       L.
    equw MOVE_OFFSET + $8d4f                       ; b930: 4f e4       O.
    equw MOVE_OFFSET + $8d52                       ; b932: 52 e4       R.
    equw MOVE_OFFSET + $8daf                       ; b934: af e4       ..
    equw MOVE_OFFSET + $8dbe                       ; b936: be e4       ..
    equw MOVE_OFFSET + $8dc3                       ; b938: c3 e4       ..
    equw MOVE_OFFSET + $8dc6                       ; b93a: c6 e4       ..
    equw MOVE_OFFSET + $8dde                       ; b93c: de e4       ..
    equw MOVE_OFFSET + $8de1                       ; b93e: e1 e4       ..
    equw MOVE_OFFSET + $8de8                       ; b940: e8 e4       ..
    equw MOVE_OFFSET + $8def                       ; b942: ef e4       ..
    equw MOVE_OFFSET + $8df2                       ; b944: f2 e4       ..
    equw MOVE_OFFSET + $8df9                       ; b946: f9 e4       ..
    equw MOVE_OFFSET + $8e12                       ; b948: 12 e5       ..
    equw MOVE_OFFSET + $8e1d                       ; b94a: 1d e5       ..
    equw MOVE_OFFSET + $8e20                       ; b94c: 20 e5        .
    equw MOVE_OFFSET + $8e33                       ; b94e: 33 e5       3.
    equw MOVE_OFFSET + $8e36                       ; b950: 36 e5       6.
    equw MOVE_OFFSET + $8e39                       ; b952: 39 e5       9.
    equw MOVE_OFFSET + $8e3c                       ; b954: 3c e5       <.
    equw MOVE_OFFSET + $8e49                       ; b956: 49 e5       I.
    equw MOVE_OFFSET + $8e4c                       ; b958: 4c e5       L.
    equw MOVE_OFFSET + $8e5a                       ; b95a: 5a e5       Z.
    equw MOVE_OFFSET + $8e7a                       ; b95c: 7a e5       z.
    equw MOVE_OFFSET + $8ea2                       ; b95e: a2 e5       ..
    equw MOVE_OFFSET + $8ea5                       ; b960: a5 e5       ..
    equw MOVE_OFFSET + $8ebf                       ; b962: bf e5       ..
    equw MOVE_OFFSET + $8ecc                       ; b964: cc e5       ..
    equw MOVE_OFFSET + $8ee7                       ; b966: e7 e5       ..
    equw MOVE_OFFSET + $8eea                       ; b968: ea e5       ..
    equw MOVE_OFFSET + $8f09                       ; b96a: 09 e6       ..
    equw MOVE_OFFSET + $8f1e                       ; b96c: 1e e6       ..
    equw MOVE_OFFSET + $8f21                       ; b96e: 21 e6       !.
    equw MOVE_OFFSET + $8f5e                       ; b970: 5e e6       ^.
    equw MOVE_OFFSET + $8f73                       ; b972: 73 e6       s.
    equw MOVE_OFFSET + $8f76                       ; b974: 76 e6       v.
    equw MOVE_OFFSET + $8f79                       ; b976: 79 e6       y.
    equw MOVE_OFFSET + $8f7c                       ; b978: 7c e6       |.
    equw MOVE_OFFSET + $8f7f                       ; b97a: 7f e6       ..
    equw MOVE_OFFSET + $8f8b                       ; b97c: 8b e6       ..
    equw MOVE_OFFSET + $8fbc                       ; b97e: bc e6       ..
    equw MOVE_OFFSET + $8fcb                       ; b980: cb e6       ..
    equw MOVE_OFFSET + $8fcd                       ; b982: cd e6       ..
    equw MOVE_OFFSET + $8fd9                       ; b984: d9 e6       ..
    equw MOVE_OFFSET + $8fe6                       ; b986: e6 e6       ..
    equw MOVE_OFFSET + $8fe9                       ; b988: e9 e6       ..
    equw MOVE_OFFSET + $8ff8                       ; b98a: f8 e6       ..
    equw MOVE_OFFSET + $8ffb                       ; b98c: fb e6       ..
    equw MOVE_OFFSET + $9006                       ; b98e: 06 e7       ..
    equw MOVE_OFFSET + $9013                       ; b990: 13 e7       ..
    equw MOVE_OFFSET + $9037                       ; b992: 37 e7       7.
    equw MOVE_OFFSET + $903c                       ; b994: 3c e7       <.
    equw MOVE_OFFSET + $9054                       ; b996: 54 e7       T.
    equw MOVE_OFFSET + $9074                       ; b998: 74 e7       t.
    equw MOVE_OFFSET + $9097                       ; b99a: 97 e7       ..
    equw MOVE_OFFSET + $909a                       ; b99c: 9a e7       ..
    equw MOVE_OFFSET + $90a5                       ; b99e: a5 e7       ..
    equw MOVE_OFFSET + $90bd                       ; b9a0: bd e7       ..
    equw MOVE_OFFSET + $9109                       ; b9a2: 09 e8       ..
    equw MOVE_OFFSET + $910e                       ; b9a4: 0e e8       ..
    equw MOVE_OFFSET + $9119                       ; b9a6: 19 e8       ..
    equw MOVE_OFFSET + $9120                       ; b9a8: 20 e8        .
    equw MOVE_OFFSET + $9123                       ; b9aa: 23 e8       #.
    equw MOVE_OFFSET + $912c                       ; b9ac: 2c e8       ,.
    equw MOVE_OFFSET + $913c                       ; b9ae: 3c e8       <.
    equw MOVE_OFFSET + $9176                       ; b9b0: 76 e8       v.
    equw MOVE_OFFSET + $9179                       ; b9b2: 79 e8       y.
    equw MOVE_OFFSET + $9184                       ; b9b4: 84 e8       ..
    equw MOVE_OFFSET + $918d                       ; b9b6: 8d e8       ..
    equw MOVE_OFFSET + $91a7                       ; b9b8: a7 e8       ..
    equw MOVE_OFFSET + $91b0                       ; b9ba: b0 e8       ..
    equw MOVE_OFFSET + $91c0                       ; b9bc: c0 e8       ..
    equw MOVE_OFFSET + $91c3                       ; b9be: c3 e8       ..
    equw MOVE_OFFSET + $91c6                       ; b9c0: c6 e8       ..
    equw MOVE_OFFSET + $91db                       ; b9c2: db e8       ..
    equw MOVE_OFFSET + $91de                       ; b9c4: de e8       ..
    equw MOVE_OFFSET + $91f1                       ; b9c6: f1 e8       ..
    equw MOVE_OFFSET + $91f4                       ; b9c8: f4 e8       ..
    equw MOVE_OFFSET + $91f7                       ; b9ca: f7 e8       ..
    equw MOVE_OFFSET + $91ff                       ; b9cc: ff e8       ..
    equw MOVE_OFFSET + $9202                       ; b9ce: 02 e9       ..
    equw MOVE_OFFSET + $922b                       ; b9d0: 2b e9       +.
    equw MOVE_OFFSET + $922e                       ; b9d2: 2e e9       ..
    equw MOVE_OFFSET + $925c                       ; b9d4: 5c e9       \.
    equw MOVE_OFFSET + $925f                       ; b9d6: 5f e9       _.
    equw MOVE_OFFSET + $9288                       ; b9d8: 88 e9       ..
    equw MOVE_OFFSET + $929b                       ; b9da: 9b e9       ..
    equw MOVE_OFFSET + $92a6                       ; b9dc: a6 e9       ..
    equw MOVE_OFFSET + $92b4                       ; b9de: b4 e9       ..
    equw MOVE_OFFSET + $92b7                       ; b9e0: b7 e9       ..
    equw MOVE_OFFSET + $92d3                       ; b9e2: d3 e9       ..
    equw MOVE_OFFSET + $92df                       ; b9e4: df e9       ..
    equw MOVE_OFFSET + $92e2                       ; b9e6: e2 e9       ..
    equw MOVE_OFFSET + $92ee                       ; b9e8: ee e9       ..
    equw MOVE_OFFSET + $930a                       ; b9ea: 0a ea       ..
    equw MOVE_OFFSET + $930d                       ; b9ec: 0d ea       ..
    equw MOVE_OFFSET + $9336                       ; b9ee: 36 ea       6.
    equw MOVE_OFFSET + $934f                       ; b9f0: 4f ea       O.
    equw MOVE_OFFSET + $9354                       ; b9f2: 54 ea       T.
    equw MOVE_OFFSET + $93be                       ; b9f4: be ea       ..
    equw MOVE_OFFSET + $93d5                       ; b9f6: d5 ea       ..
    equw MOVE_OFFSET + $93d8                       ; b9f8: d8 ea       ..
    equw MOVE_OFFSET + $93db                       ; b9fa: db ea       ..
    equw MOVE_OFFSET + $93eb                       ; b9fc: eb ea       ..
    equw MOVE_OFFSET + $93ee                       ; b9fe: ee ea       ..
    equw MOVE_OFFSET + $93f1                       ; ba00: f1 ea       ..
    equw MOVE_OFFSET + $9403                       ; ba02: 03 eb       ..
    equw MOVE_OFFSET + $9406                       ; ba04: 06 eb       ..
    equw MOVE_OFFSET + $9411                       ; ba06: 11 eb       ..
    equw MOVE_OFFSET + $9449                       ; ba08: 49 eb       I.
    equw MOVE_OFFSET + $944c                       ; ba0a: 4c eb       L.
    equw MOVE_OFFSET + $944f                       ; ba0c: 4f eb       O.
    equw MOVE_OFFSET + $9478                       ; ba0e: 78 eb       x.
    equw MOVE_OFFSET + $9486                       ; ba10: 86 eb       ..
    equw MOVE_OFFSET + $94b5                       ; ba12: b5 eb       ..
    equw MOVE_OFFSET + $94b8                       ; ba14: b8 eb       ..
    equw MOVE_OFFSET + $94bb                       ; ba16: bb eb       ..
    equw MOVE_OFFSET + $9538                       ; ba18: 38 ec       8.
    equw MOVE_OFFSET + $9574                       ; ba1a: 74 ec       t.
    equw MOVE_OFFSET + $9577                       ; ba1c: 77 ec       w.
    equw MOVE_OFFSET + $957a                       ; ba1e: 7a ec       z.
    equw MOVE_OFFSET + $9594                       ; ba20: 94 ec       ..
    equw MOVE_OFFSET + $9597                       ; ba22: 97 ec       ..
    equw MOVE_OFFSET + $959c                       ; ba24: 9c ec       ..
    equw MOVE_OFFSET + $959f                       ; ba26: 9f ec       ..
    equw MOVE_OFFSET + $95a4                       ; ba28: a4 ec       ..
    equw MOVE_OFFSET + $95a7                       ; ba2a: a7 ec       ..
    equw MOVE_OFFSET + $95ac                       ; ba2c: ac ec       ..
    equw MOVE_OFFSET + $95be                       ; ba2e: be ec       ..
    equw MOVE_OFFSET + $95c1                       ; ba30: c1 ec       ..
    equw MOVE_OFFSET + $95f6                       ; ba32: f6 ec       ..
    equw MOVE_OFFSET + $9604                       ; ba34: 04 ed       ..
    equw MOVE_OFFSET + $960d                       ; ba36: 0d ed       ..
    equw MOVE_OFFSET + $9610                       ; ba38: 10 ed       ..
    equw MOVE_OFFSET + $9613                       ; ba3a: 13 ed       ..
    equw MOVE_OFFSET + $9624                       ; ba3c: 24 ed       $.
    equw MOVE_OFFSET + $962b                       ; ba3e: 2b ed       +.
    equw MOVE_OFFSET + $962e                       ; ba40: 2e ed       ..
    equw MOVE_OFFSET + $9631                       ; ba42: 31 ed       1.
    equw MOVE_OFFSET + $9634                       ; ba44: 34 ed       4.
    equw MOVE_OFFSET + $9644                       ; ba46: 44 ed       D.
    equw MOVE_OFFSET + $9647                       ; ba48: 47 ed       G.
    equw MOVE_OFFSET + $966e                       ; ba4a: 6e ed       n.
    equw MOVE_OFFSET + $96ac                       ; ba4c: ac ed       ..
    equw MOVE_OFFSET + $96b9                       ; ba4e: b9 ed       ..
    equw MOVE_OFFSET + $96d4                       ; ba50: d4 ed       ..
    equw MOVE_OFFSET + $96e7                       ; ba52: e7 ed       ..
    equw MOVE_OFFSET + $9704                       ; ba54: 04 ee       ..
    equw MOVE_OFFSET + $9720                       ; ba56: 20 ee        .
    equw MOVE_OFFSET + $9751                       ; ba58: 51 ee       Q.
    equw MOVE_OFFSET + $9754                       ; ba5a: 54 ee       T.
    equw MOVE_OFFSET + $975f                       ; ba5c: 5f ee       _.
    equw MOVE_OFFSET + $9762                       ; ba5e: 62 ee       b.
    equw MOVE_OFFSET + $976f                       ; ba60: 6f ee       o.
    equw MOVE_OFFSET + $9772                       ; ba62: 72 ee       r.
    equw MOVE_OFFSET + $9775                       ; ba64: 75 ee       u.
    equw MOVE_OFFSET + $978a                       ; ba66: 8a ee       ..
    equw MOVE_OFFSET + $97d4                       ; ba68: d4 ee       ..
    equw MOVE_OFFSET + $97f2                       ; ba6a: f2 ee       ..
    equw MOVE_OFFSET + $97f5                       ; ba6c: f5 ee       ..
    equw MOVE_OFFSET + $980e                       ; ba6e: 0e ef       ..
    equw MOVE_OFFSET + $9812                       ; ba70: 12 ef       ..
    equw MOVE_OFFSET + $9816                       ; ba72: 16 ef       ..
    equw MOVE_OFFSET + $981a                       ; ba74: 1a ef       ..
    equw MOVE_OFFSET + $981d                       ; ba76: 1d ef       ..
    equw MOVE_OFFSET + $9822                       ; ba78: 22 ef       ".
    equw MOVE_OFFSET + $9825                       ; ba7a: 25 ef       %.
    equw MOVE_OFFSET + $9849                       ; ba7c: 49 ef       I.
    equw MOVE_OFFSET + $9860                       ; ba7e: 60 ef       `.
    equw MOVE_OFFSET + $988a                       ; ba80: 8a ef       ..
    equw MOVE_OFFSET + $988d                       ; ba82: 8d ef       ..
    equw MOVE_OFFSET + $98c1                       ; ba84: c1 ef       ..
    equw MOVE_OFFSET + $98c4                       ; ba86: c4 ef       ..
    equw MOVE_OFFSET + $98c7                       ; ba88: c7 ef       ..
    equw MOVE_OFFSET + $98cb                       ; ba8a: cb ef       ..
    equw MOVE_OFFSET + $98d4                       ; ba8c: d4 ef       ..
    equw MOVE_OFFSET + $98f0                       ; ba8e: f0 ef       ..
    equw MOVE_OFFSET + $98f3                       ; ba90: f3 ef       ..
    equw MOVE_OFFSET + $98fe                       ; ba92: fe ef       ..
    equw MOVE_OFFSET + $9910                       ; ba94: 10 f0       ..
    equw MOVE_OFFSET + $9913                       ; ba96: 13 f0       ..
    equw MOVE_OFFSET + $992f                       ; ba98: 2f f0       /.
    equw MOVE_OFFSET + $993c                       ; ba9a: 3c f0       <.
    equw MOVE_OFFSET + $9946                       ; ba9c: 46 f0       F.
    equw MOVE_OFFSET + $9953                       ; ba9e: 53 f0       S.
    equw MOVE_OFFSET + $9959                       ; baa0: 59 f0       Y.
    equw MOVE_OFFSET + $9962                       ; baa2: 62 f0       b.
    equw MOVE_OFFSET + $9965                       ; baa4: 65 f0       e.
    equw MOVE_OFFSET + $9968                       ; baa6: 68 f0       h.
    equw MOVE_OFFSET + $998b                       ; baa8: 8b f0       ..
    equw MOVE_OFFSET + $999e                       ; baaa: 9e f0       ..
    equw MOVE_OFFSET + $99a1                       ; baac: a1 f0       ..
    equw MOVE_OFFSET + $99a4                       ; baae: a4 f0       ..
    equw MOVE_OFFSET + $99c1                       ; bab0: c1 f0       ..
    equw MOVE_OFFSET + $99c4                       ; bab2: c4 f0       ..
    equw MOVE_OFFSET + $99cd                       ; bab4: cd f0       ..
    equw MOVE_OFFSET + $99ea                       ; bab6: ea f0       ..
    equw MOVE_OFFSET + $99f4                       ; bab8: f4 f0       ..
    equw MOVE_OFFSET + $9a06                       ; baba: 06 f1       ..
    equw MOVE_OFFSET + $9a09                       ; babc: 09 f1       ..
    equw MOVE_OFFSET + $9a2c                       ; babe: 2c f1       ,.
    equw MOVE_OFFSET + $9a45                       ; bac0: 45 f1       E.
    equw MOVE_OFFSET + $9a48                       ; bac2: 48 f1       H.
    equw MOVE_OFFSET + $9a4b                       ; bac4: 4b f1       K.
    equw MOVE_OFFSET + $9a5d                       ; bac6: 5d f1       ].
    equw MOVE_OFFSET + $9a60                       ; bac8: 60 f1       `.
    equw MOVE_OFFSET + $9a63                       ; baca: 63 f1       c.
    equw MOVE_OFFSET + $9a8d                       ; bacc: 8d f1       ..
    equw MOVE_OFFSET + $9a90                       ; bace: 90 f1       ..
    equw MOVE_OFFSET + $9a93                       ; bad0: 93 f1       ..
    equw MOVE_OFFSET + $9abd                       ; bad2: bd f1       ..
    equw MOVE_OFFSET + $9aca                       ; bad4: ca f1       ..
    equw MOVE_OFFSET + $9ad5                       ; bad6: d5 f1       ..
    equw MOVE_OFFSET + $9b3a                       ; bad8: 3a f2       :.
    equw MOVE_OFFSET + $9b45                       ; bada: 45 f2       E.
    equw MOVE_OFFSET + $9b53                       ; badc: 53 f2       S.
    equw MOVE_OFFSET + $9b71                       ; bade: 71 f2       q.
    equw MOVE_OFFSET + $9b7c                       ; bae0: 7c f2       |.
    equw MOVE_OFFSET + $9b82                       ; bae2: 82 f2       ..
    equw MOVE_OFFSET + $9b97                       ; bae4: 97 f2       ..
    equw MOVE_OFFSET + $9bac                       ; bae6: ac f2       ..
    equw MOVE_OFFSET + $9bc2                       ; bae8: c2 f2       ..
    equw MOVE_OFFSET + $9bd5                       ; baea: d5 f2       ..
    equw MOVE_OFFSET + $9bda                       ; baec: da f2       ..
    equw MOVE_OFFSET + $9bf0                       ; baee: f0 f2       ..
    equw MOVE_OFFSET + $9bf3                       ; baf0: f3 f2       ..
    equw MOVE_OFFSET + $9c05                       ; baf2: 05 f3       ..
    equw MOVE_OFFSET + $9c15                       ; baf4: 15 f3       ..
    equw MOVE_OFFSET + $9c19                       ; baf6: 19 f3       ..
    equw MOVE_OFFSET + $9c21                       ; baf8: 21 f3       !.
    equw MOVE_OFFSET + $9c2f                       ; bafa: 2f f3       /.
    equw MOVE_OFFSET + $9c34                       ; bafc: 34 f3       4.
    equw MOVE_OFFSET + $9c52                       ; bafe: 52 f3       R.
    equw MOVE_OFFSET + $9ccb                       ; bb00: cb f3       ..
    equw MOVE_OFFSET + $9ceb                       ; bb02: eb f3       ..
    equw MOVE_OFFSET + $9cf4                       ; bb04: f4 f3       ..
    equw MOVE_OFFSET + $9cf7                       ; bb06: f7 f3       ..
    equw MOVE_OFFSET + $9d0f                       ; bb08: 0f f4       ..
    equw MOVE_OFFSET + $9d12                       ; bb0a: 12 f4       ..
    equw MOVE_OFFSET + $9d1f                       ; bb0c: 1f f4       ..
    equw MOVE_OFFSET + $9d31                       ; bb0e: 31 f4       1.
    equw MOVE_OFFSET + $9d74                       ; bb10: 74 f4       t.
    equw MOVE_OFFSET + $9d81                       ; bb12: 81 f4       ..
    equw MOVE_OFFSET + $9da4                       ; bb14: a4 f4       ..
    equw MOVE_OFFSET + $9da9                       ; bb16: a9 f4       ..
    equw MOVE_OFFSET + $9dac                       ; bb18: ac f4       ..
    equw MOVE_OFFSET + $9db1                       ; bb1a: b1 f4       ..
    equw MOVE_OFFSET + $9dc3                       ; bb1c: c3 f4       ..
    equw MOVE_OFFSET + $9dc8                       ; bb1e: c8 f4       ..
    equw MOVE_OFFSET + $9e81                       ; bb20: 81 f5       ..
    equw MOVE_OFFSET + $9eaa                       ; bb22: aa f5       ..
    equw MOVE_OFFSET + $9ed2                       ; bb24: d2 f5       ..
    equw MOVE_OFFSET + $9ed9                       ; bb26: d9 f5       ..
    equw MOVE_OFFSET + $9ee2                       ; bb28: e2 f5       ..
    equw MOVE_OFFSET + $9eeb                       ; bb2a: eb f5       ..
    equw MOVE_OFFSET + $9efd                       ; bb2c: fd f5       ..
    equw MOVE_OFFSET + $9f1b                       ; bb2e: 1b f6       ..
    equw MOVE_OFFSET + $9f3b                       ; bb30: 3b f6       ;.
    equw MOVE_OFFSET + $9f42                       ; bb32: 42 f6       B.
    equw MOVE_OFFSET + $9f66                       ; bb34: 66 f6       f.
    equw MOVE_OFFSET + $9f69                       ; bb36: 69 f6       i.
    equw MOVE_OFFSET + $9f6e                       ; bb38: 6e f6       n.
    equw MOVE_OFFSET + $9f73                       ; bb3a: 73 f6       s.
    equw MOVE_OFFSET + $9f82                       ; bb3c: 82 f6       ..
    equw MOVE_OFFSET + $9f91                       ; bb3e: 91 f6       ..
    equw MOVE_OFFSET + $9f94                       ; bb40: 94 f6       ..
    equw MOVE_OFFSET + $9fa4                       ; bb42: a4 f6       ..
    equw MOVE_OFFSET + $9fab                       ; bb44: ab f6       ..
    equw MOVE_OFFSET + $9fb5                       ; bb46: b5 f6       ..
    equw MOVE_OFFSET + $9fbf                       ; bb48: bf f6       ..
    equw MOVE_OFFSET + $9fc2                       ; bb4a: c2 f6       ..
    equw MOVE_OFFSET + $9fc6                       ; bb4c: c6 f6       ..
    equw MOVE_OFFSET + $9fc9                       ; bb4e: c9 f6       ..
    equw MOVE_OFFSET + $9fd7                       ; bb50: d7 f6       ..
    equw MOVE_OFFSET + $9fda                       ; bb52: da f6       ..
    equw MOVE_OFFSET + $9fdd                       ; bb54: dd f6       ..
    equw MOVE_OFFSET + $9fe0                       ; bb56: e0 f6       ..
    equw MOVE_OFFSET + $9fe3                       ; bb58: e3 f6       ..
    equw MOVE_OFFSET + $a004                       ; bb5a: 04 f7       ..
    equw MOVE_OFFSET + $a02d                       ; bb5c: 2d f7       -.
.unused4
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bb5e: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bb66: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bb6e: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bb76: 00 00 00... ...
    equb   0,   0,   0, &ff, &ff, &ff, &ff, &ff    ; bb7e: 00 00 00... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bb86: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bb8e: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bb96: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; bb9e: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bba6: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bbae: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bbb6: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; bbbe: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bbc6: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bbce: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bbd6: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; bbde: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bbe6: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bbee: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bbf6: 00 00 00... ...
    equb   0,   0,   0, &ff, &ff, &ff, &ff, &ff    ; bbfe: 00 00 00... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bc06: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bc0e: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bc16: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; bc1e: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bc26: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bc2e: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bc36: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; bc3e: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bc46: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bc4e: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bc56: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; bc5e: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bc66: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bc6e: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bc76: 00 00 00... ...
    equb   0,   0,   0, &ff, &ff, &ff, &ff, &ff    ; bc7e: 00 00 00... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bc86: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bc8e: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bc96: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; bc9e: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bca6: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bcae: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bcb6: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; bcbe: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bcc6: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bcce: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bcd6: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; bcde: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bce6: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bcee: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bcf6: 00 00 00... ...
    equb   0,   0,   0, &ff, &ff, &ff, &ff, &ff    ; bcfe: 00 00 00... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bd06: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bd0e: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bd16: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; bd1e: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bd26: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bd2e: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bd36: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; bd3e: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bd46: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bd4e: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bd56: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; bd5e: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bd66: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bd6e: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bd76: 00 00 00... ...
    equb   0,   0,   0, &ff, &ff, &ff, &ff, &ff    ; bd7e: 00 00 00... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bd86: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bd8e: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bd96: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; bd9e: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bda6: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bdae: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bdb6: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; bdbe: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bdc6: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bdce: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bdd6: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; bdde: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bde6: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bdee: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bdf6: 00 00 00... ...
    equb   0,   0,   0, &ff, &ff, &ff, &ff, &ff    ; bdfe: 00 00 00... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; be06: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; be0e: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; be16: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; be1e: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; be26: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; be2e: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; be36: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; be3e: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; be46: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; be4e: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; be56: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; be5e: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; be66: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; be6e: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; be76: 00 00 00... ...
    equb   0,   0,   0, &ff, &ff, &ff, &ff, &ff    ; be7e: 00 00 00... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; be86: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; be8e: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; be96: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; be9e: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bea6: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; beae: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; beb6: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; bebe: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bec6: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bece: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bed6: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; bede: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bee6: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; beee: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bef6: 00 00 00... ...
    equb   0,   0,   0, &ff, &ff, &ff, &ff, &ff    ; befe: 00 00 00... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bf06: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bf0e: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bf16: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; bf1e: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bf26: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bf2e: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bf36: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; bf3e: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bf46: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bf4e: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bf56: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; bf5e: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bf66: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bf6e: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bf76: 00 00 00... ...
    equb   0,   0,   0, &ff, &ff, &ff, &ff, &ff    ; bf7e: 00 00 00... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bf86: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bf8e: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bf96: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; bf9e: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bfa6: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bfae: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bfb6: 00 00 00... ...
    equb   0,   0, &ff, &ff, &ff, &ff, &ff, &ff    ; bfbe: 00 00 ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bfc6: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bfce: ff ff ff... ...
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff    ; bfd6: ff ff ff... ...
    equb &ff, &ff,   0,   0,   0,   0,   0,   0    ; bfde: ff ff 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bfe6: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bfee: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0    ; bff6: 00 00 00... ...
    equb   0,   0                                  ; bffe: 00 00       ..
.ROMTOP
.pydis_end
    assert &80+&0d == &8d
    assert &80+' ' == &a0
    assert &80+'#' == &a3
    assert &80+'L' == &cc
    assert &80+'y' == &f9
    assert ' ' == &20
    assert '!' == &21
    assert '(' == &28
    assert ')' == &29
    assert '-' == &2d
    assert '.' == &2e
    assert '0' == &30
    assert '=' == &3d
    assert 'C' == &43
    assert 'F' == &46
    assert 'G' == &47
    assert 'I' == &49
    assert 'L' == &4c
    assert 'P' == &50
    assert 'S' == &53
    assert 'W' == &57
    assert '[' == &5b
    assert '^' == &5e
    assert 'c' == &63
    assert (>(LISPEN-LISVAL-1))+1 == &21
    assert <(BACALL+1) == &dd
    assert <(DOSBUF) == &00
    assert <(ELFIN-1) == &c6
    assert <(GOSTR) == &31
    assert <(INCB) == &3e
    assert <(IODCB) == &16
    assert <(LISTR) == &39
    assert <(OSINFO) == &38
    assert <(OSWBUF) == &00
    assert <(PWORD) == &1b
    assert <(TIMEW) == &25
    assert <(TIMZER) == &76
    assert <ACL == &72
    assert <CTRUE == &11
    assert <DWARF == &eb
    assert <ERROR == &87
    assert <GCTIME == &20
    assert <HILISP == &00
    assert <HIWARM == &7b
    assert <KBD == &ff
    assert <LAMBDA == &18
    assert <LISPST == &00
    assert <NAMBUF == &00
    assert <NIL == &24
    assert <PRINGO+2 == &25
    assert <QUOTE == &2d
    assert <RELTAB == &00
    assert <TIMEW == &25
    assert <VECTAB == &00
    assert <VECTAB+2 == &02
    assert <WRITGO+2 == &eb
    assert <ZA == &02
    assert >(BACALL+1) == &8f
    assert >(DOSBUF) == &07
    assert >(ELFIN-1) == &9f
    assert >(GOSTR) == &82
    assert >(HILISP-LISVAL) == &57
    assert >(INCB) == &82
    assert >(IODCB) == &04
    assert >(LISTR) == &82
    assert >(OSINFO) == &04
    assert >(OSWBUF) == &06
    assert >(PWORD) == &04
    assert >(TIMEW) == &04
    assert >(TIMZER) == &82
    assert >DWARF == &9e
    assert >ERROR == &9e
    assert >GCTIME == &04
    assert >HILISP == &d7
    assert >HIWARM == &d9
    assert >KBD == &00
    assert >LISPST == &80
    assert >NAMBUF == &06
    assert >PRINGO == &8b
    assert >RELTAB == &b8
    assert >TIMEW == &04
    assert >VECTAB == &a4
    assert >WRITGO == &8a
    assert ACL == &72
    assert ARGINF == &90
    assert ARGOFF == &6b
    assert AUXL == &76
    assert BINDER == &32
    assert COLOFF == &3a
    assert CPYOFF-ROMHDR == &12
    assert DOSBUF == &0700
    assert ERROFF == &5d
    assert EVOFF == &00
    assert FROFF == &4c
    assert GCOFF == &33
    assert HLPOFF == &8e
    assert MOVE_OFFSET + $8002 == &d702
    assert MOVE_OFFSET + $8005 == &d705
    assert MOVE_OFFSET + $8050 == &d750
    assert MOVE_OFFSET + $807b == &d77b
    assert MOVE_OFFSET + $80a3 == &d7a3
    assert MOVE_OFFSET + $80a9 == &d7a9
    assert MOVE_OFFSET + $80b5 == &d7b5
    assert MOVE_OFFSET + $80b8 == &d7b8
    assert MOVE_OFFSET + $80c5 == &d7c5
    assert MOVE_OFFSET + $80fc == &d7fc
    assert MOVE_OFFSET + $8132 == &d832
    assert MOVE_OFFSET + $8149 == &d849
    assert MOVE_OFFSET + $8284 == &d984
    assert MOVE_OFFSET + $8291 == &d991
    assert MOVE_OFFSET + $8294 == &d994
    assert MOVE_OFFSET + $829e == &d99e
    assert MOVE_OFFSET + $82b3 == &d9b3
    assert MOVE_OFFSET + $82bb == &d9bb
    assert MOVE_OFFSET + $82be == &d9be
    assert MOVE_OFFSET + $82c2 == &d9c2
    assert MOVE_OFFSET + $82d8 == &d9d8
    assert MOVE_OFFSET + $82dd == &d9dd
    assert MOVE_OFFSET + $82e0 == &d9e0
    assert MOVE_OFFSET + $82e3 == &d9e3
    assert MOVE_OFFSET + $82e8 == &d9e8
    assert MOVE_OFFSET + $82eb == &d9eb
    assert MOVE_OFFSET + $82ee == &d9ee
    assert MOVE_OFFSET + $83af == &daaf
    assert MOVE_OFFSET + $8402 == &db02
    assert MOVE_OFFSET + $8475 == &db75
    assert MOVE_OFFSET + $84bb == &dbbb
    assert MOVE_OFFSET + $84e3 == &dbe3
    assert MOVE_OFFSET + $84e6 == &dbe6
    assert MOVE_OFFSET + $84fb == &dbfb
    assert MOVE_OFFSET + $8502 == &dc02
    assert MOVE_OFFSET + $8508 == &dc08
    assert MOVE_OFFSET + $8538 == &dc38
    assert MOVE_OFFSET + $853b == &dc3b
    assert MOVE_OFFSET + $8571 == &dc71
    assert MOVE_OFFSET + $858a == &dc8a
    assert MOVE_OFFSET + $858d == &dc8d
    assert MOVE_OFFSET + $8590 == &dc90
    assert MOVE_OFFSET + $8593 == &dc93
    assert MOVE_OFFSET + $8596 == &dc96
    assert MOVE_OFFSET + $85c9 == &dcc9
    assert MOVE_OFFSET + $85e5 == &dce5
    assert MOVE_OFFSET + $8636 == &dd36
    assert MOVE_OFFSET + $869a == &dd9a
    assert MOVE_OFFSET + $86b5 == &ddb5
    assert MOVE_OFFSET + $86b8 == &ddb8
    assert MOVE_OFFSET + $86c1 == &ddc1
    assert MOVE_OFFSET + $8710 == &de10
    assert MOVE_OFFSET + $8713 == &de13
    assert MOVE_OFFSET + $872d == &de2d
    assert MOVE_OFFSET + $873a == &de3a
    assert MOVE_OFFSET + $8755 == &de55
    assert MOVE_OFFSET + $8762 == &de62
    assert MOVE_OFFSET + $876b == &de6b
    assert MOVE_OFFSET + $879c == &de9c
    assert MOVE_OFFSET + $87d5 == &ded5
    assert MOVE_OFFSET + $87d8 == &ded8
    assert MOVE_OFFSET + $87f4 == &def4
    assert MOVE_OFFSET + $87f7 == &def7
    assert MOVE_OFFSET + $880d == &df0d
    assert MOVE_OFFSET + $8822 == &df22
    assert MOVE_OFFSET + $8825 == &df25
    assert MOVE_OFFSET + $8834 == &df34
    assert MOVE_OFFSET + $8847 == &df47
    assert MOVE_OFFSET + $884e == &df4e
    assert MOVE_OFFSET + $8857 == &df57
    assert MOVE_OFFSET + $885c == &df5c
    assert MOVE_OFFSET + $8861 == &df61
    assert MOVE_OFFSET + $8866 == &df66
    assert MOVE_OFFSET + $8871 == &df71
    assert MOVE_OFFSET + $887c == &df7c
    assert MOVE_OFFSET + $8883 == &df83
    assert MOVE_OFFSET + $8893 == &df93
    assert MOVE_OFFSET + $8896 == &df96
    assert MOVE_OFFSET + $88c0 == &dfc0
    assert MOVE_OFFSET + $88c7 == &dfc7
    assert MOVE_OFFSET + $88ca == &dfca
    assert MOVE_OFFSET + $88d8 == &dfd8
    assert MOVE_OFFSET + $88db == &dfdb
    assert MOVE_OFFSET + $88de == &dfde
    assert MOVE_OFFSET + $88e1 == &dfe1
    assert MOVE_OFFSET + $88e4 == &dfe4
    assert MOVE_OFFSET + $88e7 == &dfe7
    assert MOVE_OFFSET + $88f4 == &dff4
    assert MOVE_OFFSET + $8913 == &e013
    assert MOVE_OFFSET + $894d == &e04d
    assert MOVE_OFFSET + $89b8 == &e0b8
    assert MOVE_OFFSET + $89c5 == &e0c5
    assert MOVE_OFFSET + $89f1 == &e0f1
    assert MOVE_OFFSET + $8a4d == &e14d
    assert MOVE_OFFSET + $8a54 == &e154
    assert MOVE_OFFSET + $8a9e == &e19e
    assert MOVE_OFFSET + $8aa8 == &e1a8
    assert MOVE_OFFSET + $8aad == &e1ad
    assert MOVE_OFFSET + $8abb == &e1bb
    assert MOVE_OFFSET + $8ad9 == &e1d9
    assert MOVE_OFFSET + $8ade == &e1de
    assert MOVE_OFFSET + $8aeb == &e1eb
    assert MOVE_OFFSET + $8af0 == &e1f0
    assert MOVE_OFFSET + $8af4 == &e1f4
    assert MOVE_OFFSET + $8b00 == &e200
    assert MOVE_OFFSET + $8b03 == &e203
    assert MOVE_OFFSET + $8b13 == &e213
    assert MOVE_OFFSET + $8b18 == &e218
    assert MOVE_OFFSET + $8b25 == &e225
    assert MOVE_OFFSET + $8b28 == &e228
    assert MOVE_OFFSET + $8b49 == &e249
    assert MOVE_OFFSET + $8b58 == &e258
    assert MOVE_OFFSET + $8b6e == &e26e
    assert MOVE_OFFSET + $8b88 == &e288
    assert MOVE_OFFSET + $8b93 == &e293
    assert MOVE_OFFSET + $8b9e == &e29e
    assert MOVE_OFFSET + $8ba1 == &e2a1
    assert MOVE_OFFSET + $8bb0 == &e2b0
    assert MOVE_OFFSET + $8bb3 == &e2b3
    assert MOVE_OFFSET + $8bb6 == &e2b6
    assert MOVE_OFFSET + $8bcd == &e2cd
    assert MOVE_OFFSET + $8bd0 == &e2d0
    assert MOVE_OFFSET + $8bd5 == &e2d5
    assert MOVE_OFFSET + $8bd8 == &e2d8
    assert MOVE_OFFSET + $8bff == &e2ff
    assert MOVE_OFFSET + $8c04 == &e304
    assert MOVE_OFFSET + $8c12 == &e312
    assert MOVE_OFFSET + $8c15 == &e315
    assert MOVE_OFFSET + $8c23 == &e323
    assert MOVE_OFFSET + $8c26 == &e326
    assert MOVE_OFFSET + $8c2b == &e32b
    assert MOVE_OFFSET + $8c33 == &e333
    assert MOVE_OFFSET + $8c37 == &e337
    assert MOVE_OFFSET + $8c3a == &e33a
    assert MOVE_OFFSET + $8c4f == &e34f
    assert MOVE_OFFSET + $8c56 == &e356
    assert MOVE_OFFSET + $8c6c == &e36c
    assert MOVE_OFFSET + $8c87 == &e387
    assert MOVE_OFFSET + $8cab == &e3ab
    assert MOVE_OFFSET + $8ccc == &e3cc
    assert MOVE_OFFSET + $8ccf == &e3cf
    assert MOVE_OFFSET + $8cd2 == &e3d2
    assert MOVE_OFFSET + $8cdf == &e3df
    assert MOVE_OFFSET + $8cf4 == &e3f4
    assert MOVE_OFFSET + $8cf7 == &e3f7
    assert MOVE_OFFSET + $8d16 == &e416
    assert MOVE_OFFSET + $8d27 == &e427
    assert MOVE_OFFSET + $8d2e == &e42e
    assert MOVE_OFFSET + $8d31 == &e431
    assert MOVE_OFFSET + $8d3a == &e43a
    assert MOVE_OFFSET + $8d43 == &e443
    assert MOVE_OFFSET + $8d4c == &e44c
    assert MOVE_OFFSET + $8d4f == &e44f
    assert MOVE_OFFSET + $8d52 == &e452
    assert MOVE_OFFSET + $8daf == &e4af
    assert MOVE_OFFSET + $8dbe == &e4be
    assert MOVE_OFFSET + $8dc3 == &e4c3
    assert MOVE_OFFSET + $8dc6 == &e4c6
    assert MOVE_OFFSET + $8dde == &e4de
    assert MOVE_OFFSET + $8de1 == &e4e1
    assert MOVE_OFFSET + $8de8 == &e4e8
    assert MOVE_OFFSET + $8def == &e4ef
    assert MOVE_OFFSET + $8df2 == &e4f2
    assert MOVE_OFFSET + $8df9 == &e4f9
    assert MOVE_OFFSET + $8e12 == &e512
    assert MOVE_OFFSET + $8e1d == &e51d
    assert MOVE_OFFSET + $8e20 == &e520
    assert MOVE_OFFSET + $8e33 == &e533
    assert MOVE_OFFSET + $8e36 == &e536
    assert MOVE_OFFSET + $8e39 == &e539
    assert MOVE_OFFSET + $8e3c == &e53c
    assert MOVE_OFFSET + $8e49 == &e549
    assert MOVE_OFFSET + $8e4c == &e54c
    assert MOVE_OFFSET + $8e5a == &e55a
    assert MOVE_OFFSET + $8e7a == &e57a
    assert MOVE_OFFSET + $8ea2 == &e5a2
    assert MOVE_OFFSET + $8ea5 == &e5a5
    assert MOVE_OFFSET + $8ebf == &e5bf
    assert MOVE_OFFSET + $8ecc == &e5cc
    assert MOVE_OFFSET + $8ee7 == &e5e7
    assert MOVE_OFFSET + $8eea == &e5ea
    assert MOVE_OFFSET + $8f09 == &e609
    assert MOVE_OFFSET + $8f1e == &e61e
    assert MOVE_OFFSET + $8f21 == &e621
    assert MOVE_OFFSET + $8f5e == &e65e
    assert MOVE_OFFSET + $8f73 == &e673
    assert MOVE_OFFSET + $8f76 == &e676
    assert MOVE_OFFSET + $8f79 == &e679
    assert MOVE_OFFSET + $8f7c == &e67c
    assert MOVE_OFFSET + $8f7f == &e67f
    assert MOVE_OFFSET + $8f8b == &e68b
    assert MOVE_OFFSET + $8fbc == &e6bc
    assert MOVE_OFFSET + $8fcb == &e6cb
    assert MOVE_OFFSET + $8fcd == &e6cd
    assert MOVE_OFFSET + $8fd9 == &e6d9
    assert MOVE_OFFSET + $8fe6 == &e6e6
    assert MOVE_OFFSET + $8fe9 == &e6e9
    assert MOVE_OFFSET + $8ff8 == &e6f8
    assert MOVE_OFFSET + $8ffb == &e6fb
    assert MOVE_OFFSET + $9006 == &e706
    assert MOVE_OFFSET + $9013 == &e713
    assert MOVE_OFFSET + $9037 == &e737
    assert MOVE_OFFSET + $903c == &e73c
    assert MOVE_OFFSET + $9054 == &e754
    assert MOVE_OFFSET + $9074 == &e774
    assert MOVE_OFFSET + $9097 == &e797
    assert MOVE_OFFSET + $909a == &e79a
    assert MOVE_OFFSET + $90a5 == &e7a5
    assert MOVE_OFFSET + $90bd == &e7bd
    assert MOVE_OFFSET + $9109 == &e809
    assert MOVE_OFFSET + $910e == &e80e
    assert MOVE_OFFSET + $9119 == &e819
    assert MOVE_OFFSET + $9120 == &e820
    assert MOVE_OFFSET + $9123 == &e823
    assert MOVE_OFFSET + $912c == &e82c
    assert MOVE_OFFSET + $913c == &e83c
    assert MOVE_OFFSET + $9176 == &e876
    assert MOVE_OFFSET + $9179 == &e879
    assert MOVE_OFFSET + $9184 == &e884
    assert MOVE_OFFSET + $918d == &e88d
    assert MOVE_OFFSET + $91a7 == &e8a7
    assert MOVE_OFFSET + $91b0 == &e8b0
    assert MOVE_OFFSET + $91c0 == &e8c0
    assert MOVE_OFFSET + $91c3 == &e8c3
    assert MOVE_OFFSET + $91c6 == &e8c6
    assert MOVE_OFFSET + $91db == &e8db
    assert MOVE_OFFSET + $91de == &e8de
    assert MOVE_OFFSET + $91f1 == &e8f1
    assert MOVE_OFFSET + $91f4 == &e8f4
    assert MOVE_OFFSET + $91f7 == &e8f7
    assert MOVE_OFFSET + $91ff == &e8ff
    assert MOVE_OFFSET + $9202 == &e902
    assert MOVE_OFFSET + $922b == &e92b
    assert MOVE_OFFSET + $922e == &e92e
    assert MOVE_OFFSET + $925c == &e95c
    assert MOVE_OFFSET + $925f == &e95f
    assert MOVE_OFFSET + $9288 == &e988
    assert MOVE_OFFSET + $929b == &e99b
    assert MOVE_OFFSET + $92a6 == &e9a6
    assert MOVE_OFFSET + $92b4 == &e9b4
    assert MOVE_OFFSET + $92b7 == &e9b7
    assert MOVE_OFFSET + $92d3 == &e9d3
    assert MOVE_OFFSET + $92df == &e9df
    assert MOVE_OFFSET + $92e2 == &e9e2
    assert MOVE_OFFSET + $92ee == &e9ee
    assert MOVE_OFFSET + $930a == &ea0a
    assert MOVE_OFFSET + $930d == &ea0d
    assert MOVE_OFFSET + $9336 == &ea36
    assert MOVE_OFFSET + $934f == &ea4f
    assert MOVE_OFFSET + $9354 == &ea54
    assert MOVE_OFFSET + $93be == &eabe
    assert MOVE_OFFSET + $93d5 == &ead5
    assert MOVE_OFFSET + $93d8 == &ead8
    assert MOVE_OFFSET + $93db == &eadb
    assert MOVE_OFFSET + $93eb == &eaeb
    assert MOVE_OFFSET + $93ee == &eaee
    assert MOVE_OFFSET + $93f1 == &eaf1
    assert MOVE_OFFSET + $9403 == &eb03
    assert MOVE_OFFSET + $9406 == &eb06
    assert MOVE_OFFSET + $9411 == &eb11
    assert MOVE_OFFSET + $9449 == &eb49
    assert MOVE_OFFSET + $944c == &eb4c
    assert MOVE_OFFSET + $944f == &eb4f
    assert MOVE_OFFSET + $9478 == &eb78
    assert MOVE_OFFSET + $9486 == &eb86
    assert MOVE_OFFSET + $94b5 == &ebb5
    assert MOVE_OFFSET + $94b8 == &ebb8
    assert MOVE_OFFSET + $94bb == &ebbb
    assert MOVE_OFFSET + $9538 == &ec38
    assert MOVE_OFFSET + $9574 == &ec74
    assert MOVE_OFFSET + $9577 == &ec77
    assert MOVE_OFFSET + $957a == &ec7a
    assert MOVE_OFFSET + $9594 == &ec94
    assert MOVE_OFFSET + $9597 == &ec97
    assert MOVE_OFFSET + $959c == &ec9c
    assert MOVE_OFFSET + $959f == &ec9f
    assert MOVE_OFFSET + $95a4 == &eca4
    assert MOVE_OFFSET + $95a7 == &eca7
    assert MOVE_OFFSET + $95ac == &ecac
    assert MOVE_OFFSET + $95be == &ecbe
    assert MOVE_OFFSET + $95c1 == &ecc1
    assert MOVE_OFFSET + $95f6 == &ecf6
    assert MOVE_OFFSET + $9604 == &ed04
    assert MOVE_OFFSET + $960d == &ed0d
    assert MOVE_OFFSET + $9610 == &ed10
    assert MOVE_OFFSET + $9613 == &ed13
    assert MOVE_OFFSET + $9624 == &ed24
    assert MOVE_OFFSET + $962b == &ed2b
    assert MOVE_OFFSET + $962e == &ed2e
    assert MOVE_OFFSET + $9631 == &ed31
    assert MOVE_OFFSET + $9634 == &ed34
    assert MOVE_OFFSET + $9644 == &ed44
    assert MOVE_OFFSET + $9647 == &ed47
    assert MOVE_OFFSET + $966e == &ed6e
    assert MOVE_OFFSET + $96ac == &edac
    assert MOVE_OFFSET + $96b9 == &edb9
    assert MOVE_OFFSET + $96d4 == &edd4
    assert MOVE_OFFSET + $96e7 == &ede7
    assert MOVE_OFFSET + $9704 == &ee04
    assert MOVE_OFFSET + $9720 == &ee20
    assert MOVE_OFFSET + $9751 == &ee51
    assert MOVE_OFFSET + $9754 == &ee54
    assert MOVE_OFFSET + $975f == &ee5f
    assert MOVE_OFFSET + $9762 == &ee62
    assert MOVE_OFFSET + $976f == &ee6f
    assert MOVE_OFFSET + $9772 == &ee72
    assert MOVE_OFFSET + $9775 == &ee75
    assert MOVE_OFFSET + $978a == &ee8a
    assert MOVE_OFFSET + $97d4 == &eed4
    assert MOVE_OFFSET + $97f2 == &eef2
    assert MOVE_OFFSET + $97f5 == &eef5
    assert MOVE_OFFSET + $980e == &ef0e
    assert MOVE_OFFSET + $9812 == &ef12
    assert MOVE_OFFSET + $9816 == &ef16
    assert MOVE_OFFSET + $981a == &ef1a
    assert MOVE_OFFSET + $981d == &ef1d
    assert MOVE_OFFSET + $9822 == &ef22
    assert MOVE_OFFSET + $9825 == &ef25
    assert MOVE_OFFSET + $9849 == &ef49
    assert MOVE_OFFSET + $9860 == &ef60
    assert MOVE_OFFSET + $988a == &ef8a
    assert MOVE_OFFSET + $988d == &ef8d
    assert MOVE_OFFSET + $98c1 == &efc1
    assert MOVE_OFFSET + $98c4 == &efc4
    assert MOVE_OFFSET + $98c7 == &efc7
    assert MOVE_OFFSET + $98cb == &efcb
    assert MOVE_OFFSET + $98d4 == &efd4
    assert MOVE_OFFSET + $98f0 == &eff0
    assert MOVE_OFFSET + $98f3 == &eff3
    assert MOVE_OFFSET + $98fe == &effe
    assert MOVE_OFFSET + $9910 == &f010
    assert MOVE_OFFSET + $9913 == &f013
    assert MOVE_OFFSET + $992f == &f02f
    assert MOVE_OFFSET + $993c == &f03c
    assert MOVE_OFFSET + $9946 == &f046
    assert MOVE_OFFSET + $9953 == &f053
    assert MOVE_OFFSET + $9959 == &f059
    assert MOVE_OFFSET + $9962 == &f062
    assert MOVE_OFFSET + $9965 == &f065
    assert MOVE_OFFSET + $9968 == &f068
    assert MOVE_OFFSET + $998b == &f08b
    assert MOVE_OFFSET + $999e == &f09e
    assert MOVE_OFFSET + $99a1 == &f0a1
    assert MOVE_OFFSET + $99a4 == &f0a4
    assert MOVE_OFFSET + $99c1 == &f0c1
    assert MOVE_OFFSET + $99c4 == &f0c4
    assert MOVE_OFFSET + $99cd == &f0cd
    assert MOVE_OFFSET + $99ea == &f0ea
    assert MOVE_OFFSET + $99f4 == &f0f4
    assert MOVE_OFFSET + $9a06 == &f106
    assert MOVE_OFFSET + $9a09 == &f109
    assert MOVE_OFFSET + $9a2c == &f12c
    assert MOVE_OFFSET + $9a45 == &f145
    assert MOVE_OFFSET + $9a48 == &f148
    assert MOVE_OFFSET + $9a4b == &f14b
    assert MOVE_OFFSET + $9a5d == &f15d
    assert MOVE_OFFSET + $9a60 == &f160
    assert MOVE_OFFSET + $9a63 == &f163
    assert MOVE_OFFSET + $9a8d == &f18d
    assert MOVE_OFFSET + $9a90 == &f190
    assert MOVE_OFFSET + $9a93 == &f193
    assert MOVE_OFFSET + $9abd == &f1bd
    assert MOVE_OFFSET + $9aca == &f1ca
    assert MOVE_OFFSET + $9ad5 == &f1d5
    assert MOVE_OFFSET + $9b3a == &f23a
    assert MOVE_OFFSET + $9b45 == &f245
    assert MOVE_OFFSET + $9b53 == &f253
    assert MOVE_OFFSET + $9b71 == &f271
    assert MOVE_OFFSET + $9b7c == &f27c
    assert MOVE_OFFSET + $9b82 == &f282
    assert MOVE_OFFSET + $9b97 == &f297
    assert MOVE_OFFSET + $9bac == &f2ac
    assert MOVE_OFFSET + $9bc2 == &f2c2
    assert MOVE_OFFSET + $9bd5 == &f2d5
    assert MOVE_OFFSET + $9bda == &f2da
    assert MOVE_OFFSET + $9bf0 == &f2f0
    assert MOVE_OFFSET + $9bf3 == &f2f3
    assert MOVE_OFFSET + $9c05 == &f305
    assert MOVE_OFFSET + $9c15 == &f315
    assert MOVE_OFFSET + $9c19 == &f319
    assert MOVE_OFFSET + $9c21 == &f321
    assert MOVE_OFFSET + $9c2f == &f32f
    assert MOVE_OFFSET + $9c34 == &f334
    assert MOVE_OFFSET + $9c52 == &f352
    assert MOVE_OFFSET + $9ccb == &f3cb
    assert MOVE_OFFSET + $9ceb == &f3eb
    assert MOVE_OFFSET + $9cf4 == &f3f4
    assert MOVE_OFFSET + $9cf7 == &f3f7
    assert MOVE_OFFSET + $9d0f == &f40f
    assert MOVE_OFFSET + $9d12 == &f412
    assert MOVE_OFFSET + $9d1f == &f41f
    assert MOVE_OFFSET + $9d31 == &f431
    assert MOVE_OFFSET + $9d74 == &f474
    assert MOVE_OFFSET + $9d81 == &f481
    assert MOVE_OFFSET + $9da4 == &f4a4
    assert MOVE_OFFSET + $9da9 == &f4a9
    assert MOVE_OFFSET + $9dac == &f4ac
    assert MOVE_OFFSET + $9db1 == &f4b1
    assert MOVE_OFFSET + $9dc3 == &f4c3
    assert MOVE_OFFSET + $9dc8 == &f4c8
    assert MOVE_OFFSET + $9e81 == &f581
    assert MOVE_OFFSET + $9eaa == &f5aa
    assert MOVE_OFFSET + $9ed2 == &f5d2
    assert MOVE_OFFSET + $9ed9 == &f5d9
    assert MOVE_OFFSET + $9ee2 == &f5e2
    assert MOVE_OFFSET + $9eeb == &f5eb
    assert MOVE_OFFSET + $9efd == &f5fd
    assert MOVE_OFFSET + $9f1b == &f61b
    assert MOVE_OFFSET + $9f3b == &f63b
    assert MOVE_OFFSET + $9f42 == &f642
    assert MOVE_OFFSET + $9f66 == &f666
    assert MOVE_OFFSET + $9f69 == &f669
    assert MOVE_OFFSET + $9f6e == &f66e
    assert MOVE_OFFSET + $9f73 == &f673
    assert MOVE_OFFSET + $9f82 == &f682
    assert MOVE_OFFSET + $9f91 == &f691
    assert MOVE_OFFSET + $9f94 == &f694
    assert MOVE_OFFSET + $9fa4 == &f6a4
    assert MOVE_OFFSET + $9fab == &f6ab
    assert MOVE_OFFSET + $9fb5 == &f6b5
    assert MOVE_OFFSET + $9fbf == &f6bf
    assert MOVE_OFFSET + $9fc2 == &f6c2
    assert MOVE_OFFSET + $9fc6 == &f6c6
    assert MOVE_OFFSET + $9fc9 == &f6c9
    assert MOVE_OFFSET + $9fd7 == &f6d7
    assert MOVE_OFFSET + $9fda == &f6da
    assert MOVE_OFFSET + $9fdd == &f6dd
    assert MOVE_OFFSET + $9fe0 == &f6e0
    assert MOVE_OFFSET + $9fe3 == &f6e3
    assert MOVE_OFFSET + $a004 == &f704
    assert MOVE_OFFSET + $a02d == &f72d
    assert NILOFF == &19
    assert RAMBS == &7c
    assert RAMBS+1 == &7d
    assert RELBS == &7a
    assert RELBS+1 == &7b
    assert RELOC == &7c
    assert RELOC+1 == &7d
    assert ROMBS == &7a
    assert ROMBS+1 == &7b
    assert SUBOFF == &58
    assert TVS == &30
    assert TVS+1 == &31
    assert TVS+10 == &3a
    assert TVS-1 == &2f
    assert VALOFF == &0d
    assert WRMOFF == &72
    assert XTNDL == &74

save pydis_start, pydis_end
