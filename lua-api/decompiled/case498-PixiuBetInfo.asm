// ===== case498-PixiuBetInfo @ 016f3cd8 =====
// existing function case498-PixiuBetInfo
016f3cd8  sub sp,sp,#0x40
016f3cdc  str x19,[sp, #0x20]
016f3ce0  stp x29,x30,[sp, #0x30]
016f3ce4  add x29,sp,#0x30
016f3ce8  adrp x1,0x174a000
016f3cec  add x1,x1,#0x87c
016f3cf0  mov x19,x0
016f3cf4  bl 0x0124ba40
016f3cf8  adrp x1,0x575d000
016f3cfc  add x1,x1,#0xa06
016f3d00  mov x0,x19
016f3d04  str x19,[sp]
016f3d08  bl 0x01251aa0
016f3d0c  mov w8,#0x1
016f3d10  str w8,[sp, #0x8]
016f3d14  mov x0,sp
016f3d18  bl 0x0174aa04
016f3d1c  adrp x1,0x5768000
016f3d20  adrp x3,0x736d000
016f3d24  add x1,x1,#0x1c
016f3d28  add x3,x3,#0x101
016f3d2c  add x0,sp,#0x10
016f3d30  mov x2,sp
016f3d34  bl 0x0188feb0
016f3d38  adrp x1,0x5767000
016f3d3c  adrp x2,0x188f000
016f3d40  adrp x4,0x188f000
016f3d44  add x1,x1,#0xfcc
016f3d48  add x2,x2,#0xb98
016f3d4c  add x4,x4,#0xba0
016f3d50  add x0,sp,#0x10
016f3d54  mov x3,xzr
016f3d58  mov x5,xzr
016f3d5c  bl 0x0188f9b0
016f3d60  adrp x1,0x5768000
016f3d64  adrp x2,0x188f000
016f3d68  adrp x4,0x188f000
016f3d6c  add x1,x1,#0x29
016f3d70  add x2,x2,#0xe18
016f3d74  add x4,x4,#0xe20
016f3d78  mov x3,xzr
016f3d7c  mov x5,xzr
016f3d80  bl 0x0188fc30
016f3d84  mov x19,x0
016f3d88  ldr w8,[x19, #0x8]
016f3d8c  ldr x0,[x19]
016f3d90  sub w8,w8,#0x3
016f3d94  str w8,[x19, #0x8]
016f3d98  orr w1,wzr,#0xfffffffc
016f3d9c  bl 0x0124c4d0
016f3da0  ldr w8,[x19, #0x8]
016f3da4  ldr x0,[x19]
016f3da8  str wzr,[x19, #0x8]
016f3dac  cmp w8,#0x1
016f3db0  b.lt 0x016f3dbc
016f3db4  mvn w1,w8
016f3db8  bl 0x0124c4d0
016f3dbc  ldr w8,[sp, #0x18]
016f3dc0  cmp w8,#0x1
016f3dc4  b.lt 0x016f3dd4
016f3dc8  ldr x0,[sp, #0x10]
016f3dcc  mvn w1,w8
016f3dd0  bl 0x0124c4d0
016f3dd4  ldr w8,[sp, #0x8]
016f3dd8  cmp w8,#0x1
016f3ddc  b.lt 0x016f3dec
016f3de0  ldr x0,[sp]
016f3de4  mvn w1,w8
016f3de8  bl 0x0124c4d0
016f3dec  ldp x29,x30,[sp, #0x30]
016f3df0  ldr x19,[sp, #0x20]
016f3df4  add sp,sp,#0x40
016f3df8  ret
