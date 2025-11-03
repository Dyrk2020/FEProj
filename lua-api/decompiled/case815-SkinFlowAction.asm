// ===== case815-SkinFlowAction @ 01736c38 =====
// existing function case815-SkinFlowAction
01736c38  sub sp,sp,#0x50
01736c3c  str x21,[sp, #0x20]
01736c40  stp x20,x19,[sp, #0x30]
01736c44  stp x29,x30,[sp, #0x40]
01736c48  add x29,sp,#0x40
01736c4c  adrp x1,0x174a000
01736c50  add x1,x1,#0x87c
01736c54  mov x19,x0
01736c58  bl 0x0124ba40
01736c5c  adrp x1,0x575d000
01736c60  add x1,x1,#0xa06
01736c64  mov x0,x19
01736c68  str x19,[sp]
01736c6c  bl 0x01251aa0
01736c70  mov w8,#0x1
01736c74  str w8,[sp, #0x8]
01736c78  mov x0,sp
01736c7c  bl 0x0174aa04
01736c80  adrp x1,0x5772000
01736c84  adrp x3,0x736d000
01736c88  add x1,x1,#0x4cb
01736c8c  add x3,x3,#0x101
01736c90  add x0,sp,#0x10
01736c94  mov x2,sp
01736c98  bl 0x019c418c
01736c9c  adrp x1,0x5772000
01736ca0  adrp x2,0x19c3000
01736ca4  adrp x4,0x19c3000
01736ca8  add x1,x1,#0x4da
01736cac  add x2,x2,#0xf7c
01736cb0  add x4,x4,#0xf84
01736cb4  add x0,sp,#0x10
01736cb8  mov x3,xzr
01736cbc  mov x5,xzr
01736cc0  bl 0x019c3d94
01736cc4  mov x19,x0
01736cc8  ldr x0,[x19]
01736ccc  mov w1,#0x10
01736cd0  bl 0x0124cba0
01736cd4  adrp x8,0x19c3000
01736cd8  dup v0.2D,xzr
01736cdc  add x8,x8,#0xf8c
01736ce0  mov v0.D[0x0],x8
01736ce4  str q0,[x0]
01736ce8  ldr x0,[x19]
01736cec  adrp x1,0x19c4000
01736cf0  add x1,x1,#0x770
01736cf4  mov w2,#0x1
01736cf8  bl 0x0124ec90
01736cfc  ldr x0,[x19]
01736d00  mov w1,#0xffffffff
01736d04  bl 0x0124c0c0
01736d08  ldr x20,[x19]
01736d0c  orr w1,wzr,#0xfffffffb
01736d10  mov w2,#0x6e7
01736d14  mov x0,x20
01736d18  bl 0x0124a650
01736d1c  orr w1,wzr,#0xfffffffe
01736d20  mov x0,x20
01736d24  bl 0x0124c0c0
01736d28  orr w1,wzr,#0xfffffffe
01736d2c  mov x0,x20
01736d30  bl 0x0124e920
01736d34  mov w21,w0
01736d38  adrp x1,0x5772000
01736d3c  add x1,x1,#0x4e4
01736d40  mov x0,x20
01736d44  bl 0x0124f120
01736d48  orr w1,wzr,#0xfffffffe
01736d4c  mov w2,#0x1
01736d50  mov x0,x20
01736d54  bl 0x0124cfc0
01736d58  mov x0,x20
01736d5c  mov w1,w21
01736d60  bl 0x0124e060
01736d64  orr w1,wzr,#0xfffffffd
01736d68  mov x0,x20
01736d6c  bl 0x0124c4d0
01736d70  ldr x20,[x19]
01736d74  orr w1,wzr,#0xfffffffd
01736d78  mov w2,#0x6e7
01736d7c  mov x0,x20
01736d80  bl 0x0124a650
01736d84  orr w1,wzr,#0xfffffffe
01736d88  mov x0,x20
01736d8c  bl 0x0124c0c0
01736d90  orr w1,wzr,#0xfffffffe
01736d94  mov x0,x20
01736d98  bl 0x0124e920
01736d9c  mov w21,w0
01736da0  adrp x1,0x5772000
01736da4  add x1,x1,#0x4e4
01736da8  mov x0,x20
01736dac  bl 0x0124f120
01736db0  orr w1,wzr,#0xfffffffe
01736db4  mov w2,#0x1
01736db8  mov x0,x20
01736dbc  bl 0x0124cfc0
01736dc0  mov x0,x20
01736dc4  mov w1,w21
01736dc8  bl 0x0124e060
01736dcc  orr w1,wzr,#0xfffffffd
01736dd0  mov x0,x20
01736dd4  bl 0x0124c4d0
01736dd8  adrp x1,0x575d000
01736ddc  adrp x2,0x19c4000
01736de0  adrp x4,0x19c4000
01736de4  add x1,x1,#0xaf9
01736de8  add x2,x2,#0x17c
01736dec  add x4,x4,#0x184
01736df0  mov x0,x19
01736df4  mov x3,xzr
01736df8  mov x5,xzr
01736dfc  bl 0x019c3f94
01736e00  mov x19,x0
01736e04  ldr w8,[x19, #0x8]
01736e08  ldr x0,[x19]
01736e0c  sub w8,w8,#0x3
01736e10  str w8,[x19, #0x8]
01736e14  orr w1,wzr,#0xfffffffc
01736e18  bl 0x0124c4d0
01736e1c  ldr w8,[x19, #0x8]
01736e20  ldr x0,[x19]
01736e24  str wzr,[x19, #0x8]
01736e28  cmp w8,#0x1
01736e2c  b.lt 0x01736e38
01736e30  mvn w1,w8
01736e34  bl 0x0124c4d0
01736e38  ldr w8,[sp, #0x18]
01736e3c  cmp w8,#0x1
01736e40  b.lt 0x01736e50
01736e44  ldr x0,[sp, #0x10]
01736e48  mvn w1,w8
01736e4c  bl 0x0124c4d0
01736e50  ldr w8,[sp, #0x8]
01736e54  cmp w8,#0x1
01736e58  b.lt 0x01736e68
01736e5c  ldr x0,[sp]
01736e60  mvn w1,w8
01736e64  bl 0x0124c4d0
01736e68  ldp x29,x30,[sp, #0x40]
01736e6c  ldp x20,x19,[sp, #0x30]
01736e70  ldr x21,[sp, #0x20]
01736e74  add sp,sp,#0x50
01736e78  ret
