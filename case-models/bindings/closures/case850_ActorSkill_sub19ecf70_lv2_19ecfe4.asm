// ===== case850_ActorSkill_sub19ecf70_lv2_19ecfe4 @ 019ecfe4 (DecompileAt3: cleared stale instructions at entry) =====
019ecfe4  stp x20,x19,[sp, #-0x20]!
019ecfe8  stp x29,x30,[sp, #0x10]
019ecfec  add x29,sp,#0x10
019ecff0  ldp x8,x9,[x2]
019ecff4  mov x19,x0
019ecff8  add x0,x1,x9, ASR #0x1
019ecffc  tbz w9,#0x0,0x019ed008
019ed000  ldr x9,[x0]
019ed004  ldr x8,[x9, x8, LSL #0x0]
019ed008  blr x8
019ed00c  mov x8,x0
019ed010  cbz x8,0x019ed02c
019ed014  adrp x2,0x736d000
019ed018  add x2,x2,#0x213
019ed01c  mov x0,x19
019ed020  mov x1,x8
019ed024  bl 0x0174cd64
019ed028  b 0x019ed034
019ed02c  mov x0,x19
019ed030  bl 0x01252b00
019ed034  mov w19,#0x1
019ed038  ldp x29,x30,[sp, #0x10]
019ed03c  mov w0,w19
019ed040  ldp x20,x19,[sp], #0x20
019ed044  ret
