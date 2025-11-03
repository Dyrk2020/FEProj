// ===== case75-MonsterBehaviorLevelExpressionConfig @ 01698c38 =====
// existing function case75-MonsterBehaviorLevelExpressionConfig
01698c38  sub sp,sp,#0x50
01698c3c  str x21,[sp, #0x20]
01698c40  stp x20,x19,[sp, #0x30]
01698c44  stp x29,x30,[sp, #0x40]
01698c48  add x29,sp,#0x40
01698c4c  adrp x1,0x174a000
01698c50  add x1,x1,#0x87c
01698c54  mov x19,x0
01698c58  bl 0x0124ba40
01698c5c  adrp x1,0x575d000
01698c60  add x1,x1,#0xa06
01698c64  mov x0,x19
01698c68  str x19,[sp]
01698c6c  bl 0x01251aa0
01698c70  mov w8,#0x1
01698c74  str w8,[sp, #0x8]
01698c78  mov x0,sp
01698c7c  bl 0x0174aa04
01698c80  adrp x1,0x575e000
01698c84  adrp x3,0x736d000
01698c88  add x1,x1,#0xda2
01698c8c  add x3,x3,#0x101
01698c90  add x0,sp,#0x10
01698c94  mov x2,sp
01698c98  bl 0x01779674
01698c9c  adrp x1,0x575e000
01698ca0  adrp x2,0x1779000
01698ca4  adrp x4,0x1779000
01698ca8  add x1,x1,#0xdc7
01698cac  add x2,x2,#0x65c
01698cb0  add x4,x4,#0x664
01698cb4  add x0,sp,#0x10
01698cb8  mov x3,xzr
01698cbc  mov x5,xzr
01698cc0  bl 0x01779474
01698cc4  mov x19,x0
01698cc8  ldr x0,[x19]
01698ccc  mov w1,#0x10
01698cd0  bl 0x0124cba0
01698cd4  adrp x8,0x1779000
01698cd8  dup v0.2D,xzr
01698cdc  add x8,x8,#0x66c
01698ce0  mov v0.D[0x0],x8
01698ce4  str q0,[x0]
01698ce8  ldr x0,[x19]
01698cec  adrp x1,0x1779000
01698cf0  add x1,x1,#0xc58
01698cf4  mov w2,#0x1
01698cf8  bl 0x0124ec90
01698cfc  ldr x0,[x19]
01698d00  mov w1,#0xffffffff
01698d04  bl 0x0124c0c0
01698d08  ldr x20,[x19]
01698d0c  orr w1,wzr,#0xfffffffb
01698d10  mov w2,#0x6e7
01698d14  mov x0,x20
01698d18  bl 0x0124a650
01698d1c  orr w1,wzr,#0xfffffffe
01698d20  mov x0,x20
01698d24  bl 0x0124c0c0
01698d28  orr w1,wzr,#0xfffffffe
01698d2c  mov x0,x20
01698d30  bl 0x0124e920
01698d34  mov w21,w0
01698d38  adrp x1,0x575e000
01698d3c  add x1,x1,#0xdce
01698d40  mov x0,x20
01698d44  bl 0x0124f120
01698d48  orr w1,wzr,#0xfffffffe
01698d4c  mov w2,#0x1
01698d50  mov x0,x20
01698d54  bl 0x0124cfc0
01698d58  mov x0,x20
01698d5c  mov w1,w21
01698d60  bl 0x0124e060
01698d64  orr w1,wzr,#0xfffffffd
01698d68  mov x0,x20
01698d6c  bl 0x0124c4d0
01698d70  ldr x20,[x19]
01698d74  orr w1,wzr,#0xfffffffd
01698d78  mov w2,#0x6e7
01698d7c  mov x0,x20
01698d80  bl 0x0124a650
01698d84  orr w1,wzr,#0xfffffffe
01698d88  mov x0,x20
01698d8c  bl 0x0124c0c0
01698d90  orr w1,wzr,#0xfffffffe
01698d94  mov x0,x20
01698d98  bl 0x0124e920
01698d9c  mov w21,w0
01698da0  adrp x1,0x575e000
01698da4  add x1,x1,#0xdce
01698da8  mov x0,x20
01698dac  bl 0x0124f120
01698db0  orr w1,wzr,#0xfffffffe
01698db4  mov w2,#0x1
01698db8  mov x0,x20
01698dbc  bl 0x0124cfc0
01698dc0  mov x0,x20
01698dc4  mov w1,w21
01698dc8  bl 0x0124e060
01698dcc  orr w1,wzr,#0xfffffffd
01698dd0  mov x0,x20
01698dd4  bl 0x0124c4d0
01698dd8  ldr w8,[x19, #0x8]
01698ddc  ldr x0,[x19]
01698de0  sub w8,w8,#0x3
01698de4  str w8,[x19, #0x8]
01698de8  orr w1,wzr,#0xfffffffc
01698dec  bl 0x0124c4d0
01698df0  ldr w8,[x19, #0x8]
01698df4  ldr x0,[x19]
01698df8  str wzr,[x19, #0x8]
01698dfc  cmp w8,#0x1
01698e00  b.lt 0x01698e0c
01698e04  mvn w1,w8
01698e08  bl 0x0124c4d0
01698e0c  ldr w8,[sp, #0x18]
01698e10  cmp w8,#0x1
01698e14  b.lt 0x01698e24
01698e18  ldr x0,[sp, #0x10]
01698e1c  mvn w1,w8
01698e20  bl 0x0124c4d0
01698e24  ldr w8,[sp, #0x8]
01698e28  cmp w8,#0x1
01698e2c  b.lt 0x01698e3c
01698e30  ldr x0,[sp]
01698e34  mvn w1,w8
01698e38  bl 0x0124c4d0
01698e3c  ldp x29,x30,[sp, #0x40]
01698e40  ldp x20,x19,[sp, #0x30]
01698e44  ldr x21,[sp, #0x20]
01698e48  add sp,sp,#0x50
01698e4c  ret
