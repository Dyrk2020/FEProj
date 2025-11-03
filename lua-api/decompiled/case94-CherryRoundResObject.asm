// ===== case94-CherryRoundResObject @ 0169bd1c =====
// existing function case94-CherryRoundResObject
0169bd1c  sub sp,sp,#0x40
0169bd20  stp x20,x19,[sp, #0x20]
0169bd24  stp x29,x30,[sp, #0x30]
0169bd28  add x29,sp,#0x30
0169bd2c  adrp x1,0x174a000
0169bd30  add x1,x1,#0x87c
0169bd34  mov x19,x0
0169bd38  bl 0x0124ba40
0169bd3c  adrp x1,0x575d000
0169bd40  add x1,x1,#0xa06
0169bd44  mov x0,x19
0169bd48  str x19,[sp]
0169bd4c  bl 0x01251aa0
0169bd50  mov w8,#0x1
0169bd54  str w8,[sp, #0x8]
0169bd58  mov x0,sp
0169bd5c  bl 0x0174aa04
0169bd60  adrp x1,0x575f000
0169bd64  adrp x3,0x736d000
0169bd68  add x1,x1,#0x15e
0169bd6c  add x3,x3,#0x101
0169bd70  add x0,sp,#0x10
0169bd74  mov x2,sp
0169bd78  bl 0x01784ddc
0169bd7c  ldr x0,[sp, #0x10]
0169bd80  mov w1,#0x10
0169bd84  bl 0x0124cba0
0169bd88  adrp x8,0x1784000
0169bd8c  dup v0.2D,xzr
0169bd90  add x8,x8,#0xdd4
0169bd94  mov v0.D[0x0],x8
0169bd98  str q0,[x0]
0169bd9c  ldr x0,[sp, #0x10]
0169bda0  adrp x1,0x1785000
0169bda4  add x1,x1,#0x1a0
0169bda8  mov w2,#0x1
0169bdac  bl 0x0124ec90
0169bdb0  ldr x0,[sp, #0x10]
0169bdb4  mov w1,#0xffffffff
0169bdb8  bl 0x0124c0c0
0169bdbc  ldr x19,[sp, #0x10]
0169bdc0  orr w1,wzr,#0xfffffffb
0169bdc4  mov w2,#0x6e7
0169bdc8  mov x0,x19
0169bdcc  bl 0x0124a650
0169bdd0  orr w1,wzr,#0xfffffffe
0169bdd4  mov x0,x19
0169bdd8  bl 0x0124c0c0
0169bddc  orr w1,wzr,#0xfffffffe
0169bde0  mov x0,x19
0169bde4  bl 0x0124e920
0169bde8  mov w20,w0
0169bdec  adrp x1,0x575f000
0169bdf0  add x1,x1,#0x173
0169bdf4  mov x0,x19
0169bdf8  bl 0x0124f120
0169bdfc  orr w1,wzr,#0xfffffffe
0169be00  mov w2,#0x1
0169be04  mov x0,x19
0169be08  bl 0x0124cfc0
0169be0c  mov x0,x19
0169be10  mov w1,w20
0169be14  bl 0x0124e060
0169be18  orr w1,wzr,#0xfffffffd
0169be1c  mov x0,x19
0169be20  bl 0x0124c4d0
0169be24  ldr x19,[sp, #0x10]
0169be28  orr w1,wzr,#0xfffffffd
0169be2c  mov w2,#0x6e7
0169be30  mov x0,x19
0169be34  bl 0x0124a650
0169be38  orr w1,wzr,#0xfffffffe
0169be3c  mov x0,x19
0169be40  bl 0x0124c0c0
0169be44  orr w1,wzr,#0xfffffffe
0169be48  mov x0,x19
0169be4c  bl 0x0124e920
0169be50  mov w20,w0
0169be54  adrp x1,0x575f000
0169be58  add x1,x1,#0x173
0169be5c  mov x0,x19
0169be60  bl 0x0124f120
0169be64  orr w1,wzr,#0xfffffffe
0169be68  mov w2,#0x1
0169be6c  mov x0,x19
0169be70  bl 0x0124cfc0
0169be74  mov x0,x19
0169be78  mov w1,w20
0169be7c  bl 0x0124e060
0169be80  orr w1,wzr,#0xfffffffd
0169be84  mov x0,x19
0169be88  bl 0x0124c4d0
0169be8c  ldr w8,[sp, #0x18]
0169be90  ldr x0,[sp, #0x10]
0169be94  sub w8,w8,#0x3
0169be98  str w8,[sp, #0x18]
0169be9c  orr w1,wzr,#0xfffffffc
0169bea0  bl 0x0124c4d0
0169bea4  ldr w8,[sp, #0x18]
0169bea8  ldr x0,[sp, #0x10]
0169beac  str wzr,[sp, #0x18]
0169beb0  cmp w8,#0x1
0169beb4  b.lt 0x0169bed8
0169beb8  mvn w1,w8
0169bebc  bl 0x0124c4d0
0169bec0  ldr w8,[sp, #0x18]
0169bec4  cmp w8,#0x1
0169bec8  b.lt 0x0169bed8
0169becc  ldr x0,[sp, #0x10]
0169bed0  mvn w1,w8
0169bed4  bl 0x0124c4d0
0169bed8  ldr w8,[sp, #0x8]
0169bedc  cmp w8,#0x1
0169bee0  b.lt 0x0169bef0
0169bee4  ldr x0,[sp]
0169bee8  mvn w1,w8
0169beec  bl 0x0124c4d0
0169bef0  ldp x29,x30,[sp, #0x30]
0169bef4  ldp x20,x19,[sp, #0x20]
0169bef8  add sp,sp,#0x40
0169befc  ret
