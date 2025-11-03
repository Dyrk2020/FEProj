// ===== case850_ActorSkill_sub19f25c0 @ 019f25c0 (DecompileAt3: cleared stale instructions at entry) =====
019f25c0  stp x20,x19,[sp, #-0x20]!
019f25c4  stp x29,x30,[sp, #0x10]
019f25c8  add x29,sp,#0x10
019f25cc  mov w1,#0x1
019f25d0  mov x19,x0
019f25d4  bl 0x0124ff50
019f25d8  cbz w0,0x019f2604
019f25dc  adrp x2,0x736d000
019f25e0  adrp x3,0x736d000
019f25e4  add x2,x2,#0x208
019f25e8  add x3,x3,#0x207
019f25ec  mov w1,#0x1
019f25f0  mov w4,#0x1
019f25f4  mov x0,x19
019f25f8  bl 0x0174b938
019f25fc  ldr x20,[x0, #0x8]
019f2600  b 0x019f2608
019f2604  mov x20,xzr
019f2608  mov w1,#0xb9d7
019f260c  movk w1,#0xfff0, LSL #16
019f2610  mov x0,x19
019f2614  bl 0x0124e990
019f2618  mov x2,x0
019f261c  mov x0,x19
019f2620  mov x1,x20
019f2624  bl 0x019f2634
019f2628  ldp x29,x30,[sp, #0x10]
019f262c  ldp x20,x19,[sp], #0x20
019f2630  ret
