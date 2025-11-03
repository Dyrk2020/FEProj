// ===== case412-BattleEventMgr @ 016e3354 =====
// existing function case412-BattleEventMgr
016e3354  sub sp,sp,#0x40
016e3358  stp x20,x19,[sp, #0x20]
016e335c  stp x29,x30,[sp, #0x30]
016e3360  add x29,sp,#0x30
016e3364  adrp x1,0x174a000
016e3368  add x1,x1,#0x87c
016e336c  mov x19,x0
016e3370  bl 0x0124ba40
016e3374  adrp x1,0x575d000
016e3378  add x1,x1,#0xa06
016e337c  mov x0,x19
016e3380  str x19,[sp]
016e3384  bl 0x01251aa0
016e3388  mov w8,#0x1
016e338c  str w8,[sp, #0x8]
016e3390  mov x0,sp
016e3394  bl 0x0174aa04
016e3398  adrp x1,0x5766000
016e339c  adrp x3,0x736d000
016e33a0  add x1,x1,#0xf4
016e33a4  add x3,x3,#0x101
016e33a8  add x0,sp,#0x10
016e33ac  mov x2,sp
016e33b0  bl 0x0185566c
016e33b4  ldr x0,[sp, #0x10]
016e33b8  mov w1,#0x10
016e33bc  bl 0x0124cba0
016e33c0  adrp x8,0x1855000
016e33c4  dup v0.2D,xzr
016e33c8  add x8,x8,#0x26c
016e33cc  mov v0.D[0x0],x8
016e33d0  str q0,[x0]
016e33d4  ldr x0,[sp, #0x10]
016e33d8  adrp x1,0x1855000
016e33dc  add x1,x1,#0xa30
016e33e0  mov w2,#0x1
016e33e4  bl 0x0124ec90
016e33e8  ldr x0,[sp, #0x10]
016e33ec  mov w1,#0xffffffff
016e33f0  bl 0x0124c0c0
016e33f4  ldr x19,[sp, #0x10]
016e33f8  orr w1,wzr,#0xfffffffb
016e33fc  mov w2,#0x6e7
016e3400  mov x0,x19
016e3404  bl 0x0124a650
016e3408  orr w1,wzr,#0xfffffffe
016e340c  mov x0,x19
016e3410  bl 0x0124c0c0
016e3414  orr w1,wzr,#0xfffffffe
016e3418  mov x0,x19
016e341c  bl 0x0124e920
016e3420  mov w20,w0
016e3424  adrp x1,0x5763000
016e3428  add x1,x1,#0x892
016e342c  mov x0,x19
016e3430  bl 0x0124f120
016e3434  orr w1,wzr,#0xfffffffe
016e3438  mov w2,#0x1
016e343c  mov x0,x19
016e3440  bl 0x0124cfc0
016e3444  mov x0,x19
016e3448  mov w1,w20
016e344c  bl 0x0124e060
016e3450  orr w1,wzr,#0xfffffffd
016e3454  mov x0,x19
016e3458  bl 0x0124c4d0
016e345c  ldr x19,[sp, #0x10]
016e3460  orr w1,wzr,#0xfffffffd
016e3464  mov w2,#0x6e7
016e3468  mov x0,x19
016e346c  bl 0x0124a650
016e3470  orr w1,wzr,#0xfffffffe
016e3474  mov x0,x19
016e3478  bl 0x0124c0c0
016e347c  orr w1,wzr,#0xfffffffe
016e3480  mov x0,x19
016e3484  bl 0x0124e920
016e3488  mov w20,w0
016e348c  adrp x1,0x5763000
016e3490  add x1,x1,#0x892
016e3494  mov x0,x19
016e3498  bl 0x0124f120
016e349c  orr w1,wzr,#0xfffffffe
016e34a0  mov w2,#0x1
016e34a4  mov x0,x19
016e34a8  bl 0x0124cfc0
016e34ac  mov x0,x19
016e34b0  mov w1,w20
016e34b4  bl 0x0124e060
016e34b8  orr w1,wzr,#0xfffffffd
016e34bc  mov x0,x19
016e34c0  bl 0x0124c4d0
016e34c4  ldr x0,[sp, #0x10]
016e34c8  mov w1,#0x10
016e34cc  bl 0x0124cba0
016e34d0  adrp x8,0x1855000
016e34d4  dup v0.2D,xzr
016e34d8  add x8,x8,#0x274
016e34dc  mov v0.D[0x0],x8
016e34e0  str q0,[x0]
016e34e4  ldr x0,[sp, #0x10]
016e34e8  adrp x1,0x1855000
016e34ec  add x1,x1,#0xb54
016e34f0  mov w2,#0x1
016e34f4  bl 0x0124ec90
016e34f8  ldr x0,[sp, #0x10]
016e34fc  mov w1,#0xffffffff
016e3500  bl 0x0124c0c0
016e3504  ldr x19,[sp, #0x10]
016e3508  orr w1,wzr,#0xfffffffb
016e350c  mov w2,#0x6e7
016e3510  mov x0,x19
016e3514  bl 0x0124a650
016e3518  orr w1,wzr,#0xfffffffe
016e351c  mov x0,x19
016e3520  bl 0x0124c0c0
016e3524  orr w1,wzr,#0xfffffffe
016e3528  mov x0,x19
016e352c  bl 0x0124e920
016e3530  mov w20,w0
016e3534  adrp x1,0x5766000
016e3538  add x1,x1,#0x103
016e353c  mov x0,x19
016e3540  bl 0x0124f120
016e3544  orr w1,wzr,#0xfffffffe
016e3548  mov w2,#0x1
016e354c  mov x0,x19
016e3550  bl 0x0124cfc0
016e3554  mov x0,x19
016e3558  mov w1,w20
016e355c  bl 0x0124e060
016e3560  orr w1,wzr,#0xfffffffd
016e3564  mov x0,x19
016e3568  bl 0x0124c4d0
016e356c  ldr x19,[sp, #0x10]
016e3570  orr w1,wzr,#0xfffffffd
016e3574  mov w2,#0x6e7
016e3578  mov x0,x19
016e357c  bl 0x0124a650
016e3580  orr w1,wzr,#0xfffffffe
016e3584  mov x0,x19
016e3588  bl 0x0124c0c0
016e358c  orr w1,wzr,#0xfffffffe
016e3590  mov x0,x19
016e3594  bl 0x0124e920
016e3598  mov w20,w0
016e359c  adrp x1,0x5766000
016e35a0  add x1,x1,#0x103
016e35a4  mov x0,x19
016e35a8  bl 0x0124f120
016e35ac  orr w1,wzr,#0xfffffffe
016e35b0  mov w2,#0x1
016e35b4  mov x0,x19
016e35b8  bl 0x0124cfc0
016e35bc  mov x0,x19
016e35c0  mov w1,w20
016e35c4  bl 0x0124e060
016e35c8  orr w1,wzr,#0xfffffffd
016e35cc  mov x0,x19
016e35d0  bl 0x0124c4d0
016e35d4  adrp x1,0x5766000
016e35d8  adrp x2,0x1855000
016e35dc  adrp x4,0x1855000
016e35e0  add x1,x1,#0x10d
016e35e4  add x2,x2,#0x464
016e35e8  add x4,x4,#0x46c
016e35ec  add x0,sp,#0x10
016e35f0  mov x3,xzr
016e35f4  mov x5,xzr
016e35f8  bl 0x0185527c
016e35fc  adrp x1,0x5766000
016e3600  adrp x2,0x1855000
016e3604  adrp x4,0x1855000
016e3608  add x1,x1,#0x11e
016e360c  add x2,x2,#0x65c
016e3610  add x4,x4,#0x664
016e3614  mov x3,xzr
016e3618  mov x5,xzr
016e361c  bl 0x01855474
016e3620  mov x19,x0
016e3624  ldr w8,[x19, #0x8]
016e3628  ldr x0,[x19]
016e362c  sub w8,w8,#0x3
016e3630  str w8,[x19, #0x8]
016e3634  orr w1,wzr,#0xfffffffc
016e3638  bl 0x0124c4d0
016e363c  ldr w8,[x19, #0x8]
016e3640  ldr x0,[x19]
016e3644  str wzr,[x19, #0x8]
016e3648  cmp w8,#0x1
016e364c  b.lt 0x016e3658
016e3650  mvn w1,w8
016e3654  bl 0x0124c4d0
016e3658  ldr w8,[sp, #0x18]
016e365c  cmp w8,#0x1
016e3660  b.lt 0x016e3670
016e3664  ldr x0,[sp, #0x10]
016e3668  mvn w1,w8
016e366c  bl 0x0124c4d0
016e3670  ldr w8,[sp, #0x8]
016e3674  cmp w8,#0x1
016e3678  b.lt 0x016e3688
016e367c  ldr x0,[sp]
016e3680  mvn w1,w8
016e3684  bl 0x0124c4d0
016e3688  ldp x29,x30,[sp, #0x30]
016e368c  ldp x20,x19,[sp, #0x20]
016e3690  add sp,sp,#0x40
016e3694  ret
