// ===== case425-HangUpMgr @ 016e5fd0 =====
// existing function case425-HangUpMgr
016e5fd0  sub sp,sp,#0x40
016e5fd4  stp x20,x19,[sp, #0x20]
016e5fd8  stp x29,x30,[sp, #0x30]
016e5fdc  add x29,sp,#0x30
016e5fe0  adrp x1,0x174a000
016e5fe4  add x1,x1,#0x87c
016e5fe8  mov x19,x0
016e5fec  bl 0x0124ba40
016e5ff0  adrp x1,0x575d000
016e5ff4  add x1,x1,#0xa06
016e5ff8  mov x0,x19
016e5ffc  str x19,[sp]
016e6000  bl 0x01251aa0
016e6004  mov w8,#0x1
016e6008  str w8,[sp, #0x8]
016e600c  mov x0,sp
016e6010  bl 0x0174aa04
016e6014  adrp x1,0x5766000
016e6018  adrp x3,0x736d000
016e601c  add x1,x1,#0x6ae
016e6020  add x3,x3,#0x101
016e6024  add x0,sp,#0x10
016e6028  mov x2,sp
016e602c  bl 0x0186045c
016e6030  ldr x0,[sp, #0x10]
016e6034  mov w1,#0x10
016e6038  bl 0x0124cba0
016e603c  adrp x8,0x1860000
016e6040  dup v0.2D,xzr
016e6044  add x8,x8,#0x25c
016e6048  mov v0.D[0x0],x8
016e604c  str q0,[x0]
016e6050  ldr x0,[sp, #0x10]
016e6054  adrp x1,0x1860000
016e6058  add x1,x1,#0x820
016e605c  mov w2,#0x1
016e6060  bl 0x0124ec90
016e6064  ldr x0,[sp, #0x10]
016e6068  mov w1,#0xffffffff
016e606c  bl 0x0124c0c0
016e6070  ldr x19,[sp, #0x10]
016e6074  orr w1,wzr,#0xfffffffb
016e6078  mov w2,#0x6e7
016e607c  mov x0,x19
016e6080  bl 0x0124a650
016e6084  orr w1,wzr,#0xfffffffe
016e6088  mov x0,x19
016e608c  bl 0x0124c0c0
016e6090  orr w1,wzr,#0xfffffffe
016e6094  mov x0,x19
016e6098  bl 0x0124e920
016e609c  mov w20,w0
016e60a0  adrp x1,0x5766000
016e60a4  add x1,x1,#0x6b8
016e60a8  mov x0,x19
016e60ac  bl 0x0124f120
016e60b0  orr w1,wzr,#0xfffffffe
016e60b4  mov w2,#0x1
016e60b8  mov x0,x19
016e60bc  bl 0x0124cfc0
016e60c0  mov x0,x19
016e60c4  mov w1,w20
016e60c8  bl 0x0124e060
016e60cc  orr w1,wzr,#0xfffffffd
016e60d0  mov x0,x19
016e60d4  bl 0x0124c4d0
016e60d8  ldr x19,[sp, #0x10]
016e60dc  orr w1,wzr,#0xfffffffd
016e60e0  mov w2,#0x6e7
016e60e4  mov x0,x19
016e60e8  bl 0x0124a650
016e60ec  orr w1,wzr,#0xfffffffe
016e60f0  mov x0,x19
016e60f4  bl 0x0124c0c0
016e60f8  orr w1,wzr,#0xfffffffe
016e60fc  mov x0,x19
016e6100  bl 0x0124e920
016e6104  mov w20,w0
016e6108  adrp x1,0x5766000
016e610c  add x1,x1,#0x6b8
016e6110  mov x0,x19
016e6114  bl 0x0124f120
016e6118  orr w1,wzr,#0xfffffffe
016e611c  mov w2,#0x1
016e6120  mov x0,x19
016e6124  bl 0x0124cfc0
016e6128  mov x0,x19
016e612c  mov w1,w20
016e6130  bl 0x0124e060
016e6134  orr w1,wzr,#0xfffffffd
016e6138  mov x0,x19
016e613c  bl 0x0124c4d0
016e6140  adrp x1,0x5766000
016e6144  adrp x2,0x1860000
016e6148  adrp x4,0x1860000
016e614c  add x1,x1,#0x6cb
016e6150  add x2,x2,#0x44c
016e6154  add x4,x4,#0x454
016e6158  add x0,sp,#0x10
016e615c  mov x3,xzr
016e6160  mov x5,xzr
016e6164  bl 0x01860264
016e6168  mov x19,x0
016e616c  ldr w8,[x19, #0x8]
016e6170  ldr x0,[x19]
016e6174  sub w8,w8,#0x3
016e6178  str w8,[x19, #0x8]
016e617c  orr w1,wzr,#0xfffffffc
016e6180  bl 0x0124c4d0
016e6184  ldr w8,[x19, #0x8]
016e6188  ldr x0,[x19]
016e618c  str wzr,[x19, #0x8]
016e6190  cmp w8,#0x1
016e6194  b.lt 0x016e61a0
016e6198  mvn w1,w8
016e619c  bl 0x0124c4d0
016e61a0  ldr w8,[sp, #0x18]
016e61a4  cmp w8,#0x1
016e61a8  b.lt 0x016e61b8
016e61ac  ldr x0,[sp, #0x10]
016e61b0  mvn w1,w8
016e61b4  bl 0x0124c4d0
016e61b8  ldr w8,[sp, #0x8]
016e61bc  cmp w8,#0x1
016e61c0  b.lt 0x016e61d0
016e61c4  ldr x0,[sp]
016e61c8  mvn w1,w8
016e61cc  bl 0x0124c4d0
016e61d0  ldp x29,x30,[sp, #0x30]
016e61d4  ldp x20,x19,[sp, #0x20]
016e61d8  add sp,sp,#0x40
016e61dc  ret
