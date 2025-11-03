// ===== case217-TraitRandomAttribute @ 016b1cf4 =====
// existing function case217-TraitRandomAttribute
016b1cf4  sub sp,sp,#0x50
016b1cf8  str x21,[sp, #0x20]
016b1cfc  stp x20,x19,[sp, #0x30]
016b1d00  stp x29,x30,[sp, #0x40]
016b1d04  add x29,sp,#0x40
016b1d08  adrp x1,0x174a000
016b1d0c  add x1,x1,#0x87c
016b1d10  mov x19,x0
016b1d14  bl 0x0124ba40
016b1d18  adrp x1,0x575d000
016b1d1c  add x1,x1,#0xa06
016b1d20  mov x0,x19
016b1d24  str x19,[sp]
016b1d28  bl 0x01251aa0
016b1d2c  mov w8,#0x1
016b1d30  str w8,[sp, #0x8]
016b1d34  mov x0,sp
016b1d38  bl 0x0174aa04
016b1d3c  adrp x1,0x5760000
016b1d40  adrp x3,0x736d000
016b1d44  add x1,x1,#0xfbf
016b1d48  add x3,x3,#0x101
016b1d4c  add x0,sp,#0x10
016b1d50  mov x2,sp
016b1d54  bl 0x017c3f38
016b1d58  adrp x1,0x5760000
016b1d5c  adrp x2,0x17c3000
016b1d60  adrp x4,0x17c3000
016b1d64  add x1,x1,#0x339
016b1d68  add x2,x2,#0xef0
016b1d6c  add x4,x4,#0xef8
016b1d70  add x0,sp,#0x10
016b1d74  mov x3,xzr
016b1d78  mov x5,xzr
016b1d7c  bl 0x017c3d08
016b1d80  adrp x1,0x59b2000
016b1d84  adrp x2,0x17c3000
016b1d88  adrp x4,0x17c3000
016b1d8c  add x1,x1,#0x1e7
016b1d90  add x2,x2,#0xf00
016b1d94  add x4,x4,#0xf08
016b1d98  mov x3,xzr
016b1d9c  mov x5,xzr
016b1da0  bl 0x017c3d08
016b1da4  adrp x1,0x5967000
016b1da8  adrp x2,0x17c3000
016b1dac  adrp x4,0x17c3000
016b1db0  add x1,x1,#0xa7c
016b1db4  add x2,x2,#0xf10
016b1db8  add x4,x4,#0xf18
016b1dbc  mov x3,xzr
016b1dc0  mov x5,xzr
016b1dc4  bl 0x017c3d08
016b1dc8  mov x19,x0
016b1dcc  ldr x0,[x19]
016b1dd0  mov w1,#0x10
016b1dd4  bl 0x0124cba0
016b1dd8  adrp x8,0x17c3000
016b1ddc  dup v0.2D,xzr
016b1de0  add x8,x8,#0xf20
016b1de4  mov v0.D[0x0],x8
016b1de8  str q0,[x0]
016b1dec  ldr x0,[x19]
016b1df0  adrp x1,0x17c4000
016b1df4  add x1,x1,#0x51c
016b1df8  mov w2,#0x1
016b1dfc  bl 0x0124ec90
016b1e00  ldr x0,[x19]
016b1e04  mov w1,#0xffffffff
016b1e08  bl 0x0124c0c0
016b1e0c  ldr x20,[x19]
016b1e10  orr w1,wzr,#0xfffffffb
016b1e14  mov w2,#0x6e7
016b1e18  mov x0,x20
016b1e1c  bl 0x0124a650
016b1e20  orr w1,wzr,#0xfffffffe
016b1e24  mov x0,x20
016b1e28  bl 0x0124c0c0
016b1e2c  orr w1,wzr,#0xfffffffe
016b1e30  mov x0,x20
016b1e34  bl 0x0124e920
016b1e38  mov w21,w0
016b1e3c  adrp x1,0x5760000
016b1e40  add x1,x1,#0xfd4
016b1e44  mov x0,x20
016b1e48  bl 0x0124f120
016b1e4c  orr w1,wzr,#0xfffffffe
016b1e50  mov w2,#0x1
016b1e54  mov x0,x20
016b1e58  bl 0x0124cfc0
016b1e5c  mov x0,x20
016b1e60  mov w1,w21
016b1e64  bl 0x0124e060
016b1e68  orr w1,wzr,#0xfffffffd
016b1e6c  mov x0,x20
016b1e70  bl 0x0124c4d0
016b1e74  ldr x20,[x19]
016b1e78  orr w1,wzr,#0xfffffffd
016b1e7c  mov w2,#0x6e7
016b1e80  mov x0,x20
016b1e84  bl 0x0124a650
016b1e88  orr w1,wzr,#0xfffffffe
016b1e8c  mov x0,x20
016b1e90  bl 0x0124c0c0
016b1e94  orr w1,wzr,#0xfffffffe
016b1e98  mov x0,x20
016b1e9c  bl 0x0124e920
016b1ea0  mov w21,w0
016b1ea4  adrp x1,0x5760000
016b1ea8  add x1,x1,#0xfd4
016b1eac  mov x0,x20
016b1eb0  bl 0x0124f120
016b1eb4  orr w1,wzr,#0xfffffffe
016b1eb8  mov w2,#0x1
016b1ebc  mov x0,x20
016b1ec0  bl 0x0124cfc0
016b1ec4  mov x0,x20
016b1ec8  mov w1,w21
016b1ecc  bl 0x0124e060
016b1ed0  orr w1,wzr,#0xfffffffd
016b1ed4  mov x0,x20
016b1ed8  bl 0x0124c4d0
016b1edc  adrp x1,0x58e2000
016b1ee0  adrp x2,0x17c3000
016b1ee4  adrp x4,0x17c3000
016b1ee8  add x1,x1,#0x977
016b1eec  add x2,x2,#0xf28
016b1ef0  add x4,x4,#0xf30
016b1ef4  mov x0,x19
016b1ef8  mov x3,xzr
016b1efc  mov x5,xzr
016b1f00  bl 0x017c3d08
016b1f04  mov x19,x0
016b1f08  ldr w8,[x19, #0x8]
016b1f0c  ldr x0,[x19]
016b1f10  sub w8,w8,#0x3
016b1f14  str w8,[x19, #0x8]
016b1f18  orr w1,wzr,#0xfffffffc
016b1f1c  bl 0x0124c4d0
016b1f20  ldr w8,[x19, #0x8]
016b1f24  ldr x0,[x19]
016b1f28  str wzr,[x19, #0x8]
016b1f2c  cmp w8,#0x1
016b1f30  b.lt 0x016b1f3c
016b1f34  mvn w1,w8
016b1f38  bl 0x0124c4d0
016b1f3c  ldr w8,[sp, #0x18]
016b1f40  cmp w8,#0x1
016b1f44  b.lt 0x016b1f54
016b1f48  ldr x0,[sp, #0x10]
016b1f4c  mvn w1,w8
016b1f50  bl 0x0124c4d0
016b1f54  ldr w8,[sp, #0x8]
016b1f58  cmp w8,#0x1
016b1f5c  b.lt 0x016b1f6c
016b1f60  ldr x0,[sp]
016b1f64  mvn w1,w8
016b1f68  bl 0x0124c4d0
016b1f6c  ldp x29,x30,[sp, #0x40]
016b1f70  ldp x20,x19,[sp, #0x30]
016b1f74  ldr x21,[sp, #0x20]
016b1f78  add sp,sp,#0x50
016b1f7c  ret
