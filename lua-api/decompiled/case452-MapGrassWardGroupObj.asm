// ===== case452-MapGrassWardGroupObj @ 016e9ee8 =====
// existing function case452-MapGrassWardGroupObj
016e9ee8  sub sp,sp,#0x40
016e9eec  stp x20,x19,[sp, #0x20]
016e9ef0  stp x29,x30,[sp, #0x30]
016e9ef4  add x29,sp,#0x30
016e9ef8  adrp x1,0x174a000
016e9efc  add x1,x1,#0x87c
016e9f00  mov x19,x0
016e9f04  bl 0x0124ba40
016e9f08  adrp x1,0x575d000
016e9f0c  add x1,x1,#0xa06
016e9f10  mov x0,x19
016e9f14  str x19,[sp]
016e9f18  bl 0x01251aa0
016e9f1c  mov w8,#0x1
016e9f20  str w8,[sp, #0x8]
016e9f24  mov x0,sp
016e9f28  bl 0x0174aa04
016e9f2c  adrp x1,0x5766000
016e9f30  adrp x3,0x736d000
016e9f34  add x1,x1,#0xa98
016e9f38  add x3,x3,#0x101
016e9f3c  add x0,sp,#0x10
016e9f40  mov x2,sp
016e9f44  bl 0x0186dff4
016e9f48  ldr x0,[sp, #0x10]
016e9f4c  mov w1,#0x10
016e9f50  bl 0x0124cba0
016e9f54  adrp x8,0x186d000
016e9f58  dup v0.2D,xzr
016e9f5c  add x8,x8,#0xfec
016e9f60  mov v0.D[0x0],x8
016e9f64  str q0,[x0]
016e9f68  ldr x0,[sp, #0x10]
016e9f6c  adrp x1,0x186e000
016e9f70  add x1,x1,#0x3b8
016e9f74  mov w2,#0x1
016e9f78  bl 0x0124ec90
016e9f7c  ldr x0,[sp, #0x10]
016e9f80  mov w1,#0xffffffff
016e9f84  bl 0x0124c0c0
016e9f88  ldr x19,[sp, #0x10]
016e9f8c  orr w1,wzr,#0xfffffffb
016e9f90  mov w2,#0x6e7
016e9f94  mov x0,x19
016e9f98  bl 0x0124a650
016e9f9c  orr w1,wzr,#0xfffffffe
016e9fa0  mov x0,x19
016e9fa4  bl 0x0124c0c0
016e9fa8  orr w1,wzr,#0xfffffffe
016e9fac  mov x0,x19
016e9fb0  bl 0x0124e920
016e9fb4  mov w20,w0
016e9fb8  adrp x1,0x5766000
016e9fbc  add x1,x1,#0xaad
016e9fc0  mov x0,x19
016e9fc4  bl 0x0124f120
016e9fc8  orr w1,wzr,#0xfffffffe
016e9fcc  mov w2,#0x1
016e9fd0  mov x0,x19
016e9fd4  bl 0x0124cfc0
016e9fd8  mov x0,x19
016e9fdc  mov w1,w20
016e9fe0  bl 0x0124e060
016e9fe4  orr w1,wzr,#0xfffffffd
016e9fe8  mov x0,x19
016e9fec  bl 0x0124c4d0
016e9ff0  ldr x19,[sp, #0x10]
016e9ff4  orr w1,wzr,#0xfffffffd
016e9ff8  mov w2,#0x6e7
016e9ffc  mov x0,x19
016ea000  bl 0x0124a650
016ea004  orr w1,wzr,#0xfffffffe
016ea008  mov x0,x19
016ea00c  bl 0x0124c0c0
016ea010  orr w1,wzr,#0xfffffffe
016ea014  mov x0,x19
016ea018  bl 0x0124e920
016ea01c  mov w20,w0
016ea020  adrp x1,0x5766000
016ea024  add x1,x1,#0xaad
016ea028  mov x0,x19
016ea02c  bl 0x0124f120
016ea030  orr w1,wzr,#0xfffffffe
016ea034  mov w2,#0x1
016ea038  mov x0,x19
016ea03c  bl 0x0124cfc0
016ea040  mov x0,x19
016ea044  mov w1,w20
016ea048  bl 0x0124e060
016ea04c  orr w1,wzr,#0xfffffffd
016ea050  mov x0,x19
016ea054  bl 0x0124c4d0
016ea058  ldr w8,[sp, #0x18]
016ea05c  ldr x0,[sp, #0x10]
016ea060  sub w8,w8,#0x3
016ea064  str w8,[sp, #0x18]
016ea068  orr w1,wzr,#0xfffffffc
016ea06c  bl 0x0124c4d0
016ea070  ldr w8,[sp, #0x18]
016ea074  ldr x0,[sp, #0x10]
016ea078  str wzr,[sp, #0x18]
016ea07c  cmp w8,#0x1
016ea080  b.lt 0x016ea0a4
016ea084  mvn w1,w8
016ea088  bl 0x0124c4d0
016ea08c  ldr w8,[sp, #0x18]
016ea090  cmp w8,#0x1
016ea094  b.lt 0x016ea0a4
016ea098  ldr x0,[sp, #0x10]
016ea09c  mvn w1,w8
016ea0a0  bl 0x0124c4d0
016ea0a4  ldr w8,[sp, #0x8]
016ea0a8  cmp w8,#0x1
016ea0ac  b.lt 0x016ea0bc
016ea0b0  ldr x0,[sp]
016ea0b4  mvn w1,w8
016ea0b8  bl 0x0124c4d0
016ea0bc  ldp x29,x30,[sp, #0x30]
016ea0c0  ldp x20,x19,[sp, #0x20]
016ea0c4  add sp,sp,#0x40
016ea0c8  ret
