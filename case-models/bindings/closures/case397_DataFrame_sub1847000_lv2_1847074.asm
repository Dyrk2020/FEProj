// ===== case397_DataFrame_sub1847000_lv2_1847074 @ 01847074 (DecompileAt3: cleared stale instructions at entry) =====
01847074  stp x20,x19,[sp, #-0x20]!
01847078  stp x29,x30,[sp, #0x10]
0184707c  add x29,sp,#0x10
01847080  ldp x8,x9,[x2]
01847084  mov x19,x0
01847088  add x0,x1,x9, ASR #0x1
0184708c  tbz w9,#0x0,0x01847098
01847090  ldr x9,[x0]
01847094  ldr x8,[x9, x8, LSL #0x0]
01847098  blr x8
0184709c  mov x8,x0
018470a0  cbz x8,0x018470bc
018470a4  adrp x2,0x736d000
018470a8  add x2,x2,#0x83e
018470ac  mov x0,x19
018470b0  mov x1,x8
018470b4  bl 0x0174cd64
018470b8  b 0x018470c4
018470bc  mov x0,x19
018470c0  bl 0x01252b00
018470c4  mov w19,#0x1
018470c8  ldp x29,x30,[sp, #0x10]
018470cc  mov w0,w19
018470d0  ldp x20,x19,[sp], #0x20
018470d4  ret
