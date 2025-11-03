// ===== case160-EquipResObject @ 016a7a4c =====
// existing function case160-EquipResObject
016a7a4c  sub sp,sp,#0x40
016a7a50  stp x20,x19,[sp, #0x20]
016a7a54  stp x29,x30,[sp, #0x30]
016a7a58  add x29,sp,#0x30
016a7a5c  adrp x1,0x174a000
016a7a60  add x1,x1,#0x87c
016a7a64  mov x19,x0
016a7a68  bl 0x0124ba40
016a7a6c  adrp x1,0x575d000
016a7a70  add x1,x1,#0xa06
016a7a74  mov x0,x19
016a7a78  str x19,[sp]
016a7a7c  bl 0x01251aa0
016a7a80  mov w8,#0x1
016a7a84  str w8,[sp, #0x8]
016a7a88  mov x0,sp
016a7a8c  bl 0x0174aa04
016a7a90  adrp x1,0x5760000
016a7a94  adrp x3,0x736d000
016a7a98  add x1,x1,#0x24c
016a7a9c  add x3,x3,#0x101
016a7aa0  add x0,sp,#0x10
016a7aa4  mov x2,sp
016a7aa8  bl 0x017a574c
016a7aac  ldr x0,[sp, #0x10]
016a7ab0  mov w1,#0x10
016a7ab4  bl 0x0124cba0
016a7ab8  adrp x8,0x17a5000
016a7abc  dup v0.2D,xzr
016a7ac0  add x8,x8,#0x73c
016a7ac4  mov v0.D[0x0],x8
016a7ac8  str q0,[x0]
016a7acc  ldr x0,[sp, #0x10]
016a7ad0  adrp x1,0x17a5000
016a7ad4  add x1,x1,#0xb10
016a7ad8  mov w2,#0x1
016a7adc  bl 0x0124ec90
016a7ae0  ldr x0,[sp, #0x10]
016a7ae4  mov w1,#0xffffffff
016a7ae8  bl 0x0124c0c0
016a7aec  ldr x19,[sp, #0x10]
016a7af0  orr w1,wzr,#0xfffffffb
016a7af4  mov w2,#0x6e7
016a7af8  mov x0,x19
016a7afc  bl 0x0124a650
016a7b00  orr w1,wzr,#0xfffffffe
016a7b04  mov x0,x19
016a7b08  bl 0x0124c0c0
016a7b0c  orr w1,wzr,#0xfffffffe
016a7b10  mov x0,x19
016a7b14  bl 0x0124e920
016a7b18  mov w20,w0
016a7b1c  adrp x1,0x575e000
016a7b20  add x1,x1,#0x56d
016a7b24  mov x0,x19
016a7b28  bl 0x0124f120
016a7b2c  orr w1,wzr,#0xfffffffe
016a7b30  mov w2,#0x1
016a7b34  mov x0,x19
016a7b38  bl 0x0124cfc0
016a7b3c  mov x0,x19
016a7b40  mov w1,w20
016a7b44  bl 0x0124e060
016a7b48  orr w1,wzr,#0xfffffffd
016a7b4c  mov x0,x19
016a7b50  bl 0x0124c4d0
016a7b54  ldr x19,[sp, #0x10]
016a7b58  orr w1,wzr,#0xfffffffd
016a7b5c  mov w2,#0x6e7
016a7b60  mov x0,x19
016a7b64  bl 0x0124a650
016a7b68  orr w1,wzr,#0xfffffffe
016a7b6c  mov x0,x19
016a7b70  bl 0x0124c0c0
016a7b74  orr w1,wzr,#0xfffffffe
016a7b78  mov x0,x19
016a7b7c  bl 0x0124e920
016a7b80  mov w20,w0
016a7b84  adrp x1,0x575e000
016a7b88  add x1,x1,#0x56d
016a7b8c  mov x0,x19
016a7b90  bl 0x0124f120
016a7b94  orr w1,wzr,#0xfffffffe
016a7b98  mov w2,#0x1
016a7b9c  mov x0,x19
016a7ba0  bl 0x0124cfc0
016a7ba4  mov x0,x19
016a7ba8  mov w1,w20
016a7bac  bl 0x0124e060
016a7bb0  orr w1,wzr,#0xfffffffd
016a7bb4  mov x0,x19
016a7bb8  bl 0x0124c4d0
016a7bbc  ldr x0,[sp, #0x10]
016a7bc0  mov w1,#0x10
016a7bc4  bl 0x0124cba0
016a7bc8  adrp x8,0x17a5000
016a7bcc  dup v0.2D,xzr
016a7bd0  add x8,x8,#0x744
016a7bd4  mov v0.D[0x0],x8
016a7bd8  str q0,[x0]
016a7bdc  ldr x0,[sp, #0x10]
016a7be0  adrp x1,0x17a5000
016a7be4  add x1,x1,#0xc34
016a7be8  mov w2,#0x1
016a7bec  bl 0x0124ec90
016a7bf0  ldr x0,[sp, #0x10]
016a7bf4  mov w1,#0xffffffff
016a7bf8  bl 0x0124c0c0
016a7bfc  ldr x19,[sp, #0x10]
016a7c00  orr w1,wzr,#0xfffffffb
016a7c04  mov w2,#0x6e7
016a7c08  mov x0,x19
016a7c0c  bl 0x0124a650
016a7c10  orr w1,wzr,#0xfffffffe
016a7c14  mov x0,x19
016a7c18  bl 0x0124c0c0
016a7c1c  orr w1,wzr,#0xfffffffe
016a7c20  mov x0,x19
016a7c24  bl 0x0124e920
016a7c28  mov w20,w0
016a7c2c  adrp x1,0x575e000
016a7c30  add x1,x1,#0x578
016a7c34  mov x0,x19
016a7c38  bl 0x0124f120
016a7c3c  orr w1,wzr,#0xfffffffe
016a7c40  mov w2,#0x1
016a7c44  mov x0,x19
016a7c48  bl 0x0124cfc0
016a7c4c  mov x0,x19
016a7c50  mov w1,w20
016a7c54  bl 0x0124e060
016a7c58  orr w1,wzr,#0xfffffffd
016a7c5c  mov x0,x19
016a7c60  bl 0x0124c4d0
016a7c64  ldr x19,[sp, #0x10]
016a7c68  orr w1,wzr,#0xfffffffd
016a7c6c  mov w2,#0x6e7
016a7c70  mov x0,x19
016a7c74  bl 0x0124a650
016a7c78  orr w1,wzr,#0xfffffffe
016a7c7c  mov x0,x19
016a7c80  bl 0x0124c0c0
016a7c84  orr w1,wzr,#0xfffffffe
016a7c88  mov x0,x19
016a7c8c  bl 0x0124e920
016a7c90  mov w20,w0
016a7c94  adrp x1,0x575e000
016a7c98  add x1,x1,#0x578
016a7c9c  mov x0,x19
016a7ca0  bl 0x0124f120
016a7ca4  orr w1,wzr,#0xfffffffe
016a7ca8  mov w2,#0x1
016a7cac  mov x0,x19
016a7cb0  bl 0x0124cfc0
016a7cb4  mov x0,x19
016a7cb8  mov w1,w20
016a7cbc  bl 0x0124e060
016a7cc0  orr w1,wzr,#0xfffffffd
016a7cc4  mov x0,x19
016a7cc8  bl 0x0124c4d0
016a7ccc  ldr w8,[sp, #0x18]
016a7cd0  ldr x0,[sp, #0x10]
016a7cd4  sub w8,w8,#0x3
016a7cd8  str w8,[sp, #0x18]
016a7cdc  orr w1,wzr,#0xfffffffc
016a7ce0  bl 0x0124c4d0
016a7ce4  ldr w8,[sp, #0x18]
016a7ce8  ldr x0,[sp, #0x10]
016a7cec  str wzr,[sp, #0x18]
016a7cf0  cmp w8,#0x1
016a7cf4  b.lt 0x016a7d18
016a7cf8  mvn w1,w8
016a7cfc  bl 0x0124c4d0
016a7d00  ldr w8,[sp, #0x18]
016a7d04  cmp w8,#0x1
016a7d08  b.lt 0x016a7d18
016a7d0c  ldr x0,[sp, #0x10]
016a7d10  mvn w1,w8
016a7d14  bl 0x0124c4d0
016a7d18  ldr w8,[sp, #0x8]
016a7d1c  cmp w8,#0x1
016a7d20  b.lt 0x016a7d30
016a7d24  ldr x0,[sp]
016a7d28  mvn w1,w8
016a7d2c  bl 0x0124c4d0
016a7d30  ldp x29,x30,[sp, #0x30]
016a7d34  ldp x20,x19,[sp, #0x20]
016a7d38  add sp,sp,#0x40
016a7d3c  ret
