// ===== case12-VariableFix64Shell @ 0168e708 =====
// existing function case12-VariableFix64Shell
0168e708  sub sp,sp,#0x50
0168e70c  str x21,[sp, #0x20]
0168e710  stp x20,x19,[sp, #0x30]
0168e714  stp x29,x30,[sp, #0x40]
0168e718  add x29,sp,#0x40
0168e71c  adrp x1,0x174a000
0168e720  add x1,x1,#0x87c
0168e724  mov x19,x0
0168e728  bl 0x0124ba40
0168e72c  adrp x1,0x575d000
0168e730  add x1,x1,#0xa06
0168e734  mov x0,x19
0168e738  str x19,[sp]
0168e73c  bl 0x01251aa0
0168e740  mov w8,#0x1
0168e744  str w8,[sp, #0x8]
0168e748  mov x0,sp
0168e74c  bl 0x0174aa04
0168e750  adrp x1,0x575d000
0168e754  adrp x3,0x736d000
0168e758  add x1,x1,#0xd38
0168e75c  add x3,x3,#0x101
0168e760  add x0,sp,#0x10
0168e764  mov x2,sp
0168e768  bl 0x0175564c
0168e76c  adrp x1,0x5955000
0168e770  adrp x2,0x1755000
0168e774  adrp x4,0x1755000
0168e778  add x1,x1,#0x16f
0168e77c  add x2,x2,#0x634
0168e780  add x4,x4,#0x63c
0168e784  add x0,sp,#0x10
0168e788  mov x3,xzr
0168e78c  mov x5,xzr
0168e790  bl 0x0175544c
0168e794  mov x19,x0
0168e798  ldr x0,[x19]
0168e79c  mov w1,#0x10
0168e7a0  bl 0x0124cba0
0168e7a4  adrp x8,0x1755000
0168e7a8  dup v0.2D,xzr
0168e7ac  add x8,x8,#0x644
0168e7b0  mov v0.D[0x0],x8
0168e7b4  str q0,[x0]
0168e7b8  ldr x0,[x19]
0168e7bc  adrp x1,0x1755000
0168e7c0  add x1,x1,#0xc5c
0168e7c4  mov w2,#0x1
0168e7c8  bl 0x0124ec90
0168e7cc  ldr x0,[x19]
0168e7d0  mov w1,#0xffffffff
0168e7d4  bl 0x0124c0c0
0168e7d8  ldr x20,[x19]
0168e7dc  orr w1,wzr,#0xfffffffb
0168e7e0  mov w2,#0x6e7
0168e7e4  mov x0,x20
0168e7e8  bl 0x0124a650
0168e7ec  orr w1,wzr,#0xfffffffe
0168e7f0  mov x0,x20
0168e7f4  bl 0x0124c0c0
0168e7f8  orr w1,wzr,#0xfffffffe
0168e7fc  mov x0,x20
0168e800  bl 0x0124e920
0168e804  mov w21,w0
0168e808  adrp x1,0x575d000
0168e80c  add x1,x1,#0xbc5
0168e810  mov x0,x20
0168e814  bl 0x0124f120
0168e818  orr w1,wzr,#0xfffffffe
0168e81c  mov w2,#0x1
0168e820  mov x0,x20
0168e824  bl 0x0124cfc0
0168e828  mov x0,x20
0168e82c  mov w1,w21
0168e830  bl 0x0124e060
0168e834  orr w1,wzr,#0xfffffffd
0168e838  mov x0,x20
0168e83c  bl 0x0124c4d0
0168e840  ldr x20,[x19]
0168e844  orr w1,wzr,#0xfffffffd
0168e848  mov w2,#0x6e7
0168e84c  mov x0,x20
0168e850  bl 0x0124a650
0168e854  orr w1,wzr,#0xfffffffe
0168e858  mov x0,x20
0168e85c  bl 0x0124c0c0
0168e860  orr w1,wzr,#0xfffffffe
0168e864  mov x0,x20
0168e868  bl 0x0124e920
0168e86c  mov w21,w0
0168e870  adrp x1,0x575d000
0168e874  add x1,x1,#0xbc5
0168e878  mov x0,x20
0168e87c  bl 0x0124f120
0168e880  orr w1,wzr,#0xfffffffe
0168e884  mov w2,#0x1
0168e888  mov x0,x20
0168e88c  bl 0x0124cfc0
0168e890  mov x0,x20
0168e894  mov w1,w21
0168e898  bl 0x0124e060
0168e89c  orr w1,wzr,#0xfffffffd
0168e8a0  mov x0,x20
0168e8a4  bl 0x0124c4d0
0168e8a8  ldr w8,[x19, #0x8]
0168e8ac  ldr x0,[x19]
0168e8b0  sub w8,w8,#0x3
0168e8b4  str w8,[x19, #0x8]
0168e8b8  orr w1,wzr,#0xfffffffc
0168e8bc  bl 0x0124c4d0
0168e8c0  ldr w8,[x19, #0x8]
0168e8c4  ldr x0,[x19]
0168e8c8  str wzr,[x19, #0x8]
0168e8cc  cmp w8,#0x1
0168e8d0  b.lt 0x0168e8dc
0168e8d4  mvn w1,w8
0168e8d8  bl 0x0124c4d0
0168e8dc  ldr w8,[sp, #0x18]
0168e8e0  cmp w8,#0x1
0168e8e4  b.lt 0x0168e8f4
0168e8e8  ldr x0,[sp, #0x10]
0168e8ec  mvn w1,w8
0168e8f0  bl 0x0124c4d0
0168e8f4  ldr w8,[sp, #0x8]
0168e8f8  cmp w8,#0x1
0168e8fc  b.lt 0x0168e90c
0168e900  ldr x0,[sp]
0168e904  mvn w1,w8
0168e908  bl 0x0124c4d0
0168e90c  ldp x29,x30,[sp, #0x40]
0168e910  ldp x20,x19,[sp, #0x30]
0168e914  ldr x21,[sp, #0x20]
0168e918  add sp,sp,#0x50
0168e91c  ret
