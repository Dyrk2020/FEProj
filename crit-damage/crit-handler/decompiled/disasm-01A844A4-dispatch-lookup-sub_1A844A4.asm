// dispatch-lookup-sub_1A844A4 @ 0x1a844a4
0x1a844a4: SUB             SP, SP, #0x70
0x1a844a8: STP             X26, X25, [SP,#0x60+var_40]; int
0x1a844ac: STP             X24, X23, [SP,#0x60+var_30]; int
0x1a844b0: STP             X22, X21, [SP,#0x60+var_20]; int
0x1a844b4: STP             X20, X19, [SP,#0x60+var_10]; int
0x1a844b8: STP             X29, X30, [SP,#0x60+var_s0]; int
0x1a844bc: ADD             X29, SP, #0x60
0x1a844c0: MOV             W19, W6
0x1a844c4: MOV             X22, X5
0x1a844c8: MOV             X20, X4
0x1a844cc: MOV             X21, X3
0x1a844d0: MOV             X24, X1
0x1a844d4: MOV             X23, X0
0x1a844d8: TBNZ            W2, #0x1F, loc_1A84704
0x1a844dc: LDP             X8, X9, [X24]
0x1a844e0: SUB             X9, X9, X8
0x1a844e4: LSR             X10, X9, #3
0x1a844e8: CMP             W10, W2
0x1a844ec: B.LE            loc_1A84704
0x1a844f0: SXTW            X26, W2
0x1a844f4: ASR             X9, X9, #3
0x1a844f8: CMP             X9, X26
0x1a844fc: B.LS            loc_1A84724
0x1a84500: LDR             X25, [X8,X26,LSL#3]
0x1a84504: CBNZ            X25, loc_1A845D0
0x1a84508: LDRB            W8, [X23,#0x18]
0x1a8450c: CBZ             W8, loc_1A8454C
0x1a84510: BL              sub_1A6B124
0x1a84514: LDRB            W8, [X0,#0x70]
0x1a84518: CBZ             W8, loc_1A84594
0x1a8451c: MOV             W1, #0x5B67
0x1a84520: MOV             W2, #1
0x1a84524: MOV             W3, #1
0x1a84528: MOV             W4, #1
0x1a8452c: MOV             W5, #0x20 ; ' '
0x1a84530: MOV             W6, #8
0x1a84534: BL              sub_1A87504
0x1a84538: MOV             X25, X0
0x1a8453c: CBNZ            X25, loc_1A845B8
0x1a84540: ADRL            X2, aLogId720575955_11; "(--LOG_ID:72057595547146101--)"
0x1a84548: B               loc_1A84584
0x1a8454c: BL              sub_1A6B0E0
0x1a84550: LDRB            W8, [X0,#0x70]
0x1a84554: CBZ             W8, loc_1A84594
0x1a84558: MOV             W1, #0x5B67
0x1a8455c: MOV             W2, #1
0x1a84560: MOV             W3, #1
0x1a84564: MOV             W4, #1
0x1a84568: MOV             W5, #0x20 ; ' '
0x1a8456c: MOV             W6, #8
0x1a84570: BL              sub_1A87504
0x1a84574: MOV             X25, X0
0x1a84578: CBNZ            X25, loc_1A845B8
0x1a8457c: ADRL            X2, aLogId720575943_4; "(--LOG_ID:72057594320144832--)"
0x1a84584: MOV             W1, #2; int
0x1a84588: BL              sub_1A83618
0x1a8458c: BL              sub_1A83978
0x1a84590: B               loc_1A84704
0x1a84594: MOV             W0, #0x20 ; ' '; unsigned __int64
0x1a84598: BL              ._Znwm; operator new(ulong)
0x1a8459c: ADRL            X8, unk_6A82348
0x1a845a4: MOV             X25, X0
0x1a845a8: ADD             X8, X8, #(off_6A82360 - 0x6A82348)
0x1a845ac: STRH            WZR, [X25,#8]
0x1a845b0: STR             X8, [X25]
0x1a845b4: STP             XZR, XZR, [X25,#0x10]
0x1a845b8: LDP             X8, X9, [X24]
0x1a845bc: SUB             X9, X9, X8
0x1a845c0: ASR             X9, X9, #3
0x1a845c4: CMP             X9, X26
0x1a845c8: B.LS            loc_1A84724
0x1a845cc: STR             X25, [X8,X26,LSL#3]
0x1a845d0: LDR             X8, [X25,#0x10]
0x1a845d4: MOV             W9, #1
0x1a845d8: STRB            W9, [X25,#8]
0x1a845dc: CBZ             X8, loc_1A84660
0x1a845e0: LDR             X8, [X25,#0x18]
0x1a845e4: CBZ             X8, loc_1A84674
0x1a845e8: MOV             X0, X23
0x1a845ec: STR             X22, [SP,#0x60+var_60]; char
0x1a845f0: BL              sub_1A857A0
0x1a845f4: MOV             X1, X21; int
0x1a845f8: MOV             X2, X20
0x1a845fc: STR             X0, [SP,#0x60+var_60+8]; int
0x1a84600: BL              sub_1A85850
0x1a84604: STR             W19, [SP,#0x60+var_50]; int
0x1a84608: LDR             X0, [X25,#0x10]
0x1a8460c: CBZ             W19, loc_1A84684
0x1a84610: LDP             X8, X9, [X0]
0x1a84614: MOV             X11, #0xAAAAAAAAAAAAAAAB
0x1a8461c: SUB             X10, X9, X8
0x1a84620: ASR             X10, X10, #3
0x1a84624: MUL             X11, X10, X11
0x1a84628: CMP             W11, #1
0x1a8462c: B.LT            loc_1A846B0
0x1a84630: MOV             X10, XZR
0x1a84634: ADD             X12, X8, #0x10
0x1a84638: CMP             X11, X10
0x1a8463c: B.LS            loc_1A84720
0x1a84640: LDR             W13, [X12]
0x1a84644: CMP             W13, W19
0x1a84648: B.CC            loc_1A846B4
0x1a8464c: ADD             X10, X10, #1
0x1a84650: CMP             W10, W11
0x1a84654: ADD             X12, X12, #0x18
0x1a84658: B.LT            loc_1A84638
0x1a8465c: B               loc_1A846B4
0x1a84660: MOV             X0, X23
0x1a84664: BL              sub_1A856E4
0x1a84668: STR             X0, [X25,#0x10]
0x1a8466c: LDR             X8, [X25,#0x18]
0x1a84670: CBNZ            X8, loc_1A845E8
0x1a84674: MOV             X0, X23
0x1a84678: BL              sub_1A856E4
0x1a8467c: STR             X0, [X25,#0x18]
0x1a84680: B               loc_1A845E8
0x1a84684: LDP             X1, X8, [X0,#8]
0x1a84688: CMP             X1, X8
0x1a8468c: B.EQ            loc_1A846F0
0x1a84690: LDR             X8, [SP,#0x60+var_50]
0x1a84694: STR             X8, [X1,#0x10]
0x1a84698: LDR             Q0, [SP,#0x60+var_60]
0x1a8469c: STR             Q0, [X1]
0x1a846a0: LDR             X8, [X0,#8]
0x1a846a4: ADD             X8, X8, #0x18
0x1a846a8: STR             X8, [X0,#8]
0x1a846ac: B               loc_1A84704
0x1a846b0: MOV             W10, WZR
0x1a846b4: LDR             X11, [X0,#0x10]
0x1a846b8: MOV             W12, #0x18
0x1a846bc: SMADDL          X1, W10, W12, X8
0x1a846c0: CMP             X11, X9
0x1a846c4: B.NE            loc_1A846DC
0x1a846c8: MOV             X2, SP
0x1a846cc: ADD             X3, SP, #0x60+var_48
0x1a846d0: MOV             W4, #1
0x1a846d4: MOV             W5, WZR
0x1a846d8: B               loc_1A84700
0x1a846dc: MOV             W2, #1
0x1a846e0: MOV             X3, SP
0x1a846e4: ADD             X4, SP, #0x60+var_48
0x1a846e8: BL              sub_1A88AB0
0x1a846ec: B               loc_1A84704
0x1a846f0: MOV             X2, SP
0x1a846f4: ADD             X3, SP, #0x60+var_48
0x1a846f8: MOV             W4, #1
0x1a846fc: MOV             W5, #1
0x1a84700: BL              sub_1A888A4
0x1a84704: LDP             X29, X30, [SP,#0x60+var_s0]
0x1a84708: LDP             X20, X19, [SP,#0x60+var_10]
0x1a8470c: LDP             X22, X21, [SP,#0x60+var_20]
0x1a84710: LDP             X24, X23, [SP,#0x60+var_30]
0x1a84714: LDP             X26, X25, [SP,#0x60+var_40]
0x1a84718: ADD             SP, SP, #0x70 ; 'p'
0x1a8471c: RET
0x1a84720: BL              sub_1A85610
0x1a84724: BL              sub_1A8560C
0x1a84728: STR             X23, [SP,#0x60+var_A0]!
0x1a8472c: STP             X22, X21, [SP,#0xA0+var_90]
0x1a84730: STP             X20, X19, [SP,#0xA0+var_80]
0x1a84734: STP             X29, X30, [SP,#0xA0+var_70]
0x1a84738: ADD             X29, SP, #0x30 ; '0'
0x1a8473c: MOV             W22, W2
0x1a84740: MOV             W2, #0xC0
0x1a84744: MOV             X19, X5
0x1a84748: MOV             X20, X4
0x1a8474c: MOV             X21, X3
0x1a84750: MOV             X23, X0
0x1a84754: BL              sub_1A8435C
0x1a84758: MOV             X8, X0
0x1a8475c: CBZ             X8, loc_1A84780
0x1a84760: MOV             X0, X23
0x1a84764: MOV             X1, X8
0x1a84768: MOV             W2, W22
0x1a8476c: MOV             X3, X21
0x1a84770: MOV             X4, X20
0x1a84774: MOV             X5, X19
0x1a84778: MOV             W6, WZR
0x1a8477c: BL              sub_1A844A4
0x1a84780: LDP             X29, X30, [SP,#0xA0+var_70]
0x1a84784: LDP             X20, X19, [SP,#0xA0+var_80]
0x1a84788: LDP             X22, X21, [SP,#0xA0+var_90]
0x1a8478c: LDR             X23, [SP+0xA0+var_A0],#0x40
0x1a84790: RET