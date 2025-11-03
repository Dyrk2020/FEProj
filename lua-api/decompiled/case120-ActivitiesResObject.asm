// ===== case120-ActivitiesResObject @ 016a0620 =====
// existing function case120-ActivitiesResObject
016a0620  sub sp,sp,#0x50
016a0624  str x21,[sp, #0x20]
016a0628  stp x20,x19,[sp, #0x30]
016a062c  stp x29,x30,[sp, #0x40]
016a0630  add x29,sp,#0x40
016a0634  adrp x1,0x174a000
016a0638  add x1,x1,#0x87c
016a063c  mov x19,x0
016a0640  bl 0x0124ba40
016a0644  adrp x1,0x575d000
016a0648  add x1,x1,#0xa06
016a064c  mov x0,x19
016a0650  str x19,[sp]
016a0654  bl 0x01251aa0
016a0658  mov w8,#0x1
016a065c  str w8,[sp, #0x8]
016a0660  mov x0,sp
016a0664  bl 0x0174aa04
016a0668  adrp x1,0x575f000
016a066c  adrp x3,0x736d000
016a0670  add x1,x1,#0xc32
016a0674  add x3,x3,#0x101
016a0678  add x0,sp,#0x10
016a067c  mov x2,sp
016a0680  bl 0x01791ef4
016a0684  ldr x0,[sp, #0x10]
016a0688  mov w1,#0x10
016a068c  bl 0x0124cba0
016a0690  adrp x8,0x1791000
016a0694  dup v0.2D,xzr
016a0698  add x8,x8,#0xcec
016a069c  mov v0.D[0x0],x8
016a06a0  str q0,[x0]
016a06a4  ldr x0,[sp, #0x10]
016a06a8  adrp x1,0x1792000
016a06ac  add x1,x1,#0x2b8
016a06b0  mov w2,#0x1
016a06b4  bl 0x0124ec90
016a06b8  ldr x0,[sp, #0x10]
016a06bc  mov w1,#0xffffffff
016a06c0  bl 0x0124c0c0
016a06c4  ldr x19,[sp, #0x10]
016a06c8  orr w1,wzr,#0xfffffffb
016a06cc  mov w2,#0x6e7
016a06d0  mov x0,x19
016a06d4  bl 0x0124a650
016a06d8  orr w1,wzr,#0xfffffffe
016a06dc  mov x0,x19
016a06e0  bl 0x0124c0c0
016a06e4  orr w1,wzr,#0xfffffffe
016a06e8  mov x0,x19
016a06ec  bl 0x0124e920
016a06f0  mov w20,w0
016a06f4  adrp x1,0x59ae000
016a06f8  add x1,x1,#0xf93
016a06fc  mov x0,x19
016a0700  bl 0x0124f120
016a0704  orr w1,wzr,#0xfffffffe
016a0708  mov w2,#0x1
016a070c  mov x0,x19
016a0710  bl 0x0124cfc0
016a0714  mov x0,x19
016a0718  mov w1,w20
016a071c  bl 0x0124e060
016a0720  orr w1,wzr,#0xfffffffd
016a0724  mov x0,x19
016a0728  bl 0x0124c4d0
016a072c  ldr x19,[sp, #0x10]
016a0730  orr w1,wzr,#0xfffffffd
016a0734  mov w2,#0x6e7
016a0738  mov x0,x19
016a073c  bl 0x0124a650
016a0740  orr w1,wzr,#0xfffffffe
016a0744  mov x0,x19
016a0748  bl 0x0124c0c0
016a074c  orr w1,wzr,#0xfffffffe
016a0750  mov x0,x19
016a0754  bl 0x0124e920
016a0758  mov w20,w0
016a075c  adrp x1,0x59ae000
016a0760  add x1,x1,#0xf93
016a0764  mov x0,x19
016a0768  bl 0x0124f120
016a076c  orr w1,wzr,#0xfffffffe
016a0770  mov w2,#0x1
016a0774  mov x0,x19
016a0778  bl 0x0124cfc0
016a077c  mov x0,x19
016a0780  mov w1,w20
016a0784  bl 0x0124e060
016a0788  orr w1,wzr,#0xfffffffd
016a078c  mov x0,x19
016a0790  bl 0x0124c4d0
016a0794  adrp x1,0x575f000
016a0798  adrp x2,0x1791000
016a079c  adrp x4,0x1791000
016a07a0  add x1,x1,#0xc46
016a07a4  add x2,x2,#0xedc
016a07a8  add x4,x4,#0xee4
016a07ac  add x0,sp,#0x10
016a07b0  mov x3,xzr
016a07b4  mov x5,xzr
016a07b8  bl 0x01791cf4
016a07bc  mov x19,x0
016a07c0  ldr x0,[x19]
016a07c4  mov w1,#0x10
016a07c8  bl 0x0124cba0
016a07cc  adrp x8,0x1791000
016a07d0  dup v0.2D,xzr
016a07d4  add x8,x8,#0xeec
016a07d8  mov v0.D[0x0],x8
016a07dc  str q0,[x0]
016a07e0  ldr x0,[x19]
016a07e4  adrp x1,0x1792000
016a07e8  add x1,x1,#0x5fc
016a07ec  mov w2,#0x1
016a07f0  bl 0x0124ec90
016a07f4  ldr x0,[x19]
016a07f8  mov w1,#0xffffffff
016a07fc  bl 0x0124c0c0
016a0800  ldr x20,[x19]
016a0804  orr w1,wzr,#0xfffffffb
016a0808  mov w2,#0x6e7
016a080c  mov x0,x20
016a0810  bl 0x0124a650
016a0814  orr w1,wzr,#0xfffffffe
016a0818  mov x0,x20
016a081c  bl 0x0124c0c0
016a0820  orr w1,wzr,#0xfffffffe
016a0824  mov x0,x20
016a0828  bl 0x0124e920
016a082c  mov w21,w0
016a0830  adrp x1,0x575f000
016a0834  add x1,x1,#0xc54
016a0838  mov x0,x20
016a083c  bl 0x0124f120
016a0840  orr w1,wzr,#0xfffffffe
016a0844  mov w2,#0x1
016a0848  mov x0,x20
016a084c  bl 0x0124cfc0
016a0850  mov x0,x20
016a0854  mov w1,w21
016a0858  bl 0x0124e060
016a085c  orr w1,wzr,#0xfffffffd
016a0860  mov x0,x20
016a0864  bl 0x0124c4d0
016a0868  ldr x20,[x19]
016a086c  orr w1,wzr,#0xfffffffd
016a0870  mov w2,#0x6e7
016a0874  mov x0,x20
016a0878  bl 0x0124a650
016a087c  orr w1,wzr,#0xfffffffe
016a0880  mov x0,x20
016a0884  bl 0x0124c0c0
016a0888  orr w1,wzr,#0xfffffffe
016a088c  mov x0,x20
016a0890  bl 0x0124e920
016a0894  mov w21,w0
016a0898  adrp x1,0x575f000
016a089c  add x1,x1,#0xc54
016a08a0  mov x0,x20
016a08a4  bl 0x0124f120
016a08a8  orr w1,wzr,#0xfffffffe
016a08ac  mov w2,#0x1
016a08b0  mov x0,x20
016a08b4  bl 0x0124cfc0
016a08b8  mov x0,x20
016a08bc  mov w1,w21
016a08c0  bl 0x0124e060
016a08c4  orr w1,wzr,#0xfffffffd
016a08c8  mov x0,x20
016a08cc  bl 0x0124c4d0
016a08d0  ldr w8,[x19, #0x8]
016a08d4  ldr x0,[x19]
016a08d8  sub w8,w8,#0x3
016a08dc  str w8,[x19, #0x8]
016a08e0  orr w1,wzr,#0xfffffffc
016a08e4  bl 0x0124c4d0
016a08e8  ldr w8,[x19, #0x8]
016a08ec  ldr x0,[x19]
016a08f0  str wzr,[x19, #0x8]
016a08f4  cmp w8,#0x1
016a08f8  b.lt 0x016a0904
016a08fc  mvn w1,w8
016a0900  bl 0x0124c4d0
016a0904  ldr w8,[sp, #0x18]
016a0908  cmp w8,#0x1
016a090c  b.lt 0x016a091c
016a0910  ldr x0,[sp, #0x10]
016a0914  mvn w1,w8
016a0918  bl 0x0124c4d0
016a091c  ldr w8,[sp, #0x8]
016a0920  cmp w8,#0x1
016a0924  b.lt 0x016a0934
016a0928  ldr x0,[sp]
016a092c  mvn w1,w8
016a0930  bl 0x0124c4d0
016a0934  ldp x29,x30,[sp, #0x40]
016a0938  ldp x20,x19,[sp, #0x30]
016a093c  ldr x21,[sp, #0x20]
016a0940  add sp,sp,#0x50
016a0944  ret
