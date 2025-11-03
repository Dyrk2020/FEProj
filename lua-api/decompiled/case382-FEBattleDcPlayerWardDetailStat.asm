// ===== case382-FEBattleDcPlayerWardDetailStat @ 016d82e8 =====
// existing function case382-FEBattleDcPlayerWardDetailStat
016d82e8  sub sp,sp,#0x50
016d82ec  str x21,[sp, #0x20]
016d82f0  stp x20,x19,[sp, #0x30]
016d82f4  stp x29,x30,[sp, #0x40]
016d82f8  add x29,sp,#0x40
016d82fc  adrp x1,0x174a000
016d8300  add x1,x1,#0x87c
016d8304  mov x19,x0
016d8308  bl 0x0124ba40
016d830c  adrp x1,0x575d000
016d8310  add x1,x1,#0xa06
016d8314  mov x0,x19
016d8318  str x19,[sp]
016d831c  bl 0x01251aa0
016d8320  mov w8,#0x1
016d8324  str w8,[sp, #0x8]
016d8328  mov x0,sp
016d832c  bl 0x0174aa04
016d8330  adrp x1,0x5764000
016d8334  adrp x3,0x736d000
016d8338  add x1,x1,#0xecd
016d833c  add x3,x3,#0x101
016d8340  add x0,sp,#0x10
016d8344  mov x2,sp
016d8348  bl 0x018376c0
016d834c  adrp x1,0x5764000
016d8350  adrp x2,0x1837000
016d8354  adrp x4,0x1837000
016d8358  add x1,x1,#0xeec
016d835c  add x2,x2,#0x6a8
016d8360  add x4,x4,#0x6b0
016d8364  add x0,sp,#0x10
016d8368  mov x3,xzr
016d836c  mov x5,xzr
016d8370  bl 0x018374c0
016d8374  mov x19,x0
016d8378  ldr x0,[x19]
016d837c  mov w1,#0x10
016d8380  bl 0x0124cba0
016d8384  adrp x8,0x1837000
016d8388  dup v0.2D,xzr
016d838c  add x8,x8,#0x6b8
016d8390  mov v0.D[0x0],x8
016d8394  str q0,[x0]
016d8398  ldr x0,[x19]
016d839c  adrp x1,0x1837000
016d83a0  add x1,x1,#0xca4
016d83a4  mov w2,#0x1
016d83a8  bl 0x0124ec90
016d83ac  ldr x0,[x19]
016d83b0  mov w1,#0xffffffff
016d83b4  bl 0x0124c0c0
016d83b8  ldr x20,[x19]
016d83bc  orr w1,wzr,#0xfffffffb
016d83c0  mov w2,#0x6e7
016d83c4  mov x0,x20
016d83c8  bl 0x0124a650
016d83cc  orr w1,wzr,#0xfffffffe
016d83d0  mov x0,x20
016d83d4  bl 0x0124c0c0
016d83d8  orr w1,wzr,#0xfffffffe
016d83dc  mov x0,x20
016d83e0  bl 0x0124e920
016d83e4  mov w21,w0
016d83e8  adrp x1,0x5764000
016d83ec  add x1,x1,#0xef9
016d83f0  mov x0,x20
016d83f4  bl 0x0124f120
016d83f8  orr w1,wzr,#0xfffffffe
016d83fc  mov w2,#0x1
016d8400  mov x0,x20
016d8404  bl 0x0124cfc0
016d8408  mov x0,x20
016d840c  mov w1,w21
016d8410  bl 0x0124e060
016d8414  orr w1,wzr,#0xfffffffd
016d8418  mov x0,x20
016d841c  bl 0x0124c4d0
016d8420  ldr x20,[x19]
016d8424  orr w1,wzr,#0xfffffffd
016d8428  mov w2,#0x6e7
016d842c  mov x0,x20
016d8430  bl 0x0124a650
016d8434  orr w1,wzr,#0xfffffffe
016d8438  mov x0,x20
016d843c  bl 0x0124c0c0
016d8440  orr w1,wzr,#0xfffffffe
016d8444  mov x0,x20
016d8448  bl 0x0124e920
016d844c  mov w21,w0
016d8450  adrp x1,0x5764000
016d8454  add x1,x1,#0xef9
016d8458  mov x0,x20
016d845c  bl 0x0124f120
016d8460  orr w1,wzr,#0xfffffffe
016d8464  mov w2,#0x1
016d8468  mov x0,x20
016d846c  bl 0x0124cfc0
016d8470  mov x0,x20
016d8474  mov w1,w21
016d8478  bl 0x0124e060
016d847c  orr w1,wzr,#0xfffffffd
016d8480  mov x0,x20
016d8484  bl 0x0124c4d0
016d8488  ldr w8,[x19, #0x8]
016d848c  ldr x0,[x19]
016d8490  sub w8,w8,#0x3
016d8494  str w8,[x19, #0x8]
016d8498  orr w1,wzr,#0xfffffffc
016d849c  bl 0x0124c4d0
016d84a0  ldr w8,[x19, #0x8]
016d84a4  ldr x0,[x19]
016d84a8  str wzr,[x19, #0x8]
016d84ac  cmp w8,#0x1
016d84b0  b.lt 0x016d84bc
016d84b4  mvn w1,w8
016d84b8  bl 0x0124c4d0
016d84bc  ldr w8,[sp, #0x18]
016d84c0  cmp w8,#0x1
016d84c4  b.lt 0x016d84d4
016d84c8  ldr x0,[sp, #0x10]
016d84cc  mvn w1,w8
016d84d0  bl 0x0124c4d0
016d84d4  ldr w8,[sp, #0x8]
016d84d8  cmp w8,#0x1
016d84dc  b.lt 0x016d84ec
016d84e0  ldr x0,[sp]
016d84e4  mvn w1,w8
016d84e8  bl 0x0124c4d0
016d84ec  ldp x29,x30,[sp, #0x40]
016d84f0  ldp x20,x19,[sp, #0x30]
016d84f4  ldr x21,[sp, #0x20]
016d84f8  add sp,sp,#0x50
016d84fc  ret
