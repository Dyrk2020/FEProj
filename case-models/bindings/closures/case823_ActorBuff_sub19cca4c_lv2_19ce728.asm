// ===== case823_ActorBuff_sub19cca4c_lv2_19ce728 @ 019ce728 (DecompileAt3: cleared stale instructions at entry) =====
019ce728  sub sp,sp,#0x40
019ce72c  stp x22,x21,[sp, #0x10]
019ce730  stp x20,x19,[sp, #0x20]
019ce734  stp x29,x30,[sp, #0x30]
019ce738  add x29,sp,#0x30
019ce73c  mov x19,x0
019ce740  ldr x8,[x19]
019ce744  mov x20,x1
019ce748  cmp x8,x20
019ce74c  b.eq 0x019ce878
019ce750  adrp x21,0x7319000
019ce754  ldr x21,[x21, #0x548]
019ce758  ldr x8,[x21]
019ce75c  cbz x8,0x019ce7ac
019ce760  mov x0,xzr
019ce764  bl 0x01b4868c
019ce768  tst w0,#0xff
019ce76c  b.eq 0x019ce80c
019ce770  ldr x8,[x19]
019ce774  cmp x8,x20
019ce778  b.eq 0x019ce80c
019ce77c  ldur w8,[x19, #-0x4c]
019ce780  cmp w8,#0x1
019ce784  b.lt 0x019ce80c
019ce788  bl 0x01b4635c
019ce78c  ldur w8,[x19, #-0x4c]
019ce790  ldr x0,[x0, #0x38]
019ce794  mov w2,#0x249a
019ce798  mov x1,x20
019ce79c  add w8,w8,#0x34
019ce7a0  str w8,[x0, #0x10]
019ce7a4  bl 0x01b490bc
019ce7a8  b 0x019ce80c
019ce7ac  str x30,[x21]
019ce7b0  adrp x22,0x7317000
019ce7b4  ldr x22,[x22, #0xd28]
019ce7b8  mov x0,xzr
019ce7bc  strb wzr,[x22]
019ce7c0  bl 0x01b4868c
019ce7c4  tst w0,#0xff
019ce7c8  b.eq 0x019ce804
019ce7cc  ldr x8,[x19]
019ce7d0  cmp x8,x20
019ce7d4  b.eq 0x019ce804
019ce7d8  ldur w8,[x19, #-0x4c]
019ce7dc  cmp w8,#0x1
019ce7e0  b.lt 0x019ce804
019ce7e4  bl 0x01b4635c
019ce7e8  ldur w8,[x19, #-0x4c]
019ce7ec  ldr x0,[x0, #0x38]
019ce7f0  mov w2,#0x249a
019ce7f4  mov x1,x20
019ce7f8  add w8,w8,#0x34
019ce7fc  str w8,[x0, #0x10]
019ce800  bl 0x01b490bc
019ce804  strb wzr,[x22]
019ce808  str xzr,[x21]
019ce80c  ldur w9,[x19, #-0x50]
019ce810  str x20,[x19]
019ce814  mov w8,w9
019ce818  tbz w9,#0x1f,0x019ce828
019ce81c  sub x8,x19,#0x58
019ce820  sub x8,x8,w9, SXTH 
019ce824  ldr w8,[x8]
019ce828  ubfx w10,w9,#0x10,#0xf
019ce82c  cmp w9,#0x0
019ce830  csel w1,wzr,w10,ge
019ce834  str x20,[sp, #0x8]
019ce838  tbnz w8,#0x1f,0x019ce854
019ce83c  cbz w8,0x019ce878
019ce840  mov w2,#0xa
019ce844  add x3,sp,#0x8
019ce848  mov w0,w8
019ce84c  bl 0x01b1d968
019ce850  b 0x019ce878
019ce854  mov x3,#0x6472
019ce858  adrp x2,0x574b000
019ce85c  movk x3,#0x7474, LSL #16
019ce860  add x2,x2,#0x398
019ce864  mov w1,#0x1
019ce868  movk x3,#0x100, LSL #48
019ce86c  mov w0,wzr
019ce870  mov w4,w8
019ce874  bl 0x01b83618
019ce878  mov x0,x19
019ce87c  ldp x29,x30,[sp, #0x30]
019ce880  ldp x20,x19,[sp, #0x20]
019ce884  ldp x22,x21,[sp, #0x10]
019ce888  add sp,sp,#0x40
019ce88c  ret
019ce890  stp x22,x21,[sp, #-0x30]!
019ce894  stp x20,x19,[sp, #0x10]
019ce898  stp x29,x30,[sp, #0x20]
019ce89c  add x29,sp,#0x20
019ce8a0  mov x19,x0
019ce8a4  ldr x8,[x19]
019ce8a8  mov x20,x1
019ce8ac  cmp x8,x20
019ce8b0  b.eq 0x019ce974
019ce8b4  adrp x21,0x7319000
019ce8b8  ldr x21,[x21, #0x548]
019ce8bc  ldr x8,[x21]
019ce8c0  cbz x8,0x019ce910
019ce8c4  mov x0,xzr
019ce8c8  bl 0x01b4868c
019ce8cc  tst w0,#0xff
019ce8d0  b.eq 0x019ce970
019ce8d4  ldr x8,[x19]
019ce8d8  cmp x8,x20
019ce8dc  b.eq 0x019ce970
019ce8e0  ldur w8,[x19, #-0x54]
019ce8e4  cmp w8,#0x1
019ce8e8  b.lt 0x019ce970
019ce8ec  bl 0x01b4635c
019ce8f0  ldur w8,[x19, #-0x54]
019ce8f4  ldr x0,[x0, #0x38]
019ce8f8  mov w2,#0x249c
019ce8fc  mov x1,x20
019ce900  add w8,w8,#0x3c
019ce904  str w8,[x0, #0x10]
019ce908  bl 0x01b490bc
019ce90c  b 0x019ce970
019ce910  str x30,[x21]
019ce914  adrp x22,0x7317000
019ce918  ldr x22,[x22, #0xd28]
019ce91c  mov x0,xzr
019ce920  strb wzr,[x22]
019ce924  bl 0x01b4868c
019ce928  tst w0,#0xff
019ce92c  b.eq 0x019ce968
019ce930  ldr x8,[x19]
019ce934  cmp x8,x20
019ce938  b.eq 0x019ce968
019ce93c  ldur w8,[x19, #-0x54]
019ce940  cmp w8,#0x1
019ce944  b.lt 0x019ce968
019ce948  bl 0x01b4635c
019ce94c  ldur w8,[x19, #-0x54]
019ce950  ldr x0,[x0, #0x38]
019ce954  mov w2,#0x249c
019ce958  mov x1,x20
019ce95c  add w8,w8,#0x3c
019ce960  str w8,[x0, #0x10]
019ce964  bl 0x01b490bc
019ce968  strb wzr,[x22]
019ce96c  str xzr,[x21]
019ce970  str x20,[x19]
019ce974  mov x0,x19
019ce978  ldp x29,x30,[sp, #0x20]
019ce97c  ldp x20,x19,[sp, #0x10]
019ce980  ldp x22,x21,[sp], #0x30
019ce984  ret
019ce988  sub sp,sp,#0x40
019ce98c  stp x22,x21,[sp, #0x10]
019ce990  stp x20,x19,[sp, #0x20]
019ce994  stp x29,x30,[sp, #0x30]
019ce998  add x29,sp,#0x30
019ce99c  mov x19,x0
019ce9a0  ldr x8,[x19]
019ce9a4  mov x20,x1
019ce9a8  cmp x8,x20
019ce9ac  b.eq 0x019cead8
019ce9b0  adrp x21,0x7319000
019ce9b4  ldr x21,[x21, #0x548]
019ce9b8  ldr x8,[x21]
019ce9bc  cbz x8,0x019cea0c
019ce9c0  mov x0,xzr
019ce9c4  bl 0x01b4868c
019ce9c8  tst w0,#0xff
019ce9cc  b.eq 0x019cea6c
019ce9d0  ldr x8,[x19]
019ce9d4  cmp x8,x20
019ce9d8  b.eq 0x019cea6c
019ce9dc  ldur w8,[x19, #-0x74]
019ce9e0  cmp w8,#0x1
019ce9e4  b.lt 0x019cea6c
019ce9e8  bl 0x01b4635c
019ce9ec  ldur w8,[x19, #-0x74]
019ce9f0  ldr x0,[x0, #0x38]
019ce9f4  mov w2,#0x249e
019ce9f8  mov x1,x20
019ce9fc  add w8,w8,#0x44
019cea00  str w8,[x0, #0x10]
019cea04  bl 0x01b490bc
019cea08  b 0x019cea6c
019cea0c  str x30,[x21]
019cea10  adrp x22,0x7317000
019cea14  ldr x22,[x22, #0xd28]
019cea18  mov x0,xzr
019cea1c  strb wzr,[x22]
019cea20  bl 0x01b4868c
019cea24  tst w0,#0xff
019cea28  b.eq 0x019cea64
019cea2c  ldr x8,[x19]
019cea30  cmp x8,x20
019cea34  b.eq 0x019cea64
019cea38  ldur w8,[x19, #-0x74]
019cea3c  cmp w8,#0x1
019cea40  b.lt 0x019cea64
019cea44  bl 0x01b4635c
019cea48  ldur w8,[x19, #-0x74]
019cea4c  ldr x0,[x0, #0x38]
019cea50  mov w2,#0x249e
019cea54  mov x1,x20
019cea58  add w8,w8,#0x44
019cea5c  str w8,[x0, #0x10]
019cea60  bl 0x01b490bc
019cea64  strb wzr,[x22]
019cea68  str xzr,[x21]
019cea6c  ldur w9,[x19, #-0x78]
019cea70  str x20,[x19]
019cea74  mov w8,w9
019cea78  tbz w9,#0x1f,0x019cea88
019cea7c  sub x8,x19,#0x80
019cea80  sub x8,x8,w9, SXTH 
019cea84  ldr w8,[x8]
019cea88  ubfx w10,w9,#0x10,#0xf
019cea8c  cmp w9,#0x0
019cea90  csel w1,wzr,w10,ge
019cea94  str x20,[sp, #0x8]
019cea98  tbnz w8,#0x1f,0x019ceab4
019cea9c  cbz w8,0x019cead8
019ceaa0  mov w2,#0xb
019ceaa4  add x3,sp,#0x8
019ceaa8  mov w0,w8
019ceaac  bl 0x01b1d968
019ceab0  b 0x019cead8
019ceab4  mov x3,#0x6472
019ceab8  adrp x2,0x574b000
019ceabc  movk x3,#0x7474, LSL #16
019ceac0  add x2,x2,#0x398
019ceac4  mov w1,#0x1
019ceac8  movk x3,#0x100, LSL #48
019ceacc  mov w0,wzr
019cead0  mov w4,w8
019cead4  bl 0x01b83618
019cead8  mov x0,x19
019ceadc  ldp x29,x30,[sp, #0x30]
019ceae0  ldp x20,x19,[sp, #0x20]
019ceae4  ldp x22,x21,[sp, #0x10]
019ceae8  add sp,sp,#0x40
019ceaec  ret
019ceaf0  sub sp,sp,#0x40
019ceaf4  stp x22,x21,[sp, #0x10]
019ceaf8  stp x20,x19,[sp, #0x20]
019ceafc  stp x29,x30,[sp, #0x30]
019ceb00  add x29,sp,#0x30
019ceb04  mov x19,x0
019ceb08  ldr x8,[x19]
019ceb0c  mov x20,x1
019ceb10  cmp x8,x20
019ceb14  b.eq 0x019cec40
019ceb18  adrp x21,0x7319000
019ceb1c  ldr x21,[x21, #0x548]
019ceb20  ldr x8,[x21]
019ceb24  cbz x8,0x019ceb74
019ceb28  mov x0,xzr
019ceb2c  bl 0x01b4868c
019ceb30  tst w0,#0xff
019ceb34  b.eq 0x019cebd4
019ceb38  ldr x8,[x19]
019ceb3c  cmp x8,x20
019ceb40  b.eq 0x019cebd4
019ceb44  ldur w8,[x19, #-0x7c]
019ceb48  cmp w8,#0x1
019ceb4c  b.lt 0x019cebd4
019ceb50  bl 0x01b4635c
019ceb54  ldur w8,[x19, #-0x7c]
019ceb58  ldr x0,[x0, #0x38]
019ceb5c  mov w2,#0x24a0
019ceb60  mov x1,x20
019ceb64  add w8,w8,#0x4c
019ceb68  str w8,[x0, #0x10]
019ceb6c  bl 0x01b490bc
019ceb70  b 0x019cebd4
019ceb74  str x30,[x21]
019ceb78  adrp x22,0x7317000
019ceb7c  ldr x22,[x22, #0xd28]
019ceb80  mov x0,xzr
019ceb84  strb wzr,[x22]
019ceb88  bl 0x01b4868c
019ceb8c  tst w0,#0xff
019ceb90  b.eq 0x019cebcc
019ceb94  ldr x8,[x19]
019ceb98  cmp x8,x20
019ceb9c  b.eq 0x019cebcc
019ceba0  ldur w8,[x19, #-0x7c]
019ceba4  cmp w8,#0x1
019ceba8  b.lt 0x019cebcc
019cebac  bl 0x01b4635c
019cebb0  ldur w8,[x19, #-0x7c]
019cebb4  ldr x0,[x0, #0x38]
019cebb8  mov w2,#0x24a0
019cebbc  mov x1,x20
019cebc0  add w8,w8,#0x4c
019cebc4  str w8,[x0, #0x10]
019cebc8  bl 0x01b490bc
019cebcc  strb wzr,[x22]
019cebd0  str xzr,[x21]
019cebd4  ldur w9,[x19, #-0x80]
019cebd8  str x20,[x19]
019cebdc  mov w8,w9
019cebe0  tbz w9,#0x1f,0x019cebf0
019cebe4  sub x8,x19,#0x88
019cebe8  sub x8,x8,w9, SXTH 
019cebec  ldr w8,[x8]
019cebf0  ubfx w10,w9,#0x10,#0xf
019cebf4  cmp w9,#0x0
019cebf8  csel w1,wzr,w10,ge
019cebfc  str x20,[sp, #0x8]
019cec00  tbnz w8,#0x1f,0x019cec1c
019cec04  cbz w8,0x019cec40
019cec08  orr w2,wzr,#0xc
019cec0c  add x3,sp,#0x8
019cec10  mov w0,w8
019cec14  bl 0x01b1d968
019cec18  b 0x019cec40
019cec1c  mov x3,#0x6472
019cec20  adrp x2,0x574b000
019cec24  movk x3,#0x7474, LSL #16
019cec28  add x2,x2,#0x398
019cec2c  mov w1,#0x1
019cec30  movk x3,#0x100, LSL #48
019cec34  mov w0,wzr
019cec38  mov w4,w8
019cec3c  bl 0x01b83618
019cec40  mov x0,x19
019cec44  ldp x29,x30,[sp, #0x30]
019cec48  ldp x20,x19,[sp, #0x20]
019cec4c  ldp x22,x21,[sp, #0x10]
019cec50  add sp,sp,#0x40
019cec54  ret
019cec58  sub sp,sp,#0x40
019cec5c  stp x22,x21,[sp, #0x10]
019cec60  stp x20,x19,[sp, #0x20]
019cec64  stp x29,x30,[sp, #0x30]
019cec68  add x29,sp,#0x30
019cec6c  mov x19,x0
019cec70  ldr x8,[x19]
019cec74  mov x20,x1
019cec78  cmp x8,x20
019cec7c  b.eq 0x019ceda8
019cec80  adrp x21,0x7319000
019cec84  ldr x21,[x21, #0x548]
019cec88  ldr x8,[x21]
019cec8c  cbz x8,0x019cecdc
019cec90  mov x0,xzr
019cec94  bl 0x01b4868c
019cec98  tst w0,#0xff
019cec9c  b.eq 0x019ced3c
019ceca0  ldr x8,[x19]
019ceca4  cmp x8,x20
019ceca8  b.eq 0x019ced3c
019cecac  ldur w8,[x19, #-0x84]
019cecb0  cmp w8,#0x1
019cecb4  b.lt 0x019ced3c
019cecb8  bl 0x01b4635c
019cecbc  ldur w8,[x19, #-0x84]
019cecc0  ldr x0,[x0, #0x38]
019cecc4  mov w2,#0x24a2
019cecc8  mov x1,x20
019ceccc  add w8,w8,#0x54
019cecd0  str w8,[x0, #0x10]
019cecd4  bl 0x01b490bc
019cecd8  b 0x019ced3c
019cecdc  str x30,[x21]
019cece0  adrp x22,0x7317000
019cece4  ldr x22,[x22, #0xd28]
019cece8  mov x0,xzr
019cecec  strb wzr,[x22]
019cecf0  bl 0x01b4868c
019cecf4  tst w0,#0xff
019cecf8  b.eq 0x019ced34
019cecfc  ldr x8,[x19]
019ced00  cmp x8,x20
019ced04  b.eq 0x019ced34
019ced08  ldur w8,[x19, #-0x84]
019ced0c  cmp w8,#0x1
019ced10  b.lt 0x019ced34
019ced14  bl 0x01b4635c
019ced18  ldur w8,[x19, #-0x84]
019ced1c  ldr x0,[x0, #0x38]
019ced20  mov w2,#0x24a2
019ced24  mov x1,x20
019ced28  add w8,w8,#0x54
019ced2c  str w8,[x0, #0x10]
019ced30  bl 0x01b490bc
019ced34  strb wzr,[x22]
019ced38  str xzr,[x21]
019ced3c  ldur w9,[x19, #-0x88]
019ced40  str x20,[x19]
019ced44  mov w8,w9
019ced48  tbz w9,#0x1f,0x019ced58
019ced4c  sub x8,x19,#0x90
019ced50  sub x8,x8,w9, SXTH 
019ced54  ldr w8,[x8]
019ced58  ubfx w10,w9,#0x10,#0xf
019ced5c  cmp w9,#0x0
019ced60  csel w1,wzr,w10,ge
019ced64  str x20,[sp, #0x8]
019ced68  tbnz w8,#0x1f,0x019ced84
019ced6c  cbz w8,0x019ceda8
019ced70  mov w2,#0xd
019ced74  add x3,sp,#0x8
019ced78  mov w0,w8
019ced7c  bl 0x01b1d968
019ced80  b 0x019ceda8
019ced84  mov x3,#0x6472
019ced88  adrp x2,0x574b000
019ced8c  movk x3,#0x7474, LSL #16
019ced90  add x2,x2,#0x398
019ced94  mov w1,#0x1
019ced98  movk x3,#0x100, LSL #48
019ced9c  mov w0,wzr
019ceda0  mov w4,w8
019ceda4  bl 0x01b83618
019ceda8  mov x0,x19
019cedac  ldp x29,x30,[sp, #0x30]
019cedb0  ldp x20,x19,[sp, #0x20]
019cedb4  ldp x22,x21,[sp, #0x10]
019cedb8  add sp,sp,#0x40
019cedbc  ret
019cedc0  sub sp,sp,#0x40
019cedc4  stp x22,x21,[sp, #0x10]
019cedc8  stp x20,x19,[sp, #0x20]
019cedcc  stp x29,x30,[sp, #0x30]
019cedd0  add x29,sp,#0x30
019cedd4  mov x19,x0
019cedd8  ldr x8,[x19]
019ceddc  mov x20,x1
019cede0  cmp x8,x20
019cede4  b.eq 0x019cef10
019cede8  adrp x21,0x7319000
019cedec  ldr x21,[x21, #0x548]
019cedf0  ldr x8,[x21]
019cedf4  cbz x8,0x019cee44
019cedf8  mov x0,xzr
019cedfc  bl 0x01b4868c
019cee00  tst w0,#0xff
019cee04  b.eq 0x019ceea4
019cee08  ldr x8,[x19]
019cee0c  cmp x8,x20
019cee10  b.eq 0x019ceea4
019cee14  ldur w8,[x19, #-0xac]
019cee18  cmp w8,#0x1
019cee1c  b.lt 0x019ceea4
019cee20  bl 0x01b4635c
019cee24  ldur w8,[x19, #-0xac]
019cee28  ldr x0,[x0, #0x38]
019cee2c  mov w2,#0x24a4
019cee30  mov x1,x20
019cee34  add w8,w8,#0x5c
019cee38  str w8,[x0, #0x10]
019cee3c  bl 0x01b490bc
019cee40  b 0x019ceea4
019cee44  str x30,[x21]
019cee48  adrp x22,0x7317000
019cee4c  ldr x22,[x22, #0xd28]
019cee50  mov x0,xzr
019cee54  strb wzr,[x22]
019cee58  bl 0x01b4868c
019cee5c  tst w0,#0xff
019cee60  b.eq 0x019cee9c
019cee64  ldr x8,[x19]
019cee68  cmp x8,x20
019cee6c  b.eq 0x019cee9c
019cee70  ldur w8,[x19, #-0xac]
019cee74  cmp w8,#0x1
019cee78  b.lt 0x019cee9c
019cee7c  bl 0x01b4635c
019cee80  ldur w8,[x19, #-0xac]
019cee84  ldr x0,[x0, #0x38]
019cee88  mov w2,#0x24a4
019cee8c  mov x1,x20
019cee90  add w8,w8,#0x5c
019cee94  str w8,[x0, #0x10]
019cee98  bl 0x01b490bc
019cee9c  strb wzr,[x22]
019ceea0  str xzr,[x21]
019ceea4  ldur w9,[x19, #-0xb0]
019ceea8  str x20,[x19]
019ceeac  mov w8,w9
019ceeb0  tbz w9,#0x1f,0x019ceec0
019ceeb4  sub x8,x19,#0xb8
019ceeb8  sub x8,x8,w9, SXTH 
019ceebc  ldr w8,[x8]
019ceec0  ubfx w10,w9,#0x10,#0xf
019ceec4  cmp w9,#0x0
019ceec8  csel w1,wzr,w10,ge
019ceecc  str x20,[sp, #0x8]
019ceed0  tbnz w8,#0x1f,0x019ceeec
019ceed4  cbz w8,0x019cef10
019ceed8  orr w2,wzr,#0xe
019ceedc  add x3,sp,#0x8
019ceee0  mov w0,w8
019ceee4  bl 0x01b1d968
019ceee8  b 0x019cef10
019ceeec  mov x3,#0x6472
019ceef0  adrp x2,0x574b000
019ceef4  movk x3,#0x7474, LSL #16
019ceef8  add x2,x2,#0x398
019ceefc  mov w1,#0x1
019cef00  movk x3,#0x100, LSL #48
019cef04  mov w0,wzr
019cef08  mov w4,w8
019cef0c  bl 0x01b83618
019cef10  mov x0,x19
019cef14  ldp x29,x30,[sp, #0x30]
019cef18  ldp x20,x19,[sp, #0x20]
019cef1c  ldp x22,x21,[sp, #0x10]
019cef20  add sp,sp,#0x40
019cef24  ret
019cef28  stp x20,x19,[sp, #-0x20]!
019cef2c  stp x29,x30,[sp, #0x10]
019cef30  add x29,sp,#0x10
019cef34  mov w1,#0x1
019cef38  mov x19,x0
019cef3c  bl 0x0124ff50
019cef40  cbz w0,0x019cef6c
019cef44  adrp x2,0x736d000
019cef48  adrp x3,0x736d000
019cef4c  add x2,x2,#0x899
019cef50  add x3,x3,#0x898
019cef54  mov w1,#0x1
019cef58  mov w4,#0x1
019cef5c  mov x0,x19
019cef60  bl 0x0174b938
019cef64  ldr x20,[x0, #0x8]
019cef68  b 0x019cef70
019cef6c  mov x20,xzr
019cef70  mov w1,#0xb9d7
019cef74  movk w1,#0xfff0, LSL #16
019cef78  mov x0,x19
019cef7c  bl 0x0124e990
019cef80  mov x2,x0
019cef84  mov x0,x19
019cef88  mov x1,x20
019cef8c  bl 0x019cef9c
019cef90  ldp x29,x30,[sp, #0x10]
019cef94  ldp x20,x19,[sp], #0x20
019cef98  ret
