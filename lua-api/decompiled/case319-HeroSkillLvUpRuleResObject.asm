// ===== case319-HeroSkillLvUpRuleResObject @ 016c1a10 =====
// existing function case319-HeroSkillLvUpRuleResObject
016c1a10  sub sp,sp,#0x40
016c1a14  stp x20,x19,[sp, #0x20]
016c1a18  stp x29,x30,[sp, #0x30]
016c1a1c  add x29,sp,#0x30
016c1a20  adrp x1,0x174a000
016c1a24  add x1,x1,#0x87c
016c1a28  mov x19,x0
016c1a2c  bl 0x0124ba40
016c1a30  adrp x1,0x575d000
016c1a34  add x1,x1,#0xa06
016c1a38  mov x0,x19
016c1a3c  str x19,[sp]
016c1a40  bl 0x01251aa0
016c1a44  mov w8,#0x1
016c1a48  str w8,[sp, #0x8]
016c1a4c  mov x0,sp
016c1a50  bl 0x0174aa04
016c1a54  adrp x1,0x5762000
016c1a58  adrp x3,0x736d000
016c1a5c  add x1,x1,#0xab3
016c1a60  add x3,x3,#0x101
016c1a64  add x0,sp,#0x10
016c1a68  mov x2,sp
016c1a6c  bl 0x017fe5b0
016c1a70  ldr x0,[sp, #0x10]
016c1a74  mov w1,#0x10
016c1a78  bl 0x0124cba0
016c1a7c  adrp x8,0x17fe000
016c1a80  dup v0.2D,xzr
016c1a84  add x8,x8,#0x5a8
016c1a88  mov v0.D[0x0],x8
016c1a8c  str q0,[x0]
016c1a90  ldr x0,[sp, #0x10]
016c1a94  adrp x1,0x17fe000
016c1a98  add x1,x1,#0x974
016c1a9c  mov w2,#0x1
016c1aa0  bl 0x0124ec90
016c1aa4  ldr x0,[sp, #0x10]
016c1aa8  mov w1,#0xffffffff
016c1aac  bl 0x0124c0c0
016c1ab0  ldr x19,[sp, #0x10]
016c1ab4  orr w1,wzr,#0xfffffffb
016c1ab8  mov w2,#0x6e7
016c1abc  mov x0,x19
016c1ac0  bl 0x0124a650
016c1ac4  orr w1,wzr,#0xfffffffe
016c1ac8  mov x0,x19
016c1acc  bl 0x0124c0c0
016c1ad0  orr w1,wzr,#0xfffffffe
016c1ad4  mov x0,x19
016c1ad8  bl 0x0124e920
016c1adc  mov w20,w0
016c1ae0  adrp x1,0x5762000
016c1ae4  add x1,x1,#0xace
016c1ae8  mov x0,x19
016c1aec  bl 0x0124f120
016c1af0  orr w1,wzr,#0xfffffffe
016c1af4  mov w2,#0x1
016c1af8  mov x0,x19
016c1afc  bl 0x0124cfc0
016c1b00  mov x0,x19
016c1b04  mov w1,w20
016c1b08  bl 0x0124e060
016c1b0c  orr w1,wzr,#0xfffffffd
016c1b10  mov x0,x19
016c1b14  bl 0x0124c4d0
016c1b18  ldr x19,[sp, #0x10]
016c1b1c  orr w1,wzr,#0xfffffffd
016c1b20  mov w2,#0x6e7
016c1b24  mov x0,x19
016c1b28  bl 0x0124a650
016c1b2c  orr w1,wzr,#0xfffffffe
016c1b30  mov x0,x19
016c1b34  bl 0x0124c0c0
016c1b38  orr w1,wzr,#0xfffffffe
016c1b3c  mov x0,x19
016c1b40  bl 0x0124e920
016c1b44  mov w20,w0
016c1b48  adrp x1,0x5762000
016c1b4c  add x1,x1,#0xace
016c1b50  mov x0,x19
016c1b54  bl 0x0124f120
016c1b58  orr w1,wzr,#0xfffffffe
016c1b5c  mov w2,#0x1
016c1b60  mov x0,x19
016c1b64  bl 0x0124cfc0
016c1b68  mov x0,x19
016c1b6c  mov w1,w20
016c1b70  bl 0x0124e060
016c1b74  orr w1,wzr,#0xfffffffd
016c1b78  mov x0,x19
016c1b7c  bl 0x0124c4d0
016c1b80  ldr w8,[sp, #0x18]
016c1b84  ldr x0,[sp, #0x10]
016c1b88  sub w8,w8,#0x3
016c1b8c  str w8,[sp, #0x18]
016c1b90  orr w1,wzr,#0xfffffffc
016c1b94  bl 0x0124c4d0
016c1b98  ldr w8,[sp, #0x18]
016c1b9c  ldr x0,[sp, #0x10]
016c1ba0  str wzr,[sp, #0x18]
016c1ba4  cmp w8,#0x1
016c1ba8  b.lt 0x016c1bcc
016c1bac  mvn w1,w8
016c1bb0  bl 0x0124c4d0
016c1bb4  ldr w8,[sp, #0x18]
016c1bb8  cmp w8,#0x1
016c1bbc  b.lt 0x016c1bcc
016c1bc0  ldr x0,[sp, #0x10]
016c1bc4  mvn w1,w8
016c1bc8  bl 0x0124c4d0
016c1bcc  ldr w8,[sp, #0x8]
016c1bd0  cmp w8,#0x1
016c1bd4  b.lt 0x016c1be4
016c1bd8  ldr x0,[sp]
016c1bdc  mvn w1,w8
016c1be0  bl 0x0124c4d0
016c1be4  ldp x29,x30,[sp, #0x30]
016c1be8  ldp x20,x19,[sp, #0x20]
016c1bec  add sp,sp,#0x40
016c1bf0  ret
