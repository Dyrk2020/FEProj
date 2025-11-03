// ===== case509-ActorMiniMapIconVisibleData @ 016f5c84 =====
// existing function case509-ActorMiniMapIconVisibleData
016f5c84  sub sp,sp,#0x40
016f5c88  str x19,[sp, #0x20]
016f5c8c  stp x29,x30,[sp, #0x30]
016f5c90  add x29,sp,#0x30
016f5c94  adrp x1,0x174a000
016f5c98  add x1,x1,#0x87c
016f5c9c  mov x19,x0
016f5ca0  bl 0x0124ba40
016f5ca4  adrp x1,0x575d000
016f5ca8  add x1,x1,#0xa06
016f5cac  mov x0,x19
016f5cb0  str x19,[sp]
016f5cb4  bl 0x01251aa0
016f5cb8  mov w8,#0x1
016f5cbc  str w8,[sp, #0x8]
016f5cc0  mov x0,sp
016f5cc4  bl 0x0174aa04
016f5cc8  adrp x1,0x5768000
016f5ccc  adrp x3,0x736d000
016f5cd0  add x1,x1,#0x3b3
016f5cd4  add x3,x3,#0x101
016f5cd8  add x0,sp,#0x10
016f5cdc  mov x2,sp
016f5ce0  bl 0x0189c150
016f5ce4  adrp x1,0x5768000
016f5ce8  adrp x2,0x189c000
016f5cec  adrp x4,0x189c000
016f5cf0  add x1,x1,#0x3cf
016f5cf4  add x2,x2,#0x108
016f5cf8  add x4,x4,#0x110
016f5cfc  add x0,sp,#0x10
016f5d00  mov x3,xzr
016f5d04  mov x5,xzr
016f5d08  bl 0x0189bf20
016f5d0c  adrp x1,0x5768000
016f5d10  adrp x2,0x189c000
016f5d14  adrp x4,0x189c000
016f5d18  add x1,x1,#0x3dd
016f5d1c  add x2,x2,#0x12c
016f5d20  add x4,x4,#0x134
016f5d24  mov x3,xzr
016f5d28  mov x5,xzr
016f5d2c  bl 0x0189bf20
016f5d30  mov x19,x0
016f5d34  ldr w8,[x19, #0x8]
016f5d38  ldr x0,[x19]
016f5d3c  sub w8,w8,#0x3
016f5d40  str w8,[x19, #0x8]
016f5d44  orr w1,wzr,#0xfffffffc
016f5d48  bl 0x0124c4d0
016f5d4c  ldr w8,[x19, #0x8]
016f5d50  ldr x0,[x19]
016f5d54  str wzr,[x19, #0x8]
016f5d58  cmp w8,#0x1
016f5d5c  b.lt 0x016f5d68
016f5d60  mvn w1,w8
016f5d64  bl 0x0124c4d0
016f5d68  ldr w8,[sp, #0x18]
016f5d6c  cmp w8,#0x1
016f5d70  b.lt 0x016f5d80
016f5d74  ldr x0,[sp, #0x10]
016f5d78  mvn w1,w8
016f5d7c  bl 0x0124c4d0
016f5d80  ldr w8,[sp, #0x8]
016f5d84  cmp w8,#0x1
016f5d88  b.lt 0x016f5d98
016f5d8c  ldr x0,[sp]
016f5d90  mvn w1,w8
016f5d94  bl 0x0124c4d0
016f5d98  ldp x29,x30,[sp, #0x30]
016f5d9c  ldr x19,[sp, #0x20]
016f5da0  add sp,sp,#0x40
016f5da4  ret
