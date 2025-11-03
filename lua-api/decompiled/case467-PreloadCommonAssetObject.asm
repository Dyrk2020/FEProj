// ===== case467-PreloadCommonAssetObject @ 016ed2a4 =====
// existing function case467-PreloadCommonAssetObject
016ed2a4  sub sp,sp,#0x40
016ed2a8  str x19,[sp, #0x20]
016ed2ac  stp x29,x30,[sp, #0x30]
016ed2b0  add x29,sp,#0x30
016ed2b4  adrp x1,0x174a000
016ed2b8  add x1,x1,#0x87c
016ed2bc  mov x19,x0
016ed2c0  bl 0x0124ba40
016ed2c4  adrp x1,0x575d000
016ed2c8  add x1,x1,#0xa06
016ed2cc  mov x0,x19
016ed2d0  str x19,[sp]
016ed2d4  bl 0x01251aa0
016ed2d8  mov w8,#0x1
016ed2dc  str w8,[sp, #0x8]
016ed2e0  mov x0,sp
016ed2e4  bl 0x0174aa04
016ed2e8  adrp x1,0x5767000
016ed2ec  adrp x3,0x736d000
016ed2f0  add x1,x1,#0xdd
016ed2f4  add x3,x3,#0x101
016ed2f8  add x0,sp,#0x10
016ed2fc  mov x2,sp
016ed300  bl 0x01876f5c
016ed304  adrp x1,0x575d000
016ed308  adrp x2,0x1876000
016ed30c  adrp x4,0x1876000
016ed310  add x1,x1,#0xa00
016ed314  add x2,x2,#0xf4c
016ed318  add x4,x4,#0xf54
016ed31c  add x0,sp,#0x10
016ed320  mov x3,xzr
016ed324  mov x5,xzr
016ed328  bl 0x01876d64
016ed32c  mov x19,x0
016ed330  ldr w8,[x19, #0x8]
016ed334  ldr x0,[x19]
016ed338  sub w8,w8,#0x3
016ed33c  str w8,[x19, #0x8]
016ed340  orr w1,wzr,#0xfffffffc
016ed344  bl 0x0124c4d0
016ed348  ldr w8,[x19, #0x8]
016ed34c  ldr x0,[x19]
016ed350  str wzr,[x19, #0x8]
016ed354  cmp w8,#0x1
016ed358  b.lt 0x016ed364
016ed35c  mvn w1,w8
016ed360  bl 0x0124c4d0
016ed364  ldr w8,[sp, #0x18]
016ed368  cmp w8,#0x1
016ed36c  b.lt 0x016ed37c
016ed370  ldr x0,[sp, #0x10]
016ed374  mvn w1,w8
016ed378  bl 0x0124c4d0
016ed37c  ldr w8,[sp, #0x8]
016ed380  cmp w8,#0x1
016ed384  b.lt 0x016ed394
016ed388  ldr x0,[sp]
016ed38c  mvn w1,w8
016ed390  bl 0x0124c4d0
016ed394  ldp x29,x30,[sp, #0x30]
016ed398  ldr x19,[sp, #0x20]
016ed39c  add sp,sp,#0x40
016ed3a0  ret
