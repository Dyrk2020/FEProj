// ===== case850_ActorSkill_sub19eb9fc_lv2_19f16e0 @ 019f16e0 (DecompileAt3: cleared stale instructions at entry) =====
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
