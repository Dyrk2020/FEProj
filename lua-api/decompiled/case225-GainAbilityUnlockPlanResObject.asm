// ===== case225-GainAbilityUnlockPlanResObject @ 016b3054 =====
// existing function case225-GainAbilityUnlockPlanResObject
016b3054  sub sp,sp,#0x40
016b3058  stp x20,x19,[sp, #0x20]
016b305c  stp x29,x30,[sp, #0x30]
016b3060  add x29,sp,#0x30
016b3064  adrp x1,0x174a000
016b3068  add x1,x1,#0x87c
016b306c  mov x19,x0
016b3070  bl 0x0124ba40
016b3074  adrp x1,0x575d000
016b3078  add x1,x1,#0xa06
016b307c  mov x0,x19
016b3080  str x19,[sp]
016b3084  bl 0x01251aa0
016b3088  mov w8,#0x1
016b308c  str w8,[sp, #0x8]
016b3090  mov x0,sp
016b3094  bl 0x0174aa04
016b3098  adrp x1,0x5761000
016b309c  adrp x3,0x736d000
016b30a0  add x1,x1,#0xc0
016b30a4  add x3,x3,#0x101
016b30a8  add x0,sp,#0x10
016b30ac  mov x2,sp
016b30b0  bl 0x017c80b0
016b30b4  ldr x0,[sp, #0x10]
016b30b8  mov w1,#0x10
016b30bc  bl 0x0124cba0
016b30c0  adrp x8,0x17c8000
016b30c4  dup v0.2D,xzr
016b30c8  add x8,x8,#0xa0
016b30cc  mov v0.D[0x0],x8
016b30d0  str q0,[x0]
016b30d4  ldr x0,[sp, #0x10]
016b30d8  adrp x1,0x17c8000
016b30dc  add x1,x1,#0x474
016b30e0  mov w2,#0x1
016b30e4  bl 0x0124ec90
016b30e8  ldr x0,[sp, #0x10]
016b30ec  mov w1,#0xffffffff
016b30f0  bl 0x0124c0c0
016b30f4  ldr x19,[sp, #0x10]
016b30f8  orr w1,wzr,#0xfffffffb
016b30fc  mov w2,#0x6e7
016b3100  mov x0,x19
016b3104  bl 0x0124a650
016b3108  orr w1,wzr,#0xfffffffe
016b310c  mov x0,x19
016b3110  bl 0x0124c0c0
016b3114  orr w1,wzr,#0xfffffffe
016b3118  mov x0,x19
016b311c  bl 0x0124e920
016b3120  mov w20,w0
016b3124  adrp x1,0x575e000
016b3128  add x1,x1,#0x56d
016b312c  mov x0,x19
016b3130  bl 0x0124f120
016b3134  orr w1,wzr,#0xfffffffe
016b3138  mov w2,#0x1
016b313c  mov x0,x19
016b3140  bl 0x0124cfc0
016b3144  mov x0,x19
016b3148  mov w1,w20
016b314c  bl 0x0124e060
016b3150  orr w1,wzr,#0xfffffffd
016b3154  mov x0,x19
016b3158  bl 0x0124c4d0
016b315c  ldr x19,[sp, #0x10]
016b3160  orr w1,wzr,#0xfffffffd
016b3164  mov w2,#0x6e7
016b3168  mov x0,x19
016b316c  bl 0x0124a650
016b3170  orr w1,wzr,#0xfffffffe
016b3174  mov x0,x19
016b3178  bl 0x0124c0c0
016b317c  orr w1,wzr,#0xfffffffe
016b3180  mov x0,x19
016b3184  bl 0x0124e920
016b3188  mov w20,w0
016b318c  adrp x1,0x575e000
016b3190  add x1,x1,#0x56d
016b3194  mov x0,x19
016b3198  bl 0x0124f120
016b319c  orr w1,wzr,#0xfffffffe
016b31a0  mov w2,#0x1
016b31a4  mov x0,x19
016b31a8  bl 0x0124cfc0
016b31ac  mov x0,x19
016b31b0  mov w1,w20
016b31b4  bl 0x0124e060
016b31b8  orr w1,wzr,#0xfffffffd
016b31bc  mov x0,x19
016b31c0  bl 0x0124c4d0
016b31c4  ldr x0,[sp, #0x10]
016b31c8  mov w1,#0x10
016b31cc  bl 0x0124cba0
016b31d0  adrp x8,0x17c8000
016b31d4  dup v0.2D,xzr
016b31d8  add x8,x8,#0xa8
016b31dc  mov v0.D[0x0],x8
016b31e0  str q0,[x0]
016b31e4  ldr x0,[sp, #0x10]
016b31e8  adrp x1,0x17c8000
016b31ec  add x1,x1,#0x598
016b31f0  mov w2,#0x1
016b31f4  bl 0x0124ec90
016b31f8  ldr x0,[sp, #0x10]
016b31fc  mov w1,#0xffffffff
016b3200  bl 0x0124c0c0
016b3204  ldr x19,[sp, #0x10]
016b3208  orr w1,wzr,#0xfffffffb
016b320c  mov w2,#0x6e7
016b3210  mov x0,x19
016b3214  bl 0x0124a650
016b3218  orr w1,wzr,#0xfffffffe
016b321c  mov x0,x19
016b3220  bl 0x0124c0c0
016b3224  orr w1,wzr,#0xfffffffe
016b3228  mov x0,x19
016b322c  bl 0x0124e920
016b3230  mov w20,w0
016b3234  adrp x1,0x575e000
016b3238  add x1,x1,#0x578
016b323c  mov x0,x19
016b3240  bl 0x0124f120
016b3244  orr w1,wzr,#0xfffffffe
016b3248  mov w2,#0x1
016b324c  mov x0,x19
016b3250  bl 0x0124cfc0
016b3254  mov x0,x19
016b3258  mov w1,w20
016b325c  bl 0x0124e060
016b3260  orr w1,wzr,#0xfffffffd
016b3264  mov x0,x19
016b3268  bl 0x0124c4d0
016b326c  ldr x19,[sp, #0x10]
016b3270  orr w1,wzr,#0xfffffffd
016b3274  mov w2,#0x6e7
016b3278  mov x0,x19
016b327c  bl 0x0124a650
016b3280  orr w1,wzr,#0xfffffffe
016b3284  mov x0,x19
016b3288  bl 0x0124c0c0
016b328c  orr w1,wzr,#0xfffffffe
016b3290  mov x0,x19
016b3294  bl 0x0124e920
016b3298  mov w20,w0
016b329c  adrp x1,0x575e000
016b32a0  add x1,x1,#0x578
016b32a4  mov x0,x19
016b32a8  bl 0x0124f120
016b32ac  orr w1,wzr,#0xfffffffe
016b32b0  mov w2,#0x1
016b32b4  mov x0,x19
016b32b8  bl 0x0124cfc0
016b32bc  mov x0,x19
016b32c0  mov w1,w20
016b32c4  bl 0x0124e060
016b32c8  orr w1,wzr,#0xfffffffd
016b32cc  mov x0,x19
016b32d0  bl 0x0124c4d0
016b32d4  ldr w8,[sp, #0x18]
016b32d8  ldr x0,[sp, #0x10]
016b32dc  sub w8,w8,#0x3
016b32e0  str w8,[sp, #0x18]
016b32e4  orr w1,wzr,#0xfffffffc
016b32e8  bl 0x0124c4d0
016b32ec  ldr w8,[sp, #0x18]
016b32f0  ldr x0,[sp, #0x10]
016b32f4  str wzr,[sp, #0x18]
016b32f8  cmp w8,#0x1
016b32fc  b.lt 0x016b3320
016b3300  mvn w1,w8
016b3304  bl 0x0124c4d0
016b3308  ldr w8,[sp, #0x18]
016b330c  cmp w8,#0x1
016b3310  b.lt 0x016b3320
016b3314  ldr x0,[sp, #0x10]
016b3318  mvn w1,w8
016b331c  bl 0x0124c4d0
016b3320  ldr w8,[sp, #0x8]
016b3324  cmp w8,#0x1
016b3328  b.lt 0x016b3338
016b332c  ldr x0,[sp]
016b3330  mvn w1,w8
016b3334  bl 0x0124c4d0
016b3338  ldp x29,x30,[sp, #0x30]
016b333c  ldp x20,x19,[sp, #0x20]
016b3340  add sp,sp,#0x40
016b3344  ret
