// ===== case447-LevelRhythm @ 016e9340 =====
// existing function case447-LevelRhythm
016e9340  sub sp,sp,#0x40
016e9344  str x19,[sp, #0x20]
016e9348  stp x29,x30,[sp, #0x30]
016e934c  add x29,sp,#0x30
016e9350  adrp x1,0x174a000
016e9354  add x1,x1,#0x87c
016e9358  mov x19,x0
016e935c  bl 0x0124ba40
016e9360  adrp x1,0x575d000
016e9364  add x1,x1,#0xa06
016e9368  mov x0,x19
016e936c  str x19,[sp]
016e9370  bl 0x01251aa0
016e9374  mov w8,#0x1
016e9378  str w8,[sp, #0x8]
016e937c  mov x0,sp
016e9380  bl 0x0174aa04
016e9384  adrp x1,0x5766000
016e9388  adrp x3,0x736d000
016e938c  add x1,x1,#0xa19
016e9390  add x3,x3,#0x101
016e9394  add x0,sp,#0x10
016e9398  mov x2,sp
016e939c  bl 0x0186c104
016e93a0  adrp x1,0x5766000
016e93a4  adrp x2,0x186c000
016e93a8  adrp x4,0x186c000
016e93ac  add x1,x1,#0x9f9
016e93b0  add x2,x2,#0xf4
016e93b4  add x4,x4,#0xfc
016e93b8  add x0,sp,#0x10
016e93bc  mov x3,xzr
016e93c0  mov x5,xzr
016e93c4  bl 0x0186bf0c
016e93c8  mov x19,x0
016e93cc  ldr w8,[x19, #0x8]
016e93d0  ldr x0,[x19]
016e93d4  sub w8,w8,#0x3
016e93d8  str w8,[x19, #0x8]
016e93dc  orr w1,wzr,#0xfffffffc
016e93e0  bl 0x0124c4d0
016e93e4  ldr w8,[x19, #0x8]
016e93e8  ldr x0,[x19]
016e93ec  str wzr,[x19, #0x8]
016e93f0  cmp w8,#0x1
016e93f4  b.lt 0x016e9400
016e93f8  mvn w1,w8
016e93fc  bl 0x0124c4d0
016e9400  ldr w8,[sp, #0x18]
016e9404  cmp w8,#0x1
016e9408  b.lt 0x016e9418
016e940c  ldr x0,[sp, #0x10]
016e9410  mvn w1,w8
016e9414  bl 0x0124c4d0
016e9418  ldr w8,[sp, #0x8]
016e941c  cmp w8,#0x1
016e9420  b.lt 0x016e9430
016e9424  ldr x0,[sp]
016e9428  mvn w1,w8
016e942c  bl 0x0124c4d0
016e9430  ldp x29,x30,[sp, #0x30]
016e9434  ldr x19,[sp, #0x20]
016e9438  add sp,sp,#0x40
016e943c  ret
