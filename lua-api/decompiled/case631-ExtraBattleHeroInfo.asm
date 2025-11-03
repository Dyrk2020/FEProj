// ===== case631-ExtraBattleHeroInfo @ 0170e9d0 =====
// existing function case631-ExtraBattleHeroInfo
0170e9d0  sub sp,sp,#0x40
0170e9d4  str x19,[sp, #0x20]
0170e9d8  stp x29,x30,[sp, #0x30]
0170e9dc  add x29,sp,#0x30
0170e9e0  adrp x1,0x174a000
0170e9e4  add x1,x1,#0x87c
0170e9e8  mov x19,x0
0170e9ec  bl 0x0124ba40
0170e9f0  adrp x1,0x575d000
0170e9f4  add x1,x1,#0xa06
0170e9f8  mov x0,x19
0170e9fc  str x19,[sp]
0170ea00  bl 0x01251aa0
0170ea04  mov w8,#0x1
0170ea08  str w8,[sp, #0x8]
0170ea0c  mov x0,sp
0170ea10  bl 0x0174aa04
0170ea14  adrp x1,0x576a000
0170ea18  adrp x3,0x736d000
0170ea1c  add x1,x1,#0xac0
0170ea20  add x3,x3,#0x101
0170ea24  add x0,sp,#0x10
0170ea28  mov x2,sp
0170ea2c  bl 0x0190c2ec
0170ea30  adrp x1,0x575e000
0170ea34  adrp x2,0x190c000
0170ea38  adrp x4,0x190c000
0170ea3c  add x1,x1,#0x398
0170ea40  add x2,x2,#0xd4
0170ea44  add x4,x4,#0xdc
0170ea48  add x0,sp,#0x10
0170ea4c  mov x3,xzr
0170ea50  mov x5,xzr
0170ea54  bl 0x0190beec
0170ea58  adrp x1,0x575f000
0170ea5c  adrp x2,0x190c000
0170ea60  adrp x4,0x190c000
0170ea64  add x1,x1,#0xe50
0170ea68  add x2,x2,#0xe4
0170ea6c  add x4,x4,#0xec
0170ea70  mov x3,xzr
0170ea74  mov x5,xzr
0170ea78  bl 0x0190beec
0170ea7c  adrp x1,0x5768000
0170ea80  adrp x2,0x190c000
0170ea84  adrp x4,0x190c000
0170ea88  add x1,x1,#0x333
0170ea8c  add x2,x2,#0x2dc
0170ea90  add x4,x4,#0x2e4
0170ea94  mov x3,xzr
0170ea98  mov x5,xzr
0170ea9c  bl 0x0190c0f4
0170eaa0  mov x19,x0
0170eaa4  ldr w8,[x19, #0x8]
0170eaa8  ldr x0,[x19]
0170eaac  sub w8,w8,#0x3
0170eab0  str w8,[x19, #0x8]
0170eab4  orr w1,wzr,#0xfffffffc
0170eab8  bl 0x0124c4d0
0170eabc  ldr w8,[x19, #0x8]
0170eac0  ldr x0,[x19]
0170eac4  str wzr,[x19, #0x8]
0170eac8  cmp w8,#0x1
0170eacc  b.lt 0x0170ead8
0170ead0  mvn w1,w8
0170ead4  bl 0x0124c4d0
0170ead8  ldr w8,[sp, #0x18]
0170eadc  cmp w8,#0x1
0170eae0  b.lt 0x0170eaf0
0170eae4  ldr x0,[sp, #0x10]
0170eae8  mvn w1,w8
0170eaec  bl 0x0124c4d0
0170eaf0  ldr w8,[sp, #0x8]
0170eaf4  cmp w8,#0x1
0170eaf8  b.lt 0x0170eb08
0170eafc  ldr x0,[sp]
0170eb00  mvn w1,w8
0170eb04  bl 0x0124c4d0
0170eb08  ldp x29,x30,[sp, #0x30]
0170eb0c  ldr x19,[sp, #0x20]
0170eb10  add sp,sp,#0x40
0170eb14  ret
