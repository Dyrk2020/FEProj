// ===== case293-CherryGainPoolResObject @ 016bdfc4 =====
// existing function case293-CherryGainPoolResObject
016bdfc4  sub sp,sp,#0x40
016bdfc8  stp x20,x19,[sp, #0x20]
016bdfcc  stp x29,x30,[sp, #0x30]
016bdfd0  add x29,sp,#0x30
016bdfd4  adrp x1,0x174a000
016bdfd8  add x1,x1,#0x87c
016bdfdc  mov x19,x0
016bdfe0  bl 0x0124ba40
016bdfe4  adrp x1,0x575d000
016bdfe8  add x1,x1,#0xa06
016bdfec  mov x0,x19
016bdff0  str x19,[sp]
016bdff4  bl 0x01251aa0
016bdff8  mov w8,#0x1
016bdffc  str w8,[sp, #0x8]
016be000  mov x0,sp
016be004  bl 0x0174aa04
016be008  adrp x1,0x5762000
016be00c  adrp x3,0x736d000
016be010  add x1,x1,#0x529
016be014  add x3,x3,#0x101
016be018  add x0,sp,#0x10
016be01c  mov x2,sp
016be020  bl 0x017f20e0
016be024  ldr x0,[sp, #0x10]
016be028  mov w1,#0x10
016be02c  bl 0x0124cba0
016be030  adrp x8,0x17f2000
016be034  dup v0.2D,xzr
016be038  add x8,x8,#0xd8
016be03c  mov v0.D[0x0],x8
016be040  str q0,[x0]
016be044  ldr x0,[sp, #0x10]
016be048  adrp x1,0x17f2000
016be04c  add x1,x1,#0x4a4
016be050  mov w2,#0x1
016be054  bl 0x0124ec90
016be058  ldr x0,[sp, #0x10]
016be05c  mov w1,#0xffffffff
016be060  bl 0x0124c0c0
016be064  ldr x19,[sp, #0x10]
016be068  orr w1,wzr,#0xfffffffb
016be06c  mov w2,#0x6e7
016be070  mov x0,x19
016be074  bl 0x0124a650
016be078  orr w1,wzr,#0xfffffffe
016be07c  mov x0,x19
016be080  bl 0x0124c0c0
016be084  orr w1,wzr,#0xfffffffe
016be088  mov x0,x19
016be08c  bl 0x0124e920
016be090  mov w20,w0
016be094  adrp x1,0x5762000
016be098  add x1,x1,#0x541
016be09c  mov x0,x19
016be0a0  bl 0x0124f120
016be0a4  orr w1,wzr,#0xfffffffe
016be0a8  mov w2,#0x1
016be0ac  mov x0,x19
016be0b0  bl 0x0124cfc0
016be0b4  mov x0,x19
016be0b8  mov w1,w20
016be0bc  bl 0x0124e060
016be0c0  orr w1,wzr,#0xfffffffd
016be0c4  mov x0,x19
016be0c8  bl 0x0124c4d0
016be0cc  ldr x19,[sp, #0x10]
016be0d0  orr w1,wzr,#0xfffffffd
016be0d4  mov w2,#0x6e7
016be0d8  mov x0,x19
016be0dc  bl 0x0124a650
016be0e0  orr w1,wzr,#0xfffffffe
016be0e4  mov x0,x19
016be0e8  bl 0x0124c0c0
016be0ec  orr w1,wzr,#0xfffffffe
016be0f0  mov x0,x19
016be0f4  bl 0x0124e920
016be0f8  mov w20,w0
016be0fc  adrp x1,0x5762000
016be100  add x1,x1,#0x541
016be104  mov x0,x19
016be108  bl 0x0124f120
016be10c  orr w1,wzr,#0xfffffffe
016be110  mov w2,#0x1
016be114  mov x0,x19
016be118  bl 0x0124cfc0
016be11c  mov x0,x19
016be120  mov w1,w20
016be124  bl 0x0124e060
016be128  orr w1,wzr,#0xfffffffd
016be12c  mov x0,x19
016be130  bl 0x0124c4d0
016be134  ldr w8,[sp, #0x18]
016be138  ldr x0,[sp, #0x10]
016be13c  sub w8,w8,#0x3
016be140  str w8,[sp, #0x18]
016be144  orr w1,wzr,#0xfffffffc
016be148  bl 0x0124c4d0
016be14c  ldr w8,[sp, #0x18]
016be150  ldr x0,[sp, #0x10]
016be154  str wzr,[sp, #0x18]
016be158  cmp w8,#0x1
016be15c  b.lt 0x016be180
016be160  mvn w1,w8
016be164  bl 0x0124c4d0
016be168  ldr w8,[sp, #0x18]
016be16c  cmp w8,#0x1
016be170  b.lt 0x016be180
016be174  ldr x0,[sp, #0x10]
016be178  mvn w1,w8
016be17c  bl 0x0124c4d0
016be180  ldr w8,[sp, #0x8]
016be184  cmp w8,#0x1
016be188  b.lt 0x016be198
016be18c  ldr x0,[sp]
016be190  mvn w1,w8
016be194  bl 0x0124c4d0
016be198  ldp x29,x30,[sp, #0x30]
016be19c  ldp x20,x19,[sp, #0x20]
016be1a0  add sp,sp,#0x40
016be1a4  ret
