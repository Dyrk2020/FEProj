// ===== case185-EvacuateItemResObject @ 016ac8b8 =====
// existing function case185-EvacuateItemResObject
016ac8b8  sub sp,sp,#0x40
016ac8bc  str x19,[sp, #0x20]
016ac8c0  stp x29,x30,[sp, #0x30]
016ac8c4  add x29,sp,#0x30
016ac8c8  adrp x1,0x174a000
016ac8cc  add x1,x1,#0x87c
016ac8d0  mov x19,x0
016ac8d4  bl 0x0124ba40
016ac8d8  adrp x1,0x575d000
016ac8dc  add x1,x1,#0xa06
016ac8e0  mov x0,x19
016ac8e4  str x19,[sp]
016ac8e8  bl 0x01251aa0
016ac8ec  mov w8,#0x1
016ac8f0  str w8,[sp, #0x8]
016ac8f4  mov x0,sp
016ac8f8  bl 0x0174aa04
016ac8fc  adrp x1,0x5760000
016ac900  adrp x3,0x736d000
016ac904  add x1,x1,#0xa47
016ac908  add x3,x3,#0x101
016ac90c  add x0,sp,#0x10
016ac910  mov x2,sp
016ac914  bl 0x017b39e4
016ac918  adrp x1,0x5760000
016ac91c  adrp x2,0x17b3000
016ac920  adrp x4,0x17b3000
016ac924  add x1,x1,#0xa5d
016ac928  add x2,x2,#0x79c
016ac92c  add x4,x4,#0x7a4
016ac930  add x0,sp,#0x10
016ac934  mov x3,xzr
016ac938  mov x5,xzr
016ac93c  bl 0x017b35b4
016ac940  adrp x1,0x5760000
016ac944  adrp x2,0x17b3000
016ac948  adrp x4,0x17b3000
016ac94c  add x1,x1,#0xa66
016ac950  add x2,x2,#0x994
016ac954  add x4,x4,#0x99c
016ac958  mov x3,xzr
016ac95c  mov x5,xzr
016ac960  bl 0x017b37ac
016ac964  adrp x1,0x5760000
016ac968  adrp x2,0x17b3000
016ac96c  adrp x4,0x17b3000
016ac970  add x1,x1,#0xa72
016ac974  add x2,x2,#0x9a4
016ac978  add x4,x4,#0x9ac
016ac97c  mov x3,xzr
016ac980  mov x5,xzr
016ac984  bl 0x017b35b4
016ac988  adrp x1,0x5760000
016ac98c  adrp x2,0x17b3000
016ac990  adrp x4,0x17b3000
016ac994  add x1,x1,#0xa7f
016ac998  add x2,x2,#0x9b4
016ac99c  add x4,x4,#0x9bc
016ac9a0  mov x3,xzr
016ac9a4  mov x5,xzr
016ac9a8  bl 0x017b35b4
016ac9ac  adrp x1,0x5760000
016ac9b0  adrp x2,0x17b3000
016ac9b4  adrp x4,0x17b3000
016ac9b8  add x1,x1,#0xa89
016ac9bc  add x2,x2,#0x9c4
016ac9c0  add x4,x4,#0x9cc
016ac9c4  mov x3,xzr
016ac9c8  mov x5,xzr
016ac9cc  bl 0x017b35b4
016ac9d0  adrp x1,0x5760000
016ac9d4  adrp x2,0x17b3000
016ac9d8  adrp x4,0x17b3000
016ac9dc  add x1,x1,#0xa94
016ac9e0  add x2,x2,#0x9d4
016ac9e4  add x4,x4,#0x9dc
016ac9e8  mov x3,xzr
016ac9ec  mov x5,xzr
016ac9f0  bl 0x017b35b4
016ac9f4  mov x19,x0
016ac9f8  ldr w8,[x19, #0x8]
016ac9fc  ldr x0,[x19]
016aca00  sub w8,w8,#0x3
016aca04  str w8,[x19, #0x8]
016aca08  orr w1,wzr,#0xfffffffc
016aca0c  bl 0x0124c4d0
016aca10  ldr w8,[x19, #0x8]
016aca14  ldr x0,[x19]
016aca18  str wzr,[x19, #0x8]
016aca1c  cmp w8,#0x1
016aca20  b.lt 0x016aca2c
016aca24  mvn w1,w8
016aca28  bl 0x0124c4d0
016aca2c  ldr w8,[sp, #0x18]
016aca30  cmp w8,#0x1
016aca34  b.lt 0x016aca44
016aca38  ldr x0,[sp, #0x10]
016aca3c  mvn w1,w8
016aca40  bl 0x0124c4d0
016aca44  ldr w8,[sp, #0x8]
016aca48  cmp w8,#0x1
016aca4c  b.lt 0x016aca5c
016aca50  ldr x0,[sp]
016aca54  mvn w1,w8
016aca58  bl 0x0124c4d0
016aca5c  ldp x29,x30,[sp, #0x30]
016aca60  ldr x19,[sp, #0x20]
016aca64  add sp,sp,#0x40
016aca68  ret
