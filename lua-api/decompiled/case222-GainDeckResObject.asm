// ===== case222-GainDeckResObject @ 016b29ec =====
// existing function case222-GainDeckResObject
016b29ec  sub sp,sp,#0x40
016b29f0  stp x20,x19,[sp, #0x20]
016b29f4  stp x29,x30,[sp, #0x30]
016b29f8  add x29,sp,#0x30
016b29fc  adrp x1,0x174a000
016b2a00  add x1,x1,#0x87c
016b2a04  mov x19,x0
016b2a08  bl 0x0124ba40
016b2a0c  adrp x1,0x575d000
016b2a10  add x1,x1,#0xa06
016b2a14  mov x0,x19
016b2a18  str x19,[sp]
016b2a1c  bl 0x01251aa0
016b2a20  mov w8,#0x1
016b2a24  str w8,[sp, #0x8]
016b2a28  mov x0,sp
016b2a2c  bl 0x0174aa04
016b2a30  adrp x1,0x5761000
016b2a34  adrp x3,0x736d000
016b2a38  add x1,x1,#0x5e
016b2a3c  add x3,x3,#0x101
016b2a40  add x0,sp,#0x10
016b2a44  mov x2,sp
016b2a48  bl 0x017c6688
016b2a4c  ldr x0,[sp, #0x10]
016b2a50  mov w1,#0x10
016b2a54  bl 0x0124cba0
016b2a58  adrp x8,0x17c6000
016b2a5c  dup v0.2D,xzr
016b2a60  add x8,x8,#0x678
016b2a64  mov v0.D[0x0],x8
016b2a68  str q0,[x0]
016b2a6c  ldr x0,[sp, #0x10]
016b2a70  adrp x1,0x17c6000
016b2a74  add x1,x1,#0xa4c
016b2a78  mov w2,#0x1
016b2a7c  bl 0x0124ec90
016b2a80  ldr x0,[sp, #0x10]
016b2a84  mov w1,#0xffffffff
016b2a88  bl 0x0124c0c0
016b2a8c  ldr x19,[sp, #0x10]
016b2a90  orr w1,wzr,#0xfffffffb
016b2a94  mov w2,#0x6e7
016b2a98  mov x0,x19
016b2a9c  bl 0x0124a650
016b2aa0  orr w1,wzr,#0xfffffffe
016b2aa4  mov x0,x19
016b2aa8  bl 0x0124c0c0
016b2aac  orr w1,wzr,#0xfffffffe
016b2ab0  mov x0,x19
016b2ab4  bl 0x0124e920
016b2ab8  mov w20,w0
016b2abc  adrp x1,0x575e000
016b2ac0  add x1,x1,#0x56d
016b2ac4  mov x0,x19
016b2ac8  bl 0x0124f120
016b2acc  orr w1,wzr,#0xfffffffe
016b2ad0  mov w2,#0x1
016b2ad4  mov x0,x19
016b2ad8  bl 0x0124cfc0
016b2adc  mov x0,x19
016b2ae0  mov w1,w20
016b2ae4  bl 0x0124e060
016b2ae8  orr w1,wzr,#0xfffffffd
016b2aec  mov x0,x19
016b2af0  bl 0x0124c4d0
016b2af4  ldr x19,[sp, #0x10]
016b2af8  orr w1,wzr,#0xfffffffd
016b2afc  mov w2,#0x6e7
016b2b00  mov x0,x19
016b2b04  bl 0x0124a650
016b2b08  orr w1,wzr,#0xfffffffe
016b2b0c  mov x0,x19
016b2b10  bl 0x0124c0c0
016b2b14  orr w1,wzr,#0xfffffffe
016b2b18  mov x0,x19
016b2b1c  bl 0x0124e920
016b2b20  mov w20,w0
016b2b24  adrp x1,0x575e000
016b2b28  add x1,x1,#0x56d
016b2b2c  mov x0,x19
016b2b30  bl 0x0124f120
016b2b34  orr w1,wzr,#0xfffffffe
016b2b38  mov w2,#0x1
016b2b3c  mov x0,x19
016b2b40  bl 0x0124cfc0
016b2b44  mov x0,x19
016b2b48  mov w1,w20
016b2b4c  bl 0x0124e060
016b2b50  orr w1,wzr,#0xfffffffd
016b2b54  mov x0,x19
016b2b58  bl 0x0124c4d0
016b2b5c  ldr x0,[sp, #0x10]
016b2b60  mov w1,#0x10
016b2b64  bl 0x0124cba0
016b2b68  adrp x8,0x17c6000
016b2b6c  dup v0.2D,xzr
016b2b70  add x8,x8,#0x680
016b2b74  mov v0.D[0x0],x8
016b2b78  str q0,[x0]
016b2b7c  ldr x0,[sp, #0x10]
016b2b80  adrp x1,0x17c6000
016b2b84  add x1,x1,#0xb70
016b2b88  mov w2,#0x1
016b2b8c  bl 0x0124ec90
016b2b90  ldr x0,[sp, #0x10]
016b2b94  mov w1,#0xffffffff
016b2b98  bl 0x0124c0c0
016b2b9c  ldr x19,[sp, #0x10]
016b2ba0  orr w1,wzr,#0xfffffffb
016b2ba4  mov w2,#0x6e7
016b2ba8  mov x0,x19
016b2bac  bl 0x0124a650
016b2bb0  orr w1,wzr,#0xfffffffe
016b2bb4  mov x0,x19
016b2bb8  bl 0x0124c0c0
016b2bbc  orr w1,wzr,#0xfffffffe
016b2bc0  mov x0,x19
016b2bc4  bl 0x0124e920
016b2bc8  mov w20,w0
016b2bcc  adrp x1,0x575e000
016b2bd0  add x1,x1,#0x578
016b2bd4  mov x0,x19
016b2bd8  bl 0x0124f120
016b2bdc  orr w1,wzr,#0xfffffffe
016b2be0  mov w2,#0x1
016b2be4  mov x0,x19
016b2be8  bl 0x0124cfc0
016b2bec  mov x0,x19
016b2bf0  mov w1,w20
016b2bf4  bl 0x0124e060
016b2bf8  orr w1,wzr,#0xfffffffd
016b2bfc  mov x0,x19
016b2c00  bl 0x0124c4d0
016b2c04  ldr x19,[sp, #0x10]
016b2c08  orr w1,wzr,#0xfffffffd
016b2c0c  mov w2,#0x6e7
016b2c10  mov x0,x19
016b2c14  bl 0x0124a650
016b2c18  orr w1,wzr,#0xfffffffe
016b2c1c  mov x0,x19
016b2c20  bl 0x0124c0c0
016b2c24  orr w1,wzr,#0xfffffffe
016b2c28  mov x0,x19
016b2c2c  bl 0x0124e920
016b2c30  mov w20,w0
016b2c34  adrp x1,0x575e000
016b2c38  add x1,x1,#0x578
016b2c3c  mov x0,x19
016b2c40  bl 0x0124f120
016b2c44  orr w1,wzr,#0xfffffffe
016b2c48  mov w2,#0x1
016b2c4c  mov x0,x19
016b2c50  bl 0x0124cfc0
016b2c54  mov x0,x19
016b2c58  mov w1,w20
016b2c5c  bl 0x0124e060
016b2c60  orr w1,wzr,#0xfffffffd
016b2c64  mov x0,x19
016b2c68  bl 0x0124c4d0
016b2c6c  ldr w8,[sp, #0x18]
016b2c70  ldr x0,[sp, #0x10]
016b2c74  sub w8,w8,#0x3
016b2c78  str w8,[sp, #0x18]
016b2c7c  orr w1,wzr,#0xfffffffc
016b2c80  bl 0x0124c4d0
016b2c84  ldr w8,[sp, #0x18]
016b2c88  ldr x0,[sp, #0x10]
016b2c8c  str wzr,[sp, #0x18]
016b2c90  cmp w8,#0x1
016b2c94  b.lt 0x016b2cb8
016b2c98  mvn w1,w8
016b2c9c  bl 0x0124c4d0
016b2ca0  ldr w8,[sp, #0x18]
016b2ca4  cmp w8,#0x1
016b2ca8  b.lt 0x016b2cb8
016b2cac  ldr x0,[sp, #0x10]
016b2cb0  mvn w1,w8
016b2cb4  bl 0x0124c4d0
016b2cb8  ldr w8,[sp, #0x8]
016b2cbc  cmp w8,#0x1
016b2cc0  b.lt 0x016b2cd0
016b2cc4  ldr x0,[sp]
016b2cc8  mvn w1,w8
016b2ccc  bl 0x0124c4d0
016b2cd0  ldp x29,x30,[sp, #0x30]
016b2cd4  ldp x20,x19,[sp, #0x20]
016b2cd8  add sp,sp,#0x40
016b2cdc  ret
