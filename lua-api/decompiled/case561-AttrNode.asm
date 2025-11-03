// ===== case561-AttrNode @ 016ff3fc =====
// existing function case561-AttrNode
016ff3fc  sub sp,sp,#0x50
016ff400  str x21,[sp, #0x20]
016ff404  stp x20,x19,[sp, #0x30]
016ff408  stp x29,x30,[sp, #0x40]
016ff40c  add x29,sp,#0x40
016ff410  adrp x1,0x174a000
016ff414  add x1,x1,#0x87c
016ff418  mov x19,x0
016ff41c  bl 0x0124ba40
016ff420  adrp x1,0x575d000
016ff424  add x1,x1,#0xa06
016ff428  mov x0,x19
016ff42c  str x19,[sp]
016ff430  bl 0x01251aa0
016ff434  mov w8,#0x1
016ff438  str w8,[sp, #0x8]
016ff43c  mov x0,sp
016ff440  bl 0x0174aa04
016ff444  adrp x1,0x5769000
016ff448  adrp x3,0x736d000
016ff44c  add x1,x1,#0x676
016ff450  add x3,x3,#0x101
016ff454  add x0,sp,#0x10
016ff458  mov x2,sp
016ff45c  bl 0x018cdbc8
016ff460  adrp x1,0x5769000
016ff464  adrp x2,0x18cd000
016ff468  adrp x4,0x18cd000
016ff46c  add x1,x1,#0x67f
016ff470  add x2,x2,#0xb28
016ff474  add x4,x4,#0xb30
016ff478  add x0,sp,#0x10
016ff47c  mov x3,xzr
016ff480  mov x5,xzr
016ff484  bl 0x018cd940
016ff488  mov x19,x0
016ff48c  ldr x0,[x19]
016ff490  mov w1,#0x10
016ff494  bl 0x0124cba0
016ff498  adrp x8,0x18cd000
016ff49c  dup v0.2D,xzr
016ff4a0  add x8,x8,#0xbc0
016ff4a4  mov v0.D[0x0],x8
016ff4a8  str q0,[x0]
016ff4ac  ldr x0,[x19]
016ff4b0  adrp x1,0x18ce000
016ff4b4  add x1,x1,#0x1ac
016ff4b8  mov w2,#0x1
016ff4bc  bl 0x0124ec90
016ff4c0  ldr x0,[x19]
016ff4c4  mov w1,#0xffffffff
016ff4c8  bl 0x0124c0c0
016ff4cc  ldr x20,[x19]
016ff4d0  orr w1,wzr,#0xfffffffb
016ff4d4  mov w2,#0x6e7
016ff4d8  mov x0,x20
016ff4dc  bl 0x0124a650
016ff4e0  orr w1,wzr,#0xfffffffe
016ff4e4  mov x0,x20
016ff4e8  bl 0x0124c0c0
016ff4ec  orr w1,wzr,#0xfffffffe
016ff4f0  mov x0,x20
016ff4f4  bl 0x0124e920
016ff4f8  mov w21,w0
016ff4fc  adrp x1,0x5769000
016ff500  add x1,x1,#0x68b
016ff504  mov x0,x20
016ff508  bl 0x0124f120
016ff50c  orr w1,wzr,#0xfffffffe
016ff510  mov w2,#0x1
016ff514  mov x0,x20
016ff518  bl 0x0124cfc0
016ff51c  mov x0,x20
016ff520  mov w1,w21
016ff524  bl 0x0124e060
016ff528  orr w1,wzr,#0xfffffffd
016ff52c  mov x0,x20
016ff530  bl 0x0124c4d0
016ff534  ldr x20,[x19]
016ff538  orr w1,wzr,#0xfffffffd
016ff53c  mov w2,#0x6e7
016ff540  mov x0,x20
016ff544  bl 0x0124a650
016ff548  orr w1,wzr,#0xfffffffe
016ff54c  mov x0,x20
016ff550  bl 0x0124c0c0
016ff554  orr w1,wzr,#0xfffffffe
016ff558  mov x0,x20
016ff55c  bl 0x0124e920
016ff560  mov w21,w0
016ff564  adrp x1,0x5769000
016ff568  add x1,x1,#0x68b
016ff56c  mov x0,x20
016ff570  bl 0x0124f120
016ff574  orr w1,wzr,#0xfffffffe
016ff578  mov w2,#0x1
016ff57c  mov x0,x20
016ff580  bl 0x0124cfc0
016ff584  mov x0,x20
016ff588  mov w1,w21
016ff58c  bl 0x0124e060
016ff590  orr w1,wzr,#0xfffffffd
016ff594  mov x0,x20
016ff598  bl 0x0124c4d0
016ff59c  ldr w8,[x19, #0x8]
016ff5a0  ldr x0,[x19]
016ff5a4  sub w8,w8,#0x3
016ff5a8  str w8,[x19, #0x8]
016ff5ac  orr w1,wzr,#0xfffffffc
016ff5b0  bl 0x0124c4d0
016ff5b4  ldr w8,[x19, #0x8]
016ff5b8  ldr x0,[x19]
016ff5bc  str wzr,[x19, #0x8]
016ff5c0  cmp w8,#0x1
016ff5c4  b.lt 0x016ff5d0
016ff5c8  mvn w1,w8
016ff5cc  bl 0x0124c4d0
016ff5d0  ldr w8,[sp, #0x18]
016ff5d4  cmp w8,#0x1
016ff5d8  b.lt 0x016ff5e8
016ff5dc  ldr x0,[sp, #0x10]
016ff5e0  mvn w1,w8
016ff5e4  bl 0x0124c4d0
016ff5e8  ldr w8,[sp, #0x8]
016ff5ec  cmp w8,#0x1
016ff5f0  b.lt 0x016ff600
016ff5f4  ldr x0,[sp]
016ff5f8  mvn w1,w8
016ff5fc  bl 0x0124c4d0
016ff600  ldp x29,x30,[sp, #0x40]
016ff604  ldp x20,x19,[sp, #0x30]
016ff608  ldr x21,[sp, #0x20]
016ff60c  add sp,sp,#0x50
016ff610  ret
