// ===== case292-CherryGainConf @ 016bde3c =====
// existing function case292-CherryGainConf
016bde3c  sub sp,sp,#0x40
016bde40  str x19,[sp, #0x20]
016bde44  stp x29,x30,[sp, #0x30]
016bde48  add x29,sp,#0x30
016bde4c  adrp x1,0x174a000
016bde50  add x1,x1,#0x87c
016bde54  mov x19,x0
016bde58  bl 0x0124ba40
016bde5c  adrp x1,0x575d000
016bde60  add x1,x1,#0xa06
016bde64  mov x0,x19
016bde68  str x19,[sp]
016bde6c  bl 0x01251aa0
016bde70  mov w8,#0x1
016bde74  str w8,[sp, #0x8]
016bde78  mov x0,sp
016bde7c  bl 0x0174aa04
016bde80  adrp x1,0x5762000
016bde84  adrp x3,0x736d000
016bde88  add x1,x1,#0x510
016bde8c  add x3,x3,#0x101
016bde90  add x0,sp,#0x10
016bde94  mov x2,sp
016bde98  bl 0x017f18d4
016bde9c  adrp x1,0x594b000
016bdea0  adrp x2,0x17f1000
016bdea4  adrp x4,0x17f1000
016bdea8  add x1,x1,#0x6c4
016bdeac  add x2,x2,#0x6cc
016bdeb0  add x4,x4,#0x6d4
016bdeb4  add x0,sp,#0x10
016bdeb8  mov x3,xzr
016bdebc  mov x5,xzr
016bdec0  bl 0x017f14e4
016bdec4  adrp x1,0x5762000
016bdec8  adrp x2,0x17f1000
016bdecc  adrp x4,0x17f1000
016bded0  add x1,x1,#0x51f
016bded4  add x2,x2,#0x8c4
016bded8  add x4,x4,#0x8cc
016bdedc  mov x3,xzr
016bdee0  mov x5,xzr
016bdee4  bl 0x017f16dc
016bdee8  mov x19,x0
016bdeec  ldr w8,[x19, #0x8]
016bdef0  ldr x0,[x19]
016bdef4  sub w8,w8,#0x3
016bdef8  str w8,[x19, #0x8]
016bdefc  orr w1,wzr,#0xfffffffc
016bdf00  bl 0x0124c4d0
016bdf04  ldr w8,[x19, #0x8]
016bdf08  ldr x0,[x19]
016bdf0c  str wzr,[x19, #0x8]
016bdf10  cmp w8,#0x1
016bdf14  b.lt 0x016bdf20
016bdf18  mvn w1,w8
016bdf1c  bl 0x0124c4d0
016bdf20  ldr w8,[sp, #0x18]
016bdf24  cmp w8,#0x1
016bdf28  b.lt 0x016bdf38
016bdf2c  ldr x0,[sp, #0x10]
016bdf30  mvn w1,w8
016bdf34  bl 0x0124c4d0
016bdf38  ldr w8,[sp, #0x8]
016bdf3c  cmp w8,#0x1
016bdf40  b.lt 0x016bdf50
016bdf44  ldr x0,[sp]
016bdf48  mvn w1,w8
016bdf4c  bl 0x0124c4d0
016bdf50  ldp x29,x30,[sp, #0x30]
016bdf54  ldr x19,[sp, #0x20]
016bdf58  add sp,sp,#0x40
016bdf5c  ret
