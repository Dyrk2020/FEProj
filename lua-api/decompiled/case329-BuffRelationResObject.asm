// ===== case329-BuffRelationResObject @ 016c31b8 =====
// existing function case329-BuffRelationResObject
016c31b8  sub sp,sp,#0x40
016c31bc  stp x20,x19,[sp, #0x20]
016c31c0  stp x29,x30,[sp, #0x30]
016c31c4  add x29,sp,#0x30
016c31c8  adrp x1,0x174a000
016c31cc  add x1,x1,#0x87c
016c31d0  mov x19,x0
016c31d4  bl 0x0124ba40
016c31d8  adrp x1,0x575d000
016c31dc  add x1,x1,#0xa06
016c31e0  mov x0,x19
016c31e4  str x19,[sp]
016c31e8  bl 0x01251aa0
016c31ec  mov w8,#0x1
016c31f0  str w8,[sp, #0x8]
016c31f4  mov x0,sp
016c31f8  bl 0x0174aa04
016c31fc  adrp x1,0x5762000
016c3200  adrp x3,0x736d000
016c3204  add x1,x1,#0xd18
016c3208  add x3,x3,#0x101
016c320c  add x0,sp,#0x10
016c3210  mov x2,sp
016c3214  bl 0x01802598
016c3218  ldr x0,[sp, #0x10]
016c321c  mov w1,#0x10
016c3220  bl 0x0124cba0
016c3224  adrp x8,0x1802000
016c3228  dup v0.2D,xzr
016c322c  add x8,x8,#0x590
016c3230  mov v0.D[0x0],x8
016c3234  str q0,[x0]
016c3238  ldr x0,[sp, #0x10]
016c323c  adrp x1,0x1802000
016c3240  add x1,x1,#0x95c
016c3244  mov w2,#0x1
016c3248  bl 0x0124ec90
016c324c  ldr x0,[sp, #0x10]
016c3250  mov w1,#0xffffffff
016c3254  bl 0x0124c0c0
016c3258  ldr x19,[sp, #0x10]
016c325c  orr w1,wzr,#0xfffffffb
016c3260  mov w2,#0x6e7
016c3264  mov x0,x19
016c3268  bl 0x0124a650
016c326c  orr w1,wzr,#0xfffffffe
016c3270  mov x0,x19
016c3274  bl 0x0124c0c0
016c3278  orr w1,wzr,#0xfffffffe
016c327c  mov x0,x19
016c3280  bl 0x0124e920
016c3284  mov w20,w0
016c3288  adrp x1,0x5762000
016c328c  add x1,x1,#0xd0e
016c3290  mov x0,x19
016c3294  bl 0x0124f120
016c3298  orr w1,wzr,#0xfffffffe
016c329c  mov w2,#0x1
016c32a0  mov x0,x19
016c32a4  bl 0x0124cfc0
016c32a8  mov x0,x19
016c32ac  mov w1,w20
016c32b0  bl 0x0124e060
016c32b4  orr w1,wzr,#0xfffffffd
016c32b8  mov x0,x19
016c32bc  bl 0x0124c4d0
016c32c0  ldr x19,[sp, #0x10]
016c32c4  orr w1,wzr,#0xfffffffd
016c32c8  mov w2,#0x6e7
016c32cc  mov x0,x19
016c32d0  bl 0x0124a650
016c32d4  orr w1,wzr,#0xfffffffe
016c32d8  mov x0,x19
016c32dc  bl 0x0124c0c0
016c32e0  orr w1,wzr,#0xfffffffe
016c32e4  mov x0,x19
016c32e8  bl 0x0124e920
016c32ec  mov w20,w0
016c32f0  adrp x1,0x5762000
016c32f4  add x1,x1,#0xd0e
016c32f8  mov x0,x19
016c32fc  bl 0x0124f120
016c3300  orr w1,wzr,#0xfffffffe
016c3304  mov w2,#0x1
016c3308  mov x0,x19
016c330c  bl 0x0124cfc0
016c3310  mov x0,x19
016c3314  mov w1,w20
016c3318  bl 0x0124e060
016c331c  orr w1,wzr,#0xfffffffd
016c3320  mov x0,x19
016c3324  bl 0x0124c4d0
016c3328  ldr w8,[sp, #0x18]
016c332c  ldr x0,[sp, #0x10]
016c3330  sub w8,w8,#0x3
016c3334  str w8,[sp, #0x18]
016c3338  orr w1,wzr,#0xfffffffc
016c333c  bl 0x0124c4d0
016c3340  ldr w8,[sp, #0x18]
016c3344  ldr x0,[sp, #0x10]
016c3348  str wzr,[sp, #0x18]
016c334c  cmp w8,#0x1
016c3350  b.lt 0x016c3374
016c3354  mvn w1,w8
016c3358  bl 0x0124c4d0
016c335c  ldr w8,[sp, #0x18]
016c3360  cmp w8,#0x1
016c3364  b.lt 0x016c3374
016c3368  ldr x0,[sp, #0x10]
016c336c  mvn w1,w8
016c3370  bl 0x0124c4d0
016c3374  ldr w8,[sp, #0x8]
016c3378  cmp w8,#0x1
016c337c  b.lt 0x016c338c
016c3380  ldr x0,[sp]
016c3384  mvn w1,w8
016c3388  bl 0x0124c4d0
016c338c  ldp x29,x30,[sp, #0x30]
016c3390  ldp x20,x19,[sp, #0x20]
016c3394  add sp,sp,#0x40
016c3398  ret
