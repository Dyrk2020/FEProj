// ===== case266-GlobalChaosZoneHeroAttrTrendConfig_AttrTrend @ 016b9424 =====
// existing function case266-GlobalChaosZoneHeroAttrTrendConfig_AttrTrend
016b9424  sub sp,sp,#0x40
016b9428  str x19,[sp, #0x20]
016b942c  stp x29,x30,[sp, #0x30]
016b9430  add x29,sp,#0x30
016b9434  adrp x1,0x174a000
016b9438  add x1,x1,#0x87c
016b943c  mov x19,x0
016b9440  bl 0x0124ba40
016b9444  adrp x1,0x575d000
016b9448  add x1,x1,#0xa06
016b944c  mov x0,x19
016b9450  str x19,[sp]
016b9454  bl 0x01251aa0
016b9458  mov w8,#0x1
016b945c  str w8,[sp, #0x8]
016b9460  mov x0,sp
016b9464  bl 0x0174aa04
016b9468  adrp x1,0x5761000
016b946c  adrp x3,0x736d000
016b9470  add x1,x1,#0x75b
016b9474  add x3,x3,#0x101
016b9478  add x0,sp,#0x10
016b947c  mov x2,sp
016b9480  bl 0x017e03f8
016b9484  adrp x1,0x5761000
016b9488  adrp x2,0x17e0000
016b948c  adrp x4,0x17e0000
016b9490  add x1,x1,#0x788
016b9494  add x2,x2,#0x1b0
016b9498  add x4,x4,#0x1b8
016b949c  add x0,sp,#0x10
016b94a0  mov x3,xzr
016b94a4  mov x5,xzr
016b94a8  bl 0x017dffc8
016b94ac  adrp x1,0x5761000
016b94b0  adrp x2,0x17e0000
016b94b4  adrp x4,0x17e0000
016b94b8  add x1,x1,#0x791
016b94bc  add x2,x2,#0x1c0
016b94c0  add x4,x4,#0x1c8
016b94c4  mov x3,xzr
016b94c8  mov x5,xzr
016b94cc  bl 0x017dffc8
016b94d0  adrp x1,0x5761000
016b94d4  adrp x2,0x17e0000
016b94d8  adrp x4,0x17e0000
016b94dc  add x1,x1,#0x79b
016b94e0  add x2,x2,#0x1d0
016b94e4  add x4,x4,#0x1d8
016b94e8  mov x3,xzr
016b94ec  mov x5,xzr
016b94f0  bl 0x017dffc8
016b94f4  adrp x1,0x595c000
016b94f8  adrp x2,0x17e0000
016b94fc  adrp x4,0x17e0000
016b9500  add x1,x1,#0xc12
016b9504  add x2,x2,#0x1e0
016b9508  add x4,x4,#0x1e8
016b950c  mov x3,xzr
016b9510  mov x5,xzr
016b9514  bl 0x017dffc8
016b9518  adrp x1,0x594c000
016b951c  adrp x2,0x17e0000
016b9520  adrp x4,0x17e0000
016b9524  add x1,x1,#0xf9b
016b9528  add x2,x2,#0x3d8
016b952c  add x4,x4,#0x3e0
016b9530  mov x3,xzr
016b9534  mov x5,xzr
016b9538  bl 0x017e01f0
016b953c  adrp x1,0x594d000
016b9540  adrp x2,0x17e0000
016b9544  adrp x4,0x17e0000
016b9548  add x1,x1,#0x3b0
016b954c  add x2,x2,#0x3e8
016b9550  add x4,x4,#0x3f0
016b9554  mov x3,xzr
016b9558  mov x5,xzr
016b955c  bl 0x017e01f0
016b9560  mov x19,x0
016b9564  ldr w8,[x19, #0x8]
016b9568  ldr x0,[x19]
016b956c  sub w8,w8,#0x3
016b9570  str w8,[x19, #0x8]
016b9574  orr w1,wzr,#0xfffffffc
016b9578  bl 0x0124c4d0
016b957c  ldr w8,[x19, #0x8]
016b9580  ldr x0,[x19]
016b9584  str wzr,[x19, #0x8]
016b9588  cmp w8,#0x1
016b958c  b.lt 0x016b9598
016b9590  mvn w1,w8
016b9594  bl 0x0124c4d0
016b9598  ldr w8,[sp, #0x18]
016b959c  cmp w8,#0x1
016b95a0  b.lt 0x016b95b0
016b95a4  ldr x0,[sp, #0x10]
016b95a8  mvn w1,w8
016b95ac  bl 0x0124c4d0
016b95b0  ldr w8,[sp, #0x8]
016b95b4  cmp w8,#0x1
016b95b8  b.lt 0x016b95c8
016b95bc  ldr x0,[sp]
016b95c0  mvn w1,w8
016b95c4  bl 0x0124c4d0
016b95c8  ldp x29,x30,[sp, #0x30]
016b95cc  ldr x19,[sp, #0x20]
016b95d0  add sp,sp,#0x40
016b95d4  ret
