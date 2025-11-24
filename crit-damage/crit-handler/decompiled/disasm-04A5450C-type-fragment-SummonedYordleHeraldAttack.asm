// type-fragment-SummonedYordleHeraldAttackingE-handler @ 0x4a5450c
0x4a5450c: SUB             SP, SP, #0x40; char
0x4a54510: STP             X20, X19, [SP,#0x30+var_10]
0x4a54514: STP             X29, X30, [SP,#0x30+var_s0]
0x4a54518: ADD             X29, SP, #0x30
0x4a5451c: ADRP            X8, #qword_82FA860@PAGE
0x4a54520: LDR             X8, [X8,#qword_82FA860@PAGEOFF]
0x4a54524: MOV             X20, X2
0x4a54528: MOV             X19, X1
0x4a5452c: CBZ             X8, loc_4A54598
0x4a54530: SUB             SP, SP, #0xA0
0x4a54534: STP             X0, X1, [SP,#0xD0+var_D0]
0x4a54538: STP             X2, X3, [SP,#0xD0+var_C0]
0x4a5453c: STP             X4, X5, [SP,#0xD0+var_B0]
0x4a54540: STP             X6, X7, [SP,#0xD0+var_A0]
0x4a54544: STP             X8, X19, [SP,#0xD0+var_90]
0x4a54548: STP             X20, X21, [SP,#0xD0+var_80]
0x4a5454c: STP             X22, X23, [SP,#0xD0+var_70]
0x4a54550: STP             X24, X25, [SP,#0xD0+var_60]
0x4a54554: STP             X26, X27, [SP,#0xD0+var_50]
0x4a54558: STR             X28, [SP,#0xD0+var_40]
0x4a5455c: MOV             X0, SP
0x4a54560: MOV             X1, X29
0x4a54564: MOV             W2, #0xA0
0x4a54568: BL              sub_5413D24
0x4a5456c: LDP             X0, X1, [SP,#0xD0+var_D0]
0x4a54570: LDP             X8, X2, [SP,#0xD0+var_C0]
0x4a54574: LDP             X19, X20, [SP,#0xD0+var_B0]
0x4a54578: LDP             X21, X22, [SP,#0xD0+var_A0]
0x4a5457c: LDP             X23, X24, [SP,#0xD0+var_90]
0x4a54580: LDP             X25, X26, [SP,#0xD0+var_80]
0x4a54584: LDP             X27, X28, [SP,#0xD0+var_70]
0x4a54588: LDP             X29, X30, [SP,#0xD0+var_60]
0x4a5458c: ADD             SP, SP, X2
0x4a54590: RET
0x4a54594: BL              sub_54138C0
0x4a54598: CBZ             X20, loc_4A545DC
0x4a5459c: LDR             X8, [X20,#0x38]
0x4a545a0: MOV             X1, SP
0x4a545a4: MOV             W2, WZR
0x4a545a8: MOV             W3, WZR
0x4a545ac: STR             X8, [SP,#0x30+var_20]
0x4a545b0: LDUR            Q0, [X20,#0x28]
0x4a545b4: MOV             W4, WZR
0x4a545b8: MOV             W5, WZR
0x4a545bc: STR             Q0, [SP,#0x30+var_30]
0x4a545c0: LDR             X0, [X19,#0x80]
0x4a545c4: BL              sub_1E82A44
0x4a545c8: LDR             X0, [X19,#0x80]
0x4a545cc: FMOV            S0, #1.0
0x4a545d0: MOV             W1, #2
0x4a545d4: BL              sub_1E82D48
0x4a545d8: B               loc_4A545F0
0x4a545dc: ADRL            X2, unk_57FC49E; int
0x4a545e4: MOV             W1, #2; int
0x4a545e8: MOV             W0, WZR; int
0x4a545ec: BL              sub_1A83618
0x4a545f0: LDP             X29, X30, [SP,#0x30+var_s0]
0x4a545f4: LDP             X20, X19, [SP,#0x30+var_10]
0x4a545f8: ADD             SP, SP, #0x40 ; '@'
0x4a545fc: RET