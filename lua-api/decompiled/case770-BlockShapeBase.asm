// ===== case770-BlockShapeBase @ 0172e604 =====
// existing function case770-BlockShapeBase
0172e604  sub sp,sp,#0x40
0172e608  str x19,[sp, #0x20]
0172e60c  stp x29,x30,[sp, #0x30]
0172e610  add x29,sp,#0x30
0172e614  adrp x1,0x174a000
0172e618  add x1,x1,#0x87c
0172e61c  mov x19,x0
0172e620  bl 0x0124ba40
0172e624  adrp x1,0x575d000
0172e628  add x1,x1,#0xa06
0172e62c  mov x0,x19
0172e630  str x19,[sp]
0172e634  bl 0x01251aa0
0172e638  mov w8,#0x1
0172e63c  str w8,[sp, #0x8]
0172e640  mov x0,sp
0172e644  bl 0x0174aa04
0172e648  adrp x1,0x5771000
0172e64c  adrp x3,0x736d000
0172e650  add x1,x1,#0x301
0172e654  add x3,x3,#0x101
0172e658  add x0,sp,#0x10
0172e65c  mov x2,sp
0172e660  bl 0x0199f544
0172e664  adrp x1,0x5765000
0172e668  adrp x2,0x199e000
0172e66c  adrp x4,0x199e000
0172e670  add x1,x1,#0xf13
0172e674  add x2,x2,#0xef8
0172e678  add x4,x4,#0xf04
0172e67c  add x0,sp,#0x10
0172e680  mov x3,xzr
0172e684  mov x5,xzr
0172e688  bl 0x0199ed10
0172e68c  adrp x1,0x5771000
0172e690  adrp x2,0x199f000
0172e694  adrp x4,0x199f000
0172e698  add x1,x1,#0x310
0172e69c  add x2,x2,#0xf4
0172e6a0  add x4,x4,#0x108
0172e6a4  mov x3,xzr
0172e6a8  mov x5,xzr
0172e6ac  bl 0x0199ef0c
0172e6b0  adrp x1,0x5767000
0172e6b4  adrp x2,0x199f000
0172e6b8  adrp x4,0x199f000
0172e6bc  add x1,x1,#0xbd4
0172e6c0  add x2,x2,#0x314
0172e6c4  add x4,x4,#0x328
0172e6c8  mov x3,xzr
0172e6cc  mov x5,xzr
0172e6d0  bl 0x0199f12c
0172e6d4  adrp x1,0x5771000
0172e6d8  adrp x2,0x199f000
0172e6dc  adrp x4,0x199f000
0172e6e0  add x1,x1,#0x319
0172e6e4  add x2,x2,#0x534
0172e6e8  add x4,x4,#0x53c
0172e6ec  mov x3,xzr
0172e6f0  mov x5,xzr
0172e6f4  bl 0x0199f34c
0172e6f8  mov x19,x0
0172e6fc  ldr w8,[x19, #0x8]
0172e700  ldr x0,[x19]
0172e704  sub w8,w8,#0x3
0172e708  str w8,[x19, #0x8]
0172e70c  orr w1,wzr,#0xfffffffc
0172e710  bl 0x0124c4d0
0172e714  ldr w8,[x19, #0x8]
0172e718  ldr x0,[x19]
0172e71c  str wzr,[x19, #0x8]
0172e720  cmp w8,#0x1
0172e724  b.lt 0x0172e730
0172e728  mvn w1,w8
0172e72c  bl 0x0124c4d0
0172e730  ldr w8,[sp, #0x18]
0172e734  cmp w8,#0x1
0172e738  b.lt 0x0172e748
0172e73c  ldr x0,[sp, #0x10]
0172e740  mvn w1,w8
0172e744  bl 0x0124c4d0
0172e748  ldr w8,[sp, #0x8]
0172e74c  cmp w8,#0x1
0172e750  b.lt 0x0172e760
0172e754  ldr x0,[sp]
0172e758  mvn w1,w8
0172e75c  bl 0x0124c4d0
0172e760  ldp x29,x30,[sp, #0x30]
0172e764  ldr x19,[sp, #0x20]
0172e768  add sp,sp,#0x40
0172e76c  ret
