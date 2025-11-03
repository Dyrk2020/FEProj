// ===== case744_BuffResObject_sub1984030_lv2_19840a4 @ 019840a4 (DecompileAt3: cleared stale instructions at entry) =====
019840a4  stp x20,x19,[sp, #-0x20]!
019840a8  stp x29,x30,[sp, #0x10]
019840ac  add x29,sp,#0x10
019840b0  ldp x8,x9,[x2]
019840b4  mov x19,x0
019840b8  add x0,x1,x9, ASR #0x1
019840bc  tbz w9,#0x0,0x019840c8
019840c0  ldr x9,[x0]
019840c4  ldr x8,[x9, x8, LSL #0x0]
019840c8  blr x8
019840cc  mov x8,x0
019840d0  cbz x8,0x019840ec
019840d4  adrp x2,0x736d000
019840d8  add x2,x2,#0x963
019840dc  mov x0,x19
019840e0  mov x1,x8
019840e4  bl 0x0174cd64
019840e8  b 0x019840f4
019840ec  mov x0,x19
019840f0  bl 0x01252b00
019840f4  mov w19,#0x1
019840f8  ldp x29,x30,[sp, #0x10]
019840fc  mov w0,w19
01984100  ldp x20,x19,[sp], #0x20
01984104  ret
