// ===== case169-FreeSkillResObject @ 016a9b34 =====
// existing function case169-FreeSkillResObject
016a9b34  sub sp,sp,#0x40
016a9b38  stp x20,x19,[sp, #0x20]
016a9b3c  stp x29,x30,[sp, #0x30]
016a9b40  add x29,sp,#0x30
016a9b44  adrp x1,0x174a000
016a9b48  add x1,x1,#0x87c
016a9b4c  mov x19,x0
016a9b50  bl 0x0124ba40
016a9b54  adrp x1,0x575d000
016a9b58  add x1,x1,#0xa06
016a9b5c  mov x0,x19
016a9b60  str x19,[sp]
016a9b64  bl 0x01251aa0
016a9b68  mov w8,#0x1
016a9b6c  str w8,[sp, #0x8]
016a9b70  mov x0,sp
016a9b74  bl 0x0174aa04
016a9b78  adrp x1,0x5760000
016a9b7c  adrp x3,0x736d000
016a9b80  add x1,x1,#0x5d5
016a9b84  add x3,x3,#0x101
016a9b88  add x0,sp,#0x10
016a9b8c  mov x2,sp
016a9b90  bl 0x017ab818
016a9b94  ldr x0,[sp, #0x10]
016a9b98  mov w1,#0x10
016a9b9c  bl 0x0124cba0
016a9ba0  adrp x8,0x17ab000
016a9ba4  dup v0.2D,xzr
016a9ba8  add x8,x8,#0x808
016a9bac  mov v0.D[0x0],x8
016a9bb0  str q0,[x0]
016a9bb4  ldr x0,[sp, #0x10]
016a9bb8  adrp x1,0x17ab000
016a9bbc  add x1,x1,#0xbdc
016a9bc0  mov w2,#0x1
016a9bc4  bl 0x0124ec90
016a9bc8  ldr x0,[sp, #0x10]
016a9bcc  mov w1,#0xffffffff
016a9bd0  bl 0x0124c0c0
016a9bd4  ldr x19,[sp, #0x10]
016a9bd8  orr w1,wzr,#0xfffffffb
016a9bdc  mov w2,#0x6e7
016a9be0  mov x0,x19
016a9be4  bl 0x0124a650
016a9be8  orr w1,wzr,#0xfffffffe
016a9bec  mov x0,x19
016a9bf0  bl 0x0124c0c0
016a9bf4  orr w1,wzr,#0xfffffffe
016a9bf8  mov x0,x19
016a9bfc  bl 0x0124e920
016a9c00  mov w20,w0
016a9c04  adrp x1,0x575e000
016a9c08  add x1,x1,#0x56d
016a9c0c  mov x0,x19
016a9c10  bl 0x0124f120
016a9c14  orr w1,wzr,#0xfffffffe
016a9c18  mov w2,#0x1
016a9c1c  mov x0,x19
016a9c20  bl 0x0124cfc0
016a9c24  mov x0,x19
016a9c28  mov w1,w20
016a9c2c  bl 0x0124e060
016a9c30  orr w1,wzr,#0xfffffffd
016a9c34  mov x0,x19
016a9c38  bl 0x0124c4d0
016a9c3c  ldr x19,[sp, #0x10]
016a9c40  orr w1,wzr,#0xfffffffd
016a9c44  mov w2,#0x6e7
016a9c48  mov x0,x19
016a9c4c  bl 0x0124a650
016a9c50  orr w1,wzr,#0xfffffffe
016a9c54  mov x0,x19
016a9c58  bl 0x0124c0c0
016a9c5c  orr w1,wzr,#0xfffffffe
016a9c60  mov x0,x19
016a9c64  bl 0x0124e920
016a9c68  mov w20,w0
016a9c6c  adrp x1,0x575e000
016a9c70  add x1,x1,#0x56d
016a9c74  mov x0,x19
016a9c78  bl 0x0124f120
016a9c7c  orr w1,wzr,#0xfffffffe
016a9c80  mov w2,#0x1
016a9c84  mov x0,x19
016a9c88  bl 0x0124cfc0
016a9c8c  mov x0,x19
016a9c90  mov w1,w20
016a9c94  bl 0x0124e060
016a9c98  orr w1,wzr,#0xfffffffd
016a9c9c  mov x0,x19
016a9ca0  bl 0x0124c4d0
016a9ca4  ldr x0,[sp, #0x10]
016a9ca8  mov w1,#0x10
016a9cac  bl 0x0124cba0
016a9cb0  adrp x8,0x17ab000
016a9cb4  dup v0.2D,xzr
016a9cb8  add x8,x8,#0x810
016a9cbc  mov v0.D[0x0],x8
016a9cc0  str q0,[x0]
016a9cc4  ldr x0,[sp, #0x10]
016a9cc8  adrp x1,0x17ab000
016a9ccc  add x1,x1,#0xd00
016a9cd0  mov w2,#0x1
016a9cd4  bl 0x0124ec90
016a9cd8  ldr x0,[sp, #0x10]
016a9cdc  mov w1,#0xffffffff
016a9ce0  bl 0x0124c0c0
016a9ce4  ldr x19,[sp, #0x10]
016a9ce8  orr w1,wzr,#0xfffffffb
016a9cec  mov w2,#0x6e7
016a9cf0  mov x0,x19
016a9cf4  bl 0x0124a650
016a9cf8  orr w1,wzr,#0xfffffffe
016a9cfc  mov x0,x19
016a9d00  bl 0x0124c0c0
016a9d04  orr w1,wzr,#0xfffffffe
016a9d08  mov x0,x19
016a9d0c  bl 0x0124e920
016a9d10  mov w20,w0
016a9d14  adrp x1,0x575e000
016a9d18  add x1,x1,#0x578
016a9d1c  mov x0,x19
016a9d20  bl 0x0124f120
016a9d24  orr w1,wzr,#0xfffffffe
016a9d28  mov w2,#0x1
016a9d2c  mov x0,x19
016a9d30  bl 0x0124cfc0
016a9d34  mov x0,x19
016a9d38  mov w1,w20
016a9d3c  bl 0x0124e060
016a9d40  orr w1,wzr,#0xfffffffd
016a9d44  mov x0,x19
016a9d48  bl 0x0124c4d0
016a9d4c  ldr x19,[sp, #0x10]
016a9d50  orr w1,wzr,#0xfffffffd
016a9d54  mov w2,#0x6e7
016a9d58  mov x0,x19
016a9d5c  bl 0x0124a650
016a9d60  orr w1,wzr,#0xfffffffe
016a9d64  mov x0,x19
016a9d68  bl 0x0124c0c0
016a9d6c  orr w1,wzr,#0xfffffffe
016a9d70  mov x0,x19
016a9d74  bl 0x0124e920
016a9d78  mov w20,w0
016a9d7c  adrp x1,0x575e000
016a9d80  add x1,x1,#0x578
016a9d84  mov x0,x19
016a9d88  bl 0x0124f120
016a9d8c  orr w1,wzr,#0xfffffffe
016a9d90  mov w2,#0x1
016a9d94  mov x0,x19
016a9d98  bl 0x0124cfc0
016a9d9c  mov x0,x19
016a9da0  mov w1,w20
016a9da4  bl 0x0124e060
016a9da8  orr w1,wzr,#0xfffffffd
016a9dac  mov x0,x19
016a9db0  bl 0x0124c4d0
016a9db4  ldr w8,[sp, #0x18]
016a9db8  ldr x0,[sp, #0x10]
016a9dbc  sub w8,w8,#0x3
016a9dc0  str w8,[sp, #0x18]
016a9dc4  orr w1,wzr,#0xfffffffc
016a9dc8  bl 0x0124c4d0
016a9dcc  ldr w8,[sp, #0x18]
016a9dd0  ldr x0,[sp, #0x10]
016a9dd4  str wzr,[sp, #0x18]
016a9dd8  cmp w8,#0x1
016a9ddc  b.lt 0x016a9e00
016a9de0  mvn w1,w8
016a9de4  bl 0x0124c4d0
016a9de8  ldr w8,[sp, #0x18]
016a9dec  cmp w8,#0x1
016a9df0  b.lt 0x016a9e00
016a9df4  ldr x0,[sp, #0x10]
016a9df8  mvn w1,w8
016a9dfc  bl 0x0124c4d0
016a9e00  ldr w8,[sp, #0x8]
016a9e04  cmp w8,#0x1
016a9e08  b.lt 0x016a9e18
016a9e0c  ldr x0,[sp]
016a9e10  mvn w1,w8
016a9e14  bl 0x0124c4d0
016a9e18  ldp x29,x30,[sp, #0x30]
016a9e1c  ldp x20,x19,[sp, #0x20]
016a9e20  add sp,sp,#0x40
016a9e24  ret
