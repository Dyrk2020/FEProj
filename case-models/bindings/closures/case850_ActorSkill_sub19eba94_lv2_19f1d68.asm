// ===== case850_ActorSkill_sub19eba94_lv2_19f1d68 @ 019f1d68 (DecompileAt3: cleared stale instructions at entry) =====
019f1d68  str x23,[sp, #-0x40]!
019f1d6c  stp x22,x21,[sp, #0x10]
019f1d70  stp x20,x19,[sp, #0x20]
019f1d74  stp x29,x30,[sp, #0x30]
019f1d78  add x29,sp,#0x30
019f1d7c  mov x19,x0
019f1d80  ldrb w8,[x19]
019f1d84  mov w20,w1
019f1d88  cmp w8,w20, UXTB 
019f1d8c  b.eq 0x019f1ec4
019f1d90  adrp x21,0x7319000
019f1d94  ldr x21,[x21, #0x548]
019f1d98  ldr x8,[x21]
019f1d9c  cbz x8,0x019f1df0
019f1da0  mov x0,xzr
019f1da4  bl 0x01b4868c
019f1da8  tst w0,#0xff
019f1dac  b.eq 0x019f1e54
019f1db0  ldrb w8,[x19]
019f1db4  cmp w8,w20, UXTB 
019f1db8  b.eq 0x019f1e54
019f1dbc  sub x21,x19,#0x6d6
019f1dc0  ldr w8,[x21]
019f1dc4  cmp w8,#0x1
019f1dc8  b.lt 0x019f1e54
019f1dcc  bl 0x01b4635c
019f1dd0  ldr w8,[x21]
019f1dd4  ldr x0,[x0, #0x38]
019f1dd8  mov w2,#0x893
019f1ddc  mov w1,w20
019f1de0  add w8,w8,#0x164
019f1de4  str w8,[x0, #0x10]
019f1de8  bl 0x01b4907c
019f1dec  b 0x019f1e54
019f1df0  str x30,[x21]
019f1df4  adrp x22,0x7317000
019f1df8  ldr x22,[x22, #0xd28]
019f1dfc  mov x0,xzr
019f1e00  strb wzr,[x22]
019f1e04  bl 0x01b4868c
019f1e08  tst w0,#0xff
019f1e0c  b.eq 0x019f1e4c
019f1e10  ldrb w8,[x19]
019f1e14  cmp w8,w20, UXTB 
019f1e18  b.eq 0x019f1e4c
019f1e1c  sub x23,x19,#0x6d6
019f1e20  ldr w8,[x23]
019f1e24  cmp w8,#0x1
019f1e28  b.lt 0x019f1e4c
019f1e2c  bl 0x01b4635c
019f1e30  ldr w8,[x23]
019f1e34  ldr x0,[x0, #0x38]
019f1e38  mov w2,#0x893
019f1e3c  mov w1,w20
019f1e40  add w8,w8,#0x164
019f1e44  str w8,[x0, #0x10]
019f1e48  bl 0x01b4907c
019f1e4c  strb wzr,[x22]
019f1e50  str xzr,[x21]
019f1e54  strb w20,[x19]
019f1e58  sub x8,x19,#0x6da
019f1e5c  ldr w9,[x8]
019f1e60  mov w8,w9
019f1e64  tbz w9,#0x1f,0x019f1e74
019f1e68  sub x8,x19,#0x6e2
019f1e6c  sub x8,x8,w9, SXTH 
019f1e70  ldr w8,[x8]
019f1e74  ubfx w10,w9,#0x10,#0xf
019f1e78  cmp w9,#0x0
019f1e7c  csel w1,wzr,w10,ge
019f1e80  strb w20,[sp, #0xc]
019f1e84  tbnz w8,#0x1f,0x019f1ea0
019f1e88  cbz w8,0x019f1ec4
019f1e8c  mov w2,#0x32
019f1e90  add x3,sp,#0xc
019f1e94  mov w0,w8
019f1e98  bl 0x01b1d810
019f1e9c  b 0x019f1ec4
019f1ea0  mov x3,#0x6472
019f1ea4  adrp x2,0x574b000
019f1ea8  movk x3,#0x7474, LSL #16
019f1eac  add x2,x2,#0x398
019f1eb0  mov w1,#0x1
019f1eb4  movk x3,#0x100, LSL #48
019f1eb8  mov w0,wzr
019f1ebc  mov w4,w8
019f1ec0  bl 0x01b83618
019f1ec4  mov x0,x19
019f1ec8  ldp x29,x30,[sp, #0x30]
019f1ecc  ldp x20,x19,[sp, #0x20]
019f1ed0  ldp x22,x21,[sp, #0x10]
019f1ed4  ldr x23,[sp], #0x40
019f1ed8  ret
