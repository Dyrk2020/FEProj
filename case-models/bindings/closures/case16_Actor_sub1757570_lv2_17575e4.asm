// ===== case16_Actor_sub1757570_lv2_17575e4 @ 017575e4 (DecompileAt3: cleared stale instructions at entry) =====
017575e4  stp x20,x19,[sp, #-0x20]!
017575e8  stp x29,x30,[sp, #0x10]
017575ec  add x29,sp,#0x10
017575f0  ldp x8,x9,[x2]
017575f4  mov x19,x0
017575f8  add x0,x1,x9, ASR #0x1
017575fc  tbz w9,#0x0,0x01757608
01757600  ldr x9,[x0]
01757604  ldr x8,[x9, x8, LSL #0x0]
01757608  blr x8
0175760c  mov x8,x0
01757610  cbz x8,0x0175762c
01757614  adrp x2,0x736d000
01757618  add x2,x2,#0x22d
0175761c  mov x0,x19
01757620  mov x1,x8
01757624  bl 0x0174cd64
01757628  b 0x01757634
0175762c  mov x0,x19
01757630  bl 0x01252b00
01757634  mov w19,#0x1
01757638  ldp x29,x30,[sp, #0x10]
0175763c  mov w0,w19
01757640  ldp x20,x19,[sp], #0x20
01757644  ret
