// ===== case202-GemGeneralTipParam @ 016af2c8 =====
// existing function case202-GemGeneralTipParam
016af2c8  sub sp,sp,#0x40
016af2cc  str x19,[sp, #0x20]
016af2d0  stp x29,x30,[sp, #0x30]
016af2d4  add x29,sp,#0x30
016af2d8  adrp x1,0x174a000
016af2dc  add x1,x1,#0x87c
016af2e0  mov x19,x0
016af2e4  bl 0x0124ba40
016af2e8  adrp x1,0x575d000
016af2ec  add x1,x1,#0xa06
016af2f0  mov x0,x19
016af2f4  str x19,[sp]
016af2f8  bl 0x01251aa0
016af2fc  mov w8,#0x1
016af300  str w8,[sp, #0x8]
016af304  mov x0,sp
016af308  bl 0x0174aa04
016af30c  adrp x1,0x5760000
016af310  adrp x3,0x736d000
016af314  add x1,x1,#0xd40
016af318  add x3,x3,#0x101
016af31c  add x0,sp,#0x10
016af320  mov x2,sp
016af324  bl 0x017bbf90
016af328  adrp x1,0x5760000
016af32c  adrp x2,0x17bb000
016af330  adrp x4,0x17bb000
016af334  add x1,x1,#0xd53
016af338  add x2,x2,#0xd68
016af33c  add x4,x4,#0xd70
016af340  add x0,sp,#0x10
016af344  mov x3,xzr
016af348  mov x5,xzr
016af34c  bl 0x017bbb80
016af350  adrp x1,0x5760000
016af354  adrp x2,0x17bb000
016af358  adrp x4,0x17bb000
016af35c  add x1,x1,#0xd5c
016af360  add x2,x2,#0xf60
016af364  add x4,x4,#0xf68
016af368  mov x3,xzr
016af36c  mov x5,xzr
016af370  bl 0x017bbd78
016af374  adrp x1,0x5760000
016af378  adrp x2,0x17bb000
016af37c  adrp x4,0x17bb000
016af380  add x1,x1,#0xd6e
016af384  add x2,x2,#0xf70
016af388  add x4,x4,#0xf78
016af38c  mov x3,xzr
016af390  mov x5,xzr
016af394  bl 0x017bbd78
016af398  adrp x1,0x5760000
016af39c  adrp x2,0x17bb000
016af3a0  adrp x4,0x17bb000
016af3a4  add x1,x1,#0xd7f
016af3a8  add x2,x2,#0xf80
016af3ac  add x4,x4,#0xf88
016af3b0  mov x3,xzr
016af3b4  mov x5,xzr
016af3b8  bl 0x017bbd78
016af3bc  mov x19,x0
016af3c0  ldr w8,[x19, #0x8]
016af3c4  ldr x0,[x19]
016af3c8  sub w8,w8,#0x3
016af3cc  str w8,[x19, #0x8]
016af3d0  orr w1,wzr,#0xfffffffc
016af3d4  bl 0x0124c4d0
016af3d8  ldr w8,[x19, #0x8]
016af3dc  ldr x0,[x19]
016af3e0  str wzr,[x19, #0x8]
016af3e4  cmp w8,#0x1
016af3e8  b.lt 0x016af3f4
016af3ec  mvn w1,w8
016af3f0  bl 0x0124c4d0
016af3f4  ldr w8,[sp, #0x18]
016af3f8  cmp w8,#0x1
016af3fc  b.lt 0x016af40c
016af400  ldr x0,[sp, #0x10]
016af404  mvn w1,w8
016af408  bl 0x0124c4d0
016af40c  ldr w8,[sp, #0x8]
016af410  cmp w8,#0x1
016af414  b.lt 0x016af424
016af418  ldr x0,[sp]
016af41c  mvn w1,w8
016af420  bl 0x0124c4d0
016af424  ldp x29,x30,[sp, #0x30]
016af428  ldr x19,[sp, #0x20]
016af42c  add sp,sp,#0x40
016af430  ret
