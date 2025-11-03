// ===== case180-BattleScoringDataCollectInfo @ 016abb84 =====
// existing function case180-BattleScoringDataCollectInfo
016abb84  sub sp,sp,#0x40
016abb88  str x19,[sp, #0x20]
016abb8c  stp x29,x30,[sp, #0x30]
016abb90  add x29,sp,#0x30
016abb94  adrp x1,0x174a000
016abb98  add x1,x1,#0x87c
016abb9c  mov x19,x0
016abba0  bl 0x0124ba40
016abba4  adrp x1,0x575d000
016abba8  add x1,x1,#0xa06
016abbac  mov x0,x19
016abbb0  str x19,[sp]
016abbb4  bl 0x01251aa0
016abbb8  mov w8,#0x1
016abbbc  str w8,[sp, #0x8]
016abbc0  mov x0,sp
016abbc4  bl 0x0174aa04
016abbc8  adrp x1,0x5760000
016abbcc  adrp x3,0x736d000
016abbd0  add x1,x1,#0x823
016abbd4  add x3,x3,#0x101
016abbd8  add x0,sp,#0x10
016abbdc  mov x2,sp
016abbe0  bl 0x017b0ebc
016abbe4  adrp x1,0x5760000
016abbe8  adrp x2,0x17b0000
016abbec  adrp x4,0x17b0000
016abbf0  add x1,x1,#0x840
016abbf4  add x2,x2,#0xe8c
016abbf8  add x4,x4,#0xe94
016abbfc  add x0,sp,#0x10
016abc00  mov x3,xzr
016abc04  mov x5,xzr
016abc08  bl 0x017b0ca4
016abc0c  adrp x1,0x5760000
016abc10  adrp x2,0x17b0000
016abc14  adrp x4,0x17b0000
016abc18  add x1,x1,#0x84c
016abc1c  add x2,x2,#0xe9c
016abc20  add x4,x4,#0xea4
016abc24  mov x3,xzr
016abc28  mov x5,xzr
016abc2c  bl 0x017b0ca4
016abc30  adrp x1,0x5760000
016abc34  adrp x2,0x17b0000
016abc38  adrp x4,0x17b0000
016abc3c  add x1,x1,#0x854
016abc40  add x2,x2,#0xeac
016abc44  add x4,x4,#0xeb4
016abc48  mov x3,xzr
016abc4c  mov x5,xzr
016abc50  bl 0x017b0ca4
016abc54  mov x19,x0
016abc58  ldr w8,[x19, #0x8]
016abc5c  ldr x0,[x19]
016abc60  sub w8,w8,#0x3
016abc64  str w8,[x19, #0x8]
016abc68  orr w1,wzr,#0xfffffffc
016abc6c  bl 0x0124c4d0
016abc70  ldr w8,[x19, #0x8]
016abc74  ldr x0,[x19]
016abc78  str wzr,[x19, #0x8]
016abc7c  cmp w8,#0x1
016abc80  b.lt 0x016abc8c
016abc84  mvn w1,w8
016abc88  bl 0x0124c4d0
016abc8c  ldr w8,[sp, #0x18]
016abc90  cmp w8,#0x1
016abc94  b.lt 0x016abca4
016abc98  ldr x0,[sp, #0x10]
016abc9c  mvn w1,w8
016abca0  bl 0x0124c4d0
016abca4  ldr w8,[sp, #0x8]
016abca8  cmp w8,#0x1
016abcac  b.lt 0x016abcbc
016abcb0  ldr x0,[sp]
016abcb4  mvn w1,w8
016abcb8  bl 0x0124c4d0
016abcbc  ldp x29,x30,[sp, #0x30]
016abcc0  ldr x19,[sp, #0x20]
016abcc4  add sp,sp,#0x40
016abcc8  ret
