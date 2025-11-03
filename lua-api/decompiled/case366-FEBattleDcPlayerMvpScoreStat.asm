// ===== case366-FEBattleDcPlayerMvpScoreStat @ 016d4f44 =====
// existing function case366-FEBattleDcPlayerMvpScoreStat
016d4f44  sub sp,sp,#0x40
016d4f48  str x19,[sp, #0x20]
016d4f4c  stp x29,x30,[sp, #0x30]
016d4f50  add x29,sp,#0x30
016d4f54  adrp x1,0x174a000
016d4f58  add x1,x1,#0x87c
016d4f5c  mov x19,x0
016d4f60  bl 0x0124ba40
016d4f64  adrp x1,0x575d000
016d4f68  add x1,x1,#0xa06
016d4f6c  mov x0,x19
016d4f70  str x19,[sp]
016d4f74  bl 0x01251aa0
016d4f78  mov w8,#0x1
016d4f7c  str w8,[sp, #0x8]
016d4f80  mov x0,sp
016d4f84  bl 0x0174aa04
016d4f88  adrp x1,0x5764000
016d4f8c  adrp x3,0x736d000
016d4f90  add x1,x1,#0x2a6
016d4f94  add x3,x3,#0x101
016d4f98  add x0,sp,#0x10
016d4f9c  mov x2,sp
016d4fa0  bl 0x0182a024
016d4fa4  adrp x1,0x5764000
016d4fa8  adrp x2,0x1829000
016d4fac  adrp x4,0x1829000
016d4fb0  add x1,x1,#0x2c3
016d4fb4  add x2,x2,#0xdfc
016d4fb8  add x4,x4,#0xe04
016d4fbc  add x0,sp,#0x10
016d4fc0  mov x3,xzr
016d4fc4  mov x5,xzr
016d4fc8  bl 0x01829c14
016d4fcc  adrp x1,0x5764000
016d4fd0  adrp x2,0x1829000
016d4fd4  adrp x4,0x1829000
016d4fd8  add x1,x1,#0x2d4
016d4fdc  add x2,x2,#0xe0c
016d4fe0  add x4,x4,#0xe14
016d4fe4  mov x3,xzr
016d4fe8  mov x5,xzr
016d4fec  bl 0x01829c14
016d4ff0  adrp x1,0x5762000
016d4ff4  adrp x2,0x182a000
016d4ff8  adrp x4,0x182a000
016d4ffc  add x1,x1,#0xf0d
016d5000  add x2,x2,#0x4
016d5004  add x4,x4,#0xc
016d5008  mov x3,xzr
016d500c  mov x5,xzr
016d5010  bl 0x01829e1c
016d5014  adrp x1,0x5764000
016d5018  adrp x2,0x182a000
016d501c  adrp x4,0x182a000
016d5020  add x1,x1,#0x2da
016d5024  add x2,x2,#0x14
016d5028  add x4,x4,#0x1c
016d502c  mov x3,xzr
016d5030  mov x5,xzr
016d5034  bl 0x01829e1c
016d5038  mov x19,x0
016d503c  ldr w8,[x19, #0x8]
016d5040  ldr x0,[x19]
016d5044  sub w8,w8,#0x3
016d5048  str w8,[x19, #0x8]
016d504c  orr w1,wzr,#0xfffffffc
016d5050  bl 0x0124c4d0
016d5054  ldr w8,[x19, #0x8]
016d5058  ldr x0,[x19]
016d505c  str wzr,[x19, #0x8]
016d5060  cmp w8,#0x1
016d5064  b.lt 0x016d5070
016d5068  mvn w1,w8
016d506c  bl 0x0124c4d0
016d5070  ldr w8,[sp, #0x18]
016d5074  cmp w8,#0x1
016d5078  b.lt 0x016d5088
016d507c  ldr x0,[sp, #0x10]
016d5080  mvn w1,w8
016d5084  bl 0x0124c4d0
016d5088  ldr w8,[sp, #0x8]
016d508c  cmp w8,#0x1
016d5090  b.lt 0x016d50a0
016d5094  ldr x0,[sp]
016d5098  mvn w1,w8
016d509c  bl 0x0124c4d0
016d50a0  ldp x29,x30,[sp, #0x30]
016d50a4  ldr x19,[sp, #0x20]
016d50a8  add sp,sp,#0x40
016d50ac  ret
