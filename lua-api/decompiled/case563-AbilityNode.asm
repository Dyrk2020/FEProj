// ===== case563-AbilityNode @ 016ff8c0 =====
// existing function case563-AbilityNode
016ff8c0  sub sp,sp,#0x40
016ff8c4  str x19,[sp, #0x20]
016ff8c8  stp x29,x30,[sp, #0x30]
016ff8cc  add x29,sp,#0x30
016ff8d0  adrp x1,0x174a000
016ff8d4  add x1,x1,#0x87c
016ff8d8  mov x19,x0
016ff8dc  bl 0x0124ba40
016ff8e0  adrp x1,0x575d000
016ff8e4  add x1,x1,#0xa06
016ff8e8  mov x0,x19
016ff8ec  str x19,[sp]
016ff8f0  bl 0x01251aa0
016ff8f4  mov w8,#0x1
016ff8f8  str w8,[sp, #0x8]
016ff8fc  mov x0,sp
016ff900  bl 0x0174aa04
016ff904  adrp x1,0x5769000
016ff908  adrp x3,0x736d000
016ff90c  add x1,x1,#0x692
016ff910  add x3,x3,#0x101
016ff914  add x0,sp,#0x10
016ff918  mov x2,sp
016ff91c  bl 0x018ce9ec
016ff920  adrp x1,0x5768000
016ff924  adrp x2,0x18ce000
016ff928  adrp x4,0x18ce000
016ff92c  add x1,x1,#0x3dd
016ff930  add x2,x2,#0x9a8
016ff934  add x4,x4,#0x9b0
016ff938  add x0,sp,#0x10
016ff93c  mov x3,xzr
016ff940  mov x5,xzr
016ff944  bl 0x018ce7c0
016ff948  adrp x1,0x5769000
016ff94c  adrp x2,0x18ce000
016ff950  adrp x4,0x18ce000
016ff954  add x1,x1,#0x69e
016ff958  add x2,x2,#0x9cc
016ff95c  add x4,x4,#0x9d4
016ff960  mov x3,xzr
016ff964  mov x5,xzr
016ff968  bl 0x018ce7c0
016ff96c  adrp x1,0x5769000
016ff970  adrp x2,0x18ce000
016ff974  adrp x4,0x18ce000
016ff978  add x1,x1,#0x6a5
016ff97c  add x2,x2,#0x9dc
016ff980  add x4,x4,#0x9e4
016ff984  mov x3,xzr
016ff988  mov x5,xzr
016ff98c  bl 0x018ce7c0
016ff990  mov x19,x0
016ff994  ldr w8,[x19, #0x8]
016ff998  ldr x0,[x19]
016ff99c  sub w8,w8,#0x3
016ff9a0  str w8,[x19, #0x8]
016ff9a4  orr w1,wzr,#0xfffffffc
016ff9a8  bl 0x0124c4d0
016ff9ac  ldr w8,[x19, #0x8]
016ff9b0  ldr x0,[x19]
016ff9b4  str wzr,[x19, #0x8]
016ff9b8  cmp w8,#0x1
016ff9bc  b.lt 0x016ff9c8
016ff9c0  mvn w1,w8
016ff9c4  bl 0x0124c4d0
016ff9c8  ldr w8,[sp, #0x18]
016ff9cc  cmp w8,#0x1
016ff9d0  b.lt 0x016ff9e0
016ff9d4  ldr x0,[sp, #0x10]
016ff9d8  mvn w1,w8
016ff9dc  bl 0x0124c4d0
016ff9e0  ldr w8,[sp, #0x8]
016ff9e4  cmp w8,#0x1
016ff9e8  b.lt 0x016ff9f8
016ff9ec  ldr x0,[sp]
016ff9f0  mvn w1,w8
016ff9f4  bl 0x0124c4d0
016ff9f8  ldp x29,x30,[sp, #0x30]
016ff9fc  ldr x19,[sp, #0x20]
016ffa00  add sp,sp,#0x40
016ffa04  ret
