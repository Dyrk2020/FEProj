// ===== case385-FEBattleDcPlayerSpellUseAndHit @ 016d89f8 =====
// existing function case385-FEBattleDcPlayerSpellUseAndHit
016d89f8  sub sp,sp,#0x40
016d89fc  str x19,[sp, #0x20]
016d8a00  stp x29,x30,[sp, #0x30]
016d8a04  add x29,sp,#0x30
016d8a08  adrp x1,0x174a000
016d8a0c  add x1,x1,#0x87c
016d8a10  mov x19,x0
016d8a14  bl 0x0124ba40
016d8a18  adrp x1,0x575d000
016d8a1c  add x1,x1,#0xa06
016d8a20  mov x0,x19
016d8a24  str x19,[sp]
016d8a28  bl 0x01251aa0
016d8a2c  mov w8,#0x1
016d8a30  str w8,[sp, #0x8]
016d8a34  mov x0,sp
016d8a38  bl 0x0174aa04
016d8a3c  adrp x1,0x5764000
016d8a40  adrp x3,0x736d000
016d8a44  add x1,x1,#0xf29
016d8a48  add x3,x3,#0x101
016d8a4c  add x0,sp,#0x10
016d8a50  mov x2,sp
016d8a54  bl 0x01839594
016d8a58  adrp x1,0x5764000
016d8a5c  adrp x2,0x1839000
016d8a60  adrp x4,0x1839000
016d8a64  add x1,x1,#0xf48
016d8a68  add x2,x2,#0x584
016d8a6c  add x4,x4,#0x58c
016d8a70  add x0,sp,#0x10
016d8a74  mov x3,xzr
016d8a78  mov x5,xzr
016d8a7c  bl 0x0183939c
016d8a80  mov x19,x0
016d8a84  ldr w8,[x19, #0x8]
016d8a88  ldr x0,[x19]
016d8a8c  sub w8,w8,#0x3
016d8a90  str w8,[x19, #0x8]
016d8a94  orr w1,wzr,#0xfffffffc
016d8a98  bl 0x0124c4d0
016d8a9c  ldr w8,[x19, #0x8]
016d8aa0  ldr x0,[x19]
016d8aa4  str wzr,[x19, #0x8]
016d8aa8  cmp w8,#0x1
016d8aac  b.lt 0x016d8ab8
016d8ab0  mvn w1,w8
016d8ab4  bl 0x0124c4d0
016d8ab8  ldr w8,[sp, #0x18]
016d8abc  cmp w8,#0x1
016d8ac0  b.lt 0x016d8ad0
016d8ac4  ldr x0,[sp, #0x10]
016d8ac8  mvn w1,w8
016d8acc  bl 0x0124c4d0
016d8ad0  ldr w8,[sp, #0x8]
016d8ad4  cmp w8,#0x1
016d8ad8  b.lt 0x016d8ae8
016d8adc  ldr x0,[sp]
016d8ae0  mvn w1,w8
016d8ae4  bl 0x0124c4d0
016d8ae8  ldp x29,x30,[sp, #0x30]
016d8aec  ldr x19,[sp, #0x20]
016d8af0  add sp,sp,#0x40
016d8af4  ret
