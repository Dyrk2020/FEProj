// ===== case504-GamePlayComponent @ 016f4e74 =====
// existing function case504-GamePlayComponent
016f4e74  sub sp,sp,#0x50
016f4e78  str x21,[sp, #0x20]
016f4e7c  stp x20,x19,[sp, #0x30]
016f4e80  stp x29,x30,[sp, #0x40]
016f4e84  add x29,sp,#0x40
016f4e88  adrp x1,0x174a000
016f4e8c  add x1,x1,#0x87c
016f4e90  mov x19,x0
016f4e94  bl 0x0124ba40
016f4e98  adrp x1,0x575d000
016f4e9c  add x1,x1,#0xa06
016f4ea0  mov x0,x19
016f4ea4  str x19,[sp]
016f4ea8  bl 0x01251aa0
016f4eac  mov w8,#0x1
016f4eb0  str w8,[sp, #0x8]
016f4eb4  mov x0,sp
016f4eb8  bl 0x0174aa04
016f4ebc  adrp x1,0x5768000
016f4ec0  adrp x3,0x736d000
016f4ec4  add x1,x1,#0x2ab
016f4ec8  add x3,x3,#0x101
016f4ecc  add x0,sp,#0x10
016f4ed0  mov x2,sp
016f4ed4  bl 0x0189765c
016f4ed8  adrp x1,0x575d000
016f4edc  adrp x2,0x1897000
016f4ee0  adrp x4,0x1897000
016f4ee4  add x1,x1,#0xa00
016f4ee8  add x2,x2,#0x60c
016f4eec  add x4,x4,#0x614
016f4ef0  add x0,sp,#0x10
016f4ef4  mov x3,xzr
016f4ef8  mov x5,xzr
016f4efc  bl 0x01897424
016f4f00  mov x19,x0
016f4f04  ldr x0,[x19]
016f4f08  mov w1,#0x10
016f4f0c  bl 0x0124cba0
016f4f10  adrp x8,0x1897000
016f4f14  dup v0.2D,xzr
016f4f18  add x8,x8,#0x630
016f4f1c  mov v0.D[0x0],x8
016f4f20  str q0,[x0]
016f4f24  ldr x0,[x19]
016f4f28  adrp x1,0x1897000
016f4f2c  add x1,x1,#0xda8
016f4f30  mov w2,#0x1
016f4f34  bl 0x0124ec90
016f4f38  ldr x0,[x19]
016f4f3c  mov w1,#0xffffffff
016f4f40  bl 0x0124c0c0
016f4f44  ldr x20,[x19]
016f4f48  orr w1,wzr,#0xfffffffb
016f4f4c  mov w2,#0x6e7
016f4f50  mov x0,x20
016f4f54  bl 0x0124a650
016f4f58  orr w1,wzr,#0xfffffffe
016f4f5c  mov x0,x20
016f4f60  bl 0x0124c0c0
016f4f64  orr w1,wzr,#0xfffffffe
016f4f68  mov x0,x20
016f4f6c  bl 0x0124e920
016f4f70  mov w21,w0
016f4f74  adrp x1,0x5768000
016f4f78  add x1,x1,#0x2bd
016f4f7c  mov x0,x20
016f4f80  bl 0x0124f120
016f4f84  orr w1,wzr,#0xfffffffe
016f4f88  mov w2,#0x1
016f4f8c  mov x0,x20
016f4f90  bl 0x0124cfc0
016f4f94  mov x0,x20
016f4f98  mov w1,w21
016f4f9c  bl 0x0124e060
016f4fa0  orr w1,wzr,#0xfffffffd
016f4fa4  mov x0,x20
016f4fa8  bl 0x0124c4d0
016f4fac  ldr x20,[x19]
016f4fb0  orr w1,wzr,#0xfffffffd
016f4fb4  mov w2,#0x6e7
016f4fb8  mov x0,x20
016f4fbc  bl 0x0124a650
016f4fc0  orr w1,wzr,#0xfffffffe
016f4fc4  mov x0,x20
016f4fc8  bl 0x0124c0c0
016f4fcc  orr w1,wzr,#0xfffffffe
016f4fd0  mov x0,x20
016f4fd4  bl 0x0124e920
016f4fd8  mov w21,w0
016f4fdc  adrp x1,0x5768000
016f4fe0  add x1,x1,#0x2bd
016f4fe4  mov x0,x20
016f4fe8  bl 0x0124f120
016f4fec  orr w1,wzr,#0xfffffffe
016f4ff0  mov w2,#0x1
016f4ff4  mov x0,x20
016f4ff8  bl 0x0124cfc0
016f4ffc  mov x0,x20
016f5000  mov w1,w21
016f5004  bl 0x0124e060
016f5008  orr w1,wzr,#0xfffffffd
016f500c  mov x0,x20
016f5010  bl 0x0124c4d0
016f5014  adrp x1,0x5768000
016f5018  adrp x2,0x1897000
016f501c  adrp x4,0x1897000
016f5020  add x1,x1,#0x2cf
016f5024  add x2,x2,#0x638
016f5028  add x4,x4,#0x640
016f502c  mov x0,x19
016f5030  mov x3,xzr
016f5034  mov x5,xzr
016f5038  bl 0x01897424
016f503c  mov x19,x0
016f5040  ldr w8,[x19, #0x8]
016f5044  ldr x0,[x19]
016f5048  sub w8,w8,#0x3
016f504c  str w8,[x19, #0x8]
016f5050  orr w1,wzr,#0xfffffffc
016f5054  bl 0x0124c4d0
016f5058  ldr w8,[x19, #0x8]
016f505c  ldr x0,[x19]
016f5060  str wzr,[x19, #0x8]
016f5064  cmp w8,#0x1
016f5068  b.lt 0x016f5074
016f506c  mvn w1,w8
016f5070  bl 0x0124c4d0
016f5074  ldr w8,[sp, #0x18]
016f5078  cmp w8,#0x1
016f507c  b.lt 0x016f508c
016f5080  ldr x0,[sp, #0x10]
016f5084  mvn w1,w8
016f5088  bl 0x0124c4d0
016f508c  ldr w8,[sp, #0x8]
016f5090  cmp w8,#0x1
016f5094  b.lt 0x016f50a4
016f5098  ldr x0,[sp]
016f509c  mvn w1,w8
016f50a0  bl 0x0124c4d0
016f50a4  ldp x29,x30,[sp, #0x40]
016f50a8  ldp x20,x19,[sp, #0x30]
016f50ac  ldr x21,[sp, #0x20]
016f50b0  add sp,sp,#0x50
016f50b4  ret
