// ===== case33-BattleLiteFowCutMgr @ 01691a60 =====
// existing function case33-BattleLiteFowCutMgr
01691a60  sub sp,sp,#0x40
01691a64  stp x20,x19,[sp, #0x20]
01691a68  stp x29,x30,[sp, #0x30]
01691a6c  add x29,sp,#0x30
01691a70  adrp x1,0x174a000
01691a74  add x1,x1,#0x87c
01691a78  mov x19,x0
01691a7c  bl 0x0124ba40
01691a80  adrp x1,0x575d000
01691a84  add x1,x1,#0xa06
01691a88  mov x0,x19
01691a8c  str x19,[sp]
01691a90  bl 0x01251aa0
01691a94  mov w8,#0x1
01691a98  str w8,[sp, #0x8]
01691a9c  mov x0,sp
01691aa0  bl 0x0174aa04
01691aa4  adrp x1,0x575d000
01691aa8  adrp x3,0x736d000
01691aac  add x1,x1,#0xf7d
01691ab0  add x3,x3,#0x101
01691ab4  add x0,sp,#0x10
01691ab8  mov x2,sp
01691abc  bl 0x01760294
01691ac0  ldr x0,[sp, #0x10]
01691ac4  mov w1,#0x10
01691ac8  bl 0x0124cba0
01691acc  adrp x8,0x1760000
01691ad0  dup v0.2D,xzr
01691ad4  add x8,x8,#0x28c
01691ad8  mov v0.D[0x0],x8
01691adc  str q0,[x0]
01691ae0  ldr x0,[sp, #0x10]
01691ae4  adrp x1,0x1760000
01691ae8  add x1,x1,#0x658
01691aec  mov w2,#0x1
01691af0  bl 0x0124ec90
01691af4  ldr x0,[sp, #0x10]
01691af8  mov w1,#0xffffffff
01691afc  bl 0x0124c0c0
01691b00  ldr x19,[sp, #0x10]
01691b04  orr w1,wzr,#0xfffffffb
01691b08  mov w2,#0x6e7
01691b0c  mov x0,x19
01691b10  bl 0x0124a650
01691b14  orr w1,wzr,#0xfffffffe
01691b18  mov x0,x19
01691b1c  bl 0x0124c0c0
01691b20  orr w1,wzr,#0xfffffffe
01691b24  mov x0,x19
01691b28  bl 0x0124e920
01691b2c  mov w20,w0
01691b30  adrp x1,0x575d000
01691b34  add x1,x1,#0xf91
01691b38  mov x0,x19
01691b3c  bl 0x0124f120
01691b40  orr w1,wzr,#0xfffffffe
01691b44  mov w2,#0x1
01691b48  mov x0,x19
01691b4c  bl 0x0124cfc0
01691b50  mov x0,x19
01691b54  mov w1,w20
01691b58  bl 0x0124e060
01691b5c  orr w1,wzr,#0xfffffffd
01691b60  mov x0,x19
01691b64  bl 0x0124c4d0
01691b68  ldr x19,[sp, #0x10]
01691b6c  orr w1,wzr,#0xfffffffd
01691b70  mov w2,#0x6e7
01691b74  mov x0,x19
01691b78  bl 0x0124a650
01691b7c  orr w1,wzr,#0xfffffffe
01691b80  mov x0,x19
01691b84  bl 0x0124c0c0
01691b88  orr w1,wzr,#0xfffffffe
01691b8c  mov x0,x19
01691b90  bl 0x0124e920
01691b94  mov w20,w0
01691b98  adrp x1,0x575d000
01691b9c  add x1,x1,#0xf91
01691ba0  mov x0,x19
01691ba4  bl 0x0124f120
01691ba8  orr w1,wzr,#0xfffffffe
01691bac  mov w2,#0x1
01691bb0  mov x0,x19
01691bb4  bl 0x0124cfc0
01691bb8  mov x0,x19
01691bbc  mov w1,w20
01691bc0  bl 0x0124e060
01691bc4  orr w1,wzr,#0xfffffffd
01691bc8  mov x0,x19
01691bcc  bl 0x0124c4d0
01691bd0  ldr w8,[sp, #0x18]
01691bd4  ldr x0,[sp, #0x10]
01691bd8  sub w8,w8,#0x3
01691bdc  str w8,[sp, #0x18]
01691be0  orr w1,wzr,#0xfffffffc
01691be4  bl 0x0124c4d0
01691be8  ldr w8,[sp, #0x18]
01691bec  ldr x0,[sp, #0x10]
01691bf0  str wzr,[sp, #0x18]
01691bf4  cmp w8,#0x1
01691bf8  b.lt 0x01691c1c
01691bfc  mvn w1,w8
01691c00  bl 0x0124c4d0
01691c04  ldr w8,[sp, #0x18]
01691c08  cmp w8,#0x1
01691c0c  b.lt 0x01691c1c
01691c10  ldr x0,[sp, #0x10]
01691c14  mvn w1,w8
01691c18  bl 0x0124c4d0
01691c1c  ldr w8,[sp, #0x8]
01691c20  cmp w8,#0x1
01691c24  b.lt 0x01691c34
01691c28  ldr x0,[sp]
01691c2c  mvn w1,w8
01691c30  bl 0x0124c4d0
01691c34  ldp x29,x30,[sp, #0x30]
01691c38  ldp x20,x19,[sp, #0x20]
01691c3c  add sp,sp,#0x40
01691c40  ret
