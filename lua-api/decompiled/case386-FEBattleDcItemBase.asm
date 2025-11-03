// ===== case386-FEBattleDcItemBase @ 016d8b50 =====
// existing function case386-FEBattleDcItemBase
016d8b50  sub sp,sp,#0x40
016d8b54  stp x20,x19,[sp, #0x20]
016d8b58  stp x29,x30,[sp, #0x30]
016d8b5c  add x29,sp,#0x30
016d8b60  adrp x1,0x174a000
016d8b64  add x1,x1,#0x87c
016d8b68  mov x19,x0
016d8b6c  bl 0x0124ba40
016d8b70  adrp x1,0x575d000
016d8b74  add x1,x1,#0xa06
016d8b78  mov x0,x19
016d8b7c  str x19,[sp]
016d8b80  bl 0x01251aa0
016d8b84  mov w8,#0x1
016d8b88  str w8,[sp, #0x8]
016d8b8c  mov x0,sp
016d8b90  bl 0x0174aa04
016d8b94  adrp x1,0x5764000
016d8b98  adrp x3,0x736d000
016d8b9c  add x1,x1,#0xf60
016d8ba0  add x3,x3,#0x101
016d8ba4  add x0,sp,#0x10
016d8ba8  mov x2,sp
016d8bac  bl 0x01839f9c
016d8bb0  ldr x0,[sp, #0x10]
016d8bb4  mov w1,#0x10
016d8bb8  bl 0x0124cba0
016d8bbc  adrp x8,0x1839000
016d8bc0  dup v0.2D,xzr
016d8bc4  add x8,x8,#0xba4
016d8bc8  mov v0.D[0x0],x8
016d8bcc  str q0,[x0]
016d8bd0  ldr x0,[sp, #0x10]
016d8bd4  adrp x1,0x183a000
016d8bd8  add x1,x1,#0x360
016d8bdc  mov w2,#0x1
016d8be0  bl 0x0124ec90
016d8be4  ldr x0,[sp, #0x10]
016d8be8  mov w1,#0xffffffff
016d8bec  bl 0x0124c0c0
016d8bf0  ldr x19,[sp, #0x10]
016d8bf4  orr w1,wzr,#0xfffffffb
016d8bf8  mov w2,#0x6e7
016d8bfc  mov x0,x19
016d8c00  bl 0x0124a650
016d8c04  orr w1,wzr,#0xfffffffe
016d8c08  mov x0,x19
016d8c0c  bl 0x0124c0c0
016d8c10  orr w1,wzr,#0xfffffffe
016d8c14  mov x0,x19
016d8c18  bl 0x0124e920
016d8c1c  mov w20,w0
016d8c20  adrp x1,0x5963000
016d8c24  add x1,x1,#0x113
016d8c28  mov x0,x19
016d8c2c  bl 0x0124f120
016d8c30  orr w1,wzr,#0xfffffffe
016d8c34  mov w2,#0x1
016d8c38  mov x0,x19
016d8c3c  bl 0x0124cfc0
016d8c40  mov x0,x19
016d8c44  mov w1,w20
016d8c48  bl 0x0124e060
016d8c4c  orr w1,wzr,#0xfffffffd
016d8c50  mov x0,x19
016d8c54  bl 0x0124c4d0
016d8c58  ldr x19,[sp, #0x10]
016d8c5c  orr w1,wzr,#0xfffffffd
016d8c60  mov w2,#0x6e7
016d8c64  mov x0,x19
016d8c68  bl 0x0124a650
016d8c6c  orr w1,wzr,#0xfffffffe
016d8c70  mov x0,x19
016d8c74  bl 0x0124c0c0
016d8c78  orr w1,wzr,#0xfffffffe
016d8c7c  mov x0,x19
016d8c80  bl 0x0124e920
016d8c84  mov w20,w0
016d8c88  adrp x1,0x5963000
016d8c8c  add x1,x1,#0x113
016d8c90  mov x0,x19
016d8c94  bl 0x0124f120
016d8c98  orr w1,wzr,#0xfffffffe
016d8c9c  mov w2,#0x1
016d8ca0  mov x0,x19
016d8ca4  bl 0x0124cfc0
016d8ca8  mov x0,x19
016d8cac  mov w1,w20
016d8cb0  bl 0x0124e060
016d8cb4  orr w1,wzr,#0xfffffffd
016d8cb8  mov x0,x19
016d8cbc  bl 0x0124c4d0
016d8cc0  adrp x1,0x5764000
016d8cc4  adrp x2,0x1839000
016d8cc8  adrp x4,0x1839000
016d8ccc  add x1,x1,#0xf73
016d8cd0  add x2,x2,#0xd94
016d8cd4  add x4,x4,#0xd9c
016d8cd8  add x0,sp,#0x10
016d8cdc  mov x3,xzr
016d8ce0  mov x5,xzr
016d8ce4  bl 0x01839bac
016d8ce8  adrp x1,0x5764000
016d8cec  adrp x2,0x1839000
016d8cf0  adrp x4,0x1839000
016d8cf4  add x1,x1,#0xf83
016d8cf8  add x2,x2,#0xf8c
016d8cfc  add x4,x4,#0xf94
016d8d00  mov x3,xzr
016d8d04  mov x5,xzr
016d8d08  bl 0x01839da4
016d8d0c  mov x19,x0
016d8d10  ldr w8,[x19, #0x8]
016d8d14  ldr x0,[x19]
016d8d18  sub w8,w8,#0x3
016d8d1c  str w8,[x19, #0x8]
016d8d20  orr w1,wzr,#0xfffffffc
016d8d24  bl 0x0124c4d0
016d8d28  ldr w8,[x19, #0x8]
016d8d2c  ldr x0,[x19]
016d8d30  str wzr,[x19, #0x8]
016d8d34  cmp w8,#0x1
016d8d38  b.lt 0x016d8d44
016d8d3c  mvn w1,w8
016d8d40  bl 0x0124c4d0
016d8d44  ldr w8,[sp, #0x18]
016d8d48  cmp w8,#0x1
016d8d4c  b.lt 0x016d8d5c
016d8d50  ldr x0,[sp, #0x10]
016d8d54  mvn w1,w8
016d8d58  bl 0x0124c4d0
016d8d5c  ldr w8,[sp, #0x8]
016d8d60  cmp w8,#0x1
016d8d64  b.lt 0x016d8d74
016d8d68  ldr x0,[sp]
016d8d6c  mvn w1,w8
016d8d70  bl 0x0124c4d0
016d8d74  ldp x29,x30,[sp, #0x30]
016d8d78  ldp x20,x19,[sp, #0x20]
016d8d7c  add sp,sp,#0x40
016d8d80  ret
