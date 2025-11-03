// ===== case532-HeroTalentMgr @ 016f944c =====
// existing function case532-HeroTalentMgr
016f944c  sub sp,sp,#0x40
016f9450  stp x20,x19,[sp, #0x20]
016f9454  stp x29,x30,[sp, #0x30]
016f9458  add x29,sp,#0x30
016f945c  adrp x1,0x174a000
016f9460  add x1,x1,#0x87c
016f9464  mov x19,x0
016f9468  bl 0x0124ba40
016f946c  adrp x1,0x575d000
016f9470  add x1,x1,#0xa06
016f9474  mov x0,x19
016f9478  str x19,[sp]
016f947c  bl 0x01251aa0
016f9480  mov w8,#0x1
016f9484  str w8,[sp, #0x8]
016f9488  mov x0,sp
016f948c  bl 0x0174aa04
016f9490  adrp x1,0x5768000
016f9494  adrp x3,0x736d000
016f9498  add x1,x1,#0xb3d
016f949c  add x3,x3,#0x101
016f94a0  add x0,sp,#0x10
016f94a4  mov x2,sp
016f94a8  bl 0x018b0c70
016f94ac  ldr x0,[sp, #0x10]
016f94b0  mov w1,#0x10
016f94b4  bl 0x0124cba0
016f94b8  adrp x8,0x18b0000
016f94bc  dup v0.2D,xzr
016f94c0  add x8,x8,#0xc68
016f94c4  mov v0.D[0x0],x8
016f94c8  str q0,[x0]
016f94cc  ldr x0,[sp, #0x10]
016f94d0  adrp x1,0x18b1000
016f94d4  add x1,x1,#0x34
016f94d8  mov w2,#0x1
016f94dc  bl 0x0124ec90
016f94e0  ldr x0,[sp, #0x10]
016f94e4  mov w1,#0xffffffff
016f94e8  bl 0x0124c0c0
016f94ec  ldr x19,[sp, #0x10]
016f94f0  orr w1,wzr,#0xfffffffb
016f94f4  mov w2,#0x6e7
016f94f8  mov x0,x19
016f94fc  bl 0x0124a650
016f9500  orr w1,wzr,#0xfffffffe
016f9504  mov x0,x19
016f9508  bl 0x0124c0c0
016f950c  orr w1,wzr,#0xfffffffe
016f9510  mov x0,x19
016f9514  bl 0x0124e920
016f9518  mov w20,w0
016f951c  adrp x1,0x5762000
016f9520  add x1,x1,#0x1cd
016f9524  mov x0,x19
016f9528  bl 0x0124f120
016f952c  orr w1,wzr,#0xfffffffe
016f9530  mov w2,#0x1
016f9534  mov x0,x19
016f9538  bl 0x0124cfc0
016f953c  mov x0,x19
016f9540  mov w1,w20
016f9544  bl 0x0124e060
016f9548  orr w1,wzr,#0xfffffffd
016f954c  mov x0,x19
016f9550  bl 0x0124c4d0
016f9554  ldr x19,[sp, #0x10]
016f9558  orr w1,wzr,#0xfffffffd
016f955c  mov w2,#0x6e7
016f9560  mov x0,x19
016f9564  bl 0x0124a650
016f9568  orr w1,wzr,#0xfffffffe
016f956c  mov x0,x19
016f9570  bl 0x0124c0c0
016f9574  orr w1,wzr,#0xfffffffe
016f9578  mov x0,x19
016f957c  bl 0x0124e920
016f9580  mov w20,w0
016f9584  adrp x1,0x5762000
016f9588  add x1,x1,#0x1cd
016f958c  mov x0,x19
016f9590  bl 0x0124f120
016f9594  orr w1,wzr,#0xfffffffe
016f9598  mov w2,#0x1
016f959c  mov x0,x19
016f95a0  bl 0x0124cfc0
016f95a4  mov x0,x19
016f95a8  mov w1,w20
016f95ac  bl 0x0124e060
016f95b0  orr w1,wzr,#0xfffffffd
016f95b4  mov x0,x19
016f95b8  bl 0x0124c4d0
016f95bc  ldr w8,[sp, #0x18]
016f95c0  ldr x0,[sp, #0x10]
016f95c4  sub w8,w8,#0x3
016f95c8  str w8,[sp, #0x18]
016f95cc  orr w1,wzr,#0xfffffffc
016f95d0  bl 0x0124c4d0
016f95d4  ldr w8,[sp, #0x18]
016f95d8  ldr x0,[sp, #0x10]
016f95dc  str wzr,[sp, #0x18]
016f95e0  cmp w8,#0x1
016f95e4  b.lt 0x016f9608
016f95e8  mvn w1,w8
016f95ec  bl 0x0124c4d0
016f95f0  ldr w8,[sp, #0x18]
016f95f4  cmp w8,#0x1
016f95f8  b.lt 0x016f9608
016f95fc  ldr x0,[sp, #0x10]
016f9600  mvn w1,w8
016f9604  bl 0x0124c4d0
016f9608  ldr w8,[sp, #0x8]
016f960c  cmp w8,#0x1
016f9610  b.lt 0x016f9620
016f9614  ldr x0,[sp]
016f9618  mvn w1,w8
016f961c  bl 0x0124c4d0
016f9620  ldp x29,x30,[sp, #0x30]
016f9624  ldp x20,x19,[sp, #0x20]
016f9628  add sp,sp,#0x40
016f962c  ret
