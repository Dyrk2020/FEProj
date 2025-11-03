// ===== case375-PerfectFitInfo @ 016d6f9c =====
// existing function case375-PerfectFitInfo
016d6f9c  sub sp,sp,#0x40
016d6fa0  str x19,[sp, #0x20]
016d6fa4  stp x29,x30,[sp, #0x30]
016d6fa8  add x29,sp,#0x30
016d6fac  adrp x1,0x174a000
016d6fb0  add x1,x1,#0x87c
016d6fb4  mov x19,x0
016d6fb8  bl 0x0124ba40
016d6fbc  adrp x1,0x575d000
016d6fc0  add x1,x1,#0xa06
016d6fc4  mov x0,x19
016d6fc8  str x19,[sp]
016d6fcc  bl 0x01251aa0
016d6fd0  mov w8,#0x1
016d6fd4  str w8,[sp, #0x8]
016d6fd8  mov x0,sp
016d6fdc  bl 0x0174aa04
016d6fe0  adrp x1,0x5764000
016d6fe4  adrp x3,0x736d000
016d6fe8  add x1,x1,#0xced
016d6fec  add x3,x3,#0x101
016d6ff0  add x0,sp,#0x10
016d6ff4  mov x2,sp
016d6ff8  bl 0x018319a0
016d6ffc  adrp x1,0x5763000
016d7000  adrp x2,0x1831000
016d7004  adrp x4,0x1831000
016d7008  add x1,x1,#0xcff
016d700c  add x2,x2,#0x980
016d7010  add x4,x4,#0x988
016d7014  add x0,sp,#0x10
016d7018  mov x3,xzr
016d701c  mov x5,xzr
016d7020  bl 0x01831798
016d7024  adrp x1,0x5764000
016d7028  adrp x2,0x1831000
016d702c  adrp x4,0x1831000
016d7030  add x1,x1,#0xcfc
016d7034  add x2,x2,#0x990
016d7038  add x4,x4,#0x998
016d703c  mov x3,xzr
016d7040  mov x5,xzr
016d7044  bl 0x01831798
016d7048  mov x19,x0
016d704c  ldr w8,[x19, #0x8]
016d7050  ldr x0,[x19]
016d7054  sub w8,w8,#0x3
016d7058  str w8,[x19, #0x8]
016d705c  orr w1,wzr,#0xfffffffc
016d7060  bl 0x0124c4d0
016d7064  ldr w8,[x19, #0x8]
016d7068  ldr x0,[x19]
016d706c  str wzr,[x19, #0x8]
016d7070  cmp w8,#0x1
016d7074  b.lt 0x016d7080
016d7078  mvn w1,w8
016d707c  bl 0x0124c4d0
016d7080  ldr w8,[sp, #0x18]
016d7084  cmp w8,#0x1
016d7088  b.lt 0x016d7098
016d708c  ldr x0,[sp, #0x10]
016d7090  mvn w1,w8
016d7094  bl 0x0124c4d0
016d7098  ldr w8,[sp, #0x8]
016d709c  cmp w8,#0x1
016d70a0  b.lt 0x016d70b0
016d70a4  ldr x0,[sp]
016d70a8  mvn w1,w8
016d70ac  bl 0x0124c4d0
016d70b0  ldp x29,x30,[sp, #0x30]
016d70b4  ldr x19,[sp, #0x20]
016d70b8  add sp,sp,#0x40
016d70bc  ret
