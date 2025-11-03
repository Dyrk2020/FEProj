// ===== case183-PixiuAwardResObject @ 016ac408 =====
// existing function case183-PixiuAwardResObject
016ac408  sub sp,sp,#0x40
016ac40c  str x19,[sp, #0x20]
016ac410  stp x29,x30,[sp, #0x30]
016ac414  add x29,sp,#0x30
016ac418  adrp x1,0x174a000
016ac41c  add x1,x1,#0x87c
016ac420  mov x19,x0
016ac424  bl 0x0124ba40
016ac428  adrp x1,0x575d000
016ac42c  add x1,x1,#0xa06
016ac430  mov x0,x19
016ac434  str x19,[sp]
016ac438  bl 0x01251aa0
016ac43c  mov w8,#0x1
016ac440  str w8,[sp, #0x8]
016ac444  mov x0,sp
016ac448  bl 0x0174aa04
016ac44c  adrp x1,0x5760000
016ac450  adrp x3,0x736d000
016ac454  add x1,x1,#0xa0e
016ac458  add x3,x3,#0x101
016ac45c  add x0,sp,#0x10
016ac460  mov x2,sp
016ac464  bl 0x017b29b4
016ac468  adrp x1,0x5760000
016ac46c  adrp x2,0x17b2000
016ac470  adrp x4,0x17b2000
016ac474  add x1,x1,#0xa22
016ac478  add x2,x2,#0x9a4
016ac47c  add x4,x4,#0x9ac
016ac480  add x0,sp,#0x10
016ac484  mov x3,xzr
016ac488  mov x5,xzr
016ac48c  bl 0x017b27bc
016ac490  mov x19,x0
016ac494  ldr w8,[x19, #0x8]
016ac498  ldr x0,[x19]
016ac49c  sub w8,w8,#0x3
016ac4a0  str w8,[x19, #0x8]
016ac4a4  orr w1,wzr,#0xfffffffc
016ac4a8  bl 0x0124c4d0
016ac4ac  ldr w8,[x19, #0x8]
016ac4b0  ldr x0,[x19]
016ac4b4  str wzr,[x19, #0x8]
016ac4b8  cmp w8,#0x1
016ac4bc  b.lt 0x016ac4c8
016ac4c0  mvn w1,w8
016ac4c4  bl 0x0124c4d0
016ac4c8  ldr w8,[sp, #0x18]
016ac4cc  cmp w8,#0x1
016ac4d0  b.lt 0x016ac4e0
016ac4d4  ldr x0,[sp, #0x10]
016ac4d8  mvn w1,w8
016ac4dc  bl 0x0124c4d0
016ac4e0  ldr w8,[sp, #0x8]
016ac4e4  cmp w8,#0x1
016ac4e8  b.lt 0x016ac4f8
016ac4ec  ldr x0,[sp]
016ac4f0  mvn w1,w8
016ac4f4  bl 0x0124c4d0
016ac4f8  ldp x29,x30,[sp, #0x30]
016ac4fc  ldr x19,[sp, #0x20]
016ac500  add sp,sp,#0x40
016ac504  ret
