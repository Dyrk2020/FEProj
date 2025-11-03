// ===== case669-KillAssistSnapshot @ 01717c6c =====
// existing function case669-KillAssistSnapshot
01717c6c  sub sp,sp,#0x50
01717c70  str x21,[sp, #0x20]
01717c74  stp x20,x19,[sp, #0x30]
01717c78  stp x29,x30,[sp, #0x40]
01717c7c  add x29,sp,#0x40
01717c80  adrp x1,0x174a000
01717c84  add x1,x1,#0x87c
01717c88  mov x19,x0
01717c8c  bl 0x0124ba40
01717c90  adrp x1,0x575d000
01717c94  add x1,x1,#0xa06
01717c98  mov x0,x19
01717c9c  str x19,[sp]
01717ca0  bl 0x01251aa0
01717ca4  mov w8,#0x1
01717ca8  str w8,[sp, #0x8]
01717cac  mov x0,sp
01717cb0  bl 0x0174aa04
01717cb4  adrp x1,0x576d000
01717cb8  adrp x3,0x736d000
01717cbc  add x1,x1,#0x53
01717cc0  add x3,x3,#0x101
01717cc4  add x0,sp,#0x10
01717cc8  mov x2,sp
01717ccc  bl 0x0193c158
01717cd0  adrp x1,0x576d000
01717cd4  adrp x2,0x193b000
01717cd8  adrp x4,0x193b000
01717cdc  add x1,x1,#0x66
01717ce0  add x2,x2,#0xf38
01717ce4  add x4,x4,#0xf40
01717ce8  add x0,sp,#0x10
01717cec  mov x3,xzr
01717cf0  mov x5,xzr
01717cf4  bl 0x0193bd50
01717cf8  adrp x1,0x5764000
01717cfc  adrp x2,0x193c000
01717d00  adrp x4,0x193c000
01717d04  add x1,x1,#0x58
01717d08  add x2,x2,#0x130
01717d0c  add x4,x4,#0x138
01717d10  mov x3,xzr
01717d14  mov x5,xzr
01717d18  bl 0x0193bf48
01717d1c  adrp x1,0x5764000
01717d20  adrp x2,0x193c000
01717d24  adrp x4,0x193c000
01717d28  add x1,x1,#0x65
01717d2c  add x2,x2,#0x140
01717d30  add x4,x4,#0x148
01717d34  mov x3,xzr
01717d38  mov x5,xzr
01717d3c  bl 0x0193bf48
01717d40  mov x19,x0
01717d44  ldr x0,[x19]
01717d48  mov w1,#0x10
01717d4c  bl 0x0124cba0
01717d50  adrp x8,0x193c000
01717d54  dup v0.2D,xzr
01717d58  add x8,x8,#0x150
01717d5c  mov v0.D[0x0],x8
01717d60  str q0,[x0]
01717d64  ldr x0,[x19]
01717d68  adrp x1,0x193c000
01717d6c  add x1,x1,#0x988
01717d70  mov w2,#0x1
01717d74  bl 0x0124ec90
01717d78  ldr x0,[x19]
01717d7c  mov w1,#0xffffffff
01717d80  bl 0x0124c0c0
01717d84  ldr x20,[x19]
01717d88  orr w1,wzr,#0xfffffffb
01717d8c  mov w2,#0x6e7
01717d90  mov x0,x20
01717d94  bl 0x0124a650
01717d98  orr w1,wzr,#0xfffffffe
01717d9c  mov x0,x20
01717da0  bl 0x0124c0c0
01717da4  orr w1,wzr,#0xfffffffe
01717da8  mov x0,x20
01717dac  bl 0x0124e920
01717db0  mov w21,w0
01717db4  adrp x1,0x576d000
01717db8  add x1,x1,#0x6f
01717dbc  mov x0,x20
01717dc0  bl 0x0124f120
01717dc4  orr w1,wzr,#0xfffffffe
01717dc8  mov w2,#0x1
01717dcc  mov x0,x20
01717dd0  bl 0x0124cfc0
01717dd4  mov x0,x20
01717dd8  mov w1,w21
01717ddc  bl 0x0124e060
01717de0  orr w1,wzr,#0xfffffffd
01717de4  mov x0,x20
01717de8  bl 0x0124c4d0
01717dec  ldr x20,[x19]
01717df0  orr w1,wzr,#0xfffffffd
01717df4  mov w2,#0x6e7
01717df8  mov x0,x20
01717dfc  bl 0x0124a650
01717e00  orr w1,wzr,#0xfffffffe
01717e04  mov x0,x20
01717e08  bl 0x0124c0c0
01717e0c  orr w1,wzr,#0xfffffffe
01717e10  mov x0,x20
01717e14  bl 0x0124e920
01717e18  mov w21,w0
01717e1c  adrp x1,0x576d000
01717e20  add x1,x1,#0x6f
01717e24  mov x0,x20
01717e28  bl 0x0124f120
01717e2c  orr w1,wzr,#0xfffffffe
01717e30  mov w2,#0x1
01717e34  mov x0,x20
01717e38  bl 0x0124cfc0
01717e3c  mov x0,x20
01717e40  mov w1,w21
01717e44  bl 0x0124e060
01717e48  orr w1,wzr,#0xfffffffd
01717e4c  mov x0,x20
01717e50  bl 0x0124c4d0
01717e54  ldr w8,[x19, #0x8]
01717e58  ldr x0,[x19]
01717e5c  sub w8,w8,#0x3
01717e60  str w8,[x19, #0x8]
01717e64  orr w1,wzr,#0xfffffffc
01717e68  bl 0x0124c4d0
01717e6c  ldr w8,[x19, #0x8]
01717e70  ldr x0,[x19]
01717e74  str wzr,[x19, #0x8]
01717e78  cmp w8,#0x1
01717e7c  b.lt 0x01717e88
01717e80  mvn w1,w8
01717e84  bl 0x0124c4d0
01717e88  ldr w8,[sp, #0x18]
01717e8c  cmp w8,#0x1
01717e90  b.lt 0x01717ea0
01717e94  ldr x0,[sp, #0x10]
01717e98  mvn w1,w8
01717e9c  bl 0x0124c4d0
01717ea0  ldr w8,[sp, #0x8]
01717ea4  cmp w8,#0x1
01717ea8  b.lt 0x01717eb8
01717eac  ldr x0,[sp]
01717eb0  mvn w1,w8
01717eb4  bl 0x0124c4d0
01717eb8  ldp x29,x30,[sp, #0x40]
01717ebc  ldp x20,x19,[sp, #0x30]
01717ec0  ldr x21,[sp, #0x20]
01717ec4  add sp,sp,#0x50
01717ec8  ret
