// ===== case300-AIHeroOrientation @ 016bedac =====
// existing function case300-AIHeroOrientation
016bedac  sub sp,sp,#0x40
016bedb0  str x19,[sp, #0x20]
016bedb4  stp x29,x30,[sp, #0x30]
016bedb8  add x29,sp,#0x30
016bedbc  adrp x1,0x174a000
016bedc0  add x1,x1,#0x87c
016bedc4  mov x19,x0
016bedc8  bl 0x0124ba40
016bedcc  adrp x1,0x575d000
016bedd0  add x1,x1,#0xa06
016bedd4  mov x0,x19
016bedd8  str x19,[sp]
016beddc  bl 0x01251aa0
016bede0  mov w8,#0x1
016bede4  str w8,[sp, #0x8]
016bede8  mov x0,sp
016bedec  bl 0x0174aa04
016bedf0  adrp x1,0x5762000
016bedf4  adrp x3,0x736d000
016bedf8  add x1,x1,#0x6cc
016bedfc  add x3,x3,#0x101
016bee00  add x0,sp,#0x10
016bee04  mov x2,sp
016bee08  bl 0x017f5a0c
016bee0c  adrp x1,0x594b000
016bee10  adrp x2,0x17f5000
016bee14  adrp x4,0x17f5000
016bee18  add x1,x1,#0x6c4
016bee1c  add x2,x2,#0x9ec
016bee20  add x4,x4,#0x9f4
016bee24  add x0,sp,#0x10
016bee28  mov x3,xzr
016bee2c  mov x5,xzr
016bee30  bl 0x017f5804
016bee34  adrp x1,0x5762000
016bee38  adrp x2,0x17f5000
016bee3c  adrp x4,0x17f5000
016bee40  add x1,x1,#0x6de
016bee44  add x2,x2,#0x9fc
016bee48  add x4,x4,#0xa04
016bee4c  mov x3,xzr
016bee50  mov x5,xzr
016bee54  bl 0x017f5804
016bee58  mov x19,x0
016bee5c  ldr w8,[x19, #0x8]
016bee60  ldr x0,[x19]
016bee64  sub w8,w8,#0x3
016bee68  str w8,[x19, #0x8]
016bee6c  orr w1,wzr,#0xfffffffc
016bee70  bl 0x0124c4d0
016bee74  ldr w8,[x19, #0x8]
016bee78  ldr x0,[x19]
016bee7c  str wzr,[x19, #0x8]
016bee80  cmp w8,#0x1
016bee84  b.lt 0x016bee90
016bee88  mvn w1,w8
016bee8c  bl 0x0124c4d0
016bee90  ldr w8,[sp, #0x18]
016bee94  cmp w8,#0x1
016bee98  b.lt 0x016beea8
016bee9c  ldr x0,[sp, #0x10]
016beea0  mvn w1,w8
016beea4  bl 0x0124c4d0
016beea8  ldr w8,[sp, #0x8]
016beeac  cmp w8,#0x1
016beeb0  b.lt 0x016beec0
016beeb4  ldr x0,[sp]
016beeb8  mvn w1,w8
016beebc  bl 0x0124c4d0
016beec0  ldp x29,x30,[sp, #0x30]
016beec4  ldr x19,[sp, #0x20]
016beec8  add sp,sp,#0x40
016beecc  ret
