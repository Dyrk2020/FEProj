// ===== case398_FEMsgQueue_sub1848058_lv2_18480cc @ 018480cc (DecompileAt3: cleared stale instructions at entry) =====
018480cc  stp x20,x19,[sp, #-0x20]!
018480d0  stp x29,x30,[sp, #0x10]
018480d4  add x29,sp,#0x10
018480d8  ldp x8,x9,[x2]
018480dc  mov x19,x0
018480e0  add x0,x1,x9, ASR #0x1
018480e4  tbz w9,#0x0,0x018480f0
018480e8  ldr x9,[x0]
018480ec  ldr x8,[x9, x8, LSL #0x0]
018480f0  blr x8
018480f4  mov x8,x0
018480f8  cbz x8,0x01848114
018480fc  adrp x2,0x736d000
01848100  add x2,x2,#0x848
01848104  mov x0,x19
01848108  mov x1,x8
0184810c  bl 0x0174cd64
01848110  b 0x0184811c
01848114  mov x0,x19
01848118  bl 0x01252b00
0184811c  mov w19,#0x1
01848120  ldp x29,x30,[sp, #0x10]
01848124  mov w0,w19
01848128  ldp x20,x19,[sp], #0x20
0184812c  ret
