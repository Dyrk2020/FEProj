// ===== case199-SkinSkillGemAddInfo @ 016aeba0 =====
// existing function case199-SkinSkillGemAddInfo
016aeba0  sub sp,sp,#0x40
016aeba4  stp x20,x19,[sp, #0x20]
016aeba8  stp x29,x30,[sp, #0x30]
016aebac  add x29,sp,#0x30
016aebb0  adrp x1,0x174a000
016aebb4  add x1,x1,#0x87c
016aebb8  mov x19,x0
016aebbc  bl 0x0124ba40
016aebc0  adrp x1,0x575d000
016aebc4  add x1,x1,#0xa06
016aebc8  mov x0,x19
016aebcc  str x19,[sp]
016aebd0  bl 0x01251aa0
016aebd4  mov w8,#0x1
016aebd8  str w8,[sp, #0x8]
016aebdc  mov x0,sp
016aebe0  bl 0x0174aa04
016aebe4  adrp x1,0x5760000
016aebe8  adrp x3,0x736d000
016aebec  add x1,x1,#0xcc0
016aebf0  add x3,x3,#0x101
016aebf4  add x0,sp,#0x10
016aebf8  mov x2,sp
016aebfc  bl 0x017ba488
016aec00  ldr x0,[sp, #0x10]
016aec04  mov w1,#0x10
016aec08  bl 0x0124cba0
016aec0c  adrp x8,0x17ba000
016aec10  dup v0.2D,xzr
016aec14  add x8,x8,#0x480
016aec18  mov v0.D[0x0],x8
016aec1c  str q0,[x0]
016aec20  ldr x0,[sp, #0x10]
016aec24  adrp x1,0x17ba000
016aec28  add x1,x1,#0x84c
016aec2c  mov w2,#0x1
016aec30  bl 0x0124ec90
016aec34  ldr x0,[sp, #0x10]
016aec38  mov w1,#0xffffffff
016aec3c  bl 0x0124c0c0
016aec40  ldr x19,[sp, #0x10]
016aec44  orr w1,wzr,#0xfffffffb
016aec48  mov w2,#0x6e7
016aec4c  mov x0,x19
016aec50  bl 0x0124a650
016aec54  orr w1,wzr,#0xfffffffe
016aec58  mov x0,x19
016aec5c  bl 0x0124c0c0
016aec60  orr w1,wzr,#0xfffffffe
016aec64  mov x0,x19
016aec68  bl 0x0124e920
016aec6c  mov w20,w0
016aec70  adrp x1,0x5760000
016aec74  add x1,x1,#0xcd4
016aec78  mov x0,x19
016aec7c  bl 0x0124f120
016aec80  orr w1,wzr,#0xfffffffe
016aec84  mov w2,#0x1
016aec88  mov x0,x19
016aec8c  bl 0x0124cfc0
016aec90  mov x0,x19
016aec94  mov w1,w20
016aec98  bl 0x0124e060
016aec9c  orr w1,wzr,#0xfffffffd
016aeca0  mov x0,x19
016aeca4  bl 0x0124c4d0
016aeca8  ldr x19,[sp, #0x10]
016aecac  orr w1,wzr,#0xfffffffd
016aecb0  mov w2,#0x6e7
016aecb4  mov x0,x19
016aecb8  bl 0x0124a650
016aecbc  orr w1,wzr,#0xfffffffe
016aecc0  mov x0,x19
016aecc4  bl 0x0124c0c0
016aecc8  orr w1,wzr,#0xfffffffe
016aeccc  mov x0,x19
016aecd0  bl 0x0124e920
016aecd4  mov w20,w0
016aecd8  adrp x1,0x5760000
016aecdc  add x1,x1,#0xcd4
016aece0  mov x0,x19
016aece4  bl 0x0124f120
016aece8  orr w1,wzr,#0xfffffffe
016aecec  mov w2,#0x1
016aecf0  mov x0,x19
016aecf4  bl 0x0124cfc0
016aecf8  mov x0,x19
016aecfc  mov w1,w20
016aed00  bl 0x0124e060
016aed04  orr w1,wzr,#0xfffffffd
016aed08  mov x0,x19
016aed0c  bl 0x0124c4d0
016aed10  ldr w8,[sp, #0x18]
016aed14  ldr x0,[sp, #0x10]
016aed18  sub w8,w8,#0x3
016aed1c  str w8,[sp, #0x18]
016aed20  orr w1,wzr,#0xfffffffc
016aed24  bl 0x0124c4d0
016aed28  ldr w8,[sp, #0x18]
016aed2c  ldr x0,[sp, #0x10]
016aed30  str wzr,[sp, #0x18]
016aed34  cmp w8,#0x1
016aed38  b.lt 0x016aed5c
016aed3c  mvn w1,w8
016aed40  bl 0x0124c4d0
016aed44  ldr w8,[sp, #0x18]
016aed48  cmp w8,#0x1
016aed4c  b.lt 0x016aed5c
016aed50  ldr x0,[sp, #0x10]
016aed54  mvn w1,w8
016aed58  bl 0x0124c4d0
016aed5c  ldr w8,[sp, #0x8]
016aed60  cmp w8,#0x1
016aed64  b.lt 0x016aed74
016aed68  ldr x0,[sp]
016aed6c  mvn w1,w8
016aed70  bl 0x0124c4d0
016aed74  ldp x29,x30,[sp, #0x30]
016aed78  ldp x20,x19,[sp, #0x20]
016aed7c  add sp,sp,#0x40
016aed80  ret
