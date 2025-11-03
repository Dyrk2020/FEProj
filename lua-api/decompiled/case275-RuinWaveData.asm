// ===== case275-RuinWaveData @ 016ba4d8 =====
// existing function case275-RuinWaveData
016ba4d8  sub sp,sp,#0x40
016ba4dc  str x19,[sp, #0x20]
016ba4e0  stp x29,x30,[sp, #0x30]
016ba4e4  add x29,sp,#0x30
016ba4e8  adrp x1,0x174a000
016ba4ec  add x1,x1,#0x87c
016ba4f0  mov x19,x0
016ba4f4  bl 0x0124ba40
016ba4f8  adrp x1,0x575d000
016ba4fc  add x1,x1,#0xa06
016ba500  mov x0,x19
016ba504  str x19,[sp]
016ba508  bl 0x01251aa0
016ba50c  mov w8,#0x1
016ba510  str w8,[sp, #0x8]
016ba514  mov x0,sp
016ba518  bl 0x0174aa04
016ba51c  adrp x1,0x5761000
016ba520  adrp x3,0x736d000
016ba524  add x1,x1,#0x8fc
016ba528  add x3,x3,#0x101
016ba52c  add x0,sp,#0x10
016ba530  mov x2,sp
016ba534  bl 0x017e5aa4
016ba538  adrp x1,0x5761000
016ba53c  adrp x2,0x17e5000
016ba540  adrp x4,0x17e5000
016ba544  add x1,x1,#0x861
016ba548  add x2,x2,#0x87c
016ba54c  add x4,x4,#0x884
016ba550  add x0,sp,#0x10
016ba554  mov x3,xzr
016ba558  mov x5,xzr
016ba55c  bl 0x017e5694
016ba560  adrp x1,0x57bc000
016ba564  adrp x2,0x17e5000
016ba568  adrp x4,0x17e5000
016ba56c  add x1,x1,#0xba
016ba570  add x2,x2,#0xa74
016ba574  add x4,x4,#0xa7c
016ba578  mov x3,xzr
016ba57c  mov x5,xzr
016ba580  bl 0x017e588c
016ba584  adrp x1,0x5761000
016ba588  adrp x2,0x17e5000
016ba58c  adrp x4,0x17e5000
016ba590  add x1,x1,#0x909
016ba594  add x2,x2,#0xa84
016ba598  add x4,x4,#0xa8c
016ba59c  mov x3,xzr
016ba5a0  mov x5,xzr
016ba5a4  bl 0x017e588c
016ba5a8  adrp x1,0x5761000
016ba5ac  adrp x2,0x17e5000
016ba5b0  adrp x4,0x17e5000
016ba5b4  add x1,x1,#0x868
016ba5b8  add x2,x2,#0xa94
016ba5bc  add x4,x4,#0xa9c
016ba5c0  mov x3,xzr
016ba5c4  mov x5,xzr
016ba5c8  bl 0x017e588c
016ba5cc  mov x19,x0
016ba5d0  ldr w8,[x19, #0x8]
016ba5d4  ldr x0,[x19]
016ba5d8  sub w8,w8,#0x3
016ba5dc  str w8,[x19, #0x8]
016ba5e0  orr w1,wzr,#0xfffffffc
016ba5e4  bl 0x0124c4d0
016ba5e8  ldr w8,[x19, #0x8]
016ba5ec  ldr x0,[x19]
016ba5f0  str wzr,[x19, #0x8]
016ba5f4  cmp w8,#0x1
016ba5f8  b.lt 0x016ba604
016ba5fc  mvn w1,w8
016ba600  bl 0x0124c4d0
016ba604  ldr w8,[sp, #0x18]
016ba608  cmp w8,#0x1
016ba60c  b.lt 0x016ba61c
016ba610  ldr x0,[sp, #0x10]
016ba614  mvn w1,w8
016ba618  bl 0x0124c4d0
016ba61c  ldr w8,[sp, #0x8]
016ba620  cmp w8,#0x1
016ba624  b.lt 0x016ba634
016ba628  ldr x0,[sp]
016ba62c  mvn w1,w8
016ba630  bl 0x0124c4d0
016ba634  ldp x29,x30,[sp, #0x30]
016ba638  ldr x19,[sp, #0x20]
016ba63c  add sp,sp,#0x40
016ba640  ret
