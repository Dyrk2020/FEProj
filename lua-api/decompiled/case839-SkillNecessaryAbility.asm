// ===== case839-SkillNecessaryAbility @ 0173cac0 =====
// existing function case839-SkillNecessaryAbility
0173cac0  sub sp,sp,#0x40
0173cac4  stp x20,x19,[sp, #0x20]
0173cac8  stp x29,x30,[sp, #0x30]
0173cacc  add x29,sp,#0x30
0173cad0  adrp x1,0x174a000
0173cad4  add x1,x1,#0x87c
0173cad8  mov x19,x0
0173cadc  bl 0x0124ba40
0173cae0  adrp x1,0x575d000
0173cae4  add x1,x1,#0xa06
0173cae8  mov x0,x19
0173caec  str x19,[sp]
0173caf0  bl 0x01251aa0
0173caf4  mov w8,#0x1
0173caf8  str w8,[sp, #0x8]
0173cafc  mov x0,sp
0173cb00  bl 0x0174aa04
0173cb04  adrp x1,0x5772000
0173cb08  adrp x3,0x736d000
0173cb0c  add x1,x1,#0xef0
0173cb10  add x3,x3,#0x101
0173cb14  add x0,sp,#0x10
0173cb18  mov x2,sp
0173cb1c  bl 0x019de65c
0173cb20  ldr x0,[sp, #0x10]
0173cb24  mov w1,#0x10
0173cb28  bl 0x0124cba0
0173cb2c  adrp x8,0x19de000
0173cb30  dup v0.2D,xzr
0173cb34  add x8,x8,#0x41c
0173cb38  mov v0.D[0x0],x8
0173cb3c  str q0,[x0]
0173cb40  ldr x0,[sp, #0x10]
0173cb44  adrp x1,0x19de000
0173cb48  add x1,x1,#0xa20
0173cb4c  mov w2,#0x1
0173cb50  bl 0x0124ec90
0173cb54  ldr x0,[sp, #0x10]
0173cb58  mov w1,#0xffffffff
0173cb5c  bl 0x0124c0c0
0173cb60  ldr x19,[sp, #0x10]
0173cb64  orr w1,wzr,#0xfffffffb
0173cb68  mov w2,#0x6e7
0173cb6c  mov x0,x19
0173cb70  bl 0x0124a650
0173cb74  orr w1,wzr,#0xfffffffe
0173cb78  mov x0,x19
0173cb7c  bl 0x0124c0c0
0173cb80  orr w1,wzr,#0xfffffffe
0173cb84  mov x0,x19
0173cb88  bl 0x0124e920
0173cb8c  mov w20,w0
0173cb90  adrp x1,0x58ed000
0173cb94  add x1,x1,#0xd5e
0173cb98  mov x0,x19
0173cb9c  bl 0x0124f120
0173cba0  orr w1,wzr,#0xfffffffe
0173cba4  mov w2,#0x1
0173cba8  mov x0,x19
0173cbac  bl 0x0124cfc0
0173cbb0  mov x0,x19
0173cbb4  mov w1,w20
0173cbb8  bl 0x0124e060
0173cbbc  orr w1,wzr,#0xfffffffd
0173cbc0  mov x0,x19
0173cbc4  bl 0x0124c4d0
0173cbc8  ldr x19,[sp, #0x10]
0173cbcc  orr w1,wzr,#0xfffffffd
0173cbd0  mov w2,#0x6e7
0173cbd4  mov x0,x19
0173cbd8  bl 0x0124a650
0173cbdc  orr w1,wzr,#0xfffffffe
0173cbe0  mov x0,x19
0173cbe4  bl 0x0124c0c0
0173cbe8  orr w1,wzr,#0xfffffffe
0173cbec  mov x0,x19
0173cbf0  bl 0x0124e920
0173cbf4  mov w20,w0
0173cbf8  adrp x1,0x58ed000
0173cbfc  add x1,x1,#0xd5e
0173cc00  mov x0,x19
0173cc04  bl 0x0124f120
0173cc08  orr w1,wzr,#0xfffffffe
0173cc0c  mov w2,#0x1
0173cc10  mov x0,x19
0173cc14  bl 0x0124cfc0
0173cc18  mov x0,x19
0173cc1c  mov w1,w20
0173cc20  bl 0x0124e060
0173cc24  orr w1,wzr,#0xfffffffd
0173cc28  mov x0,x19
0173cc2c  bl 0x0124c4d0
0173cc30  ldr x0,[sp, #0x10]
0173cc34  mov w1,#0x10
0173cc38  bl 0x0124cba0
0173cc3c  adrp x8,0x19de000
0173cc40  dup v0.2D,xzr
0173cc44  add x8,x8,#0x424
0173cc48  mov v0.D[0x0],x8
0173cc4c  str q0,[x0]
0173cc50  ldr x0,[sp, #0x10]
0173cc54  adrp x1,0x19de000
0173cc58  add x1,x1,#0xb44
0173cc5c  mov w2,#0x1
0173cc60  bl 0x0124ec90
0173cc64  ldr x0,[sp, #0x10]
0173cc68  mov w1,#0xffffffff
0173cc6c  bl 0x0124c0c0
0173cc70  ldr x19,[sp, #0x10]
0173cc74  orr w1,wzr,#0xfffffffb
0173cc78  mov w2,#0x6e7
0173cc7c  mov x0,x19
0173cc80  bl 0x0124a650
0173cc84  orr w1,wzr,#0xfffffffe
0173cc88  mov x0,x19
0173cc8c  bl 0x0124c0c0
0173cc90  orr w1,wzr,#0xfffffffe
0173cc94  mov x0,x19
0173cc98  bl 0x0124e920
0173cc9c  mov w20,w0
0173cca0  adrp x1,0x575b000
0173cca4  add x1,x1,#0x5de
0173cca8  mov x0,x19
0173ccac  bl 0x0124f120
0173ccb0  orr w1,wzr,#0xfffffffe
0173ccb4  mov w2,#0x1
0173ccb8  mov x0,x19
0173ccbc  bl 0x0124cfc0
0173ccc0  mov x0,x19
0173ccc4  mov w1,w20
0173ccc8  bl 0x0124e060
0173cccc  orr w1,wzr,#0xfffffffd
0173ccd0  mov x0,x19
0173ccd4  bl 0x0124c4d0
0173ccd8  ldr x19,[sp, #0x10]
0173ccdc  orr w1,wzr,#0xfffffffd
0173cce0  mov w2,#0x6e7
0173cce4  mov x0,x19
0173cce8  bl 0x0124a650
0173ccec  orr w1,wzr,#0xfffffffe
0173ccf0  mov x0,x19
0173ccf4  bl 0x0124c0c0
0173ccf8  orr w1,wzr,#0xfffffffe
0173ccfc  mov x0,x19
0173cd00  bl 0x0124e920
0173cd04  mov w20,w0
0173cd08  adrp x1,0x575b000
0173cd0c  add x1,x1,#0x5de
0173cd10  mov x0,x19
0173cd14  bl 0x0124f120
0173cd18  orr w1,wzr,#0xfffffffe
0173cd1c  mov w2,#0x1
0173cd20  mov x0,x19
0173cd24  bl 0x0124cfc0
0173cd28  mov x0,x19
0173cd2c  mov w1,w20
0173cd30  bl 0x0124e060
0173cd34  orr w1,wzr,#0xfffffffd
0173cd38  mov x0,x19
0173cd3c  bl 0x0124c4d0
0173cd40  adrp x1,0x5772000
0173cd44  adrp x2,0x19de000
0173cd48  adrp x4,0x19de000
0173cd4c  add x1,x1,#0xf06
0173cd50  add x2,x2,#0x614
0173cd54  add x4,x4,#0x61c
0173cd58  add x0,sp,#0x10
0173cd5c  mov x3,xzr
0173cd60  mov x5,xzr
0173cd64  bl 0x019de42c
0173cd68  adrp x1,0x5772000
0173cd6c  adrp x2,0x19de000
0173cd70  adrp x4,0x19de000
0173cd74  add x1,x1,#0xf21
0173cd78  add x2,x2,#0x638
0173cd7c  add x4,x4,#0x640
0173cd80  mov x3,xzr
0173cd84  mov x5,xzr
0173cd88  bl 0x019de42c
0173cd8c  mov x19,x0
0173cd90  ldr w8,[x19, #0x8]
0173cd94  ldr x0,[x19]
0173cd98  sub w8,w8,#0x3
0173cd9c  str w8,[x19, #0x8]
0173cda0  orr w1,wzr,#0xfffffffc
0173cda4  bl 0x0124c4d0
0173cda8  ldr w8,[x19, #0x8]
0173cdac  ldr x0,[x19]
0173cdb0  str wzr,[x19, #0x8]
0173cdb4  cmp w8,#0x1
0173cdb8  b.lt 0x0173cdc4
0173cdbc  mvn w1,w8
0173cdc0  bl 0x0124c4d0
0173cdc4  ldr w8,[sp, #0x18]
0173cdc8  cmp w8,#0x1
0173cdcc  b.lt 0x0173cddc
0173cdd0  ldr x0,[sp, #0x10]
0173cdd4  mvn w1,w8
0173cdd8  bl 0x0124c4d0
0173cddc  ldr w8,[sp, #0x8]
0173cde0  cmp w8,#0x1
0173cde4  b.lt 0x0173cdf4
0173cde8  ldr x0,[sp]
0173cdec  mvn w1,w8
0173cdf0  bl 0x0124c4d0
0173cdf4  ldp x29,x30,[sp, #0x30]
0173cdf8  ldp x20,x19,[sp, #0x20]
0173cdfc  add sp,sp,#0x40
0173ce00  ret
