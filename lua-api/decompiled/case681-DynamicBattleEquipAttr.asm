// ===== case681-DynamicBattleEquipAttr @ 01719990 =====
// existing function case681-DynamicBattleEquipAttr
01719990  sub sp,sp,#0x40
01719994  str x19,[sp, #0x20]
01719998  stp x29,x30,[sp, #0x30]
0171999c  add x29,sp,#0x30
017199a0  adrp x1,0x174a000
017199a4  add x1,x1,#0x87c
017199a8  mov x19,x0
017199ac  bl 0x0124ba40
017199b0  adrp x1,0x575d000
017199b4  add x1,x1,#0xa06
017199b8  mov x0,x19
017199bc  str x19,[sp]
017199c0  bl 0x01251aa0
017199c4  mov w8,#0x1
017199c8  str w8,[sp, #0x8]
017199cc  mov x0,sp
017199d0  bl 0x0174aa04
017199d4  adrp x1,0x576d000
017199d8  adrp x3,0x736d000
017199dc  add x1,x1,#0x336
017199e0  add x3,x3,#0x101
017199e4  add x0,sp,#0x10
017199e8  mov x2,sp
017199ec  bl 0x01946d48
017199f0  adrp x1,0x595c000
017199f4  adrp x2,0x1946000
017199f8  adrp x4,0x1946000
017199fc  add x1,x1,#0x9c4
01719a00  add x2,x2,#0xa6c
01719a04  add x4,x4,#0xa74
01719a08  add x0,sp,#0x10
01719a0c  mov x3,xzr
01719a10  mov x5,xzr
01719a14  bl 0x01946884
01719a18  adrp x1,0x5955000
01719a1c  adrp x2,0x1946000
01719a20  adrp x4,0x1946000
01719a24  add x1,x1,#0x16f
01719a28  add x2,x2,#0xc78
01719a2c  add x4,x4,#0xc80
01719a30  mov x3,xzr
01719a34  mov x5,xzr
01719a38  bl 0x01946a90
01719a3c  adrp x1,0x5761000
01719a40  adrp x2,0x1946000
01719a44  adrp x4,0x1946000
01719a48  add x1,x1,#0x791
01719a4c  add x2,x2,#0xce0
01719a50  add x4,x4,#0xce8
01719a54  mov x3,xzr
01719a58  mov x5,xzr
01719a5c  bl 0x01946a90
01719a60  mov x19,x0
01719a64  ldr w8,[x19, #0x8]
01719a68  ldr x0,[x19]
01719a6c  sub w8,w8,#0x3
01719a70  str w8,[x19, #0x8]
01719a74  orr w1,wzr,#0xfffffffc
01719a78  bl 0x0124c4d0
01719a7c  ldr w8,[x19, #0x8]
01719a80  ldr x0,[x19]
01719a84  str wzr,[x19, #0x8]
01719a88  cmp w8,#0x1
01719a8c  b.lt 0x01719a98
01719a90  mvn w1,w8
01719a94  bl 0x0124c4d0
01719a98  ldr w8,[sp, #0x18]
01719a9c  cmp w8,#0x1
01719aa0  b.lt 0x01719ab0
01719aa4  ldr x0,[sp, #0x10]
01719aa8  mvn w1,w8
01719aac  bl 0x0124c4d0
01719ab0  ldr w8,[sp, #0x8]
01719ab4  cmp w8,#0x1
01719ab8  b.lt 0x01719ac8
01719abc  ldr x0,[sp]
01719ac0  mvn w1,w8
01719ac4  bl 0x0124c4d0
01719ac8  ldp x29,x30,[sp, #0x30]
01719acc  ldr x19,[sp, #0x20]
01719ad0  add sp,sp,#0x40
01719ad4  ret
