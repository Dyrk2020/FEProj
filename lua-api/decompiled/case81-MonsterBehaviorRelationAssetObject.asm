// ===== case81-MonsterBehaviorRelationAssetObject @ 01699d88 =====
// existing function case81-MonsterBehaviorRelationAssetObject
01699d88  sub sp,sp,#0x40
01699d8c  str x19,[sp, #0x20]
01699d90  stp x29,x30,[sp, #0x30]
01699d94  add x29,sp,#0x30
01699d98  adrp x1,0x174a000
01699d9c  add x1,x1,#0x87c
01699da0  mov x19,x0
01699da4  bl 0x0124ba40
01699da8  adrp x1,0x575d000
01699dac  add x1,x1,#0xa06
01699db0  mov x0,x19
01699db4  str x19,[sp]
01699db8  bl 0x01251aa0
01699dbc  mov w8,#0x1
01699dc0  str w8,[sp, #0x8]
01699dc4  mov x0,sp
01699dc8  bl 0x0174aa04
01699dcc  adrp x1,0x575e000
01699dd0  adrp x3,0x736d000
01699dd4  add x1,x1,#0xf40
01699dd8  add x3,x3,#0x101
01699ddc  add x0,sp,#0x10
01699de0  mov x2,sp
01699de4  bl 0x0177e3c0
01699de8  adrp x1,0x575d000
01699dec  adrp x2,0x177e000
01699df0  adrp x4,0x177e000
01699df4  add x1,x1,#0xa00
01699df8  add x2,x2,#0x3b0
01699dfc  add x4,x4,#0x3b8
01699e00  add x0,sp,#0x10
01699e04  mov x3,xzr
01699e08  mov x5,xzr
01699e0c  bl 0x0177e1c8
01699e10  mov x19,x0
01699e14  ldr w8,[x19, #0x8]
01699e18  ldr x0,[x19]
01699e1c  sub w8,w8,#0x3
01699e20  str w8,[x19, #0x8]
01699e24  orr w1,wzr,#0xfffffffc
01699e28  bl 0x0124c4d0
01699e2c  ldr w8,[x19, #0x8]
01699e30  ldr x0,[x19]
01699e34  str wzr,[x19, #0x8]
01699e38  cmp w8,#0x1
01699e3c  b.lt 0x01699e48
01699e40  mvn w1,w8
01699e44  bl 0x0124c4d0
01699e48  ldr w8,[sp, #0x18]
01699e4c  cmp w8,#0x1
01699e50  b.lt 0x01699e60
01699e54  ldr x0,[sp, #0x10]
01699e58  mvn w1,w8
01699e5c  bl 0x0124c4d0
01699e60  ldr w8,[sp, #0x8]
01699e64  cmp w8,#0x1
01699e68  b.lt 0x01699e78
01699e6c  ldr x0,[sp]
01699e70  mvn w1,w8
01699e74  bl 0x0124c4d0
01699e78  ldp x29,x30,[sp, #0x30]
01699e7c  ldr x19,[sp, #0x20]
01699e80  add sp,sp,#0x40
01699e84  ret
