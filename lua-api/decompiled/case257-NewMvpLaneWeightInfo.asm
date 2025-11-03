// ===== case257-NewMvpLaneWeightInfo @ 016b7c2c =====
// existing function case257-NewMvpLaneWeightInfo
016b7c2c  sub sp,sp,#0x40
016b7c30  str x19,[sp, #0x20]
016b7c34  stp x29,x30,[sp, #0x30]
016b7c38  add x29,sp,#0x30
016b7c3c  adrp x1,0x174a000
016b7c40  add x1,x1,#0x87c
016b7c44  mov x19,x0
016b7c48  bl 0x0124ba40
016b7c4c  adrp x1,0x575d000
016b7c50  add x1,x1,#0xa06
016b7c54  mov x0,x19
016b7c58  str x19,[sp]
016b7c5c  bl 0x01251aa0
016b7c60  mov w8,#0x1
016b7c64  str w8,[sp, #0x8]
016b7c68  mov x0,sp
016b7c6c  bl 0x0174aa04
016b7c70  adrp x1,0x5761000
016b7c74  adrp x3,0x736d000
016b7c78  add x1,x1,#0x58a
016b7c7c  add x3,x3,#0x101
016b7c80  add x0,sp,#0x10
016b7c84  mov x2,sp
016b7c88  bl 0x017dafd4
016b7c8c  adrp x1,0x5761000
016b7c90  adrp x2,0x17da000
016b7c94  adrp x4,0x17da000
016b7c98  add x1,x1,#0x56a
016b7c9c  add x2,x2,#0xf54
016b7ca0  add x4,x4,#0xf5c
016b7ca4  add x0,sp,#0x10
016b7ca8  mov x3,xzr
016b7cac  mov x5,xzr
016b7cb0  bl 0x017dad6c
016b7cb4  adrp x1,0x5761000
016b7cb8  adrp x2,0x17da000
016b7cbc  adrp x4,0x17da000
016b7cc0  add x1,x1,#0x57a
016b7cc4  add x2,x2,#0xf64
016b7cc8  add x4,x4,#0xf6c
016b7ccc  mov x3,xzr
016b7cd0  mov x5,xzr
016b7cd4  bl 0x017dad6c
016b7cd8  adrp x1,0x575e000
016b7cdc  adrp x2,0x17da000
016b7ce0  adrp x4,0x17da000
016b7ce4  add x1,x1,#0x517
016b7ce8  add x2,x2,#0xf74
016b7cec  add x4,x4,#0xf7c
016b7cf0  mov x3,xzr
016b7cf4  mov x5,xzr
016b7cf8  bl 0x017dad6c
016b7cfc  adrp x1,0x5761000
016b7d00  adrp x2,0x17da000
016b7d04  adrp x4,0x17da000
016b7d08  add x1,x1,#0x59f
016b7d0c  add x2,x2,#0xf84
016b7d10  add x4,x4,#0xf8c
016b7d14  mov x3,xzr
016b7d18  mov x5,xzr
016b7d1c  bl 0x017dad6c
016b7d20  adrp x1,0x5761000
016b7d24  adrp x2,0x17da000
016b7d28  adrp x4,0x17da000
016b7d2c  add x1,x1,#0x5a6
016b7d30  add x2,x2,#0xf94
016b7d34  add x4,x4,#0xf9c
016b7d38  mov x3,xzr
016b7d3c  mov x5,xzr
016b7d40  bl 0x017dad6c
016b7d44  adrp x1,0x5761000
016b7d48  adrp x2,0x17da000
016b7d4c  adrp x4,0x17da000
016b7d50  add x1,x1,#0x5ad
016b7d54  add x2,x2,#0xfa4
016b7d58  add x4,x4,#0xfac
016b7d5c  mov x3,xzr
016b7d60  mov x5,xzr
016b7d64  bl 0x017dad6c
016b7d68  adrp x1,0x5761000
016b7d6c  adrp x2,0x17da000
016b7d70  adrp x4,0x17da000
016b7d74  add x1,x1,#0x5b4
016b7d78  add x2,x2,#0xfb4
016b7d7c  add x4,x4,#0xfbc
016b7d80  mov x3,xzr
016b7d84  mov x5,xzr
016b7d88  bl 0x017dad6c
016b7d8c  adrp x1,0x5761000
016b7d90  adrp x2,0x17da000
016b7d94  adrp x4,0x17da000
016b7d98  add x1,x1,#0x5bb
016b7d9c  add x2,x2,#0xfc4
016b7da0  add x4,x4,#0xfcc
016b7da4  mov x3,xzr
016b7da8  mov x5,xzr
016b7dac  bl 0x017dad6c
016b7db0  mov x19,x0
016b7db4  ldr w8,[x19, #0x8]
016b7db8  ldr x0,[x19]
016b7dbc  sub w8,w8,#0x3
016b7dc0  str w8,[x19, #0x8]
016b7dc4  orr w1,wzr,#0xfffffffc
016b7dc8  bl 0x0124c4d0
016b7dcc  ldr w8,[x19, #0x8]
016b7dd0  ldr x0,[x19]
016b7dd4  str wzr,[x19, #0x8]
016b7dd8  cmp w8,#0x1
016b7ddc  b.lt 0x016b7de8
016b7de0  mvn w1,w8
016b7de4  bl 0x0124c4d0
016b7de8  ldr w8,[sp, #0x18]
016b7dec  cmp w8,#0x1
016b7df0  b.lt 0x016b7e00
016b7df4  ldr x0,[sp, #0x10]
016b7df8  mvn w1,w8
016b7dfc  bl 0x0124c4d0
016b7e00  ldr w8,[sp, #0x8]
016b7e04  cmp w8,#0x1
016b7e08  b.lt 0x016b7e18
016b7e0c  ldr x0,[sp]
016b7e10  mvn w1,w8
016b7e14  bl 0x0124c4d0
016b7e18  ldp x29,x30,[sp, #0x30]
016b7e1c  ldr x19,[sp, #0x20]
016b7e20  add sp,sp,#0x40
016b7e24  ret
