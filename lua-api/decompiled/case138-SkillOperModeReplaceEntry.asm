// ===== case138-SkillOperModeReplaceEntry @ 016a395c =====
// existing function case138-SkillOperModeReplaceEntry
016a395c  sub sp,sp,#0x40
016a3960  stp x20,x19,[sp, #0x20]
016a3964  stp x29,x30,[sp, #0x30]
016a3968  add x29,sp,#0x30
016a396c  adrp x1,0x174a000
016a3970  add x1,x1,#0x87c
016a3974  mov x19,x0
016a3978  bl 0x0124ba40
016a397c  adrp x1,0x575d000
016a3980  add x1,x1,#0xa06
016a3984  mov x0,x19
016a3988  str x19,[sp]
016a398c  bl 0x01251aa0
016a3990  mov w8,#0x1
016a3994  str w8,[sp, #0x8]
016a3998  mov x0,sp
016a399c  bl 0x0174aa04
016a39a0  adrp x1,0x575f000
016a39a4  adrp x3,0x736d000
016a39a8  add x1,x1,#0xe8f
016a39ac  add x3,x3,#0x101
016a39b0  add x0,sp,#0x10
016a39b4  mov x2,sp
016a39b8  bl 0x0179a3b4
016a39bc  ldr x0,[sp, #0x10]
016a39c0  mov w1,#0x10
016a39c4  bl 0x0124cba0
016a39c8  adrp x8,0x179a000
016a39cc  dup v0.2D,xzr
016a39d0  add x8,x8,#0x3a4
016a39d4  mov v0.D[0x0],x8
016a39d8  str q0,[x0]
016a39dc  ldr x0,[sp, #0x10]
016a39e0  adrp x1,0x179a000
016a39e4  add x1,x1,#0x778
016a39e8  mov w2,#0x1
016a39ec  bl 0x0124ec90
016a39f0  ldr x0,[sp, #0x10]
016a39f4  mov w1,#0xffffffff
016a39f8  bl 0x0124c0c0
016a39fc  ldr x19,[sp, #0x10]
016a3a00  orr w1,wzr,#0xfffffffb
016a3a04  mov w2,#0x6e7
016a3a08  mov x0,x19
016a3a0c  bl 0x0124a650
016a3a10  orr w1,wzr,#0xfffffffe
016a3a14  mov x0,x19
016a3a18  bl 0x0124c0c0
016a3a1c  orr w1,wzr,#0xfffffffe
016a3a20  mov x0,x19
016a3a24  bl 0x0124e920
016a3a28  mov w20,w0
016a3a2c  adrp x1,0x58ed000
016a3a30  add x1,x1,#0xd5e
016a3a34  mov x0,x19
016a3a38  bl 0x0124f120
016a3a3c  orr w1,wzr,#0xfffffffe
016a3a40  mov w2,#0x1
016a3a44  mov x0,x19
016a3a48  bl 0x0124cfc0
016a3a4c  mov x0,x19
016a3a50  mov w1,w20
016a3a54  bl 0x0124e060
016a3a58  orr w1,wzr,#0xfffffffd
016a3a5c  mov x0,x19
016a3a60  bl 0x0124c4d0
016a3a64  ldr x19,[sp, #0x10]
016a3a68  orr w1,wzr,#0xfffffffd
016a3a6c  mov w2,#0x6e7
016a3a70  mov x0,x19
016a3a74  bl 0x0124a650
016a3a78  orr w1,wzr,#0xfffffffe
016a3a7c  mov x0,x19
016a3a80  bl 0x0124c0c0
016a3a84  orr w1,wzr,#0xfffffffe
016a3a88  mov x0,x19
016a3a8c  bl 0x0124e920
016a3a90  mov w20,w0
016a3a94  adrp x1,0x58ed000
016a3a98  add x1,x1,#0xd5e
016a3a9c  mov x0,x19
016a3aa0  bl 0x0124f120
016a3aa4  orr w1,wzr,#0xfffffffe
016a3aa8  mov w2,#0x1
016a3aac  mov x0,x19
016a3ab0  bl 0x0124cfc0
016a3ab4  mov x0,x19
016a3ab8  mov w1,w20
016a3abc  bl 0x0124e060
016a3ac0  orr w1,wzr,#0xfffffffd
016a3ac4  mov x0,x19
016a3ac8  bl 0x0124c4d0
016a3acc  ldr x0,[sp, #0x10]
016a3ad0  mov w1,#0x10
016a3ad4  bl 0x0124cba0
016a3ad8  adrp x8,0x179a000
016a3adc  dup v0.2D,xzr
016a3ae0  add x8,x8,#0x3ac
016a3ae4  mov v0.D[0x0],x8
016a3ae8  str q0,[x0]
016a3aec  ldr x0,[sp, #0x10]
016a3af0  adrp x1,0x179a000
016a3af4  add x1,x1,#0x89c
016a3af8  mov w2,#0x1
016a3afc  bl 0x0124ec90
016a3b00  ldr x0,[sp, #0x10]
016a3b04  mov w1,#0xffffffff
016a3b08  bl 0x0124c0c0
016a3b0c  ldr x19,[sp, #0x10]
016a3b10  orr w1,wzr,#0xfffffffb
016a3b14  mov w2,#0x6e7
016a3b18  mov x0,x19
016a3b1c  bl 0x0124a650
016a3b20  orr w1,wzr,#0xfffffffe
016a3b24  mov x0,x19
016a3b28  bl 0x0124c0c0
016a3b2c  orr w1,wzr,#0xfffffffe
016a3b30  mov x0,x19
016a3b34  bl 0x0124e920
016a3b38  mov w20,w0
016a3b3c  adrp x1,0x575f000
016a3b40  add x1,x1,#0xea9
016a3b44  mov x0,x19
016a3b48  bl 0x0124f120
016a3b4c  orr w1,wzr,#0xfffffffe
016a3b50  mov w2,#0x1
016a3b54  mov x0,x19
016a3b58  bl 0x0124cfc0
016a3b5c  mov x0,x19
016a3b60  mov w1,w20
016a3b64  bl 0x0124e060
016a3b68  orr w1,wzr,#0xfffffffd
016a3b6c  mov x0,x19
016a3b70  bl 0x0124c4d0
016a3b74  ldr x19,[sp, #0x10]
016a3b78  orr w1,wzr,#0xfffffffd
016a3b7c  mov w2,#0x6e7
016a3b80  mov x0,x19
016a3b84  bl 0x0124a650
016a3b88  orr w1,wzr,#0xfffffffe
016a3b8c  mov x0,x19
016a3b90  bl 0x0124c0c0
016a3b94  orr w1,wzr,#0xfffffffe
016a3b98  mov x0,x19
016a3b9c  bl 0x0124e920
016a3ba0  mov w20,w0
016a3ba4  adrp x1,0x575f000
016a3ba8  add x1,x1,#0xea9
016a3bac  mov x0,x19
016a3bb0  bl 0x0124f120
016a3bb4  orr w1,wzr,#0xfffffffe
016a3bb8  mov w2,#0x1
016a3bbc  mov x0,x19
016a3bc0  bl 0x0124cfc0
016a3bc4  mov x0,x19
016a3bc8  mov w1,w20
016a3bcc  bl 0x0124e060
016a3bd0  orr w1,wzr,#0xfffffffd
016a3bd4  mov x0,x19
016a3bd8  bl 0x0124c4d0
016a3bdc  ldr w8,[sp, #0x18]
016a3be0  ldr x0,[sp, #0x10]
016a3be4  sub w8,w8,#0x3
016a3be8  str w8,[sp, #0x18]
016a3bec  orr w1,wzr,#0xfffffffc
016a3bf0  bl 0x0124c4d0
016a3bf4  ldr w8,[sp, #0x18]
016a3bf8  ldr x0,[sp, #0x10]
016a3bfc  str wzr,[sp, #0x18]
016a3c00  cmp w8,#0x1
016a3c04  b.lt 0x016a3c28
016a3c08  mvn w1,w8
016a3c0c  bl 0x0124c4d0
016a3c10  ldr w8,[sp, #0x18]
016a3c14  cmp w8,#0x1
016a3c18  b.lt 0x016a3c28
016a3c1c  ldr x0,[sp, #0x10]
016a3c20  mvn w1,w8
016a3c24  bl 0x0124c4d0
016a3c28  ldr w8,[sp, #0x8]
016a3c2c  cmp w8,#0x1
016a3c30  b.lt 0x016a3c40
016a3c34  ldr x0,[sp]
016a3c38  mvn w1,w8
016a3c3c  bl 0x0124c4d0
016a3c40  ldp x29,x30,[sp, #0x30]
016a3c44  ldp x20,x19,[sp, #0x20]
016a3c48  add sp,sp,#0x40
016a3c4c  ret
