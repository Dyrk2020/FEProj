// ===== case754-MultiSkillHurtInfo @ 0172b2c4 =====
// existing function case754-MultiSkillHurtInfo
0172b2c4  sub sp,sp,#0x40
0172b2c8  str x19,[sp, #0x20]
0172b2cc  stp x29,x30,[sp, #0x30]
0172b2d0  add x29,sp,#0x30
0172b2d4  adrp x1,0x174a000
0172b2d8  add x1,x1,#0x87c
0172b2dc  mov x19,x0
0172b2e0  bl 0x0124ba40
0172b2e4  adrp x1,0x575d000
0172b2e8  add x1,x1,#0xa06
0172b2ec  mov x0,x19
0172b2f0  str x19,[sp]
0172b2f4  bl 0x01251aa0
0172b2f8  mov w8,#0x1
0172b2fc  str w8,[sp, #0x8]
0172b300  mov x0,sp
0172b304  bl 0x0174aa04
0172b308  adrp x1,0x5770000
0172b30c  adrp x3,0x736d000
0172b310  add x1,x1,#0xcbd
0172b314  add x3,x3,#0x101
0172b318  add x0,sp,#0x10
0172b31c  mov x2,sp
0172b320  bl 0x0198c264
0172b324  adrp x1,0x5770000
0172b328  adrp x2,0x198c000
0172b32c  adrp x4,0x198c000
0172b330  add x1,x1,#0xcd0
0172b334  add x2,x2,#0x4c
0172b338  add x4,x4,#0x54
0172b33c  add x0,sp,#0x10
0172b340  mov x3,xzr
0172b344  mov x5,xzr
0172b348  bl 0x0198be64
0172b34c  adrp x1,0x5770000
0172b350  adrp x2,0x198c000
0172b354  adrp x4,0x198c000
0172b358  add x1,x1,#0xcdc
0172b35c  add x2,x2,#0x244
0172b360  add x4,x4,#0x24c
0172b364  mov x3,xzr
0172b368  mov x5,xzr
0172b36c  bl 0x0198c05c
0172b370  adrp x1,0x59a4000
0172b374  adrp x2,0x198c000
0172b378  adrp x4,0x198c000
0172b37c  add x1,x1,#0x693
0172b380  add x2,x2,#0x254
0172b384  add x4,x4,#0x25c
0172b388  mov x3,xzr
0172b38c  mov x5,xzr
0172b390  bl 0x0198c05c
0172b394  mov x19,x0
0172b398  ldr w8,[x19, #0x8]
0172b39c  ldr x0,[x19]
0172b3a0  sub w8,w8,#0x3
0172b3a4  str w8,[x19, #0x8]
0172b3a8  orr w1,wzr,#0xfffffffc
0172b3ac  bl 0x0124c4d0
0172b3b0  ldr w8,[x19, #0x8]
0172b3b4  ldr x0,[x19]
0172b3b8  str wzr,[x19, #0x8]
0172b3bc  cmp w8,#0x1
0172b3c0  b.lt 0x0172b3cc
0172b3c4  mvn w1,w8
0172b3c8  bl 0x0124c4d0
0172b3cc  ldr w8,[sp, #0x18]
0172b3d0  cmp w8,#0x1
0172b3d4  b.lt 0x0172b3e4
0172b3d8  ldr x0,[sp, #0x10]
0172b3dc  mvn w1,w8
0172b3e0  bl 0x0124c4d0
0172b3e4  ldr w8,[sp, #0x8]
0172b3e8  cmp w8,#0x1
0172b3ec  b.lt 0x0172b3fc
0172b3f0  ldr x0,[sp]
0172b3f4  mvn w1,w8
0172b3f8  bl 0x0124c4d0
0172b3fc  ldp x29,x30,[sp, #0x30]
0172b400  ldr x19,[sp, #0x20]
0172b404  add sp,sp,#0x40
0172b408  ret
