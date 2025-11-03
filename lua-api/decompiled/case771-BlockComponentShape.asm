// ===== case771-BlockComponentShape @ 0172e7d4 =====
// existing function case771-BlockComponentShape
0172e7d4  sub sp,sp,#0x50
0172e7d8  str x21,[sp, #0x20]
0172e7dc  stp x20,x19,[sp, #0x30]
0172e7e0  stp x29,x30,[sp, #0x40]
0172e7e4  add x29,sp,#0x40
0172e7e8  adrp x1,0x174a000
0172e7ec  add x1,x1,#0x87c
0172e7f0  mov x19,x0
0172e7f4  bl 0x0124ba40
0172e7f8  adrp x1,0x575d000
0172e7fc  add x1,x1,#0xa06
0172e800  mov x0,x19
0172e804  str x19,[sp]
0172e808  bl 0x01251aa0
0172e80c  mov w8,#0x1
0172e810  str w8,[sp, #0x8]
0172e814  mov x0,sp
0172e818  bl 0x0174aa04
0172e81c  adrp x1,0x5771000
0172e820  adrp x3,0x736d000
0172e824  add x1,x1,#0x328
0172e828  add x3,x3,#0x101
0172e82c  add x0,sp,#0x10
0172e830  mov x2,sp
0172e834  bl 0x019a04a4
0172e838  adrp x1,0x5771000
0172e83c  adrp x2,0x19a0000
0172e840  adrp x4,0x19a0000
0172e844  add x1,x1,#0x33c
0172e848  add x2,x2,#0x48c
0172e84c  add x4,x4,#0x494
0172e850  add x0,sp,#0x10
0172e854  mov x3,xzr
0172e858  mov x5,xzr
0172e85c  bl 0x019a02a4
0172e860  mov x19,x0
0172e864  ldr x0,[x19]
0172e868  mov w1,#0x10
0172e86c  bl 0x0124cba0
0172e870  adrp x8,0x19a0000
0172e874  dup v0.2D,xzr
0172e878  add x8,x8,#0x49c
0172e87c  mov v0.D[0x0],x8
0172e880  str q0,[x0]
0172e884  ldr x0,[x19]
0172e888  adrp x1,0x19a0000
0172e88c  add x1,x1,#0xa88
0172e890  mov w2,#0x1
0172e894  bl 0x0124ec90
0172e898  ldr x0,[x19]
0172e89c  mov w1,#0xffffffff
0172e8a0  bl 0x0124c0c0
0172e8a4  ldr x20,[x19]
0172e8a8  orr w1,wzr,#0xfffffffb
0172e8ac  mov w2,#0x6e7
0172e8b0  mov x0,x20
0172e8b4  bl 0x0124a650
0172e8b8  orr w1,wzr,#0xfffffffe
0172e8bc  mov x0,x20
0172e8c0  bl 0x0124c0c0
0172e8c4  orr w1,wzr,#0xfffffffe
0172e8c8  mov x0,x20
0172e8cc  bl 0x0124e920
0172e8d0  mov w21,w0
0172e8d4  adrp x1,0x5771000
0172e8d8  add x1,x1,#0x347
0172e8dc  mov x0,x20
0172e8e0  bl 0x0124f120
0172e8e4  orr w1,wzr,#0xfffffffe
0172e8e8  mov w2,#0x1
0172e8ec  mov x0,x20
0172e8f0  bl 0x0124cfc0
0172e8f4  mov x0,x20
0172e8f8  mov w1,w21
0172e8fc  bl 0x0124e060
0172e900  orr w1,wzr,#0xfffffffd
0172e904  mov x0,x20
0172e908  bl 0x0124c4d0
0172e90c  ldr x20,[x19]
0172e910  orr w1,wzr,#0xfffffffd
0172e914  mov w2,#0x6e7
0172e918  mov x0,x20
0172e91c  bl 0x0124a650
0172e920  orr w1,wzr,#0xfffffffe
0172e924  mov x0,x20
0172e928  bl 0x0124c0c0
0172e92c  orr w1,wzr,#0xfffffffe
0172e930  mov x0,x20
0172e934  bl 0x0124e920
0172e938  mov w21,w0
0172e93c  adrp x1,0x5771000
0172e940  add x1,x1,#0x347
0172e944  mov x0,x20
0172e948  bl 0x0124f120
0172e94c  orr w1,wzr,#0xfffffffe
0172e950  mov w2,#0x1
0172e954  mov x0,x20
0172e958  bl 0x0124cfc0
0172e95c  mov x0,x20
0172e960  mov w1,w21
0172e964  bl 0x0124e060
0172e968  orr w1,wzr,#0xfffffffd
0172e96c  mov x0,x20
0172e970  bl 0x0124c4d0
0172e974  ldr w8,[x19, #0x8]
0172e978  ldr x0,[x19]
0172e97c  sub w8,w8,#0x3
0172e980  str w8,[x19, #0x8]
0172e984  orr w1,wzr,#0xfffffffc
0172e988  bl 0x0124c4d0
0172e98c  ldr w8,[x19, #0x8]
0172e990  ldr x0,[x19]
0172e994  str wzr,[x19, #0x8]
0172e998  cmp w8,#0x1
0172e99c  b.lt 0x0172e9a8
0172e9a0  mvn w1,w8
0172e9a4  bl 0x0124c4d0
0172e9a8  ldr w8,[sp, #0x18]
0172e9ac  cmp w8,#0x1
0172e9b0  b.lt 0x0172e9c0
0172e9b4  ldr x0,[sp, #0x10]
0172e9b8  mvn w1,w8
0172e9bc  bl 0x0124c4d0
0172e9c0  ldr w8,[sp, #0x8]
0172e9c4  cmp w8,#0x1
0172e9c8  b.lt 0x0172e9d8
0172e9cc  ldr x0,[sp]
0172e9d0  mvn w1,w8
0172e9d4  bl 0x0124c4d0
0172e9d8  ldp x29,x30,[sp, #0x40]
0172e9dc  ldp x20,x19,[sp, #0x30]
0172e9e0  ldr x21,[sp, #0x20]
0172e9e4  add sp,sp,#0x50
0172e9e8  ret
