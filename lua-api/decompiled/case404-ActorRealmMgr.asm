// ===== case404-ActorRealmMgr @ 016e1e60 =====
// existing function case404-ActorRealmMgr
016e1e60  sub sp,sp,#0x40
016e1e64  str x19,[sp, #0x20]
016e1e68  stp x29,x30,[sp, #0x30]
016e1e6c  add x29,sp,#0x30
016e1e70  adrp x1,0x174a000
016e1e74  add x1,x1,#0x87c
016e1e78  mov x19,x0
016e1e7c  bl 0x0124ba40
016e1e80  adrp x1,0x575d000
016e1e84  add x1,x1,#0xa06
016e1e88  mov x0,x19
016e1e8c  str x19,[sp]
016e1e90  bl 0x01251aa0
016e1e94  mov w8,#0x1
016e1e98  str w8,[sp, #0x8]
016e1e9c  mov x0,sp
016e1ea0  bl 0x0174aa04
016e1ea4  adrp x1,0x5765000
016e1ea8  adrp x3,0x736d000
016e1eac  add x1,x1,#0xf52
016e1eb0  add x3,x3,#0x101
016e1eb4  add x0,sp,#0x10
016e1eb8  mov x2,sp
016e1ebc  bl 0x0184f2ec
016e1ec0  adrp x1,0x575b000
016e1ec4  adrp x2,0x184f000
016e1ec8  adrp x4,0x184f000
016e1ecc  add x1,x1,#0x37b
016e1ed0  add x2,x2,#0x5c
016e1ed4  add x4,x4,#0x64
016e1ed8  add x0,sp,#0x10
016e1edc  mov x3,xzr
016e1ee0  mov x5,xzr
016e1ee4  bl 0x0184ee74
016e1ee8  adrp x1,0x5765000
016e1eec  adrp x2,0x184f000
016e1ef0  adrp x4,0x184f000
016e1ef4  add x1,x1,#0xf60
016e1ef8  add x2,x2,#0x2dc
016e1efc  add x4,x4,#0x2e4
016e1f00  mov x3,xzr
016e1f04  mov x5,xzr
016e1f08  bl 0x0184f0f4
016e1f0c  mov x19,x0
016e1f10  ldr w8,[x19, #0x8]
016e1f14  ldr x0,[x19]
016e1f18  sub w8,w8,#0x3
016e1f1c  str w8,[x19, #0x8]
016e1f20  orr w1,wzr,#0xfffffffc
016e1f24  bl 0x0124c4d0
016e1f28  ldr w8,[x19, #0x8]
016e1f2c  ldr x0,[x19]
016e1f30  str wzr,[x19, #0x8]
016e1f34  cmp w8,#0x1
016e1f38  b.lt 0x016e1f44
016e1f3c  mvn w1,w8
016e1f40  bl 0x0124c4d0
016e1f44  ldr w8,[sp, #0x18]
016e1f48  cmp w8,#0x1
016e1f4c  b.lt 0x016e1f5c
016e1f50  ldr x0,[sp, #0x10]
016e1f54  mvn w1,w8
016e1f58  bl 0x0124c4d0
016e1f5c  ldr w8,[sp, #0x8]
016e1f60  cmp w8,#0x1
016e1f64  b.lt 0x016e1f74
016e1f68  ldr x0,[sp]
016e1f6c  mvn w1,w8
016e1f70  bl 0x0124c4d0
016e1f74  ldp x29,x30,[sp, #0x30]
016e1f78  ldr x19,[sp, #0x20]
016e1f7c  add sp,sp,#0x40
016e1f80  ret
