// ===== case26_LuaFrameDataMgr_sub175c950_lv2_175c9c4 @ 0175c9c4 (DecompileAt3: cleared stale instructions at entry) =====
0175c9c4  stp x20,x19,[sp, #-0x20]!
0175c9c8  stp x29,x30,[sp, #0x10]
0175c9cc  add x29,sp,#0x10
0175c9d0  ldp x8,x9,[x2]
0175c9d4  mov x19,x0
0175c9d8  add x0,x1,x9, ASR #0x1
0175c9dc  tbz w9,#0x0,0x0175c9e8
0175c9e0  ldr x9,[x0]
0175c9e4  ldr x8,[x9, x8, LSL #0x0]
0175c9e8  blr x8
0175c9ec  mov x8,x0
0175c9f0  cbz x8,0x0175ca0c
0175c9f4  adrp x2,0x736d000
0175c9f8  add x2,x2,#0x24b
0175c9fc  mov x0,x19
0175ca00  mov x1,x8
0175ca04  bl 0x0174cd64
0175ca08  b 0x0175ca14
0175ca0c  mov x0,x19
0175ca10  bl 0x01252b00
0175ca14  mov w19,#0x1
0175ca18  ldp x29,x30,[sp, #0x10]
0175ca1c  mov w0,w19
0175ca20  ldp x20,x19,[sp], #0x20
0175ca24  ret
