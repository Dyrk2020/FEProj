// ===== case313-LevelRhythmResObject @ 016c0c18 =====
// existing function case313-LevelRhythmResObject
016c0c18  sub sp,sp,#0x40
016c0c1c  stp x20,x19,[sp, #0x20]
016c0c20  stp x29,x30,[sp, #0x30]
016c0c24  add x29,sp,#0x30
016c0c28  adrp x1,0x174a000
016c0c2c  add x1,x1,#0x87c
016c0c30  mov x19,x0
016c0c34  bl 0x0124ba40
016c0c38  adrp x1,0x575d000
016c0c3c  add x1,x1,#0xa06
016c0c40  mov x0,x19
016c0c44  str x19,[sp]
016c0c48  bl 0x01251aa0
016c0c4c  mov w8,#0x1
016c0c50  str w8,[sp, #0x8]
016c0c54  mov x0,sp
016c0c58  bl 0x0174aa04
016c0c5c  adrp x1,0x5762000
016c0c60  adrp x3,0x736d000
016c0c64  add x1,x1,#0x970
016c0c68  add x3,x3,#0x101
016c0c6c  add x0,sp,#0x10
016c0c70  mov x2,sp
016c0c74  bl 0x017fbaa4
016c0c78  ldr x0,[sp, #0x10]
016c0c7c  mov w1,#0x10
016c0c80  bl 0x0124cba0
016c0c84  adrp x8,0x17fb000
016c0c88  dup v0.2D,xzr
016c0c8c  add x8,x8,#0x884
016c0c90  mov v0.D[0x0],x8
016c0c94  str q0,[x0]
016c0c98  ldr x0,[sp, #0x10]
016c0c9c  adrp x1,0x17fb000
016c0ca0  add x1,x1,#0xe68
016c0ca4  mov w2,#0x1
016c0ca8  bl 0x0124ec90
016c0cac  ldr x0,[sp, #0x10]
016c0cb0  mov w1,#0xffffffff
016c0cb4  bl 0x0124c0c0
016c0cb8  ldr x19,[sp, #0x10]
016c0cbc  orr w1,wzr,#0xfffffffb
016c0cc0  mov w2,#0x6e7
016c0cc4  mov x0,x19
016c0cc8  bl 0x0124a650
016c0ccc  orr w1,wzr,#0xfffffffe
016c0cd0  mov x0,x19
016c0cd4  bl 0x0124c0c0
016c0cd8  orr w1,wzr,#0xfffffffe
016c0cdc  mov x0,x19
016c0ce0  bl 0x0124e920
016c0ce4  mov w20,w0
016c0ce8  adrp x1,0x5762000
016c0cec  add x1,x1,#0x985
016c0cf0  mov x0,x19
016c0cf4  bl 0x0124f120
016c0cf8  orr w1,wzr,#0xfffffffe
016c0cfc  mov w2,#0x1
016c0d00  mov x0,x19
016c0d04  bl 0x0124cfc0
016c0d08  mov x0,x19
016c0d0c  mov w1,w20
016c0d10  bl 0x0124e060
016c0d14  orr w1,wzr,#0xfffffffd
016c0d18  mov x0,x19
016c0d1c  bl 0x0124c4d0
016c0d20  ldr x19,[sp, #0x10]
016c0d24  orr w1,wzr,#0xfffffffd
016c0d28  mov w2,#0x6e7
016c0d2c  mov x0,x19
016c0d30  bl 0x0124a650
016c0d34  orr w1,wzr,#0xfffffffe
016c0d38  mov x0,x19
016c0d3c  bl 0x0124c0c0
016c0d40  orr w1,wzr,#0xfffffffe
016c0d44  mov x0,x19
016c0d48  bl 0x0124e920
016c0d4c  mov w20,w0
016c0d50  adrp x1,0x5762000
016c0d54  add x1,x1,#0x985
016c0d58  mov x0,x19
016c0d5c  bl 0x0124f120
016c0d60  orr w1,wzr,#0xfffffffe
016c0d64  mov w2,#0x1
016c0d68  mov x0,x19
016c0d6c  bl 0x0124cfc0
016c0d70  mov x0,x19
016c0d74  mov w1,w20
016c0d78  bl 0x0124e060
016c0d7c  orr w1,wzr,#0xfffffffd
016c0d80  mov x0,x19
016c0d84  bl 0x0124c4d0
016c0d88  adrp x1,0x5762000
016c0d8c  adrp x2,0x17fb000
016c0d90  adrp x4,0x17fb000
016c0d94  add x1,x1,#0x990
016c0d98  add x2,x2,#0xa74
016c0d9c  add x4,x4,#0xa7c
016c0da0  add x0,sp,#0x10
016c0da4  mov x3,xzr
016c0da8  mov x5,xzr
016c0dac  bl 0x017fb88c
016c0db0  adrp x1,0x5762000
016c0db4  adrp x2,0x17fb000
016c0db8  adrp x4,0x17fb000
016c0dbc  add x1,x1,#0x9a4
016c0dc0  add x2,x2,#0xa84
016c0dc4  add x4,x4,#0xa8c
016c0dc8  mov x3,xzr
016c0dcc  mov x5,xzr
016c0dd0  bl 0x017fb88c
016c0dd4  adrp x1,0x5762000
016c0dd8  adrp x2,0x17fb000
016c0ddc  adrp x4,0x17fb000
016c0de0  add x1,x1,#0x9bf
016c0de4  add x2,x2,#0xa94
016c0de8  add x4,x4,#0xa9c
016c0dec  mov x3,xzr
016c0df0  mov x5,xzr
016c0df4  bl 0x017fb88c
016c0df8  mov x19,x0
016c0dfc  ldr w8,[x19, #0x8]
016c0e00  ldr x0,[x19]
016c0e04  sub w8,w8,#0x3
016c0e08  str w8,[x19, #0x8]
016c0e0c  orr w1,wzr,#0xfffffffc
016c0e10  bl 0x0124c4d0
016c0e14  ldr w8,[x19, #0x8]
016c0e18  ldr x0,[x19]
016c0e1c  str wzr,[x19, #0x8]
016c0e20  cmp w8,#0x1
016c0e24  b.lt 0x016c0e30
016c0e28  mvn w1,w8
016c0e2c  bl 0x0124c4d0
016c0e30  ldr w8,[sp, #0x18]
016c0e34  cmp w8,#0x1
016c0e38  b.lt 0x016c0e48
016c0e3c  ldr x0,[sp, #0x10]
016c0e40  mvn w1,w8
016c0e44  bl 0x0124c4d0
016c0e48  ldr w8,[sp, #0x8]
016c0e4c  cmp w8,#0x1
016c0e50  b.lt 0x016c0e60
016c0e54  ldr x0,[sp]
016c0e58  mvn w1,w8
016c0e5c  bl 0x0124c4d0
016c0e60  ldp x29,x30,[sp, #0x30]
016c0e64  ldp x20,x19,[sp, #0x20]
016c0e68  add sp,sp,#0x40
016c0e6c  ret
