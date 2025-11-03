// ===== case64-RuinWaveSkillDataResObject @ 01696f54 =====
// existing function case64-RuinWaveSkillDataResObject
01696f54  sub sp,sp,#0x40
01696f58  stp x20,x19,[sp, #0x20]
01696f5c  stp x29,x30,[sp, #0x30]
01696f60  add x29,sp,#0x30
01696f64  adrp x1,0x174a000
01696f68  add x1,x1,#0x87c
01696f6c  mov x19,x0
01696f70  bl 0x0124ba40
01696f74  adrp x1,0x575d000
01696f78  add x1,x1,#0xa06
01696f7c  mov x0,x19
01696f80  str x19,[sp]
01696f84  bl 0x01251aa0
01696f88  mov w8,#0x1
01696f8c  str w8,[sp, #0x8]
01696f90  mov x0,sp
01696f94  bl 0x0174aa04
01696f98  adrp x1,0x575e000
01696f9c  adrp x3,0x736d000
01696fa0  add x1,x1,#0xbdd
01696fa4  add x3,x3,#0x101
01696fa8  add x0,sp,#0x10
01696fac  mov x2,sp
01696fb0  bl 0x01773ee0
01696fb4  ldr x0,[sp, #0x10]
01696fb8  mov w1,#0x10
01696fbc  bl 0x0124cba0
01696fc0  adrp x8,0x1773000
01696fc4  dup v0.2D,xzr
01696fc8  add x8,x8,#0xed8
01696fcc  mov v0.D[0x0],x8
01696fd0  str q0,[x0]
01696fd4  ldr x0,[sp, #0x10]
01696fd8  adrp x1,0x1774000
01696fdc  add x1,x1,#0x2a4
01696fe0  mov w2,#0x1
01696fe4  bl 0x0124ec90
01696fe8  ldr x0,[sp, #0x10]
01696fec  mov w1,#0xffffffff
01696ff0  bl 0x0124c0c0
01696ff4  ldr x19,[sp, #0x10]
01696ff8  orr w1,wzr,#0xfffffffb
01696ffc  mov w2,#0x6e7
01697000  mov x0,x19
01697004  bl 0x0124a650
01697008  orr w1,wzr,#0xfffffffe
0169700c  mov x0,x19
01697010  bl 0x0124c0c0
01697014  orr w1,wzr,#0xfffffffe
01697018  mov x0,x19
0169701c  bl 0x0124e920
01697020  mov w20,w0
01697024  adrp x1,0x575e000
01697028  add x1,x1,#0xbf8
0169702c  mov x0,x19
01697030  bl 0x0124f120
01697034  orr w1,wzr,#0xfffffffe
01697038  mov w2,#0x1
0169703c  mov x0,x19
01697040  bl 0x0124cfc0
01697044  mov x0,x19
01697048  mov w1,w20
0169704c  bl 0x0124e060
01697050  orr w1,wzr,#0xfffffffd
01697054  mov x0,x19
01697058  bl 0x0124c4d0
0169705c  ldr x19,[sp, #0x10]
01697060  orr w1,wzr,#0xfffffffd
01697064  mov w2,#0x6e7
01697068  mov x0,x19
0169706c  bl 0x0124a650
01697070  orr w1,wzr,#0xfffffffe
01697074  mov x0,x19
01697078  bl 0x0124c0c0
0169707c  orr w1,wzr,#0xfffffffe
01697080  mov x0,x19
01697084  bl 0x0124e920
01697088  mov w20,w0
0169708c  adrp x1,0x575e000
01697090  add x1,x1,#0xbf8
01697094  mov x0,x19
01697098  bl 0x0124f120
0169709c  orr w1,wzr,#0xfffffffe
016970a0  mov w2,#0x1
016970a4  mov x0,x19
016970a8  bl 0x0124cfc0
016970ac  mov x0,x19
016970b0  mov w1,w20
016970b4  bl 0x0124e060
016970b8  orr w1,wzr,#0xfffffffd
016970bc  mov x0,x19
016970c0  bl 0x0124c4d0
016970c4  ldr w8,[sp, #0x18]
016970c8  ldr x0,[sp, #0x10]
016970cc  sub w8,w8,#0x3
016970d0  str w8,[sp, #0x18]
016970d4  orr w1,wzr,#0xfffffffc
016970d8  bl 0x0124c4d0
016970dc  ldr w8,[sp, #0x18]
016970e0  ldr x0,[sp, #0x10]
016970e4  str wzr,[sp, #0x18]
016970e8  cmp w8,#0x1
016970ec  b.lt 0x01697110
016970f0  mvn w1,w8
016970f4  bl 0x0124c4d0
016970f8  ldr w8,[sp, #0x18]
016970fc  cmp w8,#0x1
01697100  b.lt 0x01697110
01697104  ldr x0,[sp, #0x10]
01697108  mvn w1,w8
0169710c  bl 0x0124c4d0
01697110  ldr w8,[sp, #0x8]
01697114  cmp w8,#0x1
01697118  b.lt 0x01697128
0169711c  ldr x0,[sp]
01697120  mvn w1,w8
01697124  bl 0x0124c4d0
01697128  ldp x29,x30,[sp, #0x30]
0169712c  ldp x20,x19,[sp, #0x20]
01697130  add sp,sp,#0x40
01697134  ret
