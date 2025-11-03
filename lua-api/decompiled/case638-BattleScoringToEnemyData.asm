// ===== case638-BattleScoringToEnemyData @ 0170fa8c =====
// existing function case638-BattleScoringToEnemyData
0170fa8c  sub sp,sp,#0x40
0170fa90  str x19,[sp, #0x20]
0170fa94  stp x29,x30,[sp, #0x30]
0170fa98  add x29,sp,#0x30
0170fa9c  adrp x1,0x174a000
0170faa0  add x1,x1,#0x87c
0170faa4  mov x19,x0
0170faa8  bl 0x0124ba40
0170faac  adrp x1,0x575d000
0170fab0  add x1,x1,#0xa06
0170fab4  mov x0,x19
0170fab8  str x19,[sp]
0170fabc  bl 0x01251aa0
0170fac0  mov w8,#0x1
0170fac4  str w8,[sp, #0x8]
0170fac8  mov x0,sp
0170facc  bl 0x0174aa04
0170fad0  adrp x1,0x576a000
0170fad4  adrp x3,0x736d000
0170fad8  add x1,x1,#0xc11
0170fadc  add x3,x3,#0x101
0170fae0  add x0,sp,#0x10
0170fae4  mov x2,sp
0170fae8  bl 0x019115e8
0170faec  adrp x1,0x5767000
0170faf0  adrp x2,0x1911000
0170faf4  adrp x4,0x1911000
0170faf8  add x1,x1,#0xe51
0170fafc  add x2,x2,#0x3e0
0170fb00  add x4,x4,#0x3e8
0170fb04  add x0,sp,#0x10
0170fb08  mov x3,xzr
0170fb0c  mov x5,xzr
0170fb10  bl 0x019111f8
0170fb14  adrp x1,0x576a000
0170fb18  adrp x2,0x1911000
0170fb1c  adrp x4,0x1911000
0170fb20  add x1,x1,#0xc2a
0170fb24  add x2,x2,#0x5d8
0170fb28  add x4,x4,#0x5e0
0170fb2c  mov x3,xzr
0170fb30  mov x5,xzr
0170fb34  bl 0x019113f0
0170fb38  mov x19,x0
0170fb3c  ldr w8,[x19, #0x8]
0170fb40  ldr x0,[x19]
0170fb44  sub w8,w8,#0x3
0170fb48  str w8,[x19, #0x8]
0170fb4c  orr w1,wzr,#0xfffffffc
0170fb50  bl 0x0124c4d0
0170fb54  ldr w8,[x19, #0x8]
0170fb58  ldr x0,[x19]
0170fb5c  str wzr,[x19, #0x8]
0170fb60  cmp w8,#0x1
0170fb64  b.lt 0x0170fb70
0170fb68  mvn w1,w8
0170fb6c  bl 0x0124c4d0
0170fb70  ldr w8,[sp, #0x18]
0170fb74  cmp w8,#0x1
0170fb78  b.lt 0x0170fb88
0170fb7c  ldr x0,[sp, #0x10]
0170fb80  mvn w1,w8
0170fb84  bl 0x0124c4d0
0170fb88  ldr w8,[sp, #0x8]
0170fb8c  cmp w8,#0x1
0170fb90  b.lt 0x0170fba0
0170fb94  ldr x0,[sp]
0170fb98  mvn w1,w8
0170fb9c  bl 0x0124c4d0
0170fba0  ldp x29,x30,[sp, #0x30]
0170fba4  ldr x19,[sp, #0x20]
0170fba8  add sp,sp,#0x40
0170fbac  ret
