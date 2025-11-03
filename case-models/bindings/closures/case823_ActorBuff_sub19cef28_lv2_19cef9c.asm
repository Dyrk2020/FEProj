// ===== case823_ActorBuff_sub19cef28_lv2_19cef9c @ 019cef9c (DecompileAt3: cleared stale instructions at entry) =====
019cef9c  stp x20,x19,[sp, #-0x20]!
019cefa0  stp x29,x30,[sp, #0x10]
019cefa4  add x29,sp,#0x10
019cefa8  ldp x8,x9,[x2]
019cefac  mov x19,x0
019cefb0  add x0,x1,x9, ASR #0x1
019cefb4  tbz w9,#0x0,0x019cefc0
019cefb8  ldr x9,[x0]
019cefbc  ldr x8,[x9, x8, LSL #0x0]
019cefc0  blr x8
019cefc4  mov x8,x0
019cefc8  cbz x8,0x019cefe4
019cefcc  adrp x2,0x736d000
019cefd0  add x2,x2,#0xded
019cefd4  mov x0,x19
019cefd8  mov x1,x8
019cefdc  bl 0x0174cd64
019cefe0  b 0x019cefec
019cefe4  mov x0,x19
019cefe8  bl 0x01252b00
019cefec  mov w19,#0x1
019ceff0  ldp x29,x30,[sp, #0x10]
019ceff4  mov w0,w19
019ceff8  ldp x20,x19,[sp], #0x20
019ceffc  ret
