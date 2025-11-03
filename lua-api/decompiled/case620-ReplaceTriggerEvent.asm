// ===== case620-ReplaceTriggerEvent @ 0170bb24 =====
// existing function case620-ReplaceTriggerEvent
0170bb24  sub sp,sp,#0x40
0170bb28  str x19,[sp, #0x20]
0170bb2c  stp x29,x30,[sp, #0x30]
0170bb30  add x29,sp,#0x30
0170bb34  adrp x1,0x174a000
0170bb38  add x1,x1,#0x87c
0170bb3c  mov x19,x0
0170bb40  bl 0x0124ba40
0170bb44  adrp x1,0x575d000
0170bb48  add x1,x1,#0xa06
0170bb4c  mov x0,x19
0170bb50  str x19,[sp]
0170bb54  bl 0x01251aa0
0170bb58  mov w8,#0x1
0170bb5c  str w8,[sp, #0x8]
0170bb60  mov x0,sp
0170bb64  bl 0x0174aa04
0170bb68  adrp x1,0x576a000
0170bb6c  adrp x3,0x736d000
0170bb70  add x1,x1,#0x6b0
0170bb74  add x3,x3,#0x101
0170bb78  add x0,sp,#0x10
0170bb7c  mov x2,sp
0170bb80  bl 0x01900574
0170bb84  adrp x1,0x595c000
0170bb88  adrp x2,0x1900000
0170bb8c  adrp x4,0x1900000
0170bb90  add x1,x1,#0x9c4
0170bb94  add x2,x2,#0x534
0170bb98  add x4,x4,#0x53c
0170bb9c  add x0,sp,#0x10
0170bba0  mov x3,xzr
0170bba4  mov x5,xzr
0170bba8  bl 0x0190034c
0170bbac  adrp x1,0x5976000
0170bbb0  adrp x2,0x1900000
0170bbb4  adrp x4,0x1900000
0170bbb8  add x1,x1,#0xecf
0170bbbc  add x2,x2,#0x544
0170bbc0  add x4,x4,#0x54c
0170bbc4  mov x3,xzr
0170bbc8  mov x5,xzr
0170bbcc  bl 0x0190034c
0170bbd0  adrp x1,0x576a000
0170bbd4  adrp x2,0x1900000
0170bbd8  adrp x4,0x1900000
0170bbdc  add x1,x1,#0x6c4
0170bbe0  add x2,x2,#0x554
0170bbe4  add x4,x4,#0x55c
0170bbe8  mov x3,xzr
0170bbec  mov x5,xzr
0170bbf0  bl 0x0190034c
0170bbf4  adrp x1,0x576a000
0170bbf8  adrp x2,0x1900000
0170bbfc  adrp x4,0x1900000
0170bc00  add x1,x1,#0x6d0
0170bc04  add x2,x2,#0x564
0170bc08  add x4,x4,#0x56c
0170bc0c  mov x3,xzr
0170bc10  mov x5,xzr
0170bc14  bl 0x0190034c
0170bc18  mov x19,x0
0170bc1c  ldr w8,[x19, #0x8]
0170bc20  ldr x0,[x19]
0170bc24  sub w8,w8,#0x3
0170bc28  str w8,[x19, #0x8]
0170bc2c  orr w1,wzr,#0xfffffffc
0170bc30  bl 0x0124c4d0
0170bc34  ldr w8,[x19, #0x8]
0170bc38  ldr x0,[x19]
0170bc3c  str wzr,[x19, #0x8]
0170bc40  cmp w8,#0x1
0170bc44  b.lt 0x0170bc50
0170bc48  mvn w1,w8
0170bc4c  bl 0x0124c4d0
0170bc50  ldr w8,[sp, #0x18]
0170bc54  cmp w8,#0x1
0170bc58  b.lt 0x0170bc68
0170bc5c  ldr x0,[sp, #0x10]
0170bc60  mvn w1,w8
0170bc64  bl 0x0124c4d0
0170bc68  ldr w8,[sp, #0x8]
0170bc6c  cmp w8,#0x1
0170bc70  b.lt 0x0170bc80
0170bc74  ldr x0,[sp]
0170bc78  mvn w1,w8
0170bc7c  bl 0x0124c4d0
0170bc80  ldp x29,x30,[sp, #0x30]
0170bc84  ldr x19,[sp, #0x20]
0170bc88  add sp,sp,#0x40
0170bc8c  ret
