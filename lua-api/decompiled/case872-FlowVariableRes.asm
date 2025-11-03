// ===== case872-FlowVariableRes @ 01748c08 =====
// existing function case872-FlowVariableRes
01748c08  sub sp,sp,#0x50
01748c0c  str x21,[sp, #0x20]
01748c10  stp x20,x19,[sp, #0x30]
01748c14  stp x29,x30,[sp, #0x40]
01748c18  add x29,sp,#0x40
01748c1c  adrp x1,0x174a000
01748c20  add x1,x1,#0x87c
01748c24  mov x19,x0
01748c28  bl 0x0124ba40
01748c2c  adrp x1,0x575d000
01748c30  add x1,x1,#0xa06
01748c34  mov x0,x19
01748c38  str x19,[sp]
01748c3c  bl 0x01251aa0
01748c40  mov w8,#0x1
01748c44  str w8,[sp, #0x8]
01748c48  mov x0,sp
01748c4c  bl 0x0174aa04
01748c50  adrp x1,0x5774000
01748c54  adrp x3,0x736d000
01748c58  add x1,x1,#0x67
01748c5c  add x3,x3,#0x101
01748c60  add x0,sp,#0x10
01748c64  mov x2,sp
01748c68  bl 0x01a14aa4
01748c6c  adrp x1,0x57f9000
01748c70  adrp x2,0x1a14000
01748c74  adrp x4,0x1a14000
01748c78  add x1,x1,#0xcf2
01748c7c  add x2,x2,#0x894
01748c80  add x4,x4,#0x89c
01748c84  add x0,sp,#0x10
01748c88  mov x3,xzr
01748c8c  mov x5,xzr
01748c90  bl 0x01a146ac
01748c94  mov x19,x0
01748c98  ldr x0,[x19]
01748c9c  mov w1,#0x10
01748ca0  bl 0x0124cba0
01748ca4  adrp x8,0x1a14000
01748ca8  dup v0.2D,xzr
01748cac  add x8,x8,#0x8a4
01748cb0  mov v0.D[0x0],x8
01748cb4  str q0,[x0]
01748cb8  ldr x0,[x19]
01748cbc  adrp x1,0x1a15000
01748cc0  add x1,x1,#0x88
01748cc4  mov w2,#0x1
01748cc8  bl 0x0124ec90
01748ccc  ldr x0,[x19]
01748cd0  mov w1,#0xffffffff
01748cd4  bl 0x0124c0c0
01748cd8  ldr x20,[x19]
01748cdc  orr w1,wzr,#0xfffffffb
01748ce0  mov w2,#0x6e7
01748ce4  mov x0,x20
01748ce8  bl 0x0124a650
01748cec  orr w1,wzr,#0xfffffffe
01748cf0  mov x0,x20
01748cf4  bl 0x0124c0c0
01748cf8  orr w1,wzr,#0xfffffffe
01748cfc  mov x0,x20
01748d00  bl 0x0124e920
01748d04  mov w21,w0
01748d08  adrp x1,0x59ae000
01748d0c  add x1,x1,#0xf93
01748d10  mov x0,x20
01748d14  bl 0x0124f120
01748d18  orr w1,wzr,#0xfffffffe
01748d1c  mov w2,#0x1
01748d20  mov x0,x20
01748d24  bl 0x0124cfc0
01748d28  mov x0,x20
01748d2c  mov w1,w21
01748d30  bl 0x0124e060
01748d34  orr w1,wzr,#0xfffffffd
01748d38  mov x0,x20
01748d3c  bl 0x0124c4d0
01748d40  ldr x20,[x19]
01748d44  orr w1,wzr,#0xfffffffd
01748d48  mov w2,#0x6e7
01748d4c  mov x0,x20
01748d50  bl 0x0124a650
01748d54  orr w1,wzr,#0xfffffffe
01748d58  mov x0,x20
01748d5c  bl 0x0124c0c0
01748d60  orr w1,wzr,#0xfffffffe
01748d64  mov x0,x20
01748d68  bl 0x0124e920
01748d6c  mov w21,w0
01748d70  adrp x1,0x59ae000
01748d74  add x1,x1,#0xf93
01748d78  mov x0,x20
01748d7c  bl 0x0124f120
01748d80  orr w1,wzr,#0xfffffffe
01748d84  mov w2,#0x1
01748d88  mov x0,x20
01748d8c  bl 0x0124cfc0
01748d90  mov x0,x20
01748d94  mov w1,w21
01748d98  bl 0x0124e060
01748d9c  orr w1,wzr,#0xfffffffd
01748da0  mov x0,x20
01748da4  bl 0x0124c4d0
01748da8  adrp x1,0x5774000
01748dac  adrp x2,0x1a14000
01748db0  adrp x4,0x1a14000
01748db4  add x1,x1,#0x5e
01748db8  add x2,x2,#0xa94
01748dbc  add x4,x4,#0xa9c
01748dc0  mov x0,x19
01748dc4  mov x3,xzr
01748dc8  mov x5,xzr
01748dcc  bl 0x01a148ac
01748dd0  mov x19,x0
01748dd4  ldr w8,[x19, #0x8]
01748dd8  ldr x0,[x19]
01748ddc  sub w8,w8,#0x3
01748de0  str w8,[x19, #0x8]
01748de4  orr w1,wzr,#0xfffffffc
01748de8  bl 0x0124c4d0
01748dec  ldr w8,[x19, #0x8]
01748df0  ldr x0,[x19]
01748df4  str wzr,[x19, #0x8]
01748df8  cmp w8,#0x1
01748dfc  b.lt 0x01748e08
01748e00  mvn w1,w8
01748e04  bl 0x0124c4d0
01748e08  ldr w8,[sp, #0x18]
01748e0c  cmp w8,#0x1
01748e10  b.lt 0x01748e20
01748e14  ldr x0,[sp, #0x10]
01748e18  mvn w1,w8
01748e1c  bl 0x0124c4d0
01748e20  ldr w8,[sp, #0x8]
01748e24  cmp w8,#0x1
01748e28  b.lt 0x01748e38
01748e2c  ldr x0,[sp]
01748e30  mvn w1,w8
01748e34  bl 0x0124c4d0
01748e38  ldp x29,x30,[sp, #0x40]
01748e3c  ldp x20,x19,[sp, #0x30]
01748e40  ldr x21,[sp, #0x20]
01748e44  add sp,sp,#0x50
01748e48  ret
