// ===== case218-TraitLevelData @ 016b1fe4 =====
// existing function case218-TraitLevelData
016b1fe4  sub sp,sp,#0x40
016b1fe8  str x19,[sp, #0x20]
016b1fec  stp x29,x30,[sp, #0x30]
016b1ff0  add x29,sp,#0x30
016b1ff4  adrp x1,0x174a000
016b1ff8  add x1,x1,#0x87c
016b1ffc  mov x19,x0
016b2000  bl 0x0124ba40
016b2004  adrp x1,0x575d000
016b2008  add x1,x1,#0xa06
016b200c  mov x0,x19
016b2010  str x19,[sp]
016b2014  bl 0x01251aa0
016b2018  mov w8,#0x1
016b201c  str w8,[sp, #0x8]
016b2020  mov x0,sp
016b2024  bl 0x0174aa04
016b2028  adrp x1,0x5760000
016b202c  adrp x3,0x736d000
016b2030  add x1,x1,#0xfde
016b2034  add x3,x3,#0x101
016b2038  add x0,sp,#0x10
016b203c  mov x2,sp
016b2040  bl 0x017c4848
016b2044  adrp x1,0x575f000
016b2048  adrp x2,0x17c4000
016b204c  adrp x4,0x17c4000
016b2050  add x1,x1,#0x98
016b2054  add x2,x2,#0x828
016b2058  add x4,x4,#0x830
016b205c  add x0,sp,#0x10
016b2060  mov x3,xzr
016b2064  mov x5,xzr
016b2068  bl 0x017c4640
016b206c  adrp x1,0x575b000
016b2070  adrp x2,0x17c4000
016b2074  adrp x4,0x17c4000
016b2078  add x1,x1,#0x37b
016b207c  add x2,x2,#0x838
016b2080  add x4,x4,#0x840
016b2084  mov x3,xzr
016b2088  mov x5,xzr
016b208c  bl 0x017c4640
016b2090  mov x19,x0
016b2094  ldr w8,[x19, #0x8]
016b2098  ldr x0,[x19]
016b209c  sub w8,w8,#0x3
016b20a0  str w8,[x19, #0x8]
016b20a4  orr w1,wzr,#0xfffffffc
016b20a8  bl 0x0124c4d0
016b20ac  ldr w8,[x19, #0x8]
016b20b0  ldr x0,[x19]
016b20b4  str wzr,[x19, #0x8]
016b20b8  cmp w8,#0x1
016b20bc  b.lt 0x016b20c8
016b20c0  mvn w1,w8
016b20c4  bl 0x0124c4d0
016b20c8  ldr w8,[sp, #0x18]
016b20cc  cmp w8,#0x1
016b20d0  b.lt 0x016b20e0
016b20d4  ldr x0,[sp, #0x10]
016b20d8  mvn w1,w8
016b20dc  bl 0x0124c4d0
016b20e0  ldr w8,[sp, #0x8]
016b20e4  cmp w8,#0x1
016b20e8  b.lt 0x016b20f8
016b20ec  ldr x0,[sp]
016b20f0  mvn w1,w8
016b20f4  bl 0x0124c4d0
016b20f8  ldp x29,x30,[sp, #0x30]
016b20fc  ldr x19,[sp, #0x20]
016b2100  add sp,sp,#0x40
016b2104  ret
