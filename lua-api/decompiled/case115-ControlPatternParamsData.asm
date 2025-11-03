// ===== case115-ControlPatternParamsData @ 0169f728 =====
// existing function case115-ControlPatternParamsData
0169f728  sub sp,sp,#0x40
0169f72c  str x19,[sp, #0x20]
0169f730  stp x29,x30,[sp, #0x30]
0169f734  add x29,sp,#0x30
0169f738  adrp x1,0x174a000
0169f73c  add x1,x1,#0x87c
0169f740  mov x19,x0
0169f744  bl 0x0124ba40
0169f748  adrp x1,0x575d000
0169f74c  add x1,x1,#0xa06
0169f750  mov x0,x19
0169f754  str x19,[sp]
0169f758  bl 0x01251aa0
0169f75c  mov w8,#0x1
0169f760  str w8,[sp, #0x8]
0169f764  mov x0,sp
0169f768  bl 0x0174aa04
0169f76c  adrp x1,0x575f000
0169f770  adrp x3,0x736d000
0169f774  add x1,x1,#0x969
0169f778  add x3,x3,#0x101
0169f77c  add x0,sp,#0x10
0169f780  mov x2,sp
0169f784  bl 0x0178ec94
0169f788  adrp x1,0x575f000
0169f78c  adrp x2,0x178e000
0169f790  adrp x4,0x178e000
0169f794  add x1,x1,#0x982
0169f798  add x2,x2,#0x894
0169f79c  add x4,x4,#0x89c
0169f7a0  add x0,sp,#0x10
0169f7a4  mov x3,xzr
0169f7a8  mov x5,xzr
0169f7ac  bl 0x0178e6ac
0169f7b0  adrp x1,0x575f000
0169f7b4  adrp x2,0x178e000
0169f7b8  adrp x4,0x178e000
0169f7bc  add x1,x1,#0x98c
0169f7c0  add x2,x2,#0xa8c
0169f7c4  add x4,x4,#0xa94
0169f7c8  mov x3,xzr
0169f7cc  mov x5,xzr
0169f7d0  bl 0x0178e8a4
0169f7d4  adrp x1,0x575f000
0169f7d8  adrp x2,0x178e000
0169f7dc  adrp x4,0x178e000
0169f7e0  add x1,x1,#0x997
0169f7e4  add x2,x2,#0xc84
0169f7e8  add x4,x4,#0xc8c
0169f7ec  mov x3,xzr
0169f7f0  mov x5,xzr
0169f7f4  bl 0x0178ea9c
0169f7f8  mov x19,x0
0169f7fc  ldr w8,[x19, #0x8]
0169f800  ldr x0,[x19]
0169f804  sub w8,w8,#0x3
0169f808  str w8,[x19, #0x8]
0169f80c  orr w1,wzr,#0xfffffffc
0169f810  bl 0x0124c4d0
0169f814  ldr w8,[x19, #0x8]
0169f818  ldr x0,[x19]
0169f81c  str wzr,[x19, #0x8]
0169f820  cmp w8,#0x1
0169f824  b.lt 0x0169f830
0169f828  mvn w1,w8
0169f82c  bl 0x0124c4d0
0169f830  ldr w8,[sp, #0x18]
0169f834  cmp w8,#0x1
0169f838  b.lt 0x0169f848
0169f83c  ldr x0,[sp, #0x10]
0169f840  mvn w1,w8
0169f844  bl 0x0124c4d0
0169f848  ldr w8,[sp, #0x8]
0169f84c  cmp w8,#0x1
0169f850  b.lt 0x0169f860
0169f854  ldr x0,[sp]
0169f858  mvn w1,w8
0169f85c  bl 0x0124c4d0
0169f860  ldp x29,x30,[sp, #0x30]
0169f864  ldr x19,[sp, #0x20]
0169f868  add sp,sp,#0x40
0169f86c  ret
