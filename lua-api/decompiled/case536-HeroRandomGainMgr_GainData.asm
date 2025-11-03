// ===== case536-HeroRandomGainMgr_GainData @ 016f9f24 =====
// existing function case536-HeroRandomGainMgr_GainData
016f9f24  sub sp,sp,#0x40
016f9f28  str x19,[sp, #0x20]
016f9f2c  stp x29,x30,[sp, #0x30]
016f9f30  add x29,sp,#0x30
016f9f34  adrp x1,0x174a000
016f9f38  add x1,x1,#0x87c
016f9f3c  mov x19,x0
016f9f40  bl 0x0124ba40
016f9f44  adrp x1,0x575d000
016f9f48  add x1,x1,#0xa06
016f9f4c  mov x0,x19
016f9f50  str x19,[sp]
016f9f54  bl 0x01251aa0
016f9f58  mov w8,#0x1
016f9f5c  str w8,[sp, #0x8]
016f9f60  mov x0,sp
016f9f64  bl 0x0174aa04
016f9f68  adrp x1,0x5768000
016f9f6c  adrp x3,0x736d000
016f9f70  add x1,x1,#0xc6d
016f9f74  add x3,x3,#0x101
016f9f78  add x0,sp,#0x10
016f9f7c  mov x2,sp
016f9f80  bl 0x018b3a2c
016f9f84  adrp x1,0x5761000
016f9f88  adrp x2,0x18b3000
016f9f8c  adrp x4,0x18b3000
016f9f90  add x1,x1,#0x469
016f9f94  add x2,x2,#0x684
016f9f98  add x4,x4,#0x68c
016f9f9c  add x0,sp,#0x10
016f9fa0  mov x3,xzr
016f9fa4  mov x5,xzr
016f9fa8  bl 0x018b349c
016f9fac  adrp x1,0x575b000
016f9fb0  adrp x2,0x18b3000
016f9fb4  adrp x4,0x18b3000
016f9fb8  add x1,x1,#0x2f8
016f9fbc  add x2,x2,#0x6a8
016f9fc0  add x4,x4,#0x6b0
016f9fc4  mov x3,xzr
016f9fc8  mov x5,xzr
016f9fcc  bl 0x018b349c
016f9fd0  adrp x1,0x5768000
016f9fd4  adrp x2,0x18b3000
016f9fd8  adrp x4,0x18b3000
016f9fdc  add x1,x1,#0xc88
016f9fe0  add x2,x2,#0x6cc
016f9fe4  add x4,x4,#0x6d4
016f9fe8  mov x3,xzr
016f9fec  mov x5,xzr
016f9ff0  bl 0x018b349c
016f9ff4  adrp x1,0x5768000
016f9ff8  adrp x2,0x18b3000
016f9ffc  adrp x4,0x18b3000
016fa000  add x1,x1,#0xc94
016fa004  add x2,x2,#0x6f0
016fa008  add x4,x4,#0x6f8
016fa00c  mov x3,xzr
016fa010  mov x5,xzr
016fa014  bl 0x018b349c
016fa018  adrp x1,0x5768000
016fa01c  adrp x2,0x18b3000
016fa020  adrp x4,0x18b3000
016fa024  add x1,x1,#0xca2
016fa028  add x2,x2,#0x714
016fa02c  add x4,x4,#0x71c
016fa030  mov x3,xzr
016fa034  mov x5,xzr
016fa038  bl 0x018b349c
016fa03c  adrp x1,0x5768000
016fa040  adrp x2,0x18b3000
016fa044  adrp x4,0x18b3000
016fa048  add x1,x1,#0xcb2
016fa04c  add x2,x2,#0x994
016fa050  add x4,x4,#0x99c
016fa054  mov x3,xzr
016fa058  mov x5,xzr
016fa05c  bl 0x018b37ac
016fa060  mov x19,x0
016fa064  ldr w8,[x19, #0x8]
016fa068  ldr x0,[x19]
016fa06c  sub w8,w8,#0x3
016fa070  str w8,[x19, #0x8]
016fa074  orr w1,wzr,#0xfffffffc
016fa078  bl 0x0124c4d0
016fa07c  ldr w8,[x19, #0x8]
016fa080  ldr x0,[x19]
016fa084  str wzr,[x19, #0x8]
016fa088  cmp w8,#0x1
016fa08c  b.lt 0x016fa098
016fa090  mvn w1,w8
016fa094  bl 0x0124c4d0
016fa098  ldr w8,[sp, #0x18]
016fa09c  cmp w8,#0x1
016fa0a0  b.lt 0x016fa0b0
016fa0a4  ldr x0,[sp, #0x10]
016fa0a8  mvn w1,w8
016fa0ac  bl 0x0124c4d0
016fa0b0  ldr w8,[sp, #0x8]
016fa0b4  cmp w8,#0x1
016fa0b8  b.lt 0x016fa0c8
016fa0bc  ldr x0,[sp]
016fa0c0  mvn w1,w8
016fa0c4  bl 0x0124c4d0
016fa0c8  ldp x29,x30,[sp, #0x30]
016fa0cc  ldr x19,[sp, #0x20]
016fa0d0  add sp,sp,#0x40
016fa0d4  ret
