// ===== case271-MonsterWaveGrowthData @ 016b9cbc =====
// existing function case271-MonsterWaveGrowthData
016b9cbc  sub sp,sp,#0x40
016b9cc0  str x19,[sp, #0x20]
016b9cc4  stp x29,x30,[sp, #0x30]
016b9cc8  add x29,sp,#0x30
016b9ccc  adrp x1,0x174a000
016b9cd0  add x1,x1,#0x87c
016b9cd4  mov x19,x0
016b9cd8  bl 0x0124ba40
016b9cdc  adrp x1,0x575d000
016b9ce0  add x1,x1,#0xa06
016b9ce4  mov x0,x19
016b9ce8  str x19,[sp]
016b9cec  bl 0x01251aa0
016b9cf0  mov w8,#0x1
016b9cf4  str w8,[sp, #0x8]
016b9cf8  mov x0,sp
016b9cfc  bl 0x0174aa04
016b9d00  adrp x1,0x5761000
016b9d04  adrp x3,0x736d000
016b9d08  add x1,x1,#0x844
016b9d0c  add x3,x3,#0x101
016b9d10  add x0,sp,#0x10
016b9d14  mov x2,sp
016b9d18  bl 0x017e3880
016b9d1c  adrp x1,0x5761000
016b9d20  adrp x2,0x17e3000
016b9d24  adrp x4,0x17e3000
016b9d28  add x1,x1,#0x85a
016b9d2c  add x2,x2,#0x658
016b9d30  add x4,x4,#0x660
016b9d34  add x0,sp,#0x10
016b9d38  mov x3,xzr
016b9d3c  mov x5,xzr
016b9d40  bl 0x017e3470
016b9d44  adrp x1,0x575e000
016b9d48  adrp x2,0x17e3000
016b9d4c  adrp x4,0x17e3000
016b9d50  add x1,x1,#0x38e
016b9d54  add x2,x2,#0x668
016b9d58  add x4,x4,#0x670
016b9d5c  mov x3,xzr
016b9d60  mov x5,xzr
016b9d64  bl 0x017e3470
016b9d68  adrp x1,0x5761000
016b9d6c  adrp x2,0x17e3000
016b9d70  adrp x4,0x17e3000
016b9d74  add x1,x1,#0x861
016b9d78  add x2,x2,#0x678
016b9d7c  add x4,x4,#0x680
016b9d80  mov x3,xzr
016b9d84  mov x5,xzr
016b9d88  bl 0x017e3470
016b9d8c  adrp x1,0x5761000
016b9d90  adrp x2,0x17e3000
016b9d94  adrp x4,0x17e3000
016b9d98  add x1,x1,#0x868
016b9d9c  add x2,x2,#0x870
016b9da0  add x4,x4,#0x878
016b9da4  mov x3,xzr
016b9da8  mov x5,xzr
016b9dac  bl 0x017e3688
016b9db0  mov x19,x0
016b9db4  ldr w8,[x19, #0x8]
016b9db8  ldr x0,[x19]
016b9dbc  sub w8,w8,#0x3
016b9dc0  str w8,[x19, #0x8]
016b9dc4  orr w1,wzr,#0xfffffffc
016b9dc8  bl 0x0124c4d0
016b9dcc  ldr w8,[x19, #0x8]
016b9dd0  ldr x0,[x19]
016b9dd4  str wzr,[x19, #0x8]
016b9dd8  cmp w8,#0x1
016b9ddc  b.lt 0x016b9de8
016b9de0  mvn w1,w8
016b9de4  bl 0x0124c4d0
016b9de8  ldr w8,[sp, #0x18]
016b9dec  cmp w8,#0x1
016b9df0  b.lt 0x016b9e00
016b9df4  ldr x0,[sp, #0x10]
016b9df8  mvn w1,w8
016b9dfc  bl 0x0124c4d0
016b9e00  ldr w8,[sp, #0x8]
016b9e04  cmp w8,#0x1
016b9e08  b.lt 0x016b9e18
016b9e0c  ldr x0,[sp]
016b9e10  mvn w1,w8
016b9e14  bl 0x0124c4d0
016b9e18  ldp x29,x30,[sp, #0x30]
016b9e1c  ldr x19,[sp, #0x20]
016b9e20  add sp,sp,#0x40
016b9e24  ret
