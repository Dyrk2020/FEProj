// ===== case526-ActorSpellShieldHitInfo @ 016f8a5c =====
// existing function case526-ActorSpellShieldHitInfo
016f8a5c  sub sp,sp,#0x40
016f8a60  str x19,[sp, #0x20]
016f8a64  stp x29,x30,[sp, #0x30]
016f8a68  add x29,sp,#0x30
016f8a6c  adrp x1,0x174a000
016f8a70  add x1,x1,#0x87c
016f8a74  mov x19,x0
016f8a78  bl 0x0124ba40
016f8a7c  adrp x1,0x575d000
016f8a80  add x1,x1,#0xa06
016f8a84  mov x0,x19
016f8a88  str x19,[sp]
016f8a8c  bl 0x01251aa0
016f8a90  mov w8,#0x1
016f8a94  str w8,[sp, #0x8]
016f8a98  mov x0,sp
016f8a9c  bl 0x0174aa04
016f8aa0  adrp x1,0x5768000
016f8aa4  adrp x3,0x736d000
016f8aa8  add x1,x1,#0xa35
016f8aac  add x3,x3,#0x101
016f8ab0  add x0,sp,#0x10
016f8ab4  mov x2,sp
016f8ab8  bl 0x018adf8c
016f8abc  adrp x1,0x5768000
016f8ac0  adrp x2,0x18ad000
016f8ac4  adrp x4,0x18ad000
016f8ac8  add x1,x1,#0xa4d
016f8acc  add x2,x2,#0xf2c
016f8ad0  add x4,x4,#0xf34
016f8ad4  add x0,sp,#0x10
016f8ad8  mov x3,xzr
016f8adc  mov x5,xzr
016f8ae0  bl 0x018add44
016f8ae4  adrp x1,0x5768000
016f8ae8  adrp x2,0x18ad000
016f8aec  adrp x4,0x18ad000
016f8af0  add x1,x1,#0xa5a
016f8af4  add x2,x2,#0xf3c
016f8af8  add x4,x4,#0xf44
016f8afc  mov x3,xzr
016f8b00  mov x5,xzr
016f8b04  bl 0x018add44
016f8b08  adrp x1,0x5766000
016f8b0c  adrp x2,0x18ad000
016f8b10  adrp x4,0x18ad000
016f8b14  add x1,x1,#0x710
016f8b18  add x2,x2,#0xf4c
016f8b1c  add x4,x4,#0xf54
016f8b20  mov x3,xzr
016f8b24  mov x5,xzr
016f8b28  bl 0x018add44
016f8b2c  adrp x1,0x5768000
016f8b30  adrp x2,0x18ad000
016f8b34  adrp x4,0x18ad000
016f8b38  add x1,x1,#0xa68
016f8b3c  add x2,x2,#0xf5c
016f8b40  add x4,x4,#0xf64
016f8b44  mov x3,xzr
016f8b48  mov x5,xzr
016f8b4c  bl 0x018add44
016f8b50  adrp x1,0x5768000
016f8b54  adrp x2,0x18ad000
016f8b58  adrp x4,0x18ad000
016f8b5c  add x1,x1,#0xa71
016f8b60  add x2,x2,#0xf6c
016f8b64  add x4,x4,#0xf74
016f8b68  mov x3,xzr
016f8b6c  mov x5,xzr
016f8b70  bl 0x018add44
016f8b74  adrp x1,0x5768000
016f8b78  adrp x2,0x18ad000
016f8b7c  adrp x4,0x18ad000
016f8b80  add x1,x1,#0xa79
016f8b84  add x2,x2,#0xf7c
016f8b88  add x4,x4,#0xf84
016f8b8c  mov x3,xzr
016f8b90  mov x5,xzr
016f8b94  bl 0x018add44
016f8b98  mov x19,x0
016f8b9c  ldr w8,[x19, #0x8]
016f8ba0  ldr x0,[x19]
016f8ba4  sub w8,w8,#0x3
016f8ba8  str w8,[x19, #0x8]
016f8bac  orr w1,wzr,#0xfffffffc
016f8bb0  bl 0x0124c4d0
016f8bb4  ldr w8,[x19, #0x8]
016f8bb8  ldr x0,[x19]
016f8bbc  str wzr,[x19, #0x8]
016f8bc0  cmp w8,#0x1
016f8bc4  b.lt 0x016f8bd0
016f8bc8  mvn w1,w8
016f8bcc  bl 0x0124c4d0
016f8bd0  ldr w8,[sp, #0x18]
016f8bd4  cmp w8,#0x1
016f8bd8  b.lt 0x016f8be8
016f8bdc  ldr x0,[sp, #0x10]
016f8be0  mvn w1,w8
016f8be4  bl 0x0124c4d0
016f8be8  ldr w8,[sp, #0x8]
016f8bec  cmp w8,#0x1
016f8bf0  b.lt 0x016f8c00
016f8bf4  ldr x0,[sp]
016f8bf8  mvn w1,w8
016f8bfc  bl 0x0124c4d0
016f8c00  ldp x29,x30,[sp, #0x30]
016f8c04  ldr x19,[sp, #0x20]
016f8c08  add sp,sp,#0x40
016f8c0c  ret
