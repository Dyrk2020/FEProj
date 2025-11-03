// ===== case108-UnitHeroOperateSettingResObject @ 0169e210 =====
// existing function case108-UnitHeroOperateSettingResObject
0169e210  sub sp,sp,#0x40
0169e214  stp x20,x19,[sp, #0x20]
0169e218  stp x29,x30,[sp, #0x30]
0169e21c  add x29,sp,#0x30
0169e220  adrp x1,0x174a000
0169e224  add x1,x1,#0x87c
0169e228  mov x19,x0
0169e22c  bl 0x0124ba40
0169e230  adrp x1,0x575d000
0169e234  add x1,x1,#0xa06
0169e238  mov x0,x19
0169e23c  str x19,[sp]
0169e240  bl 0x01251aa0
0169e244  mov w8,#0x1
0169e248  str w8,[sp, #0x8]
0169e24c  mov x0,sp
0169e250  bl 0x0174aa04
0169e254  adrp x1,0x575f000
0169e258  adrp x3,0x736d000
0169e25c  add x1,x1,#0x3a9
0169e260  add x3,x3,#0x101
0169e264  add x0,sp,#0x10
0169e268  mov x2,sp
0169e26c  bl 0x0178afa4
0169e270  ldr x0,[sp, #0x10]
0169e274  mov w1,#0x10
0169e278  bl 0x0124cba0
0169e27c  adrp x8,0x178a000
0169e280  dup v0.2D,xzr
0169e284  add x8,x8,#0xf9c
0169e288  mov v0.D[0x0],x8
0169e28c  str q0,[x0]
0169e290  ldr x0,[sp, #0x10]
0169e294  adrp x1,0x178b000
0169e298  add x1,x1,#0x368
0169e29c  mov w2,#0x1
0169e2a0  bl 0x0124ec90
0169e2a4  ldr x0,[sp, #0x10]
0169e2a8  mov w1,#0xffffffff
0169e2ac  bl 0x0124c0c0
0169e2b0  ldr x19,[sp, #0x10]
0169e2b4  orr w1,wzr,#0xfffffffb
0169e2b8  mov w2,#0x6e7
0169e2bc  mov x0,x19
0169e2c0  bl 0x0124a650
0169e2c4  orr w1,wzr,#0xfffffffe
0169e2c8  mov x0,x19
0169e2cc  bl 0x0124c0c0
0169e2d0  orr w1,wzr,#0xfffffffe
0169e2d4  mov x0,x19
0169e2d8  bl 0x0124e920
0169e2dc  mov w20,w0
0169e2e0  adrp x1,0x575f000
0169e2e4  add x1,x1,#0x3c9
0169e2e8  mov x0,x19
0169e2ec  bl 0x0124f120
0169e2f0  orr w1,wzr,#0xfffffffe
0169e2f4  mov w2,#0x1
0169e2f8  mov x0,x19
0169e2fc  bl 0x0124cfc0
0169e300  mov x0,x19
0169e304  mov w1,w20
0169e308  bl 0x0124e060
0169e30c  orr w1,wzr,#0xfffffffd
0169e310  mov x0,x19
0169e314  bl 0x0124c4d0
0169e318  ldr x19,[sp, #0x10]
0169e31c  orr w1,wzr,#0xfffffffd
0169e320  mov w2,#0x6e7
0169e324  mov x0,x19
0169e328  bl 0x0124a650
0169e32c  orr w1,wzr,#0xfffffffe
0169e330  mov x0,x19
0169e334  bl 0x0124c0c0
0169e338  orr w1,wzr,#0xfffffffe
0169e33c  mov x0,x19
0169e340  bl 0x0124e920
0169e344  mov w20,w0
0169e348  adrp x1,0x575f000
0169e34c  add x1,x1,#0x3c9
0169e350  mov x0,x19
0169e354  bl 0x0124f120
0169e358  orr w1,wzr,#0xfffffffe
0169e35c  mov w2,#0x1
0169e360  mov x0,x19
0169e364  bl 0x0124cfc0
0169e368  mov x0,x19
0169e36c  mov w1,w20
0169e370  bl 0x0124e060
0169e374  orr w1,wzr,#0xfffffffd
0169e378  mov x0,x19
0169e37c  bl 0x0124c4d0
0169e380  ldr w8,[sp, #0x18]
0169e384  ldr x0,[sp, #0x10]
0169e388  sub w8,w8,#0x3
0169e38c  str w8,[sp, #0x18]
0169e390  orr w1,wzr,#0xfffffffc
0169e394  bl 0x0124c4d0
0169e398  ldr w8,[sp, #0x18]
0169e39c  ldr x0,[sp, #0x10]
0169e3a0  str wzr,[sp, #0x18]
0169e3a4  cmp w8,#0x1
0169e3a8  b.lt 0x0169e3cc
0169e3ac  mvn w1,w8
0169e3b0  bl 0x0124c4d0
0169e3b4  ldr w8,[sp, #0x18]
0169e3b8  cmp w8,#0x1
0169e3bc  b.lt 0x0169e3cc
0169e3c0  ldr x0,[sp, #0x10]
0169e3c4  mvn w1,w8
0169e3c8  bl 0x0124c4d0
0169e3cc  ldr w8,[sp, #0x8]
0169e3d0  cmp w8,#0x1
0169e3d4  b.lt 0x0169e3e4
0169e3d8  ldr x0,[sp]
0169e3dc  mvn w1,w8
0169e3e0  bl 0x0124c4d0
0169e3e4  ldp x29,x30,[sp, #0x30]
0169e3e8  ldp x20,x19,[sp, #0x20]
0169e3ec  add sp,sp,#0x40
0169e3f0  ret
