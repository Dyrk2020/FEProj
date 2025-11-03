// ===== case45-PiXiuNodeSetting @ 01693d78 =====
// existing function case45-PiXiuNodeSetting
01693d78  sub sp,sp,#0x40
01693d7c  str x19,[sp, #0x20]
01693d80  stp x29,x30,[sp, #0x30]
01693d84  add x29,sp,#0x30
01693d88  adrp x1,0x174a000
01693d8c  add x1,x1,#0x87c
01693d90  mov x19,x0
01693d94  bl 0x0124ba40
01693d98  adrp x1,0x575d000
01693d9c  add x1,x1,#0xa06
01693da0  mov x0,x19
01693da4  str x19,[sp]
01693da8  bl 0x01251aa0
01693dac  mov w8,#0x1
01693db0  str w8,[sp, #0x8]
01693db4  mov x0,sp
01693db8  bl 0x0174aa04
01693dbc  adrp x1,0x575e000
01693dc0  adrp x3,0x736d000
01693dc4  add x1,x1,#0x421
01693dc8  add x3,x3,#0x101
01693dcc  add x0,sp,#0x10
01693dd0  mov x2,sp
01693dd4  bl 0x01767d3c
01693dd8  adrp x1,0x575b000
01693ddc  adrp x2,0x1767000
01693de0  adrp x4,0x1767000
01693de4  add x1,x1,#0x2f8
01693de8  add x2,x2,#0xc9c
01693dec  add x4,x4,#0xca4
01693df0  add x0,sp,#0x10
01693df4  mov x3,xzr
01693df8  mov x5,xzr
01693dfc  bl 0x01767ab4
01693e00  adrp x1,0x575e000
01693e04  adrp x2,0x1767000
01693e08  adrp x4,0x1767000
01693e0c  add x1,x1,#0x432
01693e10  add x2,x2,#0xcac
01693e14  add x4,x4,#0xcb4
01693e18  mov x3,xzr
01693e1c  mov x5,xzr
01693e20  bl 0x01767ab4
01693e24  adrp x1,0x575e000
01693e28  adrp x2,0x1767000
01693e2c  adrp x4,0x1767000
01693e30  add x1,x1,#0x43a
01693e34  add x2,x2,#0xcbc
01693e38  add x4,x4,#0xcc4
01693e3c  mov x3,xzr
01693e40  mov x5,xzr
01693e44  bl 0x01767ab4
01693e48  adrp x1,0x575e000
01693e4c  adrp x2,0x1767000
01693e50  adrp x4,0x1767000
01693e54  add x1,x1,#0x441
01693e58  add x2,x2,#0xccc
01693e5c  add x4,x4,#0xcd4
01693e60  mov x3,xzr
01693e64  mov x5,xzr
01693e68  bl 0x01767ab4
01693e6c  adrp x1,0x575e000
01693e70  adrp x2,0x1767000
01693e74  adrp x4,0x1767000
01693e78  add x1,x1,#0x448
01693e7c  add x2,x2,#0xcdc
01693e80  add x4,x4,#0xce4
01693e84  mov x3,xzr
01693e88  mov x5,xzr
01693e8c  bl 0x01767ab4
01693e90  adrp x1,0x575e000
01693e94  adrp x2,0x1767000
01693e98  adrp x4,0x1767000
01693e9c  add x1,x1,#0x44f
01693ea0  add x2,x2,#0xcec
01693ea4  add x4,x4,#0xcf4
01693ea8  mov x3,xzr
01693eac  mov x5,xzr
01693eb0  bl 0x01767ab4
01693eb4  adrp x1,0x575e000
01693eb8  adrp x2,0x1767000
01693ebc  adrp x4,0x1767000
01693ec0  add x1,x1,#0x456
01693ec4  add x2,x2,#0xcfc
01693ec8  add x4,x4,#0xd04
01693ecc  mov x3,xzr
01693ed0  mov x5,xzr
01693ed4  bl 0x01767ab4
01693ed8  adrp x1,0x575e000
01693edc  adrp x2,0x1767000
01693ee0  adrp x4,0x1767000
01693ee4  add x1,x1,#0x45d
01693ee8  add x2,x2,#0xd0c
01693eec  add x4,x4,#0xd14
01693ef0  mov x3,xzr
01693ef4  mov x5,xzr
01693ef8  bl 0x01767ab4
01693efc  adrp x1,0x575e000
01693f00  adrp x2,0x1767000
01693f04  adrp x4,0x1767000
01693f08  add x1,x1,#0x464
01693f0c  add x2,x2,#0xd1c
01693f10  add x4,x4,#0xd24
01693f14  mov x3,xzr
01693f18  mov x5,xzr
01693f1c  bl 0x01767ab4
01693f20  adrp x1,0x575e000
01693f24  adrp x2,0x1767000
01693f28  adrp x4,0x1767000
01693f2c  add x1,x1,#0x46b
01693f30  add x2,x2,#0xd2c
01693f34  add x4,x4,#0xd34
01693f38  mov x3,xzr
01693f3c  mov x5,xzr
01693f40  bl 0x01767ab4
01693f44  mov x19,x0
01693f48  ldr w8,[x19, #0x8]
01693f4c  ldr x0,[x19]
01693f50  sub w8,w8,#0x3
01693f54  str w8,[x19, #0x8]
01693f58  orr w1,wzr,#0xfffffffc
01693f5c  bl 0x0124c4d0
01693f60  ldr w8,[x19, #0x8]
01693f64  ldr x0,[x19]
01693f68  str wzr,[x19, #0x8]
01693f6c  cmp w8,#0x1
01693f70  b.lt 0x01693f7c
01693f74  mvn w1,w8
01693f78  bl 0x0124c4d0
01693f7c  ldr w8,[sp, #0x18]
01693f80  cmp w8,#0x1
01693f84  b.lt 0x01693f94
01693f88  ldr x0,[sp, #0x10]
01693f8c  mvn w1,w8
01693f90  bl 0x0124c4d0
01693f94  ldr w8,[sp, #0x8]
01693f98  cmp w8,#0x1
01693f9c  b.lt 0x01693fac
01693fa0  ldr x0,[sp]
01693fa4  mvn w1,w8
01693fa8  bl 0x0124c4d0
01693fac  ldp x29,x30,[sp, #0x30]
01693fb0  ldr x19,[sp, #0x20]
01693fb4  add sp,sp,#0x40
01693fb8  ret
