// ===== case193-SlotGemWhiteConfigItem @ 016adad0 =====
// existing function case193-SlotGemWhiteConfigItem
016adad0  sub sp,sp,#0x40
016adad4  stp x20,x19,[sp, #0x20]
016adad8  stp x29,x30,[sp, #0x30]
016adadc  add x29,sp,#0x30
016adae0  adrp x1,0x174a000
016adae4  add x1,x1,#0x87c
016adae8  mov x19,x0
016adaec  bl 0x0124ba40
016adaf0  adrp x1,0x575d000
016adaf4  add x1,x1,#0xa06
016adaf8  mov x0,x19
016adafc  str x19,[sp]
016adb00  bl 0x01251aa0
016adb04  mov w8,#0x1
016adb08  str w8,[sp, #0x8]
016adb0c  mov x0,sp
016adb10  bl 0x0174aa04
016adb14  adrp x1,0x5760000
016adb18  adrp x3,0x736d000
016adb1c  add x1,x1,#0xb9a
016adb20  add x3,x3,#0x101
016adb24  add x0,sp,#0x10
016adb28  mov x2,sp
016adb2c  bl 0x017b7818
016adb30  ldr x0,[sp, #0x10]
016adb34  mov w1,#0x10
016adb38  bl 0x0124cba0
016adb3c  adrp x8,0x17b7000
016adb40  dup v0.2D,xzr
016adb44  add x8,x8,#0x810
016adb48  mov v0.D[0x0],x8
016adb4c  str q0,[x0]
016adb50  ldr x0,[sp, #0x10]
016adb54  adrp x1,0x17b7000
016adb58  add x1,x1,#0xbdc
016adb5c  mov w2,#0x1
016adb60  bl 0x0124ec90
016adb64  ldr x0,[sp, #0x10]
016adb68  mov w1,#0xffffffff
016adb6c  bl 0x0124c0c0
016adb70  ldr x19,[sp, #0x10]
016adb74  orr w1,wzr,#0xfffffffb
016adb78  mov w2,#0x6e7
016adb7c  mov x0,x19
016adb80  bl 0x0124a650
016adb84  orr w1,wzr,#0xfffffffe
016adb88  mov x0,x19
016adb8c  bl 0x0124c0c0
016adb90  orr w1,wzr,#0xfffffffe
016adb94  mov x0,x19
016adb98  bl 0x0124e920
016adb9c  mov w20,w0
016adba0  adrp x1,0x5760000
016adba4  add x1,x1,#0xb45
016adba8  mov x0,x19
016adbac  bl 0x0124f120
016adbb0  orr w1,wzr,#0xfffffffe
016adbb4  mov w2,#0x1
016adbb8  mov x0,x19
016adbbc  bl 0x0124cfc0
016adbc0  mov x0,x19
016adbc4  mov w1,w20
016adbc8  bl 0x0124e060
016adbcc  orr w1,wzr,#0xfffffffd
016adbd0  mov x0,x19
016adbd4  bl 0x0124c4d0
016adbd8  ldr x19,[sp, #0x10]
016adbdc  orr w1,wzr,#0xfffffffd
016adbe0  mov w2,#0x6e7
016adbe4  mov x0,x19
016adbe8  bl 0x0124a650
016adbec  orr w1,wzr,#0xfffffffe
016adbf0  mov x0,x19
016adbf4  bl 0x0124c0c0
016adbf8  orr w1,wzr,#0xfffffffe
016adbfc  mov x0,x19
016adc00  bl 0x0124e920
016adc04  mov w20,w0
016adc08  adrp x1,0x5760000
016adc0c  add x1,x1,#0xb45
016adc10  mov x0,x19
016adc14  bl 0x0124f120
016adc18  orr w1,wzr,#0xfffffffe
016adc1c  mov w2,#0x1
016adc20  mov x0,x19
016adc24  bl 0x0124cfc0
016adc28  mov x0,x19
016adc2c  mov w1,w20
016adc30  bl 0x0124e060
016adc34  orr w1,wzr,#0xfffffffd
016adc38  mov x0,x19
016adc3c  bl 0x0124c4d0
016adc40  ldr w8,[sp, #0x18]
016adc44  ldr x0,[sp, #0x10]
016adc48  sub w8,w8,#0x3
016adc4c  str w8,[sp, #0x18]
016adc50  orr w1,wzr,#0xfffffffc
016adc54  bl 0x0124c4d0
016adc58  ldr w8,[sp, #0x18]
016adc5c  ldr x0,[sp, #0x10]
016adc60  str wzr,[sp, #0x18]
016adc64  cmp w8,#0x1
016adc68  b.lt 0x016adc8c
016adc6c  mvn w1,w8
016adc70  bl 0x0124c4d0
016adc74  ldr w8,[sp, #0x18]
016adc78  cmp w8,#0x1
016adc7c  b.lt 0x016adc8c
016adc80  ldr x0,[sp, #0x10]
016adc84  mvn w1,w8
016adc88  bl 0x0124c4d0
016adc8c  ldr w8,[sp, #0x8]
016adc90  cmp w8,#0x1
016adc94  b.lt 0x016adca4
016adc98  ldr x0,[sp]
016adc9c  mvn w1,w8
016adca0  bl 0x0124c4d0
016adca4  ldp x29,x30,[sp, #0x30]
016adca8  ldp x20,x19,[sp, #0x20]
016adcac  add sp,sp,#0x40
016adcb0  ret
