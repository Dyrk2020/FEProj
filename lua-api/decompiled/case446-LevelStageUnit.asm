// ===== case446-LevelStageUnit @ 016e91b8 =====
// existing function case446-LevelStageUnit
016e91b8  sub sp,sp,#0x40
016e91bc  str x19,[sp, #0x20]
016e91c0  stp x29,x30,[sp, #0x30]
016e91c4  add x29,sp,#0x30
016e91c8  adrp x1,0x174a000
016e91cc  add x1,x1,#0x87c
016e91d0  mov x19,x0
016e91d4  bl 0x0124ba40
016e91d8  adrp x1,0x575d000
016e91dc  add x1,x1,#0xa06
016e91e0  mov x0,x19
016e91e4  str x19,[sp]
016e91e8  bl 0x01251aa0
016e91ec  mov w8,#0x1
016e91f0  str w8,[sp, #0x8]
016e91f4  mov x0,sp
016e91f8  bl 0x0174aa04
016e91fc  adrp x1,0x5766000
016e9200  adrp x3,0x736d000
016e9204  add x1,x1,#0x9e3
016e9208  add x3,x3,#0x101
016e920c  add x0,sp,#0x10
016e9210  mov x2,sp
016e9214  bl 0x0186b928
016e9218  adrp x1,0x5766000
016e921c  adrp x2,0x186b000
016e9220  adrp x4,0x186b000
016e9224  add x1,x1,#0x9d9
016e9228  add x2,x2,#0x908
016e922c  add x4,x4,#0x910
016e9230  add x0,sp,#0x10
016e9234  mov x3,xzr
016e9238  mov x5,xzr
016e923c  bl 0x0186b720
016e9240  adrp x1,0x5766000
016e9244  adrp x2,0x186b000
016e9248  adrp x4,0x186b000
016e924c  add x1,x1,#0x9f2
016e9250  add x2,x2,#0x918
016e9254  add x4,x4,#0x920
016e9258  mov x3,xzr
016e925c  mov x5,xzr
016e9260  bl 0x0186b720
016e9264  mov x19,x0
016e9268  ldr w8,[x19, #0x8]
016e926c  ldr x0,[x19]
016e9270  sub w8,w8,#0x3
016e9274  str w8,[x19, #0x8]
016e9278  orr w1,wzr,#0xfffffffc
016e927c  bl 0x0124c4d0
016e9280  ldr w8,[x19, #0x8]
016e9284  ldr x0,[x19]
016e9288  str wzr,[x19, #0x8]
016e928c  cmp w8,#0x1
016e9290  b.lt 0x016e929c
016e9294  mvn w1,w8
016e9298  bl 0x0124c4d0
016e929c  ldr w8,[sp, #0x18]
016e92a0  cmp w8,#0x1
016e92a4  b.lt 0x016e92b4
016e92a8  ldr x0,[sp, #0x10]
016e92ac  mvn w1,w8
016e92b0  bl 0x0124c4d0
016e92b4  ldr w8,[sp, #0x8]
016e92b8  cmp w8,#0x1
016e92bc  b.lt 0x016e92cc
016e92c0  ldr x0,[sp]
016e92c4  mvn w1,w8
016e92c8  bl 0x0124c4d0
016e92cc  ldp x29,x30,[sp, #0x30]
016e92d0  ldr x19,[sp, #0x20]
016e92d4  add sp,sp,#0x40
016e92d8  ret
