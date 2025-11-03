// ===== case557-ActorComponentFootPrint @ 016feb30 =====
// existing function case557-ActorComponentFootPrint
016feb30  sub sp,sp,#0x40
016feb34  stp x20,x19,[sp, #0x20]
016feb38  stp x29,x30,[sp, #0x30]
016feb3c  add x29,sp,#0x30
016feb40  adrp x1,0x174a000
016feb44  add x1,x1,#0x87c
016feb48  mov x19,x0
016feb4c  bl 0x0124ba40
016feb50  adrp x1,0x575d000
016feb54  add x1,x1,#0xa06
016feb58  mov x0,x19
016feb5c  str x19,[sp]
016feb60  bl 0x01251aa0
016feb64  mov w8,#0x1
016feb68  str w8,[sp, #0x8]
016feb6c  mov x0,sp
016feb70  bl 0x0174aa04
016feb74  adrp x1,0x5769000
016feb78  adrp x3,0x736d000
016feb7c  add x1,x1,#0x5a1
016feb80  add x3,x3,#0x101
016feb84  add x0,sp,#0x10
016feb88  mov x2,sp
016feb8c  bl 0x018ca42c
016feb90  ldr x0,[sp, #0x10]
016feb94  mov w1,#0x10
016feb98  bl 0x0124cba0
016feb9c  adrp x8,0x18ca000
016feba0  dup v0.2D,xzr
016feba4  add x8,x8,#0x22c
016feba8  mov v0.D[0x0],x8
016febac  str q0,[x0]
016febb0  ldr x0,[sp, #0x10]
016febb4  adrp x1,0x18ca000
016febb8  add x1,x1,#0x7f0
016febbc  mov w2,#0x1
016febc0  bl 0x0124ec90
016febc4  ldr x0,[sp, #0x10]
016febc8  mov w1,#0xffffffff
016febcc  bl 0x0124c0c0
016febd0  ldr x19,[sp, #0x10]
016febd4  orr w1,wzr,#0xfffffffb
016febd8  mov w2,#0x6e7
016febdc  mov x0,x19
016febe0  bl 0x0124a650
016febe4  orr w1,wzr,#0xfffffffe
016febe8  mov x0,x19
016febec  bl 0x0124c0c0
016febf0  orr w1,wzr,#0xfffffffe
016febf4  mov x0,x19
016febf8  bl 0x0124e920
016febfc  mov w20,w0
016fec00  adrp x1,0x5769000
016fec04  add x1,x1,#0x5b9
016fec08  mov x0,x19
016fec0c  bl 0x0124f120
016fec10  orr w1,wzr,#0xfffffffe
016fec14  mov w2,#0x1
016fec18  mov x0,x19
016fec1c  bl 0x0124cfc0
016fec20  mov x0,x19
016fec24  mov w1,w20
016fec28  bl 0x0124e060
016fec2c  orr w1,wzr,#0xfffffffd
016fec30  mov x0,x19
016fec34  bl 0x0124c4d0
016fec38  ldr x19,[sp, #0x10]
016fec3c  orr w1,wzr,#0xfffffffd
016fec40  mov w2,#0x6e7
016fec44  mov x0,x19
016fec48  bl 0x0124a650
016fec4c  orr w1,wzr,#0xfffffffe
016fec50  mov x0,x19
016fec54  bl 0x0124c0c0
016fec58  orr w1,wzr,#0xfffffffe
016fec5c  mov x0,x19
016fec60  bl 0x0124e920
016fec64  mov w20,w0
016fec68  adrp x1,0x5769000
016fec6c  add x1,x1,#0x5b9
016fec70  mov x0,x19
016fec74  bl 0x0124f120
016fec78  orr w1,wzr,#0xfffffffe
016fec7c  mov w2,#0x1
016fec80  mov x0,x19
016fec84  bl 0x0124cfc0
016fec88  mov x0,x19
016fec8c  mov w1,w20
016fec90  bl 0x0124e060
016fec94  orr w1,wzr,#0xfffffffd
016fec98  mov x0,x19
016fec9c  bl 0x0124c4d0
016feca0  adrp x1,0x5769000
016feca4  adrp x2,0x18ca000
016feca8  adrp x4,0x18ca000
016fecac  add x1,x1,#0x5c4
016fecb0  add x2,x2,#0x41c
016fecb4  add x4,x4,#0x424
016fecb8  add x0,sp,#0x10
016fecbc  mov x3,xzr
016fecc0  mov x5,xzr
016fecc4  bl 0x018ca234
016fecc8  mov x19,x0
016feccc  ldr w8,[x19, #0x8]
016fecd0  ldr x0,[x19]
016fecd4  sub w8,w8,#0x3
016fecd8  str w8,[x19, #0x8]
016fecdc  orr w1,wzr,#0xfffffffc
016fece0  bl 0x0124c4d0
016fece4  ldr w8,[x19, #0x8]
016fece8  ldr x0,[x19]
016fecec  str wzr,[x19, #0x8]
016fecf0  cmp w8,#0x1
016fecf4  b.lt 0x016fed00
016fecf8  mvn w1,w8
016fecfc  bl 0x0124c4d0
016fed00  ldr w8,[sp, #0x18]
016fed04  cmp w8,#0x1
016fed08  b.lt 0x016fed18
016fed0c  ldr x0,[sp, #0x10]
016fed10  mvn w1,w8
016fed14  bl 0x0124c4d0
016fed18  ldr w8,[sp, #0x8]
016fed1c  cmp w8,#0x1
016fed20  b.lt 0x016fed30
016fed24  ldr x0,[sp]
016fed28  mvn w1,w8
016fed2c  bl 0x0124c4d0
016fed30  ldp x29,x30,[sp, #0x30]
016fed34  ldp x20,x19,[sp, #0x20]
016fed38  add sp,sp,#0x40
016fed3c  ret
