// ===== case85-ChampionCareerTagItem @ 0169a518 =====
// existing function case85-ChampionCareerTagItem
0169a518  sub sp,sp,#0x40
0169a51c  stp x20,x19,[sp, #0x20]
0169a520  stp x29,x30,[sp, #0x30]
0169a524  add x29,sp,#0x30
0169a528  adrp x1,0x174a000
0169a52c  add x1,x1,#0x87c
0169a530  mov x19,x0
0169a534  bl 0x0124ba40
0169a538  adrp x1,0x575d000
0169a53c  add x1,x1,#0xa06
0169a540  mov x0,x19
0169a544  str x19,[sp]
0169a548  bl 0x01251aa0
0169a54c  mov w8,#0x1
0169a550  str w8,[sp, #0x8]
0169a554  mov x0,sp
0169a558  bl 0x0174aa04
0169a55c  adrp x1,0x575e000
0169a560  adrp x3,0x736d000
0169a564  add x1,x1,#0xffc
0169a568  add x3,x3,#0x101
0169a56c  add x0,sp,#0x10
0169a570  mov x2,sp
0169a574  bl 0x01780198
0169a578  ldr x0,[sp, #0x10]
0169a57c  mov w1,#0x10
0169a580  bl 0x0124cba0
0169a584  adrp x8,0x177f000
0169a588  dup v0.2D,xzr
0169a58c  add x8,x8,#0xf88
0169a590  mov v0.D[0x0],x8
0169a594  str q0,[x0]
0169a598  ldr x0,[sp, #0x10]
0169a59c  adrp x1,0x1780000
0169a5a0  add x1,x1,#0x55c
0169a5a4  mov w2,#0x1
0169a5a8  bl 0x0124ec90
0169a5ac  ldr x0,[sp, #0x10]
0169a5b0  mov w1,#0xffffffff
0169a5b4  bl 0x0124c0c0
0169a5b8  ldr x19,[sp, #0x10]
0169a5bc  orr w1,wzr,#0xfffffffb
0169a5c0  mov w2,#0x6e7
0169a5c4  mov x0,x19
0169a5c8  bl 0x0124a650
0169a5cc  orr w1,wzr,#0xfffffffe
0169a5d0  mov x0,x19
0169a5d4  bl 0x0124c0c0
0169a5d8  orr w1,wzr,#0xfffffffe
0169a5dc  mov x0,x19
0169a5e0  bl 0x0124e920
0169a5e4  mov w20,w0
0169a5e8  adrp x1,0x575e000
0169a5ec  add x1,x1,#0xfb2
0169a5f0  mov x0,x19
0169a5f4  bl 0x0124f120
0169a5f8  orr w1,wzr,#0xfffffffe
0169a5fc  mov w2,#0x1
0169a600  mov x0,x19
0169a604  bl 0x0124cfc0
0169a608  mov x0,x19
0169a60c  mov w1,w20
0169a610  bl 0x0124e060
0169a614  orr w1,wzr,#0xfffffffd
0169a618  mov x0,x19
0169a61c  bl 0x0124c4d0
0169a620  ldr x19,[sp, #0x10]
0169a624  orr w1,wzr,#0xfffffffd
0169a628  mov w2,#0x6e7
0169a62c  mov x0,x19
0169a630  bl 0x0124a650
0169a634  orr w1,wzr,#0xfffffffe
0169a638  mov x0,x19
0169a63c  bl 0x0124c0c0
0169a640  orr w1,wzr,#0xfffffffe
0169a644  mov x0,x19
0169a648  bl 0x0124e920
0169a64c  mov w20,w0
0169a650  adrp x1,0x575e000
0169a654  add x1,x1,#0xfb2
0169a658  mov x0,x19
0169a65c  bl 0x0124f120
0169a660  orr w1,wzr,#0xfffffffe
0169a664  mov w2,#0x1
0169a668  mov x0,x19
0169a66c  bl 0x0124cfc0
0169a670  mov x0,x19
0169a674  mov w1,w20
0169a678  bl 0x0124e060
0169a67c  orr w1,wzr,#0xfffffffd
0169a680  mov x0,x19
0169a684  bl 0x0124c4d0
0169a688  adrp x1,0x575e000
0169a68c  adrp x2,0x1780000
0169a690  adrp x4,0x1780000
0169a694  add x1,x1,#0xfc0
0169a698  add x2,x2,#0x178
0169a69c  add x4,x4,#0x180
0169a6a0  add x0,sp,#0x10
0169a6a4  mov x3,xzr
0169a6a8  mov x5,xzr
0169a6ac  bl 0x0177ff90
0169a6b0  adrp x1,0x575e000
0169a6b4  adrp x2,0x1780000
0169a6b8  adrp x4,0x1780000
0169a6bc  add x1,x1,#0xfcc
0169a6c0  add x2,x2,#0x188
0169a6c4  add x4,x4,#0x190
0169a6c8  mov x3,xzr
0169a6cc  mov x5,xzr
0169a6d0  bl 0x0177ff90
0169a6d4  mov x19,x0
0169a6d8  ldr w8,[x19, #0x8]
0169a6dc  ldr x0,[x19]
0169a6e0  sub w8,w8,#0x3
0169a6e4  str w8,[x19, #0x8]
0169a6e8  orr w1,wzr,#0xfffffffc
0169a6ec  bl 0x0124c4d0
0169a6f0  ldr w8,[x19, #0x8]
0169a6f4  ldr x0,[x19]
0169a6f8  str wzr,[x19, #0x8]
0169a6fc  cmp w8,#0x1
0169a700  b.lt 0x0169a70c
0169a704  mvn w1,w8
0169a708  bl 0x0124c4d0
0169a70c  ldr w8,[sp, #0x18]
0169a710  cmp w8,#0x1
0169a714  b.lt 0x0169a724
0169a718  ldr x0,[sp, #0x10]
0169a71c  mvn w1,w8
0169a720  bl 0x0124c4d0
0169a724  ldr w8,[sp, #0x8]
0169a728  cmp w8,#0x1
0169a72c  b.lt 0x0169a73c
0169a730  ldr x0,[sp]
0169a734  mvn w1,w8
0169a738  bl 0x0124c4d0
0169a73c  ldp x29,x30,[sp, #0x30]
0169a740  ldp x20,x19,[sp, #0x20]
0169a744  add sp,sp,#0x40
0169a748  ret
