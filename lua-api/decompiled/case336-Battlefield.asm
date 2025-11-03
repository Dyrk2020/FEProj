// ===== case336-Battlefield @ 016cdad4 =====
// existing function case336-Battlefield
016cdad4  sub sp,sp,#0x40
016cdad8  stp x20,x19,[sp, #0x20]
016cdadc  stp x29,x30,[sp, #0x30]
016cdae0  add x29,sp,#0x30
016cdae4  adrp x1,0x174a000
016cdae8  add x1,x1,#0x87c
016cdaec  mov x19,x0
016cdaf0  bl 0x0124ba40
016cdaf4  adrp x1,0x575d000
016cdaf8  add x1,x1,#0xa06
016cdafc  mov x0,x19
016cdb00  str x19,[sp]
016cdb04  bl 0x01251aa0
016cdb08  mov w8,#0x1
016cdb0c  str w8,[sp, #0x8]
016cdb10  mov x0,sp
016cdb14  bl 0x0174aa04
016cdb18  adrp x1,0x5763000
016cdb1c  adrp x3,0x736d000
016cdb20  add x1,x1,#0x8d1
016cdb24  add x3,x3,#0x101
016cdb28  add x0,sp,#0x10
016cdb2c  mov x2,sp
016cdb30  bl 0x01811cac
016cdb34  ldr x0,[sp, #0x10]
016cdb38  mov w1,#0x10
016cdb3c  bl 0x0124cba0
016cdb40  adrp x8,0x1811000
016cdb44  dup v0.2D,xzr
016cdb48  add x8,x8,#0xca4
016cdb4c  mov v0.D[0x0],x8
016cdb50  str q0,[x0]
016cdb54  ldr x0,[sp, #0x10]
016cdb58  adrp x1,0x1812000
016cdb5c  add x1,x1,#0x70
016cdb60  mov w2,#0x1
016cdb64  bl 0x0124ec90
016cdb68  ldr x0,[sp, #0x10]
016cdb6c  mov w1,#0xffffffff
016cdb70  bl 0x0124c0c0
016cdb74  ldr x19,[sp, #0x10]
016cdb78  orr w1,wzr,#0xfffffffb
016cdb7c  mov w2,#0x6e7
016cdb80  mov x0,x19
016cdb84  bl 0x0124a650
016cdb88  orr w1,wzr,#0xfffffffe
016cdb8c  mov x0,x19
016cdb90  bl 0x0124c0c0
016cdb94  orr w1,wzr,#0xfffffffe
016cdb98  mov x0,x19
016cdb9c  bl 0x0124e920
016cdba0  mov w20,w0
016cdba4  adrp x1,0x5763000
016cdba8  add x1,x1,#0x892
016cdbac  mov x0,x19
016cdbb0  bl 0x0124f120
016cdbb4  orr w1,wzr,#0xfffffffe
016cdbb8  mov w2,#0x1
016cdbbc  mov x0,x19
016cdbc0  bl 0x0124cfc0
016cdbc4  mov x0,x19
016cdbc8  mov w1,w20
016cdbcc  bl 0x0124e060
016cdbd0  orr w1,wzr,#0xfffffffd
016cdbd4  mov x0,x19
016cdbd8  bl 0x0124c4d0
016cdbdc  ldr x19,[sp, #0x10]
016cdbe0  orr w1,wzr,#0xfffffffd
016cdbe4  mov w2,#0x6e7
016cdbe8  mov x0,x19
016cdbec  bl 0x0124a650
016cdbf0  orr w1,wzr,#0xfffffffe
016cdbf4  mov x0,x19
016cdbf8  bl 0x0124c0c0
016cdbfc  orr w1,wzr,#0xfffffffe
016cdc00  mov x0,x19
016cdc04  bl 0x0124e920
016cdc08  mov w20,w0
016cdc0c  adrp x1,0x5763000
016cdc10  add x1,x1,#0x892
016cdc14  mov x0,x19
016cdc18  bl 0x0124f120
016cdc1c  orr w1,wzr,#0xfffffffe
016cdc20  mov w2,#0x1
016cdc24  mov x0,x19
016cdc28  bl 0x0124cfc0
016cdc2c  mov x0,x19
016cdc30  mov w1,w20
016cdc34  bl 0x0124e060
016cdc38  orr w1,wzr,#0xfffffffd
016cdc3c  mov x0,x19
016cdc40  bl 0x0124c4d0
016cdc44  ldr w8,[sp, #0x18]
016cdc48  ldr x0,[sp, #0x10]
016cdc4c  sub w8,w8,#0x3
016cdc50  str w8,[sp, #0x18]
016cdc54  orr w1,wzr,#0xfffffffc
016cdc58  bl 0x0124c4d0
016cdc5c  ldr w8,[sp, #0x18]
016cdc60  ldr x0,[sp, #0x10]
016cdc64  str wzr,[sp, #0x18]
016cdc68  cmp w8,#0x1
016cdc6c  b.lt 0x016cdc90
016cdc70  mvn w1,w8
016cdc74  bl 0x0124c4d0
016cdc78  ldr w8,[sp, #0x18]
016cdc7c  cmp w8,#0x1
016cdc80  b.lt 0x016cdc90
016cdc84  ldr x0,[sp, #0x10]
016cdc88  mvn w1,w8
016cdc8c  bl 0x0124c4d0
016cdc90  ldr w8,[sp, #0x8]
016cdc94  cmp w8,#0x1
016cdc98  b.lt 0x016cdca8
016cdc9c  ldr x0,[sp]
016cdca0  mvn w1,w8
016cdca4  bl 0x0124c4d0
016cdca8  ldp x29,x30,[sp, #0x30]
016cdcac  ldp x20,x19,[sp, #0x20]
016cdcb0  add sp,sp,#0x40
016cdcb4  ret
