// ===== case112-UnitSelectorResObject @ 0169eb70 =====
// existing function case112-UnitSelectorResObject
0169eb70  sub sp,sp,#0x40
0169eb74  stp x20,x19,[sp, #0x20]
0169eb78  stp x29,x30,[sp, #0x30]
0169eb7c  add x29,sp,#0x30
0169eb80  adrp x1,0x174a000
0169eb84  add x1,x1,#0x87c
0169eb88  mov x19,x0
0169eb8c  bl 0x0124ba40
0169eb90  adrp x1,0x575d000
0169eb94  add x1,x1,#0xa06
0169eb98  mov x0,x19
0169eb9c  str x19,[sp]
0169eba0  bl 0x01251aa0
0169eba4  mov w8,#0x1
0169eba8  str w8,[sp, #0x8]
0169ebac  mov x0,sp
0169ebb0  bl 0x0174aa04
0169ebb4  adrp x1,0x575f000
0169ebb8  adrp x3,0x736d000
0169ebbc  add x1,x1,#0x4f9
0169ebc0  add x3,x3,#0x101
0169ebc4  add x0,sp,#0x10
0169ebc8  mov x2,sp
0169ebcc  bl 0x0178d268
0169ebd0  ldr x0,[sp, #0x10]
0169ebd4  mov w1,#0x10
0169ebd8  bl 0x0124cba0
0169ebdc  adrp x8,0x178d000
0169ebe0  dup v0.2D,xzr
0169ebe4  add x8,x8,#0x260
0169ebe8  mov v0.D[0x0],x8
0169ebec  str q0,[x0]
0169ebf0  ldr x0,[sp, #0x10]
0169ebf4  adrp x1,0x178d000
0169ebf8  add x1,x1,#0x62c
0169ebfc  mov w2,#0x1
0169ec00  bl 0x0124ec90
0169ec04  ldr x0,[sp, #0x10]
0169ec08  mov w1,#0xffffffff
0169ec0c  bl 0x0124c0c0
0169ec10  ldr x19,[sp, #0x10]
0169ec14  orr w1,wzr,#0xfffffffb
0169ec18  mov w2,#0x6e7
0169ec1c  mov x0,x19
0169ec20  bl 0x0124a650
0169ec24  orr w1,wzr,#0xfffffffe
0169ec28  mov x0,x19
0169ec2c  bl 0x0124c0c0
0169ec30  orr w1,wzr,#0xfffffffe
0169ec34  mov x0,x19
0169ec38  bl 0x0124e920
0169ec3c  mov w20,w0
0169ec40  adrp x1,0x575f000
0169ec44  add x1,x1,#0x50f
0169ec48  mov x0,x19
0169ec4c  bl 0x0124f120
0169ec50  orr w1,wzr,#0xfffffffe
0169ec54  mov w2,#0x1
0169ec58  mov x0,x19
0169ec5c  bl 0x0124cfc0
0169ec60  mov x0,x19
0169ec64  mov w1,w20
0169ec68  bl 0x0124e060
0169ec6c  orr w1,wzr,#0xfffffffd
0169ec70  mov x0,x19
0169ec74  bl 0x0124c4d0
0169ec78  ldr x19,[sp, #0x10]
0169ec7c  orr w1,wzr,#0xfffffffd
0169ec80  mov w2,#0x6e7
0169ec84  mov x0,x19
0169ec88  bl 0x0124a650
0169ec8c  orr w1,wzr,#0xfffffffe
0169ec90  mov x0,x19
0169ec94  bl 0x0124c0c0
0169ec98  orr w1,wzr,#0xfffffffe
0169ec9c  mov x0,x19
0169eca0  bl 0x0124e920
0169eca4  mov w20,w0
0169eca8  adrp x1,0x575f000
0169ecac  add x1,x1,#0x50f
0169ecb0  mov x0,x19
0169ecb4  bl 0x0124f120
0169ecb8  orr w1,wzr,#0xfffffffe
0169ecbc  mov w2,#0x1
0169ecc0  mov x0,x19
0169ecc4  bl 0x0124cfc0
0169ecc8  mov x0,x19
0169eccc  mov w1,w20
0169ecd0  bl 0x0124e060
0169ecd4  orr w1,wzr,#0xfffffffd
0169ecd8  mov x0,x19
0169ecdc  bl 0x0124c4d0
0169ece0  ldr w8,[sp, #0x18]
0169ece4  ldr x0,[sp, #0x10]
0169ece8  sub w8,w8,#0x3
0169ecec  str w8,[sp, #0x18]
0169ecf0  orr w1,wzr,#0xfffffffc
0169ecf4  bl 0x0124c4d0
0169ecf8  ldr w8,[sp, #0x18]
0169ecfc  ldr x0,[sp, #0x10]
0169ed00  str wzr,[sp, #0x18]
0169ed04  cmp w8,#0x1
0169ed08  b.lt 0x0169ed2c
0169ed0c  mvn w1,w8
0169ed10  bl 0x0124c4d0
0169ed14  ldr w8,[sp, #0x18]
0169ed18  cmp w8,#0x1
0169ed1c  b.lt 0x0169ed2c
0169ed20  ldr x0,[sp, #0x10]
0169ed24  mvn w1,w8
0169ed28  bl 0x0124c4d0
0169ed2c  ldr w8,[sp, #0x8]
0169ed30  cmp w8,#0x1
0169ed34  b.lt 0x0169ed44
0169ed38  ldr x0,[sp]
0169ed3c  mvn w1,w8
0169ed40  bl 0x0124c4d0
0169ed44  ldp x29,x30,[sp, #0x30]
0169ed48  ldp x20,x19,[sp, #0x20]
0169ed4c  add sp,sp,#0x40
0169ed50  ret
