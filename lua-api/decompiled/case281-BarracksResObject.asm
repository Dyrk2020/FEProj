// ===== case281-BarracksResObject @ 016bb4c4 =====
// existing function case281-BarracksResObject
016bb4c4  sub sp,sp,#0x40
016bb4c8  str x19,[sp, #0x20]
016bb4cc  stp x29,x30,[sp, #0x30]
016bb4d0  add x29,sp,#0x30
016bb4d4  adrp x1,0x174a000
016bb4d8  add x1,x1,#0x87c
016bb4dc  mov x19,x0
016bb4e0  bl 0x0124ba40
016bb4e4  adrp x1,0x575d000
016bb4e8  add x1,x1,#0xa06
016bb4ec  mov x0,x19
016bb4f0  str x19,[sp]
016bb4f4  bl 0x01251aa0
016bb4f8  mov w8,#0x1
016bb4fc  str w8,[sp, #0x8]
016bb500  mov x0,sp
016bb504  bl 0x0174aa04
016bb508  adrp x1,0x5761000
016bb50c  adrp x3,0x736d000
016bb510  add x1,x1,#0xb46
016bb514  add x3,x3,#0x101
016bb518  add x0,sp,#0x10
016bb51c  mov x2,sp
016bb520  bl 0x017e989c
016bb524  adrp x1,0x5972000
016bb528  adrp x2,0x17e9000
016bb52c  adrp x4,0x17e9000
016bb530  add x1,x1,#0xaa5
016bb534  add x2,x2,#0x684
016bb538  add x4,x4,#0x68c
016bb53c  add x0,sp,#0x10
016bb540  mov x3,xzr
016bb544  mov x5,xzr
016bb548  bl 0x017e949c
016bb54c  adrp x1,0x596a000
016bb550  adrp x2,0x17e9000
016bb554  adrp x4,0x17e9000
016bb558  add x1,x1,#0x262
016bb55c  add x2,x2,#0x694
016bb560  add x4,x4,#0x69c
016bb564  mov x3,xzr
016bb568  mov x5,xzr
016bb56c  bl 0x017e949c
016bb570  adrp x1,0x5761000
016bb574  adrp x2,0x17e9000
016bb578  add x1,x1,#0xb58
016bb57c  add x2,x2,#0x88c
016bb580  mov x3,xzr
016bb584  mov x4,xzr
016bb588  mov x5,xzr
016bb58c  bl 0x017e96a4
016bb590  adrp x1,0x5761000
016bb594  adrp x2,0x17e9000
016bb598  add x1,x1,#0xb63
016bb59c  add x2,x2,#0x894
016bb5a0  mov x3,xzr
016bb5a4  mov x4,xzr
016bb5a8  mov x5,xzr
016bb5ac  bl 0x017e96a4
016bb5b0  mov x19,x0
016bb5b4  ldr w8,[x19, #0x8]
016bb5b8  ldr x0,[x19]
016bb5bc  sub w8,w8,#0x3
016bb5c0  str w8,[x19, #0x8]
016bb5c4  orr w1,wzr,#0xfffffffc
016bb5c8  bl 0x0124c4d0
016bb5cc  ldr w8,[x19, #0x8]
016bb5d0  ldr x0,[x19]
016bb5d4  str wzr,[x19, #0x8]
016bb5d8  cmp w8,#0x1
016bb5dc  b.lt 0x016bb5e8
016bb5e0  mvn w1,w8
016bb5e4  bl 0x0124c4d0
016bb5e8  ldr w8,[sp, #0x18]
016bb5ec  cmp w8,#0x1
016bb5f0  b.lt 0x016bb600
016bb5f4  ldr x0,[sp, #0x10]
016bb5f8  mvn w1,w8
016bb5fc  bl 0x0124c4d0
016bb600  ldr w8,[sp, #0x8]
016bb604  cmp w8,#0x1
016bb608  b.lt 0x016bb618
016bb60c  ldr x0,[sp]
016bb610  mvn w1,w8
016bb614  bl 0x0124c4d0
016bb618  ldp x29,x30,[sp, #0x30]
016bb61c  ldr x19,[sp, #0x20]
016bb620  add sp,sp,#0x40
016bb624  ret
