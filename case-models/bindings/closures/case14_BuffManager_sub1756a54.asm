// ===== case14_BuffManager_sub1756a54 @ 01756a54 (DecompileAt3: cleared stale instructions at entry) =====
01756a54  stp x20,x19,[sp, #-0x20]!
01756a58  stp x29,x30,[sp, #0x10]
01756a5c  add x29,sp,#0x10
01756a60  mov w1,#0x1
01756a64  mov x19,x0
01756a68  bl 0x0124ff50
01756a6c  cbz w0,0x01756a98
01756a70  adrp x2,0x736d000
01756a74  adrp x3,0x736d000
01756a78  add x2,x2,#0x226
01756a7c  add x3,x3,#0x225
01756a80  mov w1,#0x1
01756a84  mov w4,#0x1
01756a88  mov x0,x19
01756a8c  bl 0x0174b938
01756a90  ldr x20,[x0, #0x8]
01756a94  b 0x01756a9c
01756a98  mov x20,xzr
01756a9c  mov w1,#0xb9d7
01756aa0  movk w1,#0xfff0, LSL #16
01756aa4  mov x0,x19
01756aa8  bl 0x0124e990
01756aac  mov x2,x0
01756ab0  mov x0,x19
01756ab4  mov x1,x20
01756ab8  bl 0x01756ac8
01756abc  ldp x29,x30,[sp, #0x10]
01756ac0  ldp x20,x19,[sp], #0x20
01756ac4  ret
