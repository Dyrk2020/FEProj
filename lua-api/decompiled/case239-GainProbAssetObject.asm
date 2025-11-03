// ===== case239-GainProbAssetObject @ 016b5190 =====
// existing function case239-GainProbAssetObject
016b5190  sub sp,sp,#0x40
016b5194  str x19,[sp, #0x20]
016b5198  stp x29,x30,[sp, #0x30]
016b519c  add x29,sp,#0x30
016b51a0  adrp x1,0x174a000
016b51a4  add x1,x1,#0x87c
016b51a8  mov x19,x0
016b51ac  bl 0x0124ba40
016b51b0  adrp x1,0x575d000
016b51b4  add x1,x1,#0xa06
016b51b8  mov x0,x19
016b51bc  str x19,[sp]
016b51c0  bl 0x01251aa0
016b51c4  mov w8,#0x1
016b51c8  str w8,[sp, #0x8]
016b51cc  mov x0,sp
016b51d0  bl 0x0174aa04
016b51d4  adrp x1,0x5761000
016b51d8  adrp x3,0x736d000
016b51dc  add x1,x1,#0x23d
016b51e0  add x3,x3,#0x101
016b51e4  add x0,sp,#0x10
016b51e8  mov x2,sp
016b51ec  bl 0x017ced40
016b51f0  adrp x1,0x575d000
016b51f4  adrp x2,0x17ce000
016b51f8  adrp x4,0x17ce000
016b51fc  add x1,x1,#0xa00
016b5200  add x2,x2,#0xd30
016b5204  add x4,x4,#0xd38
016b5208  add x0,sp,#0x10
016b520c  mov x3,xzr
016b5210  mov x5,xzr
016b5214  bl 0x017ceb48
016b5218  mov x19,x0
016b521c  ldr w8,[x19, #0x8]
016b5220  ldr x0,[x19]
016b5224  sub w8,w8,#0x3
016b5228  str w8,[x19, #0x8]
016b522c  orr w1,wzr,#0xfffffffc
016b5230  bl 0x0124c4d0
016b5234  ldr w8,[x19, #0x8]
016b5238  ldr x0,[x19]
016b523c  str wzr,[x19, #0x8]
016b5240  cmp w8,#0x1
016b5244  b.lt 0x016b5250
016b5248  mvn w1,w8
016b524c  bl 0x0124c4d0
016b5250  ldr w8,[sp, #0x18]
016b5254  cmp w8,#0x1
016b5258  b.lt 0x016b5268
016b525c  ldr x0,[sp, #0x10]
016b5260  mvn w1,w8
016b5264  bl 0x0124c4d0
016b5268  ldr w8,[sp, #0x8]
016b526c  cmp w8,#0x1
016b5270  b.lt 0x016b5280
016b5274  ldr x0,[sp]
016b5278  mvn w1,w8
016b527c  bl 0x0124c4d0
016b5280  ldp x29,x30,[sp, #0x30]
016b5284  ldr x19,[sp, #0x20]
016b5288  add sp,sp,#0x40
016b528c  ret
