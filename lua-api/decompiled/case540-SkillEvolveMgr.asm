// ===== case540-SkillEvolveMgr @ 016fb1d4 =====
// existing function case540-SkillEvolveMgr
016fb1d4  sub sp,sp,#0x40
016fb1d8  str x19,[sp, #0x20]
016fb1dc  stp x29,x30,[sp, #0x30]
016fb1e0  add x29,sp,#0x30
016fb1e4  adrp x1,0x174a000
016fb1e8  add x1,x1,#0x87c
016fb1ec  mov x19,x0
016fb1f0  bl 0x0124ba40
016fb1f4  adrp x1,0x575d000
016fb1f8  add x1,x1,#0xa06
016fb1fc  mov x0,x19
016fb200  str x19,[sp]
016fb204  bl 0x01251aa0
016fb208  mov w8,#0x1
016fb20c  str w8,[sp, #0x8]
016fb210  mov x0,sp
016fb214  bl 0x0174aa04
016fb218  adrp x1,0x5769000
016fb21c  adrp x3,0x736d000
016fb220  add x1,x1,#0xf0
016fb224  add x3,x3,#0x101
016fb228  add x0,sp,#0x10
016fb22c  mov x2,sp
016fb230  bl 0x018bac88
016fb234  adrp x1,0x5769000
016fb238  adrp x2,0x18ba000
016fb23c  adrp x4,0x18ba000
016fb240  add x1,x1,#0xff
016fb244  add x2,x2,#0xc40
016fb248  add x4,x4,#0xc48
016fb24c  add x0,sp,#0x10
016fb250  mov x3,xzr
016fb254  mov x5,xzr
016fb258  bl 0x018baa58
016fb25c  adrp x1,0x5769000
016fb260  adrp x2,0x18ba000
016fb264  adrp x4,0x18ba000
016fb268  add x1,x1,#0x10e
016fb26c  add x2,x2,#0xc64
016fb270  add x4,x4,#0xc6c
016fb274  mov x3,xzr
016fb278  mov x5,xzr
016fb27c  bl 0x018baa58
016fb280  mov x19,x0
016fb284  ldr w8,[x19, #0x8]
016fb288  ldr x0,[x19]
016fb28c  sub w8,w8,#0x3
016fb290  str w8,[x19, #0x8]
016fb294  orr w1,wzr,#0xfffffffc
016fb298  bl 0x0124c4d0
016fb29c  ldr w8,[x19, #0x8]
016fb2a0  ldr x0,[x19]
016fb2a4  str wzr,[x19, #0x8]
016fb2a8  cmp w8,#0x1
016fb2ac  b.lt 0x016fb2b8
016fb2b0  mvn w1,w8
016fb2b4  bl 0x0124c4d0
016fb2b8  ldr w8,[sp, #0x18]
016fb2bc  cmp w8,#0x1
016fb2c0  b.lt 0x016fb2d0
016fb2c4  ldr x0,[sp, #0x10]
016fb2c8  mvn w1,w8
016fb2cc  bl 0x0124c4d0
016fb2d0  ldr w8,[sp, #0x8]
016fb2d4  cmp w8,#0x1
016fb2d8  b.lt 0x016fb2e8
016fb2dc  ldr x0,[sp]
016fb2e0  mvn w1,w8
016fb2e4  bl 0x0124c4d0
016fb2e8  ldp x29,x30,[sp, #0x30]
016fb2ec  ldr x19,[sp, #0x20]
016fb2f0  add sp,sp,#0x40
016fb2f4  ret
