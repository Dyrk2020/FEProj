// ===== case613-MapAnchorFlowComponent @ 0170a4dc =====
// existing function case613-MapAnchorFlowComponent
0170a4dc  sub sp,sp,#0x40
0170a4e0  stp x20,x19,[sp, #0x20]
0170a4e4  stp x29,x30,[sp, #0x30]
0170a4e8  add x29,sp,#0x30
0170a4ec  adrp x1,0x174a000
0170a4f0  add x1,x1,#0x87c
0170a4f4  mov x19,x0
0170a4f8  bl 0x0124ba40
0170a4fc  adrp x1,0x575d000
0170a500  add x1,x1,#0xa06
0170a504  mov x0,x19
0170a508  str x19,[sp]
0170a50c  bl 0x01251aa0
0170a510  mov w8,#0x1
0170a514  str w8,[sp, #0x8]
0170a518  mov x0,sp
0170a51c  bl 0x0174aa04
0170a520  adrp x1,0x576a000
0170a524  adrp x3,0x736d000
0170a528  add x1,x1,#0x53b
0170a52c  add x3,x3,#0x101
0170a530  add x0,sp,#0x10
0170a534  mov x2,sp
0170a538  bl 0x018fb008
0170a53c  ldr x0,[sp, #0x10]
0170a540  mov w1,#0x10
0170a544  bl 0x0124cba0
0170a548  adrp x8,0x18fa000
0170a54c  dup v0.2D,xzr
0170a550  add x8,x8,#0xff8
0170a554  mov v0.D[0x0],x8
0170a558  str q0,[x0]
0170a55c  ldr x0,[sp, #0x10]
0170a560  adrp x1,0x18fb000
0170a564  add x1,x1,#0x3cc
0170a568  mov w2,#0x1
0170a56c  bl 0x0124ec90
0170a570  ldr x0,[sp, #0x10]
0170a574  mov w1,#0xffffffff
0170a578  bl 0x0124c0c0
0170a57c  ldr x19,[sp, #0x10]
0170a580  orr w1,wzr,#0xfffffffb
0170a584  mov w2,#0x6e7
0170a588  mov x0,x19
0170a58c  bl 0x0124a650
0170a590  orr w1,wzr,#0xfffffffe
0170a594  mov x0,x19
0170a598  bl 0x0124c0c0
0170a59c  orr w1,wzr,#0xfffffffe
0170a5a0  mov x0,x19
0170a5a4  bl 0x0124e920
0170a5a8  mov w20,w0
0170a5ac  adrp x1,0x576a000
0170a5b0  add x1,x1,#0x552
0170a5b4  mov x0,x19
0170a5b8  bl 0x0124f120
0170a5bc  orr w1,wzr,#0xfffffffe
0170a5c0  mov w2,#0x1
0170a5c4  mov x0,x19
0170a5c8  bl 0x0124cfc0
0170a5cc  mov x0,x19
0170a5d0  mov w1,w20
0170a5d4  bl 0x0124e060
0170a5d8  orr w1,wzr,#0xfffffffd
0170a5dc  mov x0,x19
0170a5e0  bl 0x0124c4d0
0170a5e4  ldr x19,[sp, #0x10]
0170a5e8  orr w1,wzr,#0xfffffffd
0170a5ec  mov w2,#0x6e7
0170a5f0  mov x0,x19
0170a5f4  bl 0x0124a650
0170a5f8  orr w1,wzr,#0xfffffffe
0170a5fc  mov x0,x19
0170a600  bl 0x0124c0c0
0170a604  orr w1,wzr,#0xfffffffe
0170a608  mov x0,x19
0170a60c  bl 0x0124e920
0170a610  mov w20,w0
0170a614  adrp x1,0x576a000
0170a618  add x1,x1,#0x552
0170a61c  mov x0,x19
0170a620  bl 0x0124f120
0170a624  orr w1,wzr,#0xfffffffe
0170a628  mov w2,#0x1
0170a62c  mov x0,x19
0170a630  bl 0x0124cfc0
0170a634  mov x0,x19
0170a638  mov w1,w20
0170a63c  bl 0x0124e060
0170a640  orr w1,wzr,#0xfffffffd
0170a644  mov x0,x19
0170a648  bl 0x0124c4d0
0170a64c  ldr x0,[sp, #0x10]
0170a650  mov w1,#0x10
0170a654  bl 0x0124cba0
0170a658  adrp x8,0x18fb000
0170a65c  dup v0.2D,xzr
0170a660  add x8,x8,#0x0
0170a664  mov v0.D[0x0],x8
0170a668  str q0,[x0]
0170a66c  ldr x0,[sp, #0x10]
0170a670  adrp x1,0x18fb000
0170a674  add x1,x1,#0x4f0
0170a678  mov w2,#0x1
0170a67c  bl 0x0124ec90
0170a680  ldr x0,[sp, #0x10]
0170a684  mov w1,#0xffffffff
0170a688  bl 0x0124c0c0
0170a68c  ldr x19,[sp, #0x10]
0170a690  orr w1,wzr,#0xfffffffb
0170a694  mov w2,#0x6e7
0170a698  mov x0,x19
0170a69c  bl 0x0124a650
0170a6a0  orr w1,wzr,#0xfffffffe
0170a6a4  mov x0,x19
0170a6a8  bl 0x0124c0c0
0170a6ac  orr w1,wzr,#0xfffffffe
0170a6b0  mov x0,x19
0170a6b4  bl 0x0124e920
0170a6b8  mov w20,w0
0170a6bc  adrp x1,0x576a000
0170a6c0  add x1,x1,#0x55d
0170a6c4  mov x0,x19
0170a6c8  bl 0x0124f120
0170a6cc  orr w1,wzr,#0xfffffffe
0170a6d0  mov w2,#0x1
0170a6d4  mov x0,x19
0170a6d8  bl 0x0124cfc0
0170a6dc  mov x0,x19
0170a6e0  mov w1,w20
0170a6e4  bl 0x0124e060
0170a6e8  orr w1,wzr,#0xfffffffd
0170a6ec  mov x0,x19
0170a6f0  bl 0x0124c4d0
0170a6f4  ldr x19,[sp, #0x10]
0170a6f8  orr w1,wzr,#0xfffffffd
0170a6fc  mov w2,#0x6e7
0170a700  mov x0,x19
0170a704  bl 0x0124a650
0170a708  orr w1,wzr,#0xfffffffe
0170a70c  mov x0,x19
0170a710  bl 0x0124c0c0
0170a714  orr w1,wzr,#0xfffffffe
0170a718  mov x0,x19
0170a71c  bl 0x0124e920
0170a720  mov w20,w0
0170a724  adrp x1,0x576a000
0170a728  add x1,x1,#0x55d
0170a72c  mov x0,x19
0170a730  bl 0x0124f120
0170a734  orr w1,wzr,#0xfffffffe
0170a738  mov w2,#0x1
0170a73c  mov x0,x19
0170a740  bl 0x0124cfc0
0170a744  mov x0,x19
0170a748  mov w1,w20
0170a74c  bl 0x0124e060
0170a750  orr w1,wzr,#0xfffffffd
0170a754  mov x0,x19
0170a758  bl 0x0124c4d0
0170a75c  ldr w8,[sp, #0x18]
0170a760  ldr x0,[sp, #0x10]
0170a764  sub w8,w8,#0x3
0170a768  str w8,[sp, #0x18]
0170a76c  orr w1,wzr,#0xfffffffc
0170a770  bl 0x0124c4d0
0170a774  ldr w8,[sp, #0x18]
0170a778  ldr x0,[sp, #0x10]
0170a77c  str wzr,[sp, #0x18]
0170a780  cmp w8,#0x1
0170a784  b.lt 0x0170a7a8
0170a788  mvn w1,w8
0170a78c  bl 0x0124c4d0
0170a790  ldr w8,[sp, #0x18]
0170a794  cmp w8,#0x1
0170a798  b.lt 0x0170a7a8
0170a79c  ldr x0,[sp, #0x10]
0170a7a0  mvn w1,w8
0170a7a4  bl 0x0124c4d0
0170a7a8  ldr w8,[sp, #0x8]
0170a7ac  cmp w8,#0x1
0170a7b0  b.lt 0x0170a7c0
0170a7b4  ldr x0,[sp]
0170a7b8  mvn w1,w8
0170a7bc  bl 0x0124c4d0
0170a7c0  ldp x29,x30,[sp, #0x30]
0170a7c4  ldp x20,x19,[sp, #0x20]
0170a7c8  add sp,sp,#0x40
0170a7cc  ret
