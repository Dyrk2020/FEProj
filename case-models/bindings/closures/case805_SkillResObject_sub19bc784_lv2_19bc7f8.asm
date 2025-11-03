// ===== case805_SkillResObject_sub19bc784_lv2_19bc7f8 @ 019bc7f8 (DecompileAt3: cleared stale instructions at entry) =====
019bc7f8  stp x20,x19,[sp, #-0x20]!
019bc7fc  stp x29,x30,[sp, #0x10]
019bc800  add x29,sp,#0x10
019bc804  ldp x8,x9,[x2]
019bc808  mov x19,x0
019bc80c  add x0,x1,x9, ASR #0x1
019bc810  tbz w9,#0x0,0x019bc81c
019bc814  ldr x9,[x0]
019bc818  ldr x8,[x9, x8, LSL #0x0]
019bc81c  blr x8
019bc820  mov x8,x0
019bc824  cbz x8,0x019bc840
019bc828  adrp x2,0x736d000
019bc82c  add x2,x2,#0x963
019bc830  mov x0,x19
019bc834  mov x1,x8
019bc838  bl 0x0174cd64
019bc83c  b 0x019bc848
019bc840  mov x0,x19
019bc844  bl 0x01252b00
019bc848  mov w19,#0x1
019bc84c  ldp x29,x30,[sp, #0x10]
019bc850  mov w0,w19
019bc854  ldp x20,x19,[sp], #0x20
019bc858  ret
