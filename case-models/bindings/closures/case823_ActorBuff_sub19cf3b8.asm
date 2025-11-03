// ===== case823_ActorBuff_sub19cf3b8 @ 019cf3b8 (DecompileAt3: cleared stale instructions at entry) =====
019cf3b8  stp x20,x19,[sp, #-0x20]!
019cf3bc  stp x29,x30,[sp, #0x10]
019cf3c0  add x29,sp,#0x10
019cf3c4  mov w1,#0x1
019cf3c8  mov x19,x0
019cf3cc  bl 0x0124ff50
019cf3d0  cbz w0,0x019cf3fc
019cf3d4  adrp x2,0x736d000
019cf3d8  adrp x3,0x736d000
019cf3dc  add x2,x2,#0x899
019cf3e0  add x3,x3,#0x898
019cf3e4  mov w1,#0x1
019cf3e8  mov w4,#0x1
019cf3ec  mov x0,x19
019cf3f0  bl 0x0174b938
019cf3f4  ldr x20,[x0, #0x8]
019cf3f8  b 0x019cf400
019cf3fc  mov x20,xzr
019cf400  mov w1,#0xb9d7
019cf404  movk w1,#0xfff0, LSL #16
019cf408  mov x0,x19
019cf40c  bl 0x0124e990
019cf410  mov x2,x0
019cf414  mov x0,x19
019cf418  mov x1,x20
019cf41c  bl 0x019cf42c
019cf420  ldp x29,x30,[sp, #0x10]
019cf424  ldp x20,x19,[sp], #0x20
019cf428  ret
