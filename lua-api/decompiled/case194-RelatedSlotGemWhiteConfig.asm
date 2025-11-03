// ===== case194-RelatedSlotGemWhiteConfig @ 016add18 =====
// existing function case194-RelatedSlotGemWhiteConfig
016add18  sub sp,sp,#0x50
016add1c  str x21,[sp, #0x20]
016add20  stp x20,x19,[sp, #0x30]
016add24  stp x29,x30,[sp, #0x40]
016add28  add x29,sp,#0x40
016add2c  adrp x1,0x174a000
016add30  add x1,x1,#0x87c
016add34  mov x19,x0
016add38  bl 0x0124ba40
016add3c  adrp x1,0x575d000
016add40  add x1,x1,#0xa06
016add44  mov x0,x19
016add48  str x19,[sp]
016add4c  bl 0x01251aa0
016add50  mov w8,#0x1
016add54  str w8,[sp, #0x8]
016add58  mov x0,sp
016add5c  bl 0x0174aa04
016add60  adrp x1,0x5760000
016add64  adrp x3,0x736d000
016add68  add x1,x1,#0xbb1
016add6c  add x3,x3,#0x101
016add70  add x0,sp,#0x10
016add74  mov x2,sp
016add78  bl 0x017b7f00
016add7c  adrp x1,0x5760000
016add80  adrp x2,0x17b7000
016add84  adrp x4,0x17b7000
016add88  add x1,x1,#0xb65
016add8c  add x2,x2,#0xee8
016add90  add x4,x4,#0xef0
016add94  add x0,sp,#0x10
016add98  mov x3,xzr
016add9c  mov x5,xzr
016adda0  bl 0x017b7d00
016adda4  mov x19,x0
016adda8  ldr x0,[x19]
016addac  mov w1,#0x10
016addb0  bl 0x0124cba0
016addb4  adrp x8,0x17b7000
016addb8  dup v0.2D,xzr
016addbc  add x8,x8,#0xef8
016addc0  mov v0.D[0x0],x8
016addc4  str q0,[x0]
016addc8  ldr x0,[x19]
016addcc  adrp x1,0x17b8000
016addd0  add x1,x1,#0x4e4
016addd4  mov w2,#0x1
016addd8  bl 0x0124ec90
016adddc  ldr x0,[x19]
016adde0  mov w1,#0xffffffff
016adde4  bl 0x0124c0c0
016adde8  ldr x20,[x19]
016addec  orr w1,wzr,#0xfffffffb
016addf0  mov w2,#0x6e7
016addf4  mov x0,x20
016addf8  bl 0x0124a650
016addfc  orr w1,wzr,#0xfffffffe
016ade00  mov x0,x20
016ade04  bl 0x0124c0c0
016ade08  orr w1,wzr,#0xfffffffe
016ade0c  mov x0,x20
016ade10  bl 0x0124e920
016ade14  mov w21,w0
016ade18  adrp x1,0x5760000
016ade1c  add x1,x1,#0xbcb
016ade20  mov x0,x20
016ade24  bl 0x0124f120
016ade28  orr w1,wzr,#0xfffffffe
016ade2c  mov w2,#0x1
016ade30  mov x0,x20
016ade34  bl 0x0124cfc0
016ade38  mov x0,x20
016ade3c  mov w1,w21
016ade40  bl 0x0124e060
016ade44  orr w1,wzr,#0xfffffffd
016ade48  mov x0,x20
016ade4c  bl 0x0124c4d0
016ade50  ldr x20,[x19]
016ade54  orr w1,wzr,#0xfffffffd
016ade58  mov w2,#0x6e7
016ade5c  mov x0,x20
016ade60  bl 0x0124a650
016ade64  orr w1,wzr,#0xfffffffe
016ade68  mov x0,x20
016ade6c  bl 0x0124c0c0
016ade70  orr w1,wzr,#0xfffffffe
016ade74  mov x0,x20
016ade78  bl 0x0124e920
016ade7c  mov w21,w0
016ade80  adrp x1,0x5760000
016ade84  add x1,x1,#0xbcb
016ade88  mov x0,x20
016ade8c  bl 0x0124f120
016ade90  orr w1,wzr,#0xfffffffe
016ade94  mov w2,#0x1
016ade98  mov x0,x20
016ade9c  bl 0x0124cfc0
016adea0  mov x0,x20
016adea4  mov w1,w21
016adea8  bl 0x0124e060
016adeac  orr w1,wzr,#0xfffffffd
016adeb0  mov x0,x20
016adeb4  bl 0x0124c4d0
016adeb8  ldr w8,[x19, #0x8]
016adebc  ldr x0,[x19]
016adec0  sub w8,w8,#0x3
016adec4  str w8,[x19, #0x8]
016adec8  orr w1,wzr,#0xfffffffc
016adecc  bl 0x0124c4d0
016aded0  ldr w8,[x19, #0x8]
016aded4  ldr x0,[x19]
016aded8  str wzr,[x19, #0x8]
016adedc  cmp w8,#0x1
016adee0  b.lt 0x016adeec
016adee4  mvn w1,w8
016adee8  bl 0x0124c4d0
016adeec  ldr w8,[sp, #0x18]
016adef0  cmp w8,#0x1
016adef4  b.lt 0x016adf04
016adef8  ldr x0,[sp, #0x10]
016adefc  mvn w1,w8
016adf00  bl 0x0124c4d0
016adf04  ldr w8,[sp, #0x8]
016adf08  cmp w8,#0x1
016adf0c  b.lt 0x016adf1c
016adf10  ldr x0,[sp]
016adf14  mvn w1,w8
016adf18  bl 0x0124c4d0
016adf1c  ldp x29,x30,[sp, #0x40]
016adf20  ldp x20,x19,[sp, #0x30]
016adf24  ldr x21,[sp, #0x20]
016adf28  add sp,sp,#0x50
016adf2c  ret
