// ===== case307-SLHeroPoolResObject @ 016bfcd0 =====
// existing function case307-SLHeroPoolResObject
016bfcd0  sub sp,sp,#0x40
016bfcd4  stp x20,x19,[sp, #0x20]
016bfcd8  stp x29,x30,[sp, #0x30]
016bfcdc  add x29,sp,#0x30
016bfce0  adrp x1,0x174a000
016bfce4  add x1,x1,#0x87c
016bfce8  mov x19,x0
016bfcec  bl 0x0124ba40
016bfcf0  adrp x1,0x575d000
016bfcf4  add x1,x1,#0xa06
016bfcf8  mov x0,x19
016bfcfc  str x19,[sp]
016bfd00  bl 0x01251aa0
016bfd04  mov w8,#0x1
016bfd08  str w8,[sp, #0x8]
016bfd0c  mov x0,sp
016bfd10  bl 0x0174aa04
016bfd14  adrp x1,0x5762000
016bfd18  adrp x3,0x736d000
016bfd1c  add x1,x1,#0x7e4
016bfd20  add x3,x3,#0x101
016bfd24  add x0,sp,#0x10
016bfd28  mov x2,sp
016bfd2c  bl 0x017f8f8c
016bfd30  ldr x0,[sp, #0x10]
016bfd34  mov w1,#0x10
016bfd38  bl 0x0124cba0
016bfd3c  adrp x8,0x17f8000
016bfd40  dup v0.2D,xzr
016bfd44  add x8,x8,#0xf84
016bfd48  mov v0.D[0x0],x8
016bfd4c  str q0,[x0]
016bfd50  ldr x0,[sp, #0x10]
016bfd54  adrp x1,0x17f9000
016bfd58  add x1,x1,#0x350
016bfd5c  mov w2,#0x1
016bfd60  bl 0x0124ec90
016bfd64  ldr x0,[sp, #0x10]
016bfd68  mov w1,#0xffffffff
016bfd6c  bl 0x0124c0c0
016bfd70  ldr x19,[sp, #0x10]
016bfd74  orr w1,wzr,#0xfffffffb
016bfd78  mov w2,#0x6e7
016bfd7c  mov x0,x19
016bfd80  bl 0x0124a650
016bfd84  orr w1,wzr,#0xfffffffe
016bfd88  mov x0,x19
016bfd8c  bl 0x0124c0c0
016bfd90  orr w1,wzr,#0xfffffffe
016bfd94  mov x0,x19
016bfd98  bl 0x0124e920
016bfd9c  mov w20,w0
016bfda0  adrp x1,0x5762000
016bfda4  add x1,x1,#0x7f8
016bfda8  mov x0,x19
016bfdac  bl 0x0124f120
016bfdb0  orr w1,wzr,#0xfffffffe
016bfdb4  mov w2,#0x1
016bfdb8  mov x0,x19
016bfdbc  bl 0x0124cfc0
016bfdc0  mov x0,x19
016bfdc4  mov w1,w20
016bfdc8  bl 0x0124e060
016bfdcc  orr w1,wzr,#0xfffffffd
016bfdd0  mov x0,x19
016bfdd4  bl 0x0124c4d0
016bfdd8  ldr x19,[sp, #0x10]
016bfddc  orr w1,wzr,#0xfffffffd
016bfde0  mov w2,#0x6e7
016bfde4  mov x0,x19
016bfde8  bl 0x0124a650
016bfdec  orr w1,wzr,#0xfffffffe
016bfdf0  mov x0,x19
016bfdf4  bl 0x0124c0c0
016bfdf8  orr w1,wzr,#0xfffffffe
016bfdfc  mov x0,x19
016bfe00  bl 0x0124e920
016bfe04  mov w20,w0
016bfe08  adrp x1,0x5762000
016bfe0c  add x1,x1,#0x7f8
016bfe10  mov x0,x19
016bfe14  bl 0x0124f120
016bfe18  orr w1,wzr,#0xfffffffe
016bfe1c  mov w2,#0x1
016bfe20  mov x0,x19
016bfe24  bl 0x0124cfc0
016bfe28  mov x0,x19
016bfe2c  mov w1,w20
016bfe30  bl 0x0124e060
016bfe34  orr w1,wzr,#0xfffffffd
016bfe38  mov x0,x19
016bfe3c  bl 0x0124c4d0
016bfe40  ldr w8,[sp, #0x18]
016bfe44  ldr x0,[sp, #0x10]
016bfe48  sub w8,w8,#0x3
016bfe4c  str w8,[sp, #0x18]
016bfe50  orr w1,wzr,#0xfffffffc
016bfe54  bl 0x0124c4d0
016bfe58  ldr w8,[sp, #0x18]
016bfe5c  ldr x0,[sp, #0x10]
016bfe60  str wzr,[sp, #0x18]
016bfe64  cmp w8,#0x1
016bfe68  b.lt 0x016bfe8c
016bfe6c  mvn w1,w8
016bfe70  bl 0x0124c4d0
016bfe74  ldr w8,[sp, #0x18]
016bfe78  cmp w8,#0x1
016bfe7c  b.lt 0x016bfe8c
016bfe80  ldr x0,[sp, #0x10]
016bfe84  mvn w1,w8
016bfe88  bl 0x0124c4d0
016bfe8c  ldr w8,[sp, #0x8]
016bfe90  cmp w8,#0x1
016bfe94  b.lt 0x016bfea4
016bfe98  ldr x0,[sp]
016bfe9c  mvn w1,w8
016bfea0  bl 0x0124c4d0
016bfea4  ldp x29,x30,[sp, #0x30]
016bfea8  ldp x20,x19,[sp, #0x20]
016bfeac  add sp,sp,#0x40
016bfeb0  ret
