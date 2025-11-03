// ===== case810-ParallelFlowNode @ 01735ba4 =====
// existing function case810-ParallelFlowNode
01735ba4  sub sp,sp,#0x40
01735ba8  stp x20,x19,[sp, #0x20]
01735bac  stp x29,x30,[sp, #0x30]
01735bb0  add x29,sp,#0x30
01735bb4  adrp x1,0x174a000
01735bb8  add x1,x1,#0x87c
01735bbc  mov x19,x0
01735bc0  bl 0x0124ba40
01735bc4  adrp x1,0x575d000
01735bc8  add x1,x1,#0xa06
01735bcc  mov x0,x19
01735bd0  str x19,[sp]
01735bd4  bl 0x01251aa0
01735bd8  mov w8,#0x1
01735bdc  str w8,[sp, #0x8]
01735be0  mov x0,sp
01735be4  bl 0x0174aa04
01735be8  adrp x1,0x5772000
01735bec  adrp x3,0x736d000
01735bf0  add x1,x1,#0x41a
01735bf4  add x3,x3,#0x101
01735bf8  add x0,sp,#0x10
01735bfc  mov x2,sp
01735c00  bl 0x019c0798
01735c04  ldr x0,[sp, #0x10]
01735c08  mov w1,#0x10
01735c0c  bl 0x0124cba0
01735c10  adrp x8,0x19c0000
01735c14  dup v0.2D,xzr
01735c18  add x8,x8,#0x590
01735c1c  mov v0.D[0x0],x8
01735c20  str q0,[x0]
01735c24  ldr x0,[sp, #0x10]
01735c28  adrp x1,0x19c0000
01735c2c  add x1,x1,#0xb5c
01735c30  mov w2,#0x1
01735c34  bl 0x0124ec90
01735c38  ldr x0,[sp, #0x10]
01735c3c  mov w1,#0xffffffff
01735c40  bl 0x0124c0c0
01735c44  ldr x19,[sp, #0x10]
01735c48  orr w1,wzr,#0xfffffffb
01735c4c  mov w2,#0x6e7
01735c50  mov x0,x19
01735c54  bl 0x0124a650
01735c58  orr w1,wzr,#0xfffffffe
01735c5c  mov x0,x19
01735c60  bl 0x0124c0c0
01735c64  orr w1,wzr,#0xfffffffe
01735c68  mov x0,x19
01735c6c  bl 0x0124e920
01735c70  mov w20,w0
01735c74  adrp x1,0x5772000
01735c78  add x1,x1,#0x42b
01735c7c  mov x0,x19
01735c80  bl 0x0124f120
01735c84  orr w1,wzr,#0xfffffffe
01735c88  mov w2,#0x1
01735c8c  mov x0,x19
01735c90  bl 0x0124cfc0
01735c94  mov x0,x19
01735c98  mov w1,w20
01735c9c  bl 0x0124e060
01735ca0  orr w1,wzr,#0xfffffffd
01735ca4  mov x0,x19
01735ca8  bl 0x0124c4d0
01735cac  ldr x19,[sp, #0x10]
01735cb0  orr w1,wzr,#0xfffffffd
01735cb4  mov w2,#0x6e7
01735cb8  mov x0,x19
01735cbc  bl 0x0124a650
01735cc0  orr w1,wzr,#0xfffffffe
01735cc4  mov x0,x19
01735cc8  bl 0x0124c0c0
01735ccc  orr w1,wzr,#0xfffffffe
01735cd0  mov x0,x19
01735cd4  bl 0x0124e920
01735cd8  mov w20,w0
01735cdc  adrp x1,0x5772000
01735ce0  add x1,x1,#0x42b
01735ce4  mov x0,x19
01735ce8  bl 0x0124f120
01735cec  orr w1,wzr,#0xfffffffe
01735cf0  mov w2,#0x1
01735cf4  mov x0,x19
01735cf8  bl 0x0124cfc0
01735cfc  mov x0,x19
01735d00  mov w1,w20
01735d04  bl 0x0124e060
01735d08  orr w1,wzr,#0xfffffffd
01735d0c  mov x0,x19
01735d10  bl 0x0124c4d0
01735d14  ldr x0,[sp, #0x10]
01735d18  mov w1,#0x10
01735d1c  bl 0x0124cba0
01735d20  adrp x8,0x19c0000
01735d24  dup v0.2D,xzr
01735d28  add x8,x8,#0x598
01735d2c  mov v0.D[0x0],x8
01735d30  str q0,[x0]
01735d34  ldr x0,[sp, #0x10]
01735d38  adrp x1,0x19c0000
01735d3c  add x1,x1,#0xc80
01735d40  mov w2,#0x1
01735d44  bl 0x0124ec90
01735d48  ldr x0,[sp, #0x10]
01735d4c  mov w1,#0xffffffff
01735d50  bl 0x0124c0c0
01735d54  ldr x19,[sp, #0x10]
01735d58  orr w1,wzr,#0xfffffffb
01735d5c  mov w2,#0x6e7
01735d60  mov x0,x19
01735d64  bl 0x0124a650
01735d68  orr w1,wzr,#0xfffffffe
01735d6c  mov x0,x19
01735d70  bl 0x0124c0c0
01735d74  orr w1,wzr,#0xfffffffe
01735d78  mov x0,x19
01735d7c  bl 0x0124e920
01735d80  mov w20,w0
01735d84  adrp x1,0x5772000
01735d88  add x1,x1,#0x433
01735d8c  mov x0,x19
01735d90  bl 0x0124f120
01735d94  orr w1,wzr,#0xfffffffe
01735d98  mov w2,#0x1
01735d9c  mov x0,x19
01735da0  bl 0x0124cfc0
01735da4  mov x0,x19
01735da8  mov w1,w20
01735dac  bl 0x0124e060
01735db0  orr w1,wzr,#0xfffffffd
01735db4  mov x0,x19
01735db8  bl 0x0124c4d0
01735dbc  ldr x19,[sp, #0x10]
01735dc0  orr w1,wzr,#0xfffffffd
01735dc4  mov w2,#0x6e7
01735dc8  mov x0,x19
01735dcc  bl 0x0124a650
01735dd0  orr w1,wzr,#0xfffffffe
01735dd4  mov x0,x19
01735dd8  bl 0x0124c0c0
01735ddc  orr w1,wzr,#0xfffffffe
01735de0  mov x0,x19
01735de4  bl 0x0124e920
01735de8  mov w20,w0
01735dec  adrp x1,0x5772000
01735df0  add x1,x1,#0x433
01735df4  mov x0,x19
01735df8  bl 0x0124f120
01735dfc  orr w1,wzr,#0xfffffffe
01735e00  mov w2,#0x1
01735e04  mov x0,x19
01735e08  bl 0x0124cfc0
01735e0c  mov x0,x19
01735e10  mov w1,w20
01735e14  bl 0x0124e060
01735e18  orr w1,wzr,#0xfffffffd
01735e1c  mov x0,x19
01735e20  bl 0x0124c4d0
01735e24  adrp x1,0x5772000
01735e28  adrp x2,0x19c0000
01735e2c  adrp x4,0x19c0000
01735e30  add x1,x1,#0x43d
01735e34  add x2,x2,#0x788
01735e38  add x4,x4,#0x790
01735e3c  add x0,sp,#0x10
01735e40  mov x3,xzr
01735e44  mov x5,xzr
01735e48  bl 0x019c05a0
01735e4c  mov x19,x0
01735e50  ldr w8,[x19, #0x8]
01735e54  ldr x0,[x19]
01735e58  sub w8,w8,#0x3
01735e5c  str w8,[x19, #0x8]
01735e60  orr w1,wzr,#0xfffffffc
01735e64  bl 0x0124c4d0
01735e68  ldr w8,[x19, #0x8]
01735e6c  ldr x0,[x19]
01735e70  str wzr,[x19, #0x8]
01735e74  cmp w8,#0x1
01735e78  b.lt 0x01735e84
01735e7c  mvn w1,w8
01735e80  bl 0x0124c4d0
01735e84  ldr w8,[sp, #0x18]
01735e88  cmp w8,#0x1
01735e8c  b.lt 0x01735e9c
01735e90  ldr x0,[sp, #0x10]
01735e94  mvn w1,w8
01735e98  bl 0x0124c4d0
01735e9c  ldr w8,[sp, #0x8]
01735ea0  cmp w8,#0x1
01735ea4  b.lt 0x01735eb4
01735ea8  ldr x0,[sp]
01735eac  mvn w1,w8
01735eb0  bl 0x0124c4d0
01735eb4  ldp x29,x30,[sp, #0x30]
01735eb8  ldp x20,x19,[sp, #0x20]
01735ebc  add sp,sp,#0x40
01735ec0  ret
