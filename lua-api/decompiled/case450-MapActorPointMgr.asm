// ===== case450-MapActorPointMgr @ 016e9b48 =====
// existing function case450-MapActorPointMgr
016e9b48  sub sp,sp,#0x40
016e9b4c  stp x20,x19,[sp, #0x20]
016e9b50  stp x29,x30,[sp, #0x30]
016e9b54  add x29,sp,#0x30
016e9b58  adrp x1,0x174a000
016e9b5c  add x1,x1,#0x87c
016e9b60  mov x19,x0
016e9b64  bl 0x0124ba40
016e9b68  adrp x1,0x575d000
016e9b6c  add x1,x1,#0xa06
016e9b70  mov x0,x19
016e9b74  str x19,[sp]
016e9b78  bl 0x01251aa0
016e9b7c  mov w8,#0x1
016e9b80  str w8,[sp, #0x8]
016e9b84  mov x0,sp
016e9b88  bl 0x0174aa04
016e9b8c  adrp x1,0x5766000
016e9b90  adrp x3,0x736d000
016e9b94  add x1,x1,#0xa58
016e9b98  add x3,x3,#0x101
016e9b9c  add x0,sp,#0x10
016e9ba0  mov x2,sp
016e9ba4  bl 0x0186d328
016e9ba8  ldr x0,[sp, #0x10]
016e9bac  mov w1,#0x10
016e9bb0  bl 0x0124cba0
016e9bb4  adrp x8,0x186d000
016e9bb8  dup v0.2D,xzr
016e9bbc  add x8,x8,#0x320
016e9bc0  mov v0.D[0x0],x8
016e9bc4  str q0,[x0]
016e9bc8  ldr x0,[sp, #0x10]
016e9bcc  adrp x1,0x186d000
016e9bd0  add x1,x1,#0x6ec
016e9bd4  mov w2,#0x1
016e9bd8  bl 0x0124ec90
016e9bdc  ldr x0,[sp, #0x10]
016e9be0  mov w1,#0xffffffff
016e9be4  bl 0x0124c0c0
016e9be8  ldr x19,[sp, #0x10]
016e9bec  orr w1,wzr,#0xfffffffb
016e9bf0  mov w2,#0x6e7
016e9bf4  mov x0,x19
016e9bf8  bl 0x0124a650
016e9bfc  orr w1,wzr,#0xfffffffe
016e9c00  mov x0,x19
016e9c04  bl 0x0124c0c0
016e9c08  orr w1,wzr,#0xfffffffe
016e9c0c  mov x0,x19
016e9c10  bl 0x0124e920
016e9c14  mov w20,w0
016e9c18  adrp x1,0x5766000
016e9c1c  add x1,x1,#0xa69
016e9c20  mov x0,x19
016e9c24  bl 0x0124f120
016e9c28  orr w1,wzr,#0xfffffffe
016e9c2c  mov w2,#0x1
016e9c30  mov x0,x19
016e9c34  bl 0x0124cfc0
016e9c38  mov x0,x19
016e9c3c  mov w1,w20
016e9c40  bl 0x0124e060
016e9c44  orr w1,wzr,#0xfffffffd
016e9c48  mov x0,x19
016e9c4c  bl 0x0124c4d0
016e9c50  ldr x19,[sp, #0x10]
016e9c54  orr w1,wzr,#0xfffffffd
016e9c58  mov w2,#0x6e7
016e9c5c  mov x0,x19
016e9c60  bl 0x0124a650
016e9c64  orr w1,wzr,#0xfffffffe
016e9c68  mov x0,x19
016e9c6c  bl 0x0124c0c0
016e9c70  orr w1,wzr,#0xfffffffe
016e9c74  mov x0,x19
016e9c78  bl 0x0124e920
016e9c7c  mov w20,w0
016e9c80  adrp x1,0x5766000
016e9c84  add x1,x1,#0xa69
016e9c88  mov x0,x19
016e9c8c  bl 0x0124f120
016e9c90  orr w1,wzr,#0xfffffffe
016e9c94  mov w2,#0x1
016e9c98  mov x0,x19
016e9c9c  bl 0x0124cfc0
016e9ca0  mov x0,x19
016e9ca4  mov w1,w20
016e9ca8  bl 0x0124e060
016e9cac  orr w1,wzr,#0xfffffffd
016e9cb0  mov x0,x19
016e9cb4  bl 0x0124c4d0
016e9cb8  ldr w8,[sp, #0x18]
016e9cbc  ldr x0,[sp, #0x10]
016e9cc0  sub w8,w8,#0x3
016e9cc4  str w8,[sp, #0x18]
016e9cc8  orr w1,wzr,#0xfffffffc
016e9ccc  bl 0x0124c4d0
016e9cd0  ldr w8,[sp, #0x18]
016e9cd4  ldr x0,[sp, #0x10]
016e9cd8  str wzr,[sp, #0x18]
016e9cdc  cmp w8,#0x1
016e9ce0  b.lt 0x016e9d04
016e9ce4  mvn w1,w8
016e9ce8  bl 0x0124c4d0
016e9cec  ldr w8,[sp, #0x18]
016e9cf0  cmp w8,#0x1
016e9cf4  b.lt 0x016e9d04
016e9cf8  ldr x0,[sp, #0x10]
016e9cfc  mvn w1,w8
016e9d00  bl 0x0124c4d0
016e9d04  ldr w8,[sp, #0x8]
016e9d08  cmp w8,#0x1
016e9d0c  b.lt 0x016e9d1c
016e9d10  ldr x0,[sp]
016e9d14  mvn w1,w8
016e9d18  bl 0x0124c4d0
016e9d1c  ldp x29,x30,[sp, #0x30]
016e9d20  ldp x20,x19,[sp, #0x20]
016e9d24  add sp,sp,#0x40
016e9d28  ret
