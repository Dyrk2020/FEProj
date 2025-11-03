// ===== case850_ActorSkill_sub19e96a8_lv2_19ec6b8 @ 019ec6b8 (DecompileAt3: cleared stale instructions at entry) =====
019ec6b8  sub sp,sp,#0x40
019ec6bc  stp x22,x21,[sp, #0x10]
019ec6c0  stp x20,x19,[sp, #0x20]
019ec6c4  stp x29,x30,[sp, #0x30]
019ec6c8  add x29,sp,#0x30
019ec6cc  mov x19,x0
019ec6d0  ldrb w8,[x19]
019ec6d4  mov w20,w1
019ec6d8  cmp w8,w20, UXTB 
019ec6dc  b.eq 0x019ec808
019ec6e0  adrp x21,0x7319000
019ec6e4  ldr x21,[x21, #0x548]
019ec6e8  ldr x8,[x21]
019ec6ec  cbz x8,0x019ec73c
019ec6f0  mov x0,xzr
019ec6f4  bl 0x01b4868c
019ec6f8  tst w0,#0xff
019ec6fc  b.eq 0x019ec79c
019ec700  ldrb w8,[x19]
019ec704  cmp w8,w20, UXTB 
019ec708  b.eq 0x019ec79c
019ec70c  ldur w8,[x19, #-0xf]
019ec710  cmp w8,#0x1
019ec714  b.lt 0x019ec79c
019ec718  bl 0x01b4635c
019ec71c  ldur w8,[x19, #-0xf]
019ec720  ldr x0,[x0, #0x38]
019ec724  mov w2,#0x7ef
019ec728  mov w1,w20
019ec72c  add w8,w8,#0x6
019ec730  str w8,[x0, #0x10]
019ec734  bl 0x01b4907c
019ec738  b 0x019ec79c
019ec73c  str x30,[x21]
019ec740  adrp x22,0x7317000
019ec744  ldr x22,[x22, #0xd28]
019ec748  mov x0,xzr
019ec74c  strb wzr,[x22]
019ec750  bl 0x01b4868c
019ec754  tst w0,#0xff
019ec758  b.eq 0x019ec794
019ec75c  ldrb w8,[x19]
019ec760  cmp w8,w20, UXTB 
019ec764  b.eq 0x019ec794
019ec768  ldur w8,[x19, #-0xf]
019ec76c  cmp w8,#0x1
019ec770  b.lt 0x019ec794
019ec774  bl 0x01b4635c
019ec778  ldur w8,[x19, #-0xf]
019ec77c  ldr x0,[x0, #0x38]
019ec780  mov w2,#0x7ef
019ec784  mov w1,w20
019ec788  add w8,w8,#0x6
019ec78c  str w8,[x0, #0x10]
019ec790  bl 0x01b4907c
019ec794  strb wzr,[x22]
019ec798  str xzr,[x21]
019ec79c  ldur w9,[x19, #-0x13]
019ec7a0  strb w20,[x19]
019ec7a4  mov w8,w9
019ec7a8  tbz w9,#0x1f,0x019ec7b8
019ec7ac  sub x8,x19,#0x1b
019ec7b0  sub x8,x8,w9, SXTH 
019ec7b4  ldr w8,[x8]
019ec7b8  ubfx w10,w9,#0x10,#0xf
019ec7bc  cmp w9,#0x0
019ec7c0  csel w1,wzr,w10,ge
019ec7c4  strb w20,[sp, #0xc]
019ec7c8  tbnz w8,#0x1f,0x019ec7e4
019ec7cc  cbz w8,0x019ec808
019ec7d0  orr w2,wzr,#0x3
019ec7d4  add x3,sp,#0xc
019ec7d8  mov w0,w8
019ec7dc  bl 0x01b1d810
019ec7e0  b 0x019ec808
019ec7e4  mov x3,#0x6472
019ec7e8  adrp x2,0x574b000
019ec7ec  movk x3,#0x7474, LSL #16
019ec7f0  add x2,x2,#0x398
019ec7f4  mov w1,#0x1
019ec7f8  movk x3,#0x100, LSL #48
019ec7fc  mov w0,wzr
019ec800  mov w4,w8
019ec804  bl 0x01b83618
019ec808  mov x0,x19
019ec80c  ldp x29,x30,[sp, #0x30]
019ec810  ldp x20,x19,[sp, #0x20]
019ec814  ldp x22,x21,[sp, #0x10]
019ec818  add sp,sp,#0x40
019ec81c  ret
019ec820  sub sp,sp,#0x40
019ec824  stp x22,x21,[sp, #0x10]
019ec828  stp x20,x19,[sp, #0x20]
019ec82c  stp x29,x30,[sp, #0x30]
019ec830  add x29,sp,#0x30
019ec834  mov x19,x0
019ec838  ldrb w8,[x19]
019ec83c  mov w20,w1
019ec840  cmp w8,w20, UXTB 
019ec844  b.eq 0x019ec970
019ec848  adrp x21,0x7319000
019ec84c  ldr x21,[x21, #0x548]
019ec850  ldr x8,[x21]
019ec854  cbz x8,0x019ec8a4
019ec858  mov x0,xzr
019ec85c  bl 0x01b4868c
019ec860  tst w0,#0xff
019ec864  b.eq 0x019ec904
019ec868  ldrb w8,[x19]
019ec86c  cmp w8,w20, UXTB 
019ec870  b.eq 0x019ec904
019ec874  ldur w8,[x19, #-0x10]
019ec878  cmp w8,#0x1
019ec87c  b.lt 0x019ec904
019ec880  bl 0x01b4635c
019ec884  ldur w8,[x19, #-0x10]
019ec888  ldr x0,[x0, #0x38]
019ec88c  mov w2,#0x7f1
019ec890  mov w1,w20
019ec894  add w8,w8,#0x7
019ec898  str w8,[x0, #0x10]
019ec89c  bl 0x01b4907c
019ec8a0  b 0x019ec904
019ec8a4  str x30,[x21]
019ec8a8  adrp x22,0x7317000
019ec8ac  ldr x22,[x22, #0xd28]
019ec8b0  mov x0,xzr
019ec8b4  strb wzr,[x22]
019ec8b8  bl 0x01b4868c
019ec8bc  tst w0,#0xff
019ec8c0  b.eq 0x019ec8fc
019ec8c4  ldrb w8,[x19]
019ec8c8  cmp w8,w20, UXTB 
019ec8cc  b.eq 0x019ec8fc
019ec8d0  ldur w8,[x19, #-0x10]
019ec8d4  cmp w8,#0x1
019ec8d8  b.lt 0x019ec8fc
019ec8dc  bl 0x01b4635c
019ec8e0  ldur w8,[x19, #-0x10]
019ec8e4  ldr x0,[x0, #0x38]
019ec8e8  mov w2,#0x7f1
019ec8ec  mov w1,w20
019ec8f0  add w8,w8,#0x7
019ec8f4  str w8,[x0, #0x10]
019ec8f8  bl 0x01b4907c
019ec8fc  strb wzr,[x22]
019ec900  str xzr,[x21]
019ec904  ldur w9,[x19, #-0x14]
019ec908  strb w20,[x19]
019ec90c  mov w8,w9
019ec910  tbz w9,#0x1f,0x019ec920
019ec914  sub x8,x19,#0x1c
019ec918  sub x8,x8,w9, SXTH 
019ec91c  ldr w8,[x8]
019ec920  ubfx w10,w9,#0x10,#0xf
019ec924  cmp w9,#0x0
019ec928  csel w1,wzr,w10,ge
019ec92c  strb w20,[sp, #0xc]
019ec930  tbnz w8,#0x1f,0x019ec94c
019ec934  cbz w8,0x019ec970
019ec938  mov w2,#0x4
019ec93c  add x3,sp,#0xc
019ec940  mov w0,w8
019ec944  bl 0x01b1d810
019ec948  b 0x019ec970
019ec94c  mov x3,#0x6472
019ec950  adrp x2,0x574b000
019ec954  movk x3,#0x7474, LSL #16
019ec958  add x2,x2,#0x398
019ec95c  mov w1,#0x1
019ec960  movk x3,#0x100, LSL #48
019ec964  mov w0,wzr
019ec968  mov w4,w8
019ec96c  bl 0x01b83618
019ec970  mov x0,x19
019ec974  ldp x29,x30,[sp, #0x30]
019ec978  ldp x20,x19,[sp, #0x20]
019ec97c  ldp x22,x21,[sp, #0x10]
019ec980  add sp,sp,#0x40
019ec984  ret
019ec988  stp x22,x21,[sp, #-0x30]!
019ec98c  stp x20,x19,[sp, #0x10]
019ec990  stp x29,x30,[sp, #0x20]
019ec994  add x29,sp,#0x20
019ec998  mov x19,x0
019ec99c  ldrb w8,[x19]
019ec9a0  mov w20,w1
019ec9a4  cmp w8,w20, UXTB 
019ec9a8  b.eq 0x019eca6c
019ec9ac  adrp x21,0x7319000
019ec9b0  ldr x21,[x21, #0x548]
019ec9b4  ldr x8,[x21]
019ec9b8  cbz x8,0x019eca08
019ec9bc  mov x0,xzr
019ec9c0  bl 0x01b4868c
019ec9c4  tst w0,#0xff
019ec9c8  b.eq 0x019eca68
019ec9cc  ldrb w8,[x19]
019ec9d0  cmp w8,w20, UXTB 
019ec9d4  b.eq 0x019eca68
019ec9d8  ldur w8,[x19, #-0x11]
019ec9dc  cmp w8,#0x1
019ec9e0  b.lt 0x019eca68
019ec9e4  bl 0x01b4635c
019ec9e8  ldur w8,[x19, #-0x11]
019ec9ec  ldr x0,[x0, #0x38]
019ec9f0  mov w2,#0x7f3
019ec9f4  mov w1,w20
019ec9f8  add w8,w8,#0x8
019ec9fc  str w8,[x0, #0x10]
019eca00  bl 0x01b4907c
019eca04  b 0x019eca68
019eca08  str x30,[x21]
019eca0c  adrp x22,0x7317000
019eca10  ldr x22,[x22, #0xd28]
019eca14  mov x0,xzr
019eca18  strb wzr,[x22]
019eca1c  bl 0x01b4868c
019eca20  tst w0,#0xff
019eca24  b.eq 0x019eca60
019eca28  ldrb w8,[x19]
019eca2c  cmp w8,w20, UXTB 
019eca30  b.eq 0x019eca60
019eca34  ldur w8,[x19, #-0x11]
019eca38  cmp w8,#0x1
019eca3c  b.lt 0x019eca60
019eca40  bl 0x01b4635c
019eca44  ldur w8,[x19, #-0x11]
019eca48  ldr x0,[x0, #0x38]
019eca4c  mov w2,#0x7f3
019eca50  mov w1,w20
019eca54  add w8,w8,#0x8
019eca58  str w8,[x0, #0x10]
019eca5c  bl 0x01b4907c
019eca60  strb wzr,[x22]
019eca64  str xzr,[x21]
019eca68  strb w20,[x19]
019eca6c  mov x0,x19
019eca70  ldp x29,x30,[sp, #0x20]
019eca74  ldp x20,x19,[sp, #0x10]
019eca78  ldp x22,x21,[sp], #0x30
019eca7c  ret
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
