// ===== case229-GainRecommendResObject @ 016b39b4 =====
// existing function case229-GainRecommendResObject
016b39b4  sub sp,sp,#0x40
016b39b8  stp x20,x19,[sp, #0x20]
016b39bc  stp x29,x30,[sp, #0x30]
016b39c0  add x29,sp,#0x30
016b39c4  adrp x1,0x174a000
016b39c8  add x1,x1,#0x87c
016b39cc  mov x19,x0
016b39d0  bl 0x0124ba40
016b39d4  adrp x1,0x575d000
016b39d8  add x1,x1,#0xa06
016b39dc  mov x0,x19
016b39e0  str x19,[sp]
016b39e4  bl 0x01251aa0
016b39e8  mov w8,#0x1
016b39ec  str w8,[sp, #0x8]
016b39f0  mov x0,sp
016b39f4  bl 0x0174aa04
016b39f8  adrp x1,0x5761000
016b39fc  adrp x3,0x736d000
016b3a00  add x1,x1,#0x12b
016b3a04  add x3,x3,#0x101
016b3a08  add x0,sp,#0x10
016b3a0c  mov x2,sp
016b3a10  bl 0x017c9ca0
016b3a14  ldr x0,[sp, #0x10]
016b3a18  mov w1,#0x10
016b3a1c  bl 0x0124cba0
016b3a20  adrp x8,0x17c9000
016b3a24  dup v0.2D,xzr
016b3a28  add x8,x8,#0xc90
016b3a2c  mov v0.D[0x0],x8
016b3a30  str q0,[x0]
016b3a34  ldr x0,[sp, #0x10]
016b3a38  adrp x1,0x17ca000
016b3a3c  add x1,x1,#0x64
016b3a40  mov w2,#0x1
016b3a44  bl 0x0124ec90
016b3a48  ldr x0,[sp, #0x10]
016b3a4c  mov w1,#0xffffffff
016b3a50  bl 0x0124c0c0
016b3a54  ldr x19,[sp, #0x10]
016b3a58  orr w1,wzr,#0xfffffffb
016b3a5c  mov w2,#0x6e7
016b3a60  mov x0,x19
016b3a64  bl 0x0124a650
016b3a68  orr w1,wzr,#0xfffffffe
016b3a6c  mov x0,x19
016b3a70  bl 0x0124c0c0
016b3a74  orr w1,wzr,#0xfffffffe
016b3a78  mov x0,x19
016b3a7c  bl 0x0124e920
016b3a80  mov w20,w0
016b3a84  adrp x1,0x575e000
016b3a88  add x1,x1,#0xfb2
016b3a8c  mov x0,x19
016b3a90  bl 0x0124f120
016b3a94  orr w1,wzr,#0xfffffffe
016b3a98  mov w2,#0x1
016b3a9c  mov x0,x19
016b3aa0  bl 0x0124cfc0
016b3aa4  mov x0,x19
016b3aa8  mov w1,w20
016b3aac  bl 0x0124e060
016b3ab0  orr w1,wzr,#0xfffffffd
016b3ab4  mov x0,x19
016b3ab8  bl 0x0124c4d0
016b3abc  ldr x19,[sp, #0x10]
016b3ac0  orr w1,wzr,#0xfffffffd
016b3ac4  mov w2,#0x6e7
016b3ac8  mov x0,x19
016b3acc  bl 0x0124a650
016b3ad0  orr w1,wzr,#0xfffffffe
016b3ad4  mov x0,x19
016b3ad8  bl 0x0124c0c0
016b3adc  orr w1,wzr,#0xfffffffe
016b3ae0  mov x0,x19
016b3ae4  bl 0x0124e920
016b3ae8  mov w20,w0
016b3aec  adrp x1,0x575e000
016b3af0  add x1,x1,#0xfb2
016b3af4  mov x0,x19
016b3af8  bl 0x0124f120
016b3afc  orr w1,wzr,#0xfffffffe
016b3b00  mov w2,#0x1
016b3b04  mov x0,x19
016b3b08  bl 0x0124cfc0
016b3b0c  mov x0,x19
016b3b10  mov w1,w20
016b3b14  bl 0x0124e060
016b3b18  orr w1,wzr,#0xfffffffd
016b3b1c  mov x0,x19
016b3b20  bl 0x0124c4d0
016b3b24  ldr x0,[sp, #0x10]
016b3b28  mov w1,#0x10
016b3b2c  bl 0x0124cba0
016b3b30  adrp x8,0x17c9000
016b3b34  dup v0.2D,xzr
016b3b38  add x8,x8,#0xc98
016b3b3c  mov v0.D[0x0],x8
016b3b40  str q0,[x0]
016b3b44  ldr x0,[sp, #0x10]
016b3b48  adrp x1,0x17ca000
016b3b4c  add x1,x1,#0x188
016b3b50  mov w2,#0x1
016b3b54  bl 0x0124ec90
016b3b58  ldr x0,[sp, #0x10]
016b3b5c  mov w1,#0xffffffff
016b3b60  bl 0x0124c0c0
016b3b64  ldr x19,[sp, #0x10]
016b3b68  orr w1,wzr,#0xfffffffb
016b3b6c  mov w2,#0x6e7
016b3b70  mov x0,x19
016b3b74  bl 0x0124a650
016b3b78  orr w1,wzr,#0xfffffffe
016b3b7c  mov x0,x19
016b3b80  bl 0x0124c0c0
016b3b84  orr w1,wzr,#0xfffffffe
016b3b88  mov x0,x19
016b3b8c  bl 0x0124e920
016b3b90  mov w20,w0
016b3b94  adrp x1,0x5761000
016b3b98  add x1,x1,#0x142
016b3b9c  mov x0,x19
016b3ba0  bl 0x0124f120
016b3ba4  orr w1,wzr,#0xfffffffe
016b3ba8  mov w2,#0x1
016b3bac  mov x0,x19
016b3bb0  bl 0x0124cfc0
016b3bb4  mov x0,x19
016b3bb8  mov w1,w20
016b3bbc  bl 0x0124e060
016b3bc0  orr w1,wzr,#0xfffffffd
016b3bc4  mov x0,x19
016b3bc8  bl 0x0124c4d0
016b3bcc  ldr x19,[sp, #0x10]
016b3bd0  orr w1,wzr,#0xfffffffd
016b3bd4  mov w2,#0x6e7
016b3bd8  mov x0,x19
016b3bdc  bl 0x0124a650
016b3be0  orr w1,wzr,#0xfffffffe
016b3be4  mov x0,x19
016b3be8  bl 0x0124c0c0
016b3bec  orr w1,wzr,#0xfffffffe
016b3bf0  mov x0,x19
016b3bf4  bl 0x0124e920
016b3bf8  mov w20,w0
016b3bfc  adrp x1,0x5761000
016b3c00  add x1,x1,#0x142
016b3c04  mov x0,x19
016b3c08  bl 0x0124f120
016b3c0c  orr w1,wzr,#0xfffffffe
016b3c10  mov w2,#0x1
016b3c14  mov x0,x19
016b3c18  bl 0x0124cfc0
016b3c1c  mov x0,x19
016b3c20  mov w1,w20
016b3c24  bl 0x0124e060
016b3c28  orr w1,wzr,#0xfffffffd
016b3c2c  mov x0,x19
016b3c30  bl 0x0124c4d0
016b3c34  ldr w8,[sp, #0x18]
016b3c38  ldr x0,[sp, #0x10]
016b3c3c  sub w8,w8,#0x3
016b3c40  str w8,[sp, #0x18]
016b3c44  orr w1,wzr,#0xfffffffc
016b3c48  bl 0x0124c4d0
016b3c4c  ldr w8,[sp, #0x18]
016b3c50  ldr x0,[sp, #0x10]
016b3c54  str wzr,[sp, #0x18]
016b3c58  cmp w8,#0x1
016b3c5c  b.lt 0x016b3c80
016b3c60  mvn w1,w8
016b3c64  bl 0x0124c4d0
016b3c68  ldr w8,[sp, #0x18]
016b3c6c  cmp w8,#0x1
016b3c70  b.lt 0x016b3c80
016b3c74  ldr x0,[sp, #0x10]
016b3c78  mvn w1,w8
016b3c7c  bl 0x0124c4d0
016b3c80  ldr w8,[sp, #0x8]
016b3c84  cmp w8,#0x1
016b3c88  b.lt 0x016b3c98
016b3c8c  ldr x0,[sp]
016b3c90  mvn w1,w8
016b3c94  bl 0x0124c4d0
016b3c98  ldp x29,x30,[sp, #0x30]
016b3c9c  ldp x20,x19,[sp, #0x20]
016b3ca0  add sp,sp,#0x40
016b3ca4  ret
