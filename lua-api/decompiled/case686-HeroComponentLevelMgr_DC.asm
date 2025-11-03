// ===== case686-HeroComponentLevelMgr_DC @ 0171a474 =====
// existing function case686-HeroComponentLevelMgr_DC
0171a474  sub sp,sp,#0x40
0171a478  stp x20,x19,[sp, #0x20]
0171a47c  stp x29,x30,[sp, #0x30]
0171a480  add x29,sp,#0x30
0171a484  adrp x1,0x174a000
0171a488  add x1,x1,#0x87c
0171a48c  mov x19,x0
0171a490  bl 0x0124ba40
0171a494  adrp x1,0x575d000
0171a498  add x1,x1,#0xa06
0171a49c  mov x0,x19
0171a4a0  str x19,[sp]
0171a4a4  bl 0x01251aa0
0171a4a8  mov w8,#0x1
0171a4ac  str w8,[sp, #0x8]
0171a4b0  mov x0,sp
0171a4b4  bl 0x0174aa04
0171a4b8  adrp x1,0x576d000
0171a4bc  adrp x3,0x736d000
0171a4c0  add x1,x1,#0x4d8
0171a4c4  add x3,x3,#0x101
0171a4c8  add x0,sp,#0x10
0171a4cc  mov x2,sp
0171a4d0  bl 0x0194c1e8
0171a4d4  ldr x0,[sp, #0x10]
0171a4d8  mov w1,#0x10
0171a4dc  bl 0x0124cba0
0171a4e0  adrp x8,0x194b000
0171a4e4  dup v0.2D,xzr
0171a4e8  add x8,x8,#0xfd0
0171a4ec  mov v0.D[0x0],x8
0171a4f0  str q0,[x0]
0171a4f4  ldr x0,[sp, #0x10]
0171a4f8  adrp x1,0x194c000
0171a4fc  add x1,x1,#0x5ac
0171a500  mov w2,#0x1
0171a504  bl 0x0124ec90
0171a508  ldr x0,[sp, #0x10]
0171a50c  mov w1,#0xffffffff
0171a510  bl 0x0124c0c0
0171a514  ldr x19,[sp, #0x10]
0171a518  orr w1,wzr,#0xfffffffb
0171a51c  mov w2,#0x6e7
0171a520  mov x0,x19
0171a524  bl 0x0124a650
0171a528  orr w1,wzr,#0xfffffffe
0171a52c  mov x0,x19
0171a530  bl 0x0124c0c0
0171a534  orr w1,wzr,#0xfffffffe
0171a538  mov x0,x19
0171a53c  bl 0x0124e920
0171a540  mov w20,w0
0171a544  adrp x1,0x576d000
0171a548  add x1,x1,#0x4f1
0171a54c  mov x0,x19
0171a550  bl 0x0124f120
0171a554  orr w1,wzr,#0xfffffffe
0171a558  mov w2,#0x1
0171a55c  mov x0,x19
0171a560  bl 0x0124cfc0
0171a564  mov x0,x19
0171a568  mov w1,w20
0171a56c  bl 0x0124e060
0171a570  orr w1,wzr,#0xfffffffd
0171a574  mov x0,x19
0171a578  bl 0x0124c4d0
0171a57c  ldr x19,[sp, #0x10]
0171a580  orr w1,wzr,#0xfffffffd
0171a584  mov w2,#0x6e7
0171a588  mov x0,x19
0171a58c  bl 0x0124a650
0171a590  orr w1,wzr,#0xfffffffe
0171a594  mov x0,x19
0171a598  bl 0x0124c0c0
0171a59c  orr w1,wzr,#0xfffffffe
0171a5a0  mov x0,x19
0171a5a4  bl 0x0124e920
0171a5a8  mov w20,w0
0171a5ac  adrp x1,0x576d000
0171a5b0  add x1,x1,#0x4f1
0171a5b4  mov x0,x19
0171a5b8  bl 0x0124f120
0171a5bc  orr w1,wzr,#0xfffffffe
0171a5c0  mov w2,#0x1
0171a5c4  mov x0,x19
0171a5c8  bl 0x0124cfc0
0171a5cc  mov x0,x19
0171a5d0  mov w1,w20
0171a5d4  bl 0x0124e060
0171a5d8  orr w1,wzr,#0xfffffffd
0171a5dc  mov x0,x19
0171a5e0  bl 0x0124c4d0
0171a5e4  ldr x0,[sp, #0x10]
0171a5e8  mov w1,#0x10
0171a5ec  bl 0x0124cba0
0171a5f0  adrp x8,0x194b000
0171a5f4  dup v0.2D,xzr
0171a5f8  add x8,x8,#0xfd8
0171a5fc  mov v0.D[0x0],x8
0171a600  str q0,[x0]
0171a604  ldr x0,[sp, #0x10]
0171a608  adrp x1,0x194c000
0171a60c  add x1,x1,#0x6d0
0171a610  mov w2,#0x1
0171a614  bl 0x0124ec90
0171a618  ldr x0,[sp, #0x10]
0171a61c  mov w1,#0xffffffff
0171a620  bl 0x0124c0c0
0171a624  ldr x19,[sp, #0x10]
0171a628  orr w1,wzr,#0xfffffffb
0171a62c  mov w2,#0x6e7
0171a630  mov x0,x19
0171a634  bl 0x0124a650
0171a638  orr w1,wzr,#0xfffffffe
0171a63c  mov x0,x19
0171a640  bl 0x0124c0c0
0171a644  orr w1,wzr,#0xfffffffe
0171a648  mov x0,x19
0171a64c  bl 0x0124e920
0171a650  mov w20,w0
0171a654  adrp x1,0x576d000
0171a658  add x1,x1,#0x4fd
0171a65c  mov x0,x19
0171a660  bl 0x0124f120
0171a664  orr w1,wzr,#0xfffffffe
0171a668  mov w2,#0x1
0171a66c  mov x0,x19
0171a670  bl 0x0124cfc0
0171a674  mov x0,x19
0171a678  mov w1,w20
0171a67c  bl 0x0124e060
0171a680  orr w1,wzr,#0xfffffffd
0171a684  mov x0,x19
0171a688  bl 0x0124c4d0
0171a68c  ldr x19,[sp, #0x10]
0171a690  orr w1,wzr,#0xfffffffd
0171a694  mov w2,#0x6e7
0171a698  mov x0,x19
0171a69c  bl 0x0124a650
0171a6a0  orr w1,wzr,#0xfffffffe
0171a6a4  mov x0,x19
0171a6a8  bl 0x0124c0c0
0171a6ac  orr w1,wzr,#0xfffffffe
0171a6b0  mov x0,x19
0171a6b4  bl 0x0124e920
0171a6b8  mov w20,w0
0171a6bc  adrp x1,0x576d000
0171a6c0  add x1,x1,#0x4fd
0171a6c4  mov x0,x19
0171a6c8  bl 0x0124f120
0171a6cc  orr w1,wzr,#0xfffffffe
0171a6d0  mov w2,#0x1
0171a6d4  mov x0,x19
0171a6d8  bl 0x0124cfc0
0171a6dc  mov x0,x19
0171a6e0  mov w1,w20
0171a6e4  bl 0x0124e060
0171a6e8  orr w1,wzr,#0xfffffffd
0171a6ec  mov x0,x19
0171a6f0  bl 0x0124c4d0
0171a6f4  adrp x1,0x576d000
0171a6f8  adrp x2,0x194c000
0171a6fc  adrp x4,0x194c000
0171a700  add x1,x1,#0x50e
0171a704  add x2,x2,#0x1c8
0171a708  add x4,x4,#0x1d0
0171a70c  add x0,sp,#0x10
0171a710  mov x3,xzr
0171a714  mov x5,xzr
0171a718  bl 0x0194bfe0
0171a71c  adrp x1,0x576d000
0171a720  adrp x2,0x194c000
0171a724  adrp x4,0x194c000
0171a728  add x1,x1,#0x518
0171a72c  add x2,x2,#0x1d8
0171a730  add x4,x4,#0x1e0
0171a734  mov x3,xzr
0171a738  mov x5,xzr
0171a73c  bl 0x0194bfe0
0171a740  mov x19,x0
0171a744  ldr w8,[x19, #0x8]
0171a748  ldr x0,[x19]
0171a74c  sub w8,w8,#0x3
0171a750  str w8,[x19, #0x8]
0171a754  orr w1,wzr,#0xfffffffc
0171a758  bl 0x0124c4d0
0171a75c  ldr w8,[x19, #0x8]
0171a760  ldr x0,[x19]
0171a764  str wzr,[x19, #0x8]
0171a768  cmp w8,#0x1
0171a76c  b.lt 0x0171a778
0171a770  mvn w1,w8
0171a774  bl 0x0124c4d0
0171a778  ldr w8,[sp, #0x18]
0171a77c  cmp w8,#0x1
0171a780  b.lt 0x0171a790
0171a784  ldr x0,[sp, #0x10]
0171a788  mvn w1,w8
0171a78c  bl 0x0124c4d0
0171a790  ldr w8,[sp, #0x8]
0171a794  cmp w8,#0x1
0171a798  b.lt 0x0171a7a8
0171a79c  ldr x0,[sp]
0171a7a0  mvn w1,w8
0171a7a4  bl 0x0124c4d0
0171a7a8  ldp x29,x30,[sp, #0x30]
0171a7ac  ldp x20,x19,[sp, #0x20]
0171a7b0  add sp,sp,#0x40
0171a7b4  ret
