// ===== case693-MovementSystem @ 0171d360 =====
// existing function case693-MovementSystem
0171d360  sub sp,sp,#0x40
0171d364  stp x20,x19,[sp, #0x20]
0171d368  stp x29,x30,[sp, #0x30]
0171d36c  add x29,sp,#0x30
0171d370  adrp x1,0x174a000
0171d374  add x1,x1,#0x87c
0171d378  mov x19,x0
0171d37c  bl 0x0124ba40
0171d380  adrp x1,0x575d000
0171d384  add x1,x1,#0xa06
0171d388  mov x0,x19
0171d38c  str x19,[sp]
0171d390  bl 0x01251aa0
0171d394  mov w8,#0x1
0171d398  str w8,[sp, #0x8]
0171d39c  mov x0,sp
0171d3a0  bl 0x0174aa04
0171d3a4  adrp x1,0x576d000
0171d3a8  adrp x3,0x736d000
0171d3ac  add x1,x1,#0x978
0171d3b0  add x3,x3,#0x101
0171d3b4  add x0,sp,#0x10
0171d3b8  mov x2,sp
0171d3bc  bl 0x01956f8c
0171d3c0  ldr x0,[sp, #0x10]
0171d3c4  mov w1,#0x10
0171d3c8  bl 0x0124cba0
0171d3cc  adrp x8,0x1956000
0171d3d0  dup v0.2D,xzr
0171d3d4  add x8,x8,#0xf84
0171d3d8  mov v0.D[0x0],x8
0171d3dc  str q0,[x0]
0171d3e0  ldr x0,[sp, #0x10]
0171d3e4  adrp x1,0x1957000
0171d3e8  add x1,x1,#0x350
0171d3ec  mov w2,#0x1
0171d3f0  bl 0x0124ec90
0171d3f4  ldr x0,[sp, #0x10]
0171d3f8  mov w1,#0xffffffff
0171d3fc  bl 0x0124c0c0
0171d400  ldr x19,[sp, #0x10]
0171d404  orr w1,wzr,#0xfffffffb
0171d408  mov w2,#0x6e7
0171d40c  mov x0,x19
0171d410  bl 0x0124a650
0171d414  orr w1,wzr,#0xfffffffe
0171d418  mov x0,x19
0171d41c  bl 0x0124c0c0
0171d420  orr w1,wzr,#0xfffffffe
0171d424  mov x0,x19
0171d428  bl 0x0124e920
0171d42c  mov w20,w0
0171d430  adrp x1,0x576d000
0171d434  add x1,x1,#0x987
0171d438  mov x0,x19
0171d43c  bl 0x0124f120
0171d440  orr w1,wzr,#0xfffffffe
0171d444  mov w2,#0x1
0171d448  mov x0,x19
0171d44c  bl 0x0124cfc0
0171d450  mov x0,x19
0171d454  mov w1,w20
0171d458  bl 0x0124e060
0171d45c  orr w1,wzr,#0xfffffffd
0171d460  mov x0,x19
0171d464  bl 0x0124c4d0
0171d468  ldr x19,[sp, #0x10]
0171d46c  orr w1,wzr,#0xfffffffd
0171d470  mov w2,#0x6e7
0171d474  mov x0,x19
0171d478  bl 0x0124a650
0171d47c  orr w1,wzr,#0xfffffffe
0171d480  mov x0,x19
0171d484  bl 0x0124c0c0
0171d488  orr w1,wzr,#0xfffffffe
0171d48c  mov x0,x19
0171d490  bl 0x0124e920
0171d494  mov w20,w0
0171d498  adrp x1,0x576d000
0171d49c  add x1,x1,#0x987
0171d4a0  mov x0,x19
0171d4a4  bl 0x0124f120
0171d4a8  orr w1,wzr,#0xfffffffe
0171d4ac  mov w2,#0x1
0171d4b0  mov x0,x19
0171d4b4  bl 0x0124cfc0
0171d4b8  mov x0,x19
0171d4bc  mov w1,w20
0171d4c0  bl 0x0124e060
0171d4c4  orr w1,wzr,#0xfffffffd
0171d4c8  mov x0,x19
0171d4cc  bl 0x0124c4d0
0171d4d0  ldr w8,[sp, #0x18]
0171d4d4  ldr x0,[sp, #0x10]
0171d4d8  sub w8,w8,#0x3
0171d4dc  str w8,[sp, #0x18]
0171d4e0  orr w1,wzr,#0xfffffffc
0171d4e4  bl 0x0124c4d0
0171d4e8  ldr w8,[sp, #0x18]
0171d4ec  ldr x0,[sp, #0x10]
0171d4f0  str wzr,[sp, #0x18]
0171d4f4  cmp w8,#0x1
0171d4f8  b.lt 0x0171d51c
0171d4fc  mvn w1,w8
0171d500  bl 0x0124c4d0
0171d504  ldr w8,[sp, #0x18]
0171d508  cmp w8,#0x1
0171d50c  b.lt 0x0171d51c
0171d510  ldr x0,[sp, #0x10]
0171d514  mvn w1,w8
0171d518  bl 0x0124c4d0
0171d51c  ldr w8,[sp, #0x8]
0171d520  cmp w8,#0x1
0171d524  b.lt 0x0171d534
0171d528  ldr x0,[sp]
0171d52c  mvn w1,w8
0171d530  bl 0x0124c4d0
0171d534  ldp x29,x30,[sp, #0x30]
0171d538  ldp x20,x19,[sp, #0x20]
0171d53c  add sp,sp,#0x40
0171d540  ret
