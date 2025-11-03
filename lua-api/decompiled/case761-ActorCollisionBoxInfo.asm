// ===== case761-ActorCollisionBoxInfo @ 0172c4e8 =====
// existing function case761-ActorCollisionBoxInfo
0172c4e8  sub sp,sp,#0x40
0172c4ec  str x19,[sp, #0x20]
0172c4f0  stp x29,x30,[sp, #0x30]
0172c4f4  add x29,sp,#0x30
0172c4f8  adrp x1,0x174a000
0172c4fc  add x1,x1,#0x87c
0172c500  mov x19,x0
0172c504  bl 0x0124ba40
0172c508  adrp x1,0x575d000
0172c50c  add x1,x1,#0xa06
0172c510  mov x0,x19
0172c514  str x19,[sp]
0172c518  bl 0x01251aa0
0172c51c  mov w8,#0x1
0172c520  str w8,[sp, #0x8]
0172c524  mov x0,sp
0172c528  bl 0x0174aa04
0172c52c  adrp x1,0x5770000
0172c530  adrp x3,0x736d000
0172c534  add x1,x1,#0xdd4
0172c538  add x3,x3,#0x101
0172c53c  add x0,sp,#0x10
0172c540  mov x2,sp
0172c544  bl 0x019911f4
0172c548  adrp x1,0x576c000
0172c54c  adrp x2,0x1990000
0172c550  adrp x4,0x1990000
0172c554  add x1,x1,#0xe8d
0172c558  add x2,x2,#0xf44
0172c55c  add x4,x4,#0xf4c
0172c560  add x0,sp,#0x10
0172c564  mov x3,xzr
0172c568  mov x5,xzr
0172c56c  bl 0x01990d5c
0172c570  adrp x1,0x5770000
0172c574  adrp x2,0x1991000
0172c578  adrp x4,0x1991000
0172c57c  add x1,x1,#0xdea
0172c580  add x2,x2,#0x13c
0172c584  add x4,x4,#0x144
0172c588  mov x3,xzr
0172c58c  mov x5,xzr
0172c590  bl 0x01990f54
0172c594  adrp x1,0x5770000
0172c598  adrp x2,0x1991000
0172c59c  adrp x4,0x1991000
0172c5a0  add x1,x1,#0xdf7
0172c5a4  add x2,x2,#0x14c
0172c5a8  add x4,x4,#0x154
0172c5ac  mov x3,xzr
0172c5b0  mov x5,xzr
0172c5b4  bl 0x01990f54
0172c5b8  adrp x1,0x5770000
0172c5bc  adrp x2,0x1991000
0172c5c0  adrp x4,0x1991000
0172c5c4  add x1,x1,#0xe03
0172c5c8  add x2,x2,#0x15c
0172c5cc  add x4,x4,#0x164
0172c5d0  mov x3,xzr
0172c5d4  mov x5,xzr
0172c5d8  bl 0x01990f54
0172c5dc  mov x19,x0
0172c5e0  ldr w8,[x19, #0x8]
0172c5e4  ldr x0,[x19]
0172c5e8  sub w8,w8,#0x3
0172c5ec  str w8,[x19, #0x8]
0172c5f0  orr w1,wzr,#0xfffffffc
0172c5f4  bl 0x0124c4d0
0172c5f8  ldr w8,[x19, #0x8]
0172c5fc  ldr x0,[x19]
0172c600  str wzr,[x19, #0x8]
0172c604  cmp w8,#0x1
0172c608  b.lt 0x0172c614
0172c60c  mvn w1,w8
0172c610  bl 0x0124c4d0
0172c614  ldr w8,[sp, #0x18]
0172c618  cmp w8,#0x1
0172c61c  b.lt 0x0172c62c
0172c620  ldr x0,[sp, #0x10]
0172c624  mvn w1,w8
0172c628  bl 0x0124c4d0
0172c62c  ldr w8,[sp, #0x8]
0172c630  cmp w8,#0x1
0172c634  b.lt 0x0172c644
0172c638  ldr x0,[sp]
0172c63c  mvn w1,w8
0172c640  bl 0x0124c4d0
0172c644  ldp x29,x30,[sp, #0x30]
0172c648  ldr x19,[sp, #0x20]
0172c64c  add sp,sp,#0x40
0172c650  ret
