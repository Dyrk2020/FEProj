// ===== case649-GlobalChaosZoneAttrData @ 01714c78 =====
// existing function case649-GlobalChaosZoneAttrData
01714c78  sub sp,sp,#0x40
01714c7c  str x19,[sp, #0x20]
01714c80  stp x29,x30,[sp, #0x30]
01714c84  add x29,sp,#0x30
01714c88  adrp x1,0x174a000
01714c8c  add x1,x1,#0x87c
01714c90  mov x19,x0
01714c94  bl 0x0124ba40
01714c98  adrp x1,0x575d000
01714c9c  add x1,x1,#0xa06
01714ca0  mov x0,x19
01714ca4  str x19,[sp]
01714ca8  bl 0x01251aa0
01714cac  mov w8,#0x1
01714cb0  str w8,[sp, #0x8]
01714cb4  mov x0,sp
01714cb8  bl 0x0174aa04
01714cbc  adrp x1,0x576c000
01714cc0  adrp x3,0x736d000
01714cc4  add x1,x1,#0x9e0
01714cc8  add x3,x3,#0x101
01714ccc  add x0,sp,#0x10
01714cd0  mov x2,sp
01714cd4  bl 0x019263e8
01714cd8  adrp x1,0x5761000
01714cdc  adrp x2,0x1926000
01714ce0  adrp x4,0x1926000
01714ce4  add x1,x1,#0x7e2
01714ce8  add x2,x2,#0x1e0
01714cec  add x4,x4,#0x1e8
01714cf0  add x0,sp,#0x10
01714cf4  mov x3,xzr
01714cf8  mov x5,xzr
01714cfc  bl 0x01925ff8
01714d00  adrp x1,0x5761000
01714d04  adrp x2,0x1926000
01714d08  adrp x4,0x1926000
01714d0c  add x1,x1,#0x7eb
01714d10  add x2,x2,#0x248
01714d14  add x4,x4,#0x250
01714d18  mov x3,xzr
01714d1c  mov x5,xzr
01714d20  bl 0x01925ff8
01714d24  adrp x1,0x5761000
01714d28  adrp x2,0x1926000
01714d2c  adrp x4,0x1926000
01714d30  add x1,x1,#0x7f4
01714d34  add x2,x2,#0x2b0
01714d38  add x4,x4,#0x2b8
01714d3c  mov x3,xzr
01714d40  mov x5,xzr
01714d44  bl 0x01925ff8
01714d48  adrp x1,0x5761000
01714d4c  adrp x2,0x1926000
01714d50  adrp x4,0x1926000
01714d54  add x1,x1,#0x7fd
01714d58  add x2,x2,#0x318
01714d5c  add x4,x4,#0x320
01714d60  mov x3,xzr
01714d64  mov x5,xzr
01714d68  bl 0x01925ff8
01714d6c  adrp x1,0x5761000
01714d70  adrp x2,0x1926000
01714d74  adrp x4,0x1926000
01714d78  add x1,x1,#0x807
01714d7c  add x2,x2,#0x380
01714d80  add x4,x4,#0x388
01714d84  mov x3,xzr
01714d88  mov x5,xzr
01714d8c  bl 0x01925ff8
01714d90  mov x19,x0
01714d94  ldr w8,[x19, #0x8]
01714d98  ldr x0,[x19]
01714d9c  sub w8,w8,#0x3
01714da0  str w8,[x19, #0x8]
01714da4  orr w1,wzr,#0xfffffffc
01714da8  bl 0x0124c4d0
01714dac  ldr w8,[x19, #0x8]
01714db0  ldr x0,[x19]
01714db4  str wzr,[x19, #0x8]
01714db8  cmp w8,#0x1
01714dbc  b.lt 0x01714dc8
01714dc0  mvn w1,w8
01714dc4  bl 0x0124c4d0
01714dc8  ldr w8,[sp, #0x18]
01714dcc  cmp w8,#0x1
01714dd0  b.lt 0x01714de0
01714dd4  ldr x0,[sp, #0x10]
01714dd8  mvn w1,w8
01714ddc  bl 0x0124c4d0
01714de0  ldr w8,[sp, #0x8]
01714de4  cmp w8,#0x1
01714de8  b.lt 0x01714df8
01714dec  ldr x0,[sp]
01714df0  mvn w1,w8
01714df4  bl 0x0124c4d0
01714df8  ldp x29,x30,[sp, #0x30]
01714dfc  ldr x19,[sp, #0x20]
01714e00  add sp,sp,#0x40
01714e04  ret
