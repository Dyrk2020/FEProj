// ===== case87-ChampionTagItem @ 0169a9f8 =====
// existing function case87-ChampionTagItem
0169a9f8  sub sp,sp,#0x40
0169a9fc  stp x20,x19,[sp, #0x20]
0169aa00  stp x29,x30,[sp, #0x30]
0169aa04  add x29,sp,#0x30
0169aa08  adrp x1,0x174a000
0169aa0c  add x1,x1,#0x87c
0169aa10  mov x19,x0
0169aa14  bl 0x0124ba40
0169aa18  adrp x1,0x575d000
0169aa1c  add x1,x1,#0xa06
0169aa20  mov x0,x19
0169aa24  str x19,[sp]
0169aa28  bl 0x01251aa0
0169aa2c  mov w8,#0x1
0169aa30  str w8,[sp, #0x8]
0169aa34  mov x0,sp
0169aa38  bl 0x0174aa04
0169aa3c  adrp x1,0x575f000
0169aa40  adrp x3,0x736d000
0169aa44  add x1,x1,#0x2d
0169aa48  add x3,x3,#0x101
0169aa4c  add x0,sp,#0x10
0169aa50  mov x2,sp
0169aa54  bl 0x01780fa0
0169aa58  ldr x0,[sp, #0x10]
0169aa5c  mov w1,#0x10
0169aa60  bl 0x0124cba0
0169aa64  adrp x8,0x1780000
0169aa68  dup v0.2D,xzr
0169aa6c  add x8,x8,#0xd90
0169aa70  mov v0.D[0x0],x8
0169aa74  str q0,[x0]
0169aa78  ldr x0,[sp, #0x10]
0169aa7c  adrp x1,0x1781000
0169aa80  add x1,x1,#0x364
0169aa84  mov w2,#0x1
0169aa88  bl 0x0124ec90
0169aa8c  ldr x0,[sp, #0x10]
0169aa90  mov w1,#0xffffffff
0169aa94  bl 0x0124c0c0
0169aa98  ldr x19,[sp, #0x10]
0169aa9c  orr w1,wzr,#0xfffffffb
0169aaa0  mov w2,#0x6e7
0169aaa4  mov x0,x19
0169aaa8  bl 0x0124a650
0169aaac  orr w1,wzr,#0xfffffffe
0169aab0  mov x0,x19
0169aab4  bl 0x0124c0c0
0169aab8  orr w1,wzr,#0xfffffffe
0169aabc  mov x0,x19
0169aac0  bl 0x0124e920
0169aac4  mov w20,w0
0169aac8  adrp x1,0x575e000
0169aacc  add x1,x1,#0xfb2
0169aad0  mov x0,x19
0169aad4  bl 0x0124f120
0169aad8  orr w1,wzr,#0xfffffffe
0169aadc  mov w2,#0x1
0169aae0  mov x0,x19
0169aae4  bl 0x0124cfc0
0169aae8  mov x0,x19
0169aaec  mov w1,w20
0169aaf0  bl 0x0124e060
0169aaf4  orr w1,wzr,#0xfffffffd
0169aaf8  mov x0,x19
0169aafc  bl 0x0124c4d0
0169ab00  ldr x19,[sp, #0x10]
0169ab04  orr w1,wzr,#0xfffffffd
0169ab08  mov w2,#0x6e7
0169ab0c  mov x0,x19
0169ab10  bl 0x0124a650
0169ab14  orr w1,wzr,#0xfffffffe
0169ab18  mov x0,x19
0169ab1c  bl 0x0124c0c0
0169ab20  orr w1,wzr,#0xfffffffe
0169ab24  mov x0,x19
0169ab28  bl 0x0124e920
0169ab2c  mov w20,w0
0169ab30  adrp x1,0x575e000
0169ab34  add x1,x1,#0xfb2
0169ab38  mov x0,x19
0169ab3c  bl 0x0124f120
0169ab40  orr w1,wzr,#0xfffffffe
0169ab44  mov w2,#0x1
0169ab48  mov x0,x19
0169ab4c  bl 0x0124cfc0
0169ab50  mov x0,x19
0169ab54  mov w1,w20
0169ab58  bl 0x0124e060
0169ab5c  orr w1,wzr,#0xfffffffd
0169ab60  mov x0,x19
0169ab64  bl 0x0124c4d0
0169ab68  adrp x1,0x575e000
0169ab6c  adrp x2,0x1780000
0169ab70  adrp x4,0x1780000
0169ab74  add x1,x1,#0xfc0
0169ab78  add x2,x2,#0xf80
0169ab7c  add x4,x4,#0xf88
0169ab80  add x0,sp,#0x10
0169ab84  mov x3,xzr
0169ab88  mov x5,xzr
0169ab8c  bl 0x01780d98
0169ab90  adrp x1,0x575e000
0169ab94  adrp x2,0x1780000
0169ab98  adrp x4,0x1780000
0169ab9c  add x1,x1,#0xfcc
0169aba0  add x2,x2,#0xf90
0169aba4  add x4,x4,#0xf98
0169aba8  mov x3,xzr
0169abac  mov x5,xzr
0169abb0  bl 0x01780d98
0169abb4  mov x19,x0
0169abb8  ldr w8,[x19, #0x8]
0169abbc  ldr x0,[x19]
0169abc0  sub w8,w8,#0x3
0169abc4  str w8,[x19, #0x8]
0169abc8  orr w1,wzr,#0xfffffffc
0169abcc  bl 0x0124c4d0
0169abd0  ldr w8,[x19, #0x8]
0169abd4  ldr x0,[x19]
0169abd8  str wzr,[x19, #0x8]
0169abdc  cmp w8,#0x1
0169abe0  b.lt 0x0169abec
0169abe4  mvn w1,w8
0169abe8  bl 0x0124c4d0
0169abec  ldr w8,[sp, #0x18]
0169abf0  cmp w8,#0x1
0169abf4  b.lt 0x0169ac04
0169abf8  ldr x0,[sp, #0x10]
0169abfc  mvn w1,w8
0169ac00  bl 0x0124c4d0
0169ac04  ldr w8,[sp, #0x8]
0169ac08  cmp w8,#0x1
0169ac0c  b.lt 0x0169ac1c
0169ac10  ldr x0,[sp]
0169ac14  mvn w1,w8
0169ac18  bl 0x0124c4d0
0169ac1c  ldp x29,x30,[sp, #0x30]
0169ac20  ldp x20,x19,[sp, #0x20]
0169ac24  add sp,sp,#0x40
0169ac28  ret
