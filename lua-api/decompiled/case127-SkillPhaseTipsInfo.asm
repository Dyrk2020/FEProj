// ===== case127-SkillPhaseTipsInfo @ 016a1dbc =====
// existing function case127-SkillPhaseTipsInfo
016a1dbc  sub sp,sp,#0x40
016a1dc0  str x19,[sp, #0x20]
016a1dc4  stp x29,x30,[sp, #0x30]
016a1dc8  add x29,sp,#0x30
016a1dcc  adrp x1,0x174a000
016a1dd0  add x1,x1,#0x87c
016a1dd4  mov x19,x0
016a1dd8  bl 0x0124ba40
016a1ddc  adrp x1,0x575d000
016a1de0  add x1,x1,#0xa06
016a1de4  mov x0,x19
016a1de8  str x19,[sp]
016a1dec  bl 0x01251aa0
016a1df0  mov w8,#0x1
016a1df4  str w8,[sp, #0x8]
016a1df8  mov x0,sp
016a1dfc  bl 0x0174aa04
016a1e00  adrp x1,0x575f000
016a1e04  adrp x3,0x736d000
016a1e08  add x1,x1,#0xce3
016a1e0c  add x3,x3,#0x101
016a1e10  add x0,sp,#0x10
016a1e14  mov x2,sp
016a1e18  bl 0x01794fd8
016a1e1c  adrp x1,0x575f000
016a1e20  adrp x2,0x1794000
016a1e24  adrp x4,0x1794000
016a1e28  add x1,x1,#0xcf6
016a1e2c  add x2,x2,#0xdb0
016a1e30  add x4,x4,#0xdb8
016a1e34  add x0,sp,#0x10
016a1e38  mov x3,xzr
016a1e3c  mov x5,xzr
016a1e40  bl 0x01794bc8
016a1e44  adrp x1,0x575f000
016a1e48  adrp x2,0x1794000
016a1e4c  adrp x4,0x1794000
016a1e50  add x1,x1,#0xd03
016a1e54  add x2,x2,#0xdc0
016a1e58  add x4,x4,#0xdc8
016a1e5c  mov x3,xzr
016a1e60  mov x5,xzr
016a1e64  bl 0x01794bc8
016a1e68  adrp x1,0x575f000
016a1e6c  adrp x2,0x1794000
016a1e70  adrp x4,0x1794000
016a1e74  add x1,x1,#0xd0d
016a1e78  add x2,x2,#0xfb8
016a1e7c  add x4,x4,#0xfc0
016a1e80  mov x3,xzr
016a1e84  mov x5,xzr
016a1e88  bl 0x01794dd0
016a1e8c  adrp x1,0x575f000
016a1e90  adrp x2,0x1794000
016a1e94  adrp x4,0x1794000
016a1e98  add x1,x1,#0xd1f
016a1e9c  add x2,x2,#0xfc8
016a1ea0  add x4,x4,#0xfd0
016a1ea4  mov x3,xzr
016a1ea8  mov x5,xzr
016a1eac  bl 0x01794dd0
016a1eb0  mov x19,x0
016a1eb4  ldr w8,[x19, #0x8]
016a1eb8  ldr x0,[x19]
016a1ebc  sub w8,w8,#0x3
016a1ec0  str w8,[x19, #0x8]
016a1ec4  orr w1,wzr,#0xfffffffc
016a1ec8  bl 0x0124c4d0
016a1ecc  ldr w8,[x19, #0x8]
016a1ed0  ldr x0,[x19]
016a1ed4  str wzr,[x19, #0x8]
016a1ed8  cmp w8,#0x1
016a1edc  b.lt 0x016a1ee8
016a1ee0  mvn w1,w8
016a1ee4  bl 0x0124c4d0
016a1ee8  ldr w8,[sp, #0x18]
016a1eec  cmp w8,#0x1
016a1ef0  b.lt 0x016a1f00
016a1ef4  ldr x0,[sp, #0x10]
016a1ef8  mvn w1,w8
016a1efc  bl 0x0124c4d0
016a1f00  ldr w8,[sp, #0x8]
016a1f04  cmp w8,#0x1
016a1f08  b.lt 0x016a1f18
016a1f0c  ldr x0,[sp]
016a1f10  mvn w1,w8
016a1f14  bl 0x0124c4d0
016a1f18  ldp x29,x30,[sp, #0x30]
016a1f1c  ldr x19,[sp, #0x20]
016a1f20  add sp,sp,#0x40
016a1f24  ret
