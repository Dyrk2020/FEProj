// ===== case510-SkillHurtStrengthenUnitRef @ 016f5e0c =====
// existing function case510-SkillHurtStrengthenUnitRef
016f5e0c  sub sp,sp,#0x40
016f5e10  str x19,[sp, #0x20]
016f5e14  stp x29,x30,[sp, #0x30]
016f5e18  add x29,sp,#0x30
016f5e1c  adrp x1,0x174a000
016f5e20  add x1,x1,#0x87c
016f5e24  mov x19,x0
016f5e28  bl 0x0124ba40
016f5e2c  adrp x1,0x575d000
016f5e30  add x1,x1,#0xa06
016f5e34  mov x0,x19
016f5e38  str x19,[sp]
016f5e3c  bl 0x01251aa0
016f5e40  mov w8,#0x1
016f5e44  str w8,[sp, #0x8]
016f5e48  mov x0,sp
016f5e4c  bl 0x0174aa04
016f5e50  adrp x1,0x5768000
016f5e54  adrp x3,0x736d000
016f5e58  add x1,x1,#0x3e6
016f5e5c  add x3,x3,#0x101
016f5e60  add x0,sp,#0x10
016f5e64  mov x2,sp
016f5e68  bl 0x0189ce18
016f5e6c  adrp x1,0x5768000
016f5e70  adrp x2,0x189c000
016f5e74  adrp x4,0x189c000
016f5e78  add x1,x1,#0xa56
016f5e7c  add x2,x2,#0xbec
016f5e80  add x4,x4,#0xbf4
016f5e84  add x0,sp,#0x10
016f5e88  mov x3,xzr
016f5e8c  mov x5,xzr
016f5e90  bl 0x0189ca04
016f5e94  adrp x1,0x5768000
016f5e98  adrp x2,0x189c000
016f5e9c  adrp x4,0x189c000
016f5ea0  add x1,x1,#0x401
016f5ea4  add x2,x2,#0xdf8
016f5ea8  add x4,x4,#0xe00
016f5eac  mov x3,xzr
016f5eb0  mov x5,xzr
016f5eb4  bl 0x0189cc10
016f5eb8  adrp x1,0x5768000
016f5ebc  adrp x2,0x189c000
016f5ec0  adrp x4,0x189c000
016f5ec4  add x1,x1,#0x40a
016f5ec8  add x2,x2,#0xe08
016f5ecc  add x4,x4,#0xe10
016f5ed0  mov x3,xzr
016f5ed4  mov x5,xzr
016f5ed8  bl 0x0189cc10
016f5edc  mov x19,x0
016f5ee0  ldr w8,[x19, #0x8]
016f5ee4  ldr x0,[x19]
016f5ee8  sub w8,w8,#0x3
016f5eec  str w8,[x19, #0x8]
016f5ef0  orr w1,wzr,#0xfffffffc
016f5ef4  bl 0x0124c4d0
016f5ef8  ldr w8,[x19, #0x8]
016f5efc  ldr x0,[x19]
016f5f00  str wzr,[x19, #0x8]
016f5f04  cmp w8,#0x1
016f5f08  b.lt 0x016f5f14
016f5f0c  mvn w1,w8
016f5f10  bl 0x0124c4d0
016f5f14  ldr w8,[sp, #0x18]
016f5f18  cmp w8,#0x1
016f5f1c  b.lt 0x016f5f2c
016f5f20  ldr x0,[sp, #0x10]
016f5f24  mvn w1,w8
016f5f28  bl 0x0124c4d0
016f5f2c  ldr w8,[sp, #0x8]
016f5f30  cmp w8,#0x1
016f5f34  b.lt 0x016f5f44
016f5f38  ldr x0,[sp]
016f5f3c  mvn w1,w8
016f5f40  bl 0x0124c4d0
016f5f44  ldp x29,x30,[sp, #0x30]
016f5f48  ldr x19,[sp, #0x20]
016f5f4c  add sp,sp,#0x40
016f5f50  ret
