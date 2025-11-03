// ===== case317-ExpMoneyRevise @ 016c15cc =====
// existing function case317-ExpMoneyRevise
016c15cc  sub sp,sp,#0x40
016c15d0  str x19,[sp, #0x20]
016c15d4  stp x29,x30,[sp, #0x30]
016c15d8  add x29,sp,#0x30
016c15dc  adrp x1,0x174a000
016c15e0  add x1,x1,#0x87c
016c15e4  mov x19,x0
016c15e8  bl 0x0124ba40
016c15ec  adrp x1,0x575d000
016c15f0  add x1,x1,#0xa06
016c15f4  mov x0,x19
016c15f8  str x19,[sp]
016c15fc  bl 0x01251aa0
016c1600  mov w8,#0x1
016c1604  str w8,[sp, #0x8]
016c1608  mov x0,sp
016c160c  bl 0x0174aa04
016c1610  adrp x1,0x5763000
016c1614  adrp x3,0x736d000
016c1618  add x1,x1,#0x6a0
016c161c  add x3,x3,#0x101
016c1620  add x0,sp,#0x10
016c1624  mov x2,sp
016c1628  bl 0x017fd6bc
016c162c  adrp x1,0x5762000
016c1630  adrp x2,0x17fd000
016c1634  adrp x4,0x17fd000
016c1638  add x1,x1,#0xa36
016c163c  add x2,x2,#0x67c
016c1640  add x4,x4,#0x684
016c1644  add x0,sp,#0x10
016c1648  mov x3,xzr
016c164c  mov x5,xzr
016c1650  bl 0x017fd494
016c1654  adrp x1,0x5762000
016c1658  adrp x2,0x17fd000
016c165c  adrp x4,0x17fd000
016c1660  add x1,x1,#0xa48
016c1664  add x2,x2,#0x68c
016c1668  add x4,x4,#0x694
016c166c  mov x3,xzr
016c1670  mov x5,xzr
016c1674  bl 0x017fd494
016c1678  adrp x1,0x5762000
016c167c  adrp x2,0x17fd000
016c1680  adrp x4,0x17fd000
016c1684  add x1,x1,#0xa53
016c1688  add x2,x2,#0x69c
016c168c  add x4,x4,#0x6a4
016c1690  mov x3,xzr
016c1694  mov x5,xzr
016c1698  bl 0x017fd494
016c169c  adrp x1,0x5762000
016c16a0  adrp x2,0x17fd000
016c16a4  adrp x4,0x17fd000
016c16a8  add x1,x1,#0xa62
016c16ac  add x2,x2,#0x6ac
016c16b0  add x4,x4,#0x6b4
016c16b4  mov x3,xzr
016c16b8  mov x5,xzr
016c16bc  bl 0x017fd494
016c16c0  mov x19,x0
016c16c4  ldr w8,[x19, #0x8]
016c16c8  ldr x0,[x19]
016c16cc  sub w8,w8,#0x3
016c16d0  str w8,[x19, #0x8]
016c16d4  orr w1,wzr,#0xfffffffc
016c16d8  bl 0x0124c4d0
016c16dc  ldr w8,[x19, #0x8]
016c16e0  ldr x0,[x19]
016c16e4  str wzr,[x19, #0x8]
016c16e8  cmp w8,#0x1
016c16ec  b.lt 0x016c16f8
016c16f0  mvn w1,w8
016c16f4  bl 0x0124c4d0
016c16f8  ldr w8,[sp, #0x18]
016c16fc  cmp w8,#0x1
016c1700  b.lt 0x016c1710
016c1704  ldr x0,[sp, #0x10]
016c1708  mvn w1,w8
016c170c  bl 0x0124c4d0
016c1710  ldr w8,[sp, #0x8]
016c1714  cmp w8,#0x1
016c1718  b.lt 0x016c1728
016c171c  ldr x0,[sp]
016c1720  mvn w1,w8
016c1724  bl 0x0124c4d0
016c1728  ldp x29,x30,[sp, #0x30]
016c172c  ldr x19,[sp, #0x20]
016c1730  add sp,sp,#0x40
016c1734  ret
