// ===== case405-SubBattleMgr @ 016e1fe8 =====
// existing function case405-SubBattleMgr
016e1fe8  sub sp,sp,#0x40
016e1fec  str x19,[sp, #0x20]
016e1ff0  stp x29,x30,[sp, #0x30]
016e1ff4  add x29,sp,#0x30
016e1ff8  adrp x1,0x174a000
016e1ffc  add x1,x1,#0x87c
016e2000  mov x19,x0
016e2004  bl 0x0124ba40
016e2008  adrp x1,0x575d000
016e200c  add x1,x1,#0xa06
016e2010  mov x0,x19
016e2014  str x19,[sp]
016e2018  bl 0x01251aa0
016e201c  mov w8,#0x1
016e2020  str w8,[sp, #0x8]
016e2024  mov x0,sp
016e2028  bl 0x0174aa04
016e202c  adrp x1,0x5765000
016e2030  adrp x3,0x736d000
016e2034  add x1,x1,#0xf75
016e2038  add x3,x3,#0x101
016e203c  add x0,sp,#0x10
016e2040  mov x2,sp
016e2044  bl 0x0184fcfc
016e2048  adrp x1,0x5765000
016e204c  adrp x2,0x184f000
016e2050  adrp x4,0x184f000
016e2054  add x1,x1,#0xeaf
016e2058  add x2,x2,#0xcd8
016e205c  add x4,x4,#0xce0
016e2060  add x0,sp,#0x10
016e2064  mov x3,xzr
016e2068  mov x5,xzr
016e206c  bl 0x0184faf0
016e2070  mov x19,x0
016e2074  ldr w8,[x19, #0x8]
016e2078  ldr x0,[x19]
016e207c  sub w8,w8,#0x3
016e2080  str w8,[x19, #0x8]
016e2084  orr w1,wzr,#0xfffffffc
016e2088  bl 0x0124c4d0
016e208c  ldr w8,[x19, #0x8]
016e2090  ldr x0,[x19]
016e2094  str wzr,[x19, #0x8]
016e2098  cmp w8,#0x1
016e209c  b.lt 0x016e20a8
016e20a0  mvn w1,w8
016e20a4  bl 0x0124c4d0
016e20a8  ldr w8,[sp, #0x18]
016e20ac  cmp w8,#0x1
016e20b0  b.lt 0x016e20c0
016e20b4  ldr x0,[sp, #0x10]
016e20b8  mvn w1,w8
016e20bc  bl 0x0124c4d0
016e20c0  ldr w8,[sp, #0x8]
016e20c4  cmp w8,#0x1
016e20c8  b.lt 0x016e20d8
016e20cc  ldr x0,[sp]
016e20d0  mvn w1,w8
016e20d4  bl 0x0124c4d0
016e20d8  ldp x29,x30,[sp, #0x30]
016e20dc  ldr x19,[sp, #0x20]
016e20e0  add sp,sp,#0x40
016e20e4  ret
