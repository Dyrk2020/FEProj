// ===== case25_LuaStructMaker_sub175c458_lv2_175c4cc @ 0175c4cc (DecompileAt3: cleared stale instructions at entry) =====
0175c4cc  stp x20,x19,[sp, #-0x20]!
0175c4d0  stp x29,x30,[sp, #0x10]
0175c4d4  add x29,sp,#0x10
0175c4d8  ldp x8,x9,[x2]
0175c4dc  mov x19,x0
0175c4e0  add x0,x1,x9, ASR #0x1
0175c4e4  tbz w9,#0x0,0x0175c4f0
0175c4e8  ldr x9,[x0]
0175c4ec  ldr x8,[x9, x8, LSL #0x0]
0175c4f0  blr x8
0175c4f4  mov x8,x0
0175c4f8  cbz x8,0x0175c514
0175c4fc  adrp x2,0x736d000
0175c500  add x2,x2,#0x24d
0175c504  mov x0,x19
0175c508  mov x1,x8
0175c50c  bl 0x0174cd64
0175c510  b 0x0175c51c
0175c514  mov x0,x19
0175c518  bl 0x01252b00
0175c51c  mov w19,#0x1
0175c520  ldp x29,x30,[sp, #0x10]
0175c524  mov w0,w19
0175c528  ldp x20,x19,[sp], #0x20
0175c52c  ret
