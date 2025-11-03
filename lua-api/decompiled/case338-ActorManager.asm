// ===== case338-ActorManager @ 016cdf64 =====
// existing function case338-ActorManager
016cdf64  sub sp,sp,#0x40
016cdf68  stp x20,x19,[sp, #0x20]
016cdf6c  stp x29,x30,[sp, #0x30]
016cdf70  add x29,sp,#0x30
016cdf74  adrp x1,0x174a000
016cdf78  add x1,x1,#0x87c
016cdf7c  mov x19,x0
016cdf80  bl 0x0124ba40
016cdf84  adrp x1,0x575d000
016cdf88  add x1,x1,#0xa06
016cdf8c  mov x0,x19
016cdf90  str x19,[sp]
016cdf94  bl 0x01251aa0
016cdf98  mov w8,#0x1
016cdf9c  str w8,[sp, #0x8]
016cdfa0  mov x0,sp
016cdfa4  bl 0x0174aa04
016cdfa8  adrp x1,0x5763000
016cdfac  adrp x3,0x736d000
016cdfb0  add x1,x1,#0x8fe
016cdfb4  add x3,x3,#0x101
016cdfb8  add x0,sp,#0x10
016cdfbc  mov x2,sp
016cdfc0  bl 0x0181268c
016cdfc4  ldr x0,[sp, #0x10]
016cdfc8  mov w1,#0x10
016cdfcc  bl 0x0124cba0
016cdfd0  adrp x8,0x1812000
016cdfd4  dup v0.2D,xzr
016cdfd8  add x8,x8,#0x684
016cdfdc  mov v0.D[0x0],x8
016cdfe0  str q0,[x0]
016cdfe4  ldr x0,[sp, #0x10]
016cdfe8  adrp x1,0x1812000
016cdfec  add x1,x1,#0xa50
016cdff0  mov w2,#0x1
016cdff4  bl 0x0124ec90
016cdff8  ldr x0,[sp, #0x10]
016cdffc  mov w1,#0xffffffff
016ce000  bl 0x0124c0c0
016ce004  ldr x19,[sp, #0x10]
016ce008  orr w1,wzr,#0xfffffffb
016ce00c  mov w2,#0x6e7
016ce010  mov x0,x19
016ce014  bl 0x0124a650
016ce018  orr w1,wzr,#0xfffffffe
016ce01c  mov x0,x19
016ce020  bl 0x0124c0c0
016ce024  orr w1,wzr,#0xfffffffe
016ce028  mov x0,x19
016ce02c  bl 0x0124e920
016ce030  mov w20,w0
016ce034  adrp x1,0x5763000
016ce038  add x1,x1,#0x90b
016ce03c  mov x0,x19
016ce040  bl 0x0124f120
016ce044  orr w1,wzr,#0xfffffffe
016ce048  mov w2,#0x1
016ce04c  mov x0,x19
016ce050  bl 0x0124cfc0
016ce054  mov x0,x19
016ce058  mov w1,w20
016ce05c  bl 0x0124e060
016ce060  orr w1,wzr,#0xfffffffd
016ce064  mov x0,x19
016ce068  bl 0x0124c4d0
016ce06c  ldr x19,[sp, #0x10]
016ce070  orr w1,wzr,#0xfffffffd
016ce074  mov w2,#0x6e7
016ce078  mov x0,x19
016ce07c  bl 0x0124a650
016ce080  orr w1,wzr,#0xfffffffe
016ce084  mov x0,x19
016ce088  bl 0x0124c0c0
016ce08c  orr w1,wzr,#0xfffffffe
016ce090  mov x0,x19
016ce094  bl 0x0124e920
016ce098  mov w20,w0
016ce09c  adrp x1,0x5763000
016ce0a0  add x1,x1,#0x90b
016ce0a4  mov x0,x19
016ce0a8  bl 0x0124f120
016ce0ac  orr w1,wzr,#0xfffffffe
016ce0b0  mov w2,#0x1
016ce0b4  mov x0,x19
016ce0b8  bl 0x0124cfc0
016ce0bc  mov x0,x19
016ce0c0  mov w1,w20
016ce0c4  bl 0x0124e060
016ce0c8  orr w1,wzr,#0xfffffffd
016ce0cc  mov x0,x19
016ce0d0  bl 0x0124c4d0
016ce0d4  ldr w8,[sp, #0x18]
016ce0d8  ldr x0,[sp, #0x10]
016ce0dc  sub w8,w8,#0x3
016ce0e0  str w8,[sp, #0x18]
016ce0e4  orr w1,wzr,#0xfffffffc
016ce0e8  bl 0x0124c4d0
016ce0ec  ldr w8,[sp, #0x18]
016ce0f0  ldr x0,[sp, #0x10]
016ce0f4  str wzr,[sp, #0x18]
016ce0f8  cmp w8,#0x1
016ce0fc  b.lt 0x016ce120
016ce100  mvn w1,w8
016ce104  bl 0x0124c4d0
016ce108  ldr w8,[sp, #0x18]
016ce10c  cmp w8,#0x1
016ce110  b.lt 0x016ce120
016ce114  ldr x0,[sp, #0x10]
016ce118  mvn w1,w8
016ce11c  bl 0x0124c4d0
016ce120  ldr w8,[sp, #0x8]
016ce124  cmp w8,#0x1
016ce128  b.lt 0x016ce138
016ce12c  ldr x0,[sp]
016ce130  mvn w1,w8
016ce134  bl 0x0124c4d0
016ce138  ldp x29,x30,[sp, #0x30]
016ce13c  ldp x20,x19,[sp, #0x20]
016ce140  add sp,sp,#0x40
016ce144  ret
