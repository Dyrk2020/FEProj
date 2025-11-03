// ===== case126-SkillTipResObject @ 016a1a64 =====
// existing function case126-SkillTipResObject
016a1a64  sub sp,sp,#0x40
016a1a68  stp x20,x19,[sp, #0x20]
016a1a6c  stp x29,x30,[sp, #0x30]
016a1a70  add x29,sp,#0x30
016a1a74  adrp x1,0x174a000
016a1a78  add x1,x1,#0x87c
016a1a7c  mov x19,x0
016a1a80  bl 0x0124ba40
016a1a84  adrp x1,0x575d000
016a1a88  add x1,x1,#0xa06
016a1a8c  mov x0,x19
016a1a90  str x19,[sp]
016a1a94  bl 0x01251aa0
016a1a98  mov w8,#0x1
016a1a9c  str w8,[sp, #0x8]
016a1aa0  mov x0,sp
016a1aa4  bl 0x0174aa04
016a1aa8  adrp x1,0x575f000
016a1aac  adrp x3,0x736d000
016a1ab0  add x1,x1,#0xcce
016a1ab4  add x3,x3,#0x101
016a1ab8  add x0,sp,#0x10
016a1abc  mov x2,sp
016a1ac0  bl 0x017945bc
016a1ac4  ldr x0,[sp, #0x10]
016a1ac8  mov w1,#0x10
016a1acc  bl 0x0124cba0
016a1ad0  adrp x8,0x1794000
016a1ad4  dup v0.2D,xzr
016a1ad8  add x8,x8,#0x5ac
016a1adc  mov v0.D[0x0],x8
016a1ae0  str q0,[x0]
016a1ae4  ldr x0,[sp, #0x10]
016a1ae8  adrp x1,0x1794000
016a1aec  add x1,x1,#0x980
016a1af0  mov w2,#0x1
016a1af4  bl 0x0124ec90
016a1af8  ldr x0,[sp, #0x10]
016a1afc  mov w1,#0xffffffff
016a1b00  bl 0x0124c0c0
016a1b04  ldr x19,[sp, #0x10]
016a1b08  orr w1,wzr,#0xfffffffb
016a1b0c  mov w2,#0x6e7
016a1b10  mov x0,x19
016a1b14  bl 0x0124a650
016a1b18  orr w1,wzr,#0xfffffffe
016a1b1c  mov x0,x19
016a1b20  bl 0x0124c0c0
016a1b24  orr w1,wzr,#0xfffffffe
016a1b28  mov x0,x19
016a1b2c  bl 0x0124e920
016a1b30  mov w20,w0
016a1b34  adrp x1,0x575e000
016a1b38  add x1,x1,#0x56d
016a1b3c  mov x0,x19
016a1b40  bl 0x0124f120
016a1b44  orr w1,wzr,#0xfffffffe
016a1b48  mov w2,#0x1
016a1b4c  mov x0,x19
016a1b50  bl 0x0124cfc0
016a1b54  mov x0,x19
016a1b58  mov w1,w20
016a1b5c  bl 0x0124e060
016a1b60  orr w1,wzr,#0xfffffffd
016a1b64  mov x0,x19
016a1b68  bl 0x0124c4d0
016a1b6c  ldr x19,[sp, #0x10]
016a1b70  orr w1,wzr,#0xfffffffd
016a1b74  mov w2,#0x6e7
016a1b78  mov x0,x19
016a1b7c  bl 0x0124a650
016a1b80  orr w1,wzr,#0xfffffffe
016a1b84  mov x0,x19
016a1b88  bl 0x0124c0c0
016a1b8c  orr w1,wzr,#0xfffffffe
016a1b90  mov x0,x19
016a1b94  bl 0x0124e920
016a1b98  mov w20,w0
016a1b9c  adrp x1,0x575e000
016a1ba0  add x1,x1,#0x56d
016a1ba4  mov x0,x19
016a1ba8  bl 0x0124f120
016a1bac  orr w1,wzr,#0xfffffffe
016a1bb0  mov w2,#0x1
016a1bb4  mov x0,x19
016a1bb8  bl 0x0124cfc0
016a1bbc  mov x0,x19
016a1bc0  mov w1,w20
016a1bc4  bl 0x0124e060
016a1bc8  orr w1,wzr,#0xfffffffd
016a1bcc  mov x0,x19
016a1bd0  bl 0x0124c4d0
016a1bd4  ldr x0,[sp, #0x10]
016a1bd8  mov w1,#0x10
016a1bdc  bl 0x0124cba0
016a1be0  adrp x8,0x1794000
016a1be4  dup v0.2D,xzr
016a1be8  add x8,x8,#0x5b4
016a1bec  mov v0.D[0x0],x8
016a1bf0  str q0,[x0]
016a1bf4  ldr x0,[sp, #0x10]
016a1bf8  adrp x1,0x1794000
016a1bfc  add x1,x1,#0xaa4
016a1c00  mov w2,#0x1
016a1c04  bl 0x0124ec90
016a1c08  ldr x0,[sp, #0x10]
016a1c0c  mov w1,#0xffffffff
016a1c10  bl 0x0124c0c0
016a1c14  ldr x19,[sp, #0x10]
016a1c18  orr w1,wzr,#0xfffffffb
016a1c1c  mov w2,#0x6e7
016a1c20  mov x0,x19
016a1c24  bl 0x0124a650
016a1c28  orr w1,wzr,#0xfffffffe
016a1c2c  mov x0,x19
016a1c30  bl 0x0124c0c0
016a1c34  orr w1,wzr,#0xfffffffe
016a1c38  mov x0,x19
016a1c3c  bl 0x0124e920
016a1c40  mov w20,w0
016a1c44  adrp x1,0x575e000
016a1c48  add x1,x1,#0x578
016a1c4c  mov x0,x19
016a1c50  bl 0x0124f120
016a1c54  orr w1,wzr,#0xfffffffe
016a1c58  mov w2,#0x1
016a1c5c  mov x0,x19
016a1c60  bl 0x0124cfc0
016a1c64  mov x0,x19
016a1c68  mov w1,w20
016a1c6c  bl 0x0124e060
016a1c70  orr w1,wzr,#0xfffffffd
016a1c74  mov x0,x19
016a1c78  bl 0x0124c4d0
016a1c7c  ldr x19,[sp, #0x10]
016a1c80  orr w1,wzr,#0xfffffffd
016a1c84  mov w2,#0x6e7
016a1c88  mov x0,x19
016a1c8c  bl 0x0124a650
016a1c90  orr w1,wzr,#0xfffffffe
016a1c94  mov x0,x19
016a1c98  bl 0x0124c0c0
016a1c9c  orr w1,wzr,#0xfffffffe
016a1ca0  mov x0,x19
016a1ca4  bl 0x0124e920
016a1ca8  mov w20,w0
016a1cac  adrp x1,0x575e000
016a1cb0  add x1,x1,#0x578
016a1cb4  mov x0,x19
016a1cb8  bl 0x0124f120
016a1cbc  orr w1,wzr,#0xfffffffe
016a1cc0  mov w2,#0x1
016a1cc4  mov x0,x19
016a1cc8  bl 0x0124cfc0
016a1ccc  mov x0,x19
016a1cd0  mov w1,w20
016a1cd4  bl 0x0124e060
016a1cd8  orr w1,wzr,#0xfffffffd
016a1cdc  mov x0,x19
016a1ce0  bl 0x0124c4d0
016a1ce4  ldr w8,[sp, #0x18]
016a1ce8  ldr x0,[sp, #0x10]
016a1cec  sub w8,w8,#0x3
016a1cf0  str w8,[sp, #0x18]
016a1cf4  orr w1,wzr,#0xfffffffc
016a1cf8  bl 0x0124c4d0
016a1cfc  ldr w8,[sp, #0x18]
016a1d00  ldr x0,[sp, #0x10]
016a1d04  str wzr,[sp, #0x18]
016a1d08  cmp w8,#0x1
016a1d0c  b.lt 0x016a1d30
016a1d10  mvn w1,w8
016a1d14  bl 0x0124c4d0
016a1d18  ldr w8,[sp, #0x18]
016a1d1c  cmp w8,#0x1
016a1d20  b.lt 0x016a1d30
016a1d24  ldr x0,[sp, #0x10]
016a1d28  mvn w1,w8
016a1d2c  bl 0x0124c4d0
016a1d30  ldr w8,[sp, #0x8]
016a1d34  cmp w8,#0x1
016a1d38  b.lt 0x016a1d48
016a1d3c  ldr x0,[sp]
016a1d40  mvn w1,w8
016a1d44  bl 0x0124c4d0
016a1d48  ldp x29,x30,[sp, #0x30]
016a1d4c  ldp x20,x19,[sp, #0x20]
016a1d50  add sp,sp,#0x40
016a1d54  ret
