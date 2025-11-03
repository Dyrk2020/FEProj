// ===== case823_ActorBuff_sub19cd0c8 @ 019cd0c8 (DecompileAt3: cleared stale instructions at entry) =====
019cd0c8  sub sp,sp,#0x50
019cd0cc  str x23,[sp, #0x10]
019cd0d0  stp x22,x21,[sp, #0x20]
019cd0d4  stp x20,x19,[sp, #0x30]
019cd0d8  stp x29,x30,[sp, #0x40]
019cd0dc  add x29,sp,#0x40
019cd0e0  ldr x8,[x2]
019cd0e4  mov x19,x0
019cd0e8  mov x20,x3
019cd0ec  mov x21,x1
019cd0f0  str x8,[x19]
019cd0f4  ldr w8,[x2, #0x8]
019cd0f8  str w8,[x19, #0x8]
019cd0fc  str wzr,[x2, #0x8]
019cd100  mov w2,#0x1
019cd104  bl 0x0174ae88
019cd108  ldr x0,[x19]
019cd10c  adrp x1,0x19cd000
019cd110  add x1,x1,#0x44c
019cd114  mov w2,wzr
019cd118  bl 0x0124ec90
019cd11c  ldr x22,[x19]
019cd120  orr w1,wzr,#0xfffffffe
019cd124  mov x0,x22
019cd128  bl 0x0124e920
019cd12c  mov w23,w0
019cd130  adrp x1,0x575d000
019cd134  add x1,x1,#0xa29
019cd138  mov x0,x22
019cd13c  bl 0x0124f120
019cd140  orr w1,wzr,#0xfffffffe
019cd144  mov w2,#0x1
019cd148  mov x0,x22
019cd14c  bl 0x0124cfc0
019cd150  mov x0,x22
019cd154  mov w1,w23
019cd158  bl 0x0124e060
019cd15c  ldr w8,[x19, #0x8]
019cd160  add w8,w8,#0x1
019cd164  str w8,[x19, #0x8]
019cd168  mov x0,x19
019cd16c  mov x1,x21
019cd170  mov w2,wzr
019cd174  bl 0x0174ae88
019cd178  ldr x0,[x19]
019cd17c  mov w1,wzr
019cd180  mov w2,wzr
019cd184  bl 0x0124f920
019cd188  ldr x0,[x19]
019cd18c  orr w1,wzr,#0xfffffffe
019cd190  mov w2,#0x5e7
019cd194  bl 0x01252d10
019cd198  ldr x0,[x19]
019cd19c  orr w1,wzr,#0xfffffffe
019cd1a0  bl 0x0124c0c0
019cd1a4  ldr x0,[x19]
019cd1a8  orr w1,wzr,#0xfffffffe
019cd1ac  mov w2,#0xc07
019cd1b0  bl 0x01252d10
019cd1b4  ldr x0,[x19]
019cd1b8  mov w1,#0xffffffff
019cd1bc  bl 0x0124c0c0
019cd1c0  ldr x0,[x19]
019cd1c4  orr w1,wzr,#0xfffffffd
019cd1c8  mov w2,#0xc1a
019cd1cc  bl 0x01252d10
019cd1d0  ldr x0,[x19]
019cd1d4  adrp x1,0x19cd000
019cd1d8  add x1,x1,#0x44c
019cd1dc  mov w2,wzr
019cd1e0  bl 0x0124ec90
019cd1e4  ldr x22,[x19]
019cd1e8  orr w1,wzr,#0xfffffffe
019cd1ec  mov x0,x22
019cd1f0  bl 0x0124e920
019cd1f4  mov w23,w0
019cd1f8  adrp x1,0x575d000
019cd1fc  add x1,x1,#0xa29
019cd200  mov x0,x22
019cd204  bl 0x0124f120
019cd208  orr w1,wzr,#0xfffffffe
019cd20c  mov w2,#0x1
019cd210  mov x0,x22
019cd214  bl 0x0124cfc0
019cd218  mov x0,x22
019cd21c  mov w1,w23
019cd220  bl 0x0124e060
019cd224  ldr w8,[x19, #0x8]
019cd228  add w8,w8,#0x1
019cd22c  str w8,[x19, #0x8]
019cd230  mov x0,x19
019cd234  mov x1,x21
019cd238  bl 0x0174b264
019cd23c  ldr w8,[x19, #0x8]
019cd240  ldr x0,[x19]
019cd244  add w8,w8,#0x1
019cd248  str w8,[x19, #0x8]
019cd24c  mov w1,#0xb9d8
019cd250  movk w1,#0xfff0, LSL #16
019cd254  mov x2,x20
019cd258  bl 0x0124a650
019cd25c  ldr x0,[x19]
019cd260  mov w1,#0xffffffff
019cd264  bl 0x0124ff50
019cd268  cbz w0,0x019cd340
019cd26c  ldr x0,[x19]
019cd270  mov w1,#0xffffffff
019cd274  mov w2,#0xc1a
019cd278  bl 0x0124a650
019cd27c  ldr x0,[x19]
019cd280  mov w1,#0xffffffff
019cd284  mov w2,#0xc07
019cd288  bl 0x0124a650
019cd28c  ldr x0,[x19]
019cd290  mov w1,#0xfffffffa
019cd294  mov w2,#0xdad
019cd298  bl 0x01252d10
019cd29c  ldr x0,[x19]
019cd2a0  orr w1,wzr,#0xfffffffc
019cd2a4  mov w2,#0xdad
019cd2a8  bl 0x01252d10
019cd2ac  ldr x0,[x19]
019cd2b0  orr w1,wzr,#0xfffffffe
019cd2b4  mov w2,#0xdad
019cd2b8  bl 0x01252d10
019cd2bc  ldr x0,[x19]
019cd2c0  mov w1,#0xffffffff
019cd2c4  bl 0x0124c0c0
019cd2c8  ldr x0,[x19]
019cd2cc  adrp x2,0x736d000
019cd2d0  mov w1,#0xb9d8
019cd2d4  add x2,x2,#0xdec
019cd2d8  movk w1,#0xfff0, LSL #16
019cd2dc  bl 0x01252d10
019cd2e0  ldr x0,[x19]
019cd2e4  orr w1,wzr,#0xfffffffe
019cd2e8  bl 0x0124c0c0
019cd2ec  ldr x0,[x19]
019cd2f0  adrp x2,0x736d000
019cd2f4  mov w1,#0xb9d8
019cd2f8  add x2,x2,#0x898
019cd2fc  movk w1,#0xfff0, LSL #16
019cd300  bl 0x01252d10
019cd304  ldr x0,[x19]
019cd308  orr w1,wzr,#0xfffffffd
019cd30c  bl 0x0124c0c0
019cd310  ldr x0,[x19]
019cd314  adrp x2,0x736d000
019cd318  mov w1,#0xb9d8
019cd31c  add x2,x2,#0x899
019cd320  movk w1,#0xfff0, LSL #16
019cd324  bl 0x01252d10
019cd328  ldp x29,x30,[sp, #0x40]
019cd32c  ldp x20,x19,[sp, #0x30]
019cd330  ldp x22,x21,[sp, #0x20]
019cd334  ldr x23,[sp, #0x10]
019cd338  add sp,sp,#0x50
019cd33c  ret
019cd340  ldr w8,[x19, #0x8]
019cd344  mov w0,#0x10
019cd348  add w8,w8,#0x1
019cd34c  str w8,[x19, #0x8]
019cd350  bl 0x01250920
019cd354  mov x20,x0
019cd358  adrp x1,0x575d000
019cd35c  add x1,x1,#0xa2e
019cd360  add x0,sp,#0x8
019cd364  mov x2,sp
019cd368  bl 0x0571b104
019cd36c  mov w22,#0x1
019cd370  add x1,sp,#0x8
019cd374  mov x0,x20
019cd378  bl 0x056fed48
019cd37c  adrp x1,0x7318000
019cd380  adrp x2,0x7313000
019cd384  ldr x1,[x1, #0x6a0]
019cd388  ldr x2,[x2, #0xbc8]
019cd38c  mov x0,x20
019cd390  mov w22,wzr
019cd394  bl 0x0124dd00
019cd398  mov x21,x0
019cd39c  b 0x019cd3f4
