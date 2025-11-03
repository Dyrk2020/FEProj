// ===== case238-GainWeightAssetObject @ 016b5038 =====
// existing function case238-GainWeightAssetObject
016b5038  sub sp,sp,#0x40
016b503c  str x19,[sp, #0x20]
016b5040  stp x29,x30,[sp, #0x30]
016b5044  add x29,sp,#0x30
016b5048  adrp x1,0x174a000
016b504c  add x1,x1,#0x87c
016b5050  mov x19,x0
016b5054  bl 0x0124ba40
016b5058  adrp x1,0x575d000
016b505c  add x1,x1,#0xa06
016b5060  mov x0,x19
016b5064  str x19,[sp]
016b5068  bl 0x01251aa0
016b506c  mov w8,#0x1
016b5070  str w8,[sp, #0x8]
016b5074  mov x0,sp
016b5078  bl 0x0174aa04
016b507c  adrp x1,0x5761000
016b5080  adrp x3,0x736d000
016b5084  add x1,x1,#0x227
016b5088  add x3,x3,#0x101
016b508c  add x0,sp,#0x10
016b5090  mov x2,sp
016b5094  bl 0x017ce564
016b5098  adrp x1,0x575d000
016b509c  adrp x2,0x17ce000
016b50a0  adrp x4,0x17ce000
016b50a4  add x1,x1,#0xa00
016b50a8  add x2,x2,#0x554
016b50ac  add x4,x4,#0x55c
016b50b0  add x0,sp,#0x10
016b50b4  mov x3,xzr
016b50b8  mov x5,xzr
016b50bc  bl 0x017ce36c
016b50c0  mov x19,x0
016b50c4  ldr w8,[x19, #0x8]
016b50c8  ldr x0,[x19]
016b50cc  sub w8,w8,#0x3
016b50d0  str w8,[x19, #0x8]
016b50d4  orr w1,wzr,#0xfffffffc
016b50d8  bl 0x0124c4d0
016b50dc  ldr w8,[x19, #0x8]
016b50e0  ldr x0,[x19]
016b50e4  str wzr,[x19, #0x8]
016b50e8  cmp w8,#0x1
016b50ec  b.lt 0x016b50f8
016b50f0  mvn w1,w8
016b50f4  bl 0x0124c4d0
016b50f8  ldr w8,[sp, #0x18]
016b50fc  cmp w8,#0x1
016b5100  b.lt 0x016b5110
016b5104  ldr x0,[sp, #0x10]
016b5108  mvn w1,w8
016b510c  bl 0x0124c4d0
016b5110  ldr w8,[sp, #0x8]
016b5114  cmp w8,#0x1
016b5118  b.lt 0x016b5128
016b511c  ldr x0,[sp]
016b5120  mvn w1,w8
016b5124  bl 0x0124c4d0
016b5128  ldp x29,x30,[sp, #0x30]
016b512c  ldr x19,[sp, #0x20]
016b5130  add sp,sp,#0x40
016b5134  ret
