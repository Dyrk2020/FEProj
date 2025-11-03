// ===== case458-PointPathData @ 016eb15c =====
// existing function case458-PointPathData
016eb15c  sub sp,sp,#0x40
016eb160  stp x20,x19,[sp, #0x20]
016eb164  stp x29,x30,[sp, #0x30]
016eb168  add x29,sp,#0x30
016eb16c  adrp x1,0x174a000
016eb170  add x1,x1,#0x87c
016eb174  mov x19,x0
016eb178  bl 0x0124ba40
016eb17c  adrp x1,0x575d000
016eb180  add x1,x1,#0xa06
016eb184  mov x0,x19
016eb188  str x19,[sp]
016eb18c  bl 0x01251aa0
016eb190  mov w8,#0x1
016eb194  str w8,[sp, #0x8]
016eb198  mov x0,sp
016eb19c  bl 0x0174aa04
016eb1a0  adrp x1,0x5766000
016eb1a4  adrp x3,0x736d000
016eb1a8  add x1,x1,#0xbbe
016eb1ac  add x3,x3,#0x101
016eb1b0  add x0,sp,#0x10
016eb1b4  mov x2,sp
016eb1b8  bl 0x0187111c
016eb1bc  ldr x0,[sp, #0x10]
016eb1c0  mov w1,#0x10
016eb1c4  bl 0x0124cba0
016eb1c8  adrp x8,0x1870000
016eb1cc  dup v0.2D,xzr
016eb1d0  add x8,x8,#0xf1c
016eb1d4  mov v0.D[0x0],x8
016eb1d8  str q0,[x0]
016eb1dc  ldr x0,[sp, #0x10]
016eb1e0  adrp x1,0x1871000
016eb1e4  add x1,x1,#0x4e0
016eb1e8  mov w2,#0x1
016eb1ec  bl 0x0124ec90
016eb1f0  ldr x0,[sp, #0x10]
016eb1f4  mov w1,#0xffffffff
016eb1f8  bl 0x0124c0c0
016eb1fc  ldr x19,[sp, #0x10]
016eb200  orr w1,wzr,#0xfffffffb
016eb204  mov w2,#0x6e7
016eb208  mov x0,x19
016eb20c  bl 0x0124a650
016eb210  orr w1,wzr,#0xfffffffe
016eb214  mov x0,x19
016eb218  bl 0x0124c0c0
016eb21c  orr w1,wzr,#0xfffffffe
016eb220  mov x0,x19
016eb224  bl 0x0124e920
016eb228  mov w20,w0
016eb22c  adrp x1,0x5766000
016eb230  add x1,x1,#0xbcc
016eb234  mov x0,x19
016eb238  bl 0x0124f120
016eb23c  orr w1,wzr,#0xfffffffe
016eb240  mov w2,#0x1
016eb244  mov x0,x19
016eb248  bl 0x0124cfc0
016eb24c  mov x0,x19
016eb250  mov w1,w20
016eb254  bl 0x0124e060
016eb258  orr w1,wzr,#0xfffffffd
016eb25c  mov x0,x19
016eb260  bl 0x0124c4d0
016eb264  ldr x19,[sp, #0x10]
016eb268  orr w1,wzr,#0xfffffffd
016eb26c  mov w2,#0x6e7
016eb270  mov x0,x19
016eb274  bl 0x0124a650
016eb278  orr w1,wzr,#0xfffffffe
016eb27c  mov x0,x19
016eb280  bl 0x0124c0c0
016eb284  orr w1,wzr,#0xfffffffe
016eb288  mov x0,x19
016eb28c  bl 0x0124e920
016eb290  mov w20,w0
016eb294  adrp x1,0x5766000
016eb298  add x1,x1,#0xbcc
016eb29c  mov x0,x19
016eb2a0  bl 0x0124f120
016eb2a4  orr w1,wzr,#0xfffffffe
016eb2a8  mov w2,#0x1
016eb2ac  mov x0,x19
016eb2b0  bl 0x0124cfc0
016eb2b4  mov x0,x19
016eb2b8  mov w1,w20
016eb2bc  bl 0x0124e060
016eb2c0  orr w1,wzr,#0xfffffffd
016eb2c4  mov x0,x19
016eb2c8  bl 0x0124c4d0
016eb2cc  adrp x1,0x596a000
016eb2d0  adrp x2,0x1871000
016eb2d4  adrp x4,0x1871000
016eb2d8  add x1,x1,#0x262
016eb2dc  add x2,x2,#0x10c
016eb2e0  add x4,x4,#0x114
016eb2e4  add x0,sp,#0x10
016eb2e8  mov x3,xzr
016eb2ec  mov x5,xzr
016eb2f0  bl 0x01870f24
016eb2f4  mov x19,x0
016eb2f8  ldr w8,[x19, #0x8]
016eb2fc  ldr x0,[x19]
016eb300  sub w8,w8,#0x3
016eb304  str w8,[x19, #0x8]
016eb308  orr w1,wzr,#0xfffffffc
016eb30c  bl 0x0124c4d0
016eb310  ldr w8,[x19, #0x8]
016eb314  ldr x0,[x19]
016eb318  str wzr,[x19, #0x8]
016eb31c  cmp w8,#0x1
016eb320  b.lt 0x016eb32c
016eb324  mvn w1,w8
016eb328  bl 0x0124c4d0
016eb32c  ldr w8,[sp, #0x18]
016eb330  cmp w8,#0x1
016eb334  b.lt 0x016eb344
016eb338  ldr x0,[sp, #0x10]
016eb33c  mvn w1,w8
016eb340  bl 0x0124c4d0
016eb344  ldr w8,[sp, #0x8]
016eb348  cmp w8,#0x1
016eb34c  b.lt 0x016eb35c
016eb350  ldr x0,[sp]
016eb354  mvn w1,w8
016eb358  bl 0x0124c4d0
016eb35c  ldp x29,x30,[sp, #0x30]
016eb360  ldp x20,x19,[sp, #0x20]
016eb364  add sp,sp,#0x40
016eb368  ret
