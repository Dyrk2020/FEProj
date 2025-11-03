// ===== case124-BuffResObject @ 016a13b4 =====
// existing function case124-BuffResObject
016a13b4  sub sp,sp,#0x40
016a13b8  stp x20,x19,[sp, #0x20]
016a13bc  stp x29,x30,[sp, #0x30]
016a13c0  add x29,sp,#0x30
016a13c4  adrp x1,0x174a000
016a13c8  add x1,x1,#0x87c
016a13cc  mov x19,x0
016a13d0  bl 0x0124ba40
016a13d4  adrp x1,0x575d000
016a13d8  add x1,x1,#0xa06
016a13dc  mov x0,x19
016a13e0  str x19,[sp]
016a13e4  bl 0x01251aa0
016a13e8  mov w8,#0x1
016a13ec  str w8,[sp, #0x8]
016a13f0  mov x0,sp
016a13f4  bl 0x0174aa04
016a13f8  adrp x1,0x575f000
016a13fc  adrp x3,0x736d000
016a1400  add x1,x1,#0xca9
016a1404  add x3,x3,#0x101
016a1408  add x0,sp,#0x10
016a140c  mov x2,sp
016a1410  bl 0x01793984
016a1414  ldr x0,[sp, #0x10]
016a1418  mov w1,#0x10
016a141c  bl 0x0124cba0
016a1420  adrp x8,0x1793000
016a1424  dup v0.2D,xzr
016a1428  add x8,x8,#0x974
016a142c  mov v0.D[0x0],x8
016a1430  str q0,[x0]
016a1434  ldr x0,[sp, #0x10]
016a1438  adrp x1,0x1793000
016a143c  add x1,x1,#0xd48
016a1440  mov w2,#0x1
016a1444  bl 0x0124ec90
016a1448  ldr x0,[sp, #0x10]
016a144c  mov w1,#0xffffffff
016a1450  bl 0x0124c0c0
016a1454  ldr x19,[sp, #0x10]
016a1458  orr w1,wzr,#0xfffffffb
016a145c  mov w2,#0x6e7
016a1460  mov x0,x19
016a1464  bl 0x0124a650
016a1468  orr w1,wzr,#0xfffffffe
016a146c  mov x0,x19
016a1470  bl 0x0124c0c0
016a1474  orr w1,wzr,#0xfffffffe
016a1478  mov x0,x19
016a147c  bl 0x0124e920
016a1480  mov w20,w0
016a1484  adrp x1,0x575e000
016a1488  add x1,x1,#0x56d
016a148c  mov x0,x19
016a1490  bl 0x0124f120
016a1494  orr w1,wzr,#0xfffffffe
016a1498  mov w2,#0x1
016a149c  mov x0,x19
016a14a0  bl 0x0124cfc0
016a14a4  mov x0,x19
016a14a8  mov w1,w20
016a14ac  bl 0x0124e060
016a14b0  orr w1,wzr,#0xfffffffd
016a14b4  mov x0,x19
016a14b8  bl 0x0124c4d0
016a14bc  ldr x19,[sp, #0x10]
016a14c0  orr w1,wzr,#0xfffffffd
016a14c4  mov w2,#0x6e7
016a14c8  mov x0,x19
016a14cc  bl 0x0124a650
016a14d0  orr w1,wzr,#0xfffffffe
016a14d4  mov x0,x19
016a14d8  bl 0x0124c0c0
016a14dc  orr w1,wzr,#0xfffffffe
016a14e0  mov x0,x19
016a14e4  bl 0x0124e920
016a14e8  mov w20,w0
016a14ec  adrp x1,0x575e000
016a14f0  add x1,x1,#0x56d
016a14f4  mov x0,x19
016a14f8  bl 0x0124f120
016a14fc  orr w1,wzr,#0xfffffffe
016a1500  mov w2,#0x1
016a1504  mov x0,x19
016a1508  bl 0x0124cfc0
016a150c  mov x0,x19
016a1510  mov w1,w20
016a1514  bl 0x0124e060
016a1518  orr w1,wzr,#0xfffffffd
016a151c  mov x0,x19
016a1520  bl 0x0124c4d0
016a1524  ldr x0,[sp, #0x10]
016a1528  mov w1,#0x10
016a152c  bl 0x0124cba0
016a1530  adrp x8,0x1793000
016a1534  dup v0.2D,xzr
016a1538  add x8,x8,#0x97c
016a153c  mov v0.D[0x0],x8
016a1540  str q0,[x0]
016a1544  ldr x0,[sp, #0x10]
016a1548  adrp x1,0x1793000
016a154c  add x1,x1,#0xe6c
016a1550  mov w2,#0x1
016a1554  bl 0x0124ec90
016a1558  ldr x0,[sp, #0x10]
016a155c  mov w1,#0xffffffff
016a1560  bl 0x0124c0c0
016a1564  ldr x19,[sp, #0x10]
016a1568  orr w1,wzr,#0xfffffffb
016a156c  mov w2,#0x6e7
016a1570  mov x0,x19
016a1574  bl 0x0124a650
016a1578  orr w1,wzr,#0xfffffffe
016a157c  mov x0,x19
016a1580  bl 0x0124c0c0
016a1584  orr w1,wzr,#0xfffffffe
016a1588  mov x0,x19
016a158c  bl 0x0124e920
016a1590  mov w20,w0
016a1594  adrp x1,0x575e000
016a1598  add x1,x1,#0x578
016a159c  mov x0,x19
016a15a0  bl 0x0124f120
016a15a4  orr w1,wzr,#0xfffffffe
016a15a8  mov w2,#0x1
016a15ac  mov x0,x19
016a15b0  bl 0x0124cfc0
016a15b4  mov x0,x19
016a15b8  mov w1,w20
016a15bc  bl 0x0124e060
016a15c0  orr w1,wzr,#0xfffffffd
016a15c4  mov x0,x19
016a15c8  bl 0x0124c4d0
016a15cc  ldr x19,[sp, #0x10]
016a15d0  orr w1,wzr,#0xfffffffd
016a15d4  mov w2,#0x6e7
016a15d8  mov x0,x19
016a15dc  bl 0x0124a650
016a15e0  orr w1,wzr,#0xfffffffe
016a15e4  mov x0,x19
016a15e8  bl 0x0124c0c0
016a15ec  orr w1,wzr,#0xfffffffe
016a15f0  mov x0,x19
016a15f4  bl 0x0124e920
016a15f8  mov w20,w0
016a15fc  adrp x1,0x575e000
016a1600  add x1,x1,#0x578
016a1604  mov x0,x19
016a1608  bl 0x0124f120
016a160c  orr w1,wzr,#0xfffffffe
016a1610  mov w2,#0x1
016a1614  mov x0,x19
016a1618  bl 0x0124cfc0
016a161c  mov x0,x19
016a1620  mov w1,w20
016a1624  bl 0x0124e060
016a1628  orr w1,wzr,#0xfffffffd
016a162c  mov x0,x19
016a1630  bl 0x0124c4d0
016a1634  ldr w8,[sp, #0x18]
016a1638  ldr x0,[sp, #0x10]
016a163c  sub w8,w8,#0x3
016a1640  str w8,[sp, #0x18]
016a1644  orr w1,wzr,#0xfffffffc
016a1648  bl 0x0124c4d0
016a164c  ldr w8,[sp, #0x18]
016a1650  ldr x0,[sp, #0x10]
016a1654  str wzr,[sp, #0x18]
016a1658  cmp w8,#0x1
016a165c  b.lt 0x016a1680
016a1660  mvn w1,w8
016a1664  bl 0x0124c4d0
016a1668  ldr w8,[sp, #0x18]
016a166c  cmp w8,#0x1
016a1670  b.lt 0x016a1680
016a1674  ldr x0,[sp, #0x10]
016a1678  mvn w1,w8
016a167c  bl 0x0124c4d0
016a1680  ldr w8,[sp, #0x8]
016a1684  cmp w8,#0x1
016a1688  b.lt 0x016a1698
016a168c  ldr x0,[sp]
016a1690  mvn w1,w8
016a1694  bl 0x0124c4d0
016a1698  ldp x29,x30,[sp, #0x30]
016a169c  ldp x20,x19,[sp, #0x20]
016a16a0  add sp,sp,#0x40
016a16a4  ret
