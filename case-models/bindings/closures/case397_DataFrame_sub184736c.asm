// ===== case397_DataFrame_sub184736c @ 0184736c (DecompileAt3: cleared stale instructions at entry) =====
0184736c  stp x20,x19,[sp, #-0x20]!
01847370  stp x29,x30,[sp, #0x10]
01847374  add x29,sp,#0x10
01847378  mov w1,#0x1
0184737c  mov x19,x0
01847380  bl 0x0124ff50
01847384  cbz w0,0x018473b0
01847388  adrp x2,0x736d000
0184738c  adrp x3,0x736d000
01847390  add x2,x2,#0x83a
01847394  add x3,x3,#0x839
01847398  mov w1,#0x1
0184739c  mov w4,#0x1
018473a0  mov x0,x19
018473a4  bl 0x0174b938
018473a8  ldr x20,[x0, #0x8]
018473ac  b 0x018473b4
018473b0  mov x20,xzr
018473b4  mov w1,#0xb9d7
018473b8  movk w1,#0xfff0, LSL #16
018473bc  mov x0,x19
018473c0  bl 0x0124e990
018473c4  mov x2,x0
018473c8  mov x0,x19
018473cc  mov x1,x20
018473d0  bl 0x018473e0
018473d4  ldp x29,x30,[sp, #0x10]
018473d8  ldp x20,x19,[sp], #0x20
018473dc  ret
