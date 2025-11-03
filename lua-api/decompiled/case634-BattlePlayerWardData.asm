// ===== case634-BattlePlayerWardData @ 0170f0e8 =====
// existing function case634-BattlePlayerWardData
0170f0e8  sub sp,sp,#0x40
0170f0ec  stp x20,x19,[sp, #0x20]
0170f0f0  stp x29,x30,[sp, #0x30]
0170f0f4  add x29,sp,#0x30
0170f0f8  adrp x1,0x174a000
0170f0fc  add x1,x1,#0x87c
0170f100  mov x19,x0
0170f104  bl 0x0124ba40
0170f108  adrp x1,0x575d000
0170f10c  add x1,x1,#0xa06
0170f110  mov x0,x19
0170f114  str x19,[sp]
0170f118  bl 0x01251aa0
0170f11c  mov w8,#0x1
0170f120  str w8,[sp, #0x8]
0170f124  mov x0,sp
0170f128  bl 0x0174aa04
0170f12c  adrp x1,0x576a000
0170f130  adrp x3,0x736d000
0170f134  add x1,x1,#0xb52
0170f138  add x3,x3,#0x101
0170f13c  add x0,sp,#0x10
0170f140  mov x2,sp
0170f144  bl 0x0190f664
0170f148  ldr x0,[sp, #0x10]
0170f14c  mov w1,#0x10
0170f150  bl 0x0124cba0
0170f154  adrp x8,0x190f000
0170f158  dup v0.2D,xzr
0170f15c  add x8,x8,#0x40c
0170f160  mov v0.D[0x0],x8
0170f164  str q0,[x0]
0170f168  ldr x0,[sp, #0x10]
0170f16c  adrp x1,0x190f000
0170f170  add x1,x1,#0xa28
0170f174  mov w2,#0x1
0170f178  bl 0x0124ec90
0170f17c  ldr x0,[sp, #0x10]
0170f180  mov w1,#0xffffffff
0170f184  bl 0x0124c0c0
0170f188  ldr x19,[sp, #0x10]
0170f18c  orr w1,wzr,#0xfffffffb
0170f190  mov w2,#0x6e7
0170f194  mov x0,x19
0170f198  bl 0x0124a650
0170f19c  orr w1,wzr,#0xfffffffe
0170f1a0  mov x0,x19
0170f1a4  bl 0x0124c0c0
0170f1a8  orr w1,wzr,#0xfffffffe
0170f1ac  mov x0,x19
0170f1b0  bl 0x0124e920
0170f1b4  mov w20,w0
0170f1b8  adrp x1,0x576a000
0170f1bc  add x1,x1,#0xb67
0170f1c0  mov x0,x19
0170f1c4  bl 0x0124f120
0170f1c8  orr w1,wzr,#0xfffffffe
0170f1cc  mov w2,#0x1
0170f1d0  mov x0,x19
0170f1d4  bl 0x0124cfc0
0170f1d8  mov x0,x19
0170f1dc  mov w1,w20
0170f1e0  bl 0x0124e060
0170f1e4  orr w1,wzr,#0xfffffffd
0170f1e8  mov x0,x19
0170f1ec  bl 0x0124c4d0
0170f1f0  ldr x19,[sp, #0x10]
0170f1f4  orr w1,wzr,#0xfffffffd
0170f1f8  mov w2,#0x6e7
0170f1fc  mov x0,x19
0170f200  bl 0x0124a650
0170f204  orr w1,wzr,#0xfffffffe
0170f208  mov x0,x19
0170f20c  bl 0x0124c0c0
0170f210  orr w1,wzr,#0xfffffffe
0170f214  mov x0,x19
0170f218  bl 0x0124e920
0170f21c  mov w20,w0
0170f220  adrp x1,0x576a000
0170f224  add x1,x1,#0xb67
0170f228  mov x0,x19
0170f22c  bl 0x0124f120
0170f230  orr w1,wzr,#0xfffffffe
0170f234  mov w2,#0x1
0170f238  mov x0,x19
0170f23c  bl 0x0124cfc0
0170f240  mov x0,x19
0170f244  mov w1,w20
0170f248  bl 0x0124e060
0170f24c  orr w1,wzr,#0xfffffffd
0170f250  mov x0,x19
0170f254  bl 0x0124c4d0
0170f258  adrp x1,0x576a000
0170f25c  adrp x2,0x190f000
0170f260  adrp x4,0x190f000
0170f264  add x1,x1,#0xb70
0170f268  add x2,x2,#0x5fc
0170f26c  add x4,x4,#0x604
0170f270  add x0,sp,#0x10
0170f274  mov x3,xzr
0170f278  mov x5,xzr
0170f27c  bl 0x0190f414
0170f280  mov x19,x0
0170f284  ldr w8,[x19, #0x8]
0170f288  ldr x0,[x19]
0170f28c  sub w8,w8,#0x3
0170f290  str w8,[x19, #0x8]
0170f294  orr w1,wzr,#0xfffffffc
0170f298  bl 0x0124c4d0
0170f29c  ldr w8,[x19, #0x8]
0170f2a0  ldr x0,[x19]
0170f2a4  str wzr,[x19, #0x8]
0170f2a8  cmp w8,#0x1
0170f2ac  b.lt 0x0170f2b8
0170f2b0  mvn w1,w8
0170f2b4  bl 0x0124c4d0
0170f2b8  ldr w8,[sp, #0x18]
0170f2bc  cmp w8,#0x1
0170f2c0  b.lt 0x0170f2d0
0170f2c4  ldr x0,[sp, #0x10]
0170f2c8  mvn w1,w8
0170f2cc  bl 0x0124c4d0
0170f2d0  ldr w8,[sp, #0x8]
0170f2d4  cmp w8,#0x1
0170f2d8  b.lt 0x0170f2e8
0170f2dc  ldr x0,[sp]
0170f2e0  mvn w1,w8
0170f2e4  bl 0x0124c4d0
0170f2e8  ldp x29,x30,[sp, #0x30]
0170f2ec  ldp x20,x19,[sp, #0x20]
0170f2f0  add sp,sp,#0x40
0170f2f4  ret
