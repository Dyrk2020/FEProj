// ===== case850_ActorSkill_sub19eb760 @ 019eb760 (DecompileAt3: cleared stale instructions at entry) =====
019eb760  stp x20,x19,[sp, #-0x20]!
019eb764  stp x29,x30,[sp, #0x10]
019eb768  add x29,sp,#0x10
019eb76c  adrp x19,0x7319000
019eb770  ldr x19,[x19, #0x548]
019eb774  add x0,x0,#0x158
019eb778  ldr x8,[x19]
019eb77c  cbz x8,0x019eb794
019eb780  mov w2,wzr
019eb784  bl 0x019efe18
019eb788  ldp x29,x30,[sp, #0x10]
019eb78c  ldp x20,x19,[sp], #0x20
019eb790  ret
019eb794  str x30,[x19]
019eb798  adrp x20,0x7317000
019eb79c  ldr x20,[x20, #0xd28]
019eb7a0  mov w2,wzr
019eb7a4  strb wzr,[x20]
019eb7a8  bl 0x019efe18
019eb7ac  strb wzr,[x20]
019eb7b0  str xzr,[x19]
019eb7b4  ldp x29,x30,[sp, #0x10]
019eb7b8  ldp x20,x19,[sp], #0x20
019eb7bc  ret
