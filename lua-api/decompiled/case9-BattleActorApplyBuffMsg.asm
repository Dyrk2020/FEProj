// ===== case9-BattleActorApplyBuffMsg @ 0168e210 =====
// existing function case9-BattleActorApplyBuffMsg
0168e210  sub sp,sp,#0x40
0168e214  stp x20,x19,[sp, #0x20]
0168e218  stp x29,x30,[sp, #0x30]
0168e21c  add x29,sp,#0x30
0168e220  adrp x1,0x174a000
0168e224  add x1,x1,#0x87c
0168e228  mov x19,x0
0168e22c  bl 0x0124ba40
0168e230  adrp x1,0x575d000
0168e234  add x1,x1,#0xa06
0168e238  mov x0,x19
0168e23c  str x19,[sp]
0168e240  bl 0x01251aa0
0168e244  mov w8,#0x1
0168e248  str w8,[sp, #0x8]
0168e24c  mov x0,sp
0168e250  bl 0x0174aa04
0168e254  adrp x1,0x575d000
0168e258  adrp x3,0x736d000
0168e25c  add x1,x1,#0xd00
0168e260  add x3,x3,#0x101
0168e264  add x0,sp,#0x10
0168e268  mov x2,sp
0168e26c  bl 0x01753f80
0168e270  ldr x0,[sp, #0x10]
0168e274  mov w1,#0x10
0168e278  bl 0x0124cba0
0168e27c  adrp x8,0x1753000
0168e280  dup v0.2D,xzr
0168e284  add x8,x8,#0xf64
0168e288  mov v0.D[0x0],x8
0168e28c  str q0,[x0]
0168e290  ldr x0,[sp, #0x10]
0168e294  adrp x1,0x1754000
0168e298  add x1,x1,#0x344
0168e29c  mov w2,#0x1
0168e2a0  bl 0x0124ec90
0168e2a4  ldr x0,[sp, #0x10]
0168e2a8  mov w1,#0xffffffff
0168e2ac  bl 0x0124c0c0
0168e2b0  ldr x19,[sp, #0x10]
0168e2b4  orr w1,wzr,#0xfffffffb
0168e2b8  mov w2,#0x6e7
0168e2bc  mov x0,x19
0168e2c0  bl 0x0124a650
0168e2c4  orr w1,wzr,#0xfffffffe
0168e2c8  mov x0,x19
0168e2cc  bl 0x0124c0c0
0168e2d0  orr w1,wzr,#0xfffffffe
0168e2d4  mov x0,x19
0168e2d8  bl 0x0124e920
0168e2dc  mov w20,w0
0168e2e0  adrp x1,0x5784000
0168e2e4  add x1,x1,#0x488
0168e2e8  mov x0,x19
0168e2ec  bl 0x0124f120
0168e2f0  orr w1,wzr,#0xfffffffe
0168e2f4  mov w2,#0x1
0168e2f8  mov x0,x19
0168e2fc  bl 0x0124cfc0
0168e300  mov x0,x19
0168e304  mov w1,w20
0168e308  bl 0x0124e060
0168e30c  orr w1,wzr,#0xfffffffd
0168e310  mov x0,x19
0168e314  bl 0x0124c4d0
0168e318  ldr x19,[sp, #0x10]
0168e31c  orr w1,wzr,#0xfffffffd
0168e320  mov w2,#0x6e7
0168e324  mov x0,x19
0168e328  bl 0x0124a650
0168e32c  orr w1,wzr,#0xfffffffe
0168e330  mov x0,x19
0168e334  bl 0x0124c0c0
0168e338  orr w1,wzr,#0xfffffffe
0168e33c  mov x0,x19
0168e340  bl 0x0124e920
0168e344  mov w20,w0
0168e348  adrp x1,0x5784000
0168e34c  add x1,x1,#0x488
0168e350  mov x0,x19
0168e354  bl 0x0124f120
0168e358  orr w1,wzr,#0xfffffffe
0168e35c  mov w2,#0x1
0168e360  mov x0,x19
0168e364  bl 0x0124cfc0
0168e368  mov x0,x19
0168e36c  mov w1,w20
0168e370  bl 0x0124e060
0168e374  orr w1,wzr,#0xfffffffd
0168e378  mov x0,x19
0168e37c  bl 0x0124c4d0
0168e380  ldr w8,[sp, #0x18]
0168e384  ldr x0,[sp, #0x10]
0168e388  sub w8,w8,#0x3
0168e38c  str w8,[sp, #0x18]
0168e390  orr w1,wzr,#0xfffffffc
0168e394  bl 0x0124c4d0
0168e398  ldr w8,[sp, #0x18]
0168e39c  ldr x0,[sp, #0x10]
0168e3a0  str wzr,[sp, #0x18]
0168e3a4  cmp w8,#0x1
0168e3a8  b.lt 0x0168e3cc
0168e3ac  mvn w1,w8
0168e3b0  bl 0x0124c4d0
0168e3b4  ldr w8,[sp, #0x18]
0168e3b8  cmp w8,#0x1
0168e3bc  b.lt 0x0168e3cc
0168e3c0  ldr x0,[sp, #0x10]
0168e3c4  mvn w1,w8
0168e3c8  bl 0x0124c4d0
0168e3cc  ldr w8,[sp, #0x8]
0168e3d0  cmp w8,#0x1
0168e3d4  b.lt 0x0168e3e4
0168e3d8  ldr x0,[sp]
0168e3dc  mvn w1,w8
0168e3e0  bl 0x0124c4d0
0168e3e4  ldp x29,x30,[sp, #0x30]
0168e3e8  ldp x20,x19,[sp, #0x20]
0168e3ec  add sp,sp,#0x40
0168e3f0  ret
