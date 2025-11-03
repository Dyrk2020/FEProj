// ===== case850_ActorSkill_sub19eb760_lv2_19efe18 @ 019efe18 (DecompileAt3: cleared stale instructions at entry) =====
019efe18  str x23,[sp, #-0x40]!
019efe1c  stp x22,x21,[sp, #0x10]
019efe20  stp x20,x19,[sp, #0x20]
019efe24  stp x29,x30,[sp, #0x30]
019efe28  add x29,sp,#0x30
019efe2c  mov x19,x0
019efe30  ldr x8,[x19]
019efe34  mov x20,x1
019efe38  cmp x8,x20
019efe3c  b.eq 0x019eff7c
019efe40  adrp x21,0x7319000
019efe44  ldr x21,[x21, #0x548]
019efe48  ldr x8,[x21]
019efe4c  cbz x8,0x019efea4
019efe50  mov x0,xzr
019efe54  bl 0x01b4868c
019efe58  tst w0,#0xff
019efe5c  b.eq 0x019eff0c
019efe60  ldr x8,[x19]
019efe64  cmp x8,x20
019efe68  b.eq 0x019eff0c
019efe6c  sub x8,x19,#0x14c
019efe70  ldr w8,[x8]
019efe74  cmp w8,#0x1
019efe78  b.lt 0x019eff0c
019efe7c  sub x21,x19,#0x158
019efe80  bl 0x01b4635c
019efe84  ldr w8,[x21, #0xc]
019efe88  ldr x0,[x0, #0x38]
019efe8c  mov w2,#0x837
019efe90  mov x1,x20
019efe94  add w8,w8,#0xc5
019efe98  str w8,[x0, #0x10]
019efe9c  bl 0x01b490bc
019efea0  b 0x019eff0c
019efea4  str x30,[x21]
019efea8  adrp x22,0x7317000
019efeac  ldr x22,[x22, #0xd28]
019efeb0  mov x0,xzr
019efeb4  strb wzr,[x22]
019efeb8  bl 0x01b4868c
019efebc  tst w0,#0xff
019efec0  b.eq 0x019eff04
019efec4  ldr x8,[x19]
019efec8  cmp x8,x20
019efecc  b.eq 0x019eff04
019efed0  sub x8,x19,#0x14c
019efed4  ldr w8,[x8]
019efed8  cmp w8,#0x1
019efedc  b.lt 0x019eff04
019efee0  sub x23,x19,#0x158
019efee4  bl 0x01b4635c
019efee8  ldr w8,[x23, #0xc]
019efeec  ldr x0,[x0, #0x38]
019efef0  mov w2,#0x837
019efef4  mov x1,x20
019efef8  add w8,w8,#0xc5
019efefc  str w8,[x0, #0x10]
019eff00  bl 0x01b490bc
019eff04  strb wzr,[x22]
019eff08  str xzr,[x21]
019eff0c  str x20,[x19]
019eff10  sub x8,x19,#0x150
019eff14  ldr w9,[x8]
019eff18  mov w8,w9
019eff1c  tbz w9,#0x1f,0x019eff2c
019eff20  sub x8,x19,#0x158
019eff24  sub x8,x8,w9, SXTH 
019eff28  ldr w8,[x8]
019eff2c  ubfx w10,w9,#0x10,#0xf
019eff30  cmp w9,#0x0
019eff34  csel w1,wzr,w10,ge
019eff38  str x20,[sp, #0x8]
019eff3c  tbnz w8,#0x1f,0x019eff58
019eff40  cbz w8,0x019eff7c
019eff44  orr w2,wzr,#0x1f
019eff48  add x3,sp,#0x8
019eff4c  mov w0,w8
019eff50  bl 0x01b1d968
019eff54  b 0x019eff7c
019eff58  mov x3,#0x6472
019eff5c  adrp x2,0x574b000
019eff60  movk x3,#0x7474, LSL #16
019eff64  add x2,x2,#0x398
019eff68  mov w1,#0x1
019eff6c  movk x3,#0x100, LSL #48
019eff70  mov w0,wzr
019eff74  mov w4,w8
019eff78  bl 0x01b83618
019eff7c  mov x0,x19
019eff80  ldp x29,x30,[sp, #0x30]
019eff84  ldp x20,x19,[sp, #0x20]
019eff88  ldp x22,x21,[sp, #0x10]
019eff8c  ldr x23,[sp], #0x40
019eff90  ret
019eff94  str x23,[sp, #-0x40]!
019eff98  stp x22,x21,[sp, #0x10]
019eff9c  stp x20,x19,[sp, #0x20]
019effa0  stp x29,x30,[sp, #0x30]
019effa4  add x29,sp,#0x30
019effa8  mov x19,x0
019effac  ldr x8,[x19]
019effb0  mov x20,x1
019effb4  cmp x8,x20
019effb8  b.eq 0x019f00f8
019effbc  adrp x21,0x7319000
019effc0  ldr x21,[x21, #0x548]
019effc4  ldr x8,[x21]
019effc8  cbz x8,0x019f0020
019effcc  mov x0,xzr
019effd0  bl 0x01b4868c
019effd4  tst w0,#0xff
019effd8  b.eq 0x019f0088
019effdc  ldr x8,[x19]
019effe0  cmp x8,x20
019effe4  b.eq 0x019f0088
019effe8  sub x8,x19,#0x164
019effec  ldr w8,[x8]
019efff0  cmp w8,#0x1
019efff4  b.lt 0x019f0088
019efff8  sub x21,x19,#0x170
019efffc  bl 0x01b4635c
019f0000  ldr w8,[x21, #0xc]
019f0004  ldr x0,[x0, #0x38]
019f0008  mov w2,#0x839
019f000c  mov x1,x20
019f0010  add w8,w8,#0xcd
019f0014  str w8,[x0, #0x10]
019f0018  bl 0x01b490bc
019f001c  b 0x019f0088
019f0020  str x30,[x21]
019f0024  adrp x22,0x7317000
019f0028  ldr x22,[x22, #0xd28]
019f002c  mov x0,xzr
019f0030  strb wzr,[x22]
019f0034  bl 0x01b4868c
019f0038  tst w0,#0xff
019f003c  b.eq 0x019f0080
019f0040  ldr x8,[x19]
019f0044  cmp x8,x20
019f0048  b.eq 0x019f0080
019f004c  sub x8,x19,#0x164
019f0050  ldr w8,[x8]
019f0054  cmp w8,#0x1
019f0058  b.lt 0x019f0080
019f005c  sub x23,x19,#0x170
019f0060  bl 0x01b4635c
019f0064  ldr w8,[x23, #0xc]
019f0068  ldr x0,[x0, #0x38]
019f006c  mov w2,#0x839
019f0070  mov x1,x20
019f0074  add w8,w8,#0xcd
019f0078  str w8,[x0, #0x10]
019f007c  bl 0x01b490bc
019f0080  strb wzr,[x22]
019f0084  str xzr,[x21]
019f0088  str x20,[x19]
019f008c  sub x8,x19,#0x168
019f0090  ldr w9,[x8]
019f0094  mov w8,w9
019f0098  tbz w9,#0x1f,0x019f00a8
019f009c  sub x8,x19,#0x170
019f00a0  sub x8,x8,w9, SXTH 
019f00a4  ldr w8,[x8]
019f00a8  ubfx w10,w9,#0x10,#0xf
019f00ac  cmp w9,#0x0
019f00b0  csel w1,wzr,w10,ge
019f00b4  str x20,[sp, #0x8]
019f00b8  tbnz w8,#0x1f,0x019f00d4
019f00bc  cbz w8,0x019f00f8
019f00c0  mov w2,#0x20
019f00c4  add x3,sp,#0x8
019f00c8  mov w0,w8
019f00cc  bl 0x01b1d968
019f00d0  b 0x019f00f8
019f00d4  mov x3,#0x6472
019f00d8  adrp x2,0x574b000
019f00dc  movk x3,#0x7474, LSL #16
019f00e0  add x2,x2,#0x398
019f00e4  mov w1,#0x1
019f00e8  movk x3,#0x100, LSL #48
019f00ec  mov w0,wzr
019f00f0  mov w4,w8
019f00f4  bl 0x01b83618
019f00f8  mov x0,x19
019f00fc  ldp x29,x30,[sp, #0x30]
019f0100  ldp x20,x19,[sp, #0x20]
019f0104  ldp x22,x21,[sp, #0x10]
019f0108  ldr x23,[sp], #0x40
019f010c  ret
019f0110  str x25,[sp, #-0x50]!
019f0114  stp x24,x23,[sp, #0x10]
019f0118  stp x22,x21,[sp, #0x20]
019f011c  stp x20,x19,[sp, #0x30]
019f0120  stp x29,x30,[sp, #0x40]
019f0124  add x29,sp,#0x40
019f0128  adrp x25,0x7319000
019f012c  ldr x25,[x25, #0x548]
019f0130  mov x23,x30
019f0134  mov x21,x1
019f0138  mov x20,x0
019f013c  ldr x9,[x25]
019f0140  mov x19,x8
019f0144  cbz x9,0x019f0194
019f0148  ldr x1,[x21]
019f014c  mov x0,x20
019f0150  mov w2,wzr
019f0154  bl 0x019f0248
019f0158  ldr x8,[x25]
019f015c  add x22,x20,#0x8
019f0160  cbz x8,0x019f01c0
019f0164  ldr x1,[x21, #0x8]
019f0168  mov x0,x22
019f016c  mov w2,wzr
019f0170  bl 0x019f03c4
019f0174  ldr x8,[x25]
019f0178  add x24,x20,#0x10
019f017c  cbz x8,0x019f01ec
019f0180  ldr x1,[x21, #0x10]
019f0184  mov x0,x24
019f0188  mov w2,wzr
019f018c  bl 0x019f0540
019f0190  b 0x019f0214
019f0194  str x23,[x25]
019f0198  adrp x22,0x7317000
019f019c  ldr x22,[x22, #0xd28]
019f01a0  mov x0,x20
019f01a4  mov w2,wzr
019f01a8  strb wzr,[x22]
019f01ac  ldr x1,[x21]
019f01b0  bl 0x019f0248
019f01b4  strb wzr,[x22]
019f01b8  str xzr,[x25]
019f01bc  add x22,x20,#0x8
019f01c0  str x23,[x25]
019f01c4  adrp x24,0x7317000
019f01c8  ldr x24,[x24, #0xd28]
019f01cc  add x0,x20,#0x8
019f01d0  mov w2,wzr
019f01d4  strb wzr,[x24]
019f01d8  ldr x1,[x21, #0x8]
019f01dc  bl 0x019f03c4
019f01e0  strb wzr,[x24]
019f01e4  str xzr,[x25]
019f01e8  add x24,x20,#0x10
019f01ec  str x23,[x25]
019f01f0  adrp x23,0x7317000
019f01f4  ldr x23,[x23, #0xd28]
019f01f8  add x0,x20,#0x10
019f01fc  mov w2,wzr
019f0200  strb wzr,[x23]
019f0204  ldr x1,[x21, #0x10]
019f0208  bl 0x019f0540
019f020c  strb wzr,[x23]
019f0210  str xzr,[x25]
019f0214  stp xzr,xzr,[x19, #0x8]
019f0218  ldr x8,[x20]
019f021c  ldp x29,x30,[sp, #0x40]
019f0220  str x8,[x19]
019f0224  ldr x8,[x22]
019f0228  ldp x22,x21,[sp, #0x20]
019f022c  str x8,[x19, #0x8]
019f0230  ldr x8,[x24]
019f0234  ldp x24,x23,[sp, #0x10]
019f0238  str x8,[x19, #0x10]
019f023c  ldp x20,x19,[sp, #0x30]
019f0240  ldr x25,[sp], #0x50
019f0244  ret
019f0248  str x23,[sp, #-0x40]!
019f024c  stp x22,x21,[sp, #0x10]
019f0250  stp x20,x19,[sp, #0x20]
019f0254  stp x29,x30,[sp, #0x30]
019f0258  add x29,sp,#0x30
019f025c  mov x19,x0
019f0260  ldr x8,[x19]
019f0264  mov x20,x1
019f0268  cmp x8,x20
019f026c  b.eq 0x019f03ac
019f0270  adrp x21,0x7319000
019f0274  ldr x21,[x21, #0x548]
019f0278  ldr x8,[x21]
019f027c  cbz x8,0x019f02d4
019f0280  mov x0,xzr
019f0284  bl 0x01b4868c
019f0288  tst w0,#0xff
019f028c  b.eq 0x019f033c
019f0290  ldr x8,[x19]
019f0294  cmp x8,x20
019f0298  b.eq 0x019f033c
019f029c  sub x8,x19,#0x1b4
019f02a0  ldr w8,[x8]
019f02a4  cmp w8,#0x1
019f02a8  b.lt 0x019f033c
019f02ac  sub x21,x19,#0x1c0
019f02b0  bl 0x01b4635c
019f02b4  ldr w8,[x21, #0xc]
019f02b8  ldr x0,[x0, #0x38]
019f02bc  mov w2,#0x83b
019f02c0  mov x1,x20
019f02c4  add w8,w8,#0xd5
019f02c8  str w8,[x0, #0x10]
019f02cc  bl 0x01b490bc
019f02d0  b 0x019f033c
019f02d4  str x30,[x21]
019f02d8  adrp x22,0x7317000
019f02dc  ldr x22,[x22, #0xd28]
019f02e0  mov x0,xzr
019f02e4  strb wzr,[x22]
019f02e8  bl 0x01b4868c
019f02ec  tst w0,#0xff
019f02f0  b.eq 0x019f0334
019f02f4  ldr x8,[x19]
019f02f8  cmp x8,x20
019f02fc  b.eq 0x019f0334
019f0300  sub x8,x19,#0x1b4
019f0304  ldr w8,[x8]
019f0308  cmp w8,#0x1
019f030c  b.lt 0x019f0334
019f0310  sub x23,x19,#0x1c0
019f0314  bl 0x01b4635c
019f0318  ldr w8,[x23, #0xc]
019f031c  ldr x0,[x0, #0x38]
019f0320  mov w2,#0x83b
019f0324  mov x1,x20
019f0328  add w8,w8,#0xd5
019f032c  str w8,[x0, #0x10]
019f0330  bl 0x01b490bc
019f0334  strb wzr,[x22]
019f0338  str xzr,[x21]
019f033c  str x20,[x19]
019f0340  sub x8,x19,#0x1b8
019f0344  ldr w9,[x8]
019f0348  mov w8,w9
019f034c  tbz w9,#0x1f,0x019f035c
019f0350  sub x8,x19,#0x1c0
019f0354  sub x8,x8,w9, SXTH 
019f0358  ldr w8,[x8]
019f035c  ubfx w10,w9,#0x10,#0xf
019f0360  cmp w9,#0x0
019f0364  csel w1,wzr,w10,ge
019f0368  str x20,[sp, #0x8]
019f036c  tbnz w8,#0x1f,0x019f0388
019f0370  cbz w8,0x019f03ac
019f0374  mov w2,#0x21
019f0378  add x3,sp,#0x8
019f037c  mov w0,w8
019f0380  bl 0x01b1d968
019f0384  b 0x019f03ac
019f0388  mov x3,#0x6472
019f038c  adrp x2,0x574b000
019f0390  movk x3,#0x7474, LSL #16
019f0394  add x2,x2,#0x398
019f0398  mov w1,#0x1
019f039c  movk x3,#0x100, LSL #48
019f03a0  mov w0,wzr
019f03a4  mov w4,w8
019f03a8  bl 0x01b83618
019f03ac  mov x0,x19
019f03b0  ldp x29,x30,[sp, #0x30]
019f03b4  ldp x20,x19,[sp, #0x20]
019f03b8  ldp x22,x21,[sp, #0x10]
019f03bc  ldr x23,[sp], #0x40
019f03c0  ret
019f03c4  str x23,[sp, #-0x40]!
019f03c8  stp x22,x21,[sp, #0x10]
019f03cc  stp x20,x19,[sp, #0x20]
019f03d0  stp x29,x30,[sp, #0x30]
019f03d4  add x29,sp,#0x30
019f03d8  mov x19,x0
019f03dc  ldr x8,[x19]
019f03e0  mov x20,x1
019f03e4  cmp x8,x20
019f03e8  b.eq 0x019f0528
019f03ec  adrp x21,0x7319000
019f03f0  ldr x21,[x21, #0x548]
019f03f4  ldr x8,[x21]
019f03f8  cbz x8,0x019f0450
019f03fc  mov x0,xzr
019f0400  bl 0x01b4868c
019f0404  tst w0,#0xff
019f0408  b.eq 0x019f04b8
019f040c  ldr x8,[x19]
019f0410  cmp x8,x20
019f0414  b.eq 0x019f04b8
019f0418  sub x8,x19,#0x1bc
019f041c  ldr w8,[x8]
019f0420  cmp w8,#0x1
019f0424  b.lt 0x019f04b8
019f0428  sub x21,x19,#0x1c8
019f042c  bl 0x01b4635c
019f0430  ldr w8,[x21, #0xc]
019f0434  ldr x0,[x0, #0x38]
019f0438  mov w2,#0x83c
019f043c  mov x1,x20
019f0440  add w8,w8,#0xdd
019f0444  str w8,[x0, #0x10]
019f0448  bl 0x01b490bc
019f044c  b 0x019f04b8
019f0450  str x30,[x21]
019f0454  adrp x22,0x7317000
019f0458  ldr x22,[x22, #0xd28]
019f045c  mov x0,xzr
019f0460  strb wzr,[x22]
019f0464  bl 0x01b4868c
019f0468  tst w0,#0xff
019f046c  b.eq 0x019f04b0
019f0470  ldr x8,[x19]
019f0474  cmp x8,x20
019f0478  b.eq 0x019f04b0
019f047c  sub x8,x19,#0x1bc
019f0480  ldr w8,[x8]
019f0484  cmp w8,#0x1
019f0488  b.lt 0x019f04b0
019f048c  sub x23,x19,#0x1c8
019f0490  bl 0x01b4635c
019f0494  ldr w8,[x23, #0xc]
019f0498  ldr x0,[x0, #0x38]
019f049c  mov w2,#0x83c
019f04a0  mov x1,x20
019f04a4  add w8,w8,#0xdd
019f04a8  str w8,[x0, #0x10]
019f04ac  bl 0x01b490bc
019f04b0  strb wzr,[x22]
019f04b4  str xzr,[x21]
019f04b8  str x20,[x19]
019f04bc  sub x8,x19,#0x1c0
019f04c0  ldr w9,[x8]
019f04c4  mov w8,w9
019f04c8  tbz w9,#0x1f,0x019f04d8
019f04cc  sub x8,x19,#0x1c8
019f04d0  sub x8,x8,w9, SXTH 
019f04d4  ldr w8,[x8]
019f04d8  ubfx w10,w9,#0x10,#0xf
019f04dc  cmp w9,#0x0
019f04e0  csel w1,wzr,w10,ge
019f04e4  str x20,[sp, #0x8]
019f04e8  tbnz w8,#0x1f,0x019f0504
019f04ec  cbz w8,0x019f0528
019f04f0  mov w2,#0x22
019f04f4  add x3,sp,#0x8
019f04f8  mov w0,w8
019f04fc  bl 0x01b1d968
019f0500  b 0x019f0528
019f0504  mov x3,#0x6472
019f0508  adrp x2,0x574b000
019f050c  movk x3,#0x7474, LSL #16
019f0510  add x2,x2,#0x398
019f0514  mov w1,#0x1
019f0518  movk x3,#0x100, LSL #48
019f051c  mov w0,wzr
019f0520  mov w4,w8
019f0524  bl 0x01b83618
019f0528  mov x0,x19
019f052c  ldp x29,x30,[sp, #0x30]
019f0530  ldp x20,x19,[sp, #0x20]
019f0534  ldp x22,x21,[sp, #0x10]
019f0538  ldr x23,[sp], #0x40
019f053c  ret
019f0540  str x23,[sp, #-0x40]!
019f0544  stp x22,x21,[sp, #0x10]
019f0548  stp x20,x19,[sp, #0x20]
019f054c  stp x29,x30,[sp, #0x30]
019f0550  add x29,sp,#0x30
019f0554  mov x19,x0
019f0558  ldr x8,[x19]
019f055c  mov x20,x1
019f0560  cmp x8,x20
019f0564  b.eq 0x019f06a4
019f0568  adrp x21,0x7319000
019f056c  ldr x21,[x21, #0x548]
019f0570  ldr x8,[x21]
019f0574  cbz x8,0x019f05cc
019f0578  mov x0,xzr
019f057c  bl 0x01b4868c
019f0580  tst w0,#0xff
019f0584  b.eq 0x019f0634
019f0588  ldr x8,[x19]
019f058c  cmp x8,x20
019f0590  b.eq 0x019f0634
019f0594  sub x8,x19,#0x1c4
019f0598  ldr w8,[x8]
019f059c  cmp w8,#0x1
019f05a0  b.lt 0x019f0634
019f05a4  sub x21,x19,#0x1d0
019f05a8  bl 0x01b4635c
019f05ac  ldr w8,[x21, #0xc]
019f05b0  ldr x0,[x0, #0x38]
019f05b4  mov w2,#0x83d
019f05b8  mov x1,x20
019f05bc  add w8,w8,#0xe5
019f05c0  str w8,[x0, #0x10]
019f05c4  bl 0x01b490bc
019f05c8  b 0x019f0634
019f05cc  str x30,[x21]
019f05d0  adrp x22,0x7317000
019f05d4  ldr x22,[x22, #0xd28]
019f05d8  mov x0,xzr
019f05dc  strb wzr,[x22]
019f05e0  bl 0x01b4868c
019f05e4  tst w0,#0xff
019f05e8  b.eq 0x019f062c
019f05ec  ldr x8,[x19]
019f05f0  cmp x8,x20
019f05f4  b.eq 0x019f062c
019f05f8  sub x8,x19,#0x1c4
019f05fc  ldr w8,[x8]
019f0600  cmp w8,#0x1
019f0604  b.lt 0x019f062c
019f0608  sub x23,x19,#0x1d0
019f060c  bl 0x01b4635c
019f0610  ldr w8,[x23, #0xc]
019f0614  ldr x0,[x0, #0x38]
019f0618  mov w2,#0x83d
019f061c  mov x1,x20
019f0620  add w8,w8,#0xe5
019f0624  str w8,[x0, #0x10]
019f0628  bl 0x01b490bc
019f062c  strb wzr,[x22]
019f0630  str xzr,[x21]
019f0634  str x20,[x19]
019f0638  sub x8,x19,#0x1c8
019f063c  ldr w9,[x8]
019f0640  mov w8,w9
019f0644  tbz w9,#0x1f,0x019f0654
019f0648  sub x8,x19,#0x1d0
019f064c  sub x8,x8,w9, SXTH 
019f0650  ldr w8,[x8]
019f0654  ubfx w10,w9,#0x10,#0xf
019f0658  cmp w9,#0x0
019f065c  csel w1,wzr,w10,ge
019f0660  str x20,[sp, #0x8]
019f0664  tbnz w8,#0x1f,0x019f0680
019f0668  cbz w8,0x019f06a4
019f066c  mov w2,#0x23
019f0670  add x3,sp,#0x8
019f0674  mov w0,w8
019f0678  bl 0x01b1d968
019f067c  b 0x019f06a4
019f0680  mov x3,#0x6472
019f0684  adrp x2,0x574b000
019f0688  movk x3,#0x7474, LSL #16
019f068c  add x2,x2,#0x398
019f0690  mov w1,#0x1
019f0694  movk x3,#0x100, LSL #48
019f0698  mov w0,wzr
019f069c  mov w4,w8
019f06a0  bl 0x01b83618
019f06a4  mov x0,x19
019f06a8  ldp x29,x30,[sp, #0x30]
019f06ac  ldp x20,x19,[sp, #0x20]
019f06b0  ldp x22,x21,[sp, #0x10]
019f06b4  ldr x23,[sp], #0x40
019f06b8  ret
019f06bc  str x25,[sp, #-0x50]!
019f06c0  stp x24,x23,[sp, #0x10]
019f06c4  stp x22,x21,[sp, #0x20]
019f06c8  stp x20,x19,[sp, #0x30]
019f06cc  stp x29,x30,[sp, #0x40]
019f06d0  add x29,sp,#0x40
019f06d4  adrp x25,0x7319000
019f06d8  ldr x25,[x25, #0x548]
019f06dc  mov x23,x30
019f06e0  mov x21,x1
019f06e4  mov x20,x0
019f06e8  ldr x9,[x25]
019f06ec  mov x19,x8
019f06f0  cbz x9,0x019f0740
019f06f4  ldr x1,[x21]
019f06f8  mov x0,x20
019f06fc  mov w2,wzr
019f0700  bl 0x019f07f4
019f0704  ldr x8,[x25]
019f0708  add x22,x20,#0x8
019f070c  cbz x8,0x019f076c
019f0710  ldr x1,[x21, #0x8]
019f0714  mov x0,x22
019f0718  mov w2,wzr
019f071c  bl 0x019f0970
019f0720  ldr x8,[x25]
019f0724  add x24,x20,#0x10
019f0728  cbz x8,0x019f0798
019f072c  ldr x1,[x21, #0x10]
019f0730  mov x0,x24
019f0734  mov w2,wzr
019f0738  bl 0x019f0aec
019f073c  b 0x019f07c0
019f0740  str x23,[x25]
019f0744  adrp x22,0x7317000
019f0748  ldr x22,[x22, #0xd28]
019f074c  mov x0,x20
019f0750  mov w2,wzr
019f0754  strb wzr,[x22]
019f0758  ldr x1,[x21]
019f075c  bl 0x019f07f4
019f0760  strb wzr,[x22]
019f0764  str xzr,[x25]
019f0768  add x22,x20,#0x8
019f076c  str x23,[x25]
019f0770  adrp x24,0x7317000
019f0774  ldr x24,[x24, #0xd28]
019f0778  add x0,x20,#0x8
019f077c  mov w2,wzr
019f0780  strb wzr,[x24]
019f0784  ldr x1,[x21, #0x8]
019f0788  bl 0x019f0970
019f078c  strb wzr,[x24]
019f0790  str xzr,[x25]
019f0794  add x24,x20,#0x10
019f0798  str x23,[x25]
019f079c  adrp x23,0x7317000
019f07a0  ldr x23,[x23, #0xd28]
019f07a4  add x0,x20,#0x10
019f07a8  mov w2,wzr
019f07ac  strb wzr,[x23]
019f07b0  ldr x1,[x21, #0x10]
019f07b4  bl 0x019f0aec
019f07b8  strb wzr,[x23]
019f07bc  str xzr,[x25]
019f07c0  stp xzr,xzr,[x19, #0x8]
019f07c4  ldr x8,[x20]
019f07c8  ldp x29,x30,[sp, #0x40]
019f07cc  str x8,[x19]
019f07d0  ldr x8,[x22]
019f07d4  ldp x22,x21,[sp, #0x20]
019f07d8  str x8,[x19, #0x8]
019f07dc  ldr x8,[x24]
019f07e0  ldp x24,x23,[sp, #0x10]
019f07e4  str x8,[x19, #0x10]
019f07e8  ldp x20,x19,[sp, #0x30]
019f07ec  ldr x25,[sp], #0x50
019f07f0  ret
019f07f4  str x23,[sp, #-0x40]!
019f07f8  stp x22,x21,[sp, #0x10]
019f07fc  stp x20,x19,[sp, #0x20]
019f0800  stp x29,x30,[sp, #0x30]
019f0804  add x29,sp,#0x30
019f0808  mov x19,x0
019f080c  ldr x8,[x19]
019f0810  mov x20,x1
019f0814  cmp x8,x20
019f0818  b.eq 0x019f0958
019f081c  adrp x21,0x7319000
019f0820  ldr x21,[x21, #0x548]
019f0824  ldr x8,[x21]
019f0828  cbz x8,0x019f0880
019f082c  mov x0,xzr
019f0830  bl 0x01b4868c
019f0834  tst w0,#0xff
019f0838  b.eq 0x019f08e8
019f083c  ldr x8,[x19]
019f0840  cmp x8,x20
019f0844  b.eq 0x019f08e8
019f0848  sub x8,x19,#0x1cc
019f084c  ldr w8,[x8]
019f0850  cmp w8,#0x1
019f0854  b.lt 0x019f08e8
019f0858  sub x21,x19,#0x1d8
019f085c  bl 0x01b4635c
019f0860  ldr w8,[x21, #0xc]
019f0864  ldr x0,[x0, #0x38]
019f0868  mov w2,#0x841
019f086c  mov x1,x20
019f0870  add w8,w8,#0xed
019f0874  str w8,[x0, #0x10]
019f0878  bl 0x01b490bc
019f087c  b 0x019f08e8
019f0880  str x30,[x21]
019f0884  adrp x22,0x7317000
019f0888  ldr x22,[x22, #0xd28]
019f088c  mov x0,xzr
019f0890  strb wzr,[x22]
019f0894  bl 0x01b4868c
019f0898  tst w0,#0xff
019f089c  b.eq 0x019f08e0
019f08a0  ldr x8,[x19]
019f08a4  cmp x8,x20
019f08a8  b.eq 0x019f08e0
019f08ac  sub x8,x19,#0x1cc
019f08b0  ldr w8,[x8]
019f08b4  cmp w8,#0x1
019f08b8  b.lt 0x019f08e0
019f08bc  sub x23,x19,#0x1d8
019f08c0  bl 0x01b4635c
019f08c4  ldr w8,[x23, #0xc]
019f08c8  ldr x0,[x0, #0x38]
019f08cc  mov w2,#0x841
019f08d0  mov x1,x20
019f08d4  add w8,w8,#0xed
019f08d8  str w8,[x0, #0x10]
019f08dc  bl 0x01b490bc
019f08e0  strb wzr,[x22]
019f08e4  str xzr,[x21]
019f08e8  str x20,[x19]
019f08ec  sub x8,x19,#0x1d0
019f08f0  ldr w9,[x8]
019f08f4  mov w8,w9
019f08f8  tbz w9,#0x1f,0x019f0908
019f08fc  sub x8,x19,#0x1d8
019f0900  sub x8,x8,w9, SXTH 
019f0904  ldr w8,[x8]
019f0908  ubfx w10,w9,#0x10,#0xf
019f090c  cmp w9,#0x0
019f0910  csel w1,wzr,w10,ge
019f0914  str x20,[sp, #0x8]
019f0918  tbnz w8,#0x1f,0x019f0934
019f091c  cbz w8,0x019f0958
019f0920  mov w2,#0x24
019f0924  add x3,sp,#0x8
019f0928  mov w0,w8
019f092c  bl 0x01b1d968
019f0930  b 0x019f0958
019f0934  mov x3,#0x6472
019f0938  adrp x2,0x574b000
019f093c  movk x3,#0x7474, LSL #16
019f0940  add x2,x2,#0x398
019f0944  mov w1,#0x1
019f0948  movk x3,#0x100, LSL #48
019f094c  mov w0,wzr
019f0950  mov w4,w8
019f0954  bl 0x01b83618
019f0958  mov x0,x19
019f095c  ldp x29,x30,[sp, #0x30]
019f0960  ldp x20,x19,[sp, #0x20]
019f0964  ldp x22,x21,[sp, #0x10]
019f0968  ldr x23,[sp], #0x40
019f096c  ret
019f0970  str x23,[sp, #-0x40]!
019f0974  stp x22,x21,[sp, #0x10]
019f0978  stp x20,x19,[sp, #0x20]
019f097c  stp x29,x30,[sp, #0x30]
019f0980  add x29,sp,#0x30
019f0984  mov x19,x0
019f0988  ldr x8,[x19]
019f098c  mov x20,x1
019f0990  cmp x8,x20
019f0994  b.eq 0x019f0ad4
019f0998  adrp x21,0x7319000
019f099c  ldr x21,[x21, #0x548]
019f09a0  ldr x8,[x21]
019f09a4  cbz x8,0x019f09fc
019f09a8  mov x0,xzr
019f09ac  bl 0x01b4868c
019f09b0  tst w0,#0xff
019f09b4  b.eq 0x019f0a64
019f09b8  ldr x8,[x19]
019f09bc  cmp x8,x20
019f09c0  b.eq 0x019f0a64
019f09c4  sub x8,x19,#0x1d4
019f09c8  ldr w8,[x8]
019f09cc  cmp w8,#0x1
019f09d0  b.lt 0x019f0a64
019f09d4  sub x21,x19,#0x1e0
019f09d8  bl 0x01b4635c
019f09dc  ldr w8,[x21, #0xc]
019f09e0  ldr x0,[x0, #0x38]
019f09e4  mov w2,#0x842
019f09e8  mov x1,x20
019f09ec  add w8,w8,#0xf5
019f09f0  str w8,[x0, #0x10]
019f09f4  bl 0x01b490bc
019f09f8  b 0x019f0a64
019f09fc  str x30,[x21]
019f0a00  adrp x22,0x7317000
019f0a04  ldr x22,[x22, #0xd28]
019f0a08  mov x0,xzr
019f0a0c  strb wzr,[x22]
019f0a10  bl 0x01b4868c
019f0a14  tst w0,#0xff
019f0a18  b.eq 0x019f0a5c
019f0a1c  ldr x8,[x19]
019f0a20  cmp x8,x20
019f0a24  b.eq 0x019f0a5c
019f0a28  sub x8,x19,#0x1d4
019f0a2c  ldr w8,[x8]
019f0a30  cmp w8,#0x1
019f0a34  b.lt 0x019f0a5c
019f0a38  sub x23,x19,#0x1e0
019f0a3c  bl 0x01b4635c
019f0a40  ldr w8,[x23, #0xc]
019f0a44  ldr x0,[x0, #0x38]
019f0a48  mov w2,#0x842
019f0a4c  mov x1,x20
019f0a50  add w8,w8,#0xf5
019f0a54  str w8,[x0, #0x10]
019f0a58  bl 0x01b490bc
019f0a5c  strb wzr,[x22]
019f0a60  str xzr,[x21]
019f0a64  str x20,[x19]
019f0a68  sub x8,x19,#0x1d8
019f0a6c  ldr w9,[x8]
019f0a70  mov w8,w9
019f0a74  tbz w9,#0x1f,0x019f0a84
019f0a78  sub x8,x19,#0x1e0
019f0a7c  sub x8,x8,w9, SXTH 
019f0a80  ldr w8,[x8]
019f0a84  ubfx w10,w9,#0x10,#0xf
019f0a88  cmp w9,#0x0
019f0a8c  csel w1,wzr,w10,ge
019f0a90  str x20,[sp, #0x8]
019f0a94  tbnz w8,#0x1f,0x019f0ab0
019f0a98  cbz w8,0x019f0ad4
019f0a9c  mov w2,#0x25
019f0aa0  add x3,sp,#0x8
019f0aa4  mov w0,w8
019f0aa8  bl 0x01b1d968
019f0aac  b 0x019f0ad4
019f0ab0  mov x3,#0x6472
019f0ab4  adrp x2,0x574b000
019f0ab8  movk x3,#0x7474, LSL #16
019f0abc  add x2,x2,#0x398
019f0ac0  mov w1,#0x1
019f0ac4  movk x3,#0x100, LSL #48
019f0ac8  mov w0,wzr
019f0acc  mov w4,w8
019f0ad0  bl 0x01b83618
019f0ad4  mov x0,x19
019f0ad8  ldp x29,x30,[sp, #0x30]
019f0adc  ldp x20,x19,[sp, #0x20]
019f0ae0  ldp x22,x21,[sp, #0x10]
019f0ae4  ldr x23,[sp], #0x40
019f0ae8  ret
019f0aec  str x23,[sp, #-0x40]!
019f0af0  stp x22,x21,[sp, #0x10]
019f0af4  stp x20,x19,[sp, #0x20]
019f0af8  stp x29,x30,[sp, #0x30]
019f0afc  add x29,sp,#0x30
019f0b00  mov x19,x0
019f0b04  ldr x8,[x19]
019f0b08  mov x20,x1
019f0b0c  cmp x8,x20
019f0b10  b.eq 0x019f0c50
019f0b14  adrp x21,0x7319000
019f0b18  ldr x21,[x21, #0x548]
019f0b1c  ldr x8,[x21]
019f0b20  cbz x8,0x019f0b78
019f0b24  mov x0,xzr
019f0b28  bl 0x01b4868c
019f0b2c  tst w0,#0xff
019f0b30  b.eq 0x019f0be0
019f0b34  ldr x8,[x19]
019f0b38  cmp x8,x20
019f0b3c  b.eq 0x019f0be0
019f0b40  sub x8,x19,#0x1dc
019f0b44  ldr w8,[x8]
019f0b48  cmp w8,#0x1
019f0b4c  b.lt 0x019f0be0
019f0b50  sub x21,x19,#0x1e8
019f0b54  bl 0x01b4635c
019f0b58  ldr w8,[x21, #0xc]
019f0b5c  ldr x0,[x0, #0x38]
019f0b60  mov w2,#0x843
019f0b64  mov x1,x20
019f0b68  add w8,w8,#0xfd
019f0b6c  str w8,[x0, #0x10]
019f0b70  bl 0x01b490bc
019f0b74  b 0x019f0be0
019f0b78  str x30,[x21]
019f0b7c  adrp x22,0x7317000
019f0b80  ldr x22,[x22, #0xd28]
019f0b84  mov x0,xzr
019f0b88  strb wzr,[x22]
019f0b8c  bl 0x01b4868c
019f0b90  tst w0,#0xff
019f0b94  b.eq 0x019f0bd8
019f0b98  ldr x8,[x19]
019f0b9c  cmp x8,x20
019f0ba0  b.eq 0x019f0bd8
019f0ba4  sub x8,x19,#0x1dc
019f0ba8  ldr w8,[x8]
019f0bac  cmp w8,#0x1
019f0bb0  b.lt 0x019f0bd8
019f0bb4  sub x23,x19,#0x1e8
019f0bb8  bl 0x01b4635c
019f0bbc  ldr w8,[x23, #0xc]
019f0bc0  ldr x0,[x0, #0x38]
019f0bc4  mov w2,#0x843
019f0bc8  mov x1,x20
019f0bcc  add w8,w8,#0xfd
019f0bd0  str w8,[x0, #0x10]
019f0bd4  bl 0x01b490bc
019f0bd8  strb wzr,[x22]
019f0bdc  str xzr,[x21]
019f0be0  str x20,[x19]
019f0be4  sub x8,x19,#0x1e0
019f0be8  ldr w9,[x8]
019f0bec  mov w8,w9
019f0bf0  tbz w9,#0x1f,0x019f0c00
019f0bf4  sub x8,x19,#0x1e8
019f0bf8  sub x8,x8,w9, SXTH 
019f0bfc  ldr w8,[x8]
019f0c00  ubfx w10,w9,#0x10,#0xf
019f0c04  cmp w9,#0x0
019f0c08  csel w1,wzr,w10,ge
019f0c0c  str x20,[sp, #0x8]
019f0c10  tbnz w8,#0x1f,0x019f0c2c
019f0c14  cbz w8,0x019f0c50
019f0c18  mov w2,#0x26
019f0c1c  add x3,sp,#0x8
019f0c20  mov w0,w8
019f0c24  bl 0x01b1d968
019f0c28  b 0x019f0c50
019f0c2c  mov x3,#0x6472
019f0c30  adrp x2,0x574b000
019f0c34  movk x3,#0x7474, LSL #16
019f0c38  add x2,x2,#0x398
019f0c3c  mov w1,#0x1
019f0c40  movk x3,#0x100, LSL #48
019f0c44  mov w0,wzr
019f0c48  mov w4,w8
019f0c4c  bl 0x01b83618
019f0c50  mov x0,x19
019f0c54  ldp x29,x30,[sp, #0x30]
019f0c58  ldp x20,x19,[sp, #0x20]
019f0c5c  ldp x22,x21,[sp, #0x10]
019f0c60  ldr x23,[sp], #0x40
019f0c64  ret
019f0c68  stp x20,x19,[sp, #-0x20]!
019f0c6c  stp x29,x30,[sp, #0x10]
019f0c70  add x29,sp,#0x10
019f0c74  mov w1,#0x1
019f0c78  mov x19,x0
019f0c7c  bl 0x0124ff50
019f0c80  cbz w0,0x019f0cac
019f0c84  adrp x2,0x736d000
019f0c88  adrp x3,0x736d000
019f0c8c  add x2,x2,#0x208
019f0c90  add x3,x3,#0x207
019f0c94  mov w1,#0x1
019f0c98  mov w4,#0x1
019f0c9c  mov x0,x19
019f0ca0  bl 0x0174b938
019f0ca4  ldr x20,[x0, #0x8]
019f0ca8  b 0x019f0cb0
019f0cac  mov x20,xzr
019f0cb0  mov w1,#0xb9d7
019f0cb4  movk w1,#0xfff0, LSL #16
019f0cb8  mov x0,x19
019f0cbc  bl 0x0124e990
019f0cc0  mov x2,x0
019f0cc4  mov x0,x19
019f0cc8  mov x1,x20
019f0ccc  bl 0x019f0cdc
019f0cd0  ldp x29,x30,[sp, #0x10]
019f0cd4  ldp x20,x19,[sp], #0x20
019f0cd8  ret
