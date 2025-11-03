// ===== case397_DataFrame_sub1846c68 @ 01846c68 (DecompileAt3: cleared stale instructions at entry) =====
01846c68  stp x20,x19,[sp, #-0x20]!
01846c6c  stp x29,x30,[sp, #0x10]
01846c70  add x29,sp,#0x10
01846c74  mov w1,#0x1
01846c78  mov x19,x0
01846c7c  bl 0x0124ff50
01846c80  cbz w0,0x01846cac
01846c84  adrp x2,0x736d000
01846c88  adrp x3,0x736d000
01846c8c  add x2,x2,#0x83a
01846c90  add x3,x3,#0x839
01846c94  mov w1,#0x1
01846c98  mov w4,#0x1
01846c9c  mov x0,x19
01846ca0  bl 0x0174b938
01846ca4  ldr x20,[x0, #0x8]
01846ca8  b 0x01846cb0
01846cac  mov x20,xzr
01846cb0  mov w1,#0xb9d7
01846cb4  movk w1,#0xfff0, LSL #16
01846cb8  mov x0,x19
01846cbc  bl 0x0124e990
01846cc0  mov x2,x0
01846cc4  mov x0,x19
01846cc8  mov x1,x20
01846ccc  bl 0x01846cdc
01846cd0  ldp x29,x30,[sp, #0x10]
01846cd4  ldp x20,x19,[sp], #0x20
01846cd8  ret
