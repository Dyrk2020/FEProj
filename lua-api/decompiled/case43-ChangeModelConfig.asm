// ===== case43-ChangeModelConfig @ 01693954 =====
// existing function case43-ChangeModelConfig
01693954  sub sp,sp,#0x40
01693958  str x19,[sp, #0x20]
0169395c  stp x29,x30,[sp, #0x30]
01693960  add x29,sp,#0x30
01693964  adrp x1,0x174a000
01693968  add x1,x1,#0x87c
0169396c  mov x19,x0
01693970  bl 0x0124ba40
01693974  adrp x1,0x575d000
01693978  add x1,x1,#0xa06
0169397c  mov x0,x19
01693980  str x19,[sp]
01693984  bl 0x01251aa0
01693988  mov w8,#0x1
0169398c  str w8,[sp, #0x8]
01693990  mov x0,sp
01693994  bl 0x0174aa04
01693998  adrp x1,0x575e000
0169399c  adrp x3,0x736d000
016939a0  add x1,x1,#0x37c
016939a4  add x3,x3,#0x101
016939a8  add x0,sp,#0x10
016939ac  mov x2,sp
016939b0  bl 0x01766c50
016939b4  adrp x1,0x575e000
016939b8  adrp x2,0x1766000
016939bc  adrp x4,0x1766000
016939c0  add x1,x1,#0x398
016939c4  add x2,x2,#0xc40
016939c8  add x4,x4,#0xc48
016939cc  add x0,sp,#0x10
016939d0  mov x3,xzr
016939d4  mov x5,xzr
016939d8  bl 0x01766a58
016939dc  mov x19,x0
016939e0  ldr w8,[x19, #0x8]
016939e4  ldr x0,[x19]
016939e8  sub w8,w8,#0x3
016939ec  str w8,[x19, #0x8]
016939f0  orr w1,wzr,#0xfffffffc
016939f4  bl 0x0124c4d0
016939f8  ldr w8,[x19, #0x8]
016939fc  ldr x0,[x19]
01693a00  str wzr,[x19, #0x8]
01693a04  cmp w8,#0x1
01693a08  b.lt 0x01693a14
01693a0c  mvn w1,w8
01693a10  bl 0x0124c4d0
01693a14  ldr w8,[sp, #0x18]
01693a18  cmp w8,#0x1
01693a1c  b.lt 0x01693a2c
01693a20  ldr x0,[sp, #0x10]
01693a24  mvn w1,w8
01693a28  bl 0x0124c4d0
01693a2c  ldr w8,[sp, #0x8]
01693a30  cmp w8,#0x1
01693a34  b.lt 0x01693a44
01693a38  ldr x0,[sp]
01693a3c  mvn w1,w8
01693a40  bl 0x0124c4d0
01693a44  ldp x29,x30,[sp, #0x30]
01693a48  ldr x19,[sp, #0x20]
01693a4c  add sp,sp,#0x40
01693a50  ret
