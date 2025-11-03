// ===== case823_ActorBuff_sub19cc75c_lv2_19cde44 @ 019cde44 (DecompileAt3: cleared stale instructions at entry) =====
019cde44  sub sp,sp,#0x40
019cde48  stp x22,x21,[sp, #0x10]
019cde4c  stp x20,x19,[sp, #0x20]
019cde50  stp x29,x30,[sp, #0x30]
019cde54  add x29,sp,#0x30
019cde58  mov x19,x0
019cde5c  ldr w8,[x19]
019cde60  mov w20,w1
019cde64  cmp w8,w20
019cde68  b.eq 0x019cdf94
019cde6c  adrp x21,0x7319000
019cde70  ldr x21,[x21, #0x548]
019cde74  ldr x8,[x21]
019cde78  cbz x8,0x019cdec8
019cde7c  mov x0,xzr
019cde80  bl 0x01b4868c
019cde84  tst w0,#0xff
019cde88  b.eq 0x019cdf28
019cde8c  ldr w8,[x19]
019cde90  cmp w8,w20
019cde94  b.eq 0x019cdf28
019cde98  ldur w8,[x19, #-0x24]
019cde9c  cmp w8,#0x1
019cdea0  b.lt 0x019cdf28
019cdea4  bl 0x01b4635c
019cdea8  ldur w8,[x19, #-0x24]
019cdeac  ldr x0,[x0, #0x38]
019cdeb0  mov w2,#0x248e
019cdeb4  mov w1,w20
019cdeb8  add w8,w8,#0x14
019cdebc  str w8,[x0, #0x10]
019cdec0  bl 0x01b490fc
019cdec4  b 0x019cdf28
019cdec8  str x30,[x21]
019cdecc  adrp x22,0x7317000
019cded0  ldr x22,[x22, #0xd28]
019cded4  mov x0,xzr
019cded8  strb wzr,[x22]
019cdedc  bl 0x01b4868c
019cdee0  tst w0,#0xff
019cdee4  b.eq 0x019cdf20
019cdee8  ldr w8,[x19]
019cdeec  cmp w8,w20
019cdef0  b.eq 0x019cdf20
019cdef4  ldur w8,[x19, #-0x24]
019cdef8  cmp w8,#0x1
019cdefc  b.lt 0x019cdf20
019cdf00  bl 0x01b4635c
019cdf04  ldur w8,[x19, #-0x24]
019cdf08  ldr x0,[x0, #0x38]
019cdf0c  mov w2,#0x248e
019cdf10  mov w1,w20
019cdf14  add w8,w8,#0x14
019cdf18  str w8,[x0, #0x10]
019cdf1c  bl 0x01b490fc
019cdf20  strb wzr,[x22]
019cdf24  str xzr,[x21]
019cdf28  ldur w9,[x19, #-0x28]
019cdf2c  str w20,[x19]
019cdf30  mov w8,w9
019cdf34  tbz w9,#0x1f,0x019cdf44
019cdf38  sub x8,x19,#0x30
019cdf3c  sub x8,x8,w9, SXTH 
019cdf40  ldr w8,[x8]
019cdf44  ubfx w10,w9,#0x10,#0xf
019cdf48  cmp w9,#0x0
019cdf4c  csel w1,wzr,w10,ge
019cdf50  str w20,[sp, #0xc]
019cdf54  tbnz w8,#0x1f,0x019cdf70
019cdf58  cbz w8,0x019cdf94
019cdf5c  mov w2,#0x5
019cdf60  add x3,sp,#0xc
019cdf64  mov w0,w8
019cdf68  bl 0x01b1d8c0
019cdf6c  b 0x019cdf94
019cdf70  mov x3,#0x6472
019cdf74  adrp x2,0x574b000
019cdf78  movk x3,#0x7474, LSL #16
019cdf7c  add x2,x2,#0x398
019cdf80  mov w1,#0x1
019cdf84  movk x3,#0x100, LSL #48
019cdf88  mov w0,wzr
019cdf8c  mov w4,w8
019cdf90  bl 0x01b83618
019cdf94  mov x0,x19
019cdf98  ldp x29,x30,[sp, #0x30]
019cdf9c  ldp x20,x19,[sp, #0x20]
019cdfa0  ldp x22,x21,[sp, #0x10]
019cdfa4  add sp,sp,#0x40
019cdfa8  ret
019cdfac  sub sp,sp,#0x40
019cdfb0  stp x22,x21,[sp, #0x10]
019cdfb4  stp x20,x19,[sp, #0x20]
019cdfb8  stp x29,x30,[sp, #0x30]
019cdfbc  add x29,sp,#0x30
019cdfc0  mov x19,x0
019cdfc4  ldr w8,[x19]
019cdfc8  mov w20,w1
019cdfcc  cmp w8,w20
019cdfd0  b.eq 0x019ce0fc
019cdfd4  adrp x21,0x7319000
019cdfd8  ldr x21,[x21, #0x548]
019cdfdc  ldr x8,[x21]
019cdfe0  cbz x8,0x019ce030
019cdfe4  mov x0,xzr
019cdfe8  bl 0x01b4868c
019cdfec  tst w0,#0xff
019cdff0  b.eq 0x019ce090
019cdff4  ldr w8,[x19]
019cdff8  cmp w8,w20
019cdffc  b.eq 0x019ce090
019ce000  ldur w8,[x19, #-0x28]
019ce004  cmp w8,#0x1
019ce008  b.lt 0x019ce090
019ce00c  bl 0x01b4635c
019ce010  ldur w8,[x19, #-0x28]
019ce014  ldr x0,[x0, #0x38]
019ce018  mov w2,#0x2490
019ce01c  mov w1,w20
019ce020  add w8,w8,#0x18
019ce024  str w8,[x0, #0x10]
019ce028  bl 0x01b490fc
019ce02c  b 0x019ce090
019ce030  str x30,[x21]
019ce034  adrp x22,0x7317000
019ce038  ldr x22,[x22, #0xd28]
019ce03c  mov x0,xzr
019ce040  strb wzr,[x22]
019ce044  bl 0x01b4868c
019ce048  tst w0,#0xff
019ce04c  b.eq 0x019ce088
019ce050  ldr w8,[x19]
019ce054  cmp w8,w20
019ce058  b.eq 0x019ce088
019ce05c  ldur w8,[x19, #-0x28]
019ce060  cmp w8,#0x1
019ce064  b.lt 0x019ce088
019ce068  bl 0x01b4635c
019ce06c  ldur w8,[x19, #-0x28]
019ce070  ldr x0,[x0, #0x38]
019ce074  mov w2,#0x2490
019ce078  mov w1,w20
019ce07c  add w8,w8,#0x18
019ce080  str w8,[x0, #0x10]
019ce084  bl 0x01b490fc
019ce088  strb wzr,[x22]
019ce08c  str xzr,[x21]
019ce090  ldur w9,[x19, #-0x2c]
019ce094  str w20,[x19]
019ce098  mov w8,w9
019ce09c  tbz w9,#0x1f,0x019ce0ac
019ce0a0  sub x8,x19,#0x34
019ce0a4  sub x8,x8,w9, SXTH 
019ce0a8  ldr w8,[x8]
019ce0ac  ubfx w10,w9,#0x10,#0xf
019ce0b0  cmp w9,#0x0
019ce0b4  csel w1,wzr,w10,ge
019ce0b8  str w20,[sp, #0xc]
019ce0bc  tbnz w8,#0x1f,0x019ce0d8
019ce0c0  cbz w8,0x019ce0fc
019ce0c4  orr w2,wzr,#0x6
019ce0c8  add x3,sp,#0xc
019ce0cc  mov w0,w8
019ce0d0  bl 0x01b1d8c0
019ce0d4  b 0x019ce0fc
019ce0d8  mov x3,#0x6472
019ce0dc  adrp x2,0x574b000
019ce0e0  movk x3,#0x7474, LSL #16
019ce0e4  add x2,x2,#0x398
019ce0e8  mov w1,#0x1
019ce0ec  movk x3,#0x100, LSL #48
019ce0f0  mov w0,wzr
019ce0f4  mov w4,w8
019ce0f8  bl 0x01b83618
019ce0fc  mov x0,x19
019ce100  ldp x29,x30,[sp, #0x30]
019ce104  ldp x20,x19,[sp, #0x20]
019ce108  ldp x22,x21,[sp, #0x10]
019ce10c  add sp,sp,#0x40
019ce110  ret
019ce114  sub sp,sp,#0x40
019ce118  stp x22,x21,[sp, #0x10]
019ce11c  stp x20,x19,[sp, #0x20]
019ce120  stp x29,x30,[sp, #0x30]
019ce124  add x29,sp,#0x30
019ce128  mov x19,x0
019ce12c  ldr w8,[x19]
019ce130  mov w20,w1
019ce134  cmp w8,w20
019ce138  b.eq 0x019ce264
019ce13c  adrp x21,0x7319000
019ce140  ldr x21,[x21, #0x548]
019ce144  ldr x8,[x21]
019ce148  cbz x8,0x019ce198
019ce14c  mov x0,xzr
019ce150  bl 0x01b4868c
019ce154  tst w0,#0xff
019ce158  b.eq 0x019ce1f8
019ce15c  ldr w8,[x19]
019ce160  cmp w8,w20
019ce164  b.eq 0x019ce1f8
019ce168  ldur w8,[x19, #-0x2c]
019ce16c  cmp w8,#0x1
019ce170  b.lt 0x019ce1f8
019ce174  bl 0x01b4635c
019ce178  ldur w8,[x19, #-0x2c]
019ce17c  ldr x0,[x0, #0x38]
019ce180  mov w2,#0x2492
019ce184  mov w1,w20
019ce188  add w8,w8,#0x1c
019ce18c  str w8,[x0, #0x10]
019ce190  bl 0x01b490fc
019ce194  b 0x019ce1f8
019ce198  str x30,[x21]
019ce19c  adrp x22,0x7317000
019ce1a0  ldr x22,[x22, #0xd28]
019ce1a4  mov x0,xzr
019ce1a8  strb wzr,[x22]
019ce1ac  bl 0x01b4868c
019ce1b0  tst w0,#0xff
019ce1b4  b.eq 0x019ce1f0
019ce1b8  ldr w8,[x19]
019ce1bc  cmp w8,w20
019ce1c0  b.eq 0x019ce1f0
019ce1c4  ldur w8,[x19, #-0x2c]
019ce1c8  cmp w8,#0x1
019ce1cc  b.lt 0x019ce1f0
019ce1d0  bl 0x01b4635c
019ce1d4  ldur w8,[x19, #-0x2c]
019ce1d8  ldr x0,[x0, #0x38]
019ce1dc  mov w2,#0x2492
019ce1e0  mov w1,w20
019ce1e4  add w8,w8,#0x1c
019ce1e8  str w8,[x0, #0x10]
019ce1ec  bl 0x01b490fc
019ce1f0  strb wzr,[x22]
019ce1f4  str xzr,[x21]
019ce1f8  ldur w9,[x19, #-0x30]
019ce1fc  str w20,[x19]
019ce200  mov w8,w9
019ce204  tbz w9,#0x1f,0x019ce214
019ce208  sub x8,x19,#0x38
019ce20c  sub x8,x8,w9, SXTH 
019ce210  ldr w8,[x8]
019ce214  ubfx w10,w9,#0x10,#0xf
019ce218  cmp w9,#0x0
019ce21c  csel w1,wzr,w10,ge
019ce220  str w20,[sp, #0xc]
019ce224  tbnz w8,#0x1f,0x019ce240
019ce228  cbz w8,0x019ce264
019ce22c  orr w2,wzr,#0x7
019ce230  add x3,sp,#0xc
019ce234  mov w0,w8
019ce238  bl 0x01b1d8c0
019ce23c  b 0x019ce264
019ce240  mov x3,#0x6472
019ce244  adrp x2,0x574b000
019ce248  movk x3,#0x7474, LSL #16
019ce24c  add x2,x2,#0x398
019ce250  mov w1,#0x1
019ce254  movk x3,#0x100, LSL #48
019ce258  mov w0,wzr
019ce25c  mov w4,w8
019ce260  bl 0x01b83618
019ce264  mov x0,x19
019ce268  ldp x29,x30,[sp, #0x30]
019ce26c  ldp x20,x19,[sp, #0x20]
019ce270  ldp x22,x21,[sp, #0x10]
019ce274  add sp,sp,#0x40
019ce278  ret
019ce27c  sub sp,sp,#0x40
019ce280  stp x22,x21,[sp, #0x10]
019ce284  stp x20,x19,[sp, #0x20]
019ce288  stp x29,x30,[sp, #0x30]
019ce28c  add x29,sp,#0x30
019ce290  mov x19,x0
019ce294  ldr w8,[x19]
019ce298  mov w20,w1
019ce29c  cmp w8,w20
019ce2a0  b.eq 0x019ce3cc
019ce2a4  adrp x21,0x7319000
019ce2a8  ldr x21,[x21, #0x548]
019ce2ac  ldr x8,[x21]
019ce2b0  cbz x8,0x019ce300
019ce2b4  mov x0,xzr
019ce2b8  bl 0x01b4868c
019ce2bc  tst w0,#0xff
019ce2c0  b.eq 0x019ce360
019ce2c4  ldr w8,[x19]
019ce2c8  cmp w8,w20
019ce2cc  b.eq 0x019ce360
019ce2d0  ldur w8,[x19, #-0x30]
019ce2d4  cmp w8,#0x1
019ce2d8  b.lt 0x019ce360
019ce2dc  bl 0x01b4635c
019ce2e0  ldur w8,[x19, #-0x30]
019ce2e4  ldr x0,[x0, #0x38]
019ce2e8  mov w2,#0x2494
019ce2ec  mov w1,w20
019ce2f0  add w8,w8,#0x20
019ce2f4  str w8,[x0, #0x10]
019ce2f8  bl 0x01b490fc
019ce2fc  b 0x019ce360
019ce300  str x30,[x21]
019ce304  adrp x22,0x7317000
019ce308  ldr x22,[x22, #0xd28]
019ce30c  mov x0,xzr
019ce310  strb wzr,[x22]
019ce314  bl 0x01b4868c
019ce318  tst w0,#0xff
019ce31c  b.eq 0x019ce358
019ce320  ldr w8,[x19]
019ce324  cmp w8,w20
019ce328  b.eq 0x019ce358
019ce32c  ldur w8,[x19, #-0x30]
019ce330  cmp w8,#0x1
019ce334  b.lt 0x019ce358
019ce338  bl 0x01b4635c
019ce33c  ldur w8,[x19, #-0x30]
019ce340  ldr x0,[x0, #0x38]
019ce344  mov w2,#0x2494
019ce348  mov w1,w20
019ce34c  add w8,w8,#0x20
019ce350  str w8,[x0, #0x10]
019ce354  bl 0x01b490fc
019ce358  strb wzr,[x22]
019ce35c  str xzr,[x21]
019ce360  ldur w9,[x19, #-0x34]
019ce364  str w20,[x19]
019ce368  mov w8,w9
019ce36c  tbz w9,#0x1f,0x019ce37c
019ce370  sub x8,x19,#0x3c
019ce374  sub x8,x8,w9, SXTH 
019ce378  ldr w8,[x8]
019ce37c  ubfx w10,w9,#0x10,#0xf
019ce380  cmp w9,#0x0
019ce384  csel w1,wzr,w10,ge
019ce388  str w20,[sp, #0xc]
019ce38c  tbnz w8,#0x1f,0x019ce3a8
019ce390  cbz w8,0x019ce3cc
019ce394  mov w2,#0x8
019ce398  add x3,sp,#0xc
019ce39c  mov w0,w8
019ce3a0  bl 0x01b1d8c0
019ce3a4  b 0x019ce3cc
019ce3a8  mov x3,#0x6472
019ce3ac  adrp x2,0x574b000
019ce3b0  movk x3,#0x7474, LSL #16
019ce3b4  add x2,x2,#0x398
019ce3b8  mov w1,#0x1
019ce3bc  movk x3,#0x100, LSL #48
019ce3c0  mov w0,wzr
019ce3c4  mov w4,w8
019ce3c8  bl 0x01b83618
019ce3cc  mov x0,x19
019ce3d0  ldp x29,x30,[sp, #0x30]
019ce3d4  ldp x20,x19,[sp, #0x20]
019ce3d8  ldp x22,x21,[sp, #0x10]
019ce3dc  add sp,sp,#0x40
019ce3e0  ret
