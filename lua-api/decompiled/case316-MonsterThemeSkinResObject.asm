// ===== case316-MonsterThemeSkinResObject @ 016c1384 =====
// existing function case316-MonsterThemeSkinResObject
016c1384  sub sp,sp,#0x40
016c1388  stp x20,x19,[sp, #0x20]
016c138c  stp x29,x30,[sp, #0x30]
016c1390  add x29,sp,#0x30
016c1394  adrp x1,0x174a000
016c1398  add x1,x1,#0x87c
016c139c  mov x19,x0
016c13a0  bl 0x0124ba40
016c13a4  adrp x1,0x575d000
016c13a8  add x1,x1,#0xa06
016c13ac  mov x0,x19
016c13b0  str x19,[sp]
016c13b4  bl 0x01251aa0
016c13b8  mov w8,#0x1
016c13bc  str w8,[sp, #0x8]
016c13c0  mov x0,sp
016c13c4  bl 0x0174aa04
016c13c8  adrp x1,0x5762000
016c13cc  adrp x3,0x736d000
016c13d0  add x1,x1,#0xa14
016c13d4  add x3,x3,#0x101
016c13d8  add x0,sp,#0x10
016c13dc  mov x2,sp
016c13e0  bl 0x017fcfac
016c13e4  ldr x0,[sp, #0x10]
016c13e8  mov w1,#0x10
016c13ec  bl 0x0124cba0
016c13f0  adrp x8,0x17fc000
016c13f4  dup v0.2D,xzr
016c13f8  add x8,x8,#0xfa4
016c13fc  mov v0.D[0x0],x8
016c1400  str q0,[x0]
016c1404  ldr x0,[sp, #0x10]
016c1408  adrp x1,0x17fd000
016c140c  add x1,x1,#0x370
016c1410  mov w2,#0x1
016c1414  bl 0x0124ec90
016c1418  ldr x0,[sp, #0x10]
016c141c  mov w1,#0xffffffff
016c1420  bl 0x0124c0c0
016c1424  ldr x19,[sp, #0x10]
016c1428  orr w1,wzr,#0xfffffffb
016c142c  mov w2,#0x6e7
016c1430  mov x0,x19
016c1434  bl 0x0124a650
016c1438  orr w1,wzr,#0xfffffffe
016c143c  mov x0,x19
016c1440  bl 0x0124c0c0
016c1444  orr w1,wzr,#0xfffffffe
016c1448  mov x0,x19
016c144c  bl 0x0124e920
016c1450  mov w20,w0
016c1454  adrp x1,0x5762000
016c1458  add x1,x1,#0xa2e
016c145c  mov x0,x19
016c1460  bl 0x0124f120
016c1464  orr w1,wzr,#0xfffffffe
016c1468  mov w2,#0x1
016c146c  mov x0,x19
016c1470  bl 0x0124cfc0
016c1474  mov x0,x19
016c1478  mov w1,w20
016c147c  bl 0x0124e060
016c1480  orr w1,wzr,#0xfffffffd
016c1484  mov x0,x19
016c1488  bl 0x0124c4d0
016c148c  ldr x19,[sp, #0x10]
016c1490  orr w1,wzr,#0xfffffffd
016c1494  mov w2,#0x6e7
016c1498  mov x0,x19
016c149c  bl 0x0124a650
016c14a0  orr w1,wzr,#0xfffffffe
016c14a4  mov x0,x19
016c14a8  bl 0x0124c0c0
016c14ac  orr w1,wzr,#0xfffffffe
016c14b0  mov x0,x19
016c14b4  bl 0x0124e920
016c14b8  mov w20,w0
016c14bc  adrp x1,0x5762000
016c14c0  add x1,x1,#0xa2e
016c14c4  mov x0,x19
016c14c8  bl 0x0124f120
016c14cc  orr w1,wzr,#0xfffffffe
016c14d0  mov w2,#0x1
016c14d4  mov x0,x19
016c14d8  bl 0x0124cfc0
016c14dc  mov x0,x19
016c14e0  mov w1,w20
016c14e4  bl 0x0124e060
016c14e8  orr w1,wzr,#0xfffffffd
016c14ec  mov x0,x19
016c14f0  bl 0x0124c4d0
016c14f4  ldr w8,[sp, #0x18]
016c14f8  ldr x0,[sp, #0x10]
016c14fc  sub w8,w8,#0x3
016c1500  str w8,[sp, #0x18]
016c1504  orr w1,wzr,#0xfffffffc
016c1508  bl 0x0124c4d0
016c150c  ldr w8,[sp, #0x18]
016c1510  ldr x0,[sp, #0x10]
016c1514  str wzr,[sp, #0x18]
016c1518  cmp w8,#0x1
016c151c  b.lt 0x016c1540
016c1520  mvn w1,w8
016c1524  bl 0x0124c4d0
016c1528  ldr w8,[sp, #0x18]
016c152c  cmp w8,#0x1
016c1530  b.lt 0x016c1540
016c1534  ldr x0,[sp, #0x10]
016c1538  mvn w1,w8
016c153c  bl 0x0124c4d0
016c1540  ldr w8,[sp, #0x8]
016c1544  cmp w8,#0x1
016c1548  b.lt 0x016c1558
016c154c  ldr x0,[sp]
016c1550  mvn w1,w8
016c1554  bl 0x0124c4d0
016c1558  ldp x29,x30,[sp, #0x30]
016c155c  ldp x20,x19,[sp, #0x20]
016c1560  add sp,sp,#0x40
016c1564  ret
