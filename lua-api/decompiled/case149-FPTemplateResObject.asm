// ===== case149-FPTemplateResObject @ 016a5cb4 =====
// existing function case149-FPTemplateResObject
016a5cb4  sub sp,sp,#0x40
016a5cb8  stp x20,x19,[sp, #0x20]
016a5cbc  stp x29,x30,[sp, #0x30]
016a5cc0  add x29,sp,#0x30
016a5cc4  adrp x1,0x174a000
016a5cc8  add x1,x1,#0x87c
016a5ccc  mov x19,x0
016a5cd0  bl 0x0124ba40
016a5cd4  adrp x1,0x575d000
016a5cd8  add x1,x1,#0xa06
016a5cdc  mov x0,x19
016a5ce0  str x19,[sp]
016a5ce4  bl 0x01251aa0
016a5ce8  mov w8,#0x1
016a5cec  str w8,[sp, #0x8]
016a5cf0  mov x0,sp
016a5cf4  bl 0x0174aa04
016a5cf8  adrp x1,0x5760000
016a5cfc  adrp x3,0x736d000
016a5d00  add x1,x1,#0x87
016a5d04  add x3,x3,#0x101
016a5d08  add x0,sp,#0x10
016a5d0c  mov x2,sp
016a5d10  bl 0x0179f918
016a5d14  ldr x0,[sp, #0x10]
016a5d18  mov w1,#0x10
016a5d1c  bl 0x0124cba0
016a5d20  adrp x8,0x179f000
016a5d24  dup v0.2D,xzr
016a5d28  add x8,x8,#0x908
016a5d2c  mov v0.D[0x0],x8
016a5d30  str q0,[x0]
016a5d34  ldr x0,[sp, #0x10]
016a5d38  adrp x1,0x179f000
016a5d3c  add x1,x1,#0xcdc
016a5d40  mov w2,#0x1
016a5d44  bl 0x0124ec90
016a5d48  ldr x0,[sp, #0x10]
016a5d4c  mov w1,#0xffffffff
016a5d50  bl 0x0124c0c0
016a5d54  ldr x19,[sp, #0x10]
016a5d58  orr w1,wzr,#0xfffffffb
016a5d5c  mov w2,#0x6e7
016a5d60  mov x0,x19
016a5d64  bl 0x0124a650
016a5d68  orr w1,wzr,#0xfffffffe
016a5d6c  mov x0,x19
016a5d70  bl 0x0124c0c0
016a5d74  orr w1,wzr,#0xfffffffe
016a5d78  mov x0,x19
016a5d7c  bl 0x0124e920
016a5d80  mov w20,w0
016a5d84  adrp x1,0x575e000
016a5d88  add x1,x1,#0x56d
016a5d8c  mov x0,x19
016a5d90  bl 0x0124f120
016a5d94  orr w1,wzr,#0xfffffffe
016a5d98  mov w2,#0x1
016a5d9c  mov x0,x19
016a5da0  bl 0x0124cfc0
016a5da4  mov x0,x19
016a5da8  mov w1,w20
016a5dac  bl 0x0124e060
016a5db0  orr w1,wzr,#0xfffffffd
016a5db4  mov x0,x19
016a5db8  bl 0x0124c4d0
016a5dbc  ldr x19,[sp, #0x10]
016a5dc0  orr w1,wzr,#0xfffffffd
016a5dc4  mov w2,#0x6e7
016a5dc8  mov x0,x19
016a5dcc  bl 0x0124a650
016a5dd0  orr w1,wzr,#0xfffffffe
016a5dd4  mov x0,x19
016a5dd8  bl 0x0124c0c0
016a5ddc  orr w1,wzr,#0xfffffffe
016a5de0  mov x0,x19
016a5de4  bl 0x0124e920
016a5de8  mov w20,w0
016a5dec  adrp x1,0x575e000
016a5df0  add x1,x1,#0x56d
016a5df4  mov x0,x19
016a5df8  bl 0x0124f120
016a5dfc  orr w1,wzr,#0xfffffffe
016a5e00  mov w2,#0x1
016a5e04  mov x0,x19
016a5e08  bl 0x0124cfc0
016a5e0c  mov x0,x19
016a5e10  mov w1,w20
016a5e14  bl 0x0124e060
016a5e18  orr w1,wzr,#0xfffffffd
016a5e1c  mov x0,x19
016a5e20  bl 0x0124c4d0
016a5e24  ldr x0,[sp, #0x10]
016a5e28  mov w1,#0x10
016a5e2c  bl 0x0124cba0
016a5e30  adrp x8,0x179f000
016a5e34  dup v0.2D,xzr
016a5e38  add x8,x8,#0x910
016a5e3c  mov v0.D[0x0],x8
016a5e40  str q0,[x0]
016a5e44  ldr x0,[sp, #0x10]
016a5e48  adrp x1,0x179f000
016a5e4c  add x1,x1,#0xe00
016a5e50  mov w2,#0x1
016a5e54  bl 0x0124ec90
016a5e58  ldr x0,[sp, #0x10]
016a5e5c  mov w1,#0xffffffff
016a5e60  bl 0x0124c0c0
016a5e64  ldr x19,[sp, #0x10]
016a5e68  orr w1,wzr,#0xfffffffb
016a5e6c  mov w2,#0x6e7
016a5e70  mov x0,x19
016a5e74  bl 0x0124a650
016a5e78  orr w1,wzr,#0xfffffffe
016a5e7c  mov x0,x19
016a5e80  bl 0x0124c0c0
016a5e84  orr w1,wzr,#0xfffffffe
016a5e88  mov x0,x19
016a5e8c  bl 0x0124e920
016a5e90  mov w20,w0
016a5e94  adrp x1,0x575e000
016a5e98  add x1,x1,#0x578
016a5e9c  mov x0,x19
016a5ea0  bl 0x0124f120
016a5ea4  orr w1,wzr,#0xfffffffe
016a5ea8  mov w2,#0x1
016a5eac  mov x0,x19
016a5eb0  bl 0x0124cfc0
016a5eb4  mov x0,x19
016a5eb8  mov w1,w20
016a5ebc  bl 0x0124e060
016a5ec0  orr w1,wzr,#0xfffffffd
016a5ec4  mov x0,x19
016a5ec8  bl 0x0124c4d0
016a5ecc  ldr x19,[sp, #0x10]
016a5ed0  orr w1,wzr,#0xfffffffd
016a5ed4  mov w2,#0x6e7
016a5ed8  mov x0,x19
016a5edc  bl 0x0124a650
016a5ee0  orr w1,wzr,#0xfffffffe
016a5ee4  mov x0,x19
016a5ee8  bl 0x0124c0c0
016a5eec  orr w1,wzr,#0xfffffffe
016a5ef0  mov x0,x19
016a5ef4  bl 0x0124e920
016a5ef8  mov w20,w0
016a5efc  adrp x1,0x575e000
016a5f00  add x1,x1,#0x578
016a5f04  mov x0,x19
016a5f08  bl 0x0124f120
016a5f0c  orr w1,wzr,#0xfffffffe
016a5f10  mov w2,#0x1
016a5f14  mov x0,x19
016a5f18  bl 0x0124cfc0
016a5f1c  mov x0,x19
016a5f20  mov w1,w20
016a5f24  bl 0x0124e060
016a5f28  orr w1,wzr,#0xfffffffd
016a5f2c  mov x0,x19
016a5f30  bl 0x0124c4d0
016a5f34  ldr w8,[sp, #0x18]
016a5f38  ldr x0,[sp, #0x10]
016a5f3c  sub w8,w8,#0x3
016a5f40  str w8,[sp, #0x18]
016a5f44  orr w1,wzr,#0xfffffffc
016a5f48  bl 0x0124c4d0
016a5f4c  ldr w8,[sp, #0x18]
016a5f50  ldr x0,[sp, #0x10]
016a5f54  str wzr,[sp, #0x18]
016a5f58  cmp w8,#0x1
016a5f5c  b.lt 0x016a5f80
016a5f60  mvn w1,w8
016a5f64  bl 0x0124c4d0
016a5f68  ldr w8,[sp, #0x18]
016a5f6c  cmp w8,#0x1
016a5f70  b.lt 0x016a5f80
016a5f74  ldr x0,[sp, #0x10]
016a5f78  mvn w1,w8
016a5f7c  bl 0x0124c4d0
016a5f80  ldr w8,[sp, #0x8]
016a5f84  cmp w8,#0x1
016a5f88  b.lt 0x016a5f98
016a5f8c  ldr x0,[sp]
016a5f90  mvn w1,w8
016a5f94  bl 0x0124c4d0
016a5f98  ldp x29,x30,[sp, #0x30]
016a5f9c  ldp x20,x19,[sp, #0x20]
016a5fa0  add sp,sp,#0x40
016a5fa4  ret
