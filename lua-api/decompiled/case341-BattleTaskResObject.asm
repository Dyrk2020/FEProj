// ===== case341-BattleTaskResObject @ 016cefcc =====
// existing function case341-BattleTaskResObject
016cefcc  sub sp,sp,#0x40
016cefd0  str x19,[sp, #0x20]
016cefd4  stp x29,x30,[sp, #0x30]
016cefd8  add x29,sp,#0x30
016cefdc  adrp x1,0x174a000
016cefe0  add x1,x1,#0x87c
016cefe4  mov x19,x0
016cefe8  bl 0x0124ba40
016cefec  adrp x1,0x575d000
016ceff0  add x1,x1,#0xa06
016ceff4  mov x0,x19
016ceff8  str x19,[sp]
016ceffc  bl 0x01251aa0
016cf000  mov w8,#0x1
016cf004  str w8,[sp, #0x8]
016cf008  mov x0,sp
016cf00c  bl 0x0174aa04
016cf010  adrp x1,0x5763000
016cf014  adrp x3,0x736d000
016cf018  add x1,x1,#0x9a5
016cf01c  add x3,x3,#0x101
016cf020  add x0,sp,#0x10
016cf024  mov x2,sp
016cf028  bl 0x01814208
016cf02c  adrp x1,0x5763000
016cf030  adrp x2,0x1814000
016cf034  adrp x4,0x1814000
016cf038  add x1,x1,#0x9b9
016cf03c  add x2,x2,#0x1c8
016cf040  add x4,x4,#0x1d0
016cf044  add x0,sp,#0x10
016cf048  mov x3,xzr
016cf04c  mov x5,xzr
016cf050  bl 0x01813fe0
016cf054  adrp x1,0x5760000
016cf058  adrp x2,0x1814000
016cf05c  adrp x4,0x1814000
016cf060  add x1,x1,#0x84c
016cf064  add x2,x2,#0x1d8
016cf068  add x4,x4,#0x1e0
016cf06c  mov x3,xzr
016cf070  mov x5,xzr
016cf074  bl 0x01813fe0
016cf078  adrp x1,0x5760000
016cf07c  adrp x2,0x1814000
016cf080  adrp x4,0x1814000
016cf084  add x1,x1,#0x854
016cf088  add x2,x2,#0x1e8
016cf08c  add x4,x4,#0x1f0
016cf090  mov x3,xzr
016cf094  mov x5,xzr
016cf098  bl 0x01813fe0
016cf09c  adrp x1,0x5763000
016cf0a0  adrp x2,0x1814000
016cf0a4  adrp x4,0x1814000
016cf0a8  add x1,x1,#0x9c8
016cf0ac  add x2,x2,#0x1f8
016cf0b0  add x4,x4,#0x200
016cf0b4  mov x3,xzr
016cf0b8  mov x5,xzr
016cf0bc  bl 0x01813fe0
016cf0c0  mov x19,x0
016cf0c4  ldr w8,[x19, #0x8]
016cf0c8  ldr x0,[x19]
016cf0cc  sub w8,w8,#0x3
016cf0d0  str w8,[x19, #0x8]
016cf0d4  orr w1,wzr,#0xfffffffc
016cf0d8  bl 0x0124c4d0
016cf0dc  ldr w8,[x19, #0x8]
016cf0e0  ldr x0,[x19]
016cf0e4  str wzr,[x19, #0x8]
016cf0e8  cmp w8,#0x1
016cf0ec  b.lt 0x016cf0f8
016cf0f0  mvn w1,w8
016cf0f4  bl 0x0124c4d0
016cf0f8  ldr w8,[sp, #0x18]
016cf0fc  cmp w8,#0x1
016cf100  b.lt 0x016cf110
016cf104  ldr x0,[sp, #0x10]
016cf108  mvn w1,w8
016cf10c  bl 0x0124c4d0
016cf110  ldr w8,[sp, #0x8]
016cf114  cmp w8,#0x1
016cf118  b.lt 0x016cf128
016cf11c  ldr x0,[sp]
016cf120  mvn w1,w8
016cf124  bl 0x0124c4d0
016cf128  ldp x29,x30,[sp, #0x30]
016cf12c  ldr x19,[sp, #0x20]
016cf130  add sp,sp,#0x40
016cf134  ret
