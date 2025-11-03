// ===== case430-BattleEquipPurchaseRuleMgr @ 016e6bfc =====
// existing function case430-BattleEquipPurchaseRuleMgr
016e6bfc  sub sp,sp,#0x40
016e6c00  stp x20,x19,[sp, #0x20]
016e6c04  stp x29,x30,[sp, #0x30]
016e6c08  add x29,sp,#0x30
016e6c0c  adrp x1,0x174a000
016e6c10  add x1,x1,#0x87c
016e6c14  mov x19,x0
016e6c18  bl 0x0124ba40
016e6c1c  adrp x1,0x575d000
016e6c20  add x1,x1,#0xa06
016e6c24  mov x0,x19
016e6c28  str x19,[sp]
016e6c2c  bl 0x01251aa0
016e6c30  mov w8,#0x1
016e6c34  str w8,[sp, #0x8]
016e6c38  mov x0,sp
016e6c3c  bl 0x0174aa04
016e6c40  adrp x1,0x5766000
016e6c44  adrp x3,0x736d000
016e6c48  add x1,x1,#0x77a
016e6c4c  add x3,x3,#0x101
016e6c50  add x0,sp,#0x10
016e6c54  mov x2,sp
016e6c58  bl 0x01862784
016e6c5c  ldr x0,[sp, #0x10]
016e6c60  mov w1,#0x10
016e6c64  bl 0x0124cba0
016e6c68  adrp x8,0x1862000
016e6c6c  dup v0.2D,xzr
016e6c70  add x8,x8,#0x774
016e6c74  mov v0.D[0x0],x8
016e6c78  str q0,[x0]
016e6c7c  ldr x0,[sp, #0x10]
016e6c80  adrp x1,0x1862000
016e6c84  add x1,x1,#0xb48
016e6c88  mov w2,#0x1
016e6c8c  bl 0x0124ec90
016e6c90  ldr x0,[sp, #0x10]
016e6c94  mov w1,#0xffffffff
016e6c98  bl 0x0124c0c0
016e6c9c  ldr x19,[sp, #0x10]
016e6ca0  orr w1,wzr,#0xfffffffb
016e6ca4  mov w2,#0x6e7
016e6ca8  mov x0,x19
016e6cac  bl 0x0124a650
016e6cb0  orr w1,wzr,#0xfffffffe
016e6cb4  mov x0,x19
016e6cb8  bl 0x0124c0c0
016e6cbc  orr w1,wzr,#0xfffffffe
016e6cc0  mov x0,x19
016e6cc4  bl 0x0124e920
016e6cc8  mov w20,w0
016e6ccc  adrp x1,0x5766000
016e6cd0  add x1,x1,#0x795
016e6cd4  mov x0,x19
016e6cd8  bl 0x0124f120
016e6cdc  orr w1,wzr,#0xfffffffe
016e6ce0  mov w2,#0x1
016e6ce4  mov x0,x19
016e6ce8  bl 0x0124cfc0
016e6cec  mov x0,x19
016e6cf0  mov w1,w20
016e6cf4  bl 0x0124e060
016e6cf8  orr w1,wzr,#0xfffffffd
016e6cfc  mov x0,x19
016e6d00  bl 0x0124c4d0
016e6d04  ldr x19,[sp, #0x10]
016e6d08  orr w1,wzr,#0xfffffffd
016e6d0c  mov w2,#0x6e7
016e6d10  mov x0,x19
016e6d14  bl 0x0124a650
016e6d18  orr w1,wzr,#0xfffffffe
016e6d1c  mov x0,x19
016e6d20  bl 0x0124c0c0
016e6d24  orr w1,wzr,#0xfffffffe
016e6d28  mov x0,x19
016e6d2c  bl 0x0124e920
016e6d30  mov w20,w0
016e6d34  adrp x1,0x5766000
016e6d38  add x1,x1,#0x795
016e6d3c  mov x0,x19
016e6d40  bl 0x0124f120
016e6d44  orr w1,wzr,#0xfffffffe
016e6d48  mov w2,#0x1
016e6d4c  mov x0,x19
016e6d50  bl 0x0124cfc0
016e6d54  mov x0,x19
016e6d58  mov w1,w20
016e6d5c  bl 0x0124e060
016e6d60  orr w1,wzr,#0xfffffffd
016e6d64  mov x0,x19
016e6d68  bl 0x0124c4d0
016e6d6c  ldr x0,[sp, #0x10]
016e6d70  mov w1,#0x10
016e6d74  bl 0x0124cba0
016e6d78  adrp x8,0x1862000
016e6d7c  dup v0.2D,xzr
016e6d80  add x8,x8,#0x77c
016e6d84  mov v0.D[0x0],x8
016e6d88  str q0,[x0]
016e6d8c  ldr x0,[sp, #0x10]
016e6d90  adrp x1,0x1862000
016e6d94  add x1,x1,#0xc6c
016e6d98  mov w2,#0x1
016e6d9c  bl 0x0124ec90
016e6da0  ldr x0,[sp, #0x10]
016e6da4  mov w1,#0xffffffff
016e6da8  bl 0x0124c0c0
016e6dac  ldr x19,[sp, #0x10]
016e6db0  orr w1,wzr,#0xfffffffb
016e6db4  mov w2,#0x6e7
016e6db8  mov x0,x19
016e6dbc  bl 0x0124a650
016e6dc0  orr w1,wzr,#0xfffffffe
016e6dc4  mov x0,x19
016e6dc8  bl 0x0124c0c0
016e6dcc  orr w1,wzr,#0xfffffffe
016e6dd0  mov x0,x19
016e6dd4  bl 0x0124e920
016e6dd8  mov w20,w0
016e6ddc  adrp x1,0x5766000
016e6de0  add x1,x1,#0x7ae
016e6de4  mov x0,x19
016e6de8  bl 0x0124f120
016e6dec  orr w1,wzr,#0xfffffffe
016e6df0  mov w2,#0x1
016e6df4  mov x0,x19
016e6df8  bl 0x0124cfc0
016e6dfc  mov x0,x19
016e6e00  mov w1,w20
016e6e04  bl 0x0124e060
016e6e08  orr w1,wzr,#0xfffffffd
016e6e0c  mov x0,x19
016e6e10  bl 0x0124c4d0
016e6e14  ldr x19,[sp, #0x10]
016e6e18  orr w1,wzr,#0xfffffffd
016e6e1c  mov w2,#0x6e7
016e6e20  mov x0,x19
016e6e24  bl 0x0124a650
016e6e28  orr w1,wzr,#0xfffffffe
016e6e2c  mov x0,x19
016e6e30  bl 0x0124c0c0
016e6e34  orr w1,wzr,#0xfffffffe
016e6e38  mov x0,x19
016e6e3c  bl 0x0124e920
016e6e40  mov w20,w0
016e6e44  adrp x1,0x5766000
016e6e48  add x1,x1,#0x7ae
016e6e4c  mov x0,x19
016e6e50  bl 0x0124f120
016e6e54  orr w1,wzr,#0xfffffffe
016e6e58  mov w2,#0x1
016e6e5c  mov x0,x19
016e6e60  bl 0x0124cfc0
016e6e64  mov x0,x19
016e6e68  mov w1,w20
016e6e6c  bl 0x0124e060
016e6e70  orr w1,wzr,#0xfffffffd
016e6e74  mov x0,x19
016e6e78  bl 0x0124c4d0
016e6e7c  ldr w8,[sp, #0x18]
016e6e80  ldr x0,[sp, #0x10]
016e6e84  sub w8,w8,#0x3
016e6e88  str w8,[sp, #0x18]
016e6e8c  orr w1,wzr,#0xfffffffc
016e6e90  bl 0x0124c4d0
016e6e94  ldr w8,[sp, #0x18]
016e6e98  ldr x0,[sp, #0x10]
016e6e9c  str wzr,[sp, #0x18]
016e6ea0  cmp w8,#0x1
016e6ea4  b.lt 0x016e6ec8
016e6ea8  mvn w1,w8
016e6eac  bl 0x0124c4d0
016e6eb0  ldr w8,[sp, #0x18]
016e6eb4  cmp w8,#0x1
016e6eb8  b.lt 0x016e6ec8
016e6ebc  ldr x0,[sp, #0x10]
016e6ec0  mvn w1,w8
016e6ec4  bl 0x0124c4d0
016e6ec8  ldr w8,[sp, #0x8]
016e6ecc  cmp w8,#0x1
016e6ed0  b.lt 0x016e6ee0
016e6ed4  ldr x0,[sp]
016e6ed8  mvn w1,w8
016e6edc  bl 0x0124c4d0
016e6ee0  ldp x29,x30,[sp, #0x30]
016e6ee4  ldp x20,x19,[sp, #0x20]
016e6ee8  add sp,sp,#0x40
016e6eec  ret
