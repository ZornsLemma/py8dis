; ----------------------------------------------------------------------------------
;
; Chuckie Egg (the original BBC Micro version)
;
; Disassembled by TobyLobster using the py8dis tool.
; Heavily based on RTW's disassembly of Chuckie Egg:
;     https://stardot.org.uk/forums/viewtopic.php?p=220229#p220229
;
; ----------------------------------------------------------------------------------

; Constants
BigBirdColour                     = 32
BirdColour                        = 128
CageColour                        = 32
Colour0                           = 0
Colour1                           = 2
Colour10                          = 136
Colour11                          = 138
Colour12                          = 160
Colour13                          = 162
Colour14                          = 168
Colour15                          = 170
Colour2                           = 8
Colour3                           = 10
Colour4                           = 32
Colour5                           = 34
Colour6                           = 40
Colour7                           = 42
Colour8                           = 128
Colour9                           = 130
DigitsColour                      = 8
EggColour                         = 2
LadderColour                      = 8
LiftColour                        = 2
LivesColour                       = 32
LogoColour                        = 2
MapId_Egg                         = 4
MapId_Ladder                      = 2
MapId_Platform                    = 1
MapId_Seed                        = 8
PlatformColour                    = 10
PlayerColour                      = 32
SeedColour                        = 8
SpriteId_BigBirdLeft1             = 17
SpriteId_BigBirdLeft2             = 18
SpriteId_BigBirdRight1            = 15
SpriteId_BigBirdRight2            = 16
SpriteId_BigC                     = 48
SpriteId_BigE                     = 53
SpriteId_BigG                     = 54
SpriteId_BigH                     = 49
SpriteId_BigI                     = 52
SpriteId_BigK                     = 51
SpriteId_BigU                     = 50
SpriteId_BirdEatLeft1             = 29
SpriteId_BirdEatLeft2             = 30
SpriteId_BirdEatRight1            = 27
SpriteId_BirdEatRight2            = 28
SpriteId_BirdLeft1                = 23
SpriteId_BirdLeft2                = 24
SpriteId_BirdRight1               = 21
SpriteId_BirdRight2               = 22
SpriteId_BirdUpDown1              = 25
SpriteId_BirdUpDown2              = 26
SpriteId_Blank                    = 0
SpriteId_Bonus                    = 45
SpriteId_Cage                     = 20
SpriteId_CageWithHole             = 19
SpriteId_Digit0                   = 31
SpriteId_Digit1                   = 32
SpriteId_Digit2                   = 33
SpriteId_Digit3                   = 34
SpriteId_Digit4                   = 35
SpriteId_Digit5                   = 36
SpriteId_Digit6                   = 37
SpriteId_Digit7                   = 38
SpriteId_Digit8                   = 39
SpriteId_Digit9                   = 40
SpriteId_Egg                      = 3
SpriteId_HighlightBox             = 42
SpriteId_Ladder                   = 2
SpriteId_Level                    = 44
SpriteId_Life                     = 47
SpriteId_Lift                     = 5
SpriteId_ManLeft1                 = 9
SpriteId_ManLeft2                 = 10
SpriteId_ManLeft3                 = 11
SpriteId_ManRight1                = 6
SpriteId_ManRight2                = 7
SpriteId_ManRight3                = 8
SpriteId_ManUpDown1               = 12
SpriteId_ManUpDown2               = 13
SpriteId_ManUpDown3               = 14
SpriteId_Platform                 = 1
SpriteId_Player                   = 43
SpriteId_Score                    = 41
SpriteId_Seed                     = 4
SpriteId_Time                     = 46
StatusColour                      = 8
inkey_key_1                       = 207
inkey_key_2                       = 206
inkey_key_3                       = 238
inkey_key_4                       = 237
inkey_key_ctrl                    = 254
inkey_key_escape                  = 143
inkey_key_h                       = 171
inkey_key_k                       = 185
inkey_key_s                       = 174
inkey_key_shift                   = 255
osbyte_clear_escape               = 124
osbyte_flush_buffer_class         = 15
osbyte_inkey                      = 129
osbyte_read_key_table_low         = 172
osbyte_read_write_bell_duration   = 214
osbyte_read_write_escape_status   = 229
osbyte_scan_keyboard              = 121
osbyte_scan_keyboard_from_16      = 122
osbyte_set_cursor_editing         = 4
osbyte_tape                       = 140
osword_envelope                   = 8
osword_read_interval_timer        = 3
osword_read_line                  = 0
osword_sound                      = 7
osword_write_interval_timer       = 4

; Memory locations
intervaltimerblock      = &0000
savesp                  = &001b
stalltime               = &001c
time                    = &001d
lives                   = &0020
playerlevel             = &0024
score                   = &0028
bigbirdxpos             = &0030
bigbirdypos             = &0031
bigbirdxspeed           = &0032
bigbirdyspeed           = &0033
bigbirdanim             = &0034
bigbirdflag             = &0035
currentbirdindex        = &0036
birdwalkingspeed        = &0037
updatetimer             = &0038
numeggsleft             = &0039
bonus                   = &003a
bonusexpiredflag        = &003d
extralifeflag           = &003e
currentscorexpos        = &003f
playerx                 = &0040
playery                 = &0041
playercharx             = &0042
playerchary             = &0043
playerfracx             = &0044
playerfracy             = &0045
movementx               = &0046
movementy               = &0047
playerspritenum         = &0048
movementtype            = &0049
jumpfalldist            = &004a
jumpdir                 = &004b
playerfacingdir         = &004c
difficulty              = &004d
playerdataoffset        = &004e
playerdieflag           = &004f
level                   = &0050
mapdataptr              = &0051
numplatforms            = &0053
numladders              = &0054
liftflag                = &0055
numseeds                = &0056
numbirds                = &0057
liftx                   = &0058
lift1y                  = &0059
lift2y                  = &005a
whichlift               = &005b
screen                  = &005c
playernum               = &005d
numplayers              = &005e
numaliveplayers         = &005f
keys                    = &0060
keynum_right            = &0061
keynum_left             = &0062
keynum_down             = &0063
keynum_up               = &0064
keynum_jump             = &0065
rndseed                 = &0066
write                   = &0070
spriteline              = &0072
spritecolumn            = &0073
spritetemp              = &0074
stringlength            = &0075
read                    = &0076
spriteheight            = &0078
spritewidthpixels       = &0079
spritewidth             = &007a
spritecolour            = &007f
keybit                  = &0080
columncounter           = &0081
pixelvalue              = &0082
pixelbitcounter         = &0083
spritebyte              = &0084
widthcounter            = &0087
temp1                   = &0088
temp2                   = &0089
temp3                   = &008a
temp4                   = &008b
temp5                   = &008c
temp6                   = &008d
temp7                   = &008e
birddata                = &0400
birdpixelx              = &0400
birdpixely              = &0405
birdcharx               = &040a
birdchary               = &040f
birdstatus              = &0414
birdanim                = &0419
birddir                 = &041e
hiscoretab              = &0430
playerscore             = &0500
playerbonus             = &0508
playerbonusexpiredflag  = &050b
collectedeggsflags      = &0510
collectedseedflags      = &0520
mapdata                 = &0600
oswrch                  = &ffee
osword                  = &fff1
osbyte                  = &fff4

    org &1100

; ----------------------------------------------------------------------------------
; Sprite data table - width, height, address
; ----------------------------------------------------------------------------------
.spritetable
.pydis_start
    equb 150,  24                                                     ; 1100: 96 18       ..
    equw &3600                                                        ; 1102: 00 36       .6
    equb 8, 8                                                         ; 1104: 08 08       ..
    equw sprite_platform                                              ; 1106: 00 12       ..
    equb 8, 8                                                         ; 1108: 08 08       ..
    equw sprite_ladder                                                ; 110a: 08 12       ..
    equb 8, 8                                                         ; 110c: 08 08       ..
    equw sprite_egg                                                   ; 110e: 10 12       ..
    equb 8, 8                                                         ; 1110: 08 08       ..
    equw sprite_seed                                                  ; 1112: 18 12       ..
    equb 16,  4                                                       ; 1114: 10 04       ..
    equw sprite_lift                                                  ; 1116: 20 12        .
    equb  8, 16                                                       ; 1118: 08 10       ..
    equw sprite_manright1                                             ; 111a: 28 12       (.
    equb  8, 16                                                       ; 111c: 08 10       ..
    equw sprite_manright2                                             ; 111e: 38 12       8.
    equb  8, 16                                                       ; 1120: 08 10       ..
    equw sprite_manright3                                             ; 1122: 48 12       H.
    equb  8, 16                                                       ; 1124: 08 10       ..
    equw sprite_manleft1                                              ; 1126: 58 12       X.
    equb  8, 16                                                       ; 1128: 08 10       ..
    equw sprite_manleft2                                              ; 112a: 68 12       h.
    equb  8, 16                                                       ; 112c: 08 10       ..
    equw sprite_manleft3                                              ; 112e: 78 12       x.
    equb  8, 16                                                       ; 1130: 08 10       ..
    equw sprite_manupdown1                                            ; 1132: 88 12       ..
    equb  8, 18                                                       ; 1134: 08 12       ..
    equw sprite_manupdown2                                            ; 1136: 98 12       ..
    equb  8, 18                                                       ; 1138: 08 12       ..
    equw sprite_manupdown3                                            ; 113a: aa 12       ..
    equb 16, 24                                                       ; 113c: 10 18       ..
    equw sprite_bigbirdright1                                         ; 113e: bc 12       ..
    equb 16, 24                                                       ; 1140: 10 18       ..
    equw sprite_bigbirdright2                                         ; 1142: ec 12       ..
    equb 16, 24                                                       ; 1144: 10 18       ..
    equw sprite_bigbirdleft1                                          ; 1146: 1c 13       ..
    equb 16, 24                                                       ; 1148: 10 18       ..
    equw sprite_bigbirdleft2                                          ; 114a: 4c 13       L.
    equb 24, 48                                                       ; 114c: 18 30       .0
    equw sprite_cagewithhole                                          ; 114e: 7c 13       |.
    equb 24, 48                                                       ; 1150: 18 30       .0
    equw sprite_cage                                                  ; 1152: 0c 14       ..
    equb  8, 20                                                       ; 1154: 08 14       ..
    equw sprite_birdright1                                            ; 1156: 9c 14       ..
    equb  8, 20                                                       ; 1158: 08 14       ..
    equw sprite_birdright2                                            ; 115a: b0 14       ..
    equb  8, 20                                                       ; 115c: 08 14       ..
    equw sprite_birdleft1                                             ; 115e: c4 14       ..
    equb  8, 20                                                       ; 1160: 08 14       ..
    equw sprite_birdleft2                                             ; 1162: d8 14       ..
    equb  8, 20                                                       ; 1164: 08 14       ..
    equw sprite_birdupdown1                                           ; 1166: ec 14       ..
    equb  8, 22                                                       ; 1168: 08 16       ..
    equw sprite_birdupdown2                                           ; 116a: 00 15       ..
    equb 16, 20                                                       ; 116c: 10 14       ..
    equw sprite_birdeatright1                                         ; 116e: 16 15       ..
    equb 16, 20                                                       ; 1170: 10 14       ..
    equw sprite_birdeatright2                                         ; 1172: 3e 15       >.
    equb 16, 20                                                       ; 1174: 10 14       ..
    equw sprite_birdeatleft1                                          ; 1176: 66 15       f.
    equb 16, 20                                                       ; 1178: 10 14       ..
    equw sprite_birdeatleft2                                          ; 117a: 8e 15       ..
    equb 8, 7                                                         ; 117c: 08 07       ..
    equw sprite_digit0                                                ; 117e: b6 15       ..
    equb 8, 7                                                         ; 1180: 08 07       ..
    equw sprite_digit1                                                ; 1182: bd 15       ..
    equb 8, 7                                                         ; 1184: 08 07       ..
    equw sprite_digit2                                                ; 1186: c4 15       ..
    equb 8, 7                                                         ; 1188: 08 07       ..
    equw sprite_digit3                                                ; 118a: cb 15       ..
    equb 8, 7                                                         ; 118c: 08 07       ..
    equw sprite_digit4                                                ; 118e: d2 15       ..
    equb 8, 7                                                         ; 1190: 08 07       ..
    equw sprite_digit5                                                ; 1192: d9 15       ..
    equb 8, 7                                                         ; 1194: 08 07       ..
    equw sprite_digit6                                                ; 1196: e0 15       ..
    equb 8, 7                                                         ; 1198: 08 07       ..
    equw sprite_digit7                                                ; 119a: e7 15       ..
    equb 8, 7                                                         ; 119c: 08 07       ..
    equw sprite_digit8                                                ; 119e: ee 15       ..
    equb 8, 7                                                         ; 11a0: 08 07       ..
    equw sprite_digit9                                                ; 11a2: f5 15       ..
    equb 24,  9                                                       ; 11a4: 18 09       ..
    equw sprite_score                                                 ; 11a6: fc 15       ..
    equb 32,  9                                                       ; 11a8: 20 09        .
    equw sprite_highlightbox                                          ; 11aa: 17 16       ..
    equb 32,  9                                                       ; 11ac: 20 09        .
    equw sprite_player                                                ; 11ae: 3b 16       ;.
    equb 40,  9                                                       ; 11b0: 28 09       (.
    equw sprite_level                                                 ; 11b2: 5f 16       _.
    equb 48,  9                                                       ; 11b4: 30 09       0.
    equw sprite_bonus                                                 ; 11b6: 8c 16       ..
    equb 40,  9                                                       ; 11b8: 28 09       (.
    equw sprite_time                                                  ; 11ba: c2 16       ..
    equb 8, 3                                                         ; 11bc: 08 03       ..
    equw sprite_life                                                  ; 11be: ef 16       ..
    equb 16, 30                                                       ; 11c0: 10 1e       ..
    equw sprite_bigc                                                  ; 11c2: f2 16       ..
    equb 16, 30                                                       ; 11c4: 10 1e       ..
    equw sprite_bigh                                                  ; 11c6: 2e 17       ..
    equb 16, 30                                                       ; 11c8: 10 1e       ..
    equw sprite_bigu                                                  ; 11ca: 6a 17       j.
    equb 16, 30                                                       ; 11cc: 10 1e       ..
    equw sprite_bigk                                                  ; 11ce: a6 17       ..
    equb 16, 30                                                       ; 11d0: 10 1e       ..
    equw sprite_bigi                                                  ; 11d2: e2 17       ..
    equb 16, 30                                                       ; 11d4: 10 1e       ..
    equw sprite_bige                                                  ; 11d6: 1e 18       ..
    equb 16, 30                                                       ; 11d8: 10 1e       ..
    equw sprite_bigg                                                  ; 11da: 5a 18       Z.
.unused1
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0   ; 11dc: 00 00 00... ...
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0               ; 11f0: 00 00 00... ...
; ----------------------------------------------------------------------------------
; Sprite data
; ----------------------------------------------------------------------------------
.sprite_platform
    equb %11111011                                                    ; 1200: fb          .
    equb %00000000                                                    ; 1201: 00          .
    equb %10111111                                                    ; 1202: bf          .
    equb %00000000                                                    ; 1203: 00          .
    equb %11101111                                                    ; 1204: ef          .
    equb %00000000                                                    ; 1205: 00          .
    equb %00000000                                                    ; 1206: 00          .
    equb %00000000                                                    ; 1207: 00          .
.sprite_ladder
    equb %01000010                                                    ; 1208: 42          B
    equb %01000010                                                    ; 1209: 42          B
    equb %01000010                                                    ; 120a: 42          B
    equb %01000010                                                    ; 120b: 42          B
    equb %01111110                                                    ; 120c: 7e          ~
    equb %01000010                                                    ; 120d: 42          B
    equb %01000010                                                    ; 120e: 42          B
    equb %01000010                                                    ; 120f: 42          B
.sprite_egg
    equb %00000000                                                    ; 1210: 00          .
    equb %00111000                                                    ; 1211: 38          8
    equb %01101100                                                    ; 1212: 6c          l
    equb %01011110                                                    ; 1213: 5e          ^
    equb %01111110                                                    ; 1214: 7e          ~
    equb %01111100                                                    ; 1215: 7c          |
    equb %00111000                                                    ; 1216: 38          8
    equb %00000000                                                    ; 1217: 00          .
.sprite_seed
    equb %00000000                                                    ; 1218: 00          .
    equb %00000000                                                    ; 1219: 00          .
    equb %00000000                                                    ; 121a: 00          .
    equb %00001000                                                    ; 121b: 08          .
    equb %00010100                                                    ; 121c: 14          .
    equb %00101010                                                    ; 121d: 2a          *
    equb %01010101                                                    ; 121e: 55          U
    equb %00000000                                                    ; 121f: 00          .
.sprite_lift
    equb %00011111, %11111000                                         ; 1220: 1f f8       ..
    equb %00011111, %11111000                                         ; 1222: 1f f8       ..
    equb %00011011, %11011000                                         ; 1224: 1b d8       ..
    equb %00010001, %10001000                                         ; 1226: 11 88       ..
.sprite_manright1
    equb %00011000                                                    ; 1228: 18          .
    equb %00111100                                                    ; 1229: 3c          <
    equb %11111111                                                    ; 122a: ff          .
    equb %00110100                                                    ; 122b: 34          4
    equb %00111100                                                    ; 122c: 3c          <
    equb %00010000                                                    ; 122d: 10          .
    equb %00011000                                                    ; 122e: 18          .
    equb %00111100                                                    ; 122f: 3c          <
    equb %01101110                                                    ; 1230: 6e          n
    equb %01101110                                                    ; 1231: 6e          n
    equb %01101110                                                    ; 1232: 6e          n
    equb %01101110                                                    ; 1233: 6e          n
    equb %00111100                                                    ; 1234: 3c          <
    equb %00011000                                                    ; 1235: 18          .
    equb %00010000                                                    ; 1236: 10          .
    equb %00011000                                                    ; 1237: 18          .
.sprite_manright2
    equb %00011000                                                    ; 1238: 18          .
    equb %00111100                                                    ; 1239: 3c          <
    equb %11111111                                                    ; 123a: ff          .
    equb %00110100                                                    ; 123b: 34          4
    equb %00111100                                                    ; 123c: 3c          <
    equb %00010000                                                    ; 123d: 10          .
    equb %00011000                                                    ; 123e: 18          .
    equb %00111100                                                    ; 123f: 3c          <
    equb %01101110                                                    ; 1240: 6e          n
    equb %01101110                                                    ; 1241: 6e          n
    equb %01110110                                                    ; 1242: 76          v
    equb %01110110                                                    ; 1243: 76          v
    equb %00111100                                                    ; 1244: 3c          <
    equb %00111000                                                    ; 1245: 38          8
    equb %01001010                                                    ; 1246: 4a          J
    equb %00100100                                                    ; 1247: 24          $
.sprite_manright3
    equb %00011000                                                    ; 1248: 18          .
    equb %00111100                                                    ; 1249: 3c          <
    equb %11111111                                                    ; 124a: ff          .
    equb %00110100                                                    ; 124b: 34          4
    equb %00111100                                                    ; 124c: 3c          <
    equb %00010000                                                    ; 124d: 10          .
    equb %00011000                                                    ; 124e: 18          .
    equb %00111100                                                    ; 124f: 3c          <
    equb %01101110                                                    ; 1250: 6e          n
    equb %01101110                                                    ; 1251: 6e          n
    equb %01011110                                                    ; 1252: 5e          ^
    equb %01011110                                                    ; 1253: 5e          ^
    equb %00111100                                                    ; 1254: 3c          <
    equb %00111000                                                    ; 1255: 38          8
    equb %01001010                                                    ; 1256: 4a          J
    equb %00100100                                                    ; 1257: 24          $
.sprite_manleft1
    equb %00011000                                                    ; 1258: 18          .
    equb %00111100                                                    ; 1259: 3c          <
    equb %11111111                                                    ; 125a: ff          .
    equb %00101100                                                    ; 125b: 2c          ,
    equb %00111100                                                    ; 125c: 3c          <
    equb %00001000                                                    ; 125d: 08          .
    equb %00011000                                                    ; 125e: 18          .
    equb %00111100                                                    ; 125f: 3c          <
    equb %01110110                                                    ; 1260: 76          v
    equb %01110110                                                    ; 1261: 76          v
    equb %01110110                                                    ; 1262: 76          v
    equb %01110110                                                    ; 1263: 76          v
    equb %00111100                                                    ; 1264: 3c          <
    equb %00011000                                                    ; 1265: 18          .
    equb %00001000                                                    ; 1266: 08          .
    equb %00011000                                                    ; 1267: 18          .
.sprite_manleft2
    equb %00011000                                                    ; 1268: 18          .
    equb %00111100                                                    ; 1269: 3c          <
    equb %11111111                                                    ; 126a: ff          .
    equb %00101100                                                    ; 126b: 2c          ,
    equb %00111100                                                    ; 126c: 3c          <
    equb %00001000                                                    ; 126d: 08          .
    equb %00011000                                                    ; 126e: 18          .
    equb %00111100                                                    ; 126f: 3c          <
    equb %01110110                                                    ; 1270: 76          v
    equb %01110110                                                    ; 1271: 76          v
    equb %01101110                                                    ; 1272: 6e          n
    equb %01101110                                                    ; 1273: 6e          n
    equb %00111100                                                    ; 1274: 3c          <
    equb %00011100                                                    ; 1275: 1c          .
    equb %01010010                                                    ; 1276: 52          R
    equb %00100100                                                    ; 1277: 24          $
.sprite_manleft3
    equb %00011000                                                    ; 1278: 18          .
    equb %00111100                                                    ; 1279: 3c          <
    equb %11111111                                                    ; 127a: ff          .
    equb %00101100                                                    ; 127b: 2c          ,
    equb %00111100                                                    ; 127c: 3c          <
    equb %00001000                                                    ; 127d: 08          .
    equb %00011000                                                    ; 127e: 18          .
    equb %00111100                                                    ; 127f: 3c          <
    equb %01110110                                                    ; 1280: 76          v
    equb %01110110                                                    ; 1281: 76          v
    equb %01111010                                                    ; 1282: 7a          z
    equb %01111010                                                    ; 1283: 7a          z
    equb %00111100                                                    ; 1284: 3c          <
    equb %00011100                                                    ; 1285: 1c          .
    equb %01010010                                                    ; 1286: 52          R
    equb %00100100                                                    ; 1287: 24          $
.sprite_manupdown1
    equb %00011000                                                    ; 1288: 18          .
    equb %00111100                                                    ; 1289: 3c          <
    equb %11111111                                                    ; 128a: ff          .
    equb %00111100                                                    ; 128b: 3c          <
    equb %00111100                                                    ; 128c: 3c          <
    equb %00011000                                                    ; 128d: 18          .
    equb %00011000                                                    ; 128e: 18          .
    equb %10111101                                                    ; 128f: bd          .
    equb %11111111                                                    ; 1290: ff          .
    equb %01111110                                                    ; 1291: 7e          ~
    equb %01111110                                                    ; 1292: 7e          ~
    equb %01111110                                                    ; 1293: 7e          ~
    equb %00111100                                                    ; 1294: 3c          <
    equb %00100100                                                    ; 1295: 24          $
    equb %00100100                                                    ; 1296: 24          $
    equb %01100110                                                    ; 1297: 66          f
.sprite_manupdown2
    equb %00011000                                                    ; 1298: 18          .
    equb %00111100                                                    ; 1299: 3c          <
    equb %11111111                                                    ; 129a: ff          .
    equb %00111100                                                    ; 129b: 3c          <
    equb %00111101                                                    ; 129c: 3d          =
    equb %00011001                                                    ; 129d: 19          .
    equb %00011001                                                    ; 129e: 19          .
    equb %00111101                                                    ; 129f: 3d          =
    equb %11111111                                                    ; 12a0: ff          .
    equb %11111110                                                    ; 12a1: fe          .
    equb %11111110                                                    ; 12a2: fe          .
    equb %11111110                                                    ; 12a3: fe          .
    equb %10111100                                                    ; 12a4: bc          .
    equb %00111110                                                    ; 12a5: 3e          >
    equb %00100000                                                    ; 12a6: 20
    equb %00100000                                                    ; 12a7: 20
    equb %00100000                                                    ; 12a8: 20
    equb %01100000                                                    ; 12a9: 60          `
.sprite_manupdown3
    equb %00011000                                                    ; 12aa: 18          .
    equb %00111100                                                    ; 12ab: 3c          <
    equb %11111111                                                    ; 12ac: ff          .
    equb %00111100                                                    ; 12ad: 3c          <
    equb %10111100                                                    ; 12ae: bc          .
    equb %10011000                                                    ; 12af: 98          .
    equb %10011000                                                    ; 12b0: 98          .
    equb %10111100                                                    ; 12b1: bc          .
    equb %11111111                                                    ; 12b2: ff          .
    equb %01111111                                                    ; 12b3: 7f          .
    equb %01111111                                                    ; 12b4: 7f          .
    equb %01111111                                                    ; 12b5: 7f          .
    equb %00111101                                                    ; 12b6: 3d          =
    equb %01111100                                                    ; 12b7: 7c          |
    equb %00000100                                                    ; 12b8: 04          .
    equb %00000100                                                    ; 12b9: 04          .
    equb %00000100                                                    ; 12ba: 04          .
    equb %00000110                                                    ; 12bb: 06          .
.sprite_bigbirdright1
    equb %00000000, %01110000                                         ; 12bc: 00 70       .p
    equb %00000000, %11111000                                         ; 12be: 00 f8       ..
    equb %00000001, %11101000                                         ; 12c0: 01 e8       ..
    equb %00000001, %11101111                                         ; 12c2: 01 ef       ..
    equb %00000001, %11111111                                         ; 12c4: 01 ff       ..
    equb %00000001, %11111000                                         ; 12c6: 01 f8       ..
    equb %00000000, %11110000                                         ; 12c8: 00 f0       ..
    equb %00000000, %11100000                                         ; 12ca: 00 e0       ..
    equb %00000000, %01100000                                         ; 12cc: 00 60       .`
    equb %00001110, %01110000                                         ; 12ce: 0e 70       .p
    equb %00011111, %01110000                                         ; 12d0: 1f 70       .p
    equb %00111111, %11111000                                         ; 12d2: 3f f8       ?.
    equb %01111111, %11111000                                         ; 12d4: 7f f8       ..
    equb %11111111, %01111000                                         ; 12d6: ff 78       .x
    equb %11111111, %10111000                                         ; 12d8: ff b8       ..
    equb %10111111, %10111100                                         ; 12da: bf bc       ..
    equb %10111111, %10111100                                         ; 12dc: bf bc       ..
    equb %11011111, %10111100                                         ; 12de: df bc       ..
    equb %01101111, %01111100                                         ; 12e0: 6f 7c       o|
    equb %01110110, %11111100                                         ; 12e2: 76 fc       v.
    equb %00111001, %11111000                                         ; 12e4: 39 f8       9.
    equb %00011111, %11111000                                         ; 12e6: 1f f8       ..
    equb %00001111, %11110000                                         ; 12e8: 0f f0       ..
    equb %00000011, %11100000                                         ; 12ea: 03 e0       ..
.sprite_bigbirdright2
    equb %00000000, %01110000                                         ; 12ec: 00 70       .p
    equb %00000000, %11111001                                         ; 12ee: 00 f9       ..
    equb %00000001, %11101010                                         ; 12f0: 01 ea       ..
    equb %00000001, %11101100                                         ; 12f2: 01 ec       ..
    equb %00000001, %11111100                                         ; 12f4: 01 fc       ..
    equb %00000001, %11111010                                         ; 12f6: 01 fa       ..
    equb %00000000, %11110001                                         ; 12f8: 00 f1       ..
    equb %00000000, %11100000                                         ; 12fa: 00 e0       ..
    equb %00000000, %01100000                                         ; 12fc: 00 60       .`
    equb %00001110, %01110000                                         ; 12fe: 0e 70       .p
    equb %00011111, %01110000                                         ; 1300: 1f 70       .p
    equb %00111111, %11111000                                         ; 1302: 3f f8       ?.
    equb %01110001, %11111000                                         ; 1304: 71 f8       q.
    equb %11101110, %01111000                                         ; 1306: ee 78       .x
    equb %11011111, %10111000                                         ; 1308: df b8       ..
    equb %10111111, %11111100                                         ; 130a: bf fc       ..
    equb %11111111, %11111100                                         ; 130c: ff fc       ..
    equb %11111111, %11111100                                         ; 130e: ff fc       ..
    equb %01111111, %11111100                                         ; 1310: 7f fc       ..
    equb %01111111, %11111100                                         ; 1312: 7f fc       ..
    equb %00111111, %11111000                                         ; 1314: 3f f8       ?.
    equb %00011111, %11111000                                         ; 1316: 1f f8       ..
    equb %00001111, %11110000                                         ; 1318: 0f f0       ..
    equb %00000011, %11100000                                         ; 131a: 03 e0       ..
.sprite_bigbirdleft1
    equb %00001110, %00000000                                         ; 131c: 0e 00       ..
    equb %00011111, %00000000                                         ; 131e: 1f 00       ..
    equb %00010111, %10000000                                         ; 1320: 17 80       ..
    equb %11110111, %10000000                                         ; 1322: f7 80       ..
    equb %11111111, %10000000                                         ; 1324: ff 80       ..
    equb %00011111, %10000000                                         ; 1326: 1f 80       ..
    equb %00001111, %00000000                                         ; 1328: 0f 00       ..
    equb %00000111, %00000000                                         ; 132a: 07 00       ..
    equb %00000110, %00000000                                         ; 132c: 06 00       ..
    equb %00001110, %01110000                                         ; 132e: 0e 70       .p
    equb %00001110, %11111000                                         ; 1330: 0e f8       ..
    equb %00011111, %11111100                                         ; 1332: 1f fc       ..
    equb %00011111, %11111110                                         ; 1334: 1f fe       ..
    equb %00011110, %11111111                                         ; 1336: 1e ff       ..
    equb %00011101, %11111111                                         ; 1338: 1d ff       ..
    equb %00111101, %11111101                                         ; 133a: 3d fd       =.
    equb %00111101, %11111101                                         ; 133c: 3d fd       =.
    equb %00111101, %11111011                                         ; 133e: 3d fb       =.
    equb %00111110, %11110110                                         ; 1340: 3e f6       >.
    equb %00111111, %01101110                                         ; 1342: 3f 6e       ?n
    equb %00011111, %10011100                                         ; 1344: 1f 9c       ..
    equb %00011111, %11111000                                         ; 1346: 1f f8       ..
    equb %00001111, %11110000                                         ; 1348: 0f f0       ..
    equb %00000111, %11000000                                         ; 134a: 07 c0       ..
.sprite_bigbirdleft2
    equb %00001110, %00000000                                         ; 134c: 0e 00       ..
    equb %10011111, %00000000                                         ; 134e: 9f 00       ..
    equb %01010111, %10000000                                         ; 1350: 57 80       W.
    equb %00110111, %10000000                                         ; 1352: 37 80       7.
    equb %00111111, %10000000                                         ; 1354: 3f 80       ?.
    equb %01011111, %10000000                                         ; 1356: 5f 80       _.
    equb %10001111, %00000000                                         ; 1358: 8f 00       ..
    equb %00000111, %00000000                                         ; 135a: 07 00       ..
    equb %00000110, %00000000                                         ; 135c: 06 00       ..
    equb %00001110, %01110000                                         ; 135e: 0e 70       .p
    equb %00001110, %11111000                                         ; 1360: 0e f8       ..
    equb %00011111, %11111100                                         ; 1362: 1f fc       ..
    equb %00011111, %10001110                                         ; 1364: 1f 8e       ..
    equb %00011110, %01110111                                         ; 1366: 1e 77       .w
    equb %00011101, %11111011                                         ; 1368: 1d fb       ..
    equb %00111111, %11111101                                         ; 136a: 3f fd       ?.
    equb %00111111, %11111111                                         ; 136c: 3f ff       ?.
    equb %00111111, %11111111                                         ; 136e: 3f ff       ?.
    equb %00111111, %11111110                                         ; 1370: 3f fe       ?.
    equb %00111111, %11111110                                         ; 1372: 3f fe       ?.
    equb %00011111, %11111100                                         ; 1374: 1f fc       ..
    equb %00011111, %11111000                                         ; 1376: 1f f8       ..
    equb %00001111, %11110000                                         ; 1378: 0f f0       ..
    equb %00000111, %11000000                                         ; 137a: 07 c0       ..
.sprite_cagewithhole
    equb %00000000, %00111000, %00000000                              ; 137c: 00 38 00    .8.
    equb %00000000, %01000100, %00000000                              ; 137f: 00 44 00    .D.
    equb %00000000, %01000100, %00000000                              ; 1382: 00 44 00    .D.
    equb %00000000, %01000100, %00000000                              ; 1385: 00 44 00    .D.
    equb %00000000, %00111000, %00000000                              ; 1388: 00 38 00    .8.
    equb %00000000, %00010000, %00000000                              ; 138b: 00 10 00    ...
    equb %00000000, %11111110, %00000000                              ; 138e: 00 fe 00    ...
    equb %00000011, %01111101, %10000000                              ; 1391: 03 7d 80    .}.
    equb %00001100, %11010110, %01100000                              ; 1394: 0c d6 60    ..`
    equb %00010001, %01010101, %00010000                              ; 1397: 11 55 10    .U.
    equb %00100010, %01010100, %10001000                              ; 139a: 22 54 88    "T.
    equb %00100100, %10010010, %01001000                              ; 139d: 24 92 48    $.H
    equb %01000100, %10010010, %01000100                              ; 13a0: 44 92 44    D.D
    equb %01001000, %10010010, %00100100                              ; 13a3: 48 92 24    H.$
    equb %10001000, %10010010, %00100010                              ; 13a6: 88 92 22    .."
    equb %10001001, %00010001, %00100010                              ; 13a9: 89 11 22    .."
    equb %11010001, %00010000, %00010110                              ; 13ac: d1 10 16    ...
    equb %10110001, %00010000, %00001010                              ; 13af: b1 10 0a    ...
    equb %10011001, %00000000, %00000010                              ; 13b2: 99 00 02    ...
    equb %10010111, %00000000, %00000010                              ; 13b5: 97 00 02    ...
    equb %10010001, %11100000, %00000010                              ; 13b8: 91 e0 02    ...
    equb %10010001, %00000000, %00000010                              ; 13bb: 91 00 02    ...
    equb %10010001, %00010000, %00000010                              ; 13be: 91 10 02    ...
    equb %10010001, %00010000, %00010010                              ; 13c1: 91 10 12    ...
    equb %10010001, %00010000, %00010010                              ; 13c4: 91 10 12    ...
    equb %10010001, %00010000, %00010010                              ; 13c7: 91 10 12    ...
    equb %10010000, %00000000, %00010010                              ; 13ca: 90 00 12    ...
    equb %10010000, %00000000, %00010010                              ; 13cd: 90 00 12    ...
    equb %10010000, %00000000, %00010010                              ; 13d0: 90 00 12    ...
    equb %11010000, %00000000, %00010110                              ; 13d3: d0 00 16    ...
    equb %10110000, %00000000, %00011010                              ; 13d6: b0 00 1a    ...
    equb %10010000, %00000000, %00110010                              ; 13d9: 90 00 32    ..2
    equb %10010000, %00000000, %00010010                              ; 13dc: 90 00 12    ...
    equb %10010000, %00000000, %00010010                              ; 13df: 90 00 12    ...
    equb %10010000, %00000000, %00010010                              ; 13e2: 90 00 12    ...
    equb %10010000, %00000000, %00010010                              ; 13e5: 90 00 12    ...
    equb %10010000, %00000000, %00010010                              ; 13e8: 90 00 12    ...
    equb %10010000, %00000000, %00010010                              ; 13eb: 90 00 12    ...
    equb %10010001, %00000000, %00010010                              ; 13ee: 91 00 12    ...
    equb %10010001, %00000001, %00010010                              ; 13f1: 91 01 12    ...
    equb %10010001, %00010001, %00010010                              ; 13f4: 91 11 12    ...
    equb %10010001, %00010001, %00010010                              ; 13f7: 91 11 12    ...
    equb %11010001, %00010001, %00010010                              ; 13fa: d1 11 12    ...
    equb %01010001, %00010001, %00010100                              ; 13fd: 51 11 14    Q..
    equb %00110001, %00010001, %00011000                              ; 1400: 31 11 18    1..
    equb %00011001, %00010001, %00110000                              ; 1403: 19 11 30    ..0
    equb %00000111, %00010001, %11000000                              ; 1406: 07 11 c0    ...
    equb %00000000, %11111110, %00000000                              ; 1409: 00 fe 00    ...
.sprite_cage
    equb %00000000, %00111000, %00000000                              ; 140c: 00 38 00    .8.
    equb %00000000, %01000100, %00000000                              ; 140f: 00 44 00    .D.
    equb %00000000, %01000100, %00000000                              ; 1412: 00 44 00    .D.
    equb %00000000, %01000100, %00000000                              ; 1415: 00 44 00    .D.
    equb %00000000, %00111000, %00000000                              ; 1418: 00 38 00    .8.
    equb %00000000, %00010000, %00000000                              ; 141b: 00 10 00    ...
    equb %00000000, %11111110, %00000000                              ; 141e: 00 fe 00    ...
    equb %00000011, %01111101, %10000000                              ; 1421: 03 7d 80    .}.
    equb %00001100, %11010110, %01100000                              ; 1424: 0c d6 60    ..`
    equb %00010001, %01010101, %00010000                              ; 1427: 11 55 10    .U.
    equb %00100010, %01010100, %10001000                              ; 142a: 22 54 88    "T.
    equb %00100100, %10010010, %01001000                              ; 142d: 24 92 48    $.H
    equb %01000100, %10010010, %01000100                              ; 1430: 44 92 44    D.D
    equb %01001000, %10010010, %00100100                              ; 1433: 48 92 24    H.$
    equb %10001000, %10010010, %00100010                              ; 1436: 88 92 22    .."
    equb %10001001, %00010001, %00100010                              ; 1439: 89 11 22    .."
    equb %11010001, %00010001, %00010110                              ; 143c: d1 11 16    ...
    equb %10110001, %00010001, %00011010                              ; 143f: b1 11 1a    ...
    equb %10011001, %00010001, %00110010                              ; 1442: 99 11 32    ..2
    equb %10010111, %00010001, %11010010                              ; 1445: 97 11 d2    ...
    equb %10010001, %11111111, %00010010                              ; 1448: 91 ff 12    ...
    equb %10010001, %00010001, %00010010                              ; 144b: 91 11 12    ...
    equb %10010001, %00010001, %00010010                              ; 144e: 91 11 12    ...
    equb %10010001, %00010001, %00010010                              ; 1451: 91 11 12    ...
    equb %10010001, %00010001, %00010010                              ; 1454: 91 11 12    ...
    equb %10010001, %00010001, %00010010                              ; 1457: 91 11 12    ...
    equb %10010001, %00010001, %00010010                              ; 145a: 91 11 12    ...
    equb %10010001, %00010001, %00010010                              ; 145d: 91 11 12    ...
    equb %10010001, %00010001, %00010010                              ; 1460: 91 11 12    ...
    equb %11010001, %00010001, %00010110                              ; 1463: d1 11 16    ...
    equb %10110001, %00010001, %00011010                              ; 1466: b1 11 1a    ...
    equb %10011001, %00010001, %00110010                              ; 1469: 99 11 32    ..2
    equb %10010111, %00010001, %11010010                              ; 146c: 97 11 d2    ...
    equb %10010001, %11111111, %00010010                              ; 146f: 91 ff 12    ...
    equb %10010001, %00010001, %00010010                              ; 1472: 91 11 12    ...
    equb %10010001, %00010001, %00010010                              ; 1475: 91 11 12    ...
    equb %10010001, %00010001, %00010010                              ; 1478: 91 11 12    ...
    equb %10010001, %00010001, %00010010                              ; 147b: 91 11 12    ...
    equb %10010001, %00010001, %00010010                              ; 147e: 91 11 12    ...
    equb %10010001, %00010001, %00010010                              ; 1481: 91 11 12    ...
    equb %10010001, %00010001, %00010010                              ; 1484: 91 11 12    ...
    equb %10010001, %00010001, %00010010                              ; 1487: 91 11 12    ...
    equb %11010001, %00010001, %00010010                              ; 148a: d1 11 12    ...
    equb %01010001, %00010001, %00010100                              ; 148d: 51 11 14    Q..
    equb %00110001, %00010001, %00011000                              ; 1490: 31 11 18    1..
    equb %00011001, %00010001, %00110000                              ; 1493: 19 11 30    ..0
    equb %00000111, %00010001, %11000000                              ; 1496: 07 11 c0    ...
    equb %00000000, %11111110, %00000000                              ; 1499: 00 fe 00    ...
.sprite_birdright1
    equb %00001100                                                    ; 149c: 0c          .
    equb %00011011                                                    ; 149d: 1b          .
    equb %00011100                                                    ; 149e: 1c          .
    equb %00001000                                                    ; 149f: 08          .
    equb %00001000                                                    ; 14a0: 08          .
    equb %00000100                                                    ; 14a1: 04          .
    equb %00000100                                                    ; 14a2: 04          .
    equb %00000010                                                    ; 14a3: 02          .
    equb %00110010                                                    ; 14a4: 32          2
    equb %01111011                                                    ; 14a5: 7b          {
    equb %01111111                                                    ; 14a6: 7f          .
    equb %01111111                                                    ; 14a7: 7f          .
    equb %01111111                                                    ; 14a8: 7f          .
    equb %00111110                                                    ; 14a9: 3e          >
    equb %00011000                                                    ; 14aa: 18          .
    equb %00010000                                                    ; 14ab: 10          .
    equb %00010000                                                    ; 14ac: 10          .
    equb %00010000                                                    ; 14ad: 10          .
    equb %00010000                                                    ; 14ae: 10          .
    equb %00011000                                                    ; 14af: 18          .
.sprite_birdright2
    equb %00001101                                                    ; 14b0: 0d          .
    equb %00011010                                                    ; 14b1: 1a          .
    equb %00011101                                                    ; 14b2: 1d          .
    equb %00001000                                                    ; 14b3: 08          .
    equb %00001000                                                    ; 14b4: 08          .
    equb %00000100                                                    ; 14b5: 04          .
    equb %00000100                                                    ; 14b6: 04          .
    equb %00000010                                                    ; 14b7: 02          .
    equb %00110010                                                    ; 14b8: 32          2
    equb %01111011                                                    ; 14b9: 7b          {
    equb %01111111                                                    ; 14ba: 7f          .
    equb %01111111                                                    ; 14bb: 7f          .
    equb %01111111                                                    ; 14bc: 7f          .
    equb %00111110                                                    ; 14bd: 3e          >
    equb %00011000                                                    ; 14be: 18          .
    equb %00101000                                                    ; 14bf: 28          (
    equb %00101000                                                    ; 14c0: 28          (
    equb %01000100                                                    ; 14c1: 44          D
    equb %01000101                                                    ; 14c2: 45          E
    equb %00100010                                                    ; 14c3: 22          "
.sprite_birdleft1
    equb %00110000                                                    ; 14c4: 30          0
    equb %11011000                                                    ; 14c5: d8          .
    equb %00111000                                                    ; 14c6: 38          8
    equb %00010000                                                    ; 14c7: 10          .
    equb %00010000                                                    ; 14c8: 10          .
    equb %00100000                                                    ; 14c9: 20
    equb %00100000                                                    ; 14ca: 20
    equb %01000000                                                    ; 14cb: 40          @
    equb %01001100                                                    ; 14cc: 4c          L
    equb %11011110                                                    ; 14cd: de          .
    equb %11111110                                                    ; 14ce: fe          .
    equb %11111110                                                    ; 14cf: fe          .
    equb %11111110                                                    ; 14d0: fe          .
    equb %01111100                                                    ; 14d1: 7c          |
    equb %00011000                                                    ; 14d2: 18          .
    equb %00001000                                                    ; 14d3: 08          .
    equb %00001000                                                    ; 14d4: 08          .
    equb %00001000                                                    ; 14d5: 08          .
    equb %00001000                                                    ; 14d6: 08          .
    equb %00011000                                                    ; 14d7: 18          .
.sprite_birdleft2
    equb %10110000                                                    ; 14d8: b0          .
    equb %01011000                                                    ; 14d9: 58          X
    equb %10111000                                                    ; 14da: b8          .
    equb %00010000                                                    ; 14db: 10          .
    equb %00010000                                                    ; 14dc: 10          .
    equb %00100000                                                    ; 14dd: 20
    equb %00100000                                                    ; 14de: 20
    equb %01000000                                                    ; 14df: 40          @
    equb %01001100                                                    ; 14e0: 4c          L
    equb %11011110                                                    ; 14e1: de          .
    equb %11111110                                                    ; 14e2: fe          .
    equb %11111110                                                    ; 14e3: fe          .
    equb %11111110                                                    ; 14e4: fe          .
    equb %01111100                                                    ; 14e5: 7c          |
    equb %00011000                                                    ; 14e6: 18          .
    equb %00010100                                                    ; 14e7: 14          .
    equb %00010100                                                    ; 14e8: 14          .
    equb %00100010                                                    ; 14e9: 22          "
    equb %10100010                                                    ; 14ea: a2          .
    equb %01000100                                                    ; 14eb: 44          D
.sprite_birdupdown1
    equb %00011000                                                    ; 14ec: 18          .
    equb %00111100                                                    ; 14ed: 3c          <
    equb %00111100                                                    ; 14ee: 3c          <
    equb %00111100                                                    ; 14ef: 3c          <
    equb %00011000                                                    ; 14f0: 18          .
    equb %00011000                                                    ; 14f1: 18          .
    equb %00011000                                                    ; 14f2: 18          .
    equb %00111100                                                    ; 14f3: 3c          <
    equb %01111110                                                    ; 14f4: 7e          ~
    equb %01111110                                                    ; 14f5: 7e          ~
    equb %01111110                                                    ; 14f6: 7e          ~
    equb %01111110                                                    ; 14f7: 7e          ~
    equb %01111110                                                    ; 14f8: 7e          ~
    equb %00111100                                                    ; 14f9: 3c          <
    equb %00111100                                                    ; 14fa: 3c          <
    equb %00100100                                                    ; 14fb: 24          $
    equb %00100100                                                    ; 14fc: 24          $
    equb %00100110                                                    ; 14fd: 26          &
    equb %00100000                                                    ; 14fe: 20
    equb %01100000                                                    ; 14ff: 60          `
.sprite_birdupdown2
    equb %00011000                                                    ; 1500: 18          .
    equb %00111100                                                    ; 1501: 3c          <
    equb %00111100                                                    ; 1502: 3c          <
    equb %00111100                                                    ; 1503: 3c          <
    equb %00011000                                                    ; 1504: 18          .
    equb %00011000                                                    ; 1505: 18          .
    equb %00011000                                                    ; 1506: 18          .
    equb %00111100                                                    ; 1507: 3c          <
    equb %01111110                                                    ; 1508: 7e          ~
    equb %01111110                                                    ; 1509: 7e          ~
    equb %01111110                                                    ; 150a: 7e          ~
    equb %01111110                                                    ; 150b: 7e          ~
    equb %01111110                                                    ; 150c: 7e          ~
    equb %00111100                                                    ; 150d: 3c          <
    equb %00111100                                                    ; 150e: 3c          <
    equb %00100100                                                    ; 150f: 24          $
    equb %00100100                                                    ; 1510: 24          $
    equb %01100100                                                    ; 1511: 64          d
    equb %00000100                                                    ; 1512: 04          .
    equb %00000100                                                    ; 1513: 04          .
    equb %00000100                                                    ; 1514: 04          .
    equb %00000110                                                    ; 1515: 06          .
.sprite_birdeatright1
    equb %00000000, %00000000                                         ; 1516: 00 00       ..
    equb %00000000, %00000000                                         ; 1518: 00 00       ..
    equb %00000000, %00000000                                         ; 151a: 00 00       ..
    equb %00000000, %00000000                                         ; 151c: 00 00       ..
    equb %00000000, %00000000                                         ; 151e: 00 00       ..
    equb %00000000, %00000000                                         ; 1520: 00 00       ..
    equb %00000000, %00111000                                         ; 1522: 00 38       .8
    equb %00110000, %00101000                                         ; 1524: 30 28       0(
    equb %01111000, %01111000                                         ; 1526: 78 78       xx
    equb %01111100, %11000100                                         ; 1528: 7c c4       |.
    equb %01111111, %11000010                                         ; 152a: 7f c2       ..
    equb %01111111, %10000000                                         ; 152c: 7f 80       ..
    equb %00111111, %00000000                                         ; 152e: 3f 00       ?.
    equb %00111111, %00000000                                         ; 1530: 3f 00       ?.
    equb %00011111, %00000000                                         ; 1532: 1f 00       ..
    equb %00010110, %00000000                                         ; 1534: 16 00       ..
    equb %00010000, %00000000                                         ; 1536: 10 00       ..
    equb %00010000, %00000000                                         ; 1538: 10 00       ..
    equb %00010000, %00000000                                         ; 153a: 10 00       ..
    equb %00011000, %00000000                                         ; 153c: 18 00       ..
.sprite_birdeatright2
    equb %00000000, %00000000                                         ; 153e: 00 00       ..
    equb %00000000, %00000000                                         ; 1540: 00 00       ..
    equb %00000000, %00000000                                         ; 1542: 00 00       ..
    equb %00000000, %00000000                                         ; 1544: 00 00       ..
    equb %00000000, %00000000                                         ; 1546: 00 00       ..
    equb %00000000, %00000000                                         ; 1548: 00 00       ..
    equb %00000000, %00000000                                         ; 154a: 00 00       ..
    equb %00110000, %00000000                                         ; 154c: 30 00       0.
    equb %01111000, %00000000                                         ; 154e: 78 00       x.
    equb %01111100, %00000000                                         ; 1550: 7c 00       |.
    equb %01111110, %00000000                                         ; 1552: 7e 00       ~.
    equb %01111111, %11111000                                         ; 1554: 7f f8       ..
    equb %00111111, %11110100                                         ; 1556: 3f f4       ?.
    equb %00111111, %00010100                                         ; 1558: 3f 14       ?.
    equb %00011111, %00001000                                         ; 155a: 1f 08       ..
    equb %00010110, %00001000                                         ; 155c: 16 08       ..
    equb %00010000, %00001000                                         ; 155e: 10 08       ..
    equb %00010000, %00000000                                         ; 1560: 10 00       ..
    equb %00010000, %00000000                                         ; 1562: 10 00       ..
    equb %00011000, %00000000                                         ; 1564: 18 00       ..
.sprite_birdeatleft1
    equb %00000000, %00000000                                         ; 1566: 00 00       ..
    equb %00000000, %00000000                                         ; 1568: 00 00       ..
    equb %00000000, %00000000                                         ; 156a: 00 00       ..
    equb %00000000, %00000000                                         ; 156c: 00 00       ..
    equb %00000000, %00000000                                         ; 156e: 00 00       ..
    equb %00000000, %00000000                                         ; 1570: 00 00       ..
    equb %00011100, %00000000                                         ; 1572: 1c 00       ..
    equb %00010100, %00001100                                         ; 1574: 14 0c       ..
    equb %00011110, %00011110                                         ; 1576: 1e 1e       ..
    equb %00100011, %00111110                                         ; 1578: 23 3e       #>
    equb %01000011, %11111110                                         ; 157a: 43 fe       C.
    equb %00000001, %11111110                                         ; 157c: 01 fe       ..
    equb %00000000, %11111100                                         ; 157e: 00 fc       ..
    equb %00000000, %11111100                                         ; 1580: 00 fc       ..
    equb %00000000, %11111000                                         ; 1582: 00 f8       ..
    equb %00000000, %01101000                                         ; 1584: 00 68       .h
    equb %00000000, %00001000                                         ; 1586: 00 08       ..
    equb %00000000, %00001000                                         ; 1588: 00 08       ..
    equb %00000000, %00001000                                         ; 158a: 00 08       ..
    equb %00000000, %00011000                                         ; 158c: 00 18       ..
.sprite_birdeatleft2
    equb %00000000, %00000000                                         ; 158e: 00 00       ..
    equb %00000000, %00000000                                         ; 1590: 00 00       ..
    equb %00000000, %00000000                                         ; 1592: 00 00       ..
    equb %00000000, %00000000                                         ; 1594: 00 00       ..
    equb %00000000, %00000000                                         ; 1596: 00 00       ..
    equb %00000000, %00000000                                         ; 1598: 00 00       ..
    equb %00000000, %00000000                                         ; 159a: 00 00       ..
    equb %00000000, %00001100                                         ; 159c: 00 0c       ..
    equb %00000000, %00011110                                         ; 159e: 00 1e       ..
    equb %00000000, %00111110                                         ; 15a0: 00 3e       .>
    equb %00000000, %01111110                                         ; 15a2: 00 7e       .~
    equb %00011111, %11111110                                         ; 15a4: 1f fe       ..
    equb %00101111, %11111100                                         ; 15a6: 2f fc       /.
    equb %00101000, %11111100                                         ; 15a8: 28 fc       (.
    equb %00010000, %11111000                                         ; 15aa: 10 f8       ..
    equb %00010000, %01101000                                         ; 15ac: 10 68       .h
    equb %00010000, %00001000                                         ; 15ae: 10 08       ..
    equb %00000000, %00001000                                         ; 15b0: 00 08       ..
    equb %00000000, %00001000                                         ; 15b2: 00 08       ..
    equb %00000000, %00011000                                         ; 15b4: 00 18       ..
.sprite_digit0
    equb %01100000                                                    ; 15b6: 60          `
    equb %10010000                                                    ; 15b7: 90          .
    equb %10010000                                                    ; 15b8: 90          .
    equb %10010000                                                    ; 15b9: 90          .
    equb %10010000                                                    ; 15ba: 90          .
    equb %10010000                                                    ; 15bb: 90          .
    equb %01100000                                                    ; 15bc: 60          `
.sprite_digit1
    equb %00100000                                                    ; 15bd: 20
    equb %01100000                                                    ; 15be: 60          `
    equb %00100000                                                    ; 15bf: 20
    equb %00100000                                                    ; 15c0: 20
    equb %00100000                                                    ; 15c1: 20
    equb %00100000                                                    ; 15c2: 20
    equb %01110000                                                    ; 15c3: 70          p
.sprite_digit2
    equb %01100000                                                    ; 15c4: 60          `
    equb %10010000                                                    ; 15c5: 90          .
    equb %00010000                                                    ; 15c6: 10          .
    equb %00100000                                                    ; 15c7: 20
    equb %01000000                                                    ; 15c8: 40          @
    equb %10000000                                                    ; 15c9: 80          .
    equb %11110000                                                    ; 15ca: f0          .
.sprite_digit3
    equb %01100000                                                    ; 15cb: 60          `
    equb %10010000                                                    ; 15cc: 90          .
    equb %00010000                                                    ; 15cd: 10          .
    equb %00100000                                                    ; 15ce: 20
    equb %00010000                                                    ; 15cf: 10          .
    equb %10010000                                                    ; 15d0: 90          .
    equb %01100000                                                    ; 15d1: 60          `
.sprite_digit4
    equb %10000000                                                    ; 15d2: 80          .
    equb %10000000                                                    ; 15d3: 80          .
    equb %10100000                                                    ; 15d4: a0          .
    equb %10100000                                                    ; 15d5: a0          .
    equb %11110000                                                    ; 15d6: f0          .
    equb %00100000                                                    ; 15d7: 20
    equb %00100000                                                    ; 15d8: 20
.sprite_digit5
    equb %11110000                                                    ; 15d9: f0          .
    equb %10000000                                                    ; 15da: 80          .
    equb %11100000                                                    ; 15db: e0          .
    equb %00010000                                                    ; 15dc: 10          .
    equb %00010000                                                    ; 15dd: 10          .
    equb %10010000                                                    ; 15de: 90          .
    equb %01100000                                                    ; 15df: 60          `
.sprite_digit6
    equb %01100000                                                    ; 15e0: 60          `
    equb %10010000                                                    ; 15e1: 90          .
    equb %10000000                                                    ; 15e2: 80          .
    equb %11100000                                                    ; 15e3: e0          .
    equb %10010000                                                    ; 15e4: 90          .
    equb %10010000                                                    ; 15e5: 90          .
    equb %01100000                                                    ; 15e6: 60          `
.sprite_digit7
    equb %11110000                                                    ; 15e7: f0          .
    equb %00010000                                                    ; 15e8: 10          .
    equb %00010000                                                    ; 15e9: 10          .
    equb %00100000                                                    ; 15ea: 20
    equb %00100000                                                    ; 15eb: 20
    equb %01000000                                                    ; 15ec: 40          @
    equb %01000000                                                    ; 15ed: 40          @
.sprite_digit8
    equb %01100000                                                    ; 15ee: 60          `
    equb %10010000                                                    ; 15ef: 90          .
    equb %10010000                                                    ; 15f0: 90          .
    equb %01100000                                                    ; 15f1: 60          `
    equb %10010000                                                    ; 15f2: 90          .
    equb %10010000                                                    ; 15f3: 90          .
    equb %01100000                                                    ; 15f4: 60          `
.sprite_digit9
    equb %01100000                                                    ; 15f5: 60          `
    equb %10010000                                                    ; 15f6: 90          .
    equb %10010000                                                    ; 15f7: 90          .
    equb %01110000                                                    ; 15f8: 70          p
    equb %00010000                                                    ; 15f9: 10          .
    equb %10010000                                                    ; 15fa: 90          .
    equb %01100000                                                    ; 15fb: 60          `
.sprite_score
    equb %11111111, %11111111, %11111000                              ; 15fc: ff ff f8    ...
    equb %10001000, %10001001, %10001000                              ; 15ff: 88 89 88    ...
    equb %10111011, %10101010, %10111000                              ; 1602: bb aa b8    ...
    equb %10111011, %10101010, %10111000                              ; 1605: bb aa b8    ...
    equb %10001011, %10101001, %10011000                              ; 1608: 8b a9 98    ...
    equb %11101011, %10101010, %10111000                              ; 160b: eb aa b8    ...
    equb %11101011, %10101010, %10111000                              ; 160e: eb aa b8    ...
    equb %10001000, %10001010, %10001000                              ; 1611: 88 8a 88    ...
    equb %11111111, %11111111, %11111000                              ; 1614: ff ff f8    ...
.sprite_highlightbox
    equb %11111111, %11111111, %11111111, %11111110                   ; 1617: ff ff ff... ...
    equb %11111111, %11111111, %11111111, %11111110                   ; 161b: ff ff ff... ...
    equb %11111111, %11111111, %11111111, %11111110                   ; 161f: ff ff ff... ...
    equb %11111111, %11111111, %11111111, %11111110                   ; 1623: ff ff ff... ...
    equb %11111111, %11111111, %11111111, %11111110                   ; 1627: ff ff ff... ...
    equb %11111111, %11111111, %11111111, %11111110                   ; 162b: ff ff ff... ...
    equb %11111111, %11111111, %11111111, %11111110                   ; 162f: ff ff ff... ...
    equb %11111111, %11111111, %11111111, %11111110                   ; 1633: ff ff ff... ...
    equb %11111111, %11111111, %11111111, %11111110                   ; 1637: ff ff ff... ...
.sprite_player
    equb %11111111, %11111111, %11111111, %11111111                   ; 163b: ff ff ff... ...
    equb %10011011, %11011010, %10001001, %11111111                   ; 163f: 9b da 89... ...
    equb %10101011, %10101010, %10111010, %11111111                   ; 1643: ab aa ba... ...
    equb %10101011, %10101010, %10111010, %11111111                   ; 1647: ab aa ba... ...
    equb %10011011, %10001101, %10011001, %11111111                   ; 164b: 9b 8d 99... ...
    equb %10111011, %10101101, %10111010, %11111111                   ; 164f: bb ad ba... ...
    equb %10111011, %10101101, %10111010, %11111111                   ; 1653: bb ad ba... ...
    equb %10111000, %10101101, %10001010, %11111111                   ; 1657: b8 ad 8a... ...
    equb %11111111, %11111111, %11111111, %11111111                   ; 165b: ff ff ff... ...
.sprite_level
    equb %11111111, %11111111, %11111111, %11111111, %11111100        ; 165f: ff ff ff... ...
    equb %10111000, %10101000, %10111111, %11111111, %11111100        ; 1664: b8 a8 bf... ...
    equb %10111011, %10101011, %10111111, %11111111, %11111100        ; 1669: bb ab bf... ...
    equb %10111011, %10101011, %10111111, %11111111, %11111100        ; 166e: bb ab bf... ...
    equb %10111001, %10101001, %10111111, %11111111, %11111100        ; 1673: b9 a9 bf... ...
    equb %10111011, %10101011, %10111111, %11111111, %11111100        ; 1678: bb ab bf... ...
    equb %10111011, %11011011, %10111111, %11111111, %11111100        ; 167d: bb db bf... ...
    equb %10001000, %11011000, %10001111, %11111111, %11111100        ; 1682: 88 d8 8f... ...
    equb %11111111, %11111111, %11111111, %11111111, %11111100        ; 1687: ff ff ff... ...
.sprite_bonus
    equb %11111111, %11111111, %11111111, %11111111, %11111111, %11110000; 168c: ff ff ff... ...
    equb %10011000, %10110101, %01000111, %11111111, %11111111, %11110000; 1692: 98 b5 47... ..G
    equb %10101010, %10010101, %01011111, %11111111, %11111111, %11110000; 1698: aa 95 5f... .._
    equb %10101010, %10010101, %01011111, %11111111, %11111111, %11110000; 169e: aa 95 5f... .._
    equb %10011010, %10100101, %01000111, %11111111, %11111111, %11110000; 16a4: 9a a5 47... ..G
    equb %10101010, %10100101, %01110111, %11111111, %11111111, %11110000; 16aa: aa a5 77... ..w
    equb %10101010, %10110101, %01110111, %11111111, %11111111, %11110000; 16b0: aa b5 77... ..w
    equb %10011000, %10110100, %01000111, %11111111, %11111111, %11110000; 16b6: 98 b4 47... ..G
    equb %11111111, %11111111, %11111111, %11111111, %11111111, %11110000; 16bc: ff ff ff... ...
.sprite_time
    equb %11111111, %11111111, %11111111, %11111111, %11000000        ; 16c2: ff ff ff... ...
    equb %10001010, %01001000, %11111111, %11111111, %11000000        ; 16c7: 8a 48 ff... .H.
    equb %11011010, %01001011, %11111111, %11111111, %11000000        ; 16cc: da 4b ff... .K.
    equb %11011010, %10101011, %11111111, %11111111, %11000000        ; 16d1: da ab ff... ...
    equb %11011010, %10101001, %11111111, %11111111, %11000000        ; 16d6: da a9 ff... ...
    equb %11011010, %10101011, %11111111, %11111111, %11000000        ; 16db: da ab ff... ...
    equb %11011010, %11101011, %11111111, %11111111, %11000000        ; 16e0: da eb ff... ...
    equb %11011010, %11101000, %11111111, %11111111, %11000000        ; 16e5: da e8 ff... ...
    equb %11111111, %11111111, %11111111, %11111111, %11000000        ; 16ea: ff ff ff... ...
.sprite_life
    equb %01000000                                                    ; 16ef: 40          @
    equb %11100000                                                    ; 16f0: e0          .
    equb %00000000                                                    ; 16f1: 00          .
.sprite_bigc
    equb %00000011, %10000000                                         ; 16f2: 03 80       ..
    equb %00001111, %11100000                                         ; 16f4: 0f e0       ..
    equb %00011111, %11110000                                         ; 16f6: 1f f0       ..
    equb %00011111, %11111000                                         ; 16f8: 1f f8       ..
    equb %00111111, %11111000                                         ; 16fa: 3f f8       ?.
    equb %00111111, %11111100                                         ; 16fc: 3f fc       ?.
    equb %01111111, %11111100                                         ; 16fe: 7f fc       ..
    equb %01111111, %11111100                                         ; 1700: 7f fc       ..
    equb %01111110, %01111100                                         ; 1702: 7e 7c       ~|
    equb %01111100, %00111000                                         ; 1704: 7c 38       |8
    equb %11111000, %00011000                                         ; 1706: f8 18       ..
    equb %11111000, %00000000                                         ; 1708: f8 00       ..
    equb %11110000, %00000000                                         ; 170a: f0 00       ..
    equb %11110000, %00000000                                         ; 170c: f0 00       ..
    equb %11110000, %00000000                                         ; 170e: f0 00       ..
    equb %11110000, %00000000                                         ; 1710: f0 00       ..
    equb %11110000, %00000000                                         ; 1712: f0 00       ..
    equb %11110000, %00000000                                         ; 1714: f0 00       ..
    equb %11111000, %00000000                                         ; 1716: f8 00       ..
    equb %11111000, %00011000                                         ; 1718: f8 18       ..
    equb %01111100, %00111000                                         ; 171a: 7c 38       |8
    equb %01111110, %01111100                                         ; 171c: 7e 7c       ~|
    equb %01111111, %11111100                                         ; 171e: 7f fc       ..
    equb %01111111, %11111100                                         ; 1720: 7f fc       ..
    equb %00111111, %11111100                                         ; 1722: 3f fc       ?.
    equb %00111111, %11111000                                         ; 1724: 3f f8       ?.
    equb %00011111, %11111000                                         ; 1726: 1f f8       ..
    equb %00011111, %11110000                                         ; 1728: 1f f0       ..
    equb %00001111, %11100000                                         ; 172a: 0f e0       ..
    equb %00000011, %10000000                                         ; 172c: 03 80       ..
.sprite_bigh
    equb %01100000, %00011000                                         ; 172e: 60 18       `.
    equb %11110000, %00111100                                         ; 1730: f0 3c       .<
    equb %11110000, %00111100                                         ; 1732: f0 3c       .<
    equb %11110000, %00111100                                         ; 1734: f0 3c       .<
    equb %11110000, %00111100                                         ; 1736: f0 3c       .<
    equb %11110000, %00111100                                         ; 1738: f0 3c       .<
    equb %11110000, %00111100                                         ; 173a: f0 3c       .<
    equb %11110000, %00111100                                         ; 173c: f0 3c       .<
    equb %11110000, %00111100                                         ; 173e: f0 3c       .<
    equb %11110000, %00111100                                         ; 1740: f0 3c       .<
    equb %11110000, %00111100                                         ; 1742: f0 3c       .<
    equb %11110000, %00111100                                         ; 1744: f0 3c       .<
    equb %11111111, %11111100                                         ; 1746: ff fc       ..
    equb %11111111, %11111100                                         ; 1748: ff fc       ..
    equb %11111111, %11111100                                         ; 174a: ff fc       ..
    equb %11111111, %11111100                                         ; 174c: ff fc       ..
    equb %11111111, %11111100                                         ; 174e: ff fc       ..
    equb %11111111, %11111100                                         ; 1750: ff fc       ..
    equb %11110000, %00111100                                         ; 1752: f0 3c       .<
    equb %11110000, %00111100                                         ; 1754: f0 3c       .<
    equb %11110000, %00111100                                         ; 1756: f0 3c       .<
    equb %11110000, %00111100                                         ; 1758: f0 3c       .<
    equb %11110000, %00111100                                         ; 175a: f0 3c       .<
    equb %11110000, %00111100                                         ; 175c: f0 3c       .<
    equb %11110000, %00111100                                         ; 175e: f0 3c       .<
    equb %11110000, %00111100                                         ; 1760: f0 3c       .<
    equb %11110000, %00111100                                         ; 1762: f0 3c       .<
    equb %11110000, %00111100                                         ; 1764: f0 3c       .<
    equb %11110000, %00111100                                         ; 1766: f0 3c       .<
    equb %01100000, %00011000                                         ; 1768: 60 18       `.
.sprite_bigu
    equb %01100000, %00011000                                         ; 176a: 60 18       `.
    equb %11110000, %00111100                                         ; 176c: f0 3c       .<
    equb %11110000, %00111100                                         ; 176e: f0 3c       .<
    equb %11110000, %00111100                                         ; 1770: f0 3c       .<
    equb %11110000, %00111100                                         ; 1772: f0 3c       .<
    equb %11110000, %00111100                                         ; 1774: f0 3c       .<
    equb %11110000, %00111100                                         ; 1776: f0 3c       .<
    equb %11110000, %00111100                                         ; 1778: f0 3c       .<
    equb %11110000, %00111100                                         ; 177a: f0 3c       .<
    equb %11110000, %00111100                                         ; 177c: f0 3c       .<
    equb %11110000, %00111100                                         ; 177e: f0 3c       .<
    equb %11110000, %00111100                                         ; 1780: f0 3c       .<
    equb %11110000, %00111100                                         ; 1782: f0 3c       .<
    equb %11110000, %00111100                                         ; 1784: f0 3c       .<
    equb %11110000, %00111100                                         ; 1786: f0 3c       .<
    equb %11110000, %00111100                                         ; 1788: f0 3c       .<
    equb %11110000, %00111100                                         ; 178a: f0 3c       .<
    equb %11110000, %00111100                                         ; 178c: f0 3c       .<
    equb %11110000, %00111100                                         ; 178e: f0 3c       .<
    equb %11110000, %00111100                                         ; 1790: f0 3c       .<
    equb %11110000, %00111100                                         ; 1792: f0 3c       .<
    equb %11110000, %00111100                                         ; 1794: f0 3c       .<
    equb %11111000, %01111100                                         ; 1796: f8 7c       .|
    equb %11111100, %11111100                                         ; 1798: fc fc       ..
    equb %11111111, %11111100                                         ; 179a: ff fc       ..
    equb %11111111, %11111100                                         ; 179c: ff fc       ..
    equb %11111111, %11111100                                         ; 179e: ff fc       ..
    equb %01111111, %11111000                                         ; 17a0: 7f f8       ..
    equb %01111111, %11111000                                         ; 17a2: 7f f8       ..
    equb %00111111, %11110000                                         ; 17a4: 3f f0       ?.
.sprite_bigk
    equb %01100000, %00010000                                         ; 17a6: 60 10       `.
    equb %11110000, %00111000                                         ; 17a8: f0 38       .8
    equb %11110000, %00111000                                         ; 17aa: f0 38       .8
    equb %11110000, %01111100                                         ; 17ac: f0 7c       .|
    equb %11110000, %01111100                                         ; 17ae: f0 7c       .|
    equb %11110000, %11111100                                         ; 17b0: f0 fc       ..
    equb %11110000, %11111100                                         ; 17b2: f0 fc       ..
    equb %11110001, %11111000                                         ; 17b4: f1 f8       ..
    equb %11110001, %11111000                                         ; 17b6: f1 f8       ..
    equb %11110011, %11110000                                         ; 17b8: f3 f0       ..
    equb %11110011, %11110000                                         ; 17ba: f3 f0       ..
    equb %11110111, %11100000                                         ; 17bc: f7 e0       ..
    equb %11111111, %11100000                                         ; 17be: ff e0       ..
    equb %11111111, %11000000                                         ; 17c0: ff c0       ..
    equb %11111111, %10000000                                         ; 17c2: ff 80       ..
    equb %11111111, %11000000                                         ; 17c4: ff c0       ..
    equb %11111111, %11000000                                         ; 17c6: ff c0       ..
    equb %11111111, %11100000                                         ; 17c8: ff e0       ..
    equb %11111111, %11100000                                         ; 17ca: ff e0       ..
    equb %11110011, %11110000                                         ; 17cc: f3 f0       ..
    equb %11110011, %11110000                                         ; 17ce: f3 f0       ..
    equb %11110001, %11111000                                         ; 17d0: f1 f8       ..
    equb %11110001, %11111000                                         ; 17d2: f1 f8       ..
    equb %11110000, %11111100                                         ; 17d4: f0 fc       ..
    equb %11110000, %11111100                                         ; 17d6: f0 fc       ..
    equb %11110000, %01111100                                         ; 17d8: f0 7c       .|
    equb %11110000, %01111100                                         ; 17da: f0 7c       .|
    equb %11110000, %00111000                                         ; 17dc: f0 38       .8
    equb %11110000, %00111000                                         ; 17de: f0 38       .8
    equb %01100000, %00010000                                         ; 17e0: 60 10       `.
.sprite_bigi
    equb %01111111, %11111000                                         ; 17e2: 7f f8       ..
    equb %11111111, %11111100                                         ; 17e4: ff fc       ..
    equb %11111111, %11111100                                         ; 17e6: ff fc       ..
    equb %11111111, %11111100                                         ; 17e8: ff fc       ..
    equb %11111111, %11111100                                         ; 17ea: ff fc       ..
    equb %01111111, %11111000                                         ; 17ec: 7f f8       ..
    equb %00000111, %10000000                                         ; 17ee: 07 80       ..
    equb %00000111, %10000000                                         ; 17f0: 07 80       ..
    equb %00000111, %10000000                                         ; 17f2: 07 80       ..
    equb %00000111, %10000000                                         ; 17f4: 07 80       ..
    equb %00000111, %10000000                                         ; 17f6: 07 80       ..
    equb %00000111, %10000000                                         ; 17f8: 07 80       ..
    equb %00000111, %10000000                                         ; 17fa: 07 80       ..
    equb %00000111, %10000000                                         ; 17fc: 07 80       ..
    equb %00000111, %10000000                                         ; 17fe: 07 80       ..
    equb %00000111, %10000000                                         ; 1800: 07 80       ..
    equb %00000111, %10000000                                         ; 1802: 07 80       ..
    equb %00000111, %10000000                                         ; 1804: 07 80       ..
    equb %00000111, %10000000                                         ; 1806: 07 80       ..
    equb %00000111, %10000000                                         ; 1808: 07 80       ..
    equb %00000111, %10000000                                         ; 180a: 07 80       ..
    equb %00000111, %10000000                                         ; 180c: 07 80       ..
    equb %00000111, %10000000                                         ; 180e: 07 80       ..
    equb %00000111, %10000000                                         ; 1810: 07 80       ..
    equb %01111111, %11111000                                         ; 1812: 7f f8       ..
    equb %11111111, %11111100                                         ; 1814: ff fc       ..
    equb %11111111, %11111100                                         ; 1816: ff fc       ..
    equb %11111111, %11111100                                         ; 1818: ff fc       ..
    equb %11111111, %11111100                                         ; 181a: ff fc       ..
    equb %01111111, %11111000                                         ; 181c: 7f f8       ..
.sprite_bige
    equb %00111111, %11111000                                         ; 181e: 3f f8       ?.
    equb %01111111, %11111100                                         ; 1820: 7f fc       ..
    equb %01111111, %11111100                                         ; 1822: 7f fc       ..
    equb %11111111, %11111100                                         ; 1824: ff fc       ..
    equb %11111111, %11111100                                         ; 1826: ff fc       ..
    equb %11111111, %11111000                                         ; 1828: ff f8       ..
    equb %11111000, %00000000                                         ; 182a: f8 00       ..
    equb %11110000, %00000000                                         ; 182c: f0 00       ..
    equb %11110000, %00000000                                         ; 182e: f0 00       ..
    equb %11110000, %00000000                                         ; 1830: f0 00       ..
    equb %11110000, %00000000                                         ; 1832: f0 00       ..
    equb %11110000, %00000000                                         ; 1834: f0 00       ..
    equb %11111111, %11100000                                         ; 1836: ff e0       ..
    equb %11111111, %11110000                                         ; 1838: ff f0       ..
    equb %11111111, %11110000                                         ; 183a: ff f0       ..
    equb %11111111, %11110000                                         ; 183c: ff f0       ..
    equb %11111111, %11110000                                         ; 183e: ff f0       ..
    equb %11111111, %11100000                                         ; 1840: ff e0       ..
    equb %11110000, %00000000                                         ; 1842: f0 00       ..
    equb %11110000, %00000000                                         ; 1844: f0 00       ..
    equb %11110000, %00000000                                         ; 1846: f0 00       ..
    equb %11110000, %00000000                                         ; 1848: f0 00       ..
    equb %11110000, %00000000                                         ; 184a: f0 00       ..
    equb %11111000, %00000000                                         ; 184c: f8 00       ..
    equb %11111111, %11111000                                         ; 184e: ff f8       ..
    equb %11111111, %11111100                                         ; 1850: ff fc       ..
    equb %11111111, %11111100                                         ; 1852: ff fc       ..
    equb %01111111, %11111100                                         ; 1854: 7f fc       ..
    equb %01111111, %11111100                                         ; 1856: 7f fc       ..
    equb %00111111, %11111000                                         ; 1858: 3f f8       ?.
.sprite_bigg
    equb %00000011, %10000000                                         ; 185a: 03 80       ..
    equb %00001111, %11100000                                         ; 185c: 0f e0       ..
    equb %00011111, %11110000                                         ; 185e: 1f f0       ..
    equb %00011111, %11111000                                         ; 1860: 1f f8       ..
    equb %00111111, %11111000                                         ; 1862: 3f f8       ?.
    equb %00111111, %11111100                                         ; 1864: 3f fc       ?.
    equb %01111111, %11111100                                         ; 1866: 7f fc       ..
    equb %01111111, %11111100                                         ; 1868: 7f fc       ..
    equb %01111110, %01111100                                         ; 186a: 7e 7c       ~|
    equb %01111100, %00111000                                         ; 186c: 7c 38       |8
    equb %11111000, %00011000                                         ; 186e: f8 18       ..
    equb %11111000, %00000000                                         ; 1870: f8 00       ..
    equb %11110000, %00000000                                         ; 1872: f0 00       ..
    equb %11110000, %00000000                                         ; 1874: f0 00       ..
    equb %11110000, %00000000                                         ; 1876: f0 00       ..
    equb %11110000, %00000000                                         ; 1878: f0 00       ..
    equb %11110000, %11111000                                         ; 187a: f0 f8       ..
    equb %11110000, %11111000                                         ; 187c: f0 f8       ..
    equb %11111000, %11111100                                         ; 187e: f8 fc       ..
    equb %11111000, %01111100                                         ; 1880: f8 7c       .|
    equb %01111100, %00111100                                         ; 1882: 7c 3c       |<
    equb %01111110, %00111100                                         ; 1884: 7e 3c       ~<
    equb %01111111, %01111100                                         ; 1886: 7f 7c       .|
    equb %01111111, %11111100                                         ; 1888: 7f fc       ..
    equb %00111111, %11111100                                         ; 188a: 3f fc       ?.
    equb %00111111, %11111100                                         ; 188c: 3f fc       ?.
    equb %00011111, %11111100                                         ; 188e: 1f fc       ..
    equb %00011111, %11111000                                         ; 1890: 1f f8       ..
    equb %00001111, %11111000                                         ; 1892: 0f f8       ..
    equb %00000011, %11110000                                         ; 1894: 03 f0       ..
.unused4
    equb  32,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 1896: 20 00 00...  ..
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 18a2: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 18ae: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 18ba: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 18c6: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 18d2: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 18de: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0   ; 18ea: 00 00 00... ...
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  13, 255   ; 18f6: 00 00 00... ...

; ----------------------------------------------------------------------------------
; Plot sprite
; 
;  (read,x)        = sprite data
;  (write),y       = screen address
;  spriteline      = line within character row of sprite, 0-7
;  spritecolumn    = 0 or 1 for the pixel of the Mode 2 byte
;  spritewidth     = width of sprite data in bytes (multiples of 8 pixels)
;  spriteheight    = height of sprite in pixels
;  spritecolour    = byte which would set leftmost Mode 2 pixel in the desired colour
; 
; ----------------------------------------------------------------------------------
.plotsprite
    lda spritecolumn                                                  ; 1902: a5 73       .s
    sta columncounter                                                 ; 1904: 85 81       ..
    ldy #0                                                            ; 1906: a0 00       ..
    lda spritewidth                                                   ; 1908: a5 7a       .z
    sta widthcounter                                                  ; 190a: 85 87       ..
    ldx #0                                                            ; 190c: a2 00       ..
    lda (read,x)                                                      ; 190e: a1 76       .v
    sta spritebyte                                                    ; 1910: 85 84       ..
    lda #8                                                            ; 1912: a9 08       ..
    sta pixelbitcounter                                               ; 1914: 85 83       ..
    lda spritecolour                                                  ; 1916: a5 7f       ..
    ldx columncounter                                                 ; 1918: a6 81       ..
    beq dontrotatecolour                                              ; 191a: f0 04       ..
.rotatecolourloop
    lsr a                                                             ; 191c: 4a          J
    dex                                                               ; 191d: ca          .
    bne rotatecolourloop                                              ; 191e: d0 fc       ..
.dontrotatecolour
    sta pixelvalue                                                    ; 1920: 85 82       ..
    lda #2                                                            ; 1922: a9 02       ..
    sec                                                               ; 1924: 38          8
    sbc columncounter                                                 ; 1925: e5 81       ..
    sta columncounter                                                 ; 1927: 85 81       ..
    ldx #0                                                            ; 1929: a2 00       ..
.plotpixelloop
    asl spritebyte                                                    ; 192b: 06 84       ..
    bcc pixelclear                                                    ; 192d: 90 06       ..
    lda (write),y                                                     ; 192f: b1 70       .p
    eor pixelvalue                                                    ; 1931: 45 82       E.
    sta (write),y                                                     ; 1933: 91 70       .p
.pixelclear
    dec pixelbitcounter                                               ; 1935: c6 83       ..
    bne morebitsleft                                                  ; 1937: d0 12       ..
    inc read                                                          ; 1939: e6 76       .v
    bne skip1                                                         ; 193b: d0 02       ..
    inc read + 1                                                      ; 193d: e6 77       .w
.skip1
    dec widthcounter                                                  ; 193f: c6 87       ..
    beq spritedonerow                                                 ; 1941: f0 1e       ..
    lda (read,x)                                                      ; 1943: a1 76       .v
    sta spritebyte                                                    ; 1945: 85 84       ..
    lda #8                                                            ; 1947: a9 08       ..
    sta pixelbitcounter                                               ; 1949: 85 83       ..
.morebitsleft
    lsr pixelvalue                                                    ; 194b: 46 82       F.
    dec columncounter                                                 ; 194d: c6 81       ..
    bne plotpixelloop                                                 ; 194f: d0 da       ..
    tya                                                               ; 1951: 98          .
    clc                                                               ; 1952: 18          .
    adc #8                                                            ; 1953: 69 08       i.
    tay                                                               ; 1955: a8          .
    lda spritecolour                                                  ; 1956: a5 7f       ..
    sta pixelvalue                                                    ; 1958: 85 82       ..
    lda #2                                                            ; 195a: a9 02       ..
    sta columncounter                                                 ; 195c: 85 81       ..
    jmp plotpixelloop                                                 ; 195e: 4c 2b 19    L+.

.spritedonerow
    dec spriteheight                                                  ; 1961: c6 78       .x
    beq plotspriteexit                                                ; 1963: f0 06       ..
    jsr spritegotonextrow                                             ; 1965: 20 6c 19     l.
    jmp plotsprite                                                    ; 1968: 4c 02 19    L..

.plotspriteexit
    rts                                                               ; 196b: 60          `

; ----------------------------------------------------------------------------------
; Sets screen address / line to next row
; ----------------------------------------------------------------------------------
.spritegotonextrow
    inc spriteline                                                    ; 196c: e6 72       .r
    lda spriteline                                                    ; 196e: a5 72       .r
    and #7                                                            ; 1970: 29 07       ).
    beq movetonextcharrow                                             ; 1972: f0 03       ..
    inc write                                                         ; 1974: e6 70       .p
    rts                                                               ; 1976: 60          `

.movetonextcharrow
    sta spriteline                                                    ; 1977: 85 72       .r
    clc                                                               ; 1979: 18          .
    lda write                                                         ; 197a: a5 70       .p
    adc #&79                                                          ; 197c: 69 79       iy
    sta write                                                         ; 197e: 85 70       .p
    lda write + 1                                                     ; 1980: a5 71       .q
    adc #2                                                            ; 1982: 69 02       i.
    sta write + 1                                                     ; 1984: 85 71       .q
    rts                                                               ; 1986: 60          `

; ----------------------------------------------------------------------------------
; Calculate screen address from position in X, Y
; 
; Returns:
;     (write)          = screen address
;     spriteline       = line within character row
;     spritecolumn     = column 0 or 1
; 
; ----------------------------------------------------------------------------------
.calcscrnaddr
    lda #0                                                            ; 1987: a9 00       ..
    sta write + 1                                                     ; 1989: 85 71       .q
    sta spritetemp                                                    ; 198b: 85 74       .t
    tya                                                               ; 198d: 98          .
    eor #&ff                                                          ; 198e: 49 ff       I.
    tay                                                               ; 1990: a8          .
    and #&f8                                                          ; 1991: 29 f8       ).
    sta write                                                         ; 1993: 85 70       .p
    asl a                                                             ; 1995: 0a          .
    rol write + 1                                                     ; 1996: 26 71       &q
    asl a                                                             ; 1998: 0a          .
    rol write + 1                                                     ; 1999: 26 71       &q
    clc                                                               ; 199b: 18          .
    adc write                                                         ; 199c: 65 70       ep
    sta write                                                         ; 199e: 85 70       .p
    lda #0                                                            ; 19a0: a9 00       ..
    adc write + 1                                                     ; 19a2: 65 71       eq
    sta write + 1                                                     ; 19a4: 85 71       .q
    asl write                                                         ; 19a6: 06 70       .p
    rol write + 1                                                     ; 19a8: 26 71       &q
    asl write                                                         ; 19aa: 06 70       .p
    rol write + 1                                                     ; 19ac: 26 71       &q
    asl write                                                         ; 19ae: 06 70       .p
    rol write + 1                                                     ; 19b0: 26 71       &q
    asl write                                                         ; 19b2: 06 70       .p
    rol write + 1                                                     ; 19b4: 26 71       &q
    tya                                                               ; 19b6: 98          .
    and #7                                                            ; 19b7: 29 07       ).
    sta spriteline                                                    ; 19b9: 85 72       .r
    clc                                                               ; 19bb: 18          .
    adc write                                                         ; 19bc: 65 70       ep
    sta write                                                         ; 19be: 85 70       .p
    txa                                                               ; 19c0: 8a          .
    and #1                                                            ; 19c1: 29 01       ).
    sta spritecolumn                                                  ; 19c3: 85 73       .s
    txa                                                               ; 19c5: 8a          .
    and #&fe                                                          ; 19c6: 29 fe       ).
    asl a                                                             ; 19c8: 0a          .
    rol spritetemp                                                    ; 19c9: 26 74       &t
    asl a                                                             ; 19cb: 0a          .
    rol spritetemp                                                    ; 19cc: 26 74       &t
    adc write                                                         ; 19ce: 65 70       ep
    sta write                                                         ; 19d0: 85 70       .p
    lda spritetemp                                                    ; 19d2: a5 74       .t
    adc write + 1                                                     ; 19d4: 65 71       eq
    adc #&30                                                          ; 19d6: 69 30       i0
    sta write + 1                                                     ; 19d8: 85 71       .q
    rts                                                               ; 19da: 60          `

; ----------------------------------------------------------------------------------
; Get sprite data of sprite A into spritewidth, spriteheight and (read)
; ----------------------------------------------------------------------------------
.getspritedata
    ldy #0                                                            ; 19db: a0 00       ..
    sty read + 1                                                      ; 19dd: 84 77       .w
    asl a                                                             ; 19df: 0a          .
    rol read + 1                                                      ; 19e0: 26 77       &w
    asl a                                                             ; 19e2: 0a          .
    rol read + 1                                                      ; 19e3: 26 77       &w
    adc #<spritetable                                                 ; 19e5: 69 00       i.
    sta read                                                          ; 19e7: 85 76       .v
    lda read + 1                                                      ; 19e9: a5 77       .w
    adc #>spritetable                                                 ; 19eb: 69 11       i.
    sta read + 1                                                      ; 19ed: 85 77       .w
    lda (read),y                                                      ; 19ef: b1 76       .v
    sta spritewidthpixels                                             ; 19f1: 85 79       .y
    clc                                                               ; 19f3: 18          .
    adc #7                                                            ; 19f4: 69 07       i.
    lsr a                                                             ; 19f6: 4a          J
    lsr a                                                             ; 19f7: 4a          J
    lsr a                                                             ; 19f8: 4a          J
    sta spritewidth                                                   ; 19f9: 85 7a       .z
    iny                                                               ; 19fb: c8          .
    lda (read),y                                                      ; 19fc: b1 76       .v
    sta spriteheight                                                  ; 19fe: 85 78       .x
    iny                                                               ; 1a00: c8          .
    lda (read),y                                                      ; 1a01: b1 76       .v
    tax                                                               ; 1a03: aa          .
    iny                                                               ; 1a04: c8          .
    lda (read),y                                                      ; 1a05: b1 76       .v
    stx read                                                          ; 1a07: 86 76       .v
    sta read + 1                                                      ; 1a09: 85 77       .w
    rts                                                               ; 1a0b: 60          `

; ----------------------------------------------------------------------------------
; Plot sprite A at character block X, Y
; ----------------------------------------------------------------------------------
.plotspriteatcharpos
    pha                                                               ; 1a0c: 48          H
    txa                                                               ; 1a0d: 8a          .
    clc                                                               ; 1a0e: 18          .
    rol a                                                             ; 1a0f: 2a          *
    rol a                                                             ; 1a10: 2a          *
    rol a                                                             ; 1a11: 2a          *
    tax                                                               ; 1a12: aa          .
    tya                                                               ; 1a13: 98          .
    sec                                                               ; 1a14: 38          8
    rol a                                                             ; 1a15: 2a          *
    sec                                                               ; 1a16: 38          8
    rol a                                                             ; 1a17: 2a          *
    sec                                                               ; 1a18: 38          8
    rol a                                                             ; 1a19: 2a          *
    tay                                                               ; 1a1a: a8          .
    jsr calcscrnaddr                                                  ; 1a1b: 20 87 19     ..
    pla                                                               ; 1a1e: 68          h
    jsr getspritedata                                                 ; 1a1f: 20 db 19     ..
    jsr plotsprite                                                    ; 1a22: 20 02 19     ..
    rts                                                               ; 1a25: 60          `

; ----------------------------------------------------------------------------------
; Print string at address YYXX
; 
; 	?YYXX = string length
; ----------------------------------------------------------------------------------
.printstring
    stx write                                                         ; 1a26: 86 70       .p
    sty write + 1                                                     ; 1a28: 84 71       .q
    ldy #0                                                            ; 1a2a: a0 00       ..
    lda (write),y                                                     ; 1a2c: b1 70       .p
    sta stringlength                                                  ; 1a2e: 85 75       .u
.printstringloop
    iny                                                               ; 1a30: c8          .
    lda (write),y                                                     ; 1a31: b1 70       .p
    jsr oswrch                                                        ; 1a33: 20 ee ff     ..            ; Write character
    cpy stringlength                                                  ; 1a36: c4 75       .u
    bne printstringloop                                               ; 1a38: d0 f6       ..
    rts                                                               ; 1a3a: 60          `

; ----------------------------------------------------------------------------------
; Handle keyboard input
; ----------------------------------------------------------------------------------
.handlekeyboard
    ldx #inkey_key_h                                                  ; 1a3b: a2 ab       ..             ; X=inkey key value
    ldy #&ff                                                          ; 1a3d: a0 ff       ..
    lda #osbyte_inkey                                                 ; 1a3f: a9 81       ..
    jsr osbyte                                                        ; 1a41: 20 f4 ff     ..            ; Is the 'H' key pressed?
    cpy #0                                                            ; 1a44: c0 00       ..             ; X and Y contain &ff if the key is pressed
    beq checkkeys                                                     ; 1a46: f0 26       .&
.paused
    ldx #inkey_key_h                                                  ; 1a48: a2 ab       ..             ; X=inkey key value
    ldy #&ff                                                          ; 1a4a: a0 ff       ..
    lda #osbyte_inkey                                                 ; 1a4c: a9 81       ..
    jsr osbyte                                                        ; 1a4e: 20 f4 ff     ..            ; Is the 'H' key pressed?
    cpy #0                                                            ; 1a51: c0 00       ..             ; X and Y contain &ff if the key is pressed
    beq stillpaused                                                   ; 1a53: f0 12       ..
    ldx #inkey_key_escape                                             ; 1a55: a2 8f       ..             ; X=inkey key value
    ldy #&ff                                                          ; 1a57: a0 ff       ..
    lda #osbyte_inkey                                                 ; 1a59: a9 81       ..
    jsr osbyte                                                        ; 1a5b: 20 f4 ff     ..            ; Is the 'ESCAPE' key pressed?
    cpy #0                                                            ; 1a5e: c0 00       ..             ; X and Y contain &ff if the key is pressed
    beq stillpaused                                                   ; 1a60: f0 05       ..
    lda #&80                                                          ; 1a62: a9 80       ..
    sta keys                                                          ; 1a64: 85 60       .`
    rts                                                               ; 1a66: 60          `

.stillpaused
    jsr checkkeys                                                     ; 1a67: 20 6e 1a     n.
    lda keys                                                          ; 1a6a: a5 60       .`
    beq paused                                                        ; 1a6c: f0 da       ..
.checkkeys
    lda #0                                                            ; 1a6e: a9 00       ..
    sta keys                                                          ; 1a70: 85 60       .`
    lda #1                                                            ; 1a72: a9 01       ..
    sta keybit                                                        ; 1a74: 85 80       ..
    ldx keynum_right                                                  ; 1a76: a6 61       .a
    jsr checkkey                                                      ; 1a78: 20 90 1a     ..
    ldx keynum_left                                                   ; 1a7b: a6 62       .b
    jsr checkkey                                                      ; 1a7d: 20 90 1a     ..
    ldx keynum_down                                                   ; 1a80: a6 63       .c
    jsr checkkey                                                      ; 1a82: 20 90 1a     ..
    ldx keynum_up                                                     ; 1a85: a6 64       .d
    jsr checkkey                                                      ; 1a87: 20 90 1a     ..
    ldx keynum_jump                                                   ; 1a8a: a6 65       .e
    jsr checkkey                                                      ; 1a8c: 20 90 1a     ..
    rts                                                               ; 1a8f: 60          `

; ----------------------------------------------------------------------------------
; Check if key X is pressed, and OR ?keybit into keys bitfield if so
; ----------------------------------------------------------------------------------
.checkkey
    ldy #&ff                                                          ; 1a90: a0 ff       ..
    lda #osbyte_inkey                                                 ; 1a92: a9 81       ..
    jsr osbyte                                                        ; 1a94: 20 f4 ff     ..            ; Read a specific key (or read machine type)
    cpy #0                                                            ; 1a97: c0 00       ..
    beq keynotpressed                                                 ; 1a99: f0 06       ..
    lda keys                                                          ; 1a9b: a5 60       .`
    ora keybit                                                        ; 1a9d: 05 80       ..
    sta keys                                                          ; 1a9f: 85 60       .`
.keynotpressed
    asl keybit                                                        ; 1aa1: 06 80       ..
    rts                                                               ; 1aa3: 60          `

; ----------------------------------------------------------------------------------
; Generate a random number
; ----------------------------------------------------------------------------------
.rnd
    lda rndseed                                                       ; 1aa4: a5 66       .f
    and #&48                                                          ; 1aa6: 29 48       )H
    adc #&38                                                          ; 1aa8: 69 38       i8
    asl a                                                             ; 1aaa: 0a          .
    asl a                                                             ; 1aab: 0a          .
    rol rndseed + 3                                                   ; 1aac: 26 69       &i
    rol rndseed + 2                                                   ; 1aae: 26 68       &h
    rol rndseed + 1                                                   ; 1ab0: 26 67       &g
    rol rndseed                                                       ; 1ab2: 26 66       &f
    rts                                                               ; 1ab4: 60          `

; ----------------------------------------------------------------------------------
; Add A * 10^X to score
; ----------------------------------------------------------------------------------
.addscore
    ldy #DigitsColour                                                 ; 1ab5: a0 08       ..
    sty spritecolour                                                  ; 1ab7: 84 7f       ..
    ldy score,x                                                       ; 1ab9: b4 28       .(
    clc                                                               ; 1abb: 18          .
    adc score,x                                                       ; 1abc: 75 28       u(
    cpx #3                                                            ; 1abe: e0 03       ..
    bne dontawardextralife                                            ; 1ac0: d0 02       ..
    inc extralifeflag                                                 ; 1ac2: e6 3e       .>
.dontawardextralife
    cmp #&0a                                                          ; 1ac4: c9 0a       ..
    bcc nomorecarry                                                   ; 1ac6: 90 0e       ..
    sec                                                               ; 1ac8: 38          8
    sbc #&0a                                                          ; 1ac9: e9 0a       ..
    sta score,x                                                       ; 1acb: 95 28       .(
    jsr updatedigit                                                   ; 1acd: 20 d8 1a     ..
    lda #1                                                            ; 1ad0: a9 01       ..
    dex                                                               ; 1ad2: ca          .
    bpl addscore                                                      ; 1ad3: 10 e0       ..
    rts                                                               ; 1ad5: 60          `

.nomorecarry
    sta score,x                                                       ; 1ad6: 95 28       .(
; ----------------------------------------------------------------------------------
; Update digit X of score to A (Y = old digit)
; ----------------------------------------------------------------------------------
.updatedigit
    cpx #2                                                            ; 1ad8: e0 02       ..
    bcs updatedigit2                                                  ; 1ada: b0 01       ..
    rts                                                               ; 1adc: 60          `

.updatedigit2
    sta temp5                                                         ; 1add: 85 8c       ..
    stx temp6                                                         ; 1adf: 86 8d       ..
    sty temp7                                                         ; 1ae1: 84 8e       ..
    lda currentscorexpos                                              ; 1ae3: a5 3f       .?
    clc                                                               ; 1ae5: 18          .
.add5timesxloop
    adc #5                                                            ; 1ae6: 69 05       i.
    dex                                                               ; 1ae8: ca          .
    bpl add5timesxloop                                                ; 1ae9: 10 fb       ..
    sta temp4                                                         ; 1aeb: 85 8b       ..
    tax                                                               ; 1aed: aa          .
    lda temp7                                                         ; 1aee: a5 8e       ..
    ldy #&f7                                                          ; 1af0: a0 f7       ..
    jsr displaydigit                                                  ; 1af2: 20 01 1b     ..
    lda temp5                                                         ; 1af5: a5 8c       ..
    ldx temp4                                                         ; 1af7: a6 8b       ..
    ldy #&f7                                                          ; 1af9: a0 f7       ..
    jsr displaydigit                                                  ; 1afb: 20 01 1b     ..
    ldx temp6                                                         ; 1afe: a6 8d       ..
    rts                                                               ; 1b00: 60          `

; ----------------------------------------------------------------------------------
; Display digit A at X,Y
; ----------------------------------------------------------------------------------
.displaydigit
    pha                                                               ; 1b01: 48          H
    jsr calcscrnaddr                                                  ; 1b02: 20 87 19     ..
    pla                                                               ; 1b05: 68          h
    clc                                                               ; 1b06: 18          .
    adc #SpriteId_Digit0                                              ; 1b07: 69 1f       i.
    jsr getspritedata                                                 ; 1b09: 20 db 19     ..
    jsr plotsprite                                                    ; 1b0c: 20 02 19     ..
    rts                                                               ; 1b0f: 60          `

; ----------------------------------------------------------------------------------
; Frame delay
; ----------------------------------------------------------------------------------
.framedelay
    lda #osword_read_interval_timer                                   ; 1b10: a9 03       ..
    ldx #<(intervaltimerblock)                                        ; 1b12: a2 00       ..
    ldy #>(intervaltimerblock)                                        ; 1b14: a0 00       ..
    jsr osword                                                        ; 1b16: 20 f1 ff     ..            ; Read interval timer
    lda intervaltimerblock + 1                                        ; 1b19: a5 01       ..
    bne finisheddelay                                                 ; 1b1b: d0 06       ..
    lda intervaltimerblock                                            ; 1b1d: a5 00       ..
    cmp #3                                                            ; 1b1f: c9 03       ..
    bcc framedelay                                                    ; 1b21: 90 ed       ..
.finisheddelay
    lda #0                                                            ; 1b23: a9 00       ..
    sta intervaltimerblock                                            ; 1b25: 85 00       ..
    sta intervaltimerblock + 1                                        ; 1b27: 85 01       ..
    lda #osword_write_interval_timer                                  ; 1b29: a9 04       ..
    ldx #<(intervaltimerblock)                                        ; 1b2b: a2 00       ..
    ldy #>(intervaltimerblock)                                        ; 1b2d: a0 00       ..
    jsr osword                                                        ; 1b2f: 20 f1 ff     ..            ; Write interval timer
    rts                                                               ; 1b32: 60          `

; ----------------------------------------------------------------------------------
; Initialise map (build and display map)
; ----------------------------------------------------------------------------------
.initmap
    lda #&10                                                          ; 1b33: a9 10       ..
    jsr oswrch                                                        ; 1b35: 20 ee ff     ..            ; Write character 16
    jsr drawtopstatus                                                 ; 1b38: 20 c3 1c     ..
    lda screen                                                        ; 1b3b: a5 5c       .\
    asl a                                                             ; 1b3d: 0a          .
    tay                                                               ; 1b3e: a8          .
    lda mapptrs,y                                                     ; 1b3f: b9 c0 0c    ...
    sta mapdataptr                                                    ; 1b42: 85 51       .Q
    iny                                                               ; 1b44: c8          .
    lda mapptrs,y                                                     ; 1b45: b9 c0 0c    ...
    sta mapdataptr + 1                                                ; 1b48: 85 52       .R
    ldy #0                                                            ; 1b4a: a0 00       ..
    lda (mapdataptr),y                                                ; 1b4c: b1 51       .Q
    sta numplatforms                                                  ; 1b4e: 85 53       .S
    iny                                                               ; 1b50: c8          .
    lda (mapdataptr),y                                                ; 1b51: b1 51       .Q
    sta numladders                                                    ; 1b53: 85 54       .T
    iny                                                               ; 1b55: c8          .
    lda (mapdataptr),y                                                ; 1b56: b1 51       .Q
    sta liftflag                                                      ; 1b58: 85 55       .U
    iny                                                               ; 1b5a: c8          .
    lda (mapdataptr),y                                                ; 1b5b: b1 51       .Q
    sta numseeds                                                      ; 1b5d: 85 56       .V
    iny                                                               ; 1b5f: c8          .
    lda (mapdataptr),y                                                ; 1b60: b1 51       .Q
    sta numbirds                                                      ; 1b62: 85 57       .W
    lda #0                                                            ; 1b64: a9 00       ..
    tax                                                               ; 1b66: aa          .
.clearmaploop
    sta mapdata,x                                                     ; 1b67: 9d 00 06    ...
    sta mapdata + $0100,x                                             ; 1b6a: 9d 00 07    ...
    dex                                                               ; 1b6d: ca          .
    bne clearmaploop                                                  ; 1b6e: d0 f7       ..
    lda #PlatformColour                                               ; 1b70: a9 0a       ..
    sta spritecolour                                                  ; 1b72: 85 7f       ..
    lda numplatforms                                                  ; 1b74: a5 53       .S
    sta temp3                                                         ; 1b76: 85 8a       ..
    sty temp2                                                         ; 1b78: 84 89       ..
.putplatformsloop
    ldy temp2                                                         ; 1b7a: a4 89       ..
    iny                                                               ; 1b7c: c8          .
    lda (mapdataptr),y                                                ; 1b7d: b1 51       .Q
    sta temp4                                                         ; 1b7f: 85 8b       ..
    iny                                                               ; 1b81: c8          .
    lda (mapdataptr),y                                                ; 1b82: b1 51       .Q
    sta temp5                                                         ; 1b84: 85 8c       ..
    iny                                                               ; 1b86: c8          .
    lda (mapdataptr),y                                                ; 1b87: b1 51       .Q
    sec                                                               ; 1b89: 38          8
    sbc temp5                                                         ; 1b8a: e5 8c       ..
    sta temp6                                                         ; 1b8c: 85 8d       ..
    sty temp2                                                         ; 1b8e: 84 89       ..
.putplatformloop
    lda #SpriteId_Platform                                            ; 1b90: a9 01       ..
    ldy temp4                                                         ; 1b92: a4 8b       ..
    ldx temp5                                                         ; 1b94: a6 8c       ..
    jsr setmapblock                                                   ; 1b96: 20 e0 23     .#
    ldx temp5                                                         ; 1b99: a6 8c       ..
    jsr plotspriteatcharpos                                           ; 1b9b: 20 0c 1a     ..
    inc temp5                                                         ; 1b9e: e6 8c       ..
    dec temp6                                                         ; 1ba0: c6 8d       ..
    bpl putplatformloop                                               ; 1ba2: 10 ec       ..
    dec temp3                                                         ; 1ba4: c6 8a       ..
    bne putplatformsloop                                              ; 1ba6: d0 d2       ..
    lda #LadderColour                                                 ; 1ba8: a9 08       ..
    sta spritecolour                                                  ; 1baa: 85 7f       ..
    lda numladders                                                    ; 1bac: a5 54       .T
    sta temp3                                                         ; 1bae: 85 8a       ..
.putladdersloop
    ldy temp2                                                         ; 1bb0: a4 89       ..
    iny                                                               ; 1bb2: c8          .
    lda (mapdataptr),y                                                ; 1bb3: b1 51       .Q
    sta temp4                                                         ; 1bb5: 85 8b       ..
    iny                                                               ; 1bb7: c8          .
    lda (mapdataptr),y                                                ; 1bb8: b1 51       .Q
    sta temp5                                                         ; 1bba: 85 8c       ..
    iny                                                               ; 1bbc: c8          .
    lda (mapdataptr),y                                                ; 1bbd: b1 51       .Q
    sec                                                               ; 1bbf: 38          8
    sbc temp5                                                         ; 1bc0: e5 8c       ..
    sta temp6                                                         ; 1bc2: 85 8d       ..
    sty temp2                                                         ; 1bc4: 84 89       ..
.putladderloop
    ldx temp4                                                         ; 1bc6: a6 8b       ..
    ldy temp5                                                         ; 1bc8: a4 8c       ..
    jsr getmapblock                                                   ; 1bca: 20 c8 23     .#
    beq blankmapblock                                                 ; 1bcd: f0 0f       ..
    ldx #PlatformColour                                               ; 1bcf: a2 0a       ..
    stx spritecolour                                                  ; 1bd1: 86 7f       ..
    ldx temp4                                                         ; 1bd3: a6 8b       ..
    jsr plotspriteatcharpos                                           ; 1bd5: 20 0c 1a     ..
    lda #SpriteId_Platform                                            ; 1bd8: a9 01       ..
    ldx #LadderColour                                                 ; 1bda: a2 08       ..
    stx spritecolour                                                  ; 1bdc: 86 7f       ..
.blankmapblock
    ora #MapId_Ladder                                                 ; 1bde: 09 02       ..
    ldx temp4                                                         ; 1be0: a6 8b       ..
    ldy temp5                                                         ; 1be2: a4 8c       ..
    jsr setmapblock                                                   ; 1be4: 20 e0 23     .#
    lda #SpriteId_Ladder                                              ; 1be7: a9 02       ..
    ldx temp4                                                         ; 1be9: a6 8b       ..
    ldy temp5                                                         ; 1beb: a4 8c       ..
    jsr plotspriteatcharpos                                           ; 1bed: 20 0c 1a     ..
    inc temp5                                                         ; 1bf0: e6 8c       ..
    dec temp6                                                         ; 1bf2: c6 8d       ..
    bpl putladderloop                                                 ; 1bf4: 10 d0       ..
    dec temp3                                                         ; 1bf6: c6 8a       ..
    bne putladdersloop                                                ; 1bf8: d0 b6       ..
    lda liftflag                                                      ; 1bfa: a5 55       .U
    beq noliftonthismap                                               ; 1bfc: f0 0c       ..
    ldy temp2                                                         ; 1bfe: a4 89       ..
    iny                                                               ; 1c00: c8          .
    lda (mapdataptr),y                                                ; 1c01: b1 51       .Q
    sty temp2                                                         ; 1c03: 84 89       ..
    asl a                                                             ; 1c05: 0a          .
    asl a                                                             ; 1c06: 0a          .
    asl a                                                             ; 1c07: 0a          .
    sta liftx                                                         ; 1c08: 85 58       .X
.noliftonthismap
    lda #EggColour                                                    ; 1c0a: a9 02       ..
    sta spritecolour                                                  ; 1c0c: 85 7f       ..
    lda #0                                                            ; 1c0e: a9 00       ..
    sta temp3                                                         ; 1c10: 85 8a       ..
    sta numeggsleft                                                   ; 1c12: 85 39       .9
    lda playerdataoffset                                              ; 1c14: a5 4e       .N
    sta temp1                                                         ; 1c16: 85 88       ..
.puteggsloop
    ldy temp2                                                         ; 1c18: a4 89       ..
    iny                                                               ; 1c1a: c8          .
    lda (mapdataptr),y                                                ; 1c1b: b1 51       .Q
    sta temp4                                                         ; 1c1d: 85 8b       ..
    iny                                                               ; 1c1f: c8          .
    lda (mapdataptr),y                                                ; 1c20: b1 51       .Q
    sta temp5                                                         ; 1c22: 85 8c       ..
    sty temp2                                                         ; 1c24: 84 89       ..
    ldx temp1                                                         ; 1c26: a6 88       ..
    lda collectedeggsflags,x                                          ; 1c28: bd 10 05    ...
    bne alreadycollectedegg                                           ; 1c2b: d0 1a       ..
    lda temp3                                                         ; 1c2d: a5 8a       ..
    asl a                                                             ; 1c2f: 0a          .
    asl a                                                             ; 1c30: 0a          .
    asl a                                                             ; 1c31: 0a          .
    asl a                                                             ; 1c32: 0a          .
    adc #MapId_Egg                                                    ; 1c33: 69 04       i.
    ldx temp4                                                         ; 1c35: a6 8b       ..
    ldy temp5                                                         ; 1c37: a4 8c       ..
    jsr setmapblock                                                   ; 1c39: 20 e0 23     .#
    lda #SpriteId_Egg                                                 ; 1c3c: a9 03       ..
    ldx temp4                                                         ; 1c3e: a6 8b       ..
    ldy temp5                                                         ; 1c40: a4 8c       ..
    jsr plotspriteatcharpos                                           ; 1c42: 20 0c 1a     ..
    inc numeggsleft                                                   ; 1c45: e6 39       .9
.alreadycollectedegg
    inc temp1                                                         ; 1c47: e6 88       ..
    inc temp3                                                         ; 1c49: e6 8a       ..
    lda temp3                                                         ; 1c4b: a5 8a       ..
    cmp #&0c                                                          ; 1c4d: c9 0c       ..
    bcc puteggsloop                                                   ; 1c4f: 90 c7       ..
    lda #SeedColour                                                   ; 1c51: a9 08       ..
    sta spritecolour                                                  ; 1c53: 85 7f       ..
    lda #0                                                            ; 1c55: a9 00       ..
    sta temp3                                                         ; 1c57: 85 8a       ..
    lda playerdataoffset                                              ; 1c59: a5 4e       .N
    sta temp1                                                         ; 1c5b: 85 88       ..
.putseedloop
    ldy temp2                                                         ; 1c5d: a4 89       ..
    iny                                                               ; 1c5f: c8          .
    lda (mapdataptr),y                                                ; 1c60: b1 51       .Q
    sta temp4                                                         ; 1c62: 85 8b       ..
    iny                                                               ; 1c64: c8          .
    lda (mapdataptr),y                                                ; 1c65: b1 51       .Q
    sta temp5                                                         ; 1c67: 85 8c       ..
    sty temp2                                                         ; 1c69: 84 89       ..
    ldx temp1                                                         ; 1c6b: a6 88       ..
    lda collectedseedflags,x                                          ; 1c6d: bd 20 05    . .
    bne alreadycollectedseed                                          ; 1c70: d0 18       ..
    lda temp3                                                         ; 1c72: a5 8a       ..
    asl a                                                             ; 1c74: 0a          .
    asl a                                                             ; 1c75: 0a          .
    asl a                                                             ; 1c76: 0a          .
    asl a                                                             ; 1c77: 0a          .
    adc #MapId_Seed                                                   ; 1c78: 69 08       i.
    ldx temp4                                                         ; 1c7a: a6 8b       ..
    ldy temp5                                                         ; 1c7c: a4 8c       ..
    jsr setmapblock                                                   ; 1c7e: 20 e0 23     .#
    lda #SpriteId_Seed                                                ; 1c81: a9 04       ..
    ldx temp4                                                         ; 1c83: a6 8b       ..
    ldy temp5                                                         ; 1c85: a4 8c       ..
    jsr plotspriteatcharpos                                           ; 1c87: 20 0c 1a     ..
.alreadycollectedseed
    inc temp1                                                         ; 1c8a: e6 88       ..
    inc temp3                                                         ; 1c8c: e6 8a       ..
    lda temp3                                                         ; 1c8e: a5 8a       ..
    cmp numseeds                                                      ; 1c90: c5 56       .V
    bcc putseedloop                                                   ; 1c92: 90 c9       ..
    lda #CageColour                                                   ; 1c94: a9 20       .
    sta spritecolour                                                  ; 1c96: 85 7f       ..
    ldx #0                                                            ; 1c98: a2 00       ..
    ldy #&dc                                                          ; 1c9a: a0 dc       ..
    jsr calcscrnaddr                                                  ; 1c9c: 20 87 19     ..
    ldx #SpriteId_CageWithHole                                        ; 1c9f: a2 13       ..
    lda bigbirdflag                                                   ; 1ca1: a5 35       .5
    beq birdincage                                                    ; 1ca3: f0 01       ..
    inx                                                               ; 1ca5: e8          .
.birdincage
    txa                                                               ; 1ca6: 8a          .
    jsr getspritedata                                                 ; 1ca7: 20 db 19     ..
    jsr plotsprite                                                    ; 1caa: 20 02 19     ..
    ldy temp2                                                         ; 1cad: a4 89       ..
    ldx #0                                                            ; 1caf: a2 00       ..
.putbirdsloop
    iny                                                               ; 1cb1: c8          .
    lda (mapdataptr),y                                                ; 1cb2: b1 51       .Q
    sta birdcharx,x                                                   ; 1cb4: 9d 0a 04    ...
    iny                                                               ; 1cb7: c8          .
    lda (mapdataptr),y                                                ; 1cb8: b1 51       .Q
    sta birdchary,x                                                   ; 1cba: 9d 0f 04    ...
    inx                                                               ; 1cbd: e8          .
    cpx #5                                                            ; 1cbe: e0 05       ..
    bcc putbirdsloop                                                  ; 1cc0: 90 ef       ..
    rts                                                               ; 1cc2: 60          `

; ----------------------------------------------------------------------------------
; Draw top status
; ----------------------------------------------------------------------------------
.drawtopstatus
    lda #StatusColour                                                 ; 1cc3: a9 08       ..
    sta spritecolour                                                  ; 1cc5: 85 7f       ..
    ldx #0                                                            ; 1cc7: a2 00       ..
    ldy #&f8                                                          ; 1cc9: a0 f8       ..
    jsr calcscrnaddr                                                  ; 1ccb: 20 87 19     ..
    lda #SpriteId_Score                                               ; 1cce: a9 29       .)
    jsr getspritedata                                                 ; 1cd0: 20 db 19     ..
    jsr plotsprite                                                    ; 1cd3: 20 02 19     ..
    ldx playernum                                                     ; 1cd6: a6 5d       .]
    lda #0                                                            ; 1cd8: a9 00       ..
    clc                                                               ; 1cda: 18          .
.getplayerstatusxloop
    adc #&22                                                          ; 1cdb: 69 22       i"
    dex                                                               ; 1cdd: ca          .
    bpl getplayerstatusxloop                                          ; 1cde: 10 fb       ..
    sec                                                               ; 1ce0: 38          8
    sbc #7                                                            ; 1ce1: e9 07       ..
    tax                                                               ; 1ce3: aa          .
    ldy #&f8                                                          ; 1ce4: a0 f8       ..
    jsr calcscrnaddr                                                  ; 1ce6: 20 87 19     ..
    lda #SpriteId_HighlightBox                                        ; 1ce9: a9 2a       .*
    jsr getspritedata                                                 ; 1ceb: 20 db 19     ..
    jsr plotsprite                                                    ; 1cee: 20 02 19     ..
    ldx #0                                                            ; 1cf1: a2 00       ..
    stx temp1                                                         ; 1cf3: 86 88       ..
.drawplayerscorelivesloop
    jsr drawplayerscorelives                                          ; 1cf5: 20 ef 1d     ..
    inc temp1                                                         ; 1cf8: e6 88       ..
    ldx temp1                                                         ; 1cfa: a6 88       ..
    cpx numplayers                                                    ; 1cfc: e4 5e       .^
    bcc drawplayerscorelivesloop                                      ; 1cfe: 90 f5       ..
    lda #StatusColour                                                 ; 1d00: a9 08       ..
    sta spritecolour                                                  ; 1d02: 85 7f       ..
    ldx #0                                                            ; 1d04: a2 00       ..
    ldy #&e8                                                          ; 1d06: a0 e8       ..
    jsr calcscrnaddr                                                  ; 1d08: 20 87 19     ..
    lda #SpriteId_Player                                              ; 1d0b: a9 2b       .+
    jsr getspritedata                                                 ; 1d0d: 20 db 19     ..
    jsr plotsprite                                                    ; 1d10: 20 02 19     ..
    ldx #&1b                                                          ; 1d13: a2 1b       ..
    ldy #&e7                                                          ; 1d15: a0 e7       ..
    jsr calcscrnaddr                                                  ; 1d17: 20 87 19     ..
    lda playernum                                                     ; 1d1a: a5 5d       .]
    clc                                                               ; 1d1c: 18          .
    adc #&20                                                          ; 1d1d: 69 20       i
    jsr getspritedata                                                 ; 1d1f: 20 db 19     ..
    jsr plotsprite                                                    ; 1d22: 20 02 19     ..
    ldx #&24                                                          ; 1d25: a2 24       .$
    ldy #&e8                                                          ; 1d27: a0 e8       ..
    jsr calcscrnaddr                                                  ; 1d29: 20 87 19     ..
    lda #SpriteId_Level                                               ; 1d2c: a9 2c       .,
    jsr getspritedata                                                 ; 1d2e: 20 db 19     ..
    jsr plotsprite                                                    ; 1d31: 20 02 19     ..
    lda #0                                                            ; 1d34: a9 00       ..
    sta temp4                                                         ; 1d36: 85 8b       ..
    sta temp5                                                         ; 1d38: 85 8c       ..
    ldx level                                                         ; 1d3a: a6 50       .P
    inx                                                               ; 1d3c: e8          .
    stx temp6                                                         ; 1d3d: 86 8d       ..
    lda temp6                                                         ; 1d3f: a5 8d       ..
    ldx #0                                                            ; 1d41: a2 00       ..
.get10sloop
    cmp #&0a                                                          ; 1d43: c9 0a       ..
    bcc got10s                                                        ; 1d45: 90 07       ..
    sec                                                               ; 1d47: 38          8
    sbc #&0a                                                          ; 1d48: e9 0a       ..
    inx                                                               ; 1d4a: e8          .
    jmp get10sloop                                                    ; 1d4b: 4c 43 1d    LC.

.got10s
    sta temp6                                                         ; 1d4e: 85 8d       ..
    txa                                                               ; 1d50: 8a          .
    ldx #0                                                            ; 1d51: a2 00       ..
.get100sloop
    cmp #&0a                                                          ; 1d53: c9 0a       ..
    bcc got100s                                                       ; 1d55: 90 07       ..
    sec                                                               ; 1d57: 38          8
    sbc #&0a                                                          ; 1d58: e9 0a       ..
    inx                                                               ; 1d5a: e8          .
    jmp get100sloop                                                   ; 1d5b: 4c 53 1d    LS.

.got100s
    sta temp5                                                         ; 1d5e: 85 8c       ..
    stx temp4                                                         ; 1d60: 86 8b       ..
    lda temp4                                                         ; 1d62: a5 8b       ..
    beq lessthanlevel100                                              ; 1d64: f0 07       ..
    ldx #&3b                                                          ; 1d66: a2 3b       .;
    ldy #&e7                                                          ; 1d68: a0 e7       ..
    jsr displaydigit                                                  ; 1d6a: 20 01 1b     ..
.lessthanlevel100
    lda temp5                                                         ; 1d6d: a5 8c       ..
    ldx #&40                                                          ; 1d6f: a2 40       .@
    ldy #&e7                                                          ; 1d71: a0 e7       ..
    jsr displaydigit                                                  ; 1d73: 20 01 1b     ..
    lda temp6                                                         ; 1d76: a5 8d       ..
    ldx #&45                                                          ; 1d78: a2 45       .E
    ldy #&e7                                                          ; 1d7a: a0 e7       ..
    jsr displaydigit                                                  ; 1d7c: 20 01 1b     ..
    ldx #&4e                                                          ; 1d7f: a2 4e       .N
    ldy #&e8                                                          ; 1d81: a0 e8       ..
    jsr calcscrnaddr                                                  ; 1d83: 20 87 19     ..
    lda #SpriteId_Bonus                                               ; 1d86: a9 2d       .-
    jsr getspritedata                                                 ; 1d88: 20 db 19     ..
    jsr plotsprite                                                    ; 1d8b: 20 02 19     ..
    lda bonus                                                         ; 1d8e: a5 3a       .:
    ldx #&66                                                          ; 1d90: a2 66       .f
    ldy #&e7                                                          ; 1d92: a0 e7       ..
    jsr displaydigit                                                  ; 1d94: 20 01 1b     ..
    lda bonus + 1                                                     ; 1d97: a5 3b       .;
    ldx #&6b                                                          ; 1d99: a2 6b       .k
    ldy #&e7                                                          ; 1d9b: a0 e7       ..
    jsr displaydigit                                                  ; 1d9d: 20 01 1b     ..
    lda bonus + 2                                                     ; 1da0: a5 3c       .<
    ldx #&70                                                          ; 1da2: a2 70       .p
    ldy #&e7                                                          ; 1da4: a0 e7       ..
    jsr displaydigit                                                  ; 1da6: 20 01 1b     ..
    lda #0                                                            ; 1da9: a9 00       ..
    ldx #&75                                                          ; 1dab: a2 75       .u
    ldy #&e7                                                          ; 1dad: a0 e7       ..
    jsr displaydigit                                                  ; 1daf: 20 01 1b     ..
    ldx #&7e                                                          ; 1db2: a2 7e       .~
    ldy #&e8                                                          ; 1db4: a0 e8       ..
    jsr calcscrnaddr                                                  ; 1db6: 20 87 19     ..
    lda #SpriteId_Time                                                ; 1db9: a9 2e       ..
    jsr getspritedata                                                 ; 1dbb: 20 db 19     ..
    jsr plotsprite                                                    ; 1dbe: 20 02 19     ..
    lda difficulty                                                    ; 1dc1: a5 4d       .M
    lsr a                                                             ; 1dc3: 4a          J
    cmp #8                                                            ; 1dc4: c9 08       ..
    bcc skip15                                                        ; 1dc6: 90 02       ..
    lda #8                                                            ; 1dc8: a9 08       ..
.skip15
    eor #&ff                                                          ; 1dca: 49 ff       I.
    sec                                                               ; 1dcc: 38          8
    adc #9                                                            ; 1dcd: 69 09       i.
    sta time                                                          ; 1dcf: 85 1d       ..
    ldx #&91                                                          ; 1dd1: a2 91       ..
    ldy #&e7                                                          ; 1dd3: a0 e7       ..
    jsr displaydigit                                                  ; 1dd5: 20 01 1b     ..
    lda #0                                                            ; 1dd8: a9 00       ..
    sta time + 1                                                      ; 1dda: 85 1e       ..
    ldx #&96                                                          ; 1ddc: a2 96       ..
    ldy #&e7                                                          ; 1dde: a0 e7       ..
    jsr displaydigit                                                  ; 1de0: 20 01 1b     ..
    lda #0                                                            ; 1de3: a9 00       ..
    sta time + 2                                                      ; 1de5: 85 1f       ..
    ldx #&9b                                                          ; 1de7: a2 9b       ..
    ldy #&e7                                                          ; 1de9: a0 e7       ..
    jsr displaydigit                                                  ; 1deb: 20 01 1b     ..
    rts                                                               ; 1dee: 60          `

; ----------------------------------------------------------------------------------
; Draw player X's score and lives
; ----------------------------------------------------------------------------------
.drawplayerscorelives
    lda #0                                                            ; 1def: a9 00       ..
    clc                                                               ; 1df1: 18          .
.mulby34
    adc #&22                                                          ; 1df2: 69 22       i"
    dex                                                               ; 1df4: ca          .
    bpl mulby34                                                       ; 1df5: 10 fb       ..
    sec                                                               ; 1df7: 38          8
    sbc #7                                                            ; 1df8: e9 07       ..
    sta temp4                                                         ; 1dfa: 85 8b       ..
    lda #StatusColour                                                 ; 1dfc: a9 08       ..
    sta spritecolour                                                  ; 1dfe: 85 7f       ..
    lda temp1                                                         ; 1e00: a5 88       ..
    asl a                                                             ; 1e02: 0a          .
    asl a                                                             ; 1e03: 0a          .
    asl a                                                             ; 1e04: 0a          .
    asl a                                                             ; 1e05: 0a          .
    asl a                                                             ; 1e06: 0a          .
    asl a                                                             ; 1e07: 0a          .
    tax                                                               ; 1e08: aa          .
    inx                                                               ; 1e09: e8          .
    inx                                                               ; 1e0a: e8          .
    stx temp6                                                         ; 1e0b: 86 8d       ..
    ldx temp4                                                         ; 1e0d: a6 8b       ..
    inx                                                               ; 1e0f: e8          .
    stx temp5                                                         ; 1e10: 86 8c       ..
    lda #6                                                            ; 1e12: a9 06       ..
    sta temp7                                                         ; 1e14: 85 8e       ..
.showscoreloop
    ldx temp6                                                         ; 1e16: a6 8d       ..
    lda playerscore,x                                                 ; 1e18: bd 00 05    ...
    ldx temp5                                                         ; 1e1b: a6 8c       ..
    ldy #&f7                                                          ; 1e1d: a0 f7       ..
    jsr displaydigit                                                  ; 1e1f: 20 01 1b     ..
    lda temp5                                                         ; 1e22: a5 8c       ..
    clc                                                               ; 1e24: 18          .
    adc #5                                                            ; 1e25: 69 05       i.
    sta temp5                                                         ; 1e27: 85 8c       ..
    inc temp6                                                         ; 1e29: e6 8d       ..
    dec temp7                                                         ; 1e2b: c6 8e       ..
    bne showscoreloop                                                 ; 1e2d: d0 e7       ..
    lda #LivesColour                                                  ; 1e2f: a9 20       .
    sta spritecolour                                                  ; 1e31: 85 7f       ..
    ldx temp1                                                         ; 1e33: a6 88       ..
    lda lives,x                                                       ; 1e35: b5 20       .
    beq nolivestodraw                                                 ; 1e37: f0 29       .)
    cmp #8                                                            ; 1e39: c9 08       ..
    bcc skip2                                                         ; 1e3b: 90 02       ..
    lda #8                                                            ; 1e3d: a9 08       ..
.skip2
    sta temp7                                                         ; 1e3f: 85 8e       ..
    lda temp4                                                         ; 1e41: a5 8b       ..
    sta temp5                                                         ; 1e43: 85 8c       ..
.showlivesloop
    ldx temp5                                                         ; 1e45: a6 8c       ..
    ldy #&ee                                                          ; 1e47: a0 ee       ..
    jsr calcscrnaddr                                                  ; 1e49: 20 87 19     ..
    lda #SpriteId_Life                                                ; 1e4c: a9 2f       ./
    jsr getspritedata                                                 ; 1e4e: 20 db 19     ..
    jsr plotsprite                                                    ; 1e51: 20 02 19     ..
    dec temp7                                                         ; 1e54: c6 8e       ..
    beq nolivestodraw                                                 ; 1e56: f0 0a       ..
    lda temp5                                                         ; 1e58: a5 8c       ..
    clc                                                               ; 1e5a: 18          .
    adc #4                                                            ; 1e5b: 69 04       i.
    sta temp5                                                         ; 1e5d: 85 8c       ..
    jmp showlivesloop                                                 ; 1e5f: 4c 45 1e    LE.

.nolivestodraw
    rts                                                               ; 1e62: 60          `

; ----------------------------------------------------------------------------------
; Handle player controls
; ----------------------------------------------------------------------------------
.handleplayercontrols
    lda #0                                                            ; 1e63: a9 00       ..
    sta movementx                                                     ; 1e65: 85 46       .F
    sta movementy                                                     ; 1e67: 85 47       .G
    lda keys                                                          ; 1e69: a5 60       .`
    lsr a                                                             ; 1e6b: 4a          J
    bcc rightnotpressed                                               ; 1e6c: 90 02       ..
    inc movementx                                                     ; 1e6e: e6 46       .F
.rightnotpressed
    lsr a                                                             ; 1e70: 4a          J
    bcc leftnotpressed                                                ; 1e71: 90 02       ..
    dec movementx                                                     ; 1e73: c6 46       .F
.leftnotpressed
    lsr a                                                             ; 1e75: 4a          J
    bcc downnotpressed                                                ; 1e76: 90 02       ..
    dec movementy                                                     ; 1e78: c6 47       .G
.downnotpressed
    lsr a                                                             ; 1e7a: 4a          J
    bcc upnotpressed                                                  ; 1e7b: 90 02       ..
    inc movementy                                                     ; 1e7d: e6 47       .G
.upnotpressed
    asl movementy                                                     ; 1e7f: 06 47       .G
    lda movementtype                                                  ; 1e81: a5 49       .I
    beq onplatform                                                    ; 1e83: f0 16       ..
    cmp #2                                                            ; 1e85: c9 02       ..
    bne notjumping                                                    ; 1e87: d0 03       ..
    jmp jumping                                                       ; 1e89: 4c 81 1f    L..

.notjumping
    bcs notclimbing                                                   ; 1e8c: b0 03       ..
    jmp climbing                                                      ; 1e8e: 4c 22 1f    L".

.notclimbing
    cmp #3                                                            ; 1e91: c9 03       ..
    bne notfalling                                                    ; 1e93: d0 03       ..
    jmp falling                                                       ; 1e95: 4c e3 20    L.

.notfalling
    jmp onlift                                                        ; 1e98: 4c 3e 21    L>!

; ----------------------------------------------------------------------------------
; Player on platform
; ----------------------------------------------------------------------------------
.onplatform
    lda keys                                                          ; 1e9b: a5 60       .`
    and #&10                                                          ; 1e9d: 29 10       ).
    beq nottryingjump                                                 ; 1e9f: f0 03       ..
    jmp attemptjump                                                   ; 1ea1: 4c d0 20    L.

.nottryingjump
    lda movementy                                                     ; 1ea4: a5 47       .G
    beq nottryingclimb                                                ; 1ea6: f0 30       .0
    ldx playerfracx                                                   ; 1ea8: a6 44       .D
    cpx #3                                                            ; 1eaa: e0 03       ..
    bne nottryingclimb                                                ; 1eac: d0 2a       .*
    lda movementy                                                     ; 1eae: a5 47       .G
    bmi attemptclimbdown                                              ; 1eb0: 30 0f       0.
.attemptclimbup
    ldx playercharx                                                   ; 1eb2: a6 42       .B
    ldy playerchary                                                   ; 1eb4: a4 43       .C
    iny                                                               ; 1eb6: c8          .
    iny                                                               ; 1eb7: c8          .
    jsr getmapblock                                                   ; 1eb8: 20 c8 23     .#
    and #MapId_Ladder                                                 ; 1ebb: 29 02       ).
    beq nottryingclimb                                                ; 1ebd: f0 19       ..
    bne doclimb                                                       ; 1ebf: d0 0c       ..
.attemptclimbdown
    ldx playercharx                                                   ; 1ec1: a6 42       .B
    ldy playerchary                                                   ; 1ec3: a4 43       .C
    dey                                                               ; 1ec5: 88          .
    jsr getmapblock                                                   ; 1ec6: 20 c8 23     .#
    and #MapId_Ladder                                                 ; 1ec9: 29 02       ).
    beq nottryingclimb                                                ; 1ecb: f0 0b       ..
.doclimb
    lda #0                                                            ; 1ecd: a9 00       ..
    sta movementx                                                     ; 1ecf: 85 46       .F
    lda #1                                                            ; 1ed1: a9 01       ..
    sta movementtype                                                  ; 1ed3: 85 49       .I
    jmp platformmove                                                  ; 1ed5: 4c 19 1f    L..

.nottryingclimb
    lda #0                                                            ; 1ed8: a9 00       ..
    sta movementy                                                     ; 1eda: 85 47       .G
    lda playerfracx                                                   ; 1edc: a5 44       .D
    clc                                                               ; 1ede: 18          .
    adc movementx                                                     ; 1edf: 65 46       eF
    ldx playercharx                                                   ; 1ee1: a6 42       .B
    cmp #0                                                            ; 1ee3: c9 00       ..
    bpl skip3                                                         ; 1ee5: 10 01       ..
    dex                                                               ; 1ee7: ca          .
.skip3
    cmp #8                                                            ; 1ee8: c9 08       ..
    bmi skip4                                                         ; 1eea: 30 01       0.
    inx                                                               ; 1eec: e8          .
.skip4
    ldy playerchary                                                   ; 1eed: a4 43       .C
    dey                                                               ; 1eef: 88          .
    jsr getmapblock                                                   ; 1ef0: 20 c8 23     .#
    and #MapId_Platform                                               ; 1ef3: 29 01       ).
    bne notfallingoffplatform                                         ; 1ef5: d0 19       ..
    tay                                                               ; 1ef7: a8          .
    ldx #&ff                                                          ; 1ef8: a2 ff       ..
    lda movementx                                                     ; 1efa: a5 46       .F
    clc                                                               ; 1efc: 18          .
    adc playerfracx                                                   ; 1efd: 65 44       eD
    and #7                                                            ; 1eff: 29 07       ).
    cmp #4                                                            ; 1f01: c9 04       ..
    bcs fallofftotheleft                                              ; 1f03: b0 03       ..
.fallofftotheright
    ldx #1                                                            ; 1f05: a2 01       ..
    iny                                                               ; 1f07: c8          .
.fallofftotheleft
    stx jumpdir                                                       ; 1f08: 86 4b       .K
    sty jumpfalldist                                                  ; 1f0a: 84 4a       .J
    lda #3                                                            ; 1f0c: a9 03       ..
    sta movementtype                                                  ; 1f0e: 85 49       .I
.notfallingoffplatform
    jsr tryhorizontalmovement                                         ; 1f10: 20 76 22     v"
    bcc platformmove                                                  ; 1f13: 90 04       ..
    lda #0                                                            ; 1f15: a9 00       ..
    sta movementx                                                     ; 1f17: 85 46       .F
.platformmove
    lda movementx                                                     ; 1f19: a5 46       .F
    beq playernotmoving                                               ; 1f1b: f0 02       ..
    sta playerfacingdir                                               ; 1f1d: 85 4c       .L
.playernotmoving
    jmp moveplayer                                                    ; 1f1f: 4c 7b 21    L{!

; ----------------------------------------------------------------------------------
; Player climbing
; ----------------------------------------------------------------------------------
.climbing
    lda keys                                                          ; 1f22: a5 60       .`
    and #&10                                                          ; 1f24: 29 10       ).
    beq nottryingtojump2                                              ; 1f26: f0 03       ..
    jmp attemptjump                                                   ; 1f28: 4c d0 20    L.

.nottryingtojump2
    lda movementx                                                     ; 1f2b: a5 46       .F
    beq normalclimbing                                                ; 1f2d: f0 1b       ..
    ldx playerfracy                                                   ; 1f2f: a6 45       .E
    bne normalclimbing                                                ; 1f31: d0 17       ..
    ldx playercharx                                                   ; 1f33: a6 42       .B
    ldy playerchary                                                   ; 1f35: a4 43       .C
    dey                                                               ; 1f37: 88          .
    jsr getmapblock                                                   ; 1f38: 20 c8 23     .#
    and #MapId_Platform                                               ; 1f3b: 29 01       ).
    beq normalclimbing                                                ; 1f3d: f0 0b       ..
    lda #0                                                            ; 1f3f: a9 00       ..
    sta movementy                                                     ; 1f41: 85 47       .G
    lda #0                                                            ; 1f43: a9 00       ..
    sta movementtype                                                  ; 1f45: 85 49       .I
    jmp laddermove                                                    ; 1f47: 4c 7a 1f    Lz.

.normalclimbing
    lda #0                                                            ; 1f4a: a9 00       ..
    sta movementx                                                     ; 1f4c: 85 46       .F
    lda movementy                                                     ; 1f4e: a5 47       .G
    beq laddermove                                                    ; 1f50: f0 28       .(
    lda playerfracy                                                   ; 1f52: a5 45       .E
    bne laddermove                                                    ; 1f54: d0 24       .$
    lda movementy                                                     ; 1f56: a5 47       .G
    bmi climbingdown                                                  ; 1f58: 30 12       0.
.climbingup
    ldx playercharx                                                   ; 1f5a: a6 42       .B
    ldy playerchary                                                   ; 1f5c: a4 43       .C
    iny                                                               ; 1f5e: c8          .
    iny                                                               ; 1f5f: c8          .
    jsr getmapblock                                                   ; 1f60: 20 c8 23     .#
    and #MapId_Ladder                                                 ; 1f63: 29 02       ).
    bne laddermove                                                    ; 1f65: d0 13       ..
    sta movementy                                                     ; 1f67: 85 47       .G
    jmp laddermove                                                    ; 1f69: 4c 7a 1f    Lz.

.climbingdown
    ldx playercharx                                                   ; 1f6c: a6 42       .B
    ldy playerchary                                                   ; 1f6e: a4 43       .C
    dey                                                               ; 1f70: 88          .
    jsr getmapblock                                                   ; 1f71: 20 c8 23     .#
    and #MapId_Ladder                                                 ; 1f74: 29 02       ).
    bne laddermove                                                    ; 1f76: d0 02       ..
    sta movementy                                                     ; 1f78: 85 47       .G
.laddermove
    lda #0                                                            ; 1f7a: a9 00       ..
    sta playerfacingdir                                               ; 1f7c: 85 4c       .L
    jmp moveplayer                                                    ; 1f7e: 4c 7b 21    L{!

; ----------------------------------------------------------------------------------
; Player jumping
; ----------------------------------------------------------------------------------
.jumping
    lda jumpdir                                                       ; 1f81: a5 4b       .K
    sta movementx                                                     ; 1f83: 85 46       .F
    lda movementy                                                     ; 1f85: a5 47       .G
    sta temp2                                                         ; 1f87: 85 89       ..
    lda jumpfalldist                                                  ; 1f89: a5 4a       .J
    lsr a                                                             ; 1f8b: 4a          J
    lsr a                                                             ; 1f8c: 4a          J
    cmp #6                                                            ; 1f8d: c9 06       ..
    bcc skip16                                                        ; 1f8f: 90 02       ..
    lda #6                                                            ; 1f91: a9 06       ..
.skip16
    eor #&ff                                                          ; 1f93: 49 ff       I.
    sec                                                               ; 1f95: 38          8
    adc #2                                                            ; 1f96: 69 02       i.
    sta movementy                                                     ; 1f98: 85 47       .G
    inc jumpfalldist                                                  ; 1f9a: e6 4a       .J
    lda playery                                                       ; 1f9c: a5 41       .A
    cmp #&dc                                                          ; 1f9e: c9 dc       ..
    bcc notjumpedtotopofscreen                                        ; 1fa0: 90 0b       ..
    lda #&ff                                                          ; 1fa2: a9 ff       ..
    sta movementy                                                     ; 1fa4: 85 47       .G
    lda #&0c                                                          ; 1fa6: a9 0c       ..
    sta jumpfalldist                                                  ; 1fa8: 85 4a       .J
    jmp checkjumponlift                                               ; 1faa: 4c 62 20    Lb

.notjumpedtotopofscreen
    lda playerfracx                                                   ; 1fad: a5 44       .D
    clc                                                               ; 1faf: 18          .
    adc movementx                                                     ; 1fb0: 65 46       eF
    cmp #3                                                            ; 1fb2: c9 03       ..
    bne notcatchingladdermidjump                                      ; 1fb4: d0 60       .`
    lda temp2                                                         ; 1fb6: a5 89       ..
    beq notcatchingladdermidjump                                      ; 1fb8: f0 5c       .\
    bmi trycatchladderpressingdown                                    ; 1fba: 30 31       01
.trycatchladderpressingup
    ldx playercharx                                                   ; 1fbc: a6 42       .B
    ldy playerchary                                                   ; 1fbe: a4 43       .C
    iny                                                               ; 1fc0: c8          .
    jsr getmapblock                                                   ; 1fc1: 20 c8 23     .#
    and #MapId_Ladder                                                 ; 1fc4: 29 02       ).
    bne catchladderpressingup                                         ; 1fc6: d0 13       ..
    ldx playercharx                                                   ; 1fc8: a6 42       .B
    ldy playerchary                                                   ; 1fca: a4 43       .C
    iny                                                               ; 1fcc: c8          .
    lda playerfracy                                                   ; 1fcd: a5 45       .E
    cmp #4                                                            ; 1fcf: c9 04       ..
    bcc skip17                                                        ; 1fd1: 90 01       ..
    iny                                                               ; 1fd3: c8          .
.skip17
    jsr getmapblock                                                   ; 1fd4: 20 c8 23     .#
    and #MapId_Ladder                                                 ; 1fd7: 29 02       ).
    beq notcatchingladdermidjump                                      ; 1fd9: f0 3b       .;
.catchladderpressingup
    lda #1                                                            ; 1fdb: a9 01       ..
    sta movementtype                                                  ; 1fdd: 85 49       .I
    lda playerfracy                                                   ; 1fdf: a5 45       .E
    clc                                                               ; 1fe1: 18          .
    adc movementy                                                     ; 1fe2: 65 47       eG
    and #1                                                            ; 1fe4: 29 01       ).
    beq alreadyalignedok1                                             ; 1fe6: f0 02       ..
    inc movementy                                                     ; 1fe8: e6 47       .G
.alreadyalignedok1
    jmp jumpmove                                                      ; 1fea: 4c cd 20    L.

.trycatchladderpressingdown
    ldx playercharx                                                   ; 1fed: a6 42       .B
    ldy playerchary                                                   ; 1fef: a4 43       .C
    jsr getmapblock                                                   ; 1ff1: 20 c8 23     .#
    and #MapId_Ladder                                                 ; 1ff4: 29 02       ).
    beq notcatchingladdermidjump                                      ; 1ff6: f0 1e       ..
    ldx playercharx                                                   ; 1ff8: a6 42       .B
    ldy playerchary                                                   ; 1ffa: a4 43       .C
    iny                                                               ; 1ffc: c8          .
    jsr getmapblock                                                   ; 1ffd: 20 c8 23     .#
    and #MapId_Ladder                                                 ; 2000: 29 02       ).
    beq notcatchingladdermidjump                                      ; 2002: f0 12       ..
    lda #1                                                            ; 2004: a9 01       ..
    sta movementtype                                                  ; 2006: 85 49       .I
    lda playerfracy                                                   ; 2008: a5 45       .E
    clc                                                               ; 200a: 18          .
    adc movementy                                                     ; 200b: 65 47       eG
    and #1                                                            ; 200d: 29 01       ).
    beq alreadyalignedok2                                             ; 200f: f0 02       ..
    dec movementy                                                     ; 2011: c6 47       .G
.alreadyalignedok2
    jmp jumpmove                                                      ; 2013: 4c cd 20    L.

.notcatchingladdermidjump
    lda movementy                                                     ; 2016: a5 47       .G
    clc                                                               ; 2018: 18          .
    adc playerfracy                                                   ; 2019: 65 45       eE
    beq jumponyboundary                                               ; 201b: f0 1c       ..
    bpl jumpaboveyboundary                                            ; 201d: 10 2d       .-
.jumpbelowyboundary
    ldx playercharx                                                   ; 201f: a6 42       .B
    ldy playerchary                                                   ; 2021: a4 43       .C
    dey                                                               ; 2023: 88          .
    jsr getmapblock                                                   ; 2024: 20 c8 23     .#
    and #MapId_Platform                                               ; 2027: 29 01       ).
    beq checkjumponlift                                               ; 2029: f0 37       .7
    lda #0                                                            ; 202b: a9 00       ..
    sta movementtype                                                  ; 202d: 85 49       .I
    lda #0                                                            ; 202f: a9 00       ..
    sec                                                               ; 2031: 38          8
    sbc playerfracy                                                   ; 2032: e5 45       .E
    sta movementy                                                     ; 2034: 85 47       .G
    jmp checkjumponlift                                               ; 2036: 4c 62 20    Lb

.jumponyboundary
    ldx playercharx                                                   ; 2039: a6 42       .B
    ldy playerchary                                                   ; 203b: a4 43       .C
    dey                                                               ; 203d: 88          .
    jsr getmapblock                                                   ; 203e: 20 c8 23     .#
    and #MapId_Platform                                               ; 2041: 29 01       ).
    beq checkjumponlift                                               ; 2043: f0 1d       ..
    lda #0                                                            ; 2045: a9 00       ..
    sta movementtype                                                  ; 2047: 85 49       .I
    jmp checkjumponlift                                               ; 2049: 4c 62 20    Lb

.jumpaboveyboundary
    cmp #8                                                            ; 204c: c9 08       ..
    bne checkjumponlift                                               ; 204e: d0 12       ..
    ldx playercharx                                                   ; 2050: a6 42       .B
    ldy playerchary                                                   ; 2052: a4 43       .C
    jsr getmapblock                                                   ; 2054: 20 c8 23     .#
    and #MapId_Platform                                               ; 2057: 29 01       ).
    beq checkjumponlift                                               ; 2059: f0 07       ..
    lda #0                                                            ; 205b: a9 00       ..
    sta movementtype                                                  ; 205d: 85 49       .I
    jmp checkjumponlift                                               ; 205f: 4c 62 20    Lb

.checkjumponlift
    lda liftflag                                                      ; 2062: a5 55       .U
    beq nolifttolandon                                                ; 2064: f0 59       .Y
    lda liftx                                                         ; 2066: a5 58       .X
    sec                                                               ; 2068: 38          8
    sbc #1                                                            ; 2069: e9 01       ..
    cmp playerx                                                       ; 206b: c5 40       .@
    bcs nolifttolandon                                                ; 206d: b0 50       .P
    adc #&0a                                                          ; 206f: 69 0a       i.
    cmp playerx                                                       ; 2071: c5 40       .@
    bcc nolifttolandon                                                ; 2073: 90 4a       .J
    lda playery                                                       ; 2075: a5 41       .A
    sec                                                               ; 2077: 38          8
    sbc #&11                                                          ; 2078: e9 11       ..
    sta temp4                                                         ; 207a: 85 8b       ..
    sbc #2                                                            ; 207c: e9 02       ..
    clc                                                               ; 207e: 18          .
    adc movementy                                                     ; 207f: 65 47       eG
    sta temp5                                                         ; 2081: 85 8c       ..
    lda lift1y                                                        ; 2083: a5 59       .Y
    cmp temp4                                                         ; 2085: c5 8b       ..
    beq hitlift1                                                      ; 2087: f0 06       ..
    bcs checklift2                                                    ; 2089: b0 0e       ..
    cmp temp5                                                         ; 208b: c5 8c       ..
    bcc checklift2                                                    ; 208d: 90 0a       ..
.hitlift1
    ldx whichlift                                                     ; 208f: a6 5b       .[
    bne adjustlift1pos                                                ; 2091: d0 03       ..
    clc                                                               ; 2093: 18          .
    adc #1                                                            ; 2094: 69 01       i.
.adjustlift1pos
    jmp moveupwithlift                                                ; 2096: 4c ac 20    L.

.checklift2
    lda lift2y                                                        ; 2099: a5 5a       .Z
    cmp temp4                                                         ; 209b: c5 8b       ..
    beq hitlift2                                                      ; 209d: f0 06       ..
    bcs nolifttolandon                                                ; 209f: b0 1e       ..
    cmp temp5                                                         ; 20a1: c5 8c       ..
    bcc nolifttolandon                                                ; 20a3: 90 1a       ..
.hitlift2
    ldx whichlift                                                     ; 20a5: a6 5b       .[
    beq moveupwithlift                                                ; 20a7: f0 03       ..
    clc                                                               ; 20a9: 18          .
    adc #1                                                            ; 20aa: 69 01       i.
.moveupwithlift
    sec                                                               ; 20ac: 38          8
    sbc temp4                                                         ; 20ad: e5 8b       ..
    clc                                                               ; 20af: 18          .
    adc #1                                                            ; 20b0: 69 01       i.
    sta movementy                                                     ; 20b2: 85 47       .G
    lda #0                                                            ; 20b4: a9 00       ..
    sta jumpfalldist                                                  ; 20b6: 85 4a       .J
    lda #4                                                            ; 20b8: a9 04       ..
    sta movementtype                                                  ; 20ba: 85 49       .I
    jmp jumpmove                                                      ; 20bc: 4c cd 20    L.

.nolifttolandon
    jsr tryhorizontalmovement                                         ; 20bf: 20 76 22     v"
    bcc jumpmove                                                      ; 20c2: 90 09       ..
    lda #0                                                            ; 20c4: a9 00       ..
    sec                                                               ; 20c6: 38          8
    sbc movementx                                                     ; 20c7: e5 46       .F
    sta movementx                                                     ; 20c9: 85 46       .F
    sta jumpdir                                                       ; 20cb: 85 4b       .K
.jumpmove
    jmp moveplayer                                                    ; 20cd: 4c 7b 21    L{!

; ----------------------------------------------------------------------------------
; Player attempting to jump
; ----------------------------------------------------------------------------------
.attemptjump
    lda #0                                                            ; 20d0: a9 00       ..
    sta jumpfalldist                                                  ; 20d2: 85 4a       .J
    lda #2                                                            ; 20d4: a9 02       ..
    sta movementtype                                                  ; 20d6: 85 49       .I
    lda movementx                                                     ; 20d8: a5 46       .F
    sta jumpdir                                                       ; 20da: 85 4b       .K
    beq jumpkeepcurrentdir                                            ; 20dc: f0 02       ..
    sta playerfacingdir                                               ; 20de: 85 4c       .L
.jumpkeepcurrentdir
    jmp jumping                                                       ; 20e0: 4c 81 1f    L..

; ----------------------------------------------------------------------------------
; Player falling
; ----------------------------------------------------------------------------------
.falling
    inc jumpfalldist                                                  ; 20e3: e6 4a       .J
    lda jumpfalldist                                                  ; 20e5: a5 4a       .J
    cmp #4                                                            ; 20e7: c9 04       ..
    bcs fallstraightdown                                              ; 20e9: b0 0b       ..
    lda jumpdir                                                       ; 20eb: a5 4b       .K
    sta movementx                                                     ; 20ed: 85 46       .F
    lda #&ff                                                          ; 20ef: a9 ff       ..
    sta movementy                                                     ; 20f1: 85 47       .G
    jmp fallingmain                                                   ; 20f3: 4c 08 21    L.!

.fallstraightdown
    lda #0                                                            ; 20f6: a9 00       ..
    sta movementx                                                     ; 20f8: 85 46       .F
    lda jumpfalldist                                                  ; 20fa: a5 4a       .J
    lsr a                                                             ; 20fc: 4a          J
    lsr a                                                             ; 20fd: 4a          J
    cmp #4                                                            ; 20fe: c9 04       ..
    bcc skip5                                                         ; 2100: 90 02       ..
    lda #3                                                            ; 2102: a9 03       ..
.skip5
    eor #&ff                                                          ; 2104: 49 ff       I.
    sta movementy                                                     ; 2106: 85 47       .G
.fallingmain
    lda movementy                                                     ; 2108: a5 47       .G
    clc                                                               ; 210a: 18          .
    adc playerfracy                                                   ; 210b: 65 45       eE
    beq fallingonyboundary                                            ; 210d: f0 1c       ..
    bpl fallingmove                                                   ; 210f: 10 2a       .*
.fallingbelowyboundary
    ldx playercharx                                                   ; 2111: a6 42       .B
    ldy playerchary                                                   ; 2113: a4 43       .C
    dey                                                               ; 2115: 88          .
    jsr getmapblock                                                   ; 2116: 20 c8 23     .#
    and #MapId_Platform                                               ; 2119: 29 01       ).
    beq fallingmove                                                   ; 211b: f0 1e       ..
    lda #0                                                            ; 211d: a9 00       ..
    sta movementtype                                                  ; 211f: 85 49       .I
    lda #0                                                            ; 2121: a9 00       ..
    sec                                                               ; 2123: 38          8
    sbc playerfracy                                                   ; 2124: e5 45       .E
    sta movementy                                                     ; 2126: 85 47       .G
    jmp fallingmove                                                   ; 2128: 4c 3b 21    L;!

.fallingonyboundary
    ldx playercharx                                                   ; 212b: a6 42       .B
    ldy playerchary                                                   ; 212d: a4 43       .C
    dey                                                               ; 212f: 88          .
    jsr getmapblock                                                   ; 2130: 20 c8 23     .#
    and #MapId_Platform                                               ; 2133: 29 01       ).
    beq fallingmove                                                   ; 2135: f0 04       ..
    lda #0                                                            ; 2137: a9 00       ..
    sta movementtype                                                  ; 2139: 85 49       .I
.fallingmove
    jmp moveplayer                                                    ; 213b: 4c 7b 21    L{!

; ----------------------------------------------------------------------------------
; Player on lift
; ----------------------------------------------------------------------------------
.onlift
    lda keys                                                          ; 213e: a5 60       .`
    and #&10                                                          ; 2140: 29 10       ).
    beq notjumpingfromlift                                            ; 2142: f0 03       ..
    jmp attemptjump                                                   ; 2144: 4c d0 20    L.

.notjumpingfromlift
    lda liftx                                                         ; 2147: a5 58       .X
    sec                                                               ; 2149: 38          8
    sbc #1                                                            ; 214a: e9 01       ..
    cmp playerx                                                       ; 214c: c5 40       .@
    bcs playermovedofflift                                            ; 214e: b0 06       ..
    adc #&0a                                                          ; 2150: 69 0a       i.
    cmp playerx                                                       ; 2152: c5 40       .@
    bcs playerstillonlift                                             ; 2154: b0 0a       ..
.playermovedofflift
    lda #0                                                            ; 2156: a9 00       ..
    sta jumpfalldist                                                  ; 2158: 85 4a       .J
    sta jumpdir                                                       ; 215a: 85 4b       .K
    lda #3                                                            ; 215c: a9 03       ..
    sta movementtype                                                  ; 215e: 85 49       .I
.playerstillonlift
    lda #1                                                            ; 2160: a9 01       ..
    sta movementy                                                     ; 2162: 85 47       .G
    lda movementx                                                     ; 2164: a5 46       .F
    beq notmovingonlift                                               ; 2166: f0 02       ..
    sta playerfacingdir                                               ; 2168: 85 4c       .L
.notmovingonlift
    jsr tryhorizontalmovement                                         ; 216a: 20 76 22     v"
    bcc dontimpedemovementonlift                                      ; 216d: 90 04       ..
    lda #0                                                            ; 216f: a9 00       ..
    sta movementx                                                     ; 2171: 85 46       .F
.dontimpedemovementonlift
    lda playery                                                       ; 2173: a5 41       .A
    cmp #&dc                                                          ; 2175: c9 dc       ..
    bcc moveplayer                                                    ; 2177: 90 02       ..
    inc playerdieflag                                                 ; 2179: e6 4f       .O
; ----------------------------------------------------------------------------------
; MOVE THE PLAYER
; ----------------------------------------------------------------------------------
.moveplayer
    lda playerspritenum                                               ; 217b: a5 48       .H
    jsr plotplayer                                                    ; 217d: 20 24 23     $#
    lda playerx                                                       ; 2180: a5 40       .@
    clc                                                               ; 2182: 18          .
    adc movementx                                                     ; 2183: 65 46       eF
    sta playerx                                                       ; 2185: 85 40       .@
    lda playerfracx                                                   ; 2187: a5 44       .D
    clc                                                               ; 2189: 18          .
    adc movementx                                                     ; 218a: 65 46       eF
    bpl skip6                                                         ; 218c: 10 02       ..
    dec playercharx                                                   ; 218e: c6 42       .B
.skip6
    cmp #8                                                            ; 2190: c9 08       ..
    bmi skip7                                                         ; 2192: 30 02       0.
    inc playercharx                                                   ; 2194: e6 42       .B
.skip7
    and #7                                                            ; 2196: 29 07       ).
    sta playerfracx                                                   ; 2198: 85 44       .D
    lda playery                                                       ; 219a: a5 41       .A
    clc                                                               ; 219c: 18          .
    adc movementy                                                     ; 219d: 65 47       eG
    sta playery                                                       ; 219f: 85 41       .A
    lda playerfracy                                                   ; 21a1: a5 45       .E
    clc                                                               ; 21a3: 18          .
    adc movementy                                                     ; 21a4: 65 47       eG
    bpl skip8                                                         ; 21a6: 10 02       ..
    dec playerchary                                                   ; 21a8: c6 43       .C
.skip8
    cmp #8                                                            ; 21aa: c9 08       ..
    bmi skip18                                                        ; 21ac: 30 02       0.
    inc playerchary                                                   ; 21ae: e6 43       .C
.skip18
    and #7                                                            ; 21b0: 29 07       ).
    sta playerfracy                                                   ; 21b2: 85 45       .E
    ldx #SpriteId_ManRight1                                           ; 21b4: a2 06       ..
    lda playerfacingdir                                               ; 21b6: a5 4c       .L
    beq playerupdownanim                                              ; 21b8: f0 0c       ..
    bpl playerrightanim                                               ; 21ba: 10 02       ..
    ldx #SpriteId_ManLeft1                                            ; 21bc: a2 09       ..
.playerrightanim
    stx temp1                                                         ; 21be: 86 88       ..
    lda playerfracx                                                   ; 21c0: a5 44       .D
    lsr a                                                             ; 21c2: 4a          J
    jmp calcplayeranim                                                ; 21c3: 4c cd 21    L.!

.playerupdownanim
    lda #SpriteId_ManUpDown1                                          ; 21c6: a9 0c       ..
    sta temp1                                                         ; 21c8: 85 88       ..
    lda playerfracy                                                   ; 21ca: a5 45       .E
    lsr a                                                             ; 21cc: 4a          J
.calcplayeranim
    ldx #2                                                            ; 21cd: a2 02       ..
    stx temp2                                                         ; 21cf: 86 89       ..
    bit temp2                                                         ; 21d1: 24 89       $.
    beq first2frames                                                  ; 21d3: f0 03       ..
    and #1                                                            ; 21d5: 29 01       ).
    asl a                                                             ; 21d7: 0a          .
.first2frames
    ldx movementtype                                                  ; 21d8: a6 49       .I
    cpx #1                                                            ; 21da: e0 01       ..
    bne animnotclimbing                                               ; 21dc: d0 09       ..
    ldx movementy                                                     ; 21de: a6 47       .G
    bne makeplayeranim                                                ; 21e0: d0 0b       ..
    lda #0                                                            ; 21e2: a9 00       ..
    jmp makeplayeranim                                                ; 21e4: 4c ed 21    L.!

.animnotclimbing
    ldx movementx                                                     ; 21e7: a6 46       .F
    bne makeplayeranim                                                ; 21e9: d0 02       ..
    lda #0                                                            ; 21eb: a9 00       ..
.makeplayeranim
    clc                                                               ; 21ed: 18          .
    adc temp1                                                         ; 21ee: 65 88       e.
    sta playerspritenum                                               ; 21f0: 85 48       .H
    jsr plotplayer                                                    ; 21f2: 20 24 23     $#
    ldx playercharx                                                   ; 21f5: a6 42       .B
    ldy playerchary                                                   ; 21f7: a4 43       .C
    lda playerfracy                                                   ; 21f9: a5 45       .E
    cmp #4                                                            ; 21fb: c9 04       ..
    bcc skip19                                                        ; 21fd: 90 01       ..
    iny                                                               ; 21ff: c8          .
.skip19
    sty temp2                                                         ; 2200: 84 89       ..
    jsr getmapblock                                                   ; 2202: 20 c8 23     .#
    sta temp1                                                         ; 2205: 85 88       ..
    and #(MapId_Egg OR MapId_Seed)                                    ; 2207: 29 0c       ).
    beq exitplayermove                                                ; 2209: f0 6a       .j
    and #MapId_Seed                                                   ; 220b: 29 08       ).
    bne hitseed                                                       ; 220d: d0 39       .9
    dec numeggsleft                                                   ; 220f: c6 39       .9
    lda #6                                                            ; 2211: a9 06       ..
    sta eggsoundblock_pitch                                           ; 2213: 8d ac 0c    ...
    ldx #<(eggsoundblock)                                             ; 2216: a2 a8       ..
    ldy #>(eggsoundblock)                                             ; 2218: a0 0c       ..
    lda #osword_sound                                                 ; 221a: a9 07       ..
    jsr osword                                                        ; 221c: 20 f1 ff     ..            ; SOUND command
    lda temp1                                                         ; 221f: a5 88       ..
    lsr a                                                             ; 2221: 4a          J
    lsr a                                                             ; 2222: 4a          J
    lsr a                                                             ; 2223: 4a          J
    lsr a                                                             ; 2224: 4a          J
    clc                                                               ; 2225: 18          .
    adc playerdataoffset                                              ; 2226: 65 4e       eN
    tax                                                               ; 2228: aa          .
    dec collectedeggsflags,x                                          ; 2229: de 10 05    ...
    ldx playercharx                                                   ; 222c: a6 42       .B
    ldy temp2                                                         ; 222e: a4 89       ..
    jsr removeegg                                                     ; 2230: 20 fe 22     ."
    lda level                                                         ; 2233: a5 50       .P
    lsr a                                                             ; 2235: 4a          J
    lsr a                                                             ; 2236: 4a          J
    clc                                                               ; 2237: 18          .
    adc #1                                                            ; 2238: 69 01       i.
    cmp #&0a                                                          ; 223a: c9 0a       ..
    bcc skip9                                                         ; 223c: 90 02       ..
    lda #&0a                                                          ; 223e: a9 0a       ..
.skip9
    ldx #5                                                            ; 2240: a2 05       ..
    jsr addscore                                                      ; 2242: 20 b5 1a     ..
    jmp exitplayermove                                                ; 2245: 4c 75 22    Lu"

.hitseed
    lda #5                                                            ; 2248: a9 05       ..
    sta eggsoundblock_pitch                                           ; 224a: 8d ac 0c    ...
    ldx #<(eggsoundblock)                                             ; 224d: a2 a8       ..
    ldy #>(eggsoundblock)                                             ; 224f: a0 0c       ..
    lda #osword_sound                                                 ; 2251: a9 07       ..
    jsr osword                                                        ; 2253: 20 f1 ff     ..            ; SOUND command
    lda temp1                                                         ; 2256: a5 88       ..
    lsr a                                                             ; 2258: 4a          J
    lsr a                                                             ; 2259: 4a          J
    lsr a                                                             ; 225a: 4a          J
    lsr a                                                             ; 225b: 4a          J
    clc                                                               ; 225c: 18          .
    adc playerdataoffset                                              ; 225d: 65 4e       eN
    tax                                                               ; 225f: aa          .
    dec collectedseedflags,x                                          ; 2260: de 20 05    . .
    ldx playercharx                                                   ; 2263: a6 42       .B
    ldy temp2                                                         ; 2265: a4 89       ..
    jsr removeseed                                                    ; 2267: 20 11 23     .#
    lda #5                                                            ; 226a: a9 05       ..
    ldx #6                                                            ; 226c: a2 06       ..
    jsr addscore                                                      ; 226e: 20 b5 1a     ..
    lda #&14                                                          ; 2271: a9 14       ..
    sta stalltime                                                     ; 2273: 85 1c       ..
.exitplayermove
    rts                                                               ; 2275: 60          `

; ----------------------------------------------------------------------------------
; Check whether player can move horizontally in the direction of movementx
; Returns C clear if ok
; ----------------------------------------------------------------------------------
.tryhorizontalmovement
    lda movementx                                                     ; 2276: a5 46       .F
    bmi tryleftmovement                                               ; 2278: 30 04       0.
    bne tryrightmovement                                              ; 227a: d0 41       .A
    clc                                                               ; 227c: 18          .
    rts                                                               ; 227d: 60          `

.tryleftmovement
    lda playerx                                                       ; 227e: a5 40       .@
    cmp #1                                                            ; 2280: c9 01       ..
    bcc horizmovefailed                                               ; 2282: 90 78       .x
    lda playerfracx                                                   ; 2284: a5 44       .D
    cmp #2                                                            ; 2286: c9 02       ..
    bcs horizmovesucceeded                                            ; 2288: b0 70       .p
    lda movementy                                                     ; 228a: a5 47       .G
    cmp #2                                                            ; 228c: c9 02       ..
    beq horizmovesucceeded                                            ; 228e: f0 6a       .j
    ldx playercharx                                                   ; 2290: a6 42       .B
    dex                                                               ; 2292: ca          .
    ldy playerchary                                                   ; 2293: a4 43       .C
    lda playerfracy                                                   ; 2295: a5 45       .E
    clc                                                               ; 2297: 18          .
    adc movementy                                                     ; 2298: 65 47       eG
    cmp #8                                                            ; 229a: c9 08       ..
    bcc trylefttestblock                                              ; 229c: 90 07       ..
    bpl trylefttestblockabove                                         ; 229e: 10 04       ..
    dey                                                               ; 22a0: 88          .
    jmp trylefttestblock                                              ; 22a1: 4c a5 22    L."

.trylefttestblockabove
    iny                                                               ; 22a4: c8          .
.trylefttestblock
    jsr getmapblock                                                   ; 22a5: 20 c8 23     .#
    cmp #MapId_Platform                                               ; 22a8: c9 01       ..
    beq horizmovefailed                                               ; 22aa: f0 50       .P
    lda movementy                                                     ; 22ac: a5 47       .G
    bpl horizmovesucceeded                                            ; 22ae: 10 4a       .J
    ldx playercharx                                                   ; 22b0: a6 42       .B
    dex                                                               ; 22b2: ca          .
    iny                                                               ; 22b3: c8          .
    jsr getmapblock                                                   ; 22b4: 20 c8 23     .#
    cmp #MapId_Platform                                               ; 22b7: c9 01       ..
    beq horizmovefailed                                               ; 22b9: f0 41       .A
    bne horizmovesucceeded                                            ; 22bb: d0 3d       .=
.tryrightmovement
    lda playerx                                                       ; 22bd: a5 40       .@
    cmp #&98                                                          ; 22bf: c9 98       ..
    bcs horizmovefailed                                               ; 22c1: b0 39       .9
    lda playerfracx                                                   ; 22c3: a5 44       .D
    cmp #5                                                            ; 22c5: c9 05       ..
    bcc horizmovesucceeded                                            ; 22c7: 90 31       .1
    lda movementy                                                     ; 22c9: a5 47       .G
    cmp #2                                                            ; 22cb: c9 02       ..
    beq horizmovesucceeded                                            ; 22cd: f0 2b       .+
    ldx playercharx                                                   ; 22cf: a6 42       .B
    inx                                                               ; 22d1: e8          .
    ldy playerchary                                                   ; 22d2: a4 43       .C
    lda playerfracy                                                   ; 22d4: a5 45       .E
    clc                                                               ; 22d6: 18          .
    adc movementy                                                     ; 22d7: 65 47       eG
    cmp #8                                                            ; 22d9: c9 08       ..
    bcc tryrighttestblock                                             ; 22db: 90 07       ..
    bpl tryrighttestblockabove                                        ; 22dd: 10 04       ..
    dey                                                               ; 22df: 88          .
    jmp tryrighttestblock                                             ; 22e0: 4c e4 22    L."

.tryrighttestblockabove
    iny                                                               ; 22e3: c8          .
.tryrighttestblock
    jsr getmapblock                                                   ; 22e4: 20 c8 23     .#
    cmp #MapId_Platform                                               ; 22e7: c9 01       ..
    beq horizmovefailed                                               ; 22e9: f0 11       ..
    lda movementy                                                     ; 22eb: a5 47       .G
    bpl horizmovesucceeded                                            ; 22ed: 10 0b       ..
    ldx playercharx                                                   ; 22ef: a6 42       .B
    inx                                                               ; 22f1: e8          .
    iny                                                               ; 22f2: c8          .
    jsr getmapblock                                                   ; 22f3: 20 c8 23     .#
    cmp #MapId_Platform                                               ; 22f6: c9 01       ..
    beq horizmovefailed                                               ; 22f8: f0 02       ..
.horizmovesucceeded
    clc                                                               ; 22fa: 18          .
    rts                                                               ; 22fb: 60          `

.horizmovefailed
    sec                                                               ; 22fc: 38          8
    rts                                                               ; 22fd: 60          `

; ----------------------------------------------------------------------------------
; Unplots an egg
; ----------------------------------------------------------------------------------
.removeegg
    txa                                                               ; 22fe: 8a          .
    pha                                                               ; 22ff: 48          H
    lda #SpriteId_Blank                                               ; 2300: a9 00       ..
    jsr setmapblock                                                   ; 2302: 20 e0 23     .#
    lda #EggColour                                                    ; 2305: a9 02       ..
    sta spritecolour                                                  ; 2307: 85 7f       ..
    pla                                                               ; 2309: 68          h
    tax                                                               ; 230a: aa          .
    lda #SpriteId_Egg                                                 ; 230b: a9 03       ..
    jsr plotspriteatcharpos                                           ; 230d: 20 0c 1a     ..
    rts                                                               ; 2310: 60          `

; ----------------------------------------------------------------------------------
; Unplots seed
; ----------------------------------------------------------------------------------
.removeseed
    txa                                                               ; 2311: 8a          .
    pha                                                               ; 2312: 48          H
    lda #SpriteId_Blank                                               ; 2313: a9 00       ..
    jsr setmapblock                                                   ; 2315: 20 e0 23     .#
    lda #SeedColour                                                   ; 2318: a9 08       ..
    sta spritecolour                                                  ; 231a: 85 7f       ..
    pla                                                               ; 231c: 68          h
    tax                                                               ; 231d: aa          .
    lda #SpriteId_Seed                                                ; 231e: a9 04       ..
    jsr plotspriteatcharpos                                           ; 2320: 20 0c 1a     ..
    rts                                                               ; 2323: 60          `

; ----------------------------------------------------------------------------------
; Plots player, frame A
; ----------------------------------------------------------------------------------
.plotplayer
    ldx #PlayerColour                                                 ; 2324: a2 20       .
    stx spritecolour                                                  ; 2326: 86 7f       ..
    jsr getspritedata                                                 ; 2328: 20 db 19     ..
    ldx playerx                                                       ; 232b: a6 40       .@
    ldy playery                                                       ; 232d: a4 41       .A
    jsr calcscrnaddr                                                  ; 232f: 20 87 19     ..
    jsr plotsprite                                                    ; 2332: 20 02 19     ..
    rts                                                               ; 2335: 60          `

; ----------------------------------------------------------------------------------
; Plots big bird, frame A
; ----------------------------------------------------------------------------------
.plotbigbird
    ldx #BigBirdColour                                                ; 2336: a2 20       .
    stx spritecolour                                                  ; 2338: 86 7f       ..
    clc                                                               ; 233a: 18          .
    adc #SpriteId_BigBirdRight1                                       ; 233b: 69 0f       i.
    jsr getspritedata                                                 ; 233d: 20 db 19     ..
    ldx bigbirdxpos                                                   ; 2340: a6 30       .0
    ldy bigbirdypos                                                   ; 2342: a4 31       .1
    jsr calcscrnaddr                                                  ; 2344: 20 87 19     ..
    jsr plotsprite                                                    ; 2347: 20 02 19     ..
    rts                                                               ; 234a: 60          `

; ----------------------------------------------------------------------------------
; Plots bird
; ----------------------------------------------------------------------------------
.plotbird
    ldx #BirdColour                                                   ; 234b: a2 80       ..
    stx spritecolour                                                  ; 234d: 86 7f       ..
    ldx temp1                                                         ; 234f: a6 88       ..
    lda birdanim,x                                                    ; 2351: bd 19 04    ...
    clc                                                               ; 2354: 18          .
    adc #SpriteId_BirdRight1                                          ; 2355: 69 15       i.
    pha                                                               ; 2357: 48          H
    jsr getspritedata                                                 ; 2358: 20 db 19     ..
    ldx temp1                                                         ; 235b: a6 88       ..
    lda birddata,x                                                    ; 235d: bd 00 04    ...
    ldy birdpixely,x                                                  ; 2360: bc 05 04    ...
    tax                                                               ; 2363: aa          .
    pla                                                               ; 2364: 68          h
    cmp #SpriteId_BirdEatLeft1                                        ; 2365: c9 1d       ..
    bcc noteatingtoleft                                               ; 2367: 90 04       ..
    txa                                                               ; 2369: 8a          .
    sbc #8                                                            ; 236a: e9 08       ..
    tax                                                               ; 236c: aa          .
.noteatingtoleft
    jsr calcscrnaddr                                                  ; 236d: 20 87 19     ..
    jsr plotsprite                                                    ; 2370: 20 02 19     ..
    rts                                                               ; 2373: 60          `

; ----------------------------------------------------------------------------------
; Moves a lift (different one each call)
; ----------------------------------------------------------------------------------
.movelift
    lda liftflag                                                      ; 2374: a5 55       .U
    beq exitmovelift                                                  ; 2376: f0 4f       .O
    ldy lift1y                                                        ; 2378: a4 59       .Y
    lda whichlift                                                     ; 237a: a5 5b       .[
    beq movelift1                                                     ; 237c: f0 02       ..
    ldy lift2y                                                        ; 237e: a4 5a       .Z
.movelift1
    sty temp2                                                         ; 2380: 84 89       ..
    lda #LiftColour                                                   ; 2382: a9 02       ..
    sta spritecolour                                                  ; 2384: 85 7f       ..
    lda #SpriteId_Lift                                                ; 2386: a9 05       ..
    jsr getspritedata                                                 ; 2388: 20 db 19     ..
    ldx liftx                                                         ; 238b: a6 58       .X
    ldy temp2                                                         ; 238d: a4 89       ..
    jsr calcscrnaddr                                                  ; 238f: 20 87 19     ..
    jsr plotsprite                                                    ; 2392: 20 02 19     ..
    inc temp2                                                         ; 2395: e6 89       ..
    inc temp2                                                         ; 2397: e6 89       ..
    lda temp2                                                         ; 2399: a5 89       ..
    cmp #&e0                                                          ; 239b: c9 e0       ..
    bne liftstillonscreen                                             ; 239d: d0 04       ..
    lda #6                                                            ; 239f: a9 06       ..
    sta temp2                                                         ; 23a1: 85 89       ..
.liftstillonscreen
    lda #SpriteId_Lift                                                ; 23a3: a9 05       ..
    jsr getspritedata                                                 ; 23a5: 20 db 19     ..
    ldx liftx                                                         ; 23a8: a6 58       .X
    ldy temp2                                                         ; 23aa: a4 89       ..
    jsr calcscrnaddr                                                  ; 23ac: 20 87 19     ..
    jsr plotsprite                                                    ; 23af: 20 02 19     ..
    lda whichlift                                                     ; 23b2: a5 5b       .[
    beq updatelift1                                                   ; 23b4: f0 07       ..
    lda temp2                                                         ; 23b6: a5 89       ..
    sta lift2y                                                        ; 23b8: 85 5a       .Z
    jmp togglelift                                                    ; 23ba: 4c c1 23    L.#

.updatelift1
    lda temp2                                                         ; 23bd: a5 89       ..
    sta lift1y                                                        ; 23bf: 85 59       .Y
.togglelift
    lda whichlift                                                     ; 23c1: a5 5b       .[
    eor #&ff                                                          ; 23c3: 49 ff       I.
    sta whichlift                                                     ; 23c5: 85 5b       .[
.exitmovelift
    rts                                                               ; 23c7: 60          `

; ----------------------------------------------------------------------------------
; Get map block at X,Y into A
; ----------------------------------------------------------------------------------
.getmapblock
    cpy #&19                                                          ; 23c8: c0 19       ..
    bcs offscreen                                                     ; 23ca: b0 11       ..
    cpx #&14                                                          ; 23cc: e0 14       ..
    bcs offscreen                                                     ; 23ce: b0 0d       ..
    jsr calcmapaddr                                                   ; 23d0: 20 ed 23     .#
    bcs readmapdatahi                                                 ; 23d3: b0 04       ..
.readmapdatalo
    lda mapdata,x                                                     ; 23d5: bd 00 06    ...
    rts                                                               ; 23d8: 60          `

.readmapdatahi
    lda mapdata + $0100,x                                             ; 23d9: bd 00 07    ...
    rts                                                               ; 23dc: 60          `

.offscreen
    lda #0                                                            ; 23dd: a9 00       ..
    rts                                                               ; 23df: 60          `

; ----------------------------------------------------------------------------------
; Sets map block at X,Y to A
; ----------------------------------------------------------------------------------
.setmapblock
    jsr calcmapaddr                                                   ; 23e0: 20 ed 23     .#
    bcs writemapdatahi                                                ; 23e3: b0 04       ..
.writemapdatalo
    sta mapdata,x                                                     ; 23e5: 9d 00 06    ...
    rts                                                               ; 23e8: 60          `

.writemapdatahi
    sta mapdata + $0100,x                                             ; 23e9: 9d 00 07    ...
    rts                                                               ; 23ec: 60          `

; ----------------------------------------------------------------------------------
; Calculates map data address of block X,Y
; Returns offset in 256*C+X
; Preserves A
; ----------------------------------------------------------------------------------
.calcmapaddr
    pha                                                               ; 23ed: 48          H
    sty temp7                                                         ; 23ee: 84 8e       ..
    tya                                                               ; 23f0: 98          .
    asl a                                                             ; 23f1: 0a          .
    asl a                                                             ; 23f2: 0a          .
    adc temp7                                                         ; 23f3: 65 8e       e.
    asl a                                                             ; 23f5: 0a          .
    asl a                                                             ; 23f6: 0a          .
    php                                                               ; 23f7: 08          .
    clc                                                               ; 23f8: 18          .
    sta temp7                                                         ; 23f9: 85 8e       ..
    txa                                                               ; 23fb: 8a          .
    adc temp7                                                         ; 23fc: 65 8e       e.
    tax                                                               ; 23fe: aa          .
    bcs exitwithcset                                                  ; 23ff: b0 03       ..
    plp                                                               ; 2401: 28          (
    pla                                                               ; 2402: 68          h
    rts                                                               ; 2403: 60          `

.exitwithcset
    pla                                                               ; 2404: 68          h
    pla                                                               ; 2405: 68          h
    rts                                                               ; 2406: 60          `

; ----------------------------------------------------------------------------------
; Update birds
; ----------------------------------------------------------------------------------
.updatebirds
    inc updatetimer                                                   ; 2407: e6 38       .8
    lda updatetimer                                                   ; 2409: a5 38       .8
    cmp #8                                                            ; 240b: c9 08       ..
    bne dontmovebigbird                                               ; 240d: d0 07       ..
    lda #0                                                            ; 240f: a9 00       ..
    sta updatetimer                                                   ; 2411: 85 38       .8
    jmp movebigbird                                                   ; 2413: 4c 20 24    L $

.dontmovebigbird
    cmp #4                                                            ; 2416: c9 04       ..
    bne skip10                                                        ; 2418: d0 03       ..
    jmp decreasetime                                                  ; 241a: 4c 9d 26    L.&

.skip10
    jmp movebirds                                                     ; 241d: 4c b5 24    L.$

; ----------------------------------------------------------------------------------
; Update big bird
; ----------------------------------------------------------------------------------
.movebigbird
    lda bigbirdanim                                                   ; 2420: a5 34       .4
    and #2                                                            ; 2422: 29 02       ).
    sta temp4                                                         ; 2424: 85 8b       ..
    lda bigbirdflag                                                   ; 2426: a5 35       .5
    beq animatebigbird                                                ; 2428: f0 6a       .j
    lda bigbirdxpos                                                   ; 242a: a5 30       .0
    clc                                                               ; 242c: 18          .
    adc #4                                                            ; 242d: 69 04       i.
    cmp playerx                                                       ; 242f: c5 40       .@
    bcs movebigbirdleft                                               ; 2431: b0 11       ..
.movebigbirdright
    inc bigbirdxspeed                                                 ; 2433: e6 32       .2
    lda bigbirdxspeed                                                 ; 2435: a5 32       .2
    cmp #6                                                            ; 2437: c9 06       ..
    bmi skip11                                                        ; 2439: 30 02       0.
    dec bigbirdxspeed                                                 ; 243b: c6 32       .2
.skip11
    lda #0                                                            ; 243d: a9 00       ..
    sta temp4                                                         ; 243f: 85 8b       ..
    jmp movebigbirdvertically                                         ; 2441: 4c 52 24    LR$

.movebigbirdleft
    dec bigbirdxspeed                                                 ; 2444: c6 32       .2
    lda bigbirdxspeed                                                 ; 2446: a5 32       .2
    cmp #&fb                                                          ; 2448: c9 fb       ..
    bpl skip12                                                        ; 244a: 10 02       ..
    inc bigbirdxspeed                                                 ; 244c: e6 32       .2
.skip12
    lda #2                                                            ; 244e: a9 02       ..
    sta temp4                                                         ; 2450: 85 8b       ..
.movebigbirdvertically
    lda playery                                                       ; 2452: a5 41       .A
    clc                                                               ; 2454: 18          .
    adc #4                                                            ; 2455: 69 04       i.
    cmp bigbirdypos                                                   ; 2457: c5 31       .1
    bcc movebigbirddown                                               ; 2459: 90 0d       ..
.movebigbirdup
    inc bigbirdyspeed                                                 ; 245b: e6 33       .3
    lda bigbirdyspeed                                                 ; 245d: a5 33       .3
    cmp #6                                                            ; 245f: c9 06       ..
    bmi skip13                                                        ; 2461: 30 02       0.
    dec bigbirdyspeed                                                 ; 2463: c6 33       .3
.skip13
    jmp bigbirdbounce                                                 ; 2465: 4c 72 24    Lr$

.movebigbirddown
    dec bigbirdyspeed                                                 ; 2468: c6 33       .3
    lda bigbirdyspeed                                                 ; 246a: a5 33       .3
    cmp #&fb                                                          ; 246c: c9 fb       ..
    bpl bigbirdbounce                                                 ; 246e: 10 02       ..
    inc bigbirdyspeed                                                 ; 2470: e6 33       .3
.bigbirdbounce
    lda bigbirdypos                                                   ; 2472: a5 31       .1
    clc                                                               ; 2474: 18          .
    adc bigbirdyspeed                                                 ; 2475: 65 33       e3
    cmp #&28                                                          ; 2477: c9 28       .(
    bcs dontbounceoffbottom                                           ; 2479: b0 08       ..
    lda bigbirdyspeed                                                 ; 247b: a5 33       .3
    eor #&ff                                                          ; 247d: 49 ff       I.
    sta bigbirdyspeed                                                 ; 247f: 85 33       .3
    inc bigbirdyspeed                                                 ; 2481: e6 33       .3
.dontbounceoffbottom
    lda bigbirdxpos                                                   ; 2483: a5 30       .0
    clc                                                               ; 2485: 18          .
    adc bigbirdxspeed                                                 ; 2486: 65 32       e2
    cmp #&90                                                          ; 2488: c9 90       ..
    bcc animatebigbird                                                ; 248a: 90 08       ..
    lda bigbirdxspeed                                                 ; 248c: a5 32       .2
    eor #&ff                                                          ; 248e: 49 ff       I.
    sta bigbirdxspeed                                                 ; 2490: 85 32       .2
    inc bigbirdxspeed                                                 ; 2492: e6 32       .2
.animatebigbird
    lda bigbirdanim                                                   ; 2494: a5 34       .4
    jsr plotbigbird                                                   ; 2496: 20 36 23     6#
    lda bigbirdxpos                                                   ; 2499: a5 30       .0
    clc                                                               ; 249b: 18          .
    adc bigbirdxspeed                                                 ; 249c: 65 32       e2
    sta bigbirdxpos                                                   ; 249e: 85 30       .0
    lda bigbirdypos                                                   ; 24a0: a5 31       .1
    clc                                                               ; 24a2: 18          .
    adc bigbirdyspeed                                                 ; 24a3: 65 33       e3
    sta bigbirdypos                                                   ; 24a5: 85 31       .1
    lda bigbirdanim                                                   ; 24a7: a5 34       .4
    and #1                                                            ; 24a9: 29 01       ).
    eor #1                                                            ; 24ab: 49 01       I.
    ora temp4                                                         ; 24ad: 05 8b       ..
    sta bigbirdanim                                                   ; 24af: 85 34       .4
    jsr plotbigbird                                                   ; 24b1: 20 36 23     6#
    rts                                                               ; 24b4: 60          `

; ----------------------------------------------------------------------------------
; Update walking birds
; ----------------------------------------------------------------------------------
.movebirds
    dec currentbirdindex                                              ; 24b5: c6 36       .6
    ldx currentbirdindex                                              ; 24b7: a6 36       .6
    bpl dontresetbirdindex                                            ; 24b9: 10 04       ..
    ldx birdwalkingspeed                                              ; 24bb: a6 37       .7
    stx currentbirdindex                                              ; 24bd: 86 36       .6
.dontresetbirdindex
    cpx numbirds                                                      ; 24bf: e4 57       .W
    bcc movebird                                                      ; 24c1: 90 01       ..
    rts                                                               ; 24c3: 60          `

.movebird
    stx temp1                                                         ; 24c4: 86 88       ..
    lda birdstatus,x                                                  ; 24c6: bd 14 04    ...
    cmp #1                                                            ; 24c9: c9 01       ..
    bne birddosomething                                               ; 24cb: d0 03       ..
    jmp animatebird                                                   ; 24cd: 4c ef 25    L.%

.birddosomething
    bcc birdwalking                                                   ; 24d0: 90 03       ..
    jmp birdeatingseed                                                ; 24d2: 4c b6 25    L.%

.birdwalking
    lda birdcharx,x                                                   ; 24d5: bd 0a 04    ...
    sta temp4                                                         ; 24d8: 85 8b       ..
    lda birdchary,x                                                   ; 24da: bd 0f 04    ...
    sta temp5                                                         ; 24dd: 85 8c       ..
    lda #0                                                            ; 24df: a9 00       ..
    sta temp6                                                         ; 24e1: 85 8d       ..
    ldx temp4                                                         ; 24e3: a6 8b       ..
    ldy temp5                                                         ; 24e5: a4 8c       ..
    dex                                                               ; 24e7: ca          .
    dey                                                               ; 24e8: 88          .
    jsr getmapblock                                                   ; 24e9: 20 c8 23     .#
    and #MapId_Platform                                               ; 24ec: 29 01       ).
    beq noplatformtotheleft                                           ; 24ee: f0 02       ..
    sta temp6                                                         ; 24f0: 85 8d       ..
.noplatformtotheleft
    ldx temp4                                                         ; 24f2: a6 8b       ..
    ldy temp5                                                         ; 24f4: a4 8c       ..
    inx                                                               ; 24f6: e8          .
    dey                                                               ; 24f7: 88          .
    jsr getmapblock                                                   ; 24f8: 20 c8 23     .#
    and #MapId_Platform                                               ; 24fb: 29 01       ).
    beq noplatformtotheright                                          ; 24fd: f0 06       ..
    lda #2                                                            ; 24ff: a9 02       ..
    ora temp6                                                         ; 2501: 05 8d       ..
    sta temp6                                                         ; 2503: 85 8d       ..
.noplatformtotheright
    ldx temp4                                                         ; 2505: a6 8b       ..
    ldy temp5                                                         ; 2507: a4 8c       ..
    dey                                                               ; 2509: 88          .
    jsr getmapblock                                                   ; 250a: 20 c8 23     .#
    and #MapId_Ladder                                                 ; 250d: 29 02       ).
    beq noladderbelow                                                 ; 250f: f0 06       ..
    lda #8                                                            ; 2511: a9 08       ..
    ora temp6                                                         ; 2513: 05 8d       ..
    sta temp6                                                         ; 2515: 85 8d       ..
.noladderbelow
    ldx temp4                                                         ; 2517: a6 8b       ..
    ldy temp5                                                         ; 2519: a4 8c       ..
    iny                                                               ; 251b: c8          .
    iny                                                               ; 251c: c8          .
    jsr getmapblock                                                   ; 251d: 20 c8 23     .#
    and #MapId_Ladder                                                 ; 2520: 29 02       ).
    beq noladderabove                                                 ; 2522: f0 06       ..
    lda #4                                                            ; 2524: a9 04       ..
    ora temp6                                                         ; 2526: 05 8d       ..
    sta temp6                                                         ; 2528: 85 8d       ..
.noladderabove
    jsr countsetbits                                                  ; 252a: 20 a9 25     .%
    cpx #1                                                            ; 252d: e0 01       ..
    bne morethanonechoice                                             ; 252f: d0 0a       ..
    lda temp6                                                         ; 2531: a5 8d       ..
    ldx temp1                                                         ; 2533: a6 88       ..
    sta birddir,x                                                     ; 2535: 9d 1e 04    ...
    jmp birdgotdirection                                              ; 2538: 4c 7b 25    L{%

.morethanonechoice
    ldx temp1                                                         ; 253b: a6 88       ..
    lda birddir,x                                                     ; 253d: bd 1e 04    ...
    cmp #4                                                            ; 2540: c9 04       ..
    bcs birdmovingupdown                                              ; 2542: b0 05       ..
    eor #&fc                                                          ; 2544: 49 fc       I.
    jmp birdmovingleftright                                           ; 2546: 4c 4b 25    LK%

.birdmovingupdown
    eor #&f3                                                          ; 2549: 49 f3       I.
.birdmovingleftright
    and temp6                                                         ; 254b: 25 8d       %.
    sta temp6                                                         ; 254d: 85 8d       ..
    jsr countsetbits                                                  ; 254f: 20 a9 25     .%
    cpx #1                                                            ; 2552: e0 01       ..
    bne stillmorethanonechoice                                        ; 2554: d0 0a       ..
    ldx temp1                                                         ; 2556: a6 88       ..
    lda temp6                                                         ; 2558: a5 8d       ..
    sta birddir,x                                                     ; 255a: 9d 1e 04    ...
    jmp birdgotdirection                                              ; 255d: 4c 7b 25    L{%

.stillmorethanonechoice
    lda temp6                                                         ; 2560: a5 8d       ..
    sta temp7                                                         ; 2562: 85 8e       ..
.tryrandomdirectionloop
    jsr rnd                                                           ; 2564: 20 a4 1a     ..
    lda rndseed                                                       ; 2567: a5 66       .f
    and temp7                                                         ; 2569: 25 8e       %.
    sta temp6                                                         ; 256b: 85 8d       ..
    jsr countsetbits                                                  ; 256d: 20 a9 25     .%
    cpx #1                                                            ; 2570: e0 01       ..
    bne tryrandomdirectionloop                                        ; 2572: d0 f0       ..
    ldx temp1                                                         ; 2574: a6 88       ..
    lda temp6                                                         ; 2576: a5 8d       ..
    sta birddir,x                                                     ; 2578: 9d 1e 04    ...
.birdgotdirection
    ldx temp1                                                         ; 257b: a6 88       ..
    lda birddir,x                                                     ; 257d: bd 1e 04    ...
    and #3                                                            ; 2580: 29 03       ).
    beq animatebird                                                   ; 2582: f0 6b       .k
    and #1                                                            ; 2584: 29 01       ).
    beq newbirddirright                                               ; 2586: f0 0b       ..
    ldx temp4                                                         ; 2588: a6 8b       ..
    ldy temp5                                                         ; 258a: a4 8c       ..
    dex                                                               ; 258c: ca          .
    jsr getmapblock                                                   ; 258d: 20 c8 23     .#
    jmp birdmovedhorizontally                                         ; 2590: 4c 9b 25    L.%

.newbirddirright
    ldx temp4                                                         ; 2593: a6 8b       ..
    ldy temp5                                                         ; 2595: a4 8c       ..
    inx                                                               ; 2597: e8          .
    jsr getmapblock                                                   ; 2598: 20 c8 23     .#
.birdmovedhorizontally
    and #MapId_Seed                                                   ; 259b: 29 08       ).
    beq animatebird                                                   ; 259d: f0 50       .P
    ldx temp1                                                         ; 259f: a6 88       ..
    lda #2                                                            ; 25a1: a9 02       ..
    sta birdstatus,x                                                  ; 25a3: 9d 14 04    ...
    jmp animatebird                                                   ; 25a6: 4c ef 25    L.%

.countsetbits
    ldx #0                                                            ; 25a9: a2 00       ..
    lda temp6                                                         ; 25ab: a5 8d       ..
.countsetbitsloop
    lsr a                                                             ; 25ad: 4a          J
    bcc skip14                                                        ; 25ae: 90 01       ..
    inx                                                               ; 25b0: e8          .
.skip14
    cmp #0                                                            ; 25b1: c9 00       ..
    bne countsetbitsloop                                              ; 25b3: d0 f8       ..
    rts                                                               ; 25b5: 60          `

.birdeatingseed
    cmp #4                                                            ; 25b6: c9 04       ..
    bne animatebird                                                   ; 25b8: d0 35       .5
    lda birddir,x                                                     ; 25ba: bd 1e 04    ...
    ldy birdcharx,x                                                   ; 25bd: bc 0a 04    ...
    sty temp4                                                         ; 25c0: 84 8b       ..
    ldy birdchary,x                                                   ; 25c2: bc 0f 04    ...
    sty temp5                                                         ; 25c5: 84 8c       ..
    ldx temp4                                                         ; 25c7: a6 8b       ..
    dex                                                               ; 25c9: ca          .
    and #1                                                            ; 25ca: 29 01       ).
    bne foundseedpos                                                  ; 25cc: d0 02       ..
    inx                                                               ; 25ce: e8          .
    inx                                                               ; 25cf: e8          .
.foundseedpos
    stx temp6                                                         ; 25d0: 86 8d       ..
    jsr getmapblock                                                   ; 25d2: 20 c8 23     .#
    sta temp2                                                         ; 25d5: 85 89       ..
    and #MapId_Seed                                                   ; 25d7: 29 08       ).
    beq animatebird                                                   ; 25d9: f0 14       ..
    lda temp2                                                         ; 25db: a5 89       ..
    lsr a                                                             ; 25dd: 4a          J
    lsr a                                                             ; 25de: 4a          J
    lsr a                                                             ; 25df: 4a          J
    lsr a                                                             ; 25e0: 4a          J
    clc                                                               ; 25e1: 18          .
    adc playerdataoffset                                              ; 25e2: 65 4e       eN
    tax                                                               ; 25e4: aa          .
    dec collectedseedflags,x                                          ; 25e5: de 20 05    . .
    ldx temp6                                                         ; 25e8: a6 8d       ..
    ldy temp5                                                         ; 25ea: a4 8c       ..
    jsr removeseed                                                    ; 25ec: 20 11 23     .#
.animatebird
    jsr plotbird                                                      ; 25ef: 20 4b 23     K#
    ldx temp1                                                         ; 25f2: a6 88       ..
    lda birdstatus,x                                                  ; 25f4: bd 14 04    ...
    cmp #2                                                            ; 25f7: c9 02       ..
    bcs animatebirdeating                                             ; 25f9: b0 7a       .z
    lda birddir,x                                                     ; 25fb: bd 1e 04    ...
    lsr a                                                             ; 25fe: 4a          J
    bcs animatebirdleft                                               ; 25ff: b0 32       .2
    lsr a                                                             ; 2601: 4a          J
    bcs animatebirdright                                              ; 2602: b0 45       .E
    lsr a                                                             ; 2604: 4a          J
    bcs animatebirdup                                                 ; 2605: b0 16       ..
.animatebirddown
    lda birdpixely,x                                                  ; 2607: bd 05 04    ...
    sec                                                               ; 260a: 38          8
    sbc #4                                                            ; 260b: e9 04       ..
    sta birdpixely,x                                                  ; 260d: 9d 05 04    ...
    lda birdstatus,x                                                  ; 2610: bd 14 04    ...
    beq animatebirddown2                                              ; 2613: f0 03       ..
    dec birdchary,x                                                   ; 2615: de 0f 04    ...
.animatebirddown2
    lda #SpriteId_BirdUpDown1 - SpriteId_BirdRight1                   ; 2618: a9 04       ..
    jmp animatebird2                                                  ; 261a: 4c 5f 26    L_&

.animatebirdup
    lda birdpixely,x                                                  ; 261d: bd 05 04    ...
    clc                                                               ; 2620: 18          .
    adc #4                                                            ; 2621: 69 04       i.
    sta birdpixely,x                                                  ; 2623: 9d 05 04    ...
    lda birdstatus,x                                                  ; 2626: bd 14 04    ...
    beq animatebirdup2                                                ; 2629: f0 03       ..
    inc birdchary,x                                                   ; 262b: fe 0f 04    ...
.animatebirdup2
    lda #SpriteId_BirdUpDown1 - SpriteId_BirdRight1                   ; 262e: a9 04       ..
    jmp animatebird2                                                  ; 2630: 4c 5f 26    L_&

.animatebirdleft
    lda birddata,x                                                    ; 2633: bd 00 04    ...
    sec                                                               ; 2636: 38          8
    sbc #4                                                            ; 2637: e9 04       ..
    sta birddata,x                                                    ; 2639: 9d 00 04    ...
    lda birdstatus,x                                                  ; 263c: bd 14 04    ...
    beq animatebirdleft2                                              ; 263f: f0 03       ..
    dec birdcharx,x                                                   ; 2641: de 0a 04    ...
.animatebirdleft2
    lda #SpriteId_BirdLeft1 - SpriteId_BirdRight1                     ; 2644: a9 02       ..
    jmp animatebird2                                                  ; 2646: 4c 5f 26    L_&

.animatebirdright
    lda birddata,x                                                    ; 2649: bd 00 04    ...
    clc                                                               ; 264c: 18          .
    adc #4                                                            ; 264d: 69 04       i.
    sta birddata,x                                                    ; 264f: 9d 00 04    ...
    lda birdstatus,x                                                  ; 2652: bd 14 04    ...
    beq animatebirdright2                                             ; 2655: f0 03       ..
    inc birdcharx,x                                                   ; 2657: fe 0a 04    ...
.animatebirdright2
    lda #SpriteId_BirdRight1 - SpriteId_BirdRight1                    ; 265a: a9 00       ..
    jmp animatebird2                                                  ; 265c: 4c 5f 26    L_&

.animatebird2
    sta birdanim,x                                                    ; 265f: 9d 19 04    ...
    lda birdstatus,x                                                  ; 2662: bd 14 04    ...
    eor #1                                                            ; 2665: 49 01       I.
    sta birdstatus,x                                                  ; 2667: 9d 14 04    ...
    clc                                                               ; 266a: 18          .
    adc birdanim,x                                                    ; 266b: 7d 19 04    }..
    sta birdanim,x                                                    ; 266e: 9d 19 04    ...
    jsr plotbird                                                      ; 2671: 20 4b 23     K#
    rts                                                               ; 2674: 60          `

.animatebirdeating
    lda birdstatus,x                                                  ; 2675: bd 14 04    ...
    asl a                                                             ; 2678: 0a          .
    and #&1f                                                          ; 2679: 29 1f       ).
    sta birdstatus,x                                                  ; 267b: 9d 14 04    ...
    beq finishedeating                                                ; 267e: f0 02       ..
    lda #SpriteId_BirdEatRight1 - SpriteId_BirdRight1                 ; 2680: a9 06       ..
.finishedeating
    ldy birddir,x                                                     ; 2682: bc 1e 04    ...
    cpy #1                                                            ; 2685: c0 01       ..
    bne eatingright                                                   ; 2687: d0 03       ..
    clc                                                               ; 2689: 18          .
    adc #2                                                            ; 268a: 69 02       i.
.eatingright
    ldy birdstatus,x                                                  ; 268c: bc 14 04    ...
    cpy #8                                                            ; 268f: c0 08       ..
    bne eatingsecondframe                                             ; 2691: d0 03       ..
    clc                                                               ; 2693: 18          .
    adc #1                                                            ; 2694: 69 01       i.
.eatingsecondframe
    sta birdanim,x                                                    ; 2696: 9d 19 04    ...
    jsr plotbird                                                      ; 2699: 20 4b 23     K#
    rts                                                               ; 269c: 60          `

; ----------------------------------------------------------------------------------
; Decrease the timer
; ----------------------------------------------------------------------------------
.decreasetime
    lda #DigitsColour                                                 ; 269d: a9 08       ..
    sta spritecolour                                                  ; 269f: 85 7f       ..
    lda stalltime                                                     ; 26a1: a5 1c       ..
    beq dodecreasetime                                                ; 26a3: f0 03       ..
    dec stalltime                                                     ; 26a5: c6 1c       ..
    rts                                                               ; 26a7: 60          `

.dodecreasetime
    ldx #2                                                            ; 26a8: a2 02       ..
    stx temp1                                                         ; 26aa: 86 88       ..
.decreasetimeloop
    jsr showtimedigit                                                 ; 26ac: 20 02 27     .'
    ldx temp1                                                         ; 26af: a6 88       ..
    dec time,x                                                        ; 26b1: d6 1d       ..
    php                                                               ; 26b3: 08          .
    bpl timenocarry                                                   ; 26b4: 10 04       ..
    lda #9                                                            ; 26b6: a9 09       ..
    sta time,x                                                        ; 26b8: 95 1d       ..
.timenocarry
    jsr showtimedigit                                                 ; 26ba: 20 02 27     .'
    dec temp1                                                         ; 26bd: c6 88       ..
    plp                                                               ; 26bf: 28          (
    bmi decreasetimeloop                                              ; 26c0: 30 ea       0.
    clc                                                               ; 26c2: 18          .
    lda time                                                          ; 26c3: a5 1d       ..
    adc time + 1                                                      ; 26c5: 65 1e       e.
    adc time + 2                                                      ; 26c7: 65 1f       e.
    bne timenotzero                                                   ; 26c9: d0 03       ..
    inc playerdieflag                                                 ; 26cb: e6 4f       .O
    rts                                                               ; 26cd: 60          `

.timenotzero
    lda time + 2                                                      ; 26ce: a5 1f       ..
    beq decreasebonus                                                 ; 26d0: f0 05       ..
    cmp #5                                                            ; 26d2: c9 05       ..
    beq decreasebonus                                                 ; 26d4: f0 01       ..
    rts                                                               ; 26d6: 60          `

.decreasebonus
    lda bonusexpiredflag                                              ; 26d7: a5 3d       .=
    beq dodecreasebonus                                               ; 26d9: f0 01       ..
    rts                                                               ; 26db: 60          `

.dodecreasebonus
    ldx #2                                                            ; 26dc: a2 02       ..
    stx temp1                                                         ; 26de: 86 88       ..
.decreasebonusloop
    jsr showbonusdigit                                                ; 26e0: 20 15 27     .'
    ldx temp1                                                         ; 26e3: a6 88       ..
    dec bonus,x                                                       ; 26e5: d6 3a       .:
    php                                                               ; 26e7: 08          .
    bpl bonusnocarry                                                  ; 26e8: 10 04       ..
    lda #9                                                            ; 26ea: a9 09       ..
    sta bonus,x                                                       ; 26ec: 95 3a       .:
.bonusnocarry
    jsr showbonusdigit                                                ; 26ee: 20 15 27     .'
    dec temp1                                                         ; 26f1: c6 88       ..
    plp                                                               ; 26f3: 28          (
    bmi decreasebonusloop                                             ; 26f4: 30 ea       0.
    clc                                                               ; 26f6: 18          .
    lda bonus                                                         ; 26f7: a5 3a       .:
    adc bonus + 1                                                     ; 26f9: 65 3b       e;
    adc bonus + 2                                                     ; 26fb: 65 3c       e<
    bne exitdecreasebonus                                             ; 26fd: d0 02       ..
    inc bonusexpiredflag                                              ; 26ff: e6 3d       .=
.exitdecreasebonus
    rts                                                               ; 2701: 60          `

; ----------------------------------------------------------------------------------
; Show a digit of the time remaining (temp1 = which digit)
; ----------------------------------------------------------------------------------
.showtimedigit
    lda temp1                                                         ; 2702: a5 88       ..
    tay                                                               ; 2704: a8          .
    asl a                                                             ; 2705: 0a          .
    asl a                                                             ; 2706: 0a          .
    adc temp1                                                         ; 2707: 65 88       e.
    adc #&91                                                          ; 2709: 69 91       i.
    tax                                                               ; 270b: aa          .
    lda time,y                                                        ; 270c: b9 1d 00    ...
    ldy #&e7                                                          ; 270f: a0 e7       ..
    jsr displaydigit                                                  ; 2711: 20 01 1b     ..
    rts                                                               ; 2714: 60          `

; ----------------------------------------------------------------------------------
; Show a digit of the bonus (temp1 = which digit)
; ----------------------------------------------------------------------------------
.showbonusdigit
    lda temp1                                                         ; 2715: a5 88       ..
    tay                                                               ; 2717: a8          .
    asl a                                                             ; 2718: 0a          .
    asl a                                                             ; 2719: 0a          .
    adc temp1                                                         ; 271a: 65 88       e.
    adc #&66                                                          ; 271c: 69 66       if
    tax                                                               ; 271e: aa          .
    lda bonus,y                                                       ; 271f: b9 3a 00    .:.
    ldy #&e7                                                          ; 2722: a0 e7       ..
    jsr displaydigit                                                  ; 2724: 20 01 1b     ..
    rts                                                               ; 2727: 60          `

; ----------------------------------------------------------------------------------
; Collision detection routines
; ----------------------------------------------------------------------------------
.checkcollisions
    lda numbirds                                                      ; 2728: a5 57       .W
    beq checkcollisionbigbird                                         ; 272a: f0 2c       .,
    lda #0                                                            ; 272c: a9 00       ..
    sta temp3                                                         ; 272e: 85 8a       ..
.checkcollisionbirdloop
    ldx temp3                                                         ; 2730: a6 8a       ..
    lda birddata,x                                                    ; 2732: bd 00 04    ...
    sec                                                               ; 2735: 38          8
    sbc playerx                                                       ; 2736: e5 40       .@
    clc                                                               ; 2738: 18          .
    adc #5                                                            ; 2739: 69 05       i.
    cmp #&0b                                                          ; 273b: c9 0b       ..
    bcs birdnotcollided                                               ; 273d: b0 11       ..
    lda birdpixely,x                                                  ; 273f: bd 05 04    ...
    sec                                                               ; 2742: 38          8
    sbc #1                                                            ; 2743: e9 01       ..
    sbc playery                                                       ; 2745: e5 41       .A
    clc                                                               ; 2747: 18          .
    adc #&0e                                                          ; 2748: 69 0e       i.
    cmp #&1d                                                          ; 274a: c9 1d       ..
    bcs birdnotcollided                                               ; 274c: b0 02       ..
    inc playerdieflag                                                 ; 274e: e6 4f       .O
.birdnotcollided
    inc temp3                                                         ; 2750: e6 8a       ..
    lda temp3                                                         ; 2752: a5 8a       ..
    cmp numbirds                                                      ; 2754: c5 57       .W
    bcc checkcollisionbirdloop                                        ; 2756: 90 d8       ..
.checkcollisionbigbird
    lda bigbirdflag                                                   ; 2758: a5 35       .5
    beq exitcheckcollisions                                           ; 275a: f0 1f       ..
    lda bigbirdxpos                                                   ; 275c: a5 30       .0
    clc                                                               ; 275e: 18          .
    adc #4                                                            ; 275f: 69 04       i.
    sec                                                               ; 2761: 38          8
    sbc playerx                                                       ; 2762: e5 40       .@
    clc                                                               ; 2764: 18          .
    adc #5                                                            ; 2765: 69 05       i.
    cmp #&0b                                                          ; 2767: c9 0b       ..
    bcs exitcheckcollisions                                           ; 2769: b0 10       ..
    lda bigbirdypos                                                   ; 276b: a5 31       .1
    sec                                                               ; 276d: 38          8
    sbc #5                                                            ; 276e: e9 05       ..
    sbc playery                                                       ; 2770: e5 41       .A
    clc                                                               ; 2772: 18          .
    adc #&0e                                                          ; 2773: 69 0e       i.
    cmp #&1d                                                          ; 2775: c9 1d       ..
    bcs exitcheckcollisions                                           ; 2777: b0 02       ..
    inc playerdieflag                                                 ; 2779: e6 4f       .O
.exitcheckcollisions
    rts                                                               ; 277b: 60          `

; ----------------------------------------------------------------------------------
; High score routines - find high score entry X
; Address returned in (hiscoreaddr)
; ----------------------------------------------------------------------------------
.gethiscoreaddr
    lda #0                                                            ; 277c: a9 00       ..
    sta read + 1                                                      ; 277e: 85 77       .w
    dex                                                               ; 2780: ca          .
    txa                                                               ; 2781: 8a          .
    asl a                                                             ; 2782: 0a          .
    asl a                                                             ; 2783: 0a          .
    asl a                                                             ; 2784: 0a          .
    rol read + 1                                                      ; 2785: 26 77       &w
    asl a                                                             ; 2787: 0a          .
    rol read + 1                                                      ; 2788: 26 77       &w
    clc                                                               ; 278a: 18          .
    adc #<hiscoretab                                                  ; 278b: 69 30       i0
    sta read                                                          ; 278d: 85 76       .v
    lda read + 1                                                      ; 278f: a5 77       .w
    adc #>hiscoretab                                                  ; 2791: 69 04       i.
    sta read + 1                                                      ; 2793: 85 77       .w
    rts                                                               ; 2795: 60          `

; ----------------------------------------------------------------------------------
; Reset all hiscores to 1000 "A&F"
; ----------------------------------------------------------------------------------
.resethiscoretab
    lda #&0a                                                          ; 2796: a9 0a       ..
    sta temp3                                                         ; 2798: 85 8a       ..
.resethiscoretabloop
    ldx temp3                                                         ; 279a: a6 8a       ..
    jsr gethiscoreaddr                                                ; 279c: 20 7c 27     |'
    ldy #&0f                                                          ; 279f: a0 0f       ..
    lda #' '                                                          ; 27a1: a9 20       .
.clearhiscorenameloop
    sta (read),y                                                      ; 27a3: 91 76       .v
    dey                                                               ; 27a5: 88          .
    cpy #&0a                                                          ; 27a6: c0 0a       ..
    bne clearhiscorenameloop                                          ; 27a8: d0 f9       ..
    lda #'F'                                                          ; 27aa: a9 46       .F
    sta (read),y                                                      ; 27ac: 91 76       .v
    dey                                                               ; 27ae: 88          .
    lda #'&'                                                          ; 27af: a9 26       .&
    sta (read),y                                                      ; 27b1: 91 76       .v
    dey                                                               ; 27b3: 88          .
    lda #'A'                                                          ; 27b4: a9 41       .A
    sta (read),y                                                      ; 27b6: 91 76       .v
    dey                                                               ; 27b8: 88          .
    lda #0                                                            ; 27b9: a9 00       ..
.clearhiscoreloop
    sta (read),y                                                      ; 27bb: 91 76       .v
    dey                                                               ; 27bd: 88          .
    bpl clearhiscoreloop                                              ; 27be: 10 fb       ..
    lda #1                                                            ; 27c0: a9 01       ..
    ldy #4                                                            ; 27c2: a0 04       ..
    sta (read),y                                                      ; 27c4: 91 76       .v
    dec temp3                                                         ; 27c6: c6 8a       ..
    bne resethiscoretabloop                                           ; 27c8: d0 d0       ..
    rts                                                               ; 27ca: 60          `

; ----------------------------------------------------------------------------------
; Check if we have a new high score, and insert it into the correct place
; in the high score table
; ----------------------------------------------------------------------------------
.checknewhiscore
    lda #1                                                            ; 27cb: a9 01       ..
    sta temp3                                                         ; 27cd: 85 8a       ..
.checknewhiscoreloop
    ldx temp3                                                         ; 27cf: a6 8a       ..
    jsr gethiscoreaddr                                                ; 27d1: 20 7c 27     |'
    ldy #0                                                            ; 27d4: a0 00       ..
.comparescoreloop
    lda (read),y                                                      ; 27d6: b1 76       .v
    cmp score,y                                                       ; 27d8: d9 28 00    .(.
    bmi inserthiscore                                                 ; 27db: 30 10       0.
    bne checknexthiscore                                              ; 27dd: d0 05       ..
    iny                                                               ; 27df: c8          .
    cpy #8                                                            ; 27e0: c0 08       ..
    bne comparescoreloop                                              ; 27e2: d0 f2       ..
.checknexthiscore
    inc temp3                                                         ; 27e4: e6 8a       ..
    lda temp3                                                         ; 27e6: a5 8a       ..
    cmp #&0b                                                          ; 27e8: c9 0b       ..
    bcc checknewhiscoreloop                                           ; 27ea: 90 e3       ..
    rts                                                               ; 27ec: 60          `

.inserthiscore
    jsr shufflehiscores                                               ; 27ed: 20 06 28     .(
    ldy #7                                                            ; 27f0: a0 07       ..
.inserthiscoreloop
    lda score,y                                                       ; 27f2: b9 28 00    .(.
    sta (read),y                                                      ; 27f5: 91 76       .v
    dey                                                               ; 27f7: 88          .
    bpl inserthiscoreloop                                             ; 27f8: 10 f8       ..
    ldy #&0f                                                          ; 27fa: a0 0f       ..
    lda #' '                                                          ; 27fc: a9 20       .
.insertblanknameloop
    sta (read),y                                                      ; 27fe: 91 76       .v
    dey                                                               ; 2800: 88          .
    cpy #7                                                            ; 2801: c0 07       ..
    bne insertblanknameloop                                           ; 2803: d0 f9       ..
    rts                                                               ; 2805: 60          `

; ----------------------------------------------------------------------------------
; Shuffle high scores down from entry temp3 to make gap
; ----------------------------------------------------------------------------------
.shufflehiscores
    lda #9                                                            ; 2806: a9 09       ..
    sta temp4                                                         ; 2808: 85 8b       ..
.shuffleloop
    ldx temp4                                                         ; 280a: a6 8b       ..
    cpx temp3                                                         ; 280c: e4 8a       ..
    bcc shuffled                                                      ; 280e: 90 22       ."
    jsr gethiscoreaddr                                                ; 2810: 20 7c 27     |'
    ldy #&0f                                                          ; 2813: a0 0f       ..
.readhiscoreloop
    lda (read),y                                                      ; 2815: b1 76       .v
    sta bigbirdxpos,y                                                 ; 2817: 99 30 00    .0.
    dey                                                               ; 281a: 88          .
    bpl readhiscoreloop                                               ; 281b: 10 f8       ..
    ldx temp4                                                         ; 281d: a6 8b       ..
    inx                                                               ; 281f: e8          .
    jsr gethiscoreaddr                                                ; 2820: 20 7c 27     |'
    ldy #&0f                                                          ; 2823: a0 0f       ..
.writehiscoreloop
    lda bigbirdxpos,y                                                 ; 2825: b9 30 00    .0.
    sta (read),y                                                      ; 2828: 91 76       .v
    dey                                                               ; 282a: 88          .
    bpl writehiscoreloop                                              ; 282b: 10 f8       ..
    dec temp4                                                         ; 282d: c6 8b       ..
    jmp shuffleloop                                                   ; 282f: 4c 0a 28    L.(

.shuffled
    ldx temp3                                                         ; 2832: a6 8a       ..
    jsr gethiscoreaddr                                                ; 2834: 20 7c 27     |'
    rts                                                               ; 2837: 60          `

; ----------------------------------------------------------------------------------
; Show high scores
; ----------------------------------------------------------------------------------
.showhiscores
    lda #1                                                            ; 2838: a9 01       ..
    sta temp3                                                         ; 283a: 85 8a       ..
    ldx #<string_highscores                                           ; 283c: a2 3f       .?
    ldy #>string_highscores                                           ; 283e: a0 29       .)
    jsr printstring                                                   ; 2840: 20 26 1a     &.
    lda #&c0                                                          ; 2843: a9 c0       ..
    sta hiscoreypos                                                   ; 2845: 8d 5c 29    .\)
    lda #2                                                            ; 2848: a9 02       ..
    sta hiscoreypos + 1                                               ; 284a: 8d 5d 29    .])
.showhiscoresloop
    ldx #<string_hiscorepos                                           ; 284d: a2 57       .W
    ldy #>string_hiscorepos                                           ; 284f: a0 29       .)
    jsr printstring                                                   ; 2851: 20 26 1a     &.
    lda #' '                                                          ; 2854: a9 20       .
    ldx temp3                                                         ; 2856: a6 8a       ..
    stx temp4                                                         ; 2858: 86 8b       ..
    cpx #&0a                                                          ; 285a: e0 0a       ..
    bne nothiscore10                                                  ; 285c: d0 06       ..
    lda #'1'                                                          ; 285e: a9 31       .1
    ldx #0                                                            ; 2860: a2 00       ..
    stx temp4                                                         ; 2862: 86 8b       ..
.nothiscore10
    jsr oswrch                                                        ; 2864: 20 ee ff     ..            ; Write character 49
    lda temp4                                                         ; 2867: a5 8b       ..
    clc                                                               ; 2869: 18          .
    adc #'0'                                                          ; 286a: 69 30       i0
    jsr oswrch                                                        ; 286c: 20 ee ff     ..            ; Write character
    ldx temp3                                                         ; 286f: a6 8a       ..
    jsr gethiscoreaddr                                                ; 2871: 20 7c 27     |'
    ldy #0                                                            ; 2874: a0 00       ..
    sty temp4                                                         ; 2876: 84 8b       ..
.hiscoredigitsloop
    lda (read),y                                                      ; 2878: b1 76       .v
    bne printhighscoredigit                                           ; 287a: d0 09       ..
    ldx temp4                                                         ; 287c: a6 8b       ..
    bne printhighscoredigit                                           ; 287e: d0 05       ..
    lda #' '                                                          ; 2880: a9 20       .
    jmp printhighscorechar                                            ; 2882: 4c 8a 28    L.(

.printhighscoredigit
    clc                                                               ; 2885: 18          .
    adc #'0'                                                          ; 2886: 69 30       i0
    inc temp4                                                         ; 2888: e6 8b       ..
.printhighscorechar
    jsr oswrch                                                        ; 288a: 20 ee ff     ..            ; Write character
    iny                                                               ; 288d: c8          .
    cpy #8                                                            ; 288e: c0 08       ..
    bcc hiscoredigitsloop                                             ; 2890: 90 e6       ..
    lda #' '                                                          ; 2892: a9 20       .
    jsr oswrch                                                        ; 2894: 20 ee ff     ..            ; Write character 32
.hiscorenameloop
    lda (read),y                                                      ; 2897: b1 76       .v
    jsr oswrch                                                        ; 2899: 20 ee ff     ..            ; Write character
    iny                                                               ; 289c: c8          .
    cpy #&10                                                          ; 289d: c0 10       ..
    bcc hiscorenameloop                                               ; 289f: 90 f6       ..
    inc temp3                                                         ; 28a1: e6 8a       ..
    lda temp3                                                         ; 28a3: a5 8a       ..
    cmp #&0b                                                          ; 28a5: c9 0b       ..
    beq showhiscoresend                                               ; 28a7: f0 14       ..
    lda hiscoreypos                                                   ; 28a9: ad 5c 29    .\)
    sec                                                               ; 28ac: 38          8
    sbc #&30                                                          ; 28ad: e9 30       .0
    sta hiscoreypos                                                   ; 28af: 8d 5c 29    .\)
    lda hiscoreypos + 1                                               ; 28b2: ad 5d 29    .])
    sbc #0                                                            ; 28b5: e9 00       ..
    sta hiscoreypos + 1                                               ; 28b7: 8d 5d 29    .])
    jmp showhiscoresloop                                              ; 28ba: 4c 4d 28    LM(

.showhiscoresend
    rts                                                               ; 28bd: 60          `

; ----------------------------------------------------------------------------------
; Enter player's score into high score table if required
; ----------------------------------------------------------------------------------
.updatehiscoretab
    jsr checknewhiscore                                               ; 28be: 20 cb 27     .'
    lda temp3                                                         ; 28c1: a5 8a       ..
    cmp #&0b                                                          ; 28c3: c9 0b       ..
    bne gethiscorename                                                ; 28c5: d0 01       ..
    rts                                                               ; 28c7: 60          `

.gethiscorename
    sta temp1                                                         ; 28c8: 85 88       ..
    lda #&c0                                                          ; 28ca: a9 c0       ..
    sta promptypos                                                    ; 28cc: 8d 66 29    .f)
    lda #2                                                            ; 28cf: a9 02       ..
    sta promptypos + 1                                                ; 28d1: 8d 67 29    .g)
    lda temp1                                                         ; 28d4: a5 88       ..
    sec                                                               ; 28d6: 38          8
    sbc #1                                                            ; 28d7: e9 01       ..
    beq promptpositioned                                              ; 28d9: f0 15       ..
    tax                                                               ; 28db: aa          .
.positionpromptloop
    lda promptypos                                                    ; 28dc: ad 66 29    .f)
    sec                                                               ; 28df: 38          8
    sbc #&30                                                          ; 28e0: e9 30       .0
    sta promptypos                                                    ; 28e2: 8d 66 29    .f)
    lda promptypos + 1                                                ; 28e5: ad 67 29    .g)
    sbc #0                                                            ; 28e8: e9 00       ..
    sta promptypos + 1                                                ; 28ea: 8d 67 29    .g)
    dex                                                               ; 28ed: ca          .
    bne positionpromptloop                                            ; 28ee: d0 ec       ..
.promptpositioned
    ldx #<string_enteryourname                                        ; 28f0: a2 69       .i
    ldy #>string_enteryourname                                        ; 28f2: a0 29       .)
    jsr printstring                                                   ; 28f4: 20 26 1a     &.
    lda playernum                                                     ; 28f7: a5 5d       .]
    clc                                                               ; 28f9: 18          .
    adc #&31                                                          ; 28fa: 69 31       i1
    jsr oswrch                                                        ; 28fc: 20 ee ff     ..            ; Write character
    jsr showhiscores                                                  ; 28ff: 20 38 28     8(
    ldx #<string_hiscoreprompt                                        ; 2902: a2 5e       .^
    ldy #>string_hiscoreprompt                                        ; 2904: a0 29       .)
    jsr printstring                                                   ; 2906: 20 26 1a     &.
    lda #osbyte_set_cursor_editing                                    ; 2909: a9 04       ..
    ldx #1                                                            ; 290b: a2 01       ..
    jsr osbyte                                                        ; 290d: 20 f4 ff     ..            ; Disable cursor editing (edit keys give ASCII 135-139) (X=1)
    lda #osbyte_flush_buffer_class                                    ; 2910: a9 0f       ..
    ldx #1                                                            ; 2912: a2 01       ..
    jsr osbyte                                                        ; 2914: 20 f4 ff     ..            ; Flush input buffers (X non-zero)
    lda #osbyte_read_write_escape_status                              ; 2917: a9 e5       ..
    ldx #1                                                            ; 2919: a2 01       ..
    ldy #0                                                            ; 291b: a0 00       ..
    jsr osbyte                                                        ; 291d: 20 f4 ff     ..            ; Set ESCAPE key to produce ASCII code 1
    ldx #<osword0block                                                ; 2920: a2 9d       ..
    ldy #>osword0block                                                ; 2922: a0 29       .)
    lda #osword_read_line                                             ; 2924: a9 00       ..
    jsr osword                                                        ; 2926: 20 f1 ff     ..            ; Read line from input stream (exits with C=1 if ESCAPE pressed)
    ldx temp1                                                         ; 2929: a6 88       ..
    jsr gethiscoreaddr                                                ; 292b: 20 7c 27     |'
    ldy #8                                                            ; 292e: a0 08       ..
.copynewhiscorenameloop
    lda hiscorenamebuffer-8,y                                         ; 2930: b9 9a 29    ..)
    cmp #&0d                                                          ; 2933: c9 0d       ..
    beq exitgethiscorename                                            ; 2935: f0 07       ..
    sta (read),y                                                      ; 2937: 91 76       .v
    iny                                                               ; 2939: c8          .
    cpy #&10                                                          ; 293a: c0 10       ..
    bcc copynewhiscorenameloop                                        ; 293c: 90 f2       ..
.exitgethiscorename
    rts                                                               ; 293e: 60          `

; ----------------------------------------------------------------------------------
; High score related strings
; ----------------------------------------------------------------------------------
.string_highscores
    equb string_highscores_end - string_highscores_start              ; 293f: 17          .
.string_highscores_start
    equb 18,  0,  1, 25,  4, 32,  1, 32,  3                           ; 2940: 12 00 01... ...
    equs "HIGH SCORES"                                                ; 2949: 48 49 47... HIG
    equb 18,  0,  3                                                   ; 2954: 12 00 03    ...
.string_highscores_end
.string_hiscorepos
    equb string_hiscorepos_end - string_hiscorepos_start              ; 2957: 06          .
.string_hiscorepos_start
    equb 25,  4, 32,  0                                               ; 2958: 19 04 20... ..
.hiscoreypos
    equb 0                                                            ; 295c: 00          .
    equb 0                                                            ; 295d: 00          .
.string_hiscorepos_end
.string_hiscoreprompt
    equb string_hiscoreprompt_end - string_hiscoreprompt_start        ; 295e: 0a          .
.string_hiscoreprompt_start
    equb  18,   0,   1,  25,   4, 160,   2                            ; 295f: 12 00 01... ...
.promptypos
    equb 0                                                            ; 2966: 00          .
    equb  0, 62                                                       ; 2967: 00 3e       .>
.string_hiscoreprompt_end
.string_enteryourname
    equb string_enteryourname_end - string_enteryourname_start        ; 2969: 33          3
.string_enteryourname_start
    equb  24,   0,   0,   0,   0, 255,   4, 124,   3,  16,  26,  18   ; 296a: 18 00 00... ...
    equb   0,   1,  25,   4, 160,   0, 160,   0                       ; 2976: 00 01 19... ...
    equs "ENTER YOUR NAME"                                            ; 297e: 45 4e 54... ENT
    equb  25,   4, 128,   1, 100,   0,  18,   0,   2                  ; 298d: 19 04 80... ...
    equs "Play"                                                       ; 2996: 50 6c 61... Pla
    equs "er "                                                        ; 299a: 65 72 20    er
.string_enteryourname_end
.osword0block
    equw hiscorenamebuffer                                            ; 299d: a2 29       .)             ; Buffer address for input (2 bytes)
    equb hiscorenamebuffer_end - hiscorenamebuffer - 1                ; 299f: 08          .              ; Maximum line length
    equb &20                                                          ; 29a0: 20                         ; Min. acceptable character value
    equb &7f                                                          ; 29a1: 7f          .              ; Max. acceptable character value
.hiscorenamebuffer
    equb 0, 0, 0, 0, 0, 0, 0, 0, 0                                    ; 29a2: 00 00 00... ...

; ----------------------------------------------------------------------------------
; Entry point (only entered once at beginning of game)
; ----------------------------------------------------------------------------------
.hiscorenamebuffer_end
.entrypoint
    jsr string_playerN_end                                            ; 29ab: 20 d7 2a     .*
; ----------------------------------------------------------------------------------
; Beginning of the game lifecycle - the title page
; ----------------------------------------------------------------------------------
.start
    jsr titlepage                                                     ; 29ae: 20 6f 2c     o,
    jsr choosenumplayers                                              ; 29b1: 20 8d 2b     .+
; ----------------------------------------------------------------------------------
; Player starting their turn
; ----------------------------------------------------------------------------------
.restartplayer
    ldx #<string_getready                                             ; 29b4: a2 b2       ..
    ldy #>string_getready                                             ; 29b6: a0 2a       .*
    jsr printstring                                                   ; 29b8: 20 26 1a     &.
    ldx #<string_playerN                                              ; 29bb: a2 c9       ..
    ldy #>string_playerN                                              ; 29bd: a0 2a       .*
    jsr printstring                                                   ; 29bf: 20 26 1a     &.
    lda playernum                                                     ; 29c2: a5 5d       .]
    clc                                                               ; 29c4: 18          .
    adc #&31                                                          ; 29c5: 69 31       i1
    jsr oswrch                                                        ; 29c7: 20 ee ff     ..            ; Write character
    lda #&14                                                          ; 29ca: a9 14       ..
    jsr string_howmanyplayers_end                                     ; 29cc: 20 5e 2c     ^,
; ----------------------------------------------------------------------------------
; Start a new level
; ----------------------------------------------------------------------------------
.startnewlevel
    jsr initlevel                                                     ; 29cf: 20 ca 2d     .-
    jsr initmap                                                       ; 29d2: 20 33 1b     3.
    jsr initcharacters                                                ; 29d5: 20 9c 2e     ..
    lda #osbyte_clear_escape                                          ; 29d8: a9 7c       .|
    jsr osbyte                                                        ; 29da: 20 f4 ff     ..            ; Clear escape condition
; ----------------------------------------------------------------------------------
; Main loop
; ----------------------------------------------------------------------------------
.mainloop
    jsr handlekeyboard                                                ; 29dd: 20 3b 1a     ;.
    jsr handleplayercontrols                                          ; 29e0: 20 63 1e     c.
    jsr string_holdabort_end                                          ; 29e3: 20 38 0c     8.
    jsr movelift                                                      ; 29e6: 20 74 23     t#
    jsr updatebirds                                                   ; 29e9: 20 07 24     .$
    jsr checkextralife                                                ; 29ec: 20 53 2f     S/
    jsr checkcollisions                                               ; 29ef: 20 28 27     ('
    jsr framedelay                                                    ; 29f2: 20 10 1b     ..
    lda playerdieflag                                                 ; 29f5: a5 4f       .O
    bne playerdead                                                    ; 29f7: d0 45       .E
    lda playery                                                       ; 29f9: a5 41       .A
    cmp #&11                                                          ; 29fb: c9 11       ..
    bcc playerdead                                                    ; 29fd: 90 3f       .?
    lda numeggsleft                                                   ; 29ff: a5 39       .9
    beq levelcomplete                                                 ; 2a01: f0 07       ..
    lda keys                                                          ; 2a03: a5 60       .`
    bmi start                                                         ; 2a05: 30 a7       0.
    jmp mainloop                                                      ; 2a07: 4c dd 29    L.)

; ----------------------------------------------------------------------------------
; Comes here when screen is completed
; ----------------------------------------------------------------------------------
.levelcomplete
    lda bonusexpiredflag                                              ; 2a0a: a5 3d       .=
    bne nobonustoaward                                                ; 2a0c: d0 22       ."
.awardbonusloop
    lda #1                                                            ; 2a0e: a9 01       ..
    ldx #6                                                            ; 2a10: a2 06       ..
    jsr addscore                                                      ; 2a12: 20 b5 1a     ..
    jsr dodecreasebonus                                               ; 2a15: 20 dc 26     .&
    jsr checkextralife                                                ; 2a18: 20 53 2f     S/
    lda bonus + 2                                                     ; 2a1b: a5 3c       .<
    beq playbonussound                                                ; 2a1d: f0 04       ..
    cmp #5                                                            ; 2a1f: c9 05       ..
    bne dontplaybonussound                                            ; 2a21: d0 09       ..
.playbonussound
    ldx #<(bonussoundblock)                                           ; 2a23: a2 b0       ..
    ldy #>(bonussoundblock)                                           ; 2a25: a0 0c       ..
    lda #osword_sound                                                 ; 2a27: a9 07       ..
    jsr osword                                                        ; 2a29: 20 f1 ff     ..            ; SOUND command
.dontplaybonussound
    lda bonusexpiredflag                                              ; 2a2c: a5 3d       .=
    beq awardbonusloop                                                ; 2a2e: f0 de       ..
.nobonustoaward
    inc level                                                         ; 2a30: e6 50       .P
    jsr saveplayerdata                                                ; 2a32: 20 75 2e     u.
    jsr initplayerleveldata                                           ; 2a35: 20 08 2e     ..
    jsr restoreplayerdata                                             ; 2a38: 20 37 2e     7.
    jmp startnewlevel                                                 ; 2a3b: 4c cf 29    L.)

; ----------------------------------------------------------------------------------
; Comes here when player dies
; ----------------------------------------------------------------------------------
.playerdead
    jsr saveplayerdata                                                ; 2a3e: 20 75 2e     u.
    ldx #<deathtunedata                                               ; 2a41: a2 b0       ..
    ldy #>deathtunedata                                               ; 2a43: a0 2f       ./
    jsr playdeathtune                                                 ; 2a45: 20 86 2f     ./
    ldx playernum                                                     ; 2a48: a6 5d       .]
    dec lives,x                                                       ; 2a4a: d6 20       .
    bne nextplayersturn                                               ; 2a4c: d0 2c       .,
    ldx #<string_gameover                                             ; 2a4e: a2 94       ..
    ldy #>string_gameover                                             ; 2a50: a0 2a       .*
    jsr printstring                                                   ; 2a52: 20 26 1a     &.
    ldx #<string_playerN                                              ; 2a55: a2 c9       ..
    ldy #>string_playerN                                              ; 2a57: a0 2a       .*
    jsr printstring                                                   ; 2a59: 20 26 1a     &.
    lda playernum                                                     ; 2a5c: a5 5d       .]
    clc                                                               ; 2a5e: 18          .
    adc #&31                                                          ; 2a5f: 69 31       i1
    jsr oswrch                                                        ; 2a61: 20 ee ff     ..            ; Write character
    lda #&0a                                                          ; 2a64: a9 0a       ..
    jsr string_howmanyplayers_end                                     ; 2a66: 20 5e 2c     ^,
    lda #osbyte_clear_escape                                          ; 2a69: a9 7c       .|
    jsr osbyte                                                        ; 2a6b: 20 f4 ff     ..            ; Clear escape condition
    jsr updatehiscoretab                                              ; 2a6e: 20 be 28     .(
    lda #5                                                            ; 2a71: a9 05       ..
    jsr string_howmanyplayers_end                                     ; 2a73: 20 5e 2c     ^,
    dec numaliveplayers                                               ; 2a76: c6 5f       ._
    beq allplayersdead                                                ; 2a78: f0 17       ..
; ----------------------------------------------------------------------------------
; Move to next player
; ----------------------------------------------------------------------------------
.nextplayersturn
    ldx playernum                                                     ; 2a7a: a6 5d       .]
    inx                                                               ; 2a7c: e8          .
    txa                                                               ; 2a7d: 8a          .
    and #3                                                            ; 2a7e: 29 03       ).
    sta playernum                                                     ; 2a80: 85 5d       .]
    cmp numplayers                                                    ; 2a82: c5 5e       .^
    bcs nextplayersturn                                               ; 2a84: b0 f4       ..
    tax                                                               ; 2a86: aa          .
    lda lives,x                                                       ; 2a87: b5 20       .
    beq nextplayersturn                                               ; 2a89: f0 ef       ..
    jsr restoreplayerdata                                             ; 2a8b: 20 37 2e     7.
    jmp restartplayer                                                 ; 2a8e: 4c b4 29    L.)

; ----------------------------------------------------------------------------------
; Everyone is dead; return to the very beginning of the gameflow
; ----------------------------------------------------------------------------------
.allplayersdead
    jmp start                                                         ; 2a91: 4c ae 29    L.)

; ----------------------------------------------------------------------------------
; Gameflow related strings
; ----------------------------------------------------------------------------------
.string_gameover
    equb &1d                                                          ; 2a94: 1d          .
.string_gameover_start
    equb &18,   0,   1, &50,   1,   0,   4, &14,   2, &10, &1a, &19   ; 2a95: 18 00 01... ...
    equb   4, &60,   1, &f4,   1, &12,   0,   8                       ; 2aa1: 04 60 01... .`.
    equs "GAME OVER"                                                  ; 2aa9: 47 41 4d... GAM
.string_gameover_end
.string_getready
    equb &16                                                          ; 2ab2: 16          .
.string_getready_start
    equb &10, &19,   4, &60,   1, &f4,   1, &12,   0,   4             ; 2ab3: 10 19 04... ...
    equs "Get Ready"                                                  ; 2abd: 47 65 74... Get
    equb &12,   0,   8                                                ; 2ac6: 12 00 08    ...
.string_getready_end
.string_playerN
    equb &0d                                                          ; 2ac9: 0d          .
.string_playerN_start
    equb &19,   4, &80,   1, &90,   1                                 ; 2aca: 19 04 80... ...
    equs "Player "                                                    ; 2ad0: 50 6c 61... Pla

; ----------------------------------------------------------------------------------
; One-time initialisation, e.g. copy code to low memory, set screen mode, etc
; This has to change location eventually
; ----------------------------------------------------------------------------------
.string_playerN_end
.initialise
    lda #osbyte_tape                                                  ; 2ad7: a9 8c       ..
    ldx #12                                                           ; 2ad9: a2 0c       ..
    ldy #0                                                            ; 2adb: a0 00       ..
    jsr osbyte                                                        ; 2add: 20 f4 ff     ..            ; Select TAPE filing system at 1200 baud (X=12)
    ldx #0                                                            ; 2ae0: a2 00       ..
.copyloop
    lda codemain_end,x                                                ; 2ae2: bd 00 30    ..0
    sta showkeys,x                                                    ; 2ae5: 9d 00 09    ...
    lda codemain_end+256,x                                            ; 2ae8: bd 00 31    ..1
    sta showkeys+$0100,x                                              ; 2aeb: 9d 00 0a    ...
    lda codemain_end+512,x                                            ; 2aee: bd 00 32    ..2
    sta showkeys+$0200,x                                              ; 2af1: 9d 00 0b    ...
    lda codemain_end+768,x                                            ; 2af4: bd 00 33    ..3
    sta showkeys+$0300,x                                              ; 2af7: 9d 00 0c    ...
    lda codemain_end+1024,x                                           ; 2afa: bd 00 34    ..4
    sta showkeys+$0400,x                                              ; 2afd: 9d 00 0d    ...
    lda codemain_end+1280,x                                           ; 2b00: bd 00 35    ..5
    sta showkeys+$0500,x                                              ; 2b03: 9d 00 0e    ...
    lda codemain_end+1536,x                                           ; 2b06: bd 00 36    ..6
    sta showkeys+$0600,x                                              ; 2b09: 9d 00 0f    ...
    lda codemain_end+1792,x                                           ; 2b0c: bd 00 37    ..7
    sta showkeys+$0700,x                                              ; 2b0f: 9d 00 10    ...
    dex                                                               ; 2b12: ca          .
    bne copyloop                                                      ; 2b13: d0 cd       ..
    lda #&16                                                          ; 2b15: a9 16       ..
    jsr oswrch                                                        ; 2b17: 20 ee ff     ..            ; Write character 22
    lda #2                                                            ; 2b1a: a9 02       ..
    jsr oswrch                                                        ; 2b1c: 20 ee ff     ..            ; Write character 2
    lda #5                                                            ; 2b1f: a9 05       ..
    jsr oswrch                                                        ; 2b21: 20 ee ff     ..            ; Write character 5
    lda #5                                                            ; 2b24: a9 05       ..
    jsr oswrch                                                        ; 2b26: 20 ee ff     ..            ; Write character 5
    lda #&9d                                                          ; 2b29: a9 9d       ..
    sta keynum_jump                                                   ; 2b2b: 85 65       .e
    lda #&be                                                          ; 2b2d: a9 be       ..
    sta keynum_up                                                     ; 2b2f: 85 64       .d
    lda #&9e                                                          ; 2b31: a9 9e       ..
    sta keynum_down                                                   ; 2b33: 85 63       .c
    lda #&99                                                          ; 2b35: a9 99       ..
    sta keynum_left                                                   ; 2b37: 85 62       .b
    lda #&98                                                          ; 2b39: a9 98       ..
    sta keynum_right                                                  ; 2b3b: 85 61       .a
    jsr resethiscoretab                                               ; 2b3d: 20 96 27     .'
    ldx #<(deathtune_end)                                             ; 2b40: a2 d1       ..
    ldy #>(deathtune_end)                                             ; 2b42: a0 2f       ./
    lda #osword_envelope                                              ; 2b44: a9 08       ..
    jsr osword                                                        ; 2b46: 20 f1 ff     ..            ; ENVELOPE command
    ldx #<(envelope2)                                                 ; 2b49: a2 df       ..
    ldy #>(envelope2)                                                 ; 2b4b: a0 2f       ./
    lda #osword_envelope                                              ; 2b4d: a9 08       ..
    jsr osword                                                        ; 2b4f: 20 f1 ff     ..            ; ENVELOPE command
    ldx #<(envelope3)                                                 ; 2b52: a2 ed       ..
    ldy #>(envelope3)                                                 ; 2b54: a0 2f       ./
    lda #osword_envelope                                              ; 2b56: a9 08       ..
    jsr osword                                                        ; 2b58: 20 f1 ff     ..            ; ENVELOPE command
    ldx #&0f                                                          ; 2b5b: a2 0f       ..
    stx temp1                                                         ; 2b5d: 86 88       ..
.initpalette
    ldx temp1                                                         ; 2b5f: a6 88       ..
    stx string_vdu19_start + 1                                        ; 2b61: 8e 78 2b    .x+
    lda string_vdu19_end,x                                            ; 2b64: bd 7d 2b    .}+
    sta string_vdu19_start + 2                                        ; 2b67: 8d 79 2b    .y+
    ldx #<string_vdu19                                                ; 2b6a: a2 76       .v
    ldy #>string_vdu19                                                ; 2b6c: a0 2b       .+
    jsr printstring                                                   ; 2b6e: 20 26 1a     &.
    dec temp1                                                         ; 2b71: c6 88       ..
    bpl initpalette                                                   ; 2b73: 10 ea       ..
    rts                                                               ; 2b75: 60          `

.string_vdu19
    equb 6                                                            ; 2b76: 06          .
.string_vdu19_start
    equb 19                                                           ; 2b77: 13          .
    equb 0                                                            ; 2b78: 00          .
    equb 0, 0, 0, 0                                                   ; 2b79: 00 00 00... ...
.string_vdu19_end
.palettedata
    equb 0, 3, 5, 2, 3, 3, 3, 3, 6, 6, 6, 6, 3, 3, 3, 3               ; 2b7d: 00 03 05... ...

; ----------------------------------------------------------------------------------
; Prompt for number of players
; ----------------------------------------------------------------------------------
.choosenumplayers
    ldx #<string_howmanyplayers                                       ; 2b8d: a2 44       .D
    ldy #>string_howmanyplayers                                       ; 2b8f: a0 2c       .,
    jsr printstring                                                   ; 2b91: 20 26 1a     &.
    lda #0                                                            ; 2b94: a9 00       ..
    sta temp4                                                         ; 2b96: 85 8b       ..
    lda #&64                                                          ; 2b98: a9 64       .d
    sta temp5                                                         ; 2b9a: 85 8c       ..
.inputnumplayers
    ldx #inkey_key_1                                                  ; 2b9c: a2 cf       ..             ; X=inkey key value
    ldy #&ff                                                          ; 2b9e: a0 ff       ..
    lda #osbyte_inkey                                                 ; 2ba0: a9 81       ..
    jsr osbyte                                                        ; 2ba2: 20 f4 ff     ..            ; Is the '1' key pressed?
    cpy #0                                                            ; 2ba5: c0 00       ..             ; X and Y contain &ff if the key is pressed
    beq not1player                                                    ; 2ba7: f0 05       ..
    lda #1                                                            ; 2ba9: a9 01       ..
    jmp startgame                                                     ; 2bab: 4c f1 2b    L.+

.not1player
    ldx #inkey_key_2                                                  ; 2bae: a2 ce       ..             ; X=inkey key value
    ldy #&ff                                                          ; 2bb0: a0 ff       ..
    lda #osbyte_inkey                                                 ; 2bb2: a9 81       ..
    jsr osbyte                                                        ; 2bb4: 20 f4 ff     ..            ; Is the '2' key pressed?
    cpy #0                                                            ; 2bb7: c0 00       ..             ; X and Y contain &ff if the key is pressed
    beq not2player                                                    ; 2bb9: f0 05       ..
    lda #2                                                            ; 2bbb: a9 02       ..
    jmp startgame                                                     ; 2bbd: 4c f1 2b    L.+

.not2player
    ldx #inkey_key_3                                                  ; 2bc0: a2 ee       ..             ; X=inkey key value
    ldy #&ff                                                          ; 2bc2: a0 ff       ..
    lda #osbyte_inkey                                                 ; 2bc4: a9 81       ..
    jsr osbyte                                                        ; 2bc6: 20 f4 ff     ..            ; Is the '3' key pressed?
    cpy #0                                                            ; 2bc9: c0 00       ..             ; X and Y contain &ff if the key is pressed
    beq not3player                                                    ; 2bcb: f0 05       ..
    lda #3                                                            ; 2bcd: a9 03       ..
    jmp startgame                                                     ; 2bcf: 4c f1 2b    L.+

.not3player
    ldx #inkey_key_4                                                  ; 2bd2: a2 ed       ..             ; X=inkey key value
    ldy #&ff                                                          ; 2bd4: a0 ff       ..
    lda #osbyte_inkey                                                 ; 2bd6: a9 81       ..
    jsr osbyte                                                        ; 2bd8: 20 f4 ff     ..            ; Is the '4' key pressed?
    cpy #0                                                            ; 2bdb: c0 00       ..             ; X and Y contain &ff if the key is pressed
    beq not4player                                                    ; 2bdd: f0 05       ..
    lda #4                                                            ; 2bdf: a9 04       ..
    jmp startgame                                                     ; 2be1: 4c f1 2b    L.+

.not4player
    dec temp4                                                         ; 2be4: c6 8b       ..
    bne inputnumplayers                                               ; 2be6: d0 b4       ..
    dec temp5                                                         ; 2be8: c6 8c       ..
    bne inputnumplayers                                               ; 2bea: d0 b0       ..
    pla                                                               ; 2bec: 68          h
    pla                                                               ; 2bed: 68          h
    jmp start                                                         ; 2bee: 4c ae 29    L.)

; ----------------------------------------------------------------------------------
; Start game; A = number of players
; ----------------------------------------------------------------------------------
.startgame
    sta numplayers                                                    ; 2bf1: 85 5e       .^
    sta numaliveplayers                                               ; 2bf3: 85 5f       ._
    clc                                                               ; 2bf5: 18          .
    adc #&30                                                          ; 2bf6: 69 30       i0
    jsr oswrch                                                        ; 2bf8: 20 ee ff     ..            ; Write character
    lda #5                                                            ; 2bfb: a9 05       ..
    jsr string_howmanyplayers_end                                     ; 2bfd: 20 5e 2c     ^,
; ----------------------------------------------------------------------------------
; Initialise all player data to start of game defaults
; ----------------------------------------------------------------------------------
.initallplayers
    ldx #3                                                            ; 2c00: a2 03       ..
.resetplayerdataloop
    lda #0                                                            ; 2c02: a9 00       ..
    sta playerlevel,x                                                 ; 2c04: 95 24       .$
    lda #5                                                            ; 2c06: a9 05       ..
    sta lives,x                                                       ; 2c08: 95 20       .
    dex                                                               ; 2c0a: ca          .
    bpl resetplayerdataloop                                           ; 2c0b: 10 f5       ..
    ldx #3                                                            ; 2c0d: a2 03       ..
    stx temp1                                                         ; 2c0f: 86 88       ..
.resetplayerscores
    txa                                                               ; 2c11: 8a          .
    asl a                                                             ; 2c12: 0a          .
    asl a                                                             ; 2c13: 0a          .
    asl a                                                             ; 2c14: 0a          .
    asl a                                                             ; 2c15: 0a          .
    asl a                                                             ; 2c16: 0a          .
    asl a                                                             ; 2c17: 0a          .
    tax                                                               ; 2c18: aa          .
    ldy #7                                                            ; 2c19: a0 07       ..
    lda #0                                                            ; 2c1b: a9 00       ..
.resetplayerscores2
    sta playerscore,x                                                 ; 2c1d: 9d 00 05    ...
    inx                                                               ; 2c20: e8          .
    dey                                                               ; 2c21: 88          .
    bpl resetplayerscores2                                            ; 2c22: 10 f9       ..
    dec temp1                                                         ; 2c24: c6 88       ..
    ldx temp1                                                         ; 2c26: a6 88       ..
    bpl resetplayerscores                                             ; 2c28: 10 e7       ..
    lda #0                                                            ; 2c2a: a9 00       ..
    sta level                                                         ; 2c2c: 85 50       .P
    lda #4                                                            ; 2c2e: a9 04       ..
    sta playernum                                                     ; 2c30: 85 5d       .]
.resetperplayerloop
    dec playernum                                                     ; 2c32: c6 5d       .]
    jsr initplayerleveldata                                           ; 2c34: 20 08 2e     ..
    lda playernum                                                     ; 2c37: a5 5d       .]
    bne resetperplayerloop                                            ; 2c39: d0 f7       ..
    jsr restoreplayerdata                                             ; 2c3b: 20 37 2e     7.
    lda #&1a                                                          ; 2c3e: a9 1a       ..
    jsr oswrch                                                        ; 2c40: 20 ee ff     ..            ; Write character 26
    rts                                                               ; 2c43: 60          `

.string_howmanyplayers
    equb 25                                                           ; 2c44: 19          .
.string_howmanyplayers_start
    equb  16,  25,   4,  32,   0, 244,   1                            ; 2c45: 10 19 04... ...
    equs "How many players? "                                         ; 2c4c: 48 6f 77... How

; ----------------------------------------------------------------------------------
; Pause for A units of time
; ----------------------------------------------------------------------------------
.string_howmanyplayers_end
.pause
    sta temp3                                                         ; 2c5e: 85 8a       ..
.pauseloop1
    ldy #0                                                            ; 2c60: a0 00       ..
    ldx #0                                                            ; 2c62: a2 00       ..
.pauseloop2
    dex                                                               ; 2c64: ca          .
    bne pauseloop2                                                    ; 2c65: d0 fd       ..
    dey                                                               ; 2c67: 88          .
    bne pauseloop2                                                    ; 2c68: d0 fa       ..
    dec temp3                                                         ; 2c6a: c6 8a       ..
    bne pauseloop1                                                    ; 2c6c: d0 f2       ..
    rts                                                               ; 2c6e: 60          `

; ----------------------------------------------------------------------------------
; Render and update the title page
; ----------------------------------------------------------------------------------
.titlepage
    tsx                                                               ; 2c6f: ba          .
    stx savesp                                                        ; 2c70: 86 1b       ..
    jsr initplayersfordemo                                            ; 2c72: 20 d8 2c     .,
.titlepageloop
    lda #&10                                                          ; 2c75: a9 10       ..
    jsr oswrch                                                        ; 2c77: 20 ee ff     ..            ; Write character 16
    jsr showlogo                                                      ; 2c7a: 20 e5 2c     .,
    jsr showhiscores                                                  ; 2c7d: 20 38 28     8(
    jsr showkeyhelp                                                   ; 2c80: 20 44 2d     D-
    lda #&1e                                                          ; 2c83: a9 1e       ..
    sta temp3                                                         ; 2c85: 85 8a       ..
.titlepagewait1
    jsr checktitlepagekeys                                            ; 2c87: 20 b0 2d     .-
    dec temp3                                                         ; 2c8a: c6 8a       ..
    bne titlepagewait1                                                ; 2c8c: d0 f9       ..
    jsr displayrandomlevel                                            ; 2c8e: 20 c6 2c     .,
    lda #&14                                                          ; 2c91: a9 14       ..
    sta temp3                                                         ; 2c93: 85 8a       ..
.titlepagewait2
    jsr checktitlepagekeys                                            ; 2c95: 20 b0 2d     .-
    dec temp3                                                         ; 2c98: c6 8a       ..
    bne titlepagewait2                                                ; 2c9a: d0 f9       ..
    lda #&10                                                          ; 2c9c: a9 10       ..
    jsr oswrch                                                        ; 2c9e: 20 ee ff     ..            ; Write character 16
    jsr showlogo                                                      ; 2ca1: 20 e5 2c     .,
    jsr showkeys                                                      ; 2ca4: 20 00 09     ..
    jsr showkeyhelp                                                   ; 2ca7: 20 44 2d     D-
    lda #&1e                                                          ; 2caa: a9 1e       ..
    sta temp3                                                         ; 2cac: 85 8a       ..
.titlepagewait3
    jsr checktitlepagekeys                                            ; 2cae: 20 b0 2d     .-
    dec temp3                                                         ; 2cb1: c6 8a       ..
    bne titlepagewait3                                                ; 2cb3: d0 f9       ..
    jsr displayrandomlevel                                            ; 2cb5: 20 c6 2c     .,
    lda #&14                                                          ; 2cb8: a9 14       ..
    sta temp3                                                         ; 2cba: 85 8a       ..
.titlepagewait4
    jsr checktitlepagekeys                                            ; 2cbc: 20 b0 2d     .-
    dec temp3                                                         ; 2cbf: c6 8a       ..
    bne titlepagewait4                                                ; 2cc1: d0 f9       ..
    jmp titlepageloop                                                 ; 2cc3: 4c 75 2c    Lu,

; ----------------------------------------------------------------------------------
; Display random level
; ----------------------------------------------------------------------------------
.displayrandomlevel
    jsr rnd                                                           ; 2cc6: 20 a4 1a     ..
    lda rndseed                                                       ; 2cc9: a5 66       .f
    and #7                                                            ; 2ccb: 29 07       ).
    sta level                                                         ; 2ccd: 85 50       .P
    sta screen                                                        ; 2ccf: 85 5c       .\
    jsr initmap                                                       ; 2cd1: 20 33 1b     3.
    jsr initcharacters                                                ; 2cd4: 20 9c 2e     ..
    rts                                                               ; 2cd7: 60          `

; ----------------------------------------------------------------------------------
; Initialise all 4 players (used by the demo)
; ----------------------------------------------------------------------------------
.initplayersfordemo
    lda #4                                                            ; 2cd8: a9 04       ..
    sta numplayers                                                    ; 2cda: 85 5e       .^
    sta numaliveplayers                                               ; 2cdc: 85 5f       ._
    jsr initallplayers                                                ; 2cde: 20 00 2c     .,
    jsr initlevel                                                     ; 2ce1: 20 ca 2d     .-
    rts                                                               ; 2ce4: 60          `

; ----------------------------------------------------------------------------------
; Show Chuckie Egg logo
; ----------------------------------------------------------------------------------
.showlogo
    lda #LogoColour                                                   ; 2ce5: a9 02       ..
    sta spritecolour                                                  ; 2ce7: 85 7f       ..
    lda #SpriteId_BigC                                                ; 2ce9: a9 30       .0
    ldx #2                                                            ; 2ceb: a2 02       ..
    ldy #&f0                                                          ; 2ced: a0 f0       ..
    jsr showbigletter                                                 ; 2cef: 20 be 2d     .-
    lda #SpriteId_BigH                                                ; 2cf2: a9 31       .1
    ldx #&11                                                          ; 2cf4: a2 11       ..
    ldy #&f0                                                          ; 2cf6: a0 f0       ..
    jsr showbigletter                                                 ; 2cf8: 20 be 2d     .-
    lda #SpriteId_BigU                                                ; 2cfb: a9 32       .2
    ldx #&20                                                          ; 2cfd: a2 20       .
    ldy #&f0                                                          ; 2cff: a0 f0       ..
    jsr showbigletter                                                 ; 2d01: 20 be 2d     .-
    lda #SpriteId_BigC                                                ; 2d04: a9 30       .0
    ldx #&2f                                                          ; 2d06: a2 2f       ./
    ldy #&f0                                                          ; 2d08: a0 f0       ..
    jsr showbigletter                                                 ; 2d0a: 20 be 2d     .-
    lda #SpriteId_BigK                                                ; 2d0d: a9 33       .3
    ldx #&3e                                                          ; 2d0f: a2 3e       .>
    ldy #&f0                                                          ; 2d11: a0 f0       ..
    jsr showbigletter                                                 ; 2d13: 20 be 2d     .-
    lda #SpriteId_BigI                                                ; 2d16: a9 34       .4
    ldx #&4d                                                          ; 2d18: a2 4d       .M
    ldy #&f0                                                          ; 2d1a: a0 f0       ..
    jsr showbigletter                                                 ; 2d1c: 20 be 2d     .-
    lda #SpriteId_BigE                                                ; 2d1f: a9 35       .5
    ldx #&5c                                                          ; 2d21: a2 5c       .\
    ldy #&f0                                                          ; 2d23: a0 f0       ..
    jsr showbigletter                                                 ; 2d25: 20 be 2d     .-
    lda #SpriteId_BigE                                                ; 2d28: a9 35       .5
    ldx #&72                                                          ; 2d2a: a2 72       .r
    ldy #&f0                                                          ; 2d2c: a0 f0       ..
    jsr showbigletter                                                 ; 2d2e: 20 be 2d     .-
    lda #SpriteId_BigG                                                ; 2d31: a9 36       .6
    ldx #&81                                                          ; 2d33: a2 81       ..
    ldy #&f0                                                          ; 2d35: a0 f0       ..
    jsr showbigletter                                                 ; 2d37: 20 be 2d     .-
    lda #SpriteId_BigG                                                ; 2d3a: a9 36       .6
    ldx #&90                                                          ; 2d3c: a2 90       ..
    ldy #&f0                                                          ; 2d3e: a0 f0       ..
    jsr showbigletter                                                 ; 2d40: 20 be 2d     .-
    rts                                                               ; 2d43: 60          `

; ----------------------------------------------------------------------------------
; Show help with keys (S to start, K to change keys)
; ----------------------------------------------------------------------------------
.showkeyhelp
    ldx #<string_keyhelp                                              ; 2d44: a2 4c       .L
    ldy #>string_keyhelp                                              ; 2d46: a0 2d       .-
    jsr printstring                                                   ; 2d48: 20 26 1a     &.
    rts                                                               ; 2d4b: 60          `

.string_keyhelp
    equb string_keyhelp_end - string_keyhelp_start                    ; 2d4c: 3b          ;
.string_keyhelp_start
    equb  25,   4, 128,   0, 100,   0,  18,   0,   4                  ; 2d4d: 19 04 80... ...
    equs "Press "                                                     ; 2d56: 50 72 65... Pre
    equb 18,  0,  8, 83, 32, 18,  0,  4                               ; 2d5c: 12 00 08... ...
    equs "to start"                                                   ; 2d64: 74 6f 20... to
    equb  25,   4, 128,   0,  50,   0,  18,   0,   8,  75,  32,  18   ; 2d6c: 19 04 80... ...
    equb   0,   4                                                     ; 2d78: 00 04       ..
    equs "to change keys"                                             ; 2d7a: 74 6f 20... to

; ----------------------------------------------------------------------------------
; Check title page keys
; ----------------------------------------------------------------------------------
.string_keyhelp_end
.checktitlepagekeys_core
    lda #osbyte_inkey                                                 ; 2d88: a9 81       ..
    ldx #inkey_key_s                                                  ; 2d8a: a2 ae       ..             ; X=inkey key value
    ldy #&ff                                                          ; 2d8c: a0 ff       ..
    jsr osbyte                                                        ; 2d8e: 20 f4 ff     ..            ; Is the 'S' key pressed?
    cpy #0                                                            ; 2d91: c0 00       ..             ; X and Y contain &ff if the key is pressed
    beq didntpressS                                                   ; 2d93: f0 04       ..
    ldx savesp                                                        ; 2d95: a6 1b       ..
    txs                                                               ; 2d97: 9a          .
    rts                                                               ; 2d98: 60          `

.didntpressS
    lda #osbyte_inkey                                                 ; 2d99: a9 81       ..
    ldx #inkey_key_k                                                  ; 2d9b: a2 b9       ..             ; X=inkey key value
    ldy #&ff                                                          ; 2d9d: a0 ff       ..
    jsr osbyte                                                        ; 2d9f: 20 f4 ff     ..            ; Is the 'K' key pressed?
    cpy #0                                                            ; 2da2: c0 00       ..             ; X and Y contain &ff if the key is pressed
    bne pressedK                                                      ; 2da4: d0 01       ..
    rts                                                               ; 2da6: 60          `

.pressedK
    ldx savesp                                                        ; 2da7: a6 1b       ..
    txs                                                               ; 2da9: 9a          .
    jsr choosekeys                                                    ; 2daa: 20 03 09     ..
    jmp titlepageloop                                                 ; 2dad: 4c 75 2c    Lu,

.checktitlepagekeys
    jsr string_keyhelp_end                                            ; 2db0: 20 88 2d     .-
    ldx #0                                                            ; 2db3: a2 00       ..
    ldy #0                                                            ; 2db5: a0 00       ..
.checktitlepagekeysdelay
    dex                                                               ; 2db7: ca          .
    bne checktitlepagekeysdelay                                       ; 2db8: d0 fd       ..
    dey                                                               ; 2dba: 88          .
    bne checktitlepagekeysdelay                                       ; 2dbb: d0 fa       ..
    rts                                                               ; 2dbd: 60          `

; ----------------------------------------------------------------------------------
; Show big logo letter
; ----------------------------------------------------------------------------------
.showbigletter
    pha                                                               ; 2dbe: 48          H
    jsr calcscrnaddr                                                  ; 2dbf: 20 87 19     ..
    pla                                                               ; 2dc2: 68          h
    jsr getspritedata                                                 ; 2dc3: 20 db 19     ..
    jsr plotsprite                                                    ; 2dc6: 20 02 19     ..
    rts                                                               ; 2dc9: 60          `

; ----------------------------------------------------------------------------------
; Initialise level data (speed, number of birds, etc)
; ----------------------------------------------------------------------------------
.initlevel
    lda level                                                         ; 2dca: a5 50       .P
    and #7                                                            ; 2dcc: 29 07       ).
    sta screen                                                        ; 2dce: 85 5c       .\
    lda level                                                         ; 2dd0: a5 50       .P
    lsr a                                                             ; 2dd2: 4a          J
    lsr a                                                             ; 2dd3: 4a          J
    lsr a                                                             ; 2dd4: 4a          J
    sta difficulty                                                    ; 2dd5: 85 4d       .M
    lda #0                                                            ; 2dd7: a9 00       ..
    sta bigbirdflag                                                   ; 2dd9: 85 35       .5
    lda difficulty                                                    ; 2ddb: a5 4d       .M
    beq nobigbirdyet                                                  ; 2ddd: f0 02       ..
    inc bigbirdflag                                                   ; 2ddf: e6 35       .5
.nobigbirdyet
    lda #0                                                            ; 2de1: a9 00       ..
    sta updatetimer                                                   ; 2de3: 85 38       .8
    lda #0                                                            ; 2de5: a9 00       ..
    sta currentbirdindex                                              ; 2de7: 85 36       .6
    lda #8                                                            ; 2de9: a9 08       ..
    ldx difficulty                                                    ; 2deb: a6 4d       .M
    cpx #4                                                            ; 2ded: e0 04       ..
    bcc birdsnotfastyet                                               ; 2def: 90 02       ..
    lda #5                                                            ; 2df1: a9 05       ..
.birdsnotfastyet
    sta birdwalkingspeed                                              ; 2df3: 85 37       .7
    lda #0                                                            ; 2df5: a9 00       ..
    sta extralifeflag                                                 ; 2df7: 85 3e       .>
    sta playerdieflag                                                 ; 2df9: 85 4f       .O
    sta stalltime                                                     ; 2dfb: 85 1c       ..
    lda #&76                                                          ; 2dfd: a9 76       .v
    sta rndseed                                                       ; 2dff: 85 66       .f
    sta rndseed + 1                                                   ; 2e01: 85 67       .g
    sta rndseed + 2                                                   ; 2e03: 85 68       .h
    sta rndseed + 3                                                   ; 2e05: 85 69       .i
    rts                                                               ; 2e07: 60          `

; ----------------------------------------------------------------------------------
; Initialise the per-player data for a new level
; ----------------------------------------------------------------------------------
.initplayerleveldata
    lda playernum                                                     ; 2e08: a5 5d       .]
    asl a                                                             ; 2e0a: 0a          .
    asl a                                                             ; 2e0b: 0a          .
    asl a                                                             ; 2e0c: 0a          .
    asl a                                                             ; 2e0d: 0a          .
    asl a                                                             ; 2e0e: 0a          .
    asl a                                                             ; 2e0f: 0a          .
    tax                                                               ; 2e10: aa          .
    lda level                                                         ; 2e11: a5 50       .P
    clc                                                               ; 2e13: 18          .
    adc #1                                                            ; 2e14: 69 01       i.
    cmp #&0a                                                          ; 2e16: c9 0a       ..
    bcc capto9                                                        ; 2e18: 90 02       ..
    lda #9                                                            ; 2e1a: a9 09       ..
.capto9
    sta playerbonus,x                                                 ; 2e1c: 9d 08 05    ...
    lda #0                                                            ; 2e1f: a9 00       ..
    sta playerbonus + 1,x                                             ; 2e21: 9d 09 05    ...
    sta playerbonus + 2,x                                             ; 2e24: 9d 0a 05    ...
    sta playerbonusexpiredflag,x                                      ; 2e27: 9d 0b 05    ...
    ldy #&10                                                          ; 2e2a: a0 10       ..
.clearcollectedflags
    sta collectedeggsflags,x                                          ; 2e2c: 9d 10 05    ...
    sta collectedseedflags,x                                          ; 2e2f: 9d 20 05    . .
    inx                                                               ; 2e32: e8          .
    dey                                                               ; 2e33: 88          .
    bne clearcollectedflags                                           ; 2e34: d0 f6       ..
    rts                                                               ; 2e36: 60          `

; ----------------------------------------------------------------------------------
; Restore current player score, bonus and level from backup
; ----------------------------------------------------------------------------------
.restoreplayerdata
    ldx playernum                                                     ; 2e37: a6 5d       .]
    lda playerlevel,x                                                 ; 2e39: b5 24       .$
    sta level                                                         ; 2e3b: 85 50       .P
    txa                                                               ; 2e3d: 8a          .
    asl a                                                             ; 2e3e: 0a          .
    asl a                                                             ; 2e3f: 0a          .
    asl a                                                             ; 2e40: 0a          .
    asl a                                                             ; 2e41: 0a          .
    asl a                                                             ; 2e42: 0a          .
    asl a                                                             ; 2e43: 0a          .
    sta playerdataoffset                                              ; 2e44: 85 4e       .N
    tax                                                               ; 2e46: aa          .
    ldy #0                                                            ; 2e47: a0 00       ..
.restoreplayerdataloop
    lda playerscore,x                                                 ; 2e49: bd 00 05    ...
    sta score,y                                                       ; 2e4c: 99 28 00    .(.
    inx                                                               ; 2e4f: e8          .
    iny                                                               ; 2e50: c8          .
    cpy #8                                                            ; 2e51: c0 08       ..
    bcc restoreplayerdataloop                                         ; 2e53: 90 f4       ..
    ldx playerdataoffset                                              ; 2e55: a6 4e       .N
    ldy #0                                                            ; 2e57: a0 00       ..
.restoreplayerdataloop2
    lda playerbonus,x                                                 ; 2e59: bd 08 05    ...
    sta bonus,y                                                       ; 2e5c: 99 3a 00    .:.
    inx                                                               ; 2e5f: e8          .
    iny                                                               ; 2e60: c8          .
    cpy #4                                                            ; 2e61: c0 04       ..
    bcc restoreplayerdataloop2                                        ; 2e63: 90 f4       ..
    ldx playernum                                                     ; 2e65: a6 5d       .]
    lda #0                                                            ; 2e67: a9 00       ..
    clc                                                               ; 2e69: 18          .
.restoreplayerdataloop3
    adc #&22                                                          ; 2e6a: 69 22       i"
    dex                                                               ; 2e6c: ca          .
    bpl restoreplayerdataloop3                                        ; 2e6d: 10 fb       ..
    sec                                                               ; 2e6f: 38          8
    sbc #&15                                                          ; 2e70: e9 15       ..
    sta currentscorexpos                                              ; 2e72: 85 3f       .?
    rts                                                               ; 2e74: 60          `

; ----------------------------------------------------------------------------------
; Save current player score, bonus and level to per-player backup
; ----------------------------------------------------------------------------------
.saveplayerdata
    ldx playernum                                                     ; 2e75: a6 5d       .]
    lda level                                                         ; 2e77: a5 50       .P
    sta playerlevel,x                                                 ; 2e79: 95 24       .$
    ldx playerdataoffset                                              ; 2e7b: a6 4e       .N
    ldy #0                                                            ; 2e7d: a0 00       ..
.saveplayerdataloop
    lda score,y                                                       ; 2e7f: b9 28 00    .(.
    sta playerscore,x                                                 ; 2e82: 9d 00 05    ...
    inx                                                               ; 2e85: e8          .
    iny                                                               ; 2e86: c8          .
    cpy #8                                                            ; 2e87: c0 08       ..
    bcc saveplayerdataloop                                            ; 2e89: 90 f4       ..
    ldx playerdataoffset                                              ; 2e8b: a6 4e       .N
    ldy #0                                                            ; 2e8d: a0 00       ..
.saveplayerdataloop2
    lda bonus,y                                                       ; 2e8f: b9 3a 00    .:.
    sta playerbonus,x                                                 ; 2e92: 9d 08 05    ...
    inx                                                               ; 2e95: e8          .
    iny                                                               ; 2e96: c8          .
    cpy #4                                                            ; 2e97: c0 04       ..
    bcc saveplayerdataloop2                                           ; 2e99: 90 f4       ..
    rts                                                               ; 2e9b: 60          `

; ----------------------------------------------------------------------------------
; Initialise player, birds, lifts and render them for the first time
; ----------------------------------------------------------------------------------
.initcharacters
    lda liftflag                                                      ; 2e9c: a5 55       .U
    beq initbigbird                                                   ; 2e9e: f0 2e       ..
    lda #8                                                            ; 2ea0: a9 08       ..
    sta lift1y                                                        ; 2ea2: 85 59       .Y
    lda #&5a                                                          ; 2ea4: a9 5a       .Z
    sta lift2y                                                        ; 2ea6: 85 5a       .Z
    lda #0                                                            ; 2ea8: a9 00       ..
    sta whichlift                                                     ; 2eaa: 85 5b       .[
    lda #LiftColour                                                   ; 2eac: a9 02       ..
    sta spritecolour                                                  ; 2eae: 85 7f       ..
    lda #SpriteId_Lift                                                ; 2eb0: a9 05       ..
    jsr getspritedata                                                 ; 2eb2: 20 db 19     ..
    ldx liftx                                                         ; 2eb5: a6 58       .X
    ldy lift1y                                                        ; 2eb7: a4 59       .Y
    jsr calcscrnaddr                                                  ; 2eb9: 20 87 19     ..
    jsr plotsprite                                                    ; 2ebc: 20 02 19     ..
    lda #SpriteId_Lift                                                ; 2ebf: a9 05       ..
    jsr getspritedata                                                 ; 2ec1: 20 db 19     ..
    ldx liftx                                                         ; 2ec4: a6 58       .X
    ldy lift2y                                                        ; 2ec6: a4 5a       .Z
    jsr calcscrnaddr                                                  ; 2ec8: 20 87 19     ..
    jsr plotsprite                                                    ; 2ecb: 20 02 19     ..
.initbigbird
    lda #4                                                            ; 2ece: a9 04       ..
    sta bigbirdxpos                                                   ; 2ed0: 85 30       .0
    lda #&cc                                                          ; 2ed2: a9 cc       ..
    sta bigbirdypos                                                   ; 2ed4: 85 31       .1
    lda #0                                                            ; 2ed6: a9 00       ..
    sta bigbirdxspeed                                                 ; 2ed8: 85 32       .2
    sta bigbirdyspeed                                                 ; 2eda: 85 33       .3
    sta bigbirdanim                                                   ; 2edc: 85 34       .4
    jsr plotbigbird                                                   ; 2ede: 20 36 23     6#
    ldx #&ff                                                          ; 2ee1: a2 ff       ..
    stx temp1                                                         ; 2ee3: 86 88       ..
    lda difficulty                                                    ; 2ee5: a5 4d       .M
    cmp #1                                                            ; 2ee7: c9 01       ..
    bne notphase2                                                     ; 2ee9: d0 04       ..
    ldx #0                                                            ; 2eeb: a2 00       ..
    stx numbirds                                                      ; 2eed: 86 57       .W
.notphase2
    cmp #3                                                            ; 2eef: c9 03       ..
    bcc notphase1or3                                                  ; 2ef1: 90 04       ..
    ldx #5                                                            ; 2ef3: a2 05       ..
    stx numbirds                                                      ; 2ef5: 86 57       .W
.notphase1or3
.initbirdloop
    inc temp1                                                         ; 2ef7: e6 88       ..
    ldx temp1                                                         ; 2ef9: a6 88       ..
    cpx numbirds                                                      ; 2efb: e4 57       .W
    bcs doneinitbirds                                                 ; 2efd: b0 28       .(
    lda birdcharx,x                                                   ; 2eff: bd 0a 04    ...
    asl a                                                             ; 2f02: 0a          .
    asl a                                                             ; 2f03: 0a          .
    asl a                                                             ; 2f04: 0a          .
    sta birddata,x                                                    ; 2f05: 9d 00 04    ...
    lda birdchary,x                                                   ; 2f08: bd 0f 04    ...
    asl a                                                             ; 2f0b: 0a          .
    asl a                                                             ; 2f0c: 0a          .
    asl a                                                             ; 2f0d: 0a          .
    clc                                                               ; 2f0e: 18          .
    adc #&14                                                          ; 2f0f: 69 14       i.
    sta birdpixely,x                                                  ; 2f11: 9d 05 04    ...
    lda #0                                                            ; 2f14: a9 00       ..
    sta birdstatus,x                                                  ; 2f16: 9d 14 04    ...
    sta birdanim,x                                                    ; 2f19: 9d 19 04    ...
    lda #2                                                            ; 2f1c: a9 02       ..
    sta birddir,x                                                     ; 2f1e: 9d 1e 04    ...
    jsr plotbird                                                      ; 2f21: 20 4b 23     K#
    jmp notphase1or3                                                  ; 2f24: 4c f7 2e    L..

.doneinitbirds
    lda #3                                                            ; 2f27: a9 03       ..
    jsr string_howmanyplayers_end                                     ; 2f29: 20 5e 2c     ^,
    lda #&3c                                                          ; 2f2c: a9 3c       .<
    sta playerx                                                       ; 2f2e: 85 40       .@
    lda #&20                                                          ; 2f30: a9 20       .
    sta playery                                                       ; 2f32: 85 41       .A
    lda #6                                                            ; 2f34: a9 06       ..
    sta playerspritenum                                               ; 2f36: 85 48       .H
    jsr plotplayer                                                    ; 2f38: 20 24 23     $#
    lda #7                                                            ; 2f3b: a9 07       ..
    sta playercharx                                                   ; 2f3d: 85 42       .B
    sta playerfracx                                                   ; 2f3f: 85 44       .D
    lda #2                                                            ; 2f41: a9 02       ..
    sta playerchary                                                   ; 2f43: 85 43       .C
    lda #0                                                            ; 2f45: a9 00       ..
    sta playerfracy                                                   ; 2f47: 85 45       .E
    sta movementtype                                                  ; 2f49: 85 49       .I
    lda #1                                                            ; 2f4b: a9 01       ..
    sta playerfacingdir                                               ; 2f4d: 85 4c       .L
    jsr showlife                                                      ; 2f4f: 20 64 2f     d/
    rts                                                               ; 2f52: 60          `

; ----------------------------------------------------------------------------------
; Check whether an extra life should be awarded
; ----------------------------------------------------------------------------------
.checkextralife
    lda extralifeflag                                                 ; 2f53: a5 3e       .>
    bne awardextralife                                                ; 2f55: d0 01       ..
    rts                                                               ; 2f57: 60          `

.awardextralife
    lda #0                                                            ; 2f58: a9 00       ..
    sta extralifeflag                                                 ; 2f5a: 85 3e       .>
    jsr showlife                                                      ; 2f5c: 20 64 2f     d/
    ldx playernum                                                     ; 2f5f: a6 5d       .]
    inc lives,x                                                       ; 2f61: f6 20       .
    rts                                                               ; 2f63: 60          `

; ----------------------------------------------------------------------------------
; Plot/delete life
; ----------------------------------------------------------------------------------
.showlife
    lda #LivesColour                                                  ; 2f64: a9 20       .
    sta spritecolour                                                  ; 2f66: 85 7f       ..
    ldx playernum                                                     ; 2f68: a6 5d       .]
    lda lives,x                                                       ; 2f6a: b5 20       .
    cmp #9                                                            ; 2f6c: c9 09       ..
    bcc showlife2                                                     ; 2f6e: 90 01       ..
    rts                                                               ; 2f70: 60          `

.showlife2
    asl a                                                             ; 2f71: 0a          .
    asl a                                                             ; 2f72: 0a          .
    adc currentscorexpos                                              ; 2f73: 65 3f       e?
    adc #&0a                                                          ; 2f75: 69 0a       i.
    tax                                                               ; 2f77: aa          .
    ldy #&ee                                                          ; 2f78: a0 ee       ..
    jsr calcscrnaddr                                                  ; 2f7a: 20 87 19     ..
    lda #SpriteId_Life                                                ; 2f7d: a9 2f       ./
    jsr getspritedata                                                 ; 2f7f: 20 db 19     ..
    jsr plotsprite                                                    ; 2f82: 20 02 19     ..
    rts                                                               ; 2f85: 60          `

.playdeathtune
    stx read                                                          ; 2f86: 86 76       .v
    sty read + 1                                                      ; 2f88: 84 77       .w
    ldy #0                                                            ; 2f8a: a0 00       ..
    sty temp2                                                         ; 2f8c: 84 89       ..
    lda (read),y                                                      ; 2f8e: b1 76       .v
    sta temp3                                                         ; 2f90: 85 8a       ..
.playdeathtuneloop
    ldy temp2                                                         ; 2f92: a4 89       ..
    iny                                                               ; 2f94: c8          .
    lda (read),y                                                      ; 2f95: b1 76       .v
    sta deathsoundblock_pitch                                         ; 2f97: 8d a4 0c    ...
    iny                                                               ; 2f9a: c8          .
    lda (read),y                                                      ; 2f9b: b1 76       .v
    sta deathsoundblock_length                                        ; 2f9d: 8d a6 0c    ...
    sty temp2                                                         ; 2fa0: 84 89       ..
    ldx #<(deathsoundblock)                                           ; 2fa2: a2 a0       ..
    ldy #>(deathsoundblock)                                           ; 2fa4: a0 0c       ..
    lda #osword_sound                                                 ; 2fa6: a9 07       ..
    jsr osword                                                        ; 2fa8: 20 f1 ff     ..            ; SOUND command
    dec temp3                                                         ; 2fab: c6 8a       ..
    bne playdeathtuneloop                                             ; 2fad: d0 e3       ..
    rts                                                               ; 2faf: 60          `

; ----------------------------------------------------------------------------------
; Death tune data
; ----------------------------------------------------------------------------------
.deathtunedata
    equb &10                                                          ; 2fb0: 10          .
.deathtune_start
    equb 33,  4                                                       ; 2fb1: 21 04       !.
    equb 41,  2                                                       ; 2fb3: 29 02       ).
    equb 33,  4                                                       ; 2fb5: 21 04       !.
    equb 25,  2                                                       ; 2fb7: 19 02       ..
    equb 21,  4                                                       ; 2fb9: 15 04       ..
    equb 5, 2                                                         ; 2fbb: 05 02       ..
    equb 13,  4                                                       ; 2fbd: 0d 04       ..
    equb 1, 2                                                         ; 2fbf: 01 02       ..
    equb  5, 12                                                       ; 2fc1: 05 0c       ..
    equb 5, 1                                                         ; 2fc3: 05 01       ..
    equb 13,  1                                                       ; 2fc5: 0d 01       ..
    equb 21,  1                                                       ; 2fc7: 15 01       ..
    equb 25,  1                                                       ; 2fc9: 19 01       ..
    equb 33,  1                                                       ; 2fcb: 21 01       !.
    equb 49,  1                                                       ; 2fcd: 31 01       1.
    equb 53,  1                                                       ; 2fcf: 35 01       5.
; ----------------------------------------------------------------------------------
; Envelope data
; ----------------------------------------------------------------------------------
.deathtune_end
.envelope1
    equb &01, &01, &00, &00, &00, &00, &00, &00, &7e, &ce, &00, &00, &64, &00; 2fd1: 01 01 00... ...            ; Envelope Number (1-16) and rest of definition (14 bytes)
.envelope2
    equb &02, &01, &00, &00, &00, &00, &00, &00, &7e, &fe, &00, &fb, &7e, &64; 2fdf: 02 01 00... ...            ; Envelope Number (1-16) and rest of definition (14 bytes)
.envelope3
    equb &03, &01, &00, &00, &00, &00, &00, &00, &32, &00, &00, &e7, &64, &00; 2fed: 03 01 00... ...            ; Envelope Number (1-16) and rest of definition (14 bytes)
    equb 0, 0, 0, 0, 0                                                ; 2ffb: 00 00 00... ...
.codemain_end
.relocated_code
.relocated_code_end

; Move 1: &3000 to &0900 for length 2048
    org &0900
; ----------------------------------------------------------------------------------
; Show the currently defined keys on screen
; ----------------------------------------------------------------------------------
.showkeys
    jmp string_control_end                                            ; 3000: 4c 98 0b    L.. :0900[1]

; ----------------------------------------------------------------------------------
; Let the player select their preferred keys
; ----------------------------------------------------------------------------------
.choosekeys
    ldx #<string_keyselection                                         ; 3003: a2 b2       ..  :0903[1]
    ldy #>string_keyselection                                         ; 3005: a0 0a       ..  :0905[1]
    jsr printstring                                                   ; 3007: 20 26 1a     &. :0907[1]
; Read address of keyboard translation table and store in (&76)
    lda #osbyte_read_key_table_low                                    ; 300a: a9 ac       ..  :090a[1]
    ldx #0                                                            ; 300c: a2 00       ..  :090c[1]
    ldy #&ff                                                          ; 300e: a0 ff       ..  :090e[1]
    jsr osbyte                                                        ; 3010: 20 f4 ff     .. :0910[1]   ; Read keyboard translation table address
    stx read                                                          ; 3013: 86 76       .v  :0913[1]   ; X=value of keyboard translation table address (low byte)
    sty read + 1                                                      ; 3015: 84 77       .w  :0915[1]   ; Y=value of keyboard translation table address (high byte)
; Make note of how many keys have so far been defined
    lda #0                                                            ; 3017: a9 00       ..  :0917[1]
    sta keys                                                          ; 3019: 85 60       .`  :0919[1]
    lda #255 - inkey_key_h                                            ; 301b: a9 54       .T  :091b[1]
    sta score                                                         ; 301d: 85 28       .(  :091d[1]
    ldx #<string_up                                                   ; 301f: a2 dc       ..  :091f[1]
    ldy #>string_up                                                   ; 3021: a0 0a       ..  :0921[1]
    jsr printstring                                                   ; 3023: 20 26 1a     &. :0923[1]
    jsr waitforkey                                                    ; 3026: 20 5c 09     \. :0926[1]
    sta keynum_up                                                     ; 3029: 85 64       .d  :0929[1]
    ldx #<string_down                                                 ; 302b: a2 e9       ..  :092b[1]
    ldy #>string_down                                                 ; 302d: a0 0a       ..  :092d[1]
    jsr printstring                                                   ; 302f: 20 26 1a     &. :092f[1]
    jsr waitforkey                                                    ; 3032: 20 5c 09     \. :0932[1]
    sta keynum_down                                                   ; 3035: 85 63       .c  :0935[1]
    ldx #<string_left                                                 ; 3037: a2 f8       ..  :0937[1]
    ldy #>string_left                                                 ; 3039: a0 0a       ..  :0939[1]
    jsr printstring                                                   ; 303b: 20 26 1a     &. :093b[1]
    jsr waitforkey                                                    ; 303e: 20 5c 09     \. :093e[1]
    sta keynum_left                                                   ; 3041: 85 62       .b  :0941[1]
    ldx #<string_right                                                ; 3043: a2 07       ..  :0943[1]
    ldy #>string_right                                                ; 3045: a0 0b       ..  :0945[1]
    jsr printstring                                                   ; 3047: 20 26 1a     &. :0947[1]
    jsr waitforkey                                                    ; 304a: 20 5c 09     \. :094a[1]
    sta keynum_right                                                  ; 304d: 85 61       .a  :094d[1]
    ldx #<string_jump                                                 ; 304f: a2 17       ..  :094f[1]
    ldy #>string_jump                                                 ; 3051: a0 0b       ..  :0951[1]
    jsr printstring                                                   ; 3053: 20 26 1a     &. :0953[1]
    jsr waitforkey                                                    ; 3056: 20 5c 09     \. :0956[1]
    sta keynum_jump                                                   ; 3059: 85 65       .e  :0959[1]
    rts                                                               ; 305b: 60          `   :095b[1]

; ----------------------------------------------------------------------------------
; Wait for the player to press a key that hasn't yet been chosen, and print its name
; ----------------------------------------------------------------------------------
.waitforkey
    lda #osbyte_scan_keyboard                                         ; 305c: a9 79       .y  :095c[1]
    ldx #(255 - inkey_key_shift) EOR 128                              ; 305e: a2 80       ..  :095e[1]   ; X=internal key number EOR 128
    jsr osbyte                                                        ; 3060: 20 f4 ff     .. :0960[1]   ; Test for 'SHIFT' key pressed (X=128)
    txa                                                               ; 3063: 8a          .   :0963[1]   ; X has top bit set if 'SHIFT' pressed
    bpl didntpressshift                                               ; 3064: 10 05       ..  :0964[1]
    ldx #0                                                            ; 3066: a2 00       ..  :0966[1]
    jmp gotakey                                                       ; 3068: 4c 83 09    L.. :0968[1]

.didntpressshift
    lda #osbyte_scan_keyboard                                         ; 306b: a9 79       .y  :096b[1]
    ldx #(255 - inkey_key_ctrl) EOR 128                               ; 306d: a2 81       ..  :096d[1]   ; X=internal key number EOR 128
    jsr osbyte                                                        ; 306f: 20 f4 ff     .. :096f[1]   ; Test for 'CTRL' key pressed (X=129)
    txa                                                               ; 3072: 8a          .   :0972[1]   ; X has top bit set if 'CTRL' pressed
    bpl didntpressctrl                                                ; 3073: 10 05       ..  :0973[1]
    ldx #1                                                            ; 3075: a2 01       ..  :0975[1]
    jmp gotakey                                                       ; 3077: 4c 83 09    L.. :0977[1]

.didntpressctrl
    lda #osbyte_scan_keyboard_from_16                                 ; 307a: a9 7a       .z  :097a[1]
    jsr osbyte                                                        ; 307c: 20 f4 ff     .. :097c[1]   ; Keyboard scan starting from key 16
    cpx #&ff                                                          ; 307f: e0 ff       ..  :097f[1]   ; X is key number if key is pressed, or &ff otherwise
    beq waitforkey                                                    ; 3081: f0 d9       ..  :0981[1]
.gotakey
    stx temp1                                                         ; 3083: 86 88       ..  :0983[1]
    txa                                                               ; 3085: 8a          .   :0985[1]
    eor #&ff                                                          ; 3086: 49 ff       I.  :0986[1]
    sta temp2                                                         ; 3088: 85 89       ..  :0988[1]
    ldy keys                                                          ; 308a: a4 60       .`  :098a[1]
    txa                                                               ; 308c: 8a          .   :098c[1]
    and #&0f                                                          ; 308d: 29 0f       ).  :098d[1]
    sta temp4                                                         ; 308f: 85 8b       ..  :098f[1]
    txa                                                               ; 3091: 8a          .   :0991[1]
    and #&f0                                                          ; 3092: 29 f0       ).  :0992[1]
    sta temp5                                                         ; 3094: 85 8c       ..  :0994[1]
    lda #0                                                            ; 3096: a9 00       ..  :0996[1]
    sta temp6                                                         ; 3098: 85 8d       ..  :0998[1]
    sta temp7                                                         ; 309a: 85 8e       ..  :099a[1]
.checkkeyclashes
    txa                                                               ; 309c: 8a          .   :099c[1]
    cmp score,y                                                       ; 309d: d9 28 00    .(. :099d[1]
    beq waitforkey                                                    ; 30a0: f0 ba       ..  :09a0[1]
    lda score,y                                                       ; 30a2: b9 28 00    .(. :09a2[1]
    and #&0f                                                          ; 30a5: 29 0f       ).  :09a5[1]
    cmp temp4                                                         ; 30a7: c5 8b       ..  :09a7[1]
    bne notsamerow                                                    ; 30a9: d0 02       ..  :09a9[1]
    inc temp6                                                         ; 30ab: e6 8d       ..  :09ab[1]
.notsamerow
    lda score,y                                                       ; 30ad: b9 28 00    .(. :09ad[1]
    and #&f0                                                          ; 30b0: 29 f0       ).  :09b0[1]
    cmp temp5                                                         ; 30b2: c5 8c       ..  :09b2[1]
    bne notsamecolumn                                                 ; 30b4: d0 02       ..  :09b4[1]
    inc temp7                                                         ; 30b6: e6 8e       ..  :09b6[1]
.notsamecolumn
    dey                                                               ; 30b8: 88          .   :09b8[1]
    bpl checkkeyclashes                                               ; 30b9: 10 e1       ..  :09b9[1]
    lda temp6                                                         ; 30bb: a5 8d       ..  :09bb[1]
    beq keyok                                                         ; 30bd: f0 15       ..  :09bd[1]
    lda temp7                                                         ; 30bf: a5 8e       ..  :09bf[1]
    beq keyok                                                         ; 30c1: f0 11       ..  :09c1[1]
    lda #osbyte_read_write_bell_duration                              ; 30c3: a9 d6       ..  :09c3[1]
    ldx #1                                                            ; 30c5: a2 01       ..  :09c5[1]
    ldy #0                                                            ; 30c7: a0 00       ..  :09c7[1]
    jsr osbyte                                                        ; 30c9: 20 f4 ff     .. :09c9[1]   ; Write CTRL G duration, value X=1
    lda #7                                                            ; 30cc: a9 07       ..  :09cc[1]
    jsr oswrch                                                        ; 30ce: 20 ee ff     .. :09ce[1]   ; Write character 7
    jmp waitforkey                                                    ; 30d1: 4c 5c 09    L\. :09d1[1]

.keyok
    inc keys                                                          ; 30d4: e6 60       .`  :09d4[1]
    ldy keys                                                          ; 30d6: a4 60       .`  :09d6[1]
    txa                                                               ; 30d8: 8a          .   :09d8[1]
    sta score,y                                                       ; 30d9: 99 28 00    .(. :09d9[1]
.printkeyname_core
    cpx #2                                                            ; 30dc: e0 02       ..  :09dc[1]
    bcs notshiftorctrl                                                ; 30de: b0 12       ..  :09de[1]
    cpx #0                                                            ; 30e0: e0 00       ..  :09e0[1]
    bne notshift                                                      ; 30e2: d0 07       ..  :09e2[1]
    ldx #<string_shift                                                ; 30e4: a2 8a       ..  :09e4[1]
    ldy #>string_shift                                                ; 30e6: a0 0b       ..  :09e6[1]
    jmp printstringandreturninkey                                     ; 30e8: 4c ac 0a    L.. :09e8[1]

.notshift
    ldx #<string_control                                              ; 30eb: a2 90       ..  :09eb[1]
    ldy #>string_control                                              ; 30ed: a0 0b       ..  :09ed[1]
    jmp printstringandreturninkey                                     ; 30ef: 4c ac 0a    L.. :09ef[1]

.notshiftorctrl
    ldy temp1                                                         ; 30f2: a4 88       ..  :09f2[1]
    lda (read),y                                                      ; 30f4: b1 76       .v  :09f4[1]
    cmp #&21                                                          ; 30f6: c9 21       .!  :09f6[1]
    bcc keywithspecialname                                            ; 30f8: 90 16       ..  :09f8[1]
    cmp #&7f                                                          ; 30fa: c9 7f       ..  :09fa[1]
    bcs keywithspecialname                                            ; 30fc: b0 12       ..  :09fc[1]
    pha                                                               ; 30fe: 48          H   :09fe[1]
    lda #&27                                                          ; 30ff: a9 27       .'  :09ff[1]
    jsr oswrch                                                        ; 3101: 20 ee ff     .. :0a01[1]   ; Write character 39
    pla                                                               ; 3104: 68          h   :0a04[1]
    jsr oswrch                                                        ; 3105: 20 ee ff     .. :0a05[1]   ; Write character
    lda #&27                                                          ; 3108: a9 27       .'  :0a08[1]
    jsr oswrch                                                        ; 310a: 20 ee ff     .. :0a0a[1]   ; Write character 39
    jmp returninkey                                                   ; 310d: 4c af 0a    L.. :0a0d[1]

.keywithspecialname
    cmp #0                                                            ; 3110: c9 00       ..  :0a10[1]
    bne nottab                                                        ; 3112: d0 07       ..  :0a12[1]
    ldx #<string_tab                                                  ; 3114: a2 26       .&  :0a14[1]
    ldy #>string_tab                                                  ; 3116: a0 0b       ..  :0a16[1]
    jmp printstringandreturninkey                                     ; 3118: 4c ac 0a    L.. :0a18[1]

.nottab
    cmp #1                                                            ; 311b: c9 01       ..  :0a1b[1]
    bne notcapslock                                                   ; 311d: d0 07       ..  :0a1d[1]
    ldx #<string_capslock                                             ; 311f: a2 2a       .*  :0a1f[1]
    ldy #>string_capslock                                             ; 3121: a0 0b       ..  :0a21[1]
    jmp printstringandreturninkey                                     ; 3123: 4c ac 0a    L.. :0a23[1]

.notcapslock
    cmp #2                                                            ; 3126: c9 02       ..  :0a26[1]
    bne notshiftlock                                                  ; 3128: d0 07       ..  :0a28[1]
    ldx #<string_shiftlock                                            ; 312a: a2 34       .4  :0a2a[1]
    ldy #>string_shiftlock                                            ; 312c: a0 0b       ..  :0a2c[1]
    jmp printstringandreturninkey                                     ; 312e: 4c ac 0a    L.. :0a2e[1]

.notshiftlock
    cmp #&1b                                                          ; 3131: c9 1b       ..  :0a31[1]
    bne notescape                                                     ; 3133: d0 07       ..  :0a33[1]
    ldx #<string_escape                                               ; 3135: a2 3f       .?  :0a35[1]
    ldy #>string_escape                                               ; 3137: a0 0b       ..  :0a37[1]
    jmp printstringandreturninkey                                     ; 3139: 4c ac 0a    L.. :0a39[1]

.notescape
    cmp #&20                                                          ; 313c: c9 20       .   :0a3c[1]
    bne notspace                                                      ; 313e: d0 07       ..  :0a3e[1]
    ldx #<string_space                                                ; 3140: a2 46       .F  :0a40[1]
    ldy #>string_space                                                ; 3142: a0 0b       ..  :0a42[1]
    jmp printstringandreturninkey                                     ; 3144: 4c ac 0a    L.. :0a44[1]

.notspace
    cmp #&7f                                                          ; 3147: c9 7f       ..  :0a47[1]
    bne notdelete                                                     ; 3149: d0 07       ..  :0a49[1]
    ldx #<string_delete                                               ; 314b: a2 4c       .L  :0a4b[1]
    ldy #>string_delete                                               ; 314d: a0 0b       ..  :0a4d[1]
    jmp printstringandreturninkey                                     ; 314f: 4c ac 0a    L.. :0a4f[1]

.notdelete
    cmp #&0d                                                          ; 3152: c9 0d       ..  :0a52[1]
    bne notreturn                                                     ; 3154: d0 07       ..  :0a54[1]
    ldx #<string_return                                               ; 3156: a2 53       .S  :0a56[1]
    ldy #>string_return                                               ; 3158: a0 0b       ..  :0a58[1]
    jmp printstringandreturninkey                                     ; 315a: 4c ac 0a    L.. :0a5a[1]

.notreturn
    cmp #&8b                                                          ; 315d: c9 8b       ..  :0a5d[1]
    bne notcopy                                                       ; 315f: d0 07       ..  :0a5f[1]
    ldx #<string_copy                                                 ; 3161: a2 5a       .Z  :0a61[1]
    ldy #>string_copy                                                 ; 3163: a0 0b       ..  :0a63[1]
    jmp printstringandreturninkey                                     ; 3165: 4c ac 0a    L.. :0a65[1]

.notcopy
    cmp #&8c                                                          ; 3168: c9 8c       ..  :0a68[1]
    bne notleftarrow                                                  ; 316a: d0 07       ..  :0a6a[1]
    ldx #<string_leftarrow                                            ; 316c: a2 5f       ._  :0a6c[1]
    ldy #>string_leftarrow                                            ; 316e: a0 0b       ..  :0a6e[1]
    jmp printstringandreturninkey                                     ; 3170: 4c ac 0a    L.. :0a70[1]

.notleftarrow
    cmp #&8d                                                          ; 3173: c9 8d       ..  :0a73[1]
    bne notrightarrow                                                 ; 3175: d0 07       ..  :0a75[1]
    ldx #<string_rightarrow                                           ; 3177: a2 6a       .j  :0a77[1]
    ldy #>string_rightarrow                                           ; 3179: a0 0b       ..  :0a79[1]
    jmp printstringandreturninkey                                     ; 317b: 4c ac 0a    L.. :0a7b[1]

.notrightarrow
    cmp #&8e                                                          ; 317e: c9 8e       ..  :0a7e[1]
    bne notdownarrow                                                  ; 3180: d0 07       ..  :0a80[1]
    ldx #<string_downarrow                                            ; 3182: a2 76       .v  :0a82[1]
    ldy #>string_downarrow                                            ; 3184: a0 0b       ..  :0a84[1]
    jmp printstringandreturninkey                                     ; 3186: 4c ac 0a    L.. :0a86[1]

.notdownarrow
    cmp #&8f                                                          ; 3189: c9 8f       ..  :0a89[1]
    bne notuparrow                                                    ; 318b: d0 07       ..  :0a8b[1]
    ldx #<string_uparrow                                              ; 318d: a2 81       ..  :0a8d[1]
    ldy #>string_uparrow                                              ; 318f: a0 0b       ..  :0a8f[1]
    jmp printstringandreturninkey                                     ; 3191: 4c ac 0a    L.. :0a91[1]

.notuparrow
    cmp #&80                                                          ; 3194: c9 80       ..  :0a94[1]
    bcc returninkey                                                   ; 3196: 90 17       ..  :0a96[1]
    cmp #&8a                                                          ; 3198: c9 8a       ..  :0a98[1]
    bcs returninkey                                                   ; 319a: b0 13       ..  :0a9a[1]
    pha                                                               ; 319c: 48          H   :0a9c[1]
    lda #&66                                                          ; 319d: a9 66       .f  :0a9d[1]
    jsr oswrch                                                        ; 319f: 20 ee ff     .. :0a9f[1]   ; Write character 102
    pla                                                               ; 31a2: 68          h   :0aa2[1]
    sec                                                               ; 31a3: 38          8   :0aa3[1]
    sbc #&50                                                          ; 31a4: e9 50       .P  :0aa4[1]
    jsr oswrch                                                        ; 31a6: 20 ee ff     .. :0aa6[1]   ; Write character
    jmp returninkey                                                   ; 31a9: 4c af 0a    L.. :0aa9[1]

.printstringandreturninkey
    jsr printstring                                                   ; 31ac: 20 26 1a     &. :0aac[1]
.returninkey
    lda temp2                                                         ; 31af: a5 89       ..  :0aaf[1]
    rts                                                               ; 31b1: 60          `   :0ab1[1]

; ----------------------------------------------------------------------------------
; Key-related strings
; ----------------------------------------------------------------------------------
.string_keyselection
    equb string_keyselection_end - string_keyselection_start          ; 31b2: 29          )   :0ab2[1]
.string_keyselection_start
    equb  16,  18,   0,   4,  25,   4, 224,   1, 182,   3             ; 31b3: 10 12 00... ... :0ab3[1]
    equs "K E Y"                                                      ; 31bd: 4b 20 45... K E :0abd[1]
    equb 25,  4, 96,  0, 82,  3                                       ; 31c2: 19 04 60... ..` :0ac2[1]
    equs "S E L E C T I O N"                                          ; 31c8: 53 20 45... S E :0ac8[1]
    equb 18,  0,  2                                                   ; 31d9: 12 00 02    ... :0ad9[1]
.string_keyselection_end
.string_up
    equb string_up_end - string_up_start                              ; 31dc: 0c          .   :0adc[1]
.string_up_start
    equb  25,   4, 196,   0, 188,   2                                 ; 31dd: 19 04 c4... ... :0add[1]
    equs "Up .. "                                                     ; 31e3: 55 70 20... Up  :0ae3[1]
.string_up_end
.string_down
    equb string_down_end - string_down_start                          ; 31e9: 0e          .   :0ae9[1]
.string_down_start
    equb  25,   4,  64,   0, 108,   2                                 ; 31ea: 19 04 40... ..@ :0aea[1]
    equs "Down .. "                                                   ; 31f0: 44 6f 77... Dow :0af0[1]
.string_down_end
.string_left
    equb string_left_end - string_left_start                          ; 31f8: 0e          .   :0af8[1]
.string_left_start
    equb 25,  4, 64,  0, 28,  2, 76                                   ; 31f9: 19 04 40... ..@ :0af9[1]
    equs "eft .. "                                                    ; 3200: 65 66 74... eft :0b00[1]
.string_left_end
.string_right
    equb string_right_end - string_right_start                        ; 3207: 0f          .   :0b07[1]
.string_right_start
    equb  25,   4,   0,   0, 204,   1                                 ; 3208: 19 04 00... ... :0b08[1]
    equs "Right .. "                                                  ; 320e: 52 69 67... Rig :0b0e[1]
.string_right_end
.string_jump
    equb string_jump_end - string_jump_start                          ; 3217: 0e          .   :0b17[1]
.string_jump_start
    equb  25,   4,  64,   0, 124,   1                                 ; 3218: 19 04 40... ..@ :0b18[1]
    equs "Jump .. "                                                   ; 321e: 4a 75 6d... Jum :0b1e[1]
.string_jump_end
.string_tab
    equb string_tab_end - string_tab_start                            ; 3226: 03          .   :0b26[1]
.string_tab_start
    equs "Tab"                                                        ; 3227: 54 61 62    Tab :0b27[1]
.string_tab_end
.string_capslock
    equb string_capslock_end - string_capslock_start                  ; 322a: 09          .   :0b2a[1]
.string_capslock_start
    equs "Caps Lock"                                                  ; 322b: 43 61 70... Cap :0b2b[1]
.string_capslock_end
.string_shiftlock
    equb string_shiftlock_end - string_shiftlock_start                ; 3234: 0a          .   :0b34[1]
.string_shiftlock_start
    equs "Shift Lock"                                                 ; 3235: 53 68 69... Shi :0b35[1]
.string_shiftlock_end
.string_escape
    equb string_escape_end - string_escape_start                      ; 323f: 06          .   :0b3f[1]
.string_escape_start
    equs "Escape"                                                     ; 3240: 45 73 63... Esc :0b40[1]
.string_escape_end
.string_space
    equb string_space_end - string_space_start                        ; 3246: 05          .   :0b46[1]
.string_space_start
    equs "Space"                                                      ; 3247: 53 70 61... Spa :0b47[1]
.string_space_end
.string_delete
    equb string_delete_end - string_delete_start                      ; 324c: 06          .   :0b4c[1]
.string_delete_start
    equs "Delete"                                                     ; 324d: 44 65 6c... Del :0b4d[1]
.string_delete_end
.string_return
    equb string_return_end - string_return_start                      ; 3253: 06          .   :0b53[1]
.string_return_start
    equs "Return"                                                     ; 3254: 52 65 74... Ret :0b54[1]
.string_return_end
.string_copy
    equb string_copy_end - string_copy_start                          ; 325a: 04          .   :0b5a[1]
.string_copy_start
    equs "Copy"                                                       ; 325b: 43 6f 70... Cop :0b5b[1]
.string_copy_end
.string_leftarrow
    equb string_leftarrow_end - string_leftarrow_start                ; 325f: 0a          .   :0b5f[1]
.string_leftarrow_start
    equs "Left Arrow"                                                 ; 3260: 4c 65 66... Lef :0b60[1]
.string_leftarrow_end
.string_rightarrow
    equb string_rightarrow_end - string_rightarrow_start              ; 326a: 0b          .   :0b6a[1]
.string_rightarrow_start
    equs "Right Arrow"                                                ; 326b: 52 69 67... Rig :0b6b[1]
.string_rightarrow_end
.string_downarrow
    equb string_downarrow_end - string_downarrow_start                ; 3276: 0a          .   :0b76[1]
.string_downarrow_start
    equs "Down Arrow"                                                 ; 3277: 44 6f 77... Dow :0b77[1]
.string_downarrow_end
.string_uparrow
    equb string_uparrow_end - string_uparrow_start                    ; 3281: 08          .   :0b81[1]
.string_uparrow_start
    equs "Up Arrow"                                                   ; 3282: 55 70 20... Up  :0b82[1]
.string_uparrow_end
.string_shift
    equb string_shift_end - string_shift_start                        ; 328a: 05          .   :0b8a[1]
.string_shift_start
    equs "Shift"                                                      ; 328b: 53 68 69... Shi :0b8b[1]
.string_shift_end
.string_control
    equb string_control_end - string_control_start                    ; 3290: 07          .   :0b90[1]
.string_control_start
    equs "Control"                                                    ; 3291: 43 6f 6e... Con :0b91[1]

; ----------------------------------------------------------------------------------
; Show the currently defined keys on screen
; ----------------------------------------------------------------------------------
.string_control_end
.showkeys_core
    ldx #<string_keys                                                 ; 3298: a2 f8       ..  :0b98[1]
    ldy #>string_keys                                                 ; 329a: a0 0b       ..  :0b9a[1]
    jsr printstring                                                   ; 329c: 20 26 1a     &. :0b9c[1]
    lda #osbyte_read_key_table_low                                    ; 329f: a9 ac       ..  :0b9f[1]
    ldx #0                                                            ; 32a1: a2 00       ..  :0ba1[1]
    ldy #&ff                                                          ; 32a3: a0 ff       ..  :0ba3[1]
    jsr osbyte                                                        ; 32a5: 20 f4 ff     .. :0ba5[1]   ; Read keyboard translation table address
    stx read                                                          ; 32a8: 86 76       .v  :0ba8[1]   ; X=value of keyboard translation table address (low byte)
    sty read + 1                                                      ; 32aa: 84 77       .w  :0baa[1]   ; Y=value of keyboard translation table address (high byte)
    ldx #&dc                                                          ; 32ac: a2 dc       ..  :0bac[1]
    ldy #&0a                                                          ; 32ae: a0 0a       ..  :0bae[1]
    jsr printstring                                                   ; 32b0: 20 26 1a     &. :0bb0[1]
    lda keynum_up                                                     ; 32b3: a5 64       .d  :0bb3[1]
    jsr printkeyname                                                  ; 32b5: 20 f0 0b     .. :0bb5[1]
    ldx #<string_down                                                 ; 32b8: a2 e9       ..  :0bb8[1]
    ldy #>string_down                                                 ; 32ba: a0 0a       ..  :0bba[1]
    jsr printstring                                                   ; 32bc: 20 26 1a     &. :0bbc[1]
    lda keynum_down                                                   ; 32bf: a5 63       .c  :0bbf[1]
    jsr printkeyname                                                  ; 32c1: 20 f0 0b     .. :0bc1[1]
    ldx #<string_left                                                 ; 32c4: a2 f8       ..  :0bc4[1]
    ldy #>string_left                                                 ; 32c6: a0 0a       ..  :0bc6[1]
    jsr printstring                                                   ; 32c8: 20 26 1a     &. :0bc8[1]
    lda keynum_left                                                   ; 32cb: a5 62       .b  :0bcb[1]
    jsr printkeyname                                                  ; 32cd: 20 f0 0b     .. :0bcd[1]
    ldx #<string_right                                                ; 32d0: a2 07       ..  :0bd0[1]
    ldy #>string_right                                                ; 32d2: a0 0b       ..  :0bd2[1]
    jsr printstring                                                   ; 32d4: 20 26 1a     &. :0bd4[1]
    lda keynum_right                                                  ; 32d7: a5 61       .a  :0bd7[1]
    jsr printkeyname                                                  ; 32d9: 20 f0 0b     .. :0bd9[1]
    ldx #<string_jump                                                 ; 32dc: a2 17       ..  :0bdc[1]
    ldy #>string_jump                                                 ; 32de: a0 0b       ..  :0bde[1]
    jsr printstring                                                   ; 32e0: 20 26 1a     &. :0be0[1]
    lda keynum_jump                                                   ; 32e3: a5 65       .e  :0be3[1]
    jsr printkeyname                                                  ; 32e5: 20 f0 0b     .. :0be5[1]
    ldx #<string_holdabort                                            ; 32e8: a2 09       ..  :0be8[1]
    ldy #>string_holdabort                                            ; 32ea: a0 0c       ..  :0bea[1]
    jsr printstring                                                   ; 32ec: 20 26 1a     &. :0bec[1]
    rts                                                               ; 32ef: 60          `   :0bef[1]

; ----------------------------------------------------------------------------------
; Print the name of the key whose INKEY code is in A
; ----------------------------------------------------------------------------------
.printkeyname
    eor #&ff                                                          ; 32f0: 49 ff       I.  :0bf0[1]
    tax                                                               ; 32f2: aa          .   :0bf2[1]
    sta temp1                                                         ; 32f3: 85 88       ..  :0bf3[1]
    jmp printkeyname_core                                             ; 32f5: 4c dc 09    L.. :0bf5[1]

; ----------------------------------------------------------------------------------
; Other key-related strings
; ----------------------------------------------------------------------------------
.string_keys
    equb string_keys_end - string_keys_start                          ; 32f8: 10          .   :0bf8[1]
.string_keys_start
    equb 25,  4,  0,  2, 32,  3, 18                                   ; 32f9: 19 04 00... ... :0bf9[1]
    equb 0, 4                                                         ; 3300: 00 04       ..  :0c00[1]
    equs "KEYS"                                                       ; 3302: 4b 45 59... KEY :0c02[1]
    equb 18,  0,  8                                                   ; 3306: 12 00 08    ... :0c06[1]
.string_keys_end
.string_holdabort
    equb string_holdabort_end - string_holdabort_start                ; 3309: 2e          .   :0c09[1]
.string_holdabort_start
    equb 18,  0,  2, 25,  4, 64,  0, 24,  1                           ; 330a: 12 00 02... ... :0c0a[1]
    equs "Hold .. 'H'"                                                ; 3313: 48 6f 6c... Hol :0c13[1]
    equb  25,   4,   0,   0, 200,   0                                 ; 331e: 19 04 00... ... :0c1e[1]
    equs "Abort .. Escape +'H'"                                       ; 3324: 41 62 6f... Abo :0c24[1]

; ----------------------------------------------------------------------------------
; Make movement sounds
; ----------------------------------------------------------------------------------
.string_holdabort_end
.domovementsound
    lda movementx                                                     ; 3338: a5 46       .F  :0c38[1]
    ora movementy                                                     ; 333a: 05 47       .G  :0c3a[1]
    bne ismoving                                                      ; 333c: d0 01       ..  :0c3c[1]
    rts                                                               ; 333e: 60          `   :0c3e[1]

.ismoving
    lda updatetimer                                                   ; 333f: a5 38       .8  :0c3f[1]
    and #1                                                            ; 3341: 29 01       ).  :0c41[1]
    beq domovementsound2                                              ; 3343: f0 01       ..  :0c43[1]
    rts                                                               ; 3345: 60          `   :0c45[1]

.domovementsound2
    lda movementtype                                                  ; 3346: a5 49       .I  :0c46[1]
    bne notmovinghorizontally                                         ; 3348: d0 05       ..  :0c48[1]
    lda #&64                                                          ; 334a: a9 64       .d  :0c4a[1]
    jmp playsoundblip                                                 ; 334c: 4c 8b 0c    L.. :0c4c[1]

.notmovinghorizontally
    cmp #1                                                            ; 334f: c9 01       ..  :0c4f[1]
    bne notmovingvertically                                           ; 3351: d0 05       ..  :0c51[1]
    lda #&96                                                          ; 3353: a9 96       ..  :0c53[1]
    jmp playsoundblip                                                 ; 3355: 4c 8b 0c    L.. :0c55[1]

.notmovingvertically
    cmp #2                                                            ; 3358: c9 02       ..  :0c58[1]
    bne notjumpingsound                                               ; 335a: d0 1a       ..  :0c5a[1]
    lda jumpfalldist                                                  ; 335c: a5 4a       .J  :0c5c[1]
    cmp #&0b                                                          ; 335e: c9 0b       ..  :0c5e[1]
    bcc jumpingupsound                                                ; 3360: 90 0a       ..  :0c60[1]
    lda #&be                                                          ; 3362: a9 be       ..  :0c62[1]
    sec                                                               ; 3364: 38          8   :0c64[1]
    sbc jumpfalldist                                                  ; 3365: e5 4a       .J  :0c65[1]
    sbc jumpfalldist                                                  ; 3367: e5 4a       .J  :0c67[1]
    jmp playsoundblip                                                 ; 3369: 4c 8b 0c    L.. :0c69[1]

.jumpingupsound
    lda #&96                                                          ; 336c: a9 96       ..  :0c6c[1]
    clc                                                               ; 336e: 18          .   :0c6e[1]
    adc jumpfalldist                                                  ; 336f: 65 4a       eJ  :0c6f[1]
    adc jumpfalldist                                                  ; 3371: 65 4a       eJ  :0c71[1]
    jmp playsoundblip                                                 ; 3373: 4c 8b 0c    L.. :0c73[1]

.notjumpingsound
    cmp #3                                                            ; 3376: c9 03       ..  :0c76[1]
    bne notfallingsound                                               ; 3378: d0 0a       ..  :0c78[1]
    lda #&6e                                                          ; 337a: a9 6e       .n  :0c7a[1]
    sec                                                               ; 337c: 38          8   :0c7c[1]
    sbc jumpfalldist                                                  ; 337d: e5 4a       .J  :0c7d[1]
    sbc jumpfalldist                                                  ; 337f: e5 4a       .J  :0c7f[1]
    jmp playsoundblip                                                 ; 3381: 4c 8b 0c    L.. :0c81[1]

.notfallingsound
    lda movementx                                                     ; 3384: a5 46       .F  :0c84[1]
    bne movingonlift                                                  ; 3386: d0 01       ..  :0c86[1]
    rts                                                               ; 3388: 60          `   :0c88[1]

.movingonlift
    lda #&64                                                          ; 3389: a9 64       .d  :0c89[1]
; ----------------------------------------------------------------------------------
; Play sound blip (movement sounds)
; A = pitch to play
; ----------------------------------------------------------------------------------
.playsoundblip
    sta blipsoundblock_pitch                                          ; 338b: 8d 9c 0c    ... :0c8b[1]
    ldx #<(blipsoundblock)                                            ; 338e: a2 98       ..  :0c8e[1]
    ldy #>(blipsoundblock)                                            ; 3390: a0 0c       ..  :0c90[1]
    lda #osword_sound                                                 ; 3392: a9 07       ..  :0c92[1]
    jsr osword                                                        ; 3394: 20 f1 ff     .. :0c94[1]   ; SOUND command
    rts                                                               ; 3397: 60          `   :0c97[1]

.blipsoundblock
    equw &0013                                                        ; 3398: 13 00       ..  :0c98[1]   ; Channel (2 bytes)
.blipsoundblock_envelope
    equw 1                                                            ; 339a: 01 00       ..  :0c9a[1]   ; Amplitude (2 bytes)
.blipsoundblock_pitch
    equw 0                                                            ; 339c: 00 00       ..  :0c9c[1]   ; Pitch (2 bytes)
.blipsoundblock_length
    equw 1                                                            ; 339e: 01 00       ..  :0c9e[1]   ; Duration (2 bytes)
.deathsoundblock
    equw 3                                                            ; 33a0: 03 00       ..  :0ca0[1]   ; Channel (2 bytes)
.deathsoundblock_envelope
    equw 2                                                            ; 33a2: 02 00       ..  :0ca2[1]   ; Amplitude (2 bytes)
.deathsoundblock_pitch
    equw &0078                                                        ; 33a4: 78 00       x.  :0ca4[1]   ; Pitch (2 bytes)
.deathsoundblock_length
    equw &001e                                                        ; 33a6: 1e 00       ..  :0ca6[1]   ; Duration (2 bytes)
.eggsoundblock
    equw &0010                                                        ; 33a8: 10 00       ..  :0ca8[1]   ; Channel (2 bytes)
.eggsoundblock_envelope
    equw 3                                                            ; 33aa: 03 00       ..  :0caa[1]   ; Amplitude (2 bytes)
.eggsoundblock_pitch
    equw 0                                                            ; 33ac: 00 00       ..  :0cac[1]   ; Pitch (2 bytes)
.eggsoundblock_length
    equw 4                                                            ; 33ae: 04 00       ..  :0cae[1]   ; Duration (2 bytes)
.bonussoundblock
    equw &0010                                                        ; 33b0: 10 00       ..  :0cb0[1]   ; Channel (2 bytes)
.bonussoundblock_envelope
    equw 1                                                            ; 33b2: 01 00       ..  :0cb2[1]   ; Amplitude (2 bytes)
.bonussoundblock_pitch
    equw 4                                                            ; 33b4: 04 00       ..  :0cb4[1]   ; Pitch (2 bytes)
.bonussoundblock_length
    equw 1                                                            ; 33b6: 01 00       ..  :0cb6[1]   ; Duration (2 bytes)
.unused2
    equb 0, 0, 0, 0, 0, 0, 0, 0                                       ; 33b8: 00 00 00... ... :0cb8[1]
; ----------------------------------------------------------------------------------
; Map data pointers
; ----------------------------------------------------------------------------------
.mapptrs
    equw map0data                                                     ; 33c0: d0 0c       ..  :0cc0[1]
    equw map1data                                                     ; 33c2: 3e 0d       >.  :0cc2[1]
    equw map2data                                                     ; 33c4: b2 0d       ..  :0cc4[1]
    equw map3data                                                     ; 33c6: 4b 0e       K.  :0cc6[1]
    equw map4data                                                     ; 33c8: dc 0e       ..  :0cc8[1]
    equw map5data                                                     ; 33ca: 6c 0f       l.  :0cca[1]
    equw map6data                                                     ; 33cc: e8 0f       ..  :0ccc[1]
    equw map7data                                                     ; 33ce: 72 10       r.  :0cce[1]
; 
; ----------------------------------------------------------------------------------
; Map 0 Data
; ----------------------------------------------------------------------------------
.map0data
    equb ((map0platform_end - map0platform_start) / 3)                ; 33d0: 0d          .   :0cd0[1]
    equb     ((map0ladder_end - map0ladder_start) / 3)                ; 33d1: 04          .   :0cd1[1]
    equb                                             0                ; 33d2: 00          .   :0cd2[1]
    equb         ((map0seed_end - map0seed_start) / 2)                ; 33d3: 0a          .   :0cd3[1]
    equb                                             2                ; 33d4: 02          .   :0cd4[1]
; Platform data (Y, startX, endX)
.map0platform_start
    equb  1,  0, 19                                                   ; 33d5: 01 00 13    ... :0cd5[1]
    equb  6,  1, 18                                                   ; 33d8: 06 01 12    ... :0cd8[1]
    equb 11,  2,  8                                                   ; 33db: 0b 02 08    ... :0cdb[1]
    equb 11, 14, 18                                                   ; 33de: 0b 0e 12    ... :0cde[1]
    equb 12,  9, 10                                                   ; 33e1: 0c 09 0a    ... :0ce1[1]
    equb 13, 11, 12                                                   ; 33e4: 0d 0b 0c    ... :0ce4[1]
    equb 14, 13, 14                                                   ; 33e7: 0e 0d 0e    ... :0ce7[1]
    equb 15, 15, 16                                                   ; 33ea: 0f 0f 10    ... :0cea[1]
    equb 16,  3,  7                                                   ; 33ed: 10 03 07    ... :0ced[1]
    equb 17,  9, 11                                                   ; 33f0: 11 09 0b    ... :0cf0[1]
    equb 21,  5,  9                                                   ; 33f3: 15 05 09    ... :0cf3[1]
    equb 21, 11, 16                                                   ; 33f6: 15 0b 10    ... :0cf6[1]
    equb 21, 18, 19                                                   ; 33f9: 15 12 13    ... :0cf9[1]
; Ladder data (X, bottom Y, top Y)
.map0platform_end
.map0ladder_start
    equb  3,  7, 13                                                   ; 33fc: 03 07 0d    ... :0cfc[1]
    equb  7,  2, 23                                                   ; 33ff: 07 02 17    ... :0cff[1]
    equb 11,  2,  8                                                   ; 3402: 0b 02 08    ... :0d02[1]
    equb 16,  2,  8                                                   ; 3405: 10 02 08    ... :0d05[1]
; Data for 12 eggs (X, Y)
.map0ladder_end
.map0eggs_start
    equb 4, 2                                                         ; 3408: 04 02       ..  :0d08[1]
    equb 1, 7                                                         ; 340a: 01 07       ..  :0d0a[1]
    equb 13,  7                                                       ; 340c: 0d 07       ..  :0d0c[1]
    equb 18,  7                                                       ; 340e: 12 07       ..  :0d0e[1]
    equb  2, 12                                                       ; 3410: 02 0c       ..  :0d10[1]
    equb 10, 13                                                       ; 3412: 0a 0d       ..  :0d12[1]
    equb 17, 12                                                       ; 3414: 11 0c       ..  :0d14[1]
    equb  4, 17                                                       ; 3416: 04 11       ..  :0d16[1]
    equb 10, 18                                                       ; 3418: 0a 12       ..  :0d18[1]
    equb  6, 22                                                       ; 341a: 06 16       ..  :0d1a[1]
    equb 13, 22                                                       ; 341c: 0d 16       ..  :0d1c[1]
    equb 19, 22                                                       ; 341e: 13 16       ..  :0d1e[1]
; Seed data (X, Y)
.map0eggs_end
.map0seed_start
    equb 2, 2                                                         ; 3420: 02 02       ..  :0d20[1]
    equb 13,  2                                                       ; 3422: 0d 02       ..  :0d22[1]
    equb 5, 7                                                         ; 3424: 05 07       ..  :0d24[1]
    equb 14,  7                                                       ; 3426: 0e 07       ..  :0d26[1]
    equb  5, 12                                                       ; 3428: 05 0c       ..  :0d28[1]
    equb 15, 12                                                       ; 342a: 0f 0c       ..  :0d2a[1]
    equb 16, 16                                                       ; 342c: 10 10       ..  :0d2c[1]
    equb 11, 18                                                       ; 342e: 0b 12       ..  :0d2e[1]
    equb  9, 22                                                       ; 3430: 09 16       ..  :0d30[1]
    equb 14, 22                                                       ; 3432: 0e 16       ..  :0d32[1]
; Bird data (X, Y)
.map0seed_end
.map0bird_data
    equb  5, 17                                                       ; 3434: 05 11       ..  :0d34[1]
    equb  8, 22                                                       ; 3436: 08 16       ..  :0d36[1]
    equb  4, 12                                                       ; 3438: 04 0c       ..  :0d38[1]
    equb 6, 7                                                         ; 343a: 06 07       ..  :0d3a[1]
    equb 12,  2                                                       ; 343c: 0c 02       ..  :0d3c[1]
; 
; ----------------------------------------------------------------------------------
; Map 1 Data
; ----------------------------------------------------------------------------------
.map1data
    equb ((map1platform_end - map1platform_start) / 3)                ; 343e: 0d          .   :0d3e[1]
    equb     ((map1ladder_end - map1ladder_start) / 3)                ; 343f: 08          .   :0d3f[1]
    equb                                             0                ; 3440: 00          .   :0d40[1]
    equb         ((map1seed_end - map1seed_start) / 2)                ; 3441: 07          .   :0d41[1]
    equb                                             3                ; 3442: 03          .   :0d42[1]
; Platform data (Y, startX, endX)
.map1platform_start
    equb 1, 0, 3                                                      ; 3443: 01 00 03    ... :0d43[1]
    equb  1,  5, 19                                                   ; 3446: 01 05 13    ... :0d46[1]
    equb 6, 0, 6                                                      ; 3449: 06 00 06    ... :0d49[1]
    equb  6,  8, 10                                                   ; 344c: 06 08 0a    ... :0d4c[1]
    equb  6, 12, 14                                                   ; 344f: 06 0c 0e    ... :0d4f[1]
    equb  6, 16, 19                                                   ; 3452: 06 10 13    ... :0d52[1]
    equb 11,  0,  3                                                   ; 3455: 0b 00 03    ... :0d55[1]
    equb 11,  5, 14                                                   ; 3458: 0b 05 0e    ... :0d58[1]
    equb 11, 16, 19                                                   ; 345b: 0b 10 13    ... :0d5b[1]
    equb 16,  0, 10                                                   ; 345e: 10 00 0a    ... :0d5e[1]
    equb 16, 12, 19                                                   ; 3461: 10 0c 13    ... :0d61[1]
    equb 21,  4, 10                                                   ; 3464: 15 04 0a    ... :0d64[1]
    equb 21, 12, 19                                                   ; 3467: 15 0c 13    ... :0d67[1]
; Ladder data (X, bottom Y, top Y)
.map1platform_end
.map1ladder_start
    equb  2,  2, 18                                                   ; 346a: 02 02 12    ... :0d6a[1]
    equb  4, 17, 23                                                   ; 346d: 04 11 17    ... :0d6d[1]
    equb  6,  7, 18                                                   ; 3470: 06 07 12    ... :0d70[1]
    equb 9, 2, 8                                                      ; 3473: 09 02 08    ... :0d73[1]
    equb  9, 12, 23                                                   ; 3476: 09 0c 17    ... :0d76[1]
    equb 13, 12, 18                                                   ; 3479: 0d 0c 12    ... :0d79[1]
    equb 17,  2, 13                                                   ; 347c: 11 02 0d    ... :0d7c[1]
    equb 17, 17, 23                                                   ; 347f: 11 11 17    ... :0d7f[1]
; Data for 12 eggs (X, Y)
.map1ladder_end
.map1eggs_start
    equb 5, 2                                                         ; 3482: 05 02       ..  :0d82[1]
    equb 12,  2                                                       ; 3484: 0c 02       ..  :0d84[1]
    equb 0, 7                                                         ; 3486: 00 07       ..  :0d86[1]
    equb 4, 7                                                         ; 3488: 04 07       ..  :0d88[1]
    equb 13,  7                                                       ; 348a: 0d 07       ..  :0d8a[1]
    equb  0, 12                                                       ; 348c: 00 0c       ..  :0d8c[1]
    equb  7, 12                                                       ; 348e: 07 0c       ..  :0d8e[1]
    equb 19, 12                                                       ; 3490: 13 0c       ..  :0d90[1]
    equb  7, 17                                                       ; 3492: 07 11       ..  :0d92[1]
    equb  7, 22                                                       ; 3494: 07 16       ..  :0d94[1]
    equb 15, 22                                                       ; 3496: 0f 16       ..  :0d96[1]
    equb 19, 22                                                       ; 3498: 13 16       ..  :0d98[1]
; Seed data (X, Y)
.map1eggs_end
.map1seed_start
    equb 0, 2                                                         ; 349a: 00 02       ..  :0d9a[1]
    equb 3, 2                                                         ; 349c: 03 02       ..  :0d9c[1]
    equb 15,  2                                                       ; 349e: 0f 02       ..  :0d9e[1]
    equb 16,  7                                                       ; 34a0: 10 07       ..  :0da0[1]
    equb  0, 17                                                       ; 34a2: 00 11       ..  :0da2[1]
    equb 10, 17                                                       ; 34a4: 0a 11       ..  :0da4[1]
    equb 12, 22                                                       ; 34a6: 0c 16       ..  :0da6[1]
; Bird data (X, Y)
.map1seed_end
.map1bird_data
    equb  6, 22                                                       ; 34a8: 06 16       ..  :0da8[1]
    equb 1, 2                                                         ; 34aa: 01 02       ..  :0daa[1]
    equb 18, 12                                                       ; 34ac: 12 0c       ..  :0dac[1]
    equb 11, 12                                                       ; 34ae: 0b 0c       ..  :0dae[1]
    equb 13, 22                                                       ; 34b0: 0d 16       ..  :0db0[1]
; 
; ----------------------------------------------------------------------------------
; Map 2 Data
; ----------------------------------------------------------------------------------
.map2data
    equb ((map2platform_end - map2platform_start) / 3)                ; 34b2: 18          .   :0db2[1]
    equb     ((map2ladder_end - map2ladder_start) / 3)                ; 34b3: 07          .   :0db3[1]
    equb                                             1                ; 34b4: 01          .   :0db4[1]
    equb         ((map2seed_end - map2seed_start) / 2)                ; 34b5: 0a          .   :0db5[1]
    equb                                             3                ; 34b6: 03          .   :0db6[1]
; Platform data (Y, startX, endX)
.map2platform_start
    equb 1, 0, 2                                                      ; 34b7: 01 00 02    ... :0db7[1]
    equb 2, 3, 4                                                      ; 34ba: 02 03 04    ... :0dba[1]
    equb 1, 7, 9                                                      ; 34bd: 01 07 09    ... :0dbd[1]
    equb  1, 11, 19                                                   ; 34c0: 01 0b 13    ... :0dc0[1]
    equb  5, 15, 18                                                   ; 34c3: 05 0f 12    ... :0dc3[1]
    equb 10,  0,  4                                                   ; 34c6: 0a 00 04    ... :0dc6[1]
    equb 15,  0,  3                                                   ; 34c9: 0f 00 03    ... :0dc9[1]
    equb 19,  3,  4                                                   ; 34cc: 13 03 04    ... :0dcc[1]
    equb  6,  7, 10                                                   ; 34cf: 06 07 0a    ... :0dcf[1]
    equb  6, 12, 12                                                   ; 34d2: 06 0c 0c    ... :0dd2[1]
    equb  7, 14, 14                                                   ; 34d5: 07 0e 0e    ... :0dd5[1]
    equb  8, 15, 15                                                   ; 34d8: 08 0f 0f    ... :0dd8[1]
    equb  9, 17, 17                                                   ; 34db: 09 11 11    ... :0ddb[1]
    equb 10, 18, 19                                                   ; 34de: 0a 12 13    ... :0dde[1]
    equb 12, 12, 13                                                   ; 34e1: 0c 0c 0d    ... :0de1[1]
    equb 12, 15, 15                                                   ; 34e4: 0c 0f 0f    ... :0de4[1]
    equb 15, 18, 19                                                   ; 34e7: 0f 12 13    ... :0de7[1]
    equb 16, 17, 17                                                   ; 34ea: 10 11 11    ... :0dea[1]
    equb 17, 15, 15                                                   ; 34ed: 11 0f 0f    ... :0ded[1]
    equb 18, 12, 13                                                   ; 34f0: 12 0c 0d    ... :0df0[1]
    equb 19,  7, 11                                                   ; 34f3: 13 07 0b    ... :0df3[1]
    equb 21, 13, 15                                                   ; 34f6: 15 0d 0f    ... :0df6[1]
    equb 20, 16, 16                                                   ; 34f9: 14 10 10    ... :0df9[1]
    equb 20, 18, 19                                                   ; 34fc: 14 12 13    ... :0dfc[1]
; Ladder data (X, bottom Y, top Y)
.map2platform_end
.map2ladder_start
    equb  1,  2, 12                                                   ; 34ff: 01 02 0c    ... :0dff[1]
    equb  3, 11, 21                                                   ; 3502: 03 0b 15    ... :0e02[1]
    equb  8,  7, 21                                                   ; 3505: 08 07 15    ... :0e05[1]
    equb 10,  7, 21                                                   ; 3508: 0a 07 15    ... :0e08[1]
    equb 13, 19, 23                                                   ; 350b: 0d 13 17    ... :0e0b[1]
    equb 18,  2,  7                                                   ; 350e: 12 02 07    ... :0e0e[1]
    equb 19, 11, 17                                                   ; 3511: 13 0b 11    ... :0e11[1]
; Lift X
.map2ladder_end
    equb 5                                                            ; 3514: 05          .   :0e14[1]
; Data for 12 eggs (X, Y)
.map2eggs_start
    equb 4, 3                                                         ; 3515: 04 03       ..  :0e15[1]
    equb 15,  2                                                       ; 3517: 0f 02       ..  :0e17[1]
    equb 16,  6                                                       ; 3519: 10 06       ..  :0e19[1]
    equb  4, 11                                                       ; 351b: 04 0b       ..  :0e1b[1]
    equb  4, 20                                                       ; 351d: 04 14       ..  :0e1d[1]
    equb 9, 7                                                         ; 351f: 09 07       ..  :0e1f[1]
    equb 15,  9                                                       ; 3521: 0f 09       ..  :0e21[1]
    equb 15, 13                                                       ; 3523: 0f 0d       ..  :0e23[1]
    equb  1, 16                                                       ; 3525: 01 10       ..  :0e25[1]
    equb 17, 17                                                       ; 3527: 11 11       ..  :0e27[1]
    equb 19, 18                                                       ; 3529: 13 12       ..  :0e29[1]
    equb 19, 21                                                       ; 352b: 13 15       ..  :0e2b[1]
; Seed data (X, Y)
.map2eggs_end
.map2seed_start
    equb 2, 2                                                         ; 352d: 02 02       ..  :0e2d[1]
    equb  2, 11                                                       ; 352f: 02 0b       ..  :0e2f[1]
    equb 7, 7                                                         ; 3531: 07 07       ..  :0e31[1]
    equb  7, 20                                                       ; 3533: 07 14       ..  :0e33[1]
    equb  0, 16                                                       ; 3535: 00 10       ..  :0e35[1]
    equb 13,  2                                                       ; 3537: 0d 02       ..  :0e37[1]
    equb 12, 19                                                       ; 3539: 0c 13       ..  :0e39[1]
    equb 15, 18                                                       ; 353b: 0f 12       ..  :0e3b[1]
    equb 13, 13                                                       ; 353d: 0d 0d       ..  :0e3d[1]
    equb 18, 21                                                       ; 353f: 12 15       ..  :0e3f[1]
; Bird data (X, Y)
.map2seed_end
.map2bird_data
    equb  2, 16                                                       ; 3541: 02 10       ..  :0e41[1]
    equb  9, 20                                                       ; 3543: 09 14       ..  :0e43[1]
    equb 17,  6                                                       ; 3545: 11 06       ..  :0e45[1]
    equb 0, 2                                                         ; 3547: 00 02       ..  :0e47[1]
    equb 8, 7                                                         ; 3549: 08 07       ..  :0e49[1]
; 
; ----------------------------------------------------------------------------------
; Map 3 Data
; ----------------------------------------------------------------------------------
.map3data
    equb ((map3platform_end - map3platform_start) / 3)                ; 354b: 1a          .   :0e4b[1]
    equb     ((map3ladder_end - map3ladder_start) / 3)                ; 354c: 05          .   :0e4c[1]
    equb                                             1                ; 354d: 01          .   :0e4d[1]
    equb         ((map3seed_end - map3seed_start) / 2)                ; 354e: 06          .   :0e4e[1]
    equb                                             4                ; 354f: 04          .   :0e4f[1]
; Platform data (Y, startX, endX)
.map3platform_start
    equb 1, 0, 4                                                      ; 3550: 01 00 04    ... :0e50[1]
    equb  1,  6, 10                                                   ; 3553: 01 06 0a    ... :0e53[1]
    equb  1, 13, 19                                                   ; 3556: 01 0d 13    ... :0e56[1]
    equb 6, 0, 4                                                      ; 3559: 06 00 04    ... :0e59[1]
    equb  6,  7, 10                                                   ; 355c: 06 07 0a    ... :0e5c[1]
    equb  6, 13, 17                                                   ; 355f: 06 0d 11    ... :0e5f[1]
    equb  5, 19, 19                                                   ; 3562: 05 13 13    ... :0e62[1]
    equb 12,  0,  1                                                   ; 3565: 0c 00 01    ... :0e65[1]
    equb 13,  3,  3                                                   ; 3568: 0d 03 03    ... :0e68[1]
    equb 14,  5,  5                                                   ; 356b: 0e 05 05    ... :0e6b[1]
    equb 15,  7,  8                                                   ; 356e: 0f 07 08    ... :0e6e[1]
    equb 11,  7,  8                                                   ; 3571: 0b 07 08    ... :0e71[1]
    equb 11, 13, 16                                                   ; 3574: 0b 0d 10    ... :0e74[1]
    equb 10, 18, 19                                                   ; 3577: 0a 12 13    ... :0e77[1]
    equb 16,  8, 10                                                   ; 357a: 10 08 0a    ... :0e7a[1]
    equb 17,  0,  0                                                   ; 357d: 11 00 00    ... :0e7d[1]
    equb 18,  2,  2                                                   ; 3580: 12 02 02    ... :0e80[1]
    equb 19,  3,  3                                                   ; 3583: 13 03 03    ... :0e83[1]
    equb 20,  4,  4                                                   ; 3586: 14 04 04    ... :0e86[1]
    equb 21,  5,  5                                                   ; 3589: 15 05 05    ... :0e89[1]
    equb 21,  7, 10                                                   ; 358c: 15 07 0a    ... :0e8c[1]
    equb 16, 13, 14                                                   ; 358f: 10 0d 0e    ... :0e8f[1]
    equb 16, 16, 16                                                   ; 3592: 10 10 10    ... :0e92[1]
    equb 16, 18, 19                                                   ; 3595: 10 12 13    ... :0e95[1]
    equb 21, 13, 15                                                   ; 3598: 15 0d 0f    ... :0e98[1]
    equb 21, 17, 19                                                   ; 359b: 15 11 13    ... :0e9b[1]
; Ladder data (X, bottom Y, top Y)
.map3platform_end
.map3ladder_start
    equb 3, 2, 8                                                      ; 359e: 03 02 08    ... :0e9e[1]
    equb  8,  2, 23                                                   ; 35a1: 08 02 17    ... :0ea1[1]
    equb 14, 12, 23                                                   ; 35a4: 0e 0c 17    ... :0ea4[1]
    equb 15,  2,  8                                                   ; 35a7: 0f 02 08    ... :0ea7[1]
    equb 19, 16, 23                                                   ; 35aa: 13 10 17    ... :0eaa[1]
; Lift X
.map3ladder_end
    equb &0b                                                          ; 35ad: 0b          .   :0ead[1]
; Data for 12 eggs (X, Y)
.map3eggs_start
    equb 0, 2                                                         ; 35ae: 00 02       ..  :0eae[1]
    equb  0, 13                                                       ; 35b0: 00 0d       ..  :0eb0[1]
    equb  0, 18                                                       ; 35b2: 00 12       ..  :0eb2[1]
    equb 7, 7                                                         ; 35b4: 07 07       ..  :0eb4[1]
    equb  9, 17                                                       ; 35b6: 09 11       ..  :0eb6[1]
    equb 13,  2                                                       ; 35b8: 0d 02       ..  :0eb8[1]
    equb 16,  7                                                       ; 35ba: 10 07       ..  :0eba[1]
    equb 13, 12                                                       ; 35bc: 0d 0c       ..  :0ebc[1]
    equb 19, 11                                                       ; 35be: 13 0b       ..  :0ebe[1]
    equb 17, 16                                                       ; 35c0: 11 10       ..  :0ec0[1]
    equb 16, 21                                                       ; 35c2: 10 15       ..  :0ec2[1]
    equb 16, 24                                                       ; 35c4: 10 18       ..  :0ec4[1]
; Seed data (X, Y)
.map3eggs_end
.map3seed_start
    equb 0, 7                                                         ; 35c6: 00 07       ..  :0ec6[1]
    equb 10,  2                                                       ; 35c8: 0a 02       ..  :0ec8[1]
    equb 18,  2                                                       ; 35ca: 12 02       ..  :0eca[1]
    equb  5, 15                                                       ; 35cc: 05 0f       ..  :0ecc[1]
    equb  9, 22                                                       ; 35ce: 09 16       ..  :0ece[1]
    equb 13, 22                                                       ; 35d0: 0d 16       ..  :0ed0[1]
; Bird data (X, Y)
.map3seed_end
.map3bird_data
    equb 10, 22                                                       ; 35d2: 0a 16       ..  :0ed2[1]
    equb 17, 22                                                       ; 35d4: 11 16       ..  :0ed4[1]
    equb 17,  2                                                       ; 35d6: 11 02       ..  :0ed6[1]
    equb 4, 2                                                         ; 35d8: 04 02       ..  :0ed8[1]
    equb 10,  7                                                       ; 35da: 0a 07       ..  :0eda[1]
; 
; ----------------------------------------------------------------------------------
; Map 4 Data
; ----------------------------------------------------------------------------------
.map4data
    equb ((map4platform_end - map4platform_start) / 3)                ; 35dc: 11          .   :0edc[1]
    equb     ((map4ladder_end - map4ladder_start) / 3)                ; 35dd: 09          .   :0edd[1]
    equb                                             1                ; 35de: 01          .   :0ede[1]
    equb         ((map4seed_end - map4seed_start) / 2)                ; 35df: 0d          .   :0edf[1]
    equb                                             4                ; 35e0: 04          .   :0ee0[1]
; Platform data (Y, startX, endX)
.map4platform_start
    equb 1, 0, 1                                                      ; 35e1: 01 00 01    ... :0ee1[1]
    equb  1,  3, 11                                                   ; 35e4: 01 03 0b    ... :0ee4[1]
    equb  1, 13, 15                                                   ; 35e7: 01 0d 0f    ... :0ee7[1]
    equb  1, 18, 19                                                   ; 35ea: 01 12 13    ... :0eea[1]
    equb 6, 0, 5                                                      ; 35ed: 06 00 05    ... :0eed[1]
    equb  6,  9, 12                                                   ; 35f0: 06 09 0c    ... :0ef0[1]
    equb  6, 14, 15                                                   ; 35f3: 06 0e 0f    ... :0ef3[1]
    equb 11,  0,  5                                                   ; 35f6: 0b 00 05    ... :0ef6[1]
    equb 11, 10, 15                                                   ; 35f9: 0b 0a 0f    ... :0ef9[1]
    equb 11, 19, 19                                                   ; 35fc: 0b 13 13    ... :0efc[1]
    equb 16,  0,  5                                                   ; 35ff: 10 00 05    ... :0eff[1]
    equb 21,  3,  7                                                   ; 3602: 15 03 07    ... :0f02[1]
    equb 20,  9,  9                                                   ; 3605: 14 09 09    ... :0f05[1]
    equb 19, 11, 13                                                   ; 3608: 13 0b 0d    ... :0f08[1]
    equb 18, 14, 14                                                   ; 360b: 12 0e 0e    ... :0f0b[1]
    equb 22, 12, 15                                                   ; 360e: 16 0c 0f    ... :0f0e[1]
    equb 21, 18, 19                                                   ; 3611: 15 12 13    ... :0f11[1]
; Ladder data (X, bottom Y, top Y)
.map4platform_end
.map4ladder_start
    equb 3, 2, 8                                                      ; 3614: 03 02 08    ... :0f14[1]
    equb  2, 12, 18                                                   ; 3617: 02 0c 12    ... :0f17[1]
    equb  4, 12, 23                                                   ; 361a: 04 0c 17    ... :0f1a[1]
    equb 7, 2, 7                                                      ; 361d: 07 02 07    ... :0f1d[1]
    equb  7, 10, 17                                                   ; 3620: 07 0a 11    ... :0f20[1]
    equb 10,  2,  8                                                   ; 3623: 0a 02 08    ... :0f23[1]
    equb 12,  7, 13                                                   ; 3626: 0c 07 0d    ... :0f26[1]
    equb 12, 20, 24                                                   ; 3629: 0c 14 18    ... :0f29[1]
    equb 14,  2,  8                                                   ; 362c: 0e 02 08    ... :0f2c[1]
; Lift X
.map4ladder_end
    equb &10                                                          ; 362f: 10          .   :0f2f[1]
; Data for 12 eggs (X, Y)
.map4eggs_start
    equb 0, 2                                                         ; 3630: 00 02       ..  :0f30[1]
    equb 0, 7                                                         ; 3632: 00 07       ..  :0f32[1]
    equb  0, 12                                                       ; 3634: 00 0c       ..  :0f34[1]
    equb  0, 17                                                       ; 3636: 00 11       ..  :0f36[1]
    equb 5, 7                                                         ; 3638: 05 07       ..  :0f38[1]
    equb  5, 22                                                       ; 363a: 05 16       ..  :0f3a[1]
    equb  9, 11                                                       ; 363c: 09 0b       ..  :0f3c[1]
    equb 13,  6                                                       ; 363e: 0d 06       ..  :0f3e[1]
    equb 11, 20                                                       ; 3640: 0b 14       ..  :0f40[1]
    equb 13, 23                                                       ; 3642: 0d 17       ..  :0f42[1]
    equb 19, 12                                                       ; 3644: 13 0c       ..  :0f44[1]
    equb 19, 22                                                       ; 3646: 13 16       ..  :0f46[1]
; Seed data (X, Y)
.map4eggs_end
.map4seed_start
    equb 4, 2                                                         ; 3648: 04 02       ..  :0f48[1]
    equb 5, 2                                                         ; 364a: 05 02       ..  :0f4a[1]
    equb 6, 2                                                         ; 364c: 06 02       ..  :0f4c[1]
    equb 13,  2                                                       ; 364e: 0d 02       ..  :0f4e[1]
    equb 15,  2                                                       ; 3650: 0f 02       ..  :0f50[1]
    equb 18,  2                                                       ; 3652: 12 02       ..  :0f52[1]
    equb 10, 12                                                       ; 3654: 0a 0c       ..  :0f54[1]
    equb 15, 12                                                       ; 3656: 0f 0c       ..  :0f56[1]
    equb  3, 22                                                       ; 3658: 03 16       ..  :0f58[1]
    equb  6, 22                                                       ; 365a: 06 16       ..  :0f5a[1]
    equb  7, 22                                                       ; 365c: 07 16       ..  :0f5c[1]
    equb 15, 23                                                       ; 365e: 0f 17       ..  :0f5e[1]
    equb 18, 22                                                       ; 3660: 12 16       ..  :0f60[1]
; Bird data (X, Y)
.map4seed_end
.map4bird_data
    equb 1, 7                                                         ; 3662: 01 07       ..  :0f62[1]
    equb  3, 12                                                       ; 3664: 03 0c       ..  :0f64[1]
    equb  1, 17                                                       ; 3666: 01 11       ..  :0f66[1]
    equb 14, 12                                                       ; 3668: 0e 0c       ..  :0f68[1]
    equb 15,  7                                                       ; 366a: 0f 07       ..  :0f6a[1]
; 
; ----------------------------------------------------------------------------------
; Map 5 Data
; ----------------------------------------------------------------------------------
.map5data
    equb ((map5platform_end - map5platform_start) / 3)                ; 366c: 10          .   :0f6c[1]
    equb     ((map5ladder_end - map5ladder_start) / 3)                ; 366d: 06          .   :0f6d[1]
    equb                                             1                ; 366e: 01          .   :0f6e[1]
    equb         ((map5seed_end - map5seed_start) / 2)                ; 366f: 09          .   :0f6f[1]
    equb                                             4                ; 3670: 04          .   :0f70[1]
; Platform data (Y, startX, endX)
.map5platform_start
    equb 1, 0, 2                                                      ; 3671: 01 00 02    ... :0f71[1]
    equb 1, 6, 8                                                      ; 3674: 01 06 08    ... :0f74[1]
    equb  1, 11, 14                                                   ; 3677: 01 0b 0e    ... :0f77[1]
    equb 6, 0, 1                                                      ; 367a: 06 00 01    ... :0f7a[1]
    equb 6, 3, 5                                                      ; 367d: 06 03 05    ... :0f7d[1]
    equb  6, 12, 14                                                   ; 3680: 06 0c 0e    ... :0f80[1]
    equb 11,  2,  7                                                   ; 3683: 0b 02 07    ... :0f83[1]
    equb 11, 12, 17                                                   ; 3686: 0b 0c 11    ... :0f86[1]
    equb 10, 17, 19                                                   ; 3689: 0a 11 13    ... :0f89[1]
    equb 16,  0,  5                                                   ; 368c: 10 00 05    ... :0f8c[1]
    equb 16, 16, 19                                                   ; 368f: 10 10 13    ... :0f8f[1]
    equb 21,  6,  6                                                   ; 3692: 15 06 06    ... :0f92[1]
    equb 21,  8,  8                                                   ; 3695: 15 08 08    ... :0f95[1]
    equb 20, 12, 17                                                   ; 3698: 14 0c 11    ... :0f98[1]
    equb 22, 17, 19                                                   ; 369b: 16 11 13    ... :0f9b[1]
    equb  2, 17, 17                                                   ; 369e: 02 11 11    ... :0f9e[1]
; Ladder data (X, bottom Y, top Y)
.map5platform_end
.map5ladder_start
    equb 0, 2, 8                                                      ; 36a1: 00 02 08    ... :0fa1[1]
    equb  4,  4, 18                                                   ; 36a4: 04 04 12    ... :0fa4[1]
    equb 14,  7, 13                                                   ; 36a7: 0e 07 0d    ... :0fa7[1]
    equb 14, 19, 23                                                   ; 36aa: 0e 13 17    ... :0faa[1]
    equb 17,  2, 13                                                   ; 36ad: 11 02 0d    ... :0fad[1]
    equb 17, 16, 24                                                   ; 36b0: 11 10 18    ... :0fb0[1]
; Lift X
.map5ladder_end
    equb 9                                                            ; 36b3: 09          .   :0fb3[1]
; Data for 12 eggs (X, Y)
.map5eggs_start
    equb 2, 2                                                         ; 36b4: 02 02       ..  :0fb4[1]
    equb 16,  2                                                       ; 36b6: 10 02       ..  :0fb6[1]
    equb 5, 7                                                         ; 36b8: 05 07       ..  :0fb8[1]
    equb 12,  7                                                       ; 36ba: 0c 07       ..  :0fba[1]
    equb 12, 12                                                       ; 36bc: 0c 0c       ..  :0fbc[1]
    equb 16, 12                                                       ; 36be: 10 0c       ..  :0fbe[1]
    equb  7, 17                                                       ; 36c0: 07 11       ..  :0fc0[1]
    equb  3, 21                                                       ; 36c2: 03 15       ..  :0fc2[1]
    equb  6, 22                                                       ; 36c4: 06 16       ..  :0fc4[1]
    equb 12, 21                                                       ; 36c6: 0c 15       ..  :0fc6[1]
    equb 19, 17                                                       ; 36c8: 13 11       ..  :0fc8[1]
    equb 19, 23                                                       ; 36ca: 13 17       ..  :0fca[1]
; Seed data (X, Y)
.map5eggs_end
.map5seed_start
    equb 11,  2                                                       ; 36cc: 0b 02       ..  :0fcc[1]
    equb 12,  2                                                       ; 36ce: 0c 02       ..  :0fce[1]
    equb 13,  2                                                       ; 36d0: 0d 02       ..  :0fd0[1]
    equb 14,  2                                                       ; 36d2: 0e 02       ..  :0fd2[1]
    equb  0, 17                                                       ; 36d4: 00 11       ..  :0fd4[1]
    equb  2, 17                                                       ; 36d6: 02 11       ..  :0fd6[1]
    equb  3, 17                                                       ; 36d8: 03 11       ..  :0fd8[1]
    equb  7, 12                                                       ; 36da: 07 0c       ..  :0fda[1]
    equb 19, 11                                                       ; 36dc: 13 0b       ..  :0fdc[1]
; Bird data (X, Y)
.map5seed_end
.map5bird_data
    equb  1, 17                                                       ; 36de: 01 11       ..  :0fde[1]
    equb 1, 2                                                         ; 36e0: 01 02       ..  :0fe0[1]
    equb 18, 17                                                       ; 36e2: 12 11       ..  :0fe2[1]
    equb 13,  7                                                       ; 36e4: 0d 07       ..  :0fe4[1]
    equb 18, 11                                                       ; 36e6: 12 0b       ..  :0fe6[1]
; 
; ----------------------------------------------------------------------------------
; Map 6 Data
; ----------------------------------------------------------------------------------
.map6data
    equb ((map6platform_end - map6platform_start) / 3)                ; 36e8: 17          .   :0fe8[1]
    equb     ((map6ladder_end - map6ladder_start) / 3)                ; 36e9: 07          .   :0fe9[1]
    equb                                             1                ; 36ea: 01          .   :0fea[1]
    equb         ((map6seed_end - map6seed_start) / 2)                ; 36eb: 04          .   :0feb[1]
    equb                                             3                ; 36ec: 03          .   :0fec[1]
; Platform data (Y, startX, endX)
.map6platform_start
    equb 21, 11, 16                                                   ; 36ed: 15 0b 10    ... :0fed[1]
    equb 16,  0,  4                                                   ; 36f0: 10 00 04    ... :0ff0[1]
    equb 16,  6,  7                                                   ; 36f3: 10 06 07    ... :0ff3[1]
    equb 11,  0,  2                                                   ; 36f6: 0b 00 02    ... :0ff6[1]
    equb 6, 1, 3                                                      ; 36f9: 06 01 03    ... :0ff9[1]
    equb 4, 0, 1                                                      ; 36fc: 04 00 01    ... :0ffc[1]
    equb 1, 3, 4                                                      ; 36ff: 01 03 04    ... :0fff[1]
    equb 2, 5, 6                                                      ; 3702: 02 05 06    ... :1002[1]
    equb 1, 7, 8                                                      ; 3705: 01 07 08    ... :1005[1]
    equb 2, 9, 9                                                      ; 3708: 02 09 09    ... :1008[1]
    equb 3, 9, 9                                                      ; 370b: 03 09 09    ... :100b[1]
    equb  3, 12, 12                                                   ; 370e: 03 0c 0c    ... :100e[1]
    equb 8, 5, 8                                                      ; 3711: 08 05 08    ... :1011[1]
    equb 9, 5, 5                                                      ; 3714: 09 05 05    ... :1014[1]
    equb 10,  5,  5                                                   ; 3717: 0a 05 05    ... :1017[1]
    equb 11,  5,  5                                                   ; 371a: 0b 05 05    ... :101a[1]
    equb 12,  5,  5                                                   ; 371d: 0c 05 05    ... :101d[1]
    equb 11,  8,  8                                                   ; 3720: 0b 08 08    ... :1020[1]
    equb 12,  8,  8                                                   ; 3723: 0c 08 08    ... :1023[1]
    equb 15, 12, 15                                                   ; 3726: 0f 0c 0f    ... :1026[1]
    equb 11, 10, 11                                                   ; 3729: 0b 0a 0b    ... :1029[1]
    equb  9, 14, 16                                                   ; 372c: 09 0e 10    ... :102c[1]
    equb  2, 15, 16                                                   ; 372f: 02 0f 10    ... :102f[1]
; Ladder data (X, bottom Y, top Y)
.map6platform_end
.map6ladder_start
    equb  1,  2, 18                                                   ; 3732: 01 02 12    ... :1032[1]
    equb 3, 2, 8                                                      ; 3735: 03 02 08    ... :1035[1]
    equb  5, 20, 24                                                   ; 3738: 05 14 18    ... :1038[1]
    equb  7, 20, 24                                                   ; 373b: 07 14 18    ... :103b[1]
    equb  9, 20, 24                                                   ; 373e: 09 14 18    ... :103e[1]
    equb 13, 16, 23                                                   ; 3741: 0d 10 17    ... :1041[1]
    equb 15, 10, 17                                                   ; 3744: 0f 0a 11    ... :1044[1]
; Lift X
.map6ladder_end
    equb &12                                                          ; 3747: 12          .   :1047[1]
; Data for 12 eggs (X, Y)
.map6eggs_start
    equb  6, 23                                                       ; 3748: 06 17       ..  :1048[1]
    equb  8, 23                                                       ; 374a: 08 17       ..  :104a[1]
    equb 10, 23                                                       ; 374c: 0a 17       ..  :104c[1]
    equb 15, 22                                                       ; 374e: 0f 16       ..  :104e[1]
    equb  7, 17                                                       ; 3750: 07 11       ..  :1050[1]
    equb 2, 3                                                         ; 3752: 02 03       ..  :1052[1]
    equb 7, 9                                                         ; 3754: 07 09       ..  :1054[1]
    equb 11, 12                                                       ; 3756: 0b 0c       ..  :1056[1]
    equb 16, 15                                                       ; 3758: 10 0f       ..  :1058[1]
    equb 16, 10                                                       ; 375a: 10 0a       ..  :105a[1]
    equb 12,  4                                                       ; 375c: 0c 04       ..  :105c[1]
    equb 17,  2                                                       ; 375e: 11 02       ..  :105e[1]
; Seed data (X, Y)
.map6eggs_end
.map6seed_start
    equb 2, 7                                                         ; 3760: 02 07       ..  :1060[1]
    equb  3, 17                                                       ; 3762: 03 11       ..  :1062[1]
    equb 8, 9                                                         ; 3764: 08 09       ..  :1064[1]
    equb 12, 22                                                       ; 3766: 0c 16       ..  :1066[1]
; Bird data (X, Y)
.map6seed_end
.map6bird_data
    equb 13, 22                                                       ; 3768: 0d 16       ..  :1068[1]
    equb  1, 17                                                       ; 376a: 01 11       ..  :106a[1]
    equb 14, 10                                                       ; 376c: 0e 0a       ..  :106c[1]
    equb 0, 5                                                         ; 376e: 00 05       ..  :106e[1]
    equb  2, 12                                                       ; 3770: 02 0c       ..  :1070[1]
; 
; ----------------------------------------------------------------------------------
; Map 7 Data
; ----------------------------------------------------------------------------------
.map7data
    equb ((map7platform_end - map7platform_start) / 3)                ; 3772: 0f          .   :1072[1]
    equb     ((map7ladder_end - map7ladder_start) / 3)                ; 3773: 06          .   :1073[1]
    equb                                             0                ; 3774: 00          .   :1074[1]
    equb         ((map7seed_end - map7seed_start) / 2)                ; 3775: 10          .   :1075[1]
    equb                                             3                ; 3776: 03          .   :1076[1]
; Platform data (Y, startX, endX)
.map7platform_start
    equb  1,  0, 19                                                   ; 3777: 01 00 13    ... :1077[1]
    equb 6, 2, 4                                                      ; 377a: 06 02 04    ... :107a[1]
    equb  6,  7, 13                                                   ; 377d: 06 07 0d    ... :107d[1]
    equb  6, 16, 18                                                   ; 3780: 06 10 12    ... :1080[1]
    equb 11,  2,  5                                                   ; 3783: 0b 02 05    ... :1083[1]
    equb 11,  8, 12                                                   ; 3786: 0b 08 0c    ... :1086[1]
    equb 11, 15, 18                                                   ; 3789: 0b 0f 12    ... :1089[1]
    equb 16,  3,  6                                                   ; 378c: 10 03 06    ... :108c[1]
    equb 16,  9, 11                                                   ; 378f: 10 09 0b    ... :108f[1]
    equb 16, 14, 17                                                   ; 3792: 10 0e 11    ... :1092[1]
    equb 21,  3,  3                                                   ; 3795: 15 03 03    ... :1095[1]
    equb 21,  6,  6                                                   ; 3798: 15 06 06    ... :1098[1]
    equb 21,  8, 12                                                   ; 379b: 15 08 0c    ... :109b[1]
    equb 21, 14, 14                                                   ; 379e: 15 0e 0e    ... :109e[1]
    equb 21, 17, 17                                                   ; 37a1: 15 11 11    ... :10a1[1]
; Ladder data (X, bottom Y, top Y)
.map7platform_end
.map7ladder_start
    equb 3, 2, 8                                                      ; 37a4: 03 02 08    ... :10a4[1]
    equb 17,  2,  8                                                   ; 37a7: 11 02 08    ... :10a7[1]
    equb 10,  7, 13                                                   ; 37aa: 0a 07 0d    ... :10aa[1]
    equb  4, 12, 18                                                   ; 37ad: 04 0c 12    ... :10ad[1]
    equb 16, 12, 18                                                   ; 37b0: 10 0c 12    ... :10b0[1]
    equb 10, 17, 23                                                   ; 37b3: 0a 11 17    ... :10b3[1]
; Data for 12 eggs (X, Y)
.map7ladder_end
.map7eggs_start
    equb 5, 6                                                         ; 37b6: 05 06       ..  :10b6[1]
    equb 15,  6                                                       ; 37b8: 0f 06       ..  :10b8[1]
    equb  6, 11                                                       ; 37ba: 06 0b       ..  :10ba[1]
    equb 14, 11                                                       ; 37bc: 0e 0b       ..  :10bc[1]
    equb  8, 16                                                       ; 37be: 08 10       ..  :10be[1]
    equb 12, 16                                                       ; 37c0: 0c 10       ..  :10c0[1]
    equb  5, 21                                                       ; 37c2: 05 15       ..  :10c2[1]
    equb 15, 21                                                       ; 37c4: 0f 15       ..  :10c4[1]
    equb  7, 21                                                       ; 37c6: 07 15       ..  :10c6[1]
    equb 13, 21                                                       ; 37c8: 0d 15       ..  :10c8[1]
    equb  3, 24                                                       ; 37ca: 03 18       ..  :10ca[1]
    equb 17, 24                                                       ; 37cc: 11 18       ..  :10cc[1]
; Seed data (X, Y)
.map7eggs_end
.map7seed_start
    equb 1, 2                                                         ; 37ce: 01 02       ..  :10ce[1]
    equb 2, 2                                                         ; 37d0: 02 02       ..  :10d0[1]
    equb 4, 2                                                         ; 37d2: 04 02       ..  :10d2[1]
    equb 5, 2                                                         ; 37d4: 05 02       ..  :10d4[1]
    equb 6, 2                                                         ; 37d6: 06 02       ..  :10d6[1]
    equb 8, 2                                                         ; 37d8: 08 02       ..  :10d8[1]
    equb 9, 2                                                         ; 37da: 09 02       ..  :10da[1]
    equb 10,  2                                                       ; 37dc: 0a 02       ..  :10dc[1]
    equb 11,  2                                                       ; 37de: 0b 02       ..  :10de[1]
    equb 12,  2                                                       ; 37e0: 0c 02       ..  :10e0[1]
    equb 13,  2                                                       ; 37e2: 0d 02       ..  :10e2[1]
    equb 14,  2                                                       ; 37e4: 0e 02       ..  :10e4[1]
    equb 15,  2                                                       ; 37e6: 0f 02       ..  :10e6[1]
    equb 16,  2                                                       ; 37e8: 10 02       ..  :10e8[1]
    equb 18,  2                                                       ; 37ea: 12 02       ..  :10ea[1]
    equb 19,  2                                                       ; 37ec: 13 02       ..  :10ec[1]
; Bird data (X, Y)
.map7seed_end
.map7bird_data
    equb 17,  2                                                       ; 37ee: 11 02       ..  :10ee[1]
    equb 10, 12                                                       ; 37f0: 0a 0c       ..  :10f0[1]
    equb 10, 22                                                       ; 37f2: 0a 16       ..  :10f2[1]
    equb  3, 17                                                       ; 37f4: 03 11       ..  :10f4[1]
    equb 17, 17                                                       ; 37f6: 11 11       ..  :10f6[1]
.unused3
    equs "UB(4): E"                                                   ; 37f8: 55 42 28... UB( :10f8[1]

    ; Copy the newly assembled block of code back to it's proper place in the binary
    ; file.
    ; (Note the parameter order: 'copyblock <start>,<end>,<dest>')
    copyblock showkeys, *, codemain_end

    ; Clear the area of memory we just temporarily used to assemble the new block,
    ; allowing us to assemble there again if needed
    clear &0900, &1100

    ; Set the program counter to the next position in the binary file.
    org codemain_end + (* - showkeys)

.pydis_end
    assert ((map0ladder_end - map0ladder_start) / 3) == &04
    assert ((map0platform_end - map0platform_start) / 3) == &0d
    assert ((map0seed_end - map0seed_start) / 2) == &0a
    assert ((map1ladder_end - map1ladder_start) / 3) == &08
    assert ((map1platform_end - map1platform_start) / 3) == &0d
    assert ((map1seed_end - map1seed_start) / 2) == &07
    assert ((map2ladder_end - map2ladder_start) / 3) == &07
    assert ((map2platform_end - map2platform_start) / 3) == &18
    assert ((map2seed_end - map2seed_start) / 2) == &0a
    assert ((map3ladder_end - map3ladder_start) / 3) == &05
    assert ((map3platform_end - map3platform_start) / 3) == &1a
    assert ((map3seed_end - map3seed_start) / 2) == &06
    assert ((map4ladder_end - map4ladder_start) / 3) == &09
    assert ((map4platform_end - map4platform_start) / 3) == &11
    assert ((map4seed_end - map4seed_start) / 2) == &0d
    assert ((map5ladder_end - map5ladder_start) / 3) == &06
    assert ((map5platform_end - map5platform_start) / 3) == &10
    assert ((map5seed_end - map5seed_start) / 2) == &09
    assert ((map6ladder_end - map6ladder_start) / 3) == &07
    assert ((map6platform_end - map6platform_start) / 3) == &17
    assert ((map6seed_end - map6seed_start) / 2) == &04
    assert ((map7ladder_end - map7ladder_start) / 3) == &06
    assert ((map7platform_end - map7platform_start) / 3) == &0f
    assert ((map7seed_end - map7seed_start) / 2) == &10
    assert (255 - inkey_key_ctrl) EOR 128 == &81
    assert (255 - inkey_key_shift) EOR 128 == &80
    assert (MapId_Egg OR MapId_Seed) == &0c
    assert 255 - inkey_key_h == &54
    assert <(blipsoundblock) == &98
    assert <(bonussoundblock) == &b0
    assert <(deathsoundblock) == &a0
    assert <(deathtune_end) == &d1
    assert <(eggsoundblock) == &a8
    assert <(envelope2) == &df
    assert <(envelope3) == &ed
    assert <(intervaltimerblock) == &00
    assert <deathtunedata == &b0
    assert <hiscoretab == &30
    assert <osword0block == &9d
    assert <spritetable == &00
    assert <string_capslock == &2a
    assert <string_control == &90
    assert <string_copy == &5a
    assert <string_delete == &4c
    assert <string_down == &e9
    assert <string_downarrow == &76
    assert <string_enteryourname == &69
    assert <string_escape == &3f
    assert <string_gameover == &94
    assert <string_getready == &b2
    assert <string_highscores == &3f
    assert <string_hiscorepos == &57
    assert <string_hiscoreprompt == &5e
    assert <string_holdabort == &09
    assert <string_howmanyplayers == &44
    assert <string_jump == &17
    assert <string_keyhelp == &4c
    assert <string_keys == &f8
    assert <string_keyselection == &b2
    assert <string_left == &f8
    assert <string_leftarrow == &5f
    assert <string_playerN == &c9
    assert <string_return == &53
    assert <string_right == &07
    assert <string_rightarrow == &6a
    assert <string_shift == &8a
    assert <string_shiftlock == &34
    assert <string_space == &46
    assert <string_tab == &26
    assert <string_up == &dc
    assert <string_uparrow == &81
    assert <string_vdu19 == &76
    assert >(blipsoundblock) == &0c
    assert >(bonussoundblock) == &0c
    assert >(deathsoundblock) == &0c
    assert >(deathtune_end) == &2f
    assert >(eggsoundblock) == &0c
    assert >(envelope2) == &2f
    assert >(envelope3) == &2f
    assert >(intervaltimerblock) == &00
    assert >deathtunedata == &2f
    assert >hiscoretab == &04
    assert >osword0block == &29
    assert >spritetable == &11
    assert >string_capslock == &0b
    assert >string_control == &0b
    assert >string_copy == &0b
    assert >string_delete == &0b
    assert >string_down == &0a
    assert >string_downarrow == &0b
    assert >string_enteryourname == &29
    assert >string_escape == &0b
    assert >string_gameover == &2a
    assert >string_getready == &2a
    assert >string_highscores == &29
    assert >string_hiscorepos == &29
    assert >string_hiscoreprompt == &29
    assert >string_holdabort == &0c
    assert >string_howmanyplayers == &2c
    assert >string_jump == &0b
    assert >string_keyhelp == &2d
    assert >string_keys == &0b
    assert >string_keyselection == &0a
    assert >string_left == &0a
    assert >string_leftarrow == &0b
    assert >string_playerN == &2a
    assert >string_return == &0b
    assert >string_right == &0b
    assert >string_rightarrow == &0b
    assert >string_shift == &0b
    assert >string_shiftlock == &0b
    assert >string_space == &0b
    assert >string_tab == &0b
    assert >string_up == &0a
    assert >string_uparrow == &0b
    assert >string_vdu19 == &2b
    assert SpriteId_BirdEatRight1 - SpriteId_BirdRight1 == &06
    assert SpriteId_BirdLeft1 - SpriteId_BirdRight1 == &02
    assert SpriteId_BirdRight1 - SpriteId_BirdRight1 == &00
    assert SpriteId_BirdUpDown1 - SpriteId_BirdRight1 == &04
    assert hiscorenamebuffer == &29a2
    assert hiscorenamebuffer_end - hiscorenamebuffer - 1 == &08
    assert map0data == &0cd0
    assert map1data == &0d3e
    assert map2data == &0db2
    assert map3data == &0e4b
    assert map4data == &0edc
    assert map5data == &0f6c
    assert map6data == &0fe8
    assert map7data == &1072
    assert sprite_bigbirdleft1 == &131c
    assert sprite_bigbirdleft2 == &134c
    assert sprite_bigbirdright1 == &12bc
    assert sprite_bigbirdright2 == &12ec
    assert sprite_bigc == &16f2
    assert sprite_bige == &181e
    assert sprite_bigg == &185a
    assert sprite_bigh == &172e
    assert sprite_bigi == &17e2
    assert sprite_bigk == &17a6
    assert sprite_bigu == &176a
    assert sprite_birdeatleft1 == &1566
    assert sprite_birdeatleft2 == &158e
    assert sprite_birdeatright1 == &1516
    assert sprite_birdeatright2 == &153e
    assert sprite_birdleft1 == &14c4
    assert sprite_birdleft2 == &14d8
    assert sprite_birdright1 == &149c
    assert sprite_birdright2 == &14b0
    assert sprite_birdupdown1 == &14ec
    assert sprite_birdupdown2 == &1500
    assert sprite_bonus == &168c
    assert sprite_cage == &140c
    assert sprite_cagewithhole == &137c
    assert sprite_digit0 == &15b6
    assert sprite_digit1 == &15bd
    assert sprite_digit2 == &15c4
    assert sprite_digit3 == &15cb
    assert sprite_digit4 == &15d2
    assert sprite_digit5 == &15d9
    assert sprite_digit6 == &15e0
    assert sprite_digit7 == &15e7
    assert sprite_digit8 == &15ee
    assert sprite_digit9 == &15f5
    assert sprite_egg == &1210
    assert sprite_highlightbox == &1617
    assert sprite_ladder == &1208
    assert sprite_level == &165f
    assert sprite_life == &16ef
    assert sprite_lift == &1220
    assert sprite_manleft1 == &1258
    assert sprite_manleft2 == &1268
    assert sprite_manleft3 == &1278
    assert sprite_manright1 == &1228
    assert sprite_manright2 == &1238
    assert sprite_manright3 == &1248
    assert sprite_manupdown1 == &1288
    assert sprite_manupdown2 == &1298
    assert sprite_manupdown3 == &12aa
    assert sprite_platform == &1200
    assert sprite_player == &163b
    assert sprite_score == &15fc
    assert sprite_seed == &1218
    assert sprite_time == &16c2
    assert string_capslock_end - string_capslock_start == &09
    assert string_control_end - string_control_start == &07
    assert string_copy_end - string_copy_start == &04
    assert string_delete_end - string_delete_start == &06
    assert string_down_end - string_down_start == &0e
    assert string_downarrow_end - string_downarrow_start == &0a
    assert string_enteryourname_end - string_enteryourname_start == &33
    assert string_escape_end - string_escape_start == &06
    assert string_highscores_end - string_highscores_start == &17
    assert string_hiscorepos_end - string_hiscorepos_start == &06
    assert string_hiscoreprompt_end - string_hiscoreprompt_start == &0a
    assert string_holdabort_end - string_holdabort_start == &2e
    assert string_jump_end - string_jump_start == &0e
    assert string_keyhelp_end - string_keyhelp_start == &3b
    assert string_keys_end - string_keys_start == &10
    assert string_keyselection_end - string_keyselection_start == &29
    assert string_left_end - string_left_start == &0e
    assert string_leftarrow_end - string_leftarrow_start == &0a
    assert string_return_end - string_return_start == &06
    assert string_right_end - string_right_start == &0f
    assert string_rightarrow_end - string_rightarrow_start == &0b
    assert string_shift_end - string_shift_start == &05
    assert string_shiftlock_end - string_shiftlock_start == &0a
    assert string_space_end - string_space_start == &05
    assert string_tab_end - string_tab_start == &03
    assert string_up_end - string_up_start == &0c
    assert string_uparrow_end - string_uparrow_start == &08

save pydis_start, pydis_end
