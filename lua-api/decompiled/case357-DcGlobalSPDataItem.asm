// ===== case357-DcGlobalSPDataItem @ 016d1f64 =====
// existing function case357-DcGlobalSPDataItem
016d1f64  sub sp,sp,#0x40
016d1f68  str x19,[sp, #0x20]
016d1f6c  stp x29,x30,[sp, #0x30]
016d1f70  add x29,sp,#0x30
016d1f74  adrp x1,0x174a000
016d1f78  add x1,x1,#0x87c
016d1f7c  mov x19,x0
016d1f80  bl 0x0124ba40
016d1f84  adrp x1,0x575d000
016d1f88  add x1,x1,#0xa06
016d1f8c  mov x0,x19
016d1f90  str x19,[sp]
016d1f94  bl 0x01251aa0
016d1f98  mov w8,#0x1
016d1f9c  str w8,[sp, #0x8]
016d1fa0  mov x0,sp
016d1fa4  bl 0x0174aa04
016d1fa8  adrp x1,0x5763000
016d1fac  adrp x3,0x736d000
016d1fb0  add x1,x1,#0xee1
016d1fb4  add x3,x3,#0x101
016d1fb8  add x0,sp,#0x10
016d1fbc  mov x2,sp
016d1fc0  bl 0x01821254
016d1fc4  adrp x1,0x5763000
016d1fc8  adrp x2,0x1820000
016d1fcc  adrp x4,0x1820000
016d1fd0  add x1,x1,#0xef4
016d1fd4  add x2,x2,#0xe34
016d1fd8  add x4,x4,#0xe3c
016d1fdc  add x0,sp,#0x10
016d1fe0  mov x3,xzr
016d1fe4  mov x5,xzr
016d1fe8  bl 0x01820c4c
016d1fec  adrp x1,0x5763000
016d1ff0  adrp x2,0x1820000
016d1ff4  adrp x4,0x1820000
016d1ff8  add x1,x1,#0xefd
016d1ffc  add x2,x2,#0xe44
016d2000  add x4,x4,#0xe4c
016d2004  mov x3,xzr
016d2008  mov x5,xzr
016d200c  bl 0x01820c4c
016d2010  adrp x1,0x5763000
016d2014  adrp x2,0x1820000
016d2018  adrp x4,0x1820000
016d201c  add x1,x1,#0xf0a
016d2020  add x2,x2,#0xe54
016d2024  add x4,x4,#0xe5c
016d2028  mov x3,xzr
016d202c  mov x5,xzr
016d2030  bl 0x01820c4c
016d2034  adrp x1,0x5763000
016d2038  adrp x2,0x1821000
016d203c  adrp x4,0x1821000
016d2040  add x1,x1,#0xf15
016d2044  add x2,x2,#0x4c
016d2048  add x4,x4,#0x54
016d204c  mov x3,xzr
016d2050  mov x5,xzr
016d2054  bl 0x01820e64
016d2058  adrp x1,0x58e6000
016d205c  adrp x2,0x1821000
016d2060  adrp x4,0x1821000
016d2064  add x1,x1,#0x5b7
016d2068  add x2,x2,#0x244
016d206c  add x4,x4,#0x24c
016d2070  mov x3,xzr
016d2074  mov x5,xzr
016d2078  bl 0x0182105c
016d207c  mov x19,x0
016d2080  ldr w8,[x19, #0x8]
016d2084  ldr x0,[x19]
016d2088  sub w8,w8,#0x3
016d208c  str w8,[x19, #0x8]
016d2090  orr w1,wzr,#0xfffffffc
016d2094  bl 0x0124c4d0
016d2098  ldr w8,[x19, #0x8]
016d209c  ldr x0,[x19]
016d20a0  str wzr,[x19, #0x8]
016d20a4  cmp w8,#0x1
016d20a8  b.lt 0x016d20b4
016d20ac  mvn w1,w8
016d20b0  bl 0x0124c4d0
016d20b4  ldr w8,[sp, #0x18]
016d20b8  cmp w8,#0x1
016d20bc  b.lt 0x016d20cc
016d20c0  ldr x0,[sp, #0x10]
016d20c4  mvn w1,w8
016d20c8  bl 0x0124c4d0
016d20cc  ldr w8,[sp, #0x8]
016d20d0  cmp w8,#0x1
016d20d4  b.lt 0x016d20e4
016d20d8  ldr x0,[sp]
016d20dc  mvn w1,w8
016d20e0  bl 0x0124c4d0
016d20e4  ldp x29,x30,[sp, #0x30]
016d20e8  ldr x19,[sp, #0x20]
016d20ec  add sp,sp,#0x40
016d20f0  ret
