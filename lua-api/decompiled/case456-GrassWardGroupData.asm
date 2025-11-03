// ===== case456-GrassWardGroupData @ 016eac98 =====
// existing function case456-GrassWardGroupData
016eac98  sub sp,sp,#0x50
016eac9c  str x21,[sp, #0x20]
016eaca0  stp x20,x19,[sp, #0x30]
016eaca4  stp x29,x30,[sp, #0x40]
016eaca8  add x29,sp,#0x40
016eacac  adrp x1,0x174a000
016eacb0  add x1,x1,#0x87c
016eacb4  mov x19,x0
016eacb8  bl 0x0124ba40
016eacbc  adrp x1,0x575d000
016eacc0  add x1,x1,#0xa06
016eacc4  mov x0,x19
016eacc8  str x19,[sp]
016eaccc  bl 0x01251aa0
016eacd0  mov w8,#0x1
016eacd4  str w8,[sp, #0x8]
016eacd8  mov x0,sp
016eacdc  bl 0x0174aa04
016eace0  adrp x1,0x5766000
016eace4  adrp x3,0x736d000
016eace8  add x1,x1,#0xb77
016eacec  add x3,x3,#0x101
016eacf0  add x0,sp,#0x10
016eacf4  mov x2,sp
016eacf8  bl 0x01870324
016eacfc  adrp x1,0x5766000
016ead00  adrp x2,0x1870000
016ead04  adrp x4,0x1870000
016ead08  add x1,x1,#0xb8a
016ead0c  add x2,x2,#0x30c
016ead10  add x4,x4,#0x314
016ead14  add x0,sp,#0x10
016ead18  mov x3,xzr
016ead1c  mov x5,xzr
016ead20  bl 0x01870124
016ead24  mov x19,x0
016ead28  ldr x0,[x19]
016ead2c  mov w1,#0x10
016ead30  bl 0x0124cba0
016ead34  adrp x8,0x1870000
016ead38  dup v0.2D,xzr
016ead3c  add x8,x8,#0x31c
016ead40  mov v0.D[0x0],x8
016ead44  str q0,[x0]
016ead48  ldr x0,[x19]
016ead4c  adrp x1,0x1870000
016ead50  add x1,x1,#0x908
016ead54  mov w2,#0x1
016ead58  bl 0x0124ec90
016ead5c  ldr x0,[x19]
016ead60  mov w1,#0xffffffff
016ead64  bl 0x0124c0c0
016ead68  ldr x20,[x19]
016ead6c  orr w1,wzr,#0xfffffffb
016ead70  mov w2,#0x6e7
016ead74  mov x0,x20
016ead78  bl 0x0124a650
016ead7c  orr w1,wzr,#0xfffffffe
016ead80  mov x0,x20
016ead84  bl 0x0124c0c0
016ead88  orr w1,wzr,#0xfffffffe
016ead8c  mov x0,x20
016ead90  bl 0x0124e920
016ead94  mov w21,w0
016ead98  adrp x1,0x5766000
016ead9c  add x1,x1,#0xb92
016eada0  mov x0,x20
016eada4  bl 0x0124f120
016eada8  orr w1,wzr,#0xfffffffe
016eadac  mov w2,#0x1
016eadb0  mov x0,x20
016eadb4  bl 0x0124cfc0
016eadb8  mov x0,x20
016eadbc  mov w1,w21
016eadc0  bl 0x0124e060
016eadc4  orr w1,wzr,#0xfffffffd
016eadc8  mov x0,x20
016eadcc  bl 0x0124c4d0
016eadd0  ldr x20,[x19]
016eadd4  orr w1,wzr,#0xfffffffd
016eadd8  mov w2,#0x6e7
016eaddc  mov x0,x20
016eade0  bl 0x0124a650
016eade4  orr w1,wzr,#0xfffffffe
016eade8  mov x0,x20
016eadec  bl 0x0124c0c0
016eadf0  orr w1,wzr,#0xfffffffe
016eadf4  mov x0,x20
016eadf8  bl 0x0124e920
016eadfc  mov w21,w0
016eae00  adrp x1,0x5766000
016eae04  add x1,x1,#0xb92
016eae08  mov x0,x20
016eae0c  bl 0x0124f120
016eae10  orr w1,wzr,#0xfffffffe
016eae14  mov w2,#0x1
016eae18  mov x0,x20
016eae1c  bl 0x0124cfc0
016eae20  mov x0,x20
016eae24  mov w1,w21
016eae28  bl 0x0124e060
016eae2c  orr w1,wzr,#0xfffffffd
016eae30  mov x0,x20
016eae34  bl 0x0124c4d0
016eae38  ldr w8,[x19, #0x8]
016eae3c  ldr x0,[x19]
016eae40  sub w8,w8,#0x3
016eae44  str w8,[x19, #0x8]
016eae48  orr w1,wzr,#0xfffffffc
016eae4c  bl 0x0124c4d0
016eae50  ldr w8,[x19, #0x8]
016eae54  ldr x0,[x19]
016eae58  str wzr,[x19, #0x8]
016eae5c  cmp w8,#0x1
016eae60  b.lt 0x016eae6c
016eae64  mvn w1,w8
016eae68  bl 0x0124c4d0
016eae6c  ldr w8,[sp, #0x18]
016eae70  cmp w8,#0x1
016eae74  b.lt 0x016eae84
016eae78  ldr x0,[sp, #0x10]
016eae7c  mvn w1,w8
016eae80  bl 0x0124c4d0
016eae84  ldr w8,[sp, #0x8]
016eae88  cmp w8,#0x1
016eae8c  b.lt 0x016eae9c
016eae90  ldr x0,[sp]
016eae94  mvn w1,w8
016eae98  bl 0x0124c4d0
016eae9c  ldp x29,x30,[sp, #0x40]
016eaea0  ldp x20,x19,[sp, #0x30]
016eaea4  ldr x21,[sp, #0x20]
016eaea8  add sp,sp,#0x50
016eaeac  ret
