// ===== case823_ActorBuff_sub19ccd98_lv2_19cf5e4 @ 019cf5e4 (DecompileAt3: cleared stale instructions at entry) =====
019cf5e4  str x23,[sp, #-0x40]!
019cf5e8  stp x22,x21,[sp, #0x10]
019cf5ec  stp x20,x19,[sp, #0x20]
019cf5f0  stp x29,x30,[sp, #0x30]
019cf5f4  add x29,sp,#0x30
019cf5f8  mov x19,x0
019cf5fc  ldrb w8,[x19]
019cf600  mov w20,w1
019cf604  cmp w8,w20, UXTB 
019cf608  b.eq 0x019cf740
019cf60c  adrp x21,0x7319000
019cf610  ldr x21,[x21, #0x548]
019cf614  ldr x8,[x21]
019cf618  cbz x8,0x019cf66c
019cf61c  mov x0,xzr
019cf620  bl 0x01b4868c
019cf624  tst w0,#0xff
019cf628  b.eq 0x019cf6d0
019cf62c  ldrb w8,[x19]
019cf630  cmp w8,w20, UXTB 
019cf634  b.eq 0x019cf6d0
019cf638  sub x21,x19,#0x1ec
019cf63c  ldr w8,[x21]
019cf640  cmp w8,#0x1
019cf644  b.lt 0x019cf6d0
019cf648  bl 0x01b4635c
019cf64c  ldr w8,[x21]
019cf650  ldr x0,[x0, #0x38]
019cf654  mov w2,#0x24c8
019cf658  mov w1,w20
019cf65c  add w8,w8,#0x8d
019cf660  str w8,[x0, #0x10]
019cf664  bl 0x01b4907c
019cf668  b 0x019cf6d0
019cf66c  str x30,[x21]
019cf670  adrp x22,0x7317000
019cf674  ldr x22,[x22, #0xd28]
019cf678  mov x0,xzr
019cf67c  strb wzr,[x22]
019cf680  bl 0x01b4868c
019cf684  tst w0,#0xff
019cf688  b.eq 0x019cf6c8
019cf68c  ldrb w8,[x19]
019cf690  cmp w8,w20, UXTB 
019cf694  b.eq 0x019cf6c8
019cf698  sub x23,x19,#0x1ec
019cf69c  ldr w8,[x23]
019cf6a0  cmp w8,#0x1
019cf6a4  b.lt 0x019cf6c8
019cf6a8  bl 0x01b4635c
019cf6ac  ldr w8,[x23]
019cf6b0  ldr x0,[x0, #0x38]
019cf6b4  mov w2,#0x24c8
019cf6b8  mov w1,w20
019cf6bc  add w8,w8,#0x8d
019cf6c0  str w8,[x0, #0x10]
019cf6c4  bl 0x01b4907c
019cf6c8  strb wzr,[x22]
019cf6cc  str xzr,[x21]
019cf6d0  strb w20,[x19]
019cf6d4  sub x8,x19,#0x1f0
019cf6d8  ldr w9,[x8]
019cf6dc  mov w8,w9
019cf6e0  tbz w9,#0x1f,0x019cf6f0
019cf6e4  sub x8,x19,#0x1f8
019cf6e8  sub x8,x8,w9, SXTH 
019cf6ec  ldr w8,[x8]
019cf6f0  ubfx w10,w9,#0x10,#0xf
019cf6f4  cmp w9,#0x0
019cf6f8  csel w1,wzr,w10,ge
019cf6fc  strb w20,[sp, #0xc]
019cf700  tbnz w8,#0x1f,0x019cf71c
019cf704  cbz w8,0x019cf740
019cf708  mov w2,#0x10
019cf70c  add x3,sp,#0xc
019cf710  mov w0,w8
019cf714  bl 0x01b1d810
019cf718  b 0x019cf740
019cf71c  mov x3,#0x6472
019cf720  adrp x2,0x574b000
019cf724  movk x3,#0x7474, LSL #16
019cf728  add x2,x2,#0x398
019cf72c  mov w1,#0x1
019cf730  movk x3,#0x100, LSL #48
019cf734  mov w0,wzr
019cf738  mov w4,w8
019cf73c  bl 0x01b83618
019cf740  mov x0,x19
019cf744  ldp x29,x30,[sp, #0x30]
019cf748  ldp x20,x19,[sp, #0x20]
019cf74c  ldp x22,x21,[sp, #0x10]
019cf750  ldr x23,[sp], #0x40
019cf754  ret
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
