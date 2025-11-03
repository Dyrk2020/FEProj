// ===== case776-BulletDetectionComponent @ 0172fc70 =====
// existing function case776-BulletDetectionComponent
0172fc70  sub sp,sp,#0x40
0172fc74  str x19,[sp, #0x20]
0172fc78  stp x29,x30,[sp, #0x30]
0172fc7c  add x29,sp,#0x30
0172fc80  adrp x1,0x174a000
0172fc84  add x1,x1,#0x87c
0172fc88  mov x19,x0
0172fc8c  bl 0x0124ba40
0172fc90  adrp x1,0x575d000
0172fc94  add x1,x1,#0xa06
0172fc98  mov x0,x19
0172fc9c  str x19,[sp]
0172fca0  bl 0x01251aa0
0172fca4  mov w8,#0x1
0172fca8  str w8,[sp, #0x8]
0172fcac  mov x0,sp
0172fcb0  bl 0x0174aa04
0172fcb4  adrp x1,0x5771000
0172fcb8  adrp x3,0x736d000
0172fcbc  add x1,x1,#0x80a
0172fcc0  add x3,x3,#0x101
0172fcc4  add x0,sp,#0x10
0172fcc8  mov x2,sp
0172fccc  bl 0x019a40e0
0172fcd0  adrp x1,0x5771000
0172fcd4  adrp x2,0x19a4000
0172fcd8  adrp x4,0x19a4000
0172fcdc  add x1,x1,#0x823
0172fce0  add x2,x2,#0xd0
0172fce4  add x4,x4,#0xd8
0172fce8  add x0,sp,#0x10
0172fcec  mov x3,xzr
0172fcf0  mov x5,xzr
0172fcf4  bl 0x019a3ee8
0172fcf8  mov x19,x0
0172fcfc  ldr w8,[x19, #0x8]
0172fd00  ldr x0,[x19]
0172fd04  sub w8,w8,#0x3
0172fd08  str w8,[x19, #0x8]
0172fd0c  orr w1,wzr,#0xfffffffc
0172fd10  bl 0x0124c4d0
0172fd14  ldr w8,[x19, #0x8]
0172fd18  ldr x0,[x19]
0172fd1c  str wzr,[x19, #0x8]
0172fd20  cmp w8,#0x1
0172fd24  b.lt 0x0172fd30
0172fd28  mvn w1,w8
0172fd2c  bl 0x0124c4d0
0172fd30  ldr w8,[sp, #0x18]
0172fd34  cmp w8,#0x1
0172fd38  b.lt 0x0172fd48
0172fd3c  ldr x0,[sp, #0x10]
0172fd40  mvn w1,w8
0172fd44  bl 0x0124c4d0
0172fd48  ldr w8,[sp, #0x8]
0172fd4c  cmp w8,#0x1
0172fd50  b.lt 0x0172fd60
0172fd54  ldr x0,[sp]
0172fd58  mvn w1,w8
0172fd5c  bl 0x0124c4d0
0172fd60  ldp x29,x30,[sp, #0x30]
0172fd64  ldr x19,[sp, #0x20]
0172fd68  add sp,sp,#0x40
0172fd6c  ret
