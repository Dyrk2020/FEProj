// ===== case535-FreeSkillMgr @ 016f9cdc =====
// existing function case535-FreeSkillMgr
016f9cdc  sub sp,sp,#0x40
016f9ce0  stp x20,x19,[sp, #0x20]
016f9ce4  stp x29,x30,[sp, #0x30]
016f9ce8  add x29,sp,#0x30
016f9cec  adrp x1,0x174a000
016f9cf0  add x1,x1,#0x87c
016f9cf4  mov x19,x0
016f9cf8  bl 0x0124ba40
016f9cfc  adrp x1,0x575d000
016f9d00  add x1,x1,#0xa06
016f9d04  mov x0,x19
016f9d08  str x19,[sp]
016f9d0c  bl 0x01251aa0
016f9d10  mov w8,#0x1
016f9d14  str w8,[sp, #0x8]
016f9d18  mov x0,sp
016f9d1c  bl 0x0174aa04
016f9d20  adrp x1,0x5768000
016f9d24  adrp x3,0x736d000
016f9d28  add x1,x1,#0xc60
016f9d2c  add x3,x3,#0x101
016f9d30  add x0,sp,#0x10
016f9d34  mov x2,sp
016f9d38  bl 0x018b2fb4
016f9d3c  ldr x0,[sp, #0x10]
016f9d40  mov w1,#0x10
016f9d44  bl 0x0124cba0
016f9d48  adrp x8,0x18b2000
016f9d4c  dup v0.2D,xzr
016f9d50  add x8,x8,#0xfac
016f9d54  mov v0.D[0x0],x8
016f9d58  str q0,[x0]
016f9d5c  ldr x0,[sp, #0x10]
016f9d60  adrp x1,0x18b3000
016f9d64  add x1,x1,#0x378
016f9d68  mov w2,#0x1
016f9d6c  bl 0x0124ec90
016f9d70  ldr x0,[sp, #0x10]
016f9d74  mov w1,#0xffffffff
016f9d78  bl 0x0124c0c0
016f9d7c  ldr x19,[sp, #0x10]
016f9d80  orr w1,wzr,#0xfffffffb
016f9d84  mov w2,#0x6e7
016f9d88  mov x0,x19
016f9d8c  bl 0x0124a650
016f9d90  orr w1,wzr,#0xfffffffe
016f9d94  mov x0,x19
016f9d98  bl 0x0124c0c0
016f9d9c  orr w1,wzr,#0xfffffffe
016f9da0  mov x0,x19
016f9da4  bl 0x0124e920
016f9da8  mov w20,w0
016f9dac  adrp x1,0x5762000
016f9db0  add x1,x1,#0x1cd
016f9db4  mov x0,x19
016f9db8  bl 0x0124f120
016f9dbc  orr w1,wzr,#0xfffffffe
016f9dc0  mov w2,#0x1
016f9dc4  mov x0,x19
016f9dc8  bl 0x0124cfc0
016f9dcc  mov x0,x19
016f9dd0  mov w1,w20
016f9dd4  bl 0x0124e060
016f9dd8  orr w1,wzr,#0xfffffffd
016f9ddc  mov x0,x19
016f9de0  bl 0x0124c4d0
016f9de4  ldr x19,[sp, #0x10]
016f9de8  orr w1,wzr,#0xfffffffd
016f9dec  mov w2,#0x6e7
016f9df0  mov x0,x19
016f9df4  bl 0x0124a650
016f9df8  orr w1,wzr,#0xfffffffe
016f9dfc  mov x0,x19
016f9e00  bl 0x0124c0c0
016f9e04  orr w1,wzr,#0xfffffffe
016f9e08  mov x0,x19
016f9e0c  bl 0x0124e920
016f9e10  mov w20,w0
016f9e14  adrp x1,0x5762000
016f9e18  add x1,x1,#0x1cd
016f9e1c  mov x0,x19
016f9e20  bl 0x0124f120
016f9e24  orr w1,wzr,#0xfffffffe
016f9e28  mov w2,#0x1
016f9e2c  mov x0,x19
016f9e30  bl 0x0124cfc0
016f9e34  mov x0,x19
016f9e38  mov w1,w20
016f9e3c  bl 0x0124e060
016f9e40  orr w1,wzr,#0xfffffffd
016f9e44  mov x0,x19
016f9e48  bl 0x0124c4d0
016f9e4c  ldr w8,[sp, #0x18]
016f9e50  ldr x0,[sp, #0x10]
016f9e54  sub w8,w8,#0x3
016f9e58  str w8,[sp, #0x18]
016f9e5c  orr w1,wzr,#0xfffffffc
016f9e60  bl 0x0124c4d0
016f9e64  ldr w8,[sp, #0x18]
016f9e68  ldr x0,[sp, #0x10]
016f9e6c  str wzr,[sp, #0x18]
016f9e70  cmp w8,#0x1
016f9e74  b.lt 0x016f9e98
016f9e78  mvn w1,w8
016f9e7c  bl 0x0124c4d0
016f9e80  ldr w8,[sp, #0x18]
016f9e84  cmp w8,#0x1
016f9e88  b.lt 0x016f9e98
016f9e8c  ldr x0,[sp, #0x10]
016f9e90  mvn w1,w8
016f9e94  bl 0x0124c4d0
016f9e98  ldr w8,[sp, #0x8]
016f9e9c  cmp w8,#0x1
016f9ea0  b.lt 0x016f9eb0
016f9ea4  ldr x0,[sp]
016f9ea8  mvn w1,w8
016f9eac  bl 0x0124c4d0
016f9eb0  ldp x29,x30,[sp, #0x30]
016f9eb4  ldp x20,x19,[sp, #0x20]
016f9eb8  add sp,sp,#0x40
016f9ebc  ret
