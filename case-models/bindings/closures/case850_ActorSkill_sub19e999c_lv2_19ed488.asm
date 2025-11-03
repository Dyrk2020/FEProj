// ===== case850_ActorSkill_sub19e999c_lv2_19ed488 @ 019ed488 (DecompileAt3: cleared stale instructions at entry) =====
019ed488  sub sp,sp,#0x40
019ed48c  stp x22,x21,[sp, #0x10]
019ed490  stp x20,x19,[sp, #0x20]
019ed494  stp x29,x30,[sp, #0x30]
019ed498  add x29,sp,#0x30
019ed49c  mov x19,x0
019ed4a0  ldr w8,[x19]
019ed4a4  mov w20,w1
019ed4a8  cmp w8,w20
019ed4ac  b.eq 0x019ed5d8
019ed4b0  adrp x21,0x7319000
019ed4b4  ldr x21,[x21, #0x548]
019ed4b8  ldr x8,[x21]
019ed4bc  cbz x8,0x019ed50c
019ed4c0  mov x0,xzr
019ed4c4  bl 0x01b4868c
019ed4c8  tst w0,#0xff
019ed4cc  b.eq 0x019ed56c
019ed4d0  ldr w8,[x19]
019ed4d4  cmp w8,w20
019ed4d8  b.eq 0x019ed56c
019ed4dc  ldur w8,[x19, #-0x54]
019ed4e0  cmp w8,#0x1
019ed4e4  b.lt 0x019ed56c
019ed4e8  bl 0x01b4635c
019ed4ec  ldur w8,[x19, #-0x54]
019ed4f0  ldr x0,[x0, #0x38]
019ed4f4  mov w2,#0x801
019ed4f8  mov w1,w20
019ed4fc  add w8,w8,#0x18
019ed500  str w8,[x0, #0x10]
019ed504  bl 0x01b490fc
019ed508  b 0x019ed56c
019ed50c  str x30,[x21]
019ed510  adrp x22,0x7317000
019ed514  ldr x22,[x22, #0xd28]
019ed518  mov x0,xzr
019ed51c  strb wzr,[x22]
019ed520  bl 0x01b4868c
019ed524  tst w0,#0xff
019ed528  b.eq 0x019ed564
019ed52c  ldr w8,[x19]
019ed530  cmp w8,w20
019ed534  b.eq 0x019ed564
019ed538  ldur w8,[x19, #-0x54]
019ed53c  cmp w8,#0x1
019ed540  b.lt 0x019ed564
019ed544  bl 0x01b4635c
019ed548  ldur w8,[x19, #-0x54]
019ed54c  ldr x0,[x0, #0x38]
019ed550  mov w2,#0x801
019ed554  mov w1,w20
019ed558  add w8,w8,#0x18
019ed55c  str w8,[x0, #0x10]
019ed560  bl 0x01b490fc
019ed564  strb wzr,[x22]
019ed568  str xzr,[x21]
019ed56c  ldur w9,[x19, #-0x58]
019ed570  str w20,[x19]
019ed574  mov w8,w9
019ed578  tbz w9,#0x1f,0x019ed588
019ed57c  sub x8,x19,#0x60
019ed580  sub x8,x8,w9, SXTH 
019ed584  ldr w8,[x8]
019ed588  ubfx w10,w9,#0x10,#0xf
019ed58c  cmp w9,#0x0
019ed590  csel w1,wzr,w10,ge
019ed594  str w20,[sp, #0xc]
019ed598  tbnz w8,#0x1f,0x019ed5b4
019ed59c  cbz w8,0x019ed5d8
019ed5a0  mov w2,#0xa
019ed5a4  add x3,sp,#0xc
019ed5a8  mov w0,w8
019ed5ac  bl 0x01b1d8c0
019ed5b0  b 0x019ed5d8
019ed5b4  mov x3,#0x6472
019ed5b8  adrp x2,0x574b000
019ed5bc  movk x3,#0x7474, LSL #16
019ed5c0  add x2,x2,#0x398
019ed5c4  mov w1,#0x1
019ed5c8  movk x3,#0x100, LSL #48
019ed5cc  mov w0,wzr
019ed5d0  mov w4,w8
019ed5d4  bl 0x01b83618
019ed5d8  mov x0,x19
019ed5dc  ldp x29,x30,[sp, #0x30]
019ed5e0  ldp x20,x19,[sp, #0x20]
019ed5e4  ldp x22,x21,[sp, #0x10]
019ed5e8  add sp,sp,#0x40
019ed5ec  ret
019ed5f0  stp x22,x21,[sp, #-0x30]!
019ed5f4  stp x20,x19,[sp, #0x10]
019ed5f8  stp x29,x30,[sp, #0x20]
019ed5fc  add x29,sp,#0x20
019ed600  mov x19,x0
019ed604  ldr w8,[x19]
019ed608  mov w20,w1
019ed60c  cmp w8,w20
019ed610  b.eq 0x019ed6d4
019ed614  adrp x21,0x7319000
019ed618  ldr x21,[x21, #0x548]
019ed61c  ldr x8,[x21]
019ed620  cbz x8,0x019ed670
019ed624  mov x0,xzr
019ed628  bl 0x01b4868c
019ed62c  tst w0,#0xff
019ed630  b.eq 0x019ed6d0
019ed634  ldr w8,[x19]
019ed638  cmp w8,w20
019ed63c  b.eq 0x019ed6d0
019ed640  ldur w8,[x19, #-0x58]
019ed644  cmp w8,#0x1
019ed648  b.lt 0x019ed6d0
019ed64c  bl 0x01b4635c
019ed650  ldur w8,[x19, #-0x58]
019ed654  ldr x0,[x0, #0x38]
019ed658  mov w2,#0x803
019ed65c  mov w1,w20
019ed660  add w8,w8,#0x1c
019ed664  str w8,[x0, #0x10]
019ed668  bl 0x01b490fc
019ed66c  b 0x019ed6d0
019ed670  str x30,[x21]
019ed674  adrp x22,0x7317000
019ed678  ldr x22,[x22, #0xd28]
019ed67c  mov x0,xzr
019ed680  strb wzr,[x22]
019ed684  bl 0x01b4868c
019ed688  tst w0,#0xff
019ed68c  b.eq 0x019ed6c8
019ed690  ldr w8,[x19]
019ed694  cmp w8,w20
019ed698  b.eq 0x019ed6c8
019ed69c  ldur w8,[x19, #-0x58]
019ed6a0  cmp w8,#0x1
019ed6a4  b.lt 0x019ed6c8
019ed6a8  bl 0x01b4635c
019ed6ac  ldur w8,[x19, #-0x58]
019ed6b0  ldr x0,[x0, #0x38]
019ed6b4  mov w2,#0x803
019ed6b8  mov w1,w20
019ed6bc  add w8,w8,#0x1c
019ed6c0  str w8,[x0, #0x10]
019ed6c4  bl 0x01b490fc
019ed6c8  strb wzr,[x22]
019ed6cc  str xzr,[x21]
019ed6d0  str w20,[x19]
019ed6d4  mov x0,x19
019ed6d8  ldp x29,x30,[sp, #0x20]
019ed6dc  ldp x20,x19,[sp, #0x10]
019ed6e0  ldp x22,x21,[sp], #0x30
019ed6e4  ret
019ed6e8  sub sp,sp,#0x40
019ed6ec  stp x22,x21,[sp, #0x10]
019ed6f0  stp x20,x19,[sp, #0x20]
019ed6f4  stp x29,x30,[sp, #0x30]
019ed6f8  add x29,sp,#0x30
019ed6fc  mov x19,x0
019ed700  ldr w8,[x19]
019ed704  mov w20,w1
019ed708  cmp w8,w20
019ed70c  b.eq 0x019ed838
019ed710  adrp x21,0x7319000
019ed714  ldr x21,[x21, #0x548]
019ed718  ldr x8,[x21]
019ed71c  cbz x8,0x019ed76c
019ed720  mov x0,xzr
019ed724  bl 0x01b4868c
019ed728  tst w0,#0xff
019ed72c  b.eq 0x019ed7cc
019ed730  ldr w8,[x19]
019ed734  cmp w8,w20
019ed738  b.eq 0x019ed7cc
019ed73c  ldur w8,[x19, #-0x5c]
019ed740  cmp w8,#0x1
019ed744  b.lt 0x019ed7cc
019ed748  bl 0x01b4635c
019ed74c  ldur w8,[x19, #-0x5c]
019ed750  ldr x0,[x0, #0x38]
019ed754  mov w2,#0x805
019ed758  mov w1,w20
019ed75c  add w8,w8,#0x20
019ed760  str w8,[x0, #0x10]
019ed764  bl 0x01b490fc
019ed768  b 0x019ed7cc
019ed76c  str x30,[x21]
019ed770  adrp x22,0x7317000
019ed774  ldr x22,[x22, #0xd28]
019ed778  mov x0,xzr
019ed77c  strb wzr,[x22]
019ed780  bl 0x01b4868c
019ed784  tst w0,#0xff
019ed788  b.eq 0x019ed7c4
019ed78c  ldr w8,[x19]
019ed790  cmp w8,w20
019ed794  b.eq 0x019ed7c4
019ed798  ldur w8,[x19, #-0x5c]
019ed79c  cmp w8,#0x1
019ed7a0  b.lt 0x019ed7c4
019ed7a4  bl 0x01b4635c
019ed7a8  ldur w8,[x19, #-0x5c]
019ed7ac  ldr x0,[x0, #0x38]
019ed7b0  mov w2,#0x805
019ed7b4  mov w1,w20
019ed7b8  add w8,w8,#0x20
019ed7bc  str w8,[x0, #0x10]
019ed7c0  bl 0x01b490fc
019ed7c4  strb wzr,[x22]
019ed7c8  str xzr,[x21]
019ed7cc  ldur w9,[x19, #-0x60]
019ed7d0  str w20,[x19]
019ed7d4  mov w8,w9
019ed7d8  tbz w9,#0x1f,0x019ed7e8
019ed7dc  sub x8,x19,#0x68
019ed7e0  sub x8,x8,w9, SXTH 
019ed7e4  ldr w8,[x8]
019ed7e8  ubfx w10,w9,#0x10,#0xf
019ed7ec  cmp w9,#0x0
019ed7f0  csel w1,wzr,w10,ge
019ed7f4  str w20,[sp, #0xc]
019ed7f8  tbnz w8,#0x1f,0x019ed814
019ed7fc  cbz w8,0x019ed838
019ed800  mov w2,#0xb
019ed804  add x3,sp,#0xc
019ed808  mov w0,w8
019ed80c  bl 0x01b1d8c0
019ed810  b 0x019ed838
019ed814  mov x3,#0x6472
019ed818  adrp x2,0x574b000
019ed81c  movk x3,#0x7474, LSL #16
019ed820  add x2,x2,#0x398
019ed824  mov w1,#0x1
019ed828  movk x3,#0x100, LSL #48
019ed82c  mov w0,wzr
019ed830  mov w4,w8
019ed834  bl 0x01b83618
019ed838  mov x0,x19
019ed83c  ldp x29,x30,[sp, #0x30]
019ed840  ldp x20,x19,[sp, #0x20]
019ed844  ldp x22,x21,[sp, #0x10]
019ed848  add sp,sp,#0x40
019ed84c  ret
019ed850  sub sp,sp,#0x40
019ed854  stp x22,x21,[sp, #0x10]
019ed858  stp x20,x19,[sp, #0x20]
019ed85c  stp x29,x30,[sp, #0x30]
019ed860  add x29,sp,#0x30
019ed864  mov x19,x0
019ed868  ldr w8,[x19]
019ed86c  mov w20,w1
019ed870  cmp w8,w20
019ed874  b.eq 0x019ed9a0
019ed878  adrp x21,0x7319000
019ed87c  ldr x21,[x21, #0x548]
019ed880  ldr x8,[x21]
019ed884  cbz x8,0x019ed8d4
019ed888  mov x0,xzr
019ed88c  bl 0x01b4868c
019ed890  tst w0,#0xff
019ed894  b.eq 0x019ed934
019ed898  ldr w8,[x19]
019ed89c  cmp w8,w20
019ed8a0  b.eq 0x019ed934
019ed8a4  ldur w8,[x19, #-0x68]
019ed8a8  cmp w8,#0x1
019ed8ac  b.lt 0x019ed934
019ed8b0  bl 0x01b4635c
019ed8b4  ldur w8,[x19, #-0x68]
019ed8b8  ldr x0,[x0, #0x38]
019ed8bc  mov w2,#0x807
019ed8c0  mov w1,w20
019ed8c4  add w8,w8,#0x24
019ed8c8  str w8,[x0, #0x10]
019ed8cc  bl 0x01b490fc
019ed8d0  b 0x019ed934
019ed8d4  str x30,[x21]
019ed8d8  adrp x22,0x7317000
019ed8dc  ldr x22,[x22, #0xd28]
019ed8e0  mov x0,xzr
019ed8e4  strb wzr,[x22]
019ed8e8  bl 0x01b4868c
019ed8ec  tst w0,#0xff
019ed8f0  b.eq 0x019ed92c
019ed8f4  ldr w8,[x19]
019ed8f8  cmp w8,w20
019ed8fc  b.eq 0x019ed92c
019ed900  ldur w8,[x19, #-0x68]
019ed904  cmp w8,#0x1
019ed908  b.lt 0x019ed92c
019ed90c  bl 0x01b4635c
019ed910  ldur w8,[x19, #-0x68]
019ed914  ldr x0,[x0, #0x38]
019ed918  mov w2,#0x807
019ed91c  mov w1,w20
019ed920  add w8,w8,#0x24
019ed924  str w8,[x0, #0x10]
019ed928  bl 0x01b490fc
019ed92c  strb wzr,[x22]
019ed930  str xzr,[x21]
019ed934  ldur w9,[x19, #-0x6c]
019ed938  str w20,[x19]
019ed93c  mov w8,w9
019ed940  tbz w9,#0x1f,0x019ed950
019ed944  sub x8,x19,#0x74
019ed948  sub x8,x8,w9, SXTH 
019ed94c  ldr w8,[x8]
019ed950  ubfx w10,w9,#0x10,#0xf
019ed954  cmp w9,#0x0
019ed958  csel w1,wzr,w10,ge
019ed95c  str w20,[sp, #0xc]
019ed960  tbnz w8,#0x1f,0x019ed97c
019ed964  cbz w8,0x019ed9a0
019ed968  mov w2,#0xd
019ed96c  add x3,sp,#0xc
019ed970  mov w0,w8
019ed974  bl 0x01b1d8c0
019ed978  b 0x019ed9a0
019ed97c  mov x3,#0x6472
019ed980  adrp x2,0x574b000
019ed984  movk x3,#0x7474, LSL #16
019ed988  add x2,x2,#0x398
019ed98c  mov w1,#0x1
019ed990  movk x3,#0x100, LSL #48
019ed994  mov w0,wzr
019ed998  mov w4,w8
019ed99c  bl 0x01b83618
019ed9a0  mov x0,x19
019ed9a4  ldp x29,x30,[sp, #0x30]
019ed9a8  ldp x20,x19,[sp, #0x20]
019ed9ac  ldp x22,x21,[sp, #0x10]
019ed9b0  add sp,sp,#0x40
019ed9b4  ret
019ed9b8  stp x22,x21,[sp, #-0x30]!
019ed9bc  stp x20,x19,[sp, #0x10]
019ed9c0  stp x29,x30,[sp, #0x20]
019ed9c4  add x29,sp,#0x20
019ed9c8  mov x19,x0
019ed9cc  ldr w8,[x19]
019ed9d0  mov w20,w1
019ed9d4  cmp w8,w20
019ed9d8  b.eq 0x019eda9c
019ed9dc  adrp x21,0x7319000
019ed9e0  ldr x21,[x21, #0x548]
019ed9e4  ldr x8,[x21]
019ed9e8  cbz x8,0x019eda38
019ed9ec  mov x0,xzr
019ed9f0  bl 0x01b4868c
019ed9f4  tst w0,#0xff
019ed9f8  b.eq 0x019eda98
019ed9fc  ldr w8,[x19]
019eda00  cmp w8,w20
019eda04  b.eq 0x019eda98
019eda08  ldur w8,[x19, #-0x6c]
019eda0c  cmp w8,#0x1
019eda10  b.lt 0x019eda98
019eda14  bl 0x01b4635c
019eda18  ldur w8,[x19, #-0x6c]
019eda1c  ldr x0,[x0, #0x38]
019eda20  mov w2,#0x809
019eda24  mov w1,w20
019eda28  add w8,w8,#0x28
019eda2c  str w8,[x0, #0x10]
019eda30  bl 0x01b48ffc
019eda34  b 0x019eda98
019eda38  str x30,[x21]
019eda3c  adrp x22,0x7317000
019eda40  ldr x22,[x22, #0xd28]
019eda44  mov x0,xzr
019eda48  strb wzr,[x22]
019eda4c  bl 0x01b4868c
019eda50  tst w0,#0xff
019eda54  b.eq 0x019eda90
019eda58  ldr w8,[x19]
019eda5c  cmp w8,w20
019eda60  b.eq 0x019eda90
019eda64  ldur w8,[x19, #-0x6c]
019eda68  cmp w8,#0x1
019eda6c  b.lt 0x019eda90
019eda70  bl 0x01b4635c
019eda74  ldur w8,[x19, #-0x6c]
019eda78  ldr x0,[x0, #0x38]
019eda7c  mov w2,#0x809
019eda80  mov w1,w20
019eda84  add w8,w8,#0x28
019eda88  str w8,[x0, #0x10]
019eda8c  bl 0x01b48ffc
019eda90  strb wzr,[x22]
019eda94  str xzr,[x21]
019eda98  str w20,[x19]
019eda9c  mov x0,x19
019edaa0  ldp x29,x30,[sp, #0x20]
019edaa4  ldp x20,x19,[sp, #0x10]
019edaa8  ldp x22,x21,[sp], #0x30
019edaac  ret
