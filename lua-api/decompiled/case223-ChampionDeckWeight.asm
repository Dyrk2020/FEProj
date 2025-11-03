// ===== case223-ChampionDeckWeight @ 016b2d44 =====
// existing function case223-ChampionDeckWeight
016b2d44  sub sp,sp,#0x40
016b2d48  str x19,[sp, #0x20]
016b2d4c  stp x29,x30,[sp, #0x30]
016b2d50  add x29,sp,#0x30
016b2d54  adrp x1,0x174a000
016b2d58  add x1,x1,#0x87c
016b2d5c  mov x19,x0
016b2d60  bl 0x0124ba40
016b2d64  adrp x1,0x575d000
016b2d68  add x1,x1,#0xa06
016b2d6c  mov x0,x19
016b2d70  str x19,[sp]
016b2d74  bl 0x01251aa0
016b2d78  mov w8,#0x1
016b2d7c  str w8,[sp, #0x8]
016b2d80  mov x0,sp
016b2d84  bl 0x0174aa04
016b2d88  adrp x1,0x5767000
016b2d8c  adrp x3,0x736d000
016b2d90  add x1,x1,#0x7b2
016b2d94  add x3,x3,#0x101
016b2d98  add x0,sp,#0x10
016b2d9c  mov x2,sp
016b2da0  bl 0x017c6e9c
016b2da4  adrp x1,0x5761000
016b2da8  adrp x2,0x17c6000
016b2dac  adrp x4,0x17c6000
016b2db0  add x1,x1,#0x73
016b2db4  add x2,x2,#0xe7c
016b2db8  add x4,x4,#0xe84
016b2dbc  add x0,sp,#0x10
016b2dc0  mov x3,xzr
016b2dc4  mov x5,xzr
016b2dc8  bl 0x017c6c94
016b2dcc  adrp x1,0x5761000
016b2dd0  adrp x2,0x17c6000
016b2dd4  adrp x4,0x17c6000
016b2dd8  add x1,x1,#0x83
016b2ddc  add x2,x2,#0xe8c
016b2de0  add x4,x4,#0xe94
016b2de4  mov x3,xzr
016b2de8  mov x5,xzr
016b2dec  bl 0x017c6c94
016b2df0  mov x19,x0
016b2df4  ldr w8,[x19, #0x8]
016b2df8  ldr x0,[x19]
016b2dfc  sub w8,w8,#0x3
016b2e00  str w8,[x19, #0x8]
016b2e04  orr w1,wzr,#0xfffffffc
016b2e08  bl 0x0124c4d0
016b2e0c  ldr w8,[x19, #0x8]
016b2e10  ldr x0,[x19]
016b2e14  str wzr,[x19, #0x8]
016b2e18  cmp w8,#0x1
016b2e1c  b.lt 0x016b2e28
016b2e20  mvn w1,w8
016b2e24  bl 0x0124c4d0
016b2e28  ldr w8,[sp, #0x18]
016b2e2c  cmp w8,#0x1
016b2e30  b.lt 0x016b2e40
016b2e34  ldr x0,[sp, #0x10]
016b2e38  mvn w1,w8
016b2e3c  bl 0x0124c4d0
016b2e40  ldr w8,[sp, #0x8]
016b2e44  cmp w8,#0x1
016b2e48  b.lt 0x016b2e58
016b2e4c  ldr x0,[sp]
016b2e50  mvn w1,w8
016b2e54  bl 0x0124c4d0
016b2e58  ldp x29,x30,[sp, #0x30]
016b2e5c  ldr x19,[sp, #0x20]
016b2e60  add sp,sp,#0x40
016b2e64  ret
