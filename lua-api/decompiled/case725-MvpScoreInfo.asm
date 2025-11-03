// ===== case725-MvpScoreInfo @ 01724dd8 =====
// existing function case725-MvpScoreInfo
01724dd8  sub sp,sp,#0x40
01724ddc  str x19,[sp, #0x20]
01724de0  stp x29,x30,[sp, #0x30]
01724de4  add x29,sp,#0x30
01724de8  adrp x1,0x174a000
01724dec  add x1,x1,#0x87c
01724df0  mov x19,x0
01724df4  bl 0x0124ba40
01724df8  adrp x1,0x575d000
01724dfc  add x1,x1,#0xa06
01724e00  mov x0,x19
01724e04  str x19,[sp]
01724e08  bl 0x01251aa0
01724e0c  mov w8,#0x1
01724e10  str w8,[sp, #0x8]
01724e14  mov x0,sp
01724e18  bl 0x0174aa04
01724e1c  adrp x1,0x5761000
01724e20  adrp x3,0x736d000
01724e24  add x1,x1,#0x5c5
01724e28  add x3,x3,#0x101
01724e2c  add x0,sp,#0x10
01724e30  mov x2,sp
01724e34  bl 0x01977234
01724e38  adrp x1,0x5761000
01724e3c  adrp x2,0x1977000
01724e40  adrp x4,0x1977000
01724e44  add x1,x1,#0x56a
01724e48  add x2,x2,#0x1c4
01724e4c  add x4,x4,#0x1cc
01724e50  add x0,sp,#0x10
01724e54  mov x3,xzr
01724e58  mov x5,xzr
01724e5c  bl 0x01976fdc
01724e60  adrp x1,0x5761000
01724e64  adrp x2,0x1977000
01724e68  adrp x4,0x1977000
01724e6c  add x1,x1,#0x57a
01724e70  add x2,x2,#0x1d4
01724e74  add x4,x4,#0x1dc
01724e78  mov x3,xzr
01724e7c  mov x5,xzr
01724e80  bl 0x01976fdc
01724e84  adrp x1,0x59ac000
01724e88  adrp x2,0x1977000
01724e8c  adrp x4,0x1977000
01724e90  add x1,x1,#0xb8f
01724e94  add x2,x2,#0x1e4
01724e98  add x4,x4,#0x1ec
01724e9c  mov x3,xzr
01724ea0  mov x5,xzr
01724ea4  bl 0x01976fdc
01724ea8  adrp x1,0x5761000
01724eac  adrp x2,0x1977000
01724eb0  adrp x4,0x1977000
01724eb4  add x1,x1,#0x5d9
01724eb8  add x2,x2,#0x1f4
01724ebc  add x4,x4,#0x1fc
01724ec0  mov x3,xzr
01724ec4  mov x5,xzr
01724ec8  bl 0x01976fdc
01724ecc  adrp x1,0x5761000
01724ed0  adrp x2,0x1977000
01724ed4  adrp x4,0x1977000
01724ed8  add x1,x1,#0x5e6
01724edc  add x2,x2,#0x204
01724ee0  add x4,x4,#0x20c
01724ee4  mov x3,xzr
01724ee8  mov x5,xzr
01724eec  bl 0x01976fdc
01724ef0  adrp x1,0x5761000
01724ef4  adrp x2,0x1977000
01724ef8  adrp x4,0x1977000
01724efc  add x1,x1,#0x5f5
01724f00  add x2,x2,#0x214
01724f04  add x4,x4,#0x21c
01724f08  mov x3,xzr
01724f0c  mov x5,xzr
01724f10  bl 0x01976fdc
01724f14  adrp x1,0x5761000
01724f18  adrp x2,0x1977000
01724f1c  adrp x4,0x1977000
01724f20  add x1,x1,#0x604
01724f24  add x2,x2,#0x224
01724f28  add x4,x4,#0x22c
01724f2c  mov x3,xzr
01724f30  mov x5,xzr
01724f34  bl 0x01976fdc
01724f38  mov x19,x0
01724f3c  ldr w8,[x19, #0x8]
01724f40  ldr x0,[x19]
01724f44  sub w8,w8,#0x3
01724f48  str w8,[x19, #0x8]
01724f4c  orr w1,wzr,#0xfffffffc
01724f50  bl 0x0124c4d0
01724f54  ldr w8,[x19, #0x8]
01724f58  ldr x0,[x19]
01724f5c  str wzr,[x19, #0x8]
01724f60  cmp w8,#0x1
01724f64  b.lt 0x01724f70
01724f68  mvn w1,w8
01724f6c  bl 0x0124c4d0
01724f70  ldr w8,[sp, #0x18]
01724f74  cmp w8,#0x1
01724f78  b.lt 0x01724f88
01724f7c  ldr x0,[sp, #0x10]
01724f80  mvn w1,w8
01724f84  bl 0x0124c4d0
01724f88  ldr w8,[sp, #0x8]
01724f8c  cmp w8,#0x1
01724f90  b.lt 0x01724fa0
01724f94  ldr x0,[sp]
01724f98  mvn w1,w8
01724f9c  bl 0x0124c4d0
01724fa0  ldp x29,x30,[sp, #0x30]
01724fa4  ldr x19,[sp, #0x20]
01724fa8  add sp,sp,#0x40
01724fac  ret
