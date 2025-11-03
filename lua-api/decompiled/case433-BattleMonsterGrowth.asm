// ===== case433-BattleMonsterGrowth @ 016e7604 =====
// existing function case433-BattleMonsterGrowth
016e7604  sub sp,sp,#0x40
016e7608  stp x20,x19,[sp, #0x20]
016e760c  stp x29,x30,[sp, #0x30]
016e7610  add x29,sp,#0x30
016e7614  adrp x1,0x174a000
016e7618  add x1,x1,#0x87c
016e761c  mov x19,x0
016e7620  bl 0x0124ba40
016e7624  adrp x1,0x575d000
016e7628  add x1,x1,#0xa06
016e762c  mov x0,x19
016e7630  str x19,[sp]
016e7634  bl 0x01251aa0
016e7638  mov w8,#0x1
016e763c  str w8,[sp, #0x8]
016e7640  mov x0,sp
016e7644  bl 0x0174aa04
016e7648  adrp x1,0x5766000
016e764c  adrp x3,0x736d000
016e7650  add x1,x1,#0x81c
016e7654  add x3,x3,#0x101
016e7658  add x0,sp,#0x10
016e765c  mov x2,sp
016e7660  bl 0x018639d0
016e7664  ldr x0,[sp, #0x10]
016e7668  mov w1,#0x10
016e766c  bl 0x0124cba0
016e7670  adrp x8,0x1863000
016e7674  dup v0.2D,xzr
016e7678  add x8,x8,#0x9c8
016e767c  mov v0.D[0x0],x8
016e7680  str q0,[x0]
016e7684  ldr x0,[sp, #0x10]
016e7688  adrp x1,0x1863000
016e768c  add x1,x1,#0xd94
016e7690  mov w2,#0x1
016e7694  bl 0x0124ec90
016e7698  ldr x0,[sp, #0x10]
016e769c  mov w1,#0xffffffff
016e76a0  bl 0x0124c0c0
016e76a4  ldr x19,[sp, #0x10]
016e76a8  orr w1,wzr,#0xfffffffb
016e76ac  mov w2,#0x6e7
016e76b0  mov x0,x19
016e76b4  bl 0x0124a650
016e76b8  orr w1,wzr,#0xfffffffe
016e76bc  mov x0,x19
016e76c0  bl 0x0124c0c0
016e76c4  orr w1,wzr,#0xfffffffe
016e76c8  mov x0,x19
016e76cc  bl 0x0124e920
016e76d0  mov w20,w0
016e76d4  adrp x1,0x576d000
016e76d8  add x1,x1,#0x54e
016e76dc  mov x0,x19
016e76e0  bl 0x0124f120
016e76e4  orr w1,wzr,#0xfffffffe
016e76e8  mov w2,#0x1
016e76ec  mov x0,x19
016e76f0  bl 0x0124cfc0
016e76f4  mov x0,x19
016e76f8  mov w1,w20
016e76fc  bl 0x0124e060
016e7700  orr w1,wzr,#0xfffffffd
016e7704  mov x0,x19
016e7708  bl 0x0124c4d0
016e770c  ldr x19,[sp, #0x10]
016e7710  orr w1,wzr,#0xfffffffd
016e7714  mov w2,#0x6e7
016e7718  mov x0,x19
016e771c  bl 0x0124a650
016e7720  orr w1,wzr,#0xfffffffe
016e7724  mov x0,x19
016e7728  bl 0x0124c0c0
016e772c  orr w1,wzr,#0xfffffffe
016e7730  mov x0,x19
016e7734  bl 0x0124e920
016e7738  mov w20,w0
016e773c  adrp x1,0x576d000
016e7740  add x1,x1,#0x54e
016e7744  mov x0,x19
016e7748  bl 0x0124f120
016e774c  orr w1,wzr,#0xfffffffe
016e7750  mov w2,#0x1
016e7754  mov x0,x19
016e7758  bl 0x0124cfc0
016e775c  mov x0,x19
016e7760  mov w1,w20
016e7764  bl 0x0124e060
016e7768  orr w1,wzr,#0xfffffffd
016e776c  mov x0,x19
016e7770  bl 0x0124c4d0
016e7774  ldr w8,[sp, #0x18]
016e7778  ldr x0,[sp, #0x10]
016e777c  sub w8,w8,#0x3
016e7780  str w8,[sp, #0x18]
016e7784  orr w1,wzr,#0xfffffffc
016e7788  bl 0x0124c4d0
016e778c  ldr w8,[sp, #0x18]
016e7790  ldr x0,[sp, #0x10]
016e7794  str wzr,[sp, #0x18]
016e7798  cmp w8,#0x1
016e779c  b.lt 0x016e77c0
016e77a0  mvn w1,w8
016e77a4  bl 0x0124c4d0
016e77a8  ldr w8,[sp, #0x18]
016e77ac  cmp w8,#0x1
016e77b0  b.lt 0x016e77c0
016e77b4  ldr x0,[sp, #0x10]
016e77b8  mvn w1,w8
016e77bc  bl 0x0124c4d0
016e77c0  ldr w8,[sp, #0x8]
016e77c4  cmp w8,#0x1
016e77c8  b.lt 0x016e77d8
016e77cc  ldr x0,[sp]
016e77d0  mvn w1,w8
016e77d4  bl 0x0124c4d0
016e77d8  ldp x29,x30,[sp, #0x30]
016e77dc  ldp x20,x19,[sp, #0x20]
016e77e0  add sp,sp,#0x40
016e77e4  ret
