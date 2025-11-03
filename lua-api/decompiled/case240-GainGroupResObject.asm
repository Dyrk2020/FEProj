// ===== case240-GainGroupResObject @ 016b52e8 =====
// existing function case240-GainGroupResObject
016b52e8  sub sp,sp,#0x40
016b52ec  str x19,[sp, #0x20]
016b52f0  stp x29,x30,[sp, #0x30]
016b52f4  add x29,sp,#0x30
016b52f8  adrp x1,0x174a000
016b52fc  add x1,x1,#0x87c
016b5300  mov x19,x0
016b5304  bl 0x0124ba40
016b5308  adrp x1,0x575d000
016b530c  add x1,x1,#0xa06
016b5310  mov x0,x19
016b5314  str x19,[sp]
016b5318  bl 0x01251aa0
016b531c  mov w8,#0x1
016b5320  str w8,[sp, #0x8]
016b5324  mov x0,sp
016b5328  bl 0x0174aa04
016b532c  adrp x1,0x5761000
016b5330  adrp x3,0x736d000
016b5334  add x1,x1,#0x251
016b5338  add x3,x3,#0x101
016b533c  add x0,sp,#0x10
016b5340  mov x2,sp
016b5344  bl 0x017d094c
016b5348  adrp x1,0x5761000
016b534c  adrp x2,0x17d0000
016b5350  adrp x4,0x17d0000
016b5354  add x1,x1,#0x264
016b5358  add x2,x2,#0x50c
016b535c  add x4,x4,#0x514
016b5360  add x0,sp,#0x10
016b5364  mov x3,xzr
016b5368  mov x5,xzr
016b536c  bl 0x017d0324
016b5370  adrp x1,0x5761000
016b5374  adrp x2,0x17d0000
016b5378  adrp x4,0x17d0000
016b537c  add x1,x1,#0x26f
016b5380  add x2,x2,#0x51c
016b5384  add x4,x4,#0x524
016b5388  mov x3,xzr
016b538c  mov x5,xzr
016b5390  bl 0x017d0324
016b5394  adrp x1,0x5761000
016b5398  adrp x2,0x17d0000
016b539c  adrp x4,0x17d0000
016b53a0  add x1,x1,#0x279
016b53a4  add x2,x2,#0x52c
016b53a8  add x4,x4,#0x534
016b53ac  mov x3,xzr
016b53b0  mov x5,xzr
016b53b4  bl 0x017d0324
016b53b8  adrp x1,0x5761000
016b53bc  adrp x2,0x17d0000
016b53c0  adrp x4,0x17d0000
016b53c4  add x1,x1,#0x285
016b53c8  add x2,x2,#0x724
016b53cc  add x4,x4,#0x72c
016b53d0  mov x3,xzr
016b53d4  mov x5,xzr
016b53d8  bl 0x017d053c
016b53dc  adrp x1,0x5761000
016b53e0  adrp x2,0x17d0000
016b53e4  adrp x4,0x17d0000
016b53e8  add x1,x1,#0x28f
016b53ec  add x2,x2,#0x91c
016b53f0  add x4,x4,#0x924
016b53f4  mov x3,xzr
016b53f8  mov x5,xzr
016b53fc  bl 0x017d0734
016b5400  adrp x1,0x5761000
016b5404  adrp x2,0x17d0000
016b5408  adrp x4,0x17d0000
016b540c  add x1,x1,#0x29e
016b5410  add x2,x2,#0x92c
016b5414  add x4,x4,#0x934
016b5418  mov x3,xzr
016b541c  mov x5,xzr
016b5420  bl 0x017d0734
016b5424  adrp x1,0x5761000
016b5428  adrp x2,0x17d0000
016b542c  adrp x4,0x17d0000
016b5430  add x1,x1,#0x2ac
016b5434  add x2,x2,#0x93c
016b5438  add x4,x4,#0x944
016b543c  mov x3,xzr
016b5440  mov x5,xzr
016b5444  bl 0x017d0734
016b5448  mov x19,x0
016b544c  ldr w8,[x19, #0x8]
016b5450  ldr x0,[x19]
016b5454  sub w8,w8,#0x3
016b5458  str w8,[x19, #0x8]
016b545c  orr w1,wzr,#0xfffffffc
016b5460  bl 0x0124c4d0
016b5464  ldr w8,[x19, #0x8]
016b5468  ldr x0,[x19]
016b546c  str wzr,[x19, #0x8]
016b5470  cmp w8,#0x1
016b5474  b.lt 0x016b5480
016b5478  mvn w1,w8
016b547c  bl 0x0124c4d0
016b5480  ldr w8,[sp, #0x18]
016b5484  cmp w8,#0x1
016b5488  b.lt 0x016b5498
016b548c  ldr x0,[sp, #0x10]
016b5490  mvn w1,w8
016b5494  bl 0x0124c4d0
016b5498  ldr w8,[sp, #0x8]
016b549c  cmp w8,#0x1
016b54a0  b.lt 0x016b54b0
016b54a4  ldr x0,[sp]
016b54a8  mvn w1,w8
016b54ac  bl 0x0124c4d0
016b54b0  ldp x29,x30,[sp, #0x30]
016b54b4  ldr x19,[sp, #0x20]
016b54b8  add sp,sp,#0x40
016b54bc  ret
