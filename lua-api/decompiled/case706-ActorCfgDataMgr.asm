// ===== case706-ActorCfgDataMgr @ 01721e90 =====
// existing function case706-ActorCfgDataMgr
01721e90  sub sp,sp,#0x40
01721e94  str x19,[sp, #0x20]
01721e98  stp x29,x30,[sp, #0x30]
01721e9c  add x29,sp,#0x30
01721ea0  adrp x1,0x174a000
01721ea4  add x1,x1,#0x87c
01721ea8  mov x19,x0
01721eac  bl 0x0124ba40
01721eb0  adrp x1,0x575d000
01721eb4  add x1,x1,#0xa06
01721eb8  mov x0,x19
01721ebc  str x19,[sp]
01721ec0  bl 0x01251aa0
01721ec4  mov w8,#0x1
01721ec8  str w8,[sp, #0x8]
01721ecc  mov x0,sp
01721ed0  bl 0x0174aa04
01721ed4  adrp x1,0x576f000
01721ed8  adrp x3,0x736d000
01721edc  add x1,x1,#0x812
01721ee0  add x3,x3,#0x101
01721ee4  add x0,sp,#0x10
01721ee8  mov x2,sp
01721eec  bl 0x01967c40
01721ef0  adrp x1,0x576f000
01721ef4  adrp x2,0x1967000
01721ef8  adrp x4,0x1967000
01721efc  add x1,x1,#0x822
01721f00  add x2,x2,#0x618
01721f04  add x4,x4,#0x620
01721f08  add x0,sp,#0x10
01721f0c  mov x3,xzr
01721f10  mov x5,xzr
01721f14  bl 0x01967430
01721f18  adrp x1,0x576f000
01721f1c  adrp x2,0x1967000
01721f20  adrp x4,0x1967000
01721f24  add x1,x1,#0x82f
01721f28  add x2,x2,#0x810
01721f2c  add x4,x4,#0x818
01721f30  mov x3,xzr
01721f34  mov x5,xzr
01721f38  bl 0x01967628
01721f3c  adrp x1,0x5769000
01721f40  adrp x2,0x1967000
01721f44  adrp x4,0x1967000
01721f48  add x1,x1,#0x1ed
01721f4c  add x2,x2,#0x820
01721f50  add x4,x4,#0x828
01721f54  mov x3,xzr
01721f58  mov x5,xzr
01721f5c  bl 0x01967430
01721f60  adrp x1,0x576f000
01721f64  adrp x2,0x1967000
01721f68  adrp x4,0x1967000
01721f6c  add x1,x1,#0x834
01721f70  add x2,x2,#0xa18
01721f74  add x4,x4,#0xa2c
01721f78  mov x3,xzr
01721f7c  mov x5,xzr
01721f80  bl 0x01967830
01721f84  adrp x1,0x576f000
01721f88  adrp x2,0x1967000
01721f8c  add x1,x1,#0x841
01721f90  add x2,x2,#0xc30
01721f94  mov x3,xzr
01721f98  mov x4,xzr
01721f9c  mov x5,xzr
01721fa0  bl 0x01967a48
01721fa4  adrp x1,0x576f000
01721fa8  adrp x2,0x1967000
01721fac  add x1,x1,#0x849
01721fb0  add x2,x2,#0xc38
01721fb4  mov x3,xzr
01721fb8  mov x4,xzr
01721fbc  mov x5,xzr
01721fc0  bl 0x01967a48
01721fc4  mov x19,x0
01721fc8  ldr w8,[x19, #0x8]
01721fcc  ldr x0,[x19]
01721fd0  sub w8,w8,#0x3
01721fd4  str w8,[x19, #0x8]
01721fd8  orr w1,wzr,#0xfffffffc
01721fdc  bl 0x0124c4d0
01721fe0  ldr w8,[x19, #0x8]
01721fe4  ldr x0,[x19]
01721fe8  str wzr,[x19, #0x8]
01721fec  cmp w8,#0x1
01721ff0  b.lt 0x01721ffc
01721ff4  mvn w1,w8
01721ff8  bl 0x0124c4d0
01721ffc  ldr w8,[sp, #0x18]
01722000  cmp w8,#0x1
01722004  b.lt 0x01722014
01722008  ldr x0,[sp, #0x10]
0172200c  mvn w1,w8
01722010  bl 0x0124c4d0
01722014  ldr w8,[sp, #0x8]
01722018  cmp w8,#0x1
0172201c  b.lt 0x0172202c
01722020  ldr x0,[sp]
01722024  mvn w1,w8
01722028  bl 0x0124c4d0
0172202c  ldp x29,x30,[sp, #0x30]
01722030  ldr x19,[sp, #0x20]
01722034  add sp,sp,#0x40
01722038  ret
