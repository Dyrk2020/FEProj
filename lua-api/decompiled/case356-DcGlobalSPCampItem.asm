// ===== case356-DcGlobalSPCampItem @ 016d1db8 =====
// existing function case356-DcGlobalSPCampItem
016d1db8  sub sp,sp,#0x40
016d1dbc  str x19,[sp, #0x20]
016d1dc0  stp x29,x30,[sp, #0x30]
016d1dc4  add x29,sp,#0x30
016d1dc8  adrp x1,0x174a000
016d1dcc  add x1,x1,#0x87c
016d1dd0  mov x19,x0
016d1dd4  bl 0x0124ba40
016d1dd8  adrp x1,0x575d000
016d1ddc  add x1,x1,#0xa06
016d1de0  mov x0,x19
016d1de4  str x19,[sp]
016d1de8  bl 0x01251aa0
016d1dec  mov w8,#0x1
016d1df0  str w8,[sp, #0x8]
016d1df4  mov x0,sp
016d1df8  bl 0x0174aa04
016d1dfc  adrp x1,0x5763000
016d1e00  adrp x3,0x736d000
016d1e04  add x1,x1,#0xea9
016d1e08  add x3,x3,#0x101
016d1e0c  add x0,sp,#0x10
016d1e10  mov x2,sp
016d1e14  bl 0x01820448
016d1e18  adrp x1,0x5763000
016d1e1c  adrp x2,0x1820000
016d1e20  adrp x4,0x1820000
016d1e24  add x1,x1,#0xebc
016d1e28  add x2,x2,#0x230
016d1e2c  add x4,x4,#0x238
016d1e30  add x0,sp,#0x10
016d1e34  mov x3,xzr
016d1e38  mov x5,xzr
016d1e3c  bl 0x01820048
016d1e40  adrp x1,0x5763000
016d1e44  adrp x2,0x1820000
016d1e48  adrp x4,0x1820000
016d1e4c  add x1,x1,#0xec6
016d1e50  add x2,x2,#0x428
016d1e54  add x4,x4,#0x430
016d1e58  mov x3,xzr
016d1e5c  mov x5,xzr
016d1e60  bl 0x01820240
016d1e64  adrp x1,0x5763000
016d1e68  adrp x2,0x1820000
016d1e6c  adrp x4,0x1820000
016d1e70  add x1,x1,#0xed1
016d1e74  add x2,x2,#0x438
016d1e78  add x4,x4,#0x440
016d1e7c  mov x3,xzr
016d1e80  mov x5,xzr
016d1e84  bl 0x01820048
016d1e88  mov x19,x0
016d1e8c  ldr w8,[x19, #0x8]
016d1e90  ldr x0,[x19]
016d1e94  sub w8,w8,#0x3
016d1e98  str w8,[x19, #0x8]
016d1e9c  orr w1,wzr,#0xfffffffc
016d1ea0  bl 0x0124c4d0
016d1ea4  ldr w8,[x19, #0x8]
016d1ea8  ldr x0,[x19]
016d1eac  str wzr,[x19, #0x8]
016d1eb0  cmp w8,#0x1
016d1eb4  b.lt 0x016d1ec0
016d1eb8  mvn w1,w8
016d1ebc  bl 0x0124c4d0
016d1ec0  ldr w8,[sp, #0x18]
016d1ec4  cmp w8,#0x1
016d1ec8  b.lt 0x016d1ed8
016d1ecc  ldr x0,[sp, #0x10]
016d1ed0  mvn w1,w8
016d1ed4  bl 0x0124c4d0
016d1ed8  ldr w8,[sp, #0x8]
016d1edc  cmp w8,#0x1
016d1ee0  b.lt 0x016d1ef0
016d1ee4  ldr x0,[sp]
016d1ee8  mvn w1,w8
016d1eec  bl 0x0124c4d0
016d1ef0  ldp x29,x30,[sp, #0x30]
016d1ef4  ldr x19,[sp, #0x20]
016d1ef8  add sp,sp,#0x40
016d1efc  ret
