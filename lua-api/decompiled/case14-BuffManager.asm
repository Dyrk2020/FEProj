// ===== case14-BuffManager @ 0168eadc =====
// existing function case14-BuffManager
0168eadc  sub sp,sp,#0x40
0168eae0  stp x20,x19,[sp, #0x20]
0168eae4  stp x29,x30,[sp, #0x30]
0168eae8  add x29,sp,#0x30
0168eaec  adrp x1,0x174a000
0168eaf0  add x1,x1,#0x87c
0168eaf4  mov x19,x0
0168eaf8  bl 0x0124ba40
0168eafc  adrp x1,0x575d000
0168eb00  add x1,x1,#0xa06
0168eb04  mov x0,x19
0168eb08  str x19,[sp]
0168eb0c  bl 0x01251aa0
0168eb10  mov w8,#0x1
0168eb14  str w8,[sp, #0x8]
0168eb18  mov x0,sp
0168eb1c  bl 0x0174aa04
0168eb20  adrp x1,0x575d000
0168eb24  adrp x3,0x736d000
0168eb28  add x1,x1,#0xd54
0168eb2c  add x3,x3,#0x101
0168eb30  add x0,sp,#0x10
0168eb34  mov x2,sp
0168eb38  bl 0x0175656c
0168eb3c  ldr x0,[sp, #0x10]
0168eb40  mov w1,#0x10
0168eb44  bl 0x0124cba0
0168eb48  adrp x8,0x1756000
0168eb4c  dup v0.2D,xzr
0168eb50  add x8,x8,#0x55c
0168eb54  mov v0.D[0x0],x8
0168eb58  str q0,[x0]
0168eb5c  ldr x0,[sp, #0x10]
0168eb60  adrp x1,0x1756000
0168eb64  add x1,x1,#0x930
0168eb68  mov w2,#0x1
0168eb6c  bl 0x0124ec90
0168eb70  ldr x0,[sp, #0x10]
0168eb74  mov w1,#0xffffffff
0168eb78  bl 0x0124c0c0
0168eb7c  ldr x19,[sp, #0x10]
0168eb80  orr w1,wzr,#0xfffffffb
0168eb84  mov w2,#0x6e7
0168eb88  mov x0,x19
0168eb8c  bl 0x0124a650
0168eb90  orr w1,wzr,#0xfffffffe
0168eb94  mov x0,x19
0168eb98  bl 0x0124c0c0
0168eb9c  orr w1,wzr,#0xfffffffe
0168eba0  mov x0,x19
0168eba4  bl 0x0124e920
0168eba8  mov w20,w0
0168ebac  adrp x1,0x5762000
0168ebb0  add x1,x1,#0x1cd
0168ebb4  mov x0,x19
0168ebb8  bl 0x0124f120
0168ebbc  orr w1,wzr,#0xfffffffe
0168ebc0  mov w2,#0x1
0168ebc4  mov x0,x19
0168ebc8  bl 0x0124cfc0
0168ebcc  mov x0,x19
0168ebd0  mov w1,w20
0168ebd4  bl 0x0124e060
0168ebd8  orr w1,wzr,#0xfffffffd
0168ebdc  mov x0,x19
0168ebe0  bl 0x0124c4d0
0168ebe4  ldr x19,[sp, #0x10]
0168ebe8  orr w1,wzr,#0xfffffffd
0168ebec  mov w2,#0x6e7
0168ebf0  mov x0,x19
0168ebf4  bl 0x0124a650
0168ebf8  orr w1,wzr,#0xfffffffe
0168ebfc  mov x0,x19
0168ec00  bl 0x0124c0c0
0168ec04  orr w1,wzr,#0xfffffffe
0168ec08  mov x0,x19
0168ec0c  bl 0x0124e920
0168ec10  mov w20,w0
0168ec14  adrp x1,0x5762000
0168ec18  add x1,x1,#0x1cd
0168ec1c  mov x0,x19
0168ec20  bl 0x0124f120
0168ec24  orr w1,wzr,#0xfffffffe
0168ec28  mov w2,#0x1
0168ec2c  mov x0,x19
0168ec30  bl 0x0124cfc0
0168ec34  mov x0,x19
0168ec38  mov w1,w20
0168ec3c  bl 0x0124e060
0168ec40  orr w1,wzr,#0xfffffffd
0168ec44  mov x0,x19
0168ec48  bl 0x0124c4d0
0168ec4c  ldr x0,[sp, #0x10]
0168ec50  mov w1,#0x10
0168ec54  bl 0x0124cba0
0168ec58  adrp x8,0x1756000
0168ec5c  dup v0.2D,xzr
0168ec60  add x8,x8,#0x564
0168ec64  mov v0.D[0x0],x8
0168ec68  str q0,[x0]
0168ec6c  ldr x0,[sp, #0x10]
0168ec70  adrp x1,0x1756000
0168ec74  add x1,x1,#0xa54
0168ec78  mov w2,#0x1
0168ec7c  bl 0x0124ec90
0168ec80  ldr x0,[sp, #0x10]
0168ec84  mov w1,#0xffffffff
0168ec88  bl 0x0124c0c0
0168ec8c  ldr x19,[sp, #0x10]
0168ec90  orr w1,wzr,#0xfffffffb
0168ec94  mov w2,#0x6e7
0168ec98  mov x0,x19
0168ec9c  bl 0x0124a650
0168eca0  orr w1,wzr,#0xfffffffe
0168eca4  mov x0,x19
0168eca8  bl 0x0124c0c0
0168ecac  orr w1,wzr,#0xfffffffe
0168ecb0  mov x0,x19
0168ecb4  bl 0x0124e920
0168ecb8  mov w20,w0
0168ecbc  adrp x1,0x575d000
0168ecc0  add x1,x1,#0xd60
0168ecc4  mov x0,x19
0168ecc8  bl 0x0124f120
0168eccc  orr w1,wzr,#0xfffffffe
0168ecd0  mov w2,#0x1
0168ecd4  mov x0,x19
0168ecd8  bl 0x0124cfc0
0168ecdc  mov x0,x19
0168ece0  mov w1,w20
0168ece4  bl 0x0124e060
0168ece8  orr w1,wzr,#0xfffffffd
0168ecec  mov x0,x19
0168ecf0  bl 0x0124c4d0
0168ecf4  ldr x19,[sp, #0x10]
0168ecf8  orr w1,wzr,#0xfffffffd
0168ecfc  mov w2,#0x6e7
0168ed00  mov x0,x19
0168ed04  bl 0x0124a650
0168ed08  orr w1,wzr,#0xfffffffe
0168ed0c  mov x0,x19
0168ed10  bl 0x0124c0c0
0168ed14  orr w1,wzr,#0xfffffffe
0168ed18  mov x0,x19
0168ed1c  bl 0x0124e920
0168ed20  mov w20,w0
0168ed24  adrp x1,0x575d000
0168ed28  add x1,x1,#0xd60
0168ed2c  mov x0,x19
0168ed30  bl 0x0124f120
0168ed34  orr w1,wzr,#0xfffffffe
0168ed38  mov w2,#0x1
0168ed3c  mov x0,x19
0168ed40  bl 0x0124cfc0
0168ed44  mov x0,x19
0168ed48  mov w1,w20
0168ed4c  bl 0x0124e060
0168ed50  orr w1,wzr,#0xfffffffd
0168ed54  mov x0,x19
0168ed58  bl 0x0124c4d0
0168ed5c  ldr w8,[sp, #0x18]
0168ed60  ldr x0,[sp, #0x10]
0168ed64  sub w8,w8,#0x3
0168ed68  str w8,[sp, #0x18]
0168ed6c  orr w1,wzr,#0xfffffffc
0168ed70  bl 0x0124c4d0
0168ed74  ldr w8,[sp, #0x18]
0168ed78  ldr x0,[sp, #0x10]
0168ed7c  str wzr,[sp, #0x18]
0168ed80  cmp w8,#0x1
0168ed84  b.lt 0x0168eda8
0168ed88  mvn w1,w8
0168ed8c  bl 0x0124c4d0
0168ed90  ldr w8,[sp, #0x18]
0168ed94  cmp w8,#0x1
0168ed98  b.lt 0x0168eda8
0168ed9c  ldr x0,[sp, #0x10]
0168eda0  mvn w1,w8
0168eda4  bl 0x0124c4d0
0168eda8  ldr w8,[sp, #0x8]
0168edac  cmp w8,#0x1
0168edb0  b.lt 0x0168edc0
0168edb4  ldr x0,[sp]
0168edb8  mvn w1,w8
0168edbc  bl 0x0124c4d0
0168edc0  ldp x29,x30,[sp, #0x30]
0168edc4  ldp x20,x19,[sp, #0x20]
0168edc8  add sp,sp,#0x40
0168edcc  ret
