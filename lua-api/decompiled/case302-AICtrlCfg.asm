// ===== case302-AICtrlCfg @ 016bf1a8 =====
// existing function case302-AICtrlCfg
016bf1a8  sub sp,sp,#0x40
016bf1ac  str x19,[sp, #0x20]
016bf1b0  stp x29,x30,[sp, #0x30]
016bf1b4  add x29,sp,#0x30
016bf1b8  adrp x1,0x174a000
016bf1bc  add x1,x1,#0x87c
016bf1c0  mov x19,x0
016bf1c4  bl 0x0124ba40
016bf1c8  adrp x1,0x575d000
016bf1cc  add x1,x1,#0xa06
016bf1d0  mov x0,x19
016bf1d4  str x19,[sp]
016bf1d8  bl 0x01251aa0
016bf1dc  mov w8,#0x1
016bf1e0  str w8,[sp, #0x8]
016bf1e4  mov x0,sp
016bf1e8  bl 0x0174aa04
016bf1ec  adrp x1,0x5762000
016bf1f0  adrp x3,0x736d000
016bf1f4  add x1,x1,#0x731
016bf1f8  add x3,x3,#0x101
016bf1fc  add x0,sp,#0x10
016bf200  mov x2,sp
016bf204  bl 0x017f6b00
016bf208  adrp x1,0x5767000
016bf20c  adrp x2,0x17f6000
016bf210  adrp x4,0x17f6000
016bf214  add x1,x1,#0x8b6
016bf218  add x2,x2,#0xae0
016bf21c  add x4,x4,#0xae8
016bf220  add x0,sp,#0x10
016bf224  mov x3,xzr
016bf228  mov x5,xzr
016bf22c  bl 0x017f68f8
016bf230  adrp x1,0x5762000
016bf234  adrp x2,0x17f6000
016bf238  adrp x4,0x17f6000
016bf23c  add x1,x1,#0x73b
016bf240  add x2,x2,#0xaf0
016bf244  add x4,x4,#0xaf8
016bf248  mov x3,xzr
016bf24c  mov x5,xzr
016bf250  bl 0x017f68f8
016bf254  mov x19,x0
016bf258  ldr w8,[x19, #0x8]
016bf25c  ldr x0,[x19]
016bf260  sub w8,w8,#0x3
016bf264  str w8,[x19, #0x8]
016bf268  orr w1,wzr,#0xfffffffc
016bf26c  bl 0x0124c4d0
016bf270  ldr w8,[x19, #0x8]
016bf274  ldr x0,[x19]
016bf278  str wzr,[x19, #0x8]
016bf27c  cmp w8,#0x1
016bf280  b.lt 0x016bf28c
016bf284  mvn w1,w8
016bf288  bl 0x0124c4d0
016bf28c  ldr w8,[sp, #0x18]
016bf290  cmp w8,#0x1
016bf294  b.lt 0x016bf2a4
016bf298  ldr x0,[sp, #0x10]
016bf29c  mvn w1,w8
016bf2a0  bl 0x0124c4d0
016bf2a4  ldr w8,[sp, #0x8]
016bf2a8  cmp w8,#0x1
016bf2ac  b.lt 0x016bf2bc
016bf2b0  ldr x0,[sp]
016bf2b4  mvn w1,w8
016bf2b8  bl 0x0124c4d0
016bf2bc  ldp x29,x30,[sp, #0x30]
016bf2c0  ldr x19,[sp, #0x20]
016bf2c4  add sp,sp,#0x40
016bf2c8  ret
