// ===== case512-ActorComponentFow @ 016f6304 =====
// existing function case512-ActorComponentFow
016f6304  sub sp,sp,#0x40
016f6308  str x19,[sp, #0x20]
016f630c  stp x29,x30,[sp, #0x30]
016f6310  add x29,sp,#0x30
016f6314  adrp x1,0x174a000
016f6318  add x1,x1,#0x87c
016f631c  mov x19,x0
016f6320  bl 0x0124ba40
016f6324  adrp x1,0x575d000
016f6328  add x1,x1,#0xa06
016f632c  mov x0,x19
016f6330  str x19,[sp]
016f6334  bl 0x01251aa0
016f6338  mov w8,#0x1
016f633c  str w8,[sp, #0x8]
016f6340  mov x0,sp
016f6344  bl 0x0174aa04
016f6348  adrp x1,0x5768000
016f634c  adrp x3,0x736d000
016f6350  add x1,x1,#0x4a7
016f6354  add x3,x3,#0x101
016f6358  add x0,sp,#0x10
016f635c  mov x2,sp
016f6360  bl 0x0189f4b8
016f6364  adrp x1,0x5768000
016f6368  adrp x2,0x189f000
016f636c  adrp x4,0x189f000
016f6370  add x1,x1,#0x4b9
016f6374  add x2,x2,#0x27c
016f6378  add x4,x4,#0x284
016f637c  add x0,sp,#0x10
016f6380  mov x3,xzr
016f6384  mov x5,xzr
016f6388  bl 0x0189f094
016f638c  adrp x1,0x5768000
016f6390  adrp x2,0x189f000
016f6394  adrp x4,0x189f000
016f6398  add x1,x1,#0x4ce
016f639c  add x2,x2,#0x28c
016f63a0  add x4,x4,#0x294
016f63a4  mov x3,xzr
016f63a8  mov x5,xzr
016f63ac  bl 0x0189f094
016f63b0  adrp x1,0x5768000
016f63b4  adrp x2,0x189f000
016f63b8  adrp x4,0x189f000
016f63bc  add x1,x1,#0x4e5
016f63c0  add x2,x2,#0x29c
016f63c4  add x4,x4,#0x2a4
016f63c8  mov x3,xzr
016f63cc  mov x5,xzr
016f63d0  bl 0x0189f094
016f63d4  adrp x1,0x5768000
016f63d8  adrp x2,0x189f000
016f63dc  adrp x4,0x189f000
016f63e0  add x1,x1,#0x4f6
016f63e4  add x2,x2,#0x4a8
016f63e8  add x4,x4,#0x4b0
016f63ec  mov x3,xzr
016f63f0  mov x5,xzr
016f63f4  bl 0x0189f2c0
016f63f8  mov x19,x0
016f63fc  ldr w8,[x19, #0x8]
016f6400  ldr x0,[x19]
016f6404  sub w8,w8,#0x3
016f6408  str w8,[x19, #0x8]
016f640c  orr w1,wzr,#0xfffffffc
016f6410  bl 0x0124c4d0
016f6414  ldr w8,[x19, #0x8]
016f6418  ldr x0,[x19]
016f641c  str wzr,[x19, #0x8]
016f6420  cmp w8,#0x1
016f6424  b.lt 0x016f6430
016f6428  mvn w1,w8
016f642c  bl 0x0124c4d0
016f6430  ldr w8,[sp, #0x18]
016f6434  cmp w8,#0x1
016f6438  b.lt 0x016f6448
016f643c  ldr x0,[sp, #0x10]
016f6440  mvn w1,w8
016f6444  bl 0x0124c4d0
016f6448  ldr w8,[sp, #0x8]
016f644c  cmp w8,#0x1
016f6450  b.lt 0x016f6460
016f6454  ldr x0,[sp]
016f6458  mvn w1,w8
016f645c  bl 0x0124c4d0
016f6460  ldp x29,x30,[sp, #0x30]
016f6464  ldr x19,[sp, #0x20]
016f6468  add sp,sp,#0x40
016f646c  ret
