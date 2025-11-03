// ===== case850_ActorSkill_sub19e9d30_lv2_19edf84 @ 019edf84 (DecompileAt3: cleared stale instructions at entry) =====
019edf84  sub sp,sp,#0x40
019edf88  stp x22,x21,[sp, #0x10]
019edf8c  stp x20,x19,[sp, #0x20]
019edf90  stp x29,x30,[sp, #0x30]
019edf94  add x29,sp,#0x30
019edf98  mov x19,x0
019edf9c  ldr w8,[x19]
019edfa0  mov w20,w1
019edfa4  cmp w8,w20
019edfa8  b.eq 0x019ee0d4
019edfac  adrp x21,0x7319000
019edfb0  ldr x21,[x21, #0x548]
019edfb4  ldr x8,[x21]
019edfb8  cbz x8,0x019ee008
019edfbc  mov x0,xzr
019edfc0  bl 0x01b4868c
019edfc4  tst w0,#0xff
019edfc8  b.eq 0x019ee068
019edfcc  ldr w8,[x19]
019edfd0  cmp w8,w20
019edfd4  b.eq 0x019ee068
019edfd8  ldur w8,[x19, #-0x84]
019edfdc  cmp w8,#0x1
019edfe0  b.lt 0x019ee068
019edfe4  bl 0x01b4635c
019edfe8  ldur w8,[x19, #-0x84]
019edfec  ldr x0,[x0, #0x38]
019edff0  mov w2,#0x813
019edff4  mov w1,w20
019edff8  add w8,w8,#0x39
019edffc  str w8,[x0, #0x10]
019ee000  bl 0x01b490fc
019ee004  b 0x019ee068
019ee008  str x30,[x21]
019ee00c  adrp x22,0x7317000
019ee010  ldr x22,[x22, #0xd28]
019ee014  mov x0,xzr
019ee018  strb wzr,[x22]
019ee01c  bl 0x01b4868c
019ee020  tst w0,#0xff
019ee024  b.eq 0x019ee060
019ee028  ldr w8,[x19]
019ee02c  cmp w8,w20
019ee030  b.eq 0x019ee060
019ee034  ldur w8,[x19, #-0x84]
019ee038  cmp w8,#0x1
019ee03c  b.lt 0x019ee060
019ee040  bl 0x01b4635c
019ee044  ldur w8,[x19, #-0x84]
019ee048  ldr x0,[x0, #0x38]
019ee04c  mov w2,#0x813
019ee050  mov w1,w20
019ee054  add w8,w8,#0x39
019ee058  str w8,[x0, #0x10]
019ee05c  bl 0x01b490fc
019ee060  strb wzr,[x22]
019ee064  str xzr,[x21]
019ee068  ldur w9,[x19, #-0x88]
019ee06c  str w20,[x19]
019ee070  mov w8,w9
019ee074  tbz w9,#0x1f,0x019ee084
019ee078  sub x8,x19,#0x90
019ee07c  sub x8,x8,w9, SXTH 
019ee080  ldr w8,[x8]
019ee084  ubfx w10,w9,#0x10,#0xf
019ee088  cmp w9,#0x0
019ee08c  csel w1,wzr,w10,ge
019ee090  str w20,[sp, #0xc]
019ee094  tbnz w8,#0x1f,0x019ee0b0
019ee098  cbz w8,0x019ee0d4
019ee09c  mov w2,#0x10
019ee0a0  add x3,sp,#0xc
019ee0a4  mov w0,w8
019ee0a8  bl 0x01b1d8c0
019ee0ac  b 0x019ee0d4
019ee0b0  mov x3,#0x6472
019ee0b4  adrp x2,0x574b000
019ee0b8  movk x3,#0x7474, LSL #16
019ee0bc  add x2,x2,#0x398
019ee0c0  mov w1,#0x1
019ee0c4  movk x3,#0x100, LSL #48
019ee0c8  mov w0,wzr
019ee0cc  mov w4,w8
019ee0d0  bl 0x01b83618
019ee0d4  mov x0,x19
019ee0d8  ldp x29,x30,[sp, #0x30]
019ee0dc  ldp x20,x19,[sp, #0x20]
019ee0e0  ldp x22,x21,[sp, #0x10]
019ee0e4  add sp,sp,#0x40
019ee0e8  ret
