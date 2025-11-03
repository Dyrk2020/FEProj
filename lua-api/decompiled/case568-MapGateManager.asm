// ===== case568-MapGateManager @ 017018a0 =====
// existing function case568-MapGateManager
017018a0  sub sp,sp,#0x40
017018a4  stp x20,x19,[sp, #0x20]
017018a8  stp x29,x30,[sp, #0x30]
017018ac  add x29,sp,#0x30
017018b0  adrp x1,0x174a000
017018b4  add x1,x1,#0x87c
017018b8  mov x19,x0
017018bc  bl 0x0124ba40
017018c0  adrp x1,0x575d000
017018c4  add x1,x1,#0xa06
017018c8  mov x0,x19
017018cc  str x19,[sp]
017018d0  bl 0x01251aa0
017018d4  mov w8,#0x1
017018d8  str w8,[sp, #0x8]
017018dc  mov x0,sp
017018e0  bl 0x0174aa04
017018e4  adrp x1,0x5769000
017018e8  adrp x3,0x736d000
017018ec  add x1,x1,#0xe84
017018f0  add x3,x3,#0x101
017018f4  add x0,sp,#0x10
017018f8  mov x2,sp
017018fc  bl 0x018de0ac
01701900  ldr x0,[sp, #0x10]
01701904  mov w1,#0x10
01701908  bl 0x0124cba0
0170190c  adrp x8,0x18de000
01701910  dup v0.2D,xzr
01701914  add x8,x8,#0xa4
01701918  mov v0.D[0x0],x8
0170191c  str q0,[x0]
01701920  ldr x0,[sp, #0x10]
01701924  adrp x1,0x18de000
01701928  add x1,x1,#0x470
0170192c  mov w2,#0x1
01701930  bl 0x0124ec90
01701934  ldr x0,[sp, #0x10]
01701938  mov w1,#0xffffffff
0170193c  bl 0x0124c0c0
01701940  ldr x19,[sp, #0x10]
01701944  orr w1,wzr,#0xfffffffb
01701948  mov w2,#0x6e7
0170194c  mov x0,x19
01701950  bl 0x0124a650
01701954  orr w1,wzr,#0xfffffffe
01701958  mov x0,x19
0170195c  bl 0x0124c0c0
01701960  orr w1,wzr,#0xfffffffe
01701964  mov x0,x19
01701968  bl 0x0124e920
0170196c  mov w20,w0
01701970  adrp x1,0x5769000
01701974  add x1,x1,#0xe93
01701978  mov x0,x19
0170197c  bl 0x0124f120
01701980  orr w1,wzr,#0xfffffffe
01701984  mov w2,#0x1
01701988  mov x0,x19
0170198c  bl 0x0124cfc0
01701990  mov x0,x19
01701994  mov w1,w20
01701998  bl 0x0124e060
0170199c  orr w1,wzr,#0xfffffffd
017019a0  mov x0,x19
017019a4  bl 0x0124c4d0
017019a8  ldr x19,[sp, #0x10]
017019ac  orr w1,wzr,#0xfffffffd
017019b0  mov w2,#0x6e7
017019b4  mov x0,x19
017019b8  bl 0x0124a650
017019bc  orr w1,wzr,#0xfffffffe
017019c0  mov x0,x19
017019c4  bl 0x0124c0c0
017019c8  orr w1,wzr,#0xfffffffe
017019cc  mov x0,x19
017019d0  bl 0x0124e920
017019d4  mov w20,w0
017019d8  adrp x1,0x5769000
017019dc  add x1,x1,#0xe93
017019e0  mov x0,x19
017019e4  bl 0x0124f120
017019e8  orr w1,wzr,#0xfffffffe
017019ec  mov w2,#0x1
017019f0  mov x0,x19
017019f4  bl 0x0124cfc0
017019f8  mov x0,x19
017019fc  mov w1,w20
01701a00  bl 0x0124e060
01701a04  orr w1,wzr,#0xfffffffd
01701a08  mov x0,x19
01701a0c  bl 0x0124c4d0
01701a10  ldr w8,[sp, #0x18]
01701a14  ldr x0,[sp, #0x10]
01701a18  sub w8,w8,#0x3
01701a1c  str w8,[sp, #0x18]
01701a20  orr w1,wzr,#0xfffffffc
01701a24  bl 0x0124c4d0
01701a28  ldr w8,[sp, #0x18]
01701a2c  ldr x0,[sp, #0x10]
01701a30  str wzr,[sp, #0x18]
01701a34  cmp w8,#0x1
01701a38  b.lt 0x01701a5c
01701a3c  mvn w1,w8
01701a40  bl 0x0124c4d0
01701a44  ldr w8,[sp, #0x18]
01701a48  cmp w8,#0x1
01701a4c  b.lt 0x01701a5c
01701a50  ldr x0,[sp, #0x10]
01701a54  mvn w1,w8
01701a58  bl 0x0124c4d0
01701a5c  ldr w8,[sp, #0x8]
01701a60  cmp w8,#0x1
01701a64  b.lt 0x01701a74
01701a68  ldr x0,[sp]
01701a6c  mvn w1,w8
01701a70  bl 0x0124c4d0
01701a74  ldp x29,x30,[sp, #0x30]
01701a78  ldp x20,x19,[sp, #0x20]
01701a7c  add sp,sp,#0x40
01701a80  ret
