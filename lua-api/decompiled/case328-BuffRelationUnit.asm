// ===== case328-BuffRelationUnit @ 016c2f70 =====
// existing function case328-BuffRelationUnit
016c2f70  sub sp,sp,#0x40
016c2f74  stp x20,x19,[sp, #0x20]
016c2f78  stp x29,x30,[sp, #0x30]
016c2f7c  add x29,sp,#0x30
016c2f80  adrp x1,0x174a000
016c2f84  add x1,x1,#0x87c
016c2f88  mov x19,x0
016c2f8c  bl 0x0124ba40
016c2f90  adrp x1,0x575d000
016c2f94  add x1,x1,#0xa06
016c2f98  mov x0,x19
016c2f9c  str x19,[sp]
016c2fa0  bl 0x01251aa0
016c2fa4  mov w8,#0x1
016c2fa8  str w8,[sp, #0x8]
016c2fac  mov x0,sp
016c2fb0  bl 0x0174aa04
016c2fb4  adrp x1,0x5762000
016c2fb8  adrp x3,0x736d000
016c2fbc  add x1,x1,#0xcfd
016c2fc0  add x3,x3,#0x101
016c2fc4  add x0,sp,#0x10
016c2fc8  mov x2,sp
016c2fcc  bl 0x018020a8
016c2fd0  ldr x0,[sp, #0x10]
016c2fd4  mov w1,#0x10
016c2fd8  bl 0x0124cba0
016c2fdc  adrp x8,0x1802000
016c2fe0  dup v0.2D,xzr
016c2fe4  add x8,x8,#0xa0
016c2fe8  mov v0.D[0x0],x8
016c2fec  str q0,[x0]
016c2ff0  ldr x0,[sp, #0x10]
016c2ff4  adrp x1,0x1802000
016c2ff8  add x1,x1,#0x46c
016c2ffc  mov w2,#0x1
016c3000  bl 0x0124ec90
016c3004  ldr x0,[sp, #0x10]
016c3008  mov w1,#0xffffffff
016c300c  bl 0x0124c0c0
016c3010  ldr x19,[sp, #0x10]
016c3014  orr w1,wzr,#0xfffffffb
016c3018  mov w2,#0x6e7
016c301c  mov x0,x19
016c3020  bl 0x0124a650
016c3024  orr w1,wzr,#0xfffffffe
016c3028  mov x0,x19
016c302c  bl 0x0124c0c0
016c3030  orr w1,wzr,#0xfffffffe
016c3034  mov x0,x19
016c3038  bl 0x0124e920
016c303c  mov w20,w0
016c3040  adrp x1,0x5762000
016c3044  add x1,x1,#0xd0e
016c3048  mov x0,x19
016c304c  bl 0x0124f120
016c3050  orr w1,wzr,#0xfffffffe
016c3054  mov w2,#0x1
016c3058  mov x0,x19
016c305c  bl 0x0124cfc0
016c3060  mov x0,x19
016c3064  mov w1,w20
016c3068  bl 0x0124e060
016c306c  orr w1,wzr,#0xfffffffd
016c3070  mov x0,x19
016c3074  bl 0x0124c4d0
016c3078  ldr x19,[sp, #0x10]
016c307c  orr w1,wzr,#0xfffffffd
016c3080  mov w2,#0x6e7
016c3084  mov x0,x19
016c3088  bl 0x0124a650
016c308c  orr w1,wzr,#0xfffffffe
016c3090  mov x0,x19
016c3094  bl 0x0124c0c0
016c3098  orr w1,wzr,#0xfffffffe
016c309c  mov x0,x19
016c30a0  bl 0x0124e920
016c30a4  mov w20,w0
016c30a8  adrp x1,0x5762000
016c30ac  add x1,x1,#0xd0e
016c30b0  mov x0,x19
016c30b4  bl 0x0124f120
016c30b8  orr w1,wzr,#0xfffffffe
016c30bc  mov w2,#0x1
016c30c0  mov x0,x19
016c30c4  bl 0x0124cfc0
016c30c8  mov x0,x19
016c30cc  mov w1,w20
016c30d0  bl 0x0124e060
016c30d4  orr w1,wzr,#0xfffffffd
016c30d8  mov x0,x19
016c30dc  bl 0x0124c4d0
016c30e0  ldr w8,[sp, #0x18]
016c30e4  ldr x0,[sp, #0x10]
016c30e8  sub w8,w8,#0x3
016c30ec  str w8,[sp, #0x18]
016c30f0  orr w1,wzr,#0xfffffffc
016c30f4  bl 0x0124c4d0
016c30f8  ldr w8,[sp, #0x18]
016c30fc  ldr x0,[sp, #0x10]
016c3100  str wzr,[sp, #0x18]
016c3104  cmp w8,#0x1
016c3108  b.lt 0x016c312c
016c310c  mvn w1,w8
016c3110  bl 0x0124c4d0
016c3114  ldr w8,[sp, #0x18]
016c3118  cmp w8,#0x1
016c311c  b.lt 0x016c312c
016c3120  ldr x0,[sp, #0x10]
016c3124  mvn w1,w8
016c3128  bl 0x0124c4d0
016c312c  ldr w8,[sp, #0x8]
016c3130  cmp w8,#0x1
016c3134  b.lt 0x016c3144
016c3138  ldr x0,[sp]
016c313c  mvn w1,w8
016c3140  bl 0x0124c4d0
016c3144  ldp x29,x30,[sp, #0x30]
016c3148  ldp x20,x19,[sp, #0x20]
016c314c  add sp,sp,#0x40
016c3150  ret
