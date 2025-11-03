// ===== case772-BattleBlock @ 0172ea50 =====
// existing function case772-BattleBlock
0172ea50  sub sp,sp,#0x50
0172ea54  str x21,[sp, #0x20]
0172ea58  stp x20,x19,[sp, #0x30]
0172ea5c  stp x29,x30,[sp, #0x40]
0172ea60  add x29,sp,#0x40
0172ea64  adrp x1,0x174a000
0172ea68  add x1,x1,#0x87c
0172ea6c  mov x19,x0
0172ea70  bl 0x0124ba40
0172ea74  adrp x1,0x575d000
0172ea78  add x1,x1,#0xa06
0172ea7c  mov x0,x19
0172ea80  str x19,[sp]
0172ea84  bl 0x01251aa0
0172ea88  mov w8,#0x1
0172ea8c  str w8,[sp, #0x8]
0172ea90  mov x0,sp
0172ea94  bl 0x0174aa04
0172ea98  adrp x1,0x5771000
0172ea9c  adrp x3,0x736d000
0172eaa0  add x1,x1,#0x34d
0172eaa4  add x3,x3,#0x101
0172eaa8  add x0,sp,#0x10
0172eaac  mov x2,sp
0172eab0  bl 0x019a1044
0172eab4  adrp x1,0x5771000
0172eab8  adrp x2,0x19a0000
0172eabc  adrp x4,0x19a0000
0172eac0  add x1,x1,#0x359
0172eac4  add x2,x2,#0xd94
0172eac8  add x4,x4,#0xd9c
0172eacc  add x0,sp,#0x10
0172ead0  mov x3,xzr
0172ead4  mov x5,xzr
0172ead8  bl 0x019a0bac
0172eadc  mov x19,x0
0172eae0  ldr x0,[x19]
0172eae4  mov w1,#0x10
0172eae8  bl 0x0124cba0
0172eaec  adrp x8,0x19a0000
0172eaf0  dup v0.2D,xzr
0172eaf4  add x8,x8,#0xe34
0172eaf8  mov v0.D[0x0],x8
0172eafc  str q0,[x0]
0172eb00  ldr x0,[x19]
0172eb04  adrp x1,0x19a1000
0172eb08  add x1,x1,#0x628
0172eb0c  mov w2,#0x1
0172eb10  bl 0x0124ec90
0172eb14  ldr x0,[x19]
0172eb18  mov w1,#0xffffffff
0172eb1c  bl 0x0124c0c0
0172eb20  ldr x20,[x19]
0172eb24  orr w1,wzr,#0xfffffffb
0172eb28  mov w2,#0x6e7
0172eb2c  mov x0,x20
0172eb30  bl 0x0124a650
0172eb34  orr w1,wzr,#0xfffffffe
0172eb38  mov x0,x20
0172eb3c  bl 0x0124c0c0
0172eb40  orr w1,wzr,#0xfffffffe
0172eb44  mov x0,x20
0172eb48  bl 0x0124e920
0172eb4c  mov w21,w0
0172eb50  adrp x1,0x5771000
0172eb54  add x1,x1,#0x362
0172eb58  mov x0,x20
0172eb5c  bl 0x0124f120
0172eb60  orr w1,wzr,#0xfffffffe
0172eb64  mov w2,#0x1
0172eb68  mov x0,x20
0172eb6c  bl 0x0124cfc0
0172eb70  mov x0,x20
0172eb74  mov w1,w21
0172eb78  bl 0x0124e060
0172eb7c  orr w1,wzr,#0xfffffffd
0172eb80  mov x0,x20
0172eb84  bl 0x0124c4d0
0172eb88  ldr x20,[x19]
0172eb8c  orr w1,wzr,#0xfffffffd
0172eb90  mov w2,#0x6e7
0172eb94  mov x0,x20
0172eb98  bl 0x0124a650
0172eb9c  orr w1,wzr,#0xfffffffe
0172eba0  mov x0,x20
0172eba4  bl 0x0124c0c0
0172eba8  orr w1,wzr,#0xfffffffe
0172ebac  mov x0,x20
0172ebb0  bl 0x0124e920
0172ebb4  mov w21,w0
0172ebb8  adrp x1,0x5771000
0172ebbc  add x1,x1,#0x362
0172ebc0  mov x0,x20
0172ebc4  bl 0x0124f120
0172ebc8  orr w1,wzr,#0xfffffffe
0172ebcc  mov w2,#0x1
0172ebd0  mov x0,x20
0172ebd4  bl 0x0124cfc0
0172ebd8  mov x0,x20
0172ebdc  mov w1,w21
0172ebe0  bl 0x0124e060
0172ebe4  orr w1,wzr,#0xfffffffd
0172ebe8  mov x0,x20
0172ebec  bl 0x0124c4d0
0172ebf0  adrp x1,0x5771000
0172ebf4  adrp x2,0x19a1000
0172ebf8  adrp x4,0x19a1000
0172ebfc  add x1,x1,#0x371
0172ec00  add x2,x2,#0x24
0172ec04  add x4,x4,#0x2c
0172ec08  mov x0,x19
0172ec0c  mov x3,xzr
0172ec10  mov x5,xzr
0172ec14  bl 0x019a0e3c
0172ec18  adrp x1,0x5771000
0172ec1c  adrp x2,0x19a1000
0172ec20  adrp x4,0x19a1000
0172ec24  add x1,x1,#0x388
0172ec28  add x2,x2,#0x34
0172ec2c  add x4,x4,#0x3c
0172ec30  mov x3,xzr
0172ec34  mov x5,xzr
0172ec38  bl 0x019a0e3c
0172ec3c  mov x19,x0
0172ec40  ldr w8,[x19, #0x8]
0172ec44  ldr x0,[x19]
0172ec48  sub w8,w8,#0x3
0172ec4c  str w8,[x19, #0x8]
0172ec50  orr w1,wzr,#0xfffffffc
0172ec54  bl 0x0124c4d0
0172ec58  ldr w8,[x19, #0x8]
0172ec5c  ldr x0,[x19]
0172ec60  str wzr,[x19, #0x8]
0172ec64  cmp w8,#0x1
0172ec68  b.lt 0x0172ec74
0172ec6c  mvn w1,w8
0172ec70  bl 0x0124c4d0
0172ec74  ldr w8,[sp, #0x18]
0172ec78  cmp w8,#0x1
0172ec7c  b.lt 0x0172ec8c
0172ec80  ldr x0,[sp, #0x10]
0172ec84  mvn w1,w8
0172ec88  bl 0x0124c4d0
0172ec8c  ldr w8,[sp, #0x8]
0172ec90  cmp w8,#0x1
0172ec94  b.lt 0x0172eca4
0172ec98  ldr x0,[sp]
0172ec9c  mvn w1,w8
0172eca0  bl 0x0124c4d0
0172eca4  ldp x29,x30,[sp, #0x40]
0172eca8  ldp x20,x19,[sp, #0x30]
0172ecac  ldr x21,[sp, #0x20]
0172ecb0  add sp,sp,#0x50
0172ecb4  ret
