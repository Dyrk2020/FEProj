// ===== case251-GPCFlowResObject @ 016b6d78 =====
// existing function case251-GPCFlowResObject
016b6d78  sub sp,sp,#0x40
016b6d7c  str x19,[sp, #0x20]
016b6d80  stp x29,x30,[sp, #0x30]
016b6d84  add x29,sp,#0x30
016b6d88  adrp x1,0x174a000
016b6d8c  add x1,x1,#0x87c
016b6d90  mov x19,x0
016b6d94  bl 0x0124ba40
016b6d98  adrp x1,0x575d000
016b6d9c  add x1,x1,#0xa06
016b6da0  mov x0,x19
016b6da4  str x19,[sp]
016b6da8  bl 0x01251aa0
016b6dac  mov w8,#0x1
016b6db0  str w8,[sp, #0x8]
016b6db4  mov x0,sp
016b6db8  bl 0x0174aa04
016b6dbc  adrp x1,0x5761000
016b6dc0  adrp x3,0x736d000
016b6dc4  add x1,x1,#0x458
016b6dc8  add x3,x3,#0x101
016b6dcc  add x0,sp,#0x10
016b6dd0  mov x2,sp
016b6dd4  bl 0x017d6ff4
016b6dd8  adrp x1,0x5761000
016b6ddc  adrp x2,0x17d6000
016b6de0  adrp x4,0x17d6000
016b6de4  add x1,x1,#0x469
016b6de8  add x2,x2,#0xdec
016b6dec  add x4,x4,#0xdf4
016b6df0  add x0,sp,#0x10
016b6df4  mov x3,xzr
016b6df8  mov x5,xzr
016b6dfc  bl 0x017d6c04
016b6e00  adrp x1,0x5761000
016b6e04  adrp x2,0x17d6000
016b6e08  adrp x4,0x17d6000
016b6e0c  add x1,x1,#0x46f
016b6e10  add x2,x2,#0xfe4
016b6e14  add x4,x4,#0xfec
016b6e18  mov x3,xzr
016b6e1c  mov x5,xzr
016b6e20  bl 0x017d6dfc
016b6e24  mov x19,x0
016b6e28  ldr w8,[x19, #0x8]
016b6e2c  ldr x0,[x19]
016b6e30  sub w8,w8,#0x3
016b6e34  str w8,[x19, #0x8]
016b6e38  orr w1,wzr,#0xfffffffc
016b6e3c  bl 0x0124c4d0
016b6e40  ldr w8,[x19, #0x8]
016b6e44  ldr x0,[x19]
016b6e48  str wzr,[x19, #0x8]
016b6e4c  cmp w8,#0x1
016b6e50  b.lt 0x016b6e5c
016b6e54  mvn w1,w8
016b6e58  bl 0x0124c4d0
016b6e5c  ldr w8,[sp, #0x18]
016b6e60  cmp w8,#0x1
016b6e64  b.lt 0x016b6e74
016b6e68  ldr x0,[sp, #0x10]
016b6e6c  mvn w1,w8
016b6e70  bl 0x0124c4d0
016b6e74  ldr w8,[sp, #0x8]
016b6e78  cmp w8,#0x1
016b6e7c  b.lt 0x016b6e8c
016b6e80  ldr x0,[sp]
016b6e84  mvn w1,w8
016b6e88  bl 0x0124c4d0
016b6e8c  ldp x29,x30,[sp, #0x30]
016b6e90  ldr x19,[sp, #0x20]
016b6e94  add sp,sp,#0x40
016b6e98  ret
