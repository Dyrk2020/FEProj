// ===== case389-GmLgcActionUtil @ 016dcdec =====
// existing function case389-GmLgcActionUtil
016dcdec  sub sp,sp,#0x40
016dcdf0  stp x20,x19,[sp, #0x20]
016dcdf4  stp x29,x30,[sp, #0x30]
016dcdf8  add x29,sp,#0x30
016dcdfc  adrp x1,0x174a000
016dce00  add x1,x1,#0x87c
016dce04  mov x19,x0
016dce08  bl 0x0124ba40
016dce0c  adrp x1,0x575d000
016dce10  add x1,x1,#0xa06
016dce14  mov x0,x19
016dce18  str x19,[sp]
016dce1c  bl 0x01251aa0
016dce20  mov w8,#0x1
016dce24  str w8,[sp, #0x8]
016dce28  mov x0,sp
016dce2c  bl 0x0174aa04
016dce30  adrp x1,0x5765000
016dce34  adrp x3,0x736d000
016dce38  add x1,x1,#0x40f
016dce3c  add x3,x3,#0x101
016dce40  add x0,sp,#0x10
016dce44  mov x2,sp
016dce48  bl 0x018409f4
016dce4c  ldr x0,[sp, #0x10]
016dce50  mov w1,#0x10
016dce54  bl 0x0124cba0
016dce58  adrp x8,0x1840000
016dce5c  dup v0.2D,xzr
016dce60  add x8,x8,#0x9ec
016dce64  mov v0.D[0x0],x8
016dce68  str q0,[x0]
016dce6c  ldr x0,[sp, #0x10]
016dce70  adrp x1,0x1840000
016dce74  add x1,x1,#0xdb8
016dce78  mov w2,#0x1
016dce7c  bl 0x0124ec90
016dce80  ldr x0,[sp, #0x10]
016dce84  mov w1,#0xffffffff
016dce88  bl 0x0124c0c0
016dce8c  ldr x19,[sp, #0x10]
016dce90  orr w1,wzr,#0xfffffffb
016dce94  mov w2,#0x6e7
016dce98  mov x0,x19
016dce9c  bl 0x0124a650
016dcea0  orr w1,wzr,#0xfffffffe
016dcea4  mov x0,x19
016dcea8  bl 0x0124c0c0
016dceac  orr w1,wzr,#0xfffffffe
016dceb0  mov x0,x19
016dceb4  bl 0x0124e920
016dceb8  mov w20,w0
016dcebc  adrp x1,0x5765000
016dcec0  add x1,x1,#0x41f
016dcec4  mov x0,x19
016dcec8  bl 0x0124f120
016dcecc  orr w1,wzr,#0xfffffffe
016dced0  mov w2,#0x1
016dced4  mov x0,x19
016dced8  bl 0x0124cfc0
016dcedc  mov x0,x19
016dcee0  mov w1,w20
016dcee4  bl 0x0124e060
016dcee8  orr w1,wzr,#0xfffffffd
016dceec  mov x0,x19
016dcef0  bl 0x0124c4d0
016dcef4  ldr x19,[sp, #0x10]
016dcef8  orr w1,wzr,#0xfffffffd
016dcefc  mov w2,#0x6e7
016dcf00  mov x0,x19
016dcf04  bl 0x0124a650
016dcf08  orr w1,wzr,#0xfffffffe
016dcf0c  mov x0,x19
016dcf10  bl 0x0124c0c0
016dcf14  orr w1,wzr,#0xfffffffe
016dcf18  mov x0,x19
016dcf1c  bl 0x0124e920
016dcf20  mov w20,w0
016dcf24  adrp x1,0x5765000
016dcf28  add x1,x1,#0x41f
016dcf2c  mov x0,x19
016dcf30  bl 0x0124f120
016dcf34  orr w1,wzr,#0xfffffffe
016dcf38  mov w2,#0x1
016dcf3c  mov x0,x19
016dcf40  bl 0x0124cfc0
016dcf44  mov x0,x19
016dcf48  mov w1,w20
016dcf4c  bl 0x0124e060
016dcf50  orr w1,wzr,#0xfffffffd
016dcf54  mov x0,x19
016dcf58  bl 0x0124c4d0
016dcf5c  ldr w8,[sp, #0x18]
016dcf60  ldr x0,[sp, #0x10]
016dcf64  sub w8,w8,#0x3
016dcf68  str w8,[sp, #0x18]
016dcf6c  orr w1,wzr,#0xfffffffc
016dcf70  bl 0x0124c4d0
016dcf74  ldr w8,[sp, #0x18]
016dcf78  ldr x0,[sp, #0x10]
016dcf7c  str wzr,[sp, #0x18]
016dcf80  cmp w8,#0x1
016dcf84  b.lt 0x016dcfa8
016dcf88  mvn w1,w8
016dcf8c  bl 0x0124c4d0
016dcf90  ldr w8,[sp, #0x18]
016dcf94  cmp w8,#0x1
016dcf98  b.lt 0x016dcfa8
016dcf9c  ldr x0,[sp, #0x10]
016dcfa0  mvn w1,w8
016dcfa4  bl 0x0124c4d0
016dcfa8  ldr w8,[sp, #0x8]
016dcfac  cmp w8,#0x1
016dcfb0  b.lt 0x016dcfc0
016dcfb4  ldr x0,[sp]
016dcfb8  mvn w1,w8
016dcfbc  bl 0x0124c4d0
016dcfc0  ldp x29,x30,[sp, #0x30]
016dcfc4  ldp x20,x19,[sp, #0x20]
016dcfc8  add sp,sp,#0x40
016dcfcc  ret
