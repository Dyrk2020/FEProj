// ===== case629-BattlePlayerCommercialItem @ 0170e560 =====
// existing function case629-BattlePlayerCommercialItem
0170e560  sub sp,sp,#0x40
0170e564  str x19,[sp, #0x20]
0170e568  stp x29,x30,[sp, #0x30]
0170e56c  add x29,sp,#0x30
0170e570  adrp x1,0x174a000
0170e574  add x1,x1,#0x87c
0170e578  mov x19,x0
0170e57c  bl 0x0124ba40
0170e580  adrp x1,0x575d000
0170e584  add x1,x1,#0xa06
0170e588  mov x0,x19
0170e58c  str x19,[sp]
0170e590  bl 0x01251aa0
0170e594  mov w8,#0x1
0170e598  str w8,[sp, #0x8]
0170e59c  mov x0,sp
0170e5a0  bl 0x0174aa04
0170e5a4  adrp x1,0x576a000
0170e5a8  adrp x3,0x736d000
0170e5ac  add x1,x1,#0xa27
0170e5b0  add x3,x3,#0x101
0170e5b4  add x0,sp,#0x10
0170e5b8  mov x2,sp
0170e5bc  bl 0x0190a7ec
0170e5c0  adrp x1,0x5760000
0170e5c4  adrp x2,0x190a000
0170e5c8  adrp x4,0x190a000
0170e5cc  add x1,x1,#0xad4
0170e5d0  add x2,x2,#0x738
0170e5d4  add x4,x4,#0x740
0170e5d8  add x0,sp,#0x10
0170e5dc  mov x3,xzr
0170e5e0  mov x5,xzr
0170e5e4  bl 0x0190a550
0170e5e8  adrp x1,0x576a000
0170e5ec  adrp x2,0x190a000
0170e5f0  adrp x4,0x190a000
0170e5f4  add x1,x1,#0xa42
0170e5f8  add x2,x2,#0x75c
0170e5fc  add x4,x4,#0x764
0170e600  mov x3,xzr
0170e604  mov x5,xzr
0170e608  bl 0x0190a550
0170e60c  adrp x1,0x576a000
0170e610  adrp x2,0x190a000
0170e614  adrp x4,0x190a000
0170e618  add x1,x1,#0xa4d
0170e61c  add x2,x2,#0x780
0170e620  add x4,x4,#0x788
0170e624  mov x3,xzr
0170e628  mov x5,xzr
0170e62c  bl 0x0190a550
0170e630  adrp x1,0x576a000
0170e634  adrp x2,0x190a000
0170e638  adrp x4,0x190a000
0170e63c  add x1,x1,#0xa57
0170e640  add x2,x2,#0x7a4
0170e644  add x4,x4,#0x7ac
0170e648  mov x3,xzr
0170e64c  mov x5,xzr
0170e650  bl 0x0190a550
0170e654  adrp x1,0x576a000
0170e658  adrp x2,0x190a000
0170e65c  adrp x4,0x190a000
0170e660  add x1,x1,#0xa63
0170e664  add x2,x2,#0x7c8
0170e668  add x4,x4,#0x7d0
0170e66c  mov x3,xzr
0170e670  mov x5,xzr
0170e674  bl 0x0190a550
0170e678  mov x19,x0
0170e67c  ldr w8,[x19, #0x8]
0170e680  ldr x0,[x19]
0170e684  sub w8,w8,#0x3
0170e688  str w8,[x19, #0x8]
0170e68c  orr w1,wzr,#0xfffffffc
0170e690  bl 0x0124c4d0
0170e694  ldr w8,[x19, #0x8]
0170e698  ldr x0,[x19]
0170e69c  str wzr,[x19, #0x8]
0170e6a0  cmp w8,#0x1
0170e6a4  b.lt 0x0170e6b0
0170e6a8  mvn w1,w8
0170e6ac  bl 0x0124c4d0
0170e6b0  ldr w8,[sp, #0x18]
0170e6b4  cmp w8,#0x1
0170e6b8  b.lt 0x0170e6c8
0170e6bc  ldr x0,[sp, #0x10]
0170e6c0  mvn w1,w8
0170e6c4  bl 0x0124c4d0
0170e6c8  ldr w8,[sp, #0x8]
0170e6cc  cmp w8,#0x1
0170e6d0  b.lt 0x0170e6e0
0170e6d4  ldr x0,[sp]
0170e6d8  mvn w1,w8
0170e6dc  bl 0x0124c4d0
0170e6e0  ldp x29,x30,[sp, #0x30]
0170e6e4  ldr x19,[sp, #0x20]
0170e6e8  add sp,sp,#0x40
0170e6ec  ret
