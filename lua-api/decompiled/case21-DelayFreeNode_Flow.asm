// ===== case21-DelayFreeNode_Flow @ 0168fe74 =====
// existing function case21-DelayFreeNode_Flow
0168fe74  sub sp,sp,#0x50
0168fe78  str x21,[sp, #0x20]
0168fe7c  stp x20,x19,[sp, #0x30]
0168fe80  stp x29,x30,[sp, #0x40]
0168fe84  add x29,sp,#0x40
0168fe88  adrp x1,0x174a000
0168fe8c  add x1,x1,#0x87c
0168fe90  mov x19,x0
0168fe94  bl 0x0124ba40
0168fe98  adrp x1,0x575d000
0168fe9c  add x1,x1,#0xa06
0168fea0  mov x0,x19
0168fea4  str x19,[sp]
0168fea8  bl 0x01251aa0
0168feac  mov w8,#0x1
0168feb0  str w8,[sp, #0x8]
0168feb4  mov x0,sp
0168feb8  bl 0x0174aa04
0168febc  adrp x1,0x575d000
0168fec0  adrp x3,0x736d000
0168fec4  add x1,x1,#0xdda
0168fec8  add x3,x3,#0x101
0168fecc  add x0,sp,#0x10
0168fed0  mov x2,sp
0168fed4  bl 0x01759c50
0168fed8  adrp x1,0x575d000
0168fedc  adrp x2,0x1759000
0168fee0  adrp x4,0x1759000
0168fee4  add x1,x1,#0xded
0168fee8  add x2,x2,#0xc28
0168feec  add x4,x4,#0xc30
0168fef0  add x0,sp,#0x10
0168fef4  mov x3,xzr
0168fef8  mov x5,xzr
0168fefc  bl 0x01759a40
0168ff00  adrp x1,0x575d000
0168ff04  adrp x2,0x1759000
0168ff08  adrp x4,0x1759000
0168ff0c  add x1,x1,#0xdf7
0168ff10  add x2,x2,#0xc38
0168ff14  add x4,x4,#0xc40
0168ff18  mov x3,xzr
0168ff1c  mov x5,xzr
0168ff20  bl 0x01759a40
0168ff24  mov x19,x0
0168ff28  ldr x0,[x19]
0168ff2c  mov w1,#0x10
0168ff30  bl 0x0124cba0
0168ff34  adrp x8,0x1759000
0168ff38  dup v0.2D,xzr
0168ff3c  add x8,x8,#0xc48
0168ff40  mov v0.D[0x0],x8
0168ff44  str q0,[x0]
0168ff48  ldr x0,[x19]
0168ff4c  adrp x1,0x175a000
0168ff50  add x1,x1,#0x260
0168ff54  mov w2,#0x1
0168ff58  bl 0x0124ec90
0168ff5c  ldr x0,[x19]
0168ff60  mov w1,#0xffffffff
0168ff64  bl 0x0124c0c0
0168ff68  ldr x20,[x19]
0168ff6c  orr w1,wzr,#0xfffffffb
0168ff70  mov w2,#0x6e7
0168ff74  mov x0,x20
0168ff78  bl 0x0124a650
0168ff7c  orr w1,wzr,#0xfffffffe
0168ff80  mov x0,x20
0168ff84  bl 0x0124c0c0
0168ff88  orr w1,wzr,#0xfffffffe
0168ff8c  mov x0,x20
0168ff90  bl 0x0124e920
0168ff94  mov w21,w0
0168ff98  adrp x1,0x59b1000
0168ff9c  add x1,x1,#0x259
0168ffa0  mov x0,x20
0168ffa4  bl 0x0124f120
0168ffa8  orr w1,wzr,#0xfffffffe
0168ffac  mov w2,#0x1
0168ffb0  mov x0,x20
0168ffb4  bl 0x0124cfc0
0168ffb8  mov x0,x20
0168ffbc  mov w1,w21
0168ffc0  bl 0x0124e060
0168ffc4  orr w1,wzr,#0xfffffffd
0168ffc8  mov x0,x20
0168ffcc  bl 0x0124c4d0
0168ffd0  ldr x20,[x19]
0168ffd4  orr w1,wzr,#0xfffffffd
0168ffd8  mov w2,#0x6e7
0168ffdc  mov x0,x20
0168ffe0  bl 0x0124a650
0168ffe4  orr w1,wzr,#0xfffffffe
0168ffe8  mov x0,x20
0168ffec  bl 0x0124c0c0
0168fff0  orr w1,wzr,#0xfffffffe
0168fff4  mov x0,x20
0168fff8  bl 0x0124e920
0168fffc  mov w21,w0
01690000  adrp x1,0x59b1000
01690004  add x1,x1,#0x259
01690008  mov x0,x20
0169000c  bl 0x0124f120
01690010  orr w1,wzr,#0xfffffffe
01690014  mov w2,#0x1
01690018  mov x0,x20
0169001c  bl 0x0124cfc0
01690020  mov x0,x20
01690024  mov w1,w21
01690028  bl 0x0124e060
0169002c  orr w1,wzr,#0xfffffffd
01690030  mov x0,x20
01690034  bl 0x0124c4d0
01690038  ldr w8,[x19, #0x8]
0169003c  ldr x0,[x19]
01690040  sub w8,w8,#0x3
01690044  str w8,[x19, #0x8]
01690048  orr w1,wzr,#0xfffffffc
0169004c  bl 0x0124c4d0
01690050  ldr w8,[x19, #0x8]
01690054  ldr x0,[x19]
01690058  str wzr,[x19, #0x8]
0169005c  cmp w8,#0x1
01690060  b.lt 0x0169006c
01690064  mvn w1,w8
01690068  bl 0x0124c4d0
0169006c  ldr w8,[sp, #0x18]
01690070  cmp w8,#0x1
01690074  b.lt 0x01690084
01690078  ldr x0,[sp, #0x10]
0169007c  mvn w1,w8
01690080  bl 0x0124c4d0
01690084  ldr w8,[sp, #0x8]
01690088  cmp w8,#0x1
0169008c  b.lt 0x0169009c
01690090  ldr x0,[sp]
01690094  mvn w1,w8
01690098  bl 0x0124c4d0
0169009c  ldp x29,x30,[sp, #0x40]
016900a0  ldp x20,x19,[sp, #0x30]
016900a4  ldr x21,[sp, #0x20]
016900a8  add sp,sp,#0x50
016900ac  ret
