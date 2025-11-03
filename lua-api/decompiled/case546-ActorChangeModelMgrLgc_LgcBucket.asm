// ===== case546-ActorChangeModelMgrLgc_LgcBucket @ 016fc068 =====
// existing function case546-ActorChangeModelMgrLgc_LgcBucket
016fc068  sub sp,sp,#0x40
016fc06c  str x19,[sp, #0x20]
016fc070  stp x29,x30,[sp, #0x30]
016fc074  add x29,sp,#0x30
016fc078  adrp x1,0x174a000
016fc07c  add x1,x1,#0x87c
016fc080  mov x19,x0
016fc084  bl 0x0124ba40
016fc088  adrp x1,0x575d000
016fc08c  add x1,x1,#0xa06
016fc090  mov x0,x19
016fc094  str x19,[sp]
016fc098  bl 0x01251aa0
016fc09c  mov w8,#0x1
016fc0a0  str w8,[sp, #0x8]
016fc0a4  mov x0,sp
016fc0a8  bl 0x0174aa04
016fc0ac  adrp x1,0x5769000
016fc0b0  adrp x3,0x736d000
016fc0b4  add x1,x1,#0x1cc
016fc0b8  add x3,x3,#0x101
016fc0bc  add x0,sp,#0x10
016fc0c0  mov x2,sp
016fc0c4  bl 0x018bede4
016fc0c8  adrp x1,0x5769000
016fc0cc  adrp x2,0x18be000
016fc0d0  adrp x4,0x18be000
016fc0d4  add x1,x1,#0x1ed
016fc0d8  add x2,x2,#0xbdc
016fc0dc  add x4,x4,#0xbe4
016fc0e0  add x0,sp,#0x10
016fc0e4  mov x3,xzr
016fc0e8  mov x5,xzr
016fc0ec  bl 0x018be9f4
016fc0f0  adrp x1,0x5769000
016fc0f4  adrp x2,0x18be000
016fc0f8  adrp x4,0x18be000
016fc0fc  add x1,x1,#0x1fd
016fc100  add x2,x2,#0xdd4
016fc104  add x4,x4,#0xddc
016fc108  mov x3,xzr
016fc10c  mov x5,xzr
016fc110  bl 0x018bebec
016fc114  mov x19,x0
016fc118  ldr w8,[x19, #0x8]
016fc11c  ldr x0,[x19]
016fc120  sub w8,w8,#0x3
016fc124  str w8,[x19, #0x8]
016fc128  orr w1,wzr,#0xfffffffc
016fc12c  bl 0x0124c4d0
016fc130  ldr w8,[x19, #0x8]
016fc134  ldr x0,[x19]
016fc138  str wzr,[x19, #0x8]
016fc13c  cmp w8,#0x1
016fc140  b.lt 0x016fc14c
016fc144  mvn w1,w8
016fc148  bl 0x0124c4d0
016fc14c  ldr w8,[sp, #0x18]
016fc150  cmp w8,#0x1
016fc154  b.lt 0x016fc164
016fc158  ldr x0,[sp, #0x10]
016fc15c  mvn w1,w8
016fc160  bl 0x0124c4d0
016fc164  ldr w8,[sp, #0x8]
016fc168  cmp w8,#0x1
016fc16c  b.lt 0x016fc17c
016fc170  ldr x0,[sp]
016fc174  mvn w1,w8
016fc178  bl 0x0124c4d0
016fc17c  ldp x29,x30,[sp, #0x30]
016fc180  ldr x19,[sp, #0x20]
016fc184  add sp,sp,#0x40
016fc188  ret
