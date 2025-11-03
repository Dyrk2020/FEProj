// ===== case705-ActorComponentTrait @ 01721d38 =====
// existing function case705-ActorComponentTrait
01721d38  sub sp,sp,#0x40
01721d3c  str x19,[sp, #0x20]
01721d40  stp x29,x30,[sp, #0x30]
01721d44  add x29,sp,#0x30
01721d48  adrp x1,0x174a000
01721d4c  add x1,x1,#0x87c
01721d50  mov x19,x0
01721d54  bl 0x0124ba40
01721d58  adrp x1,0x575d000
01721d5c  add x1,x1,#0xa06
01721d60  mov x0,x19
01721d64  str x19,[sp]
01721d68  bl 0x01251aa0
01721d6c  mov w8,#0x1
01721d70  str w8,[sp, #0x8]
01721d74  mov x0,sp
01721d78  bl 0x0174aa04
01721d7c  adrp x1,0x576f000
01721d80  adrp x3,0x736d000
01721d84  add x1,x1,#0x7ef
01721d88  add x3,x3,#0x101
01721d8c  add x0,sp,#0x10
01721d90  mov x2,sp
01721d94  bl 0x01966d54
01721d98  adrp x1,0x576f000
01721d9c  adrp x2,0x1966000
01721da0  adrp x4,0x1966000
01721da4  add x1,x1,#0x803
01721da8  add x2,x2,#0xd30
01721dac  add x4,x4,#0xd38
01721db0  add x0,sp,#0x10
01721db4  mov x3,xzr
01721db8  mov x5,xzr
01721dbc  bl 0x01966b48
01721dc0  mov x19,x0
01721dc4  ldr w8,[x19, #0x8]
01721dc8  ldr x0,[x19]
01721dcc  sub w8,w8,#0x3
01721dd0  str w8,[x19, #0x8]
01721dd4  orr w1,wzr,#0xfffffffc
01721dd8  bl 0x0124c4d0
01721ddc  ldr w8,[x19, #0x8]
01721de0  ldr x0,[x19]
01721de4  str wzr,[x19, #0x8]
01721de8  cmp w8,#0x1
01721dec  b.lt 0x01721df8
01721df0  mvn w1,w8
01721df4  bl 0x0124c4d0
01721df8  ldr w8,[sp, #0x18]
01721dfc  cmp w8,#0x1
01721e00  b.lt 0x01721e10
01721e04  ldr x0,[sp, #0x10]
01721e08  mvn w1,w8
01721e0c  bl 0x0124c4d0
01721e10  ldr w8,[sp, #0x8]
01721e14  cmp w8,#0x1
01721e18  b.lt 0x01721e28
01721e1c  ldr x0,[sp]
01721e20  mvn w1,w8
01721e24  bl 0x0124c4d0
01721e28  ldp x29,x30,[sp, #0x30]
01721e2c  ldr x19,[sp, #0x20]
01721e30  add sp,sp,#0x40
01721e34  ret
