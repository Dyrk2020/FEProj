// ===== case280-StringCacheResObject @ 016bb2a4 =====
// existing function case280-StringCacheResObject
016bb2a4  sub sp,sp,#0x40
016bb2a8  str x19,[sp, #0x20]
016bb2ac  stp x29,x30,[sp, #0x30]
016bb2b0  add x29,sp,#0x30
016bb2b4  adrp x1,0x174a000
016bb2b8  add x1,x1,#0x87c
016bb2bc  mov x19,x0
016bb2c0  bl 0x0124ba40
016bb2c4  adrp x1,0x575d000
016bb2c8  add x1,x1,#0xa06
016bb2cc  mov x0,x19
016bb2d0  str x19,[sp]
016bb2d4  bl 0x01251aa0
016bb2d8  mov w8,#0x1
016bb2dc  str w8,[sp, #0x8]
016bb2e0  mov x0,sp
016bb2e4  bl 0x0174aa04
016bb2e8  adrp x1,0x5761000
016bb2ec  adrp x3,0x736d000
016bb2f0  add x1,x1,#0xadd
016bb2f4  add x3,x3,#0x101
016bb2f8  add x0,sp,#0x10
016bb2fc  mov x2,sp
016bb300  bl 0x017e8e64
016bb304  adrp x1,0x5761000
016bb308  adrp x2,0x17e8000
016bb30c  add x1,x1,#0xaf2
016bb310  add x2,x2,#0xe2c
016bb314  add x0,sp,#0x10
016bb318  mov x3,xzr
016bb31c  mov x4,xzr
016bb320  mov x5,xzr
016bb324  bl 0x017e8c44
016bb328  adrp x1,0x5761000
016bb32c  adrp x2,0x17e8000
016bb330  add x1,x1,#0xafc
016bb334  add x2,x2,#0xe34
016bb338  mov x3,xzr
016bb33c  mov x4,xzr
016bb340  mov x5,xzr
016bb344  bl 0x017e8c44
016bb348  adrp x1,0x5761000
016bb34c  adrp x2,0x17e8000
016bb350  add x1,x1,#0xb08
016bb354  add x2,x2,#0xe3c
016bb358  mov x3,xzr
016bb35c  mov x4,xzr
016bb360  mov x5,xzr
016bb364  bl 0x017e8c44
016bb368  adrp x1,0x5761000
016bb36c  adrp x2,0x17e8000
016bb370  add x1,x1,#0xb15
016bb374  add x2,x2,#0xe44
016bb378  mov x3,xzr
016bb37c  mov x4,xzr
016bb380  mov x5,xzr
016bb384  bl 0x017e8c44
016bb388  adrp x1,0x5761000
016bb38c  adrp x2,0x17e8000
016bb390  add x1,x1,#0xb20
016bb394  add x2,x2,#0xe4c
016bb398  mov x3,xzr
016bb39c  mov x4,xzr
016bb3a0  mov x5,xzr
016bb3a4  bl 0x017e8c44
016bb3a8  adrp x1,0x5761000
016bb3ac  adrp x2,0x17e8000
016bb3b0  add x1,x1,#0xb2a
016bb3b4  add x2,x2,#0xe54
016bb3b8  mov x3,xzr
016bb3bc  mov x4,xzr
016bb3c0  mov x5,xzr
016bb3c4  bl 0x017e8c44
016bb3c8  adrp x1,0x5761000
016bb3cc  adrp x2,0x17e8000
016bb3d0  add x1,x1,#0xb39
016bb3d4  add x2,x2,#0xe5c
016bb3d8  mov x3,xzr
016bb3dc  mov x4,xzr
016bb3e0  mov x5,xzr
016bb3e4  bl 0x017e8c44
016bb3e8  mov x19,x0
016bb3ec  ldr w8,[x19, #0x8]
016bb3f0  ldr x0,[x19]
016bb3f4  sub w8,w8,#0x3
016bb3f8  str w8,[x19, #0x8]
016bb3fc  orr w1,wzr,#0xfffffffc
016bb400  bl 0x0124c4d0
016bb404  ldr w8,[x19, #0x8]
016bb408  ldr x0,[x19]
016bb40c  str wzr,[x19, #0x8]
016bb410  cmp w8,#0x1
016bb414  b.lt 0x016bb420
016bb418  mvn w1,w8
016bb41c  bl 0x0124c4d0
016bb420  ldr w8,[sp, #0x18]
016bb424  cmp w8,#0x1
016bb428  b.lt 0x016bb438
016bb42c  ldr x0,[sp, #0x10]
016bb430  mvn w1,w8
016bb434  bl 0x0124c4d0
016bb438  ldr w8,[sp, #0x8]
016bb43c  cmp w8,#0x1
016bb440  b.lt 0x016bb450
016bb444  ldr x0,[sp]
016bb448  mvn w1,w8
016bb44c  bl 0x0124c4d0
016bb450  ldp x29,x30,[sp, #0x30]
016bb454  ldr x19,[sp, #0x20]
016bb458  add sp,sp,#0x40
016bb45c  ret
