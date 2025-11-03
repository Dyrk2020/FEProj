// ===== case76-MonsterBehaviorLevelAudioConfig @ 01698eb4 =====
// existing function case76-MonsterBehaviorLevelAudioConfig
01698eb4  sub sp,sp,#0x50
01698eb8  str x21,[sp, #0x20]
01698ebc  stp x20,x19,[sp, #0x30]
01698ec0  stp x29,x30,[sp, #0x40]
01698ec4  add x29,sp,#0x40
01698ec8  adrp x1,0x174a000
01698ecc  add x1,x1,#0x87c
01698ed0  mov x19,x0
01698ed4  bl 0x0124ba40
01698ed8  adrp x1,0x575d000
01698edc  add x1,x1,#0xa06
01698ee0  mov x0,x19
01698ee4  str x19,[sp]
01698ee8  bl 0x01251aa0
01698eec  mov w8,#0x1
01698ef0  str w8,[sp, #0x8]
01698ef4  mov x0,sp
01698ef8  bl 0x0174aa04
01698efc  adrp x1,0x575e000
01698f00  adrp x3,0x736d000
01698f04  add x1,x1,#0xddd
01698f08  add x3,x3,#0x101
01698f0c  add x0,sp,#0x10
01698f10  mov x2,sp
01698f14  bl 0x01779f8c
01698f18  adrp x1,0x575e000
01698f1c  adrp x2,0x1779000
01698f20  adrp x4,0x1779000
01698f24  add x1,x1,#0xdc7
01698f28  add x2,x2,#0xf64
01698f2c  add x4,x4,#0xf6c
01698f30  add x0,sp,#0x10
01698f34  mov x3,xzr
01698f38  mov x5,xzr
01698f3c  bl 0x01779d7c
01698f40  mov x19,x0
01698f44  ldr x0,[x19]
01698f48  mov w1,#0x10
01698f4c  bl 0x0124cba0
01698f50  adrp x8,0x1779000
01698f54  dup v0.2D,xzr
01698f58  add x8,x8,#0xf74
01698f5c  mov v0.D[0x0],x8
01698f60  str q0,[x0]
01698f64  ldr x0,[x19]
01698f68  adrp x1,0x177a000
01698f6c  add x1,x1,#0x570
01698f70  mov w2,#0x1
01698f74  bl 0x0124ec90
01698f78  ldr x0,[x19]
01698f7c  mov w1,#0xffffffff
01698f80  bl 0x0124c0c0
01698f84  ldr x20,[x19]
01698f88  orr w1,wzr,#0xfffffffb
01698f8c  mov w2,#0x6e7
01698f90  mov x0,x20
01698f94  bl 0x0124a650
01698f98  orr w1,wzr,#0xfffffffe
01698f9c  mov x0,x20
01698fa0  bl 0x0124c0c0
01698fa4  orr w1,wzr,#0xfffffffe
01698fa8  mov x0,x20
01698fac  bl 0x0124e920
01698fb0  mov w21,w0
01698fb4  adrp x1,0x575e000
01698fb8  add x1,x1,#0xdfd
01698fbc  mov x0,x20
01698fc0  bl 0x0124f120
01698fc4  orr w1,wzr,#0xfffffffe
01698fc8  mov w2,#0x1
01698fcc  mov x0,x20
01698fd0  bl 0x0124cfc0
01698fd4  mov x0,x20
01698fd8  mov w1,w21
01698fdc  bl 0x0124e060
01698fe0  orr w1,wzr,#0xfffffffd
01698fe4  mov x0,x20
01698fe8  bl 0x0124c4d0
01698fec  ldr x20,[x19]
01698ff0  orr w1,wzr,#0xfffffffd
01698ff4  mov w2,#0x6e7
01698ff8  mov x0,x20
01698ffc  bl 0x0124a650
01699000  orr w1,wzr,#0xfffffffe
01699004  mov x0,x20
01699008  bl 0x0124c0c0
0169900c  orr w1,wzr,#0xfffffffe
01699010  mov x0,x20
01699014  bl 0x0124e920
01699018  mov w21,w0
0169901c  adrp x1,0x575e000
01699020  add x1,x1,#0xdfd
01699024  mov x0,x20
01699028  bl 0x0124f120
0169902c  orr w1,wzr,#0xfffffffe
01699030  mov w2,#0x1
01699034  mov x0,x20
01699038  bl 0x0124cfc0
0169903c  mov x0,x20
01699040  mov w1,w21
01699044  bl 0x0124e060
01699048  orr w1,wzr,#0xfffffffd
0169904c  mov x0,x20
01699050  bl 0x0124c4d0
01699054  adrp x1,0x575e000
01699058  adrp x2,0x1779000
0169905c  adrp x4,0x1779000
01699060  add x1,x1,#0xe07
01699064  add x2,x2,#0xf7c
01699068  add x4,x4,#0xf84
0169906c  mov x0,x19
01699070  mov x3,xzr
01699074  mov x5,xzr
01699078  bl 0x01779d7c
0169907c  mov x19,x0
01699080  ldr w8,[x19, #0x8]
01699084  ldr x0,[x19]
01699088  sub w8,w8,#0x3
0169908c  str w8,[x19, #0x8]
01699090  orr w1,wzr,#0xfffffffc
01699094  bl 0x0124c4d0
01699098  ldr w8,[x19, #0x8]
0169909c  ldr x0,[x19]
016990a0  str wzr,[x19, #0x8]
016990a4  cmp w8,#0x1
016990a8  b.lt 0x016990b4
016990ac  mvn w1,w8
016990b0  bl 0x0124c4d0
016990b4  ldr w8,[sp, #0x18]
016990b8  cmp w8,#0x1
016990bc  b.lt 0x016990cc
016990c0  ldr x0,[sp, #0x10]
016990c4  mvn w1,w8
016990c8  bl 0x0124c4d0
016990cc  ldr w8,[sp, #0x8]
016990d0  cmp w8,#0x1
016990d4  b.lt 0x016990e4
016990d8  ldr x0,[sp]
016990dc  mvn w1,w8
016990e0  bl 0x0124c4d0
016990e4  ldp x29,x30,[sp, #0x40]
016990e8  ldp x20,x19,[sp, #0x30]
016990ec  ldr x21,[sp, #0x20]
016990f0  add sp,sp,#0x50
016990f4  ret
