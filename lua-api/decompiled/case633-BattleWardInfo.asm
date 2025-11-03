// ===== case633-BattleWardInfo @ 0170eeac =====
// existing function case633-BattleWardInfo
0170eeac  sub sp,sp,#0x40
0170eeb0  str x19,[sp, #0x20]
0170eeb4  stp x29,x30,[sp, #0x30]
0170eeb8  add x29,sp,#0x30
0170eebc  adrp x1,0x174a000
0170eec0  add x1,x1,#0x87c
0170eec4  mov x19,x0
0170eec8  bl 0x0124ba40
0170eecc  adrp x1,0x575d000
0170eed0  add x1,x1,#0xa06
0170eed4  mov x0,x19
0170eed8  str x19,[sp]
0170eedc  bl 0x01251aa0
0170eee0  mov w8,#0x1
0170eee4  str w8,[sp, #0x8]
0170eee8  mov x0,sp
0170eeec  bl 0x0174aa04
0170eef0  adrp x1,0x576a000
0170eef4  adrp x3,0x736d000
0170eef8  add x1,x1,#0xb37
0170eefc  add x3,x3,#0x101
0170ef00  add x0,sp,#0x10
0170ef04  mov x2,sp
0170ef08  bl 0x0190e944
0170ef0c  adrp x1,0x575d000
0170ef10  adrp x2,0x190e000
0170ef14  adrp x4,0x190e000
0170ef18  add x1,x1,#0xe39
0170ef1c  add x2,x2,#0x4e4
0170ef20  add x4,x4,#0x4ec
0170ef24  add x0,sp,#0x10
0170ef28  mov x3,xzr
0170ef2c  mov x5,xzr
0170ef30  bl 0x0190e2fc
0170ef34  adrp x1,0x5764000
0170ef38  adrp x2,0x190e000
0170ef3c  adrp x4,0x190e000
0170ef40  add x1,x1,#0xe69
0170ef44  add x2,x2,#0x4f4
0170ef48  add x4,x4,#0x4fc
0170ef4c  mov x3,xzr
0170ef50  mov x5,xzr
0170ef54  bl 0x0190e2fc
0170ef58  adrp x1,0x5764000
0170ef5c  adrp x2,0x190e000
0170ef60  adrp x4,0x190e000
0170ef64  add x1,x1,#0xe7a
0170ef68  add x2,x2,#0x504
0170ef6c  add x4,x4,#0x50c
0170ef70  mov x3,xzr
0170ef74  mov x5,xzr
0170ef78  bl 0x0190e2fc
0170ef7c  adrp x1,0x5764000
0170ef80  adrp x2,0x190e000
0170ef84  adrp x4,0x190e000
0170ef88  add x1,x1,#0xe8c
0170ef8c  add x2,x2,#0x514
0170ef90  add x4,x4,#0x51c
0170ef94  mov x3,xzr
0170ef98  mov x5,xzr
0170ef9c  bl 0x0190e2fc
0170efa0  adrp x1,0x575f000
0170efa4  adrp x2,0x190e000
0170efa8  adrp x4,0x190e000
0170efac  add x1,x1,#0x8f
0170efb0  add x2,x2,#0x524
0170efb4  add x4,x4,#0x52c
0170efb8  mov x3,xzr
0170efbc  mov x5,xzr
0170efc0  bl 0x0190e2fc
0170efc4  adrp x1,0x5764000
0170efc8  adrp x2,0x190e000
0170efcc  adrp x4,0x190e000
0170efd0  add x1,x1,#0xe96
0170efd4  add x2,x2,#0x71c
0170efd8  add x4,x4,#0x730
0170efdc  mov x3,xzr
0170efe0  mov x5,xzr
0170efe4  bl 0x0190e534
0170efe8  adrp x1,0x576a000
0170efec  adrp x2,0x190e000
0170eff0  adrp x4,0x190e000
0170eff4  add x1,x1,#0xb46
0170eff8  add x2,x2,#0x934
0170effc  add x4,x4,#0x93c
0170f000  mov x3,xzr
0170f004  mov x5,xzr
0170f008  bl 0x0190e74c
0170f00c  mov x19,x0
0170f010  ldr w8,[x19, #0x8]
0170f014  ldr x0,[x19]
0170f018  sub w8,w8,#0x3
0170f01c  str w8,[x19, #0x8]
0170f020  orr w1,wzr,#0xfffffffc
0170f024  bl 0x0124c4d0
0170f028  ldr w8,[x19, #0x8]
0170f02c  ldr x0,[x19]
0170f030  str wzr,[x19, #0x8]
0170f034  cmp w8,#0x1
0170f038  b.lt 0x0170f044
0170f03c  mvn w1,w8
0170f040  bl 0x0124c4d0
0170f044  ldr w8,[sp, #0x18]
0170f048  cmp w8,#0x1
0170f04c  b.lt 0x0170f05c
0170f050  ldr x0,[sp, #0x10]
0170f054  mvn w1,w8
0170f058  bl 0x0124c4d0
0170f05c  ldr w8,[sp, #0x8]
0170f060  cmp w8,#0x1
0170f064  b.lt 0x0170f074
0170f068  ldr x0,[sp]
0170f06c  mvn w1,w8
0170f070  bl 0x0124c4d0
0170f074  ldp x29,x30,[sp, #0x30]
0170f078  ldr x19,[sp, #0x20]
0170f07c  add sp,sp,#0x40
0170f080  ret
