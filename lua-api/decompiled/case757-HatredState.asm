// ===== case757-HatredState @ 0172bb14 =====
// existing function case757-HatredState
0172bb14  sub sp,sp,#0x50
0172bb18  str x21,[sp, #0x20]
0172bb1c  stp x20,x19,[sp, #0x30]
0172bb20  stp x29,x30,[sp, #0x40]
0172bb24  add x29,sp,#0x40
0172bb28  adrp x1,0x174a000
0172bb2c  add x1,x1,#0x87c
0172bb30  mov x19,x0
0172bb34  bl 0x0124ba40
0172bb38  adrp x1,0x575d000
0172bb3c  add x1,x1,#0xa06
0172bb40  mov x0,x19
0172bb44  str x19,[sp]
0172bb48  bl 0x01251aa0
0172bb4c  mov w8,#0x1
0172bb50  str w8,[sp, #0x8]
0172bb54  mov x0,sp
0172bb58  bl 0x0174aa04
0172bb5c  adrp x1,0x5770000
0172bb60  adrp x3,0x736d000
0172bb64  add x1,x1,#0xd5a
0172bb68  add x3,x3,#0x101
0172bb6c  add x0,sp,#0x10
0172bb70  mov x2,sp
0172bb74  bl 0x0198e7a4
0172bb78  adrp x1,0x5766000
0172bb7c  adrp x2,0x198e000
0172bb80  adrp x4,0x198e000
0172bb84  add x1,x1,#0x92b
0172bb88  add x2,x2,#0x778
0172bb8c  add x4,x4,#0x780
0172bb90  add x0,sp,#0x10
0172bb94  mov x3,xzr
0172bb98  mov x5,xzr
0172bb9c  bl 0x0198e590
0172bba0  mov x19,x0
0172bba4  ldr x0,[x19]
0172bba8  mov w1,#0x10
0172bbac  bl 0x0124cba0
0172bbb0  adrp x8,0x198e000
0172bbb4  dup v0.2D,xzr
0172bbb8  add x8,x8,#0x79c
0172bbbc  mov v0.D[0x0],x8
0172bbc0  str q0,[x0]
0172bbc4  ldr x0,[x19]
0172bbc8  adrp x1,0x198e000
0172bbcc  add x1,x1,#0xef0
0172bbd0  mov w2,#0x1
0172bbd4  bl 0x0124ec90
0172bbd8  ldr x0,[x19]
0172bbdc  mov w1,#0xffffffff
0172bbe0  bl 0x0124c0c0
0172bbe4  ldr x20,[x19]
0172bbe8  orr w1,wzr,#0xfffffffb
0172bbec  mov w2,#0x6e7
0172bbf0  mov x0,x20
0172bbf4  bl 0x0124a650
0172bbf8  orr w1,wzr,#0xfffffffe
0172bbfc  mov x0,x20
0172bc00  bl 0x0124c0c0
0172bc04  orr w1,wzr,#0xfffffffe
0172bc08  mov x0,x20
0172bc0c  bl 0x0124e920
0172bc10  mov w21,w0
0172bc14  adrp x1,0x5762000
0172bc18  add x1,x1,#0x1cd
0172bc1c  mov x0,x20
0172bc20  bl 0x0124f120
0172bc24  orr w1,wzr,#0xfffffffe
0172bc28  mov w2,#0x1
0172bc2c  mov x0,x20
0172bc30  bl 0x0124cfc0
0172bc34  mov x0,x20
0172bc38  mov w1,w21
0172bc3c  bl 0x0124e060
0172bc40  orr w1,wzr,#0xfffffffd
0172bc44  mov x0,x20
0172bc48  bl 0x0124c4d0
0172bc4c  ldr x20,[x19]
0172bc50  orr w1,wzr,#0xfffffffd
0172bc54  mov w2,#0x6e7
0172bc58  mov x0,x20
0172bc5c  bl 0x0124a650
0172bc60  orr w1,wzr,#0xfffffffe
0172bc64  mov x0,x20
0172bc68  bl 0x0124c0c0
0172bc6c  orr w1,wzr,#0xfffffffe
0172bc70  mov x0,x20
0172bc74  bl 0x0124e920
0172bc78  mov w21,w0
0172bc7c  adrp x1,0x5762000
0172bc80  add x1,x1,#0x1cd
0172bc84  mov x0,x20
0172bc88  bl 0x0124f120
0172bc8c  orr w1,wzr,#0xfffffffe
0172bc90  mov w2,#0x1
0172bc94  mov x0,x20
0172bc98  bl 0x0124cfc0
0172bc9c  mov x0,x20
0172bca0  mov w1,w21
0172bca4  bl 0x0124e060
0172bca8  orr w1,wzr,#0xfffffffd
0172bcac  mov x0,x20
0172bcb0  bl 0x0124c4d0
0172bcb4  ldr w8,[x19, #0x8]
0172bcb8  ldr x0,[x19]
0172bcbc  sub w8,w8,#0x3
0172bcc0  str w8,[x19, #0x8]
0172bcc4  orr w1,wzr,#0xfffffffc
0172bcc8  bl 0x0124c4d0
0172bccc  ldr w8,[x19, #0x8]
0172bcd0  ldr x0,[x19]
0172bcd4  str wzr,[x19, #0x8]
0172bcd8  cmp w8,#0x1
0172bcdc  b.lt 0x0172bce8
0172bce0  mvn w1,w8
0172bce4  bl 0x0124c4d0
0172bce8  ldr w8,[sp, #0x18]
0172bcec  cmp w8,#0x1
0172bcf0  b.lt 0x0172bd00
0172bcf4  ldr x0,[sp, #0x10]
0172bcf8  mvn w1,w8
0172bcfc  bl 0x0124c4d0
0172bd00  ldr w8,[sp, #0x8]
0172bd04  cmp w8,#0x1
0172bd08  b.lt 0x0172bd18
0172bd0c  ldr x0,[sp]
0172bd10  mvn w1,w8
0172bd14  bl 0x0124c4d0
0172bd18  ldp x29,x30,[sp, #0x40]
0172bd1c  ldp x20,x19,[sp, #0x30]
0172bd20  ldr x21,[sp, #0x20]
0172bd24  add sp,sp,#0x50
0172bd28  ret
