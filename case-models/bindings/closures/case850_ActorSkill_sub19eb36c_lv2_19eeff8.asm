// ===== case850_ActorSkill_sub19eb36c_lv2_19eeff8 @ 019eeff8 (DecompileAt3: cleared stale instructions at entry) =====
019eeff8  sub sp,sp,#0x40
019eeffc  stp x22,x21,[sp, #0x10]
019ef000  stp x20,x19,[sp, #0x20]
019ef004  stp x29,x30,[sp, #0x30]
019ef008  add x29,sp,#0x30
019ef00c  mov x19,x0
019ef010  ldr x8,[x19]
019ef014  mov x20,x1
019ef018  cmp x8,x20
019ef01c  b.eq 0x019ef148
019ef020  adrp x21,0x7319000
019ef024  ldr x21,[x21, #0x548]
019ef028  ldr x8,[x21]
019ef02c  cbz x8,0x019ef07c
019ef030  mov x0,xzr
019ef034  bl 0x01b4868c
019ef038  tst w0,#0xff
019ef03c  b.eq 0x019ef0dc
019ef040  ldr x8,[x19]
019ef044  cmp x8,x20
019ef048  b.eq 0x019ef0dc
019ef04c  ldur w8,[x19, #-0xfc]
019ef050  cmp w8,#0x1
019ef054  b.lt 0x019ef0dc
019ef058  bl 0x01b4635c
019ef05c  ldur w8,[x19, #-0xfc]
019ef060  ldr x0,[x0, #0x38]
019ef064  mov w2,#0x829
019ef068  mov x1,x20
019ef06c  add w8,w8,#0x8d
019ef070  str w8,[x0, #0x10]
019ef074  bl 0x01b490bc
019ef078  b 0x019ef0dc
019ef07c  str x30,[x21]
019ef080  adrp x22,0x7317000
019ef084  ldr x22,[x22, #0xd28]
019ef088  mov x0,xzr
019ef08c  strb wzr,[x22]
019ef090  bl 0x01b4868c
019ef094  tst w0,#0xff
019ef098  b.eq 0x019ef0d4
019ef09c  ldr x8,[x19]
019ef0a0  cmp x8,x20
019ef0a4  b.eq 0x019ef0d4
019ef0a8  ldur w8,[x19, #-0xfc]
019ef0ac  cmp w8,#0x1
019ef0b0  b.lt 0x019ef0d4
019ef0b4  bl 0x01b4635c
019ef0b8  ldur w8,[x19, #-0xfc]
019ef0bc  ldr x0,[x0, #0x38]
019ef0c0  mov w2,#0x829
019ef0c4  mov x1,x20
019ef0c8  add w8,w8,#0x8d
019ef0cc  str w8,[x0, #0x10]
019ef0d0  bl 0x01b490bc
019ef0d4  strb wzr,[x22]
019ef0d8  str xzr,[x21]
019ef0dc  ldur w9,[x19, #-0x100]
019ef0e0  str x20,[x19]
019ef0e4  mov w8,w9
019ef0e8  tbz w9,#0x1f,0x019ef0f8
019ef0ec  sub x8,x19,#0x108
019ef0f0  sub x8,x8,w9, SXTH 
019ef0f4  ldr w8,[x8]
019ef0f8  ubfx w10,w9,#0x10,#0xf
019ef0fc  cmp w9,#0x0
019ef100  csel w1,wzr,w10,ge
019ef104  str x20,[sp, #0x8]
019ef108  tbnz w8,#0x1f,0x019ef124
019ef10c  cbz w8,0x019ef148
019ef110  orr w2,wzr,#0x18
019ef114  add x3,sp,#0x8
019ef118  mov w0,w8
019ef11c  bl 0x01b1d968
019ef120  b 0x019ef148
019ef124  mov x3,#0x6472
019ef128  adrp x2,0x574b000
019ef12c  movk x3,#0x7474, LSL #16
019ef130  add x2,x2,#0x398
019ef134  mov w1,#0x1
019ef138  movk x3,#0x100, LSL #48
019ef13c  mov w0,wzr
019ef140  mov w4,w8
019ef144  bl 0x01b83618
019ef148  mov x0,x19
019ef14c  ldp x29,x30,[sp, #0x30]
019ef150  ldp x20,x19,[sp, #0x20]
019ef154  ldp x22,x21,[sp, #0x10]
019ef158  add sp,sp,#0x40
019ef15c  ret
019ef160  str x23,[sp, #-0x40]!
019ef164  stp x22,x21,[sp, #0x10]
019ef168  stp x20,x19,[sp, #0x20]
019ef16c  stp x29,x30,[sp, #0x30]
019ef170  add x29,sp,#0x30
019ef174  mov x19,x0
019ef178  ldr x8,[x19]
019ef17c  mov x20,x1
019ef180  cmp x8,x20
019ef184  b.eq 0x019ef2c4
019ef188  adrp x21,0x7319000
019ef18c  ldr x21,[x21, #0x548]
019ef190  ldr x8,[x21]
019ef194  cbz x8,0x019ef1ec
019ef198  mov x0,xzr
019ef19c  bl 0x01b4868c
019ef1a0  tst w0,#0xff
019ef1a4  b.eq 0x019ef254
019ef1a8  ldr x8,[x19]
019ef1ac  cmp x8,x20
019ef1b0  b.eq 0x019ef254
019ef1b4  sub x8,x19,#0x10c
019ef1b8  ldr w8,[x8]
019ef1bc  cmp w8,#0x1
019ef1c0  b.lt 0x019ef254
019ef1c4  sub x21,x19,#0x118
019ef1c8  bl 0x01b4635c
019ef1cc  ldr w8,[x21, #0xc]
019ef1d0  ldr x0,[x0, #0x38]
019ef1d4  mov w2,#0x82b
019ef1d8  mov x1,x20
019ef1dc  add w8,w8,#0x95
019ef1e0  str w8,[x0, #0x10]
019ef1e4  bl 0x01b490bc
019ef1e8  b 0x019ef254
019ef1ec  str x30,[x21]
019ef1f0  adrp x22,0x7317000
019ef1f4  ldr x22,[x22, #0xd28]
019ef1f8  mov x0,xzr
019ef1fc  strb wzr,[x22]
019ef200  bl 0x01b4868c
019ef204  tst w0,#0xff
019ef208  b.eq 0x019ef24c
019ef20c  ldr x8,[x19]
019ef210  cmp x8,x20
019ef214  b.eq 0x019ef24c
019ef218  sub x8,x19,#0x10c
019ef21c  ldr w8,[x8]
019ef220  cmp w8,#0x1
019ef224  b.lt 0x019ef24c
019ef228  sub x23,x19,#0x118
019ef22c  bl 0x01b4635c
019ef230  ldr w8,[x23, #0xc]
019ef234  ldr x0,[x0, #0x38]
019ef238  mov w2,#0x82b
019ef23c  mov x1,x20
019ef240  add w8,w8,#0x95
019ef244  str w8,[x0, #0x10]
019ef248  bl 0x01b490bc
019ef24c  strb wzr,[x22]
019ef250  str xzr,[x21]
019ef254  str x20,[x19]
019ef258  sub x8,x19,#0x110
019ef25c  ldr w9,[x8]
019ef260  mov w8,w9
019ef264  tbz w9,#0x1f,0x019ef274
019ef268  sub x8,x19,#0x118
019ef26c  sub x8,x8,w9, SXTH 
019ef270  ldr w8,[x8]
019ef274  ubfx w10,w9,#0x10,#0xf
019ef278  cmp w9,#0x0
019ef27c  csel w1,wzr,w10,ge
019ef280  str x20,[sp, #0x8]
019ef284  tbnz w8,#0x1f,0x019ef2a0
019ef288  cbz w8,0x019ef2c4
019ef28c  mov w2,#0x19
019ef290  add x3,sp,#0x8
019ef294  mov w0,w8
019ef298  bl 0x01b1d968
019ef29c  b 0x019ef2c4
019ef2a0  mov x3,#0x6472
019ef2a4  adrp x2,0x574b000
019ef2a8  movk x3,#0x7474, LSL #16
019ef2ac  add x2,x2,#0x398
019ef2b0  mov w1,#0x1
019ef2b4  movk x3,#0x100, LSL #48
019ef2b8  mov w0,wzr
019ef2bc  mov w4,w8
019ef2c0  bl 0x01b83618
019ef2c4  mov x0,x19
019ef2c8  ldp x29,x30,[sp, #0x30]
019ef2cc  ldp x20,x19,[sp, #0x20]
019ef2d0  ldp x22,x21,[sp, #0x10]
019ef2d4  ldr x23,[sp], #0x40
019ef2d8  ret
019ef2dc  str x23,[sp, #-0x40]!
019ef2e0  stp x22,x21,[sp, #0x10]
019ef2e4  stp x20,x19,[sp, #0x20]
019ef2e8  stp x29,x30,[sp, #0x30]
019ef2ec  add x29,sp,#0x30
019ef2f0  mov x19,x0
019ef2f4  ldr x8,[x19]
019ef2f8  mov x20,x1
019ef2fc  cmp x8,x20
019ef300  b.eq 0x019ef440
019ef304  adrp x21,0x7319000
019ef308  ldr x21,[x21, #0x548]
019ef30c  ldr x8,[x21]
019ef310  cbz x8,0x019ef368
019ef314  mov x0,xzr
019ef318  bl 0x01b4868c
019ef31c  tst w0,#0xff
019ef320  b.eq 0x019ef3d0
019ef324  ldr x8,[x19]
019ef328  cmp x8,x20
019ef32c  b.eq 0x019ef3d0
019ef330  sub x8,x19,#0x11c
019ef334  ldr w8,[x8]
019ef338  cmp w8,#0x1
019ef33c  b.lt 0x019ef3d0
019ef340  sub x21,x19,#0x128
019ef344  bl 0x01b4635c
019ef348  ldr w8,[x21, #0xc]
019ef34c  ldr x0,[x0, #0x38]
019ef350  mov w2,#0x82d
019ef354  mov x1,x20
019ef358  add w8,w8,#0x9d
019ef35c  str w8,[x0, #0x10]
019ef360  bl 0x01b490bc
019ef364  b 0x019ef3d0
019ef368  str x30,[x21]
019ef36c  adrp x22,0x7317000
019ef370  ldr x22,[x22, #0xd28]
019ef374  mov x0,xzr
019ef378  strb wzr,[x22]
019ef37c  bl 0x01b4868c
019ef380  tst w0,#0xff
019ef384  b.eq 0x019ef3c8
019ef388  ldr x8,[x19]
019ef38c  cmp x8,x20
019ef390  b.eq 0x019ef3c8
019ef394  sub x8,x19,#0x11c
019ef398  ldr w8,[x8]
019ef39c  cmp w8,#0x1
019ef3a0  b.lt 0x019ef3c8
019ef3a4  sub x23,x19,#0x128
019ef3a8  bl 0x01b4635c
019ef3ac  ldr w8,[x23, #0xc]
019ef3b0  ldr x0,[x0, #0x38]
019ef3b4  mov w2,#0x82d
019ef3b8  mov x1,x20
019ef3bc  add w8,w8,#0x9d
019ef3c0  str w8,[x0, #0x10]
019ef3c4  bl 0x01b490bc
019ef3c8  strb wzr,[x22]
019ef3cc  str xzr,[x21]
019ef3d0  str x20,[x19]
019ef3d4  sub x8,x19,#0x120
019ef3d8  ldr w9,[x8]
019ef3dc  mov w8,w9
019ef3e0  tbz w9,#0x1f,0x019ef3f0
019ef3e4  sub x8,x19,#0x128
019ef3e8  sub x8,x8,w9, SXTH 
019ef3ec  ldr w8,[x8]
019ef3f0  ubfx w10,w9,#0x10,#0xf
019ef3f4  cmp w9,#0x0
019ef3f8  csel w1,wzr,w10,ge
019ef3fc  str x20,[sp, #0x8]
019ef400  tbnz w8,#0x1f,0x019ef41c
019ef404  cbz w8,0x019ef440
019ef408  mov w2,#0x1a
019ef40c  add x3,sp,#0x8
019ef410  mov w0,w8
019ef414  bl 0x01b1d968
019ef418  b 0x019ef440
019ef41c  mov x3,#0x6472
019ef420  adrp x2,0x574b000
019ef424  movk x3,#0x7474, LSL #16
019ef428  add x2,x2,#0x398
019ef42c  mov w1,#0x1
019ef430  movk x3,#0x100, LSL #48
019ef434  mov w0,wzr
019ef438  mov w4,w8
019ef43c  bl 0x01b83618
019ef440  mov x0,x19
019ef444  ldp x29,x30,[sp, #0x30]
019ef448  ldp x20,x19,[sp, #0x20]
019ef44c  ldp x22,x21,[sp, #0x10]
019ef450  ldr x23,[sp], #0x40
019ef454  ret
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
