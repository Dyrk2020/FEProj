// ===== case432-BattleMonsterGrowth_DC @ 016e73bc =====
// existing function case432-BattleMonsterGrowth_DC
016e73bc  sub sp,sp,#0x40
016e73c0  stp x20,x19,[sp, #0x20]
016e73c4  stp x29,x30,[sp, #0x30]
016e73c8  add x29,sp,#0x30
016e73cc  adrp x1,0x174a000
016e73d0  add x1,x1,#0x87c
016e73d4  mov x19,x0
016e73d8  bl 0x0124ba40
016e73dc  adrp x1,0x575d000
016e73e0  add x1,x1,#0xa06
016e73e4  mov x0,x19
016e73e8  str x19,[sp]
016e73ec  bl 0x01251aa0
016e73f0  mov w8,#0x1
016e73f4  str w8,[sp, #0x8]
016e73f8  mov x0,sp
016e73fc  bl 0x0174aa04
016e7400  adrp x1,0x5766000
016e7404  adrp x3,0x736d000
016e7408  add x1,x1,#0x7f3
016e740c  add x3,x3,#0x101
016e7410  add x0,sp,#0x10
016e7414  mov x2,sp
016e7418  bl 0x018634e0
016e741c  ldr x0,[sp, #0x10]
016e7420  mov w1,#0x10
016e7424  bl 0x0124cba0
016e7428  adrp x8,0x1863000
016e742c  dup v0.2D,xzr
016e7430  add x8,x8,#0x4d8
016e7434  mov v0.D[0x0],x8
016e7438  str q0,[x0]
016e743c  ldr x0,[sp, #0x10]
016e7440  adrp x1,0x1863000
016e7444  add x1,x1,#0x8a4
016e7448  mov w2,#0x1
016e744c  bl 0x0124ec90
016e7450  ldr x0,[sp, #0x10]
016e7454  mov w1,#0xffffffff
016e7458  bl 0x0124c0c0
016e745c  ldr x19,[sp, #0x10]
016e7460  orr w1,wzr,#0xfffffffb
016e7464  mov w2,#0x6e7
016e7468  mov x0,x19
016e746c  bl 0x0124a650
016e7470  orr w1,wzr,#0xfffffffe
016e7474  mov x0,x19
016e7478  bl 0x0124c0c0
016e747c  orr w1,wzr,#0xfffffffe
016e7480  mov x0,x19
016e7484  bl 0x0124e920
016e7488  mov w20,w0
016e748c  adrp x1,0x5766000
016e7490  add x1,x1,#0x80a
016e7494  mov x0,x19
016e7498  bl 0x0124f120
016e749c  orr w1,wzr,#0xfffffffe
016e74a0  mov w2,#0x1
016e74a4  mov x0,x19
016e74a8  bl 0x0124cfc0
016e74ac  mov x0,x19
016e74b0  mov w1,w20
016e74b4  bl 0x0124e060
016e74b8  orr w1,wzr,#0xfffffffd
016e74bc  mov x0,x19
016e74c0  bl 0x0124c4d0
016e74c4  ldr x19,[sp, #0x10]
016e74c8  orr w1,wzr,#0xfffffffd
016e74cc  mov w2,#0x6e7
016e74d0  mov x0,x19
016e74d4  bl 0x0124a650
016e74d8  orr w1,wzr,#0xfffffffe
016e74dc  mov x0,x19
016e74e0  bl 0x0124c0c0
016e74e4  orr w1,wzr,#0xfffffffe
016e74e8  mov x0,x19
016e74ec  bl 0x0124e920
016e74f0  mov w20,w0
016e74f4  adrp x1,0x5766000
016e74f8  add x1,x1,#0x80a
016e74fc  mov x0,x19
016e7500  bl 0x0124f120
016e7504  orr w1,wzr,#0xfffffffe
016e7508  mov w2,#0x1
016e750c  mov x0,x19
016e7510  bl 0x0124cfc0
016e7514  mov x0,x19
016e7518  mov w1,w20
016e751c  bl 0x0124e060
016e7520  orr w1,wzr,#0xfffffffd
016e7524  mov x0,x19
016e7528  bl 0x0124c4d0
016e752c  ldr w8,[sp, #0x18]
016e7530  ldr x0,[sp, #0x10]
016e7534  sub w8,w8,#0x3
016e7538  str w8,[sp, #0x18]
016e753c  orr w1,wzr,#0xfffffffc
016e7540  bl 0x0124c4d0
016e7544  ldr w8,[sp, #0x18]
016e7548  ldr x0,[sp, #0x10]
016e754c  str wzr,[sp, #0x18]
016e7550  cmp w8,#0x1
016e7554  b.lt 0x016e7578
016e7558  mvn w1,w8
016e755c  bl 0x0124c4d0
016e7560  ldr w8,[sp, #0x18]
016e7564  cmp w8,#0x1
016e7568  b.lt 0x016e7578
016e756c  ldr x0,[sp, #0x10]
016e7570  mvn w1,w8
016e7574  bl 0x0124c4d0
016e7578  ldr w8,[sp, #0x8]
016e757c  cmp w8,#0x1
016e7580  b.lt 0x016e7590
016e7584  ldr x0,[sp]
016e7588  mvn w1,w8
016e758c  bl 0x0124c4d0
016e7590  ldp x29,x30,[sp, #0x30]
016e7594  ldp x20,x19,[sp, #0x20]
016e7598  add sp,sp,#0x40
016e759c  ret
