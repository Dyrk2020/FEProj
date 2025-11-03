// ===== case850_ActorSkill_sub19f195c @ 019f195c (DecompileAt3: cleared stale instructions at entry) =====
019f195c  stp x20,x19,[sp, #-0x20]!
019f1960  stp x29,x30,[sp, #0x10]
019f1964  add x29,sp,#0x10
019f1968  mov w1,#0x1
019f196c  mov x19,x0
019f1970  bl 0x0124ff50
019f1974  cbz w0,0x019f19a0
019f1978  adrp x2,0x736d000
019f197c  adrp x3,0x736d000
019f1980  add x2,x2,#0x208
019f1984  add x3,x3,#0x207
019f1988  mov w1,#0x1
019f198c  mov w4,#0x1
019f1990  mov x0,x19
019f1994  bl 0x0174b938
019f1998  ldr x20,[x0, #0x8]
019f199c  b 0x019f19a4
019f19a0  mov x20,xzr
019f19a4  mov w1,#0xb9d7
019f19a8  movk w1,#0xfff0, LSL #16
019f19ac  mov x0,x19
019f19b0  bl 0x0124e990
019f19b4  mov x2,x0
019f19b8  mov x0,x19
019f19bc  mov x1,x20
019f19c0  bl 0x019f19d0
019f19c4  ldp x29,x30,[sp, #0x10]
019f19c8  ldp x20,x19,[sp], #0x20
019f19cc  ret
