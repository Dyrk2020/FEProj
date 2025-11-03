// ===== case521-ActorComponentVisible @ 016f8114 =====
// existing function case521-ActorComponentVisible
016f8114  sub sp,sp,#0x40
016f8118  str x19,[sp, #0x20]
016f811c  stp x29,x30,[sp, #0x30]
016f8120  add x29,sp,#0x30
016f8124  adrp x1,0x174a000
016f8128  add x1,x1,#0x87c
016f812c  mov x19,x0
016f8130  bl 0x0124ba40
016f8134  adrp x1,0x575d000
016f8138  add x1,x1,#0xa06
016f813c  mov x0,x19
016f8140  str x19,[sp]
016f8144  bl 0x01251aa0
016f8148  mov w8,#0x1
016f814c  str w8,[sp, #0x8]
016f8150  mov x0,sp
016f8154  bl 0x0174aa04
016f8158  adrp x1,0x5768000
016f815c  adrp x3,0x736d000
016f8160  add x1,x1,#0x917
016f8164  add x3,x3,#0x101
016f8168  add x0,sp,#0x10
016f816c  mov x2,sp
016f8170  bl 0x018aab48
016f8174  adrp x1,0x5768000
016f8178  adrp x2,0x18aa000
016f817c  adrp x4,0x18aa000
016f8180  add x1,x1,#0x92d
016f8184  add x2,x2,#0xb38
016f8188  add x4,x4,#0xb40
016f818c  add x0,sp,#0x10
016f8190  mov x3,xzr
016f8194  mov x5,xzr
016f8198  bl 0x018aa950
016f819c  mov x19,x0
016f81a0  ldr w8,[x19, #0x8]
016f81a4  ldr x0,[x19]
016f81a8  sub w8,w8,#0x3
016f81ac  str w8,[x19, #0x8]
016f81b0  orr w1,wzr,#0xfffffffc
016f81b4  bl 0x0124c4d0
016f81b8  ldr w8,[x19, #0x8]
016f81bc  ldr x0,[x19]
016f81c0  str wzr,[x19, #0x8]
016f81c4  cmp w8,#0x1
016f81c8  b.lt 0x016f81d4
016f81cc  mvn w1,w8
016f81d0  bl 0x0124c4d0
016f81d4  ldr w8,[sp, #0x18]
016f81d8  cmp w8,#0x1
016f81dc  b.lt 0x016f81ec
016f81e0  ldr x0,[sp, #0x10]
016f81e4  mvn w1,w8
016f81e8  bl 0x0124c4d0
016f81ec  ldr w8,[sp, #0x8]
016f81f0  cmp w8,#0x1
016f81f4  b.lt 0x016f8204
016f81f8  ldr x0,[sp]
016f81fc  mvn w1,w8
016f8200  bl 0x0124c4d0
016f8204  ldp x29,x30,[sp, #0x30]
016f8208  ldr x19,[sp, #0x20]
016f820c  add sp,sp,#0x40
016f8210  ret
