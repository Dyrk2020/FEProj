// ===== case492-BattleHomebase @ 016f2cd8 =====
// existing function case492-BattleHomebase
016f2cd8  sub sp,sp,#0x40
016f2cdc  stp x20,x19,[sp, #0x20]
016f2ce0  stp x29,x30,[sp, #0x30]
016f2ce4  add x29,sp,#0x30
016f2ce8  adrp x1,0x174a000
016f2cec  add x1,x1,#0x87c
016f2cf0  mov x19,x0
016f2cf4  bl 0x0124ba40
016f2cf8  adrp x1,0x575d000
016f2cfc  add x1,x1,#0xa06
016f2d00  mov x0,x19
016f2d04  str x19,[sp]
016f2d08  bl 0x01251aa0
016f2d0c  mov w8,#0x1
016f2d10  str w8,[sp, #0x8]
016f2d14  mov x0,sp
016f2d18  bl 0x0174aa04
016f2d1c  adrp x1,0x5767000
016f2d20  adrp x3,0x736d000
016f2d24  add x1,x1,#0xe2c
016f2d28  add x3,x3,#0x101
016f2d2c  add x0,sp,#0x10
016f2d30  mov x2,sp
016f2d34  bl 0x01889f4c
016f2d38  ldr x0,[sp, #0x10]
016f2d3c  mov w1,#0x10
016f2d40  bl 0x0124cba0
016f2d44  adrp x8,0x1889000
016f2d48  dup v0.2D,xzr
016f2d4c  add x8,x8,#0xf3c
016f2d50  mov v0.D[0x0],x8
016f2d54  str q0,[x0]
016f2d58  ldr x0,[sp, #0x10]
016f2d5c  adrp x1,0x188a000
016f2d60  add x1,x1,#0x310
016f2d64  mov w2,#0x1
016f2d68  bl 0x0124ec90
016f2d6c  ldr x0,[sp, #0x10]
016f2d70  mov w1,#0xffffffff
016f2d74  bl 0x0124c0c0
016f2d78  ldr x19,[sp, #0x10]
016f2d7c  orr w1,wzr,#0xfffffffb
016f2d80  mov w2,#0x6e7
016f2d84  mov x0,x19
016f2d88  bl 0x0124a650
016f2d8c  orr w1,wzr,#0xfffffffe
016f2d90  mov x0,x19
016f2d94  bl 0x0124c0c0
016f2d98  orr w1,wzr,#0xfffffffe
016f2d9c  mov x0,x19
016f2da0  bl 0x0124e920
016f2da4  mov w20,w0
016f2da8  adrp x1,0x5767000
016f2dac  add x1,x1,#0xdfd
016f2db0  mov x0,x19
016f2db4  bl 0x0124f120
016f2db8  orr w1,wzr,#0xfffffffe
016f2dbc  mov w2,#0x1
016f2dc0  mov x0,x19
016f2dc4  bl 0x0124cfc0
016f2dc8  mov x0,x19
016f2dcc  mov w1,w20
016f2dd0  bl 0x0124e060
016f2dd4  orr w1,wzr,#0xfffffffd
016f2dd8  mov x0,x19
016f2ddc  bl 0x0124c4d0
016f2de0  ldr x19,[sp, #0x10]
016f2de4  orr w1,wzr,#0xfffffffd
016f2de8  mov w2,#0x6e7
016f2dec  mov x0,x19
016f2df0  bl 0x0124a650
016f2df4  orr w1,wzr,#0xfffffffe
016f2df8  mov x0,x19
016f2dfc  bl 0x0124c0c0
016f2e00  orr w1,wzr,#0xfffffffe
016f2e04  mov x0,x19
016f2e08  bl 0x0124e920
016f2e0c  mov w20,w0
016f2e10  adrp x1,0x5767000
016f2e14  add x1,x1,#0xdfd
016f2e18  mov x0,x19
016f2e1c  bl 0x0124f120
016f2e20  orr w1,wzr,#0xfffffffe
016f2e24  mov w2,#0x1
016f2e28  mov x0,x19
016f2e2c  bl 0x0124cfc0
016f2e30  mov x0,x19
016f2e34  mov w1,w20
016f2e38  bl 0x0124e060
016f2e3c  orr w1,wzr,#0xfffffffd
016f2e40  mov x0,x19
016f2e44  bl 0x0124c4d0
016f2e48  ldr x0,[sp, #0x10]
016f2e4c  mov w1,#0x10
016f2e50  bl 0x0124cba0
016f2e54  adrp x8,0x1889000
016f2e58  dup v0.2D,xzr
016f2e5c  add x8,x8,#0xf44
016f2e60  mov v0.D[0x0],x8
016f2e64  str q0,[x0]
016f2e68  ldr x0,[sp, #0x10]
016f2e6c  adrp x1,0x188a000
016f2e70  add x1,x1,#0x434
016f2e74  mov w2,#0x1
016f2e78  bl 0x0124ec90
016f2e7c  ldr x0,[sp, #0x10]
016f2e80  mov w1,#0xffffffff
016f2e84  bl 0x0124c0c0
016f2e88  ldr x19,[sp, #0x10]
016f2e8c  orr w1,wzr,#0xfffffffb
016f2e90  mov w2,#0x6e7
016f2e94  mov x0,x19
016f2e98  bl 0x0124a650
016f2e9c  orr w1,wzr,#0xfffffffe
016f2ea0  mov x0,x19
016f2ea4  bl 0x0124c0c0
016f2ea8  orr w1,wzr,#0xfffffffe
016f2eac  mov x0,x19
016f2eb0  bl 0x0124e920
016f2eb4  mov w20,w0
016f2eb8  adrp x1,0x5767000
016f2ebc  add x1,x1,#0xd21
016f2ec0  mov x0,x19
016f2ec4  bl 0x0124f120
016f2ec8  orr w1,wzr,#0xfffffffe
016f2ecc  mov w2,#0x1
016f2ed0  mov x0,x19
016f2ed4  bl 0x0124cfc0
016f2ed8  mov x0,x19
016f2edc  mov w1,w20
016f2ee0  bl 0x0124e060
016f2ee4  orr w1,wzr,#0xfffffffd
016f2ee8  mov x0,x19
016f2eec  bl 0x0124c4d0
016f2ef0  ldr x19,[sp, #0x10]
016f2ef4  orr w1,wzr,#0xfffffffd
016f2ef8  mov w2,#0x6e7
016f2efc  mov x0,x19
016f2f00  bl 0x0124a650
016f2f04  orr w1,wzr,#0xfffffffe
016f2f08  mov x0,x19
016f2f0c  bl 0x0124c0c0
016f2f10  orr w1,wzr,#0xfffffffe
016f2f14  mov x0,x19
016f2f18  bl 0x0124e920
016f2f1c  mov w20,w0
016f2f20  adrp x1,0x5767000
016f2f24  add x1,x1,#0xd21
016f2f28  mov x0,x19
016f2f2c  bl 0x0124f120
016f2f30  orr w1,wzr,#0xfffffffe
016f2f34  mov w2,#0x1
016f2f38  mov x0,x19
016f2f3c  bl 0x0124cfc0
016f2f40  mov x0,x19
016f2f44  mov w1,w20
016f2f48  bl 0x0124e060
016f2f4c  orr w1,wzr,#0xfffffffd
016f2f50  mov x0,x19
016f2f54  bl 0x0124c4d0
016f2f58  ldr w8,[sp, #0x18]
016f2f5c  ldr x0,[sp, #0x10]
016f2f60  sub w8,w8,#0x3
016f2f64  str w8,[sp, #0x18]
016f2f68  orr w1,wzr,#0xfffffffc
016f2f6c  bl 0x0124c4d0
016f2f70  ldr w8,[sp, #0x18]
016f2f74  ldr x0,[sp, #0x10]
016f2f78  str wzr,[sp, #0x18]
016f2f7c  cmp w8,#0x1
016f2f80  b.lt 0x016f2fa4
016f2f84  mvn w1,w8
016f2f88  bl 0x0124c4d0
016f2f8c  ldr w8,[sp, #0x18]
016f2f90  cmp w8,#0x1
016f2f94  b.lt 0x016f2fa4
016f2f98  ldr x0,[sp, #0x10]
016f2f9c  mvn w1,w8
016f2fa0  bl 0x0124c4d0
016f2fa4  ldr w8,[sp, #0x8]
016f2fa8  cmp w8,#0x1
016f2fac  b.lt 0x016f2fbc
016f2fb0  ldr x0,[sp]
016f2fb4  mvn w1,w8
016f2fb8  bl 0x0124c4d0
016f2fbc  ldp x29,x30,[sp, #0x30]
016f2fc0  ldp x20,x19,[sp, #0x20]
016f2fc4  add sp,sp,#0x40
016f2fc8  ret
