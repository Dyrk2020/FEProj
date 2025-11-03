// ===== case210-SkillStrengthenCountQualityConfig @ 016b0944 =====
// existing function case210-SkillStrengthenCountQualityConfig
016b0944  sub sp,sp,#0x40
016b0948  str x19,[sp, #0x20]
016b094c  stp x29,x30,[sp, #0x30]
016b0950  add x29,sp,#0x30
016b0954  adrp x1,0x174a000
016b0958  add x1,x1,#0x87c
016b095c  mov x19,x0
016b0960  bl 0x0124ba40
016b0964  adrp x1,0x575d000
016b0968  add x1,x1,#0xa06
016b096c  mov x0,x19
016b0970  str x19,[sp]
016b0974  bl 0x01251aa0
016b0978  mov w8,#0x1
016b097c  str w8,[sp, #0x8]
016b0980  mov x0,sp
016b0984  bl 0x0174aa04
016b0988  adrp x1,0x5760000
016b098c  adrp x3,0x736d000
016b0990  add x1,x1,#0xece
016b0994  add x3,x3,#0x101
016b0998  add x0,sp,#0x10
016b099c  mov x2,sp
016b09a0  bl 0x017bfd70
016b09a4  adrp x1,0x5760000
016b09a8  adrp x2,0x17bf000
016b09ac  adrp x4,0x17bf000
016b09b0  add x1,x1,#0xef0
016b09b4  add x2,x2,#0xd30
016b09b8  add x4,x4,#0xd38
016b09bc  add x0,sp,#0x10
016b09c0  mov x3,xzr
016b09c4  mov x5,xzr
016b09c8  bl 0x017bfb48
016b09cc  adrp x1,0x5760000
016b09d0  adrp x2,0x17bf000
016b09d4  adrp x4,0x17bf000
016b09d8  add x1,x1,#0xf02
016b09dc  add x2,x2,#0xd40
016b09e0  add x4,x4,#0xd48
016b09e4  mov x3,xzr
016b09e8  mov x5,xzr
016b09ec  bl 0x017bfb48
016b09f0  adrp x1,0x5760000
016b09f4  adrp x2,0x17bf000
016b09f8  adrp x4,0x17bf000
016b09fc  add x1,x1,#0xf10
016b0a00  add x2,x2,#0xd50
016b0a04  add x4,x4,#0xd58
016b0a08  mov x3,xzr
016b0a0c  mov x5,xzr
016b0a10  bl 0x017bfb48
016b0a14  adrp x1,0x5760000
016b0a18  adrp x2,0x17bf000
016b0a1c  adrp x4,0x17bf000
016b0a20  add x1,x1,#0xf1d
016b0a24  add x2,x2,#0xd60
016b0a28  add x4,x4,#0xd68
016b0a2c  mov x3,xzr
016b0a30  mov x5,xzr
016b0a34  bl 0x017bfb48
016b0a38  mov x19,x0
016b0a3c  ldr w8,[x19, #0x8]
016b0a40  ldr x0,[x19]
016b0a44  sub w8,w8,#0x3
016b0a48  str w8,[x19, #0x8]
016b0a4c  orr w1,wzr,#0xfffffffc
016b0a50  bl 0x0124c4d0
016b0a54  ldr w8,[x19, #0x8]
016b0a58  ldr x0,[x19]
016b0a5c  str wzr,[x19, #0x8]
016b0a60  cmp w8,#0x1
016b0a64  b.lt 0x016b0a70
016b0a68  mvn w1,w8
016b0a6c  bl 0x0124c4d0
016b0a70  ldr w8,[sp, #0x18]
016b0a74  cmp w8,#0x1
016b0a78  b.lt 0x016b0a88
016b0a7c  ldr x0,[sp, #0x10]
016b0a80  mvn w1,w8
016b0a84  bl 0x0124c4d0
016b0a88  ldr w8,[sp, #0x8]
016b0a8c  cmp w8,#0x1
016b0a90  b.lt 0x016b0aa0
016b0a94  ldr x0,[sp]
016b0a98  mvn w1,w8
016b0a9c  bl 0x0124c4d0
016b0aa0  ldp x29,x30,[sp, #0x30]
016b0aa4  ldr x19,[sp, #0x20]
016b0aa8  add sp,sp,#0x40
016b0aac  ret
