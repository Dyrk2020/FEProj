// ===== case378-DcHighlightControlItem @ 016d74a0 =====
// existing function case378-DcHighlightControlItem
016d74a0  sub sp,sp,#0x40
016d74a4  str x19,[sp, #0x20]
016d74a8  stp x29,x30,[sp, #0x30]
016d74ac  add x29,sp,#0x30
016d74b0  adrp x1,0x174a000
016d74b4  add x1,x1,#0x87c
016d74b8  mov x19,x0
016d74bc  bl 0x0124ba40
016d74c0  adrp x1,0x575d000
016d74c4  add x1,x1,#0xa06
016d74c8  mov x0,x19
016d74cc  str x19,[sp]
016d74d0  bl 0x01251aa0
016d74d4  mov w8,#0x1
016d74d8  str w8,[sp, #0x8]
016d74dc  mov x0,sp
016d74e0  bl 0x0174aa04
016d74e4  adrp x1,0x5764000
016d74e8  adrp x3,0x736d000
016d74ec  add x1,x1,#0xd6e
016d74f0  add x3,x3,#0x101
016d74f4  add x0,sp,#0x10
016d74f8  mov x2,sp
016d74fc  bl 0x0183401c
016d7500  adrp x1,0x5764000
016d7504  adrp x2,0x1833000
016d7508  adrp x4,0x1833000
016d750c  add x1,x1,#0xd4a
016d7510  add x2,x2,#0xde4
016d7514  add x4,x4,#0xdec
016d7518  add x0,sp,#0x10
016d751c  mov x3,xzr
016d7520  mov x5,xzr
016d7524  bl 0x01833bfc
016d7528  adrp x1,0x5764000
016d752c  adrp x2,0x1833000
016d7530  adrp x4,0x1833000
016d7534  add x1,x1,#0xd85
016d7538  add x2,x2,#0xdf4
016d753c  add x4,x4,#0xdfc
016d7540  mov x3,xzr
016d7544  mov x5,xzr
016d7548  bl 0x01833bfc
016d754c  adrp x1,0x575e000
016d7550  adrp x2,0x1833000
016d7554  adrp x4,0x1833000
016d7558  add x1,x1,#0x2ec
016d755c  add x2,x2,#0xe04
016d7560  add x4,x4,#0xe0c
016d7564  mov x3,xzr
016d7568  mov x5,xzr
016d756c  bl 0x01833bfc
016d7570  adrp x1,0x5764000
016d7574  adrp x2,0x1833000
016d7578  adrp x4,0x1834000
016d757c  add x1,x1,#0xd92
016d7580  add x2,x2,#0xffc
016d7584  add x4,x4,#0x4
016d7588  mov x3,xzr
016d758c  mov x5,xzr
016d7590  bl 0x01833e14
016d7594  adrp x1,0x5764000
016d7598  adrp x2,0x1834000
016d759c  adrp x4,0x1834000
016d75a0  add x1,x1,#0xda3
016d75a4  add x2,x2,#0xc
016d75a8  add x4,x4,#0x14
016d75ac  mov x3,xzr
016d75b0  mov x5,xzr
016d75b4  bl 0x01833e14
016d75b8  mov x19,x0
016d75bc  ldr w8,[x19, #0x8]
016d75c0  ldr x0,[x19]
016d75c4  sub w8,w8,#0x3
016d75c8  str w8,[x19, #0x8]
016d75cc  orr w1,wzr,#0xfffffffc
016d75d0  bl 0x0124c4d0
016d75d4  ldr w8,[x19, #0x8]
016d75d8  ldr x0,[x19]
016d75dc  str wzr,[x19, #0x8]
016d75e0  cmp w8,#0x1
016d75e4  b.lt 0x016d75f0
016d75e8  mvn w1,w8
016d75ec  bl 0x0124c4d0
016d75f0  ldr w8,[sp, #0x18]
016d75f4  cmp w8,#0x1
016d75f8  b.lt 0x016d7608
016d75fc  ldr x0,[sp, #0x10]
016d7600  mvn w1,w8
016d7604  bl 0x0124c4d0
016d7608  ldr w8,[sp, #0x8]
016d760c  cmp w8,#0x1
016d7610  b.lt 0x016d7620
016d7614  ldr x0,[sp]
016d7618  mvn w1,w8
016d761c  bl 0x0124c4d0
016d7620  ldp x29,x30,[sp, #0x30]
016d7624  ldr x19,[sp, #0x20]
016d7628  add sp,sp,#0x40
016d762c  ret
