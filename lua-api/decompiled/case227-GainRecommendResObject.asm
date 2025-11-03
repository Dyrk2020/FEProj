// ===== case227-GainRecommendResObject @ 016b3504 =====
// existing function case227-GainRecommendResObject
016b3504  sub sp,sp,#0x40
016b3508  stp x20,x19,[sp, #0x20]
016b350c  stp x29,x30,[sp, #0x30]
016b3510  add x29,sp,#0x30
016b3514  adrp x1,0x174a000
016b3518  add x1,x1,#0x87c
016b351c  mov x19,x0
016b3520  bl 0x0124ba40
016b3524  adrp x1,0x575d000
016b3528  add x1,x1,#0xa06
016b352c  mov x0,x19
016b3530  str x19,[sp]
016b3534  bl 0x01251aa0
016b3538  mov w8,#0x1
016b353c  str w8,[sp, #0x8]
016b3540  mov x0,sp
016b3544  bl 0x0174aa04
016b3548  adrp x1,0x5761000
016b354c  adrp x3,0x736d000
016b3550  add x1,x1,#0x101
016b3554  add x3,x3,#0x101
016b3558  add x0,sp,#0x10
016b355c  mov x2,sp
016b3560  bl 0x017c8ea8
016b3564  ldr x0,[sp, #0x10]
016b3568  mov w1,#0x10
016b356c  bl 0x0124cba0
016b3570  adrp x8,0x17c8000
016b3574  dup v0.2D,xzr
016b3578  add x8,x8,#0xe98
016b357c  mov v0.D[0x0],x8
016b3580  str q0,[x0]
016b3584  ldr x0,[sp, #0x10]
016b3588  adrp x1,0x17c9000
016b358c  add x1,x1,#0x26c
016b3590  mov w2,#0x1
016b3594  bl 0x0124ec90
016b3598  ldr x0,[sp, #0x10]
016b359c  mov w1,#0xffffffff
016b35a0  bl 0x0124c0c0
016b35a4  ldr x19,[sp, #0x10]
016b35a8  orr w1,wzr,#0xfffffffb
016b35ac  mov w2,#0x6e7
016b35b0  mov x0,x19
016b35b4  bl 0x0124a650
016b35b8  orr w1,wzr,#0xfffffffe
016b35bc  mov x0,x19
016b35c0  bl 0x0124c0c0
016b35c4  orr w1,wzr,#0xfffffffe
016b35c8  mov x0,x19
016b35cc  bl 0x0124e920
016b35d0  mov w20,w0
016b35d4  adrp x1,0x575e000
016b35d8  add x1,x1,#0x56d
016b35dc  mov x0,x19
016b35e0  bl 0x0124f120
016b35e4  orr w1,wzr,#0xfffffffe
016b35e8  mov w2,#0x1
016b35ec  mov x0,x19
016b35f0  bl 0x0124cfc0
016b35f4  mov x0,x19
016b35f8  mov w1,w20
016b35fc  bl 0x0124e060
016b3600  orr w1,wzr,#0xfffffffd
016b3604  mov x0,x19
016b3608  bl 0x0124c4d0
016b360c  ldr x19,[sp, #0x10]
016b3610  orr w1,wzr,#0xfffffffd
016b3614  mov w2,#0x6e7
016b3618  mov x0,x19
016b361c  bl 0x0124a650
016b3620  orr w1,wzr,#0xfffffffe
016b3624  mov x0,x19
016b3628  bl 0x0124c0c0
016b362c  orr w1,wzr,#0xfffffffe
016b3630  mov x0,x19
016b3634  bl 0x0124e920
016b3638  mov w20,w0
016b363c  adrp x1,0x575e000
016b3640  add x1,x1,#0x56d
016b3644  mov x0,x19
016b3648  bl 0x0124f120
016b364c  orr w1,wzr,#0xfffffffe
016b3650  mov w2,#0x1
016b3654  mov x0,x19
016b3658  bl 0x0124cfc0
016b365c  mov x0,x19
016b3660  mov w1,w20
016b3664  bl 0x0124e060
016b3668  orr w1,wzr,#0xfffffffd
016b366c  mov x0,x19
016b3670  bl 0x0124c4d0
016b3674  ldr x0,[sp, #0x10]
016b3678  mov w1,#0x10
016b367c  bl 0x0124cba0
016b3680  adrp x8,0x17c8000
016b3684  dup v0.2D,xzr
016b3688  add x8,x8,#0xea0
016b368c  mov v0.D[0x0],x8
016b3690  str q0,[x0]
016b3694  ldr x0,[sp, #0x10]
016b3698  adrp x1,0x17c9000
016b369c  add x1,x1,#0x390
016b36a0  mov w2,#0x1
016b36a4  bl 0x0124ec90
016b36a8  ldr x0,[sp, #0x10]
016b36ac  mov w1,#0xffffffff
016b36b0  bl 0x0124c0c0
016b36b4  ldr x19,[sp, #0x10]
016b36b8  orr w1,wzr,#0xfffffffb
016b36bc  mov w2,#0x6e7
016b36c0  mov x0,x19
016b36c4  bl 0x0124a650
016b36c8  orr w1,wzr,#0xfffffffe
016b36cc  mov x0,x19
016b36d0  bl 0x0124c0c0
016b36d4  orr w1,wzr,#0xfffffffe
016b36d8  mov x0,x19
016b36dc  bl 0x0124e920
016b36e0  mov w20,w0
016b36e4  adrp x1,0x575e000
016b36e8  add x1,x1,#0x578
016b36ec  mov x0,x19
016b36f0  bl 0x0124f120
016b36f4  orr w1,wzr,#0xfffffffe
016b36f8  mov w2,#0x1
016b36fc  mov x0,x19
016b3700  bl 0x0124cfc0
016b3704  mov x0,x19
016b3708  mov w1,w20
016b370c  bl 0x0124e060
016b3710  orr w1,wzr,#0xfffffffd
016b3714  mov x0,x19
016b3718  bl 0x0124c4d0
016b371c  ldr x19,[sp, #0x10]
016b3720  orr w1,wzr,#0xfffffffd
016b3724  mov w2,#0x6e7
016b3728  mov x0,x19
016b372c  bl 0x0124a650
016b3730  orr w1,wzr,#0xfffffffe
016b3734  mov x0,x19
016b3738  bl 0x0124c0c0
016b373c  orr w1,wzr,#0xfffffffe
016b3740  mov x0,x19
016b3744  bl 0x0124e920
016b3748  mov w20,w0
016b374c  adrp x1,0x575e000
016b3750  add x1,x1,#0x578
016b3754  mov x0,x19
016b3758  bl 0x0124f120
016b375c  orr w1,wzr,#0xfffffffe
016b3760  mov w2,#0x1
016b3764  mov x0,x19
016b3768  bl 0x0124cfc0
016b376c  mov x0,x19
016b3770  mov w1,w20
016b3774  bl 0x0124e060
016b3778  orr w1,wzr,#0xfffffffd
016b377c  mov x0,x19
016b3780  bl 0x0124c4d0
016b3784  ldr w8,[sp, #0x18]
016b3788  ldr x0,[sp, #0x10]
016b378c  sub w8,w8,#0x3
016b3790  str w8,[sp, #0x18]
016b3794  orr w1,wzr,#0xfffffffc
016b3798  bl 0x0124c4d0
016b379c  ldr w8,[sp, #0x18]
016b37a0  ldr x0,[sp, #0x10]
016b37a4  str wzr,[sp, #0x18]
016b37a8  cmp w8,#0x1
016b37ac  b.lt 0x016b37d0
016b37b0  mvn w1,w8
016b37b4  bl 0x0124c4d0
016b37b8  ldr w8,[sp, #0x18]
016b37bc  cmp w8,#0x1
016b37c0  b.lt 0x016b37d0
016b37c4  ldr x0,[sp, #0x10]
016b37c8  mvn w1,w8
016b37cc  bl 0x0124c4d0
016b37d0  ldr w8,[sp, #0x8]
016b37d4  cmp w8,#0x1
016b37d8  b.lt 0x016b37e8
016b37dc  ldr x0,[sp]
016b37e0  mvn w1,w8
016b37e4  bl 0x0124c4d0
016b37e8  ldp x29,x30,[sp, #0x30]
016b37ec  ldp x20,x19,[sp, #0x20]
016b37f0  add sp,sp,#0x40
016b37f4  ret
