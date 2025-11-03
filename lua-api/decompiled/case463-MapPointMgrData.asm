// ===== case463-MapPointMgrData @ 016ec490 =====
// existing function case463-MapPointMgrData
016ec490  sub sp,sp,#0x40
016ec494  stp x20,x19,[sp, #0x20]
016ec498  stp x29,x30,[sp, #0x30]
016ec49c  add x29,sp,#0x30
016ec4a0  adrp x1,0x174a000
016ec4a4  add x1,x1,#0x87c
016ec4a8  mov x19,x0
016ec4ac  bl 0x0124ba40
016ec4b0  adrp x1,0x575d000
016ec4b4  add x1,x1,#0xa06
016ec4b8  mov x0,x19
016ec4bc  str x19,[sp]
016ec4c0  bl 0x01251aa0
016ec4c4  mov w8,#0x1
016ec4c8  str w8,[sp, #0x8]
016ec4cc  mov x0,sp
016ec4d0  bl 0x0174aa04
016ec4d4  adrp x1,0x5766000
016ec4d8  adrp x3,0x736d000
016ec4dc  add x1,x1,#0xed3
016ec4e0  add x3,x3,#0x101
016ec4e4  add x0,sp,#0x10
016ec4e8  mov x2,sp
016ec4ec  bl 0x01874e04
016ec4f0  ldr x0,[sp, #0x10]
016ec4f4  mov w1,#0x10
016ec4f8  bl 0x0124cba0
016ec4fc  adrp x8,0x1874000
016ec500  dup v0.2D,xzr
016ec504  add x8,x8,#0xdfc
016ec508  mov v0.D[0x0],x8
016ec50c  str q0,[x0]
016ec510  ldr x0,[sp, #0x10]
016ec514  adrp x1,0x1875000
016ec518  add x1,x1,#0x1c8
016ec51c  mov w2,#0x1
016ec520  bl 0x0124ec90
016ec524  ldr x0,[sp, #0x10]
016ec528  mov w1,#0xffffffff
016ec52c  bl 0x0124c0c0
016ec530  ldr x19,[sp, #0x10]
016ec534  orr w1,wzr,#0xfffffffb
016ec538  mov w2,#0x6e7
016ec53c  mov x0,x19
016ec540  bl 0x0124a650
016ec544  orr w1,wzr,#0xfffffffe
016ec548  mov x0,x19
016ec54c  bl 0x0124c0c0
016ec550  orr w1,wzr,#0xfffffffe
016ec554  mov x0,x19
016ec558  bl 0x0124e920
016ec55c  mov w20,w0
016ec560  adrp x1,0x5766000
016ec564  add x1,x1,#0xee3
016ec568  mov x0,x19
016ec56c  bl 0x0124f120
016ec570  orr w1,wzr,#0xfffffffe
016ec574  mov w2,#0x1
016ec578  mov x0,x19
016ec57c  bl 0x0124cfc0
016ec580  mov x0,x19
016ec584  mov w1,w20
016ec588  bl 0x0124e060
016ec58c  orr w1,wzr,#0xfffffffd
016ec590  mov x0,x19
016ec594  bl 0x0124c4d0
016ec598  ldr x19,[sp, #0x10]
016ec59c  orr w1,wzr,#0xfffffffd
016ec5a0  mov w2,#0x6e7
016ec5a4  mov x0,x19
016ec5a8  bl 0x0124a650
016ec5ac  orr w1,wzr,#0xfffffffe
016ec5b0  mov x0,x19
016ec5b4  bl 0x0124c0c0
016ec5b8  orr w1,wzr,#0xfffffffe
016ec5bc  mov x0,x19
016ec5c0  bl 0x0124e920
016ec5c4  mov w20,w0
016ec5c8  adrp x1,0x5766000
016ec5cc  add x1,x1,#0xee3
016ec5d0  mov x0,x19
016ec5d4  bl 0x0124f120
016ec5d8  orr w1,wzr,#0xfffffffe
016ec5dc  mov w2,#0x1
016ec5e0  mov x0,x19
016ec5e4  bl 0x0124cfc0
016ec5e8  mov x0,x19
016ec5ec  mov w1,w20
016ec5f0  bl 0x0124e060
016ec5f4  orr w1,wzr,#0xfffffffd
016ec5f8  mov x0,x19
016ec5fc  bl 0x0124c4d0
016ec600  ldr w8,[sp, #0x18]
016ec604  ldr x0,[sp, #0x10]
016ec608  sub w8,w8,#0x3
016ec60c  str w8,[sp, #0x18]
016ec610  orr w1,wzr,#0xfffffffc
016ec614  bl 0x0124c4d0
016ec618  ldr w8,[sp, #0x18]
016ec61c  ldr x0,[sp, #0x10]
016ec620  str wzr,[sp, #0x18]
016ec624  cmp w8,#0x1
016ec628  b.lt 0x016ec64c
016ec62c  mvn w1,w8
016ec630  bl 0x0124c4d0
016ec634  ldr w8,[sp, #0x18]
016ec638  cmp w8,#0x1
016ec63c  b.lt 0x016ec64c
016ec640  ldr x0,[sp, #0x10]
016ec644  mvn w1,w8
016ec648  bl 0x0124c4d0
016ec64c  ldr w8,[sp, #0x8]
016ec650  cmp w8,#0x1
016ec654  b.lt 0x016ec664
016ec658  ldr x0,[sp]
016ec65c  mvn w1,w8
016ec660  bl 0x0124c4d0
016ec664  ldp x29,x30,[sp, #0x30]
016ec668  ldp x20,x19,[sp, #0x20]
016ec66c  add sp,sp,#0x40
016ec670  ret
