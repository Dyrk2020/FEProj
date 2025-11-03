// ===== case119-ActivitiesNode @ 016a042c =====
// existing function case119-ActivitiesNode
016a042c  sub sp,sp,#0x40
016a0430  str x19,[sp, #0x20]
016a0434  stp x29,x30,[sp, #0x30]
016a0438  add x29,sp,#0x30
016a043c  adrp x1,0x174a000
016a0440  add x1,x1,#0x87c
016a0444  mov x19,x0
016a0448  bl 0x0124ba40
016a044c  adrp x1,0x575d000
016a0450  add x1,x1,#0xa06
016a0454  mov x0,x19
016a0458  str x19,[sp]
016a045c  bl 0x01251aa0
016a0460  mov w8,#0x1
016a0464  str w8,[sp, #0x8]
016a0468  mov x0,sp
016a046c  bl 0x0174aa04
016a0470  adrp x1,0x575f000
016a0474  adrp x3,0x736d000
016a0478  add x1,x1,#0xbdd
016a047c  add x3,x3,#0x101
016a0480  add x0,sp,#0x10
016a0484  mov x2,sp
016a0488  bl 0x017914bc
016a048c  adrp x1,0x575f000
016a0490  adrp x2,0x1791000
016a0494  adrp x4,0x1791000
016a0498  add x1,x1,#0xbec
016a049c  add x2,x2,#0x284
016a04a0  add x4,x4,#0x28c
016a04a4  add x0,sp,#0x10
016a04a8  mov x3,xzr
016a04ac  mov x5,xzr
016a04b0  bl 0x0179109c
016a04b4  adrp x1,0x575f000
016a04b8  adrp x2,0x1791000
016a04bc  adrp x4,0x1791000
016a04c0  add x1,x1,#0xbf4
016a04c4  add x2,x2,#0x294
016a04c8  add x4,x4,#0x29c
016a04cc  mov x3,xzr
016a04d0  mov x5,xzr
016a04d4  bl 0x0179109c
016a04d8  adrp x1,0x575f000
016a04dc  adrp x2,0x1791000
016a04e0  adrp x4,0x1791000
016a04e4  add x1,x1,#0xbfc
016a04e8  add x2,x2,#0x2a4
016a04ec  add x4,x4,#0x2ac
016a04f0  mov x3,xzr
016a04f4  mov x5,xzr
016a04f8  bl 0x0179109c
016a04fc  adrp x1,0x575f000
016a0500  adrp x2,0x1791000
016a0504  adrp x4,0x1791000
016a0508  add x1,x1,#0xc0f
016a050c  add x2,x2,#0x2b4
016a0510  add x4,x4,#0x2bc
016a0514  mov x3,xzr
016a0518  mov x5,xzr
016a051c  bl 0x0179109c
016a0520  adrp x1,0x575f000
016a0524  adrp x2,0x1791000
016a0528  adrp x4,0x1791000
016a052c  add x1,x1,#0xc24
016a0530  add x2,x2,#0x4ac
016a0534  add x4,x4,#0x4b4
016a0538  mov x3,xzr
016a053c  mov x5,xzr
016a0540  bl 0x017912c4
016a0544  mov x19,x0
016a0548  ldr w8,[x19, #0x8]
016a054c  ldr x0,[x19]
016a0550  sub w8,w8,#0x3
016a0554  str w8,[x19, #0x8]
016a0558  orr w1,wzr,#0xfffffffc
016a055c  bl 0x0124c4d0
016a0560  ldr w8,[x19, #0x8]
016a0564  ldr x0,[x19]
016a0568  str wzr,[x19, #0x8]
016a056c  cmp w8,#0x1
016a0570  b.lt 0x016a057c
016a0574  mvn w1,w8
016a0578  bl 0x0124c4d0
016a057c  ldr w8,[sp, #0x18]
016a0580  cmp w8,#0x1
016a0584  b.lt 0x016a0594
016a0588  ldr x0,[sp, #0x10]
016a058c  mvn w1,w8
016a0590  bl 0x0124c4d0
016a0594  ldr w8,[sp, #0x8]
016a0598  cmp w8,#0x1
016a059c  b.lt 0x016a05ac
016a05a0  ldr x0,[sp]
016a05a4  mvn w1,w8
016a05a8  bl 0x0124c4d0
016a05ac  ldp x29,x30,[sp, #0x30]
016a05b0  ldr x19,[sp, #0x20]
016a05b4  add sp,sp,#0x40
016a05b8  ret
