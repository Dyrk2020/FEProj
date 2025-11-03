// ===== case711-ActorCfgData_ActorAniJointCfg @ 01722bc0 =====
// existing function case711-ActorCfgData_ActorAniJointCfg
01722bc0  sub sp,sp,#0x40
01722bc4  stp x20,x19,[sp, #0x20]
01722bc8  stp x29,x30,[sp, #0x30]
01722bcc  add x29,sp,#0x30
01722bd0  adrp x1,0x174a000
01722bd4  add x1,x1,#0x87c
01722bd8  mov x19,x0
01722bdc  bl 0x0124ba40
01722be0  adrp x1,0x575d000
01722be4  add x1,x1,#0xa06
01722be8  mov x0,x19
01722bec  str x19,[sp]
01722bf0  bl 0x01251aa0
01722bf4  mov w8,#0x1
01722bf8  str w8,[sp, #0x8]
01722bfc  mov x0,sp
01722c00  bl 0x0174aa04
01722c04  adrp x1,0x576f000
01722c08  adrp x3,0x736d000
01722c0c  add x1,x1,#0x914
01722c10  add x3,x3,#0x101
01722c14  add x0,sp,#0x10
01722c18  mov x2,sp
01722c1c  bl 0x0196c434
01722c20  ldr x0,[sp, #0x10]
01722c24  mov w1,#0x10
01722c28  bl 0x0124cba0
01722c2c  adrp x8,0x196c000
01722c30  dup v0.2D,xzr
01722c34  add x8,x8,#0x424
01722c38  mov v0.D[0x0],x8
01722c3c  str q0,[x0]
01722c40  ldr x0,[sp, #0x10]
01722c44  adrp x1,0x196c000
01722c48  add x1,x1,#0x7f8
01722c4c  mov w2,#0x1
01722c50  bl 0x0124ec90
01722c54  ldr x0,[sp, #0x10]
01722c58  mov w1,#0xffffffff
01722c5c  bl 0x0124c0c0
01722c60  ldr x19,[sp, #0x10]
01722c64  orr w1,wzr,#0xfffffffb
01722c68  mov w2,#0x6e7
01722c6c  mov x0,x19
01722c70  bl 0x0124a650
01722c74  orr w1,wzr,#0xfffffffe
01722c78  mov x0,x19
01722c7c  bl 0x0124c0c0
01722c80  orr w1,wzr,#0xfffffffe
01722c84  mov x0,x19
01722c88  bl 0x0124e920
01722c8c  mov w20,w0
01722c90  adrp x1,0x576f000
01722c94  add x1,x1,#0x932
01722c98  mov x0,x19
01722c9c  bl 0x0124f120
01722ca0  orr w1,wzr,#0xfffffffe
01722ca4  mov w2,#0x1
01722ca8  mov x0,x19
01722cac  bl 0x0124cfc0
01722cb0  mov x0,x19
01722cb4  mov w1,w20
01722cb8  bl 0x0124e060
01722cbc  orr w1,wzr,#0xfffffffd
01722cc0  mov x0,x19
01722cc4  bl 0x0124c4d0
01722cc8  ldr x19,[sp, #0x10]
01722ccc  orr w1,wzr,#0xfffffffd
01722cd0  mov w2,#0x6e7
01722cd4  mov x0,x19
01722cd8  bl 0x0124a650
01722cdc  orr w1,wzr,#0xfffffffe
01722ce0  mov x0,x19
01722ce4  bl 0x0124c0c0
01722ce8  orr w1,wzr,#0xfffffffe
01722cec  mov x0,x19
01722cf0  bl 0x0124e920
01722cf4  mov w20,w0
01722cf8  adrp x1,0x576f000
01722cfc  add x1,x1,#0x932
01722d00  mov x0,x19
01722d04  bl 0x0124f120
01722d08  orr w1,wzr,#0xfffffffe
01722d0c  mov w2,#0x1
01722d10  mov x0,x19
01722d14  bl 0x0124cfc0
01722d18  mov x0,x19
01722d1c  mov w1,w20
01722d20  bl 0x0124e060
01722d24  orr w1,wzr,#0xfffffffd
01722d28  mov x0,x19
01722d2c  bl 0x0124c4d0
01722d30  ldr x0,[sp, #0x10]
01722d34  mov w1,#0x10
01722d38  bl 0x0124cba0
01722d3c  adrp x8,0x196c000
01722d40  dup v0.2D,xzr
01722d44  add x8,x8,#0x42c
01722d48  mov v0.D[0x0],x8
01722d4c  str q0,[x0]
01722d50  ldr x0,[sp, #0x10]
01722d54  adrp x1,0x196c000
01722d58  add x1,x1,#0x91c
01722d5c  mov w2,#0x1
01722d60  bl 0x0124ec90
01722d64  ldr x0,[sp, #0x10]
01722d68  mov w1,#0xffffffff
01722d6c  bl 0x0124c0c0
01722d70  ldr x19,[sp, #0x10]
01722d74  orr w1,wzr,#0xfffffffb
01722d78  mov w2,#0x6e7
01722d7c  mov x0,x19
01722d80  bl 0x0124a650
01722d84  orr w1,wzr,#0xfffffffe
01722d88  mov x0,x19
01722d8c  bl 0x0124c0c0
01722d90  orr w1,wzr,#0xfffffffe
01722d94  mov x0,x19
01722d98  bl 0x0124e920
01722d9c  mov w20,w0
01722da0  adrp x1,0x576f000
01722da4  add x1,x1,#0x93d
01722da8  mov x0,x19
01722dac  bl 0x0124f120
01722db0  orr w1,wzr,#0xfffffffe
01722db4  mov w2,#0x1
01722db8  mov x0,x19
01722dbc  bl 0x0124cfc0
01722dc0  mov x0,x19
01722dc4  mov w1,w20
01722dc8  bl 0x0124e060
01722dcc  orr w1,wzr,#0xfffffffd
01722dd0  mov x0,x19
01722dd4  bl 0x0124c4d0
01722dd8  ldr x19,[sp, #0x10]
01722ddc  orr w1,wzr,#0xfffffffd
01722de0  mov w2,#0x6e7
01722de4  mov x0,x19
01722de8  bl 0x0124a650
01722dec  orr w1,wzr,#0xfffffffe
01722df0  mov x0,x19
01722df4  bl 0x0124c0c0
01722df8  orr w1,wzr,#0xfffffffe
01722dfc  mov x0,x19
01722e00  bl 0x0124e920
01722e04  mov w20,w0
01722e08  adrp x1,0x576f000
01722e0c  add x1,x1,#0x93d
01722e10  mov x0,x19
01722e14  bl 0x0124f120
01722e18  orr w1,wzr,#0xfffffffe
01722e1c  mov w2,#0x1
01722e20  mov x0,x19
01722e24  bl 0x0124cfc0
01722e28  mov x0,x19
01722e2c  mov w1,w20
01722e30  bl 0x0124e060
01722e34  orr w1,wzr,#0xfffffffd
01722e38  mov x0,x19
01722e3c  bl 0x0124c4d0
01722e40  ldr w8,[sp, #0x18]
01722e44  ldr x0,[sp, #0x10]
01722e48  sub w8,w8,#0x3
01722e4c  str w8,[sp, #0x18]
01722e50  orr w1,wzr,#0xfffffffc
01722e54  bl 0x0124c4d0
01722e58  ldr w8,[sp, #0x18]
01722e5c  ldr x0,[sp, #0x10]
01722e60  str wzr,[sp, #0x18]
01722e64  cmp w8,#0x1
01722e68  b.lt 0x01722e8c
01722e6c  mvn w1,w8
01722e70  bl 0x0124c4d0
01722e74  ldr w8,[sp, #0x18]
01722e78  cmp w8,#0x1
01722e7c  b.lt 0x01722e8c
01722e80  ldr x0,[sp, #0x10]
01722e84  mvn w1,w8
01722e88  bl 0x0124c4d0
01722e8c  ldr w8,[sp, #0x8]
01722e90  cmp w8,#0x1
01722e94  b.lt 0x01722ea4
01722e98  ldr x0,[sp]
01722e9c  mvn w1,w8
01722ea0  bl 0x0124c4d0
01722ea4  ldp x29,x30,[sp, #0x30]
01722ea8  ldp x20,x19,[sp, #0x20]
01722eac  add sp,sp,#0x40
01722eb0  ret
