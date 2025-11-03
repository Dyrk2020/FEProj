// ===== case823_ActorBuff_sub19cd0ac_lv2_19cfb48 @ 019cfb48 (DecompileAt3: cleared stale instructions at entry) =====
019cfb48  str x23,[sp, #-0x40]!
019cfb4c  stp x22,x21,[sp, #0x10]
019cfb50  stp x20,x19,[sp, #0x20]
019cfb54  stp x29,x30,[sp, #0x30]
019cfb58  add x29,sp,#0x30
019cfb5c  mov x19,x0
019cfb60  ldrb w8,[x19]
019cfb64  mov w20,w1
019cfb68  cmp w8,w20, UXTB 
019cfb6c  b.eq 0x019cfc38
019cfb70  adrp x21,0x7319000
019cfb74  ldr x21,[x21, #0x548]
019cfb78  ldr x8,[x21]
019cfb7c  cbz x8,0x019cfbd0
019cfb80  mov x0,xzr
019cfb84  bl 0x01b4868c
019cfb88  tst w0,#0xff
019cfb8c  b.eq 0x019cfc34
019cfb90  ldrb w8,[x19]
019cfb94  cmp w8,w20, UXTB 
019cfb98  b.eq 0x019cfc34
019cfb9c  sub x21,x19,#0x234
019cfba0  ldr w8,[x21]
019cfba4  cmp w8,#0x1
019cfba8  b.lt 0x019cfc34
019cfbac  bl 0x01b4635c
019cfbb0  ldr w8,[x21]
019cfbb4  ldr x0,[x0, #0x38]
019cfbb8  mov w2,#0x24cc
019cfbbc  mov w1,w20
019cfbc0  add w8,w8,#0x96
019cfbc4  str w8,[x0, #0x10]
019cfbc8  bl 0x01b4907c
019cfbcc  b 0x019cfc34
019cfbd0  str x30,[x21]
019cfbd4  adrp x22,0x7317000
019cfbd8  ldr x22,[x22, #0xd28]
019cfbdc  mov x0,xzr
019cfbe0  strb wzr,[x22]
019cfbe4  bl 0x01b4868c
019cfbe8  tst w0,#0xff
019cfbec  b.eq 0x019cfc2c
019cfbf0  ldrb w8,[x19]
019cfbf4  cmp w8,w20, UXTB 
019cfbf8  b.eq 0x019cfc2c
019cfbfc  sub x23,x19,#0x234
019cfc00  ldr w8,[x23]
019cfc04  cmp w8,#0x1
019cfc08  b.lt 0x019cfc2c
019cfc0c  bl 0x01b4635c
019cfc10  ldr w8,[x23]
019cfc14  ldr x0,[x0, #0x38]
019cfc18  mov w2,#0x24cc
019cfc1c  mov w1,w20
019cfc20  add w8,w8,#0x96
019cfc24  str w8,[x0, #0x10]
019cfc28  bl 0x01b4907c
019cfc2c  strb wzr,[x22]
019cfc30  str xzr,[x21]
019cfc34  strb w20,[x19]
019cfc38  mov x0,x19
019cfc3c  ldp x29,x30,[sp, #0x30]
019cfc40  ldp x20,x19,[sp, #0x20]
019cfc44  ldp x22,x21,[sp, #0x10]
019cfc48  ldr x23,[sp], #0x40
019cfc4c  ret
