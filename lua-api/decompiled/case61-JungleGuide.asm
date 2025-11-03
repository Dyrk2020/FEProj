// ===== case61-JungleGuide @ 0169696c =====
// existing function case61-JungleGuide
0169696c  sub sp,sp,#0x40
01696970  stp x20,x19,[sp, #0x20]
01696974  stp x29,x30,[sp, #0x30]
01696978  add x29,sp,#0x30
0169697c  adrp x1,0x174a000
01696980  add x1,x1,#0x87c
01696984  mov x19,x0
01696988  bl 0x0124ba40
0169698c  adrp x1,0x575d000
01696990  add x1,x1,#0xa06
01696994  mov x0,x19
01696998  str x19,[sp]
0169699c  bl 0x01251aa0
016969a0  mov w8,#0x1
016969a4  str w8,[sp, #0x8]
016969a8  mov x0,sp
016969ac  bl 0x0174aa04
016969b0  adrp x1,0x575e000
016969b4  adrp x3,0x736d000
016969b8  add x1,x1,#0xb98
016969bc  add x3,x3,#0x101
016969c0  add x0,sp,#0x10
016969c4  mov x2,sp
016969c8  bl 0x01772d24
016969cc  ldr x0,[sp, #0x10]
016969d0  mov w1,#0x10
016969d4  bl 0x0124cba0
016969d8  adrp x8,0x1772000
016969dc  dup v0.2D,xzr
016969e0  add x8,x8,#0xd1c
016969e4  mov v0.D[0x0],x8
016969e8  str q0,[x0]
016969ec  ldr x0,[sp, #0x10]
016969f0  adrp x1,0x1773000
016969f4  add x1,x1,#0xe8
016969f8  mov w2,#0x1
016969fc  bl 0x0124ec90
01696a00  ldr x0,[sp, #0x10]
01696a04  mov w1,#0xffffffff
01696a08  bl 0x0124c0c0
01696a0c  ldr x19,[sp, #0x10]
01696a10  orr w1,wzr,#0xfffffffb
01696a14  mov w2,#0x6e7
01696a18  mov x0,x19
01696a1c  bl 0x0124a650
01696a20  orr w1,wzr,#0xfffffffe
01696a24  mov x0,x19
01696a28  bl 0x0124c0c0
01696a2c  orr w1,wzr,#0xfffffffe
01696a30  mov x0,x19
01696a34  bl 0x0124e920
01696a38  mov w20,w0
01696a3c  adrp x1,0x575e000
01696a40  add x1,x1,#0x398
01696a44  mov x0,x19
01696a48  bl 0x0124f120
01696a4c  orr w1,wzr,#0xfffffffe
01696a50  mov w2,#0x1
01696a54  mov x0,x19
01696a58  bl 0x0124cfc0
01696a5c  mov x0,x19
01696a60  mov w1,w20
01696a64  bl 0x0124e060
01696a68  orr w1,wzr,#0xfffffffd
01696a6c  mov x0,x19
01696a70  bl 0x0124c4d0
01696a74  ldr x19,[sp, #0x10]
01696a78  orr w1,wzr,#0xfffffffd
01696a7c  mov w2,#0x6e7
01696a80  mov x0,x19
01696a84  bl 0x0124a650
01696a88  orr w1,wzr,#0xfffffffe
01696a8c  mov x0,x19
01696a90  bl 0x0124c0c0
01696a94  orr w1,wzr,#0xfffffffe
01696a98  mov x0,x19
01696a9c  bl 0x0124e920
01696aa0  mov w20,w0
01696aa4  adrp x1,0x575e000
01696aa8  add x1,x1,#0x398
01696aac  mov x0,x19
01696ab0  bl 0x0124f120
01696ab4  orr w1,wzr,#0xfffffffe
01696ab8  mov w2,#0x1
01696abc  mov x0,x19
01696ac0  bl 0x0124cfc0
01696ac4  mov x0,x19
01696ac8  mov w1,w20
01696acc  bl 0x0124e060
01696ad0  orr w1,wzr,#0xfffffffd
01696ad4  mov x0,x19
01696ad8  bl 0x0124c4d0
01696adc  ldr w8,[sp, #0x18]
01696ae0  ldr x0,[sp, #0x10]
01696ae4  sub w8,w8,#0x3
01696ae8  str w8,[sp, #0x18]
01696aec  orr w1,wzr,#0xfffffffc
01696af0  bl 0x0124c4d0
01696af4  ldr w8,[sp, #0x18]
01696af8  ldr x0,[sp, #0x10]
01696afc  str wzr,[sp, #0x18]
01696b00  cmp w8,#0x1
01696b04  b.lt 0x01696b28
01696b08  mvn w1,w8
01696b0c  bl 0x0124c4d0
01696b10  ldr w8,[sp, #0x18]
01696b14  cmp w8,#0x1
01696b18  b.lt 0x01696b28
01696b1c  ldr x0,[sp, #0x10]
01696b20  mvn w1,w8
01696b24  bl 0x0124c4d0
01696b28  ldr w8,[sp, #0x8]
01696b2c  cmp w8,#0x1
01696b30  b.lt 0x01696b40
01696b34  ldr x0,[sp]
01696b38  mvn w1,w8
01696b3c  bl 0x0124c4d0
01696b40  ldp x29,x30,[sp, #0x30]
01696b44  ldp x20,x19,[sp, #0x20]
01696b48  add sp,sp,#0x40
01696b4c  ret
