// ===== case128-SkillTipResObject @ 016a1f8c =====
// existing function case128-SkillTipResObject
016a1f8c  sub sp,sp,#0x40
016a1f90  str x19,[sp, #0x20]
016a1f94  stp x29,x30,[sp, #0x30]
016a1f98  add x29,sp,#0x30
016a1f9c  adrp x1,0x174a000
016a1fa0  add x1,x1,#0x87c
016a1fa4  mov x19,x0
016a1fa8  bl 0x0124ba40
016a1fac  adrp x1,0x575d000
016a1fb0  add x1,x1,#0xa06
016a1fb4  mov x0,x19
016a1fb8  str x19,[sp]
016a1fbc  bl 0x01251aa0
016a1fc0  mov w8,#0x1
016a1fc4  str w8,[sp, #0x8]
016a1fc8  mov x0,sp
016a1fcc  bl 0x0174aa04
016a1fd0  adrp x1,0x575f000
016a1fd4  adrp x3,0x736d000
016a1fd8  add x1,x1,#0xd2e
016a1fdc  add x3,x3,#0x101
016a1fe0  add x0,sp,#0x10
016a1fe4  mov x2,sp
016a1fe8  bl 0x017959f4
016a1fec  adrp x1,0x575f000
016a1ff0  adrp x2,0x1795000
016a1ff4  adrp x4,0x1795000
016a1ff8  add x1,x1,#0xd40
016a1ffc  add x2,x2,#0x9c4
016a2000  add x4,x4,#0x9cc
016a2004  add x0,sp,#0x10
016a2008  mov x3,xzr
016a200c  mov x5,xzr
016a2010  bl 0x017957dc
016a2014  adrp x1,0x575f000
016a2018  adrp x2,0x1795000
016a201c  adrp x4,0x1795000
016a2020  add x1,x1,#0xd4c
016a2024  add x2,x2,#0x9d4
016a2028  add x4,x4,#0x9dc
016a202c  mov x3,xzr
016a2030  mov x5,xzr
016a2034  bl 0x017957dc
016a2038  adrp x1,0x575f000
016a203c  adrp x2,0x1795000
016a2040  adrp x4,0x1795000
016a2044  add x1,x1,#0xd5c
016a2048  add x2,x2,#0x9e4
016a204c  add x4,x4,#0x9ec
016a2050  mov x3,xzr
016a2054  mov x5,xzr
016a2058  bl 0x017957dc
016a205c  mov x19,x0
016a2060  ldr w8,[x19, #0x8]
016a2064  ldr x0,[x19]
016a2068  sub w8,w8,#0x3
016a206c  str w8,[x19, #0x8]
016a2070  orr w1,wzr,#0xfffffffc
016a2074  bl 0x0124c4d0
016a2078  ldr w8,[x19, #0x8]
016a207c  ldr x0,[x19]
016a2080  str wzr,[x19, #0x8]
016a2084  cmp w8,#0x1
016a2088  b.lt 0x016a2094
016a208c  mvn w1,w8
016a2090  bl 0x0124c4d0
016a2094  ldr w8,[sp, #0x18]
016a2098  cmp w8,#0x1
016a209c  b.lt 0x016a20ac
016a20a0  ldr x0,[sp, #0x10]
016a20a4  mvn w1,w8
016a20a8  bl 0x0124c4d0
016a20ac  ldr w8,[sp, #0x8]
016a20b0  cmp w8,#0x1
016a20b4  b.lt 0x016a20c4
016a20b8  ldr x0,[sp]
016a20bc  mvn w1,w8
016a20c0  bl 0x0124c4d0
016a20c4  ldp x29,x30,[sp, #0x30]
016a20c8  ldr x19,[sp, #0x20]
016a20cc  add sp,sp,#0x40
016a20d0  ret
