// ===== case136-SkinUpgradeResObject @ 016a33bc =====
// existing function case136-SkinUpgradeResObject
016a33bc  sub sp,sp,#0x40
016a33c0  stp x20,x19,[sp, #0x20]
016a33c4  stp x29,x30,[sp, #0x30]
016a33c8  add x29,sp,#0x30
016a33cc  adrp x1,0x174a000
016a33d0  add x1,x1,#0x87c
016a33d4  mov x19,x0
016a33d8  bl 0x0124ba40
016a33dc  adrp x1,0x575d000
016a33e0  add x1,x1,#0xa06
016a33e4  mov x0,x19
016a33e8  str x19,[sp]
016a33ec  bl 0x01251aa0
016a33f0  mov w8,#0x1
016a33f4  str w8,[sp, #0x8]
016a33f8  mov x0,sp
016a33fc  bl 0x0174aa04
016a3400  adrp x1,0x575f000
016a3404  adrp x3,0x736d000
016a3408  add x1,x1,#0xe62
016a340c  add x3,x3,#0x101
016a3410  add x0,sp,#0x10
016a3414  mov x2,sp
016a3418  bl 0x017998a0
016a341c  ldr x0,[sp, #0x10]
016a3420  mov w1,#0x10
016a3424  bl 0x0124cba0
016a3428  adrp x8,0x1799000
016a342c  dup v0.2D,xzr
016a3430  add x8,x8,#0x898
016a3434  mov v0.D[0x0],x8
016a3438  str q0,[x0]
016a343c  ldr x0,[sp, #0x10]
016a3440  adrp x1,0x1799000
016a3444  add x1,x1,#0xc64
016a3448  mov w2,#0x1
016a344c  bl 0x0124ec90
016a3450  ldr x0,[sp, #0x10]
016a3454  mov w1,#0xffffffff
016a3458  bl 0x0124c0c0
016a345c  ldr x19,[sp, #0x10]
016a3460  orr w1,wzr,#0xfffffffb
016a3464  mov w2,#0x6e7
016a3468  mov x0,x19
016a346c  bl 0x0124a650
016a3470  orr w1,wzr,#0xfffffffe
016a3474  mov x0,x19
016a3478  bl 0x0124c0c0
016a347c  orr w1,wzr,#0xfffffffe
016a3480  mov x0,x19
016a3484  bl 0x0124e920
016a3488  mov w20,w0
016a348c  adrp x1,0x5765000
016a3490  add x1,x1,#0x66c
016a3494  mov x0,x19
016a3498  bl 0x0124f120
016a349c  orr w1,wzr,#0xfffffffe
016a34a0  mov w2,#0x1
016a34a4  mov x0,x19
016a34a8  bl 0x0124cfc0
016a34ac  mov x0,x19
016a34b0  mov w1,w20
016a34b4  bl 0x0124e060
016a34b8  orr w1,wzr,#0xfffffffd
016a34bc  mov x0,x19
016a34c0  bl 0x0124c4d0
016a34c4  ldr x19,[sp, #0x10]
016a34c8  orr w1,wzr,#0xfffffffd
016a34cc  mov w2,#0x6e7
016a34d0  mov x0,x19
016a34d4  bl 0x0124a650
016a34d8  orr w1,wzr,#0xfffffffe
016a34dc  mov x0,x19
016a34e0  bl 0x0124c0c0
016a34e4  orr w1,wzr,#0xfffffffe
016a34e8  mov x0,x19
016a34ec  bl 0x0124e920
016a34f0  mov w20,w0
016a34f4  adrp x1,0x5765000
016a34f8  add x1,x1,#0x66c
016a34fc  mov x0,x19
016a3500  bl 0x0124f120
016a3504  orr w1,wzr,#0xfffffffe
016a3508  mov w2,#0x1
016a350c  mov x0,x19
016a3510  bl 0x0124cfc0
016a3514  mov x0,x19
016a3518  mov w1,w20
016a351c  bl 0x0124e060
016a3520  orr w1,wzr,#0xfffffffd
016a3524  mov x0,x19
016a3528  bl 0x0124c4d0
016a352c  ldr w8,[sp, #0x18]
016a3530  ldr x0,[sp, #0x10]
016a3534  sub w8,w8,#0x3
016a3538  str w8,[sp, #0x18]
016a353c  orr w1,wzr,#0xfffffffc
016a3540  bl 0x0124c4d0
016a3544  ldr w8,[sp, #0x18]
016a3548  ldr x0,[sp, #0x10]
016a354c  str wzr,[sp, #0x18]
016a3550  cmp w8,#0x1
016a3554  b.lt 0x016a3578
016a3558  mvn w1,w8
016a355c  bl 0x0124c4d0
016a3560  ldr w8,[sp, #0x18]
016a3564  cmp w8,#0x1
016a3568  b.lt 0x016a3578
016a356c  ldr x0,[sp, #0x10]
016a3570  mvn w1,w8
016a3574  bl 0x0124c4d0
016a3578  ldr w8,[sp, #0x8]
016a357c  cmp w8,#0x1
016a3580  b.lt 0x016a3590
016a3584  ldr x0,[sp]
016a3588  mvn w1,w8
016a358c  bl 0x0124c4d0
016a3590  ldp x29,x30,[sp, #0x30]
016a3594  ldp x20,x19,[sp, #0x20]
016a3598  add sp,sp,#0x40
016a359c  ret
