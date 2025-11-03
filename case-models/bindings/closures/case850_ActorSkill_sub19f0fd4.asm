// ===== case850_ActorSkill_sub19f0fd4 @ 019f0fd4 (DecompileAt3: cleared stale instructions at entry) =====
019f0fd4  stp x20,x19,[sp, #-0x20]!
019f0fd8  stp x29,x30,[sp, #0x10]
019f0fdc  add x29,sp,#0x10
019f0fe0  mov w1,#0x1
019f0fe4  mov x19,x0
019f0fe8  bl 0x0124ff50
019f0fec  cbz w0,0x019f1018
019f0ff0  adrp x2,0x736d000
019f0ff4  adrp x3,0x736d000
019f0ff8  add x2,x2,#0x208
019f0ffc  add x3,x3,#0x207
019f1000  mov w1,#0x1
019f1004  mov w4,#0x1
019f1008  mov x0,x19
019f100c  bl 0x0174b938
019f1010  ldr x20,[x0, #0x8]
019f1014  b 0x019f101c
019f1018  mov x20,xzr
019f101c  mov w1,#0xb9d7
019f1020  movk w1,#0xfff0, LSL #16
019f1024  mov x0,x19
019f1028  bl 0x0124e990
019f102c  mov x2,x0
019f1030  mov x0,x19
019f1034  mov x1,x20
019f1038  bl 0x019f1048
019f103c  ldp x29,x30,[sp, #0x10]
019f1040  ldp x20,x19,[sp], #0x20
019f1044  ret
