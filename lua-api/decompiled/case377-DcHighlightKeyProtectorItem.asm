// ===== case377-DcHighlightKeyProtectorItem @ 016d72d0 =====
// existing function case377-DcHighlightKeyProtectorItem
016d72d0  sub sp,sp,#0x40
016d72d4  str x19,[sp, #0x20]
016d72d8  stp x29,x30,[sp, #0x30]
016d72dc  add x29,sp,#0x30
016d72e0  adrp x1,0x174a000
016d72e4  add x1,x1,#0x87c
016d72e8  mov x19,x0
016d72ec  bl 0x0124ba40
016d72f0  adrp x1,0x575d000
016d72f4  add x1,x1,#0xa06
016d72f8  mov x0,x19
016d72fc  str x19,[sp]
016d7300  bl 0x01251aa0
016d7304  mov w8,#0x1
016d7308  str w8,[sp, #0x8]
016d730c  mov x0,sp
016d7310  bl 0x0174aa04
016d7314  adrp x1,0x5764000
016d7318  adrp x3,0x736d000
016d731c  add x1,x1,#0xd2e
016d7320  add x3,x3,#0x101
016d7324  add x0,sp,#0x10
016d7328  mov x2,sp
016d732c  bl 0x018331ac
016d7330  adrp x1,0x5764000
016d7334  adrp x2,0x1832000
016d7338  adrp x4,0x1832000
016d733c  add x1,x1,#0xd4a
016d7340  add x2,x2,#0xd9c
016d7344  add x4,x4,#0xda4
016d7348  add x0,sp,#0x10
016d734c  mov x3,xzr
016d7350  mov x5,xzr
016d7354  bl 0x01832bb4
016d7358  adrp x1,0x5764000
016d735c  adrp x2,0x1832000
016d7360  adrp x4,0x1832000
016d7364  add x1,x1,#0xd58
016d7368  add x2,x2,#0xf94
016d736c  add x4,x4,#0xf9c
016d7370  mov x3,xzr
016d7374  mov x5,xzr
016d7378  bl 0x01832dac
016d737c  adrp x1,0x5764000
016d7380  adrp x2,0x1833000
016d7384  adrp x4,0x1833000
016d7388  add x1,x1,#0xd64
016d738c  add x2,x2,#0x18c
016d7390  add x4,x4,#0x194
016d7394  mov x3,xzr
016d7398  mov x5,xzr
016d739c  bl 0x01832fa4
016d73a0  adrp x1,0x5764000
016d73a4  adrp x2,0x1833000
016d73a8  adrp x4,0x1833000
016d73ac  add x1,x1,#0x7f
016d73b0  add x2,x2,#0x19c
016d73b4  add x4,x4,#0x1a4
016d73b8  mov x3,xzr
016d73bc  mov x5,xzr
016d73c0  bl 0x01832fa4
016d73c4  mov x19,x0
016d73c8  ldr w8,[x19, #0x8]
016d73cc  ldr x0,[x19]
016d73d0  sub w8,w8,#0x3
016d73d4  str w8,[x19, #0x8]
016d73d8  orr w1,wzr,#0xfffffffc
016d73dc  bl 0x0124c4d0
016d73e0  ldr w8,[x19, #0x8]
016d73e4  ldr x0,[x19]
016d73e8  str wzr,[x19, #0x8]
016d73ec  cmp w8,#0x1
016d73f0  b.lt 0x016d73fc
016d73f4  mvn w1,w8
016d73f8  bl 0x0124c4d0
016d73fc  ldr w8,[sp, #0x18]
016d7400  cmp w8,#0x1
016d7404  b.lt 0x016d7414
016d7408  ldr x0,[sp, #0x10]
016d740c  mvn w1,w8
016d7410  bl 0x0124c4d0
016d7414  ldr w8,[sp, #0x8]
016d7418  cmp w8,#0x1
016d741c  b.lt 0x016d742c
016d7420  ldr x0,[sp]
016d7424  mvn w1,w8
016d7428  bl 0x0124c4d0
016d742c  ldp x29,x30,[sp, #0x30]
016d7430  ldr x19,[sp, #0x20]
016d7434  add sp,sp,#0x40
016d7438  ret
