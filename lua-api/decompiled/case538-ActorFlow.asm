// ===== case538-ActorFlow @ 016fac28 =====
// existing function case538-ActorFlow
016fac28  sub sp,sp,#0x40
016fac2c  stp x20,x19,[sp, #0x20]
016fac30  stp x29,x30,[sp, #0x30]
016fac34  add x29,sp,#0x30
016fac38  adrp x1,0x174a000
016fac3c  add x1,x1,#0x87c
016fac40  mov x19,x0
016fac44  bl 0x0124ba40
016fac48  adrp x1,0x575d000
016fac4c  add x1,x1,#0xa06
016fac50  mov x0,x19
016fac54  str x19,[sp]
016fac58  bl 0x01251aa0
016fac5c  mov w8,#0x1
016fac60  str w8,[sp, #0x8]
016fac64  mov x0,sp
016fac68  bl 0x0174aa04
016fac6c  adrp x1,0x5769000
016fac70  adrp x3,0x736d000
016fac74  add x1,x1,#0x7a
016fac78  add x3,x3,#0x101
016fac7c  add x0,sp,#0x10
016fac80  mov x2,sp
016fac84  bl 0x018b8d08
016fac88  ldr x0,[sp, #0x10]
016fac8c  mov w1,#0x10
016fac90  bl 0x0124cba0
016fac94  adrp x8,0x18b8000
016fac98  dup v0.2D,xzr
016fac9c  add x8,x8,#0xb08
016faca0  mov v0.D[0x0],x8
016faca4  str q0,[x0]
016faca8  ldr x0,[sp, #0x10]
016facac  adrp x1,0x18b9000
016facb0  add x1,x1,#0xcc
016facb4  mov w2,#0x1
016facb8  bl 0x0124ec90
016facbc  ldr x0,[sp, #0x10]
016facc0  mov w1,#0xffffffff
016facc4  bl 0x0124c0c0
016facc8  ldr x19,[sp, #0x10]
016faccc  orr w1,wzr,#0xfffffffb
016facd0  mov w2,#0x6e7
016facd4  mov x0,x19
016facd8  bl 0x0124a650
016facdc  orr w1,wzr,#0xfffffffe
016face0  mov x0,x19
016face4  bl 0x0124c0c0
016face8  orr w1,wzr,#0xfffffffe
016facec  mov x0,x19
016facf0  bl 0x0124e920
016facf4  mov w20,w0
016facf8  adrp x1,0x575b000
016facfc  add x1,x1,#0x5c7
016fad00  mov x0,x19
016fad04  bl 0x0124f120
016fad08  orr w1,wzr,#0xfffffffe
016fad0c  mov w2,#0x1
016fad10  mov x0,x19
016fad14  bl 0x0124cfc0
016fad18  mov x0,x19
016fad1c  mov w1,w20
016fad20  bl 0x0124e060
016fad24  orr w1,wzr,#0xfffffffd
016fad28  mov x0,x19
016fad2c  bl 0x0124c4d0
016fad30  ldr x19,[sp, #0x10]
016fad34  orr w1,wzr,#0xfffffffd
016fad38  mov w2,#0x6e7
016fad3c  mov x0,x19
016fad40  bl 0x0124a650
016fad44  orr w1,wzr,#0xfffffffe
016fad48  mov x0,x19
016fad4c  bl 0x0124c0c0
016fad50  orr w1,wzr,#0xfffffffe
016fad54  mov x0,x19
016fad58  bl 0x0124e920
016fad5c  mov w20,w0
016fad60  adrp x1,0x575b000
016fad64  add x1,x1,#0x5c7
016fad68  mov x0,x19
016fad6c  bl 0x0124f120
016fad70  orr w1,wzr,#0xfffffffe
016fad74  mov w2,#0x1
016fad78  mov x0,x19
016fad7c  bl 0x0124cfc0
016fad80  mov x0,x19
016fad84  mov w1,w20
016fad88  bl 0x0124e060
016fad8c  orr w1,wzr,#0xfffffffd
016fad90  mov x0,x19
016fad94  bl 0x0124c4d0
016fad98  adrp x1,0x5769000
016fad9c  adrp x2,0x18b8000
016fada0  adrp x4,0x18b8000
016fada4  add x1,x1,#0x84
016fada8  add x2,x2,#0xcf8
016fadac  add x4,x4,#0xd00
016fadb0  add x0,sp,#0x10
016fadb4  mov x3,xzr
016fadb8  mov x5,xzr
016fadbc  bl 0x018b8b10
016fadc0  mov x19,x0
016fadc4  ldr w8,[x19, #0x8]
016fadc8  ldr x0,[x19]
016fadcc  sub w8,w8,#0x3
016fadd0  str w8,[x19, #0x8]
016fadd4  orr w1,wzr,#0xfffffffc
016fadd8  bl 0x0124c4d0
016faddc  ldr w8,[x19, #0x8]
016fade0  ldr x0,[x19]
016fade4  str wzr,[x19, #0x8]
016fade8  cmp w8,#0x1
016fadec  b.lt 0x016fadf8
016fadf0  mvn w1,w8
016fadf4  bl 0x0124c4d0
016fadf8  ldr w8,[sp, #0x18]
016fadfc  cmp w8,#0x1
016fae00  b.lt 0x016fae10
016fae04  ldr x0,[sp, #0x10]
016fae08  mvn w1,w8
016fae0c  bl 0x0124c4d0
016fae10  ldr w8,[sp, #0x8]
016fae14  cmp w8,#0x1
016fae18  b.lt 0x016fae28
016fae1c  ldr x0,[sp]
016fae20  mvn w1,w8
016fae24  bl 0x0124c4d0
016fae28  ldp x29,x30,[sp, #0x30]
016fae2c  ldp x20,x19,[sp, #0x20]
016fae30  add sp,sp,#0x40
016fae34  ret
