// ===== case137-SkinReplaceResObject @ 016a3604 =====
// existing function case137-SkinReplaceResObject
016a3604  sub sp,sp,#0x40
016a3608  stp x20,x19,[sp, #0x20]
016a360c  stp x29,x30,[sp, #0x30]
016a3610  add x29,sp,#0x30
016a3614  adrp x1,0x174a000
016a3618  add x1,x1,#0x87c
016a361c  mov x19,x0
016a3620  bl 0x0124ba40
016a3624  adrp x1,0x575d000
016a3628  add x1,x1,#0xa06
016a362c  mov x0,x19
016a3630  str x19,[sp]
016a3634  bl 0x01251aa0
016a3638  mov w8,#0x1
016a363c  str w8,[sp, #0x8]
016a3640  mov x0,sp
016a3644  bl 0x0174aa04
016a3648  adrp x1,0x575f000
016a364c  adrp x3,0x736d000
016a3650  add x1,x1,#0xe77
016a3654  add x3,x3,#0x101
016a3658  add x0,sp,#0x10
016a365c  mov x2,sp
016a3660  bl 0x01799d98
016a3664  ldr x0,[sp, #0x10]
016a3668  mov w1,#0x10
016a366c  bl 0x0124cba0
016a3670  adrp x8,0x1799000
016a3674  dup v0.2D,xzr
016a3678  add x8,x8,#0xd88
016a367c  mov v0.D[0x0],x8
016a3680  str q0,[x0]
016a3684  ldr x0,[sp, #0x10]
016a3688  adrp x1,0x179a000
016a368c  add x1,x1,#0x15c
016a3690  mov w2,#0x1
016a3694  bl 0x0124ec90
016a3698  ldr x0,[sp, #0x10]
016a369c  mov w1,#0xffffffff
016a36a0  bl 0x0124c0c0
016a36a4  ldr x19,[sp, #0x10]
016a36a8  orr w1,wzr,#0xfffffffb
016a36ac  mov w2,#0x6e7
016a36b0  mov x0,x19
016a36b4  bl 0x0124a650
016a36b8  orr w1,wzr,#0xfffffffe
016a36bc  mov x0,x19
016a36c0  bl 0x0124c0c0
016a36c4  orr w1,wzr,#0xfffffffe
016a36c8  mov x0,x19
016a36cc  bl 0x0124e920
016a36d0  mov w20,w0
016a36d4  adrp x1,0x575e000
016a36d8  add x1,x1,#0x56d
016a36dc  mov x0,x19
016a36e0  bl 0x0124f120
016a36e4  orr w1,wzr,#0xfffffffe
016a36e8  mov w2,#0x1
016a36ec  mov x0,x19
016a36f0  bl 0x0124cfc0
016a36f4  mov x0,x19
016a36f8  mov w1,w20
016a36fc  bl 0x0124e060
016a3700  orr w1,wzr,#0xfffffffd
016a3704  mov x0,x19
016a3708  bl 0x0124c4d0
016a370c  ldr x19,[sp, #0x10]
016a3710  orr w1,wzr,#0xfffffffd
016a3714  mov w2,#0x6e7
016a3718  mov x0,x19
016a371c  bl 0x0124a650
016a3720  orr w1,wzr,#0xfffffffe
016a3724  mov x0,x19
016a3728  bl 0x0124c0c0
016a372c  orr w1,wzr,#0xfffffffe
016a3730  mov x0,x19
016a3734  bl 0x0124e920
016a3738  mov w20,w0
016a373c  adrp x1,0x575e000
016a3740  add x1,x1,#0x56d
016a3744  mov x0,x19
016a3748  bl 0x0124f120
016a374c  orr w1,wzr,#0xfffffffe
016a3750  mov w2,#0x1
016a3754  mov x0,x19
016a3758  bl 0x0124cfc0
016a375c  mov x0,x19
016a3760  mov w1,w20
016a3764  bl 0x0124e060
016a3768  orr w1,wzr,#0xfffffffd
016a376c  mov x0,x19
016a3770  bl 0x0124c4d0
016a3774  ldr x0,[sp, #0x10]
016a3778  mov w1,#0x10
016a377c  bl 0x0124cba0
016a3780  adrp x8,0x1799000
016a3784  dup v0.2D,xzr
016a3788  add x8,x8,#0xd90
016a378c  mov v0.D[0x0],x8
016a3790  str q0,[x0]
016a3794  ldr x0,[sp, #0x10]
016a3798  adrp x1,0x179a000
016a379c  add x1,x1,#0x280
016a37a0  mov w2,#0x1
016a37a4  bl 0x0124ec90
016a37a8  ldr x0,[sp, #0x10]
016a37ac  mov w1,#0xffffffff
016a37b0  bl 0x0124c0c0
016a37b4  ldr x19,[sp, #0x10]
016a37b8  orr w1,wzr,#0xfffffffb
016a37bc  mov w2,#0x6e7
016a37c0  mov x0,x19
016a37c4  bl 0x0124a650
016a37c8  orr w1,wzr,#0xfffffffe
016a37cc  mov x0,x19
016a37d0  bl 0x0124c0c0
016a37d4  orr w1,wzr,#0xfffffffe
016a37d8  mov x0,x19
016a37dc  bl 0x0124e920
016a37e0  mov w20,w0
016a37e4  adrp x1,0x575e000
016a37e8  add x1,x1,#0x578
016a37ec  mov x0,x19
016a37f0  bl 0x0124f120
016a37f4  orr w1,wzr,#0xfffffffe
016a37f8  mov w2,#0x1
016a37fc  mov x0,x19
016a3800  bl 0x0124cfc0
016a3804  mov x0,x19
016a3808  mov w1,w20
016a380c  bl 0x0124e060
016a3810  orr w1,wzr,#0xfffffffd
016a3814  mov x0,x19
016a3818  bl 0x0124c4d0
016a381c  ldr x19,[sp, #0x10]
016a3820  orr w1,wzr,#0xfffffffd
016a3824  mov w2,#0x6e7
016a3828  mov x0,x19
016a382c  bl 0x0124a650
016a3830  orr w1,wzr,#0xfffffffe
016a3834  mov x0,x19
016a3838  bl 0x0124c0c0
016a383c  orr w1,wzr,#0xfffffffe
016a3840  mov x0,x19
016a3844  bl 0x0124e920
016a3848  mov w20,w0
016a384c  adrp x1,0x575e000
016a3850  add x1,x1,#0x578
016a3854  mov x0,x19
016a3858  bl 0x0124f120
016a385c  orr w1,wzr,#0xfffffffe
016a3860  mov w2,#0x1
016a3864  mov x0,x19
016a3868  bl 0x0124cfc0
016a386c  mov x0,x19
016a3870  mov w1,w20
016a3874  bl 0x0124e060
016a3878  orr w1,wzr,#0xfffffffd
016a387c  mov x0,x19
016a3880  bl 0x0124c4d0
016a3884  ldr w8,[sp, #0x18]
016a3888  ldr x0,[sp, #0x10]
016a388c  sub w8,w8,#0x3
016a3890  str w8,[sp, #0x18]
016a3894  orr w1,wzr,#0xfffffffc
016a3898  bl 0x0124c4d0
016a389c  ldr w8,[sp, #0x18]
016a38a0  ldr x0,[sp, #0x10]
016a38a4  str wzr,[sp, #0x18]
016a38a8  cmp w8,#0x1
016a38ac  b.lt 0x016a38d0
016a38b0  mvn w1,w8
016a38b4  bl 0x0124c4d0
016a38b8  ldr w8,[sp, #0x18]
016a38bc  cmp w8,#0x1
016a38c0  b.lt 0x016a38d0
016a38c4  ldr x0,[sp, #0x10]
016a38c8  mvn w1,w8
016a38cc  bl 0x0124c4d0
016a38d0  ldr w8,[sp, #0x8]
016a38d4  cmp w8,#0x1
016a38d8  b.lt 0x016a38e8
016a38dc  ldr x0,[sp]
016a38e0  mvn w1,w8
016a38e4  bl 0x0124c4d0
016a38e8  ldp x29,x30,[sp, #0x30]
016a38ec  ldp x20,x19,[sp, #0x20]
016a38f0  add sp,sp,#0x40
016a38f4  ret
