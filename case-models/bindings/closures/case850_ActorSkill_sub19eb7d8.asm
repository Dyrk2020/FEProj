// ===== case850_ActorSkill_sub19eb7d8 @ 019eb7d8 (DecompileAt3: cleared stale instructions at entry) =====
019eb7d8  stp x20,x19,[sp, #-0x20]!
019eb7dc  stp x29,x30,[sp, #0x10]
019eb7e0  add x29,sp,#0x10
019eb7e4  adrp x19,0x7319000
019eb7e8  ldr x19,[x19, #0x548]
019eb7ec  add x0,x0,#0x170
019eb7f0  ldr x8,[x19]
019eb7f4  cbz x8,0x019eb80c
019eb7f8  mov w2,wzr
019eb7fc  bl 0x019eff94
019eb800  ldp x29,x30,[sp, #0x10]
019eb804  ldp x20,x19,[sp], #0x20
019eb808  ret
019eb80c  str x30,[x19]
019eb810  adrp x20,0x7317000
019eb814  ldr x20,[x20, #0xd28]
019eb818  mov w2,wzr
019eb81c  strb wzr,[x20]
019eb820  bl 0x019eff94
019eb824  strb wzr,[x20]
019eb828  str xzr,[x19]
019eb82c  ldp x29,x30,[sp, #0x10]
019eb830  ldp x20,x19,[sp], #0x20
019eb834  ret
