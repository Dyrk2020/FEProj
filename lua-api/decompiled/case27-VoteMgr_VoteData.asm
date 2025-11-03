// ===== case27-VoteMgr_VoteData @ 01690c88 =====
// existing function case27-VoteMgr_VoteData
01690c88  sub sp,sp,#0x40
01690c8c  stp x20,x19,[sp, #0x20]
01690c90  stp x29,x30,[sp, #0x30]
01690c94  add x29,sp,#0x30
01690c98  adrp x1,0x174a000
01690c9c  add x1,x1,#0x87c
01690ca0  mov x19,x0
01690ca4  bl 0x0124ba40
01690ca8  adrp x1,0x575d000
01690cac  add x1,x1,#0xa06
01690cb0  mov x0,x19
01690cb4  str x19,[sp]
01690cb8  bl 0x01251aa0
01690cbc  mov w8,#0x1
01690cc0  str w8,[sp, #0x8]
01690cc4  mov x0,sp
01690cc8  bl 0x0174aa04
01690ccc  adrp x1,0x575d000
01690cd0  adrp x3,0x736d000
01690cd4  add x1,x1,#0xeaf
01690cd8  add x3,x3,#0x101
01690cdc  add x0,sp,#0x10
01690ce0  mov x2,sp
01690ce4  bl 0x0175cdd0
01690ce8  ldr x0,[sp, #0x10]
01690cec  mov w1,#0x10
01690cf0  bl 0x0124cba0
01690cf4  adrp x8,0x175c000
01690cf8  dup v0.2D,xzr
01690cfc  add x8,x8,#0xb98
01690d00  mov v0.D[0x0],x8
01690d04  str q0,[x0]
01690d08  ldr x0,[sp, #0x10]
01690d0c  adrp x1,0x175d000
01690d10  add x1,x1,#0x194
01690d14  mov w2,#0x1
01690d18  bl 0x0124ec90
01690d1c  ldr x0,[sp, #0x10]
01690d20  mov w1,#0xffffffff
01690d24  bl 0x0124c0c0
01690d28  ldr x19,[sp, #0x10]
01690d2c  orr w1,wzr,#0xfffffffb
01690d30  mov w2,#0x6e7
01690d34  mov x0,x19
01690d38  bl 0x0124a650
01690d3c  orr w1,wzr,#0xfffffffe
01690d40  mov x0,x19
01690d44  bl 0x0124c0c0
01690d48  orr w1,wzr,#0xfffffffe
01690d4c  mov x0,x19
01690d50  bl 0x0124e920
01690d54  mov w20,w0
01690d58  adrp x1,0x5963000
01690d5c  add x1,x1,#0x113
01690d60  mov x0,x19
01690d64  bl 0x0124f120
01690d68  orr w1,wzr,#0xfffffffe
01690d6c  mov w2,#0x1
01690d70  mov x0,x19
01690d74  bl 0x0124cfc0
01690d78  mov x0,x19
01690d7c  mov w1,w20
01690d80  bl 0x0124e060
01690d84  orr w1,wzr,#0xfffffffd
01690d88  mov x0,x19
01690d8c  bl 0x0124c4d0
01690d90  ldr x19,[sp, #0x10]
01690d94  orr w1,wzr,#0xfffffffd
01690d98  mov w2,#0x6e7
01690d9c  mov x0,x19
01690da0  bl 0x0124a650
01690da4  orr w1,wzr,#0xfffffffe
01690da8  mov x0,x19
01690dac  bl 0x0124c0c0
01690db0  orr w1,wzr,#0xfffffffe
01690db4  mov x0,x19
01690db8  bl 0x0124e920
01690dbc  mov w20,w0
01690dc0  adrp x1,0x5963000
01690dc4  add x1,x1,#0x113
01690dc8  mov x0,x19
01690dcc  bl 0x0124f120
01690dd0  orr w1,wzr,#0xfffffffe
01690dd4  mov w2,#0x1
01690dd8  mov x0,x19
01690ddc  bl 0x0124cfc0
01690de0  mov x0,x19
01690de4  mov w1,w20
01690de8  bl 0x0124e060
01690dec  orr w1,wzr,#0xfffffffd
01690df0  mov x0,x19
01690df4  bl 0x0124c4d0
01690df8  adrp x1,0x575d000
01690dfc  adrp x2,0x175c000
01690e00  adrp x4,0x175c000
01690e04  add x1,x1,#0xec0
01690e08  add x2,x2,#0xd88
01690e0c  add x4,x4,#0xd90
01690e10  add x0,sp,#0x10
01690e14  mov x3,xzr
01690e18  mov x5,xzr
01690e1c  bl 0x0175cba0
01690e20  adrp x1,0x575d000
01690e24  adrp x2,0x175c000
01690e28  adrp x4,0x175c000
01690e2c  add x1,x1,#0xec9
01690e30  add x2,x2,#0xdac
01690e34  add x4,x4,#0xdb4
01690e38  mov x3,xzr
01690e3c  mov x5,xzr
01690e40  bl 0x0175cba0
01690e44  mov x19,x0
01690e48  ldr w8,[x19, #0x8]
01690e4c  ldr x0,[x19]
01690e50  sub w8,w8,#0x3
01690e54  str w8,[x19, #0x8]
01690e58  orr w1,wzr,#0xfffffffc
01690e5c  bl 0x0124c4d0
01690e60  ldr w8,[x19, #0x8]
01690e64  ldr x0,[x19]
01690e68  str wzr,[x19, #0x8]
01690e6c  cmp w8,#0x1
01690e70  b.lt 0x01690e7c
01690e74  mvn w1,w8
01690e78  bl 0x0124c4d0
01690e7c  ldr w8,[sp, #0x18]
01690e80  cmp w8,#0x1
01690e84  b.lt 0x01690e94
01690e88  ldr x0,[sp, #0x10]
01690e8c  mvn w1,w8
01690e90  bl 0x0124c4d0
01690e94  ldr w8,[sp, #0x8]
01690e98  cmp w8,#0x1
01690e9c  b.lt 0x01690eac
01690ea0  ldr x0,[sp]
01690ea4  mvn w1,w8
01690ea8  bl 0x0124c4d0
01690eac  ldp x29,x30,[sp, #0x30]
01690eb0  ldp x20,x19,[sp, #0x20]
01690eb4  add sp,sp,#0x40
01690eb8  ret
