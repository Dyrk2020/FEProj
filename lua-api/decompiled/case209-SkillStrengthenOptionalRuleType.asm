// ===== case209-SkillStrengthenOptionalRuleType @ 016b06c8 =====
// existing function case209-SkillStrengthenOptionalRuleType
016b06c8  sub sp,sp,#0x50
016b06cc  str x21,[sp, #0x20]
016b06d0  stp x20,x19,[sp, #0x30]
016b06d4  stp x29,x30,[sp, #0x40]
016b06d8  add x29,sp,#0x40
016b06dc  adrp x1,0x174a000
016b06e0  add x1,x1,#0x87c
016b06e4  mov x19,x0
016b06e8  bl 0x0124ba40
016b06ec  adrp x1,0x575d000
016b06f0  add x1,x1,#0xa06
016b06f4  mov x0,x19
016b06f8  str x19,[sp]
016b06fc  bl 0x01251aa0
016b0700  mov w8,#0x1
016b0704  str w8,[sp, #0x8]
016b0708  mov x0,sp
016b070c  bl 0x0174aa04
016b0710  adrp x1,0x5760000
016b0714  adrp x3,0x736d000
016b0718  add x1,x1,#0xea5
016b071c  add x3,x3,#0x101
016b0720  add x0,sp,#0x10
016b0724  mov x2,sp
016b0728  bl 0x017bf440
016b072c  adrp x1,0x5760000
016b0730  adrp x2,0x17bf000
016b0734  adrp x4,0x17bf000
016b0738  add x1,x1,#0xe7f
016b073c  add x2,x2,#0x428
016b0740  add x4,x4,#0x430
016b0744  add x0,sp,#0x10
016b0748  mov x3,xzr
016b074c  mov x5,xzr
016b0750  bl 0x017bf240
016b0754  mov x19,x0
016b0758  ldr x0,[x19]
016b075c  mov w1,#0x10
016b0760  bl 0x0124cba0
016b0764  adrp x8,0x17bf000
016b0768  dup v0.2D,xzr
016b076c  add x8,x8,#0x438
016b0770  mov v0.D[0x0],x8
016b0774  str q0,[x0]
016b0778  ldr x0,[x19]
016b077c  adrp x1,0x17bf000
016b0780  add x1,x1,#0xa24
016b0784  mov w2,#0x1
016b0788  bl 0x0124ec90
016b078c  ldr x0,[x19]
016b0790  mov w1,#0xffffffff
016b0794  bl 0x0124c0c0
016b0798  ldr x20,[x19]
016b079c  orr w1,wzr,#0xfffffffb
016b07a0  mov w2,#0x6e7
016b07a4  mov x0,x20
016b07a8  bl 0x0124a650
016b07ac  orr w1,wzr,#0xfffffffe
016b07b0  mov x0,x20
016b07b4  bl 0x0124c0c0
016b07b8  orr w1,wzr,#0xfffffffe
016b07bc  mov x0,x20
016b07c0  bl 0x0124e920
016b07c4  mov w21,w0
016b07c8  adrp x1,0x5760000
016b07cc  add x1,x1,#0xec5
016b07d0  mov x0,x20
016b07d4  bl 0x0124f120
016b07d8  orr w1,wzr,#0xfffffffe
016b07dc  mov w2,#0x1
016b07e0  mov x0,x20
016b07e4  bl 0x0124cfc0
016b07e8  mov x0,x20
016b07ec  mov w1,w21
016b07f0  bl 0x0124e060
016b07f4  orr w1,wzr,#0xfffffffd
016b07f8  mov x0,x20
016b07fc  bl 0x0124c4d0
016b0800  ldr x20,[x19]
016b0804  orr w1,wzr,#0xfffffffd
016b0808  mov w2,#0x6e7
016b080c  mov x0,x20
016b0810  bl 0x0124a650
016b0814  orr w1,wzr,#0xfffffffe
016b0818  mov x0,x20
016b081c  bl 0x0124c0c0
016b0820  orr w1,wzr,#0xfffffffe
016b0824  mov x0,x20
016b0828  bl 0x0124e920
016b082c  mov w21,w0
016b0830  adrp x1,0x5760000
016b0834  add x1,x1,#0xec5
016b0838  mov x0,x20
016b083c  bl 0x0124f120
016b0840  orr w1,wzr,#0xfffffffe
016b0844  mov w2,#0x1
016b0848  mov x0,x20
016b084c  bl 0x0124cfc0
016b0850  mov x0,x20
016b0854  mov w1,w21
016b0858  bl 0x0124e060
016b085c  orr w1,wzr,#0xfffffffd
016b0860  mov x0,x20
016b0864  bl 0x0124c4d0
016b0868  ldr w8,[x19, #0x8]
016b086c  ldr x0,[x19]
016b0870  sub w8,w8,#0x3
016b0874  str w8,[x19, #0x8]
016b0878  orr w1,wzr,#0xfffffffc
016b087c  bl 0x0124c4d0
016b0880  ldr w8,[x19, #0x8]
016b0884  ldr x0,[x19]
016b0888  str wzr,[x19, #0x8]
016b088c  cmp w8,#0x1
016b0890  b.lt 0x016b089c
016b0894  mvn w1,w8
016b0898  bl 0x0124c4d0
016b089c  ldr w8,[sp, #0x18]
016b08a0  cmp w8,#0x1
016b08a4  b.lt 0x016b08b4
016b08a8  ldr x0,[sp, #0x10]
016b08ac  mvn w1,w8
016b08b0  bl 0x0124c4d0
016b08b4  ldr w8,[sp, #0x8]
016b08b8  cmp w8,#0x1
016b08bc  b.lt 0x016b08cc
016b08c0  ldr x0,[sp]
016b08c4  mvn w1,w8
016b08c8  bl 0x0124c4d0
016b08cc  ldp x29,x30,[sp, #0x40]
016b08d0  ldp x20,x19,[sp, #0x30]
016b08d4  ldr x21,[sp, #0x20]
016b08d8  add sp,sp,#0x50
016b08dc  ret
