// ===== case312-HeroAttrLevelResObject @ 016c09d0 =====
// existing function case312-HeroAttrLevelResObject
016c09d0  sub sp,sp,#0x40
016c09d4  stp x20,x19,[sp, #0x20]
016c09d8  stp x29,x30,[sp, #0x30]
016c09dc  add x29,sp,#0x30
016c09e0  adrp x1,0x174a000
016c09e4  add x1,x1,#0x87c
016c09e8  mov x19,x0
016c09ec  bl 0x0124ba40
016c09f0  adrp x1,0x575d000
016c09f4  add x1,x1,#0xa06
016c09f8  mov x0,x19
016c09fc  str x19,[sp]
016c0a00  bl 0x01251aa0
016c0a04  mov w8,#0x1
016c0a08  str w8,[sp, #0x8]
016c0a0c  mov x0,sp
016c0a10  bl 0x0174aa04
016c0a14  adrp x1,0x5762000
016c0a18  adrp x3,0x736d000
016c0a1c  add x1,x1,#0x94b
016c0a20  add x3,x3,#0x101
016c0a24  add x0,sp,#0x10
016c0a28  mov x2,sp
016c0a2c  bl 0x017fb39c
016c0a30  ldr x0,[sp, #0x10]
016c0a34  mov w1,#0x10
016c0a38  bl 0x0124cba0
016c0a3c  adrp x8,0x17fb000
016c0a40  dup v0.2D,xzr
016c0a44  add x8,x8,#0x394
016c0a48  mov v0.D[0x0],x8
016c0a4c  str q0,[x0]
016c0a50  ldr x0,[sp, #0x10]
016c0a54  adrp x1,0x17fb000
016c0a58  add x1,x1,#0x760
016c0a5c  mov w2,#0x1
016c0a60  bl 0x0124ec90
016c0a64  ldr x0,[sp, #0x10]
016c0a68  mov w1,#0xffffffff
016c0a6c  bl 0x0124c0c0
016c0a70  ldr x19,[sp, #0x10]
016c0a74  orr w1,wzr,#0xfffffffb
016c0a78  mov w2,#0x6e7
016c0a7c  mov x0,x19
016c0a80  bl 0x0124a650
016c0a84  orr w1,wzr,#0xfffffffe
016c0a88  mov x0,x19
016c0a8c  bl 0x0124c0c0
016c0a90  orr w1,wzr,#0xfffffffe
016c0a94  mov x0,x19
016c0a98  bl 0x0124e920
016c0a9c  mov w20,w0
016c0aa0  adrp x1,0x5762000
016c0aa4  add x1,x1,#0x962
016c0aa8  mov x0,x19
016c0aac  bl 0x0124f120
016c0ab0  orr w1,wzr,#0xfffffffe
016c0ab4  mov w2,#0x1
016c0ab8  mov x0,x19
016c0abc  bl 0x0124cfc0
016c0ac0  mov x0,x19
016c0ac4  mov w1,w20
016c0ac8  bl 0x0124e060
016c0acc  orr w1,wzr,#0xfffffffd
016c0ad0  mov x0,x19
016c0ad4  bl 0x0124c4d0
016c0ad8  ldr x19,[sp, #0x10]
016c0adc  orr w1,wzr,#0xfffffffd
016c0ae0  mov w2,#0x6e7
016c0ae4  mov x0,x19
016c0ae8  bl 0x0124a650
016c0aec  orr w1,wzr,#0xfffffffe
016c0af0  mov x0,x19
016c0af4  bl 0x0124c0c0
016c0af8  orr w1,wzr,#0xfffffffe
016c0afc  mov x0,x19
016c0b00  bl 0x0124e920
016c0b04  mov w20,w0
016c0b08  adrp x1,0x5762000
016c0b0c  add x1,x1,#0x962
016c0b10  mov x0,x19
016c0b14  bl 0x0124f120
016c0b18  orr w1,wzr,#0xfffffffe
016c0b1c  mov w2,#0x1
016c0b20  mov x0,x19
016c0b24  bl 0x0124cfc0
016c0b28  mov x0,x19
016c0b2c  mov w1,w20
016c0b30  bl 0x0124e060
016c0b34  orr w1,wzr,#0xfffffffd
016c0b38  mov x0,x19
016c0b3c  bl 0x0124c4d0
016c0b40  ldr w8,[sp, #0x18]
016c0b44  ldr x0,[sp, #0x10]
016c0b48  sub w8,w8,#0x3
016c0b4c  str w8,[sp, #0x18]
016c0b50  orr w1,wzr,#0xfffffffc
016c0b54  bl 0x0124c4d0
016c0b58  ldr w8,[sp, #0x18]
016c0b5c  ldr x0,[sp, #0x10]
016c0b60  str wzr,[sp, #0x18]
016c0b64  cmp w8,#0x1
016c0b68  b.lt 0x016c0b8c
016c0b6c  mvn w1,w8
016c0b70  bl 0x0124c4d0
016c0b74  ldr w8,[sp, #0x18]
016c0b78  cmp w8,#0x1
016c0b7c  b.lt 0x016c0b8c
016c0b80  ldr x0,[sp, #0x10]
016c0b84  mvn w1,w8
016c0b88  bl 0x0124c4d0
016c0b8c  ldr w8,[sp, #0x8]
016c0b90  cmp w8,#0x1
016c0b94  b.lt 0x016c0ba4
016c0b98  ldr x0,[sp]
016c0b9c  mvn w1,w8
016c0ba0  bl 0x0124c4d0
016c0ba4  ldp x29,x30,[sp, #0x30]
016c0ba8  ldp x20,x19,[sp, #0x20]
016c0bac  add sp,sp,#0x40
016c0bb0  ret
