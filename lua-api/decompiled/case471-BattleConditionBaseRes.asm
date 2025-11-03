// ===== case471-BattleConditionBaseRes @ 016eda10 =====
// existing function case471-BattleConditionBaseRes
016eda10  sub sp,sp,#0x40
016eda14  str x19,[sp, #0x20]
016eda18  stp x29,x30,[sp, #0x30]
016eda1c  add x29,sp,#0x30
016eda20  adrp x1,0x174a000
016eda24  add x1,x1,#0x87c
016eda28  mov x19,x0
016eda2c  bl 0x0124ba40
016eda30  adrp x1,0x575d000
016eda34  add x1,x1,#0xa06
016eda38  mov x0,x19
016eda3c  str x19,[sp]
016eda40  bl 0x01251aa0
016eda44  mov w8,#0x1
016eda48  str w8,[sp, #0x8]
016eda4c  mov x0,sp
016eda50  bl 0x0174aa04
016eda54  adrp x1,0x5767000
016eda58  adrp x3,0x736d000
016eda5c  add x1,x1,#0x179
016eda60  add x3,x3,#0x101
016eda64  add x0,sp,#0x10
016eda68  mov x2,sp
016eda6c  bl 0x01878f14
016eda70  adrp x1,0x5766000
016eda74  adrp x2,0x1878000
016eda78  adrp x4,0x1878000
016eda7c  add x1,x1,#0x161
016eda80  add x2,x2,#0xcfc
016eda84  add x4,x4,#0xd04
016eda88  add x0,sp,#0x10
016eda8c  mov x3,xzr
016eda90  mov x5,xzr
016eda94  bl 0x01878b14
016eda98  adrp x1,0x5767000
016eda9c  adrp x2,0x1878000
016edaa0  adrp x4,0x1878000
016edaa4  add x1,x1,#0x190
016edaa8  add x2,x2,#0xd0c
016edaac  add x4,x4,#0xd14
016edab0  mov x3,xzr
016edab4  mov x5,xzr
016edab8  bl 0x01878b14
016edabc  adrp x1,0x5767000
016edac0  adrp x2,0x1878000
016edac4  adrp x4,0x1878000
016edac8  add x1,x1,#0x198
016edacc  add x2,x2,#0xf04
016edad0  add x4,x4,#0xf0c
016edad4  mov x3,xzr
016edad8  mov x5,xzr
016edadc  bl 0x01878d1c
016edae0  mov x19,x0
016edae4  ldr w8,[x19, #0x8]
016edae8  ldr x0,[x19]
016edaec  sub w8,w8,#0x3
016edaf0  str w8,[x19, #0x8]
016edaf4  orr w1,wzr,#0xfffffffc
016edaf8  bl 0x0124c4d0
016edafc  ldr w8,[x19, #0x8]
016edb00  ldr x0,[x19]
016edb04  str wzr,[x19, #0x8]
016edb08  cmp w8,#0x1
016edb0c  b.lt 0x016edb18
016edb10  mvn w1,w8
016edb14  bl 0x0124c4d0
016edb18  ldr w8,[sp, #0x18]
016edb1c  cmp w8,#0x1
016edb20  b.lt 0x016edb30
016edb24  ldr x0,[sp, #0x10]
016edb28  mvn w1,w8
016edb2c  bl 0x0124c4d0
016edb30  ldr w8,[sp, #0x8]
016edb34  cmp w8,#0x1
016edb38  b.lt 0x016edb48
016edb3c  ldr x0,[sp]
016edb40  mvn w1,w8
016edb44  bl 0x0124c4d0
016edb48  ldp x29,x30,[sp, #0x30]
016edb4c  ldr x19,[sp, #0x20]
016edb50  add sp,sp,#0x40
016edb54  ret
