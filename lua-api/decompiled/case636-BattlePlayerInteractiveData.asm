// ===== case636-BattlePlayerInteractiveData @ 0170f5a4 =====
// existing function case636-BattlePlayerInteractiveData
0170f5a4  sub sp,sp,#0x40
0170f5a8  stp x20,x19,[sp, #0x20]
0170f5ac  stp x29,x30,[sp, #0x30]
0170f5b0  add x29,sp,#0x30
0170f5b4  adrp x1,0x174a000
0170f5b8  add x1,x1,#0x87c
0170f5bc  mov x19,x0
0170f5c0  bl 0x0124ba40
0170f5c4  adrp x1,0x575d000
0170f5c8  add x1,x1,#0xa06
0170f5cc  mov x0,x19
0170f5d0  str x19,[sp]
0170f5d4  bl 0x01251aa0
0170f5d8  mov w8,#0x1
0170f5dc  str w8,[sp, #0x8]
0170f5e0  mov x0,sp
0170f5e4  bl 0x0174aa04
0170f5e8  adrp x1,0x576a000
0170f5ec  adrp x3,0x736d000
0170f5f0  add x1,x1,#0xbac
0170f5f4  add x3,x3,#0x101
0170f5f8  add x0,sp,#0x10
0170f5fc  mov x2,sp
0170f600  bl 0x019103f8
0170f604  ldr x0,[sp, #0x10]
0170f608  mov w1,#0x10
0170f60c  bl 0x0124cba0
0170f610  adrp x8,0x1910000
0170f614  dup v0.2D,xzr
0170f618  add x8,x8,#0x3f0
0170f61c  mov v0.D[0x0],x8
0170f620  str q0,[x0]
0170f624  ldr x0,[sp, #0x10]
0170f628  adrp x1,0x1910000
0170f62c  add x1,x1,#0x7bc
0170f630  mov w2,#0x1
0170f634  bl 0x0124ec90
0170f638  ldr x0,[sp, #0x10]
0170f63c  mov w1,#0xffffffff
0170f640  bl 0x0124c0c0
0170f644  ldr x19,[sp, #0x10]
0170f648  orr w1,wzr,#0xfffffffb
0170f64c  mov w2,#0x6e7
0170f650  mov x0,x19
0170f654  bl 0x0124a650
0170f658  orr w1,wzr,#0xfffffffe
0170f65c  mov x0,x19
0170f660  bl 0x0124c0c0
0170f664  orr w1,wzr,#0xfffffffe
0170f668  mov x0,x19
0170f66c  bl 0x0124e920
0170f670  mov w20,w0
0170f674  adrp x1,0x576a000
0170f678  add x1,x1,#0xbc8
0170f67c  mov x0,x19
0170f680  bl 0x0124f120
0170f684  orr w1,wzr,#0xfffffffe
0170f688  mov w2,#0x1
0170f68c  mov x0,x19
0170f690  bl 0x0124cfc0
0170f694  mov x0,x19
0170f698  mov w1,w20
0170f69c  bl 0x0124e060
0170f6a0  orr w1,wzr,#0xfffffffd
0170f6a4  mov x0,x19
0170f6a8  bl 0x0124c4d0
0170f6ac  ldr x19,[sp, #0x10]
0170f6b0  orr w1,wzr,#0xfffffffd
0170f6b4  mov w2,#0x6e7
0170f6b8  mov x0,x19
0170f6bc  bl 0x0124a650
0170f6c0  orr w1,wzr,#0xfffffffe
0170f6c4  mov x0,x19
0170f6c8  bl 0x0124c0c0
0170f6cc  orr w1,wzr,#0xfffffffe
0170f6d0  mov x0,x19
0170f6d4  bl 0x0124e920
0170f6d8  mov w20,w0
0170f6dc  adrp x1,0x576a000
0170f6e0  add x1,x1,#0xbc8
0170f6e4  mov x0,x19
0170f6e8  bl 0x0124f120
0170f6ec  orr w1,wzr,#0xfffffffe
0170f6f0  mov w2,#0x1
0170f6f4  mov x0,x19
0170f6f8  bl 0x0124cfc0
0170f6fc  mov x0,x19
0170f700  mov w1,w20
0170f704  bl 0x0124e060
0170f708  orr w1,wzr,#0xfffffffd
0170f70c  mov x0,x19
0170f710  bl 0x0124c4d0
0170f714  ldr w8,[sp, #0x18]
0170f718  ldr x0,[sp, #0x10]
0170f71c  sub w8,w8,#0x3
0170f720  str w8,[sp, #0x18]
0170f724  orr w1,wzr,#0xfffffffc
0170f728  bl 0x0124c4d0
0170f72c  ldr w8,[sp, #0x18]
0170f730  ldr x0,[sp, #0x10]
0170f734  str wzr,[sp, #0x18]
0170f738  cmp w8,#0x1
0170f73c  b.lt 0x0170f760
0170f740  mvn w1,w8
0170f744  bl 0x0124c4d0
0170f748  ldr w8,[sp, #0x18]
0170f74c  cmp w8,#0x1
0170f750  b.lt 0x0170f760
0170f754  ldr x0,[sp, #0x10]
0170f758  mvn w1,w8
0170f75c  bl 0x0124c4d0
0170f760  ldr w8,[sp, #0x8]
0170f764  cmp w8,#0x1
0170f768  b.lt 0x0170f778
0170f76c  ldr x0,[sp]
0170f770  mvn w1,w8
0170f774  bl 0x0124c4d0
0170f778  ldp x29,x30,[sp, #0x30]
0170f77c  ldp x20,x19,[sp, #0x20]
0170f780  add sp,sp,#0x40
0170f784  ret
