// ===== case527-ActorSpellShieldMgr @ 016f8c74 =====
// existing function case527-ActorSpellShieldMgr
016f8c74  sub sp,sp,#0x40
016f8c78  str x19,[sp, #0x20]
016f8c7c  stp x29,x30,[sp, #0x30]
016f8c80  add x29,sp,#0x30
016f8c84  adrp x1,0x174a000
016f8c88  add x1,x1,#0x87c
016f8c8c  mov x19,x0
016f8c90  bl 0x0124ba40
016f8c94  adrp x1,0x575d000
016f8c98  add x1,x1,#0xa06
016f8c9c  mov x0,x19
016f8ca0  str x19,[sp]
016f8ca4  bl 0x01251aa0
016f8ca8  mov w8,#0x1
016f8cac  str w8,[sp, #0x8]
016f8cb0  mov x0,sp
016f8cb4  bl 0x0174aa04
016f8cb8  adrp x1,0x5768000
016f8cbc  adrp x3,0x736d000
016f8cc0  add x1,x1,#0xa82
016f8cc4  add x3,x3,#0x101
016f8cc8  add x0,sp,#0x10
016f8ccc  mov x2,sp
016f8cd0  bl 0x018ae78c
016f8cd4  adrp x1,0x5768000
016f8cd8  adrp x2,0x18ae000
016f8cdc  adrp x4,0x18ae000
016f8ce0  add x1,x1,#0xa96
016f8ce4  add x2,x2,#0x758
016f8ce8  add x4,x4,#0x760
016f8cec  add x0,sp,#0x10
016f8cf0  mov x3,xzr
016f8cf4  mov x5,xzr
016f8cf8  bl 0x018ae570
016f8cfc  adrp x1,0x5768000
016f8d00  adrp x2,0x18ae000
016f8d04  adrp x4,0x18ae000
016f8d08  add x1,x1,#0xaab
016f8d0c  add x2,x2,#0x77c
016f8d10  add x4,x4,#0x784
016f8d14  mov x3,xzr
016f8d18  mov x5,xzr
016f8d1c  bl 0x018ae570
016f8d20  mov x19,x0
016f8d24  ldr w8,[x19, #0x8]
016f8d28  ldr x0,[x19]
016f8d2c  sub w8,w8,#0x3
016f8d30  str w8,[x19, #0x8]
016f8d34  orr w1,wzr,#0xfffffffc
016f8d38  bl 0x0124c4d0
016f8d3c  ldr w8,[x19, #0x8]
016f8d40  ldr x0,[x19]
016f8d44  str wzr,[x19, #0x8]
016f8d48  cmp w8,#0x1
016f8d4c  b.lt 0x016f8d58
016f8d50  mvn w1,w8
016f8d54  bl 0x0124c4d0
016f8d58  ldr w8,[sp, #0x18]
016f8d5c  cmp w8,#0x1
016f8d60  b.lt 0x016f8d70
016f8d64  ldr x0,[sp, #0x10]
016f8d68  mvn w1,w8
016f8d6c  bl 0x0124c4d0
016f8d70  ldr w8,[sp, #0x8]
016f8d74  cmp w8,#0x1
016f8d78  b.lt 0x016f8d88
016f8d7c  ldr x0,[sp]
016f8d80  mvn w1,w8
016f8d84  bl 0x0124c4d0
016f8d88  ldp x29,x30,[sp, #0x30]
016f8d8c  ldr x19,[sp, #0x20]
016f8d90  add sp,sp,#0x40
016f8d94  ret
