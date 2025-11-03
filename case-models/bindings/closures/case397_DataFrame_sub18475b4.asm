// ===== case397_DataFrame_sub18475b4 @ 018475b4 (DecompileAt3: cleared stale instructions at entry) =====
018475b4  stp x20,x19,[sp, #-0x20]!
018475b8  stp x29,x30,[sp, #0x10]
018475bc  add x29,sp,#0x10
018475c0  mov w1,#0x1
018475c4  mov x19,x0
018475c8  bl 0x0124ff50
018475cc  cbz w0,0x018475f8
018475d0  adrp x2,0x736d000
018475d4  adrp x3,0x736d000
018475d8  add x2,x2,#0x83a
018475dc  add x3,x3,#0x839
018475e0  mov w1,#0x1
018475e4  mov w4,#0x1
018475e8  mov x0,x19
018475ec  bl 0x0174b938
018475f0  ldr x20,[x0, #0x8]
018475f4  b 0x018475fc
018475f8  mov x20,xzr
018475fc  mov w1,#0xb9d7
01847600  movk w1,#0xfff0, LSL #16
01847604  mov x0,x19
01847608  bl 0x0124e990
0184760c  mov x2,x0
01847610  mov x0,x19
01847614  mov x1,x20
01847618  bl 0x01847628
0184761c  ldp x29,x30,[sp, #0x10]
01847620  ldp x20,x19,[sp], #0x20
01847624  ret
