// ===== case515-ActorFollowAuxiliaryProcessor @ 016f6a00 =====
// existing function case515-ActorFollowAuxiliaryProcessor
016f6a00  sub sp,sp,#0x40
016f6a04  stp x20,x19,[sp, #0x20]
016f6a08  stp x29,x30,[sp, #0x30]
016f6a0c  add x29,sp,#0x30
016f6a10  adrp x1,0x174a000
016f6a14  add x1,x1,#0x87c
016f6a18  mov x19,x0
016f6a1c  bl 0x0124ba40
016f6a20  adrp x1,0x575d000
016f6a24  add x1,x1,#0xa06
016f6a28  mov x0,x19
016f6a2c  str x19,[sp]
016f6a30  bl 0x01251aa0
016f6a34  mov w8,#0x1
016f6a38  str w8,[sp, #0x8]
016f6a3c  mov x0,sp
016f6a40  bl 0x0174aa04
016f6a44  adrp x1,0x5768000
016f6a48  adrp x3,0x736d000
016f6a4c  add x1,x1,#0x5f7
016f6a50  add x3,x3,#0x101
016f6a54  add x0,sp,#0x10
016f6a58  mov x2,sp
016f6a5c  bl 0x018a1e74
016f6a60  ldr x0,[sp, #0x10]
016f6a64  mov w1,#0x10
016f6a68  bl 0x0124cba0
016f6a6c  adrp x8,0x18a1000
016f6a70  dup v0.2D,xzr
016f6a74  add x8,x8,#0xe6c
016f6a78  mov v0.D[0x0],x8
016f6a7c  str q0,[x0]
016f6a80  ldr x0,[sp, #0x10]
016f6a84  adrp x1,0x18a2000
016f6a88  add x1,x1,#0x238
016f6a8c  mov w2,#0x1
016f6a90  bl 0x0124ec90
016f6a94  ldr x0,[sp, #0x10]
016f6a98  mov w1,#0xffffffff
016f6a9c  bl 0x0124c0c0
016f6aa0  ldr x19,[sp, #0x10]
016f6aa4  orr w1,wzr,#0xfffffffb
016f6aa8  mov w2,#0x6e7
016f6aac  mov x0,x19
016f6ab0  bl 0x0124a650
016f6ab4  orr w1,wzr,#0xfffffffe
016f6ab8  mov x0,x19
016f6abc  bl 0x0124c0c0
016f6ac0  orr w1,wzr,#0xfffffffe
016f6ac4  mov x0,x19
016f6ac8  bl 0x0124e920
016f6acc  mov w20,w0
016f6ad0  adrp x1,0x5768000
016f6ad4  add x1,x1,#0x615
016f6ad8  mov x0,x19
016f6adc  bl 0x0124f120
016f6ae0  orr w1,wzr,#0xfffffffe
016f6ae4  mov w2,#0x1
016f6ae8  mov x0,x19
016f6aec  bl 0x0124cfc0
016f6af0  mov x0,x19
016f6af4  mov w1,w20
016f6af8  bl 0x0124e060
016f6afc  orr w1,wzr,#0xfffffffd
016f6b00  mov x0,x19
016f6b04  bl 0x0124c4d0
016f6b08  ldr x19,[sp, #0x10]
016f6b0c  orr w1,wzr,#0xfffffffd
016f6b10  mov w2,#0x6e7
016f6b14  mov x0,x19
016f6b18  bl 0x0124a650
016f6b1c  orr w1,wzr,#0xfffffffe
016f6b20  mov x0,x19
016f6b24  bl 0x0124c0c0
016f6b28  orr w1,wzr,#0xfffffffe
016f6b2c  mov x0,x19
016f6b30  bl 0x0124e920
016f6b34  mov w20,w0
016f6b38  adrp x1,0x5768000
016f6b3c  add x1,x1,#0x615
016f6b40  mov x0,x19
016f6b44  bl 0x0124f120
016f6b48  orr w1,wzr,#0xfffffffe
016f6b4c  mov w2,#0x1
016f6b50  mov x0,x19
016f6b54  bl 0x0124cfc0
016f6b58  mov x0,x19
016f6b5c  mov w1,w20
016f6b60  bl 0x0124e060
016f6b64  orr w1,wzr,#0xfffffffd
016f6b68  mov x0,x19
016f6b6c  bl 0x0124c4d0
016f6b70  ldr w8,[sp, #0x18]
016f6b74  ldr x0,[sp, #0x10]
016f6b78  sub w8,w8,#0x3
016f6b7c  str w8,[sp, #0x18]
016f6b80  orr w1,wzr,#0xfffffffc
016f6b84  bl 0x0124c4d0
016f6b88  ldr w8,[sp, #0x18]
016f6b8c  ldr x0,[sp, #0x10]
016f6b90  str wzr,[sp, #0x18]
016f6b94  cmp w8,#0x1
016f6b98  b.lt 0x016f6bbc
016f6b9c  mvn w1,w8
016f6ba0  bl 0x0124c4d0
016f6ba4  ldr w8,[sp, #0x18]
016f6ba8  cmp w8,#0x1
016f6bac  b.lt 0x016f6bbc
016f6bb0  ldr x0,[sp, #0x10]
016f6bb4  mvn w1,w8
016f6bb8  bl 0x0124c4d0
016f6bbc  ldr w8,[sp, #0x8]
016f6bc0  cmp w8,#0x1
016f6bc4  b.lt 0x016f6bd4
016f6bc8  ldr x0,[sp]
016f6bcc  mvn w1,w8
016f6bd0  bl 0x0124c4d0
016f6bd4  ldp x29,x30,[sp, #0x30]
016f6bd8  ldp x20,x19,[sp, #0x20]
016f6bdc  add sp,sp,#0x40
016f6be0  ret
