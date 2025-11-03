// ===== case196-ChampionInitGemCategoryResObject @ 016ae2ec =====
// existing function case196-ChampionInitGemCategoryResObject
016ae2ec  sub sp,sp,#0x40
016ae2f0  stp x20,x19,[sp, #0x20]
016ae2f4  stp x29,x30,[sp, #0x30]
016ae2f8  add x29,sp,#0x30
016ae2fc  adrp x1,0x174a000
016ae300  add x1,x1,#0x87c
016ae304  mov x19,x0
016ae308  bl 0x0124ba40
016ae30c  adrp x1,0x575d000
016ae310  add x1,x1,#0xa06
016ae314  mov x0,x19
016ae318  str x19,[sp]
016ae31c  bl 0x01251aa0
016ae320  mov w8,#0x1
016ae324  str w8,[sp, #0x8]
016ae328  mov x0,sp
016ae32c  bl 0x0174aa04
016ae330  adrp x1,0x5760000
016ae334  adrp x3,0x736d000
016ae338  add x1,x1,#0xc17
016ae33c  add x3,x3,#0x101
016ae340  add x0,sp,#0x10
016ae344  mov x2,sp
016ae348  bl 0x017b8c34
016ae34c  ldr x0,[sp, #0x10]
016ae350  mov w1,#0x10
016ae354  bl 0x0124cba0
016ae358  adrp x8,0x17b8000
016ae35c  dup v0.2D,xzr
016ae360  add x8,x8,#0xc24
016ae364  mov v0.D[0x0],x8
016ae368  str q0,[x0]
016ae36c  ldr x0,[sp, #0x10]
016ae370  adrp x1,0x17b8000
016ae374  add x1,x1,#0xff8
016ae378  mov w2,#0x1
016ae37c  bl 0x0124ec90
016ae380  ldr x0,[sp, #0x10]
016ae384  mov w1,#0xffffffff
016ae388  bl 0x0124c0c0
016ae38c  ldr x19,[sp, #0x10]
016ae390  orr w1,wzr,#0xfffffffb
016ae394  mov w2,#0x6e7
016ae398  mov x0,x19
016ae39c  bl 0x0124a650
016ae3a0  orr w1,wzr,#0xfffffffe
016ae3a4  mov x0,x19
016ae3a8  bl 0x0124c0c0
016ae3ac  orr w1,wzr,#0xfffffffe
016ae3b0  mov x0,x19
016ae3b4  bl 0x0124e920
016ae3b8  mov w20,w0
016ae3bc  adrp x1,0x575e000
016ae3c0  add x1,x1,#0x56d
016ae3c4  mov x0,x19
016ae3c8  bl 0x0124f120
016ae3cc  orr w1,wzr,#0xfffffffe
016ae3d0  mov w2,#0x1
016ae3d4  mov x0,x19
016ae3d8  bl 0x0124cfc0
016ae3dc  mov x0,x19
016ae3e0  mov w1,w20
016ae3e4  bl 0x0124e060
016ae3e8  orr w1,wzr,#0xfffffffd
016ae3ec  mov x0,x19
016ae3f0  bl 0x0124c4d0
016ae3f4  ldr x19,[sp, #0x10]
016ae3f8  orr w1,wzr,#0xfffffffd
016ae3fc  mov w2,#0x6e7
016ae400  mov x0,x19
016ae404  bl 0x0124a650
016ae408  orr w1,wzr,#0xfffffffe
016ae40c  mov x0,x19
016ae410  bl 0x0124c0c0
016ae414  orr w1,wzr,#0xfffffffe
016ae418  mov x0,x19
016ae41c  bl 0x0124e920
016ae420  mov w20,w0
016ae424  adrp x1,0x575e000
016ae428  add x1,x1,#0x56d
016ae42c  mov x0,x19
016ae430  bl 0x0124f120
016ae434  orr w1,wzr,#0xfffffffe
016ae438  mov w2,#0x1
016ae43c  mov x0,x19
016ae440  bl 0x0124cfc0
016ae444  mov x0,x19
016ae448  mov w1,w20
016ae44c  bl 0x0124e060
016ae450  orr w1,wzr,#0xfffffffd
016ae454  mov x0,x19
016ae458  bl 0x0124c4d0
016ae45c  ldr x0,[sp, #0x10]
016ae460  mov w1,#0x10
016ae464  bl 0x0124cba0
016ae468  adrp x8,0x17b8000
016ae46c  dup v0.2D,xzr
016ae470  add x8,x8,#0xc2c
016ae474  mov v0.D[0x0],x8
016ae478  str q0,[x0]
016ae47c  ldr x0,[sp, #0x10]
016ae480  adrp x1,0x17b9000
016ae484  add x1,x1,#0x11c
016ae488  mov w2,#0x1
016ae48c  bl 0x0124ec90
016ae490  ldr x0,[sp, #0x10]
016ae494  mov w1,#0xffffffff
016ae498  bl 0x0124c0c0
016ae49c  ldr x19,[sp, #0x10]
016ae4a0  orr w1,wzr,#0xfffffffb
016ae4a4  mov w2,#0x6e7
016ae4a8  mov x0,x19
016ae4ac  bl 0x0124a650
016ae4b0  orr w1,wzr,#0xfffffffe
016ae4b4  mov x0,x19
016ae4b8  bl 0x0124c0c0
016ae4bc  orr w1,wzr,#0xfffffffe
016ae4c0  mov x0,x19
016ae4c4  bl 0x0124e920
016ae4c8  mov w20,w0
016ae4cc  adrp x1,0x575e000
016ae4d0  add x1,x1,#0x578
016ae4d4  mov x0,x19
016ae4d8  bl 0x0124f120
016ae4dc  orr w1,wzr,#0xfffffffe
016ae4e0  mov w2,#0x1
016ae4e4  mov x0,x19
016ae4e8  bl 0x0124cfc0
016ae4ec  mov x0,x19
016ae4f0  mov w1,w20
016ae4f4  bl 0x0124e060
016ae4f8  orr w1,wzr,#0xfffffffd
016ae4fc  mov x0,x19
016ae500  bl 0x0124c4d0
016ae504  ldr x19,[sp, #0x10]
016ae508  orr w1,wzr,#0xfffffffd
016ae50c  mov w2,#0x6e7
016ae510  mov x0,x19
016ae514  bl 0x0124a650
016ae518  orr w1,wzr,#0xfffffffe
016ae51c  mov x0,x19
016ae520  bl 0x0124c0c0
016ae524  orr w1,wzr,#0xfffffffe
016ae528  mov x0,x19
016ae52c  bl 0x0124e920
016ae530  mov w20,w0
016ae534  adrp x1,0x575e000
016ae538  add x1,x1,#0x578
016ae53c  mov x0,x19
016ae540  bl 0x0124f120
016ae544  orr w1,wzr,#0xfffffffe
016ae548  mov w2,#0x1
016ae54c  mov x0,x19
016ae550  bl 0x0124cfc0
016ae554  mov x0,x19
016ae558  mov w1,w20
016ae55c  bl 0x0124e060
016ae560  orr w1,wzr,#0xfffffffd
016ae564  mov x0,x19
016ae568  bl 0x0124c4d0
016ae56c  ldr w8,[sp, #0x18]
016ae570  ldr x0,[sp, #0x10]
016ae574  sub w8,w8,#0x3
016ae578  str w8,[sp, #0x18]
016ae57c  orr w1,wzr,#0xfffffffc
016ae580  bl 0x0124c4d0
016ae584  ldr w8,[sp, #0x18]
016ae588  ldr x0,[sp, #0x10]
016ae58c  str wzr,[sp, #0x18]
016ae590  cmp w8,#0x1
016ae594  b.lt 0x016ae5b8
016ae598  mvn w1,w8
016ae59c  bl 0x0124c4d0
016ae5a0  ldr w8,[sp, #0x18]
016ae5a4  cmp w8,#0x1
016ae5a8  b.lt 0x016ae5b8
016ae5ac  ldr x0,[sp, #0x10]
016ae5b0  mvn w1,w8
016ae5b4  bl 0x0124c4d0
016ae5b8  ldr w8,[sp, #0x8]
016ae5bc  cmp w8,#0x1
016ae5c0  b.lt 0x016ae5d0
016ae5c4  ldr x0,[sp]
016ae5c8  mvn w1,w8
016ae5cc  bl 0x0124c4d0
016ae5d0  ldp x29,x30,[sp, #0x30]
016ae5d4  ldp x20,x19,[sp, #0x20]
016ae5d8  add sp,sp,#0x40
016ae5dc  ret
