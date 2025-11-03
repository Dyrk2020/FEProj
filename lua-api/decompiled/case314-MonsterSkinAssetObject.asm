// ===== case314-MonsterSkinAssetObject @ 016c0ed4 =====
// existing function case314-MonsterSkinAssetObject
016c0ed4  sub sp,sp,#0x40
016c0ed8  str x19,[sp, #0x20]
016c0edc  stp x29,x30,[sp, #0x30]
016c0ee0  add x29,sp,#0x30
016c0ee4  adrp x1,0x174a000
016c0ee8  add x1,x1,#0x87c
016c0eec  mov x19,x0
016c0ef0  bl 0x0124ba40
016c0ef4  adrp x1,0x575d000
016c0ef8  add x1,x1,#0xa06
016c0efc  mov x0,x19
016c0f00  str x19,[sp]
016c0f04  bl 0x01251aa0
016c0f08  mov w8,#0x1
016c0f0c  str w8,[sp, #0x8]
016c0f10  mov x0,sp
016c0f14  bl 0x0174aa04
016c0f18  adrp x1,0x5762000
016c0f1c  adrp x3,0x736d000
016c0f20  add x1,x1,#0x9d5
016c0f24  add x3,x3,#0x101
016c0f28  add x0,sp,#0x10
016c0f2c  mov x2,sp
016c0f30  bl 0x017fc3a4
016c0f34  adrp x1,0x575d000
016c0f38  adrp x2,0x17fc000
016c0f3c  adrp x4,0x17fc000
016c0f40  add x1,x1,#0xa00
016c0f44  add x2,x2,#0x394
016c0f48  add x4,x4,#0x39c
016c0f4c  add x0,sp,#0x10
016c0f50  mov x3,xzr
016c0f54  mov x5,xzr
016c0f58  bl 0x017fc1ac
016c0f5c  mov x19,x0
016c0f60  ldr w8,[x19, #0x8]
016c0f64  ldr x0,[x19]
016c0f68  sub w8,w8,#0x3
016c0f6c  str w8,[x19, #0x8]
016c0f70  orr w1,wzr,#0xfffffffc
016c0f74  bl 0x0124c4d0
016c0f78  ldr w8,[x19, #0x8]
016c0f7c  ldr x0,[x19]
016c0f80  str wzr,[x19, #0x8]
016c0f84  cmp w8,#0x1
016c0f88  b.lt 0x016c0f94
016c0f8c  mvn w1,w8
016c0f90  bl 0x0124c4d0
016c0f94  ldr w8,[sp, #0x18]
016c0f98  cmp w8,#0x1
016c0f9c  b.lt 0x016c0fac
016c0fa0  ldr x0,[sp, #0x10]
016c0fa4  mvn w1,w8
016c0fa8  bl 0x0124c4d0
016c0fac  ldr w8,[sp, #0x8]
016c0fb0  cmp w8,#0x1
016c0fb4  b.lt 0x016c0fc4
016c0fb8  ldr x0,[sp]
016c0fbc  mvn w1,w8
016c0fc0  bl 0x0124c4d0
016c0fc4  ldp x29,x30,[sp, #0x30]
016c0fc8  ldr x19,[sp, #0x20]
016c0fcc  add sp,sp,#0x40
016c0fd0  ret
