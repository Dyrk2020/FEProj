// ===== case230-GainWeightResObject @ 016b3d0c =====
// existing function case230-GainWeightResObject
016b3d0c  sub sp,sp,#0x40
016b3d10  stp x20,x19,[sp, #0x20]
016b3d14  stp x29,x30,[sp, #0x30]
016b3d18  add x29,sp,#0x30
016b3d1c  adrp x1,0x174a000
016b3d20  add x1,x1,#0x87c
016b3d24  mov x19,x0
016b3d28  bl 0x0124ba40
016b3d2c  adrp x1,0x575d000
016b3d30  add x1,x1,#0xa06
016b3d34  mov x0,x19
016b3d38  str x19,[sp]
016b3d3c  bl 0x01251aa0
016b3d40  mov w8,#0x1
016b3d44  str w8,[sp, #0x8]
016b3d48  mov x0,sp
016b3d4c  bl 0x0174aa04
016b3d50  adrp x1,0x5761000
016b3d54  adrp x3,0x736d000
016b3d58  add x1,x1,#0x150
016b3d5c  add x3,x3,#0x101
016b3d60  add x0,sp,#0x10
016b3d64  mov x2,sp
016b3d68  bl 0x017ca2bc
016b3d6c  ldr x0,[sp, #0x10]
016b3d70  mov w1,#0x10
016b3d74  bl 0x0124cba0
016b3d78  adrp x8,0x17ca000
016b3d7c  dup v0.2D,xzr
016b3d80  add x8,x8,#0x2ac
016b3d84  mov v0.D[0x0],x8
016b3d88  str q0,[x0]
016b3d8c  ldr x0,[sp, #0x10]
016b3d90  adrp x1,0x17ca000
016b3d94  add x1,x1,#0x680
016b3d98  mov w2,#0x1
016b3d9c  bl 0x0124ec90
016b3da0  ldr x0,[sp, #0x10]
016b3da4  mov w1,#0xffffffff
016b3da8  bl 0x0124c0c0
016b3dac  ldr x19,[sp, #0x10]
016b3db0  orr w1,wzr,#0xfffffffb
016b3db4  mov w2,#0x6e7
016b3db8  mov x0,x19
016b3dbc  bl 0x0124a650
016b3dc0  orr w1,wzr,#0xfffffffe
016b3dc4  mov x0,x19
016b3dc8  bl 0x0124c0c0
016b3dcc  orr w1,wzr,#0xfffffffe
016b3dd0  mov x0,x19
016b3dd4  bl 0x0124e920
016b3dd8  mov w20,w0
016b3ddc  adrp x1,0x575e000
016b3de0  add x1,x1,#0x56d
016b3de4  mov x0,x19
016b3de8  bl 0x0124f120
016b3dec  orr w1,wzr,#0xfffffffe
016b3df0  mov w2,#0x1
016b3df4  mov x0,x19
016b3df8  bl 0x0124cfc0
016b3dfc  mov x0,x19
016b3e00  mov w1,w20
016b3e04  bl 0x0124e060
016b3e08  orr w1,wzr,#0xfffffffd
016b3e0c  mov x0,x19
016b3e10  bl 0x0124c4d0
016b3e14  ldr x19,[sp, #0x10]
016b3e18  orr w1,wzr,#0xfffffffd
016b3e1c  mov w2,#0x6e7
016b3e20  mov x0,x19
016b3e24  bl 0x0124a650
016b3e28  orr w1,wzr,#0xfffffffe
016b3e2c  mov x0,x19
016b3e30  bl 0x0124c0c0
016b3e34  orr w1,wzr,#0xfffffffe
016b3e38  mov x0,x19
016b3e3c  bl 0x0124e920
016b3e40  mov w20,w0
016b3e44  adrp x1,0x575e000
016b3e48  add x1,x1,#0x56d
016b3e4c  mov x0,x19
016b3e50  bl 0x0124f120
016b3e54  orr w1,wzr,#0xfffffffe
016b3e58  mov w2,#0x1
016b3e5c  mov x0,x19
016b3e60  bl 0x0124cfc0
016b3e64  mov x0,x19
016b3e68  mov w1,w20
016b3e6c  bl 0x0124e060
016b3e70  orr w1,wzr,#0xfffffffd
016b3e74  mov x0,x19
016b3e78  bl 0x0124c4d0
016b3e7c  ldr x0,[sp, #0x10]
016b3e80  mov w1,#0x10
016b3e84  bl 0x0124cba0
016b3e88  adrp x8,0x17ca000
016b3e8c  dup v0.2D,xzr
016b3e90  add x8,x8,#0x2b4
016b3e94  mov v0.D[0x0],x8
016b3e98  str q0,[x0]
016b3e9c  ldr x0,[sp, #0x10]
016b3ea0  adrp x1,0x17ca000
016b3ea4  add x1,x1,#0x7a4
016b3ea8  mov w2,#0x1
016b3eac  bl 0x0124ec90
016b3eb0  ldr x0,[sp, #0x10]
016b3eb4  mov w1,#0xffffffff
016b3eb8  bl 0x0124c0c0
016b3ebc  ldr x19,[sp, #0x10]
016b3ec0  orr w1,wzr,#0xfffffffb
016b3ec4  mov w2,#0x6e7
016b3ec8  mov x0,x19
016b3ecc  bl 0x0124a650
016b3ed0  orr w1,wzr,#0xfffffffe
016b3ed4  mov x0,x19
016b3ed8  bl 0x0124c0c0
016b3edc  orr w1,wzr,#0xfffffffe
016b3ee0  mov x0,x19
016b3ee4  bl 0x0124e920
016b3ee8  mov w20,w0
016b3eec  adrp x1,0x575e000
016b3ef0  add x1,x1,#0x578
016b3ef4  mov x0,x19
016b3ef8  bl 0x0124f120
016b3efc  orr w1,wzr,#0xfffffffe
016b3f00  mov w2,#0x1
016b3f04  mov x0,x19
016b3f08  bl 0x0124cfc0
016b3f0c  mov x0,x19
016b3f10  mov w1,w20
016b3f14  bl 0x0124e060
016b3f18  orr w1,wzr,#0xfffffffd
016b3f1c  mov x0,x19
016b3f20  bl 0x0124c4d0
016b3f24  ldr x19,[sp, #0x10]
016b3f28  orr w1,wzr,#0xfffffffd
016b3f2c  mov w2,#0x6e7
016b3f30  mov x0,x19
016b3f34  bl 0x0124a650
016b3f38  orr w1,wzr,#0xfffffffe
016b3f3c  mov x0,x19
016b3f40  bl 0x0124c0c0
016b3f44  orr w1,wzr,#0xfffffffe
016b3f48  mov x0,x19
016b3f4c  bl 0x0124e920
016b3f50  mov w20,w0
016b3f54  adrp x1,0x575e000
016b3f58  add x1,x1,#0x578
016b3f5c  mov x0,x19
016b3f60  bl 0x0124f120
016b3f64  orr w1,wzr,#0xfffffffe
016b3f68  mov w2,#0x1
016b3f6c  mov x0,x19
016b3f70  bl 0x0124cfc0
016b3f74  mov x0,x19
016b3f78  mov w1,w20
016b3f7c  bl 0x0124e060
016b3f80  orr w1,wzr,#0xfffffffd
016b3f84  mov x0,x19
016b3f88  bl 0x0124c4d0
016b3f8c  ldr w8,[sp, #0x18]
016b3f90  ldr x0,[sp, #0x10]
016b3f94  sub w8,w8,#0x3
016b3f98  str w8,[sp, #0x18]
016b3f9c  orr w1,wzr,#0xfffffffc
016b3fa0  bl 0x0124c4d0
016b3fa4  ldr w8,[sp, #0x18]
016b3fa8  ldr x0,[sp, #0x10]
016b3fac  str wzr,[sp, #0x18]
016b3fb0  cmp w8,#0x1
016b3fb4  b.lt 0x016b3fd8
016b3fb8  mvn w1,w8
016b3fbc  bl 0x0124c4d0
016b3fc0  ldr w8,[sp, #0x18]
016b3fc4  cmp w8,#0x1
016b3fc8  b.lt 0x016b3fd8
016b3fcc  ldr x0,[sp, #0x10]
016b3fd0  mvn w1,w8
016b3fd4  bl 0x0124c4d0
016b3fd8  ldr w8,[sp, #0x8]
016b3fdc  cmp w8,#0x1
016b3fe0  b.lt 0x016b3ff0
016b3fe4  ldr x0,[sp]
016b3fe8  mvn w1,w8
016b3fec  bl 0x0124c4d0
016b3ff0  ldp x29,x30,[sp, #0x30]
016b3ff4  ldp x20,x19,[sp, #0x20]
016b3ff8  add sp,sp,#0x40
016b3ffc  ret
