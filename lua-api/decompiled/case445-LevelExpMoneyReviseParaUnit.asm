// ===== case445-LevelExpMoneyReviseParaUnit @ 016e8fe8 =====
// existing function case445-LevelExpMoneyReviseParaUnit
016e8fe8  sub sp,sp,#0x40
016e8fec  str x19,[sp, #0x20]
016e8ff0  stp x29,x30,[sp, #0x30]
016e8ff4  add x29,sp,#0x30
016e8ff8  adrp x1,0x174a000
016e8ffc  add x1,x1,#0x87c
016e9000  mov x19,x0
016e9004  bl 0x0124ba40
016e9008  adrp x1,0x575d000
016e900c  add x1,x1,#0xa06
016e9010  mov x0,x19
016e9014  str x19,[sp]
016e9018  bl 0x01251aa0
016e901c  mov w8,#0x1
016e9020  str w8,[sp, #0x8]
016e9024  mov x0,sp
016e9028  bl 0x0174aa04
016e902c  adrp x1,0x5766000
016e9030  adrp x3,0x736d000
016e9034  add x1,x1,#0x9bd
016e9038  add x3,x3,#0x101
016e903c  add x0,sp,#0x10
016e9040  mov x2,sp
016e9044  bl 0x0186b13c
016e9048  adrp x1,0x5766000
016e904c  adrp x2,0x186b000
016e9050  adrp x4,0x186b000
016e9054  add x1,x1,#0x9d9
016e9058  add x2,x2,#0xfc
016e905c  add x4,x4,#0x104
016e9060  add x0,sp,#0x10
016e9064  mov x3,xzr
016e9068  mov x5,xzr
016e906c  bl 0x0186af14
016e9070  adrp x1,0x5976000
016e9074  adrp x2,0x186b000
016e9078  adrp x4,0x186b000
016e907c  add x1,x1,#0xecf
016e9080  add x2,x2,#0x10c
016e9084  add x4,x4,#0x114
016e9088  mov x3,xzr
016e908c  mov x5,xzr
016e9090  bl 0x0186af14
016e9094  adrp x1,0x5762000
016e9098  adrp x2,0x186b000
016e909c  adrp x4,0x186b000
016e90a0  add x1,x1,#0xa62
016e90a4  add x2,x2,#0x11c
016e90a8  add x4,x4,#0x124
016e90ac  mov x3,xzr
016e90b0  mov x5,xzr
016e90b4  bl 0x0186af14
016e90b8  adrp x1,0x5762000
016e90bc  adrp x2,0x186b000
016e90c0  adrp x4,0x186b000
016e90c4  add x1,x1,#0xa53
016e90c8  add x2,x2,#0x12c
016e90cc  add x4,x4,#0x134
016e90d0  mov x3,xzr
016e90d4  mov x5,xzr
016e90d8  bl 0x0186af14
016e90dc  mov x19,x0
016e90e0  ldr w8,[x19, #0x8]
016e90e4  ldr x0,[x19]
016e90e8  sub w8,w8,#0x3
016e90ec  str w8,[x19, #0x8]
016e90f0  orr w1,wzr,#0xfffffffc
016e90f4  bl 0x0124c4d0
016e90f8  ldr w8,[x19, #0x8]
016e90fc  ldr x0,[x19]
016e9100  str wzr,[x19, #0x8]
016e9104  cmp w8,#0x1
016e9108  b.lt 0x016e9114
016e910c  mvn w1,w8
016e9110  bl 0x0124c4d0
016e9114  ldr w8,[sp, #0x18]
016e9118  cmp w8,#0x1
016e911c  b.lt 0x016e912c
016e9120  ldr x0,[sp, #0x10]
016e9124  mvn w1,w8
016e9128  bl 0x0124c4d0
016e912c  ldr w8,[sp, #0x8]
016e9130  cmp w8,#0x1
016e9134  b.lt 0x016e9144
016e9138  ldr x0,[sp]
016e913c  mvn w1,w8
016e9140  bl 0x0124c4d0
016e9144  ldp x29,x30,[sp, #0x30]
016e9148  ldr x19,[sp, #0x20]
016e914c  add sp,sp,#0x40
016e9150  ret
