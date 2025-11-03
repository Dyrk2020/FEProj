// ===== case816-FlowObject @ 01736ee0 =====
// existing function case816-FlowObject
01736ee0  sub sp,sp,#0x40
01736ee4  str x19,[sp, #0x20]
01736ee8  stp x29,x30,[sp, #0x30]
01736eec  add x29,sp,#0x30
01736ef0  adrp x1,0x174a000
01736ef4  add x1,x1,#0x87c
01736ef8  mov x19,x0
01736efc  bl 0x0124ba40
01736f00  adrp x1,0x575d000
01736f04  add x1,x1,#0xa06
01736f08  mov x0,x19
01736f0c  str x19,[sp]
01736f10  bl 0x01251aa0
01736f14  mov w8,#0x1
01736f18  str w8,[sp, #0x8]
01736f1c  mov x0,sp
01736f20  bl 0x0174aa04
01736f24  adrp x1,0x5772000
01736f28  adrp x3,0x736d000
01736f2c  add x1,x1,#0x44f
01736f30  add x3,x3,#0x101
01736f34  add x0,sp,#0x10
01736f38  mov x2,sp
01736f3c  bl 0x019c4cac
01736f40  adrp x1,0x57f9000
01736f44  adrp x2,0x19c4000
01736f48  adrp x4,0x19c4000
01736f4c  add x1,x1,#0xcf2
01736f50  add x2,x2,#0xc9c
01736f54  add x4,x4,#0xca4
01736f58  add x0,sp,#0x10
01736f5c  mov x3,xzr
01736f60  mov x5,xzr
01736f64  bl 0x019c4ab4
01736f68  mov x19,x0
01736f6c  ldr w8,[x19, #0x8]
01736f70  ldr x0,[x19]
01736f74  sub w8,w8,#0x3
01736f78  str w8,[x19, #0x8]
01736f7c  orr w1,wzr,#0xfffffffc
01736f80  bl 0x0124c4d0
01736f84  ldr w8,[x19, #0x8]
01736f88  ldr x0,[x19]
01736f8c  str wzr,[x19, #0x8]
01736f90  cmp w8,#0x1
01736f94  b.lt 0x01736fa0
01736f98  mvn w1,w8
01736f9c  bl 0x0124c4d0
01736fa0  ldr w8,[sp, #0x18]
01736fa4  cmp w8,#0x1
01736fa8  b.lt 0x01736fb8
01736fac  ldr x0,[sp, #0x10]
01736fb0  mvn w1,w8
01736fb4  bl 0x0124c4d0
01736fb8  ldr w8,[sp, #0x8]
01736fbc  cmp w8,#0x1
01736fc0  b.lt 0x01736fd0
01736fc4  ldr x0,[sp]
01736fc8  mvn w1,w8
01736fcc  bl 0x0124c4d0
01736fd0  ldp x29,x30,[sp, #0x30]
01736fd4  ldr x19,[sp, #0x20]
01736fd8  add sp,sp,#0x40
01736fdc  ret
