// ===== case110-UnitSelectorTypeResObject @ 0169e700 =====
// existing function case110-UnitSelectorTypeResObject
0169e700  sub sp,sp,#0x40
0169e704  stp x20,x19,[sp, #0x20]
0169e708  stp x29,x30,[sp, #0x30]
0169e70c  add x29,sp,#0x30
0169e710  adrp x1,0x174a000
0169e714  add x1,x1,#0x87c
0169e718  mov x19,x0
0169e71c  bl 0x0124ba40
0169e720  adrp x1,0x575d000
0169e724  add x1,x1,#0xa06
0169e728  mov x0,x19
0169e72c  str x19,[sp]
0169e730  bl 0x01251aa0
0169e734  mov w8,#0x1
0169e738  str w8,[sp, #0x8]
0169e73c  mov x0,sp
0169e740  bl 0x0174aa04
0169e744  adrp x1,0x575f000
0169e748  adrp x3,0x736d000
0169e74c  add x1,x1,#0x46a
0169e750  add x3,x3,#0x101
0169e754  add x0,sp,#0x10
0169e758  mov x2,sp
0169e75c  bl 0x0178bd00
0169e760  ldr x0,[sp, #0x10]
0169e764  mov w1,#0x10
0169e768  bl 0x0124cba0
0169e76c  adrp x8,0x178b000
0169e770  dup v0.2D,xzr
0169e774  add x8,x8,#0xcf8
0169e778  mov v0.D[0x0],x8
0169e77c  str q0,[x0]
0169e780  ldr x0,[sp, #0x10]
0169e784  adrp x1,0x178c000
0169e788  add x1,x1,#0xc4
0169e78c  mov w2,#0x1
0169e790  bl 0x0124ec90
0169e794  ldr x0,[sp, #0x10]
0169e798  mov w1,#0xffffffff
0169e79c  bl 0x0124c0c0
0169e7a0  ldr x19,[sp, #0x10]
0169e7a4  orr w1,wzr,#0xfffffffb
0169e7a8  mov w2,#0x6e7
0169e7ac  mov x0,x19
0169e7b0  bl 0x0124a650
0169e7b4  orr w1,wzr,#0xfffffffe
0169e7b8  mov x0,x19
0169e7bc  bl 0x0124c0c0
0169e7c0  orr w1,wzr,#0xfffffffe
0169e7c4  mov x0,x19
0169e7c8  bl 0x0124e920
0169e7cc  mov w20,w0
0169e7d0  adrp x1,0x575f000
0169e7d4  add x1,x1,#0x484
0169e7d8  mov x0,x19
0169e7dc  bl 0x0124f120
0169e7e0  orr w1,wzr,#0xfffffffe
0169e7e4  mov w2,#0x1
0169e7e8  mov x0,x19
0169e7ec  bl 0x0124cfc0
0169e7f0  mov x0,x19
0169e7f4  mov w1,w20
0169e7f8  bl 0x0124e060
0169e7fc  orr w1,wzr,#0xfffffffd
0169e800  mov x0,x19
0169e804  bl 0x0124c4d0
0169e808  ldr x19,[sp, #0x10]
0169e80c  orr w1,wzr,#0xfffffffd
0169e810  mov w2,#0x6e7
0169e814  mov x0,x19
0169e818  bl 0x0124a650
0169e81c  orr w1,wzr,#0xfffffffe
0169e820  mov x0,x19
0169e824  bl 0x0124c0c0
0169e828  orr w1,wzr,#0xfffffffe
0169e82c  mov x0,x19
0169e830  bl 0x0124e920
0169e834  mov w20,w0
0169e838  adrp x1,0x575f000
0169e83c  add x1,x1,#0x484
0169e840  mov x0,x19
0169e844  bl 0x0124f120
0169e848  orr w1,wzr,#0xfffffffe
0169e84c  mov w2,#0x1
0169e850  mov x0,x19
0169e854  bl 0x0124cfc0
0169e858  mov x0,x19
0169e85c  mov w1,w20
0169e860  bl 0x0124e060
0169e864  orr w1,wzr,#0xfffffffd
0169e868  mov x0,x19
0169e86c  bl 0x0124c4d0
0169e870  ldr w8,[sp, #0x18]
0169e874  ldr x0,[sp, #0x10]
0169e878  sub w8,w8,#0x3
0169e87c  str w8,[sp, #0x18]
0169e880  orr w1,wzr,#0xfffffffc
0169e884  bl 0x0124c4d0
0169e888  ldr w8,[sp, #0x18]
0169e88c  ldr x0,[sp, #0x10]
0169e890  str wzr,[sp, #0x18]
0169e894  cmp w8,#0x1
0169e898  b.lt 0x0169e8bc
0169e89c  mvn w1,w8
0169e8a0  bl 0x0124c4d0
0169e8a4  ldr w8,[sp, #0x18]
0169e8a8  cmp w8,#0x1
0169e8ac  b.lt 0x0169e8bc
0169e8b0  ldr x0,[sp, #0x10]
0169e8b4  mvn w1,w8
0169e8b8  bl 0x0124c4d0
0169e8bc  ldr w8,[sp, #0x8]
0169e8c0  cmp w8,#0x1
0169e8c4  b.lt 0x0169e8d4
0169e8c8  ldr x0,[sp]
0169e8cc  mvn w1,w8
0169e8d0  bl 0x0124c4d0
0169e8d4  ldp x29,x30,[sp, #0x30]
0169e8d8  ldp x20,x19,[sp, #0x20]
0169e8dc  add sp,sp,#0x40
0169e8e0  ret
