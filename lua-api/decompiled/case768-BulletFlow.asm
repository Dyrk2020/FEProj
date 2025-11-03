// ===== case768-BulletFlow @ 0172e06c =====
// existing function case768-BulletFlow
0172e06c  sub sp,sp,#0x50
0172e070  str x21,[sp, #0x20]
0172e074  stp x20,x19,[sp, #0x30]
0172e078  stp x29,x30,[sp, #0x40]
0172e07c  add x29,sp,#0x40
0172e080  adrp x1,0x174a000
0172e084  add x1,x1,#0x87c
0172e088  mov x19,x0
0172e08c  bl 0x0124ba40
0172e090  adrp x1,0x575d000
0172e094  add x1,x1,#0xa06
0172e098  mov x0,x19
0172e09c  str x19,[sp]
0172e0a0  bl 0x01251aa0
0172e0a4  mov w8,#0x1
0172e0a8  str w8,[sp, #0x8]
0172e0ac  mov x0,sp
0172e0b0  bl 0x0174aa04
0172e0b4  adrp x1,0x5771000
0172e0b8  adrp x3,0x736d000
0172e0bc  add x1,x1,#0x27e
0172e0c0  add x3,x3,#0x101
0172e0c4  add x0,sp,#0x10
0172e0c8  mov x2,sp
0172e0cc  bl 0x0199d96c
0172e0d0  adrp x1,0x5771000
0172e0d4  adrp x2,0x199d000
0172e0d8  adrp x4,0x199d000
0172e0dc  add x1,x1,#0x289
0172e0e0  add x2,x2,#0x744
0172e0e4  add x4,x4,#0x74c
0172e0e8  add x0,sp,#0x10
0172e0ec  mov x3,xzr
0172e0f0  mov x5,xzr
0172e0f4  bl 0x0199d55c
0172e0f8  adrp x1,0x5771000
0172e0fc  adrp x2,0x199d000
0172e100  adrp x4,0x199d000
0172e104  add x1,x1,#0x29f
0172e108  add x2,x2,#0x754
0172e10c  add x4,x4,#0x75c
0172e110  mov x3,xzr
0172e114  mov x5,xzr
0172e118  bl 0x0199d55c
0172e11c  adrp x1,0x5771000
0172e120  adrp x2,0x199d000
0172e124  add x1,x1,#0x2b2
0172e128  add x2,x2,#0x94c
0172e12c  mov x3,xzr
0172e130  mov x4,xzr
0172e134  mov x5,xzr
0172e138  bl 0x0199d764
0172e13c  adrp x1,0x5771000
0172e140  adrp x2,0x199d000
0172e144  add x1,x1,#0x2bf
0172e148  add x2,x2,#0x954
0172e14c  mov x3,xzr
0172e150  mov x4,xzr
0172e154  mov x5,xzr
0172e158  bl 0x0199d764
0172e15c  adrp x1,0x5771000
0172e160  adrp x2,0x199d000
0172e164  add x1,x1,#0x2cc
0172e168  add x2,x2,#0x95c
0172e16c  mov x3,xzr
0172e170  mov x4,xzr
0172e174  mov x5,xzr
0172e178  bl 0x0199d764
0172e17c  mov x19,x0
0172e180  ldr x0,[x19]
0172e184  mov w1,#0x10
0172e188  bl 0x0124cba0
0172e18c  adrp x8,0x199d000
0172e190  dup v0.2D,xzr
0172e194  add x8,x8,#0x964
0172e198  mov v0.D[0x0],x8
0172e19c  str q0,[x0]
0172e1a0  ldr x0,[x19]
0172e1a4  adrp x1,0x199e000
0172e1a8  add x1,x1,#0x1c4
0172e1ac  mov w2,#0x1
0172e1b0  bl 0x0124ec90
0172e1b4  ldr x0,[x19]
0172e1b8  mov w1,#0xffffffff
0172e1bc  bl 0x0124c0c0
0172e1c0  ldr x20,[x19]
0172e1c4  orr w1,wzr,#0xfffffffb
0172e1c8  mov w2,#0x6e7
0172e1cc  mov x0,x20
0172e1d0  bl 0x0124a650
0172e1d4  orr w1,wzr,#0xfffffffe
0172e1d8  mov x0,x20
0172e1dc  bl 0x0124c0c0
0172e1e0  orr w1,wzr,#0xfffffffe
0172e1e4  mov x0,x20
0172e1e8  bl 0x0124e920
0172e1ec  mov w21,w0
0172e1f0  adrp x1,0x5771000
0172e1f4  add x1,x1,#0x2d8
0172e1f8  mov x0,x20
0172e1fc  bl 0x0124f120
0172e200  orr w1,wzr,#0xfffffffe
0172e204  mov w2,#0x1
0172e208  mov x0,x20
0172e20c  bl 0x0124cfc0
0172e210  mov x0,x20
0172e214  mov w1,w21
0172e218  bl 0x0124e060
0172e21c  orr w1,wzr,#0xfffffffd
0172e220  mov x0,x20
0172e224  bl 0x0124c4d0
0172e228  ldr x20,[x19]
0172e22c  orr w1,wzr,#0xfffffffd
0172e230  mov w2,#0x6e7
0172e234  mov x0,x20
0172e238  bl 0x0124a650
0172e23c  orr w1,wzr,#0xfffffffe
0172e240  mov x0,x20
0172e244  bl 0x0124c0c0
0172e248  orr w1,wzr,#0xfffffffe
0172e24c  mov x0,x20
0172e250  bl 0x0124e920
0172e254  mov w21,w0
0172e258  adrp x1,0x5771000
0172e25c  add x1,x1,#0x2d8
0172e260  mov x0,x20
0172e264  bl 0x0124f120
0172e268  orr w1,wzr,#0xfffffffe
0172e26c  mov w2,#0x1
0172e270  mov x0,x20
0172e274  bl 0x0124cfc0
0172e278  mov x0,x20
0172e27c  mov w1,w21
0172e280  bl 0x0124e060
0172e284  orr w1,wzr,#0xfffffffd
0172e288  mov x0,x20
0172e28c  bl 0x0124c4d0
0172e290  ldr w8,[x19, #0x8]
0172e294  ldr x0,[x19]
0172e298  sub w8,w8,#0x3
0172e29c  str w8,[x19, #0x8]
0172e2a0  orr w1,wzr,#0xfffffffc
0172e2a4  bl 0x0124c4d0
0172e2a8  ldr w8,[x19, #0x8]
0172e2ac  ldr x0,[x19]
0172e2b0  str wzr,[x19, #0x8]
0172e2b4  cmp w8,#0x1
0172e2b8  b.lt 0x0172e2c4
0172e2bc  mvn w1,w8
0172e2c0  bl 0x0124c4d0
0172e2c4  ldr w8,[sp, #0x18]
0172e2c8  cmp w8,#0x1
0172e2cc  b.lt 0x0172e2dc
0172e2d0  ldr x0,[sp, #0x10]
0172e2d4  mvn w1,w8
0172e2d8  bl 0x0124c4d0
0172e2dc  ldr w8,[sp, #0x8]
0172e2e0  cmp w8,#0x1
0172e2e4  b.lt 0x0172e2f4
0172e2e8  ldr x0,[sp]
0172e2ec  mvn w1,w8
0172e2f0  bl 0x0124c4d0
0172e2f4  ldp x29,x30,[sp, #0x40]
0172e2f8  ldp x20,x19,[sp, #0x30]
0172e2fc  ldr x21,[sp, #0x20]
0172e300  add sp,sp,#0x50
0172e304  ret
