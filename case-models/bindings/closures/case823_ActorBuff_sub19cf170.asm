// ===== case823_ActorBuff_sub19cf170 @ 019cf170 (DecompileAt3: cleared stale instructions at entry) =====
019cf170  stp x20,x19,[sp, #-0x20]!
019cf174  stp x29,x30,[sp, #0x10]
019cf178  add x29,sp,#0x10
019cf17c  mov w1,#0x1
019cf180  mov x19,x0
019cf184  bl 0x0124ff50
019cf188  cbz w0,0x019cf1b4
019cf18c  adrp x2,0x736d000
019cf190  adrp x3,0x736d000
019cf194  add x2,x2,#0x899
019cf198  add x3,x3,#0x898
019cf19c  mov w1,#0x1
019cf1a0  mov w4,#0x1
019cf1a4  mov x0,x19
019cf1a8  bl 0x0174b938
019cf1ac  ldr x20,[x0, #0x8]
019cf1b0  b 0x019cf1b8
019cf1b4  mov x20,xzr
019cf1b8  mov w1,#0xb9d7
019cf1bc  movk w1,#0xfff0, LSL #16
019cf1c0  mov x0,x19
019cf1c4  bl 0x0124e990
019cf1c8  mov x2,x0
019cf1cc  mov x0,x19
019cf1d0  mov x1,x20
019cf1d4  bl 0x019cf1e4
019cf1d8  ldp x29,x30,[sp, #0x10]
019cf1dc  ldp x20,x19,[sp], #0x20
019cf1e0  ret
