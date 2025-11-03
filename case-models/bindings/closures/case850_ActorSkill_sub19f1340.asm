// ===== case850_ActorSkill_sub19f1340 @ 019f1340 (DecompileAt3: cleared stale instructions at entry) =====
019f1340  stp x20,x19,[sp, #-0x20]!
019f1344  stp x29,x30,[sp, #0x10]
019f1348  add x29,sp,#0x10
019f134c  mov w1,#0x1
019f1350  mov x19,x0
019f1354  bl 0x0124ff50
019f1358  cbz w0,0x019f1384
019f135c  adrp x2,0x736d000
019f1360  adrp x3,0x736d000
019f1364  add x2,x2,#0x208
019f1368  add x3,x3,#0x207
019f136c  mov w1,#0x1
019f1370  mov w4,#0x1
019f1374  mov x0,x19
019f1378  bl 0x0174b938
019f137c  ldr x20,[x0, #0x8]
019f1380  b 0x019f1388
019f1384  mov x20,xzr
019f1388  mov w1,#0xb9d7
019f138c  movk w1,#0xfff0, LSL #16
019f1390  mov x0,x19
019f1394  bl 0x0124e990
019f1398  mov x2,x0
019f139c  mov x0,x19
019f13a0  mov x1,x20
019f13a4  bl 0x019f13b4
019f13a8  ldp x29,x30,[sp, #0x10]
019f13ac  ldp x20,x19,[sp], #0x20
019f13b0  ret
