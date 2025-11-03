// ===== case593-MapConfigResObject @ 01705e40 =====
// existing function case593-MapConfigResObject
01705e40  sub sp,sp,#0x40
01705e44  stp x20,x19,[sp, #0x20]
01705e48  stp x29,x30,[sp, #0x30]
01705e4c  add x29,sp,#0x30
01705e50  adrp x1,0x174a000
01705e54  add x1,x1,#0x87c
01705e58  mov x19,x0
01705e5c  bl 0x0124ba40
01705e60  adrp x1,0x575d000
01705e64  add x1,x1,#0xa06
01705e68  mov x0,x19
01705e6c  str x19,[sp]
01705e70  bl 0x01251aa0
01705e74  mov w8,#0x1
01705e78  str w8,[sp, #0x8]
01705e7c  mov x0,sp
01705e80  bl 0x0174aa04
01705e84  adrp x1,0x576a000
01705e88  adrp x3,0x736d000
01705e8c  add x1,x1,#0x20e
01705e90  add x3,x3,#0x101
01705e94  add x0,sp,#0x10
01705e98  mov x2,sp
01705e9c  bl 0x018eea08
01705ea0  ldr x0,[sp, #0x10]
01705ea4  mov w1,#0x10
01705ea8  bl 0x0124cba0
01705eac  adrp x8,0x18ee000
01705eb0  dup v0.2D,xzr
01705eb4  add x8,x8,#0xa00
01705eb8  mov v0.D[0x0],x8
01705ebc  str q0,[x0]
01705ec0  ldr x0,[sp, #0x10]
01705ec4  adrp x1,0x18ee000
01705ec8  add x1,x1,#0xdcc
01705ecc  mov w2,#0x1
01705ed0  bl 0x0124ec90
01705ed4  ldr x0,[sp, #0x10]
01705ed8  mov w1,#0xffffffff
01705edc  bl 0x0124c0c0
01705ee0  ldr x19,[sp, #0x10]
01705ee4  orr w1,wzr,#0xfffffffb
01705ee8  mov w2,#0x6e7
01705eec  mov x0,x19
01705ef0  bl 0x0124a650
01705ef4  orr w1,wzr,#0xfffffffe
01705ef8  mov x0,x19
01705efc  bl 0x0124c0c0
01705f00  orr w1,wzr,#0xfffffffe
01705f04  mov x0,x19
01705f08  bl 0x0124e920
01705f0c  mov w20,w0
01705f10  adrp x1,0x576a000
01705f14  add x1,x1,#0x221
01705f18  mov x0,x19
01705f1c  bl 0x0124f120
01705f20  orr w1,wzr,#0xfffffffe
01705f24  mov w2,#0x1
01705f28  mov x0,x19
01705f2c  bl 0x0124cfc0
01705f30  mov x0,x19
01705f34  mov w1,w20
01705f38  bl 0x0124e060
01705f3c  orr w1,wzr,#0xfffffffd
01705f40  mov x0,x19
01705f44  bl 0x0124c4d0
01705f48  ldr x19,[sp, #0x10]
01705f4c  orr w1,wzr,#0xfffffffd
01705f50  mov w2,#0x6e7
01705f54  mov x0,x19
01705f58  bl 0x0124a650
01705f5c  orr w1,wzr,#0xfffffffe
01705f60  mov x0,x19
01705f64  bl 0x0124c0c0
01705f68  orr w1,wzr,#0xfffffffe
01705f6c  mov x0,x19
01705f70  bl 0x0124e920
01705f74  mov w20,w0
01705f78  adrp x1,0x576a000
01705f7c  add x1,x1,#0x221
01705f80  mov x0,x19
01705f84  bl 0x0124f120
01705f88  orr w1,wzr,#0xfffffffe
01705f8c  mov w2,#0x1
01705f90  mov x0,x19
01705f94  bl 0x0124cfc0
01705f98  mov x0,x19
01705f9c  mov w1,w20
01705fa0  bl 0x0124e060
01705fa4  orr w1,wzr,#0xfffffffd
01705fa8  mov x0,x19
01705fac  bl 0x0124c4d0
01705fb0  ldr w8,[sp, #0x18]
01705fb4  ldr x0,[sp, #0x10]
01705fb8  sub w8,w8,#0x3
01705fbc  str w8,[sp, #0x18]
01705fc0  orr w1,wzr,#0xfffffffc
01705fc4  bl 0x0124c4d0
01705fc8  ldr w8,[sp, #0x18]
01705fcc  ldr x0,[sp, #0x10]
01705fd0  str wzr,[sp, #0x18]
01705fd4  cmp w8,#0x1
01705fd8  b.lt 0x01705ffc
01705fdc  mvn w1,w8
01705fe0  bl 0x0124c4d0
01705fe4  ldr w8,[sp, #0x18]
01705fe8  cmp w8,#0x1
01705fec  b.lt 0x01705ffc
01705ff0  ldr x0,[sp, #0x10]
01705ff4  mvn w1,w8
01705ff8  bl 0x0124c4d0
01705ffc  ldr w8,[sp, #0x8]
01706000  cmp w8,#0x1
01706004  b.lt 0x01706014
01706008  ldr x0,[sp]
0170600c  mvn w1,w8
01706010  bl 0x0124c4d0
01706014  ldp x29,x30,[sp, #0x30]
01706018  ldp x20,x19,[sp, #0x20]
0170601c  add sp,sp,#0x40
01706020  ret
