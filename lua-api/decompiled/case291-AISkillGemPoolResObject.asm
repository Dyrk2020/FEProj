// ===== case291-AISkillGemPoolResObject @ 016bdbf4 =====
// existing function case291-AISkillGemPoolResObject
016bdbf4  sub sp,sp,#0x40
016bdbf8  stp x20,x19,[sp, #0x20]
016bdbfc  stp x29,x30,[sp, #0x30]
016bdc00  add x29,sp,#0x30
016bdc04  adrp x1,0x174a000
016bdc08  add x1,x1,#0x87c
016bdc0c  mov x19,x0
016bdc10  bl 0x0124ba40
016bdc14  adrp x1,0x575d000
016bdc18  add x1,x1,#0xa06
016bdc1c  mov x0,x19
016bdc20  str x19,[sp]
016bdc24  bl 0x01251aa0
016bdc28  mov w8,#0x1
016bdc2c  str w8,[sp, #0x8]
016bdc30  mov x0,sp
016bdc34  bl 0x0174aa04
016bdc38  adrp x1,0x5762000
016bdc3c  adrp x3,0x736d000
016bdc40  add x1,x1,#0x4e5
016bdc44  add x3,x3,#0x101
016bdc48  add x0,sp,#0x10
016bdc4c  mov x2,sp
016bdc50  bl 0x017f0ffc
016bdc54  ldr x0,[sp, #0x10]
016bdc58  mov w1,#0x10
016bdc5c  bl 0x0124cba0
016bdc60  adrp x8,0x17f0000
016bdc64  dup v0.2D,xzr
016bdc68  add x8,x8,#0xff4
016bdc6c  mov v0.D[0x0],x8
016bdc70  str q0,[x0]
016bdc74  ldr x0,[sp, #0x10]
016bdc78  adrp x1,0x17f1000
016bdc7c  add x1,x1,#0x3c0
016bdc80  mov w2,#0x1
016bdc84  bl 0x0124ec90
016bdc88  ldr x0,[sp, #0x10]
016bdc8c  mov w1,#0xffffffff
016bdc90  bl 0x0124c0c0
016bdc94  ldr x19,[sp, #0x10]
016bdc98  orr w1,wzr,#0xfffffffb
016bdc9c  mov w2,#0x6e7
016bdca0  mov x0,x19
016bdca4  bl 0x0124a650
016bdca8  orr w1,wzr,#0xfffffffe
016bdcac  mov x0,x19
016bdcb0  bl 0x0124c0c0
016bdcb4  orr w1,wzr,#0xfffffffe
016bdcb8  mov x0,x19
016bdcbc  bl 0x0124e920
016bdcc0  mov w20,w0
016bdcc4  adrp x1,0x5762000
016bdcc8  add x1,x1,#0x4fd
016bdccc  mov x0,x19
016bdcd0  bl 0x0124f120
016bdcd4  orr w1,wzr,#0xfffffffe
016bdcd8  mov w2,#0x1
016bdcdc  mov x0,x19
016bdce0  bl 0x0124cfc0
016bdce4  mov x0,x19
016bdce8  mov w1,w20
016bdcec  bl 0x0124e060
016bdcf0  orr w1,wzr,#0xfffffffd
016bdcf4  mov x0,x19
016bdcf8  bl 0x0124c4d0
016bdcfc  ldr x19,[sp, #0x10]
016bdd00  orr w1,wzr,#0xfffffffd
016bdd04  mov w2,#0x6e7
016bdd08  mov x0,x19
016bdd0c  bl 0x0124a650
016bdd10  orr w1,wzr,#0xfffffffe
016bdd14  mov x0,x19
016bdd18  bl 0x0124c0c0
016bdd1c  orr w1,wzr,#0xfffffffe
016bdd20  mov x0,x19
016bdd24  bl 0x0124e920
016bdd28  mov w20,w0
016bdd2c  adrp x1,0x5762000
016bdd30  add x1,x1,#0x4fd
016bdd34  mov x0,x19
016bdd38  bl 0x0124f120
016bdd3c  orr w1,wzr,#0xfffffffe
016bdd40  mov w2,#0x1
016bdd44  mov x0,x19
016bdd48  bl 0x0124cfc0
016bdd4c  mov x0,x19
016bdd50  mov w1,w20
016bdd54  bl 0x0124e060
016bdd58  orr w1,wzr,#0xfffffffd
016bdd5c  mov x0,x19
016bdd60  bl 0x0124c4d0
016bdd64  ldr w8,[sp, #0x18]
016bdd68  ldr x0,[sp, #0x10]
016bdd6c  sub w8,w8,#0x3
016bdd70  str w8,[sp, #0x18]
016bdd74  orr w1,wzr,#0xfffffffc
016bdd78  bl 0x0124c4d0
016bdd7c  ldr w8,[sp, #0x18]
016bdd80  ldr x0,[sp, #0x10]
016bdd84  str wzr,[sp, #0x18]
016bdd88  cmp w8,#0x1
016bdd8c  b.lt 0x016bddb0
016bdd90  mvn w1,w8
016bdd94  bl 0x0124c4d0
016bdd98  ldr w8,[sp, #0x18]
016bdd9c  cmp w8,#0x1
016bdda0  b.lt 0x016bddb0
016bdda4  ldr x0,[sp, #0x10]
016bdda8  mvn w1,w8
016bddac  bl 0x0124c4d0
016bddb0  ldr w8,[sp, #0x8]
016bddb4  cmp w8,#0x1
016bddb8  b.lt 0x016bddc8
016bddbc  ldr x0,[sp]
016bddc0  mvn w1,w8
016bddc4  bl 0x0124c4d0
016bddc8  ldp x29,x30,[sp, #0x30]
016bddcc  ldp x20,x19,[sp, #0x20]
016bddd0  add sp,sp,#0x40
016bddd4  ret
