// ===== case555-SkillConsumeMgr @ 016fd590 =====
// existing function case555-SkillConsumeMgr
016fd590  sub sp,sp,#0x40
016fd594  stp x20,x19,[sp, #0x20]
016fd598  stp x29,x30,[sp, #0x30]
016fd59c  add x29,sp,#0x30
016fd5a0  adrp x1,0x174a000
016fd5a4  add x1,x1,#0x87c
016fd5a8  mov x19,x0
016fd5ac  bl 0x0124ba40
016fd5b0  adrp x1,0x575d000
016fd5b4  add x1,x1,#0xa06
016fd5b8  mov x0,x19
016fd5bc  str x19,[sp]
016fd5c0  bl 0x01251aa0
016fd5c4  mov w8,#0x1
016fd5c8  str w8,[sp, #0x8]
016fd5cc  mov x0,sp
016fd5d0  bl 0x0174aa04
016fd5d4  adrp x1,0x5769000
016fd5d8  adrp x3,0x736d000
016fd5dc  add x1,x1,#0x3db
016fd5e0  add x3,x3,#0x101
016fd5e4  add x0,sp,#0x10
016fd5e8  mov x2,sp
016fd5ec  bl 0x018c6d88
016fd5f0  ldr x0,[sp, #0x10]
016fd5f4  mov w1,#0x10
016fd5f8  bl 0x0124cba0
016fd5fc  adrp x8,0x18c6000
016fd600  dup v0.2D,xzr
016fd604  add x8,x8,#0x980
016fd608  mov v0.D[0x0],x8
016fd60c  str q0,[x0]
016fd610  ldr x0,[sp, #0x10]
016fd614  adrp x1,0x18c7000
016fd618  add x1,x1,#0x14c
016fd61c  mov w2,#0x1
016fd620  bl 0x0124ec90
016fd624  ldr x0,[sp, #0x10]
016fd628  mov w1,#0xffffffff
016fd62c  bl 0x0124c0c0
016fd630  ldr x19,[sp, #0x10]
016fd634  orr w1,wzr,#0xfffffffb
016fd638  mov w2,#0x6e7
016fd63c  mov x0,x19
016fd640  bl 0x0124a650
016fd644  orr w1,wzr,#0xfffffffe
016fd648  mov x0,x19
016fd64c  bl 0x0124c0c0
016fd650  orr w1,wzr,#0xfffffffe
016fd654  mov x0,x19
016fd658  bl 0x0124e920
016fd65c  mov w20,w0
016fd660  adrp x1,0x575b000
016fd664  add x1,x1,#0x5de
016fd668  mov x0,x19
016fd66c  bl 0x0124f120
016fd670  orr w1,wzr,#0xfffffffe
016fd674  mov w2,#0x1
016fd678  mov x0,x19
016fd67c  bl 0x0124cfc0
016fd680  mov x0,x19
016fd684  mov w1,w20
016fd688  bl 0x0124e060
016fd68c  orr w1,wzr,#0xfffffffd
016fd690  mov x0,x19
016fd694  bl 0x0124c4d0
016fd698  ldr x19,[sp, #0x10]
016fd69c  orr w1,wzr,#0xfffffffd
016fd6a0  mov w2,#0x6e7
016fd6a4  mov x0,x19
016fd6a8  bl 0x0124a650
016fd6ac  orr w1,wzr,#0xfffffffe
016fd6b0  mov x0,x19
016fd6b4  bl 0x0124c0c0
016fd6b8  orr w1,wzr,#0xfffffffe
016fd6bc  mov x0,x19
016fd6c0  bl 0x0124e920
016fd6c4  mov w20,w0
016fd6c8  adrp x1,0x575b000
016fd6cc  add x1,x1,#0x5de
016fd6d0  mov x0,x19
016fd6d4  bl 0x0124f120
016fd6d8  orr w1,wzr,#0xfffffffe
016fd6dc  mov w2,#0x1
016fd6e0  mov x0,x19
016fd6e4  bl 0x0124cfc0
016fd6e8  mov x0,x19
016fd6ec  mov w1,w20
016fd6f0  bl 0x0124e060
016fd6f4  orr w1,wzr,#0xfffffffd
016fd6f8  mov x0,x19
016fd6fc  bl 0x0124c4d0
016fd700  adrp x1,0x5769000
016fd704  adrp x2,0x18c6000
016fd708  adrp x4,0x18c6000
016fd70c  add x1,x1,#0x3eb
016fd710  add x2,x2,#0xb70
016fd714  add x4,x4,#0xb78
016fd718  add x0,sp,#0x10
016fd71c  mov x3,xzr
016fd720  mov x5,xzr
016fd724  bl 0x018c6988
016fd728  adrp x1,0x5769000
016fd72c  adrp x2,0x18c6000
016fd730  adrp x4,0x18c6000
016fd734  add x1,x1,#0x3f7
016fd738  add x2,x2,#0xb80
016fd73c  add x4,x4,#0xb88
016fd740  mov x3,xzr
016fd744  mov x5,xzr
016fd748  bl 0x018c6988
016fd74c  adrp x1,0x5769000
016fd750  adrp x2,0x18c6000
016fd754  add x1,x1,#0x402
016fd758  add x2,x2,#0xd78
016fd75c  mov x3,xzr
016fd760  mov x4,xzr
016fd764  mov x5,xzr
016fd768  bl 0x018c6b90
016fd76c  adrp x1,0x5769000
016fd770  adrp x2,0x18c6000
016fd774  add x1,x1,#0x40b
016fd778  add x2,x2,#0xd80
016fd77c  mov x3,xzr
016fd780  mov x4,xzr
016fd784  mov x5,xzr
016fd788  bl 0x018c6b90
016fd78c  mov x19,x0
016fd790  ldr w8,[x19, #0x8]
016fd794  ldr x0,[x19]
016fd798  sub w8,w8,#0x3
016fd79c  str w8,[x19, #0x8]
016fd7a0  orr w1,wzr,#0xfffffffc
016fd7a4  bl 0x0124c4d0
016fd7a8  ldr w8,[x19, #0x8]
016fd7ac  ldr x0,[x19]
016fd7b0  str wzr,[x19, #0x8]
016fd7b4  cmp w8,#0x1
016fd7b8  b.lt 0x016fd7c4
016fd7bc  mvn w1,w8
016fd7c0  bl 0x0124c4d0
016fd7c4  ldr w8,[sp, #0x18]
016fd7c8  cmp w8,#0x1
016fd7cc  b.lt 0x016fd7dc
016fd7d0  ldr x0,[sp, #0x10]
016fd7d4  mvn w1,w8
016fd7d8  bl 0x0124c4d0
016fd7dc  ldr w8,[sp, #0x8]
016fd7e0  cmp w8,#0x1
016fd7e4  b.lt 0x016fd7f4
016fd7e8  ldr x0,[sp]
016fd7ec  mvn w1,w8
016fd7f0  bl 0x0124c4d0
016fd7f4  ldp x29,x30,[sp, #0x30]
016fd7f8  ldp x20,x19,[sp, #0x20]
016fd7fc  add sp,sp,#0x40
016fd800  ret
