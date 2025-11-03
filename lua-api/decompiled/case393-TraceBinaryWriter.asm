// ===== case393-TraceBinaryWriter @ 016ddb30 =====
// existing function case393-TraceBinaryWriter
016ddb30  sub sp,sp,#0x40
016ddb34  str x19,[sp, #0x20]
016ddb38  stp x29,x30,[sp, #0x30]
016ddb3c  add x29,sp,#0x30
016ddb40  adrp x1,0x174a000
016ddb44  add x1,x1,#0x87c
016ddb48  mov x19,x0
016ddb4c  bl 0x0124ba40
016ddb50  adrp x1,0x575d000
016ddb54  add x1,x1,#0xa06
016ddb58  mov x0,x19
016ddb5c  str x19,[sp]
016ddb60  bl 0x01251aa0
016ddb64  mov w8,#0x1
016ddb68  str w8,[sp, #0x8]
016ddb6c  mov x0,sp
016ddb70  bl 0x0174aa04
016ddb74  adrp x1,0x5765000
016ddb78  adrp x3,0x736d000
016ddb7c  add x1,x1,#0x600
016ddb80  add x3,x3,#0x101
016ddb84  add x0,sp,#0x10
016ddb88  mov x2,sp
016ddb8c  bl 0x01843ee0
016ddb90  adrp x1,0x5765000
016ddb94  adrp x2,0x1843000
016ddb98  adrp x4,0x1843000
016ddb9c  add x1,x1,#0x612
016ddba0  add x2,x2,#0xec0
016ddba4  add x4,x4,#0xec8
016ddba8  add x0,sp,#0x10
016ddbac  mov x3,xzr
016ddbb0  mov x5,xzr
016ddbb4  bl 0x01843cd8
016ddbb8  adrp x1,0x5765000
016ddbbc  adrp x2,0x1843000
016ddbc0  adrp x4,0x1843000
016ddbc4  add x1,x1,#0x620
016ddbc8  add x2,x2,#0xed0
016ddbcc  add x4,x4,#0xed8
016ddbd0  mov x3,xzr
016ddbd4  mov x5,xzr
016ddbd8  bl 0x01843cd8
016ddbdc  mov x19,x0
016ddbe0  ldr w8,[x19, #0x8]
016ddbe4  ldr x0,[x19]
016ddbe8  sub w8,w8,#0x3
016ddbec  str w8,[x19, #0x8]
016ddbf0  orr w1,wzr,#0xfffffffc
016ddbf4  bl 0x0124c4d0
016ddbf8  ldr w8,[x19, #0x8]
016ddbfc  ldr x0,[x19]
016ddc00  str wzr,[x19, #0x8]
016ddc04  cmp w8,#0x1
016ddc08  b.lt 0x016ddc14
016ddc0c  mvn w1,w8
016ddc10  bl 0x0124c4d0
016ddc14  ldr w8,[sp, #0x18]
016ddc18  cmp w8,#0x1
016ddc1c  b.lt 0x016ddc2c
016ddc20  ldr x0,[sp, #0x10]
016ddc24  mvn w1,w8
016ddc28  bl 0x0124c4d0
016ddc2c  ldr w8,[sp, #0x8]
016ddc30  cmp w8,#0x1
016ddc34  b.lt 0x016ddc44
016ddc38  ldr x0,[sp]
016ddc3c  mvn w1,w8
016ddc40  bl 0x0124c4d0
016ddc44  ldp x29,x30,[sp, #0x30]
016ddc48  ldr x19,[sp, #0x20]
016ddc4c  add sp,sp,#0x40
016ddc50  ret
