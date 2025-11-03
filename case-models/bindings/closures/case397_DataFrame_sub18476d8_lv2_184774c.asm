// ===== case397_DataFrame_sub18476d8_lv2_184774c @ 0184774c (DecompileAt3: cleared stale instructions at entry) =====
0184774c  stp x20,x19,[sp, #-0x20]!
01847750  stp x29,x30,[sp, #0x10]
01847754  add x29,sp,#0x10
01847758  ldp x8,x9,[x2]
0184775c  mov x19,x0
01847760  add x0,x1,x9, ASR #0x1
01847764  tbz w9,#0x0,0x01847770
01847768  ldr x9,[x0]
0184776c  ldr x8,[x9, x8, LSL #0x0]
01847770  blr x8
01847774  mov x8,x0
01847778  cbz x8,0x01847794
0184777c  adrp x2,0x736d000
01847780  add x2,x2,#0x73d
01847784  mov x0,x19
01847788  mov x1,x8
0184778c  bl 0x0174cd64
01847790  b 0x0184779c
01847794  mov x0,x19
01847798  bl 0x01252b00
0184779c  mov w19,#0x1
018477a0  ldp x29,x30,[sp, #0x10]
018477a4  mov w0,w19
018477a8  ldp x20,x19,[sp], #0x20
018477ac  ret
