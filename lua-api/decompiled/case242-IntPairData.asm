// ===== case242-IntPairData @ 016b587c =====
// existing function case242-IntPairData
016b587c  sub sp,sp,#0x40
016b5880  str x19,[sp, #0x20]
016b5884  stp x29,x30,[sp, #0x30]
016b5888  add x29,sp,#0x30
016b588c  adrp x1,0x174a000
016b5890  add x1,x1,#0x87c
016b5894  mov x19,x0
016b5898  bl 0x0124ba40
016b589c  adrp x1,0x575d000
016b58a0  add x1,x1,#0xa06
016b58a4  mov x0,x19
016b58a8  str x19,[sp]
016b58ac  bl 0x01251aa0
016b58b0  mov w8,#0x1
016b58b4  str w8,[sp, #0x8]
016b58b8  mov x0,sp
016b58bc  bl 0x0174aa04
016b58c0  adrp x1,0x5761000
016b58c4  adrp x3,0x736d000
016b58c8  add x1,x1,#0x2cc
016b58cc  add x3,x3,#0x101
016b58d0  add x0,sp,#0x10
016b58d4  mov x2,sp
016b58d8  bl 0x017d1bc0
016b58dc  adrp x1,0x5944000
016b58e0  adrp x2,0x17d1000
016b58e4  adrp x4,0x17d1000
016b58e8  add x1,x1,#0xbee
016b58ec  add x2,x2,#0xba0
016b58f0  add x4,x4,#0xba8
016b58f4  add x0,sp,#0x10
016b58f8  mov x3,xzr
016b58fc  mov x5,xzr
016b5900  bl 0x017d19b8
016b5904  adrp x1,0x5955000
016b5908  adrp x2,0x17d1000
016b590c  adrp x4,0x17d1000
016b5910  add x1,x1,#0x16f
016b5914  add x2,x2,#0xbb0
016b5918  add x4,x4,#0xbb8
016b591c  mov x3,xzr
016b5920  mov x5,xzr
016b5924  bl 0x017d19b8
016b5928  mov x19,x0
016b592c  ldr w8,[x19, #0x8]
016b5930  ldr x0,[x19]
016b5934  sub w8,w8,#0x3
016b5938  str w8,[x19, #0x8]
016b593c  orr w1,wzr,#0xfffffffc
016b5940  bl 0x0124c4d0
016b5944  ldr w8,[x19, #0x8]
016b5948  ldr x0,[x19]
016b594c  str wzr,[x19, #0x8]
016b5950  cmp w8,#0x1
016b5954  b.lt 0x016b5960
016b5958  mvn w1,w8
016b595c  bl 0x0124c4d0
016b5960  ldr w8,[sp, #0x18]
016b5964  cmp w8,#0x1
016b5968  b.lt 0x016b5978
016b596c  ldr x0,[sp, #0x10]
016b5970  mvn w1,w8
016b5974  bl 0x0124c4d0
016b5978  ldr w8,[sp, #0x8]
016b597c  cmp w8,#0x1
016b5980  b.lt 0x016b5990
016b5984  ldr x0,[sp]
016b5988  mvn w1,w8
016b598c  bl 0x0124c4d0
016b5990  ldp x29,x30,[sp, #0x30]
016b5994  ldr x19,[sp, #0x20]
016b5998  add sp,sp,#0x40
016b599c  ret
