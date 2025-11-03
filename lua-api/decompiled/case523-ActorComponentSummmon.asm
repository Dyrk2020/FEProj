// ===== case523-ActorComponentSummmon @ 016f8484 =====
// existing function case523-ActorComponentSummmon
016f8484  sub sp,sp,#0x50
016f8488  str x21,[sp, #0x20]
016f848c  stp x20,x19,[sp, #0x30]
016f8490  stp x29,x30,[sp, #0x40]
016f8494  add x29,sp,#0x40
016f8498  adrp x1,0x174a000
016f849c  add x1,x1,#0x87c
016f84a0  mov x19,x0
016f84a4  bl 0x0124ba40
016f84a8  adrp x1,0x575d000
016f84ac  add x1,x1,#0xa06
016f84b0  mov x0,x19
016f84b4  str x19,[sp]
016f84b8  bl 0x01251aa0
016f84bc  mov w8,#0x1
016f84c0  str w8,[sp, #0x8]
016f84c4  mov x0,sp
016f84c8  bl 0x0174aa04
016f84cc  adrp x1,0x5768000
016f84d0  adrp x3,0x736d000
016f84d4  add x1,x1,#0x98f
016f84d8  add x3,x3,#0x101
016f84dc  add x0,sp,#0x10
016f84e0  mov x2,sp
016f84e4  bl 0x018ac3cc
016f84e8  adrp x1,0x5768000
016f84ec  adrp x2,0x18ac000
016f84f0  adrp x4,0x18ac000
016f84f4  add x1,x1,#0x9a5
016f84f8  add x2,x2,#0x1bc
016f84fc  add x4,x4,#0x1c4
016f8500  add x0,sp,#0x10
016f8504  mov x3,xzr
016f8508  mov x5,xzr
016f850c  bl 0x018abfd4
016f8510  adrp x1,0x5768000
016f8514  adrp x2,0x18ac000
016f8518  adrp x4,0x18ac000
016f851c  add x1,x1,#0x9b3
016f8520  add x2,x2,#0x3b4
016f8524  add x4,x4,#0x3bc
016f8528  mov x3,xzr
016f852c  mov x5,xzr
016f8530  bl 0x018ac1cc
016f8534  mov x19,x0
016f8538  ldr x0,[x19]
016f853c  mov w1,#0x10
016f8540  bl 0x0124cba0
016f8544  adrp x8,0x18ac000
016f8548  dup v0.2D,xzr
016f854c  add x8,x8,#0x3c4
016f8550  mov v0.D[0x0],x8
016f8554  str q0,[x0]
016f8558  ldr x0,[x19]
016f855c  adrp x1,0x18ac000
016f8560  add x1,x1,#0xbfc
016f8564  mov w2,#0x1
016f8568  bl 0x0124ec90
016f856c  ldr x0,[x19]
016f8570  mov w1,#0xffffffff
016f8574  bl 0x0124c0c0
016f8578  ldr x20,[x19]
016f857c  orr w1,wzr,#0xfffffffb
016f8580  mov w2,#0x6e7
016f8584  mov x0,x20
016f8588  bl 0x0124a650
016f858c  orr w1,wzr,#0xfffffffe
016f8590  mov x0,x20
016f8594  bl 0x0124c0c0
016f8598  orr w1,wzr,#0xfffffffe
016f859c  mov x0,x20
016f85a0  bl 0x0124e920
016f85a4  mov w21,w0
016f85a8  adrp x1,0x5768000
016f85ac  add x1,x1,#0x9be
016f85b0  mov x0,x20
016f85b4  bl 0x0124f120
016f85b8  orr w1,wzr,#0xfffffffe
016f85bc  mov w2,#0x1
016f85c0  mov x0,x20
016f85c4  bl 0x0124cfc0
016f85c8  mov x0,x20
016f85cc  mov w1,w21
016f85d0  bl 0x0124e060
016f85d4  orr w1,wzr,#0xfffffffd
016f85d8  mov x0,x20
016f85dc  bl 0x0124c4d0
016f85e0  ldr x20,[x19]
016f85e4  orr w1,wzr,#0xfffffffd
016f85e8  mov w2,#0x6e7
016f85ec  mov x0,x20
016f85f0  bl 0x0124a650
016f85f4  orr w1,wzr,#0xfffffffe
016f85f8  mov x0,x20
016f85fc  bl 0x0124c0c0
016f8600  orr w1,wzr,#0xfffffffe
016f8604  mov x0,x20
016f8608  bl 0x0124e920
016f860c  mov w21,w0
016f8610  adrp x1,0x5768000
016f8614  add x1,x1,#0x9be
016f8618  mov x0,x20
016f861c  bl 0x0124f120
016f8620  orr w1,wzr,#0xfffffffe
016f8624  mov w2,#0x1
016f8628  mov x0,x20
016f862c  bl 0x0124cfc0
016f8630  mov x0,x20
016f8634  mov w1,w21
016f8638  bl 0x0124e060
016f863c  orr w1,wzr,#0xfffffffd
016f8640  mov x0,x20
016f8644  bl 0x0124c4d0
016f8648  ldr w8,[x19, #0x8]
016f864c  ldr x0,[x19]
016f8650  sub w8,w8,#0x3
016f8654  str w8,[x19, #0x8]
016f8658  orr w1,wzr,#0xfffffffc
016f865c  bl 0x0124c4d0
016f8660  ldr w8,[x19, #0x8]
016f8664  ldr x0,[x19]
016f8668  str wzr,[x19, #0x8]
016f866c  cmp w8,#0x1
016f8670  b.lt 0x016f867c
016f8674  mvn w1,w8
016f8678  bl 0x0124c4d0
016f867c  ldr w8,[sp, #0x18]
016f8680  cmp w8,#0x1
016f8684  b.lt 0x016f8694
016f8688  ldr x0,[sp, #0x10]
016f868c  mvn w1,w8
016f8690  bl 0x0124c4d0
016f8694  ldr w8,[sp, #0x8]
016f8698  cmp w8,#0x1
016f869c  b.lt 0x016f86ac
016f86a0  ldr x0,[sp]
016f86a4  mvn w1,w8
016f86a8  bl 0x0124c4d0
016f86ac  ldp x29,x30,[sp, #0x40]
016f86b0  ldp x20,x19,[sp, #0x30]
016f86b4  ldr x21,[sp, #0x20]
016f86b8  add sp,sp,#0x50
016f86bc  ret
