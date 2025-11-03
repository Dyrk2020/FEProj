// ===== case397_DataFrame_sub1847490 @ 01847490 (DecompileAt3: cleared stale instructions at entry) =====
01847490  stp x20,x19,[sp, #-0x20]!
01847494  stp x29,x30,[sp, #0x10]
01847498  add x29,sp,#0x10
0184749c  mov w1,#0x1
018474a0  mov x19,x0
018474a4  bl 0x0124ff50
018474a8  cbz w0,0x018474d4
018474ac  adrp x2,0x736d000
018474b0  adrp x3,0x736d000
018474b4  add x2,x2,#0x83a
018474b8  add x3,x3,#0x839
018474bc  mov w1,#0x1
018474c0  mov w4,#0x1
018474c4  mov x0,x19
018474c8  bl 0x0174b938
018474cc  ldr x20,[x0, #0x8]
018474d0  b 0x018474d8
018474d4  mov x20,xzr
018474d8  mov w1,#0xb9d7
018474dc  movk w1,#0xfff0, LSL #16
018474e0  mov x0,x19
018474e4  bl 0x0124e990
018474e8  mov x2,x0
018474ec  mov x0,x19
018474f0  mov x1,x20
018474f4  bl 0x01847504
018474f8  ldp x29,x30,[sp, #0x10]
018474fc  ldp x20,x19,[sp], #0x20
01847500  ret
