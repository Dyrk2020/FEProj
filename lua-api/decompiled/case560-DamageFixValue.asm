// ===== case560-DamageFixValue @ 016ff274 =====
// existing function case560-DamageFixValue
016ff274  sub sp,sp,#0x40
016ff278  str x19,[sp, #0x20]
016ff27c  stp x29,x30,[sp, #0x30]
016ff280  add x29,sp,#0x30
016ff284  adrp x1,0x174a000
016ff288  add x1,x1,#0x87c
016ff28c  mov x19,x0
016ff290  bl 0x0124ba40
016ff294  adrp x1,0x575d000
016ff298  add x1,x1,#0xa06
016ff29c  mov x0,x19
016ff2a0  str x19,[sp]
016ff2a4  bl 0x01251aa0
016ff2a8  mov w8,#0x1
016ff2ac  str w8,[sp, #0x8]
016ff2b0  mov x0,sp
016ff2b4  bl 0x0174aa04
016ff2b8  adrp x1,0x5769000
016ff2bc  adrp x3,0x736d000
016ff2c0  add x1,x1,#0x65e
016ff2c4  add x3,x3,#0x101
016ff2c8  add x0,sp,#0x10
016ff2cc  mov x2,sp
016ff2d0  bl 0x018ccf20
016ff2d4  adrp x1,0x5955000
016ff2d8  adrp x2,0x18cc000
016ff2dc  adrp x4,0x18cc000
016ff2e0  add x1,x1,#0x16f
016ff2e4  add x2,x2,#0xcac
016ff2e8  add x4,x4,#0xcb4
016ff2ec  add x0,sp,#0x10
016ff2f0  mov x3,xzr
016ff2f4  mov x5,xzr
016ff2f8  bl 0x018ccac4
016ff2fc  adrp x1,0x5769000
016ff300  adrp x2,0x18cc000
016ff304  adrp x4,0x18cc000
016ff308  add x1,x1,#0x66d
016ff30c  add x2,x2,#0xefc
016ff310  add x4,x4,#0xf04
016ff314  mov x3,xzr
016ff318  mov x5,xzr
016ff31c  bl 0x018ccd14
016ff320  mov x19,x0
016ff324  ldr w8,[x19, #0x8]
016ff328  ldr x0,[x19]
016ff32c  sub w8,w8,#0x3
016ff330  str w8,[x19, #0x8]
016ff334  orr w1,wzr,#0xfffffffc
016ff338  bl 0x0124c4d0
016ff33c  ldr w8,[x19, #0x8]
016ff340  ldr x0,[x19]
016ff344  str wzr,[x19, #0x8]
016ff348  cmp w8,#0x1
016ff34c  b.lt 0x016ff358
016ff350  mvn w1,w8
016ff354  bl 0x0124c4d0
016ff358  ldr w8,[sp, #0x18]
016ff35c  cmp w8,#0x1
016ff360  b.lt 0x016ff370
016ff364  ldr x0,[sp, #0x10]
016ff368  mvn w1,w8
016ff36c  bl 0x0124c4d0
016ff370  ldr w8,[sp, #0x8]
016ff374  cmp w8,#0x1
016ff378  b.lt 0x016ff388
016ff37c  ldr x0,[sp]
016ff380  mvn w1,w8
016ff384  bl 0x0124c4d0
016ff388  ldp x29,x30,[sp, #0x30]
016ff38c  ldr x19,[sp, #0x20]
016ff390  add sp,sp,#0x40
016ff394  ret
