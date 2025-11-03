// ===== case362-DcUseSkillDataItem @ 016d2c18 =====
// existing function case362-DcUseSkillDataItem
016d2c18  sub sp,sp,#0x40
016d2c1c  str x19,[sp, #0x20]
016d2c20  stp x29,x30,[sp, #0x30]
016d2c24  add x29,sp,#0x30
016d2c28  adrp x1,0x174a000
016d2c2c  add x1,x1,#0x87c
016d2c30  mov x19,x0
016d2c34  bl 0x0124ba40
016d2c38  adrp x1,0x575d000
016d2c3c  add x1,x1,#0xa06
016d2c40  mov x0,x19
016d2c44  str x19,[sp]
016d2c48  bl 0x01251aa0
016d2c4c  mov w8,#0x1
016d2c50  str w8,[sp, #0x8]
016d2c54  mov x0,sp
016d2c58  bl 0x0174aa04
016d2c5c  adrp x1,0x5763000
016d2c60  adrp x3,0x736d000
016d2c64  add x1,x1,#0xff2
016d2c68  add x3,x3,#0x101
016d2c6c  add x0,sp,#0x10
016d2c70  mov x2,sp
016d2c74  bl 0x01824d5c
016d2c78  adrp x1,0x5763000
016d2c7c  adrp x2,0x1824000
016d2c80  adrp x4,0x1824000
016d2c84  add x1,x1,#0xcff
016d2c88  add x2,x2,#0x724
016d2c8c  add x4,x4,#0x72c
016d2c90  add x0,sp,#0x10
016d2c94  mov x3,xzr
016d2c98  mov x5,xzr
016d2c9c  bl 0x0182453c
016d2ca0  adrp x1,0x575e000
016d2ca4  adrp x2,0x1824000
016d2ca8  adrp x4,0x1824000
016d2cac  add x1,x1,#0x2ec
016d2cb0  add x2,x2,#0x91c
016d2cb4  add x4,x4,#0x924
016d2cb8  mov x3,xzr
016d2cbc  mov x5,xzr
016d2cc0  bl 0x01824734
016d2cc4  adrp x1,0x5763000
016d2cc8  adrp x2,0x1824000
016d2ccc  adrp x4,0x1824000
016d2cd0  add x1,x1,#0xfbe
016d2cd4  add x2,x2,#0x92c
016d2cd8  add x4,x4,#0x934
016d2cdc  mov x3,xzr
016d2ce0  mov x5,xzr
016d2ce4  bl 0x01824734
016d2ce8  adrp x1,0x5764000
016d2cec  adrp x2,0x1824000
016d2cf0  adrp x4,0x1824000
016d2cf4  add x1,x1,#0x5
016d2cf8  add x2,x2,#0x93c
016d2cfc  add x4,x4,#0x944
016d2d00  mov x3,xzr
016d2d04  mov x5,xzr
016d2d08  bl 0x01824734
016d2d0c  adrp x1,0x5764000
016d2d10  adrp x2,0x1824000
016d2d14  adrp x4,0x1824000
016d2d18  add x1,x1,#0xf
016d2d1c  add x2,x2,#0xb34
016d2d20  add x4,x4,#0xb3c
016d2d24  mov x3,xzr
016d2d28  mov x5,xzr
016d2d2c  bl 0x0182494c
016d2d30  adrp x1,0x5763000
016d2d34  adrp x2,0x1824000
016d2d38  adrp x4,0x1824000
016d2d3c  add x1,x1,#0xfc8
016d2d40  add x2,x2,#0xb44
016d2d44  add x4,x4,#0xb4c
016d2d48  mov x3,xzr
016d2d4c  mov x5,xzr
016d2d50  bl 0x0182494c
016d2d54  adrp x1,0x5763000
016d2d58  adrp x2,0x1824000
016d2d5c  adrp x4,0x1824000
016d2d60  add x1,x1,#0xfd0
016d2d64  add x2,x2,#0xb54
016d2d68  add x4,x4,#0xb5c
016d2d6c  mov x3,xzr
016d2d70  mov x5,xzr
016d2d74  bl 0x0182494c
016d2d78  adrp x1,0x5764000
016d2d7c  adrp x2,0x1824000
016d2d80  adrp x4,0x1824000
016d2d84  add x1,x1,#0x17
016d2d88  add x2,x2,#0xd4c
016d2d8c  add x4,x4,#0xd54
016d2d90  mov x3,xzr
016d2d94  mov x5,xzr
016d2d98  bl 0x01824b64
016d2d9c  mov x19,x0
016d2da0  ldr w8,[x19, #0x8]
016d2da4  ldr x0,[x19]
016d2da8  sub w8,w8,#0x3
016d2dac  str w8,[x19, #0x8]
016d2db0  orr w1,wzr,#0xfffffffc
016d2db4  bl 0x0124c4d0
016d2db8  ldr w8,[x19, #0x8]
016d2dbc  ldr x0,[x19]
016d2dc0  str wzr,[x19, #0x8]
016d2dc4  cmp w8,#0x1
016d2dc8  b.lt 0x016d2dd4
016d2dcc  mvn w1,w8
016d2dd0  bl 0x0124c4d0
016d2dd4  ldr w8,[sp, #0x18]
016d2dd8  cmp w8,#0x1
016d2ddc  b.lt 0x016d2dec
016d2de0  ldr x0,[sp, #0x10]
016d2de4  mvn w1,w8
016d2de8  bl 0x0124c4d0
016d2dec  ldr w8,[sp, #0x8]
016d2df0  cmp w8,#0x1
016d2df4  b.lt 0x016d2e04
016d2df8  ldr x0,[sp]
016d2dfc  mvn w1,w8
016d2e00  bl 0x0124c4d0
016d2e04  ldp x29,x30,[sp, #0x30]
016d2e08  ldr x19,[sp, #0x20]
016d2e0c  add sp,sp,#0x40
016d2e10  ret
