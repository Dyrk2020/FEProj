// ===== case100-BattleShopReplaceResObject @ 0169cb3c =====
// existing function case100-BattleShopReplaceResObject
0169cb3c  sub sp,sp,#0x50
0169cb40  str x21,[sp, #0x20]
0169cb44  stp x20,x19,[sp, #0x30]
0169cb48  stp x29,x30,[sp, #0x40]
0169cb4c  add x29,sp,#0x40
0169cb50  adrp x1,0x174a000
0169cb54  add x1,x1,#0x87c
0169cb58  mov x19,x0
0169cb5c  bl 0x0124ba40
0169cb60  adrp x1,0x575d000
0169cb64  add x1,x1,#0xa06
0169cb68  mov x0,x19
0169cb6c  str x19,[sp]
0169cb70  bl 0x01251aa0
0169cb74  mov w8,#0x1
0169cb78  str w8,[sp, #0x8]
0169cb7c  mov x0,sp
0169cb80  bl 0x0174aa04
0169cb84  adrp x1,0x575f000
0169cb88  adrp x3,0x736d000
0169cb8c  add x1,x1,#0x287
0169cb90  add x3,x3,#0x101
0169cb94  add x0,sp,#0x10
0169cb98  mov x2,sp
0169cb9c  bl 0x01787d3c
0169cba0  adrp x1,0x575f000
0169cba4  adrp x2,0x1787000
0169cba8  adrp x4,0x1787000
0169cbac  add x1,x1,#0x2a2
0169cbb0  add x2,x2,#0xd24
0169cbb4  add x4,x4,#0xd2c
0169cbb8  add x0,sp,#0x10
0169cbbc  mov x3,xzr
0169cbc0  mov x5,xzr
0169cbc4  bl 0x01787b3c
0169cbc8  mov x19,x0
0169cbcc  ldr x0,[x19]
0169cbd0  mov w1,#0x10
0169cbd4  bl 0x0124cba0
0169cbd8  adrp x8,0x1787000
0169cbdc  dup v0.2D,xzr
0169cbe0  add x8,x8,#0xd34
0169cbe4  mov v0.D[0x0],x8
0169cbe8  str q0,[x0]
0169cbec  ldr x0,[x19]
0169cbf0  adrp x1,0x1788000
0169cbf4  add x1,x1,#0x320
0169cbf8  mov w2,#0x1
0169cbfc  bl 0x0124ec90
0169cc00  ldr x0,[x19]
0169cc04  mov w1,#0xffffffff
0169cc08  bl 0x0124c0c0
0169cc0c  ldr x20,[x19]
0169cc10  orr w1,wzr,#0xfffffffb
0169cc14  mov w2,#0x6e7
0169cc18  mov x0,x20
0169cc1c  bl 0x0124a650
0169cc20  orr w1,wzr,#0xfffffffe
0169cc24  mov x0,x20
0169cc28  bl 0x0124c0c0
0169cc2c  orr w1,wzr,#0xfffffffe
0169cc30  mov x0,x20
0169cc34  bl 0x0124e920
0169cc38  mov w21,w0
0169cc3c  adrp x1,0x575f000
0169cc40  add x1,x1,#0x2b0
0169cc44  mov x0,x20
0169cc48  bl 0x0124f120
0169cc4c  orr w1,wzr,#0xfffffffe
0169cc50  mov w2,#0x1
0169cc54  mov x0,x20
0169cc58  bl 0x0124cfc0
0169cc5c  mov x0,x20
0169cc60  mov w1,w21
0169cc64  bl 0x0124e060
0169cc68  orr w1,wzr,#0xfffffffd
0169cc6c  mov x0,x20
0169cc70  bl 0x0124c4d0
0169cc74  ldr x20,[x19]
0169cc78  orr w1,wzr,#0xfffffffd
0169cc7c  mov w2,#0x6e7
0169cc80  mov x0,x20
0169cc84  bl 0x0124a650
0169cc88  orr w1,wzr,#0xfffffffe
0169cc8c  mov x0,x20
0169cc90  bl 0x0124c0c0
0169cc94  orr w1,wzr,#0xfffffffe
0169cc98  mov x0,x20
0169cc9c  bl 0x0124e920
0169cca0  mov w21,w0
0169cca4  adrp x1,0x575f000
0169cca8  add x1,x1,#0x2b0
0169ccac  mov x0,x20
0169ccb0  bl 0x0124f120
0169ccb4  orr w1,wzr,#0xfffffffe
0169ccb8  mov w2,#0x1
0169ccbc  mov x0,x20
0169ccc0  bl 0x0124cfc0
0169ccc4  mov x0,x20
0169ccc8  mov w1,w21
0169cccc  bl 0x0124e060
0169ccd0  orr w1,wzr,#0xfffffffd
0169ccd4  mov x0,x20
0169ccd8  bl 0x0124c4d0
0169ccdc  ldr w8,[x19, #0x8]
0169cce0  ldr x0,[x19]
0169cce4  sub w8,w8,#0x3
0169cce8  str w8,[x19, #0x8]
0169ccec  orr w1,wzr,#0xfffffffc
0169ccf0  bl 0x0124c4d0
0169ccf4  ldr w8,[x19, #0x8]
0169ccf8  ldr x0,[x19]
0169ccfc  str wzr,[x19, #0x8]
0169cd00  cmp w8,#0x1
0169cd04  b.lt 0x0169cd10
0169cd08  mvn w1,w8
0169cd0c  bl 0x0124c4d0
0169cd10  ldr w8,[sp, #0x18]
0169cd14  cmp w8,#0x1
0169cd18  b.lt 0x0169cd28
0169cd1c  ldr x0,[sp, #0x10]
0169cd20  mvn w1,w8
0169cd24  bl 0x0124c4d0
0169cd28  ldr w8,[sp, #0x8]
0169cd2c  cmp w8,#0x1
0169cd30  b.lt 0x0169cd40
0169cd34  ldr x0,[sp]
0169cd38  mvn w1,w8
0169cd3c  bl 0x0124c4d0
0169cd40  ldp x29,x30,[sp, #0x40]
0169cd44  ldp x20,x19,[sp, #0x30]
0169cd48  ldr x21,[sp, #0x20]
0169cd4c  add sp,sp,#0x50
0169cd50  ret
