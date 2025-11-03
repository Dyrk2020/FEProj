// ===== case383-DcWardActor @ 016d8564 =====
// existing function case383-DcWardActor
016d8564  sub sp,sp,#0x40
016d8568  str x19,[sp, #0x20]
016d856c  stp x29,x30,[sp, #0x30]
016d8570  add x29,sp,#0x30
016d8574  adrp x1,0x174a000
016d8578  add x1,x1,#0x87c
016d857c  mov x19,x0
016d8580  bl 0x0124ba40
016d8584  adrp x1,0x575d000
016d8588  add x1,x1,#0xa06
016d858c  mov x0,x19
016d8590  str x19,[sp]
016d8594  bl 0x01251aa0
016d8598  mov w8,#0x1
016d859c  str w8,[sp, #0x8]
016d85a0  mov x0,sp
016d85a4  bl 0x0174aa04
016d85a8  adrp x1,0x5764000
016d85ac  adrp x3,0x736d000
016d85b0  add x1,x1,#0xf04
016d85b4  add x3,x3,#0x101
016d85b8  add x0,sp,#0x10
016d85bc  mov x2,sp
016d85c0  bl 0x01838218
016d85c4  adrp x1,0x575d000
016d85c8  adrp x2,0x1837000
016d85cc  adrp x4,0x1837000
016d85d0  add x1,x1,#0xe39
016d85d4  add x2,x2,#0xfb0
016d85d8  add x4,x4,#0xfb8
016d85dc  add x0,sp,#0x10
016d85e0  mov x3,xzr
016d85e4  mov x5,xzr
016d85e8  bl 0x01837dc8
016d85ec  adrp x1,0x5764000
016d85f0  adrp x2,0x1837000
016d85f4  adrp x4,0x1837000
016d85f8  add x1,x1,#0xe69
016d85fc  add x2,x2,#0xfc0
016d8600  add x4,x4,#0xfc8
016d8604  mov x3,xzr
016d8608  mov x5,xzr
016d860c  bl 0x01837dc8
016d8610  adrp x1,0x5764000
016d8614  adrp x2,0x1837000
016d8618  adrp x4,0x1837000
016d861c  add x1,x1,#0xe7a
016d8620  add x2,x2,#0xfd0
016d8624  add x4,x4,#0xfd8
016d8628  mov x3,xzr
016d862c  mov x5,xzr
016d8630  bl 0x01837dc8
016d8634  adrp x1,0x5764000
016d8638  adrp x2,0x1837000
016d863c  adrp x4,0x1837000
016d8640  add x1,x1,#0xe8c
016d8644  add x2,x2,#0xfe0
016d8648  add x4,x4,#0xfe8
016d864c  mov x3,xzr
016d8650  mov x5,xzr
016d8654  bl 0x01837dc8
016d8658  adrp x1,0x575f000
016d865c  adrp x2,0x1837000
016d8660  adrp x4,0x1837000
016d8664  add x1,x1,#0x8f
016d8668  add x2,x2,#0xff0
016d866c  add x4,x4,#0xff8
016d8670  mov x3,xzr
016d8674  mov x5,xzr
016d8678  bl 0x01837dc8
016d867c  adrp x1,0x5764000
016d8680  adrp x2,0x1838000
016d8684  adrp x4,0x1838000
016d8688  add x1,x1,#0xe96
016d868c  add x2,x2,#0x1e8
016d8690  add x4,x4,#0x1fc
016d8694  mov x3,xzr
016d8698  mov x5,xzr
016d869c  bl 0x01838000
016d86a0  mov x19,x0
016d86a4  ldr w8,[x19, #0x8]
016d86a8  ldr x0,[x19]
016d86ac  sub w8,w8,#0x3
016d86b0  str w8,[x19, #0x8]
016d86b4  orr w1,wzr,#0xfffffffc
016d86b8  bl 0x0124c4d0
016d86bc  ldr w8,[x19, #0x8]
016d86c0  ldr x0,[x19]
016d86c4  str wzr,[x19, #0x8]
016d86c8  cmp w8,#0x1
016d86cc  b.lt 0x016d86d8
016d86d0  mvn w1,w8
016d86d4  bl 0x0124c4d0
016d86d8  ldr w8,[sp, #0x18]
016d86dc  cmp w8,#0x1
016d86e0  b.lt 0x016d86f0
016d86e4  ldr x0,[sp, #0x10]
016d86e8  mvn w1,w8
016d86ec  bl 0x0124c4d0
016d86f0  ldr w8,[sp, #0x8]
016d86f4  cmp w8,#0x1
016d86f8  b.lt 0x016d8708
016d86fc  ldr x0,[sp]
016d8700  mvn w1,w8
016d8704  bl 0x0124c4d0
016d8708  ldp x29,x30,[sp, #0x30]
016d870c  ldr x19,[sp, #0x20]
016d8710  add sp,sp,#0x40
016d8714  ret
