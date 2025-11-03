// ===== case139-SummonReplaceEntry @ 016a3cb4 =====
// existing function case139-SummonReplaceEntry
016a3cb4  sub sp,sp,#0x40
016a3cb8  stp x20,x19,[sp, #0x20]
016a3cbc  stp x29,x30,[sp, #0x30]
016a3cc0  add x29,sp,#0x30
016a3cc4  adrp x1,0x174a000
016a3cc8  add x1,x1,#0x87c
016a3ccc  mov x19,x0
016a3cd0  bl 0x0124ba40
016a3cd4  adrp x1,0x575d000
016a3cd8  add x1,x1,#0xa06
016a3cdc  mov x0,x19
016a3ce0  str x19,[sp]
016a3ce4  bl 0x01251aa0
016a3ce8  mov w8,#0x1
016a3cec  str w8,[sp, #0x8]
016a3cf0  mov x0,sp
016a3cf4  bl 0x0174aa04
016a3cf8  adrp x1,0x575f000
016a3cfc  adrp x3,0x736d000
016a3d00  add x1,x1,#0xeb4
016a3d04  add x3,x3,#0x101
016a3d08  add x0,sp,#0x10
016a3d0c  mov x2,sp
016a3d10  bl 0x0179a9c8
016a3d14  ldr x0,[sp, #0x10]
016a3d18  mov w1,#0x10
016a3d1c  bl 0x0124cba0
016a3d20  adrp x8,0x179a000
016a3d24  dup v0.2D,xzr
016a3d28  add x8,x8,#0x9c0
016a3d2c  mov v0.D[0x0],x8
016a3d30  str q0,[x0]
016a3d34  ldr x0,[sp, #0x10]
016a3d38  adrp x1,0x179a000
016a3d3c  add x1,x1,#0xd8c
016a3d40  mov w2,#0x1
016a3d44  bl 0x0124ec90
016a3d48  ldr x0,[sp, #0x10]
016a3d4c  mov w1,#0xffffffff
016a3d50  bl 0x0124c0c0
016a3d54  ldr x19,[sp, #0x10]
016a3d58  orr w1,wzr,#0xfffffffb
016a3d5c  mov w2,#0x6e7
016a3d60  mov x0,x19
016a3d64  bl 0x0124a650
016a3d68  orr w1,wzr,#0xfffffffe
016a3d6c  mov x0,x19
016a3d70  bl 0x0124c0c0
016a3d74  orr w1,wzr,#0xfffffffe
016a3d78  mov x0,x19
016a3d7c  bl 0x0124e920
016a3d80  mov w20,w0
016a3d84  adrp x1,0x575f000
016a3d88  add x1,x1,#0xec7
016a3d8c  mov x0,x19
016a3d90  bl 0x0124f120
016a3d94  orr w1,wzr,#0xfffffffe
016a3d98  mov w2,#0x1
016a3d9c  mov x0,x19
016a3da0  bl 0x0124cfc0
016a3da4  mov x0,x19
016a3da8  mov w1,w20
016a3dac  bl 0x0124e060
016a3db0  orr w1,wzr,#0xfffffffd
016a3db4  mov x0,x19
016a3db8  bl 0x0124c4d0
016a3dbc  ldr x19,[sp, #0x10]
016a3dc0  orr w1,wzr,#0xfffffffd
016a3dc4  mov w2,#0x6e7
016a3dc8  mov x0,x19
016a3dcc  bl 0x0124a650
016a3dd0  orr w1,wzr,#0xfffffffe
016a3dd4  mov x0,x19
016a3dd8  bl 0x0124c0c0
016a3ddc  orr w1,wzr,#0xfffffffe
016a3de0  mov x0,x19
016a3de4  bl 0x0124e920
016a3de8  mov w20,w0
016a3dec  adrp x1,0x575f000
016a3df0  add x1,x1,#0xec7
016a3df4  mov x0,x19
016a3df8  bl 0x0124f120
016a3dfc  orr w1,wzr,#0xfffffffe
016a3e00  mov w2,#0x1
016a3e04  mov x0,x19
016a3e08  bl 0x0124cfc0
016a3e0c  mov x0,x19
016a3e10  mov w1,w20
016a3e14  bl 0x0124e060
016a3e18  orr w1,wzr,#0xfffffffd
016a3e1c  mov x0,x19
016a3e20  bl 0x0124c4d0
016a3e24  ldr w8,[sp, #0x18]
016a3e28  ldr x0,[sp, #0x10]
016a3e2c  sub w8,w8,#0x3
016a3e30  str w8,[sp, #0x18]
016a3e34  orr w1,wzr,#0xfffffffc
016a3e38  bl 0x0124c4d0
016a3e3c  ldr w8,[sp, #0x18]
016a3e40  ldr x0,[sp, #0x10]
016a3e44  str wzr,[sp, #0x18]
016a3e48  cmp w8,#0x1
016a3e4c  b.lt 0x016a3e70
016a3e50  mvn w1,w8
016a3e54  bl 0x0124c4d0
016a3e58  ldr w8,[sp, #0x18]
016a3e5c  cmp w8,#0x1
016a3e60  b.lt 0x016a3e70
016a3e64  ldr x0,[sp, #0x10]
016a3e68  mvn w1,w8
016a3e6c  bl 0x0124c4d0
016a3e70  ldr w8,[sp, #0x8]
016a3e74  cmp w8,#0x1
016a3e78  b.lt 0x016a3e88
016a3e7c  ldr x0,[sp]
016a3e80  mvn w1,w8
016a3e84  bl 0x0124c4d0
016a3e88  ldp x29,x30,[sp, #0x30]
016a3e8c  ldp x20,x19,[sp, #0x20]
016a3e90  add sp,sp,#0x40
016a3e94  ret
