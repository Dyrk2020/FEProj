// ===== case850_ActorSkill_sub19e9920_lv2_19ece08 @ 019ece08 (DecompileAt3: cleared stale instructions at entry) =====
019ece08  sub sp,sp,#0x40
019ece0c  stp x22,x21,[sp, #0x10]
019ece10  stp x20,x19,[sp, #0x20]
019ece14  stp x29,x30,[sp, #0x30]
019ece18  add x29,sp,#0x30
019ece1c  mov x19,x0
019ece20  ldr w8,[x19]
019ece24  mov w20,w1
019ece28  cmp w8,w20
019ece2c  b.eq 0x019ecf58
019ece30  adrp x21,0x7319000
019ece34  ldr x21,[x21, #0x548]
019ece38  ldr x8,[x21]
019ece3c  cbz x8,0x019ece8c
019ece40  mov x0,xzr
019ece44  bl 0x01b4868c
019ece48  tst w0,#0xff
019ece4c  b.eq 0x019eceec
019ece50  ldr w8,[x19]
019ece54  cmp w8,w20
019ece58  b.eq 0x019eceec
019ece5c  ldur w8,[x19, #-0x1c]
019ece60  cmp w8,#0x1
019ece64  b.lt 0x019eceec
019ece68  bl 0x01b4635c
019ece6c  ldur w8,[x19, #-0x1c]
019ece70  ldr x0,[x0, #0x38]
019ece74  mov w2,#0x7f7
019ece78  mov w1,w20
019ece7c  add w8,w8,#0xa
019ece80  str w8,[x0, #0x10]
019ece84  bl 0x01b48ffc
019ece88  b 0x019eceec
019ece8c  str x30,[x21]
019ece90  adrp x22,0x7317000
019ece94  ldr x22,[x22, #0xd28]
019ece98  mov x0,xzr
019ece9c  strb wzr,[x22]
019ecea0  bl 0x01b4868c
019ecea4  tst w0,#0xff
019ecea8  b.eq 0x019ecee4
019eceac  ldr w8,[x19]
019eceb0  cmp w8,w20
019eceb4  b.eq 0x019ecee4
019eceb8  ldur w8,[x19, #-0x1c]
019ecebc  cmp w8,#0x1
019ecec0  b.lt 0x019ecee4
019ecec4  bl 0x01b4635c
019ecec8  ldur w8,[x19, #-0x1c]
019ececc  ldr x0,[x0, #0x38]
019eced0  mov w2,#0x7f7
019eced4  mov w1,w20
019eced8  add w8,w8,#0xa
019ecedc  str w8,[x0, #0x10]
019ecee0  bl 0x01b48ffc
019ecee4  strb wzr,[x22]
019ecee8  str xzr,[x21]
019eceec  ldur w9,[x19, #-0x20]
019ecef0  str w20,[x19]
019ecef4  mov w8,w9
019ecef8  tbz w9,#0x1f,0x019ecf08
019ecefc  sub x8,x19,#0x28
019ecf00  sub x8,x8,w9, SXTH 
019ecf04  ldr w8,[x8]
019ecf08  ubfx w10,w9,#0x10,#0xf
019ecf0c  cmp w9,#0x0
019ecf10  csel w1,wzr,w10,ge
019ecf14  str w20,[sp, #0xc]
019ecf18  tbnz w8,#0x1f,0x019ecf34
019ecf1c  cbz w8,0x019ecf58
019ecf20  orr w2,wzr,#0x6
019ecf24  add x3,sp,#0xc
019ecf28  mov w0,w8
019ecf2c  bl 0x01b1d914
019ecf30  b 0x019ecf58
019ecf34  mov x3,#0x6472
019ecf38  adrp x2,0x574b000
019ecf3c  movk x3,#0x7474, LSL #16
019ecf40  add x2,x2,#0x398
019ecf44  mov w1,#0x1
019ecf48  movk x3,#0x100, LSL #48
019ecf4c  mov w0,wzr
019ecf50  mov w4,w8
019ecf54  bl 0x01b83618
019ecf58  mov x0,x19
019ecf5c  ldp x29,x30,[sp, #0x30]
019ecf60  ldp x20,x19,[sp, #0x20]
019ecf64  ldp x22,x21,[sp, #0x10]
019ecf68  add sp,sp,#0x40
019ecf6c  ret
019ecf70  stp x20,x19,[sp, #-0x20]!
019ecf74  stp x29,x30,[sp, #0x10]
019ecf78  add x29,sp,#0x10
019ecf7c  mov w1,#0x1
019ecf80  mov x19,x0
019ecf84  bl 0x0124ff50
019ecf88  cbz w0,0x019ecfb4
019ecf8c  adrp x2,0x736d000
019ecf90  adrp x3,0x736d000
019ecf94  add x2,x2,#0x208
019ecf98  add x3,x3,#0x207
019ecf9c  mov w1,#0x1
019ecfa0  mov w4,#0x1
019ecfa4  mov x0,x19
019ecfa8  bl 0x0174b938
019ecfac  ldr x20,[x0, #0x8]
019ecfb0  b 0x019ecfb8
019ecfb4  mov x20,xzr
019ecfb8  mov w1,#0xb9d7
019ecfbc  movk w1,#0xfff0, LSL #16
019ecfc0  mov x0,x19
019ecfc4  bl 0x0124e990
019ecfc8  mov x2,x0
019ecfcc  mov x0,x19
019ecfd0  mov x1,x20
019ecfd4  bl 0x019ecfe4
019ecfd8  ldp x29,x30,[sp, #0x10]
019ecfdc  ldp x20,x19,[sp], #0x20
019ecfe0  ret
