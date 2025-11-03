// ===== case63-RuinWaveSkillData @ 01696dfc =====
// existing function case63-RuinWaveSkillData
01696dfc  sub sp,sp,#0x40
01696e00  str x19,[sp, #0x20]
01696e04  stp x29,x30,[sp, #0x30]
01696e08  add x29,sp,#0x30
01696e0c  adrp x1,0x174a000
01696e10  add x1,x1,#0x87c
01696e14  mov x19,x0
01696e18  bl 0x0124ba40
01696e1c  adrp x1,0x575d000
01696e20  add x1,x1,#0xa06
01696e24  mov x0,x19
01696e28  str x19,[sp]
01696e2c  bl 0x01251aa0
01696e30  mov w8,#0x1
01696e34  str w8,[sp, #0x8]
01696e38  mov x0,sp
01696e3c  bl 0x0174aa04
01696e40  adrp x1,0x575e000
01696e44  adrp x3,0x736d000
01696e48  add x1,x1,#0xbc6
01696e4c  add x3,x3,#0x101
01696e50  add x0,sp,#0x10
01696e54  mov x2,sp
01696e58  bl 0x017738f4
01696e5c  adrp x1,0x575e000
01696e60  adrp x2,0x1773000
01696e64  adrp x4,0x1773000
01696e68  add x1,x1,#0xbd8
01696e6c  add x2,x2,#0x8e4
01696e70  add x4,x4,#0x8ec
01696e74  add x0,sp,#0x10
01696e78  mov x3,xzr
01696e7c  mov x5,xzr
01696e80  bl 0x017736fc
01696e84  mov x19,x0
01696e88  ldr w8,[x19, #0x8]
01696e8c  ldr x0,[x19]
01696e90  sub w8,w8,#0x3
01696e94  str w8,[x19, #0x8]
01696e98  orr w1,wzr,#0xfffffffc
01696e9c  bl 0x0124c4d0
01696ea0  ldr w8,[x19, #0x8]
01696ea4  ldr x0,[x19]
01696ea8  str wzr,[x19, #0x8]
01696eac  cmp w8,#0x1
01696eb0  b.lt 0x01696ebc
01696eb4  mvn w1,w8
01696eb8  bl 0x0124c4d0
01696ebc  ldr w8,[sp, #0x18]
01696ec0  cmp w8,#0x1
01696ec4  b.lt 0x01696ed4
01696ec8  ldr x0,[sp, #0x10]
01696ecc  mvn w1,w8
01696ed0  bl 0x0124c4d0
01696ed4  ldr w8,[sp, #0x8]
01696ed8  cmp w8,#0x1
01696edc  b.lt 0x01696eec
01696ee0  ldr x0,[sp]
01696ee4  mvn w1,w8
01696ee8  bl 0x0124c4d0
01696eec  ldp x29,x30,[sp, #0x30]
01696ef0  ldr x19,[sp, #0x20]
01696ef4  add sp,sp,#0x40
01696ef8  ret
