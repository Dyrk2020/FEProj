// ===== case161-EquipStaticDataNode @ 016a7da4 =====
// existing function case161-EquipStaticDataNode
016a7da4  sub sp,sp,#0x40
016a7da8  str x19,[sp, #0x20]
016a7dac  stp x29,x30,[sp, #0x30]
016a7db0  add x29,sp,#0x30
016a7db4  adrp x1,0x174a000
016a7db8  add x1,x1,#0x87c
016a7dbc  mov x19,x0
016a7dc0  bl 0x0124ba40
016a7dc4  adrp x1,0x575d000
016a7dc8  add x1,x1,#0xa06
016a7dcc  mov x0,x19
016a7dd0  str x19,[sp]
016a7dd4  bl 0x01251aa0
016a7dd8  mov w8,#0x1
016a7ddc  str w8,[sp, #0x8]
016a7de0  mov x0,sp
016a7de4  bl 0x0174aa04
016a7de8  adrp x1,0x5760000
016a7dec  adrp x3,0x736d000
016a7df0  add x1,x1,#0x25e
016a7df4  add x3,x3,#0x101
016a7df8  add x0,sp,#0x10
016a7dfc  mov x2,sp
016a7e00  bl 0x017a6358
016a7e04  adrp x1,0x575f000
016a7e08  adrp x2,0x17a5000
016a7e0c  add x1,x1,#0xddb
016a7e10  add x2,x2,#0xf40
016a7e14  add x0,sp,#0x10
016a7e18  mov x3,xzr
016a7e1c  mov x4,xzr
016a7e20  mov x5,xzr
016a7e24  bl 0x017a5d58
016a7e28  adrp x1,0x575f000
016a7e2c  adrp x2,0x17a6000
016a7e30  adrp x4,0x17a6000
016a7e34  add x1,x1,#0xde4
016a7e38  add x2,x2,#0x130
016a7e3c  add x4,x4,#0x138
016a7e40  mov x3,xzr
016a7e44  mov x5,xzr
016a7e48  bl 0x017a5f48
016a7e4c  adrp x1,0x575f000
016a7e50  adrp x2,0x17a6000
016a7e54  adrp x4,0x17a6000
016a7e58  add x1,x1,#0xdef
016a7e5c  add x2,x2,#0x328
016a7e60  add x4,x4,#0x330
016a7e64  mov x3,xzr
016a7e68  mov x5,xzr
016a7e6c  bl 0x017a6140
016a7e70  adrp x1,0x575f000
016a7e74  adrp x2,0x17a6000
016a7e78  adrp x4,0x17a6000
016a7e7c  add x1,x1,#0xdf9
016a7e80  add x2,x2,#0x338
016a7e84  add x4,x4,#0x340
016a7e88  mov x3,xzr
016a7e8c  mov x5,xzr
016a7e90  bl 0x017a6140
016a7e94  adrp x1,0x575f000
016a7e98  adrp x2,0x17a6000
016a7e9c  add x1,x1,#0xe03
016a7ea0  add x2,x2,#0x348
016a7ea4  mov x3,xzr
016a7ea8  mov x4,xzr
016a7eac  mov x5,xzr
016a7eb0  bl 0x017a5d58
016a7eb4  adrp x1,0x575f000
016a7eb8  adrp x2,0x17a6000
016a7ebc  add x1,x1,#0xe0e
016a7ec0  add x2,x2,#0x350
016a7ec4  mov x3,xzr
016a7ec8  mov x4,xzr
016a7ecc  mov x5,xzr
016a7ed0  bl 0x017a5d58
016a7ed4  mov x19,x0
016a7ed8  ldr w8,[x19, #0x8]
016a7edc  ldr x0,[x19]
016a7ee0  sub w8,w8,#0x3
016a7ee4  str w8,[x19, #0x8]
016a7ee8  orr w1,wzr,#0xfffffffc
016a7eec  bl 0x0124c4d0
016a7ef0  ldr w8,[x19, #0x8]
016a7ef4  ldr x0,[x19]
016a7ef8  str wzr,[x19, #0x8]
016a7efc  cmp w8,#0x1
016a7f00  b.lt 0x016a7f0c
016a7f04  mvn w1,w8
016a7f08  bl 0x0124c4d0
016a7f0c  ldr w8,[sp, #0x18]
016a7f10  cmp w8,#0x1
016a7f14  b.lt 0x016a7f24
016a7f18  ldr x0,[sp, #0x10]
016a7f1c  mvn w1,w8
016a7f20  bl 0x0124c4d0
016a7f24  ldr w8,[sp, #0x8]
016a7f28  cmp w8,#0x1
016a7f2c  b.lt 0x016a7f3c
016a7f30  ldr x0,[sp]
016a7f34  mvn w1,w8
016a7f38  bl 0x0124c4d0
016a7f3c  ldp x29,x30,[sp, #0x30]
016a7f40  ldr x19,[sp, #0x20]
016a7f44  add sp,sp,#0x40
016a7f48  ret
