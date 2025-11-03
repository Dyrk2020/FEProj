// ===== case558-ActorState @ 016feda4 =====
// existing function case558-ActorState
016feda4  sub sp,sp,#0x50
016feda8  str x21,[sp, #0x20]
016fedac  stp x20,x19,[sp, #0x30]
016fedb0  stp x29,x30,[sp, #0x40]
016fedb4  add x29,sp,#0x40
016fedb8  adrp x1,0x174a000
016fedbc  add x1,x1,#0x87c
016fedc0  mov x19,x0
016fedc4  bl 0x0124ba40
016fedc8  adrp x1,0x575d000
016fedcc  add x1,x1,#0xa06
016fedd0  mov x0,x19
016fedd4  str x19,[sp]
016fedd8  bl 0x01251aa0
016feddc  mov w8,#0x1
016fede0  str w8,[sp, #0x8]
016fede4  mov x0,sp
016fede8  bl 0x0174aa04
016fedec  adrp x1,0x5769000
016fedf0  adrp x3,0x736d000
016fedf4  add x1,x1,#0x5d2
016fedf8  add x3,x3,#0x101
016fedfc  add x0,sp,#0x10
016fee00  mov x2,sp
016fee04  bl 0x018cad48
016fee08  adrp x1,0x5766000
016fee0c  adrp x2,0x18ca000
016fee10  adrp x4,0x18ca000
016fee14  add x1,x1,#0x92b
016fee18  add x2,x2,#0xd1c
016fee1c  add x4,x4,#0xd24
016fee20  add x0,sp,#0x10
016fee24  mov x3,xzr
016fee28  mov x5,xzr
016fee2c  bl 0x018cab34
016fee30  mov x19,x0
016fee34  ldr x0,[x19]
016fee38  mov w1,#0x10
016fee3c  bl 0x0124cba0
016fee40  adrp x8,0x18ca000
016fee44  dup v0.2D,xzr
016fee48  add x8,x8,#0xd40
016fee4c  mov v0.D[0x0],x8
016fee50  str q0,[x0]
016fee54  ldr x0,[x19]
016fee58  adrp x1,0x18cb000
016fee5c  add x1,x1,#0x494
016fee60  mov w2,#0x1
016fee64  bl 0x0124ec90
016fee68  ldr x0,[x19]
016fee6c  mov w1,#0xffffffff
016fee70  bl 0x0124c0c0
016fee74  ldr x20,[x19]
016fee78  orr w1,wzr,#0xfffffffb
016fee7c  mov w2,#0x6e7
016fee80  mov x0,x20
016fee84  bl 0x0124a650
016fee88  orr w1,wzr,#0xfffffffe
016fee8c  mov x0,x20
016fee90  bl 0x0124c0c0
016fee94  orr w1,wzr,#0xfffffffe
016fee98  mov x0,x20
016fee9c  bl 0x0124e920
016feea0  mov w21,w0
016feea4  adrp x1,0x5762000
016feea8  add x1,x1,#0x1cd
016feeac  mov x0,x20
016feeb0  bl 0x0124f120
016feeb4  orr w1,wzr,#0xfffffffe
016feeb8  mov w2,#0x1
016feebc  mov x0,x20
016feec0  bl 0x0124cfc0
016feec4  mov x0,x20
016feec8  mov w1,w21
016feecc  bl 0x0124e060
016feed0  orr w1,wzr,#0xfffffffd
016feed4  mov x0,x20
016feed8  bl 0x0124c4d0
016feedc  ldr x20,[x19]
016feee0  orr w1,wzr,#0xfffffffd
016feee4  mov w2,#0x6e7
016feee8  mov x0,x20
016feeec  bl 0x0124a650
016feef0  orr w1,wzr,#0xfffffffe
016feef4  mov x0,x20
016feef8  bl 0x0124c0c0
016feefc  orr w1,wzr,#0xfffffffe
016fef00  mov x0,x20
016fef04  bl 0x0124e920
016fef08  mov w21,w0
016fef0c  adrp x1,0x5762000
016fef10  add x1,x1,#0x1cd
016fef14  mov x0,x20
016fef18  bl 0x0124f120
016fef1c  orr w1,wzr,#0xfffffffe
016fef20  mov w2,#0x1
016fef24  mov x0,x20
016fef28  bl 0x0124cfc0
016fef2c  mov x0,x20
016fef30  mov w1,w21
016fef34  bl 0x0124e060
016fef38  orr w1,wzr,#0xfffffffd
016fef3c  mov x0,x20
016fef40  bl 0x0124c4d0
016fef44  ldr w8,[x19, #0x8]
016fef48  ldr x0,[x19]
016fef4c  sub w8,w8,#0x3
016fef50  str w8,[x19, #0x8]
016fef54  orr w1,wzr,#0xfffffffc
016fef58  bl 0x0124c4d0
016fef5c  ldr w8,[x19, #0x8]
016fef60  ldr x0,[x19]
016fef64  str wzr,[x19, #0x8]
016fef68  cmp w8,#0x1
016fef6c  b.lt 0x016fef78
016fef70  mvn w1,w8
016fef74  bl 0x0124c4d0
016fef78  ldr w8,[sp, #0x18]
016fef7c  cmp w8,#0x1
016fef80  b.lt 0x016fef90
016fef84  ldr x0,[sp, #0x10]
016fef88  mvn w1,w8
016fef8c  bl 0x0124c4d0
016fef90  ldr w8,[sp, #0x8]
016fef94  cmp w8,#0x1
016fef98  b.lt 0x016fefa8
016fef9c  ldr x0,[sp]
016fefa0  mvn w1,w8
016fefa4  bl 0x0124c4d0
016fefa8  ldp x29,x30,[sp, #0x40]
016fefac  ldp x20,x19,[sp, #0x30]
016fefb0  ldr x21,[sp, #0x20]
016fefb4  add sp,sp,#0x50
016fefb8  ret
