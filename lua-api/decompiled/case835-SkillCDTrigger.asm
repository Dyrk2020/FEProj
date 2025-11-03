// ===== case835-SkillCDTrigger @ 0173b8d0 =====
// existing function case835-SkillCDTrigger
0173b8d0  sub sp,sp,#0x40
0173b8d4  stp x20,x19,[sp, #0x20]
0173b8d8  stp x29,x30,[sp, #0x30]
0173b8dc  add x29,sp,#0x30
0173b8e0  adrp x1,0x174a000
0173b8e4  add x1,x1,#0x87c
0173b8e8  mov x19,x0
0173b8ec  bl 0x0124ba40
0173b8f0  adrp x1,0x575d000
0173b8f4  add x1,x1,#0xa06
0173b8f8  mov x0,x19
0173b8fc  str x19,[sp]
0173b900  bl 0x01251aa0
0173b904  mov w8,#0x1
0173b908  str w8,[sp, #0x8]
0173b90c  mov x0,sp
0173b910  bl 0x0174aa04
0173b914  adrp x1,0x5772000
0173b918  adrp x3,0x736d000
0173b91c  add x1,x1,#0xc77
0173b920  add x3,x3,#0x101
0173b924  add x0,sp,#0x10
0173b928  mov x2,sp
0173b92c  bl 0x019da374
0173b930  ldr x0,[sp, #0x10]
0173b934  mov w1,#0x10
0173b938  bl 0x0124cba0
0173b93c  adrp x8,0x19d9000
0173b940  dup v0.2D,xzr
0173b944  add x8,x8,#0xf7c
0173b948  mov v0.D[0x0],x8
0173b94c  str q0,[x0]
0173b950  ldr x0,[sp, #0x10]
0173b954  adrp x1,0x19da000
0173b958  add x1,x1,#0x738
0173b95c  mov w2,#0x1
0173b960  bl 0x0124ec90
0173b964  ldr x0,[sp, #0x10]
0173b968  mov w1,#0xffffffff
0173b96c  bl 0x0124c0c0
0173b970  ldr x19,[sp, #0x10]
0173b974  orr w1,wzr,#0xfffffffb
0173b978  mov w2,#0x6e7
0173b97c  mov x0,x19
0173b980  bl 0x0124a650
0173b984  orr w1,wzr,#0xfffffffe
0173b988  mov x0,x19
0173b98c  bl 0x0124c0c0
0173b990  orr w1,wzr,#0xfffffffe
0173b994  mov x0,x19
0173b998  bl 0x0124e920
0173b99c  mov w20,w0
0173b9a0  adrp x1,0x5772000
0173b9a4  add x1,x1,#0xc86
0173b9a8  mov x0,x19
0173b9ac  bl 0x0124f120
0173b9b0  orr w1,wzr,#0xfffffffe
0173b9b4  mov w2,#0x1
0173b9b8  mov x0,x19
0173b9bc  bl 0x0124cfc0
0173b9c0  mov x0,x19
0173b9c4  mov w1,w20
0173b9c8  bl 0x0124e060
0173b9cc  orr w1,wzr,#0xfffffffd
0173b9d0  mov x0,x19
0173b9d4  bl 0x0124c4d0
0173b9d8  ldr x19,[sp, #0x10]
0173b9dc  orr w1,wzr,#0xfffffffd
0173b9e0  mov w2,#0x6e7
0173b9e4  mov x0,x19
0173b9e8  bl 0x0124a650
0173b9ec  orr w1,wzr,#0xfffffffe
0173b9f0  mov x0,x19
0173b9f4  bl 0x0124c0c0
0173b9f8  orr w1,wzr,#0xfffffffe
0173b9fc  mov x0,x19
0173ba00  bl 0x0124e920
0173ba04  mov w20,w0
0173ba08  adrp x1,0x5772000
0173ba0c  add x1,x1,#0xc86
0173ba10  mov x0,x19
0173ba14  bl 0x0124f120
0173ba18  orr w1,wzr,#0xfffffffe
0173ba1c  mov w2,#0x1
0173ba20  mov x0,x19
0173ba24  bl 0x0124cfc0
0173ba28  mov x0,x19
0173ba2c  mov w1,w20
0173ba30  bl 0x0124e060
0173ba34  orr w1,wzr,#0xfffffffd
0173ba38  mov x0,x19
0173ba3c  bl 0x0124c4d0
0173ba40  adrp x1,0x5772000
0173ba44  adrp x2,0x19da000
0173ba48  add x1,x1,#0xc8d
0173ba4c  add x2,x2,#0x16c
0173ba50  add x0,sp,#0x10
0173ba54  mov x3,xzr
0173ba58  mov x4,xzr
0173ba5c  mov x5,xzr
0173ba60  bl 0x019d9f84
0173ba64  adrp x1,0x5772000
0173ba68  adrp x2,0x19da000
0173ba6c  add x1,x1,#0xc92
0173ba70  add x2,x2,#0x174
0173ba74  mov x3,xzr
0173ba78  mov x4,xzr
0173ba7c  mov x5,xzr
0173ba80  bl 0x019d9f84
0173ba84  adrp x1,0x5772000
0173ba88  adrp x2,0x19da000
0173ba8c  adrp x4,0x19da000
0173ba90  add x1,x1,#0xc97
0173ba94  add x2,x2,#0x364
0173ba98  add x4,x4,#0x36c
0173ba9c  mov x3,xzr
0173baa0  mov x5,xzr
0173baa4  bl 0x019da17c
0173baa8  mov x19,x0
0173baac  ldr w8,[x19, #0x8]
0173bab0  ldr x0,[x19]
0173bab4  sub w8,w8,#0x3
0173bab8  str w8,[x19, #0x8]
0173babc  orr w1,wzr,#0xfffffffc
0173bac0  bl 0x0124c4d0
0173bac4  ldr w8,[x19, #0x8]
0173bac8  ldr x0,[x19]
0173bacc  str wzr,[x19, #0x8]
0173bad0  cmp w8,#0x1
0173bad4  b.lt 0x0173bae0
0173bad8  mvn w1,w8
0173badc  bl 0x0124c4d0
0173bae0  ldr w8,[sp, #0x18]
0173bae4  cmp w8,#0x1
0173bae8  b.lt 0x0173baf8
0173baec  ldr x0,[sp, #0x10]
0173baf0  mvn w1,w8
0173baf4  bl 0x0124c4d0
0173baf8  ldr w8,[sp, #0x8]
0173bafc  cmp w8,#0x1
0173bb00  b.lt 0x0173bb10
0173bb04  ldr x0,[sp]
0173bb08  mvn w1,w8
0173bb0c  bl 0x0124c4d0
0173bb10  ldp x29,x30,[sp, #0x30]
0173bb14  ldp x20,x19,[sp, #0x20]
0173bb18  add sp,sp,#0x40
0173bb1c  ret
