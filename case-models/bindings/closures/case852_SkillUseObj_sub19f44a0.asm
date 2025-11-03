// ===== case852_SkillUseObj_sub19f44a0 @ 019f44a0 (DecompileAt3: cleared stale instructions at entry) =====
019f44a0  stp x20,x19,[sp, #-0x20]!
019f44a4  stp x29,x30,[sp, #0x10]
019f44a8  add x29,sp,#0x10
019f44ac  mov w1,#0x1
019f44b0  mov x19,x0
019f44b4  bl 0x0124ff50
019f44b8  cbz w0,0x019f44e4
019f44bc  adrp x2,0x736d000
019f44c0  adrp x3,0x736d000
019f44c4  add x2,x2,#0x214
019f44c8  add x3,x3,#0x213
019f44cc  mov w1,#0x1
019f44d0  mov w4,#0x1
019f44d4  mov x0,x19
019f44d8  bl 0x0174b938
019f44dc  ldr x20,[x0, #0x8]
019f44e0  b 0x019f44e8
019f44e4  mov x20,xzr
019f44e8  mov w1,#0xb9d7
019f44ec  movk w1,#0xfff0, LSL #16
019f44f0  mov x0,x19
019f44f4  bl 0x0124e990
019f44f8  mov x2,x0
019f44fc  mov x0,x19
019f4500  mov x1,x20
019f4504  bl 0x019f4514
019f4508  ldp x29,x30,[sp, #0x10]
019f450c  ldp x20,x19,[sp], #0x20
019f4510  ret
