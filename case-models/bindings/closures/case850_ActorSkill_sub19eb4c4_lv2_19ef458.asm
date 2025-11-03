// ===== case850_ActorSkill_sub19eb4c4_lv2_19ef458 @ 019ef458 (DecompileAt3: cleared stale instructions at entry) =====
019ef458  str x23,[sp, #-0x40]!
019ef45c  stp x22,x21,[sp, #0x10]
019ef460  stp x20,x19,[sp, #0x20]
019ef464  stp x29,x30,[sp, #0x30]
019ef468  add x29,sp,#0x30
019ef46c  mov x19,x0
019ef470  ldr x8,[x19]
019ef474  mov x20,x1
019ef478  cmp x8,x20
019ef47c  b.eq 0x019ef5bc
019ef480  adrp x21,0x7319000
019ef484  ldr x21,[x21, #0x548]
019ef488  ldr x8,[x21]
019ef48c  cbz x8,0x019ef4e4
019ef490  mov x0,xzr
019ef494  bl 0x01b4868c
019ef498  tst w0,#0xff
019ef49c  b.eq 0x019ef54c
019ef4a0  ldr x8,[x19]
019ef4a4  cmp x8,x20
019ef4a8  b.eq 0x019ef54c
019ef4ac  sub x8,x19,#0x124
019ef4b0  ldr w8,[x8]
019ef4b4  cmp w8,#0x1
019ef4b8  b.lt 0x019ef54c
019ef4bc  sub x21,x19,#0x130
019ef4c0  bl 0x01b4635c
019ef4c4  ldr w8,[x21, #0xc]
019ef4c8  ldr x0,[x0, #0x38]
019ef4cc  mov w2,#0x82f
019ef4d0  mov x1,x20
019ef4d4  add w8,w8,#0xa5
019ef4d8  str w8,[x0, #0x10]
019ef4dc  bl 0x01b490bc
019ef4e0  b 0x019ef54c
019ef4e4  str x30,[x21]
019ef4e8  adrp x22,0x7317000
019ef4ec  ldr x22,[x22, #0xd28]
019ef4f0  mov x0,xzr
019ef4f4  strb wzr,[x22]
019ef4f8  bl 0x01b4868c
019ef4fc  tst w0,#0xff
019ef500  b.eq 0x019ef544
019ef504  ldr x8,[x19]
019ef508  cmp x8,x20
019ef50c  b.eq 0x019ef544
019ef510  sub x8,x19,#0x124
019ef514  ldr w8,[x8]
019ef518  cmp w8,#0x1
019ef51c  b.lt 0x019ef544
019ef520  sub x23,x19,#0x130
019ef524  bl 0x01b4635c
019ef528  ldr w8,[x23, #0xc]
019ef52c  ldr x0,[x0, #0x38]
019ef530  mov w2,#0x82f
019ef534  mov x1,x20
019ef538  add w8,w8,#0xa5
019ef53c  str w8,[x0, #0x10]
019ef540  bl 0x01b490bc
019ef544  strb wzr,[x22]
019ef548  str xzr,[x21]
019ef54c  str x20,[x19]
019ef550  sub x8,x19,#0x128
019ef554  ldr w9,[x8]
019ef558  mov w8,w9
019ef55c  tbz w9,#0x1f,0x019ef56c
019ef560  sub x8,x19,#0x130
019ef564  sub x8,x8,w9, SXTH 
019ef568  ldr w8,[x8]
019ef56c  ubfx w10,w9,#0x10,#0xf
019ef570  cmp w9,#0x0
019ef574  csel w1,wzr,w10,ge
019ef578  str x20,[sp, #0x8]
019ef57c  tbnz w8,#0x1f,0x019ef598
019ef580  cbz w8,0x019ef5bc
019ef584  mov w2,#0x1b
019ef588  add x3,sp,#0x8
019ef58c  mov w0,w8
019ef590  bl 0x01b1d968
019ef594  b 0x019ef5bc
019ef598  mov x3,#0x6472
019ef59c  adrp x2,0x574b000
019ef5a0  movk x3,#0x7474, LSL #16
019ef5a4  add x2,x2,#0x398
019ef5a8  mov w1,#0x1
019ef5ac  movk x3,#0x100, LSL #48
019ef5b0  mov w0,wzr
019ef5b4  mov w4,w8
019ef5b8  bl 0x01b83618
019ef5bc  mov x0,x19
019ef5c0  ldp x29,x30,[sp, #0x30]
019ef5c4  ldp x20,x19,[sp, #0x20]
019ef5c8  ldp x22,x21,[sp, #0x10]
019ef5cc  ldr x23,[sp], #0x40
019ef5d0  ret
