// ===== case309-AIEffectConfigResObject @ 016c022c =====
// existing function case309-AIEffectConfigResObject
016c022c  sub sp,sp,#0x40
016c0230  stp x20,x19,[sp, #0x20]
016c0234  stp x29,x30,[sp, #0x30]
016c0238  add x29,sp,#0x30
016c023c  adrp x1,0x174a000
016c0240  add x1,x1,#0x87c
016c0244  mov x19,x0
016c0248  bl 0x0124ba40
016c024c  adrp x1,0x575d000
016c0250  add x1,x1,#0xa06
016c0254  mov x0,x19
016c0258  str x19,[sp]
016c025c  bl 0x01251aa0
016c0260  mov w8,#0x1
016c0264  str w8,[sp, #0x8]
016c0268  mov x0,sp
016c026c  bl 0x0174aa04
016c0270  adrp x1,0x5762000
016c0274  adrp x3,0x736d000
016c0278  add x1,x1,#0x871
016c027c  add x3,x3,#0x101
016c0280  add x0,sp,#0x10
016c0284  mov x2,sp
016c0288  bl 0x017fa120
016c028c  ldr x0,[sp, #0x10]
016c0290  mov w1,#0x10
016c0294  bl 0x0124cba0
016c0298  adrp x8,0x17fa000
016c029c  dup v0.2D,xzr
016c02a0  add x8,x8,#0x118
016c02a4  mov v0.D[0x0],x8
016c02a8  str q0,[x0]
016c02ac  ldr x0,[sp, #0x10]
016c02b0  adrp x1,0x17fa000
016c02b4  add x1,x1,#0x4e4
016c02b8  mov w2,#0x1
016c02bc  bl 0x0124ec90
016c02c0  ldr x0,[sp, #0x10]
016c02c4  mov w1,#0xffffffff
016c02c8  bl 0x0124c0c0
016c02cc  ldr x19,[sp, #0x10]
016c02d0  orr w1,wzr,#0xfffffffb
016c02d4  mov w2,#0x6e7
016c02d8  mov x0,x19
016c02dc  bl 0x0124a650
016c02e0  orr w1,wzr,#0xfffffffe
016c02e4  mov x0,x19
016c02e8  bl 0x0124c0c0
016c02ec  orr w1,wzr,#0xfffffffe
016c02f0  mov x0,x19
016c02f4  bl 0x0124e920
016c02f8  mov w20,w0
016c02fc  adrp x1,0x5762000
016c0300  add x1,x1,#0x889
016c0304  mov x0,x19
016c0308  bl 0x0124f120
016c030c  orr w1,wzr,#0xfffffffe
016c0310  mov w2,#0x1
016c0314  mov x0,x19
016c0318  bl 0x0124cfc0
016c031c  mov x0,x19
016c0320  mov w1,w20
016c0324  bl 0x0124e060
016c0328  orr w1,wzr,#0xfffffffd
016c032c  mov x0,x19
016c0330  bl 0x0124c4d0
016c0334  ldr x19,[sp, #0x10]
016c0338  orr w1,wzr,#0xfffffffd
016c033c  mov w2,#0x6e7
016c0340  mov x0,x19
016c0344  bl 0x0124a650
016c0348  orr w1,wzr,#0xfffffffe
016c034c  mov x0,x19
016c0350  bl 0x0124c0c0
016c0354  orr w1,wzr,#0xfffffffe
016c0358  mov x0,x19
016c035c  bl 0x0124e920
016c0360  mov w20,w0
016c0364  adrp x1,0x5762000
016c0368  add x1,x1,#0x889
016c036c  mov x0,x19
016c0370  bl 0x0124f120
016c0374  orr w1,wzr,#0xfffffffe
016c0378  mov w2,#0x1
016c037c  mov x0,x19
016c0380  bl 0x0124cfc0
016c0384  mov x0,x19
016c0388  mov w1,w20
016c038c  bl 0x0124e060
016c0390  orr w1,wzr,#0xfffffffd
016c0394  mov x0,x19
016c0398  bl 0x0124c4d0
016c039c  ldr w8,[sp, #0x18]
016c03a0  ldr x0,[sp, #0x10]
016c03a4  sub w8,w8,#0x3
016c03a8  str w8,[sp, #0x18]
016c03ac  orr w1,wzr,#0xfffffffc
016c03b0  bl 0x0124c4d0
016c03b4  ldr w8,[sp, #0x18]
016c03b8  ldr x0,[sp, #0x10]
016c03bc  str wzr,[sp, #0x18]
016c03c0  cmp w8,#0x1
016c03c4  b.lt 0x016c03e8
016c03c8  mvn w1,w8
016c03cc  bl 0x0124c4d0
016c03d0  ldr w8,[sp, #0x18]
016c03d4  cmp w8,#0x1
016c03d8  b.lt 0x016c03e8
016c03dc  ldr x0,[sp, #0x10]
016c03e0  mvn w1,w8
016c03e4  bl 0x0124c4d0
016c03e8  ldr w8,[sp, #0x8]
016c03ec  cmp w8,#0x1
016c03f0  b.lt 0x016c0400
016c03f4  ldr x0,[sp]
016c03f8  mvn w1,w8
016c03fc  bl 0x0124c4d0
016c0400  ldp x29,x30,[sp, #0x30]
016c0404  ldp x20,x19,[sp, #0x20]
016c0408  add sp,sp,#0x40
016c040c  ret
