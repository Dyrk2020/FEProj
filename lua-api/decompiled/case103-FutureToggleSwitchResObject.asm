// ===== case103-FutureToggleSwitchResObject @ 0169d468 =====
// existing function case103-FutureToggleSwitchResObject
0169d468  sub sp,sp,#0x40
0169d46c  stp x20,x19,[sp, #0x20]
0169d470  stp x29,x30,[sp, #0x30]
0169d474  add x29,sp,#0x30
0169d478  adrp x1,0x174a000
0169d47c  add x1,x1,#0x87c
0169d480  mov x19,x0
0169d484  bl 0x0124ba40
0169d488  adrp x1,0x575d000
0169d48c  add x1,x1,#0xa06
0169d490  mov x0,x19
0169d494  str x19,[sp]
0169d498  bl 0x01251aa0
0169d49c  mov w8,#0x1
0169d4a0  str w8,[sp, #0x8]
0169d4a4  mov x0,sp
0169d4a8  bl 0x0174aa04
0169d4ac  adrp x1,0x575f000
0169d4b0  adrp x3,0x736d000
0169d4b4  add x1,x1,#0x303
0169d4b8  add x3,x3,#0x101
0169d4bc  add x0,sp,#0x10
0169d4c0  mov x2,sp
0169d4c4  bl 0x01789084
0169d4c8  ldr x0,[sp, #0x10]
0169d4cc  mov w1,#0x10
0169d4d0  bl 0x0124cba0
0169d4d4  adrp x8,0x1789000
0169d4d8  dup v0.2D,xzr
0169d4dc  add x8,x8,#0x7c
0169d4e0  mov v0.D[0x0],x8
0169d4e4  str q0,[x0]
0169d4e8  ldr x0,[sp, #0x10]
0169d4ec  adrp x1,0x1789000
0169d4f0  add x1,x1,#0x448
0169d4f4  mov w2,#0x1
0169d4f8  bl 0x0124ec90
0169d4fc  ldr x0,[sp, #0x10]
0169d500  mov w1,#0xffffffff
0169d504  bl 0x0124c0c0
0169d508  ldr x19,[sp, #0x10]
0169d50c  orr w1,wzr,#0xfffffffb
0169d510  mov w2,#0x6e7
0169d514  mov x0,x19
0169d518  bl 0x0124a650
0169d51c  orr w1,wzr,#0xfffffffe
0169d520  mov x0,x19
0169d524  bl 0x0124c0c0
0169d528  orr w1,wzr,#0xfffffffe
0169d52c  mov x0,x19
0169d530  bl 0x0124e920
0169d534  mov w20,w0
0169d538  adrp x1,0x575f000
0169d53c  add x1,x1,#0x31f
0169d540  mov x0,x19
0169d544  bl 0x0124f120
0169d548  orr w1,wzr,#0xfffffffe
0169d54c  mov w2,#0x1
0169d550  mov x0,x19
0169d554  bl 0x0124cfc0
0169d558  mov x0,x19
0169d55c  mov w1,w20
0169d560  bl 0x0124e060
0169d564  orr w1,wzr,#0xfffffffd
0169d568  mov x0,x19
0169d56c  bl 0x0124c4d0
0169d570  ldr x19,[sp, #0x10]
0169d574  orr w1,wzr,#0xfffffffd
0169d578  mov w2,#0x6e7
0169d57c  mov x0,x19
0169d580  bl 0x0124a650
0169d584  orr w1,wzr,#0xfffffffe
0169d588  mov x0,x19
0169d58c  bl 0x0124c0c0
0169d590  orr w1,wzr,#0xfffffffe
0169d594  mov x0,x19
0169d598  bl 0x0124e920
0169d59c  mov w20,w0
0169d5a0  adrp x1,0x575f000
0169d5a4  add x1,x1,#0x31f
0169d5a8  mov x0,x19
0169d5ac  bl 0x0124f120
0169d5b0  orr w1,wzr,#0xfffffffe
0169d5b4  mov w2,#0x1
0169d5b8  mov x0,x19
0169d5bc  bl 0x0124cfc0
0169d5c0  mov x0,x19
0169d5c4  mov w1,w20
0169d5c8  bl 0x0124e060
0169d5cc  orr w1,wzr,#0xfffffffd
0169d5d0  mov x0,x19
0169d5d4  bl 0x0124c4d0
0169d5d8  ldr w8,[sp, #0x18]
0169d5dc  ldr x0,[sp, #0x10]
0169d5e0  sub w8,w8,#0x3
0169d5e4  str w8,[sp, #0x18]
0169d5e8  orr w1,wzr,#0xfffffffc
0169d5ec  bl 0x0124c4d0
0169d5f0  ldr w8,[sp, #0x18]
0169d5f4  ldr x0,[sp, #0x10]
0169d5f8  str wzr,[sp, #0x18]
0169d5fc  cmp w8,#0x1
0169d600  b.lt 0x0169d624
0169d604  mvn w1,w8
0169d608  bl 0x0124c4d0
0169d60c  ldr w8,[sp, #0x18]
0169d610  cmp w8,#0x1
0169d614  b.lt 0x0169d624
0169d618  ldr x0,[sp, #0x10]
0169d61c  mvn w1,w8
0169d620  bl 0x0124c4d0
0169d624  ldr w8,[sp, #0x8]
0169d628  cmp w8,#0x1
0169d62c  b.lt 0x0169d63c
0169d630  ldr x0,[sp]
0169d634  mvn w1,w8
0169d638  bl 0x0124c4d0
0169d63c  ldp x29,x30,[sp, #0x30]
0169d640  ldp x20,x19,[sp, #0x20]
0169d644  add sp,sp,#0x40
0169d648  ret
