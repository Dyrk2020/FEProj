// ===== case114-WeightedProximityTemplateResObject @ 0169f4e0 =====
// existing function case114-WeightedProximityTemplateResObject
0169f4e0  sub sp,sp,#0x40
0169f4e4  stp x20,x19,[sp, #0x20]
0169f4e8  stp x29,x30,[sp, #0x30]
0169f4ec  add x29,sp,#0x30
0169f4f0  adrp x1,0x174a000
0169f4f4  add x1,x1,#0x87c
0169f4f8  mov x19,x0
0169f4fc  bl 0x0124ba40
0169f500  adrp x1,0x575d000
0169f504  add x1,x1,#0xa06
0169f508  mov x0,x19
0169f50c  str x19,[sp]
0169f510  bl 0x01251aa0
0169f514  mov w8,#0x1
0169f518  str w8,[sp, #0x8]
0169f51c  mov x0,sp
0169f520  bl 0x0174aa04
0169f524  adrp x1,0x575f000
0169f528  adrp x3,0x736d000
0169f52c  add x1,x1,#0x928
0169f530  add x3,x3,#0x101
0169f534  add x0,sp,#0x10
0169f538  mov x2,sp
0169f53c  bl 0x0178e1c4
0169f540  ldr x0,[sp, #0x10]
0169f544  mov w1,#0x10
0169f548  bl 0x0124cba0
0169f54c  adrp x8,0x178e000
0169f550  dup v0.2D,xzr
0169f554  add x8,x8,#0x1bc
0169f558  mov v0.D[0x0],x8
0169f55c  str q0,[x0]
0169f560  ldr x0,[sp, #0x10]
0169f564  adrp x1,0x178e000
0169f568  add x1,x1,#0x588
0169f56c  mov w2,#0x1
0169f570  bl 0x0124ec90
0169f574  ldr x0,[sp, #0x10]
0169f578  mov w1,#0xffffffff
0169f57c  bl 0x0124c0c0
0169f580  ldr x19,[sp, #0x10]
0169f584  orr w1,wzr,#0xfffffffb
0169f588  mov w2,#0x6e7
0169f58c  mov x0,x19
0169f590  bl 0x0124a650
0169f594  orr w1,wzr,#0xfffffffe
0169f598  mov x0,x19
0169f59c  bl 0x0124c0c0
0169f5a0  orr w1,wzr,#0xfffffffe
0169f5a4  mov x0,x19
0169f5a8  bl 0x0124e920
0169f5ac  mov w20,w0
0169f5b0  adrp x1,0x575f000
0169f5b4  add x1,x1,#0x94b
0169f5b8  mov x0,x19
0169f5bc  bl 0x0124f120
0169f5c0  orr w1,wzr,#0xfffffffe
0169f5c4  mov w2,#0x1
0169f5c8  mov x0,x19
0169f5cc  bl 0x0124cfc0
0169f5d0  mov x0,x19
0169f5d4  mov w1,w20
0169f5d8  bl 0x0124e060
0169f5dc  orr w1,wzr,#0xfffffffd
0169f5e0  mov x0,x19
0169f5e4  bl 0x0124c4d0
0169f5e8  ldr x19,[sp, #0x10]
0169f5ec  orr w1,wzr,#0xfffffffd
0169f5f0  mov w2,#0x6e7
0169f5f4  mov x0,x19
0169f5f8  bl 0x0124a650
0169f5fc  orr w1,wzr,#0xfffffffe
0169f600  mov x0,x19
0169f604  bl 0x0124c0c0
0169f608  orr w1,wzr,#0xfffffffe
0169f60c  mov x0,x19
0169f610  bl 0x0124e920
0169f614  mov w20,w0
0169f618  adrp x1,0x575f000
0169f61c  add x1,x1,#0x94b
0169f620  mov x0,x19
0169f624  bl 0x0124f120
0169f628  orr w1,wzr,#0xfffffffe
0169f62c  mov w2,#0x1
0169f630  mov x0,x19
0169f634  bl 0x0124cfc0
0169f638  mov x0,x19
0169f63c  mov w1,w20
0169f640  bl 0x0124e060
0169f644  orr w1,wzr,#0xfffffffd
0169f648  mov x0,x19
0169f64c  bl 0x0124c4d0
0169f650  ldr w8,[sp, #0x18]
0169f654  ldr x0,[sp, #0x10]
0169f658  sub w8,w8,#0x3
0169f65c  str w8,[sp, #0x18]
0169f660  orr w1,wzr,#0xfffffffc
0169f664  bl 0x0124c4d0
0169f668  ldr w8,[sp, #0x18]
0169f66c  ldr x0,[sp, #0x10]
0169f670  str wzr,[sp, #0x18]
0169f674  cmp w8,#0x1
0169f678  b.lt 0x0169f69c
0169f67c  mvn w1,w8
0169f680  bl 0x0124c4d0
0169f684  ldr w8,[sp, #0x18]
0169f688  cmp w8,#0x1
0169f68c  b.lt 0x0169f69c
0169f690  ldr x0,[sp, #0x10]
0169f694  mvn w1,w8
0169f698  bl 0x0124c4d0
0169f69c  ldr w8,[sp, #0x8]
0169f6a0  cmp w8,#0x1
0169f6a4  b.lt 0x0169f6b4
0169f6a8  ldr x0,[sp]
0169f6ac  mvn w1,w8
0169f6b0  bl 0x0124c4d0
0169f6b4  ldp x29,x30,[sp, #0x30]
0169f6b8  ldp x20,x19,[sp, #0x20]
0169f6bc  add sp,sp,#0x40
0169f6c0  ret
