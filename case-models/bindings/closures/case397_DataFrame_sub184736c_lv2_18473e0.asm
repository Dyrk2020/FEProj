// ===== case397_DataFrame_sub184736c_lv2_18473e0 @ 018473e0 (DecompileAt3: cleared stale instructions at entry) =====
018473e0  stp x20,x19,[sp, #-0x20]!
018473e4  stp x29,x30,[sp, #0x10]
018473e8  add x29,sp,#0x10
018473ec  ldp x8,x9,[x2]
018473f0  mov x19,x0
018473f4  add x0,x1,x9, ASR #0x1
018473f8  tbz w9,#0x0,0x01847404
018473fc  ldr x9,[x0]
01847400  ldr x8,[x9, x8, LSL #0x0]
01847404  blr x8
01847408  mov x8,x0
0184740c  cbz x8,0x01847428
01847410  adrp x2,0x736d000
01847414  add x2,x2,#0x841
01847418  mov x0,x19
0184741c  mov x1,x8
01847420  bl 0x0174cd64
01847424  b 0x01847430
01847428  mov x0,x19
0184742c  bl 0x01252b00
01847430  mov w19,#0x1
01847434  ldp x29,x30,[sp, #0x10]
01847438  mov w0,w19
0184743c  ldp x20,x19,[sp], #0x20
01847440  ret
