// ===== case92-CherryAwardResObject @ 0169b7e4 =====
// existing function case92-CherryAwardResObject
0169b7e4  sub sp,sp,#0x40
0169b7e8  stp x20,x19,[sp, #0x20]
0169b7ec  stp x29,x30,[sp, #0x30]
0169b7f0  add x29,sp,#0x30
0169b7f4  adrp x1,0x174a000
0169b7f8  add x1,x1,#0x87c
0169b7fc  mov x19,x0
0169b800  bl 0x0124ba40
0169b804  adrp x1,0x575d000
0169b808  add x1,x1,#0xa06
0169b80c  mov x0,x19
0169b810  str x19,[sp]
0169b814  bl 0x01251aa0
0169b818  mov w8,#0x1
0169b81c  str w8,[sp, #0x8]
0169b820  mov x0,sp
0169b824  bl 0x0174aa04
0169b828  adrp x1,0x574e000
0169b82c  adrp x3,0x736d000
0169b830  add x1,x1,#0x5a0
0169b834  add x3,x3,#0x101
0169b838  add x0,sp,#0x10
0169b83c  mov x2,sp
0169b840  bl 0x01783c2c
0169b844  ldr x0,[sp, #0x10]
0169b848  mov w1,#0x10
0169b84c  bl 0x0124cba0
0169b850  adrp x8,0x1783000
0169b854  dup v0.2D,xzr
0169b858  add x8,x8,#0xc24
0169b85c  mov v0.D[0x0],x8
0169b860  str q0,[x0]
0169b864  ldr x0,[sp, #0x10]
0169b868  adrp x1,0x1783000
0169b86c  add x1,x1,#0xff0
0169b870  mov w2,#0x1
0169b874  bl 0x0124ec90
0169b878  ldr x0,[sp, #0x10]
0169b87c  mov w1,#0xffffffff
0169b880  bl 0x0124c0c0
0169b884  ldr x19,[sp, #0x10]
0169b888  orr w1,wzr,#0xfffffffb
0169b88c  mov w2,#0x6e7
0169b890  mov x0,x19
0169b894  bl 0x0124a650
0169b898  orr w1,wzr,#0xfffffffe
0169b89c  mov x0,x19
0169b8a0  bl 0x0124c0c0
0169b8a4  orr w1,wzr,#0xfffffffe
0169b8a8  mov x0,x19
0169b8ac  bl 0x0124e920
0169b8b0  mov w20,w0
0169b8b4  adrp x1,0x575f000
0169b8b8  add x1,x1,#0xda
0169b8bc  mov x0,x19
0169b8c0  bl 0x0124f120
0169b8c4  orr w1,wzr,#0xfffffffe
0169b8c8  mov w2,#0x1
0169b8cc  mov x0,x19
0169b8d0  bl 0x0124cfc0
0169b8d4  mov x0,x19
0169b8d8  mov w1,w20
0169b8dc  bl 0x0124e060
0169b8e0  orr w1,wzr,#0xfffffffd
0169b8e4  mov x0,x19
0169b8e8  bl 0x0124c4d0
0169b8ec  ldr x19,[sp, #0x10]
0169b8f0  orr w1,wzr,#0xfffffffd
0169b8f4  mov w2,#0x6e7
0169b8f8  mov x0,x19
0169b8fc  bl 0x0124a650
0169b900  orr w1,wzr,#0xfffffffe
0169b904  mov x0,x19
0169b908  bl 0x0124c0c0
0169b90c  orr w1,wzr,#0xfffffffe
0169b910  mov x0,x19
0169b914  bl 0x0124e920
0169b918  mov w20,w0
0169b91c  adrp x1,0x575f000
0169b920  add x1,x1,#0xda
0169b924  mov x0,x19
0169b928  bl 0x0124f120
0169b92c  orr w1,wzr,#0xfffffffe
0169b930  mov w2,#0x1
0169b934  mov x0,x19
0169b938  bl 0x0124cfc0
0169b93c  mov x0,x19
0169b940  mov w1,w20
0169b944  bl 0x0124e060
0169b948  orr w1,wzr,#0xfffffffd
0169b94c  mov x0,x19
0169b950  bl 0x0124c4d0
0169b954  ldr w8,[sp, #0x18]
0169b958  ldr x0,[sp, #0x10]
0169b95c  sub w8,w8,#0x3
0169b960  str w8,[sp, #0x18]
0169b964  orr w1,wzr,#0xfffffffc
0169b968  bl 0x0124c4d0
0169b96c  ldr w8,[sp, #0x18]
0169b970  ldr x0,[sp, #0x10]
0169b974  str wzr,[sp, #0x18]
0169b978  cmp w8,#0x1
0169b97c  b.lt 0x0169b9a0
0169b980  mvn w1,w8
0169b984  bl 0x0124c4d0
0169b988  ldr w8,[sp, #0x18]
0169b98c  cmp w8,#0x1
0169b990  b.lt 0x0169b9a0
0169b994  ldr x0,[sp, #0x10]
0169b998  mvn w1,w8
0169b99c  bl 0x0124c4d0
0169b9a0  ldr w8,[sp, #0x8]
0169b9a4  cmp w8,#0x1
0169b9a8  b.lt 0x0169b9b8
0169b9ac  ldr x0,[sp]
0169b9b0  mvn w1,w8
0169b9b4  bl 0x0124c4d0
0169b9b8  ldp x29,x30,[sp, #0x30]
0169b9bc  ldp x20,x19,[sp, #0x20]
0169b9c0  add sp,sp,#0x40
0169b9c4  ret
