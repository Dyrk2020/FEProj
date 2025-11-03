// ===== case825-SharedFlow @ 01739a4c =====
// existing function case825-SharedFlow
01739a4c  sub sp,sp,#0x40
01739a50  stp x20,x19,[sp, #0x20]
01739a54  stp x29,x30,[sp, #0x30]
01739a58  add x29,sp,#0x30
01739a5c  adrp x1,0x174a000
01739a60  add x1,x1,#0x87c
01739a64  mov x19,x0
01739a68  bl 0x0124ba40
01739a6c  adrp x1,0x575d000
01739a70  add x1,x1,#0xa06
01739a74  mov x0,x19
01739a78  str x19,[sp]
01739a7c  bl 0x01251aa0
01739a80  mov w8,#0x1
01739a84  str w8,[sp, #0x8]
01739a88  mov x0,sp
01739a8c  bl 0x0174aa04
01739a90  adrp x1,0x5772000
01739a94  adrp x3,0x736d000
01739a98  add x1,x1,#0x938
01739a9c  add x3,x3,#0x101
01739aa0  add x0,sp,#0x10
01739aa4  mov x2,sp
01739aa8  bl 0x019d2050
01739aac  ldr x0,[sp, #0x10]
01739ab0  mov w1,#0x10
01739ab4  bl 0x0124cba0
01739ab8  adrp x8,0x19d2000
01739abc  dup v0.2D,xzr
01739ac0  add x8,x8,#0x48
01739ac4  mov v0.D[0x0],x8
01739ac8  str q0,[x0]
01739acc  ldr x0,[sp, #0x10]
01739ad0  adrp x1,0x19d2000
01739ad4  add x1,x1,#0x414
01739ad8  mov w2,#0x1
01739adc  bl 0x0124ec90
01739ae0  ldr x0,[sp, #0x10]
01739ae4  mov w1,#0xffffffff
01739ae8  bl 0x0124c0c0
01739aec  ldr x19,[sp, #0x10]
01739af0  orr w1,wzr,#0xfffffffb
01739af4  mov w2,#0x6e7
01739af8  mov x0,x19
01739afc  bl 0x0124a650
01739b00  orr w1,wzr,#0xfffffffe
01739b04  mov x0,x19
01739b08  bl 0x0124c0c0
01739b0c  orr w1,wzr,#0xfffffffe
01739b10  mov x0,x19
01739b14  bl 0x0124e920
01739b18  mov w20,w0
01739b1c  adrp x1,0x59b1000
01739b20  add x1,x1,#0x259
01739b24  mov x0,x19
01739b28  bl 0x0124f120
01739b2c  orr w1,wzr,#0xfffffffe
01739b30  mov w2,#0x1
01739b34  mov x0,x19
01739b38  bl 0x0124cfc0
01739b3c  mov x0,x19
01739b40  mov w1,w20
01739b44  bl 0x0124e060
01739b48  orr w1,wzr,#0xfffffffd
01739b4c  mov x0,x19
01739b50  bl 0x0124c4d0
01739b54  ldr x19,[sp, #0x10]
01739b58  orr w1,wzr,#0xfffffffd
01739b5c  mov w2,#0x6e7
01739b60  mov x0,x19
01739b64  bl 0x0124a650
01739b68  orr w1,wzr,#0xfffffffe
01739b6c  mov x0,x19
01739b70  bl 0x0124c0c0
01739b74  orr w1,wzr,#0xfffffffe
01739b78  mov x0,x19
01739b7c  bl 0x0124e920
01739b80  mov w20,w0
01739b84  adrp x1,0x59b1000
01739b88  add x1,x1,#0x259
01739b8c  mov x0,x19
01739b90  bl 0x0124f120
01739b94  orr w1,wzr,#0xfffffffe
01739b98  mov w2,#0x1
01739b9c  mov x0,x19
01739ba0  bl 0x0124cfc0
01739ba4  mov x0,x19
01739ba8  mov w1,w20
01739bac  bl 0x0124e060
01739bb0  orr w1,wzr,#0xfffffffd
01739bb4  mov x0,x19
01739bb8  bl 0x0124c4d0
01739bbc  ldr w8,[sp, #0x18]
01739bc0  ldr x0,[sp, #0x10]
01739bc4  sub w8,w8,#0x3
01739bc8  str w8,[sp, #0x18]
01739bcc  orr w1,wzr,#0xfffffffc
01739bd0  bl 0x0124c4d0
01739bd4  ldr w8,[sp, #0x18]
01739bd8  ldr x0,[sp, #0x10]
01739bdc  str wzr,[sp, #0x18]
01739be0  cmp w8,#0x1
01739be4  b.lt 0x01739c08
01739be8  mvn w1,w8
01739bec  bl 0x0124c4d0
01739bf0  ldr w8,[sp, #0x18]
01739bf4  cmp w8,#0x1
01739bf8  b.lt 0x01739c08
01739bfc  ldr x0,[sp, #0x10]
01739c00  mvn w1,w8
01739c04  bl 0x0124c4d0
01739c08  ldr w8,[sp, #0x8]
01739c0c  cmp w8,#0x1
01739c10  b.lt 0x01739c20
01739c14  ldr x0,[sp]
01739c18  mvn w1,w8
01739c1c  bl 0x0124c4d0
01739c20  ldp x29,x30,[sp, #0x30]
01739c24  ldp x20,x19,[sp, #0x20]
01739c28  add sp,sp,#0x40
01739c2c  ret
