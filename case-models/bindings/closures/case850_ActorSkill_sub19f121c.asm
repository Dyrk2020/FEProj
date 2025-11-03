// ===== case850_ActorSkill_sub19f121c @ 019f121c (DecompileAt3: cleared stale instructions at entry) =====
019f121c  stp x20,x19,[sp, #-0x20]!
019f1220  stp x29,x30,[sp, #0x10]
019f1224  add x29,sp,#0x10
019f1228  mov w1,#0x1
019f122c  mov x19,x0
019f1230  bl 0x0124ff50
019f1234  cbz w0,0x019f1260
019f1238  adrp x2,0x736d000
019f123c  adrp x3,0x736d000
019f1240  add x2,x2,#0x208
019f1244  add x3,x3,#0x207
019f1248  mov w1,#0x1
019f124c  mov w4,#0x1
019f1250  mov x0,x19
019f1254  bl 0x0174b938
019f1258  ldr x20,[x0, #0x8]
019f125c  b 0x019f1264
019f1260  mov x20,xzr
019f1264  mov w1,#0xb9d7
019f1268  movk w1,#0xfff0, LSL #16
019f126c  mov x0,x19
019f1270  bl 0x0124e990
019f1274  mov x2,x0
019f1278  mov x0,x19
019f127c  mov x1,x20
019f1280  bl 0x019f1290
019f1284  ldp x29,x30,[sp, #0x10]
019f1288  ldp x20,x19,[sp], #0x20
019f128c  ret
