// ===== case598-MapPathPointObj @ 0170690c =====
// existing function case598-MapPathPointObj
0170690c  sub sp,sp,#0x40
01706910  stp x20,x19,[sp, #0x20]
01706914  stp x29,x30,[sp, #0x30]
01706918  add x29,sp,#0x30
0170691c  adrp x1,0x174a000
01706920  add x1,x1,#0x87c
01706924  mov x19,x0
01706928  bl 0x0124ba40
0170692c  adrp x1,0x575d000
01706930  add x1,x1,#0xa06
01706934  mov x0,x19
01706938  str x19,[sp]
0170693c  bl 0x01251aa0
01706940  mov w8,#0x1
01706944  str w8,[sp, #0x8]
01706948  mov x0,sp
0170694c  bl 0x0174aa04
01706950  adrp x1,0x576a000
01706954  adrp x3,0x736d000
01706958  add x1,x1,#0x292
0170695c  add x3,x3,#0x101
01706960  add x0,sp,#0x10
01706964  mov x2,sp
01706968  bl 0x018f07bc
0170696c  ldr x0,[sp, #0x10]
01706970  mov w1,#0x10
01706974  bl 0x0124cba0
01706978  adrp x8,0x18f0000
0170697c  dup v0.2D,xzr
01706980  add x8,x8,#0x5bc
01706984  mov v0.D[0x0],x8
01706988  str q0,[x0]
0170698c  ldr x0,[sp, #0x10]
01706990  adrp x1,0x18f0000
01706994  add x1,x1,#0xb80
01706998  mov w2,#0x1
0170699c  bl 0x0124ec90
017069a0  ldr x0,[sp, #0x10]
017069a4  mov w1,#0xffffffff
017069a8  bl 0x0124c0c0
017069ac  ldr x19,[sp, #0x10]
017069b0  orr w1,wzr,#0xfffffffb
017069b4  mov w2,#0x6e7
017069b8  mov x0,x19
017069bc  bl 0x0124a650
017069c0  orr w1,wzr,#0xfffffffe
017069c4  mov x0,x19
017069c8  bl 0x0124c0c0
017069cc  orr w1,wzr,#0xfffffffe
017069d0  mov x0,x19
017069d4  bl 0x0124e920
017069d8  mov w20,w0
017069dc  adrp x1,0x5766000
017069e0  add x1,x1,#0xbcc
017069e4  mov x0,x19
017069e8  bl 0x0124f120
017069ec  orr w1,wzr,#0xfffffffe
017069f0  mov w2,#0x1
017069f4  mov x0,x19
017069f8  bl 0x0124cfc0
017069fc  mov x0,x19
01706a00  mov w1,w20
01706a04  bl 0x0124e060
01706a08  orr w1,wzr,#0xfffffffd
01706a0c  mov x0,x19
01706a10  bl 0x0124c4d0
01706a14  ldr x19,[sp, #0x10]
01706a18  orr w1,wzr,#0xfffffffd
01706a1c  mov w2,#0x6e7
01706a20  mov x0,x19
01706a24  bl 0x0124a650
01706a28  orr w1,wzr,#0xfffffffe
01706a2c  mov x0,x19
01706a30  bl 0x0124c0c0
01706a34  orr w1,wzr,#0xfffffffe
01706a38  mov x0,x19
01706a3c  bl 0x0124e920
01706a40  mov w20,w0
01706a44  adrp x1,0x5766000
01706a48  add x1,x1,#0xbcc
01706a4c  mov x0,x19
01706a50  bl 0x0124f120
01706a54  orr w1,wzr,#0xfffffffe
01706a58  mov w2,#0x1
01706a5c  mov x0,x19
01706a60  bl 0x0124cfc0
01706a64  mov x0,x19
01706a68  mov w1,w20
01706a6c  bl 0x0124e060
01706a70  orr w1,wzr,#0xfffffffd
01706a74  mov x0,x19
01706a78  bl 0x0124c4d0
01706a7c  adrp x1,0x596a000
01706a80  adrp x2,0x18f0000
01706a84  adrp x4,0x18f0000
01706a88  add x1,x1,#0x262
01706a8c  add x2,x2,#0x7ac
01706a90  add x4,x4,#0x7b4
01706a94  add x0,sp,#0x10
01706a98  mov x3,xzr
01706a9c  mov x5,xzr
01706aa0  bl 0x018f05c4
01706aa4  mov x19,x0
01706aa8  ldr w8,[x19, #0x8]
01706aac  ldr x0,[x19]
01706ab0  sub w8,w8,#0x3
01706ab4  str w8,[x19, #0x8]
01706ab8  orr w1,wzr,#0xfffffffc
01706abc  bl 0x0124c4d0
01706ac0  ldr w8,[x19, #0x8]
01706ac4  ldr x0,[x19]
01706ac8  str wzr,[x19, #0x8]
01706acc  cmp w8,#0x1
01706ad0  b.lt 0x01706adc
01706ad4  mvn w1,w8
01706ad8  bl 0x0124c4d0
01706adc  ldr w8,[sp, #0x18]
01706ae0  cmp w8,#0x1
01706ae4  b.lt 0x01706af4
01706ae8  ldr x0,[sp, #0x10]
01706aec  mvn w1,w8
01706af0  bl 0x0124c4d0
01706af4  ldr w8,[sp, #0x8]
01706af8  cmp w8,#0x1
01706afc  b.lt 0x01706b0c
01706b00  ldr x0,[sp]
01706b04  mvn w1,w8
01706b08  bl 0x0124c4d0
01706b0c  ldp x29,x30,[sp, #0x30]
01706b10  ldp x20,x19,[sp, #0x20]
01706b14  add sp,sp,#0x40
01706b18  ret
