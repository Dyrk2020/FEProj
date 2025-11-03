// ===== case254-BestPartner @ 016b75d8 =====
// existing function case254-BestPartner
016b75d8  sub sp,sp,#0x40
016b75dc  str x19,[sp, #0x20]
016b75e0  stp x29,x30,[sp, #0x30]
016b75e4  add x29,sp,#0x30
016b75e8  adrp x1,0x174a000
016b75ec  add x1,x1,#0x87c
016b75f0  mov x19,x0
016b75f4  bl 0x0124ba40
016b75f8  adrp x1,0x575d000
016b75fc  add x1,x1,#0xa06
016b7600  mov x0,x19
016b7604  str x19,[sp]
016b7608  bl 0x01251aa0
016b760c  mov w8,#0x1
016b7610  str w8,[sp, #0x8]
016b7614  mov x0,sp
016b7618  bl 0x0174aa04
016b761c  adrp x1,0x574c000
016b7620  adrp x3,0x736d000
016b7624  add x1,x1,#0xa45
016b7628  add x3,x3,#0x101
016b762c  add x0,sp,#0x10
016b7630  mov x2,sp
016b7634  bl 0x017d9a7c
016b7638  adrp x1,0x5761000
016b763c  adrp x2,0x17d9000
016b7640  adrp x4,0x17d9000
016b7644  add x1,x1,#0x4e5
016b7648  add x2,x2,#0xa1c
016b764c  add x4,x4,#0xa24
016b7650  add x0,sp,#0x10
016b7654  mov x3,xzr
016b7658  mov x5,xzr
016b765c  bl 0x017d9834
016b7660  adrp x1,0x5761000
016b7664  adrp x2,0x17d9000
016b7668  adrp x4,0x17d9000
016b766c  add x1,x1,#0x4f7
016b7670  add x2,x2,#0xa2c
016b7674  add x4,x4,#0xa34
016b7678  mov x3,xzr
016b767c  mov x5,xzr
016b7680  bl 0x017d9834
016b7684  adrp x1,0x5761000
016b7688  adrp x2,0x17d9000
016b768c  adrp x4,0x17d9000
016b7690  add x1,x1,#0x506
016b7694  add x2,x2,#0xa3c
016b7698  add x4,x4,#0xa44
016b769c  mov x3,xzr
016b76a0  mov x5,xzr
016b76a4  bl 0x017d9834
016b76a8  adrp x1,0x5761000
016b76ac  adrp x2,0x17d9000
016b76b0  adrp x4,0x17d9000
016b76b4  add x1,x1,#0x516
016b76b8  add x2,x2,#0xa4c
016b76bc  add x4,x4,#0xa54
016b76c0  mov x3,xzr
016b76c4  mov x5,xzr
016b76c8  bl 0x017d9834
016b76cc  adrp x1,0x5761000
016b76d0  adrp x2,0x17d9000
016b76d4  adrp x4,0x17d9000
016b76d8  add x1,x1,#0x526
016b76dc  add x2,x2,#0xa5c
016b76e0  add x4,x4,#0xa64
016b76e4  mov x3,xzr
016b76e8  mov x5,xzr
016b76ec  bl 0x017d9834
016b76f0  adrp x1,0x5760000
016b76f4  adrp x2,0x17d9000
016b76f8  adrp x4,0x17d9000
016b76fc  add x1,x1,#0x2ac
016b7700  add x2,x2,#0xa6c
016b7704  add x4,x4,#0xa74
016b7708  mov x3,xzr
016b770c  mov x5,xzr
016b7710  bl 0x017d9834
016b7714  mov x19,x0
016b7718  ldr w8,[x19, #0x8]
016b771c  ldr x0,[x19]
016b7720  sub w8,w8,#0x3
016b7724  str w8,[x19, #0x8]
016b7728  orr w1,wzr,#0xfffffffc
016b772c  bl 0x0124c4d0
016b7730  ldr w8,[x19, #0x8]
016b7734  ldr x0,[x19]
016b7738  str wzr,[x19, #0x8]
016b773c  cmp w8,#0x1
016b7740  b.lt 0x016b774c
016b7744  mvn w1,w8
016b7748  bl 0x0124c4d0
016b774c  ldr w8,[sp, #0x18]
016b7750  cmp w8,#0x1
016b7754  b.lt 0x016b7764
016b7758  ldr x0,[sp, #0x10]
016b775c  mvn w1,w8
016b7760  bl 0x0124c4d0
016b7764  ldr w8,[sp, #0x8]
016b7768  cmp w8,#0x1
016b776c  b.lt 0x016b777c
016b7770  ldr x0,[sp]
016b7774  mvn w1,w8
016b7778  bl 0x0124c4d0
016b777c  ldp x29,x30,[sp, #0x30]
016b7780  ldr x19,[sp, #0x20]
016b7784  add sp,sp,#0x40
016b7788  ret
