// ===== case397_DataFrame_sub1846b44 @ 01846b44 (DecompileAt3: cleared stale instructions at entry) =====
01846b44  stp x20,x19,[sp, #-0x20]!
01846b48  stp x29,x30,[sp, #0x10]
01846b4c  add x29,sp,#0x10
01846b50  mov w1,#0x1
01846b54  mov x19,x0
01846b58  bl 0x0124ff50
01846b5c  cbz w0,0x01846b88
01846b60  adrp x2,0x736d000
01846b64  adrp x3,0x736d000
01846b68  add x2,x2,#0x83a
01846b6c  add x3,x3,#0x839
01846b70  mov w1,#0x1
01846b74  mov w4,#0x1
01846b78  mov x0,x19
01846b7c  bl 0x0174b938
01846b80  ldr x20,[x0, #0x8]
01846b84  b 0x01846b8c
01846b88  mov x20,xzr
01846b8c  mov w1,#0xb9d7
01846b90  movk w1,#0xfff0, LSL #16
01846b94  mov x0,x19
01846b98  bl 0x0124e990
01846b9c  mov x2,x0
01846ba0  mov x0,x19
01846ba4  mov x1,x20
01846ba8  bl 0x01846bb8
01846bac  ldp x29,x30,[sp, #0x10]
01846bb0  ldp x20,x19,[sp], #0x20
01846bb4  ret
