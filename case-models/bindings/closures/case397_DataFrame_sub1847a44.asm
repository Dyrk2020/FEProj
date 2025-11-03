// ===== case397_DataFrame_sub1847a44 @ 01847a44 (DecompileAt3: cleared stale instructions at entry) =====
01847a44  stp x20,x19,[sp, #-0x20]!
01847a48  stp x29,x30,[sp, #0x10]
01847a4c  add x29,sp,#0x10
01847a50  mov w1,#0x1
01847a54  mov x19,x0
01847a58  bl 0x0124ff50
01847a5c  cbz w0,0x01847a88
01847a60  adrp x2,0x736d000
01847a64  adrp x3,0x736d000
01847a68  add x2,x2,#0x83a
01847a6c  add x3,x3,#0x839
01847a70  mov w1,#0x1
01847a74  mov w4,#0x1
01847a78  mov x0,x19
01847a7c  bl 0x0174b938
01847a80  ldr x20,[x0, #0x8]
01847a84  b 0x01847a8c
01847a88  mov x20,xzr
01847a8c  mov w1,#0xb9d7
01847a90  movk w1,#0xfff0, LSL #16
01847a94  mov x0,x19
01847a98  bl 0x0124e990
01847a9c  mov x2,x0
01847aa0  mov x0,x19
01847aa4  mov x1,x20
01847aa8  bl 0x01847ab8
01847aac  ldp x29,x30,[sp, #0x10]
01847ab0  ldp x20,x19,[sp], #0x20
01847ab4  ret
