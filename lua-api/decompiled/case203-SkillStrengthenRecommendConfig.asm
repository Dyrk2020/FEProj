// ===== case203-SkillStrengthenRecommendConfig @ 016af498 =====
// existing function case203-SkillStrengthenRecommendConfig
016af498  sub sp,sp,#0x40
016af49c  stp x20,x19,[sp, #0x20]
016af4a0  stp x29,x30,[sp, #0x30]
016af4a4  add x29,sp,#0x30
016af4a8  adrp x1,0x174a000
016af4ac  add x1,x1,#0x87c
016af4b0  mov x19,x0
016af4b4  bl 0x0124ba40
016af4b8  adrp x1,0x575d000
016af4bc  add x1,x1,#0xa06
016af4c0  mov x0,x19
016af4c4  str x19,[sp]
016af4c8  bl 0x01251aa0
016af4cc  mov w8,#0x1
016af4d0  str w8,[sp, #0x8]
016af4d4  mov x0,sp
016af4d8  bl 0x0174aa04
016af4dc  adrp x1,0x5760000
016af4e0  adrp x3,0x736d000
016af4e4  add x1,x1,#0xd92
016af4e8  add x3,x3,#0x101
016af4ec  add x0,sp,#0x10
016af4f0  mov x2,sp
016af4f4  bl 0x017bc7c8
016af4f8  ldr x0,[sp, #0x10]
016af4fc  mov w1,#0x10
016af500  bl 0x0124cba0
016af504  adrp x8,0x17bc000
016af508  dup v0.2D,xzr
016af50c  add x8,x8,#0x7c0
016af510  mov v0.D[0x0],x8
016af514  str q0,[x0]
016af518  ldr x0,[sp, #0x10]
016af51c  adrp x1,0x17bc000
016af520  add x1,x1,#0xb8c
016af524  mov w2,#0x1
016af528  bl 0x0124ec90
016af52c  ldr x0,[sp, #0x10]
016af530  mov w1,#0xffffffff
016af534  bl 0x0124c0c0
016af538  ldr x19,[sp, #0x10]
016af53c  orr w1,wzr,#0xfffffffb
016af540  mov w2,#0x6e7
016af544  mov x0,x19
016af548  bl 0x0124a650
016af54c  orr w1,wzr,#0xfffffffe
016af550  mov x0,x19
016af554  bl 0x0124c0c0
016af558  orr w1,wzr,#0xfffffffe
016af55c  mov x0,x19
016af560  bl 0x0124e920
016af564  mov w20,w0
016af568  adrp x1,0x5760000
016af56c  add x1,x1,#0xdb1
016af570  mov x0,x19
016af574  bl 0x0124f120
016af578  orr w1,wzr,#0xfffffffe
016af57c  mov w2,#0x1
016af580  mov x0,x19
016af584  bl 0x0124cfc0
016af588  mov x0,x19
016af58c  mov w1,w20
016af590  bl 0x0124e060
016af594  orr w1,wzr,#0xfffffffd
016af598  mov x0,x19
016af59c  bl 0x0124c4d0
016af5a0  ldr x19,[sp, #0x10]
016af5a4  orr w1,wzr,#0xfffffffd
016af5a8  mov w2,#0x6e7
016af5ac  mov x0,x19
016af5b0  bl 0x0124a650
016af5b4  orr w1,wzr,#0xfffffffe
016af5b8  mov x0,x19
016af5bc  bl 0x0124c0c0
016af5c0  orr w1,wzr,#0xfffffffe
016af5c4  mov x0,x19
016af5c8  bl 0x0124e920
016af5cc  mov w20,w0
016af5d0  adrp x1,0x5760000
016af5d4  add x1,x1,#0xdb1
016af5d8  mov x0,x19
016af5dc  bl 0x0124f120
016af5e0  orr w1,wzr,#0xfffffffe
016af5e4  mov w2,#0x1
016af5e8  mov x0,x19
016af5ec  bl 0x0124cfc0
016af5f0  mov x0,x19
016af5f4  mov w1,w20
016af5f8  bl 0x0124e060
016af5fc  orr w1,wzr,#0xfffffffd
016af600  mov x0,x19
016af604  bl 0x0124c4d0
016af608  ldr w8,[sp, #0x18]
016af60c  ldr x0,[sp, #0x10]
016af610  sub w8,w8,#0x3
016af614  str w8,[sp, #0x18]
016af618  orr w1,wzr,#0xfffffffc
016af61c  bl 0x0124c4d0
016af620  ldr w8,[sp, #0x18]
016af624  ldr x0,[sp, #0x10]
016af628  str wzr,[sp, #0x18]
016af62c  cmp w8,#0x1
016af630  b.lt 0x016af654
016af634  mvn w1,w8
016af638  bl 0x0124c4d0
016af63c  ldr w8,[sp, #0x18]
016af640  cmp w8,#0x1
016af644  b.lt 0x016af654
016af648  ldr x0,[sp, #0x10]
016af64c  mvn w1,w8
016af650  bl 0x0124c4d0
016af654  ldr w8,[sp, #0x8]
016af658  cmp w8,#0x1
016af65c  b.lt 0x016af66c
016af660  ldr x0,[sp]
016af664  mvn w1,w8
016af668  bl 0x0124c4d0
016af66c  ldp x29,x30,[sp, #0x30]
016af670  ldp x20,x19,[sp, #0x20]
016af674  add sp,sp,#0x40
016af678  ret
