// ===== case190-SlotGemBlackConfigItem @ 016ad4b4 =====
// existing function case190-SlotGemBlackConfigItem
016ad4b4  sub sp,sp,#0x40
016ad4b8  stp x20,x19,[sp, #0x20]
016ad4bc  stp x29,x30,[sp, #0x30]
016ad4c0  add x29,sp,#0x30
016ad4c4  adrp x1,0x174a000
016ad4c8  add x1,x1,#0x87c
016ad4cc  mov x19,x0
016ad4d0  bl 0x0124ba40
016ad4d4  adrp x1,0x575d000
016ad4d8  add x1,x1,#0xa06
016ad4dc  mov x0,x19
016ad4e0  str x19,[sp]
016ad4e4  bl 0x01251aa0
016ad4e8  mov w8,#0x1
016ad4ec  str w8,[sp, #0x8]
016ad4f0  mov x0,sp
016ad4f4  bl 0x0174aa04
016ad4f8  adrp x1,0x5760000
016ad4fc  adrp x3,0x736d000
016ad500  add x1,x1,#0xb2e
016ad504  add x3,x3,#0x101
016ad508  add x0,sp,#0x10
016ad50c  mov x2,sp
016ad510  bl 0x017b6244
016ad514  ldr x0,[sp, #0x10]
016ad518  mov w1,#0x10
016ad51c  bl 0x0124cba0
016ad520  adrp x8,0x17b6000
016ad524  dup v0.2D,xzr
016ad528  add x8,x8,#0x23c
016ad52c  mov v0.D[0x0],x8
016ad530  str q0,[x0]
016ad534  ldr x0,[sp, #0x10]
016ad538  adrp x1,0x17b6000
016ad53c  add x1,x1,#0x608
016ad540  mov w2,#0x1
016ad544  bl 0x0124ec90
016ad548  ldr x0,[sp, #0x10]
016ad54c  mov w1,#0xffffffff
016ad550  bl 0x0124c0c0
016ad554  ldr x19,[sp, #0x10]
016ad558  orr w1,wzr,#0xfffffffb
016ad55c  mov w2,#0x6e7
016ad560  mov x0,x19
016ad564  bl 0x0124a650
016ad568  orr w1,wzr,#0xfffffffe
016ad56c  mov x0,x19
016ad570  bl 0x0124c0c0
016ad574  orr w1,wzr,#0xfffffffe
016ad578  mov x0,x19
016ad57c  bl 0x0124e920
016ad580  mov w20,w0
016ad584  adrp x1,0x5760000
016ad588  add x1,x1,#0xb45
016ad58c  mov x0,x19
016ad590  bl 0x0124f120
016ad594  orr w1,wzr,#0xfffffffe
016ad598  mov w2,#0x1
016ad59c  mov x0,x19
016ad5a0  bl 0x0124cfc0
016ad5a4  mov x0,x19
016ad5a8  mov w1,w20
016ad5ac  bl 0x0124e060
016ad5b0  orr w1,wzr,#0xfffffffd
016ad5b4  mov x0,x19
016ad5b8  bl 0x0124c4d0
016ad5bc  ldr x19,[sp, #0x10]
016ad5c0  orr w1,wzr,#0xfffffffd
016ad5c4  mov w2,#0x6e7
016ad5c8  mov x0,x19
016ad5cc  bl 0x0124a650
016ad5d0  orr w1,wzr,#0xfffffffe
016ad5d4  mov x0,x19
016ad5d8  bl 0x0124c0c0
016ad5dc  orr w1,wzr,#0xfffffffe
016ad5e0  mov x0,x19
016ad5e4  bl 0x0124e920
016ad5e8  mov w20,w0
016ad5ec  adrp x1,0x5760000
016ad5f0  add x1,x1,#0xb45
016ad5f4  mov x0,x19
016ad5f8  bl 0x0124f120
016ad5fc  orr w1,wzr,#0xfffffffe
016ad600  mov w2,#0x1
016ad604  mov x0,x19
016ad608  bl 0x0124cfc0
016ad60c  mov x0,x19
016ad610  mov w1,w20
016ad614  bl 0x0124e060
016ad618  orr w1,wzr,#0xfffffffd
016ad61c  mov x0,x19
016ad620  bl 0x0124c4d0
016ad624  ldr w8,[sp, #0x18]
016ad628  ldr x0,[sp, #0x10]
016ad62c  sub w8,w8,#0x3
016ad630  str w8,[sp, #0x18]
016ad634  orr w1,wzr,#0xfffffffc
016ad638  bl 0x0124c4d0
016ad63c  ldr w8,[sp, #0x18]
016ad640  ldr x0,[sp, #0x10]
016ad644  str wzr,[sp, #0x18]
016ad648  cmp w8,#0x1
016ad64c  b.lt 0x016ad670
016ad650  mvn w1,w8
016ad654  bl 0x0124c4d0
016ad658  ldr w8,[sp, #0x18]
016ad65c  cmp w8,#0x1
016ad660  b.lt 0x016ad670
016ad664  ldr x0,[sp, #0x10]
016ad668  mvn w1,w8
016ad66c  bl 0x0124c4d0
016ad670  ldr w8,[sp, #0x8]
016ad674  cmp w8,#0x1
016ad678  b.lt 0x016ad688
016ad67c  ldr x0,[sp]
016ad680  mvn w1,w8
016ad684  bl 0x0124c4d0
016ad688  ldp x29,x30,[sp, #0x30]
016ad68c  ldp x20,x19,[sp, #0x20]
016ad690  add sp,sp,#0x40
016ad694  ret
