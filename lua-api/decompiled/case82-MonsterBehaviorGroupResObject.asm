// ===== case82-MonsterBehaviorGroupResObject @ 01699ee0 =====
// existing function case82-MonsterBehaviorGroupResObject
01699ee0  sub sp,sp,#0x40
01699ee4  str x19,[sp, #0x20]
01699ee8  stp x29,x30,[sp, #0x30]
01699eec  add x29,sp,#0x30
01699ef0  adrp x1,0x174a000
01699ef4  add x1,x1,#0x87c
01699ef8  mov x19,x0
01699efc  bl 0x0124ba40
01699f00  adrp x1,0x575d000
01699f04  add x1,x1,#0xa06
01699f08  mov x0,x19
01699f0c  str x19,[sp]
01699f10  bl 0x01251aa0
01699f14  mov w8,#0x1
01699f18  str w8,[sp, #0x8]
01699f1c  mov x0,sp
01699f20  bl 0x0174aa04
01699f24  adrp x1,0x575e000
01699f28  adrp x3,0x736d000
01699f2c  add x1,x1,#0xf63
01699f30  add x3,x3,#0x101
01699f34  add x0,sp,#0x10
01699f38  mov x2,sp
01699f3c  bl 0x0177eb9c
01699f40  adrp x1,0x575e000
01699f44  adrp x2,0x177e000
01699f48  adrp x4,0x177e000
01699f4c  add x1,x1,#0xf81
01699f50  add x2,x2,#0xb8c
01699f54  add x4,x4,#0xb94
01699f58  add x0,sp,#0x10
01699f5c  mov x3,xzr
01699f60  mov x5,xzr
01699f64  bl 0x0177e9a4
01699f68  mov x19,x0
01699f6c  ldr w8,[x19, #0x8]
01699f70  ldr x0,[x19]
01699f74  sub w8,w8,#0x3
01699f78  str w8,[x19, #0x8]
01699f7c  orr w1,wzr,#0xfffffffc
01699f80  bl 0x0124c4d0
01699f84  ldr w8,[x19, #0x8]
01699f88  ldr x0,[x19]
01699f8c  str wzr,[x19, #0x8]
01699f90  cmp w8,#0x1
01699f94  b.lt 0x01699fa0
01699f98  mvn w1,w8
01699f9c  bl 0x0124c4d0
01699fa0  ldr w8,[sp, #0x18]
01699fa4  cmp w8,#0x1
01699fa8  b.lt 0x01699fb8
01699fac  ldr x0,[sp, #0x10]
01699fb0  mvn w1,w8
01699fb4  bl 0x0124c4d0
01699fb8  ldr w8,[sp, #0x8]
01699fbc  cmp w8,#0x1
01699fc0  b.lt 0x01699fd0
01699fc4  ldr x0,[sp]
01699fc8  mvn w1,w8
01699fcc  bl 0x0124c4d0
01699fd0  ldp x29,x30,[sp, #0x30]
01699fd4  ldr x19,[sp, #0x20]
01699fd8  add sp,sp,#0x40
01699fdc  ret
