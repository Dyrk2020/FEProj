// ===== case718-SkillStrengthenWeightQualityConfig @ 01723e00 =====
// existing function case718-SkillStrengthenWeightQualityConfig
01723e00  sub sp,sp,#0x40
01723e04  str x19,[sp, #0x20]
01723e08  stp x29,x30,[sp, #0x30]
01723e0c  add x29,sp,#0x30
01723e10  adrp x1,0x174a000
01723e14  add x1,x1,#0x87c
01723e18  mov x19,x0
01723e1c  bl 0x0124ba40
01723e20  adrp x1,0x575d000
01723e24  add x1,x1,#0xa06
01723e28  mov x0,x19
01723e2c  str x19,[sp]
01723e30  bl 0x01251aa0
01723e34  mov w8,#0x1
01723e38  str w8,[sp, #0x8]
01723e3c  mov x0,sp
01723e40  bl 0x0174aa04
01723e44  adrp x1,0x576f000
01723e48  adrp x3,0x736d000
01723e4c  add x1,x1,#0xadb
01723e50  add x3,x3,#0x101
01723e54  add x0,sp,#0x10
01723e58  mov x2,sp
01723e5c  bl 0x01971ce0
01723e60  adrp x1,0x576f000
01723e64  adrp x2,0x1971000
01723e68  adrp x4,0x1971000
01723e6c  add x1,x1,#0xafe
01723e70  add x2,x2,#0xcb0
01723e74  add x4,x4,#0xcb8
01723e78  add x0,sp,#0x10
01723e7c  mov x3,xzr
01723e80  mov x5,xzr
01723e84  bl 0x01971ac8
01723e88  adrp x1,0x576f000
01723e8c  adrp x2,0x1971000
01723e90  adrp x4,0x1971000
01723e94  add x1,x1,#0xb0f
01723e98  add x2,x2,#0xcc0
01723e9c  add x4,x4,#0xcc8
01723ea0  mov x3,xzr
01723ea4  mov x5,xzr
01723ea8  bl 0x01971ac8
01723eac  adrp x1,0x576f000
01723eb0  adrp x2,0x1971000
01723eb4  adrp x4,0x1971000
01723eb8  add x1,x1,#0xb1f
01723ebc  add x2,x2,#0xcd0
01723ec0  add x4,x4,#0xcd8
01723ec4  mov x3,xzr
01723ec8  mov x5,xzr
01723ecc  bl 0x01971ac8
01723ed0  mov x19,x0
01723ed4  ldr w8,[x19, #0x8]
01723ed8  ldr x0,[x19]
01723edc  sub w8,w8,#0x3
01723ee0  str w8,[x19, #0x8]
01723ee4  orr w1,wzr,#0xfffffffc
01723ee8  bl 0x0124c4d0
01723eec  ldr w8,[x19, #0x8]
01723ef0  ldr x0,[x19]
01723ef4  str wzr,[x19, #0x8]
01723ef8  cmp w8,#0x1
01723efc  b.lt 0x01723f08
01723f00  mvn w1,w8
01723f04  bl 0x0124c4d0
01723f08  ldr w8,[sp, #0x18]
01723f0c  cmp w8,#0x1
01723f10  b.lt 0x01723f20
01723f14  ldr x0,[sp, #0x10]
01723f18  mvn w1,w8
01723f1c  bl 0x0124c4d0
01723f20  ldr w8,[sp, #0x8]
01723f24  cmp w8,#0x1
01723f28  b.lt 0x01723f38
01723f2c  ldr x0,[sp]
01723f30  mvn w1,w8
01723f34  bl 0x0124c4d0
01723f38  ldp x29,x30,[sp, #0x30]
01723f3c  ldr x19,[sp, #0x20]
01723f40  add sp,sp,#0x40
01723f44  ret
