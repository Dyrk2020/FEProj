// ===== case811-HeroFlowObject @ 01735f28 =====
// existing function case811-HeroFlowObject
01735f28  sub sp,sp,#0x40
01735f2c  stp x20,x19,[sp, #0x20]
01735f30  stp x29,x30,[sp, #0x30]
01735f34  add x29,sp,#0x30
01735f38  adrp x1,0x174a000
01735f3c  add x1,x1,#0x87c
01735f40  mov x19,x0
01735f44  bl 0x0124ba40
01735f48  adrp x1,0x575d000
01735f4c  add x1,x1,#0xa06
01735f50  mov x0,x19
01735f54  str x19,[sp]
01735f58  bl 0x01251aa0
01735f5c  mov w8,#0x1
01735f60  str w8,[sp, #0x8]
01735f64  mov x0,sp
01735f68  bl 0x0174aa04
01735f6c  adrp x1,0x5772000
01735f70  adrp x3,0x736d000
01735f74  add x1,x1,#0x44b
01735f78  add x3,x3,#0x101
01735f7c  add x0,sp,#0x10
01735f80  mov x2,sp
01735f84  bl 0x019c0fcc
01735f88  ldr x0,[sp, #0x10]
01735f8c  mov w1,#0x10
01735f90  bl 0x0124cba0
01735f94  adrp x8,0x19c0000
01735f98  dup v0.2D,xzr
01735f9c  add x8,x8,#0xfc4
01735fa0  mov v0.D[0x0],x8
01735fa4  str q0,[x0]
01735fa8  ldr x0,[sp, #0x10]
01735fac  adrp x1,0x19c1000
01735fb0  add x1,x1,#0x390
01735fb4  mov w2,#0x1
01735fb8  bl 0x0124ec90
01735fbc  ldr x0,[sp, #0x10]
01735fc0  mov w1,#0xffffffff
01735fc4  bl 0x0124c0c0
01735fc8  ldr x19,[sp, #0x10]
01735fcc  orr w1,wzr,#0xfffffffb
01735fd0  mov w2,#0x6e7
01735fd4  mov x0,x19
01735fd8  bl 0x0124a650
01735fdc  orr w1,wzr,#0xfffffffe
01735fe0  mov x0,x19
01735fe4  bl 0x0124c0c0
01735fe8  orr w1,wzr,#0xfffffffe
01735fec  mov x0,x19
01735ff0  bl 0x0124e920
01735ff4  mov w20,w0
01735ff8  adrp x1,0x5772000
01735ffc  add x1,x1,#0x45a
01736000  mov x0,x19
01736004  bl 0x0124f120
01736008  orr w1,wzr,#0xfffffffe
0173600c  mov w2,#0x1
01736010  mov x0,x19
01736014  bl 0x0124cfc0
01736018  mov x0,x19
0173601c  mov w1,w20
01736020  bl 0x0124e060
01736024  orr w1,wzr,#0xfffffffd
01736028  mov x0,x19
0173602c  bl 0x0124c4d0
01736030  ldr x19,[sp, #0x10]
01736034  orr w1,wzr,#0xfffffffd
01736038  mov w2,#0x6e7
0173603c  mov x0,x19
01736040  bl 0x0124a650
01736044  orr w1,wzr,#0xfffffffe
01736048  mov x0,x19
0173604c  bl 0x0124c0c0
01736050  orr w1,wzr,#0xfffffffe
01736054  mov x0,x19
01736058  bl 0x0124e920
0173605c  mov w20,w0
01736060  adrp x1,0x5772000
01736064  add x1,x1,#0x45a
01736068  mov x0,x19
0173606c  bl 0x0124f120
01736070  orr w1,wzr,#0xfffffffe
01736074  mov w2,#0x1
01736078  mov x0,x19
0173607c  bl 0x0124cfc0
01736080  mov x0,x19
01736084  mov w1,w20
01736088  bl 0x0124e060
0173608c  orr w1,wzr,#0xfffffffd
01736090  mov x0,x19
01736094  bl 0x0124c4d0
01736098  ldr w8,[sp, #0x18]
0173609c  ldr x0,[sp, #0x10]
017360a0  sub w8,w8,#0x3
017360a4  str w8,[sp, #0x18]
017360a8  orr w1,wzr,#0xfffffffc
017360ac  bl 0x0124c4d0
017360b0  ldr w8,[sp, #0x18]
017360b4  ldr x0,[sp, #0x10]
017360b8  str wzr,[sp, #0x18]
017360bc  cmp w8,#0x1
017360c0  b.lt 0x017360e4
017360c4  mvn w1,w8
017360c8  bl 0x0124c4d0
017360cc  ldr w8,[sp, #0x18]
017360d0  cmp w8,#0x1
017360d4  b.lt 0x017360e4
017360d8  ldr x0,[sp, #0x10]
017360dc  mvn w1,w8
017360e0  bl 0x0124c4d0
017360e4  ldr w8,[sp, #0x8]
017360e8  cmp w8,#0x1
017360ec  b.lt 0x017360fc
017360f0  ldr x0,[sp]
017360f4  mvn w1,w8
017360f8  bl 0x0124c4d0
017360fc  ldp x29,x30,[sp, #0x30]
01736100  ldp x20,x19,[sp, #0x20]
01736104  add sp,sp,#0x40
01736108  ret
