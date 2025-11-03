// ===== case480-MapPolygonVertex @ 016f042c =====
// existing function case480-MapPolygonVertex
016f042c  sub sp,sp,#0x40
016f0430  str x19,[sp, #0x20]
016f0434  stp x29,x30,[sp, #0x30]
016f0438  add x29,sp,#0x30
016f043c  adrp x1,0x174a000
016f0440  add x1,x1,#0x87c
016f0444  mov x19,x0
016f0448  bl 0x0124ba40
016f044c  adrp x1,0x575d000
016f0450  add x1,x1,#0xa06
016f0454  mov x0,x19
016f0458  str x19,[sp]
016f045c  bl 0x01251aa0
016f0460  mov w8,#0x1
016f0464  str w8,[sp, #0x8]
016f0468  mov x0,sp
016f046c  bl 0x0174aa04
016f0470  adrp x1,0x5767000
016f0474  adrp x3,0x736d000
016f0478  add x1,x1,#0xbaf
016f047c  add x3,x3,#0x101
016f0480  add x0,sp,#0x10
016f0484  mov x2,sp
016f0488  bl 0x0188028c
016f048c  adrp x1,0x5964000
016f0490  adrp x2,0x1880000
016f0494  adrp x4,0x1880000
016f0498  add x1,x1,#0x464
016f049c  add x2,x2,#0x26c
016f04a0  add x4,x4,#0x274
016f04a4  add x0,sp,#0x10
016f04a8  mov x3,xzr
016f04ac  mov x5,xzr
016f04b0  bl 0x01880084
016f04b4  adrp x1,0x5964000
016f04b8  adrp x2,0x1880000
016f04bc  adrp x4,0x1880000
016f04c0  add x1,x1,#0x477
016f04c4  add x2,x2,#0x27c
016f04c8  add x4,x4,#0x284
016f04cc  mov x3,xzr
016f04d0  mov x5,xzr
016f04d4  bl 0x01880084
016f04d8  mov x19,x0
016f04dc  ldr w8,[x19, #0x8]
016f04e0  ldr x0,[x19]
016f04e4  sub w8,w8,#0x3
016f04e8  str w8,[x19, #0x8]
016f04ec  orr w1,wzr,#0xfffffffc
016f04f0  bl 0x0124c4d0
016f04f4  ldr w8,[x19, #0x8]
016f04f8  ldr x0,[x19]
016f04fc  str wzr,[x19, #0x8]
016f0500  cmp w8,#0x1
016f0504  b.lt 0x016f0510
016f0508  mvn w1,w8
016f050c  bl 0x0124c4d0
016f0510  ldr w8,[sp, #0x18]
016f0514  cmp w8,#0x1
016f0518  b.lt 0x016f0528
016f051c  ldr x0,[sp, #0x10]
016f0520  mvn w1,w8
016f0524  bl 0x0124c4d0
016f0528  ldr w8,[sp, #0x8]
016f052c  cmp w8,#0x1
016f0530  b.lt 0x016f0540
016f0534  ldr x0,[sp]
016f0538  mvn w1,w8
016f053c  bl 0x0124c4d0
016f0540  ldp x29,x30,[sp, #0x30]
016f0544  ldr x19,[sp, #0x20]
016f0548  add sp,sp,#0x40
016f054c  ret
