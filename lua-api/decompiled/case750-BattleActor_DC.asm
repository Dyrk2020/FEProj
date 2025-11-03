// ===== case750-BattleActor_DC @ 0172aa20 =====
// existing function case750-BattleActor_DC
0172aa20  sub sp,sp,#0x40
0172aa24  stp x20,x19,[sp, #0x20]
0172aa28  stp x29,x30,[sp, #0x30]
0172aa2c  add x29,sp,#0x30
0172aa30  adrp x1,0x174a000
0172aa34  add x1,x1,#0x87c
0172aa38  mov x19,x0
0172aa3c  bl 0x0124ba40
0172aa40  adrp x1,0x575d000
0172aa44  add x1,x1,#0xa06
0172aa48  mov x0,x19
0172aa4c  str x19,[sp]
0172aa50  bl 0x01251aa0
0172aa54  mov w8,#0x1
0172aa58  str w8,[sp, #0x8]
0172aa5c  mov x0,sp
0172aa60  bl 0x0174aa04
0172aa64  adrp x1,0x5770000
0172aa68  adrp x3,0x736d000
0172aa6c  add x1,x1,#0xc47
0172aa70  add x3,x3,#0x101
0172aa74  add x0,sp,#0x10
0172aa78  mov x2,sp
0172aa7c  bl 0x0198a108
0172aa80  ldr x0,[sp, #0x10]
0172aa84  mov w1,#0x10
0172aa88  bl 0x0124cba0
0172aa8c  adrp x8,0x1989000
0172aa90  dup v0.2D,xzr
0172aa94  add x8,x8,#0xf08
0172aa98  mov v0.D[0x0],x8
0172aa9c  str q0,[x0]
0172aaa0  ldr x0,[sp, #0x10]
0172aaa4  adrp x1,0x198a000
0172aaa8  add x1,x1,#0x4cc
0172aaac  mov w2,#0x1
0172aab0  bl 0x0124ec90
0172aab4  ldr x0,[sp, #0x10]
0172aab8  mov w1,#0xffffffff
0172aabc  bl 0x0124c0c0
0172aac0  ldr x19,[sp, #0x10]
0172aac4  orr w1,wzr,#0xfffffffb
0172aac8  mov w2,#0x6e7
0172aacc  mov x0,x19
0172aad0  bl 0x0124a650
0172aad4  orr w1,wzr,#0xfffffffe
0172aad8  mov x0,x19
0172aadc  bl 0x0124c0c0
0172aae0  orr w1,wzr,#0xfffffffe
0172aae4  mov x0,x19
0172aae8  bl 0x0124e920
0172aaec  mov w20,w0
0172aaf0  adrp x1,0x59ae000
0172aaf4  add x1,x1,#0xf93
0172aaf8  mov x0,x19
0172aafc  bl 0x0124f120
0172ab00  orr w1,wzr,#0xfffffffe
0172ab04  mov w2,#0x1
0172ab08  mov x0,x19
0172ab0c  bl 0x0124cfc0
0172ab10  mov x0,x19
0172ab14  mov w1,w20
0172ab18  bl 0x0124e060
0172ab1c  orr w1,wzr,#0xfffffffd
0172ab20  mov x0,x19
0172ab24  bl 0x0124c4d0
0172ab28  ldr x19,[sp, #0x10]
0172ab2c  orr w1,wzr,#0xfffffffd
0172ab30  mov w2,#0x6e7
0172ab34  mov x0,x19
0172ab38  bl 0x0124a650
0172ab3c  orr w1,wzr,#0xfffffffe
0172ab40  mov x0,x19
0172ab44  bl 0x0124c0c0
0172ab48  orr w1,wzr,#0xfffffffe
0172ab4c  mov x0,x19
0172ab50  bl 0x0124e920
0172ab54  mov w20,w0
0172ab58  adrp x1,0x59ae000
0172ab5c  add x1,x1,#0xf93
0172ab60  mov x0,x19
0172ab64  bl 0x0124f120
0172ab68  orr w1,wzr,#0xfffffffe
0172ab6c  mov w2,#0x1
0172ab70  mov x0,x19
0172ab74  bl 0x0124cfc0
0172ab78  mov x0,x19
0172ab7c  mov w1,w20
0172ab80  bl 0x0124e060
0172ab84  orr w1,wzr,#0xfffffffd
0172ab88  mov x0,x19
0172ab8c  bl 0x0124c4d0
0172ab90  adrp x1,0x576f000
0172ab94  adrp x2,0x198a000
0172ab98  add x1,x1,#0x841
0172ab9c  add x2,x2,#0xf8
0172aba0  add x0,sp,#0x10
0172aba4  mov x3,xzr
0172aba8  mov x4,xzr
0172abac  mov x5,xzr
0172abb0  bl 0x01989f10
0172abb4  adrp x1,0x576f000
0172abb8  adrp x2,0x198a000
0172abbc  add x1,x1,#0x849
0172abc0  add x2,x2,#0x100
0172abc4  mov x3,xzr
0172abc8  mov x4,xzr
0172abcc  mov x5,xzr
0172abd0  bl 0x01989f10
0172abd4  mov x19,x0
0172abd8  ldr w8,[x19, #0x8]
0172abdc  ldr x0,[x19]
0172abe0  sub w8,w8,#0x3
0172abe4  str w8,[x19, #0x8]
0172abe8  orr w1,wzr,#0xfffffffc
0172abec  bl 0x0124c4d0
0172abf0  ldr w8,[x19, #0x8]
0172abf4  ldr x0,[x19]
0172abf8  str wzr,[x19, #0x8]
0172abfc  cmp w8,#0x1
0172ac00  b.lt 0x0172ac0c
0172ac04  mvn w1,w8
0172ac08  bl 0x0124c4d0
0172ac0c  ldr w8,[sp, #0x18]
0172ac10  cmp w8,#0x1
0172ac14  b.lt 0x0172ac24
0172ac18  ldr x0,[sp, #0x10]
0172ac1c  mvn w1,w8
0172ac20  bl 0x0124c4d0
0172ac24  ldr w8,[sp, #0x8]
0172ac28  cmp w8,#0x1
0172ac2c  b.lt 0x0172ac3c
0172ac30  ldr x0,[sp]
0172ac34  mvn w1,w8
0172ac38  bl 0x0124c4d0
0172ac3c  ldp x29,x30,[sp, #0x30]
0172ac40  ldp x20,x19,[sp, #0x20]
0172ac44  add sp,sp,#0x40
0172ac48  ret
