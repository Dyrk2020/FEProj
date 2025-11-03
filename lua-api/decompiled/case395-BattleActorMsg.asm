// ===== case395-BattleActorMsg @ 016de290 =====
// existing function case395-BattleActorMsg
016de290  sub sp,sp,#0x40
016de294  str x19,[sp, #0x20]
016de298  stp x29,x30,[sp, #0x30]
016de29c  add x29,sp,#0x30
016de2a0  adrp x1,0x174a000
016de2a4  add x1,x1,#0x87c
016de2a8  mov x19,x0
016de2ac  bl 0x0124ba40
016de2b0  adrp x1,0x575d000
016de2b4  add x1,x1,#0xa06
016de2b8  mov x0,x19
016de2bc  str x19,[sp]
016de2c0  bl 0x01251aa0
016de2c4  mov w8,#0x1
016de2c8  str w8,[sp, #0x8]
016de2cc  mov x0,sp
016de2d0  bl 0x0174aa04
016de2d4  adrp x1,0x5765000
016de2d8  adrp x3,0x736d000
016de2dc  add x1,x1,#0x671
016de2e0  add x3,x3,#0x101
016de2e4  add x0,sp,#0x10
016de2e8  mov x2,sp
016de2ec  bl 0x01845760
016de2f0  adrp x1,0x5765000
016de2f4  adrp x2,0x1845000
016de2f8  adrp x4,0x1845000
016de2fc  add x1,x1,#0x680
016de300  add x2,x2,#0x750
016de304  add x4,x4,#0x758
016de308  add x0,sp,#0x10
016de30c  mov x3,xzr
016de310  mov x5,xzr
016de314  bl 0x01845568
016de318  mov x19,x0
016de31c  ldr w8,[x19, #0x8]
016de320  ldr x0,[x19]
016de324  sub w8,w8,#0x3
016de328  str w8,[x19, #0x8]
016de32c  orr w1,wzr,#0xfffffffc
016de330  bl 0x0124c4d0
016de334  ldr w8,[x19, #0x8]
016de338  ldr x0,[x19]
016de33c  str wzr,[x19, #0x8]
016de340  cmp w8,#0x1
016de344  b.lt 0x016de350
016de348  mvn w1,w8
016de34c  bl 0x0124c4d0
016de350  ldr w8,[sp, #0x18]
016de354  cmp w8,#0x1
016de358  b.lt 0x016de368
016de35c  ldr x0,[sp, #0x10]
016de360  mvn w1,w8
016de364  bl 0x0124c4d0
016de368  ldr w8,[sp, #0x8]
016de36c  cmp w8,#0x1
016de370  b.lt 0x016de380
016de374  ldr x0,[sp]
016de378  mvn w1,w8
016de37c  bl 0x0124c4d0
016de380  ldp x29,x30,[sp, #0x30]
016de384  ldr x19,[sp, #0x20]
016de388  add sp,sp,#0x40
016de38c  ret
