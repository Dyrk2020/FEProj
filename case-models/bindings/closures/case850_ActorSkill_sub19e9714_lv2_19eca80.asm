// ===== case850_ActorSkill_sub19e9714_lv2_19eca80 @ 019eca80 (DecompileAt3: cleared stale instructions at entry) =====
019eca80  sub sp,sp,#0x40
019eca84  stp x22,x21,[sp, #0x10]
019eca88  stp x20,x19,[sp, #0x20]
019eca8c  stp x29,x30,[sp, #0x30]
019eca90  add x29,sp,#0x30
019eca94  mov x19,x0
019eca98  ldrb w8,[x19]
019eca9c  mov w20,w1
019ecaa0  cmp w8,w20, UXTB 
019ecaa4  b.eq 0x019ecbd0
019ecaa8  adrp x21,0x7319000
019ecaac  ldr x21,[x21, #0x548]
019ecab0  ldr x8,[x21]
019ecab4  cbz x8,0x019ecb04
019ecab8  mov x0,xzr
019ecabc  bl 0x01b4868c
019ecac0  tst w0,#0xff
019ecac4  b.eq 0x019ecb64
019ecac8  ldrb w8,[x19]
019ecacc  cmp w8,w20, UXTB 
019ecad0  b.eq 0x019ecb64
019ecad4  ldur w8,[x19, #-0x12]
019ecad8  cmp w8,#0x1
019ecadc  b.lt 0x019ecb64
019ecae0  bl 0x01b4635c
019ecae4  ldur w8,[x19, #-0x12]
019ecae8  ldr x0,[x0, #0x38]
019ecaec  mov w2,#0x7f5
019ecaf0  mov w1,w20
019ecaf4  add w8,w8,#0x9
019ecaf8  str w8,[x0, #0x10]
019ecafc  bl 0x01b4907c
019ecb00  b 0x019ecb64
019ecb04  str x30,[x21]
019ecb08  adrp x22,0x7317000
019ecb0c  ldr x22,[x22, #0xd28]
019ecb10  mov x0,xzr
019ecb14  strb wzr,[x22]
019ecb18  bl 0x01b4868c
019ecb1c  tst w0,#0xff
019ecb20  b.eq 0x019ecb5c
019ecb24  ldrb w8,[x19]
019ecb28  cmp w8,w20, UXTB 
019ecb2c  b.eq 0x019ecb5c
019ecb30  ldur w8,[x19, #-0x12]
019ecb34  cmp w8,#0x1
019ecb38  b.lt 0x019ecb5c
019ecb3c  bl 0x01b4635c
019ecb40  ldur w8,[x19, #-0x12]
019ecb44  ldr x0,[x0, #0x38]
019ecb48  mov w2,#0x7f5
019ecb4c  mov w1,w20
019ecb50  add w8,w8,#0x9
019ecb54  str w8,[x0, #0x10]
019ecb58  bl 0x01b4907c
019ecb5c  strb wzr,[x22]
019ecb60  str xzr,[x21]
019ecb64  ldur w9,[x19, #-0x16]
019ecb68  strb w20,[x19]
019ecb6c  mov w8,w9
019ecb70  tbz w9,#0x1f,0x019ecb80
019ecb74  sub x8,x19,#0x1e
019ecb78  sub x8,x8,w9, SXTH 
019ecb7c  ldr w8,[x8]
019ecb80  ubfx w10,w9,#0x10,#0xf
019ecb84  cmp w9,#0x0
019ecb88  csel w1,wzr,w10,ge
019ecb8c  strb w20,[sp, #0xc]
019ecb90  tbnz w8,#0x1f,0x019ecbac
019ecb94  cbz w8,0x019ecbd0
019ecb98  mov w2,#0x5
019ecb9c  add x3,sp,#0xc
019ecba0  mov w0,w8
019ecba4  bl 0x01b1d810
019ecba8  b 0x019ecbd0
019ecbac  mov x3,#0x6472
019ecbb0  adrp x2,0x574b000
019ecbb4  movk x3,#0x7474, LSL #16
019ecbb8  add x2,x2,#0x398
019ecbbc  mov w1,#0x1
019ecbc0  movk x3,#0x100, LSL #48
019ecbc4  mov w0,wzr
019ecbc8  mov w4,w8
019ecbcc  bl 0x01b83618
019ecbd0  mov x0,x19
019ecbd4  ldp x29,x30,[sp, #0x30]
019ecbd8  ldp x20,x19,[sp, #0x20]
019ecbdc  ldp x22,x21,[sp, #0x10]
019ecbe0  add sp,sp,#0x40
019ecbe4  ret
