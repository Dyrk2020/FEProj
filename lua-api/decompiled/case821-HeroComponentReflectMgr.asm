// ===== case821-HeroComponentReflectMgr @ 01737b38 =====
// existing function case821-HeroComponentReflectMgr
01737b38  sub sp,sp,#0x50
01737b3c  str x21,[sp, #0x20]
01737b40  stp x20,x19,[sp, #0x30]
01737b44  stp x29,x30,[sp, #0x40]
01737b48  add x29,sp,#0x40
01737b4c  adrp x1,0x174a000
01737b50  add x1,x1,#0x87c
01737b54  mov x19,x0
01737b58  bl 0x0124ba40
01737b5c  adrp x1,0x575d000
01737b60  add x1,x1,#0xa06
01737b64  mov x0,x19
01737b68  str x19,[sp]
01737b6c  bl 0x01251aa0
01737b70  mov w8,#0x1
01737b74  str w8,[sp, #0x8]
01737b78  mov x0,sp
01737b7c  bl 0x0174aa04
01737b80  adrp x1,0x5772000
01737b84  adrp x3,0x736d000
01737b88  add x1,x1,#0x5ad
01737b8c  add x3,x3,#0x101
01737b90  add x0,sp,#0x10
01737b94  mov x2,sp
01737b98  bl 0x019c8be0
01737b9c  ldr x0,[sp, #0x10]
01737ba0  mov w1,#0x10
01737ba4  bl 0x0124cba0
01737ba8  adrp x8,0x19c8000
01737bac  dup v0.2D,xzr
01737bb0  add x8,x8,#0x764
01737bb4  mov v0.D[0x0],x8
01737bb8  str q0,[x0]
01737bbc  ldr x0,[sp, #0x10]
01737bc0  adrp x1,0x19c8000
01737bc4  add x1,x1,#0xfa4
01737bc8  mov w2,#0x1
01737bcc  bl 0x0124ec90
01737bd0  ldr x0,[sp, #0x10]
01737bd4  mov w1,#0xffffffff
01737bd8  bl 0x0124c0c0
01737bdc  ldr x19,[sp, #0x10]
01737be0  orr w1,wzr,#0xfffffffb
01737be4  mov w2,#0x6e7
01737be8  mov x0,x19
01737bec  bl 0x0124a650
01737bf0  orr w1,wzr,#0xfffffffe
01737bf4  mov x0,x19
01737bf8  bl 0x0124c0c0
01737bfc  orr w1,wzr,#0xfffffffe
01737c00  mov x0,x19
01737c04  bl 0x0124e920
01737c08  mov w20,w0
01737c0c  adrp x1,0x5772000
01737c10  add x1,x1,#0x5c5
01737c14  mov x0,x19
01737c18  bl 0x0124f120
01737c1c  orr w1,wzr,#0xfffffffe
01737c20  mov w2,#0x1
01737c24  mov x0,x19
01737c28  bl 0x0124cfc0
01737c2c  mov x0,x19
01737c30  mov w1,w20
01737c34  bl 0x0124e060
01737c38  orr w1,wzr,#0xfffffffd
01737c3c  mov x0,x19
01737c40  bl 0x0124c4d0
01737c44  ldr x19,[sp, #0x10]
01737c48  orr w1,wzr,#0xfffffffd
01737c4c  mov w2,#0x6e7
01737c50  mov x0,x19
01737c54  bl 0x0124a650
01737c58  orr w1,wzr,#0xfffffffe
01737c5c  mov x0,x19
01737c60  bl 0x0124c0c0
01737c64  orr w1,wzr,#0xfffffffe
01737c68  mov x0,x19
01737c6c  bl 0x0124e920
01737c70  mov w20,w0
01737c74  adrp x1,0x5772000
01737c78  add x1,x1,#0x5c5
01737c7c  mov x0,x19
01737c80  bl 0x0124f120
01737c84  orr w1,wzr,#0xfffffffe
01737c88  mov w2,#0x1
01737c8c  mov x0,x19
01737c90  bl 0x0124cfc0
01737c94  mov x0,x19
01737c98  mov w1,w20
01737c9c  bl 0x0124e060
01737ca0  orr w1,wzr,#0xfffffffd
01737ca4  mov x0,x19
01737ca8  bl 0x0124c4d0
01737cac  adrp x1,0x5772000
01737cb0  adrp x2,0x19c8000
01737cb4  adrp x4,0x19c8000
01737cb8  add x1,x1,#0x5e2
01737cbc  add x2,x2,#0x954
01737cc0  add x4,x4,#0x95c
01737cc4  add x0,sp,#0x10
01737cc8  mov x3,xzr
01737ccc  mov x5,xzr
01737cd0  bl 0x019c876c
01737cd4  adrp x1,0x575e000
01737cd8  adrp x2,0x19c8000
01737cdc  adrp x4,0x19c8000
01737ce0  add x1,x1,#0x72b
01737ce4  add x2,x2,#0xba4
01737ce8  add x4,x4,#0xbac
01737cec  mov x3,xzr
01737cf0  mov x5,xzr
01737cf4  bl 0x019c89bc
01737cf8  adrp x1,0x5772000
01737cfc  adrp x2,0x19c8000
01737d00  adrp x4,0x19c8000
01737d04  add x1,x1,#0x5f1
01737d08  add x2,x2,#0xbc8
01737d0c  add x4,x4,#0xbd0
01737d10  mov x3,xzr
01737d14  mov x5,xzr
01737d18  bl 0x019c89bc
01737d1c  mov x19,x0
01737d20  ldr x0,[x19]
01737d24  mov w1,#0x10
01737d28  bl 0x0124cba0
01737d2c  adrp x8,0x19c8000
01737d30  dup v0.2D,xzr
01737d34  add x8,x8,#0xbd8
01737d38  mov v0.D[0x0],x8
01737d3c  str q0,[x0]
01737d40  ldr x0,[x19]
01737d44  adrp x1,0x19c9000
01737d48  add x1,x1,#0x804
01737d4c  mov w2,#0x1
01737d50  bl 0x0124ec90
01737d54  ldr x0,[x19]
01737d58  mov w1,#0xffffffff
01737d5c  bl 0x0124c0c0
01737d60  ldr x20,[x19]
01737d64  orr w1,wzr,#0xfffffffb
01737d68  mov w2,#0x6e7
01737d6c  mov x0,x20
01737d70  bl 0x0124a650
01737d74  orr w1,wzr,#0xfffffffe
01737d78  mov x0,x20
01737d7c  bl 0x0124c0c0
01737d80  orr w1,wzr,#0xfffffffe
01737d84  mov x0,x20
01737d88  bl 0x0124e920
01737d8c  mov w21,w0
01737d90  adrp x1,0x5772000
01737d94  add x1,x1,#0x602
01737d98  mov x0,x20
01737d9c  bl 0x0124f120
01737da0  orr w1,wzr,#0xfffffffe
01737da4  mov w2,#0x1
01737da8  mov x0,x20
01737dac  bl 0x0124cfc0
01737db0  mov x0,x20
01737db4  mov w1,w21
01737db8  bl 0x0124e060
01737dbc  orr w1,wzr,#0xfffffffd
01737dc0  mov x0,x20
01737dc4  bl 0x0124c4d0
01737dc8  ldr x20,[x19]
01737dcc  orr w1,wzr,#0xfffffffd
01737dd0  mov w2,#0x6e7
01737dd4  mov x0,x20
01737dd8  bl 0x0124a650
01737ddc  orr w1,wzr,#0xfffffffe
01737de0  mov x0,x20
01737de4  bl 0x0124c0c0
01737de8  orr w1,wzr,#0xfffffffe
01737dec  mov x0,x20
01737df0  bl 0x0124e920
01737df4  mov w21,w0
01737df8  adrp x1,0x5772000
01737dfc  add x1,x1,#0x602
01737e00  mov x0,x20
01737e04  bl 0x0124f120
01737e08  orr w1,wzr,#0xfffffffe
01737e0c  mov w2,#0x1
01737e10  mov x0,x20
01737e14  bl 0x0124cfc0
01737e18  mov x0,x20
01737e1c  mov w1,w21
01737e20  bl 0x0124e060
01737e24  orr w1,wzr,#0xfffffffd
01737e28  mov x0,x20
01737e2c  bl 0x0124c4d0
01737e30  ldr w8,[x19, #0x8]
01737e34  ldr x0,[x19]
01737e38  sub w8,w8,#0x3
01737e3c  str w8,[x19, #0x8]
01737e40  orr w1,wzr,#0xfffffffc
01737e44  bl 0x0124c4d0
01737e48  ldr w8,[x19, #0x8]
01737e4c  ldr x0,[x19]
01737e50  str wzr,[x19, #0x8]
01737e54  cmp w8,#0x1
01737e58  b.lt 0x01737e64
01737e5c  mvn w1,w8
01737e60  bl 0x0124c4d0
01737e64  ldr w8,[sp, #0x18]
01737e68  cmp w8,#0x1
01737e6c  b.lt 0x01737e7c
01737e70  ldr x0,[sp, #0x10]
01737e74  mvn w1,w8
01737e78  bl 0x0124c4d0
01737e7c  ldr w8,[sp, #0x8]
01737e80  cmp w8,#0x1
01737e84  b.lt 0x01737e94
01737e88  ldr x0,[sp]
01737e8c  mvn w1,w8
01737e90  bl 0x0124c4d0
01737e94  ldp x29,x30,[sp, #0x40]
01737e98  ldp x20,x19,[sp, #0x30]
01737e9c  ldr x21,[sp, #0x20]
01737ea0  add sp,sp,#0x50
01737ea4  ret
