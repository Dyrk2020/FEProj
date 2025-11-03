// ===== case265-MonsterGroupResObject @ 016b91dc =====
// existing function case265-MonsterGroupResObject
016b91dc  sub sp,sp,#0x40
016b91e0  stp x20,x19,[sp, #0x20]
016b91e4  stp x29,x30,[sp, #0x30]
016b91e8  add x29,sp,#0x30
016b91ec  adrp x1,0x174a000
016b91f0  add x1,x1,#0x87c
016b91f4  mov x19,x0
016b91f8  bl 0x0124ba40
016b91fc  adrp x1,0x575d000
016b9200  add x1,x1,#0xa06
016b9204  mov x0,x19
016b9208  str x19,[sp]
016b920c  bl 0x01251aa0
016b9210  mov w8,#0x1
016b9214  str w8,[sp, #0x8]
016b9218  mov x0,sp
016b921c  bl 0x0174aa04
016b9220  adrp x1,0x5761000
016b9224  adrp x3,0x736d000
016b9228  add x1,x1,#0x73b
016b922c  add x3,x3,#0x101
016b9230  add x0,sp,#0x10
016b9234  mov x2,sp
016b9238  bl 0x017dfae0
016b923c  ldr x0,[sp, #0x10]
016b9240  mov w1,#0x10
016b9244  bl 0x0124cba0
016b9248  adrp x8,0x17df000
016b924c  dup v0.2D,xzr
016b9250  add x8,x8,#0xad8
016b9254  mov v0.D[0x0],x8
016b9258  str q0,[x0]
016b925c  ldr x0,[sp, #0x10]
016b9260  adrp x1,0x17df000
016b9264  add x1,x1,#0xea4
016b9268  mov w2,#0x1
016b926c  bl 0x0124ec90
016b9270  ldr x0,[sp, #0x10]
016b9274  mov w1,#0xffffffff
016b9278  bl 0x0124c0c0
016b927c  ldr x19,[sp, #0x10]
016b9280  orr w1,wzr,#0xfffffffb
016b9284  mov w2,#0x6e7
016b9288  mov x0,x19
016b928c  bl 0x0124a650
016b9290  orr w1,wzr,#0xfffffffe
016b9294  mov x0,x19
016b9298  bl 0x0124c0c0
016b929c  orr w1,wzr,#0xfffffffe
016b92a0  mov x0,x19
016b92a4  bl 0x0124e920
016b92a8  mov w20,w0
016b92ac  adrp x1,0x5761000
016b92b0  add x1,x1,#0x751
016b92b4  mov x0,x19
016b92b8  bl 0x0124f120
016b92bc  orr w1,wzr,#0xfffffffe
016b92c0  mov w2,#0x1
016b92c4  mov x0,x19
016b92c8  bl 0x0124cfc0
016b92cc  mov x0,x19
016b92d0  mov w1,w20
016b92d4  bl 0x0124e060
016b92d8  orr w1,wzr,#0xfffffffd
016b92dc  mov x0,x19
016b92e0  bl 0x0124c4d0
016b92e4  ldr x19,[sp, #0x10]
016b92e8  orr w1,wzr,#0xfffffffd
016b92ec  mov w2,#0x6e7
016b92f0  mov x0,x19
016b92f4  bl 0x0124a650
016b92f8  orr w1,wzr,#0xfffffffe
016b92fc  mov x0,x19
016b9300  bl 0x0124c0c0
016b9304  orr w1,wzr,#0xfffffffe
016b9308  mov x0,x19
016b930c  bl 0x0124e920
016b9310  mov w20,w0
016b9314  adrp x1,0x5761000
016b9318  add x1,x1,#0x751
016b931c  mov x0,x19
016b9320  bl 0x0124f120
016b9324  orr w1,wzr,#0xfffffffe
016b9328  mov w2,#0x1
016b932c  mov x0,x19
016b9330  bl 0x0124cfc0
016b9334  mov x0,x19
016b9338  mov w1,w20
016b933c  bl 0x0124e060
016b9340  orr w1,wzr,#0xfffffffd
016b9344  mov x0,x19
016b9348  bl 0x0124c4d0
016b934c  ldr w8,[sp, #0x18]
016b9350  ldr x0,[sp, #0x10]
016b9354  sub w8,w8,#0x3
016b9358  str w8,[sp, #0x18]
016b935c  orr w1,wzr,#0xfffffffc
016b9360  bl 0x0124c4d0
016b9364  ldr w8,[sp, #0x18]
016b9368  ldr x0,[sp, #0x10]
016b936c  str wzr,[sp, #0x18]
016b9370  cmp w8,#0x1
016b9374  b.lt 0x016b9398
016b9378  mvn w1,w8
016b937c  bl 0x0124c4d0
016b9380  ldr w8,[sp, #0x18]
016b9384  cmp w8,#0x1
016b9388  b.lt 0x016b9398
016b938c  ldr x0,[sp, #0x10]
016b9390  mvn w1,w8
016b9394  bl 0x0124c4d0
016b9398  ldr w8,[sp, #0x8]
016b939c  cmp w8,#0x1
016b93a0  b.lt 0x016b93b0
016b93a4  ldr x0,[sp]
016b93a8  mvn w1,w8
016b93ac  bl 0x0124c4d0
016b93b0  ldp x29,x30,[sp, #0x30]
016b93b4  ldp x20,x19,[sp, #0x20]
016b93b8  add sp,sp,#0x40
016b93bc  ret
