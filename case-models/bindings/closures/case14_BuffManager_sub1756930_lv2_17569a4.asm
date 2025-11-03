// ===== case14_BuffManager_sub1756930_lv2_17569a4 @ 017569a4 (DecompileAt3: cleared stale instructions at entry) =====
017569a4  stp x20,x19,[sp, #-0x20]!
017569a8  stp x29,x30,[sp, #0x10]
017569ac  add x29,sp,#0x10
017569b0  ldp x8,x9,[x2]
017569b4  mov x19,x0
017569b8  add x0,x1,x9, ASR #0x1
017569bc  tbz w9,#0x0,0x017569c8
017569c0  ldr x9,[x0]
017569c4  ldr x8,[x9, x8, LSL #0x0]
017569c8  blr x8
017569cc  mov x8,x0
017569d0  cbz x8,0x017569ec
017569d4  adrp x2,0x736d000
017569d8  add x2,x2,#0x180
017569dc  mov x0,x19
017569e0  mov x1,x8
017569e4  bl 0x0174cd64
017569e8  b 0x017569f4
017569ec  mov x0,x19
017569f0  bl 0x01252b00
017569f4  mov w19,#0x1
017569f8  ldp x29,x30,[sp, #0x10]
017569fc  mov w0,w19
01756a00  ldp x20,x19,[sp], #0x20
01756a04  ret
