// ===== case443-BattleStateMgr @ 016e8b78 =====
// existing function case443-BattleStateMgr
016e8b78  sub sp,sp,#0x50
016e8b7c  str x21,[sp, #0x20]
016e8b80  stp x20,x19,[sp, #0x30]
016e8b84  stp x29,x30,[sp, #0x40]
016e8b88  add x29,sp,#0x40
016e8b8c  adrp x1,0x174a000
016e8b90  add x1,x1,#0x87c
016e8b94  mov x19,x0
016e8b98  bl 0x0124ba40
016e8b9c  adrp x1,0x575d000
016e8ba0  add x1,x1,#0xa06
016e8ba4  mov x0,x19
016e8ba8  str x19,[sp]
016e8bac  bl 0x01251aa0
016e8bb0  mov w8,#0x1
016e8bb4  str w8,[sp, #0x8]
016e8bb8  mov x0,sp
016e8bbc  bl 0x0174aa04
016e8bc0  adrp x1,0x5766000
016e8bc4  adrp x3,0x736d000
016e8bc8  add x1,x1,#0x933
016e8bcc  add x3,x3,#0x101
016e8bd0  add x0,sp,#0x10
016e8bd4  mov x2,sp
016e8bd8  bl 0x018692a8
016e8bdc  adrp x1,0x5766000
016e8be0  adrp x2,0x1869000
016e8be4  adrp x4,0x1869000
016e8be8  add x1,x1,#0x942
016e8bec  add x2,x2,#0x2c
016e8bf0  add x4,x4,#0x34
016e8bf4  add x0,sp,#0x10
016e8bf8  mov x3,xzr
016e8bfc  mov x5,xzr
016e8c00  bl 0x01868e44
016e8c04  adrp x1,0x5766000
016e8c08  adrp x2,0x1869000
016e8c0c  adrp x4,0x1869000
016e8c10  add x1,x1,#0x951
016e8c14  add x2,x2,#0x238
016e8c18  add x4,x4,#0x240
016e8c1c  mov x3,xzr
016e8c20  mov x5,xzr
016e8c24  bl 0x01869050
016e8c28  mov x19,x0
016e8c2c  ldr x0,[x19]
016e8c30  mov w1,#0x10
016e8c34  bl 0x0124cba0
016e8c38  adrp x8,0x1869000
016e8c3c  dup v0.2D,xzr
016e8c40  add x8,x8,#0x2a0
016e8c44  mov v0.D[0x0],x8
016e8c48  str q0,[x0]
016e8c4c  ldr x0,[x19]
016e8c50  adrp x1,0x1869000
016e8c54  add x1,x1,#0xda8
016e8c58  mov w2,#0x1
016e8c5c  bl 0x0124ec90
016e8c60  ldr x0,[x19]
016e8c64  mov w1,#0xffffffff
016e8c68  bl 0x0124c0c0
016e8c6c  ldr x20,[x19]
016e8c70  orr w1,wzr,#0xfffffffb
016e8c74  mov w2,#0x6e7
016e8c78  mov x0,x20
016e8c7c  bl 0x0124a650
016e8c80  orr w1,wzr,#0xfffffffe
016e8c84  mov x0,x20
016e8c88  bl 0x0124c0c0
016e8c8c  orr w1,wzr,#0xfffffffe
016e8c90  mov x0,x20
016e8c94  bl 0x0124e920
016e8c98  mov w21,w0
016e8c9c  adrp x1,0x5766000
016e8ca0  add x1,x1,#0x962
016e8ca4  mov x0,x20
016e8ca8  bl 0x0124f120
016e8cac  orr w1,wzr,#0xfffffffe
016e8cb0  mov w2,#0x1
016e8cb4  mov x0,x20
016e8cb8  bl 0x0124cfc0
016e8cbc  mov x0,x20
016e8cc0  mov w1,w21
016e8cc4  bl 0x0124e060
016e8cc8  orr w1,wzr,#0xfffffffd
016e8ccc  mov x0,x20
016e8cd0  bl 0x0124c4d0
016e8cd4  ldr x20,[x19]
016e8cd8  orr w1,wzr,#0xfffffffd
016e8cdc  mov w2,#0x6e7
016e8ce0  mov x0,x20
016e8ce4  bl 0x0124a650
016e8ce8  orr w1,wzr,#0xfffffffe
016e8cec  mov x0,x20
016e8cf0  bl 0x0124c0c0
016e8cf4  orr w1,wzr,#0xfffffffe
016e8cf8  mov x0,x20
016e8cfc  bl 0x0124e920
016e8d00  mov w21,w0
016e8d04  adrp x1,0x5766000
016e8d08  add x1,x1,#0x962
016e8d0c  mov x0,x20
016e8d10  bl 0x0124f120
016e8d14  orr w1,wzr,#0xfffffffe
016e8d18  mov w2,#0x1
016e8d1c  mov x0,x20
016e8d20  bl 0x0124cfc0
016e8d24  mov x0,x20
016e8d28  mov w1,w21
016e8d2c  bl 0x0124e060
016e8d30  orr w1,wzr,#0xfffffffd
016e8d34  mov x0,x20
016e8d38  bl 0x0124c4d0
016e8d3c  ldr w8,[x19, #0x8]
016e8d40  ldr x0,[x19]
016e8d44  sub w8,w8,#0x3
016e8d48  str w8,[x19, #0x8]
016e8d4c  orr w1,wzr,#0xfffffffc
016e8d50  bl 0x0124c4d0
016e8d54  ldr w8,[x19, #0x8]
016e8d58  ldr x0,[x19]
016e8d5c  str wzr,[x19, #0x8]
016e8d60  cmp w8,#0x1
016e8d64  b.lt 0x016e8d70
016e8d68  mvn w1,w8
016e8d6c  bl 0x0124c4d0
016e8d70  ldr w8,[sp, #0x18]
016e8d74  cmp w8,#0x1
016e8d78  b.lt 0x016e8d88
016e8d7c  ldr x0,[sp, #0x10]
016e8d80  mvn w1,w8
016e8d84  bl 0x0124c4d0
016e8d88  ldr w8,[sp, #0x8]
016e8d8c  cmp w8,#0x1
016e8d90  b.lt 0x016e8da0
016e8d94  ldr x0,[sp]
016e8d98  mvn w1,w8
016e8d9c  bl 0x0124c4d0
016e8da0  ldp x29,x30,[sp, #0x40]
016e8da4  ldp x20,x19,[sp, #0x30]
016e8da8  ldr x21,[sp, #0x20]
016e8dac  add sp,sp,#0x50
016e8db0  ret
