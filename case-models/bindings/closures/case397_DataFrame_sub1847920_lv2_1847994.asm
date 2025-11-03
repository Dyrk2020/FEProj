// ===== case397_DataFrame_sub1847920_lv2_1847994 @ 01847994 (DecompileAt3: cleared stale instructions at entry) =====
01847994  stp x20,x19,[sp, #-0x20]!
01847998  stp x29,x30,[sp, #0x10]
0184799c  add x29,sp,#0x10
018479a0  ldp x8,x9,[x2]
018479a4  mov x19,x0
018479a8  add x0,x1,x9, ASR #0x1
018479ac  tbz w9,#0x0,0x018479b8
018479b0  ldr x9,[x0]
018479b4  ldr x8,[x9, x8, LSL #0x0]
018479b8  blr x8
018479bc  mov x8,x0
018479c0  cbz x8,0x018479dc
018479c4  adrp x2,0x736d000
018479c8  add x2,x2,#0x72f
018479cc  mov x0,x19
018479d0  mov x1,x8
018479d4  bl 0x0174cd64
018479d8  b 0x018479e4
018479dc  mov x0,x19
018479e0  bl 0x01252b00
018479e4  mov w19,#0x1
018479e8  ldp x29,x30,[sp, #0x10]
018479ec  mov w0,w19
018479f0  ldp x20,x19,[sp], #0x20
018479f4  ret
