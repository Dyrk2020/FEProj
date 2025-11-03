// ===== case192-SkillGemStrengthenAssetObject @ 016ad978 =====
// existing function case192-SkillGemStrengthenAssetObject
016ad978  sub sp,sp,#0x40
016ad97c  str x19,[sp, #0x20]
016ad980  stp x29,x30,[sp, #0x30]
016ad984  add x29,sp,#0x30
016ad988  adrp x1,0x174a000
016ad98c  add x1,x1,#0x87c
016ad990  mov x19,x0
016ad994  bl 0x0124ba40
016ad998  adrp x1,0x575d000
016ad99c  add x1,x1,#0xa06
016ad9a0  mov x0,x19
016ad9a4  str x19,[sp]
016ad9a8  bl 0x01251aa0
016ad9ac  mov w8,#0x1
016ad9b0  str w8,[sp, #0x8]
016ad9b4  mov x0,sp
016ad9b8  bl 0x0174aa04
016ad9bc  adrp x1,0x5760000
016ad9c0  adrp x3,0x736d000
016ad9c4  add x1,x1,#0xb7c
016ad9c8  add x3,x3,#0x101
016ad9cc  add x0,sp,#0x10
016ad9d0  mov x2,sp
016ad9d4  bl 0x017b722c
016ad9d8  adrp x1,0x575d000
016ad9dc  adrp x2,0x17b7000
016ad9e0  adrp x4,0x17b7000
016ad9e4  add x1,x1,#0xa00
016ad9e8  add x2,x2,#0x21c
016ad9ec  add x4,x4,#0x224
016ad9f0  add x0,sp,#0x10
016ad9f4  mov x3,xzr
016ad9f8  mov x5,xzr
016ad9fc  bl 0x017b7034
016ada00  mov x19,x0
016ada04  ldr w8,[x19, #0x8]
016ada08  ldr x0,[x19]
016ada0c  sub w8,w8,#0x3
016ada10  str w8,[x19, #0x8]
016ada14  orr w1,wzr,#0xfffffffc
016ada18  bl 0x0124c4d0
016ada1c  ldr w8,[x19, #0x8]
016ada20  ldr x0,[x19]
016ada24  str wzr,[x19, #0x8]
016ada28  cmp w8,#0x1
016ada2c  b.lt 0x016ada38
016ada30  mvn w1,w8
016ada34  bl 0x0124c4d0
016ada38  ldr w8,[sp, #0x18]
016ada3c  cmp w8,#0x1
016ada40  b.lt 0x016ada50
016ada44  ldr x0,[sp, #0x10]
016ada48  mvn w1,w8
016ada4c  bl 0x0124c4d0
016ada50  ldr w8,[sp, #0x8]
016ada54  cmp w8,#0x1
016ada58  b.lt 0x016ada68
016ada5c  ldr x0,[sp]
016ada60  mvn w1,w8
016ada64  bl 0x0124c4d0
016ada68  ldp x29,x30,[sp, #0x30]
016ada6c  ldr x19,[sp, #0x20]
016ada70  add sp,sp,#0x40
016ada74  ret
