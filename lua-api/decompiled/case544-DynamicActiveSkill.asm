// ===== case544-DynamicActiveSkill @ 016fbaf8 =====
// existing function case544-DynamicActiveSkill
016fbaf8  sub sp,sp,#0x40
016fbafc  str x19,[sp, #0x20]
016fbb00  stp x29,x30,[sp, #0x30]
016fbb04  add x29,sp,#0x30
016fbb08  adrp x1,0x174a000
016fbb0c  add x1,x1,#0x87c
016fbb10  mov x19,x0
016fbb14  bl 0x0124ba40
016fbb18  adrp x1,0x575d000
016fbb1c  add x1,x1,#0xa06
016fbb20  mov x0,x19
016fbb24  str x19,[sp]
016fbb28  bl 0x01251aa0
016fbb2c  mov w8,#0x1
016fbb30  str w8,[sp, #0x8]
016fbb34  mov x0,sp
016fbb38  bl 0x0174aa04
016fbb3c  adrp x1,0x5769000
016fbb40  adrp x3,0x736d000
016fbb44  add x1,x1,#0x171
016fbb48  add x3,x3,#0x101
016fbb4c  add x0,sp,#0x10
016fbb50  mov x2,sp
016fbb54  bl 0x018bd988
016fbb58  adrp x1,0x575a000
016fbb5c  adrp x2,0x18bd000
016fbb60  adrp x4,0x18bd000
016fbb64  add x1,x1,#0xff6
016fbb68  add x2,x2,#0x288
016fbb6c  add x4,x4,#0x290
016fbb70  add x0,sp,#0x10
016fbb74  mov x3,xzr
016fbb78  mov x5,xzr
016fbb7c  bl 0x018bd0a0
016fbb80  adrp x1,0x5769000
016fbb84  adrp x2,0x18bd000
016fbb88  adrp x4,0x18bd000
016fbb8c  add x1,x1,#0x15d
016fbb90  add x2,x2,#0x328
016fbb94  add x4,x4,#0x330
016fbb98  mov x3,xzr
016fbb9c  mov x5,xzr
016fbba0  bl 0x018bd0a0
016fbba4  adrp x1,0x5760000
016fbba8  adrp x2,0x18bd000
016fbbac  adrp x4,0x18bd000
016fbbb0  add x1,x1,#0xb65
016fbbb4  add x2,x2,#0x338
016fbbb8  add x4,x4,#0x340
016fbbbc  mov x3,xzr
016fbbc0  mov x5,xzr
016fbbc4  bl 0x018bd0a0
016fbbc8  adrp x1,0x5769000
016fbbcc  adrp x2,0x18bd000
016fbbd0  adrp x4,0x18bd000
016fbbd4  add x1,x1,#0x184
016fbbd8  add x2,x2,#0x3d8
016fbbdc  add x4,x4,#0x3e0
016fbbe0  mov x3,xzr
016fbbe4  mov x5,xzr
016fbbe8  bl 0x018bd0a0
016fbbec  adrp x1,0x5769000
016fbbf0  adrp x2,0x18bd000
016fbbf4  adrp x4,0x18bd000
016fbbf8  add x1,x1,#0x191
016fbbfc  add x2,x2,#0x660
016fbc00  add x4,x4,#0x668
016fbc04  mov x3,xzr
016fbc08  mov x5,xzr
016fbc0c  bl 0x018bd478
016fbc10  adrp x1,0x5769000
016fbc14  adrp x2,0x18bd000
016fbc18  adrp x4,0x18bd000
016fbc1c  add x1,x1,#0x1a4
016fbc20  add x2,x2,#0x8e8
016fbc24  add x4,x4,#0x8f0
016fbc28  mov x3,xzr
016fbc2c  mov x5,xzr
016fbc30  bl 0x018bd700
016fbc34  mov x19,x0
016fbc38  ldr w8,[x19, #0x8]
016fbc3c  ldr x0,[x19]
016fbc40  sub w8,w8,#0x3
016fbc44  str w8,[x19, #0x8]
016fbc48  orr w1,wzr,#0xfffffffc
016fbc4c  bl 0x0124c4d0
016fbc50  ldr w8,[x19, #0x8]
016fbc54  ldr x0,[x19]
016fbc58  str wzr,[x19, #0x8]
016fbc5c  cmp w8,#0x1
016fbc60  b.lt 0x016fbc6c
016fbc64  mvn w1,w8
016fbc68  bl 0x0124c4d0
016fbc6c  ldr w8,[sp, #0x18]
016fbc70  cmp w8,#0x1
016fbc74  b.lt 0x016fbc84
016fbc78  ldr x0,[sp, #0x10]
016fbc7c  mvn w1,w8
016fbc80  bl 0x0124c4d0
016fbc84  ldr w8,[sp, #0x8]
016fbc88  cmp w8,#0x1
016fbc8c  b.lt 0x016fbc9c
016fbc90  ldr x0,[sp]
016fbc94  mvn w1,w8
016fbc98  bl 0x0124c4d0
016fbc9c  ldp x29,x30,[sp, #0x30]
016fbca0  ldr x19,[sp, #0x20]
016fbca4  add sp,sp,#0x40
016fbca8  ret
