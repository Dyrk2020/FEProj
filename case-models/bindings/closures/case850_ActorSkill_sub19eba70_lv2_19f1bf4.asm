// ===== case850_ActorSkill_sub19eba70_lv2_19f1bf4 @ 019f1bf4 (DecompileAt3: cleared stale instructions at entry) =====
019f1bf4  str x23,[sp, #-0x40]!
019f1bf8  stp x22,x21,[sp, #0x10]
019f1bfc  stp x20,x19,[sp, #0x20]
019f1c00  stp x29,x30,[sp, #0x30]
019f1c04  add x29,sp,#0x30
019f1c08  mov x19,x0
019f1c0c  ldrb w8,[x19]
019f1c10  mov w20,w1
019f1c14  cmp w8,w20, UXTB 
019f1c18  b.eq 0x019f1d50
019f1c1c  adrp x21,0x7319000
019f1c20  ldr x21,[x21, #0x548]
019f1c24  ldr x8,[x21]
019f1c28  cbz x8,0x019f1c7c
019f1c2c  mov x0,xzr
019f1c30  bl 0x01b4868c
019f1c34  tst w0,#0xff
019f1c38  b.eq 0x019f1ce0
019f1c3c  ldrb w8,[x19]
019f1c40  cmp w8,w20, UXTB 
019f1c44  b.eq 0x019f1ce0
019f1c48  sub x21,x19,#0x6d5
019f1c4c  ldr w8,[x21]
019f1c50  cmp w8,#0x1
019f1c54  b.lt 0x019f1ce0
019f1c58  bl 0x01b4635c
019f1c5c  ldr w8,[x21]
019f1c60  ldr x0,[x0, #0x38]
019f1c64  mov w2,#0x891
019f1c68  mov w1,w20
019f1c6c  add w8,w8,#0x163
019f1c70  str w8,[x0, #0x10]
019f1c74  bl 0x01b4907c
019f1c78  b 0x019f1ce0
019f1c7c  str x30,[x21]
019f1c80  adrp x22,0x7317000
019f1c84  ldr x22,[x22, #0xd28]
019f1c88  mov x0,xzr
019f1c8c  strb wzr,[x22]
019f1c90  bl 0x01b4868c
019f1c94  tst w0,#0xff
019f1c98  b.eq 0x019f1cd8
019f1c9c  ldrb w8,[x19]
019f1ca0  cmp w8,w20, UXTB 
019f1ca4  b.eq 0x019f1cd8
019f1ca8  sub x23,x19,#0x6d5
019f1cac  ldr w8,[x23]
019f1cb0  cmp w8,#0x1
019f1cb4  b.lt 0x019f1cd8
019f1cb8  bl 0x01b4635c
019f1cbc  ldr w8,[x23]
019f1cc0  ldr x0,[x0, #0x38]
019f1cc4  mov w2,#0x891
019f1cc8  mov w1,w20
019f1ccc  add w8,w8,#0x163
019f1cd0  str w8,[x0, #0x10]
019f1cd4  bl 0x01b4907c
019f1cd8  strb wzr,[x22]
019f1cdc  str xzr,[x21]
019f1ce0  strb w20,[x19]
019f1ce4  sub x8,x19,#0x6d9
019f1ce8  ldr w9,[x8]
019f1cec  mov w8,w9
019f1cf0  tbz w9,#0x1f,0x019f1d00
019f1cf4  sub x8,x19,#0x6e1
019f1cf8  sub x8,x8,w9, SXTH 
019f1cfc  ldr w8,[x8]
019f1d00  ubfx w10,w9,#0x10,#0xf
019f1d04  cmp w9,#0x0
019f1d08  csel w1,wzr,w10,ge
019f1d0c  strb w20,[sp, #0xc]
019f1d10  tbnz w8,#0x1f,0x019f1d2c
019f1d14  cbz w8,0x019f1d50
019f1d18  mov w2,#0x31
019f1d1c  add x3,sp,#0xc
019f1d20  mov w0,w8
019f1d24  bl 0x01b1d810
019f1d28  b 0x019f1d50
019f1d2c  mov x3,#0x6472
019f1d30  adrp x2,0x574b000
019f1d34  movk x3,#0x7474, LSL #16
019f1d38  add x2,x2,#0x398
019f1d3c  mov w1,#0x1
019f1d40  movk x3,#0x100, LSL #48
019f1d44  mov w0,wzr
019f1d48  mov w4,w8
019f1d4c  bl 0x01b83618
019f1d50  mov x0,x19
019f1d54  ldp x29,x30,[sp, #0x30]
019f1d58  ldp x20,x19,[sp, #0x20]
019f1d5c  ldp x22,x21,[sp, #0x10]
019f1d60  ldr x23,[sp], #0x40
019f1d64  ret
