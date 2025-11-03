// ===== case850_ActorSkill_sub19e9fc4 @ 019e9fc4 (DecompileAt3: cleared stale instructions at entry) =====
019e9fc4  stp x20,x19,[sp, #-0x20]!
019e9fc8  stp x29,x30,[sp, #0x10]
019e9fcc  add x29,sp,#0x10
019e9fd0  adrp x19,0x7319000
019e9fd4  ldr x19,[x19, #0x548]
019e9fd8  add x0,x0,#0xc0
019e9fdc  ldr x8,[x19]
019e9fe0  cbz x8,0x019e9ff8
019e9fe4  mov w2,wzr
019e9fe8  bl 0x019ee4a0
019e9fec  ldp x29,x30,[sp, #0x10]
019e9ff0  ldp x20,x19,[sp], #0x20
019e9ff4  ret
019e9ff8  str x30,[x19]
019e9ffc  adrp x20,0x7317000
019ea000  ldr x20,[x20, #0xd28]
019ea004  mov w2,wzr
019ea008  b 0x019ea028
019ea00c  bl 0x019ee4a0
019ea010  strb wzr,[x20]
019ea014  str xzr,[x19]
019ea018  ldp x29,x30,[sp, #0x10]
019ea01c  ldp x20,x19,[sp], #0x20
019ea020  ret
