// ===== case274-RuinMonsterData @ 016ba350 =====
// existing function case274-RuinMonsterData
016ba350  sub sp,sp,#0x40
016ba354  str x19,[sp, #0x20]
016ba358  stp x29,x30,[sp, #0x30]
016ba35c  add x29,sp,#0x30
016ba360  adrp x1,0x174a000
016ba364  add x1,x1,#0x87c
016ba368  mov x19,x0
016ba36c  bl 0x0124ba40
016ba370  adrp x1,0x575d000
016ba374  add x1,x1,#0xa06
016ba378  mov x0,x19
016ba37c  str x19,[sp]
016ba380  bl 0x01251aa0
016ba384  mov w8,#0x1
016ba388  str w8,[sp, #0x8]
016ba38c  mov x0,sp
016ba390  bl 0x0174aa04
016ba394  adrp x1,0x5761000
016ba398  adrp x3,0x736d000
016ba39c  add x1,x1,#0x8e0
016ba3a0  add x3,x3,#0x101
016ba3a4  add x0,sp,#0x10
016ba3a8  mov x2,sp
016ba3ac  bl 0x017e50b0
016ba3b0  adrp x1,0x575e000
016ba3b4  adrp x2,0x17e5000
016ba3b8  adrp x4,0x17e5000
016ba3bc  add x1,x1,#0x38e
016ba3c0  add x2,x2,#0x90
016ba3c4  add x4,x4,#0x98
016ba3c8  add x0,sp,#0x10
016ba3cc  mov x3,xzr
016ba3d0  mov x5,xzr
016ba3d4  bl 0x017e4ea8
016ba3d8  adrp x1,0x5761000
016ba3dc  adrp x2,0x17e5000
016ba3e0  adrp x4,0x17e5000
016ba3e4  add x1,x1,#0x8f0
016ba3e8  add x2,x2,#0xa0
016ba3ec  add x4,x4,#0xa8
016ba3f0  mov x3,xzr
016ba3f4  mov x5,xzr
016ba3f8  bl 0x017e4ea8
016ba3fc  mov x19,x0
016ba400  ldr w8,[x19, #0x8]
016ba404  ldr x0,[x19]
016ba408  sub w8,w8,#0x3
016ba40c  str w8,[x19, #0x8]
016ba410  orr w1,wzr,#0xfffffffc
016ba414  bl 0x0124c4d0
016ba418  ldr w8,[x19, #0x8]
016ba41c  ldr x0,[x19]
016ba420  str wzr,[x19, #0x8]
016ba424  cmp w8,#0x1
016ba428  b.lt 0x016ba434
016ba42c  mvn w1,w8
016ba430  bl 0x0124c4d0
016ba434  ldr w8,[sp, #0x18]
016ba438  cmp w8,#0x1
016ba43c  b.lt 0x016ba44c
016ba440  ldr x0,[sp, #0x10]
016ba444  mvn w1,w8
016ba448  bl 0x0124c4d0
016ba44c  ldr w8,[sp, #0x8]
016ba450  cmp w8,#0x1
016ba454  b.lt 0x016ba464
016ba458  ldr x0,[sp]
016ba45c  mvn w1,w8
016ba460  bl 0x0124c4d0
016ba464  ldp x29,x30,[sp, #0x30]
016ba468  ldr x19,[sp, #0x20]
016ba46c  add sp,sp,#0x40
016ba470  ret
