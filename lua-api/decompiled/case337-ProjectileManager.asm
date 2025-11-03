// ===== case337-ProjectileManager @ 016cdd1c =====
// existing function case337-ProjectileManager
016cdd1c  sub sp,sp,#0x40
016cdd20  stp x20,x19,[sp, #0x20]
016cdd24  stp x29,x30,[sp, #0x30]
016cdd28  add x29,sp,#0x30
016cdd2c  adrp x1,0x174a000
016cdd30  add x1,x1,#0x87c
016cdd34  mov x19,x0
016cdd38  bl 0x0124ba40
016cdd3c  adrp x1,0x575d000
016cdd40  add x1,x1,#0xa06
016cdd44  mov x0,x19
016cdd48  str x19,[sp]
016cdd4c  bl 0x01251aa0
016cdd50  mov w8,#0x1
016cdd54  str w8,[sp, #0x8]
016cdd58  mov x0,sp
016cdd5c  bl 0x0174aa04
016cdd60  adrp x1,0x5763000
016cdd64  adrp x3,0x736d000
016cdd68  add x1,x1,#0x8dd
016cdd6c  add x3,x3,#0x101
016cdd70  add x0,sp,#0x10
016cdd74  mov x2,sp
016cdd78  bl 0x0181219c
016cdd7c  ldr x0,[sp, #0x10]
016cdd80  mov w1,#0x10
016cdd84  bl 0x0124cba0
016cdd88  adrp x8,0x1812000
016cdd8c  dup v0.2D,xzr
016cdd90  add x8,x8,#0x194
016cdd94  mov v0.D[0x0],x8
016cdd98  str q0,[x0]
016cdd9c  ldr x0,[sp, #0x10]
016cdda0  adrp x1,0x1812000
016cdda4  add x1,x1,#0x560
016cdda8  mov w2,#0x1
016cddac  bl 0x0124ec90
016cddb0  ldr x0,[sp, #0x10]
016cddb4  mov w1,#0xffffffff
016cddb8  bl 0x0124c0c0
016cddbc  ldr x19,[sp, #0x10]
016cddc0  orr w1,wzr,#0xfffffffb
016cddc4  mov w2,#0x6e7
016cddc8  mov x0,x19
016cddcc  bl 0x0124a650
016cddd0  orr w1,wzr,#0xfffffffe
016cddd4  mov x0,x19
016cddd8  bl 0x0124c0c0
016cdddc  orr w1,wzr,#0xfffffffe
016cdde0  mov x0,x19
016cdde4  bl 0x0124e920
016cdde8  mov w20,w0
016cddec  adrp x1,0x5763000
016cddf0  add x1,x1,#0x8ef
016cddf4  mov x0,x19
016cddf8  bl 0x0124f120
016cddfc  orr w1,wzr,#0xfffffffe
016cde00  mov w2,#0x1
016cde04  mov x0,x19
016cde08  bl 0x0124cfc0
016cde0c  mov x0,x19
016cde10  mov w1,w20
016cde14  bl 0x0124e060
016cde18  orr w1,wzr,#0xfffffffd
016cde1c  mov x0,x19
016cde20  bl 0x0124c4d0
016cde24  ldr x19,[sp, #0x10]
016cde28  orr w1,wzr,#0xfffffffd
016cde2c  mov w2,#0x6e7
016cde30  mov x0,x19
016cde34  bl 0x0124a650
016cde38  orr w1,wzr,#0xfffffffe
016cde3c  mov x0,x19
016cde40  bl 0x0124c0c0
016cde44  orr w1,wzr,#0xfffffffe
016cde48  mov x0,x19
016cde4c  bl 0x0124e920
016cde50  mov w20,w0
016cde54  adrp x1,0x5763000
016cde58  add x1,x1,#0x8ef
016cde5c  mov x0,x19
016cde60  bl 0x0124f120
016cde64  orr w1,wzr,#0xfffffffe
016cde68  mov w2,#0x1
016cde6c  mov x0,x19
016cde70  bl 0x0124cfc0
016cde74  mov x0,x19
016cde78  mov w1,w20
016cde7c  bl 0x0124e060
016cde80  orr w1,wzr,#0xfffffffd
016cde84  mov x0,x19
016cde88  bl 0x0124c4d0
016cde8c  ldr w8,[sp, #0x18]
016cde90  ldr x0,[sp, #0x10]
016cde94  sub w8,w8,#0x3
016cde98  str w8,[sp, #0x18]
016cde9c  orr w1,wzr,#0xfffffffc
016cdea0  bl 0x0124c4d0
016cdea4  ldr w8,[sp, #0x18]
016cdea8  ldr x0,[sp, #0x10]
016cdeac  str wzr,[sp, #0x18]
016cdeb0  cmp w8,#0x1
016cdeb4  b.lt 0x016cded8
016cdeb8  mvn w1,w8
016cdebc  bl 0x0124c4d0
016cdec0  ldr w8,[sp, #0x18]
016cdec4  cmp w8,#0x1
016cdec8  b.lt 0x016cded8
016cdecc  ldr x0,[sp, #0x10]
016cded0  mvn w1,w8
016cded4  bl 0x0124c4d0
016cded8  ldr w8,[sp, #0x8]
016cdedc  cmp w8,#0x1
016cdee0  b.lt 0x016cdef0
016cdee4  ldr x0,[sp]
016cdee8  mvn w1,w8
016cdeec  bl 0x0124c4d0
016cdef0  ldp x29,x30,[sp, #0x30]
016cdef4  ldp x20,x19,[sp, #0x20]
016cdef8  add sp,sp,#0x40
016cdefc  ret
