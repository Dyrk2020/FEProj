// ===== case296-AISkillLearnSeq @ 016be588 =====
// existing function case296-AISkillLearnSeq
016be588  sub sp,sp,#0x40
016be58c  str x19,[sp, #0x20]
016be590  stp x29,x30,[sp, #0x30]
016be594  add x29,sp,#0x30
016be598  adrp x1,0x174a000
016be59c  add x1,x1,#0x87c
016be5a0  mov x19,x0
016be5a4  bl 0x0124ba40
016be5a8  adrp x1,0x575d000
016be5ac  add x1,x1,#0xa06
016be5b0  mov x0,x19
016be5b4  str x19,[sp]
016be5b8  bl 0x01251aa0
016be5bc  mov w8,#0x1
016be5c0  str w8,[sp, #0x8]
016be5c4  mov x0,sp
016be5c8  bl 0x0174aa04
016be5cc  adrp x1,0x5762000
016be5d0  adrp x3,0x736d000
016be5d4  add x1,x1,#0x61b
016be5d8  add x3,x3,#0x101
016be5dc  add x0,sp,#0x10
016be5e0  mov x2,sp
016be5e4  bl 0x017f37f4
016be5e8  adrp x1,0x575e000
016be5ec  adrp x2,0x17f3000
016be5f0  adrp x4,0x17f3000
016be5f4  add x1,x1,#0x517
016be5f8  add x2,x2,#0x7e4
016be5fc  add x4,x4,#0x7ec
016be600  add x0,sp,#0x10
016be604  mov x3,xzr
016be608  mov x5,xzr
016be60c  bl 0x017f35fc
016be610  mov x19,x0
016be614  ldr w8,[x19, #0x8]
016be618  ldr x0,[x19]
016be61c  sub w8,w8,#0x3
016be620  str w8,[x19, #0x8]
016be624  orr w1,wzr,#0xfffffffc
016be628  bl 0x0124c4d0
016be62c  ldr w8,[x19, #0x8]
016be630  ldr x0,[x19]
016be634  str wzr,[x19, #0x8]
016be638  cmp w8,#0x1
016be63c  b.lt 0x016be648
016be640  mvn w1,w8
016be644  bl 0x0124c4d0
016be648  ldr w8,[sp, #0x18]
016be64c  cmp w8,#0x1
016be650  b.lt 0x016be660
016be654  ldr x0,[sp, #0x10]
016be658  mvn w1,w8
016be65c  bl 0x0124c4d0
016be660  ldr w8,[sp, #0x8]
016be664  cmp w8,#0x1
016be668  b.lt 0x016be678
016be66c  ldr x0,[sp]
016be670  mvn w1,w8
016be674  bl 0x0124c4d0
016be678  ldp x29,x30,[sp, #0x30]
016be67c  ldr x19,[sp, #0x20]
016be680  add sp,sp,#0x40
016be684  ret
