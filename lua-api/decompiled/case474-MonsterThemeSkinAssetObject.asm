// ===== case474-MonsterThemeSkinAssetObject @ 016edee4 =====
// existing function case474-MonsterThemeSkinAssetObject
016edee4  sub sp,sp,#0x40
016edee8  str x19,[sp, #0x20]
016edeec  stp x29,x30,[sp, #0x30]
016edef0  add x29,sp,#0x30
016edef4  adrp x1,0x174a000
016edef8  add x1,x1,#0x87c
016edefc  mov x19,x0
016edf00  bl 0x0124ba40
016edf04  adrp x1,0x575d000
016edf08  add x1,x1,#0xa06
016edf0c  mov x0,x19
016edf10  str x19,[sp]
016edf14  bl 0x01251aa0
016edf18  mov w8,#0x1
016edf1c  str w8,[sp, #0x8]
016edf20  mov x0,sp
016edf24  bl 0x0174aa04
016edf28  adrp x1,0x5767000
016edf2c  adrp x3,0x736d000
016edf30  add x1,x1,#0x1f3
016edf34  add x3,x3,#0x101
016edf38  add x0,sp,#0x10
016edf3c  mov x2,sp
016edf40  bl 0x0187ad2c
016edf44  adrp x1,0x575d000
016edf48  adrp x2,0x187a000
016edf4c  adrp x4,0x187a000
016edf50  add x1,x1,#0xa00
016edf54  add x2,x2,#0xd1c
016edf58  add x4,x4,#0xd24
016edf5c  add x0,sp,#0x10
016edf60  mov x3,xzr
016edf64  mov x5,xzr
016edf68  bl 0x0187ab34
016edf6c  mov x19,x0
016edf70  ldr w8,[x19, #0x8]
016edf74  ldr x0,[x19]
016edf78  sub w8,w8,#0x3
016edf7c  str w8,[x19, #0x8]
016edf80  orr w1,wzr,#0xfffffffc
016edf84  bl 0x0124c4d0
016edf88  ldr w8,[x19, #0x8]
016edf8c  ldr x0,[x19]
016edf90  str wzr,[x19, #0x8]
016edf94  cmp w8,#0x1
016edf98  b.lt 0x016edfa4
016edf9c  mvn w1,w8
016edfa0  bl 0x0124c4d0
016edfa4  ldr w8,[sp, #0x18]
016edfa8  cmp w8,#0x1
016edfac  b.lt 0x016edfbc
016edfb0  ldr x0,[sp, #0x10]
016edfb4  mvn w1,w8
016edfb8  bl 0x0124c4d0
016edfbc  ldr w8,[sp, #0x8]
016edfc0  cmp w8,#0x1
016edfc4  b.lt 0x016edfd4
016edfc8  ldr x0,[sp]
016edfcc  mvn w1,w8
016edfd0  bl 0x0124c4d0
016edfd4  ldp x29,x30,[sp, #0x30]
016edfd8  ldr x19,[sp, #0x20]
016edfdc  add sp,sp,#0x40
016edfe0  ret
