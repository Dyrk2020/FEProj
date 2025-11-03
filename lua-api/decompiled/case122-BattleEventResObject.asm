// ===== case122-BattleEventResObject @ 016a0d04 =====
// existing function case122-BattleEventResObject
016a0d04  sub sp,sp,#0x40
016a0d08  stp x20,x19,[sp, #0x20]
016a0d0c  stp x29,x30,[sp, #0x30]
016a0d10  add x29,sp,#0x30
016a0d14  adrp x1,0x174a000
016a0d18  add x1,x1,#0x87c
016a0d1c  mov x19,x0
016a0d20  bl 0x0124ba40
016a0d24  adrp x1,0x575d000
016a0d28  add x1,x1,#0xa06
016a0d2c  mov x0,x19
016a0d30  str x19,[sp]
016a0d34  bl 0x01251aa0
016a0d38  mov w8,#0x1
016a0d3c  str w8,[sp, #0x8]
016a0d40  mov x0,sp
016a0d44  bl 0x0174aa04
016a0d48  adrp x1,0x575f000
016a0d4c  adrp x3,0x736d000
016a0d50  add x1,x1,#0xc7e
016a0d54  add x3,x3,#0x101
016a0d58  add x0,sp,#0x10
016a0d5c  mov x2,sp
016a0d60  bl 0x01792d4c
016a0d64  ldr x0,[sp, #0x10]
016a0d68  mov w1,#0x10
016a0d6c  bl 0x0124cba0
016a0d70  adrp x8,0x1792000
016a0d74  dup v0.2D,xzr
016a0d78  add x8,x8,#0xd3c
016a0d7c  mov v0.D[0x0],x8
016a0d80  str q0,[x0]
016a0d84  ldr x0,[sp, #0x10]
016a0d88  adrp x1,0x1793000
016a0d8c  add x1,x1,#0x110
016a0d90  mov w2,#0x1
016a0d94  bl 0x0124ec90
016a0d98  ldr x0,[sp, #0x10]
016a0d9c  mov w1,#0xffffffff
016a0da0  bl 0x0124c0c0
016a0da4  ldr x19,[sp, #0x10]
016a0da8  orr w1,wzr,#0xfffffffb
016a0dac  mov w2,#0x6e7
016a0db0  mov x0,x19
016a0db4  bl 0x0124a650
016a0db8  orr w1,wzr,#0xfffffffe
016a0dbc  mov x0,x19
016a0dc0  bl 0x0124c0c0
016a0dc4  orr w1,wzr,#0xfffffffe
016a0dc8  mov x0,x19
016a0dcc  bl 0x0124e920
016a0dd0  mov w20,w0
016a0dd4  adrp x1,0x575e000
016a0dd8  add x1,x1,#0x56d
016a0ddc  mov x0,x19
016a0de0  bl 0x0124f120
016a0de4  orr w1,wzr,#0xfffffffe
016a0de8  mov w2,#0x1
016a0dec  mov x0,x19
016a0df0  bl 0x0124cfc0
016a0df4  mov x0,x19
016a0df8  mov w1,w20
016a0dfc  bl 0x0124e060
016a0e00  orr w1,wzr,#0xfffffffd
016a0e04  mov x0,x19
016a0e08  bl 0x0124c4d0
016a0e0c  ldr x19,[sp, #0x10]
016a0e10  orr w1,wzr,#0xfffffffd
016a0e14  mov w2,#0x6e7
016a0e18  mov x0,x19
016a0e1c  bl 0x0124a650
016a0e20  orr w1,wzr,#0xfffffffe
016a0e24  mov x0,x19
016a0e28  bl 0x0124c0c0
016a0e2c  orr w1,wzr,#0xfffffffe
016a0e30  mov x0,x19
016a0e34  bl 0x0124e920
016a0e38  mov w20,w0
016a0e3c  adrp x1,0x575e000
016a0e40  add x1,x1,#0x56d
016a0e44  mov x0,x19
016a0e48  bl 0x0124f120
016a0e4c  orr w1,wzr,#0xfffffffe
016a0e50  mov w2,#0x1
016a0e54  mov x0,x19
016a0e58  bl 0x0124cfc0
016a0e5c  mov x0,x19
016a0e60  mov w1,w20
016a0e64  bl 0x0124e060
016a0e68  orr w1,wzr,#0xfffffffd
016a0e6c  mov x0,x19
016a0e70  bl 0x0124c4d0
016a0e74  ldr x0,[sp, #0x10]
016a0e78  mov w1,#0x10
016a0e7c  bl 0x0124cba0
016a0e80  adrp x8,0x1792000
016a0e84  dup v0.2D,xzr
016a0e88  add x8,x8,#0xd44
016a0e8c  mov v0.D[0x0],x8
016a0e90  str q0,[x0]
016a0e94  ldr x0,[sp, #0x10]
016a0e98  adrp x1,0x1793000
016a0e9c  add x1,x1,#0x234
016a0ea0  mov w2,#0x1
016a0ea4  bl 0x0124ec90
016a0ea8  ldr x0,[sp, #0x10]
016a0eac  mov w1,#0xffffffff
016a0eb0  bl 0x0124c0c0
016a0eb4  ldr x19,[sp, #0x10]
016a0eb8  orr w1,wzr,#0xfffffffb
016a0ebc  mov w2,#0x6e7
016a0ec0  mov x0,x19
016a0ec4  bl 0x0124a650
016a0ec8  orr w1,wzr,#0xfffffffe
016a0ecc  mov x0,x19
016a0ed0  bl 0x0124c0c0
016a0ed4  orr w1,wzr,#0xfffffffe
016a0ed8  mov x0,x19
016a0edc  bl 0x0124e920
016a0ee0  mov w20,w0
016a0ee4  adrp x1,0x575e000
016a0ee8  add x1,x1,#0x578
016a0eec  mov x0,x19
016a0ef0  bl 0x0124f120
016a0ef4  orr w1,wzr,#0xfffffffe
016a0ef8  mov w2,#0x1
016a0efc  mov x0,x19
016a0f00  bl 0x0124cfc0
016a0f04  mov x0,x19
016a0f08  mov w1,w20
016a0f0c  bl 0x0124e060
016a0f10  orr w1,wzr,#0xfffffffd
016a0f14  mov x0,x19
016a0f18  bl 0x0124c4d0
016a0f1c  ldr x19,[sp, #0x10]
016a0f20  orr w1,wzr,#0xfffffffd
016a0f24  mov w2,#0x6e7
016a0f28  mov x0,x19
016a0f2c  bl 0x0124a650
016a0f30  orr w1,wzr,#0xfffffffe
016a0f34  mov x0,x19
016a0f38  bl 0x0124c0c0
016a0f3c  orr w1,wzr,#0xfffffffe
016a0f40  mov x0,x19
016a0f44  bl 0x0124e920
016a0f48  mov w20,w0
016a0f4c  adrp x1,0x575e000
016a0f50  add x1,x1,#0x578
016a0f54  mov x0,x19
016a0f58  bl 0x0124f120
016a0f5c  orr w1,wzr,#0xfffffffe
016a0f60  mov w2,#0x1
016a0f64  mov x0,x19
016a0f68  bl 0x0124cfc0
016a0f6c  mov x0,x19
016a0f70  mov w1,w20
016a0f74  bl 0x0124e060
016a0f78  orr w1,wzr,#0xfffffffd
016a0f7c  mov x0,x19
016a0f80  bl 0x0124c4d0
016a0f84  ldr w8,[sp, #0x18]
016a0f88  ldr x0,[sp, #0x10]
016a0f8c  sub w8,w8,#0x3
016a0f90  str w8,[sp, #0x18]
016a0f94  orr w1,wzr,#0xfffffffc
016a0f98  bl 0x0124c4d0
016a0f9c  ldr w8,[sp, #0x18]
016a0fa0  ldr x0,[sp, #0x10]
016a0fa4  str wzr,[sp, #0x18]
016a0fa8  cmp w8,#0x1
016a0fac  b.lt 0x016a0fd0
016a0fb0  mvn w1,w8
016a0fb4  bl 0x0124c4d0
016a0fb8  ldr w8,[sp, #0x18]
016a0fbc  cmp w8,#0x1
016a0fc0  b.lt 0x016a0fd0
016a0fc4  ldr x0,[sp, #0x10]
016a0fc8  mvn w1,w8
016a0fcc  bl 0x0124c4d0
016a0fd0  ldr w8,[sp, #0x8]
016a0fd4  cmp w8,#0x1
016a0fd8  b.lt 0x016a0fe8
016a0fdc  ldr x0,[sp]
016a0fe0  mvn w1,w8
016a0fe4  bl 0x0124c4d0
016a0fe8  ldp x29,x30,[sp, #0x30]
016a0fec  ldp x20,x19,[sp, #0x20]
016a0ff0  add sp,sp,#0x40
016a0ff4  ret
