// ===== case511-ActorComponentMarkHero @ 016f5fb8 =====
// existing function case511-ActorComponentMarkHero
016f5fb8  sub sp,sp,#0x40
016f5fbc  stp x20,x19,[sp, #0x20]
016f5fc0  stp x29,x30,[sp, #0x30]
016f5fc4  add x29,sp,#0x30
016f5fc8  adrp x1,0x174a000
016f5fcc  add x1,x1,#0x87c
016f5fd0  mov x19,x0
016f5fd4  bl 0x0124ba40
016f5fd8  adrp x1,0x575d000
016f5fdc  add x1,x1,#0xa06
016f5fe0  mov x0,x19
016f5fe4  str x19,[sp]
016f5fe8  bl 0x01251aa0
016f5fec  mov w8,#0x1
016f5ff0  str w8,[sp, #0x8]
016f5ff4  mov x0,sp
016f5ff8  bl 0x0174aa04
016f5ffc  adrp x1,0x5768000
016f6000  adrp x3,0x736d000
016f6004  add x1,x1,#0x413
016f6008  add x3,x3,#0x101
016f600c  add x0,sp,#0x10
016f6010  mov x2,sp
016f6014  bl 0x0189dd68
016f6018  ldr x0,[sp, #0x10]
016f601c  mov w1,#0x10
016f6020  bl 0x0124cba0
016f6024  adrp x8,0x189d000
016f6028  dup v0.2D,xzr
016f602c  add x8,x8,#0x740
016f6030  mov v0.D[0x0],x8
016f6034  str q0,[x0]
016f6038  ldr x0,[sp, #0x10]
016f603c  adrp x1,0x189e000
016f6040  add x1,x1,#0x12c
016f6044  mov w2,#0x1
016f6048  bl 0x0124ec90
016f604c  ldr x0,[sp, #0x10]
016f6050  mov w1,#0xffffffff
016f6054  bl 0x0124c0c0
016f6058  ldr x19,[sp, #0x10]
016f605c  orr w1,wzr,#0xfffffffb
016f6060  mov w2,#0x6e7
016f6064  mov x0,x19
016f6068  bl 0x0124a650
016f606c  orr w1,wzr,#0xfffffffe
016f6070  mov x0,x19
016f6074  bl 0x0124c0c0
016f6078  orr w1,wzr,#0xfffffffe
016f607c  mov x0,x19
016f6080  bl 0x0124e920
016f6084  mov w20,w0
016f6088  adrp x1,0x5768000
016f608c  add x1,x1,#0x42a
016f6090  mov x0,x19
016f6094  bl 0x0124f120
016f6098  orr w1,wzr,#0xfffffffe
016f609c  mov w2,#0x1
016f60a0  mov x0,x19
016f60a4  bl 0x0124cfc0
016f60a8  mov x0,x19
016f60ac  mov w1,w20
016f60b0  bl 0x0124e060
016f60b4  orr w1,wzr,#0xfffffffd
016f60b8  mov x0,x19
016f60bc  bl 0x0124c4d0
016f60c0  ldr x19,[sp, #0x10]
016f60c4  orr w1,wzr,#0xfffffffd
016f60c8  mov w2,#0x6e7
016f60cc  mov x0,x19
016f60d0  bl 0x0124a650
016f60d4  orr w1,wzr,#0xfffffffe
016f60d8  mov x0,x19
016f60dc  bl 0x0124c0c0
016f60e0  orr w1,wzr,#0xfffffffe
016f60e4  mov x0,x19
016f60e8  bl 0x0124e920
016f60ec  mov w20,w0
016f60f0  adrp x1,0x5768000
016f60f4  add x1,x1,#0x42a
016f60f8  mov x0,x19
016f60fc  bl 0x0124f120
016f6100  orr w1,wzr,#0xfffffffe
016f6104  mov w2,#0x1
016f6108  mov x0,x19
016f610c  bl 0x0124cfc0
016f6110  mov x0,x19
016f6114  mov w1,w20
016f6118  bl 0x0124e060
016f611c  orr w1,wzr,#0xfffffffd
016f6120  mov x0,x19
016f6124  bl 0x0124c4d0
016f6128  adrp x1,0x5768000
016f612c  adrp x2,0x189d000
016f6130  adrp x4,0x189d000
016f6134  add x1,x1,#0x43a
016f6138  add x2,x2,#0x930
016f613c  add x4,x4,#0x938
016f6140  add x0,sp,#0x10
016f6144  mov x3,xzr
016f6148  mov x5,xzr
016f614c  bl 0x0189d748
016f6150  adrp x1,0x5768000
016f6154  adrp x2,0x189d000
016f6158  adrp x4,0x189d000
016f615c  add x1,x1,#0x44a
016f6160  add x2,x2,#0x998
016f6164  add x4,x4,#0x9a0
016f6168  mov x3,xzr
016f616c  mov x5,xzr
016f6170  bl 0x0189d748
016f6174  adrp x1,0x5768000
016f6178  adrp x2,0x189d000
016f617c  adrp x4,0x189d000
016f6180  add x1,x1,#0x457
016f6184  add x2,x2,#0xa00
016f6188  add x4,x4,#0xa08
016f618c  mov x3,xzr
016f6190  mov x5,xzr
016f6194  bl 0x0189d748
016f6198  adrp x1,0x5768000
016f619c  adrp x2,0x189d000
016f61a0  adrp x4,0x189d000
016f61a4  add x1,x1,#0x46a
016f61a8  add x2,x2,#0xa68
016f61ac  add x4,x4,#0xa70
016f61b0  mov x3,xzr
016f61b4  mov x5,xzr
016f61b8  bl 0x0189d748
016f61bc  adrp x1,0x5768000
016f61c0  adrp x2,0x189d000
016f61c4  adrp x4,0x189d000
016f61c8  add x1,x1,#0x47b
016f61cc  add x2,x2,#0xad0
016f61d0  add x4,x4,#0xad8
016f61d4  mov x3,xzr
016f61d8  mov x5,xzr
016f61dc  bl 0x0189d748
016f61e0  adrp x1,0x5768000
016f61e4  adrp x2,0x189d000
016f61e8  adrp x4,0x189d000
016f61ec  add x1,x1,#0x48a
016f61f0  add x2,x2,#0xd20
016f61f4  add x4,x4,#0xd28
016f61f8  mov x3,xzr
016f61fc  mov x5,xzr
016f6200  bl 0x0189db38
016f6204  adrp x1,0x5768000
016f6208  adrp x2,0x189d000
016f620c  adrp x4,0x189d000
016f6210  add x1,x1,#0x497
016f6214  add x2,x2,#0xd44
016f6218  add x4,x4,#0xd4c
016f621c  mov x3,xzr
016f6220  mov x5,xzr
016f6224  bl 0x0189db38
016f6228  mov x19,x0
016f622c  ldr w8,[x19, #0x8]
016f6230  ldr x0,[x19]
016f6234  sub w8,w8,#0x3
016f6238  str w8,[x19, #0x8]
016f623c  orr w1,wzr,#0xfffffffc
016f6240  bl 0x0124c4d0
016f6244  ldr w8,[x19, #0x8]
016f6248  ldr x0,[x19]
016f624c  str wzr,[x19, #0x8]
016f6250  cmp w8,#0x1
016f6254  b.lt 0x016f6260
016f6258  mvn w1,w8
016f625c  bl 0x0124c4d0
016f6260  ldr w8,[sp, #0x18]
016f6264  cmp w8,#0x1
016f6268  b.lt 0x016f6278
016f626c  ldr x0,[sp, #0x10]
016f6270  mvn w1,w8
016f6274  bl 0x0124c4d0
016f6278  ldr w8,[sp, #0x8]
016f627c  cmp w8,#0x1
016f6280  b.lt 0x016f6290
016f6284  ldr x0,[sp]
016f6288  mvn w1,w8
016f628c  bl 0x0124c4d0
016f6290  ldp x29,x30,[sp, #0x30]
016f6294  ldp x20,x19,[sp, #0x20]
016f6298  add sp,sp,#0x40
016f629c  ret
