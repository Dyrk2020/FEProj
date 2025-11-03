// ===== case551-GemSlotSkillInfo @ 016fcdfc =====
// existing function case551-GemSlotSkillInfo
016fcdfc  sub sp,sp,#0x40
016fce00  str x19,[sp, #0x20]
016fce04  stp x29,x30,[sp, #0x30]
016fce08  add x29,sp,#0x30
016fce0c  adrp x1,0x174a000
016fce10  add x1,x1,#0x87c
016fce14  mov x19,x0
016fce18  bl 0x0124ba40
016fce1c  adrp x1,0x575d000
016fce20  add x1,x1,#0xa06
016fce24  mov x0,x19
016fce28  str x19,[sp]
016fce2c  bl 0x01251aa0
016fce30  mov w8,#0x1
016fce34  str w8,[sp, #0x8]
016fce38  mov x0,sp
016fce3c  bl 0x0174aa04
016fce40  adrp x1,0x5769000
016fce44  adrp x3,0x736d000
016fce48  add x1,x1,#0x37f
016fce4c  add x3,x3,#0x101
016fce50  add x0,sp,#0x10
016fce54  mov x2,sp
016fce58  bl 0x018c3768
016fce5c  adrp x1,0x5760000
016fce60  adrp x2,0x18c3000
016fce64  adrp x4,0x18c3000
016fce68  add x1,x1,#0xb65
016fce6c  add x2,x2,#0x744
016fce70  add x4,x4,#0x74c
016fce74  add x0,sp,#0x10
016fce78  mov x3,xzr
016fce7c  mov x5,xzr
016fce80  bl 0x018c355c
016fce84  mov x19,x0
016fce88  ldr w8,[x19, #0x8]
016fce8c  ldr x0,[x19]
016fce90  sub w8,w8,#0x3
016fce94  str w8,[x19, #0x8]
016fce98  orr w1,wzr,#0xfffffffc
016fce9c  bl 0x0124c4d0
016fcea0  ldr w8,[x19, #0x8]
016fcea4  ldr x0,[x19]
016fcea8  str wzr,[x19, #0x8]
016fceac  cmp w8,#0x1
016fceb0  b.lt 0x016fcebc
016fceb4  mvn w1,w8
016fceb8  bl 0x0124c4d0
016fcebc  ldr w8,[sp, #0x18]
016fcec0  cmp w8,#0x1
016fcec4  b.lt 0x016fced4
016fcec8  ldr x0,[sp, #0x10]
016fcecc  mvn w1,w8
016fced0  bl 0x0124c4d0
016fced4  ldr w8,[sp, #0x8]
016fced8  cmp w8,#0x1
016fcedc  b.lt 0x016fceec
016fcee0  ldr x0,[sp]
016fcee4  mvn w1,w8
016fcee8  bl 0x0124c4d0
016fceec  ldp x29,x30,[sp, #0x30]
016fcef0  ldr x19,[sp, #0x20]
016fcef4  add sp,sp,#0x40
016fcef8  ret
