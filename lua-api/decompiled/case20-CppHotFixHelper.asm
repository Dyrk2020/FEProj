// ===== case20-CppHotFixHelper @ 0168fcec =====
// existing function case20-CppHotFixHelper
0168fcec  sub sp,sp,#0x40
0168fcf0  str x19,[sp, #0x20]
0168fcf4  stp x29,x30,[sp, #0x30]
0168fcf8  add x29,sp,#0x30
0168fcfc  adrp x1,0x174a000
0168fd00  add x1,x1,#0x87c
0168fd04  mov x19,x0
0168fd08  bl 0x0124ba40
0168fd0c  adrp x1,0x575d000
0168fd10  add x1,x1,#0xa06
0168fd14  mov x0,x19
0168fd18  str x19,[sp]
0168fd1c  bl 0x01251aa0
0168fd20  mov w8,#0x1
0168fd24  str w8,[sp, #0x8]
0168fd28  mov x0,sp
0168fd2c  bl 0x0174aa04
0168fd30  adrp x1,0x575d000
0168fd34  adrp x3,0x736d000
0168fd38  add x1,x1,#0xdba
0168fd3c  add x3,x3,#0x101
0168fd40  add x0,sp,#0x10
0168fd44  mov x2,sp
0168fd48  bl 0x01759020
0168fd4c  adrp x1,0x575d000
0168fd50  adrp x2,0x1758000
0168fd54  adrp x4,0x1758000
0168fd58  add x1,x1,#0xdca
0168fd5c  add x2,x2,#0xdac
0168fd60  add x4,x4,#0xdb4
0168fd64  add x0,sp,#0x10
0168fd68  mov x3,xzr
0168fd6c  mov x5,xzr
0168fd70  bl 0x01758bc4
0168fd74  adrp x1,0x575d000
0168fd78  adrp x2,0x1758000
0168fd7c  adrp x4,0x1759000
0168fd80  add x1,x1,#0xdd3
0168fd84  add x2,x2,#0xffc
0168fd88  add x4,x4,#0x4
0168fd8c  mov x3,xzr
0168fd90  mov x5,xzr
0168fd94  bl 0x01758e14
0168fd98  mov x19,x0
0168fd9c  ldr w8,[x19, #0x8]
0168fda0  ldr x0,[x19]
0168fda4  sub w8,w8,#0x3
0168fda8  str w8,[x19, #0x8]
0168fdac  orr w1,wzr,#0xfffffffc
0168fdb0  bl 0x0124c4d0
0168fdb4  ldr w8,[x19, #0x8]
0168fdb8  ldr x0,[x19]
0168fdbc  str wzr,[x19, #0x8]
0168fdc0  cmp w8,#0x1
0168fdc4  b.lt 0x0168fdd0
0168fdc8  mvn w1,w8
0168fdcc  bl 0x0124c4d0
0168fdd0  ldr w8,[sp, #0x18]
0168fdd4  cmp w8,#0x1
0168fdd8  b.lt 0x0168fde8
0168fddc  ldr x0,[sp, #0x10]
0168fde0  mvn w1,w8
0168fde4  bl 0x0124c4d0
0168fde8  ldr w8,[sp, #0x8]
0168fdec  cmp w8,#0x1
0168fdf0  b.lt 0x0168fe00
0168fdf4  ldr x0,[sp]
0168fdf8  mvn w1,w8
0168fdfc  bl 0x0124c4d0
0168fe00  ldp x29,x30,[sp, #0x30]
0168fe04  ldr x19,[sp, #0x20]
0168fe08  add sp,sp,#0x40
0168fe0c  ret
