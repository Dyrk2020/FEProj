// ===== case286-MuteTakeOverResObject @ 016bd18c =====
// existing function case286-MuteTakeOverResObject
016bd18c  sub sp,sp,#0x40
016bd190  str x19,[sp, #0x20]
016bd194  stp x29,x30,[sp, #0x30]
016bd198  add x29,sp,#0x30
016bd19c  adrp x1,0x174a000
016bd1a0  add x1,x1,#0x87c
016bd1a4  mov x19,x0
016bd1a8  bl 0x0124ba40
016bd1ac  adrp x1,0x575d000
016bd1b0  add x1,x1,#0xa06
016bd1b4  mov x0,x19
016bd1b8  str x19,[sp]
016bd1bc  bl 0x01251aa0
016bd1c0  mov w8,#0x1
016bd1c4  str w8,[sp, #0x8]
016bd1c8  mov x0,sp
016bd1cc  bl 0x0174aa04
016bd1d0  adrp x1,0x5762000
016bd1d4  adrp x3,0x736d000
016bd1d8  add x1,x1,#0x2d1
016bd1dc  add x3,x3,#0x101
016bd1e0  add x0,sp,#0x10
016bd1e4  mov x2,sp
016bd1e8  bl 0x017ee418
016bd1ec  adrp x1,0x5762000
016bd1f0  adrp x2,0x17ee000
016bd1f4  adrp x4,0x17ee000
016bd1f8  add x1,x1,#0x2e7
016bd1fc  add x2,x2,#0x3c8
016bd200  add x4,x4,#0x3d0
016bd204  add x0,sp,#0x10
016bd208  mov x3,xzr
016bd20c  mov x5,xzr
016bd210  bl 0x017ee1e0
016bd214  adrp x1,0x5762000
016bd218  adrp x2,0x17ee000
016bd21c  adrp x4,0x17ee000
016bd220  add x1,x1,#0x305
016bd224  add x2,x2,#0x3d8
016bd228  add x4,x4,#0x3e0
016bd22c  mov x3,xzr
016bd230  mov x5,xzr
016bd234  bl 0x017ee1e0
016bd238  adrp x1,0x5762000
016bd23c  adrp x2,0x17ee000
016bd240  adrp x4,0x17ee000
016bd244  add x1,x1,#0x327
016bd248  add x2,x2,#0x3e8
016bd24c  add x4,x4,#0x3f0
016bd250  mov x3,xzr
016bd254  mov x5,xzr
016bd258  bl 0x017ee1e0
016bd25c  adrp x1,0x5762000
016bd260  adrp x2,0x17ee000
016bd264  adrp x4,0x17ee000
016bd268  add x1,x1,#0x347
016bd26c  add x2,x2,#0x3f8
016bd270  add x4,x4,#0x400
016bd274  mov x3,xzr
016bd278  mov x5,xzr
016bd27c  bl 0x017ee1e0
016bd280  adrp x1,0x5762000
016bd284  adrp x2,0x17ee000
016bd288  adrp x4,0x17ee000
016bd28c  add x1,x1,#0x36a
016bd290  add x2,x2,#0x408
016bd294  add x4,x4,#0x410
016bd298  mov x3,xzr
016bd29c  mov x5,xzr
016bd2a0  bl 0x017ee1e0
016bd2a4  mov x19,x0
016bd2a8  ldr w8,[x19, #0x8]
016bd2ac  ldr x0,[x19]
016bd2b0  sub w8,w8,#0x3
016bd2b4  str w8,[x19, #0x8]
016bd2b8  orr w1,wzr,#0xfffffffc
016bd2bc  bl 0x0124c4d0
016bd2c0  ldr w8,[x19, #0x8]
016bd2c4  ldr x0,[x19]
016bd2c8  str wzr,[x19, #0x8]
016bd2cc  cmp w8,#0x1
016bd2d0  b.lt 0x016bd2dc
016bd2d4  mvn w1,w8
016bd2d8  bl 0x0124c4d0
016bd2dc  ldr w8,[sp, #0x18]
016bd2e0  cmp w8,#0x1
016bd2e4  b.lt 0x016bd2f4
016bd2e8  ldr x0,[sp, #0x10]
016bd2ec  mvn w1,w8
016bd2f0  bl 0x0124c4d0
016bd2f4  ldr w8,[sp, #0x8]
016bd2f8  cmp w8,#0x1
016bd2fc  b.lt 0x016bd30c
016bd300  ldr x0,[sp]
016bd304  mvn w1,w8
016bd308  bl 0x0124c4d0
016bd30c  ldp x29,x30,[sp, #0x30]
016bd310  ldr x19,[sp, #0x20]
016bd314  add sp,sp,#0x40
016bd318  ret
