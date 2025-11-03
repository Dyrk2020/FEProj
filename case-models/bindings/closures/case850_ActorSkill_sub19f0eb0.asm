// ===== case850_ActorSkill_sub19f0eb0 @ 019f0eb0 (DecompileAt3: cleared stale instructions at entry) =====
019f0eb0  stp x20,x19,[sp, #-0x20]!
019f0eb4  stp x29,x30,[sp, #0x10]
019f0eb8  add x29,sp,#0x10
019f0ebc  mov w1,#0x1
019f0ec0  mov x19,x0
019f0ec4  bl 0x0124ff50
019f0ec8  cbz w0,0x019f0ef4
019f0ecc  adrp x2,0x736d000
019f0ed0  adrp x3,0x736d000
019f0ed4  add x2,x2,#0x208
019f0ed8  add x3,x3,#0x207
019f0edc  mov w1,#0x1
019f0ee0  mov w4,#0x1
019f0ee4  mov x0,x19
019f0ee8  bl 0x0174b938
019f0eec  ldr x20,[x0, #0x8]
019f0ef0  b 0x019f0ef8
019f0ef4  mov x20,xzr
019f0ef8  mov w1,#0xb9d7
019f0efc  movk w1,#0xfff0, LSL #16
019f0f00  mov x0,x19
019f0f04  bl 0x0124e990
019f0f08  mov x2,x0
019f0f0c  mov x0,x19
019f0f10  mov x1,x20
019f0f14  bl 0x019f0f24
019f0f18  ldp x29,x30,[sp, #0x10]
019f0f1c  ldp x20,x19,[sp], #0x20
019f0f20  ret
