// ===== case327-StatusEffectResObject @ 016c2d28 =====
// existing function case327-StatusEffectResObject
016c2d28  sub sp,sp,#0x40
016c2d2c  stp x20,x19,[sp, #0x20]
016c2d30  stp x29,x30,[sp, #0x30]
016c2d34  add x29,sp,#0x30
016c2d38  adrp x1,0x174a000
016c2d3c  add x1,x1,#0x87c
016c2d40  mov x19,x0
016c2d44  bl 0x0124ba40
016c2d48  adrp x1,0x575d000
016c2d4c  add x1,x1,#0xa06
016c2d50  mov x0,x19
016c2d54  str x19,[sp]
016c2d58  bl 0x01251aa0
016c2d5c  mov w8,#0x1
016c2d60  str w8,[sp, #0x8]
016c2d64  mov x0,sp
016c2d68  bl 0x0174aa04
016c2d6c  adrp x1,0x5762000
016c2d70  adrp x3,0x736d000
016c2d74  add x1,x1,#0xcd6
016c2d78  add x3,x3,#0x101
016c2d7c  add x0,sp,#0x10
016c2d80  mov x2,sp
016c2d84  bl 0x01801bb8
016c2d88  ldr x0,[sp, #0x10]
016c2d8c  mov w1,#0x10
016c2d90  bl 0x0124cba0
016c2d94  adrp x8,0x1801000
016c2d98  dup v0.2D,xzr
016c2d9c  add x8,x8,#0xbb0
016c2da0  mov v0.D[0x0],x8
016c2da4  str q0,[x0]
016c2da8  ldr x0,[sp, #0x10]
016c2dac  adrp x1,0x1801000
016c2db0  add x1,x1,#0xf7c
016c2db4  mov w2,#0x1
016c2db8  bl 0x0124ec90
016c2dbc  ldr x0,[sp, #0x10]
016c2dc0  mov w1,#0xffffffff
016c2dc4  bl 0x0124c0c0
016c2dc8  ldr x19,[sp, #0x10]
016c2dcc  orr w1,wzr,#0xfffffffb
016c2dd0  mov w2,#0x6e7
016c2dd4  mov x0,x19
016c2dd8  bl 0x0124a650
016c2ddc  orr w1,wzr,#0xfffffffe
016c2de0  mov x0,x19
016c2de4  bl 0x0124c0c0
016c2de8  orr w1,wzr,#0xfffffffe
016c2dec  mov x0,x19
016c2df0  bl 0x0124e920
016c2df4  mov w20,w0
016c2df8  adrp x1,0x5762000
016c2dfc  add x1,x1,#0xcec
016c2e00  mov x0,x19
016c2e04  bl 0x0124f120
016c2e08  orr w1,wzr,#0xfffffffe
016c2e0c  mov w2,#0x1
016c2e10  mov x0,x19
016c2e14  bl 0x0124cfc0
016c2e18  mov x0,x19
016c2e1c  mov w1,w20
016c2e20  bl 0x0124e060
016c2e24  orr w1,wzr,#0xfffffffd
016c2e28  mov x0,x19
016c2e2c  bl 0x0124c4d0
016c2e30  ldr x19,[sp, #0x10]
016c2e34  orr w1,wzr,#0xfffffffd
016c2e38  mov w2,#0x6e7
016c2e3c  mov x0,x19
016c2e40  bl 0x0124a650
016c2e44  orr w1,wzr,#0xfffffffe
016c2e48  mov x0,x19
016c2e4c  bl 0x0124c0c0
016c2e50  orr w1,wzr,#0xfffffffe
016c2e54  mov x0,x19
016c2e58  bl 0x0124e920
016c2e5c  mov w20,w0
016c2e60  adrp x1,0x5762000
016c2e64  add x1,x1,#0xcec
016c2e68  mov x0,x19
016c2e6c  bl 0x0124f120
016c2e70  orr w1,wzr,#0xfffffffe
016c2e74  mov w2,#0x1
016c2e78  mov x0,x19
016c2e7c  bl 0x0124cfc0
016c2e80  mov x0,x19
016c2e84  mov w1,w20
016c2e88  bl 0x0124e060
016c2e8c  orr w1,wzr,#0xfffffffd
016c2e90  mov x0,x19
016c2e94  bl 0x0124c4d0
016c2e98  ldr w8,[sp, #0x18]
016c2e9c  ldr x0,[sp, #0x10]
016c2ea0  sub w8,w8,#0x3
016c2ea4  str w8,[sp, #0x18]
016c2ea8  orr w1,wzr,#0xfffffffc
016c2eac  bl 0x0124c4d0
016c2eb0  ldr w8,[sp, #0x18]
016c2eb4  ldr x0,[sp, #0x10]
016c2eb8  str wzr,[sp, #0x18]
016c2ebc  cmp w8,#0x1
016c2ec0  b.lt 0x016c2ee4
016c2ec4  mvn w1,w8
016c2ec8  bl 0x0124c4d0
016c2ecc  ldr w8,[sp, #0x18]
016c2ed0  cmp w8,#0x1
016c2ed4  b.lt 0x016c2ee4
016c2ed8  ldr x0,[sp, #0x10]
016c2edc  mvn w1,w8
016c2ee0  bl 0x0124c4d0
016c2ee4  ldr w8,[sp, #0x8]
016c2ee8  cmp w8,#0x1
016c2eec  b.lt 0x016c2efc
016c2ef0  ldr x0,[sp]
016c2ef4  mvn w1,w8
016c2ef8  bl 0x0124c4d0
016c2efc  ldp x29,x30,[sp, #0x30]
016c2f00  ldp x20,x19,[sp, #0x20]
016c2f04  add sp,sp,#0x40
016c2f08  ret
