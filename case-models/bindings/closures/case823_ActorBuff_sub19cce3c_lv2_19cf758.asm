// ===== case823_ActorBuff_sub19cce3c_lv2_19cf758 @ 019cf758 (DecompileAt3: cleared stale instructions at entry) =====
019cf758  str x23,[sp, #-0x40]!
019cf75c  stp x22,x21,[sp, #0x10]
019cf760  stp x20,x19,[sp, #0x20]
019cf764  stp x29,x30,[sp, #0x30]
019cf768  add x29,sp,#0x30
019cf76c  mov x19,x0
019cf770  ldr x8,[x19]
019cf774  mov x20,x1
019cf778  cmp x8,x20
019cf77c  b.eq 0x019cf8bc
019cf780  adrp x21,0x7319000
019cf784  ldr x21,[x21, #0x548]
019cf788  ldr x8,[x21]
019cf78c  cbz x8,0x019cf7e4
019cf790  mov x0,xzr
019cf794  bl 0x01b4868c
019cf798  tst w0,#0xff
019cf79c  b.eq 0x019cf84c
019cf7a0  ldr x8,[x19]
019cf7a4  cmp x8,x20
019cf7a8  b.eq 0x019cf84c
019cf7ac  sub x8,x19,#0x20c
019cf7b0  ldr w8,[x8]
019cf7b4  cmp w8,#0x1
019cf7b8  b.lt 0x019cf84c
019cf7bc  sub x21,x19,#0x218
019cf7c0  bl 0x01b4635c
019cf7c4  ldr w8,[x21, #0xc]
019cf7c8  ldr x0,[x0, #0x38]
019cf7cc  mov w2,#0x24ca
019cf7d0  mov x1,x20
019cf7d4  add w8,w8,#0x8e
019cf7d8  str w8,[x0, #0x10]
019cf7dc  bl 0x01b490bc
019cf7e0  b 0x019cf84c
019cf7e4  str x30,[x21]
019cf7e8  adrp x22,0x7317000
019cf7ec  ldr x22,[x22, #0xd28]
019cf7f0  mov x0,xzr
019cf7f4  strb wzr,[x22]
019cf7f8  bl 0x01b4868c
019cf7fc  tst w0,#0xff
019cf800  b.eq 0x019cf844
019cf804  ldr x8,[x19]
019cf808  cmp x8,x20
019cf80c  b.eq 0x019cf844
019cf810  sub x8,x19,#0x20c
019cf814  ldr w8,[x8]
019cf818  cmp w8,#0x1
019cf81c  b.lt 0x019cf844
019cf820  sub x23,x19,#0x218
019cf824  bl 0x01b4635c
019cf828  ldr w8,[x23, #0xc]
019cf82c  ldr x0,[x0, #0x38]
019cf830  mov w2,#0x24ca
019cf834  mov x1,x20
019cf838  add w8,w8,#0x8e
019cf83c  str w8,[x0, #0x10]
019cf840  bl 0x01b490bc
019cf844  strb wzr,[x22]
019cf848  str xzr,[x21]
019cf84c  str x20,[x19]
019cf850  sub x8,x19,#0x210
019cf854  ldr w9,[x8]
019cf858  mov w8,w9
019cf85c  tbz w9,#0x1f,0x019cf86c
019cf860  sub x8,x19,#0x218
019cf864  sub x8,x8,w9, SXTH 
019cf868  ldr w8,[x8]
019cf86c  ubfx w10,w9,#0x10,#0xf
019cf870  cmp w9,#0x0
019cf874  csel w1,wzr,w10,ge
019cf878  str x20,[sp, #0x8]
019cf87c  tbnz w8,#0x1f,0x019cf898
019cf880  cbz w8,0x019cf8bc
019cf884  mov w2,#0x11
019cf888  add x3,sp,#0x8
019cf88c  mov w0,w8
019cf890  bl 0x01b1d968
019cf894  b 0x019cf8bc
019cf898  mov x3,#0x6472
019cf89c  adrp x2,0x574b000
019cf8a0  movk x3,#0x7474, LSL #16
019cf8a4  add x2,x2,#0x398
019cf8a8  mov w1,#0x1
019cf8ac  movk x3,#0x100, LSL #48
019cf8b0  mov w0,wzr
019cf8b4  mov w4,w8
019cf8b8  bl 0x01b83618
019cf8bc  mov x0,x19
019cf8c0  ldp x29,x30,[sp, #0x30]
019cf8c4  ldp x20,x19,[sp, #0x20]
019cf8c8  ldp x22,x21,[sp, #0x10]
019cf8cc  ldr x23,[sp], #0x40
019cf8d0  ret
