// ===== case836-CustomInterruptInfo @ 0173bb84 =====
// existing function case836-CustomInterruptInfo
0173bb84  sub sp,sp,#0x50
0173bb88  str x21,[sp, #0x20]
0173bb8c  stp x20,x19,[sp, #0x30]
0173bb90  stp x29,x30,[sp, #0x40]
0173bb94  add x29,sp,#0x40
0173bb98  adrp x1,0x174a000
0173bb9c  add x1,x1,#0x87c
0173bba0  mov x19,x0
0173bba4  bl 0x0124ba40
0173bba8  adrp x1,0x575d000
0173bbac  add x1,x1,#0xa06
0173bbb0  mov x0,x19
0173bbb4  str x19,[sp]
0173bbb8  bl 0x01251aa0
0173bbbc  mov w8,#0x1
0173bbc0  str w8,[sp, #0x8]
0173bbc4  mov x0,sp
0173bbc8  bl 0x0174aa04
0173bbcc  adrp x1,0x5772000
0173bbd0  adrp x3,0x736d000
0173bbd4  add x1,x1,#0xca4
0173bbd8  add x3,x3,#0x101
0173bbdc  add x0,sp,#0x10
0173bbe0  mov x2,sp
0173bbe4  bl 0x019daf3c
0173bbe8  adrp x1,0x5772000
0173bbec  adrp x2,0x19da000
0173bbf0  adrp x4,0x19da000
0173bbf4  add x1,x1,#0xcb8
0173bbf8  add x2,x2,#0xf04
0173bbfc  add x4,x4,#0xf0c
0173bc00  add x0,sp,#0x10
0173bc04  mov x3,xzr
0173bc08  mov x5,xzr
0173bc0c  bl 0x019dad1c
0173bc10  mov x19,x0
0173bc14  ldr x0,[x19]
0173bc18  mov w1,#0x10
0173bc1c  bl 0x0124cba0
0173bc20  adrp x8,0x19da000
0173bc24  dup v0.2D,xzr
0173bc28  add x8,x8,#0xf14
0173bc2c  mov v0.D[0x0],x8
0173bc30  str q0,[x0]
0173bc34  ldr x0,[x19]
0173bc38  adrp x1,0x19db000
0173bc3c  add x1,x1,#0x520
0173bc40  mov w2,#0x1
0173bc44  bl 0x0124ec90
0173bc48  ldr x0,[x19]
0173bc4c  mov w1,#0xffffffff
0173bc50  bl 0x0124c0c0
0173bc54  ldr x20,[x19]
0173bc58  orr w1,wzr,#0xfffffffb
0173bc5c  mov w2,#0x6e7
0173bc60  mov x0,x20
0173bc64  bl 0x0124a650
0173bc68  orr w1,wzr,#0xfffffffe
0173bc6c  mov x0,x20
0173bc70  bl 0x0124c0c0
0173bc74  orr w1,wzr,#0xfffffffe
0173bc78  mov x0,x20
0173bc7c  bl 0x0124e920
0173bc80  mov w21,w0
0173bc84  adrp x1,0x5768000
0173bc88  add x1,x1,#0x6ca
0173bc8c  mov x0,x20
0173bc90  bl 0x0124f120
0173bc94  orr w1,wzr,#0xfffffffe
0173bc98  mov w2,#0x1
0173bc9c  mov x0,x20
0173bca0  bl 0x0124cfc0
0173bca4  mov x0,x20
0173bca8  mov w1,w21
0173bcac  bl 0x0124e060
0173bcb0  orr w1,wzr,#0xfffffffd
0173bcb4  mov x0,x20
0173bcb8  bl 0x0124c4d0
0173bcbc  ldr x20,[x19]
0173bcc0  orr w1,wzr,#0xfffffffd
0173bcc4  mov w2,#0x6e7
0173bcc8  mov x0,x20
0173bccc  bl 0x0124a650
0173bcd0  orr w1,wzr,#0xfffffffe
0173bcd4  mov x0,x20
0173bcd8  bl 0x0124c0c0
0173bcdc  orr w1,wzr,#0xfffffffe
0173bce0  mov x0,x20
0173bce4  bl 0x0124e920
0173bce8  mov w21,w0
0173bcec  adrp x1,0x5768000
0173bcf0  add x1,x1,#0x6ca
0173bcf4  mov x0,x20
0173bcf8  bl 0x0124f120
0173bcfc  orr w1,wzr,#0xfffffffe
0173bd00  mov w2,#0x1
0173bd04  mov x0,x20
0173bd08  bl 0x0124cfc0
0173bd0c  mov x0,x20
0173bd10  mov w1,w21
0173bd14  bl 0x0124e060
0173bd18  orr w1,wzr,#0xfffffffd
0173bd1c  mov x0,x20
0173bd20  bl 0x0124c4d0
0173bd24  adrp x1,0x5760000
0173bd28  adrp x2,0x19da000
0173bd2c  adrp x4,0x19da000
0173bd30  add x1,x1,#0xb65
0173bd34  add x2,x2,#0xf1c
0173bd38  add x4,x4,#0xf24
0173bd3c  mov x0,x19
0173bd40  mov x3,xzr
0173bd44  mov x5,xzr
0173bd48  bl 0x019dad1c
0173bd4c  adrp x1,0x5772000
0173bd50  adrp x2,0x19da000
0173bd54  adrp x4,0x19da000
0173bd58  add x1,x1,#0xcc3
0173bd5c  add x2,x2,#0xf2c
0173bd60  add x4,x4,#0xf34
0173bd64  mov x3,xzr
0173bd68  mov x5,xzr
0173bd6c  bl 0x019dad1c
0173bd70  mov x19,x0
0173bd74  ldr w8,[x19, #0x8]
0173bd78  ldr x0,[x19]
0173bd7c  sub w8,w8,#0x3
0173bd80  str w8,[x19, #0x8]
0173bd84  orr w1,wzr,#0xfffffffc
0173bd88  bl 0x0124c4d0
0173bd8c  ldr w8,[x19, #0x8]
0173bd90  ldr x0,[x19]
0173bd94  str wzr,[x19, #0x8]
0173bd98  cmp w8,#0x1
0173bd9c  b.lt 0x0173bda8
0173bda0  mvn w1,w8
0173bda4  bl 0x0124c4d0
0173bda8  ldr w8,[sp, #0x18]
0173bdac  cmp w8,#0x1
0173bdb0  b.lt 0x0173bdc0
0173bdb4  ldr x0,[sp, #0x10]
0173bdb8  mvn w1,w8
0173bdbc  bl 0x0124c4d0
0173bdc0  ldr w8,[sp, #0x8]
0173bdc4  cmp w8,#0x1
0173bdc8  b.lt 0x0173bdd8
0173bdcc  ldr x0,[sp]
0173bdd0  mvn w1,w8
0173bdd4  bl 0x0124c4d0
0173bdd8  ldp x29,x30,[sp, #0x40]
0173bddc  ldp x20,x19,[sp, #0x30]
0173bde0  ldr x21,[sp, #0x20]
0173bde4  add sp,sp,#0x50
0173bde8  ret
