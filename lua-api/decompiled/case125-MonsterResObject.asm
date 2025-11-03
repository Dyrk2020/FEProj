// ===== case125-MonsterResObject @ 016a170c =====
// existing function case125-MonsterResObject
016a170c  sub sp,sp,#0x40
016a1710  stp x20,x19,[sp, #0x20]
016a1714  stp x29,x30,[sp, #0x30]
016a1718  add x29,sp,#0x30
016a171c  adrp x1,0x174a000
016a1720  add x1,x1,#0x87c
016a1724  mov x19,x0
016a1728  bl 0x0124ba40
016a172c  adrp x1,0x575d000
016a1730  add x1,x1,#0xa06
016a1734  mov x0,x19
016a1738  str x19,[sp]
016a173c  bl 0x01251aa0
016a1740  mov w8,#0x1
016a1744  str w8,[sp, #0x8]
016a1748  mov x0,sp
016a174c  bl 0x0174aa04
016a1750  adrp x1,0x575f000
016a1754  adrp x3,0x736d000
016a1758  add x1,x1,#0xcba
016a175c  add x3,x3,#0x101
016a1760  add x0,sp,#0x10
016a1764  mov x2,sp
016a1768  bl 0x01793fa0
016a176c  ldr x0,[sp, #0x10]
016a1770  mov w1,#0x10
016a1774  bl 0x0124cba0
016a1778  adrp x8,0x1793000
016a177c  dup v0.2D,xzr
016a1780  add x8,x8,#0xf90
016a1784  mov v0.D[0x0],x8
016a1788  str q0,[x0]
016a178c  ldr x0,[sp, #0x10]
016a1790  adrp x1,0x1794000
016a1794  add x1,x1,#0x364
016a1798  mov w2,#0x1
016a179c  bl 0x0124ec90
016a17a0  ldr x0,[sp, #0x10]
016a17a4  mov w1,#0xffffffff
016a17a8  bl 0x0124c0c0
016a17ac  ldr x19,[sp, #0x10]
016a17b0  orr w1,wzr,#0xfffffffb
016a17b4  mov w2,#0x6e7
016a17b8  mov x0,x19
016a17bc  bl 0x0124a650
016a17c0  orr w1,wzr,#0xfffffffe
016a17c4  mov x0,x19
016a17c8  bl 0x0124c0c0
016a17cc  orr w1,wzr,#0xfffffffe
016a17d0  mov x0,x19
016a17d4  bl 0x0124e920
016a17d8  mov w20,w0
016a17dc  adrp x1,0x575e000
016a17e0  add x1,x1,#0x56d
016a17e4  mov x0,x19
016a17e8  bl 0x0124f120
016a17ec  orr w1,wzr,#0xfffffffe
016a17f0  mov w2,#0x1
016a17f4  mov x0,x19
016a17f8  bl 0x0124cfc0
016a17fc  mov x0,x19
016a1800  mov w1,w20
016a1804  bl 0x0124e060
016a1808  orr w1,wzr,#0xfffffffd
016a180c  mov x0,x19
016a1810  bl 0x0124c4d0
016a1814  ldr x19,[sp, #0x10]
016a1818  orr w1,wzr,#0xfffffffd
016a181c  mov w2,#0x6e7
016a1820  mov x0,x19
016a1824  bl 0x0124a650
016a1828  orr w1,wzr,#0xfffffffe
016a182c  mov x0,x19
016a1830  bl 0x0124c0c0
016a1834  orr w1,wzr,#0xfffffffe
016a1838  mov x0,x19
016a183c  bl 0x0124e920
016a1840  mov w20,w0
016a1844  adrp x1,0x575e000
016a1848  add x1,x1,#0x56d
016a184c  mov x0,x19
016a1850  bl 0x0124f120
016a1854  orr w1,wzr,#0xfffffffe
016a1858  mov w2,#0x1
016a185c  mov x0,x19
016a1860  bl 0x0124cfc0
016a1864  mov x0,x19
016a1868  mov w1,w20
016a186c  bl 0x0124e060
016a1870  orr w1,wzr,#0xfffffffd
016a1874  mov x0,x19
016a1878  bl 0x0124c4d0
016a187c  ldr x0,[sp, #0x10]
016a1880  mov w1,#0x10
016a1884  bl 0x0124cba0
016a1888  adrp x8,0x1793000
016a188c  dup v0.2D,xzr
016a1890  add x8,x8,#0xf98
016a1894  mov v0.D[0x0],x8
016a1898  str q0,[x0]
016a189c  ldr x0,[sp, #0x10]
016a18a0  adrp x1,0x1794000
016a18a4  add x1,x1,#0x488
016a18a8  mov w2,#0x1
016a18ac  bl 0x0124ec90
016a18b0  ldr x0,[sp, #0x10]
016a18b4  mov w1,#0xffffffff
016a18b8  bl 0x0124c0c0
016a18bc  ldr x19,[sp, #0x10]
016a18c0  orr w1,wzr,#0xfffffffb
016a18c4  mov w2,#0x6e7
016a18c8  mov x0,x19
016a18cc  bl 0x0124a650
016a18d0  orr w1,wzr,#0xfffffffe
016a18d4  mov x0,x19
016a18d8  bl 0x0124c0c0
016a18dc  orr w1,wzr,#0xfffffffe
016a18e0  mov x0,x19
016a18e4  bl 0x0124e920
016a18e8  mov w20,w0
016a18ec  adrp x1,0x575e000
016a18f0  add x1,x1,#0x578
016a18f4  mov x0,x19
016a18f8  bl 0x0124f120
016a18fc  orr w1,wzr,#0xfffffffe
016a1900  mov w2,#0x1
016a1904  mov x0,x19
016a1908  bl 0x0124cfc0
016a190c  mov x0,x19
016a1910  mov w1,w20
016a1914  bl 0x0124e060
016a1918  orr w1,wzr,#0xfffffffd
016a191c  mov x0,x19
016a1920  bl 0x0124c4d0
016a1924  ldr x19,[sp, #0x10]
016a1928  orr w1,wzr,#0xfffffffd
016a192c  mov w2,#0x6e7
016a1930  mov x0,x19
016a1934  bl 0x0124a650
016a1938  orr w1,wzr,#0xfffffffe
016a193c  mov x0,x19
016a1940  bl 0x0124c0c0
016a1944  orr w1,wzr,#0xfffffffe
016a1948  mov x0,x19
016a194c  bl 0x0124e920
016a1950  mov w20,w0
016a1954  adrp x1,0x575e000
016a1958  add x1,x1,#0x578
016a195c  mov x0,x19
016a1960  bl 0x0124f120
016a1964  orr w1,wzr,#0xfffffffe
016a1968  mov w2,#0x1
016a196c  mov x0,x19
016a1970  bl 0x0124cfc0
016a1974  mov x0,x19
016a1978  mov w1,w20
016a197c  bl 0x0124e060
016a1980  orr w1,wzr,#0xfffffffd
016a1984  mov x0,x19
016a1988  bl 0x0124c4d0
016a198c  ldr w8,[sp, #0x18]
016a1990  ldr x0,[sp, #0x10]
016a1994  sub w8,w8,#0x3
016a1998  str w8,[sp, #0x18]
016a199c  orr w1,wzr,#0xfffffffc
016a19a0  bl 0x0124c4d0
016a19a4  ldr w8,[sp, #0x18]
016a19a8  ldr x0,[sp, #0x10]
016a19ac  str wzr,[sp, #0x18]
016a19b0  cmp w8,#0x1
016a19b4  b.lt 0x016a19d8
016a19b8  mvn w1,w8
016a19bc  bl 0x0124c4d0
016a19c0  ldr w8,[sp, #0x18]
016a19c4  cmp w8,#0x1
016a19c8  b.lt 0x016a19d8
016a19cc  ldr x0,[sp, #0x10]
016a19d0  mvn w1,w8
016a19d4  bl 0x0124c4d0
016a19d8  ldr w8,[sp, #0x8]
016a19dc  cmp w8,#0x1
016a19e0  b.lt 0x016a19f0
016a19e4  ldr x0,[sp]
016a19e8  mvn w1,w8
016a19ec  bl 0x0124c4d0
016a19f0  ldp x29,x30,[sp, #0x30]
016a19f4  ldp x20,x19,[sp, #0x20]
016a19f8  add sp,sp,#0x40
016a19fc  ret
