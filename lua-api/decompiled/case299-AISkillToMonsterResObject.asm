// ===== case299-AISkillToMonsterResObject @ 016beb64 =====
// existing function case299-AISkillToMonsterResObject
016beb64  sub sp,sp,#0x40
016beb68  stp x20,x19,[sp, #0x20]
016beb6c  stp x29,x30,[sp, #0x30]
016beb70  add x29,sp,#0x30
016beb74  adrp x1,0x174a000
016beb78  add x1,x1,#0x87c
016beb7c  mov x19,x0
016beb80  bl 0x0124ba40
016beb84  adrp x1,0x575d000
016beb88  add x1,x1,#0xa06
016beb8c  mov x0,x19
016beb90  str x19,[sp]
016beb94  bl 0x01251aa0
016beb98  mov w8,#0x1
016beb9c  str w8,[sp, #0x8]
016beba0  mov x0,sp
016beba4  bl 0x0174aa04
016beba8  adrp x1,0x5762000
016bebac  adrp x3,0x736d000
016bebb0  add x1,x1,#0x69d
016bebb4  add x3,x3,#0x101
016bebb8  add x0,sp,#0x10
016bebbc  mov x2,sp
016bebc0  bl 0x017f531c
016bebc4  ldr x0,[sp, #0x10]
016bebc8  mov w1,#0x10
016bebcc  bl 0x0124cba0
016bebd0  adrp x8,0x17f5000
016bebd4  dup v0.2D,xzr
016bebd8  add x8,x8,#0x314
016bebdc  mov v0.D[0x0],x8
016bebe0  str q0,[x0]
016bebe4  ldr x0,[sp, #0x10]
016bebe8  adrp x1,0x17f5000
016bebec  add x1,x1,#0x6e0
016bebf0  mov w2,#0x1
016bebf4  bl 0x0124ec90
016bebf8  ldr x0,[sp, #0x10]
016bebfc  mov w1,#0xffffffff
016bec00  bl 0x0124c0c0
016bec04  ldr x19,[sp, #0x10]
016bec08  orr w1,wzr,#0xfffffffb
016bec0c  mov w2,#0x6e7
016bec10  mov x0,x19
016bec14  bl 0x0124a650
016bec18  orr w1,wzr,#0xfffffffe
016bec1c  mov x0,x19
016bec20  bl 0x0124c0c0
016bec24  orr w1,wzr,#0xfffffffe
016bec28  mov x0,x19
016bec2c  bl 0x0124e920
016bec30  mov w20,w0
016bec34  adrp x1,0x5762000
016bec38  add x1,x1,#0x6b7
016bec3c  mov x0,x19
016bec40  bl 0x0124f120
016bec44  orr w1,wzr,#0xfffffffe
016bec48  mov w2,#0x1
016bec4c  mov x0,x19
016bec50  bl 0x0124cfc0
016bec54  mov x0,x19
016bec58  mov w1,w20
016bec5c  bl 0x0124e060
016bec60  orr w1,wzr,#0xfffffffd
016bec64  mov x0,x19
016bec68  bl 0x0124c4d0
016bec6c  ldr x19,[sp, #0x10]
016bec70  orr w1,wzr,#0xfffffffd
016bec74  mov w2,#0x6e7
016bec78  mov x0,x19
016bec7c  bl 0x0124a650
016bec80  orr w1,wzr,#0xfffffffe
016bec84  mov x0,x19
016bec88  bl 0x0124c0c0
016bec8c  orr w1,wzr,#0xfffffffe
016bec90  mov x0,x19
016bec94  bl 0x0124e920
016bec98  mov w20,w0
016bec9c  adrp x1,0x5762000
016beca0  add x1,x1,#0x6b7
016beca4  mov x0,x19
016beca8  bl 0x0124f120
016becac  orr w1,wzr,#0xfffffffe
016becb0  mov w2,#0x1
016becb4  mov x0,x19
016becb8  bl 0x0124cfc0
016becbc  mov x0,x19
016becc0  mov w1,w20
016becc4  bl 0x0124e060
016becc8  orr w1,wzr,#0xfffffffd
016beccc  mov x0,x19
016becd0  bl 0x0124c4d0
016becd4  ldr w8,[sp, #0x18]
016becd8  ldr x0,[sp, #0x10]
016becdc  sub w8,w8,#0x3
016bece0  str w8,[sp, #0x18]
016bece4  orr w1,wzr,#0xfffffffc
016bece8  bl 0x0124c4d0
016becec  ldr w8,[sp, #0x18]
016becf0  ldr x0,[sp, #0x10]
016becf4  str wzr,[sp, #0x18]
016becf8  cmp w8,#0x1
016becfc  b.lt 0x016bed20
016bed00  mvn w1,w8
016bed04  bl 0x0124c4d0
016bed08  ldr w8,[sp, #0x18]
016bed0c  cmp w8,#0x1
016bed10  b.lt 0x016bed20
016bed14  ldr x0,[sp, #0x10]
016bed18  mvn w1,w8
016bed1c  bl 0x0124c4d0
016bed20  ldr w8,[sp, #0x8]
016bed24  cmp w8,#0x1
016bed28  b.lt 0x016bed38
016bed2c  ldr x0,[sp]
016bed30  mvn w1,w8
016bed34  bl 0x0124c4d0
016bed38  ldp x29,x30,[sp, #0x30]
016bed3c  ldp x20,x19,[sp, #0x20]
016bed40  add sp,sp,#0x40
016bed44  ret
