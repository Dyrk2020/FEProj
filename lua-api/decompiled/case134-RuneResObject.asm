// ===== case134-RuneResObject @ 016a2f94 =====
// existing function case134-RuneResObject
016a2f94  sub sp,sp,#0x50
016a2f98  str x21,[sp, #0x20]
016a2f9c  stp x20,x19,[sp, #0x30]
016a2fa0  stp x29,x30,[sp, #0x40]
016a2fa4  add x29,sp,#0x40
016a2fa8  adrp x1,0x174a000
016a2fac  add x1,x1,#0x87c
016a2fb0  mov x19,x0
016a2fb4  bl 0x0124ba40
016a2fb8  adrp x1,0x575d000
016a2fbc  add x1,x1,#0xa06
016a2fc0  mov x0,x19
016a2fc4  str x19,[sp]
016a2fc8  bl 0x01251aa0
016a2fcc  mov w8,#0x1
016a2fd0  str w8,[sp, #0x8]
016a2fd4  mov x0,sp
016a2fd8  bl 0x0174aa04
016a2fdc  adrp x1,0x575f000
016a2fe0  adrp x3,0x736d000
016a2fe4  add x1,x1,#0xe19
016a2fe8  add x3,x3,#0x101
016a2fec  add x0,sp,#0x10
016a2ff0  mov x2,sp
016a2ff4  bl 0x01798994
016a2ff8  adrp x1,0x595c000
016a2ffc  adrp x2,0x1798000
016a3000  adrp x4,0x1798000
016a3004  add x1,x1,#0x9c4
016a3008  add x2,x2,#0x97c
016a300c  add x4,x4,#0x984
016a3010  add x0,sp,#0x10
016a3014  mov x3,xzr
016a3018  mov x5,xzr
016a301c  bl 0x01798794
016a3020  mov x19,x0
016a3024  ldr x0,[x19]
016a3028  mov w1,#0x10
016a302c  bl 0x0124cba0
016a3030  adrp x8,0x1798000
016a3034  dup v0.2D,xzr
016a3038  add x8,x8,#0x98c
016a303c  mov v0.D[0x0],x8
016a3040  str q0,[x0]
016a3044  ldr x0,[x19]
016a3048  adrp x1,0x1798000
016a304c  add x1,x1,#0xf78
016a3050  mov w2,#0x1
016a3054  bl 0x0124ec90
016a3058  ldr x0,[x19]
016a305c  mov w1,#0xffffffff
016a3060  bl 0x0124c0c0
016a3064  ldr x20,[x19]
016a3068  orr w1,wzr,#0xfffffffb
016a306c  mov w2,#0x6e7
016a3070  mov x0,x20
016a3074  bl 0x0124a650
016a3078  orr w1,wzr,#0xfffffffe
016a307c  mov x0,x20
016a3080  bl 0x0124c0c0
016a3084  orr w1,wzr,#0xfffffffe
016a3088  mov x0,x20
016a308c  bl 0x0124e920
016a3090  mov w21,w0
016a3094  adrp x1,0x575f000
016a3098  add x1,x1,#0xe27
016a309c  mov x0,x20
016a30a0  bl 0x0124f120
016a30a4  orr w1,wzr,#0xfffffffe
016a30a8  mov w2,#0x1
016a30ac  mov x0,x20
016a30b0  bl 0x0124cfc0
016a30b4  mov x0,x20
016a30b8  mov w1,w21
016a30bc  bl 0x0124e060
016a30c0  orr w1,wzr,#0xfffffffd
016a30c4  mov x0,x20
016a30c8  bl 0x0124c4d0
016a30cc  ldr x20,[x19]
016a30d0  orr w1,wzr,#0xfffffffd
016a30d4  mov w2,#0x6e7
016a30d8  mov x0,x20
016a30dc  bl 0x0124a650
016a30e0  orr w1,wzr,#0xfffffffe
016a30e4  mov x0,x20
016a30e8  bl 0x0124c0c0
016a30ec  orr w1,wzr,#0xfffffffe
016a30f0  mov x0,x20
016a30f4  bl 0x0124e920
016a30f8  mov w21,w0
016a30fc  adrp x1,0x575f000
016a3100  add x1,x1,#0xe27
016a3104  mov x0,x20
016a3108  bl 0x0124f120
016a310c  orr w1,wzr,#0xfffffffe
016a3110  mov w2,#0x1
016a3114  mov x0,x20
016a3118  bl 0x0124cfc0
016a311c  mov x0,x20
016a3120  mov w1,w21
016a3124  bl 0x0124e060
016a3128  orr w1,wzr,#0xfffffffd
016a312c  mov x0,x20
016a3130  bl 0x0124c4d0
016a3134  ldr w8,[x19, #0x8]
016a3138  ldr x0,[x19]
016a313c  sub w8,w8,#0x3
016a3140  str w8,[x19, #0x8]
016a3144  orr w1,wzr,#0xfffffffc
016a3148  bl 0x0124c4d0
016a314c  ldr w8,[x19, #0x8]
016a3150  ldr x0,[x19]
016a3154  str wzr,[x19, #0x8]
016a3158  cmp w8,#0x1
016a315c  b.lt 0x016a3168
016a3160  mvn w1,w8
016a3164  bl 0x0124c4d0
016a3168  ldr w8,[sp, #0x18]
016a316c  cmp w8,#0x1
016a3170  b.lt 0x016a3180
016a3174  ldr x0,[sp, #0x10]
016a3178  mvn w1,w8
016a317c  bl 0x0124c4d0
016a3180  ldr w8,[sp, #0x8]
016a3184  cmp w8,#0x1
016a3188  b.lt 0x016a3198
016a318c  ldr x0,[sp]
016a3190  mvn w1,w8
016a3194  bl 0x0124c4d0
016a3198  ldp x29,x30,[sp, #0x40]
016a319c  ldp x20,x19,[sp, #0x30]
016a31a0  ldr x21,[sp, #0x20]
016a31a4  add sp,sp,#0x50
016a31a8  ret
