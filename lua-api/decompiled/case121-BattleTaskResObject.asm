// ===== case121-BattleTaskResObject @ 016a09ac =====
// existing function case121-BattleTaskResObject
016a09ac  sub sp,sp,#0x40
016a09b0  stp x20,x19,[sp, #0x20]
016a09b4  stp x29,x30,[sp, #0x30]
016a09b8  add x29,sp,#0x30
016a09bc  adrp x1,0x174a000
016a09c0  add x1,x1,#0x87c
016a09c4  mov x19,x0
016a09c8  bl 0x0124ba40
016a09cc  adrp x1,0x575d000
016a09d0  add x1,x1,#0xa06
016a09d4  mov x0,x19
016a09d8  str x19,[sp]
016a09dc  bl 0x01251aa0
016a09e0  mov w8,#0x1
016a09e4  str w8,[sp, #0x8]
016a09e8  mov x0,sp
016a09ec  bl 0x0174aa04
016a09f0  adrp x1,0x575f000
016a09f4  adrp x3,0x736d000
016a09f8  add x1,x1,#0xc67
016a09fc  add x3,x3,#0x101
016a0a00  add x0,sp,#0x10
016a0a04  mov x2,sp
016a0a08  bl 0x01792730
016a0a0c  ldr x0,[sp, #0x10]
016a0a10  mov w1,#0x10
016a0a14  bl 0x0124cba0
016a0a18  adrp x8,0x1792000
016a0a1c  dup v0.2D,xzr
016a0a20  add x8,x8,#0x720
016a0a24  mov v0.D[0x0],x8
016a0a28  str q0,[x0]
016a0a2c  ldr x0,[sp, #0x10]
016a0a30  adrp x1,0x1792000
016a0a34  add x1,x1,#0xaf4
016a0a38  mov w2,#0x1
016a0a3c  bl 0x0124ec90
016a0a40  ldr x0,[sp, #0x10]
016a0a44  mov w1,#0xffffffff
016a0a48  bl 0x0124c0c0
016a0a4c  ldr x19,[sp, #0x10]
016a0a50  orr w1,wzr,#0xfffffffb
016a0a54  mov w2,#0x6e7
016a0a58  mov x0,x19
016a0a5c  bl 0x0124a650
016a0a60  orr w1,wzr,#0xfffffffe
016a0a64  mov x0,x19
016a0a68  bl 0x0124c0c0
016a0a6c  orr w1,wzr,#0xfffffffe
016a0a70  mov x0,x19
016a0a74  bl 0x0124e920
016a0a78  mov w20,w0
016a0a7c  adrp x1,0x575e000
016a0a80  add x1,x1,#0x56d
016a0a84  mov x0,x19
016a0a88  bl 0x0124f120
016a0a8c  orr w1,wzr,#0xfffffffe
016a0a90  mov w2,#0x1
016a0a94  mov x0,x19
016a0a98  bl 0x0124cfc0
016a0a9c  mov x0,x19
016a0aa0  mov w1,w20
016a0aa4  bl 0x0124e060
016a0aa8  orr w1,wzr,#0xfffffffd
016a0aac  mov x0,x19
016a0ab0  bl 0x0124c4d0
016a0ab4  ldr x19,[sp, #0x10]
016a0ab8  orr w1,wzr,#0xfffffffd
016a0abc  mov w2,#0x6e7
016a0ac0  mov x0,x19
016a0ac4  bl 0x0124a650
016a0ac8  orr w1,wzr,#0xfffffffe
016a0acc  mov x0,x19
016a0ad0  bl 0x0124c0c0
016a0ad4  orr w1,wzr,#0xfffffffe
016a0ad8  mov x0,x19
016a0adc  bl 0x0124e920
016a0ae0  mov w20,w0
016a0ae4  adrp x1,0x575e000
016a0ae8  add x1,x1,#0x56d
016a0aec  mov x0,x19
016a0af0  bl 0x0124f120
016a0af4  orr w1,wzr,#0xfffffffe
016a0af8  mov w2,#0x1
016a0afc  mov x0,x19
016a0b00  bl 0x0124cfc0
016a0b04  mov x0,x19
016a0b08  mov w1,w20
016a0b0c  bl 0x0124e060
016a0b10  orr w1,wzr,#0xfffffffd
016a0b14  mov x0,x19
016a0b18  bl 0x0124c4d0
016a0b1c  ldr x0,[sp, #0x10]
016a0b20  mov w1,#0x10
016a0b24  bl 0x0124cba0
016a0b28  adrp x8,0x1792000
016a0b2c  dup v0.2D,xzr
016a0b30  add x8,x8,#0x728
016a0b34  mov v0.D[0x0],x8
016a0b38  str q0,[x0]
016a0b3c  ldr x0,[sp, #0x10]
016a0b40  adrp x1,0x1792000
016a0b44  add x1,x1,#0xc18
016a0b48  mov w2,#0x1
016a0b4c  bl 0x0124ec90
016a0b50  ldr x0,[sp, #0x10]
016a0b54  mov w1,#0xffffffff
016a0b58  bl 0x0124c0c0
016a0b5c  ldr x19,[sp, #0x10]
016a0b60  orr w1,wzr,#0xfffffffb
016a0b64  mov w2,#0x6e7
016a0b68  mov x0,x19
016a0b6c  bl 0x0124a650
016a0b70  orr w1,wzr,#0xfffffffe
016a0b74  mov x0,x19
016a0b78  bl 0x0124c0c0
016a0b7c  orr w1,wzr,#0xfffffffe
016a0b80  mov x0,x19
016a0b84  bl 0x0124e920
016a0b88  mov w20,w0
016a0b8c  adrp x1,0x575e000
016a0b90  add x1,x1,#0x578
016a0b94  mov x0,x19
016a0b98  bl 0x0124f120
016a0b9c  orr w1,wzr,#0xfffffffe
016a0ba0  mov w2,#0x1
016a0ba4  mov x0,x19
016a0ba8  bl 0x0124cfc0
016a0bac  mov x0,x19
016a0bb0  mov w1,w20
016a0bb4  bl 0x0124e060
016a0bb8  orr w1,wzr,#0xfffffffd
016a0bbc  mov x0,x19
016a0bc0  bl 0x0124c4d0
016a0bc4  ldr x19,[sp, #0x10]
016a0bc8  orr w1,wzr,#0xfffffffd
016a0bcc  mov w2,#0x6e7
016a0bd0  mov x0,x19
016a0bd4  bl 0x0124a650
016a0bd8  orr w1,wzr,#0xfffffffe
016a0bdc  mov x0,x19
016a0be0  bl 0x0124c0c0
016a0be4  orr w1,wzr,#0xfffffffe
016a0be8  mov x0,x19
016a0bec  bl 0x0124e920
016a0bf0  mov w20,w0
016a0bf4  adrp x1,0x575e000
016a0bf8  add x1,x1,#0x578
016a0bfc  mov x0,x19
016a0c00  bl 0x0124f120
016a0c04  orr w1,wzr,#0xfffffffe
016a0c08  mov w2,#0x1
016a0c0c  mov x0,x19
016a0c10  bl 0x0124cfc0
016a0c14  mov x0,x19
016a0c18  mov w1,w20
016a0c1c  bl 0x0124e060
016a0c20  orr w1,wzr,#0xfffffffd
016a0c24  mov x0,x19
016a0c28  bl 0x0124c4d0
016a0c2c  ldr w8,[sp, #0x18]
016a0c30  ldr x0,[sp, #0x10]
016a0c34  sub w8,w8,#0x3
016a0c38  str w8,[sp, #0x18]
016a0c3c  orr w1,wzr,#0xfffffffc
016a0c40  bl 0x0124c4d0
016a0c44  ldr w8,[sp, #0x18]
016a0c48  ldr x0,[sp, #0x10]
016a0c4c  str wzr,[sp, #0x18]
016a0c50  cmp w8,#0x1
016a0c54  b.lt 0x016a0c78
016a0c58  mvn w1,w8
016a0c5c  bl 0x0124c4d0
016a0c60  ldr w8,[sp, #0x18]
016a0c64  cmp w8,#0x1
016a0c68  b.lt 0x016a0c78
016a0c6c  ldr x0,[sp, #0x10]
016a0c70  mvn w1,w8
016a0c74  bl 0x0124c4d0
016a0c78  ldr w8,[sp, #0x8]
016a0c7c  cmp w8,#0x1
016a0c80  b.lt 0x016a0c90
016a0c84  ldr x0,[sp]
016a0c88  mvn w1,w8
016a0c8c  bl 0x0124c4d0
016a0c90  ldp x29,x30,[sp, #0x30]
016a0c94  ldp x20,x19,[sp, #0x20]
016a0c98  add sp,sp,#0x40
016a0c9c  ret
