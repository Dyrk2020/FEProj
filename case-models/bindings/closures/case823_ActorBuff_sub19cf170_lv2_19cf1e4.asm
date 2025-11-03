// ===== case823_ActorBuff_sub19cf170_lv2_19cf1e4 @ 019cf1e4 (DecompileAt3: cleared stale instructions at entry) =====
019cf1e4  stp x20,x19,[sp, #-0x20]!
019cf1e8  stp x29,x30,[sp, #0x10]
019cf1ec  add x29,sp,#0x10
019cf1f0  ldp x8,x9,[x2]
019cf1f4  mov x19,x0
019cf1f8  add x0,x1,x9, ASR #0x1
019cf1fc  tbz w9,#0x0,0x019cf208
019cf200  ldr x9,[x0]
019cf204  ldr x8,[x9, x8, LSL #0x0]
019cf208  blr x8
019cf20c  mov x8,x0
019cf210  cbz x8,0x019cf22c
019cf214  adrp x2,0x736d000
019cf218  add x2,x2,#0xdee
019cf21c  mov x0,x19
019cf220  mov x1,x8
019cf224  bl 0x0174cd64
019cf228  b 0x019cf234
019cf22c  mov x0,x19
019cf230  bl 0x01252b00
019cf234  mov w19,#0x1
019cf238  ldp x29,x30,[sp, #0x10]
019cf23c  mov w0,w19
019cf240  ldp x20,x19,[sp], #0x20
019cf244  ret
