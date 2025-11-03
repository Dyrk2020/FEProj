// ===== case626-BattleCountdownMgr @ 0170d38c =====
// existing function case626-BattleCountdownMgr
0170d38c  sub sp,sp,#0x50
0170d390  str x21,[sp, #0x20]
0170d394  stp x20,x19,[sp, #0x30]
0170d398  stp x29,x30,[sp, #0x40]
0170d39c  add x29,sp,#0x40
0170d3a0  adrp x1,0x174a000
0170d3a4  add x1,x1,#0x87c
0170d3a8  mov x19,x0
0170d3ac  bl 0x0124ba40
0170d3b0  adrp x1,0x575d000
0170d3b4  add x1,x1,#0xa06
0170d3b8  mov x0,x19
0170d3bc  str x19,[sp]
0170d3c0  bl 0x01251aa0
0170d3c4  mov w8,#0x1
0170d3c8  str w8,[sp, #0x8]
0170d3cc  mov x0,sp
0170d3d0  bl 0x0174aa04
0170d3d4  adrp x1,0x576a000
0170d3d8  adrp x3,0x736d000
0170d3dc  add x1,x1,#0x7ee
0170d3e0  add x3,x3,#0x101
0170d3e4  add x0,sp,#0x10
0170d3e8  mov x2,sp
0170d3ec  bl 0x019060ec
0170d3f0  adrp x1,0x576a000
0170d3f4  adrp x2,0x1906000
0170d3f8  adrp x4,0x1906000
0170d3fc  add x1,x1,#0x801
0170d400  add x2,x2,#0x14
0170d404  add x4,x4,#0x1c
0170d408  add x0,sp,#0x10
0170d40c  mov x3,xzr
0170d410  mov x5,xzr
0170d414  bl 0x01905e2c
0170d418  adrp x1,0x5764000
0170d41c  adrp x2,0x1906000
0170d420  adrp x4,0x1906000
0170d424  add x1,x1,#0xf73
0170d428  add x2,x2,#0x7c
0170d42c  add x4,x4,#0x84
0170d430  mov x3,xzr
0170d434  mov x5,xzr
0170d438  bl 0x01905e2c
0170d43c  mov x19,x0
0170d440  ldr x0,[x19]
0170d444  mov w1,#0x10
0170d448  bl 0x0124cba0
0170d44c  adrp x8,0x1906000
0170d450  dup v0.2D,xzr
0170d454  add x8,x8,#0xe4
0170d458  mov v0.D[0x0],x8
0170d45c  str q0,[x0]
0170d460  ldr x0,[x19]
0170d464  adrp x1,0x1906000
0170d468  add x1,x1,#0x9cc
0170d46c  mov w2,#0x1
0170d470  bl 0x0124ec90
0170d474  ldr x0,[x19]
0170d478  mov w1,#0xffffffff
0170d47c  bl 0x0124c0c0
0170d480  ldr x20,[x19]
0170d484  orr w1,wzr,#0xfffffffb
0170d488  mov w2,#0x6e7
0170d48c  mov x0,x20
0170d490  bl 0x0124a650
0170d494  orr w1,wzr,#0xfffffffe
0170d498  mov x0,x20
0170d49c  bl 0x0124c0c0
0170d4a0  orr w1,wzr,#0xfffffffe
0170d4a4  mov x0,x20
0170d4a8  bl 0x0124e920
0170d4ac  mov w21,w0
0170d4b0  adrp x1,0x5763000
0170d4b4  add x1,x1,#0x892
0170d4b8  mov x0,x20
0170d4bc  bl 0x0124f120
0170d4c0  orr w1,wzr,#0xfffffffe
0170d4c4  mov w2,#0x1
0170d4c8  mov x0,x20
0170d4cc  bl 0x0124cfc0
0170d4d0  mov x0,x20
0170d4d4  mov w1,w21
0170d4d8  bl 0x0124e060
0170d4dc  orr w1,wzr,#0xfffffffd
0170d4e0  mov x0,x20
0170d4e4  bl 0x0124c4d0
0170d4e8  ldr x20,[x19]
0170d4ec  orr w1,wzr,#0xfffffffd
0170d4f0  mov w2,#0x6e7
0170d4f4  mov x0,x20
0170d4f8  bl 0x0124a650
0170d4fc  orr w1,wzr,#0xfffffffe
0170d500  mov x0,x20
0170d504  bl 0x0124c0c0
0170d508  orr w1,wzr,#0xfffffffe
0170d50c  mov x0,x20
0170d510  bl 0x0124e920
0170d514  mov w21,w0
0170d518  adrp x1,0x5763000
0170d51c  add x1,x1,#0x892
0170d520  mov x0,x20
0170d524  bl 0x0124f120
0170d528  orr w1,wzr,#0xfffffffe
0170d52c  mov w2,#0x1
0170d530  mov x0,x20
0170d534  bl 0x0124cfc0
0170d538  mov x0,x20
0170d53c  mov w1,w21
0170d540  bl 0x0124e060
0170d544  orr w1,wzr,#0xfffffffd
0170d548  mov x0,x20
0170d54c  bl 0x0124c4d0
0170d550  ldr w8,[x19, #0x8]
0170d554  ldr x0,[x19]
0170d558  sub w8,w8,#0x3
0170d55c  str w8,[x19, #0x8]
0170d560  orr w1,wzr,#0xfffffffc
0170d564  bl 0x0124c4d0
0170d568  ldr w8,[x19, #0x8]
0170d56c  ldr x0,[x19]
0170d570  str wzr,[x19, #0x8]
0170d574  cmp w8,#0x1
0170d578  b.lt 0x0170d584
0170d57c  mvn w1,w8
0170d580  bl 0x0124c4d0
0170d584  ldr w8,[sp, #0x18]
0170d588  cmp w8,#0x1
0170d58c  b.lt 0x0170d59c
0170d590  ldr x0,[sp, #0x10]
0170d594  mvn w1,w8
0170d598  bl 0x0124c4d0
0170d59c  ldr w8,[sp, #0x8]
0170d5a0  cmp w8,#0x1
0170d5a4  b.lt 0x0170d5b4
0170d5a8  ldr x0,[sp]
0170d5ac  mvn w1,w8
0170d5b0  bl 0x0124c4d0
0170d5b4  ldp x29,x30,[sp, #0x40]
0170d5b8  ldp x20,x19,[sp, #0x30]
0170d5bc  ldr x21,[sp, #0x20]
0170d5c0  add sp,sp,#0x50
0170d5c4  ret
