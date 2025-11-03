// ===== case15_SkillManager_sub1757070_lv2_17570e4 @ 017570e4 (DecompileAt3: cleared stale instructions at entry) =====
017570e4  stp x20,x19,[sp, #-0x20]!
017570e8  stp x29,x30,[sp, #0x10]
017570ec  add x29,sp,#0x10
017570f0  ldp x8,x9,[x2]
017570f4  mov x19,x0
017570f8  add x0,x1,x9, ASR #0x1
017570fc  tbz w9,#0x0,0x01757108
01757100  ldr x9,[x0]
01757104  ldr x8,[x9, x8, LSL #0x0]
01757108  blr x8
0175710c  mov x8,x0
01757110  cbz x8,0x0175712c
01757114  adrp x2,0x736d000
01757118  add x2,x2,#0x22b
0175711c  mov x0,x19
01757120  mov x1,x8
01757124  bl 0x0174cd64
01757128  b 0x01757134
0175712c  mov x0,x19
01757130  bl 0x01252b00
01757134  mov w19,#0x1
01757138  ldp x29,x30,[sp, #0x10]
0175713c  mov w0,w19
01757140  ldp x20,x19,[sp], #0x20
01757144  ret
