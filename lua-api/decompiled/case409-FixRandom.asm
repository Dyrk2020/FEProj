// ===== case409-FixRandom @ 016e2b00 =====
// existing function case409-FixRandom
016e2b00  sub sp,sp,#0x50
016e2b04  str x21,[sp, #0x20]
016e2b08  stp x20,x19,[sp, #0x30]
016e2b0c  stp x29,x30,[sp, #0x40]
016e2b10  add x29,sp,#0x40
016e2b14  adrp x1,0x174a000
016e2b18  add x1,x1,#0x87c
016e2b1c  mov x19,x0
016e2b20  bl 0x0124ba40
016e2b24  adrp x1,0x575d000
016e2b28  add x1,x1,#0xa06
016e2b2c  mov x0,x19
016e2b30  str x19,[sp]
016e2b34  bl 0x01251aa0
016e2b38  mov w8,#0x1
016e2b3c  str w8,[sp, #0x8]
016e2b40  mov x0,sp
016e2b44  bl 0x0174aa04
016e2b48  adrp x1,0x5766000
016e2b4c  adrp x3,0x736d000
016e2b50  add x1,x1,#0x55
016e2b54  add x3,x3,#0x101
016e2b58  add x0,sp,#0x10
016e2b5c  mov x2,sp
016e2b60  bl 0x0185307c
016e2b64  adrp x1,0x5766000
016e2b68  adrp x2,0x1852000
016e2b6c  adrp x4,0x1852000
016e2b70  add x1,x1,#0x5f
016e2b74  add x2,x2,#0xe00
016e2b78  add x4,x4,#0xe08
016e2b7c  add x0,sp,#0x10
016e2b80  mov x3,xzr
016e2b84  mov x5,xzr
016e2b88  bl 0x01852c18
016e2b8c  adrp x1,0x5766000
016e2b90  adrp x2,0x1853000
016e2b94  adrp x4,0x1853000
016e2b98  add x1,x1,#0x68
016e2b9c  add x2,x2,#0x50
016e2ba0  add x4,x4,#0x58
016e2ba4  mov x3,xzr
016e2ba8  mov x5,xzr
016e2bac  bl 0x01852e68
016e2bb0  mov x19,x0
016e2bb4  ldr x0,[x19]
016e2bb8  mov w1,#0x10
016e2bbc  bl 0x0124cba0
016e2bc0  adrp x8,0x1853000
016e2bc4  dup v0.2D,xzr
016e2bc8  add x8,x8,#0x74
016e2bcc  mov v0.D[0x0],x8
016e2bd0  str q0,[x0]
016e2bd4  ldr x0,[x19]
016e2bd8  adrp x1,0x1853000
016e2bdc  add x1,x1,#0xa9c
016e2be0  mov w2,#0x1
016e2be4  bl 0x0124ec90
016e2be8  ldr x0,[x19]
016e2bec  mov w1,#0xffffffff
016e2bf0  bl 0x0124c0c0
016e2bf4  ldr x20,[x19]
016e2bf8  orr w1,wzr,#0xfffffffb
016e2bfc  mov w2,#0x6e7
016e2c00  mov x0,x20
016e2c04  bl 0x0124a650
016e2c08  orr w1,wzr,#0xfffffffe
016e2c0c  mov x0,x20
016e2c10  bl 0x0124c0c0
016e2c14  orr w1,wzr,#0xfffffffe
016e2c18  mov x0,x20
016e2c1c  bl 0x0124e920
016e2c20  mov w21,w0
016e2c24  adrp x1,0x5763000
016e2c28  add x1,x1,#0x892
016e2c2c  mov x0,x20
016e2c30  bl 0x0124f120
016e2c34  orr w1,wzr,#0xfffffffe
016e2c38  mov w2,#0x1
016e2c3c  mov x0,x20
016e2c40  bl 0x0124cfc0
016e2c44  mov x0,x20
016e2c48  mov w1,w21
016e2c4c  bl 0x0124e060
016e2c50  orr w1,wzr,#0xfffffffd
016e2c54  mov x0,x20
016e2c58  bl 0x0124c4d0
016e2c5c  ldr x20,[x19]
016e2c60  orr w1,wzr,#0xfffffffd
016e2c64  mov w2,#0x6e7
016e2c68  mov x0,x20
016e2c6c  bl 0x0124a650
016e2c70  orr w1,wzr,#0xfffffffe
016e2c74  mov x0,x20
016e2c78  bl 0x0124c0c0
016e2c7c  orr w1,wzr,#0xfffffffe
016e2c80  mov x0,x20
016e2c84  bl 0x0124e920
016e2c88  mov w21,w0
016e2c8c  adrp x1,0x5763000
016e2c90  add x1,x1,#0x892
016e2c94  mov x0,x20
016e2c98  bl 0x0124f120
016e2c9c  orr w1,wzr,#0xfffffffe
016e2ca0  mov w2,#0x1
016e2ca4  mov x0,x20
016e2ca8  bl 0x0124cfc0
016e2cac  mov x0,x20
016e2cb0  mov w1,w21
016e2cb4  bl 0x0124e060
016e2cb8  orr w1,wzr,#0xfffffffd
016e2cbc  mov x0,x20
016e2cc0  bl 0x0124c4d0
016e2cc4  ldr w8,[x19, #0x8]
016e2cc8  ldr x0,[x19]
016e2ccc  sub w8,w8,#0x3
016e2cd0  str w8,[x19, #0x8]
016e2cd4  orr w1,wzr,#0xfffffffc
016e2cd8  bl 0x0124c4d0
016e2cdc  ldr w8,[x19, #0x8]
016e2ce0  ldr x0,[x19]
016e2ce4  str wzr,[x19, #0x8]
016e2ce8  cmp w8,#0x1
016e2cec  b.lt 0x016e2cf8
016e2cf0  mvn w1,w8
016e2cf4  bl 0x0124c4d0
016e2cf8  ldr w8,[sp, #0x18]
016e2cfc  cmp w8,#0x1
016e2d00  b.lt 0x016e2d10
016e2d04  ldr x0,[sp, #0x10]
016e2d08  mvn w1,w8
016e2d0c  bl 0x0124c4d0
016e2d10  ldr w8,[sp, #0x8]
016e2d14  cmp w8,#0x1
016e2d18  b.lt 0x016e2d28
016e2d1c  ldr x0,[sp]
016e2d20  mvn w1,w8
016e2d24  bl 0x0124c4d0
016e2d28  ldp x29,x30,[sp, #0x40]
016e2d2c  ldp x20,x19,[sp, #0x30]
016e2d30  ldr x21,[sp, #0x20]
016e2d34  add sp,sp,#0x50
016e2d38  ret
