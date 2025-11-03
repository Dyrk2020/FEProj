// ===== case398_FEMsgQueue @ 016df4a0 (DecompileAt3: cleared stale instructions at entry) =====
// removed existing function case398-FEMsgQueue
016df4a0  sub sp,sp,#0x40
016df4a4  stp x20,x19,[sp, #0x20]
016df4a8  stp x29,x30,[sp, #0x30]
016df4ac  add x29,sp,#0x30
016df4b0  adrp x1,0x174a000
016df4b4  add x1,x1,#0x87c
016df4b8  mov x19,x0
016df4bc  bl 0x0124ba40
016df4c0  adrp x1,0x575d000
016df4c4  add x1,x1,#0xa06
016df4c8  mov x0,x19
016df4cc  str x19,[sp]
016df4d0  bl 0x01251aa0
016df4d4  mov w8,#0x1
016df4d8  str w8,[sp, #0x8]
016df4dc  mov x0,sp
016df4e0  bl 0x0174aa04
016df4e4  adrp x1,0x5765000
016df4e8  adrp x3,0x736d000
016df4ec  add x1,x1,#0x738
016df4f0  add x3,x3,#0x101
016df4f4  add x0,sp,#0x10
016df4f8  mov x2,sp
016df4fc  bl 0x01847c94
016df500  ldr x0,[sp, #0x10]
016df504  mov w1,#0x10
016df508  bl 0x0124cba0
016df50c  adrp x8,0x1847000
016df510  dup v0.2D,xzr
016df514  add x8,x8,#0xc8c
016df518  mov v0.D[0x0],x8
016df51c  str q0,[x0]
016df520  ldr x0,[sp, #0x10]
016df524  adrp x1,0x1848000
016df528  add x1,x1,#0x58
016df52c  mov w2,#0x1
016df530  bl 0x0124ec90
016df534  ldr x0,[sp, #0x10]
016df538  mov w1,#0xffffffff
016df53c  bl 0x0124c0c0
016df540  ldr x19,[sp, #0x10]
016df544  orr w1,wzr,#0xfffffffb
016df548  mov w2,#0x6e7
016df54c  mov x0,x19
016df550  bl 0x0124a650
016df554  orr w1,wzr,#0xfffffffe
016df558  mov x0,x19
016df55c  bl 0x0124c0c0
016df560  orr w1,wzr,#0xfffffffe
016df564  mov x0,x19
016df568  bl 0x0124e920
016df56c  mov w20,w0
016df570  adrp x1,0x5765000
016df574  add x1,x1,#0x743
016df578  mov x0,x19
016df57c  bl 0x0124f120
016df580  orr w1,wzr,#0xfffffffe
016df584  mov w2,#0x1
016df588  mov x0,x19
016df58c  bl 0x0124cfc0
016df590  mov x0,x19
016df594  mov w1,w20
016df598  bl 0x0124e060
016df59c  orr w1,wzr,#0xfffffffd
016df5a0  mov x0,x19
016df5a4  bl 0x0124c4d0
016df5a8  ldr x19,[sp, #0x10]
016df5ac  orr w1,wzr,#0xfffffffd
016df5b0  mov w2,#0x6e7
016df5b4  mov x0,x19
016df5b8  bl 0x0124a650
016df5bc  orr w1,wzr,#0xfffffffe
016df5c0  mov x0,x19
016df5c4  bl 0x0124c0c0
016df5c8  orr w1,wzr,#0xfffffffe
016df5cc  mov x0,x19
016df5d0  bl 0x0124e920
016df5d4  mov w20,w0
016df5d8  adrp x1,0x5765000
016df5dc  add x1,x1,#0x743
016df5e0  mov x0,x19
016df5e4  bl 0x0124f120
016df5e8  orr w1,wzr,#0xfffffffe
016df5ec  mov w2,#0x1
016df5f0  mov x0,x19
016df5f4  bl 0x0124cfc0
016df5f8  mov x0,x19
016df5fc  mov w1,w20
016df600  bl 0x0124e060
016df604  orr w1,wzr,#0xfffffffd
016df608  mov x0,x19
016df60c  bl 0x0124c4d0
016df610  ldr w8,[sp, #0x18]
016df614  ldr x0,[sp, #0x10]
016df618  sub w8,w8,#0x3
016df61c  str w8,[sp, #0x18]
016df620  orr w1,wzr,#0xfffffffc
016df624  bl 0x0124c4d0
016df628  ldr w8,[sp, #0x18]
016df62c  ldr x0,[sp, #0x10]
016df630  str wzr,[sp, #0x18]
016df634  cmp w8,#0x1
016df638  b.lt 0x016df65c
016df63c  mvn w1,w8
016df640  bl 0x0124c4d0
016df644  ldr w8,[sp, #0x18]
016df648  cmp w8,#0x1
016df64c  b.lt 0x016df65c
016df650  ldr x0,[sp, #0x10]
016df654  mvn w1,w8
016df658  bl 0x0124c4d0
016df65c  ldr w8,[sp, #0x8]
016df660  cmp w8,#0x1
016df664  b.lt 0x016df674
016df668  ldr x0,[sp]
016df66c  mvn w1,w8
016df670  bl 0x0124c4d0
016df674  ldp x29,x30,[sp, #0x30]
016df678  ldp x20,x19,[sp, #0x20]
016df67c  add sp,sp,#0x40
016df680  ret
