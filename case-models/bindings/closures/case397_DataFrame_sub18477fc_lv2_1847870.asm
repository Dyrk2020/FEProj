// ===== case397_DataFrame_sub18477fc_lv2_1847870 @ 01847870 (DecompileAt3: cleared stale instructions at entry) =====
01847870  stp x20,x19,[sp, #-0x20]!
01847874  stp x29,x30,[sp, #0x10]
01847878  add x29,sp,#0x10
0184787c  ldp x8,x9,[x2]
01847880  mov x19,x0
01847884  add x0,x1,x9, ASR #0x1
01847888  tbz w9,#0x0,0x01847894
0184788c  ldr x9,[x0]
01847890  ldr x8,[x9, x8, LSL #0x0]
01847894  blr x8
01847898  mov x8,x0
0184789c  cbz x8,0x018478b8
018478a0  adrp x2,0x736d000
018478a4  add x2,x2,#0x73b
018478a8  mov x0,x19
018478ac  mov x1,x8
018478b0  bl 0x0174cd64
018478b4  b 0x018478c0
018478b8  mov x0,x19
018478bc  bl 0x01252b00
018478c0  mov w19,#0x1
018478c4  ldp x29,x30,[sp, #0x10]
018478c8  mov w0,w19
018478cc  ldp x20,x19,[sp], #0x20
018478d0  ret
