// ===== case7-BattleActorDiscardEvacuateDepot @ 0168dd60 =====
// existing function case7-BattleActorDiscardEvacuateDepot
0168dd60  sub sp,sp,#0x40
0168dd64  str x19,[sp, #0x20]
0168dd68  stp x29,x30,[sp, #0x30]
0168dd6c  add x29,sp,#0x30
0168dd70  adrp x1,0x174a000
0168dd74  add x1,x1,#0x87c
0168dd78  mov x19,x0
0168dd7c  bl 0x0124ba40
0168dd80  adrp x1,0x575d000
0168dd84  add x1,x1,#0xa06
0168dd88  mov x0,x19
0168dd8c  str x19,[sp]
0168dd90  bl 0x01251aa0
0168dd94  mov w8,#0x1
0168dd98  str w8,[sp, #0x8]
0168dd9c  mov x0,sp
0168dda0  bl 0x0174aa04
0168dda4  adrp x1,0x575d000
0168dda8  adrp x3,0x736d000
0168ddac  add x1,x1,#0xcb9
0168ddb0  add x3,x3,#0x101
0168ddb4  add x0,sp,#0x10
0168ddb8  mov x2,sp
0168ddbc  bl 0x01753350
0168ddc0  adrp x1,0x575d000
0168ddc4  adrp x2,0x1753000
0168ddc8  adrp x4,0x1753000
0168ddcc  add x1,x1,#0xcd9
0168ddd0  add x2,x2,#0x340
0168ddd4  add x4,x4,#0x348
0168ddd8  add x0,sp,#0x10
0168dddc  mov x3,xzr
0168dde0  mov x5,xzr
0168dde4  bl 0x01753158
0168dde8  mov x19,x0
0168ddec  ldr w8,[x19, #0x8]
0168ddf0  ldr x0,[x19]
0168ddf4  sub w8,w8,#0x3
0168ddf8  str w8,[x19, #0x8]
0168ddfc  orr w1,wzr,#0xfffffffc
0168de00  bl 0x0124c4d0
0168de04  ldr w8,[x19, #0x8]
0168de08  ldr x0,[x19]
0168de0c  str wzr,[x19, #0x8]
0168de10  cmp w8,#0x1
0168de14  b.lt 0x0168de20
0168de18  mvn w1,w8
0168de1c  bl 0x0124c4d0
0168de20  ldr w8,[sp, #0x18]
0168de24  cmp w8,#0x1
0168de28  b.lt 0x0168de38
0168de2c  ldr x0,[sp, #0x10]
0168de30  mvn w1,w8
0168de34  bl 0x0124c4d0
0168de38  ldr w8,[sp, #0x8]
0168de3c  cmp w8,#0x1
0168de40  b.lt 0x0168de50
0168de44  ldr x0,[sp]
0168de48  mvn w1,w8
0168de4c  bl 0x0124c4d0
0168de50  ldp x29,x30,[sp, #0x30]
0168de54  ldr x19,[sp, #0x20]
0168de58  add sp,sp,#0x40
0168de5c  ret
