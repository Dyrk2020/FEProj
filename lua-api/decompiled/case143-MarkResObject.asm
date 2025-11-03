// ===== case143-MarkResObject @ 016a4bbc =====
// existing function case143-MarkResObject
016a4bbc  sub sp,sp,#0x40
016a4bc0  stp x20,x19,[sp, #0x20]
016a4bc4  stp x29,x30,[sp, #0x30]
016a4bc8  add x29,sp,#0x30
016a4bcc  adrp x1,0x174a000
016a4bd0  add x1,x1,#0x87c
016a4bd4  mov x19,x0
016a4bd8  bl 0x0124ba40
016a4bdc  adrp x1,0x575d000
016a4be0  add x1,x1,#0xa06
016a4be4  mov x0,x19
016a4be8  str x19,[sp]
016a4bec  bl 0x01251aa0
016a4bf0  mov w8,#0x1
016a4bf4  str w8,[sp, #0x8]
016a4bf8  mov x0,sp
016a4bfc  bl 0x0174aa04
016a4c00  adrp x1,0x575f000
016a4c04  adrp x3,0x736d000
016a4c08  add x1,x1,#0xf82
016a4c0c  add x3,x3,#0x101
016a4c10  add x0,sp,#0x10
016a4c14  mov x2,sp
016a4c18  bl 0x0179cc44
016a4c1c  ldr x0,[sp, #0x10]
016a4c20  mov w1,#0x10
016a4c24  bl 0x0124cba0
016a4c28  adrp x8,0x179c000
016a4c2c  dup v0.2D,xzr
016a4c30  add x8,x8,#0xc34
016a4c34  mov v0.D[0x0],x8
016a4c38  str q0,[x0]
016a4c3c  ldr x0,[sp, #0x10]
016a4c40  adrp x1,0x179d000
016a4c44  add x1,x1,#0x8
016a4c48  mov w2,#0x1
016a4c4c  bl 0x0124ec90
016a4c50  ldr x0,[sp, #0x10]
016a4c54  mov w1,#0xffffffff
016a4c58  bl 0x0124c0c0
016a4c5c  ldr x19,[sp, #0x10]
016a4c60  orr w1,wzr,#0xfffffffb
016a4c64  mov w2,#0x6e7
016a4c68  mov x0,x19
016a4c6c  bl 0x0124a650
016a4c70  orr w1,wzr,#0xfffffffe
016a4c74  mov x0,x19
016a4c78  bl 0x0124c0c0
016a4c7c  orr w1,wzr,#0xfffffffe
016a4c80  mov x0,x19
016a4c84  bl 0x0124e920
016a4c88  mov w20,w0
016a4c8c  adrp x1,0x575e000
016a4c90  add x1,x1,#0x56d
016a4c94  mov x0,x19
016a4c98  bl 0x0124f120
016a4c9c  orr w1,wzr,#0xfffffffe
016a4ca0  mov w2,#0x1
016a4ca4  mov x0,x19
016a4ca8  bl 0x0124cfc0
016a4cac  mov x0,x19
016a4cb0  mov w1,w20
016a4cb4  bl 0x0124e060
016a4cb8  orr w1,wzr,#0xfffffffd
016a4cbc  mov x0,x19
016a4cc0  bl 0x0124c4d0
016a4cc4  ldr x19,[sp, #0x10]
016a4cc8  orr w1,wzr,#0xfffffffd
016a4ccc  mov w2,#0x6e7
016a4cd0  mov x0,x19
016a4cd4  bl 0x0124a650
016a4cd8  orr w1,wzr,#0xfffffffe
016a4cdc  mov x0,x19
016a4ce0  bl 0x0124c0c0
016a4ce4  orr w1,wzr,#0xfffffffe
016a4ce8  mov x0,x19
016a4cec  bl 0x0124e920
016a4cf0  mov w20,w0
016a4cf4  adrp x1,0x575e000
016a4cf8  add x1,x1,#0x56d
016a4cfc  mov x0,x19
016a4d00  bl 0x0124f120
016a4d04  orr w1,wzr,#0xfffffffe
016a4d08  mov w2,#0x1
016a4d0c  mov x0,x19
016a4d10  bl 0x0124cfc0
016a4d14  mov x0,x19
016a4d18  mov w1,w20
016a4d1c  bl 0x0124e060
016a4d20  orr w1,wzr,#0xfffffffd
016a4d24  mov x0,x19
016a4d28  bl 0x0124c4d0
016a4d2c  ldr x0,[sp, #0x10]
016a4d30  mov w1,#0x10
016a4d34  bl 0x0124cba0
016a4d38  adrp x8,0x179c000
016a4d3c  dup v0.2D,xzr
016a4d40  add x8,x8,#0xc3c
016a4d44  mov v0.D[0x0],x8
016a4d48  str q0,[x0]
016a4d4c  ldr x0,[sp, #0x10]
016a4d50  adrp x1,0x179d000
016a4d54  add x1,x1,#0x12c
016a4d58  mov w2,#0x1
016a4d5c  bl 0x0124ec90
016a4d60  ldr x0,[sp, #0x10]
016a4d64  mov w1,#0xffffffff
016a4d68  bl 0x0124c0c0
016a4d6c  ldr x19,[sp, #0x10]
016a4d70  orr w1,wzr,#0xfffffffb
016a4d74  mov w2,#0x6e7
016a4d78  mov x0,x19
016a4d7c  bl 0x0124a650
016a4d80  orr w1,wzr,#0xfffffffe
016a4d84  mov x0,x19
016a4d88  bl 0x0124c0c0
016a4d8c  orr w1,wzr,#0xfffffffe
016a4d90  mov x0,x19
016a4d94  bl 0x0124e920
016a4d98  mov w20,w0
016a4d9c  adrp x1,0x575e000
016a4da0  add x1,x1,#0x578
016a4da4  mov x0,x19
016a4da8  bl 0x0124f120
016a4dac  orr w1,wzr,#0xfffffffe
016a4db0  mov w2,#0x1
016a4db4  mov x0,x19
016a4db8  bl 0x0124cfc0
016a4dbc  mov x0,x19
016a4dc0  mov w1,w20
016a4dc4  bl 0x0124e060
016a4dc8  orr w1,wzr,#0xfffffffd
016a4dcc  mov x0,x19
016a4dd0  bl 0x0124c4d0
016a4dd4  ldr x19,[sp, #0x10]
016a4dd8  orr w1,wzr,#0xfffffffd
016a4ddc  mov w2,#0x6e7
016a4de0  mov x0,x19
016a4de4  bl 0x0124a650
016a4de8  orr w1,wzr,#0xfffffffe
016a4dec  mov x0,x19
016a4df0  bl 0x0124c0c0
016a4df4  orr w1,wzr,#0xfffffffe
016a4df8  mov x0,x19
016a4dfc  bl 0x0124e920
016a4e00  mov w20,w0
016a4e04  adrp x1,0x575e000
016a4e08  add x1,x1,#0x578
016a4e0c  mov x0,x19
016a4e10  bl 0x0124f120
016a4e14  orr w1,wzr,#0xfffffffe
016a4e18  mov w2,#0x1
016a4e1c  mov x0,x19
016a4e20  bl 0x0124cfc0
016a4e24  mov x0,x19
016a4e28  mov w1,w20
016a4e2c  bl 0x0124e060
016a4e30  orr w1,wzr,#0xfffffffd
016a4e34  mov x0,x19
016a4e38  bl 0x0124c4d0
016a4e3c  ldr w8,[sp, #0x18]
016a4e40  ldr x0,[sp, #0x10]
016a4e44  sub w8,w8,#0x3
016a4e48  str w8,[sp, #0x18]
016a4e4c  orr w1,wzr,#0xfffffffc
016a4e50  bl 0x0124c4d0
016a4e54  ldr w8,[sp, #0x18]
016a4e58  ldr x0,[sp, #0x10]
016a4e5c  str wzr,[sp, #0x18]
016a4e60  cmp w8,#0x1
016a4e64  b.lt 0x016a4e88
016a4e68  mvn w1,w8
016a4e6c  bl 0x0124c4d0
016a4e70  ldr w8,[sp, #0x18]
016a4e74  cmp w8,#0x1
016a4e78  b.lt 0x016a4e88
016a4e7c  ldr x0,[sp, #0x10]
016a4e80  mvn w1,w8
016a4e84  bl 0x0124c4d0
016a4e88  ldr w8,[sp, #0x8]
016a4e8c  cmp w8,#0x1
016a4e90  b.lt 0x016a4ea0
016a4e94  ldr x0,[sp]
016a4e98  mvn w1,w8
016a4e9c  bl 0x0124c4d0
016a4ea0  ldp x29,x30,[sp, #0x30]
016a4ea4  ldp x20,x19,[sp, #0x20]
016a4ea8  add sp,sp,#0x40
016a4eac  ret
