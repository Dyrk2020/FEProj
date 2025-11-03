// ===== case132-RuneResObject @ 016a2a30 =====
// existing function case132-RuneResObject
016a2a30  sub sp,sp,#0x40
016a2a34  stp x20,x19,[sp, #0x20]
016a2a38  stp x29,x30,[sp, #0x30]
016a2a3c  add x29,sp,#0x30
016a2a40  adrp x1,0x174a000
016a2a44  add x1,x1,#0x87c
016a2a48  mov x19,x0
016a2a4c  bl 0x0124ba40
016a2a50  adrp x1,0x575d000
016a2a54  add x1,x1,#0xa06
016a2a58  mov x0,x19
016a2a5c  str x19,[sp]
016a2a60  bl 0x01251aa0
016a2a64  mov w8,#0x1
016a2a68  str w8,[sp, #0x8]
016a2a6c  mov x0,sp
016a2a70  bl 0x0174aa04
016a2a74  adrp x1,0x575f000
016a2a78  adrp x3,0x736d000
016a2a7c  add x1,x1,#0xdb7
016a2a80  add x3,x3,#0x101
016a2a84  add x0,sp,#0x10
016a2a88  mov x2,sp
016a2a8c  bl 0x01797110
016a2a90  ldr x0,[sp, #0x10]
016a2a94  mov w1,#0x10
016a2a98  bl 0x0124cba0
016a2a9c  adrp x8,0x1797000
016a2aa0  dup v0.2D,xzr
016a2aa4  add x8,x8,#0x100
016a2aa8  mov v0.D[0x0],x8
016a2aac  str q0,[x0]
016a2ab0  ldr x0,[sp, #0x10]
016a2ab4  adrp x1,0x1797000
016a2ab8  add x1,x1,#0x4d4
016a2abc  mov w2,#0x1
016a2ac0  bl 0x0124ec90
016a2ac4  ldr x0,[sp, #0x10]
016a2ac8  mov w1,#0xffffffff
016a2acc  bl 0x0124c0c0
016a2ad0  ldr x19,[sp, #0x10]
016a2ad4  orr w1,wzr,#0xfffffffb
016a2ad8  mov w2,#0x6e7
016a2adc  mov x0,x19
016a2ae0  bl 0x0124a650
016a2ae4  orr w1,wzr,#0xfffffffe
016a2ae8  mov x0,x19
016a2aec  bl 0x0124c0c0
016a2af0  orr w1,wzr,#0xfffffffe
016a2af4  mov x0,x19
016a2af8  bl 0x0124e920
016a2afc  mov w20,w0
016a2b00  adrp x1,0x575e000
016a2b04  add x1,x1,#0x56d
016a2b08  mov x0,x19
016a2b0c  bl 0x0124f120
016a2b10  orr w1,wzr,#0xfffffffe
016a2b14  mov w2,#0x1
016a2b18  mov x0,x19
016a2b1c  bl 0x0124cfc0
016a2b20  mov x0,x19
016a2b24  mov w1,w20
016a2b28  bl 0x0124e060
016a2b2c  orr w1,wzr,#0xfffffffd
016a2b30  mov x0,x19
016a2b34  bl 0x0124c4d0
016a2b38  ldr x19,[sp, #0x10]
016a2b3c  orr w1,wzr,#0xfffffffd
016a2b40  mov w2,#0x6e7
016a2b44  mov x0,x19
016a2b48  bl 0x0124a650
016a2b4c  orr w1,wzr,#0xfffffffe
016a2b50  mov x0,x19
016a2b54  bl 0x0124c0c0
016a2b58  orr w1,wzr,#0xfffffffe
016a2b5c  mov x0,x19
016a2b60  bl 0x0124e920
016a2b64  mov w20,w0
016a2b68  adrp x1,0x575e000
016a2b6c  add x1,x1,#0x56d
016a2b70  mov x0,x19
016a2b74  bl 0x0124f120
016a2b78  orr w1,wzr,#0xfffffffe
016a2b7c  mov w2,#0x1
016a2b80  mov x0,x19
016a2b84  bl 0x0124cfc0
016a2b88  mov x0,x19
016a2b8c  mov w1,w20
016a2b90  bl 0x0124e060
016a2b94  orr w1,wzr,#0xfffffffd
016a2b98  mov x0,x19
016a2b9c  bl 0x0124c4d0
016a2ba0  ldr x0,[sp, #0x10]
016a2ba4  mov w1,#0x10
016a2ba8  bl 0x0124cba0
016a2bac  adrp x8,0x1797000
016a2bb0  dup v0.2D,xzr
016a2bb4  add x8,x8,#0x108
016a2bb8  mov v0.D[0x0],x8
016a2bbc  str q0,[x0]
016a2bc0  ldr x0,[sp, #0x10]
016a2bc4  adrp x1,0x1797000
016a2bc8  add x1,x1,#0x5f8
016a2bcc  mov w2,#0x1
016a2bd0  bl 0x0124ec90
016a2bd4  ldr x0,[sp, #0x10]
016a2bd8  mov w1,#0xffffffff
016a2bdc  bl 0x0124c0c0
016a2be0  ldr x19,[sp, #0x10]
016a2be4  orr w1,wzr,#0xfffffffb
016a2be8  mov w2,#0x6e7
016a2bec  mov x0,x19
016a2bf0  bl 0x0124a650
016a2bf4  orr w1,wzr,#0xfffffffe
016a2bf8  mov x0,x19
016a2bfc  bl 0x0124c0c0
016a2c00  orr w1,wzr,#0xfffffffe
016a2c04  mov x0,x19
016a2c08  bl 0x0124e920
016a2c0c  mov w20,w0
016a2c10  adrp x1,0x575e000
016a2c14  add x1,x1,#0x578
016a2c18  mov x0,x19
016a2c1c  bl 0x0124f120
016a2c20  orr w1,wzr,#0xfffffffe
016a2c24  mov w2,#0x1
016a2c28  mov x0,x19
016a2c2c  bl 0x0124cfc0
016a2c30  mov x0,x19
016a2c34  mov w1,w20
016a2c38  bl 0x0124e060
016a2c3c  orr w1,wzr,#0xfffffffd
016a2c40  mov x0,x19
016a2c44  bl 0x0124c4d0
016a2c48  ldr x19,[sp, #0x10]
016a2c4c  orr w1,wzr,#0xfffffffd
016a2c50  mov w2,#0x6e7
016a2c54  mov x0,x19
016a2c58  bl 0x0124a650
016a2c5c  orr w1,wzr,#0xfffffffe
016a2c60  mov x0,x19
016a2c64  bl 0x0124c0c0
016a2c68  orr w1,wzr,#0xfffffffe
016a2c6c  mov x0,x19
016a2c70  bl 0x0124e920
016a2c74  mov w20,w0
016a2c78  adrp x1,0x575e000
016a2c7c  add x1,x1,#0x578
016a2c80  mov x0,x19
016a2c84  bl 0x0124f120
016a2c88  orr w1,wzr,#0xfffffffe
016a2c8c  mov w2,#0x1
016a2c90  mov x0,x19
016a2c94  bl 0x0124cfc0
016a2c98  mov x0,x19
016a2c9c  mov w1,w20
016a2ca0  bl 0x0124e060
016a2ca4  orr w1,wzr,#0xfffffffd
016a2ca8  mov x0,x19
016a2cac  bl 0x0124c4d0
016a2cb0  ldr w8,[sp, #0x18]
016a2cb4  ldr x0,[sp, #0x10]
016a2cb8  sub w8,w8,#0x3
016a2cbc  str w8,[sp, #0x18]
016a2cc0  orr w1,wzr,#0xfffffffc
016a2cc4  bl 0x0124c4d0
016a2cc8  ldr w8,[sp, #0x18]
016a2ccc  ldr x0,[sp, #0x10]
016a2cd0  str wzr,[sp, #0x18]
016a2cd4  cmp w8,#0x1
016a2cd8  b.lt 0x016a2cfc
016a2cdc  mvn w1,w8
016a2ce0  bl 0x0124c4d0
016a2ce4  ldr w8,[sp, #0x18]
016a2ce8  cmp w8,#0x1
016a2cec  b.lt 0x016a2cfc
016a2cf0  ldr x0,[sp, #0x10]
016a2cf4  mvn w1,w8
016a2cf8  bl 0x0124c4d0
016a2cfc  ldr w8,[sp, #0x8]
016a2d00  cmp w8,#0x1
016a2d04  b.lt 0x016a2d14
016a2d08  ldr x0,[sp]
016a2d0c  mvn w1,w8
016a2d10  bl 0x0124c4d0
016a2d14  ldp x29,x30,[sp, #0x30]
016a2d18  ldp x20,x19,[sp, #0x20]
016a2d1c  add sp,sp,#0x40
016a2d20  ret
