// ===== case9_BattleActorApplyBuffMsg_sub1754344_lv2_17543b8 @ 017543b8 (DecompileAt3: cleared stale instructions at entry) =====
017543b8  stp x20,x19,[sp, #-0x20]!
017543bc  stp x29,x30,[sp, #0x10]
017543c0  add x29,sp,#0x10
017543c4  ldp x8,x9,[x2]
017543c8  mov x19,x0
017543cc  add x0,x1,x9, ASR #0x1
017543d0  tbz w9,#0x0,0x017543dc
017543d4  ldr x9,[x0]
017543d8  ldr x8,[x9, x8, LSL #0x0]
017543dc  blr x8
017543e0  mov x8,x0
017543e4  cbz x8,0x01754400
017543e8  adrp x2,0x736d000
017543ec  add x2,x2,#0x20c
017543f0  mov x0,x19
017543f4  mov x1,x8
017543f8  bl 0x0174cd64
017543fc  b 0x01754408
01754400  mov x0,x19
01754404  bl 0x01252b00
01754408  mov w19,#0x1
0175440c  ldp x29,x30,[sp, #0x10]
01754410  mov w0,w19
01754414  ldp x20,x19,[sp], #0x20
01754418  ret
