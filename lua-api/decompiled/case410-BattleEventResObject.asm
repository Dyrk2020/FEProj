// ===== case410-BattleEventResObject @ 016e2da0 =====
// existing function case410-BattleEventResObject
016e2da0  sub sp,sp,#0x40
016e2da4  str x19,[sp, #0x20]
016e2da8  stp x29,x30,[sp, #0x30]
016e2dac  add x29,sp,#0x30
016e2db0  adrp x1,0x174a000
016e2db4  add x1,x1,#0x87c
016e2db8  mov x19,x0
016e2dbc  bl 0x0124ba40
016e2dc0  adrp x1,0x575d000
016e2dc4  add x1,x1,#0xa06
016e2dc8  mov x0,x19
016e2dcc  str x19,[sp]
016e2dd0  bl 0x01251aa0
016e2dd4  mov w8,#0x1
016e2dd8  str w8,[sp, #0x8]
016e2ddc  mov x0,sp
016e2de0  bl 0x0174aa04
016e2de4  adrp x1,0x5766000
016e2de8  adrp x3,0x736d000
016e2dec  add x1,x1,#0x6e
016e2df0  add x3,x3,#0x101
016e2df4  add x0,sp,#0x10
016e2df8  mov x2,sp
016e2dfc  bl 0x01853db8
016e2e00  adrp x1,0x5766000
016e2e04  adrp x2,0x1853000
016e2e08  adrp x4,0x1853000
016e2e0c  add x1,x1,#0x83
016e2e10  add x2,x2,#0xda8
016e2e14  add x4,x4,#0xdb0
016e2e18  add x0,sp,#0x10
016e2e1c  mov x3,xzr
016e2e20  mov x5,xzr
016e2e24  bl 0x01853bc0
016e2e28  mov x19,x0
016e2e2c  ldr w8,[x19, #0x8]
016e2e30  ldr x0,[x19]
016e2e34  sub w8,w8,#0x3
016e2e38  str w8,[x19, #0x8]
016e2e3c  orr w1,wzr,#0xfffffffc
016e2e40  bl 0x0124c4d0
016e2e44  ldr w8,[x19, #0x8]
016e2e48  ldr x0,[x19]
016e2e4c  str wzr,[x19, #0x8]
016e2e50  cmp w8,#0x1
016e2e54  b.lt 0x016e2e60
016e2e58  mvn w1,w8
016e2e5c  bl 0x0124c4d0
016e2e60  ldr w8,[sp, #0x18]
016e2e64  cmp w8,#0x1
016e2e68  b.lt 0x016e2e78
016e2e6c  ldr x0,[sp, #0x10]
016e2e70  mvn w1,w8
016e2e74  bl 0x0124c4d0
016e2e78  ldr w8,[sp, #0x8]
016e2e7c  cmp w8,#0x1
016e2e80  b.lt 0x016e2e90
016e2e84  ldr x0,[sp]
016e2e88  mvn w1,w8
016e2e8c  bl 0x0124c4d0
016e2e90  ldp x29,x30,[sp, #0x30]
016e2e94  ldr x19,[sp, #0x20]
016e2e98  add sp,sp,#0x40
016e2e9c  ret
