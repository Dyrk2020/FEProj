// ===== case630-BattlePlayerCommercialInfo @ 0170e754 =====
// existing function case630-BattlePlayerCommercialInfo
0170e754  sub sp,sp,#0x50
0170e758  str x21,[sp, #0x20]
0170e75c  stp x20,x19,[sp, #0x30]
0170e760  stp x29,x30,[sp, #0x40]
0170e764  add x29,sp,#0x40
0170e768  adrp x1,0x174a000
0170e76c  add x1,x1,#0x87c
0170e770  mov x19,x0
0170e774  bl 0x0124ba40
0170e778  adrp x1,0x575d000
0170e77c  add x1,x1,#0xa06
0170e780  mov x0,x19
0170e784  str x19,[sp]
0170e788  bl 0x01251aa0
0170e78c  mov w8,#0x1
0170e790  str w8,[sp, #0x8]
0170e794  mov x0,sp
0170e798  bl 0x0174aa04
0170e79c  adrp x1,0x576a000
0170e7a0  adrp x3,0x736d000
0170e7a4  add x1,x1,#0xa73
0170e7a8  add x3,x3,#0x101
0170e7ac  add x0,sp,#0x10
0170e7b0  mov x2,sp
0170e7b4  bl 0x0190b67c
0170e7b8  adrp x1,0x576a000
0170e7bc  adrp x2,0x190b000
0170e7c0  adrp x4,0x190b000
0170e7c4  add x1,x1,#0xa8e
0170e7c8  add x2,x2,#0x650
0170e7cc  add x4,x4,#0x658
0170e7d0  add x0,sp,#0x10
0170e7d4  mov x3,xzr
0170e7d8  mov x5,xzr
0170e7dc  bl 0x0190b468
0170e7e0  mov x19,x0
0170e7e4  ldr x0,[x19]
0170e7e8  mov w1,#0x10
0170e7ec  bl 0x0124cba0
0170e7f0  adrp x8,0x190b000
0170e7f4  dup v0.2D,xzr
0170e7f8  add x8,x8,#0x674
0170e7fc  mov v0.D[0x0],x8
0170e800  str q0,[x0]
0170e804  ldr x0,[x19]
0170e808  adrp x1,0x190b000
0170e80c  add x1,x1,#0xdc8
0170e810  mov w2,#0x1
0170e814  bl 0x0124ec90
0170e818  ldr x0,[x19]
0170e81c  mov w1,#0xffffffff
0170e820  bl 0x0124c0c0
0170e824  ldr x20,[x19]
0170e828  orr w1,wzr,#0xfffffffb
0170e82c  mov w2,#0x6e7
0170e830  mov x0,x20
0170e834  bl 0x0124a650
0170e838  orr w1,wzr,#0xfffffffe
0170e83c  mov x0,x20
0170e840  bl 0x0124c0c0
0170e844  orr w1,wzr,#0xfffffffe
0170e848  mov x0,x20
0170e84c  bl 0x0124e920
0170e850  mov w21,w0
0170e854  adrp x1,0x576a000
0170e858  add x1,x1,#0xab0
0170e85c  mov x0,x20
0170e860  bl 0x0124f120
0170e864  orr w1,wzr,#0xfffffffe
0170e868  mov w2,#0x1
0170e86c  mov x0,x20
0170e870  bl 0x0124cfc0
0170e874  mov x0,x20
0170e878  mov w1,w21
0170e87c  bl 0x0124e060
0170e880  orr w1,wzr,#0xfffffffd
0170e884  mov x0,x20
0170e888  bl 0x0124c4d0
0170e88c  ldr x20,[x19]
0170e890  orr w1,wzr,#0xfffffffd
0170e894  mov w2,#0x6e7
0170e898  mov x0,x20
0170e89c  bl 0x0124a650
0170e8a0  orr w1,wzr,#0xfffffffe
0170e8a4  mov x0,x20
0170e8a8  bl 0x0124c0c0
0170e8ac  orr w1,wzr,#0xfffffffe
0170e8b0  mov x0,x20
0170e8b4  bl 0x0124e920
0170e8b8  mov w21,w0
0170e8bc  adrp x1,0x576a000
0170e8c0  add x1,x1,#0xab0
0170e8c4  mov x0,x20
0170e8c8  bl 0x0124f120
0170e8cc  orr w1,wzr,#0xfffffffe
0170e8d0  mov w2,#0x1
0170e8d4  mov x0,x20
0170e8d8  bl 0x0124cfc0
0170e8dc  mov x0,x20
0170e8e0  mov w1,w21
0170e8e4  bl 0x0124e060
0170e8e8  orr w1,wzr,#0xfffffffd
0170e8ec  mov x0,x20
0170e8f0  bl 0x0124c4d0
0170e8f4  ldr w8,[x19, #0x8]
0170e8f8  ldr x0,[x19]
0170e8fc  sub w8,w8,#0x3
0170e900  str w8,[x19, #0x8]
0170e904  orr w1,wzr,#0xfffffffc
0170e908  bl 0x0124c4d0
0170e90c  ldr w8,[x19, #0x8]
0170e910  ldr x0,[x19]
0170e914  str wzr,[x19, #0x8]
0170e918  cmp w8,#0x1
0170e91c  b.lt 0x0170e928
0170e920  mvn w1,w8
0170e924  bl 0x0124c4d0
0170e928  ldr w8,[sp, #0x18]
0170e92c  cmp w8,#0x1
0170e930  b.lt 0x0170e940
0170e934  ldr x0,[sp, #0x10]
0170e938  mvn w1,w8
0170e93c  bl 0x0124c4d0
0170e940  ldr w8,[sp, #0x8]
0170e944  cmp w8,#0x1
0170e948  b.lt 0x0170e958
0170e94c  ldr x0,[sp]
0170e950  mvn w1,w8
0170e954  bl 0x0124c4d0
0170e958  ldp x29,x30,[sp, #0x40]
0170e95c  ldp x20,x19,[sp, #0x30]
0170e960  ldr x21,[sp, #0x20]
0170e964  add sp,sp,#0x50
0170e968  ret
