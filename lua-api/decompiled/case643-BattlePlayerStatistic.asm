// ===== case643-BattlePlayerStatistic @ 01713c0c =====
// existing function case643-BattlePlayerStatistic
01713c0c  sub sp,sp,#0x40
01713c10  stp x20,x19,[sp, #0x20]
01713c14  stp x29,x30,[sp, #0x30]
01713c18  add x29,sp,#0x30
01713c1c  adrp x1,0x174a000
01713c20  add x1,x1,#0x87c
01713c24  mov x19,x0
01713c28  bl 0x0124ba40
01713c2c  adrp x1,0x575d000
01713c30  add x1,x1,#0xa06
01713c34  mov x0,x19
01713c38  str x19,[sp]
01713c3c  bl 0x01251aa0
01713c40  mov w8,#0x1
01713c44  str w8,[sp, #0x8]
01713c48  mov x0,sp
01713c4c  bl 0x0174aa04
01713c50  adrp x1,0x576c000
01713c54  adrp x3,0x736d000
01713c58  add x1,x1,#0x67d
01713c5c  add x3,x3,#0x101
01713c60  add x0,sp,#0x10
01713c64  mov x2,sp
01713c68  bl 0x0191ffc0
01713c6c  ldr x0,[sp, #0x10]
01713c70  mov w1,#0x10
01713c74  bl 0x0124cba0
01713c78  adrp x8,0x191f000
01713c7c  dup v0.2D,xzr
01713c80  add x8,x8,#0xfb8
01713c84  mov v0.D[0x0],x8
01713c88  str q0,[x0]
01713c8c  ldr x0,[sp, #0x10]
01713c90  adrp x1,0x1920000
01713c94  add x1,x1,#0x384
01713c98  mov w2,#0x1
01713c9c  bl 0x0124ec90
01713ca0  ldr x0,[sp, #0x10]
01713ca4  mov w1,#0xffffffff
01713ca8  bl 0x0124c0c0
01713cac  ldr x19,[sp, #0x10]
01713cb0  orr w1,wzr,#0xfffffffb
01713cb4  mov w2,#0x6e7
01713cb8  mov x0,x19
01713cbc  bl 0x0124a650
01713cc0  orr w1,wzr,#0xfffffffe
01713cc4  mov x0,x19
01713cc8  bl 0x0124c0c0
01713ccc  orr w1,wzr,#0xfffffffe
01713cd0  mov x0,x19
01713cd4  bl 0x0124e920
01713cd8  mov w20,w0
01713cdc  adrp x1,0x5764000
01713ce0  add x1,x1,#0x796
01713ce4  mov x0,x19
01713ce8  bl 0x0124f120
01713cec  orr w1,wzr,#0xfffffffe
01713cf0  mov w2,#0x1
01713cf4  mov x0,x19
01713cf8  bl 0x0124cfc0
01713cfc  mov x0,x19
01713d00  mov w1,w20
01713d04  bl 0x0124e060
01713d08  orr w1,wzr,#0xfffffffd
01713d0c  mov x0,x19
01713d10  bl 0x0124c4d0
01713d14  ldr x19,[sp, #0x10]
01713d18  orr w1,wzr,#0xfffffffd
01713d1c  mov w2,#0x6e7
01713d20  mov x0,x19
01713d24  bl 0x0124a650
01713d28  orr w1,wzr,#0xfffffffe
01713d2c  mov x0,x19
01713d30  bl 0x0124c0c0
01713d34  orr w1,wzr,#0xfffffffe
01713d38  mov x0,x19
01713d3c  bl 0x0124e920
01713d40  mov w20,w0
01713d44  adrp x1,0x5764000
01713d48  add x1,x1,#0x796
01713d4c  mov x0,x19
01713d50  bl 0x0124f120
01713d54  orr w1,wzr,#0xfffffffe
01713d58  mov w2,#0x1
01713d5c  mov x0,x19
01713d60  bl 0x0124cfc0
01713d64  mov x0,x19
01713d68  mov w1,w20
01713d6c  bl 0x0124e060
01713d70  orr w1,wzr,#0xfffffffd
01713d74  mov x0,x19
01713d78  bl 0x0124c4d0
01713d7c  ldr w8,[sp, #0x18]
01713d80  ldr x0,[sp, #0x10]
01713d84  sub w8,w8,#0x3
01713d88  str w8,[sp, #0x18]
01713d8c  orr w1,wzr,#0xfffffffc
01713d90  bl 0x0124c4d0
01713d94  ldr w8,[sp, #0x18]
01713d98  ldr x0,[sp, #0x10]
01713d9c  str wzr,[sp, #0x18]
01713da0  cmp w8,#0x1
01713da4  b.lt 0x01713dc8
01713da8  mvn w1,w8
01713dac  bl 0x0124c4d0
01713db0  ldr w8,[sp, #0x18]
01713db4  cmp w8,#0x1
01713db8  b.lt 0x01713dc8
01713dbc  ldr x0,[sp, #0x10]
01713dc0  mvn w1,w8
01713dc4  bl 0x0124c4d0
01713dc8  ldr w8,[sp, #0x8]
01713dcc  cmp w8,#0x1
01713dd0  b.lt 0x01713de0
01713dd4  ldr x0,[sp]
01713dd8  mvn w1,w8
01713ddc  bl 0x0124c4d0
01713de0  ldp x29,x30,[sp, #0x30]
01713de4  ldp x20,x19,[sp, #0x20]
01713de8  add sp,sp,#0x40
01713dec  ret
