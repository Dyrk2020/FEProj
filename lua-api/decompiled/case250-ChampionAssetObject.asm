// ===== case250-ChampionAssetObject @ 016b6c20 =====
// existing function case250-ChampionAssetObject
016b6c20  sub sp,sp,#0x40
016b6c24  str x19,[sp, #0x20]
016b6c28  stp x29,x30,[sp, #0x30]
016b6c2c  add x29,sp,#0x30
016b6c30  adrp x1,0x174a000
016b6c34  add x1,x1,#0x87c
016b6c38  mov x19,x0
016b6c3c  bl 0x0124ba40
016b6c40  adrp x1,0x575d000
016b6c44  add x1,x1,#0xa06
016b6c48  mov x0,x19
016b6c4c  str x19,[sp]
016b6c50  bl 0x01251aa0
016b6c54  mov w8,#0x1
016b6c58  str w8,[sp, #0x8]
016b6c5c  mov x0,sp
016b6c60  bl 0x0174aa04
016b6c64  adrp x1,0x5774000
016b6c68  adrp x3,0x736d000
016b6c6c  add x1,x1,#0x1a
016b6c70  add x3,x3,#0x101
016b6c74  add x0,sp,#0x10
016b6c78  mov x2,sp
016b6c7c  bl 0x017d6620
016b6c80  adrp x1,0x575d000
016b6c84  adrp x2,0x17d6000
016b6c88  adrp x4,0x17d6000
016b6c8c  add x1,x1,#0xa00
016b6c90  add x2,x2,#0x610
016b6c94  add x4,x4,#0x618
016b6c98  add x0,sp,#0x10
016b6c9c  mov x3,xzr
016b6ca0  mov x5,xzr
016b6ca4  bl 0x017d6428
016b6ca8  mov x19,x0
016b6cac  ldr w8,[x19, #0x8]
016b6cb0  ldr x0,[x19]
016b6cb4  sub w8,w8,#0x3
016b6cb8  str w8,[x19, #0x8]
016b6cbc  orr w1,wzr,#0xfffffffc
016b6cc0  bl 0x0124c4d0
016b6cc4  ldr w8,[x19, #0x8]
016b6cc8  ldr x0,[x19]
016b6ccc  str wzr,[x19, #0x8]
016b6cd0  cmp w8,#0x1
016b6cd4  b.lt 0x016b6ce0
016b6cd8  mvn w1,w8
016b6cdc  bl 0x0124c4d0
016b6ce0  ldr w8,[sp, #0x18]
016b6ce4  cmp w8,#0x1
016b6ce8  b.lt 0x016b6cf8
016b6cec  ldr x0,[sp, #0x10]
016b6cf0  mvn w1,w8
016b6cf4  bl 0x0124c4d0
016b6cf8  ldr w8,[sp, #0x8]
016b6cfc  cmp w8,#0x1
016b6d00  b.lt 0x016b6d10
016b6d04  ldr x0,[sp]
016b6d08  mvn w1,w8
016b6d0c  bl 0x0124c4d0
016b6d10  ldp x29,x30,[sp, #0x30]
016b6d14  ldr x19,[sp, #0x20]
016b6d18  add sp,sp,#0x40
016b6d1c  ret
