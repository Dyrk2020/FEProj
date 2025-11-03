// ===== case208-SkillGemCategoryResObject @ 016b0370 =====
// existing function case208-SkillGemCategoryResObject
016b0370  sub sp,sp,#0x40
016b0374  stp x20,x19,[sp, #0x20]
016b0378  stp x29,x30,[sp, #0x30]
016b037c  add x29,sp,#0x30
016b0380  adrp x1,0x174a000
016b0384  add x1,x1,#0x87c
016b0388  mov x19,x0
016b038c  bl 0x0124ba40
016b0390  adrp x1,0x575d000
016b0394  add x1,x1,#0xa06
016b0398  mov x0,x19
016b039c  str x19,[sp]
016b03a0  bl 0x01251aa0
016b03a4  mov w8,#0x1
016b03a8  str w8,[sp, #0x8]
016b03ac  mov x0,sp
016b03b0  bl 0x0174aa04
016b03b4  adrp x1,0x5760000
016b03b8  adrp x3,0x736d000
016b03bc  add x1,x1,#0xe88
016b03c0  add x3,x3,#0x101
016b03c4  add x0,sp,#0x10
016b03c8  mov x2,sp
016b03cc  bl 0x017bec34
016b03d0  ldr x0,[sp, #0x10]
016b03d4  mov w1,#0x10
016b03d8  bl 0x0124cba0
016b03dc  adrp x8,0x17be000
016b03e0  dup v0.2D,xzr
016b03e4  add x8,x8,#0xc24
016b03e8  mov v0.D[0x0],x8
016b03ec  str q0,[x0]
016b03f0  ldr x0,[sp, #0x10]
016b03f4  adrp x1,0x17be000
016b03f8  add x1,x1,#0xff8
016b03fc  mov w2,#0x1
016b0400  bl 0x0124ec90
016b0404  ldr x0,[sp, #0x10]
016b0408  mov w1,#0xffffffff
016b040c  bl 0x0124c0c0
016b0410  ldr x19,[sp, #0x10]
016b0414  orr w1,wzr,#0xfffffffb
016b0418  mov w2,#0x6e7
016b041c  mov x0,x19
016b0420  bl 0x0124a650
016b0424  orr w1,wzr,#0xfffffffe
016b0428  mov x0,x19
016b042c  bl 0x0124c0c0
016b0430  orr w1,wzr,#0xfffffffe
016b0434  mov x0,x19
016b0438  bl 0x0124e920
016b043c  mov w20,w0
016b0440  adrp x1,0x575e000
016b0444  add x1,x1,#0x56d
016b0448  mov x0,x19
016b044c  bl 0x0124f120
016b0450  orr w1,wzr,#0xfffffffe
016b0454  mov w2,#0x1
016b0458  mov x0,x19
016b045c  bl 0x0124cfc0
016b0460  mov x0,x19
016b0464  mov w1,w20
016b0468  bl 0x0124e060
016b046c  orr w1,wzr,#0xfffffffd
016b0470  mov x0,x19
016b0474  bl 0x0124c4d0
016b0478  ldr x19,[sp, #0x10]
016b047c  orr w1,wzr,#0xfffffffd
016b0480  mov w2,#0x6e7
016b0484  mov x0,x19
016b0488  bl 0x0124a650
016b048c  orr w1,wzr,#0xfffffffe
016b0490  mov x0,x19
016b0494  bl 0x0124c0c0
016b0498  orr w1,wzr,#0xfffffffe
016b049c  mov x0,x19
016b04a0  bl 0x0124e920
016b04a4  mov w20,w0
016b04a8  adrp x1,0x575e000
016b04ac  add x1,x1,#0x56d
016b04b0  mov x0,x19
016b04b4  bl 0x0124f120
016b04b8  orr w1,wzr,#0xfffffffe
016b04bc  mov w2,#0x1
016b04c0  mov x0,x19
016b04c4  bl 0x0124cfc0
016b04c8  mov x0,x19
016b04cc  mov w1,w20
016b04d0  bl 0x0124e060
016b04d4  orr w1,wzr,#0xfffffffd
016b04d8  mov x0,x19
016b04dc  bl 0x0124c4d0
016b04e0  ldr x0,[sp, #0x10]
016b04e4  mov w1,#0x10
016b04e8  bl 0x0124cba0
016b04ec  adrp x8,0x17be000
016b04f0  dup v0.2D,xzr
016b04f4  add x8,x8,#0xc2c
016b04f8  mov v0.D[0x0],x8
016b04fc  str q0,[x0]
016b0500  ldr x0,[sp, #0x10]
016b0504  adrp x1,0x17bf000
016b0508  add x1,x1,#0x11c
016b050c  mov w2,#0x1
016b0510  bl 0x0124ec90
016b0514  ldr x0,[sp, #0x10]
016b0518  mov w1,#0xffffffff
016b051c  bl 0x0124c0c0
016b0520  ldr x19,[sp, #0x10]
016b0524  orr w1,wzr,#0xfffffffb
016b0528  mov w2,#0x6e7
016b052c  mov x0,x19
016b0530  bl 0x0124a650
016b0534  orr w1,wzr,#0xfffffffe
016b0538  mov x0,x19
016b053c  bl 0x0124c0c0
016b0540  orr w1,wzr,#0xfffffffe
016b0544  mov x0,x19
016b0548  bl 0x0124e920
016b054c  mov w20,w0
016b0550  adrp x1,0x575e000
016b0554  add x1,x1,#0x578
016b0558  mov x0,x19
016b055c  bl 0x0124f120
016b0560  orr w1,wzr,#0xfffffffe
016b0564  mov w2,#0x1
016b0568  mov x0,x19
016b056c  bl 0x0124cfc0
016b0570  mov x0,x19
016b0574  mov w1,w20
016b0578  bl 0x0124e060
016b057c  orr w1,wzr,#0xfffffffd
016b0580  mov x0,x19
016b0584  bl 0x0124c4d0
016b0588  ldr x19,[sp, #0x10]
016b058c  orr w1,wzr,#0xfffffffd
016b0590  mov w2,#0x6e7
016b0594  mov x0,x19
016b0598  bl 0x0124a650
016b059c  orr w1,wzr,#0xfffffffe
016b05a0  mov x0,x19
016b05a4  bl 0x0124c0c0
016b05a8  orr w1,wzr,#0xfffffffe
016b05ac  mov x0,x19
016b05b0  bl 0x0124e920
016b05b4  mov w20,w0
016b05b8  adrp x1,0x575e000
016b05bc  add x1,x1,#0x578
016b05c0  mov x0,x19
016b05c4  bl 0x0124f120
016b05c8  orr w1,wzr,#0xfffffffe
016b05cc  mov w2,#0x1
016b05d0  mov x0,x19
016b05d4  bl 0x0124cfc0
016b05d8  mov x0,x19
016b05dc  mov w1,w20
016b05e0  bl 0x0124e060
016b05e4  orr w1,wzr,#0xfffffffd
016b05e8  mov x0,x19
016b05ec  bl 0x0124c4d0
016b05f0  ldr w8,[sp, #0x18]
016b05f4  ldr x0,[sp, #0x10]
016b05f8  sub w8,w8,#0x3
016b05fc  str w8,[sp, #0x18]
016b0600  orr w1,wzr,#0xfffffffc
016b0604  bl 0x0124c4d0
016b0608  ldr w8,[sp, #0x18]
016b060c  ldr x0,[sp, #0x10]
016b0610  str wzr,[sp, #0x18]
016b0614  cmp w8,#0x1
016b0618  b.lt 0x016b063c
016b061c  mvn w1,w8
016b0620  bl 0x0124c4d0
016b0624  ldr w8,[sp, #0x18]
016b0628  cmp w8,#0x1
016b062c  b.lt 0x016b063c
016b0630  ldr x0,[sp, #0x10]
016b0634  mvn w1,w8
016b0638  bl 0x0124c4d0
016b063c  ldr w8,[sp, #0x8]
016b0640  cmp w8,#0x1
016b0644  b.lt 0x016b0654
016b0648  ldr x0,[sp]
016b064c  mvn w1,w8
016b0650  bl 0x0124c4d0
016b0654  ldp x29,x30,[sp, #0x30]
016b0658  ldp x20,x19,[sp, #0x20]
016b065c  add sp,sp,#0x40
016b0660  ret
