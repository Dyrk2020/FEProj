// ===== case248-LuaAssetObject @ 016b6970 =====
// existing function case248-LuaAssetObject
016b6970  sub sp,sp,#0x40
016b6974  str x19,[sp, #0x20]
016b6978  stp x29,x30,[sp, #0x30]
016b697c  add x29,sp,#0x30
016b6980  adrp x1,0x174a000
016b6984  add x1,x1,#0x87c
016b6988  mov x19,x0
016b698c  bl 0x0124ba40
016b6990  adrp x1,0x575d000
016b6994  add x1,x1,#0xa06
016b6998  mov x0,x19
016b699c  str x19,[sp]
016b69a0  bl 0x01251aa0
016b69a4  mov w8,#0x1
016b69a8  str w8,[sp, #0x8]
016b69ac  mov x0,sp
016b69b0  bl 0x0174aa04
016b69b4  adrp x1,0x5761000
016b69b8  adrp x3,0x736d000
016b69bc  add x1,x1,#0x42f
016b69c0  add x3,x3,#0x101
016b69c4  add x0,sp,#0x10
016b69c8  mov x2,sp
016b69cc  bl 0x017d5668
016b69d0  adrp x1,0x5761000
016b69d4  adrp x2,0x17d5000
016b69d8  adrp x4,0x17d5000
016b69dc  add x1,x1,#0x43e
016b69e0  add x2,x2,#0x658
016b69e4  add x4,x4,#0x660
016b69e8  add x0,sp,#0x10
016b69ec  mov x3,xzr
016b69f0  mov x5,xzr
016b69f4  bl 0x017d5470
016b69f8  mov x19,x0
016b69fc  ldr w8,[x19, #0x8]
016b6a00  ldr x0,[x19]
016b6a04  sub w8,w8,#0x3
016b6a08  str w8,[x19, #0x8]
016b6a0c  orr w1,wzr,#0xfffffffc
016b6a10  bl 0x0124c4d0
016b6a14  ldr w8,[x19, #0x8]
016b6a18  ldr x0,[x19]
016b6a1c  str wzr,[x19, #0x8]
016b6a20  cmp w8,#0x1
016b6a24  b.lt 0x016b6a30
016b6a28  mvn w1,w8
016b6a2c  bl 0x0124c4d0
016b6a30  ldr w8,[sp, #0x18]
016b6a34  cmp w8,#0x1
016b6a38  b.lt 0x016b6a48
016b6a3c  ldr x0,[sp, #0x10]
016b6a40  mvn w1,w8
016b6a44  bl 0x0124c4d0
016b6a48  ldr w8,[sp, #0x8]
016b6a4c  cmp w8,#0x1
016b6a50  b.lt 0x016b6a60
016b6a54  ldr x0,[sp]
016b6a58  mvn w1,w8
016b6a5c  bl 0x0124c4d0
016b6a60  ldp x29,x30,[sp, #0x30]
016b6a64  ldr x19,[sp, #0x20]
016b6a68  add sp,sp,#0x40
016b6a6c  ret
