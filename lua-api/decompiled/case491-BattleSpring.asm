// ===== case491-BattleSpring @ 016f2a90 =====
// existing function case491-BattleSpring
016f2a90  sub sp,sp,#0x40
016f2a94  stp x20,x19,[sp, #0x20]
016f2a98  stp x29,x30,[sp, #0x30]
016f2a9c  add x29,sp,#0x30
016f2aa0  adrp x1,0x174a000
016f2aa4  add x1,x1,#0x87c
016f2aa8  mov x19,x0
016f2aac  bl 0x0124ba40
016f2ab0  adrp x1,0x575d000
016f2ab4  add x1,x1,#0xa06
016f2ab8  mov x0,x19
016f2abc  str x19,[sp]
016f2ac0  bl 0x01251aa0
016f2ac4  mov w8,#0x1
016f2ac8  str w8,[sp, #0x8]
016f2acc  mov x0,sp
016f2ad0  bl 0x0174aa04
016f2ad4  adrp x1,0x5767000
016f2ad8  adrp x3,0x736d000
016f2adc  add x1,x1,#0xe1f
016f2ae0  add x3,x3,#0x101
016f2ae4  add x0,sp,#0x10
016f2ae8  mov x2,sp
016f2aec  bl 0x01889a54
016f2af0  ldr x0,[sp, #0x10]
016f2af4  mov w1,#0x10
016f2af8  bl 0x0124cba0
016f2afc  adrp x8,0x1889000
016f2b00  dup v0.2D,xzr
016f2b04  add x8,x8,#0xa4c
016f2b08  mov v0.D[0x0],x8
016f2b0c  str q0,[x0]
016f2b10  ldr x0,[sp, #0x10]
016f2b14  adrp x1,0x1889000
016f2b18  add x1,x1,#0xe18
016f2b1c  mov w2,#0x1
016f2b20  bl 0x0124ec90
016f2b24  ldr x0,[sp, #0x10]
016f2b28  mov w1,#0xffffffff
016f2b2c  bl 0x0124c0c0
016f2b30  ldr x19,[sp, #0x10]
016f2b34  orr w1,wzr,#0xfffffffb
016f2b38  mov w2,#0x6e7
016f2b3c  mov x0,x19
016f2b40  bl 0x0124a650
016f2b44  orr w1,wzr,#0xfffffffe
016f2b48  mov x0,x19
016f2b4c  bl 0x0124c0c0
016f2b50  orr w1,wzr,#0xfffffffe
016f2b54  mov x0,x19
016f2b58  bl 0x0124e920
016f2b5c  mov w20,w0
016f2b60  adrp x1,0x5767000
016f2b64  add x1,x1,#0xd21
016f2b68  mov x0,x19
016f2b6c  bl 0x0124f120
016f2b70  orr w1,wzr,#0xfffffffe
016f2b74  mov w2,#0x1
016f2b78  mov x0,x19
016f2b7c  bl 0x0124cfc0
016f2b80  mov x0,x19
016f2b84  mov w1,w20
016f2b88  bl 0x0124e060
016f2b8c  orr w1,wzr,#0xfffffffd
016f2b90  mov x0,x19
016f2b94  bl 0x0124c4d0
016f2b98  ldr x19,[sp, #0x10]
016f2b9c  orr w1,wzr,#0xfffffffd
016f2ba0  mov w2,#0x6e7
016f2ba4  mov x0,x19
016f2ba8  bl 0x0124a650
016f2bac  orr w1,wzr,#0xfffffffe
016f2bb0  mov x0,x19
016f2bb4  bl 0x0124c0c0
016f2bb8  orr w1,wzr,#0xfffffffe
016f2bbc  mov x0,x19
016f2bc0  bl 0x0124e920
016f2bc4  mov w20,w0
016f2bc8  adrp x1,0x5767000
016f2bcc  add x1,x1,#0xd21
016f2bd0  mov x0,x19
016f2bd4  bl 0x0124f120
016f2bd8  orr w1,wzr,#0xfffffffe
016f2bdc  mov w2,#0x1
016f2be0  mov x0,x19
016f2be4  bl 0x0124cfc0
016f2be8  mov x0,x19
016f2bec  mov w1,w20
016f2bf0  bl 0x0124e060
016f2bf4  orr w1,wzr,#0xfffffffd
016f2bf8  mov x0,x19
016f2bfc  bl 0x0124c4d0
016f2c00  ldr w8,[sp, #0x18]
016f2c04  ldr x0,[sp, #0x10]
016f2c08  sub w8,w8,#0x3
016f2c0c  str w8,[sp, #0x18]
016f2c10  orr w1,wzr,#0xfffffffc
016f2c14  bl 0x0124c4d0
016f2c18  ldr w8,[sp, #0x18]
016f2c1c  ldr x0,[sp, #0x10]
016f2c20  str wzr,[sp, #0x18]
016f2c24  cmp w8,#0x1
016f2c28  b.lt 0x016f2c4c
016f2c2c  mvn w1,w8
016f2c30  bl 0x0124c4d0
016f2c34  ldr w8,[sp, #0x18]
016f2c38  cmp w8,#0x1
016f2c3c  b.lt 0x016f2c4c
016f2c40  ldr x0,[sp, #0x10]
016f2c44  mvn w1,w8
016f2c48  bl 0x0124c4d0
016f2c4c  ldr w8,[sp, #0x8]
016f2c50  cmp w8,#0x1
016f2c54  b.lt 0x016f2c64
016f2c58  ldr x0,[sp]
016f2c5c  mvn w1,w8
016f2c60  bl 0x0124c4d0
016f2c64  ldp x29,x30,[sp, #0x30]
016f2c68  ldp x20,x19,[sp, #0x20]
016f2c6c  add sp,sp,#0x40
016f2c70  ret
