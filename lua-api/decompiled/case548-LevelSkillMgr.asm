// ===== case548-LevelSkillMgr @ 016fc5cc =====
// existing function case548-LevelSkillMgr
016fc5cc  sub sp,sp,#0x40
016fc5d0  stp x20,x19,[sp, #0x20]
016fc5d4  stp x29,x30,[sp, #0x30]
016fc5d8  add x29,sp,#0x30
016fc5dc  adrp x1,0x174a000
016fc5e0  add x1,x1,#0x87c
016fc5e4  mov x19,x0
016fc5e8  bl 0x0124ba40
016fc5ec  adrp x1,0x575d000
016fc5f0  add x1,x1,#0xa06
016fc5f4  mov x0,x19
016fc5f8  str x19,[sp]
016fc5fc  bl 0x01251aa0
016fc600  mov w8,#0x1
016fc604  str w8,[sp, #0x8]
016fc608  mov x0,sp
016fc60c  bl 0x0174aa04
016fc610  adrp x1,0x5769000
016fc614  adrp x3,0x736d000
016fc618  add x1,x1,#0x24a
016fc61c  add x3,x3,#0x101
016fc620  add x0,sp,#0x10
016fc624  mov x2,sp
016fc628  bl 0x018c06d4
016fc62c  ldr x0,[sp, #0x10]
016fc630  mov w1,#0x10
016fc634  bl 0x0124cba0
016fc638  adrp x8,0x18c0000
016fc63c  dup v0.2D,xzr
016fc640  add x8,x8,#0x6cc
016fc644  mov v0.D[0x0],x8
016fc648  str q0,[x0]
016fc64c  ldr x0,[sp, #0x10]
016fc650  adrp x1,0x18c0000
016fc654  add x1,x1,#0xa98
016fc658  mov w2,#0x1
016fc65c  bl 0x0124ec90
016fc660  ldr x0,[sp, #0x10]
016fc664  mov w1,#0xffffffff
016fc668  bl 0x0124c0c0
016fc66c  ldr x19,[sp, #0x10]
016fc670  orr w1,wzr,#0xfffffffb
016fc674  mov w2,#0x6e7
016fc678  mov x0,x19
016fc67c  bl 0x0124a650
016fc680  orr w1,wzr,#0xfffffffe
016fc684  mov x0,x19
016fc688  bl 0x0124c0c0
016fc68c  orr w1,wzr,#0xfffffffe
016fc690  mov x0,x19
016fc694  bl 0x0124e920
016fc698  mov w20,w0
016fc69c  adrp x1,0x5762000
016fc6a0  add x1,x1,#0x1cd
016fc6a4  mov x0,x19
016fc6a8  bl 0x0124f120
016fc6ac  orr w1,wzr,#0xfffffffe
016fc6b0  mov w2,#0x1
016fc6b4  mov x0,x19
016fc6b8  bl 0x0124cfc0
016fc6bc  mov x0,x19
016fc6c0  mov w1,w20
016fc6c4  bl 0x0124e060
016fc6c8  orr w1,wzr,#0xfffffffd
016fc6cc  mov x0,x19
016fc6d0  bl 0x0124c4d0
016fc6d4  ldr x19,[sp, #0x10]
016fc6d8  orr w1,wzr,#0xfffffffd
016fc6dc  mov w2,#0x6e7
016fc6e0  mov x0,x19
016fc6e4  bl 0x0124a650
016fc6e8  orr w1,wzr,#0xfffffffe
016fc6ec  mov x0,x19
016fc6f0  bl 0x0124c0c0
016fc6f4  orr w1,wzr,#0xfffffffe
016fc6f8  mov x0,x19
016fc6fc  bl 0x0124e920
016fc700  mov w20,w0
016fc704  adrp x1,0x5762000
016fc708  add x1,x1,#0x1cd
016fc70c  mov x0,x19
016fc710  bl 0x0124f120
016fc714  orr w1,wzr,#0xfffffffe
016fc718  mov w2,#0x1
016fc71c  mov x0,x19
016fc720  bl 0x0124cfc0
016fc724  mov x0,x19
016fc728  mov w1,w20
016fc72c  bl 0x0124e060
016fc730  orr w1,wzr,#0xfffffffd
016fc734  mov x0,x19
016fc738  bl 0x0124c4d0
016fc73c  ldr w8,[sp, #0x18]
016fc740  ldr x0,[sp, #0x10]
016fc744  sub w8,w8,#0x3
016fc748  str w8,[sp, #0x18]
016fc74c  orr w1,wzr,#0xfffffffc
016fc750  bl 0x0124c4d0
016fc754  ldr w8,[sp, #0x18]
016fc758  ldr x0,[sp, #0x10]
016fc75c  str wzr,[sp, #0x18]
016fc760  cmp w8,#0x1
016fc764  b.lt 0x016fc788
016fc768  mvn w1,w8
016fc76c  bl 0x0124c4d0
016fc770  ldr w8,[sp, #0x18]
016fc774  cmp w8,#0x1
016fc778  b.lt 0x016fc788
016fc77c  ldr x0,[sp, #0x10]
016fc780  mvn w1,w8
016fc784  bl 0x0124c4d0
016fc788  ldr w8,[sp, #0x8]
016fc78c  cmp w8,#0x1
016fc790  b.lt 0x016fc7a0
016fc794  ldr x0,[sp]
016fc798  mvn w1,w8
016fc79c  bl 0x0124c4d0
016fc7a0  ldp x29,x30,[sp, #0x30]
016fc7a4  ldp x20,x19,[sp, #0x20]
016fc7a8  add sp,sp,#0x40
016fc7ac  ret
