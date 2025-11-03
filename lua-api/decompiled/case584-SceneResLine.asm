// ===== case584-SceneResLine @ 01703df4 =====
// existing function case584-SceneResLine
01703df4  sub sp,sp,#0x40
01703df8  str x19,[sp, #0x20]
01703dfc  stp x29,x30,[sp, #0x30]
01703e00  add x29,sp,#0x30
01703e04  adrp x1,0x174a000
01703e08  add x1,x1,#0x87c
01703e0c  mov x19,x0
01703e10  bl 0x0124ba40
01703e14  adrp x1,0x575d000
01703e18  add x1,x1,#0xa06
01703e1c  mov x0,x19
01703e20  str x19,[sp]
01703e24  bl 0x01251aa0
01703e28  mov w8,#0x1
01703e2c  str w8,[sp, #0x8]
01703e30  mov x0,sp
01703e34  bl 0x0174aa04
01703e38  adrp x1,0x576a000
01703e3c  adrp x3,0x736d000
01703e40  add x1,x1,#0x24
01703e44  add x3,x3,#0x101
01703e48  add x0,sp,#0x10
01703e4c  mov x2,sp
01703e50  bl 0x018e8348
01703e54  adrp x1,0x59b1000
01703e58  adrp x2,0x18e8000
01703e5c  add x1,x1,#0x7ea
01703e60  add x2,x2,#0x338
01703e64  add x0,sp,#0x10
01703e68  mov x3,xzr
01703e6c  mov x4,xzr
01703e70  mov x5,xzr
01703e74  bl 0x018e8150
01703e78  adrp x1,0x594d000
01703e7c  adrp x2,0x18e8000
01703e80  add x1,x1,#0xd01
01703e84  add x2,x2,#0x340
01703e88  mov x3,xzr
01703e8c  mov x4,xzr
01703e90  mov x5,xzr
01703e94  bl 0x018e8150
01703e98  mov x19,x0
01703e9c  ldr w8,[x19, #0x8]
01703ea0  ldr x0,[x19]
01703ea4  sub w8,w8,#0x3
01703ea8  str w8,[x19, #0x8]
01703eac  orr w1,wzr,#0xfffffffc
01703eb0  bl 0x0124c4d0
01703eb4  ldr w8,[x19, #0x8]
01703eb8  ldr x0,[x19]
01703ebc  str wzr,[x19, #0x8]
01703ec0  cmp w8,#0x1
01703ec4  b.lt 0x01703ed0
01703ec8  mvn w1,w8
01703ecc  bl 0x0124c4d0
01703ed0  ldr w8,[sp, #0x18]
01703ed4  cmp w8,#0x1
01703ed8  b.lt 0x01703ee8
01703edc  ldr x0,[sp, #0x10]
01703ee0  mvn w1,w8
01703ee4  bl 0x0124c4d0
01703ee8  ldr w8,[sp, #0x8]
01703eec  cmp w8,#0x1
01703ef0  b.lt 0x01703f00
01703ef4  ldr x0,[sp]
01703ef8  mvn w1,w8
01703efc  bl 0x0124c4d0
01703f00  ldp x29,x30,[sp, #0x30]
01703f04  ldr x19,[sp, #0x20]
01703f08  add sp,sp,#0x40
01703f0c  ret
