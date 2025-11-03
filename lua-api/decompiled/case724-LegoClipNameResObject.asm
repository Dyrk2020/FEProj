// ===== case724-LegoClipNameResObject @ 01724c58 =====
// existing function case724-LegoClipNameResObject
01724c58  sub sp,sp,#0x40
01724c5c  str x19,[sp, #0x20]
01724c60  stp x29,x30,[sp, #0x30]
01724c64  add x29,sp,#0x30
01724c68  adrp x1,0x174a000
01724c6c  add x1,x1,#0x87c
01724c70  mov x19,x0
01724c74  bl 0x0124ba40
01724c78  adrp x1,0x575d000
01724c7c  add x1,x1,#0xa06
01724c80  mov x0,x19
01724c84  str x19,[sp]
01724c88  bl 0x01251aa0
01724c8c  mov w8,#0x1
01724c90  str w8,[sp, #0x8]
01724c94  mov x0,sp
01724c98  bl 0x0174aa04
01724c9c  adrp x1,0x576f000
01724ca0  adrp x3,0x736d000
01724ca4  add x1,x1,#0xd03
01724ca8  add x3,x3,#0x101
01724cac  add x0,sp,#0x10
01724cb0  mov x2,sp
01724cb4  bl 0x019769a4
01724cb8  adrp x1,0x59ae000
01724cbc  adrp x2,0x1976000
01724cc0  add x1,x1,#0xf93
01724cc4  add x2,x2,#0x994
01724cc8  add x0,sp,#0x10
01724ccc  mov x3,xzr
01724cd0  mov x4,xzr
01724cd4  mov x5,xzr
01724cd8  bl 0x019767ac
01724cdc  adrp x1,0x576f000
01724ce0  adrp x2,0x1976000
01724ce4  add x1,x1,#0xd19
01724ce8  add x2,x2,#0x99c
01724cec  mov x3,xzr
01724cf0  mov x4,xzr
01724cf4  mov x5,xzr
01724cf8  bl 0x019767ac
01724cfc  mov x19,x0
01724d00  ldr w8,[x19, #0x8]
01724d04  ldr x0,[x19]
01724d08  sub w8,w8,#0x3
01724d0c  str w8,[x19, #0x8]
01724d10  orr w1,wzr,#0xfffffffc
01724d14  bl 0x0124c4d0
01724d18  ldr w8,[x19, #0x8]
01724d1c  ldr x0,[x19]
01724d20  str wzr,[x19, #0x8]
01724d24  cmp w8,#0x1
01724d28  b.lt 0x01724d34
01724d2c  mvn w1,w8
01724d30  bl 0x0124c4d0
01724d34  ldr w8,[sp, #0x18]
01724d38  cmp w8,#0x1
01724d3c  b.lt 0x01724d4c
01724d40  ldr x0,[sp, #0x10]
01724d44  mvn w1,w8
01724d48  bl 0x0124c4d0
01724d4c  ldr w8,[sp, #0x8]
01724d50  cmp w8,#0x1
01724d54  b.lt 0x01724d64
01724d58  ldr x0,[sp]
01724d5c  mvn w1,w8
01724d60  bl 0x0124c4d0
01724d64  ldp x29,x30,[sp, #0x30]
01724d68  ldr x19,[sp, #0x20]
01724d6c  add sp,sp,#0x40
01724d70  ret
