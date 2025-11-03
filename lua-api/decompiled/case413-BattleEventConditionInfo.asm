// ===== case413-BattleEventConditionInfo @ 016e36fc =====
// existing function case413-BattleEventConditionInfo
016e36fc  sub sp,sp,#0x40
016e3700  str x19,[sp, #0x20]
016e3704  stp x29,x30,[sp, #0x30]
016e3708  add x29,sp,#0x30
016e370c  adrp x1,0x174a000
016e3710  add x1,x1,#0x87c
016e3714  mov x19,x0
016e3718  bl 0x0124ba40
016e371c  adrp x1,0x575d000
016e3720  add x1,x1,#0xa06
016e3724  mov x0,x19
016e3728  str x19,[sp]
016e372c  bl 0x01251aa0
016e3730  mov w8,#0x1
016e3734  str w8,[sp, #0x8]
016e3738  mov x0,sp
016e373c  bl 0x0174aa04
016e3740  adrp x1,0x5766000
016e3744  adrp x3,0x736d000
016e3748  add x1,x1,#0x12c
016e374c  add x3,x3,#0x101
016e3750  add x0,sp,#0x10
016e3754  mov x2,sp
016e3758  bl 0x0185635c
016e375c  adrp x1,0x5766000
016e3760  adrp x2,0x1856000
016e3764  adrp x4,0x1856000
016e3768  add x1,x1,#0x145
016e376c  add x2,x2,#0x2cc
016e3770  add x4,x4,#0x2d4
016e3774  add x0,sp,#0x10
016e3778  mov x3,xzr
016e377c  mov x5,xzr
016e3780  bl 0x018560e4
016e3784  adrp x1,0x5766000
016e3788  adrp x2,0x1856000
016e378c  adrp x4,0x1856000
016e3790  add x1,x1,#0x152
016e3794  add x2,x2,#0x2dc
016e3798  add x4,x4,#0x2e4
016e379c  mov x3,xzr
016e37a0  mov x5,xzr
016e37a4  bl 0x018560e4
016e37a8  adrp x1,0x5766000
016e37ac  adrp x2,0x1856000
016e37b0  adrp x4,0x1856000
016e37b4  add x1,x1,#0x161
016e37b8  add x2,x2,#0x2ec
016e37bc  add x4,x4,#0x2f4
016e37c0  mov x3,xzr
016e37c4  mov x5,xzr
016e37c8  bl 0x018560e4
016e37cc  adrp x1,0x5766000
016e37d0  adrp x2,0x1856000
016e37d4  adrp x4,0x1856000
016e37d8  add x1,x1,#0x16f
016e37dc  add x2,x2,#0x2fc
016e37e0  add x4,x4,#0x304
016e37e4  mov x3,xzr
016e37e8  mov x5,xzr
016e37ec  bl 0x018560e4
016e37f0  adrp x1,0x5766000
016e37f4  adrp x2,0x1856000
016e37f8  adrp x4,0x1856000
016e37fc  add x1,x1,#0x186
016e3800  add x2,x2,#0x30c
016e3804  add x4,x4,#0x314
016e3808  mov x3,xzr
016e380c  mov x5,xzr
016e3810  bl 0x018560e4
016e3814  adrp x1,0x5766000
016e3818  adrp x2,0x1856000
016e381c  adrp x4,0x1856000
016e3820  add x1,x1,#0x197
016e3824  add x2,x2,#0x31c
016e3828  add x4,x4,#0x324
016e382c  mov x3,xzr
016e3830  mov x5,xzr
016e3834  bl 0x018560e4
016e3838  adrp x1,0x5766000
016e383c  adrp x2,0x1856000
016e3840  adrp x4,0x1856000
016e3844  add x1,x1,#0x1a8
016e3848  add x2,x2,#0x32c
016e384c  add x4,x4,#0x334
016e3850  mov x3,xzr
016e3854  mov x5,xzr
016e3858  bl 0x018560e4
016e385c  adrp x1,0x5766000
016e3860  adrp x2,0x1856000
016e3864  adrp x4,0x1856000
016e3868  add x1,x1,#0x1b9
016e386c  add x2,x2,#0x33c
016e3870  add x4,x4,#0x344
016e3874  mov x3,xzr
016e3878  mov x5,xzr
016e387c  bl 0x018560e4
016e3880  adrp x1,0x5766000
016e3884  adrp x2,0x1856000
016e3888  adrp x4,0x1856000
016e388c  add x1,x1,#0x1ca
016e3890  add x2,x2,#0x34c
016e3894  add x4,x4,#0x354
016e3898  mov x3,xzr
016e389c  mov x5,xzr
016e38a0  bl 0x018560e4
016e38a4  mov x19,x0
016e38a8  ldr w8,[x19, #0x8]
016e38ac  ldr x0,[x19]
016e38b0  sub w8,w8,#0x3
016e38b4  str w8,[x19, #0x8]
016e38b8  orr w1,wzr,#0xfffffffc
016e38bc  bl 0x0124c4d0
016e38c0  ldr w8,[x19, #0x8]
016e38c4  ldr x0,[x19]
016e38c8  str wzr,[x19, #0x8]
016e38cc  cmp w8,#0x1
016e38d0  b.lt 0x016e38dc
016e38d4  mvn w1,w8
016e38d8  bl 0x0124c4d0
016e38dc  ldr w8,[sp, #0x18]
016e38e0  cmp w8,#0x1
016e38e4  b.lt 0x016e38f4
016e38e8  ldr x0,[sp, #0x10]
016e38ec  mvn w1,w8
016e38f0  bl 0x0124c4d0
016e38f4  ldr w8,[sp, #0x8]
016e38f8  cmp w8,#0x1
016e38fc  b.lt 0x016e390c
016e3900  ldr x0,[sp]
016e3904  mvn w1,w8
016e3908  bl 0x0124c4d0
016e390c  ldp x29,x30,[sp, #0x30]
016e3910  ldr x19,[sp, #0x20]
016e3914  add sp,sp,#0x40
016e3918  ret
