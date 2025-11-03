// ===== case133-RuneStaticDataNode @ 016a2d88 =====
// existing function case133-RuneStaticDataNode
016a2d88  sub sp,sp,#0x40
016a2d8c  str x19,[sp, #0x20]
016a2d90  stp x29,x30,[sp, #0x30]
016a2d94  add x29,sp,#0x30
016a2d98  adrp x1,0x174a000
016a2d9c  add x1,x1,#0x87c
016a2da0  mov x19,x0
016a2da4  bl 0x0124ba40
016a2da8  adrp x1,0x575d000
016a2dac  add x1,x1,#0xa06
016a2db0  mov x0,x19
016a2db4  str x19,[sp]
016a2db8  bl 0x01251aa0
016a2dbc  mov w8,#0x1
016a2dc0  str w8,[sp, #0x8]
016a2dc4  mov x0,sp
016a2dc8  bl 0x0174aa04
016a2dcc  adrp x1,0x575f000
016a2dd0  adrp x3,0x736d000
016a2dd4  add x1,x1,#0xdc8
016a2dd8  add x3,x3,#0x101
016a2ddc  add x0,sp,#0x10
016a2de0  mov x2,sp
016a2de4  bl 0x01797d1c
016a2de8  adrp x1,0x575f000
016a2dec  adrp x2,0x1797000
016a2df0  add x1,x1,#0xddb
016a2df4  add x2,x2,#0x904
016a2df8  add x0,sp,#0x10
016a2dfc  mov x3,xzr
016a2e00  mov x4,xzr
016a2e04  mov x5,xzr
016a2e08  bl 0x0179771c
016a2e0c  adrp x1,0x575f000
016a2e10  adrp x2,0x1797000
016a2e14  adrp x4,0x1797000
016a2e18  add x1,x1,#0xde4
016a2e1c  add x2,x2,#0xaf4
016a2e20  add x4,x4,#0xafc
016a2e24  mov x3,xzr
016a2e28  mov x5,xzr
016a2e2c  bl 0x0179790c
016a2e30  adrp x1,0x575f000
016a2e34  adrp x2,0x1797000
016a2e38  adrp x4,0x1797000
016a2e3c  add x1,x1,#0xdef
016a2e40  add x2,x2,#0xcec
016a2e44  add x4,x4,#0xcf4
016a2e48  mov x3,xzr
016a2e4c  mov x5,xzr
016a2e50  bl 0x01797b04
016a2e54  adrp x1,0x575f000
016a2e58  adrp x2,0x1797000
016a2e5c  adrp x4,0x1797000
016a2e60  add x1,x1,#0xdf9
016a2e64  add x2,x2,#0xcfc
016a2e68  add x4,x4,#0xd04
016a2e6c  mov x3,xzr
016a2e70  mov x5,xzr
016a2e74  bl 0x01797b04
016a2e78  adrp x1,0x575f000
016a2e7c  adrp x2,0x1797000
016a2e80  add x1,x1,#0xe03
016a2e84  add x2,x2,#0xd0c
016a2e88  mov x3,xzr
016a2e8c  mov x4,xzr
016a2e90  mov x5,xzr
016a2e94  bl 0x0179771c
016a2e98  adrp x1,0x575f000
016a2e9c  adrp x2,0x1797000
016a2ea0  add x1,x1,#0xe0e
016a2ea4  add x2,x2,#0xd14
016a2ea8  mov x3,xzr
016a2eac  mov x4,xzr
016a2eb0  mov x5,xzr
016a2eb4  bl 0x0179771c
016a2eb8  mov x19,x0
016a2ebc  ldr w8,[x19, #0x8]
016a2ec0  ldr x0,[x19]
016a2ec4  sub w8,w8,#0x3
016a2ec8  str w8,[x19, #0x8]
016a2ecc  orr w1,wzr,#0xfffffffc
016a2ed0  bl 0x0124c4d0
016a2ed4  ldr w8,[x19, #0x8]
016a2ed8  ldr x0,[x19]
016a2edc  str wzr,[x19, #0x8]
016a2ee0  cmp w8,#0x1
016a2ee4  b.lt 0x016a2ef0
016a2ee8  mvn w1,w8
016a2eec  bl 0x0124c4d0
016a2ef0  ldr w8,[sp, #0x18]
016a2ef4  cmp w8,#0x1
016a2ef8  b.lt 0x016a2f08
016a2efc  ldr x0,[sp, #0x10]
016a2f00  mvn w1,w8
016a2f04  bl 0x0124c4d0
016a2f08  ldr w8,[sp, #0x8]
016a2f0c  cmp w8,#0x1
016a2f10  b.lt 0x016a2f20
016a2f14  ldr x0,[sp]
016a2f18  mvn w1,w8
016a2f1c  bl 0x0124c4d0
016a2f20  ldp x29,x30,[sp, #0x30]
016a2f24  ldr x19,[sp, #0x20]
016a2f28  add sp,sp,#0x40
016a2f2c  ret
