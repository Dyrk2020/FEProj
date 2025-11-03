// ===== case801-VarUnite @ 017339bc =====
// existing function case801-VarUnite
017339bc  sub sp,sp,#0x40
017339c0  str x19,[sp, #0x20]
017339c4  stp x29,x30,[sp, #0x30]
017339c8  add x29,sp,#0x30
017339cc  adrp x1,0x174a000
017339d0  add x1,x1,#0x87c
017339d4  mov x19,x0
017339d8  bl 0x0124ba40
017339dc  adrp x1,0x575d000
017339e0  add x1,x1,#0xa06
017339e4  mov x0,x19
017339e8  str x19,[sp]
017339ec  bl 0x01251aa0
017339f0  mov w8,#0x1
017339f4  str w8,[sp, #0x8]
017339f8  mov x0,sp
017339fc  bl 0x0174aa04
01733a00  adrp x1,0x5772000
01733a04  adrp x3,0x736d000
01733a08  add x1,x1,#0x1b
01733a0c  add x3,x3,#0x101
01733a10  add x0,sp,#0x10
01733a14  mov x2,sp
01733a18  bl 0x019b8594
01733a1c  adrp x1,0x5772000
01733a20  adrp x2,0x19b8000
01733a24  adrp x4,0x19b8000
01733a28  add x1,x1,#0xa
01733a2c  add x2,x2,#0x38c
01733a30  add x4,x4,#0x394
01733a34  add x0,sp,#0x10
01733a38  mov x3,xzr
01733a3c  mov x5,xzr
01733a40  bl 0x019b81a4
01733a44  adrp x1,0x5771000
01733a48  adrp x2,0x19b8000
01733a4c  adrp x4,0x19b8000
01733a50  add x1,x1,#0xee2
01733a54  add x2,x2,#0x584
01733a58  add x4,x4,#0x58c
01733a5c  mov x3,xzr
01733a60  mov x5,xzr
01733a64  bl 0x019b839c
01733a68  mov x19,x0
01733a6c  ldr w8,[x19, #0x8]
01733a70  ldr x0,[x19]
01733a74  sub w8,w8,#0x3
01733a78  str w8,[x19, #0x8]
01733a7c  orr w1,wzr,#0xfffffffc
01733a80  bl 0x0124c4d0
01733a84  ldr w8,[x19, #0x8]
01733a88  ldr x0,[x19]
01733a8c  str wzr,[x19, #0x8]
01733a90  cmp w8,#0x1
01733a94  b.lt 0x01733aa0
01733a98  mvn w1,w8
01733a9c  bl 0x0124c4d0
01733aa0  ldr w8,[sp, #0x18]
01733aa4  cmp w8,#0x1
01733aa8  b.lt 0x01733ab8
01733aac  ldr x0,[sp, #0x10]
01733ab0  mvn w1,w8
01733ab4  bl 0x0124c4d0
01733ab8  ldr w8,[sp, #0x8]
01733abc  cmp w8,#0x1
01733ac0  b.lt 0x01733ad0
01733ac4  ldr x0,[sp]
01733ac8  mvn w1,w8
01733acc  bl 0x0124c4d0
01733ad0  ldp x29,x30,[sp, #0x30]
01733ad4  ldr x19,[sp, #0x20]
01733ad8  add sp,sp,#0x40
01733adc  ret
