// ===== case553-RuneStatData @ 016fd19c =====
// existing function case553-RuneStatData
016fd19c  sub sp,sp,#0x40
016fd1a0  str x19,[sp, #0x20]
016fd1a4  stp x29,x30,[sp, #0x30]
016fd1a8  add x29,sp,#0x30
016fd1ac  adrp x1,0x174a000
016fd1b0  add x1,x1,#0x87c
016fd1b4  mov x19,x0
016fd1b8  bl 0x0124ba40
016fd1bc  adrp x1,0x575d000
016fd1c0  add x1,x1,#0xa06
016fd1c4  mov x0,x19
016fd1c8  str x19,[sp]
016fd1cc  bl 0x01251aa0
016fd1d0  mov w8,#0x1
016fd1d4  str w8,[sp, #0x8]
016fd1d8  mov x0,sp
016fd1dc  bl 0x0174aa04
016fd1e0  adrp x1,0x5769000
016fd1e4  adrp x3,0x736d000
016fd1e8  add x1,x1,#0x3a7
016fd1ec  add x3,x3,#0x101
016fd1f0  add x0,sp,#0x10
016fd1f4  mov x2,sp
016fd1f8  bl 0x018c4824
016fd1fc  adrp x1,0x5769000
016fd200  adrp x2,0x18c4000
016fd204  adrp x4,0x18c4000
016fd208  add x1,x1,#0x3b4
016fd20c  add x2,x2,#0x58c
016fd210  add x4,x4,#0x594
016fd214  add x0,sp,#0x10
016fd218  mov x3,xzr
016fd21c  mov x5,xzr
016fd220  bl 0x018c43a4
016fd224  adrp x1,0x5769000
016fd228  adrp x2,0x18c4000
016fd22c  adrp x4,0x18c4000
016fd230  add x1,x1,#0x3bb
016fd234  add x2,x2,#0x5b0
016fd238  add x4,x4,#0x5b8
016fd23c  mov x3,xzr
016fd240  mov x5,xzr
016fd244  bl 0x018c43a4
016fd248  adrp x1,0x5769000
016fd24c  adrp x2,0x18c4000
016fd250  adrp x4,0x18c4000
016fd254  add x1,x1,#0x3c4
016fd258  add x2,x2,#0x7bc
016fd25c  add x4,x4,#0x7c4
016fd260  mov x3,xzr
016fd264  mov x5,xzr
016fd268  bl 0x018c45d4
016fd26c  mov x19,x0
016fd270  ldr w8,[x19, #0x8]
016fd274  ldr x0,[x19]
016fd278  sub w8,w8,#0x3
016fd27c  str w8,[x19, #0x8]
016fd280  orr w1,wzr,#0xfffffffc
016fd284  bl 0x0124c4d0
016fd288  ldr w8,[x19, #0x8]
016fd28c  ldr x0,[x19]
016fd290  str wzr,[x19, #0x8]
016fd294  cmp w8,#0x1
016fd298  b.lt 0x016fd2a4
016fd29c  mvn w1,w8
016fd2a0  bl 0x0124c4d0
016fd2a4  ldr w8,[sp, #0x18]
016fd2a8  cmp w8,#0x1
016fd2ac  b.lt 0x016fd2bc
016fd2b0  ldr x0,[sp, #0x10]
016fd2b4  mvn w1,w8
016fd2b8  bl 0x0124c4d0
016fd2bc  ldr w8,[sp, #0x8]
016fd2c0  cmp w8,#0x1
016fd2c4  b.lt 0x016fd2d4
016fd2c8  ldr x0,[sp]
016fd2cc  mvn w1,w8
016fd2d0  bl 0x0124c4d0
016fd2d4  ldp x29,x30,[sp, #0x30]
016fd2d8  ldr x19,[sp, #0x20]
016fd2dc  add sp,sp,#0x40
016fd2e0  ret
