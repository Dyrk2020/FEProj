// ===== case186-EvacuateDropSchemeResObject @ 016acad0 =====
// existing function case186-EvacuateDropSchemeResObject
016acad0  sub sp,sp,#0x40
016acad4  stp x20,x19,[sp, #0x20]
016acad8  stp x29,x30,[sp, #0x30]
016acadc  add x29,sp,#0x30
016acae0  adrp x1,0x174a000
016acae4  add x1,x1,#0x87c
016acae8  mov x19,x0
016acaec  bl 0x0124ba40
016acaf0  adrp x1,0x575d000
016acaf4  add x1,x1,#0xa06
016acaf8  mov x0,x19
016acafc  str x19,[sp]
016acb00  bl 0x01251aa0
016acb04  mov w8,#0x1
016acb08  str w8,[sp, #0x8]
016acb0c  mov x0,sp
016acb10  bl 0x0174aa04
016acb14  adrp x1,0x5760000
016acb18  adrp x3,0x736d000
016acb1c  add x1,x1,#0xaa0
016acb20  add x3,x3,#0x101
016acb24  add x0,sp,#0x10
016acb28  mov x2,sp
016acb2c  bl 0x017b41f8
016acb30  ldr x0,[sp, #0x10]
016acb34  mov w1,#0x10
016acb38  bl 0x0124cba0
016acb3c  adrp x8,0x17b4000
016acb40  dup v0.2D,xzr
016acb44  add x8,x8,#0x1e8
016acb48  mov v0.D[0x0],x8
016acb4c  str q0,[x0]
016acb50  ldr x0,[sp, #0x10]
016acb54  adrp x1,0x17b4000
016acb58  add x1,x1,#0x5bc
016acb5c  mov w2,#0x1
016acb60  bl 0x0124ec90
016acb64  ldr x0,[sp, #0x10]
016acb68  mov w1,#0xffffffff
016acb6c  bl 0x0124c0c0
016acb70  ldr x19,[sp, #0x10]
016acb74  orr w1,wzr,#0xfffffffb
016acb78  mov w2,#0x6e7
016acb7c  mov x0,x19
016acb80  bl 0x0124a650
016acb84  orr w1,wzr,#0xfffffffe
016acb88  mov x0,x19
016acb8c  bl 0x0124c0c0
016acb90  orr w1,wzr,#0xfffffffe
016acb94  mov x0,x19
016acb98  bl 0x0124e920
016acb9c  mov w20,w0
016acba0  adrp x1,0x575e000
016acba4  add x1,x1,#0x56d
016acba8  mov x0,x19
016acbac  bl 0x0124f120
016acbb0  orr w1,wzr,#0xfffffffe
016acbb4  mov w2,#0x1
016acbb8  mov x0,x19
016acbbc  bl 0x0124cfc0
016acbc0  mov x0,x19
016acbc4  mov w1,w20
016acbc8  bl 0x0124e060
016acbcc  orr w1,wzr,#0xfffffffd
016acbd0  mov x0,x19
016acbd4  bl 0x0124c4d0
016acbd8  ldr x19,[sp, #0x10]
016acbdc  orr w1,wzr,#0xfffffffd
016acbe0  mov w2,#0x6e7
016acbe4  mov x0,x19
016acbe8  bl 0x0124a650
016acbec  orr w1,wzr,#0xfffffffe
016acbf0  mov x0,x19
016acbf4  bl 0x0124c0c0
016acbf8  orr w1,wzr,#0xfffffffe
016acbfc  mov x0,x19
016acc00  bl 0x0124e920
016acc04  mov w20,w0
016acc08  adrp x1,0x575e000
016acc0c  add x1,x1,#0x56d
016acc10  mov x0,x19
016acc14  bl 0x0124f120
016acc18  orr w1,wzr,#0xfffffffe
016acc1c  mov w2,#0x1
016acc20  mov x0,x19
016acc24  bl 0x0124cfc0
016acc28  mov x0,x19
016acc2c  mov w1,w20
016acc30  bl 0x0124e060
016acc34  orr w1,wzr,#0xfffffffd
016acc38  mov x0,x19
016acc3c  bl 0x0124c4d0
016acc40  ldr x0,[sp, #0x10]
016acc44  mov w1,#0x10
016acc48  bl 0x0124cba0
016acc4c  adrp x8,0x17b4000
016acc50  dup v0.2D,xzr
016acc54  add x8,x8,#0x1f0
016acc58  mov v0.D[0x0],x8
016acc5c  str q0,[x0]
016acc60  ldr x0,[sp, #0x10]
016acc64  adrp x1,0x17b4000
016acc68  add x1,x1,#0x6e0
016acc6c  mov w2,#0x1
016acc70  bl 0x0124ec90
016acc74  ldr x0,[sp, #0x10]
016acc78  mov w1,#0xffffffff
016acc7c  bl 0x0124c0c0
016acc80  ldr x19,[sp, #0x10]
016acc84  orr w1,wzr,#0xfffffffb
016acc88  mov w2,#0x6e7
016acc8c  mov x0,x19
016acc90  bl 0x0124a650
016acc94  orr w1,wzr,#0xfffffffe
016acc98  mov x0,x19
016acc9c  bl 0x0124c0c0
016acca0  orr w1,wzr,#0xfffffffe
016acca4  mov x0,x19
016acca8  bl 0x0124e920
016accac  mov w20,w0
016accb0  adrp x1,0x575e000
016accb4  add x1,x1,#0x578
016accb8  mov x0,x19
016accbc  bl 0x0124f120
016accc0  orr w1,wzr,#0xfffffffe
016accc4  mov w2,#0x1
016accc8  mov x0,x19
016acccc  bl 0x0124cfc0
016accd0  mov x0,x19
016accd4  mov w1,w20
016accd8  bl 0x0124e060
016accdc  orr w1,wzr,#0xfffffffd
016acce0  mov x0,x19
016acce4  bl 0x0124c4d0
016acce8  ldr x19,[sp, #0x10]
016accec  orr w1,wzr,#0xfffffffd
016accf0  mov w2,#0x6e7
016accf4  mov x0,x19
016accf8  bl 0x0124a650
016accfc  orr w1,wzr,#0xfffffffe
016acd00  mov x0,x19
016acd04  bl 0x0124c0c0
016acd08  orr w1,wzr,#0xfffffffe
016acd0c  mov x0,x19
016acd10  bl 0x0124e920
016acd14  mov w20,w0
016acd18  adrp x1,0x575e000
016acd1c  add x1,x1,#0x578
016acd20  mov x0,x19
016acd24  bl 0x0124f120
016acd28  orr w1,wzr,#0xfffffffe
016acd2c  mov w2,#0x1
016acd30  mov x0,x19
016acd34  bl 0x0124cfc0
016acd38  mov x0,x19
016acd3c  mov w1,w20
016acd40  bl 0x0124e060
016acd44  orr w1,wzr,#0xfffffffd
016acd48  mov x0,x19
016acd4c  bl 0x0124c4d0
016acd50  ldr w8,[sp, #0x18]
016acd54  ldr x0,[sp, #0x10]
016acd58  sub w8,w8,#0x3
016acd5c  str w8,[sp, #0x18]
016acd60  orr w1,wzr,#0xfffffffc
016acd64  bl 0x0124c4d0
016acd68  ldr w8,[sp, #0x18]
016acd6c  ldr x0,[sp, #0x10]
016acd70  str wzr,[sp, #0x18]
016acd74  cmp w8,#0x1
016acd78  b.lt 0x016acd9c
016acd7c  mvn w1,w8
016acd80  bl 0x0124c4d0
016acd84  ldr w8,[sp, #0x18]
016acd88  cmp w8,#0x1
016acd8c  b.lt 0x016acd9c
016acd90  ldr x0,[sp, #0x10]
016acd94  mvn w1,w8
016acd98  bl 0x0124c4d0
016acd9c  ldr w8,[sp, #0x8]
016acda0  cmp w8,#0x1
016acda4  b.lt 0x016acdb4
016acda8  ldr x0,[sp]
016acdac  mvn w1,w8
016acdb0  bl 0x0124c4d0
016acdb4  ldp x29,x30,[sp, #0x30]
016acdb8  ldp x20,x19,[sp, #0x20]
016acdbc  add sp,sp,#0x40
016acdc0  ret
