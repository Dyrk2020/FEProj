// map-lookup-sub_42F28C4 @ 0x42f28c4
0x42f28c4: STR             X21, [SP,#-0x10+var_20]!; char
0x42f28c8: STP             X20, X19, [SP,#0x20+var_10]
0x42f28cc: STP             X29, X30, [SP,#0x20+var_s0]
0x42f28d0: ADD             X29, SP, #0x20
0x42f28d4: ADRL            X21, qword_82E72A0
0x42f28dc: LDR             X8, [X21,#(qword_82E72C0 - 0x82E72A0)]
0x42f28e0: MOV             X19, X1
0x42f28e4: MOV             X20, X0
0x42f28e8: CBZ             X8, loc_42F2954
0x42f28ec: SUB             SP, SP, #0xA0
0x42f28f0: STP             X0, X1, [SP,#0xC0+var_C0]
0x42f28f4: STP             X2, X3, [SP,#0xC0+var_B0]
0x42f28f8: STP             X4, X5, [SP,#0xC0+var_A0]
0x42f28fc: STP             X6, X7, [SP,#0xC0+var_90]
0x42f2900: STP             X8, X19, [SP,#0xC0+var_80]
0x42f2904: STP             X20, X21, [SP,#0xC0+var_70]
0x42f2908: STP             X22, X23, [SP,#0xC0+var_60]
0x42f290c: STP             X24, X25, [SP,#0xC0+var_50]
0x42f2910: STP             X26, X27, [SP,#0xC0+var_40]
0x42f2914: STR             X28, [SP,#0xC0+var_30]
0x42f2918: MOV             X0, SP
0x42f291c: MOV             X1, X29
0x42f2920: MOV             W2, #0xA0
0x42f2924: BL              sub_5413D24
0x42f2928: LDP             X0, X1, [SP,#0xC0+var_C0]
0x42f292c: LDP             X8, X2, [SP,#0xC0+var_B0]
0x42f2930: LDP             X19, X20, [SP,#0xC0+var_A0]
0x42f2934: LDP             X21, X22, [SP,#0xC0+var_90]
0x42f2938: LDP             X23, X24, [SP,#0xC0+var_80]
0x42f293c: LDP             X25, X26, [SP,#0xC0+var_70]
0x42f2940: LDP             X27, X28, [SP,#0xC0+var_60]
0x42f2944: LDP             X29, X30, [SP,#0xC0+var_50]
0x42f2948: ADD             SP, SP, X2
0x42f294c: RET
0x42f2950: BL              sub_54138C0
0x42f2954: LDR             X8, [X21,#(qword_82E72A8 - 0x82E72A0)]
0x42f2958: LDR             X10, [X8,#0x10]
0x42f295c: ADD             X8, X8, #8
0x42f2960: MOV             X9, X8
0x42f2964: CBZ             X10, loc_42F2988
0x42f2968: LDR             X11, [X10,#0x20]
0x42f296c: ADD             X12, X10, #0x18
0x42f2970: ADD             X13, X10, #0x10
0x42f2974: CMP             X11, X20
0x42f2978: CSEL            X11, X12, X13, CC
0x42f297c: CSEL            X9, X9, X10, CC
0x42f2980: LDR             X10, [X11]
0x42f2984: CBNZ            X10, loc_42F2968
0x42f2988: CMP             X9, X8
0x42f298c: B.EQ            loc_42F29AC
0x42f2990: LDR             X10, [X9,#0x20]
0x42f2994: CMP             X10, X20
0x42f2998: CSEL            X9, X8, X9, HI
0x42f299c: CMP             X9, X8
0x42f29a0: B.EQ            loc_42F29AC
0x42f29a4: LDR             X0, [X9,#0x28]
0x42f29a8: B               loc_42F29CC
0x42f29ac: ADRL            X2, aNoMapHashLuFun; "no map hash %lu func %lu"
0x42f29b4: MOV             W1, #1; int
0x42f29b8: MOV             W0, WZR; int
0x42f29bc: MOV             X3, X20; int
0x42f29c0: MOV             X4, X19; int
0x42f29c4: BL              sub_1A83618
0x42f29c8: MOV             X0, XZR
0x42f29cc: LDP             X29, X30, [SP,#0x20+var_s0]
0x42f29d0: LDP             X20, X19, [SP,#0x20+var_10]
0x42f29d4: LDR             X21, [SP+0x20+var_20],#0x30
0x42f29d8: RET