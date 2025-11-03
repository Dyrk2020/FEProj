// ===== case318-ExpMoneyReviseResObject @ 016c179c =====
// existing function case318-ExpMoneyReviseResObject
016c179c  sub sp,sp,#0x40
016c17a0  stp x20,x19,[sp, #0x20]
016c17a4  stp x29,x30,[sp, #0x30]
016c17a8  add x29,sp,#0x30
016c17ac  adrp x1,0x174a000
016c17b0  add x1,x1,#0x87c
016c17b4  mov x19,x0
016c17b8  bl 0x0124ba40
016c17bc  adrp x1,0x575d000
016c17c0  add x1,x1,#0xa06
016c17c4  mov x0,x19
016c17c8  str x19,[sp]
016c17cc  bl 0x01251aa0
016c17d0  mov w8,#0x1
016c17d4  str w8,[sp, #0x8]
016c17d8  mov x0,sp
016c17dc  bl 0x0174aa04
016c17e0  adrp x1,0x5762000
016c17e4  adrp x3,0x736d000
016c17e8  add x1,x1,#0xa71
016c17ec  add x3,x3,#0x101
016c17f0  add x0,sp,#0x10
016c17f4  mov x2,sp
016c17f8  bl 0x017fdea0
016c17fc  ldr x0,[sp, #0x10]
016c1800  mov w1,#0x10
016c1804  bl 0x0124cba0
016c1808  adrp x8,0x17fd000
016c180c  dup v0.2D,xzr
016c1810  add x8,x8,#0xca0
016c1814  mov v0.D[0x0],x8
016c1818  str q0,[x0]
016c181c  ldr x0,[sp, #0x10]
016c1820  adrp x1,0x17fe000
016c1824  add x1,x1,#0x264
016c1828  mov w2,#0x1
016c182c  bl 0x0124ec90
016c1830  ldr x0,[sp, #0x10]
016c1834  mov w1,#0xffffffff
016c1838  bl 0x0124c0c0
016c183c  ldr x19,[sp, #0x10]
016c1840  orr w1,wzr,#0xfffffffb
016c1844  mov w2,#0x6e7
016c1848  mov x0,x19
016c184c  bl 0x0124a650
016c1850  orr w1,wzr,#0xfffffffe
016c1854  mov x0,x19
016c1858  bl 0x0124c0c0
016c185c  orr w1,wzr,#0xfffffffe
016c1860  mov x0,x19
016c1864  bl 0x0124e920
016c1868  mov w20,w0
016c186c  adrp x1,0x5762000
016c1870  add x1,x1,#0xa89
016c1874  mov x0,x19
016c1878  bl 0x0124f120
016c187c  orr w1,wzr,#0xfffffffe
016c1880  mov w2,#0x1
016c1884  mov x0,x19
016c1888  bl 0x0124cfc0
016c188c  mov x0,x19
016c1890  mov w1,w20
016c1894  bl 0x0124e060
016c1898  orr w1,wzr,#0xfffffffd
016c189c  mov x0,x19
016c18a0  bl 0x0124c4d0
016c18a4  ldr x19,[sp, #0x10]
016c18a8  orr w1,wzr,#0xfffffffd
016c18ac  mov w2,#0x6e7
016c18b0  mov x0,x19
016c18b4  bl 0x0124a650
016c18b8  orr w1,wzr,#0xfffffffe
016c18bc  mov x0,x19
016c18c0  bl 0x0124c0c0
016c18c4  orr w1,wzr,#0xfffffffe
016c18c8  mov x0,x19
016c18cc  bl 0x0124e920
016c18d0  mov w20,w0
016c18d4  adrp x1,0x5762000
016c18d8  add x1,x1,#0xa89
016c18dc  mov x0,x19
016c18e0  bl 0x0124f120
016c18e4  orr w1,wzr,#0xfffffffe
016c18e8  mov w2,#0x1
016c18ec  mov x0,x19
016c18f0  bl 0x0124cfc0
016c18f4  mov x0,x19
016c18f8  mov w1,w20
016c18fc  bl 0x0124e060
016c1900  orr w1,wzr,#0xfffffffd
016c1904  mov x0,x19
016c1908  bl 0x0124c4d0
016c190c  adrp x1,0x5762000
016c1910  adrp x2,0x17fd000
016c1914  adrp x4,0x17fd000
016c1918  add x1,x1,#0xa94
016c191c  add x2,x2,#0xe90
016c1920  add x4,x4,#0xe98
016c1924  add x0,sp,#0x10
016c1928  mov x3,xzr
016c192c  mov x5,xzr
016c1930  bl 0x017fdca8
016c1934  mov x19,x0
016c1938  ldr w8,[x19, #0x8]
016c193c  ldr x0,[x19]
016c1940  sub w8,w8,#0x3
016c1944  str w8,[x19, #0x8]
016c1948  orr w1,wzr,#0xfffffffc
016c194c  bl 0x0124c4d0
016c1950  ldr w8,[x19, #0x8]
016c1954  ldr x0,[x19]
016c1958  str wzr,[x19, #0x8]
016c195c  cmp w8,#0x1
016c1960  b.lt 0x016c196c
016c1964  mvn w1,w8
016c1968  bl 0x0124c4d0
016c196c  ldr w8,[sp, #0x18]
016c1970  cmp w8,#0x1
016c1974  b.lt 0x016c1984
016c1978  ldr x0,[sp, #0x10]
016c197c  mvn w1,w8
016c1980  bl 0x0124c4d0
016c1984  ldr w8,[sp, #0x8]
016c1988  cmp w8,#0x1
016c198c  b.lt 0x016c199c
016c1990  ldr x0,[sp]
016c1994  mvn w1,w8
016c1998  bl 0x0124c4d0
016c199c  ldp x29,x30,[sp, #0x30]
016c19a0  ldp x20,x19,[sp, #0x20]
016c19a4  add sp,sp,#0x40
016c19a8  ret
