// ===== case440-FixObjectMgr @ 016e8528 =====
// existing function case440-FixObjectMgr
016e8528  sub sp,sp,#0x50
016e852c  str x21,[sp, #0x20]
016e8530  stp x20,x19,[sp, #0x30]
016e8534  stp x29,x30,[sp, #0x40]
016e8538  add x29,sp,#0x40
016e853c  adrp x1,0x174a000
016e8540  add x1,x1,#0x87c
016e8544  mov x19,x0
016e8548  bl 0x0124ba40
016e854c  adrp x1,0x575d000
016e8550  add x1,x1,#0xa06
016e8554  mov x0,x19
016e8558  str x19,[sp]
016e855c  bl 0x01251aa0
016e8560  mov w8,#0x1
016e8564  str w8,[sp, #0x8]
016e8568  mov x0,sp
016e856c  bl 0x0174aa04
016e8570  adrp x1,0x5766000
016e8574  adrp x3,0x736d000
016e8578  add x1,x1,#0x8ee
016e857c  add x3,x3,#0x101
016e8580  add x0,sp,#0x10
016e8584  mov x2,sp
016e8588  bl 0x018674dc
016e858c  adrp x1,0x5766000
016e8590  adrp x2,0x1867000
016e8594  adrp x4,0x1867000
016e8598  add x1,x1,#0x8fb
016e859c  add x2,x2,#0x4c4
016e85a0  add x4,x4,#0x4cc
016e85a4  add x0,sp,#0x10
016e85a8  mov x3,xzr
016e85ac  mov x5,xzr
016e85b0  bl 0x018672dc
016e85b4  mov x19,x0
016e85b8  ldr x0,[x19]
016e85bc  mov w1,#0x10
016e85c0  bl 0x0124cba0
016e85c4  adrp x8,0x1867000
016e85c8  dup v0.2D,xzr
016e85cc  add x8,x8,#0x4d4
016e85d0  mov v0.D[0x0],x8
016e85d4  str q0,[x0]
016e85d8  ldr x0,[x19]
016e85dc  adrp x1,0x1867000
016e85e0  add x1,x1,#0xac0
016e85e4  mov w2,#0x1
016e85e8  bl 0x0124ec90
016e85ec  ldr x0,[x19]
016e85f0  mov w1,#0xffffffff
016e85f4  bl 0x0124c0c0
016e85f8  ldr x20,[x19]
016e85fc  orr w1,wzr,#0xfffffffb
016e8600  mov w2,#0x6e7
016e8604  mov x0,x20
016e8608  bl 0x0124a650
016e860c  orr w1,wzr,#0xfffffffe
016e8610  mov x0,x20
016e8614  bl 0x0124c0c0
016e8618  orr w1,wzr,#0xfffffffe
016e861c  mov x0,x20
016e8620  bl 0x0124e920
016e8624  mov w21,w0
016e8628  adrp x1,0x5766000
016e862c  add x1,x1,#0x90c
016e8630  mov x0,x20
016e8634  bl 0x0124f120
016e8638  orr w1,wzr,#0xfffffffe
016e863c  mov w2,#0x1
016e8640  mov x0,x20
016e8644  bl 0x0124cfc0
016e8648  mov x0,x20
016e864c  mov w1,w21
016e8650  bl 0x0124e060
016e8654  orr w1,wzr,#0xfffffffd
016e8658  mov x0,x20
016e865c  bl 0x0124c4d0
016e8660  ldr x20,[x19]
016e8664  orr w1,wzr,#0xfffffffd
016e8668  mov w2,#0x6e7
016e866c  mov x0,x20
016e8670  bl 0x0124a650
016e8674  orr w1,wzr,#0xfffffffe
016e8678  mov x0,x20
016e867c  bl 0x0124c0c0
016e8680  orr w1,wzr,#0xfffffffe
016e8684  mov x0,x20
016e8688  bl 0x0124e920
016e868c  mov w21,w0
016e8690  adrp x1,0x5766000
016e8694  add x1,x1,#0x90c
016e8698  mov x0,x20
016e869c  bl 0x0124f120
016e86a0  orr w1,wzr,#0xfffffffe
016e86a4  mov w2,#0x1
016e86a8  mov x0,x20
016e86ac  bl 0x0124cfc0
016e86b0  mov x0,x20
016e86b4  mov w1,w21
016e86b8  bl 0x0124e060
016e86bc  orr w1,wzr,#0xfffffffd
016e86c0  mov x0,x20
016e86c4  bl 0x0124c4d0
016e86c8  ldr w8,[x19, #0x8]
016e86cc  ldr x0,[x19]
016e86d0  sub w8,w8,#0x3
016e86d4  str w8,[x19, #0x8]
016e86d8  orr w1,wzr,#0xfffffffc
016e86dc  bl 0x0124c4d0
016e86e0  ldr w8,[x19, #0x8]
016e86e4  ldr x0,[x19]
016e86e8  str wzr,[x19, #0x8]
016e86ec  cmp w8,#0x1
016e86f0  b.lt 0x016e86fc
016e86f4  mvn w1,w8
016e86f8  bl 0x0124c4d0
016e86fc  ldr w8,[sp, #0x18]
016e8700  cmp w8,#0x1
016e8704  b.lt 0x016e8714
016e8708  ldr x0,[sp, #0x10]
016e870c  mvn w1,w8
016e8710  bl 0x0124c4d0
016e8714  ldr w8,[sp, #0x8]
016e8718  cmp w8,#0x1
016e871c  b.lt 0x016e872c
016e8720  ldr x0,[sp]
016e8724  mvn w1,w8
016e8728  bl 0x0124c4d0
016e872c  ldp x29,x30,[sp, #0x40]
016e8730  ldp x20,x19,[sp, #0x30]
016e8734  ldr x21,[sp, #0x20]
016e8738  add sp,sp,#0x50
016e873c  ret
