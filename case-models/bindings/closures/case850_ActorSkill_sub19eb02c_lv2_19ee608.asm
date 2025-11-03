// ===== case850_ActorSkill_sub19eb02c_lv2_19ee608 @ 019ee608 (DecompileAt3: cleared stale instructions at entry) =====
019ee608  sub sp,sp,#0x40
019ee60c  stp x22,x21,[sp, #0x10]
019ee610  stp x20,x19,[sp, #0x20]
019ee614  stp x29,x30,[sp, #0x30]
019ee618  add x29,sp,#0x30
019ee61c  mov x19,x0
019ee620  ldr x8,[x19]
019ee624  mov x20,x1
019ee628  cmp x8,x20
019ee62c  b.eq 0x019ee758
019ee630  adrp x21,0x7319000
019ee634  ldr x21,[x21, #0x548]
019ee638  ldr x8,[x21]
019ee63c  cbz x8,0x019ee68c
019ee640  mov x0,xzr
019ee644  bl 0x01b4868c
019ee648  tst w0,#0xff
019ee64c  b.eq 0x019ee6ec
019ee650  ldr x8,[x19]
019ee654  cmp x8,x20
019ee658  b.eq 0x019ee6ec
019ee65c  ldur w8,[x19, #-0xbc]
019ee660  cmp w8,#0x1
019ee664  b.lt 0x019ee6ec
019ee668  bl 0x01b4635c
019ee66c  ldur w8,[x19, #-0xbc]
019ee670  ldr x0,[x0, #0x38]
019ee674  mov w2,#0x819
019ee678  mov x1,x20
019ee67c  add w8,w8,#0x4d
019ee680  str w8,[x0, #0x10]
019ee684  bl 0x01b490bc
019ee688  b 0x019ee6ec
019ee68c  str x30,[x21]
019ee690  adrp x22,0x7317000
019ee694  ldr x22,[x22, #0xd28]
019ee698  mov x0,xzr
019ee69c  strb wzr,[x22]
019ee6a0  bl 0x01b4868c
019ee6a4  tst w0,#0xff
019ee6a8  b.eq 0x019ee6e4
019ee6ac  ldr x8,[x19]
019ee6b0  cmp x8,x20
019ee6b4  b.eq 0x019ee6e4
019ee6b8  ldur w8,[x19, #-0xbc]
019ee6bc  cmp w8,#0x1
019ee6c0  b.lt 0x019ee6e4
019ee6c4  bl 0x01b4635c
019ee6c8  ldur w8,[x19, #-0xbc]
019ee6cc  ldr x0,[x0, #0x38]
019ee6d0  mov w2,#0x819
019ee6d4  mov x1,x20
019ee6d8  add w8,w8,#0x4d
019ee6dc  str w8,[x0, #0x10]
019ee6e0  bl 0x01b490bc
019ee6e4  strb wzr,[x22]
019ee6e8  str xzr,[x21]
019ee6ec  ldur w9,[x19, #-0xc0]
019ee6f0  str x20,[x19]
019ee6f4  mov w8,w9
019ee6f8  tbz w9,#0x1f,0x019ee708
019ee6fc  sub x8,x19,#0xc8
019ee700  sub x8,x8,w9, SXTH 
019ee704  ldr w8,[x8]
019ee708  ubfx w10,w9,#0x10,#0xf
019ee70c  cmp w9,#0x0
019ee710  csel w1,wzr,w10,ge
019ee714  str x20,[sp, #0x8]
019ee718  tbnz w8,#0x1f,0x019ee734
019ee71c  cbz w8,0x019ee758
019ee720  mov w2,#0x13
019ee724  add x3,sp,#0x8
019ee728  mov w0,w8
019ee72c  bl 0x01b1d968
019ee730  b 0x019ee758
019ee734  mov x3,#0x6472
019ee738  adrp x2,0x574b000
019ee73c  movk x3,#0x7474, LSL #16
019ee740  add x2,x2,#0x398
019ee744  mov w1,#0x1
019ee748  movk x3,#0x100, LSL #48
019ee74c  mov w0,wzr
019ee750  mov w4,w8
019ee754  bl 0x01b83618
019ee758  mov x0,x19
019ee75c  ldp x29,x30,[sp, #0x30]
019ee760  ldp x20,x19,[sp, #0x20]
019ee764  ldp x22,x21,[sp, #0x10]
019ee768  add sp,sp,#0x40
019ee76c  ret
019ee770  stp x22,x21,[sp, #-0x30]!
019ee774  stp x20,x19,[sp, #0x10]
019ee778  stp x29,x30,[sp, #0x20]
019ee77c  add x29,sp,#0x20
019ee780  mov x19,x0
019ee784  ldr x8,[x19]
019ee788  mov x20,x1
019ee78c  cmp x8,x20
019ee790  b.eq 0x019ee854
019ee794  adrp x21,0x7319000
019ee798  ldr x21,[x21, #0x548]
019ee79c  ldr x8,[x21]
019ee7a0  cbz x8,0x019ee7f0
019ee7a4  mov x0,xzr
019ee7a8  bl 0x01b4868c
019ee7ac  tst w0,#0xff
019ee7b0  b.eq 0x019ee850
019ee7b4  ldr x8,[x19]
019ee7b8  cmp x8,x20
019ee7bc  b.eq 0x019ee850
019ee7c0  ldur w8,[x19, #-0xc4]
019ee7c4  cmp w8,#0x1
019ee7c8  b.lt 0x019ee850
019ee7cc  bl 0x01b4635c
019ee7d0  ldur w8,[x19, #-0xc4]
019ee7d4  ldr x0,[x0, #0x38]
019ee7d8  mov w2,#0x81b
019ee7dc  mov x1,x20
019ee7e0  add w8,w8,#0x55
019ee7e4  str w8,[x0, #0x10]
019ee7e8  bl 0x01b490bc
019ee7ec  b 0x019ee850
019ee7f0  str x30,[x21]
019ee7f4  adrp x22,0x7317000
019ee7f8  ldr x22,[x22, #0xd28]
019ee7fc  mov x0,xzr
019ee800  strb wzr,[x22]
019ee804  bl 0x01b4868c
019ee808  tst w0,#0xff
019ee80c  b.eq 0x019ee848
019ee810  ldr x8,[x19]
019ee814  cmp x8,x20
019ee818  b.eq 0x019ee848
019ee81c  ldur w8,[x19, #-0xc4]
019ee820  cmp w8,#0x1
019ee824  b.lt 0x019ee848
019ee828  bl 0x01b4635c
019ee82c  ldur w8,[x19, #-0xc4]
019ee830  ldr x0,[x0, #0x38]
019ee834  mov w2,#0x81b
019ee838  mov x1,x20
019ee83c  add w8,w8,#0x55
019ee840  str w8,[x0, #0x10]
019ee844  bl 0x01b490bc
019ee848  strb wzr,[x22]
019ee84c  str xzr,[x21]
019ee850  str x20,[x19]
019ee854  mov x0,x19
019ee858  ldp x29,x30,[sp, #0x20]
019ee85c  ldp x20,x19,[sp, #0x10]
019ee860  ldp x22,x21,[sp], #0x30
019ee864  ret
019ee868  sub sp,sp,#0x40
019ee86c  stp x22,x21,[sp, #0x10]
019ee870  stp x20,x19,[sp, #0x20]
019ee874  stp x29,x30,[sp, #0x30]
019ee878  add x29,sp,#0x30
019ee87c  mov x19,x0
019ee880  ldr x8,[x19]
019ee884  mov x20,x1
019ee888  cmp x8,x20
019ee88c  b.eq 0x019ee9b8
019ee890  adrp x21,0x7319000
019ee894  ldr x21,[x21, #0x548]
019ee898  ldr x8,[x21]
019ee89c  cbz x8,0x019ee8ec
019ee8a0  mov x0,xzr
019ee8a4  bl 0x01b4868c
019ee8a8  tst w0,#0xff
019ee8ac  b.eq 0x019ee94c
019ee8b0  ldr x8,[x19]
019ee8b4  cmp x8,x20
019ee8b8  b.eq 0x019ee94c
019ee8bc  ldur w8,[x19, #-0xcc]
019ee8c0  cmp w8,#0x1
019ee8c4  b.lt 0x019ee94c
019ee8c8  bl 0x01b4635c
019ee8cc  ldur w8,[x19, #-0xcc]
019ee8d0  ldr x0,[x0, #0x38]
019ee8d4  mov w2,#0x81d
019ee8d8  mov x1,x20
019ee8dc  add w8,w8,#0x5d
019ee8e0  str w8,[x0, #0x10]
019ee8e4  bl 0x01b490bc
019ee8e8  b 0x019ee94c
019ee8ec  str x30,[x21]
019ee8f0  adrp x22,0x7317000
019ee8f4  ldr x22,[x22, #0xd28]
019ee8f8  mov x0,xzr
019ee8fc  strb wzr,[x22]
019ee900  bl 0x01b4868c
019ee904  tst w0,#0xff
019ee908  b.eq 0x019ee944
019ee90c  ldr x8,[x19]
019ee910  cmp x8,x20
019ee914  b.eq 0x019ee944
019ee918  ldur w8,[x19, #-0xcc]
019ee91c  cmp w8,#0x1
019ee920  b.lt 0x019ee944
019ee924  bl 0x01b4635c
019ee928  ldur w8,[x19, #-0xcc]
019ee92c  ldr x0,[x0, #0x38]
019ee930  mov w2,#0x81d
019ee934  mov x1,x20
019ee938  add w8,w8,#0x5d
019ee93c  str w8,[x0, #0x10]
019ee940  bl 0x01b490bc
019ee944  strb wzr,[x22]
019ee948  str xzr,[x21]
019ee94c  ldur w9,[x19, #-0xd0]
019ee950  str x20,[x19]
019ee954  mov w8,w9
019ee958  tbz w9,#0x1f,0x019ee968
019ee95c  sub x8,x19,#0xd8
019ee960  sub x8,x8,w9, SXTH 
019ee964  ldr w8,[x8]
019ee968  ubfx w10,w9,#0x10,#0xf
019ee96c  cmp w9,#0x0
019ee970  csel w1,wzr,w10,ge
019ee974  str x20,[sp, #0x8]
019ee978  tbnz w8,#0x1f,0x019ee994
019ee97c  cbz w8,0x019ee9b8
019ee980  mov w2,#0x14
019ee984  add x3,sp,#0x8
019ee988  mov w0,w8
019ee98c  bl 0x01b1d968
019ee990  b 0x019ee9b8
019ee994  mov x3,#0x6472
019ee998  adrp x2,0x574b000
019ee99c  movk x3,#0x7474, LSL #16
019ee9a0  add x2,x2,#0x398
019ee9a4  mov w1,#0x1
019ee9a8  movk x3,#0x100, LSL #48
019ee9ac  mov w0,wzr
019ee9b0  mov w4,w8
019ee9b4  bl 0x01b83618
019ee9b8  mov x0,x19
019ee9bc  ldp x29,x30,[sp, #0x30]
019ee9c0  ldp x20,x19,[sp, #0x20]
019ee9c4  ldp x22,x21,[sp, #0x10]
019ee9c8  add sp,sp,#0x40
019ee9cc  ret
019ee9d0  sub sp,sp,#0x40
019ee9d4  stp x22,x21,[sp, #0x10]
019ee9d8  stp x20,x19,[sp, #0x20]
019ee9dc  stp x29,x30,[sp, #0x30]
019ee9e0  add x29,sp,#0x30
019ee9e4  mov x19,x0
019ee9e8  ldr x8,[x19]
019ee9ec  mov x20,x1
019ee9f0  cmp x8,x20
019ee9f4  b.eq 0x019eeb20
019ee9f8  adrp x21,0x7319000
019ee9fc  ldr x21,[x21, #0x548]
019eea00  ldr x8,[x21]
019eea04  cbz x8,0x019eea54
019eea08  mov x0,xzr
019eea0c  bl 0x01b4868c
019eea10  tst w0,#0xff
019eea14  b.eq 0x019eeab4
019eea18  ldr x8,[x19]
019eea1c  cmp x8,x20
019eea20  b.eq 0x019eeab4
019eea24  ldur w8,[x19, #-0xd4]
019eea28  cmp w8,#0x1
019eea2c  b.lt 0x019eeab4
019eea30  bl 0x01b4635c
019eea34  ldur w8,[x19, #-0xd4]
019eea38  ldr x0,[x0, #0x38]
019eea3c  mov w2,#0x81f
019eea40  mov x1,x20
019eea44  add w8,w8,#0x65
019eea48  str w8,[x0, #0x10]
019eea4c  bl 0x01b490bc
019eea50  b 0x019eeab4
019eea54  str x30,[x21]
019eea58  adrp x22,0x7317000
019eea5c  ldr x22,[x22, #0xd28]
019eea60  mov x0,xzr
019eea64  strb wzr,[x22]
019eea68  bl 0x01b4868c
019eea6c  tst w0,#0xff
019eea70  b.eq 0x019eeaac
019eea74  ldr x8,[x19]
019eea78  cmp x8,x20
019eea7c  b.eq 0x019eeaac
019eea80  ldur w8,[x19, #-0xd4]
019eea84  cmp w8,#0x1
019eea88  b.lt 0x019eeaac
019eea8c  bl 0x01b4635c
019eea90  ldur w8,[x19, #-0xd4]
019eea94  ldr x0,[x0, #0x38]
019eea98  mov w2,#0x81f
019eea9c  mov x1,x20
019eeaa0  add w8,w8,#0x65
019eeaa4  str w8,[x0, #0x10]
019eeaa8  bl 0x01b490bc
019eeaac  strb wzr,[x22]
019eeab0  str xzr,[x21]
019eeab4  ldur w9,[x19, #-0xd8]
019eeab8  str x20,[x19]
019eeabc  mov w8,w9
019eeac0  tbz w9,#0x1f,0x019eead0
019eeac4  sub x8,x19,#0xe0
019eeac8  sub x8,x8,w9, SXTH 
019eeacc  ldr w8,[x8]
019eead0  ubfx w10,w9,#0x10,#0xf
019eead4  cmp w9,#0x0
019eead8  csel w1,wzr,w10,ge
019eeadc  str x20,[sp, #0x8]
019eeae0  tbnz w8,#0x1f,0x019eeafc
019eeae4  cbz w8,0x019eeb20
019eeae8  mov w2,#0x15
019eeaec  add x3,sp,#0x8
019eeaf0  mov w0,w8
019eeaf4  bl 0x01b1d968
019eeaf8  b 0x019eeb20
019eeafc  mov x3,#0x6472
019eeb00  adrp x2,0x574b000
019eeb04  movk x3,#0x7474, LSL #16
019eeb08  add x2,x2,#0x398
019eeb0c  mov w1,#0x1
019eeb10  movk x3,#0x100, LSL #48
019eeb14  mov w0,wzr
019eeb18  mov w4,w8
019eeb1c  bl 0x01b83618
019eeb20  mov x0,x19
019eeb24  ldp x29,x30,[sp, #0x30]
019eeb28  ldp x20,x19,[sp, #0x20]
019eeb2c  ldp x22,x21,[sp, #0x10]
019eeb30  add sp,sp,#0x40
019eeb34  ret
019eeb38  stp x22,x21,[sp, #-0x30]!
019eeb3c  stp x20,x19,[sp, #0x10]
019eeb40  stp x29,x30,[sp, #0x20]
019eeb44  add x29,sp,#0x20
019eeb48  mov x19,x0
019eeb4c  ldr x8,[x19]
019eeb50  mov x20,x1
019eeb54  cmp x8,x20
019eeb58  b.eq 0x019eec1c
019eeb5c  adrp x21,0x7319000
019eeb60  ldr x21,[x21, #0x548]
019eeb64  ldr x8,[x21]
019eeb68  cbz x8,0x019eebb8
019eeb6c  mov x0,xzr
019eeb70  bl 0x01b4868c
019eeb74  tst w0,#0xff
019eeb78  b.eq 0x019eec18
019eeb7c  ldr x8,[x19]
019eeb80  cmp x8,x20
019eeb84  b.eq 0x019eec18
019eeb88  ldur w8,[x19, #-0xdc]
019eeb8c  cmp w8,#0x1
019eeb90  b.lt 0x019eec18
019eeb94  bl 0x01b4635c
019eeb98  ldur w8,[x19, #-0xdc]
019eeb9c  ldr x0,[x0, #0x38]
019eeba0  mov w2,#0x821
019eeba4  mov x1,x20
019eeba8  add w8,w8,#0x6d
019eebac  str w8,[x0, #0x10]
019eebb0  bl 0x01b490bc
019eebb4  b 0x019eec18
019eebb8  str x30,[x21]
019eebbc  adrp x22,0x7317000
019eebc0  ldr x22,[x22, #0xd28]
019eebc4  mov x0,xzr
019eebc8  strb wzr,[x22]
019eebcc  bl 0x01b4868c
019eebd0  tst w0,#0xff
019eebd4  b.eq 0x019eec10
019eebd8  ldr x8,[x19]
019eebdc  cmp x8,x20
019eebe0  b.eq 0x019eec10
019eebe4  ldur w8,[x19, #-0xdc]
019eebe8  cmp w8,#0x1
019eebec  b.lt 0x019eec10
019eebf0  bl 0x01b4635c
019eebf4  ldur w8,[x19, #-0xdc]
019eebf8  ldr x0,[x0, #0x38]
019eebfc  mov w2,#0x821
019eec00  mov x1,x20
019eec04  add w8,w8,#0x6d
019eec08  str w8,[x0, #0x10]
019eec0c  bl 0x01b490bc
019eec10  strb wzr,[x22]
019eec14  str xzr,[x21]
019eec18  str x20,[x19]
019eec1c  mov x0,x19
019eec20  ldp x29,x30,[sp, #0x20]
019eec24  ldp x20,x19,[sp, #0x10]
019eec28  ldp x22,x21,[sp], #0x30
019eec2c  ret
019eec30  stp x22,x21,[sp, #-0x30]!
019eec34  stp x20,x19,[sp, #0x10]
019eec38  stp x29,x30,[sp, #0x20]
019eec3c  add x29,sp,#0x20
019eec40  mov x19,x0
019eec44  ldr x8,[x19]
019eec48  mov x20,x1
019eec4c  cmp x8,x20
019eec50  b.eq 0x019eed14
019eec54  adrp x21,0x7319000
019eec58  ldr x21,[x21, #0x548]
019eec5c  ldr x8,[x21]
019eec60  cbz x8,0x019eecb0
019eec64  mov x0,xzr
019eec68  bl 0x01b4868c
019eec6c  tst w0,#0xff
019eec70  b.eq 0x019eed10
019eec74  ldr x8,[x19]
019eec78  cmp x8,x20
019eec7c  b.eq 0x019eed10
019eec80  ldur w8,[x19, #-0xe4]
019eec84  cmp w8,#0x1
019eec88  b.lt 0x019eed10
019eec8c  bl 0x01b4635c
019eec90  ldur w8,[x19, #-0xe4]
019eec94  ldr x0,[x0, #0x38]
019eec98  mov w2,#0x823
019eec9c  mov x1,x20
019eeca0  add w8,w8,#0x75
019eeca4  str w8,[x0, #0x10]
019eeca8  bl 0x01b490bc
019eecac  b 0x019eed10
019eecb0  str x30,[x21]
019eecb4  adrp x22,0x7317000
019eecb8  ldr x22,[x22, #0xd28]
019eecbc  mov x0,xzr
019eecc0  strb wzr,[x22]
019eecc4  bl 0x01b4868c
019eecc8  tst w0,#0xff
019eeccc  b.eq 0x019eed08
019eecd0  ldr x8,[x19]
019eecd4  cmp x8,x20
019eecd8  b.eq 0x019eed08
019eecdc  ldur w8,[x19, #-0xe4]
019eece0  cmp w8,#0x1
019eece4  b.lt 0x019eed08
019eece8  bl 0x01b4635c
019eecec  ldur w8,[x19, #-0xe4]
019eecf0  ldr x0,[x0, #0x38]
019eecf4  mov w2,#0x823
019eecf8  mov x1,x20
019eecfc  add w8,w8,#0x75
019eed00  str w8,[x0, #0x10]
019eed04  bl 0x01b490bc
019eed08  strb wzr,[x22]
019eed0c  str xzr,[x21]
019eed10  str x20,[x19]
019eed14  mov x0,x19
019eed18  ldp x29,x30,[sp, #0x20]
019eed1c  ldp x20,x19,[sp, #0x10]
019eed20  ldp x22,x21,[sp], #0x30
019eed24  ret
019eed28  sub sp,sp,#0x40
019eed2c  stp x22,x21,[sp, #0x10]
019eed30  stp x20,x19,[sp, #0x20]
019eed34  stp x29,x30,[sp, #0x30]
019eed38  add x29,sp,#0x30
019eed3c  mov x19,x0
019eed40  ldr x8,[x19]
019eed44  mov x20,x1
019eed48  cmp x8,x20
019eed4c  b.eq 0x019eee78
019eed50  adrp x21,0x7319000
019eed54  ldr x21,[x21, #0x548]
019eed58  ldr x8,[x21]
019eed5c  cbz x8,0x019eedac
019eed60  mov x0,xzr
019eed64  bl 0x01b4868c
019eed68  tst w0,#0xff
019eed6c  b.eq 0x019eee0c
019eed70  ldr x8,[x19]
019eed74  cmp x8,x20
019eed78  b.eq 0x019eee0c
019eed7c  ldur w8,[x19, #-0xec]
019eed80  cmp w8,#0x1
019eed84  b.lt 0x019eee0c
019eed88  bl 0x01b4635c
019eed8c  ldur w8,[x19, #-0xec]
019eed90  ldr x0,[x0, #0x38]
019eed94  mov w2,#0x825
019eed98  mov x1,x20
019eed9c  add w8,w8,#0x7d
019eeda0  str w8,[x0, #0x10]
019eeda4  bl 0x01b490bc
019eeda8  b 0x019eee0c
019eedac  str x30,[x21]
019eedb0  adrp x22,0x7317000
019eedb4  ldr x22,[x22, #0xd28]
019eedb8  mov x0,xzr
019eedbc  strb wzr,[x22]
019eedc0  bl 0x01b4868c
019eedc4  tst w0,#0xff
019eedc8  b.eq 0x019eee04
019eedcc  ldr x8,[x19]
019eedd0  cmp x8,x20
019eedd4  b.eq 0x019eee04
019eedd8  ldur w8,[x19, #-0xec]
019eeddc  cmp w8,#0x1
019eede0  b.lt 0x019eee04
019eede4  bl 0x01b4635c
019eede8  ldur w8,[x19, #-0xec]
019eedec  ldr x0,[x0, #0x38]
019eedf0  mov w2,#0x825
019eedf4  mov x1,x20
019eedf8  add w8,w8,#0x7d
019eedfc  str w8,[x0, #0x10]
019eee00  bl 0x01b490bc
019eee04  strb wzr,[x22]
019eee08  str xzr,[x21]
019eee0c  ldur w9,[x19, #-0xf0]
019eee10  str x20,[x19]
019eee14  mov w8,w9
019eee18  tbz w9,#0x1f,0x019eee28
019eee1c  sub x8,x19,#0xf8
019eee20  sub x8,x8,w9, SXTH 
019eee24  ldr w8,[x8]
019eee28  ubfx w10,w9,#0x10,#0xf
019eee2c  cmp w9,#0x0
019eee30  csel w1,wzr,w10,ge
019eee34  str x20,[sp, #0x8]
019eee38  tbnz w8,#0x1f,0x019eee54
019eee3c  cbz w8,0x019eee78
019eee40  mov w2,#0x16
019eee44  add x3,sp,#0x8
019eee48  mov w0,w8
019eee4c  bl 0x01b1d968
019eee50  b 0x019eee78
019eee54  mov x3,#0x6472
019eee58  adrp x2,0x574b000
019eee5c  movk x3,#0x7474, LSL #16
019eee60  add x2,x2,#0x398
019eee64  mov w1,#0x1
019eee68  movk x3,#0x100, LSL #48
019eee6c  mov w0,wzr
019eee70  mov w4,w8
019eee74  bl 0x01b83618
019eee78  mov x0,x19
019eee7c  ldp x29,x30,[sp, #0x30]
019eee80  ldp x20,x19,[sp, #0x20]
019eee84  ldp x22,x21,[sp, #0x10]
019eee88  add sp,sp,#0x40
019eee8c  ret
019eee90  sub sp,sp,#0x40
019eee94  stp x22,x21,[sp, #0x10]
019eee98  stp x20,x19,[sp, #0x20]
019eee9c  stp x29,x30,[sp, #0x30]
019eeea0  add x29,sp,#0x30
019eeea4  mov x19,x0
019eeea8  ldr x8,[x19]
019eeeac  mov x20,x1
019eeeb0  cmp x8,x20
019eeeb4  b.eq 0x019eefe0
019eeeb8  adrp x21,0x7319000
019eeebc  ldr x21,[x21, #0x548]
019eeec0  ldr x8,[x21]
019eeec4  cbz x8,0x019eef14
019eeec8  mov x0,xzr
019eeecc  bl 0x01b4868c
019eeed0  tst w0,#0xff
019eeed4  b.eq 0x019eef74
019eeed8  ldr x8,[x19]
019eeedc  cmp x8,x20
019eeee0  b.eq 0x019eef74
019eeee4  ldur w8,[x19, #-0xf4]
019eeee8  cmp w8,#0x1
019eeeec  b.lt 0x019eef74
019eeef0  bl 0x01b4635c
019eeef4  ldur w8,[x19, #-0xf4]
019eeef8  ldr x0,[x0, #0x38]
019eeefc  mov w2,#0x827
019eef00  mov x1,x20
019eef04  add w8,w8,#0x85
019eef08  str w8,[x0, #0x10]
019eef0c  bl 0x01b490bc
019eef10  b 0x019eef74
019eef14  str x30,[x21]
019eef18  adrp x22,0x7317000
019eef1c  ldr x22,[x22, #0xd28]
019eef20  mov x0,xzr
019eef24  strb wzr,[x22]
019eef28  bl 0x01b4868c
019eef2c  tst w0,#0xff
019eef30  b.eq 0x019eef6c
019eef34  ldr x8,[x19]
019eef38  cmp x8,x20
019eef3c  b.eq 0x019eef6c
019eef40  ldur w8,[x19, #-0xf4]
019eef44  cmp w8,#0x1
019eef48  b.lt 0x019eef6c
019eef4c  bl 0x01b4635c
019eef50  ldur w8,[x19, #-0xf4]
019eef54  ldr x0,[x0, #0x38]
019eef58  mov w2,#0x827
019eef5c  mov x1,x20
019eef60  add w8,w8,#0x85
019eef64  str w8,[x0, #0x10]
019eef68  bl 0x01b490bc
019eef6c  strb wzr,[x22]
019eef70  str xzr,[x21]
019eef74  ldur w9,[x19, #-0xf8]
019eef78  str x20,[x19]
019eef7c  mov w8,w9
019eef80  tbz w9,#0x1f,0x019eef90
019eef84  sub x8,x19,#0x100
019eef88  sub x8,x8,w9, SXTH 
019eef8c  ldr w8,[x8]
019eef90  ubfx w10,w9,#0x10,#0xf
019eef94  cmp w9,#0x0
019eef98  csel w1,wzr,w10,ge
019eef9c  str x20,[sp, #0x8]
019eefa0  tbnz w8,#0x1f,0x019eefbc
019eefa4  cbz w8,0x019eefe0
019eefa8  mov w2,#0x17
019eefac  add x3,sp,#0x8
019eefb0  mov w0,w8
019eefb4  bl 0x01b1d968
019eefb8  b 0x019eefe0
019eefbc  mov x3,#0x6472
019eefc0  adrp x2,0x574b000
019eefc4  movk x3,#0x7474, LSL #16
019eefc8  add x2,x2,#0x398
019eefcc  mov w1,#0x1
019eefd0  movk x3,#0x100, LSL #48
019eefd4  mov w0,wzr
019eefd8  mov w4,w8
019eefdc  bl 0x01b83618
019eefe0  mov x0,x19
019eefe4  ldp x29,x30,[sp, #0x30]
019eefe8  ldp x20,x19,[sp, #0x20]
019eefec  ldp x22,x21,[sp, #0x10]
019eeff0  add sp,sp,#0x40
019eeff4  ret
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
