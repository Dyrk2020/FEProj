// ===== case617-MapObjBase @ 0170b3dc =====
// existing function case617-MapObjBase
0170b3dc  sub sp,sp,#0x50
0170b3e0  str x21,[sp, #0x20]
0170b3e4  stp x20,x19,[sp, #0x30]
0170b3e8  stp x29,x30,[sp, #0x40]
0170b3ec  add x29,sp,#0x40
0170b3f0  adrp x1,0x174a000
0170b3f4  add x1,x1,#0x87c
0170b3f8  mov x19,x0
0170b3fc  bl 0x0124ba40
0170b400  adrp x1,0x575d000
0170b404  add x1,x1,#0xa06
0170b408  mov x0,x19
0170b40c  str x19,[sp]
0170b410  bl 0x01251aa0
0170b414  mov w8,#0x1
0170b418  str w8,[sp, #0x8]
0170b41c  mov x0,sp
0170b420  bl 0x0174aa04
0170b424  adrp x1,0x576a000
0170b428  adrp x3,0x736d000
0170b42c  add x1,x1,#0x62e
0170b430  add x3,x3,#0x101
0170b434  add x0,sp,#0x10
0170b438  mov x2,sp
0170b43c  bl 0x018fe420
0170b440  adrp x1,0x57f9000
0170b444  adrp x2,0x18fe000
0170b448  adrp x4,0x18fe000
0170b44c  add x1,x1,#0xcf2
0170b450  add x2,x2,#0x1a0
0170b454  add x4,x4,#0x1a8
0170b458  add x0,sp,#0x10
0170b45c  mov x3,xzr
0170b460  mov x5,xzr
0170b464  bl 0x018fdfb8
0170b468  adrp x1,0x59a4000
0170b46c  adrp x2,0x18fe000
0170b470  adrp x4,0x18fe000
0170b474  add x1,x1,#0x6f7
0170b478  add x2,x2,#0x398
0170b47c  add x4,x4,#0x3ac
0170b480  mov x3,xzr
0170b484  mov x5,xzr
0170b488  bl 0x018fe1b0
0170b48c  adrp x1,0x57cf000
0170b490  adrp x2,0x18fe000
0170b494  adrp x4,0x18fe000
0170b498  add x1,x1,#0x365
0170b49c  add x2,x2,#0x3c8
0170b4a0  add x4,x4,#0x3dc
0170b4a4  mov x3,xzr
0170b4a8  mov x5,xzr
0170b4ac  bl 0x018fe1b0
0170b4b0  adrp x1,0x576a000
0170b4b4  adrp x2,0x18fe000
0170b4b8  adrp x4,0x18fe000
0170b4bc  add x1,x1,#0x639
0170b4c0  add x2,x2,#0x3f8
0170b4c4  add x4,x4,#0x400
0170b4c8  mov x3,xzr
0170b4cc  mov x5,xzr
0170b4d0  bl 0x018fdfb8
0170b4d4  adrp x1,0x576a000
0170b4d8  adrp x2,0x18fe000
0170b4dc  adrp x4,0x18fe000
0170b4e0  add x1,x1,#0x644
0170b4e4  add x2,x2,#0x408
0170b4e8  add x4,x4,#0x410
0170b4ec  mov x3,xzr
0170b4f0  mov x5,xzr
0170b4f4  bl 0x018fdfb8
0170b4f8  mov x19,x0
0170b4fc  ldr x0,[x19]
0170b500  mov w1,#0x10
0170b504  bl 0x0124cba0
0170b508  adrp x8,0x18fe000
0170b50c  dup v0.2D,xzr
0170b510  add x8,x8,#0x418
0170b514  mov v0.D[0x0],x8
0170b518  str q0,[x0]
0170b51c  ldr x0,[x19]
0170b520  adrp x1,0x18fe000
0170b524  add x1,x1,#0xc9c
0170b528  mov w2,#0x1
0170b52c  bl 0x0124ec90
0170b530  ldr x0,[x19]
0170b534  mov w1,#0xffffffff
0170b538  bl 0x0124c0c0
0170b53c  ldr x20,[x19]
0170b540  orr w1,wzr,#0xfffffffb
0170b544  mov w2,#0x6e7
0170b548  mov x0,x20
0170b54c  bl 0x0124a650
0170b550  orr w1,wzr,#0xfffffffe
0170b554  mov x0,x20
0170b558  bl 0x0124c0c0
0170b55c  orr w1,wzr,#0xfffffffe
0170b560  mov x0,x20
0170b564  bl 0x0124e920
0170b568  mov w21,w0
0170b56c  adrp x1,0x576a000
0170b570  add x1,x1,#0x64d
0170b574  mov x0,x20
0170b578  bl 0x0124f120
0170b57c  orr w1,wzr,#0xfffffffe
0170b580  mov w2,#0x1
0170b584  mov x0,x20
0170b588  bl 0x0124cfc0
0170b58c  mov x0,x20
0170b590  mov w1,w21
0170b594  bl 0x0124e060
0170b598  orr w1,wzr,#0xfffffffd
0170b59c  mov x0,x20
0170b5a0  bl 0x0124c4d0
0170b5a4  ldr x20,[x19]
0170b5a8  orr w1,wzr,#0xfffffffd
0170b5ac  mov w2,#0x6e7
0170b5b0  mov x0,x20
0170b5b4  bl 0x0124a650
0170b5b8  orr w1,wzr,#0xfffffffe
0170b5bc  mov x0,x20
0170b5c0  bl 0x0124c0c0
0170b5c4  orr w1,wzr,#0xfffffffe
0170b5c8  mov x0,x20
0170b5cc  bl 0x0124e920
0170b5d0  mov w21,w0
0170b5d4  adrp x1,0x576a000
0170b5d8  add x1,x1,#0x64d
0170b5dc  mov x0,x20
0170b5e0  bl 0x0124f120
0170b5e4  orr w1,wzr,#0xfffffffe
0170b5e8  mov w2,#0x1
0170b5ec  mov x0,x20
0170b5f0  bl 0x0124cfc0
0170b5f4  mov x0,x20
0170b5f8  mov w1,w21
0170b5fc  bl 0x0124e060
0170b600  orr w1,wzr,#0xfffffffd
0170b604  mov x0,x20
0170b608  bl 0x0124c4d0
0170b60c  ldr w8,[x19, #0x8]
0170b610  ldr x0,[x19]
0170b614  sub w8,w8,#0x3
0170b618  str w8,[x19, #0x8]
0170b61c  orr w1,wzr,#0xfffffffc
0170b620  bl 0x0124c4d0
0170b624  ldr w8,[x19, #0x8]
0170b628  ldr x0,[x19]
0170b62c  str wzr,[x19, #0x8]
0170b630  cmp w8,#0x1
0170b634  b.lt 0x0170b640
0170b638  mvn w1,w8
0170b63c  bl 0x0124c4d0
0170b640  ldr w8,[sp, #0x18]
0170b644  cmp w8,#0x1
0170b648  b.lt 0x0170b658
0170b64c  ldr x0,[sp, #0x10]
0170b650  mvn w1,w8
0170b654  bl 0x0124c4d0
0170b658  ldr w8,[sp, #0x8]
0170b65c  cmp w8,#0x1
0170b660  b.lt 0x0170b670
0170b664  ldr x0,[sp]
0170b668  mvn w1,w8
0170b66c  bl 0x0124c4d0
0170b670  ldp x29,x30,[sp, #0x40]
0170b674  ldp x20,x19,[sp, #0x30]
0170b678  ldr x21,[sp, #0x20]
0170b67c  add sp,sp,#0x50
0170b680  ret
