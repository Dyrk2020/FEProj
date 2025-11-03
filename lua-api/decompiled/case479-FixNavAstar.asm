// ===== case479-FixNavAstar @ 016f018c =====
// existing function case479-FixNavAstar
016f018c  sub sp,sp,#0x50
016f0190  str x21,[sp, #0x20]
016f0194  stp x20,x19,[sp, #0x30]
016f0198  stp x29,x30,[sp, #0x40]
016f019c  add x29,sp,#0x40
016f01a0  adrp x1,0x174a000
016f01a4  add x1,x1,#0x87c
016f01a8  mov x19,x0
016f01ac  bl 0x0124ba40
016f01b0  adrp x1,0x575d000
016f01b4  add x1,x1,#0xa06
016f01b8  mov x0,x19
016f01bc  str x19,[sp]
016f01c0  bl 0x01251aa0
016f01c4  mov w8,#0x1
016f01c8  str w8,[sp, #0x8]
016f01cc  mov x0,sp
016f01d0  bl 0x0174aa04
016f01d4  adrp x1,0x5767000
016f01d8  adrp x3,0x736d000
016f01dc  add x1,x1,#0xb7d
016f01e0  add x3,x3,#0x101
016f01e4  add x0,sp,#0x10
016f01e8  mov x2,sp
016f01ec  bl 0x0187f97c
016f01f0  adrp x1,0x5767000
016f01f4  adrp x2,0x187f000
016f01f8  adrp x4,0x187f000
016f01fc  add x1,x1,#0xb89
016f0200  add x2,x2,#0x954
016f0204  add x4,x4,#0x95c
016f0208  add x0,sp,#0x10
016f020c  mov x3,xzr
016f0210  mov x5,xzr
016f0214  bl 0x0187f76c
016f0218  adrp x1,0x5767000
016f021c  adrp x2,0x187f000
016f0220  adrp x4,0x187f000
016f0224  add x1,x1,#0xb95
016f0228  add x2,x2,#0x964
016f022c  add x4,x4,#0x96c
016f0230  mov x3,xzr
016f0234  mov x5,xzr
016f0238  bl 0x0187f76c
016f023c  mov x19,x0
016f0240  ldr x0,[x19]
016f0244  mov w1,#0x10
016f0248  bl 0x0124cba0
016f024c  adrp x8,0x187f000
016f0250  dup v0.2D,xzr
016f0254  add x8,x8,#0x974
016f0258  mov v0.D[0x0],x8
016f025c  str q0,[x0]
016f0260  ldr x0,[x19]
016f0264  adrp x1,0x187f000
016f0268  add x1,x1,#0xf60
016f026c  mov w2,#0x1
016f0270  bl 0x0124ec90
016f0274  ldr x0,[x19]
016f0278  mov w1,#0xffffffff
016f027c  bl 0x0124c0c0
016f0280  ldr x20,[x19]
016f0284  orr w1,wzr,#0xfffffffb
016f0288  mov w2,#0x6e7
016f028c  mov x0,x20
016f0290  bl 0x0124a650
016f0294  orr w1,wzr,#0xfffffffe
016f0298  mov x0,x20
016f029c  bl 0x0124c0c0
016f02a0  orr w1,wzr,#0xfffffffe
016f02a4  mov x0,x20
016f02a8  bl 0x0124e920
016f02ac  mov w21,w0
016f02b0  adrp x1,0x5767000
016f02b4  add x1,x1,#0xba1
016f02b8  mov x0,x20
016f02bc  bl 0x0124f120
016f02c0  orr w1,wzr,#0xfffffffe
016f02c4  mov w2,#0x1
016f02c8  mov x0,x20
016f02cc  bl 0x0124cfc0
016f02d0  mov x0,x20
016f02d4  mov w1,w21
016f02d8  bl 0x0124e060
016f02dc  orr w1,wzr,#0xfffffffd
016f02e0  mov x0,x20
016f02e4  bl 0x0124c4d0
016f02e8  ldr x20,[x19]
016f02ec  orr w1,wzr,#0xfffffffd
016f02f0  mov w2,#0x6e7
016f02f4  mov x0,x20
016f02f8  bl 0x0124a650
016f02fc  orr w1,wzr,#0xfffffffe
016f0300  mov x0,x20
016f0304  bl 0x0124c0c0
016f0308  orr w1,wzr,#0xfffffffe
016f030c  mov x0,x20
016f0310  bl 0x0124e920
016f0314  mov w21,w0
016f0318  adrp x1,0x5767000
016f031c  add x1,x1,#0xba1
016f0320  mov x0,x20
016f0324  bl 0x0124f120
016f0328  orr w1,wzr,#0xfffffffe
016f032c  mov w2,#0x1
016f0330  mov x0,x20
016f0334  bl 0x0124cfc0
016f0338  mov x0,x20
016f033c  mov w1,w21
016f0340  bl 0x0124e060
016f0344  orr w1,wzr,#0xfffffffd
016f0348  mov x0,x20
016f034c  bl 0x0124c4d0
016f0350  ldr w8,[x19, #0x8]
016f0354  ldr x0,[x19]
016f0358  sub w8,w8,#0x3
016f035c  str w8,[x19, #0x8]
016f0360  orr w1,wzr,#0xfffffffc
016f0364  bl 0x0124c4d0
016f0368  ldr w8,[x19, #0x8]
016f036c  ldr x0,[x19]
016f0370  str wzr,[x19, #0x8]
016f0374  cmp w8,#0x1
016f0378  b.lt 0x016f0384
016f037c  mvn w1,w8
016f0380  bl 0x0124c4d0
016f0384  ldr w8,[sp, #0x18]
016f0388  cmp w8,#0x1
016f038c  b.lt 0x016f039c
016f0390  ldr x0,[sp, #0x10]
016f0394  mvn w1,w8
016f0398  bl 0x0124c4d0
016f039c  ldr w8,[sp, #0x8]
016f03a0  cmp w8,#0x1
016f03a4  b.lt 0x016f03b4
016f03a8  ldr x0,[sp]
016f03ac  mvn w1,w8
016f03b0  bl 0x0124c4d0
016f03b4  ldp x29,x30,[sp, #0x40]
016f03b8  ldp x20,x19,[sp, #0x30]
016f03bc  ldr x21,[sp, #0x20]
016f03c0  add sp,sp,#0x50
016f03c4  ret
