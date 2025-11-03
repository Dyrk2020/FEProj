// ===== case304-USBSkill @ 016bf578 =====
// existing function case304-USBSkill
016bf578  sub sp,sp,#0x40
016bf57c  str x19,[sp, #0x20]
016bf580  stp x29,x30,[sp, #0x30]
016bf584  add x29,sp,#0x30
016bf588  adrp x1,0x174a000
016bf58c  add x1,x1,#0x87c
016bf590  mov x19,x0
016bf594  bl 0x0124ba40
016bf598  adrp x1,0x575d000
016bf59c  add x1,x1,#0xa06
016bf5a0  mov x0,x19
016bf5a4  str x19,[sp]
016bf5a8  bl 0x01251aa0
016bf5ac  mov w8,#0x1
016bf5b0  str w8,[sp, #0x8]
016bf5b4  mov x0,sp
016bf5b8  bl 0x0174aa04
016bf5bc  adrp x1,0x5772000
016bf5c0  adrp x3,0x736d000
016bf5c4  add x1,x1,#0xebf
016bf5c8  add x3,x3,#0x101
016bf5cc  add x0,sp,#0x10
016bf5d0  mov x2,sp
016bf5d4  bl 0x017f77fc
016bf5d8  adrp x1,0x5767000
016bf5dc  adrp x2,0x17f7000
016bf5e0  adrp x4,0x17f7000
016bf5e4  add x1,x1,#0x89b
016bf5e8  add x2,x2,#0x7bc
016bf5ec  add x4,x4,#0x7c4
016bf5f0  add x0,sp,#0x10
016bf5f4  mov x3,xzr
016bf5f8  mov x5,xzr
016bf5fc  bl 0x017f75d4
016bf600  adrp x1,0x5769000
016bf604  adrp x2,0x17f7000
016bf608  adrp x4,0x17f7000
016bf60c  add x1,x1,#0x27f
016bf610  add x2,x2,#0x7cc
016bf614  add x4,x4,#0x7d4
016bf618  mov x3,xzr
016bf61c  mov x5,xzr
016bf620  bl 0x017f75d4
016bf624  adrp x1,0x576d000
016bf628  adrp x2,0x17f7000
016bf62c  adrp x4,0x17f7000
016bf630  add x1,x1,#0x1b5
016bf634  add x2,x2,#0x7dc
016bf638  add x4,x4,#0x7e4
016bf63c  mov x3,xzr
016bf640  mov x5,xzr
016bf644  bl 0x017f75d4
016bf648  adrp x1,0x5762000
016bf64c  adrp x2,0x17f7000
016bf650  adrp x4,0x17f7000
016bf654  add x1,x1,#0x76b
016bf658  add x2,x2,#0x7ec
016bf65c  add x4,x4,#0x7f4
016bf660  mov x3,xzr
016bf664  mov x5,xzr
016bf668  bl 0x017f75d4
016bf66c  mov x19,x0
016bf670  ldr w8,[x19, #0x8]
016bf674  ldr x0,[x19]
016bf678  sub w8,w8,#0x3
016bf67c  str w8,[x19, #0x8]
016bf680  orr w1,wzr,#0xfffffffc
016bf684  bl 0x0124c4d0
016bf688  ldr w8,[x19, #0x8]
016bf68c  ldr x0,[x19]
016bf690  str wzr,[x19, #0x8]
016bf694  cmp w8,#0x1
016bf698  b.lt 0x016bf6a4
016bf69c  mvn w1,w8
016bf6a0  bl 0x0124c4d0
016bf6a4  ldr w8,[sp, #0x18]
016bf6a8  cmp w8,#0x1
016bf6ac  b.lt 0x016bf6bc
016bf6b0  ldr x0,[sp, #0x10]
016bf6b4  mvn w1,w8
016bf6b8  bl 0x0124c4d0
016bf6bc  ldr w8,[sp, #0x8]
016bf6c0  cmp w8,#0x1
016bf6c4  b.lt 0x016bf6d4
016bf6c8  ldr x0,[sp]
016bf6cc  mvn w1,w8
016bf6d0  bl 0x0124c4d0
016bf6d4  ldp x29,x30,[sp, #0x30]
016bf6d8  ldr x19,[sp, #0x20]
016bf6dc  add sp,sp,#0x40
016bf6e0  ret
