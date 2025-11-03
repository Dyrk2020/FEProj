// ===== case744_BuffResObject_sub1983f0c_lv2_1983f80 @ 01983f80 (DecompileAt3: cleared stale instructions at entry) =====
01983f80  stp x20,x19,[sp, #-0x20]!
01983f84  stp x29,x30,[sp, #0x10]
01983f88  add x29,sp,#0x10
01983f8c  ldp x8,x9,[x2]
01983f90  mov x19,x0
01983f94  add x0,x1,x9, ASR #0x1
01983f98  tbz w9,#0x0,0x01983fa4
01983f9c  ldr x9,[x0]
01983fa0  ldr x8,[x9, x8, LSL #0x0]
01983fa4  blr x8
01983fa8  mov x8,x0
01983fac  cbz x8,0x01983fc8
01983fb0  adrp x2,0x736d000
01983fb4  add x2,x2,#0x403
01983fb8  mov x0,x19
01983fbc  mov x1,x8
01983fc0  bl 0x0174cd64
01983fc4  b 0x01983fd0
01983fc8  mov x0,x19
01983fcc  bl 0x01252b00
01983fd0  mov w19,#0x1
01983fd4  ldp x29,x30,[sp, #0x10]
01983fd8  mov w0,w19
01983fdc  ldp x20,x19,[sp], #0x20
01983fe0  ret
