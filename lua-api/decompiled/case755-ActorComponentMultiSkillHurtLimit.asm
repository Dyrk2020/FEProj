// ===== case755-ActorComponentMultiSkillHurtLimit @ 0172b470 =====
// existing function case755-ActorComponentMultiSkillHurtLimit
0172b470  sub sp,sp,#0x40
0172b474  stp x20,x19,[sp, #0x20]
0172b478  stp x29,x30,[sp, #0x30]
0172b47c  add x29,sp,#0x30
0172b480  adrp x1,0x174a000
0172b484  add x1,x1,#0x87c
0172b488  mov x19,x0
0172b48c  bl 0x0124ba40
0172b490  adrp x1,0x575d000
0172b494  add x1,x1,#0xa06
0172b498  mov x0,x19
0172b49c  str x19,[sp]
0172b4a0  bl 0x01251aa0
0172b4a4  mov w8,#0x1
0172b4a8  str w8,[sp, #0x8]
0172b4ac  mov x0,sp
0172b4b0  bl 0x0174aa04
0172b4b4  adrp x1,0x5770000
0172b4b8  adrp x3,0x736d000
0172b4bc  add x1,x1,#0xce5
0172b4c0  add x3,x3,#0x101
0172b4c4  add x0,sp,#0x10
0172b4c8  mov x2,sp
0172b4cc  bl 0x0198caac
0172b4d0  ldr x0,[sp, #0x10]
0172b4d4  mov w1,#0x10
0172b4d8  bl 0x0124cba0
0172b4dc  adrp x8,0x198c000
0172b4e0  dup v0.2D,xzr
0172b4e4  add x8,x8,#0xa94
0172b4e8  mov v0.D[0x0],x8
0172b4ec  str q0,[x0]
0172b4f0  ldr x0,[sp, #0x10]
0172b4f4  adrp x1,0x198c000
0172b4f8  add x1,x1,#0xe70
0172b4fc  mov w2,#0x1
0172b500  bl 0x0124ec90
0172b504  ldr x0,[sp, #0x10]
0172b508  mov w1,#0xffffffff
0172b50c  bl 0x0124c0c0
0172b510  ldr x19,[sp, #0x10]
0172b514  orr w1,wzr,#0xfffffffb
0172b518  mov w2,#0x6e7
0172b51c  mov x0,x19
0172b520  bl 0x0124a650
0172b524  orr w1,wzr,#0xfffffffe
0172b528  mov x0,x19
0172b52c  bl 0x0124c0c0
0172b530  orr w1,wzr,#0xfffffffe
0172b534  mov x0,x19
0172b538  bl 0x0124e920
0172b53c  mov w20,w0
0172b540  adrp x1,0x5770000
0172b544  add x1,x1,#0xd07
0172b548  mov x0,x19
0172b54c  bl 0x0124f120
0172b550  orr w1,wzr,#0xfffffffe
0172b554  mov w2,#0x1
0172b558  mov x0,x19
0172b55c  bl 0x0124cfc0
0172b560  mov x0,x19
0172b564  mov w1,w20
0172b568  bl 0x0124e060
0172b56c  orr w1,wzr,#0xfffffffd
0172b570  mov x0,x19
0172b574  bl 0x0124c4d0
0172b578  ldr x19,[sp, #0x10]
0172b57c  orr w1,wzr,#0xfffffffd
0172b580  mov w2,#0x6e7
0172b584  mov x0,x19
0172b588  bl 0x0124a650
0172b58c  orr w1,wzr,#0xfffffffe
0172b590  mov x0,x19
0172b594  bl 0x0124c0c0
0172b598  orr w1,wzr,#0xfffffffe
0172b59c  mov x0,x19
0172b5a0  bl 0x0124e920
0172b5a4  mov w20,w0
0172b5a8  adrp x1,0x5770000
0172b5ac  add x1,x1,#0xd07
0172b5b0  mov x0,x19
0172b5b4  bl 0x0124f120
0172b5b8  orr w1,wzr,#0xfffffffe
0172b5bc  mov w2,#0x1
0172b5c0  mov x0,x19
0172b5c4  bl 0x0124cfc0
0172b5c8  mov x0,x19
0172b5cc  mov w1,w20
0172b5d0  bl 0x0124e060
0172b5d4  orr w1,wzr,#0xfffffffd
0172b5d8  mov x0,x19
0172b5dc  bl 0x0124c4d0
0172b5e0  ldr x0,[sp, #0x10]
0172b5e4  mov w1,#0x10
0172b5e8  bl 0x0124cba0
0172b5ec  adrp x8,0x198c000
0172b5f0  dup v0.2D,xzr
0172b5f4  add x8,x8,#0xa9c
0172b5f8  mov v0.D[0x0],x8
0172b5fc  str q0,[x0]
0172b600  ldr x0,[sp, #0x10]
0172b604  adrp x1,0x198c000
0172b608  add x1,x1,#0xf94
0172b60c  mov w2,#0x1
0172b610  bl 0x0124ec90
0172b614  ldr x0,[sp, #0x10]
0172b618  mov w1,#0xffffffff
0172b61c  bl 0x0124c0c0
0172b620  ldr x19,[sp, #0x10]
0172b624  orr w1,wzr,#0xfffffffb
0172b628  mov w2,#0x6e7
0172b62c  mov x0,x19
0172b630  bl 0x0124a650
0172b634  orr w1,wzr,#0xfffffffe
0172b638  mov x0,x19
0172b63c  bl 0x0124c0c0
0172b640  orr w1,wzr,#0xfffffffe
0172b644  mov x0,x19
0172b648  bl 0x0124e920
0172b64c  mov w20,w0
0172b650  adrp x1,0x5770000
0172b654  add x1,x1,#0xd14
0172b658  mov x0,x19
0172b65c  bl 0x0124f120
0172b660  orr w1,wzr,#0xfffffffe
0172b664  mov w2,#0x1
0172b668  mov x0,x19
0172b66c  bl 0x0124cfc0
0172b670  mov x0,x19
0172b674  mov w1,w20
0172b678  bl 0x0124e060
0172b67c  orr w1,wzr,#0xfffffffd
0172b680  mov x0,x19
0172b684  bl 0x0124c4d0
0172b688  ldr x19,[sp, #0x10]
0172b68c  orr w1,wzr,#0xfffffffd
0172b690  mov w2,#0x6e7
0172b694  mov x0,x19
0172b698  bl 0x0124a650
0172b69c  orr w1,wzr,#0xfffffffe
0172b6a0  mov x0,x19
0172b6a4  bl 0x0124c0c0
0172b6a8  orr w1,wzr,#0xfffffffe
0172b6ac  mov x0,x19
0172b6b0  bl 0x0124e920
0172b6b4  mov w20,w0
0172b6b8  adrp x1,0x5770000
0172b6bc  add x1,x1,#0xd14
0172b6c0  mov x0,x19
0172b6c4  bl 0x0124f120
0172b6c8  orr w1,wzr,#0xfffffffe
0172b6cc  mov w2,#0x1
0172b6d0  mov x0,x19
0172b6d4  bl 0x0124cfc0
0172b6d8  mov x0,x19
0172b6dc  mov w1,w20
0172b6e0  bl 0x0124e060
0172b6e4  orr w1,wzr,#0xfffffffd
0172b6e8  mov x0,x19
0172b6ec  bl 0x0124c4d0
0172b6f0  ldr x0,[sp, #0x10]
0172b6f4  mov w1,#0x10
0172b6f8  bl 0x0124cba0
0172b6fc  adrp x8,0x198c000
0172b700  dup v0.2D,xzr
0172b704  add x8,x8,#0xaa4
0172b708  mov v0.D[0x0],x8
0172b70c  str q0,[x0]
0172b710  ldr x0,[sp, #0x10]
0172b714  adrp x1,0x198d000
0172b718  add x1,x1,#0xb8
0172b71c  mov w2,#0x1
0172b720  bl 0x0124ec90
0172b724  ldr x0,[sp, #0x10]
0172b728  mov w1,#0xffffffff
0172b72c  bl 0x0124c0c0
0172b730  ldr x19,[sp, #0x10]
0172b734  orr w1,wzr,#0xfffffffb
0172b738  mov w2,#0x6e7
0172b73c  mov x0,x19
0172b740  bl 0x0124a650
0172b744  orr w1,wzr,#0xfffffffe
0172b748  mov x0,x19
0172b74c  bl 0x0124c0c0
0172b750  orr w1,wzr,#0xfffffffe
0172b754  mov x0,x19
0172b758  bl 0x0124e920
0172b75c  mov w20,w0
0172b760  adrp x1,0x5770000
0172b764  add x1,x1,#0xd1f
0172b768  mov x0,x19
0172b76c  bl 0x0124f120
0172b770  orr w1,wzr,#0xfffffffe
0172b774  mov w2,#0x1
0172b778  mov x0,x19
0172b77c  bl 0x0124cfc0
0172b780  mov x0,x19
0172b784  mov w1,w20
0172b788  bl 0x0124e060
0172b78c  orr w1,wzr,#0xfffffffd
0172b790  mov x0,x19
0172b794  bl 0x0124c4d0
0172b798  ldr x19,[sp, #0x10]
0172b79c  orr w1,wzr,#0xfffffffd
0172b7a0  mov w2,#0x6e7
0172b7a4  mov x0,x19
0172b7a8  bl 0x0124a650
0172b7ac  orr w1,wzr,#0xfffffffe
0172b7b0  mov x0,x19
0172b7b4  bl 0x0124c0c0
0172b7b8  orr w1,wzr,#0xfffffffe
0172b7bc  mov x0,x19
0172b7c0  bl 0x0124e920
0172b7c4  mov w20,w0
0172b7c8  adrp x1,0x5770000
0172b7cc  add x1,x1,#0xd1f
0172b7d0  mov x0,x19
0172b7d4  bl 0x0124f120
0172b7d8  orr w1,wzr,#0xfffffffe
0172b7dc  mov w2,#0x1
0172b7e0  mov x0,x19
0172b7e4  bl 0x0124cfc0
0172b7e8  mov x0,x19
0172b7ec  mov w1,w20
0172b7f0  bl 0x0124e060
0172b7f4  orr w1,wzr,#0xfffffffd
0172b7f8  mov x0,x19
0172b7fc  bl 0x0124c4d0
0172b800  ldr w8,[sp, #0x18]
0172b804  ldr x0,[sp, #0x10]
0172b808  sub w8,w8,#0x3
0172b80c  str w8,[sp, #0x18]
0172b810  orr w1,wzr,#0xfffffffc
0172b814  bl 0x0124c4d0
0172b818  ldr w8,[sp, #0x18]
0172b81c  ldr x0,[sp, #0x10]
0172b820  str wzr,[sp, #0x18]
0172b824  cmp w8,#0x1
0172b828  b.lt 0x0172b84c
0172b82c  mvn w1,w8
0172b830  bl 0x0124c4d0
0172b834  ldr w8,[sp, #0x18]
0172b838  cmp w8,#0x1
0172b83c  b.lt 0x0172b84c
0172b840  ldr x0,[sp, #0x10]
0172b844  mvn w1,w8
0172b848  bl 0x0124c4d0
0172b84c  ldr w8,[sp, #0x8]
0172b850  cmp w8,#0x1
0172b854  b.lt 0x0172b864
0172b858  ldr x0,[sp]
0172b85c  mvn w1,w8
0172b860  bl 0x0124c4d0
0172b864  ldp x29,x30,[sp, #0x30]
0172b868  ldp x20,x19,[sp, #0x20]
0172b86c  add sp,sp,#0x40
0172b870  ret
