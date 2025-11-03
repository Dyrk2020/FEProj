// ===== case850_ActorSkill_sub19eba4c_lv2_19f1a80 @ 019f1a80 (DecompileAt3: cleared stale instructions at entry) =====
019f1a80  str x23,[sp, #-0x40]!
019f1a84  stp x22,x21,[sp, #0x10]
019f1a88  stp x20,x19,[sp, #0x20]
019f1a8c  stp x29,x30,[sp, #0x30]
019f1a90  add x29,sp,#0x30
019f1a94  mov x19,x0
019f1a98  ldrb w8,[x19]
019f1a9c  mov w20,w1
019f1aa0  cmp w8,w20, UXTB 
019f1aa4  b.eq 0x019f1bdc
019f1aa8  adrp x21,0x7319000
019f1aac  ldr x21,[x21, #0x548]
019f1ab0  ldr x8,[x21]
019f1ab4  cbz x8,0x019f1b08
019f1ab8  mov x0,xzr
019f1abc  bl 0x01b4868c
019f1ac0  tst w0,#0xff
019f1ac4  b.eq 0x019f1b6c
019f1ac8  ldrb w8,[x19]
019f1acc  cmp w8,w20, UXTB 
019f1ad0  b.eq 0x019f1b6c
019f1ad4  sub x21,x19,#0x6d4
019f1ad8  ldr w8,[x21]
019f1adc  cmp w8,#0x1
019f1ae0  b.lt 0x019f1b6c
019f1ae4  bl 0x01b4635c
019f1ae8  ldr w8,[x21]
019f1aec  ldr x0,[x0, #0x38]
019f1af0  mov w2,#0x88f
019f1af4  mov w1,w20
019f1af8  add w8,w8,#0x162
019f1afc  str w8,[x0, #0x10]
019f1b00  bl 0x01b4907c
019f1b04  b 0x019f1b6c
019f1b08  str x30,[x21]
019f1b0c  adrp x22,0x7317000
019f1b10  ldr x22,[x22, #0xd28]
019f1b14  mov x0,xzr
019f1b18  strb wzr,[x22]
019f1b1c  bl 0x01b4868c
019f1b20  tst w0,#0xff
019f1b24  b.eq 0x019f1b64
019f1b28  ldrb w8,[x19]
019f1b2c  cmp w8,w20, UXTB 
019f1b30  b.eq 0x019f1b64
019f1b34  sub x23,x19,#0x6d4
019f1b38  ldr w8,[x23]
019f1b3c  cmp w8,#0x1
019f1b40  b.lt 0x019f1b64
019f1b44  bl 0x01b4635c
019f1b48  ldr w8,[x23]
019f1b4c  ldr x0,[x0, #0x38]
019f1b50  mov w2,#0x88f
019f1b54  mov w1,w20
019f1b58  add w8,w8,#0x162
019f1b5c  str w8,[x0, #0x10]
019f1b60  bl 0x01b4907c
019f1b64  strb wzr,[x22]
019f1b68  str xzr,[x21]
019f1b6c  strb w20,[x19]
019f1b70  sub x8,x19,#0x6d8
019f1b74  ldr w9,[x8]
019f1b78  mov w8,w9
019f1b7c  tbz w9,#0x1f,0x019f1b8c
019f1b80  sub x8,x19,#0x6e0
019f1b84  sub x8,x8,w9, SXTH 
019f1b88  ldr w8,[x8]
019f1b8c  ubfx w10,w9,#0x10,#0xf
019f1b90  cmp w9,#0x0
019f1b94  csel w1,wzr,w10,ge
019f1b98  strb w20,[sp, #0xc]
019f1b9c  tbnz w8,#0x1f,0x019f1bb8
019f1ba0  cbz w8,0x019f1bdc
019f1ba4  orr w2,wzr,#0x30
019f1ba8  add x3,sp,#0xc
019f1bac  mov w0,w8
019f1bb0  bl 0x01b1d810
019f1bb4  b 0x019f1bdc
019f1bb8  mov x3,#0x6472
019f1bbc  adrp x2,0x574b000
019f1bc0  movk x3,#0x7474, LSL #16
019f1bc4  add x2,x2,#0x398
019f1bc8  mov w1,#0x1
019f1bcc  movk x3,#0x100, LSL #48
019f1bd0  mov w0,wzr
019f1bd4  mov w4,w8
019f1bd8  bl 0x01b83618
019f1bdc  mov x0,x19
019f1be0  ldp x29,x30,[sp, #0x30]
019f1be4  ldp x20,x19,[sp, #0x20]
019f1be8  ldp x22,x21,[sp, #0x10]
019f1bec  ldr x23,[sp], #0x40
019f1bf0  ret
