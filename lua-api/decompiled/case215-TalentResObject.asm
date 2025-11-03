// ===== case215-TalentResObject @ 016b1814 =====
// existing function case215-TalentResObject
016b1814  sub sp,sp,#0x40
016b1818  str x19,[sp, #0x20]
016b181c  stp x29,x30,[sp, #0x30]
016b1820  add x29,sp,#0x30
016b1824  adrp x1,0x174a000
016b1828  add x1,x1,#0x87c
016b182c  mov x19,x0
016b1830  bl 0x0124ba40
016b1834  adrp x1,0x575d000
016b1838  add x1,x1,#0xa06
016b183c  mov x0,x19
016b1840  str x19,[sp]
016b1844  bl 0x01251aa0
016b1848  mov w8,#0x1
016b184c  str w8,[sp, #0x8]
016b1850  mov x0,sp
016b1854  bl 0x0174aa04
016b1858  adrp x1,0x5760000
016b185c  adrp x3,0x736d000
016b1860  add x1,x1,#0xf9d
016b1864  add x3,x3,#0x101
016b1868  add x0,sp,#0x10
016b186c  mov x2,sp
016b1870  bl 0x017c2ee8
016b1874  adrp x1,0x5760000
016b1878  adrp x2,0x17c2000
016b187c  adrp x4,0x17c2000
016b1880  add x1,x1,#0xf82
016b1884  add x2,x2,#0xce0
016b1888  add x4,x4,#0xce8
016b188c  add x0,sp,#0x10
016b1890  mov x3,xzr
016b1894  mov x5,xzr
016b1898  bl 0x017c2af8
016b189c  adrp x1,0x595c000
016b18a0  adrp x2,0x17c2000
016b18a4  adrp x4,0x17c2000
016b18a8  add x1,x1,#0x9c4
016b18ac  add x2,x2,#0xed8
016b18b0  add x4,x4,#0xee0
016b18b4  mov x3,xzr
016b18b8  mov x5,xzr
016b18bc  bl 0x017c2cf0
016b18c0  mov x19,x0
016b18c4  ldr w8,[x19, #0x8]
016b18c8  ldr x0,[x19]
016b18cc  sub w8,w8,#0x3
016b18d0  str w8,[x19, #0x8]
016b18d4  orr w1,wzr,#0xfffffffc
016b18d8  bl 0x0124c4d0
016b18dc  ldr w8,[x19, #0x8]
016b18e0  ldr x0,[x19]
016b18e4  str wzr,[x19, #0x8]
016b18e8  cmp w8,#0x1
016b18ec  b.lt 0x016b18f8
016b18f0  mvn w1,w8
016b18f4  bl 0x0124c4d0
016b18f8  ldr w8,[sp, #0x18]
016b18fc  cmp w8,#0x1
016b1900  b.lt 0x016b1910
016b1904  ldr x0,[sp, #0x10]
016b1908  mvn w1,w8
016b190c  bl 0x0124c4d0
016b1910  ldr w8,[sp, #0x8]
016b1914  cmp w8,#0x1
016b1918  b.lt 0x016b1928
016b191c  ldr x0,[sp]
016b1920  mvn w1,w8
016b1924  bl 0x0124c4d0
016b1928  ldp x29,x30,[sp, #0x30]
016b192c  ldr x19,[sp, #0x20]
016b1930  add sp,sp,#0x40
016b1934  ret
