// ===== case462-MapPointData @ 016ec29c =====
// existing function case462-MapPointData
016ec29c  sub sp,sp,#0x40
016ec2a0  str x19,[sp, #0x20]
016ec2a4  stp x29,x30,[sp, #0x30]
016ec2a8  add x29,sp,#0x30
016ec2ac  adrp x1,0x174a000
016ec2b0  add x1,x1,#0x87c
016ec2b4  mov x19,x0
016ec2b8  bl 0x0124ba40
016ec2bc  adrp x1,0x575d000
016ec2c0  add x1,x1,#0xa06
016ec2c4  mov x0,x19
016ec2c8  str x19,[sp]
016ec2cc  bl 0x01251aa0
016ec2d0  mov w8,#0x1
016ec2d4  str w8,[sp, #0x8]
016ec2d8  mov x0,sp
016ec2dc  bl 0x0174aa04
016ec2e0  adrp x1,0x5766000
016ec2e4  adrp x3,0x736d000
016ec2e8  add x1,x1,#0xeb0
016ec2ec  add x3,x3,#0x101
016ec2f0  add x0,sp,#0x10
016ec2f4  mov x2,sp
016ec2f8  bl 0x01874580
016ec2fc  adrp x1,0x595c000
016ec300  adrp x2,0x1874000
016ec304  adrp x4,0x1874000
016ec308  add x1,x1,#0x9c4
016ec30c  add x2,x2,#0x308
016ec310  add x4,x4,#0x310
016ec314  add x0,sp,#0x10
016ec318  mov x3,xzr
016ec31c  mov x5,xzr
016ec320  bl 0x01874120
016ec324  adrp x1,0x596a000
016ec328  adrp x2,0x1874000
016ec32c  adrp x4,0x1874000
016ec330  add x1,x1,#0x262
016ec334  add x2,x2,#0x318
016ec338  add x4,x4,#0x320
016ec33c  mov x3,xzr
016ec340  mov x5,xzr
016ec344  bl 0x01874120
016ec348  adrp x1,0x5766000
016ec34c  adrp x2,0x1874000
016ec350  adrp x4,0x1874000
016ec354  add x1,x1,#0xebd
016ec358  add x2,x2,#0x328
016ec35c  add x4,x4,#0x330
016ec360  mov x3,xzr
016ec364  mov x5,xzr
016ec368  bl 0x01874120
016ec36c  adrp x1,0x5766000
016ec370  adrp x2,0x1874000
016ec374  adrp x4,0x1874000
016ec378  add x1,x1,#0xb6c
016ec37c  add x2,x2,#0x520
016ec380  add x4,x4,#0x534
016ec384  mov x3,xzr
016ec388  mov x5,xzr
016ec38c  bl 0x01874338
016ec390  adrp x1,0x5766000
016ec394  adrp x2,0x1874000
016ec398  adrp x4,0x1874000
016ec39c  add x1,x1,#0xec8
016ec3a0  add x2,x2,#0x550
016ec3a4  add x4,x4,#0x564
016ec3a8  mov x3,xzr
016ec3ac  mov x5,xzr
016ec3b0  bl 0x01874338
016ec3b4  mov x19,x0
016ec3b8  ldr w8,[x19, #0x8]
016ec3bc  ldr x0,[x19]
016ec3c0  sub w8,w8,#0x3
016ec3c4  str w8,[x19, #0x8]
016ec3c8  orr w1,wzr,#0xfffffffc
016ec3cc  bl 0x0124c4d0
016ec3d0  ldr w8,[x19, #0x8]
016ec3d4  ldr x0,[x19]
016ec3d8  str wzr,[x19, #0x8]
016ec3dc  cmp w8,#0x1
016ec3e0  b.lt 0x016ec3ec
016ec3e4  mvn w1,w8
016ec3e8  bl 0x0124c4d0
016ec3ec  ldr w8,[sp, #0x18]
016ec3f0  cmp w8,#0x1
016ec3f4  b.lt 0x016ec404
016ec3f8  ldr x0,[sp, #0x10]
016ec3fc  mvn w1,w8
016ec400  bl 0x0124c4d0
016ec404  ldr w8,[sp, #0x8]
016ec408  cmp w8,#0x1
016ec40c  b.lt 0x016ec41c
016ec410  ldr x0,[sp]
016ec414  mvn w1,w8
016ec418  bl 0x0124c4d0
016ec41c  ldp x29,x30,[sp, #0x30]
016ec420  ldr x19,[sp, #0x20]
016ec424  add sp,sp,#0x40
016ec428  ret
