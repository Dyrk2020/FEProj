// ===== case494-EvacuateDataMgr @ 016f3290 =====
// existing function case494-EvacuateDataMgr
016f3290  sub sp,sp,#0x40
016f3294  stp x20,x19,[sp, #0x20]
016f3298  stp x29,x30,[sp, #0x30]
016f329c  add x29,sp,#0x30
016f32a0  adrp x1,0x174a000
016f32a4  add x1,x1,#0x87c
016f32a8  mov x19,x0
016f32ac  bl 0x0124ba40
016f32b0  adrp x1,0x575d000
016f32b4  add x1,x1,#0xa06
016f32b8  mov x0,x19
016f32bc  str x19,[sp]
016f32c0  bl 0x01251aa0
016f32c4  mov w8,#0x1
016f32c8  str w8,[sp, #0x8]
016f32cc  mov x0,sp
016f32d0  bl 0x0174aa04
016f32d4  adrp x1,0x5767000
016f32d8  adrp x3,0x736d000
016f32dc  add x1,x1,#0xe86
016f32e0  add x3,x3,#0x101
016f32e4  add x0,sp,#0x10
016f32e8  mov x2,sp
016f32ec  bl 0x0188c2b4
016f32f0  ldr x0,[sp, #0x10]
016f32f4  mov w1,#0x10
016f32f8  bl 0x0124cba0
016f32fc  adrp x8,0x188c000
016f3300  dup v0.2D,xzr
016f3304  add x8,x8,#0xb4
016f3308  mov v0.D[0x0],x8
016f330c  str q0,[x0]
016f3310  ldr x0,[sp, #0x10]
016f3314  adrp x1,0x188c000
016f3318  add x1,x1,#0x678
016f331c  mov w2,#0x1
016f3320  bl 0x0124ec90
016f3324  ldr x0,[sp, #0x10]
016f3328  mov w1,#0xffffffff
016f332c  bl 0x0124c0c0
016f3330  ldr x19,[sp, #0x10]
016f3334  orr w1,wzr,#0xfffffffb
016f3338  mov w2,#0x6e7
016f333c  mov x0,x19
016f3340  bl 0x0124a650
016f3344  orr w1,wzr,#0xfffffffe
016f3348  mov x0,x19
016f334c  bl 0x0124c0c0
016f3350  orr w1,wzr,#0xfffffffe
016f3354  mov x0,x19
016f3358  bl 0x0124e920
016f335c  mov w20,w0
016f3360  adrp x1,0x5767000
016f3364  add x1,x1,#0xe96
016f3368  mov x0,x19
016f336c  bl 0x0124f120
016f3370  orr w1,wzr,#0xfffffffe
016f3374  mov w2,#0x1
016f3378  mov x0,x19
016f337c  bl 0x0124cfc0
016f3380  mov x0,x19
016f3384  mov w1,w20
016f3388  bl 0x0124e060
016f338c  orr w1,wzr,#0xfffffffd
016f3390  mov x0,x19
016f3394  bl 0x0124c4d0
016f3398  ldr x19,[sp, #0x10]
016f339c  orr w1,wzr,#0xfffffffd
016f33a0  mov w2,#0x6e7
016f33a4  mov x0,x19
016f33a8  bl 0x0124a650
016f33ac  orr w1,wzr,#0xfffffffe
016f33b0  mov x0,x19
016f33b4  bl 0x0124c0c0
016f33b8  orr w1,wzr,#0xfffffffe
016f33bc  mov x0,x19
016f33c0  bl 0x0124e920
016f33c4  mov w20,w0
016f33c8  adrp x1,0x5767000
016f33cc  add x1,x1,#0xe96
016f33d0  mov x0,x19
016f33d4  bl 0x0124f120
016f33d8  orr w1,wzr,#0xfffffffe
016f33dc  mov w2,#0x1
016f33e0  mov x0,x19
016f33e4  bl 0x0124cfc0
016f33e8  mov x0,x19
016f33ec  mov w1,w20
016f33f0  bl 0x0124e060
016f33f4  orr w1,wzr,#0xfffffffd
016f33f8  mov x0,x19
016f33fc  bl 0x0124c4d0
016f3400  adrp x1,0x5767000
016f3404  adrp x2,0x188c000
016f3408  adrp x4,0x188c000
016f340c  add x1,x1,#0xea4
016f3410  add x2,x2,#0x2a4
016f3414  add x4,x4,#0x2ac
016f3418  add x0,sp,#0x10
016f341c  mov x3,xzr
016f3420  mov x5,xzr
016f3424  bl 0x0188c0bc
016f3428  mov x19,x0
016f342c  ldr w8,[x19, #0x8]
016f3430  ldr x0,[x19]
016f3434  sub w8,w8,#0x3
016f3438  str w8,[x19, #0x8]
016f343c  orr w1,wzr,#0xfffffffc
016f3440  bl 0x0124c4d0
016f3444  ldr w8,[x19, #0x8]
016f3448  ldr x0,[x19]
016f344c  str wzr,[x19, #0x8]
016f3450  cmp w8,#0x1
016f3454  b.lt 0x016f3460
016f3458  mvn w1,w8
016f345c  bl 0x0124c4d0
016f3460  ldr w8,[sp, #0x18]
016f3464  cmp w8,#0x1
016f3468  b.lt 0x016f3478
016f346c  ldr x0,[sp, #0x10]
016f3470  mvn w1,w8
016f3474  bl 0x0124c4d0
016f3478  ldr w8,[sp, #0x8]
016f347c  cmp w8,#0x1
016f3480  b.lt 0x016f3490
016f3484  ldr x0,[sp]
016f3488  mvn w1,w8
016f348c  bl 0x0124c4d0
016f3490  ldp x29,x30,[sp, #0x30]
016f3494  ldp x20,x19,[sp, #0x20]
016f3498  add sp,sp,#0x40
016f349c  ret
