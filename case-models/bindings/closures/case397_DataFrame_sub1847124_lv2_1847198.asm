// ===== case397_DataFrame_sub1847124_lv2_1847198 @ 01847198 (DecompileAt3: cleared stale instructions at entry) =====
01847198  stp x20,x19,[sp, #-0x20]!
0184719c  stp x29,x30,[sp, #0x10]
018471a0  add x29,sp,#0x10
018471a4  ldp x8,x9,[x2]
018471a8  mov x19,x0
018471ac  add x0,x1,x9, ASR #0x1
018471b0  tbz w9,#0x0,0x018471bc
018471b4  ldr x9,[x0]
018471b8  ldr x8,[x9, x8, LSL #0x0]
018471bc  blr x8
018471c0  mov x8,x0
018471c4  cbz x8,0x018471e0
018471c8  adrp x2,0x736d000
018471cc  add x2,x2,#0x83f
018471d0  mov x0,x19
018471d4  mov x1,x8
018471d8  bl 0x0174cd64
018471dc  b 0x018471e8
018471e0  mov x0,x19
018471e4  bl 0x01252b00
018471e8  mov w19,#0x1
018471ec  ldp x29,x30,[sp, #0x10]
018471f0  mov w0,w19
018471f4  ldp x20,x19,[sp], #0x20
018471f8  ret
