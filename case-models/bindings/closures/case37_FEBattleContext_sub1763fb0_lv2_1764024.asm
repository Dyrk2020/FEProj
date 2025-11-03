// ===== case37_FEBattleContext_sub1763fb0_lv2_1764024 @ 01764024 (DecompileAt3: cleared stale instructions at entry) =====
01764024  stp x20,x19,[sp, #-0x20]!
01764028  stp x29,x30,[sp, #0x10]
0176402c  add x29,sp,#0x10
01764030  ldp x8,x9,[x2]
01764034  mov x19,x0
01764038  add x0,x1,x9, ASR #0x1
0176403c  tbz w9,#0x0,0x01764048
01764040  ldr x9,[x0]
01764044  ldr x8,[x9, x8, LSL #0x0]
01764048  blr x8
0176404c  mov x8,x0
01764050  cbz x8,0x0176406c
01764054  adrp x2,0x736d000
01764058  add x2,x2,#0x281
0176405c  mov x0,x19
01764060  mov x1,x8
01764064  bl 0x0174cd64
01764068  b 0x01764074
0176406c  mov x0,x19
01764070  bl 0x01252b00
01764074  mov w19,#0x1
01764078  ldp x29,x30,[sp, #0x10]
0176407c  mov w0,w19
01764080  ldp x20,x19,[sp], #0x20
01764084  ret
