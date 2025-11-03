// ===== case376-DcKillAssistItem @ 016d7124 =====
// existing function case376-DcKillAssistItem
016d7124  sub sp,sp,#0x40
016d7128  str x19,[sp, #0x20]
016d712c  stp x29,x30,[sp, #0x30]
016d7130  add x29,sp,#0x30
016d7134  adrp x1,0x174a000
016d7138  add x1,x1,#0x87c
016d713c  mov x19,x0
016d7140  bl 0x0124ba40
016d7144  adrp x1,0x575d000
016d7148  add x1,x1,#0xa06
016d714c  mov x0,x19
016d7150  str x19,[sp]
016d7154  bl 0x01251aa0
016d7158  mov w8,#0x1
016d715c  str w8,[sp, #0x8]
016d7160  mov x0,sp
016d7164  bl 0x0174aa04
016d7168  adrp x1,0x5764000
016d716c  adrp x3,0x736d000
016d7170  add x1,x1,#0xd07
016d7174  add x3,x3,#0x101
016d7178  add x0,sp,#0x10
016d717c  mov x2,sp
016d7180  bl 0x01832384
016d7184  adrp x1,0x5764000
016d7188  adrp x2,0x1832000
016d718c  adrp x4,0x1832000
016d7190  add x1,x1,#0xd18
016d7194  add x2,x2,#0x16c
016d7198  add x4,x4,#0x174
016d719c  add x0,sp,#0x10
016d71a0  mov x3,xzr
016d71a4  mov x5,xzr
016d71a8  bl 0x01831f84
016d71ac  adrp x1,0x5764000
016d71b0  adrp x2,0x1832000
016d71b4  adrp x4,0x1832000
016d71b8  add x1,x1,#0xd24
016d71bc  add x2,x2,#0x17c
016d71c0  add x4,x4,#0x184
016d71c4  mov x3,xzr
016d71c8  mov x5,xzr
016d71cc  bl 0x01831f84
016d71d0  adrp x1,0x5764000
016d71d4  adrp x2,0x1832000
016d71d8  adrp x4,0x1832000
016d71dc  add x1,x1,#0x7f
016d71e0  add x2,x2,#0x374
016d71e4  add x4,x4,#0x37c
016d71e8  mov x3,xzr
016d71ec  mov x5,xzr
016d71f0  bl 0x0183218c
016d71f4  mov x19,x0
016d71f8  ldr w8,[x19, #0x8]
016d71fc  ldr x0,[x19]
016d7200  sub w8,w8,#0x3
016d7204  str w8,[x19, #0x8]
016d7208  orr w1,wzr,#0xfffffffc
016d720c  bl 0x0124c4d0
016d7210  ldr w8,[x19, #0x8]
016d7214  ldr x0,[x19]
016d7218  str wzr,[x19, #0x8]
016d721c  cmp w8,#0x1
016d7220  b.lt 0x016d722c
016d7224  mvn w1,w8
016d7228  bl 0x0124c4d0
016d722c  ldr w8,[sp, #0x18]
016d7230  cmp w8,#0x1
016d7234  b.lt 0x016d7244
016d7238  ldr x0,[sp, #0x10]
016d723c  mvn w1,w8
016d7240  bl 0x0124c4d0
016d7244  ldr w8,[sp, #0x8]
016d7248  cmp w8,#0x1
016d724c  b.lt 0x016d725c
016d7250  ldr x0,[sp]
016d7254  mvn w1,w8
016d7258  bl 0x0124c4d0
016d725c  ldp x29,x30,[sp, #0x30]
016d7260  ldr x19,[sp, #0x20]
016d7264  add sp,sp,#0x40
016d7268  ret
