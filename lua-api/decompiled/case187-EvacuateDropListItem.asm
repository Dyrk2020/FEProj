// ===== case187-EvacuateDropListItem @ 016ace28 =====
// existing function case187-EvacuateDropListItem
016ace28  sub sp,sp,#0x40
016ace2c  str x19,[sp, #0x20]
016ace30  stp x29,x30,[sp, #0x30]
016ace34  add x29,sp,#0x30
016ace38  adrp x1,0x174a000
016ace3c  add x1,x1,#0x87c
016ace40  mov x19,x0
016ace44  bl 0x0124ba40
016ace48  adrp x1,0x575d000
016ace4c  add x1,x1,#0xa06
016ace50  mov x0,x19
016ace54  str x19,[sp]
016ace58  bl 0x01251aa0
016ace5c  mov w8,#0x1
016ace60  str w8,[sp, #0x8]
016ace64  mov x0,sp
016ace68  bl 0x0174aa04
016ace6c  adrp x1,0x5760000
016ace70  adrp x3,0x736d000
016ace74  add x1,x1,#0xabf
016ace78  add x3,x3,#0x101
016ace7c  add x0,sp,#0x10
016ace80  mov x2,sp
016ace84  bl 0x017b4c04
016ace88  adrp x1,0x5760000
016ace8c  adrp x2,0x17b4000
016ace90  adrp x4,0x17b4000
016ace94  add x1,x1,#0xad4
016ace98  add x2,x2,#0x9ec
016ace9c  add x4,x4,#0x9f4
016acea0  add x0,sp,#0x10
016acea4  mov x3,xzr
016acea8  mov x5,xzr
016aceac  bl 0x017b4804
016aceb0  adrp x1,0x575b000
016aceb4  adrp x2,0x17b4000
016aceb8  adrp x4,0x17b4000
016acebc  add x1,x1,#0x2d8
016acec0  add x2,x2,#0x9fc
016acec4  add x4,x4,#0xa04
016acec8  mov x3,xzr
016acecc  mov x5,xzr
016aced0  bl 0x017b4804
016aced4  adrp x1,0x5955000
016aced8  adrp x2,0x17b4000
016acedc  adrp x4,0x17b4000
016acee0  add x1,x1,#0x16f
016acee4  add x2,x2,#0xbf4
016acee8  add x4,x4,#0xbfc
016aceec  mov x3,xzr
016acef0  mov x5,xzr
016acef4  bl 0x017b4a0c
016acef8  mov x19,x0
016acefc  ldr w8,[x19, #0x8]
016acf00  ldr x0,[x19]
016acf04  sub w8,w8,#0x3
016acf08  str w8,[x19, #0x8]
016acf0c  orr w1,wzr,#0xfffffffc
016acf10  bl 0x0124c4d0
016acf14  ldr w8,[x19, #0x8]
016acf18  ldr x0,[x19]
016acf1c  str wzr,[x19, #0x8]
016acf20  cmp w8,#0x1
016acf24  b.lt 0x016acf30
016acf28  mvn w1,w8
016acf2c  bl 0x0124c4d0
016acf30  ldr w8,[sp, #0x18]
016acf34  cmp w8,#0x1
016acf38  b.lt 0x016acf48
016acf3c  ldr x0,[sp, #0x10]
016acf40  mvn w1,w8
016acf44  bl 0x0124c4d0
016acf48  ldr w8,[sp, #0x8]
016acf4c  cmp w8,#0x1
016acf50  b.lt 0x016acf60
016acf54  ldr x0,[sp]
016acf58  mvn w1,w8
016acf5c  bl 0x0124c4d0
016acf60  ldp x29,x30,[sp, #0x30]
016acf64  ldr x19,[sp, #0x20]
016acf68  add sp,sp,#0x40
016acf6c  ret
