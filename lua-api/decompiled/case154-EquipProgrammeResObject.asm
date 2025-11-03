// ===== case154-EquipProgrammeResObject @ 016a6c08 =====
// existing function case154-EquipProgrammeResObject
016a6c08  sub sp,sp,#0x40
016a6c0c  stp x20,x19,[sp, #0x20]
016a6c10  stp x29,x30,[sp, #0x30]
016a6c14  add x29,sp,#0x30
016a6c18  adrp x1,0x174a000
016a6c1c  add x1,x1,#0x87c
016a6c20  mov x19,x0
016a6c24  bl 0x0124ba40
016a6c28  adrp x1,0x575d000
016a6c2c  add x1,x1,#0xa06
016a6c30  mov x0,x19
016a6c34  str x19,[sp]
016a6c38  bl 0x01251aa0
016a6c3c  mov w8,#0x1
016a6c40  str w8,[sp, #0x8]
016a6c44  mov x0,sp
016a6c48  bl 0x0174aa04
016a6c4c  adrp x1,0x5760000
016a6c50  adrp x3,0x736d000
016a6c54  add x1,x1,#0x136
016a6c58  add x3,x3,#0x101
016a6c5c  add x0,sp,#0x10
016a6c60  mov x2,sp
016a6c64  bl 0x017a19a4
016a6c68  ldr x0,[sp, #0x10]
016a6c6c  mov w1,#0x10
016a6c70  bl 0x0124cba0
016a6c74  adrp x8,0x17a1000
016a6c78  dup v0.2D,xzr
016a6c7c  add x8,x8,#0x994
016a6c80  mov v0.D[0x0],x8
016a6c84  str q0,[x0]
016a6c88  ldr x0,[sp, #0x10]
016a6c8c  adrp x1,0x17a1000
016a6c90  add x1,x1,#0xd68
016a6c94  mov w2,#0x1
016a6c98  bl 0x0124ec90
016a6c9c  ldr x0,[sp, #0x10]
016a6ca0  mov w1,#0xffffffff
016a6ca4  bl 0x0124c0c0
016a6ca8  ldr x19,[sp, #0x10]
016a6cac  orr w1,wzr,#0xfffffffb
016a6cb0  mov w2,#0x6e7
016a6cb4  mov x0,x19
016a6cb8  bl 0x0124a650
016a6cbc  orr w1,wzr,#0xfffffffe
016a6cc0  mov x0,x19
016a6cc4  bl 0x0124c0c0
016a6cc8  orr w1,wzr,#0xfffffffe
016a6ccc  mov x0,x19
016a6cd0  bl 0x0124e920
016a6cd4  mov w20,w0
016a6cd8  adrp x1,0x575e000
016a6cdc  add x1,x1,#0x56d
016a6ce0  mov x0,x19
016a6ce4  bl 0x0124f120
016a6ce8  orr w1,wzr,#0xfffffffe
016a6cec  mov w2,#0x1
016a6cf0  mov x0,x19
016a6cf4  bl 0x0124cfc0
016a6cf8  mov x0,x19
016a6cfc  mov w1,w20
016a6d00  bl 0x0124e060
016a6d04  orr w1,wzr,#0xfffffffd
016a6d08  mov x0,x19
016a6d0c  bl 0x0124c4d0
016a6d10  ldr x19,[sp, #0x10]
016a6d14  orr w1,wzr,#0xfffffffd
016a6d18  mov w2,#0x6e7
016a6d1c  mov x0,x19
016a6d20  bl 0x0124a650
016a6d24  orr w1,wzr,#0xfffffffe
016a6d28  mov x0,x19
016a6d2c  bl 0x0124c0c0
016a6d30  orr w1,wzr,#0xfffffffe
016a6d34  mov x0,x19
016a6d38  bl 0x0124e920
016a6d3c  mov w20,w0
016a6d40  adrp x1,0x575e000
016a6d44  add x1,x1,#0x56d
016a6d48  mov x0,x19
016a6d4c  bl 0x0124f120
016a6d50  orr w1,wzr,#0xfffffffe
016a6d54  mov w2,#0x1
016a6d58  mov x0,x19
016a6d5c  bl 0x0124cfc0
016a6d60  mov x0,x19
016a6d64  mov w1,w20
016a6d68  bl 0x0124e060
016a6d6c  orr w1,wzr,#0xfffffffd
016a6d70  mov x0,x19
016a6d74  bl 0x0124c4d0
016a6d78  ldr x0,[sp, #0x10]
016a6d7c  mov w1,#0x10
016a6d80  bl 0x0124cba0
016a6d84  adrp x8,0x17a1000
016a6d88  dup v0.2D,xzr
016a6d8c  add x8,x8,#0x99c
016a6d90  mov v0.D[0x0],x8
016a6d94  str q0,[x0]
016a6d98  ldr x0,[sp, #0x10]
016a6d9c  adrp x1,0x17a1000
016a6da0  add x1,x1,#0xe8c
016a6da4  mov w2,#0x1
016a6da8  bl 0x0124ec90
016a6dac  ldr x0,[sp, #0x10]
016a6db0  mov w1,#0xffffffff
016a6db4  bl 0x0124c0c0
016a6db8  ldr x19,[sp, #0x10]
016a6dbc  orr w1,wzr,#0xfffffffb
016a6dc0  mov w2,#0x6e7
016a6dc4  mov x0,x19
016a6dc8  bl 0x0124a650
016a6dcc  orr w1,wzr,#0xfffffffe
016a6dd0  mov x0,x19
016a6dd4  bl 0x0124c0c0
016a6dd8  orr w1,wzr,#0xfffffffe
016a6ddc  mov x0,x19
016a6de0  bl 0x0124e920
016a6de4  mov w20,w0
016a6de8  adrp x1,0x575e000
016a6dec  add x1,x1,#0x578
016a6df0  mov x0,x19
016a6df4  bl 0x0124f120
016a6df8  orr w1,wzr,#0xfffffffe
016a6dfc  mov w2,#0x1
016a6e00  mov x0,x19
016a6e04  bl 0x0124cfc0
016a6e08  mov x0,x19
016a6e0c  mov w1,w20
016a6e10  bl 0x0124e060
016a6e14  orr w1,wzr,#0xfffffffd
016a6e18  mov x0,x19
016a6e1c  bl 0x0124c4d0
016a6e20  ldr x19,[sp, #0x10]
016a6e24  orr w1,wzr,#0xfffffffd
016a6e28  mov w2,#0x6e7
016a6e2c  mov x0,x19
016a6e30  bl 0x0124a650
016a6e34  orr w1,wzr,#0xfffffffe
016a6e38  mov x0,x19
016a6e3c  bl 0x0124c0c0
016a6e40  orr w1,wzr,#0xfffffffe
016a6e44  mov x0,x19
016a6e48  bl 0x0124e920
016a6e4c  mov w20,w0
016a6e50  adrp x1,0x575e000
016a6e54  add x1,x1,#0x578
016a6e58  mov x0,x19
016a6e5c  bl 0x0124f120
016a6e60  orr w1,wzr,#0xfffffffe
016a6e64  mov w2,#0x1
016a6e68  mov x0,x19
016a6e6c  bl 0x0124cfc0
016a6e70  mov x0,x19
016a6e74  mov w1,w20
016a6e78  bl 0x0124e060
016a6e7c  orr w1,wzr,#0xfffffffd
016a6e80  mov x0,x19
016a6e84  bl 0x0124c4d0
016a6e88  ldr w8,[sp, #0x18]
016a6e8c  ldr x0,[sp, #0x10]
016a6e90  sub w8,w8,#0x3
016a6e94  str w8,[sp, #0x18]
016a6e98  orr w1,wzr,#0xfffffffc
016a6e9c  bl 0x0124c4d0
016a6ea0  ldr w8,[sp, #0x18]
016a6ea4  ldr x0,[sp, #0x10]
016a6ea8  str wzr,[sp, #0x18]
016a6eac  cmp w8,#0x1
016a6eb0  b.lt 0x016a6ed4
016a6eb4  mvn w1,w8
016a6eb8  bl 0x0124c4d0
016a6ebc  ldr w8,[sp, #0x18]
016a6ec0  cmp w8,#0x1
016a6ec4  b.lt 0x016a6ed4
016a6ec8  ldr x0,[sp, #0x10]
016a6ecc  mvn w1,w8
016a6ed0  bl 0x0124c4d0
016a6ed4  ldr w8,[sp, #0x8]
016a6ed8  cmp w8,#0x1
016a6edc  b.lt 0x016a6eec
016a6ee0  ldr x0,[sp]
016a6ee4  mvn w1,w8
016a6ee8  bl 0x0124c4d0
016a6eec  ldp x29,x30,[sp, #0x30]
016a6ef0  ldp x20,x19,[sp, #0x20]
016a6ef4  add sp,sp,#0x40
016a6ef8  ret
