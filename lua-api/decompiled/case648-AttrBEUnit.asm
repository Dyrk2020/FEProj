// ===== case648-AttrBEUnit @ 017149d8 =====
// existing function case648-AttrBEUnit
017149d8  sub sp,sp,#0x50
017149dc  str x21,[sp, #0x20]
017149e0  stp x20,x19,[sp, #0x30]
017149e4  stp x29,x30,[sp, #0x40]
017149e8  add x29,sp,#0x40
017149ec  adrp x1,0x174a000
017149f0  add x1,x1,#0x87c
017149f4  mov x19,x0
017149f8  bl 0x0124ba40
017149fc  adrp x1,0x575d000
01714a00  add x1,x1,#0xa06
01714a04  mov x0,x19
01714a08  str x19,[sp]
01714a0c  bl 0x01251aa0
01714a10  mov w8,#0x1
01714a14  str w8,[sp, #0x8]
01714a18  mov x0,sp
01714a1c  bl 0x0174aa04
01714a20  adrp x1,0x576c000
01714a24  adrp x3,0x736d000
01714a28  add x1,x1,#0x9ba
01714a2c  add x3,x3,#0x101
01714a30  add x0,sp,#0x10
01714a34  mov x2,sp
01714a38  bl 0x019255f4
01714a3c  adrp x1,0x576c000
01714a40  adrp x2,0x1925000
01714a44  adrp x4,0x1925000
01714a48  add x1,x1,#0x9c5
01714a4c  add x2,x2,#0x51c
01714a50  add x4,x4,#0x524
01714a54  add x0,sp,#0x10
01714a58  mov x3,xzr
01714a5c  mov x5,xzr
01714a60  bl 0x01925334
01714a64  adrp x1,0x576c000
01714a68  adrp x2,0x1925000
01714a6c  adrp x4,0x1925000
01714a70  add x1,x1,#0x9cd
01714a74  add x2,x2,#0x584
01714a78  add x4,x4,#0x58c
01714a7c  mov x3,xzr
01714a80  mov x5,xzr
01714a84  bl 0x01925334
01714a88  mov x19,x0
01714a8c  ldr x0,[x19]
01714a90  mov w1,#0x10
01714a94  bl 0x0124cba0
01714a98  adrp x8,0x1925000
01714a9c  dup v0.2D,xzr
01714aa0  add x8,x8,#0x5ec
01714aa4  mov v0.D[0x0],x8
01714aa8  str q0,[x0]
01714aac  ldr x0,[x19]
01714ab0  adrp x1,0x1925000
01714ab4  add x1,x1,#0xed4
01714ab8  mov w2,#0x1
01714abc  bl 0x0124ec90
01714ac0  ldr x0,[x19]
01714ac4  mov w1,#0xffffffff
01714ac8  bl 0x0124c0c0
01714acc  ldr x20,[x19]
01714ad0  orr w1,wzr,#0xfffffffb
01714ad4  mov w2,#0x6e7
01714ad8  mov x0,x20
01714adc  bl 0x0124a650
01714ae0  orr w1,wzr,#0xfffffffe
01714ae4  mov x0,x20
01714ae8  bl 0x0124c0c0
01714aec  orr w1,wzr,#0xfffffffe
01714af0  mov x0,x20
01714af4  bl 0x0124e920
01714af8  mov w21,w0
01714afc  adrp x1,0x576c000
01714b00  add x1,x1,#0x9d6
01714b04  mov x0,x20
01714b08  bl 0x0124f120
01714b0c  orr w1,wzr,#0xfffffffe
01714b10  mov w2,#0x1
01714b14  mov x0,x20
01714b18  bl 0x0124cfc0
01714b1c  mov x0,x20
01714b20  mov w1,w21
01714b24  bl 0x0124e060
01714b28  orr w1,wzr,#0xfffffffd
01714b2c  mov x0,x20
01714b30  bl 0x0124c4d0
01714b34  ldr x20,[x19]
01714b38  orr w1,wzr,#0xfffffffd
01714b3c  mov w2,#0x6e7
01714b40  mov x0,x20
01714b44  bl 0x0124a650
01714b48  orr w1,wzr,#0xfffffffe
01714b4c  mov x0,x20
01714b50  bl 0x0124c0c0
01714b54  orr w1,wzr,#0xfffffffe
01714b58  mov x0,x20
01714b5c  bl 0x0124e920
01714b60  mov w21,w0
01714b64  adrp x1,0x576c000
01714b68  add x1,x1,#0x9d6
01714b6c  mov x0,x20
01714b70  bl 0x0124f120
01714b74  orr w1,wzr,#0xfffffffe
01714b78  mov w2,#0x1
01714b7c  mov x0,x20
01714b80  bl 0x0124cfc0
01714b84  mov x0,x20
01714b88  mov w1,w21
01714b8c  bl 0x0124e060
01714b90  orr w1,wzr,#0xfffffffd
01714b94  mov x0,x20
01714b98  bl 0x0124c4d0
01714b9c  ldr w8,[x19, #0x8]
01714ba0  ldr x0,[x19]
01714ba4  sub w8,w8,#0x3
01714ba8  str w8,[x19, #0x8]
01714bac  orr w1,wzr,#0xfffffffc
01714bb0  bl 0x0124c4d0
01714bb4  ldr w8,[x19, #0x8]
01714bb8  ldr x0,[x19]
01714bbc  str wzr,[x19, #0x8]
01714bc0  cmp w8,#0x1
01714bc4  b.lt 0x01714bd0
01714bc8  mvn w1,w8
01714bcc  bl 0x0124c4d0
01714bd0  ldr w8,[sp, #0x18]
01714bd4  cmp w8,#0x1
01714bd8  b.lt 0x01714be8
01714bdc  ldr x0,[sp, #0x10]
01714be0  mvn w1,w8
01714be4  bl 0x0124c4d0
01714be8  ldr w8,[sp, #0x8]
01714bec  cmp w8,#0x1
01714bf0  b.lt 0x01714c00
01714bf4  ldr x0,[sp]
01714bf8  mvn w1,w8
01714bfc  bl 0x0124c4d0
01714c00  ldp x29,x30,[sp, #0x40]
01714c04  ldp x20,x19,[sp, #0x30]
01714c08  ldr x21,[sp, #0x20]
01714c0c  add sp,sp,#0x50
01714c10  ret
