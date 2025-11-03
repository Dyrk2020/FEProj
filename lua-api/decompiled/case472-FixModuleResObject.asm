// ===== case472-FixModuleResObject @ 016edbbc =====
// existing function case472-FixModuleResObject
016edbbc  sub sp,sp,#0x40
016edbc0  str x19,[sp, #0x20]
016edbc4  stp x29,x30,[sp, #0x30]
016edbc8  add x29,sp,#0x30
016edbcc  adrp x1,0x174a000
016edbd0  add x1,x1,#0x87c
016edbd4  mov x19,x0
016edbd8  bl 0x0124ba40
016edbdc  adrp x1,0x575d000
016edbe0  add x1,x1,#0xa06
016edbe4  mov x0,x19
016edbe8  str x19,[sp]
016edbec  bl 0x01251aa0
016edbf0  mov w8,#0x1
016edbf4  str w8,[sp, #0x8]
016edbf8  mov x0,sp
016edbfc  bl 0x0174aa04
016edc00  adrp x1,0x5767000
016edc04  adrp x3,0x736d000
016edc08  add x1,x1,#0x1a2
016edc0c  add x3,x3,#0x101
016edc10  add x0,sp,#0x10
016edc14  mov x2,sp
016edc18  bl 0x01879b28
016edc1c  adrp x1,0x5767000
016edc20  adrp x2,0x1879000
016edc24  adrp x4,0x1879000
016edc28  add x1,x1,#0x1b5
016edc2c  add x2,x2,#0x900
016edc30  add x4,x4,#0x908
016edc34  add x0,sp,#0x10
016edc38  mov x3,xzr
016edc3c  mov x5,xzr
016edc40  bl 0x01879718
016edc44  adrp x1,0x5767000
016edc48  adrp x2,0x1879000
016edc4c  adrp x4,0x1879000
016edc50  add x1,x1,#0x1c1
016edc54  add x2,x2,#0x910
016edc58  add x4,x4,#0x918
016edc5c  mov x3,xzr
016edc60  mov x5,xzr
016edc64  bl 0x01879718
016edc68  adrp x1,0x5767000
016edc6c  adrp x2,0x1879000
016edc70  adrp x4,0x1879000
016edc74  add x1,x1,#0x1ce
016edc78  add x2,x2,#0x920
016edc7c  add x4,x4,#0x928
016edc80  mov x3,xzr
016edc84  mov x5,xzr
016edc88  bl 0x01879718
016edc8c  adrp x1,0x5767000
016edc90  adrp x2,0x1879000
016edc94  adrp x4,0x1879000
016edc98  add x1,x1,#0x1db
016edc9c  add x2,x2,#0xb18
016edca0  add x4,x4,#0xb20
016edca4  mov x3,xzr
016edca8  mov x5,xzr
016edcac  bl 0x01879930
016edcb0  mov x19,x0
016edcb4  ldr w8,[x19, #0x8]
016edcb8  ldr x0,[x19]
016edcbc  sub w8,w8,#0x3
016edcc0  str w8,[x19, #0x8]
016edcc4  orr w1,wzr,#0xfffffffc
016edcc8  bl 0x0124c4d0
016edccc  ldr w8,[x19, #0x8]
016edcd0  ldr x0,[x19]
016edcd4  str wzr,[x19, #0x8]
016edcd8  cmp w8,#0x1
016edcdc  b.lt 0x016edce8
016edce0  mvn w1,w8
016edce4  bl 0x0124c4d0
016edce8  ldr w8,[sp, #0x18]
016edcec  cmp w8,#0x1
016edcf0  b.lt 0x016edd00
016edcf4  ldr x0,[sp, #0x10]
016edcf8  mvn w1,w8
016edcfc  bl 0x0124c4d0
016edd00  ldr w8,[sp, #0x8]
016edd04  cmp w8,#0x1
016edd08  b.lt 0x016edd18
016edd0c  ldr x0,[sp]
016edd10  mvn w1,w8
016edd14  bl 0x0124c4d0
016edd18  ldp x29,x30,[sp, #0x30]
016edd1c  ldr x19,[sp, #0x20]
016edd20  add sp,sp,#0x40
016edd24  ret
