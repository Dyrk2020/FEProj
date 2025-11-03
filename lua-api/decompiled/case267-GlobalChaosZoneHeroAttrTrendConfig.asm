// ===== case267-GlobalChaosZoneHeroAttrTrendConfig @ 016b963c =====
// existing function case267-GlobalChaosZoneHeroAttrTrendConfig
016b963c  sub sp,sp,#0x40
016b9640  str x19,[sp, #0x20]
016b9644  stp x29,x30,[sp, #0x30]
016b9648  add x29,sp,#0x30
016b964c  adrp x1,0x174a000
016b9650  add x1,x1,#0x87c
016b9654  mov x19,x0
016b9658  bl 0x0124ba40
016b965c  adrp x1,0x575d000
016b9660  add x1,x1,#0xa06
016b9664  mov x0,x19
016b9668  str x19,[sp]
016b966c  bl 0x01251aa0
016b9670  mov w8,#0x1
016b9674  str w8,[sp, #0x8]
016b9678  mov x0,sp
016b967c  bl 0x0174aa04
016b9680  adrp x1,0x5761000
016b9684  adrp x3,0x736d000
016b9688  add x1,x1,#0x7a5
016b968c  add x3,x3,#0x101
016b9690  add x0,sp,#0x10
016b9694  mov x2,sp
016b9698  bl 0x017e0e20
016b969c  adrp x1,0x575e000
016b96a0  adrp x2,0x17e0000
016b96a4  adrp x4,0x17e0000
016b96a8  add x1,x1,#0x398
016b96ac  add x2,x2,#0xe10
016b96b0  add x4,x4,#0xe18
016b96b4  add x0,sp,#0x10
016b96b8  mov x3,xzr
016b96bc  mov x5,xzr
016b96c0  bl 0x017e0c28
016b96c4  mov x19,x0
016b96c8  ldr w8,[x19, #0x8]
016b96cc  ldr x0,[x19]
016b96d0  sub w8,w8,#0x3
016b96d4  str w8,[x19, #0x8]
016b96d8  orr w1,wzr,#0xfffffffc
016b96dc  bl 0x0124c4d0
016b96e0  ldr w8,[x19, #0x8]
016b96e4  ldr x0,[x19]
016b96e8  str wzr,[x19, #0x8]
016b96ec  cmp w8,#0x1
016b96f0  b.lt 0x016b96fc
016b96f4  mvn w1,w8
016b96f8  bl 0x0124c4d0
016b96fc  ldr w8,[sp, #0x18]
016b9700  cmp w8,#0x1
016b9704  b.lt 0x016b9714
016b9708  ldr x0,[sp, #0x10]
016b970c  mvn w1,w8
016b9710  bl 0x0124c4d0
016b9714  ldr w8,[sp, #0x8]
016b9718  cmp w8,#0x1
016b971c  b.lt 0x016b972c
016b9720  ldr x0,[sp]
016b9724  mvn w1,w8
016b9728  bl 0x0124c4d0
016b972c  ldp x29,x30,[sp, #0x30]
016b9730  ldr x19,[sp, #0x20]
016b9734  add sp,sp,#0x40
016b9738  ret
