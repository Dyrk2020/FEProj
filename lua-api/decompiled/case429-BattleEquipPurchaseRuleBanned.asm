// ===== case429-BattleEquipPurchaseRuleBanned @ 016e69b4 =====
// existing function case429-BattleEquipPurchaseRuleBanned
016e69b4  sub sp,sp,#0x40
016e69b8  stp x20,x19,[sp, #0x20]
016e69bc  stp x29,x30,[sp, #0x30]
016e69c0  add x29,sp,#0x30
016e69c4  adrp x1,0x174a000
016e69c8  add x1,x1,#0x87c
016e69cc  mov x19,x0
016e69d0  bl 0x0124ba40
016e69d4  adrp x1,0x575d000
016e69d8  add x1,x1,#0xa06
016e69dc  mov x0,x19
016e69e0  str x19,[sp]
016e69e4  bl 0x01251aa0
016e69e8  mov w8,#0x1
016e69ec  str w8,[sp, #0x8]
016e69f0  mov x0,sp
016e69f4  bl 0x0174aa04
016e69f8  adrp x1,0x5766000
016e69fc  adrp x3,0x736d000
016e6a00  add x1,x1,#0x74c
016e6a04  add x3,x3,#0x101
016e6a08  add x0,sp,#0x10
016e6a0c  mov x2,sp
016e6a10  bl 0x0186228c
016e6a14  ldr x0,[sp, #0x10]
016e6a18  mov w1,#0x10
016e6a1c  bl 0x0124cba0
016e6a20  adrp x8,0x1862000
016e6a24  dup v0.2D,xzr
016e6a28  add x8,x8,#0x284
016e6a2c  mov v0.D[0x0],x8
016e6a30  str q0,[x0]
016e6a34  ldr x0,[sp, #0x10]
016e6a38  adrp x1,0x1862000
016e6a3c  add x1,x1,#0x650
016e6a40  mov w2,#0x1
016e6a44  bl 0x0124ec90
016e6a48  ldr x0,[sp, #0x10]
016e6a4c  mov w1,#0xffffffff
016e6a50  bl 0x0124c0c0
016e6a54  ldr x19,[sp, #0x10]
016e6a58  orr w1,wzr,#0xfffffffb
016e6a5c  mov w2,#0x6e7
016e6a60  mov x0,x19
016e6a64  bl 0x0124a650
016e6a68  orr w1,wzr,#0xfffffffe
016e6a6c  mov x0,x19
016e6a70  bl 0x0124c0c0
016e6a74  orr w1,wzr,#0xfffffffe
016e6a78  mov x0,x19
016e6a7c  bl 0x0124e920
016e6a80  mov w20,w0
016e6a84  adrp x1,0x5766000
016e6a88  add x1,x1,#0x76a
016e6a8c  mov x0,x19
016e6a90  bl 0x0124f120
016e6a94  orr w1,wzr,#0xfffffffe
016e6a98  mov w2,#0x1
016e6a9c  mov x0,x19
016e6aa0  bl 0x0124cfc0
016e6aa4  mov x0,x19
016e6aa8  mov w1,w20
016e6aac  bl 0x0124e060
016e6ab0  orr w1,wzr,#0xfffffffd
016e6ab4  mov x0,x19
016e6ab8  bl 0x0124c4d0
016e6abc  ldr x19,[sp, #0x10]
016e6ac0  orr w1,wzr,#0xfffffffd
016e6ac4  mov w2,#0x6e7
016e6ac8  mov x0,x19
016e6acc  bl 0x0124a650
016e6ad0  orr w1,wzr,#0xfffffffe
016e6ad4  mov x0,x19
016e6ad8  bl 0x0124c0c0
016e6adc  orr w1,wzr,#0xfffffffe
016e6ae0  mov x0,x19
016e6ae4  bl 0x0124e920
016e6ae8  mov w20,w0
016e6aec  adrp x1,0x5766000
016e6af0  add x1,x1,#0x76a
016e6af4  mov x0,x19
016e6af8  bl 0x0124f120
016e6afc  orr w1,wzr,#0xfffffffe
016e6b00  mov w2,#0x1
016e6b04  mov x0,x19
016e6b08  bl 0x0124cfc0
016e6b0c  mov x0,x19
016e6b10  mov w1,w20
016e6b14  bl 0x0124e060
016e6b18  orr w1,wzr,#0xfffffffd
016e6b1c  mov x0,x19
016e6b20  bl 0x0124c4d0
016e6b24  ldr w8,[sp, #0x18]
016e6b28  ldr x0,[sp, #0x10]
016e6b2c  sub w8,w8,#0x3
016e6b30  str w8,[sp, #0x18]
016e6b34  orr w1,wzr,#0xfffffffc
016e6b38  bl 0x0124c4d0
016e6b3c  ldr w8,[sp, #0x18]
016e6b40  ldr x0,[sp, #0x10]
016e6b44  str wzr,[sp, #0x18]
016e6b48  cmp w8,#0x1
016e6b4c  b.lt 0x016e6b70
016e6b50  mvn w1,w8
016e6b54  bl 0x0124c4d0
016e6b58  ldr w8,[sp, #0x18]
016e6b5c  cmp w8,#0x1
016e6b60  b.lt 0x016e6b70
016e6b64  ldr x0,[sp, #0x10]
016e6b68  mvn w1,w8
016e6b6c  bl 0x0124c4d0
016e6b70  ldr w8,[sp, #0x8]
016e6b74  cmp w8,#0x1
016e6b78  b.lt 0x016e6b88
016e6b7c  ldr x0,[sp]
016e6b80  mvn w1,w8
016e6b84  bl 0x0124c4d0
016e6b88  ldp x29,x30,[sp, #0x30]
016e6b8c  ldp x20,x19,[sp, #0x20]
016e6b90  add sp,sp,#0x40
016e6b94  ret
