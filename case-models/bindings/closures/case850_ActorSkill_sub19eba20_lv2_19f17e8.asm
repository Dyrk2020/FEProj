// ===== case850_ActorSkill_sub19eba20_lv2_19f17e8 @ 019f17e8 (DecompileAt3: cleared stale instructions at entry) =====
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
