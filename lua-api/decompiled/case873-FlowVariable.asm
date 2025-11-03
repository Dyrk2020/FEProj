// ===== case873-FlowVariable @ 01748eb0 =====
// existing function case873-FlowVariable
01748eb0  sub sp,sp,#0x40
01748eb4  stp x20,x19,[sp, #0x20]
01748eb8  stp x29,x30,[sp, #0x30]
01748ebc  add x29,sp,#0x30
01748ec0  adrp x1,0x174a000
01748ec4  add x1,x1,#0x87c
01748ec8  mov x19,x0
01748ecc  bl 0x0124ba40
01748ed0  adrp x1,0x575d000
01748ed4  add x1,x1,#0xa06
01748ed8  mov x0,x19
01748edc  str x19,[sp]
01748ee0  bl 0x01251aa0
01748ee4  mov w8,#0x1
01748ee8  str w8,[sp, #0x8]
01748eec  mov x0,sp
01748ef0  bl 0x0174aa04
01748ef4  adrp x1,0x5774000
01748ef8  adrp x3,0x736d000
01748efc  add x1,x1,#0x77
01748f00  add x3,x3,#0x101
01748f04  add x0,sp,#0x10
01748f08  mov x2,sp
01748f0c  bl 0x01a153d4
01748f10  ldr x0,[sp, #0x10]
01748f14  mov w1,#0x10
01748f18  bl 0x0124cba0
01748f1c  adrp x8,0x1a15000
01748f20  dup v0.2D,xzr
01748f24  add x8,x8,#0x3cc
01748f28  mov v0.D[0x0],x8
01748f2c  str q0,[x0]
01748f30  ldr x0,[sp, #0x10]
01748f34  adrp x1,0x1a15000
01748f38  add x1,x1,#0x798
01748f3c  mov w2,#0x1
01748f40  bl 0x0124ec90
01748f44  ldr x0,[sp, #0x10]
01748f48  mov w1,#0xffffffff
01748f4c  bl 0x0124c0c0
01748f50  ldr x19,[sp, #0x10]
01748f54  orr w1,wzr,#0xfffffffb
01748f58  mov w2,#0x6e7
01748f5c  mov x0,x19
01748f60  bl 0x0124a650
01748f64  orr w1,wzr,#0xfffffffe
01748f68  mov x0,x19
01748f6c  bl 0x0124c0c0
01748f70  orr w1,wzr,#0xfffffffe
01748f74  mov x0,x19
01748f78  bl 0x0124e920
01748f7c  mov w20,w0
01748f80  adrp x1,0x5774000
01748f84  add x1,x1,#0x84
01748f88  mov x0,x19
01748f8c  bl 0x0124f120
01748f90  orr w1,wzr,#0xfffffffe
01748f94  mov w2,#0x1
01748f98  mov x0,x19
01748f9c  bl 0x0124cfc0
01748fa0  mov x0,x19
01748fa4  mov w1,w20
01748fa8  bl 0x0124e060
01748fac  orr w1,wzr,#0xfffffffd
01748fb0  mov x0,x19
01748fb4  bl 0x0124c4d0
01748fb8  ldr x19,[sp, #0x10]
01748fbc  orr w1,wzr,#0xfffffffd
01748fc0  mov w2,#0x6e7
01748fc4  mov x0,x19
01748fc8  bl 0x0124a650
01748fcc  orr w1,wzr,#0xfffffffe
01748fd0  mov x0,x19
01748fd4  bl 0x0124c0c0
01748fd8  orr w1,wzr,#0xfffffffe
01748fdc  mov x0,x19
01748fe0  bl 0x0124e920
01748fe4  mov w20,w0
01748fe8  adrp x1,0x5774000
01748fec  add x1,x1,#0x84
01748ff0  mov x0,x19
01748ff4  bl 0x0124f120
01748ff8  orr w1,wzr,#0xfffffffe
01748ffc  mov w2,#0x1
01749000  mov x0,x19
01749004  bl 0x0124cfc0
01749008  mov x0,x19
0174900c  mov w1,w20
01749010  bl 0x0124e060
01749014  orr w1,wzr,#0xfffffffd
01749018  mov x0,x19
0174901c  bl 0x0124c4d0
01749020  ldr w8,[sp, #0x18]
01749024  ldr x0,[sp, #0x10]
01749028  sub w8,w8,#0x3
0174902c  str w8,[sp, #0x18]
01749030  orr w1,wzr,#0xfffffffc
01749034  bl 0x0124c4d0
01749038  ldr w8,[sp, #0x18]
0174903c  ldr x0,[sp, #0x10]
01749040  str wzr,[sp, #0x18]
01749044  cmp w8,#0x1
01749048  b.lt 0x0174906c
0174904c  mvn w1,w8
01749050  bl 0x0124c4d0
01749054  ldr w8,[sp, #0x18]
01749058  cmp w8,#0x1
0174905c  b.lt 0x0174906c
01749060  ldr x0,[sp, #0x10]
01749064  mvn w1,w8
01749068  bl 0x0124c4d0
0174906c  ldr w8,[sp, #0x8]
01749070  cmp w8,#0x1
01749074  b.lt 0x01749084
01749078  ldr x0,[sp]
0174907c  mvn w1,w8
01749080  bl 0x0124c4d0
01749084  ldp x29,x30,[sp, #0x30]
01749088  ldp x20,x19,[sp, #0x20]
0174908c  add sp,sp,#0x40
01749090  ret
