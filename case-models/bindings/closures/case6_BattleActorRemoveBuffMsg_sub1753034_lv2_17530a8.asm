// ===== case6_BattleActorRemoveBuffMsg_sub1753034_lv2_17530a8 @ 017530a8 (DecompileAt3: cleared stale instructions at entry) =====
017530a8  stp x20,x19,[sp, #-0x20]!
017530ac  stp x29,x30,[sp, #0x10]
017530b0  add x29,sp,#0x10
017530b4  ldp x8,x9,[x2]
017530b8  mov x19,x0
017530bc  add x0,x1,x9, ASR #0x1
017530c0  tbz w9,#0x0,0x017530cc
017530c4  ldr x9,[x0]
017530c8  ldr x8,[x9, x8, LSL #0x0]
017530cc  blr x8
017530d0  mov x8,x0
017530d4  cbz x8,0x017530f0
017530d8  adrp x2,0x736d000
017530dc  add x2,x2,#0x20c
017530e0  mov x0,x19
017530e4  mov x1,x8
017530e8  bl 0x0174cd64
017530ec  b 0x017530f8
017530f0  mov x0,x19
017530f4  bl 0x01252b00
017530f8  mov w19,#0x1
017530fc  ldp x29,x30,[sp, #0x10]
01753100  mov w0,w19
01753104  ldp x20,x19,[sp], #0x20
01753108  ret
