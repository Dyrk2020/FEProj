// ===== case370-HexAramBuffResTypeInfo @ 016d60e4 =====
// existing function case370-HexAramBuffResTypeInfo
016d60e4  sub sp,sp,#0x40
016d60e8  str x19,[sp, #0x20]
016d60ec  stp x29,x30,[sp, #0x30]
016d60f0  add x29,sp,#0x30
016d60f4  adrp x1,0x174a000
016d60f8  add x1,x1,#0x87c
016d60fc  mov x19,x0
016d6100  bl 0x0124ba40
016d6104  adrp x1,0x575d000
016d6108  add x1,x1,#0xa06
016d610c  mov x0,x19
016d6110  str x19,[sp]
016d6114  bl 0x01251aa0
016d6118  mov w8,#0x1
016d611c  str w8,[sp, #0x8]
016d6120  mov x0,sp
016d6124  bl 0x0174aa04
016d6128  adrp x1,0x5764000
016d612c  adrp x3,0x736d000
016d6130  add x1,x1,#0x92d
016d6134  add x3,x3,#0x101
016d6138  add x0,sp,#0x10
016d613c  mov x2,sp
016d6140  bl 0x0182d7d0
016d6144  adrp x1,0x5764000
016d6148  adrp x2,0x182d000
016d614c  adrp x4,0x182d000
016d6150  add x1,x1,#0x944
016d6154  add x2,x2,#0x568
016d6158  add x4,x4,#0x570
016d615c  add x0,sp,#0x10
016d6160  mov x3,xzr
016d6164  mov x5,xzr
016d6168  bl 0x0182d380
016d616c  adrp x1,0x5763000
016d6170  adrp x2,0x182d000
016d6174  adrp x4,0x182d000
016d6178  add x1,x1,#0xcff
016d617c  add x2,x2,#0x578
016d6180  add x4,x4,#0x580
016d6184  mov x3,xzr
016d6188  mov x5,xzr
016d618c  bl 0x0182d380
016d6190  adrp x1,0x575e000
016d6194  adrp x2,0x182d000
016d6198  adrp x4,0x182d000
016d619c  add x1,x1,#0x398
016d61a0  add x2,x2,#0x770
016d61a4  add x4,x4,#0x778
016d61a8  mov x3,xzr
016d61ac  mov x5,xzr
016d61b0  bl 0x0182d588
016d61b4  adrp x1,0x5761000
016d61b8  adrp x2,0x182d000
016d61bc  adrp x4,0x182d000
016d61c0  add x1,x1,#0x85a
016d61c4  add x2,x2,#0x780
016d61c8  add x4,x4,#0x788
016d61cc  mov x3,xzr
016d61d0  mov x5,xzr
016d61d4  bl 0x0182d588
016d61d8  adrp x1,0x5764000
016d61dc  adrp x2,0x182d000
016d61e0  adrp x4,0x182d000
016d61e4  add x1,x1,#0x94b
016d61e8  add x2,x2,#0x790
016d61ec  add x4,x4,#0x798
016d61f0  mov x3,xzr
016d61f4  mov x5,xzr
016d61f8  bl 0x0182d588
016d61fc  adrp x1,0x5764000
016d6200  adrp x2,0x182d000
016d6204  adrp x4,0x182d000
016d6208  add x1,x1,#0x95b
016d620c  add x2,x2,#0x7a0
016d6210  add x4,x4,#0x7a8
016d6214  mov x3,xzr
016d6218  mov x5,xzr
016d621c  bl 0x0182d588
016d6220  adrp x1,0x5764000
016d6224  adrp x2,0x182d000
016d6228  adrp x4,0x182d000
016d622c  add x1,x1,#0x96c
016d6230  add x2,x2,#0x7b0
016d6234  add x4,x4,#0x7b8
016d6238  mov x3,xzr
016d623c  mov x5,xzr
016d6240  bl 0x0182d588
016d6244  adrp x1,0x5764000
016d6248  adrp x2,0x182d000
016d624c  adrp x4,0x182d000
016d6250  add x1,x1,#0x97e
016d6254  add x2,x2,#0x7c0
016d6258  add x4,x4,#0x7c8
016d625c  mov x3,xzr
016d6260  mov x5,xzr
016d6264  bl 0x0182d588
016d6268  mov x19,x0
016d626c  ldr w8,[x19, #0x8]
016d6270  ldr x0,[x19]
016d6274  sub w8,w8,#0x3
016d6278  str w8,[x19, #0x8]
016d627c  orr w1,wzr,#0xfffffffc
016d6280  bl 0x0124c4d0
016d6284  ldr w8,[x19, #0x8]
016d6288  ldr x0,[x19]
016d628c  str wzr,[x19, #0x8]
016d6290  cmp w8,#0x1
016d6294  b.lt 0x016d62a0
016d6298  mvn w1,w8
016d629c  bl 0x0124c4d0
016d62a0  ldr w8,[sp, #0x18]
016d62a4  cmp w8,#0x1
016d62a8  b.lt 0x016d62b8
016d62ac  ldr x0,[sp, #0x10]
016d62b0  mvn w1,w8
016d62b4  bl 0x0124c4d0
016d62b8  ldr w8,[sp, #0x8]
016d62bc  cmp w8,#0x1
016d62c0  b.lt 0x016d62d0
016d62c4  ldr x0,[sp]
016d62c8  mvn w1,w8
016d62cc  bl 0x0124c4d0
016d62d0  ldp x29,x30,[sp, #0x30]
016d62d4  ldr x19,[sp, #0x20]
016d62d8  add sp,sp,#0x40
016d62dc  ret
