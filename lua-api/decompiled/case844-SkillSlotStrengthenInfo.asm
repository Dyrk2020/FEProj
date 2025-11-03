// ===== case844-SkillSlotStrengthenInfo @ 0173d578 =====
// existing function case844-SkillSlotStrengthenInfo
0173d578  sub sp,sp,#0x40
0173d57c  stp x20,x19,[sp, #0x20]
0173d580  stp x29,x30,[sp, #0x30]
0173d584  add x29,sp,#0x30
0173d588  adrp x1,0x174a000
0173d58c  add x1,x1,#0x87c
0173d590  mov x19,x0
0173d594  bl 0x0124ba40
0173d598  adrp x1,0x575d000
0173d59c  add x1,x1,#0xa06
0173d5a0  mov x0,x19
0173d5a4  str x19,[sp]
0173d5a8  bl 0x01251aa0
0173d5ac  mov w8,#0x1
0173d5b0  str w8,[sp, #0x8]
0173d5b4  mov x0,sp
0173d5b8  bl 0x0174aa04
0173d5bc  adrp x1,0x5772000
0173d5c0  adrp x3,0x736d000
0173d5c4  add x1,x1,#0xfe5
0173d5c8  add x3,x3,#0x101
0173d5cc  add x0,sp,#0x10
0173d5d0  mov x2,sp
0173d5d4  bl 0x019e1f48
0173d5d8  ldr x0,[sp, #0x10]
0173d5dc  mov w1,#0x10
0173d5e0  bl 0x0124cba0
0173d5e4  adrp x8,0x19e1000
0173d5e8  dup v0.2D,xzr
0173d5ec  add x8,x8,#0xd48
0173d5f0  mov v0.D[0x0],x8
0173d5f4  str q0,[x0]
0173d5f8  ldr x0,[sp, #0x10]
0173d5fc  adrp x1,0x19e2000
0173d600  add x1,x1,#0x30c
0173d604  mov w2,#0x1
0173d608  bl 0x0124ec90
0173d60c  ldr x0,[sp, #0x10]
0173d610  mov w1,#0xffffffff
0173d614  bl 0x0124c0c0
0173d618  ldr x19,[sp, #0x10]
0173d61c  orr w1,wzr,#0xfffffffb
0173d620  mov w2,#0x6e7
0173d624  mov x0,x19
0173d628  bl 0x0124a650
0173d62c  orr w1,wzr,#0xfffffffe
0173d630  mov x0,x19
0173d634  bl 0x0124c0c0
0173d638  orr w1,wzr,#0xfffffffe
0173d63c  mov x0,x19
0173d640  bl 0x0124e920
0173d644  mov w20,w0
0173d648  adrp x1,0x5772000
0173d64c  add x1,x1,#0xffd
0173d650  mov x0,x19
0173d654  bl 0x0124f120
0173d658  orr w1,wzr,#0xfffffffe
0173d65c  mov w2,#0x1
0173d660  mov x0,x19
0173d664  bl 0x0124cfc0
0173d668  mov x0,x19
0173d66c  mov w1,w20
0173d670  bl 0x0124e060
0173d674  orr w1,wzr,#0xfffffffd
0173d678  mov x0,x19
0173d67c  bl 0x0124c4d0
0173d680  ldr x19,[sp, #0x10]
0173d684  orr w1,wzr,#0xfffffffd
0173d688  mov w2,#0x6e7
0173d68c  mov x0,x19
0173d690  bl 0x0124a650
0173d694  orr w1,wzr,#0xfffffffe
0173d698  mov x0,x19
0173d69c  bl 0x0124c0c0
0173d6a0  orr w1,wzr,#0xfffffffe
0173d6a4  mov x0,x19
0173d6a8  bl 0x0124e920
0173d6ac  mov w20,w0
0173d6b0  adrp x1,0x5772000
0173d6b4  add x1,x1,#0xffd
0173d6b8  mov x0,x19
0173d6bc  bl 0x0124f120
0173d6c0  orr w1,wzr,#0xfffffffe
0173d6c4  mov w2,#0x1
0173d6c8  mov x0,x19
0173d6cc  bl 0x0124cfc0
0173d6d0  mov x0,x19
0173d6d4  mov w1,w20
0173d6d8  bl 0x0124e060
0173d6dc  orr w1,wzr,#0xfffffffd
0173d6e0  mov x0,x19
0173d6e4  bl 0x0124c4d0
0173d6e8  adrp x1,0x5773000
0173d6ec  adrp x2,0x19e1000
0173d6f0  adrp x4,0x19e1000
0173d6f4  add x1,x1,#0x9
0173d6f8  add x2,x2,#0xf38
0173d6fc  add x4,x4,#0xf40
0173d700  add x0,sp,#0x10
0173d704  mov x3,xzr
0173d708  mov x5,xzr
0173d70c  bl 0x019e1d50
0173d710  mov x19,x0
0173d714  ldr w8,[x19, #0x8]
0173d718  ldr x0,[x19]
0173d71c  sub w8,w8,#0x3
0173d720  str w8,[x19, #0x8]
0173d724  orr w1,wzr,#0xfffffffc
0173d728  bl 0x0124c4d0
0173d72c  ldr w8,[x19, #0x8]
0173d730  ldr x0,[x19]
0173d734  str wzr,[x19, #0x8]
0173d738  cmp w8,#0x1
0173d73c  b.lt 0x0173d748
0173d740  mvn w1,w8
0173d744  bl 0x0124c4d0
0173d748  ldr w8,[sp, #0x18]
0173d74c  cmp w8,#0x1
0173d750  b.lt 0x0173d760
0173d754  ldr x0,[sp, #0x10]
0173d758  mvn w1,w8
0173d75c  bl 0x0124c4d0
0173d760  ldr w8,[sp, #0x8]
0173d764  cmp w8,#0x1
0173d768  b.lt 0x0173d778
0173d76c  ldr x0,[sp]
0173d770  mvn w1,w8
0173d774  bl 0x0124c4d0
0173d778  ldp x29,x30,[sp, #0x30]
0173d77c  ldp x20,x19,[sp, #0x20]
0173d780  add sp,sp,#0x40
0173d784  ret
