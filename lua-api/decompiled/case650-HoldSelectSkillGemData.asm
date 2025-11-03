// ===== case650-HoldSelectSkillGemData @ 01714e6c =====
// existing function case650-HoldSelectSkillGemData
01714e6c  sub sp,sp,#0x40
01714e70  str x19,[sp, #0x20]
01714e74  stp x29,x30,[sp, #0x30]
01714e78  add x29,sp,#0x30
01714e7c  adrp x1,0x174a000
01714e80  add x1,x1,#0x87c
01714e84  mov x19,x0
01714e88  bl 0x0124ba40
01714e8c  adrp x1,0x575d000
01714e90  add x1,x1,#0xa06
01714e94  mov x0,x19
01714e98  str x19,[sp]
01714e9c  bl 0x01251aa0
01714ea0  mov w8,#0x1
01714ea4  str w8,[sp, #0x8]
01714ea8  mov x0,sp
01714eac  bl 0x0174aa04
01714eb0  adrp x1,0x576c000
01714eb4  adrp x3,0x736d000
01714eb8  add x1,x1,#0x9f8
01714ebc  add x3,x3,#0x101
01714ec0  add x0,sp,#0x10
01714ec4  mov x2,sp
01714ec8  bl 0x01927500
01714ecc  adrp x1,0x576c000
01714ed0  adrp x2,0x1927000
01714ed4  adrp x4,0x1927000
01714ed8  add x1,x1,#0xa0f
01714edc  add x2,x2,#0x2e8
01714ee0  add x4,x4,#0x2f0
01714ee4  add x0,sp,#0x10
01714ee8  mov x3,xzr
01714eec  mov x5,xzr
01714ef0  bl 0x01927100
01714ef4  adrp x1,0x575b000
01714ef8  adrp x2,0x1927000
01714efc  adrp x4,0x1927000
01714f00  add x1,x1,#0x37b
01714f04  add x2,x2,#0x4e0
01714f08  add x4,x4,#0x4e8
01714f0c  mov x3,xzr
01714f10  mov x5,xzr
01714f14  bl 0x019272f8
01714f18  adrp x1,0x575f000
01714f1c  adrp x2,0x1927000
01714f20  adrp x4,0x1927000
01714f24  add x1,x1,#0x98
01714f28  add x2,x2,#0x4f0
01714f2c  add x4,x4,#0x4f8
01714f30  mov x3,xzr
01714f34  mov x5,xzr
01714f38  bl 0x019272f8
01714f3c  mov x19,x0
01714f40  ldr w8,[x19, #0x8]
01714f44  ldr x0,[x19]
01714f48  sub w8,w8,#0x3
01714f4c  str w8,[x19, #0x8]
01714f50  orr w1,wzr,#0xfffffffc
01714f54  bl 0x0124c4d0
01714f58  ldr w8,[x19, #0x8]
01714f5c  ldr x0,[x19]
01714f60  str wzr,[x19, #0x8]
01714f64  cmp w8,#0x1
01714f68  b.lt 0x01714f74
01714f6c  mvn w1,w8
01714f70  bl 0x0124c4d0
01714f74  ldr w8,[sp, #0x18]
01714f78  cmp w8,#0x1
01714f7c  b.lt 0x01714f8c
01714f80  ldr x0,[sp, #0x10]
01714f84  mvn w1,w8
01714f88  bl 0x0124c4d0
01714f8c  ldr w8,[sp, #0x8]
01714f90  cmp w8,#0x1
01714f94  b.lt 0x01714fa4
01714f98  ldr x0,[sp]
01714f9c  mvn w1,w8
01714fa0  bl 0x0124c4d0
01714fa4  ldp x29,x30,[sp, #0x30]
01714fa8  ldr x19,[sp, #0x20]
01714fac  add sp,sp,#0x40
01714fb0  ret
