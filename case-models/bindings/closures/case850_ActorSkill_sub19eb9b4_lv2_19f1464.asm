// ===== case850_ActorSkill_sub19eb9b4_lv2_19f1464 @ 019f1464 (DecompileAt3: cleared stale instructions at entry) =====
019f1464  str x23,[sp, #-0x40]!
019f1468  stp x22,x21,[sp, #0x10]
019f146c  stp x20,x19,[sp, #0x20]
019f1470  stp x29,x30,[sp, #0x30]
019f1474  add x29,sp,#0x30
019f1478  mov x19,x0
019f147c  ldr w8,[x19]
019f1480  mov w20,w1
019f1484  cmp w8,w20
019f1488  b.eq 0x019f1554
019f148c  adrp x21,0x7319000
019f1490  ldr x21,[x21, #0x548]
019f1494  ldr x8,[x21]
019f1498  cbz x8,0x019f14ec
019f149c  mov x0,xzr
019f14a0  bl 0x01b4868c
019f14a4  tst w0,#0xff
019f14a8  b.eq 0x019f1550
019f14ac  ldr w8,[x19]
019f14b0  cmp w8,w20
019f14b4  b.eq 0x019f1550
019f14b8  sub x21,x19,#0x644
019f14bc  ldr w8,[x21]
019f14c0  cmp w8,#0x1
019f14c4  b.lt 0x019f1550
019f14c8  bl 0x01b4635c
019f14cc  ldr w8,[x21]
019f14d0  ldr x0,[x0, #0x38]
019f14d4  mov w2,#0x887
019f14d8  mov w1,w20
019f14dc  add w8,w8,#0x155
019f14e0  str w8,[x0, #0x10]
019f14e4  bl 0x01b490fc
019f14e8  b 0x019f1550
019f14ec  str x30,[x21]
019f14f0  adrp x22,0x7317000
019f14f4  ldr x22,[x22, #0xd28]
019f14f8  mov x0,xzr
019f14fc  strb wzr,[x22]
019f1500  bl 0x01b4868c
019f1504  tst w0,#0xff
019f1508  b.eq 0x019f1548
019f150c  ldr w8,[x19]
019f1510  cmp w8,w20
019f1514  b.eq 0x019f1548
019f1518  sub x23,x19,#0x644
019f151c  ldr w8,[x23]
019f1520  cmp w8,#0x1
019f1524  b.lt 0x019f1548
019f1528  bl 0x01b4635c
019f152c  ldr w8,[x23]
019f1530  ldr x0,[x0, #0x38]
019f1534  mov w2,#0x887
019f1538  mov w1,w20
019f153c  add w8,w8,#0x155
019f1540  str w8,[x0, #0x10]
019f1544  bl 0x01b490fc
019f1548  strb wzr,[x22]
019f154c  str xzr,[x21]
019f1550  str w20,[x19]
019f1554  mov x0,x19
019f1558  ldp x29,x30,[sp, #0x30]
019f155c  ldp x20,x19,[sp, #0x20]
019f1560  ldp x22,x21,[sp, #0x10]
019f1564  ldr x23,[sp], #0x40
019f1568  ret
019f156c  str x23,[sp, #-0x40]!
019f1570  stp x22,x21,[sp, #0x10]
019f1574  stp x20,x19,[sp, #0x20]
019f1578  stp x29,x30,[sp, #0x30]
019f157c  add x29,sp,#0x30
019f1580  mov x19,x0
019f1584  ldr w8,[x19]
019f1588  mov w20,w1
019f158c  cmp w8,w20
019f1590  b.eq 0x019f16c8
019f1594  adrp x21,0x7319000
019f1598  ldr x21,[x21, #0x548]
019f159c  ldr x8,[x21]
019f15a0  cbz x8,0x019f15f4
019f15a4  mov x0,xzr
019f15a8  bl 0x01b4868c
019f15ac  tst w0,#0xff
019f15b0  b.eq 0x019f1658
019f15b4  ldr w8,[x19]
019f15b8  cmp w8,w20
019f15bc  b.eq 0x019f1658
019f15c0  sub x21,x19,#0x648
019f15c4  ldr w8,[x21]
019f15c8  cmp w8,#0x1
019f15cc  b.lt 0x019f1658
019f15d0  bl 0x01b4635c
019f15d4  ldr w8,[x21]
019f15d8  ldr x0,[x0, #0x38]
019f15dc  mov w2,#0x889
019f15e0  mov w1,w20
019f15e4  add w8,w8,#0x159
019f15e8  str w8,[x0, #0x10]
019f15ec  bl 0x01b490fc
019f15f0  b 0x019f1658
019f15f4  str x30,[x21]
019f15f8  adrp x22,0x7317000
019f15fc  ldr x22,[x22, #0xd28]
019f1600  mov x0,xzr
019f1604  strb wzr,[x22]
019f1608  bl 0x01b4868c
019f160c  tst w0,#0xff
019f1610  b.eq 0x019f1650
019f1614  ldr w8,[x19]
019f1618  cmp w8,w20
019f161c  b.eq 0x019f1650
019f1620  sub x23,x19,#0x648
019f1624  ldr w8,[x23]
019f1628  cmp w8,#0x1
019f162c  b.lt 0x019f1650
019f1630  bl 0x01b4635c
019f1634  ldr w8,[x23]
019f1638  ldr x0,[x0, #0x38]
019f163c  mov w2,#0x889
019f1640  mov w1,w20
019f1644  add w8,w8,#0x159
019f1648  str w8,[x0, #0x10]
019f164c  bl 0x01b490fc
019f1650  strb wzr,[x22]
019f1654  str xzr,[x21]
019f1658  str w20,[x19]
019f165c  sub x8,x19,#0x64c
019f1660  ldr w9,[x8]
019f1664  mov w8,w9
019f1668  tbz w9,#0x1f,0x019f1678
019f166c  sub x8,x19,#0x654
019f1670  sub x8,x8,w9, SXTH 
019f1674  ldr w8,[x8]
019f1678  ubfx w10,w9,#0x10,#0xf
019f167c  cmp w9,#0x0
019f1680  csel w1,wzr,w10,ge
019f1684  str w20,[sp, #0xc]
019f1688  tbnz w8,#0x1f,0x019f16a4
019f168c  cbz w8,0x019f16c8
019f1690  mov w2,#0x2e
019f1694  add x3,sp,#0xc
019f1698  mov w0,w8
019f169c  bl 0x01b1d8c0
019f16a0  b 0x019f16c8
019f16a4  mov x3,#0x6472
019f16a8  adrp x2,0x574b000
019f16ac  movk x3,#0x7474, LSL #16
019f16b0  add x2,x2,#0x398
019f16b4  mov w1,#0x1
019f16b8  movk x3,#0x100, LSL #48
019f16bc  mov w0,wzr
019f16c0  mov w4,w8
019f16c4  bl 0x01b83618
019f16c8  mov x0,x19
019f16cc  ldp x29,x30,[sp, #0x30]
019f16d0  ldp x20,x19,[sp, #0x20]
019f16d4  ldp x22,x21,[sp, #0x10]
019f16d8  ldr x23,[sp], #0x40
019f16dc  ret
019f16e0  str x23,[sp, #-0x40]!
019f16e4  stp x22,x21,[sp, #0x10]
019f16e8  stp x20,x19,[sp, #0x20]
019f16ec  stp x29,x30,[sp, #0x30]
019f16f0  add x29,sp,#0x30
019f16f4  mov x19,x0
019f16f8  ldrb w8,[x19]
019f16fc  mov w20,w1
019f1700  cmp w8,w20, UXTB 
019f1704  b.eq 0x019f17d0
019f1708  adrp x21,0x7319000
019f170c  ldr x21,[x21, #0x548]
019f1710  ldr x8,[x21]
019f1714  cbz x8,0x019f1768
019f1718  mov x0,xzr
019f171c  bl 0x01b4868c
019f1720  tst w0,#0xff
019f1724  b.eq 0x019f17cc
019f1728  ldrb w8,[x19]
019f172c  cmp w8,w20, UXTB 
019f1730  b.eq 0x019f17cc
019f1734  sub x21,x19,#0x64c
019f1738  ldr w8,[x21]
019f173c  cmp w8,#0x1
019f1740  b.lt 0x019f17cc
019f1744  bl 0x01b4635c
019f1748  ldr w8,[x21]
019f174c  ldr x0,[x0, #0x38]
019f1750  mov w2,#0x88b
019f1754  mov w1,w20
019f1758  add w8,w8,#0x15d
019f175c  str w8,[x0, #0x10]
019f1760  bl 0x01b4907c
019f1764  b 0x019f17cc
019f1768  str x30,[x21]
019f176c  adrp x22,0x7317000
019f1770  ldr x22,[x22, #0xd28]
019f1774  mov x0,xzr
019f1778  strb wzr,[x22]
019f177c  bl 0x01b4868c
019f1780  tst w0,#0xff
019f1784  b.eq 0x019f17c4
019f1788  ldrb w8,[x19]
019f178c  cmp w8,w20, UXTB 
019f1790  b.eq 0x019f17c4
019f1794  sub x23,x19,#0x64c
019f1798  ldr w8,[x23]
019f179c  cmp w8,#0x1
019f17a0  b.lt 0x019f17c4
019f17a4  bl 0x01b4635c
019f17a8  ldr w8,[x23]
019f17ac  ldr x0,[x0, #0x38]
019f17b0  mov w2,#0x88b
019f17b4  mov w1,w20
019f17b8  add w8,w8,#0x15d
019f17bc  str w8,[x0, #0x10]
019f17c0  bl 0x01b4907c
019f17c4  strb wzr,[x22]
019f17c8  str xzr,[x21]
019f17cc  strb w20,[x19]
019f17d0  mov x0,x19
019f17d4  ldp x29,x30,[sp, #0x30]
019f17d8  ldp x20,x19,[sp, #0x20]
019f17dc  ldp x22,x21,[sp, #0x10]
019f17e0  ldr x23,[sp], #0x40
019f17e4  ret
019f17e8  str x23,[sp, #-0x40]!
019f17ec  stp x22,x21,[sp, #0x10]
019f17f0  stp x20,x19,[sp, #0x20]
019f17f4  stp x29,x30,[sp, #0x30]
019f17f8  add x29,sp,#0x30
019f17fc  mov x19,x0
019f1800  ldr w8,[x19]
019f1804  mov w20,w1
019f1808  cmp w8,w20
019f180c  b.eq 0x019f1944
019f1810  adrp x21,0x7319000
019f1814  ldr x21,[x21, #0x548]
019f1818  ldr x8,[x21]
019f181c  cbz x8,0x019f1870
019f1820  mov x0,xzr
019f1824  bl 0x01b4868c
019f1828  tst w0,#0xff
019f182c  b.eq 0x019f18d4
019f1830  ldr w8,[x19]
019f1834  cmp w8,w20
019f1838  b.eq 0x019f18d4
019f183c  sub x21,x19,#0x694
019f1840  ldr w8,[x21]
019f1844  cmp w8,#0x1
019f1848  b.lt 0x019f18d4
019f184c  bl 0x01b4635c
019f1850  ldr w8,[x21]
019f1854  ldr x0,[x0, #0x38]
019f1858  mov w2,#0x88d
019f185c  mov w1,w20
019f1860  add w8,w8,#0x15e
019f1864  str w8,[x0, #0x10]
019f1868  bl 0x01b490fc
019f186c  b 0x019f18d4
019f1870  str x30,[x21]
019f1874  adrp x22,0x7317000
019f1878  ldr x22,[x22, #0xd28]
019f187c  mov x0,xzr
019f1880  strb wzr,[x22]
019f1884  bl 0x01b4868c
019f1888  tst w0,#0xff
019f188c  b.eq 0x019f18cc
019f1890  ldr w8,[x19]
019f1894  cmp w8,w20
019f1898  b.eq 0x019f18cc
019f189c  sub x23,x19,#0x694
019f18a0  ldr w8,[x23]
019f18a4  cmp w8,#0x1
019f18a8  b.lt 0x019f18cc
019f18ac  bl 0x01b4635c
019f18b0  ldr w8,[x23]
019f18b4  ldr x0,[x0, #0x38]
019f18b8  mov w2,#0x88d
019f18bc  mov w1,w20
019f18c0  add w8,w8,#0x15e
019f18c4  str w8,[x0, #0x10]
019f18c8  bl 0x01b490fc
019f18cc  strb wzr,[x22]
019f18d0  str xzr,[x21]
019f18d4  str w20,[x19]
019f18d8  sub x8,x19,#0x698
019f18dc  ldr w9,[x8]
019f18e0  mov w8,w9
019f18e4  tbz w9,#0x1f,0x019f18f4
019f18e8  sub x8,x19,#0x6a0
019f18ec  sub x8,x8,w9, SXTH 
019f18f0  ldr w8,[x8]
019f18f4  ubfx w10,w9,#0x10,#0xf
019f18f8  cmp w9,#0x0
019f18fc  csel w1,wzr,w10,ge
019f1900  str w20,[sp, #0xc]
019f1904  tbnz w8,#0x1f,0x019f1920
019f1908  cbz w8,0x019f1944
019f190c  mov w2,#0x2f
019f1910  add x3,sp,#0xc
019f1914  mov w0,w8
019f1918  bl 0x01b1d8c0
019f191c  b 0x019f1944
019f1920  mov x3,#0x6472
019f1924  adrp x2,0x574b000
019f1928  movk x3,#0x7474, LSL #16
019f192c  add x2,x2,#0x398
019f1930  mov w1,#0x1
019f1934  movk x3,#0x100, LSL #48
019f1938  mov w0,wzr
019f193c  mov w4,w8
019f1940  bl 0x01b83618
019f1944  mov x0,x19
019f1948  ldp x29,x30,[sp, #0x30]
019f194c  ldp x20,x19,[sp, #0x20]
019f1950  ldp x22,x21,[sp, #0x10]
019f1954  ldr x23,[sp], #0x40
019f1958  ret
019f195c  stp x20,x19,[sp, #-0x20]!
019f1960  stp x29,x30,[sp, #0x10]
019f1964  add x29,sp,#0x10
019f1968  mov w1,#0x1
019f196c  mov x19,x0
019f1970  bl 0x0124ff50
019f1974  cbz w0,0x019f19a0
019f1978  adrp x2,0x736d000
019f197c  adrp x3,0x736d000
019f1980  add x2,x2,#0x208
019f1984  add x3,x3,#0x207
019f1988  mov w1,#0x1
019f198c  mov w4,#0x1
019f1990  mov x0,x19
019f1994  bl 0x0174b938
019f1998  ldr x20,[x0, #0x8]
019f199c  b 0x019f19a4
019f19a0  mov x20,xzr
019f19a4  mov w1,#0xb9d7
019f19a8  movk w1,#0xfff0, LSL #16
019f19ac  mov x0,x19
019f19b0  bl 0x0124e990
019f19b4  mov x2,x0
019f19b8  mov x0,x19
019f19bc  mov x1,x20
019f19c0  bl 0x019f19d0
019f19c4  ldp x29,x30,[sp, #0x10]
019f19c8  ldp x20,x19,[sp], #0x20
019f19cc  ret
