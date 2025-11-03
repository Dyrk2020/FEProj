// ===== case487-BattleMinion @ 016f1b68 =====
// existing function case487-BattleMinion
016f1b68  sub sp,sp,#0x50
016f1b6c  str x21,[sp, #0x20]
016f1b70  stp x20,x19,[sp, #0x30]
016f1b74  stp x29,x30,[sp, #0x40]
016f1b78  add x29,sp,#0x40
016f1b7c  adrp x1,0x174a000
016f1b80  add x1,x1,#0x87c
016f1b84  mov x19,x0
016f1b88  bl 0x0124ba40
016f1b8c  adrp x1,0x575d000
016f1b90  add x1,x1,#0xa06
016f1b94  mov x0,x19
016f1b98  str x19,[sp]
016f1b9c  bl 0x01251aa0
016f1ba0  mov w8,#0x1
016f1ba4  str w8,[sp, #0x8]
016f1ba8  mov x0,sp
016f1bac  bl 0x0174aa04
016f1bb0  adrp x1,0x5767000
016f1bb4  adrp x3,0x736d000
016f1bb8  add x1,x1,#0xcf1
016f1bbc  add x3,x3,#0x101
016f1bc0  add x0,sp,#0x10
016f1bc4  mov x2,sp
016f1bc8  bl 0x018858fc
016f1bcc  adrp x1,0x5767000
016f1bd0  adrp x2,0x1885000
016f1bd4  adrp x4,0x1885000
016f1bd8  add x1,x1,#0xcfe
016f1bdc  add x2,x2,#0x8d4
016f1be0  add x4,x4,#0x8dc
016f1be4  add x0,sp,#0x10
016f1be8  mov x3,xzr
016f1bec  mov x5,xzr
016f1bf0  bl 0x018856ec
016f1bf4  adrp x1,0x5767000
016f1bf8  adrp x2,0x1885000
016f1bfc  adrp x4,0x1885000
016f1c00  add x1,x1,#0xd10
016f1c04  add x2,x2,#0x8e4
016f1c08  add x4,x4,#0x8ec
016f1c0c  mov x3,xzr
016f1c10  mov x5,xzr
016f1c14  bl 0x018856ec
016f1c18  mov x19,x0
016f1c1c  ldr x0,[x19]
016f1c20  mov w1,#0x10
016f1c24  bl 0x0124cba0
016f1c28  adrp x8,0x1885000
016f1c2c  dup v0.2D,xzr
016f1c30  add x8,x8,#0x8f4
016f1c34  mov v0.D[0x0],x8
016f1c38  str q0,[x0]
016f1c3c  ldr x0,[x19]
016f1c40  adrp x1,0x1885000
016f1c44  add x1,x1,#0xee0
016f1c48  mov w2,#0x1
016f1c4c  bl 0x0124ec90
016f1c50  ldr x0,[x19]
016f1c54  mov w1,#0xffffffff
016f1c58  bl 0x0124c0c0
016f1c5c  ldr x20,[x19]
016f1c60  orr w1,wzr,#0xfffffffb
016f1c64  mov w2,#0x6e7
016f1c68  mov x0,x20
016f1c6c  bl 0x0124a650
016f1c70  orr w1,wzr,#0xfffffffe
016f1c74  mov x0,x20
016f1c78  bl 0x0124c0c0
016f1c7c  orr w1,wzr,#0xfffffffe
016f1c80  mov x0,x20
016f1c84  bl 0x0124e920
016f1c88  mov w21,w0
016f1c8c  adrp x1,0x5767000
016f1c90  add x1,x1,#0xd21
016f1c94  mov x0,x20
016f1c98  bl 0x0124f120
016f1c9c  orr w1,wzr,#0xfffffffe
016f1ca0  mov w2,#0x1
016f1ca4  mov x0,x20
016f1ca8  bl 0x0124cfc0
016f1cac  mov x0,x20
016f1cb0  mov w1,w21
016f1cb4  bl 0x0124e060
016f1cb8  orr w1,wzr,#0xfffffffd
016f1cbc  mov x0,x20
016f1cc0  bl 0x0124c4d0
016f1cc4  ldr x20,[x19]
016f1cc8  orr w1,wzr,#0xfffffffd
016f1ccc  mov w2,#0x6e7
016f1cd0  mov x0,x20
016f1cd4  bl 0x0124a650
016f1cd8  orr w1,wzr,#0xfffffffe
016f1cdc  mov x0,x20
016f1ce0  bl 0x0124c0c0
016f1ce4  orr w1,wzr,#0xfffffffe
016f1ce8  mov x0,x20
016f1cec  bl 0x0124e920
016f1cf0  mov w21,w0
016f1cf4  adrp x1,0x5767000
016f1cf8  add x1,x1,#0xd21
016f1cfc  mov x0,x20
016f1d00  bl 0x0124f120
016f1d04  orr w1,wzr,#0xfffffffe
016f1d08  mov w2,#0x1
016f1d0c  mov x0,x20
016f1d10  bl 0x0124cfc0
016f1d14  mov x0,x20
016f1d18  mov w1,w21
016f1d1c  bl 0x0124e060
016f1d20  orr w1,wzr,#0xfffffffd
016f1d24  mov x0,x20
016f1d28  bl 0x0124c4d0
016f1d2c  ldr w8,[x19, #0x8]
016f1d30  ldr x0,[x19]
016f1d34  sub w8,w8,#0x3
016f1d38  str w8,[x19, #0x8]
016f1d3c  orr w1,wzr,#0xfffffffc
016f1d40  bl 0x0124c4d0
016f1d44  ldr w8,[x19, #0x8]
016f1d48  ldr x0,[x19]
016f1d4c  str wzr,[x19, #0x8]
016f1d50  cmp w8,#0x1
016f1d54  b.lt 0x016f1d60
016f1d58  mvn w1,w8
016f1d5c  bl 0x0124c4d0
016f1d60  ldr w8,[sp, #0x18]
016f1d64  cmp w8,#0x1
016f1d68  b.lt 0x016f1d78
016f1d6c  ldr x0,[sp, #0x10]
016f1d70  mvn w1,w8
016f1d74  bl 0x0124c4d0
016f1d78  ldr w8,[sp, #0x8]
016f1d7c  cmp w8,#0x1
016f1d80  b.lt 0x016f1d90
016f1d84  ldr x0,[sp]
016f1d88  mvn w1,w8
016f1d8c  bl 0x0124c4d0
016f1d90  ldp x29,x30,[sp, #0x40]
016f1d94  ldp x20,x19,[sp, #0x30]
016f1d98  ldr x21,[sp, #0x20]
016f1d9c  add sp,sp,#0x50
016f1da0  ret
