// ===== case495-HexAramDataMgr @ 016f3504 =====
// existing function case495-HexAramDataMgr
016f3504  sub sp,sp,#0x40
016f3508  str x19,[sp, #0x20]
016f350c  stp x29,x30,[sp, #0x30]
016f3510  add x29,sp,#0x30
016f3514  adrp x1,0x174a000
016f3518  add x1,x1,#0x87c
016f351c  mov x19,x0
016f3520  bl 0x0124ba40
016f3524  adrp x1,0x575d000
016f3528  add x1,x1,#0xa06
016f352c  mov x0,x19
016f3530  str x19,[sp]
016f3534  bl 0x01251aa0
016f3538  mov w8,#0x1
016f353c  str w8,[sp, #0x8]
016f3540  mov x0,sp
016f3544  bl 0x0174aa04
016f3548  adrp x1,0x5767000
016f354c  adrp x3,0x736d000
016f3550  add x1,x1,#0xead
016f3554  add x3,x3,#0x101
016f3558  add x0,sp,#0x10
016f355c  mov x2,sp
016f3560  bl 0x0188cbe4
016f3564  adrp x1,0x5767000
016f3568  adrp x2,0x188c000
016f356c  adrp x4,0x188c000
016f3570  add x1,x1,#0xebc
016f3574  add x2,x2,#0xba4
016f3578  add x4,x4,#0xbac
016f357c  add x0,sp,#0x10
016f3580  mov x3,xzr
016f3584  mov x5,xzr
016f3588  bl 0x0188c9bc
016f358c  adrp x1,0x5767000
016f3590  adrp x2,0x188c000
016f3594  adrp x4,0x188c000
016f3598  add x1,x1,#0xed0
016f359c  add x2,x2,#0xbb4
016f35a0  add x4,x4,#0xbbc
016f35a4  mov x3,xzr
016f35a8  mov x5,xzr
016f35ac  bl 0x0188c9bc
016f35b0  adrp x1,0x5767000
016f35b4  adrp x2,0x188c000
016f35b8  adrp x4,0x188c000
016f35bc  add x1,x1,#0xee4
016f35c0  add x2,x2,#0xbc4
016f35c4  add x4,x4,#0xbcc
016f35c8  mov x3,xzr
016f35cc  mov x5,xzr
016f35d0  bl 0x0188c9bc
016f35d4  adrp x1,0x5767000
016f35d8  adrp x2,0x188c000
016f35dc  adrp x4,0x188c000
016f35e0  add x1,x1,#0xef8
016f35e4  add x2,x2,#0xbd4
016f35e8  add x4,x4,#0xbdc
016f35ec  mov x3,xzr
016f35f0  mov x5,xzr
016f35f4  bl 0x0188c9bc
016f35f8  mov x19,x0
016f35fc  ldr w8,[x19, #0x8]
016f3600  ldr x0,[x19]
016f3604  sub w8,w8,#0x3
016f3608  str w8,[x19, #0x8]
016f360c  orr w1,wzr,#0xfffffffc
016f3610  bl 0x0124c4d0
016f3614  ldr w8,[x19, #0x8]
016f3618  ldr x0,[x19]
016f361c  str wzr,[x19, #0x8]
016f3620  cmp w8,#0x1
016f3624  b.lt 0x016f3630
016f3628  mvn w1,w8
016f362c  bl 0x0124c4d0
016f3630  ldr w8,[sp, #0x18]
016f3634  cmp w8,#0x1
016f3638  b.lt 0x016f3648
016f363c  ldr x0,[sp, #0x10]
016f3640  mvn w1,w8
016f3644  bl 0x0124c4d0
016f3648  ldr w8,[sp, #0x8]
016f364c  cmp w8,#0x1
016f3650  b.lt 0x016f3660
016f3654  ldr x0,[sp]
016f3658  mvn w1,w8
016f365c  bl 0x0124c4d0
016f3660  ldp x29,x30,[sp, #0x30]
016f3664  ldr x19,[sp, #0x20]
016f3668  add sp,sp,#0x40
016f366c  ret
