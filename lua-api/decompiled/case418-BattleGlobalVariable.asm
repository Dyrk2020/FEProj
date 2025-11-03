// ===== case418-BattleGlobalVariable @ 016e4e24 =====
// existing function case418-BattleGlobalVariable
016e4e24  sub sp,sp,#0x40
016e4e28  str x19,[sp, #0x20]
016e4e2c  stp x29,x30,[sp, #0x30]
016e4e30  add x29,sp,#0x30
016e4e34  adrp x1,0x174a000
016e4e38  add x1,x1,#0x87c
016e4e3c  mov x19,x0
016e4e40  bl 0x0124ba40
016e4e44  adrp x1,0x575d000
016e4e48  add x1,x1,#0xa06
016e4e4c  mov x0,x19
016e4e50  str x19,[sp]
016e4e54  bl 0x01251aa0
016e4e58  mov w8,#0x1
016e4e5c  str w8,[sp, #0x8]
016e4e60  mov x0,sp
016e4e64  bl 0x0174aa04
016e4e68  adrp x1,0x5766000
016e4e6c  adrp x3,0x736d000
016e4e70  add x1,x1,#0x477
016e4e74  add x3,x3,#0x101
016e4e78  add x0,sp,#0x10
016e4e7c  mov x2,sp
016e4e80  bl 0x0185be18
016e4e84  adrp x1,0x5766000
016e4e88  adrp x2,0x185b000
016e4e8c  adrp x4,0x185b000
016e4e90  add x1,x1,#0x48c
016e4e94  add x2,x2,#0xdf4
016e4e98  add x4,x4,#0xdfc
016e4e9c  add x0,sp,#0x10
016e4ea0  mov x3,xzr
016e4ea4  mov x5,xzr
016e4ea8  bl 0x0185bc0c
016e4eac  mov x19,x0
016e4eb0  ldr w8,[x19, #0x8]
016e4eb4  ldr x0,[x19]
016e4eb8  sub w8,w8,#0x3
016e4ebc  str w8,[x19, #0x8]
016e4ec0  orr w1,wzr,#0xfffffffc
016e4ec4  bl 0x0124c4d0
016e4ec8  ldr w8,[x19, #0x8]
016e4ecc  ldr x0,[x19]
016e4ed0  str wzr,[x19, #0x8]
016e4ed4  cmp w8,#0x1
016e4ed8  b.lt 0x016e4ee4
016e4edc  mvn w1,w8
016e4ee0  bl 0x0124c4d0
016e4ee4  ldr w8,[sp, #0x18]
016e4ee8  cmp w8,#0x1
016e4eec  b.lt 0x016e4efc
016e4ef0  ldr x0,[sp, #0x10]
016e4ef4  mvn w1,w8
016e4ef8  bl 0x0124c4d0
016e4efc  ldr w8,[sp, #0x8]
016e4f00  cmp w8,#0x1
016e4f04  b.lt 0x016e4f14
016e4f08  ldr x0,[sp]
016e4f0c  mvn w1,w8
016e4f10  bl 0x0124c4d0
016e4f14  ldp x29,x30,[sp, #0x30]
016e4f18  ldr x19,[sp, #0x20]
016e4f1c  add sp,sp,#0x40
016e4f20  ret
