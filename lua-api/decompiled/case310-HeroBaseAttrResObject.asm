// ===== case310-HeroBaseAttrResObject @ 016c0474 =====
// existing function case310-HeroBaseAttrResObject
016c0474  sub sp,sp,#0x40
016c0478  stp x20,x19,[sp, #0x20]
016c047c  stp x29,x30,[sp, #0x30]
016c0480  add x29,sp,#0x30
016c0484  adrp x1,0x174a000
016c0488  add x1,x1,#0x87c
016c048c  mov x19,x0
016c0490  bl 0x0124ba40
016c0494  adrp x1,0x575d000
016c0498  add x1,x1,#0xa06
016c049c  mov x0,x19
016c04a0  str x19,[sp]
016c04a4  bl 0x01251aa0
016c04a8  mov w8,#0x1
016c04ac  str w8,[sp, #0x8]
016c04b0  mov x0,sp
016c04b4  bl 0x0174aa04
016c04b8  adrp x1,0x5762000
016c04bc  adrp x3,0x736d000
016c04c0  add x1,x1,#0x89c
016c04c4  add x3,x3,#0x101
016c04c8  add x0,sp,#0x10
016c04cc  mov x2,sp
016c04d0  bl 0x017fa610
016c04d4  ldr x0,[sp, #0x10]
016c04d8  mov w1,#0x10
016c04dc  bl 0x0124cba0
016c04e0  adrp x8,0x17fa000
016c04e4  dup v0.2D,xzr
016c04e8  add x8,x8,#0x608
016c04ec  mov v0.D[0x0],x8
016c04f0  str q0,[x0]
016c04f4  ldr x0,[sp, #0x10]
016c04f8  adrp x1,0x17fa000
016c04fc  add x1,x1,#0x9d4
016c0500  mov w2,#0x1
016c0504  bl 0x0124ec90
016c0508  ldr x0,[sp, #0x10]
016c050c  mov w1,#0xffffffff
016c0510  bl 0x0124c0c0
016c0514  ldr x19,[sp, #0x10]
016c0518  orr w1,wzr,#0xfffffffb
016c051c  mov w2,#0x6e7
016c0520  mov x0,x19
016c0524  bl 0x0124a650
016c0528  orr w1,wzr,#0xfffffffe
016c052c  mov x0,x19
016c0530  bl 0x0124c0c0
016c0534  orr w1,wzr,#0xfffffffe
016c0538  mov x0,x19
016c053c  bl 0x0124e920
016c0540  mov w20,w0
016c0544  adrp x1,0x5762000
016c0548  add x1,x1,#0x8b2
016c054c  mov x0,x19
016c0550  bl 0x0124f120
016c0554  orr w1,wzr,#0xfffffffe
016c0558  mov w2,#0x1
016c055c  mov x0,x19
016c0560  bl 0x0124cfc0
016c0564  mov x0,x19
016c0568  mov w1,w20
016c056c  bl 0x0124e060
016c0570  orr w1,wzr,#0xfffffffd
016c0574  mov x0,x19
016c0578  bl 0x0124c4d0
016c057c  ldr x19,[sp, #0x10]
016c0580  orr w1,wzr,#0xfffffffd
016c0584  mov w2,#0x6e7
016c0588  mov x0,x19
016c058c  bl 0x0124a650
016c0590  orr w1,wzr,#0xfffffffe
016c0594  mov x0,x19
016c0598  bl 0x0124c0c0
016c059c  orr w1,wzr,#0xfffffffe
016c05a0  mov x0,x19
016c05a4  bl 0x0124e920
016c05a8  mov w20,w0
016c05ac  adrp x1,0x5762000
016c05b0  add x1,x1,#0x8b2
016c05b4  mov x0,x19
016c05b8  bl 0x0124f120
016c05bc  orr w1,wzr,#0xfffffffe
016c05c0  mov w2,#0x1
016c05c4  mov x0,x19
016c05c8  bl 0x0124cfc0
016c05cc  mov x0,x19
016c05d0  mov w1,w20
016c05d4  bl 0x0124e060
016c05d8  orr w1,wzr,#0xfffffffd
016c05dc  mov x0,x19
016c05e0  bl 0x0124c4d0
016c05e4  ldr w8,[sp, #0x18]
016c05e8  ldr x0,[sp, #0x10]
016c05ec  sub w8,w8,#0x3
016c05f0  str w8,[sp, #0x18]
016c05f4  orr w1,wzr,#0xfffffffc
016c05f8  bl 0x0124c4d0
016c05fc  ldr w8,[sp, #0x18]
016c0600  ldr x0,[sp, #0x10]
016c0604  str wzr,[sp, #0x18]
016c0608  cmp w8,#0x1
016c060c  b.lt 0x016c0630
016c0610  mvn w1,w8
016c0614  bl 0x0124c4d0
016c0618  ldr w8,[sp, #0x18]
016c061c  cmp w8,#0x1
016c0620  b.lt 0x016c0630
016c0624  ldr x0,[sp, #0x10]
016c0628  mvn w1,w8
016c062c  bl 0x0124c4d0
016c0630  ldr w8,[sp, #0x8]
016c0634  cmp w8,#0x1
016c0638  b.lt 0x016c0648
016c063c  ldr x0,[sp]
016c0640  mvn w1,w8
016c0644  bl 0x0124c4d0
016c0648  ldp x29,x30,[sp, #0x30]
016c064c  ldp x20,x19,[sp, #0x20]
016c0650  add sp,sp,#0x40
016c0654  ret
