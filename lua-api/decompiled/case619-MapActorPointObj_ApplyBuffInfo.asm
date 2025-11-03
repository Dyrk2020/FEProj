// ===== case619-MapActorPointObj_ApplyBuffInfo @ 0170b868 =====
// existing function case619-MapActorPointObj_ApplyBuffInfo
0170b868  sub sp,sp,#0x40
0170b86c  stp x20,x19,[sp, #0x20]
0170b870  stp x29,x30,[sp, #0x30]
0170b874  add x29,sp,#0x30
0170b878  adrp x1,0x174a000
0170b87c  add x1,x1,#0x87c
0170b880  mov x19,x0
0170b884  bl 0x0124ba40
0170b888  adrp x1,0x575d000
0170b88c  add x1,x1,#0xa06
0170b890  mov x0,x19
0170b894  str x19,[sp]
0170b898  bl 0x01251aa0
0170b89c  mov w8,#0x1
0170b8a0  str w8,[sp, #0x8]
0170b8a4  mov x0,sp
0170b8a8  bl 0x0174aa04
0170b8ac  adrp x1,0x576a000
0170b8b0  adrp x3,0x736d000
0170b8b4  add x1,x1,#0x674
0170b8b8  add x3,x3,#0x101
0170b8bc  add x0,sp,#0x10
0170b8c0  mov x2,sp
0170b8c4  bl 0x018ff9f8
0170b8c8  ldr x0,[sp, #0x10]
0170b8cc  mov w1,#0x10
0170b8d0  bl 0x0124cba0
0170b8d4  adrp x8,0x18ff000
0170b8d8  dup v0.2D,xzr
0170b8dc  add x8,x8,#0x5f0
0170b8e0  mov v0.D[0x0],x8
0170b8e4  str q0,[x0]
0170b8e8  ldr x0,[sp, #0x10]
0170b8ec  adrp x1,0x18ff000
0170b8f0  add x1,x1,#0xdbc
0170b8f4  mov w2,#0x1
0170b8f8  bl 0x0124ec90
0170b8fc  ldr x0,[sp, #0x10]
0170b900  mov w1,#0xffffffff
0170b904  bl 0x0124c0c0
0170b908  ldr x19,[sp, #0x10]
0170b90c  orr w1,wzr,#0xfffffffb
0170b910  mov w2,#0x6e7
0170b914  mov x0,x19
0170b918  bl 0x0124a650
0170b91c  orr w1,wzr,#0xfffffffe
0170b920  mov x0,x19
0170b924  bl 0x0124c0c0
0170b928  orr w1,wzr,#0xfffffffe
0170b92c  mov x0,x19
0170b930  bl 0x0124e920
0170b934  mov w20,w0
0170b938  adrp x1,0x5766000
0170b93c  add x1,x1,#0xe6a
0170b940  mov x0,x19
0170b944  bl 0x0124f120
0170b948  orr w1,wzr,#0xfffffffe
0170b94c  mov w2,#0x1
0170b950  mov x0,x19
0170b954  bl 0x0124cfc0
0170b958  mov x0,x19
0170b95c  mov w1,w20
0170b960  bl 0x0124e060
0170b964  orr w1,wzr,#0xfffffffd
0170b968  mov x0,x19
0170b96c  bl 0x0124c4d0
0170b970  ldr x19,[sp, #0x10]
0170b974  orr w1,wzr,#0xfffffffd
0170b978  mov w2,#0x6e7
0170b97c  mov x0,x19
0170b980  bl 0x0124a650
0170b984  orr w1,wzr,#0xfffffffe
0170b988  mov x0,x19
0170b98c  bl 0x0124c0c0
0170b990  orr w1,wzr,#0xfffffffe
0170b994  mov x0,x19
0170b998  bl 0x0124e920
0170b99c  mov w20,w0
0170b9a0  adrp x1,0x5766000
0170b9a4  add x1,x1,#0xe6a
0170b9a8  mov x0,x19
0170b9ac  bl 0x0124f120
0170b9b0  orr w1,wzr,#0xfffffffe
0170b9b4  mov w2,#0x1
0170b9b8  mov x0,x19
0170b9bc  bl 0x0124cfc0
0170b9c0  mov x0,x19
0170b9c4  mov w1,w20
0170b9c8  bl 0x0124e060
0170b9cc  orr w1,wzr,#0xfffffffd
0170b9d0  mov x0,x19
0170b9d4  bl 0x0124c4d0
0170b9d8  adrp x1,0x5766000
0170b9dc  adrp x2,0x18ff000
0170b9e0  adrp x4,0x18ff000
0170b9e4  add x1,x1,#0xdbe
0170b9e8  add x2,x2,#0x7e0
0170b9ec  add x4,x4,#0x7e8
0170b9f0  add x0,sp,#0x10
0170b9f4  mov x3,xzr
0170b9f8  mov x5,xzr
0170b9fc  bl 0x018ff5f8
0170ba00  adrp x1,0x576a000
0170ba04  adrp x2,0x18ff000
0170ba08  adrp x4,0x18ff000
0170ba0c  add x1,x1,#0x693
0170ba10  add x2,x2,#0x7f0
0170ba14  add x4,x4,#0x7f8
0170ba18  mov x3,xzr
0170ba1c  mov x5,xzr
0170ba20  bl 0x018ff5f8
0170ba24  adrp x1,0x576a000
0170ba28  adrp x2,0x18ff000
0170ba2c  adrp x4,0x18ff000
0170ba30  add x1,x1,#0x6a4
0170ba34  add x2,x2,#0x9e8
0170ba38  add x4,x4,#0x9f0
0170ba3c  mov x3,xzr
0170ba40  mov x5,xzr
0170ba44  bl 0x018ff800
0170ba48  mov x19,x0
0170ba4c  ldr w8,[x19, #0x8]
0170ba50  ldr x0,[x19]
0170ba54  sub w8,w8,#0x3
0170ba58  str w8,[x19, #0x8]
0170ba5c  orr w1,wzr,#0xfffffffc
0170ba60  bl 0x0124c4d0
0170ba64  ldr w8,[x19, #0x8]
0170ba68  ldr x0,[x19]
0170ba6c  str wzr,[x19, #0x8]
0170ba70  cmp w8,#0x1
0170ba74  b.lt 0x0170ba80
0170ba78  mvn w1,w8
0170ba7c  bl 0x0124c4d0
0170ba80  ldr w8,[sp, #0x18]
0170ba84  cmp w8,#0x1
0170ba88  b.lt 0x0170ba98
0170ba8c  ldr x0,[sp, #0x10]
0170ba90  mvn w1,w8
0170ba94  bl 0x0124c4d0
0170ba98  ldr w8,[sp, #0x8]
0170ba9c  cmp w8,#0x1
0170baa0  b.lt 0x0170bab0
0170baa4  ldr x0,[sp]
0170baa8  mvn w1,w8
0170baac  bl 0x0124c4d0
0170bab0  ldp x29,x30,[sp, #0x30]
0170bab4  ldp x20,x19,[sp, #0x20]
0170bab8  add sp,sp,#0x40
0170babc  ret
