// ===== case421-HangupEnterInfoResObject @ 016e545c =====
// existing function case421-HangupEnterInfoResObject
016e545c  sub sp,sp,#0x40
016e5460  str x19,[sp, #0x20]
016e5464  stp x29,x30,[sp, #0x30]
016e5468  add x29,sp,#0x30
016e546c  adrp x1,0x174a000
016e5470  add x1,x1,#0x87c
016e5474  mov x19,x0
016e5478  bl 0x0124ba40
016e547c  adrp x1,0x575d000
016e5480  add x1,x1,#0xa06
016e5484  mov x0,x19
016e5488  str x19,[sp]
016e548c  bl 0x01251aa0
016e5490  mov w8,#0x1
016e5494  str w8,[sp, #0x8]
016e5498  mov x0,sp
016e549c  bl 0x0174aa04
016e54a0  adrp x1,0x5766000
016e54a4  adrp x3,0x736d000
016e54a8  add x1,x1,#0x4e5
016e54ac  add x3,x3,#0x101
016e54b0  add x0,sp,#0x10
016e54b4  mov x2,sp
016e54b8  bl 0x0185d710
016e54bc  adrp x1,0x5766000
016e54c0  adrp x2,0x185d000
016e54c4  adrp x4,0x185d000
016e54c8  add x1,x1,#0x4fe
016e54cc  add x2,x2,#0x6e0
016e54d0  add x4,x4,#0x6e8
016e54d4  add x0,sp,#0x10
016e54d8  mov x3,xzr
016e54dc  mov x5,xzr
016e54e0  bl 0x0185d4f8
016e54e4  adrp x1,0x5766000
016e54e8  adrp x2,0x185d000
016e54ec  adrp x4,0x185d000
016e54f0  add x1,x1,#0x509
016e54f4  add x2,x2,#0x6f0
016e54f8  add x4,x4,#0x6f8
016e54fc  mov x3,xzr
016e5500  mov x5,xzr
016e5504  bl 0x0185d4f8
016e5508  adrp x1,0x5766000
016e550c  adrp x2,0x185d000
016e5510  adrp x4,0x185d000
016e5514  add x1,x1,#0x519
016e5518  add x2,x2,#0x700
016e551c  add x4,x4,#0x708
016e5520  mov x3,xzr
016e5524  mov x5,xzr
016e5528  bl 0x0185d4f8
016e552c  mov x19,x0
016e5530  ldr w8,[x19, #0x8]
016e5534  ldr x0,[x19]
016e5538  sub w8,w8,#0x3
016e553c  str w8,[x19, #0x8]
016e5540  orr w1,wzr,#0xfffffffc
016e5544  bl 0x0124c4d0
016e5548  ldr w8,[x19, #0x8]
016e554c  ldr x0,[x19]
016e5550  str wzr,[x19, #0x8]
016e5554  cmp w8,#0x1
016e5558  b.lt 0x016e5564
016e555c  mvn w1,w8
016e5560  bl 0x0124c4d0
016e5564  ldr w8,[sp, #0x18]
016e5568  cmp w8,#0x1
016e556c  b.lt 0x016e557c
016e5570  ldr x0,[sp, #0x10]
016e5574  mvn w1,w8
016e5578  bl 0x0124c4d0
016e557c  ldr w8,[sp, #0x8]
016e5580  cmp w8,#0x1
016e5584  b.lt 0x016e5594
016e5588  ldr x0,[sp]
016e558c  mvn w1,w8
016e5590  bl 0x0124c4d0
016e5594  ldp x29,x30,[sp, #0x30]
016e5598  ldr x19,[sp, #0x20]
016e559c  add sp,sp,#0x40
016e55a0  ret
