// ===== case201-RelatedSkillStrengthenCategorySubConfig @ 016af140 =====
// existing function case201-RelatedSkillStrengthenCategorySubConfig
016af140  sub sp,sp,#0x40
016af144  str x19,[sp, #0x20]
016af148  stp x29,x30,[sp, #0x30]
016af14c  add x29,sp,#0x30
016af150  adrp x1,0x174a000
016af154  add x1,x1,#0x87c
016af158  mov x19,x0
016af15c  bl 0x0124ba40
016af160  adrp x1,0x575d000
016af164  add x1,x1,#0xa06
016af168  mov x0,x19
016af16c  str x19,[sp]
016af170  bl 0x01251aa0
016af174  mov w8,#0x1
016af178  str w8,[sp, #0x8]
016af17c  mov x0,sp
016af180  bl 0x0174aa04
016af184  adrp x1,0x5760000
016af188  adrp x3,0x736d000
016af18c  add x1,x1,#0xd00
016af190  add x3,x3,#0x101
016af194  add x0,sp,#0x10
016af198  mov x2,sp
016af19c  bl 0x017bb37c
016af1a0  adrp x1,0x5760000
016af1a4  adrp x2,0x17bb000
016af1a8  adrp x4,0x17bb000
016af1ac  add x1,x1,#0xd28
016af1b0  add x2,x2,#0x174
016af1b4  add x4,x4,#0x17c
016af1b8  add x0,sp,#0x10
016af1bc  mov x3,xzr
016af1c0  mov x5,xzr
016af1c4  bl 0x017baf8c
016af1c8  adrp x1,0x5760000
016af1cc  adrp x2,0x17bb000
016af1d0  adrp x4,0x17bb000
016af1d4  add x1,x1,#0xd37
016af1d8  add x2,x2,#0x36c
016af1dc  add x4,x4,#0x374
016af1e0  mov x3,xzr
016af1e4  mov x5,xzr
016af1e8  bl 0x017bb184
016af1ec  mov x19,x0
016af1f0  ldr w8,[x19, #0x8]
016af1f4  ldr x0,[x19]
016af1f8  sub w8,w8,#0x3
016af1fc  str w8,[x19, #0x8]
016af200  orr w1,wzr,#0xfffffffc
016af204  bl 0x0124c4d0
016af208  ldr w8,[x19, #0x8]
016af20c  ldr x0,[x19]
016af210  str wzr,[x19, #0x8]
016af214  cmp w8,#0x1
016af218  b.lt 0x016af224
016af21c  mvn w1,w8
016af220  bl 0x0124c4d0
016af224  ldr w8,[sp, #0x18]
016af228  cmp w8,#0x1
016af22c  b.lt 0x016af23c
016af230  ldr x0,[sp, #0x10]
016af234  mvn w1,w8
016af238  bl 0x0124c4d0
016af23c  ldr w8,[sp, #0x8]
016af240  cmp w8,#0x1
016af244  b.lt 0x016af254
016af248  ldr x0,[sp]
016af24c  mvn w1,w8
016af250  bl 0x0124c4d0
016af254  ldp x29,x30,[sp, #0x30]
016af258  ldr x19,[sp, #0x20]
016af25c  add sp,sp,#0x40
016af260  ret
