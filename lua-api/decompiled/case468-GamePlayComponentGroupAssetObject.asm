// ===== case468-GamePlayComponentGroupAssetObject @ 016ed3fc =====
// existing function case468-GamePlayComponentGroupAssetObject
016ed3fc  sub sp,sp,#0x40
016ed400  str x19,[sp, #0x20]
016ed404  stp x29,x30,[sp, #0x30]
016ed408  add x29,sp,#0x30
016ed40c  adrp x1,0x174a000
016ed410  add x1,x1,#0x87c
016ed414  mov x19,x0
016ed418  bl 0x0124ba40
016ed41c  adrp x1,0x575d000
016ed420  add x1,x1,#0xa06
016ed424  mov x0,x19
016ed428  str x19,[sp]
016ed42c  bl 0x01251aa0
016ed430  mov w8,#0x1
016ed434  str w8,[sp, #0x8]
016ed438  mov x0,sp
016ed43c  bl 0x0174aa04
016ed440  adrp x1,0x5767000
016ed444  adrp x3,0x736d000
016ed448  add x1,x1,#0xf6
016ed44c  add x3,x3,#0x101
016ed450  add x0,sp,#0x10
016ed454  mov x2,sp
016ed458  bl 0x01877738
016ed45c  adrp x1,0x575d000
016ed460  adrp x2,0x1877000
016ed464  adrp x4,0x1877000
016ed468  add x1,x1,#0xa00
016ed46c  add x2,x2,#0x728
016ed470  add x4,x4,#0x730
016ed474  add x0,sp,#0x10
016ed478  mov x3,xzr
016ed47c  mov x5,xzr
016ed480  bl 0x01877540
016ed484  mov x19,x0
016ed488  ldr w8,[x19, #0x8]
016ed48c  ldr x0,[x19]
016ed490  sub w8,w8,#0x3
016ed494  str w8,[x19, #0x8]
016ed498  orr w1,wzr,#0xfffffffc
016ed49c  bl 0x0124c4d0
016ed4a0  ldr w8,[x19, #0x8]
016ed4a4  ldr x0,[x19]
016ed4a8  str wzr,[x19, #0x8]
016ed4ac  cmp w8,#0x1
016ed4b0  b.lt 0x016ed4bc
016ed4b4  mvn w1,w8
016ed4b8  bl 0x0124c4d0
016ed4bc  ldr w8,[sp, #0x18]
016ed4c0  cmp w8,#0x1
016ed4c4  b.lt 0x016ed4d4
016ed4c8  ldr x0,[sp, #0x10]
016ed4cc  mvn w1,w8
016ed4d0  bl 0x0124c4d0
016ed4d4  ldr w8,[sp, #0x8]
016ed4d8  cmp w8,#0x1
016ed4dc  b.lt 0x016ed4ec
016ed4e0  ldr x0,[sp]
016ed4e4  mvn w1,w8
016ed4e8  bl 0x0124c4d0
016ed4ec  ldp x29,x30,[sp, #0x30]
016ed4f0  ldr x19,[sp, #0x20]
016ed4f4  add sp,sp,#0x40
016ed4f8  ret
