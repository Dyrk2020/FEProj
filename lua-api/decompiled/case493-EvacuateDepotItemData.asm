// ===== case493-EvacuateDepotItemData @ 016f3030 =====
// existing function case493-EvacuateDepotItemData
016f3030  sub sp,sp,#0x40
016f3034  str x19,[sp, #0x20]
016f3038  stp x29,x30,[sp, #0x30]
016f303c  add x29,sp,#0x30
016f3040  adrp x1,0x174a000
016f3044  add x1,x1,#0x87c
016f3048  mov x19,x0
016f304c  bl 0x0124ba40
016f3050  adrp x1,0x575d000
016f3054  add x1,x1,#0xa06
016f3058  mov x0,x19
016f305c  str x19,[sp]
016f3060  bl 0x01251aa0
016f3064  mov w8,#0x1
016f3068  str w8,[sp, #0x8]
016f306c  mov x0,sp
016f3070  bl 0x0174aa04
016f3074  adrp x1,0x5767000
016f3078  adrp x3,0x736d000
016f307c  add x1,x1,#0xe3b
016f3080  add x3,x3,#0x101
016f3084  add x0,sp,#0x10
016f3088  mov x2,sp
016f308c  bl 0x0188ac30
016f3090  adrp x1,0x575d000
016f3094  adrp x2,0x188a000
016f3098  adrp x4,0x188a000
016f309c  add x1,x1,#0xcd9
016f30a0  add x2,x2,#0x740
016f30a4  add x4,x4,#0x748
016f30a8  add x0,sp,#0x10
016f30ac  mov x3,xzr
016f30b0  mov x5,xzr
016f30b4  bl 0x0188a558
016f30b8  adrp x1,0x5767000
016f30bc  adrp x2,0x188a000
016f30c0  adrp x4,0x188a000
016f30c4  add x1,x1,#0xe51
016f30c8  add x2,x2,#0x94c
016f30cc  add x4,x4,#0x954
016f30d0  mov x3,xzr
016f30d4  mov x5,xzr
016f30d8  bl 0x0188a764
016f30dc  adrp x1,0x5760000
016f30e0  adrp x2,0x188a000
016f30e4  adrp x4,0x188a000
016f30e8  add x1,x1,#0xad4
016f30ec  add x2,x2,#0x970
016f30f0  add x4,x4,#0x978
016f30f4  mov x3,xzr
016f30f8  mov x5,xzr
016f30fc  bl 0x0188a558
016f3100  adrp x1,0x5767000
016f3104  adrp x2,0x188a000
016f3108  adrp x4,0x188a000
016f310c  add x1,x1,#0xe58
016f3110  add x2,x2,#0x994
016f3114  add x4,x4,#0x99c
016f3118  mov x3,xzr
016f311c  mov x5,xzr
016f3120  bl 0x0188a558
016f3124  adrp x1,0x5767000
016f3128  adrp x2,0x188a000
016f312c  adrp x4,0x188a000
016f3130  add x1,x1,#0xe60
016f3134  add x2,x2,#0xba0
016f3138  add x4,x4,#0xba8
016f313c  mov x3,xzr
016f3140  mov x5,xzr
016f3144  bl 0x0188a9b8
016f3148  adrp x1,0x59b2000
016f314c  adrp x2,0x188a000
016f3150  adrp x4,0x188a000
016f3154  add x1,x1,#0x1e7
016f3158  add x2,x2,#0xbc4
016f315c  add x4,x4,#0xbcc
016f3160  mov x3,xzr
016f3164  mov x5,xzr
016f3168  bl 0x0188a558
016f316c  adrp x1,0x5767000
016f3170  adrp x2,0x188a000
016f3174  adrp x4,0x188a000
016f3178  add x1,x1,#0xe6c
016f317c  add x2,x2,#0xbe8
016f3180  add x4,x4,#0xbf0
016f3184  mov x3,xzr
016f3188  mov x5,xzr
016f318c  bl 0x0188a558
016f3190  adrp x1,0x5767000
016f3194  adrp x2,0x188a000
016f3198  adrp x4,0x188a000
016f319c  add x1,x1,#0xe77
016f31a0  add x2,x2,#0xc0c
016f31a4  add x4,x4,#0xc14
016f31a8  mov x3,xzr
016f31ac  mov x5,xzr
016f31b0  bl 0x0188a558
016f31b4  mov x19,x0
016f31b8  ldr w8,[x19, #0x8]
016f31bc  ldr x0,[x19]
016f31c0  sub w8,w8,#0x3
016f31c4  str w8,[x19, #0x8]
016f31c8  orr w1,wzr,#0xfffffffc
016f31cc  bl 0x0124c4d0
016f31d0  ldr w8,[x19, #0x8]
016f31d4  ldr x0,[x19]
016f31d8  str wzr,[x19, #0x8]
016f31dc  cmp w8,#0x1
016f31e0  b.lt 0x016f31ec
016f31e4  mvn w1,w8
016f31e8  bl 0x0124c4d0
016f31ec  ldr w8,[sp, #0x18]
016f31f0  cmp w8,#0x1
016f31f4  b.lt 0x016f3204
016f31f8  ldr x0,[sp, #0x10]
016f31fc  mvn w1,w8
016f3200  bl 0x0124c4d0
016f3204  ldr w8,[sp, #0x8]
016f3208  cmp w8,#0x1
016f320c  b.lt 0x016f321c
016f3210  ldr x0,[sp]
016f3214  mvn w1,w8
016f3218  bl 0x0124c4d0
016f321c  ldp x29,x30,[sp, #0x30]
016f3220  ldr x19,[sp, #0x20]
016f3224  add sp,sp,#0x40
016f3228  ret
