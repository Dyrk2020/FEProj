// ===== case784-FilterEntry_FilterActorCamp @ 01730cb4 =====
// existing function case784-FilterEntry_FilterActorCamp
01730cb4  sub sp,sp,#0x40
01730cb8  str x19,[sp, #0x20]
01730cbc  stp x29,x30,[sp, #0x30]
01730cc0  add x29,sp,#0x30
01730cc4  adrp x1,0x174a000
01730cc8  add x1,x1,#0x87c
01730ccc  mov x19,x0
01730cd0  bl 0x0124ba40
01730cd4  adrp x1,0x575d000
01730cd8  add x1,x1,#0xa06
01730cdc  mov x0,x19
01730ce0  str x19,[sp]
01730ce4  bl 0x01251aa0
01730ce8  mov w8,#0x1
01730cec  str w8,[sp, #0x8]
01730cf0  mov x0,sp
01730cf4  bl 0x0174aa04
01730cf8  adrp x1,0x5771000
01730cfc  adrp x3,0x736d000
01730d00  add x1,x1,#0xa34
01730d04  add x3,x3,#0x101
01730d08  add x0,sp,#0x10
01730d0c  mov x2,sp
01730d10  bl 0x019ab708
01730d14  adrp x1,0x5761000
01730d18  adrp x2,0x19ab000
01730d1c  adrp x4,0x19ab000
01730d20  add x1,x1,#0x570
01730d24  add x2,x2,#0x6c8
01730d28  add x4,x4,#0x6d0
01730d2c  add x0,sp,#0x10
01730d30  mov x3,xzr
01730d34  mov x5,xzr
01730d38  bl 0x019ab4e0
01730d3c  adrp x1,0x5771000
01730d40  adrp x2,0x19ab000
01730d44  adrp x4,0x19ab000
01730d48  add x1,x1,#0xa50
01730d4c  add x2,x2,#0x6d8
01730d50  add x4,x4,#0x6e0
01730d54  mov x3,xzr
01730d58  mov x5,xzr
01730d5c  bl 0x019ab4e0
01730d60  adrp x1,0x5972000
01730d64  adrp x2,0x19ab000
01730d68  adrp x4,0x19ab000
01730d6c  add x1,x1,#0xaa5
01730d70  add x2,x2,#0x6e8
01730d74  add x4,x4,#0x6f0
01730d78  mov x3,xzr
01730d7c  mov x5,xzr
01730d80  bl 0x019ab4e0
01730d84  adrp x1,0x5762000
01730d88  adrp x2,0x19ab000
01730d8c  adrp x4,0x19ab000
01730d90  add x1,x1,#0x7c6
01730d94  add x2,x2,#0x6f8
01730d98  add x4,x4,#0x700
01730d9c  mov x3,xzr
01730da0  mov x5,xzr
01730da4  bl 0x019ab4e0
01730da8  mov x19,x0
01730dac  ldr w8,[x19, #0x8]
01730db0  ldr x0,[x19]
01730db4  sub w8,w8,#0x3
01730db8  str w8,[x19, #0x8]
01730dbc  orr w1,wzr,#0xfffffffc
01730dc0  bl 0x0124c4d0
01730dc4  ldr w8,[x19, #0x8]
01730dc8  ldr x0,[x19]
01730dcc  str wzr,[x19, #0x8]
01730dd0  cmp w8,#0x1
01730dd4  b.lt 0x01730de0
01730dd8  mvn w1,w8
01730ddc  bl 0x0124c4d0
01730de0  ldr w8,[sp, #0x18]
01730de4  cmp w8,#0x1
01730de8  b.lt 0x01730df8
01730dec  ldr x0,[sp, #0x10]
01730df0  mvn w1,w8
01730df4  bl 0x0124c4d0
01730df8  ldr w8,[sp, #0x8]
01730dfc  cmp w8,#0x1
01730e00  b.lt 0x01730e10
01730e04  ldr x0,[sp]
01730e08  mvn w1,w8
01730e0c  bl 0x0124c4d0
01730e10  ldp x29,x30,[sp, #0x30]
01730e14  ldr x19,[sp, #0x20]
01730e18  add sp,sp,#0x40
01730e1c  ret
