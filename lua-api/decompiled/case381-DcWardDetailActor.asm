// ===== case381-DcWardDetailActor @ 016d8030 =====
// existing function case381-DcWardDetailActor
016d8030  sub sp,sp,#0x40
016d8034  str x19,[sp, #0x20]
016d8038  stp x29,x30,[sp, #0x30]
016d803c  add x29,sp,#0x30
016d8040  adrp x1,0x174a000
016d8044  add x1,x1,#0x87c
016d8048  mov x19,x0
016d804c  bl 0x0124ba40
016d8050  adrp x1,0x575d000
016d8054  add x1,x1,#0xa06
016d8058  mov x0,x19
016d805c  str x19,[sp]
016d8060  bl 0x01251aa0
016d8064  mov w8,#0x1
016d8068  str w8,[sp, #0x8]
016d806c  mov x0,sp
016d8070  bl 0x0174aa04
016d8074  adrp x1,0x5764000
016d8078  adrp x3,0x736d000
016d807c  add x1,x1,#0xe57
016d8080  add x3,x3,#0x101
016d8084  add x0,sp,#0x10
016d8088  mov x2,sp
016d808c  bl 0x018369d0
016d8090  adrp x1,0x575d000
016d8094  adrp x2,0x1836000
016d8098  adrp x4,0x1836000
016d809c  add x1,x1,#0xe39
016d80a0  add x2,x2,#0x558
016d80a4  add x4,x4,#0x560
016d80a8  add x0,sp,#0x10
016d80ac  mov x3,xzr
016d80b0  mov x5,xzr
016d80b4  bl 0x01836370
016d80b8  adrp x1,0x5764000
016d80bc  adrp x2,0x1836000
016d80c0  adrp x4,0x1836000
016d80c4  add x1,x1,#0xe69
016d80c8  add x2,x2,#0x568
016d80cc  add x4,x4,#0x570
016d80d0  mov x3,xzr
016d80d4  mov x5,xzr
016d80d8  bl 0x01836370
016d80dc  adrp x1,0x5764000
016d80e0  adrp x2,0x1836000
016d80e4  adrp x4,0x1836000
016d80e8  add x1,x1,#0xe7a
016d80ec  add x2,x2,#0x578
016d80f0  add x4,x4,#0x580
016d80f4  mov x3,xzr
016d80f8  mov x5,xzr
016d80fc  bl 0x01836370
016d8100  adrp x1,0x5764000
016d8104  adrp x2,0x1836000
016d8108  adrp x4,0x1836000
016d810c  add x1,x1,#0xe8c
016d8110  add x2,x2,#0x588
016d8114  add x4,x4,#0x590
016d8118  mov x3,xzr
016d811c  mov x5,xzr
016d8120  bl 0x01836370
016d8124  adrp x1,0x575f000
016d8128  adrp x2,0x1836000
016d812c  adrp x4,0x1836000
016d8130  add x1,x1,#0x8f
016d8134  add x2,x2,#0x598
016d8138  add x4,x4,#0x5a0
016d813c  mov x3,xzr
016d8140  mov x5,xzr
016d8144  bl 0x01836370
016d8148  adrp x1,0x5764000
016d814c  adrp x2,0x1836000
016d8150  adrp x4,0x1836000
016d8154  add x1,x1,#0xe96
016d8158  add x2,x2,#0x790
016d815c  add x4,x4,#0x7a4
016d8160  mov x3,xzr
016d8164  mov x5,xzr
016d8168  bl 0x018365a8
016d816c  adrp x1,0x5764000
016d8170  adrp x2,0x1836000
016d8174  add x1,x1,#0xea3
016d8178  add x2,x2,#0x9a8
016d817c  mov x3,xzr
016d8180  mov x4,xzr
016d8184  mov x5,xzr
016d8188  bl 0x018367c0
016d818c  adrp x1,0x5764000
016d8190  adrp x2,0x1836000
016d8194  add x1,x1,#0xeac
016d8198  add x2,x2,#0x9b0
016d819c  mov x3,xzr
016d81a0  mov x4,xzr
016d81a4  mov x5,xzr
016d81a8  bl 0x018367c0
016d81ac  adrp x1,0x576a000
016d81b0  adrp x2,0x1836000
016d81b4  add x1,x1,#0x3a7
016d81b8  add x2,x2,#0x9b8
016d81bc  mov x3,xzr
016d81c0  mov x4,xzr
016d81c4  mov x5,xzr
016d81c8  bl 0x018367c0
016d81cc  adrp x1,0x5764000
016d81d0  adrp x2,0x1836000
016d81d4  add x1,x1,#0xeb8
016d81d8  add x2,x2,#0x9c0
016d81dc  mov x3,xzr
016d81e0  mov x4,xzr
016d81e4  mov x5,xzr
016d81e8  bl 0x018367c0
016d81ec  adrp x1,0x5764000
016d81f0  adrp x2,0x1836000
016d81f4  add x1,x1,#0xec4
016d81f8  add x2,x2,#0x9c8
016d81fc  mov x3,xzr
016d8200  mov x4,xzr
016d8204  mov x5,xzr
016d8208  bl 0x018367c0
016d820c  mov x19,x0
016d8210  ldr w8,[x19, #0x8]
016d8214  ldr x0,[x19]
016d8218  sub w8,w8,#0x3
016d821c  str w8,[x19, #0x8]
016d8220  orr w1,wzr,#0xfffffffc
016d8224  bl 0x0124c4d0
016d8228  ldr w8,[x19, #0x8]
016d822c  ldr x0,[x19]
016d8230  str wzr,[x19, #0x8]
016d8234  cmp w8,#0x1
016d8238  b.lt 0x016d8244
016d823c  mvn w1,w8
016d8240  bl 0x0124c4d0
016d8244  ldr w8,[sp, #0x18]
016d8248  cmp w8,#0x1
016d824c  b.lt 0x016d825c
016d8250  ldr x0,[sp, #0x10]
016d8254  mvn w1,w8
016d8258  bl 0x0124c4d0
016d825c  ldr w8,[sp, #0x8]
016d8260  cmp w8,#0x1
016d8264  b.lt 0x016d8274
016d8268  ldr x0,[sp]
016d826c  mvn w1,w8
016d8270  bl 0x0124c4d0
016d8274  ldp x29,x30,[sp, #0x30]
016d8278  ldr x19,[sp, #0x20]
016d827c  add sp,sp,#0x40
016d8280  ret
