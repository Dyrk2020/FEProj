// ===== case278-WatchTimeLineIcon @ 016babac =====
// existing function case278-WatchTimeLineIcon
016babac  sub sp,sp,#0x50
016babb0  str x21,[sp, #0x20]
016babb4  stp x20,x19,[sp, #0x30]
016babb8  stp x29,x30,[sp, #0x40]
016babbc  add x29,sp,#0x40
016babc0  adrp x1,0x174a000
016babc4  add x1,x1,#0x87c
016babc8  mov x19,x0
016babcc  bl 0x0124ba40
016babd0  adrp x1,0x575d000
016babd4  add x1,x1,#0xa06
016babd8  mov x0,x19
016babdc  str x19,[sp]
016babe0  bl 0x01251aa0
016babe4  mov w8,#0x1
016babe8  str w8,[sp, #0x8]
016babec  mov x0,sp
016babf0  bl 0x0174aa04
016babf4  adrp x1,0x5761000
016babf8  adrp x3,0x736d000
016babfc  add x1,x1,#0x982
016bac00  add x3,x3,#0x101
016bac04  add x0,sp,#0x10
016bac08  mov x2,sp
016bac0c  bl 0x017e7740
016bac10  adrp x1,0x595c000
016bac14  adrp x2,0x17e7000
016bac18  adrp x4,0x17e7000
016bac1c  add x1,x1,#0x9c4
016bac20  add x2,x2,#0x708
016bac24  add x4,x4,#0x710
016bac28  add x0,sp,#0x10
016bac2c  mov x3,xzr
016bac30  mov x5,xzr
016bac34  bl 0x017e7520
016bac38  adrp x1,0x5761000
016bac3c  adrp x2,0x17e7000
016bac40  adrp x4,0x17e7000
016bac44  add x1,x1,#0x994
016bac48  add x2,x2,#0x718
016bac4c  add x4,x4,#0x720
016bac50  mov x3,xzr
016bac54  mov x5,xzr
016bac58  bl 0x017e7520
016bac5c  adrp x1,0x5761000
016bac60  adrp x2,0x17e7000
016bac64  adrp x4,0x17e7000
016bac68  add x1,x1,#0x999
016bac6c  add x2,x2,#0x728
016bac70  add x4,x4,#0x730
016bac74  mov x3,xzr
016bac78  mov x5,xzr
016bac7c  bl 0x017e7520
016bac80  mov x19,x0
016bac84  ldr x0,[x19]
016bac88  mov w1,#0x10
016bac8c  bl 0x0124cba0
016bac90  adrp x8,0x17e7000
016bac94  dup v0.2D,xzr
016bac98  add x8,x8,#0x738
016bac9c  mov v0.D[0x0],x8
016baca0  str q0,[x0]
016baca4  ldr x0,[x19]
016baca8  adrp x1,0x17e7000
016bacac  add x1,x1,#0xd24
016bacb0  mov w2,#0x1
016bacb4  bl 0x0124ec90
016bacb8  ldr x0,[x19]
016bacbc  mov w1,#0xffffffff
016bacc0  bl 0x0124c0c0
016bacc4  ldr x20,[x19]
016bacc8  orr w1,wzr,#0xfffffffb
016baccc  mov w2,#0x6e7
016bacd0  mov x0,x20
016bacd4  bl 0x0124a650
016bacd8  orr w1,wzr,#0xfffffffe
016bacdc  mov x0,x20
016bace0  bl 0x0124c0c0
016bace4  orr w1,wzr,#0xfffffffe
016bace8  mov x0,x20
016bacec  bl 0x0124e920
016bacf0  mov w21,w0
016bacf4  adrp x1,0x5761000
016bacf8  add x1,x1,#0x9aa
016bacfc  mov x0,x20
016bad00  bl 0x0124f120
016bad04  orr w1,wzr,#0xfffffffe
016bad08  mov w2,#0x1
016bad0c  mov x0,x20
016bad10  bl 0x0124cfc0
016bad14  mov x0,x20
016bad18  mov w1,w21
016bad1c  bl 0x0124e060
016bad20  orr w1,wzr,#0xfffffffd
016bad24  mov x0,x20
016bad28  bl 0x0124c4d0
016bad2c  ldr x20,[x19]
016bad30  orr w1,wzr,#0xfffffffd
016bad34  mov w2,#0x6e7
016bad38  mov x0,x20
016bad3c  bl 0x0124a650
016bad40  orr w1,wzr,#0xfffffffe
016bad44  mov x0,x20
016bad48  bl 0x0124c0c0
016bad4c  orr w1,wzr,#0xfffffffe
016bad50  mov x0,x20
016bad54  bl 0x0124e920
016bad58  mov w21,w0
016bad5c  adrp x1,0x5761000
016bad60  add x1,x1,#0x9aa
016bad64  mov x0,x20
016bad68  bl 0x0124f120
016bad6c  orr w1,wzr,#0xfffffffe
016bad70  mov w2,#0x1
016bad74  mov x0,x20
016bad78  bl 0x0124cfc0
016bad7c  mov x0,x20
016bad80  mov w1,w21
016bad84  bl 0x0124e060
016bad88  orr w1,wzr,#0xfffffffd
016bad8c  mov x0,x20
016bad90  bl 0x0124c4d0
016bad94  ldr w8,[x19, #0x8]
016bad98  ldr x0,[x19]
016bad9c  sub w8,w8,#0x3
016bada0  str w8,[x19, #0x8]
016bada4  orr w1,wzr,#0xfffffffc
016bada8  bl 0x0124c4d0
016badac  ldr w8,[x19, #0x8]
016badb0  ldr x0,[x19]
016badb4  str wzr,[x19, #0x8]
016badb8  cmp w8,#0x1
016badbc  b.lt 0x016badc8
016badc0  mvn w1,w8
016badc4  bl 0x0124c4d0
016badc8  ldr w8,[sp, #0x18]
016badcc  cmp w8,#0x1
016badd0  b.lt 0x016bade0
016badd4  ldr x0,[sp, #0x10]
016badd8  mvn w1,w8
016baddc  bl 0x0124c4d0
016bade0  ldr w8,[sp, #0x8]
016bade4  cmp w8,#0x1
016bade8  b.lt 0x016badf8
016badec  ldr x0,[sp]
016badf0  mvn w1,w8
016badf4  bl 0x0124c4d0
016badf8  ldp x29,x30,[sp, #0x40]
016badfc  ldp x20,x19,[sp, #0x30]
016bae00  ldr x21,[sp, #0x20]
016bae04  add sp,sp,#0x50
016bae08  ret
