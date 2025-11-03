// ===== case348-FEBattleDcHeeimerdingerTresureStrength @ 016d09dc =====
// existing function case348-FEBattleDcHeeimerdingerTresureStrength
016d09dc  sub sp,sp,#0x40
016d09e0  str x19,[sp, #0x20]
016d09e4  stp x29,x30,[sp, #0x30]
016d09e8  add x29,sp,#0x30
016d09ec  adrp x1,0x174a000
016d09f0  add x1,x1,#0x87c
016d09f4  mov x19,x0
016d09f8  bl 0x0124ba40
016d09fc  adrp x1,0x575d000
016d0a00  add x1,x1,#0xa06
016d0a04  mov x0,x19
016d0a08  str x19,[sp]
016d0a0c  bl 0x01251aa0
016d0a10  mov w8,#0x1
016d0a14  str w8,[sp, #0x8]
016d0a18  mov x0,sp
016d0a1c  bl 0x0174aa04
016d0a20  adrp x1,0x5763000
016d0a24  adrp x3,0x736d000
016d0a28  add x1,x1,#0xcd8
016d0a2c  add x3,x3,#0x101
016d0a30  add x0,sp,#0x10
016d0a34  mov x2,sp
016d0a38  bl 0x01818e04
016d0a3c  adrp x1,0x5763000
016d0a40  adrp x2,0x1818000
016d0a44  adrp x4,0x1818000
016d0a48  add x1,x1,#0xcff
016d0a4c  add x2,x2,#0x9f4
016d0a50  add x4,x4,#0x9fc
016d0a54  add x0,sp,#0x10
016d0a58  mov x3,xzr
016d0a5c  mov x5,xzr
016d0a60  bl 0x0181880c
016d0a64  adrp x1,0x5763000
016d0a68  adrp x2,0x1818000
016d0a6c  adrp x4,0x1818000
016d0a70  add x1,x1,#0xd06
016d0a74  add x2,x2,#0xbec
016d0a78  add x4,x4,#0xbf4
016d0a7c  mov x3,xzr
016d0a80  mov x5,xzr
016d0a84  bl 0x01818a04
016d0a88  adrp x1,0x5944000
016d0a8c  adrp x2,0x1818000
016d0a90  adrp x4,0x1818000
016d0a94  add x1,x1,#0xaba
016d0a98  add x2,x2,#0xde4
016d0a9c  add x4,x4,#0xdec
016d0aa0  mov x3,xzr
016d0aa4  mov x5,xzr
016d0aa8  bl 0x01818bfc
016d0aac  adrp x1,0x5763000
016d0ab0  adrp x2,0x1818000
016d0ab4  adrp x4,0x1818000
016d0ab8  add x1,x1,#0xd0d
016d0abc  add x2,x2,#0xdf4
016d0ac0  add x4,x4,#0xdfc
016d0ac4  mov x3,xzr
016d0ac8  mov x5,xzr
016d0acc  bl 0x01818a04
016d0ad0  mov x19,x0
016d0ad4  ldr w8,[x19, #0x8]
016d0ad8  ldr x0,[x19]
016d0adc  sub w8,w8,#0x3
016d0ae0  str w8,[x19, #0x8]
016d0ae4  orr w1,wzr,#0xfffffffc
016d0ae8  bl 0x0124c4d0
016d0aec  ldr w8,[x19, #0x8]
016d0af0  ldr x0,[x19]
016d0af4  str wzr,[x19, #0x8]
016d0af8  cmp w8,#0x1
016d0afc  b.lt 0x016d0b08
016d0b00  mvn w1,w8
016d0b04  bl 0x0124c4d0
016d0b08  ldr w8,[sp, #0x18]
016d0b0c  cmp w8,#0x1
016d0b10  b.lt 0x016d0b20
016d0b14  ldr x0,[sp, #0x10]
016d0b18  mvn w1,w8
016d0b1c  bl 0x0124c4d0
016d0b20  ldr w8,[sp, #0x8]
016d0b24  cmp w8,#0x1
016d0b28  b.lt 0x016d0b38
016d0b2c  ldr x0,[sp]
016d0b30  mvn w1,w8
016d0b34  bl 0x0124c4d0
016d0b38  ldp x29,x30,[sp, #0x30]
016d0b3c  ldr x19,[sp, #0x20]
016d0b40  add sp,sp,#0x40
016d0b44  ret
