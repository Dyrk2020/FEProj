// ===== case451-MapGrassWardPointObj @ 016e9d90 =====
// existing function case451-MapGrassWardPointObj
016e9d90  sub sp,sp,#0x40
016e9d94  str x19,[sp, #0x20]
016e9d98  stp x29,x30,[sp, #0x30]
016e9d9c  add x29,sp,#0x30
016e9da0  adrp x1,0x174a000
016e9da4  add x1,x1,#0x87c
016e9da8  mov x19,x0
016e9dac  bl 0x0124ba40
016e9db0  adrp x1,0x575d000
016e9db4  add x1,x1,#0xa06
016e9db8  mov x0,x19
016e9dbc  str x19,[sp]
016e9dc0  bl 0x01251aa0
016e9dc4  mov w8,#0x1
016e9dc8  str w8,[sp, #0x8]
016e9dcc  mov x0,sp
016e9dd0  bl 0x0174aa04
016e9dd4  adrp x1,0x5766000
016e9dd8  adrp x3,0x736d000
016e9ddc  add x1,x1,#0xa7b
016e9de0  add x3,x3,#0x101
016e9de4  add x0,sp,#0x10
016e9de8  mov x2,sp
016e9dec  bl 0x0186da08
016e9df0  adrp x1,0x5766000
016e9df4  adrp x2,0x186d000
016e9df8  adrp x4,0x186d000
016e9dfc  add x1,x1,#0xa90
016e9e00  add x2,x2,#0x9f8
016e9e04  add x4,x4,#0xa00
016e9e08  add x0,sp,#0x10
016e9e0c  mov x3,xzr
016e9e10  mov x5,xzr
016e9e14  bl 0x0186d810
016e9e18  mov x19,x0
016e9e1c  ldr w8,[x19, #0x8]
016e9e20  ldr x0,[x19]
016e9e24  sub w8,w8,#0x3
016e9e28  str w8,[x19, #0x8]
016e9e2c  orr w1,wzr,#0xfffffffc
016e9e30  bl 0x0124c4d0
016e9e34  ldr w8,[x19, #0x8]
016e9e38  ldr x0,[x19]
016e9e3c  str wzr,[x19, #0x8]
016e9e40  cmp w8,#0x1
016e9e44  b.lt 0x016e9e50
016e9e48  mvn w1,w8
016e9e4c  bl 0x0124c4d0
016e9e50  ldr w8,[sp, #0x18]
016e9e54  cmp w8,#0x1
016e9e58  b.lt 0x016e9e68
016e9e5c  ldr x0,[sp, #0x10]
016e9e60  mvn w1,w8
016e9e64  bl 0x0124c4d0
016e9e68  ldr w8,[sp, #0x8]
016e9e6c  cmp w8,#0x1
016e9e70  b.lt 0x016e9e80
016e9e74  ldr x0,[sp]
016e9e78  mvn w1,w8
016e9e7c  bl 0x0124c4d0
016e9e80  ldp x29,x30,[sp, #0x30]
016e9e84  ldr x19,[sp, #0x20]
016e9e88  add sp,sp,#0x40
016e9e8c  ret
