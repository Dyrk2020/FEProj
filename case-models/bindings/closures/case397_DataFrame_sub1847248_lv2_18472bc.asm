// ===== case397_DataFrame_sub1847248_lv2_18472bc @ 018472bc (DecompileAt3: cleared stale instructions at entry) =====
018472bc  stp x20,x19,[sp, #-0x20]!
018472c0  stp x29,x30,[sp, #0x10]
018472c4  add x29,sp,#0x10
018472c8  ldp x8,x9,[x2]
018472cc  mov x19,x0
018472d0  add x0,x1,x9, ASR #0x1
018472d4  tbz w9,#0x0,0x018472e0
018472d8  ldr x9,[x0]
018472dc  ldr x8,[x9, x8, LSL #0x0]
018472e0  blr x8
018472e4  mov x8,x0
018472e8  cbz x8,0x01847304
018472ec  adrp x2,0x736d000
018472f0  add x2,x2,#0x840
018472f4  mov x0,x19
018472f8  mov x1,x8
018472fc  bl 0x0174cd64
01847300  b 0x0184730c
01847304  mov x0,x19
01847308  bl 0x01252b00
0184730c  mov w19,#0x1
01847310  ldp x29,x30,[sp, #0x10]
01847314  mov w0,w19
01847318  ldp x20,x19,[sp], #0x20
0184731c  ret
