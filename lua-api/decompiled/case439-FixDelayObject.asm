// ===== case439-FixDelayObject @ 016e82b4 =====
// existing function case439-FixDelayObject
016e82b4  sub sp,sp,#0x40
016e82b8  stp x20,x19,[sp, #0x20]
016e82bc  stp x29,x30,[sp, #0x30]
016e82c0  add x29,sp,#0x30
016e82c4  adrp x1,0x174a000
016e82c8  add x1,x1,#0x87c
016e82cc  mov x19,x0
016e82d0  bl 0x0124ba40
016e82d4  adrp x1,0x575d000
016e82d8  add x1,x1,#0xa06
016e82dc  mov x0,x19
016e82e0  str x19,[sp]
016e82e4  bl 0x01251aa0
016e82e8  mov w8,#0x1
016e82ec  str w8,[sp, #0x8]
016e82f0  mov x0,sp
016e82f4  bl 0x0174aa04
016e82f8  adrp x1,0x5766000
016e82fc  adrp x3,0x736d000
016e8300  add x1,x1,#0x8d5
016e8304  add x3,x3,#0x101
016e8308  add x0,sp,#0x10
016e830c  mov x2,sp
016e8310  bl 0x01866ba8
016e8314  ldr x0,[sp, #0x10]
016e8318  mov w1,#0x10
016e831c  bl 0x0124cba0
016e8320  adrp x8,0x1866000
016e8324  dup v0.2D,xzr
016e8328  add x8,x8,#0x9a8
016e832c  mov v0.D[0x0],x8
016e8330  str q0,[x0]
016e8334  ldr x0,[sp, #0x10]
016e8338  adrp x1,0x1866000
016e833c  add x1,x1,#0xf6c
016e8340  mov w2,#0x1
016e8344  bl 0x0124ec90
016e8348  ldr x0,[sp, #0x10]
016e834c  mov w1,#0xffffffff
016e8350  bl 0x0124c0c0
016e8354  ldr x19,[sp, #0x10]
016e8358  orr w1,wzr,#0xfffffffb
016e835c  mov w2,#0x6e7
016e8360  mov x0,x19
016e8364  bl 0x0124a650
016e8368  orr w1,wzr,#0xfffffffe
016e836c  mov x0,x19
016e8370  bl 0x0124c0c0
016e8374  orr w1,wzr,#0xfffffffe
016e8378  mov x0,x19
016e837c  bl 0x0124e920
016e8380  mov w20,w0
016e8384  adrp x1,0x5766000
016e8388  add x1,x1,#0x8e4
016e838c  mov x0,x19
016e8390  bl 0x0124f120
016e8394  orr w1,wzr,#0xfffffffe
016e8398  mov w2,#0x1
016e839c  mov x0,x19
016e83a0  bl 0x0124cfc0
016e83a4  mov x0,x19
016e83a8  mov w1,w20
016e83ac  bl 0x0124e060
016e83b0  orr w1,wzr,#0xfffffffd
016e83b4  mov x0,x19
016e83b8  bl 0x0124c4d0
016e83bc  ldr x19,[sp, #0x10]
016e83c0  orr w1,wzr,#0xfffffffd
016e83c4  mov w2,#0x6e7
016e83c8  mov x0,x19
016e83cc  bl 0x0124a650
016e83d0  orr w1,wzr,#0xfffffffe
016e83d4  mov x0,x19
016e83d8  bl 0x0124c0c0
016e83dc  orr w1,wzr,#0xfffffffe
016e83e0  mov x0,x19
016e83e4  bl 0x0124e920
016e83e8  mov w20,w0
016e83ec  adrp x1,0x5766000
016e83f0  add x1,x1,#0x8e4
016e83f4  mov x0,x19
016e83f8  bl 0x0124f120
016e83fc  orr w1,wzr,#0xfffffffe
016e8400  mov w2,#0x1
016e8404  mov x0,x19
016e8408  bl 0x0124cfc0
016e840c  mov x0,x19
016e8410  mov w1,w20
016e8414  bl 0x0124e060
016e8418  orr w1,wzr,#0xfffffffd
016e841c  mov x0,x19
016e8420  bl 0x0124c4d0
016e8424  adrp x1,0x575d000
016e8428  adrp x2,0x1866000
016e842c  adrp x4,0x1866000
016e8430  add x1,x1,#0xdf7
016e8434  add x2,x2,#0xb98
016e8438  add x4,x4,#0xba0
016e843c  add x0,sp,#0x10
016e8440  mov x3,xzr
016e8444  mov x5,xzr
016e8448  bl 0x018669b0
016e844c  mov x19,x0
016e8450  ldr w8,[x19, #0x8]
016e8454  ldr x0,[x19]
016e8458  sub w8,w8,#0x3
016e845c  str w8,[x19, #0x8]
016e8460  orr w1,wzr,#0xfffffffc
016e8464  bl 0x0124c4d0
016e8468  ldr w8,[x19, #0x8]
016e846c  ldr x0,[x19]
016e8470  str wzr,[x19, #0x8]
016e8474  cmp w8,#0x1
016e8478  b.lt 0x016e8484
016e847c  mvn w1,w8
016e8480  bl 0x0124c4d0
016e8484  ldr w8,[sp, #0x18]
016e8488  cmp w8,#0x1
016e848c  b.lt 0x016e849c
016e8490  ldr x0,[sp, #0x10]
016e8494  mvn w1,w8
016e8498  bl 0x0124c4d0
016e849c  ldr w8,[sp, #0x8]
016e84a0  cmp w8,#0x1
016e84a4  b.lt 0x016e84b4
016e84a8  ldr x0,[sp]
016e84ac  mvn w1,w8
016e84b0  bl 0x0124c4d0
016e84b4  ldp x29,x30,[sp, #0x30]
016e84b8  ldp x20,x19,[sp, #0x20]
016e84bc  add sp,sp,#0x40
016e84c0  ret
