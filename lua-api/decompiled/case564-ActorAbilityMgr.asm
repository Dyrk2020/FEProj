// ===== case564-ActorAbilityMgr @ 016ffa6c =====
// existing function case564-ActorAbilityMgr
016ffa6c  sub sp,sp,#0x40
016ffa70  stp x20,x19,[sp, #0x20]
016ffa74  stp x29,x30,[sp, #0x30]
016ffa78  add x29,sp,#0x30
016ffa7c  adrp x1,0x174a000
016ffa80  add x1,x1,#0x87c
016ffa84  mov x19,x0
016ffa88  bl 0x0124ba40
016ffa8c  adrp x1,0x575d000
016ffa90  add x1,x1,#0xa06
016ffa94  mov x0,x19
016ffa98  str x19,[sp]
016ffa9c  bl 0x01251aa0
016ffaa0  mov w8,#0x1
016ffaa4  str w8,[sp, #0x8]
016ffaa8  mov x0,sp
016ffaac  bl 0x0174aa04
016ffab0  adrp x1,0x5769000
016ffab4  adrp x3,0x736d000
016ffab8  add x1,x1,#0x6ad
016ffabc  add x3,x3,#0x101
016ffac0  add x0,sp,#0x10
016ffac4  mov x2,sp
016ffac8  bl 0x018d0140
016ffacc  ldr x0,[sp, #0x10]
016ffad0  mov w1,#0x10
016ffad4  bl 0x0124cba0
016ffad8  adrp x8,0x18d0000
016ffadc  dup v0.2D,xzr
016ffae0  add x8,x8,#0x138
016ffae4  mov v0.D[0x0],x8
016ffae8  str q0,[x0]
016ffaec  ldr x0,[sp, #0x10]
016ffaf0  adrp x1,0x18d0000
016ffaf4  add x1,x1,#0x504
016ffaf8  mov w2,#0x1
016ffafc  bl 0x0124ec90
016ffb00  ldr x0,[sp, #0x10]
016ffb04  mov w1,#0xffffffff
016ffb08  bl 0x0124c0c0
016ffb0c  ldr x19,[sp, #0x10]
016ffb10  orr w1,wzr,#0xfffffffb
016ffb14  mov w2,#0x6e7
016ffb18  mov x0,x19
016ffb1c  bl 0x0124a650
016ffb20  orr w1,wzr,#0xfffffffe
016ffb24  mov x0,x19
016ffb28  bl 0x0124c0c0
016ffb2c  orr w1,wzr,#0xfffffffe
016ffb30  mov x0,x19
016ffb34  bl 0x0124e920
016ffb38  mov w20,w0
016ffb3c  adrp x1,0x5762000
016ffb40  add x1,x1,#0x1cd
016ffb44  mov x0,x19
016ffb48  bl 0x0124f120
016ffb4c  orr w1,wzr,#0xfffffffe
016ffb50  mov w2,#0x1
016ffb54  mov x0,x19
016ffb58  bl 0x0124cfc0
016ffb5c  mov x0,x19
016ffb60  mov w1,w20
016ffb64  bl 0x0124e060
016ffb68  orr w1,wzr,#0xfffffffd
016ffb6c  mov x0,x19
016ffb70  bl 0x0124c4d0
016ffb74  ldr x19,[sp, #0x10]
016ffb78  orr w1,wzr,#0xfffffffd
016ffb7c  mov w2,#0x6e7
016ffb80  mov x0,x19
016ffb84  bl 0x0124a650
016ffb88  orr w1,wzr,#0xfffffffe
016ffb8c  mov x0,x19
016ffb90  bl 0x0124c0c0
016ffb94  orr w1,wzr,#0xfffffffe
016ffb98  mov x0,x19
016ffb9c  bl 0x0124e920
016ffba0  mov w20,w0
016ffba4  adrp x1,0x5762000
016ffba8  add x1,x1,#0x1cd
016ffbac  mov x0,x19
016ffbb0  bl 0x0124f120
016ffbb4  orr w1,wzr,#0xfffffffe
016ffbb8  mov w2,#0x1
016ffbbc  mov x0,x19
016ffbc0  bl 0x0124cfc0
016ffbc4  mov x0,x19
016ffbc8  mov w1,w20
016ffbcc  bl 0x0124e060
016ffbd0  orr w1,wzr,#0xfffffffd
016ffbd4  mov x0,x19
016ffbd8  bl 0x0124c4d0
016ffbdc  ldr w8,[sp, #0x18]
016ffbe0  ldr x0,[sp, #0x10]
016ffbe4  sub w8,w8,#0x3
016ffbe8  str w8,[sp, #0x18]
016ffbec  orr w1,wzr,#0xfffffffc
016ffbf0  bl 0x0124c4d0
016ffbf4  ldr w8,[sp, #0x18]
016ffbf8  ldr x0,[sp, #0x10]
016ffbfc  str wzr,[sp, #0x18]
016ffc00  cmp w8,#0x1
016ffc04  b.lt 0x016ffc28
016ffc08  mvn w1,w8
016ffc0c  bl 0x0124c4d0
016ffc10  ldr w8,[sp, #0x18]
016ffc14  cmp w8,#0x1
016ffc18  b.lt 0x016ffc28
016ffc1c  ldr x0,[sp, #0x10]
016ffc20  mvn w1,w8
016ffc24  bl 0x0124c4d0
016ffc28  ldr w8,[sp, #0x8]
016ffc2c  cmp w8,#0x1
016ffc30  b.lt 0x016ffc40
016ffc34  ldr x0,[sp]
016ffc38  mvn w1,w8
016ffc3c  bl 0x0124c4d0
016ffc40  ldp x29,x30,[sp, #0x30]
016ffc44  ldp x20,x19,[sp, #0x20]
016ffc48  add sp,sp,#0x40
016ffc4c  ret
