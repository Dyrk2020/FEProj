// ===== case171-SpellBookSkillResObject @ 016aa2b0 =====
// existing function case171-SpellBookSkillResObject
016aa2b0  sub sp,sp,#0x40
016aa2b4  stp x20,x19,[sp, #0x20]
016aa2b8  stp x29,x30,[sp, #0x30]
016aa2bc  add x29,sp,#0x30
016aa2c0  adrp x1,0x174a000
016aa2c4  add x1,x1,#0x87c
016aa2c8  mov x19,x0
016aa2cc  bl 0x0124ba40
016aa2d0  adrp x1,0x575d000
016aa2d4  add x1,x1,#0xa06
016aa2d8  mov x0,x19
016aa2dc  str x19,[sp]
016aa2e0  bl 0x01251aa0
016aa2e4  mov w8,#0x1
016aa2e8  str w8,[sp, #0x8]
016aa2ec  mov x0,sp
016aa2f0  bl 0x0174aa04
016aa2f4  adrp x1,0x5760000
016aa2f8  adrp x3,0x736d000
016aa2fc  add x1,x1,#0x6f5
016aa300  add x3,x3,#0x101
016aa304  add x0,sp,#0x10
016aa308  mov x2,sp
016aa30c  bl 0x017ad038
016aa310  ldr x0,[sp, #0x10]
016aa314  mov w1,#0x10
016aa318  bl 0x0124cba0
016aa31c  adrp x8,0x17ad000
016aa320  dup v0.2D,xzr
016aa324  add x8,x8,#0x28
016aa328  mov v0.D[0x0],x8
016aa32c  str q0,[x0]
016aa330  ldr x0,[sp, #0x10]
016aa334  adrp x1,0x17ad000
016aa338  add x1,x1,#0x3fc
016aa33c  mov w2,#0x1
016aa340  bl 0x0124ec90
016aa344  ldr x0,[sp, #0x10]
016aa348  mov w1,#0xffffffff
016aa34c  bl 0x0124c0c0
016aa350  ldr x19,[sp, #0x10]
016aa354  orr w1,wzr,#0xfffffffb
016aa358  mov w2,#0x6e7
016aa35c  mov x0,x19
016aa360  bl 0x0124a650
016aa364  orr w1,wzr,#0xfffffffe
016aa368  mov x0,x19
016aa36c  bl 0x0124c0c0
016aa370  orr w1,wzr,#0xfffffffe
016aa374  mov x0,x19
016aa378  bl 0x0124e920
016aa37c  mov w20,w0
016aa380  adrp x1,0x575e000
016aa384  add x1,x1,#0x56d
016aa388  mov x0,x19
016aa38c  bl 0x0124f120
016aa390  orr w1,wzr,#0xfffffffe
016aa394  mov w2,#0x1
016aa398  mov x0,x19
016aa39c  bl 0x0124cfc0
016aa3a0  mov x0,x19
016aa3a4  mov w1,w20
016aa3a8  bl 0x0124e060
016aa3ac  orr w1,wzr,#0xfffffffd
016aa3b0  mov x0,x19
016aa3b4  bl 0x0124c4d0
016aa3b8  ldr x19,[sp, #0x10]
016aa3bc  orr w1,wzr,#0xfffffffd
016aa3c0  mov w2,#0x6e7
016aa3c4  mov x0,x19
016aa3c8  bl 0x0124a650
016aa3cc  orr w1,wzr,#0xfffffffe
016aa3d0  mov x0,x19
016aa3d4  bl 0x0124c0c0
016aa3d8  orr w1,wzr,#0xfffffffe
016aa3dc  mov x0,x19
016aa3e0  bl 0x0124e920
016aa3e4  mov w20,w0
016aa3e8  adrp x1,0x575e000
016aa3ec  add x1,x1,#0x56d
016aa3f0  mov x0,x19
016aa3f4  bl 0x0124f120
016aa3f8  orr w1,wzr,#0xfffffffe
016aa3fc  mov w2,#0x1
016aa400  mov x0,x19
016aa404  bl 0x0124cfc0
016aa408  mov x0,x19
016aa40c  mov w1,w20
016aa410  bl 0x0124e060
016aa414  orr w1,wzr,#0xfffffffd
016aa418  mov x0,x19
016aa41c  bl 0x0124c4d0
016aa420  ldr x0,[sp, #0x10]
016aa424  mov w1,#0x10
016aa428  bl 0x0124cba0
016aa42c  adrp x8,0x17ad000
016aa430  dup v0.2D,xzr
016aa434  add x8,x8,#0x30
016aa438  mov v0.D[0x0],x8
016aa43c  str q0,[x0]
016aa440  ldr x0,[sp, #0x10]
016aa444  adrp x1,0x17ad000
016aa448  add x1,x1,#0x520
016aa44c  mov w2,#0x1
016aa450  bl 0x0124ec90
016aa454  ldr x0,[sp, #0x10]
016aa458  mov w1,#0xffffffff
016aa45c  bl 0x0124c0c0
016aa460  ldr x19,[sp, #0x10]
016aa464  orr w1,wzr,#0xfffffffb
016aa468  mov w2,#0x6e7
016aa46c  mov x0,x19
016aa470  bl 0x0124a650
016aa474  orr w1,wzr,#0xfffffffe
016aa478  mov x0,x19
016aa47c  bl 0x0124c0c0
016aa480  orr w1,wzr,#0xfffffffe
016aa484  mov x0,x19
016aa488  bl 0x0124e920
016aa48c  mov w20,w0
016aa490  adrp x1,0x575e000
016aa494  add x1,x1,#0x578
016aa498  mov x0,x19
016aa49c  bl 0x0124f120
016aa4a0  orr w1,wzr,#0xfffffffe
016aa4a4  mov w2,#0x1
016aa4a8  mov x0,x19
016aa4ac  bl 0x0124cfc0
016aa4b0  mov x0,x19
016aa4b4  mov w1,w20
016aa4b8  bl 0x0124e060
016aa4bc  orr w1,wzr,#0xfffffffd
016aa4c0  mov x0,x19
016aa4c4  bl 0x0124c4d0
016aa4c8  ldr x19,[sp, #0x10]
016aa4cc  orr w1,wzr,#0xfffffffd
016aa4d0  mov w2,#0x6e7
016aa4d4  mov x0,x19
016aa4d8  bl 0x0124a650
016aa4dc  orr w1,wzr,#0xfffffffe
016aa4e0  mov x0,x19
016aa4e4  bl 0x0124c0c0
016aa4e8  orr w1,wzr,#0xfffffffe
016aa4ec  mov x0,x19
016aa4f0  bl 0x0124e920
016aa4f4  mov w20,w0
016aa4f8  adrp x1,0x575e000
016aa4fc  add x1,x1,#0x578
016aa500  mov x0,x19
016aa504  bl 0x0124f120
016aa508  orr w1,wzr,#0xfffffffe
016aa50c  mov w2,#0x1
016aa510  mov x0,x19
016aa514  bl 0x0124cfc0
016aa518  mov x0,x19
016aa51c  mov w1,w20
016aa520  bl 0x0124e060
016aa524  orr w1,wzr,#0xfffffffd
016aa528  mov x0,x19
016aa52c  bl 0x0124c4d0
016aa530  ldr w8,[sp, #0x18]
016aa534  ldr x0,[sp, #0x10]
016aa538  sub w8,w8,#0x3
016aa53c  str w8,[sp, #0x18]
016aa540  orr w1,wzr,#0xfffffffc
016aa544  bl 0x0124c4d0
016aa548  ldr w8,[sp, #0x18]
016aa54c  ldr x0,[sp, #0x10]
016aa550  str wzr,[sp, #0x18]
016aa554  cmp w8,#0x1
016aa558  b.lt 0x016aa57c
016aa55c  mvn w1,w8
016aa560  bl 0x0124c4d0
016aa564  ldr w8,[sp, #0x18]
016aa568  cmp w8,#0x1
016aa56c  b.lt 0x016aa57c
016aa570  ldr x0,[sp, #0x10]
016aa574  mvn w1,w8
016aa578  bl 0x0124c4d0
016aa57c  ldr w8,[sp, #0x8]
016aa580  cmp w8,#0x1
016aa584  b.lt 0x016aa594
016aa588  ldr x0,[sp]
016aa58c  mvn w1,w8
016aa590  bl 0x0124c4d0
016aa594  ldp x29,x30,[sp, #0x30]
016aa598  ldp x20,x19,[sp, #0x20]
016aa59c  add sp,sp,#0x40
016aa5a0  ret
