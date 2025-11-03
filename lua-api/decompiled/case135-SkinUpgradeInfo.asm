// ===== case135-SkinUpgradeInfo @ 016a3210 =====
// existing function case135-SkinUpgradeInfo
016a3210  sub sp,sp,#0x40
016a3214  str x19,[sp, #0x20]
016a3218  stp x29,x30,[sp, #0x30]
016a321c  add x29,sp,#0x30
016a3220  adrp x1,0x174a000
016a3224  add x1,x1,#0x87c
016a3228  mov x19,x0
016a322c  bl 0x0124ba40
016a3230  adrp x1,0x575d000
016a3234  add x1,x1,#0xa06
016a3238  mov x0,x19
016a323c  str x19,[sp]
016a3240  bl 0x01251aa0
016a3244  mov w8,#0x1
016a3248  str w8,[sp, #0x8]
016a324c  mov x0,sp
016a3250  bl 0x0174aa04
016a3254  adrp x1,0x575f000
016a3258  adrp x3,0x736d000
016a325c  add x1,x1,#0xe36
016a3260  add x3,x3,#0x101
016a3264  add x0,sp,#0x10
016a3268  mov x2,sp
016a326c  bl 0x017992b4
016a3270  adrp x1,0x575f000
016a3274  adrp x2,0x1799000
016a3278  adrp x4,0x1799000
016a327c  add x1,x1,#0xe46
016a3280  add x2,x2,#0x284
016a3284  add x4,x4,#0x28c
016a3288  add x0,sp,#0x10
016a328c  mov x3,xzr
016a3290  mov x5,xzr
016a3294  bl 0x0179909c
016a3298  adrp x1,0x575f000
016a329c  adrp x2,0x1799000
016a32a0  adrp x4,0x1799000
016a32a4  add x1,x1,#0xe50
016a32a8  add x2,x2,#0x294
016a32ac  add x4,x4,#0x29c
016a32b0  mov x3,xzr
016a32b4  mov x5,xzr
016a32b8  bl 0x0179909c
016a32bc  adrp x1,0x575f000
016a32c0  adrp x2,0x1799000
016a32c4  adrp x4,0x1799000
016a32c8  add x1,x1,#0xe57
016a32cc  add x2,x2,#0x2a4
016a32d0  add x4,x4,#0x2ac
016a32d4  mov x3,xzr
016a32d8  mov x5,xzr
016a32dc  bl 0x0179909c
016a32e0  mov x19,x0
016a32e4  ldr w8,[x19, #0x8]
016a32e8  ldr x0,[x19]
016a32ec  sub w8,w8,#0x3
016a32f0  str w8,[x19, #0x8]
016a32f4  orr w1,wzr,#0xfffffffc
016a32f8  bl 0x0124c4d0
016a32fc  ldr w8,[x19, #0x8]
016a3300  ldr x0,[x19]
016a3304  str wzr,[x19, #0x8]
016a3308  cmp w8,#0x1
016a330c  b.lt 0x016a3318
016a3310  mvn w1,w8
016a3314  bl 0x0124c4d0
016a3318  ldr w8,[sp, #0x18]
016a331c  cmp w8,#0x1
016a3320  b.lt 0x016a3330
016a3324  ldr x0,[sp, #0x10]
016a3328  mvn w1,w8
016a332c  bl 0x0124c4d0
016a3330  ldr w8,[sp, #0x8]
016a3334  cmp w8,#0x1
016a3338  b.lt 0x016a3348
016a333c  ldr x0,[sp]
016a3340  mvn w1,w8
016a3344  bl 0x0124c4d0
016a3348  ldp x29,x30,[sp, #0x30]
016a334c  ldr x19,[sp, #0x20]
016a3350  add sp,sp,#0x40
016a3354  ret
