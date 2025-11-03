// ===== case852_SkillUseObj_sub19f45c4 @ 019f45c4 (DecompileAt3: cleared stale instructions at entry) =====
019f45c4  stp x20,x19,[sp, #-0x20]!
019f45c8  stp x29,x30,[sp, #0x10]
019f45cc  add x29,sp,#0x10
019f45d0  mov w1,#0x1
019f45d4  mov x19,x0
019f45d8  bl 0x0124ff50
019f45dc  cbz w0,0x019f4608
019f45e0  adrp x2,0x736d000
019f45e4  adrp x3,0x736d000
019f45e8  add x2,x2,#0x214
019f45ec  add x3,x3,#0x213
019f45f0  mov w1,#0x1
019f45f4  mov w4,#0x1
019f45f8  mov x0,x19
019f45fc  bl 0x0174b938
019f4600  ldr x20,[x0, #0x8]
019f4604  b 0x019f460c
019f4608  mov x20,xzr
019f460c  mov w1,#0xb9d7
019f4610  movk w1,#0xfff0, LSL #16
019f4614  mov x0,x19
019f4618  bl 0x0124e990
019f461c  mov x2,x0
019f4620  mov x0,x19
019f4624  mov x1,x20
019f4628  bl 0x019f4638
019f462c  ldp x29,x30,[sp, #0x10]
019f4630  ldp x20,x19,[sp], #0x20
019f4634  ret
