// ===== case264-MonsterGroup @ 016b9054 =====
// existing function case264-MonsterGroup
016b9054  sub sp,sp,#0x40
016b9058  str x19,[sp, #0x20]
016b905c  stp x29,x30,[sp, #0x30]
016b9060  add x29,sp,#0x30
016b9064  adrp x1,0x174a000
016b9068  add x1,x1,#0x87c
016b906c  mov x19,x0
016b9070  bl 0x0124ba40
016b9074  adrp x1,0x575d000
016b9078  add x1,x1,#0xa06
016b907c  mov x0,x19
016b9080  str x19,[sp]
016b9084  bl 0x01251aa0
016b9088  mov w8,#0x1
016b908c  str w8,[sp, #0x8]
016b9090  mov x0,sp
016b9094  bl 0x0174aa04
016b9098  adrp x1,0x5761000
016b909c  adrp x3,0x736d000
016b90a0  add x1,x1,#0x725
016b90a4  add x3,x3,#0x101
016b90a8  add x0,sp,#0x10
016b90ac  mov x2,sp
016b90b0  bl 0x017df4f4
016b90b4  adrp x1,0x5760000
016b90b8  adrp x2,0x17df000
016b90bc  adrp x4,0x17df000
016b90c0  add x1,x1,#0x339
016b90c4  add x2,x2,#0x4d4
016b90c8  add x4,x4,#0x4dc
016b90cc  add x0,sp,#0x10
016b90d0  mov x3,xzr
016b90d4  mov x5,xzr
016b90d8  bl 0x017df2ec
016b90dc  adrp x1,0x5761000
016b90e0  adrp x2,0x17df000
016b90e4  adrp x4,0x17df000
016b90e8  add x1,x1,#0x732
016b90ec  add x2,x2,#0x4e4
016b90f0  add x4,x4,#0x4ec
016b90f4  mov x3,xzr
016b90f8  mov x5,xzr
016b90fc  bl 0x017df2ec
016b9100  mov x19,x0
016b9104  ldr w8,[x19, #0x8]
016b9108  ldr x0,[x19]
016b910c  sub w8,w8,#0x3
016b9110  str w8,[x19, #0x8]
016b9114  orr w1,wzr,#0xfffffffc
016b9118  bl 0x0124c4d0
016b911c  ldr w8,[x19, #0x8]
016b9120  ldr x0,[x19]
016b9124  str wzr,[x19, #0x8]
016b9128  cmp w8,#0x1
016b912c  b.lt 0x016b9138
016b9130  mvn w1,w8
016b9134  bl 0x0124c4d0
016b9138  ldr w8,[sp, #0x18]
016b913c  cmp w8,#0x1
016b9140  b.lt 0x016b9150
016b9144  ldr x0,[sp, #0x10]
016b9148  mvn w1,w8
016b914c  bl 0x0124c4d0
016b9150  ldr w8,[sp, #0x8]
016b9154  cmp w8,#0x1
016b9158  b.lt 0x016b9168
016b915c  ldr x0,[sp]
016b9160  mvn w1,w8
016b9164  bl 0x0124c4d0
016b9168  ldp x29,x30,[sp, #0x30]
016b916c  ldr x19,[sp, #0x20]
016b9170  add sp,sp,#0x40
016b9174  ret
