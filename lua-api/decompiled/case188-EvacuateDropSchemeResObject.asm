// ===== case188-EvacuateDropSchemeResObject @ 016acfd4 =====
// existing function case188-EvacuateDropSchemeResObject
016acfd4  sub sp,sp,#0x40
016acfd8  str x19,[sp, #0x20]
016acfdc  stp x29,x30,[sp, #0x30]
016acfe0  add x29,sp,#0x30
016acfe4  adrp x1,0x174a000
016acfe8  add x1,x1,#0x87c
016acfec  mov x19,x0
016acff0  bl 0x0124ba40
016acff4  adrp x1,0x575d000
016acff8  add x1,x1,#0xa06
016acffc  mov x0,x19
016ad000  str x19,[sp]
016ad004  bl 0x01251aa0
016ad008  mov w8,#0x1
016ad00c  str w8,[sp, #0x8]
016ad010  mov x0,sp
016ad014  bl 0x0174aa04
016ad018  adrp x1,0x5760000
016ad01c  adrp x3,0x736d000
016ad020  add x1,x1,#0xadb
016ad024  add x3,x3,#0x101
016ad028  add x0,sp,#0x10
016ad02c  mov x2,sp
016ad030  bl 0x017b563c
016ad034  adrp x1,0x5760000
016ad038  adrp x2,0x17b5000
016ad03c  adrp x4,0x17b5000
016ad040  add x1,x1,#0xaf7
016ad044  add x2,x2,#0x61c
016ad048  add x4,x4,#0x624
016ad04c  add x0,sp,#0x10
016ad050  mov x3,xzr
016ad054  mov x5,xzr
016ad058  bl 0x017b5434
016ad05c  adrp x1,0x5760000
016ad060  adrp x2,0x17b5000
016ad064  adrp x4,0x17b5000
016ad068  add x1,x1,#0xb02
016ad06c  add x2,x2,#0x62c
016ad070  add x4,x4,#0x634
016ad074  mov x3,xzr
016ad078  mov x5,xzr
016ad07c  bl 0x017b5434
016ad080  mov x19,x0
016ad084  ldr w8,[x19, #0x8]
016ad088  ldr x0,[x19]
016ad08c  sub w8,w8,#0x3
016ad090  str w8,[x19, #0x8]
016ad094  orr w1,wzr,#0xfffffffc
016ad098  bl 0x0124c4d0
016ad09c  ldr w8,[x19, #0x8]
016ad0a0  ldr x0,[x19]
016ad0a4  str wzr,[x19, #0x8]
016ad0a8  cmp w8,#0x1
016ad0ac  b.lt 0x016ad0b8
016ad0b0  mvn w1,w8
016ad0b4  bl 0x0124c4d0
016ad0b8  ldr w8,[sp, #0x18]
016ad0bc  cmp w8,#0x1
016ad0c0  b.lt 0x016ad0d0
016ad0c4  ldr x0,[sp, #0x10]
016ad0c8  mvn w1,w8
016ad0cc  bl 0x0124c4d0
016ad0d0  ldr w8,[sp, #0x8]
016ad0d4  cmp w8,#0x1
016ad0d8  b.lt 0x016ad0e8
016ad0dc  ldr x0,[sp]
016ad0e0  mvn w1,w8
016ad0e4  bl 0x0124c4d0
016ad0e8  ldp x29,x30,[sp, #0x30]
016ad0ec  ldr x19,[sp, #0x20]
016ad0f0  add sp,sp,#0x40
016ad0f4  ret
