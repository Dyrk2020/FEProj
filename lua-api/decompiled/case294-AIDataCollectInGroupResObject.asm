// ===== case294-AIDataCollectInGroupResObject @ 016be20c =====
// existing function case294-AIDataCollectInGroupResObject
016be20c  sub sp,sp,#0x40
016be210  str x19,[sp, #0x20]
016be214  stp x29,x30,[sp, #0x30]
016be218  add x29,sp,#0x30
016be21c  adrp x1,0x174a000
016be220  add x1,x1,#0x87c
016be224  mov x19,x0
016be228  bl 0x0124ba40
016be22c  adrp x1,0x575d000
016be230  add x1,x1,#0xa06
016be234  mov x0,x19
016be238  str x19,[sp]
016be23c  bl 0x01251aa0
016be240  mov w8,#0x1
016be244  str w8,[sp, #0x8]
016be248  mov x0,sp
016be24c  bl 0x0174aa04
016be250  adrp x1,0x5762000
016be254  adrp x3,0x736d000
016be258  add x1,x1,#0x554
016be25c  add x3,x3,#0x101
016be260  add x0,sp,#0x10
016be264  mov x2,sp
016be268  bl 0x017f27e0
016be26c  adrp x1,0x5762000
016be270  adrp x2,0x17f2000
016be274  adrp x4,0x17f2000
016be278  add x1,x1,#0x572
016be27c  add x2,x2,#0x7b0
016be280  add x4,x4,#0x7b8
016be284  add x0,sp,#0x10
016be288  mov x3,xzr
016be28c  mov x5,xzr
016be290  bl 0x017f25c8
016be294  adrp x1,0x5762000
016be298  adrp x2,0x17f2000
016be29c  adrp x4,0x17f2000
016be2a0  add x1,x1,#0x582
016be2a4  add x2,x2,#0x7c0
016be2a8  add x4,x4,#0x7c8
016be2ac  mov x3,xzr
016be2b0  mov x5,xzr
016be2b4  bl 0x017f25c8
016be2b8  adrp x1,0x5762000
016be2bc  adrp x2,0x17f2000
016be2c0  adrp x4,0x17f2000
016be2c4  add x1,x1,#0x595
016be2c8  add x2,x2,#0x7d0
016be2cc  add x4,x4,#0x7d8
016be2d0  mov x3,xzr
016be2d4  mov x5,xzr
016be2d8  bl 0x017f25c8
016be2dc  mov x19,x0
016be2e0  ldr w8,[x19, #0x8]
016be2e4  ldr x0,[x19]
016be2e8  sub w8,w8,#0x3
016be2ec  str w8,[x19, #0x8]
016be2f0  orr w1,wzr,#0xfffffffc
016be2f4  bl 0x0124c4d0
016be2f8  ldr w8,[x19, #0x8]
016be2fc  ldr x0,[x19]
016be300  str wzr,[x19, #0x8]
016be304  cmp w8,#0x1
016be308  b.lt 0x016be314
016be30c  mvn w1,w8
016be310  bl 0x0124c4d0
016be314  ldr w8,[sp, #0x18]
016be318  cmp w8,#0x1
016be31c  b.lt 0x016be32c
016be320  ldr x0,[sp, #0x10]
016be324  mvn w1,w8
016be328  bl 0x0124c4d0
016be32c  ldr w8,[sp, #0x8]
016be330  cmp w8,#0x1
016be334  b.lt 0x016be344
016be338  ldr x0,[sp]
016be33c  mvn w1,w8
016be340  bl 0x0124c4d0
016be344  ldp x29,x30,[sp, #0x30]
016be348  ldr x19,[sp, #0x20]
016be34c  add sp,sp,#0x40
016be350  ret
