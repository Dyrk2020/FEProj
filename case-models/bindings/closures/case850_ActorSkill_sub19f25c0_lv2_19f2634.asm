// ===== case850_ActorSkill_sub19f25c0_lv2_19f2634 @ 019f2634 (DecompileAt3: cleared stale instructions at entry) =====
019f2634  stp x20,x19,[sp, #-0x20]!
019f2638  stp x29,x30,[sp, #0x10]
019f263c  add x29,sp,#0x10
019f2640  ldp x8,x9,[x2]
019f2644  mov x19,x0
019f2648  add x0,x1,x9, ASR #0x1
019f264c  tbz w9,#0x0,0x019f2658
019f2650  ldr x9,[x0]
019f2654  ldr x8,[x9, x8, LSL #0x0]
019f2658  blr x8
019f265c  mov x8,x0
019f2660  cbz x8,0x019f267c
019f2664  adrp x2,0x736d000
019f2668  add x2,x2,#0xd72
019f266c  mov x0,x19
019f2670  mov x1,x8
019f2674  bl 0x0174cd64
019f2678  b 0x019f2684
019f267c  mov x0,x19
019f2680  bl 0x01252b00
019f2684  mov w19,#0x1
019f2688  ldp x29,x30,[sp, #0x10]
019f268c  mov w0,w19
019f2690  ldp x20,x19,[sp], #0x20
019f2694  ret
