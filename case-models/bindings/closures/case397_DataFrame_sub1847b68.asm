// ===== case397_DataFrame_sub1847b68 @ 01847b68 (DecompileAt3: cleared stale instructions at entry) =====
01847b68  stp x20,x19,[sp, #-0x20]!
01847b6c  stp x29,x30,[sp, #0x10]
01847b70  add x29,sp,#0x10
01847b74  mov w1,#0x1
01847b78  mov x19,x0
01847b7c  bl 0x0124ff50
01847b80  cbz w0,0x01847bac
01847b84  adrp x2,0x736d000
01847b88  adrp x3,0x736d000
01847b8c  add x2,x2,#0x83a
01847b90  add x3,x3,#0x839
01847b94  mov w1,#0x1
01847b98  mov w4,#0x1
01847b9c  mov x0,x19
01847ba0  bl 0x0174b938
01847ba4  ldr x20,[x0, #0x8]
01847ba8  b 0x01847bb0
01847bac  mov x20,xzr
01847bb0  mov w1,#0xb9d7
01847bb4  movk w1,#0xfff0, LSL #16
01847bb8  mov x0,x19
01847bbc  bl 0x0124e990
01847bc0  mov x2,x0
01847bc4  mov x0,x19
01847bc8  mov x1,x20
01847bcc  bl 0x01847bdc
01847bd0  ldp x29,x30,[sp, #0x10]
01847bd4  ldp x20,x19,[sp], #0x20
01847bd8  ret
